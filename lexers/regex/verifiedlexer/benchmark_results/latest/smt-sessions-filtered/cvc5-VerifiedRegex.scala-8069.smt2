; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!416904 () Bool)

(assert start!416904)

(declare-fun res!1773722 () Bool)

(declare-fun e!2693357 () Bool)

(assert (=> start!416904 (=> (not res!1773722) (not e!2693357))))

(declare-datatypes ((K!9748 0))(
  ( (K!9749 (val!16069 Int)) )
))
(declare-datatypes ((V!9994 0))(
  ( (V!9995 (val!16070 Int)) )
))
(declare-datatypes ((tuple2!47534 0))(
  ( (tuple2!47535 (_1!27061 K!9748) (_2!27061 V!9994)) )
))
(declare-datatypes ((List!48595 0))(
  ( (Nil!48471) (Cons!48471 (h!53940 tuple2!47534) (t!355507 List!48595)) )
))
(declare-fun l!13867 () List!48595)

(declare-fun noDuplicateKeys!284 (List!48595) Bool)

(assert (=> start!416904 (= res!1773722 (noDuplicateKeys!284 l!13867))))

(assert (=> start!416904 e!2693357))

(declare-fun e!2693356 () Bool)

(assert (=> start!416904 e!2693356))

(declare-fun tp_is_empty!24325 () Bool)

(assert (=> start!416904 tp_is_empty!24325))

(declare-fun b!4328413 () Bool)

(declare-fun res!1773723 () Bool)

(assert (=> b!4328413 (=> (not res!1773723) (not e!2693357))))

(declare-fun key!5269 () K!9748)

(assert (=> b!4328413 (= res!1773723 (and (or (not (is-Cons!48471 l!13867)) (not (= (_1!27061 (h!53940 l!13867)) key!5269))) (is-Cons!48471 l!13867)))))

(declare-fun b!4328414 () Bool)

(assert (=> b!4328414 (= e!2693357 (not true))))

(declare-fun lt!1545223 () List!48595)

(declare-fun contains!10551 (List!48595 tuple2!47534) Bool)

(assert (=> b!4328414 (not (contains!10551 lt!1545223 (h!53940 l!13867)))))

(declare-datatypes ((Unit!68113 0))(
  ( (Unit!68114) )
))
(declare-fun lt!1545222 () Unit!68113)

(declare-fun lemmaNotContainsKeyThenCannotContainPair!1 (List!48595 K!9748 V!9994) Unit!68113)

(assert (=> b!4328414 (= lt!1545222 (lemmaNotContainsKeyThenCannotContainPair!1 lt!1545223 (_1!27061 (h!53940 l!13867)) (_2!27061 (h!53940 l!13867))))))

(declare-fun containsKey!434 (List!48595 K!9748) Bool)

(assert (=> b!4328414 (not (containsKey!434 lt!1545223 (_1!27061 (h!53940 l!13867))))))

(declare-fun lt!1545220 () Unit!68113)

(declare-fun lemmaRemovePairForKeyPreservesNotContainsKey!5 (List!48595 K!9748 K!9748) Unit!68113)

(assert (=> b!4328414 (= lt!1545220 (lemmaRemovePairForKeyPreservesNotContainsKey!5 (t!355507 l!13867) key!5269 (_1!27061 (h!53940 l!13867))))))

(assert (=> b!4328414 (noDuplicateKeys!284 lt!1545223)))

(declare-fun removePairForKey!298 (List!48595 K!9748) List!48595)

(assert (=> b!4328414 (= lt!1545223 (removePairForKey!298 (t!355507 l!13867) key!5269))))

(declare-fun lt!1545221 () Unit!68113)

(declare-fun lemmaRemovePairForKeyPreservesNoDuplicateKeys!208 (List!48595 K!9748) Unit!68113)

(assert (=> b!4328414 (= lt!1545221 (lemmaRemovePairForKeyPreservesNoDuplicateKeys!208 (t!355507 l!13867) key!5269))))

(declare-fun tp_is_empty!24327 () Bool)

(declare-fun b!4328415 () Bool)

(declare-fun tp!1328001 () Bool)

(assert (=> b!4328415 (= e!2693356 (and tp_is_empty!24325 tp_is_empty!24327 tp!1328001))))

(assert (= (and start!416904 res!1773722) b!4328413))

(assert (= (and b!4328413 res!1773723) b!4328414))

(assert (= (and start!416904 (is-Cons!48471 l!13867)) b!4328415))

(declare-fun m!4923241 () Bool)

(assert (=> start!416904 m!4923241))

(declare-fun m!4923243 () Bool)

(assert (=> b!4328414 m!4923243))

(declare-fun m!4923245 () Bool)

(assert (=> b!4328414 m!4923245))

(declare-fun m!4923247 () Bool)

(assert (=> b!4328414 m!4923247))

(declare-fun m!4923249 () Bool)

(assert (=> b!4328414 m!4923249))

(declare-fun m!4923251 () Bool)

(assert (=> b!4328414 m!4923251))

(declare-fun m!4923253 () Bool)

(assert (=> b!4328414 m!4923253))

(declare-fun m!4923255 () Bool)

(assert (=> b!4328414 m!4923255))

(push 1)

(assert (not start!416904))

(assert (not b!4328414))

(assert tp_is_empty!24327)

(assert (not b!4328415))

(assert tp_is_empty!24325)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

