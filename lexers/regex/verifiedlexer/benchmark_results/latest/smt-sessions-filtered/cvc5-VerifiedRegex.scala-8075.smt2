; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!416968 () Bool)

(assert start!416968)

(declare-fun b!4328729 () Bool)

(declare-fun res!1773876 () Bool)

(declare-fun e!2693578 () Bool)

(assert (=> b!4328729 (=> (not res!1773876) (not e!2693578))))

(declare-datatypes ((K!9778 0))(
  ( (K!9779 (val!16093 Int)) )
))
(declare-datatypes ((V!10024 0))(
  ( (V!10025 (val!16094 Int)) )
))
(declare-datatypes ((tuple2!47558 0))(
  ( (tuple2!47559 (_1!27073 K!9778) (_2!27073 V!10024)) )
))
(declare-datatypes ((List!48607 0))(
  ( (Nil!48483) (Cons!48483 (h!53952 tuple2!47558) (t!355519 List!48607)) )
))
(declare-fun l!13867 () List!48607)

(declare-fun key!5269 () K!9778)

(assert (=> b!4328729 (= res!1773876 (and (or (not (is-Cons!48483 l!13867)) (not (= (_1!27073 (h!53952 l!13867)) key!5269))) (is-Cons!48483 l!13867)))))

(declare-fun b!4328730 () Bool)

(declare-fun e!2693580 () Bool)

(assert (=> b!4328730 (= e!2693578 (not e!2693580))))

(declare-fun res!1773877 () Bool)

(assert (=> b!4328730 (=> res!1773877 e!2693580)))

(declare-fun noDuplicateKeys!296 (List!48607) Bool)

(assert (=> b!4328730 (= res!1773877 (not (noDuplicateKeys!296 (t!355519 l!13867))))))

(declare-fun removePairForKey!304 (List!48607 K!9778) List!48607)

(assert (=> b!4328730 (noDuplicateKeys!296 (removePairForKey!304 (t!355519 l!13867) key!5269))))

(declare-datatypes ((Unit!68121 0))(
  ( (Unit!68122) )
))
(declare-fun lt!1545276 () Unit!68121)

(declare-fun lemmaRemovePairForKeyPreservesNoDuplicateKeys!212 (List!48607 K!9778) Unit!68121)

(assert (=> b!4328730 (= lt!1545276 (lemmaRemovePairForKeyPreservesNoDuplicateKeys!212 (t!355519 l!13867) key!5269))))

(declare-fun b!4328731 () Bool)

(assert (=> b!4328731 (= e!2693580 (not (= (_1!27073 (h!53952 l!13867)) key!5269)))))

(declare-fun res!1773878 () Bool)

(assert (=> start!416968 (=> (not res!1773878) (not e!2693578))))

(assert (=> start!416968 (= res!1773878 (noDuplicateKeys!296 l!13867))))

(assert (=> start!416968 e!2693578))

(declare-fun e!2693579 () Bool)

(assert (=> start!416968 e!2693579))

(declare-fun tp_is_empty!24373 () Bool)

(assert (=> start!416968 tp_is_empty!24373))

(declare-fun tp!1328067 () Bool)

(declare-fun tp_is_empty!24375 () Bool)

(declare-fun b!4328732 () Bool)

(assert (=> b!4328732 (= e!2693579 (and tp_is_empty!24373 tp_is_empty!24375 tp!1328067))))

(assert (= (and start!416968 res!1773878) b!4328729))

(assert (= (and b!4328729 res!1773876) b!4328730))

(assert (= (and b!4328730 (not res!1773877)) b!4328731))

(assert (= (and start!416968 (is-Cons!48483 l!13867)) b!4328732))

(declare-fun m!4923433 () Bool)

(assert (=> b!4328730 m!4923433))

(declare-fun m!4923435 () Bool)

(assert (=> b!4328730 m!4923435))

(assert (=> b!4328730 m!4923435))

(declare-fun m!4923437 () Bool)

(assert (=> b!4328730 m!4923437))

(declare-fun m!4923439 () Bool)

(assert (=> b!4328730 m!4923439))

(declare-fun m!4923441 () Bool)

(assert (=> start!416968 m!4923441))

(push 1)

(assert tp_is_empty!24373)

(assert (not b!4328730))

(assert (not b!4328732))

(assert tp_is_empty!24375)

(assert (not start!416968))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

