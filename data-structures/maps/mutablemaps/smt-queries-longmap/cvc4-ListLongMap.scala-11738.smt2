; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!137714 () Bool)

(assert start!137714)

(declare-datatypes ((B!2772 0))(
  ( (B!2773 (val!19748 Int)) )
))
(declare-datatypes ((tuple2!25828 0))(
  ( (tuple2!25829 (_1!12924 (_ BitVec 64)) (_2!12924 B!2772)) )
))
(declare-datatypes ((List!37029 0))(
  ( (Nil!37026) (Cons!37025 (h!38569 tuple2!25828) (t!51950 List!37029)) )
))
(declare-datatypes ((ListLongMap!22951 0))(
  ( (ListLongMap!22952 (toList!11491 List!37029)) )
))
(declare-fun thiss!185 () ListLongMap!22951)

(declare-fun isStrictlySorted!1115 (List!37029) Bool)

(assert (=> start!137714 (not (isStrictlySorted!1115 (toList!11491 thiss!185)))))

(declare-fun e!883128 () Bool)

(declare-fun inv!59113 (ListLongMap!22951) Bool)

(assert (=> start!137714 (and (inv!59113 thiss!185) e!883128)))

(declare-fun b!1582352 () Bool)

(declare-fun tp!114757 () Bool)

(assert (=> b!1582352 (= e!883128 tp!114757)))

(assert (= start!137714 b!1582352))

(declare-fun m!1452817 () Bool)

(assert (=> start!137714 m!1452817))

(declare-fun m!1452819 () Bool)

(assert (=> start!137714 m!1452819))

(push 1)

(assert (not start!137714))

(assert (not b!1582352))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!166933 () Bool)

(declare-fun res!1081129 () Bool)

(declare-fun e!883145 () Bool)

(assert (=> d!166933 (=> res!1081129 e!883145)))

(assert (=> d!166933 (= res!1081129 (or (is-Nil!37026 (toList!11491 thiss!185)) (is-Nil!37026 (t!51950 (toList!11491 thiss!185)))))))

(assert (=> d!166933 (= (isStrictlySorted!1115 (toList!11491 thiss!185)) e!883145)))

(declare-fun b!1582369 () Bool)

(declare-fun e!883146 () Bool)

(assert (=> b!1582369 (= e!883145 e!883146)))

(declare-fun res!1081130 () Bool)

(assert (=> b!1582369 (=> (not res!1081130) (not e!883146))))

(assert (=> b!1582369 (= res!1081130 (bvslt (_1!12924 (h!38569 (toList!11491 thiss!185))) (_1!12924 (h!38569 (t!51950 (toList!11491 thiss!185))))))))

(declare-fun b!1582370 () Bool)

(assert (=> b!1582370 (= e!883146 (isStrictlySorted!1115 (t!51950 (toList!11491 thiss!185))))))

(assert (= (and d!166933 (not res!1081129)) b!1582369))

(assert (= (and b!1582369 res!1081130) b!1582370))

(declare-fun m!1452825 () Bool)

(assert (=> b!1582370 m!1452825))

(assert (=> start!137714 d!166933))

(declare-fun d!166939 () Bool)

(assert (=> d!166939 (= (inv!59113 thiss!185) (isStrictlySorted!1115 (toList!11491 thiss!185)))))

(declare-fun bs!45837 () Bool)

(assert (= bs!45837 d!166939))

(assert (=> bs!45837 m!1452817))

