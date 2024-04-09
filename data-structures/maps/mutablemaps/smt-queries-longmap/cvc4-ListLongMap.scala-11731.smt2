; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!137582 () Bool)

(assert start!137582)

(declare-fun res!1080773 () Bool)

(declare-fun e!882725 () Bool)

(assert (=> start!137582 (=> (not res!1080773) (not e!882725))))

(declare-datatypes ((B!2730 0))(
  ( (B!2731 (val!19727 Int)) )
))
(declare-datatypes ((tuple2!25786 0))(
  ( (tuple2!25787 (_1!12903 (_ BitVec 64)) (_2!12903 B!2730)) )
))
(declare-datatypes ((List!37008 0))(
  ( (Nil!37005) (Cons!37004 (h!38548 tuple2!25786) (t!51929 List!37008)) )
))
(declare-fun l!1356 () List!37008)

(declare-fun isStrictlySorted!1100 (List!37008) Bool)

(assert (=> start!137582 (= res!1080773 (isStrictlySorted!1100 l!1356))))

(assert (=> start!137582 e!882725))

(declare-fun e!882726 () Bool)

(assert (=> start!137582 e!882726))

(assert (=> start!137582 true))

(declare-fun b!1581832 () Bool)

(declare-fun res!1080774 () Bool)

(assert (=> b!1581832 (=> (not res!1080774) (not e!882725))))

(assert (=> b!1581832 (= res!1080774 (not (is-Nil!37005 l!1356)))))

(declare-fun b!1581833 () Bool)

(declare-fun res!1080775 () Bool)

(assert (=> b!1581833 (=> (not res!1080775) (not e!882725))))

(declare-fun key!387 () (_ BitVec 64))

(declare-fun containsKey!946 (List!37008 (_ BitVec 64)) Bool)

(assert (=> b!1581833 (= res!1080775 (not (containsKey!946 l!1356 key!387)))))

(declare-fun b!1581834 () Bool)

(declare-fun e!882724 () Bool)

(assert (=> b!1581834 (= e!882724 (containsKey!946 (t!51929 l!1356) key!387))))

(declare-fun b!1581835 () Bool)

(declare-fun tp_is_empty!39275 () Bool)

(declare-fun tp!114649 () Bool)

(assert (=> b!1581835 (= e!882726 (and tp_is_empty!39275 tp!114649))))

(declare-fun b!1581836 () Bool)

(assert (=> b!1581836 (= e!882725 e!882724)))

(declare-fun res!1080776 () Bool)

(assert (=> b!1581836 (=> res!1080776 e!882724)))

(assert (=> b!1581836 (= res!1080776 (not (isStrictlySorted!1100 (t!51929 l!1356))))))

(assert (= (and start!137582 res!1080773) b!1581833))

(assert (= (and b!1581833 res!1080775) b!1581832))

(assert (= (and b!1581832 res!1080774) b!1581836))

(assert (= (and b!1581836 (not res!1080776)) b!1581834))

(assert (= (and start!137582 (is-Cons!37004 l!1356)) b!1581835))

(declare-fun m!1452603 () Bool)

(assert (=> start!137582 m!1452603))

(declare-fun m!1452605 () Bool)

(assert (=> b!1581833 m!1452605))

(declare-fun m!1452607 () Bool)

(assert (=> b!1581834 m!1452607))

(declare-fun m!1452609 () Bool)

(assert (=> b!1581836 m!1452609))

(push 1)

(assert (not b!1581836))

(assert (not start!137582))

(assert (not b!1581835))

(assert (not b!1581834))

(assert (not b!1581833))

(assert tp_is_empty!39275)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!166811 () Bool)

(declare-fun res!1080803 () Bool)

(declare-fun e!882755 () Bool)

(assert (=> d!166811 (=> res!1080803 e!882755)))

(assert (=> d!166811 (= res!1080803 (and (is-Cons!37004 l!1356) (= (_1!12903 (h!38548 l!1356)) key!387)))))

(assert (=> d!166811 (= (containsKey!946 l!1356 key!387) e!882755)))

(declare-fun b!1581867 () Bool)

(declare-fun e!882756 () Bool)

(assert (=> b!1581867 (= e!882755 e!882756)))

(declare-fun res!1080804 () Bool)

(assert (=> b!1581867 (=> (not res!1080804) (not e!882756))))

(assert (=> b!1581867 (= res!1080804 (and (or (not (is-Cons!37004 l!1356)) (bvsle (_1!12903 (h!38548 l!1356)) key!387)) (is-Cons!37004 l!1356) (bvslt (_1!12903 (h!38548 l!1356)) key!387)))))

(declare-fun b!1581868 () Bool)

(assert (=> b!1581868 (= e!882756 (containsKey!946 (t!51929 l!1356) key!387))))

(assert (= (and d!166811 (not res!1080803)) b!1581867))

(assert (= (and b!1581867 res!1080804) b!1581868))

(assert (=> b!1581868 m!1452607))

(assert (=> b!1581833 d!166811))

(declare-fun d!166821 () Bool)

(declare-fun res!1080815 () Bool)

(declare-fun e!882768 () Bool)

(assert (=> d!166821 (=> res!1080815 e!882768)))

(assert (=> d!166821 (= res!1080815 (or (is-Nil!37005 l!1356) (is-Nil!37005 (t!51929 l!1356))))))

(assert (=> d!166821 (= (isStrictlySorted!1100 l!1356) e!882768)))

(declare-fun b!1581880 () Bool)

(declare-fun e!882769 () Bool)

(assert (=> b!1581880 (= e!882768 e!882769)))

(declare-fun res!1080816 () Bool)

(assert (=> b!1581880 (=> (not res!1080816) (not e!882769))))

(assert (=> b!1581880 (= res!1080816 (bvslt (_1!12903 (h!38548 l!1356)) (_1!12903 (h!38548 (t!51929 l!1356)))))))

(declare-fun b!1581881 () Bool)

(assert (=> b!1581881 (= e!882769 (isStrictlySorted!1100 (t!51929 l!1356)))))

(assert (= (and d!166821 (not res!1080815)) b!1581880))

(assert (= (and b!1581880 res!1080816) b!1581881))

(assert (=> b!1581881 m!1452609))

(assert (=> start!137582 d!166821))

(declare-fun d!166825 () Bool)

(declare-fun res!1080819 () Bool)

(declare-fun e!882772 () Bool)

(assert (=> d!166825 (=> res!1080819 e!882772)))

(assert (=> d!166825 (= res!1080819 (or (is-Nil!37005 (t!51929 l!1356)) (is-Nil!37005 (t!51929 (t!51929 l!1356)))))))

(assert (=> d!166825 (= (isStrictlySorted!1100 (t!51929 l!1356)) e!882772)))

(declare-fun b!1581884 () Bool)

(declare-fun e!882773 () Bool)

(assert (=> b!1581884 (= e!882772 e!882773)))

(declare-fun res!1080820 () Bool)

(assert (=> b!1581884 (=> (not res!1080820) (not e!882773))))

(assert (=> b!1581884 (= res!1080820 (bvslt (_1!12903 (h!38548 (t!51929 l!1356))) (_1!12903 (h!38548 (t!51929 (t!51929 l!1356))))))))

(declare-fun b!1581885 () Bool)

(assert (=> b!1581885 (= e!882773 (isStrictlySorted!1100 (t!51929 (t!51929 l!1356))))))

(assert (= (and d!166825 (not res!1080819)) b!1581884))

(assert (= (and b!1581884 res!1080820) b!1581885))

(declare-fun m!1452617 () Bool)

(assert (=> b!1581885 m!1452617))

(assert (=> b!1581836 d!166825))

(declare-fun d!166829 () Bool)

(declare-fun res!1080823 () Bool)

(declare-fun e!882776 () Bool)

(assert (=> d!166829 (=> res!1080823 e!882776)))

(assert (=> d!166829 (= res!1080823 (and (is-Cons!37004 (t!51929 l!1356)) (= (_1!12903 (h!38548 (t!51929 l!1356))) key!387)))))

(assert (=> d!166829 (= (containsKey!946 (t!51929 l!1356) key!387) e!882776)))

(declare-fun b!1581888 () Bool)

(declare-fun e!882777 () Bool)

(assert (=> b!1581888 (= e!882776 e!882777)))

(declare-fun res!1080824 () Bool)

(assert (=> b!1581888 (=> (not res!1080824) (not e!882777))))

(assert (=> b!1581888 (= res!1080824 (and (or (not (is-Cons!37004 (t!51929 l!1356))) (bvsle (_1!12903 (h!38548 (t!51929 l!1356))) key!387)) (is-Cons!37004 (t!51929 l!1356)) (bvslt (_1!12903 (h!38548 (t!51929 l!1356))) key!387)))))

(declare-fun b!1581889 () Bool)

(assert (=> b!1581889 (= e!882777 (containsKey!946 (t!51929 (t!51929 l!1356)) key!387))))

(assert (= (and d!166829 (not res!1080823)) b!1581888))

(assert (= (and b!1581888 res!1080824) b!1581889))

(declare-fun m!1452621 () Bool)

(assert (=> b!1581889 m!1452621))

(assert (=> b!1581834 d!166829))

(declare-fun b!1581899 () Bool)

(declare-fun e!882783 () Bool)

(declare-fun tp!114658 () Bool)

(assert (=> b!1581899 (= e!882783 (and tp_is_empty!39275 tp!114658))))

(assert (=> b!1581835 (= tp!114649 e!882783)))

(assert (= (and b!1581835 (is-Cons!37004 (t!51929 l!1356))) b!1581899))

(push 1)

(assert (not b!1581881))

(assert (not b!1581885))

(assert (not b!1581889))

(assert (not b!1581868))

(assert (not b!1581899))

(assert tp_is_empty!39275)

(check-sat)

(pop 1)

(push 1)

(check-sat)

