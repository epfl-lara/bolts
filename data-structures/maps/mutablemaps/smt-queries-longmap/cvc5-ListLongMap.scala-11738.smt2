; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!137710 () Bool)

(assert start!137710)

(declare-datatypes ((B!2768 0))(
  ( (B!2769 (val!19746 Int)) )
))
(declare-datatypes ((tuple2!25824 0))(
  ( (tuple2!25825 (_1!12922 (_ BitVec 64)) (_2!12922 B!2768)) )
))
(declare-datatypes ((List!37027 0))(
  ( (Nil!37024) (Cons!37023 (h!38567 tuple2!25824) (t!51948 List!37027)) )
))
(declare-datatypes ((ListLongMap!22947 0))(
  ( (ListLongMap!22948 (toList!11489 List!37027)) )
))
(declare-fun thiss!185 () ListLongMap!22947)

(declare-fun isStrictlySorted!1113 (List!37027) Bool)

(assert (=> start!137710 (not (isStrictlySorted!1113 (toList!11489 thiss!185)))))

(declare-fun e!883122 () Bool)

(declare-fun inv!59111 (ListLongMap!22947) Bool)

(assert (=> start!137710 (and (inv!59111 thiss!185) e!883122)))

(declare-fun b!1582346 () Bool)

(declare-fun tp!114751 () Bool)

(assert (=> b!1582346 (= e!883122 tp!114751)))

(assert (= start!137710 b!1582346))

(declare-fun m!1452809 () Bool)

(assert (=> start!137710 m!1452809))

(declare-fun m!1452811 () Bool)

(assert (=> start!137710 m!1452811))

(push 1)

(assert (not start!137710))

(assert (not b!1582346))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!166931 () Bool)

(declare-fun res!1081127 () Bool)

(declare-fun e!883143 () Bool)

(assert (=> d!166931 (=> res!1081127 e!883143)))

(assert (=> d!166931 (= res!1081127 (or (is-Nil!37024 (toList!11489 thiss!185)) (is-Nil!37024 (t!51948 (toList!11489 thiss!185)))))))

(assert (=> d!166931 (= (isStrictlySorted!1113 (toList!11489 thiss!185)) e!883143)))

(declare-fun b!1582367 () Bool)

(declare-fun e!883144 () Bool)

(assert (=> b!1582367 (= e!883143 e!883144)))

(declare-fun res!1081128 () Bool)

(assert (=> b!1582367 (=> (not res!1081128) (not e!883144))))

(assert (=> b!1582367 (= res!1081128 (bvslt (_1!12922 (h!38567 (toList!11489 thiss!185))) (_1!12922 (h!38567 (t!51948 (toList!11489 thiss!185))))))))

(declare-fun b!1582368 () Bool)

(assert (=> b!1582368 (= e!883144 (isStrictlySorted!1113 (t!51948 (toList!11489 thiss!185))))))

(assert (= (and d!166931 (not res!1081127)) b!1582367))

(assert (= (and b!1582367 res!1081128) b!1582368))

(declare-fun m!1452823 () Bool)

(assert (=> b!1582368 m!1452823))

(assert (=> start!137710 d!166931))

(declare-fun d!166937 () Bool)

(assert (=> d!166937 (= (inv!59111 thiss!185) (isStrictlySorted!1113 (toList!11489 thiss!185)))))

(declare-fun bs!45836 () Bool)

(assert (= bs!45836 d!166937))

(assert (=> bs!45836 m!1452809))

(assert (=> start!137710 d!166937))

(declare-fun b!1582384 () Bool)

(declare-fun e!883154 () Bool)

(declare-fun tp_is_empty!39315 () Bool)

(declare-fun tp!114765 () Bool)

(assert (=> b!1582384 (= e!883154 (and tp_is_empty!39315 tp!114765))))

(assert (=> b!1582346 (= tp!114751 e!883154)))

