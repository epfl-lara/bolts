; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!132902 () Bool)

(assert start!132902)

(declare-fun res!1064633 () Bool)

(declare-fun e!866610 () Bool)

(assert (=> start!132902 (=> (not res!1064633) (not e!866610))))

(declare-datatypes ((B!2340 0))(
  ( (B!2341 (val!19256 Int)) )
))
(declare-datatypes ((tuple2!25028 0))(
  ( (tuple2!25029 (_1!12524 (_ BitVec 64)) (_2!12524 B!2340)) )
))
(declare-datatypes ((List!36436 0))(
  ( (Nil!36433) (Cons!36432 (h!37879 tuple2!25028) (t!51164 List!36436)) )
))
(declare-fun l!1177 () List!36436)

(declare-fun isStrictlySorted!940 (List!36436) Bool)

(assert (=> start!132902 (= res!1064633 (isStrictlySorted!940 l!1177))))

(assert (=> start!132902 e!866610))

(declare-fun e!866609 () Bool)

(assert (=> start!132902 e!866609))

(assert (=> start!132902 true))

(declare-fun b!1555982 () Bool)

(declare-fun res!1064634 () Bool)

(assert (=> b!1555982 (=> (not res!1064634) (not e!866610))))

(declare-fun newKey!105 () (_ BitVec 64))

(declare-fun otherKey!50 () (_ BitVec 64))

(assert (=> b!1555982 (= res!1064634 (and (not (= newKey!105 otherKey!50)) (is-Cons!36432 l!1177) (not (= (_1!12524 (h!37879 l!1177)) otherKey!50))))))

(declare-fun b!1555983 () Bool)

(assert (=> b!1555983 (= e!866610 (not (isStrictlySorted!940 (t!51164 l!1177))))))

(declare-fun b!1555984 () Bool)

(declare-fun tp_is_empty!38351 () Bool)

(declare-fun tp!112396 () Bool)

(assert (=> b!1555984 (= e!866609 (and tp_is_empty!38351 tp!112396))))

(assert (= (and start!132902 res!1064633) b!1555982))

(assert (= (and b!1555982 res!1064634) b!1555983))

(assert (= (and start!132902 (is-Cons!36432 l!1177)) b!1555984))

(declare-fun m!1433705 () Bool)

(assert (=> start!132902 m!1433705))

(declare-fun m!1433707 () Bool)

(assert (=> b!1555983 m!1433707))

(push 1)

(assert (not start!132902))

(assert (not b!1555983))

(assert (not b!1555984))

(assert tp_is_empty!38351)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!161981 () Bool)

(declare-fun res!1064643 () Bool)

(declare-fun e!866619 () Bool)

(assert (=> d!161981 (=> res!1064643 e!866619)))

(assert (=> d!161981 (= res!1064643 (or (is-Nil!36433 l!1177) (is-Nil!36433 (t!51164 l!1177))))))

(assert (=> d!161981 (= (isStrictlySorted!940 l!1177) e!866619)))

(declare-fun b!1555993 () Bool)

(declare-fun e!866620 () Bool)

(assert (=> b!1555993 (= e!866619 e!866620)))

(declare-fun res!1064644 () Bool)

(assert (=> b!1555993 (=> (not res!1064644) (not e!866620))))

(assert (=> b!1555993 (= res!1064644 (bvslt (_1!12524 (h!37879 l!1177)) (_1!12524 (h!37879 (t!51164 l!1177)))))))

(declare-fun b!1555994 () Bool)

(assert (=> b!1555994 (= e!866620 (isStrictlySorted!940 (t!51164 l!1177)))))

(assert (= (and d!161981 (not res!1064643)) b!1555993))

(assert (= (and b!1555993 res!1064644) b!1555994))

(assert (=> b!1555994 m!1433707))

(assert (=> start!132902 d!161981))

(declare-fun d!161987 () Bool)

(declare-fun res!1064645 () Bool)

(declare-fun e!866621 () Bool)

(assert (=> d!161987 (=> res!1064645 e!866621)))

(assert (=> d!161987 (= res!1064645 (or (is-Nil!36433 (t!51164 l!1177)) (is-Nil!36433 (t!51164 (t!51164 l!1177)))))))

(assert (=> d!161987 (= (isStrictlySorted!940 (t!51164 l!1177)) e!866621)))

(declare-fun b!1555995 () Bool)

(declare-fun e!866622 () Bool)

(assert (=> b!1555995 (= e!866621 e!866622)))

(declare-fun res!1064646 () Bool)

(assert (=> b!1555995 (=> (not res!1064646) (not e!866622))))

(assert (=> b!1555995 (= res!1064646 (bvslt (_1!12524 (h!37879 (t!51164 l!1177))) (_1!12524 (h!37879 (t!51164 (t!51164 l!1177))))))))

(declare-fun b!1555996 () Bool)

(assert (=> b!1555996 (= e!866622 (isStrictlySorted!940 (t!51164 (t!51164 l!1177))))))

(assert (= (and d!161987 (not res!1064645)) b!1555995))

(assert (= (and b!1555995 res!1064646) b!1555996))

(declare-fun m!1433709 () Bool)

(assert (=> b!1555996 m!1433709))

(assert (=> b!1555983 d!161987))

(declare-fun b!1556010 () Bool)

(declare-fun e!866633 () Bool)

(declare-fun tp!112399 () Bool)

(assert (=> b!1556010 (= e!866633 (and tp_is_empty!38351 tp!112399))))

(assert (=> b!1555984 (= tp!112396 e!866633)))

(assert (= (and b!1555984 (is-Cons!36432 (t!51164 l!1177))) b!1556010))

(push 1)

(assert (not b!1555996))

