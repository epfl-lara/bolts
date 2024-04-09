; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!136892 () Bool)

(assert start!136892)

(declare-fun b!1578757 () Bool)

(declare-fun e!880666 () Bool)

(declare-fun tp!114268 () Bool)

(assert (=> b!1578757 (= e!880666 tp!114268)))

(declare-fun b!1578759 () Bool)

(declare-fun e!880667 () Bool)

(declare-fun a0!51 () (_ BitVec 64))

(declare-fun a!525 () (_ BitVec 64))

(assert (=> b!1578759 (= e!880667 (= a0!51 a!525))))

(declare-fun b!1578760 () Bool)

(declare-fun res!1078820 () Bool)

(assert (=> b!1578760 (=> res!1078820 e!880667)))

(declare-datatypes ((B!2568 0))(
  ( (B!2569 (val!19646 Int)) )
))
(declare-datatypes ((tuple2!25558 0))(
  ( (tuple2!25559 (_1!12789 (_ BitVec 64)) (_2!12789 B!2568)) )
))
(declare-datatypes ((List!36927 0))(
  ( (Nil!36924) (Cons!36923 (h!38467 tuple2!25558) (t!51848 List!36927)) )
))
(declare-datatypes ((ListLongMap!22909 0))(
  ( (ListLongMap!22910 (toList!11470 List!36927)) )
))
(declare-fun lm!251 () ListLongMap!22909)

(declare-fun containsKey!875 (List!36927 (_ BitVec 64)) Bool)

(assert (=> b!1578760 (= res!1078820 (containsKey!875 (toList!11470 lm!251) a0!51))))

(declare-fun b!1578761 () Bool)

(declare-fun res!1078819 () Bool)

(declare-fun e!880668 () Bool)

(assert (=> b!1578761 (=> (not res!1078819) (not e!880668))))

(assert (=> b!1578761 (= res!1078819 (not (= a!525 a0!51)))))

(declare-fun b!1578758 () Bool)

(assert (=> b!1578758 (= e!880668 e!880667)))

(declare-fun res!1078817 () Bool)

(assert (=> b!1578758 (=> res!1078817 e!880667)))

(declare-fun isStrictlySorted!1025 (List!36927) Bool)

(assert (=> b!1578758 (= res!1078817 (not (isStrictlySorted!1025 (toList!11470 lm!251))))))

(declare-fun res!1078818 () Bool)

(assert (=> start!136892 (=> (not res!1078818) (not e!880668))))

(declare-fun contains!10455 (ListLongMap!22909 (_ BitVec 64)) Bool)

(assert (=> start!136892 (= res!1078818 (not (contains!10455 lm!251 a0!51)))))

(assert (=> start!136892 e!880668))

(declare-fun inv!58922 (ListLongMap!22909) Bool)

(assert (=> start!136892 (and (inv!58922 lm!251) e!880666)))

(assert (=> start!136892 true))

(assert (= (and start!136892 res!1078818) b!1578761))

(assert (= (and b!1578761 res!1078819) b!1578758))

(assert (= (and b!1578758 (not res!1078817)) b!1578760))

(assert (= (and b!1578760 (not res!1078820)) b!1578759))

(assert (= start!136892 b!1578757))

(declare-fun m!1450815 () Bool)

(assert (=> b!1578760 m!1450815))

(declare-fun m!1450817 () Bool)

(assert (=> b!1578758 m!1450817))

(declare-fun m!1450819 () Bool)

(assert (=> start!136892 m!1450819))

(declare-fun m!1450821 () Bool)

(assert (=> start!136892 m!1450821))

(push 1)

(assert (not b!1578760))

(assert (not start!136892))

(assert (not b!1578758))

(assert (not b!1578757))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!166091 () Bool)

(declare-fun res!1078837 () Bool)

(declare-fun e!880685 () Bool)

(assert (=> d!166091 (=> res!1078837 e!880685)))

(assert (=> d!166091 (= res!1078837 (and (is-Cons!36923 (toList!11470 lm!251)) (= (_1!12789 (h!38467 (toList!11470 lm!251))) a0!51)))))

(assert (=> d!166091 (= (containsKey!875 (toList!11470 lm!251) a0!51) e!880685)))

(declare-fun b!1578778 () Bool)

(declare-fun e!880686 () Bool)

(assert (=> b!1578778 (= e!880685 e!880686)))

(declare-fun res!1078838 () Bool)

(assert (=> b!1578778 (=> (not res!1078838) (not e!880686))))

(assert (=> b!1578778 (= res!1078838 (and (or (not (is-Cons!36923 (toList!11470 lm!251))) (bvsle (_1!12789 (h!38467 (toList!11470 lm!251))) a0!51)) (is-Cons!36923 (toList!11470 lm!251)) (bvslt (_1!12789 (h!38467 (toList!11470 lm!251))) a0!51)))))

(declare-fun b!1578779 () Bool)

(assert (=> b!1578779 (= e!880686 (containsKey!875 (t!51848 (toList!11470 lm!251)) a0!51))))

(assert (= (and d!166091 (not res!1078837)) b!1578778))

(assert (= (and b!1578778 res!1078838) b!1578779))

(declare-fun m!1450827 () Bool)

(assert (=> b!1578779 m!1450827))

(assert (=> b!1578760 d!166091))

(declare-fun d!166097 () Bool)

(declare-fun e!880704 () Bool)

(assert (=> d!166097 e!880704))

(declare-fun res!1078850 () Bool)

(assert (=> d!166097 (=> res!1078850 e!880704)))

(declare-fun lt!676275 () Bool)

(assert (=> d!166097 (= res!1078850 (not lt!676275))))

(declare-fun lt!676276 () Bool)

(assert (=> d!166097 (= lt!676275 lt!676276)))

(declare-datatypes ((Unit!52141 0))(
  ( (Unit!52142) )
))
(declare-fun lt!676274 () Unit!52141)

(declare-fun e!880703 () Unit!52141)

(assert (=> d!166097 (= lt!676274 e!880703)))

(declare-fun c!146253 () Bool)

(assert (=> d!166097 (= c!146253 lt!676276)))

(assert (=> d!166097 (= lt!676276 (containsKey!875 (toList!11470 lm!251) a0!51))))

(assert (=> d!166097 (= (contains!10455 lm!251 a0!51) lt!676275)))

(declare-fun b!1578801 () Bool)

(declare-fun lt!676273 () Unit!52141)

(assert (=> b!1578801 (= e!880703 lt!676273)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!537 (List!36927 (_ BitVec 64)) Unit!52141)

(assert (=> b!1578801 (= lt!676273 (lemmaContainsKeyImpliesGetValueByKeyDefined!537 (toList!11470 lm!251) a0!51))))

(declare-datatypes ((Option!877 0))(
  ( (Some!876 (v!22361 B!2568)) (None!875) )
))
(declare-fun isDefined!586 (Option!877) Bool)

(declare-fun getValueByKey!802 (List!36927 (_ BitVec 64)) Option!877)

(assert (=> b!1578801 (isDefined!586 (getValueByKey!802 (toList!11470 lm!251) a0!51))))

(declare-fun b!1578802 () Bool)

(declare-fun Unit!52145 () Unit!52141)

(assert (=> b!1578802 (= e!880703 Unit!52145)))

(declare-fun b!1578803 () Bool)

(assert (=> b!1578803 (= e!880704 (isDefined!586 (getValueByKey!802 (toList!11470 lm!251) a0!51)))))

(assert (= (and d!166097 c!146253) b!1578801))

(assert (= (and d!166097 (not c!146253)) b!1578802))

(assert (= (and d!166097 (not res!1078850)) b!1578803))

(assert (=> d!166097 m!1450815))

(declare-fun m!1450837 () Bool)

(assert (=> b!1578801 m!1450837))

(declare-fun m!1450839 () Bool)

(assert (=> b!1578801 m!1450839))

(assert (=> b!1578801 m!1450839))

(declare-fun m!1450841 () Bool)

(assert (=> b!1578801 m!1450841))

(assert (=> b!1578803 m!1450839))

(assert (=> b!1578803 m!1450839))

(assert (=> b!1578803 m!1450841))

(assert (=> start!136892 d!166097))

(declare-fun d!166103 () Bool)

(assert (=> d!166103 (= (inv!58922 lm!251) (isStrictlySorted!1025 (toList!11470 lm!251)))))

(declare-fun bs!45710 () Bool)

(assert (= bs!45710 d!166103))

(assert (=> bs!45710 m!1450817))

(assert (=> start!136892 d!166103))

(declare-fun d!166107 () Bool)

(declare-fun res!1078862 () Bool)

(declare-fun e!880719 () Bool)

(assert (=> d!166107 (=> res!1078862 e!880719)))

(assert (=> d!166107 (= res!1078862 (or (is-Nil!36924 (toList!11470 lm!251)) (is-Nil!36924 (t!51848 (toList!11470 lm!251)))))))

(assert (=> d!166107 (= (isStrictlySorted!1025 (toList!11470 lm!251)) e!880719)))

(declare-fun b!1578823 () Bool)

