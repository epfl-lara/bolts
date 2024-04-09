; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!88452 () Bool)

(assert start!88452)

(declare-fun b!1017437 () Bool)

(declare-fun e!572460 () Bool)

(assert (=> b!1017437 (= e!572460 (not true))))

(declare-datatypes ((B!1578 0))(
  ( (B!1579 (val!11873 Int)) )
))
(declare-datatypes ((tuple2!15382 0))(
  ( (tuple2!15383 (_1!7701 (_ BitVec 64)) (_2!7701 B!1578)) )
))
(declare-datatypes ((List!21675 0))(
  ( (Nil!21672) (Cons!21671 (h!22869 tuple2!15382) (t!30684 List!21675)) )
))
(declare-fun l!1036 () List!21675)

(declare-fun key!271 () (_ BitVec 64))

(declare-fun containsKey!505 (List!21675 (_ BitVec 64)) Bool)

(assert (=> b!1017437 (containsKey!505 (t!30684 l!1036) key!271)))

(declare-datatypes ((Unit!33238 0))(
  ( (Unit!33239) )
))
(declare-fun lt!449439 () Unit!33238)

(declare-fun lemmaGetValueByKeyIsDefinedImpliesContainsKey!24 (List!21675 (_ BitVec 64)) Unit!33238)

(assert (=> b!1017437 (= lt!449439 (lemmaGetValueByKeyIsDefinedImpliesContainsKey!24 (t!30684 l!1036) key!271))))

(declare-fun b!1017438 () Bool)

(declare-fun res!682503 () Bool)

(assert (=> b!1017438 (=> (not res!682503) (not e!572460))))

(declare-datatypes ((Option!622 0))(
  ( (Some!621 (v!14470 B!1578)) (None!620) )
))
(declare-fun isDefined!416 (Option!622) Bool)

(declare-fun getValueByKey!571 (List!21675 (_ BitVec 64)) Option!622)

(assert (=> b!1017438 (= res!682503 (isDefined!416 (getValueByKey!571 (t!30684 l!1036) key!271)))))

(declare-fun b!1017440 () Bool)

(declare-fun e!572461 () Bool)

(declare-fun tp_is_empty!23645 () Bool)

(declare-fun tp!70889 () Bool)

(assert (=> b!1017440 (= e!572461 (and tp_is_empty!23645 tp!70889))))

(declare-fun b!1017441 () Bool)

(declare-fun res!682506 () Bool)

(assert (=> b!1017441 (=> (not res!682506) (not e!572460))))

(assert (=> b!1017441 (= res!682506 (and (is-Cons!21671 l!1036) (not (= (_1!7701 (h!22869 l!1036)) key!271))))))

(declare-fun b!1017442 () Bool)

(declare-fun res!682504 () Bool)

(assert (=> b!1017442 (=> (not res!682504) (not e!572460))))

(assert (=> b!1017442 (= res!682504 (isDefined!416 (getValueByKey!571 l!1036 key!271)))))

(declare-fun b!1017439 () Bool)

(declare-fun res!682502 () Bool)

(assert (=> b!1017439 (=> (not res!682502) (not e!572460))))

(declare-fun isStrictlySorted!631 (List!21675) Bool)

(assert (=> b!1017439 (= res!682502 (isStrictlySorted!631 (t!30684 l!1036)))))

(declare-fun res!682505 () Bool)

(assert (=> start!88452 (=> (not res!682505) (not e!572460))))

(assert (=> start!88452 (= res!682505 (isStrictlySorted!631 l!1036))))

(assert (=> start!88452 e!572460))

(assert (=> start!88452 e!572461))

(assert (=> start!88452 true))

(assert (= (and start!88452 res!682505) b!1017442))

(assert (= (and b!1017442 res!682504) b!1017441))

(assert (= (and b!1017441 res!682506) b!1017439))

(assert (= (and b!1017439 res!682502) b!1017438))

(assert (= (and b!1017438 res!682503) b!1017437))

(assert (= (and start!88452 (is-Cons!21671 l!1036)) b!1017440))

(declare-fun m!938935 () Bool)

(assert (=> b!1017439 m!938935))

(declare-fun m!938937 () Bool)

(assert (=> b!1017442 m!938937))

(assert (=> b!1017442 m!938937))

(declare-fun m!938939 () Bool)

(assert (=> b!1017442 m!938939))

(declare-fun m!938941 () Bool)

(assert (=> b!1017437 m!938941))

(declare-fun m!938943 () Bool)

(assert (=> b!1017437 m!938943))

(declare-fun m!938945 () Bool)

(assert (=> start!88452 m!938945))

(declare-fun m!938947 () Bool)

(assert (=> b!1017438 m!938947))

(assert (=> b!1017438 m!938947))

(declare-fun m!938949 () Bool)

(assert (=> b!1017438 m!938949))

(push 1)

(assert tp_is_empty!23645)

(assert (not b!1017442))

(assert (not start!88452))

(assert (not b!1017437))

(assert (not b!1017438))

(assert (not b!1017439))

(assert (not b!1017440))

(check-sat)

