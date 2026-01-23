; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!419364 () Bool)

(assert start!419364)

(declare-fun b!4345063 () Bool)

(declare-fun e!2703892 () Bool)

(declare-fun e!2703890 () Bool)

(assert (=> b!4345063 (= e!2703892 e!2703890)))

(declare-fun res!1783851 () Bool)

(assert (=> b!4345063 (=> (not res!1783851) (not e!2703890))))

(declare-datatypes ((K!10135 0))(
  ( (K!10136 (val!16379 Int)) )
))
(declare-datatypes ((V!10381 0))(
  ( (V!10382 (val!16380 Int)) )
))
(declare-datatypes ((tuple2!48078 0))(
  ( (tuple2!48079 (_1!27333 K!10135) (_2!27333 V!10381)) )
))
(declare-datatypes ((List!48901 0))(
  ( (Nil!48777) (Cons!48777 (h!54298 tuple2!48078) (t!355821 List!48901)) )
))
(declare-datatypes ((ListMap!2081 0))(
  ( (ListMap!2082 (toList!2837 List!48901)) )
))
(declare-fun lt!1558913 () ListMap!2081)

(declare-fun key!3918 () K!10135)

(declare-fun contains!10898 (ListMap!2081 K!10135) Bool)

(assert (=> b!4345063 (= res!1783851 (contains!10898 lt!1558913 key!3918))))

(declare-datatypes ((tuple2!48080 0))(
  ( (tuple2!48081 (_1!27334 (_ BitVec 64)) (_2!27334 List!48901)) )
))
(declare-datatypes ((List!48902 0))(
  ( (Nil!48778) (Cons!48778 (h!54299 tuple2!48080) (t!355822 List!48902)) )
))
(declare-datatypes ((ListLongMap!1487 0))(
  ( (ListLongMap!1488 (toList!2838 List!48902)) )
))
(declare-fun lm!1707 () ListLongMap!1487)

(declare-fun extractMap!486 (List!48902) ListMap!2081)

(assert (=> b!4345063 (= lt!1558913 (extractMap!486 (toList!2838 lm!1707)))))

(declare-fun b!4345064 () Bool)

(declare-fun tp!1329442 () Bool)

(declare-fun tp_is_empty!24947 () Bool)

(declare-fun tp_is_empty!24945 () Bool)

(declare-fun e!2703891 () Bool)

(assert (=> b!4345064 (= e!2703891 (and tp_is_empty!24945 tp_is_empty!24947 tp!1329442))))

(declare-fun b!4345065 () Bool)

(declare-fun e!2703887 () Bool)

(declare-fun tp!1329441 () Bool)

(assert (=> b!4345065 (= e!2703887 tp!1329441)))

(declare-fun b!4345066 () Bool)

(declare-fun res!1783856 () Bool)

(assert (=> b!4345066 (=> (not res!1783856) (not e!2703892))))

(declare-fun newBucket!200 () List!48901)

(declare-fun hash!377 () (_ BitVec 64))

(declare-datatypes ((Hashable!4819 0))(
  ( (HashableExt!4818 (__x!30522 Int)) )
))
(declare-fun hashF!1247 () Hashable!4819)

(declare-fun allKeysSameHash!385 (List!48901 (_ BitVec 64) Hashable!4819) Bool)

(assert (=> b!4345066 (= res!1783856 (allKeysSameHash!385 newBucket!200 hash!377 hashF!1247))))

(declare-fun res!1783855 () Bool)

(assert (=> start!419364 (=> (not res!1783855) (not e!2703892))))

(declare-fun lambda!137933 () Int)

(declare-fun forall!9017 (List!48902 Int) Bool)

(assert (=> start!419364 (= res!1783855 (forall!9017 (toList!2838 lm!1707) lambda!137933))))

(assert (=> start!419364 e!2703892))

(assert (=> start!419364 e!2703891))

(assert (=> start!419364 true))

(declare-fun inv!64321 (ListLongMap!1487) Bool)

(assert (=> start!419364 (and (inv!64321 lm!1707) e!2703887)))

(assert (=> start!419364 tp_is_empty!24945))

(assert (=> start!419364 tp_is_empty!24947))

(declare-fun b!4345067 () Bool)

(declare-fun e!2703886 () Bool)

(assert (=> b!4345067 (= e!2703890 (not e!2703886))))

(declare-fun res!1783847 () Bool)

(assert (=> b!4345067 (=> res!1783847 e!2703886)))

(declare-fun lt!1558921 () List!48901)

(assert (=> b!4345067 (= res!1783847 (not (= newBucket!200 lt!1558921)))))

(declare-fun lt!1558910 () tuple2!48078)

(declare-fun lt!1558907 () List!48901)

(assert (=> b!4345067 (= lt!1558921 (Cons!48777 lt!1558910 lt!1558907))))

(declare-fun lt!1558909 () List!48901)

(declare-fun removePairForKey!397 (List!48901 K!10135) List!48901)

(assert (=> b!4345067 (= lt!1558907 (removePairForKey!397 lt!1558909 key!3918))))

(declare-fun newValue!99 () V!10381)

(assert (=> b!4345067 (= lt!1558910 (tuple2!48079 key!3918 newValue!99))))

(declare-fun lt!1558922 () tuple2!48080)

(declare-datatypes ((Unit!70395 0))(
  ( (Unit!70396) )
))
(declare-fun lt!1558906 () Unit!70395)

(declare-fun forallContained!1667 (List!48902 Int tuple2!48080) Unit!70395)

(assert (=> b!4345067 (= lt!1558906 (forallContained!1667 (toList!2838 lm!1707) lambda!137933 lt!1558922))))

(declare-fun contains!10899 (List!48902 tuple2!48080) Bool)

(assert (=> b!4345067 (contains!10899 (toList!2838 lm!1707) lt!1558922)))

(assert (=> b!4345067 (= lt!1558922 (tuple2!48081 hash!377 lt!1558909))))

(declare-fun lt!1558916 () Unit!70395)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!274 (List!48902 (_ BitVec 64) List!48901) Unit!70395)

(assert (=> b!4345067 (= lt!1558916 (lemmaGetValueByKeyImpliesContainsTuple!274 (toList!2838 lm!1707) hash!377 lt!1558909))))

(declare-fun apply!11279 (ListLongMap!1487 (_ BitVec 64)) List!48901)

(assert (=> b!4345067 (= lt!1558909 (apply!11279 lm!1707 hash!377))))

(declare-fun b!4345068 () Bool)

(declare-fun res!1783853 () Bool)

(assert (=> b!4345068 (=> (not res!1783853) (not e!2703892))))

(declare-fun allKeysSameHashInMap!531 (ListLongMap!1487 Hashable!4819) Bool)

(assert (=> b!4345068 (= res!1783853 (allKeysSameHashInMap!531 lm!1707 hashF!1247))))

(declare-fun b!4345069 () Bool)

(declare-fun e!2703885 () Bool)

(declare-fun lt!1558905 () ListMap!2081)

(declare-fun lt!1558919 () ListMap!2081)

(declare-fun eq!217 (ListMap!2081 ListMap!2081) Bool)

(assert (=> b!4345069 (= e!2703885 (eq!217 lt!1558905 lt!1558919))))

(declare-fun b!4345070 () Bool)

(declare-fun res!1783849 () Bool)

(declare-fun e!2703889 () Bool)

(assert (=> b!4345070 (=> (not res!1783849) (not e!2703889))))

(declare-fun lt!1558908 () ListLongMap!1487)

(assert (=> b!4345070 (= res!1783849 (forall!9017 (toList!2838 lt!1558908) lambda!137933))))

(declare-fun b!4345071 () Bool)

(declare-fun e!2703888 () Bool)

(assert (=> b!4345071 (= e!2703886 e!2703888)))

(declare-fun res!1783846 () Bool)

(assert (=> b!4345071 (=> res!1783846 e!2703888)))

(get-info :version)

(assert (=> b!4345071 (= res!1783846 (or (not ((_ is Cons!48778) (toList!2838 lm!1707))) (not (= (_1!27334 (h!54299 (toList!2838 lm!1707))) hash!377))))))

(assert (=> b!4345071 e!2703889))

(declare-fun res!1783848 () Bool)

(assert (=> b!4345071 (=> (not res!1783848) (not e!2703889))))

(assert (=> b!4345071 (= res!1783848 (forall!9017 (toList!2838 lt!1558908) lambda!137933))))

(declare-fun lt!1558911 () tuple2!48080)

(declare-fun +!525 (ListLongMap!1487 tuple2!48080) ListLongMap!1487)

(assert (=> b!4345071 (= lt!1558908 (+!525 lm!1707 lt!1558911))))

(assert (=> b!4345071 (= lt!1558911 (tuple2!48081 hash!377 newBucket!200))))

(declare-fun lt!1558927 () Unit!70395)

(declare-fun addValidProp!81 (ListLongMap!1487 Int (_ BitVec 64) List!48901) Unit!70395)

(assert (=> b!4345071 (= lt!1558927 (addValidProp!81 lm!1707 lambda!137933 hash!377 newBucket!200))))

(assert (=> b!4345071 (forall!9017 (toList!2838 lm!1707) lambda!137933)))

(declare-fun b!4345072 () Bool)

(assert (=> b!4345072 (= e!2703889 (or (not ((_ is Cons!48778) (toList!2838 lm!1707))) (not (= (_1!27334 (h!54299 (toList!2838 lm!1707))) hash!377)) (= lt!1558908 (ListLongMap!1488 (Cons!48778 lt!1558911 (t!355822 (toList!2838 lm!1707)))))))))

(declare-fun b!4345073 () Bool)

(declare-fun res!1783852 () Bool)

(assert (=> b!4345073 (=> (not res!1783852) (not e!2703892))))

(declare-fun hash!1398 (Hashable!4819 K!10135) (_ BitVec 64))

(assert (=> b!4345073 (= res!1783852 (= (hash!1398 hashF!1247 key!3918) hash!377))))

(declare-fun b!4345074 () Bool)

(declare-fun res!1783857 () Bool)

(assert (=> b!4345074 (=> (not res!1783857) (not e!2703890))))

(declare-fun contains!10900 (ListLongMap!1487 (_ BitVec 64)) Bool)

(assert (=> b!4345074 (= res!1783857 (contains!10900 lm!1707 hash!377))))

(declare-fun b!4345075 () Bool)

(declare-fun res!1783854 () Bool)

(assert (=> b!4345075 (=> res!1783854 e!2703886)))

(declare-fun noDuplicateKeys!427 (List!48901) Bool)

(assert (=> b!4345075 (= res!1783854 (not (noDuplicateKeys!427 newBucket!200)))))

(declare-fun b!4345076 () Bool)

(assert (=> b!4345076 (= e!2703888 (not (= newBucket!200 Nil!48777)))))

(declare-fun lt!1558926 () ListMap!2081)

(declare-fun lt!1558918 () ListMap!2081)

(assert (=> b!4345076 (= (contains!10898 lt!1558926 key!3918) (contains!10898 lt!1558918 key!3918))))

(declare-fun lt!1558924 () Unit!70395)

(declare-fun lemmaEquivalentThenSameContains!78 (ListMap!2081 ListMap!2081 K!10135) Unit!70395)

(assert (=> b!4345076 (= lt!1558924 (lemmaEquivalentThenSameContains!78 lt!1558926 lt!1558918 key!3918))))

(assert (=> b!4345076 (eq!217 lt!1558926 lt!1558918)))

(declare-fun -!228 (ListMap!2081 K!10135) ListMap!2081)

(assert (=> b!4345076 (= lt!1558918 (-!228 lt!1558913 key!3918))))

(declare-fun lt!1558914 () Unit!70395)

(declare-fun lt!1558920 () List!48901)

(declare-fun lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMap!43 (ListLongMap!1487 (_ BitVec 64) List!48901 K!10135 Hashable!4819) Unit!70395)

(assert (=> b!4345076 (= lt!1558914 (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMap!43 lm!1707 hash!377 lt!1558920 key!3918 hashF!1247))))

(declare-fun lt!1558925 () ListMap!2081)

(assert (=> b!4345076 (= lt!1558925 lt!1558926)))

(declare-fun lt!1558917 () ListLongMap!1487)

(assert (=> b!4345076 (= lt!1558926 (extractMap!486 (toList!2838 lt!1558917)))))

(assert (=> b!4345076 (= lt!1558920 lt!1558907)))

(assert (=> b!4345076 (= lt!1558917 (+!525 lm!1707 (tuple2!48081 hash!377 lt!1558920)))))

(declare-fun tail!6925 (List!48901) List!48901)

(assert (=> b!4345076 (= lt!1558920 (tail!6925 newBucket!200))))

(assert (=> b!4345076 e!2703885))

(declare-fun res!1783850 () Bool)

(assert (=> b!4345076 (=> (not res!1783850) (not e!2703885))))

(declare-fun lt!1558923 () ListMap!2081)

(assert (=> b!4345076 (= res!1783850 (eq!217 lt!1558923 lt!1558919))))

(declare-fun +!526 (ListMap!2081 tuple2!48078) ListMap!2081)

(assert (=> b!4345076 (= lt!1558919 (+!526 lt!1558925 lt!1558910))))

(declare-fun lt!1558928 () ListMap!2081)

(declare-fun addToMapMapFromBucket!135 (List!48901 ListMap!2081) ListMap!2081)

(assert (=> b!4345076 (= lt!1558925 (addToMapMapFromBucket!135 lt!1558907 lt!1558928))))

(declare-fun lt!1558915 () Unit!70395)

(declare-fun lemmaAddToMapFromBucketPlusKeyValueIsCommutative!46 (ListMap!2081 K!10135 V!10381 List!48901) Unit!70395)

(assert (=> b!4345076 (= lt!1558915 (lemmaAddToMapFromBucketPlusKeyValueIsCommutative!46 lt!1558928 key!3918 newValue!99 lt!1558907))))

(assert (=> b!4345076 (= lt!1558905 lt!1558923)))

(assert (=> b!4345076 (= lt!1558923 (addToMapMapFromBucket!135 lt!1558907 (+!526 lt!1558928 lt!1558910)))))

(declare-fun lt!1558912 () ListMap!2081)

(assert (=> b!4345076 (= lt!1558912 lt!1558905)))

(assert (=> b!4345076 (= lt!1558905 (addToMapMapFromBucket!135 lt!1558921 lt!1558928))))

(assert (=> b!4345076 (= lt!1558912 (addToMapMapFromBucket!135 newBucket!200 lt!1558928))))

(assert (=> b!4345076 (= lt!1558912 (extractMap!486 (toList!2838 lt!1558908)))))

(assert (=> b!4345076 (= lt!1558928 (extractMap!486 (t!355822 (toList!2838 lm!1707))))))

(assert (= (and start!419364 res!1783855) b!4345068))

(assert (= (and b!4345068 res!1783853) b!4345073))

(assert (= (and b!4345073 res!1783852) b!4345066))

(assert (= (and b!4345066 res!1783856) b!4345063))

(assert (= (and b!4345063 res!1783851) b!4345074))

(assert (= (and b!4345074 res!1783857) b!4345067))

(assert (= (and b!4345067 (not res!1783847)) b!4345075))

(assert (= (and b!4345075 (not res!1783854)) b!4345071))

(assert (= (and b!4345071 res!1783848) b!4345070))

(assert (= (and b!4345070 res!1783849) b!4345072))

(assert (= (and b!4345071 (not res!1783846)) b!4345076))

(assert (= (and b!4345076 res!1783850) b!4345069))

(assert (= (and start!419364 ((_ is Cons!48777) newBucket!200)) b!4345064))

(assert (= start!419364 b!4345065))

(declare-fun m!4951821 () Bool)

(assert (=> b!4345069 m!4951821))

(declare-fun m!4951823 () Bool)

(assert (=> b!4345068 m!4951823))

(declare-fun m!4951825 () Bool)

(assert (=> b!4345071 m!4951825))

(declare-fun m!4951827 () Bool)

(assert (=> b!4345071 m!4951827))

(declare-fun m!4951829 () Bool)

(assert (=> b!4345071 m!4951829))

(declare-fun m!4951831 () Bool)

(assert (=> b!4345071 m!4951831))

(declare-fun m!4951833 () Bool)

(assert (=> b!4345066 m!4951833))

(declare-fun m!4951835 () Bool)

(assert (=> b!4345075 m!4951835))

(declare-fun m!4951837 () Bool)

(assert (=> b!4345076 m!4951837))

(declare-fun m!4951839 () Bool)

(assert (=> b!4345076 m!4951839))

(declare-fun m!4951841 () Bool)

(assert (=> b!4345076 m!4951841))

(declare-fun m!4951843 () Bool)

(assert (=> b!4345076 m!4951843))

(declare-fun m!4951845 () Bool)

(assert (=> b!4345076 m!4951845))

(declare-fun m!4951847 () Bool)

(assert (=> b!4345076 m!4951847))

(declare-fun m!4951849 () Bool)

(assert (=> b!4345076 m!4951849))

(declare-fun m!4951851 () Bool)

(assert (=> b!4345076 m!4951851))

(declare-fun m!4951853 () Bool)

(assert (=> b!4345076 m!4951853))

(declare-fun m!4951855 () Bool)

(assert (=> b!4345076 m!4951855))

(declare-fun m!4951857 () Bool)

(assert (=> b!4345076 m!4951857))

(declare-fun m!4951859 () Bool)

(assert (=> b!4345076 m!4951859))

(declare-fun m!4951861 () Bool)

(assert (=> b!4345076 m!4951861))

(declare-fun m!4951863 () Bool)

(assert (=> b!4345076 m!4951863))

(declare-fun m!4951865 () Bool)

(assert (=> b!4345076 m!4951865))

(declare-fun m!4951867 () Bool)

(assert (=> b!4345076 m!4951867))

(assert (=> b!4345076 m!4951867))

(declare-fun m!4951869 () Bool)

(assert (=> b!4345076 m!4951869))

(declare-fun m!4951871 () Bool)

(assert (=> b!4345076 m!4951871))

(declare-fun m!4951873 () Bool)

(assert (=> b!4345076 m!4951873))

(declare-fun m!4951875 () Bool)

(assert (=> b!4345073 m!4951875))

(declare-fun m!4951877 () Bool)

(assert (=> b!4345063 m!4951877))

(declare-fun m!4951879 () Bool)

(assert (=> b!4345063 m!4951879))

(assert (=> start!419364 m!4951831))

(declare-fun m!4951881 () Bool)

(assert (=> start!419364 m!4951881))

(declare-fun m!4951883 () Bool)

(assert (=> b!4345067 m!4951883))

(declare-fun m!4951885 () Bool)

(assert (=> b!4345067 m!4951885))

(declare-fun m!4951887 () Bool)

(assert (=> b!4345067 m!4951887))

(declare-fun m!4951889 () Bool)

(assert (=> b!4345067 m!4951889))

(declare-fun m!4951891 () Bool)

(assert (=> b!4345067 m!4951891))

(assert (=> b!4345070 m!4951825))

(declare-fun m!4951893 () Bool)

(assert (=> b!4345074 m!4951893))

(check-sat (not start!419364) (not b!4345075) (not b!4345068) (not b!4345067) (not b!4345070) tp_is_empty!24947 (not b!4345073) (not b!4345065) (not b!4345076) (not b!4345066) (not b!4345074) (not b!4345069) tp_is_empty!24945 (not b!4345063) (not b!4345064) (not b!4345071))
(check-sat)
