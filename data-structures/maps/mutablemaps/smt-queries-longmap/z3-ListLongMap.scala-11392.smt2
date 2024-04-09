; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!132540 () Bool)

(assert start!132540)

(declare-fun res!1063566 () Bool)

(declare-fun e!865203 () Bool)

(assert (=> start!132540 (=> (not res!1063566) (not e!865203))))

(declare-datatypes ((B!2230 0))(
  ( (B!2231 (val!19201 Int)) )
))
(declare-datatypes ((tuple2!24918 0))(
  ( (tuple2!24919 (_1!12469 (_ BitVec 64)) (_2!12469 B!2230)) )
))
(declare-datatypes ((List!36381 0))(
  ( (Nil!36378) (Cons!36377 (h!37824 tuple2!24918) (t!51109 List!36381)) )
))
(declare-datatypes ((ListLongMap!22539 0))(
  ( (ListLongMap!22540 (toList!11285 List!36381)) )
))
(declare-fun lm!249 () ListLongMap!22539)

(declare-fun a0!49 () (_ BitVec 64))

(declare-fun contains!10160 (ListLongMap!22539 (_ BitVec 64)) Bool)

(assert (=> start!132540 (= res!1063566 (contains!10160 lm!249 a0!49))))

(assert (=> start!132540 e!865203))

(declare-fun e!865202 () Bool)

(declare-fun inv!57328 (ListLongMap!22539) Bool)

(assert (=> start!132540 (and (inv!57328 lm!249) e!865202)))

(assert (=> start!132540 true))

(declare-fun b!1553852 () Bool)

(declare-fun res!1063565 () Bool)

(assert (=> b!1553852 (=> (not res!1063565) (not e!865203))))

(declare-fun a!523 () (_ BitVec 64))

(assert (=> b!1553852 (= res!1063565 (not (= a0!49 a!523)))))

(declare-fun b!1553853 () Bool)

(declare-fun containsKey!766 (List!36381 (_ BitVec 64)) Bool)

(assert (=> b!1553853 (= e!865203 (not (containsKey!766 (toList!11285 lm!249) a0!49)))))

(declare-fun b!1553854 () Bool)

(declare-fun tp!112150 () Bool)

(assert (=> b!1553854 (= e!865202 tp!112150)))

(assert (= (and start!132540 res!1063566) b!1553852))

(assert (= (and b!1553852 res!1063565) b!1553853))

(assert (= start!132540 b!1553854))

(declare-fun m!1432455 () Bool)

(assert (=> start!132540 m!1432455))

(declare-fun m!1432457 () Bool)

(assert (=> start!132540 m!1432457))

(declare-fun m!1432459 () Bool)

(assert (=> b!1553853 m!1432459))

(check-sat (not b!1553853) (not start!132540) (not b!1553854))
(check-sat)
(get-model)

(declare-fun d!161575 () Bool)

(declare-fun res!1063583 () Bool)

(declare-fun e!865220 () Bool)

(assert (=> d!161575 (=> res!1063583 e!865220)))

(get-info :version)

(assert (=> d!161575 (= res!1063583 (and ((_ is Cons!36377) (toList!11285 lm!249)) (= (_1!12469 (h!37824 (toList!11285 lm!249))) a0!49)))))

(assert (=> d!161575 (= (containsKey!766 (toList!11285 lm!249) a0!49) e!865220)))

(declare-fun b!1553874 () Bool)

(declare-fun e!865221 () Bool)

(assert (=> b!1553874 (= e!865220 e!865221)))

(declare-fun res!1063584 () Bool)

(assert (=> b!1553874 (=> (not res!1063584) (not e!865221))))

(assert (=> b!1553874 (= res!1063584 (and (or (not ((_ is Cons!36377) (toList!11285 lm!249))) (bvsle (_1!12469 (h!37824 (toList!11285 lm!249))) a0!49)) ((_ is Cons!36377) (toList!11285 lm!249)) (bvslt (_1!12469 (h!37824 (toList!11285 lm!249))) a0!49)))))

(declare-fun b!1553875 () Bool)

(assert (=> b!1553875 (= e!865221 (containsKey!766 (t!51109 (toList!11285 lm!249)) a0!49))))

(assert (= (and d!161575 (not res!1063583)) b!1553874))

(assert (= (and b!1553874 res!1063584) b!1553875))

(declare-fun m!1432467 () Bool)

(assert (=> b!1553875 m!1432467))

(assert (=> b!1553853 d!161575))

(declare-fun d!161579 () Bool)

(declare-fun e!865243 () Bool)

(assert (=> d!161579 e!865243))

(declare-fun res!1063598 () Bool)

(assert (=> d!161579 (=> res!1063598 e!865243)))

(declare-fun lt!669832 () Bool)

(assert (=> d!161579 (= res!1063598 (not lt!669832))))

(declare-fun lt!669830 () Bool)

(assert (=> d!161579 (= lt!669832 lt!669830)))

(declare-datatypes ((Unit!51702 0))(
  ( (Unit!51703) )
))
(declare-fun lt!669829 () Unit!51702)

(declare-fun e!865242 () Unit!51702)

(assert (=> d!161579 (= lt!669829 e!865242)))

(declare-fun c!143275 () Bool)

(assert (=> d!161579 (= c!143275 lt!669830)))

(assert (=> d!161579 (= lt!669830 (containsKey!766 (toList!11285 lm!249) a0!49))))

(assert (=> d!161579 (= (contains!10160 lm!249 a0!49) lt!669832)))

(declare-fun b!1553903 () Bool)

(declare-fun lt!669831 () Unit!51702)

(assert (=> b!1553903 (= e!865242 lt!669831)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!507 (List!36381 (_ BitVec 64)) Unit!51702)

(assert (=> b!1553903 (= lt!669831 (lemmaContainsKeyImpliesGetValueByKeyDefined!507 (toList!11285 lm!249) a0!49))))

(declare-datatypes ((Option!822 0))(
  ( (Some!821 (v!22002 B!2230)) (None!820) )
))
(declare-fun isDefined!556 (Option!822) Bool)

(declare-fun getValueByKey!747 (List!36381 (_ BitVec 64)) Option!822)

(assert (=> b!1553903 (isDefined!556 (getValueByKey!747 (toList!11285 lm!249) a0!49))))

(declare-fun b!1553904 () Bool)

(declare-fun Unit!51708 () Unit!51702)

(assert (=> b!1553904 (= e!865242 Unit!51708)))

(declare-fun b!1553905 () Bool)

(assert (=> b!1553905 (= e!865243 (isDefined!556 (getValueByKey!747 (toList!11285 lm!249) a0!49)))))

(assert (= (and d!161579 c!143275) b!1553903))

(assert (= (and d!161579 (not c!143275)) b!1553904))

(assert (= (and d!161579 (not res!1063598)) b!1553905))

(assert (=> d!161579 m!1432459))

(declare-fun m!1432477 () Bool)

(assert (=> b!1553903 m!1432477))

(declare-fun m!1432481 () Bool)

(assert (=> b!1553903 m!1432481))

(assert (=> b!1553903 m!1432481))

(declare-fun m!1432483 () Bool)

(assert (=> b!1553903 m!1432483))

(assert (=> b!1553905 m!1432481))

(assert (=> b!1553905 m!1432481))

(assert (=> b!1553905 m!1432483))

(assert (=> start!132540 d!161579))

(declare-fun d!161587 () Bool)

(declare-fun isStrictlySorted!893 (List!36381) Bool)

(assert (=> d!161587 (= (inv!57328 lm!249) (isStrictlySorted!893 (toList!11285 lm!249)))))

(declare-fun bs!44659 () Bool)

(assert (= bs!44659 d!161587))

(declare-fun m!1432493 () Bool)

(assert (=> bs!44659 m!1432493))

(assert (=> start!132540 d!161587))

(declare-fun b!1553918 () Bool)

(declare-fun e!865251 () Bool)

(declare-fun tp_is_empty!38241 () Bool)

(declare-fun tp!112159 () Bool)

(assert (=> b!1553918 (= e!865251 (and tp_is_empty!38241 tp!112159))))

(assert (=> b!1553854 (= tp!112150 e!865251)))

(assert (= (and b!1553854 ((_ is Cons!36377) (toList!11285 lm!249))) b!1553918))

(check-sat tp_is_empty!38241 (not d!161587) (not b!1553875) (not b!1553905) (not b!1553918) (not d!161579) (not b!1553903))
(check-sat)
