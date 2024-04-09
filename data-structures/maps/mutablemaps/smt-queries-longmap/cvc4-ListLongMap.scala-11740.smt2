; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!137738 () Bool)

(assert start!137738)

(declare-fun res!1081139 () Bool)

(declare-fun e!883181 () Bool)

(assert (=> start!137738 (=> (not res!1081139) (not e!883181))))

(declare-datatypes ((B!2784 0))(
  ( (B!2785 (val!19754 Int)) )
))
(declare-datatypes ((tuple2!25840 0))(
  ( (tuple2!25841 (_1!12930 (_ BitVec 64)) (_2!12930 B!2784)) )
))
(declare-datatypes ((List!37035 0))(
  ( (Nil!37032) (Cons!37031 (h!38575 tuple2!25840) (t!51956 List!37035)) )
))
(declare-datatypes ((ListLongMap!22963 0))(
  ( (ListLongMap!22964 (toList!11497 List!37035)) )
))
(declare-fun thiss!185 () ListLongMap!22963)

(declare-fun key!86 () (_ BitVec 64))

(declare-fun containsKey!961 (List!37035 (_ BitVec 64)) Bool)

(assert (=> start!137738 (= res!1081139 (containsKey!961 (toList!11497 thiss!185) key!86))))

(assert (=> start!137738 e!883181))

(declare-fun e!883182 () Bool)

(declare-fun inv!59129 (ListLongMap!22963) Bool)

(assert (=> start!137738 (and (inv!59129 thiss!185) e!883182)))

(assert (=> start!137738 true))

(declare-fun b!1582411 () Bool)

(declare-fun isStrictlySorted!1118 (List!37035) Bool)

(assert (=> b!1582411 (= e!883181 (not (isStrictlySorted!1118 (toList!11497 thiss!185))))))

(declare-fun b!1582412 () Bool)

(declare-fun tp!114784 () Bool)

(assert (=> b!1582412 (= e!883182 tp!114784)))

(assert (= (and start!137738 res!1081139) b!1582411))

(assert (= start!137738 b!1582412))

(declare-fun m!1452845 () Bool)

(assert (=> start!137738 m!1452845))

(declare-fun m!1452847 () Bool)

(assert (=> start!137738 m!1452847))

(declare-fun m!1452849 () Bool)

(assert (=> b!1582411 m!1452849))

(push 1)

(assert (not b!1582411))

(assert (not start!137738))

(assert (not b!1582412))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!166949 () Bool)

(declare-fun res!1081156 () Bool)

(declare-fun e!883199 () Bool)

(assert (=> d!166949 (=> res!1081156 e!883199)))

(assert (=> d!166949 (= res!1081156 (or (is-Nil!37032 (toList!11497 thiss!185)) (is-Nil!37032 (t!51956 (toList!11497 thiss!185)))))))

(assert (=> d!166949 (= (isStrictlySorted!1118 (toList!11497 thiss!185)) e!883199)))

(declare-fun b!1582429 () Bool)

(declare-fun e!883200 () Bool)

(assert (=> b!1582429 (= e!883199 e!883200)))

(declare-fun res!1081157 () Bool)

(assert (=> b!1582429 (=> (not res!1081157) (not e!883200))))

(assert (=> b!1582429 (= res!1081157 (bvslt (_1!12930 (h!38575 (toList!11497 thiss!185))) (_1!12930 (h!38575 (t!51956 (toList!11497 thiss!185))))))))

(declare-fun b!1582430 () Bool)

(assert (=> b!1582430 (= e!883200 (isStrictlySorted!1118 (t!51956 (toList!11497 thiss!185))))))

(assert (= (and d!166949 (not res!1081156)) b!1582429))

(assert (= (and b!1582429 res!1081157) b!1582430))

(declare-fun m!1452855 () Bool)

(assert (=> b!1582430 m!1452855))

(assert (=> b!1582411 d!166949))

(declare-fun d!166955 () Bool)

(declare-fun res!1081174 () Bool)

(declare-fun e!883217 () Bool)

(assert (=> d!166955 (=> res!1081174 e!883217)))

(assert (=> d!166955 (= res!1081174 (and (is-Cons!37031 (toList!11497 thiss!185)) (= (_1!12930 (h!38575 (toList!11497 thiss!185))) key!86)))))

(assert (=> d!166955 (= (containsKey!961 (toList!11497 thiss!185) key!86) e!883217)))

(declare-fun b!1582447 () Bool)

(declare-fun e!883218 () Bool)

(assert (=> b!1582447 (= e!883217 e!883218)))

(declare-fun res!1081175 () Bool)

(assert (=> b!1582447 (=> (not res!1081175) (not e!883218))))

(assert (=> b!1582447 (= res!1081175 (and (or (not (is-Cons!37031 (toList!11497 thiss!185))) (bvsle (_1!12930 (h!38575 (toList!11497 thiss!185))) key!86)) (is-Cons!37031 (toList!11497 thiss!185)) (bvslt (_1!12930 (h!38575 (toList!11497 thiss!185))) key!86)))))

(declare-fun b!1582448 () Bool)

(assert (=> b!1582448 (= e!883218 (containsKey!961 (t!51956 (toList!11497 thiss!185)) key!86))))

