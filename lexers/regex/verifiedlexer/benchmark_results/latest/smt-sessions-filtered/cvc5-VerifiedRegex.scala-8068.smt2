; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!416900 () Bool)

(assert start!416900)

(declare-fun res!1773710 () Bool)

(declare-fun e!2693345 () Bool)

(assert (=> start!416900 (=> (not res!1773710) (not e!2693345))))

(declare-datatypes ((K!9743 0))(
  ( (K!9744 (val!16065 Int)) )
))
(declare-datatypes ((V!9989 0))(
  ( (V!9990 (val!16066 Int)) )
))
(declare-datatypes ((tuple2!47530 0))(
  ( (tuple2!47531 (_1!27059 K!9743) (_2!27059 V!9989)) )
))
(declare-datatypes ((List!48593 0))(
  ( (Nil!48469) (Cons!48469 (h!53938 tuple2!47530) (t!355505 List!48593)) )
))
(declare-fun l!13867 () List!48593)

(declare-fun noDuplicateKeys!282 (List!48593) Bool)

(assert (=> start!416900 (= res!1773710 (noDuplicateKeys!282 l!13867))))

(assert (=> start!416900 e!2693345))

(declare-fun e!2693344 () Bool)

(assert (=> start!416900 e!2693344))

(declare-fun tp_is_empty!24317 () Bool)

(assert (=> start!416900 tp_is_empty!24317))

(declare-fun b!4328395 () Bool)

(declare-fun res!1773711 () Bool)

(assert (=> b!4328395 (=> (not res!1773711) (not e!2693345))))

(declare-fun key!5269 () K!9743)

(assert (=> b!4328395 (= res!1773711 (and (or (not (is-Cons!48469 l!13867)) (not (= (_1!27059 (h!53938 l!13867)) key!5269))) (is-Cons!48469 l!13867)))))

(declare-fun b!4328396 () Bool)

(assert (=> b!4328396 (= e!2693345 (not true))))

(declare-fun lt!1545201 () List!48593)

(declare-fun containsKey!432 (List!48593 K!9743) Bool)

(assert (=> b!4328396 (not (containsKey!432 lt!1545201 (_1!27059 (h!53938 l!13867))))))

(declare-datatypes ((Unit!68109 0))(
  ( (Unit!68110) )
))
(declare-fun lt!1545202 () Unit!68109)

(declare-fun lemmaRemovePairForKeyPreservesNotContainsKey!3 (List!48593 K!9743 K!9743) Unit!68109)

(assert (=> b!4328396 (= lt!1545202 (lemmaRemovePairForKeyPreservesNotContainsKey!3 (t!355505 l!13867) key!5269 (_1!27059 (h!53938 l!13867))))))

(assert (=> b!4328396 (noDuplicateKeys!282 lt!1545201)))

(declare-fun removePairForKey!296 (List!48593 K!9743) List!48593)

(assert (=> b!4328396 (= lt!1545201 (removePairForKey!296 (t!355505 l!13867) key!5269))))

(declare-fun lt!1545200 () Unit!68109)

(declare-fun lemmaRemovePairForKeyPreservesNoDuplicateKeys!206 (List!48593 K!9743) Unit!68109)

(assert (=> b!4328396 (= lt!1545200 (lemmaRemovePairForKeyPreservesNoDuplicateKeys!206 (t!355505 l!13867) key!5269))))

(declare-fun tp_is_empty!24319 () Bool)

(declare-fun b!4328397 () Bool)

(declare-fun tp!1327995 () Bool)

(assert (=> b!4328397 (= e!2693344 (and tp_is_empty!24317 tp_is_empty!24319 tp!1327995))))

(assert (= (and start!416900 res!1773710) b!4328395))

(assert (= (and b!4328395 res!1773711) b!4328396))

(assert (= (and start!416900 (is-Cons!48469 l!13867)) b!4328397))

(declare-fun m!4923217 () Bool)

(assert (=> start!416900 m!4923217))

(declare-fun m!4923219 () Bool)

(assert (=> b!4328396 m!4923219))

(declare-fun m!4923221 () Bool)

(assert (=> b!4328396 m!4923221))

(declare-fun m!4923223 () Bool)

(assert (=> b!4328396 m!4923223))

(declare-fun m!4923225 () Bool)

(assert (=> b!4328396 m!4923225))

(declare-fun m!4923227 () Bool)

(assert (=> b!4328396 m!4923227))

(push 1)

(assert (not b!4328397))

(assert (not b!4328396))

(assert tp_is_empty!24317)

(assert tp_is_empty!24319)

(assert (not start!416900))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

