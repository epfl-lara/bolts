; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!132432 () Bool)

(assert start!132432)

(declare-fun res!1063268 () Bool)

(declare-fun e!864843 () Bool)

(assert (=> start!132432 (=> (not res!1063268) (not e!864843))))

(declare-datatypes ((B!2200 0))(
  ( (B!2201 (val!19186 Int)) )
))
(declare-datatypes ((tuple2!24888 0))(
  ( (tuple2!24889 (_1!12454 (_ BitVec 64)) (_2!12454 B!2200)) )
))
(declare-datatypes ((List!36366 0))(
  ( (Nil!36363) (Cons!36362 (h!37809 tuple2!24888) (t!51094 List!36366)) )
))
(declare-datatypes ((ListLongMap!22509 0))(
  ( (ListLongMap!22510 (toList!11270 List!36366)) )
))
(declare-fun lm!249 () ListLongMap!22509)

(declare-fun a0!49 () (_ BitVec 64))

(declare-fun contains!10142 (ListLongMap!22509 (_ BitVec 64)) Bool)

(assert (=> start!132432 (= res!1063268 (contains!10142 lm!249 a0!49))))

(assert (=> start!132432 e!864843))

(declare-fun e!864842 () Bool)

(declare-fun inv!57288 (ListLongMap!22509) Bool)

(assert (=> start!132432 (and (inv!57288 lm!249) e!864842)))

(assert (=> start!132432 true))

(declare-fun b!1553318 () Bool)

(declare-fun res!1063269 () Bool)

(assert (=> b!1553318 (=> (not res!1063269) (not e!864843))))

(declare-fun a!523 () (_ BitVec 64))

(assert (=> b!1553318 (= res!1063269 (not (= a0!49 a!523)))))

(declare-fun b!1553319 () Bool)

(declare-fun isStrictlySorted!885 (List!36366) Bool)

(assert (=> b!1553319 (= e!864843 (not (isStrictlySorted!885 (toList!11270 lm!249))))))

(declare-fun b!1553320 () Bool)

(declare-fun tp!112087 () Bool)

(assert (=> b!1553320 (= e!864842 tp!112087)))

(assert (= (and start!132432 res!1063268) b!1553318))

(assert (= (and b!1553318 res!1063269) b!1553319))

(assert (= start!132432 b!1553320))

(declare-fun m!1432053 () Bool)

(assert (=> start!132432 m!1432053))

(declare-fun m!1432055 () Bool)

(assert (=> start!132432 m!1432055))

(declare-fun m!1432057 () Bool)

(assert (=> b!1553319 m!1432057))

(check-sat (not start!132432) (not b!1553319) (not b!1553320))
(check-sat)
(get-model)

(declare-fun d!161469 () Bool)

(declare-fun e!864867 () Bool)

(assert (=> d!161469 e!864867))

(declare-fun res!1063287 () Bool)

(assert (=> d!161469 (=> res!1063287 e!864867)))

(declare-fun lt!669604 () Bool)

(assert (=> d!161469 (= res!1063287 (not lt!669604))))

(declare-fun lt!669605 () Bool)

(assert (=> d!161469 (= lt!669604 lt!669605)))

(declare-datatypes ((Unit!51671 0))(
  ( (Unit!51672) )
))
(declare-fun lt!669602 () Unit!51671)

(declare-fun e!864866 () Unit!51671)

(assert (=> d!161469 (= lt!669602 e!864866)))

(declare-fun c!143192 () Bool)

(assert (=> d!161469 (= c!143192 lt!669605)))

(declare-fun containsKey!754 (List!36366 (_ BitVec 64)) Bool)

(assert (=> d!161469 (= lt!669605 (containsKey!754 (toList!11270 lm!249) a0!49))))

(assert (=> d!161469 (= (contains!10142 lm!249 a0!49) lt!669604)))

(declare-fun b!1553351 () Bool)

(declare-fun lt!669603 () Unit!51671)

(assert (=> b!1553351 (= e!864866 lt!669603)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!499 (List!36366 (_ BitVec 64)) Unit!51671)

(assert (=> b!1553351 (= lt!669603 (lemmaContainsKeyImpliesGetValueByKeyDefined!499 (toList!11270 lm!249) a0!49))))

(declare-datatypes ((Option!811 0))(
  ( (Some!810 (v!21991 B!2200)) (None!809) )
))
(declare-fun isDefined!548 (Option!811) Bool)

(declare-fun getValueByKey!736 (List!36366 (_ BitVec 64)) Option!811)

(assert (=> b!1553351 (isDefined!548 (getValueByKey!736 (toList!11270 lm!249) a0!49))))

(declare-fun b!1553352 () Bool)

(declare-fun Unit!51674 () Unit!51671)

(assert (=> b!1553352 (= e!864866 Unit!51674)))

(declare-fun b!1553353 () Bool)

(assert (=> b!1553353 (= e!864867 (isDefined!548 (getValueByKey!736 (toList!11270 lm!249) a0!49)))))

(assert (= (and d!161469 c!143192) b!1553351))

(assert (= (and d!161469 (not c!143192)) b!1553352))

(assert (= (and d!161469 (not res!1063287)) b!1553353))

(declare-fun m!1432075 () Bool)

(assert (=> d!161469 m!1432075))

(declare-fun m!1432077 () Bool)

(assert (=> b!1553351 m!1432077))

(declare-fun m!1432079 () Bool)

(assert (=> b!1553351 m!1432079))

(assert (=> b!1553351 m!1432079))

(declare-fun m!1432081 () Bool)

(assert (=> b!1553351 m!1432081))

(assert (=> b!1553353 m!1432079))

(assert (=> b!1553353 m!1432079))

(assert (=> b!1553353 m!1432081))

(assert (=> start!132432 d!161469))

(declare-fun d!161479 () Bool)

(assert (=> d!161479 (= (inv!57288 lm!249) (isStrictlySorted!885 (toList!11270 lm!249)))))

(declare-fun bs!44635 () Bool)

(assert (= bs!44635 d!161479))

(assert (=> bs!44635 m!1432057))

(assert (=> start!132432 d!161479))

(declare-fun d!161481 () Bool)

(declare-fun res!1063300 () Bool)

(declare-fun e!864885 () Bool)

(assert (=> d!161481 (=> res!1063300 e!864885)))

(get-info :version)

(assert (=> d!161481 (= res!1063300 (or ((_ is Nil!36363) (toList!11270 lm!249)) ((_ is Nil!36363) (t!51094 (toList!11270 lm!249)))))))

(assert (=> d!161481 (= (isStrictlySorted!885 (toList!11270 lm!249)) e!864885)))

(declare-fun b!1553375 () Bool)

(declare-fun e!864886 () Bool)

(assert (=> b!1553375 (= e!864885 e!864886)))

(declare-fun res!1063301 () Bool)

(assert (=> b!1553375 (=> (not res!1063301) (not e!864886))))

(assert (=> b!1553375 (= res!1063301 (bvslt (_1!12454 (h!37809 (toList!11270 lm!249))) (_1!12454 (h!37809 (t!51094 (toList!11270 lm!249))))))))

(declare-fun b!1553376 () Bool)

(assert (=> b!1553376 (= e!864886 (isStrictlySorted!885 (t!51094 (toList!11270 lm!249))))))

(assert (= (and d!161481 (not res!1063300)) b!1553375))

(assert (= (and b!1553375 res!1063301) b!1553376))

(declare-fun m!1432085 () Bool)

(assert (=> b!1553376 m!1432085))

(assert (=> b!1553319 d!161481))

(declare-fun b!1553384 () Bool)

(declare-fun e!864891 () Bool)

(declare-fun tp_is_empty!38217 () Bool)

(declare-fun tp!112096 () Bool)

(assert (=> b!1553384 (= e!864891 (and tp_is_empty!38217 tp!112096))))

(assert (=> b!1553320 (= tp!112087 e!864891)))

(assert (= (and b!1553320 ((_ is Cons!36362) (toList!11270 lm!249))) b!1553384))

(check-sat (not b!1553351) (not b!1553353) (not b!1553376) (not d!161479) (not b!1553384) tp_is_empty!38217 (not d!161469))
(check-sat)
