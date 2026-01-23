; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!437168 () Bool)

(assert start!437168)

(declare-fun b!4459022 () Bool)

(declare-fun e!2776603 () Bool)

(declare-fun e!2776601 () Bool)

(assert (=> b!4459022 (= e!2776603 e!2776601)))

(declare-fun res!1848862 () Bool)

(assert (=> b!4459022 (=> (not res!1848862) (not e!2776601))))

(declare-datatypes ((K!11515 0))(
  ( (K!11516 (val!17483 Int)) )
))
(declare-datatypes ((V!11761 0))(
  ( (V!11762 (val!17484 Int)) )
))
(declare-datatypes ((tuple2!50286 0))(
  ( (tuple2!50287 (_1!28437 K!11515) (_2!28437 V!11761)) )
))
(declare-datatypes ((List!50251 0))(
  ( (Nil!50127) (Cons!50127 (h!55872 tuple2!50286) (t!357201 List!50251)) )
))
(declare-datatypes ((ListMap!3173 0))(
  ( (ListMap!3174 (toList!3935 List!50251)) )
))
(declare-fun lt!1650060 () ListMap!3173)

(declare-fun key!4412 () K!11515)

(declare-fun contains!12626 (ListMap!3173 K!11515) Bool)

(assert (=> b!4459022 (= res!1848862 (contains!12626 lt!1650060 key!4412))))

(declare-datatypes ((tuple2!50288 0))(
  ( (tuple2!50289 (_1!28438 (_ BitVec 64)) (_2!28438 List!50251)) )
))
(declare-datatypes ((List!50252 0))(
  ( (Nil!50128) (Cons!50128 (h!55873 tuple2!50288) (t!357202 List!50252)) )
))
(declare-datatypes ((ListLongMap!2591 0))(
  ( (ListLongMap!2592 (toList!3936 List!50252)) )
))
(declare-fun lm!1853 () ListLongMap!2591)

(declare-fun extractMap!1032 (List!50252) ListMap!3173)

(assert (=> b!4459022 (= lt!1650060 (extractMap!1032 (toList!3936 lm!1853)))))

(declare-fun b!4459023 () Bool)

(declare-fun res!1848865 () Bool)

(assert (=> b!4459023 (=> (not res!1848865) (not e!2776603))))

(declare-fun l!12858 () List!50251)

(declare-fun noDuplicateKeys!964 (List!50251) Bool)

(assert (=> b!4459023 (= res!1848865 (noDuplicateKeys!964 l!12858))))

(declare-fun b!4459024 () Bool)

(declare-fun res!1848864 () Bool)

(assert (=> b!4459024 (=> (not res!1848864) (not e!2776603))))

(declare-datatypes ((Hashable!5371 0))(
  ( (HashableExt!5370 (__x!31074 Int)) )
))
(declare-fun hashF!1313 () Hashable!5371)

(declare-fun allKeysSameHashInMap!1083 (ListLongMap!2591 Hashable!5371) Bool)

(assert (=> b!4459024 (= res!1848864 (allKeysSameHashInMap!1083 lm!1853 hashF!1313))))

(declare-fun e!2776599 () Bool)

(declare-fun tp_is_empty!27079 () Bool)

(declare-fun tp_is_empty!27077 () Bool)

(declare-fun b!4459025 () Bool)

(declare-fun tp!1335493 () Bool)

(assert (=> b!4459025 (= e!2776599 (and tp_is_empty!27077 tp_is_empty!27079 tp!1335493))))

(declare-fun res!1848867 () Bool)

(assert (=> start!437168 (=> (not res!1848867) (not e!2776603))))

(declare-fun lambda!161127 () Int)

(declare-fun forall!9898 (List!50252 Int) Bool)

(assert (=> start!437168 (= res!1848867 (forall!9898 (toList!3936 lm!1853) lambda!161127))))

(assert (=> start!437168 e!2776603))

(declare-fun e!2776602 () Bool)

(declare-fun inv!65701 (ListLongMap!2591) Bool)

(assert (=> start!437168 (and (inv!65701 lm!1853) e!2776602)))

(assert (=> start!437168 true))

(assert (=> start!437168 e!2776599))

(assert (=> start!437168 tp_is_empty!27077))

(declare-fun b!4459026 () Bool)

(declare-fun res!1848863 () Bool)

(assert (=> b!4459026 (=> (not res!1848863) (not e!2776601))))

(get-info :version)

(assert (=> b!4459026 (= res!1848863 ((_ is Cons!50127) l!12858))))

(declare-fun b!4459027 () Bool)

(declare-fun tp!1335492 () Bool)

(assert (=> b!4459027 (= e!2776602 tp!1335492)))

(declare-fun b!4459028 () Bool)

(declare-fun e!2776600 () Bool)

(assert (=> b!4459028 (= e!2776601 (not e!2776600))))

(declare-fun res!1848866 () Bool)

(assert (=> b!4459028 (=> res!1848866 e!2776600)))

(declare-fun lt!1650059 () ListMap!3173)

(assert (=> b!4459028 (= res!1848866 (not (contains!12626 lt!1650059 key!4412)))))

(declare-fun lt!1650053 () ListMap!3173)

(assert (=> b!4459028 (contains!12626 lt!1650053 key!4412)))

(declare-fun lt!1650061 () ListMap!3173)

(declare-datatypes ((Unit!86440 0))(
  ( (Unit!86441) )
))
(declare-fun lt!1650054 () Unit!86440)

(declare-fun addStillContains!22 (ListMap!3173 K!11515 V!11761 K!11515) Unit!86440)

(assert (=> b!4459028 (= lt!1650054 (addStillContains!22 lt!1650061 (_1!28437 (h!55872 l!12858)) (_2!28437 (h!55872 l!12858)) key!4412))))

(declare-fun lt!1650058 () ListMap!3173)

(declare-fun eq!501 (ListMap!3173 ListMap!3173) Bool)

(assert (=> b!4459028 (eq!501 lt!1650058 lt!1650059)))

(declare-fun +!1320 (ListMap!3173 tuple2!50286) ListMap!3173)

(assert (=> b!4459028 (= lt!1650059 (+!1320 lt!1650061 (h!55872 l!12858)))))

(declare-fun addToMapMapFromBucket!545 (List!50251 ListMap!3173) ListMap!3173)

(assert (=> b!4459028 (= lt!1650058 (addToMapMapFromBucket!545 (t!357201 l!12858) (+!1320 lt!1650060 (h!55872 l!12858))))))

(declare-fun lt!1650062 () ListMap!3173)

(assert (=> b!4459028 (eq!501 lt!1650062 lt!1650053)))

(assert (=> b!4459028 (= lt!1650053 (+!1320 lt!1650061 (h!55872 l!12858)))))

(assert (=> b!4459028 (= lt!1650062 (addToMapMapFromBucket!545 (t!357201 l!12858) (+!1320 lt!1650060 (h!55872 l!12858))))))

(declare-fun lt!1650056 () Unit!86440)

(declare-fun lemmaAddToMapFromBucketPlusKeyValueIsCommutative!248 (ListMap!3173 K!11515 V!11761 List!50251) Unit!86440)

(assert (=> b!4459028 (= lt!1650056 (lemmaAddToMapFromBucketPlusKeyValueIsCommutative!248 lt!1650060 (_1!28437 (h!55872 l!12858)) (_2!28437 (h!55872 l!12858)) (t!357201 l!12858)))))

(assert (=> b!4459028 (contains!12626 lt!1650061 key!4412)))

(assert (=> b!4459028 (= lt!1650061 (addToMapMapFromBucket!545 (t!357201 l!12858) lt!1650060))))

(declare-fun lt!1650057 () Unit!86440)

(declare-fun lemmaAddToMapMaintainsContains!50 (ListLongMap!2591 K!11515 List!50251 Hashable!5371) Unit!86440)

(assert (=> b!4459028 (= lt!1650057 (lemmaAddToMapMaintainsContains!50 lm!1853 key!4412 (t!357201 l!12858) hashF!1313))))

(declare-fun b!4459029 () Bool)

(assert (=> b!4459029 (= e!2776600 (contains!12626 (addToMapMapFromBucket!545 l!12858 lt!1650060) key!4412))))

(assert (=> b!4459029 (contains!12626 lt!1650058 key!4412)))

(declare-fun lt!1650055 () Unit!86440)

(declare-fun lemmaEquivalentThenSameContains!128 (ListMap!3173 ListMap!3173 K!11515) Unit!86440)

(assert (=> b!4459029 (= lt!1650055 (lemmaEquivalentThenSameContains!128 lt!1650058 lt!1650059 key!4412))))

(assert (= (and start!437168 res!1848867) b!4459024))

(assert (= (and b!4459024 res!1848864) b!4459023))

(assert (= (and b!4459023 res!1848865) b!4459022))

(assert (= (and b!4459022 res!1848862) b!4459026))

(assert (= (and b!4459026 res!1848863) b!4459028))

(assert (= (and b!4459028 (not res!1848866)) b!4459029))

(assert (= start!437168 b!4459027))

(assert (= (and start!437168 ((_ is Cons!50127) l!12858)) b!4459025))

(declare-fun m!5161635 () Bool)

(assert (=> b!4459028 m!5161635))

(declare-fun m!5161637 () Bool)

(assert (=> b!4459028 m!5161637))

(declare-fun m!5161639 () Bool)

(assert (=> b!4459028 m!5161639))

(declare-fun m!5161641 () Bool)

(assert (=> b!4459028 m!5161641))

(declare-fun m!5161643 () Bool)

(assert (=> b!4459028 m!5161643))

(declare-fun m!5161645 () Bool)

(assert (=> b!4459028 m!5161645))

(declare-fun m!5161647 () Bool)

(assert (=> b!4459028 m!5161647))

(declare-fun m!5161649 () Bool)

(assert (=> b!4459028 m!5161649))

(declare-fun m!5161651 () Bool)

(assert (=> b!4459028 m!5161651))

(assert (=> b!4459028 m!5161643))

(declare-fun m!5161653 () Bool)

(assert (=> b!4459028 m!5161653))

(declare-fun m!5161655 () Bool)

(assert (=> b!4459028 m!5161655))

(declare-fun m!5161657 () Bool)

(assert (=> b!4459028 m!5161657))

(declare-fun m!5161659 () Bool)

(assert (=> b!4459024 m!5161659))

(declare-fun m!5161661 () Bool)

(assert (=> start!437168 m!5161661))

(declare-fun m!5161663 () Bool)

(assert (=> start!437168 m!5161663))

(declare-fun m!5161665 () Bool)

(assert (=> b!4459029 m!5161665))

(assert (=> b!4459029 m!5161665))

(declare-fun m!5161667 () Bool)

(assert (=> b!4459029 m!5161667))

(declare-fun m!5161669 () Bool)

(assert (=> b!4459029 m!5161669))

(declare-fun m!5161671 () Bool)

(assert (=> b!4459029 m!5161671))

(declare-fun m!5161673 () Bool)

(assert (=> b!4459022 m!5161673))

(declare-fun m!5161675 () Bool)

(assert (=> b!4459022 m!5161675))

(declare-fun m!5161677 () Bool)

(assert (=> b!4459023 m!5161677))

(check-sat (not b!4459022) (not b!4459027) (not b!4459023) tp_is_empty!27079 (not start!437168) (not b!4459024) (not b!4459025) (not b!4459029) (not b!4459028) tp_is_empty!27077)
(check-sat)
(get-model)

(declare-fun bs!791245 () Bool)

(declare-fun d!1359877 () Bool)

(assert (= bs!791245 (and d!1359877 start!437168)))

(declare-fun lambda!161133 () Int)

(assert (=> bs!791245 (not (= lambda!161133 lambda!161127))))

(assert (=> d!1359877 true))

(assert (=> d!1359877 (= (allKeysSameHashInMap!1083 lm!1853 hashF!1313) (forall!9898 (toList!3936 lm!1853) lambda!161133))))

(declare-fun bs!791246 () Bool)

(assert (= bs!791246 d!1359877))

(declare-fun m!5161685 () Bool)

(assert (=> bs!791246 m!5161685))

(assert (=> b!4459024 d!1359877))

(declare-fun b!4459085 () Bool)

(assert (=> b!4459085 false))

(declare-fun lt!1650103 () Unit!86440)

(declare-fun lt!1650108 () Unit!86440)

(assert (=> b!4459085 (= lt!1650103 lt!1650108)))

(declare-fun containsKey!1361 (List!50251 K!11515) Bool)

(assert (=> b!4459085 (containsKey!1361 (toList!3935 (addToMapMapFromBucket!545 l!12858 lt!1650060)) key!4412)))

(declare-fun lemmaInGetKeysListThenContainsKey!339 (List!50251 K!11515) Unit!86440)

(assert (=> b!4459085 (= lt!1650108 (lemmaInGetKeysListThenContainsKey!339 (toList!3935 (addToMapMapFromBucket!545 l!12858 lt!1650060)) key!4412))))

(declare-fun e!2776643 () Unit!86440)

(declare-fun Unit!86470 () Unit!86440)

(assert (=> b!4459085 (= e!2776643 Unit!86470)))

(declare-fun b!4459086 () Bool)

(declare-fun e!2776640 () Bool)

(declare-fun e!2776645 () Bool)

(assert (=> b!4459086 (= e!2776640 e!2776645)))

(declare-fun res!1848890 () Bool)

(assert (=> b!4459086 (=> (not res!1848890) (not e!2776645))))

(declare-datatypes ((Option!10872 0))(
  ( (None!10871) (Some!10871 (v!44129 V!11761)) )
))
(declare-fun isDefined!8160 (Option!10872) Bool)

(declare-fun getValueByKey!858 (List!50251 K!11515) Option!10872)

(assert (=> b!4459086 (= res!1848890 (isDefined!8160 (getValueByKey!858 (toList!3935 (addToMapMapFromBucket!545 l!12858 lt!1650060)) key!4412)))))

(declare-fun b!4459087 () Bool)

(declare-fun e!2776642 () Unit!86440)

(declare-fun lt!1650110 () Unit!86440)

(assert (=> b!4459087 (= e!2776642 lt!1650110)))

(declare-fun lt!1650107 () Unit!86440)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!763 (List!50251 K!11515) Unit!86440)

(assert (=> b!4459087 (= lt!1650107 (lemmaContainsKeyImpliesGetValueByKeyDefined!763 (toList!3935 (addToMapMapFromBucket!545 l!12858 lt!1650060)) key!4412))))

(assert (=> b!4459087 (isDefined!8160 (getValueByKey!858 (toList!3935 (addToMapMapFromBucket!545 l!12858 lt!1650060)) key!4412))))

(declare-fun lt!1650105 () Unit!86440)

(assert (=> b!4459087 (= lt!1650105 lt!1650107)))

(declare-fun lemmaInListThenGetKeysListContains!336 (List!50251 K!11515) Unit!86440)

(assert (=> b!4459087 (= lt!1650110 (lemmaInListThenGetKeysListContains!336 (toList!3935 (addToMapMapFromBucket!545 l!12858 lt!1650060)) key!4412))))

(declare-fun call!310348 () Bool)

(assert (=> b!4459087 call!310348))

(declare-fun b!4459088 () Bool)

(declare-datatypes ((List!50254 0))(
  ( (Nil!50130) (Cons!50130 (h!55875 K!11515) (t!357204 List!50254)) )
))
(declare-fun e!2776644 () List!50254)

(declare-fun getKeysList!340 (List!50251) List!50254)

(assert (=> b!4459088 (= e!2776644 (getKeysList!340 (toList!3935 (addToMapMapFromBucket!545 l!12858 lt!1650060))))))

(declare-fun b!4459089 () Bool)

(assert (=> b!4459089 (= e!2776642 e!2776643)))

(declare-fun c!758928 () Bool)

(assert (=> b!4459089 (= c!758928 call!310348)))

(declare-fun b!4459090 () Bool)

(declare-fun e!2776641 () Bool)

(declare-fun contains!12629 (List!50254 K!11515) Bool)

(declare-fun keys!17253 (ListMap!3173) List!50254)

(assert (=> b!4459090 (= e!2776641 (not (contains!12629 (keys!17253 (addToMapMapFromBucket!545 l!12858 lt!1650060)) key!4412)))))

(declare-fun bm!310343 () Bool)

(assert (=> bm!310343 (= call!310348 (contains!12629 e!2776644 key!4412))))

(declare-fun c!758926 () Bool)

(declare-fun c!758927 () Bool)

(assert (=> bm!310343 (= c!758926 c!758927)))

(declare-fun b!4459091 () Bool)

(declare-fun Unit!86471 () Unit!86440)

(assert (=> b!4459091 (= e!2776643 Unit!86471)))

(declare-fun b!4459093 () Bool)

(assert (=> b!4459093 (= e!2776644 (keys!17253 (addToMapMapFromBucket!545 l!12858 lt!1650060)))))

(declare-fun d!1359879 () Bool)

(assert (=> d!1359879 e!2776640))

(declare-fun res!1848889 () Bool)

(assert (=> d!1359879 (=> res!1848889 e!2776640)))

(assert (=> d!1359879 (= res!1848889 e!2776641)))

(declare-fun res!1848891 () Bool)

(assert (=> d!1359879 (=> (not res!1848891) (not e!2776641))))

(declare-fun lt!1650106 () Bool)

(assert (=> d!1359879 (= res!1848891 (not lt!1650106))))

(declare-fun lt!1650104 () Bool)

(assert (=> d!1359879 (= lt!1650106 lt!1650104)))

(declare-fun lt!1650109 () Unit!86440)

(assert (=> d!1359879 (= lt!1650109 e!2776642)))

(assert (=> d!1359879 (= c!758927 lt!1650104)))

(assert (=> d!1359879 (= lt!1650104 (containsKey!1361 (toList!3935 (addToMapMapFromBucket!545 l!12858 lt!1650060)) key!4412))))

(assert (=> d!1359879 (= (contains!12626 (addToMapMapFromBucket!545 l!12858 lt!1650060) key!4412) lt!1650106)))

(declare-fun b!4459092 () Bool)

(assert (=> b!4459092 (= e!2776645 (contains!12629 (keys!17253 (addToMapMapFromBucket!545 l!12858 lt!1650060)) key!4412))))

(assert (= (and d!1359879 c!758927) b!4459087))

(assert (= (and d!1359879 (not c!758927)) b!4459089))

(assert (= (and b!4459089 c!758928) b!4459085))

(assert (= (and b!4459089 (not c!758928)) b!4459091))

(assert (= (or b!4459087 b!4459089) bm!310343))

(assert (= (and bm!310343 c!758926) b!4459088))

(assert (= (and bm!310343 (not c!758926)) b!4459093))

(assert (= (and d!1359879 res!1848891) b!4459090))

(assert (= (and d!1359879 (not res!1848889)) b!4459086))

(assert (= (and b!4459086 res!1848890) b!4459092))

(declare-fun m!5161707 () Bool)

(assert (=> b!4459085 m!5161707))

(declare-fun m!5161709 () Bool)

(assert (=> b!4459085 m!5161709))

(declare-fun m!5161711 () Bool)

(assert (=> bm!310343 m!5161711))

(declare-fun m!5161713 () Bool)

(assert (=> b!4459086 m!5161713))

(assert (=> b!4459086 m!5161713))

(declare-fun m!5161715 () Bool)

(assert (=> b!4459086 m!5161715))

(assert (=> b!4459090 m!5161665))

(declare-fun m!5161717 () Bool)

(assert (=> b!4459090 m!5161717))

(assert (=> b!4459090 m!5161717))

(declare-fun m!5161719 () Bool)

(assert (=> b!4459090 m!5161719))

(assert (=> b!4459093 m!5161665))

(assert (=> b!4459093 m!5161717))

(assert (=> d!1359879 m!5161707))

(declare-fun m!5161721 () Bool)

(assert (=> b!4459088 m!5161721))

(assert (=> b!4459092 m!5161665))

(assert (=> b!4459092 m!5161717))

(assert (=> b!4459092 m!5161717))

(assert (=> b!4459092 m!5161719))

(declare-fun m!5161723 () Bool)

(assert (=> b!4459087 m!5161723))

(assert (=> b!4459087 m!5161713))

(assert (=> b!4459087 m!5161713))

(assert (=> b!4459087 m!5161715))

(declare-fun m!5161725 () Bool)

(assert (=> b!4459087 m!5161725))

(assert (=> b!4459029 d!1359879))

(declare-fun b!4459208 () Bool)

(assert (=> b!4459208 true))

(declare-fun bs!791296 () Bool)

(declare-fun b!4459207 () Bool)

(assert (= bs!791296 (and b!4459207 b!4459208)))

(declare-fun lambda!161209 () Int)

(declare-fun lambda!161208 () Int)

(assert (=> bs!791296 (= lambda!161209 lambda!161208)))

(assert (=> b!4459207 true))

(declare-fun lambda!161210 () Int)

(declare-fun lt!1650342 () ListMap!3173)

(assert (=> bs!791296 (= (= lt!1650342 lt!1650060) (= lambda!161210 lambda!161208))))

(assert (=> b!4459207 (= (= lt!1650342 lt!1650060) (= lambda!161210 lambda!161209))))

(assert (=> b!4459207 true))

(declare-fun bs!791297 () Bool)

(declare-fun d!1359883 () Bool)

(assert (= bs!791297 (and d!1359883 b!4459208)))

(declare-fun lt!1650334 () ListMap!3173)

(declare-fun lambda!161211 () Int)

(assert (=> bs!791297 (= (= lt!1650334 lt!1650060) (= lambda!161211 lambda!161208))))

(declare-fun bs!791298 () Bool)

(assert (= bs!791298 (and d!1359883 b!4459207)))

(assert (=> bs!791298 (= (= lt!1650334 lt!1650060) (= lambda!161211 lambda!161209))))

(assert (=> bs!791298 (= (= lt!1650334 lt!1650342) (= lambda!161211 lambda!161210))))

(assert (=> d!1359883 true))

(declare-fun bm!310370 () Bool)

(declare-fun call!310376 () Unit!86440)

(declare-fun lemmaContainsAllItsOwnKeys!241 (ListMap!3173) Unit!86440)

(assert (=> bm!310370 (= call!310376 (lemmaContainsAllItsOwnKeys!241 lt!1650060))))

(declare-fun e!2776716 () ListMap!3173)

(assert (=> b!4459207 (= e!2776716 lt!1650342)))

(declare-fun lt!1650330 () ListMap!3173)

(assert (=> b!4459207 (= lt!1650330 (+!1320 lt!1650060 (h!55872 l!12858)))))

(assert (=> b!4459207 (= lt!1650342 (addToMapMapFromBucket!545 (t!357201 l!12858) (+!1320 lt!1650060 (h!55872 l!12858))))))

(declare-fun lt!1650341 () Unit!86440)

(assert (=> b!4459207 (= lt!1650341 call!310376)))

(declare-fun forall!9900 (List!50251 Int) Bool)

(assert (=> b!4459207 (forall!9900 (toList!3935 lt!1650060) lambda!161209)))

(declare-fun lt!1650338 () Unit!86440)

(assert (=> b!4459207 (= lt!1650338 lt!1650341)))

(declare-fun call!310375 () Bool)

(assert (=> b!4459207 call!310375))

(declare-fun lt!1650329 () Unit!86440)

(declare-fun Unit!86474 () Unit!86440)

(assert (=> b!4459207 (= lt!1650329 Unit!86474)))

(assert (=> b!4459207 (forall!9900 (t!357201 l!12858) lambda!161210)))

(declare-fun lt!1650344 () Unit!86440)

(declare-fun Unit!86475 () Unit!86440)

(assert (=> b!4459207 (= lt!1650344 Unit!86475)))

(declare-fun lt!1650343 () Unit!86440)

(declare-fun Unit!86476 () Unit!86440)

(assert (=> b!4459207 (= lt!1650343 Unit!86476)))

(declare-fun lt!1650348 () Unit!86440)

(declare-fun forallContained!2191 (List!50251 Int tuple2!50286) Unit!86440)

(assert (=> b!4459207 (= lt!1650348 (forallContained!2191 (toList!3935 lt!1650330) lambda!161210 (h!55872 l!12858)))))

(assert (=> b!4459207 (contains!12626 lt!1650330 (_1!28437 (h!55872 l!12858)))))

(declare-fun lt!1650340 () Unit!86440)

(declare-fun Unit!86477 () Unit!86440)

(assert (=> b!4459207 (= lt!1650340 Unit!86477)))

(assert (=> b!4459207 (contains!12626 lt!1650342 (_1!28437 (h!55872 l!12858)))))

(declare-fun lt!1650345 () Unit!86440)

(declare-fun Unit!86479 () Unit!86440)

(assert (=> b!4459207 (= lt!1650345 Unit!86479)))

(assert (=> b!4459207 (forall!9900 l!12858 lambda!161210)))

(declare-fun lt!1650347 () Unit!86440)

(declare-fun Unit!86480 () Unit!86440)

(assert (=> b!4459207 (= lt!1650347 Unit!86480)))

(assert (=> b!4459207 (forall!9900 (toList!3935 lt!1650330) lambda!161210)))

(declare-fun lt!1650346 () Unit!86440)

(declare-fun Unit!86481 () Unit!86440)

(assert (=> b!4459207 (= lt!1650346 Unit!86481)))

(declare-fun lt!1650331 () Unit!86440)

(declare-fun Unit!86482 () Unit!86440)

(assert (=> b!4459207 (= lt!1650331 Unit!86482)))

(declare-fun lt!1650339 () Unit!86440)

(declare-fun addForallContainsKeyThenBeforeAdding!240 (ListMap!3173 ListMap!3173 K!11515 V!11761) Unit!86440)

(assert (=> b!4459207 (= lt!1650339 (addForallContainsKeyThenBeforeAdding!240 lt!1650060 lt!1650342 (_1!28437 (h!55872 l!12858)) (_2!28437 (h!55872 l!12858))))))

(assert (=> b!4459207 (forall!9900 (toList!3935 lt!1650060) lambda!161210)))

(declare-fun lt!1650333 () Unit!86440)

(assert (=> b!4459207 (= lt!1650333 lt!1650339)))

(assert (=> b!4459207 (forall!9900 (toList!3935 lt!1650060) lambda!161210)))

(declare-fun lt!1650349 () Unit!86440)

(declare-fun Unit!86484 () Unit!86440)

(assert (=> b!4459207 (= lt!1650349 Unit!86484)))

(declare-fun res!1848942 () Bool)

(declare-fun call!310377 () Bool)

(assert (=> b!4459207 (= res!1848942 call!310377)))

(declare-fun e!2776718 () Bool)

(assert (=> b!4459207 (=> (not res!1848942) (not e!2776718))))

(assert (=> b!4459207 e!2776718))

(declare-fun lt!1650335 () Unit!86440)

(declare-fun Unit!86485 () Unit!86440)

(assert (=> b!4459207 (= lt!1650335 Unit!86485)))

(declare-fun e!2776717 () Bool)

(assert (=> d!1359883 e!2776717))

(declare-fun res!1848944 () Bool)

(assert (=> d!1359883 (=> (not res!1848944) (not e!2776717))))

(assert (=> d!1359883 (= res!1848944 (forall!9900 l!12858 lambda!161211))))

(assert (=> d!1359883 (= lt!1650334 e!2776716)))

(declare-fun c!758954 () Bool)

(assert (=> d!1359883 (= c!758954 ((_ is Nil!50127) l!12858))))

(assert (=> d!1359883 (noDuplicateKeys!964 l!12858)))

(assert (=> d!1359883 (= (addToMapMapFromBucket!545 l!12858 lt!1650060) lt!1650334)))

(declare-fun bm!310371 () Bool)

(assert (=> bm!310371 (= call!310375 (forall!9900 (ite c!758954 (toList!3935 lt!1650060) (toList!3935 lt!1650330)) (ite c!758954 lambda!161208 lambda!161210)))))

(declare-fun bm!310372 () Bool)

(assert (=> bm!310372 (= call!310377 (forall!9900 (ite c!758954 (toList!3935 lt!1650060) l!12858) (ite c!758954 lambda!161208 lambda!161210)))))

(assert (=> b!4459208 (= e!2776716 lt!1650060)))

(declare-fun lt!1650337 () Unit!86440)

(assert (=> b!4459208 (= lt!1650337 call!310376)))

(assert (=> b!4459208 call!310377))

(declare-fun lt!1650336 () Unit!86440)

(assert (=> b!4459208 (= lt!1650336 lt!1650337)))

(assert (=> b!4459208 call!310375))

(declare-fun lt!1650332 () Unit!86440)

(declare-fun Unit!86486 () Unit!86440)

(assert (=> b!4459208 (= lt!1650332 Unit!86486)))

(declare-fun b!4459209 () Bool)

(declare-fun invariantList!893 (List!50251) Bool)

(assert (=> b!4459209 (= e!2776717 (invariantList!893 (toList!3935 lt!1650334)))))

(declare-fun b!4459210 () Bool)

(assert (=> b!4459210 (= e!2776718 (forall!9900 (toList!3935 lt!1650060) lambda!161210))))

(declare-fun b!4459211 () Bool)

(declare-fun res!1848943 () Bool)

(assert (=> b!4459211 (=> (not res!1848943) (not e!2776717))))

(assert (=> b!4459211 (= res!1848943 (forall!9900 (toList!3935 lt!1650060) lambda!161211))))

(assert (= (and d!1359883 c!758954) b!4459208))

(assert (= (and d!1359883 (not c!758954)) b!4459207))

(assert (= (and b!4459207 res!1848942) b!4459210))

(assert (= (or b!4459208 b!4459207) bm!310370))

(assert (= (or b!4459208 b!4459207) bm!310372))

(assert (= (or b!4459208 b!4459207) bm!310371))

(assert (= (and d!1359883 res!1848944) b!4459211))

(assert (= (and b!4459211 res!1848943) b!4459209))

(declare-fun m!5161997 () Bool)

(assert (=> b!4459209 m!5161997))

(declare-fun m!5161999 () Bool)

(assert (=> bm!310371 m!5161999))

(declare-fun m!5162001 () Bool)

(assert (=> bm!310372 m!5162001))

(declare-fun m!5162003 () Bool)

(assert (=> b!4459211 m!5162003))

(declare-fun m!5162005 () Bool)

(assert (=> b!4459210 m!5162005))

(declare-fun m!5162007 () Bool)

(assert (=> b!4459207 m!5162007))

(declare-fun m!5162009 () Bool)

(assert (=> b!4459207 m!5162009))

(declare-fun m!5162011 () Bool)

(assert (=> b!4459207 m!5162011))

(declare-fun m!5162013 () Bool)

(assert (=> b!4459207 m!5162013))

(assert (=> b!4459207 m!5161643))

(assert (=> b!4459207 m!5161645))

(assert (=> b!4459207 m!5162005))

(declare-fun m!5162015 () Bool)

(assert (=> b!4459207 m!5162015))

(assert (=> b!4459207 m!5162005))

(assert (=> b!4459207 m!5161643))

(declare-fun m!5162017 () Bool)

(assert (=> b!4459207 m!5162017))

(declare-fun m!5162019 () Bool)

(assert (=> b!4459207 m!5162019))

(declare-fun m!5162021 () Bool)

(assert (=> b!4459207 m!5162021))

(declare-fun m!5162023 () Bool)

(assert (=> d!1359883 m!5162023))

(assert (=> d!1359883 m!5161677))

(declare-fun m!5162025 () Bool)

(assert (=> bm!310370 m!5162025))

(assert (=> b!4459029 d!1359883))

(declare-fun b!4459214 () Bool)

(assert (=> b!4459214 false))

(declare-fun lt!1650350 () Unit!86440)

(declare-fun lt!1650355 () Unit!86440)

(assert (=> b!4459214 (= lt!1650350 lt!1650355)))

(assert (=> b!4459214 (containsKey!1361 (toList!3935 lt!1650058) key!4412)))

(assert (=> b!4459214 (= lt!1650355 (lemmaInGetKeysListThenContainsKey!339 (toList!3935 lt!1650058) key!4412))))

(declare-fun e!2776722 () Unit!86440)

(declare-fun Unit!86487 () Unit!86440)

(assert (=> b!4459214 (= e!2776722 Unit!86487)))

(declare-fun b!4459215 () Bool)

(declare-fun e!2776719 () Bool)

(declare-fun e!2776724 () Bool)

(assert (=> b!4459215 (= e!2776719 e!2776724)))

(declare-fun res!1848946 () Bool)

(assert (=> b!4459215 (=> (not res!1848946) (not e!2776724))))

(assert (=> b!4459215 (= res!1848946 (isDefined!8160 (getValueByKey!858 (toList!3935 lt!1650058) key!4412)))))

(declare-fun b!4459216 () Bool)

(declare-fun e!2776721 () Unit!86440)

(declare-fun lt!1650357 () Unit!86440)

(assert (=> b!4459216 (= e!2776721 lt!1650357)))

(declare-fun lt!1650354 () Unit!86440)

(assert (=> b!4459216 (= lt!1650354 (lemmaContainsKeyImpliesGetValueByKeyDefined!763 (toList!3935 lt!1650058) key!4412))))

(assert (=> b!4459216 (isDefined!8160 (getValueByKey!858 (toList!3935 lt!1650058) key!4412))))

(declare-fun lt!1650352 () Unit!86440)

(assert (=> b!4459216 (= lt!1650352 lt!1650354)))

(assert (=> b!4459216 (= lt!1650357 (lemmaInListThenGetKeysListContains!336 (toList!3935 lt!1650058) key!4412))))

(declare-fun call!310378 () Bool)

(assert (=> b!4459216 call!310378))

(declare-fun b!4459217 () Bool)

(declare-fun e!2776723 () List!50254)

(assert (=> b!4459217 (= e!2776723 (getKeysList!340 (toList!3935 lt!1650058)))))

(declare-fun b!4459218 () Bool)

(assert (=> b!4459218 (= e!2776721 e!2776722)))

(declare-fun c!758957 () Bool)

(assert (=> b!4459218 (= c!758957 call!310378)))

(declare-fun b!4459219 () Bool)

(declare-fun e!2776720 () Bool)

(assert (=> b!4459219 (= e!2776720 (not (contains!12629 (keys!17253 lt!1650058) key!4412)))))

(declare-fun bm!310373 () Bool)

(assert (=> bm!310373 (= call!310378 (contains!12629 e!2776723 key!4412))))

(declare-fun c!758955 () Bool)

(declare-fun c!758956 () Bool)

(assert (=> bm!310373 (= c!758955 c!758956)))

(declare-fun b!4459220 () Bool)

(declare-fun Unit!86488 () Unit!86440)

(assert (=> b!4459220 (= e!2776722 Unit!86488)))

(declare-fun b!4459222 () Bool)

(assert (=> b!4459222 (= e!2776723 (keys!17253 lt!1650058))))

(declare-fun d!1359923 () Bool)

(assert (=> d!1359923 e!2776719))

(declare-fun res!1848945 () Bool)

(assert (=> d!1359923 (=> res!1848945 e!2776719)))

(assert (=> d!1359923 (= res!1848945 e!2776720)))

(declare-fun res!1848947 () Bool)

(assert (=> d!1359923 (=> (not res!1848947) (not e!2776720))))

(declare-fun lt!1650353 () Bool)

(assert (=> d!1359923 (= res!1848947 (not lt!1650353))))

(declare-fun lt!1650351 () Bool)

(assert (=> d!1359923 (= lt!1650353 lt!1650351)))

(declare-fun lt!1650356 () Unit!86440)

(assert (=> d!1359923 (= lt!1650356 e!2776721)))

(assert (=> d!1359923 (= c!758956 lt!1650351)))

(assert (=> d!1359923 (= lt!1650351 (containsKey!1361 (toList!3935 lt!1650058) key!4412))))

(assert (=> d!1359923 (= (contains!12626 lt!1650058 key!4412) lt!1650353)))

(declare-fun b!4459221 () Bool)

(assert (=> b!4459221 (= e!2776724 (contains!12629 (keys!17253 lt!1650058) key!4412))))

(assert (= (and d!1359923 c!758956) b!4459216))

(assert (= (and d!1359923 (not c!758956)) b!4459218))

(assert (= (and b!4459218 c!758957) b!4459214))

(assert (= (and b!4459218 (not c!758957)) b!4459220))

(assert (= (or b!4459216 b!4459218) bm!310373))

(assert (= (and bm!310373 c!758955) b!4459217))

(assert (= (and bm!310373 (not c!758955)) b!4459222))

(assert (= (and d!1359923 res!1848947) b!4459219))

(assert (= (and d!1359923 (not res!1848945)) b!4459215))

(assert (= (and b!4459215 res!1848946) b!4459221))

(declare-fun m!5162027 () Bool)

(assert (=> b!4459214 m!5162027))

(declare-fun m!5162029 () Bool)

(assert (=> b!4459214 m!5162029))

(declare-fun m!5162031 () Bool)

(assert (=> bm!310373 m!5162031))

(declare-fun m!5162033 () Bool)

(assert (=> b!4459215 m!5162033))

(assert (=> b!4459215 m!5162033))

(declare-fun m!5162035 () Bool)

(assert (=> b!4459215 m!5162035))

(declare-fun m!5162037 () Bool)

(assert (=> b!4459219 m!5162037))

(assert (=> b!4459219 m!5162037))

(declare-fun m!5162039 () Bool)

(assert (=> b!4459219 m!5162039))

(assert (=> b!4459222 m!5162037))

(assert (=> d!1359923 m!5162027))

(declare-fun m!5162041 () Bool)

(assert (=> b!4459217 m!5162041))

(assert (=> b!4459221 m!5162037))

(assert (=> b!4459221 m!5162037))

(assert (=> b!4459221 m!5162039))

(declare-fun m!5162043 () Bool)

(assert (=> b!4459216 m!5162043))

(assert (=> b!4459216 m!5162033))

(assert (=> b!4459216 m!5162033))

(assert (=> b!4459216 m!5162035))

(declare-fun m!5162045 () Bool)

(assert (=> b!4459216 m!5162045))

(assert (=> b!4459029 d!1359923))

(declare-fun d!1359925 () Bool)

(assert (=> d!1359925 (= (contains!12626 lt!1650058 key!4412) (contains!12626 lt!1650059 key!4412))))

(declare-fun lt!1650360 () Unit!86440)

(declare-fun choose!28407 (ListMap!3173 ListMap!3173 K!11515) Unit!86440)

(assert (=> d!1359925 (= lt!1650360 (choose!28407 lt!1650058 lt!1650059 key!4412))))

(assert (=> d!1359925 (eq!501 lt!1650058 lt!1650059)))

(assert (=> d!1359925 (= (lemmaEquivalentThenSameContains!128 lt!1650058 lt!1650059 key!4412) lt!1650360)))

(declare-fun bs!791299 () Bool)

(assert (= bs!791299 d!1359925))

(assert (=> bs!791299 m!5161669))

(assert (=> bs!791299 m!5161655))

(declare-fun m!5162047 () Bool)

(assert (=> bs!791299 m!5162047))

(assert (=> bs!791299 m!5161635))

(assert (=> b!4459029 d!1359925))

(declare-fun d!1359927 () Bool)

(declare-fun res!1848952 () Bool)

(declare-fun e!2776729 () Bool)

(assert (=> d!1359927 (=> res!1848952 e!2776729)))

(assert (=> d!1359927 (= res!1848952 (not ((_ is Cons!50127) l!12858)))))

(assert (=> d!1359927 (= (noDuplicateKeys!964 l!12858) e!2776729)))

(declare-fun b!4459227 () Bool)

(declare-fun e!2776730 () Bool)

(assert (=> b!4459227 (= e!2776729 e!2776730)))

(declare-fun res!1848953 () Bool)

(assert (=> b!4459227 (=> (not res!1848953) (not e!2776730))))

(declare-fun containsKey!1362 (List!50251 K!11515) Bool)

(assert (=> b!4459227 (= res!1848953 (not (containsKey!1362 (t!357201 l!12858) (_1!28437 (h!55872 l!12858)))))))

(declare-fun b!4459228 () Bool)

(assert (=> b!4459228 (= e!2776730 (noDuplicateKeys!964 (t!357201 l!12858)))))

(assert (= (and d!1359927 (not res!1848952)) b!4459227))

(assert (= (and b!4459227 res!1848953) b!4459228))

(declare-fun m!5162049 () Bool)

(assert (=> b!4459227 m!5162049))

(declare-fun m!5162051 () Bool)

(assert (=> b!4459228 m!5162051))

(assert (=> b!4459023 d!1359927))

(declare-fun d!1359929 () Bool)

(declare-fun res!1848958 () Bool)

(declare-fun e!2776735 () Bool)

(assert (=> d!1359929 (=> res!1848958 e!2776735)))

(assert (=> d!1359929 (= res!1848958 ((_ is Nil!50128) (toList!3936 lm!1853)))))

(assert (=> d!1359929 (= (forall!9898 (toList!3936 lm!1853) lambda!161127) e!2776735)))

(declare-fun b!4459233 () Bool)

(declare-fun e!2776736 () Bool)

(assert (=> b!4459233 (= e!2776735 e!2776736)))

(declare-fun res!1848959 () Bool)

(assert (=> b!4459233 (=> (not res!1848959) (not e!2776736))))

(declare-fun dynLambda!20983 (Int tuple2!50288) Bool)

(assert (=> b!4459233 (= res!1848959 (dynLambda!20983 lambda!161127 (h!55873 (toList!3936 lm!1853))))))

(declare-fun b!4459234 () Bool)

(assert (=> b!4459234 (= e!2776736 (forall!9898 (t!357202 (toList!3936 lm!1853)) lambda!161127))))

(assert (= (and d!1359929 (not res!1848958)) b!4459233))

(assert (= (and b!4459233 res!1848959) b!4459234))

(declare-fun b_lambda!147745 () Bool)

(assert (=> (not b_lambda!147745) (not b!4459233)))

(declare-fun m!5162053 () Bool)

(assert (=> b!4459233 m!5162053))

(declare-fun m!5162055 () Bool)

(assert (=> b!4459234 m!5162055))

(assert (=> start!437168 d!1359929))

(declare-fun d!1359931 () Bool)

(declare-fun isStrictlySorted!320 (List!50252) Bool)

(assert (=> d!1359931 (= (inv!65701 lm!1853) (isStrictlySorted!320 (toList!3936 lm!1853)))))

(declare-fun bs!791300 () Bool)

(assert (= bs!791300 d!1359931))

(declare-fun m!5162057 () Bool)

(assert (=> bs!791300 m!5162057))

(assert (=> start!437168 d!1359931))

(declare-fun d!1359933 () Bool)

(declare-fun e!2776739 () Bool)

(assert (=> d!1359933 e!2776739))

(declare-fun res!1848964 () Bool)

(assert (=> d!1359933 (=> (not res!1848964) (not e!2776739))))

(declare-fun lt!1650371 () ListMap!3173)

(assert (=> d!1359933 (= res!1848964 (contains!12626 lt!1650371 (_1!28437 (h!55872 l!12858))))))

(declare-fun lt!1650370 () List!50251)

(assert (=> d!1359933 (= lt!1650371 (ListMap!3174 lt!1650370))))

(declare-fun lt!1650372 () Unit!86440)

(declare-fun lt!1650369 () Unit!86440)

(assert (=> d!1359933 (= lt!1650372 lt!1650369)))

(assert (=> d!1359933 (= (getValueByKey!858 lt!1650370 (_1!28437 (h!55872 l!12858))) (Some!10871 (_2!28437 (h!55872 l!12858))))))

(declare-fun lemmaContainsTupThenGetReturnValue!556 (List!50251 K!11515 V!11761) Unit!86440)

(assert (=> d!1359933 (= lt!1650369 (lemmaContainsTupThenGetReturnValue!556 lt!1650370 (_1!28437 (h!55872 l!12858)) (_2!28437 (h!55872 l!12858))))))

(declare-fun insertNoDuplicatedKeys!250 (List!50251 K!11515 V!11761) List!50251)

(assert (=> d!1359933 (= lt!1650370 (insertNoDuplicatedKeys!250 (toList!3935 lt!1650061) (_1!28437 (h!55872 l!12858)) (_2!28437 (h!55872 l!12858))))))

(assert (=> d!1359933 (= (+!1320 lt!1650061 (h!55872 l!12858)) lt!1650371)))

(declare-fun b!4459239 () Bool)

(declare-fun res!1848965 () Bool)

(assert (=> b!4459239 (=> (not res!1848965) (not e!2776739))))

(assert (=> b!4459239 (= res!1848965 (= (getValueByKey!858 (toList!3935 lt!1650371) (_1!28437 (h!55872 l!12858))) (Some!10871 (_2!28437 (h!55872 l!12858)))))))

(declare-fun b!4459240 () Bool)

(declare-fun contains!12630 (List!50251 tuple2!50286) Bool)

(assert (=> b!4459240 (= e!2776739 (contains!12630 (toList!3935 lt!1650371) (h!55872 l!12858)))))

(assert (= (and d!1359933 res!1848964) b!4459239))

(assert (= (and b!4459239 res!1848965) b!4459240))

(declare-fun m!5162059 () Bool)

(assert (=> d!1359933 m!5162059))

(declare-fun m!5162061 () Bool)

(assert (=> d!1359933 m!5162061))

(declare-fun m!5162063 () Bool)

(assert (=> d!1359933 m!5162063))

(declare-fun m!5162065 () Bool)

(assert (=> d!1359933 m!5162065))

(declare-fun m!5162067 () Bool)

(assert (=> b!4459239 m!5162067))

(declare-fun m!5162069 () Bool)

(assert (=> b!4459240 m!5162069))

(assert (=> b!4459028 d!1359933))

(declare-fun bs!791301 () Bool)

(declare-fun b!4459242 () Bool)

(assert (= bs!791301 (and b!4459242 b!4459208)))

(declare-fun lambda!161212 () Int)

(assert (=> bs!791301 (= lambda!161212 lambda!161208)))

(declare-fun bs!791302 () Bool)

(assert (= bs!791302 (and b!4459242 b!4459207)))

(assert (=> bs!791302 (= lambda!161212 lambda!161209)))

(assert (=> bs!791302 (= (= lt!1650060 lt!1650342) (= lambda!161212 lambda!161210))))

(declare-fun bs!791303 () Bool)

(assert (= bs!791303 (and b!4459242 d!1359883)))

(assert (=> bs!791303 (= (= lt!1650060 lt!1650334) (= lambda!161212 lambda!161211))))

(assert (=> b!4459242 true))

(declare-fun bs!791304 () Bool)

(declare-fun b!4459241 () Bool)

(assert (= bs!791304 (and b!4459241 b!4459207)))

(declare-fun lambda!161213 () Int)

(assert (=> bs!791304 (= (= lt!1650060 lt!1650342) (= lambda!161213 lambda!161210))))

(declare-fun bs!791305 () Bool)

(assert (= bs!791305 (and b!4459241 b!4459242)))

(assert (=> bs!791305 (= lambda!161213 lambda!161212)))

(assert (=> bs!791304 (= lambda!161213 lambda!161209)))

(declare-fun bs!791306 () Bool)

(assert (= bs!791306 (and b!4459241 d!1359883)))

(assert (=> bs!791306 (= (= lt!1650060 lt!1650334) (= lambda!161213 lambda!161211))))

(declare-fun bs!791307 () Bool)

(assert (= bs!791307 (and b!4459241 b!4459208)))

(assert (=> bs!791307 (= lambda!161213 lambda!161208)))

(assert (=> b!4459241 true))

(declare-fun lambda!161214 () Int)

(declare-fun lt!1650386 () ListMap!3173)

(assert (=> bs!791304 (= (= lt!1650386 lt!1650342) (= lambda!161214 lambda!161210))))

(assert (=> bs!791305 (= (= lt!1650386 lt!1650060) (= lambda!161214 lambda!161212))))

(assert (=> bs!791304 (= (= lt!1650386 lt!1650060) (= lambda!161214 lambda!161209))))

(assert (=> bs!791306 (= (= lt!1650386 lt!1650334) (= lambda!161214 lambda!161211))))

(assert (=> b!4459241 (= (= lt!1650386 lt!1650060) (= lambda!161214 lambda!161213))))

(assert (=> bs!791307 (= (= lt!1650386 lt!1650060) (= lambda!161214 lambda!161208))))

(assert (=> b!4459241 true))

(declare-fun bs!791308 () Bool)

(declare-fun d!1359935 () Bool)

(assert (= bs!791308 (and d!1359935 b!4459207)))

(declare-fun lambda!161215 () Int)

(declare-fun lt!1650378 () ListMap!3173)

(assert (=> bs!791308 (= (= lt!1650378 lt!1650342) (= lambda!161215 lambda!161210))))

(declare-fun bs!791309 () Bool)

(assert (= bs!791309 (and d!1359935 b!4459242)))

(assert (=> bs!791309 (= (= lt!1650378 lt!1650060) (= lambda!161215 lambda!161212))))

(assert (=> bs!791308 (= (= lt!1650378 lt!1650060) (= lambda!161215 lambda!161209))))

(declare-fun bs!791310 () Bool)

(assert (= bs!791310 (and d!1359935 b!4459241)))

(assert (=> bs!791310 (= (= lt!1650378 lt!1650386) (= lambda!161215 lambda!161214))))

(declare-fun bs!791311 () Bool)

(assert (= bs!791311 (and d!1359935 d!1359883)))

(assert (=> bs!791311 (= (= lt!1650378 lt!1650334) (= lambda!161215 lambda!161211))))

(assert (=> bs!791310 (= (= lt!1650378 lt!1650060) (= lambda!161215 lambda!161213))))

(declare-fun bs!791312 () Bool)

(assert (= bs!791312 (and d!1359935 b!4459208)))

(assert (=> bs!791312 (= (= lt!1650378 lt!1650060) (= lambda!161215 lambda!161208))))

(assert (=> d!1359935 true))

(declare-fun bm!310374 () Bool)

(declare-fun call!310380 () Unit!86440)

(assert (=> bm!310374 (= call!310380 (lemmaContainsAllItsOwnKeys!241 lt!1650060))))

(declare-fun e!2776740 () ListMap!3173)

(assert (=> b!4459241 (= e!2776740 lt!1650386)))

(declare-fun lt!1650374 () ListMap!3173)

(assert (=> b!4459241 (= lt!1650374 (+!1320 lt!1650060 (h!55872 (t!357201 l!12858))))))

(assert (=> b!4459241 (= lt!1650386 (addToMapMapFromBucket!545 (t!357201 (t!357201 l!12858)) (+!1320 lt!1650060 (h!55872 (t!357201 l!12858)))))))

(declare-fun lt!1650385 () Unit!86440)

(assert (=> b!4459241 (= lt!1650385 call!310380)))

(assert (=> b!4459241 (forall!9900 (toList!3935 lt!1650060) lambda!161213)))

(declare-fun lt!1650382 () Unit!86440)

(assert (=> b!4459241 (= lt!1650382 lt!1650385)))

(declare-fun call!310379 () Bool)

(assert (=> b!4459241 call!310379))

(declare-fun lt!1650373 () Unit!86440)

(declare-fun Unit!86500 () Unit!86440)

(assert (=> b!4459241 (= lt!1650373 Unit!86500)))

(assert (=> b!4459241 (forall!9900 (t!357201 (t!357201 l!12858)) lambda!161214)))

(declare-fun lt!1650388 () Unit!86440)

(declare-fun Unit!86501 () Unit!86440)

(assert (=> b!4459241 (= lt!1650388 Unit!86501)))

(declare-fun lt!1650387 () Unit!86440)

(declare-fun Unit!86502 () Unit!86440)

(assert (=> b!4459241 (= lt!1650387 Unit!86502)))

(declare-fun lt!1650392 () Unit!86440)

(assert (=> b!4459241 (= lt!1650392 (forallContained!2191 (toList!3935 lt!1650374) lambda!161214 (h!55872 (t!357201 l!12858))))))

(assert (=> b!4459241 (contains!12626 lt!1650374 (_1!28437 (h!55872 (t!357201 l!12858))))))

(declare-fun lt!1650384 () Unit!86440)

(declare-fun Unit!86503 () Unit!86440)

(assert (=> b!4459241 (= lt!1650384 Unit!86503)))

(assert (=> b!4459241 (contains!12626 lt!1650386 (_1!28437 (h!55872 (t!357201 l!12858))))))

(declare-fun lt!1650389 () Unit!86440)

(declare-fun Unit!86504 () Unit!86440)

(assert (=> b!4459241 (= lt!1650389 Unit!86504)))

(assert (=> b!4459241 (forall!9900 (t!357201 l!12858) lambda!161214)))

(declare-fun lt!1650391 () Unit!86440)

(declare-fun Unit!86505 () Unit!86440)

(assert (=> b!4459241 (= lt!1650391 Unit!86505)))

(assert (=> b!4459241 (forall!9900 (toList!3935 lt!1650374) lambda!161214)))

(declare-fun lt!1650390 () Unit!86440)

(declare-fun Unit!86506 () Unit!86440)

(assert (=> b!4459241 (= lt!1650390 Unit!86506)))

(declare-fun lt!1650375 () Unit!86440)

(declare-fun Unit!86507 () Unit!86440)

(assert (=> b!4459241 (= lt!1650375 Unit!86507)))

(declare-fun lt!1650383 () Unit!86440)

(assert (=> b!4459241 (= lt!1650383 (addForallContainsKeyThenBeforeAdding!240 lt!1650060 lt!1650386 (_1!28437 (h!55872 (t!357201 l!12858))) (_2!28437 (h!55872 (t!357201 l!12858)))))))

(assert (=> b!4459241 (forall!9900 (toList!3935 lt!1650060) lambda!161214)))

(declare-fun lt!1650377 () Unit!86440)

(assert (=> b!4459241 (= lt!1650377 lt!1650383)))

(assert (=> b!4459241 (forall!9900 (toList!3935 lt!1650060) lambda!161214)))

(declare-fun lt!1650393 () Unit!86440)

(declare-fun Unit!86508 () Unit!86440)

(assert (=> b!4459241 (= lt!1650393 Unit!86508)))

(declare-fun res!1848966 () Bool)

(declare-fun call!310381 () Bool)

(assert (=> b!4459241 (= res!1848966 call!310381)))

(declare-fun e!2776742 () Bool)

(assert (=> b!4459241 (=> (not res!1848966) (not e!2776742))))

(assert (=> b!4459241 e!2776742))

(declare-fun lt!1650379 () Unit!86440)

(declare-fun Unit!86509 () Unit!86440)

(assert (=> b!4459241 (= lt!1650379 Unit!86509)))

(declare-fun e!2776741 () Bool)

(assert (=> d!1359935 e!2776741))

(declare-fun res!1848968 () Bool)

(assert (=> d!1359935 (=> (not res!1848968) (not e!2776741))))

(assert (=> d!1359935 (= res!1848968 (forall!9900 (t!357201 l!12858) lambda!161215))))

(assert (=> d!1359935 (= lt!1650378 e!2776740)))

(declare-fun c!758958 () Bool)

(assert (=> d!1359935 (= c!758958 ((_ is Nil!50127) (t!357201 l!12858)))))

(assert (=> d!1359935 (noDuplicateKeys!964 (t!357201 l!12858))))

(assert (=> d!1359935 (= (addToMapMapFromBucket!545 (t!357201 l!12858) lt!1650060) lt!1650378)))

(declare-fun bm!310375 () Bool)

(assert (=> bm!310375 (= call!310379 (forall!9900 (ite c!758958 (toList!3935 lt!1650060) (toList!3935 lt!1650374)) (ite c!758958 lambda!161212 lambda!161214)))))

(declare-fun bm!310376 () Bool)

(assert (=> bm!310376 (= call!310381 (forall!9900 (ite c!758958 (toList!3935 lt!1650060) (t!357201 l!12858)) (ite c!758958 lambda!161212 lambda!161214)))))

(assert (=> b!4459242 (= e!2776740 lt!1650060)))

(declare-fun lt!1650381 () Unit!86440)

(assert (=> b!4459242 (= lt!1650381 call!310380)))

(assert (=> b!4459242 call!310381))

(declare-fun lt!1650380 () Unit!86440)

(assert (=> b!4459242 (= lt!1650380 lt!1650381)))

(assert (=> b!4459242 call!310379))

(declare-fun lt!1650376 () Unit!86440)

(declare-fun Unit!86510 () Unit!86440)

(assert (=> b!4459242 (= lt!1650376 Unit!86510)))

(declare-fun b!4459243 () Bool)

(assert (=> b!4459243 (= e!2776741 (invariantList!893 (toList!3935 lt!1650378)))))

(declare-fun b!4459244 () Bool)

(assert (=> b!4459244 (= e!2776742 (forall!9900 (toList!3935 lt!1650060) lambda!161214))))

(declare-fun b!4459245 () Bool)

(declare-fun res!1848967 () Bool)

(assert (=> b!4459245 (=> (not res!1848967) (not e!2776741))))

(assert (=> b!4459245 (= res!1848967 (forall!9900 (toList!3935 lt!1650060) lambda!161215))))

(assert (= (and d!1359935 c!758958) b!4459242))

(assert (= (and d!1359935 (not c!758958)) b!4459241))

(assert (= (and b!4459241 res!1848966) b!4459244))

(assert (= (or b!4459242 b!4459241) bm!310374))

(assert (= (or b!4459242 b!4459241) bm!310376))

(assert (= (or b!4459242 b!4459241) bm!310375))

(assert (= (and d!1359935 res!1848968) b!4459245))

(assert (= (and b!4459245 res!1848967) b!4459243))

(declare-fun m!5162071 () Bool)

(assert (=> b!4459243 m!5162071))

(declare-fun m!5162073 () Bool)

(assert (=> bm!310375 m!5162073))

(declare-fun m!5162075 () Bool)

(assert (=> bm!310376 m!5162075))

(declare-fun m!5162077 () Bool)

(assert (=> b!4459245 m!5162077))

(declare-fun m!5162079 () Bool)

(assert (=> b!4459244 m!5162079))

(declare-fun m!5162081 () Bool)

(assert (=> b!4459241 m!5162081))

(declare-fun m!5162083 () Bool)

(assert (=> b!4459241 m!5162083))

(declare-fun m!5162085 () Bool)

(assert (=> b!4459241 m!5162085))

(declare-fun m!5162087 () Bool)

(assert (=> b!4459241 m!5162087))

(declare-fun m!5162089 () Bool)

(assert (=> b!4459241 m!5162089))

(declare-fun m!5162091 () Bool)

(assert (=> b!4459241 m!5162091))

(assert (=> b!4459241 m!5162079))

(declare-fun m!5162093 () Bool)

(assert (=> b!4459241 m!5162093))

(assert (=> b!4459241 m!5162079))

(assert (=> b!4459241 m!5162089))

(declare-fun m!5162095 () Bool)

(assert (=> b!4459241 m!5162095))

(declare-fun m!5162097 () Bool)

(assert (=> b!4459241 m!5162097))

(declare-fun m!5162099 () Bool)

(assert (=> b!4459241 m!5162099))

(declare-fun m!5162101 () Bool)

(assert (=> d!1359935 m!5162101))

(assert (=> d!1359935 m!5162051))

(assert (=> bm!310374 m!5162025))

(assert (=> b!4459028 d!1359935))

(declare-fun b!4459246 () Bool)

(assert (=> b!4459246 false))

(declare-fun lt!1650394 () Unit!86440)

(declare-fun lt!1650399 () Unit!86440)

(assert (=> b!4459246 (= lt!1650394 lt!1650399)))

(assert (=> b!4459246 (containsKey!1361 (toList!3935 lt!1650053) key!4412)))

(assert (=> b!4459246 (= lt!1650399 (lemmaInGetKeysListThenContainsKey!339 (toList!3935 lt!1650053) key!4412))))

(declare-fun e!2776746 () Unit!86440)

(declare-fun Unit!86513 () Unit!86440)

(assert (=> b!4459246 (= e!2776746 Unit!86513)))

(declare-fun b!4459247 () Bool)

(declare-fun e!2776743 () Bool)

(declare-fun e!2776748 () Bool)

(assert (=> b!4459247 (= e!2776743 e!2776748)))

(declare-fun res!1848970 () Bool)

(assert (=> b!4459247 (=> (not res!1848970) (not e!2776748))))

(assert (=> b!4459247 (= res!1848970 (isDefined!8160 (getValueByKey!858 (toList!3935 lt!1650053) key!4412)))))

(declare-fun b!4459248 () Bool)

(declare-fun e!2776745 () Unit!86440)

(declare-fun lt!1650401 () Unit!86440)

(assert (=> b!4459248 (= e!2776745 lt!1650401)))

(declare-fun lt!1650398 () Unit!86440)

(assert (=> b!4459248 (= lt!1650398 (lemmaContainsKeyImpliesGetValueByKeyDefined!763 (toList!3935 lt!1650053) key!4412))))

(assert (=> b!4459248 (isDefined!8160 (getValueByKey!858 (toList!3935 lt!1650053) key!4412))))

(declare-fun lt!1650396 () Unit!86440)

(assert (=> b!4459248 (= lt!1650396 lt!1650398)))

(assert (=> b!4459248 (= lt!1650401 (lemmaInListThenGetKeysListContains!336 (toList!3935 lt!1650053) key!4412))))

(declare-fun call!310382 () Bool)

(assert (=> b!4459248 call!310382))

(declare-fun b!4459249 () Bool)

(declare-fun e!2776747 () List!50254)

(assert (=> b!4459249 (= e!2776747 (getKeysList!340 (toList!3935 lt!1650053)))))

(declare-fun b!4459250 () Bool)

(assert (=> b!4459250 (= e!2776745 e!2776746)))

(declare-fun c!758961 () Bool)

(assert (=> b!4459250 (= c!758961 call!310382)))

(declare-fun b!4459251 () Bool)

(declare-fun e!2776744 () Bool)

(assert (=> b!4459251 (= e!2776744 (not (contains!12629 (keys!17253 lt!1650053) key!4412)))))

(declare-fun bm!310377 () Bool)

(assert (=> bm!310377 (= call!310382 (contains!12629 e!2776747 key!4412))))

(declare-fun c!758959 () Bool)

(declare-fun c!758960 () Bool)

(assert (=> bm!310377 (= c!758959 c!758960)))

(declare-fun b!4459252 () Bool)

(declare-fun Unit!86514 () Unit!86440)

(assert (=> b!4459252 (= e!2776746 Unit!86514)))

(declare-fun b!4459254 () Bool)

(assert (=> b!4459254 (= e!2776747 (keys!17253 lt!1650053))))

(declare-fun d!1359937 () Bool)

(assert (=> d!1359937 e!2776743))

(declare-fun res!1848969 () Bool)

(assert (=> d!1359937 (=> res!1848969 e!2776743)))

(assert (=> d!1359937 (= res!1848969 e!2776744)))

(declare-fun res!1848971 () Bool)

(assert (=> d!1359937 (=> (not res!1848971) (not e!2776744))))

(declare-fun lt!1650397 () Bool)

(assert (=> d!1359937 (= res!1848971 (not lt!1650397))))

(declare-fun lt!1650395 () Bool)

(assert (=> d!1359937 (= lt!1650397 lt!1650395)))

(declare-fun lt!1650400 () Unit!86440)

(assert (=> d!1359937 (= lt!1650400 e!2776745)))

(assert (=> d!1359937 (= c!758960 lt!1650395)))

(assert (=> d!1359937 (= lt!1650395 (containsKey!1361 (toList!3935 lt!1650053) key!4412))))

(assert (=> d!1359937 (= (contains!12626 lt!1650053 key!4412) lt!1650397)))

(declare-fun b!4459253 () Bool)

(assert (=> b!4459253 (= e!2776748 (contains!12629 (keys!17253 lt!1650053) key!4412))))

(assert (= (and d!1359937 c!758960) b!4459248))

(assert (= (and d!1359937 (not c!758960)) b!4459250))

(assert (= (and b!4459250 c!758961) b!4459246))

(assert (= (and b!4459250 (not c!758961)) b!4459252))

(assert (= (or b!4459248 b!4459250) bm!310377))

(assert (= (and bm!310377 c!758959) b!4459249))

(assert (= (and bm!310377 (not c!758959)) b!4459254))

(assert (= (and d!1359937 res!1848971) b!4459251))

(assert (= (and d!1359937 (not res!1848969)) b!4459247))

(assert (= (and b!4459247 res!1848970) b!4459253))

(declare-fun m!5162103 () Bool)

(assert (=> b!4459246 m!5162103))

(declare-fun m!5162105 () Bool)

(assert (=> b!4459246 m!5162105))

(declare-fun m!5162107 () Bool)

(assert (=> bm!310377 m!5162107))

(declare-fun m!5162109 () Bool)

(assert (=> b!4459247 m!5162109))

(assert (=> b!4459247 m!5162109))

(declare-fun m!5162111 () Bool)

(assert (=> b!4459247 m!5162111))

(declare-fun m!5162113 () Bool)

(assert (=> b!4459251 m!5162113))

(assert (=> b!4459251 m!5162113))

(declare-fun m!5162115 () Bool)

(assert (=> b!4459251 m!5162115))

(assert (=> b!4459254 m!5162113))

(assert (=> d!1359937 m!5162103))

(declare-fun m!5162117 () Bool)

(assert (=> b!4459249 m!5162117))

(assert (=> b!4459253 m!5162113))

(assert (=> b!4459253 m!5162113))

(assert (=> b!4459253 m!5162115))

(declare-fun m!5162119 () Bool)

(assert (=> b!4459248 m!5162119))

(assert (=> b!4459248 m!5162109))

(assert (=> b!4459248 m!5162109))

(assert (=> b!4459248 m!5162111))

(declare-fun m!5162121 () Bool)

(assert (=> b!4459248 m!5162121))

(assert (=> b!4459028 d!1359937))

(declare-fun bs!791313 () Bool)

(declare-fun d!1359939 () Bool)

(assert (= bs!791313 (and d!1359939 start!437168)))

(declare-fun lambda!161218 () Int)

(assert (=> bs!791313 (= lambda!161218 lambda!161127)))

(declare-fun bs!791314 () Bool)

(assert (= bs!791314 (and d!1359939 d!1359877)))

(assert (=> bs!791314 (not (= lambda!161218 lambda!161133))))

(assert (=> d!1359939 (contains!12626 (addToMapMapFromBucket!545 (t!357201 l!12858) (extractMap!1032 (toList!3936 lm!1853))) key!4412)))

(declare-fun lt!1650404 () Unit!86440)

(declare-fun choose!28408 (ListLongMap!2591 K!11515 List!50251 Hashable!5371) Unit!86440)

(assert (=> d!1359939 (= lt!1650404 (choose!28408 lm!1853 key!4412 (t!357201 l!12858) hashF!1313))))

(assert (=> d!1359939 (forall!9898 (toList!3936 lm!1853) lambda!161218)))

(assert (=> d!1359939 (= (lemmaAddToMapMaintainsContains!50 lm!1853 key!4412 (t!357201 l!12858) hashF!1313) lt!1650404)))

(declare-fun bs!791315 () Bool)

(assert (= bs!791315 d!1359939))

(declare-fun m!5162123 () Bool)

(assert (=> bs!791315 m!5162123))

(declare-fun m!5162125 () Bool)

(assert (=> bs!791315 m!5162125))

(assert (=> bs!791315 m!5161675))

(declare-fun m!5162127 () Bool)

(assert (=> bs!791315 m!5162127))

(assert (=> bs!791315 m!5162127))

(declare-fun m!5162129 () Bool)

(assert (=> bs!791315 m!5162129))

(assert (=> bs!791315 m!5161675))

(assert (=> b!4459028 d!1359939))

(declare-fun b!4459255 () Bool)

(assert (=> b!4459255 false))

(declare-fun lt!1650405 () Unit!86440)

(declare-fun lt!1650410 () Unit!86440)

(assert (=> b!4459255 (= lt!1650405 lt!1650410)))

(assert (=> b!4459255 (containsKey!1361 (toList!3935 lt!1650059) key!4412)))

(assert (=> b!4459255 (= lt!1650410 (lemmaInGetKeysListThenContainsKey!339 (toList!3935 lt!1650059) key!4412))))

(declare-fun e!2776752 () Unit!86440)

(declare-fun Unit!86515 () Unit!86440)

(assert (=> b!4459255 (= e!2776752 Unit!86515)))

(declare-fun b!4459256 () Bool)

(declare-fun e!2776749 () Bool)

(declare-fun e!2776754 () Bool)

(assert (=> b!4459256 (= e!2776749 e!2776754)))

(declare-fun res!1848973 () Bool)

(assert (=> b!4459256 (=> (not res!1848973) (not e!2776754))))

(assert (=> b!4459256 (= res!1848973 (isDefined!8160 (getValueByKey!858 (toList!3935 lt!1650059) key!4412)))))

(declare-fun b!4459257 () Bool)

(declare-fun e!2776751 () Unit!86440)

(declare-fun lt!1650412 () Unit!86440)

(assert (=> b!4459257 (= e!2776751 lt!1650412)))

(declare-fun lt!1650409 () Unit!86440)

(assert (=> b!4459257 (= lt!1650409 (lemmaContainsKeyImpliesGetValueByKeyDefined!763 (toList!3935 lt!1650059) key!4412))))

(assert (=> b!4459257 (isDefined!8160 (getValueByKey!858 (toList!3935 lt!1650059) key!4412))))

(declare-fun lt!1650407 () Unit!86440)

(assert (=> b!4459257 (= lt!1650407 lt!1650409)))

(assert (=> b!4459257 (= lt!1650412 (lemmaInListThenGetKeysListContains!336 (toList!3935 lt!1650059) key!4412))))

(declare-fun call!310383 () Bool)

(assert (=> b!4459257 call!310383))

(declare-fun b!4459258 () Bool)

(declare-fun e!2776753 () List!50254)

(assert (=> b!4459258 (= e!2776753 (getKeysList!340 (toList!3935 lt!1650059)))))

(declare-fun b!4459259 () Bool)

(assert (=> b!4459259 (= e!2776751 e!2776752)))

(declare-fun c!758964 () Bool)

(assert (=> b!4459259 (= c!758964 call!310383)))

(declare-fun b!4459260 () Bool)

(declare-fun e!2776750 () Bool)

(assert (=> b!4459260 (= e!2776750 (not (contains!12629 (keys!17253 lt!1650059) key!4412)))))

(declare-fun bm!310378 () Bool)

(assert (=> bm!310378 (= call!310383 (contains!12629 e!2776753 key!4412))))

(declare-fun c!758962 () Bool)

(declare-fun c!758963 () Bool)

(assert (=> bm!310378 (= c!758962 c!758963)))

(declare-fun b!4459261 () Bool)

(declare-fun Unit!86516 () Unit!86440)

(assert (=> b!4459261 (= e!2776752 Unit!86516)))

(declare-fun b!4459263 () Bool)

(assert (=> b!4459263 (= e!2776753 (keys!17253 lt!1650059))))

(declare-fun d!1359941 () Bool)

(assert (=> d!1359941 e!2776749))

(declare-fun res!1848972 () Bool)

(assert (=> d!1359941 (=> res!1848972 e!2776749)))

(assert (=> d!1359941 (= res!1848972 e!2776750)))

(declare-fun res!1848974 () Bool)

(assert (=> d!1359941 (=> (not res!1848974) (not e!2776750))))

(declare-fun lt!1650408 () Bool)

(assert (=> d!1359941 (= res!1848974 (not lt!1650408))))

(declare-fun lt!1650406 () Bool)

(assert (=> d!1359941 (= lt!1650408 lt!1650406)))

(declare-fun lt!1650411 () Unit!86440)

(assert (=> d!1359941 (= lt!1650411 e!2776751)))

(assert (=> d!1359941 (= c!758963 lt!1650406)))

(assert (=> d!1359941 (= lt!1650406 (containsKey!1361 (toList!3935 lt!1650059) key!4412))))

(assert (=> d!1359941 (= (contains!12626 lt!1650059 key!4412) lt!1650408)))

(declare-fun b!4459262 () Bool)

(assert (=> b!4459262 (= e!2776754 (contains!12629 (keys!17253 lt!1650059) key!4412))))

(assert (= (and d!1359941 c!758963) b!4459257))

(assert (= (and d!1359941 (not c!758963)) b!4459259))

(assert (= (and b!4459259 c!758964) b!4459255))

(assert (= (and b!4459259 (not c!758964)) b!4459261))

(assert (= (or b!4459257 b!4459259) bm!310378))

(assert (= (and bm!310378 c!758962) b!4459258))

(assert (= (and bm!310378 (not c!758962)) b!4459263))

(assert (= (and d!1359941 res!1848974) b!4459260))

(assert (= (and d!1359941 (not res!1848972)) b!4459256))

(assert (= (and b!4459256 res!1848973) b!4459262))

(declare-fun m!5162131 () Bool)

(assert (=> b!4459255 m!5162131))

(declare-fun m!5162133 () Bool)

(assert (=> b!4459255 m!5162133))

(declare-fun m!5162135 () Bool)

(assert (=> bm!310378 m!5162135))

(declare-fun m!5162137 () Bool)

(assert (=> b!4459256 m!5162137))

(assert (=> b!4459256 m!5162137))

(declare-fun m!5162139 () Bool)

(assert (=> b!4459256 m!5162139))

(declare-fun m!5162141 () Bool)

(assert (=> b!4459260 m!5162141))

(assert (=> b!4459260 m!5162141))

(declare-fun m!5162143 () Bool)

(assert (=> b!4459260 m!5162143))

(assert (=> b!4459263 m!5162141))

(assert (=> d!1359941 m!5162131))

(declare-fun m!5162145 () Bool)

(assert (=> b!4459258 m!5162145))

(assert (=> b!4459262 m!5162141))

(assert (=> b!4459262 m!5162141))

(assert (=> b!4459262 m!5162143))

(declare-fun m!5162147 () Bool)

(assert (=> b!4459257 m!5162147))

(assert (=> b!4459257 m!5162137))

(assert (=> b!4459257 m!5162137))

(assert (=> b!4459257 m!5162139))

(declare-fun m!5162149 () Bool)

(assert (=> b!4459257 m!5162149))

(assert (=> b!4459028 d!1359941))

(declare-fun d!1359943 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!8053 (List!50251) (InoxSet tuple2!50286))

(assert (=> d!1359943 (= (eq!501 lt!1650058 lt!1650059) (= (content!8053 (toList!3935 lt!1650058)) (content!8053 (toList!3935 lt!1650059))))))

(declare-fun bs!791316 () Bool)

(assert (= bs!791316 d!1359943))

(declare-fun m!5162151 () Bool)

(assert (=> bs!791316 m!5162151))

(declare-fun m!5162153 () Bool)

(assert (=> bs!791316 m!5162153))

(assert (=> b!4459028 d!1359943))

(declare-fun bs!791317 () Bool)

(declare-fun b!4459265 () Bool)

(assert (= bs!791317 (and b!4459265 b!4459207)))

(declare-fun lambda!161219 () Int)

(assert (=> bs!791317 (= (= (+!1320 lt!1650060 (h!55872 l!12858)) lt!1650342) (= lambda!161219 lambda!161210))))

(declare-fun bs!791318 () Bool)

(assert (= bs!791318 (and b!4459265 b!4459242)))

(assert (=> bs!791318 (= (= (+!1320 lt!1650060 (h!55872 l!12858)) lt!1650060) (= lambda!161219 lambda!161212))))

(declare-fun bs!791319 () Bool)

(assert (= bs!791319 (and b!4459265 d!1359935)))

(assert (=> bs!791319 (= (= (+!1320 lt!1650060 (h!55872 l!12858)) lt!1650378) (= lambda!161219 lambda!161215))))

(assert (=> bs!791317 (= (= (+!1320 lt!1650060 (h!55872 l!12858)) lt!1650060) (= lambda!161219 lambda!161209))))

(declare-fun bs!791320 () Bool)

(assert (= bs!791320 (and b!4459265 b!4459241)))

(assert (=> bs!791320 (= (= (+!1320 lt!1650060 (h!55872 l!12858)) lt!1650386) (= lambda!161219 lambda!161214))))

(declare-fun bs!791321 () Bool)

(assert (= bs!791321 (and b!4459265 d!1359883)))

(assert (=> bs!791321 (= (= (+!1320 lt!1650060 (h!55872 l!12858)) lt!1650334) (= lambda!161219 lambda!161211))))

(assert (=> bs!791320 (= (= (+!1320 lt!1650060 (h!55872 l!12858)) lt!1650060) (= lambda!161219 lambda!161213))))

(declare-fun bs!791322 () Bool)

(assert (= bs!791322 (and b!4459265 b!4459208)))

(assert (=> bs!791322 (= (= (+!1320 lt!1650060 (h!55872 l!12858)) lt!1650060) (= lambda!161219 lambda!161208))))

(assert (=> b!4459265 true))

(declare-fun bs!791323 () Bool)

(declare-fun b!4459264 () Bool)

(assert (= bs!791323 (and b!4459264 b!4459207)))

(declare-fun lambda!161220 () Int)

(assert (=> bs!791323 (= (= (+!1320 lt!1650060 (h!55872 l!12858)) lt!1650342) (= lambda!161220 lambda!161210))))

(declare-fun bs!791324 () Bool)

(assert (= bs!791324 (and b!4459264 b!4459242)))

(assert (=> bs!791324 (= (= (+!1320 lt!1650060 (h!55872 l!12858)) lt!1650060) (= lambda!161220 lambda!161212))))

(declare-fun bs!791325 () Bool)

(assert (= bs!791325 (and b!4459264 d!1359935)))

(assert (=> bs!791325 (= (= (+!1320 lt!1650060 (h!55872 l!12858)) lt!1650378) (= lambda!161220 lambda!161215))))

(assert (=> bs!791323 (= (= (+!1320 lt!1650060 (h!55872 l!12858)) lt!1650060) (= lambda!161220 lambda!161209))))

(declare-fun bs!791326 () Bool)

(assert (= bs!791326 (and b!4459264 b!4459241)))

(assert (=> bs!791326 (= (= (+!1320 lt!1650060 (h!55872 l!12858)) lt!1650386) (= lambda!161220 lambda!161214))))

(declare-fun bs!791327 () Bool)

(assert (= bs!791327 (and b!4459264 d!1359883)))

(assert (=> bs!791327 (= (= (+!1320 lt!1650060 (h!55872 l!12858)) lt!1650334) (= lambda!161220 lambda!161211))))

(assert (=> bs!791326 (= (= (+!1320 lt!1650060 (h!55872 l!12858)) lt!1650060) (= lambda!161220 lambda!161213))))

(declare-fun bs!791328 () Bool)

(assert (= bs!791328 (and b!4459264 b!4459265)))

(assert (=> bs!791328 (= lambda!161220 lambda!161219)))

(declare-fun bs!791329 () Bool)

(assert (= bs!791329 (and b!4459264 b!4459208)))

(assert (=> bs!791329 (= (= (+!1320 lt!1650060 (h!55872 l!12858)) lt!1650060) (= lambda!161220 lambda!161208))))

(assert (=> b!4459264 true))

(declare-fun lambda!161221 () Int)

(declare-fun lt!1650426 () ListMap!3173)

(assert (=> b!4459264 (= (= lt!1650426 (+!1320 lt!1650060 (h!55872 l!12858))) (= lambda!161221 lambda!161220))))

(assert (=> bs!791323 (= (= lt!1650426 lt!1650342) (= lambda!161221 lambda!161210))))

(assert (=> bs!791324 (= (= lt!1650426 lt!1650060) (= lambda!161221 lambda!161212))))

(assert (=> bs!791325 (= (= lt!1650426 lt!1650378) (= lambda!161221 lambda!161215))))

(assert (=> bs!791323 (= (= lt!1650426 lt!1650060) (= lambda!161221 lambda!161209))))

(assert (=> bs!791326 (= (= lt!1650426 lt!1650386) (= lambda!161221 lambda!161214))))

(assert (=> bs!791327 (= (= lt!1650426 lt!1650334) (= lambda!161221 lambda!161211))))

(assert (=> bs!791326 (= (= lt!1650426 lt!1650060) (= lambda!161221 lambda!161213))))

(assert (=> bs!791328 (= (= lt!1650426 (+!1320 lt!1650060 (h!55872 l!12858))) (= lambda!161221 lambda!161219))))

(assert (=> bs!791329 (= (= lt!1650426 lt!1650060) (= lambda!161221 lambda!161208))))

(assert (=> b!4459264 true))

(declare-fun bs!791330 () Bool)

(declare-fun d!1359945 () Bool)

(assert (= bs!791330 (and d!1359945 b!4459264)))

(declare-fun lambda!161222 () Int)

(declare-fun lt!1650418 () ListMap!3173)

(assert (=> bs!791330 (= (= lt!1650418 (+!1320 lt!1650060 (h!55872 l!12858))) (= lambda!161222 lambda!161220))))

(declare-fun bs!791331 () Bool)

(assert (= bs!791331 (and d!1359945 b!4459207)))

(assert (=> bs!791331 (= (= lt!1650418 lt!1650342) (= lambda!161222 lambda!161210))))

(declare-fun bs!791332 () Bool)

(assert (= bs!791332 (and d!1359945 b!4459242)))

(assert (=> bs!791332 (= (= lt!1650418 lt!1650060) (= lambda!161222 lambda!161212))))

(declare-fun bs!791333 () Bool)

(assert (= bs!791333 (and d!1359945 d!1359935)))

(assert (=> bs!791333 (= (= lt!1650418 lt!1650378) (= lambda!161222 lambda!161215))))

(assert (=> bs!791331 (= (= lt!1650418 lt!1650060) (= lambda!161222 lambda!161209))))

(declare-fun bs!791334 () Bool)

(assert (= bs!791334 (and d!1359945 b!4459241)))

(assert (=> bs!791334 (= (= lt!1650418 lt!1650386) (= lambda!161222 lambda!161214))))

(assert (=> bs!791330 (= (= lt!1650418 lt!1650426) (= lambda!161222 lambda!161221))))

(declare-fun bs!791335 () Bool)

(assert (= bs!791335 (and d!1359945 d!1359883)))

(assert (=> bs!791335 (= (= lt!1650418 lt!1650334) (= lambda!161222 lambda!161211))))

(assert (=> bs!791334 (= (= lt!1650418 lt!1650060) (= lambda!161222 lambda!161213))))

(declare-fun bs!791336 () Bool)

(assert (= bs!791336 (and d!1359945 b!4459265)))

(assert (=> bs!791336 (= (= lt!1650418 (+!1320 lt!1650060 (h!55872 l!12858))) (= lambda!161222 lambda!161219))))

(declare-fun bs!791337 () Bool)

(assert (= bs!791337 (and d!1359945 b!4459208)))

(assert (=> bs!791337 (= (= lt!1650418 lt!1650060) (= lambda!161222 lambda!161208))))

(assert (=> d!1359945 true))

(declare-fun bm!310379 () Bool)

(declare-fun call!310385 () Unit!86440)

(assert (=> bm!310379 (= call!310385 (lemmaContainsAllItsOwnKeys!241 (+!1320 lt!1650060 (h!55872 l!12858))))))

(declare-fun e!2776755 () ListMap!3173)

(assert (=> b!4459264 (= e!2776755 lt!1650426)))

(declare-fun lt!1650414 () ListMap!3173)

(assert (=> b!4459264 (= lt!1650414 (+!1320 (+!1320 lt!1650060 (h!55872 l!12858)) (h!55872 (t!357201 l!12858))))))

(assert (=> b!4459264 (= lt!1650426 (addToMapMapFromBucket!545 (t!357201 (t!357201 l!12858)) (+!1320 (+!1320 lt!1650060 (h!55872 l!12858)) (h!55872 (t!357201 l!12858)))))))

(declare-fun lt!1650425 () Unit!86440)

(assert (=> b!4459264 (= lt!1650425 call!310385)))

(assert (=> b!4459264 (forall!9900 (toList!3935 (+!1320 lt!1650060 (h!55872 l!12858))) lambda!161220)))

(declare-fun lt!1650422 () Unit!86440)

(assert (=> b!4459264 (= lt!1650422 lt!1650425)))

(declare-fun call!310384 () Bool)

(assert (=> b!4459264 call!310384))

(declare-fun lt!1650413 () Unit!86440)

(declare-fun Unit!86517 () Unit!86440)

(assert (=> b!4459264 (= lt!1650413 Unit!86517)))

(assert (=> b!4459264 (forall!9900 (t!357201 (t!357201 l!12858)) lambda!161221)))

(declare-fun lt!1650428 () Unit!86440)

(declare-fun Unit!86518 () Unit!86440)

(assert (=> b!4459264 (= lt!1650428 Unit!86518)))

(declare-fun lt!1650427 () Unit!86440)

(declare-fun Unit!86519 () Unit!86440)

(assert (=> b!4459264 (= lt!1650427 Unit!86519)))

(declare-fun lt!1650432 () Unit!86440)

(assert (=> b!4459264 (= lt!1650432 (forallContained!2191 (toList!3935 lt!1650414) lambda!161221 (h!55872 (t!357201 l!12858))))))

(assert (=> b!4459264 (contains!12626 lt!1650414 (_1!28437 (h!55872 (t!357201 l!12858))))))

(declare-fun lt!1650424 () Unit!86440)

(declare-fun Unit!86520 () Unit!86440)

(assert (=> b!4459264 (= lt!1650424 Unit!86520)))

(assert (=> b!4459264 (contains!12626 lt!1650426 (_1!28437 (h!55872 (t!357201 l!12858))))))

(declare-fun lt!1650429 () Unit!86440)

(declare-fun Unit!86521 () Unit!86440)

(assert (=> b!4459264 (= lt!1650429 Unit!86521)))

(assert (=> b!4459264 (forall!9900 (t!357201 l!12858) lambda!161221)))

(declare-fun lt!1650431 () Unit!86440)

(declare-fun Unit!86522 () Unit!86440)

(assert (=> b!4459264 (= lt!1650431 Unit!86522)))

(assert (=> b!4459264 (forall!9900 (toList!3935 lt!1650414) lambda!161221)))

(declare-fun lt!1650430 () Unit!86440)

(declare-fun Unit!86523 () Unit!86440)

(assert (=> b!4459264 (= lt!1650430 Unit!86523)))

(declare-fun lt!1650415 () Unit!86440)

(declare-fun Unit!86524 () Unit!86440)

(assert (=> b!4459264 (= lt!1650415 Unit!86524)))

(declare-fun lt!1650423 () Unit!86440)

(assert (=> b!4459264 (= lt!1650423 (addForallContainsKeyThenBeforeAdding!240 (+!1320 lt!1650060 (h!55872 l!12858)) lt!1650426 (_1!28437 (h!55872 (t!357201 l!12858))) (_2!28437 (h!55872 (t!357201 l!12858)))))))

(assert (=> b!4459264 (forall!9900 (toList!3935 (+!1320 lt!1650060 (h!55872 l!12858))) lambda!161221)))

(declare-fun lt!1650417 () Unit!86440)

(assert (=> b!4459264 (= lt!1650417 lt!1650423)))

(assert (=> b!4459264 (forall!9900 (toList!3935 (+!1320 lt!1650060 (h!55872 l!12858))) lambda!161221)))

(declare-fun lt!1650433 () Unit!86440)

(declare-fun Unit!86525 () Unit!86440)

(assert (=> b!4459264 (= lt!1650433 Unit!86525)))

(declare-fun res!1848975 () Bool)

(declare-fun call!310386 () Bool)

(assert (=> b!4459264 (= res!1848975 call!310386)))

(declare-fun e!2776757 () Bool)

(assert (=> b!4459264 (=> (not res!1848975) (not e!2776757))))

(assert (=> b!4459264 e!2776757))

(declare-fun lt!1650419 () Unit!86440)

(declare-fun Unit!86526 () Unit!86440)

(assert (=> b!4459264 (= lt!1650419 Unit!86526)))

(declare-fun e!2776756 () Bool)

(assert (=> d!1359945 e!2776756))

(declare-fun res!1848977 () Bool)

(assert (=> d!1359945 (=> (not res!1848977) (not e!2776756))))

(assert (=> d!1359945 (= res!1848977 (forall!9900 (t!357201 l!12858) lambda!161222))))

(assert (=> d!1359945 (= lt!1650418 e!2776755)))

(declare-fun c!758965 () Bool)

(assert (=> d!1359945 (= c!758965 ((_ is Nil!50127) (t!357201 l!12858)))))

(assert (=> d!1359945 (noDuplicateKeys!964 (t!357201 l!12858))))

(assert (=> d!1359945 (= (addToMapMapFromBucket!545 (t!357201 l!12858) (+!1320 lt!1650060 (h!55872 l!12858))) lt!1650418)))

(declare-fun bm!310380 () Bool)

(assert (=> bm!310380 (= call!310384 (forall!9900 (ite c!758965 (toList!3935 (+!1320 lt!1650060 (h!55872 l!12858))) (toList!3935 lt!1650414)) (ite c!758965 lambda!161219 lambda!161221)))))

(declare-fun bm!310381 () Bool)

(assert (=> bm!310381 (= call!310386 (forall!9900 (ite c!758965 (toList!3935 (+!1320 lt!1650060 (h!55872 l!12858))) (t!357201 l!12858)) (ite c!758965 lambda!161219 lambda!161221)))))

(assert (=> b!4459265 (= e!2776755 (+!1320 lt!1650060 (h!55872 l!12858)))))

(declare-fun lt!1650421 () Unit!86440)

(assert (=> b!4459265 (= lt!1650421 call!310385)))

(assert (=> b!4459265 call!310386))

(declare-fun lt!1650420 () Unit!86440)

(assert (=> b!4459265 (= lt!1650420 lt!1650421)))

(assert (=> b!4459265 call!310384))

(declare-fun lt!1650416 () Unit!86440)

(declare-fun Unit!86527 () Unit!86440)

(assert (=> b!4459265 (= lt!1650416 Unit!86527)))

(declare-fun b!4459266 () Bool)

(assert (=> b!4459266 (= e!2776756 (invariantList!893 (toList!3935 lt!1650418)))))

(declare-fun b!4459267 () Bool)

(assert (=> b!4459267 (= e!2776757 (forall!9900 (toList!3935 (+!1320 lt!1650060 (h!55872 l!12858))) lambda!161221))))

(declare-fun b!4459268 () Bool)

(declare-fun res!1848976 () Bool)

(assert (=> b!4459268 (=> (not res!1848976) (not e!2776756))))

(assert (=> b!4459268 (= res!1848976 (forall!9900 (toList!3935 (+!1320 lt!1650060 (h!55872 l!12858))) lambda!161222))))

(assert (= (and d!1359945 c!758965) b!4459265))

(assert (= (and d!1359945 (not c!758965)) b!4459264))

(assert (= (and b!4459264 res!1848975) b!4459267))

(assert (= (or b!4459265 b!4459264) bm!310379))

(assert (= (or b!4459265 b!4459264) bm!310381))

(assert (= (or b!4459265 b!4459264) bm!310380))

(assert (= (and d!1359945 res!1848977) b!4459268))

(assert (= (and b!4459268 res!1848976) b!4459266))

(declare-fun m!5162155 () Bool)

(assert (=> b!4459266 m!5162155))

(declare-fun m!5162157 () Bool)

(assert (=> bm!310380 m!5162157))

(declare-fun m!5162159 () Bool)

(assert (=> bm!310381 m!5162159))

(declare-fun m!5162161 () Bool)

(assert (=> b!4459268 m!5162161))

(declare-fun m!5162163 () Bool)

(assert (=> b!4459267 m!5162163))

(declare-fun m!5162165 () Bool)

(assert (=> b!4459264 m!5162165))

(declare-fun m!5162167 () Bool)

(assert (=> b!4459264 m!5162167))

(declare-fun m!5162169 () Bool)

(assert (=> b!4459264 m!5162169))

(declare-fun m!5162171 () Bool)

(assert (=> b!4459264 m!5162171))

(declare-fun m!5162173 () Bool)

(assert (=> b!4459264 m!5162173))

(declare-fun m!5162175 () Bool)

(assert (=> b!4459264 m!5162175))

(assert (=> b!4459264 m!5162163))

(declare-fun m!5162177 () Bool)

(assert (=> b!4459264 m!5162177))

(assert (=> b!4459264 m!5162163))

(assert (=> b!4459264 m!5161643))

(assert (=> b!4459264 m!5162173))

(declare-fun m!5162179 () Bool)

(assert (=> b!4459264 m!5162179))

(assert (=> b!4459264 m!5161643))

(declare-fun m!5162181 () Bool)

(assert (=> b!4459264 m!5162181))

(declare-fun m!5162183 () Bool)

(assert (=> b!4459264 m!5162183))

(declare-fun m!5162185 () Bool)

(assert (=> d!1359945 m!5162185))

(assert (=> d!1359945 m!5162051))

(assert (=> bm!310379 m!5161643))

(declare-fun m!5162187 () Bool)

(assert (=> bm!310379 m!5162187))

(assert (=> b!4459028 d!1359945))

(declare-fun d!1359947 () Bool)

(assert (=> d!1359947 (eq!501 (addToMapMapFromBucket!545 (t!357201 l!12858) (+!1320 lt!1650060 (tuple2!50287 (_1!28437 (h!55872 l!12858)) (_2!28437 (h!55872 l!12858))))) (+!1320 (addToMapMapFromBucket!545 (t!357201 l!12858) lt!1650060) (tuple2!50287 (_1!28437 (h!55872 l!12858)) (_2!28437 (h!55872 l!12858)))))))

(declare-fun lt!1650436 () Unit!86440)

(declare-fun choose!28409 (ListMap!3173 K!11515 V!11761 List!50251) Unit!86440)

(assert (=> d!1359947 (= lt!1650436 (choose!28409 lt!1650060 (_1!28437 (h!55872 l!12858)) (_2!28437 (h!55872 l!12858)) (t!357201 l!12858)))))

(assert (=> d!1359947 (not (containsKey!1362 (t!357201 l!12858) (_1!28437 (h!55872 l!12858))))))

(assert (=> d!1359947 (= (lemmaAddToMapFromBucketPlusKeyValueIsCommutative!248 lt!1650060 (_1!28437 (h!55872 l!12858)) (_2!28437 (h!55872 l!12858)) (t!357201 l!12858)) lt!1650436)))

(declare-fun bs!791338 () Bool)

(assert (= bs!791338 d!1359947))

(declare-fun m!5162189 () Bool)

(assert (=> bs!791338 m!5162189))

(declare-fun m!5162191 () Bool)

(assert (=> bs!791338 m!5162191))

(declare-fun m!5162193 () Bool)

(assert (=> bs!791338 m!5162193))

(declare-fun m!5162195 () Bool)

(assert (=> bs!791338 m!5162195))

(assert (=> bs!791338 m!5161637))

(assert (=> bs!791338 m!5162049))

(declare-fun m!5162197 () Bool)

(assert (=> bs!791338 m!5162197))

(assert (=> bs!791338 m!5162189))

(assert (=> bs!791338 m!5162197))

(assert (=> bs!791338 m!5161637))

(assert (=> bs!791338 m!5162191))

(assert (=> b!4459028 d!1359947))

(declare-fun d!1359949 () Bool)

(assert (=> d!1359949 (contains!12626 (+!1320 lt!1650061 (tuple2!50287 (_1!28437 (h!55872 l!12858)) (_2!28437 (h!55872 l!12858)))) key!4412)))

(declare-fun lt!1650439 () Unit!86440)

(declare-fun choose!28410 (ListMap!3173 K!11515 V!11761 K!11515) Unit!86440)

(assert (=> d!1359949 (= lt!1650439 (choose!28410 lt!1650061 (_1!28437 (h!55872 l!12858)) (_2!28437 (h!55872 l!12858)) key!4412))))

(assert (=> d!1359949 (contains!12626 lt!1650061 key!4412)))

(assert (=> d!1359949 (= (addStillContains!22 lt!1650061 (_1!28437 (h!55872 l!12858)) (_2!28437 (h!55872 l!12858)) key!4412) lt!1650439)))

(declare-fun bs!791339 () Bool)

(assert (= bs!791339 d!1359949))

(declare-fun m!5162199 () Bool)

(assert (=> bs!791339 m!5162199))

(assert (=> bs!791339 m!5162199))

(declare-fun m!5162201 () Bool)

(assert (=> bs!791339 m!5162201))

(declare-fun m!5162203 () Bool)

(assert (=> bs!791339 m!5162203))

(assert (=> bs!791339 m!5161657))

(assert (=> b!4459028 d!1359949))

(declare-fun d!1359951 () Bool)

(assert (=> d!1359951 (= (eq!501 lt!1650062 lt!1650053) (= (content!8053 (toList!3935 lt!1650062)) (content!8053 (toList!3935 lt!1650053))))))

(declare-fun bs!791340 () Bool)

(assert (= bs!791340 d!1359951))

(declare-fun m!5162205 () Bool)

(assert (=> bs!791340 m!5162205))

(declare-fun m!5162207 () Bool)

(assert (=> bs!791340 m!5162207))

(assert (=> b!4459028 d!1359951))

(declare-fun b!4459270 () Bool)

(assert (=> b!4459270 false))

(declare-fun lt!1650440 () Unit!86440)

(declare-fun lt!1650445 () Unit!86440)

(assert (=> b!4459270 (= lt!1650440 lt!1650445)))

(assert (=> b!4459270 (containsKey!1361 (toList!3935 lt!1650061) key!4412)))

(assert (=> b!4459270 (= lt!1650445 (lemmaInGetKeysListThenContainsKey!339 (toList!3935 lt!1650061) key!4412))))

(declare-fun e!2776761 () Unit!86440)

(declare-fun Unit!86528 () Unit!86440)

(assert (=> b!4459270 (= e!2776761 Unit!86528)))

(declare-fun b!4459271 () Bool)

(declare-fun e!2776758 () Bool)

(declare-fun e!2776763 () Bool)

(assert (=> b!4459271 (= e!2776758 e!2776763)))

(declare-fun res!1848979 () Bool)

(assert (=> b!4459271 (=> (not res!1848979) (not e!2776763))))

(assert (=> b!4459271 (= res!1848979 (isDefined!8160 (getValueByKey!858 (toList!3935 lt!1650061) key!4412)))))

(declare-fun b!4459272 () Bool)

(declare-fun e!2776760 () Unit!86440)

(declare-fun lt!1650447 () Unit!86440)

(assert (=> b!4459272 (= e!2776760 lt!1650447)))

(declare-fun lt!1650444 () Unit!86440)

(assert (=> b!4459272 (= lt!1650444 (lemmaContainsKeyImpliesGetValueByKeyDefined!763 (toList!3935 lt!1650061) key!4412))))

(assert (=> b!4459272 (isDefined!8160 (getValueByKey!858 (toList!3935 lt!1650061) key!4412))))

(declare-fun lt!1650442 () Unit!86440)

(assert (=> b!4459272 (= lt!1650442 lt!1650444)))

(assert (=> b!4459272 (= lt!1650447 (lemmaInListThenGetKeysListContains!336 (toList!3935 lt!1650061) key!4412))))

(declare-fun call!310387 () Bool)

(assert (=> b!4459272 call!310387))

(declare-fun b!4459273 () Bool)

(declare-fun e!2776762 () List!50254)

(assert (=> b!4459273 (= e!2776762 (getKeysList!340 (toList!3935 lt!1650061)))))

(declare-fun b!4459274 () Bool)

(assert (=> b!4459274 (= e!2776760 e!2776761)))

(declare-fun c!758968 () Bool)

(assert (=> b!4459274 (= c!758968 call!310387)))

(declare-fun b!4459275 () Bool)

(declare-fun e!2776759 () Bool)

(assert (=> b!4459275 (= e!2776759 (not (contains!12629 (keys!17253 lt!1650061) key!4412)))))

(declare-fun bm!310382 () Bool)

(assert (=> bm!310382 (= call!310387 (contains!12629 e!2776762 key!4412))))

(declare-fun c!758966 () Bool)

(declare-fun c!758967 () Bool)

(assert (=> bm!310382 (= c!758966 c!758967)))

(declare-fun b!4459276 () Bool)

(declare-fun Unit!86529 () Unit!86440)

(assert (=> b!4459276 (= e!2776761 Unit!86529)))

(declare-fun b!4459278 () Bool)

(assert (=> b!4459278 (= e!2776762 (keys!17253 lt!1650061))))

(declare-fun d!1359953 () Bool)

(assert (=> d!1359953 e!2776758))

(declare-fun res!1848978 () Bool)

(assert (=> d!1359953 (=> res!1848978 e!2776758)))

(assert (=> d!1359953 (= res!1848978 e!2776759)))

(declare-fun res!1848980 () Bool)

(assert (=> d!1359953 (=> (not res!1848980) (not e!2776759))))

(declare-fun lt!1650443 () Bool)

(assert (=> d!1359953 (= res!1848980 (not lt!1650443))))

(declare-fun lt!1650441 () Bool)

(assert (=> d!1359953 (= lt!1650443 lt!1650441)))

(declare-fun lt!1650446 () Unit!86440)

(assert (=> d!1359953 (= lt!1650446 e!2776760)))

(assert (=> d!1359953 (= c!758967 lt!1650441)))

(assert (=> d!1359953 (= lt!1650441 (containsKey!1361 (toList!3935 lt!1650061) key!4412))))

(assert (=> d!1359953 (= (contains!12626 lt!1650061 key!4412) lt!1650443)))

(declare-fun b!4459277 () Bool)

(assert (=> b!4459277 (= e!2776763 (contains!12629 (keys!17253 lt!1650061) key!4412))))

(assert (= (and d!1359953 c!758967) b!4459272))

(assert (= (and d!1359953 (not c!758967)) b!4459274))

(assert (= (and b!4459274 c!758968) b!4459270))

(assert (= (and b!4459274 (not c!758968)) b!4459276))

(assert (= (or b!4459272 b!4459274) bm!310382))

(assert (= (and bm!310382 c!758966) b!4459273))

(assert (= (and bm!310382 (not c!758966)) b!4459278))

(assert (= (and d!1359953 res!1848980) b!4459275))

(assert (= (and d!1359953 (not res!1848978)) b!4459271))

(assert (= (and b!4459271 res!1848979) b!4459277))

(declare-fun m!5162209 () Bool)

(assert (=> b!4459270 m!5162209))

(declare-fun m!5162211 () Bool)

(assert (=> b!4459270 m!5162211))

(declare-fun m!5162213 () Bool)

(assert (=> bm!310382 m!5162213))

(declare-fun m!5162215 () Bool)

(assert (=> b!4459271 m!5162215))

(assert (=> b!4459271 m!5162215))

(declare-fun m!5162217 () Bool)

(assert (=> b!4459271 m!5162217))

(declare-fun m!5162219 () Bool)

(assert (=> b!4459275 m!5162219))

(assert (=> b!4459275 m!5162219))

(declare-fun m!5162221 () Bool)

(assert (=> b!4459275 m!5162221))

(assert (=> b!4459278 m!5162219))

(assert (=> d!1359953 m!5162209))

(declare-fun m!5162223 () Bool)

(assert (=> b!4459273 m!5162223))

(assert (=> b!4459277 m!5162219))

(assert (=> b!4459277 m!5162219))

(assert (=> b!4459277 m!5162221))

(declare-fun m!5162225 () Bool)

(assert (=> b!4459272 m!5162225))

(assert (=> b!4459272 m!5162215))

(assert (=> b!4459272 m!5162215))

(assert (=> b!4459272 m!5162217))

(declare-fun m!5162227 () Bool)

(assert (=> b!4459272 m!5162227))

(assert (=> b!4459028 d!1359953))

(declare-fun d!1359955 () Bool)

(declare-fun e!2776764 () Bool)

(assert (=> d!1359955 e!2776764))

(declare-fun res!1848981 () Bool)

(assert (=> d!1359955 (=> (not res!1848981) (not e!2776764))))

(declare-fun lt!1650450 () ListMap!3173)

(assert (=> d!1359955 (= res!1848981 (contains!12626 lt!1650450 (_1!28437 (h!55872 l!12858))))))

(declare-fun lt!1650449 () List!50251)

(assert (=> d!1359955 (= lt!1650450 (ListMap!3174 lt!1650449))))

(declare-fun lt!1650451 () Unit!86440)

(declare-fun lt!1650448 () Unit!86440)

(assert (=> d!1359955 (= lt!1650451 lt!1650448)))

(assert (=> d!1359955 (= (getValueByKey!858 lt!1650449 (_1!28437 (h!55872 l!12858))) (Some!10871 (_2!28437 (h!55872 l!12858))))))

(assert (=> d!1359955 (= lt!1650448 (lemmaContainsTupThenGetReturnValue!556 lt!1650449 (_1!28437 (h!55872 l!12858)) (_2!28437 (h!55872 l!12858))))))

(assert (=> d!1359955 (= lt!1650449 (insertNoDuplicatedKeys!250 (toList!3935 lt!1650060) (_1!28437 (h!55872 l!12858)) (_2!28437 (h!55872 l!12858))))))

(assert (=> d!1359955 (= (+!1320 lt!1650060 (h!55872 l!12858)) lt!1650450)))

(declare-fun b!4459279 () Bool)

(declare-fun res!1848982 () Bool)

(assert (=> b!4459279 (=> (not res!1848982) (not e!2776764))))

(assert (=> b!4459279 (= res!1848982 (= (getValueByKey!858 (toList!3935 lt!1650450) (_1!28437 (h!55872 l!12858))) (Some!10871 (_2!28437 (h!55872 l!12858)))))))

(declare-fun b!4459280 () Bool)

(assert (=> b!4459280 (= e!2776764 (contains!12630 (toList!3935 lt!1650450) (h!55872 l!12858)))))

(assert (= (and d!1359955 res!1848981) b!4459279))

(assert (= (and b!4459279 res!1848982) b!4459280))

(declare-fun m!5162229 () Bool)

(assert (=> d!1359955 m!5162229))

(declare-fun m!5162231 () Bool)

(assert (=> d!1359955 m!5162231))

(declare-fun m!5162233 () Bool)

(assert (=> d!1359955 m!5162233))

(declare-fun m!5162235 () Bool)

(assert (=> d!1359955 m!5162235))

(declare-fun m!5162237 () Bool)

(assert (=> b!4459279 m!5162237))

(declare-fun m!5162239 () Bool)

(assert (=> b!4459280 m!5162239))

(assert (=> b!4459028 d!1359955))

(declare-fun b!4459281 () Bool)

(assert (=> b!4459281 false))

(declare-fun lt!1650452 () Unit!86440)

(declare-fun lt!1650457 () Unit!86440)

(assert (=> b!4459281 (= lt!1650452 lt!1650457)))

(assert (=> b!4459281 (containsKey!1361 (toList!3935 lt!1650060) key!4412)))

(assert (=> b!4459281 (= lt!1650457 (lemmaInGetKeysListThenContainsKey!339 (toList!3935 lt!1650060) key!4412))))

(declare-fun e!2776768 () Unit!86440)

(declare-fun Unit!86530 () Unit!86440)

(assert (=> b!4459281 (= e!2776768 Unit!86530)))

(declare-fun b!4459282 () Bool)

(declare-fun e!2776765 () Bool)

(declare-fun e!2776770 () Bool)

(assert (=> b!4459282 (= e!2776765 e!2776770)))

(declare-fun res!1848984 () Bool)

(assert (=> b!4459282 (=> (not res!1848984) (not e!2776770))))

(assert (=> b!4459282 (= res!1848984 (isDefined!8160 (getValueByKey!858 (toList!3935 lt!1650060) key!4412)))))

(declare-fun b!4459283 () Bool)

(declare-fun e!2776767 () Unit!86440)

(declare-fun lt!1650459 () Unit!86440)

(assert (=> b!4459283 (= e!2776767 lt!1650459)))

(declare-fun lt!1650456 () Unit!86440)

(assert (=> b!4459283 (= lt!1650456 (lemmaContainsKeyImpliesGetValueByKeyDefined!763 (toList!3935 lt!1650060) key!4412))))

(assert (=> b!4459283 (isDefined!8160 (getValueByKey!858 (toList!3935 lt!1650060) key!4412))))

(declare-fun lt!1650454 () Unit!86440)

(assert (=> b!4459283 (= lt!1650454 lt!1650456)))

(assert (=> b!4459283 (= lt!1650459 (lemmaInListThenGetKeysListContains!336 (toList!3935 lt!1650060) key!4412))))

(declare-fun call!310388 () Bool)

(assert (=> b!4459283 call!310388))

(declare-fun b!4459284 () Bool)

(declare-fun e!2776769 () List!50254)

(assert (=> b!4459284 (= e!2776769 (getKeysList!340 (toList!3935 lt!1650060)))))

(declare-fun b!4459285 () Bool)

(assert (=> b!4459285 (= e!2776767 e!2776768)))

(declare-fun c!758971 () Bool)

(assert (=> b!4459285 (= c!758971 call!310388)))

(declare-fun b!4459286 () Bool)

(declare-fun e!2776766 () Bool)

(assert (=> b!4459286 (= e!2776766 (not (contains!12629 (keys!17253 lt!1650060) key!4412)))))

(declare-fun bm!310383 () Bool)

(assert (=> bm!310383 (= call!310388 (contains!12629 e!2776769 key!4412))))

(declare-fun c!758969 () Bool)

(declare-fun c!758970 () Bool)

(assert (=> bm!310383 (= c!758969 c!758970)))

(declare-fun b!4459287 () Bool)

(declare-fun Unit!86531 () Unit!86440)

(assert (=> b!4459287 (= e!2776768 Unit!86531)))

(declare-fun b!4459289 () Bool)

(assert (=> b!4459289 (= e!2776769 (keys!17253 lt!1650060))))

(declare-fun d!1359957 () Bool)

(assert (=> d!1359957 e!2776765))

(declare-fun res!1848983 () Bool)

(assert (=> d!1359957 (=> res!1848983 e!2776765)))

(assert (=> d!1359957 (= res!1848983 e!2776766)))

(declare-fun res!1848985 () Bool)

(assert (=> d!1359957 (=> (not res!1848985) (not e!2776766))))

(declare-fun lt!1650455 () Bool)

(assert (=> d!1359957 (= res!1848985 (not lt!1650455))))

(declare-fun lt!1650453 () Bool)

(assert (=> d!1359957 (= lt!1650455 lt!1650453)))

(declare-fun lt!1650458 () Unit!86440)

(assert (=> d!1359957 (= lt!1650458 e!2776767)))

(assert (=> d!1359957 (= c!758970 lt!1650453)))

(assert (=> d!1359957 (= lt!1650453 (containsKey!1361 (toList!3935 lt!1650060) key!4412))))

(assert (=> d!1359957 (= (contains!12626 lt!1650060 key!4412) lt!1650455)))

(declare-fun b!4459288 () Bool)

(assert (=> b!4459288 (= e!2776770 (contains!12629 (keys!17253 lt!1650060) key!4412))))

(assert (= (and d!1359957 c!758970) b!4459283))

(assert (= (and d!1359957 (not c!758970)) b!4459285))

(assert (= (and b!4459285 c!758971) b!4459281))

(assert (= (and b!4459285 (not c!758971)) b!4459287))

(assert (= (or b!4459283 b!4459285) bm!310383))

(assert (= (and bm!310383 c!758969) b!4459284))

(assert (= (and bm!310383 (not c!758969)) b!4459289))

(assert (= (and d!1359957 res!1848985) b!4459286))

(assert (= (and d!1359957 (not res!1848983)) b!4459282))

(assert (= (and b!4459282 res!1848984) b!4459288))

(declare-fun m!5162241 () Bool)

(assert (=> b!4459281 m!5162241))

(declare-fun m!5162243 () Bool)

(assert (=> b!4459281 m!5162243))

(declare-fun m!5162245 () Bool)

(assert (=> bm!310383 m!5162245))

(declare-fun m!5162247 () Bool)

(assert (=> b!4459282 m!5162247))

(assert (=> b!4459282 m!5162247))

(declare-fun m!5162249 () Bool)

(assert (=> b!4459282 m!5162249))

(declare-fun m!5162251 () Bool)

(assert (=> b!4459286 m!5162251))

(assert (=> b!4459286 m!5162251))

(declare-fun m!5162253 () Bool)

(assert (=> b!4459286 m!5162253))

(assert (=> b!4459289 m!5162251))

(assert (=> d!1359957 m!5162241))

(declare-fun m!5162255 () Bool)

(assert (=> b!4459284 m!5162255))

(assert (=> b!4459288 m!5162251))

(assert (=> b!4459288 m!5162251))

(assert (=> b!4459288 m!5162253))

(declare-fun m!5162257 () Bool)

(assert (=> b!4459283 m!5162257))

(assert (=> b!4459283 m!5162247))

(assert (=> b!4459283 m!5162247))

(assert (=> b!4459283 m!5162249))

(declare-fun m!5162259 () Bool)

(assert (=> b!4459283 m!5162259))

(assert (=> b!4459022 d!1359957))

(declare-fun bs!791341 () Bool)

(declare-fun d!1359959 () Bool)

(assert (= bs!791341 (and d!1359959 start!437168)))

(declare-fun lambda!161225 () Int)

(assert (=> bs!791341 (= lambda!161225 lambda!161127)))

(declare-fun bs!791342 () Bool)

(assert (= bs!791342 (and d!1359959 d!1359877)))

(assert (=> bs!791342 (not (= lambda!161225 lambda!161133))))

(declare-fun bs!791343 () Bool)

(assert (= bs!791343 (and d!1359959 d!1359939)))

(assert (=> bs!791343 (= lambda!161225 lambda!161218)))

(declare-fun lt!1650462 () ListMap!3173)

(assert (=> d!1359959 (invariantList!893 (toList!3935 lt!1650462))))

(declare-fun e!2776773 () ListMap!3173)

(assert (=> d!1359959 (= lt!1650462 e!2776773)))

(declare-fun c!758974 () Bool)

(assert (=> d!1359959 (= c!758974 ((_ is Cons!50128) (toList!3936 lm!1853)))))

(assert (=> d!1359959 (forall!9898 (toList!3936 lm!1853) lambda!161225)))

(assert (=> d!1359959 (= (extractMap!1032 (toList!3936 lm!1853)) lt!1650462)))

(declare-fun b!4459294 () Bool)

(assert (=> b!4459294 (= e!2776773 (addToMapMapFromBucket!545 (_2!28438 (h!55873 (toList!3936 lm!1853))) (extractMap!1032 (t!357202 (toList!3936 lm!1853)))))))

(declare-fun b!4459295 () Bool)

(assert (=> b!4459295 (= e!2776773 (ListMap!3174 Nil!50127))))

(assert (= (and d!1359959 c!758974) b!4459294))

(assert (= (and d!1359959 (not c!758974)) b!4459295))

(declare-fun m!5162261 () Bool)

(assert (=> d!1359959 m!5162261))

(declare-fun m!5162263 () Bool)

(assert (=> d!1359959 m!5162263))

(declare-fun m!5162265 () Bool)

(assert (=> b!4459294 m!5162265))

(assert (=> b!4459294 m!5162265))

(declare-fun m!5162267 () Bool)

(assert (=> b!4459294 m!5162267))

(assert (=> b!4459022 d!1359959))

(declare-fun e!2776776 () Bool)

(declare-fun tp!1335505 () Bool)

(declare-fun b!4459300 () Bool)

(assert (=> b!4459300 (= e!2776776 (and tp_is_empty!27077 tp_is_empty!27079 tp!1335505))))

(assert (=> b!4459025 (= tp!1335493 e!2776776)))

(assert (= (and b!4459025 ((_ is Cons!50127) (t!357201 l!12858))) b!4459300))

(declare-fun b!4459305 () Bool)

(declare-fun e!2776779 () Bool)

(declare-fun tp!1335510 () Bool)

(declare-fun tp!1335511 () Bool)

(assert (=> b!4459305 (= e!2776779 (and tp!1335510 tp!1335511))))

(assert (=> b!4459027 (= tp!1335492 e!2776779)))

(assert (= (and b!4459027 ((_ is Cons!50128) (toList!3936 lm!1853))) b!4459305))

(declare-fun b_lambda!147747 () Bool)

(assert (= b_lambda!147745 (or start!437168 b_lambda!147747)))

(declare-fun bs!791344 () Bool)

(declare-fun d!1359961 () Bool)

(assert (= bs!791344 (and d!1359961 start!437168)))

(assert (=> bs!791344 (= (dynLambda!20983 lambda!161127 (h!55873 (toList!3936 lm!1853))) (noDuplicateKeys!964 (_2!28438 (h!55873 (toList!3936 lm!1853)))))))

(declare-fun m!5162269 () Bool)

(assert (=> bs!791344 m!5162269))

(assert (=> b!4459233 d!1359961))

(check-sat (not b!4459279) (not d!1359883) (not b!4459263) (not b!4459222) (not d!1359939) (not d!1359955) (not bm!310381) (not bm!310382) (not bm!310377) (not b!4459286) (not b!4459228) (not bs!791344) (not d!1359935) (not b!4459244) (not d!1359925) (not b!4459266) (not b!4459243) (not d!1359949) (not bm!310343) (not d!1359959) (not b!4459264) (not bm!310383) (not d!1359945) (not d!1359947) (not b!4459085) (not d!1359879) (not b!4459270) (not b!4459245) (not b!4459240) (not b!4459216) (not bm!310373) (not b!4459253) (not bm!310372) tp_is_empty!27079 (not b!4459254) (not b!4459305) (not b!4459247) (not b!4459248) (not bm!310370) (not b!4459273) (not bm!310378) (not b!4459282) (not d!1359957) (not b!4459246) (not bm!310376) tp_is_empty!27077 (not b!4459217) (not bm!310379) (not d!1359931) (not b_lambda!147747) (not d!1359923) (not b!4459280) (not b!4459209) (not b!4459241) (not b!4459221) (not d!1359953) (not bm!310380) (not b!4459258) (not b!4459211) (not bm!310375) (not b!4459227) (not b!4459281) (not b!4459272) (not b!4459234) (not b!4459284) (not b!4459207) (not b!4459271) (not b!4459210) (not b!4459087) (not b!4459277) (not b!4459215) (not b!4459260) (not b!4459275) (not b!4459092) (not d!1359941) (not d!1359933) (not b!4459093) (not b!4459300) (not b!4459086) (not b!4459255) (not b!4459262) (not d!1359943) (not b!4459267) (not b!4459288) (not d!1359951) (not bm!310374) (not b!4459088) (not b!4459278) (not b!4459257) (not b!4459256) (not bm!310371) (not d!1359937) (not d!1359877) (not b!4459251) (not b!4459249) (not b!4459214) (not b!4459219) (not b!4459289) (not b!4459239) (not b!4459268) (not b!4459283) (not b!4459294) (not b!4459090))
(check-sat)
