; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!132900 () Bool)

(assert start!132900)

(declare-fun res!1064628 () Bool)

(declare-fun e!866603 () Bool)

(assert (=> start!132900 (=> (not res!1064628) (not e!866603))))

(declare-datatypes ((B!2338 0))(
  ( (B!2339 (val!19255 Int)) )
))
(declare-datatypes ((tuple2!25026 0))(
  ( (tuple2!25027 (_1!12523 (_ BitVec 64)) (_2!12523 B!2338)) )
))
(declare-datatypes ((List!36435 0))(
  ( (Nil!36432) (Cons!36431 (h!37878 tuple2!25026) (t!51163 List!36435)) )
))
(declare-fun l!1177 () List!36435)

(declare-fun isStrictlySorted!939 (List!36435) Bool)

(assert (=> start!132900 (= res!1064628 (isStrictlySorted!939 l!1177))))

(assert (=> start!132900 e!866603))

(declare-fun e!866604 () Bool)

(assert (=> start!132900 e!866604))

(assert (=> start!132900 true))

(declare-fun b!1555973 () Bool)

(declare-fun res!1064627 () Bool)

(assert (=> b!1555973 (=> (not res!1064627) (not e!866603))))

(declare-fun newKey!105 () (_ BitVec 64))

(declare-fun otherKey!50 () (_ BitVec 64))

(get-info :version)

(assert (=> b!1555973 (= res!1064627 (and (not (= newKey!105 otherKey!50)) ((_ is Cons!36431) l!1177) (not (= (_1!12523 (h!37878 l!1177)) otherKey!50))))))

(declare-fun b!1555974 () Bool)

(assert (=> b!1555974 (= e!866603 (not (isStrictlySorted!939 (t!51163 l!1177))))))

(declare-fun b!1555975 () Bool)

(declare-fun tp_is_empty!38349 () Bool)

(declare-fun tp!112393 () Bool)

(assert (=> b!1555975 (= e!866604 (and tp_is_empty!38349 tp!112393))))

(assert (= (and start!132900 res!1064628) b!1555973))

(assert (= (and b!1555973 res!1064627) b!1555974))

(assert (= (and start!132900 ((_ is Cons!36431) l!1177)) b!1555975))

(declare-fun m!1433701 () Bool)

(assert (=> start!132900 m!1433701))

(declare-fun m!1433703 () Bool)

(assert (=> b!1555974 m!1433703))

(check-sat (not b!1555974) (not start!132900) (not b!1555975) tp_is_empty!38349)
(check-sat)
(get-model)

(declare-fun d!161983 () Bool)

(declare-fun res!1064647 () Bool)

(declare-fun e!866623 () Bool)

(assert (=> d!161983 (=> res!1064647 e!866623)))

(assert (=> d!161983 (= res!1064647 (or ((_ is Nil!36432) (t!51163 l!1177)) ((_ is Nil!36432) (t!51163 (t!51163 l!1177)))))))

(assert (=> d!161983 (= (isStrictlySorted!939 (t!51163 l!1177)) e!866623)))

(declare-fun b!1555997 () Bool)

(declare-fun e!866624 () Bool)

(assert (=> b!1555997 (= e!866623 e!866624)))

(declare-fun res!1064648 () Bool)

(assert (=> b!1555997 (=> (not res!1064648) (not e!866624))))

(assert (=> b!1555997 (= res!1064648 (bvslt (_1!12523 (h!37878 (t!51163 l!1177))) (_1!12523 (h!37878 (t!51163 (t!51163 l!1177))))))))

(declare-fun b!1555998 () Bool)

(assert (=> b!1555998 (= e!866624 (isStrictlySorted!939 (t!51163 (t!51163 l!1177))))))

(assert (= (and d!161983 (not res!1064647)) b!1555997))

(assert (= (and b!1555997 res!1064648) b!1555998))

(declare-fun m!1433711 () Bool)

(assert (=> b!1555998 m!1433711))

(assert (=> b!1555974 d!161983))

(declare-fun d!161989 () Bool)

(declare-fun res!1064653 () Bool)

(declare-fun e!866631 () Bool)

(assert (=> d!161989 (=> res!1064653 e!866631)))

(assert (=> d!161989 (= res!1064653 (or ((_ is Nil!36432) l!1177) ((_ is Nil!36432) (t!51163 l!1177))))))

(assert (=> d!161989 (= (isStrictlySorted!939 l!1177) e!866631)))

(declare-fun b!1556007 () Bool)

(declare-fun e!866632 () Bool)

(assert (=> b!1556007 (= e!866631 e!866632)))

(declare-fun res!1064654 () Bool)

(assert (=> b!1556007 (=> (not res!1064654) (not e!866632))))

(assert (=> b!1556007 (= res!1064654 (bvslt (_1!12523 (h!37878 l!1177)) (_1!12523 (h!37878 (t!51163 l!1177)))))))

(declare-fun b!1556008 () Bool)

(assert (=> b!1556008 (= e!866632 (isStrictlySorted!939 (t!51163 l!1177)))))

(assert (= (and d!161989 (not res!1064653)) b!1556007))

(assert (= (and b!1556007 res!1064654) b!1556008))

(assert (=> b!1556008 m!1433703))

(assert (=> start!132900 d!161989))

(declare-fun b!1556014 () Bool)

(declare-fun e!866636 () Bool)

(declare-fun tp!112402 () Bool)

(assert (=> b!1556014 (= e!866636 (and tp_is_empty!38349 tp!112402))))

(assert (=> b!1555975 (= tp!112393 e!866636)))

(assert (= (and b!1555975 ((_ is Cons!36431) (t!51163 l!1177))) b!1556014))

(check-sat (not b!1555998) (not b!1556008) (not b!1556014) tp_is_empty!38349)
(check-sat)
