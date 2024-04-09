; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!106502 () Bool)

(assert start!106502)

(declare-fun res!842769 () Bool)

(declare-fun e!720826 () Bool)

(assert (=> start!106502 (=> (not res!842769) (not e!720826))))

(declare-datatypes ((B!1986 0))(
  ( (B!1987 (val!16328 Int)) )
))
(declare-datatypes ((tuple2!21324 0))(
  ( (tuple2!21325 (_1!10672 (_ BitVec 64)) (_2!10672 B!1986)) )
))
(declare-datatypes ((List!28495 0))(
  ( (Nil!28492) (Cons!28491 (h!29700 tuple2!21324) (t!42023 List!28495)) )
))
(declare-fun l!706 () List!28495)

(declare-fun isStrictlySorted!791 (List!28495) Bool)

(assert (=> start!106502 (= res!842769 (isStrictlySorted!791 l!706))))

(assert (=> start!106502 e!720826))

(declare-fun e!720825 () Bool)

(assert (=> start!106502 e!720825))

(assert (=> start!106502 true))

(declare-fun b!1265641 () Bool)

(declare-fun res!842767 () Bool)

(assert (=> b!1265641 (=> (not res!842767) (not e!720826))))

(declare-fun key1!31 () (_ BitVec 64))

(declare-fun containsKey!652 (List!28495 (_ BitVec 64)) Bool)

(assert (=> b!1265641 (= res!842767 (not (containsKey!652 l!706 key1!31)))))

(declare-fun b!1265642 () Bool)

(declare-fun res!842770 () Bool)

(assert (=> b!1265642 (=> (not res!842770) (not e!720826))))

(assert (=> b!1265642 (= res!842770 (isStrictlySorted!791 (t!42023 l!706)))))

(declare-fun b!1265643 () Bool)

(assert (=> b!1265643 (= e!720826 (containsKey!652 (t!42023 l!706) key1!31))))

(declare-fun b!1265644 () Bool)

(declare-fun tp_is_empty!32519 () Bool)

(declare-fun tp!96381 () Bool)

(assert (=> b!1265644 (= e!720825 (and tp_is_empty!32519 tp!96381))))

(declare-fun b!1265645 () Bool)

(declare-fun res!842768 () Bool)

(assert (=> b!1265645 (=> (not res!842768) (not e!720826))))

(assert (=> b!1265645 (= res!842768 (is-Cons!28491 l!706))))

(assert (= (and start!106502 res!842769) b!1265641))

(assert (= (and b!1265641 res!842767) b!1265645))

(assert (= (and b!1265645 res!842768) b!1265642))

(assert (= (and b!1265642 res!842770) b!1265643))

(assert (= (and start!106502 (is-Cons!28491 l!706)) b!1265644))

(declare-fun m!1165675 () Bool)

(assert (=> start!106502 m!1165675))

(declare-fun m!1165677 () Bool)

(assert (=> b!1265641 m!1165677))

(declare-fun m!1165679 () Bool)

(assert (=> b!1265642 m!1165679))

(declare-fun m!1165681 () Bool)

(assert (=> b!1265643 m!1165681))

(push 1)

(assert (not b!1265641))

(assert (not b!1265642))

(assert (not b!1265643))

(assert tp_is_empty!32519)

(assert (not b!1265644))

(assert (not start!106502))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!138889 () Bool)

(declare-fun res!842791 () Bool)

(declare-fun e!720847 () Bool)

(assert (=> d!138889 (=> res!842791 e!720847)))

(assert (=> d!138889 (= res!842791 (and (is-Cons!28491 (t!42023 l!706)) (= (_1!10672 (h!29700 (t!42023 l!706))) key1!31)))))

(assert (=> d!138889 (= (containsKey!652 (t!42023 l!706) key1!31) e!720847)))

(declare-fun b!1265665 () Bool)

(declare-fun e!720849 () Bool)

(assert (=> b!1265665 (= e!720847 e!720849)))

(declare-fun res!842793 () Bool)

(assert (=> b!1265665 (=> (not res!842793) (not e!720849))))

(assert (=> b!1265665 (= res!842793 (and (or (not (is-Cons!28491 (t!42023 l!706))) (bvsle (_1!10672 (h!29700 (t!42023 l!706))) key1!31)) (is-Cons!28491 (t!42023 l!706)) (bvslt (_1!10672 (h!29700 (t!42023 l!706))) key1!31)))))

(declare-fun b!1265667 () Bool)

(assert (=> b!1265667 (= e!720849 (containsKey!652 (t!42023 (t!42023 l!706)) key1!31))))

(assert (= (and d!138889 (not res!842791)) b!1265665))

(assert (= (and b!1265665 res!842793) b!1265667))

(declare-fun m!1165685 () Bool)

(assert (=> b!1265667 m!1165685))

(assert (=> b!1265643 d!138889))

(declare-fun d!138896 () Bool)

(declare-fun res!842807 () Bool)

(declare-fun e!720866 () Bool)

(assert (=> d!138896 (=> res!842807 e!720866)))

(assert (=> d!138896 (= res!842807 (or (is-Nil!28492 l!706) (is-Nil!28492 (t!42023 l!706))))))

(assert (=> d!138896 (= (isStrictlySorted!791 l!706) e!720866)))

(declare-fun b!1265687 () Bool)

(declare-fun e!720867 () Bool)

(assert (=> b!1265687 (= e!720866 e!720867)))

(declare-fun res!842808 () Bool)

(assert (=> b!1265687 (=> (not res!842808) (not e!720867))))

(assert (=> b!1265687 (= res!842808 (bvslt (_1!10672 (h!29700 l!706)) (_1!10672 (h!29700 (t!42023 l!706)))))))

(declare-fun b!1265688 () Bool)

(assert (=> b!1265688 (= e!720867 (isStrictlySorted!791 (t!42023 l!706)))))

(assert (= (and d!138896 (not res!842807)) b!1265687))

(assert (= (and b!1265687 res!842808) b!1265688))

(assert (=> b!1265688 m!1165679))

(assert (=> start!106502 d!138896))

(declare-fun d!138903 () Bool)

(declare-fun res!842811 () Bool)

(declare-fun e!720870 () Bool)

(assert (=> d!138903 (=> res!842811 e!720870)))

(assert (=> d!138903 (= res!842811 (and (is-Cons!28491 l!706) (= (_1!10672 (h!29700 l!706)) key1!31)))))

(assert (=> d!138903 (= (containsKey!652 l!706 key1!31) e!720870)))

(declare-fun b!1265691 () Bool)

(declare-fun e!720871 () Bool)

(assert (=> b!1265691 (= e!720870 e!720871)))

(declare-fun res!842812 () Bool)

(assert (=> b!1265691 (=> (not res!842812) (not e!720871))))

(assert (=> b!1265691 (= res!842812 (and (or (not (is-Cons!28491 l!706)) (bvsle (_1!10672 (h!29700 l!706)) key1!31)) (is-Cons!28491 l!706) (bvslt (_1!10672 (h!29700 l!706)) key1!31)))))

(declare-fun b!1265692 () Bool)

(assert (=> b!1265692 (= e!720871 (containsKey!652 (t!42023 l!706) key1!31))))

(assert (= (and d!138903 (not res!842811)) b!1265691))

(assert (= (and b!1265691 res!842812) b!1265692))

(assert (=> b!1265692 m!1165681))

(assert (=> b!1265641 d!138903))

(declare-fun d!138907 () Bool)

(declare-fun res!842817 () Bool)

(declare-fun e!720876 () Bool)

(assert (=> d!138907 (=> res!842817 e!720876)))

(assert (=> d!138907 (= res!842817 (or (is-Nil!28492 (t!42023 l!706)) (is-Nil!28492 (t!42023 (t!42023 l!706)))))))

(assert (=> d!138907 (= (isStrictlySorted!791 (t!42023 l!706)) e!720876)))

(declare-fun b!1265697 () Bool)

(declare-fun e!720877 () Bool)

(assert (=> b!1265697 (= e!720876 e!720877)))

(declare-fun res!842818 () Bool)

(assert (=> b!1265697 (=> (not res!842818) (not e!720877))))

(assert (=> b!1265697 (= res!842818 (bvslt (_1!10672 (h!29700 (t!42023 l!706))) (_1!10672 (h!29700 (t!42023 (t!42023 l!706))))))))

(declare-fun b!1265698 () Bool)

(assert (=> b!1265698 (= e!720877 (isStrictlySorted!791 (t!42023 (t!42023 l!706))))))

(assert (= (and d!138907 (not res!842817)) b!1265697))

(assert (= (and b!1265697 res!842818) b!1265698))

(declare-fun m!1165693 () Bool)

(assert (=> b!1265698 m!1165693))

(assert (=> b!1265642 d!138907))

(declare-fun b!1265708 () Bool)

(declare-fun e!720883 () Bool)

(declare-fun tp!96390 () Bool)

(assert (=> b!1265708 (= e!720883 (and tp_is_empty!32519 tp!96390))))

(assert (=> b!1265644 (= tp!96381 e!720883)))

(assert (= (and b!1265644 (is-Cons!28491 (t!42023 l!706))) b!1265708))

(push 1)

(assert (not b!1265692))

(assert (not b!1265688))

(assert tp_is_empty!32519)

(assert (not b!1265708))

(assert (not b!1265698))

(assert (not b!1265667))

(check-sat)

(pop 1)

(push 1)

(check-sat)

