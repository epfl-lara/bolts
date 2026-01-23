; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!453450 () Bool)

(assert start!453450)

(declare-fun b!4560598 () Bool)

(declare-fun tp!1339239 () Bool)

(declare-fun e!2842877 () Bool)

(declare-fun tp_is_empty!28241 () Bool)

(declare-fun tp_is_empty!28243 () Bool)

(assert (=> b!4560598 (= e!2842877 (and tp_is_empty!28241 tp_is_empty!28243 tp!1339239))))

(declare-fun b!4560599 () Bool)

(declare-fun res!1903021 () Bool)

(declare-fun e!2842879 () Bool)

(assert (=> b!4560599 (=> (not res!1903021) (not e!2842879))))

(declare-datatypes ((K!12243 0))(
  ( (K!12244 (val!18065 Int)) )
))
(declare-datatypes ((V!12489 0))(
  ( (V!12490 (val!18066 Int)) )
))
(declare-datatypes ((tuple2!51398 0))(
  ( (tuple2!51399 (_1!28993 K!12243) (_2!28993 V!12489)) )
))
(declare-datatypes ((List!50989 0))(
  ( (Nil!50865) (Cons!50865 (h!56776 tuple2!51398) (t!357963 List!50989)) )
))
(declare-datatypes ((tuple2!51400 0))(
  ( (tuple2!51401 (_1!28994 (_ BitVec 64)) (_2!28994 List!50989)) )
))
(declare-datatypes ((List!50990 0))(
  ( (Nil!50866) (Cons!50866 (h!56777 tuple2!51400) (t!357964 List!50990)) )
))
(declare-datatypes ((ListLongMap!3121 0))(
  ( (ListLongMap!3122 (toList!4489 List!50990)) )
))
(declare-fun lm!1477 () ListLongMap!3121)

(declare-datatypes ((Hashable!5636 0))(
  ( (HashableExt!5635 (__x!31339 Int)) )
))
(declare-fun hashF!1107 () Hashable!5636)

(declare-fun allKeysSameHashInMap!1348 (ListLongMap!3121 Hashable!5636) Bool)

(assert (=> b!4560599 (= res!1903021 (allKeysSameHashInMap!1348 lm!1477 hashF!1107))))

(declare-fun b!4560600 () Bool)

(declare-fun res!1903022 () Bool)

(assert (=> b!4560600 (=> (not res!1903022) (not e!2842879))))

(declare-fun key!3287 () K!12243)

(declare-datatypes ((ListMap!3751 0))(
  ( (ListMap!3752 (toList!4490 List!50989)) )
))
(declare-fun contains!13717 (ListMap!3751 K!12243) Bool)

(declare-fun extractMap!1297 (List!50990) ListMap!3751)

(assert (=> b!4560600 (= res!1903022 (contains!13717 (extractMap!1297 (toList!4489 lm!1477)) key!3287))))

(declare-fun b!4560601 () Bool)

(declare-fun e!2842875 () Bool)

(declare-fun e!2842876 () Bool)

(assert (=> b!4560601 (= e!2842875 e!2842876)))

(declare-fun res!1903020 () Bool)

(assert (=> b!4560601 (=> res!1903020 e!2842876)))

(declare-fun lt!1731523 () ListLongMap!3121)

(declare-fun hash!344 () (_ BitVec 64))

(declare-fun contains!13718 (ListLongMap!3121 (_ BitVec 64)) Bool)

(assert (=> b!4560601 (= res!1903020 (not (contains!13718 lt!1731523 hash!344)))))

(declare-fun tail!7863 (ListLongMap!3121) ListLongMap!3121)

(assert (=> b!4560601 (= lt!1731523 (tail!7863 lm!1477))))

(declare-fun b!4560602 () Bool)

(declare-fun res!1903017 () Bool)

(declare-fun e!2842878 () Bool)

(assert (=> b!4560602 (=> (not res!1903017) (not e!2842878))))

(declare-fun newBucket!178 () List!50989)

(declare-fun allKeysSameHash!1095 (List!50989 (_ BitVec 64) Hashable!5636) Bool)

(assert (=> b!4560602 (= res!1903017 (allKeysSameHash!1095 newBucket!178 hash!344 hashF!1107))))

(declare-fun b!4560603 () Bool)

(declare-fun lt!1731518 () tuple2!51400)

(declare-fun contains!13719 (List!50990 tuple2!51400) Bool)

(assert (=> b!4560603 (= e!2842876 (contains!13719 (t!357964 (toList!4489 lm!1477)) lt!1731518))))

(declare-fun b!4560604 () Bool)

(assert (=> b!4560604 (= e!2842879 e!2842878)))

(declare-fun res!1903015 () Bool)

(assert (=> b!4560604 (=> (not res!1903015) (not e!2842878))))

(declare-fun lt!1731519 () (_ BitVec 64))

(assert (=> b!4560604 (= res!1903015 (= lt!1731519 hash!344))))

(declare-fun hash!3037 (Hashable!5636 K!12243) (_ BitVec 64))

(assert (=> b!4560604 (= lt!1731519 (hash!3037 hashF!1107 key!3287))))

(declare-fun b!4560605 () Bool)

(declare-fun res!1903019 () Bool)

(assert (=> b!4560605 (=> res!1903019 e!2842876)))

(declare-fun lt!1731517 () List!50989)

(declare-fun apply!11978 (ListLongMap!3121 (_ BitVec 64)) List!50989)

(assert (=> b!4560605 (= res!1903019 (not (= (apply!11978 lt!1731523 hash!344) lt!1731517)))))

(declare-fun res!1903023 () Bool)

(assert (=> start!453450 (=> (not res!1903023) (not e!2842879))))

(declare-fun lambda!179972 () Int)

(declare-fun forall!10432 (List!50990 Int) Bool)

(assert (=> start!453450 (= res!1903023 (forall!10432 (toList!4489 lm!1477) lambda!179972))))

(assert (=> start!453450 e!2842879))

(assert (=> start!453450 true))

(declare-fun e!2842874 () Bool)

(declare-fun inv!66428 (ListLongMap!3121) Bool)

(assert (=> start!453450 (and (inv!66428 lm!1477) e!2842874)))

(assert (=> start!453450 tp_is_empty!28241))

(assert (=> start!453450 e!2842877))

(declare-fun b!4560606 () Bool)

(declare-fun tp!1339238 () Bool)

(assert (=> b!4560606 (= e!2842874 tp!1339238)))

(declare-fun b!4560607 () Bool)

(declare-fun res!1903016 () Bool)

(assert (=> b!4560607 (=> res!1903016 e!2842875)))

(assert (=> b!4560607 (= res!1903016 (or (is-Nil!50866 (toList!4489 lm!1477)) (= (_1!28994 (h!56777 (toList!4489 lm!1477))) hash!344)))))

(declare-fun b!4560608 () Bool)

(declare-fun res!1903014 () Bool)

(assert (=> b!4560608 (=> res!1903014 e!2842875)))

(declare-fun noDuplicateKeys!1241 (List!50989) Bool)

(assert (=> b!4560608 (= res!1903014 (not (noDuplicateKeys!1241 newBucket!178)))))

(declare-fun b!4560609 () Bool)

(assert (=> b!4560609 (= e!2842878 (not e!2842875))))

(declare-fun res!1903018 () Bool)

(assert (=> b!4560609 (=> res!1903018 e!2842875)))

(declare-fun removePairForKey!868 (List!50989 K!12243) List!50989)

(assert (=> b!4560609 (= res!1903018 (not (= newBucket!178 (removePairForKey!868 lt!1731517 key!3287))))))

(declare-datatypes ((Unit!102488 0))(
  ( (Unit!102489) )
))
(declare-fun lt!1731522 () Unit!102488)

(declare-fun forallContained!2696 (List!50990 Int tuple2!51400) Unit!102488)

(assert (=> b!4560609 (= lt!1731522 (forallContained!2696 (toList!4489 lm!1477) lambda!179972 lt!1731518))))

(assert (=> b!4560609 (contains!13719 (toList!4489 lm!1477) lt!1731518)))

(assert (=> b!4560609 (= lt!1731518 (tuple2!51401 hash!344 lt!1731517))))

(declare-fun lt!1731521 () Unit!102488)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!753 (List!50990 (_ BitVec 64) List!50989) Unit!102488)

(assert (=> b!4560609 (= lt!1731521 (lemmaGetValueByKeyImpliesContainsTuple!753 (toList!4489 lm!1477) hash!344 lt!1731517))))

(assert (=> b!4560609 (= lt!1731517 (apply!11978 lm!1477 hash!344))))

(assert (=> b!4560609 (contains!13718 lm!1477 lt!1731519)))

(declare-fun lt!1731520 () Unit!102488)

(declare-fun lemmaInGenMapThenLongMapContainsHash!315 (ListLongMap!3121 K!12243 Hashable!5636) Unit!102488)

(assert (=> b!4560609 (= lt!1731520 (lemmaInGenMapThenLongMapContainsHash!315 lm!1477 key!3287 hashF!1107))))

(assert (= (and start!453450 res!1903023) b!4560599))

(assert (= (and b!4560599 res!1903021) b!4560600))

(assert (= (and b!4560600 res!1903022) b!4560604))

(assert (= (and b!4560604 res!1903015) b!4560602))

(assert (= (and b!4560602 res!1903017) b!4560609))

(assert (= (and b!4560609 (not res!1903018)) b!4560608))

(assert (= (and b!4560608 (not res!1903014)) b!4560607))

(assert (= (and b!4560607 (not res!1903016)) b!4560601))

(assert (= (and b!4560601 (not res!1903020)) b!4560605))

(assert (= (and b!4560605 (not res!1903019)) b!4560603))

(assert (= start!453450 b!4560606))

(assert (= (and start!453450 (is-Cons!50865 newBucket!178)) b!4560598))

(declare-fun m!5351001 () Bool)

(assert (=> b!4560602 m!5351001))

(declare-fun m!5351003 () Bool)

(assert (=> b!4560609 m!5351003))

(declare-fun m!5351005 () Bool)

(assert (=> b!4560609 m!5351005))

(declare-fun m!5351007 () Bool)

(assert (=> b!4560609 m!5351007))

(declare-fun m!5351009 () Bool)

(assert (=> b!4560609 m!5351009))

(declare-fun m!5351011 () Bool)

(assert (=> b!4560609 m!5351011))

(declare-fun m!5351013 () Bool)

(assert (=> b!4560609 m!5351013))

(declare-fun m!5351015 () Bool)

(assert (=> b!4560609 m!5351015))

(declare-fun m!5351017 () Bool)

(assert (=> b!4560601 m!5351017))

(declare-fun m!5351019 () Bool)

(assert (=> b!4560601 m!5351019))

(declare-fun m!5351021 () Bool)

(assert (=> b!4560604 m!5351021))

(declare-fun m!5351023 () Bool)

(assert (=> b!4560599 m!5351023))

(declare-fun m!5351025 () Bool)

(assert (=> b!4560603 m!5351025))

(declare-fun m!5351027 () Bool)

(assert (=> b!4560605 m!5351027))

(declare-fun m!5351029 () Bool)

(assert (=> b!4560608 m!5351029))

(declare-fun m!5351031 () Bool)

(assert (=> b!4560600 m!5351031))

(assert (=> b!4560600 m!5351031))

(declare-fun m!5351033 () Bool)

(assert (=> b!4560600 m!5351033))

(declare-fun m!5351035 () Bool)

(assert (=> start!453450 m!5351035))

(declare-fun m!5351037 () Bool)

(assert (=> start!453450 m!5351037))

(push 1)

(assert (not start!453450))

(assert (not b!4560603))

(assert (not b!4560609))

(assert (not b!4560600))

(assert (not b!4560598))

(assert tp_is_empty!28241)

(assert (not b!4560605))

(assert (not b!4560602))

(assert (not b!4560599))

(assert (not b!4560606))

(assert (not b!4560604))

(assert tp_is_empty!28243)

(assert (not b!4560608))

(assert (not b!4560601))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1419785 () Bool)

(declare-fun hash!3039 (Hashable!5636 K!12243) (_ BitVec 64))

(assert (=> d!1419785 (= (hash!3037 hashF!1107 key!3287) (hash!3039 hashF!1107 key!3287))))

(declare-fun bs!939942 () Bool)

(assert (= bs!939942 d!1419785))

(declare-fun m!5351079 () Bool)

(assert (=> bs!939942 m!5351079))

(assert (=> b!4560604 d!1419785))

(declare-fun bs!939944 () Bool)

(declare-fun d!1419787 () Bool)

(assert (= bs!939944 (and d!1419787 start!453450)))

(declare-fun lambda!179983 () Int)

(assert (=> bs!939944 (= lambda!179983 lambda!179972)))

(assert (=> d!1419787 (contains!13718 lm!1477 (hash!3037 hashF!1107 key!3287))))

(declare-fun lt!1731547 () Unit!102488)

(declare-fun choose!30218 (ListLongMap!3121 K!12243 Hashable!5636) Unit!102488)

(assert (=> d!1419787 (= lt!1731547 (choose!30218 lm!1477 key!3287 hashF!1107))))

(assert (=> d!1419787 (forall!10432 (toList!4489 lm!1477) lambda!179983)))

(assert (=> d!1419787 (= (lemmaInGenMapThenLongMapContainsHash!315 lm!1477 key!3287 hashF!1107) lt!1731547)))

(declare-fun bs!939945 () Bool)

(assert (= bs!939945 d!1419787))

(assert (=> bs!939945 m!5351021))

(assert (=> bs!939945 m!5351021))

(declare-fun m!5351085 () Bool)

(assert (=> bs!939945 m!5351085))

(declare-fun m!5351087 () Bool)

(assert (=> bs!939945 m!5351087))

(declare-fun m!5351089 () Bool)

(assert (=> bs!939945 m!5351089))

(assert (=> b!4560609 d!1419787))

(declare-fun d!1419791 () Bool)

(declare-datatypes ((Option!11273 0))(
  ( (None!11272) (Some!11272 (v!45068 List!50989)) )
))
(declare-fun get!16760 (Option!11273) List!50989)

(declare-fun getValueByKey!1205 (List!50990 (_ BitVec 64)) Option!11273)

(assert (=> d!1419791 (= (apply!11978 lm!1477 hash!344) (get!16760 (getValueByKey!1205 (toList!4489 lm!1477) hash!344)))))

(declare-fun bs!939946 () Bool)

(assert (= bs!939946 d!1419791))

(declare-fun m!5351091 () Bool)

(assert (=> bs!939946 m!5351091))

(assert (=> bs!939946 m!5351091))

(declare-fun m!5351093 () Bool)

(assert (=> bs!939946 m!5351093))

(assert (=> b!4560609 d!1419791))

(declare-fun d!1419793 () Bool)

(declare-fun dynLambda!21277 (Int tuple2!51400) Bool)

(assert (=> d!1419793 (dynLambda!21277 lambda!179972 lt!1731518)))

(declare-fun lt!1731550 () Unit!102488)

(declare-fun choose!30219 (List!50990 Int tuple2!51400) Unit!102488)

(assert (=> d!1419793 (= lt!1731550 (choose!30219 (toList!4489 lm!1477) lambda!179972 lt!1731518))))

(declare-fun e!2842900 () Bool)

(assert (=> d!1419793 e!2842900))

(declare-fun res!1903056 () Bool)

(assert (=> d!1419793 (=> (not res!1903056) (not e!2842900))))

(assert (=> d!1419793 (= res!1903056 (forall!10432 (toList!4489 lm!1477) lambda!179972))))

(assert (=> d!1419793 (= (forallContained!2696 (toList!4489 lm!1477) lambda!179972 lt!1731518) lt!1731550)))

(declare-fun b!4560650 () Bool)

(assert (=> b!4560650 (= e!2842900 (contains!13719 (toList!4489 lm!1477) lt!1731518))))

(assert (= (and d!1419793 res!1903056) b!4560650))

(declare-fun b_lambda!162151 () Bool)

(assert (=> (not b_lambda!162151) (not d!1419793)))

(declare-fun m!5351095 () Bool)

(assert (=> d!1419793 m!5351095))

(declare-fun m!5351097 () Bool)

(assert (=> d!1419793 m!5351097))

(assert (=> d!1419793 m!5351035))

(assert (=> b!4560650 m!5351015))

(assert (=> b!4560609 d!1419793))

(declare-fun d!1419795 () Bool)

(declare-fun e!2842906 () Bool)

(assert (=> d!1419795 e!2842906))

(declare-fun res!1903059 () Bool)

(assert (=> d!1419795 (=> res!1903059 e!2842906)))

(declare-fun lt!1731564 () Bool)

(assert (=> d!1419795 (= res!1903059 (not lt!1731564))))

(declare-fun lt!1731563 () Bool)

(assert (=> d!1419795 (= lt!1731564 lt!1731563)))

(declare-fun lt!1731565 () Unit!102488)

(declare-fun e!2842905 () Unit!102488)

(assert (=> d!1419795 (= lt!1731565 e!2842905)))

(declare-fun c!779779 () Bool)

(assert (=> d!1419795 (= c!779779 lt!1731563)))

(declare-fun containsKey!1976 (List!50990 (_ BitVec 64)) Bool)

(assert (=> d!1419795 (= lt!1731563 (containsKey!1976 (toList!4489 lm!1477) lt!1731519))))

(assert (=> d!1419795 (= (contains!13718 lm!1477 lt!1731519) lt!1731564)))

(declare-fun b!4560657 () Bool)

(declare-fun lt!1731562 () Unit!102488)

(assert (=> b!4560657 (= e!2842905 lt!1731562)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1109 (List!50990 (_ BitVec 64)) Unit!102488)

(assert (=> b!4560657 (= lt!1731562 (lemmaContainsKeyImpliesGetValueByKeyDefined!1109 (toList!4489 lm!1477) lt!1731519))))

(declare-fun isDefined!8545 (Option!11273) Bool)

(assert (=> b!4560657 (isDefined!8545 (getValueByKey!1205 (toList!4489 lm!1477) lt!1731519))))

(declare-fun b!4560658 () Bool)

(declare-fun Unit!102492 () Unit!102488)

(assert (=> b!4560658 (= e!2842905 Unit!102492)))

(declare-fun b!4560659 () Bool)

(assert (=> b!4560659 (= e!2842906 (isDefined!8545 (getValueByKey!1205 (toList!4489 lm!1477) lt!1731519)))))

(assert (= (and d!1419795 c!779779) b!4560657))

(assert (= (and d!1419795 (not c!779779)) b!4560658))

(assert (= (and d!1419795 (not res!1903059)) b!4560659))

(declare-fun m!5351109 () Bool)

(assert (=> d!1419795 m!5351109))

(declare-fun m!5351111 () Bool)

(assert (=> b!4560657 m!5351111))

(declare-fun m!5351113 () Bool)

(assert (=> b!4560657 m!5351113))

(assert (=> b!4560657 m!5351113))

(declare-fun m!5351115 () Bool)

(assert (=> b!4560657 m!5351115))

(assert (=> b!4560659 m!5351113))

(assert (=> b!4560659 m!5351113))

(assert (=> b!4560659 m!5351115))

(assert (=> b!4560609 d!1419795))

(declare-fun d!1419801 () Bool)

(assert (=> d!1419801 (contains!13719 (toList!4489 lm!1477) (tuple2!51401 hash!344 lt!1731517))))

(declare-fun lt!1731570 () Unit!102488)

(declare-fun choose!30220 (List!50990 (_ BitVec 64) List!50989) Unit!102488)

(assert (=> d!1419801 (= lt!1731570 (choose!30220 (toList!4489 lm!1477) hash!344 lt!1731517))))

(declare-fun e!2842911 () Bool)

(assert (=> d!1419801 e!2842911))

(declare-fun res!1903062 () Bool)

(assert (=> d!1419801 (=> (not res!1903062) (not e!2842911))))

(declare-fun isStrictlySorted!487 (List!50990) Bool)

(assert (=> d!1419801 (= res!1903062 (isStrictlySorted!487 (toList!4489 lm!1477)))))

(assert (=> d!1419801 (= (lemmaGetValueByKeyImpliesContainsTuple!753 (toList!4489 lm!1477) hash!344 lt!1731517) lt!1731570)))

(declare-fun b!4560666 () Bool)

(assert (=> b!4560666 (= e!2842911 (= (getValueByKey!1205 (toList!4489 lm!1477) hash!344) (Some!11272 lt!1731517)))))

(assert (= (and d!1419801 res!1903062) b!4560666))

(declare-fun m!5351117 () Bool)

(assert (=> d!1419801 m!5351117))

(declare-fun m!5351119 () Bool)

(assert (=> d!1419801 m!5351119))

(declare-fun m!5351121 () Bool)

(assert (=> d!1419801 m!5351121))

(assert (=> b!4560666 m!5351091))

(assert (=> b!4560609 d!1419801))

(declare-fun d!1419803 () Bool)

(declare-fun lt!1731573 () Bool)

(declare-fun content!8519 (List!50990) (Set tuple2!51400))

(assert (=> d!1419803 (= lt!1731573 (set.member lt!1731518 (content!8519 (toList!4489 lm!1477))))))

(declare-fun e!2842919 () Bool)

(assert (=> d!1419803 (= lt!1731573 e!2842919)))

(declare-fun res!1903068 () Bool)

(assert (=> d!1419803 (=> (not res!1903068) (not e!2842919))))

(assert (=> d!1419803 (= res!1903068 (is-Cons!50866 (toList!4489 lm!1477)))))

(assert (=> d!1419803 (= (contains!13719 (toList!4489 lm!1477) lt!1731518) lt!1731573)))

(declare-fun b!4560675 () Bool)

(declare-fun e!2842918 () Bool)

(assert (=> b!4560675 (= e!2842919 e!2842918)))

(declare-fun res!1903067 () Bool)

(assert (=> b!4560675 (=> res!1903067 e!2842918)))

(assert (=> b!4560675 (= res!1903067 (= (h!56777 (toList!4489 lm!1477)) lt!1731518))))

(declare-fun b!4560676 () Bool)

(assert (=> b!4560676 (= e!2842918 (contains!13719 (t!357964 (toList!4489 lm!1477)) lt!1731518))))

(assert (= (and d!1419803 res!1903068) b!4560675))

(assert (= (and b!4560675 (not res!1903067)) b!4560676))

(declare-fun m!5351123 () Bool)

(assert (=> d!1419803 m!5351123))

(declare-fun m!5351125 () Bool)

(assert (=> d!1419803 m!5351125))

(assert (=> b!4560676 m!5351025))

(assert (=> b!4560609 d!1419803))

(declare-fun b!4560690 () Bool)

(declare-fun e!2842927 () List!50989)

(declare-fun e!2842926 () List!50989)

(assert (=> b!4560690 (= e!2842927 e!2842926)))

(declare-fun c!779790 () Bool)

(assert (=> b!4560690 (= c!779790 (is-Cons!50865 lt!1731517))))

(declare-fun b!4560692 () Bool)

(assert (=> b!4560692 (= e!2842926 Nil!50865)))

(declare-fun b!4560689 () Bool)

(assert (=> b!4560689 (= e!2842927 (t!357963 lt!1731517))))

(declare-fun b!4560691 () Bool)

(assert (=> b!4560691 (= e!2842926 (Cons!50865 (h!56776 lt!1731517) (removePairForKey!868 (t!357963 lt!1731517) key!3287)))))

(declare-fun d!1419805 () Bool)

(declare-fun lt!1731577 () List!50989)

(declare-fun containsKey!1977 (List!50989 K!12243) Bool)

(assert (=> d!1419805 (not (containsKey!1977 lt!1731577 key!3287))))

(assert (=> d!1419805 (= lt!1731577 e!2842927)))

(declare-fun c!779791 () Bool)

(assert (=> d!1419805 (= c!779791 (and (is-Cons!50865 lt!1731517) (= (_1!28993 (h!56776 lt!1731517)) key!3287)))))

(assert (=> d!1419805 (noDuplicateKeys!1241 lt!1731517)))

(assert (=> d!1419805 (= (removePairForKey!868 lt!1731517 key!3287) lt!1731577)))

(assert (= (and d!1419805 c!779791) b!4560689))

(assert (= (and d!1419805 (not c!779791)) b!4560690))

(assert (= (and b!4560690 c!779790) b!4560691))

(assert (= (and b!4560690 (not c!779790)) b!4560692))

(declare-fun m!5351133 () Bool)

(assert (=> b!4560691 m!5351133))

(declare-fun m!5351135 () Bool)

(assert (=> d!1419805 m!5351135))

(declare-fun m!5351137 () Bool)

(assert (=> d!1419805 m!5351137))

(assert (=> b!4560609 d!1419805))

(declare-fun d!1419809 () Bool)

(declare-fun lt!1731578 () Bool)

(assert (=> d!1419809 (= lt!1731578 (set.member lt!1731518 (content!8519 (t!357964 (toList!4489 lm!1477)))))))

(declare-fun e!2842929 () Bool)

(assert (=> d!1419809 (= lt!1731578 e!2842929)))

(declare-fun res!1903070 () Bool)

(assert (=> d!1419809 (=> (not res!1903070) (not e!2842929))))

(assert (=> d!1419809 (= res!1903070 (is-Cons!50866 (t!357964 (toList!4489 lm!1477))))))

(assert (=> d!1419809 (= (contains!13719 (t!357964 (toList!4489 lm!1477)) lt!1731518) lt!1731578)))

(declare-fun b!4560693 () Bool)

(declare-fun e!2842928 () Bool)

(assert (=> b!4560693 (= e!2842929 e!2842928)))

(declare-fun res!1903069 () Bool)

(assert (=> b!4560693 (=> res!1903069 e!2842928)))

(assert (=> b!4560693 (= res!1903069 (= (h!56777 (t!357964 (toList!4489 lm!1477))) lt!1731518))))

(declare-fun b!4560694 () Bool)

(assert (=> b!4560694 (= e!2842928 (contains!13719 (t!357964 (t!357964 (toList!4489 lm!1477))) lt!1731518))))

(assert (= (and d!1419809 res!1903070) b!4560693))

(assert (= (and b!4560693 (not res!1903069)) b!4560694))

(declare-fun m!5351139 () Bool)

(assert (=> d!1419809 m!5351139))

(declare-fun m!5351141 () Bool)

(assert (=> d!1419809 m!5351141))

(declare-fun m!5351143 () Bool)

(assert (=> b!4560694 m!5351143))

(assert (=> b!4560603 d!1419809))

(declare-fun d!1419811 () Bool)

(declare-fun res!1903077 () Bool)

(declare-fun e!2842936 () Bool)

(assert (=> d!1419811 (=> res!1903077 e!2842936)))

(assert (=> d!1419811 (= res!1903077 (not (is-Cons!50865 newBucket!178)))))

(assert (=> d!1419811 (= (noDuplicateKeys!1241 newBucket!178) e!2842936)))

(declare-fun b!4560701 () Bool)

(declare-fun e!2842937 () Bool)

(assert (=> b!4560701 (= e!2842936 e!2842937)))

(declare-fun res!1903078 () Bool)

(assert (=> b!4560701 (=> (not res!1903078) (not e!2842937))))

(assert (=> b!4560701 (= res!1903078 (not (containsKey!1977 (t!357963 newBucket!178) (_1!28993 (h!56776 newBucket!178)))))))

(declare-fun b!4560702 () Bool)

(assert (=> b!4560702 (= e!2842937 (noDuplicateKeys!1241 (t!357963 newBucket!178)))))

(assert (= (and d!1419811 (not res!1903077)) b!4560701))

(assert (= (and b!4560701 res!1903078) b!4560702))

(declare-fun m!5351145 () Bool)

(assert (=> b!4560701 m!5351145))

(declare-fun m!5351147 () Bool)

(assert (=> b!4560702 m!5351147))

(assert (=> b!4560608 d!1419811))

(declare-fun d!1419813 () Bool)

(assert (=> d!1419813 true))

(assert (=> d!1419813 true))

(declare-fun lambda!179989 () Int)

(declare-fun forall!10434 (List!50989 Int) Bool)

(assert (=> d!1419813 (= (allKeysSameHash!1095 newBucket!178 hash!344 hashF!1107) (forall!10434 newBucket!178 lambda!179989))))

(declare-fun bs!939951 () Bool)

(assert (= bs!939951 d!1419813))

(declare-fun m!5351149 () Bool)

(assert (=> bs!939951 m!5351149))

(assert (=> b!4560602 d!1419813))

(declare-fun d!1419815 () Bool)

(declare-fun e!2842940 () Bool)

(assert (=> d!1419815 e!2842940))

(declare-fun res!1903080 () Bool)

(assert (=> d!1419815 (=> res!1903080 e!2842940)))

(declare-fun lt!1731584 () Bool)

(assert (=> d!1419815 (= res!1903080 (not lt!1731584))))

(declare-fun lt!1731583 () Bool)

(assert (=> d!1419815 (= lt!1731584 lt!1731583)))

(declare-fun lt!1731585 () Unit!102488)

(declare-fun e!2842939 () Unit!102488)

(assert (=> d!1419815 (= lt!1731585 e!2842939)))

(declare-fun c!779792 () Bool)

(assert (=> d!1419815 (= c!779792 lt!1731583)))

(assert (=> d!1419815 (= lt!1731583 (containsKey!1976 (toList!4489 lt!1731523) hash!344))))

(assert (=> d!1419815 (= (contains!13718 lt!1731523 hash!344) lt!1731584)))

(declare-fun b!4560708 () Bool)

(declare-fun lt!1731582 () Unit!102488)

(assert (=> b!4560708 (= e!2842939 lt!1731582)))

(assert (=> b!4560708 (= lt!1731582 (lemmaContainsKeyImpliesGetValueByKeyDefined!1109 (toList!4489 lt!1731523) hash!344))))

(assert (=> b!4560708 (isDefined!8545 (getValueByKey!1205 (toList!4489 lt!1731523) hash!344))))

(declare-fun b!4560709 () Bool)

(declare-fun Unit!102493 () Unit!102488)

(assert (=> b!4560709 (= e!2842939 Unit!102493)))

(declare-fun b!4560710 () Bool)

(assert (=> b!4560710 (= e!2842940 (isDefined!8545 (getValueByKey!1205 (toList!4489 lt!1731523) hash!344)))))

(assert (= (and d!1419815 c!779792) b!4560708))

(assert (= (and d!1419815 (not c!779792)) b!4560709))

(assert (= (and d!1419815 (not res!1903080)) b!4560710))

(declare-fun m!5351151 () Bool)

(assert (=> d!1419815 m!5351151))

(declare-fun m!5351153 () Bool)

(assert (=> b!4560708 m!5351153))

(declare-fun m!5351155 () Bool)

(assert (=> b!4560708 m!5351155))

(assert (=> b!4560708 m!5351155))

(declare-fun m!5351157 () Bool)

(assert (=> b!4560708 m!5351157))

(assert (=> b!4560710 m!5351155))

(assert (=> b!4560710 m!5351155))

(assert (=> b!4560710 m!5351157))

(assert (=> b!4560601 d!1419815))

(declare-fun d!1419817 () Bool)

(declare-fun tail!7865 (List!50990) List!50990)

(assert (=> d!1419817 (= (tail!7863 lm!1477) (ListLongMap!3122 (tail!7865 (toList!4489 lm!1477))))))

(declare-fun bs!939952 () Bool)

(assert (= bs!939952 d!1419817))

(declare-fun m!5351163 () Bool)

(assert (=> bs!939952 m!5351163))

(assert (=> b!4560601 d!1419817))

(declare-fun b!4560738 () Bool)

(declare-datatypes ((List!50993 0))(
  ( (Nil!50869) (Cons!50869 (h!56782 K!12243) (t!357967 List!50993)) )
))
(declare-fun e!2842961 () List!50993)

(declare-fun keys!17738 (ListMap!3751) List!50993)

(assert (=> b!4560738 (= e!2842961 (keys!17738 (extractMap!1297 (toList!4489 lm!1477))))))

(declare-fun b!4560739 () Bool)

(declare-fun e!2842959 () Bool)

(declare-fun contains!13723 (List!50993 K!12243) Bool)

(assert (=> b!4560739 (= e!2842959 (not (contains!13723 (keys!17738 (extractMap!1297 (toList!4489 lm!1477))) key!3287)))))

(declare-fun b!4560740 () Bool)

(declare-fun e!2842962 () Unit!102488)

(declare-fun lt!1731617 () Unit!102488)

(assert (=> b!4560740 (= e!2842962 lt!1731617)))

(declare-fun lt!1731619 () Unit!102488)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1110 (List!50989 K!12243) Unit!102488)

(assert (=> b!4560740 (= lt!1731619 (lemmaContainsKeyImpliesGetValueByKeyDefined!1110 (toList!4490 (extractMap!1297 (toList!4489 lm!1477))) key!3287))))

(declare-datatypes ((Option!11274 0))(
  ( (None!11273) (Some!11273 (v!45069 V!12489)) )
))
(declare-fun isDefined!8546 (Option!11274) Bool)

(declare-fun getValueByKey!1206 (List!50989 K!12243) Option!11274)

(assert (=> b!4560740 (isDefined!8546 (getValueByKey!1206 (toList!4490 (extractMap!1297 (toList!4489 lm!1477))) key!3287))))

(declare-fun lt!1731618 () Unit!102488)

(assert (=> b!4560740 (= lt!1731618 lt!1731619)))

(declare-fun lemmaInListThenGetKeysListContains!517 (List!50989 K!12243) Unit!102488)

(assert (=> b!4560740 (= lt!1731617 (lemmaInListThenGetKeysListContains!517 (toList!4490 (extractMap!1297 (toList!4489 lm!1477))) key!3287))))

(declare-fun call!318265 () Bool)

(assert (=> b!4560740 call!318265))

(declare-fun b!4560742 () Bool)

(declare-fun e!2842963 () Unit!102488)

(declare-fun Unit!102494 () Unit!102488)

(assert (=> b!4560742 (= e!2842963 Unit!102494)))

(declare-fun b!4560743 () Bool)

(declare-fun getKeysList!521 (List!50989) List!50993)

(assert (=> b!4560743 (= e!2842961 (getKeysList!521 (toList!4490 (extractMap!1297 (toList!4489 lm!1477)))))))

(declare-fun b!4560744 () Bool)

(declare-fun e!2842960 () Bool)

(assert (=> b!4560744 (= e!2842960 (contains!13723 (keys!17738 (extractMap!1297 (toList!4489 lm!1477))) key!3287))))

(declare-fun b!4560745 () Bool)

(assert (=> b!4560745 (= e!2842962 e!2842963)))

(declare-fun c!779802 () Bool)

(assert (=> b!4560745 (= c!779802 call!318265)))

(declare-fun d!1419821 () Bool)

(declare-fun e!2842964 () Bool)

(assert (=> d!1419821 e!2842964))

(declare-fun res!1903090 () Bool)

(assert (=> d!1419821 (=> res!1903090 e!2842964)))

(assert (=> d!1419821 (= res!1903090 e!2842959)))

(declare-fun res!1903092 () Bool)

(assert (=> d!1419821 (=> (not res!1903092) (not e!2842959))))

(declare-fun lt!1731614 () Bool)

(assert (=> d!1419821 (= res!1903092 (not lt!1731614))))

(declare-fun lt!1731616 () Bool)

(assert (=> d!1419821 (= lt!1731614 lt!1731616)))

(declare-fun lt!1731620 () Unit!102488)

(assert (=> d!1419821 (= lt!1731620 e!2842962)))

(declare-fun c!779804 () Bool)

(assert (=> d!1419821 (= c!779804 lt!1731616)))

(declare-fun containsKey!1978 (List!50989 K!12243) Bool)

(assert (=> d!1419821 (= lt!1731616 (containsKey!1978 (toList!4490 (extractMap!1297 (toList!4489 lm!1477))) key!3287))))

(assert (=> d!1419821 (= (contains!13717 (extractMap!1297 (toList!4489 lm!1477)) key!3287) lt!1731614)))

(declare-fun b!4560741 () Bool)

(assert (=> b!4560741 false))

(declare-fun lt!1731615 () Unit!102488)

(declare-fun lt!1731621 () Unit!102488)

(assert (=> b!4560741 (= lt!1731615 lt!1731621)))

(assert (=> b!4560741 (containsKey!1978 (toList!4490 (extractMap!1297 (toList!4489 lm!1477))) key!3287)))

(declare-fun lemmaInGetKeysListThenContainsKey!520 (List!50989 K!12243) Unit!102488)

(assert (=> b!4560741 (= lt!1731621 (lemmaInGetKeysListThenContainsKey!520 (toList!4490 (extractMap!1297 (toList!4489 lm!1477))) key!3287))))

(declare-fun Unit!102495 () Unit!102488)

(assert (=> b!4560741 (= e!2842963 Unit!102495)))

(declare-fun bm!318260 () Bool)

(assert (=> bm!318260 (= call!318265 (contains!13723 e!2842961 key!3287))))

(declare-fun c!779803 () Bool)

(assert (=> bm!318260 (= c!779803 c!779804)))

(declare-fun b!4560746 () Bool)

(assert (=> b!4560746 (= e!2842964 e!2842960)))

(declare-fun res!1903091 () Bool)

(assert (=> b!4560746 (=> (not res!1903091) (not e!2842960))))

(assert (=> b!4560746 (= res!1903091 (isDefined!8546 (getValueByKey!1206 (toList!4490 (extractMap!1297 (toList!4489 lm!1477))) key!3287)))))

(assert (= (and d!1419821 c!779804) b!4560740))

(assert (= (and d!1419821 (not c!779804)) b!4560745))

(assert (= (and b!4560745 c!779802) b!4560741))

(assert (= (and b!4560745 (not c!779802)) b!4560742))

(assert (= (or b!4560740 b!4560745) bm!318260))

(assert (= (and bm!318260 c!779803) b!4560743))

(assert (= (and bm!318260 (not c!779803)) b!4560738))

(assert (= (and d!1419821 res!1903092) b!4560739))

(assert (= (and d!1419821 (not res!1903090)) b!4560746))

(assert (= (and b!4560746 res!1903091) b!4560744))

(assert (=> b!4560739 m!5351031))

(declare-fun m!5351173 () Bool)

(assert (=> b!4560739 m!5351173))

(assert (=> b!4560739 m!5351173))

(declare-fun m!5351175 () Bool)

(assert (=> b!4560739 m!5351175))

(declare-fun m!5351177 () Bool)

(assert (=> b!4560746 m!5351177))

(assert (=> b!4560746 m!5351177))

(declare-fun m!5351179 () Bool)

(assert (=> b!4560746 m!5351179))

(declare-fun m!5351181 () Bool)

(assert (=> b!4560741 m!5351181))

(declare-fun m!5351183 () Bool)

(assert (=> b!4560741 m!5351183))

(declare-fun m!5351185 () Bool)

(assert (=> bm!318260 m!5351185))

(assert (=> d!1419821 m!5351181))

(assert (=> b!4560744 m!5351031))

(assert (=> b!4560744 m!5351173))

(assert (=> b!4560744 m!5351173))

(assert (=> b!4560744 m!5351175))

(declare-fun m!5351187 () Bool)

(assert (=> b!4560740 m!5351187))

(assert (=> b!4560740 m!5351177))

(assert (=> b!4560740 m!5351177))

(assert (=> b!4560740 m!5351179))

(declare-fun m!5351189 () Bool)

(assert (=> b!4560740 m!5351189))

(declare-fun m!5351191 () Bool)

(assert (=> b!4560743 m!5351191))

(assert (=> b!4560738 m!5351031))

(assert (=> b!4560738 m!5351173))

(assert (=> b!4560600 d!1419821))

(declare-fun bs!939953 () Bool)

(declare-fun d!1419825 () Bool)

(assert (= bs!939953 (and d!1419825 start!453450)))

(declare-fun lambda!179992 () Int)

(assert (=> bs!939953 (= lambda!179992 lambda!179972)))

(declare-fun bs!939954 () Bool)

(assert (= bs!939954 (and d!1419825 d!1419787)))

(assert (=> bs!939954 (= lambda!179992 lambda!179983)))

(declare-fun lt!1731629 () ListMap!3751)

(declare-fun invariantList!1073 (List!50989) Bool)

(assert (=> d!1419825 (invariantList!1073 (toList!4490 lt!1731629))))

(declare-fun e!2842974 () ListMap!3751)

(assert (=> d!1419825 (= lt!1731629 e!2842974)))

(declare-fun c!779807 () Bool)

(assert (=> d!1419825 (= c!779807 (is-Cons!50866 (toList!4489 lm!1477)))))

(assert (=> d!1419825 (forall!10432 (toList!4489 lm!1477) lambda!179992)))

(assert (=> d!1419825 (= (extractMap!1297 (toList!4489 lm!1477)) lt!1731629)))

(declare-fun b!4560756 () Bool)

(declare-fun addToMapMapFromBucket!759 (List!50989 ListMap!3751) ListMap!3751)

(assert (=> b!4560756 (= e!2842974 (addToMapMapFromBucket!759 (_2!28994 (h!56777 (toList!4489 lm!1477))) (extractMap!1297 (t!357964 (toList!4489 lm!1477)))))))

(declare-fun b!4560757 () Bool)

(assert (=> b!4560757 (= e!2842974 (ListMap!3752 Nil!50865))))

(assert (= (and d!1419825 c!779807) b!4560756))

(assert (= (and d!1419825 (not c!779807)) b!4560757))

(declare-fun m!5351199 () Bool)

(assert (=> d!1419825 m!5351199))

(declare-fun m!5351201 () Bool)

(assert (=> d!1419825 m!5351201))

(declare-fun m!5351203 () Bool)

(assert (=> b!4560756 m!5351203))

(assert (=> b!4560756 m!5351203))

(declare-fun m!5351205 () Bool)

(assert (=> b!4560756 m!5351205))

(assert (=> b!4560600 d!1419825))

(declare-fun d!1419829 () Bool)

(assert (=> d!1419829 (= (apply!11978 lt!1731523 hash!344) (get!16760 (getValueByKey!1205 (toList!4489 lt!1731523) hash!344)))))

(declare-fun bs!939955 () Bool)

(assert (= bs!939955 d!1419829))

(assert (=> bs!939955 m!5351155))

(assert (=> bs!939955 m!5351155))

(declare-fun m!5351207 () Bool)

(assert (=> bs!939955 m!5351207))

(assert (=> b!4560605 d!1419829))

(declare-fun d!1419831 () Bool)

(declare-fun res!1903104 () Bool)

(declare-fun e!2842979 () Bool)

(assert (=> d!1419831 (=> res!1903104 e!2842979)))

(assert (=> d!1419831 (= res!1903104 (is-Nil!50866 (toList!4489 lm!1477)))))

(assert (=> d!1419831 (= (forall!10432 (toList!4489 lm!1477) lambda!179972) e!2842979)))

(declare-fun b!4560764 () Bool)

(declare-fun e!2842980 () Bool)

(assert (=> b!4560764 (= e!2842979 e!2842980)))

(declare-fun res!1903105 () Bool)

(assert (=> b!4560764 (=> (not res!1903105) (not e!2842980))))

(assert (=> b!4560764 (= res!1903105 (dynLambda!21277 lambda!179972 (h!56777 (toList!4489 lm!1477))))))

(declare-fun b!4560765 () Bool)

(assert (=> b!4560765 (= e!2842980 (forall!10432 (t!357964 (toList!4489 lm!1477)) lambda!179972))))

(assert (= (and d!1419831 (not res!1903104)) b!4560764))

(assert (= (and b!4560764 res!1903105) b!4560765))

(declare-fun b_lambda!162155 () Bool)

(assert (=> (not b_lambda!162155) (not b!4560764)))

(declare-fun m!5351209 () Bool)

(assert (=> b!4560764 m!5351209))

(declare-fun m!5351211 () Bool)

(assert (=> b!4560765 m!5351211))

(assert (=> start!453450 d!1419831))

(declare-fun d!1419833 () Bool)

(assert (=> d!1419833 (= (inv!66428 lm!1477) (isStrictlySorted!487 (toList!4489 lm!1477)))))

(declare-fun bs!939956 () Bool)

(assert (= bs!939956 d!1419833))

(assert (=> bs!939956 m!5351121))

(assert (=> start!453450 d!1419833))

(declare-fun bs!939957 () Bool)

(declare-fun d!1419837 () Bool)

(assert (= bs!939957 (and d!1419837 start!453450)))

(declare-fun lambda!179995 () Int)

(assert (=> bs!939957 (not (= lambda!179995 lambda!179972))))

(declare-fun bs!939958 () Bool)

(assert (= bs!939958 (and d!1419837 d!1419787)))

(assert (=> bs!939958 (not (= lambda!179995 lambda!179983))))

(declare-fun bs!939959 () Bool)

(assert (= bs!939959 (and d!1419837 d!1419825)))

(assert (=> bs!939959 (not (= lambda!179995 lambda!179992))))

(assert (=> d!1419837 true))

(assert (=> d!1419837 (= (allKeysSameHashInMap!1348 lm!1477 hashF!1107) (forall!10432 (toList!4489 lm!1477) lambda!179995))))

(declare-fun bs!939960 () Bool)

(assert (= bs!939960 d!1419837))

(declare-fun m!5351223 () Bool)

(assert (=> bs!939960 m!5351223))

(assert (=> b!4560599 d!1419837))

(declare-fun b!4560776 () Bool)

(declare-fun tp!1339248 () Bool)

(declare-fun e!2842987 () Bool)

(assert (=> b!4560776 (= e!2842987 (and tp_is_empty!28241 tp_is_empty!28243 tp!1339248))))

(assert (=> b!4560598 (= tp!1339239 e!2842987)))

(assert (= (and b!4560598 (is-Cons!50865 (t!357963 newBucket!178))) b!4560776))

(declare-fun b!4560781 () Bool)

(declare-fun e!2842990 () Bool)

(declare-fun tp!1339253 () Bool)

(declare-fun tp!1339254 () Bool)

(assert (=> b!4560781 (= e!2842990 (and tp!1339253 tp!1339254))))

(assert (=> b!4560606 (= tp!1339238 e!2842990)))

(assert (= (and b!4560606 (is-Cons!50866 (toList!4489 lm!1477))) b!4560781))

(declare-fun b_lambda!162157 () Bool)

(assert (= b_lambda!162155 (or start!453450 b_lambda!162157)))

(declare-fun bs!939961 () Bool)

(declare-fun d!1419841 () Bool)

(assert (= bs!939961 (and d!1419841 start!453450)))

(assert (=> bs!939961 (= (dynLambda!21277 lambda!179972 (h!56777 (toList!4489 lm!1477))) (noDuplicateKeys!1241 (_2!28994 (h!56777 (toList!4489 lm!1477)))))))

(declare-fun m!5351225 () Bool)

(assert (=> bs!939961 m!5351225))

(assert (=> b!4560764 d!1419841))

(declare-fun b_lambda!162159 () Bool)

(assert (= b_lambda!162151 (or start!453450 b_lambda!162159)))

(declare-fun bs!939962 () Bool)

(declare-fun d!1419843 () Bool)

(assert (= bs!939962 (and d!1419843 start!453450)))

(assert (=> bs!939962 (= (dynLambda!21277 lambda!179972 lt!1731518) (noDuplicateKeys!1241 (_2!28994 lt!1731518)))))

(declare-fun m!5351227 () Bool)

(assert (=> bs!939962 m!5351227))

(assert (=> d!1419793 d!1419843))

(push 1)

(assert (not d!1419791))

(assert (not d!1419837))

(assert (not d!1419787))

(assert (not b!4560765))

(assert (not b_lambda!162157))

(assert (not d!1419801))

(assert (not b!4560659))

(assert (not bs!939962))

(assert (not b!4560701))

(assert (not b!4560746))

(assert (not d!1419809))

(assert (not b!4560676))

(assert (not b!4560694))

(assert (not bm!318260))

(assert (not bs!939961))

(assert (not b!4560708))

(assert (not b!4560781))

(assert (not b!4560776))

(assert (not d!1419813))

(assert (not d!1419793))

(assert (not b!4560657))

(assert (not d!1419795))

(assert (not b!4560666))

(assert (not b!4560741))

(assert (not b!4560756))

(assert (not d!1419815))

(assert (not b!4560740))

(assert (not b!4560650))

(assert (not d!1419829))

(assert (not d!1419825))

(assert (not b!4560738))

(assert (not b_lambda!162159))

(assert (not b!4560744))

(assert (not b!4560691))

(assert (not d!1419785))

(assert tp_is_empty!28241)

(assert (not b!4560710))

(assert (not b!4560702))

(assert (not b!4560739))

(assert tp_is_empty!28243)

(assert (not d!1419833))

(assert (not d!1419805))

(assert (not d!1419803))

(assert (not b!4560743))

(assert (not d!1419817))

(assert (not d!1419821))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

