; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!437474 () Bool)

(assert start!437474)

(declare-fun b!4461094 () Bool)

(declare-fun e!2777916 () Bool)

(declare-fun tp!1335729 () Bool)

(assert (=> b!4461094 (= e!2777916 tp!1335729)))

(declare-fun b!4461095 () Bool)

(declare-fun res!1850001 () Bool)

(declare-fun e!2777918 () Bool)

(assert (=> b!4461095 (=> (not res!1850001) (not e!2777918))))

(declare-datatypes ((K!11578 0))(
  ( (K!11579 (val!17533 Int)) )
))
(declare-datatypes ((V!11824 0))(
  ( (V!11825 (val!17534 Int)) )
))
(declare-datatypes ((tuple2!50342 0))(
  ( (tuple2!50343 (_1!28465 K!11578) (_2!28465 V!11824)) )
))
(declare-datatypes ((List!50296 0))(
  ( (Nil!50172) (Cons!50172 (h!55917 tuple2!50342) (t!357246 List!50296)) )
))
(declare-fun l!12755 () List!50296)

(declare-fun key!4289 () K!11578)

(declare-fun containsKey!1401 (List!50296 K!11578) Bool)

(assert (=> b!4461095 (= res!1850001 (not (containsKey!1401 l!12755 key!4289)))))

(declare-fun b!4461096 () Bool)

(declare-fun res!1850003 () Bool)

(assert (=> b!4461096 (=> (not res!1850003) (not e!2777918))))

(assert (=> b!4461096 (= res!1850003 (not (is-Cons!50172 l!12755)))))

(declare-fun b!4461097 () Bool)

(declare-fun res!1850002 () Bool)

(assert (=> b!4461097 (=> (not res!1850002) (not e!2777918))))

(declare-datatypes ((ListMap!3219 0))(
  ( (ListMap!3220 (toList!3961 List!50296)) )
))
(declare-fun acc!957 () ListMap!3219)

(declare-fun contains!12680 (ListMap!3219 K!11578) Bool)

(declare-fun addToMapMapFromBucket!568 (List!50296 ListMap!3219) ListMap!3219)

(assert (=> b!4461097 (= res!1850002 (contains!12680 (addToMapMapFromBucket!568 l!12755 acc!957) key!4289))))

(declare-fun tp!1335728 () Bool)

(declare-fun tp_is_empty!27179 () Bool)

(declare-fun tp_is_empty!27177 () Bool)

(declare-fun b!4461098 () Bool)

(declare-fun e!2777917 () Bool)

(assert (=> b!4461098 (= e!2777917 (and tp_is_empty!27177 tp_is_empty!27179 tp!1335728))))

(declare-fun b!4461099 () Bool)

(assert (=> b!4461099 (= e!2777918 (not (contains!12680 acc!957 key!4289)))))

(declare-fun res!1850000 () Bool)

(assert (=> start!437474 (=> (not res!1850000) (not e!2777918))))

(declare-fun noDuplicateKeys!989 (List!50296) Bool)

(assert (=> start!437474 (= res!1850000 (noDuplicateKeys!989 l!12755))))

(assert (=> start!437474 e!2777918))

(assert (=> start!437474 e!2777917))

(assert (=> start!437474 tp_is_empty!27177))

(declare-fun inv!65763 (ListMap!3219) Bool)

(assert (=> start!437474 (and (inv!65763 acc!957) e!2777916)))

(assert (= (and start!437474 res!1850000) b!4461095))

(assert (= (and b!4461095 res!1850001) b!4461097))

(assert (= (and b!4461097 res!1850002) b!4461096))

(assert (= (and b!4461096 res!1850003) b!4461099))

(assert (= (and start!437474 (is-Cons!50172 l!12755)) b!4461098))

(assert (= start!437474 b!4461094))

(declare-fun m!5164125 () Bool)

(assert (=> b!4461095 m!5164125))

(declare-fun m!5164127 () Bool)

(assert (=> b!4461097 m!5164127))

(assert (=> b!4461097 m!5164127))

(declare-fun m!5164129 () Bool)

(assert (=> b!4461097 m!5164129))

(declare-fun m!5164131 () Bool)

(assert (=> b!4461099 m!5164131))

(declare-fun m!5164133 () Bool)

(assert (=> start!437474 m!5164133))

(declare-fun m!5164135 () Bool)

(assert (=> start!437474 m!5164135))

(push 1)

(assert (not b!4461097))

(assert (not b!4461099))

(assert tp_is_empty!27179)

(assert tp_is_empty!27177)

(assert (not start!437474))

(assert (not b!4461098))

(assert (not b!4461094))

(assert (not b!4461095))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!4461142 () Bool)

(declare-fun e!2777946 () Bool)

(declare-datatypes ((List!50298 0))(
  ( (Nil!50174) (Cons!50174 (h!55919 K!11578) (t!357248 List!50298)) )
))
(declare-fun contains!12682 (List!50298 K!11578) Bool)

(declare-fun keys!17295 (ListMap!3219) List!50298)

(assert (=> b!4461142 (= e!2777946 (not (contains!12682 (keys!17295 (addToMapMapFromBucket!568 l!12755 acc!957)) key!4289)))))

(declare-fun b!4461143 () Bool)

(declare-datatypes ((Unit!86827 0))(
  ( (Unit!86828) )
))
(declare-fun e!2777947 () Unit!86827)

(declare-fun e!2777950 () Unit!86827)

(assert (=> b!4461143 (= e!2777947 e!2777950)))

(declare-fun c!759229 () Bool)

(declare-fun call!310605 () Bool)

(assert (=> b!4461143 (= c!759229 call!310605)))

(declare-fun e!2777951 () Bool)

(declare-fun b!4461144 () Bool)

(assert (=> b!4461144 (= e!2777951 (contains!12682 (keys!17295 (addToMapMapFromBucket!568 l!12755 acc!957)) key!4289))))

(declare-fun b!4461145 () Bool)

(declare-fun Unit!86829 () Unit!86827)

(assert (=> b!4461145 (= e!2777950 Unit!86829)))

(declare-fun b!4461146 () Bool)

(declare-fun e!2777949 () List!50298)

(assert (=> b!4461146 (= e!2777949 (keys!17295 (addToMapMapFromBucket!568 l!12755 acc!957)))))

(declare-fun b!4461147 () Bool)

(declare-fun lt!1652310 () Unit!86827)

(assert (=> b!4461147 (= e!2777947 lt!1652310)))

(declare-fun lt!1652312 () Unit!86827)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!779 (List!50296 K!11578) Unit!86827)

(assert (=> b!4461147 (= lt!1652312 (lemmaContainsKeyImpliesGetValueByKeyDefined!779 (toList!3961 (addToMapMapFromBucket!568 l!12755 acc!957)) key!4289))))

(declare-datatypes ((Option!10888 0))(
  ( (None!10887) (Some!10887 (v!44145 V!11824)) )
))
(declare-fun isDefined!8176 (Option!10888) Bool)

(declare-fun getValueByKey!874 (List!50296 K!11578) Option!10888)

(assert (=> b!4461147 (isDefined!8176 (getValueByKey!874 (toList!3961 (addToMapMapFromBucket!568 l!12755 acc!957)) key!4289))))

(declare-fun lt!1652308 () Unit!86827)

(assert (=> b!4461147 (= lt!1652308 lt!1652312)))

(declare-fun lemmaInListThenGetKeysListContains!352 (List!50296 K!11578) Unit!86827)

(assert (=> b!4461147 (= lt!1652310 (lemmaInListThenGetKeysListContains!352 (toList!3961 (addToMapMapFromBucket!568 l!12755 acc!957)) key!4289))))

(assert (=> b!4461147 call!310605))

(declare-fun b!4461148 () Bool)

(declare-fun e!2777948 () Bool)

(assert (=> b!4461148 (= e!2777948 e!2777951)))

(declare-fun res!1850028 () Bool)

(assert (=> b!4461148 (=> (not res!1850028) (not e!2777951))))

(assert (=> b!4461148 (= res!1850028 (isDefined!8176 (getValueByKey!874 (toList!3961 (addToMapMapFromBucket!568 l!12755 acc!957)) key!4289)))))

(declare-fun b!4461149 () Bool)

(declare-fun getKeysList!356 (List!50296) List!50298)

(assert (=> b!4461149 (= e!2777949 (getKeysList!356 (toList!3961 (addToMapMapFromBucket!568 l!12755 acc!957))))))

(declare-fun b!4461150 () Bool)

(assert (=> b!4461150 false))

(declare-fun lt!1652311 () Unit!86827)

(declare-fun lt!1652307 () Unit!86827)

(assert (=> b!4461150 (= lt!1652311 lt!1652307)))

(declare-fun containsKey!1403 (List!50296 K!11578) Bool)

(assert (=> b!4461150 (containsKey!1403 (toList!3961 (addToMapMapFromBucket!568 l!12755 acc!957)) key!4289)))

(declare-fun lemmaInGetKeysListThenContainsKey!355 (List!50296 K!11578) Unit!86827)

(assert (=> b!4461150 (= lt!1652307 (lemmaInGetKeysListThenContainsKey!355 (toList!3961 (addToMapMapFromBucket!568 l!12755 acc!957)) key!4289))))

(declare-fun Unit!86830 () Unit!86827)

(assert (=> b!4461150 (= e!2777950 Unit!86830)))

(declare-fun bm!310600 () Bool)

(assert (=> bm!310600 (= call!310605 (contains!12682 e!2777949 key!4289))))

(declare-fun c!759227 () Bool)

(declare-fun c!759228 () Bool)

(assert (=> bm!310600 (= c!759227 c!759228)))

(declare-fun d!1360242 () Bool)

(assert (=> d!1360242 e!2777948))

(declare-fun res!1850029 () Bool)

(assert (=> d!1360242 (=> res!1850029 e!2777948)))

(assert (=> d!1360242 (= res!1850029 e!2777946)))

(declare-fun res!1850030 () Bool)

(assert (=> d!1360242 (=> (not res!1850030) (not e!2777946))))

(declare-fun lt!1652313 () Bool)

(assert (=> d!1360242 (= res!1850030 (not lt!1652313))))

(declare-fun lt!1652314 () Bool)

(assert (=> d!1360242 (= lt!1652313 lt!1652314)))

(declare-fun lt!1652309 () Unit!86827)

(assert (=> d!1360242 (= lt!1652309 e!2777947)))

(assert (=> d!1360242 (= c!759228 lt!1652314)))

(assert (=> d!1360242 (= lt!1652314 (containsKey!1403 (toList!3961 (addToMapMapFromBucket!568 l!12755 acc!957)) key!4289))))

(assert (=> d!1360242 (= (contains!12680 (addToMapMapFromBucket!568 l!12755 acc!957) key!4289) lt!1652313)))

(assert (= (and d!1360242 c!759228) b!4461147))

(assert (= (and d!1360242 (not c!759228)) b!4461143))

(assert (= (and b!4461143 c!759229) b!4461150))

(assert (= (and b!4461143 (not c!759229)) b!4461145))

(assert (= (or b!4461147 b!4461143) bm!310600))

(assert (= (and bm!310600 c!759227) b!4461149))

(assert (= (and bm!310600 (not c!759227)) b!4461146))

(assert (= (and d!1360242 res!1850030) b!4461142))

(assert (= (and d!1360242 (not res!1850029)) b!4461148))

(assert (= (and b!4461148 res!1850028) b!4461144))

(declare-fun m!5164151 () Bool)

(assert (=> b!4461148 m!5164151))

(assert (=> b!4461148 m!5164151))

(declare-fun m!5164153 () Bool)

(assert (=> b!4461148 m!5164153))

(declare-fun m!5164155 () Bool)

(assert (=> d!1360242 m!5164155))

(declare-fun m!5164157 () Bool)

(assert (=> bm!310600 m!5164157))

(declare-fun m!5164159 () Bool)

(assert (=> b!4461147 m!5164159))

(assert (=> b!4461147 m!5164151))

(assert (=> b!4461147 m!5164151))

(assert (=> b!4461147 m!5164153))

(declare-fun m!5164161 () Bool)

(assert (=> b!4461147 m!5164161))

(assert (=> b!4461142 m!5164127))

(declare-fun m!5164163 () Bool)

(assert (=> b!4461142 m!5164163))

(assert (=> b!4461142 m!5164163))

(declare-fun m!5164165 () Bool)

(assert (=> b!4461142 m!5164165))

(declare-fun m!5164167 () Bool)

(assert (=> b!4461149 m!5164167))

(assert (=> b!4461144 m!5164127))

(assert (=> b!4461144 m!5164163))

(assert (=> b!4461144 m!5164163))

(assert (=> b!4461144 m!5164165))

(assert (=> b!4461146 m!5164127))

(assert (=> b!4461146 m!5164163))

(assert (=> b!4461150 m!5164155))

(declare-fun m!5164169 () Bool)

(assert (=> b!4461150 m!5164169))

(assert (=> b!4461097 d!1360242))

(declare-fun b!4461201 () Bool)

(assert (=> b!4461201 true))

(declare-fun bs!791493 () Bool)

(declare-fun b!4461204 () Bool)

(assert (= bs!791493 (and b!4461204 b!4461201)))

(declare-fun lambda!161801 () Int)

(declare-fun lambda!161800 () Int)

(assert (=> bs!791493 (= lambda!161801 lambda!161800)))

(assert (=> b!4461204 true))

(declare-fun lambda!161802 () Int)

(declare-fun lt!1652413 () ListMap!3219)

(assert (=> bs!791493 (= (= lt!1652413 acc!957) (= lambda!161802 lambda!161800))))

(assert (=> b!4461204 (= (= lt!1652413 acc!957) (= lambda!161802 lambda!161801))))

(assert (=> b!4461204 true))

(declare-fun bs!791494 () Bool)

(declare-fun d!1360248 () Bool)

(assert (= bs!791494 (and d!1360248 b!4461201)))

(declare-fun lt!1652407 () ListMap!3219)

(declare-fun lambda!161803 () Int)

(assert (=> bs!791494 (= (= lt!1652407 acc!957) (= lambda!161803 lambda!161800))))

(declare-fun bs!791495 () Bool)

(assert (= bs!791495 (and d!1360248 b!4461204)))

(assert (=> bs!791495 (= (= lt!1652407 acc!957) (= lambda!161803 lambda!161801))))

(assert (=> bs!791495 (= (= lt!1652407 lt!1652413) (= lambda!161803 lambda!161802))))

(assert (=> d!1360248 true))

(declare-fun e!2777986 () ListMap!3219)

(assert (=> b!4461201 (= e!2777986 acc!957)))

(declare-fun lt!1652414 () Unit!86827)

(declare-fun call!310617 () Unit!86827)

(assert (=> b!4461201 (= lt!1652414 call!310617)))

(declare-fun call!310616 () Bool)

(assert (=> b!4461201 call!310616))

(declare-fun lt!1652396 () Unit!86827)

(assert (=> b!4461201 (= lt!1652396 lt!1652414)))

(declare-fun call!310618 () Bool)

(assert (=> b!4461201 call!310618))

(declare-fun lt!1652410 () Unit!86827)

(declare-fun Unit!86831 () Unit!86827)

(assert (=> b!4461201 (= lt!1652410 Unit!86831)))

(declare-fun b!4461202 () Bool)

(declare-fun e!2777985 () Bool)

(declare-fun forall!9918 (List!50296 Int) Bool)

(assert (=> b!4461202 (= e!2777985 (forall!9918 (toList!3961 acc!957) lambda!161802))))

(declare-fun c!759246 () Bool)

(declare-fun bm!310611 () Bool)

(assert (=> bm!310611 (= call!310618 (forall!9918 (toList!3961 acc!957) (ite c!759246 lambda!161800 lambda!161802)))))

(declare-fun e!2777984 () Bool)

(assert (=> d!1360248 e!2777984))

(declare-fun res!1850050 () Bool)

(assert (=> d!1360248 (=> (not res!1850050) (not e!2777984))))

(assert (=> d!1360248 (= res!1850050 (forall!9918 l!12755 lambda!161803))))

(assert (=> d!1360248 (= lt!1652407 e!2777986)))

(assert (=> d!1360248 (= c!759246 (is-Nil!50172 l!12755))))

(assert (=> d!1360248 (noDuplicateKeys!989 l!12755)))

(assert (=> d!1360248 (= (addToMapMapFromBucket!568 l!12755 acc!957) lt!1652407)))

(declare-fun b!4461203 () Bool)

(declare-fun invariantList!909 (List!50296) Bool)

(assert (=> b!4461203 (= e!2777984 (invariantList!909 (toList!3961 lt!1652407)))))

(declare-fun bm!310612 () Bool)

(declare-fun lemmaContainsAllItsOwnKeys!257 (ListMap!3219) Unit!86827)

(assert (=> bm!310612 (= call!310617 (lemmaContainsAllItsOwnKeys!257 acc!957))))

(assert (=> b!4461204 (= e!2777986 lt!1652413)))

(declare-fun lt!1652399 () ListMap!3219)

(declare-fun +!1342 (ListMap!3219 tuple2!50342) ListMap!3219)

(assert (=> b!4461204 (= lt!1652399 (+!1342 acc!957 (h!55917 l!12755)))))

(assert (=> b!4461204 (= lt!1652413 (addToMapMapFromBucket!568 (t!357246 l!12755) (+!1342 acc!957 (h!55917 l!12755))))))

(declare-fun lt!1652412 () Unit!86827)

(assert (=> b!4461204 (= lt!1652412 call!310617)))

(assert (=> b!4461204 (forall!9918 (toList!3961 acc!957) lambda!161801)))

(declare-fun lt!1652398 () Unit!86827)

(assert (=> b!4461204 (= lt!1652398 lt!1652412)))

(assert (=> b!4461204 (forall!9918 (toList!3961 lt!1652399) lambda!161802)))

(declare-fun lt!1652397 () Unit!86827)

(declare-fun Unit!86832 () Unit!86827)

(assert (=> b!4461204 (= lt!1652397 Unit!86832)))

(assert (=> b!4461204 (forall!9918 (t!357246 l!12755) lambda!161802)))

(declare-fun lt!1652402 () Unit!86827)

(declare-fun Unit!86833 () Unit!86827)

(assert (=> b!4461204 (= lt!1652402 Unit!86833)))

(declare-fun lt!1652395 () Unit!86827)

(declare-fun Unit!86834 () Unit!86827)

(assert (=> b!4461204 (= lt!1652395 Unit!86834)))

(declare-fun lt!1652403 () Unit!86827)

(declare-fun forallContained!2207 (List!50296 Int tuple2!50342) Unit!86827)

(assert (=> b!4461204 (= lt!1652403 (forallContained!2207 (toList!3961 lt!1652399) lambda!161802 (h!55917 l!12755)))))

(assert (=> b!4461204 (contains!12680 lt!1652399 (_1!28465 (h!55917 l!12755)))))

(declare-fun lt!1652406 () Unit!86827)

(declare-fun Unit!86835 () Unit!86827)

(assert (=> b!4461204 (= lt!1652406 Unit!86835)))

(assert (=> b!4461204 (contains!12680 lt!1652413 (_1!28465 (h!55917 l!12755)))))

(declare-fun lt!1652401 () Unit!86827)

(declare-fun Unit!86836 () Unit!86827)

(assert (=> b!4461204 (= lt!1652401 Unit!86836)))

(assert (=> b!4461204 (forall!9918 l!12755 lambda!161802)))

(declare-fun lt!1652408 () Unit!86827)

(declare-fun Unit!86837 () Unit!86827)

(assert (=> b!4461204 (= lt!1652408 Unit!86837)))

(assert (=> b!4461204 call!310616))

(declare-fun lt!1652400 () Unit!86827)

(declare-fun Unit!86838 () Unit!86827)

(assert (=> b!4461204 (= lt!1652400 Unit!86838)))

(declare-fun lt!1652405 () Unit!86827)

(declare-fun Unit!86839 () Unit!86827)

(assert (=> b!4461204 (= lt!1652405 Unit!86839)))

(declare-fun lt!1652415 () Unit!86827)

(declare-fun addForallContainsKeyThenBeforeAdding!256 (ListMap!3219 ListMap!3219 K!11578 V!11824) Unit!86827)

(assert (=> b!4461204 (= lt!1652415 (addForallContainsKeyThenBeforeAdding!256 acc!957 lt!1652413 (_1!28465 (h!55917 l!12755)) (_2!28465 (h!55917 l!12755))))))

(assert (=> b!4461204 call!310618))

(declare-fun lt!1652409 () Unit!86827)

(assert (=> b!4461204 (= lt!1652409 lt!1652415)))

(assert (=> b!4461204 (forall!9918 (toList!3961 acc!957) lambda!161802)))

(declare-fun lt!1652404 () Unit!86827)

(declare-fun Unit!86840 () Unit!86827)

(assert (=> b!4461204 (= lt!1652404 Unit!86840)))

(declare-fun res!1850049 () Bool)

(assert (=> b!4461204 (= res!1850049 (forall!9918 l!12755 lambda!161802))))

(assert (=> b!4461204 (=> (not res!1850049) (not e!2777985))))

(assert (=> b!4461204 e!2777985))

(declare-fun lt!1652411 () Unit!86827)

(declare-fun Unit!86841 () Unit!86827)

(assert (=> b!4461204 (= lt!1652411 Unit!86841)))

(declare-fun bm!310613 () Bool)

(assert (=> bm!310613 (= call!310616 (forall!9918 (ite c!759246 (toList!3961 acc!957) (toList!3961 lt!1652399)) (ite c!759246 lambda!161800 lambda!161802)))))

(declare-fun b!4461205 () Bool)

(declare-fun res!1850051 () Bool)

(assert (=> b!4461205 (=> (not res!1850051) (not e!2777984))))

(assert (=> b!4461205 (= res!1850051 (forall!9918 (toList!3961 acc!957) lambda!161803))))

(assert (= (and d!1360248 c!759246) b!4461201))

(assert (= (and d!1360248 (not c!759246)) b!4461204))

(assert (= (and b!4461204 res!1850049) b!4461202))

(assert (= (or b!4461201 b!4461204) bm!310611))

(assert (= (or b!4461201 b!4461204) bm!310613))

(assert (= (or b!4461201 b!4461204) bm!310612))

(assert (= (and d!1360248 res!1850050) b!4461205))

(assert (= (and b!4461205 res!1850051) b!4461203))

(declare-fun m!5164211 () Bool)

(assert (=> bm!310613 m!5164211))

(declare-fun m!5164213 () Bool)

(assert (=> bm!310611 m!5164213))

(declare-fun m!5164215 () Bool)

(assert (=> d!1360248 m!5164215))

(assert (=> d!1360248 m!5164133))

(declare-fun m!5164217 () Bool)

(assert (=> bm!310612 m!5164217))

(declare-fun m!5164219 () Bool)

(assert (=> b!4461202 m!5164219))

(declare-fun m!5164221 () Bool)

(assert (=> b!4461204 m!5164221))

(declare-fun m!5164223 () Bool)

(assert (=> b!4461204 m!5164223))

(declare-fun m!5164225 () Bool)

(assert (=> b!4461204 m!5164225))

(declare-fun m!5164227 () Bool)

(assert (=> b!4461204 m!5164227))

(declare-fun m!5164229 () Bool)

(assert (=> b!4461204 m!5164229))

(assert (=> b!4461204 m!5164219))

(assert (=> b!4461204 m!5164227))

(declare-fun m!5164231 () Bool)

(assert (=> b!4461204 m!5164231))

(declare-fun m!5164233 () Bool)

(assert (=> b!4461204 m!5164233))

(assert (=> b!4461204 m!5164233))

(declare-fun m!5164235 () Bool)

(assert (=> b!4461204 m!5164235))

(declare-fun m!5164237 () Bool)

(assert (=> b!4461204 m!5164237))

(declare-fun m!5164239 () Bool)

(assert (=> b!4461204 m!5164239))

(declare-fun m!5164241 () Bool)

(assert (=> b!4461205 m!5164241))

(declare-fun m!5164243 () Bool)

(assert (=> b!4461203 m!5164243))

(assert (=> b!4461097 d!1360248))

(declare-fun d!1360254 () Bool)

(declare-fun res!1850056 () Bool)

(declare-fun e!2777991 () Bool)

(assert (=> d!1360254 (=> res!1850056 e!2777991)))

(assert (=> d!1360254 (= res!1850056 (not (is-Cons!50172 l!12755)))))

(assert (=> d!1360254 (= (noDuplicateKeys!989 l!12755) e!2777991)))

(declare-fun b!4461212 () Bool)

(declare-fun e!2777992 () Bool)

(assert (=> b!4461212 (= e!2777991 e!2777992)))

(declare-fun res!1850057 () Bool)

(assert (=> b!4461212 (=> (not res!1850057) (not e!2777992))))

(assert (=> b!4461212 (= res!1850057 (not (containsKey!1401 (t!357246 l!12755) (_1!28465 (h!55917 l!12755)))))))

(declare-fun b!4461213 () Bool)

(assert (=> b!4461213 (= e!2777992 (noDuplicateKeys!989 (t!357246 l!12755)))))

(assert (= (and d!1360254 (not res!1850056)) b!4461212))

(assert (= (and b!4461212 res!1850057) b!4461213))

(declare-fun m!5164245 () Bool)

(assert (=> b!4461212 m!5164245))

(declare-fun m!5164247 () Bool)

(assert (=> b!4461213 m!5164247))

(assert (=> start!437474 d!1360254))

(declare-fun d!1360256 () Bool)

(assert (=> d!1360256 (= (inv!65763 acc!957) (invariantList!909 (toList!3961 acc!957)))))

(declare-fun bs!791496 () Bool)

(assert (= bs!791496 d!1360256))

(declare-fun m!5164249 () Bool)

(assert (=> bs!791496 m!5164249))

(assert (=> start!437474 d!1360256))

(declare-fun d!1360258 () Bool)

(declare-fun res!1850062 () Bool)

(declare-fun e!2777997 () Bool)

(assert (=> d!1360258 (=> res!1850062 e!2777997)))

(assert (=> d!1360258 (= res!1850062 (and (is-Cons!50172 l!12755) (= (_1!28465 (h!55917 l!12755)) key!4289)))))

(assert (=> d!1360258 (= (containsKey!1401 l!12755 key!4289) e!2777997)))

(declare-fun b!4461218 () Bool)

(declare-fun e!2777998 () Bool)

(assert (=> b!4461218 (= e!2777997 e!2777998)))

(declare-fun res!1850063 () Bool)

(assert (=> b!4461218 (=> (not res!1850063) (not e!2777998))))

(assert (=> b!4461218 (= res!1850063 (is-Cons!50172 l!12755))))

(declare-fun b!4461219 () Bool)

(assert (=> b!4461219 (= e!2777998 (containsKey!1401 (t!357246 l!12755) key!4289))))

(assert (= (and d!1360258 (not res!1850062)) b!4461218))

(assert (= (and b!4461218 res!1850063) b!4461219))

(declare-fun m!5164251 () Bool)

(assert (=> b!4461219 m!5164251))

(assert (=> b!4461095 d!1360258))

(declare-fun b!4461220 () Bool)

(declare-fun e!2777999 () Bool)

(assert (=> b!4461220 (= e!2777999 (not (contains!12682 (keys!17295 acc!957) key!4289)))))

(declare-fun b!4461221 () Bool)

(declare-fun e!2778000 () Unit!86827)

(declare-fun e!2778003 () Unit!86827)

(assert (=> b!4461221 (= e!2778000 e!2778003)))

(declare-fun c!759249 () Bool)

(declare-fun call!310619 () Bool)

(assert (=> b!4461221 (= c!759249 call!310619)))

(declare-fun b!4461222 () Bool)

(declare-fun e!2778004 () Bool)

(assert (=> b!4461222 (= e!2778004 (contains!12682 (keys!17295 acc!957) key!4289))))

(declare-fun b!4461223 () Bool)

(declare-fun Unit!86842 () Unit!86827)

(assert (=> b!4461223 (= e!2778003 Unit!86842)))

(declare-fun b!4461224 () Bool)

(declare-fun e!2778002 () List!50298)

(assert (=> b!4461224 (= e!2778002 (keys!17295 acc!957))))

(declare-fun b!4461225 () Bool)

(declare-fun lt!1652419 () Unit!86827)

(assert (=> b!4461225 (= e!2778000 lt!1652419)))

(declare-fun lt!1652421 () Unit!86827)

(assert (=> b!4461225 (= lt!1652421 (lemmaContainsKeyImpliesGetValueByKeyDefined!779 (toList!3961 acc!957) key!4289))))

(assert (=> b!4461225 (isDefined!8176 (getValueByKey!874 (toList!3961 acc!957) key!4289))))

(declare-fun lt!1652417 () Unit!86827)

(assert (=> b!4461225 (= lt!1652417 lt!1652421)))

(assert (=> b!4461225 (= lt!1652419 (lemmaInListThenGetKeysListContains!352 (toList!3961 acc!957) key!4289))))

(assert (=> b!4461225 call!310619))

(declare-fun b!4461226 () Bool)

(declare-fun e!2778001 () Bool)

(assert (=> b!4461226 (= e!2778001 e!2778004)))

(declare-fun res!1850064 () Bool)

(assert (=> b!4461226 (=> (not res!1850064) (not e!2778004))))

(assert (=> b!4461226 (= res!1850064 (isDefined!8176 (getValueByKey!874 (toList!3961 acc!957) key!4289)))))

(declare-fun b!4461227 () Bool)

(assert (=> b!4461227 (= e!2778002 (getKeysList!356 (toList!3961 acc!957)))))

(declare-fun b!4461228 () Bool)

(assert (=> b!4461228 false))

(declare-fun lt!1652420 () Unit!86827)

(declare-fun lt!1652416 () Unit!86827)

(assert (=> b!4461228 (= lt!1652420 lt!1652416)))

(assert (=> b!4461228 (containsKey!1403 (toList!3961 acc!957) key!4289)))

(assert (=> b!4461228 (= lt!1652416 (lemmaInGetKeysListThenContainsKey!355 (toList!3961 acc!957) key!4289))))

(declare-fun Unit!86843 () Unit!86827)

(assert (=> b!4461228 (= e!2778003 Unit!86843)))

(declare-fun bm!310614 () Bool)

(assert (=> bm!310614 (= call!310619 (contains!12682 e!2778002 key!4289))))

(declare-fun c!759247 () Bool)

(declare-fun c!759248 () Bool)

(assert (=> bm!310614 (= c!759247 c!759248)))

(declare-fun d!1360260 () Bool)

(assert (=> d!1360260 e!2778001))

(declare-fun res!1850065 () Bool)

(assert (=> d!1360260 (=> res!1850065 e!2778001)))

(assert (=> d!1360260 (= res!1850065 e!2777999)))

(declare-fun res!1850066 () Bool)

(assert (=> d!1360260 (=> (not res!1850066) (not e!2777999))))

(declare-fun lt!1652422 () Bool)

(assert (=> d!1360260 (= res!1850066 (not lt!1652422))))

(declare-fun lt!1652423 () Bool)

(assert (=> d!1360260 (= lt!1652422 lt!1652423)))

(declare-fun lt!1652418 () Unit!86827)

(assert (=> d!1360260 (= lt!1652418 e!2778000)))

(assert (=> d!1360260 (= c!759248 lt!1652423)))

(assert (=> d!1360260 (= lt!1652423 (containsKey!1403 (toList!3961 acc!957) key!4289))))

(assert (=> d!1360260 (= (contains!12680 acc!957 key!4289) lt!1652422)))

(assert (= (and d!1360260 c!759248) b!4461225))

(assert (= (and d!1360260 (not c!759248)) b!4461221))

(assert (= (and b!4461221 c!759249) b!4461228))

(assert (= (and b!4461221 (not c!759249)) b!4461223))

(assert (= (or b!4461225 b!4461221) bm!310614))

(assert (= (and bm!310614 c!759247) b!4461227))

(assert (= (and bm!310614 (not c!759247)) b!4461224))

(assert (= (and d!1360260 res!1850066) b!4461220))

(assert (= (and d!1360260 (not res!1850065)) b!4461226))

(assert (= (and b!4461226 res!1850064) b!4461222))

(declare-fun m!5164253 () Bool)

(assert (=> b!4461226 m!5164253))

(assert (=> b!4461226 m!5164253))

(declare-fun m!5164255 () Bool)

(assert (=> b!4461226 m!5164255))

(declare-fun m!5164257 () Bool)

(assert (=> d!1360260 m!5164257))

(declare-fun m!5164259 () Bool)

(assert (=> bm!310614 m!5164259))

(declare-fun m!5164261 () Bool)

(assert (=> b!4461225 m!5164261))

(assert (=> b!4461225 m!5164253))

(assert (=> b!4461225 m!5164253))

(assert (=> b!4461225 m!5164255))

(declare-fun m!5164263 () Bool)

(assert (=> b!4461225 m!5164263))

(declare-fun m!5164265 () Bool)

(assert (=> b!4461220 m!5164265))

(assert (=> b!4461220 m!5164265))

(declare-fun m!5164267 () Bool)

(assert (=> b!4461220 m!5164267))

(declare-fun m!5164269 () Bool)

(assert (=> b!4461227 m!5164269))

(assert (=> b!4461222 m!5164265))

(assert (=> b!4461222 m!5164265))

(assert (=> b!4461222 m!5164267))

(assert (=> b!4461224 m!5164265))

(assert (=> b!4461228 m!5164257))

(declare-fun m!5164271 () Bool)

(assert (=> b!4461228 m!5164271))

(assert (=> b!4461099 d!1360260))

(declare-fun tp!1335738 () Bool)

(declare-fun b!4461233 () Bool)

(declare-fun e!2778007 () Bool)

(assert (=> b!4461233 (= e!2778007 (and tp_is_empty!27177 tp_is_empty!27179 tp!1335738))))

(assert (=> b!4461098 (= tp!1335728 e!2778007)))

(assert (= (and b!4461098 (is-Cons!50172 (t!357246 l!12755))) b!4461233))

(declare-fun e!2778008 () Bool)

(declare-fun b!4461234 () Bool)

(declare-fun tp!1335739 () Bool)

(assert (=> b!4461234 (= e!2778008 (and tp_is_empty!27177 tp_is_empty!27179 tp!1335739))))

(assert (=> b!4461094 (= tp!1335729 e!2778008)))

(assert (= (and b!4461094 (is-Cons!50172 (toList!3961 acc!957))) b!4461234))

(push 1)

(assert (not b!4461220))

(assert (not b!4461148))

(assert (not b!4461234))

(assert (not b!4461226))

(assert (not b!4461219))

(assert (not b!4461222))

(assert (not b!4461149))

(assert (not bm!310613))

(assert (not b!4461202))

(assert (not b!4461213))

(assert (not b!4461224))

(assert (not d!1360260))

(assert (not d!1360248))

(assert (not b!4461227))

(assert (not b!4461204))

(assert (not b!4461212))

(assert (not b!4461233))

(assert (not b!4461228))

(assert (not b!4461146))

(assert (not bm!310600))

(assert (not b!4461142))

(assert (not bm!310612))

(assert tp_is_empty!27179)

(assert (not d!1360242))

(assert (not b!4461205))

(assert (not b!4461150))

(assert (not bm!310611))

(assert (not b!4461203))

(assert (not b!4461144))

(assert tp_is_empty!27177)

(assert (not b!4461225))

(assert (not d!1360256))

(assert (not b!4461147))

(assert (not bm!310614))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

