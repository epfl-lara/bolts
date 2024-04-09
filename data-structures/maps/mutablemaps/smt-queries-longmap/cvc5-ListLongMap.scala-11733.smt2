; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!137620 () Bool)

(assert start!137620)

(declare-fun e!882860 () Bool)

(declare-datatypes ((B!2738 0))(
  ( (B!2739 (val!19731 Int)) )
))
(declare-datatypes ((tuple2!25794 0))(
  ( (tuple2!25795 (_1!12907 (_ BitVec 64)) (_2!12907 B!2738)) )
))
(declare-datatypes ((List!37012 0))(
  ( (Nil!37009) (Cons!37008 (h!38552 tuple2!25794) (t!51933 List!37012)) )
))
(declare-fun l!1356 () List!37012)

(declare-fun value!184 () B!2738)

(declare-fun key!387 () (_ BitVec 64))

(declare-fun b!1582006 () Bool)

(declare-fun contains!10531 (List!37012 tuple2!25794) Bool)

(assert (=> b!1582006 (= e!882860 (contains!10531 l!1356 (tuple2!25795 key!387 value!184)))))

(declare-fun res!1080885 () Bool)

(assert (=> start!137620 (=> (not res!1080885) (not e!882860))))

(declare-fun isStrictlySorted!1104 (List!37012) Bool)

(assert (=> start!137620 (= res!1080885 (isStrictlySorted!1104 l!1356))))

(assert (=> start!137620 e!882860))

(declare-fun e!882861 () Bool)

(assert (=> start!137620 e!882861))

(assert (=> start!137620 true))

(declare-fun tp_is_empty!39283 () Bool)

(assert (=> start!137620 tp_is_empty!39283))

(declare-fun b!1582004 () Bool)

(declare-fun res!1080887 () Bool)

(assert (=> b!1582004 (=> (not res!1080887) (not e!882860))))

(declare-fun containsKey!950 (List!37012 (_ BitVec 64)) Bool)

(assert (=> b!1582004 (= res!1080887 (not (containsKey!950 l!1356 key!387)))))

(declare-fun b!1582005 () Bool)

(declare-fun res!1080886 () Bool)

(assert (=> b!1582005 (=> (not res!1080886) (not e!882860))))

(assert (=> b!1582005 (= res!1080886 (is-Nil!37009 l!1356))))

(declare-fun b!1582007 () Bool)

(declare-fun tp!114679 () Bool)

(assert (=> b!1582007 (= e!882861 (and tp_is_empty!39283 tp!114679))))

(assert (= (and start!137620 res!1080885) b!1582004))

(assert (= (and b!1582004 res!1080887) b!1582005))

(assert (= (and b!1582005 res!1080886) b!1582006))

(assert (= (and start!137620 (is-Cons!37008 l!1356)) b!1582007))

(declare-fun m!1452659 () Bool)

(assert (=> b!1582006 m!1452659))

(declare-fun m!1452661 () Bool)

(assert (=> start!137620 m!1452661))

(declare-fun m!1452663 () Bool)

(assert (=> b!1582004 m!1452663))

(push 1)

(assert (not start!137620))

(assert tp_is_empty!39283)

(assert (not b!1582007))

(assert (not b!1582006))

(assert (not b!1582004))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!166855 () Bool)

(declare-fun res!1080920 () Bool)

(declare-fun e!882888 () Bool)

(assert (=> d!166855 (=> res!1080920 e!882888)))

(assert (=> d!166855 (= res!1080920 (or (is-Nil!37009 l!1356) (is-Nil!37009 (t!51933 l!1356))))))

(assert (=> d!166855 (= (isStrictlySorted!1104 l!1356) e!882888)))

(declare-fun b!1582046 () Bool)

(declare-fun e!882889 () Bool)

(assert (=> b!1582046 (= e!882888 e!882889)))

(declare-fun res!1080921 () Bool)

(assert (=> b!1582046 (=> (not res!1080921) (not e!882889))))

(assert (=> b!1582046 (= res!1080921 (bvslt (_1!12907 (h!38552 l!1356)) (_1!12907 (h!38552 (t!51933 l!1356)))))))

(declare-fun b!1582047 () Bool)

(assert (=> b!1582047 (= e!882889 (isStrictlySorted!1104 (t!51933 l!1356)))))

(assert (= (and d!166855 (not res!1080920)) b!1582046))

(assert (= (and b!1582046 res!1080921) b!1582047))

(declare-fun m!1452679 () Bool)

(assert (=> b!1582047 m!1452679))

(assert (=> start!137620 d!166855))

(declare-fun lt!676975 () Bool)

(declare-fun d!166861 () Bool)

(declare-fun content!860 (List!37012) (Set tuple2!25794))

(assert (=> d!166861 (= lt!676975 (set.member (tuple2!25795 key!387 value!184) (content!860 l!1356)))))

(declare-fun e!882911 () Bool)

(assert (=> d!166861 (= lt!676975 e!882911)))

(declare-fun res!1080943 () Bool)

(assert (=> d!166861 (=> (not res!1080943) (not e!882911))))

(assert (=> d!166861 (= res!1080943 (is-Cons!37008 l!1356))))

(assert (=> d!166861 (= (contains!10531 l!1356 (tuple2!25795 key!387 value!184)) lt!676975)))

(declare-fun b!1582068 () Bool)

(declare-fun e!882910 () Bool)

(assert (=> b!1582068 (= e!882911 e!882910)))

(declare-fun res!1080942 () Bool)

(assert (=> b!1582068 (=> res!1080942 e!882910)))

(assert (=> b!1582068 (= res!1080942 (= (h!38552 l!1356) (tuple2!25795 key!387 value!184)))))

(declare-fun b!1582069 () Bool)

(assert (=> b!1582069 (= e!882910 (contains!10531 (t!51933 l!1356) (tuple2!25795 key!387 value!184)))))

(assert (= (and d!166861 res!1080943) b!1582068))

(assert (= (and b!1582068 (not res!1080942)) b!1582069))

(declare-fun m!1452695 () Bool)

(assert (=> d!166861 m!1452695))

(declare-fun m!1452697 () Bool)

(assert (=> d!166861 m!1452697))

(declare-fun m!1452699 () Bool)

(assert (=> b!1582069 m!1452699))

(assert (=> b!1582006 d!166861))

(declare-fun d!166867 () Bool)

(declare-fun res!1080957 () Bool)

(declare-fun e!882928 () Bool)

(assert (=> d!166867 (=> res!1080957 e!882928)))

(assert (=> d!166867 (= res!1080957 (and (is-Cons!37008 l!1356) (= (_1!12907 (h!38552 l!1356)) key!387)))))

(assert (=> d!166867 (= (containsKey!950 l!1356 key!387) e!882928)))

(declare-fun b!1582087 () Bool)

(declare-fun e!882930 () Bool)

(assert (=> b!1582087 (= e!882928 e!882930)))

(declare-fun res!1080959 () Bool)

(assert (=> b!1582087 (=> (not res!1080959) (not e!882930))))

(assert (=> b!1582087 (= res!1080959 (and (or (not (is-Cons!37008 l!1356)) (bvsle (_1!12907 (h!38552 l!1356)) key!387)) (is-Cons!37008 l!1356) (bvslt (_1!12907 (h!38552 l!1356)) key!387)))))

(declare-fun b!1582089 () Bool)

(assert (=> b!1582089 (= e!882930 (containsKey!950 (t!51933 l!1356) key!387))))

(assert (= (and d!166867 (not res!1080957)) b!1582087))

(assert (= (and b!1582087 res!1080959) b!1582089))

(declare-fun m!1452705 () Bool)

(assert (=> b!1582089 m!1452705))

(assert (=> b!1582004 d!166867))

(declare-fun b!1582099 () Bool)

(declare-fun e!882935 () Bool)

(declare-fun tp!114693 () Bool)

(assert (=> b!1582099 (= e!882935 (and tp_is_empty!39283 tp!114693))))

(assert (=> b!1582007 (= tp!114679 e!882935)))

(assert (= (and b!1582007 (is-Cons!37008 (t!51933 l!1356))) b!1582099))

(push 1)

