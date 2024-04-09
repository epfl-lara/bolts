; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!106498 () Bool)

(assert start!106498)

(declare-fun b!1265611 () Bool)

(declare-fun res!842743 () Bool)

(declare-fun e!720813 () Bool)

(assert (=> b!1265611 (=> (not res!842743) (not e!720813))))

(declare-datatypes ((B!1982 0))(
  ( (B!1983 (val!16326 Int)) )
))
(declare-datatypes ((tuple2!21320 0))(
  ( (tuple2!21321 (_1!10670 (_ BitVec 64)) (_2!10670 B!1982)) )
))
(declare-datatypes ((List!28493 0))(
  ( (Nil!28490) (Cons!28489 (h!29698 tuple2!21320) (t!42021 List!28493)) )
))
(declare-fun l!706 () List!28493)

(declare-fun isStrictlySorted!789 (List!28493) Bool)

(assert (=> b!1265611 (= res!842743 (isStrictlySorted!789 (t!42021 l!706)))))

(declare-fun res!842746 () Bool)

(assert (=> start!106498 (=> (not res!842746) (not e!720813))))

(assert (=> start!106498 (= res!842746 (isStrictlySorted!789 l!706))))

(assert (=> start!106498 e!720813))

(declare-fun e!720814 () Bool)

(assert (=> start!106498 e!720814))

(assert (=> start!106498 true))

(declare-fun b!1265612 () Bool)

(declare-fun res!842745 () Bool)

(assert (=> b!1265612 (=> (not res!842745) (not e!720813))))

(declare-fun key1!31 () (_ BitVec 64))

(declare-fun containsKey!650 (List!28493 (_ BitVec 64)) Bool)

(assert (=> b!1265612 (= res!842745 (not (containsKey!650 l!706 key1!31)))))

(declare-fun b!1265613 () Bool)

(assert (=> b!1265613 (= e!720813 (containsKey!650 (t!42021 l!706) key1!31))))

(declare-fun b!1265614 () Bool)

(declare-fun tp_is_empty!32515 () Bool)

(declare-fun tp!96375 () Bool)

(assert (=> b!1265614 (= e!720814 (and tp_is_empty!32515 tp!96375))))

(declare-fun b!1265615 () Bool)

(declare-fun res!842744 () Bool)

(assert (=> b!1265615 (=> (not res!842744) (not e!720813))))

(assert (=> b!1265615 (= res!842744 (is-Cons!28489 l!706))))

(assert (= (and start!106498 res!842746) b!1265612))

(assert (= (and b!1265612 res!842745) b!1265615))

(assert (= (and b!1265615 res!842744) b!1265611))

(assert (= (and b!1265611 res!842743) b!1265613))

(assert (= (and start!106498 (is-Cons!28489 l!706)) b!1265614))

(declare-fun m!1165659 () Bool)

(assert (=> b!1265611 m!1165659))

(declare-fun m!1165661 () Bool)

(assert (=> start!106498 m!1165661))

(declare-fun m!1165663 () Bool)

(assert (=> b!1265612 m!1165663))

(declare-fun m!1165665 () Bool)

(assert (=> b!1265613 m!1165665))

(push 1)

(assert (not start!106498))

(assert (not b!1265613))

(assert tp_is_empty!32515)

(assert (not b!1265611))

(assert (not b!1265614))

(assert (not b!1265612))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!138885 () Bool)

(declare-fun res!842775 () Bool)

(declare-fun e!720831 () Bool)

(assert (=> d!138885 (=> res!842775 e!720831)))

(assert (=> d!138885 (= res!842775 (or (is-Nil!28490 l!706) (is-Nil!28490 (t!42021 l!706))))))

(assert (=> d!138885 (= (isStrictlySorted!789 l!706) e!720831)))

(declare-fun b!1265650 () Bool)

(declare-fun e!720832 () Bool)

(assert (=> b!1265650 (= e!720831 e!720832)))

(declare-fun res!842776 () Bool)

(assert (=> b!1265650 (=> (not res!842776) (not e!720832))))

(assert (=> b!1265650 (= res!842776 (bvslt (_1!10670 (h!29698 l!706)) (_1!10670 (h!29698 (t!42021 l!706)))))))

(declare-fun b!1265651 () Bool)

(assert (=> b!1265651 (= e!720832 (isStrictlySorted!789 (t!42021 l!706)))))

(assert (= (and d!138885 (not res!842775)) b!1265650))

(assert (= (and b!1265650 res!842776) b!1265651))

(assert (=> b!1265651 m!1165659))

(assert (=> start!106498 d!138885))

(declare-fun d!138891 () Bool)

(declare-fun res!842777 () Bool)

(declare-fun e!720833 () Bool)

(assert (=> d!138891 (=> res!842777 e!720833)))

(assert (=> d!138891 (= res!842777 (or (is-Nil!28490 (t!42021 l!706)) (is-Nil!28490 (t!42021 (t!42021 l!706)))))))

(assert (=> d!138891 (= (isStrictlySorted!789 (t!42021 l!706)) e!720833)))

(declare-fun b!1265652 () Bool)

(declare-fun e!720834 () Bool)

(assert (=> b!1265652 (= e!720833 e!720834)))

(declare-fun res!842778 () Bool)

(assert (=> b!1265652 (=> (not res!842778) (not e!720834))))

(assert (=> b!1265652 (= res!842778 (bvslt (_1!10670 (h!29698 (t!42021 l!706))) (_1!10670 (h!29698 (t!42021 (t!42021 l!706))))))))

(declare-fun b!1265653 () Bool)

(assert (=> b!1265653 (= e!720834 (isStrictlySorted!789 (t!42021 (t!42021 l!706))))))

(assert (= (and d!138891 (not res!842777)) b!1265652))

(assert (= (and b!1265652 res!842778) b!1265653))

(declare-fun m!1165683 () Bool)

(assert (=> b!1265653 m!1165683))

(assert (=> b!1265611 d!138891))

(declare-fun d!138893 () Bool)

(declare-fun res!842795 () Bool)

(declare-fun e!720851 () Bool)

(assert (=> d!138893 (=> res!842795 e!720851)))

(assert (=> d!138893 (= res!842795 (and (is-Cons!28489 l!706) (= (_1!10670 (h!29698 l!706)) key1!31)))))

(assert (=> d!138893 (= (containsKey!650 l!706 key1!31) e!720851)))

(declare-fun b!1265670 () Bool)

(declare-fun e!720852 () Bool)

(assert (=> b!1265670 (= e!720851 e!720852)))

(declare-fun res!842796 () Bool)

(assert (=> b!1265670 (=> (not res!842796) (not e!720852))))

(assert (=> b!1265670 (= res!842796 (and (or (not (is-Cons!28489 l!706)) (bvsle (_1!10670 (h!29698 l!706)) key1!31)) (is-Cons!28489 l!706) (bvslt (_1!10670 (h!29698 l!706)) key1!31)))))

(declare-fun b!1265671 () Bool)

(assert (=> b!1265671 (= e!720852 (containsKey!650 (t!42021 l!706) key1!31))))

(assert (= (and d!138893 (not res!842795)) b!1265670))

(assert (= (and b!1265670 res!842796) b!1265671))

(assert (=> b!1265671 m!1165665))

(assert (=> b!1265612 d!138893))

(declare-fun d!138899 () Bool)

(declare-fun res!842797 () Bool)

(declare-fun e!720853 () Bool)

(assert (=> d!138899 (=> res!842797 e!720853)))

(assert (=> d!138899 (= res!842797 (and (is-Cons!28489 (t!42021 l!706)) (= (_1!10670 (h!29698 (t!42021 l!706))) key1!31)))))

(assert (=> d!138899 (= (containsKey!650 (t!42021 l!706) key1!31) e!720853)))

(declare-fun b!1265672 () Bool)

(declare-fun e!720854 () Bool)

(assert (=> b!1265672 (= e!720853 e!720854)))

(declare-fun res!842798 () Bool)

(assert (=> b!1265672 (=> (not res!842798) (not e!720854))))

(assert (=> b!1265672 (= res!842798 (and (or (not (is-Cons!28489 (t!42021 l!706))) (bvsle (_1!10670 (h!29698 (t!42021 l!706))) key1!31)) (is-Cons!28489 (t!42021 l!706)) (bvslt (_1!10670 (h!29698 (t!42021 l!706))) key1!31)))))

(declare-fun b!1265673 () Bool)

(assert (=> b!1265673 (= e!720854 (containsKey!650 (t!42021 (t!42021 l!706)) key1!31))))

(assert (= (and d!138899 (not res!842797)) b!1265672))

(assert (= (and b!1265672 res!842798) b!1265673))

(declare-fun m!1165687 () Bool)

(assert (=> b!1265673 m!1165687))

(assert (=> b!1265613 d!138899))

(declare-fun b!1265678 () Bool)

(declare-fun e!720857 () Bool)

(declare-fun tp!96384 () Bool)

(assert (=> b!1265678 (= e!720857 (and tp_is_empty!32515 tp!96384))))

(assert (=> b!1265614 (= tp!96375 e!720857)))

(assert (= (and b!1265614 (is-Cons!28489 (t!42021 l!706))) b!1265678))

(push 1)

(assert (not b!1265653))

(assert (not b!1265673))

(assert (not b!1265651))

(assert tp_is_empty!32515)

(assert (not b!1265678))

(assert (not b!1265671))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

