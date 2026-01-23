; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!485648 () Bool)

(assert start!485648)

(declare-fun b!4753045 () Bool)

(declare-fun e!2965043 () Bool)

(declare-fun e!2965045 () Bool)

(assert (=> b!4753045 (= e!2965043 e!2965045)))

(declare-fun res!2015831 () Bool)

(assert (=> b!4753045 (=> (not res!2015831) (not e!2965045))))

(declare-datatypes ((K!14545 0))(
  ( (K!14546 (val!19907 Int)) )
))
(declare-datatypes ((V!14791 0))(
  ( (V!14792 (val!19908 Int)) )
))
(declare-datatypes ((tuple2!54876 0))(
  ( (tuple2!54877 (_1!30732 K!14545) (_2!30732 V!14791)) )
))
(declare-datatypes ((List!53222 0))(
  ( (Nil!53098) (Cons!53098 (h!59495 tuple2!54876) (t!360562 List!53222)) )
))
(declare-fun lt!1918092 () List!53222)

(declare-fun noDuplicateKeys!2158 (List!53222) Bool)

(assert (=> b!4753045 (= res!2015831 (noDuplicateKeys!2158 lt!1918092))))

(declare-fun t!14174 () tuple2!54876)

(declare-fun l!14304 () List!53222)

(assert (=> b!4753045 (= lt!1918092 (Cons!53098 t!14174 l!14304))))

(declare-fun res!2015832 () Bool)

(assert (=> start!485648 (=> (not res!2015832) (not e!2965043))))

(assert (=> start!485648 (= res!2015832 (noDuplicateKeys!2158 l!14304))))

(assert (=> start!485648 e!2965043))

(declare-fun e!2965042 () Bool)

(assert (=> start!485648 e!2965042))

(declare-fun tp_is_empty!31925 () Bool)

(declare-fun tp_is_empty!31927 () Bool)

(assert (=> start!485648 (and tp_is_empty!31925 tp_is_empty!31927)))

(declare-datatypes ((ListMap!5561 0))(
  ( (ListMap!5562 (toList!6126 List!53222)) )
))
(declare-fun acc!1214 () ListMap!5561)

(declare-fun e!2965041 () Bool)

(declare-fun inv!68415 (ListMap!5561) Bool)

(assert (=> start!485648 (and (inv!68415 acc!1214) e!2965041)))

(declare-fun b!4753046 () Bool)

(declare-fun res!2015830 () Bool)

(assert (=> b!4753046 (=> (not res!2015830) (not e!2965045))))

(get-info :version)

(assert (=> b!4753046 (= res!2015830 (not ((_ is Nil!53098) l!14304)))))

(declare-fun tp!1350272 () Bool)

(declare-fun b!4753047 () Bool)

(assert (=> b!4753047 (= e!2965042 (and tp_is_empty!31925 tp_is_empty!31927 tp!1350272))))

(declare-fun e!2965046 () Bool)

(declare-fun b!4753048 () Bool)

(declare-fun lt!1918085 () ListMap!5561)

(declare-fun eq!1227 (ListMap!5561 ListMap!5561) Bool)

(declare-fun addToMapMapFromBucket!1582 (List!53222 ListMap!5561) ListMap!5561)

(assert (=> b!4753048 (= e!2965046 (eq!1227 lt!1918085 (addToMapMapFromBucket!1582 l!14304 acc!1214)))))

(declare-fun b!4753049 () Bool)

(declare-fun e!2965044 () Bool)

(declare-fun lt!1918088 () ListMap!5561)

(declare-fun lt!1918084 () ListMap!5561)

(assert (=> b!4753049 (= e!2965044 (eq!1227 lt!1918088 lt!1918084))))

(declare-fun b!4753050 () Bool)

(declare-fun lt!1918083 () ListMap!5561)

(declare-fun lt!1918095 () ListMap!5561)

(assert (=> b!4753050 (= e!2965045 (not (eq!1227 lt!1918083 lt!1918095)))))

(declare-fun lt!1918089 () ListMap!5561)

(assert (=> b!4753050 (eq!1227 lt!1918095 lt!1918089)))

(declare-datatypes ((Unit!136564 0))(
  ( (Unit!136565) )
))
(declare-fun lt!1918087 () Unit!136564)

(declare-fun lemmaAddToMapFromBucketPreservesEquivalence!118 (ListMap!5561 ListMap!5561 List!53222) Unit!136564)

(assert (=> b!4753050 (= lt!1918087 (lemmaAddToMapFromBucketPreservesEquivalence!118 lt!1918084 lt!1918088 (t!360562 l!14304)))))

(assert (=> b!4753050 e!2965044))

(declare-fun res!2015829 () Bool)

(assert (=> b!4753050 (=> (not res!2015829) (not e!2965044))))

(declare-fun lt!1918080 () ListMap!5561)

(declare-fun lt!1918093 () ListMap!5561)

(assert (=> b!4753050 (= res!2015829 (eq!1227 lt!1918080 lt!1918093))))

(declare-fun lt!1918082 () Unit!136564)

(declare-fun addCommutativeForDiffKeys!28 (ListMap!5561 K!14545 V!14791 K!14545 V!14791) Unit!136564)

(assert (=> b!4753050 (= lt!1918082 (addCommutativeForDiffKeys!28 acc!1214 (_1!30732 t!14174) (_2!30732 t!14174) (_1!30732 (h!59495 l!14304)) (_2!30732 (h!59495 l!14304))))))

(assert (=> b!4753050 (eq!1227 lt!1918093 lt!1918080)))

(declare-fun +!2392 (ListMap!5561 tuple2!54876) ListMap!5561)

(assert (=> b!4753050 (= lt!1918080 (+!2392 (+!2392 acc!1214 t!14174) (h!59495 l!14304)))))

(declare-fun lt!1918081 () ListMap!5561)

(assert (=> b!4753050 (= lt!1918093 (+!2392 lt!1918081 t!14174))))

(declare-fun lt!1918091 () Unit!136564)

(assert (=> b!4753050 (= lt!1918091 (addCommutativeForDiffKeys!28 acc!1214 (_1!30732 (h!59495 l!14304)) (_2!30732 (h!59495 l!14304)) (_1!30732 t!14174) (_2!30732 t!14174)))))

(assert (=> b!4753050 (eq!1227 lt!1918083 lt!1918089)))

(assert (=> b!4753050 (= lt!1918089 (addToMapMapFromBucket!1582 (t!360562 l!14304) lt!1918088))))

(declare-fun lt!1918094 () ListMap!5561)

(assert (=> b!4753050 (= lt!1918088 (+!2392 lt!1918094 (h!59495 l!14304)))))

(assert (=> b!4753050 (eq!1227 lt!1918083 (addToMapMapFromBucket!1582 l!14304 lt!1918094))))

(assert (=> b!4753050 (= lt!1918094 (+!2392 acc!1214 t!14174))))

(assert (=> b!4753050 (= lt!1918083 (addToMapMapFromBucket!1582 lt!1918092 acc!1214))))

(declare-fun lt!1918090 () ListMap!5561)

(assert (=> b!4753050 (eq!1227 lt!1918090 lt!1918095)))

(assert (=> b!4753050 (= lt!1918095 (addToMapMapFromBucket!1582 (t!360562 l!14304) lt!1918084))))

(assert (=> b!4753050 (= lt!1918084 (+!2392 lt!1918081 t!14174))))

(assert (=> b!4753050 e!2965046))

(declare-fun res!2015833 () Bool)

(assert (=> b!4753050 (=> (not res!2015833) (not e!2965046))))

(assert (=> b!4753050 (= res!2015833 (eq!1227 lt!1918090 (+!2392 lt!1918085 t!14174)))))

(assert (=> b!4753050 (= lt!1918090 (addToMapMapFromBucket!1582 (Cons!53098 t!14174 (t!360562 l!14304)) lt!1918081))))

(declare-fun lt!1918086 () Unit!136564)

(declare-fun lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!472 (tuple2!54876 List!53222 ListMap!5561) Unit!136564)

(assert (=> b!4753050 (= lt!1918086 (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!472 t!14174 (t!360562 l!14304) lt!1918081))))

(assert (=> b!4753050 (= lt!1918085 (addToMapMapFromBucket!1582 (t!360562 l!14304) lt!1918081))))

(assert (=> b!4753050 (= lt!1918081 (+!2392 acc!1214 (h!59495 l!14304)))))

(declare-fun b!4753051 () Bool)

(declare-fun tp!1350273 () Bool)

(assert (=> b!4753051 (= e!2965041 tp!1350273)))

(assert (= (and start!485648 res!2015832) b!4753045))

(assert (= (and b!4753045 res!2015831) b!4753046))

(assert (= (and b!4753046 res!2015830) b!4753050))

(assert (= (and b!4753050 res!2015833) b!4753048))

(assert (= (and b!4753050 res!2015829) b!4753049))

(assert (= (and start!485648 ((_ is Cons!53098) l!14304)) b!4753047))

(assert (= start!485648 b!4753051))

(declare-fun m!5718859 () Bool)

(assert (=> b!4753050 m!5718859))

(declare-fun m!5718861 () Bool)

(assert (=> b!4753050 m!5718861))

(declare-fun m!5718863 () Bool)

(assert (=> b!4753050 m!5718863))

(declare-fun m!5718865 () Bool)

(assert (=> b!4753050 m!5718865))

(declare-fun m!5718867 () Bool)

(assert (=> b!4753050 m!5718867))

(declare-fun m!5718869 () Bool)

(assert (=> b!4753050 m!5718869))

(declare-fun m!5718871 () Bool)

(assert (=> b!4753050 m!5718871))

(declare-fun m!5718873 () Bool)

(assert (=> b!4753050 m!5718873))

(declare-fun m!5718875 () Bool)

(assert (=> b!4753050 m!5718875))

(declare-fun m!5718877 () Bool)

(assert (=> b!4753050 m!5718877))

(declare-fun m!5718879 () Bool)

(assert (=> b!4753050 m!5718879))

(assert (=> b!4753050 m!5718867))

(declare-fun m!5718881 () Bool)

(assert (=> b!4753050 m!5718881))

(declare-fun m!5718883 () Bool)

(assert (=> b!4753050 m!5718883))

(declare-fun m!5718885 () Bool)

(assert (=> b!4753050 m!5718885))

(declare-fun m!5718887 () Bool)

(assert (=> b!4753050 m!5718887))

(declare-fun m!5718889 () Bool)

(assert (=> b!4753050 m!5718889))

(declare-fun m!5718891 () Bool)

(assert (=> b!4753050 m!5718891))

(declare-fun m!5718893 () Bool)

(assert (=> b!4753050 m!5718893))

(assert (=> b!4753050 m!5718873))

(declare-fun m!5718895 () Bool)

(assert (=> b!4753050 m!5718895))

(declare-fun m!5718897 () Bool)

(assert (=> b!4753050 m!5718897))

(declare-fun m!5718899 () Bool)

(assert (=> b!4753050 m!5718899))

(declare-fun m!5718901 () Bool)

(assert (=> b!4753050 m!5718901))

(assert (=> b!4753050 m!5718883))

(declare-fun m!5718903 () Bool)

(assert (=> b!4753050 m!5718903))

(declare-fun m!5718905 () Bool)

(assert (=> b!4753050 m!5718905))

(declare-fun m!5718907 () Bool)

(assert (=> b!4753045 m!5718907))

(declare-fun m!5718909 () Bool)

(assert (=> b!4753048 m!5718909))

(assert (=> b!4753048 m!5718909))

(declare-fun m!5718911 () Bool)

(assert (=> b!4753048 m!5718911))

(declare-fun m!5718913 () Bool)

(assert (=> b!4753049 m!5718913))

(declare-fun m!5718915 () Bool)

(assert (=> start!485648 m!5718915))

(declare-fun m!5718917 () Bool)

(assert (=> start!485648 m!5718917))

(check-sat (not b!4753050) (not b!4753047) tp_is_empty!31927 (not b!4753049) (not b!4753051) (not start!485648) (not b!4753048) tp_is_empty!31925 (not b!4753045))
(check-sat)
(get-model)

(declare-fun d!1519689 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!9537 (List!53222) (InoxSet tuple2!54876))

(assert (=> d!1519689 (= (eq!1227 lt!1918088 lt!1918084) (= (content!9537 (toList!6126 lt!1918088)) (content!9537 (toList!6126 lt!1918084))))))

(declare-fun bs!1144789 () Bool)

(assert (= bs!1144789 d!1519689))

(declare-fun m!5718923 () Bool)

(assert (=> bs!1144789 m!5718923))

(declare-fun m!5718925 () Bool)

(assert (=> bs!1144789 m!5718925))

(assert (=> b!4753049 d!1519689))

(declare-fun b!4753113 () Bool)

(assert (=> b!4753113 true))

(declare-fun bs!1144855 () Bool)

(declare-fun b!4753114 () Bool)

(assert (= bs!1144855 (and b!4753114 b!4753113)))

(declare-fun lambda!222490 () Int)

(declare-fun lambda!222488 () Int)

(assert (=> bs!1144855 (= lambda!222490 lambda!222488)))

(assert (=> b!4753114 true))

(declare-fun lt!1918310 () ListMap!5561)

(declare-fun lambda!222491 () Int)

(assert (=> bs!1144855 (= (= lt!1918310 lt!1918094) (= lambda!222491 lambda!222488))))

(assert (=> b!4753114 (= (= lt!1918310 lt!1918094) (= lambda!222491 lambda!222490))))

(assert (=> b!4753114 true))

(declare-fun bs!1144863 () Bool)

(declare-fun d!1519691 () Bool)

(assert (= bs!1144863 (and d!1519691 b!4753113)))

(declare-fun lt!1918294 () ListMap!5561)

(declare-fun lambda!222492 () Int)

(assert (=> bs!1144863 (= (= lt!1918294 lt!1918094) (= lambda!222492 lambda!222488))))

(declare-fun bs!1144864 () Bool)

(assert (= bs!1144864 (and d!1519691 b!4753114)))

(assert (=> bs!1144864 (= (= lt!1918294 lt!1918094) (= lambda!222492 lambda!222490))))

(assert (=> bs!1144864 (= (= lt!1918294 lt!1918310) (= lambda!222492 lambda!222491))))

(assert (=> d!1519691 true))

(declare-fun bm!333143 () Bool)

(declare-fun call!333148 () Unit!136564)

(declare-fun lemmaContainsAllItsOwnKeys!883 (ListMap!5561) Unit!136564)

(assert (=> bm!333143 (= call!333148 (lemmaContainsAllItsOwnKeys!883 lt!1918094))))

(declare-fun c!811532 () Bool)

(declare-fun bm!333144 () Bool)

(declare-fun call!333149 () Bool)

(declare-fun forall!11768 (List!53222 Int) Bool)

(assert (=> bm!333144 (= call!333149 (forall!11768 (toList!6126 lt!1918094) (ite c!811532 lambda!222488 lambda!222491)))))

(declare-fun b!4753110 () Bool)

(declare-fun e!2965084 () Bool)

(declare-fun invariantList!1600 (List!53222) Bool)

(assert (=> b!4753110 (= e!2965084 (invariantList!1600 (toList!6126 lt!1918294)))))

(declare-fun lt!1918311 () ListMap!5561)

(declare-fun bm!333145 () Bool)

(declare-fun call!333150 () Bool)

(assert (=> bm!333145 (= call!333150 (forall!11768 (ite c!811532 (toList!6126 lt!1918094) (toList!6126 lt!1918311)) (ite c!811532 lambda!222488 lambda!222491)))))

(declare-fun b!4753111 () Bool)

(declare-fun e!2965083 () Bool)

(assert (=> b!4753111 (= e!2965083 call!333149)))

(declare-fun e!2965082 () ListMap!5561)

(assert (=> b!4753113 (= e!2965082 lt!1918094)))

(declare-fun lt!1918298 () Unit!136564)

(assert (=> b!4753113 (= lt!1918298 call!333148)))

(assert (=> b!4753113 call!333150))

(declare-fun lt!1918302 () Unit!136564)

(assert (=> b!4753113 (= lt!1918302 lt!1918298)))

(assert (=> b!4753113 call!333149))

(declare-fun lt!1918297 () Unit!136564)

(declare-fun Unit!136580 () Unit!136564)

(assert (=> b!4753113 (= lt!1918297 Unit!136580)))

(assert (=> b!4753114 (= e!2965082 lt!1918310)))

(assert (=> b!4753114 (= lt!1918311 (+!2392 lt!1918094 (h!59495 l!14304)))))

(assert (=> b!4753114 (= lt!1918310 (addToMapMapFromBucket!1582 (t!360562 l!14304) (+!2392 lt!1918094 (h!59495 l!14304))))))

(declare-fun lt!1918309 () Unit!136564)

(assert (=> b!4753114 (= lt!1918309 call!333148)))

(assert (=> b!4753114 (forall!11768 (toList!6126 lt!1918094) lambda!222490)))

(declare-fun lt!1918293 () Unit!136564)

(assert (=> b!4753114 (= lt!1918293 lt!1918309)))

(assert (=> b!4753114 call!333150))

(declare-fun lt!1918300 () Unit!136564)

(declare-fun Unit!136583 () Unit!136564)

(assert (=> b!4753114 (= lt!1918300 Unit!136583)))

(assert (=> b!4753114 (forall!11768 (t!360562 l!14304) lambda!222491)))

(declare-fun lt!1918305 () Unit!136564)

(declare-fun Unit!136585 () Unit!136564)

(assert (=> b!4753114 (= lt!1918305 Unit!136585)))

(declare-fun lt!1918296 () Unit!136564)

(declare-fun Unit!136587 () Unit!136564)

(assert (=> b!4753114 (= lt!1918296 Unit!136587)))

(declare-fun lt!1918306 () Unit!136564)

(declare-fun forallContained!3794 (List!53222 Int tuple2!54876) Unit!136564)

(assert (=> b!4753114 (= lt!1918306 (forallContained!3794 (toList!6126 lt!1918311) lambda!222491 (h!59495 l!14304)))))

(declare-fun contains!16524 (ListMap!5561 K!14545) Bool)

(assert (=> b!4753114 (contains!16524 lt!1918311 (_1!30732 (h!59495 l!14304)))))

(declare-fun lt!1918295 () Unit!136564)

(declare-fun Unit!136590 () Unit!136564)

(assert (=> b!4753114 (= lt!1918295 Unit!136590)))

(assert (=> b!4753114 (contains!16524 lt!1918310 (_1!30732 (h!59495 l!14304)))))

(declare-fun lt!1918304 () Unit!136564)

(declare-fun Unit!136591 () Unit!136564)

(assert (=> b!4753114 (= lt!1918304 Unit!136591)))

(assert (=> b!4753114 (forall!11768 l!14304 lambda!222491)))

(declare-fun lt!1918301 () Unit!136564)

(declare-fun Unit!136592 () Unit!136564)

(assert (=> b!4753114 (= lt!1918301 Unit!136592)))

(assert (=> b!4753114 (forall!11768 (toList!6126 lt!1918311) lambda!222491)))

(declare-fun lt!1918291 () Unit!136564)

(declare-fun Unit!136594 () Unit!136564)

(assert (=> b!4753114 (= lt!1918291 Unit!136594)))

(declare-fun lt!1918292 () Unit!136564)

(declare-fun Unit!136595 () Unit!136564)

(assert (=> b!4753114 (= lt!1918292 Unit!136595)))

(declare-fun lt!1918299 () Unit!136564)

(declare-fun addForallContainsKeyThenBeforeAdding!882 (ListMap!5561 ListMap!5561 K!14545 V!14791) Unit!136564)

(assert (=> b!4753114 (= lt!1918299 (addForallContainsKeyThenBeforeAdding!882 lt!1918094 lt!1918310 (_1!30732 (h!59495 l!14304)) (_2!30732 (h!59495 l!14304))))))

(assert (=> b!4753114 (forall!11768 (toList!6126 lt!1918094) lambda!222491)))

(declare-fun lt!1918303 () Unit!136564)

(assert (=> b!4753114 (= lt!1918303 lt!1918299)))

(assert (=> b!4753114 (forall!11768 (toList!6126 lt!1918094) lambda!222491)))

(declare-fun lt!1918308 () Unit!136564)

(declare-fun Unit!136597 () Unit!136564)

(assert (=> b!4753114 (= lt!1918308 Unit!136597)))

(declare-fun res!2015874 () Bool)

(assert (=> b!4753114 (= res!2015874 (forall!11768 l!14304 lambda!222491))))

(assert (=> b!4753114 (=> (not res!2015874) (not e!2965083))))

(assert (=> b!4753114 e!2965083))

(declare-fun lt!1918307 () Unit!136564)

(declare-fun Unit!136598 () Unit!136564)

(assert (=> b!4753114 (= lt!1918307 Unit!136598)))

(declare-fun b!4753112 () Bool)

(declare-fun res!2015876 () Bool)

(assert (=> b!4753112 (=> (not res!2015876) (not e!2965084))))

(assert (=> b!4753112 (= res!2015876 (forall!11768 (toList!6126 lt!1918094) lambda!222492))))

(assert (=> d!1519691 e!2965084))

(declare-fun res!2015875 () Bool)

(assert (=> d!1519691 (=> (not res!2015875) (not e!2965084))))

(assert (=> d!1519691 (= res!2015875 (forall!11768 l!14304 lambda!222492))))

(assert (=> d!1519691 (= lt!1918294 e!2965082)))

(assert (=> d!1519691 (= c!811532 ((_ is Nil!53098) l!14304))))

(assert (=> d!1519691 (noDuplicateKeys!2158 l!14304)))

(assert (=> d!1519691 (= (addToMapMapFromBucket!1582 l!14304 lt!1918094) lt!1918294)))

(assert (= (and d!1519691 c!811532) b!4753113))

(assert (= (and d!1519691 (not c!811532)) b!4753114))

(assert (= (and b!4753114 res!2015874) b!4753111))

(assert (= (or b!4753113 b!4753114) bm!333143))

(assert (= (or b!4753113 b!4753114) bm!333145))

(assert (= (or b!4753113 b!4753111) bm!333144))

(assert (= (and d!1519691 res!2015875) b!4753112))

(assert (= (and b!4753112 res!2015876) b!4753110))

(declare-fun m!5719127 () Bool)

(assert (=> bm!333145 m!5719127))

(declare-fun m!5719129 () Bool)

(assert (=> bm!333143 m!5719129))

(declare-fun m!5719131 () Bool)

(assert (=> d!1519691 m!5719131))

(assert (=> d!1519691 m!5718915))

(declare-fun m!5719133 () Bool)

(assert (=> b!4753112 m!5719133))

(declare-fun m!5719135 () Bool)

(assert (=> b!4753114 m!5719135))

(declare-fun m!5719137 () Bool)

(assert (=> b!4753114 m!5719137))

(declare-fun m!5719139 () Bool)

(assert (=> b!4753114 m!5719139))

(assert (=> b!4753114 m!5719139))

(assert (=> b!4753114 m!5718879))

(declare-fun m!5719141 () Bool)

(assert (=> b!4753114 m!5719141))

(declare-fun m!5719143 () Bool)

(assert (=> b!4753114 m!5719143))

(declare-fun m!5719145 () Bool)

(assert (=> b!4753114 m!5719145))

(assert (=> b!4753114 m!5719135))

(declare-fun m!5719147 () Bool)

(assert (=> b!4753114 m!5719147))

(declare-fun m!5719149 () Bool)

(assert (=> b!4753114 m!5719149))

(declare-fun m!5719151 () Bool)

(assert (=> b!4753114 m!5719151))

(assert (=> b!4753114 m!5718879))

(declare-fun m!5719153 () Bool)

(assert (=> b!4753114 m!5719153))

(declare-fun m!5719155 () Bool)

(assert (=> bm!333144 m!5719155))

(declare-fun m!5719157 () Bool)

(assert (=> b!4753110 m!5719157))

(assert (=> b!4753050 d!1519691))

(declare-fun d!1519723 () Bool)

(declare-fun e!2965093 () Bool)

(assert (=> d!1519723 e!2965093))

(declare-fun res!2015887 () Bool)

(assert (=> d!1519723 (=> (not res!2015887) (not e!2965093))))

(declare-fun lt!1918365 () ListMap!5561)

(assert (=> d!1519723 (= res!2015887 (contains!16524 lt!1918365 (_1!30732 (h!59495 l!14304))))))

(declare-fun lt!1918362 () List!53222)

(assert (=> d!1519723 (= lt!1918365 (ListMap!5562 lt!1918362))))

(declare-fun lt!1918364 () Unit!136564)

(declare-fun lt!1918363 () Unit!136564)

(assert (=> d!1519723 (= lt!1918364 lt!1918363)))

(declare-datatypes ((Option!12537 0))(
  ( (None!12536) (Some!12536 (v!47237 V!14791)) )
))
(declare-fun getValueByKey!2087 (List!53222 K!14545) Option!12537)

(assert (=> d!1519723 (= (getValueByKey!2087 lt!1918362 (_1!30732 (h!59495 l!14304))) (Some!12536 (_2!30732 (h!59495 l!14304))))))

(declare-fun lemmaContainsTupThenGetReturnValue!1164 (List!53222 K!14545 V!14791) Unit!136564)

(assert (=> d!1519723 (= lt!1918363 (lemmaContainsTupThenGetReturnValue!1164 lt!1918362 (_1!30732 (h!59495 l!14304)) (_2!30732 (h!59495 l!14304))))))

(declare-fun insertNoDuplicatedKeys!672 (List!53222 K!14545 V!14791) List!53222)

(assert (=> d!1519723 (= lt!1918362 (insertNoDuplicatedKeys!672 (toList!6126 acc!1214) (_1!30732 (h!59495 l!14304)) (_2!30732 (h!59495 l!14304))))))

(assert (=> d!1519723 (= (+!2392 acc!1214 (h!59495 l!14304)) lt!1918365)))

(declare-fun b!4753131 () Bool)

(declare-fun res!2015888 () Bool)

(assert (=> b!4753131 (=> (not res!2015888) (not e!2965093))))

(assert (=> b!4753131 (= res!2015888 (= (getValueByKey!2087 (toList!6126 lt!1918365) (_1!30732 (h!59495 l!14304))) (Some!12536 (_2!30732 (h!59495 l!14304)))))))

(declare-fun b!4753132 () Bool)

(declare-fun contains!16525 (List!53222 tuple2!54876) Bool)

(assert (=> b!4753132 (= e!2965093 (contains!16525 (toList!6126 lt!1918365) (h!59495 l!14304)))))

(assert (= (and d!1519723 res!2015887) b!4753131))

(assert (= (and b!4753131 res!2015888) b!4753132))

(declare-fun m!5719191 () Bool)

(assert (=> d!1519723 m!5719191))

(declare-fun m!5719193 () Bool)

(assert (=> d!1519723 m!5719193))

(declare-fun m!5719195 () Bool)

(assert (=> d!1519723 m!5719195))

(declare-fun m!5719197 () Bool)

(assert (=> d!1519723 m!5719197))

(declare-fun m!5719199 () Bool)

(assert (=> b!4753131 m!5719199))

(declare-fun m!5719201 () Bool)

(assert (=> b!4753132 m!5719201))

(assert (=> b!4753050 d!1519723))

(declare-fun d!1519727 () Bool)

(assert (=> d!1519727 (= (eq!1227 lt!1918083 (addToMapMapFromBucket!1582 l!14304 lt!1918094)) (= (content!9537 (toList!6126 lt!1918083)) (content!9537 (toList!6126 (addToMapMapFromBucket!1582 l!14304 lt!1918094)))))))

(declare-fun bs!1144932 () Bool)

(assert (= bs!1144932 d!1519727))

(declare-fun m!5719203 () Bool)

(assert (=> bs!1144932 m!5719203))

(declare-fun m!5719205 () Bool)

(assert (=> bs!1144932 m!5719205))

(assert (=> b!4753050 d!1519727))

(declare-fun d!1519729 () Bool)

(assert (=> d!1519729 (= (eq!1227 lt!1918083 lt!1918095) (= (content!9537 (toList!6126 lt!1918083)) (content!9537 (toList!6126 lt!1918095))))))

(declare-fun bs!1144934 () Bool)

(assert (= bs!1144934 d!1519729))

(assert (=> bs!1144934 m!5719203))

(declare-fun m!5719207 () Bool)

(assert (=> bs!1144934 m!5719207))

(assert (=> b!4753050 d!1519729))

(declare-fun d!1519731 () Bool)

(assert (=> d!1519731 (eq!1227 (+!2392 (+!2392 acc!1214 (tuple2!54877 (_1!30732 (h!59495 l!14304)) (_2!30732 (h!59495 l!14304)))) (tuple2!54877 (_1!30732 t!14174) (_2!30732 t!14174))) (+!2392 (+!2392 acc!1214 (tuple2!54877 (_1!30732 t!14174) (_2!30732 t!14174))) (tuple2!54877 (_1!30732 (h!59495 l!14304)) (_2!30732 (h!59495 l!14304)))))))

(declare-fun lt!1918376 () Unit!136564)

(declare-fun choose!33841 (ListMap!5561 K!14545 V!14791 K!14545 V!14791) Unit!136564)

(assert (=> d!1519731 (= lt!1918376 (choose!33841 acc!1214 (_1!30732 (h!59495 l!14304)) (_2!30732 (h!59495 l!14304)) (_1!30732 t!14174) (_2!30732 t!14174)))))

(assert (=> d!1519731 (not (= (_1!30732 (h!59495 l!14304)) (_1!30732 t!14174)))))

(assert (=> d!1519731 (= (addCommutativeForDiffKeys!28 acc!1214 (_1!30732 (h!59495 l!14304)) (_2!30732 (h!59495 l!14304)) (_1!30732 t!14174) (_2!30732 t!14174)) lt!1918376)))

(declare-fun bs!1144958 () Bool)

(assert (= bs!1144958 d!1519731))

(declare-fun m!5719267 () Bool)

(assert (=> bs!1144958 m!5719267))

(declare-fun m!5719269 () Bool)

(assert (=> bs!1144958 m!5719269))

(declare-fun m!5719271 () Bool)

(assert (=> bs!1144958 m!5719271))

(assert (=> bs!1144958 m!5719271))

(declare-fun m!5719273 () Bool)

(assert (=> bs!1144958 m!5719273))

(declare-fun m!5719275 () Bool)

(assert (=> bs!1144958 m!5719275))

(declare-fun m!5719277 () Bool)

(assert (=> bs!1144958 m!5719277))

(assert (=> bs!1144958 m!5719269))

(assert (=> bs!1144958 m!5719277))

(assert (=> bs!1144958 m!5719273))

(assert (=> b!4753050 d!1519731))

(declare-fun bs!1144959 () Bool)

(declare-fun b!4753140 () Bool)

(assert (= bs!1144959 (and b!4753140 b!4753113)))

(declare-fun lambda!222501 () Int)

(assert (=> bs!1144959 (= (= acc!1214 lt!1918094) (= lambda!222501 lambda!222488))))

(declare-fun bs!1144960 () Bool)

(assert (= bs!1144960 (and b!4753140 b!4753114)))

(assert (=> bs!1144960 (= (= acc!1214 lt!1918094) (= lambda!222501 lambda!222490))))

(assert (=> bs!1144960 (= (= acc!1214 lt!1918310) (= lambda!222501 lambda!222491))))

(declare-fun bs!1144961 () Bool)

(assert (= bs!1144961 (and b!4753140 d!1519691)))

(assert (=> bs!1144961 (= (= acc!1214 lt!1918294) (= lambda!222501 lambda!222492))))

(assert (=> b!4753140 true))

(declare-fun bs!1144962 () Bool)

(declare-fun b!4753141 () Bool)

(assert (= bs!1144962 (and b!4753141 d!1519691)))

(declare-fun lambda!222502 () Int)

(assert (=> bs!1144962 (= (= acc!1214 lt!1918294) (= lambda!222502 lambda!222492))))

(declare-fun bs!1144963 () Bool)

(assert (= bs!1144963 (and b!4753141 b!4753114)))

(assert (=> bs!1144963 (= (= acc!1214 lt!1918310) (= lambda!222502 lambda!222491))))

(declare-fun bs!1144964 () Bool)

(assert (= bs!1144964 (and b!4753141 b!4753113)))

(assert (=> bs!1144964 (= (= acc!1214 lt!1918094) (= lambda!222502 lambda!222488))))

(assert (=> bs!1144963 (= (= acc!1214 lt!1918094) (= lambda!222502 lambda!222490))))

(declare-fun bs!1144965 () Bool)

(assert (= bs!1144965 (and b!4753141 b!4753140)))

(assert (=> bs!1144965 (= lambda!222502 lambda!222501)))

(assert (=> b!4753141 true))

(declare-fun lambda!222503 () Int)

(declare-fun lt!1918396 () ListMap!5561)

(assert (=> bs!1144962 (= (= lt!1918396 lt!1918294) (= lambda!222503 lambda!222492))))

(assert (=> bs!1144963 (= (= lt!1918396 lt!1918310) (= lambda!222503 lambda!222491))))

(assert (=> bs!1144964 (= (= lt!1918396 lt!1918094) (= lambda!222503 lambda!222488))))

(assert (=> b!4753141 (= (= lt!1918396 acc!1214) (= lambda!222503 lambda!222502))))

(assert (=> bs!1144963 (= (= lt!1918396 lt!1918094) (= lambda!222503 lambda!222490))))

(assert (=> bs!1144965 (= (= lt!1918396 acc!1214) (= lambda!222503 lambda!222501))))

(assert (=> b!4753141 true))

(declare-fun bs!1144966 () Bool)

(declare-fun d!1519745 () Bool)

(assert (= bs!1144966 (and d!1519745 d!1519691)))

(declare-fun lambda!222504 () Int)

(declare-fun lt!1918380 () ListMap!5561)

(assert (=> bs!1144966 (= (= lt!1918380 lt!1918294) (= lambda!222504 lambda!222492))))

(declare-fun bs!1144967 () Bool)

(assert (= bs!1144967 (and d!1519745 b!4753114)))

(assert (=> bs!1144967 (= (= lt!1918380 lt!1918310) (= lambda!222504 lambda!222491))))

(declare-fun bs!1144968 () Bool)

(assert (= bs!1144968 (and d!1519745 b!4753141)))

(assert (=> bs!1144968 (= (= lt!1918380 lt!1918396) (= lambda!222504 lambda!222503))))

(declare-fun bs!1144969 () Bool)

(assert (= bs!1144969 (and d!1519745 b!4753113)))

(assert (=> bs!1144969 (= (= lt!1918380 lt!1918094) (= lambda!222504 lambda!222488))))

(assert (=> bs!1144968 (= (= lt!1918380 acc!1214) (= lambda!222504 lambda!222502))))

(assert (=> bs!1144967 (= (= lt!1918380 lt!1918094) (= lambda!222504 lambda!222490))))

(declare-fun bs!1144970 () Bool)

(assert (= bs!1144970 (and d!1519745 b!4753140)))

(assert (=> bs!1144970 (= (= lt!1918380 acc!1214) (= lambda!222504 lambda!222501))))

(assert (=> d!1519745 true))

(declare-fun bm!333152 () Bool)

(declare-fun call!333157 () Unit!136564)

(assert (=> bm!333152 (= call!333157 (lemmaContainsAllItsOwnKeys!883 acc!1214))))

(declare-fun bm!333153 () Bool)

(declare-fun c!811535 () Bool)

(declare-fun call!333158 () Bool)

(assert (=> bm!333153 (= call!333158 (forall!11768 (toList!6126 acc!1214) (ite c!811535 lambda!222501 lambda!222503)))))

(declare-fun b!4753137 () Bool)

(declare-fun e!2965098 () Bool)

(assert (=> b!4753137 (= e!2965098 (invariantList!1600 (toList!6126 lt!1918380)))))

(declare-fun lt!1918397 () ListMap!5561)

(declare-fun call!333159 () Bool)

(declare-fun bm!333154 () Bool)

(assert (=> bm!333154 (= call!333159 (forall!11768 (ite c!811535 (toList!6126 acc!1214) (toList!6126 lt!1918397)) (ite c!811535 lambda!222501 lambda!222503)))))

(declare-fun b!4753138 () Bool)

(declare-fun e!2965097 () Bool)

(assert (=> b!4753138 (= e!2965097 call!333158)))

(declare-fun e!2965096 () ListMap!5561)

(assert (=> b!4753140 (= e!2965096 acc!1214)))

(declare-fun lt!1918384 () Unit!136564)

(assert (=> b!4753140 (= lt!1918384 call!333157)))

(assert (=> b!4753140 call!333159))

(declare-fun lt!1918388 () Unit!136564)

(assert (=> b!4753140 (= lt!1918388 lt!1918384)))

(assert (=> b!4753140 call!333158))

(declare-fun lt!1918383 () Unit!136564)

(declare-fun Unit!136599 () Unit!136564)

(assert (=> b!4753140 (= lt!1918383 Unit!136599)))

(assert (=> b!4753141 (= e!2965096 lt!1918396)))

(assert (=> b!4753141 (= lt!1918397 (+!2392 acc!1214 (h!59495 lt!1918092)))))

(assert (=> b!4753141 (= lt!1918396 (addToMapMapFromBucket!1582 (t!360562 lt!1918092) (+!2392 acc!1214 (h!59495 lt!1918092))))))

(declare-fun lt!1918395 () Unit!136564)

(assert (=> b!4753141 (= lt!1918395 call!333157)))

(assert (=> b!4753141 (forall!11768 (toList!6126 acc!1214) lambda!222502)))

(declare-fun lt!1918379 () Unit!136564)

(assert (=> b!4753141 (= lt!1918379 lt!1918395)))

(assert (=> b!4753141 call!333159))

(declare-fun lt!1918386 () Unit!136564)

(declare-fun Unit!136600 () Unit!136564)

(assert (=> b!4753141 (= lt!1918386 Unit!136600)))

(assert (=> b!4753141 (forall!11768 (t!360562 lt!1918092) lambda!222503)))

(declare-fun lt!1918391 () Unit!136564)

(declare-fun Unit!136601 () Unit!136564)

(assert (=> b!4753141 (= lt!1918391 Unit!136601)))

(declare-fun lt!1918382 () Unit!136564)

(declare-fun Unit!136602 () Unit!136564)

(assert (=> b!4753141 (= lt!1918382 Unit!136602)))

(declare-fun lt!1918392 () Unit!136564)

(assert (=> b!4753141 (= lt!1918392 (forallContained!3794 (toList!6126 lt!1918397) lambda!222503 (h!59495 lt!1918092)))))

(assert (=> b!4753141 (contains!16524 lt!1918397 (_1!30732 (h!59495 lt!1918092)))))

(declare-fun lt!1918381 () Unit!136564)

(declare-fun Unit!136603 () Unit!136564)

(assert (=> b!4753141 (= lt!1918381 Unit!136603)))

(assert (=> b!4753141 (contains!16524 lt!1918396 (_1!30732 (h!59495 lt!1918092)))))

(declare-fun lt!1918390 () Unit!136564)

(declare-fun Unit!136605 () Unit!136564)

(assert (=> b!4753141 (= lt!1918390 Unit!136605)))

(assert (=> b!4753141 (forall!11768 lt!1918092 lambda!222503)))

(declare-fun lt!1918387 () Unit!136564)

(declare-fun Unit!136606 () Unit!136564)

(assert (=> b!4753141 (= lt!1918387 Unit!136606)))

(assert (=> b!4753141 (forall!11768 (toList!6126 lt!1918397) lambda!222503)))

(declare-fun lt!1918377 () Unit!136564)

(declare-fun Unit!136607 () Unit!136564)

(assert (=> b!4753141 (= lt!1918377 Unit!136607)))

(declare-fun lt!1918378 () Unit!136564)

(declare-fun Unit!136608 () Unit!136564)

(assert (=> b!4753141 (= lt!1918378 Unit!136608)))

(declare-fun lt!1918385 () Unit!136564)

(assert (=> b!4753141 (= lt!1918385 (addForallContainsKeyThenBeforeAdding!882 acc!1214 lt!1918396 (_1!30732 (h!59495 lt!1918092)) (_2!30732 (h!59495 lt!1918092))))))

(assert (=> b!4753141 (forall!11768 (toList!6126 acc!1214) lambda!222503)))

(declare-fun lt!1918389 () Unit!136564)

(assert (=> b!4753141 (= lt!1918389 lt!1918385)))

(assert (=> b!4753141 (forall!11768 (toList!6126 acc!1214) lambda!222503)))

(declare-fun lt!1918394 () Unit!136564)

(declare-fun Unit!136610 () Unit!136564)

(assert (=> b!4753141 (= lt!1918394 Unit!136610)))

(declare-fun res!2015893 () Bool)

(assert (=> b!4753141 (= res!2015893 (forall!11768 lt!1918092 lambda!222503))))

(assert (=> b!4753141 (=> (not res!2015893) (not e!2965097))))

(assert (=> b!4753141 e!2965097))

(declare-fun lt!1918393 () Unit!136564)

(declare-fun Unit!136613 () Unit!136564)

(assert (=> b!4753141 (= lt!1918393 Unit!136613)))

(declare-fun b!4753139 () Bool)

(declare-fun res!2015895 () Bool)

(assert (=> b!4753139 (=> (not res!2015895) (not e!2965098))))

(assert (=> b!4753139 (= res!2015895 (forall!11768 (toList!6126 acc!1214) lambda!222504))))

(assert (=> d!1519745 e!2965098))

(declare-fun res!2015894 () Bool)

(assert (=> d!1519745 (=> (not res!2015894) (not e!2965098))))

(assert (=> d!1519745 (= res!2015894 (forall!11768 lt!1918092 lambda!222504))))

(assert (=> d!1519745 (= lt!1918380 e!2965096)))

(assert (=> d!1519745 (= c!811535 ((_ is Nil!53098) lt!1918092))))

(assert (=> d!1519745 (noDuplicateKeys!2158 lt!1918092)))

(assert (=> d!1519745 (= (addToMapMapFromBucket!1582 lt!1918092 acc!1214) lt!1918380)))

(assert (= (and d!1519745 c!811535) b!4753140))

(assert (= (and d!1519745 (not c!811535)) b!4753141))

(assert (= (and b!4753141 res!2015893) b!4753138))

(assert (= (or b!4753140 b!4753141) bm!333152))

(assert (= (or b!4753140 b!4753141) bm!333154))

(assert (= (or b!4753140 b!4753138) bm!333153))

(assert (= (and d!1519745 res!2015894) b!4753139))

(assert (= (and b!4753139 res!2015895) b!4753137))

(declare-fun m!5719279 () Bool)

(assert (=> bm!333154 m!5719279))

(declare-fun m!5719281 () Bool)

(assert (=> bm!333152 m!5719281))

(declare-fun m!5719283 () Bool)

(assert (=> d!1519745 m!5719283))

(assert (=> d!1519745 m!5718907))

(declare-fun m!5719285 () Bool)

(assert (=> b!4753139 m!5719285))

(declare-fun m!5719287 () Bool)

(assert (=> b!4753141 m!5719287))

(declare-fun m!5719289 () Bool)

(assert (=> b!4753141 m!5719289))

(declare-fun m!5719291 () Bool)

(assert (=> b!4753141 m!5719291))

(assert (=> b!4753141 m!5719291))

(declare-fun m!5719293 () Bool)

(assert (=> b!4753141 m!5719293))

(declare-fun m!5719295 () Bool)

(assert (=> b!4753141 m!5719295))

(declare-fun m!5719297 () Bool)

(assert (=> b!4753141 m!5719297))

(declare-fun m!5719299 () Bool)

(assert (=> b!4753141 m!5719299))

(assert (=> b!4753141 m!5719287))

(declare-fun m!5719301 () Bool)

(assert (=> b!4753141 m!5719301))

(declare-fun m!5719303 () Bool)

(assert (=> b!4753141 m!5719303))

(declare-fun m!5719305 () Bool)

(assert (=> b!4753141 m!5719305))

(assert (=> b!4753141 m!5719293))

(declare-fun m!5719307 () Bool)

(assert (=> b!4753141 m!5719307))

(declare-fun m!5719309 () Bool)

(assert (=> bm!333153 m!5719309))

(declare-fun m!5719311 () Bool)

(assert (=> b!4753137 m!5719311))

(assert (=> b!4753050 d!1519745))

(declare-fun d!1519747 () Bool)

(declare-fun e!2965099 () Bool)

(assert (=> d!1519747 e!2965099))

(declare-fun res!2015896 () Bool)

(assert (=> d!1519747 (=> (not res!2015896) (not e!2965099))))

(declare-fun lt!1918401 () ListMap!5561)

(assert (=> d!1519747 (= res!2015896 (contains!16524 lt!1918401 (_1!30732 (h!59495 l!14304))))))

(declare-fun lt!1918398 () List!53222)

(assert (=> d!1519747 (= lt!1918401 (ListMap!5562 lt!1918398))))

(declare-fun lt!1918400 () Unit!136564)

(declare-fun lt!1918399 () Unit!136564)

(assert (=> d!1519747 (= lt!1918400 lt!1918399)))

(assert (=> d!1519747 (= (getValueByKey!2087 lt!1918398 (_1!30732 (h!59495 l!14304))) (Some!12536 (_2!30732 (h!59495 l!14304))))))

(assert (=> d!1519747 (= lt!1918399 (lemmaContainsTupThenGetReturnValue!1164 lt!1918398 (_1!30732 (h!59495 l!14304)) (_2!30732 (h!59495 l!14304))))))

(assert (=> d!1519747 (= lt!1918398 (insertNoDuplicatedKeys!672 (toList!6126 lt!1918094) (_1!30732 (h!59495 l!14304)) (_2!30732 (h!59495 l!14304))))))

(assert (=> d!1519747 (= (+!2392 lt!1918094 (h!59495 l!14304)) lt!1918401)))

(declare-fun b!4753142 () Bool)

(declare-fun res!2015897 () Bool)

(assert (=> b!4753142 (=> (not res!2015897) (not e!2965099))))

(assert (=> b!4753142 (= res!2015897 (= (getValueByKey!2087 (toList!6126 lt!1918401) (_1!30732 (h!59495 l!14304))) (Some!12536 (_2!30732 (h!59495 l!14304)))))))

(declare-fun b!4753143 () Bool)

(assert (=> b!4753143 (= e!2965099 (contains!16525 (toList!6126 lt!1918401) (h!59495 l!14304)))))

(assert (= (and d!1519747 res!2015896) b!4753142))

(assert (= (and b!4753142 res!2015897) b!4753143))

(declare-fun m!5719313 () Bool)

(assert (=> d!1519747 m!5719313))

(declare-fun m!5719315 () Bool)

(assert (=> d!1519747 m!5719315))

(declare-fun m!5719317 () Bool)

(assert (=> d!1519747 m!5719317))

(declare-fun m!5719319 () Bool)

(assert (=> d!1519747 m!5719319))

(declare-fun m!5719321 () Bool)

(assert (=> b!4753142 m!5719321))

(declare-fun m!5719323 () Bool)

(assert (=> b!4753143 m!5719323))

(assert (=> b!4753050 d!1519747))

(declare-fun d!1519749 () Bool)

(assert (=> d!1519749 (= (eq!1227 lt!1918090 (+!2392 lt!1918085 t!14174)) (= (content!9537 (toList!6126 lt!1918090)) (content!9537 (toList!6126 (+!2392 lt!1918085 t!14174)))))))

(declare-fun bs!1144971 () Bool)

(assert (= bs!1144971 d!1519749))

(declare-fun m!5719325 () Bool)

(assert (=> bs!1144971 m!5719325))

(declare-fun m!5719327 () Bool)

(assert (=> bs!1144971 m!5719327))

(assert (=> b!4753050 d!1519749))

(declare-fun bs!1144972 () Bool)

(declare-fun b!4753147 () Bool)

(assert (= bs!1144972 (and b!4753147 d!1519691)))

(declare-fun lambda!222505 () Int)

(assert (=> bs!1144972 (= (= lt!1918088 lt!1918294) (= lambda!222505 lambda!222492))))

(declare-fun bs!1144973 () Bool)

(assert (= bs!1144973 (and b!4753147 b!4753114)))

(assert (=> bs!1144973 (= (= lt!1918088 lt!1918310) (= lambda!222505 lambda!222491))))

(declare-fun bs!1144974 () Bool)

(assert (= bs!1144974 (and b!4753147 b!4753141)))

(assert (=> bs!1144974 (= (= lt!1918088 lt!1918396) (= lambda!222505 lambda!222503))))

(declare-fun bs!1144975 () Bool)

(assert (= bs!1144975 (and b!4753147 b!4753113)))

(assert (=> bs!1144975 (= (= lt!1918088 lt!1918094) (= lambda!222505 lambda!222488))))

(declare-fun bs!1144976 () Bool)

(assert (= bs!1144976 (and b!4753147 d!1519745)))

(assert (=> bs!1144976 (= (= lt!1918088 lt!1918380) (= lambda!222505 lambda!222504))))

(assert (=> bs!1144974 (= (= lt!1918088 acc!1214) (= lambda!222505 lambda!222502))))

(assert (=> bs!1144973 (= (= lt!1918088 lt!1918094) (= lambda!222505 lambda!222490))))

(declare-fun bs!1144977 () Bool)

(assert (= bs!1144977 (and b!4753147 b!4753140)))

(assert (=> bs!1144977 (= (= lt!1918088 acc!1214) (= lambda!222505 lambda!222501))))

(assert (=> b!4753147 true))

(declare-fun bs!1144978 () Bool)

(declare-fun b!4753148 () Bool)

(assert (= bs!1144978 (and b!4753148 d!1519691)))

(declare-fun lambda!222506 () Int)

(assert (=> bs!1144978 (= (= lt!1918088 lt!1918294) (= lambda!222506 lambda!222492))))

(declare-fun bs!1144979 () Bool)

(assert (= bs!1144979 (and b!4753148 b!4753114)))

(assert (=> bs!1144979 (= (= lt!1918088 lt!1918310) (= lambda!222506 lambda!222491))))

(declare-fun bs!1144981 () Bool)

(assert (= bs!1144981 (and b!4753148 b!4753141)))

(assert (=> bs!1144981 (= (= lt!1918088 lt!1918396) (= lambda!222506 lambda!222503))))

(declare-fun bs!1144982 () Bool)

(assert (= bs!1144982 (and b!4753148 b!4753113)))

(assert (=> bs!1144982 (= (= lt!1918088 lt!1918094) (= lambda!222506 lambda!222488))))

(declare-fun bs!1144983 () Bool)

(assert (= bs!1144983 (and b!4753148 d!1519745)))

(assert (=> bs!1144983 (= (= lt!1918088 lt!1918380) (= lambda!222506 lambda!222504))))

(declare-fun bs!1144984 () Bool)

(assert (= bs!1144984 (and b!4753148 b!4753147)))

(assert (=> bs!1144984 (= lambda!222506 lambda!222505)))

(assert (=> bs!1144981 (= (= lt!1918088 acc!1214) (= lambda!222506 lambda!222502))))

(assert (=> bs!1144979 (= (= lt!1918088 lt!1918094) (= lambda!222506 lambda!222490))))

(declare-fun bs!1144986 () Bool)

(assert (= bs!1144986 (and b!4753148 b!4753140)))

(assert (=> bs!1144986 (= (= lt!1918088 acc!1214) (= lambda!222506 lambda!222501))))

(assert (=> b!4753148 true))

(declare-fun lt!1918421 () ListMap!5561)

(declare-fun lambda!222507 () Int)

(assert (=> bs!1144978 (= (= lt!1918421 lt!1918294) (= lambda!222507 lambda!222492))))

(assert (=> bs!1144979 (= (= lt!1918421 lt!1918310) (= lambda!222507 lambda!222491))))

(assert (=> bs!1144981 (= (= lt!1918421 lt!1918396) (= lambda!222507 lambda!222503))))

(assert (=> bs!1144982 (= (= lt!1918421 lt!1918094) (= lambda!222507 lambda!222488))))

(assert (=> bs!1144983 (= (= lt!1918421 lt!1918380) (= lambda!222507 lambda!222504))))

(assert (=> b!4753148 (= (= lt!1918421 lt!1918088) (= lambda!222507 lambda!222506))))

(assert (=> bs!1144984 (= (= lt!1918421 lt!1918088) (= lambda!222507 lambda!222505))))

(assert (=> bs!1144981 (= (= lt!1918421 acc!1214) (= lambda!222507 lambda!222502))))

(assert (=> bs!1144979 (= (= lt!1918421 lt!1918094) (= lambda!222507 lambda!222490))))

(assert (=> bs!1144986 (= (= lt!1918421 acc!1214) (= lambda!222507 lambda!222501))))

(assert (=> b!4753148 true))

(declare-fun bs!1144999 () Bool)

(declare-fun d!1519751 () Bool)

(assert (= bs!1144999 (and d!1519751 d!1519691)))

(declare-fun lambda!222509 () Int)

(declare-fun lt!1918405 () ListMap!5561)

(assert (=> bs!1144999 (= (= lt!1918405 lt!1918294) (= lambda!222509 lambda!222492))))

(declare-fun bs!1145001 () Bool)

(assert (= bs!1145001 (and d!1519751 b!4753114)))

(assert (=> bs!1145001 (= (= lt!1918405 lt!1918310) (= lambda!222509 lambda!222491))))

(declare-fun bs!1145003 () Bool)

(assert (= bs!1145003 (and d!1519751 b!4753141)))

(assert (=> bs!1145003 (= (= lt!1918405 lt!1918396) (= lambda!222509 lambda!222503))))

(declare-fun bs!1145004 () Bool)

(assert (= bs!1145004 (and d!1519751 b!4753113)))

(assert (=> bs!1145004 (= (= lt!1918405 lt!1918094) (= lambda!222509 lambda!222488))))

(declare-fun bs!1145005 () Bool)

(assert (= bs!1145005 (and d!1519751 b!4753148)))

(assert (=> bs!1145005 (= (= lt!1918405 lt!1918088) (= lambda!222509 lambda!222506))))

(declare-fun bs!1145006 () Bool)

(assert (= bs!1145006 (and d!1519751 b!4753147)))

(assert (=> bs!1145006 (= (= lt!1918405 lt!1918088) (= lambda!222509 lambda!222505))))

(assert (=> bs!1145003 (= (= lt!1918405 acc!1214) (= lambda!222509 lambda!222502))))

(assert (=> bs!1145001 (= (= lt!1918405 lt!1918094) (= lambda!222509 lambda!222490))))

(declare-fun bs!1145009 () Bool)

(assert (= bs!1145009 (and d!1519751 b!4753140)))

(assert (=> bs!1145009 (= (= lt!1918405 acc!1214) (= lambda!222509 lambda!222501))))

(assert (=> bs!1145005 (= (= lt!1918405 lt!1918421) (= lambda!222509 lambda!222507))))

(declare-fun bs!1145012 () Bool)

(assert (= bs!1145012 (and d!1519751 d!1519745)))

(assert (=> bs!1145012 (= (= lt!1918405 lt!1918380) (= lambda!222509 lambda!222504))))

(assert (=> d!1519751 true))

(declare-fun bm!333155 () Bool)

(declare-fun call!333160 () Unit!136564)

(assert (=> bm!333155 (= call!333160 (lemmaContainsAllItsOwnKeys!883 lt!1918088))))

(declare-fun bm!333156 () Bool)

(declare-fun call!333161 () Bool)

(declare-fun c!811536 () Bool)

(assert (=> bm!333156 (= call!333161 (forall!11768 (toList!6126 lt!1918088) (ite c!811536 lambda!222505 lambda!222507)))))

(declare-fun b!4753144 () Bool)

(declare-fun e!2965102 () Bool)

(assert (=> b!4753144 (= e!2965102 (invariantList!1600 (toList!6126 lt!1918405)))))

(declare-fun call!333162 () Bool)

(declare-fun lt!1918422 () ListMap!5561)

(declare-fun bm!333157 () Bool)

(assert (=> bm!333157 (= call!333162 (forall!11768 (ite c!811536 (toList!6126 lt!1918088) (toList!6126 lt!1918422)) (ite c!811536 lambda!222505 lambda!222507)))))

(declare-fun b!4753145 () Bool)

(declare-fun e!2965101 () Bool)

(assert (=> b!4753145 (= e!2965101 call!333161)))

(declare-fun e!2965100 () ListMap!5561)

(assert (=> b!4753147 (= e!2965100 lt!1918088)))

(declare-fun lt!1918409 () Unit!136564)

(assert (=> b!4753147 (= lt!1918409 call!333160)))

(assert (=> b!4753147 call!333162))

(declare-fun lt!1918413 () Unit!136564)

(assert (=> b!4753147 (= lt!1918413 lt!1918409)))

(assert (=> b!4753147 call!333161))

(declare-fun lt!1918408 () Unit!136564)

(declare-fun Unit!136621 () Unit!136564)

(assert (=> b!4753147 (= lt!1918408 Unit!136621)))

(assert (=> b!4753148 (= e!2965100 lt!1918421)))

(assert (=> b!4753148 (= lt!1918422 (+!2392 lt!1918088 (h!59495 (t!360562 l!14304))))))

(assert (=> b!4753148 (= lt!1918421 (addToMapMapFromBucket!1582 (t!360562 (t!360562 l!14304)) (+!2392 lt!1918088 (h!59495 (t!360562 l!14304)))))))

(declare-fun lt!1918420 () Unit!136564)

(assert (=> b!4753148 (= lt!1918420 call!333160)))

(assert (=> b!4753148 (forall!11768 (toList!6126 lt!1918088) lambda!222506)))

(declare-fun lt!1918404 () Unit!136564)

(assert (=> b!4753148 (= lt!1918404 lt!1918420)))

(assert (=> b!4753148 call!333162))

(declare-fun lt!1918411 () Unit!136564)

(declare-fun Unit!136622 () Unit!136564)

(assert (=> b!4753148 (= lt!1918411 Unit!136622)))

(assert (=> b!4753148 (forall!11768 (t!360562 (t!360562 l!14304)) lambda!222507)))

(declare-fun lt!1918416 () Unit!136564)

(declare-fun Unit!136623 () Unit!136564)

(assert (=> b!4753148 (= lt!1918416 Unit!136623)))

(declare-fun lt!1918407 () Unit!136564)

(declare-fun Unit!136624 () Unit!136564)

(assert (=> b!4753148 (= lt!1918407 Unit!136624)))

(declare-fun lt!1918417 () Unit!136564)

(assert (=> b!4753148 (= lt!1918417 (forallContained!3794 (toList!6126 lt!1918422) lambda!222507 (h!59495 (t!360562 l!14304))))))

(assert (=> b!4753148 (contains!16524 lt!1918422 (_1!30732 (h!59495 (t!360562 l!14304))))))

(declare-fun lt!1918406 () Unit!136564)

(declare-fun Unit!136625 () Unit!136564)

(assert (=> b!4753148 (= lt!1918406 Unit!136625)))

(assert (=> b!4753148 (contains!16524 lt!1918421 (_1!30732 (h!59495 (t!360562 l!14304))))))

(declare-fun lt!1918415 () Unit!136564)

(declare-fun Unit!136626 () Unit!136564)

(assert (=> b!4753148 (= lt!1918415 Unit!136626)))

(assert (=> b!4753148 (forall!11768 (t!360562 l!14304) lambda!222507)))

(declare-fun lt!1918412 () Unit!136564)

(declare-fun Unit!136627 () Unit!136564)

(assert (=> b!4753148 (= lt!1918412 Unit!136627)))

(assert (=> b!4753148 (forall!11768 (toList!6126 lt!1918422) lambda!222507)))

(declare-fun lt!1918402 () Unit!136564)

(declare-fun Unit!136628 () Unit!136564)

(assert (=> b!4753148 (= lt!1918402 Unit!136628)))

(declare-fun lt!1918403 () Unit!136564)

(declare-fun Unit!136629 () Unit!136564)

(assert (=> b!4753148 (= lt!1918403 Unit!136629)))

(declare-fun lt!1918410 () Unit!136564)

(assert (=> b!4753148 (= lt!1918410 (addForallContainsKeyThenBeforeAdding!882 lt!1918088 lt!1918421 (_1!30732 (h!59495 (t!360562 l!14304))) (_2!30732 (h!59495 (t!360562 l!14304)))))))

(assert (=> b!4753148 (forall!11768 (toList!6126 lt!1918088) lambda!222507)))

(declare-fun lt!1918414 () Unit!136564)

(assert (=> b!4753148 (= lt!1918414 lt!1918410)))

(assert (=> b!4753148 (forall!11768 (toList!6126 lt!1918088) lambda!222507)))

(declare-fun lt!1918419 () Unit!136564)

(declare-fun Unit!136630 () Unit!136564)

(assert (=> b!4753148 (= lt!1918419 Unit!136630)))

(declare-fun res!2015898 () Bool)

(assert (=> b!4753148 (= res!2015898 (forall!11768 (t!360562 l!14304) lambda!222507))))

(assert (=> b!4753148 (=> (not res!2015898) (not e!2965101))))

(assert (=> b!4753148 e!2965101))

(declare-fun lt!1918418 () Unit!136564)

(declare-fun Unit!136632 () Unit!136564)

(assert (=> b!4753148 (= lt!1918418 Unit!136632)))

(declare-fun b!4753146 () Bool)

(declare-fun res!2015900 () Bool)

(assert (=> b!4753146 (=> (not res!2015900) (not e!2965102))))

(assert (=> b!4753146 (= res!2015900 (forall!11768 (toList!6126 lt!1918088) lambda!222509))))

(assert (=> d!1519751 e!2965102))

(declare-fun res!2015899 () Bool)

(assert (=> d!1519751 (=> (not res!2015899) (not e!2965102))))

(assert (=> d!1519751 (= res!2015899 (forall!11768 (t!360562 l!14304) lambda!222509))))

(assert (=> d!1519751 (= lt!1918405 e!2965100)))

(assert (=> d!1519751 (= c!811536 ((_ is Nil!53098) (t!360562 l!14304)))))

(assert (=> d!1519751 (noDuplicateKeys!2158 (t!360562 l!14304))))

(assert (=> d!1519751 (= (addToMapMapFromBucket!1582 (t!360562 l!14304) lt!1918088) lt!1918405)))

(assert (= (and d!1519751 c!811536) b!4753147))

(assert (= (and d!1519751 (not c!811536)) b!4753148))

(assert (= (and b!4753148 res!2015898) b!4753145))

(assert (= (or b!4753147 b!4753148) bm!333155))

(assert (= (or b!4753147 b!4753148) bm!333157))

(assert (= (or b!4753147 b!4753145) bm!333156))

(assert (= (and d!1519751 res!2015899) b!4753146))

(assert (= (and b!4753146 res!2015900) b!4753144))

(declare-fun m!5719345 () Bool)

(assert (=> bm!333157 m!5719345))

(declare-fun m!5719347 () Bool)

(assert (=> bm!333155 m!5719347))

(declare-fun m!5719349 () Bool)

(assert (=> d!1519751 m!5719349))

(declare-fun m!5719351 () Bool)

(assert (=> d!1519751 m!5719351))

(declare-fun m!5719353 () Bool)

(assert (=> b!4753146 m!5719353))

(declare-fun m!5719355 () Bool)

(assert (=> b!4753148 m!5719355))

(declare-fun m!5719357 () Bool)

(assert (=> b!4753148 m!5719357))

(declare-fun m!5719359 () Bool)

(assert (=> b!4753148 m!5719359))

(assert (=> b!4753148 m!5719359))

(declare-fun m!5719361 () Bool)

(assert (=> b!4753148 m!5719361))

(declare-fun m!5719363 () Bool)

(assert (=> b!4753148 m!5719363))

(declare-fun m!5719365 () Bool)

(assert (=> b!4753148 m!5719365))

(declare-fun m!5719367 () Bool)

(assert (=> b!4753148 m!5719367))

(assert (=> b!4753148 m!5719355))

(declare-fun m!5719369 () Bool)

(assert (=> b!4753148 m!5719369))

(declare-fun m!5719371 () Bool)

(assert (=> b!4753148 m!5719371))

(declare-fun m!5719373 () Bool)

(assert (=> b!4753148 m!5719373))

(assert (=> b!4753148 m!5719361))

(declare-fun m!5719375 () Bool)

(assert (=> b!4753148 m!5719375))

(declare-fun m!5719377 () Bool)

(assert (=> bm!333156 m!5719377))

(declare-fun m!5719379 () Bool)

(assert (=> b!4753144 m!5719379))

(assert (=> b!4753050 d!1519751))

(declare-fun d!1519759 () Bool)

(declare-fun e!2965107 () Bool)

(assert (=> d!1519759 e!2965107))

(declare-fun res!2015906 () Bool)

(assert (=> d!1519759 (=> (not res!2015906) (not e!2965107))))

(declare-fun lt!1918454 () ListMap!5561)

(assert (=> d!1519759 (= res!2015906 (contains!16524 lt!1918454 (_1!30732 t!14174)))))

(declare-fun lt!1918451 () List!53222)

(assert (=> d!1519759 (= lt!1918454 (ListMap!5562 lt!1918451))))

(declare-fun lt!1918453 () Unit!136564)

(declare-fun lt!1918452 () Unit!136564)

(assert (=> d!1519759 (= lt!1918453 lt!1918452)))

(assert (=> d!1519759 (= (getValueByKey!2087 lt!1918451 (_1!30732 t!14174)) (Some!12536 (_2!30732 t!14174)))))

(assert (=> d!1519759 (= lt!1918452 (lemmaContainsTupThenGetReturnValue!1164 lt!1918451 (_1!30732 t!14174) (_2!30732 t!14174)))))

(assert (=> d!1519759 (= lt!1918451 (insertNoDuplicatedKeys!672 (toList!6126 lt!1918085) (_1!30732 t!14174) (_2!30732 t!14174)))))

(assert (=> d!1519759 (= (+!2392 lt!1918085 t!14174) lt!1918454)))

(declare-fun b!4753156 () Bool)

(declare-fun res!2015907 () Bool)

(assert (=> b!4753156 (=> (not res!2015907) (not e!2965107))))

(assert (=> b!4753156 (= res!2015907 (= (getValueByKey!2087 (toList!6126 lt!1918454) (_1!30732 t!14174)) (Some!12536 (_2!30732 t!14174))))))

(declare-fun b!4753157 () Bool)

(assert (=> b!4753157 (= e!2965107 (contains!16525 (toList!6126 lt!1918454) t!14174))))

(assert (= (and d!1519759 res!2015906) b!4753156))

(assert (= (and b!4753156 res!2015907) b!4753157))

(declare-fun m!5719381 () Bool)

(assert (=> d!1519759 m!5719381))

(declare-fun m!5719383 () Bool)

(assert (=> d!1519759 m!5719383))

(declare-fun m!5719385 () Bool)

(assert (=> d!1519759 m!5719385))

(declare-fun m!5719387 () Bool)

(assert (=> d!1519759 m!5719387))

(declare-fun m!5719389 () Bool)

(assert (=> b!4753156 m!5719389))

(declare-fun m!5719391 () Bool)

(assert (=> b!4753157 m!5719391))

(assert (=> b!4753050 d!1519759))

(declare-fun bs!1145032 () Bool)

(declare-fun b!4753161 () Bool)

(assert (= bs!1145032 (and b!4753161 d!1519691)))

(declare-fun lambda!222512 () Int)

(assert (=> bs!1145032 (= (= lt!1918081 lt!1918294) (= lambda!222512 lambda!222492))))

(declare-fun bs!1145033 () Bool)

(assert (= bs!1145033 (and b!4753161 b!4753114)))

(assert (=> bs!1145033 (= (= lt!1918081 lt!1918310) (= lambda!222512 lambda!222491))))

(declare-fun bs!1145034 () Bool)

(assert (= bs!1145034 (and b!4753161 b!4753141)))

(assert (=> bs!1145034 (= (= lt!1918081 lt!1918396) (= lambda!222512 lambda!222503))))

(declare-fun bs!1145035 () Bool)

(assert (= bs!1145035 (and b!4753161 b!4753113)))

(assert (=> bs!1145035 (= (= lt!1918081 lt!1918094) (= lambda!222512 lambda!222488))))

(declare-fun bs!1145036 () Bool)

(assert (= bs!1145036 (and b!4753161 b!4753148)))

(assert (=> bs!1145036 (= (= lt!1918081 lt!1918088) (= lambda!222512 lambda!222506))))

(declare-fun bs!1145037 () Bool)

(assert (= bs!1145037 (and b!4753161 b!4753147)))

(assert (=> bs!1145037 (= (= lt!1918081 lt!1918088) (= lambda!222512 lambda!222505))))

(assert (=> bs!1145034 (= (= lt!1918081 acc!1214) (= lambda!222512 lambda!222502))))

(assert (=> bs!1145033 (= (= lt!1918081 lt!1918094) (= lambda!222512 lambda!222490))))

(declare-fun bs!1145038 () Bool)

(assert (= bs!1145038 (and b!4753161 d!1519751)))

(assert (=> bs!1145038 (= (= lt!1918081 lt!1918405) (= lambda!222512 lambda!222509))))

(declare-fun bs!1145039 () Bool)

(assert (= bs!1145039 (and b!4753161 b!4753140)))

(assert (=> bs!1145039 (= (= lt!1918081 acc!1214) (= lambda!222512 lambda!222501))))

(assert (=> bs!1145036 (= (= lt!1918081 lt!1918421) (= lambda!222512 lambda!222507))))

(declare-fun bs!1145040 () Bool)

(assert (= bs!1145040 (and b!4753161 d!1519745)))

(assert (=> bs!1145040 (= (= lt!1918081 lt!1918380) (= lambda!222512 lambda!222504))))

(assert (=> b!4753161 true))

(declare-fun bs!1145041 () Bool)

(declare-fun b!4753162 () Bool)

(assert (= bs!1145041 (and b!4753162 d!1519691)))

(declare-fun lambda!222513 () Int)

(assert (=> bs!1145041 (= (= lt!1918081 lt!1918294) (= lambda!222513 lambda!222492))))

(declare-fun bs!1145042 () Bool)

(assert (= bs!1145042 (and b!4753162 b!4753114)))

(assert (=> bs!1145042 (= (= lt!1918081 lt!1918310) (= lambda!222513 lambda!222491))))

(declare-fun bs!1145043 () Bool)

(assert (= bs!1145043 (and b!4753162 b!4753141)))

(assert (=> bs!1145043 (= (= lt!1918081 lt!1918396) (= lambda!222513 lambda!222503))))

(declare-fun bs!1145044 () Bool)

(assert (= bs!1145044 (and b!4753162 b!4753113)))

(assert (=> bs!1145044 (= (= lt!1918081 lt!1918094) (= lambda!222513 lambda!222488))))

(declare-fun bs!1145045 () Bool)

(assert (= bs!1145045 (and b!4753162 b!4753148)))

(assert (=> bs!1145045 (= (= lt!1918081 lt!1918088) (= lambda!222513 lambda!222506))))

(declare-fun bs!1145046 () Bool)

(assert (= bs!1145046 (and b!4753162 b!4753147)))

(assert (=> bs!1145046 (= (= lt!1918081 lt!1918088) (= lambda!222513 lambda!222505))))

(assert (=> bs!1145043 (= (= lt!1918081 acc!1214) (= lambda!222513 lambda!222502))))

(assert (=> bs!1145042 (= (= lt!1918081 lt!1918094) (= lambda!222513 lambda!222490))))

(declare-fun bs!1145047 () Bool)

(assert (= bs!1145047 (and b!4753162 d!1519751)))

(assert (=> bs!1145047 (= (= lt!1918081 lt!1918405) (= lambda!222513 lambda!222509))))

(declare-fun bs!1145048 () Bool)

(assert (= bs!1145048 (and b!4753162 b!4753140)))

(assert (=> bs!1145048 (= (= lt!1918081 acc!1214) (= lambda!222513 lambda!222501))))

(declare-fun bs!1145049 () Bool)

(assert (= bs!1145049 (and b!4753162 b!4753161)))

(assert (=> bs!1145049 (= lambda!222513 lambda!222512)))

(assert (=> bs!1145045 (= (= lt!1918081 lt!1918421) (= lambda!222513 lambda!222507))))

(declare-fun bs!1145050 () Bool)

(assert (= bs!1145050 (and b!4753162 d!1519745)))

(assert (=> bs!1145050 (= (= lt!1918081 lt!1918380) (= lambda!222513 lambda!222504))))

(assert (=> b!4753162 true))

(declare-fun lambda!222514 () Int)

(declare-fun lt!1918474 () ListMap!5561)

(assert (=> bs!1145041 (= (= lt!1918474 lt!1918294) (= lambda!222514 lambda!222492))))

(assert (=> bs!1145042 (= (= lt!1918474 lt!1918310) (= lambda!222514 lambda!222491))))

(assert (=> bs!1145043 (= (= lt!1918474 lt!1918396) (= lambda!222514 lambda!222503))))

(assert (=> bs!1145044 (= (= lt!1918474 lt!1918094) (= lambda!222514 lambda!222488))))

(assert (=> bs!1145045 (= (= lt!1918474 lt!1918088) (= lambda!222514 lambda!222506))))

(assert (=> bs!1145046 (= (= lt!1918474 lt!1918088) (= lambda!222514 lambda!222505))))

(assert (=> bs!1145043 (= (= lt!1918474 acc!1214) (= lambda!222514 lambda!222502))))

(assert (=> b!4753162 (= (= lt!1918474 lt!1918081) (= lambda!222514 lambda!222513))))

(assert (=> bs!1145042 (= (= lt!1918474 lt!1918094) (= lambda!222514 lambda!222490))))

(assert (=> bs!1145047 (= (= lt!1918474 lt!1918405) (= lambda!222514 lambda!222509))))

(assert (=> bs!1145048 (= (= lt!1918474 acc!1214) (= lambda!222514 lambda!222501))))

(assert (=> bs!1145049 (= (= lt!1918474 lt!1918081) (= lambda!222514 lambda!222512))))

(assert (=> bs!1145045 (= (= lt!1918474 lt!1918421) (= lambda!222514 lambda!222507))))

(assert (=> bs!1145050 (= (= lt!1918474 lt!1918380) (= lambda!222514 lambda!222504))))

(assert (=> b!4753162 true))

(declare-fun bs!1145071 () Bool)

(declare-fun d!1519761 () Bool)

(assert (= bs!1145071 (and d!1519761 d!1519691)))

(declare-fun lambda!222516 () Int)

(declare-fun lt!1918458 () ListMap!5561)

(assert (=> bs!1145071 (= (= lt!1918458 lt!1918294) (= lambda!222516 lambda!222492))))

(declare-fun bs!1145072 () Bool)

(assert (= bs!1145072 (and d!1519761 b!4753114)))

(assert (=> bs!1145072 (= (= lt!1918458 lt!1918310) (= lambda!222516 lambda!222491))))

(declare-fun bs!1145073 () Bool)

(assert (= bs!1145073 (and d!1519761 b!4753141)))

(assert (=> bs!1145073 (= (= lt!1918458 lt!1918396) (= lambda!222516 lambda!222503))))

(declare-fun bs!1145074 () Bool)

(assert (= bs!1145074 (and d!1519761 b!4753113)))

(assert (=> bs!1145074 (= (= lt!1918458 lt!1918094) (= lambda!222516 lambda!222488))))

(declare-fun bs!1145075 () Bool)

(assert (= bs!1145075 (and d!1519761 b!4753148)))

(assert (=> bs!1145075 (= (= lt!1918458 lt!1918088) (= lambda!222516 lambda!222506))))

(declare-fun bs!1145076 () Bool)

(assert (= bs!1145076 (and d!1519761 b!4753147)))

(assert (=> bs!1145076 (= (= lt!1918458 lt!1918088) (= lambda!222516 lambda!222505))))

(assert (=> bs!1145073 (= (= lt!1918458 acc!1214) (= lambda!222516 lambda!222502))))

(declare-fun bs!1145077 () Bool)

(assert (= bs!1145077 (and d!1519761 b!4753162)))

(assert (=> bs!1145077 (= (= lt!1918458 lt!1918081) (= lambda!222516 lambda!222513))))

(assert (=> bs!1145077 (= (= lt!1918458 lt!1918474) (= lambda!222516 lambda!222514))))

(assert (=> bs!1145072 (= (= lt!1918458 lt!1918094) (= lambda!222516 lambda!222490))))

(declare-fun bs!1145078 () Bool)

(assert (= bs!1145078 (and d!1519761 d!1519751)))

(assert (=> bs!1145078 (= (= lt!1918458 lt!1918405) (= lambda!222516 lambda!222509))))

(declare-fun bs!1145079 () Bool)

(assert (= bs!1145079 (and d!1519761 b!4753140)))

(assert (=> bs!1145079 (= (= lt!1918458 acc!1214) (= lambda!222516 lambda!222501))))

(declare-fun bs!1145080 () Bool)

(assert (= bs!1145080 (and d!1519761 b!4753161)))

(assert (=> bs!1145080 (= (= lt!1918458 lt!1918081) (= lambda!222516 lambda!222512))))

(assert (=> bs!1145075 (= (= lt!1918458 lt!1918421) (= lambda!222516 lambda!222507))))

(declare-fun bs!1145081 () Bool)

(assert (= bs!1145081 (and d!1519761 d!1519745)))

(assert (=> bs!1145081 (= (= lt!1918458 lt!1918380) (= lambda!222516 lambda!222504))))

(assert (=> d!1519761 true))

(declare-fun bm!333161 () Bool)

(declare-fun call!333166 () Unit!136564)

(assert (=> bm!333161 (= call!333166 (lemmaContainsAllItsOwnKeys!883 lt!1918081))))

(declare-fun bm!333162 () Bool)

(declare-fun call!333167 () Bool)

(declare-fun c!811538 () Bool)

(assert (=> bm!333162 (= call!333167 (forall!11768 (toList!6126 lt!1918081) (ite c!811538 lambda!222512 lambda!222514)))))

(declare-fun b!4753158 () Bool)

(declare-fun e!2965110 () Bool)

(assert (=> b!4753158 (= e!2965110 (invariantList!1600 (toList!6126 lt!1918458)))))

(declare-fun lt!1918475 () ListMap!5561)

(declare-fun call!333168 () Bool)

(declare-fun bm!333163 () Bool)

(assert (=> bm!333163 (= call!333168 (forall!11768 (ite c!811538 (toList!6126 lt!1918081) (toList!6126 lt!1918475)) (ite c!811538 lambda!222512 lambda!222514)))))

(declare-fun b!4753159 () Bool)

(declare-fun e!2965109 () Bool)

(assert (=> b!4753159 (= e!2965109 call!333167)))

(declare-fun e!2965108 () ListMap!5561)

(assert (=> b!4753161 (= e!2965108 lt!1918081)))

(declare-fun lt!1918462 () Unit!136564)

(assert (=> b!4753161 (= lt!1918462 call!333166)))

(assert (=> b!4753161 call!333168))

(declare-fun lt!1918466 () Unit!136564)

(assert (=> b!4753161 (= lt!1918466 lt!1918462)))

(assert (=> b!4753161 call!333167))

(declare-fun lt!1918461 () Unit!136564)

(declare-fun Unit!136643 () Unit!136564)

(assert (=> b!4753161 (= lt!1918461 Unit!136643)))

(assert (=> b!4753162 (= e!2965108 lt!1918474)))

(assert (=> b!4753162 (= lt!1918475 (+!2392 lt!1918081 (h!59495 (Cons!53098 t!14174 (t!360562 l!14304)))))))

(assert (=> b!4753162 (= lt!1918474 (addToMapMapFromBucket!1582 (t!360562 (Cons!53098 t!14174 (t!360562 l!14304))) (+!2392 lt!1918081 (h!59495 (Cons!53098 t!14174 (t!360562 l!14304))))))))

(declare-fun lt!1918473 () Unit!136564)

(assert (=> b!4753162 (= lt!1918473 call!333166)))

(assert (=> b!4753162 (forall!11768 (toList!6126 lt!1918081) lambda!222513)))

(declare-fun lt!1918457 () Unit!136564)

(assert (=> b!4753162 (= lt!1918457 lt!1918473)))

(assert (=> b!4753162 call!333168))

(declare-fun lt!1918464 () Unit!136564)

(declare-fun Unit!136644 () Unit!136564)

(assert (=> b!4753162 (= lt!1918464 Unit!136644)))

(assert (=> b!4753162 (forall!11768 (t!360562 (Cons!53098 t!14174 (t!360562 l!14304))) lambda!222514)))

(declare-fun lt!1918469 () Unit!136564)

(declare-fun Unit!136645 () Unit!136564)

(assert (=> b!4753162 (= lt!1918469 Unit!136645)))

(declare-fun lt!1918460 () Unit!136564)

(declare-fun Unit!136646 () Unit!136564)

(assert (=> b!4753162 (= lt!1918460 Unit!136646)))

(declare-fun lt!1918470 () Unit!136564)

(assert (=> b!4753162 (= lt!1918470 (forallContained!3794 (toList!6126 lt!1918475) lambda!222514 (h!59495 (Cons!53098 t!14174 (t!360562 l!14304)))))))

(assert (=> b!4753162 (contains!16524 lt!1918475 (_1!30732 (h!59495 (Cons!53098 t!14174 (t!360562 l!14304)))))))

(declare-fun lt!1918459 () Unit!136564)

(declare-fun Unit!136647 () Unit!136564)

(assert (=> b!4753162 (= lt!1918459 Unit!136647)))

(assert (=> b!4753162 (contains!16524 lt!1918474 (_1!30732 (h!59495 (Cons!53098 t!14174 (t!360562 l!14304)))))))

(declare-fun lt!1918468 () Unit!136564)

(declare-fun Unit!136648 () Unit!136564)

(assert (=> b!4753162 (= lt!1918468 Unit!136648)))

(assert (=> b!4753162 (forall!11768 (Cons!53098 t!14174 (t!360562 l!14304)) lambda!222514)))

(declare-fun lt!1918465 () Unit!136564)

(declare-fun Unit!136649 () Unit!136564)

(assert (=> b!4753162 (= lt!1918465 Unit!136649)))

(assert (=> b!4753162 (forall!11768 (toList!6126 lt!1918475) lambda!222514)))

(declare-fun lt!1918455 () Unit!136564)

(declare-fun Unit!136650 () Unit!136564)

(assert (=> b!4753162 (= lt!1918455 Unit!136650)))

(declare-fun lt!1918456 () Unit!136564)

(declare-fun Unit!136651 () Unit!136564)

(assert (=> b!4753162 (= lt!1918456 Unit!136651)))

(declare-fun lt!1918463 () Unit!136564)

(assert (=> b!4753162 (= lt!1918463 (addForallContainsKeyThenBeforeAdding!882 lt!1918081 lt!1918474 (_1!30732 (h!59495 (Cons!53098 t!14174 (t!360562 l!14304)))) (_2!30732 (h!59495 (Cons!53098 t!14174 (t!360562 l!14304))))))))

(assert (=> b!4753162 (forall!11768 (toList!6126 lt!1918081) lambda!222514)))

(declare-fun lt!1918467 () Unit!136564)

(assert (=> b!4753162 (= lt!1918467 lt!1918463)))

(assert (=> b!4753162 (forall!11768 (toList!6126 lt!1918081) lambda!222514)))

(declare-fun lt!1918472 () Unit!136564)

(declare-fun Unit!136652 () Unit!136564)

(assert (=> b!4753162 (= lt!1918472 Unit!136652)))

(declare-fun res!2015908 () Bool)

(assert (=> b!4753162 (= res!2015908 (forall!11768 (Cons!53098 t!14174 (t!360562 l!14304)) lambda!222514))))

(assert (=> b!4753162 (=> (not res!2015908) (not e!2965109))))

(assert (=> b!4753162 e!2965109))

(declare-fun lt!1918471 () Unit!136564)

(declare-fun Unit!136653 () Unit!136564)

(assert (=> b!4753162 (= lt!1918471 Unit!136653)))

(declare-fun b!4753160 () Bool)

(declare-fun res!2015910 () Bool)

(assert (=> b!4753160 (=> (not res!2015910) (not e!2965110))))

(assert (=> b!4753160 (= res!2015910 (forall!11768 (toList!6126 lt!1918081) lambda!222516))))

(assert (=> d!1519761 e!2965110))

(declare-fun res!2015909 () Bool)

(assert (=> d!1519761 (=> (not res!2015909) (not e!2965110))))

(assert (=> d!1519761 (= res!2015909 (forall!11768 (Cons!53098 t!14174 (t!360562 l!14304)) lambda!222516))))

(assert (=> d!1519761 (= lt!1918458 e!2965108)))

(assert (=> d!1519761 (= c!811538 ((_ is Nil!53098) (Cons!53098 t!14174 (t!360562 l!14304))))))

(assert (=> d!1519761 (noDuplicateKeys!2158 (Cons!53098 t!14174 (t!360562 l!14304)))))

(assert (=> d!1519761 (= (addToMapMapFromBucket!1582 (Cons!53098 t!14174 (t!360562 l!14304)) lt!1918081) lt!1918458)))

(assert (= (and d!1519761 c!811538) b!4753161))

(assert (= (and d!1519761 (not c!811538)) b!4753162))

(assert (= (and b!4753162 res!2015908) b!4753159))

(assert (= (or b!4753161 b!4753162) bm!333161))

(assert (= (or b!4753161 b!4753162) bm!333163))

(assert (= (or b!4753161 b!4753159) bm!333162))

(assert (= (and d!1519761 res!2015909) b!4753160))

(assert (= (and b!4753160 res!2015910) b!4753158))

(declare-fun m!5719427 () Bool)

(assert (=> bm!333163 m!5719427))

(declare-fun m!5719429 () Bool)

(assert (=> bm!333161 m!5719429))

(declare-fun m!5719431 () Bool)

(assert (=> d!1519761 m!5719431))

(declare-fun m!5719433 () Bool)

(assert (=> d!1519761 m!5719433))

(declare-fun m!5719435 () Bool)

(assert (=> b!4753160 m!5719435))

(declare-fun m!5719437 () Bool)

(assert (=> b!4753162 m!5719437))

(declare-fun m!5719439 () Bool)

(assert (=> b!4753162 m!5719439))

(declare-fun m!5719441 () Bool)

(assert (=> b!4753162 m!5719441))

(assert (=> b!4753162 m!5719441))

(declare-fun m!5719443 () Bool)

(assert (=> b!4753162 m!5719443))

(declare-fun m!5719445 () Bool)

(assert (=> b!4753162 m!5719445))

(declare-fun m!5719447 () Bool)

(assert (=> b!4753162 m!5719447))

(declare-fun m!5719449 () Bool)

(assert (=> b!4753162 m!5719449))

(assert (=> b!4753162 m!5719437))

(declare-fun m!5719451 () Bool)

(assert (=> b!4753162 m!5719451))

(declare-fun m!5719453 () Bool)

(assert (=> b!4753162 m!5719453))

(declare-fun m!5719455 () Bool)

(assert (=> b!4753162 m!5719455))

(assert (=> b!4753162 m!5719443))

(declare-fun m!5719457 () Bool)

(assert (=> b!4753162 m!5719457))

(declare-fun m!5719459 () Bool)

(assert (=> bm!333162 m!5719459))

(declare-fun m!5719461 () Bool)

(assert (=> b!4753158 m!5719461))

(assert (=> b!4753050 d!1519761))

(declare-fun d!1519767 () Bool)

(assert (=> d!1519767 (= (eq!1227 lt!1918093 lt!1918080) (= (content!9537 (toList!6126 lt!1918093)) (content!9537 (toList!6126 lt!1918080))))))

(declare-fun bs!1145083 () Bool)

(assert (= bs!1145083 d!1519767))

(declare-fun m!5719465 () Bool)

(assert (=> bs!1145083 m!5719465))

(declare-fun m!5719467 () Bool)

(assert (=> bs!1145083 m!5719467))

(assert (=> b!4753050 d!1519767))

(declare-fun d!1519771 () Bool)

(assert (=> d!1519771 (= (eq!1227 lt!1918083 lt!1918089) (= (content!9537 (toList!6126 lt!1918083)) (content!9537 (toList!6126 lt!1918089))))))

(declare-fun bs!1145085 () Bool)

(assert (= bs!1145085 d!1519771))

(assert (=> bs!1145085 m!5719203))

(declare-fun m!5719473 () Bool)

(assert (=> bs!1145085 m!5719473))

(assert (=> b!4753050 d!1519771))

(declare-fun bs!1145086 () Bool)

(declare-fun b!4753172 () Bool)

(assert (= bs!1145086 (and b!4753172 d!1519691)))

(declare-fun lambda!222517 () Int)

(assert (=> bs!1145086 (= (= lt!1918081 lt!1918294) (= lambda!222517 lambda!222492))))

(declare-fun bs!1145087 () Bool)

(assert (= bs!1145087 (and b!4753172 b!4753114)))

(assert (=> bs!1145087 (= (= lt!1918081 lt!1918310) (= lambda!222517 lambda!222491))))

(declare-fun bs!1145088 () Bool)

(assert (= bs!1145088 (and b!4753172 b!4753141)))

(assert (=> bs!1145088 (= (= lt!1918081 lt!1918396) (= lambda!222517 lambda!222503))))

(declare-fun bs!1145089 () Bool)

(assert (= bs!1145089 (and b!4753172 b!4753113)))

(assert (=> bs!1145089 (= (= lt!1918081 lt!1918094) (= lambda!222517 lambda!222488))))

(declare-fun bs!1145090 () Bool)

(assert (= bs!1145090 (and b!4753172 b!4753148)))

(assert (=> bs!1145090 (= (= lt!1918081 lt!1918088) (= lambda!222517 lambda!222506))))

(declare-fun bs!1145091 () Bool)

(assert (= bs!1145091 (and b!4753172 b!4753147)))

(assert (=> bs!1145091 (= (= lt!1918081 lt!1918088) (= lambda!222517 lambda!222505))))

(assert (=> bs!1145088 (= (= lt!1918081 acc!1214) (= lambda!222517 lambda!222502))))

(declare-fun bs!1145092 () Bool)

(assert (= bs!1145092 (and b!4753172 b!4753162)))

(assert (=> bs!1145092 (= lambda!222517 lambda!222513)))

(assert (=> bs!1145092 (= (= lt!1918081 lt!1918474) (= lambda!222517 lambda!222514))))

(declare-fun bs!1145093 () Bool)

(assert (= bs!1145093 (and b!4753172 d!1519751)))

(assert (=> bs!1145093 (= (= lt!1918081 lt!1918405) (= lambda!222517 lambda!222509))))

(declare-fun bs!1145094 () Bool)

(assert (= bs!1145094 (and b!4753172 b!4753140)))

(assert (=> bs!1145094 (= (= lt!1918081 acc!1214) (= lambda!222517 lambda!222501))))

(declare-fun bs!1145095 () Bool)

(assert (= bs!1145095 (and b!4753172 b!4753161)))

(assert (=> bs!1145095 (= lambda!222517 lambda!222512)))

(assert (=> bs!1145090 (= (= lt!1918081 lt!1918421) (= lambda!222517 lambda!222507))))

(declare-fun bs!1145096 () Bool)

(assert (= bs!1145096 (and b!4753172 d!1519745)))

(assert (=> bs!1145096 (= (= lt!1918081 lt!1918380) (= lambda!222517 lambda!222504))))

(declare-fun bs!1145097 () Bool)

(assert (= bs!1145097 (and b!4753172 d!1519761)))

(assert (=> bs!1145097 (= (= lt!1918081 lt!1918458) (= lambda!222517 lambda!222516))))

(assert (=> bs!1145087 (= (= lt!1918081 lt!1918094) (= lambda!222517 lambda!222490))))

(assert (=> b!4753172 true))

(declare-fun bs!1145098 () Bool)

(declare-fun b!4753173 () Bool)

(assert (= bs!1145098 (and b!4753173 b!4753172)))

(declare-fun lambda!222518 () Int)

(assert (=> bs!1145098 (= lambda!222518 lambda!222517)))

(declare-fun bs!1145099 () Bool)

(assert (= bs!1145099 (and b!4753173 d!1519691)))

(assert (=> bs!1145099 (= (= lt!1918081 lt!1918294) (= lambda!222518 lambda!222492))))

(declare-fun bs!1145100 () Bool)

(assert (= bs!1145100 (and b!4753173 b!4753114)))

(assert (=> bs!1145100 (= (= lt!1918081 lt!1918310) (= lambda!222518 lambda!222491))))

(declare-fun bs!1145101 () Bool)

(assert (= bs!1145101 (and b!4753173 b!4753141)))

(assert (=> bs!1145101 (= (= lt!1918081 lt!1918396) (= lambda!222518 lambda!222503))))

(declare-fun bs!1145102 () Bool)

(assert (= bs!1145102 (and b!4753173 b!4753113)))

(assert (=> bs!1145102 (= (= lt!1918081 lt!1918094) (= lambda!222518 lambda!222488))))

(declare-fun bs!1145103 () Bool)

(assert (= bs!1145103 (and b!4753173 b!4753148)))

(assert (=> bs!1145103 (= (= lt!1918081 lt!1918088) (= lambda!222518 lambda!222506))))

(declare-fun bs!1145104 () Bool)

(assert (= bs!1145104 (and b!4753173 b!4753147)))

(assert (=> bs!1145104 (= (= lt!1918081 lt!1918088) (= lambda!222518 lambda!222505))))

(assert (=> bs!1145101 (= (= lt!1918081 acc!1214) (= lambda!222518 lambda!222502))))

(declare-fun bs!1145105 () Bool)

(assert (= bs!1145105 (and b!4753173 b!4753162)))

(assert (=> bs!1145105 (= lambda!222518 lambda!222513)))

(assert (=> bs!1145105 (= (= lt!1918081 lt!1918474) (= lambda!222518 lambda!222514))))

(declare-fun bs!1145106 () Bool)

(assert (= bs!1145106 (and b!4753173 d!1519751)))

(assert (=> bs!1145106 (= (= lt!1918081 lt!1918405) (= lambda!222518 lambda!222509))))

(declare-fun bs!1145107 () Bool)

(assert (= bs!1145107 (and b!4753173 b!4753140)))

(assert (=> bs!1145107 (= (= lt!1918081 acc!1214) (= lambda!222518 lambda!222501))))

(declare-fun bs!1145108 () Bool)

(assert (= bs!1145108 (and b!4753173 b!4753161)))

(assert (=> bs!1145108 (= lambda!222518 lambda!222512)))

(assert (=> bs!1145103 (= (= lt!1918081 lt!1918421) (= lambda!222518 lambda!222507))))

(declare-fun bs!1145109 () Bool)

(assert (= bs!1145109 (and b!4753173 d!1519745)))

(assert (=> bs!1145109 (= (= lt!1918081 lt!1918380) (= lambda!222518 lambda!222504))))

(declare-fun bs!1145110 () Bool)

(assert (= bs!1145110 (and b!4753173 d!1519761)))

(assert (=> bs!1145110 (= (= lt!1918081 lt!1918458) (= lambda!222518 lambda!222516))))

(assert (=> bs!1145100 (= (= lt!1918081 lt!1918094) (= lambda!222518 lambda!222490))))

(assert (=> b!4753173 true))

(declare-fun lambda!222519 () Int)

(declare-fun lt!1918495 () ListMap!5561)

(assert (=> bs!1145098 (= (= lt!1918495 lt!1918081) (= lambda!222519 lambda!222517))))

(assert (=> bs!1145099 (= (= lt!1918495 lt!1918294) (= lambda!222519 lambda!222492))))

(assert (=> bs!1145100 (= (= lt!1918495 lt!1918310) (= lambda!222519 lambda!222491))))

(assert (=> bs!1145101 (= (= lt!1918495 lt!1918396) (= lambda!222519 lambda!222503))))

(assert (=> bs!1145102 (= (= lt!1918495 lt!1918094) (= lambda!222519 lambda!222488))))

(assert (=> b!4753173 (= (= lt!1918495 lt!1918081) (= lambda!222519 lambda!222518))))

(assert (=> bs!1145103 (= (= lt!1918495 lt!1918088) (= lambda!222519 lambda!222506))))

(assert (=> bs!1145104 (= (= lt!1918495 lt!1918088) (= lambda!222519 lambda!222505))))

(assert (=> bs!1145101 (= (= lt!1918495 acc!1214) (= lambda!222519 lambda!222502))))

(assert (=> bs!1145105 (= (= lt!1918495 lt!1918081) (= lambda!222519 lambda!222513))))

(assert (=> bs!1145105 (= (= lt!1918495 lt!1918474) (= lambda!222519 lambda!222514))))

(assert (=> bs!1145106 (= (= lt!1918495 lt!1918405) (= lambda!222519 lambda!222509))))

(assert (=> bs!1145107 (= (= lt!1918495 acc!1214) (= lambda!222519 lambda!222501))))

(assert (=> bs!1145108 (= (= lt!1918495 lt!1918081) (= lambda!222519 lambda!222512))))

(assert (=> bs!1145103 (= (= lt!1918495 lt!1918421) (= lambda!222519 lambda!222507))))

(assert (=> bs!1145109 (= (= lt!1918495 lt!1918380) (= lambda!222519 lambda!222504))))

(assert (=> bs!1145110 (= (= lt!1918495 lt!1918458) (= lambda!222519 lambda!222516))))

(assert (=> bs!1145100 (= (= lt!1918495 lt!1918094) (= lambda!222519 lambda!222490))))

(assert (=> b!4753173 true))

(declare-fun bs!1145111 () Bool)

(declare-fun d!1519773 () Bool)

(assert (= bs!1145111 (and d!1519773 b!4753172)))

(declare-fun lambda!222520 () Int)

(declare-fun lt!1918479 () ListMap!5561)

(assert (=> bs!1145111 (= (= lt!1918479 lt!1918081) (= lambda!222520 lambda!222517))))

(declare-fun bs!1145112 () Bool)

(assert (= bs!1145112 (and d!1519773 b!4753173)))

(assert (=> bs!1145112 (= (= lt!1918479 lt!1918495) (= lambda!222520 lambda!222519))))

(declare-fun bs!1145113 () Bool)

(assert (= bs!1145113 (and d!1519773 d!1519691)))

(assert (=> bs!1145113 (= (= lt!1918479 lt!1918294) (= lambda!222520 lambda!222492))))

(declare-fun bs!1145114 () Bool)

(assert (= bs!1145114 (and d!1519773 b!4753114)))

(assert (=> bs!1145114 (= (= lt!1918479 lt!1918310) (= lambda!222520 lambda!222491))))

(declare-fun bs!1145115 () Bool)

(assert (= bs!1145115 (and d!1519773 b!4753141)))

(assert (=> bs!1145115 (= (= lt!1918479 lt!1918396) (= lambda!222520 lambda!222503))))

(declare-fun bs!1145116 () Bool)

(assert (= bs!1145116 (and d!1519773 b!4753113)))

(assert (=> bs!1145116 (= (= lt!1918479 lt!1918094) (= lambda!222520 lambda!222488))))

(assert (=> bs!1145112 (= (= lt!1918479 lt!1918081) (= lambda!222520 lambda!222518))))

(declare-fun bs!1145117 () Bool)

(assert (= bs!1145117 (and d!1519773 b!4753148)))

(assert (=> bs!1145117 (= (= lt!1918479 lt!1918088) (= lambda!222520 lambda!222506))))

(declare-fun bs!1145118 () Bool)

(assert (= bs!1145118 (and d!1519773 b!4753147)))

(assert (=> bs!1145118 (= (= lt!1918479 lt!1918088) (= lambda!222520 lambda!222505))))

(assert (=> bs!1145115 (= (= lt!1918479 acc!1214) (= lambda!222520 lambda!222502))))

(declare-fun bs!1145119 () Bool)

(assert (= bs!1145119 (and d!1519773 b!4753162)))

(assert (=> bs!1145119 (= (= lt!1918479 lt!1918081) (= lambda!222520 lambda!222513))))

(assert (=> bs!1145119 (= (= lt!1918479 lt!1918474) (= lambda!222520 lambda!222514))))

(declare-fun bs!1145120 () Bool)

(assert (= bs!1145120 (and d!1519773 d!1519751)))

(assert (=> bs!1145120 (= (= lt!1918479 lt!1918405) (= lambda!222520 lambda!222509))))

(declare-fun bs!1145121 () Bool)

(assert (= bs!1145121 (and d!1519773 b!4753140)))

(assert (=> bs!1145121 (= (= lt!1918479 acc!1214) (= lambda!222520 lambda!222501))))

(declare-fun bs!1145122 () Bool)

(assert (= bs!1145122 (and d!1519773 b!4753161)))

(assert (=> bs!1145122 (= (= lt!1918479 lt!1918081) (= lambda!222520 lambda!222512))))

(assert (=> bs!1145117 (= (= lt!1918479 lt!1918421) (= lambda!222520 lambda!222507))))

(declare-fun bs!1145123 () Bool)

(assert (= bs!1145123 (and d!1519773 d!1519745)))

(assert (=> bs!1145123 (= (= lt!1918479 lt!1918380) (= lambda!222520 lambda!222504))))

(declare-fun bs!1145124 () Bool)

(assert (= bs!1145124 (and d!1519773 d!1519761)))

(assert (=> bs!1145124 (= (= lt!1918479 lt!1918458) (= lambda!222520 lambda!222516))))

(assert (=> bs!1145114 (= (= lt!1918479 lt!1918094) (= lambda!222520 lambda!222490))))

(assert (=> d!1519773 true))

(declare-fun bm!333164 () Bool)

(declare-fun call!333169 () Unit!136564)

(assert (=> bm!333164 (= call!333169 (lemmaContainsAllItsOwnKeys!883 lt!1918081))))

(declare-fun c!811539 () Bool)

(declare-fun bm!333165 () Bool)

(declare-fun call!333170 () Bool)

(assert (=> bm!333165 (= call!333170 (forall!11768 (toList!6126 lt!1918081) (ite c!811539 lambda!222517 lambda!222519)))))

(declare-fun b!4753167 () Bool)

(declare-fun e!2965115 () Bool)

(assert (=> b!4753167 (= e!2965115 (invariantList!1600 (toList!6126 lt!1918479)))))

(declare-fun bm!333166 () Bool)

(declare-fun call!333171 () Bool)

(declare-fun lt!1918496 () ListMap!5561)

(assert (=> bm!333166 (= call!333171 (forall!11768 (ite c!811539 (toList!6126 lt!1918081) (toList!6126 lt!1918496)) (ite c!811539 lambda!222517 lambda!222519)))))

(declare-fun b!4753170 () Bool)

(declare-fun e!2965114 () Bool)

(assert (=> b!4753170 (= e!2965114 call!333170)))

(declare-fun e!2965113 () ListMap!5561)

(assert (=> b!4753172 (= e!2965113 lt!1918081)))

(declare-fun lt!1918483 () Unit!136564)

(assert (=> b!4753172 (= lt!1918483 call!333169)))

(assert (=> b!4753172 call!333171))

(declare-fun lt!1918487 () Unit!136564)

(assert (=> b!4753172 (= lt!1918487 lt!1918483)))

(assert (=> b!4753172 call!333170))

(declare-fun lt!1918482 () Unit!136564)

(declare-fun Unit!136665 () Unit!136564)

(assert (=> b!4753172 (= lt!1918482 Unit!136665)))

(assert (=> b!4753173 (= e!2965113 lt!1918495)))

(assert (=> b!4753173 (= lt!1918496 (+!2392 lt!1918081 (h!59495 (t!360562 l!14304))))))

(assert (=> b!4753173 (= lt!1918495 (addToMapMapFromBucket!1582 (t!360562 (t!360562 l!14304)) (+!2392 lt!1918081 (h!59495 (t!360562 l!14304)))))))

(declare-fun lt!1918494 () Unit!136564)

(assert (=> b!4753173 (= lt!1918494 call!333169)))

(assert (=> b!4753173 (forall!11768 (toList!6126 lt!1918081) lambda!222518)))

(declare-fun lt!1918478 () Unit!136564)

(assert (=> b!4753173 (= lt!1918478 lt!1918494)))

(assert (=> b!4753173 call!333171))

(declare-fun lt!1918485 () Unit!136564)

(declare-fun Unit!136666 () Unit!136564)

(assert (=> b!4753173 (= lt!1918485 Unit!136666)))

(assert (=> b!4753173 (forall!11768 (t!360562 (t!360562 l!14304)) lambda!222519)))

(declare-fun lt!1918490 () Unit!136564)

(declare-fun Unit!136667 () Unit!136564)

(assert (=> b!4753173 (= lt!1918490 Unit!136667)))

(declare-fun lt!1918481 () Unit!136564)

(declare-fun Unit!136668 () Unit!136564)

(assert (=> b!4753173 (= lt!1918481 Unit!136668)))

(declare-fun lt!1918491 () Unit!136564)

(assert (=> b!4753173 (= lt!1918491 (forallContained!3794 (toList!6126 lt!1918496) lambda!222519 (h!59495 (t!360562 l!14304))))))

(assert (=> b!4753173 (contains!16524 lt!1918496 (_1!30732 (h!59495 (t!360562 l!14304))))))

(declare-fun lt!1918480 () Unit!136564)

(declare-fun Unit!136669 () Unit!136564)

(assert (=> b!4753173 (= lt!1918480 Unit!136669)))

(assert (=> b!4753173 (contains!16524 lt!1918495 (_1!30732 (h!59495 (t!360562 l!14304))))))

(declare-fun lt!1918489 () Unit!136564)

(declare-fun Unit!136670 () Unit!136564)

(assert (=> b!4753173 (= lt!1918489 Unit!136670)))

(assert (=> b!4753173 (forall!11768 (t!360562 l!14304) lambda!222519)))

(declare-fun lt!1918486 () Unit!136564)

(declare-fun Unit!136671 () Unit!136564)

(assert (=> b!4753173 (= lt!1918486 Unit!136671)))

(assert (=> b!4753173 (forall!11768 (toList!6126 lt!1918496) lambda!222519)))

(declare-fun lt!1918476 () Unit!136564)

(declare-fun Unit!136672 () Unit!136564)

(assert (=> b!4753173 (= lt!1918476 Unit!136672)))

(declare-fun lt!1918477 () Unit!136564)

(declare-fun Unit!136673 () Unit!136564)

(assert (=> b!4753173 (= lt!1918477 Unit!136673)))

(declare-fun lt!1918484 () Unit!136564)

(assert (=> b!4753173 (= lt!1918484 (addForallContainsKeyThenBeforeAdding!882 lt!1918081 lt!1918495 (_1!30732 (h!59495 (t!360562 l!14304))) (_2!30732 (h!59495 (t!360562 l!14304)))))))

(assert (=> b!4753173 (forall!11768 (toList!6126 lt!1918081) lambda!222519)))

(declare-fun lt!1918488 () Unit!136564)

(assert (=> b!4753173 (= lt!1918488 lt!1918484)))

(assert (=> b!4753173 (forall!11768 (toList!6126 lt!1918081) lambda!222519)))

(declare-fun lt!1918493 () Unit!136564)

(declare-fun Unit!136674 () Unit!136564)

(assert (=> b!4753173 (= lt!1918493 Unit!136674)))

(declare-fun res!2015913 () Bool)

(assert (=> b!4753173 (= res!2015913 (forall!11768 (t!360562 l!14304) lambda!222519))))

(assert (=> b!4753173 (=> (not res!2015913) (not e!2965114))))

(assert (=> b!4753173 e!2965114))

(declare-fun lt!1918492 () Unit!136564)

(declare-fun Unit!136675 () Unit!136564)

(assert (=> b!4753173 (= lt!1918492 Unit!136675)))

(declare-fun b!4753171 () Bool)

(declare-fun res!2015915 () Bool)

(assert (=> b!4753171 (=> (not res!2015915) (not e!2965115))))

(assert (=> b!4753171 (= res!2015915 (forall!11768 (toList!6126 lt!1918081) lambda!222520))))

(assert (=> d!1519773 e!2965115))

(declare-fun res!2015914 () Bool)

(assert (=> d!1519773 (=> (not res!2015914) (not e!2965115))))

(assert (=> d!1519773 (= res!2015914 (forall!11768 (t!360562 l!14304) lambda!222520))))

(assert (=> d!1519773 (= lt!1918479 e!2965113)))

(assert (=> d!1519773 (= c!811539 ((_ is Nil!53098) (t!360562 l!14304)))))

(assert (=> d!1519773 (noDuplicateKeys!2158 (t!360562 l!14304))))

(assert (=> d!1519773 (= (addToMapMapFromBucket!1582 (t!360562 l!14304) lt!1918081) lt!1918479)))

(assert (= (and d!1519773 c!811539) b!4753172))

(assert (= (and d!1519773 (not c!811539)) b!4753173))

(assert (= (and b!4753173 res!2015913) b!4753170))

(assert (= (or b!4753172 b!4753173) bm!333164))

(assert (= (or b!4753172 b!4753173) bm!333166))

(assert (= (or b!4753172 b!4753170) bm!333165))

(assert (= (and d!1519773 res!2015914) b!4753171))

(assert (= (and b!4753171 res!2015915) b!4753167))

(declare-fun m!5719475 () Bool)

(assert (=> bm!333166 m!5719475))

(assert (=> bm!333164 m!5719429))

(declare-fun m!5719477 () Bool)

(assert (=> d!1519773 m!5719477))

(assert (=> d!1519773 m!5719351))

(declare-fun m!5719479 () Bool)

(assert (=> b!4753171 m!5719479))

(declare-fun m!5719481 () Bool)

(assert (=> b!4753173 m!5719481))

(declare-fun m!5719483 () Bool)

(assert (=> b!4753173 m!5719483))

(declare-fun m!5719485 () Bool)

(assert (=> b!4753173 m!5719485))

(assert (=> b!4753173 m!5719485))

(declare-fun m!5719487 () Bool)

(assert (=> b!4753173 m!5719487))

(declare-fun m!5719489 () Bool)

(assert (=> b!4753173 m!5719489))

(declare-fun m!5719491 () Bool)

(assert (=> b!4753173 m!5719491))

(declare-fun m!5719493 () Bool)

(assert (=> b!4753173 m!5719493))

(assert (=> b!4753173 m!5719481))

(declare-fun m!5719495 () Bool)

(assert (=> b!4753173 m!5719495))

(declare-fun m!5719497 () Bool)

(assert (=> b!4753173 m!5719497))

(declare-fun m!5719499 () Bool)

(assert (=> b!4753173 m!5719499))

(assert (=> b!4753173 m!5719487))

(declare-fun m!5719501 () Bool)

(assert (=> b!4753173 m!5719501))

(declare-fun m!5719503 () Bool)

(assert (=> bm!333165 m!5719503))

(declare-fun m!5719505 () Bool)

(assert (=> b!4753167 m!5719505))

(assert (=> b!4753050 d!1519773))

(declare-fun d!1519775 () Bool)

(assert (=> d!1519775 (= (eq!1227 lt!1918090 lt!1918095) (= (content!9537 (toList!6126 lt!1918090)) (content!9537 (toList!6126 lt!1918095))))))

(declare-fun bs!1145125 () Bool)

(assert (= bs!1145125 d!1519775))

(assert (=> bs!1145125 m!5719325))

(assert (=> bs!1145125 m!5719207))

(assert (=> b!4753050 d!1519775))

(declare-fun d!1519777 () Bool)

(declare-fun e!2965120 () Bool)

(assert (=> d!1519777 e!2965120))

(declare-fun res!2015916 () Bool)

(assert (=> d!1519777 (=> (not res!2015916) (not e!2965120))))

(declare-fun lt!1918500 () ListMap!5561)

(assert (=> d!1519777 (= res!2015916 (contains!16524 lt!1918500 (_1!30732 (h!59495 l!14304))))))

(declare-fun lt!1918497 () List!53222)

(assert (=> d!1519777 (= lt!1918500 (ListMap!5562 lt!1918497))))

(declare-fun lt!1918499 () Unit!136564)

(declare-fun lt!1918498 () Unit!136564)

(assert (=> d!1519777 (= lt!1918499 lt!1918498)))

(assert (=> d!1519777 (= (getValueByKey!2087 lt!1918497 (_1!30732 (h!59495 l!14304))) (Some!12536 (_2!30732 (h!59495 l!14304))))))

(assert (=> d!1519777 (= lt!1918498 (lemmaContainsTupThenGetReturnValue!1164 lt!1918497 (_1!30732 (h!59495 l!14304)) (_2!30732 (h!59495 l!14304))))))

(assert (=> d!1519777 (= lt!1918497 (insertNoDuplicatedKeys!672 (toList!6126 (+!2392 acc!1214 t!14174)) (_1!30732 (h!59495 l!14304)) (_2!30732 (h!59495 l!14304))))))

(assert (=> d!1519777 (= (+!2392 (+!2392 acc!1214 t!14174) (h!59495 l!14304)) lt!1918500)))

(declare-fun b!4753176 () Bool)

(declare-fun res!2015917 () Bool)

(assert (=> b!4753176 (=> (not res!2015917) (not e!2965120))))

(assert (=> b!4753176 (= res!2015917 (= (getValueByKey!2087 (toList!6126 lt!1918500) (_1!30732 (h!59495 l!14304))) (Some!12536 (_2!30732 (h!59495 l!14304)))))))

(declare-fun b!4753177 () Bool)

(assert (=> b!4753177 (= e!2965120 (contains!16525 (toList!6126 lt!1918500) (h!59495 l!14304)))))

(assert (= (and d!1519777 res!2015916) b!4753176))

(assert (= (and b!4753176 res!2015917) b!4753177))

(declare-fun m!5719507 () Bool)

(assert (=> d!1519777 m!5719507))

(declare-fun m!5719509 () Bool)

(assert (=> d!1519777 m!5719509))

(declare-fun m!5719511 () Bool)

(assert (=> d!1519777 m!5719511))

(declare-fun m!5719513 () Bool)

(assert (=> d!1519777 m!5719513))

(declare-fun m!5719515 () Bool)

(assert (=> b!4753176 m!5719515))

(declare-fun m!5719517 () Bool)

(assert (=> b!4753177 m!5719517))

(assert (=> b!4753050 d!1519777))

(declare-fun d!1519779 () Bool)

(assert (=> d!1519779 (= (eq!1227 lt!1918080 lt!1918093) (= (content!9537 (toList!6126 lt!1918080)) (content!9537 (toList!6126 lt!1918093))))))

(declare-fun bs!1145126 () Bool)

(assert (= bs!1145126 d!1519779))

(assert (=> bs!1145126 m!5719467))

(assert (=> bs!1145126 m!5719465))

(assert (=> b!4753050 d!1519779))

(declare-fun bs!1145127 () Bool)

(declare-fun b!4753181 () Bool)

(assert (= bs!1145127 (and b!4753181 b!4753172)))

(declare-fun lambda!222521 () Int)

(assert (=> bs!1145127 (= (= lt!1918084 lt!1918081) (= lambda!222521 lambda!222517))))

(declare-fun bs!1145128 () Bool)

(assert (= bs!1145128 (and b!4753181 b!4753173)))

(assert (=> bs!1145128 (= (= lt!1918084 lt!1918495) (= lambda!222521 lambda!222519))))

(declare-fun bs!1145129 () Bool)

(assert (= bs!1145129 (and b!4753181 d!1519691)))

(assert (=> bs!1145129 (= (= lt!1918084 lt!1918294) (= lambda!222521 lambda!222492))))

(declare-fun bs!1145130 () Bool)

(assert (= bs!1145130 (and b!4753181 b!4753114)))

(assert (=> bs!1145130 (= (= lt!1918084 lt!1918310) (= lambda!222521 lambda!222491))))

(declare-fun bs!1145131 () Bool)

(assert (= bs!1145131 (and b!4753181 b!4753113)))

(assert (=> bs!1145131 (= (= lt!1918084 lt!1918094) (= lambda!222521 lambda!222488))))

(assert (=> bs!1145128 (= (= lt!1918084 lt!1918081) (= lambda!222521 lambda!222518))))

(declare-fun bs!1145132 () Bool)

(assert (= bs!1145132 (and b!4753181 b!4753148)))

(assert (=> bs!1145132 (= (= lt!1918084 lt!1918088) (= lambda!222521 lambda!222506))))

(declare-fun bs!1145133 () Bool)

(assert (= bs!1145133 (and b!4753181 b!4753147)))

(assert (=> bs!1145133 (= (= lt!1918084 lt!1918088) (= lambda!222521 lambda!222505))))

(declare-fun bs!1145134 () Bool)

(assert (= bs!1145134 (and b!4753181 b!4753141)))

(assert (=> bs!1145134 (= (= lt!1918084 acc!1214) (= lambda!222521 lambda!222502))))

(declare-fun bs!1145135 () Bool)

(assert (= bs!1145135 (and b!4753181 b!4753162)))

(assert (=> bs!1145135 (= (= lt!1918084 lt!1918081) (= lambda!222521 lambda!222513))))

(assert (=> bs!1145135 (= (= lt!1918084 lt!1918474) (= lambda!222521 lambda!222514))))

(declare-fun bs!1145136 () Bool)

(assert (= bs!1145136 (and b!4753181 d!1519751)))

(assert (=> bs!1145136 (= (= lt!1918084 lt!1918405) (= lambda!222521 lambda!222509))))

(declare-fun bs!1145137 () Bool)

(assert (= bs!1145137 (and b!4753181 b!4753140)))

(assert (=> bs!1145137 (= (= lt!1918084 acc!1214) (= lambda!222521 lambda!222501))))

(declare-fun bs!1145138 () Bool)

(assert (= bs!1145138 (and b!4753181 b!4753161)))

(assert (=> bs!1145138 (= (= lt!1918084 lt!1918081) (= lambda!222521 lambda!222512))))

(declare-fun bs!1145139 () Bool)

(assert (= bs!1145139 (and b!4753181 d!1519773)))

(assert (=> bs!1145139 (= (= lt!1918084 lt!1918479) (= lambda!222521 lambda!222520))))

(assert (=> bs!1145134 (= (= lt!1918084 lt!1918396) (= lambda!222521 lambda!222503))))

(assert (=> bs!1145132 (= (= lt!1918084 lt!1918421) (= lambda!222521 lambda!222507))))

(declare-fun bs!1145140 () Bool)

(assert (= bs!1145140 (and b!4753181 d!1519745)))

(assert (=> bs!1145140 (= (= lt!1918084 lt!1918380) (= lambda!222521 lambda!222504))))

(declare-fun bs!1145141 () Bool)

(assert (= bs!1145141 (and b!4753181 d!1519761)))

(assert (=> bs!1145141 (= (= lt!1918084 lt!1918458) (= lambda!222521 lambda!222516))))

(assert (=> bs!1145130 (= (= lt!1918084 lt!1918094) (= lambda!222521 lambda!222490))))

(assert (=> b!4753181 true))

(declare-fun bs!1145142 () Bool)

(declare-fun b!4753182 () Bool)

(assert (= bs!1145142 (and b!4753182 b!4753172)))

(declare-fun lambda!222522 () Int)

(assert (=> bs!1145142 (= (= lt!1918084 lt!1918081) (= lambda!222522 lambda!222517))))

(declare-fun bs!1145143 () Bool)

(assert (= bs!1145143 (and b!4753182 b!4753173)))

(assert (=> bs!1145143 (= (= lt!1918084 lt!1918495) (= lambda!222522 lambda!222519))))

(declare-fun bs!1145144 () Bool)

(assert (= bs!1145144 (and b!4753182 d!1519691)))

(assert (=> bs!1145144 (= (= lt!1918084 lt!1918294) (= lambda!222522 lambda!222492))))

(declare-fun bs!1145145 () Bool)

(assert (= bs!1145145 (and b!4753182 b!4753114)))

(assert (=> bs!1145145 (= (= lt!1918084 lt!1918310) (= lambda!222522 lambda!222491))))

(declare-fun bs!1145146 () Bool)

(assert (= bs!1145146 (and b!4753182 b!4753113)))

(assert (=> bs!1145146 (= (= lt!1918084 lt!1918094) (= lambda!222522 lambda!222488))))

(assert (=> bs!1145143 (= (= lt!1918084 lt!1918081) (= lambda!222522 lambda!222518))))

(declare-fun bs!1145147 () Bool)

(assert (= bs!1145147 (and b!4753182 b!4753147)))

(assert (=> bs!1145147 (= (= lt!1918084 lt!1918088) (= lambda!222522 lambda!222505))))

(declare-fun bs!1145148 () Bool)

(assert (= bs!1145148 (and b!4753182 b!4753141)))

(assert (=> bs!1145148 (= (= lt!1918084 acc!1214) (= lambda!222522 lambda!222502))))

(declare-fun bs!1145149 () Bool)

(assert (= bs!1145149 (and b!4753182 b!4753162)))

(assert (=> bs!1145149 (= (= lt!1918084 lt!1918081) (= lambda!222522 lambda!222513))))

(assert (=> bs!1145149 (= (= lt!1918084 lt!1918474) (= lambda!222522 lambda!222514))))

(declare-fun bs!1145150 () Bool)

(assert (= bs!1145150 (and b!4753182 d!1519751)))

(assert (=> bs!1145150 (= (= lt!1918084 lt!1918405) (= lambda!222522 lambda!222509))))

(declare-fun bs!1145151 () Bool)

(assert (= bs!1145151 (and b!4753182 b!4753140)))

(assert (=> bs!1145151 (= (= lt!1918084 acc!1214) (= lambda!222522 lambda!222501))))

(declare-fun bs!1145152 () Bool)

(assert (= bs!1145152 (and b!4753182 b!4753161)))

(assert (=> bs!1145152 (= (= lt!1918084 lt!1918081) (= lambda!222522 lambda!222512))))

(declare-fun bs!1145153 () Bool)

(assert (= bs!1145153 (and b!4753182 d!1519773)))

(assert (=> bs!1145153 (= (= lt!1918084 lt!1918479) (= lambda!222522 lambda!222520))))

(assert (=> bs!1145148 (= (= lt!1918084 lt!1918396) (= lambda!222522 lambda!222503))))

(declare-fun bs!1145154 () Bool)

(assert (= bs!1145154 (and b!4753182 b!4753148)))

(assert (=> bs!1145154 (= (= lt!1918084 lt!1918421) (= lambda!222522 lambda!222507))))

(declare-fun bs!1145155 () Bool)

(assert (= bs!1145155 (and b!4753182 d!1519745)))

(assert (=> bs!1145155 (= (= lt!1918084 lt!1918380) (= lambda!222522 lambda!222504))))

(assert (=> bs!1145154 (= (= lt!1918084 lt!1918088) (= lambda!222522 lambda!222506))))

(declare-fun bs!1145156 () Bool)

(assert (= bs!1145156 (and b!4753182 b!4753181)))

(assert (=> bs!1145156 (= lambda!222522 lambda!222521)))

(declare-fun bs!1145157 () Bool)

(assert (= bs!1145157 (and b!4753182 d!1519761)))

(assert (=> bs!1145157 (= (= lt!1918084 lt!1918458) (= lambda!222522 lambda!222516))))

(assert (=> bs!1145145 (= (= lt!1918084 lt!1918094) (= lambda!222522 lambda!222490))))

(assert (=> b!4753182 true))

(declare-fun lt!1918520 () ListMap!5561)

(declare-fun lambda!222523 () Int)

(assert (=> bs!1145142 (= (= lt!1918520 lt!1918081) (= lambda!222523 lambda!222517))))

(assert (=> bs!1145143 (= (= lt!1918520 lt!1918495) (= lambda!222523 lambda!222519))))

(assert (=> bs!1145144 (= (= lt!1918520 lt!1918294) (= lambda!222523 lambda!222492))))

(assert (=> bs!1145145 (= (= lt!1918520 lt!1918310) (= lambda!222523 lambda!222491))))

(assert (=> bs!1145146 (= (= lt!1918520 lt!1918094) (= lambda!222523 lambda!222488))))

(assert (=> bs!1145143 (= (= lt!1918520 lt!1918081) (= lambda!222523 lambda!222518))))

(assert (=> bs!1145147 (= (= lt!1918520 lt!1918088) (= lambda!222523 lambda!222505))))

(assert (=> bs!1145148 (= (= lt!1918520 acc!1214) (= lambda!222523 lambda!222502))))

(assert (=> bs!1145149 (= (= lt!1918520 lt!1918081) (= lambda!222523 lambda!222513))))

(assert (=> bs!1145150 (= (= lt!1918520 lt!1918405) (= lambda!222523 lambda!222509))))

(assert (=> bs!1145151 (= (= lt!1918520 acc!1214) (= lambda!222523 lambda!222501))))

(assert (=> bs!1145152 (= (= lt!1918520 lt!1918081) (= lambda!222523 lambda!222512))))

(assert (=> bs!1145153 (= (= lt!1918520 lt!1918479) (= lambda!222523 lambda!222520))))

(assert (=> bs!1145148 (= (= lt!1918520 lt!1918396) (= lambda!222523 lambda!222503))))

(assert (=> bs!1145154 (= (= lt!1918520 lt!1918421) (= lambda!222523 lambda!222507))))

(assert (=> bs!1145155 (= (= lt!1918520 lt!1918380) (= lambda!222523 lambda!222504))))

(assert (=> bs!1145154 (= (= lt!1918520 lt!1918088) (= lambda!222523 lambda!222506))))

(assert (=> bs!1145156 (= (= lt!1918520 lt!1918084) (= lambda!222523 lambda!222521))))

(assert (=> bs!1145149 (= (= lt!1918520 lt!1918474) (= lambda!222523 lambda!222514))))

(assert (=> b!4753182 (= (= lt!1918520 lt!1918084) (= lambda!222523 lambda!222522))))

(assert (=> bs!1145157 (= (= lt!1918520 lt!1918458) (= lambda!222523 lambda!222516))))

(assert (=> bs!1145145 (= (= lt!1918520 lt!1918094) (= lambda!222523 lambda!222490))))

(assert (=> b!4753182 true))

(declare-fun bs!1145158 () Bool)

(declare-fun d!1519781 () Bool)

(assert (= bs!1145158 (and d!1519781 b!4753182)))

(declare-fun lambda!222524 () Int)

(declare-fun lt!1918504 () ListMap!5561)

(assert (=> bs!1145158 (= (= lt!1918504 lt!1918520) (= lambda!222524 lambda!222523))))

(declare-fun bs!1145159 () Bool)

(assert (= bs!1145159 (and d!1519781 b!4753172)))

(assert (=> bs!1145159 (= (= lt!1918504 lt!1918081) (= lambda!222524 lambda!222517))))

(declare-fun bs!1145160 () Bool)

(assert (= bs!1145160 (and d!1519781 b!4753173)))

(assert (=> bs!1145160 (= (= lt!1918504 lt!1918495) (= lambda!222524 lambda!222519))))

(declare-fun bs!1145161 () Bool)

(assert (= bs!1145161 (and d!1519781 d!1519691)))

(assert (=> bs!1145161 (= (= lt!1918504 lt!1918294) (= lambda!222524 lambda!222492))))

(declare-fun bs!1145162 () Bool)

(assert (= bs!1145162 (and d!1519781 b!4753114)))

(assert (=> bs!1145162 (= (= lt!1918504 lt!1918310) (= lambda!222524 lambda!222491))))

(declare-fun bs!1145163 () Bool)

(assert (= bs!1145163 (and d!1519781 b!4753113)))

(assert (=> bs!1145163 (= (= lt!1918504 lt!1918094) (= lambda!222524 lambda!222488))))

(assert (=> bs!1145160 (= (= lt!1918504 lt!1918081) (= lambda!222524 lambda!222518))))

(declare-fun bs!1145164 () Bool)

(assert (= bs!1145164 (and d!1519781 b!4753147)))

(assert (=> bs!1145164 (= (= lt!1918504 lt!1918088) (= lambda!222524 lambda!222505))))

(declare-fun bs!1145165 () Bool)

(assert (= bs!1145165 (and d!1519781 b!4753141)))

(assert (=> bs!1145165 (= (= lt!1918504 acc!1214) (= lambda!222524 lambda!222502))))

(declare-fun bs!1145166 () Bool)

(assert (= bs!1145166 (and d!1519781 b!4753162)))

(assert (=> bs!1145166 (= (= lt!1918504 lt!1918081) (= lambda!222524 lambda!222513))))

(declare-fun bs!1145167 () Bool)

(assert (= bs!1145167 (and d!1519781 d!1519751)))

(assert (=> bs!1145167 (= (= lt!1918504 lt!1918405) (= lambda!222524 lambda!222509))))

(declare-fun bs!1145168 () Bool)

(assert (= bs!1145168 (and d!1519781 b!4753140)))

(assert (=> bs!1145168 (= (= lt!1918504 acc!1214) (= lambda!222524 lambda!222501))))

(declare-fun bs!1145169 () Bool)

(assert (= bs!1145169 (and d!1519781 b!4753161)))

(assert (=> bs!1145169 (= (= lt!1918504 lt!1918081) (= lambda!222524 lambda!222512))))

(declare-fun bs!1145170 () Bool)

(assert (= bs!1145170 (and d!1519781 d!1519773)))

(assert (=> bs!1145170 (= (= lt!1918504 lt!1918479) (= lambda!222524 lambda!222520))))

(assert (=> bs!1145165 (= (= lt!1918504 lt!1918396) (= lambda!222524 lambda!222503))))

(declare-fun bs!1145171 () Bool)

(assert (= bs!1145171 (and d!1519781 b!4753148)))

(assert (=> bs!1145171 (= (= lt!1918504 lt!1918421) (= lambda!222524 lambda!222507))))

(declare-fun bs!1145172 () Bool)

(assert (= bs!1145172 (and d!1519781 d!1519745)))

(assert (=> bs!1145172 (= (= lt!1918504 lt!1918380) (= lambda!222524 lambda!222504))))

(assert (=> bs!1145171 (= (= lt!1918504 lt!1918088) (= lambda!222524 lambda!222506))))

(declare-fun bs!1145173 () Bool)

(assert (= bs!1145173 (and d!1519781 b!4753181)))

(assert (=> bs!1145173 (= (= lt!1918504 lt!1918084) (= lambda!222524 lambda!222521))))

(assert (=> bs!1145166 (= (= lt!1918504 lt!1918474) (= lambda!222524 lambda!222514))))

(assert (=> bs!1145158 (= (= lt!1918504 lt!1918084) (= lambda!222524 lambda!222522))))

(declare-fun bs!1145174 () Bool)

(assert (= bs!1145174 (and d!1519781 d!1519761)))

(assert (=> bs!1145174 (= (= lt!1918504 lt!1918458) (= lambda!222524 lambda!222516))))

(assert (=> bs!1145162 (= (= lt!1918504 lt!1918094) (= lambda!222524 lambda!222490))))

(assert (=> d!1519781 true))

(declare-fun bm!333167 () Bool)

(declare-fun call!333172 () Unit!136564)

(assert (=> bm!333167 (= call!333172 (lemmaContainsAllItsOwnKeys!883 lt!1918084))))

(declare-fun bm!333168 () Bool)

(declare-fun call!333173 () Bool)

(declare-fun c!811540 () Bool)

(assert (=> bm!333168 (= call!333173 (forall!11768 (toList!6126 lt!1918084) (ite c!811540 lambda!222521 lambda!222523)))))

(declare-fun b!4753178 () Bool)

(declare-fun e!2965123 () Bool)

(assert (=> b!4753178 (= e!2965123 (invariantList!1600 (toList!6126 lt!1918504)))))

(declare-fun call!333174 () Bool)

(declare-fun bm!333169 () Bool)

(declare-fun lt!1918521 () ListMap!5561)

(assert (=> bm!333169 (= call!333174 (forall!11768 (ite c!811540 (toList!6126 lt!1918084) (toList!6126 lt!1918521)) (ite c!811540 lambda!222521 lambda!222523)))))

(declare-fun b!4753179 () Bool)

(declare-fun e!2965122 () Bool)

(assert (=> b!4753179 (= e!2965122 call!333173)))

(declare-fun e!2965121 () ListMap!5561)

(assert (=> b!4753181 (= e!2965121 lt!1918084)))

(declare-fun lt!1918508 () Unit!136564)

(assert (=> b!4753181 (= lt!1918508 call!333172)))

(assert (=> b!4753181 call!333174))

(declare-fun lt!1918512 () Unit!136564)

(assert (=> b!4753181 (= lt!1918512 lt!1918508)))

(assert (=> b!4753181 call!333173))

(declare-fun lt!1918507 () Unit!136564)

(declare-fun Unit!136687 () Unit!136564)

(assert (=> b!4753181 (= lt!1918507 Unit!136687)))

(assert (=> b!4753182 (= e!2965121 lt!1918520)))

(assert (=> b!4753182 (= lt!1918521 (+!2392 lt!1918084 (h!59495 (t!360562 l!14304))))))

(assert (=> b!4753182 (= lt!1918520 (addToMapMapFromBucket!1582 (t!360562 (t!360562 l!14304)) (+!2392 lt!1918084 (h!59495 (t!360562 l!14304)))))))

(declare-fun lt!1918519 () Unit!136564)

(assert (=> b!4753182 (= lt!1918519 call!333172)))

(assert (=> b!4753182 (forall!11768 (toList!6126 lt!1918084) lambda!222522)))

(declare-fun lt!1918503 () Unit!136564)

(assert (=> b!4753182 (= lt!1918503 lt!1918519)))

(assert (=> b!4753182 call!333174))

(declare-fun lt!1918510 () Unit!136564)

(declare-fun Unit!136688 () Unit!136564)

(assert (=> b!4753182 (= lt!1918510 Unit!136688)))

(assert (=> b!4753182 (forall!11768 (t!360562 (t!360562 l!14304)) lambda!222523)))

(declare-fun lt!1918515 () Unit!136564)

(declare-fun Unit!136689 () Unit!136564)

(assert (=> b!4753182 (= lt!1918515 Unit!136689)))

(declare-fun lt!1918506 () Unit!136564)

(declare-fun Unit!136690 () Unit!136564)

(assert (=> b!4753182 (= lt!1918506 Unit!136690)))

(declare-fun lt!1918516 () Unit!136564)

(assert (=> b!4753182 (= lt!1918516 (forallContained!3794 (toList!6126 lt!1918521) lambda!222523 (h!59495 (t!360562 l!14304))))))

(assert (=> b!4753182 (contains!16524 lt!1918521 (_1!30732 (h!59495 (t!360562 l!14304))))))

(declare-fun lt!1918505 () Unit!136564)

(declare-fun Unit!136691 () Unit!136564)

(assert (=> b!4753182 (= lt!1918505 Unit!136691)))

(assert (=> b!4753182 (contains!16524 lt!1918520 (_1!30732 (h!59495 (t!360562 l!14304))))))

(declare-fun lt!1918514 () Unit!136564)

(declare-fun Unit!136692 () Unit!136564)

(assert (=> b!4753182 (= lt!1918514 Unit!136692)))

(assert (=> b!4753182 (forall!11768 (t!360562 l!14304) lambda!222523)))

(declare-fun lt!1918511 () Unit!136564)

(declare-fun Unit!136693 () Unit!136564)

(assert (=> b!4753182 (= lt!1918511 Unit!136693)))

(assert (=> b!4753182 (forall!11768 (toList!6126 lt!1918521) lambda!222523)))

(declare-fun lt!1918501 () Unit!136564)

(declare-fun Unit!136694 () Unit!136564)

(assert (=> b!4753182 (= lt!1918501 Unit!136694)))

(declare-fun lt!1918502 () Unit!136564)

(declare-fun Unit!136695 () Unit!136564)

(assert (=> b!4753182 (= lt!1918502 Unit!136695)))

(declare-fun lt!1918509 () Unit!136564)

(assert (=> b!4753182 (= lt!1918509 (addForallContainsKeyThenBeforeAdding!882 lt!1918084 lt!1918520 (_1!30732 (h!59495 (t!360562 l!14304))) (_2!30732 (h!59495 (t!360562 l!14304)))))))

(assert (=> b!4753182 (forall!11768 (toList!6126 lt!1918084) lambda!222523)))

(declare-fun lt!1918513 () Unit!136564)

(assert (=> b!4753182 (= lt!1918513 lt!1918509)))

(assert (=> b!4753182 (forall!11768 (toList!6126 lt!1918084) lambda!222523)))

(declare-fun lt!1918518 () Unit!136564)

(declare-fun Unit!136696 () Unit!136564)

(assert (=> b!4753182 (= lt!1918518 Unit!136696)))

(declare-fun res!2015918 () Bool)

(assert (=> b!4753182 (= res!2015918 (forall!11768 (t!360562 l!14304) lambda!222523))))

(assert (=> b!4753182 (=> (not res!2015918) (not e!2965122))))

(assert (=> b!4753182 e!2965122))

(declare-fun lt!1918517 () Unit!136564)

(declare-fun Unit!136697 () Unit!136564)

(assert (=> b!4753182 (= lt!1918517 Unit!136697)))

(declare-fun b!4753180 () Bool)

(declare-fun res!2015920 () Bool)

(assert (=> b!4753180 (=> (not res!2015920) (not e!2965123))))

(assert (=> b!4753180 (= res!2015920 (forall!11768 (toList!6126 lt!1918084) lambda!222524))))

(assert (=> d!1519781 e!2965123))

(declare-fun res!2015919 () Bool)

(assert (=> d!1519781 (=> (not res!2015919) (not e!2965123))))

(assert (=> d!1519781 (= res!2015919 (forall!11768 (t!360562 l!14304) lambda!222524))))

(assert (=> d!1519781 (= lt!1918504 e!2965121)))

(assert (=> d!1519781 (= c!811540 ((_ is Nil!53098) (t!360562 l!14304)))))

(assert (=> d!1519781 (noDuplicateKeys!2158 (t!360562 l!14304))))

(assert (=> d!1519781 (= (addToMapMapFromBucket!1582 (t!360562 l!14304) lt!1918084) lt!1918504)))

(assert (= (and d!1519781 c!811540) b!4753181))

(assert (= (and d!1519781 (not c!811540)) b!4753182))

(assert (= (and b!4753182 res!2015918) b!4753179))

(assert (= (or b!4753181 b!4753182) bm!333167))

(assert (= (or b!4753181 b!4753182) bm!333169))

(assert (= (or b!4753181 b!4753179) bm!333168))

(assert (= (and d!1519781 res!2015919) b!4753180))

(assert (= (and b!4753180 res!2015920) b!4753178))

(declare-fun m!5719519 () Bool)

(assert (=> bm!333169 m!5719519))

(declare-fun m!5719521 () Bool)

(assert (=> bm!333167 m!5719521))

(declare-fun m!5719523 () Bool)

(assert (=> d!1519781 m!5719523))

(assert (=> d!1519781 m!5719351))

(declare-fun m!5719525 () Bool)

(assert (=> b!4753180 m!5719525))

(declare-fun m!5719527 () Bool)

(assert (=> b!4753182 m!5719527))

(declare-fun m!5719529 () Bool)

(assert (=> b!4753182 m!5719529))

(declare-fun m!5719531 () Bool)

(assert (=> b!4753182 m!5719531))

(assert (=> b!4753182 m!5719531))

(declare-fun m!5719533 () Bool)

(assert (=> b!4753182 m!5719533))

(declare-fun m!5719535 () Bool)

(assert (=> b!4753182 m!5719535))

(declare-fun m!5719537 () Bool)

(assert (=> b!4753182 m!5719537))

(declare-fun m!5719539 () Bool)

(assert (=> b!4753182 m!5719539))

(assert (=> b!4753182 m!5719527))

(declare-fun m!5719541 () Bool)

(assert (=> b!4753182 m!5719541))

(declare-fun m!5719543 () Bool)

(assert (=> b!4753182 m!5719543))

(declare-fun m!5719545 () Bool)

(assert (=> b!4753182 m!5719545))

(assert (=> b!4753182 m!5719533))

(declare-fun m!5719547 () Bool)

(assert (=> b!4753182 m!5719547))

(declare-fun m!5719549 () Bool)

(assert (=> bm!333168 m!5719549))

(declare-fun m!5719551 () Bool)

(assert (=> b!4753178 m!5719551))

(assert (=> b!4753050 d!1519781))

(declare-fun d!1519783 () Bool)

(assert (=> d!1519783 (eq!1227 (addToMapMapFromBucket!1582 (Cons!53098 t!14174 (t!360562 l!14304)) lt!1918081) (+!2392 (addToMapMapFromBucket!1582 (t!360562 l!14304) lt!1918081) t!14174))))

(declare-fun lt!1918524 () Unit!136564)

(declare-fun choose!33843 (tuple2!54876 List!53222 ListMap!5561) Unit!136564)

(assert (=> d!1519783 (= lt!1918524 (choose!33843 t!14174 (t!360562 l!14304) lt!1918081))))

(assert (=> d!1519783 (noDuplicateKeys!2158 (t!360562 l!14304))))

(assert (=> d!1519783 (= (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!472 t!14174 (t!360562 l!14304) lt!1918081) lt!1918524)))

(declare-fun bs!1145175 () Bool)

(assert (= bs!1145175 d!1519783))

(assert (=> bs!1145175 m!5718869))

(declare-fun m!5719553 () Bool)

(assert (=> bs!1145175 m!5719553))

(assert (=> bs!1145175 m!5719351))

(assert (=> bs!1145175 m!5718863))

(assert (=> bs!1145175 m!5718869))

(assert (=> bs!1145175 m!5718863))

(assert (=> bs!1145175 m!5719553))

(declare-fun m!5719555 () Bool)

(assert (=> bs!1145175 m!5719555))

(declare-fun m!5719557 () Bool)

(assert (=> bs!1145175 m!5719557))

(assert (=> b!4753050 d!1519783))

(declare-fun d!1519785 () Bool)

(assert (=> d!1519785 (eq!1227 (+!2392 (+!2392 acc!1214 (tuple2!54877 (_1!30732 t!14174) (_2!30732 t!14174))) (tuple2!54877 (_1!30732 (h!59495 l!14304)) (_2!30732 (h!59495 l!14304)))) (+!2392 (+!2392 acc!1214 (tuple2!54877 (_1!30732 (h!59495 l!14304)) (_2!30732 (h!59495 l!14304)))) (tuple2!54877 (_1!30732 t!14174) (_2!30732 t!14174))))))

(declare-fun lt!1918525 () Unit!136564)

(assert (=> d!1519785 (= lt!1918525 (choose!33841 acc!1214 (_1!30732 t!14174) (_2!30732 t!14174) (_1!30732 (h!59495 l!14304)) (_2!30732 (h!59495 l!14304))))))

(assert (=> d!1519785 (not (= (_1!30732 t!14174) (_1!30732 (h!59495 l!14304))))))

(assert (=> d!1519785 (= (addCommutativeForDiffKeys!28 acc!1214 (_1!30732 t!14174) (_2!30732 t!14174) (_1!30732 (h!59495 l!14304)) (_2!30732 (h!59495 l!14304))) lt!1918525)))

(declare-fun bs!1145176 () Bool)

(assert (= bs!1145176 d!1519785))

(declare-fun m!5719559 () Bool)

(assert (=> bs!1145176 m!5719559))

(assert (=> bs!1145176 m!5719277))

(assert (=> bs!1145176 m!5719273))

(assert (=> bs!1145176 m!5719273))

(assert (=> bs!1145176 m!5719271))

(declare-fun m!5719561 () Bool)

(assert (=> bs!1145176 m!5719561))

(assert (=> bs!1145176 m!5719269))

(assert (=> bs!1145176 m!5719277))

(assert (=> bs!1145176 m!5719269))

(assert (=> bs!1145176 m!5719271))

(assert (=> b!4753050 d!1519785))

(declare-fun d!1519787 () Bool)

(declare-fun e!2965124 () Bool)

(assert (=> d!1519787 e!2965124))

(declare-fun res!2015921 () Bool)

(assert (=> d!1519787 (=> (not res!2015921) (not e!2965124))))

(declare-fun lt!1918529 () ListMap!5561)

(assert (=> d!1519787 (= res!2015921 (contains!16524 lt!1918529 (_1!30732 t!14174)))))

(declare-fun lt!1918526 () List!53222)

(assert (=> d!1519787 (= lt!1918529 (ListMap!5562 lt!1918526))))

(declare-fun lt!1918528 () Unit!136564)

(declare-fun lt!1918527 () Unit!136564)

(assert (=> d!1519787 (= lt!1918528 lt!1918527)))

(assert (=> d!1519787 (= (getValueByKey!2087 lt!1918526 (_1!30732 t!14174)) (Some!12536 (_2!30732 t!14174)))))

(assert (=> d!1519787 (= lt!1918527 (lemmaContainsTupThenGetReturnValue!1164 lt!1918526 (_1!30732 t!14174) (_2!30732 t!14174)))))

(assert (=> d!1519787 (= lt!1918526 (insertNoDuplicatedKeys!672 (toList!6126 acc!1214) (_1!30732 t!14174) (_2!30732 t!14174)))))

(assert (=> d!1519787 (= (+!2392 acc!1214 t!14174) lt!1918529)))

(declare-fun b!4753183 () Bool)

(declare-fun res!2015922 () Bool)

(assert (=> b!4753183 (=> (not res!2015922) (not e!2965124))))

(assert (=> b!4753183 (= res!2015922 (= (getValueByKey!2087 (toList!6126 lt!1918529) (_1!30732 t!14174)) (Some!12536 (_2!30732 t!14174))))))

(declare-fun b!4753184 () Bool)

(assert (=> b!4753184 (= e!2965124 (contains!16525 (toList!6126 lt!1918529) t!14174))))

(assert (= (and d!1519787 res!2015921) b!4753183))

(assert (= (and b!4753183 res!2015922) b!4753184))

(declare-fun m!5719563 () Bool)

(assert (=> d!1519787 m!5719563))

(declare-fun m!5719565 () Bool)

(assert (=> d!1519787 m!5719565))

(declare-fun m!5719567 () Bool)

(assert (=> d!1519787 m!5719567))

(declare-fun m!5719569 () Bool)

(assert (=> d!1519787 m!5719569))

(declare-fun m!5719571 () Bool)

(assert (=> b!4753183 m!5719571))

(declare-fun m!5719573 () Bool)

(assert (=> b!4753184 m!5719573))

(assert (=> b!4753050 d!1519787))

(declare-fun d!1519789 () Bool)

(declare-fun e!2965125 () Bool)

(assert (=> d!1519789 e!2965125))

(declare-fun res!2015923 () Bool)

(assert (=> d!1519789 (=> (not res!2015923) (not e!2965125))))

(declare-fun lt!1918533 () ListMap!5561)

(assert (=> d!1519789 (= res!2015923 (contains!16524 lt!1918533 (_1!30732 t!14174)))))

(declare-fun lt!1918530 () List!53222)

(assert (=> d!1519789 (= lt!1918533 (ListMap!5562 lt!1918530))))

(declare-fun lt!1918532 () Unit!136564)

(declare-fun lt!1918531 () Unit!136564)

(assert (=> d!1519789 (= lt!1918532 lt!1918531)))

(assert (=> d!1519789 (= (getValueByKey!2087 lt!1918530 (_1!30732 t!14174)) (Some!12536 (_2!30732 t!14174)))))

(assert (=> d!1519789 (= lt!1918531 (lemmaContainsTupThenGetReturnValue!1164 lt!1918530 (_1!30732 t!14174) (_2!30732 t!14174)))))

(assert (=> d!1519789 (= lt!1918530 (insertNoDuplicatedKeys!672 (toList!6126 lt!1918081) (_1!30732 t!14174) (_2!30732 t!14174)))))

(assert (=> d!1519789 (= (+!2392 lt!1918081 t!14174) lt!1918533)))

(declare-fun b!4753185 () Bool)

(declare-fun res!2015924 () Bool)

(assert (=> b!4753185 (=> (not res!2015924) (not e!2965125))))

(assert (=> b!4753185 (= res!2015924 (= (getValueByKey!2087 (toList!6126 lt!1918533) (_1!30732 t!14174)) (Some!12536 (_2!30732 t!14174))))))

(declare-fun b!4753186 () Bool)

(assert (=> b!4753186 (= e!2965125 (contains!16525 (toList!6126 lt!1918533) t!14174))))

(assert (= (and d!1519789 res!2015923) b!4753185))

(assert (= (and b!4753185 res!2015924) b!4753186))

(declare-fun m!5719575 () Bool)

(assert (=> d!1519789 m!5719575))

(declare-fun m!5719577 () Bool)

(assert (=> d!1519789 m!5719577))

(declare-fun m!5719579 () Bool)

(assert (=> d!1519789 m!5719579))

(declare-fun m!5719581 () Bool)

(assert (=> d!1519789 m!5719581))

(declare-fun m!5719583 () Bool)

(assert (=> b!4753185 m!5719583))

(declare-fun m!5719585 () Bool)

(assert (=> b!4753186 m!5719585))

(assert (=> b!4753050 d!1519789))

(declare-fun d!1519791 () Bool)

(assert (=> d!1519791 (eq!1227 (addToMapMapFromBucket!1582 (t!360562 l!14304) lt!1918084) (addToMapMapFromBucket!1582 (t!360562 l!14304) lt!1918088))))

(declare-fun lt!1918536 () Unit!136564)

(declare-fun choose!33844 (ListMap!5561 ListMap!5561 List!53222) Unit!136564)

(assert (=> d!1519791 (= lt!1918536 (choose!33844 lt!1918084 lt!1918088 (t!360562 l!14304)))))

(assert (=> d!1519791 (noDuplicateKeys!2158 (t!360562 l!14304))))

(assert (=> d!1519791 (= (lemmaAddToMapFromBucketPreservesEquivalence!118 lt!1918084 lt!1918088 (t!360562 l!14304)) lt!1918536)))

(declare-fun bs!1145177 () Bool)

(assert (= bs!1145177 d!1519791))

(declare-fun m!5719587 () Bool)

(assert (=> bs!1145177 m!5719587))

(assert (=> bs!1145177 m!5719351))

(assert (=> bs!1145177 m!5718895))

(assert (=> bs!1145177 m!5718871))

(declare-fun m!5719589 () Bool)

(assert (=> bs!1145177 m!5719589))

(assert (=> bs!1145177 m!5718895))

(assert (=> bs!1145177 m!5718871))

(assert (=> b!4753050 d!1519791))

(declare-fun d!1519793 () Bool)

(assert (=> d!1519793 (= (eq!1227 lt!1918095 lt!1918089) (= (content!9537 (toList!6126 lt!1918095)) (content!9537 (toList!6126 lt!1918089))))))

(declare-fun bs!1145178 () Bool)

(assert (= bs!1145178 d!1519793))

(assert (=> bs!1145178 m!5719207))

(assert (=> bs!1145178 m!5719473))

(assert (=> b!4753050 d!1519793))

(declare-fun d!1519795 () Bool)

(declare-fun res!2015929 () Bool)

(declare-fun e!2965130 () Bool)

(assert (=> d!1519795 (=> res!2015929 e!2965130)))

(assert (=> d!1519795 (= res!2015929 (not ((_ is Cons!53098) lt!1918092)))))

(assert (=> d!1519795 (= (noDuplicateKeys!2158 lt!1918092) e!2965130)))

(declare-fun b!4753191 () Bool)

(declare-fun e!2965131 () Bool)

(assert (=> b!4753191 (= e!2965130 e!2965131)))

(declare-fun res!2015930 () Bool)

(assert (=> b!4753191 (=> (not res!2015930) (not e!2965131))))

(declare-fun containsKey!3565 (List!53222 K!14545) Bool)

(assert (=> b!4753191 (= res!2015930 (not (containsKey!3565 (t!360562 lt!1918092) (_1!30732 (h!59495 lt!1918092)))))))

(declare-fun b!4753192 () Bool)

(assert (=> b!4753192 (= e!2965131 (noDuplicateKeys!2158 (t!360562 lt!1918092)))))

(assert (= (and d!1519795 (not res!2015929)) b!4753191))

(assert (= (and b!4753191 res!2015930) b!4753192))

(declare-fun m!5719591 () Bool)

(assert (=> b!4753191 m!5719591))

(declare-fun m!5719593 () Bool)

(assert (=> b!4753192 m!5719593))

(assert (=> b!4753045 d!1519795))

(declare-fun d!1519797 () Bool)

(declare-fun res!2015931 () Bool)

(declare-fun e!2965132 () Bool)

(assert (=> d!1519797 (=> res!2015931 e!2965132)))

(assert (=> d!1519797 (= res!2015931 (not ((_ is Cons!53098) l!14304)))))

(assert (=> d!1519797 (= (noDuplicateKeys!2158 l!14304) e!2965132)))

(declare-fun b!4753193 () Bool)

(declare-fun e!2965133 () Bool)

(assert (=> b!4753193 (= e!2965132 e!2965133)))

(declare-fun res!2015932 () Bool)

(assert (=> b!4753193 (=> (not res!2015932) (not e!2965133))))

(assert (=> b!4753193 (= res!2015932 (not (containsKey!3565 (t!360562 l!14304) (_1!30732 (h!59495 l!14304)))))))

(declare-fun b!4753194 () Bool)

(assert (=> b!4753194 (= e!2965133 (noDuplicateKeys!2158 (t!360562 l!14304)))))

(assert (= (and d!1519797 (not res!2015931)) b!4753193))

(assert (= (and b!4753193 res!2015932) b!4753194))

(declare-fun m!5719595 () Bool)

(assert (=> b!4753193 m!5719595))

(assert (=> b!4753194 m!5719351))

(assert (=> start!485648 d!1519797))

(declare-fun d!1519799 () Bool)

(assert (=> d!1519799 (= (inv!68415 acc!1214) (invariantList!1600 (toList!6126 acc!1214)))))

(declare-fun bs!1145179 () Bool)

(assert (= bs!1145179 d!1519799))

(declare-fun m!5719597 () Bool)

(assert (=> bs!1145179 m!5719597))

(assert (=> start!485648 d!1519799))

(declare-fun d!1519801 () Bool)

(assert (=> d!1519801 (= (eq!1227 lt!1918085 (addToMapMapFromBucket!1582 l!14304 acc!1214)) (= (content!9537 (toList!6126 lt!1918085)) (content!9537 (toList!6126 (addToMapMapFromBucket!1582 l!14304 acc!1214)))))))

(declare-fun bs!1145180 () Bool)

(assert (= bs!1145180 d!1519801))

(declare-fun m!5719599 () Bool)

(assert (=> bs!1145180 m!5719599))

(declare-fun m!5719601 () Bool)

(assert (=> bs!1145180 m!5719601))

(assert (=> b!4753048 d!1519801))

(declare-fun bs!1145181 () Bool)

(declare-fun b!4753198 () Bool)

(assert (= bs!1145181 (and b!4753198 b!4753182)))

(declare-fun lambda!222525 () Int)

(assert (=> bs!1145181 (= (= acc!1214 lt!1918520) (= lambda!222525 lambda!222523))))

(declare-fun bs!1145182 () Bool)

(assert (= bs!1145182 (and b!4753198 b!4753172)))

(assert (=> bs!1145182 (= (= acc!1214 lt!1918081) (= lambda!222525 lambda!222517))))

(declare-fun bs!1145183 () Bool)

(assert (= bs!1145183 (and b!4753198 b!4753173)))

(assert (=> bs!1145183 (= (= acc!1214 lt!1918495) (= lambda!222525 lambda!222519))))

(declare-fun bs!1145184 () Bool)

(assert (= bs!1145184 (and b!4753198 b!4753114)))

(assert (=> bs!1145184 (= (= acc!1214 lt!1918310) (= lambda!222525 lambda!222491))))

(declare-fun bs!1145185 () Bool)

(assert (= bs!1145185 (and b!4753198 b!4753113)))

(assert (=> bs!1145185 (= (= acc!1214 lt!1918094) (= lambda!222525 lambda!222488))))

(assert (=> bs!1145183 (= (= acc!1214 lt!1918081) (= lambda!222525 lambda!222518))))

(declare-fun bs!1145186 () Bool)

(assert (= bs!1145186 (and b!4753198 b!4753147)))

(assert (=> bs!1145186 (= (= acc!1214 lt!1918088) (= lambda!222525 lambda!222505))))

(declare-fun bs!1145187 () Bool)

(assert (= bs!1145187 (and b!4753198 b!4753141)))

(assert (=> bs!1145187 (= lambda!222525 lambda!222502)))

(declare-fun bs!1145188 () Bool)

(assert (= bs!1145188 (and b!4753198 b!4753162)))

(assert (=> bs!1145188 (= (= acc!1214 lt!1918081) (= lambda!222525 lambda!222513))))

(declare-fun bs!1145189 () Bool)

(assert (= bs!1145189 (and b!4753198 d!1519751)))

(assert (=> bs!1145189 (= (= acc!1214 lt!1918405) (= lambda!222525 lambda!222509))))

(declare-fun bs!1145190 () Bool)

(assert (= bs!1145190 (and b!4753198 b!4753140)))

(assert (=> bs!1145190 (= lambda!222525 lambda!222501)))

(declare-fun bs!1145191 () Bool)

(assert (= bs!1145191 (and b!4753198 b!4753161)))

(assert (=> bs!1145191 (= (= acc!1214 lt!1918081) (= lambda!222525 lambda!222512))))

(declare-fun bs!1145192 () Bool)

(assert (= bs!1145192 (and b!4753198 d!1519691)))

(assert (=> bs!1145192 (= (= acc!1214 lt!1918294) (= lambda!222525 lambda!222492))))

(declare-fun bs!1145193 () Bool)

(assert (= bs!1145193 (and b!4753198 d!1519781)))

(assert (=> bs!1145193 (= (= acc!1214 lt!1918504) (= lambda!222525 lambda!222524))))

(declare-fun bs!1145194 () Bool)

(assert (= bs!1145194 (and b!4753198 d!1519773)))

(assert (=> bs!1145194 (= (= acc!1214 lt!1918479) (= lambda!222525 lambda!222520))))

(assert (=> bs!1145187 (= (= acc!1214 lt!1918396) (= lambda!222525 lambda!222503))))

(declare-fun bs!1145195 () Bool)

(assert (= bs!1145195 (and b!4753198 b!4753148)))

(assert (=> bs!1145195 (= (= acc!1214 lt!1918421) (= lambda!222525 lambda!222507))))

(declare-fun bs!1145196 () Bool)

(assert (= bs!1145196 (and b!4753198 d!1519745)))

(assert (=> bs!1145196 (= (= acc!1214 lt!1918380) (= lambda!222525 lambda!222504))))

(assert (=> bs!1145195 (= (= acc!1214 lt!1918088) (= lambda!222525 lambda!222506))))

(declare-fun bs!1145197 () Bool)

(assert (= bs!1145197 (and b!4753198 b!4753181)))

(assert (=> bs!1145197 (= (= acc!1214 lt!1918084) (= lambda!222525 lambda!222521))))

(assert (=> bs!1145188 (= (= acc!1214 lt!1918474) (= lambda!222525 lambda!222514))))

(assert (=> bs!1145181 (= (= acc!1214 lt!1918084) (= lambda!222525 lambda!222522))))

(declare-fun bs!1145198 () Bool)

(assert (= bs!1145198 (and b!4753198 d!1519761)))

(assert (=> bs!1145198 (= (= acc!1214 lt!1918458) (= lambda!222525 lambda!222516))))

(assert (=> bs!1145184 (= (= acc!1214 lt!1918094) (= lambda!222525 lambda!222490))))

(assert (=> b!4753198 true))

(declare-fun bs!1145199 () Bool)

(declare-fun b!4753199 () Bool)

(assert (= bs!1145199 (and b!4753199 b!4753182)))

(declare-fun lambda!222526 () Int)

(assert (=> bs!1145199 (= (= acc!1214 lt!1918520) (= lambda!222526 lambda!222523))))

(declare-fun bs!1145200 () Bool)

(assert (= bs!1145200 (and b!4753199 b!4753172)))

(assert (=> bs!1145200 (= (= acc!1214 lt!1918081) (= lambda!222526 lambda!222517))))

(declare-fun bs!1145201 () Bool)

(assert (= bs!1145201 (and b!4753199 b!4753173)))

(assert (=> bs!1145201 (= (= acc!1214 lt!1918495) (= lambda!222526 lambda!222519))))

(declare-fun bs!1145202 () Bool)

(assert (= bs!1145202 (and b!4753199 b!4753114)))

(assert (=> bs!1145202 (= (= acc!1214 lt!1918310) (= lambda!222526 lambda!222491))))

(declare-fun bs!1145203 () Bool)

(assert (= bs!1145203 (and b!4753199 b!4753113)))

(assert (=> bs!1145203 (= (= acc!1214 lt!1918094) (= lambda!222526 lambda!222488))))

(assert (=> bs!1145201 (= (= acc!1214 lt!1918081) (= lambda!222526 lambda!222518))))

(declare-fun bs!1145204 () Bool)

(assert (= bs!1145204 (and b!4753199 b!4753147)))

(assert (=> bs!1145204 (= (= acc!1214 lt!1918088) (= lambda!222526 lambda!222505))))

(declare-fun bs!1145205 () Bool)

(assert (= bs!1145205 (and b!4753199 b!4753141)))

(assert (=> bs!1145205 (= lambda!222526 lambda!222502)))

(declare-fun bs!1145206 () Bool)

(assert (= bs!1145206 (and b!4753199 b!4753162)))

(assert (=> bs!1145206 (= (= acc!1214 lt!1918081) (= lambda!222526 lambda!222513))))

(declare-fun bs!1145207 () Bool)

(assert (= bs!1145207 (and b!4753199 d!1519751)))

(assert (=> bs!1145207 (= (= acc!1214 lt!1918405) (= lambda!222526 lambda!222509))))

(declare-fun bs!1145208 () Bool)

(assert (= bs!1145208 (and b!4753199 b!4753140)))

(assert (=> bs!1145208 (= lambda!222526 lambda!222501)))

(declare-fun bs!1145209 () Bool)

(assert (= bs!1145209 (and b!4753199 b!4753161)))

(assert (=> bs!1145209 (= (= acc!1214 lt!1918081) (= lambda!222526 lambda!222512))))

(declare-fun bs!1145210 () Bool)

(assert (= bs!1145210 (and b!4753199 d!1519691)))

(assert (=> bs!1145210 (= (= acc!1214 lt!1918294) (= lambda!222526 lambda!222492))))

(declare-fun bs!1145211 () Bool)

(assert (= bs!1145211 (and b!4753199 d!1519781)))

(assert (=> bs!1145211 (= (= acc!1214 lt!1918504) (= lambda!222526 lambda!222524))))

(declare-fun bs!1145212 () Bool)

(assert (= bs!1145212 (and b!4753199 d!1519773)))

(assert (=> bs!1145212 (= (= acc!1214 lt!1918479) (= lambda!222526 lambda!222520))))

(assert (=> bs!1145205 (= (= acc!1214 lt!1918396) (= lambda!222526 lambda!222503))))

(declare-fun bs!1145213 () Bool)

(assert (= bs!1145213 (and b!4753199 b!4753198)))

(assert (=> bs!1145213 (= lambda!222526 lambda!222525)))

(declare-fun bs!1145214 () Bool)

(assert (= bs!1145214 (and b!4753199 b!4753148)))

(assert (=> bs!1145214 (= (= acc!1214 lt!1918421) (= lambda!222526 lambda!222507))))

(declare-fun bs!1145215 () Bool)

(assert (= bs!1145215 (and b!4753199 d!1519745)))

(assert (=> bs!1145215 (= (= acc!1214 lt!1918380) (= lambda!222526 lambda!222504))))

(assert (=> bs!1145214 (= (= acc!1214 lt!1918088) (= lambda!222526 lambda!222506))))

(declare-fun bs!1145216 () Bool)

(assert (= bs!1145216 (and b!4753199 b!4753181)))

(assert (=> bs!1145216 (= (= acc!1214 lt!1918084) (= lambda!222526 lambda!222521))))

(assert (=> bs!1145206 (= (= acc!1214 lt!1918474) (= lambda!222526 lambda!222514))))

(assert (=> bs!1145199 (= (= acc!1214 lt!1918084) (= lambda!222526 lambda!222522))))

(declare-fun bs!1145217 () Bool)

(assert (= bs!1145217 (and b!4753199 d!1519761)))

(assert (=> bs!1145217 (= (= acc!1214 lt!1918458) (= lambda!222526 lambda!222516))))

(assert (=> bs!1145202 (= (= acc!1214 lt!1918094) (= lambda!222526 lambda!222490))))

(assert (=> b!4753199 true))

(declare-fun lt!1918556 () ListMap!5561)

(declare-fun lambda!222527 () Int)

(assert (=> bs!1145199 (= (= lt!1918556 lt!1918520) (= lambda!222527 lambda!222523))))

(assert (=> bs!1145200 (= (= lt!1918556 lt!1918081) (= lambda!222527 lambda!222517))))

(assert (=> bs!1145201 (= (= lt!1918556 lt!1918495) (= lambda!222527 lambda!222519))))

(assert (=> bs!1145203 (= (= lt!1918556 lt!1918094) (= lambda!222527 lambda!222488))))

(assert (=> bs!1145201 (= (= lt!1918556 lt!1918081) (= lambda!222527 lambda!222518))))

(assert (=> bs!1145204 (= (= lt!1918556 lt!1918088) (= lambda!222527 lambda!222505))))

(assert (=> bs!1145205 (= (= lt!1918556 acc!1214) (= lambda!222527 lambda!222502))))

(assert (=> bs!1145206 (= (= lt!1918556 lt!1918081) (= lambda!222527 lambda!222513))))

(assert (=> bs!1145207 (= (= lt!1918556 lt!1918405) (= lambda!222527 lambda!222509))))

(assert (=> bs!1145208 (= (= lt!1918556 acc!1214) (= lambda!222527 lambda!222501))))

(assert (=> bs!1145209 (= (= lt!1918556 lt!1918081) (= lambda!222527 lambda!222512))))

(assert (=> bs!1145210 (= (= lt!1918556 lt!1918294) (= lambda!222527 lambda!222492))))

(assert (=> bs!1145211 (= (= lt!1918556 lt!1918504) (= lambda!222527 lambda!222524))))

(assert (=> b!4753199 (= (= lt!1918556 acc!1214) (= lambda!222527 lambda!222526))))

(assert (=> bs!1145202 (= (= lt!1918556 lt!1918310) (= lambda!222527 lambda!222491))))

(assert (=> bs!1145212 (= (= lt!1918556 lt!1918479) (= lambda!222527 lambda!222520))))

(assert (=> bs!1145205 (= (= lt!1918556 lt!1918396) (= lambda!222527 lambda!222503))))

(assert (=> bs!1145213 (= (= lt!1918556 acc!1214) (= lambda!222527 lambda!222525))))

(assert (=> bs!1145214 (= (= lt!1918556 lt!1918421) (= lambda!222527 lambda!222507))))

(assert (=> bs!1145215 (= (= lt!1918556 lt!1918380) (= lambda!222527 lambda!222504))))

(assert (=> bs!1145214 (= (= lt!1918556 lt!1918088) (= lambda!222527 lambda!222506))))

(assert (=> bs!1145216 (= (= lt!1918556 lt!1918084) (= lambda!222527 lambda!222521))))

(assert (=> bs!1145206 (= (= lt!1918556 lt!1918474) (= lambda!222527 lambda!222514))))

(assert (=> bs!1145199 (= (= lt!1918556 lt!1918084) (= lambda!222527 lambda!222522))))

(assert (=> bs!1145217 (= (= lt!1918556 lt!1918458) (= lambda!222527 lambda!222516))))

(assert (=> bs!1145202 (= (= lt!1918556 lt!1918094) (= lambda!222527 lambda!222490))))

(assert (=> b!4753199 true))

(declare-fun bs!1145218 () Bool)

(declare-fun d!1519803 () Bool)

(assert (= bs!1145218 (and d!1519803 b!4753182)))

(declare-fun lambda!222528 () Int)

(declare-fun lt!1918540 () ListMap!5561)

(assert (=> bs!1145218 (= (= lt!1918540 lt!1918520) (= lambda!222528 lambda!222523))))

(declare-fun bs!1145219 () Bool)

(assert (= bs!1145219 (and d!1519803 b!4753172)))

(assert (=> bs!1145219 (= (= lt!1918540 lt!1918081) (= lambda!222528 lambda!222517))))

(declare-fun bs!1145220 () Bool)

(assert (= bs!1145220 (and d!1519803 b!4753173)))

(assert (=> bs!1145220 (= (= lt!1918540 lt!1918495) (= lambda!222528 lambda!222519))))

(declare-fun bs!1145221 () Bool)

(assert (= bs!1145221 (and d!1519803 b!4753113)))

(assert (=> bs!1145221 (= (= lt!1918540 lt!1918094) (= lambda!222528 lambda!222488))))

(assert (=> bs!1145220 (= (= lt!1918540 lt!1918081) (= lambda!222528 lambda!222518))))

(declare-fun bs!1145222 () Bool)

(assert (= bs!1145222 (and d!1519803 b!4753199)))

(assert (=> bs!1145222 (= (= lt!1918540 lt!1918556) (= lambda!222528 lambda!222527))))

(declare-fun bs!1145223 () Bool)

(assert (= bs!1145223 (and d!1519803 b!4753147)))

(assert (=> bs!1145223 (= (= lt!1918540 lt!1918088) (= lambda!222528 lambda!222505))))

(declare-fun bs!1145224 () Bool)

(assert (= bs!1145224 (and d!1519803 b!4753141)))

(assert (=> bs!1145224 (= (= lt!1918540 acc!1214) (= lambda!222528 lambda!222502))))

(declare-fun bs!1145225 () Bool)

(assert (= bs!1145225 (and d!1519803 b!4753162)))

(assert (=> bs!1145225 (= (= lt!1918540 lt!1918081) (= lambda!222528 lambda!222513))))

(declare-fun bs!1145226 () Bool)

(assert (= bs!1145226 (and d!1519803 d!1519751)))

(assert (=> bs!1145226 (= (= lt!1918540 lt!1918405) (= lambda!222528 lambda!222509))))

(declare-fun bs!1145227 () Bool)

(assert (= bs!1145227 (and d!1519803 b!4753140)))

(assert (=> bs!1145227 (= (= lt!1918540 acc!1214) (= lambda!222528 lambda!222501))))

(declare-fun bs!1145228 () Bool)

(assert (= bs!1145228 (and d!1519803 b!4753161)))

(assert (=> bs!1145228 (= (= lt!1918540 lt!1918081) (= lambda!222528 lambda!222512))))

(declare-fun bs!1145229 () Bool)

(assert (= bs!1145229 (and d!1519803 d!1519691)))

(assert (=> bs!1145229 (= (= lt!1918540 lt!1918294) (= lambda!222528 lambda!222492))))

(declare-fun bs!1145230 () Bool)

(assert (= bs!1145230 (and d!1519803 d!1519781)))

(assert (=> bs!1145230 (= (= lt!1918540 lt!1918504) (= lambda!222528 lambda!222524))))

(assert (=> bs!1145222 (= (= lt!1918540 acc!1214) (= lambda!222528 lambda!222526))))

(declare-fun bs!1145231 () Bool)

(assert (= bs!1145231 (and d!1519803 b!4753114)))

(assert (=> bs!1145231 (= (= lt!1918540 lt!1918310) (= lambda!222528 lambda!222491))))

(declare-fun bs!1145232 () Bool)

(assert (= bs!1145232 (and d!1519803 d!1519773)))

(assert (=> bs!1145232 (= (= lt!1918540 lt!1918479) (= lambda!222528 lambda!222520))))

(assert (=> bs!1145224 (= (= lt!1918540 lt!1918396) (= lambda!222528 lambda!222503))))

(declare-fun bs!1145233 () Bool)

(assert (= bs!1145233 (and d!1519803 b!4753198)))

(assert (=> bs!1145233 (= (= lt!1918540 acc!1214) (= lambda!222528 lambda!222525))))

(declare-fun bs!1145234 () Bool)

(assert (= bs!1145234 (and d!1519803 b!4753148)))

(assert (=> bs!1145234 (= (= lt!1918540 lt!1918421) (= lambda!222528 lambda!222507))))

(declare-fun bs!1145235 () Bool)

(assert (= bs!1145235 (and d!1519803 d!1519745)))

(assert (=> bs!1145235 (= (= lt!1918540 lt!1918380) (= lambda!222528 lambda!222504))))

(assert (=> bs!1145234 (= (= lt!1918540 lt!1918088) (= lambda!222528 lambda!222506))))

(declare-fun bs!1145236 () Bool)

(assert (= bs!1145236 (and d!1519803 b!4753181)))

(assert (=> bs!1145236 (= (= lt!1918540 lt!1918084) (= lambda!222528 lambda!222521))))

(assert (=> bs!1145225 (= (= lt!1918540 lt!1918474) (= lambda!222528 lambda!222514))))

(assert (=> bs!1145218 (= (= lt!1918540 lt!1918084) (= lambda!222528 lambda!222522))))

(declare-fun bs!1145237 () Bool)

(assert (= bs!1145237 (and d!1519803 d!1519761)))

(assert (=> bs!1145237 (= (= lt!1918540 lt!1918458) (= lambda!222528 lambda!222516))))

(assert (=> bs!1145231 (= (= lt!1918540 lt!1918094) (= lambda!222528 lambda!222490))))

(assert (=> d!1519803 true))

(declare-fun bm!333170 () Bool)

(declare-fun call!333175 () Unit!136564)

(assert (=> bm!333170 (= call!333175 (lemmaContainsAllItsOwnKeys!883 acc!1214))))

(declare-fun call!333176 () Bool)

(declare-fun c!811541 () Bool)

(declare-fun bm!333171 () Bool)

(assert (=> bm!333171 (= call!333176 (forall!11768 (toList!6126 acc!1214) (ite c!811541 lambda!222525 lambda!222527)))))

(declare-fun b!4753195 () Bool)

(declare-fun e!2965136 () Bool)

(assert (=> b!4753195 (= e!2965136 (invariantList!1600 (toList!6126 lt!1918540)))))

(declare-fun lt!1918557 () ListMap!5561)

(declare-fun bm!333172 () Bool)

(declare-fun call!333177 () Bool)

(assert (=> bm!333172 (= call!333177 (forall!11768 (ite c!811541 (toList!6126 acc!1214) (toList!6126 lt!1918557)) (ite c!811541 lambda!222525 lambda!222527)))))

(declare-fun b!4753196 () Bool)

(declare-fun e!2965135 () Bool)

(assert (=> b!4753196 (= e!2965135 call!333176)))

(declare-fun e!2965134 () ListMap!5561)

(assert (=> b!4753198 (= e!2965134 acc!1214)))

(declare-fun lt!1918544 () Unit!136564)

(assert (=> b!4753198 (= lt!1918544 call!333175)))

(assert (=> b!4753198 call!333177))

(declare-fun lt!1918548 () Unit!136564)

(assert (=> b!4753198 (= lt!1918548 lt!1918544)))

(assert (=> b!4753198 call!333176))

(declare-fun lt!1918543 () Unit!136564)

(declare-fun Unit!136709 () Unit!136564)

(assert (=> b!4753198 (= lt!1918543 Unit!136709)))

(assert (=> b!4753199 (= e!2965134 lt!1918556)))

(assert (=> b!4753199 (= lt!1918557 (+!2392 acc!1214 (h!59495 l!14304)))))

(assert (=> b!4753199 (= lt!1918556 (addToMapMapFromBucket!1582 (t!360562 l!14304) (+!2392 acc!1214 (h!59495 l!14304))))))

(declare-fun lt!1918555 () Unit!136564)

(assert (=> b!4753199 (= lt!1918555 call!333175)))

(assert (=> b!4753199 (forall!11768 (toList!6126 acc!1214) lambda!222526)))

(declare-fun lt!1918539 () Unit!136564)

(assert (=> b!4753199 (= lt!1918539 lt!1918555)))

(assert (=> b!4753199 call!333177))

(declare-fun lt!1918546 () Unit!136564)

(declare-fun Unit!136710 () Unit!136564)

(assert (=> b!4753199 (= lt!1918546 Unit!136710)))

(assert (=> b!4753199 (forall!11768 (t!360562 l!14304) lambda!222527)))

(declare-fun lt!1918551 () Unit!136564)

(declare-fun Unit!136711 () Unit!136564)

(assert (=> b!4753199 (= lt!1918551 Unit!136711)))

(declare-fun lt!1918542 () Unit!136564)

(declare-fun Unit!136712 () Unit!136564)

(assert (=> b!4753199 (= lt!1918542 Unit!136712)))

(declare-fun lt!1918552 () Unit!136564)

(assert (=> b!4753199 (= lt!1918552 (forallContained!3794 (toList!6126 lt!1918557) lambda!222527 (h!59495 l!14304)))))

(assert (=> b!4753199 (contains!16524 lt!1918557 (_1!30732 (h!59495 l!14304)))))

(declare-fun lt!1918541 () Unit!136564)

(declare-fun Unit!136713 () Unit!136564)

(assert (=> b!4753199 (= lt!1918541 Unit!136713)))

(assert (=> b!4753199 (contains!16524 lt!1918556 (_1!30732 (h!59495 l!14304)))))

(declare-fun lt!1918550 () Unit!136564)

(declare-fun Unit!136714 () Unit!136564)

(assert (=> b!4753199 (= lt!1918550 Unit!136714)))

(assert (=> b!4753199 (forall!11768 l!14304 lambda!222527)))

(declare-fun lt!1918547 () Unit!136564)

(declare-fun Unit!136715 () Unit!136564)

(assert (=> b!4753199 (= lt!1918547 Unit!136715)))

(assert (=> b!4753199 (forall!11768 (toList!6126 lt!1918557) lambda!222527)))

(declare-fun lt!1918537 () Unit!136564)

(declare-fun Unit!136716 () Unit!136564)

(assert (=> b!4753199 (= lt!1918537 Unit!136716)))

(declare-fun lt!1918538 () Unit!136564)

(declare-fun Unit!136717 () Unit!136564)

(assert (=> b!4753199 (= lt!1918538 Unit!136717)))

(declare-fun lt!1918545 () Unit!136564)

(assert (=> b!4753199 (= lt!1918545 (addForallContainsKeyThenBeforeAdding!882 acc!1214 lt!1918556 (_1!30732 (h!59495 l!14304)) (_2!30732 (h!59495 l!14304))))))

(assert (=> b!4753199 (forall!11768 (toList!6126 acc!1214) lambda!222527)))

(declare-fun lt!1918549 () Unit!136564)

(assert (=> b!4753199 (= lt!1918549 lt!1918545)))

(assert (=> b!4753199 (forall!11768 (toList!6126 acc!1214) lambda!222527)))

(declare-fun lt!1918554 () Unit!136564)

(declare-fun Unit!136718 () Unit!136564)

(assert (=> b!4753199 (= lt!1918554 Unit!136718)))

(declare-fun res!2015933 () Bool)

(assert (=> b!4753199 (= res!2015933 (forall!11768 l!14304 lambda!222527))))

(assert (=> b!4753199 (=> (not res!2015933) (not e!2965135))))

(assert (=> b!4753199 e!2965135))

(declare-fun lt!1918553 () Unit!136564)

(declare-fun Unit!136719 () Unit!136564)

(assert (=> b!4753199 (= lt!1918553 Unit!136719)))

(declare-fun b!4753197 () Bool)

(declare-fun res!2015935 () Bool)

(assert (=> b!4753197 (=> (not res!2015935) (not e!2965136))))

(assert (=> b!4753197 (= res!2015935 (forall!11768 (toList!6126 acc!1214) lambda!222528))))

(assert (=> d!1519803 e!2965136))

(declare-fun res!2015934 () Bool)

(assert (=> d!1519803 (=> (not res!2015934) (not e!2965136))))

(assert (=> d!1519803 (= res!2015934 (forall!11768 l!14304 lambda!222528))))

(assert (=> d!1519803 (= lt!1918540 e!2965134)))

(assert (=> d!1519803 (= c!811541 ((_ is Nil!53098) l!14304))))

(assert (=> d!1519803 (noDuplicateKeys!2158 l!14304)))

(assert (=> d!1519803 (= (addToMapMapFromBucket!1582 l!14304 acc!1214) lt!1918540)))

(assert (= (and d!1519803 c!811541) b!4753198))

(assert (= (and d!1519803 (not c!811541)) b!4753199))

(assert (= (and b!4753199 res!2015933) b!4753196))

(assert (= (or b!4753198 b!4753199) bm!333170))

(assert (= (or b!4753198 b!4753199) bm!333172))

(assert (= (or b!4753198 b!4753196) bm!333171))

(assert (= (and d!1519803 res!2015934) b!4753197))

(assert (= (and b!4753197 res!2015935) b!4753195))

(declare-fun m!5719603 () Bool)

(assert (=> bm!333172 m!5719603))

(assert (=> bm!333170 m!5719281))

(declare-fun m!5719605 () Bool)

(assert (=> d!1519803 m!5719605))

(assert (=> d!1519803 m!5718915))

(declare-fun m!5719607 () Bool)

(assert (=> b!4753197 m!5719607))

(declare-fun m!5719609 () Bool)

(assert (=> b!4753199 m!5719609))

(declare-fun m!5719611 () Bool)

(assert (=> b!4753199 m!5719611))

(declare-fun m!5719613 () Bool)

(assert (=> b!4753199 m!5719613))

(assert (=> b!4753199 m!5719613))

(assert (=> b!4753199 m!5718859))

(declare-fun m!5719615 () Bool)

(assert (=> b!4753199 m!5719615))

(declare-fun m!5719617 () Bool)

(assert (=> b!4753199 m!5719617))

(declare-fun m!5719619 () Bool)

(assert (=> b!4753199 m!5719619))

(assert (=> b!4753199 m!5719609))

(declare-fun m!5719621 () Bool)

(assert (=> b!4753199 m!5719621))

(declare-fun m!5719623 () Bool)

(assert (=> b!4753199 m!5719623))

(declare-fun m!5719625 () Bool)

(assert (=> b!4753199 m!5719625))

(assert (=> b!4753199 m!5718859))

(declare-fun m!5719627 () Bool)

(assert (=> b!4753199 m!5719627))

(declare-fun m!5719629 () Bool)

(assert (=> bm!333171 m!5719629))

(declare-fun m!5719631 () Bool)

(assert (=> b!4753195 m!5719631))

(assert (=> b!4753048 d!1519803))

(declare-fun tp!1350280 () Bool)

(declare-fun b!4753204 () Bool)

(declare-fun e!2965139 () Bool)

(assert (=> b!4753204 (= e!2965139 (and tp_is_empty!31925 tp_is_empty!31927 tp!1350280))))

(assert (=> b!4753051 (= tp!1350273 e!2965139)))

(assert (= (and b!4753051 ((_ is Cons!53098) (toList!6126 acc!1214))) b!4753204))

(declare-fun e!2965140 () Bool)

(declare-fun tp!1350281 () Bool)

(declare-fun b!4753205 () Bool)

(assert (=> b!4753205 (= e!2965140 (and tp_is_empty!31925 tp_is_empty!31927 tp!1350281))))

(assert (=> b!4753047 (= tp!1350272 e!2965140)))

(assert (= (and b!4753047 ((_ is Cons!53098) (t!360562 l!14304))) b!4753205))

(check-sat (not b!4753142) (not b!4753157) (not b!4753137) (not d!1519759) (not bm!333169) (not d!1519775) (not b!4753195) (not b!4753194) (not d!1519773) (not bm!333165) (not b!4753160) (not b!4753180) (not b!4753141) (not b!4753183) (not d!1519781) (not bm!333163) (not b!4753156) (not b!4753178) (not b!4753139) (not bm!333145) (not b!4753112) (not d!1519689) (not b!4753173) (not bm!333166) (not b!4753192) (not b!4753146) (not b!4753132) (not b!4753143) (not bm!333164) (not b!4753204) (not bm!333172) (not d!1519691) (not d!1519785) tp_is_empty!31925 (not d!1519745) (not d!1519799) (not d!1519729) (not d!1519751) (not bm!333168) (not b!4753171) (not d!1519771) (not b!4753205) (not d!1519803) (not b!4753167) (not b!4753176) tp_is_empty!31927 (not b!4753114) (not b!4753182) (not b!4753110) (not d!1519793) (not b!4753177) (not b!4753144) (not d!1519747) (not bm!333153) (not b!4753184) (not d!1519789) (not b!4753186) (not d!1519779) (not d!1519801) (not b!4753158) (not bm!333171) (not d!1519783) (not b!4753197) (not bm!333152) (not d!1519787) (not b!4753185) (not b!4753193) (not d!1519727) (not bm!333167) (not d!1519791) (not d!1519761) (not d!1519749) (not bm!333144) (not bm!333156) (not b!4753131) (not bm!333170) (not bm!333161) (not bm!333154) (not bm!333143) (not d!1519777) (not bm!333155) (not b!4753199) (not b!4753162) (not b!4753148) (not d!1519767) (not d!1519723) (not b!4753191) (not d!1519731) (not bm!333157) (not bm!333162))
(check-sat)
