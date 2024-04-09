; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!132564 () Bool)

(assert start!132564)

(declare-fun b!1553949 () Bool)

(declare-fun e!865270 () Bool)

(declare-fun a!523 () (_ BitVec 64))

(declare-fun a0!49 () (_ BitVec 64))

(assert (=> b!1553949 (= e!865270 (= a!523 a0!49))))

(declare-fun b!1553950 () Bool)

(declare-fun e!865271 () Bool)

(assert (=> b!1553950 (= e!865271 e!865270)))

(declare-fun res!1063622 () Bool)

(assert (=> b!1553950 (=> res!1063622 e!865270)))

(declare-datatypes ((B!2236 0))(
  ( (B!2237 (val!19204 Int)) )
))
(declare-datatypes ((tuple2!24924 0))(
  ( (tuple2!24925 (_1!12472 (_ BitVec 64)) (_2!12472 B!2236)) )
))
(declare-datatypes ((List!36384 0))(
  ( (Nil!36381) (Cons!36380 (h!37827 tuple2!24924) (t!51112 List!36384)) )
))
(declare-datatypes ((ListLongMap!22545 0))(
  ( (ListLongMap!22546 (toList!11288 List!36384)) )
))
(declare-fun lm!249 () ListLongMap!22545)

(declare-fun isStrictlySorted!897 (List!36384) Bool)

(assert (=> b!1553950 (= res!1063622 (not (isStrictlySorted!897 (toList!11288 lm!249))))))

(declare-fun b!1553951 () Bool)

(declare-fun e!865272 () Bool)

(declare-fun tp!112168 () Bool)

(assert (=> b!1553951 (= e!865272 tp!112168)))

(declare-fun res!1063623 () Bool)

(assert (=> start!132564 (=> (not res!1063623) (not e!865271))))

(declare-fun contains!10163 (ListLongMap!22545 (_ BitVec 64)) Bool)

(assert (=> start!132564 (= res!1063623 (contains!10163 lm!249 a0!49))))

(assert (=> start!132564 e!865271))

(declare-fun inv!57336 (ListLongMap!22545) Bool)

(assert (=> start!132564 (and (inv!57336 lm!249) e!865272)))

(assert (=> start!132564 true))

(declare-fun b!1553952 () Bool)

(declare-fun res!1063620 () Bool)

(assert (=> b!1553952 (=> (not res!1063620) (not e!865271))))

(declare-fun containsKey!769 (List!36384 (_ BitVec 64)) Bool)

(assert (=> b!1553952 (= res!1063620 (containsKey!769 (toList!11288 lm!249) a0!49))))

(declare-fun b!1553953 () Bool)

(declare-fun res!1063621 () Bool)

(assert (=> b!1553953 (=> (not res!1063621) (not e!865271))))

(assert (=> b!1553953 (= res!1063621 (not (= a0!49 a!523)))))

(assert (= (and start!132564 res!1063623) b!1553953))

(assert (= (and b!1553953 res!1063621) b!1553952))

(assert (= (and b!1553952 res!1063620) b!1553950))

(assert (= (and b!1553950 (not res!1063622)) b!1553949))

(assert (= start!132564 b!1553951))

(declare-fun m!1432505 () Bool)

(assert (=> b!1553950 m!1432505))

(declare-fun m!1432507 () Bool)

(assert (=> start!132564 m!1432507))

(declare-fun m!1432509 () Bool)

(assert (=> start!132564 m!1432509))

(declare-fun m!1432511 () Bool)

(assert (=> b!1553952 m!1432511))

(check-sat (not b!1553950) (not b!1553952) (not start!132564) (not b!1553951))
(check-sat)
(get-model)

(declare-fun d!161595 () Bool)

(declare-fun res!1063640 () Bool)

(declare-fun e!865286 () Bool)

(assert (=> d!161595 (=> res!1063640 e!865286)))

(get-info :version)

(assert (=> d!161595 (= res!1063640 (or ((_ is Nil!36381) (toList!11288 lm!249)) ((_ is Nil!36381) (t!51112 (toList!11288 lm!249)))))))

(assert (=> d!161595 (= (isStrictlySorted!897 (toList!11288 lm!249)) e!865286)))

(declare-fun b!1553973 () Bool)

(declare-fun e!865287 () Bool)

(assert (=> b!1553973 (= e!865286 e!865287)))

(declare-fun res!1063641 () Bool)

(assert (=> b!1553973 (=> (not res!1063641) (not e!865287))))

(assert (=> b!1553973 (= res!1063641 (bvslt (_1!12472 (h!37827 (toList!11288 lm!249))) (_1!12472 (h!37827 (t!51112 (toList!11288 lm!249))))))))

(declare-fun b!1553974 () Bool)

(assert (=> b!1553974 (= e!865287 (isStrictlySorted!897 (t!51112 (toList!11288 lm!249))))))

(assert (= (and d!161595 (not res!1063640)) b!1553973))

(assert (= (and b!1553973 res!1063641) b!1553974))

(declare-fun m!1432521 () Bool)

(assert (=> b!1553974 m!1432521))

(assert (=> b!1553950 d!161595))

(declare-fun d!161599 () Bool)

(declare-fun res!1063649 () Bool)

(declare-fun e!865298 () Bool)

(assert (=> d!161599 (=> res!1063649 e!865298)))

(assert (=> d!161599 (= res!1063649 (and ((_ is Cons!36380) (toList!11288 lm!249)) (= (_1!12472 (h!37827 (toList!11288 lm!249))) a0!49)))))

(assert (=> d!161599 (= (containsKey!769 (toList!11288 lm!249) a0!49) e!865298)))

(declare-fun b!1553988 () Bool)

(declare-fun e!865299 () Bool)

(assert (=> b!1553988 (= e!865298 e!865299)))

(declare-fun res!1063650 () Bool)

(assert (=> b!1553988 (=> (not res!1063650) (not e!865299))))

(assert (=> b!1553988 (= res!1063650 (and (or (not ((_ is Cons!36380) (toList!11288 lm!249))) (bvsle (_1!12472 (h!37827 (toList!11288 lm!249))) a0!49)) ((_ is Cons!36380) (toList!11288 lm!249)) (bvslt (_1!12472 (h!37827 (toList!11288 lm!249))) a0!49)))))

(declare-fun b!1553989 () Bool)

(assert (=> b!1553989 (= e!865299 (containsKey!769 (t!51112 (toList!11288 lm!249)) a0!49))))

(assert (= (and d!161599 (not res!1063649)) b!1553988))

(assert (= (and b!1553988 res!1063650) b!1553989))

(declare-fun m!1432529 () Bool)

(assert (=> b!1553989 m!1432529))

(assert (=> b!1553952 d!161599))

(declare-fun d!161603 () Bool)

(declare-fun e!865330 () Bool)

(assert (=> d!161603 e!865330))

(declare-fun res!1063674 () Bool)

(assert (=> d!161603 (=> res!1063674 e!865330)))

(declare-fun lt!669869 () Bool)

(assert (=> d!161603 (= res!1063674 (not lt!669869))))

(declare-fun lt!669871 () Bool)

(assert (=> d!161603 (= lt!669869 lt!669871)))

(declare-datatypes ((Unit!51717 0))(
  ( (Unit!51718) )
))
(declare-fun lt!669872 () Unit!51717)

(declare-fun e!865332 () Unit!51717)

(assert (=> d!161603 (= lt!669872 e!865332)))

(declare-fun c!143285 () Bool)

(assert (=> d!161603 (= c!143285 lt!669871)))

(assert (=> d!161603 (= lt!669871 (containsKey!769 (toList!11288 lm!249) a0!49))))

(assert (=> d!161603 (= (contains!10163 lm!249 a0!49) lt!669869)))

(declare-fun b!1554028 () Bool)

(declare-fun lt!669870 () Unit!51717)

(assert (=> b!1554028 (= e!865332 lt!669870)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!512 (List!36384 (_ BitVec 64)) Unit!51717)

(assert (=> b!1554028 (= lt!669870 (lemmaContainsKeyImpliesGetValueByKeyDefined!512 (toList!11288 lm!249) a0!49))))

(declare-datatypes ((Option!827 0))(
  ( (Some!826 (v!22007 B!2236)) (None!825) )
))
(declare-fun isDefined!561 (Option!827) Bool)

(declare-fun getValueByKey!752 (List!36384 (_ BitVec 64)) Option!827)

(assert (=> b!1554028 (isDefined!561 (getValueByKey!752 (toList!11288 lm!249) a0!49))))

(declare-fun b!1554029 () Bool)

(declare-fun Unit!51719 () Unit!51717)

(assert (=> b!1554029 (= e!865332 Unit!51719)))

(declare-fun b!1554030 () Bool)

(assert (=> b!1554030 (= e!865330 (isDefined!561 (getValueByKey!752 (toList!11288 lm!249) a0!49)))))

(assert (= (and d!161603 c!143285) b!1554028))

(assert (= (and d!161603 (not c!143285)) b!1554029))

(assert (= (and d!161603 (not res!1063674)) b!1554030))

(assert (=> d!161603 m!1432511))

(declare-fun m!1432543 () Bool)

(assert (=> b!1554028 m!1432543))

(declare-fun m!1432545 () Bool)

(assert (=> b!1554028 m!1432545))

(assert (=> b!1554028 m!1432545))

(declare-fun m!1432547 () Bool)

(assert (=> b!1554028 m!1432547))

(assert (=> b!1554030 m!1432545))

(assert (=> b!1554030 m!1432545))

(assert (=> b!1554030 m!1432547))

(assert (=> start!132564 d!161603))

(declare-fun d!161615 () Bool)

(assert (=> d!161615 (= (inv!57336 lm!249) (isStrictlySorted!897 (toList!11288 lm!249)))))

(declare-fun bs!44666 () Bool)

(assert (= bs!44666 d!161615))

(assert (=> bs!44666 m!1432505))

(assert (=> start!132564 d!161615))

(declare-fun b!1554041 () Bool)

(declare-fun e!865341 () Bool)

(declare-fun tp_is_empty!38247 () Bool)

(declare-fun tp!112177 () Bool)

(assert (=> b!1554041 (= e!865341 (and tp_is_empty!38247 tp!112177))))

(assert (=> b!1553951 (= tp!112168 e!865341)))

(assert (= (and b!1553951 ((_ is Cons!36380) (toList!11288 lm!249))) b!1554041))

(check-sat (not d!161615) (not b!1554030) tp_is_empty!38247 (not b!1554041) (not d!161603) (not b!1554028) (not b!1553989) (not b!1553974))
(check-sat)
