; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!88450 () Bool)

(assert start!88450)

(declare-fun b!1017419 () Bool)

(declare-fun res!682487 () Bool)

(declare-fun e!572454 () Bool)

(assert (=> b!1017419 (=> (not res!682487) (not e!572454))))

(declare-datatypes ((B!1576 0))(
  ( (B!1577 (val!11872 Int)) )
))
(declare-datatypes ((tuple2!15380 0))(
  ( (tuple2!15381 (_1!7700 (_ BitVec 64)) (_2!7700 B!1576)) )
))
(declare-datatypes ((List!21674 0))(
  ( (Nil!21671) (Cons!21670 (h!22868 tuple2!15380) (t!30683 List!21674)) )
))
(declare-fun l!1036 () List!21674)

(declare-fun key!271 () (_ BitVec 64))

(declare-datatypes ((Option!621 0))(
  ( (Some!620 (v!14469 B!1576)) (None!619) )
))
(declare-fun isDefined!415 (Option!621) Bool)

(declare-fun getValueByKey!570 (List!21674 (_ BitVec 64)) Option!621)

(assert (=> b!1017419 (= res!682487 (isDefined!415 (getValueByKey!570 l!1036 key!271)))))

(declare-fun b!1017420 () Bool)

(declare-fun e!572455 () Bool)

(declare-fun tp_is_empty!23643 () Bool)

(declare-fun tp!70886 () Bool)

(assert (=> b!1017420 (= e!572455 (and tp_is_empty!23643 tp!70886))))

(declare-fun b!1017421 () Bool)

(assert (=> b!1017421 (= e!572454 (not true))))

(declare-fun containsKey!504 (List!21674 (_ BitVec 64)) Bool)

(assert (=> b!1017421 (containsKey!504 (t!30683 l!1036) key!271)))

(declare-datatypes ((Unit!33236 0))(
  ( (Unit!33237) )
))
(declare-fun lt!449436 () Unit!33236)

(declare-fun lemmaGetValueByKeyIsDefinedImpliesContainsKey!23 (List!21674 (_ BitVec 64)) Unit!33236)

(assert (=> b!1017421 (= lt!449436 (lemmaGetValueByKeyIsDefinedImpliesContainsKey!23 (t!30683 l!1036) key!271))))

(declare-fun res!682490 () Bool)

(assert (=> start!88450 (=> (not res!682490) (not e!572454))))

(declare-fun isStrictlySorted!630 (List!21674) Bool)

(assert (=> start!88450 (= res!682490 (isStrictlySorted!630 l!1036))))

(assert (=> start!88450 e!572454))

(assert (=> start!88450 e!572455))

(assert (=> start!88450 true))

(declare-fun b!1017422 () Bool)

(declare-fun res!682491 () Bool)

(assert (=> b!1017422 (=> (not res!682491) (not e!572454))))

(assert (=> b!1017422 (= res!682491 (isDefined!415 (getValueByKey!570 (t!30683 l!1036) key!271)))))

(declare-fun b!1017423 () Bool)

(declare-fun res!682489 () Bool)

(assert (=> b!1017423 (=> (not res!682489) (not e!572454))))

(get-info :version)

(assert (=> b!1017423 (= res!682489 (and ((_ is Cons!21670) l!1036) (not (= (_1!7700 (h!22868 l!1036)) key!271))))))

(declare-fun b!1017424 () Bool)

(declare-fun res!682488 () Bool)

(assert (=> b!1017424 (=> (not res!682488) (not e!572454))))

(assert (=> b!1017424 (= res!682488 (isStrictlySorted!630 (t!30683 l!1036)))))

(assert (= (and start!88450 res!682490) b!1017419))

(assert (= (and b!1017419 res!682487) b!1017423))

(assert (= (and b!1017423 res!682489) b!1017424))

(assert (= (and b!1017424 res!682488) b!1017422))

(assert (= (and b!1017422 res!682491) b!1017421))

(assert (= (and start!88450 ((_ is Cons!21670) l!1036)) b!1017420))

(declare-fun m!938919 () Bool)

(assert (=> b!1017424 m!938919))

(declare-fun m!938921 () Bool)

(assert (=> b!1017422 m!938921))

(assert (=> b!1017422 m!938921))

(declare-fun m!938923 () Bool)

(assert (=> b!1017422 m!938923))

(declare-fun m!938925 () Bool)

(assert (=> b!1017419 m!938925))

(assert (=> b!1017419 m!938925))

(declare-fun m!938927 () Bool)

(assert (=> b!1017419 m!938927))

(declare-fun m!938929 () Bool)

(assert (=> start!88450 m!938929))

(declare-fun m!938931 () Bool)

(assert (=> b!1017421 m!938931))

(declare-fun m!938933 () Bool)

(assert (=> b!1017421 m!938933))

(check-sat (not b!1017420) (not b!1017419) (not start!88450) (not b!1017421) (not b!1017422) (not b!1017424) tp_is_empty!23643)
(check-sat)
