; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!416872 () Bool)

(assert start!416872)

(declare-fun b!4328285 () Bool)

(declare-fun e!2693266 () Bool)

(assert (=> b!4328285 (= e!2693266 true)))

(declare-fun lt!1545150 () Bool)

(declare-datatypes ((K!9733 0))(
  ( (K!9734 (val!16057 Int)) )
))
(declare-datatypes ((V!9979 0))(
  ( (V!9980 (val!16058 Int)) )
))
(declare-datatypes ((tuple2!47522 0))(
  ( (tuple2!47523 (_1!27055 K!9733) (_2!27055 V!9979)) )
))
(declare-datatypes ((List!48589 0))(
  ( (Nil!48465) (Cons!48465 (h!53934 tuple2!47522) (t!355501 List!48589)) )
))
(declare-fun l!13867 () List!48589)

(declare-fun containsKey!428 (List!48589 K!9733) Bool)

(assert (=> b!4328285 (= lt!1545150 (containsKey!428 (t!355501 l!13867) (_1!27055 (h!53934 l!13867))))))

(declare-fun res!1773647 () Bool)

(declare-fun e!2693268 () Bool)

(assert (=> start!416872 (=> (not res!1773647) (not e!2693268))))

(declare-fun noDuplicateKeys!278 (List!48589) Bool)

(assert (=> start!416872 (= res!1773647 (noDuplicateKeys!278 l!13867))))

(assert (=> start!416872 e!2693268))

(declare-fun e!2693267 () Bool)

(assert (=> start!416872 e!2693267))

(declare-fun tp_is_empty!24301 () Bool)

(assert (=> start!416872 tp_is_empty!24301))

(declare-fun b!4328286 () Bool)

(declare-fun res!1773646 () Bool)

(assert (=> b!4328286 (=> res!1773646 e!2693266)))

(declare-fun key!5269 () K!9733)

(assert (=> b!4328286 (= res!1773646 (= (_1!27055 (h!53934 l!13867)) key!5269))))

(declare-fun b!4328287 () Bool)

(assert (=> b!4328287 (= e!2693268 (not e!2693266))))

(declare-fun res!1773649 () Bool)

(assert (=> b!4328287 (=> res!1773649 e!2693266)))

(assert (=> b!4328287 (= res!1773649 (not (noDuplicateKeys!278 (t!355501 l!13867))))))

(declare-fun removePairForKey!292 (List!48589 K!9733) List!48589)

(assert (=> b!4328287 (noDuplicateKeys!278 (removePairForKey!292 (t!355501 l!13867) key!5269))))

(declare-datatypes ((Unit!68101 0))(
  ( (Unit!68102) )
))
(declare-fun lt!1545151 () Unit!68101)

(declare-fun lemmaRemovePairForKeyPreservesNoDuplicateKeys!202 (List!48589 K!9733) Unit!68101)

(assert (=> b!4328287 (= lt!1545151 (lemmaRemovePairForKeyPreservesNoDuplicateKeys!202 (t!355501 l!13867) key!5269))))

(declare-fun b!4328288 () Bool)

(declare-fun tp_is_empty!24303 () Bool)

(declare-fun tp!1327977 () Bool)

(assert (=> b!4328288 (= e!2693267 (and tp_is_empty!24301 tp_is_empty!24303 tp!1327977))))

(declare-fun b!4328289 () Bool)

(declare-fun res!1773648 () Bool)

(assert (=> b!4328289 (=> (not res!1773648) (not e!2693268))))

(assert (=> b!4328289 (= res!1773648 (and (or (not (is-Cons!48465 l!13867)) (not (= (_1!27055 (h!53934 l!13867)) key!5269))) (is-Cons!48465 l!13867)))))

(assert (= (and start!416872 res!1773647) b!4328289))

(assert (= (and b!4328289 res!1773648) b!4328287))

(assert (= (and b!4328287 (not res!1773649)) b!4328286))

(assert (= (and b!4328286 (not res!1773646)) b!4328285))

(assert (= (and start!416872 (is-Cons!48465 l!13867)) b!4328288))

(declare-fun m!4923117 () Bool)

(assert (=> b!4328285 m!4923117))

(declare-fun m!4923119 () Bool)

(assert (=> start!416872 m!4923119))

(declare-fun m!4923121 () Bool)

(assert (=> b!4328287 m!4923121))

(declare-fun m!4923123 () Bool)

(assert (=> b!4328287 m!4923123))

(assert (=> b!4328287 m!4923123))

(declare-fun m!4923125 () Bool)

(assert (=> b!4328287 m!4923125))

(declare-fun m!4923127 () Bool)

(assert (=> b!4328287 m!4923127))

(push 1)

(assert (not b!4328288))

(assert (not b!4328285))

(assert tp_is_empty!24303)

(assert (not start!416872))

(assert tp_is_empty!24301)

(assert (not b!4328287))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

