; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!758792 () Bool)

(assert start!758792)

(declare-fun b!8055211 () Bool)

(declare-fun e!4746770 () Bool)

(declare-fun e!4746768 () Bool)

(assert (=> b!8055211 (= e!4746770 e!4746768)))

(declare-fun res!3185942 () Bool)

(assert (=> b!8055211 (=> (not res!3185942) (not e!4746768))))

(declare-datatypes ((K!22848 0))(
  ( (K!22849 (val!32951 Int)) )
))
(declare-fun key!6222 () K!22848)

(declare-fun lt!2729087 () Bool)

(declare-datatypes ((V!23102 0))(
  ( (V!23103 (val!32952 Int)) )
))
(declare-datatypes ((tuple2!70916 0))(
  ( (tuple2!70917 (_1!38761 K!22848) (_2!38761 V!23102)) )
))
(declare-datatypes ((List!75696 0))(
  ( (Nil!75570) (Cons!75570 (h!82018 tuple2!70916) (t!391468 List!75696)) )
))
(declare-fun l!14636 () List!75696)

(assert (=> b!8055211 (= res!3185942 (and (not (= (_1!38761 (h!82018 l!14636)) key!6222)) (not lt!2729087)))))

(declare-datatypes ((ListMap!7319 0))(
  ( (ListMap!7320 (toList!11934 List!75696)) )
))
(declare-fun lt!2729088 () ListMap!7319)

(declare-fun lt!2729086 () ListMap!7319)

(declare-fun addToMapMapFromBucket!2001 (List!75696 ListMap!7319) ListMap!7319)

(assert (=> b!8055211 (= lt!2729088 (addToMapMapFromBucket!2001 (t!391468 l!14636) lt!2729086))))

(declare-fun acc!1298 () ListMap!7319)

(declare-fun +!2685 (ListMap!7319 tuple2!70916) ListMap!7319)

(assert (=> b!8055211 (= lt!2729086 (+!2685 acc!1298 (h!82018 l!14636)))))

(declare-fun e!4746769 () Bool)

(declare-fun tp!2413868 () Bool)

(declare-fun tp_is_empty!54957 () Bool)

(declare-fun b!8055212 () Bool)

(declare-fun tp_is_empty!54955 () Bool)

(assert (=> b!8055212 (= e!4746769 (and tp_is_empty!54955 tp_is_empty!54957 tp!2413868))))

(declare-fun b!8055213 () Bool)

(declare-fun e!4746764 () Bool)

(declare-fun tp!2413869 () Bool)

(assert (=> b!8055213 (= e!4746764 tp!2413869)))

(declare-fun b!8055214 () Bool)

(declare-fun res!3185949 () Bool)

(assert (=> b!8055214 (=> (not res!3185949) (not e!4746770))))

(get-info :version)

(assert (=> b!8055214 (= res!3185949 (not ((_ is Nil!75570) l!14636)))))

(declare-fun b!8055215 () Bool)

(declare-fun e!4746766 () Bool)

(assert (=> b!8055215 (= e!4746766 (not lt!2729087))))

(declare-fun b!8055216 () Bool)

(declare-fun res!3185943 () Bool)

(declare-fun e!4746763 () Bool)

(assert (=> b!8055216 (=> (not res!3185943) (not e!4746763))))

(declare-fun contains!21247 (ListMap!7319 K!22848) Bool)

(assert (=> b!8055216 (= res!3185943 (contains!21247 (addToMapMapFromBucket!2001 l!14636 acc!1298) key!6222))))

(declare-fun b!8055217 () Bool)

(declare-fun res!3185944 () Bool)

(assert (=> b!8055217 (=> (not res!3185944) (not e!4746766))))

(declare-fun value!3131 () V!23102)

(declare-fun contains!21248 (List!75696 tuple2!70916) Bool)

(assert (=> b!8055217 (= res!3185944 (contains!21248 l!14636 (tuple2!70917 key!6222 value!3131)))))

(declare-fun b!8055218 () Bool)

(declare-fun res!3185945 () Bool)

(assert (=> b!8055218 (=> (not res!3185945) (not e!4746768))))

(assert (=> b!8055218 (= res!3185945 (contains!21248 (t!391468 l!14636) (tuple2!70917 key!6222 value!3131)))))

(declare-fun res!3185948 () Bool)

(assert (=> start!758792 (=> (not res!3185948) (not e!4746763))))

(declare-fun noDuplicateKeys!2720 (List!75696) Bool)

(assert (=> start!758792 (= res!3185948 (noDuplicateKeys!2720 l!14636))))

(assert (=> start!758792 e!4746763))

(assert (=> start!758792 e!4746769))

(declare-fun inv!97337 (ListMap!7319) Bool)

(assert (=> start!758792 (and (inv!97337 acc!1298) e!4746764)))

(assert (=> start!758792 tp_is_empty!54955))

(assert (=> start!758792 tp_is_empty!54957))

(declare-fun b!8055219 () Bool)

(assert (=> b!8055219 (= e!4746768 (not (noDuplicateKeys!2720 (t!391468 l!14636))))))

(assert (=> b!8055219 (not (contains!21247 lt!2729086 key!6222))))

(declare-datatypes ((Unit!172242 0))(
  ( (Unit!172243) )
))
(declare-fun lt!2729085 () Unit!172242)

(declare-fun addStillNotContains!13 (ListMap!7319 K!22848 V!23102 K!22848) Unit!172242)

(assert (=> b!8055219 (= lt!2729085 (addStillNotContains!13 acc!1298 (_1!38761 (h!82018 l!14636)) (_2!38761 (h!82018 l!14636)) key!6222))))

(declare-fun b!8055220 () Bool)

(declare-fun res!3185951 () Bool)

(declare-fun e!4746767 () Bool)

(assert (=> b!8055220 (=> (not res!3185951) (not e!4746767))))

(declare-fun apply!14447 (ListMap!7319 K!22848) V!23102)

(assert (=> b!8055220 (= res!3185951 (= (apply!14447 acc!1298 key!6222) value!3131))))

(declare-fun b!8055221 () Bool)

(declare-fun e!4746765 () Bool)

(assert (=> b!8055221 (= e!4746765 e!4746766)))

(declare-fun res!3185946 () Bool)

(assert (=> b!8055221 (=> (not res!3185946) (not e!4746766))))

(declare-fun containsKey!4877 (List!75696 K!22848) Bool)

(assert (=> b!8055221 (= res!3185946 (containsKey!4877 l!14636 key!6222))))

(declare-fun b!8055222 () Bool)

(assert (=> b!8055222 (= e!4746767 (not (containsKey!4877 l!14636 key!6222)))))

(declare-fun b!8055223 () Bool)

(assert (=> b!8055223 (= e!4746763 e!4746770)))

(declare-fun res!3185947 () Bool)

(assert (=> b!8055223 (=> (not res!3185947) (not e!4746770))))

(assert (=> b!8055223 (= res!3185947 e!4746765)))

(declare-fun res!3185941 () Bool)

(assert (=> b!8055223 (=> res!3185941 e!4746765)))

(assert (=> b!8055223 (= res!3185941 e!4746767)))

(declare-fun res!3185950 () Bool)

(assert (=> b!8055223 (=> (not res!3185950) (not e!4746767))))

(assert (=> b!8055223 (= res!3185950 lt!2729087)))

(assert (=> b!8055223 (= lt!2729087 (contains!21247 acc!1298 key!6222))))

(assert (= (and start!758792 res!3185948) b!8055216))

(assert (= (and b!8055216 res!3185943) b!8055223))

(assert (= (and b!8055223 res!3185950) b!8055220))

(assert (= (and b!8055220 res!3185951) b!8055222))

(assert (= (and b!8055223 (not res!3185941)) b!8055221))

(assert (= (and b!8055221 res!3185946) b!8055217))

(assert (= (and b!8055217 res!3185944) b!8055215))

(assert (= (and b!8055223 res!3185947) b!8055214))

(assert (= (and b!8055214 res!3185949) b!8055211))

(assert (= (and b!8055211 res!3185942) b!8055218))

(assert (= (and b!8055218 res!3185945) b!8055219))

(assert (= (and start!758792 ((_ is Cons!75570) l!14636)) b!8055212))

(assert (= start!758792 b!8055213))

(declare-fun m!8407958 () Bool)

(assert (=> b!8055217 m!8407958))

(declare-fun m!8407960 () Bool)

(assert (=> start!758792 m!8407960))

(declare-fun m!8407962 () Bool)

(assert (=> start!758792 m!8407962))

(declare-fun m!8407964 () Bool)

(assert (=> b!8055219 m!8407964))

(declare-fun m!8407966 () Bool)

(assert (=> b!8055219 m!8407966))

(declare-fun m!8407968 () Bool)

(assert (=> b!8055219 m!8407968))

(declare-fun m!8407970 () Bool)

(assert (=> b!8055221 m!8407970))

(declare-fun m!8407972 () Bool)

(assert (=> b!8055220 m!8407972))

(declare-fun m!8407974 () Bool)

(assert (=> b!8055223 m!8407974))

(declare-fun m!8407976 () Bool)

(assert (=> b!8055218 m!8407976))

(assert (=> b!8055222 m!8407970))

(declare-fun m!8407978 () Bool)

(assert (=> b!8055211 m!8407978))

(declare-fun m!8407980 () Bool)

(assert (=> b!8055211 m!8407980))

(declare-fun m!8407982 () Bool)

(assert (=> b!8055216 m!8407982))

(assert (=> b!8055216 m!8407982))

(declare-fun m!8407984 () Bool)

(assert (=> b!8055216 m!8407984))

(check-sat (not b!8055217) (not b!8055218) (not b!8055212) (not b!8055221) (not start!758792) (not b!8055220) tp_is_empty!54957 (not b!8055219) (not b!8055222) (not b!8055211) (not b!8055223) tp_is_empty!54955 (not b!8055216) (not b!8055213))
(check-sat)
(get-model)

(declare-fun d!2398392 () Bool)

(declare-fun res!3185956 () Bool)

(declare-fun e!4746775 () Bool)

(assert (=> d!2398392 (=> res!3185956 e!4746775)))

(assert (=> d!2398392 (= res!3185956 (not ((_ is Cons!75570) l!14636)))))

(assert (=> d!2398392 (= (noDuplicateKeys!2720 l!14636) e!4746775)))

(declare-fun b!8055228 () Bool)

(declare-fun e!4746776 () Bool)

(assert (=> b!8055228 (= e!4746775 e!4746776)))

(declare-fun res!3185957 () Bool)

(assert (=> b!8055228 (=> (not res!3185957) (not e!4746776))))

(assert (=> b!8055228 (= res!3185957 (not (containsKey!4877 (t!391468 l!14636) (_1!38761 (h!82018 l!14636)))))))

(declare-fun b!8055229 () Bool)

(assert (=> b!8055229 (= e!4746776 (noDuplicateKeys!2720 (t!391468 l!14636)))))

(assert (= (and d!2398392 (not res!3185956)) b!8055228))

(assert (= (and b!8055228 res!3185957) b!8055229))

(declare-fun m!8407986 () Bool)

(assert (=> b!8055228 m!8407986))

(assert (=> b!8055229 m!8407964))

(assert (=> start!758792 d!2398392))

(declare-fun d!2398396 () Bool)

(declare-fun invariantList!1945 (List!75696) Bool)

(assert (=> d!2398396 (= (inv!97337 acc!1298) (invariantList!1945 (toList!11934 acc!1298)))))

(declare-fun bs!1972995 () Bool)

(assert (= bs!1972995 d!2398396))

(declare-fun m!8407990 () Bool)

(assert (=> bs!1972995 m!8407990))

(assert (=> start!758792 d!2398396))

(declare-fun lt!2729091 () Bool)

(declare-fun d!2398400 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!16119 (List!75696) (InoxSet tuple2!70916))

(assert (=> d!2398400 (= lt!2729091 (select (content!16119 l!14636) (tuple2!70917 key!6222 value!3131)))))

(declare-fun e!4746788 () Bool)

(assert (=> d!2398400 (= lt!2729091 e!4746788)))

(declare-fun res!3185968 () Bool)

(assert (=> d!2398400 (=> (not res!3185968) (not e!4746788))))

(assert (=> d!2398400 (= res!3185968 ((_ is Cons!75570) l!14636))))

(assert (=> d!2398400 (= (contains!21248 l!14636 (tuple2!70917 key!6222 value!3131)) lt!2729091)))

(declare-fun b!8055240 () Bool)

(declare-fun e!4746787 () Bool)

(assert (=> b!8055240 (= e!4746788 e!4746787)))

(declare-fun res!3185969 () Bool)

(assert (=> b!8055240 (=> res!3185969 e!4746787)))

(assert (=> b!8055240 (= res!3185969 (= (h!82018 l!14636) (tuple2!70917 key!6222 value!3131)))))

(declare-fun b!8055241 () Bool)

(assert (=> b!8055241 (= e!4746787 (contains!21248 (t!391468 l!14636) (tuple2!70917 key!6222 value!3131)))))

(assert (= (and d!2398400 res!3185968) b!8055240))

(assert (= (and b!8055240 (not res!3185969)) b!8055241))

(declare-fun m!8407992 () Bool)

(assert (=> d!2398400 m!8407992))

(declare-fun m!8407994 () Bool)

(assert (=> d!2398400 m!8407994))

(assert (=> b!8055241 m!8407976))

(assert (=> b!8055217 d!2398400))

(declare-fun d!2398402 () Bool)

(declare-fun res!3185974 () Bool)

(declare-fun e!4746793 () Bool)

(assert (=> d!2398402 (=> res!3185974 e!4746793)))

(assert (=> d!2398402 (= res!3185974 (and ((_ is Cons!75570) l!14636) (= (_1!38761 (h!82018 l!14636)) key!6222)))))

(assert (=> d!2398402 (= (containsKey!4877 l!14636 key!6222) e!4746793)))

(declare-fun b!8055246 () Bool)

(declare-fun e!4746794 () Bool)

(assert (=> b!8055246 (= e!4746793 e!4746794)))

(declare-fun res!3185975 () Bool)

(assert (=> b!8055246 (=> (not res!3185975) (not e!4746794))))

(assert (=> b!8055246 (= res!3185975 ((_ is Cons!75570) l!14636))))

(declare-fun b!8055247 () Bool)

(assert (=> b!8055247 (= e!4746794 (containsKey!4877 (t!391468 l!14636) key!6222))))

(assert (= (and d!2398402 (not res!3185974)) b!8055246))

(assert (= (and b!8055246 res!3185975) b!8055247))

(declare-fun m!8407996 () Bool)

(assert (=> b!8055247 m!8407996))

(assert (=> b!8055222 d!2398402))

(declare-fun b!8055299 () Bool)

(assert (=> b!8055299 true))

(declare-fun bs!1973000 () Bool)

(declare-fun b!8055298 () Bool)

(assert (= bs!1973000 (and b!8055298 b!8055299)))

(declare-fun lambda!474117 () Int)

(declare-fun lambda!474116 () Int)

(assert (=> bs!1973000 (= lambda!474117 lambda!474116)))

(assert (=> b!8055298 true))

(declare-fun lt!2729213 () ListMap!7319)

(declare-fun lambda!474118 () Int)

(assert (=> bs!1973000 (= (= lt!2729213 lt!2729086) (= lambda!474118 lambda!474116))))

(assert (=> b!8055298 (= (= lt!2729213 lt!2729086) (= lambda!474118 lambda!474117))))

(assert (=> b!8055298 true))

(declare-fun bs!1973001 () Bool)

(declare-fun d!2398404 () Bool)

(assert (= bs!1973001 (and d!2398404 b!8055299)))

(declare-fun lt!2729214 () ListMap!7319)

(declare-fun lambda!474119 () Int)

(assert (=> bs!1973001 (= (= lt!2729214 lt!2729086) (= lambda!474119 lambda!474116))))

(declare-fun bs!1973002 () Bool)

(assert (= bs!1973002 (and d!2398404 b!8055298)))

(assert (=> bs!1973002 (= (= lt!2729214 lt!2729086) (= lambda!474119 lambda!474117))))

(assert (=> bs!1973002 (= (= lt!2729214 lt!2729213) (= lambda!474119 lambda!474118))))

(assert (=> d!2398404 true))

(declare-fun e!4746831 () Bool)

(assert (=> d!2398404 e!4746831))

(declare-fun res!3186014 () Bool)

(assert (=> d!2398404 (=> (not res!3186014) (not e!4746831))))

(declare-fun forall!18516 (List!75696 Int) Bool)

(assert (=> d!2398404 (= res!3186014 (forall!18516 (t!391468 l!14636) lambda!474119))))

(declare-fun e!4746830 () ListMap!7319)

(assert (=> d!2398404 (= lt!2729214 e!4746830)))

(declare-fun c!1476439 () Bool)

(assert (=> d!2398404 (= c!1476439 ((_ is Nil!75570) (t!391468 l!14636)))))

(assert (=> d!2398404 (noDuplicateKeys!2720 (t!391468 l!14636))))

(assert (=> d!2398404 (= (addToMapMapFromBucket!2001 (t!391468 l!14636) lt!2729086) lt!2729214)))

(declare-fun b!8055297 () Bool)

(declare-fun res!3186013 () Bool)

(assert (=> b!8055297 (=> (not res!3186013) (not e!4746831))))

(assert (=> b!8055297 (= res!3186013 (forall!18516 (toList!11934 lt!2729086) lambda!474119))))

(declare-fun bm!747368 () Bool)

(declare-fun call!747373 () Unit!172242)

(declare-fun lemmaContainsAllItsOwnKeys!1097 (ListMap!7319) Unit!172242)

(assert (=> bm!747368 (= call!747373 (lemmaContainsAllItsOwnKeys!1097 lt!2729086))))

(assert (=> b!8055298 (= e!4746830 lt!2729213)))

(declare-fun lt!2729232 () ListMap!7319)

(assert (=> b!8055298 (= lt!2729232 (+!2685 lt!2729086 (h!82018 (t!391468 l!14636))))))

(assert (=> b!8055298 (= lt!2729213 (addToMapMapFromBucket!2001 (t!391468 (t!391468 l!14636)) (+!2685 lt!2729086 (h!82018 (t!391468 l!14636)))))))

(declare-fun lt!2729216 () Unit!172242)

(assert (=> b!8055298 (= lt!2729216 call!747373)))

(declare-fun call!747374 () Bool)

(assert (=> b!8055298 call!747374))

(declare-fun lt!2729229 () Unit!172242)

(assert (=> b!8055298 (= lt!2729229 lt!2729216)))

(assert (=> b!8055298 (forall!18516 (toList!11934 lt!2729232) lambda!474118)))

(declare-fun lt!2729219 () Unit!172242)

(declare-fun Unit!172255 () Unit!172242)

(assert (=> b!8055298 (= lt!2729219 Unit!172255)))

(assert (=> b!8055298 (forall!18516 (t!391468 (t!391468 l!14636)) lambda!474118)))

(declare-fun lt!2729231 () Unit!172242)

(declare-fun Unit!172256 () Unit!172242)

(assert (=> b!8055298 (= lt!2729231 Unit!172256)))

(declare-fun lt!2729221 () Unit!172242)

(declare-fun Unit!172257 () Unit!172242)

(assert (=> b!8055298 (= lt!2729221 Unit!172257)))

(declare-fun lt!2729220 () Unit!172242)

(declare-fun forallContained!4670 (List!75696 Int tuple2!70916) Unit!172242)

(assert (=> b!8055298 (= lt!2729220 (forallContained!4670 (toList!11934 lt!2729232) lambda!474118 (h!82018 (t!391468 l!14636))))))

(assert (=> b!8055298 (contains!21247 lt!2729232 (_1!38761 (h!82018 (t!391468 l!14636))))))

(declare-fun lt!2729233 () Unit!172242)

(declare-fun Unit!172258 () Unit!172242)

(assert (=> b!8055298 (= lt!2729233 Unit!172258)))

(assert (=> b!8055298 (contains!21247 lt!2729213 (_1!38761 (h!82018 (t!391468 l!14636))))))

(declare-fun lt!2729223 () Unit!172242)

(declare-fun Unit!172259 () Unit!172242)

(assert (=> b!8055298 (= lt!2729223 Unit!172259)))

(assert (=> b!8055298 (forall!18516 (t!391468 l!14636) lambda!474118)))

(declare-fun lt!2729224 () Unit!172242)

(declare-fun Unit!172260 () Unit!172242)

(assert (=> b!8055298 (= lt!2729224 Unit!172260)))

(declare-fun call!747375 () Bool)

(assert (=> b!8055298 call!747375))

(declare-fun lt!2729225 () Unit!172242)

(declare-fun Unit!172261 () Unit!172242)

(assert (=> b!8055298 (= lt!2729225 Unit!172261)))

(declare-fun lt!2729227 () Unit!172242)

(declare-fun Unit!172262 () Unit!172242)

(assert (=> b!8055298 (= lt!2729227 Unit!172262)))

(declare-fun lt!2729222 () Unit!172242)

(declare-fun addForallContainsKeyThenBeforeAdding!1095 (ListMap!7319 ListMap!7319 K!22848 V!23102) Unit!172242)

(assert (=> b!8055298 (= lt!2729222 (addForallContainsKeyThenBeforeAdding!1095 lt!2729086 lt!2729213 (_1!38761 (h!82018 (t!391468 l!14636))) (_2!38761 (h!82018 (t!391468 l!14636)))))))

(assert (=> b!8055298 (forall!18516 (toList!11934 lt!2729086) lambda!474118)))

(declare-fun lt!2729215 () Unit!172242)

(assert (=> b!8055298 (= lt!2729215 lt!2729222)))

(assert (=> b!8055298 (forall!18516 (toList!11934 lt!2729086) lambda!474118)))

(declare-fun lt!2729217 () Unit!172242)

(declare-fun Unit!172263 () Unit!172242)

(assert (=> b!8055298 (= lt!2729217 Unit!172263)))

(declare-fun res!3186015 () Bool)

(assert (=> b!8055298 (= res!3186015 (forall!18516 (t!391468 l!14636) lambda!474118))))

(declare-fun e!4746829 () Bool)

(assert (=> b!8055298 (=> (not res!3186015) (not e!4746829))))

(assert (=> b!8055298 e!4746829))

(declare-fun lt!2729218 () Unit!172242)

(declare-fun Unit!172264 () Unit!172242)

(assert (=> b!8055298 (= lt!2729218 Unit!172264)))

(declare-fun bm!747369 () Bool)

(assert (=> bm!747369 (= call!747375 (forall!18516 (ite c!1476439 (toList!11934 lt!2729086) (toList!11934 lt!2729232)) (ite c!1476439 lambda!474116 lambda!474118)))))

(assert (=> b!8055299 (= e!4746830 lt!2729086)))

(declare-fun lt!2729228 () Unit!172242)

(assert (=> b!8055299 (= lt!2729228 call!747373)))

(assert (=> b!8055299 call!747375))

(declare-fun lt!2729226 () Unit!172242)

(assert (=> b!8055299 (= lt!2729226 lt!2729228)))

(assert (=> b!8055299 call!747374))

(declare-fun lt!2729230 () Unit!172242)

(declare-fun Unit!172265 () Unit!172242)

(assert (=> b!8055299 (= lt!2729230 Unit!172265)))

(declare-fun b!8055300 () Bool)

(assert (=> b!8055300 (= e!4746829 (forall!18516 (toList!11934 lt!2729086) lambda!474118))))

(declare-fun b!8055301 () Bool)

(assert (=> b!8055301 (= e!4746831 (invariantList!1945 (toList!11934 lt!2729214)))))

(declare-fun bm!747370 () Bool)

(assert (=> bm!747370 (= call!747374 (forall!18516 (toList!11934 lt!2729086) (ite c!1476439 lambda!474116 lambda!474117)))))

(assert (= (and d!2398404 c!1476439) b!8055299))

(assert (= (and d!2398404 (not c!1476439)) b!8055298))

(assert (= (and b!8055298 res!3186015) b!8055300))

(assert (= (or b!8055299 b!8055298) bm!747369))

(assert (= (or b!8055299 b!8055298) bm!747370))

(assert (= (or b!8055299 b!8055298) bm!747368))

(assert (= (and d!2398404 res!3186014) b!8055297))

(assert (= (and b!8055297 res!3186013) b!8055301))

(declare-fun m!8408060 () Bool)

(assert (=> b!8055300 m!8408060))

(declare-fun m!8408062 () Bool)

(assert (=> d!2398404 m!8408062))

(assert (=> d!2398404 m!8407964))

(declare-fun m!8408064 () Bool)

(assert (=> bm!747369 m!8408064))

(declare-fun m!8408066 () Bool)

(assert (=> b!8055297 m!8408066))

(declare-fun m!8408068 () Bool)

(assert (=> b!8055298 m!8408068))

(declare-fun m!8408070 () Bool)

(assert (=> b!8055298 m!8408070))

(declare-fun m!8408072 () Bool)

(assert (=> b!8055298 m!8408072))

(assert (=> b!8055298 m!8408068))

(declare-fun m!8408074 () Bool)

(assert (=> b!8055298 m!8408074))

(declare-fun m!8408076 () Bool)

(assert (=> b!8055298 m!8408076))

(assert (=> b!8055298 m!8408060))

(assert (=> b!8055298 m!8408060))

(declare-fun m!8408078 () Bool)

(assert (=> b!8055298 m!8408078))

(declare-fun m!8408080 () Bool)

(assert (=> b!8055298 m!8408080))

(declare-fun m!8408082 () Bool)

(assert (=> b!8055298 m!8408082))

(assert (=> b!8055298 m!8408082))

(declare-fun m!8408084 () Bool)

(assert (=> b!8055298 m!8408084))

(declare-fun m!8408086 () Bool)

(assert (=> b!8055301 m!8408086))

(declare-fun m!8408088 () Bool)

(assert (=> bm!747368 m!8408088))

(declare-fun m!8408090 () Bool)

(assert (=> bm!747370 m!8408090))

(assert (=> b!8055211 d!2398404))

(declare-fun d!2398420 () Bool)

(declare-fun e!4746852 () Bool)

(assert (=> d!2398420 e!4746852))

(declare-fun res!3186029 () Bool)

(assert (=> d!2398420 (=> (not res!3186029) (not e!4746852))))

(declare-fun lt!2729268 () ListMap!7319)

(assert (=> d!2398420 (= res!3186029 (contains!21247 lt!2729268 (_1!38761 (h!82018 l!14636))))))

(declare-fun lt!2729267 () List!75696)

(assert (=> d!2398420 (= lt!2729268 (ListMap!7320 lt!2729267))))

(declare-fun lt!2729269 () Unit!172242)

(declare-fun lt!2729266 () Unit!172242)

(assert (=> d!2398420 (= lt!2729269 lt!2729266)))

(declare-datatypes ((Option!18010 0))(
  ( (None!18009) (Some!18009 (v!55350 V!23102)) )
))
(declare-fun getValueByKey!2794 (List!75696 K!22848) Option!18010)

(assert (=> d!2398420 (= (getValueByKey!2794 lt!2729267 (_1!38761 (h!82018 l!14636))) (Some!18009 (_2!38761 (h!82018 l!14636))))))

(declare-fun lemmaContainsTupThenGetReturnValue!1287 (List!75696 K!22848 V!23102) Unit!172242)

(assert (=> d!2398420 (= lt!2729266 (lemmaContainsTupThenGetReturnValue!1287 lt!2729267 (_1!38761 (h!82018 l!14636)) (_2!38761 (h!82018 l!14636))))))

(declare-fun insertNoDuplicatedKeys!795 (List!75696 K!22848 V!23102) List!75696)

(assert (=> d!2398420 (= lt!2729267 (insertNoDuplicatedKeys!795 (toList!11934 acc!1298) (_1!38761 (h!82018 l!14636)) (_2!38761 (h!82018 l!14636))))))

(assert (=> d!2398420 (= (+!2685 acc!1298 (h!82018 l!14636)) lt!2729268)))

(declare-fun b!8055335 () Bool)

(declare-fun res!3186030 () Bool)

(assert (=> b!8055335 (=> (not res!3186030) (not e!4746852))))

(assert (=> b!8055335 (= res!3186030 (= (getValueByKey!2794 (toList!11934 lt!2729268) (_1!38761 (h!82018 l!14636))) (Some!18009 (_2!38761 (h!82018 l!14636)))))))

(declare-fun b!8055336 () Bool)

(assert (=> b!8055336 (= e!4746852 (contains!21248 (toList!11934 lt!2729268) (h!82018 l!14636)))))

(assert (= (and d!2398420 res!3186029) b!8055335))

(assert (= (and b!8055335 res!3186030) b!8055336))

(declare-fun m!8408112 () Bool)

(assert (=> d!2398420 m!8408112))

(declare-fun m!8408114 () Bool)

(assert (=> d!2398420 m!8408114))

(declare-fun m!8408116 () Bool)

(assert (=> d!2398420 m!8408116))

(declare-fun m!8408118 () Bool)

(assert (=> d!2398420 m!8408118))

(declare-fun m!8408120 () Bool)

(assert (=> b!8055335 m!8408120))

(declare-fun m!8408122 () Bool)

(assert (=> b!8055336 m!8408122))

(assert (=> b!8055211 d!2398420))

(declare-fun e!4746892 () Bool)

(declare-fun b!8055388 () Bool)

(declare-datatypes ((List!75697 0))(
  ( (Nil!75571) (Cons!75571 (h!82019 K!22848) (t!391469 List!75697)) )
))
(declare-fun contains!21249 (List!75697 K!22848) Bool)

(declare-fun keys!30861 (ListMap!7319) List!75697)

(assert (=> b!8055388 (= e!4746892 (not (contains!21249 (keys!30861 (addToMapMapFromBucket!2001 l!14636 acc!1298)) key!6222)))))

(declare-fun b!8055389 () Bool)

(declare-fun e!4746888 () List!75697)

(assert (=> b!8055389 (= e!4746888 (keys!30861 (addToMapMapFromBucket!2001 l!14636 acc!1298)))))

(declare-fun b!8055390 () Bool)

(declare-fun e!4746889 () Unit!172242)

(declare-fun e!4746891 () Unit!172242)

(assert (=> b!8055390 (= e!4746889 e!4746891)))

(declare-fun c!1476463 () Bool)

(declare-fun call!747386 () Bool)

(assert (=> b!8055390 (= c!1476463 call!747386)))

(declare-fun b!8055391 () Bool)

(declare-fun lt!2729328 () Unit!172242)

(assert (=> b!8055391 (= e!4746889 lt!2729328)))

(declare-fun lt!2729332 () Unit!172242)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!2565 (List!75696 K!22848) Unit!172242)

(assert (=> b!8055391 (= lt!2729332 (lemmaContainsKeyImpliesGetValueByKeyDefined!2565 (toList!11934 (addToMapMapFromBucket!2001 l!14636 acc!1298)) key!6222))))

(declare-fun isDefined!14543 (Option!18010) Bool)

(assert (=> b!8055391 (isDefined!14543 (getValueByKey!2794 (toList!11934 (addToMapMapFromBucket!2001 l!14636 acc!1298)) key!6222))))

(declare-fun lt!2729326 () Unit!172242)

(assert (=> b!8055391 (= lt!2729326 lt!2729332)))

(declare-fun lemmaInListThenGetKeysListContains!1248 (List!75696 K!22848) Unit!172242)

(assert (=> b!8055391 (= lt!2729328 (lemmaInListThenGetKeysListContains!1248 (toList!11934 (addToMapMapFromBucket!2001 l!14636 acc!1298)) key!6222))))

(assert (=> b!8055391 call!747386))

(declare-fun b!8055392 () Bool)

(declare-fun e!4746887 () Bool)

(declare-fun e!4746890 () Bool)

(assert (=> b!8055392 (= e!4746887 e!4746890)))

(declare-fun res!3186051 () Bool)

(assert (=> b!8055392 (=> (not res!3186051) (not e!4746890))))

(assert (=> b!8055392 (= res!3186051 (isDefined!14543 (getValueByKey!2794 (toList!11934 (addToMapMapFromBucket!2001 l!14636 acc!1298)) key!6222)))))

(declare-fun b!8055393 () Bool)

(declare-fun Unit!172267 () Unit!172242)

(assert (=> b!8055393 (= e!4746891 Unit!172267)))

(declare-fun bm!747381 () Bool)

(assert (=> bm!747381 (= call!747386 (contains!21249 e!4746888 key!6222))))

(declare-fun c!1476464 () Bool)

(declare-fun c!1476462 () Bool)

(assert (=> bm!747381 (= c!1476464 c!1476462)))

(declare-fun b!8055394 () Bool)

(assert (=> b!8055394 (= e!4746890 (contains!21249 (keys!30861 (addToMapMapFromBucket!2001 l!14636 acc!1298)) key!6222))))

(declare-fun b!8055396 () Bool)

(assert (=> b!8055396 false))

(declare-fun lt!2729333 () Unit!172242)

(declare-fun lt!2729330 () Unit!172242)

(assert (=> b!8055396 (= lt!2729333 lt!2729330)))

(declare-fun containsKey!4879 (List!75696 K!22848) Bool)

(assert (=> b!8055396 (containsKey!4879 (toList!11934 (addToMapMapFromBucket!2001 l!14636 acc!1298)) key!6222)))

(declare-fun lemmaInGetKeysListThenContainsKey!1253 (List!75696 K!22848) Unit!172242)

(assert (=> b!8055396 (= lt!2729330 (lemmaInGetKeysListThenContainsKey!1253 (toList!11934 (addToMapMapFromBucket!2001 l!14636 acc!1298)) key!6222))))

(declare-fun Unit!172269 () Unit!172242)

(assert (=> b!8055396 (= e!4746891 Unit!172269)))

(declare-fun b!8055395 () Bool)

(declare-fun getKeysList!1253 (List!75696) List!75697)

(assert (=> b!8055395 (= e!4746888 (getKeysList!1253 (toList!11934 (addToMapMapFromBucket!2001 l!14636 acc!1298))))))

(declare-fun d!2398424 () Bool)

(assert (=> d!2398424 e!4746887))

(declare-fun res!3186049 () Bool)

(assert (=> d!2398424 (=> res!3186049 e!4746887)))

(assert (=> d!2398424 (= res!3186049 e!4746892)))

(declare-fun res!3186050 () Bool)

(assert (=> d!2398424 (=> (not res!3186050) (not e!4746892))))

(declare-fun lt!2729327 () Bool)

(assert (=> d!2398424 (= res!3186050 (not lt!2729327))))

(declare-fun lt!2729331 () Bool)

(assert (=> d!2398424 (= lt!2729327 lt!2729331)))

(declare-fun lt!2729329 () Unit!172242)

(assert (=> d!2398424 (= lt!2729329 e!4746889)))

(assert (=> d!2398424 (= c!1476462 lt!2729331)))

(assert (=> d!2398424 (= lt!2729331 (containsKey!4879 (toList!11934 (addToMapMapFromBucket!2001 l!14636 acc!1298)) key!6222))))

(assert (=> d!2398424 (= (contains!21247 (addToMapMapFromBucket!2001 l!14636 acc!1298) key!6222) lt!2729327)))

(assert (= (and d!2398424 c!1476462) b!8055391))

(assert (= (and d!2398424 (not c!1476462)) b!8055390))

(assert (= (and b!8055390 c!1476463) b!8055396))

(assert (= (and b!8055390 (not c!1476463)) b!8055393))

(assert (= (or b!8055391 b!8055390) bm!747381))

(assert (= (and bm!747381 c!1476464) b!8055395))

(assert (= (and bm!747381 (not c!1476464)) b!8055389))

(assert (= (and d!2398424 res!3186050) b!8055388))

(assert (= (and d!2398424 (not res!3186049)) b!8055392))

(assert (= (and b!8055392 res!3186051) b!8055394))

(assert (=> b!8055389 m!8407982))

(declare-fun m!8408202 () Bool)

(assert (=> b!8055389 m!8408202))

(declare-fun m!8408204 () Bool)

(assert (=> b!8055395 m!8408204))

(declare-fun m!8408206 () Bool)

(assert (=> bm!747381 m!8408206))

(declare-fun m!8408208 () Bool)

(assert (=> d!2398424 m!8408208))

(assert (=> b!8055388 m!8407982))

(assert (=> b!8055388 m!8408202))

(assert (=> b!8055388 m!8408202))

(declare-fun m!8408210 () Bool)

(assert (=> b!8055388 m!8408210))

(assert (=> b!8055394 m!8407982))

(assert (=> b!8055394 m!8408202))

(assert (=> b!8055394 m!8408202))

(assert (=> b!8055394 m!8408210))

(assert (=> b!8055396 m!8408208))

(declare-fun m!8408212 () Bool)

(assert (=> b!8055396 m!8408212))

(declare-fun m!8408214 () Bool)

(assert (=> b!8055391 m!8408214))

(declare-fun m!8408216 () Bool)

(assert (=> b!8055391 m!8408216))

(assert (=> b!8055391 m!8408216))

(declare-fun m!8408218 () Bool)

(assert (=> b!8055391 m!8408218))

(declare-fun m!8408220 () Bool)

(assert (=> b!8055391 m!8408220))

(assert (=> b!8055392 m!8408216))

(assert (=> b!8055392 m!8408216))

(assert (=> b!8055392 m!8408218))

(assert (=> b!8055216 d!2398424))

(declare-fun bs!1973016 () Bool)

(declare-fun b!8055399 () Bool)

(assert (= bs!1973016 (and b!8055399 b!8055299)))

(declare-fun lambda!474124 () Int)

(assert (=> bs!1973016 (= (= acc!1298 lt!2729086) (= lambda!474124 lambda!474116))))

(declare-fun bs!1973017 () Bool)

(assert (= bs!1973017 (and b!8055399 b!8055298)))

(assert (=> bs!1973017 (= (= acc!1298 lt!2729086) (= lambda!474124 lambda!474117))))

(assert (=> bs!1973017 (= (= acc!1298 lt!2729213) (= lambda!474124 lambda!474118))))

(declare-fun bs!1973018 () Bool)

(assert (= bs!1973018 (and b!8055399 d!2398404)))

(assert (=> bs!1973018 (= (= acc!1298 lt!2729214) (= lambda!474124 lambda!474119))))

(assert (=> b!8055399 true))

(declare-fun bs!1973019 () Bool)

(declare-fun b!8055398 () Bool)

(assert (= bs!1973019 (and b!8055398 b!8055298)))

(declare-fun lambda!474125 () Int)

(assert (=> bs!1973019 (= (= acc!1298 lt!2729213) (= lambda!474125 lambda!474118))))

(declare-fun bs!1973020 () Bool)

(assert (= bs!1973020 (and b!8055398 b!8055399)))

(assert (=> bs!1973020 (= lambda!474125 lambda!474124)))

(declare-fun bs!1973021 () Bool)

(assert (= bs!1973021 (and b!8055398 b!8055299)))

(assert (=> bs!1973021 (= (= acc!1298 lt!2729086) (= lambda!474125 lambda!474116))))

(declare-fun bs!1973022 () Bool)

(assert (= bs!1973022 (and b!8055398 d!2398404)))

(assert (=> bs!1973022 (= (= acc!1298 lt!2729214) (= lambda!474125 lambda!474119))))

(assert (=> bs!1973019 (= (= acc!1298 lt!2729086) (= lambda!474125 lambda!474117))))

(assert (=> b!8055398 true))

(declare-fun lambda!474126 () Int)

(declare-fun lt!2729334 () ListMap!7319)

(assert (=> bs!1973019 (= (= lt!2729334 lt!2729213) (= lambda!474126 lambda!474118))))

(assert (=> bs!1973020 (= (= lt!2729334 acc!1298) (= lambda!474126 lambda!474124))))

(assert (=> b!8055398 (= (= lt!2729334 acc!1298) (= lambda!474126 lambda!474125))))

(assert (=> bs!1973021 (= (= lt!2729334 lt!2729086) (= lambda!474126 lambda!474116))))

(assert (=> bs!1973022 (= (= lt!2729334 lt!2729214) (= lambda!474126 lambda!474119))))

(assert (=> bs!1973019 (= (= lt!2729334 lt!2729086) (= lambda!474126 lambda!474117))))

(assert (=> b!8055398 true))

(declare-fun bs!1973023 () Bool)

(declare-fun d!2398434 () Bool)

(assert (= bs!1973023 (and d!2398434 b!8055298)))

(declare-fun lt!2729335 () ListMap!7319)

(declare-fun lambda!474127 () Int)

(assert (=> bs!1973023 (= (= lt!2729335 lt!2729213) (= lambda!474127 lambda!474118))))

(declare-fun bs!1973024 () Bool)

(assert (= bs!1973024 (and d!2398434 b!8055398)))

(assert (=> bs!1973024 (= (= lt!2729335 lt!2729334) (= lambda!474127 lambda!474126))))

(declare-fun bs!1973025 () Bool)

(assert (= bs!1973025 (and d!2398434 b!8055399)))

(assert (=> bs!1973025 (= (= lt!2729335 acc!1298) (= lambda!474127 lambda!474124))))

(assert (=> bs!1973024 (= (= lt!2729335 acc!1298) (= lambda!474127 lambda!474125))))

(declare-fun bs!1973026 () Bool)

(assert (= bs!1973026 (and d!2398434 b!8055299)))

(assert (=> bs!1973026 (= (= lt!2729335 lt!2729086) (= lambda!474127 lambda!474116))))

(declare-fun bs!1973027 () Bool)

(assert (= bs!1973027 (and d!2398434 d!2398404)))

(assert (=> bs!1973027 (= (= lt!2729335 lt!2729214) (= lambda!474127 lambda!474119))))

(assert (=> bs!1973023 (= (= lt!2729335 lt!2729086) (= lambda!474127 lambda!474117))))

(assert (=> d!2398434 true))

(declare-fun e!4746895 () Bool)

(assert (=> d!2398434 e!4746895))

(declare-fun res!3186053 () Bool)

(assert (=> d!2398434 (=> (not res!3186053) (not e!4746895))))

(assert (=> d!2398434 (= res!3186053 (forall!18516 l!14636 lambda!474127))))

(declare-fun e!4746894 () ListMap!7319)

(assert (=> d!2398434 (= lt!2729335 e!4746894)))

(declare-fun c!1476465 () Bool)

(assert (=> d!2398434 (= c!1476465 ((_ is Nil!75570) l!14636))))

(assert (=> d!2398434 (noDuplicateKeys!2720 l!14636)))

(assert (=> d!2398434 (= (addToMapMapFromBucket!2001 l!14636 acc!1298) lt!2729335)))

(declare-fun b!8055397 () Bool)

(declare-fun res!3186052 () Bool)

(assert (=> b!8055397 (=> (not res!3186052) (not e!4746895))))

(assert (=> b!8055397 (= res!3186052 (forall!18516 (toList!11934 acc!1298) lambda!474127))))

(declare-fun bm!747382 () Bool)

(declare-fun call!747387 () Unit!172242)

(assert (=> bm!747382 (= call!747387 (lemmaContainsAllItsOwnKeys!1097 acc!1298))))

(assert (=> b!8055398 (= e!4746894 lt!2729334)))

(declare-fun lt!2729353 () ListMap!7319)

(assert (=> b!8055398 (= lt!2729353 (+!2685 acc!1298 (h!82018 l!14636)))))

(assert (=> b!8055398 (= lt!2729334 (addToMapMapFromBucket!2001 (t!391468 l!14636) (+!2685 acc!1298 (h!82018 l!14636))))))

(declare-fun lt!2729337 () Unit!172242)

(assert (=> b!8055398 (= lt!2729337 call!747387)))

(declare-fun call!747388 () Bool)

(assert (=> b!8055398 call!747388))

(declare-fun lt!2729350 () Unit!172242)

(assert (=> b!8055398 (= lt!2729350 lt!2729337)))

(assert (=> b!8055398 (forall!18516 (toList!11934 lt!2729353) lambda!474126)))

(declare-fun lt!2729340 () Unit!172242)

(declare-fun Unit!172270 () Unit!172242)

(assert (=> b!8055398 (= lt!2729340 Unit!172270)))

(assert (=> b!8055398 (forall!18516 (t!391468 l!14636) lambda!474126)))

(declare-fun lt!2729352 () Unit!172242)

(declare-fun Unit!172271 () Unit!172242)

(assert (=> b!8055398 (= lt!2729352 Unit!172271)))

(declare-fun lt!2729342 () Unit!172242)

(declare-fun Unit!172272 () Unit!172242)

(assert (=> b!8055398 (= lt!2729342 Unit!172272)))

(declare-fun lt!2729341 () Unit!172242)

(assert (=> b!8055398 (= lt!2729341 (forallContained!4670 (toList!11934 lt!2729353) lambda!474126 (h!82018 l!14636)))))

(assert (=> b!8055398 (contains!21247 lt!2729353 (_1!38761 (h!82018 l!14636)))))

(declare-fun lt!2729354 () Unit!172242)

(declare-fun Unit!172273 () Unit!172242)

(assert (=> b!8055398 (= lt!2729354 Unit!172273)))

(assert (=> b!8055398 (contains!21247 lt!2729334 (_1!38761 (h!82018 l!14636)))))

(declare-fun lt!2729344 () Unit!172242)

(declare-fun Unit!172275 () Unit!172242)

(assert (=> b!8055398 (= lt!2729344 Unit!172275)))

(assert (=> b!8055398 (forall!18516 l!14636 lambda!474126)))

(declare-fun lt!2729345 () Unit!172242)

(declare-fun Unit!172276 () Unit!172242)

(assert (=> b!8055398 (= lt!2729345 Unit!172276)))

(declare-fun call!747389 () Bool)

(assert (=> b!8055398 call!747389))

(declare-fun lt!2729346 () Unit!172242)

(declare-fun Unit!172277 () Unit!172242)

(assert (=> b!8055398 (= lt!2729346 Unit!172277)))

(declare-fun lt!2729348 () Unit!172242)

(declare-fun Unit!172279 () Unit!172242)

(assert (=> b!8055398 (= lt!2729348 Unit!172279)))

(declare-fun lt!2729343 () Unit!172242)

(assert (=> b!8055398 (= lt!2729343 (addForallContainsKeyThenBeforeAdding!1095 acc!1298 lt!2729334 (_1!38761 (h!82018 l!14636)) (_2!38761 (h!82018 l!14636))))))

(assert (=> b!8055398 (forall!18516 (toList!11934 acc!1298) lambda!474126)))

(declare-fun lt!2729336 () Unit!172242)

(assert (=> b!8055398 (= lt!2729336 lt!2729343)))

(assert (=> b!8055398 (forall!18516 (toList!11934 acc!1298) lambda!474126)))

(declare-fun lt!2729338 () Unit!172242)

(declare-fun Unit!172280 () Unit!172242)

(assert (=> b!8055398 (= lt!2729338 Unit!172280)))

(declare-fun res!3186054 () Bool)

(assert (=> b!8055398 (= res!3186054 (forall!18516 l!14636 lambda!474126))))

(declare-fun e!4746893 () Bool)

(assert (=> b!8055398 (=> (not res!3186054) (not e!4746893))))

(assert (=> b!8055398 e!4746893))

(declare-fun lt!2729339 () Unit!172242)

(declare-fun Unit!172281 () Unit!172242)

(assert (=> b!8055398 (= lt!2729339 Unit!172281)))

(declare-fun bm!747383 () Bool)

(assert (=> bm!747383 (= call!747389 (forall!18516 (ite c!1476465 (toList!11934 acc!1298) (toList!11934 lt!2729353)) (ite c!1476465 lambda!474124 lambda!474126)))))

(assert (=> b!8055399 (= e!4746894 acc!1298)))

(declare-fun lt!2729349 () Unit!172242)

(assert (=> b!8055399 (= lt!2729349 call!747387)))

(assert (=> b!8055399 call!747389))

(declare-fun lt!2729347 () Unit!172242)

(assert (=> b!8055399 (= lt!2729347 lt!2729349)))

(assert (=> b!8055399 call!747388))

(declare-fun lt!2729351 () Unit!172242)

(declare-fun Unit!172282 () Unit!172242)

(assert (=> b!8055399 (= lt!2729351 Unit!172282)))

(declare-fun b!8055400 () Bool)

(assert (=> b!8055400 (= e!4746893 (forall!18516 (toList!11934 acc!1298) lambda!474126))))

(declare-fun b!8055401 () Bool)

(assert (=> b!8055401 (= e!4746895 (invariantList!1945 (toList!11934 lt!2729335)))))

(declare-fun bm!747384 () Bool)

(assert (=> bm!747384 (= call!747388 (forall!18516 (toList!11934 acc!1298) (ite c!1476465 lambda!474124 lambda!474125)))))

(assert (= (and d!2398434 c!1476465) b!8055399))

(assert (= (and d!2398434 (not c!1476465)) b!8055398))

(assert (= (and b!8055398 res!3186054) b!8055400))

(assert (= (or b!8055399 b!8055398) bm!747383))

(assert (= (or b!8055399 b!8055398) bm!747384))

(assert (= (or b!8055399 b!8055398) bm!747382))

(assert (= (and d!2398434 res!3186053) b!8055397))

(assert (= (and b!8055397 res!3186052) b!8055401))

(declare-fun m!8408222 () Bool)

(assert (=> b!8055400 m!8408222))

(declare-fun m!8408224 () Bool)

(assert (=> d!2398434 m!8408224))

(assert (=> d!2398434 m!8407960))

(declare-fun m!8408226 () Bool)

(assert (=> bm!747383 m!8408226))

(declare-fun m!8408228 () Bool)

(assert (=> b!8055397 m!8408228))

(declare-fun m!8408230 () Bool)

(assert (=> b!8055398 m!8408230))

(declare-fun m!8408232 () Bool)

(assert (=> b!8055398 m!8408232))

(declare-fun m!8408234 () Bool)

(assert (=> b!8055398 m!8408234))

(assert (=> b!8055398 m!8408230))

(declare-fun m!8408236 () Bool)

(assert (=> b!8055398 m!8408236))

(declare-fun m!8408238 () Bool)

(assert (=> b!8055398 m!8408238))

(assert (=> b!8055398 m!8408222))

(assert (=> b!8055398 m!8408222))

(declare-fun m!8408240 () Bool)

(assert (=> b!8055398 m!8408240))

(declare-fun m!8408242 () Bool)

(assert (=> b!8055398 m!8408242))

(assert (=> b!8055398 m!8407980))

(assert (=> b!8055398 m!8407980))

(declare-fun m!8408244 () Bool)

(assert (=> b!8055398 m!8408244))

(declare-fun m!8408246 () Bool)

(assert (=> b!8055401 m!8408246))

(declare-fun m!8408248 () Bool)

(assert (=> bm!747382 m!8408248))

(declare-fun m!8408250 () Bool)

(assert (=> bm!747384 m!8408250))

(assert (=> b!8055216 d!2398434))

(assert (=> b!8055221 d!2398402))

(declare-fun d!2398436 () Bool)

(declare-fun get!27234 (Option!18010) V!23102)

(assert (=> d!2398436 (= (apply!14447 acc!1298 key!6222) (get!27234 (getValueByKey!2794 (toList!11934 acc!1298) key!6222)))))

(declare-fun bs!1973028 () Bool)

(assert (= bs!1973028 d!2398436))

(declare-fun m!8408252 () Bool)

(assert (=> bs!1973028 m!8408252))

(assert (=> bs!1973028 m!8408252))

(declare-fun m!8408254 () Bool)

(assert (=> bs!1973028 m!8408254))

(assert (=> b!8055220 d!2398436))

(declare-fun d!2398438 () Bool)

(declare-fun res!3186055 () Bool)

(declare-fun e!4746896 () Bool)

(assert (=> d!2398438 (=> res!3186055 e!4746896)))

(assert (=> d!2398438 (= res!3186055 (not ((_ is Cons!75570) (t!391468 l!14636))))))

(assert (=> d!2398438 (= (noDuplicateKeys!2720 (t!391468 l!14636)) e!4746896)))

(declare-fun b!8055402 () Bool)

(declare-fun e!4746897 () Bool)

(assert (=> b!8055402 (= e!4746896 e!4746897)))

(declare-fun res!3186056 () Bool)

(assert (=> b!8055402 (=> (not res!3186056) (not e!4746897))))

(assert (=> b!8055402 (= res!3186056 (not (containsKey!4877 (t!391468 (t!391468 l!14636)) (_1!38761 (h!82018 (t!391468 l!14636))))))))

(declare-fun b!8055403 () Bool)

(assert (=> b!8055403 (= e!4746897 (noDuplicateKeys!2720 (t!391468 (t!391468 l!14636))))))

(assert (= (and d!2398438 (not res!3186055)) b!8055402))

(assert (= (and b!8055402 res!3186056) b!8055403))

(declare-fun m!8408256 () Bool)

(assert (=> b!8055402 m!8408256))

(declare-fun m!8408258 () Bool)

(assert (=> b!8055403 m!8408258))

(assert (=> b!8055219 d!2398438))

(declare-fun b!8055404 () Bool)

(declare-fun e!4746903 () Bool)

(assert (=> b!8055404 (= e!4746903 (not (contains!21249 (keys!30861 lt!2729086) key!6222)))))

(declare-fun b!8055405 () Bool)

(declare-fun e!4746899 () List!75697)

(assert (=> b!8055405 (= e!4746899 (keys!30861 lt!2729086))))

(declare-fun b!8055406 () Bool)

(declare-fun e!4746900 () Unit!172242)

(declare-fun e!4746902 () Unit!172242)

(assert (=> b!8055406 (= e!4746900 e!4746902)))

(declare-fun c!1476467 () Bool)

(declare-fun call!747390 () Bool)

(assert (=> b!8055406 (= c!1476467 call!747390)))

(declare-fun b!8055407 () Bool)

(declare-fun lt!2729357 () Unit!172242)

(assert (=> b!8055407 (= e!4746900 lt!2729357)))

(declare-fun lt!2729361 () Unit!172242)

(assert (=> b!8055407 (= lt!2729361 (lemmaContainsKeyImpliesGetValueByKeyDefined!2565 (toList!11934 lt!2729086) key!6222))))

(assert (=> b!8055407 (isDefined!14543 (getValueByKey!2794 (toList!11934 lt!2729086) key!6222))))

(declare-fun lt!2729355 () Unit!172242)

(assert (=> b!8055407 (= lt!2729355 lt!2729361)))

(assert (=> b!8055407 (= lt!2729357 (lemmaInListThenGetKeysListContains!1248 (toList!11934 lt!2729086) key!6222))))

(assert (=> b!8055407 call!747390))

(declare-fun b!8055408 () Bool)

(declare-fun e!4746898 () Bool)

(declare-fun e!4746901 () Bool)

(assert (=> b!8055408 (= e!4746898 e!4746901)))

(declare-fun res!3186059 () Bool)

(assert (=> b!8055408 (=> (not res!3186059) (not e!4746901))))

(assert (=> b!8055408 (= res!3186059 (isDefined!14543 (getValueByKey!2794 (toList!11934 lt!2729086) key!6222)))))

(declare-fun b!8055409 () Bool)

(declare-fun Unit!172283 () Unit!172242)

(assert (=> b!8055409 (= e!4746902 Unit!172283)))

(declare-fun bm!747385 () Bool)

(assert (=> bm!747385 (= call!747390 (contains!21249 e!4746899 key!6222))))

(declare-fun c!1476468 () Bool)

(declare-fun c!1476466 () Bool)

(assert (=> bm!747385 (= c!1476468 c!1476466)))

(declare-fun b!8055410 () Bool)

(assert (=> b!8055410 (= e!4746901 (contains!21249 (keys!30861 lt!2729086) key!6222))))

(declare-fun b!8055412 () Bool)

(assert (=> b!8055412 false))

(declare-fun lt!2729362 () Unit!172242)

(declare-fun lt!2729359 () Unit!172242)

(assert (=> b!8055412 (= lt!2729362 lt!2729359)))

(assert (=> b!8055412 (containsKey!4879 (toList!11934 lt!2729086) key!6222)))

(assert (=> b!8055412 (= lt!2729359 (lemmaInGetKeysListThenContainsKey!1253 (toList!11934 lt!2729086) key!6222))))

(declare-fun Unit!172284 () Unit!172242)

(assert (=> b!8055412 (= e!4746902 Unit!172284)))

(declare-fun b!8055411 () Bool)

(assert (=> b!8055411 (= e!4746899 (getKeysList!1253 (toList!11934 lt!2729086)))))

(declare-fun d!2398440 () Bool)

(assert (=> d!2398440 e!4746898))

(declare-fun res!3186057 () Bool)

(assert (=> d!2398440 (=> res!3186057 e!4746898)))

(assert (=> d!2398440 (= res!3186057 e!4746903)))

(declare-fun res!3186058 () Bool)

(assert (=> d!2398440 (=> (not res!3186058) (not e!4746903))))

(declare-fun lt!2729356 () Bool)

(assert (=> d!2398440 (= res!3186058 (not lt!2729356))))

(declare-fun lt!2729360 () Bool)

(assert (=> d!2398440 (= lt!2729356 lt!2729360)))

(declare-fun lt!2729358 () Unit!172242)

(assert (=> d!2398440 (= lt!2729358 e!4746900)))

(assert (=> d!2398440 (= c!1476466 lt!2729360)))

(assert (=> d!2398440 (= lt!2729360 (containsKey!4879 (toList!11934 lt!2729086) key!6222))))

(assert (=> d!2398440 (= (contains!21247 lt!2729086 key!6222) lt!2729356)))

(assert (= (and d!2398440 c!1476466) b!8055407))

(assert (= (and d!2398440 (not c!1476466)) b!8055406))

(assert (= (and b!8055406 c!1476467) b!8055412))

(assert (= (and b!8055406 (not c!1476467)) b!8055409))

(assert (= (or b!8055407 b!8055406) bm!747385))

(assert (= (and bm!747385 c!1476468) b!8055411))

(assert (= (and bm!747385 (not c!1476468)) b!8055405))

(assert (= (and d!2398440 res!3186058) b!8055404))

(assert (= (and d!2398440 (not res!3186057)) b!8055408))

(assert (= (and b!8055408 res!3186059) b!8055410))

(declare-fun m!8408260 () Bool)

(assert (=> b!8055405 m!8408260))

(declare-fun m!8408262 () Bool)

(assert (=> b!8055411 m!8408262))

(declare-fun m!8408264 () Bool)

(assert (=> bm!747385 m!8408264))

(declare-fun m!8408266 () Bool)

(assert (=> d!2398440 m!8408266))

(assert (=> b!8055404 m!8408260))

(assert (=> b!8055404 m!8408260))

(declare-fun m!8408268 () Bool)

(assert (=> b!8055404 m!8408268))

(assert (=> b!8055410 m!8408260))

(assert (=> b!8055410 m!8408260))

(assert (=> b!8055410 m!8408268))

(assert (=> b!8055412 m!8408266))

(declare-fun m!8408270 () Bool)

(assert (=> b!8055412 m!8408270))

(declare-fun m!8408272 () Bool)

(assert (=> b!8055407 m!8408272))

(declare-fun m!8408274 () Bool)

(assert (=> b!8055407 m!8408274))

(assert (=> b!8055407 m!8408274))

(declare-fun m!8408276 () Bool)

(assert (=> b!8055407 m!8408276))

(declare-fun m!8408278 () Bool)

(assert (=> b!8055407 m!8408278))

(assert (=> b!8055408 m!8408274))

(assert (=> b!8055408 m!8408274))

(assert (=> b!8055408 m!8408276))

(assert (=> b!8055219 d!2398440))

(declare-fun d!2398442 () Bool)

(assert (=> d!2398442 (not (contains!21247 (+!2685 acc!1298 (tuple2!70917 (_1!38761 (h!82018 l!14636)) (_2!38761 (h!82018 l!14636)))) key!6222))))

(declare-fun lt!2729365 () Unit!172242)

(declare-fun choose!60551 (ListMap!7319 K!22848 V!23102 K!22848) Unit!172242)

(assert (=> d!2398442 (= lt!2729365 (choose!60551 acc!1298 (_1!38761 (h!82018 l!14636)) (_2!38761 (h!82018 l!14636)) key!6222))))

(declare-fun e!4746906 () Bool)

(assert (=> d!2398442 e!4746906))

(declare-fun res!3186062 () Bool)

(assert (=> d!2398442 (=> (not res!3186062) (not e!4746906))))

(assert (=> d!2398442 (= res!3186062 (not (contains!21247 acc!1298 key!6222)))))

(assert (=> d!2398442 (= (addStillNotContains!13 acc!1298 (_1!38761 (h!82018 l!14636)) (_2!38761 (h!82018 l!14636)) key!6222) lt!2729365)))

(declare-fun b!8055416 () Bool)

(assert (=> b!8055416 (= e!4746906 (not (= (_1!38761 (h!82018 l!14636)) key!6222)))))

(assert (= (and d!2398442 res!3186062) b!8055416))

(declare-fun m!8408280 () Bool)

(assert (=> d!2398442 m!8408280))

(assert (=> d!2398442 m!8408280))

(declare-fun m!8408282 () Bool)

(assert (=> d!2398442 m!8408282))

(declare-fun m!8408284 () Bool)

(assert (=> d!2398442 m!8408284))

(assert (=> d!2398442 m!8407974))

(assert (=> b!8055219 d!2398442))

(declare-fun d!2398444 () Bool)

(declare-fun lt!2729366 () Bool)

(assert (=> d!2398444 (= lt!2729366 (select (content!16119 (t!391468 l!14636)) (tuple2!70917 key!6222 value!3131)))))

(declare-fun e!4746908 () Bool)

(assert (=> d!2398444 (= lt!2729366 e!4746908)))

(declare-fun res!3186063 () Bool)

(assert (=> d!2398444 (=> (not res!3186063) (not e!4746908))))

(assert (=> d!2398444 (= res!3186063 ((_ is Cons!75570) (t!391468 l!14636)))))

(assert (=> d!2398444 (= (contains!21248 (t!391468 l!14636) (tuple2!70917 key!6222 value!3131)) lt!2729366)))

(declare-fun b!8055417 () Bool)

(declare-fun e!4746907 () Bool)

(assert (=> b!8055417 (= e!4746908 e!4746907)))

(declare-fun res!3186064 () Bool)

(assert (=> b!8055417 (=> res!3186064 e!4746907)))

(assert (=> b!8055417 (= res!3186064 (= (h!82018 (t!391468 l!14636)) (tuple2!70917 key!6222 value!3131)))))

(declare-fun b!8055418 () Bool)

(assert (=> b!8055418 (= e!4746907 (contains!21248 (t!391468 (t!391468 l!14636)) (tuple2!70917 key!6222 value!3131)))))

(assert (= (and d!2398444 res!3186063) b!8055417))

(assert (= (and b!8055417 (not res!3186064)) b!8055418))

(declare-fun m!8408286 () Bool)

(assert (=> d!2398444 m!8408286))

(declare-fun m!8408288 () Bool)

(assert (=> d!2398444 m!8408288))

(declare-fun m!8408290 () Bool)

(assert (=> b!8055418 m!8408290))

(assert (=> b!8055218 d!2398444))

(declare-fun b!8055419 () Bool)

(declare-fun e!4746914 () Bool)

(assert (=> b!8055419 (= e!4746914 (not (contains!21249 (keys!30861 acc!1298) key!6222)))))

(declare-fun b!8055420 () Bool)

(declare-fun e!4746910 () List!75697)

(assert (=> b!8055420 (= e!4746910 (keys!30861 acc!1298))))

(declare-fun b!8055421 () Bool)

(declare-fun e!4746911 () Unit!172242)

(declare-fun e!4746913 () Unit!172242)

(assert (=> b!8055421 (= e!4746911 e!4746913)))

(declare-fun c!1476470 () Bool)

(declare-fun call!747391 () Bool)

(assert (=> b!8055421 (= c!1476470 call!747391)))

(declare-fun b!8055422 () Bool)

(declare-fun lt!2729369 () Unit!172242)

(assert (=> b!8055422 (= e!4746911 lt!2729369)))

(declare-fun lt!2729373 () Unit!172242)

(assert (=> b!8055422 (= lt!2729373 (lemmaContainsKeyImpliesGetValueByKeyDefined!2565 (toList!11934 acc!1298) key!6222))))

(assert (=> b!8055422 (isDefined!14543 (getValueByKey!2794 (toList!11934 acc!1298) key!6222))))

(declare-fun lt!2729367 () Unit!172242)

(assert (=> b!8055422 (= lt!2729367 lt!2729373)))

(assert (=> b!8055422 (= lt!2729369 (lemmaInListThenGetKeysListContains!1248 (toList!11934 acc!1298) key!6222))))

(assert (=> b!8055422 call!747391))

(declare-fun b!8055423 () Bool)

(declare-fun e!4746909 () Bool)

(declare-fun e!4746912 () Bool)

(assert (=> b!8055423 (= e!4746909 e!4746912)))

(declare-fun res!3186067 () Bool)

(assert (=> b!8055423 (=> (not res!3186067) (not e!4746912))))

(assert (=> b!8055423 (= res!3186067 (isDefined!14543 (getValueByKey!2794 (toList!11934 acc!1298) key!6222)))))

(declare-fun b!8055424 () Bool)

(declare-fun Unit!172291 () Unit!172242)

(assert (=> b!8055424 (= e!4746913 Unit!172291)))

(declare-fun bm!747386 () Bool)

(assert (=> bm!747386 (= call!747391 (contains!21249 e!4746910 key!6222))))

(declare-fun c!1476471 () Bool)

(declare-fun c!1476469 () Bool)

(assert (=> bm!747386 (= c!1476471 c!1476469)))

(declare-fun b!8055425 () Bool)

(assert (=> b!8055425 (= e!4746912 (contains!21249 (keys!30861 acc!1298) key!6222))))

(declare-fun b!8055427 () Bool)

(assert (=> b!8055427 false))

(declare-fun lt!2729374 () Unit!172242)

(declare-fun lt!2729371 () Unit!172242)

(assert (=> b!8055427 (= lt!2729374 lt!2729371)))

(assert (=> b!8055427 (containsKey!4879 (toList!11934 acc!1298) key!6222)))

(assert (=> b!8055427 (= lt!2729371 (lemmaInGetKeysListThenContainsKey!1253 (toList!11934 acc!1298) key!6222))))

(declare-fun Unit!172294 () Unit!172242)

(assert (=> b!8055427 (= e!4746913 Unit!172294)))

(declare-fun b!8055426 () Bool)

(assert (=> b!8055426 (= e!4746910 (getKeysList!1253 (toList!11934 acc!1298)))))

(declare-fun d!2398446 () Bool)

(assert (=> d!2398446 e!4746909))

(declare-fun res!3186065 () Bool)

(assert (=> d!2398446 (=> res!3186065 e!4746909)))

(assert (=> d!2398446 (= res!3186065 e!4746914)))

(declare-fun res!3186066 () Bool)

(assert (=> d!2398446 (=> (not res!3186066) (not e!4746914))))

(declare-fun lt!2729368 () Bool)

(assert (=> d!2398446 (= res!3186066 (not lt!2729368))))

(declare-fun lt!2729372 () Bool)

(assert (=> d!2398446 (= lt!2729368 lt!2729372)))

(declare-fun lt!2729370 () Unit!172242)

(assert (=> d!2398446 (= lt!2729370 e!4746911)))

(assert (=> d!2398446 (= c!1476469 lt!2729372)))

(assert (=> d!2398446 (= lt!2729372 (containsKey!4879 (toList!11934 acc!1298) key!6222))))

(assert (=> d!2398446 (= (contains!21247 acc!1298 key!6222) lt!2729368)))

(assert (= (and d!2398446 c!1476469) b!8055422))

(assert (= (and d!2398446 (not c!1476469)) b!8055421))

(assert (= (and b!8055421 c!1476470) b!8055427))

(assert (= (and b!8055421 (not c!1476470)) b!8055424))

(assert (= (or b!8055422 b!8055421) bm!747386))

(assert (= (and bm!747386 c!1476471) b!8055426))

(assert (= (and bm!747386 (not c!1476471)) b!8055420))

(assert (= (and d!2398446 res!3186066) b!8055419))

(assert (= (and d!2398446 (not res!3186065)) b!8055423))

(assert (= (and b!8055423 res!3186067) b!8055425))

(declare-fun m!8408292 () Bool)

(assert (=> b!8055420 m!8408292))

(declare-fun m!8408294 () Bool)

(assert (=> b!8055426 m!8408294))

(declare-fun m!8408296 () Bool)

(assert (=> bm!747386 m!8408296))

(declare-fun m!8408298 () Bool)

(assert (=> d!2398446 m!8408298))

(assert (=> b!8055419 m!8408292))

(assert (=> b!8055419 m!8408292))

(declare-fun m!8408300 () Bool)

(assert (=> b!8055419 m!8408300))

(assert (=> b!8055425 m!8408292))

(assert (=> b!8055425 m!8408292))

(assert (=> b!8055425 m!8408300))

(assert (=> b!8055427 m!8408298))

(declare-fun m!8408302 () Bool)

(assert (=> b!8055427 m!8408302))

(declare-fun m!8408304 () Bool)

(assert (=> b!8055422 m!8408304))

(assert (=> b!8055422 m!8408252))

(assert (=> b!8055422 m!8408252))

(declare-fun m!8408306 () Bool)

(assert (=> b!8055422 m!8408306))

(declare-fun m!8408308 () Bool)

(assert (=> b!8055422 m!8408308))

(assert (=> b!8055423 m!8408252))

(assert (=> b!8055423 m!8408252))

(assert (=> b!8055423 m!8408306))

(assert (=> b!8055223 d!2398446))

(declare-fun e!4746917 () Bool)

(declare-fun tp!2413876 () Bool)

(declare-fun b!8055432 () Bool)

(assert (=> b!8055432 (= e!4746917 (and tp_is_empty!54955 tp_is_empty!54957 tp!2413876))))

(assert (=> b!8055212 (= tp!2413868 e!4746917)))

(assert (= (and b!8055212 ((_ is Cons!75570) (t!391468 l!14636))) b!8055432))

(declare-fun b!8055433 () Bool)

(declare-fun tp!2413877 () Bool)

(declare-fun e!4746918 () Bool)

(assert (=> b!8055433 (= e!4746918 (and tp_is_empty!54955 tp_is_empty!54957 tp!2413877))))

(assert (=> b!8055213 (= tp!2413869 e!4746918)))

(assert (= (and b!8055213 ((_ is Cons!75570) (toList!11934 acc!1298))) b!8055433))

(check-sat (not d!2398444) (not b!8055407) (not d!2398396) (not b!8055228) (not d!2398440) (not b!8055229) (not b!8055298) (not b!8055402) (not d!2398420) (not b!8055411) (not bm!747370) (not bm!747384) (not d!2398436) (not bm!747383) (not b!8055412) (not b!8055425) (not d!2398404) (not b!8055297) (not b!8055408) (not b!8055404) (not b!8055405) (not d!2398442) (not b!8055423) (not b!8055392) (not d!2398400) (not bm!747369) (not b!8055396) (not b!8055422) (not b!8055301) (not b!8055247) (not b!8055395) (not b!8055335) (not bm!747382) (not bm!747386) (not b!8055433) (not bm!747381) (not bm!747368) (not d!2398434) (not d!2398424) (not b!8055418) (not b!8055401) (not b!8055391) (not b!8055400) (not b!8055394) (not b!8055389) tp_is_empty!54957 (not b!8055403) (not b!8055432) (not b!8055397) (not b!8055241) (not b!8055398) (not b!8055388) (not b!8055410) (not b!8055426) (not bm!747385) (not d!2398446) (not b!8055336) (not b!8055427) (not b!8055300) (not b!8055420) (not b!8055419) tp_is_empty!54955)
(check-sat)
