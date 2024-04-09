; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!106480 () Bool)

(assert start!106480)

(declare-fun b!1265519 () Bool)

(declare-fun e!720744 () Bool)

(declare-fun tp_is_empty!32509 () Bool)

(declare-fun tp!96357 () Bool)

(assert (=> b!1265519 (= e!720744 (and tp_is_empty!32509 tp!96357))))

(declare-fun res!842672 () Bool)

(declare-fun e!720745 () Bool)

(assert (=> start!106480 (=> (not res!842672) (not e!720745))))

(declare-datatypes ((B!1976 0))(
  ( (B!1977 (val!16323 Int)) )
))
(declare-datatypes ((tuple2!21314 0))(
  ( (tuple2!21315 (_1!10667 (_ BitVec 64)) (_2!10667 B!1976)) )
))
(declare-datatypes ((List!28490 0))(
  ( (Nil!28487) (Cons!28486 (h!29695 tuple2!21314) (t!42018 List!28490)) )
))
(declare-fun l!706 () List!28490)

(declare-fun isStrictlySorted!786 (List!28490) Bool)

(assert (=> start!106480 (= res!842672 (isStrictlySorted!786 l!706))))

(assert (=> start!106480 e!720745))

(assert (=> start!106480 e!720744))

(assert (=> start!106480 true))

(declare-fun b!1265516 () Bool)

(declare-fun res!842674 () Bool)

(assert (=> b!1265516 (=> (not res!842674) (not e!720745))))

(declare-fun key1!31 () (_ BitVec 64))

(declare-fun containsKey!647 (List!28490 (_ BitVec 64)) Bool)

(assert (=> b!1265516 (= res!842674 (not (containsKey!647 l!706 key1!31)))))

(declare-fun b!1265517 () Bool)

(declare-fun res!842673 () Bool)

(assert (=> b!1265517 (=> (not res!842673) (not e!720745))))

(assert (=> b!1265517 (= res!842673 (is-Cons!28486 l!706))))

(declare-fun b!1265518 () Bool)

(assert (=> b!1265518 (= e!720745 (not (isStrictlySorted!786 (t!42018 l!706))))))

(assert (= (and start!106480 res!842672) b!1265516))

(assert (= (and b!1265516 res!842674) b!1265517))

(assert (= (and b!1265517 res!842673) b!1265518))

(assert (= (and start!106480 (is-Cons!28486 l!706)) b!1265519))

(declare-fun m!1165629 () Bool)

(assert (=> start!106480 m!1165629))

(declare-fun m!1165631 () Bool)

(assert (=> b!1265516 m!1165631))

(declare-fun m!1165633 () Bool)

(assert (=> b!1265518 m!1165633))

(push 1)

(assert (not b!1265519))

(assert (not start!106480))

(assert (not b!1265518))

(assert tp_is_empty!32509)

(assert (not b!1265516))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!138865 () Bool)

(declare-fun res!842697 () Bool)

(declare-fun e!720762 () Bool)

(assert (=> d!138865 (=> res!842697 e!720762)))

(assert (=> d!138865 (= res!842697 (or (is-Nil!28487 l!706) (is-Nil!28487 (t!42018 l!706))))))

(assert (=> d!138865 (= (isStrictlySorted!786 l!706) e!720762)))

(declare-fun b!1265548 () Bool)

(declare-fun e!720763 () Bool)

(assert (=> b!1265548 (= e!720762 e!720763)))

(declare-fun res!842698 () Bool)

(assert (=> b!1265548 (=> (not res!842698) (not e!720763))))

(assert (=> b!1265548 (= res!842698 (bvslt (_1!10667 (h!29695 l!706)) (_1!10667 (h!29695 (t!42018 l!706)))))))

(declare-fun b!1265549 () Bool)

(assert (=> b!1265549 (= e!720763 (isStrictlySorted!786 (t!42018 l!706)))))

(assert (= (and d!138865 (not res!842697)) b!1265548))

(assert (= (and b!1265548 res!842698) b!1265549))

(assert (=> b!1265549 m!1165633))

(assert (=> start!106480 d!138865))

(declare-fun d!138871 () Bool)

(declare-fun res!842719 () Bool)

(declare-fun e!720784 () Bool)

(assert (=> d!138871 (=> res!842719 e!720784)))

(assert (=> d!138871 (= res!842719 (and (is-Cons!28486 l!706) (= (_1!10667 (h!29695 l!706)) key1!31)))))

(assert (=> d!138871 (= (containsKey!647 l!706 key1!31) e!720784)))

(declare-fun b!1265570 () Bool)

(declare-fun e!720785 () Bool)

(assert (=> b!1265570 (= e!720784 e!720785)))

(declare-fun res!842720 () Bool)

(assert (=> b!1265570 (=> (not res!842720) (not e!720785))))

(assert (=> b!1265570 (= res!842720 (and (or (not (is-Cons!28486 l!706)) (bvsle (_1!10667 (h!29695 l!706)) key1!31)) (is-Cons!28486 l!706) (bvslt (_1!10667 (h!29695 l!706)) key1!31)))))

(declare-fun b!1265571 () Bool)

(assert (=> b!1265571 (= e!720785 (containsKey!647 (t!42018 l!706) key1!31))))

(assert (= (and d!138871 (not res!842719)) b!1265570))

(assert (= (and b!1265570 res!842720) b!1265571))

(declare-fun m!1165651 () Bool)

(assert (=> b!1265571 m!1165651))

(assert (=> b!1265516 d!138871))

(declare-fun d!138881 () Bool)

(declare-fun res!842721 () Bool)

(declare-fun e!720786 () Bool)

(assert (=> d!138881 (=> res!842721 e!720786)))

(assert (=> d!138881 (= res!842721 (or (is-Nil!28487 (t!42018 l!706)) (is-Nil!28487 (t!42018 (t!42018 l!706)))))))

(assert (=> d!138881 (= (isStrictlySorted!786 (t!42018 l!706)) e!720786)))

(declare-fun b!1265572 () Bool)

(declare-fun e!720787 () Bool)

(assert (=> b!1265572 (= e!720786 e!720787)))

(declare-fun res!842722 () Bool)

(assert (=> b!1265572 (=> (not res!842722) (not e!720787))))

(assert (=> b!1265572 (= res!842722 (bvslt (_1!10667 (h!29695 (t!42018 l!706))) (_1!10667 (h!29695 (t!42018 (t!42018 l!706))))))))

(declare-fun b!1265573 () Bool)

(assert (=> b!1265573 (= e!720787 (isStrictlySorted!786 (t!42018 (t!42018 l!706))))))

(assert (= (and d!138881 (not res!842721)) b!1265572))

(assert (= (and b!1265572 res!842722) b!1265573))

(declare-fun m!1165653 () Bool)

(assert (=> b!1265573 m!1165653))

(assert (=> b!1265518 d!138881))

(declare-fun b!1265578 () Bool)

(declare-fun e!720790 () Bool)

(declare-fun tp!96366 () Bool)

(assert (=> b!1265578 (= e!720790 (and tp_is_empty!32509 tp!96366))))

(assert (=> b!1265519 (= tp!96357 e!720790)))

(assert (= (and b!1265519 (is-Cons!28486 (t!42018 l!706))) b!1265578))

(push 1)

(assert (not b!1265573))

(assert (not b!1265549))

(assert tp_is_empty!32509)

(assert (not b!1265578))

(assert (not b!1265571))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

