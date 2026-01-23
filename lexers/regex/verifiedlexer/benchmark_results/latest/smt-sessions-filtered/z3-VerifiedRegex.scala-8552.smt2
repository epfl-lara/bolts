; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!451212 () Bool)

(assert start!451212)

(declare-fun bs!879679 () Bool)

(declare-fun b!4543138 () Bool)

(assert (= bs!879679 (and b!4543138 start!451212)))

(declare-fun lambda!176836 () Int)

(declare-fun lambda!176835 () Int)

(assert (=> bs!879679 (not (= lambda!176836 lambda!176835))))

(assert (=> b!4543138 true))

(assert (=> b!4543138 true))

(assert (=> b!4543138 true))

(declare-fun b!4543121 () Bool)

(declare-fun res!1893933 () Bool)

(declare-fun e!2831135 () Bool)

(assert (=> b!4543121 (=> res!1893933 e!2831135)))

(declare-datatypes ((K!12165 0))(
  ( (K!12166 (val!18003 Int)) )
))
(declare-datatypes ((V!12411 0))(
  ( (V!12412 (val!18004 Int)) )
))
(declare-datatypes ((tuple2!51274 0))(
  ( (tuple2!51275 (_1!28931 K!12165) (_2!28931 V!12411)) )
))
(declare-datatypes ((List!50906 0))(
  ( (Nil!50782) (Cons!50782 (h!56671 tuple2!51274) (t!357868 List!50906)) )
))
(declare-datatypes ((tuple2!51276 0))(
  ( (tuple2!51277 (_1!28932 (_ BitVec 64)) (_2!28932 List!50906)) )
))
(declare-datatypes ((List!50907 0))(
  ( (Nil!50783) (Cons!50783 (h!56672 tuple2!51276) (t!357869 List!50907)) )
))
(declare-datatypes ((ListLongMap!3059 0))(
  ( (ListLongMap!3060 (toList!4427 List!50907)) )
))
(declare-fun lm!1477 () ListLongMap!3059)

(declare-fun lt!1717896 () tuple2!51276)

(declare-fun contains!13593 (List!50907 tuple2!51276) Bool)

(assert (=> b!4543121 (= res!1893933 (not (contains!13593 (t!357869 (toList!4427 lm!1477)) lt!1717896)))))

(declare-fun b!4543122 () Bool)

(declare-datatypes ((Unit!99004 0))(
  ( (Unit!99005) )
))
(declare-fun e!2831137 () Unit!99004)

(declare-fun Unit!99006 () Unit!99004)

(assert (=> b!4543122 (= e!2831137 Unit!99006)))

(declare-fun b!4543123 () Bool)

(declare-fun e!2831139 () Bool)

(assert (=> b!4543123 (= e!2831139 e!2831135)))

(declare-fun res!1893928 () Bool)

(assert (=> b!4543123 (=> res!1893928 e!2831135)))

(declare-fun lt!1717913 () ListLongMap!3059)

(declare-fun hash!344 () (_ BitVec 64))

(declare-fun contains!13594 (ListLongMap!3059 (_ BitVec 64)) Bool)

(assert (=> b!4543123 (= res!1893928 (not (contains!13594 lt!1717913 hash!344)))))

(declare-fun tail!7820 (ListLongMap!3059) ListLongMap!3059)

(assert (=> b!4543123 (= lt!1717913 (tail!7820 lm!1477))))

(declare-fun b!4543124 () Bool)

(declare-fun e!2831134 () Bool)

(declare-fun e!2831131 () Bool)

(assert (=> b!4543124 (= e!2831134 e!2831131)))

(declare-fun res!1893926 () Bool)

(assert (=> b!4543124 (=> res!1893926 e!2831131)))

(declare-fun lt!1717910 () ListLongMap!3059)

(declare-fun lt!1717902 () ListLongMap!3059)

(assert (=> b!4543124 (= res!1893926 (not (= lt!1717910 lt!1717902)))))

(declare-fun lt!1717919 () tuple2!51276)

(declare-fun +!1624 (ListLongMap!3059 tuple2!51276) ListLongMap!3059)

(assert (=> b!4543124 (= lt!1717902 (+!1624 lm!1477 lt!1717919))))

(declare-fun lt!1717911 () ListLongMap!3059)

(declare-fun lt!1717886 () tuple2!51276)

(assert (=> b!4543124 (= lt!1717910 (+!1624 lt!1717911 lt!1717886))))

(declare-fun b!4543125 () Bool)

(declare-fun e!2831133 () Unit!99004)

(declare-fun Unit!99007 () Unit!99004)

(assert (=> b!4543125 (= e!2831133 Unit!99007)))

(declare-datatypes ((Hashable!5605 0))(
  ( (HashableExt!5604 (__x!31308 Int)) )
))
(declare-fun hashF!1107 () Hashable!5605)

(declare-fun key!3287 () K!12165)

(declare-fun lt!1717897 () Unit!99004)

(declare-fun lemmaNotInItsHashBucketThenNotInMap!198 (ListLongMap!3059 K!12165 Hashable!5605) Unit!99004)

(assert (=> b!4543125 (= lt!1717897 (lemmaNotInItsHashBucketThenNotInMap!198 lm!1477 key!3287 hashF!1107))))

(assert (=> b!4543125 false))

(declare-fun b!4543126 () Bool)

(declare-fun e!2831126 () Bool)

(assert (=> b!4543126 (= e!2831135 e!2831126)))

(declare-fun res!1893907 () Bool)

(assert (=> b!4543126 (=> res!1893907 e!2831126)))

(declare-fun lt!1717917 () Bool)

(assert (=> b!4543126 (= res!1893907 lt!1717917)))

(declare-fun lt!1717908 () Unit!99004)

(assert (=> b!4543126 (= lt!1717908 e!2831133)))

(declare-fun c!775946 () Bool)

(assert (=> b!4543126 (= c!775946 lt!1717917)))

(declare-fun lt!1717903 () List!50906)

(declare-fun containsKey!1902 (List!50906 K!12165) Bool)

(assert (=> b!4543126 (= lt!1717917 (not (containsKey!1902 lt!1717903 key!3287)))))

(declare-fun b!4543127 () Bool)

(declare-fun e!2831143 () Bool)

(declare-fun e!2831136 () Bool)

(assert (=> b!4543127 (= e!2831143 e!2831136)))

(declare-fun res!1893914 () Bool)

(assert (=> b!4543127 (=> (not res!1893914) (not e!2831136))))

(declare-fun lt!1717900 () (_ BitVec 64))

(assert (=> b!4543127 (= res!1893914 (= lt!1717900 hash!344))))

(declare-fun hash!2945 (Hashable!5605 K!12165) (_ BitVec 64))

(assert (=> b!4543127 (= lt!1717900 (hash!2945 hashF!1107 key!3287))))

(declare-fun b!4543128 () Bool)

(declare-fun e!2831141 () Bool)

(declare-fun e!2831142 () Bool)

(assert (=> b!4543128 (= e!2831141 e!2831142)))

(declare-fun res!1893908 () Bool)

(assert (=> b!4543128 (=> res!1893908 e!2831142)))

(declare-fun lt!1717918 () Bool)

(assert (=> b!4543128 (= res!1893908 lt!1717918)))

(declare-fun lt!1717901 () Unit!99004)

(assert (=> b!4543128 (= lt!1717901 e!2831137)))

(declare-fun c!775947 () Bool)

(assert (=> b!4543128 (= c!775947 lt!1717918)))

(assert (=> b!4543128 (= lt!1717918 (containsKey!1902 (_2!28932 lt!1717886) key!3287))))

(declare-fun b!4543129 () Bool)

(declare-fun e!2831127 () Bool)

(declare-fun e!2831128 () Bool)

(assert (=> b!4543129 (= e!2831127 e!2831128)))

(declare-fun res!1893923 () Bool)

(assert (=> b!4543129 (=> res!1893923 e!2831128)))

(declare-datatypes ((ListMap!3689 0))(
  ( (ListMap!3690 (toList!4428 List!50906)) )
))
(declare-fun lt!1717895 () ListMap!3689)

(declare-fun lt!1717920 () ListMap!3689)

(declare-fun eq!667 (ListMap!3689 ListMap!3689) Bool)

(assert (=> b!4543129 (= res!1893923 (not (eq!667 lt!1717895 lt!1717920)))))

(declare-fun lt!1717916 () ListMap!3689)

(declare-fun -!436 (ListMap!3689 K!12165) ListMap!3689)

(assert (=> b!4543129 (= lt!1717920 (-!436 lt!1717916 key!3287))))

(declare-fun b!4543130 () Bool)

(declare-fun Unit!99008 () Unit!99004)

(assert (=> b!4543130 (= e!2831133 Unit!99008)))

(declare-fun b!4543131 () Bool)

(declare-fun res!1893915 () Bool)

(assert (=> b!4543131 (=> res!1893915 e!2831134)))

(declare-fun lt!1717891 () ListMap!3689)

(assert (=> b!4543131 (= res!1893915 (not (eq!667 lt!1717916 lt!1717891)))))

(declare-fun res!1893932 () Bool)

(declare-fun e!2831140 () Bool)

(assert (=> start!451212 (=> (not res!1893932) (not e!2831140))))

(declare-fun forall!10365 (List!50907 Int) Bool)

(assert (=> start!451212 (= res!1893932 (forall!10365 (toList!4427 lm!1477) lambda!176835))))

(assert (=> start!451212 e!2831140))

(assert (=> start!451212 true))

(declare-fun e!2831132 () Bool)

(declare-fun inv!66349 (ListLongMap!3059) Bool)

(assert (=> start!451212 (and (inv!66349 lm!1477) e!2831132)))

(declare-fun tp_is_empty!28117 () Bool)

(assert (=> start!451212 tp_is_empty!28117))

(declare-fun e!2831125 () Bool)

(assert (=> start!451212 e!2831125))

(declare-fun b!4543132 () Bool)

(declare-fun e!2831124 () Bool)

(declare-fun e!2831138 () Bool)

(assert (=> b!4543132 (= e!2831124 e!2831138)))

(declare-fun res!1893924 () Bool)

(assert (=> b!4543132 (=> res!1893924 e!2831138)))

(declare-fun contains!13595 (ListMap!3689 K!12165) Bool)

(declare-fun extractMap!1266 (List!50907) ListMap!3689)

(assert (=> b!4543132 (= res!1893924 (not (contains!13595 (extractMap!1266 (t!357869 (toList!4427 lm!1477))) key!3287)))))

(declare-fun lt!1717915 () ListMap!3689)

(assert (=> b!4543132 (contains!13595 lt!1717915 key!3287)))

(assert (=> b!4543132 (= lt!1717915 (extractMap!1266 (toList!4427 lt!1717913)))))

(declare-fun lt!1717899 () Unit!99004)

(declare-fun lemmaListContainsThenExtractedMapContains!180 (ListLongMap!3059 K!12165 Hashable!5605) Unit!99004)

(assert (=> b!4543132 (= lt!1717899 (lemmaListContainsThenExtractedMapContains!180 lt!1717913 key!3287 hashF!1107))))

(declare-fun b!4543133 () Bool)

(declare-fun tp!1338768 () Bool)

(assert (=> b!4543133 (= e!2831132 tp!1338768)))

(declare-fun tp_is_empty!28119 () Bool)

(declare-fun b!4543134 () Bool)

(declare-fun tp!1338769 () Bool)

(assert (=> b!4543134 (= e!2831125 (and tp_is_empty!28117 tp_is_empty!28119 tp!1338769))))

(declare-fun b!4543135 () Bool)

(assert (=> b!4543135 (= e!2831140 e!2831143)))

(declare-fun res!1893917 () Bool)

(assert (=> b!4543135 (=> (not res!1893917) (not e!2831143))))

(assert (=> b!4543135 (= res!1893917 (contains!13595 lt!1717916 key!3287))))

(assert (=> b!4543135 (= lt!1717916 (extractMap!1266 (toList!4427 lm!1477)))))

(declare-fun b!4543136 () Bool)

(declare-fun res!1893934 () Bool)

(assert (=> b!4543136 (=> res!1893934 e!2831139)))

(get-info :version)

(assert (=> b!4543136 (= res!1893934 (or ((_ is Nil!50783) (toList!4427 lm!1477)) (= (_1!28932 (h!56672 (toList!4427 lm!1477))) hash!344)))))

(declare-fun b!4543137 () Bool)

(declare-fun res!1893930 () Bool)

(assert (=> b!4543137 (=> res!1893930 e!2831135)))

(declare-fun apply!11947 (ListLongMap!3059 (_ BitVec 64)) List!50906)

(assert (=> b!4543137 (= res!1893930 (not (= (apply!11947 lt!1717913 hash!344) lt!1717903)))))

(declare-fun Unit!99009 () Unit!99004)

(assert (=> b!4543138 (= e!2831137 Unit!99009)))

(assert (=> b!4543138 (not (= hash!344 (_1!28932 lt!1717886)))))

(declare-datatypes ((Option!11229 0))(
  ( (None!11228) (Some!11228 (v!44942 tuple2!51274)) )
))
(declare-fun lt!1717898 () Option!11229)

(declare-fun getPair!226 (List!50906 K!12165) Option!11229)

(assert (=> b!4543138 (= lt!1717898 (getPair!226 (_2!28932 lt!1717886) key!3287))))

(declare-fun lt!1717912 () Unit!99004)

(declare-fun forallContained!2630 (List!50907 Int tuple2!51276) Unit!99004)

(assert (=> b!4543138 (= lt!1717912 (forallContained!2630 (toList!4427 lm!1477) lambda!176836 (h!56672 (toList!4427 lm!1477))))))

(declare-fun lt!1717905 () Unit!99004)

(declare-fun lambda!176837 () Int)

(declare-fun forallContained!2631 (List!50906 Int tuple2!51274) Unit!99004)

(declare-fun get!16711 (Option!11229) tuple2!51274)

(assert (=> b!4543138 (= lt!1717905 (forallContained!2631 (_2!28932 (h!56672 (toList!4427 lm!1477))) lambda!176837 (tuple2!51275 key!3287 (_2!28931 (get!16711 lt!1717898)))))))

(assert (=> b!4543138 false))

(declare-fun b!4543139 () Bool)

(declare-fun res!1893927 () Bool)

(assert (=> b!4543139 (=> res!1893927 e!2831128)))

(declare-fun lt!1717885 () ListMap!3689)

(assert (=> b!4543139 (= res!1893927 (not (eq!667 lt!1717885 (-!436 lt!1717891 key!3287))))))

(declare-fun b!4543140 () Bool)

(assert (=> b!4543140 (= e!2831128 (forall!10365 (toList!4427 lm!1477) lambda!176835))))

(declare-fun b!4543141 () Bool)

(declare-fun res!1893916 () Bool)

(assert (=> b!4543141 (=> res!1893916 e!2831131)))

(declare-fun head!9498 (ListLongMap!3059) tuple2!51276)

(assert (=> b!4543141 (= res!1893916 (not (= (head!9498 lt!1717910) lt!1717886)))))

(declare-fun b!4543142 () Bool)

(assert (=> b!4543142 (= e!2831138 e!2831134)))

(declare-fun res!1893909 () Bool)

(assert (=> b!4543142 (=> res!1893909 e!2831134)))

(assert (=> b!4543142 (= res!1893909 (not (eq!667 lt!1717891 lt!1717916)))))

(assert (=> b!4543142 (= lt!1717891 (extractMap!1266 (toList!4427 (+!1624 lt!1717913 lt!1717886))))))

(assert (=> b!4543142 (= lt!1717886 (head!9498 lm!1477))))

(declare-fun lt!1717894 () ListMap!3689)

(declare-fun lt!1717906 () ListMap!3689)

(assert (=> b!4543142 (eq!667 lt!1717894 lt!1717906)))

(assert (=> b!4543142 (= lt!1717906 (-!436 lt!1717915 key!3287))))

(assert (=> b!4543142 (= lt!1717894 (extractMap!1266 (toList!4427 lt!1717911)))))

(assert (=> b!4543142 (= lt!1717911 (+!1624 lt!1717913 lt!1717919))))

(declare-fun newBucket!178 () List!50906)

(assert (=> b!4543142 (= lt!1717919 (tuple2!51277 hash!344 newBucket!178))))

(declare-fun lt!1717892 () Unit!99004)

(declare-fun lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMap!195 (ListLongMap!3059 (_ BitVec 64) List!50906 K!12165 Hashable!5605) Unit!99004)

(assert (=> b!4543142 (= lt!1717892 (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMap!195 lt!1717913 hash!344 newBucket!178 key!3287 hashF!1107))))

(declare-fun b!4543143 () Bool)

(assert (=> b!4543143 (= e!2831142 e!2831127)))

(declare-fun res!1893919 () Bool)

(assert (=> b!4543143 (=> res!1893919 e!2831127)))

(declare-fun lt!1717890 () ListMap!3689)

(assert (=> b!4543143 (= res!1893919 (not (eq!667 lt!1717895 lt!1717890)))))

(assert (=> b!4543143 (= lt!1717895 lt!1717890)))

(declare-fun addToMapMapFromBucket!737 (List!50906 ListMap!3689) ListMap!3689)

(assert (=> b!4543143 (= lt!1717890 (-!436 (addToMapMapFromBucket!737 (_2!28932 lt!1717886) lt!1717915) key!3287))))

(declare-fun lt!1717907 () Unit!99004)

(declare-fun lemmaAddToMapFromBucketMinusKeyIsCommutative!34 (ListMap!3689 K!12165 List!50906) Unit!99004)

(assert (=> b!4543143 (= lt!1717907 (lemmaAddToMapFromBucketMinusKeyIsCommutative!34 lt!1717915 key!3287 (_2!28932 lt!1717886)))))

(declare-fun b!4543144 () Bool)

(declare-fun res!1893913 () Bool)

(assert (=> b!4543144 (=> (not res!1893913) (not e!2831136))))

(declare-fun allKeysSameHash!1064 (List!50906 (_ BitVec 64) Hashable!5605) Bool)

(assert (=> b!4543144 (= res!1893913 (allKeysSameHash!1064 newBucket!178 hash!344 hashF!1107))))

(declare-fun b!4543145 () Bool)

(declare-fun res!1893911 () Bool)

(assert (=> b!4543145 (=> res!1893911 e!2831128)))

(assert (=> b!4543145 (= res!1893911 (not (eq!667 lt!1717885 lt!1717920)))))

(declare-fun b!4543146 () Bool)

(assert (=> b!4543146 (= e!2831126 e!2831124)))

(declare-fun res!1893925 () Bool)

(assert (=> b!4543146 (=> res!1893925 e!2831124)))

(declare-fun containsKeyBiggerList!190 (List!50907 K!12165) Bool)

(assert (=> b!4543146 (= res!1893925 (not (containsKeyBiggerList!190 (t!357869 (toList!4427 lm!1477)) key!3287)))))

(assert (=> b!4543146 (containsKeyBiggerList!190 (toList!4427 lt!1717913) key!3287)))

(declare-fun lt!1717889 () Unit!99004)

(declare-fun lemmaInLongMapThenContainsKeyBiggerList!126 (ListLongMap!3059 K!12165 Hashable!5605) Unit!99004)

(assert (=> b!4543146 (= lt!1717889 (lemmaInLongMapThenContainsKeyBiggerList!126 lt!1717913 key!3287 hashF!1107))))

(declare-fun b!4543147 () Bool)

(declare-fun res!1893921 () Bool)

(assert (=> b!4543147 (=> (not res!1893921) (not e!2831140))))

(declare-fun allKeysSameHashInMap!1317 (ListLongMap!3059 Hashable!5605) Bool)

(assert (=> b!4543147 (= res!1893921 (allKeysSameHashInMap!1317 lm!1477 hashF!1107))))

(declare-fun b!4543148 () Bool)

(declare-fun res!1893929 () Bool)

(assert (=> b!4543148 (=> res!1893929 e!2831139)))

(declare-fun noDuplicateKeys!1210 (List!50906) Bool)

(assert (=> b!4543148 (= res!1893929 (not (noDuplicateKeys!1210 newBucket!178)))))

(declare-fun b!4543149 () Bool)

(assert (=> b!4543149 (= e!2831136 (not e!2831139))))

(declare-fun res!1893922 () Bool)

(assert (=> b!4543149 (=> res!1893922 e!2831139)))

(declare-fun removePairForKey!837 (List!50906 K!12165) List!50906)

(assert (=> b!4543149 (= res!1893922 (not (= newBucket!178 (removePairForKey!837 lt!1717903 key!3287))))))

(declare-fun lt!1717888 () Unit!99004)

(assert (=> b!4543149 (= lt!1717888 (forallContained!2630 (toList!4427 lm!1477) lambda!176835 lt!1717896))))

(assert (=> b!4543149 (contains!13593 (toList!4427 lm!1477) lt!1717896)))

(assert (=> b!4543149 (= lt!1717896 (tuple2!51277 hash!344 lt!1717903))))

(declare-fun lt!1717914 () Unit!99004)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!722 (List!50907 (_ BitVec 64) List!50906) Unit!99004)

(assert (=> b!4543149 (= lt!1717914 (lemmaGetValueByKeyImpliesContainsTuple!722 (toList!4427 lm!1477) hash!344 lt!1717903))))

(assert (=> b!4543149 (= lt!1717903 (apply!11947 lm!1477 hash!344))))

(assert (=> b!4543149 (contains!13594 lm!1477 lt!1717900)))

(declare-fun lt!1717887 () Unit!99004)

(declare-fun lemmaInGenMapThenLongMapContainsHash!284 (ListLongMap!3059 K!12165 Hashable!5605) Unit!99004)

(assert (=> b!4543149 (= lt!1717887 (lemmaInGenMapThenLongMapContainsHash!284 lm!1477 key!3287 hashF!1107))))

(declare-fun b!4543150 () Bool)

(declare-fun e!2831129 () Bool)

(assert (=> b!4543150 (= e!2831129 e!2831141)))

(declare-fun res!1893918 () Bool)

(assert (=> b!4543150 (=> res!1893918 e!2831141)))

(assert (=> b!4543150 (= res!1893918 (not (noDuplicateKeys!1210 (_2!28932 lt!1717886))))))

(declare-fun lt!1717909 () Unit!99004)

(assert (=> b!4543150 (= lt!1717909 (forallContained!2630 (toList!4427 lm!1477) lambda!176835 (h!56672 (toList!4427 lm!1477))))))

(declare-fun b!4543151 () Bool)

(declare-fun e!2831130 () Bool)

(assert (=> b!4543151 (= e!2831131 e!2831130)))

(declare-fun res!1893910 () Bool)

(assert (=> b!4543151 (=> res!1893910 e!2831130)))

(declare-fun lt!1717893 () ListMap!3689)

(assert (=> b!4543151 (= res!1893910 (not (eq!667 lt!1717885 lt!1717893)))))

(assert (=> b!4543151 (= lt!1717893 (addToMapMapFromBucket!737 (_2!28932 lt!1717886) lt!1717894))))

(assert (=> b!4543151 (= lt!1717885 (extractMap!1266 (toList!4427 lt!1717910)))))

(declare-fun b!4543152 () Bool)

(declare-fun res!1893931 () Bool)

(assert (=> b!4543152 (=> res!1893931 e!2831128)))

(assert (=> b!4543152 (= res!1893931 (not (eq!667 (extractMap!1266 (toList!4427 lt!1717902)) lt!1717920)))))

(declare-fun b!4543153 () Bool)

(assert (=> b!4543153 (= e!2831130 e!2831129)))

(declare-fun res!1893920 () Bool)

(assert (=> b!4543153 (=> res!1893920 e!2831129)))

(assert (=> b!4543153 (= res!1893920 (not (eq!667 lt!1717885 lt!1717895)))))

(assert (=> b!4543153 (eq!667 lt!1717893 lt!1717895)))

(assert (=> b!4543153 (= lt!1717895 (addToMapMapFromBucket!737 (_2!28932 lt!1717886) lt!1717906))))

(declare-fun lt!1717904 () Unit!99004)

(declare-fun lemmaAddToMapFromBucketPreservesEquivalence!86 (ListMap!3689 ListMap!3689 List!50906) Unit!99004)

(assert (=> b!4543153 (= lt!1717904 (lemmaAddToMapFromBucketPreservesEquivalence!86 lt!1717894 lt!1717906 (_2!28932 lt!1717886)))))

(declare-fun b!4543154 () Bool)

(declare-fun res!1893912 () Bool)

(assert (=> b!4543154 (=> res!1893912 e!2831134)))

(assert (=> b!4543154 (= res!1893912 (bvsge (_1!28932 lt!1717886) hash!344))))

(assert (= (and start!451212 res!1893932) b!4543147))

(assert (= (and b!4543147 res!1893921) b!4543135))

(assert (= (and b!4543135 res!1893917) b!4543127))

(assert (= (and b!4543127 res!1893914) b!4543144))

(assert (= (and b!4543144 res!1893913) b!4543149))

(assert (= (and b!4543149 (not res!1893922)) b!4543148))

(assert (= (and b!4543148 (not res!1893929)) b!4543136))

(assert (= (and b!4543136 (not res!1893934)) b!4543123))

(assert (= (and b!4543123 (not res!1893928)) b!4543137))

(assert (= (and b!4543137 (not res!1893930)) b!4543121))

(assert (= (and b!4543121 (not res!1893933)) b!4543126))

(assert (= (and b!4543126 c!775946) b!4543125))

(assert (= (and b!4543126 (not c!775946)) b!4543130))

(assert (= (and b!4543126 (not res!1893907)) b!4543146))

(assert (= (and b!4543146 (not res!1893925)) b!4543132))

(assert (= (and b!4543132 (not res!1893924)) b!4543142))

(assert (= (and b!4543142 (not res!1893909)) b!4543131))

(assert (= (and b!4543131 (not res!1893915)) b!4543154))

(assert (= (and b!4543154 (not res!1893912)) b!4543124))

(assert (= (and b!4543124 (not res!1893926)) b!4543141))

(assert (= (and b!4543141 (not res!1893916)) b!4543151))

(assert (= (and b!4543151 (not res!1893910)) b!4543153))

(assert (= (and b!4543153 (not res!1893920)) b!4543150))

(assert (= (and b!4543150 (not res!1893918)) b!4543128))

(assert (= (and b!4543128 c!775947) b!4543138))

(assert (= (and b!4543128 (not c!775947)) b!4543122))

(assert (= (and b!4543128 (not res!1893908)) b!4543143))

(assert (= (and b!4543143 (not res!1893919)) b!4543129))

(assert (= (and b!4543129 (not res!1893923)) b!4543145))

(assert (= (and b!4543145 (not res!1893911)) b!4543139))

(assert (= (and b!4543139 (not res!1893927)) b!4543152))

(assert (= (and b!4543152 (not res!1893931)) b!4543140))

(assert (= start!451212 b!4543133))

(assert (= (and start!451212 ((_ is Cons!50782) newBucket!178)) b!4543134))

(declare-fun m!5312089 () Bool)

(assert (=> b!4543152 m!5312089))

(assert (=> b!4543152 m!5312089))

(declare-fun m!5312091 () Bool)

(assert (=> b!4543152 m!5312091))

(declare-fun m!5312093 () Bool)

(assert (=> b!4543138 m!5312093))

(declare-fun m!5312095 () Bool)

(assert (=> b!4543138 m!5312095))

(declare-fun m!5312097 () Bool)

(assert (=> b!4543138 m!5312097))

(declare-fun m!5312099 () Bool)

(assert (=> b!4543138 m!5312099))

(declare-fun m!5312101 () Bool)

(assert (=> b!4543150 m!5312101))

(declare-fun m!5312103 () Bool)

(assert (=> b!4543150 m!5312103))

(declare-fun m!5312105 () Bool)

(assert (=> b!4543129 m!5312105))

(declare-fun m!5312107 () Bool)

(assert (=> b!4543129 m!5312107))

(declare-fun m!5312109 () Bool)

(assert (=> b!4543135 m!5312109))

(declare-fun m!5312111 () Bool)

(assert (=> b!4543135 m!5312111))

(declare-fun m!5312113 () Bool)

(assert (=> b!4543131 m!5312113))

(declare-fun m!5312115 () Bool)

(assert (=> b!4543147 m!5312115))

(declare-fun m!5312117 () Bool)

(assert (=> b!4543137 m!5312117))

(declare-fun m!5312119 () Bool)

(assert (=> b!4543124 m!5312119))

(declare-fun m!5312121 () Bool)

(assert (=> b!4543124 m!5312121))

(declare-fun m!5312123 () Bool)

(assert (=> b!4543151 m!5312123))

(declare-fun m!5312125 () Bool)

(assert (=> b!4543151 m!5312125))

(declare-fun m!5312127 () Bool)

(assert (=> b!4543151 m!5312127))

(declare-fun m!5312129 () Bool)

(assert (=> b!4543142 m!5312129))

(declare-fun m!5312131 () Bool)

(assert (=> b!4543142 m!5312131))

(declare-fun m!5312133 () Bool)

(assert (=> b!4543142 m!5312133))

(declare-fun m!5312135 () Bool)

(assert (=> b!4543142 m!5312135))

(declare-fun m!5312137 () Bool)

(assert (=> b!4543142 m!5312137))

(declare-fun m!5312139 () Bool)

(assert (=> b!4543142 m!5312139))

(declare-fun m!5312141 () Bool)

(assert (=> b!4543142 m!5312141))

(declare-fun m!5312143 () Bool)

(assert (=> b!4543142 m!5312143))

(declare-fun m!5312145 () Bool)

(assert (=> b!4543142 m!5312145))

(declare-fun m!5312147 () Bool)

(assert (=> start!451212 m!5312147))

(declare-fun m!5312149 () Bool)

(assert (=> start!451212 m!5312149))

(declare-fun m!5312151 () Bool)

(assert (=> b!4543123 m!5312151))

(declare-fun m!5312153 () Bool)

(assert (=> b!4543123 m!5312153))

(declare-fun m!5312155 () Bool)

(assert (=> b!4543146 m!5312155))

(declare-fun m!5312157 () Bool)

(assert (=> b!4543146 m!5312157))

(declare-fun m!5312159 () Bool)

(assert (=> b!4543146 m!5312159))

(declare-fun m!5312161 () Bool)

(assert (=> b!4543125 m!5312161))

(declare-fun m!5312163 () Bool)

(assert (=> b!4543139 m!5312163))

(assert (=> b!4543139 m!5312163))

(declare-fun m!5312165 () Bool)

(assert (=> b!4543139 m!5312165))

(declare-fun m!5312167 () Bool)

(assert (=> b!4543143 m!5312167))

(declare-fun m!5312169 () Bool)

(assert (=> b!4543143 m!5312169))

(assert (=> b!4543143 m!5312169))

(declare-fun m!5312171 () Bool)

(assert (=> b!4543143 m!5312171))

(declare-fun m!5312173 () Bool)

(assert (=> b!4543143 m!5312173))

(declare-fun m!5312175 () Bool)

(assert (=> b!4543144 m!5312175))

(declare-fun m!5312177 () Bool)

(assert (=> b!4543132 m!5312177))

(declare-fun m!5312179 () Bool)

(assert (=> b!4543132 m!5312179))

(declare-fun m!5312181 () Bool)

(assert (=> b!4543132 m!5312181))

(declare-fun m!5312183 () Bool)

(assert (=> b!4543132 m!5312183))

(assert (=> b!4543132 m!5312179))

(declare-fun m!5312185 () Bool)

(assert (=> b!4543132 m!5312185))

(declare-fun m!5312187 () Bool)

(assert (=> b!4543126 m!5312187))

(declare-fun m!5312189 () Bool)

(assert (=> b!4543148 m!5312189))

(assert (=> b!4543140 m!5312147))

(declare-fun m!5312191 () Bool)

(assert (=> b!4543127 m!5312191))

(declare-fun m!5312193 () Bool)

(assert (=> b!4543145 m!5312193))

(declare-fun m!5312195 () Bool)

(assert (=> b!4543149 m!5312195))

(declare-fun m!5312197 () Bool)

(assert (=> b!4543149 m!5312197))

(declare-fun m!5312199 () Bool)

(assert (=> b!4543149 m!5312199))

(declare-fun m!5312201 () Bool)

(assert (=> b!4543149 m!5312201))

(declare-fun m!5312203 () Bool)

(assert (=> b!4543149 m!5312203))

(declare-fun m!5312205 () Bool)

(assert (=> b!4543149 m!5312205))

(declare-fun m!5312207 () Bool)

(assert (=> b!4543149 m!5312207))

(declare-fun m!5312209 () Bool)

(assert (=> b!4543128 m!5312209))

(declare-fun m!5312211 () Bool)

(assert (=> b!4543121 m!5312211))

(declare-fun m!5312213 () Bool)

(assert (=> b!4543141 m!5312213))

(declare-fun m!5312215 () Bool)

(assert (=> b!4543153 m!5312215))

(declare-fun m!5312217 () Bool)

(assert (=> b!4543153 m!5312217))

(declare-fun m!5312219 () Bool)

(assert (=> b!4543153 m!5312219))

(declare-fun m!5312221 () Bool)

(assert (=> b!4543153 m!5312221))

(check-sat (not b!4543123) (not b!4543152) (not b!4543133) (not start!451212) (not b!4543140) (not b!4543145) (not b!4543144) (not b!4543147) (not b!4543137) (not b!4543150) tp_is_empty!28117 (not b!4543132) (not b!4543142) (not b!4543139) (not b!4543126) (not b!4543153) tp_is_empty!28119 (not b!4543131) (not b!4543135) (not b!4543151) (not b!4543141) (not b!4543128) (not b!4543143) (not b!4543121) (not b!4543134) (not b!4543138) (not b!4543129) (not b!4543125) (not b!4543127) (not b!4543149) (not b!4543148) (not b!4543124) (not b!4543146))
(check-sat)
