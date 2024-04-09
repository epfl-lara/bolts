; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!137816 () Bool)

(assert start!137816)

(declare-fun b!1582717 () Bool)

(declare-fun res!1081319 () Bool)

(declare-fun e!883398 () Bool)

(assert (=> b!1582717 (=> (not res!1081319) (not e!883398))))

(declare-datatypes ((B!2826 0))(
  ( (B!2827 (val!19775 Int)) )
))
(declare-datatypes ((tuple2!25882 0))(
  ( (tuple2!25883 (_1!12951 (_ BitVec 64)) (_2!12951 B!2826)) )
))
(declare-datatypes ((List!37056 0))(
  ( (Nil!37053) (Cons!37052 (h!38596 tuple2!25882) (t!51977 List!37056)) )
))
(declare-fun l!1065 () List!37056)

(declare-fun key!287 () (_ BitVec 64))

(assert (=> b!1582717 (= res!1081319 (and (is-Cons!37052 l!1065) (not (= (_1!12951 (h!38596 l!1065)) key!287))))))

(declare-fun b!1582718 () Bool)

(declare-fun res!1081318 () Bool)

(assert (=> b!1582718 (=> (not res!1081318) (not e!883398))))

(declare-fun containsKey!973 (List!37056 (_ BitVec 64)) Bool)

(assert (=> b!1582718 (= res!1081318 (containsKey!973 l!1065 key!287))))

(declare-fun res!1081317 () Bool)

(assert (=> start!137816 (=> (not res!1081317) (not e!883398))))

(declare-fun isStrictlySorted!1127 (List!37056) Bool)

(assert (=> start!137816 (= res!1081317 (isStrictlySorted!1127 l!1065))))

(assert (=> start!137816 e!883398))

(declare-fun e!883396 () Bool)

(assert (=> start!137816 e!883396))

(assert (=> start!137816 true))

(declare-fun b!1582719 () Bool)

(declare-fun tp_is_empty!39359 () Bool)

(declare-fun tp!114865 () Bool)

(assert (=> b!1582719 (= e!883396 (and tp_is_empty!39359 tp!114865))))

(declare-fun b!1582720 () Bool)

(declare-fun e!883397 () Bool)

(assert (=> b!1582720 (= e!883398 e!883397)))

(declare-fun res!1081316 () Bool)

(assert (=> b!1582720 (=> res!1081316 e!883397)))

(assert (=> b!1582720 (= res!1081316 (not (isStrictlySorted!1127 (t!51977 l!1065))))))

(declare-fun b!1582721 () Bool)

(assert (=> b!1582721 (= e!883397 (not (containsKey!973 (t!51977 l!1065) key!287)))))

(assert (= (and start!137816 res!1081317) b!1582718))

(assert (= (and b!1582718 res!1081318) b!1582717))

(assert (= (and b!1582717 res!1081319) b!1582720))

(assert (= (and b!1582720 (not res!1081316)) b!1582721))

(assert (= (and start!137816 (is-Cons!37052 l!1065)) b!1582719))

(declare-fun m!1452987 () Bool)

(assert (=> b!1582718 m!1452987))

(declare-fun m!1452989 () Bool)

(assert (=> start!137816 m!1452989))

(declare-fun m!1452991 () Bool)

(assert (=> b!1582720 m!1452991))

(declare-fun m!1452993 () Bool)

(assert (=> b!1582721 m!1452993))

(push 1)

(assert tp_is_empty!39359)

(assert (not b!1582720))

(assert (not b!1582721))

(assert (not b!1582718))

(assert (not b!1582719))

(assert (not start!137816))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!166997 () Bool)

(declare-fun res!1081332 () Bool)

(declare-fun e!883411 () Bool)

(assert (=> d!166997 (=> res!1081332 e!883411)))

(assert (=> d!166997 (= res!1081332 (or (is-Nil!37053 l!1065) (is-Nil!37053 (t!51977 l!1065))))))

(assert (=> d!166997 (= (isStrictlySorted!1127 l!1065) e!883411)))

(declare-fun b!1582734 () Bool)

(declare-fun e!883412 () Bool)

(assert (=> b!1582734 (= e!883411 e!883412)))

(declare-fun res!1081333 () Bool)

(assert (=> b!1582734 (=> (not res!1081333) (not e!883412))))

(assert (=> b!1582734 (= res!1081333 (bvslt (_1!12951 (h!38596 l!1065)) (_1!12951 (h!38596 (t!51977 l!1065)))))))

(declare-fun b!1582735 () Bool)

(assert (=> b!1582735 (= e!883412 (isStrictlySorted!1127 (t!51977 l!1065)))))

(assert (= (and d!166997 (not res!1081332)) b!1582734))

(assert (= (and b!1582734 res!1081333) b!1582735))

(assert (=> b!1582735 m!1452991))

(assert (=> start!137816 d!166997))

(declare-fun d!167005 () Bool)

(declare-fun res!1081354 () Bool)

(declare-fun e!883436 () Bool)

(assert (=> d!167005 (=> res!1081354 e!883436)))

(assert (=> d!167005 (= res!1081354 (and (is-Cons!37052 l!1065) (= (_1!12951 (h!38596 l!1065)) key!287)))))

(assert (=> d!167005 (= (containsKey!973 l!1065 key!287) e!883436)))

(declare-fun b!1582761 () Bool)

(declare-fun e!883437 () Bool)

(assert (=> b!1582761 (= e!883436 e!883437)))

(declare-fun res!1081355 () Bool)

(assert (=> b!1582761 (=> (not res!1081355) (not e!883437))))

(assert (=> b!1582761 (= res!1081355 (and (or (not (is-Cons!37052 l!1065)) (bvsle (_1!12951 (h!38596 l!1065)) key!287)) (is-Cons!37052 l!1065) (bvslt (_1!12951 (h!38596 l!1065)) key!287)))))

(declare-fun b!1582762 () Bool)

(assert (=> b!1582762 (= e!883437 (containsKey!973 (t!51977 l!1065) key!287))))

(assert (= (and d!167005 (not res!1081354)) b!1582761))

(assert (= (and b!1582761 res!1081355) b!1582762))

(assert (=> b!1582762 m!1452993))

(assert (=> b!1582718 d!167005))

(declare-fun d!167013 () Bool)

(declare-fun res!1081356 () Bool)

(declare-fun e!883438 () Bool)

(assert (=> d!167013 (=> res!1081356 e!883438)))

(assert (=> d!167013 (= res!1081356 (or (is-Nil!37053 (t!51977 l!1065)) (is-Nil!37053 (t!51977 (t!51977 l!1065)))))))

(assert (=> d!167013 (= (isStrictlySorted!1127 (t!51977 l!1065)) e!883438)))

(declare-fun b!1582763 () Bool)

(declare-fun e!883439 () Bool)

(assert (=> b!1582763 (= e!883438 e!883439)))

(declare-fun res!1081357 () Bool)

(assert (=> b!1582763 (=> (not res!1081357) (not e!883439))))

(assert (=> b!1582763 (= res!1081357 (bvslt (_1!12951 (h!38596 (t!51977 l!1065))) (_1!12951 (h!38596 (t!51977 (t!51977 l!1065))))))))

(declare-fun b!1582764 () Bool)

(assert (=> b!1582764 (= e!883439 (isStrictlySorted!1127 (t!51977 (t!51977 l!1065))))))

(assert (= (and d!167013 (not res!1081356)) b!1582763))

(assert (= (and b!1582763 res!1081357) b!1582764))

(declare-fun m!1453001 () Bool)

(assert (=> b!1582764 m!1453001))

(assert (=> b!1582720 d!167013))

(declare-fun d!167015 () Bool)

(declare-fun res!1081362 () Bool)

(declare-fun e!883444 () Bool)

(assert (=> d!167015 (=> res!1081362 e!883444)))

(assert (=> d!167015 (= res!1081362 (and (is-Cons!37052 (t!51977 l!1065)) (= (_1!12951 (h!38596 (t!51977 l!1065))) key!287)))))

(assert (=> d!167015 (= (containsKey!973 (t!51977 l!1065) key!287) e!883444)))

(declare-fun b!1582769 () Bool)

(declare-fun e!883445 () Bool)

(assert (=> b!1582769 (= e!883444 e!883445)))

(declare-fun res!1081363 () Bool)

(assert (=> b!1582769 (=> (not res!1081363) (not e!883445))))

(assert (=> b!1582769 (= res!1081363 (and (or (not (is-Cons!37052 (t!51977 l!1065))) (bvsle (_1!12951 (h!38596 (t!51977 l!1065))) key!287)) (is-Cons!37052 (t!51977 l!1065)) (bvslt (_1!12951 (h!38596 (t!51977 l!1065))) key!287)))))

(declare-fun b!1582770 () Bool)

(assert (=> b!1582770 (= e!883445 (containsKey!973 (t!51977 (t!51977 l!1065)) key!287))))

(assert (= (and d!167015 (not res!1081362)) b!1582769))

(assert (= (and b!1582769 res!1081363) b!1582770))

(declare-fun m!1453003 () Bool)

