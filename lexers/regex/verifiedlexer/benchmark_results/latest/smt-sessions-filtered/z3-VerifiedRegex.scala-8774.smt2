; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!469096 () Bool)

(assert start!469096)

(declare-fun b!4658553 () Bool)

(declare-fun e!2906742 () Bool)

(declare-fun e!2906739 () Bool)

(assert (=> b!4658553 (= e!2906742 e!2906739)))

(declare-fun res!1959234 () Bool)

(assert (=> b!4658553 (=> res!1959234 e!2906739)))

(declare-datatypes ((K!13275 0))(
  ( (K!13276 (val!18891 Int)) )
))
(declare-datatypes ((V!13521 0))(
  ( (V!13522 (val!18892 Int)) )
))
(declare-datatypes ((tuple2!53046 0))(
  ( (tuple2!53047 (_1!29817 K!13275) (_2!29817 V!13521)) )
))
(declare-datatypes ((List!52046 0))(
  ( (Nil!51922) (Cons!51922 (h!58072 tuple2!53046) (t!359162 List!52046)) )
))
(declare-fun oldBucket!40 () List!52046)

(declare-fun key!4968 () K!13275)

(declare-fun containsKey!2740 (List!52046 K!13275) Bool)

(assert (=> b!4658553 (= res!1959234 (not (containsKey!2740 (t!359162 oldBucket!40) key!4968)))))

(assert (=> b!4658553 (containsKey!2740 oldBucket!40 key!4968)))

(declare-datatypes ((Hashable!6047 0))(
  ( (HashableExt!6046 (__x!31750 Int)) )
))
(declare-fun hashF!1389 () Hashable!6047)

(declare-datatypes ((Unit!118952 0))(
  ( (Unit!118953) )
))
(declare-fun lt!1820758 () Unit!118952)

(declare-fun lemmaGetPairDefinedThenContainsKey!128 (List!52046 K!13275 Hashable!6047) Unit!118952)

(assert (=> b!4658553 (= lt!1820758 (lemmaGetPairDefinedThenContainsKey!128 oldBucket!40 key!4968 hashF!1389))))

(declare-fun lt!1820759 () List!52046)

(declare-datatypes ((Option!11838 0))(
  ( (None!11837) (Some!11837 (v!46127 tuple2!53046)) )
))
(declare-fun isDefined!9103 (Option!11838) Bool)

(declare-fun getPair!378 (List!52046 K!13275) Option!11838)

(assert (=> b!4658553 (isDefined!9103 (getPair!378 lt!1820759 key!4968))))

(declare-fun lambda!199870 () Int)

(declare-datatypes ((tuple2!53048 0))(
  ( (tuple2!53049 (_1!29818 (_ BitVec 64)) (_2!29818 List!52046)) )
))
(declare-fun lt!1820763 () tuple2!53048)

(declare-datatypes ((List!52047 0))(
  ( (Nil!51923) (Cons!51923 (h!58073 tuple2!53048) (t!359163 List!52047)) )
))
(declare-fun lt!1820751 () List!52047)

(declare-fun lt!1820761 () Unit!118952)

(declare-fun forallContained!3244 (List!52047 Int tuple2!53048) Unit!118952)

(assert (=> b!4658553 (= lt!1820761 (forallContained!3244 lt!1820751 lambda!199870 lt!1820763))))

(declare-fun contains!15073 (List!52047 tuple2!53048) Bool)

(assert (=> b!4658553 (contains!15073 lt!1820751 lt!1820763)))

(declare-fun lt!1820757 () (_ BitVec 64))

(assert (=> b!4658553 (= lt!1820763 (tuple2!53049 lt!1820757 lt!1820759))))

(declare-datatypes ((ListLongMap!3783 0))(
  ( (ListLongMap!3784 (toList!5229 List!52047)) )
))
(declare-fun lt!1820760 () ListLongMap!3783)

(declare-fun lt!1820754 () Unit!118952)

(declare-fun lemmaGetValueImpliesTupleContained!183 (ListLongMap!3783 (_ BitVec 64) List!52046) Unit!118952)

(assert (=> b!4658553 (= lt!1820754 (lemmaGetValueImpliesTupleContained!183 lt!1820760 lt!1820757 lt!1820759))))

(declare-fun apply!12253 (ListLongMap!3783 (_ BitVec 64)) List!52046)

(assert (=> b!4658553 (= lt!1820759 (apply!12253 lt!1820760 lt!1820757))))

(declare-fun contains!15074 (ListLongMap!3783 (_ BitVec 64)) Bool)

(assert (=> b!4658553 (contains!15074 lt!1820760 lt!1820757)))

(declare-fun lt!1820753 () Unit!118952)

(declare-fun lemmaInGenMapThenLongMapContainsHash!584 (ListLongMap!3783 K!13275 Hashable!6047) Unit!118952)

(assert (=> b!4658553 (= lt!1820753 (lemmaInGenMapThenLongMapContainsHash!584 lt!1820760 key!4968 hashF!1389))))

(declare-fun lt!1820756 () Unit!118952)

(declare-fun lemmaInGenMapThenGetPairDefined!174 (ListLongMap!3783 K!13275 Hashable!6047) Unit!118952)

(assert (=> b!4658553 (= lt!1820756 (lemmaInGenMapThenGetPairDefined!174 lt!1820760 key!4968 hashF!1389))))

(assert (=> b!4658553 (= lt!1820760 (ListLongMap!3784 lt!1820751))))

(declare-fun hash!414 () (_ BitVec 64))

(declare-fun e!2906744 () Bool)

(declare-fun b!4658554 () Bool)

(declare-fun forall!11044 (List!52047 Int) Bool)

(assert (=> b!4658554 (= e!2906744 (forall!11044 (Cons!51923 (tuple2!53049 hash!414 (t!359162 oldBucket!40)) Nil!51923) lambda!199870))))

(declare-fun b!4658555 () Bool)

(declare-fun res!1959240 () Bool)

(declare-fun e!2906740 () Bool)

(assert (=> b!4658555 (=> (not res!1959240) (not e!2906740))))

(declare-fun newBucket!224 () List!52046)

(declare-fun allKeysSameHash!1504 (List!52046 (_ BitVec 64) Hashable!6047) Bool)

(assert (=> b!4658555 (= res!1959240 (allKeysSameHash!1504 newBucket!224 hash!414 hashF!1389))))

(declare-fun b!4658556 () Bool)

(declare-fun res!1959241 () Bool)

(assert (=> b!4658556 (=> res!1959241 e!2906744)))

(declare-fun lt!1820752 () List!52046)

(declare-fun removePairForKey!1273 (List!52046 K!13275) List!52046)

(assert (=> b!4658556 (= res!1959241 (not (= (removePairForKey!1273 (t!359162 oldBucket!40) key!4968) lt!1820752)))))

(declare-fun b!4658557 () Bool)

(declare-fun res!1959237 () Bool)

(declare-fun e!2906741 () Bool)

(assert (=> b!4658557 (=> (not res!1959237) (not e!2906741))))

(declare-fun noDuplicateKeys!1650 (List!52046) Bool)

(assert (=> b!4658557 (= res!1959237 (noDuplicateKeys!1650 newBucket!224))))

(declare-fun e!2906737 () Bool)

(declare-fun b!4658558 () Bool)

(declare-fun tp!1343410 () Bool)

(declare-fun tp_is_empty!29895 () Bool)

(declare-fun tp_is_empty!29893 () Bool)

(assert (=> b!4658558 (= e!2906737 (and tp_is_empty!29893 tp_is_empty!29895 tp!1343410))))

(declare-fun b!4658559 () Bool)

(declare-fun e!2906738 () Bool)

(assert (=> b!4658559 (= e!2906741 e!2906738)))

(declare-fun res!1959238 () Bool)

(assert (=> b!4658559 (=> (not res!1959238) (not e!2906738))))

(declare-datatypes ((ListMap!4569 0))(
  ( (ListMap!4570 (toList!5230 List!52046)) )
))
(declare-fun lt!1820755 () ListMap!4569)

(declare-fun contains!15075 (ListMap!4569 K!13275) Bool)

(assert (=> b!4658559 (= res!1959238 (contains!15075 lt!1820755 key!4968))))

(declare-fun extractMap!1706 (List!52047) ListMap!4569)

(assert (=> b!4658559 (= lt!1820755 (extractMap!1706 lt!1820751))))

(assert (=> b!4658559 (= lt!1820751 (Cons!51923 (tuple2!53049 hash!414 oldBucket!40) Nil!51923))))

(declare-fun b!4658560 () Bool)

(assert (=> b!4658560 (= e!2906738 e!2906740)))

(declare-fun res!1959235 () Bool)

(assert (=> b!4658560 (=> (not res!1959235) (not e!2906740))))

(assert (=> b!4658560 (= res!1959235 (= lt!1820757 hash!414))))

(declare-fun hash!3793 (Hashable!6047 K!13275) (_ BitVec 64))

(assert (=> b!4658560 (= lt!1820757 (hash!3793 hashF!1389 key!4968))))

(declare-fun b!4658561 () Bool)

(assert (=> b!4658561 (= e!2906740 (not e!2906742))))

(declare-fun res!1959233 () Bool)

(assert (=> b!4658561 (=> res!1959233 e!2906742)))

(get-info :version)

(assert (=> b!4658561 (= res!1959233 (or (and ((_ is Cons!51922) oldBucket!40) (= (_1!29817 (h!58072 oldBucket!40)) key!4968)) (not ((_ is Cons!51922) oldBucket!40)) (= (_1!29817 (h!58072 oldBucket!40)) key!4968)))))

(declare-fun e!2906743 () Bool)

(assert (=> b!4658561 e!2906743))

(declare-fun res!1959242 () Bool)

(assert (=> b!4658561 (=> (not res!1959242) (not e!2906743))))

(declare-fun lt!1820762 () ListMap!4569)

(declare-fun addToMapMapFromBucket!1107 (List!52046 ListMap!4569) ListMap!4569)

(assert (=> b!4658561 (= res!1959242 (= lt!1820755 (addToMapMapFromBucket!1107 oldBucket!40 lt!1820762)))))

(assert (=> b!4658561 (= lt!1820762 (extractMap!1706 Nil!51923))))

(assert (=> b!4658561 true))

(declare-fun b!4658562 () Bool)

(declare-fun res!1959239 () Bool)

(assert (=> b!4658562 (=> (not res!1959239) (not e!2906741))))

(assert (=> b!4658562 (= res!1959239 (allKeysSameHash!1504 oldBucket!40 hash!414 hashF!1389))))

(declare-fun b!4658563 () Bool)

(assert (=> b!4658563 (= e!2906743 (= lt!1820762 (ListMap!4570 Nil!51922)))))

(declare-fun b!4658564 () Bool)

(assert (=> b!4658564 (= e!2906739 e!2906744)))

(declare-fun res!1959244 () Bool)

(assert (=> b!4658564 (=> res!1959244 e!2906744)))

(declare-fun tail!8253 (List!52046) List!52046)

(assert (=> b!4658564 (= res!1959244 (not (= (removePairForKey!1273 (tail!8253 oldBucket!40) key!4968) lt!1820752)))))

(assert (=> b!4658564 (= lt!1820752 (tail!8253 newBucket!224))))

(declare-fun b!4658565 () Bool)

(declare-fun res!1959236 () Bool)

(assert (=> b!4658565 (=> (not res!1959236) (not e!2906741))))

(assert (=> b!4658565 (= res!1959236 (= (removePairForKey!1273 oldBucket!40 key!4968) newBucket!224))))

(declare-fun res!1959243 () Bool)

(assert (=> start!469096 (=> (not res!1959243) (not e!2906741))))

(assert (=> start!469096 (= res!1959243 (noDuplicateKeys!1650 oldBucket!40))))

(assert (=> start!469096 e!2906741))

(assert (=> start!469096 true))

(assert (=> start!469096 e!2906737))

(assert (=> start!469096 tp_is_empty!29893))

(declare-fun e!2906736 () Bool)

(assert (=> start!469096 e!2906736))

(declare-fun b!4658566 () Bool)

(declare-fun tp!1343411 () Bool)

(assert (=> b!4658566 (= e!2906736 (and tp_is_empty!29893 tp_is_empty!29895 tp!1343411))))

(assert (= (and start!469096 res!1959243) b!4658557))

(assert (= (and b!4658557 res!1959237) b!4658565))

(assert (= (and b!4658565 res!1959236) b!4658562))

(assert (= (and b!4658562 res!1959239) b!4658559))

(assert (= (and b!4658559 res!1959238) b!4658560))

(assert (= (and b!4658560 res!1959235) b!4658555))

(assert (= (and b!4658555 res!1959240) b!4658561))

(assert (= (and b!4658561 res!1959242) b!4658563))

(assert (= (and b!4658561 (not res!1959233)) b!4658553))

(assert (= (and b!4658553 (not res!1959234)) b!4658564))

(assert (= (and b!4658564 (not res!1959244)) b!4658556))

(assert (= (and b!4658556 (not res!1959241)) b!4658554))

(assert (= (and start!469096 ((_ is Cons!51922) oldBucket!40)) b!4658558))

(assert (= (and start!469096 ((_ is Cons!51922) newBucket!224)) b!4658566))

(declare-fun m!5539949 () Bool)

(assert (=> b!4658559 m!5539949))

(declare-fun m!5539951 () Bool)

(assert (=> b!4658559 m!5539951))

(declare-fun m!5539953 () Bool)

(assert (=> b!4658561 m!5539953))

(declare-fun m!5539955 () Bool)

(assert (=> b!4658561 m!5539955))

(declare-fun m!5539957 () Bool)

(assert (=> b!4658556 m!5539957))

(declare-fun m!5539959 () Bool)

(assert (=> b!4658553 m!5539959))

(declare-fun m!5539961 () Bool)

(assert (=> b!4658553 m!5539961))

(declare-fun m!5539963 () Bool)

(assert (=> b!4658553 m!5539963))

(declare-fun m!5539965 () Bool)

(assert (=> b!4658553 m!5539965))

(declare-fun m!5539967 () Bool)

(assert (=> b!4658553 m!5539967))

(declare-fun m!5539969 () Bool)

(assert (=> b!4658553 m!5539969))

(declare-fun m!5539971 () Bool)

(assert (=> b!4658553 m!5539971))

(assert (=> b!4658553 m!5539963))

(declare-fun m!5539973 () Bool)

(assert (=> b!4658553 m!5539973))

(declare-fun m!5539975 () Bool)

(assert (=> b!4658553 m!5539975))

(declare-fun m!5539977 () Bool)

(assert (=> b!4658553 m!5539977))

(declare-fun m!5539979 () Bool)

(assert (=> b!4658553 m!5539979))

(declare-fun m!5539981 () Bool)

(assert (=> b!4658553 m!5539981))

(declare-fun m!5539983 () Bool)

(assert (=> b!4658562 m!5539983))

(declare-fun m!5539985 () Bool)

(assert (=> b!4658557 m!5539985))

(declare-fun m!5539987 () Bool)

(assert (=> b!4658564 m!5539987))

(assert (=> b!4658564 m!5539987))

(declare-fun m!5539989 () Bool)

(assert (=> b!4658564 m!5539989))

(declare-fun m!5539991 () Bool)

(assert (=> b!4658564 m!5539991))

(declare-fun m!5539993 () Bool)

(assert (=> b!4658555 m!5539993))

(declare-fun m!5539995 () Bool)

(assert (=> b!4658560 m!5539995))

(declare-fun m!5539997 () Bool)

(assert (=> b!4658565 m!5539997))

(declare-fun m!5539999 () Bool)

(assert (=> start!469096 m!5539999))

(declare-fun m!5540001 () Bool)

(assert (=> b!4658554 m!5540001))

(check-sat (not b!4658566) (not b!4658554) (not b!4658559) (not b!4658557) (not b!4658562) tp_is_empty!29895 (not b!4658564) (not b!4658565) (not b!4658558) (not b!4658556) (not start!469096) (not b!4658553) tp_is_empty!29893 (not b!4658561) (not b!4658560) (not b!4658555))
(check-sat)
(get-model)

(declare-fun d!1478639 () Bool)

(declare-fun hash!3795 (Hashable!6047 K!13275) (_ BitVec 64))

(assert (=> d!1478639 (= (hash!3793 hashF!1389 key!4968) (hash!3795 hashF!1389 key!4968))))

(declare-fun bs!1066539 () Bool)

(assert (= bs!1066539 d!1478639))

(declare-fun m!5540003 () Bool)

(assert (=> bs!1066539 m!5540003))

(assert (=> b!4658560 d!1478639))

(declare-fun b!4658671 () Bool)

(assert (=> b!4658671 true))

(declare-fun bs!1066556 () Bool)

(declare-fun b!4658667 () Bool)

(assert (= bs!1066556 (and b!4658667 b!4658671)))

(declare-fun lambda!199940 () Int)

(declare-fun lambda!199939 () Int)

(assert (=> bs!1066556 (= lambda!199940 lambda!199939)))

(assert (=> b!4658667 true))

(declare-fun lt!1820919 () ListMap!4569)

(declare-fun lambda!199941 () Int)

(assert (=> bs!1066556 (= (= lt!1820919 lt!1820762) (= lambda!199941 lambda!199939))))

(assert (=> b!4658667 (= (= lt!1820919 lt!1820762) (= lambda!199941 lambda!199940))))

(assert (=> b!4658667 true))

(declare-fun bs!1066557 () Bool)

(declare-fun d!1478641 () Bool)

(assert (= bs!1066557 (and d!1478641 b!4658671)))

(declare-fun lt!1820918 () ListMap!4569)

(declare-fun lambda!199942 () Int)

(assert (=> bs!1066557 (= (= lt!1820918 lt!1820762) (= lambda!199942 lambda!199939))))

(declare-fun bs!1066558 () Bool)

(assert (= bs!1066558 (and d!1478641 b!4658667)))

(assert (=> bs!1066558 (= (= lt!1820918 lt!1820762) (= lambda!199942 lambda!199940))))

(assert (=> bs!1066558 (= (= lt!1820918 lt!1820919) (= lambda!199942 lambda!199941))))

(assert (=> d!1478641 true))

(declare-fun e!2906806 () ListMap!4569)

(assert (=> b!4658667 (= e!2906806 lt!1820919)))

(declare-fun lt!1820922 () ListMap!4569)

(declare-fun +!1990 (ListMap!4569 tuple2!53046) ListMap!4569)

(assert (=> b!4658667 (= lt!1820922 (+!1990 lt!1820762 (h!58072 oldBucket!40)))))

(assert (=> b!4658667 (= lt!1820919 (addToMapMapFromBucket!1107 (t!359162 oldBucket!40) (+!1990 lt!1820762 (h!58072 oldBucket!40))))))

(declare-fun lt!1820921 () Unit!118952)

(declare-fun call!325522 () Unit!118952)

(assert (=> b!4658667 (= lt!1820921 call!325522)))

(declare-fun call!325520 () Bool)

(assert (=> b!4658667 call!325520))

(declare-fun lt!1820909 () Unit!118952)

(assert (=> b!4658667 (= lt!1820909 lt!1820921)))

(declare-fun forall!11046 (List!52046 Int) Bool)

(assert (=> b!4658667 (forall!11046 (toList!5230 lt!1820922) lambda!199941)))

(declare-fun lt!1820914 () Unit!118952)

(declare-fun Unit!118967 () Unit!118952)

(assert (=> b!4658667 (= lt!1820914 Unit!118967)))

(declare-fun call!325521 () Bool)

(assert (=> b!4658667 call!325521))

(declare-fun lt!1820912 () Unit!118952)

(declare-fun Unit!118968 () Unit!118952)

(assert (=> b!4658667 (= lt!1820912 Unit!118968)))

(declare-fun lt!1820905 () Unit!118952)

(declare-fun Unit!118969 () Unit!118952)

(assert (=> b!4658667 (= lt!1820905 Unit!118969)))

(declare-fun lt!1820917 () Unit!118952)

(declare-fun forallContained!3246 (List!52046 Int tuple2!53046) Unit!118952)

(assert (=> b!4658667 (= lt!1820917 (forallContained!3246 (toList!5230 lt!1820922) lambda!199941 (h!58072 oldBucket!40)))))

(assert (=> b!4658667 (contains!15075 lt!1820922 (_1!29817 (h!58072 oldBucket!40)))))

(declare-fun lt!1820908 () Unit!118952)

(declare-fun Unit!118970 () Unit!118952)

(assert (=> b!4658667 (= lt!1820908 Unit!118970)))

(assert (=> b!4658667 (contains!15075 lt!1820919 (_1!29817 (h!58072 oldBucket!40)))))

(declare-fun lt!1820920 () Unit!118952)

(declare-fun Unit!118971 () Unit!118952)

(assert (=> b!4658667 (= lt!1820920 Unit!118971)))

(assert (=> b!4658667 (forall!11046 oldBucket!40 lambda!199941)))

(declare-fun lt!1820907 () Unit!118952)

(declare-fun Unit!118972 () Unit!118952)

(assert (=> b!4658667 (= lt!1820907 Unit!118972)))

(assert (=> b!4658667 (forall!11046 (toList!5230 lt!1820922) lambda!199941)))

(declare-fun lt!1820915 () Unit!118952)

(declare-fun Unit!118973 () Unit!118952)

(assert (=> b!4658667 (= lt!1820915 Unit!118973)))

(declare-fun lt!1820904 () Unit!118952)

(declare-fun Unit!118974 () Unit!118952)

(assert (=> b!4658667 (= lt!1820904 Unit!118974)))

(declare-fun lt!1820910 () Unit!118952)

(declare-fun addForallContainsKeyThenBeforeAdding!603 (ListMap!4569 ListMap!4569 K!13275 V!13521) Unit!118952)

(assert (=> b!4658667 (= lt!1820910 (addForallContainsKeyThenBeforeAdding!603 lt!1820762 lt!1820919 (_1!29817 (h!58072 oldBucket!40)) (_2!29817 (h!58072 oldBucket!40))))))

(assert (=> b!4658667 (forall!11046 (toList!5230 lt!1820762) lambda!199941)))

(declare-fun lt!1820906 () Unit!118952)

(assert (=> b!4658667 (= lt!1820906 lt!1820910)))

(assert (=> b!4658667 (forall!11046 (toList!5230 lt!1820762) lambda!199941)))

(declare-fun lt!1820902 () Unit!118952)

(declare-fun Unit!118975 () Unit!118952)

(assert (=> b!4658667 (= lt!1820902 Unit!118975)))

(declare-fun res!1959283 () Bool)

(assert (=> b!4658667 (= res!1959283 (forall!11046 oldBucket!40 lambda!199941))))

(declare-fun e!2906808 () Bool)

(assert (=> b!4658667 (=> (not res!1959283) (not e!2906808))))

(assert (=> b!4658667 e!2906808))

(declare-fun lt!1820916 () Unit!118952)

(declare-fun Unit!118976 () Unit!118952)

(assert (=> b!4658667 (= lt!1820916 Unit!118976)))

(declare-fun b!4658668 () Bool)

(assert (=> b!4658668 (= e!2906808 (forall!11046 (toList!5230 lt!1820762) lambda!199941))))

(declare-fun b!4658669 () Bool)

(declare-fun e!2906807 () Bool)

(declare-fun invariantList!1304 (List!52046) Bool)

(assert (=> b!4658669 (= e!2906807 (invariantList!1304 (toList!5230 lt!1820918)))))

(declare-fun b!4658670 () Bool)

(declare-fun res!1959285 () Bool)

(assert (=> b!4658670 (=> (not res!1959285) (not e!2906807))))

(assert (=> b!4658670 (= res!1959285 (forall!11046 (toList!5230 lt!1820762) lambda!199942))))

(declare-fun c!797413 () Bool)

(declare-fun bm!325515 () Bool)

(assert (=> bm!325515 (= call!325521 (forall!11046 (ite c!797413 (toList!5230 lt!1820762) (t!359162 oldBucket!40)) (ite c!797413 lambda!199939 lambda!199941)))))

(assert (=> b!4658671 (= e!2906806 lt!1820762)))

(declare-fun lt!1820913 () Unit!118952)

(assert (=> b!4658671 (= lt!1820913 call!325522)))

(assert (=> b!4658671 call!325521))

(declare-fun lt!1820911 () Unit!118952)

(assert (=> b!4658671 (= lt!1820911 lt!1820913)))

(assert (=> b!4658671 call!325520))

(declare-fun lt!1820903 () Unit!118952)

(declare-fun Unit!118977 () Unit!118952)

(assert (=> b!4658671 (= lt!1820903 Unit!118977)))

(declare-fun bm!325516 () Bool)

(assert (=> bm!325516 (= call!325520 (forall!11046 (toList!5230 lt!1820762) (ite c!797413 lambda!199939 lambda!199940)))))

(assert (=> d!1478641 e!2906807))

(declare-fun res!1959284 () Bool)

(assert (=> d!1478641 (=> (not res!1959284) (not e!2906807))))

(assert (=> d!1478641 (= res!1959284 (forall!11046 oldBucket!40 lambda!199942))))

(assert (=> d!1478641 (= lt!1820918 e!2906806)))

(assert (=> d!1478641 (= c!797413 ((_ is Nil!51922) oldBucket!40))))

(assert (=> d!1478641 (noDuplicateKeys!1650 oldBucket!40)))

(assert (=> d!1478641 (= (addToMapMapFromBucket!1107 oldBucket!40 lt!1820762) lt!1820918)))

(declare-fun bm!325517 () Bool)

(declare-fun lemmaContainsAllItsOwnKeys!604 (ListMap!4569) Unit!118952)

(assert (=> bm!325517 (= call!325522 (lemmaContainsAllItsOwnKeys!604 lt!1820762))))

(assert (= (and d!1478641 c!797413) b!4658671))

(assert (= (and d!1478641 (not c!797413)) b!4658667))

(assert (= (and b!4658667 res!1959283) b!4658668))

(assert (= (or b!4658671 b!4658667) bm!325517))

(assert (= (or b!4658671 b!4658667) bm!325515))

(assert (= (or b!4658671 b!4658667) bm!325516))

(assert (= (and d!1478641 res!1959284) b!4658670))

(assert (= (and b!4658670 res!1959285) b!4658669))

(declare-fun m!5540105 () Bool)

(assert (=> b!4658670 m!5540105))

(declare-fun m!5540107 () Bool)

(assert (=> b!4658669 m!5540107))

(declare-fun m!5540109 () Bool)

(assert (=> b!4658667 m!5540109))

(declare-fun m!5540111 () Bool)

(assert (=> b!4658667 m!5540111))

(declare-fun m!5540113 () Bool)

(assert (=> b!4658667 m!5540113))

(assert (=> b!4658667 m!5540109))

(declare-fun m!5540115 () Bool)

(assert (=> b!4658667 m!5540115))

(declare-fun m!5540117 () Bool)

(assert (=> b!4658667 m!5540117))

(declare-fun m!5540119 () Bool)

(assert (=> b!4658667 m!5540119))

(assert (=> b!4658667 m!5540111))

(declare-fun m!5540121 () Bool)

(assert (=> b!4658667 m!5540121))

(declare-fun m!5540123 () Bool)

(assert (=> b!4658667 m!5540123))

(assert (=> b!4658667 m!5540119))

(declare-fun m!5540125 () Bool)

(assert (=> b!4658667 m!5540125))

(assert (=> b!4658667 m!5540115))

(declare-fun m!5540127 () Bool)

(assert (=> bm!325517 m!5540127))

(declare-fun m!5540129 () Bool)

(assert (=> bm!325516 m!5540129))

(declare-fun m!5540131 () Bool)

(assert (=> d!1478641 m!5540131))

(assert (=> d!1478641 m!5539999))

(declare-fun m!5540133 () Bool)

(assert (=> bm!325515 m!5540133))

(assert (=> b!4658668 m!5540115))

(assert (=> b!4658561 d!1478641))

(declare-fun bs!1066562 () Bool)

(declare-fun d!1478673 () Bool)

(assert (= bs!1066562 (and d!1478673 b!4658553)))

(declare-fun lambda!199952 () Int)

(assert (=> bs!1066562 (= lambda!199952 lambda!199870)))

(declare-fun lt!1820949 () ListMap!4569)

(assert (=> d!1478673 (invariantList!1304 (toList!5230 lt!1820949))))

(declare-fun e!2906817 () ListMap!4569)

(assert (=> d!1478673 (= lt!1820949 e!2906817)))

(declare-fun c!797416 () Bool)

(assert (=> d!1478673 (= c!797416 ((_ is Cons!51923) Nil!51923))))

(assert (=> d!1478673 (forall!11044 Nil!51923 lambda!199952)))

(assert (=> d!1478673 (= (extractMap!1706 Nil!51923) lt!1820949)))

(declare-fun b!4658690 () Bool)

(assert (=> b!4658690 (= e!2906817 (addToMapMapFromBucket!1107 (_2!29818 (h!58073 Nil!51923)) (extractMap!1706 (t!359163 Nil!51923))))))

(declare-fun b!4658691 () Bool)

(assert (=> b!4658691 (= e!2906817 (ListMap!4570 Nil!51922))))

(assert (= (and d!1478673 c!797416) b!4658690))

(assert (= (and d!1478673 (not c!797416)) b!4658691))

(declare-fun m!5540163 () Bool)

(assert (=> d!1478673 m!5540163))

(declare-fun m!5540165 () Bool)

(assert (=> d!1478673 m!5540165))

(declare-fun m!5540167 () Bool)

(assert (=> b!4658690 m!5540167))

(assert (=> b!4658690 m!5540167))

(declare-fun m!5540169 () Bool)

(assert (=> b!4658690 m!5540169))

(assert (=> b!4658561 d!1478673))

(declare-fun d!1478677 () Bool)

(declare-fun res!1959308 () Bool)

(declare-fun e!2906828 () Bool)

(assert (=> d!1478677 (=> res!1959308 e!2906828)))

(assert (=> d!1478677 (= res!1959308 (not ((_ is Cons!51922) oldBucket!40)))))

(assert (=> d!1478677 (= (noDuplicateKeys!1650 oldBucket!40) e!2906828)))

(declare-fun b!4658702 () Bool)

(declare-fun e!2906829 () Bool)

(assert (=> b!4658702 (= e!2906828 e!2906829)))

(declare-fun res!1959309 () Bool)

(assert (=> b!4658702 (=> (not res!1959309) (not e!2906829))))

(assert (=> b!4658702 (= res!1959309 (not (containsKey!2740 (t!359162 oldBucket!40) (_1!29817 (h!58072 oldBucket!40)))))))

(declare-fun b!4658703 () Bool)

(assert (=> b!4658703 (= e!2906829 (noDuplicateKeys!1650 (t!359162 oldBucket!40)))))

(assert (= (and d!1478677 (not res!1959308)) b!4658702))

(assert (= (and b!4658702 res!1959309) b!4658703))

(declare-fun m!5540179 () Bool)

(assert (=> b!4658702 m!5540179))

(declare-fun m!5540181 () Bool)

(assert (=> b!4658703 m!5540181))

(assert (=> start!469096 d!1478677))

(declare-fun b!4658755 () Bool)

(declare-datatypes ((List!52049 0))(
  ( (Nil!51925) (Cons!51925 (h!58077 K!13275) (t!359165 List!52049)) )
))
(declare-fun e!2906865 () List!52049)

(declare-fun getKeysList!755 (List!52046) List!52049)

(assert (=> b!4658755 (= e!2906865 (getKeysList!755 (toList!5230 lt!1820755)))))

(declare-fun b!4658756 () Bool)

(declare-fun e!2906869 () Unit!118952)

(declare-fun e!2906866 () Unit!118952)

(assert (=> b!4658756 (= e!2906869 e!2906866)))

(declare-fun c!797430 () Bool)

(declare-fun call!325525 () Bool)

(assert (=> b!4658756 (= c!797430 call!325525)))

(declare-fun b!4658757 () Bool)

(declare-fun e!2906868 () Bool)

(declare-fun contains!15077 (List!52049 K!13275) Bool)

(declare-fun keys!18402 (ListMap!4569) List!52049)

(assert (=> b!4658757 (= e!2906868 (contains!15077 (keys!18402 lt!1820755) key!4968))))

(declare-fun b!4658758 () Bool)

(assert (=> b!4658758 false))

(declare-fun lt!1820985 () Unit!118952)

(declare-fun lt!1820984 () Unit!118952)

(assert (=> b!4658758 (= lt!1820985 lt!1820984)))

(declare-fun containsKey!2742 (List!52046 K!13275) Bool)

(assert (=> b!4658758 (containsKey!2742 (toList!5230 lt!1820755) key!4968)))

(declare-fun lemmaInGetKeysListThenContainsKey!754 (List!52046 K!13275) Unit!118952)

(assert (=> b!4658758 (= lt!1820984 (lemmaInGetKeysListThenContainsKey!754 (toList!5230 lt!1820755) key!4968))))

(declare-fun Unit!118978 () Unit!118952)

(assert (=> b!4658758 (= e!2906866 Unit!118978)))

(declare-fun d!1478683 () Bool)

(declare-fun e!2906870 () Bool)

(assert (=> d!1478683 e!2906870))

(declare-fun res!1959336 () Bool)

(assert (=> d!1478683 (=> res!1959336 e!2906870)))

(declare-fun e!2906867 () Bool)

(assert (=> d!1478683 (= res!1959336 e!2906867)))

(declare-fun res!1959337 () Bool)

(assert (=> d!1478683 (=> (not res!1959337) (not e!2906867))))

(declare-fun lt!1820982 () Bool)

(assert (=> d!1478683 (= res!1959337 (not lt!1820982))))

(declare-fun lt!1820980 () Bool)

(assert (=> d!1478683 (= lt!1820982 lt!1820980)))

(declare-fun lt!1820981 () Unit!118952)

(assert (=> d!1478683 (= lt!1820981 e!2906869)))

(declare-fun c!797431 () Bool)

(assert (=> d!1478683 (= c!797431 lt!1820980)))

(assert (=> d!1478683 (= lt!1820980 (containsKey!2742 (toList!5230 lt!1820755) key!4968))))

(assert (=> d!1478683 (= (contains!15075 lt!1820755 key!4968) lt!1820982)))

(declare-fun b!4658759 () Bool)

(assert (=> b!4658759 (= e!2906870 e!2906868)))

(declare-fun res!1959338 () Bool)

(assert (=> b!4658759 (=> (not res!1959338) (not e!2906868))))

(declare-datatypes ((Option!11841 0))(
  ( (None!11840) (Some!11840 (v!46134 V!13521)) )
))
(declare-fun isDefined!9105 (Option!11841) Bool)

(declare-fun getValueByKey!1621 (List!52046 K!13275) Option!11841)

(assert (=> b!4658759 (= res!1959338 (isDefined!9105 (getValueByKey!1621 (toList!5230 lt!1820755) key!4968)))))

(declare-fun b!4658760 () Bool)

(assert (=> b!4658760 (= e!2906867 (not (contains!15077 (keys!18402 lt!1820755) key!4968)))))

(declare-fun b!4658761 () Bool)

(declare-fun Unit!118979 () Unit!118952)

(assert (=> b!4658761 (= e!2906866 Unit!118979)))

(declare-fun b!4658762 () Bool)

(declare-fun lt!1820978 () Unit!118952)

(assert (=> b!4658762 (= e!2906869 lt!1820978)))

(declare-fun lt!1820979 () Unit!118952)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1522 (List!52046 K!13275) Unit!118952)

(assert (=> b!4658762 (= lt!1820979 (lemmaContainsKeyImpliesGetValueByKeyDefined!1522 (toList!5230 lt!1820755) key!4968))))

(assert (=> b!4658762 (isDefined!9105 (getValueByKey!1621 (toList!5230 lt!1820755) key!4968))))

(declare-fun lt!1820983 () Unit!118952)

(assert (=> b!4658762 (= lt!1820983 lt!1820979)))

(declare-fun lemmaInListThenGetKeysListContains!750 (List!52046 K!13275) Unit!118952)

(assert (=> b!4658762 (= lt!1820978 (lemmaInListThenGetKeysListContains!750 (toList!5230 lt!1820755) key!4968))))

(assert (=> b!4658762 call!325525))

(declare-fun b!4658763 () Bool)

(assert (=> b!4658763 (= e!2906865 (keys!18402 lt!1820755))))

(declare-fun bm!325520 () Bool)

(assert (=> bm!325520 (= call!325525 (contains!15077 e!2906865 key!4968))))

(declare-fun c!797429 () Bool)

(assert (=> bm!325520 (= c!797429 c!797431)))

(assert (= (and d!1478683 c!797431) b!4658762))

(assert (= (and d!1478683 (not c!797431)) b!4658756))

(assert (= (and b!4658756 c!797430) b!4658758))

(assert (= (and b!4658756 (not c!797430)) b!4658761))

(assert (= (or b!4658762 b!4658756) bm!325520))

(assert (= (and bm!325520 c!797429) b!4658755))

(assert (= (and bm!325520 (not c!797429)) b!4658763))

(assert (= (and d!1478683 res!1959337) b!4658760))

(assert (= (and d!1478683 (not res!1959336)) b!4658759))

(assert (= (and b!4658759 res!1959338) b!4658757))

(declare-fun m!5540209 () Bool)

(assert (=> b!4658763 m!5540209))

(declare-fun m!5540211 () Bool)

(assert (=> b!4658762 m!5540211))

(declare-fun m!5540213 () Bool)

(assert (=> b!4658762 m!5540213))

(assert (=> b!4658762 m!5540213))

(declare-fun m!5540215 () Bool)

(assert (=> b!4658762 m!5540215))

(declare-fun m!5540217 () Bool)

(assert (=> b!4658762 m!5540217))

(declare-fun m!5540219 () Bool)

(assert (=> bm!325520 m!5540219))

(assert (=> b!4658759 m!5540213))

(assert (=> b!4658759 m!5540213))

(assert (=> b!4658759 m!5540215))

(assert (=> b!4658760 m!5540209))

(assert (=> b!4658760 m!5540209))

(declare-fun m!5540221 () Bool)

(assert (=> b!4658760 m!5540221))

(declare-fun m!5540223 () Bool)

(assert (=> d!1478683 m!5540223))

(declare-fun m!5540225 () Bool)

(assert (=> b!4658755 m!5540225))

(assert (=> b!4658758 m!5540223))

(declare-fun m!5540227 () Bool)

(assert (=> b!4658758 m!5540227))

(assert (=> b!4658757 m!5540209))

(assert (=> b!4658757 m!5540209))

(assert (=> b!4658757 m!5540221))

(assert (=> b!4658559 d!1478683))

(declare-fun bs!1066567 () Bool)

(declare-fun d!1478697 () Bool)

(assert (= bs!1066567 (and d!1478697 b!4658553)))

(declare-fun lambda!199953 () Int)

(assert (=> bs!1066567 (= lambda!199953 lambda!199870)))

(declare-fun bs!1066568 () Bool)

(assert (= bs!1066568 (and d!1478697 d!1478673)))

(assert (=> bs!1066568 (= lambda!199953 lambda!199952)))

(declare-fun lt!1820986 () ListMap!4569)

(assert (=> d!1478697 (invariantList!1304 (toList!5230 lt!1820986))))

(declare-fun e!2906871 () ListMap!4569)

(assert (=> d!1478697 (= lt!1820986 e!2906871)))

(declare-fun c!797432 () Bool)

(assert (=> d!1478697 (= c!797432 ((_ is Cons!51923) lt!1820751))))

(assert (=> d!1478697 (forall!11044 lt!1820751 lambda!199953)))

(assert (=> d!1478697 (= (extractMap!1706 lt!1820751) lt!1820986)))

(declare-fun b!4658764 () Bool)

(assert (=> b!4658764 (= e!2906871 (addToMapMapFromBucket!1107 (_2!29818 (h!58073 lt!1820751)) (extractMap!1706 (t!359163 lt!1820751))))))

(declare-fun b!4658765 () Bool)

(assert (=> b!4658765 (= e!2906871 (ListMap!4570 Nil!51922))))

(assert (= (and d!1478697 c!797432) b!4658764))

(assert (= (and d!1478697 (not c!797432)) b!4658765))

(declare-fun m!5540229 () Bool)

(assert (=> d!1478697 m!5540229))

(declare-fun m!5540231 () Bool)

(assert (=> d!1478697 m!5540231))

(declare-fun m!5540233 () Bool)

(assert (=> b!4658764 m!5540233))

(assert (=> b!4658764 m!5540233))

(declare-fun m!5540235 () Bool)

(assert (=> b!4658764 m!5540235))

(assert (=> b!4658559 d!1478697))

(declare-fun b!4658785 () Bool)

(declare-fun e!2906882 () List!52046)

(assert (=> b!4658785 (= e!2906882 (Cons!51922 (h!58072 (t!359162 oldBucket!40)) (removePairForKey!1273 (t!359162 (t!359162 oldBucket!40)) key!4968)))))

(declare-fun b!4658784 () Bool)

(declare-fun e!2906883 () List!52046)

(assert (=> b!4658784 (= e!2906883 e!2906882)))

(declare-fun c!797441 () Bool)

(assert (=> b!4658784 (= c!797441 ((_ is Cons!51922) (t!359162 oldBucket!40)))))

(declare-fun b!4658786 () Bool)

(assert (=> b!4658786 (= e!2906882 Nil!51922)))

(declare-fun d!1478699 () Bool)

(declare-fun lt!1821001 () List!52046)

(assert (=> d!1478699 (not (containsKey!2740 lt!1821001 key!4968))))

(assert (=> d!1478699 (= lt!1821001 e!2906883)))

(declare-fun c!797440 () Bool)

(assert (=> d!1478699 (= c!797440 (and ((_ is Cons!51922) (t!359162 oldBucket!40)) (= (_1!29817 (h!58072 (t!359162 oldBucket!40))) key!4968)))))

(assert (=> d!1478699 (noDuplicateKeys!1650 (t!359162 oldBucket!40))))

(assert (=> d!1478699 (= (removePairForKey!1273 (t!359162 oldBucket!40) key!4968) lt!1821001)))

(declare-fun b!4658783 () Bool)

(assert (=> b!4658783 (= e!2906883 (t!359162 (t!359162 oldBucket!40)))))

(assert (= (and d!1478699 c!797440) b!4658783))

(assert (= (and d!1478699 (not c!797440)) b!4658784))

(assert (= (and b!4658784 c!797441) b!4658785))

(assert (= (and b!4658784 (not c!797441)) b!4658786))

(declare-fun m!5540243 () Bool)

(assert (=> b!4658785 m!5540243))

(declare-fun m!5540245 () Bool)

(assert (=> d!1478699 m!5540245))

(assert (=> d!1478699 m!5540181))

(assert (=> b!4658556 d!1478699))

(declare-fun d!1478703 () Bool)

(declare-fun res!1959342 () Bool)

(declare-fun e!2906884 () Bool)

(assert (=> d!1478703 (=> res!1959342 e!2906884)))

(assert (=> d!1478703 (= res!1959342 (not ((_ is Cons!51922) newBucket!224)))))

(assert (=> d!1478703 (= (noDuplicateKeys!1650 newBucket!224) e!2906884)))

(declare-fun b!4658787 () Bool)

(declare-fun e!2906885 () Bool)

(assert (=> b!4658787 (= e!2906884 e!2906885)))

(declare-fun res!1959343 () Bool)

(assert (=> b!4658787 (=> (not res!1959343) (not e!2906885))))

(assert (=> b!4658787 (= res!1959343 (not (containsKey!2740 (t!359162 newBucket!224) (_1!29817 (h!58072 newBucket!224)))))))

(declare-fun b!4658788 () Bool)

(assert (=> b!4658788 (= e!2906885 (noDuplicateKeys!1650 (t!359162 newBucket!224)))))

(assert (= (and d!1478703 (not res!1959342)) b!4658787))

(assert (= (and b!4658787 res!1959343) b!4658788))

(declare-fun m!5540247 () Bool)

(assert (=> b!4658787 m!5540247))

(declare-fun m!5540249 () Bool)

(assert (=> b!4658788 m!5540249))

(assert (=> b!4658557 d!1478703))

(declare-fun bs!1066573 () Bool)

(declare-fun d!1478705 () Bool)

(assert (= bs!1066573 (and d!1478705 b!4658671)))

(declare-fun lambda!199959 () Int)

(assert (=> bs!1066573 (not (= lambda!199959 lambda!199939))))

(declare-fun bs!1066575 () Bool)

(assert (= bs!1066575 (and d!1478705 b!4658667)))

(assert (=> bs!1066575 (not (= lambda!199959 lambda!199940))))

(assert (=> bs!1066575 (not (= lambda!199959 lambda!199941))))

(declare-fun bs!1066576 () Bool)

(assert (= bs!1066576 (and d!1478705 d!1478641)))

(assert (=> bs!1066576 (not (= lambda!199959 lambda!199942))))

(assert (=> d!1478705 true))

(assert (=> d!1478705 true))

(assert (=> d!1478705 (= (allKeysSameHash!1504 newBucket!224 hash!414 hashF!1389) (forall!11046 newBucket!224 lambda!199959))))

(declare-fun bs!1066577 () Bool)

(assert (= bs!1066577 d!1478705))

(declare-fun m!5540255 () Bool)

(assert (=> bs!1066577 m!5540255))

(assert (=> b!4658555 d!1478705))

(declare-fun b!4658795 () Bool)

(declare-fun e!2906886 () List!52046)

(assert (=> b!4658795 (= e!2906886 (Cons!51922 (h!58072 (tail!8253 oldBucket!40)) (removePairForKey!1273 (t!359162 (tail!8253 oldBucket!40)) key!4968)))))

(declare-fun b!4658794 () Bool)

(declare-fun e!2906887 () List!52046)

(assert (=> b!4658794 (= e!2906887 e!2906886)))

(declare-fun c!797443 () Bool)

(assert (=> b!4658794 (= c!797443 ((_ is Cons!51922) (tail!8253 oldBucket!40)))))

(declare-fun b!4658796 () Bool)

(assert (=> b!4658796 (= e!2906886 Nil!51922)))

(declare-fun d!1478709 () Bool)

(declare-fun lt!1821005 () List!52046)

(assert (=> d!1478709 (not (containsKey!2740 lt!1821005 key!4968))))

(assert (=> d!1478709 (= lt!1821005 e!2906887)))

(declare-fun c!797442 () Bool)

(assert (=> d!1478709 (= c!797442 (and ((_ is Cons!51922) (tail!8253 oldBucket!40)) (= (_1!29817 (h!58072 (tail!8253 oldBucket!40))) key!4968)))))

(assert (=> d!1478709 (noDuplicateKeys!1650 (tail!8253 oldBucket!40))))

(assert (=> d!1478709 (= (removePairForKey!1273 (tail!8253 oldBucket!40) key!4968) lt!1821005)))

(declare-fun b!4658793 () Bool)

(assert (=> b!4658793 (= e!2906887 (t!359162 (tail!8253 oldBucket!40)))))

(assert (= (and d!1478709 c!797442) b!4658793))

(assert (= (and d!1478709 (not c!797442)) b!4658794))

(assert (= (and b!4658794 c!797443) b!4658795))

(assert (= (and b!4658794 (not c!797443)) b!4658796))

(declare-fun m!5540257 () Bool)

(assert (=> b!4658795 m!5540257))

(declare-fun m!5540259 () Bool)

(assert (=> d!1478709 m!5540259))

(assert (=> d!1478709 m!5539987))

(declare-fun m!5540261 () Bool)

(assert (=> d!1478709 m!5540261))

(assert (=> b!4658564 d!1478709))

(declare-fun d!1478711 () Bool)

(assert (=> d!1478711 (= (tail!8253 oldBucket!40) (t!359162 oldBucket!40))))

(assert (=> b!4658564 d!1478711))

(declare-fun d!1478713 () Bool)

(assert (=> d!1478713 (= (tail!8253 newBucket!224) (t!359162 newBucket!224))))

(assert (=> b!4658564 d!1478713))

(declare-fun b!4658799 () Bool)

(declare-fun e!2906888 () List!52046)

(assert (=> b!4658799 (= e!2906888 (Cons!51922 (h!58072 oldBucket!40) (removePairForKey!1273 (t!359162 oldBucket!40) key!4968)))))

(declare-fun b!4658798 () Bool)

(declare-fun e!2906889 () List!52046)

(assert (=> b!4658798 (= e!2906889 e!2906888)))

(declare-fun c!797445 () Bool)

(assert (=> b!4658798 (= c!797445 ((_ is Cons!51922) oldBucket!40))))

(declare-fun b!4658800 () Bool)

(assert (=> b!4658800 (= e!2906888 Nil!51922)))

(declare-fun d!1478715 () Bool)

(declare-fun lt!1821006 () List!52046)

(assert (=> d!1478715 (not (containsKey!2740 lt!1821006 key!4968))))

(assert (=> d!1478715 (= lt!1821006 e!2906889)))

(declare-fun c!797444 () Bool)

(assert (=> d!1478715 (= c!797444 (and ((_ is Cons!51922) oldBucket!40) (= (_1!29817 (h!58072 oldBucket!40)) key!4968)))))

(assert (=> d!1478715 (noDuplicateKeys!1650 oldBucket!40)))

(assert (=> d!1478715 (= (removePairForKey!1273 oldBucket!40 key!4968) lt!1821006)))

(declare-fun b!4658797 () Bool)

(assert (=> b!4658797 (= e!2906889 (t!359162 oldBucket!40))))

(assert (= (and d!1478715 c!797444) b!4658797))

(assert (= (and d!1478715 (not c!797444)) b!4658798))

(assert (= (and b!4658798 c!797445) b!4658799))

(assert (= (and b!4658798 (not c!797445)) b!4658800))

(assert (=> b!4658799 m!5539957))

(declare-fun m!5540263 () Bool)

(assert (=> d!1478715 m!5540263))

(assert (=> d!1478715 m!5539999))

(assert (=> b!4658565 d!1478715))

(declare-fun d!1478717 () Bool)

(declare-fun res!1959351 () Bool)

(declare-fun e!2906900 () Bool)

(assert (=> d!1478717 (=> res!1959351 e!2906900)))

(assert (=> d!1478717 (= res!1959351 ((_ is Nil!51923) (Cons!51923 (tuple2!53049 hash!414 (t!359162 oldBucket!40)) Nil!51923)))))

(assert (=> d!1478717 (= (forall!11044 (Cons!51923 (tuple2!53049 hash!414 (t!359162 oldBucket!40)) Nil!51923) lambda!199870) e!2906900)))

(declare-fun b!4658813 () Bool)

(declare-fun e!2906901 () Bool)

(assert (=> b!4658813 (= e!2906900 e!2906901)))

(declare-fun res!1959352 () Bool)

(assert (=> b!4658813 (=> (not res!1959352) (not e!2906901))))

(declare-fun dynLambda!21604 (Int tuple2!53048) Bool)

(assert (=> b!4658813 (= res!1959352 (dynLambda!21604 lambda!199870 (h!58073 (Cons!51923 (tuple2!53049 hash!414 (t!359162 oldBucket!40)) Nil!51923))))))

(declare-fun b!4658814 () Bool)

(assert (=> b!4658814 (= e!2906901 (forall!11044 (t!359163 (Cons!51923 (tuple2!53049 hash!414 (t!359162 oldBucket!40)) Nil!51923)) lambda!199870))))

(assert (= (and d!1478717 (not res!1959351)) b!4658813))

(assert (= (and b!4658813 res!1959352) b!4658814))

(declare-fun b_lambda!174639 () Bool)

(assert (=> (not b_lambda!174639) (not b!4658813)))

(declare-fun m!5540271 () Bool)

(assert (=> b!4658813 m!5540271))

(declare-fun m!5540275 () Bool)

(assert (=> b!4658814 m!5540275))

(assert (=> b!4658554 d!1478717))

(declare-fun d!1478723 () Bool)

(assert (=> d!1478723 (contains!15073 (toList!5229 lt!1820760) (tuple2!53049 lt!1820757 lt!1820759))))

(declare-fun lt!1821012 () Unit!118952)

(declare-fun choose!32070 (ListLongMap!3783 (_ BitVec 64) List!52046) Unit!118952)

(assert (=> d!1478723 (= lt!1821012 (choose!32070 lt!1820760 lt!1820757 lt!1820759))))

(assert (=> d!1478723 (contains!15074 lt!1820760 lt!1820757)))

(assert (=> d!1478723 (= (lemmaGetValueImpliesTupleContained!183 lt!1820760 lt!1820757 lt!1820759) lt!1821012)))

(declare-fun bs!1066580 () Bool)

(assert (= bs!1066580 d!1478723))

(declare-fun m!5540279 () Bool)

(assert (=> bs!1066580 m!5540279))

(declare-fun m!5540281 () Bool)

(assert (=> bs!1066580 m!5540281))

(assert (=> bs!1066580 m!5539961))

(assert (=> b!4658553 d!1478723))

(declare-fun b!4658834 () Bool)

(declare-fun res!1959361 () Bool)

(declare-fun e!2906917 () Bool)

(assert (=> b!4658834 (=> (not res!1959361) (not e!2906917))))

(declare-fun lt!1821015 () Option!11838)

(declare-fun get!17283 (Option!11838) tuple2!53046)

(assert (=> b!4658834 (= res!1959361 (= (_1!29817 (get!17283 lt!1821015)) key!4968))))

(declare-fun b!4658835 () Bool)

(declare-fun e!2906913 () Option!11838)

(assert (=> b!4658835 (= e!2906913 None!11837)))

(declare-fun b!4658836 () Bool)

(declare-fun contains!15079 (List!52046 tuple2!53046) Bool)

(assert (=> b!4658836 (= e!2906917 (contains!15079 lt!1820759 (get!17283 lt!1821015)))))

(declare-fun b!4658837 () Bool)

(assert (=> b!4658837 (= e!2906913 (getPair!378 (t!359162 lt!1820759) key!4968))))

(declare-fun b!4658838 () Bool)

(declare-fun e!2906914 () Option!11838)

(assert (=> b!4658838 (= e!2906914 e!2906913)))

(declare-fun c!797450 () Bool)

(assert (=> b!4658838 (= c!797450 ((_ is Cons!51922) lt!1820759))))

(declare-fun d!1478725 () Bool)

(declare-fun e!2906915 () Bool)

(assert (=> d!1478725 e!2906915))

(declare-fun res!1959363 () Bool)

(assert (=> d!1478725 (=> res!1959363 e!2906915)))

(declare-fun e!2906916 () Bool)

(assert (=> d!1478725 (= res!1959363 e!2906916)))

(declare-fun res!1959362 () Bool)

(assert (=> d!1478725 (=> (not res!1959362) (not e!2906916))))

(declare-fun isEmpty!29019 (Option!11838) Bool)

(assert (=> d!1478725 (= res!1959362 (isEmpty!29019 lt!1821015))))

(assert (=> d!1478725 (= lt!1821015 e!2906914)))

(declare-fun c!797451 () Bool)

(assert (=> d!1478725 (= c!797451 (and ((_ is Cons!51922) lt!1820759) (= (_1!29817 (h!58072 lt!1820759)) key!4968)))))

(assert (=> d!1478725 (noDuplicateKeys!1650 lt!1820759)))

(assert (=> d!1478725 (= (getPair!378 lt!1820759 key!4968) lt!1821015)))

(declare-fun b!4658833 () Bool)

(assert (=> b!4658833 (= e!2906916 (not (containsKey!2740 lt!1820759 key!4968)))))

(declare-fun b!4658839 () Bool)

(assert (=> b!4658839 (= e!2906915 e!2906917)))

(declare-fun res!1959364 () Bool)

(assert (=> b!4658839 (=> (not res!1959364) (not e!2906917))))

(assert (=> b!4658839 (= res!1959364 (isDefined!9103 lt!1821015))))

(declare-fun b!4658840 () Bool)

(assert (=> b!4658840 (= e!2906914 (Some!11837 (h!58072 lt!1820759)))))

(assert (= (and d!1478725 c!797451) b!4658840))

(assert (= (and d!1478725 (not c!797451)) b!4658838))

(assert (= (and b!4658838 c!797450) b!4658837))

(assert (= (and b!4658838 (not c!797450)) b!4658835))

(assert (= (and d!1478725 res!1959362) b!4658833))

(assert (= (and d!1478725 (not res!1959363)) b!4658839))

(assert (= (and b!4658839 res!1959364) b!4658834))

(assert (= (and b!4658834 res!1959361) b!4658836))

(declare-fun m!5540283 () Bool)

(assert (=> b!4658837 m!5540283))

(declare-fun m!5540285 () Bool)

(assert (=> b!4658833 m!5540285))

(declare-fun m!5540287 () Bool)

(assert (=> b!4658834 m!5540287))

(declare-fun m!5540289 () Bool)

(assert (=> d!1478725 m!5540289))

(declare-fun m!5540291 () Bool)

(assert (=> d!1478725 m!5540291))

(assert (=> b!4658836 m!5540287))

(assert (=> b!4658836 m!5540287))

(declare-fun m!5540293 () Bool)

(assert (=> b!4658836 m!5540293))

(declare-fun m!5540295 () Bool)

(assert (=> b!4658839 m!5540295))

(assert (=> b!4658553 d!1478725))

(declare-fun d!1478727 () Bool)

(declare-fun lt!1821018 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!9011 (List!52047) (InoxSet tuple2!53048))

(assert (=> d!1478727 (= lt!1821018 (select (content!9011 lt!1820751) lt!1820763))))

(declare-fun e!2906923 () Bool)

(assert (=> d!1478727 (= lt!1821018 e!2906923)))

(declare-fun res!1959370 () Bool)

(assert (=> d!1478727 (=> (not res!1959370) (not e!2906923))))

(assert (=> d!1478727 (= res!1959370 ((_ is Cons!51923) lt!1820751))))

(assert (=> d!1478727 (= (contains!15073 lt!1820751 lt!1820763) lt!1821018)))

(declare-fun b!4658845 () Bool)

(declare-fun e!2906922 () Bool)

(assert (=> b!4658845 (= e!2906923 e!2906922)))

(declare-fun res!1959369 () Bool)

(assert (=> b!4658845 (=> res!1959369 e!2906922)))

(assert (=> b!4658845 (= res!1959369 (= (h!58073 lt!1820751) lt!1820763))))

(declare-fun b!4658846 () Bool)

(assert (=> b!4658846 (= e!2906922 (contains!15073 (t!359163 lt!1820751) lt!1820763))))

(assert (= (and d!1478727 res!1959370) b!4658845))

(assert (= (and b!4658845 (not res!1959369)) b!4658846))

(declare-fun m!5540297 () Bool)

(assert (=> d!1478727 m!5540297))

(declare-fun m!5540299 () Bool)

(assert (=> d!1478727 m!5540299))

(declare-fun m!5540301 () Bool)

(assert (=> b!4658846 m!5540301))

(assert (=> b!4658553 d!1478727))

(declare-fun d!1478729 () Bool)

(declare-fun res!1959375 () Bool)

(declare-fun e!2906928 () Bool)

(assert (=> d!1478729 (=> res!1959375 e!2906928)))

(assert (=> d!1478729 (= res!1959375 (and ((_ is Cons!51922) (t!359162 oldBucket!40)) (= (_1!29817 (h!58072 (t!359162 oldBucket!40))) key!4968)))))

(assert (=> d!1478729 (= (containsKey!2740 (t!359162 oldBucket!40) key!4968) e!2906928)))

(declare-fun b!4658851 () Bool)

(declare-fun e!2906929 () Bool)

(assert (=> b!4658851 (= e!2906928 e!2906929)))

(declare-fun res!1959376 () Bool)

(assert (=> b!4658851 (=> (not res!1959376) (not e!2906929))))

(assert (=> b!4658851 (= res!1959376 ((_ is Cons!51922) (t!359162 oldBucket!40)))))

(declare-fun b!4658852 () Bool)

(assert (=> b!4658852 (= e!2906929 (containsKey!2740 (t!359162 (t!359162 oldBucket!40)) key!4968))))

(assert (= (and d!1478729 (not res!1959375)) b!4658851))

(assert (= (and b!4658851 res!1959376) b!4658852))

(declare-fun m!5540303 () Bool)

(assert (=> b!4658852 m!5540303))

(assert (=> b!4658553 d!1478729))

(declare-fun d!1478731 () Bool)

(declare-fun e!2906934 () Bool)

(assert (=> d!1478731 e!2906934))

(declare-fun res!1959379 () Bool)

(assert (=> d!1478731 (=> res!1959379 e!2906934)))

(declare-fun lt!1821030 () Bool)

(assert (=> d!1478731 (= res!1959379 (not lt!1821030))))

(declare-fun lt!1821029 () Bool)

(assert (=> d!1478731 (= lt!1821030 lt!1821029)))

(declare-fun lt!1821028 () Unit!118952)

(declare-fun e!2906935 () Unit!118952)

(assert (=> d!1478731 (= lt!1821028 e!2906935)))

(declare-fun c!797454 () Bool)

(assert (=> d!1478731 (= c!797454 lt!1821029)))

(declare-fun containsKey!2744 (List!52047 (_ BitVec 64)) Bool)

(assert (=> d!1478731 (= lt!1821029 (containsKey!2744 (toList!5229 lt!1820760) lt!1820757))))

(assert (=> d!1478731 (= (contains!15074 lt!1820760 lt!1820757) lt!1821030)))

(declare-fun b!4658859 () Bool)

(declare-fun lt!1821027 () Unit!118952)

(assert (=> b!4658859 (= e!2906935 lt!1821027)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1524 (List!52047 (_ BitVec 64)) Unit!118952)

(assert (=> b!4658859 (= lt!1821027 (lemmaContainsKeyImpliesGetValueByKeyDefined!1524 (toList!5229 lt!1820760) lt!1820757))))

(declare-datatypes ((Option!11842 0))(
  ( (None!11841) (Some!11841 (v!46135 List!52046)) )
))
(declare-fun isDefined!9107 (Option!11842) Bool)

(declare-fun getValueByKey!1622 (List!52047 (_ BitVec 64)) Option!11842)

(assert (=> b!4658859 (isDefined!9107 (getValueByKey!1622 (toList!5229 lt!1820760) lt!1820757))))

(declare-fun b!4658860 () Bool)

(declare-fun Unit!118981 () Unit!118952)

(assert (=> b!4658860 (= e!2906935 Unit!118981)))

(declare-fun b!4658861 () Bool)

(assert (=> b!4658861 (= e!2906934 (isDefined!9107 (getValueByKey!1622 (toList!5229 lt!1820760) lt!1820757)))))

(assert (= (and d!1478731 c!797454) b!4658859))

(assert (= (and d!1478731 (not c!797454)) b!4658860))

(assert (= (and d!1478731 (not res!1959379)) b!4658861))

(declare-fun m!5540305 () Bool)

(assert (=> d!1478731 m!5540305))

(declare-fun m!5540307 () Bool)

(assert (=> b!4658859 m!5540307))

(declare-fun m!5540309 () Bool)

(assert (=> b!4658859 m!5540309))

(assert (=> b!4658859 m!5540309))

(declare-fun m!5540311 () Bool)

(assert (=> b!4658859 m!5540311))

(assert (=> b!4658861 m!5540309))

(assert (=> b!4658861 m!5540309))

(assert (=> b!4658861 m!5540311))

(assert (=> b!4658553 d!1478731))

(declare-fun bs!1066581 () Bool)

(declare-fun d!1478733 () Bool)

(assert (= bs!1066581 (and d!1478733 b!4658553)))

(declare-fun lambda!199966 () Int)

(assert (=> bs!1066581 (= lambda!199966 lambda!199870)))

(declare-fun bs!1066582 () Bool)

(assert (= bs!1066582 (and d!1478733 d!1478673)))

(assert (=> bs!1066582 (= lambda!199966 lambda!199952)))

(declare-fun bs!1066583 () Bool)

(assert (= bs!1066583 (and d!1478733 d!1478697)))

(assert (=> bs!1066583 (= lambda!199966 lambda!199953)))

(declare-fun b!4658871 () Bool)

(declare-fun res!1959390 () Bool)

(declare-fun e!2906940 () Bool)

(assert (=> b!4658871 (=> (not res!1959390) (not e!2906940))))

(assert (=> b!4658871 (= res!1959390 (contains!15075 (extractMap!1706 (toList!5229 lt!1820760)) key!4968))))

(assert (=> d!1478733 e!2906940))

(declare-fun res!1959388 () Bool)

(assert (=> d!1478733 (=> (not res!1959388) (not e!2906940))))

(assert (=> d!1478733 (= res!1959388 (forall!11044 (toList!5229 lt!1820760) lambda!199966))))

(declare-fun lt!1821050 () Unit!118952)

(declare-fun choose!32071 (ListLongMap!3783 K!13275 Hashable!6047) Unit!118952)

(assert (=> d!1478733 (= lt!1821050 (choose!32071 lt!1820760 key!4968 hashF!1389))))

(assert (=> d!1478733 (forall!11044 (toList!5229 lt!1820760) lambda!199966)))

(assert (=> d!1478733 (= (lemmaInGenMapThenGetPairDefined!174 lt!1820760 key!4968 hashF!1389) lt!1821050)))

(declare-fun b!4658872 () Bool)

(assert (=> b!4658872 (= e!2906940 (isDefined!9103 (getPair!378 (apply!12253 lt!1820760 (hash!3793 hashF!1389 key!4968)) key!4968)))))

(declare-fun lt!1821047 () Unit!118952)

(assert (=> b!4658872 (= lt!1821047 (forallContained!3244 (toList!5229 lt!1820760) lambda!199966 (tuple2!53049 (hash!3793 hashF!1389 key!4968) (apply!12253 lt!1820760 (hash!3793 hashF!1389 key!4968)))))))

(declare-fun lt!1821048 () Unit!118952)

(declare-fun lt!1821054 () Unit!118952)

(assert (=> b!4658872 (= lt!1821048 lt!1821054)))

(declare-fun lt!1821053 () (_ BitVec 64))

(declare-fun lt!1821052 () List!52046)

(assert (=> b!4658872 (contains!15073 (toList!5229 lt!1820760) (tuple2!53049 lt!1821053 lt!1821052))))

(assert (=> b!4658872 (= lt!1821054 (lemmaGetValueImpliesTupleContained!183 lt!1820760 lt!1821053 lt!1821052))))

(declare-fun e!2906941 () Bool)

(assert (=> b!4658872 e!2906941))

(declare-fun res!1959389 () Bool)

(assert (=> b!4658872 (=> (not res!1959389) (not e!2906941))))

(assert (=> b!4658872 (= res!1959389 (contains!15074 lt!1820760 lt!1821053))))

(assert (=> b!4658872 (= lt!1821052 (apply!12253 lt!1820760 (hash!3793 hashF!1389 key!4968)))))

(assert (=> b!4658872 (= lt!1821053 (hash!3793 hashF!1389 key!4968))))

(declare-fun lt!1821051 () Unit!118952)

(declare-fun lt!1821049 () Unit!118952)

(assert (=> b!4658872 (= lt!1821051 lt!1821049)))

(assert (=> b!4658872 (contains!15074 lt!1820760 (hash!3793 hashF!1389 key!4968))))

(assert (=> b!4658872 (= lt!1821049 (lemmaInGenMapThenLongMapContainsHash!584 lt!1820760 key!4968 hashF!1389))))

(declare-fun b!4658870 () Bool)

(declare-fun res!1959391 () Bool)

(assert (=> b!4658870 (=> (not res!1959391) (not e!2906940))))

(declare-fun allKeysSameHashInMap!1606 (ListLongMap!3783 Hashable!6047) Bool)

(assert (=> b!4658870 (= res!1959391 (allKeysSameHashInMap!1606 lt!1820760 hashF!1389))))

(declare-fun b!4658873 () Bool)

(assert (=> b!4658873 (= e!2906941 (= (getValueByKey!1622 (toList!5229 lt!1820760) lt!1821053) (Some!11841 lt!1821052)))))

(assert (= (and d!1478733 res!1959388) b!4658870))

(assert (= (and b!4658870 res!1959391) b!4658871))

(assert (= (and b!4658871 res!1959390) b!4658872))

(assert (= (and b!4658872 res!1959389) b!4658873))

(declare-fun m!5540313 () Bool)

(assert (=> b!4658871 m!5540313))

(assert (=> b!4658871 m!5540313))

(declare-fun m!5540315 () Bool)

(assert (=> b!4658871 m!5540315))

(declare-fun m!5540317 () Bool)

(assert (=> b!4658873 m!5540317))

(declare-fun m!5540319 () Bool)

(assert (=> b!4658870 m!5540319))

(declare-fun m!5540321 () Bool)

(assert (=> b!4658872 m!5540321))

(declare-fun m!5540323 () Bool)

(assert (=> b!4658872 m!5540323))

(assert (=> b!4658872 m!5539995))

(declare-fun m!5540325 () Bool)

(assert (=> b!4658872 m!5540325))

(assert (=> b!4658872 m!5539995))

(declare-fun m!5540327 () Bool)

(assert (=> b!4658872 m!5540327))

(assert (=> b!4658872 m!5539971))

(declare-fun m!5540329 () Bool)

(assert (=> b!4658872 m!5540329))

(assert (=> b!4658872 m!5540325))

(assert (=> b!4658872 m!5540321))

(assert (=> b!4658872 m!5539995))

(declare-fun m!5540331 () Bool)

(assert (=> b!4658872 m!5540331))

(declare-fun m!5540333 () Bool)

(assert (=> b!4658872 m!5540333))

(declare-fun m!5540335 () Bool)

(assert (=> b!4658872 m!5540335))

(declare-fun m!5540337 () Bool)

(assert (=> d!1478733 m!5540337))

(declare-fun m!5540339 () Bool)

(assert (=> d!1478733 m!5540339))

(assert (=> d!1478733 m!5540337))

(assert (=> b!4658553 d!1478733))

(declare-fun d!1478735 () Bool)

(declare-fun res!1959392 () Bool)

(declare-fun e!2906942 () Bool)

(assert (=> d!1478735 (=> res!1959392 e!2906942)))

(assert (=> d!1478735 (= res!1959392 (and ((_ is Cons!51922) oldBucket!40) (= (_1!29817 (h!58072 oldBucket!40)) key!4968)))))

(assert (=> d!1478735 (= (containsKey!2740 oldBucket!40 key!4968) e!2906942)))

(declare-fun b!4658874 () Bool)

(declare-fun e!2906943 () Bool)

(assert (=> b!4658874 (= e!2906942 e!2906943)))

(declare-fun res!1959393 () Bool)

(assert (=> b!4658874 (=> (not res!1959393) (not e!2906943))))

(assert (=> b!4658874 (= res!1959393 ((_ is Cons!51922) oldBucket!40))))

(declare-fun b!4658875 () Bool)

(assert (=> b!4658875 (= e!2906943 (containsKey!2740 (t!359162 oldBucket!40) key!4968))))

(assert (= (and d!1478735 (not res!1959392)) b!4658874))

(assert (= (and b!4658874 res!1959393) b!4658875))

(assert (=> b!4658875 m!5539981))

(assert (=> b!4658553 d!1478735))

(declare-fun d!1478737 () Bool)

(declare-fun get!17284 (Option!11842) List!52046)

(assert (=> d!1478737 (= (apply!12253 lt!1820760 lt!1820757) (get!17284 (getValueByKey!1622 (toList!5229 lt!1820760) lt!1820757)))))

(declare-fun bs!1066584 () Bool)

(assert (= bs!1066584 d!1478737))

(assert (=> bs!1066584 m!5540309))

(assert (=> bs!1066584 m!5540309))

(declare-fun m!5540341 () Bool)

(assert (=> bs!1066584 m!5540341))

(assert (=> b!4658553 d!1478737))

(declare-fun d!1478739 () Bool)

(assert (=> d!1478739 (dynLambda!21604 lambda!199870 lt!1820763)))

(declare-fun lt!1821057 () Unit!118952)

(declare-fun choose!32072 (List!52047 Int tuple2!53048) Unit!118952)

(assert (=> d!1478739 (= lt!1821057 (choose!32072 lt!1820751 lambda!199870 lt!1820763))))

(declare-fun e!2906946 () Bool)

(assert (=> d!1478739 e!2906946))

(declare-fun res!1959396 () Bool)

(assert (=> d!1478739 (=> (not res!1959396) (not e!2906946))))

(assert (=> d!1478739 (= res!1959396 (forall!11044 lt!1820751 lambda!199870))))

(assert (=> d!1478739 (= (forallContained!3244 lt!1820751 lambda!199870 lt!1820763) lt!1821057)))

(declare-fun b!4658878 () Bool)

(assert (=> b!4658878 (= e!2906946 (contains!15073 lt!1820751 lt!1820763))))

(assert (= (and d!1478739 res!1959396) b!4658878))

(declare-fun b_lambda!174641 () Bool)

(assert (=> (not b_lambda!174641) (not d!1478739)))

(declare-fun m!5540343 () Bool)

(assert (=> d!1478739 m!5540343))

(declare-fun m!5540345 () Bool)

(assert (=> d!1478739 m!5540345))

(declare-fun m!5540347 () Bool)

(assert (=> d!1478739 m!5540347))

(assert (=> b!4658878 m!5539975))

(assert (=> b!4658553 d!1478739))

(declare-fun d!1478741 () Bool)

(assert (=> d!1478741 (= (isDefined!9103 (getPair!378 lt!1820759 key!4968)) (not (isEmpty!29019 (getPair!378 lt!1820759 key!4968))))))

(declare-fun bs!1066585 () Bool)

(assert (= bs!1066585 d!1478741))

(assert (=> bs!1066585 m!5539963))

(declare-fun m!5540349 () Bool)

(assert (=> bs!1066585 m!5540349))

(assert (=> b!4658553 d!1478741))

(declare-fun bs!1066586 () Bool)

(declare-fun d!1478743 () Bool)

(assert (= bs!1066586 (and d!1478743 b!4658553)))

(declare-fun lambda!199969 () Int)

(assert (=> bs!1066586 (= lambda!199969 lambda!199870)))

(declare-fun bs!1066587 () Bool)

(assert (= bs!1066587 (and d!1478743 d!1478673)))

(assert (=> bs!1066587 (= lambda!199969 lambda!199952)))

(declare-fun bs!1066588 () Bool)

(assert (= bs!1066588 (and d!1478743 d!1478697)))

(assert (=> bs!1066588 (= lambda!199969 lambda!199953)))

(declare-fun bs!1066589 () Bool)

(assert (= bs!1066589 (and d!1478743 d!1478733)))

(assert (=> bs!1066589 (= lambda!199969 lambda!199966)))

(assert (=> d!1478743 (contains!15074 lt!1820760 (hash!3793 hashF!1389 key!4968))))

(declare-fun lt!1821060 () Unit!118952)

(declare-fun choose!32073 (ListLongMap!3783 K!13275 Hashable!6047) Unit!118952)

(assert (=> d!1478743 (= lt!1821060 (choose!32073 lt!1820760 key!4968 hashF!1389))))

(assert (=> d!1478743 (forall!11044 (toList!5229 lt!1820760) lambda!199969)))

(assert (=> d!1478743 (= (lemmaInGenMapThenLongMapContainsHash!584 lt!1820760 key!4968 hashF!1389) lt!1821060)))

(declare-fun bs!1066590 () Bool)

(assert (= bs!1066590 d!1478743))

(assert (=> bs!1066590 m!5539995))

(assert (=> bs!1066590 m!5539995))

(assert (=> bs!1066590 m!5540331))

(declare-fun m!5540351 () Bool)

(assert (=> bs!1066590 m!5540351))

(declare-fun m!5540353 () Bool)

(assert (=> bs!1066590 m!5540353))

(assert (=> b!4658553 d!1478743))

(declare-fun d!1478745 () Bool)

(assert (=> d!1478745 (containsKey!2740 oldBucket!40 key!4968)))

(declare-fun lt!1821063 () Unit!118952)

(declare-fun choose!32074 (List!52046 K!13275 Hashable!6047) Unit!118952)

(assert (=> d!1478745 (= lt!1821063 (choose!32074 oldBucket!40 key!4968 hashF!1389))))

(assert (=> d!1478745 (noDuplicateKeys!1650 oldBucket!40)))

(assert (=> d!1478745 (= (lemmaGetPairDefinedThenContainsKey!128 oldBucket!40 key!4968 hashF!1389) lt!1821063)))

(declare-fun bs!1066591 () Bool)

(assert (= bs!1066591 d!1478745))

(assert (=> bs!1066591 m!5539965))

(declare-fun m!5540355 () Bool)

(assert (=> bs!1066591 m!5540355))

(assert (=> bs!1066591 m!5539999))

(assert (=> b!4658553 d!1478745))

(declare-fun bs!1066592 () Bool)

(declare-fun d!1478747 () Bool)

(assert (= bs!1066592 (and d!1478747 d!1478705)))

(declare-fun lambda!199970 () Int)

(assert (=> bs!1066592 (= lambda!199970 lambda!199959)))

(declare-fun bs!1066593 () Bool)

(assert (= bs!1066593 (and d!1478747 b!4658667)))

(assert (=> bs!1066593 (not (= lambda!199970 lambda!199940))))

(declare-fun bs!1066594 () Bool)

(assert (= bs!1066594 (and d!1478747 b!4658671)))

(assert (=> bs!1066594 (not (= lambda!199970 lambda!199939))))

(assert (=> bs!1066593 (not (= lambda!199970 lambda!199941))))

(declare-fun bs!1066595 () Bool)

(assert (= bs!1066595 (and d!1478747 d!1478641)))

(assert (=> bs!1066595 (not (= lambda!199970 lambda!199942))))

(assert (=> d!1478747 true))

(assert (=> d!1478747 true))

(assert (=> d!1478747 (= (allKeysSameHash!1504 oldBucket!40 hash!414 hashF!1389) (forall!11046 oldBucket!40 lambda!199970))))

(declare-fun bs!1066596 () Bool)

(assert (= bs!1066596 d!1478747))

(declare-fun m!5540357 () Bool)

(assert (=> bs!1066596 m!5540357))

(assert (=> b!4658562 d!1478747))

(declare-fun b!4658883 () Bool)

(declare-fun e!2906949 () Bool)

(declare-fun tp!1343418 () Bool)

(assert (=> b!4658883 (= e!2906949 (and tp_is_empty!29893 tp_is_empty!29895 tp!1343418))))

(assert (=> b!4658566 (= tp!1343411 e!2906949)))

(assert (= (and b!4658566 ((_ is Cons!51922) (t!359162 newBucket!224))) b!4658883))

(declare-fun e!2906950 () Bool)

(declare-fun b!4658884 () Bool)

(declare-fun tp!1343419 () Bool)

(assert (=> b!4658884 (= e!2906950 (and tp_is_empty!29893 tp_is_empty!29895 tp!1343419))))

(assert (=> b!4658558 (= tp!1343410 e!2906950)))

(assert (= (and b!4658558 ((_ is Cons!51922) (t!359162 oldBucket!40))) b!4658884))

(declare-fun b_lambda!174643 () Bool)

(assert (= b_lambda!174639 (or b!4658553 b_lambda!174643)))

(declare-fun bs!1066597 () Bool)

(declare-fun d!1478749 () Bool)

(assert (= bs!1066597 (and d!1478749 b!4658553)))

(assert (=> bs!1066597 (= (dynLambda!21604 lambda!199870 (h!58073 (Cons!51923 (tuple2!53049 hash!414 (t!359162 oldBucket!40)) Nil!51923))) (noDuplicateKeys!1650 (_2!29818 (h!58073 (Cons!51923 (tuple2!53049 hash!414 (t!359162 oldBucket!40)) Nil!51923)))))))

(declare-fun m!5540359 () Bool)

(assert (=> bs!1066597 m!5540359))

(assert (=> b!4658813 d!1478749))

(declare-fun b_lambda!174645 () Bool)

(assert (= b_lambda!174641 (or b!4658553 b_lambda!174645)))

(declare-fun bs!1066598 () Bool)

(declare-fun d!1478751 () Bool)

(assert (= bs!1066598 (and d!1478751 b!4658553)))

(assert (=> bs!1066598 (= (dynLambda!21604 lambda!199870 lt!1820763) (noDuplicateKeys!1650 (_2!29818 lt!1820763)))))

(declare-fun m!5540361 () Bool)

(assert (=> bs!1066598 m!5540361))

(assert (=> d!1478739 d!1478751))

(check-sat (not d!1478747) (not b!4658787) (not b!4658762) (not b!4658878) (not b!4658871) (not d!1478673) (not b!4658870) (not d!1478639) (not b!4658757) (not d!1478733) (not b!4658814) (not b!4658690) (not d!1478741) (not b!4658669) (not d!1478739) (not b!4658759) (not d!1478705) (not b!4658859) (not b!4658836) (not d!1478697) (not b!4658883) (not b!4658795) (not b!4658834) (not b_lambda!174645) (not b!4658873) (not bs!1066597) (not b!4658785) (not b!4658872) (not bm!325515) (not d!1478725) (not d!1478743) (not d!1478709) (not d!1478745) (not b!4658833) (not b!4658667) (not b!4658837) (not b!4658668) (not d!1478737) (not b!4658764) (not b!4658703) (not d!1478699) (not d!1478715) (not d!1478723) (not b!4658702) tp_is_empty!29895 (not d!1478727) (not b!4658861) (not b!4658846) (not d!1478683) (not b!4658670) (not bm!325516) (not bs!1066598) (not b!4658758) (not bm!325517) tp_is_empty!29893 (not d!1478641) (not b!4658788) (not b!4658760) (not b!4658884) (not b!4658763) (not bm!325520) (not b!4658799) (not b!4658755) (not b!4658852) (not b!4658875) (not b!4658839) (not d!1478731) (not b_lambda!174643))
(check-sat)
