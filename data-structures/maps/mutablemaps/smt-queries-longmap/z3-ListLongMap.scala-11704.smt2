; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!136890 () Bool)

(assert start!136890)

(declare-fun b!1578742 () Bool)

(declare-fun e!880657 () Bool)

(declare-fun a0!51 () (_ BitVec 64))

(declare-fun a!525 () (_ BitVec 64))

(assert (=> b!1578742 (= e!880657 (= a0!51 a!525))))

(declare-fun b!1578743 () Bool)

(declare-fun res!1078806 () Bool)

(assert (=> b!1578743 (=> res!1078806 e!880657)))

(declare-datatypes ((B!2566 0))(
  ( (B!2567 (val!19645 Int)) )
))
(declare-datatypes ((tuple2!25556 0))(
  ( (tuple2!25557 (_1!12788 (_ BitVec 64)) (_2!12788 B!2566)) )
))
(declare-datatypes ((List!36926 0))(
  ( (Nil!36923) (Cons!36922 (h!38466 tuple2!25556) (t!51847 List!36926)) )
))
(declare-datatypes ((ListLongMap!22907 0))(
  ( (ListLongMap!22908 (toList!11469 List!36926)) )
))
(declare-fun lm!251 () ListLongMap!22907)

(declare-fun containsKey!874 (List!36926 (_ BitVec 64)) Bool)

(assert (=> b!1578743 (= res!1078806 (containsKey!874 (toList!11469 lm!251) a0!51))))

(declare-fun b!1578744 () Bool)

(declare-fun e!880658 () Bool)

(declare-fun tp!114265 () Bool)

(assert (=> b!1578744 (= e!880658 tp!114265)))

(declare-fun b!1578745 () Bool)

(declare-fun res!1078808 () Bool)

(declare-fun e!880659 () Bool)

(assert (=> b!1578745 (=> (not res!1078808) (not e!880659))))

(assert (=> b!1578745 (= res!1078808 (not (= a!525 a0!51)))))

(declare-fun b!1578746 () Bool)

(assert (=> b!1578746 (= e!880659 e!880657)))

(declare-fun res!1078805 () Bool)

(assert (=> b!1578746 (=> res!1078805 e!880657)))

(declare-fun isStrictlySorted!1024 (List!36926) Bool)

(assert (=> b!1578746 (= res!1078805 (not (isStrictlySorted!1024 (toList!11469 lm!251))))))

(declare-fun res!1078807 () Bool)

(assert (=> start!136890 (=> (not res!1078807) (not e!880659))))

(declare-fun contains!10454 (ListLongMap!22907 (_ BitVec 64)) Bool)

(assert (=> start!136890 (= res!1078807 (not (contains!10454 lm!251 a0!51)))))

(assert (=> start!136890 e!880659))

(declare-fun inv!58921 (ListLongMap!22907) Bool)

(assert (=> start!136890 (and (inv!58921 lm!251) e!880658)))

(assert (=> start!136890 true))

(assert (= (and start!136890 res!1078807) b!1578745))

(assert (= (and b!1578745 res!1078808) b!1578746))

(assert (= (and b!1578746 (not res!1078805)) b!1578743))

(assert (= (and b!1578743 (not res!1078806)) b!1578742))

(assert (= start!136890 b!1578744))

(declare-fun m!1450807 () Bool)

(assert (=> b!1578743 m!1450807))

(declare-fun m!1450809 () Bool)

(assert (=> b!1578746 m!1450809))

(declare-fun m!1450811 () Bool)

(assert (=> start!136890 m!1450811))

(declare-fun m!1450813 () Bool)

(assert (=> start!136890 m!1450813))

(check-sat (not b!1578746) (not start!136890) (not b!1578743) (not b!1578744))
(check-sat)
(get-model)

(declare-fun d!166089 () Bool)

(declare-fun res!1078833 () Bool)

(declare-fun e!880681 () Bool)

(assert (=> d!166089 (=> res!1078833 e!880681)))

(get-info :version)

(assert (=> d!166089 (= res!1078833 (or ((_ is Nil!36923) (toList!11469 lm!251)) ((_ is Nil!36923) (t!51847 (toList!11469 lm!251)))))))

(assert (=> d!166089 (= (isStrictlySorted!1024 (toList!11469 lm!251)) e!880681)))

(declare-fun b!1578774 () Bool)

(declare-fun e!880682 () Bool)

(assert (=> b!1578774 (= e!880681 e!880682)))

(declare-fun res!1078834 () Bool)

(assert (=> b!1578774 (=> (not res!1078834) (not e!880682))))

(assert (=> b!1578774 (= res!1078834 (bvslt (_1!12788 (h!38466 (toList!11469 lm!251))) (_1!12788 (h!38466 (t!51847 (toList!11469 lm!251))))))))

(declare-fun b!1578775 () Bool)

(assert (=> b!1578775 (= e!880682 (isStrictlySorted!1024 (t!51847 (toList!11469 lm!251))))))

(assert (= (and d!166089 (not res!1078833)) b!1578774))

(assert (= (and b!1578774 res!1078834) b!1578775))

(declare-fun m!1450823 () Bool)

(assert (=> b!1578775 m!1450823))

(assert (=> b!1578746 d!166089))

(declare-fun d!166093 () Bool)

(declare-fun e!880702 () Bool)

(assert (=> d!166093 e!880702))

(declare-fun res!1078849 () Bool)

(assert (=> d!166093 (=> res!1078849 e!880702)))

(declare-fun lt!676270 () Bool)

(assert (=> d!166093 (= res!1078849 (not lt!676270))))

(declare-fun lt!676271 () Bool)

(assert (=> d!166093 (= lt!676270 lt!676271)))

(declare-datatypes ((Unit!52138 0))(
  ( (Unit!52139) )
))
(declare-fun lt!676272 () Unit!52138)

(declare-fun e!880701 () Unit!52138)

(assert (=> d!166093 (= lt!676272 e!880701)))

(declare-fun c!146252 () Bool)

(assert (=> d!166093 (= c!146252 lt!676271)))

(assert (=> d!166093 (= lt!676271 (containsKey!874 (toList!11469 lm!251) a0!51))))

(assert (=> d!166093 (= (contains!10454 lm!251 a0!51) lt!676270)))

(declare-fun b!1578798 () Bool)

(declare-fun lt!676269 () Unit!52138)

(assert (=> b!1578798 (= e!880701 lt!676269)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!536 (List!36926 (_ BitVec 64)) Unit!52138)

(assert (=> b!1578798 (= lt!676269 (lemmaContainsKeyImpliesGetValueByKeyDefined!536 (toList!11469 lm!251) a0!51))))

(declare-datatypes ((Option!876 0))(
  ( (Some!875 (v!22360 B!2566)) (None!874) )
))
(declare-fun isDefined!585 (Option!876) Bool)

(declare-fun getValueByKey!801 (List!36926 (_ BitVec 64)) Option!876)

(assert (=> b!1578798 (isDefined!585 (getValueByKey!801 (toList!11469 lm!251) a0!51))))

(declare-fun b!1578799 () Bool)

(declare-fun Unit!52140 () Unit!52138)

(assert (=> b!1578799 (= e!880701 Unit!52140)))

(declare-fun b!1578800 () Bool)

(assert (=> b!1578800 (= e!880702 (isDefined!585 (getValueByKey!801 (toList!11469 lm!251) a0!51)))))

(assert (= (and d!166093 c!146252) b!1578798))

(assert (= (and d!166093 (not c!146252)) b!1578799))

(assert (= (and d!166093 (not res!1078849)) b!1578800))

(assert (=> d!166093 m!1450807))

(declare-fun m!1450831 () Bool)

(assert (=> b!1578798 m!1450831))

(declare-fun m!1450833 () Bool)

(assert (=> b!1578798 m!1450833))

(assert (=> b!1578798 m!1450833))

(declare-fun m!1450835 () Bool)

(assert (=> b!1578798 m!1450835))

(assert (=> b!1578800 m!1450833))

(assert (=> b!1578800 m!1450833))

(assert (=> b!1578800 m!1450835))

(assert (=> start!136890 d!166093))

(declare-fun d!166101 () Bool)

(assert (=> d!166101 (= (inv!58921 lm!251) (isStrictlySorted!1024 (toList!11469 lm!251)))))

(declare-fun bs!45709 () Bool)

(assert (= bs!45709 d!166101))

(assert (=> bs!45709 m!1450809))

(assert (=> start!136890 d!166101))

(declare-fun d!166105 () Bool)

(declare-fun res!1078864 () Bool)

(declare-fun e!880723 () Bool)

(assert (=> d!166105 (=> res!1078864 e!880723)))

(assert (=> d!166105 (= res!1078864 (and ((_ is Cons!36922) (toList!11469 lm!251)) (= (_1!12788 (h!38466 (toList!11469 lm!251))) a0!51)))))

(assert (=> d!166105 (= (containsKey!874 (toList!11469 lm!251) a0!51) e!880723)))

(declare-fun b!1578827 () Bool)

(declare-fun e!880724 () Bool)

(assert (=> b!1578827 (= e!880723 e!880724)))

(declare-fun res!1078865 () Bool)

(assert (=> b!1578827 (=> (not res!1078865) (not e!880724))))

(assert (=> b!1578827 (= res!1078865 (and (or (not ((_ is Cons!36922) (toList!11469 lm!251))) (bvsle (_1!12788 (h!38466 (toList!11469 lm!251))) a0!51)) ((_ is Cons!36922) (toList!11469 lm!251)) (bvslt (_1!12788 (h!38466 (toList!11469 lm!251))) a0!51)))))

(declare-fun b!1578828 () Bool)

(assert (=> b!1578828 (= e!880724 (containsKey!874 (t!51847 (toList!11469 lm!251)) a0!51))))

(assert (= (and d!166105 (not res!1078864)) b!1578827))

(assert (= (and b!1578827 res!1078865) b!1578828))

(declare-fun m!1450851 () Bool)

(assert (=> b!1578828 m!1450851))

(assert (=> b!1578743 d!166105))

(declare-fun b!1578839 () Bool)

(declare-fun e!880731 () Bool)

(declare-fun tp_is_empty!39113 () Bool)

(declare-fun tp!114277 () Bool)

(assert (=> b!1578839 (= e!880731 (and tp_is_empty!39113 tp!114277))))

(assert (=> b!1578744 (= tp!114265 e!880731)))

(assert (= (and b!1578744 ((_ is Cons!36922) (toList!11469 lm!251))) b!1578839))

(check-sat (not d!166093) (not b!1578800) (not b!1578775) (not b!1578839) tp_is_empty!39113 (not d!166101) (not b!1578828) (not b!1578798))
(check-sat)
