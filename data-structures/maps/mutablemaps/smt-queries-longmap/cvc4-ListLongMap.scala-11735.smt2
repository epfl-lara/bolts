; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!137672 () Bool)

(assert start!137672)

(declare-fun b!1582244 () Bool)

(declare-fun res!1081048 () Bool)

(declare-fun e!883029 () Bool)

(assert (=> b!1582244 (=> (not res!1081048) (not e!883029))))

(declare-datatypes ((B!2754 0))(
  ( (B!2755 (val!19739 Int)) )
))
(declare-datatypes ((tuple2!25810 0))(
  ( (tuple2!25811 (_1!12915 (_ BitVec 64)) (_2!12915 B!2754)) )
))
(declare-datatypes ((List!37020 0))(
  ( (Nil!37017) (Cons!37016 (h!38560 tuple2!25810) (t!51941 List!37020)) )
))
(declare-fun l!1356 () List!37020)

(declare-fun key!387 () (_ BitVec 64))

(declare-fun containsKey!958 (List!37020 (_ BitVec 64)) Bool)

(assert (=> b!1582244 (= res!1081048 (not (containsKey!958 l!1356 key!387)))))

(declare-fun b!1582245 () Bool)

(declare-fun res!1081047 () Bool)

(assert (=> b!1582245 (=> (not res!1081047) (not e!883029))))

(assert (=> b!1582245 (= res!1081047 (not (is-Nil!37017 l!1356)))))

(declare-fun res!1081049 () Bool)

(assert (=> start!137672 (=> (not res!1081049) (not e!883029))))

(declare-fun isStrictlySorted!1112 (List!37020) Bool)

(assert (=> start!137672 (= res!1081049 (isStrictlySorted!1112 l!1356))))

(assert (=> start!137672 e!883029))

(declare-fun e!883028 () Bool)

(assert (=> start!137672 e!883028))

(assert (=> start!137672 true))

(declare-fun tp_is_empty!39299 () Bool)

(assert (=> start!137672 tp_is_empty!39299))

(declare-fun b!1582246 () Bool)

(declare-fun value!184 () B!2754)

(declare-fun contains!10536 (List!37020 tuple2!25810) Bool)

(assert (=> b!1582246 (= e!883029 (contains!10536 l!1356 (tuple2!25811 key!387 value!184)))))

(declare-datatypes ((Unit!52200 0))(
  ( (Unit!52201) )
))
(declare-fun lt!676996 () Unit!52200)

(declare-fun lemmaNotContainsKeyThenNotContainsTuple!9 (List!37020 (_ BitVec 64) B!2754) Unit!52200)

(assert (=> b!1582246 (= lt!676996 (lemmaNotContainsKeyThenNotContainsTuple!9 (t!51941 l!1356) key!387 value!184))))

(declare-fun b!1582247 () Bool)

(declare-fun tp!114721 () Bool)

(assert (=> b!1582247 (= e!883028 (and tp_is_empty!39299 tp!114721))))

(assert (= (and start!137672 res!1081049) b!1582244))

(assert (= (and b!1582244 res!1081048) b!1582245))

(assert (= (and b!1582245 res!1081047) b!1582246))

(assert (= (and start!137672 (is-Cons!37016 l!1356)) b!1582247))

(declare-fun m!1452765 () Bool)

(assert (=> b!1582244 m!1452765))

(declare-fun m!1452767 () Bool)

(assert (=> start!137672 m!1452767))

(declare-fun m!1452769 () Bool)

(assert (=> b!1582246 m!1452769))

(declare-fun m!1452771 () Bool)

(assert (=> b!1582246 m!1452771))

(push 1)

(assert (not b!1582246))

(assert tp_is_empty!39299)

(assert (not b!1582244))

(assert (not start!137672))

(assert (not b!1582247))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!166901 () Bool)

(declare-fun lt!677004 () Bool)

(declare-fun content!862 (List!37020) (Set tuple2!25810))

(assert (=> d!166901 (= lt!677004 (member (tuple2!25811 key!387 value!184) (content!862 l!1356)))))

(declare-fun e!883044 () Bool)

(assert (=> d!166901 (= lt!677004 e!883044)))

(declare-fun res!1081065 () Bool)

(assert (=> d!166901 (=> (not res!1081065) (not e!883044))))

(assert (=> d!166901 (= res!1081065 (is-Cons!37016 l!1356))))

(assert (=> d!166901 (= (contains!10536 l!1356 (tuple2!25811 key!387 value!184)) lt!677004)))

(declare-fun b!1582262 () Bool)

(declare-fun e!883045 () Bool)

(assert (=> b!1582262 (= e!883044 e!883045)))

(declare-fun res!1081064 () Bool)

(assert (=> b!1582262 (=> res!1081064 e!883045)))

(assert (=> b!1582262 (= res!1081064 (= (h!38560 l!1356) (tuple2!25811 key!387 value!184)))))

(declare-fun b!1582263 () Bool)

(assert (=> b!1582263 (= e!883045 (contains!10536 (t!51941 l!1356) (tuple2!25811 key!387 value!184)))))

(assert (= (and d!166901 res!1081065) b!1582262))

(assert (= (and b!1582262 (not res!1081064)) b!1582263))

(declare-fun m!1452779 () Bool)

(assert (=> d!166901 m!1452779))

(declare-fun m!1452781 () Bool)

(assert (=> d!166901 m!1452781))

(declare-fun m!1452783 () Bool)

(assert (=> b!1582263 m!1452783))

(assert (=> b!1582246 d!166901))

(declare-fun d!166907 () Bool)

(assert (=> d!166907 (not (contains!10536 (t!51941 l!1356) (tuple2!25811 key!387 value!184)))))

(declare-fun lt!677013 () Unit!52200)

(declare-fun choose!2107 (List!37020 (_ BitVec 64) B!2754) Unit!52200)

(assert (=> d!166907 (= lt!677013 (choose!2107 (t!51941 l!1356) key!387 value!184))))

(declare-fun e!883055 () Bool)

(assert (=> d!166907 e!883055))

(declare-fun res!1081075 () Bool)

(assert (=> d!166907 (=> (not res!1081075) (not e!883055))))

(assert (=> d!166907 (= res!1081075 (isStrictlySorted!1112 (t!51941 l!1356)))))

(assert (=> d!166907 (= (lemmaNotContainsKeyThenNotContainsTuple!9 (t!51941 l!1356) key!387 value!184) lt!677013)))

(declare-fun b!1582273 () Bool)

(assert (=> b!1582273 (= e!883055 (not (containsKey!958 (t!51941 l!1356) key!387)))))

(assert (= (and d!166907 res!1081075) b!1582273))

(assert (=> d!166907 m!1452783))

(declare-fun m!1452797 () Bool)

(assert (=> d!166907 m!1452797))

(declare-fun m!1452799 () Bool)

(assert (=> d!166907 m!1452799))

(declare-fun m!1452801 () Bool)

(assert (=> b!1582273 m!1452801))

(assert (=> b!1582246 d!166907))

(declare-fun d!166913 () Bool)

(declare-fun res!1081091 () Bool)

(declare-fun e!883071 () Bool)

(assert (=> d!166913 (=> res!1081091 e!883071)))

(assert (=> d!166913 (= res!1081091 (and (is-Cons!37016 l!1356) (= (_1!12915 (h!38560 l!1356)) key!387)))))

(assert (=> d!166913 (= (containsKey!958 l!1356 key!387) e!883071)))

(declare-fun b!1582289 () Bool)

(declare-fun e!883072 () Bool)

(assert (=> b!1582289 (= e!883071 e!883072)))

(declare-fun res!1081092 () Bool)

(assert (=> b!1582289 (=> (not res!1081092) (not e!883072))))

(assert (=> b!1582289 (= res!1081092 (and (or (not (is-Cons!37016 l!1356)) (bvsle (_1!12915 (h!38560 l!1356)) key!387)) (is-Cons!37016 l!1356) (bvslt (_1!12915 (h!38560 l!1356)) key!387)))))

(declare-fun b!1582290 () Bool)

(assert (=> b!1582290 (= e!883072 (containsKey!958 (t!51941 l!1356) key!387))))

(assert (= (and d!166913 (not res!1081091)) b!1582289))

(assert (= (and b!1582289 res!1081092) b!1582290))

(assert (=> b!1582290 m!1452801))

(assert (=> b!1582244 d!166913))

(declare-fun d!166919 () Bool)

(declare-fun res!1081109 () Bool)

(declare-fun e!883089 () Bool)

(assert (=> d!166919 (=> res!1081109 e!883089)))

(assert (=> d!166919 (= res!1081109 (or (is-Nil!37017 l!1356) (is-Nil!37017 (t!51941 l!1356))))))

(assert (=> d!166919 (= (isStrictlySorted!1112 l!1356) e!883089)))

(declare-fun b!1582307 () Bool)

(declare-fun e!883090 () Bool)

(assert (=> b!1582307 (= e!883089 e!883090)))

(declare-fun res!1081110 () Bool)

(assert (=> b!1582307 (=> (not res!1081110) (not e!883090))))

(assert (=> b!1582307 (= res!1081110 (bvslt (_1!12915 (h!38560 l!1356)) (_1!12915 (h!38560 (t!51941 l!1356)))))))

(declare-fun b!1582308 () Bool)

(assert (=> b!1582308 (= e!883090 (isStrictlySorted!1112 (t!51941 l!1356)))))

(assert (= (and d!166919 (not res!1081109)) b!1582307))

(assert (= (and b!1582307 res!1081110) b!1582308))

(assert (=> b!1582308 m!1452799))

(assert (=> start!137672 d!166919))

(declare-fun b!1582320 () Bool)

(declare-fun e!883098 () Bool)

(declare-fun tp!114727 () Bool)

(assert (=> b!1582320 (= e!883098 (and tp_is_empty!39299 tp!114727))))

(assert (=> b!1582247 (= tp!114721 e!883098)))

(assert (= (and b!1582247 (is-Cons!37016 (t!51941 l!1356))) b!1582320))

(push 1)

