; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!449032 () Bool)

(assert start!449032)

(declare-fun bs!864502 () Bool)

(declare-fun b!4529084 () Bool)

(assert (= bs!864502 (and b!4529084 start!449032)))

(declare-fun lambda!174062 () Int)

(declare-fun lambda!174061 () Int)

(assert (=> bs!864502 (not (= lambda!174062 lambda!174061))))

(assert (=> b!4529084 true))

(assert (=> b!4529084 true))

(assert (=> b!4529084 true))

(declare-fun b!4529073 () Bool)

(declare-fun res!1886018 () Bool)

(declare-fun e!2822010 () Bool)

(assert (=> b!4529073 (=> res!1886018 e!2822010)))

(declare-datatypes ((K!12080 0))(
  ( (K!12081 (val!17935 Int)) )
))
(declare-datatypes ((V!12326 0))(
  ( (V!12327 (val!17936 Int)) )
))
(declare-datatypes ((tuple2!51138 0))(
  ( (tuple2!51139 (_1!28863 K!12080) (_2!28863 V!12326)) )
))
(declare-datatypes ((List!50816 0))(
  ( (Nil!50692) (Cons!50692 (h!56559 tuple2!51138) (t!357778 List!50816)) )
))
(declare-datatypes ((tuple2!51140 0))(
  ( (tuple2!51141 (_1!28864 (_ BitVec 64)) (_2!28864 List!50816)) )
))
(declare-fun lt!1704832 () tuple2!51140)

(declare-fun hash!344 () (_ BitVec 64))

(assert (=> b!4529073 (= res!1886018 (bvsge (_1!28864 lt!1704832) hash!344))))

(declare-fun b!4529074 () Bool)

(declare-fun e!2822009 () Bool)

(declare-fun e!2822008 () Bool)

(assert (=> b!4529074 (= e!2822009 e!2822008)))

(declare-fun res!1886022 () Bool)

(assert (=> b!4529074 (=> res!1886022 e!2822008)))

(declare-fun lt!1704806 () Bool)

(assert (=> b!4529074 (= res!1886022 lt!1704806)))

(declare-datatypes ((Unit!96554 0))(
  ( (Unit!96555) )
))
(declare-fun lt!1704813 () Unit!96554)

(declare-fun e!2822011 () Unit!96554)

(assert (=> b!4529074 (= lt!1704813 e!2822011)))

(declare-fun c!773263 () Bool)

(assert (=> b!4529074 (= c!773263 lt!1704806)))

(declare-fun lt!1704803 () List!50816)

(declare-fun key!3287 () K!12080)

(declare-fun containsKey!1824 (List!50816 K!12080) Bool)

(assert (=> b!4529074 (= lt!1704806 (not (containsKey!1824 lt!1704803 key!3287)))))

(declare-fun b!4529075 () Bool)

(declare-fun e!2822013 () Unit!96554)

(declare-fun Unit!96556 () Unit!96554)

(assert (=> b!4529075 (= e!2822013 Unit!96556)))

(declare-fun b!4529076 () Bool)

(declare-fun e!2822004 () Bool)

(declare-fun e!2822005 () Bool)

(assert (=> b!4529076 (= e!2822004 e!2822005)))

(declare-fun res!1886015 () Bool)

(assert (=> b!4529076 (=> res!1886015 e!2822005)))

(declare-datatypes ((ListMap!3621 0))(
  ( (ListMap!3622 (toList!4359 List!50816)) )
))
(declare-fun lt!1704814 () ListMap!3621)

(declare-fun lt!1704812 () ListMap!3621)

(declare-fun eq!633 (ListMap!3621 ListMap!3621) Bool)

(assert (=> b!4529076 (= res!1886015 (not (eq!633 lt!1704814 lt!1704812)))))

(declare-fun lt!1704807 () ListMap!3621)

(assert (=> b!4529076 (eq!633 lt!1704807 lt!1704812)))

(declare-fun lt!1704831 () ListMap!3621)

(declare-fun addToMapMapFromBucket!703 (List!50816 ListMap!3621) ListMap!3621)

(assert (=> b!4529076 (= lt!1704812 (addToMapMapFromBucket!703 (_2!28864 lt!1704832) lt!1704831))))

(declare-fun lt!1704805 () Unit!96554)

(declare-fun lt!1704823 () ListMap!3621)

(declare-fun lemmaAddToMapFromBucketPreservesEquivalence!52 (ListMap!3621 ListMap!3621 List!50816) Unit!96554)

(assert (=> b!4529076 (= lt!1704805 (lemmaAddToMapFromBucketPreservesEquivalence!52 lt!1704823 lt!1704831 (_2!28864 lt!1704832)))))

(declare-fun b!4529077 () Bool)

(declare-fun e!2822018 () Bool)

(assert (=> b!4529077 (= e!2822018 e!2822010)))

(declare-fun res!1886025 () Bool)

(assert (=> b!4529077 (=> res!1886025 e!2822010)))

(declare-fun lt!1704817 () ListMap!3621)

(declare-fun lt!1704815 () ListMap!3621)

(assert (=> b!4529077 (= res!1886025 (not (eq!633 lt!1704817 lt!1704815)))))

(declare-datatypes ((List!50817 0))(
  ( (Nil!50693) (Cons!50693 (h!56560 tuple2!51140) (t!357779 List!50817)) )
))
(declare-datatypes ((ListLongMap!2991 0))(
  ( (ListLongMap!2992 (toList!4360 List!50817)) )
))
(declare-fun lt!1704804 () ListLongMap!2991)

(declare-fun extractMap!1232 (List!50817) ListMap!3621)

(declare-fun +!1568 (ListLongMap!2991 tuple2!51140) ListLongMap!2991)

(assert (=> b!4529077 (= lt!1704817 (extractMap!1232 (toList!4360 (+!1568 lt!1704804 lt!1704832))))))

(declare-fun lm!1477 () ListLongMap!2991)

(declare-fun head!9442 (ListLongMap!2991) tuple2!51140)

(assert (=> b!4529077 (= lt!1704832 (head!9442 lm!1477))))

(assert (=> b!4529077 (eq!633 lt!1704823 lt!1704831)))

(declare-fun lt!1704816 () ListMap!3621)

(declare-fun -!402 (ListMap!3621 K!12080) ListMap!3621)

(assert (=> b!4529077 (= lt!1704831 (-!402 lt!1704816 key!3287))))

(declare-fun lt!1704828 () ListLongMap!2991)

(assert (=> b!4529077 (= lt!1704823 (extractMap!1232 (toList!4360 lt!1704828)))))

(declare-fun lt!1704809 () tuple2!51140)

(assert (=> b!4529077 (= lt!1704828 (+!1568 lt!1704804 lt!1704809))))

(declare-fun newBucket!178 () List!50816)

(assert (=> b!4529077 (= lt!1704809 (tuple2!51141 hash!344 newBucket!178))))

(declare-datatypes ((Hashable!5571 0))(
  ( (HashableExt!5570 (__x!31274 Int)) )
))
(declare-fun hashF!1107 () Hashable!5571)

(declare-fun lt!1704820 () Unit!96554)

(declare-fun lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMap!161 (ListLongMap!2991 (_ BitVec 64) List!50816 K!12080 Hashable!5571) Unit!96554)

(assert (=> b!4529077 (= lt!1704820 (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMap!161 lt!1704804 hash!344 newBucket!178 key!3287 hashF!1107))))

(declare-fun b!4529078 () Bool)

(declare-fun e!2822007 () Bool)

(declare-fun e!2822014 () Bool)

(assert (=> b!4529078 (= e!2822007 e!2822014)))

(declare-fun res!1886008 () Bool)

(assert (=> b!4529078 (=> (not res!1886008) (not e!2822014))))

(declare-fun lt!1704810 () (_ BitVec 64))

(assert (=> b!4529078 (= res!1886008 (= lt!1704810 hash!344))))

(declare-fun hash!2859 (Hashable!5571 K!12080) (_ BitVec 64))

(assert (=> b!4529078 (= lt!1704810 (hash!2859 hashF!1107 key!3287))))

(declare-fun b!4529079 () Bool)

(declare-fun e!2822006 () Bool)

(assert (=> b!4529079 (= e!2822006 e!2822009)))

(declare-fun res!1886028 () Bool)

(assert (=> b!4529079 (=> res!1886028 e!2822009)))

(declare-fun contains!13447 (ListLongMap!2991 (_ BitVec 64)) Bool)

(assert (=> b!4529079 (= res!1886028 (not (contains!13447 lt!1704804 hash!344)))))

(declare-fun tail!7764 (ListLongMap!2991) ListLongMap!2991)

(assert (=> b!4529079 (= lt!1704804 (tail!7764 lm!1477))))

(declare-fun b!4529080 () Bool)

(declare-fun e!2822015 () Bool)

(assert (=> b!4529080 (= e!2822015 e!2822018)))

(declare-fun res!1886009 () Bool)

(assert (=> b!4529080 (=> res!1886009 e!2822018)))

(declare-fun contains!13448 (ListMap!3621 K!12080) Bool)

(assert (=> b!4529080 (= res!1886009 (not (contains!13448 (extractMap!1232 (t!357779 (toList!4360 lm!1477))) key!3287)))))

(assert (=> b!4529080 (contains!13448 lt!1704816 key!3287)))

(assert (=> b!4529080 (= lt!1704816 (extractMap!1232 (toList!4360 lt!1704804)))))

(declare-fun lt!1704819 () Unit!96554)

(declare-fun lemmaListContainsThenExtractedMapContains!146 (ListLongMap!2991 K!12080 Hashable!5571) Unit!96554)

(assert (=> b!4529080 (= lt!1704819 (lemmaListContainsThenExtractedMapContains!146 lt!1704804 key!3287 hashF!1107))))

(declare-fun b!4529081 () Bool)

(declare-fun res!1886026 () Bool)

(assert (=> b!4529081 (=> res!1886026 e!2822009)))

(declare-fun apply!11913 (ListLongMap!2991 (_ BitVec 64)) List!50816)

(assert (=> b!4529081 (= res!1886026 (not (= (apply!11913 lt!1704804 hash!344) lt!1704803)))))

(declare-fun b!4529082 () Bool)

(declare-fun e!2822016 () Bool)

(assert (=> b!4529082 (= e!2822016 e!2822007)))

(declare-fun res!1886011 () Bool)

(assert (=> b!4529082 (=> (not res!1886011) (not e!2822007))))

(assert (=> b!4529082 (= res!1886011 (contains!13448 lt!1704815 key!3287))))

(assert (=> b!4529082 (= lt!1704815 (extractMap!1232 (toList!4360 lm!1477)))))

(declare-fun b!4529083 () Bool)

(declare-fun e!2822019 () Bool)

(assert (=> b!4529083 (= e!2822010 e!2822019)))

(declare-fun res!1886012 () Bool)

(assert (=> b!4529083 (=> res!1886012 e!2822019)))

(declare-fun lt!1704818 () ListLongMap!2991)

(assert (=> b!4529083 (= res!1886012 (not (= lt!1704818 (+!1568 lm!1477 lt!1704809))))))

(assert (=> b!4529083 (= lt!1704818 (+!1568 lt!1704828 lt!1704832))))

(declare-fun Unit!96557 () Unit!96554)

(assert (=> b!4529084 (= e!2822013 Unit!96557)))

(assert (=> b!4529084 (not (= hash!344 (_1!28864 lt!1704832)))))

(declare-datatypes ((Option!11151 0))(
  ( (None!11150) (Some!11150 (v!44796 tuple2!51138)) )
))
(declare-fun lt!1704825 () Option!11151)

(declare-fun getPair!192 (List!50816 K!12080) Option!11151)

(assert (=> b!4529084 (= lt!1704825 (getPair!192 (_2!28864 lt!1704832) key!3287))))

(declare-fun lt!1704824 () Unit!96554)

(declare-fun forallContained!2554 (List!50817 Int tuple2!51140) Unit!96554)

(assert (=> b!4529084 (= lt!1704824 (forallContained!2554 (toList!4360 lm!1477) lambda!174062 (h!56560 (toList!4360 lm!1477))))))

(declare-fun lt!1704826 () Unit!96554)

(declare-fun lambda!174063 () Int)

(declare-fun forallContained!2555 (List!50816 Int tuple2!51138) Unit!96554)

(declare-fun get!16630 (Option!11151) tuple2!51138)

(assert (=> b!4529084 (= lt!1704826 (forallContained!2555 (_2!28864 (h!56560 (toList!4360 lm!1477))) lambda!174063 (tuple2!51139 key!3287 (_2!28863 (get!16630 lt!1704825)))))))

(assert (=> b!4529084 false))

(declare-fun b!4529085 () Bool)

(declare-fun res!1886013 () Bool)

(assert (=> b!4529085 (=> res!1886013 e!2822006)))

(get-info :version)

(assert (=> b!4529085 (= res!1886013 (or ((_ is Nil!50693) (toList!4360 lm!1477)) (= (_1!28864 (h!56560 (toList!4360 lm!1477))) hash!344)))))

(declare-fun b!4529086 () Bool)

(declare-fun res!1886014 () Bool)

(assert (=> b!4529086 (=> res!1886014 e!2822010)))

(assert (=> b!4529086 (= res!1886014 (not (eq!633 lt!1704815 lt!1704817)))))

(declare-fun b!4529087 () Bool)

(assert (=> b!4529087 (= e!2822019 e!2822004)))

(declare-fun res!1886016 () Bool)

(assert (=> b!4529087 (=> res!1886016 e!2822004)))

(assert (=> b!4529087 (= res!1886016 (not (eq!633 lt!1704814 lt!1704807)))))

(assert (=> b!4529087 (= lt!1704807 (addToMapMapFromBucket!703 (_2!28864 lt!1704832) lt!1704823))))

(assert (=> b!4529087 (= lt!1704814 (extractMap!1232 (toList!4360 lt!1704818)))))

(declare-fun b!4529088 () Bool)

(declare-fun e!2822012 () Bool)

(declare-fun tp!1338334 () Bool)

(assert (=> b!4529088 (= e!2822012 tp!1338334)))

(declare-fun b!4529089 () Bool)

(assert (=> b!4529089 (= e!2822014 (not e!2822006))))

(declare-fun res!1886010 () Bool)

(assert (=> b!4529089 (=> res!1886010 e!2822006)))

(declare-fun removePairForKey!803 (List!50816 K!12080) List!50816)

(assert (=> b!4529089 (= res!1886010 (not (= newBucket!178 (removePairForKey!803 lt!1704803 key!3287))))))

(declare-fun lt!1704802 () tuple2!51140)

(declare-fun lt!1704829 () Unit!96554)

(assert (=> b!4529089 (= lt!1704829 (forallContained!2554 (toList!4360 lm!1477) lambda!174061 lt!1704802))))

(declare-fun contains!13449 (List!50817 tuple2!51140) Bool)

(assert (=> b!4529089 (contains!13449 (toList!4360 lm!1477) lt!1704802)))

(assert (=> b!4529089 (= lt!1704802 (tuple2!51141 hash!344 lt!1704803))))

(declare-fun lt!1704811 () Unit!96554)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!688 (List!50817 (_ BitVec 64) List!50816) Unit!96554)

(assert (=> b!4529089 (= lt!1704811 (lemmaGetValueByKeyImpliesContainsTuple!688 (toList!4360 lm!1477) hash!344 lt!1704803))))

(assert (=> b!4529089 (= lt!1704803 (apply!11913 lm!1477 hash!344))))

(assert (=> b!4529089 (contains!13447 lm!1477 lt!1704810)))

(declare-fun lt!1704827 () Unit!96554)

(declare-fun lemmaInGenMapThenLongMapContainsHash!250 (ListLongMap!2991 K!12080 Hashable!5571) Unit!96554)

(assert (=> b!4529089 (= lt!1704827 (lemmaInGenMapThenLongMapContainsHash!250 lm!1477 key!3287 hashF!1107))))

(declare-fun b!4529090 () Bool)

(declare-fun Unit!96558 () Unit!96554)

(assert (=> b!4529090 (= e!2822011 Unit!96558)))

(declare-fun lt!1704822 () Unit!96554)

(declare-fun lemmaNotInItsHashBucketThenNotInMap!164 (ListLongMap!2991 K!12080 Hashable!5571) Unit!96554)

(assert (=> b!4529090 (= lt!1704822 (lemmaNotInItsHashBucketThenNotInMap!164 lm!1477 key!3287 hashF!1107))))

(assert (=> b!4529090 false))

(declare-fun b!4529091 () Bool)

(declare-fun res!1886020 () Bool)

(assert (=> b!4529091 (=> res!1886020 e!2822019)))

(assert (=> b!4529091 (= res!1886020 (not (= (head!9442 lt!1704818) lt!1704832)))))

(declare-fun b!4529092 () Bool)

(declare-fun e!2822003 () Bool)

(assert (=> b!4529092 (= e!2822005 e!2822003)))

(declare-fun res!1886017 () Bool)

(assert (=> b!4529092 (=> res!1886017 e!2822003)))

(declare-fun noDuplicateKeys!1176 (List!50816) Bool)

(assert (=> b!4529092 (= res!1886017 (not (noDuplicateKeys!1176 (_2!28864 lt!1704832))))))

(declare-fun lt!1704821 () Unit!96554)

(assert (=> b!4529092 (= lt!1704821 (forallContained!2554 (toList!4360 lm!1477) lambda!174061 (h!56560 (toList!4360 lm!1477))))))

(declare-fun b!4529093 () Bool)

(declare-fun res!1886027 () Bool)

(assert (=> b!4529093 (=> (not res!1886027) (not e!2822014))))

(declare-fun allKeysSameHash!1030 (List!50816 (_ BitVec 64) Hashable!5571) Bool)

(assert (=> b!4529093 (= res!1886027 (allKeysSameHash!1030 newBucket!178 hash!344 hashF!1107))))

(declare-fun tp_is_empty!27981 () Bool)

(declare-fun tp_is_empty!27983 () Bool)

(declare-fun e!2822017 () Bool)

(declare-fun tp!1338335 () Bool)

(declare-fun b!4529094 () Bool)

(assert (=> b!4529094 (= e!2822017 (and tp_is_empty!27981 tp_is_empty!27983 tp!1338335))))

(declare-fun b!4529095 () Bool)

(declare-fun res!1886021 () Bool)

(assert (=> b!4529095 (=> res!1886021 e!2822009)))

(assert (=> b!4529095 (= res!1886021 (not (contains!13449 (t!357779 (toList!4360 lm!1477)) lt!1704802)))))

(declare-fun b!4529096 () Bool)

(declare-fun Unit!96559 () Unit!96554)

(assert (=> b!4529096 (= e!2822011 Unit!96559)))

(declare-fun b!4529097 () Bool)

(declare-fun res!1886007 () Bool)

(assert (=> b!4529097 (=> (not res!1886007) (not e!2822016))))

(declare-fun allKeysSameHashInMap!1283 (ListLongMap!2991 Hashable!5571) Bool)

(assert (=> b!4529097 (= res!1886007 (allKeysSameHashInMap!1283 lm!1477 hashF!1107))))

(declare-fun res!1886024 () Bool)

(assert (=> start!449032 (=> (not res!1886024) (not e!2822016))))

(declare-fun forall!10301 (List!50817 Int) Bool)

(assert (=> start!449032 (= res!1886024 (forall!10301 (toList!4360 lm!1477) lambda!174061))))

(assert (=> start!449032 e!2822016))

(assert (=> start!449032 true))

(declare-fun inv!66264 (ListLongMap!2991) Bool)

(assert (=> start!449032 (and (inv!66264 lm!1477) e!2822012)))

(assert (=> start!449032 tp_is_empty!27981))

(assert (=> start!449032 e!2822017))

(declare-fun b!4529098 () Bool)

(declare-fun res!1886023 () Bool)

(assert (=> b!4529098 (=> res!1886023 e!2822006)))

(assert (=> b!4529098 (= res!1886023 (not (noDuplicateKeys!1176 newBucket!178)))))

(declare-fun b!4529099 () Bool)

(assert (=> b!4529099 (= e!2822008 e!2822015)))

(declare-fun res!1886019 () Bool)

(assert (=> b!4529099 (=> res!1886019 e!2822015)))

(declare-fun containsKeyBiggerList!156 (List!50817 K!12080) Bool)

(assert (=> b!4529099 (= res!1886019 (not (containsKeyBiggerList!156 (t!357779 (toList!4360 lm!1477)) key!3287)))))

(assert (=> b!4529099 (containsKeyBiggerList!156 (toList!4360 lt!1704804) key!3287)))

(declare-fun lt!1704830 () Unit!96554)

(declare-fun lemmaInLongMapThenContainsKeyBiggerList!92 (ListLongMap!2991 K!12080 Hashable!5571) Unit!96554)

(assert (=> b!4529099 (= lt!1704830 (lemmaInLongMapThenContainsKeyBiggerList!92 lt!1704804 key!3287 hashF!1107))))

(declare-fun b!4529100 () Bool)

(assert (=> b!4529100 (= e!2822003 true)))

(declare-fun lt!1704808 () Unit!96554)

(assert (=> b!4529100 (= lt!1704808 e!2822013)))

(declare-fun c!773262 () Bool)

(assert (=> b!4529100 (= c!773262 (containsKey!1824 (_2!28864 lt!1704832) key!3287))))

(assert (= (and start!449032 res!1886024) b!4529097))

(assert (= (and b!4529097 res!1886007) b!4529082))

(assert (= (and b!4529082 res!1886011) b!4529078))

(assert (= (and b!4529078 res!1886008) b!4529093))

(assert (= (and b!4529093 res!1886027) b!4529089))

(assert (= (and b!4529089 (not res!1886010)) b!4529098))

(assert (= (and b!4529098 (not res!1886023)) b!4529085))

(assert (= (and b!4529085 (not res!1886013)) b!4529079))

(assert (= (and b!4529079 (not res!1886028)) b!4529081))

(assert (= (and b!4529081 (not res!1886026)) b!4529095))

(assert (= (and b!4529095 (not res!1886021)) b!4529074))

(assert (= (and b!4529074 c!773263) b!4529090))

(assert (= (and b!4529074 (not c!773263)) b!4529096))

(assert (= (and b!4529074 (not res!1886022)) b!4529099))

(assert (= (and b!4529099 (not res!1886019)) b!4529080))

(assert (= (and b!4529080 (not res!1886009)) b!4529077))

(assert (= (and b!4529077 (not res!1886025)) b!4529086))

(assert (= (and b!4529086 (not res!1886014)) b!4529073))

(assert (= (and b!4529073 (not res!1886018)) b!4529083))

(assert (= (and b!4529083 (not res!1886012)) b!4529091))

(assert (= (and b!4529091 (not res!1886020)) b!4529087))

(assert (= (and b!4529087 (not res!1886016)) b!4529076))

(assert (= (and b!4529076 (not res!1886015)) b!4529092))

(assert (= (and b!4529092 (not res!1886017)) b!4529100))

(assert (= (and b!4529100 c!773262) b!4529084))

(assert (= (and b!4529100 (not c!773262)) b!4529075))

(assert (= start!449032 b!4529088))

(assert (= (and start!449032 ((_ is Cons!50692) newBucket!178)) b!4529094))

(declare-fun m!5284843 () Bool)

(assert (=> b!4529098 m!5284843))

(declare-fun m!5284845 () Bool)

(assert (=> b!4529079 m!5284845))

(declare-fun m!5284847 () Bool)

(assert (=> b!4529079 m!5284847))

(declare-fun m!5284849 () Bool)

(assert (=> start!449032 m!5284849))

(declare-fun m!5284851 () Bool)

(assert (=> start!449032 m!5284851))

(declare-fun m!5284853 () Bool)

(assert (=> b!4529078 m!5284853))

(declare-fun m!5284855 () Bool)

(assert (=> b!4529076 m!5284855))

(declare-fun m!5284857 () Bool)

(assert (=> b!4529076 m!5284857))

(declare-fun m!5284859 () Bool)

(assert (=> b!4529076 m!5284859))

(declare-fun m!5284861 () Bool)

(assert (=> b!4529076 m!5284861))

(declare-fun m!5284863 () Bool)

(assert (=> b!4529086 m!5284863))

(declare-fun m!5284865 () Bool)

(assert (=> b!4529091 m!5284865))

(declare-fun m!5284867 () Bool)

(assert (=> b!4529089 m!5284867))

(declare-fun m!5284869 () Bool)

(assert (=> b!4529089 m!5284869))

(declare-fun m!5284871 () Bool)

(assert (=> b!4529089 m!5284871))

(declare-fun m!5284873 () Bool)

(assert (=> b!4529089 m!5284873))

(declare-fun m!5284875 () Bool)

(assert (=> b!4529089 m!5284875))

(declare-fun m!5284877 () Bool)

(assert (=> b!4529089 m!5284877))

(declare-fun m!5284879 () Bool)

(assert (=> b!4529089 m!5284879))

(declare-fun m!5284881 () Bool)

(assert (=> b!4529074 m!5284881))

(declare-fun m!5284883 () Bool)

(assert (=> b!4529097 m!5284883))

(declare-fun m!5284885 () Bool)

(assert (=> b!4529080 m!5284885))

(declare-fun m!5284887 () Bool)

(assert (=> b!4529080 m!5284887))

(declare-fun m!5284889 () Bool)

(assert (=> b!4529080 m!5284889))

(declare-fun m!5284891 () Bool)

(assert (=> b!4529080 m!5284891))

(assert (=> b!4529080 m!5284889))

(declare-fun m!5284893 () Bool)

(assert (=> b!4529080 m!5284893))

(declare-fun m!5284895 () Bool)

(assert (=> b!4529095 m!5284895))

(declare-fun m!5284897 () Bool)

(assert (=> b!4529092 m!5284897))

(declare-fun m!5284899 () Bool)

(assert (=> b!4529092 m!5284899))

(declare-fun m!5284901 () Bool)

(assert (=> b!4529087 m!5284901))

(declare-fun m!5284903 () Bool)

(assert (=> b!4529087 m!5284903))

(declare-fun m!5284905 () Bool)

(assert (=> b!4529087 m!5284905))

(declare-fun m!5284907 () Bool)

(assert (=> b!4529084 m!5284907))

(declare-fun m!5284909 () Bool)

(assert (=> b!4529084 m!5284909))

(declare-fun m!5284911 () Bool)

(assert (=> b!4529084 m!5284911))

(declare-fun m!5284913 () Bool)

(assert (=> b!4529084 m!5284913))

(declare-fun m!5284915 () Bool)

(assert (=> b!4529082 m!5284915))

(declare-fun m!5284917 () Bool)

(assert (=> b!4529082 m!5284917))

(declare-fun m!5284919 () Bool)

(assert (=> b!4529077 m!5284919))

(declare-fun m!5284921 () Bool)

(assert (=> b!4529077 m!5284921))

(declare-fun m!5284923 () Bool)

(assert (=> b!4529077 m!5284923))

(declare-fun m!5284925 () Bool)

(assert (=> b!4529077 m!5284925))

(declare-fun m!5284927 () Bool)

(assert (=> b!4529077 m!5284927))

(declare-fun m!5284929 () Bool)

(assert (=> b!4529077 m!5284929))

(declare-fun m!5284931 () Bool)

(assert (=> b!4529077 m!5284931))

(declare-fun m!5284933 () Bool)

(assert (=> b!4529077 m!5284933))

(declare-fun m!5284935 () Bool)

(assert (=> b!4529077 m!5284935))

(declare-fun m!5284937 () Bool)

(assert (=> b!4529100 m!5284937))

(declare-fun m!5284939 () Bool)

(assert (=> b!4529090 m!5284939))

(declare-fun m!5284941 () Bool)

(assert (=> b!4529083 m!5284941))

(declare-fun m!5284943 () Bool)

(assert (=> b!4529083 m!5284943))

(declare-fun m!5284945 () Bool)

(assert (=> b!4529099 m!5284945))

(declare-fun m!5284947 () Bool)

(assert (=> b!4529099 m!5284947))

(declare-fun m!5284949 () Bool)

(assert (=> b!4529099 m!5284949))

(declare-fun m!5284951 () Bool)

(assert (=> b!4529081 m!5284951))

(declare-fun m!5284953 () Bool)

(assert (=> b!4529093 m!5284953))

(check-sat (not b!4529089) (not b!4529092) (not b!4529083) (not b!4529078) (not b!4529080) (not b!4529098) (not b!4529084) (not b!4529088) (not b!4529087) (not b!4529079) (not b!4529093) (not b!4529074) (not start!449032) (not b!4529097) (not b!4529090) (not b!4529099) (not b!4529091) (not b!4529095) (not b!4529094) (not b!4529086) (not b!4529081) tp_is_empty!27981 (not b!4529082) (not b!4529100) tp_is_empty!27983 (not b!4529077) (not b!4529076))
(check-sat)
