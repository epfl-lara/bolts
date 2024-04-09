; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!113818 () Bool)

(assert start!113818)

(declare-fun k0!387 () (_ BitVec 64))

(declare-datatypes ((B!2194 0))(
  ( (B!2195 (val!18886 Int)) )
))
(declare-datatypes ((tuple2!24506 0))(
  ( (tuple2!24507 (_1!12263 (_ BitVec 64)) (_2!12263 B!2194)) )
))
(declare-datatypes ((List!31659 0))(
  ( (Nil!31656) (Cons!31655 (h!32864 tuple2!24506) (t!46324 List!31659)) )
))
(declare-datatypes ((ListLongMap!22175 0))(
  ( (ListLongMap!22176 (toList!11103 List!31659)) )
))
(declare-fun contains!9224 (ListLongMap!22175 (_ BitVec 64)) Bool)

(assert (=> start!113818 (contains!9224 (ListLongMap!22176 Nil!31656) k0!387)))

(assert (=> start!113818 true))

(declare-fun bs!38718 () Bool)

(assert (= bs!38718 start!113818))

(declare-fun m!1237341 () Bool)

(assert (=> bs!38718 m!1237341))

(check-sat (not start!113818))
(check-sat)
(get-model)

(declare-fun d!144771 () Bool)

(declare-fun e!768010 () Bool)

(assert (=> d!144771 e!768010))

(declare-fun res!895643 () Bool)

(assert (=> d!144771 (=> res!895643 e!768010)))

(declare-fun lt!596860 () Bool)

(assert (=> d!144771 (= res!895643 (not lt!596860))))

(declare-fun lt!596861 () Bool)

(assert (=> d!144771 (= lt!596860 lt!596861)))

(declare-datatypes ((Unit!44171 0))(
  ( (Unit!44172) )
))
(declare-fun lt!596863 () Unit!44171)

(declare-fun e!768011 () Unit!44171)

(assert (=> d!144771 (= lt!596863 e!768011)))

(declare-fun c!126633 () Bool)

(assert (=> d!144771 (= c!126633 lt!596861)))

(declare-fun containsKey!745 (List!31659 (_ BitVec 64)) Bool)

(assert (=> d!144771 (= lt!596861 (containsKey!745 (toList!11103 (ListLongMap!22176 Nil!31656)) k0!387))))

(assert (=> d!144771 (= (contains!9224 (ListLongMap!22176 Nil!31656) k0!387) lt!596860)))

(declare-fun b!1350024 () Bool)

(declare-fun lt!596862 () Unit!44171)

(assert (=> b!1350024 (= e!768011 lt!596862)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!490 (List!31659 (_ BitVec 64)) Unit!44171)

(assert (=> b!1350024 (= lt!596862 (lemmaContainsKeyImpliesGetValueByKeyDefined!490 (toList!11103 (ListLongMap!22176 Nil!31656)) k0!387))))

(declare-datatypes ((Option!778 0))(
  ( (Some!777 (v!21529 B!2194)) (None!776) )
))
(declare-fun isDefined!530 (Option!778) Bool)

(declare-fun getValueByKey!727 (List!31659 (_ BitVec 64)) Option!778)

(assert (=> b!1350024 (isDefined!530 (getValueByKey!727 (toList!11103 (ListLongMap!22176 Nil!31656)) k0!387))))

(declare-fun b!1350025 () Bool)

(declare-fun Unit!44177 () Unit!44171)

(assert (=> b!1350025 (= e!768011 Unit!44177)))

(declare-fun b!1350026 () Bool)

(assert (=> b!1350026 (= e!768010 (isDefined!530 (getValueByKey!727 (toList!11103 (ListLongMap!22176 Nil!31656)) k0!387)))))

(assert (= (and d!144771 c!126633) b!1350024))

(assert (= (and d!144771 (not c!126633)) b!1350025))

(assert (= (and d!144771 (not res!895643)) b!1350026))

(declare-fun m!1237349 () Bool)

(assert (=> d!144771 m!1237349))

(declare-fun m!1237353 () Bool)

(assert (=> b!1350024 m!1237353))

(declare-fun m!1237357 () Bool)

(assert (=> b!1350024 m!1237357))

(assert (=> b!1350024 m!1237357))

(declare-fun m!1237359 () Bool)

(assert (=> b!1350024 m!1237359))

(assert (=> b!1350026 m!1237357))

(assert (=> b!1350026 m!1237357))

(assert (=> b!1350026 m!1237359))

(assert (=> start!113818 d!144771))

(check-sat (not b!1350026) (not d!144771) (not b!1350024))
(check-sat)
(get-model)

(declare-fun d!144775 () Bool)

(declare-fun isEmpty!1104 (Option!778) Bool)

(assert (=> d!144775 (= (isDefined!530 (getValueByKey!727 (toList!11103 (ListLongMap!22176 Nil!31656)) k0!387)) (not (isEmpty!1104 (getValueByKey!727 (toList!11103 (ListLongMap!22176 Nil!31656)) k0!387))))))

(declare-fun bs!38720 () Bool)

(assert (= bs!38720 d!144775))

(assert (=> bs!38720 m!1237357))

(declare-fun m!1237369 () Bool)

(assert (=> bs!38720 m!1237369))

(assert (=> b!1350026 d!144775))

(declare-fun b!1350041 () Bool)

(declare-fun e!768019 () Option!778)

(assert (=> b!1350041 (= e!768019 None!776)))

(declare-fun b!1350039 () Bool)

(declare-fun e!768018 () Option!778)

(assert (=> b!1350039 (= e!768018 e!768019)))

(declare-fun c!126640 () Bool)

(get-info :version)

(assert (=> b!1350039 (= c!126640 (and ((_ is Cons!31655) (toList!11103 (ListLongMap!22176 Nil!31656))) (not (= (_1!12263 (h!32864 (toList!11103 (ListLongMap!22176 Nil!31656)))) k0!387))))))

(declare-fun b!1350038 () Bool)

(assert (=> b!1350038 (= e!768018 (Some!777 (_2!12263 (h!32864 (toList!11103 (ListLongMap!22176 Nil!31656))))))))

(declare-fun b!1350040 () Bool)

(assert (=> b!1350040 (= e!768019 (getValueByKey!727 (t!46324 (toList!11103 (ListLongMap!22176 Nil!31656))) k0!387))))

(declare-fun d!144777 () Bool)

(declare-fun c!126639 () Bool)

(assert (=> d!144777 (= c!126639 (and ((_ is Cons!31655) (toList!11103 (ListLongMap!22176 Nil!31656))) (= (_1!12263 (h!32864 (toList!11103 (ListLongMap!22176 Nil!31656)))) k0!387)))))

(assert (=> d!144777 (= (getValueByKey!727 (toList!11103 (ListLongMap!22176 Nil!31656)) k0!387) e!768018)))

(assert (= (and d!144777 c!126639) b!1350038))

(assert (= (and d!144777 (not c!126639)) b!1350039))

(assert (= (and b!1350039 c!126640) b!1350040))

(assert (= (and b!1350039 (not c!126640)) b!1350041))

(declare-fun m!1237371 () Bool)

(assert (=> b!1350040 m!1237371))

(assert (=> b!1350026 d!144777))

(declare-fun d!144781 () Bool)

(declare-fun res!895655 () Bool)

(declare-fun e!768030 () Bool)

(assert (=> d!144781 (=> res!895655 e!768030)))

(assert (=> d!144781 (= res!895655 (and ((_ is Cons!31655) (toList!11103 (ListLongMap!22176 Nil!31656))) (= (_1!12263 (h!32864 (toList!11103 (ListLongMap!22176 Nil!31656)))) k0!387)))))

(assert (=> d!144781 (= (containsKey!745 (toList!11103 (ListLongMap!22176 Nil!31656)) k0!387) e!768030)))

(declare-fun b!1350052 () Bool)

(declare-fun e!768031 () Bool)

(assert (=> b!1350052 (= e!768030 e!768031)))

(declare-fun res!895656 () Bool)

(assert (=> b!1350052 (=> (not res!895656) (not e!768031))))

(assert (=> b!1350052 (= res!895656 (and (or (not ((_ is Cons!31655) (toList!11103 (ListLongMap!22176 Nil!31656)))) (bvsle (_1!12263 (h!32864 (toList!11103 (ListLongMap!22176 Nil!31656)))) k0!387)) ((_ is Cons!31655) (toList!11103 (ListLongMap!22176 Nil!31656))) (bvslt (_1!12263 (h!32864 (toList!11103 (ListLongMap!22176 Nil!31656)))) k0!387)))))

(declare-fun b!1350053 () Bool)

(assert (=> b!1350053 (= e!768031 (containsKey!745 (t!46324 (toList!11103 (ListLongMap!22176 Nil!31656))) k0!387))))

(assert (= (and d!144781 (not res!895655)) b!1350052))

(assert (= (and b!1350052 res!895656) b!1350053))

(declare-fun m!1237375 () Bool)

(assert (=> b!1350053 m!1237375))

(assert (=> d!144771 d!144781))

(declare-fun d!144785 () Bool)

(assert (=> d!144785 (isDefined!530 (getValueByKey!727 (toList!11103 (ListLongMap!22176 Nil!31656)) k0!387))))

(declare-fun lt!596870 () Unit!44171)

(declare-fun choose!1996 (List!31659 (_ BitVec 64)) Unit!44171)

(assert (=> d!144785 (= lt!596870 (choose!1996 (toList!11103 (ListLongMap!22176 Nil!31656)) k0!387))))

(declare-fun e!768038 () Bool)

(assert (=> d!144785 e!768038))

(declare-fun res!895659 () Bool)

(assert (=> d!144785 (=> (not res!895659) (not e!768038))))

(declare-fun isStrictlySorted!881 (List!31659) Bool)

(assert (=> d!144785 (= res!895659 (isStrictlySorted!881 (toList!11103 (ListLongMap!22176 Nil!31656))))))

(assert (=> d!144785 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!490 (toList!11103 (ListLongMap!22176 Nil!31656)) k0!387) lt!596870)))

(declare-fun b!1350064 () Bool)

(assert (=> b!1350064 (= e!768038 (containsKey!745 (toList!11103 (ListLongMap!22176 Nil!31656)) k0!387))))

(assert (= (and d!144785 res!895659) b!1350064))

(assert (=> d!144785 m!1237357))

(assert (=> d!144785 m!1237357))

(assert (=> d!144785 m!1237359))

(declare-fun m!1237379 () Bool)

(assert (=> d!144785 m!1237379))

(declare-fun m!1237381 () Bool)

(assert (=> d!144785 m!1237381))

(assert (=> b!1350064 m!1237349))

(assert (=> b!1350024 d!144785))

(assert (=> b!1350024 d!144775))

(assert (=> b!1350024 d!144777))

(check-sat (not d!144775) (not b!1350040) (not d!144785) (not b!1350053) (not b!1350064))
(check-sat)
