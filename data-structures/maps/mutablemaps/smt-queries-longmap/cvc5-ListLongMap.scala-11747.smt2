; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!137812 () Bool)

(assert start!137812)

(declare-fun b!1582687 () Bool)

(declare-fun res!1081294 () Bool)

(declare-fun e!883378 () Bool)

(assert (=> b!1582687 (=> (not res!1081294) (not e!883378))))

(declare-datatypes ((B!2822 0))(
  ( (B!2823 (val!19773 Int)) )
))
(declare-datatypes ((tuple2!25878 0))(
  ( (tuple2!25879 (_1!12949 (_ BitVec 64)) (_2!12949 B!2822)) )
))
(declare-datatypes ((List!37054 0))(
  ( (Nil!37051) (Cons!37050 (h!38594 tuple2!25878) (t!51975 List!37054)) )
))
(declare-fun l!1065 () List!37054)

(declare-fun key!287 () (_ BitVec 64))

(assert (=> b!1582687 (= res!1081294 (and (is-Cons!37050 l!1065) (not (= (_1!12949 (h!38594 l!1065)) key!287))))))

(declare-fun res!1081293 () Bool)

(assert (=> start!137812 (=> (not res!1081293) (not e!883378))))

(declare-fun isStrictlySorted!1125 (List!37054) Bool)

(assert (=> start!137812 (= res!1081293 (isStrictlySorted!1125 l!1065))))

(assert (=> start!137812 e!883378))

(declare-fun e!883379 () Bool)

(assert (=> start!137812 e!883379))

(assert (=> start!137812 true))

(declare-fun b!1582688 () Bool)

(declare-fun e!883380 () Bool)

(assert (=> b!1582688 (= e!883378 e!883380)))

(declare-fun res!1081295 () Bool)

(assert (=> b!1582688 (=> res!1081295 e!883380)))

(assert (=> b!1582688 (= res!1081295 (not (isStrictlySorted!1125 (t!51975 l!1065))))))

(declare-fun b!1582689 () Bool)

(declare-fun res!1081292 () Bool)

(assert (=> b!1582689 (=> (not res!1081292) (not e!883378))))

(declare-fun containsKey!971 (List!37054 (_ BitVec 64)) Bool)

(assert (=> b!1582689 (= res!1081292 (containsKey!971 l!1065 key!287))))

(declare-fun b!1582690 () Bool)

(assert (=> b!1582690 (= e!883380 (not (containsKey!971 (t!51975 l!1065) key!287)))))

(declare-fun b!1582691 () Bool)

(declare-fun tp_is_empty!39355 () Bool)

(declare-fun tp!114859 () Bool)

(assert (=> b!1582691 (= e!883379 (and tp_is_empty!39355 tp!114859))))

(assert (= (and start!137812 res!1081293) b!1582689))

(assert (= (and b!1582689 res!1081292) b!1582687))

(assert (= (and b!1582687 res!1081294) b!1582688))

(assert (= (and b!1582688 (not res!1081295)) b!1582690))

(assert (= (and start!137812 (is-Cons!37050 l!1065)) b!1582691))

(declare-fun m!1452971 () Bool)

(assert (=> start!137812 m!1452971))

(declare-fun m!1452973 () Bool)

(assert (=> b!1582688 m!1452973))

(declare-fun m!1452975 () Bool)

(assert (=> b!1582689 m!1452975))

(declare-fun m!1452977 () Bool)

(assert (=> b!1582690 m!1452977))

(push 1)

(assert tp_is_empty!39355)

(assert (not b!1582689))

(assert (not b!1582688))

(assert (not b!1582690))

(assert (not start!137812))

(assert (not b!1582691))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!166999 () Bool)

(declare-fun res!1081344 () Bool)

(declare-fun e!883423 () Bool)

(assert (=> d!166999 (=> res!1081344 e!883423)))

(assert (=> d!166999 (= res!1081344 (and (is-Cons!37050 l!1065) (= (_1!12949 (h!38594 l!1065)) key!287)))))

(assert (=> d!166999 (= (containsKey!971 l!1065 key!287) e!883423)))

(declare-fun b!1582746 () Bool)

(declare-fun e!883424 () Bool)

(assert (=> b!1582746 (= e!883423 e!883424)))

(declare-fun res!1081345 () Bool)

(assert (=> b!1582746 (=> (not res!1081345) (not e!883424))))

(assert (=> b!1582746 (= res!1081345 (and (or (not (is-Cons!37050 l!1065)) (bvsle (_1!12949 (h!38594 l!1065)) key!287)) (is-Cons!37050 l!1065) (bvslt (_1!12949 (h!38594 l!1065)) key!287)))))

(declare-fun b!1582747 () Bool)

(assert (=> b!1582747 (= e!883424 (containsKey!971 (t!51975 l!1065) key!287))))

(assert (= (and d!166999 (not res!1081344)) b!1582746))

(assert (= (and b!1582746 res!1081345) b!1582747))

(assert (=> b!1582747 m!1452977))

(assert (=> b!1582689 d!166999))

(declare-fun d!167009 () Bool)

(declare-fun res!1081350 () Bool)

(declare-fun e!883429 () Bool)

(assert (=> d!167009 (=> res!1081350 e!883429)))

(assert (=> d!167009 (= res!1081350 (and (is-Cons!37050 (t!51975 l!1065)) (= (_1!12949 (h!38594 (t!51975 l!1065))) key!287)))))

(assert (=> d!167009 (= (containsKey!971 (t!51975 l!1065) key!287) e!883429)))

(declare-fun b!1582752 () Bool)

(declare-fun e!883430 () Bool)

(assert (=> b!1582752 (= e!883429 e!883430)))

(declare-fun res!1081351 () Bool)

(assert (=> b!1582752 (=> (not res!1081351) (not e!883430))))

(assert (=> b!1582752 (= res!1081351 (and (or (not (is-Cons!37050 (t!51975 l!1065))) (bvsle (_1!12949 (h!38594 (t!51975 l!1065))) key!287)) (is-Cons!37050 (t!51975 l!1065)) (bvslt (_1!12949 (h!38594 (t!51975 l!1065))) key!287)))))

(declare-fun b!1582753 () Bool)

(assert (=> b!1582753 (= e!883430 (containsKey!971 (t!51975 (t!51975 l!1065)) key!287))))

(assert (= (and d!167009 (not res!1081350)) b!1582752))

(assert (= (and b!1582752 res!1081351) b!1582753))

(declare-fun m!1452999 () Bool)

(assert (=> b!1582753 m!1452999))

(assert (=> b!1582690 d!167009))

(declare-fun d!167011 () Bool)

(declare-fun res!1081364 () Bool)

(declare-fun e!883448 () Bool)

(assert (=> d!167011 (=> res!1081364 e!883448)))

(assert (=> d!167011 (= res!1081364 (or (is-Nil!37051 l!1065) (is-Nil!37051 (t!51975 l!1065))))))

(assert (=> d!167011 (= (isStrictlySorted!1125 l!1065) e!883448)))

(declare-fun b!1582775 () Bool)

(declare-fun e!883449 () Bool)

(assert (=> b!1582775 (= e!883448 e!883449)))

(declare-fun res!1081365 () Bool)

(assert (=> b!1582775 (=> (not res!1081365) (not e!883449))))

(assert (=> b!1582775 (= res!1081365 (bvslt (_1!12949 (h!38594 l!1065)) (_1!12949 (h!38594 (t!51975 l!1065)))))))

(declare-fun b!1582776 () Bool)

(assert (=> b!1582776 (= e!883449 (isStrictlySorted!1125 (t!51975 l!1065)))))

(assert (= (and d!167011 (not res!1081364)) b!1582775))

(assert (= (and b!1582775 res!1081365) b!1582776))

(assert (=> b!1582776 m!1452973))

(assert (=> start!137812 d!167011))

(declare-fun d!167017 () Bool)

(declare-fun res!1081366 () Bool)

(declare-fun e!883451 () Bool)

(assert (=> d!167017 (=> res!1081366 e!883451)))

(assert (=> d!167017 (= res!1081366 (or (is-Nil!37051 (t!51975 l!1065)) (is-Nil!37051 (t!51975 (t!51975 l!1065)))))))

(assert (=> d!167017 (= (isStrictlySorted!1125 (t!51975 l!1065)) e!883451)))

(declare-fun b!1582778 () Bool)

(declare-fun e!883452 () Bool)

(assert (=> b!1582778 (= e!883451 e!883452)))

(declare-fun res!1081367 () Bool)

(assert (=> b!1582778 (=> (not res!1081367) (not e!883452))))

(assert (=> b!1582778 (= res!1081367 (bvslt (_1!12949 (h!38594 (t!51975 l!1065))) (_1!12949 (h!38594 (t!51975 (t!51975 l!1065))))))))

(declare-fun b!1582779 () Bool)

(assert (=> b!1582779 (= e!883452 (isStrictlySorted!1125 (t!51975 (t!51975 l!1065))))))

(assert (= (and d!167017 (not res!1081366)) b!1582778))

(assert (= (and b!1582778 res!1081367) b!1582779))

(declare-fun m!1453005 () Bool)

(assert (=> b!1582779 m!1453005))

(assert (=> b!1582688 d!167017))

(declare-fun b!1582784 () Bool)

(declare-fun e!883455 () Bool)

(declare-fun tp!114874 () Bool)

(assert (=> b!1582784 (= e!883455 (and tp_is_empty!39355 tp!114874))))

(assert (=> b!1582691 (= tp!114859 e!883455)))

(assert (= (and b!1582691 (is-Cons!37050 (t!51975 l!1065))) b!1582784))

(push 1)

