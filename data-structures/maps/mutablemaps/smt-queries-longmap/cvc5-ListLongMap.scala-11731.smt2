; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!137578 () Bool)

(assert start!137578)

(declare-fun b!1581802 () Bool)

(declare-fun e!882707 () Bool)

(declare-fun tp_is_empty!39271 () Bool)

(declare-fun tp!114643 () Bool)

(assert (=> b!1581802 (= e!882707 (and tp_is_empty!39271 tp!114643))))

(declare-fun b!1581804 () Bool)

(declare-fun e!882708 () Bool)

(declare-fun e!882706 () Bool)

(assert (=> b!1581804 (= e!882708 e!882706)))

(declare-fun res!1080752 () Bool)

(assert (=> b!1581804 (=> res!1080752 e!882706)))

(declare-datatypes ((B!2726 0))(
  ( (B!2727 (val!19725 Int)) )
))
(declare-datatypes ((tuple2!25782 0))(
  ( (tuple2!25783 (_1!12901 (_ BitVec 64)) (_2!12901 B!2726)) )
))
(declare-datatypes ((List!37006 0))(
  ( (Nil!37003) (Cons!37002 (h!38546 tuple2!25782) (t!51927 List!37006)) )
))
(declare-fun l!1356 () List!37006)

(declare-fun isStrictlySorted!1098 (List!37006) Bool)

(assert (=> b!1581804 (= res!1080752 (not (isStrictlySorted!1098 (t!51927 l!1356))))))

(declare-fun b!1581805 () Bool)

(declare-fun res!1080749 () Bool)

(assert (=> b!1581805 (=> (not res!1080749) (not e!882708))))

(assert (=> b!1581805 (= res!1080749 (not (is-Nil!37003 l!1356)))))

(declare-fun b!1581806 () Bool)

(declare-fun key!387 () (_ BitVec 64))

(declare-fun containsKey!944 (List!37006 (_ BitVec 64)) Bool)

(assert (=> b!1581806 (= e!882706 (containsKey!944 (t!51927 l!1356) key!387))))

(declare-fun b!1581803 () Bool)

(declare-fun res!1080750 () Bool)

(assert (=> b!1581803 (=> (not res!1080750) (not e!882708))))

(assert (=> b!1581803 (= res!1080750 (not (containsKey!944 l!1356 key!387)))))

(declare-fun res!1080751 () Bool)

(assert (=> start!137578 (=> (not res!1080751) (not e!882708))))

(assert (=> start!137578 (= res!1080751 (isStrictlySorted!1098 l!1356))))

(assert (=> start!137578 e!882708))

(assert (=> start!137578 e!882707))

(assert (=> start!137578 true))

(assert (= (and start!137578 res!1080751) b!1581803))

(assert (= (and b!1581803 res!1080750) b!1581805))

(assert (= (and b!1581805 res!1080749) b!1581804))

(assert (= (and b!1581804 (not res!1080752)) b!1581806))

(assert (= (and start!137578 (is-Cons!37002 l!1356)) b!1581802))

(declare-fun m!1452587 () Bool)

(assert (=> b!1581804 m!1452587))

(declare-fun m!1452589 () Bool)

(assert (=> b!1581806 m!1452589))

(declare-fun m!1452591 () Bool)

(assert (=> b!1581803 m!1452591))

(declare-fun m!1452593 () Bool)

(assert (=> start!137578 m!1452593))

(push 1)

(assert (not b!1581803))

(assert (not b!1581802))

(assert tp_is_empty!39271)

(assert (not start!137578))

(assert (not b!1581806))

(assert (not b!1581804))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!166809 () Bool)

(declare-fun res!1080797 () Bool)

(declare-fun e!882747 () Bool)

(assert (=> d!166809 (=> res!1080797 e!882747)))

(assert (=> d!166809 (= res!1080797 (or (is-Nil!37003 (t!51927 l!1356)) (is-Nil!37003 (t!51927 (t!51927 l!1356)))))))

(assert (=> d!166809 (= (isStrictlySorted!1098 (t!51927 l!1356)) e!882747)))

(declare-fun b!1581857 () Bool)

(declare-fun e!882748 () Bool)

(assert (=> b!1581857 (= e!882747 e!882748)))

(declare-fun res!1080798 () Bool)

(assert (=> b!1581857 (=> (not res!1080798) (not e!882748))))

(assert (=> b!1581857 (= res!1080798 (bvslt (_1!12901 (h!38546 (t!51927 l!1356))) (_1!12901 (h!38546 (t!51927 (t!51927 l!1356))))))))

(declare-fun b!1581858 () Bool)

(assert (=> b!1581858 (= e!882748 (isStrictlySorted!1098 (t!51927 (t!51927 l!1356))))))

(assert (= (and d!166809 (not res!1080797)) b!1581857))

(assert (= (and b!1581857 res!1080798) b!1581858))

(declare-fun m!1452615 () Bool)

(assert (=> b!1581858 m!1452615))

(assert (=> b!1581804 d!166809))

(declare-fun d!166819 () Bool)

(declare-fun res!1080813 () Bool)

(declare-fun e!882766 () Bool)

(assert (=> d!166819 (=> res!1080813 e!882766)))

(assert (=> d!166819 (= res!1080813 (and (is-Cons!37002 l!1356) (= (_1!12901 (h!38546 l!1356)) key!387)))))

(assert (=> d!166819 (= (containsKey!944 l!1356 key!387) e!882766)))

(declare-fun b!1581878 () Bool)

(declare-fun e!882767 () Bool)

(assert (=> b!1581878 (= e!882766 e!882767)))

(declare-fun res!1080814 () Bool)

(assert (=> b!1581878 (=> (not res!1080814) (not e!882767))))

(assert (=> b!1581878 (= res!1080814 (and (or (not (is-Cons!37002 l!1356)) (bvsle (_1!12901 (h!38546 l!1356)) key!387)) (is-Cons!37002 l!1356) (bvslt (_1!12901 (h!38546 l!1356)) key!387)))))

(declare-fun b!1581879 () Bool)

(assert (=> b!1581879 (= e!882767 (containsKey!944 (t!51927 l!1356) key!387))))

(assert (= (and d!166819 (not res!1080813)) b!1581878))

(assert (= (and b!1581878 res!1080814) b!1581879))

(assert (=> b!1581879 m!1452589))

(assert (=> b!1581803 d!166819))

(declare-fun d!166823 () Bool)

(declare-fun res!1080817 () Bool)

(declare-fun e!882770 () Bool)

(assert (=> d!166823 (=> res!1080817 e!882770)))

(assert (=> d!166823 (= res!1080817 (or (is-Nil!37003 l!1356) (is-Nil!37003 (t!51927 l!1356))))))

(assert (=> d!166823 (= (isStrictlySorted!1098 l!1356) e!882770)))

(declare-fun b!1581882 () Bool)

(declare-fun e!882771 () Bool)

(assert (=> b!1581882 (= e!882770 e!882771)))

(declare-fun res!1080818 () Bool)

(assert (=> b!1581882 (=> (not res!1080818) (not e!882771))))

(assert (=> b!1581882 (= res!1080818 (bvslt (_1!12901 (h!38546 l!1356)) (_1!12901 (h!38546 (t!51927 l!1356)))))))

(declare-fun b!1581883 () Bool)

(assert (=> b!1581883 (= e!882771 (isStrictlySorted!1098 (t!51927 l!1356)))))

(assert (= (and d!166823 (not res!1080817)) b!1581882))

(assert (= (and b!1581882 res!1080818) b!1581883))

(assert (=> b!1581883 m!1452587))

(assert (=> start!137578 d!166823))

(declare-fun d!166827 () Bool)

(declare-fun res!1080821 () Bool)

(declare-fun e!882774 () Bool)

(assert (=> d!166827 (=> res!1080821 e!882774)))

(assert (=> d!166827 (= res!1080821 (and (is-Cons!37002 (t!51927 l!1356)) (= (_1!12901 (h!38546 (t!51927 l!1356))) key!387)))))

(assert (=> d!166827 (= (containsKey!944 (t!51927 l!1356) key!387) e!882774)))

(declare-fun b!1581886 () Bool)

(declare-fun e!882775 () Bool)

(assert (=> b!1581886 (= e!882774 e!882775)))

(declare-fun res!1080822 () Bool)

(assert (=> b!1581886 (=> (not res!1080822) (not e!882775))))

(assert (=> b!1581886 (= res!1080822 (and (or (not (is-Cons!37002 (t!51927 l!1356))) (bvsle (_1!12901 (h!38546 (t!51927 l!1356))) key!387)) (is-Cons!37002 (t!51927 l!1356)) (bvslt (_1!12901 (h!38546 (t!51927 l!1356))) key!387)))))

(declare-fun b!1581887 () Bool)

(assert (=> b!1581887 (= e!882775 (containsKey!944 (t!51927 (t!51927 l!1356)) key!387))))

(assert (= (and d!166827 (not res!1080821)) b!1581886))

(assert (= (and b!1581886 res!1080822) b!1581887))

(declare-fun m!1452619 () Bool)

(assert (=> b!1581887 m!1452619))

(assert (=> b!1581806 d!166827))

(declare-fun b!1581898 () Bool)

(declare-fun e!882782 () Bool)

(declare-fun tp!114657 () Bool)

(assert (=> b!1581898 (= e!882782 (and tp_is_empty!39271 tp!114657))))

(assert (=> b!1581802 (= tp!114643 e!882782)))

(assert (= (and b!1581802 (is-Cons!37002 (t!51927 l!1356))) b!1581898))

(push 1)

(assert (not b!1581883))

(assert (not b!1581898))

(assert (not b!1581887))

(assert (not b!1581858))

(assert tp_is_empty!39271)

(assert (not b!1581879))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

