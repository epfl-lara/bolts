; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!485468 () Bool)

(assert start!485468)

(declare-fun e!2963636 () Bool)

(declare-datatypes ((K!14515 0))(
  ( (K!14516 (val!19883 Int)) )
))
(declare-datatypes ((V!14761 0))(
  ( (V!14762 (val!19884 Int)) )
))
(declare-datatypes ((tuple2!54852 0))(
  ( (tuple2!54853 (_1!30720 K!14515) (_2!30720 V!14761)) )
))
(declare-datatypes ((List!53208 0))(
  ( (Nil!53084) (Cons!53084 (h!59481 tuple2!54852) (t!360538 List!53208)) )
))
(declare-datatypes ((ListMap!5537 0))(
  ( (ListMap!5538 (toList!6114 List!53208)) )
))
(declare-fun lt!1915016 () ListMap!5537)

(declare-fun lt!1915011 () ListMap!5537)

(declare-fun l!14304 () List!53208)

(declare-fun b!4751007 () Bool)

(declare-fun eq!1215 (ListMap!5537 ListMap!5537) Bool)

(declare-fun addToMapMapFromBucket!1570 (List!53208 ListMap!5537) ListMap!5537)

(declare-fun +!2380 (ListMap!5537 tuple2!54852) ListMap!5537)

(assert (=> b!4751007 (= e!2963636 (not (eq!1215 lt!1915016 (addToMapMapFromBucket!1570 (t!360538 l!14304) (+!2380 lt!1915011 (h!59481 l!14304))))))))

(assert (=> b!4751007 (eq!1215 lt!1915016 (addToMapMapFromBucket!1570 l!14304 lt!1915011))))

(declare-fun acc!1214 () ListMap!5537)

(declare-fun t!14174 () tuple2!54852)

(assert (=> b!4751007 (= lt!1915011 (+!2380 acc!1214 t!14174))))

(declare-fun lt!1915015 () List!53208)

(assert (=> b!4751007 (= lt!1915016 (addToMapMapFromBucket!1570 lt!1915015 acc!1214))))

(declare-fun e!2963632 () Bool)

(assert (=> b!4751007 e!2963632))

(declare-fun res!2014632 () Bool)

(assert (=> b!4751007 (=> (not res!2014632) (not e!2963632))))

(declare-fun lt!1915013 () ListMap!5537)

(declare-fun lt!1915012 () ListMap!5537)

(assert (=> b!4751007 (= res!2014632 (eq!1215 lt!1915013 (+!2380 lt!1915012 t!14174)))))

(declare-fun lt!1915017 () ListMap!5537)

(assert (=> b!4751007 (= lt!1915013 (addToMapMapFromBucket!1570 (Cons!53084 t!14174 (t!360538 l!14304)) lt!1915017))))

(declare-datatypes ((Unit!135736 0))(
  ( (Unit!135737) )
))
(declare-fun lt!1915014 () Unit!135736)

(declare-fun lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!460 (tuple2!54852 List!53208 ListMap!5537) Unit!135736)

(assert (=> b!4751007 (= lt!1915014 (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!460 t!14174 (t!360538 l!14304) lt!1915017))))

(assert (=> b!4751007 (= lt!1915012 (addToMapMapFromBucket!1570 (t!360538 l!14304) lt!1915017))))

(assert (=> b!4751007 (= lt!1915017 (+!2380 acc!1214 (h!59481 l!14304)))))

(declare-fun tp_is_empty!31877 () Bool)

(declare-fun b!4751008 () Bool)

(declare-fun tp_is_empty!31879 () Bool)

(declare-fun tp!1350165 () Bool)

(declare-fun e!2963634 () Bool)

(assert (=> b!4751008 (= e!2963634 (and tp_is_empty!31877 tp_is_empty!31879 tp!1350165))))

(declare-fun res!2014631 () Bool)

(declare-fun e!2963635 () Bool)

(assert (=> start!485468 (=> (not res!2014631) (not e!2963635))))

(declare-fun noDuplicateKeys!2146 (List!53208) Bool)

(assert (=> start!485468 (= res!2014631 (noDuplicateKeys!2146 l!14304))))

(assert (=> start!485468 e!2963635))

(assert (=> start!485468 e!2963634))

(assert (=> start!485468 (and tp_is_empty!31877 tp_is_empty!31879)))

(declare-fun e!2963633 () Bool)

(declare-fun inv!68385 (ListMap!5537) Bool)

(assert (=> start!485468 (and (inv!68385 acc!1214) e!2963633)))

(declare-fun b!4751009 () Bool)

(assert (=> b!4751009 (= e!2963632 (eq!1215 lt!1915013 (addToMapMapFromBucket!1570 (t!360538 l!14304) (+!2380 lt!1915017 t!14174))))))

(declare-fun b!4751010 () Bool)

(declare-fun tp!1350164 () Bool)

(assert (=> b!4751010 (= e!2963633 tp!1350164)))

(declare-fun b!4751011 () Bool)

(assert (=> b!4751011 (= e!2963635 e!2963636)))

(declare-fun res!2014629 () Bool)

(assert (=> b!4751011 (=> (not res!2014629) (not e!2963636))))

(assert (=> b!4751011 (= res!2014629 (noDuplicateKeys!2146 lt!1915015))))

(assert (=> b!4751011 (= lt!1915015 (Cons!53084 t!14174 l!14304))))

(declare-fun b!4751012 () Bool)

(declare-fun res!2014633 () Bool)

(assert (=> b!4751012 (=> (not res!2014633) (not e!2963632))))

(assert (=> b!4751012 (= res!2014633 (eq!1215 lt!1915012 (addToMapMapFromBucket!1570 l!14304 acc!1214)))))

(declare-fun b!4751013 () Bool)

(declare-fun res!2014630 () Bool)

(assert (=> b!4751013 (=> (not res!2014630) (not e!2963636))))

(get-info :version)

(assert (=> b!4751013 (= res!2014630 (not ((_ is Nil!53084) l!14304)))))

(assert (= (and start!485468 res!2014631) b!4751011))

(assert (= (and b!4751011 res!2014629) b!4751013))

(assert (= (and b!4751013 res!2014630) b!4751007))

(assert (= (and b!4751007 res!2014632) b!4751012))

(assert (= (and b!4751012 res!2014633) b!4751009))

(assert (= (and start!485468 ((_ is Cons!53084) l!14304)) b!4751008))

(assert (= start!485468 b!4751010))

(declare-fun m!5712755 () Bool)

(assert (=> b!4751011 m!5712755))

(declare-fun m!5712757 () Bool)

(assert (=> start!485468 m!5712757))

(declare-fun m!5712759 () Bool)

(assert (=> start!485468 m!5712759))

(declare-fun m!5712761 () Bool)

(assert (=> b!4751007 m!5712761))

(declare-fun m!5712763 () Bool)

(assert (=> b!4751007 m!5712763))

(declare-fun m!5712765 () Bool)

(assert (=> b!4751007 m!5712765))

(declare-fun m!5712767 () Bool)

(assert (=> b!4751007 m!5712767))

(declare-fun m!5712769 () Bool)

(assert (=> b!4751007 m!5712769))

(declare-fun m!5712771 () Bool)

(assert (=> b!4751007 m!5712771))

(assert (=> b!4751007 m!5712769))

(assert (=> b!4751007 m!5712771))

(declare-fun m!5712773 () Bool)

(assert (=> b!4751007 m!5712773))

(declare-fun m!5712775 () Bool)

(assert (=> b!4751007 m!5712775))

(declare-fun m!5712777 () Bool)

(assert (=> b!4751007 m!5712777))

(declare-fun m!5712779 () Bool)

(assert (=> b!4751007 m!5712779))

(assert (=> b!4751007 m!5712777))

(assert (=> b!4751007 m!5712765))

(declare-fun m!5712781 () Bool)

(assert (=> b!4751007 m!5712781))

(declare-fun m!5712783 () Bool)

(assert (=> b!4751007 m!5712783))

(declare-fun m!5712785 () Bool)

(assert (=> b!4751007 m!5712785))

(declare-fun m!5712787 () Bool)

(assert (=> b!4751012 m!5712787))

(assert (=> b!4751012 m!5712787))

(declare-fun m!5712789 () Bool)

(assert (=> b!4751012 m!5712789))

(declare-fun m!5712791 () Bool)

(assert (=> b!4751009 m!5712791))

(assert (=> b!4751009 m!5712791))

(declare-fun m!5712793 () Bool)

(assert (=> b!4751009 m!5712793))

(assert (=> b!4751009 m!5712793))

(declare-fun m!5712795 () Bool)

(assert (=> b!4751009 m!5712795))

(check-sat tp_is_empty!31877 (not b!4751007) (not b!4751009) tp_is_empty!31879 (not b!4751011) (not b!4751008) (not start!485468) (not b!4751010) (not b!4751012))
(check-sat)
(get-model)

(declare-fun d!1518467 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!9527 (List!53208) (InoxSet tuple2!54852))

(assert (=> d!1518467 (= (eq!1215 lt!1915013 (addToMapMapFromBucket!1570 (t!360538 l!14304) (+!2380 lt!1915017 t!14174))) (= (content!9527 (toList!6114 lt!1915013)) (content!9527 (toList!6114 (addToMapMapFromBucket!1570 (t!360538 l!14304) (+!2380 lt!1915017 t!14174))))))))

(declare-fun bs!1140755 () Bool)

(assert (= bs!1140755 d!1518467))

(declare-fun m!5712801 () Bool)

(assert (=> bs!1140755 m!5712801))

(declare-fun m!5712803 () Bool)

(assert (=> bs!1140755 m!5712803))

(assert (=> b!4751009 d!1518467))

(declare-fun b!4751086 () Bool)

(assert (=> b!4751086 true))

(declare-fun bs!1140913 () Bool)

(declare-fun b!4751087 () Bool)

(assert (= bs!1140913 (and b!4751087 b!4751086)))

(declare-fun lambda!221966 () Int)

(declare-fun lambda!221965 () Int)

(assert (=> bs!1140913 (= lambda!221966 lambda!221965)))

(assert (=> b!4751087 true))

(declare-fun lambda!221967 () Int)

(declare-fun lt!1915255 () ListMap!5537)

(assert (=> bs!1140913 (= (= lt!1915255 (+!2380 lt!1915017 t!14174)) (= lambda!221967 lambda!221965))))

(assert (=> b!4751087 (= (= lt!1915255 (+!2380 lt!1915017 t!14174)) (= lambda!221967 lambda!221966))))

(assert (=> b!4751087 true))

(declare-fun bs!1140914 () Bool)

(declare-fun d!1518469 () Bool)

(assert (= bs!1140914 (and d!1518469 b!4751086)))

(declare-fun lambda!221968 () Int)

(declare-fun lt!1915253 () ListMap!5537)

(assert (=> bs!1140914 (= (= lt!1915253 (+!2380 lt!1915017 t!14174)) (= lambda!221968 lambda!221965))))

(declare-fun bs!1140915 () Bool)

(assert (= bs!1140915 (and d!1518469 b!4751087)))

(assert (=> bs!1140915 (= (= lt!1915253 (+!2380 lt!1915017 t!14174)) (= lambda!221968 lambda!221966))))

(assert (=> bs!1140915 (= (= lt!1915253 lt!1915255) (= lambda!221968 lambda!221967))))

(assert (=> d!1518469 true))

(declare-fun b!4751084 () Bool)

(declare-fun e!2963679 () Bool)

(declare-fun invariantList!1592 (List!53208) Bool)

(assert (=> b!4751084 (= e!2963679 (invariantList!1592 (toList!6114 lt!1915253)))))

(declare-fun b!4751085 () Bool)

(declare-fun res!2014682 () Bool)

(assert (=> b!4751085 (=> (not res!2014682) (not e!2963679))))

(declare-fun forall!11760 (List!53208 Int) Bool)

(assert (=> b!4751085 (= res!2014682 (forall!11760 (toList!6114 (+!2380 lt!1915017 t!14174)) lambda!221968))))

(declare-fun bm!332799 () Bool)

(declare-fun call!332805 () Bool)

(declare-fun c!811186 () Bool)

(assert (=> bm!332799 (= call!332805 (forall!11760 (toList!6114 (+!2380 lt!1915017 t!14174)) (ite c!811186 lambda!221965 lambda!221967)))))

(declare-fun bm!332800 () Bool)

(declare-fun call!332804 () Unit!135736)

(declare-fun lemmaContainsAllItsOwnKeys!875 (ListMap!5537) Unit!135736)

(assert (=> bm!332800 (= call!332804 (lemmaContainsAllItsOwnKeys!875 (+!2380 lt!1915017 t!14174)))))

(declare-fun e!2963680 () ListMap!5537)

(assert (=> b!4751087 (= e!2963680 lt!1915255)))

(declare-fun lt!1915268 () ListMap!5537)

(assert (=> b!4751087 (= lt!1915268 (+!2380 (+!2380 lt!1915017 t!14174) (h!59481 (t!360538 l!14304))))))

(assert (=> b!4751087 (= lt!1915255 (addToMapMapFromBucket!1570 (t!360538 (t!360538 l!14304)) (+!2380 (+!2380 lt!1915017 t!14174) (h!59481 (t!360538 l!14304)))))))

(declare-fun lt!1915267 () Unit!135736)

(assert (=> b!4751087 (= lt!1915267 call!332804)))

(assert (=> b!4751087 (forall!11760 (toList!6114 (+!2380 lt!1915017 t!14174)) lambda!221966)))

(declare-fun lt!1915272 () Unit!135736)

(assert (=> b!4751087 (= lt!1915272 lt!1915267)))

(assert (=> b!4751087 (forall!11760 (toList!6114 lt!1915268) lambda!221967)))

(declare-fun lt!1915257 () Unit!135736)

(declare-fun Unit!135760 () Unit!135736)

(assert (=> b!4751087 (= lt!1915257 Unit!135760)))

(assert (=> b!4751087 (forall!11760 (t!360538 (t!360538 l!14304)) lambda!221967)))

(declare-fun lt!1915263 () Unit!135736)

(declare-fun Unit!135761 () Unit!135736)

(assert (=> b!4751087 (= lt!1915263 Unit!135761)))

(declare-fun lt!1915270 () Unit!135736)

(declare-fun Unit!135762 () Unit!135736)

(assert (=> b!4751087 (= lt!1915270 Unit!135762)))

(declare-fun lt!1915262 () Unit!135736)

(declare-fun forallContained!3786 (List!53208 Int tuple2!54852) Unit!135736)

(assert (=> b!4751087 (= lt!1915262 (forallContained!3786 (toList!6114 lt!1915268) lambda!221967 (h!59481 (t!360538 l!14304))))))

(declare-fun contains!16506 (ListMap!5537 K!14515) Bool)

(assert (=> b!4751087 (contains!16506 lt!1915268 (_1!30720 (h!59481 (t!360538 l!14304))))))

(declare-fun lt!1915254 () Unit!135736)

(declare-fun Unit!135763 () Unit!135736)

(assert (=> b!4751087 (= lt!1915254 Unit!135763)))

(assert (=> b!4751087 (contains!16506 lt!1915255 (_1!30720 (h!59481 (t!360538 l!14304))))))

(declare-fun lt!1915269 () Unit!135736)

(declare-fun Unit!135764 () Unit!135736)

(assert (=> b!4751087 (= lt!1915269 Unit!135764)))

(assert (=> b!4751087 (forall!11760 (t!360538 l!14304) lambda!221967)))

(declare-fun lt!1915259 () Unit!135736)

(declare-fun Unit!135765 () Unit!135736)

(assert (=> b!4751087 (= lt!1915259 Unit!135765)))

(declare-fun call!332806 () Bool)

(assert (=> b!4751087 call!332806))

(declare-fun lt!1915265 () Unit!135736)

(declare-fun Unit!135766 () Unit!135736)

(assert (=> b!4751087 (= lt!1915265 Unit!135766)))

(declare-fun lt!1915261 () Unit!135736)

(declare-fun Unit!135767 () Unit!135736)

(assert (=> b!4751087 (= lt!1915261 Unit!135767)))

(declare-fun lt!1915256 () Unit!135736)

(declare-fun addForallContainsKeyThenBeforeAdding!874 (ListMap!5537 ListMap!5537 K!14515 V!14761) Unit!135736)

(assert (=> b!4751087 (= lt!1915256 (addForallContainsKeyThenBeforeAdding!874 (+!2380 lt!1915017 t!14174) lt!1915255 (_1!30720 (h!59481 (t!360538 l!14304))) (_2!30720 (h!59481 (t!360538 l!14304)))))))

(assert (=> b!4751087 (forall!11760 (toList!6114 (+!2380 lt!1915017 t!14174)) lambda!221967)))

(declare-fun lt!1915266 () Unit!135736)

(assert (=> b!4751087 (= lt!1915266 lt!1915256)))

(assert (=> b!4751087 call!332805))

(declare-fun lt!1915264 () Unit!135736)

(declare-fun Unit!135768 () Unit!135736)

(assert (=> b!4751087 (= lt!1915264 Unit!135768)))

(declare-fun res!2014684 () Bool)

(assert (=> b!4751087 (= res!2014684 (forall!11760 (t!360538 l!14304) lambda!221967))))

(declare-fun e!2963681 () Bool)

(assert (=> b!4751087 (=> (not res!2014684) (not e!2963681))))

(assert (=> b!4751087 e!2963681))

(declare-fun lt!1915260 () Unit!135736)

(declare-fun Unit!135769 () Unit!135736)

(assert (=> b!4751087 (= lt!1915260 Unit!135769)))

(declare-fun b!4751088 () Bool)

(assert (=> b!4751088 (= e!2963681 (forall!11760 (toList!6114 (+!2380 lt!1915017 t!14174)) lambda!221967))))

(declare-fun bm!332801 () Bool)

(assert (=> bm!332801 (= call!332806 (forall!11760 (ite c!811186 (toList!6114 (+!2380 lt!1915017 t!14174)) (toList!6114 lt!1915268)) (ite c!811186 lambda!221965 lambda!221967)))))

(assert (=> b!4751086 (= e!2963680 (+!2380 lt!1915017 t!14174))))

(declare-fun lt!1915252 () Unit!135736)

(assert (=> b!4751086 (= lt!1915252 call!332804)))

(assert (=> b!4751086 call!332805))

(declare-fun lt!1915258 () Unit!135736)

(assert (=> b!4751086 (= lt!1915258 lt!1915252)))

(assert (=> b!4751086 call!332806))

(declare-fun lt!1915271 () Unit!135736)

(declare-fun Unit!135770 () Unit!135736)

(assert (=> b!4751086 (= lt!1915271 Unit!135770)))

(assert (=> d!1518469 e!2963679))

(declare-fun res!2014683 () Bool)

(assert (=> d!1518469 (=> (not res!2014683) (not e!2963679))))

(assert (=> d!1518469 (= res!2014683 (forall!11760 (t!360538 l!14304) lambda!221968))))

(assert (=> d!1518469 (= lt!1915253 e!2963680)))

(assert (=> d!1518469 (= c!811186 ((_ is Nil!53084) (t!360538 l!14304)))))

(assert (=> d!1518469 (noDuplicateKeys!2146 (t!360538 l!14304))))

(assert (=> d!1518469 (= (addToMapMapFromBucket!1570 (t!360538 l!14304) (+!2380 lt!1915017 t!14174)) lt!1915253)))

(assert (= (and d!1518469 c!811186) b!4751086))

(assert (= (and d!1518469 (not c!811186)) b!4751087))

(assert (= (and b!4751087 res!2014684) b!4751088))

(assert (= (or b!4751086 b!4751087) bm!332800))

(assert (= (or b!4751086 b!4751087) bm!332801))

(assert (= (or b!4751086 b!4751087) bm!332799))

(assert (= (and d!1518469 res!2014683) b!4751085))

(assert (= (and b!4751085 res!2014682) b!4751084))

(declare-fun m!5713065 () Bool)

(assert (=> d!1518469 m!5713065))

(declare-fun m!5713067 () Bool)

(assert (=> d!1518469 m!5713067))

(assert (=> bm!332800 m!5712791))

(declare-fun m!5713069 () Bool)

(assert (=> bm!332800 m!5713069))

(declare-fun m!5713071 () Bool)

(assert (=> b!4751084 m!5713071))

(declare-fun m!5713073 () Bool)

(assert (=> bm!332799 m!5713073))

(declare-fun m!5713075 () Bool)

(assert (=> b!4751088 m!5713075))

(declare-fun m!5713077 () Bool)

(assert (=> b!4751087 m!5713077))

(declare-fun m!5713079 () Bool)

(assert (=> b!4751087 m!5713079))

(assert (=> b!4751087 m!5713075))

(assert (=> b!4751087 m!5712791))

(declare-fun m!5713081 () Bool)

(assert (=> b!4751087 m!5713081))

(declare-fun m!5713083 () Bool)

(assert (=> b!4751087 m!5713083))

(assert (=> b!4751087 m!5712791))

(assert (=> b!4751087 m!5713077))

(declare-fun m!5713085 () Bool)

(assert (=> b!4751087 m!5713085))

(declare-fun m!5713087 () Bool)

(assert (=> b!4751087 m!5713087))

(declare-fun m!5713089 () Bool)

(assert (=> b!4751087 m!5713089))

(assert (=> b!4751087 m!5713083))

(declare-fun m!5713091 () Bool)

(assert (=> b!4751087 m!5713091))

(declare-fun m!5713093 () Bool)

(assert (=> b!4751087 m!5713093))

(declare-fun m!5713095 () Bool)

(assert (=> b!4751087 m!5713095))

(declare-fun m!5713097 () Bool)

(assert (=> bm!332801 m!5713097))

(declare-fun m!5713099 () Bool)

(assert (=> b!4751085 m!5713099))

(assert (=> b!4751009 d!1518469))

(declare-fun d!1518501 () Bool)

(declare-fun e!2963688 () Bool)

(assert (=> d!1518501 e!2963688))

(declare-fun res!2014694 () Bool)

(assert (=> d!1518501 (=> (not res!2014694) (not e!2963688))))

(declare-fun lt!1915310 () ListMap!5537)

(assert (=> d!1518501 (= res!2014694 (contains!16506 lt!1915310 (_1!30720 t!14174)))))

(declare-fun lt!1915311 () List!53208)

(assert (=> d!1518501 (= lt!1915310 (ListMap!5538 lt!1915311))))

(declare-fun lt!1915309 () Unit!135736)

(declare-fun lt!1915312 () Unit!135736)

(assert (=> d!1518501 (= lt!1915309 lt!1915312)))

(declare-datatypes ((Option!12529 0))(
  ( (None!12528) (Some!12528 (v!47227 V!14761)) )
))
(declare-fun getValueByKey!2079 (List!53208 K!14515) Option!12529)

(assert (=> d!1518501 (= (getValueByKey!2079 lt!1915311 (_1!30720 t!14174)) (Some!12528 (_2!30720 t!14174)))))

(declare-fun lemmaContainsTupThenGetReturnValue!1156 (List!53208 K!14515 V!14761) Unit!135736)

(assert (=> d!1518501 (= lt!1915312 (lemmaContainsTupThenGetReturnValue!1156 lt!1915311 (_1!30720 t!14174) (_2!30720 t!14174)))))

(declare-fun insertNoDuplicatedKeys!664 (List!53208 K!14515 V!14761) List!53208)

(assert (=> d!1518501 (= lt!1915311 (insertNoDuplicatedKeys!664 (toList!6114 lt!1915017) (_1!30720 t!14174) (_2!30720 t!14174)))))

(assert (=> d!1518501 (= (+!2380 lt!1915017 t!14174) lt!1915310)))

(declare-fun b!4751102 () Bool)

(declare-fun res!2014695 () Bool)

(assert (=> b!4751102 (=> (not res!2014695) (not e!2963688))))

(assert (=> b!4751102 (= res!2014695 (= (getValueByKey!2079 (toList!6114 lt!1915310) (_1!30720 t!14174)) (Some!12528 (_2!30720 t!14174))))))

(declare-fun b!4751103 () Bool)

(declare-fun contains!16507 (List!53208 tuple2!54852) Bool)

(assert (=> b!4751103 (= e!2963688 (contains!16507 (toList!6114 lt!1915310) t!14174))))

(assert (= (and d!1518501 res!2014694) b!4751102))

(assert (= (and b!4751102 res!2014695) b!4751103))

(declare-fun m!5713119 () Bool)

(assert (=> d!1518501 m!5713119))

(declare-fun m!5713121 () Bool)

(assert (=> d!1518501 m!5713121))

(declare-fun m!5713123 () Bool)

(assert (=> d!1518501 m!5713123))

(declare-fun m!5713125 () Bool)

(assert (=> d!1518501 m!5713125))

(declare-fun m!5713127 () Bool)

(assert (=> b!4751102 m!5713127))

(declare-fun m!5713129 () Bool)

(assert (=> b!4751103 m!5713129))

(assert (=> b!4751009 d!1518501))

(declare-fun d!1518507 () Bool)

(declare-fun e!2963689 () Bool)

(assert (=> d!1518507 e!2963689))

(declare-fun res!2014696 () Bool)

(assert (=> d!1518507 (=> (not res!2014696) (not e!2963689))))

(declare-fun lt!1915314 () ListMap!5537)

(assert (=> d!1518507 (= res!2014696 (contains!16506 lt!1915314 (_1!30720 (h!59481 l!14304))))))

(declare-fun lt!1915315 () List!53208)

(assert (=> d!1518507 (= lt!1915314 (ListMap!5538 lt!1915315))))

(declare-fun lt!1915313 () Unit!135736)

(declare-fun lt!1915316 () Unit!135736)

(assert (=> d!1518507 (= lt!1915313 lt!1915316)))

(assert (=> d!1518507 (= (getValueByKey!2079 lt!1915315 (_1!30720 (h!59481 l!14304))) (Some!12528 (_2!30720 (h!59481 l!14304))))))

(assert (=> d!1518507 (= lt!1915316 (lemmaContainsTupThenGetReturnValue!1156 lt!1915315 (_1!30720 (h!59481 l!14304)) (_2!30720 (h!59481 l!14304))))))

(assert (=> d!1518507 (= lt!1915315 (insertNoDuplicatedKeys!664 (toList!6114 acc!1214) (_1!30720 (h!59481 l!14304)) (_2!30720 (h!59481 l!14304))))))

(assert (=> d!1518507 (= (+!2380 acc!1214 (h!59481 l!14304)) lt!1915314)))

(declare-fun b!4751104 () Bool)

(declare-fun res!2014697 () Bool)

(assert (=> b!4751104 (=> (not res!2014697) (not e!2963689))))

(assert (=> b!4751104 (= res!2014697 (= (getValueByKey!2079 (toList!6114 lt!1915314) (_1!30720 (h!59481 l!14304))) (Some!12528 (_2!30720 (h!59481 l!14304)))))))

(declare-fun b!4751105 () Bool)

(assert (=> b!4751105 (= e!2963689 (contains!16507 (toList!6114 lt!1915314) (h!59481 l!14304)))))

(assert (= (and d!1518507 res!2014696) b!4751104))

(assert (= (and b!4751104 res!2014697) b!4751105))

(declare-fun m!5713131 () Bool)

(assert (=> d!1518507 m!5713131))

(declare-fun m!5713133 () Bool)

(assert (=> d!1518507 m!5713133))

(declare-fun m!5713135 () Bool)

(assert (=> d!1518507 m!5713135))

(declare-fun m!5713137 () Bool)

(assert (=> d!1518507 m!5713137))

(declare-fun m!5713139 () Bool)

(assert (=> b!4751104 m!5713139))

(declare-fun m!5713141 () Bool)

(assert (=> b!4751105 m!5713141))

(assert (=> b!4751007 d!1518507))

(declare-fun bs!1140954 () Bool)

(declare-fun b!4751108 () Bool)

(assert (= bs!1140954 (and b!4751108 b!4751086)))

(declare-fun lambda!221972 () Int)

(assert (=> bs!1140954 (= (= (+!2380 lt!1915011 (h!59481 l!14304)) (+!2380 lt!1915017 t!14174)) (= lambda!221972 lambda!221965))))

(declare-fun bs!1140955 () Bool)

(assert (= bs!1140955 (and b!4751108 b!4751087)))

(assert (=> bs!1140955 (= (= (+!2380 lt!1915011 (h!59481 l!14304)) (+!2380 lt!1915017 t!14174)) (= lambda!221972 lambda!221966))))

(assert (=> bs!1140955 (= (= (+!2380 lt!1915011 (h!59481 l!14304)) lt!1915255) (= lambda!221972 lambda!221967))))

(declare-fun bs!1140956 () Bool)

(assert (= bs!1140956 (and b!4751108 d!1518469)))

(assert (=> bs!1140956 (= (= (+!2380 lt!1915011 (h!59481 l!14304)) lt!1915253) (= lambda!221972 lambda!221968))))

(assert (=> b!4751108 true))

(declare-fun bs!1140957 () Bool)

(declare-fun b!4751109 () Bool)

(assert (= bs!1140957 (and b!4751109 b!4751087)))

(declare-fun lambda!221973 () Int)

(assert (=> bs!1140957 (= (= (+!2380 lt!1915011 (h!59481 l!14304)) lt!1915255) (= lambda!221973 lambda!221967))))

(declare-fun bs!1140958 () Bool)

(assert (= bs!1140958 (and b!4751109 b!4751086)))

(assert (=> bs!1140958 (= (= (+!2380 lt!1915011 (h!59481 l!14304)) (+!2380 lt!1915017 t!14174)) (= lambda!221973 lambda!221965))))

(assert (=> bs!1140957 (= (= (+!2380 lt!1915011 (h!59481 l!14304)) (+!2380 lt!1915017 t!14174)) (= lambda!221973 lambda!221966))))

(declare-fun bs!1140959 () Bool)

(assert (= bs!1140959 (and b!4751109 d!1518469)))

(assert (=> bs!1140959 (= (= (+!2380 lt!1915011 (h!59481 l!14304)) lt!1915253) (= lambda!221973 lambda!221968))))

(declare-fun bs!1140960 () Bool)

(assert (= bs!1140960 (and b!4751109 b!4751108)))

(assert (=> bs!1140960 (= lambda!221973 lambda!221972)))

(assert (=> b!4751109 true))

(declare-fun lt!1915320 () ListMap!5537)

(declare-fun lambda!221974 () Int)

(assert (=> bs!1140957 (= (= lt!1915320 lt!1915255) (= lambda!221974 lambda!221967))))

(assert (=> bs!1140958 (= (= lt!1915320 (+!2380 lt!1915017 t!14174)) (= lambda!221974 lambda!221965))))

(assert (=> bs!1140957 (= (= lt!1915320 (+!2380 lt!1915017 t!14174)) (= lambda!221974 lambda!221966))))

(assert (=> bs!1140959 (= (= lt!1915320 lt!1915253) (= lambda!221974 lambda!221968))))

(assert (=> bs!1140960 (= (= lt!1915320 (+!2380 lt!1915011 (h!59481 l!14304))) (= lambda!221974 lambda!221972))))

(assert (=> b!4751109 (= (= lt!1915320 (+!2380 lt!1915011 (h!59481 l!14304))) (= lambda!221974 lambda!221973))))

(assert (=> b!4751109 true))

(declare-fun bs!1140965 () Bool)

(declare-fun d!1518509 () Bool)

(assert (= bs!1140965 (and d!1518509 b!4751087)))

(declare-fun lt!1915318 () ListMap!5537)

(declare-fun lambda!221976 () Int)

(assert (=> bs!1140965 (= (= lt!1915318 lt!1915255) (= lambda!221976 lambda!221967))))

(declare-fun bs!1140967 () Bool)

(assert (= bs!1140967 (and d!1518509 b!4751086)))

(assert (=> bs!1140967 (= (= lt!1915318 (+!2380 lt!1915017 t!14174)) (= lambda!221976 lambda!221965))))

(assert (=> bs!1140965 (= (= lt!1915318 (+!2380 lt!1915017 t!14174)) (= lambda!221976 lambda!221966))))

(declare-fun bs!1140970 () Bool)

(assert (= bs!1140970 (and d!1518509 d!1518469)))

(assert (=> bs!1140970 (= (= lt!1915318 lt!1915253) (= lambda!221976 lambda!221968))))

(declare-fun bs!1140972 () Bool)

(assert (= bs!1140972 (and d!1518509 b!4751108)))

(assert (=> bs!1140972 (= (= lt!1915318 (+!2380 lt!1915011 (h!59481 l!14304))) (= lambda!221976 lambda!221972))))

(declare-fun bs!1140974 () Bool)

(assert (= bs!1140974 (and d!1518509 b!4751109)))

(assert (=> bs!1140974 (= (= lt!1915318 (+!2380 lt!1915011 (h!59481 l!14304))) (= lambda!221976 lambda!221973))))

(assert (=> bs!1140974 (= (= lt!1915318 lt!1915320) (= lambda!221976 lambda!221974))))

(assert (=> d!1518509 true))

(declare-fun b!4751106 () Bool)

(declare-fun e!2963690 () Bool)

(assert (=> b!4751106 (= e!2963690 (invariantList!1592 (toList!6114 lt!1915318)))))

(declare-fun b!4751107 () Bool)

(declare-fun res!2014698 () Bool)

(assert (=> b!4751107 (=> (not res!2014698) (not e!2963690))))

(assert (=> b!4751107 (= res!2014698 (forall!11760 (toList!6114 (+!2380 lt!1915011 (h!59481 l!14304))) lambda!221976))))

(declare-fun c!811188 () Bool)

(declare-fun call!332811 () Bool)

(declare-fun bm!332805 () Bool)

(assert (=> bm!332805 (= call!332811 (forall!11760 (toList!6114 (+!2380 lt!1915011 (h!59481 l!14304))) (ite c!811188 lambda!221972 lambda!221974)))))

(declare-fun bm!332806 () Bool)

(declare-fun call!332810 () Unit!135736)

(assert (=> bm!332806 (= call!332810 (lemmaContainsAllItsOwnKeys!875 (+!2380 lt!1915011 (h!59481 l!14304))))))

(declare-fun e!2963691 () ListMap!5537)

(assert (=> b!4751109 (= e!2963691 lt!1915320)))

(declare-fun lt!1915333 () ListMap!5537)

(assert (=> b!4751109 (= lt!1915333 (+!2380 (+!2380 lt!1915011 (h!59481 l!14304)) (h!59481 (t!360538 l!14304))))))

(assert (=> b!4751109 (= lt!1915320 (addToMapMapFromBucket!1570 (t!360538 (t!360538 l!14304)) (+!2380 (+!2380 lt!1915011 (h!59481 l!14304)) (h!59481 (t!360538 l!14304)))))))

(declare-fun lt!1915332 () Unit!135736)

(assert (=> b!4751109 (= lt!1915332 call!332810)))

(assert (=> b!4751109 (forall!11760 (toList!6114 (+!2380 lt!1915011 (h!59481 l!14304))) lambda!221973)))

(declare-fun lt!1915337 () Unit!135736)

(assert (=> b!4751109 (= lt!1915337 lt!1915332)))

(assert (=> b!4751109 (forall!11760 (toList!6114 lt!1915333) lambda!221974)))

(declare-fun lt!1915322 () Unit!135736)

(declare-fun Unit!135782 () Unit!135736)

(assert (=> b!4751109 (= lt!1915322 Unit!135782)))

(assert (=> b!4751109 (forall!11760 (t!360538 (t!360538 l!14304)) lambda!221974)))

(declare-fun lt!1915328 () Unit!135736)

(declare-fun Unit!135783 () Unit!135736)

(assert (=> b!4751109 (= lt!1915328 Unit!135783)))

(declare-fun lt!1915335 () Unit!135736)

(declare-fun Unit!135784 () Unit!135736)

(assert (=> b!4751109 (= lt!1915335 Unit!135784)))

(declare-fun lt!1915327 () Unit!135736)

(assert (=> b!4751109 (= lt!1915327 (forallContained!3786 (toList!6114 lt!1915333) lambda!221974 (h!59481 (t!360538 l!14304))))))

(assert (=> b!4751109 (contains!16506 lt!1915333 (_1!30720 (h!59481 (t!360538 l!14304))))))

(declare-fun lt!1915319 () Unit!135736)

(declare-fun Unit!135785 () Unit!135736)

(assert (=> b!4751109 (= lt!1915319 Unit!135785)))

(assert (=> b!4751109 (contains!16506 lt!1915320 (_1!30720 (h!59481 (t!360538 l!14304))))))

(declare-fun lt!1915334 () Unit!135736)

(declare-fun Unit!135786 () Unit!135736)

(assert (=> b!4751109 (= lt!1915334 Unit!135786)))

(assert (=> b!4751109 (forall!11760 (t!360538 l!14304) lambda!221974)))

(declare-fun lt!1915324 () Unit!135736)

(declare-fun Unit!135787 () Unit!135736)

(assert (=> b!4751109 (= lt!1915324 Unit!135787)))

(declare-fun call!332812 () Bool)

(assert (=> b!4751109 call!332812))

(declare-fun lt!1915330 () Unit!135736)

(declare-fun Unit!135788 () Unit!135736)

(assert (=> b!4751109 (= lt!1915330 Unit!135788)))

(declare-fun lt!1915326 () Unit!135736)

(declare-fun Unit!135789 () Unit!135736)

(assert (=> b!4751109 (= lt!1915326 Unit!135789)))

(declare-fun lt!1915321 () Unit!135736)

(assert (=> b!4751109 (= lt!1915321 (addForallContainsKeyThenBeforeAdding!874 (+!2380 lt!1915011 (h!59481 l!14304)) lt!1915320 (_1!30720 (h!59481 (t!360538 l!14304))) (_2!30720 (h!59481 (t!360538 l!14304)))))))

(assert (=> b!4751109 (forall!11760 (toList!6114 (+!2380 lt!1915011 (h!59481 l!14304))) lambda!221974)))

(declare-fun lt!1915331 () Unit!135736)

(assert (=> b!4751109 (= lt!1915331 lt!1915321)))

(assert (=> b!4751109 call!332811))

(declare-fun lt!1915329 () Unit!135736)

(declare-fun Unit!135790 () Unit!135736)

(assert (=> b!4751109 (= lt!1915329 Unit!135790)))

(declare-fun res!2014700 () Bool)

(assert (=> b!4751109 (= res!2014700 (forall!11760 (t!360538 l!14304) lambda!221974))))

(declare-fun e!2963692 () Bool)

(assert (=> b!4751109 (=> (not res!2014700) (not e!2963692))))

(assert (=> b!4751109 e!2963692))

(declare-fun lt!1915325 () Unit!135736)

(declare-fun Unit!135791 () Unit!135736)

(assert (=> b!4751109 (= lt!1915325 Unit!135791)))

(declare-fun b!4751110 () Bool)

(assert (=> b!4751110 (= e!2963692 (forall!11760 (toList!6114 (+!2380 lt!1915011 (h!59481 l!14304))) lambda!221974))))

(declare-fun bm!332807 () Bool)

(assert (=> bm!332807 (= call!332812 (forall!11760 (ite c!811188 (toList!6114 (+!2380 lt!1915011 (h!59481 l!14304))) (toList!6114 lt!1915333)) (ite c!811188 lambda!221972 lambda!221974)))))

(assert (=> b!4751108 (= e!2963691 (+!2380 lt!1915011 (h!59481 l!14304)))))

(declare-fun lt!1915317 () Unit!135736)

(assert (=> b!4751108 (= lt!1915317 call!332810)))

(assert (=> b!4751108 call!332811))

(declare-fun lt!1915323 () Unit!135736)

(assert (=> b!4751108 (= lt!1915323 lt!1915317)))

(assert (=> b!4751108 call!332812))

(declare-fun lt!1915336 () Unit!135736)

(declare-fun Unit!135792 () Unit!135736)

(assert (=> b!4751108 (= lt!1915336 Unit!135792)))

(assert (=> d!1518509 e!2963690))

(declare-fun res!2014699 () Bool)

(assert (=> d!1518509 (=> (not res!2014699) (not e!2963690))))

(assert (=> d!1518509 (= res!2014699 (forall!11760 (t!360538 l!14304) lambda!221976))))

(assert (=> d!1518509 (= lt!1915318 e!2963691)))

(assert (=> d!1518509 (= c!811188 ((_ is Nil!53084) (t!360538 l!14304)))))

(assert (=> d!1518509 (noDuplicateKeys!2146 (t!360538 l!14304))))

(assert (=> d!1518509 (= (addToMapMapFromBucket!1570 (t!360538 l!14304) (+!2380 lt!1915011 (h!59481 l!14304))) lt!1915318)))

(assert (= (and d!1518509 c!811188) b!4751108))

(assert (= (and d!1518509 (not c!811188)) b!4751109))

(assert (= (and b!4751109 res!2014700) b!4751110))

(assert (= (or b!4751108 b!4751109) bm!332806))

(assert (= (or b!4751108 b!4751109) bm!332807))

(assert (= (or b!4751108 b!4751109) bm!332805))

(assert (= (and d!1518509 res!2014699) b!4751107))

(assert (= (and b!4751107 res!2014698) b!4751106))

(declare-fun m!5713143 () Bool)

(assert (=> d!1518509 m!5713143))

(assert (=> d!1518509 m!5713067))

(assert (=> bm!332806 m!5712769))

(declare-fun m!5713145 () Bool)

(assert (=> bm!332806 m!5713145))

(declare-fun m!5713147 () Bool)

(assert (=> b!4751106 m!5713147))

(declare-fun m!5713149 () Bool)

(assert (=> bm!332805 m!5713149))

(declare-fun m!5713151 () Bool)

(assert (=> b!4751110 m!5713151))

(declare-fun m!5713153 () Bool)

(assert (=> b!4751109 m!5713153))

(declare-fun m!5713155 () Bool)

(assert (=> b!4751109 m!5713155))

(assert (=> b!4751109 m!5713151))

(assert (=> b!4751109 m!5712769))

(declare-fun m!5713157 () Bool)

(assert (=> b!4751109 m!5713157))

(declare-fun m!5713159 () Bool)

(assert (=> b!4751109 m!5713159))

(assert (=> b!4751109 m!5712769))

(assert (=> b!4751109 m!5713153))

(declare-fun m!5713161 () Bool)

(assert (=> b!4751109 m!5713161))

(declare-fun m!5713163 () Bool)

(assert (=> b!4751109 m!5713163))

(declare-fun m!5713165 () Bool)

(assert (=> b!4751109 m!5713165))

(assert (=> b!4751109 m!5713159))

(declare-fun m!5713167 () Bool)

(assert (=> b!4751109 m!5713167))

(declare-fun m!5713169 () Bool)

(assert (=> b!4751109 m!5713169))

(declare-fun m!5713171 () Bool)

(assert (=> b!4751109 m!5713171))

(declare-fun m!5713173 () Bool)

(assert (=> bm!332807 m!5713173))

(declare-fun m!5713175 () Bool)

(assert (=> b!4751107 m!5713175))

(assert (=> b!4751007 d!1518509))

(declare-fun d!1518511 () Bool)

(declare-fun e!2963693 () Bool)

(assert (=> d!1518511 e!2963693))

(declare-fun res!2014701 () Bool)

(assert (=> d!1518511 (=> (not res!2014701) (not e!2963693))))

(declare-fun lt!1915339 () ListMap!5537)

(assert (=> d!1518511 (= res!2014701 (contains!16506 lt!1915339 (_1!30720 t!14174)))))

(declare-fun lt!1915340 () List!53208)

(assert (=> d!1518511 (= lt!1915339 (ListMap!5538 lt!1915340))))

(declare-fun lt!1915338 () Unit!135736)

(declare-fun lt!1915341 () Unit!135736)

(assert (=> d!1518511 (= lt!1915338 lt!1915341)))

(assert (=> d!1518511 (= (getValueByKey!2079 lt!1915340 (_1!30720 t!14174)) (Some!12528 (_2!30720 t!14174)))))

(assert (=> d!1518511 (= lt!1915341 (lemmaContainsTupThenGetReturnValue!1156 lt!1915340 (_1!30720 t!14174) (_2!30720 t!14174)))))

(assert (=> d!1518511 (= lt!1915340 (insertNoDuplicatedKeys!664 (toList!6114 lt!1915012) (_1!30720 t!14174) (_2!30720 t!14174)))))

(assert (=> d!1518511 (= (+!2380 lt!1915012 t!14174) lt!1915339)))

(declare-fun b!4751111 () Bool)

(declare-fun res!2014702 () Bool)

(assert (=> b!4751111 (=> (not res!2014702) (not e!2963693))))

(assert (=> b!4751111 (= res!2014702 (= (getValueByKey!2079 (toList!6114 lt!1915339) (_1!30720 t!14174)) (Some!12528 (_2!30720 t!14174))))))

(declare-fun b!4751112 () Bool)

(assert (=> b!4751112 (= e!2963693 (contains!16507 (toList!6114 lt!1915339) t!14174))))

(assert (= (and d!1518511 res!2014701) b!4751111))

(assert (= (and b!4751111 res!2014702) b!4751112))

(declare-fun m!5713177 () Bool)

(assert (=> d!1518511 m!5713177))

(declare-fun m!5713179 () Bool)

(assert (=> d!1518511 m!5713179))

(declare-fun m!5713183 () Bool)

(assert (=> d!1518511 m!5713183))

(declare-fun m!5713187 () Bool)

(assert (=> d!1518511 m!5713187))

(declare-fun m!5713191 () Bool)

(assert (=> b!4751111 m!5713191))

(declare-fun m!5713195 () Bool)

(assert (=> b!4751112 m!5713195))

(assert (=> b!4751007 d!1518511))

(declare-fun d!1518513 () Bool)

(declare-fun e!2963694 () Bool)

(assert (=> d!1518513 e!2963694))

(declare-fun res!2014703 () Bool)

(assert (=> d!1518513 (=> (not res!2014703) (not e!2963694))))

(declare-fun lt!1915343 () ListMap!5537)

(assert (=> d!1518513 (= res!2014703 (contains!16506 lt!1915343 (_1!30720 t!14174)))))

(declare-fun lt!1915344 () List!53208)

(assert (=> d!1518513 (= lt!1915343 (ListMap!5538 lt!1915344))))

(declare-fun lt!1915342 () Unit!135736)

(declare-fun lt!1915345 () Unit!135736)

(assert (=> d!1518513 (= lt!1915342 lt!1915345)))

(assert (=> d!1518513 (= (getValueByKey!2079 lt!1915344 (_1!30720 t!14174)) (Some!12528 (_2!30720 t!14174)))))

(assert (=> d!1518513 (= lt!1915345 (lemmaContainsTupThenGetReturnValue!1156 lt!1915344 (_1!30720 t!14174) (_2!30720 t!14174)))))

(assert (=> d!1518513 (= lt!1915344 (insertNoDuplicatedKeys!664 (toList!6114 acc!1214) (_1!30720 t!14174) (_2!30720 t!14174)))))

(assert (=> d!1518513 (= (+!2380 acc!1214 t!14174) lt!1915343)))

(declare-fun b!4751113 () Bool)

(declare-fun res!2014704 () Bool)

(assert (=> b!4751113 (=> (not res!2014704) (not e!2963694))))

(assert (=> b!4751113 (= res!2014704 (= (getValueByKey!2079 (toList!6114 lt!1915343) (_1!30720 t!14174)) (Some!12528 (_2!30720 t!14174))))))

(declare-fun b!4751114 () Bool)

(assert (=> b!4751114 (= e!2963694 (contains!16507 (toList!6114 lt!1915343) t!14174))))

(assert (= (and d!1518513 res!2014703) b!4751113))

(assert (= (and b!4751113 res!2014704) b!4751114))

(declare-fun m!5713213 () Bool)

(assert (=> d!1518513 m!5713213))

(declare-fun m!5713215 () Bool)

(assert (=> d!1518513 m!5713215))

(declare-fun m!5713219 () Bool)

(assert (=> d!1518513 m!5713219))

(declare-fun m!5713221 () Bool)

(assert (=> d!1518513 m!5713221))

(declare-fun m!5713225 () Bool)

(assert (=> b!4751113 m!5713225))

(declare-fun m!5713227 () Bool)

(assert (=> b!4751114 m!5713227))

(assert (=> b!4751007 d!1518513))

(declare-fun d!1518515 () Bool)

(assert (=> d!1518515 (= (eq!1215 lt!1915013 (+!2380 lt!1915012 t!14174)) (= (content!9527 (toList!6114 lt!1915013)) (content!9527 (toList!6114 (+!2380 lt!1915012 t!14174)))))))

(declare-fun bs!1140986 () Bool)

(assert (= bs!1140986 d!1518515))

(assert (=> bs!1140986 m!5712801))

(declare-fun m!5713235 () Bool)

(assert (=> bs!1140986 m!5713235))

(assert (=> b!4751007 d!1518515))

(declare-fun d!1518519 () Bool)

(assert (=> d!1518519 (eq!1215 (addToMapMapFromBucket!1570 (Cons!53084 t!14174 (t!360538 l!14304)) lt!1915017) (+!2380 (addToMapMapFromBucket!1570 (t!360538 l!14304) lt!1915017) t!14174))))

(declare-fun lt!1915348 () Unit!135736)

(declare-fun choose!33819 (tuple2!54852 List!53208 ListMap!5537) Unit!135736)

(assert (=> d!1518519 (= lt!1915348 (choose!33819 t!14174 (t!360538 l!14304) lt!1915017))))

(assert (=> d!1518519 (noDuplicateKeys!2146 (t!360538 l!14304))))

(assert (=> d!1518519 (= (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!460 t!14174 (t!360538 l!14304) lt!1915017) lt!1915348)))

(declare-fun bs!1140988 () Bool)

(assert (= bs!1140988 d!1518519))

(assert (=> bs!1140988 m!5713067))

(assert (=> bs!1140988 m!5712763))

(declare-fun m!5713243 () Bool)

(assert (=> bs!1140988 m!5713243))

(declare-fun m!5713245 () Bool)

(assert (=> bs!1140988 m!5713245))

(assert (=> bs!1140988 m!5712785))

(assert (=> bs!1140988 m!5713243))

(assert (=> bs!1140988 m!5712763))

(assert (=> bs!1140988 m!5712785))

(declare-fun m!5713247 () Bool)

(assert (=> bs!1140988 m!5713247))

(assert (=> b!4751007 d!1518519))

(declare-fun d!1518523 () Bool)

(declare-fun e!2963701 () Bool)

(assert (=> d!1518523 e!2963701))

(declare-fun res!2014707 () Bool)

(assert (=> d!1518523 (=> (not res!2014707) (not e!2963701))))

(declare-fun lt!1915350 () ListMap!5537)

(assert (=> d!1518523 (= res!2014707 (contains!16506 lt!1915350 (_1!30720 (h!59481 l!14304))))))

(declare-fun lt!1915351 () List!53208)

(assert (=> d!1518523 (= lt!1915350 (ListMap!5538 lt!1915351))))

(declare-fun lt!1915349 () Unit!135736)

(declare-fun lt!1915352 () Unit!135736)

(assert (=> d!1518523 (= lt!1915349 lt!1915352)))

(assert (=> d!1518523 (= (getValueByKey!2079 lt!1915351 (_1!30720 (h!59481 l!14304))) (Some!12528 (_2!30720 (h!59481 l!14304))))))

(assert (=> d!1518523 (= lt!1915352 (lemmaContainsTupThenGetReturnValue!1156 lt!1915351 (_1!30720 (h!59481 l!14304)) (_2!30720 (h!59481 l!14304))))))

(assert (=> d!1518523 (= lt!1915351 (insertNoDuplicatedKeys!664 (toList!6114 lt!1915011) (_1!30720 (h!59481 l!14304)) (_2!30720 (h!59481 l!14304))))))

(assert (=> d!1518523 (= (+!2380 lt!1915011 (h!59481 l!14304)) lt!1915350)))

(declare-fun b!4751123 () Bool)

(declare-fun res!2014708 () Bool)

(assert (=> b!4751123 (=> (not res!2014708) (not e!2963701))))

(assert (=> b!4751123 (= res!2014708 (= (getValueByKey!2079 (toList!6114 lt!1915350) (_1!30720 (h!59481 l!14304))) (Some!12528 (_2!30720 (h!59481 l!14304)))))))

(declare-fun b!4751124 () Bool)

(assert (=> b!4751124 (= e!2963701 (contains!16507 (toList!6114 lt!1915350) (h!59481 l!14304)))))

(assert (= (and d!1518523 res!2014707) b!4751123))

(assert (= (and b!4751123 res!2014708) b!4751124))

(declare-fun m!5713249 () Bool)

(assert (=> d!1518523 m!5713249))

(declare-fun m!5713251 () Bool)

(assert (=> d!1518523 m!5713251))

(declare-fun m!5713253 () Bool)

(assert (=> d!1518523 m!5713253))

(declare-fun m!5713255 () Bool)

(assert (=> d!1518523 m!5713255))

(declare-fun m!5713257 () Bool)

(assert (=> b!4751123 m!5713257))

(declare-fun m!5713259 () Bool)

(assert (=> b!4751124 m!5713259))

(assert (=> b!4751007 d!1518523))

(declare-fun bs!1140989 () Bool)

(declare-fun b!4751127 () Bool)

(assert (= bs!1140989 (and b!4751127 b!4751087)))

(declare-fun lambda!221977 () Int)

(assert (=> bs!1140989 (= (= acc!1214 lt!1915255) (= lambda!221977 lambda!221967))))

(declare-fun bs!1140990 () Bool)

(assert (= bs!1140990 (and b!4751127 b!4751086)))

(assert (=> bs!1140990 (= (= acc!1214 (+!2380 lt!1915017 t!14174)) (= lambda!221977 lambda!221965))))

(assert (=> bs!1140989 (= (= acc!1214 (+!2380 lt!1915017 t!14174)) (= lambda!221977 lambda!221966))))

(declare-fun bs!1140991 () Bool)

(assert (= bs!1140991 (and b!4751127 b!4751108)))

(assert (=> bs!1140991 (= (= acc!1214 (+!2380 lt!1915011 (h!59481 l!14304))) (= lambda!221977 lambda!221972))))

(declare-fun bs!1140992 () Bool)

(assert (= bs!1140992 (and b!4751127 d!1518469)))

(assert (=> bs!1140992 (= (= acc!1214 lt!1915253) (= lambda!221977 lambda!221968))))

(declare-fun bs!1140993 () Bool)

(assert (= bs!1140993 (and b!4751127 d!1518509)))

(assert (=> bs!1140993 (= (= acc!1214 lt!1915318) (= lambda!221977 lambda!221976))))

(declare-fun bs!1140994 () Bool)

(assert (= bs!1140994 (and b!4751127 b!4751109)))

(assert (=> bs!1140994 (= (= acc!1214 (+!2380 lt!1915011 (h!59481 l!14304))) (= lambda!221977 lambda!221973))))

(assert (=> bs!1140994 (= (= acc!1214 lt!1915320) (= lambda!221977 lambda!221974))))

(assert (=> b!4751127 true))

(declare-fun bs!1140995 () Bool)

(declare-fun b!4751128 () Bool)

(assert (= bs!1140995 (and b!4751128 b!4751127)))

(declare-fun lambda!221978 () Int)

(assert (=> bs!1140995 (= lambda!221978 lambda!221977)))

(declare-fun bs!1140996 () Bool)

(assert (= bs!1140996 (and b!4751128 b!4751087)))

(assert (=> bs!1140996 (= (= acc!1214 lt!1915255) (= lambda!221978 lambda!221967))))

(declare-fun bs!1140997 () Bool)

(assert (= bs!1140997 (and b!4751128 b!4751086)))

(assert (=> bs!1140997 (= (= acc!1214 (+!2380 lt!1915017 t!14174)) (= lambda!221978 lambda!221965))))

(assert (=> bs!1140996 (= (= acc!1214 (+!2380 lt!1915017 t!14174)) (= lambda!221978 lambda!221966))))

(declare-fun bs!1140998 () Bool)

(assert (= bs!1140998 (and b!4751128 b!4751108)))

(assert (=> bs!1140998 (= (= acc!1214 (+!2380 lt!1915011 (h!59481 l!14304))) (= lambda!221978 lambda!221972))))

(declare-fun bs!1140999 () Bool)

(assert (= bs!1140999 (and b!4751128 d!1518469)))

(assert (=> bs!1140999 (= (= acc!1214 lt!1915253) (= lambda!221978 lambda!221968))))

(declare-fun bs!1141000 () Bool)

(assert (= bs!1141000 (and b!4751128 d!1518509)))

(assert (=> bs!1141000 (= (= acc!1214 lt!1915318) (= lambda!221978 lambda!221976))))

(declare-fun bs!1141001 () Bool)

(assert (= bs!1141001 (and b!4751128 b!4751109)))

(assert (=> bs!1141001 (= (= acc!1214 (+!2380 lt!1915011 (h!59481 l!14304))) (= lambda!221978 lambda!221973))))

(assert (=> bs!1141001 (= (= acc!1214 lt!1915320) (= lambda!221978 lambda!221974))))

(assert (=> b!4751128 true))

(declare-fun lt!1915356 () ListMap!5537)

(declare-fun lambda!221979 () Int)

(assert (=> bs!1140995 (= (= lt!1915356 acc!1214) (= lambda!221979 lambda!221977))))

(assert (=> bs!1140996 (= (= lt!1915356 lt!1915255) (= lambda!221979 lambda!221967))))

(assert (=> bs!1140997 (= (= lt!1915356 (+!2380 lt!1915017 t!14174)) (= lambda!221979 lambda!221965))))

(assert (=> bs!1140996 (= (= lt!1915356 (+!2380 lt!1915017 t!14174)) (= lambda!221979 lambda!221966))))

(assert (=> bs!1140998 (= (= lt!1915356 (+!2380 lt!1915011 (h!59481 l!14304))) (= lambda!221979 lambda!221972))))

(assert (=> b!4751128 (= (= lt!1915356 acc!1214) (= lambda!221979 lambda!221978))))

(assert (=> bs!1140999 (= (= lt!1915356 lt!1915253) (= lambda!221979 lambda!221968))))

(assert (=> bs!1141000 (= (= lt!1915356 lt!1915318) (= lambda!221979 lambda!221976))))

(assert (=> bs!1141001 (= (= lt!1915356 (+!2380 lt!1915011 (h!59481 l!14304))) (= lambda!221979 lambda!221973))))

(assert (=> bs!1141001 (= (= lt!1915356 lt!1915320) (= lambda!221979 lambda!221974))))

(assert (=> b!4751128 true))

(declare-fun bs!1141002 () Bool)

(declare-fun d!1518525 () Bool)

(assert (= bs!1141002 (and d!1518525 b!4751127)))

(declare-fun lambda!221980 () Int)

(declare-fun lt!1915354 () ListMap!5537)

(assert (=> bs!1141002 (= (= lt!1915354 acc!1214) (= lambda!221980 lambda!221977))))

(declare-fun bs!1141003 () Bool)

(assert (= bs!1141003 (and d!1518525 b!4751087)))

(assert (=> bs!1141003 (= (= lt!1915354 lt!1915255) (= lambda!221980 lambda!221967))))

(declare-fun bs!1141004 () Bool)

(assert (= bs!1141004 (and d!1518525 b!4751086)))

(assert (=> bs!1141004 (= (= lt!1915354 (+!2380 lt!1915017 t!14174)) (= lambda!221980 lambda!221965))))

(assert (=> bs!1141003 (= (= lt!1915354 (+!2380 lt!1915017 t!14174)) (= lambda!221980 lambda!221966))))

(declare-fun bs!1141005 () Bool)

(assert (= bs!1141005 (and d!1518525 b!4751108)))

(assert (=> bs!1141005 (= (= lt!1915354 (+!2380 lt!1915011 (h!59481 l!14304))) (= lambda!221980 lambda!221972))))

(declare-fun bs!1141006 () Bool)

(assert (= bs!1141006 (and d!1518525 b!4751128)))

(assert (=> bs!1141006 (= (= lt!1915354 lt!1915356) (= lambda!221980 lambda!221979))))

(assert (=> bs!1141006 (= (= lt!1915354 acc!1214) (= lambda!221980 lambda!221978))))

(declare-fun bs!1141007 () Bool)

(assert (= bs!1141007 (and d!1518525 d!1518469)))

(assert (=> bs!1141007 (= (= lt!1915354 lt!1915253) (= lambda!221980 lambda!221968))))

(declare-fun bs!1141008 () Bool)

(assert (= bs!1141008 (and d!1518525 d!1518509)))

(assert (=> bs!1141008 (= (= lt!1915354 lt!1915318) (= lambda!221980 lambda!221976))))

(declare-fun bs!1141009 () Bool)

(assert (= bs!1141009 (and d!1518525 b!4751109)))

(assert (=> bs!1141009 (= (= lt!1915354 (+!2380 lt!1915011 (h!59481 l!14304))) (= lambda!221980 lambda!221973))))

(assert (=> bs!1141009 (= (= lt!1915354 lt!1915320) (= lambda!221980 lambda!221974))))

(assert (=> d!1518525 true))

(declare-fun b!4751125 () Bool)

(declare-fun e!2963702 () Bool)

(assert (=> b!4751125 (= e!2963702 (invariantList!1592 (toList!6114 lt!1915354)))))

(declare-fun b!4751126 () Bool)

(declare-fun res!2014709 () Bool)

(assert (=> b!4751126 (=> (not res!2014709) (not e!2963702))))

(assert (=> b!4751126 (= res!2014709 (forall!11760 (toList!6114 acc!1214) lambda!221980))))

(declare-fun bm!332808 () Bool)

(declare-fun call!332814 () Bool)

(declare-fun c!811189 () Bool)

(assert (=> bm!332808 (= call!332814 (forall!11760 (toList!6114 acc!1214) (ite c!811189 lambda!221977 lambda!221979)))))

(declare-fun bm!332809 () Bool)

(declare-fun call!332813 () Unit!135736)

(assert (=> bm!332809 (= call!332813 (lemmaContainsAllItsOwnKeys!875 acc!1214))))

(declare-fun e!2963703 () ListMap!5537)

(assert (=> b!4751128 (= e!2963703 lt!1915356)))

(declare-fun lt!1915369 () ListMap!5537)

(assert (=> b!4751128 (= lt!1915369 (+!2380 acc!1214 (h!59481 lt!1915015)))))

(assert (=> b!4751128 (= lt!1915356 (addToMapMapFromBucket!1570 (t!360538 lt!1915015) (+!2380 acc!1214 (h!59481 lt!1915015))))))

(declare-fun lt!1915368 () Unit!135736)

(assert (=> b!4751128 (= lt!1915368 call!332813)))

(assert (=> b!4751128 (forall!11760 (toList!6114 acc!1214) lambda!221978)))

(declare-fun lt!1915373 () Unit!135736)

(assert (=> b!4751128 (= lt!1915373 lt!1915368)))

(assert (=> b!4751128 (forall!11760 (toList!6114 lt!1915369) lambda!221979)))

(declare-fun lt!1915358 () Unit!135736)

(declare-fun Unit!135804 () Unit!135736)

(assert (=> b!4751128 (= lt!1915358 Unit!135804)))

(assert (=> b!4751128 (forall!11760 (t!360538 lt!1915015) lambda!221979)))

(declare-fun lt!1915364 () Unit!135736)

(declare-fun Unit!135805 () Unit!135736)

(assert (=> b!4751128 (= lt!1915364 Unit!135805)))

(declare-fun lt!1915371 () Unit!135736)

(declare-fun Unit!135806 () Unit!135736)

(assert (=> b!4751128 (= lt!1915371 Unit!135806)))

(declare-fun lt!1915363 () Unit!135736)

(assert (=> b!4751128 (= lt!1915363 (forallContained!3786 (toList!6114 lt!1915369) lambda!221979 (h!59481 lt!1915015)))))

(assert (=> b!4751128 (contains!16506 lt!1915369 (_1!30720 (h!59481 lt!1915015)))))

(declare-fun lt!1915355 () Unit!135736)

(declare-fun Unit!135807 () Unit!135736)

(assert (=> b!4751128 (= lt!1915355 Unit!135807)))

(assert (=> b!4751128 (contains!16506 lt!1915356 (_1!30720 (h!59481 lt!1915015)))))

(declare-fun lt!1915370 () Unit!135736)

(declare-fun Unit!135808 () Unit!135736)

(assert (=> b!4751128 (= lt!1915370 Unit!135808)))

(assert (=> b!4751128 (forall!11760 lt!1915015 lambda!221979)))

(declare-fun lt!1915360 () Unit!135736)

(declare-fun Unit!135809 () Unit!135736)

(assert (=> b!4751128 (= lt!1915360 Unit!135809)))

(declare-fun call!332815 () Bool)

(assert (=> b!4751128 call!332815))

(declare-fun lt!1915366 () Unit!135736)

(declare-fun Unit!135810 () Unit!135736)

(assert (=> b!4751128 (= lt!1915366 Unit!135810)))

(declare-fun lt!1915362 () Unit!135736)

(declare-fun Unit!135811 () Unit!135736)

(assert (=> b!4751128 (= lt!1915362 Unit!135811)))

(declare-fun lt!1915357 () Unit!135736)

(assert (=> b!4751128 (= lt!1915357 (addForallContainsKeyThenBeforeAdding!874 acc!1214 lt!1915356 (_1!30720 (h!59481 lt!1915015)) (_2!30720 (h!59481 lt!1915015))))))

(assert (=> b!4751128 (forall!11760 (toList!6114 acc!1214) lambda!221979)))

(declare-fun lt!1915367 () Unit!135736)

(assert (=> b!4751128 (= lt!1915367 lt!1915357)))

(assert (=> b!4751128 call!332814))

(declare-fun lt!1915365 () Unit!135736)

(declare-fun Unit!135812 () Unit!135736)

(assert (=> b!4751128 (= lt!1915365 Unit!135812)))

(declare-fun res!2014711 () Bool)

(assert (=> b!4751128 (= res!2014711 (forall!11760 lt!1915015 lambda!221979))))

(declare-fun e!2963704 () Bool)

(assert (=> b!4751128 (=> (not res!2014711) (not e!2963704))))

(assert (=> b!4751128 e!2963704))

(declare-fun lt!1915361 () Unit!135736)

(declare-fun Unit!135813 () Unit!135736)

(assert (=> b!4751128 (= lt!1915361 Unit!135813)))

(declare-fun b!4751129 () Bool)

(assert (=> b!4751129 (= e!2963704 (forall!11760 (toList!6114 acc!1214) lambda!221979))))

(declare-fun bm!332810 () Bool)

(assert (=> bm!332810 (= call!332815 (forall!11760 (ite c!811189 (toList!6114 acc!1214) (toList!6114 lt!1915369)) (ite c!811189 lambda!221977 lambda!221979)))))

(assert (=> b!4751127 (= e!2963703 acc!1214)))

(declare-fun lt!1915353 () Unit!135736)

(assert (=> b!4751127 (= lt!1915353 call!332813)))

(assert (=> b!4751127 call!332814))

(declare-fun lt!1915359 () Unit!135736)

(assert (=> b!4751127 (= lt!1915359 lt!1915353)))

(assert (=> b!4751127 call!332815))

(declare-fun lt!1915372 () Unit!135736)

(declare-fun Unit!135814 () Unit!135736)

(assert (=> b!4751127 (= lt!1915372 Unit!135814)))

(assert (=> d!1518525 e!2963702))

(declare-fun res!2014710 () Bool)

(assert (=> d!1518525 (=> (not res!2014710) (not e!2963702))))

(assert (=> d!1518525 (= res!2014710 (forall!11760 lt!1915015 lambda!221980))))

(assert (=> d!1518525 (= lt!1915354 e!2963703)))

(assert (=> d!1518525 (= c!811189 ((_ is Nil!53084) lt!1915015))))

(assert (=> d!1518525 (noDuplicateKeys!2146 lt!1915015)))

(assert (=> d!1518525 (= (addToMapMapFromBucket!1570 lt!1915015 acc!1214) lt!1915354)))

(assert (= (and d!1518525 c!811189) b!4751127))

(assert (= (and d!1518525 (not c!811189)) b!4751128))

(assert (= (and b!4751128 res!2014711) b!4751129))

(assert (= (or b!4751127 b!4751128) bm!332809))

(assert (= (or b!4751127 b!4751128) bm!332810))

(assert (= (or b!4751127 b!4751128) bm!332808))

(assert (= (and d!1518525 res!2014710) b!4751126))

(assert (= (and b!4751126 res!2014709) b!4751125))

(declare-fun m!5713261 () Bool)

(assert (=> d!1518525 m!5713261))

(assert (=> d!1518525 m!5712755))

(declare-fun m!5713263 () Bool)

(assert (=> bm!332809 m!5713263))

(declare-fun m!5713265 () Bool)

(assert (=> b!4751125 m!5713265))

(declare-fun m!5713267 () Bool)

(assert (=> bm!332808 m!5713267))

(declare-fun m!5713269 () Bool)

(assert (=> b!4751129 m!5713269))

(declare-fun m!5713271 () Bool)

(assert (=> b!4751128 m!5713271))

(declare-fun m!5713273 () Bool)

(assert (=> b!4751128 m!5713273))

(assert (=> b!4751128 m!5713269))

(declare-fun m!5713275 () Bool)

(assert (=> b!4751128 m!5713275))

(declare-fun m!5713277 () Bool)

(assert (=> b!4751128 m!5713277))

(assert (=> b!4751128 m!5713271))

(declare-fun m!5713279 () Bool)

(assert (=> b!4751128 m!5713279))

(declare-fun m!5713281 () Bool)

(assert (=> b!4751128 m!5713281))

(declare-fun m!5713283 () Bool)

(assert (=> b!4751128 m!5713283))

(assert (=> b!4751128 m!5713277))

(declare-fun m!5713285 () Bool)

(assert (=> b!4751128 m!5713285))

(declare-fun m!5713287 () Bool)

(assert (=> b!4751128 m!5713287))

(declare-fun m!5713289 () Bool)

(assert (=> b!4751128 m!5713289))

(declare-fun m!5713291 () Bool)

(assert (=> bm!332810 m!5713291))

(declare-fun m!5713293 () Bool)

(assert (=> b!4751126 m!5713293))

(assert (=> b!4751007 d!1518525))

(declare-fun d!1518527 () Bool)

(assert (=> d!1518527 (= (eq!1215 lt!1915016 (addToMapMapFromBucket!1570 l!14304 lt!1915011)) (= (content!9527 (toList!6114 lt!1915016)) (content!9527 (toList!6114 (addToMapMapFromBucket!1570 l!14304 lt!1915011)))))))

(declare-fun bs!1141010 () Bool)

(assert (= bs!1141010 d!1518527))

(declare-fun m!5713295 () Bool)

(assert (=> bs!1141010 m!5713295))

(declare-fun m!5713297 () Bool)

(assert (=> bs!1141010 m!5713297))

(assert (=> b!4751007 d!1518527))

(declare-fun bs!1141011 () Bool)

(declare-fun b!4751132 () Bool)

(assert (= bs!1141011 (and b!4751132 b!4751127)))

(declare-fun lambda!221981 () Int)

(assert (=> bs!1141011 (= (= lt!1915017 acc!1214) (= lambda!221981 lambda!221977))))

(declare-fun bs!1141012 () Bool)

(assert (= bs!1141012 (and b!4751132 b!4751087)))

(assert (=> bs!1141012 (= (= lt!1915017 lt!1915255) (= lambda!221981 lambda!221967))))

(declare-fun bs!1141013 () Bool)

(assert (= bs!1141013 (and b!4751132 b!4751086)))

(assert (=> bs!1141013 (= (= lt!1915017 (+!2380 lt!1915017 t!14174)) (= lambda!221981 lambda!221965))))

(assert (=> bs!1141012 (= (= lt!1915017 (+!2380 lt!1915017 t!14174)) (= lambda!221981 lambda!221966))))

(declare-fun bs!1141014 () Bool)

(assert (= bs!1141014 (and b!4751132 b!4751108)))

(assert (=> bs!1141014 (= (= lt!1915017 (+!2380 lt!1915011 (h!59481 l!14304))) (= lambda!221981 lambda!221972))))

(declare-fun bs!1141015 () Bool)

(assert (= bs!1141015 (and b!4751132 b!4751128)))

(assert (=> bs!1141015 (= (= lt!1915017 lt!1915356) (= lambda!221981 lambda!221979))))

(assert (=> bs!1141015 (= (= lt!1915017 acc!1214) (= lambda!221981 lambda!221978))))

(declare-fun bs!1141016 () Bool)

(assert (= bs!1141016 (and b!4751132 d!1518469)))

(assert (=> bs!1141016 (= (= lt!1915017 lt!1915253) (= lambda!221981 lambda!221968))))

(declare-fun bs!1141017 () Bool)

(assert (= bs!1141017 (and b!4751132 d!1518509)))

(assert (=> bs!1141017 (= (= lt!1915017 lt!1915318) (= lambda!221981 lambda!221976))))

(declare-fun bs!1141018 () Bool)

(assert (= bs!1141018 (and b!4751132 d!1518525)))

(assert (=> bs!1141018 (= (= lt!1915017 lt!1915354) (= lambda!221981 lambda!221980))))

(declare-fun bs!1141019 () Bool)

(assert (= bs!1141019 (and b!4751132 b!4751109)))

(assert (=> bs!1141019 (= (= lt!1915017 (+!2380 lt!1915011 (h!59481 l!14304))) (= lambda!221981 lambda!221973))))

(assert (=> bs!1141019 (= (= lt!1915017 lt!1915320) (= lambda!221981 lambda!221974))))

(assert (=> b!4751132 true))

(declare-fun bs!1141020 () Bool)

(declare-fun b!4751133 () Bool)

(assert (= bs!1141020 (and b!4751133 b!4751127)))

(declare-fun lambda!221982 () Int)

(assert (=> bs!1141020 (= (= lt!1915017 acc!1214) (= lambda!221982 lambda!221977))))

(declare-fun bs!1141021 () Bool)

(assert (= bs!1141021 (and b!4751133 b!4751087)))

(assert (=> bs!1141021 (= (= lt!1915017 lt!1915255) (= lambda!221982 lambda!221967))))

(declare-fun bs!1141022 () Bool)

(assert (= bs!1141022 (and b!4751133 b!4751086)))

(assert (=> bs!1141022 (= (= lt!1915017 (+!2380 lt!1915017 t!14174)) (= lambda!221982 lambda!221965))))

(assert (=> bs!1141021 (= (= lt!1915017 (+!2380 lt!1915017 t!14174)) (= lambda!221982 lambda!221966))))

(declare-fun bs!1141023 () Bool)

(assert (= bs!1141023 (and b!4751133 b!4751108)))

(assert (=> bs!1141023 (= (= lt!1915017 (+!2380 lt!1915011 (h!59481 l!14304))) (= lambda!221982 lambda!221972))))

(declare-fun bs!1141024 () Bool)

(assert (= bs!1141024 (and b!4751133 b!4751128)))

(assert (=> bs!1141024 (= (= lt!1915017 lt!1915356) (= lambda!221982 lambda!221979))))

(declare-fun bs!1141025 () Bool)

(assert (= bs!1141025 (and b!4751133 d!1518469)))

(assert (=> bs!1141025 (= (= lt!1915017 lt!1915253) (= lambda!221982 lambda!221968))))

(declare-fun bs!1141026 () Bool)

(assert (= bs!1141026 (and b!4751133 d!1518509)))

(assert (=> bs!1141026 (= (= lt!1915017 lt!1915318) (= lambda!221982 lambda!221976))))

(assert (=> bs!1141024 (= (= lt!1915017 acc!1214) (= lambda!221982 lambda!221978))))

(declare-fun bs!1141027 () Bool)

(assert (= bs!1141027 (and b!4751133 b!4751132)))

(assert (=> bs!1141027 (= lambda!221982 lambda!221981)))

(declare-fun bs!1141028 () Bool)

(assert (= bs!1141028 (and b!4751133 d!1518525)))

(assert (=> bs!1141028 (= (= lt!1915017 lt!1915354) (= lambda!221982 lambda!221980))))

(declare-fun bs!1141029 () Bool)

(assert (= bs!1141029 (and b!4751133 b!4751109)))

(assert (=> bs!1141029 (= (= lt!1915017 (+!2380 lt!1915011 (h!59481 l!14304))) (= lambda!221982 lambda!221973))))

(assert (=> bs!1141029 (= (= lt!1915017 lt!1915320) (= lambda!221982 lambda!221974))))

(assert (=> b!4751133 true))

(declare-fun lambda!221983 () Int)

(declare-fun lt!1915377 () ListMap!5537)

(assert (=> bs!1141020 (= (= lt!1915377 acc!1214) (= lambda!221983 lambda!221977))))

(assert (=> bs!1141021 (= (= lt!1915377 lt!1915255) (= lambda!221983 lambda!221967))))

(assert (=> bs!1141022 (= (= lt!1915377 (+!2380 lt!1915017 t!14174)) (= lambda!221983 lambda!221965))))

(assert (=> bs!1141023 (= (= lt!1915377 (+!2380 lt!1915011 (h!59481 l!14304))) (= lambda!221983 lambda!221972))))

(assert (=> bs!1141024 (= (= lt!1915377 lt!1915356) (= lambda!221983 lambda!221979))))

(assert (=> b!4751133 (= (= lt!1915377 lt!1915017) (= lambda!221983 lambda!221982))))

(assert (=> bs!1141021 (= (= lt!1915377 (+!2380 lt!1915017 t!14174)) (= lambda!221983 lambda!221966))))

(assert (=> bs!1141025 (= (= lt!1915377 lt!1915253) (= lambda!221983 lambda!221968))))

(assert (=> bs!1141026 (= (= lt!1915377 lt!1915318) (= lambda!221983 lambda!221976))))

(assert (=> bs!1141024 (= (= lt!1915377 acc!1214) (= lambda!221983 lambda!221978))))

(assert (=> bs!1141027 (= (= lt!1915377 lt!1915017) (= lambda!221983 lambda!221981))))

(assert (=> bs!1141028 (= (= lt!1915377 lt!1915354) (= lambda!221983 lambda!221980))))

(assert (=> bs!1141029 (= (= lt!1915377 (+!2380 lt!1915011 (h!59481 l!14304))) (= lambda!221983 lambda!221973))))

(assert (=> bs!1141029 (= (= lt!1915377 lt!1915320) (= lambda!221983 lambda!221974))))

(assert (=> b!4751133 true))

(declare-fun bs!1141030 () Bool)

(declare-fun d!1518529 () Bool)

(assert (= bs!1141030 (and d!1518529 b!4751127)))

(declare-fun lambda!221984 () Int)

(declare-fun lt!1915375 () ListMap!5537)

(assert (=> bs!1141030 (= (= lt!1915375 acc!1214) (= lambda!221984 lambda!221977))))

(declare-fun bs!1141031 () Bool)

(assert (= bs!1141031 (and d!1518529 b!4751087)))

(assert (=> bs!1141031 (= (= lt!1915375 lt!1915255) (= lambda!221984 lambda!221967))))

(declare-fun bs!1141032 () Bool)

(assert (= bs!1141032 (and d!1518529 b!4751086)))

(assert (=> bs!1141032 (= (= lt!1915375 (+!2380 lt!1915017 t!14174)) (= lambda!221984 lambda!221965))))

(declare-fun bs!1141033 () Bool)

(assert (= bs!1141033 (and d!1518529 b!4751108)))

(assert (=> bs!1141033 (= (= lt!1915375 (+!2380 lt!1915011 (h!59481 l!14304))) (= lambda!221984 lambda!221972))))

(declare-fun bs!1141034 () Bool)

(assert (= bs!1141034 (and d!1518529 b!4751128)))

(assert (=> bs!1141034 (= (= lt!1915375 lt!1915356) (= lambda!221984 lambda!221979))))

(declare-fun bs!1141035 () Bool)

(assert (= bs!1141035 (and d!1518529 b!4751133)))

(assert (=> bs!1141035 (= (= lt!1915375 lt!1915017) (= lambda!221984 lambda!221982))))

(assert (=> bs!1141031 (= (= lt!1915375 (+!2380 lt!1915017 t!14174)) (= lambda!221984 lambda!221966))))

(declare-fun bs!1141036 () Bool)

(assert (= bs!1141036 (and d!1518529 d!1518469)))

(assert (=> bs!1141036 (= (= lt!1915375 lt!1915253) (= lambda!221984 lambda!221968))))

(declare-fun bs!1141037 () Bool)

(assert (= bs!1141037 (and d!1518529 d!1518509)))

(assert (=> bs!1141037 (= (= lt!1915375 lt!1915318) (= lambda!221984 lambda!221976))))

(assert (=> bs!1141034 (= (= lt!1915375 acc!1214) (= lambda!221984 lambda!221978))))

(declare-fun bs!1141038 () Bool)

(assert (= bs!1141038 (and d!1518529 b!4751132)))

(assert (=> bs!1141038 (= (= lt!1915375 lt!1915017) (= lambda!221984 lambda!221981))))

(declare-fun bs!1141039 () Bool)

(assert (= bs!1141039 (and d!1518529 d!1518525)))

(assert (=> bs!1141039 (= (= lt!1915375 lt!1915354) (= lambda!221984 lambda!221980))))

(declare-fun bs!1141040 () Bool)

(assert (= bs!1141040 (and d!1518529 b!4751109)))

(assert (=> bs!1141040 (= (= lt!1915375 (+!2380 lt!1915011 (h!59481 l!14304))) (= lambda!221984 lambda!221973))))

(assert (=> bs!1141035 (= (= lt!1915375 lt!1915377) (= lambda!221984 lambda!221983))))

(assert (=> bs!1141040 (= (= lt!1915375 lt!1915320) (= lambda!221984 lambda!221974))))

(assert (=> d!1518529 true))

(declare-fun b!4751130 () Bool)

(declare-fun e!2963705 () Bool)

(assert (=> b!4751130 (= e!2963705 (invariantList!1592 (toList!6114 lt!1915375)))))

(declare-fun b!4751131 () Bool)

(declare-fun res!2014712 () Bool)

(assert (=> b!4751131 (=> (not res!2014712) (not e!2963705))))

(assert (=> b!4751131 (= res!2014712 (forall!11760 (toList!6114 lt!1915017) lambda!221984))))

(declare-fun call!332817 () Bool)

(declare-fun bm!332811 () Bool)

(declare-fun c!811190 () Bool)

(assert (=> bm!332811 (= call!332817 (forall!11760 (toList!6114 lt!1915017) (ite c!811190 lambda!221981 lambda!221983)))))

(declare-fun bm!332812 () Bool)

(declare-fun call!332816 () Unit!135736)

(assert (=> bm!332812 (= call!332816 (lemmaContainsAllItsOwnKeys!875 lt!1915017))))

(declare-fun e!2963706 () ListMap!5537)

(assert (=> b!4751133 (= e!2963706 lt!1915377)))

(declare-fun lt!1915390 () ListMap!5537)

(assert (=> b!4751133 (= lt!1915390 (+!2380 lt!1915017 (h!59481 (t!360538 l!14304))))))

(assert (=> b!4751133 (= lt!1915377 (addToMapMapFromBucket!1570 (t!360538 (t!360538 l!14304)) (+!2380 lt!1915017 (h!59481 (t!360538 l!14304)))))))

(declare-fun lt!1915389 () Unit!135736)

(assert (=> b!4751133 (= lt!1915389 call!332816)))

(assert (=> b!4751133 (forall!11760 (toList!6114 lt!1915017) lambda!221982)))

(declare-fun lt!1915394 () Unit!135736)

(assert (=> b!4751133 (= lt!1915394 lt!1915389)))

(assert (=> b!4751133 (forall!11760 (toList!6114 lt!1915390) lambda!221983)))

(declare-fun lt!1915379 () Unit!135736)

(declare-fun Unit!135826 () Unit!135736)

(assert (=> b!4751133 (= lt!1915379 Unit!135826)))

(assert (=> b!4751133 (forall!11760 (t!360538 (t!360538 l!14304)) lambda!221983)))

(declare-fun lt!1915385 () Unit!135736)

(declare-fun Unit!135827 () Unit!135736)

(assert (=> b!4751133 (= lt!1915385 Unit!135827)))

(declare-fun lt!1915392 () Unit!135736)

(declare-fun Unit!135828 () Unit!135736)

(assert (=> b!4751133 (= lt!1915392 Unit!135828)))

(declare-fun lt!1915384 () Unit!135736)

(assert (=> b!4751133 (= lt!1915384 (forallContained!3786 (toList!6114 lt!1915390) lambda!221983 (h!59481 (t!360538 l!14304))))))

(assert (=> b!4751133 (contains!16506 lt!1915390 (_1!30720 (h!59481 (t!360538 l!14304))))))

(declare-fun lt!1915376 () Unit!135736)

(declare-fun Unit!135829 () Unit!135736)

(assert (=> b!4751133 (= lt!1915376 Unit!135829)))

(assert (=> b!4751133 (contains!16506 lt!1915377 (_1!30720 (h!59481 (t!360538 l!14304))))))

(declare-fun lt!1915391 () Unit!135736)

(declare-fun Unit!135830 () Unit!135736)

(assert (=> b!4751133 (= lt!1915391 Unit!135830)))

(assert (=> b!4751133 (forall!11760 (t!360538 l!14304) lambda!221983)))

(declare-fun lt!1915381 () Unit!135736)

(declare-fun Unit!135831 () Unit!135736)

(assert (=> b!4751133 (= lt!1915381 Unit!135831)))

(declare-fun call!332818 () Bool)

(assert (=> b!4751133 call!332818))

(declare-fun lt!1915387 () Unit!135736)

(declare-fun Unit!135832 () Unit!135736)

(assert (=> b!4751133 (= lt!1915387 Unit!135832)))

(declare-fun lt!1915383 () Unit!135736)

(declare-fun Unit!135833 () Unit!135736)

(assert (=> b!4751133 (= lt!1915383 Unit!135833)))

(declare-fun lt!1915378 () Unit!135736)

(assert (=> b!4751133 (= lt!1915378 (addForallContainsKeyThenBeforeAdding!874 lt!1915017 lt!1915377 (_1!30720 (h!59481 (t!360538 l!14304))) (_2!30720 (h!59481 (t!360538 l!14304)))))))

(assert (=> b!4751133 (forall!11760 (toList!6114 lt!1915017) lambda!221983)))

(declare-fun lt!1915388 () Unit!135736)

(assert (=> b!4751133 (= lt!1915388 lt!1915378)))

(assert (=> b!4751133 call!332817))

(declare-fun lt!1915386 () Unit!135736)

(declare-fun Unit!135834 () Unit!135736)

(assert (=> b!4751133 (= lt!1915386 Unit!135834)))

(declare-fun res!2014714 () Bool)

(assert (=> b!4751133 (= res!2014714 (forall!11760 (t!360538 l!14304) lambda!221983))))

(declare-fun e!2963707 () Bool)

(assert (=> b!4751133 (=> (not res!2014714) (not e!2963707))))

(assert (=> b!4751133 e!2963707))

(declare-fun lt!1915382 () Unit!135736)

(declare-fun Unit!135835 () Unit!135736)

(assert (=> b!4751133 (= lt!1915382 Unit!135835)))

(declare-fun b!4751134 () Bool)

(assert (=> b!4751134 (= e!2963707 (forall!11760 (toList!6114 lt!1915017) lambda!221983))))

(declare-fun bm!332813 () Bool)

(assert (=> bm!332813 (= call!332818 (forall!11760 (ite c!811190 (toList!6114 lt!1915017) (toList!6114 lt!1915390)) (ite c!811190 lambda!221981 lambda!221983)))))

(assert (=> b!4751132 (= e!2963706 lt!1915017)))

(declare-fun lt!1915374 () Unit!135736)

(assert (=> b!4751132 (= lt!1915374 call!332816)))

(assert (=> b!4751132 call!332817))

(declare-fun lt!1915380 () Unit!135736)

(assert (=> b!4751132 (= lt!1915380 lt!1915374)))

(assert (=> b!4751132 call!332818))

(declare-fun lt!1915393 () Unit!135736)

(declare-fun Unit!135836 () Unit!135736)

(assert (=> b!4751132 (= lt!1915393 Unit!135836)))

(assert (=> d!1518529 e!2963705))

(declare-fun res!2014713 () Bool)

(assert (=> d!1518529 (=> (not res!2014713) (not e!2963705))))

(assert (=> d!1518529 (= res!2014713 (forall!11760 (t!360538 l!14304) lambda!221984))))

(assert (=> d!1518529 (= lt!1915375 e!2963706)))

(assert (=> d!1518529 (= c!811190 ((_ is Nil!53084) (t!360538 l!14304)))))

(assert (=> d!1518529 (noDuplicateKeys!2146 (t!360538 l!14304))))

(assert (=> d!1518529 (= (addToMapMapFromBucket!1570 (t!360538 l!14304) lt!1915017) lt!1915375)))

(assert (= (and d!1518529 c!811190) b!4751132))

(assert (= (and d!1518529 (not c!811190)) b!4751133))

(assert (= (and b!4751133 res!2014714) b!4751134))

(assert (= (or b!4751132 b!4751133) bm!332812))

(assert (= (or b!4751132 b!4751133) bm!332813))

(assert (= (or b!4751132 b!4751133) bm!332811))

(assert (= (and d!1518529 res!2014713) b!4751131))

(assert (= (and b!4751131 res!2014712) b!4751130))

(declare-fun m!5713299 () Bool)

(assert (=> d!1518529 m!5713299))

(assert (=> d!1518529 m!5713067))

(declare-fun m!5713301 () Bool)

(assert (=> bm!332812 m!5713301))

(declare-fun m!5713303 () Bool)

(assert (=> b!4751130 m!5713303))

(declare-fun m!5713305 () Bool)

(assert (=> bm!332811 m!5713305))

(declare-fun m!5713307 () Bool)

(assert (=> b!4751134 m!5713307))

(declare-fun m!5713309 () Bool)

(assert (=> b!4751133 m!5713309))

(declare-fun m!5713311 () Bool)

(assert (=> b!4751133 m!5713311))

(assert (=> b!4751133 m!5713307))

(declare-fun m!5713313 () Bool)

(assert (=> b!4751133 m!5713313))

(declare-fun m!5713315 () Bool)

(assert (=> b!4751133 m!5713315))

(assert (=> b!4751133 m!5713309))

(declare-fun m!5713317 () Bool)

(assert (=> b!4751133 m!5713317))

(declare-fun m!5713319 () Bool)

(assert (=> b!4751133 m!5713319))

(declare-fun m!5713321 () Bool)

(assert (=> b!4751133 m!5713321))

(assert (=> b!4751133 m!5713315))

(declare-fun m!5713323 () Bool)

(assert (=> b!4751133 m!5713323))

(declare-fun m!5713325 () Bool)

(assert (=> b!4751133 m!5713325))

(declare-fun m!5713327 () Bool)

(assert (=> b!4751133 m!5713327))

(declare-fun m!5713329 () Bool)

(assert (=> bm!332813 m!5713329))

(declare-fun m!5713331 () Bool)

(assert (=> b!4751131 m!5713331))

(assert (=> b!4751007 d!1518529))

(declare-fun bs!1141041 () Bool)

(declare-fun b!4751137 () Bool)

(assert (= bs!1141041 (and b!4751137 b!4751127)))

(declare-fun lambda!221985 () Int)

(assert (=> bs!1141041 (= (= lt!1915017 acc!1214) (= lambda!221985 lambda!221977))))

(declare-fun bs!1141042 () Bool)

(assert (= bs!1141042 (and b!4751137 b!4751087)))

(assert (=> bs!1141042 (= (= lt!1915017 lt!1915255) (= lambda!221985 lambda!221967))))

(declare-fun bs!1141043 () Bool)

(assert (= bs!1141043 (and b!4751137 b!4751086)))

(assert (=> bs!1141043 (= (= lt!1915017 (+!2380 lt!1915017 t!14174)) (= lambda!221985 lambda!221965))))

(declare-fun bs!1141044 () Bool)

(assert (= bs!1141044 (and b!4751137 b!4751108)))

(assert (=> bs!1141044 (= (= lt!1915017 (+!2380 lt!1915011 (h!59481 l!14304))) (= lambda!221985 lambda!221972))))

(declare-fun bs!1141045 () Bool)

(assert (= bs!1141045 (and b!4751137 d!1518529)))

(assert (=> bs!1141045 (= (= lt!1915017 lt!1915375) (= lambda!221985 lambda!221984))))

(declare-fun bs!1141046 () Bool)

(assert (= bs!1141046 (and b!4751137 b!4751128)))

(assert (=> bs!1141046 (= (= lt!1915017 lt!1915356) (= lambda!221985 lambda!221979))))

(declare-fun bs!1141047 () Bool)

(assert (= bs!1141047 (and b!4751137 b!4751133)))

(assert (=> bs!1141047 (= lambda!221985 lambda!221982)))

(assert (=> bs!1141042 (= (= lt!1915017 (+!2380 lt!1915017 t!14174)) (= lambda!221985 lambda!221966))))

(declare-fun bs!1141048 () Bool)

(assert (= bs!1141048 (and b!4751137 d!1518469)))

(assert (=> bs!1141048 (= (= lt!1915017 lt!1915253) (= lambda!221985 lambda!221968))))

(declare-fun bs!1141049 () Bool)

(assert (= bs!1141049 (and b!4751137 d!1518509)))

(assert (=> bs!1141049 (= (= lt!1915017 lt!1915318) (= lambda!221985 lambda!221976))))

(assert (=> bs!1141046 (= (= lt!1915017 acc!1214) (= lambda!221985 lambda!221978))))

(declare-fun bs!1141050 () Bool)

(assert (= bs!1141050 (and b!4751137 b!4751132)))

(assert (=> bs!1141050 (= lambda!221985 lambda!221981)))

(declare-fun bs!1141051 () Bool)

(assert (= bs!1141051 (and b!4751137 d!1518525)))

(assert (=> bs!1141051 (= (= lt!1915017 lt!1915354) (= lambda!221985 lambda!221980))))

(declare-fun bs!1141052 () Bool)

(assert (= bs!1141052 (and b!4751137 b!4751109)))

(assert (=> bs!1141052 (= (= lt!1915017 (+!2380 lt!1915011 (h!59481 l!14304))) (= lambda!221985 lambda!221973))))

(assert (=> bs!1141047 (= (= lt!1915017 lt!1915377) (= lambda!221985 lambda!221983))))

(assert (=> bs!1141052 (= (= lt!1915017 lt!1915320) (= lambda!221985 lambda!221974))))

(assert (=> b!4751137 true))

(declare-fun bs!1141053 () Bool)

(declare-fun b!4751138 () Bool)

(assert (= bs!1141053 (and b!4751138 b!4751127)))

(declare-fun lambda!221986 () Int)

(assert (=> bs!1141053 (= (= lt!1915017 acc!1214) (= lambda!221986 lambda!221977))))

(declare-fun bs!1141054 () Bool)

(assert (= bs!1141054 (and b!4751138 b!4751087)))

(assert (=> bs!1141054 (= (= lt!1915017 lt!1915255) (= lambda!221986 lambda!221967))))

(declare-fun bs!1141055 () Bool)

(assert (= bs!1141055 (and b!4751138 b!4751086)))

(assert (=> bs!1141055 (= (= lt!1915017 (+!2380 lt!1915017 t!14174)) (= lambda!221986 lambda!221965))))

(declare-fun bs!1141056 () Bool)

(assert (= bs!1141056 (and b!4751138 b!4751108)))

(assert (=> bs!1141056 (= (= lt!1915017 (+!2380 lt!1915011 (h!59481 l!14304))) (= lambda!221986 lambda!221972))))

(declare-fun bs!1141057 () Bool)

(assert (= bs!1141057 (and b!4751138 b!4751137)))

(assert (=> bs!1141057 (= lambda!221986 lambda!221985)))

(declare-fun bs!1141058 () Bool)

(assert (= bs!1141058 (and b!4751138 d!1518529)))

(assert (=> bs!1141058 (= (= lt!1915017 lt!1915375) (= lambda!221986 lambda!221984))))

(declare-fun bs!1141059 () Bool)

(assert (= bs!1141059 (and b!4751138 b!4751128)))

(assert (=> bs!1141059 (= (= lt!1915017 lt!1915356) (= lambda!221986 lambda!221979))))

(declare-fun bs!1141060 () Bool)

(assert (= bs!1141060 (and b!4751138 b!4751133)))

(assert (=> bs!1141060 (= lambda!221986 lambda!221982)))

(assert (=> bs!1141054 (= (= lt!1915017 (+!2380 lt!1915017 t!14174)) (= lambda!221986 lambda!221966))))

(declare-fun bs!1141061 () Bool)

(assert (= bs!1141061 (and b!4751138 d!1518469)))

(assert (=> bs!1141061 (= (= lt!1915017 lt!1915253) (= lambda!221986 lambda!221968))))

(declare-fun bs!1141062 () Bool)

(assert (= bs!1141062 (and b!4751138 d!1518509)))

(assert (=> bs!1141062 (= (= lt!1915017 lt!1915318) (= lambda!221986 lambda!221976))))

(assert (=> bs!1141059 (= (= lt!1915017 acc!1214) (= lambda!221986 lambda!221978))))

(declare-fun bs!1141063 () Bool)

(assert (= bs!1141063 (and b!4751138 b!4751132)))

(assert (=> bs!1141063 (= lambda!221986 lambda!221981)))

(declare-fun bs!1141064 () Bool)

(assert (= bs!1141064 (and b!4751138 d!1518525)))

(assert (=> bs!1141064 (= (= lt!1915017 lt!1915354) (= lambda!221986 lambda!221980))))

(declare-fun bs!1141065 () Bool)

(assert (= bs!1141065 (and b!4751138 b!4751109)))

(assert (=> bs!1141065 (= (= lt!1915017 (+!2380 lt!1915011 (h!59481 l!14304))) (= lambda!221986 lambda!221973))))

(assert (=> bs!1141060 (= (= lt!1915017 lt!1915377) (= lambda!221986 lambda!221983))))

(assert (=> bs!1141065 (= (= lt!1915017 lt!1915320) (= lambda!221986 lambda!221974))))

(assert (=> b!4751138 true))

(declare-fun lt!1915398 () ListMap!5537)

(declare-fun lambda!221987 () Int)

(assert (=> bs!1141053 (= (= lt!1915398 acc!1214) (= lambda!221987 lambda!221977))))

(assert (=> bs!1141054 (= (= lt!1915398 lt!1915255) (= lambda!221987 lambda!221967))))

(assert (=> bs!1141055 (= (= lt!1915398 (+!2380 lt!1915017 t!14174)) (= lambda!221987 lambda!221965))))

(assert (=> bs!1141056 (= (= lt!1915398 (+!2380 lt!1915011 (h!59481 l!14304))) (= lambda!221987 lambda!221972))))

(assert (=> b!4751138 (= (= lt!1915398 lt!1915017) (= lambda!221987 lambda!221986))))

(assert (=> bs!1141057 (= (= lt!1915398 lt!1915017) (= lambda!221987 lambda!221985))))

(assert (=> bs!1141058 (= (= lt!1915398 lt!1915375) (= lambda!221987 lambda!221984))))

(assert (=> bs!1141059 (= (= lt!1915398 lt!1915356) (= lambda!221987 lambda!221979))))

(assert (=> bs!1141060 (= (= lt!1915398 lt!1915017) (= lambda!221987 lambda!221982))))

(assert (=> bs!1141054 (= (= lt!1915398 (+!2380 lt!1915017 t!14174)) (= lambda!221987 lambda!221966))))

(assert (=> bs!1141061 (= (= lt!1915398 lt!1915253) (= lambda!221987 lambda!221968))))

(assert (=> bs!1141062 (= (= lt!1915398 lt!1915318) (= lambda!221987 lambda!221976))))

(assert (=> bs!1141059 (= (= lt!1915398 acc!1214) (= lambda!221987 lambda!221978))))

(assert (=> bs!1141063 (= (= lt!1915398 lt!1915017) (= lambda!221987 lambda!221981))))

(assert (=> bs!1141064 (= (= lt!1915398 lt!1915354) (= lambda!221987 lambda!221980))))

(assert (=> bs!1141065 (= (= lt!1915398 (+!2380 lt!1915011 (h!59481 l!14304))) (= lambda!221987 lambda!221973))))

(assert (=> bs!1141060 (= (= lt!1915398 lt!1915377) (= lambda!221987 lambda!221983))))

(assert (=> bs!1141065 (= (= lt!1915398 lt!1915320) (= lambda!221987 lambda!221974))))

(assert (=> b!4751138 true))

(declare-fun bs!1141066 () Bool)

(declare-fun d!1518531 () Bool)

(assert (= bs!1141066 (and d!1518531 b!4751127)))

(declare-fun lambda!221988 () Int)

(declare-fun lt!1915396 () ListMap!5537)

(assert (=> bs!1141066 (= (= lt!1915396 acc!1214) (= lambda!221988 lambda!221977))))

(declare-fun bs!1141067 () Bool)

(assert (= bs!1141067 (and d!1518531 b!4751087)))

(assert (=> bs!1141067 (= (= lt!1915396 lt!1915255) (= lambda!221988 lambda!221967))))

(declare-fun bs!1141068 () Bool)

(assert (= bs!1141068 (and d!1518531 b!4751086)))

(assert (=> bs!1141068 (= (= lt!1915396 (+!2380 lt!1915017 t!14174)) (= lambda!221988 lambda!221965))))

(declare-fun bs!1141069 () Bool)

(assert (= bs!1141069 (and d!1518531 b!4751108)))

(assert (=> bs!1141069 (= (= lt!1915396 (+!2380 lt!1915011 (h!59481 l!14304))) (= lambda!221988 lambda!221972))))

(declare-fun bs!1141070 () Bool)

(assert (= bs!1141070 (and d!1518531 b!4751138)))

(assert (=> bs!1141070 (= (= lt!1915396 lt!1915017) (= lambda!221988 lambda!221986))))

(declare-fun bs!1141071 () Bool)

(assert (= bs!1141071 (and d!1518531 b!4751137)))

(assert (=> bs!1141071 (= (= lt!1915396 lt!1915017) (= lambda!221988 lambda!221985))))

(declare-fun bs!1141072 () Bool)

(assert (= bs!1141072 (and d!1518531 d!1518529)))

(assert (=> bs!1141072 (= (= lt!1915396 lt!1915375) (= lambda!221988 lambda!221984))))

(declare-fun bs!1141073 () Bool)

(assert (= bs!1141073 (and d!1518531 b!4751133)))

(assert (=> bs!1141073 (= (= lt!1915396 lt!1915017) (= lambda!221988 lambda!221982))))

(assert (=> bs!1141067 (= (= lt!1915396 (+!2380 lt!1915017 t!14174)) (= lambda!221988 lambda!221966))))

(declare-fun bs!1141074 () Bool)

(assert (= bs!1141074 (and d!1518531 d!1518469)))

(assert (=> bs!1141074 (= (= lt!1915396 lt!1915253) (= lambda!221988 lambda!221968))))

(declare-fun bs!1141075 () Bool)

(assert (= bs!1141075 (and d!1518531 d!1518509)))

(assert (=> bs!1141075 (= (= lt!1915396 lt!1915318) (= lambda!221988 lambda!221976))))

(assert (=> bs!1141070 (= (= lt!1915396 lt!1915398) (= lambda!221988 lambda!221987))))

(declare-fun bs!1141076 () Bool)

(assert (= bs!1141076 (and d!1518531 b!4751128)))

(assert (=> bs!1141076 (= (= lt!1915396 lt!1915356) (= lambda!221988 lambda!221979))))

(assert (=> bs!1141076 (= (= lt!1915396 acc!1214) (= lambda!221988 lambda!221978))))

(declare-fun bs!1141077 () Bool)

(assert (= bs!1141077 (and d!1518531 b!4751132)))

(assert (=> bs!1141077 (= (= lt!1915396 lt!1915017) (= lambda!221988 lambda!221981))))

(declare-fun bs!1141078 () Bool)

(assert (= bs!1141078 (and d!1518531 d!1518525)))

(assert (=> bs!1141078 (= (= lt!1915396 lt!1915354) (= lambda!221988 lambda!221980))))

(declare-fun bs!1141079 () Bool)

(assert (= bs!1141079 (and d!1518531 b!4751109)))

(assert (=> bs!1141079 (= (= lt!1915396 (+!2380 lt!1915011 (h!59481 l!14304))) (= lambda!221988 lambda!221973))))

(assert (=> bs!1141073 (= (= lt!1915396 lt!1915377) (= lambda!221988 lambda!221983))))

(assert (=> bs!1141079 (= (= lt!1915396 lt!1915320) (= lambda!221988 lambda!221974))))

(assert (=> d!1518531 true))

(declare-fun b!4751135 () Bool)

(declare-fun e!2963708 () Bool)

(assert (=> b!4751135 (= e!2963708 (invariantList!1592 (toList!6114 lt!1915396)))))

(declare-fun b!4751136 () Bool)

(declare-fun res!2014715 () Bool)

(assert (=> b!4751136 (=> (not res!2014715) (not e!2963708))))

(assert (=> b!4751136 (= res!2014715 (forall!11760 (toList!6114 lt!1915017) lambda!221988))))

(declare-fun call!332820 () Bool)

(declare-fun bm!332814 () Bool)

(declare-fun c!811191 () Bool)

(assert (=> bm!332814 (= call!332820 (forall!11760 (toList!6114 lt!1915017) (ite c!811191 lambda!221985 lambda!221987)))))

(declare-fun bm!332815 () Bool)

(declare-fun call!332819 () Unit!135736)

(assert (=> bm!332815 (= call!332819 (lemmaContainsAllItsOwnKeys!875 lt!1915017))))

(declare-fun e!2963709 () ListMap!5537)

(assert (=> b!4751138 (= e!2963709 lt!1915398)))

(declare-fun lt!1915411 () ListMap!5537)

(assert (=> b!4751138 (= lt!1915411 (+!2380 lt!1915017 (h!59481 (Cons!53084 t!14174 (t!360538 l!14304)))))))

(assert (=> b!4751138 (= lt!1915398 (addToMapMapFromBucket!1570 (t!360538 (Cons!53084 t!14174 (t!360538 l!14304))) (+!2380 lt!1915017 (h!59481 (Cons!53084 t!14174 (t!360538 l!14304))))))))

(declare-fun lt!1915410 () Unit!135736)

(assert (=> b!4751138 (= lt!1915410 call!332819)))

(assert (=> b!4751138 (forall!11760 (toList!6114 lt!1915017) lambda!221986)))

(declare-fun lt!1915415 () Unit!135736)

(assert (=> b!4751138 (= lt!1915415 lt!1915410)))

(assert (=> b!4751138 (forall!11760 (toList!6114 lt!1915411) lambda!221987)))

(declare-fun lt!1915400 () Unit!135736)

(declare-fun Unit!135848 () Unit!135736)

(assert (=> b!4751138 (= lt!1915400 Unit!135848)))

(assert (=> b!4751138 (forall!11760 (t!360538 (Cons!53084 t!14174 (t!360538 l!14304))) lambda!221987)))

(declare-fun lt!1915406 () Unit!135736)

(declare-fun Unit!135849 () Unit!135736)

(assert (=> b!4751138 (= lt!1915406 Unit!135849)))

(declare-fun lt!1915413 () Unit!135736)

(declare-fun Unit!135850 () Unit!135736)

(assert (=> b!4751138 (= lt!1915413 Unit!135850)))

(declare-fun lt!1915405 () Unit!135736)

(assert (=> b!4751138 (= lt!1915405 (forallContained!3786 (toList!6114 lt!1915411) lambda!221987 (h!59481 (Cons!53084 t!14174 (t!360538 l!14304)))))))

(assert (=> b!4751138 (contains!16506 lt!1915411 (_1!30720 (h!59481 (Cons!53084 t!14174 (t!360538 l!14304)))))))

(declare-fun lt!1915397 () Unit!135736)

(declare-fun Unit!135851 () Unit!135736)

(assert (=> b!4751138 (= lt!1915397 Unit!135851)))

(assert (=> b!4751138 (contains!16506 lt!1915398 (_1!30720 (h!59481 (Cons!53084 t!14174 (t!360538 l!14304)))))))

(declare-fun lt!1915412 () Unit!135736)

(declare-fun Unit!135852 () Unit!135736)

(assert (=> b!4751138 (= lt!1915412 Unit!135852)))

(assert (=> b!4751138 (forall!11760 (Cons!53084 t!14174 (t!360538 l!14304)) lambda!221987)))

(declare-fun lt!1915402 () Unit!135736)

(declare-fun Unit!135853 () Unit!135736)

(assert (=> b!4751138 (= lt!1915402 Unit!135853)))

(declare-fun call!332821 () Bool)

(assert (=> b!4751138 call!332821))

(declare-fun lt!1915408 () Unit!135736)

(declare-fun Unit!135854 () Unit!135736)

(assert (=> b!4751138 (= lt!1915408 Unit!135854)))

(declare-fun lt!1915404 () Unit!135736)

(declare-fun Unit!135855 () Unit!135736)

(assert (=> b!4751138 (= lt!1915404 Unit!135855)))

(declare-fun lt!1915399 () Unit!135736)

(assert (=> b!4751138 (= lt!1915399 (addForallContainsKeyThenBeforeAdding!874 lt!1915017 lt!1915398 (_1!30720 (h!59481 (Cons!53084 t!14174 (t!360538 l!14304)))) (_2!30720 (h!59481 (Cons!53084 t!14174 (t!360538 l!14304))))))))

(assert (=> b!4751138 (forall!11760 (toList!6114 lt!1915017) lambda!221987)))

(declare-fun lt!1915409 () Unit!135736)

(assert (=> b!4751138 (= lt!1915409 lt!1915399)))

(assert (=> b!4751138 call!332820))

(declare-fun lt!1915407 () Unit!135736)

(declare-fun Unit!135856 () Unit!135736)

(assert (=> b!4751138 (= lt!1915407 Unit!135856)))

(declare-fun res!2014717 () Bool)

(assert (=> b!4751138 (= res!2014717 (forall!11760 (Cons!53084 t!14174 (t!360538 l!14304)) lambda!221987))))

(declare-fun e!2963710 () Bool)

(assert (=> b!4751138 (=> (not res!2014717) (not e!2963710))))

(assert (=> b!4751138 e!2963710))

(declare-fun lt!1915403 () Unit!135736)

(declare-fun Unit!135857 () Unit!135736)

(assert (=> b!4751138 (= lt!1915403 Unit!135857)))

(declare-fun b!4751139 () Bool)

(assert (=> b!4751139 (= e!2963710 (forall!11760 (toList!6114 lt!1915017) lambda!221987))))

(declare-fun bm!332816 () Bool)

(assert (=> bm!332816 (= call!332821 (forall!11760 (ite c!811191 (toList!6114 lt!1915017) (toList!6114 lt!1915411)) (ite c!811191 lambda!221985 lambda!221987)))))

(assert (=> b!4751137 (= e!2963709 lt!1915017)))

(declare-fun lt!1915395 () Unit!135736)

(assert (=> b!4751137 (= lt!1915395 call!332819)))

(assert (=> b!4751137 call!332820))

(declare-fun lt!1915401 () Unit!135736)

(assert (=> b!4751137 (= lt!1915401 lt!1915395)))

(assert (=> b!4751137 call!332821))

(declare-fun lt!1915414 () Unit!135736)

(declare-fun Unit!135858 () Unit!135736)

(assert (=> b!4751137 (= lt!1915414 Unit!135858)))

(assert (=> d!1518531 e!2963708))

(declare-fun res!2014716 () Bool)

(assert (=> d!1518531 (=> (not res!2014716) (not e!2963708))))

(assert (=> d!1518531 (= res!2014716 (forall!11760 (Cons!53084 t!14174 (t!360538 l!14304)) lambda!221988))))

(assert (=> d!1518531 (= lt!1915396 e!2963709)))

(assert (=> d!1518531 (= c!811191 ((_ is Nil!53084) (Cons!53084 t!14174 (t!360538 l!14304))))))

(assert (=> d!1518531 (noDuplicateKeys!2146 (Cons!53084 t!14174 (t!360538 l!14304)))))

(assert (=> d!1518531 (= (addToMapMapFromBucket!1570 (Cons!53084 t!14174 (t!360538 l!14304)) lt!1915017) lt!1915396)))

(assert (= (and d!1518531 c!811191) b!4751137))

(assert (= (and d!1518531 (not c!811191)) b!4751138))

(assert (= (and b!4751138 res!2014717) b!4751139))

(assert (= (or b!4751137 b!4751138) bm!332815))

(assert (= (or b!4751137 b!4751138) bm!332816))

(assert (= (or b!4751137 b!4751138) bm!332814))

(assert (= (and d!1518531 res!2014716) b!4751136))

(assert (= (and b!4751136 res!2014715) b!4751135))

(declare-fun m!5713333 () Bool)

(assert (=> d!1518531 m!5713333))

(declare-fun m!5713335 () Bool)

(assert (=> d!1518531 m!5713335))

(assert (=> bm!332815 m!5713301))

(declare-fun m!5713337 () Bool)

(assert (=> b!4751135 m!5713337))

(declare-fun m!5713339 () Bool)

(assert (=> bm!332814 m!5713339))

(declare-fun m!5713341 () Bool)

(assert (=> b!4751139 m!5713341))

(declare-fun m!5713343 () Bool)

(assert (=> b!4751138 m!5713343))

(declare-fun m!5713345 () Bool)

(assert (=> b!4751138 m!5713345))

(assert (=> b!4751138 m!5713341))

(declare-fun m!5713347 () Bool)

(assert (=> b!4751138 m!5713347))

(declare-fun m!5713349 () Bool)

(assert (=> b!4751138 m!5713349))

(assert (=> b!4751138 m!5713343))

(declare-fun m!5713351 () Bool)

(assert (=> b!4751138 m!5713351))

(declare-fun m!5713353 () Bool)

(assert (=> b!4751138 m!5713353))

(declare-fun m!5713355 () Bool)

(assert (=> b!4751138 m!5713355))

(assert (=> b!4751138 m!5713349))

(declare-fun m!5713357 () Bool)

(assert (=> b!4751138 m!5713357))

(declare-fun m!5713359 () Bool)

(assert (=> b!4751138 m!5713359))

(declare-fun m!5713361 () Bool)

(assert (=> b!4751138 m!5713361))

(declare-fun m!5713363 () Bool)

(assert (=> bm!332816 m!5713363))

(declare-fun m!5713365 () Bool)

(assert (=> b!4751136 m!5713365))

(assert (=> b!4751007 d!1518531))

(declare-fun d!1518533 () Bool)

(assert (=> d!1518533 (= (eq!1215 lt!1915016 (addToMapMapFromBucket!1570 (t!360538 l!14304) (+!2380 lt!1915011 (h!59481 l!14304)))) (= (content!9527 (toList!6114 lt!1915016)) (content!9527 (toList!6114 (addToMapMapFromBucket!1570 (t!360538 l!14304) (+!2380 lt!1915011 (h!59481 l!14304)))))))))

(declare-fun bs!1141080 () Bool)

(assert (= bs!1141080 d!1518533))

(assert (=> bs!1141080 m!5713295))

(declare-fun m!5713367 () Bool)

(assert (=> bs!1141080 m!5713367))

(assert (=> b!4751007 d!1518533))

(declare-fun bs!1141081 () Bool)

(declare-fun b!4751142 () Bool)

(assert (= bs!1141081 (and b!4751142 d!1518531)))

(declare-fun lambda!221989 () Int)

(assert (=> bs!1141081 (= (= lt!1915011 lt!1915396) (= lambda!221989 lambda!221988))))

(declare-fun bs!1141082 () Bool)

(assert (= bs!1141082 (and b!4751142 b!4751127)))

(assert (=> bs!1141082 (= (= lt!1915011 acc!1214) (= lambda!221989 lambda!221977))))

(declare-fun bs!1141083 () Bool)

(assert (= bs!1141083 (and b!4751142 b!4751087)))

(assert (=> bs!1141083 (= (= lt!1915011 lt!1915255) (= lambda!221989 lambda!221967))))

(declare-fun bs!1141084 () Bool)

(assert (= bs!1141084 (and b!4751142 b!4751086)))

(assert (=> bs!1141084 (= (= lt!1915011 (+!2380 lt!1915017 t!14174)) (= lambda!221989 lambda!221965))))

(declare-fun bs!1141085 () Bool)

(assert (= bs!1141085 (and b!4751142 b!4751108)))

(assert (=> bs!1141085 (= (= lt!1915011 (+!2380 lt!1915011 (h!59481 l!14304))) (= lambda!221989 lambda!221972))))

(declare-fun bs!1141086 () Bool)

(assert (= bs!1141086 (and b!4751142 b!4751138)))

(assert (=> bs!1141086 (= (= lt!1915011 lt!1915017) (= lambda!221989 lambda!221986))))

(declare-fun bs!1141087 () Bool)

(assert (= bs!1141087 (and b!4751142 b!4751137)))

(assert (=> bs!1141087 (= (= lt!1915011 lt!1915017) (= lambda!221989 lambda!221985))))

(declare-fun bs!1141088 () Bool)

(assert (= bs!1141088 (and b!4751142 d!1518529)))

(assert (=> bs!1141088 (= (= lt!1915011 lt!1915375) (= lambda!221989 lambda!221984))))

(declare-fun bs!1141089 () Bool)

(assert (= bs!1141089 (and b!4751142 b!4751133)))

(assert (=> bs!1141089 (= (= lt!1915011 lt!1915017) (= lambda!221989 lambda!221982))))

(assert (=> bs!1141083 (= (= lt!1915011 (+!2380 lt!1915017 t!14174)) (= lambda!221989 lambda!221966))))

(declare-fun bs!1141090 () Bool)

(assert (= bs!1141090 (and b!4751142 d!1518469)))

(assert (=> bs!1141090 (= (= lt!1915011 lt!1915253) (= lambda!221989 lambda!221968))))

(declare-fun bs!1141091 () Bool)

(assert (= bs!1141091 (and b!4751142 d!1518509)))

(assert (=> bs!1141091 (= (= lt!1915011 lt!1915318) (= lambda!221989 lambda!221976))))

(assert (=> bs!1141086 (= (= lt!1915011 lt!1915398) (= lambda!221989 lambda!221987))))

(declare-fun bs!1141092 () Bool)

(assert (= bs!1141092 (and b!4751142 b!4751128)))

(assert (=> bs!1141092 (= (= lt!1915011 lt!1915356) (= lambda!221989 lambda!221979))))

(assert (=> bs!1141092 (= (= lt!1915011 acc!1214) (= lambda!221989 lambda!221978))))

(declare-fun bs!1141093 () Bool)

(assert (= bs!1141093 (and b!4751142 b!4751132)))

(assert (=> bs!1141093 (= (= lt!1915011 lt!1915017) (= lambda!221989 lambda!221981))))

(declare-fun bs!1141094 () Bool)

(assert (= bs!1141094 (and b!4751142 d!1518525)))

(assert (=> bs!1141094 (= (= lt!1915011 lt!1915354) (= lambda!221989 lambda!221980))))

(declare-fun bs!1141095 () Bool)

(assert (= bs!1141095 (and b!4751142 b!4751109)))

(assert (=> bs!1141095 (= (= lt!1915011 (+!2380 lt!1915011 (h!59481 l!14304))) (= lambda!221989 lambda!221973))))

(assert (=> bs!1141089 (= (= lt!1915011 lt!1915377) (= lambda!221989 lambda!221983))))

(assert (=> bs!1141095 (= (= lt!1915011 lt!1915320) (= lambda!221989 lambda!221974))))

(assert (=> b!4751142 true))

(declare-fun bs!1141096 () Bool)

(declare-fun b!4751143 () Bool)

(assert (= bs!1141096 (and b!4751143 d!1518531)))

(declare-fun lambda!221990 () Int)

(assert (=> bs!1141096 (= (= lt!1915011 lt!1915396) (= lambda!221990 lambda!221988))))

(declare-fun bs!1141097 () Bool)

(assert (= bs!1141097 (and b!4751143 b!4751127)))

(assert (=> bs!1141097 (= (= lt!1915011 acc!1214) (= lambda!221990 lambda!221977))))

(declare-fun bs!1141098 () Bool)

(assert (= bs!1141098 (and b!4751143 b!4751087)))

(assert (=> bs!1141098 (= (= lt!1915011 lt!1915255) (= lambda!221990 lambda!221967))))

(declare-fun bs!1141099 () Bool)

(assert (= bs!1141099 (and b!4751143 b!4751086)))

(assert (=> bs!1141099 (= (= lt!1915011 (+!2380 lt!1915017 t!14174)) (= lambda!221990 lambda!221965))))

(declare-fun bs!1141100 () Bool)

(assert (= bs!1141100 (and b!4751143 b!4751108)))

(assert (=> bs!1141100 (= (= lt!1915011 (+!2380 lt!1915011 (h!59481 l!14304))) (= lambda!221990 lambda!221972))))

(declare-fun bs!1141101 () Bool)

(assert (= bs!1141101 (and b!4751143 b!4751142)))

(assert (=> bs!1141101 (= lambda!221990 lambda!221989)))

(declare-fun bs!1141102 () Bool)

(assert (= bs!1141102 (and b!4751143 b!4751138)))

(assert (=> bs!1141102 (= (= lt!1915011 lt!1915017) (= lambda!221990 lambda!221986))))

(declare-fun bs!1141103 () Bool)

(assert (= bs!1141103 (and b!4751143 b!4751137)))

(assert (=> bs!1141103 (= (= lt!1915011 lt!1915017) (= lambda!221990 lambda!221985))))

(declare-fun bs!1141104 () Bool)

(assert (= bs!1141104 (and b!4751143 d!1518529)))

(assert (=> bs!1141104 (= (= lt!1915011 lt!1915375) (= lambda!221990 lambda!221984))))

(declare-fun bs!1141105 () Bool)

(assert (= bs!1141105 (and b!4751143 b!4751133)))

(assert (=> bs!1141105 (= (= lt!1915011 lt!1915017) (= lambda!221990 lambda!221982))))

(assert (=> bs!1141098 (= (= lt!1915011 (+!2380 lt!1915017 t!14174)) (= lambda!221990 lambda!221966))))

(declare-fun bs!1141106 () Bool)

(assert (= bs!1141106 (and b!4751143 d!1518469)))

(assert (=> bs!1141106 (= (= lt!1915011 lt!1915253) (= lambda!221990 lambda!221968))))

(declare-fun bs!1141107 () Bool)

(assert (= bs!1141107 (and b!4751143 d!1518509)))

(assert (=> bs!1141107 (= (= lt!1915011 lt!1915318) (= lambda!221990 lambda!221976))))

(assert (=> bs!1141102 (= (= lt!1915011 lt!1915398) (= lambda!221990 lambda!221987))))

(declare-fun bs!1141108 () Bool)

(assert (= bs!1141108 (and b!4751143 b!4751128)))

(assert (=> bs!1141108 (= (= lt!1915011 lt!1915356) (= lambda!221990 lambda!221979))))

(assert (=> bs!1141108 (= (= lt!1915011 acc!1214) (= lambda!221990 lambda!221978))))

(declare-fun bs!1141109 () Bool)

(assert (= bs!1141109 (and b!4751143 b!4751132)))

(assert (=> bs!1141109 (= (= lt!1915011 lt!1915017) (= lambda!221990 lambda!221981))))

(declare-fun bs!1141110 () Bool)

(assert (= bs!1141110 (and b!4751143 d!1518525)))

(assert (=> bs!1141110 (= (= lt!1915011 lt!1915354) (= lambda!221990 lambda!221980))))

(declare-fun bs!1141111 () Bool)

(assert (= bs!1141111 (and b!4751143 b!4751109)))

(assert (=> bs!1141111 (= (= lt!1915011 (+!2380 lt!1915011 (h!59481 l!14304))) (= lambda!221990 lambda!221973))))

(assert (=> bs!1141105 (= (= lt!1915011 lt!1915377) (= lambda!221990 lambda!221983))))

(assert (=> bs!1141111 (= (= lt!1915011 lt!1915320) (= lambda!221990 lambda!221974))))

(assert (=> b!4751143 true))

(declare-fun lt!1915419 () ListMap!5537)

(declare-fun lambda!221991 () Int)

(assert (=> bs!1141096 (= (= lt!1915419 lt!1915396) (= lambda!221991 lambda!221988))))

(assert (=> bs!1141097 (= (= lt!1915419 acc!1214) (= lambda!221991 lambda!221977))))

(assert (=> bs!1141098 (= (= lt!1915419 lt!1915255) (= lambda!221991 lambda!221967))))

(assert (=> bs!1141099 (= (= lt!1915419 (+!2380 lt!1915017 t!14174)) (= lambda!221991 lambda!221965))))

(assert (=> bs!1141100 (= (= lt!1915419 (+!2380 lt!1915011 (h!59481 l!14304))) (= lambda!221991 lambda!221972))))

(assert (=> bs!1141102 (= (= lt!1915419 lt!1915017) (= lambda!221991 lambda!221986))))

(assert (=> bs!1141103 (= (= lt!1915419 lt!1915017) (= lambda!221991 lambda!221985))))

(assert (=> bs!1141104 (= (= lt!1915419 lt!1915375) (= lambda!221991 lambda!221984))))

(assert (=> bs!1141105 (= (= lt!1915419 lt!1915017) (= lambda!221991 lambda!221982))))

(assert (=> bs!1141098 (= (= lt!1915419 (+!2380 lt!1915017 t!14174)) (= lambda!221991 lambda!221966))))

(assert (=> bs!1141106 (= (= lt!1915419 lt!1915253) (= lambda!221991 lambda!221968))))

(assert (=> bs!1141107 (= (= lt!1915419 lt!1915318) (= lambda!221991 lambda!221976))))

(assert (=> b!4751143 (= (= lt!1915419 lt!1915011) (= lambda!221991 lambda!221990))))

(assert (=> bs!1141101 (= (= lt!1915419 lt!1915011) (= lambda!221991 lambda!221989))))

(assert (=> bs!1141102 (= (= lt!1915419 lt!1915398) (= lambda!221991 lambda!221987))))

(assert (=> bs!1141108 (= (= lt!1915419 lt!1915356) (= lambda!221991 lambda!221979))))

(assert (=> bs!1141108 (= (= lt!1915419 acc!1214) (= lambda!221991 lambda!221978))))

(assert (=> bs!1141109 (= (= lt!1915419 lt!1915017) (= lambda!221991 lambda!221981))))

(assert (=> bs!1141110 (= (= lt!1915419 lt!1915354) (= lambda!221991 lambda!221980))))

(assert (=> bs!1141111 (= (= lt!1915419 (+!2380 lt!1915011 (h!59481 l!14304))) (= lambda!221991 lambda!221973))))

(assert (=> bs!1141105 (= (= lt!1915419 lt!1915377) (= lambda!221991 lambda!221983))))

(assert (=> bs!1141111 (= (= lt!1915419 lt!1915320) (= lambda!221991 lambda!221974))))

(assert (=> b!4751143 true))

(declare-fun bs!1141112 () Bool)

(declare-fun d!1518535 () Bool)

(assert (= bs!1141112 (and d!1518535 d!1518531)))

(declare-fun lambda!221992 () Int)

(declare-fun lt!1915417 () ListMap!5537)

(assert (=> bs!1141112 (= (= lt!1915417 lt!1915396) (= lambda!221992 lambda!221988))))

(declare-fun bs!1141113 () Bool)

(assert (= bs!1141113 (and d!1518535 b!4751127)))

(assert (=> bs!1141113 (= (= lt!1915417 acc!1214) (= lambda!221992 lambda!221977))))

(declare-fun bs!1141114 () Bool)

(assert (= bs!1141114 (and d!1518535 b!4751087)))

(assert (=> bs!1141114 (= (= lt!1915417 lt!1915255) (= lambda!221992 lambda!221967))))

(declare-fun bs!1141115 () Bool)

(assert (= bs!1141115 (and d!1518535 b!4751086)))

(assert (=> bs!1141115 (= (= lt!1915417 (+!2380 lt!1915017 t!14174)) (= lambda!221992 lambda!221965))))

(declare-fun bs!1141116 () Bool)

(assert (= bs!1141116 (and d!1518535 b!4751138)))

(assert (=> bs!1141116 (= (= lt!1915417 lt!1915017) (= lambda!221992 lambda!221986))))

(declare-fun bs!1141117 () Bool)

(assert (= bs!1141117 (and d!1518535 b!4751137)))

(assert (=> bs!1141117 (= (= lt!1915417 lt!1915017) (= lambda!221992 lambda!221985))))

(declare-fun bs!1141118 () Bool)

(assert (= bs!1141118 (and d!1518535 d!1518529)))

(assert (=> bs!1141118 (= (= lt!1915417 lt!1915375) (= lambda!221992 lambda!221984))))

(declare-fun bs!1141119 () Bool)

(assert (= bs!1141119 (and d!1518535 b!4751133)))

(assert (=> bs!1141119 (= (= lt!1915417 lt!1915017) (= lambda!221992 lambda!221982))))

(assert (=> bs!1141114 (= (= lt!1915417 (+!2380 lt!1915017 t!14174)) (= lambda!221992 lambda!221966))))

(declare-fun bs!1141120 () Bool)

(assert (= bs!1141120 (and d!1518535 d!1518469)))

(assert (=> bs!1141120 (= (= lt!1915417 lt!1915253) (= lambda!221992 lambda!221968))))

(declare-fun bs!1141121 () Bool)

(assert (= bs!1141121 (and d!1518535 d!1518509)))

(assert (=> bs!1141121 (= (= lt!1915417 lt!1915318) (= lambda!221992 lambda!221976))))

(declare-fun bs!1141122 () Bool)

(assert (= bs!1141122 (and d!1518535 b!4751108)))

(assert (=> bs!1141122 (= (= lt!1915417 (+!2380 lt!1915011 (h!59481 l!14304))) (= lambda!221992 lambda!221972))))

(declare-fun bs!1141123 () Bool)

(assert (= bs!1141123 (and d!1518535 b!4751143)))

(assert (=> bs!1141123 (= (= lt!1915417 lt!1915419) (= lambda!221992 lambda!221991))))

(assert (=> bs!1141123 (= (= lt!1915417 lt!1915011) (= lambda!221992 lambda!221990))))

(declare-fun bs!1141124 () Bool)

(assert (= bs!1141124 (and d!1518535 b!4751142)))

(assert (=> bs!1141124 (= (= lt!1915417 lt!1915011) (= lambda!221992 lambda!221989))))

(assert (=> bs!1141116 (= (= lt!1915417 lt!1915398) (= lambda!221992 lambda!221987))))

(declare-fun bs!1141125 () Bool)

(assert (= bs!1141125 (and d!1518535 b!4751128)))

(assert (=> bs!1141125 (= (= lt!1915417 lt!1915356) (= lambda!221992 lambda!221979))))

(assert (=> bs!1141125 (= (= lt!1915417 acc!1214) (= lambda!221992 lambda!221978))))

(declare-fun bs!1141126 () Bool)

(assert (= bs!1141126 (and d!1518535 b!4751132)))

(assert (=> bs!1141126 (= (= lt!1915417 lt!1915017) (= lambda!221992 lambda!221981))))

(declare-fun bs!1141127 () Bool)

(assert (= bs!1141127 (and d!1518535 d!1518525)))

(assert (=> bs!1141127 (= (= lt!1915417 lt!1915354) (= lambda!221992 lambda!221980))))

(declare-fun bs!1141128 () Bool)

(assert (= bs!1141128 (and d!1518535 b!4751109)))

(assert (=> bs!1141128 (= (= lt!1915417 (+!2380 lt!1915011 (h!59481 l!14304))) (= lambda!221992 lambda!221973))))

(assert (=> bs!1141119 (= (= lt!1915417 lt!1915377) (= lambda!221992 lambda!221983))))

(assert (=> bs!1141128 (= (= lt!1915417 lt!1915320) (= lambda!221992 lambda!221974))))

(assert (=> d!1518535 true))

(declare-fun b!4751140 () Bool)

(declare-fun e!2963711 () Bool)

(assert (=> b!4751140 (= e!2963711 (invariantList!1592 (toList!6114 lt!1915417)))))

(declare-fun b!4751141 () Bool)

(declare-fun res!2014718 () Bool)

(assert (=> b!4751141 (=> (not res!2014718) (not e!2963711))))

(assert (=> b!4751141 (= res!2014718 (forall!11760 (toList!6114 lt!1915011) lambda!221992))))

(declare-fun c!811192 () Bool)

(declare-fun call!332823 () Bool)

(declare-fun bm!332817 () Bool)

(assert (=> bm!332817 (= call!332823 (forall!11760 (toList!6114 lt!1915011) (ite c!811192 lambda!221989 lambda!221991)))))

(declare-fun bm!332818 () Bool)

(declare-fun call!332822 () Unit!135736)

(assert (=> bm!332818 (= call!332822 (lemmaContainsAllItsOwnKeys!875 lt!1915011))))

(declare-fun e!2963712 () ListMap!5537)

(assert (=> b!4751143 (= e!2963712 lt!1915419)))

(declare-fun lt!1915432 () ListMap!5537)

(assert (=> b!4751143 (= lt!1915432 (+!2380 lt!1915011 (h!59481 l!14304)))))

(assert (=> b!4751143 (= lt!1915419 (addToMapMapFromBucket!1570 (t!360538 l!14304) (+!2380 lt!1915011 (h!59481 l!14304))))))

(declare-fun lt!1915431 () Unit!135736)

(assert (=> b!4751143 (= lt!1915431 call!332822)))

(assert (=> b!4751143 (forall!11760 (toList!6114 lt!1915011) lambda!221990)))

(declare-fun lt!1915436 () Unit!135736)

(assert (=> b!4751143 (= lt!1915436 lt!1915431)))

(assert (=> b!4751143 (forall!11760 (toList!6114 lt!1915432) lambda!221991)))

(declare-fun lt!1915421 () Unit!135736)

(declare-fun Unit!135870 () Unit!135736)

(assert (=> b!4751143 (= lt!1915421 Unit!135870)))

(assert (=> b!4751143 (forall!11760 (t!360538 l!14304) lambda!221991)))

(declare-fun lt!1915427 () Unit!135736)

(declare-fun Unit!135871 () Unit!135736)

(assert (=> b!4751143 (= lt!1915427 Unit!135871)))

(declare-fun lt!1915434 () Unit!135736)

(declare-fun Unit!135872 () Unit!135736)

(assert (=> b!4751143 (= lt!1915434 Unit!135872)))

(declare-fun lt!1915426 () Unit!135736)

(assert (=> b!4751143 (= lt!1915426 (forallContained!3786 (toList!6114 lt!1915432) lambda!221991 (h!59481 l!14304)))))

(assert (=> b!4751143 (contains!16506 lt!1915432 (_1!30720 (h!59481 l!14304)))))

(declare-fun lt!1915418 () Unit!135736)

(declare-fun Unit!135873 () Unit!135736)

(assert (=> b!4751143 (= lt!1915418 Unit!135873)))

(assert (=> b!4751143 (contains!16506 lt!1915419 (_1!30720 (h!59481 l!14304)))))

(declare-fun lt!1915433 () Unit!135736)

(declare-fun Unit!135874 () Unit!135736)

(assert (=> b!4751143 (= lt!1915433 Unit!135874)))

(assert (=> b!4751143 (forall!11760 l!14304 lambda!221991)))

(declare-fun lt!1915423 () Unit!135736)

(declare-fun Unit!135875 () Unit!135736)

(assert (=> b!4751143 (= lt!1915423 Unit!135875)))

(declare-fun call!332824 () Bool)

(assert (=> b!4751143 call!332824))

(declare-fun lt!1915429 () Unit!135736)

(declare-fun Unit!135876 () Unit!135736)

(assert (=> b!4751143 (= lt!1915429 Unit!135876)))

(declare-fun lt!1915425 () Unit!135736)

(declare-fun Unit!135877 () Unit!135736)

(assert (=> b!4751143 (= lt!1915425 Unit!135877)))

(declare-fun lt!1915420 () Unit!135736)

(assert (=> b!4751143 (= lt!1915420 (addForallContainsKeyThenBeforeAdding!874 lt!1915011 lt!1915419 (_1!30720 (h!59481 l!14304)) (_2!30720 (h!59481 l!14304))))))

(assert (=> b!4751143 (forall!11760 (toList!6114 lt!1915011) lambda!221991)))

(declare-fun lt!1915430 () Unit!135736)

(assert (=> b!4751143 (= lt!1915430 lt!1915420)))

(assert (=> b!4751143 call!332823))

(declare-fun lt!1915428 () Unit!135736)

(declare-fun Unit!135878 () Unit!135736)

(assert (=> b!4751143 (= lt!1915428 Unit!135878)))

(declare-fun res!2014720 () Bool)

(assert (=> b!4751143 (= res!2014720 (forall!11760 l!14304 lambda!221991))))

(declare-fun e!2963713 () Bool)

(assert (=> b!4751143 (=> (not res!2014720) (not e!2963713))))

(assert (=> b!4751143 e!2963713))

(declare-fun lt!1915424 () Unit!135736)

(declare-fun Unit!135879 () Unit!135736)

(assert (=> b!4751143 (= lt!1915424 Unit!135879)))

(declare-fun b!4751144 () Bool)

(assert (=> b!4751144 (= e!2963713 (forall!11760 (toList!6114 lt!1915011) lambda!221991))))

(declare-fun bm!332819 () Bool)

(assert (=> bm!332819 (= call!332824 (forall!11760 (ite c!811192 (toList!6114 lt!1915011) (toList!6114 lt!1915432)) (ite c!811192 lambda!221989 lambda!221991)))))

(assert (=> b!4751142 (= e!2963712 lt!1915011)))

(declare-fun lt!1915416 () Unit!135736)

(assert (=> b!4751142 (= lt!1915416 call!332822)))

(assert (=> b!4751142 call!332823))

(declare-fun lt!1915422 () Unit!135736)

(assert (=> b!4751142 (= lt!1915422 lt!1915416)))

(assert (=> b!4751142 call!332824))

(declare-fun lt!1915435 () Unit!135736)

(declare-fun Unit!135880 () Unit!135736)

(assert (=> b!4751142 (= lt!1915435 Unit!135880)))

(assert (=> d!1518535 e!2963711))

(declare-fun res!2014719 () Bool)

(assert (=> d!1518535 (=> (not res!2014719) (not e!2963711))))

(assert (=> d!1518535 (= res!2014719 (forall!11760 l!14304 lambda!221992))))

(assert (=> d!1518535 (= lt!1915417 e!2963712)))

(assert (=> d!1518535 (= c!811192 ((_ is Nil!53084) l!14304))))

(assert (=> d!1518535 (noDuplicateKeys!2146 l!14304)))

(assert (=> d!1518535 (= (addToMapMapFromBucket!1570 l!14304 lt!1915011) lt!1915417)))

(assert (= (and d!1518535 c!811192) b!4751142))

(assert (= (and d!1518535 (not c!811192)) b!4751143))

(assert (= (and b!4751143 res!2014720) b!4751144))

(assert (= (or b!4751142 b!4751143) bm!332818))

(assert (= (or b!4751142 b!4751143) bm!332819))

(assert (= (or b!4751142 b!4751143) bm!332817))

(assert (= (and d!1518535 res!2014719) b!4751141))

(assert (= (and b!4751141 res!2014718) b!4751140))

(declare-fun m!5713369 () Bool)

(assert (=> d!1518535 m!5713369))

(assert (=> d!1518535 m!5712757))

(declare-fun m!5713371 () Bool)

(assert (=> bm!332818 m!5713371))

(declare-fun m!5713373 () Bool)

(assert (=> b!4751140 m!5713373))

(declare-fun m!5713375 () Bool)

(assert (=> bm!332817 m!5713375))

(declare-fun m!5713377 () Bool)

(assert (=> b!4751144 m!5713377))

(assert (=> b!4751143 m!5712769))

(assert (=> b!4751143 m!5712771))

(assert (=> b!4751143 m!5713377))

(declare-fun m!5713379 () Bool)

(assert (=> b!4751143 m!5713379))

(declare-fun m!5713381 () Bool)

(assert (=> b!4751143 m!5713381))

(assert (=> b!4751143 m!5712769))

(declare-fun m!5713383 () Bool)

(assert (=> b!4751143 m!5713383))

(declare-fun m!5713385 () Bool)

(assert (=> b!4751143 m!5713385))

(declare-fun m!5713387 () Bool)

(assert (=> b!4751143 m!5713387))

(assert (=> b!4751143 m!5713381))

(declare-fun m!5713389 () Bool)

(assert (=> b!4751143 m!5713389))

(declare-fun m!5713391 () Bool)

(assert (=> b!4751143 m!5713391))

(declare-fun m!5713393 () Bool)

(assert (=> b!4751143 m!5713393))

(declare-fun m!5713395 () Bool)

(assert (=> bm!332819 m!5713395))

(declare-fun m!5713397 () Bool)

(assert (=> b!4751141 m!5713397))

(assert (=> b!4751007 d!1518535))

(declare-fun d!1518537 () Bool)

(assert (=> d!1518537 (= (eq!1215 lt!1915012 (addToMapMapFromBucket!1570 l!14304 acc!1214)) (= (content!9527 (toList!6114 lt!1915012)) (content!9527 (toList!6114 (addToMapMapFromBucket!1570 l!14304 acc!1214)))))))

(declare-fun bs!1141129 () Bool)

(assert (= bs!1141129 d!1518537))

(declare-fun m!5713399 () Bool)

(assert (=> bs!1141129 m!5713399))

(declare-fun m!5713401 () Bool)

(assert (=> bs!1141129 m!5713401))

(assert (=> b!4751012 d!1518537))

(declare-fun bs!1141130 () Bool)

(declare-fun b!4751147 () Bool)

(assert (= bs!1141130 (and b!4751147 d!1518531)))

(declare-fun lambda!221993 () Int)

(assert (=> bs!1141130 (= (= acc!1214 lt!1915396) (= lambda!221993 lambda!221988))))

(declare-fun bs!1141131 () Bool)

(assert (= bs!1141131 (and b!4751147 b!4751127)))

(assert (=> bs!1141131 (= lambda!221993 lambda!221977)))

(declare-fun bs!1141132 () Bool)

(assert (= bs!1141132 (and b!4751147 b!4751087)))

(assert (=> bs!1141132 (= (= acc!1214 lt!1915255) (= lambda!221993 lambda!221967))))

(declare-fun bs!1141133 () Bool)

(assert (= bs!1141133 (and b!4751147 b!4751086)))

(assert (=> bs!1141133 (= (= acc!1214 (+!2380 lt!1915017 t!14174)) (= lambda!221993 lambda!221965))))

(declare-fun bs!1141134 () Bool)

(assert (= bs!1141134 (and b!4751147 b!4751138)))

(assert (=> bs!1141134 (= (= acc!1214 lt!1915017) (= lambda!221993 lambda!221986))))

(declare-fun bs!1141135 () Bool)

(assert (= bs!1141135 (and b!4751147 b!4751137)))

(assert (=> bs!1141135 (= (= acc!1214 lt!1915017) (= lambda!221993 lambda!221985))))

(declare-fun bs!1141136 () Bool)

(assert (= bs!1141136 (and b!4751147 d!1518535)))

(assert (=> bs!1141136 (= (= acc!1214 lt!1915417) (= lambda!221993 lambda!221992))))

(declare-fun bs!1141137 () Bool)

(assert (= bs!1141137 (and b!4751147 d!1518529)))

(assert (=> bs!1141137 (= (= acc!1214 lt!1915375) (= lambda!221993 lambda!221984))))

(declare-fun bs!1141138 () Bool)

(assert (= bs!1141138 (and b!4751147 b!4751133)))

(assert (=> bs!1141138 (= (= acc!1214 lt!1915017) (= lambda!221993 lambda!221982))))

(assert (=> bs!1141132 (= (= acc!1214 (+!2380 lt!1915017 t!14174)) (= lambda!221993 lambda!221966))))

(declare-fun bs!1141139 () Bool)

(assert (= bs!1141139 (and b!4751147 d!1518469)))

(assert (=> bs!1141139 (= (= acc!1214 lt!1915253) (= lambda!221993 lambda!221968))))

(declare-fun bs!1141140 () Bool)

(assert (= bs!1141140 (and b!4751147 d!1518509)))

(assert (=> bs!1141140 (= (= acc!1214 lt!1915318) (= lambda!221993 lambda!221976))))

(declare-fun bs!1141141 () Bool)

(assert (= bs!1141141 (and b!4751147 b!4751108)))

(assert (=> bs!1141141 (= (= acc!1214 (+!2380 lt!1915011 (h!59481 l!14304))) (= lambda!221993 lambda!221972))))

(declare-fun bs!1141142 () Bool)

(assert (= bs!1141142 (and b!4751147 b!4751143)))

(assert (=> bs!1141142 (= (= acc!1214 lt!1915419) (= lambda!221993 lambda!221991))))

(assert (=> bs!1141142 (= (= acc!1214 lt!1915011) (= lambda!221993 lambda!221990))))

(declare-fun bs!1141143 () Bool)

(assert (= bs!1141143 (and b!4751147 b!4751142)))

(assert (=> bs!1141143 (= (= acc!1214 lt!1915011) (= lambda!221993 lambda!221989))))

(assert (=> bs!1141134 (= (= acc!1214 lt!1915398) (= lambda!221993 lambda!221987))))

(declare-fun bs!1141144 () Bool)

(assert (= bs!1141144 (and b!4751147 b!4751128)))

(assert (=> bs!1141144 (= (= acc!1214 lt!1915356) (= lambda!221993 lambda!221979))))

(assert (=> bs!1141144 (= lambda!221993 lambda!221978)))

(declare-fun bs!1141145 () Bool)

(assert (= bs!1141145 (and b!4751147 b!4751132)))

(assert (=> bs!1141145 (= (= acc!1214 lt!1915017) (= lambda!221993 lambda!221981))))

(declare-fun bs!1141146 () Bool)

(assert (= bs!1141146 (and b!4751147 d!1518525)))

(assert (=> bs!1141146 (= (= acc!1214 lt!1915354) (= lambda!221993 lambda!221980))))

(declare-fun bs!1141147 () Bool)

(assert (= bs!1141147 (and b!4751147 b!4751109)))

(assert (=> bs!1141147 (= (= acc!1214 (+!2380 lt!1915011 (h!59481 l!14304))) (= lambda!221993 lambda!221973))))

(assert (=> bs!1141138 (= (= acc!1214 lt!1915377) (= lambda!221993 lambda!221983))))

(assert (=> bs!1141147 (= (= acc!1214 lt!1915320) (= lambda!221993 lambda!221974))))

(assert (=> b!4751147 true))

(declare-fun bs!1141148 () Bool)

(declare-fun b!4751148 () Bool)

(assert (= bs!1141148 (and b!4751148 d!1518531)))

(declare-fun lambda!221994 () Int)

(assert (=> bs!1141148 (= (= acc!1214 lt!1915396) (= lambda!221994 lambda!221988))))

(declare-fun bs!1141149 () Bool)

(assert (= bs!1141149 (and b!4751148 b!4751127)))

(assert (=> bs!1141149 (= lambda!221994 lambda!221977)))

(declare-fun bs!1141150 () Bool)

(assert (= bs!1141150 (and b!4751148 b!4751087)))

(assert (=> bs!1141150 (= (= acc!1214 lt!1915255) (= lambda!221994 lambda!221967))))

(declare-fun bs!1141151 () Bool)

(assert (= bs!1141151 (and b!4751148 b!4751086)))

(assert (=> bs!1141151 (= (= acc!1214 (+!2380 lt!1915017 t!14174)) (= lambda!221994 lambda!221965))))

(declare-fun bs!1141152 () Bool)

(assert (= bs!1141152 (and b!4751148 b!4751138)))

(assert (=> bs!1141152 (= (= acc!1214 lt!1915017) (= lambda!221994 lambda!221986))))

(declare-fun bs!1141153 () Bool)

(assert (= bs!1141153 (and b!4751148 d!1518535)))

(assert (=> bs!1141153 (= (= acc!1214 lt!1915417) (= lambda!221994 lambda!221992))))

(declare-fun bs!1141154 () Bool)

(assert (= bs!1141154 (and b!4751148 d!1518529)))

(assert (=> bs!1141154 (= (= acc!1214 lt!1915375) (= lambda!221994 lambda!221984))))

(declare-fun bs!1141155 () Bool)

(assert (= bs!1141155 (and b!4751148 b!4751133)))

(assert (=> bs!1141155 (= (= acc!1214 lt!1915017) (= lambda!221994 lambda!221982))))

(assert (=> bs!1141150 (= (= acc!1214 (+!2380 lt!1915017 t!14174)) (= lambda!221994 lambda!221966))))

(declare-fun bs!1141156 () Bool)

(assert (= bs!1141156 (and b!4751148 d!1518469)))

(assert (=> bs!1141156 (= (= acc!1214 lt!1915253) (= lambda!221994 lambda!221968))))

(declare-fun bs!1141157 () Bool)

(assert (= bs!1141157 (and b!4751148 d!1518509)))

(assert (=> bs!1141157 (= (= acc!1214 lt!1915318) (= lambda!221994 lambda!221976))))

(declare-fun bs!1141158 () Bool)

(assert (= bs!1141158 (and b!4751148 b!4751108)))

(assert (=> bs!1141158 (= (= acc!1214 (+!2380 lt!1915011 (h!59481 l!14304))) (= lambda!221994 lambda!221972))))

(declare-fun bs!1141159 () Bool)

(assert (= bs!1141159 (and b!4751148 b!4751143)))

(assert (=> bs!1141159 (= (= acc!1214 lt!1915419) (= lambda!221994 lambda!221991))))

(assert (=> bs!1141159 (= (= acc!1214 lt!1915011) (= lambda!221994 lambda!221990))))

(declare-fun bs!1141160 () Bool)

(assert (= bs!1141160 (and b!4751148 b!4751142)))

(assert (=> bs!1141160 (= (= acc!1214 lt!1915011) (= lambda!221994 lambda!221989))))

(declare-fun bs!1141161 () Bool)

(assert (= bs!1141161 (and b!4751148 b!4751147)))

(assert (=> bs!1141161 (= lambda!221994 lambda!221993)))

(declare-fun bs!1141162 () Bool)

(assert (= bs!1141162 (and b!4751148 b!4751137)))

(assert (=> bs!1141162 (= (= acc!1214 lt!1915017) (= lambda!221994 lambda!221985))))

(assert (=> bs!1141152 (= (= acc!1214 lt!1915398) (= lambda!221994 lambda!221987))))

(declare-fun bs!1141163 () Bool)

(assert (= bs!1141163 (and b!4751148 b!4751128)))

(assert (=> bs!1141163 (= (= acc!1214 lt!1915356) (= lambda!221994 lambda!221979))))

(assert (=> bs!1141163 (= lambda!221994 lambda!221978)))

(declare-fun bs!1141164 () Bool)

(assert (= bs!1141164 (and b!4751148 b!4751132)))

(assert (=> bs!1141164 (= (= acc!1214 lt!1915017) (= lambda!221994 lambda!221981))))

(declare-fun bs!1141165 () Bool)

(assert (= bs!1141165 (and b!4751148 d!1518525)))

(assert (=> bs!1141165 (= (= acc!1214 lt!1915354) (= lambda!221994 lambda!221980))))

(declare-fun bs!1141166 () Bool)

(assert (= bs!1141166 (and b!4751148 b!4751109)))

(assert (=> bs!1141166 (= (= acc!1214 (+!2380 lt!1915011 (h!59481 l!14304))) (= lambda!221994 lambda!221973))))

(assert (=> bs!1141155 (= (= acc!1214 lt!1915377) (= lambda!221994 lambda!221983))))

(assert (=> bs!1141166 (= (= acc!1214 lt!1915320) (= lambda!221994 lambda!221974))))

(assert (=> b!4751148 true))

(declare-fun lt!1915440 () ListMap!5537)

(declare-fun lambda!221995 () Int)

(assert (=> bs!1141148 (= (= lt!1915440 lt!1915396) (= lambda!221995 lambda!221988))))

(assert (=> bs!1141149 (= (= lt!1915440 acc!1214) (= lambda!221995 lambda!221977))))

(assert (=> bs!1141150 (= (= lt!1915440 lt!1915255) (= lambda!221995 lambda!221967))))

(assert (=> bs!1141151 (= (= lt!1915440 (+!2380 lt!1915017 t!14174)) (= lambda!221995 lambda!221965))))

(assert (=> bs!1141152 (= (= lt!1915440 lt!1915017) (= lambda!221995 lambda!221986))))

(assert (=> bs!1141153 (= (= lt!1915440 lt!1915417) (= lambda!221995 lambda!221992))))

(assert (=> bs!1141154 (= (= lt!1915440 lt!1915375) (= lambda!221995 lambda!221984))))

(assert (=> b!4751148 (= (= lt!1915440 acc!1214) (= lambda!221995 lambda!221994))))

(assert (=> bs!1141155 (= (= lt!1915440 lt!1915017) (= lambda!221995 lambda!221982))))

(assert (=> bs!1141150 (= (= lt!1915440 (+!2380 lt!1915017 t!14174)) (= lambda!221995 lambda!221966))))

(assert (=> bs!1141156 (= (= lt!1915440 lt!1915253) (= lambda!221995 lambda!221968))))

(assert (=> bs!1141157 (= (= lt!1915440 lt!1915318) (= lambda!221995 lambda!221976))))

(assert (=> bs!1141158 (= (= lt!1915440 (+!2380 lt!1915011 (h!59481 l!14304))) (= lambda!221995 lambda!221972))))

(assert (=> bs!1141159 (= (= lt!1915440 lt!1915419) (= lambda!221995 lambda!221991))))

(assert (=> bs!1141159 (= (= lt!1915440 lt!1915011) (= lambda!221995 lambda!221990))))

(assert (=> bs!1141160 (= (= lt!1915440 lt!1915011) (= lambda!221995 lambda!221989))))

(assert (=> bs!1141161 (= (= lt!1915440 acc!1214) (= lambda!221995 lambda!221993))))

(assert (=> bs!1141162 (= (= lt!1915440 lt!1915017) (= lambda!221995 lambda!221985))))

(assert (=> bs!1141152 (= (= lt!1915440 lt!1915398) (= lambda!221995 lambda!221987))))

(assert (=> bs!1141163 (= (= lt!1915440 lt!1915356) (= lambda!221995 lambda!221979))))

(assert (=> bs!1141163 (= (= lt!1915440 acc!1214) (= lambda!221995 lambda!221978))))

(assert (=> bs!1141164 (= (= lt!1915440 lt!1915017) (= lambda!221995 lambda!221981))))

(assert (=> bs!1141165 (= (= lt!1915440 lt!1915354) (= lambda!221995 lambda!221980))))

(assert (=> bs!1141166 (= (= lt!1915440 (+!2380 lt!1915011 (h!59481 l!14304))) (= lambda!221995 lambda!221973))))

(assert (=> bs!1141155 (= (= lt!1915440 lt!1915377) (= lambda!221995 lambda!221983))))

(assert (=> bs!1141166 (= (= lt!1915440 lt!1915320) (= lambda!221995 lambda!221974))))

(assert (=> b!4751148 true))

(declare-fun bs!1141167 () Bool)

(declare-fun d!1518539 () Bool)

(assert (= bs!1141167 (and d!1518539 d!1518531)))

(declare-fun lt!1915438 () ListMap!5537)

(declare-fun lambda!221996 () Int)

(assert (=> bs!1141167 (= (= lt!1915438 lt!1915396) (= lambda!221996 lambda!221988))))

(declare-fun bs!1141168 () Bool)

(assert (= bs!1141168 (and d!1518539 b!4751127)))

(assert (=> bs!1141168 (= (= lt!1915438 acc!1214) (= lambda!221996 lambda!221977))))

(declare-fun bs!1141169 () Bool)

(assert (= bs!1141169 (and d!1518539 b!4751087)))

(assert (=> bs!1141169 (= (= lt!1915438 lt!1915255) (= lambda!221996 lambda!221967))))

(declare-fun bs!1141170 () Bool)

(assert (= bs!1141170 (and d!1518539 b!4751086)))

(assert (=> bs!1141170 (= (= lt!1915438 (+!2380 lt!1915017 t!14174)) (= lambda!221996 lambda!221965))))

(declare-fun bs!1141171 () Bool)

(assert (= bs!1141171 (and d!1518539 b!4751138)))

(assert (=> bs!1141171 (= (= lt!1915438 lt!1915017) (= lambda!221996 lambda!221986))))

(declare-fun bs!1141172 () Bool)

(assert (= bs!1141172 (and d!1518539 d!1518535)))

(assert (=> bs!1141172 (= (= lt!1915438 lt!1915417) (= lambda!221996 lambda!221992))))

(declare-fun bs!1141173 () Bool)

(assert (= bs!1141173 (and d!1518539 d!1518529)))

(assert (=> bs!1141173 (= (= lt!1915438 lt!1915375) (= lambda!221996 lambda!221984))))

(declare-fun bs!1141174 () Bool)

(assert (= bs!1141174 (and d!1518539 b!4751148)))

(assert (=> bs!1141174 (= (= lt!1915438 acc!1214) (= lambda!221996 lambda!221994))))

(assert (=> bs!1141174 (= (= lt!1915438 lt!1915440) (= lambda!221996 lambda!221995))))

(declare-fun bs!1141175 () Bool)

(assert (= bs!1141175 (and d!1518539 b!4751133)))

(assert (=> bs!1141175 (= (= lt!1915438 lt!1915017) (= lambda!221996 lambda!221982))))

(assert (=> bs!1141169 (= (= lt!1915438 (+!2380 lt!1915017 t!14174)) (= lambda!221996 lambda!221966))))

(declare-fun bs!1141176 () Bool)

(assert (= bs!1141176 (and d!1518539 d!1518469)))

(assert (=> bs!1141176 (= (= lt!1915438 lt!1915253) (= lambda!221996 lambda!221968))))

(declare-fun bs!1141177 () Bool)

(assert (= bs!1141177 (and d!1518539 d!1518509)))

(assert (=> bs!1141177 (= (= lt!1915438 lt!1915318) (= lambda!221996 lambda!221976))))

(declare-fun bs!1141178 () Bool)

(assert (= bs!1141178 (and d!1518539 b!4751108)))

(assert (=> bs!1141178 (= (= lt!1915438 (+!2380 lt!1915011 (h!59481 l!14304))) (= lambda!221996 lambda!221972))))

(declare-fun bs!1141179 () Bool)

(assert (= bs!1141179 (and d!1518539 b!4751143)))

(assert (=> bs!1141179 (= (= lt!1915438 lt!1915419) (= lambda!221996 lambda!221991))))

(assert (=> bs!1141179 (= (= lt!1915438 lt!1915011) (= lambda!221996 lambda!221990))))

(declare-fun bs!1141180 () Bool)

(assert (= bs!1141180 (and d!1518539 b!4751142)))

(assert (=> bs!1141180 (= (= lt!1915438 lt!1915011) (= lambda!221996 lambda!221989))))

(declare-fun bs!1141181 () Bool)

(assert (= bs!1141181 (and d!1518539 b!4751147)))

(assert (=> bs!1141181 (= (= lt!1915438 acc!1214) (= lambda!221996 lambda!221993))))

(declare-fun bs!1141182 () Bool)

(assert (= bs!1141182 (and d!1518539 b!4751137)))

(assert (=> bs!1141182 (= (= lt!1915438 lt!1915017) (= lambda!221996 lambda!221985))))

(assert (=> bs!1141171 (= (= lt!1915438 lt!1915398) (= lambda!221996 lambda!221987))))

(declare-fun bs!1141183 () Bool)

(assert (= bs!1141183 (and d!1518539 b!4751128)))

(assert (=> bs!1141183 (= (= lt!1915438 lt!1915356) (= lambda!221996 lambda!221979))))

(assert (=> bs!1141183 (= (= lt!1915438 acc!1214) (= lambda!221996 lambda!221978))))

(declare-fun bs!1141184 () Bool)

(assert (= bs!1141184 (and d!1518539 b!4751132)))

(assert (=> bs!1141184 (= (= lt!1915438 lt!1915017) (= lambda!221996 lambda!221981))))

(declare-fun bs!1141185 () Bool)

(assert (= bs!1141185 (and d!1518539 d!1518525)))

(assert (=> bs!1141185 (= (= lt!1915438 lt!1915354) (= lambda!221996 lambda!221980))))

(declare-fun bs!1141186 () Bool)

(assert (= bs!1141186 (and d!1518539 b!4751109)))

(assert (=> bs!1141186 (= (= lt!1915438 (+!2380 lt!1915011 (h!59481 l!14304))) (= lambda!221996 lambda!221973))))

(assert (=> bs!1141175 (= (= lt!1915438 lt!1915377) (= lambda!221996 lambda!221983))))

(assert (=> bs!1141186 (= (= lt!1915438 lt!1915320) (= lambda!221996 lambda!221974))))

(assert (=> d!1518539 true))

(declare-fun b!4751145 () Bool)

(declare-fun e!2963714 () Bool)

(assert (=> b!4751145 (= e!2963714 (invariantList!1592 (toList!6114 lt!1915438)))))

(declare-fun b!4751146 () Bool)

(declare-fun res!2014721 () Bool)

(assert (=> b!4751146 (=> (not res!2014721) (not e!2963714))))

(assert (=> b!4751146 (= res!2014721 (forall!11760 (toList!6114 acc!1214) lambda!221996))))

(declare-fun bm!332820 () Bool)

(declare-fun call!332826 () Bool)

(declare-fun c!811193 () Bool)

(assert (=> bm!332820 (= call!332826 (forall!11760 (toList!6114 acc!1214) (ite c!811193 lambda!221993 lambda!221995)))))

(declare-fun bm!332821 () Bool)

(declare-fun call!332825 () Unit!135736)

(assert (=> bm!332821 (= call!332825 (lemmaContainsAllItsOwnKeys!875 acc!1214))))

(declare-fun e!2963715 () ListMap!5537)

(assert (=> b!4751148 (= e!2963715 lt!1915440)))

(declare-fun lt!1915453 () ListMap!5537)

(assert (=> b!4751148 (= lt!1915453 (+!2380 acc!1214 (h!59481 l!14304)))))

(assert (=> b!4751148 (= lt!1915440 (addToMapMapFromBucket!1570 (t!360538 l!14304) (+!2380 acc!1214 (h!59481 l!14304))))))

(declare-fun lt!1915452 () Unit!135736)

(assert (=> b!4751148 (= lt!1915452 call!332825)))

(assert (=> b!4751148 (forall!11760 (toList!6114 acc!1214) lambda!221994)))

(declare-fun lt!1915457 () Unit!135736)

(assert (=> b!4751148 (= lt!1915457 lt!1915452)))

(assert (=> b!4751148 (forall!11760 (toList!6114 lt!1915453) lambda!221995)))

(declare-fun lt!1915442 () Unit!135736)

(declare-fun Unit!135881 () Unit!135736)

(assert (=> b!4751148 (= lt!1915442 Unit!135881)))

(assert (=> b!4751148 (forall!11760 (t!360538 l!14304) lambda!221995)))

(declare-fun lt!1915448 () Unit!135736)

(declare-fun Unit!135882 () Unit!135736)

(assert (=> b!4751148 (= lt!1915448 Unit!135882)))

(declare-fun lt!1915455 () Unit!135736)

(declare-fun Unit!135883 () Unit!135736)

(assert (=> b!4751148 (= lt!1915455 Unit!135883)))

(declare-fun lt!1915447 () Unit!135736)

(assert (=> b!4751148 (= lt!1915447 (forallContained!3786 (toList!6114 lt!1915453) lambda!221995 (h!59481 l!14304)))))

(assert (=> b!4751148 (contains!16506 lt!1915453 (_1!30720 (h!59481 l!14304)))))

(declare-fun lt!1915439 () Unit!135736)

(declare-fun Unit!135884 () Unit!135736)

(assert (=> b!4751148 (= lt!1915439 Unit!135884)))

(assert (=> b!4751148 (contains!16506 lt!1915440 (_1!30720 (h!59481 l!14304)))))

(declare-fun lt!1915454 () Unit!135736)

(declare-fun Unit!135885 () Unit!135736)

(assert (=> b!4751148 (= lt!1915454 Unit!135885)))

(assert (=> b!4751148 (forall!11760 l!14304 lambda!221995)))

(declare-fun lt!1915444 () Unit!135736)

(declare-fun Unit!135886 () Unit!135736)

(assert (=> b!4751148 (= lt!1915444 Unit!135886)))

(declare-fun call!332827 () Bool)

(assert (=> b!4751148 call!332827))

(declare-fun lt!1915450 () Unit!135736)

(declare-fun Unit!135887 () Unit!135736)

(assert (=> b!4751148 (= lt!1915450 Unit!135887)))

(declare-fun lt!1915446 () Unit!135736)

(declare-fun Unit!135888 () Unit!135736)

(assert (=> b!4751148 (= lt!1915446 Unit!135888)))

(declare-fun lt!1915441 () Unit!135736)

(assert (=> b!4751148 (= lt!1915441 (addForallContainsKeyThenBeforeAdding!874 acc!1214 lt!1915440 (_1!30720 (h!59481 l!14304)) (_2!30720 (h!59481 l!14304))))))

(assert (=> b!4751148 (forall!11760 (toList!6114 acc!1214) lambda!221995)))

(declare-fun lt!1915451 () Unit!135736)

(assert (=> b!4751148 (= lt!1915451 lt!1915441)))

(assert (=> b!4751148 call!332826))

(declare-fun lt!1915449 () Unit!135736)

(declare-fun Unit!135889 () Unit!135736)

(assert (=> b!4751148 (= lt!1915449 Unit!135889)))

(declare-fun res!2014723 () Bool)

(assert (=> b!4751148 (= res!2014723 (forall!11760 l!14304 lambda!221995))))

(declare-fun e!2963716 () Bool)

(assert (=> b!4751148 (=> (not res!2014723) (not e!2963716))))

(assert (=> b!4751148 e!2963716))

(declare-fun lt!1915445 () Unit!135736)

(declare-fun Unit!135890 () Unit!135736)

(assert (=> b!4751148 (= lt!1915445 Unit!135890)))

(declare-fun b!4751149 () Bool)

(assert (=> b!4751149 (= e!2963716 (forall!11760 (toList!6114 acc!1214) lambda!221995))))

(declare-fun bm!332822 () Bool)

(assert (=> bm!332822 (= call!332827 (forall!11760 (ite c!811193 (toList!6114 acc!1214) (toList!6114 lt!1915453)) (ite c!811193 lambda!221993 lambda!221995)))))

(assert (=> b!4751147 (= e!2963715 acc!1214)))

(declare-fun lt!1915437 () Unit!135736)

(assert (=> b!4751147 (= lt!1915437 call!332825)))

(assert (=> b!4751147 call!332826))

(declare-fun lt!1915443 () Unit!135736)

(assert (=> b!4751147 (= lt!1915443 lt!1915437)))

(assert (=> b!4751147 call!332827))

(declare-fun lt!1915456 () Unit!135736)

(declare-fun Unit!135891 () Unit!135736)

(assert (=> b!4751147 (= lt!1915456 Unit!135891)))

(assert (=> d!1518539 e!2963714))

(declare-fun res!2014722 () Bool)

(assert (=> d!1518539 (=> (not res!2014722) (not e!2963714))))

(assert (=> d!1518539 (= res!2014722 (forall!11760 l!14304 lambda!221996))))

(assert (=> d!1518539 (= lt!1915438 e!2963715)))

(assert (=> d!1518539 (= c!811193 ((_ is Nil!53084) l!14304))))

(assert (=> d!1518539 (noDuplicateKeys!2146 l!14304)))

(assert (=> d!1518539 (= (addToMapMapFromBucket!1570 l!14304 acc!1214) lt!1915438)))

(assert (= (and d!1518539 c!811193) b!4751147))

(assert (= (and d!1518539 (not c!811193)) b!4751148))

(assert (= (and b!4751148 res!2014723) b!4751149))

(assert (= (or b!4751147 b!4751148) bm!332821))

(assert (= (or b!4751147 b!4751148) bm!332822))

(assert (= (or b!4751147 b!4751148) bm!332820))

(assert (= (and d!1518539 res!2014722) b!4751146))

(assert (= (and b!4751146 res!2014721) b!4751145))

(declare-fun m!5713403 () Bool)

(assert (=> d!1518539 m!5713403))

(assert (=> d!1518539 m!5712757))

(assert (=> bm!332821 m!5713263))

(declare-fun m!5713405 () Bool)

(assert (=> b!4751145 m!5713405))

(declare-fun m!5713407 () Bool)

(assert (=> bm!332820 m!5713407))

(declare-fun m!5713409 () Bool)

(assert (=> b!4751149 m!5713409))

(assert (=> b!4751148 m!5712761))

(declare-fun m!5713411 () Bool)

(assert (=> b!4751148 m!5713411))

(assert (=> b!4751148 m!5713409))

(declare-fun m!5713413 () Bool)

(assert (=> b!4751148 m!5713413))

(declare-fun m!5713415 () Bool)

(assert (=> b!4751148 m!5713415))

(assert (=> b!4751148 m!5712761))

(declare-fun m!5713417 () Bool)

(assert (=> b!4751148 m!5713417))

(declare-fun m!5713419 () Bool)

(assert (=> b!4751148 m!5713419))

(declare-fun m!5713421 () Bool)

(assert (=> b!4751148 m!5713421))

(assert (=> b!4751148 m!5713415))

(declare-fun m!5713423 () Bool)

(assert (=> b!4751148 m!5713423))

(declare-fun m!5713425 () Bool)

(assert (=> b!4751148 m!5713425))

(declare-fun m!5713427 () Bool)

(assert (=> b!4751148 m!5713427))

(declare-fun m!5713429 () Bool)

(assert (=> bm!332822 m!5713429))

(declare-fun m!5713431 () Bool)

(assert (=> b!4751146 m!5713431))

(assert (=> b!4751012 d!1518539))

(declare-fun d!1518541 () Bool)

(declare-fun res!2014728 () Bool)

(declare-fun e!2963721 () Bool)

(assert (=> d!1518541 (=> res!2014728 e!2963721)))

(assert (=> d!1518541 (= res!2014728 (not ((_ is Cons!53084) l!14304)))))

(assert (=> d!1518541 (= (noDuplicateKeys!2146 l!14304) e!2963721)))

(declare-fun b!4751154 () Bool)

(declare-fun e!2963722 () Bool)

(assert (=> b!4751154 (= e!2963721 e!2963722)))

(declare-fun res!2014729 () Bool)

(assert (=> b!4751154 (=> (not res!2014729) (not e!2963722))))

(declare-fun containsKey!3555 (List!53208 K!14515) Bool)

(assert (=> b!4751154 (= res!2014729 (not (containsKey!3555 (t!360538 l!14304) (_1!30720 (h!59481 l!14304)))))))

(declare-fun b!4751155 () Bool)

(assert (=> b!4751155 (= e!2963722 (noDuplicateKeys!2146 (t!360538 l!14304)))))

(assert (= (and d!1518541 (not res!2014728)) b!4751154))

(assert (= (and b!4751154 res!2014729) b!4751155))

(declare-fun m!5713433 () Bool)

(assert (=> b!4751154 m!5713433))

(assert (=> b!4751155 m!5713067))

(assert (=> start!485468 d!1518541))

(declare-fun d!1518543 () Bool)

(assert (=> d!1518543 (= (inv!68385 acc!1214) (invariantList!1592 (toList!6114 acc!1214)))))

(declare-fun bs!1141187 () Bool)

(assert (= bs!1141187 d!1518543))

(declare-fun m!5713435 () Bool)

(assert (=> bs!1141187 m!5713435))

(assert (=> start!485468 d!1518543))

(declare-fun d!1518545 () Bool)

(declare-fun res!2014730 () Bool)

(declare-fun e!2963723 () Bool)

(assert (=> d!1518545 (=> res!2014730 e!2963723)))

(assert (=> d!1518545 (= res!2014730 (not ((_ is Cons!53084) lt!1915015)))))

(assert (=> d!1518545 (= (noDuplicateKeys!2146 lt!1915015) e!2963723)))

(declare-fun b!4751156 () Bool)

(declare-fun e!2963724 () Bool)

(assert (=> b!4751156 (= e!2963723 e!2963724)))

(declare-fun res!2014731 () Bool)

(assert (=> b!4751156 (=> (not res!2014731) (not e!2963724))))

(assert (=> b!4751156 (= res!2014731 (not (containsKey!3555 (t!360538 lt!1915015) (_1!30720 (h!59481 lt!1915015)))))))

(declare-fun b!4751157 () Bool)

(assert (=> b!4751157 (= e!2963724 (noDuplicateKeys!2146 (t!360538 lt!1915015)))))

(assert (= (and d!1518545 (not res!2014730)) b!4751156))

(assert (= (and b!4751156 res!2014731) b!4751157))

(declare-fun m!5713437 () Bool)

(assert (=> b!4751156 m!5713437))

(declare-fun m!5713439 () Bool)

(assert (=> b!4751157 m!5713439))

(assert (=> b!4751011 d!1518545))

(declare-fun e!2963727 () Bool)

(declare-fun tp!1350172 () Bool)

(declare-fun b!4751162 () Bool)

(assert (=> b!4751162 (= e!2963727 (and tp_is_empty!31877 tp_is_empty!31879 tp!1350172))))

(assert (=> b!4751008 (= tp!1350165 e!2963727)))

(assert (= (and b!4751008 ((_ is Cons!53084) (t!360538 l!14304))) b!4751162))

(declare-fun e!2963728 () Bool)

(declare-fun tp!1350173 () Bool)

(declare-fun b!4751163 () Bool)

(assert (=> b!4751163 (= e!2963728 (and tp_is_empty!31877 tp_is_empty!31879 tp!1350173))))

(assert (=> b!4751010 (= tp!1350164 e!2963728)))

(assert (= (and b!4751010 ((_ is Cons!53084) (toList!6114 acc!1214))) b!4751163))

(check-sat (not b!4751136) (not b!4751154) (not b!4751105) (not bm!332816) (not b!4751145) (not b!4751110) (not d!1518523) (not d!1518519) (not b!4751126) (not b!4751107) (not b!4751130) (not b!4751156) (not bm!332811) (not d!1518543) (not bm!332820) (not b!4751085) (not b!4751157) tp_is_empty!31877 (not b!4751143) (not b!4751112) (not bm!332821) (not d!1518469) (not b!4751128) (not d!1518507) (not d!1518533) (not b!4751103) (not b!4751144) (not bm!332799) (not b!4751111) (not d!1518515) (not bm!332807) (not b!4751135) (not d!1518529) (not bm!332817) (not b!4751114) (not b!4751109) (not bm!332819) (not bm!332812) (not b!4751139) (not d!1518539) (not b!4751088) (not d!1518467) (not b!4751084) (not b!4751155) (not bm!332818) (not d!1518509) (not b!4751138) (not b!4751113) tp_is_empty!31879 (not b!4751148) (not b!4751163) (not bm!332809) (not b!4751129) (not b!4751140) (not d!1518527) (not d!1518501) (not bm!332805) (not b!4751149) (not d!1518535) (not b!4751123) (not bm!332810) (not d!1518513) (not b!4751087) (not bm!332815) (not b!4751104) (not bm!332813) (not bm!332822) (not b!4751124) (not b!4751162) (not bm!332808) (not d!1518531) (not b!4751141) (not b!4751134) (not d!1518511) (not d!1518525) (not bm!332800) (not b!4751125) (not b!4751102) (not b!4751133) (not bm!332814) (not bm!332806) (not d!1518537) (not b!4751106) (not b!4751146) (not b!4751131) (not bm!332801))
(check-sat)
