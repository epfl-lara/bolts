; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!137668 () Bool)

(assert start!137668)

(declare-fun res!1081030 () Bool)

(declare-fun e!883017 () Bool)

(assert (=> start!137668 (=> (not res!1081030) (not e!883017))))

(declare-datatypes ((B!2750 0))(
  ( (B!2751 (val!19737 Int)) )
))
(declare-datatypes ((tuple2!25806 0))(
  ( (tuple2!25807 (_1!12913 (_ BitVec 64)) (_2!12913 B!2750)) )
))
(declare-datatypes ((List!37018 0))(
  ( (Nil!37015) (Cons!37014 (h!38558 tuple2!25806) (t!51939 List!37018)) )
))
(declare-fun l!1356 () List!37018)

(declare-fun isStrictlySorted!1110 (List!37018) Bool)

(assert (=> start!137668 (= res!1081030 (isStrictlySorted!1110 l!1356))))

(assert (=> start!137668 e!883017))

(declare-fun e!883016 () Bool)

(assert (=> start!137668 e!883016))

(assert (=> start!137668 true))

(declare-fun tp_is_empty!39295 () Bool)

(assert (=> start!137668 tp_is_empty!39295))

(declare-fun b!1582221 () Bool)

(declare-fun res!1081031 () Bool)

(assert (=> b!1582221 (=> (not res!1081031) (not e!883017))))

(assert (=> b!1582221 (= res!1081031 (not (is-Nil!37015 l!1356)))))

(declare-fun b!1582223 () Bool)

(declare-fun tp!114715 () Bool)

(assert (=> b!1582223 (= e!883016 (and tp_is_empty!39295 tp!114715))))

(declare-fun value!184 () B!2750)

(declare-fun key!387 () (_ BitVec 64))

(declare-fun b!1582222 () Bool)

(declare-fun contains!10534 (List!37018 tuple2!25806) Bool)

(assert (=> b!1582222 (= e!883017 (contains!10534 l!1356 (tuple2!25807 key!387 value!184)))))

(declare-datatypes ((Unit!52196 0))(
  ( (Unit!52197) )
))
(declare-fun lt!676990 () Unit!52196)

(declare-fun lemmaNotContainsKeyThenNotContainsTuple!7 (List!37018 (_ BitVec 64) B!2750) Unit!52196)

(assert (=> b!1582222 (= lt!676990 (lemmaNotContainsKeyThenNotContainsTuple!7 (t!51939 l!1356) key!387 value!184))))

(declare-fun b!1582220 () Bool)

(declare-fun res!1081029 () Bool)

(assert (=> b!1582220 (=> (not res!1081029) (not e!883017))))

(declare-fun containsKey!956 (List!37018 (_ BitVec 64)) Bool)

(assert (=> b!1582220 (= res!1081029 (not (containsKey!956 l!1356 key!387)))))

(assert (= (and start!137668 res!1081030) b!1582220))

(assert (= (and b!1582220 res!1081029) b!1582221))

(assert (= (and b!1582221 res!1081031) b!1582222))

(assert (= (and start!137668 (is-Cons!37014 l!1356)) b!1582223))

(declare-fun m!1452749 () Bool)

(assert (=> start!137668 m!1452749))

(declare-fun m!1452751 () Bool)

(assert (=> b!1582222 m!1452751))

(declare-fun m!1452753 () Bool)

(assert (=> b!1582222 m!1452753))

(declare-fun m!1452755 () Bool)

(assert (=> b!1582220 m!1452755))

(push 1)

(assert (not start!137668))

(assert (not b!1582220))

(assert (not b!1582222))

(assert tp_is_empty!39295)

(assert (not b!1582223))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun lt!677003 () Bool)

(declare-fun d!166899 () Bool)

(declare-fun content!861 (List!37018) (Set tuple2!25806))

(assert (=> d!166899 (= lt!677003 (set.member (tuple2!25807 key!387 value!184) (content!861 l!1356)))))

(declare-fun e!883043 () Bool)

(assert (=> d!166899 (= lt!677003 e!883043)))

(declare-fun res!1081063 () Bool)

(assert (=> d!166899 (=> (not res!1081063) (not e!883043))))

(assert (=> d!166899 (= res!1081063 (is-Cons!37014 l!1356))))

(assert (=> d!166899 (= (contains!10534 l!1356 (tuple2!25807 key!387 value!184)) lt!677003)))

(declare-fun b!1582260 () Bool)

(declare-fun e!883042 () Bool)

(assert (=> b!1582260 (= e!883043 e!883042)))

(declare-fun res!1081062 () Bool)

(assert (=> b!1582260 (=> res!1081062 e!883042)))

(assert (=> b!1582260 (= res!1081062 (= (h!38558 l!1356) (tuple2!25807 key!387 value!184)))))

(declare-fun b!1582261 () Bool)

(assert (=> b!1582261 (= e!883042 (contains!10534 (t!51939 l!1356) (tuple2!25807 key!387 value!184)))))

(assert (= (and d!166899 res!1081063) b!1582260))

(assert (= (and b!1582260 (not res!1081062)) b!1582261))

(declare-fun m!1452773 () Bool)

(assert (=> d!166899 m!1452773))

(declare-fun m!1452775 () Bool)

(assert (=> d!166899 m!1452775))

(declare-fun m!1452777 () Bool)

(assert (=> b!1582261 m!1452777))

(assert (=> b!1582222 d!166899))

(declare-fun d!166905 () Bool)

(assert (=> d!166905 (not (contains!10534 (t!51939 l!1356) (tuple2!25807 key!387 value!184)))))

(declare-fun lt!677012 () Unit!52196)

(declare-fun choose!2105 (List!37018 (_ BitVec 64) B!2750) Unit!52196)

(assert (=> d!166905 (= lt!677012 (choose!2105 (t!51939 l!1356) key!387 value!184))))

(declare-fun e!883054 () Bool)

(assert (=> d!166905 e!883054))

(declare-fun res!1081074 () Bool)

(assert (=> d!166905 (=> (not res!1081074) (not e!883054))))

(assert (=> d!166905 (= res!1081074 (isStrictlySorted!1110 (t!51939 l!1356)))))

(assert (=> d!166905 (= (lemmaNotContainsKeyThenNotContainsTuple!7 (t!51939 l!1356) key!387 value!184) lt!677012)))

(declare-fun b!1582272 () Bool)

(assert (=> b!1582272 (= e!883054 (not (containsKey!956 (t!51939 l!1356) key!387)))))

(assert (= (and d!166905 res!1081074) b!1582272))

(assert (=> d!166905 m!1452777))

(declare-fun m!1452791 () Bool)

(assert (=> d!166905 m!1452791))

(declare-fun m!1452793 () Bool)

(assert (=> d!166905 m!1452793))

(declare-fun m!1452795 () Bool)

(assert (=> b!1582272 m!1452795))

(assert (=> b!1582222 d!166905))

(declare-fun d!166911 () Bool)

(declare-fun res!1081089 () Bool)

(declare-fun e!883069 () Bool)

(assert (=> d!166911 (=> res!1081089 e!883069)))

(assert (=> d!166911 (= res!1081089 (and (is-Cons!37014 l!1356) (= (_1!12913 (h!38558 l!1356)) key!387)))))

(assert (=> d!166911 (= (containsKey!956 l!1356 key!387) e!883069)))

(declare-fun b!1582287 () Bool)

(declare-fun e!883070 () Bool)

(assert (=> b!1582287 (= e!883069 e!883070)))

(declare-fun res!1081090 () Bool)

(assert (=> b!1582287 (=> (not res!1081090) (not e!883070))))

(assert (=> b!1582287 (= res!1081090 (and (or (not (is-Cons!37014 l!1356)) (bvsle (_1!12913 (h!38558 l!1356)) key!387)) (is-Cons!37014 l!1356) (bvslt (_1!12913 (h!38558 l!1356)) key!387)))))

(declare-fun b!1582288 () Bool)

(assert (=> b!1582288 (= e!883070 (containsKey!956 (t!51939 l!1356) key!387))))

(assert (= (and d!166911 (not res!1081089)) b!1582287))

(assert (= (and b!1582287 res!1081090) b!1582288))

(assert (=> b!1582288 m!1452795))

(assert (=> b!1582220 d!166911))

(declare-fun d!166917 () Bool)

(declare-fun res!1081107 () Bool)

(declare-fun e!883087 () Bool)

(assert (=> d!166917 (=> res!1081107 e!883087)))

(assert (=> d!166917 (= res!1081107 (or (is-Nil!37015 l!1356) (is-Nil!37015 (t!51939 l!1356))))))

(assert (=> d!166917 (= (isStrictlySorted!1110 l!1356) e!883087)))

(declare-fun b!1582304 () Bool)

(declare-fun e!883088 () Bool)

(assert (=> b!1582304 (= e!883087 e!883088)))

(declare-fun res!1081108 () Bool)

(assert (=> b!1582304 (=> (not res!1081108) (not e!883088))))

(assert (=> b!1582304 (= res!1081108 (bvslt (_1!12913 (h!38558 l!1356)) (_1!12913 (h!38558 (t!51939 l!1356)))))))

(declare-fun b!1582306 () Bool)

(assert (=> b!1582306 (= e!883088 (isStrictlySorted!1110 (t!51939 l!1356)))))

(assert (= (and d!166917 (not res!1081107)) b!1582304))

(assert (= (and b!1582304 res!1081108) b!1582306))

(assert (=> b!1582306 m!1452793))

(assert (=> start!137668 d!166917))

(declare-fun b!1582317 () Bool)

(declare-fun e!883095 () Bool)

(declare-fun tp!114726 () Bool)

(assert (=> b!1582317 (= e!883095 (and tp_is_empty!39295 tp!114726))))

(assert (=> b!1582223 (= tp!114715 e!883095)))

(assert (= (and b!1582223 (is-Cons!37014 (t!51939 l!1356))) b!1582317))

(push 1)

(assert (not b!1582272))

(assert (not d!166899))

(assert (not b!1582261))

(assert (not b!1582306))

(assert (not d!166905))

(assert (not b!1582288))

(assert (not b!1582317))

(assert tp_is_empty!39295)

(check-sat)

