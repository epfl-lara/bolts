; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!132898 () Bool)

(assert start!132898)

(declare-fun res!1064622 () Bool)

(declare-fun e!866598 () Bool)

(assert (=> start!132898 (=> (not res!1064622) (not e!866598))))

(declare-datatypes ((B!2336 0))(
  ( (B!2337 (val!19254 Int)) )
))
(declare-datatypes ((tuple2!25024 0))(
  ( (tuple2!25025 (_1!12522 (_ BitVec 64)) (_2!12522 B!2336)) )
))
(declare-datatypes ((List!36434 0))(
  ( (Nil!36431) (Cons!36430 (h!37877 tuple2!25024) (t!51162 List!36434)) )
))
(declare-fun l!1177 () List!36434)

(declare-fun isStrictlySorted!938 (List!36434) Bool)

(assert (=> start!132898 (= res!1064622 (isStrictlySorted!938 l!1177))))

(assert (=> start!132898 e!866598))

(declare-fun e!866597 () Bool)

(assert (=> start!132898 e!866597))

(assert (=> start!132898 true))

(declare-fun b!1555964 () Bool)

(declare-fun res!1064621 () Bool)

(assert (=> b!1555964 (=> (not res!1064621) (not e!866598))))

(declare-fun newKey!105 () (_ BitVec 64))

(declare-fun otherKey!50 () (_ BitVec 64))

(assert (=> b!1555964 (= res!1064621 (and (not (= newKey!105 otherKey!50)) (is-Cons!36430 l!1177) (not (= (_1!12522 (h!37877 l!1177)) otherKey!50))))))

(declare-fun b!1555965 () Bool)

(assert (=> b!1555965 (= e!866598 (not (isStrictlySorted!938 (t!51162 l!1177))))))

(declare-fun b!1555966 () Bool)

(declare-fun tp_is_empty!38347 () Bool)

(declare-fun tp!112390 () Bool)

(assert (=> b!1555966 (= e!866597 (and tp_is_empty!38347 tp!112390))))

(assert (= (and start!132898 res!1064622) b!1555964))

(assert (= (and b!1555964 res!1064621) b!1555965))

(assert (= (and start!132898 (is-Cons!36430 l!1177)) b!1555966))

(declare-fun m!1433697 () Bool)

(assert (=> start!132898 m!1433697))

(declare-fun m!1433699 () Bool)

(assert (=> b!1555965 m!1433699))

(push 1)

(assert (not start!132898))

(assert (not b!1555965))

(assert (not b!1555966))

(assert tp_is_empty!38347)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!161985 () Bool)

(declare-fun res!1064655 () Bool)

(declare-fun e!866637 () Bool)

(assert (=> d!161985 (=> res!1064655 e!866637)))

(assert (=> d!161985 (= res!1064655 (or (is-Nil!36431 l!1177) (is-Nil!36431 (t!51162 l!1177))))))

(assert (=> d!161985 (= (isStrictlySorted!938 l!1177) e!866637)))

(declare-fun b!1556015 () Bool)

(declare-fun e!866638 () Bool)

(assert (=> b!1556015 (= e!866637 e!866638)))

(declare-fun res!1064656 () Bool)

(assert (=> b!1556015 (=> (not res!1064656) (not e!866638))))

(assert (=> b!1556015 (= res!1064656 (bvslt (_1!12522 (h!37877 l!1177)) (_1!12522 (h!37877 (t!51162 l!1177)))))))

(declare-fun b!1556016 () Bool)

(assert (=> b!1556016 (= e!866638 (isStrictlySorted!938 (t!51162 l!1177)))))

(assert (= (and d!161985 (not res!1064655)) b!1556015))

(assert (= (and b!1556015 res!1064656) b!1556016))

(assert (=> b!1556016 m!1433699))

(assert (=> start!132898 d!161985))

(declare-fun d!161991 () Bool)

(declare-fun res!1064657 () Bool)

(declare-fun e!866639 () Bool)

(assert (=> d!161991 (=> res!1064657 e!866639)))

(assert (=> d!161991 (= res!1064657 (or (is-Nil!36431 (t!51162 l!1177)) (is-Nil!36431 (t!51162 (t!51162 l!1177)))))))

(assert (=> d!161991 (= (isStrictlySorted!938 (t!51162 l!1177)) e!866639)))

(declare-fun b!1556017 () Bool)

(declare-fun e!866640 () Bool)

(assert (=> b!1556017 (= e!866639 e!866640)))

(declare-fun res!1064658 () Bool)

(assert (=> b!1556017 (=> (not res!1064658) (not e!866640))))

(assert (=> b!1556017 (= res!1064658 (bvslt (_1!12522 (h!37877 (t!51162 l!1177))) (_1!12522 (h!37877 (t!51162 (t!51162 l!1177))))))))

(declare-fun b!1556018 () Bool)

(assert (=> b!1556018 (= e!866640 (isStrictlySorted!938 (t!51162 (t!51162 l!1177))))))

(assert (= (and d!161991 (not res!1064657)) b!1556017))

(assert (= (and b!1556017 res!1064658) b!1556018))

(declare-fun m!1433713 () Bool)

(assert (=> b!1556018 m!1433713))

(assert (=> b!1555965 d!161991))

(declare-fun b!1556023 () Bool)

(declare-fun e!866643 () Bool)

(declare-fun tp!112405 () Bool)

(assert (=> b!1556023 (= e!866643 (and tp_is_empty!38347 tp!112405))))

(assert (=> b!1555966 (= tp!112390 e!866643)))

(assert (= (and b!1555966 (is-Cons!36430 (t!51162 l!1177))) b!1556023))

(push 1)

(assert (not b!1556016))

(assert (not b!1556018))

(assert (not b!1556023))

(assert tp_is_empty!38347)

(check-sat)

(pop 1)

