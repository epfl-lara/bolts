; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!88448 () Bool)

(assert start!88448)

(declare-fun b!1017401 () Bool)

(declare-fun res!682473 () Bool)

(declare-fun e!572448 () Bool)

(assert (=> b!1017401 (=> (not res!682473) (not e!572448))))

(declare-datatypes ((B!1574 0))(
  ( (B!1575 (val!11871 Int)) )
))
(declare-datatypes ((tuple2!15378 0))(
  ( (tuple2!15379 (_1!7699 (_ BitVec 64)) (_2!7699 B!1574)) )
))
(declare-datatypes ((List!21673 0))(
  ( (Nil!21670) (Cons!21669 (h!22867 tuple2!15378) (t!30682 List!21673)) )
))
(declare-fun l!1036 () List!21673)

(declare-fun key!271 () (_ BitVec 64))

(assert (=> b!1017401 (= res!682473 (and (is-Cons!21669 l!1036) (not (= (_1!7699 (h!22867 l!1036)) key!271))))))

(declare-fun b!1017402 () Bool)

(declare-fun res!682474 () Bool)

(assert (=> b!1017402 (=> (not res!682474) (not e!572448))))

(declare-datatypes ((Option!620 0))(
  ( (Some!619 (v!14468 B!1574)) (None!618) )
))
(declare-fun isDefined!414 (Option!620) Bool)

(declare-fun getValueByKey!569 (List!21673 (_ BitVec 64)) Option!620)

(assert (=> b!1017402 (= res!682474 (isDefined!414 (getValueByKey!569 (t!30682 l!1036) key!271)))))

(declare-fun b!1017403 () Bool)

(declare-fun res!682472 () Bool)

(assert (=> b!1017403 (=> (not res!682472) (not e!572448))))

(declare-fun isStrictlySorted!629 (List!21673) Bool)

(assert (=> b!1017403 (= res!682472 (isStrictlySorted!629 (t!30682 l!1036)))))

(declare-fun res!682475 () Bool)

(assert (=> start!88448 (=> (not res!682475) (not e!572448))))

(assert (=> start!88448 (= res!682475 (isStrictlySorted!629 l!1036))))

(assert (=> start!88448 e!572448))

(declare-fun e!572449 () Bool)

(assert (=> start!88448 e!572449))

(assert (=> start!88448 true))

(declare-fun b!1017404 () Bool)

(declare-fun res!682476 () Bool)

(assert (=> b!1017404 (=> (not res!682476) (not e!572448))))

(assert (=> b!1017404 (= res!682476 (isDefined!414 (getValueByKey!569 l!1036 key!271)))))

(declare-fun b!1017405 () Bool)

(assert (=> b!1017405 (= e!572448 (not true))))

(declare-fun containsKey!503 (List!21673 (_ BitVec 64)) Bool)

(assert (=> b!1017405 (containsKey!503 (t!30682 l!1036) key!271)))

(declare-datatypes ((Unit!33234 0))(
  ( (Unit!33235) )
))
(declare-fun lt!449433 () Unit!33234)

(declare-fun lemmaGetValueByKeyIsDefinedImpliesContainsKey!22 (List!21673 (_ BitVec 64)) Unit!33234)

(assert (=> b!1017405 (= lt!449433 (lemmaGetValueByKeyIsDefinedImpliesContainsKey!22 (t!30682 l!1036) key!271))))

(declare-fun b!1017406 () Bool)

(declare-fun tp_is_empty!23641 () Bool)

(declare-fun tp!70883 () Bool)

(assert (=> b!1017406 (= e!572449 (and tp_is_empty!23641 tp!70883))))

(assert (= (and start!88448 res!682475) b!1017404))

(assert (= (and b!1017404 res!682476) b!1017401))

(assert (= (and b!1017401 res!682473) b!1017403))

(assert (= (and b!1017403 res!682472) b!1017402))

(assert (= (and b!1017402 res!682474) b!1017405))

(assert (= (and start!88448 (is-Cons!21669 l!1036)) b!1017406))

(declare-fun m!938903 () Bool)

(assert (=> b!1017404 m!938903))

(assert (=> b!1017404 m!938903))

(declare-fun m!938905 () Bool)

(assert (=> b!1017404 m!938905))

(declare-fun m!938907 () Bool)

(assert (=> b!1017402 m!938907))

(assert (=> b!1017402 m!938907))

(declare-fun m!938909 () Bool)

(assert (=> b!1017402 m!938909))

(declare-fun m!938911 () Bool)

(assert (=> b!1017405 m!938911))

(declare-fun m!938913 () Bool)

(assert (=> b!1017405 m!938913))

(declare-fun m!938915 () Bool)

(assert (=> start!88448 m!938915))

(declare-fun m!938917 () Bool)

(assert (=> b!1017403 m!938917))

(push 1)

(assert (not b!1017404))

(assert (not b!1017402))

(assert tp_is_empty!23641)

(assert (not b!1017406))

(assert (not b!1017405))

(assert (not start!88448))

(assert (not b!1017403))

(check-sat)

