; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!5046 () Bool)

(assert start!5046)

(declare-fun b_free!1347 () Bool)

(declare-fun b_next!1347 () Bool)

(assert (=> start!5046 (= b_free!1347 (not b_next!1347))))

(declare-fun tp!5548 () Bool)

(declare-fun b_and!2305 () Bool)

(assert (=> start!5046 (= tp!5548 b_and!2305)))

(declare-fun b!37589 () Bool)

(declare-fun res!22718 () Bool)

(declare-fun e!23804 () Bool)

(assert (=> b!37589 (=> (not res!22718) (not e!23804))))

(declare-fun e!23805 () Bool)

(assert (=> b!37589 (= res!22718 e!23805)))

(declare-fun res!22720 () Bool)

(assert (=> b!37589 (=> res!22720 e!23805)))

(declare-datatypes ((B!754 0))(
  ( (B!755 (val!877 Int)) )
))
(declare-datatypes ((tuple2!1418 0))(
  ( (tuple2!1419 (_1!719 (_ BitVec 64)) (_2!719 B!754)) )
))
(declare-datatypes ((List!997 0))(
  ( (Nil!994) (Cons!993 (h!1561 tuple2!1418) (t!3824 List!997)) )
))
(declare-datatypes ((ListLongMap!999 0))(
  ( (ListLongMap!1000 (toList!515 List!997)) )
))
(declare-fun lm!252 () ListLongMap!999)

(declare-fun isEmpty!218 (ListLongMap!999) Bool)

(assert (=> b!37589 (= res!22720 (isEmpty!218 lm!252))))

(declare-fun b!37590 () Bool)

(declare-fun res!22717 () Bool)

(assert (=> b!37590 (=> (not res!22717) (not e!23804))))

(declare-fun k0!388 () (_ BitVec 64))

(declare-fun contains!463 (ListLongMap!999 (_ BitVec 64)) Bool)

(assert (=> b!37590 (= res!22717 (contains!463 lm!252 k0!388))))

(declare-fun b!37591 () Bool)

(declare-fun p!304 () Int)

(declare-fun dynLambda!179 (Int tuple2!1418) Bool)

(declare-fun apply!50 (ListLongMap!999 (_ BitVec 64)) B!754)

(assert (=> b!37591 (= e!23804 (not (dynLambda!179 p!304 (tuple2!1419 k0!388 (apply!50 lm!252 k0!388)))))))

(declare-fun res!22719 () Bool)

(assert (=> start!5046 (=> (not res!22719) (not e!23804))))

(declare-fun forall!177 (List!997 Int) Bool)

(assert (=> start!5046 (= res!22719 (forall!177 (toList!515 lm!252) p!304))))

(assert (=> start!5046 e!23804))

(declare-fun e!23803 () Bool)

(declare-fun inv!1647 (ListLongMap!999) Bool)

(assert (=> start!5046 (and (inv!1647 lm!252) e!23803)))

(assert (=> start!5046 tp!5548))

(assert (=> start!5046 true))

(declare-fun b!37592 () Bool)

(declare-fun head!849 (List!997) tuple2!1418)

(assert (=> b!37592 (= e!23805 (= (_1!719 (head!849 (toList!515 lm!252))) k0!388))))

(declare-fun b!37593 () Bool)

(declare-fun tp!5549 () Bool)

(assert (=> b!37593 (= e!23803 tp!5549)))

(assert (= (and start!5046 res!22719) b!37590))

(assert (= (and b!37590 res!22717) b!37589))

(assert (= (and b!37589 (not res!22720)) b!37592))

(assert (= (and b!37589 res!22718) b!37591))

(assert (= start!5046 b!37593))

(declare-fun b_lambda!1983 () Bool)

(assert (=> (not b_lambda!1983) (not b!37591)))

(declare-fun t!3823 () Bool)

(declare-fun tb!813 () Bool)

(assert (=> (and start!5046 (= p!304 p!304) t!3823) tb!813))

(declare-fun result!1355 () Bool)

(assert (=> tb!813 (= result!1355 true)))

(assert (=> b!37591 t!3823))

(declare-fun b_and!2307 () Bool)

(assert (= b_and!2305 (and (=> t!3823 result!1355) b_and!2307)))

(declare-fun m!30397 () Bool)

(assert (=> start!5046 m!30397))

(declare-fun m!30399 () Bool)

(assert (=> start!5046 m!30399))

(declare-fun m!30401 () Bool)

(assert (=> b!37589 m!30401))

(declare-fun m!30403 () Bool)

(assert (=> b!37592 m!30403))

(declare-fun m!30405 () Bool)

(assert (=> b!37590 m!30405))

(declare-fun m!30407 () Bool)

(assert (=> b!37591 m!30407))

(declare-fun m!30409 () Bool)

(assert (=> b!37591 m!30409))

(check-sat (not b!37593) (not start!5046) (not b!37589) (not b_lambda!1983) b_and!2307 (not b!37592) (not b_next!1347) (not b!37591) (not b!37590))
(check-sat b_and!2307 (not b_next!1347))
(get-model)

(declare-fun b_lambda!1987 () Bool)

(assert (= b_lambda!1983 (or (and start!5046 b_free!1347) b_lambda!1987)))

(check-sat (not start!5046) (not b!37589) b_and!2307 (not b!37592) (not b_next!1347) (not b!37591) (not b!37590) (not b!37593) (not b_lambda!1987))
(check-sat b_and!2307 (not b_next!1347))
(get-model)

(declare-fun d!6005 () Bool)

(declare-datatypes ((Option!95 0))(
  ( (Some!94 (v!1963 B!754)) (None!93) )
))
(declare-fun get!640 (Option!95) B!754)

(declare-fun getValueByKey!89 (List!997 (_ BitVec 64)) Option!95)

(assert (=> d!6005 (= (apply!50 lm!252 k0!388) (get!640 (getValueByKey!89 (toList!515 lm!252) k0!388)))))

(declare-fun bs!1468 () Bool)

(assert (= bs!1468 d!6005))

(declare-fun m!30425 () Bool)

(assert (=> bs!1468 m!30425))

(assert (=> bs!1468 m!30425))

(declare-fun m!30427 () Bool)

(assert (=> bs!1468 m!30427))

(assert (=> b!37591 d!6005))

(declare-fun d!6011 () Bool)

(declare-fun isEmpty!220 (List!997) Bool)

(assert (=> d!6011 (= (isEmpty!218 lm!252) (isEmpty!220 (toList!515 lm!252)))))

(declare-fun bs!1469 () Bool)

(assert (= bs!1469 d!6011))

(declare-fun m!30431 () Bool)

(assert (=> bs!1469 m!30431))

(assert (=> b!37589 d!6011))

(declare-fun d!6013 () Bool)

(declare-fun e!23832 () Bool)

(assert (=> d!6013 e!23832))

(declare-fun res!22743 () Bool)

(assert (=> d!6013 (=> res!22743 e!23832)))

(declare-fun lt!13864 () Bool)

(assert (=> d!6013 (= res!22743 (not lt!13864))))

(declare-fun lt!13862 () Bool)

(assert (=> d!6013 (= lt!13864 lt!13862)))

(declare-datatypes ((Unit!855 0))(
  ( (Unit!856) )
))
(declare-fun lt!13865 () Unit!855)

(declare-fun e!23830 () Unit!855)

(assert (=> d!6013 (= lt!13865 e!23830)))

(declare-fun c!4347 () Bool)

(assert (=> d!6013 (= c!4347 lt!13862)))

(declare-fun containsKey!53 (List!997 (_ BitVec 64)) Bool)

(assert (=> d!6013 (= lt!13862 (containsKey!53 (toList!515 lm!252) k0!388))))

(assert (=> d!6013 (= (contains!463 lm!252 k0!388) lt!13864)))

(declare-fun b!37627 () Bool)

(declare-fun lt!13860 () Unit!855)

(assert (=> b!37627 (= e!23830 lt!13860)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!50 (List!997 (_ BitVec 64)) Unit!855)

(assert (=> b!37627 (= lt!13860 (lemmaContainsKeyImpliesGetValueByKeyDefined!50 (toList!515 lm!252) k0!388))))

(declare-fun isDefined!51 (Option!95) Bool)

(assert (=> b!37627 (isDefined!51 (getValueByKey!89 (toList!515 lm!252) k0!388))))

(declare-fun b!37629 () Bool)

(declare-fun Unit!859 () Unit!855)

(assert (=> b!37629 (= e!23830 Unit!859)))

(declare-fun b!37631 () Bool)

(assert (=> b!37631 (= e!23832 (isDefined!51 (getValueByKey!89 (toList!515 lm!252) k0!388)))))

(assert (= (and d!6013 c!4347) b!37627))

(assert (= (and d!6013 (not c!4347)) b!37629))

(assert (= (and d!6013 (not res!22743)) b!37631))

(declare-fun m!30446 () Bool)

(assert (=> d!6013 m!30446))

(declare-fun m!30451 () Bool)

(assert (=> b!37627 m!30451))

(assert (=> b!37627 m!30425))

(assert (=> b!37627 m!30425))

(declare-fun m!30455 () Bool)

(assert (=> b!37627 m!30455))

(assert (=> b!37631 m!30425))

(assert (=> b!37631 m!30425))

(assert (=> b!37631 m!30455))

(assert (=> b!37590 d!6013))

(declare-fun d!6027 () Bool)

(declare-fun res!22753 () Bool)

(declare-fun e!23841 () Bool)

(assert (=> d!6027 (=> res!22753 e!23841)))

(get-info :version)

(assert (=> d!6027 (= res!22753 ((_ is Nil!994) (toList!515 lm!252)))))

(assert (=> d!6027 (= (forall!177 (toList!515 lm!252) p!304) e!23841)))

(declare-fun b!37641 () Bool)

(declare-fun e!23842 () Bool)

(assert (=> b!37641 (= e!23841 e!23842)))

(declare-fun res!22754 () Bool)

(assert (=> b!37641 (=> (not res!22754) (not e!23842))))

(assert (=> b!37641 (= res!22754 (dynLambda!179 p!304 (h!1561 (toList!515 lm!252))))))

(declare-fun b!37642 () Bool)

(assert (=> b!37642 (= e!23842 (forall!177 (t!3824 (toList!515 lm!252)) p!304))))

(assert (= (and d!6027 (not res!22753)) b!37641))

(assert (= (and b!37641 res!22754) b!37642))

(declare-fun b_lambda!1995 () Bool)

(assert (=> (not b_lambda!1995) (not b!37641)))

(declare-fun t!3831 () Bool)

(declare-fun tb!819 () Bool)

(assert (=> (and start!5046 (= p!304 p!304) t!3831) tb!819))

(declare-fun result!1361 () Bool)

(assert (=> tb!819 (= result!1361 true)))

(assert (=> b!37641 t!3831))

(declare-fun b_and!2315 () Bool)

(assert (= b_and!2307 (and (=> t!3831 result!1361) b_and!2315)))

(declare-fun m!30459 () Bool)

(assert (=> b!37641 m!30459))

(declare-fun m!30461 () Bool)

(assert (=> b!37642 m!30461))

(assert (=> start!5046 d!6027))

(declare-fun d!6033 () Bool)

(declare-fun isStrictlySorted!185 (List!997) Bool)

(assert (=> d!6033 (= (inv!1647 lm!252) (isStrictlySorted!185 (toList!515 lm!252)))))

(declare-fun bs!1474 () Bool)

(assert (= bs!1474 d!6033))

(declare-fun m!30467 () Bool)

(assert (=> bs!1474 m!30467))

(assert (=> start!5046 d!6033))

(declare-fun d!6037 () Bool)

(assert (=> d!6037 (= (head!849 (toList!515 lm!252)) (h!1561 (toList!515 lm!252)))))

(assert (=> b!37592 d!6037))

(declare-fun b!37649 () Bool)

(declare-fun e!23847 () Bool)

(declare-fun tp_is_empty!1675 () Bool)

(declare-fun tp!5558 () Bool)

(assert (=> b!37649 (= e!23847 (and tp_is_empty!1675 tp!5558))))

(assert (=> b!37593 (= tp!5549 e!23847)))

(assert (= (and b!37593 ((_ is Cons!993) (toList!515 lm!252))) b!37649))

(declare-fun b_lambda!1999 () Bool)

(assert (= b_lambda!1995 (or (and start!5046 b_free!1347) b_lambda!1999)))

(check-sat (not b_lambda!1999) (not d!6033) (not b!37642) (not d!6011) (not b_next!1347) (not b!37631) b_and!2315 (not b!37627) (not d!6005) (not b_lambda!1987) (not b!37649) (not d!6013) tp_is_empty!1675)
(check-sat b_and!2315 (not b_next!1347))
(get-model)

(declare-fun d!6041 () Bool)

(assert (=> d!6041 (= (get!640 (getValueByKey!89 (toList!515 lm!252) k0!388)) (v!1963 (getValueByKey!89 (toList!515 lm!252) k0!388)))))

(assert (=> d!6005 d!6041))

(declare-fun b!37680 () Bool)

(declare-fun e!23865 () Option!95)

(assert (=> b!37680 (= e!23865 None!93)))

(declare-fun b!37679 () Bool)

(assert (=> b!37679 (= e!23865 (getValueByKey!89 (t!3824 (toList!515 lm!252)) k0!388))))

(declare-fun d!6043 () Bool)

(declare-fun c!4356 () Bool)

(assert (=> d!6043 (= c!4356 (and ((_ is Cons!993) (toList!515 lm!252)) (= (_1!719 (h!1561 (toList!515 lm!252))) k0!388)))))

(declare-fun e!23864 () Option!95)

(assert (=> d!6043 (= (getValueByKey!89 (toList!515 lm!252) k0!388) e!23864)))

(declare-fun b!37677 () Bool)

(assert (=> b!37677 (= e!23864 (Some!94 (_2!719 (h!1561 (toList!515 lm!252)))))))

(declare-fun b!37678 () Bool)

(assert (=> b!37678 (= e!23864 e!23865)))

(declare-fun c!4357 () Bool)

(assert (=> b!37678 (= c!4357 (and ((_ is Cons!993) (toList!515 lm!252)) (not (= (_1!719 (h!1561 (toList!515 lm!252))) k0!388))))))

(assert (= (and d!6043 c!4356) b!37677))

(assert (= (and d!6043 (not c!4356)) b!37678))

(assert (= (and b!37678 c!4357) b!37679))

(assert (= (and b!37678 (not c!4357)) b!37680))

(declare-fun m!30479 () Bool)

(assert (=> b!37679 m!30479))

(assert (=> d!6005 d!6043))

(declare-fun d!6045 () Bool)

(assert (=> d!6045 (isDefined!51 (getValueByKey!89 (toList!515 lm!252) k0!388))))

(declare-fun lt!13882 () Unit!855)

(declare-fun choose!238 (List!997 (_ BitVec 64)) Unit!855)

(assert (=> d!6045 (= lt!13882 (choose!238 (toList!515 lm!252) k0!388))))

(declare-fun e!23868 () Bool)

(assert (=> d!6045 e!23868))

(declare-fun res!22762 () Bool)

(assert (=> d!6045 (=> (not res!22762) (not e!23868))))

(assert (=> d!6045 (= res!22762 (isStrictlySorted!185 (toList!515 lm!252)))))

(assert (=> d!6045 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!50 (toList!515 lm!252) k0!388) lt!13882)))

(declare-fun b!37683 () Bool)

(assert (=> b!37683 (= e!23868 (containsKey!53 (toList!515 lm!252) k0!388))))

(assert (= (and d!6045 res!22762) b!37683))

(assert (=> d!6045 m!30425))

(assert (=> d!6045 m!30425))

(assert (=> d!6045 m!30455))

(declare-fun m!30481 () Bool)

(assert (=> d!6045 m!30481))

(assert (=> d!6045 m!30467))

(assert (=> b!37683 m!30446))

(assert (=> b!37627 d!6045))

(declare-fun d!6049 () Bool)

(declare-fun isEmpty!223 (Option!95) Bool)

(assert (=> d!6049 (= (isDefined!51 (getValueByKey!89 (toList!515 lm!252) k0!388)) (not (isEmpty!223 (getValueByKey!89 (toList!515 lm!252) k0!388))))))

(declare-fun bs!1478 () Bool)

(assert (= bs!1478 d!6049))

(assert (=> bs!1478 m!30425))

(declare-fun m!30485 () Bool)

(assert (=> bs!1478 m!30485))

(assert (=> b!37627 d!6049))

(assert (=> b!37627 d!6043))

(declare-fun d!6053 () Bool)

(declare-fun res!22767 () Bool)

(declare-fun e!23879 () Bool)

(assert (=> d!6053 (=> res!22767 e!23879)))

(assert (=> d!6053 (= res!22767 (and ((_ is Cons!993) (toList!515 lm!252)) (= (_1!719 (h!1561 (toList!515 lm!252))) k0!388)))))

(assert (=> d!6053 (= (containsKey!53 (toList!515 lm!252) k0!388) e!23879)))

(declare-fun b!37700 () Bool)

(declare-fun e!23880 () Bool)

(assert (=> b!37700 (= e!23879 e!23880)))

(declare-fun res!22768 () Bool)

(assert (=> b!37700 (=> (not res!22768) (not e!23880))))

(assert (=> b!37700 (= res!22768 (and (or (not ((_ is Cons!993) (toList!515 lm!252))) (bvsle (_1!719 (h!1561 (toList!515 lm!252))) k0!388)) ((_ is Cons!993) (toList!515 lm!252)) (bvslt (_1!719 (h!1561 (toList!515 lm!252))) k0!388)))))

(declare-fun b!37701 () Bool)

(assert (=> b!37701 (= e!23880 (containsKey!53 (t!3824 (toList!515 lm!252)) k0!388))))

(assert (= (and d!6053 (not res!22767)) b!37700))

(assert (= (and b!37700 res!22768) b!37701))

(declare-fun m!30489 () Bool)

(assert (=> b!37701 m!30489))

(assert (=> d!6013 d!6053))

(assert (=> b!37631 d!6049))

(assert (=> b!37631 d!6043))

(declare-fun d!6057 () Bool)

(assert (=> d!6057 (= (isEmpty!220 (toList!515 lm!252)) ((_ is Nil!994) (toList!515 lm!252)))))

(assert (=> d!6011 d!6057))

(declare-fun d!6059 () Bool)

(declare-fun res!22769 () Bool)

(declare-fun e!23881 () Bool)

(assert (=> d!6059 (=> res!22769 e!23881)))

(assert (=> d!6059 (= res!22769 ((_ is Nil!994) (t!3824 (toList!515 lm!252))))))

(assert (=> d!6059 (= (forall!177 (t!3824 (toList!515 lm!252)) p!304) e!23881)))

(declare-fun b!37702 () Bool)

(declare-fun e!23882 () Bool)

(assert (=> b!37702 (= e!23881 e!23882)))

(declare-fun res!22770 () Bool)

(assert (=> b!37702 (=> (not res!22770) (not e!23882))))

(assert (=> b!37702 (= res!22770 (dynLambda!179 p!304 (h!1561 (t!3824 (toList!515 lm!252)))))))

(declare-fun b!37703 () Bool)

(assert (=> b!37703 (= e!23882 (forall!177 (t!3824 (t!3824 (toList!515 lm!252))) p!304))))

(assert (= (and d!6059 (not res!22769)) b!37702))

(assert (= (and b!37702 res!22770) b!37703))

(declare-fun b_lambda!2005 () Bool)

(assert (=> (not b_lambda!2005) (not b!37702)))

(declare-fun t!3835 () Bool)

(declare-fun tb!823 () Bool)

(assert (=> (and start!5046 (= p!304 p!304) t!3835) tb!823))

(declare-fun result!1371 () Bool)

(assert (=> tb!823 (= result!1371 true)))

(assert (=> b!37702 t!3835))

(declare-fun b_and!2319 () Bool)

(assert (= b_and!2315 (and (=> t!3835 result!1371) b_and!2319)))

(declare-fun m!30491 () Bool)

(assert (=> b!37702 m!30491))

(declare-fun m!30493 () Bool)

(assert (=> b!37703 m!30493))

(assert (=> b!37642 d!6059))

(declare-fun d!6063 () Bool)

(declare-fun res!22789 () Bool)

(declare-fun e!23901 () Bool)

(assert (=> d!6063 (=> res!22789 e!23901)))

(assert (=> d!6063 (= res!22789 (or ((_ is Nil!994) (toList!515 lm!252)) ((_ is Nil!994) (t!3824 (toList!515 lm!252)))))))

(assert (=> d!6063 (= (isStrictlySorted!185 (toList!515 lm!252)) e!23901)))

(declare-fun b!37722 () Bool)

(declare-fun e!23902 () Bool)

(assert (=> b!37722 (= e!23901 e!23902)))

(declare-fun res!22790 () Bool)

(assert (=> b!37722 (=> (not res!22790) (not e!23902))))

(assert (=> b!37722 (= res!22790 (bvslt (_1!719 (h!1561 (toList!515 lm!252))) (_1!719 (h!1561 (t!3824 (toList!515 lm!252))))))))

(declare-fun b!37723 () Bool)

(assert (=> b!37723 (= e!23902 (isStrictlySorted!185 (t!3824 (toList!515 lm!252))))))

(assert (= (and d!6063 (not res!22789)) b!37722))

(assert (= (and b!37722 res!22790) b!37723))

(declare-fun m!30503 () Bool)

(assert (=> b!37723 m!30503))

(assert (=> d!6033 d!6063))

(declare-fun b!37724 () Bool)

(declare-fun e!23903 () Bool)

(declare-fun tp!5565 () Bool)

(assert (=> b!37724 (= e!23903 (and tp_is_empty!1675 tp!5565))))

(assert (=> b!37649 (= tp!5558 e!23903)))

(assert (= (and b!37649 ((_ is Cons!993) (t!3824 (toList!515 lm!252)))) b!37724))

(declare-fun b_lambda!2009 () Bool)

(assert (= b_lambda!2005 (or (and start!5046 b_free!1347) b_lambda!2009)))

(check-sat (not b!37723) (not b_lambda!1999) (not d!6049) (not b!37703) (not b_next!1347) (not b!37701) (not b!37679) (not b_lambda!1987) (not b!37683) (not b!37724) tp_is_empty!1675 b_and!2319 (not d!6045) (not b_lambda!2009))
(check-sat b_and!2319 (not b_next!1347))
