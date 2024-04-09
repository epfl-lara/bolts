; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!137734 () Bool)

(assert start!137734)

(declare-fun res!1081133 () Bool)

(declare-fun e!883169 () Bool)

(assert (=> start!137734 (=> (not res!1081133) (not e!883169))))

(declare-datatypes ((B!2780 0))(
  ( (B!2781 (val!19752 Int)) )
))
(declare-datatypes ((tuple2!25836 0))(
  ( (tuple2!25837 (_1!12928 (_ BitVec 64)) (_2!12928 B!2780)) )
))
(declare-datatypes ((List!37033 0))(
  ( (Nil!37030) (Cons!37029 (h!38573 tuple2!25836) (t!51954 List!37033)) )
))
(declare-datatypes ((ListLongMap!22959 0))(
  ( (ListLongMap!22960 (toList!11495 List!37033)) )
))
(declare-fun thiss!185 () ListLongMap!22959)

(declare-fun key!86 () (_ BitVec 64))

(declare-fun containsKey!959 (List!37033 (_ BitVec 64)) Bool)

(assert (=> start!137734 (= res!1081133 (containsKey!959 (toList!11495 thiss!185) key!86))))

(assert (=> start!137734 e!883169))

(declare-fun e!883170 () Bool)

(declare-fun inv!59127 (ListLongMap!22959) Bool)

(assert (=> start!137734 (and (inv!59127 thiss!185) e!883170)))

(assert (=> start!137734 true))

(declare-fun b!1582399 () Bool)

(declare-fun isStrictlySorted!1116 (List!37033) Bool)

(assert (=> b!1582399 (= e!883169 (not (isStrictlySorted!1116 (toList!11495 thiss!185))))))

(declare-fun b!1582400 () Bool)

(declare-fun tp!114778 () Bool)

(assert (=> b!1582400 (= e!883170 tp!114778)))

(assert (= (and start!137734 res!1081133) b!1582399))

(assert (= start!137734 b!1582400))

(declare-fun m!1452833 () Bool)

(assert (=> start!137734 m!1452833))

(declare-fun m!1452835 () Bool)

(assert (=> start!137734 m!1452835))

(declare-fun m!1452837 () Bool)

(assert (=> b!1582399 m!1452837))

(push 1)

(assert (not start!137734))

(assert (not b!1582399))

(assert (not b!1582400))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!166946 () Bool)

(declare-fun res!1081152 () Bool)

(declare-fun e!883195 () Bool)

(assert (=> d!166946 (=> res!1081152 e!883195)))

(assert (=> d!166946 (= res!1081152 (and (is-Cons!37029 (toList!11495 thiss!185)) (= (_1!12928 (h!38573 (toList!11495 thiss!185))) key!86)))))

(assert (=> d!166946 (= (containsKey!959 (toList!11495 thiss!185) key!86) e!883195)))

(declare-fun b!1582425 () Bool)

(declare-fun e!883196 () Bool)

(assert (=> b!1582425 (= e!883195 e!883196)))

(declare-fun res!1081153 () Bool)

(assert (=> b!1582425 (=> (not res!1081153) (not e!883196))))

(assert (=> b!1582425 (= res!1081153 (and (or (not (is-Cons!37029 (toList!11495 thiss!185))) (bvsle (_1!12928 (h!38573 (toList!11495 thiss!185))) key!86)) (is-Cons!37029 (toList!11495 thiss!185)) (bvslt (_1!12928 (h!38573 (toList!11495 thiss!185))) key!86)))))

(declare-fun b!1582426 () Bool)

(assert (=> b!1582426 (= e!883196 (containsKey!959 (t!51954 (toList!11495 thiss!185)) key!86))))

(assert (= (and d!166946 (not res!1081152)) b!1582425))

(assert (= (and b!1582425 res!1081153) b!1582426))

(declare-fun m!1452853 () Bool)

(assert (=> b!1582426 m!1452853))

(assert (=> start!137734 d!166946))

(declare-fun d!166953 () Bool)

(assert (=> d!166953 (= (inv!59127 thiss!185) (isStrictlySorted!1116 (toList!11495 thiss!185)))))

(declare-fun bs!45845 () Bool)

(assert (= bs!45845 d!166953))

(assert (=> bs!45845 m!1452837))

(assert (=> start!137734 d!166953))

(declare-fun d!166959 () Bool)

(declare-fun res!1081170 () Bool)

(declare-fun e!883213 () Bool)

(assert (=> d!166959 (=> res!1081170 e!883213)))

(assert (=> d!166959 (= res!1081170 (or (is-Nil!37030 (toList!11495 thiss!185)) (is-Nil!37030 (t!51954 (toList!11495 thiss!185)))))))

(assert (=> d!166959 (= (isStrictlySorted!1116 (toList!11495 thiss!185)) e!883213)))

(declare-fun b!1582443 () Bool)

(declare-fun e!883214 () Bool)

(assert (=> b!1582443 (= e!883213 e!883214)))

(declare-fun res!1081171 () Bool)

(assert (=> b!1582443 (=> (not res!1081171) (not e!883214))))

(assert (=> b!1582443 (= res!1081171 (bvslt (_1!12928 (h!38573 (toList!11495 thiss!185))) (_1!12928 (h!38573 (t!51954 (toList!11495 thiss!185))))))))

(declare-fun b!1582444 () Bool)

(assert (=> b!1582444 (= e!883214 (isStrictlySorted!1116 (t!51954 (toList!11495 thiss!185))))))

(assert (= (and d!166959 (not res!1081170)) b!1582443))

(assert (= (and b!1582443 res!1081171) b!1582444))

(declare-fun m!1452857 () Bool)

(assert (=> b!1582444 m!1452857))

(assert (=> b!1582399 d!166959))

(declare-fun b!1582457 () Bool)

(declare-fun e!883223 () Bool)

(declare-fun tp_is_empty!39319 () Bool)

(declare-fun tp!114789 () Bool)

(assert (=> b!1582457 (= e!883223 (and tp_is_empty!39319 tp!114789))))

(assert (=> b!1582400 (= tp!114778 e!883223)))

(assert (= (and b!1582400 (is-Cons!37029 (toList!11495 thiss!185))) b!1582457))

(push 1)

