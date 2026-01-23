; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!485004 () Bool)

(assert start!485004)

(declare-datatypes ((K!14400 0))(
  ( (K!14401 (val!19791 Int)) )
))
(declare-datatypes ((V!14646 0))(
  ( (V!14647 (val!19792 Int)) )
))
(declare-datatypes ((tuple2!54760 0))(
  ( (tuple2!54761 (_1!30674 K!14400) (_2!30674 V!14646)) )
))
(declare-datatypes ((List!53158 0))(
  ( (Nil!53034) (Cons!53034 (h!59431 tuple2!54760) (t!360472 List!53158)) )
))
(declare-datatypes ((ListMap!5449 0))(
  ( (ListMap!5450 (toList!6070 List!53158)) )
))
(declare-fun lt!1910248 () ListMap!5449)

(declare-fun e!2961581 () Bool)

(declare-fun l!14304 () List!53158)

(declare-fun b!4747970 () Bool)

(declare-fun acc!1214 () ListMap!5449)

(declare-fun eq!1177 (ListMap!5449 ListMap!5449) Bool)

(declare-fun addToMapMapFromBucket!1526 (List!53158 ListMap!5449) ListMap!5449)

(assert (=> b!4747970 (= e!2961581 (eq!1177 lt!1910248 (addToMapMapFromBucket!1526 l!14304 acc!1214)))))

(declare-fun res!2012727 () Bool)

(declare-fun e!2961583 () Bool)

(assert (=> start!485004 (=> (not res!2012727) (not e!2961583))))

(declare-fun noDuplicateKeys!2100 (List!53158) Bool)

(assert (=> start!485004 (= res!2012727 (noDuplicateKeys!2100 l!14304))))

(assert (=> start!485004 e!2961583))

(declare-fun e!2961584 () Bool)

(assert (=> start!485004 e!2961584))

(declare-fun tp_is_empty!31693 () Bool)

(declare-fun tp_is_empty!31695 () Bool)

(assert (=> start!485004 (and tp_is_empty!31693 tp_is_empty!31695)))

(declare-fun e!2961582 () Bool)

(declare-fun inv!68272 (ListMap!5449) Bool)

(assert (=> start!485004 (and (inv!68272 acc!1214) e!2961582)))

(declare-fun b!4747971 () Bool)

(declare-fun tp!1349784 () Bool)

(assert (=> b!4747971 (= e!2961582 tp!1349784)))

(declare-fun b!4747972 () Bool)

(assert (=> b!4747972 (= e!2961583 (not (noDuplicateKeys!2100 (t!360472 l!14304))))))

(declare-fun lt!1910250 () ListMap!5449)

(declare-fun lt!1910249 () ListMap!5449)

(declare-fun t!14174 () tuple2!54760)

(declare-fun +!2336 (ListMap!5449 tuple2!54760) ListMap!5449)

(assert (=> b!4747972 (= lt!1910250 (+!2336 lt!1910249 t!14174))))

(assert (=> b!4747972 e!2961581))

(declare-fun res!2012724 () Bool)

(assert (=> b!4747972 (=> (not res!2012724) (not e!2961581))))

(assert (=> b!4747972 (= res!2012724 (eq!1177 (addToMapMapFromBucket!1526 (Cons!53034 t!14174 (t!360472 l!14304)) lt!1910249) (+!2336 lt!1910248 t!14174)))))

(declare-datatypes ((Unit!134631 0))(
  ( (Unit!134632) )
))
(declare-fun lt!1910251 () Unit!134631)

(declare-fun lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!424 (tuple2!54760 List!53158 ListMap!5449) Unit!134631)

(assert (=> b!4747972 (= lt!1910251 (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!424 t!14174 (t!360472 l!14304) lt!1910249))))

(assert (=> b!4747972 (= lt!1910248 (addToMapMapFromBucket!1526 (t!360472 l!14304) lt!1910249))))

(assert (=> b!4747972 (= lt!1910249 (+!2336 acc!1214 (h!59431 l!14304)))))

(declare-fun tp!1349785 () Bool)

(declare-fun b!4747973 () Bool)

(assert (=> b!4747973 (= e!2961584 (and tp_is_empty!31693 tp_is_empty!31695 tp!1349785))))

(declare-fun b!4747974 () Bool)

(declare-fun res!2012726 () Bool)

(assert (=> b!4747974 (=> (not res!2012726) (not e!2961583))))

(assert (=> b!4747974 (= res!2012726 (noDuplicateKeys!2100 (Cons!53034 t!14174 l!14304)))))

(declare-fun b!4747975 () Bool)

(declare-fun res!2012725 () Bool)

(assert (=> b!4747975 (=> (not res!2012725) (not e!2961583))))

(get-info :version)

(assert (=> b!4747975 (= res!2012725 (not ((_ is Nil!53034) l!14304)))))

(assert (= (and start!485004 res!2012727) b!4747974))

(assert (= (and b!4747974 res!2012726) b!4747975))

(assert (= (and b!4747975 res!2012725) b!4747972))

(assert (= (and b!4747972 res!2012724) b!4747970))

(assert (= (and start!485004 ((_ is Cons!53034) l!14304)) b!4747973))

(assert (= start!485004 b!4747971))

(declare-fun m!5705753 () Bool)

(assert (=> b!4747970 m!5705753))

(assert (=> b!4747970 m!5705753))

(declare-fun m!5705755 () Bool)

(assert (=> b!4747970 m!5705755))

(declare-fun m!5705757 () Bool)

(assert (=> start!485004 m!5705757))

(declare-fun m!5705759 () Bool)

(assert (=> start!485004 m!5705759))

(declare-fun m!5705761 () Bool)

(assert (=> b!4747972 m!5705761))

(declare-fun m!5705763 () Bool)

(assert (=> b!4747972 m!5705763))

(declare-fun m!5705765 () Bool)

(assert (=> b!4747972 m!5705765))

(declare-fun m!5705767 () Bool)

(assert (=> b!4747972 m!5705767))

(assert (=> b!4747972 m!5705761))

(declare-fun m!5705769 () Bool)

(assert (=> b!4747972 m!5705769))

(declare-fun m!5705771 () Bool)

(assert (=> b!4747972 m!5705771))

(declare-fun m!5705773 () Bool)

(assert (=> b!4747972 m!5705773))

(declare-fun m!5705775 () Bool)

(assert (=> b!4747972 m!5705775))

(assert (=> b!4747972 m!5705769))

(declare-fun m!5705777 () Bool)

(assert (=> b!4747974 m!5705777))

(check-sat tp_is_empty!31693 (not b!4747970) (not b!4747972) (not b!4747974) (not start!485004) (not b!4747973) (not b!4747971) tp_is_empty!31695)
(check-sat)
(get-model)

(declare-fun d!1517396 () Bool)

(declare-fun res!2012732 () Bool)

(declare-fun e!2961589 () Bool)

(assert (=> d!1517396 (=> res!2012732 e!2961589)))

(assert (=> d!1517396 (= res!2012732 (not ((_ is Cons!53034) (Cons!53034 t!14174 l!14304))))))

(assert (=> d!1517396 (= (noDuplicateKeys!2100 (Cons!53034 t!14174 l!14304)) e!2961589)))

(declare-fun b!4747980 () Bool)

(declare-fun e!2961590 () Bool)

(assert (=> b!4747980 (= e!2961589 e!2961590)))

(declare-fun res!2012733 () Bool)

(assert (=> b!4747980 (=> (not res!2012733) (not e!2961590))))

(declare-fun containsKey!3527 (List!53158 K!14400) Bool)

(assert (=> b!4747980 (= res!2012733 (not (containsKey!3527 (t!360472 (Cons!53034 t!14174 l!14304)) (_1!30674 (h!59431 (Cons!53034 t!14174 l!14304))))))))

(declare-fun b!4747981 () Bool)

(assert (=> b!4747981 (= e!2961590 (noDuplicateKeys!2100 (t!360472 (Cons!53034 t!14174 l!14304))))))

(assert (= (and d!1517396 (not res!2012732)) b!4747980))

(assert (= (and b!4747980 res!2012733) b!4747981))

(declare-fun m!5705783 () Bool)

(assert (=> b!4747980 m!5705783))

(declare-fun m!5705785 () Bool)

(assert (=> b!4747981 m!5705785))

(assert (=> b!4747974 d!1517396))

(declare-fun d!1517398 () Bool)

(declare-fun e!2961593 () Bool)

(assert (=> d!1517398 e!2961593))

(declare-fun res!2012738 () Bool)

(assert (=> d!1517398 (=> (not res!2012738) (not e!2961593))))

(declare-fun lt!1910262 () ListMap!5449)

(declare-fun contains!16456 (ListMap!5449 K!14400) Bool)

(assert (=> d!1517398 (= res!2012738 (contains!16456 lt!1910262 (_1!30674 (h!59431 l!14304))))))

(declare-fun lt!1910260 () List!53158)

(assert (=> d!1517398 (= lt!1910262 (ListMap!5450 lt!1910260))))

(declare-fun lt!1910261 () Unit!134631)

(declare-fun lt!1910263 () Unit!134631)

(assert (=> d!1517398 (= lt!1910261 lt!1910263)))

(declare-datatypes ((Option!12506 0))(
  ( (None!12505) (Some!12505 (v!47200 V!14646)) )
))
(declare-fun getValueByKey!2056 (List!53158 K!14400) Option!12506)

(assert (=> d!1517398 (= (getValueByKey!2056 lt!1910260 (_1!30674 (h!59431 l!14304))) (Some!12505 (_2!30674 (h!59431 l!14304))))))

(declare-fun lemmaContainsTupThenGetReturnValue!1133 (List!53158 K!14400 V!14646) Unit!134631)

(assert (=> d!1517398 (= lt!1910263 (lemmaContainsTupThenGetReturnValue!1133 lt!1910260 (_1!30674 (h!59431 l!14304)) (_2!30674 (h!59431 l!14304))))))

(declare-fun insertNoDuplicatedKeys!641 (List!53158 K!14400 V!14646) List!53158)

(assert (=> d!1517398 (= lt!1910260 (insertNoDuplicatedKeys!641 (toList!6070 acc!1214) (_1!30674 (h!59431 l!14304)) (_2!30674 (h!59431 l!14304))))))

(assert (=> d!1517398 (= (+!2336 acc!1214 (h!59431 l!14304)) lt!1910262)))

(declare-fun b!4747986 () Bool)

(declare-fun res!2012739 () Bool)

(assert (=> b!4747986 (=> (not res!2012739) (not e!2961593))))

(assert (=> b!4747986 (= res!2012739 (= (getValueByKey!2056 (toList!6070 lt!1910262) (_1!30674 (h!59431 l!14304))) (Some!12505 (_2!30674 (h!59431 l!14304)))))))

(declare-fun b!4747987 () Bool)

(declare-fun contains!16457 (List!53158 tuple2!54760) Bool)

(assert (=> b!4747987 (= e!2961593 (contains!16457 (toList!6070 lt!1910262) (h!59431 l!14304)))))

(assert (= (and d!1517398 res!2012738) b!4747986))

(assert (= (and b!4747986 res!2012739) b!4747987))

(declare-fun m!5705787 () Bool)

(assert (=> d!1517398 m!5705787))

(declare-fun m!5705789 () Bool)

(assert (=> d!1517398 m!5705789))

(declare-fun m!5705791 () Bool)

(assert (=> d!1517398 m!5705791))

(declare-fun m!5705793 () Bool)

(assert (=> d!1517398 m!5705793))

(declare-fun m!5705795 () Bool)

(assert (=> b!4747986 m!5705795))

(declare-fun m!5705797 () Bool)

(assert (=> b!4747987 m!5705797))

(assert (=> b!4747972 d!1517398))

(declare-fun b!4748053 () Bool)

(assert (=> b!4748053 true))

(declare-fun bs!1138731 () Bool)

(declare-fun b!4748051 () Bool)

(assert (= bs!1138731 (and b!4748051 b!4748053)))

(declare-fun lambda!220888 () Int)

(declare-fun lambda!220887 () Int)

(assert (=> bs!1138731 (= lambda!220888 lambda!220887)))

(assert (=> b!4748051 true))

(declare-fun lambda!220889 () Int)

(declare-fun lt!1910441 () ListMap!5449)

(assert (=> bs!1138731 (= (= lt!1910441 lt!1910249) (= lambda!220889 lambda!220887))))

(assert (=> b!4748051 (= (= lt!1910441 lt!1910249) (= lambda!220889 lambda!220888))))

(assert (=> b!4748051 true))

(declare-fun bs!1138732 () Bool)

(declare-fun d!1517400 () Bool)

(assert (= bs!1138732 (and d!1517400 b!4748053)))

(declare-fun lt!1910434 () ListMap!5449)

(declare-fun lambda!220890 () Int)

(assert (=> bs!1138732 (= (= lt!1910434 lt!1910249) (= lambda!220890 lambda!220887))))

(declare-fun bs!1138733 () Bool)

(assert (= bs!1138733 (and d!1517400 b!4748051)))

(assert (=> bs!1138733 (= (= lt!1910434 lt!1910249) (= lambda!220890 lambda!220888))))

(assert (=> bs!1138733 (= (= lt!1910434 lt!1910441) (= lambda!220890 lambda!220889))))

(assert (=> d!1517400 true))

(declare-fun e!2961634 () ListMap!5449)

(assert (=> b!4748051 (= e!2961634 lt!1910441)))

(declare-fun lt!1910435 () ListMap!5449)

(assert (=> b!4748051 (= lt!1910435 (+!2336 lt!1910249 (h!59431 (Cons!53034 t!14174 (t!360472 l!14304)))))))

(assert (=> b!4748051 (= lt!1910441 (addToMapMapFromBucket!1526 (t!360472 (Cons!53034 t!14174 (t!360472 l!14304))) (+!2336 lt!1910249 (h!59431 (Cons!53034 t!14174 (t!360472 l!14304))))))))

(declare-fun lt!1910443 () Unit!134631)

(declare-fun call!332309 () Unit!134631)

(assert (=> b!4748051 (= lt!1910443 call!332309)))

(declare-fun forall!11737 (List!53158 Int) Bool)

(assert (=> b!4748051 (forall!11737 (toList!6070 lt!1910249) lambda!220888)))

(declare-fun lt!1910448 () Unit!134631)

(assert (=> b!4748051 (= lt!1910448 lt!1910443)))

(assert (=> b!4748051 (forall!11737 (toList!6070 lt!1910435) lambda!220889)))

(declare-fun lt!1910437 () Unit!134631)

(declare-fun Unit!134650 () Unit!134631)

(assert (=> b!4748051 (= lt!1910437 Unit!134650)))

(assert (=> b!4748051 (forall!11737 (t!360472 (Cons!53034 t!14174 (t!360472 l!14304))) lambda!220889)))

(declare-fun lt!1910444 () Unit!134631)

(declare-fun Unit!134652 () Unit!134631)

(assert (=> b!4748051 (= lt!1910444 Unit!134652)))

(declare-fun lt!1910452 () Unit!134631)

(declare-fun Unit!134653 () Unit!134631)

(assert (=> b!4748051 (= lt!1910452 Unit!134653)))

(declare-fun lt!1910438 () Unit!134631)

(declare-fun forallContained!3763 (List!53158 Int tuple2!54760) Unit!134631)

(assert (=> b!4748051 (= lt!1910438 (forallContained!3763 (toList!6070 lt!1910435) lambda!220889 (h!59431 (Cons!53034 t!14174 (t!360472 l!14304)))))))

(assert (=> b!4748051 (contains!16456 lt!1910435 (_1!30674 (h!59431 (Cons!53034 t!14174 (t!360472 l!14304)))))))

(declare-fun lt!1910442 () Unit!134631)

(declare-fun Unit!134656 () Unit!134631)

(assert (=> b!4748051 (= lt!1910442 Unit!134656)))

(assert (=> b!4748051 (contains!16456 lt!1910441 (_1!30674 (h!59431 (Cons!53034 t!14174 (t!360472 l!14304)))))))

(declare-fun lt!1910449 () Unit!134631)

(declare-fun Unit!134657 () Unit!134631)

(assert (=> b!4748051 (= lt!1910449 Unit!134657)))

(assert (=> b!4748051 (forall!11737 (Cons!53034 t!14174 (t!360472 l!14304)) lambda!220889)))

(declare-fun lt!1910450 () Unit!134631)

(declare-fun Unit!134659 () Unit!134631)

(assert (=> b!4748051 (= lt!1910450 Unit!134659)))

(declare-fun call!332310 () Bool)

(assert (=> b!4748051 call!332310))

(declare-fun lt!1910446 () Unit!134631)

(declare-fun Unit!134660 () Unit!134631)

(assert (=> b!4748051 (= lt!1910446 Unit!134660)))

(declare-fun lt!1910440 () Unit!134631)

(declare-fun Unit!134662 () Unit!134631)

(assert (=> b!4748051 (= lt!1910440 Unit!134662)))

(declare-fun lt!1910454 () Unit!134631)

(declare-fun addForallContainsKeyThenBeforeAdding!851 (ListMap!5449 ListMap!5449 K!14400 V!14646) Unit!134631)

(assert (=> b!4748051 (= lt!1910454 (addForallContainsKeyThenBeforeAdding!851 lt!1910249 lt!1910441 (_1!30674 (h!59431 (Cons!53034 t!14174 (t!360472 l!14304)))) (_2!30674 (h!59431 (Cons!53034 t!14174 (t!360472 l!14304))))))))

(assert (=> b!4748051 (forall!11737 (toList!6070 lt!1910249) lambda!220889)))

(declare-fun lt!1910436 () Unit!134631)

(assert (=> b!4748051 (= lt!1910436 lt!1910454)))

(assert (=> b!4748051 (forall!11737 (toList!6070 lt!1910249) lambda!220889)))

(declare-fun lt!1910447 () Unit!134631)

(declare-fun Unit!134663 () Unit!134631)

(assert (=> b!4748051 (= lt!1910447 Unit!134663)))

(declare-fun res!2012782 () Bool)

(declare-fun call!332311 () Bool)

(assert (=> b!4748051 (= res!2012782 call!332311)))

(declare-fun e!2961635 () Bool)

(assert (=> b!4748051 (=> (not res!2012782) (not e!2961635))))

(assert (=> b!4748051 e!2961635))

(declare-fun lt!1910439 () Unit!134631)

(declare-fun Unit!134664 () Unit!134631)

(assert (=> b!4748051 (= lt!1910439 Unit!134664)))

(declare-fun e!2961636 () Bool)

(assert (=> d!1517400 e!2961636))

(declare-fun res!2012781 () Bool)

(assert (=> d!1517400 (=> (not res!2012781) (not e!2961636))))

(assert (=> d!1517400 (= res!2012781 (forall!11737 (Cons!53034 t!14174 (t!360472 l!14304)) lambda!220890))))

(assert (=> d!1517400 (= lt!1910434 e!2961634)))

(declare-fun c!810859 () Bool)

(assert (=> d!1517400 (= c!810859 ((_ is Nil!53034) (Cons!53034 t!14174 (t!360472 l!14304))))))

(assert (=> d!1517400 (noDuplicateKeys!2100 (Cons!53034 t!14174 (t!360472 l!14304)))))

(assert (=> d!1517400 (= (addToMapMapFromBucket!1526 (Cons!53034 t!14174 (t!360472 l!14304)) lt!1910249) lt!1910434)))

(declare-fun bm!332304 () Bool)

(assert (=> bm!332304 (= call!332311 (forall!11737 (ite c!810859 (toList!6070 lt!1910249) (Cons!53034 t!14174 (t!360472 l!14304))) (ite c!810859 lambda!220887 lambda!220889)))))

(declare-fun b!4748052 () Bool)

(declare-fun invariantList!1569 (List!53158) Bool)

(assert (=> b!4748052 (= e!2961636 (invariantList!1569 (toList!6070 lt!1910434)))))

(assert (=> b!4748053 (= e!2961634 lt!1910249)))

(declare-fun lt!1910453 () Unit!134631)

(assert (=> b!4748053 (= lt!1910453 call!332309)))

(assert (=> b!4748053 call!332310))

(declare-fun lt!1910445 () Unit!134631)

(assert (=> b!4748053 (= lt!1910445 lt!1910453)))

(assert (=> b!4748053 call!332311))

(declare-fun lt!1910451 () Unit!134631)

(declare-fun Unit!134665 () Unit!134631)

(assert (=> b!4748053 (= lt!1910451 Unit!134665)))

(declare-fun b!4748054 () Bool)

(declare-fun res!2012783 () Bool)

(assert (=> b!4748054 (=> (not res!2012783) (not e!2961636))))

(assert (=> b!4748054 (= res!2012783 (forall!11737 (toList!6070 lt!1910249) lambda!220890))))

(declare-fun bm!332305 () Bool)

(assert (=> bm!332305 (= call!332310 (forall!11737 (ite c!810859 (toList!6070 lt!1910249) (toList!6070 lt!1910435)) (ite c!810859 lambda!220887 lambda!220889)))))

(declare-fun b!4748055 () Bool)

(assert (=> b!4748055 (= e!2961635 (forall!11737 (toList!6070 lt!1910249) lambda!220889))))

(declare-fun bm!332306 () Bool)

(declare-fun lemmaContainsAllItsOwnKeys!852 (ListMap!5449) Unit!134631)

(assert (=> bm!332306 (= call!332309 (lemmaContainsAllItsOwnKeys!852 lt!1910249))))

(assert (= (and d!1517400 c!810859) b!4748053))

(assert (= (and d!1517400 (not c!810859)) b!4748051))

(assert (= (and b!4748051 res!2012782) b!4748055))

(assert (= (or b!4748053 b!4748051) bm!332306))

(assert (= (or b!4748053 b!4748051) bm!332305))

(assert (= (or b!4748053 b!4748051) bm!332304))

(assert (= (and d!1517400 res!2012781) b!4748054))

(assert (= (and b!4748054 res!2012783) b!4748052))

(declare-fun m!5705951 () Bool)

(assert (=> bm!332305 m!5705951))

(declare-fun m!5705953 () Bool)

(assert (=> b!4748055 m!5705953))

(declare-fun m!5705955 () Bool)

(assert (=> bm!332306 m!5705955))

(declare-fun m!5705957 () Bool)

(assert (=> b!4748051 m!5705957))

(assert (=> b!4748051 m!5705953))

(declare-fun m!5705959 () Bool)

(assert (=> b!4748051 m!5705959))

(declare-fun m!5705961 () Bool)

(assert (=> b!4748051 m!5705961))

(declare-fun m!5705963 () Bool)

(assert (=> b!4748051 m!5705963))

(declare-fun m!5705965 () Bool)

(assert (=> b!4748051 m!5705965))

(declare-fun m!5705967 () Bool)

(assert (=> b!4748051 m!5705967))

(assert (=> b!4748051 m!5705963))

(assert (=> b!4748051 m!5705953))

(declare-fun m!5705969 () Bool)

(assert (=> b!4748051 m!5705969))

(declare-fun m!5705971 () Bool)

(assert (=> b!4748051 m!5705971))

(declare-fun m!5705973 () Bool)

(assert (=> b!4748051 m!5705973))

(declare-fun m!5705975 () Bool)

(assert (=> b!4748051 m!5705975))

(declare-fun m!5705977 () Bool)

(assert (=> b!4748052 m!5705977))

(declare-fun m!5705979 () Bool)

(assert (=> bm!332304 m!5705979))

(declare-fun m!5705981 () Bool)

(assert (=> d!1517400 m!5705981))

(declare-fun m!5705983 () Bool)

(assert (=> d!1517400 m!5705983))

(declare-fun m!5705985 () Bool)

(assert (=> b!4748054 m!5705985))

(assert (=> b!4747972 d!1517400))

(declare-fun d!1517424 () Bool)

(declare-fun e!2961637 () Bool)

(assert (=> d!1517424 e!2961637))

(declare-fun res!2012784 () Bool)

(assert (=> d!1517424 (=> (not res!2012784) (not e!2961637))))

(declare-fun lt!1910457 () ListMap!5449)

(assert (=> d!1517424 (= res!2012784 (contains!16456 lt!1910457 (_1!30674 t!14174)))))

(declare-fun lt!1910455 () List!53158)

(assert (=> d!1517424 (= lt!1910457 (ListMap!5450 lt!1910455))))

(declare-fun lt!1910456 () Unit!134631)

(declare-fun lt!1910458 () Unit!134631)

(assert (=> d!1517424 (= lt!1910456 lt!1910458)))

(assert (=> d!1517424 (= (getValueByKey!2056 lt!1910455 (_1!30674 t!14174)) (Some!12505 (_2!30674 t!14174)))))

(assert (=> d!1517424 (= lt!1910458 (lemmaContainsTupThenGetReturnValue!1133 lt!1910455 (_1!30674 t!14174) (_2!30674 t!14174)))))

(assert (=> d!1517424 (= lt!1910455 (insertNoDuplicatedKeys!641 (toList!6070 lt!1910249) (_1!30674 t!14174) (_2!30674 t!14174)))))

(assert (=> d!1517424 (= (+!2336 lt!1910249 t!14174) lt!1910457)))

(declare-fun b!4748058 () Bool)

(declare-fun res!2012785 () Bool)

(assert (=> b!4748058 (=> (not res!2012785) (not e!2961637))))

(assert (=> b!4748058 (= res!2012785 (= (getValueByKey!2056 (toList!6070 lt!1910457) (_1!30674 t!14174)) (Some!12505 (_2!30674 t!14174))))))

(declare-fun b!4748059 () Bool)

(assert (=> b!4748059 (= e!2961637 (contains!16457 (toList!6070 lt!1910457) t!14174))))

(assert (= (and d!1517424 res!2012784) b!4748058))

(assert (= (and b!4748058 res!2012785) b!4748059))

(declare-fun m!5705987 () Bool)

(assert (=> d!1517424 m!5705987))

(declare-fun m!5705989 () Bool)

(assert (=> d!1517424 m!5705989))

(declare-fun m!5705991 () Bool)

(assert (=> d!1517424 m!5705991))

(declare-fun m!5705993 () Bool)

(assert (=> d!1517424 m!5705993))

(declare-fun m!5705995 () Bool)

(assert (=> b!4748058 m!5705995))

(declare-fun m!5705997 () Bool)

(assert (=> b!4748059 m!5705997))

(assert (=> b!4747972 d!1517424))

(declare-fun d!1517426 () Bool)

(assert (=> d!1517426 (eq!1177 (addToMapMapFromBucket!1526 (Cons!53034 t!14174 (t!360472 l!14304)) lt!1910249) (+!2336 (addToMapMapFromBucket!1526 (t!360472 l!14304) lt!1910249) t!14174))))

(declare-fun lt!1910461 () Unit!134631)

(declare-fun choose!33784 (tuple2!54760 List!53158 ListMap!5449) Unit!134631)

(assert (=> d!1517426 (= lt!1910461 (choose!33784 t!14174 (t!360472 l!14304) lt!1910249))))

(assert (=> d!1517426 (noDuplicateKeys!2100 (t!360472 l!14304))))

(assert (=> d!1517426 (= (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!424 t!14174 (t!360472 l!14304) lt!1910249) lt!1910461)))

(declare-fun bs!1138734 () Bool)

(assert (= bs!1138734 d!1517426))

(assert (=> bs!1138734 m!5705773))

(declare-fun m!5705999 () Bool)

(assert (=> bs!1138734 m!5705999))

(assert (=> bs!1138734 m!5705773))

(assert (=> bs!1138734 m!5705767))

(declare-fun m!5706001 () Bool)

(assert (=> bs!1138734 m!5706001))

(assert (=> bs!1138734 m!5705761))

(assert (=> bs!1138734 m!5705999))

(declare-fun m!5706003 () Bool)

(assert (=> bs!1138734 m!5706003))

(assert (=> bs!1138734 m!5705761))

(assert (=> b!4747972 d!1517426))

(declare-fun d!1517428 () Bool)

(declare-fun res!2012786 () Bool)

(declare-fun e!2961638 () Bool)

(assert (=> d!1517428 (=> res!2012786 e!2961638)))

(assert (=> d!1517428 (= res!2012786 (not ((_ is Cons!53034) (t!360472 l!14304))))))

(assert (=> d!1517428 (= (noDuplicateKeys!2100 (t!360472 l!14304)) e!2961638)))

(declare-fun b!4748060 () Bool)

(declare-fun e!2961639 () Bool)

(assert (=> b!4748060 (= e!2961638 e!2961639)))

(declare-fun res!2012787 () Bool)

(assert (=> b!4748060 (=> (not res!2012787) (not e!2961639))))

(assert (=> b!4748060 (= res!2012787 (not (containsKey!3527 (t!360472 (t!360472 l!14304)) (_1!30674 (h!59431 (t!360472 l!14304))))))))

(declare-fun b!4748061 () Bool)

(assert (=> b!4748061 (= e!2961639 (noDuplicateKeys!2100 (t!360472 (t!360472 l!14304))))))

(assert (= (and d!1517428 (not res!2012786)) b!4748060))

(assert (= (and b!4748060 res!2012787) b!4748061))

(declare-fun m!5706005 () Bool)

(assert (=> b!4748060 m!5706005))

(declare-fun m!5706007 () Bool)

(assert (=> b!4748061 m!5706007))

(assert (=> b!4747972 d!1517428))

(declare-fun bs!1138735 () Bool)

(declare-fun b!4748064 () Bool)

(assert (= bs!1138735 (and b!4748064 b!4748053)))

(declare-fun lambda!220891 () Int)

(assert (=> bs!1138735 (= lambda!220891 lambda!220887)))

(declare-fun bs!1138736 () Bool)

(assert (= bs!1138736 (and b!4748064 b!4748051)))

(assert (=> bs!1138736 (= lambda!220891 lambda!220888)))

(assert (=> bs!1138736 (= (= lt!1910249 lt!1910441) (= lambda!220891 lambda!220889))))

(declare-fun bs!1138737 () Bool)

(assert (= bs!1138737 (and b!4748064 d!1517400)))

(assert (=> bs!1138737 (= (= lt!1910249 lt!1910434) (= lambda!220891 lambda!220890))))

(assert (=> b!4748064 true))

(declare-fun bs!1138738 () Bool)

(declare-fun b!4748062 () Bool)

(assert (= bs!1138738 (and b!4748062 b!4748051)))

(declare-fun lambda!220892 () Int)

(assert (=> bs!1138738 (= lambda!220892 lambda!220888)))

(declare-fun bs!1138739 () Bool)

(assert (= bs!1138739 (and b!4748062 b!4748053)))

(assert (=> bs!1138739 (= lambda!220892 lambda!220887)))

(declare-fun bs!1138740 () Bool)

(assert (= bs!1138740 (and b!4748062 d!1517400)))

(assert (=> bs!1138740 (= (= lt!1910249 lt!1910434) (= lambda!220892 lambda!220890))))

(declare-fun bs!1138741 () Bool)

(assert (= bs!1138741 (and b!4748062 b!4748064)))

(assert (=> bs!1138741 (= lambda!220892 lambda!220891)))

(assert (=> bs!1138738 (= (= lt!1910249 lt!1910441) (= lambda!220892 lambda!220889))))

(assert (=> b!4748062 true))

(declare-fun lt!1910469 () ListMap!5449)

(declare-fun lambda!220893 () Int)

(assert (=> b!4748062 (= (= lt!1910469 lt!1910249) (= lambda!220893 lambda!220892))))

(assert (=> bs!1138738 (= (= lt!1910469 lt!1910249) (= lambda!220893 lambda!220888))))

(assert (=> bs!1138739 (= (= lt!1910469 lt!1910249) (= lambda!220893 lambda!220887))))

(assert (=> bs!1138740 (= (= lt!1910469 lt!1910434) (= lambda!220893 lambda!220890))))

(assert (=> bs!1138741 (= (= lt!1910469 lt!1910249) (= lambda!220893 lambda!220891))))

(assert (=> bs!1138738 (= (= lt!1910469 lt!1910441) (= lambda!220893 lambda!220889))))

(assert (=> b!4748062 true))

(declare-fun bs!1138742 () Bool)

(declare-fun d!1517430 () Bool)

(assert (= bs!1138742 (and d!1517430 b!4748062)))

(declare-fun lt!1910462 () ListMap!5449)

(declare-fun lambda!220894 () Int)

(assert (=> bs!1138742 (= (= lt!1910462 lt!1910469) (= lambda!220894 lambda!220893))))

(assert (=> bs!1138742 (= (= lt!1910462 lt!1910249) (= lambda!220894 lambda!220892))))

(declare-fun bs!1138743 () Bool)

(assert (= bs!1138743 (and d!1517430 b!4748051)))

(assert (=> bs!1138743 (= (= lt!1910462 lt!1910249) (= lambda!220894 lambda!220888))))

(declare-fun bs!1138744 () Bool)

(assert (= bs!1138744 (and d!1517430 b!4748053)))

(assert (=> bs!1138744 (= (= lt!1910462 lt!1910249) (= lambda!220894 lambda!220887))))

(declare-fun bs!1138745 () Bool)

(assert (= bs!1138745 (and d!1517430 d!1517400)))

(assert (=> bs!1138745 (= (= lt!1910462 lt!1910434) (= lambda!220894 lambda!220890))))

(declare-fun bs!1138746 () Bool)

(assert (= bs!1138746 (and d!1517430 b!4748064)))

(assert (=> bs!1138746 (= (= lt!1910462 lt!1910249) (= lambda!220894 lambda!220891))))

(assert (=> bs!1138743 (= (= lt!1910462 lt!1910441) (= lambda!220894 lambda!220889))))

(assert (=> d!1517430 true))

(declare-fun e!2961640 () ListMap!5449)

(assert (=> b!4748062 (= e!2961640 lt!1910469)))

(declare-fun lt!1910463 () ListMap!5449)

(assert (=> b!4748062 (= lt!1910463 (+!2336 lt!1910249 (h!59431 (t!360472 l!14304))))))

(assert (=> b!4748062 (= lt!1910469 (addToMapMapFromBucket!1526 (t!360472 (t!360472 l!14304)) (+!2336 lt!1910249 (h!59431 (t!360472 l!14304)))))))

(declare-fun lt!1910471 () Unit!134631)

(declare-fun call!332312 () Unit!134631)

(assert (=> b!4748062 (= lt!1910471 call!332312)))

(assert (=> b!4748062 (forall!11737 (toList!6070 lt!1910249) lambda!220892)))

(declare-fun lt!1910476 () Unit!134631)

(assert (=> b!4748062 (= lt!1910476 lt!1910471)))

(assert (=> b!4748062 (forall!11737 (toList!6070 lt!1910463) lambda!220893)))

(declare-fun lt!1910465 () Unit!134631)

(declare-fun Unit!134666 () Unit!134631)

(assert (=> b!4748062 (= lt!1910465 Unit!134666)))

(assert (=> b!4748062 (forall!11737 (t!360472 (t!360472 l!14304)) lambda!220893)))

(declare-fun lt!1910472 () Unit!134631)

(declare-fun Unit!134667 () Unit!134631)

(assert (=> b!4748062 (= lt!1910472 Unit!134667)))

(declare-fun lt!1910480 () Unit!134631)

(declare-fun Unit!134668 () Unit!134631)

(assert (=> b!4748062 (= lt!1910480 Unit!134668)))

(declare-fun lt!1910466 () Unit!134631)

(assert (=> b!4748062 (= lt!1910466 (forallContained!3763 (toList!6070 lt!1910463) lambda!220893 (h!59431 (t!360472 l!14304))))))

(assert (=> b!4748062 (contains!16456 lt!1910463 (_1!30674 (h!59431 (t!360472 l!14304))))))

(declare-fun lt!1910470 () Unit!134631)

(declare-fun Unit!134669 () Unit!134631)

(assert (=> b!4748062 (= lt!1910470 Unit!134669)))

(assert (=> b!4748062 (contains!16456 lt!1910469 (_1!30674 (h!59431 (t!360472 l!14304))))))

(declare-fun lt!1910477 () Unit!134631)

(declare-fun Unit!134670 () Unit!134631)

(assert (=> b!4748062 (= lt!1910477 Unit!134670)))

(assert (=> b!4748062 (forall!11737 (t!360472 l!14304) lambda!220893)))

(declare-fun lt!1910478 () Unit!134631)

(declare-fun Unit!134671 () Unit!134631)

(assert (=> b!4748062 (= lt!1910478 Unit!134671)))

(declare-fun call!332313 () Bool)

(assert (=> b!4748062 call!332313))

(declare-fun lt!1910474 () Unit!134631)

(declare-fun Unit!134672 () Unit!134631)

(assert (=> b!4748062 (= lt!1910474 Unit!134672)))

(declare-fun lt!1910468 () Unit!134631)

(declare-fun Unit!134673 () Unit!134631)

(assert (=> b!4748062 (= lt!1910468 Unit!134673)))

(declare-fun lt!1910482 () Unit!134631)

(assert (=> b!4748062 (= lt!1910482 (addForallContainsKeyThenBeforeAdding!851 lt!1910249 lt!1910469 (_1!30674 (h!59431 (t!360472 l!14304))) (_2!30674 (h!59431 (t!360472 l!14304)))))))

(assert (=> b!4748062 (forall!11737 (toList!6070 lt!1910249) lambda!220893)))

(declare-fun lt!1910464 () Unit!134631)

(assert (=> b!4748062 (= lt!1910464 lt!1910482)))

(assert (=> b!4748062 (forall!11737 (toList!6070 lt!1910249) lambda!220893)))

(declare-fun lt!1910475 () Unit!134631)

(declare-fun Unit!134674 () Unit!134631)

(assert (=> b!4748062 (= lt!1910475 Unit!134674)))

(declare-fun res!2012789 () Bool)

(declare-fun call!332314 () Bool)

(assert (=> b!4748062 (= res!2012789 call!332314)))

(declare-fun e!2961641 () Bool)

(assert (=> b!4748062 (=> (not res!2012789) (not e!2961641))))

(assert (=> b!4748062 e!2961641))

(declare-fun lt!1910467 () Unit!134631)

(declare-fun Unit!134675 () Unit!134631)

(assert (=> b!4748062 (= lt!1910467 Unit!134675)))

(declare-fun e!2961642 () Bool)

(assert (=> d!1517430 e!2961642))

(declare-fun res!2012788 () Bool)

(assert (=> d!1517430 (=> (not res!2012788) (not e!2961642))))

(assert (=> d!1517430 (= res!2012788 (forall!11737 (t!360472 l!14304) lambda!220894))))

(assert (=> d!1517430 (= lt!1910462 e!2961640)))

(declare-fun c!810860 () Bool)

(assert (=> d!1517430 (= c!810860 ((_ is Nil!53034) (t!360472 l!14304)))))

(assert (=> d!1517430 (noDuplicateKeys!2100 (t!360472 l!14304))))

(assert (=> d!1517430 (= (addToMapMapFromBucket!1526 (t!360472 l!14304) lt!1910249) lt!1910462)))

(declare-fun bm!332307 () Bool)

(assert (=> bm!332307 (= call!332314 (forall!11737 (ite c!810860 (toList!6070 lt!1910249) (t!360472 l!14304)) (ite c!810860 lambda!220891 lambda!220893)))))

(declare-fun b!4748063 () Bool)

(assert (=> b!4748063 (= e!2961642 (invariantList!1569 (toList!6070 lt!1910462)))))

(assert (=> b!4748064 (= e!2961640 lt!1910249)))

(declare-fun lt!1910481 () Unit!134631)

(assert (=> b!4748064 (= lt!1910481 call!332312)))

(assert (=> b!4748064 call!332313))

(declare-fun lt!1910473 () Unit!134631)

(assert (=> b!4748064 (= lt!1910473 lt!1910481)))

(assert (=> b!4748064 call!332314))

(declare-fun lt!1910479 () Unit!134631)

(declare-fun Unit!134677 () Unit!134631)

(assert (=> b!4748064 (= lt!1910479 Unit!134677)))

(declare-fun b!4748065 () Bool)

(declare-fun res!2012790 () Bool)

(assert (=> b!4748065 (=> (not res!2012790) (not e!2961642))))

(assert (=> b!4748065 (= res!2012790 (forall!11737 (toList!6070 lt!1910249) lambda!220894))))

(declare-fun bm!332308 () Bool)

(assert (=> bm!332308 (= call!332313 (forall!11737 (ite c!810860 (toList!6070 lt!1910249) (toList!6070 lt!1910463)) (ite c!810860 lambda!220891 lambda!220893)))))

(declare-fun b!4748066 () Bool)

(assert (=> b!4748066 (= e!2961641 (forall!11737 (toList!6070 lt!1910249) lambda!220893))))

(declare-fun bm!332309 () Bool)

(assert (=> bm!332309 (= call!332312 (lemmaContainsAllItsOwnKeys!852 lt!1910249))))

(assert (= (and d!1517430 c!810860) b!4748064))

(assert (= (and d!1517430 (not c!810860)) b!4748062))

(assert (= (and b!4748062 res!2012789) b!4748066))

(assert (= (or b!4748064 b!4748062) bm!332309))

(assert (= (or b!4748064 b!4748062) bm!332308))

(assert (= (or b!4748064 b!4748062) bm!332307))

(assert (= (and d!1517430 res!2012788) b!4748065))

(assert (= (and b!4748065 res!2012790) b!4748063))

(declare-fun m!5706009 () Bool)

(assert (=> bm!332308 m!5706009))

(declare-fun m!5706011 () Bool)

(assert (=> b!4748066 m!5706011))

(assert (=> bm!332309 m!5705955))

(declare-fun m!5706013 () Bool)

(assert (=> b!4748062 m!5706013))

(assert (=> b!4748062 m!5706011))

(declare-fun m!5706015 () Bool)

(assert (=> b!4748062 m!5706015))

(declare-fun m!5706017 () Bool)

(assert (=> b!4748062 m!5706017))

(declare-fun m!5706019 () Bool)

(assert (=> b!4748062 m!5706019))

(declare-fun m!5706021 () Bool)

(assert (=> b!4748062 m!5706021))

(declare-fun m!5706023 () Bool)

(assert (=> b!4748062 m!5706023))

(assert (=> b!4748062 m!5706019))

(assert (=> b!4748062 m!5706011))

(declare-fun m!5706025 () Bool)

(assert (=> b!4748062 m!5706025))

(declare-fun m!5706027 () Bool)

(assert (=> b!4748062 m!5706027))

(declare-fun m!5706029 () Bool)

(assert (=> b!4748062 m!5706029))

(declare-fun m!5706031 () Bool)

(assert (=> b!4748062 m!5706031))

(declare-fun m!5706033 () Bool)

(assert (=> b!4748063 m!5706033))

(declare-fun m!5706035 () Bool)

(assert (=> bm!332307 m!5706035))

(declare-fun m!5706037 () Bool)

(assert (=> d!1517430 m!5706037))

(assert (=> d!1517430 m!5705767))

(declare-fun m!5706039 () Bool)

(assert (=> b!4748065 m!5706039))

(assert (=> b!4747972 d!1517430))

(declare-fun d!1517432 () Bool)

(declare-fun e!2961643 () Bool)

(assert (=> d!1517432 e!2961643))

(declare-fun res!2012791 () Bool)

(assert (=> d!1517432 (=> (not res!2012791) (not e!2961643))))

(declare-fun lt!1910485 () ListMap!5449)

(assert (=> d!1517432 (= res!2012791 (contains!16456 lt!1910485 (_1!30674 t!14174)))))

(declare-fun lt!1910483 () List!53158)

(assert (=> d!1517432 (= lt!1910485 (ListMap!5450 lt!1910483))))

(declare-fun lt!1910484 () Unit!134631)

(declare-fun lt!1910486 () Unit!134631)

(assert (=> d!1517432 (= lt!1910484 lt!1910486)))

(assert (=> d!1517432 (= (getValueByKey!2056 lt!1910483 (_1!30674 t!14174)) (Some!12505 (_2!30674 t!14174)))))

(assert (=> d!1517432 (= lt!1910486 (lemmaContainsTupThenGetReturnValue!1133 lt!1910483 (_1!30674 t!14174) (_2!30674 t!14174)))))

(assert (=> d!1517432 (= lt!1910483 (insertNoDuplicatedKeys!641 (toList!6070 lt!1910248) (_1!30674 t!14174) (_2!30674 t!14174)))))

(assert (=> d!1517432 (= (+!2336 lt!1910248 t!14174) lt!1910485)))

(declare-fun b!4748067 () Bool)

(declare-fun res!2012792 () Bool)

(assert (=> b!4748067 (=> (not res!2012792) (not e!2961643))))

(assert (=> b!4748067 (= res!2012792 (= (getValueByKey!2056 (toList!6070 lt!1910485) (_1!30674 t!14174)) (Some!12505 (_2!30674 t!14174))))))

(declare-fun b!4748068 () Bool)

(assert (=> b!4748068 (= e!2961643 (contains!16457 (toList!6070 lt!1910485) t!14174))))

(assert (= (and d!1517432 res!2012791) b!4748067))

(assert (= (and b!4748067 res!2012792) b!4748068))

(declare-fun m!5706041 () Bool)

(assert (=> d!1517432 m!5706041))

(declare-fun m!5706043 () Bool)

(assert (=> d!1517432 m!5706043))

(declare-fun m!5706045 () Bool)

(assert (=> d!1517432 m!5706045))

(declare-fun m!5706047 () Bool)

(assert (=> d!1517432 m!5706047))

(declare-fun m!5706049 () Bool)

(assert (=> b!4748067 m!5706049))

(declare-fun m!5706051 () Bool)

(assert (=> b!4748068 m!5706051))

(assert (=> b!4747972 d!1517432))

(declare-fun d!1517434 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!9503 (List!53158) (InoxSet tuple2!54760))

(assert (=> d!1517434 (= (eq!1177 (addToMapMapFromBucket!1526 (Cons!53034 t!14174 (t!360472 l!14304)) lt!1910249) (+!2336 lt!1910248 t!14174)) (= (content!9503 (toList!6070 (addToMapMapFromBucket!1526 (Cons!53034 t!14174 (t!360472 l!14304)) lt!1910249))) (content!9503 (toList!6070 (+!2336 lt!1910248 t!14174)))))))

(declare-fun bs!1138747 () Bool)

(assert (= bs!1138747 d!1517434))

(declare-fun m!5706053 () Bool)

(assert (=> bs!1138747 m!5706053))

(declare-fun m!5706055 () Bool)

(assert (=> bs!1138747 m!5706055))

(assert (=> b!4747972 d!1517434))

(declare-fun d!1517436 () Bool)

(assert (=> d!1517436 (= (eq!1177 lt!1910248 (addToMapMapFromBucket!1526 l!14304 acc!1214)) (= (content!9503 (toList!6070 lt!1910248)) (content!9503 (toList!6070 (addToMapMapFromBucket!1526 l!14304 acc!1214)))))))

(declare-fun bs!1138748 () Bool)

(assert (= bs!1138748 d!1517436))

(declare-fun m!5706057 () Bool)

(assert (=> bs!1138748 m!5706057))

(declare-fun m!5706059 () Bool)

(assert (=> bs!1138748 m!5706059))

(assert (=> b!4747970 d!1517436))

(declare-fun bs!1138749 () Bool)

(declare-fun b!4748071 () Bool)

(assert (= bs!1138749 (and b!4748071 b!4748062)))

(declare-fun lambda!220895 () Int)

(assert (=> bs!1138749 (= (= acc!1214 lt!1910469) (= lambda!220895 lambda!220893))))

(assert (=> bs!1138749 (= (= acc!1214 lt!1910249) (= lambda!220895 lambda!220892))))

(declare-fun bs!1138750 () Bool)

(assert (= bs!1138750 (and b!4748071 b!4748051)))

(assert (=> bs!1138750 (= (= acc!1214 lt!1910249) (= lambda!220895 lambda!220888))))

(declare-fun bs!1138751 () Bool)

(assert (= bs!1138751 (and b!4748071 d!1517400)))

(assert (=> bs!1138751 (= (= acc!1214 lt!1910434) (= lambda!220895 lambda!220890))))

(declare-fun bs!1138752 () Bool)

(assert (= bs!1138752 (and b!4748071 b!4748064)))

(assert (=> bs!1138752 (= (= acc!1214 lt!1910249) (= lambda!220895 lambda!220891))))

(assert (=> bs!1138750 (= (= acc!1214 lt!1910441) (= lambda!220895 lambda!220889))))

(declare-fun bs!1138753 () Bool)

(assert (= bs!1138753 (and b!4748071 b!4748053)))

(assert (=> bs!1138753 (= (= acc!1214 lt!1910249) (= lambda!220895 lambda!220887))))

(declare-fun bs!1138754 () Bool)

(assert (= bs!1138754 (and b!4748071 d!1517430)))

(assert (=> bs!1138754 (= (= acc!1214 lt!1910462) (= lambda!220895 lambda!220894))))

(assert (=> b!4748071 true))

(declare-fun bs!1138755 () Bool)

(declare-fun b!4748069 () Bool)

(assert (= bs!1138755 (and b!4748069 b!4748062)))

(declare-fun lambda!220896 () Int)

(assert (=> bs!1138755 (= (= acc!1214 lt!1910469) (= lambda!220896 lambda!220893))))

(assert (=> bs!1138755 (= (= acc!1214 lt!1910249) (= lambda!220896 lambda!220892))))

(declare-fun bs!1138756 () Bool)

(assert (= bs!1138756 (and b!4748069 b!4748051)))

(assert (=> bs!1138756 (= (= acc!1214 lt!1910249) (= lambda!220896 lambda!220888))))

(declare-fun bs!1138757 () Bool)

(assert (= bs!1138757 (and b!4748069 b!4748071)))

(assert (=> bs!1138757 (= lambda!220896 lambda!220895)))

(declare-fun bs!1138758 () Bool)

(assert (= bs!1138758 (and b!4748069 d!1517400)))

(assert (=> bs!1138758 (= (= acc!1214 lt!1910434) (= lambda!220896 lambda!220890))))

(declare-fun bs!1138759 () Bool)

(assert (= bs!1138759 (and b!4748069 b!4748064)))

(assert (=> bs!1138759 (= (= acc!1214 lt!1910249) (= lambda!220896 lambda!220891))))

(assert (=> bs!1138756 (= (= acc!1214 lt!1910441) (= lambda!220896 lambda!220889))))

(declare-fun bs!1138760 () Bool)

(assert (= bs!1138760 (and b!4748069 b!4748053)))

(assert (=> bs!1138760 (= (= acc!1214 lt!1910249) (= lambda!220896 lambda!220887))))

(declare-fun bs!1138761 () Bool)

(assert (= bs!1138761 (and b!4748069 d!1517430)))

(assert (=> bs!1138761 (= (= acc!1214 lt!1910462) (= lambda!220896 lambda!220894))))

(assert (=> b!4748069 true))

(declare-fun lambda!220897 () Int)

(declare-fun lt!1910494 () ListMap!5449)

(assert (=> b!4748069 (= (= lt!1910494 acc!1214) (= lambda!220897 lambda!220896))))

(assert (=> bs!1138755 (= (= lt!1910494 lt!1910469) (= lambda!220897 lambda!220893))))

(assert (=> bs!1138755 (= (= lt!1910494 lt!1910249) (= lambda!220897 lambda!220892))))

(assert (=> bs!1138756 (= (= lt!1910494 lt!1910249) (= lambda!220897 lambda!220888))))

(assert (=> bs!1138757 (= (= lt!1910494 acc!1214) (= lambda!220897 lambda!220895))))

(assert (=> bs!1138758 (= (= lt!1910494 lt!1910434) (= lambda!220897 lambda!220890))))

(assert (=> bs!1138759 (= (= lt!1910494 lt!1910249) (= lambda!220897 lambda!220891))))

(assert (=> bs!1138756 (= (= lt!1910494 lt!1910441) (= lambda!220897 lambda!220889))))

(assert (=> bs!1138760 (= (= lt!1910494 lt!1910249) (= lambda!220897 lambda!220887))))

(assert (=> bs!1138761 (= (= lt!1910494 lt!1910462) (= lambda!220897 lambda!220894))))

(assert (=> b!4748069 true))

(declare-fun bs!1138762 () Bool)

(declare-fun d!1517438 () Bool)

(assert (= bs!1138762 (and d!1517438 b!4748069)))

(declare-fun lambda!220898 () Int)

(declare-fun lt!1910487 () ListMap!5449)

(assert (=> bs!1138762 (= (= lt!1910487 lt!1910494) (= lambda!220898 lambda!220897))))

(assert (=> bs!1138762 (= (= lt!1910487 acc!1214) (= lambda!220898 lambda!220896))))

(declare-fun bs!1138763 () Bool)

(assert (= bs!1138763 (and d!1517438 b!4748062)))

(assert (=> bs!1138763 (= (= lt!1910487 lt!1910469) (= lambda!220898 lambda!220893))))

(assert (=> bs!1138763 (= (= lt!1910487 lt!1910249) (= lambda!220898 lambda!220892))))

(declare-fun bs!1138764 () Bool)

(assert (= bs!1138764 (and d!1517438 b!4748051)))

(assert (=> bs!1138764 (= (= lt!1910487 lt!1910249) (= lambda!220898 lambda!220888))))

(declare-fun bs!1138765 () Bool)

(assert (= bs!1138765 (and d!1517438 b!4748071)))

(assert (=> bs!1138765 (= (= lt!1910487 acc!1214) (= lambda!220898 lambda!220895))))

(declare-fun bs!1138766 () Bool)

(assert (= bs!1138766 (and d!1517438 d!1517400)))

(assert (=> bs!1138766 (= (= lt!1910487 lt!1910434) (= lambda!220898 lambda!220890))))

(declare-fun bs!1138767 () Bool)

(assert (= bs!1138767 (and d!1517438 b!4748064)))

(assert (=> bs!1138767 (= (= lt!1910487 lt!1910249) (= lambda!220898 lambda!220891))))

(assert (=> bs!1138764 (= (= lt!1910487 lt!1910441) (= lambda!220898 lambda!220889))))

(declare-fun bs!1138768 () Bool)

(assert (= bs!1138768 (and d!1517438 b!4748053)))

(assert (=> bs!1138768 (= (= lt!1910487 lt!1910249) (= lambda!220898 lambda!220887))))

(declare-fun bs!1138769 () Bool)

(assert (= bs!1138769 (and d!1517438 d!1517430)))

(assert (=> bs!1138769 (= (= lt!1910487 lt!1910462) (= lambda!220898 lambda!220894))))

(assert (=> d!1517438 true))

(declare-fun e!2961644 () ListMap!5449)

(assert (=> b!4748069 (= e!2961644 lt!1910494)))

(declare-fun lt!1910488 () ListMap!5449)

(assert (=> b!4748069 (= lt!1910488 (+!2336 acc!1214 (h!59431 l!14304)))))

(assert (=> b!4748069 (= lt!1910494 (addToMapMapFromBucket!1526 (t!360472 l!14304) (+!2336 acc!1214 (h!59431 l!14304))))))

(declare-fun lt!1910496 () Unit!134631)

(declare-fun call!332315 () Unit!134631)

(assert (=> b!4748069 (= lt!1910496 call!332315)))

(assert (=> b!4748069 (forall!11737 (toList!6070 acc!1214) lambda!220896)))

(declare-fun lt!1910501 () Unit!134631)

(assert (=> b!4748069 (= lt!1910501 lt!1910496)))

(assert (=> b!4748069 (forall!11737 (toList!6070 lt!1910488) lambda!220897)))

(declare-fun lt!1910490 () Unit!134631)

(declare-fun Unit!134688 () Unit!134631)

(assert (=> b!4748069 (= lt!1910490 Unit!134688)))

(assert (=> b!4748069 (forall!11737 (t!360472 l!14304) lambda!220897)))

(declare-fun lt!1910497 () Unit!134631)

(declare-fun Unit!134689 () Unit!134631)

(assert (=> b!4748069 (= lt!1910497 Unit!134689)))

(declare-fun lt!1910505 () Unit!134631)

(declare-fun Unit!134690 () Unit!134631)

(assert (=> b!4748069 (= lt!1910505 Unit!134690)))

(declare-fun lt!1910491 () Unit!134631)

(assert (=> b!4748069 (= lt!1910491 (forallContained!3763 (toList!6070 lt!1910488) lambda!220897 (h!59431 l!14304)))))

(assert (=> b!4748069 (contains!16456 lt!1910488 (_1!30674 (h!59431 l!14304)))))

(declare-fun lt!1910495 () Unit!134631)

(declare-fun Unit!134691 () Unit!134631)

(assert (=> b!4748069 (= lt!1910495 Unit!134691)))

(assert (=> b!4748069 (contains!16456 lt!1910494 (_1!30674 (h!59431 l!14304)))))

(declare-fun lt!1910502 () Unit!134631)

(declare-fun Unit!134692 () Unit!134631)

(assert (=> b!4748069 (= lt!1910502 Unit!134692)))

(assert (=> b!4748069 (forall!11737 l!14304 lambda!220897)))

(declare-fun lt!1910503 () Unit!134631)

(declare-fun Unit!134693 () Unit!134631)

(assert (=> b!4748069 (= lt!1910503 Unit!134693)))

(declare-fun call!332316 () Bool)

(assert (=> b!4748069 call!332316))

(declare-fun lt!1910499 () Unit!134631)

(declare-fun Unit!134694 () Unit!134631)

(assert (=> b!4748069 (= lt!1910499 Unit!134694)))

(declare-fun lt!1910493 () Unit!134631)

(declare-fun Unit!134695 () Unit!134631)

(assert (=> b!4748069 (= lt!1910493 Unit!134695)))

(declare-fun lt!1910507 () Unit!134631)

(assert (=> b!4748069 (= lt!1910507 (addForallContainsKeyThenBeforeAdding!851 acc!1214 lt!1910494 (_1!30674 (h!59431 l!14304)) (_2!30674 (h!59431 l!14304))))))

(assert (=> b!4748069 (forall!11737 (toList!6070 acc!1214) lambda!220897)))

(declare-fun lt!1910489 () Unit!134631)

(assert (=> b!4748069 (= lt!1910489 lt!1910507)))

(assert (=> b!4748069 (forall!11737 (toList!6070 acc!1214) lambda!220897)))

(declare-fun lt!1910500 () Unit!134631)

(declare-fun Unit!134696 () Unit!134631)

(assert (=> b!4748069 (= lt!1910500 Unit!134696)))

(declare-fun res!2012794 () Bool)

(declare-fun call!332317 () Bool)

(assert (=> b!4748069 (= res!2012794 call!332317)))

(declare-fun e!2961645 () Bool)

(assert (=> b!4748069 (=> (not res!2012794) (not e!2961645))))

(assert (=> b!4748069 e!2961645))

(declare-fun lt!1910492 () Unit!134631)

(declare-fun Unit!134697 () Unit!134631)

(assert (=> b!4748069 (= lt!1910492 Unit!134697)))

(declare-fun e!2961646 () Bool)

(assert (=> d!1517438 e!2961646))

(declare-fun res!2012793 () Bool)

(assert (=> d!1517438 (=> (not res!2012793) (not e!2961646))))

(assert (=> d!1517438 (= res!2012793 (forall!11737 l!14304 lambda!220898))))

(assert (=> d!1517438 (= lt!1910487 e!2961644)))

(declare-fun c!810861 () Bool)

(assert (=> d!1517438 (= c!810861 ((_ is Nil!53034) l!14304))))

(assert (=> d!1517438 (noDuplicateKeys!2100 l!14304)))

(assert (=> d!1517438 (= (addToMapMapFromBucket!1526 l!14304 acc!1214) lt!1910487)))

(declare-fun bm!332310 () Bool)

(assert (=> bm!332310 (= call!332317 (forall!11737 (ite c!810861 (toList!6070 acc!1214) l!14304) (ite c!810861 lambda!220895 lambda!220897)))))

(declare-fun b!4748070 () Bool)

(assert (=> b!4748070 (= e!2961646 (invariantList!1569 (toList!6070 lt!1910487)))))

(assert (=> b!4748071 (= e!2961644 acc!1214)))

(declare-fun lt!1910506 () Unit!134631)

(assert (=> b!4748071 (= lt!1910506 call!332315)))

(assert (=> b!4748071 call!332316))

(declare-fun lt!1910498 () Unit!134631)

(assert (=> b!4748071 (= lt!1910498 lt!1910506)))

(assert (=> b!4748071 call!332317))

(declare-fun lt!1910504 () Unit!134631)

(declare-fun Unit!134698 () Unit!134631)

(assert (=> b!4748071 (= lt!1910504 Unit!134698)))

(declare-fun b!4748072 () Bool)

(declare-fun res!2012795 () Bool)

(assert (=> b!4748072 (=> (not res!2012795) (not e!2961646))))

(assert (=> b!4748072 (= res!2012795 (forall!11737 (toList!6070 acc!1214) lambda!220898))))

(declare-fun bm!332311 () Bool)

(assert (=> bm!332311 (= call!332316 (forall!11737 (ite c!810861 (toList!6070 acc!1214) (toList!6070 lt!1910488)) (ite c!810861 lambda!220895 lambda!220897)))))

(declare-fun b!4748073 () Bool)

(assert (=> b!4748073 (= e!2961645 (forall!11737 (toList!6070 acc!1214) lambda!220897))))

(declare-fun bm!332312 () Bool)

(assert (=> bm!332312 (= call!332315 (lemmaContainsAllItsOwnKeys!852 acc!1214))))

(assert (= (and d!1517438 c!810861) b!4748071))

(assert (= (and d!1517438 (not c!810861)) b!4748069))

(assert (= (and b!4748069 res!2012794) b!4748073))

(assert (= (or b!4748071 b!4748069) bm!332312))

(assert (= (or b!4748071 b!4748069) bm!332311))

(assert (= (or b!4748071 b!4748069) bm!332310))

(assert (= (and d!1517438 res!2012793) b!4748072))

(assert (= (and b!4748072 res!2012795) b!4748070))

(declare-fun m!5706061 () Bool)

(assert (=> bm!332311 m!5706061))

(declare-fun m!5706063 () Bool)

(assert (=> b!4748073 m!5706063))

(declare-fun m!5706065 () Bool)

(assert (=> bm!332312 m!5706065))

(declare-fun m!5706067 () Bool)

(assert (=> b!4748069 m!5706067))

(assert (=> b!4748069 m!5706063))

(declare-fun m!5706069 () Bool)

(assert (=> b!4748069 m!5706069))

(declare-fun m!5706071 () Bool)

(assert (=> b!4748069 m!5706071))

(assert (=> b!4748069 m!5705763))

(declare-fun m!5706073 () Bool)

(assert (=> b!4748069 m!5706073))

(declare-fun m!5706075 () Bool)

(assert (=> b!4748069 m!5706075))

(assert (=> b!4748069 m!5705763))

(assert (=> b!4748069 m!5706063))

(declare-fun m!5706077 () Bool)

(assert (=> b!4748069 m!5706077))

(declare-fun m!5706079 () Bool)

(assert (=> b!4748069 m!5706079))

(declare-fun m!5706081 () Bool)

(assert (=> b!4748069 m!5706081))

(declare-fun m!5706083 () Bool)

(assert (=> b!4748069 m!5706083))

(declare-fun m!5706085 () Bool)

(assert (=> b!4748070 m!5706085))

(declare-fun m!5706087 () Bool)

(assert (=> bm!332310 m!5706087))

(declare-fun m!5706089 () Bool)

(assert (=> d!1517438 m!5706089))

(assert (=> d!1517438 m!5705757))

(declare-fun m!5706091 () Bool)

(assert (=> b!4748072 m!5706091))

(assert (=> b!4747970 d!1517438))

(declare-fun d!1517440 () Bool)

(declare-fun res!2012796 () Bool)

(declare-fun e!2961647 () Bool)

(assert (=> d!1517440 (=> res!2012796 e!2961647)))

(assert (=> d!1517440 (= res!2012796 (not ((_ is Cons!53034) l!14304)))))

(assert (=> d!1517440 (= (noDuplicateKeys!2100 l!14304) e!2961647)))

(declare-fun b!4748074 () Bool)

(declare-fun e!2961648 () Bool)

(assert (=> b!4748074 (= e!2961647 e!2961648)))

(declare-fun res!2012797 () Bool)

(assert (=> b!4748074 (=> (not res!2012797) (not e!2961648))))

(assert (=> b!4748074 (= res!2012797 (not (containsKey!3527 (t!360472 l!14304) (_1!30674 (h!59431 l!14304)))))))

(declare-fun b!4748075 () Bool)

(assert (=> b!4748075 (= e!2961648 (noDuplicateKeys!2100 (t!360472 l!14304)))))

(assert (= (and d!1517440 (not res!2012796)) b!4748074))

(assert (= (and b!4748074 res!2012797) b!4748075))

(declare-fun m!5706093 () Bool)

(assert (=> b!4748074 m!5706093))

(assert (=> b!4748075 m!5705767))

(assert (=> start!485004 d!1517440))

(declare-fun d!1517442 () Bool)

(assert (=> d!1517442 (= (inv!68272 acc!1214) (invariantList!1569 (toList!6070 acc!1214)))))

(declare-fun bs!1138770 () Bool)

(assert (= bs!1138770 d!1517442))

(declare-fun m!5706095 () Bool)

(assert (=> bs!1138770 m!5706095))

(assert (=> start!485004 d!1517442))

(declare-fun e!2961651 () Bool)

(declare-fun b!4748080 () Bool)

(declare-fun tp!1349792 () Bool)

(assert (=> b!4748080 (= e!2961651 (and tp_is_empty!31693 tp_is_empty!31695 tp!1349792))))

(assert (=> b!4747973 (= tp!1349785 e!2961651)))

(assert (= (and b!4747973 ((_ is Cons!53034) (t!360472 l!14304))) b!4748080))

(declare-fun e!2961652 () Bool)

(declare-fun b!4748081 () Bool)

(declare-fun tp!1349793 () Bool)

(assert (=> b!4748081 (= e!2961652 (and tp_is_empty!31693 tp_is_empty!31695 tp!1349793))))

(assert (=> b!4747971 (= tp!1349784 e!2961652)))

(assert (= (and b!4747971 ((_ is Cons!53034) (toList!6070 acc!1214))) b!4748081))

(check-sat (not b!4748063) (not b!4748073) (not b!4748067) (not b!4747980) (not b!4748058) (not d!1517432) (not bm!332305) (not b!4748066) (not b!4748055) (not b!4748069) (not b!4748065) (not b!4748059) tp_is_empty!31693 (not b!4748051) (not bm!332309) (not bm!332308) (not b!4748074) (not bm!332307) (not d!1517442) (not b!4748062) (not b!4748070) (not d!1517398) (not bm!332304) (not d!1517426) (not d!1517438) (not b!4748068) (not b!4748080) (not bm!332310) (not d!1517436) (not bm!332311) (not b!4748081) (not b!4747987) (not b!4748060) (not b!4748061) (not d!1517434) (not b!4748075) (not d!1517430) (not b!4748054) (not b!4747981) tp_is_empty!31695 (not b!4748052) (not d!1517424) (not b!4748072) (not b!4747986) (not bm!332312) (not d!1517400) (not bm!332306))
(check-sat)
