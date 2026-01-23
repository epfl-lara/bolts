; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!446546 () Bool)

(assert start!446546)

(declare-fun b!4513957 () Bool)

(declare-fun e!2812143 () Bool)

(declare-datatypes ((K!12018 0))(
  ( (K!12019 (val!17885 Int)) )
))
(declare-datatypes ((V!12264 0))(
  ( (V!12265 (val!17886 Int)) )
))
(declare-datatypes ((tuple2!51038 0))(
  ( (tuple2!51039 (_1!28813 K!12018) (_2!28813 V!12264)) )
))
(declare-datatypes ((List!50744 0))(
  ( (Nil!50620) (Cons!50620 (h!56465 tuple2!51038) (t!357706 List!50744)) )
))
(declare-datatypes ((tuple2!51040 0))(
  ( (tuple2!51041 (_1!28814 (_ BitVec 64)) (_2!28814 List!50744)) )
))
(declare-datatypes ((List!50745 0))(
  ( (Nil!50621) (Cons!50621 (h!56466 tuple2!51040) (t!357707 List!50745)) )
))
(declare-datatypes ((ListLongMap!2941 0))(
  ( (ListLongMap!2942 (toList!4309 List!50745)) )
))
(declare-fun lm!1477 () ListLongMap!2941)

(declare-fun contains!13330 (List!50745 tuple2!51040) Bool)

(assert (=> b!4513957 (= e!2812143 (contains!13330 (toList!4309 lm!1477) (h!56466 (toList!4309 lm!1477))))))

(declare-fun res!1878001 () Bool)

(declare-fun e!2812147 () Bool)

(assert (=> start!446546 (=> (not res!1878001) (not e!2812147))))

(declare-fun lambda!171262 () Int)

(declare-fun forall!10240 (List!50745 Int) Bool)

(assert (=> start!446546 (= res!1878001 (forall!10240 (toList!4309 lm!1477) lambda!171262))))

(assert (=> start!446546 e!2812147))

(assert (=> start!446546 true))

(declare-fun e!2812154 () Bool)

(declare-fun inv!66203 (ListLongMap!2941) Bool)

(assert (=> start!446546 (and (inv!66203 lm!1477) e!2812154)))

(declare-fun tp_is_empty!27881 () Bool)

(assert (=> start!446546 tp_is_empty!27881))

(declare-fun e!2812149 () Bool)

(assert (=> start!446546 e!2812149))

(declare-fun b!4513958 () Bool)

(declare-fun e!2812146 () Bool)

(declare-fun e!2812141 () Bool)

(assert (=> b!4513958 (= e!2812146 (not e!2812141))))

(declare-fun res!1878010 () Bool)

(assert (=> b!4513958 (=> res!1878010 e!2812141)))

(declare-fun key!3287 () K!12018)

(declare-fun lt!1692077 () List!50744)

(declare-fun newBucket!178 () List!50744)

(declare-fun removePairForKey!778 (List!50744 K!12018) List!50744)

(assert (=> b!4513958 (= res!1878010 (not (= newBucket!178 (removePairForKey!778 lt!1692077 key!3287))))))

(declare-fun lt!1692088 () tuple2!51040)

(declare-datatypes ((Unit!94004 0))(
  ( (Unit!94005) )
))
(declare-fun lt!1692081 () Unit!94004)

(declare-fun forallContained!2492 (List!50745 Int tuple2!51040) Unit!94004)

(assert (=> b!4513958 (= lt!1692081 (forallContained!2492 (toList!4309 lm!1477) lambda!171262 lt!1692088))))

(assert (=> b!4513958 (contains!13330 (toList!4309 lm!1477) lt!1692088)))

(declare-fun hash!344 () (_ BitVec 64))

(assert (=> b!4513958 (= lt!1692088 (tuple2!51041 hash!344 lt!1692077))))

(declare-fun lt!1692078 () Unit!94004)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!663 (List!50745 (_ BitVec 64) List!50744) Unit!94004)

(assert (=> b!4513958 (= lt!1692078 (lemmaGetValueByKeyImpliesContainsTuple!663 (toList!4309 lm!1477) hash!344 lt!1692077))))

(declare-fun apply!11888 (ListLongMap!2941 (_ BitVec 64)) List!50744)

(assert (=> b!4513958 (= lt!1692077 (apply!11888 lm!1477 hash!344))))

(declare-fun lt!1692067 () (_ BitVec 64))

(declare-fun contains!13331 (ListLongMap!2941 (_ BitVec 64)) Bool)

(assert (=> b!4513958 (contains!13331 lm!1477 lt!1692067)))

(declare-datatypes ((Hashable!5546 0))(
  ( (HashableExt!5545 (__x!31249 Int)) )
))
(declare-fun hashF!1107 () Hashable!5546)

(declare-fun lt!1692076 () Unit!94004)

(declare-fun lemmaInGenMapThenLongMapContainsHash!225 (ListLongMap!2941 K!12018 Hashable!5546) Unit!94004)

(assert (=> b!4513958 (= lt!1692076 (lemmaInGenMapThenLongMapContainsHash!225 lm!1477 key!3287 hashF!1107))))

(declare-fun b!4513959 () Bool)

(declare-fun res!1877996 () Bool)

(assert (=> b!4513959 (=> (not res!1877996) (not e!2812146))))

(declare-fun allKeysSameHash!1005 (List!50744 (_ BitVec 64) Hashable!5546) Bool)

(assert (=> b!4513959 (= res!1877996 (allKeysSameHash!1005 newBucket!178 hash!344 hashF!1107))))

(declare-fun b!4513960 () Bool)

(declare-fun res!1878003 () Bool)

(assert (=> b!4513960 (=> (not res!1878003) (not e!2812147))))

(declare-fun allKeysSameHashInMap!1258 (ListLongMap!2941 Hashable!5546) Bool)

(assert (=> b!4513960 (= res!1878003 (allKeysSameHashInMap!1258 lm!1477 hashF!1107))))

(declare-fun b!4513961 () Bool)

(declare-fun e!2812145 () Bool)

(declare-fun e!2812144 () Bool)

(assert (=> b!4513961 (= e!2812145 e!2812144)))

(declare-fun res!1877998 () Bool)

(assert (=> b!4513961 (=> res!1877998 e!2812144)))

(declare-datatypes ((ListMap!3571 0))(
  ( (ListMap!3572 (toList!4310 List!50744)) )
))
(declare-fun lt!1692083 () ListMap!3571)

(declare-fun lt!1692085 () ListMap!3571)

(declare-fun eq!608 (ListMap!3571 ListMap!3571) Bool)

(assert (=> b!4513961 (= res!1877998 (not (eq!608 lt!1692083 lt!1692085)))))

(declare-fun lt!1692082 () ListLongMap!2941)

(declare-fun lt!1692089 () tuple2!51040)

(declare-fun extractMap!1207 (List!50745) ListMap!3571)

(declare-fun +!1521 (ListLongMap!2941 tuple2!51040) ListLongMap!2941)

(assert (=> b!4513961 (= lt!1692083 (extractMap!1207 (toList!4309 (+!1521 lt!1692082 lt!1692089))))))

(declare-fun head!9395 (ListLongMap!2941) tuple2!51040)

(assert (=> b!4513961 (= lt!1692089 (head!9395 lm!1477))))

(declare-fun lt!1692070 () ListMap!3571)

(declare-fun lt!1692087 () ListMap!3571)

(assert (=> b!4513961 (eq!608 lt!1692070 lt!1692087)))

(declare-fun lt!1692092 () ListMap!3571)

(declare-fun -!377 (ListMap!3571 K!12018) ListMap!3571)

(assert (=> b!4513961 (= lt!1692087 (-!377 lt!1692092 key!3287))))

(declare-fun lt!1692091 () ListLongMap!2941)

(assert (=> b!4513961 (= lt!1692070 (extractMap!1207 (toList!4309 lt!1692091)))))

(declare-fun lt!1692084 () tuple2!51040)

(assert (=> b!4513961 (= lt!1692091 (+!1521 lt!1692082 lt!1692084))))

(assert (=> b!4513961 (= lt!1692084 (tuple2!51041 hash!344 newBucket!178))))

(declare-fun lt!1692071 () Unit!94004)

(declare-fun lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMap!136 (ListLongMap!2941 (_ BitVec 64) List!50744 K!12018 Hashable!5546) Unit!94004)

(assert (=> b!4513961 (= lt!1692071 (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMap!136 lt!1692082 hash!344 newBucket!178 key!3287 hashF!1107))))

(declare-fun b!4513962 () Bool)

(declare-fun res!1877997 () Bool)

(declare-fun e!2812153 () Bool)

(assert (=> b!4513962 (=> res!1877997 e!2812153)))

(assert (=> b!4513962 (= res!1877997 (not (= (apply!11888 lt!1692082 hash!344) lt!1692077)))))

(declare-fun b!4513963 () Bool)

(declare-fun e!2812142 () Bool)

(assert (=> b!4513963 (= e!2812142 e!2812146)))

(declare-fun res!1877991 () Bool)

(assert (=> b!4513963 (=> (not res!1877991) (not e!2812146))))

(assert (=> b!4513963 (= res!1877991 (= lt!1692067 hash!344))))

(declare-fun hash!2776 (Hashable!5546 K!12018) (_ BitVec 64))

(assert (=> b!4513963 (= lt!1692067 (hash!2776 hashF!1107 key!3287))))

(declare-fun b!4513964 () Bool)

(declare-fun tp!1337930 () Bool)

(assert (=> b!4513964 (= e!2812154 tp!1337930)))

(declare-fun b!4513965 () Bool)

(declare-fun e!2812140 () Bool)

(declare-fun e!2812155 () Bool)

(assert (=> b!4513965 (= e!2812140 e!2812155)))

(declare-fun res!1878006 () Bool)

(assert (=> b!4513965 (=> res!1878006 e!2812155)))

(declare-fun containsKeyBiggerList!131 (List!50745 K!12018) Bool)

(assert (=> b!4513965 (= res!1878006 (not (containsKeyBiggerList!131 (t!357707 (toList!4309 lm!1477)) key!3287)))))

(assert (=> b!4513965 (containsKeyBiggerList!131 (toList!4309 lt!1692082) key!3287)))

(declare-fun lt!1692069 () Unit!94004)

(declare-fun lemmaInLongMapThenContainsKeyBiggerList!67 (ListLongMap!2941 K!12018 Hashable!5546) Unit!94004)

(assert (=> b!4513965 (= lt!1692069 (lemmaInLongMapThenContainsKeyBiggerList!67 lt!1692082 key!3287 hashF!1107))))

(declare-fun b!4513966 () Bool)

(declare-fun res!1878012 () Bool)

(assert (=> b!4513966 (=> res!1878012 e!2812144)))

(assert (=> b!4513966 (= res!1878012 (not (eq!608 lt!1692085 lt!1692083)))))

(declare-fun tp!1337931 () Bool)

(declare-fun tp_is_empty!27883 () Bool)

(declare-fun b!4513967 () Bool)

(assert (=> b!4513967 (= e!2812149 (and tp_is_empty!27881 tp_is_empty!27883 tp!1337931))))

(declare-fun b!4513968 () Bool)

(assert (=> b!4513968 (= e!2812155 e!2812145)))

(declare-fun res!1878005 () Bool)

(assert (=> b!4513968 (=> res!1878005 e!2812145)))

(declare-fun contains!13332 (ListMap!3571 K!12018) Bool)

(assert (=> b!4513968 (= res!1878005 (not (contains!13332 (extractMap!1207 (t!357707 (toList!4309 lm!1477))) key!3287)))))

(assert (=> b!4513968 (contains!13332 lt!1692092 key!3287)))

(assert (=> b!4513968 (= lt!1692092 (extractMap!1207 (toList!4309 lt!1692082)))))

(declare-fun lt!1692086 () Unit!94004)

(declare-fun lemmaListContainsThenExtractedMapContains!121 (ListLongMap!2941 K!12018 Hashable!5546) Unit!94004)

(assert (=> b!4513968 (= lt!1692086 (lemmaListContainsThenExtractedMapContains!121 lt!1692082 key!3287 hashF!1107))))

(declare-fun b!4513969 () Bool)

(declare-fun e!2812152 () Bool)

(assert (=> b!4513969 (= e!2812144 e!2812152)))

(declare-fun res!1877993 () Bool)

(assert (=> b!4513969 (=> res!1877993 e!2812152)))

(declare-fun lt!1692090 () ListLongMap!2941)

(assert (=> b!4513969 (= res!1877993 (not (= lt!1692090 (+!1521 lm!1477 lt!1692084))))))

(assert (=> b!4513969 (= lt!1692090 (+!1521 lt!1692091 lt!1692089))))

(declare-fun b!4513970 () Bool)

(declare-fun e!2812150 () Bool)

(assert (=> b!4513970 (= e!2812150 e!2812143)))

(declare-fun res!1878007 () Bool)

(assert (=> b!4513970 (=> (not res!1878007) (not e!2812143))))

(assert (=> b!4513970 (= res!1878007 (forall!10240 (toList!4309 lm!1477) lambda!171262))))

(declare-fun b!4513971 () Bool)

(assert (=> b!4513971 (= e!2812147 e!2812142)))

(declare-fun res!1877995 () Bool)

(assert (=> b!4513971 (=> (not res!1877995) (not e!2812142))))

(assert (=> b!4513971 (= res!1877995 (contains!13332 lt!1692085 key!3287))))

(assert (=> b!4513971 (= lt!1692085 (extractMap!1207 (toList!4309 lm!1477)))))

(declare-fun b!4513972 () Bool)

(assert (=> b!4513972 (= e!2812141 e!2812153)))

(declare-fun res!1878002 () Bool)

(assert (=> b!4513972 (=> res!1878002 e!2812153)))

(assert (=> b!4513972 (= res!1878002 (not (contains!13331 lt!1692082 hash!344)))))

(declare-fun tail!7717 (ListLongMap!2941) ListLongMap!2941)

(assert (=> b!4513972 (= lt!1692082 (tail!7717 lm!1477))))

(declare-fun b!4513973 () Bool)

(declare-fun res!1878000 () Bool)

(assert (=> b!4513973 (=> res!1878000 e!2812141)))

(assert (=> b!4513973 (= res!1878000 (or (is-Nil!50621 (toList!4309 lm!1477)) (= (_1!28814 (h!56466 (toList!4309 lm!1477))) hash!344)))))

(declare-fun b!4513974 () Bool)

(declare-fun res!1878009 () Bool)

(assert (=> b!4513974 (=> res!1878009 e!2812141)))

(declare-fun noDuplicateKeys!1151 (List!50744) Bool)

(assert (=> b!4513974 (= res!1878009 (not (noDuplicateKeys!1151 newBucket!178)))))

(declare-fun b!4513975 () Bool)

(declare-fun res!1877992 () Bool)

(assert (=> b!4513975 (=> res!1877992 e!2812153)))

(assert (=> b!4513975 (= res!1877992 (not (contains!13330 (t!357707 (toList!4309 lm!1477)) lt!1692088)))))

(declare-fun b!4513976 () Bool)

(declare-fun res!1877994 () Bool)

(assert (=> b!4513976 (=> res!1877994 e!2812144)))

(assert (=> b!4513976 (= res!1877994 (bvsge (_1!28814 lt!1692089) hash!344))))

(declare-fun b!4513977 () Bool)

(assert (=> b!4513977 (= e!2812153 e!2812140)))

(declare-fun res!1877999 () Bool)

(assert (=> b!4513977 (=> res!1877999 e!2812140)))

(declare-fun lt!1692073 () Bool)

(assert (=> b!4513977 (= res!1877999 lt!1692073)))

(declare-fun lt!1692080 () Unit!94004)

(declare-fun e!2812151 () Unit!94004)

(assert (=> b!4513977 (= lt!1692080 e!2812151)))

(declare-fun c!770052 () Bool)

(assert (=> b!4513977 (= c!770052 lt!1692073)))

(declare-fun containsKey!1755 (List!50744 K!12018) Bool)

(assert (=> b!4513977 (= lt!1692073 (not (containsKey!1755 lt!1692077 key!3287)))))

(declare-fun b!4513978 () Bool)

(declare-fun Unit!94006 () Unit!94004)

(assert (=> b!4513978 (= e!2812151 Unit!94006)))

(declare-fun b!4513979 () Bool)

(declare-fun res!1878008 () Bool)

(assert (=> b!4513979 (=> res!1878008 e!2812152)))

(assert (=> b!4513979 (= res!1878008 (not (= (head!9395 lt!1692090) lt!1692089)))))

(declare-fun b!4513980 () Bool)

(declare-fun Unit!94007 () Unit!94004)

(assert (=> b!4513980 (= e!2812151 Unit!94007)))

(declare-fun lt!1692075 () Unit!94004)

(declare-fun lemmaNotInItsHashBucketThenNotInMap!139 (ListLongMap!2941 K!12018 Hashable!5546) Unit!94004)

(assert (=> b!4513980 (= lt!1692075 (lemmaNotInItsHashBucketThenNotInMap!139 lm!1477 key!3287 hashF!1107))))

(assert (=> b!4513980 false))

(declare-fun b!4513981 () Bool)

(declare-fun e!2812148 () Bool)

(assert (=> b!4513981 (= e!2812152 e!2812148)))

(declare-fun res!1878004 () Bool)

(assert (=> b!4513981 (=> res!1878004 e!2812148)))

(declare-fun lt!1692072 () ListMap!3571)

(declare-fun lt!1692074 () ListMap!3571)

(assert (=> b!4513981 (= res!1878004 (not (eq!608 lt!1692072 lt!1692074)))))

(declare-fun addToMapMapFromBucket!678 (List!50744 ListMap!3571) ListMap!3571)

(assert (=> b!4513981 (= lt!1692074 (addToMapMapFromBucket!678 (_2!28814 lt!1692089) lt!1692070))))

(assert (=> b!4513981 (= lt!1692072 (extractMap!1207 (toList!4309 lt!1692090)))))

(declare-fun b!4513982 () Bool)

(assert (=> b!4513982 (= e!2812148 e!2812150)))

(declare-fun res!1878011 () Bool)

(assert (=> b!4513982 (=> res!1878011 e!2812150)))

(declare-fun lt!1692068 () ListMap!3571)

(assert (=> b!4513982 (= res!1878011 (not (eq!608 lt!1692072 lt!1692068)))))

(assert (=> b!4513982 (eq!608 lt!1692074 lt!1692068)))

(assert (=> b!4513982 (= lt!1692068 (addToMapMapFromBucket!678 (_2!28814 lt!1692089) lt!1692087))))

(declare-fun lt!1692079 () Unit!94004)

(declare-fun lemmaAddToMapFromBucketPreservesEquivalence!27 (ListMap!3571 ListMap!3571 List!50744) Unit!94004)

(assert (=> b!4513982 (= lt!1692079 (lemmaAddToMapFromBucketPreservesEquivalence!27 lt!1692070 lt!1692087 (_2!28814 lt!1692089)))))

(assert (= (and start!446546 res!1878001) b!4513960))

(assert (= (and b!4513960 res!1878003) b!4513971))

(assert (= (and b!4513971 res!1877995) b!4513963))

(assert (= (and b!4513963 res!1877991) b!4513959))

(assert (= (and b!4513959 res!1877996) b!4513958))

(assert (= (and b!4513958 (not res!1878010)) b!4513974))

(assert (= (and b!4513974 (not res!1878009)) b!4513973))

(assert (= (and b!4513973 (not res!1878000)) b!4513972))

(assert (= (and b!4513972 (not res!1878002)) b!4513962))

(assert (= (and b!4513962 (not res!1877997)) b!4513975))

(assert (= (and b!4513975 (not res!1877992)) b!4513977))

(assert (= (and b!4513977 c!770052) b!4513980))

(assert (= (and b!4513977 (not c!770052)) b!4513978))

(assert (= (and b!4513977 (not res!1877999)) b!4513965))

(assert (= (and b!4513965 (not res!1878006)) b!4513968))

(assert (= (and b!4513968 (not res!1878005)) b!4513961))

(assert (= (and b!4513961 (not res!1877998)) b!4513966))

(assert (= (and b!4513966 (not res!1878012)) b!4513976))

(assert (= (and b!4513976 (not res!1877994)) b!4513969))

(assert (= (and b!4513969 (not res!1877993)) b!4513979))

(assert (= (and b!4513979 (not res!1878008)) b!4513981))

(assert (= (and b!4513981 (not res!1878004)) b!4513982))

(assert (= (and b!4513982 (not res!1878011)) b!4513970))

(assert (= (and b!4513970 res!1878007) b!4513957))

(assert (= start!446546 b!4513964))

(assert (= (and start!446546 (is-Cons!50620 newBucket!178)) b!4513967))

(declare-fun m!5256273 () Bool)

(assert (=> b!4513979 m!5256273))

(declare-fun m!5256275 () Bool)

(assert (=> b!4513975 m!5256275))

(declare-fun m!5256277 () Bool)

(assert (=> b!4513960 m!5256277))

(declare-fun m!5256279 () Bool)

(assert (=> b!4513959 m!5256279))

(declare-fun m!5256281 () Bool)

(assert (=> b!4513971 m!5256281))

(declare-fun m!5256283 () Bool)

(assert (=> b!4513971 m!5256283))

(declare-fun m!5256285 () Bool)

(assert (=> b!4513969 m!5256285))

(declare-fun m!5256287 () Bool)

(assert (=> b!4513969 m!5256287))

(declare-fun m!5256289 () Bool)

(assert (=> b!4513966 m!5256289))

(declare-fun m!5256291 () Bool)

(assert (=> b!4513965 m!5256291))

(declare-fun m!5256293 () Bool)

(assert (=> b!4513965 m!5256293))

(declare-fun m!5256295 () Bool)

(assert (=> b!4513965 m!5256295))

(declare-fun m!5256297 () Bool)

(assert (=> b!4513962 m!5256297))

(declare-fun m!5256299 () Bool)

(assert (=> b!4513972 m!5256299))

(declare-fun m!5256301 () Bool)

(assert (=> b!4513972 m!5256301))

(declare-fun m!5256303 () Bool)

(assert (=> b!4513977 m!5256303))

(declare-fun m!5256305 () Bool)

(assert (=> b!4513957 m!5256305))

(declare-fun m!5256307 () Bool)

(assert (=> b!4513958 m!5256307))

(declare-fun m!5256309 () Bool)

(assert (=> b!4513958 m!5256309))

(declare-fun m!5256311 () Bool)

(assert (=> b!4513958 m!5256311))

(declare-fun m!5256313 () Bool)

(assert (=> b!4513958 m!5256313))

(declare-fun m!5256315 () Bool)

(assert (=> b!4513958 m!5256315))

(declare-fun m!5256317 () Bool)

(assert (=> b!4513958 m!5256317))

(declare-fun m!5256319 () Bool)

(assert (=> b!4513958 m!5256319))

(declare-fun m!5256321 () Bool)

(assert (=> b!4513961 m!5256321))

(declare-fun m!5256323 () Bool)

(assert (=> b!4513961 m!5256323))

(declare-fun m!5256325 () Bool)

(assert (=> b!4513961 m!5256325))

(declare-fun m!5256327 () Bool)

(assert (=> b!4513961 m!5256327))

(declare-fun m!5256329 () Bool)

(assert (=> b!4513961 m!5256329))

(declare-fun m!5256331 () Bool)

(assert (=> b!4513961 m!5256331))

(declare-fun m!5256333 () Bool)

(assert (=> b!4513961 m!5256333))

(declare-fun m!5256335 () Bool)

(assert (=> b!4513961 m!5256335))

(declare-fun m!5256337 () Bool)

(assert (=> b!4513961 m!5256337))

(declare-fun m!5256339 () Bool)

(assert (=> start!446546 m!5256339))

(declare-fun m!5256341 () Bool)

(assert (=> start!446546 m!5256341))

(declare-fun m!5256343 () Bool)

(assert (=> b!4513981 m!5256343))

(declare-fun m!5256345 () Bool)

(assert (=> b!4513981 m!5256345))

(declare-fun m!5256347 () Bool)

(assert (=> b!4513981 m!5256347))

(declare-fun m!5256349 () Bool)

(assert (=> b!4513968 m!5256349))

(declare-fun m!5256351 () Bool)

(assert (=> b!4513968 m!5256351))

(declare-fun m!5256353 () Bool)

(assert (=> b!4513968 m!5256353))

(declare-fun m!5256355 () Bool)

(assert (=> b!4513968 m!5256355))

(assert (=> b!4513968 m!5256349))

(declare-fun m!5256357 () Bool)

(assert (=> b!4513968 m!5256357))

(assert (=> b!4513970 m!5256339))

(declare-fun m!5256359 () Bool)

(assert (=> b!4513982 m!5256359))

(declare-fun m!5256361 () Bool)

(assert (=> b!4513982 m!5256361))

(declare-fun m!5256363 () Bool)

(assert (=> b!4513982 m!5256363))

(declare-fun m!5256365 () Bool)

(assert (=> b!4513982 m!5256365))

(declare-fun m!5256367 () Bool)

(assert (=> b!4513974 m!5256367))

(declare-fun m!5256369 () Bool)

(assert (=> b!4513963 m!5256369))

(declare-fun m!5256371 () Bool)

(assert (=> b!4513980 m!5256371))

(push 1)

(assert (not b!4513981))

(assert (not b!4513968))

(assert (not b!4513974))

(assert (not b!4513979))

(assert (not b!4513967))

(assert tp_is_empty!27881)

(assert (not b!4513961))

(assert tp_is_empty!27883)

(assert (not start!446546))

(assert (not b!4513963))

(assert (not b!4513962))

(assert (not b!4513958))

(assert (not b!4513971))

(assert (not b!4513964))

(assert (not b!4513982))

(assert (not b!4513972))

(assert (not b!4513959))

(assert (not b!4513970))

(assert (not b!4513969))

(assert (not b!4513957))

(assert (not b!4513965))

(assert (not b!4513975))

(assert (not b!4513977))

(assert (not b!4513960))

(assert (not b!4513966))

(assert (not b!4513980))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1389020 () Bool)

(declare-fun res!1878083 () Bool)

(declare-fun e!2812208 () Bool)

(assert (=> d!1389020 (=> res!1878083 e!2812208)))

(assert (=> d!1389020 (= res!1878083 (and (is-Cons!50620 lt!1692077) (= (_1!28813 (h!56465 lt!1692077)) key!3287)))))

(assert (=> d!1389020 (= (containsKey!1755 lt!1692077 key!3287) e!2812208)))

(declare-fun b!4514065 () Bool)

(declare-fun e!2812209 () Bool)

(assert (=> b!4514065 (= e!2812208 e!2812209)))

(declare-fun res!1878084 () Bool)

(assert (=> b!4514065 (=> (not res!1878084) (not e!2812209))))

(assert (=> b!4514065 (= res!1878084 (is-Cons!50620 lt!1692077))))

(declare-fun b!4514066 () Bool)

(assert (=> b!4514066 (= e!2812209 (containsKey!1755 (t!357706 lt!1692077) key!3287))))

(assert (= (and d!1389020 (not res!1878083)) b!4514065))

(assert (= (and b!4514065 res!1878084) b!4514066))

(declare-fun m!5256479 () Bool)

(assert (=> b!4514066 m!5256479))

(assert (=> b!4513977 d!1389020))

(declare-fun d!1389022 () Bool)

(declare-fun content!8330 (List!50744) (Set tuple2!51038))

(assert (=> d!1389022 (= (eq!608 lt!1692085 lt!1692083) (= (content!8330 (toList!4310 lt!1692085)) (content!8330 (toList!4310 lt!1692083))))))

(declare-fun bs!849493 () Bool)

(assert (= bs!849493 d!1389022))

(declare-fun m!5256481 () Bool)

(assert (=> bs!849493 m!5256481))

(declare-fun m!5256483 () Bool)

(assert (=> bs!849493 m!5256483))

(assert (=> b!4513966 d!1389022))

(declare-fun d!1389024 () Bool)

(declare-fun res!1878091 () Bool)

(declare-fun e!2812218 () Bool)

(assert (=> d!1389024 (=> res!1878091 e!2812218)))

(declare-fun e!2812217 () Bool)

(assert (=> d!1389024 (= res!1878091 e!2812217)))

(declare-fun res!1878092 () Bool)

(assert (=> d!1389024 (=> (not res!1878092) (not e!2812217))))

(assert (=> d!1389024 (= res!1878092 (is-Cons!50621 (t!357707 (toList!4309 lm!1477))))))

(assert (=> d!1389024 (= (containsKeyBiggerList!131 (t!357707 (toList!4309 lm!1477)) key!3287) e!2812218)))

(declare-fun b!4514073 () Bool)

(assert (=> b!4514073 (= e!2812217 (containsKey!1755 (_2!28814 (h!56466 (t!357707 (toList!4309 lm!1477)))) key!3287))))

(declare-fun b!4514074 () Bool)

(declare-fun e!2812216 () Bool)

(assert (=> b!4514074 (= e!2812218 e!2812216)))

(declare-fun res!1878093 () Bool)

(assert (=> b!4514074 (=> (not res!1878093) (not e!2812216))))

(assert (=> b!4514074 (= res!1878093 (is-Cons!50621 (t!357707 (toList!4309 lm!1477))))))

(declare-fun b!4514075 () Bool)

(assert (=> b!4514075 (= e!2812216 (containsKeyBiggerList!131 (t!357707 (t!357707 (toList!4309 lm!1477))) key!3287))))

(assert (= (and d!1389024 res!1878092) b!4514073))

(assert (= (and d!1389024 (not res!1878091)) b!4514074))

(assert (= (and b!4514074 res!1878093) b!4514075))

(declare-fun m!5256485 () Bool)

(assert (=> b!4514073 m!5256485))

(declare-fun m!5256487 () Bool)

(assert (=> b!4514075 m!5256487))

(assert (=> b!4513965 d!1389024))

(declare-fun d!1389026 () Bool)

(declare-fun res!1878094 () Bool)

(declare-fun e!2812221 () Bool)

(assert (=> d!1389026 (=> res!1878094 e!2812221)))

(declare-fun e!2812220 () Bool)

(assert (=> d!1389026 (= res!1878094 e!2812220)))

(declare-fun res!1878095 () Bool)

(assert (=> d!1389026 (=> (not res!1878095) (not e!2812220))))

(assert (=> d!1389026 (= res!1878095 (is-Cons!50621 (toList!4309 lt!1692082)))))

(assert (=> d!1389026 (= (containsKeyBiggerList!131 (toList!4309 lt!1692082) key!3287) e!2812221)))

(declare-fun b!4514076 () Bool)

(assert (=> b!4514076 (= e!2812220 (containsKey!1755 (_2!28814 (h!56466 (toList!4309 lt!1692082))) key!3287))))

(declare-fun b!4514077 () Bool)

(declare-fun e!2812219 () Bool)

(assert (=> b!4514077 (= e!2812221 e!2812219)))

(declare-fun res!1878096 () Bool)

(assert (=> b!4514077 (=> (not res!1878096) (not e!2812219))))

(assert (=> b!4514077 (= res!1878096 (is-Cons!50621 (toList!4309 lt!1692082)))))

(declare-fun b!4514078 () Bool)

(assert (=> b!4514078 (= e!2812219 (containsKeyBiggerList!131 (t!357707 (toList!4309 lt!1692082)) key!3287))))

(assert (= (and d!1389026 res!1878095) b!4514076))

(assert (= (and d!1389026 (not res!1878094)) b!4514077))

(assert (= (and b!4514077 res!1878096) b!4514078))

(declare-fun m!5256489 () Bool)

(assert (=> b!4514076 m!5256489))

(declare-fun m!5256491 () Bool)

(assert (=> b!4514078 m!5256491))

(assert (=> b!4513965 d!1389026))

(declare-fun bs!849494 () Bool)

(declare-fun d!1389028 () Bool)

(assert (= bs!849494 (and d!1389028 start!446546)))

(declare-fun lambda!171275 () Int)

(assert (=> bs!849494 (= lambda!171275 lambda!171262)))

(assert (=> d!1389028 (containsKeyBiggerList!131 (toList!4309 lt!1692082) key!3287)))

(declare-fun lt!1692184 () Unit!94004)

(declare-fun choose!29392 (ListLongMap!2941 K!12018 Hashable!5546) Unit!94004)

(assert (=> d!1389028 (= lt!1692184 (choose!29392 lt!1692082 key!3287 hashF!1107))))

(assert (=> d!1389028 (forall!10240 (toList!4309 lt!1692082) lambda!171275)))

(assert (=> d!1389028 (= (lemmaInLongMapThenContainsKeyBiggerList!67 lt!1692082 key!3287 hashF!1107) lt!1692184)))

(declare-fun bs!849495 () Bool)

(assert (= bs!849495 d!1389028))

(assert (=> bs!849495 m!5256293))

(declare-fun m!5256493 () Bool)

(assert (=> bs!849495 m!5256493))

(declare-fun m!5256495 () Bool)

(assert (=> bs!849495 m!5256495))

(assert (=> b!4513965 d!1389028))

(declare-fun d!1389030 () Bool)

(assert (=> d!1389030 true))

(assert (=> d!1389030 true))

(declare-fun lambda!171278 () Int)

(declare-fun forall!10242 (List!50744 Int) Bool)

(assert (=> d!1389030 (= (allKeysSameHash!1005 newBucket!178 hash!344 hashF!1107) (forall!10242 newBucket!178 lambda!171278))))

(declare-fun bs!849496 () Bool)

(assert (= bs!849496 d!1389030))

(declare-fun m!5256497 () Bool)

(assert (=> bs!849496 m!5256497))

(assert (=> b!4513959 d!1389030))

(declare-fun d!1389032 () Bool)

(declare-fun res!1878104 () Bool)

(declare-fun e!2812232 () Bool)

(assert (=> d!1389032 (=> res!1878104 e!2812232)))

(assert (=> d!1389032 (= res!1878104 (is-Nil!50621 (toList!4309 lm!1477)))))

(assert (=> d!1389032 (= (forall!10240 (toList!4309 lm!1477) lambda!171262) e!2812232)))

(declare-fun b!4514096 () Bool)

(declare-fun e!2812233 () Bool)

(assert (=> b!4514096 (= e!2812232 e!2812233)))

(declare-fun res!1878105 () Bool)

(assert (=> b!4514096 (=> (not res!1878105) (not e!2812233))))

(declare-fun dynLambda!21148 (Int tuple2!51040) Bool)

(assert (=> b!4514096 (= res!1878105 (dynLambda!21148 lambda!171262 (h!56466 (toList!4309 lm!1477))))))

(declare-fun b!4514097 () Bool)

(assert (=> b!4514097 (= e!2812233 (forall!10240 (t!357707 (toList!4309 lm!1477)) lambda!171262))))

(assert (= (and d!1389032 (not res!1878104)) b!4514096))

(assert (= (and b!4514096 res!1878105) b!4514097))

(declare-fun b_lambda!154077 () Bool)

(assert (=> (not b_lambda!154077) (not b!4514096)))

(declare-fun m!5256507 () Bool)

(assert (=> b!4514096 m!5256507))

(declare-fun m!5256509 () Bool)

(assert (=> b!4514097 m!5256509))

(assert (=> b!4513970 d!1389032))

(declare-fun d!1389036 () Bool)

(declare-fun e!2812236 () Bool)

(assert (=> d!1389036 e!2812236))

(declare-fun res!1878111 () Bool)

(assert (=> d!1389036 (=> (not res!1878111) (not e!2812236))))

(declare-fun lt!1692199 () ListLongMap!2941)

(assert (=> d!1389036 (= res!1878111 (contains!13331 lt!1692199 (_1!28814 lt!1692084)))))

(declare-fun lt!1692200 () List!50745)

(assert (=> d!1389036 (= lt!1692199 (ListLongMap!2942 lt!1692200))))

(declare-fun lt!1692197 () Unit!94004)

(declare-fun lt!1692198 () Unit!94004)

(assert (=> d!1389036 (= lt!1692197 lt!1692198)))

(declare-datatypes ((Option!11094 0))(
  ( (None!11093) (Some!11093 (v!44665 List!50744)) )
))
(declare-fun getValueByKey!1074 (List!50745 (_ BitVec 64)) Option!11094)

(assert (=> d!1389036 (= (getValueByKey!1074 lt!1692200 (_1!28814 lt!1692084)) (Some!11093 (_2!28814 lt!1692084)))))

(declare-fun lemmaContainsTupThenGetReturnValue!663 (List!50745 (_ BitVec 64) List!50744) Unit!94004)

(assert (=> d!1389036 (= lt!1692198 (lemmaContainsTupThenGetReturnValue!663 lt!1692200 (_1!28814 lt!1692084) (_2!28814 lt!1692084)))))

(declare-fun insertStrictlySorted!399 (List!50745 (_ BitVec 64) List!50744) List!50745)

(assert (=> d!1389036 (= lt!1692200 (insertStrictlySorted!399 (toList!4309 lm!1477) (_1!28814 lt!1692084) (_2!28814 lt!1692084)))))

(assert (=> d!1389036 (= (+!1521 lm!1477 lt!1692084) lt!1692199)))

(declare-fun b!4514104 () Bool)

(declare-fun res!1878110 () Bool)

(assert (=> b!4514104 (=> (not res!1878110) (not e!2812236))))

(assert (=> b!4514104 (= res!1878110 (= (getValueByKey!1074 (toList!4309 lt!1692199) (_1!28814 lt!1692084)) (Some!11093 (_2!28814 lt!1692084))))))

(declare-fun b!4514105 () Bool)

(assert (=> b!4514105 (= e!2812236 (contains!13330 (toList!4309 lt!1692199) lt!1692084))))

(assert (= (and d!1389036 res!1878111) b!4514104))

(assert (= (and b!4514104 res!1878110) b!4514105))

(declare-fun m!5256515 () Bool)

(assert (=> d!1389036 m!5256515))

(declare-fun m!5256517 () Bool)

(assert (=> d!1389036 m!5256517))

(declare-fun m!5256519 () Bool)

(assert (=> d!1389036 m!5256519))

(declare-fun m!5256521 () Bool)

(assert (=> d!1389036 m!5256521))

(declare-fun m!5256523 () Bool)

(assert (=> b!4514104 m!5256523))

(declare-fun m!5256525 () Bool)

(assert (=> b!4514105 m!5256525))

(assert (=> b!4513969 d!1389036))

(declare-fun d!1389042 () Bool)

(declare-fun e!2812237 () Bool)

(assert (=> d!1389042 e!2812237))

(declare-fun res!1878113 () Bool)

(assert (=> d!1389042 (=> (not res!1878113) (not e!2812237))))

(declare-fun lt!1692203 () ListLongMap!2941)

(assert (=> d!1389042 (= res!1878113 (contains!13331 lt!1692203 (_1!28814 lt!1692089)))))

(declare-fun lt!1692204 () List!50745)

(assert (=> d!1389042 (= lt!1692203 (ListLongMap!2942 lt!1692204))))

(declare-fun lt!1692201 () Unit!94004)

(declare-fun lt!1692202 () Unit!94004)

(assert (=> d!1389042 (= lt!1692201 lt!1692202)))

(assert (=> d!1389042 (= (getValueByKey!1074 lt!1692204 (_1!28814 lt!1692089)) (Some!11093 (_2!28814 lt!1692089)))))

(assert (=> d!1389042 (= lt!1692202 (lemmaContainsTupThenGetReturnValue!663 lt!1692204 (_1!28814 lt!1692089) (_2!28814 lt!1692089)))))

(assert (=> d!1389042 (= lt!1692204 (insertStrictlySorted!399 (toList!4309 lt!1692091) (_1!28814 lt!1692089) (_2!28814 lt!1692089)))))

(assert (=> d!1389042 (= (+!1521 lt!1692091 lt!1692089) lt!1692203)))

(declare-fun b!4514108 () Bool)

(declare-fun res!1878112 () Bool)

(assert (=> b!4514108 (=> (not res!1878112) (not e!2812237))))

(assert (=> b!4514108 (= res!1878112 (= (getValueByKey!1074 (toList!4309 lt!1692203) (_1!28814 lt!1692089)) (Some!11093 (_2!28814 lt!1692089))))))

(declare-fun b!4514109 () Bool)

(assert (=> b!4514109 (= e!2812237 (contains!13330 (toList!4309 lt!1692203) lt!1692089))))

(assert (= (and d!1389042 res!1878113) b!4514108))

(assert (= (and b!4514108 res!1878112) b!4514109))

(declare-fun m!5256529 () Bool)

(assert (=> d!1389042 m!5256529))

(declare-fun m!5256531 () Bool)

(assert (=> d!1389042 m!5256531))

(declare-fun m!5256533 () Bool)

(assert (=> d!1389042 m!5256533))

(declare-fun m!5256535 () Bool)

(assert (=> d!1389042 m!5256535))

(declare-fun m!5256537 () Bool)

(assert (=> b!4514108 m!5256537))

(declare-fun m!5256539 () Bool)

(assert (=> b!4514109 m!5256539))

(assert (=> b!4513969 d!1389042))

(declare-fun bs!849500 () Bool)

(declare-fun d!1389046 () Bool)

(assert (= bs!849500 (and d!1389046 start!446546)))

(declare-fun lambda!171284 () Int)

(assert (=> bs!849500 (= lambda!171284 lambda!171262)))

(declare-fun bs!849501 () Bool)

(assert (= bs!849501 (and d!1389046 d!1389028)))

(assert (=> bs!849501 (= lambda!171284 lambda!171275)))

(assert (=> d!1389046 (not (contains!13332 (extractMap!1207 (toList!4309 lm!1477)) key!3287))))

(declare-fun lt!1692207 () Unit!94004)

(declare-fun choose!29393 (ListLongMap!2941 K!12018 Hashable!5546) Unit!94004)

(assert (=> d!1389046 (= lt!1692207 (choose!29393 lm!1477 key!3287 hashF!1107))))

(assert (=> d!1389046 (forall!10240 (toList!4309 lm!1477) lambda!171284)))

(assert (=> d!1389046 (= (lemmaNotInItsHashBucketThenNotInMap!139 lm!1477 key!3287 hashF!1107) lt!1692207)))

(declare-fun bs!849502 () Bool)

(assert (= bs!849502 d!1389046))

(assert (=> bs!849502 m!5256283))

(assert (=> bs!849502 m!5256283))

(declare-fun m!5256541 () Bool)

(assert (=> bs!849502 m!5256541))

(declare-fun m!5256543 () Bool)

(assert (=> bs!849502 m!5256543))

(declare-fun m!5256545 () Bool)

(assert (=> bs!849502 m!5256545))

(assert (=> b!4513980 d!1389046))

(declare-fun d!1389048 () Bool)

(declare-fun head!9397 (List!50745) tuple2!51040)

(assert (=> d!1389048 (= (head!9395 lt!1692090) (head!9397 (toList!4309 lt!1692090)))))

(declare-fun bs!849503 () Bool)

(assert (= bs!849503 d!1389048))

(declare-fun m!5256547 () Bool)

(assert (=> bs!849503 m!5256547))

(assert (=> b!4513979 d!1389048))

(declare-fun bs!849504 () Bool)

(declare-fun d!1389050 () Bool)

(assert (= bs!849504 (and d!1389050 start!446546)))

(declare-fun lambda!171287 () Int)

(assert (=> bs!849504 (= lambda!171287 lambda!171262)))

(declare-fun bs!849505 () Bool)

(assert (= bs!849505 (and d!1389050 d!1389028)))

(assert (=> bs!849505 (= lambda!171287 lambda!171275)))

(declare-fun bs!849506 () Bool)

(assert (= bs!849506 (and d!1389050 d!1389046)))

(assert (=> bs!849506 (= lambda!171287 lambda!171284)))

(assert (=> d!1389050 (contains!13331 lm!1477 (hash!2776 hashF!1107 key!3287))))

(declare-fun lt!1692210 () Unit!94004)

(declare-fun choose!29394 (ListLongMap!2941 K!12018 Hashable!5546) Unit!94004)

(assert (=> d!1389050 (= lt!1692210 (choose!29394 lm!1477 key!3287 hashF!1107))))

(assert (=> d!1389050 (forall!10240 (toList!4309 lm!1477) lambda!171287)))

(assert (=> d!1389050 (= (lemmaInGenMapThenLongMapContainsHash!225 lm!1477 key!3287 hashF!1107) lt!1692210)))

(declare-fun bs!849507 () Bool)

(assert (= bs!849507 d!1389050))

(assert (=> bs!849507 m!5256369))

(assert (=> bs!849507 m!5256369))

(declare-fun m!5256549 () Bool)

(assert (=> bs!849507 m!5256549))

(declare-fun m!5256551 () Bool)

(assert (=> bs!849507 m!5256551))

(declare-fun m!5256553 () Bool)

(assert (=> bs!849507 m!5256553))

(assert (=> b!4513958 d!1389050))

(declare-fun d!1389052 () Bool)

(declare-fun get!16569 (Option!11094) List!50744)

(assert (=> d!1389052 (= (apply!11888 lm!1477 hash!344) (get!16569 (getValueByKey!1074 (toList!4309 lm!1477) hash!344)))))

(declare-fun bs!849508 () Bool)

(assert (= bs!849508 d!1389052))

(declare-fun m!5256555 () Bool)

(assert (=> bs!849508 m!5256555))

(assert (=> bs!849508 m!5256555))

(declare-fun m!5256557 () Bool)

(assert (=> bs!849508 m!5256557))

(assert (=> b!4513958 d!1389052))

(declare-fun b!4514120 () Bool)

(declare-fun e!2812243 () List!50744)

(assert (=> b!4514120 (= e!2812243 (Cons!50620 (h!56465 lt!1692077) (removePairForKey!778 (t!357706 lt!1692077) key!3287)))))

(declare-fun b!4514121 () Bool)

(assert (=> b!4514121 (= e!2812243 Nil!50620)))

(declare-fun b!4514118 () Bool)

(declare-fun e!2812242 () List!50744)

(assert (=> b!4514118 (= e!2812242 (t!357706 lt!1692077))))

(declare-fun b!4514119 () Bool)

(assert (=> b!4514119 (= e!2812242 e!2812243)))

(declare-fun c!770064 () Bool)

(assert (=> b!4514119 (= c!770064 (is-Cons!50620 lt!1692077))))

(declare-fun d!1389054 () Bool)

(declare-fun lt!1692213 () List!50744)

(assert (=> d!1389054 (not (containsKey!1755 lt!1692213 key!3287))))

(assert (=> d!1389054 (= lt!1692213 e!2812242)))

(declare-fun c!770063 () Bool)

(assert (=> d!1389054 (= c!770063 (and (is-Cons!50620 lt!1692077) (= (_1!28813 (h!56465 lt!1692077)) key!3287)))))

(assert (=> d!1389054 (noDuplicateKeys!1151 lt!1692077)))

(assert (=> d!1389054 (= (removePairForKey!778 lt!1692077 key!3287) lt!1692213)))

(assert (= (and d!1389054 c!770063) b!4514118))

(assert (= (and d!1389054 (not c!770063)) b!4514119))

(assert (= (and b!4514119 c!770064) b!4514120))

(assert (= (and b!4514119 (not c!770064)) b!4514121))

(declare-fun m!5256559 () Bool)

(assert (=> b!4514120 m!5256559))

(declare-fun m!5256561 () Bool)

(assert (=> d!1389054 m!5256561))

(declare-fun m!5256563 () Bool)

(assert (=> d!1389054 m!5256563))

(assert (=> b!4513958 d!1389054))

(declare-fun d!1389056 () Bool)

(assert (=> d!1389056 (contains!13330 (toList!4309 lm!1477) (tuple2!51041 hash!344 lt!1692077))))

(declare-fun lt!1692216 () Unit!94004)

(declare-fun choose!29395 (List!50745 (_ BitVec 64) List!50744) Unit!94004)

(assert (=> d!1389056 (= lt!1692216 (choose!29395 (toList!4309 lm!1477) hash!344 lt!1692077))))

(declare-fun e!2812246 () Bool)

(assert (=> d!1389056 e!2812246))

(declare-fun res!1878116 () Bool)

(assert (=> d!1389056 (=> (not res!1878116) (not e!2812246))))

(declare-fun isStrictlySorted!422 (List!50745) Bool)

(assert (=> d!1389056 (= res!1878116 (isStrictlySorted!422 (toList!4309 lm!1477)))))

(assert (=> d!1389056 (= (lemmaGetValueByKeyImpliesContainsTuple!663 (toList!4309 lm!1477) hash!344 lt!1692077) lt!1692216)))

(declare-fun b!4514124 () Bool)

(assert (=> b!4514124 (= e!2812246 (= (getValueByKey!1074 (toList!4309 lm!1477) hash!344) (Some!11093 lt!1692077)))))

(assert (= (and d!1389056 res!1878116) b!4514124))

(declare-fun m!5256565 () Bool)

(assert (=> d!1389056 m!5256565))

(declare-fun m!5256567 () Bool)

(assert (=> d!1389056 m!5256567))

(declare-fun m!5256569 () Bool)

(assert (=> d!1389056 m!5256569))

(assert (=> b!4514124 m!5256555))

(assert (=> b!4513958 d!1389056))

(declare-fun d!1389058 () Bool)

(declare-fun e!2812256 () Bool)

(assert (=> d!1389058 e!2812256))

(declare-fun res!1878119 () Bool)

(assert (=> d!1389058 (=> res!1878119 e!2812256)))

(declare-fun lt!1692238 () Bool)

(assert (=> d!1389058 (= res!1878119 (not lt!1692238))))

(declare-fun lt!1692240 () Bool)

(assert (=> d!1389058 (= lt!1692238 lt!1692240)))

(declare-fun lt!1692239 () Unit!94004)

(declare-fun e!2812255 () Unit!94004)

(assert (=> d!1389058 (= lt!1692239 e!2812255)))

(declare-fun c!770071 () Bool)

(assert (=> d!1389058 (= c!770071 lt!1692240)))

(declare-fun containsKey!1757 (List!50745 (_ BitVec 64)) Bool)

(assert (=> d!1389058 (= lt!1692240 (containsKey!1757 (toList!4309 lm!1477) lt!1692067))))

(assert (=> d!1389058 (= (contains!13331 lm!1477 lt!1692067) lt!1692238)))

(declare-fun b!4514139 () Bool)

(declare-fun lt!1692237 () Unit!94004)

(assert (=> b!4514139 (= e!2812255 lt!1692237)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!978 (List!50745 (_ BitVec 64)) Unit!94004)

(assert (=> b!4514139 (= lt!1692237 (lemmaContainsKeyImpliesGetValueByKeyDefined!978 (toList!4309 lm!1477) lt!1692067))))

(declare-fun isDefined!8381 (Option!11094) Bool)

(assert (=> b!4514139 (isDefined!8381 (getValueByKey!1074 (toList!4309 lm!1477) lt!1692067))))

(declare-fun b!4514140 () Bool)

(declare-fun Unit!94012 () Unit!94004)

(assert (=> b!4514140 (= e!2812255 Unit!94012)))

(declare-fun b!4514141 () Bool)

(assert (=> b!4514141 (= e!2812256 (isDefined!8381 (getValueByKey!1074 (toList!4309 lm!1477) lt!1692067)))))

(assert (= (and d!1389058 c!770071) b!4514139))

(assert (= (and d!1389058 (not c!770071)) b!4514140))

(assert (= (and d!1389058 (not res!1878119)) b!4514141))

(declare-fun m!5256571 () Bool)

(assert (=> d!1389058 m!5256571))

(declare-fun m!5256573 () Bool)

(assert (=> b!4514139 m!5256573))

(declare-fun m!5256575 () Bool)

(assert (=> b!4514139 m!5256575))

(assert (=> b!4514139 m!5256575))

(declare-fun m!5256577 () Bool)

(assert (=> b!4514139 m!5256577))

(assert (=> b!4514141 m!5256575))

(assert (=> b!4514141 m!5256575))

(assert (=> b!4514141 m!5256577))

(assert (=> b!4513958 d!1389058))

(declare-fun d!1389060 () Bool)

(assert (=> d!1389060 (dynLambda!21148 lambda!171262 lt!1692088)))

(declare-fun lt!1692247 () Unit!94004)

(declare-fun choose!29396 (List!50745 Int tuple2!51040) Unit!94004)

(assert (=> d!1389060 (= lt!1692247 (choose!29396 (toList!4309 lm!1477) lambda!171262 lt!1692088))))

(declare-fun e!2812267 () Bool)

(assert (=> d!1389060 e!2812267))

(declare-fun res!1878128 () Bool)

(assert (=> d!1389060 (=> (not res!1878128) (not e!2812267))))

(assert (=> d!1389060 (= res!1878128 (forall!10240 (toList!4309 lm!1477) lambda!171262))))

(assert (=> d!1389060 (= (forallContained!2492 (toList!4309 lm!1477) lambda!171262 lt!1692088) lt!1692247)))

(declare-fun b!4514154 () Bool)

(assert (=> b!4514154 (= e!2812267 (contains!13330 (toList!4309 lm!1477) lt!1692088))))

(assert (= (and d!1389060 res!1878128) b!4514154))

(declare-fun b_lambda!154079 () Bool)

(assert (=> (not b_lambda!154079) (not d!1389060)))

(declare-fun m!5256579 () Bool)

(assert (=> d!1389060 m!5256579))

(declare-fun m!5256581 () Bool)

(assert (=> d!1389060 m!5256581))

(assert (=> d!1389060 m!5256339))

(assert (=> b!4514154 m!5256319))

(assert (=> b!4513958 d!1389060))

(declare-fun d!1389062 () Bool)

(declare-fun lt!1692250 () Bool)

(declare-fun content!8331 (List!50745) (Set tuple2!51040))

(assert (=> d!1389062 (= lt!1692250 (set.member lt!1692088 (content!8331 (toList!4309 lm!1477))))))

(declare-fun e!2812272 () Bool)

(assert (=> d!1389062 (= lt!1692250 e!2812272)))

(declare-fun res!1878133 () Bool)

(assert (=> d!1389062 (=> (not res!1878133) (not e!2812272))))

(assert (=> d!1389062 (= res!1878133 (is-Cons!50621 (toList!4309 lm!1477)))))

(assert (=> d!1389062 (= (contains!13330 (toList!4309 lm!1477) lt!1692088) lt!1692250)))

(declare-fun b!4514159 () Bool)

(declare-fun e!2812273 () Bool)

(assert (=> b!4514159 (= e!2812272 e!2812273)))

(declare-fun res!1878134 () Bool)

(assert (=> b!4514159 (=> res!1878134 e!2812273)))

(assert (=> b!4514159 (= res!1878134 (= (h!56466 (toList!4309 lm!1477)) lt!1692088))))

(declare-fun b!4514160 () Bool)

(assert (=> b!4514160 (= e!2812273 (contains!13330 (t!357707 (toList!4309 lm!1477)) lt!1692088))))

(assert (= (and d!1389062 res!1878133) b!4514159))

(assert (= (and b!4514159 (not res!1878134)) b!4514160))

(declare-fun m!5256583 () Bool)

(assert (=> d!1389062 m!5256583))

(declare-fun m!5256585 () Bool)

(assert (=> d!1389062 m!5256585))

(assert (=> b!4514160 m!5256275))

(assert (=> b!4513958 d!1389062))

(declare-fun d!1389064 () Bool)

(declare-fun lt!1692251 () Bool)

(assert (=> d!1389064 (= lt!1692251 (set.member (h!56466 (toList!4309 lm!1477)) (content!8331 (toList!4309 lm!1477))))))

(declare-fun e!2812274 () Bool)

(assert (=> d!1389064 (= lt!1692251 e!2812274)))

(declare-fun res!1878135 () Bool)

(assert (=> d!1389064 (=> (not res!1878135) (not e!2812274))))

(assert (=> d!1389064 (= res!1878135 (is-Cons!50621 (toList!4309 lm!1477)))))

(assert (=> d!1389064 (= (contains!13330 (toList!4309 lm!1477) (h!56466 (toList!4309 lm!1477))) lt!1692251)))

(declare-fun b!4514161 () Bool)

(declare-fun e!2812275 () Bool)

(assert (=> b!4514161 (= e!2812274 e!2812275)))

(declare-fun res!1878136 () Bool)

(assert (=> b!4514161 (=> res!1878136 e!2812275)))

(assert (=> b!4514161 (= res!1878136 (= (h!56466 (toList!4309 lm!1477)) (h!56466 (toList!4309 lm!1477))))))

(declare-fun b!4514162 () Bool)

(assert (=> b!4514162 (= e!2812275 (contains!13330 (t!357707 (toList!4309 lm!1477)) (h!56466 (toList!4309 lm!1477))))))

(assert (= (and d!1389064 res!1878135) b!4514161))

(assert (= (and b!4514161 (not res!1878136)) b!4514162))

(assert (=> d!1389064 m!5256583))

(declare-fun m!5256587 () Bool)

(assert (=> d!1389064 m!5256587))

(declare-fun m!5256589 () Bool)

(assert (=> b!4514162 m!5256589))

(assert (=> b!4513957 d!1389064))

(declare-fun bs!849509 () Bool)

(declare-fun d!1389066 () Bool)

(assert (= bs!849509 (and d!1389066 start!446546)))

(declare-fun lambda!171290 () Int)

(assert (=> bs!849509 (= lambda!171290 lambda!171262)))

(declare-fun bs!849510 () Bool)

(assert (= bs!849510 (and d!1389066 d!1389028)))

(assert (=> bs!849510 (= lambda!171290 lambda!171275)))

(declare-fun bs!849511 () Bool)

(assert (= bs!849511 (and d!1389066 d!1389046)))

(assert (=> bs!849511 (= lambda!171290 lambda!171284)))

(declare-fun bs!849512 () Bool)

(assert (= bs!849512 (and d!1389066 d!1389050)))

(assert (=> bs!849512 (= lambda!171290 lambda!171287)))

(declare-fun lt!1692270 () ListMap!3571)

(declare-fun invariantList!1008 (List!50744) Bool)

(assert (=> d!1389066 (invariantList!1008 (toList!4310 lt!1692270))))

(declare-fun e!2812290 () ListMap!3571)

(assert (=> d!1389066 (= lt!1692270 e!2812290)))

(declare-fun c!770082 () Bool)

(assert (=> d!1389066 (= c!770082 (is-Cons!50621 (toList!4309 lt!1692082)))))

(assert (=> d!1389066 (forall!10240 (toList!4309 lt!1692082) lambda!171290)))

(assert (=> d!1389066 (= (extractMap!1207 (toList!4309 lt!1692082)) lt!1692270)))

(declare-fun b!4514185 () Bool)

(assert (=> b!4514185 (= e!2812290 (addToMapMapFromBucket!678 (_2!28814 (h!56466 (toList!4309 lt!1692082))) (extractMap!1207 (t!357707 (toList!4309 lt!1692082)))))))

(declare-fun b!4514186 () Bool)

(assert (=> b!4514186 (= e!2812290 (ListMap!3572 Nil!50620))))

(assert (= (and d!1389066 c!770082) b!4514185))

(assert (= (and d!1389066 (not c!770082)) b!4514186))

(declare-fun m!5256631 () Bool)

(assert (=> d!1389066 m!5256631))

(declare-fun m!5256633 () Bool)

(assert (=> d!1389066 m!5256633))

(declare-fun m!5256635 () Bool)

(assert (=> b!4514185 m!5256635))

(assert (=> b!4514185 m!5256635))

(declare-fun m!5256637 () Bool)

(assert (=> b!4514185 m!5256637))

(assert (=> b!4513968 d!1389066))

(declare-fun bs!849513 () Bool)

(declare-fun d!1389072 () Bool)

(assert (= bs!849513 (and d!1389072 d!1389046)))

(declare-fun lambda!171293 () Int)

(assert (=> bs!849513 (= lambda!171293 lambda!171284)))

(declare-fun bs!849514 () Bool)

(assert (= bs!849514 (and d!1389072 start!446546)))

(assert (=> bs!849514 (= lambda!171293 lambda!171262)))

(declare-fun bs!849515 () Bool)

(assert (= bs!849515 (and d!1389072 d!1389050)))

(assert (=> bs!849515 (= lambda!171293 lambda!171287)))

(declare-fun bs!849516 () Bool)

(assert (= bs!849516 (and d!1389072 d!1389066)))

(assert (=> bs!849516 (= lambda!171293 lambda!171290)))

(declare-fun bs!849517 () Bool)

(assert (= bs!849517 (and d!1389072 d!1389028)))

(assert (=> bs!849517 (= lambda!171293 lambda!171275)))

(assert (=> d!1389072 (contains!13332 (extractMap!1207 (toList!4309 lt!1692082)) key!3287)))

(declare-fun lt!1692273 () Unit!94004)

(declare-fun choose!29398 (ListLongMap!2941 K!12018 Hashable!5546) Unit!94004)

(assert (=> d!1389072 (= lt!1692273 (choose!29398 lt!1692082 key!3287 hashF!1107))))

(assert (=> d!1389072 (forall!10240 (toList!4309 lt!1692082) lambda!171293)))

(assert (=> d!1389072 (= (lemmaListContainsThenExtractedMapContains!121 lt!1692082 key!3287 hashF!1107) lt!1692273)))

(declare-fun bs!849518 () Bool)

(assert (= bs!849518 d!1389072))

(assert (=> bs!849518 m!5256351))

(assert (=> bs!849518 m!5256351))

(declare-fun m!5256639 () Bool)

(assert (=> bs!849518 m!5256639))

(declare-fun m!5256641 () Bool)

(assert (=> bs!849518 m!5256641))

(declare-fun m!5256643 () Bool)

(assert (=> bs!849518 m!5256643))

(assert (=> b!4513968 d!1389072))

(declare-fun b!4514211 () Bool)

(declare-fun e!2812310 () Unit!94004)

(declare-fun Unit!94014 () Unit!94004)

(assert (=> b!4514211 (= e!2812310 Unit!94014)))

(declare-fun b!4514212 () Bool)

(declare-datatypes ((List!50748 0))(
  ( (Nil!50624) (Cons!50624 (h!56471 K!12018) (t!357710 List!50748)) )
))
(declare-fun e!2812309 () List!50748)

(declare-fun keys!17577 (ListMap!3571) List!50748)

(assert (=> b!4514212 (= e!2812309 (keys!17577 (extractMap!1207 (t!357707 (toList!4309 lm!1477)))))))

(declare-fun d!1389074 () Bool)

(declare-fun e!2812307 () Bool)

(assert (=> d!1389074 e!2812307))

(declare-fun res!1878149 () Bool)

(assert (=> d!1389074 (=> res!1878149 e!2812307)))

(declare-fun e!2812308 () Bool)

(assert (=> d!1389074 (= res!1878149 e!2812308)))

(declare-fun res!1878150 () Bool)

(assert (=> d!1389074 (=> (not res!1878150) (not e!2812308))))

(declare-fun lt!1692300 () Bool)

(assert (=> d!1389074 (= res!1878150 (not lt!1692300))))

(declare-fun lt!1692295 () Bool)

(assert (=> d!1389074 (= lt!1692300 lt!1692295)))

(declare-fun lt!1692296 () Unit!94004)

(declare-fun e!2812311 () Unit!94004)

(assert (=> d!1389074 (= lt!1692296 e!2812311)))

(declare-fun c!770092 () Bool)

(assert (=> d!1389074 (= c!770092 lt!1692295)))

(declare-fun containsKey!1760 (List!50744 K!12018) Bool)

(assert (=> d!1389074 (= lt!1692295 (containsKey!1760 (toList!4310 (extractMap!1207 (t!357707 (toList!4309 lm!1477)))) key!3287))))

(assert (=> d!1389074 (= (contains!13332 (extractMap!1207 (t!357707 (toList!4309 lm!1477))) key!3287) lt!1692300)))

(declare-fun bm!314363 () Bool)

(declare-fun call!314368 () Bool)

(declare-fun contains!13336 (List!50748 K!12018) Bool)

(assert (=> bm!314363 (= call!314368 (contains!13336 e!2812309 key!3287))))

(declare-fun c!770094 () Bool)

(assert (=> bm!314363 (= c!770094 c!770092)))

(declare-fun b!4514213 () Bool)

(declare-fun getKeysList!457 (List!50744) List!50748)

(assert (=> b!4514213 (= e!2812309 (getKeysList!457 (toList!4310 (extractMap!1207 (t!357707 (toList!4309 lm!1477))))))))

(declare-fun b!4514214 () Bool)

(declare-fun e!2812306 () Bool)

(assert (=> b!4514214 (= e!2812306 (contains!13336 (keys!17577 (extractMap!1207 (t!357707 (toList!4309 lm!1477)))) key!3287))))

(declare-fun b!4514215 () Bool)

(assert (=> b!4514215 (= e!2812311 e!2812310)))

(declare-fun c!770093 () Bool)

(assert (=> b!4514215 (= c!770093 call!314368)))

(declare-fun b!4514216 () Bool)

(assert (=> b!4514216 (= e!2812307 e!2812306)))

(declare-fun res!1878151 () Bool)

(assert (=> b!4514216 (=> (not res!1878151) (not e!2812306))))

(declare-datatypes ((Option!11097 0))(
  ( (None!11096) (Some!11096 (v!44668 V!12264)) )
))
(declare-fun isDefined!8384 (Option!11097) Bool)

(declare-fun getValueByKey!1077 (List!50744 K!12018) Option!11097)

(assert (=> b!4514216 (= res!1878151 (isDefined!8384 (getValueByKey!1077 (toList!4310 (extractMap!1207 (t!357707 (toList!4309 lm!1477)))) key!3287)))))

(declare-fun b!4514217 () Bool)

(declare-fun lt!1692297 () Unit!94004)

(assert (=> b!4514217 (= e!2812311 lt!1692297)))

(declare-fun lt!1692293 () Unit!94004)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!981 (List!50744 K!12018) Unit!94004)

(assert (=> b!4514217 (= lt!1692293 (lemmaContainsKeyImpliesGetValueByKeyDefined!981 (toList!4310 (extractMap!1207 (t!357707 (toList!4309 lm!1477)))) key!3287))))

(assert (=> b!4514217 (isDefined!8384 (getValueByKey!1077 (toList!4310 (extractMap!1207 (t!357707 (toList!4309 lm!1477)))) key!3287))))

(declare-fun lt!1692298 () Unit!94004)

(assert (=> b!4514217 (= lt!1692298 lt!1692293)))

(declare-fun lemmaInListThenGetKeysListContains!453 (List!50744 K!12018) Unit!94004)

(assert (=> b!4514217 (= lt!1692297 (lemmaInListThenGetKeysListContains!453 (toList!4310 (extractMap!1207 (t!357707 (toList!4309 lm!1477)))) key!3287))))

(assert (=> b!4514217 call!314368))

(declare-fun b!4514218 () Bool)

(assert (=> b!4514218 (= e!2812308 (not (contains!13336 (keys!17577 (extractMap!1207 (t!357707 (toList!4309 lm!1477)))) key!3287)))))

(declare-fun b!4514219 () Bool)

(assert (=> b!4514219 false))

(declare-fun lt!1692294 () Unit!94004)

(declare-fun lt!1692299 () Unit!94004)

(assert (=> b!4514219 (= lt!1692294 lt!1692299)))

(assert (=> b!4514219 (containsKey!1760 (toList!4310 (extractMap!1207 (t!357707 (toList!4309 lm!1477)))) key!3287)))

(declare-fun lemmaInGetKeysListThenContainsKey!456 (List!50744 K!12018) Unit!94004)

(assert (=> b!4514219 (= lt!1692299 (lemmaInGetKeysListThenContainsKey!456 (toList!4310 (extractMap!1207 (t!357707 (toList!4309 lm!1477)))) key!3287))))

(declare-fun Unit!94017 () Unit!94004)

(assert (=> b!4514219 (= e!2812310 Unit!94017)))

(assert (= (and d!1389074 c!770092) b!4514217))

(assert (= (and d!1389074 (not c!770092)) b!4514215))

(assert (= (and b!4514215 c!770093) b!4514219))

(assert (= (and b!4514215 (not c!770093)) b!4514211))

(assert (= (or b!4514217 b!4514215) bm!314363))

(assert (= (and bm!314363 c!770094) b!4514213))

(assert (= (and bm!314363 (not c!770094)) b!4514212))

(assert (= (and d!1389074 res!1878150) b!4514218))

(assert (= (and d!1389074 (not res!1878149)) b!4514216))

(assert (= (and b!4514216 res!1878151) b!4514214))

(declare-fun m!5256653 () Bool)

(assert (=> d!1389074 m!5256653))

(assert (=> b!4514218 m!5256349))

(declare-fun m!5256655 () Bool)

(assert (=> b!4514218 m!5256655))

(assert (=> b!4514218 m!5256655))

(declare-fun m!5256657 () Bool)

(assert (=> b!4514218 m!5256657))

(assert (=> b!4514219 m!5256653))

(declare-fun m!5256659 () Bool)

(assert (=> b!4514219 m!5256659))

(declare-fun m!5256661 () Bool)

(assert (=> b!4514213 m!5256661))

(declare-fun m!5256663 () Bool)

(assert (=> bm!314363 m!5256663))

(declare-fun m!5256665 () Bool)

(assert (=> b!4514216 m!5256665))

(assert (=> b!4514216 m!5256665))

(declare-fun m!5256667 () Bool)

(assert (=> b!4514216 m!5256667))

(declare-fun m!5256669 () Bool)

(assert (=> b!4514217 m!5256669))

(assert (=> b!4514217 m!5256665))

(assert (=> b!4514217 m!5256665))

(assert (=> b!4514217 m!5256667))

(declare-fun m!5256671 () Bool)

(assert (=> b!4514217 m!5256671))

(assert (=> b!4514212 m!5256349))

(assert (=> b!4514212 m!5256655))

(assert (=> b!4514214 m!5256349))

(assert (=> b!4514214 m!5256655))

(assert (=> b!4514214 m!5256655))

(assert (=> b!4514214 m!5256657))

(assert (=> b!4513968 d!1389074))

(declare-fun bs!849521 () Bool)

(declare-fun d!1389078 () Bool)

(assert (= bs!849521 (and d!1389078 d!1389046)))

(declare-fun lambda!171297 () Int)

(assert (=> bs!849521 (= lambda!171297 lambda!171284)))

(declare-fun bs!849522 () Bool)

(assert (= bs!849522 (and d!1389078 d!1389072)))

(assert (=> bs!849522 (= lambda!171297 lambda!171293)))

(declare-fun bs!849523 () Bool)

(assert (= bs!849523 (and d!1389078 start!446546)))

(assert (=> bs!849523 (= lambda!171297 lambda!171262)))

(declare-fun bs!849524 () Bool)

(assert (= bs!849524 (and d!1389078 d!1389050)))

(assert (=> bs!849524 (= lambda!171297 lambda!171287)))

(declare-fun bs!849525 () Bool)

(assert (= bs!849525 (and d!1389078 d!1389066)))

(assert (=> bs!849525 (= lambda!171297 lambda!171290)))

(declare-fun bs!849526 () Bool)

(assert (= bs!849526 (and d!1389078 d!1389028)))

(assert (=> bs!849526 (= lambda!171297 lambda!171275)))

(declare-fun lt!1692301 () ListMap!3571)

(assert (=> d!1389078 (invariantList!1008 (toList!4310 lt!1692301))))

(declare-fun e!2812312 () ListMap!3571)

(assert (=> d!1389078 (= lt!1692301 e!2812312)))

(declare-fun c!770095 () Bool)

(assert (=> d!1389078 (= c!770095 (is-Cons!50621 (t!357707 (toList!4309 lm!1477))))))

(assert (=> d!1389078 (forall!10240 (t!357707 (toList!4309 lm!1477)) lambda!171297)))

(assert (=> d!1389078 (= (extractMap!1207 (t!357707 (toList!4309 lm!1477))) lt!1692301)))

(declare-fun b!4514220 () Bool)

(assert (=> b!4514220 (= e!2812312 (addToMapMapFromBucket!678 (_2!28814 (h!56466 (t!357707 (toList!4309 lm!1477)))) (extractMap!1207 (t!357707 (t!357707 (toList!4309 lm!1477))))))))

(declare-fun b!4514221 () Bool)

(assert (=> b!4514221 (= e!2812312 (ListMap!3572 Nil!50620))))

(assert (= (and d!1389078 c!770095) b!4514220))

(assert (= (and d!1389078 (not c!770095)) b!4514221))

(declare-fun m!5256673 () Bool)

(assert (=> d!1389078 m!5256673))

(declare-fun m!5256675 () Bool)

(assert (=> d!1389078 m!5256675))

(declare-fun m!5256677 () Bool)

(assert (=> b!4514220 m!5256677))

(assert (=> b!4514220 m!5256677))

(declare-fun m!5256679 () Bool)

(assert (=> b!4514220 m!5256679))

(assert (=> b!4513968 d!1389078))

(declare-fun b!4514222 () Bool)

(declare-fun e!2812317 () Unit!94004)

(declare-fun Unit!94019 () Unit!94004)

(assert (=> b!4514222 (= e!2812317 Unit!94019)))

(declare-fun b!4514223 () Bool)

(declare-fun e!2812316 () List!50748)

(assert (=> b!4514223 (= e!2812316 (keys!17577 lt!1692092))))

(declare-fun d!1389080 () Bool)

(declare-fun e!2812314 () Bool)

(assert (=> d!1389080 e!2812314))

(declare-fun res!1878152 () Bool)

(assert (=> d!1389080 (=> res!1878152 e!2812314)))

(declare-fun e!2812315 () Bool)

(assert (=> d!1389080 (= res!1878152 e!2812315)))

(declare-fun res!1878153 () Bool)

(assert (=> d!1389080 (=> (not res!1878153) (not e!2812315))))

(declare-fun lt!1692309 () Bool)

(assert (=> d!1389080 (= res!1878153 (not lt!1692309))))

(declare-fun lt!1692304 () Bool)

(assert (=> d!1389080 (= lt!1692309 lt!1692304)))

(declare-fun lt!1692305 () Unit!94004)

(declare-fun e!2812318 () Unit!94004)

(assert (=> d!1389080 (= lt!1692305 e!2812318)))

(declare-fun c!770096 () Bool)

(assert (=> d!1389080 (= c!770096 lt!1692304)))

(assert (=> d!1389080 (= lt!1692304 (containsKey!1760 (toList!4310 lt!1692092) key!3287))))

(assert (=> d!1389080 (= (contains!13332 lt!1692092 key!3287) lt!1692309)))

(declare-fun bm!314364 () Bool)

(declare-fun call!314369 () Bool)

(assert (=> bm!314364 (= call!314369 (contains!13336 e!2812316 key!3287))))

(declare-fun c!770098 () Bool)

(assert (=> bm!314364 (= c!770098 c!770096)))

(declare-fun b!4514224 () Bool)

(assert (=> b!4514224 (= e!2812316 (getKeysList!457 (toList!4310 lt!1692092)))))

(declare-fun b!4514225 () Bool)

(declare-fun e!2812313 () Bool)

(assert (=> b!4514225 (= e!2812313 (contains!13336 (keys!17577 lt!1692092) key!3287))))

(declare-fun b!4514226 () Bool)

(assert (=> b!4514226 (= e!2812318 e!2812317)))

(declare-fun c!770097 () Bool)

(assert (=> b!4514226 (= c!770097 call!314369)))

(declare-fun b!4514227 () Bool)

(assert (=> b!4514227 (= e!2812314 e!2812313)))

(declare-fun res!1878154 () Bool)

(assert (=> b!4514227 (=> (not res!1878154) (not e!2812313))))

(assert (=> b!4514227 (= res!1878154 (isDefined!8384 (getValueByKey!1077 (toList!4310 lt!1692092) key!3287)))))

(declare-fun b!4514228 () Bool)

(declare-fun lt!1692306 () Unit!94004)

(assert (=> b!4514228 (= e!2812318 lt!1692306)))

(declare-fun lt!1692302 () Unit!94004)

(assert (=> b!4514228 (= lt!1692302 (lemmaContainsKeyImpliesGetValueByKeyDefined!981 (toList!4310 lt!1692092) key!3287))))

(assert (=> b!4514228 (isDefined!8384 (getValueByKey!1077 (toList!4310 lt!1692092) key!3287))))

(declare-fun lt!1692307 () Unit!94004)

(assert (=> b!4514228 (= lt!1692307 lt!1692302)))

(assert (=> b!4514228 (= lt!1692306 (lemmaInListThenGetKeysListContains!453 (toList!4310 lt!1692092) key!3287))))

(assert (=> b!4514228 call!314369))

(declare-fun b!4514229 () Bool)

(assert (=> b!4514229 (= e!2812315 (not (contains!13336 (keys!17577 lt!1692092) key!3287)))))

(declare-fun b!4514230 () Bool)

(assert (=> b!4514230 false))

(declare-fun lt!1692303 () Unit!94004)

(declare-fun lt!1692308 () Unit!94004)

(assert (=> b!4514230 (= lt!1692303 lt!1692308)))

(assert (=> b!4514230 (containsKey!1760 (toList!4310 lt!1692092) key!3287)))

(assert (=> b!4514230 (= lt!1692308 (lemmaInGetKeysListThenContainsKey!456 (toList!4310 lt!1692092) key!3287))))

(declare-fun Unit!94021 () Unit!94004)

(assert (=> b!4514230 (= e!2812317 Unit!94021)))

(assert (= (and d!1389080 c!770096) b!4514228))

(assert (= (and d!1389080 (not c!770096)) b!4514226))

(assert (= (and b!4514226 c!770097) b!4514230))

(assert (= (and b!4514226 (not c!770097)) b!4514222))

(assert (= (or b!4514228 b!4514226) bm!314364))

(assert (= (and bm!314364 c!770098) b!4514224))

(assert (= (and bm!314364 (not c!770098)) b!4514223))

(assert (= (and d!1389080 res!1878153) b!4514229))

(assert (= (and d!1389080 (not res!1878152)) b!4514227))

(assert (= (and b!4514227 res!1878154) b!4514225))

(declare-fun m!5256681 () Bool)

(assert (=> d!1389080 m!5256681))

(declare-fun m!5256683 () Bool)

(assert (=> b!4514229 m!5256683))

(assert (=> b!4514229 m!5256683))

(declare-fun m!5256685 () Bool)

(assert (=> b!4514229 m!5256685))

(assert (=> b!4514230 m!5256681))

(declare-fun m!5256687 () Bool)

(assert (=> b!4514230 m!5256687))

(declare-fun m!5256689 () Bool)

(assert (=> b!4514224 m!5256689))

(declare-fun m!5256691 () Bool)

(assert (=> bm!314364 m!5256691))

(declare-fun m!5256693 () Bool)

(assert (=> b!4514227 m!5256693))

(assert (=> b!4514227 m!5256693))

(declare-fun m!5256695 () Bool)

(assert (=> b!4514227 m!5256695))

(declare-fun m!5256697 () Bool)

(assert (=> b!4514228 m!5256697))

(assert (=> b!4514228 m!5256693))

(assert (=> b!4514228 m!5256693))

(assert (=> b!4514228 m!5256695))

(declare-fun m!5256699 () Bool)

(assert (=> b!4514228 m!5256699))

(assert (=> b!4514223 m!5256683))

(assert (=> b!4514225 m!5256683))

(assert (=> b!4514225 m!5256683))

(assert (=> b!4514225 m!5256685))

(assert (=> b!4513968 d!1389080))

(declare-fun d!1389082 () Bool)

(assert (=> d!1389082 (= (apply!11888 lt!1692082 hash!344) (get!16569 (getValueByKey!1074 (toList!4309 lt!1692082) hash!344)))))

(declare-fun bs!849527 () Bool)

(assert (= bs!849527 d!1389082))

(declare-fun m!5256701 () Bool)

(assert (=> bs!849527 m!5256701))

(assert (=> bs!849527 m!5256701))

(declare-fun m!5256703 () Bool)

(assert (=> bs!849527 m!5256703))

(assert (=> b!4513962 d!1389082))

(declare-fun bs!849528 () Bool)

(declare-fun d!1389084 () Bool)

(assert (= bs!849528 (and d!1389084 d!1389046)))

(declare-fun lambda!171298 () Int)

(assert (=> bs!849528 (= lambda!171298 lambda!171284)))

(declare-fun bs!849529 () Bool)

(assert (= bs!849529 (and d!1389084 d!1389072)))

(assert (=> bs!849529 (= lambda!171298 lambda!171293)))

(declare-fun bs!849530 () Bool)

(assert (= bs!849530 (and d!1389084 start!446546)))

(assert (=> bs!849530 (= lambda!171298 lambda!171262)))

(declare-fun bs!849531 () Bool)

(assert (= bs!849531 (and d!1389084 d!1389050)))

(assert (=> bs!849531 (= lambda!171298 lambda!171287)))

(declare-fun bs!849532 () Bool)

(assert (= bs!849532 (and d!1389084 d!1389078)))

(assert (=> bs!849532 (= lambda!171298 lambda!171297)))

(declare-fun bs!849533 () Bool)

(assert (= bs!849533 (and d!1389084 d!1389066)))

(assert (=> bs!849533 (= lambda!171298 lambda!171290)))

(declare-fun bs!849534 () Bool)

(assert (= bs!849534 (and d!1389084 d!1389028)))

(assert (=> bs!849534 (= lambda!171298 lambda!171275)))

(declare-fun lt!1692310 () ListMap!3571)

(assert (=> d!1389084 (invariantList!1008 (toList!4310 lt!1692310))))

(declare-fun e!2812319 () ListMap!3571)

(assert (=> d!1389084 (= lt!1692310 e!2812319)))

(declare-fun c!770099 () Bool)

(assert (=> d!1389084 (= c!770099 (is-Cons!50621 (toList!4309 (+!1521 lt!1692082 lt!1692089))))))

(assert (=> d!1389084 (forall!10240 (toList!4309 (+!1521 lt!1692082 lt!1692089)) lambda!171298)))

(assert (=> d!1389084 (= (extractMap!1207 (toList!4309 (+!1521 lt!1692082 lt!1692089))) lt!1692310)))

(declare-fun b!4514231 () Bool)

(assert (=> b!4514231 (= e!2812319 (addToMapMapFromBucket!678 (_2!28814 (h!56466 (toList!4309 (+!1521 lt!1692082 lt!1692089)))) (extractMap!1207 (t!357707 (toList!4309 (+!1521 lt!1692082 lt!1692089))))))))

(declare-fun b!4514232 () Bool)

(assert (=> b!4514232 (= e!2812319 (ListMap!3572 Nil!50620))))

(assert (= (and d!1389084 c!770099) b!4514231))

(assert (= (and d!1389084 (not c!770099)) b!4514232))

(declare-fun m!5256705 () Bool)

(assert (=> d!1389084 m!5256705))

(declare-fun m!5256707 () Bool)

(assert (=> d!1389084 m!5256707))

(declare-fun m!5256709 () Bool)

(assert (=> b!4514231 m!5256709))

(assert (=> b!4514231 m!5256709))

(declare-fun m!5256711 () Bool)

(assert (=> b!4514231 m!5256711))

(assert (=> b!4513961 d!1389084))

(declare-fun bs!849543 () Bool)

(declare-fun d!1389086 () Bool)

(assert (= bs!849543 (and d!1389086 d!1389046)))

(declare-fun lambda!171305 () Int)

(assert (=> bs!849543 (= lambda!171305 lambda!171284)))

(declare-fun bs!849544 () Bool)

(assert (= bs!849544 (and d!1389086 d!1389072)))

(assert (=> bs!849544 (= lambda!171305 lambda!171293)))

(declare-fun bs!849545 () Bool)

(assert (= bs!849545 (and d!1389086 start!446546)))

(assert (=> bs!849545 (= lambda!171305 lambda!171262)))

(declare-fun bs!849546 () Bool)

(assert (= bs!849546 (and d!1389086 d!1389050)))

(assert (=> bs!849546 (= lambda!171305 lambda!171287)))

(declare-fun bs!849547 () Bool)

(assert (= bs!849547 (and d!1389086 d!1389078)))

(assert (=> bs!849547 (= lambda!171305 lambda!171297)))

(declare-fun bs!849548 () Bool)

(assert (= bs!849548 (and d!1389086 d!1389066)))

(assert (=> bs!849548 (= lambda!171305 lambda!171290)))

(declare-fun bs!849549 () Bool)

(assert (= bs!849549 (and d!1389086 d!1389084)))

(assert (=> bs!849549 (= lambda!171305 lambda!171298)))

(declare-fun bs!849550 () Bool)

(assert (= bs!849550 (and d!1389086 d!1389028)))

(assert (=> bs!849550 (= lambda!171305 lambda!171275)))

(assert (=> d!1389086 (eq!608 (extractMap!1207 (toList!4309 (+!1521 lt!1692082 (tuple2!51041 hash!344 newBucket!178)))) (-!377 (extractMap!1207 (toList!4309 lt!1692082)) key!3287))))

(declare-fun lt!1692317 () Unit!94004)

(declare-fun choose!29400 (ListLongMap!2941 (_ BitVec 64) List!50744 K!12018 Hashable!5546) Unit!94004)

(assert (=> d!1389086 (= lt!1692317 (choose!29400 lt!1692082 hash!344 newBucket!178 key!3287 hashF!1107))))

(assert (=> d!1389086 (forall!10240 (toList!4309 lt!1692082) lambda!171305)))

(assert (=> d!1389086 (= (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMap!136 lt!1692082 hash!344 newBucket!178 key!3287 hashF!1107) lt!1692317)))

(declare-fun bs!849551 () Bool)

(assert (= bs!849551 d!1389086))

(declare-fun m!5256727 () Bool)

(assert (=> bs!849551 m!5256727))

(declare-fun m!5256729 () Bool)

(assert (=> bs!849551 m!5256729))

(declare-fun m!5256731 () Bool)

(assert (=> bs!849551 m!5256731))

(declare-fun m!5256733 () Bool)

(assert (=> bs!849551 m!5256733))

(declare-fun m!5256735 () Bool)

(assert (=> bs!849551 m!5256735))

(assert (=> bs!849551 m!5256351))

(assert (=> bs!849551 m!5256729))

(declare-fun m!5256737 () Bool)

(assert (=> bs!849551 m!5256737))

(assert (=> bs!849551 m!5256727))

(assert (=> bs!849551 m!5256351))

(assert (=> b!4513961 d!1389086))

(declare-fun d!1389092 () Bool)

(assert (=> d!1389092 (= (eq!608 lt!1692070 lt!1692087) (= (content!8330 (toList!4310 lt!1692070)) (content!8330 (toList!4310 lt!1692087))))))

(declare-fun bs!849552 () Bool)

(assert (= bs!849552 d!1389092))

(declare-fun m!5256739 () Bool)

(assert (=> bs!849552 m!5256739))

(declare-fun m!5256741 () Bool)

(assert (=> bs!849552 m!5256741))

(assert (=> b!4513961 d!1389092))

(declare-fun d!1389094 () Bool)

(declare-fun e!2812329 () Bool)

(assert (=> d!1389094 e!2812329))

(declare-fun res!1878163 () Bool)

(assert (=> d!1389094 (=> (not res!1878163) (not e!2812329))))

(declare-fun lt!1692323 () ListMap!3571)

(assert (=> d!1389094 (= res!1878163 (not (contains!13332 lt!1692323 key!3287)))))

(declare-fun removePresrvNoDuplicatedKeys!132 (List!50744 K!12018) List!50744)

(assert (=> d!1389094 (= lt!1692323 (ListMap!3572 (removePresrvNoDuplicatedKeys!132 (toList!4310 lt!1692092) key!3287)))))

(assert (=> d!1389094 (= (-!377 lt!1692092 key!3287) lt!1692323)))

(declare-fun b!4514243 () Bool)

(declare-fun content!8333 (List!50748) (Set K!12018))

(assert (=> b!4514243 (= e!2812329 (= (set.minus (content!8333 (keys!17577 lt!1692092)) (set.insert key!3287 (as set.empty (Set K!12018)))) (content!8333 (keys!17577 lt!1692323))))))

(assert (= (and d!1389094 res!1878163) b!4514243))

(declare-fun m!5256755 () Bool)

(assert (=> d!1389094 m!5256755))

(declare-fun m!5256757 () Bool)

(assert (=> d!1389094 m!5256757))

(declare-fun m!5256759 () Bool)

(assert (=> b!4514243 m!5256759))

(declare-fun m!5256761 () Bool)

(assert (=> b!4514243 m!5256761))

(declare-fun m!5256763 () Bool)

(assert (=> b!4514243 m!5256763))

(assert (=> b!4514243 m!5256683))

(declare-fun m!5256765 () Bool)

(assert (=> b!4514243 m!5256765))

(assert (=> b!4514243 m!5256761))

(assert (=> b!4514243 m!5256683))

(assert (=> b!4513961 d!1389094))

(declare-fun d!1389102 () Bool)

(declare-fun e!2812330 () Bool)

(assert (=> d!1389102 e!2812330))

(declare-fun res!1878165 () Bool)

(assert (=> d!1389102 (=> (not res!1878165) (not e!2812330))))

(declare-fun lt!1692326 () ListLongMap!2941)

(assert (=> d!1389102 (= res!1878165 (contains!13331 lt!1692326 (_1!28814 lt!1692084)))))

(declare-fun lt!1692327 () List!50745)

(assert (=> d!1389102 (= lt!1692326 (ListLongMap!2942 lt!1692327))))

(declare-fun lt!1692324 () Unit!94004)

(declare-fun lt!1692325 () Unit!94004)

(assert (=> d!1389102 (= lt!1692324 lt!1692325)))

(assert (=> d!1389102 (= (getValueByKey!1074 lt!1692327 (_1!28814 lt!1692084)) (Some!11093 (_2!28814 lt!1692084)))))

(assert (=> d!1389102 (= lt!1692325 (lemmaContainsTupThenGetReturnValue!663 lt!1692327 (_1!28814 lt!1692084) (_2!28814 lt!1692084)))))

(assert (=> d!1389102 (= lt!1692327 (insertStrictlySorted!399 (toList!4309 lt!1692082) (_1!28814 lt!1692084) (_2!28814 lt!1692084)))))

(assert (=> d!1389102 (= (+!1521 lt!1692082 lt!1692084) lt!1692326)))

(declare-fun b!4514244 () Bool)

(declare-fun res!1878164 () Bool)

(assert (=> b!4514244 (=> (not res!1878164) (not e!2812330))))

(assert (=> b!4514244 (= res!1878164 (= (getValueByKey!1074 (toList!4309 lt!1692326) (_1!28814 lt!1692084)) (Some!11093 (_2!28814 lt!1692084))))))

(declare-fun b!4514245 () Bool)

(assert (=> b!4514245 (= e!2812330 (contains!13330 (toList!4309 lt!1692326) lt!1692084))))

(assert (= (and d!1389102 res!1878165) b!4514244))

(assert (= (and b!4514244 res!1878164) b!4514245))

(declare-fun m!5256767 () Bool)

(assert (=> d!1389102 m!5256767))

(declare-fun m!5256769 () Bool)

(assert (=> d!1389102 m!5256769))

(declare-fun m!5256771 () Bool)

(assert (=> d!1389102 m!5256771))

(declare-fun m!5256773 () Bool)

(assert (=> d!1389102 m!5256773))

(declare-fun m!5256775 () Bool)

(assert (=> b!4514244 m!5256775))

(declare-fun m!5256777 () Bool)

(assert (=> b!4514245 m!5256777))

(assert (=> b!4513961 d!1389102))

(declare-fun d!1389104 () Bool)

(assert (=> d!1389104 (= (eq!608 lt!1692083 lt!1692085) (= (content!8330 (toList!4310 lt!1692083)) (content!8330 (toList!4310 lt!1692085))))))

(declare-fun bs!849555 () Bool)

(assert (= bs!849555 d!1389104))

(assert (=> bs!849555 m!5256483))

(assert (=> bs!849555 m!5256481))

(assert (=> b!4513961 d!1389104))

(declare-fun bs!849556 () Bool)

(declare-fun d!1389106 () Bool)

(assert (= bs!849556 (and d!1389106 d!1389046)))

(declare-fun lambda!171306 () Int)

(assert (=> bs!849556 (= lambda!171306 lambda!171284)))

(declare-fun bs!849557 () Bool)

(assert (= bs!849557 (and d!1389106 d!1389072)))

(assert (=> bs!849557 (= lambda!171306 lambda!171293)))

(declare-fun bs!849558 () Bool)

(assert (= bs!849558 (and d!1389106 start!446546)))

(assert (=> bs!849558 (= lambda!171306 lambda!171262)))

(declare-fun bs!849559 () Bool)

(assert (= bs!849559 (and d!1389106 d!1389086)))

(assert (=> bs!849559 (= lambda!171306 lambda!171305)))

(declare-fun bs!849560 () Bool)

(assert (= bs!849560 (and d!1389106 d!1389050)))

(assert (=> bs!849560 (= lambda!171306 lambda!171287)))

(declare-fun bs!849561 () Bool)

(assert (= bs!849561 (and d!1389106 d!1389078)))

(assert (=> bs!849561 (= lambda!171306 lambda!171297)))

(declare-fun bs!849562 () Bool)

(assert (= bs!849562 (and d!1389106 d!1389066)))

(assert (=> bs!849562 (= lambda!171306 lambda!171290)))

(declare-fun bs!849563 () Bool)

(assert (= bs!849563 (and d!1389106 d!1389084)))

(assert (=> bs!849563 (= lambda!171306 lambda!171298)))

(declare-fun bs!849564 () Bool)

(assert (= bs!849564 (and d!1389106 d!1389028)))

(assert (=> bs!849564 (= lambda!171306 lambda!171275)))

(declare-fun lt!1692328 () ListMap!3571)

(assert (=> d!1389106 (invariantList!1008 (toList!4310 lt!1692328))))

(declare-fun e!2812331 () ListMap!3571)

(assert (=> d!1389106 (= lt!1692328 e!2812331)))

(declare-fun c!770101 () Bool)

(assert (=> d!1389106 (= c!770101 (is-Cons!50621 (toList!4309 lt!1692091)))))

(assert (=> d!1389106 (forall!10240 (toList!4309 lt!1692091) lambda!171306)))

(assert (=> d!1389106 (= (extractMap!1207 (toList!4309 lt!1692091)) lt!1692328)))

(declare-fun b!4514246 () Bool)

(assert (=> b!4514246 (= e!2812331 (addToMapMapFromBucket!678 (_2!28814 (h!56466 (toList!4309 lt!1692091))) (extractMap!1207 (t!357707 (toList!4309 lt!1692091)))))))

(declare-fun b!4514247 () Bool)

(assert (=> b!4514247 (= e!2812331 (ListMap!3572 Nil!50620))))

(assert (= (and d!1389106 c!770101) b!4514246))

(assert (= (and d!1389106 (not c!770101)) b!4514247))

(declare-fun m!5256779 () Bool)

(assert (=> d!1389106 m!5256779))

(declare-fun m!5256781 () Bool)

(assert (=> d!1389106 m!5256781))

(declare-fun m!5256783 () Bool)

(assert (=> b!4514246 m!5256783))

(assert (=> b!4514246 m!5256783))

(declare-fun m!5256785 () Bool)

(assert (=> b!4514246 m!5256785))

(assert (=> b!4513961 d!1389106))

(declare-fun d!1389108 () Bool)

(assert (=> d!1389108 (= (head!9395 lm!1477) (head!9397 (toList!4309 lm!1477)))))

(declare-fun bs!849565 () Bool)

(assert (= bs!849565 d!1389108))

(declare-fun m!5256787 () Bool)

(assert (=> bs!849565 m!5256787))

(assert (=> b!4513961 d!1389108))

(declare-fun d!1389110 () Bool)

(declare-fun e!2812332 () Bool)

(assert (=> d!1389110 e!2812332))

(declare-fun res!1878167 () Bool)

(assert (=> d!1389110 (=> (not res!1878167) (not e!2812332))))

(declare-fun lt!1692331 () ListLongMap!2941)

(assert (=> d!1389110 (= res!1878167 (contains!13331 lt!1692331 (_1!28814 lt!1692089)))))

(declare-fun lt!1692332 () List!50745)

(assert (=> d!1389110 (= lt!1692331 (ListLongMap!2942 lt!1692332))))

(declare-fun lt!1692329 () Unit!94004)

(declare-fun lt!1692330 () Unit!94004)

(assert (=> d!1389110 (= lt!1692329 lt!1692330)))

(assert (=> d!1389110 (= (getValueByKey!1074 lt!1692332 (_1!28814 lt!1692089)) (Some!11093 (_2!28814 lt!1692089)))))

(assert (=> d!1389110 (= lt!1692330 (lemmaContainsTupThenGetReturnValue!663 lt!1692332 (_1!28814 lt!1692089) (_2!28814 lt!1692089)))))

(assert (=> d!1389110 (= lt!1692332 (insertStrictlySorted!399 (toList!4309 lt!1692082) (_1!28814 lt!1692089) (_2!28814 lt!1692089)))))

(assert (=> d!1389110 (= (+!1521 lt!1692082 lt!1692089) lt!1692331)))

(declare-fun b!4514248 () Bool)

(declare-fun res!1878166 () Bool)

(assert (=> b!4514248 (=> (not res!1878166) (not e!2812332))))

(assert (=> b!4514248 (= res!1878166 (= (getValueByKey!1074 (toList!4309 lt!1692331) (_1!28814 lt!1692089)) (Some!11093 (_2!28814 lt!1692089))))))

(declare-fun b!4514249 () Bool)

(assert (=> b!4514249 (= e!2812332 (contains!13330 (toList!4309 lt!1692331) lt!1692089))))

(assert (= (and d!1389110 res!1878167) b!4514248))

(assert (= (and b!4514248 res!1878166) b!4514249))

(declare-fun m!5256789 () Bool)

(assert (=> d!1389110 m!5256789))

(declare-fun m!5256791 () Bool)

(assert (=> d!1389110 m!5256791))

(declare-fun m!5256793 () Bool)

(assert (=> d!1389110 m!5256793))

(declare-fun m!5256795 () Bool)

(assert (=> d!1389110 m!5256795))

(declare-fun m!5256797 () Bool)

(assert (=> b!4514248 m!5256797))

(declare-fun m!5256799 () Bool)

(assert (=> b!4514249 m!5256799))

(assert (=> b!4513961 d!1389110))

(declare-fun d!1389112 () Bool)

(declare-fun e!2812334 () Bool)

(assert (=> d!1389112 e!2812334))

(declare-fun res!1878168 () Bool)

(assert (=> d!1389112 (=> res!1878168 e!2812334)))

(declare-fun lt!1692334 () Bool)

(assert (=> d!1389112 (= res!1878168 (not lt!1692334))))

(declare-fun lt!1692336 () Bool)

(assert (=> d!1389112 (= lt!1692334 lt!1692336)))

(declare-fun lt!1692335 () Unit!94004)

(declare-fun e!2812333 () Unit!94004)

(assert (=> d!1389112 (= lt!1692335 e!2812333)))

(declare-fun c!770102 () Bool)

(assert (=> d!1389112 (= c!770102 lt!1692336)))

(assert (=> d!1389112 (= lt!1692336 (containsKey!1757 (toList!4309 lt!1692082) hash!344))))

(assert (=> d!1389112 (= (contains!13331 lt!1692082 hash!344) lt!1692334)))

(declare-fun b!4514250 () Bool)

(declare-fun lt!1692333 () Unit!94004)

(assert (=> b!4514250 (= e!2812333 lt!1692333)))

(assert (=> b!4514250 (= lt!1692333 (lemmaContainsKeyImpliesGetValueByKeyDefined!978 (toList!4309 lt!1692082) hash!344))))

(assert (=> b!4514250 (isDefined!8381 (getValueByKey!1074 (toList!4309 lt!1692082) hash!344))))

(declare-fun b!4514251 () Bool)

(declare-fun Unit!94032 () Unit!94004)

(assert (=> b!4514251 (= e!2812333 Unit!94032)))

(declare-fun b!4514252 () Bool)

(assert (=> b!4514252 (= e!2812334 (isDefined!8381 (getValueByKey!1074 (toList!4309 lt!1692082) hash!344)))))

(assert (= (and d!1389112 c!770102) b!4514250))

(assert (= (and d!1389112 (not c!770102)) b!4514251))

(assert (= (and d!1389112 (not res!1878168)) b!4514252))

(declare-fun m!5256801 () Bool)

(assert (=> d!1389112 m!5256801))

(declare-fun m!5256803 () Bool)

(assert (=> b!4514250 m!5256803))

(assert (=> b!4514250 m!5256701))

(assert (=> b!4514250 m!5256701))

(declare-fun m!5256805 () Bool)

(assert (=> b!4514250 m!5256805))

(assert (=> b!4514252 m!5256701))

(assert (=> b!4514252 m!5256701))

(assert (=> b!4514252 m!5256805))

(assert (=> b!4513972 d!1389112))

(declare-fun d!1389114 () Bool)

(declare-fun tail!7720 (List!50745) List!50745)

(assert (=> d!1389114 (= (tail!7717 lm!1477) (ListLongMap!2942 (tail!7720 (toList!4309 lm!1477))))))

(declare-fun bs!849566 () Bool)

(assert (= bs!849566 d!1389114))

(declare-fun m!5256807 () Bool)

(assert (=> bs!849566 m!5256807))

(assert (=> b!4513972 d!1389114))

(declare-fun b!4514253 () Bool)

(declare-fun e!2812339 () Unit!94004)

(declare-fun Unit!94034 () Unit!94004)

(assert (=> b!4514253 (= e!2812339 Unit!94034)))

(declare-fun b!4514254 () Bool)

(declare-fun e!2812338 () List!50748)

(assert (=> b!4514254 (= e!2812338 (keys!17577 lt!1692085))))

(declare-fun d!1389116 () Bool)

(declare-fun e!2812336 () Bool)

(assert (=> d!1389116 e!2812336))

(declare-fun res!1878169 () Bool)

(assert (=> d!1389116 (=> res!1878169 e!2812336)))

(declare-fun e!2812337 () Bool)

(assert (=> d!1389116 (= res!1878169 e!2812337)))

(declare-fun res!1878170 () Bool)

(assert (=> d!1389116 (=> (not res!1878170) (not e!2812337))))

(declare-fun lt!1692344 () Bool)

(assert (=> d!1389116 (= res!1878170 (not lt!1692344))))

(declare-fun lt!1692339 () Bool)

(assert (=> d!1389116 (= lt!1692344 lt!1692339)))

(declare-fun lt!1692340 () Unit!94004)

(declare-fun e!2812340 () Unit!94004)

(assert (=> d!1389116 (= lt!1692340 e!2812340)))

(declare-fun c!770103 () Bool)

(assert (=> d!1389116 (= c!770103 lt!1692339)))

(assert (=> d!1389116 (= lt!1692339 (containsKey!1760 (toList!4310 lt!1692085) key!3287))))

(assert (=> d!1389116 (= (contains!13332 lt!1692085 key!3287) lt!1692344)))

(declare-fun bm!314365 () Bool)

(declare-fun call!314370 () Bool)

(assert (=> bm!314365 (= call!314370 (contains!13336 e!2812338 key!3287))))

(declare-fun c!770105 () Bool)

(assert (=> bm!314365 (= c!770105 c!770103)))

(declare-fun b!4514255 () Bool)

(assert (=> b!4514255 (= e!2812338 (getKeysList!457 (toList!4310 lt!1692085)))))

(declare-fun b!4514256 () Bool)

(declare-fun e!2812335 () Bool)

(assert (=> b!4514256 (= e!2812335 (contains!13336 (keys!17577 lt!1692085) key!3287))))

(declare-fun b!4514257 () Bool)

(assert (=> b!4514257 (= e!2812340 e!2812339)))

(declare-fun c!770104 () Bool)

(assert (=> b!4514257 (= c!770104 call!314370)))

(declare-fun b!4514258 () Bool)

(assert (=> b!4514258 (= e!2812336 e!2812335)))

(declare-fun res!1878171 () Bool)

(assert (=> b!4514258 (=> (not res!1878171) (not e!2812335))))

(assert (=> b!4514258 (= res!1878171 (isDefined!8384 (getValueByKey!1077 (toList!4310 lt!1692085) key!3287)))))

(declare-fun b!4514259 () Bool)

(declare-fun lt!1692341 () Unit!94004)

(assert (=> b!4514259 (= e!2812340 lt!1692341)))

(declare-fun lt!1692337 () Unit!94004)

(assert (=> b!4514259 (= lt!1692337 (lemmaContainsKeyImpliesGetValueByKeyDefined!981 (toList!4310 lt!1692085) key!3287))))

(assert (=> b!4514259 (isDefined!8384 (getValueByKey!1077 (toList!4310 lt!1692085) key!3287))))

(declare-fun lt!1692342 () Unit!94004)

(assert (=> b!4514259 (= lt!1692342 lt!1692337)))

(assert (=> b!4514259 (= lt!1692341 (lemmaInListThenGetKeysListContains!453 (toList!4310 lt!1692085) key!3287))))

(assert (=> b!4514259 call!314370))

(declare-fun b!4514260 () Bool)

(assert (=> b!4514260 (= e!2812337 (not (contains!13336 (keys!17577 lt!1692085) key!3287)))))

(declare-fun b!4514261 () Bool)

(assert (=> b!4514261 false))

(declare-fun lt!1692338 () Unit!94004)

(declare-fun lt!1692343 () Unit!94004)

(assert (=> b!4514261 (= lt!1692338 lt!1692343)))

(assert (=> b!4514261 (containsKey!1760 (toList!4310 lt!1692085) key!3287)))

(assert (=> b!4514261 (= lt!1692343 (lemmaInGetKeysListThenContainsKey!456 (toList!4310 lt!1692085) key!3287))))

(declare-fun Unit!94035 () Unit!94004)

(assert (=> b!4514261 (= e!2812339 Unit!94035)))

(assert (= (and d!1389116 c!770103) b!4514259))

(assert (= (and d!1389116 (not c!770103)) b!4514257))

(assert (= (and b!4514257 c!770104) b!4514261))

(assert (= (and b!4514257 (not c!770104)) b!4514253))

(assert (= (or b!4514259 b!4514257) bm!314365))

(assert (= (and bm!314365 c!770105) b!4514255))

(assert (= (and bm!314365 (not c!770105)) b!4514254))

(assert (= (and d!1389116 res!1878170) b!4514260))

(assert (= (and d!1389116 (not res!1878169)) b!4514258))

(assert (= (and b!4514258 res!1878171) b!4514256))

(declare-fun m!5256809 () Bool)

(assert (=> d!1389116 m!5256809))

(declare-fun m!5256811 () Bool)

(assert (=> b!4514260 m!5256811))

(assert (=> b!4514260 m!5256811))

(declare-fun m!5256813 () Bool)

(assert (=> b!4514260 m!5256813))

(assert (=> b!4514261 m!5256809))

(declare-fun m!5256815 () Bool)

(assert (=> b!4514261 m!5256815))

(declare-fun m!5256817 () Bool)

(assert (=> b!4514255 m!5256817))

(declare-fun m!5256819 () Bool)

(assert (=> bm!314365 m!5256819))

(declare-fun m!5256821 () Bool)

(assert (=> b!4514258 m!5256821))

(assert (=> b!4514258 m!5256821))

(declare-fun m!5256823 () Bool)

(assert (=> b!4514258 m!5256823))

(declare-fun m!5256825 () Bool)

(assert (=> b!4514259 m!5256825))

(assert (=> b!4514259 m!5256821))

(assert (=> b!4514259 m!5256821))

(assert (=> b!4514259 m!5256823))

(declare-fun m!5256827 () Bool)

(assert (=> b!4514259 m!5256827))

(assert (=> b!4514254 m!5256811))

(assert (=> b!4514256 m!5256811))

(assert (=> b!4514256 m!5256811))

(assert (=> b!4514256 m!5256813))

(assert (=> b!4513971 d!1389116))

(declare-fun bs!849567 () Bool)

(declare-fun d!1389118 () Bool)

(assert (= bs!849567 (and d!1389118 d!1389046)))

(declare-fun lambda!171307 () Int)

(assert (=> bs!849567 (= lambda!171307 lambda!171284)))

(declare-fun bs!849568 () Bool)

(assert (= bs!849568 (and d!1389118 d!1389072)))

(assert (=> bs!849568 (= lambda!171307 lambda!171293)))

(declare-fun bs!849569 () Bool)

(assert (= bs!849569 (and d!1389118 start!446546)))

(assert (=> bs!849569 (= lambda!171307 lambda!171262)))

(declare-fun bs!849570 () Bool)

(assert (= bs!849570 (and d!1389118 d!1389106)))

(assert (=> bs!849570 (= lambda!171307 lambda!171306)))

(declare-fun bs!849571 () Bool)

(assert (= bs!849571 (and d!1389118 d!1389086)))

(assert (=> bs!849571 (= lambda!171307 lambda!171305)))

(declare-fun bs!849572 () Bool)

(assert (= bs!849572 (and d!1389118 d!1389050)))

(assert (=> bs!849572 (= lambda!171307 lambda!171287)))

(declare-fun bs!849573 () Bool)

(assert (= bs!849573 (and d!1389118 d!1389078)))

(assert (=> bs!849573 (= lambda!171307 lambda!171297)))

(declare-fun bs!849574 () Bool)

(assert (= bs!849574 (and d!1389118 d!1389066)))

(assert (=> bs!849574 (= lambda!171307 lambda!171290)))

(declare-fun bs!849575 () Bool)

(assert (= bs!849575 (and d!1389118 d!1389084)))

(assert (=> bs!849575 (= lambda!171307 lambda!171298)))

(declare-fun bs!849576 () Bool)

(assert (= bs!849576 (and d!1389118 d!1389028)))

(assert (=> bs!849576 (= lambda!171307 lambda!171275)))

(declare-fun lt!1692345 () ListMap!3571)

(assert (=> d!1389118 (invariantList!1008 (toList!4310 lt!1692345))))

(declare-fun e!2812341 () ListMap!3571)

(assert (=> d!1389118 (= lt!1692345 e!2812341)))

(declare-fun c!770106 () Bool)

(assert (=> d!1389118 (= c!770106 (is-Cons!50621 (toList!4309 lm!1477)))))

(assert (=> d!1389118 (forall!10240 (toList!4309 lm!1477) lambda!171307)))

(assert (=> d!1389118 (= (extractMap!1207 (toList!4309 lm!1477)) lt!1692345)))

(declare-fun b!4514262 () Bool)

(assert (=> b!4514262 (= e!2812341 (addToMapMapFromBucket!678 (_2!28814 (h!56466 (toList!4309 lm!1477))) (extractMap!1207 (t!357707 (toList!4309 lm!1477)))))))

(declare-fun b!4514263 () Bool)

(assert (=> b!4514263 (= e!2812341 (ListMap!3572 Nil!50620))))

(assert (= (and d!1389118 c!770106) b!4514262))

(assert (= (and d!1389118 (not c!770106)) b!4514263))

(declare-fun m!5256829 () Bool)

(assert (=> d!1389118 m!5256829))

(declare-fun m!5256831 () Bool)

(assert (=> d!1389118 m!5256831))

(assert (=> b!4514262 m!5256349))

(assert (=> b!4514262 m!5256349))

(declare-fun m!5256833 () Bool)

(assert (=> b!4514262 m!5256833))

(assert (=> b!4513971 d!1389118))

(assert (=> start!446546 d!1389032))

(declare-fun d!1389120 () Bool)

(assert (=> d!1389120 (= (inv!66203 lm!1477) (isStrictlySorted!422 (toList!4309 lm!1477)))))

(declare-fun bs!849577 () Bool)

(assert (= bs!849577 d!1389120))

(assert (=> bs!849577 m!5256569))

(assert (=> start!446546 d!1389120))

(declare-fun d!1389122 () Bool)

(assert (=> d!1389122 (= (eq!608 lt!1692072 lt!1692068) (= (content!8330 (toList!4310 lt!1692072)) (content!8330 (toList!4310 lt!1692068))))))

(declare-fun bs!849578 () Bool)

(assert (= bs!849578 d!1389122))

(declare-fun m!5256835 () Bool)

(assert (=> bs!849578 m!5256835))

(declare-fun m!5256837 () Bool)

(assert (=> bs!849578 m!5256837))

(assert (=> b!4513982 d!1389122))

(declare-fun d!1389124 () Bool)

(assert (=> d!1389124 (= (eq!608 lt!1692074 lt!1692068) (= (content!8330 (toList!4310 lt!1692074)) (content!8330 (toList!4310 lt!1692068))))))

(declare-fun bs!849579 () Bool)

(assert (= bs!849579 d!1389124))

(declare-fun m!5256839 () Bool)

(assert (=> bs!849579 m!5256839))

(assert (=> bs!849579 m!5256837))

(assert (=> b!4513982 d!1389124))

(declare-fun bs!849593 () Bool)

(declare-fun b!4514293 () Bool)

(assert (= bs!849593 (and b!4514293 d!1389030)))

(declare-fun lambda!171369 () Int)

(assert (=> bs!849593 (not (= lambda!171369 lambda!171278))))

(assert (=> b!4514293 true))

(declare-fun bs!849596 () Bool)

(declare-fun b!4514294 () Bool)

(assert (= bs!849596 (and b!4514294 d!1389030)))

(declare-fun lambda!171371 () Int)

(assert (=> bs!849596 (not (= lambda!171371 lambda!171278))))

(declare-fun bs!849598 () Bool)

(assert (= bs!849598 (and b!4514294 b!4514293)))

(assert (=> bs!849598 (= lambda!171371 lambda!171369)))

(assert (=> b!4514294 true))

(declare-fun lambda!171372 () Int)

(assert (=> bs!849596 (not (= lambda!171372 lambda!171278))))

(declare-fun lt!1692460 () ListMap!3571)

(assert (=> bs!849598 (= (= lt!1692460 lt!1692087) (= lambda!171372 lambda!171369))))

(assert (=> b!4514294 (= (= lt!1692460 lt!1692087) (= lambda!171372 lambda!171371))))

(assert (=> b!4514294 true))

(declare-fun bs!849605 () Bool)

(declare-fun d!1389126 () Bool)

(assert (= bs!849605 (and d!1389126 d!1389030)))

(declare-fun lambda!171375 () Int)

(assert (=> bs!849605 (not (= lambda!171375 lambda!171278))))

(declare-fun bs!849606 () Bool)

(assert (= bs!849606 (and d!1389126 b!4514293)))

(declare-fun lt!1692454 () ListMap!3571)

(assert (=> bs!849606 (= (= lt!1692454 lt!1692087) (= lambda!171375 lambda!171369))))

(declare-fun bs!849607 () Bool)

(assert (= bs!849607 (and d!1389126 b!4514294)))

(assert (=> bs!849607 (= (= lt!1692454 lt!1692087) (= lambda!171375 lambda!171371))))

(assert (=> bs!849607 (= (= lt!1692454 lt!1692460) (= lambda!171375 lambda!171372))))

(assert (=> d!1389126 true))

(declare-fun e!2812358 () ListMap!3571)

(assert (=> b!4514293 (= e!2812358 lt!1692087)))

(declare-fun lt!1692452 () Unit!94004)

(declare-fun call!314386 () Unit!94004)

(assert (=> b!4514293 (= lt!1692452 call!314386)))

(declare-fun call!314387 () Bool)

(assert (=> b!4514293 call!314387))

(declare-fun lt!1692466 () Unit!94004)

(assert (=> b!4514293 (= lt!1692466 lt!1692452)))

(declare-fun call!314388 () Bool)

(assert (=> b!4514293 call!314388))

(declare-fun lt!1692456 () Unit!94004)

(declare-fun Unit!94037 () Unit!94004)

(assert (=> b!4514293 (= lt!1692456 Unit!94037)))

(declare-fun e!2812360 () Bool)

(assert (=> d!1389126 e!2812360))

(declare-fun res!1878187 () Bool)

(assert (=> d!1389126 (=> (not res!1878187) (not e!2812360))))

(assert (=> d!1389126 (= res!1878187 (forall!10242 (_2!28814 lt!1692089) lambda!171375))))

(assert (=> d!1389126 (= lt!1692454 e!2812358)))

(declare-fun c!770113 () Bool)

(assert (=> d!1389126 (= c!770113 (is-Nil!50620 (_2!28814 lt!1692089)))))

(assert (=> d!1389126 (noDuplicateKeys!1151 (_2!28814 lt!1692089))))

(assert (=> d!1389126 (= (addToMapMapFromBucket!678 (_2!28814 lt!1692089) lt!1692087) lt!1692454)))

(declare-fun lt!1692470 () ListMap!3571)

(declare-fun bm!314381 () Bool)

(assert (=> bm!314381 (= call!314388 (forall!10242 (ite c!770113 (toList!4310 lt!1692087) (toList!4310 lt!1692470)) (ite c!770113 lambda!171369 lambda!171372)))))

(assert (=> b!4514294 (= e!2812358 lt!1692460)))

(declare-fun +!1524 (ListMap!3571 tuple2!51038) ListMap!3571)

(assert (=> b!4514294 (= lt!1692470 (+!1524 lt!1692087 (h!56465 (_2!28814 lt!1692089))))))

(assert (=> b!4514294 (= lt!1692460 (addToMapMapFromBucket!678 (t!357706 (_2!28814 lt!1692089)) (+!1524 lt!1692087 (h!56465 (_2!28814 lt!1692089)))))))

(declare-fun lt!1692453 () Unit!94004)

(assert (=> b!4514294 (= lt!1692453 call!314386)))

(assert (=> b!4514294 (forall!10242 (toList!4310 lt!1692087) lambda!171371)))

(declare-fun lt!1692463 () Unit!94004)

(assert (=> b!4514294 (= lt!1692463 lt!1692453)))

(assert (=> b!4514294 call!314388))

(declare-fun lt!1692464 () Unit!94004)

(declare-fun Unit!94041 () Unit!94004)

(assert (=> b!4514294 (= lt!1692464 Unit!94041)))

(assert (=> b!4514294 (forall!10242 (t!357706 (_2!28814 lt!1692089)) lambda!171372)))

(declare-fun lt!1692455 () Unit!94004)

(declare-fun Unit!94043 () Unit!94004)

(assert (=> b!4514294 (= lt!1692455 Unit!94043)))

(declare-fun lt!1692472 () Unit!94004)

(declare-fun Unit!94045 () Unit!94004)

(assert (=> b!4514294 (= lt!1692472 Unit!94045)))

(declare-fun lt!1692457 () Unit!94004)

(declare-fun forallContained!2495 (List!50744 Int tuple2!51038) Unit!94004)

(assert (=> b!4514294 (= lt!1692457 (forallContained!2495 (toList!4310 lt!1692470) lambda!171372 (h!56465 (_2!28814 lt!1692089))))))

(assert (=> b!4514294 (contains!13332 lt!1692470 (_1!28813 (h!56465 (_2!28814 lt!1692089))))))

(declare-fun lt!1692459 () Unit!94004)

(declare-fun Unit!94048 () Unit!94004)

(assert (=> b!4514294 (= lt!1692459 Unit!94048)))

(assert (=> b!4514294 (contains!13332 lt!1692460 (_1!28813 (h!56465 (_2!28814 lt!1692089))))))

(declare-fun lt!1692471 () Unit!94004)

(declare-fun Unit!94050 () Unit!94004)

(assert (=> b!4514294 (= lt!1692471 Unit!94050)))

(assert (=> b!4514294 (forall!10242 (_2!28814 lt!1692089) lambda!171372)))

(declare-fun lt!1692469 () Unit!94004)

(declare-fun Unit!94051 () Unit!94004)

(assert (=> b!4514294 (= lt!1692469 Unit!94051)))

(assert (=> b!4514294 (forall!10242 (toList!4310 lt!1692470) lambda!171372)))

(declare-fun lt!1692468 () Unit!94004)

(declare-fun Unit!94052 () Unit!94004)

(assert (=> b!4514294 (= lt!1692468 Unit!94052)))

(declare-fun lt!1692462 () Unit!94004)

(declare-fun Unit!94054 () Unit!94004)

(assert (=> b!4514294 (= lt!1692462 Unit!94054)))

(declare-fun lt!1692467 () Unit!94004)

(declare-fun addForallContainsKeyThenBeforeAdding!330 (ListMap!3571 ListMap!3571 K!12018 V!12264) Unit!94004)

(assert (=> b!4514294 (= lt!1692467 (addForallContainsKeyThenBeforeAdding!330 lt!1692087 lt!1692460 (_1!28813 (h!56465 (_2!28814 lt!1692089))) (_2!28813 (h!56465 (_2!28814 lt!1692089)))))))

(assert (=> b!4514294 (forall!10242 (toList!4310 lt!1692087) lambda!171372)))

(declare-fun lt!1692461 () Unit!94004)

(assert (=> b!4514294 (= lt!1692461 lt!1692467)))

(assert (=> b!4514294 (forall!10242 (toList!4310 lt!1692087) lambda!171372)))

(declare-fun lt!1692458 () Unit!94004)

(declare-fun Unit!94056 () Unit!94004)

(assert (=> b!4514294 (= lt!1692458 Unit!94056)))

(declare-fun res!1878188 () Bool)

(assert (=> b!4514294 (= res!1878188 (forall!10242 (_2!28814 lt!1692089) lambda!171372))))

(declare-fun e!2812359 () Bool)

(assert (=> b!4514294 (=> (not res!1878188) (not e!2812359))))

(assert (=> b!4514294 e!2812359))

(declare-fun lt!1692465 () Unit!94004)

(declare-fun Unit!94057 () Unit!94004)

(assert (=> b!4514294 (= lt!1692465 Unit!94057)))

(declare-fun b!4514295 () Bool)

(assert (=> b!4514295 (= e!2812359 call!314387)))

(declare-fun b!4514296 () Bool)

(declare-fun res!1878189 () Bool)

(assert (=> b!4514296 (=> (not res!1878189) (not e!2812360))))

(assert (=> b!4514296 (= res!1878189 (forall!10242 (toList!4310 lt!1692087) lambda!171375))))

(declare-fun bm!314382 () Bool)

(assert (=> bm!314382 (= call!314387 (forall!10242 (toList!4310 lt!1692087) (ite c!770113 lambda!171369 lambda!171372)))))

(declare-fun bm!314383 () Bool)

(declare-fun lemmaContainsAllItsOwnKeys!330 (ListMap!3571) Unit!94004)

(assert (=> bm!314383 (= call!314386 (lemmaContainsAllItsOwnKeys!330 lt!1692087))))

(declare-fun b!4514297 () Bool)

(assert (=> b!4514297 (= e!2812360 (invariantList!1008 (toList!4310 lt!1692454)))))

(assert (= (and d!1389126 c!770113) b!4514293))

(assert (= (and d!1389126 (not c!770113)) b!4514294))

(assert (= (and b!4514294 res!1878188) b!4514295))

(assert (= (or b!4514293 b!4514295) bm!314382))

(assert (= (or b!4514293 b!4514294) bm!314381))

(assert (= (or b!4514293 b!4514294) bm!314383))

(assert (= (and d!1389126 res!1878187) b!4514296))

(assert (= (and b!4514296 res!1878189) b!4514297))

(declare-fun m!5256887 () Bool)

(assert (=> b!4514296 m!5256887))

(declare-fun m!5256889 () Bool)

(assert (=> b!4514297 m!5256889))

(declare-fun m!5256891 () Bool)

(assert (=> b!4514294 m!5256891))

(declare-fun m!5256893 () Bool)

(assert (=> b!4514294 m!5256893))

(declare-fun m!5256895 () Bool)

(assert (=> b!4514294 m!5256895))

(declare-fun m!5256897 () Bool)

(assert (=> b!4514294 m!5256897))

(declare-fun m!5256899 () Bool)

(assert (=> b!4514294 m!5256899))

(assert (=> b!4514294 m!5256895))

(declare-fun m!5256901 () Bool)

(assert (=> b!4514294 m!5256901))

(declare-fun m!5256903 () Bool)

(assert (=> b!4514294 m!5256903))

(declare-fun m!5256905 () Bool)

(assert (=> b!4514294 m!5256905))

(declare-fun m!5256907 () Bool)

(assert (=> b!4514294 m!5256907))

(declare-fun m!5256909 () Bool)

(assert (=> b!4514294 m!5256909))

(declare-fun m!5256911 () Bool)

(assert (=> b!4514294 m!5256911))

(assert (=> b!4514294 m!5256909))

(assert (=> b!4514294 m!5256907))

(declare-fun m!5256913 () Bool)

(assert (=> bm!314382 m!5256913))

(declare-fun m!5256915 () Bool)

(assert (=> d!1389126 m!5256915))

(declare-fun m!5256917 () Bool)

(assert (=> d!1389126 m!5256917))

(declare-fun m!5256919 () Bool)

(assert (=> bm!314381 m!5256919))

(declare-fun m!5256921 () Bool)

(assert (=> bm!314383 m!5256921))

(assert (=> b!4513982 d!1389126))

(declare-fun d!1389136 () Bool)

(assert (=> d!1389136 (eq!608 (addToMapMapFromBucket!678 (_2!28814 lt!1692089) lt!1692070) (addToMapMapFromBucket!678 (_2!28814 lt!1692089) lt!1692087))))

(declare-fun lt!1692498 () Unit!94004)

(declare-fun choose!29402 (ListMap!3571 ListMap!3571 List!50744) Unit!94004)

(assert (=> d!1389136 (= lt!1692498 (choose!29402 lt!1692070 lt!1692087 (_2!28814 lt!1692089)))))

(assert (=> d!1389136 (noDuplicateKeys!1151 (_2!28814 lt!1692089))))

(assert (=> d!1389136 (= (lemmaAddToMapFromBucketPreservesEquivalence!27 lt!1692070 lt!1692087 (_2!28814 lt!1692089)) lt!1692498)))

(declare-fun bs!849614 () Bool)

(assert (= bs!849614 d!1389136))

(assert (=> bs!849614 m!5256917))

(declare-fun m!5256957 () Bool)

(assert (=> bs!849614 m!5256957))

(assert (=> bs!849614 m!5256345))

(assert (=> bs!849614 m!5256363))

(declare-fun m!5256959 () Bool)

(assert (=> bs!849614 m!5256959))

(assert (=> bs!849614 m!5256363))

(assert (=> bs!849614 m!5256345))

(assert (=> b!4513982 d!1389136))

(declare-fun d!1389140 () Bool)

(assert (=> d!1389140 (= (eq!608 lt!1692072 lt!1692074) (= (content!8330 (toList!4310 lt!1692072)) (content!8330 (toList!4310 lt!1692074))))))

(declare-fun bs!849615 () Bool)

(assert (= bs!849615 d!1389140))

(assert (=> bs!849615 m!5256835))

(assert (=> bs!849615 m!5256839))

(assert (=> b!4513981 d!1389140))

(declare-fun bs!849617 () Bool)

(declare-fun b!4514305 () Bool)

(assert (= bs!849617 (and b!4514305 d!1389126)))

(declare-fun lambda!171377 () Int)

(assert (=> bs!849617 (= (= lt!1692070 lt!1692454) (= lambda!171377 lambda!171375))))

(declare-fun bs!849618 () Bool)

(assert (= bs!849618 (and b!4514305 b!4514293)))

(assert (=> bs!849618 (= (= lt!1692070 lt!1692087) (= lambda!171377 lambda!171369))))

(declare-fun bs!849619 () Bool)

(assert (= bs!849619 (and b!4514305 d!1389030)))

(assert (=> bs!849619 (not (= lambda!171377 lambda!171278))))

(declare-fun bs!849620 () Bool)

(assert (= bs!849620 (and b!4514305 b!4514294)))

(assert (=> bs!849620 (= (= lt!1692070 lt!1692087) (= lambda!171377 lambda!171371))))

(assert (=> bs!849620 (= (= lt!1692070 lt!1692460) (= lambda!171377 lambda!171372))))

(assert (=> b!4514305 true))

(declare-fun bs!849621 () Bool)

(declare-fun b!4514306 () Bool)

(assert (= bs!849621 (and b!4514306 d!1389126)))

(declare-fun lambda!171378 () Int)

(assert (=> bs!849621 (= (= lt!1692070 lt!1692454) (= lambda!171378 lambda!171375))))

(declare-fun bs!849622 () Bool)

(assert (= bs!849622 (and b!4514306 b!4514305)))

(assert (=> bs!849622 (= lambda!171378 lambda!171377)))

(declare-fun bs!849623 () Bool)

(assert (= bs!849623 (and b!4514306 b!4514293)))

(assert (=> bs!849623 (= (= lt!1692070 lt!1692087) (= lambda!171378 lambda!171369))))

(declare-fun bs!849624 () Bool)

(assert (= bs!849624 (and b!4514306 d!1389030)))

(assert (=> bs!849624 (not (= lambda!171378 lambda!171278))))

(declare-fun bs!849625 () Bool)

(assert (= bs!849625 (and b!4514306 b!4514294)))

(assert (=> bs!849625 (= (= lt!1692070 lt!1692087) (= lambda!171378 lambda!171371))))

(assert (=> bs!849625 (= (= lt!1692070 lt!1692460) (= lambda!171378 lambda!171372))))

(assert (=> b!4514306 true))

(declare-fun lt!1692508 () ListMap!3571)

(declare-fun lambda!171379 () Int)

(assert (=> bs!849621 (= (= lt!1692508 lt!1692454) (= lambda!171379 lambda!171375))))

(assert (=> bs!849622 (= (= lt!1692508 lt!1692070) (= lambda!171379 lambda!171377))))

(assert (=> bs!849623 (= (= lt!1692508 lt!1692087) (= lambda!171379 lambda!171369))))

(assert (=> bs!849624 (not (= lambda!171379 lambda!171278))))

(assert (=> bs!849625 (= (= lt!1692508 lt!1692087) (= lambda!171379 lambda!171371))))

(assert (=> bs!849625 (= (= lt!1692508 lt!1692460) (= lambda!171379 lambda!171372))))

(assert (=> b!4514306 (= (= lt!1692508 lt!1692070) (= lambda!171379 lambda!171378))))

(assert (=> b!4514306 true))

(declare-fun bs!849626 () Bool)

(declare-fun d!1389142 () Bool)

(assert (= bs!849626 (and d!1389142 b!4514306)))

(declare-fun lambda!171380 () Int)

(declare-fun lt!1692502 () ListMap!3571)

(assert (=> bs!849626 (= (= lt!1692502 lt!1692508) (= lambda!171380 lambda!171379))))

(declare-fun bs!849627 () Bool)

(assert (= bs!849627 (and d!1389142 d!1389126)))

(assert (=> bs!849627 (= (= lt!1692502 lt!1692454) (= lambda!171380 lambda!171375))))

(declare-fun bs!849628 () Bool)

(assert (= bs!849628 (and d!1389142 b!4514305)))

(assert (=> bs!849628 (= (= lt!1692502 lt!1692070) (= lambda!171380 lambda!171377))))

(declare-fun bs!849629 () Bool)

(assert (= bs!849629 (and d!1389142 b!4514293)))

(assert (=> bs!849629 (= (= lt!1692502 lt!1692087) (= lambda!171380 lambda!171369))))

(declare-fun bs!849630 () Bool)

(assert (= bs!849630 (and d!1389142 d!1389030)))

(assert (=> bs!849630 (not (= lambda!171380 lambda!171278))))

(declare-fun bs!849631 () Bool)

(assert (= bs!849631 (and d!1389142 b!4514294)))

(assert (=> bs!849631 (= (= lt!1692502 lt!1692087) (= lambda!171380 lambda!171371))))

(assert (=> bs!849631 (= (= lt!1692502 lt!1692460) (= lambda!171380 lambda!171372))))

(assert (=> bs!849626 (= (= lt!1692502 lt!1692070) (= lambda!171380 lambda!171378))))

(assert (=> d!1389142 true))

(declare-fun e!2812364 () ListMap!3571)

(assert (=> b!4514305 (= e!2812364 lt!1692070)))

(declare-fun lt!1692500 () Unit!94004)

(declare-fun call!314392 () Unit!94004)

(assert (=> b!4514305 (= lt!1692500 call!314392)))

(declare-fun call!314393 () Bool)

(assert (=> b!4514305 call!314393))

(declare-fun lt!1692514 () Unit!94004)

(assert (=> b!4514305 (= lt!1692514 lt!1692500)))

(declare-fun call!314394 () Bool)

(assert (=> b!4514305 call!314394))

(declare-fun lt!1692504 () Unit!94004)

(declare-fun Unit!94058 () Unit!94004)

(assert (=> b!4514305 (= lt!1692504 Unit!94058)))

(declare-fun e!2812366 () Bool)

(assert (=> d!1389142 e!2812366))

(declare-fun res!1878193 () Bool)

(assert (=> d!1389142 (=> (not res!1878193) (not e!2812366))))

(assert (=> d!1389142 (= res!1878193 (forall!10242 (_2!28814 lt!1692089) lambda!171380))))

(assert (=> d!1389142 (= lt!1692502 e!2812364)))

(declare-fun c!770115 () Bool)

(assert (=> d!1389142 (= c!770115 (is-Nil!50620 (_2!28814 lt!1692089)))))

(assert (=> d!1389142 (noDuplicateKeys!1151 (_2!28814 lt!1692089))))

(assert (=> d!1389142 (= (addToMapMapFromBucket!678 (_2!28814 lt!1692089) lt!1692070) lt!1692502)))

(declare-fun bm!314387 () Bool)

(declare-fun lt!1692518 () ListMap!3571)

(assert (=> bm!314387 (= call!314394 (forall!10242 (ite c!770115 (toList!4310 lt!1692070) (toList!4310 lt!1692518)) (ite c!770115 lambda!171377 lambda!171379)))))

(assert (=> b!4514306 (= e!2812364 lt!1692508)))

(assert (=> b!4514306 (= lt!1692518 (+!1524 lt!1692070 (h!56465 (_2!28814 lt!1692089))))))

(assert (=> b!4514306 (= lt!1692508 (addToMapMapFromBucket!678 (t!357706 (_2!28814 lt!1692089)) (+!1524 lt!1692070 (h!56465 (_2!28814 lt!1692089)))))))

(declare-fun lt!1692501 () Unit!94004)

(assert (=> b!4514306 (= lt!1692501 call!314392)))

(assert (=> b!4514306 (forall!10242 (toList!4310 lt!1692070) lambda!171378)))

(declare-fun lt!1692511 () Unit!94004)

(assert (=> b!4514306 (= lt!1692511 lt!1692501)))

(assert (=> b!4514306 call!314394))

(declare-fun lt!1692512 () Unit!94004)

(declare-fun Unit!94059 () Unit!94004)

(assert (=> b!4514306 (= lt!1692512 Unit!94059)))

(assert (=> b!4514306 (forall!10242 (t!357706 (_2!28814 lt!1692089)) lambda!171379)))

(declare-fun lt!1692503 () Unit!94004)

(declare-fun Unit!94060 () Unit!94004)

(assert (=> b!4514306 (= lt!1692503 Unit!94060)))

(declare-fun lt!1692520 () Unit!94004)

(declare-fun Unit!94061 () Unit!94004)

(assert (=> b!4514306 (= lt!1692520 Unit!94061)))

(declare-fun lt!1692505 () Unit!94004)

(assert (=> b!4514306 (= lt!1692505 (forallContained!2495 (toList!4310 lt!1692518) lambda!171379 (h!56465 (_2!28814 lt!1692089))))))

(assert (=> b!4514306 (contains!13332 lt!1692518 (_1!28813 (h!56465 (_2!28814 lt!1692089))))))

(declare-fun lt!1692507 () Unit!94004)

(declare-fun Unit!94062 () Unit!94004)

(assert (=> b!4514306 (= lt!1692507 Unit!94062)))

(assert (=> b!4514306 (contains!13332 lt!1692508 (_1!28813 (h!56465 (_2!28814 lt!1692089))))))

(declare-fun lt!1692519 () Unit!94004)

(declare-fun Unit!94063 () Unit!94004)

(assert (=> b!4514306 (= lt!1692519 Unit!94063)))

(assert (=> b!4514306 (forall!10242 (_2!28814 lt!1692089) lambda!171379)))

(declare-fun lt!1692517 () Unit!94004)

(declare-fun Unit!94064 () Unit!94004)

(assert (=> b!4514306 (= lt!1692517 Unit!94064)))

(assert (=> b!4514306 (forall!10242 (toList!4310 lt!1692518) lambda!171379)))

(declare-fun lt!1692516 () Unit!94004)

(declare-fun Unit!94065 () Unit!94004)

(assert (=> b!4514306 (= lt!1692516 Unit!94065)))

(declare-fun lt!1692510 () Unit!94004)

(declare-fun Unit!94066 () Unit!94004)

(assert (=> b!4514306 (= lt!1692510 Unit!94066)))

(declare-fun lt!1692515 () Unit!94004)

(assert (=> b!4514306 (= lt!1692515 (addForallContainsKeyThenBeforeAdding!330 lt!1692070 lt!1692508 (_1!28813 (h!56465 (_2!28814 lt!1692089))) (_2!28813 (h!56465 (_2!28814 lt!1692089)))))))

(assert (=> b!4514306 (forall!10242 (toList!4310 lt!1692070) lambda!171379)))

(declare-fun lt!1692509 () Unit!94004)

(assert (=> b!4514306 (= lt!1692509 lt!1692515)))

(assert (=> b!4514306 (forall!10242 (toList!4310 lt!1692070) lambda!171379)))

(declare-fun lt!1692506 () Unit!94004)

(declare-fun Unit!94067 () Unit!94004)

(assert (=> b!4514306 (= lt!1692506 Unit!94067)))

(declare-fun res!1878194 () Bool)

(assert (=> b!4514306 (= res!1878194 (forall!10242 (_2!28814 lt!1692089) lambda!171379))))

(declare-fun e!2812365 () Bool)

(assert (=> b!4514306 (=> (not res!1878194) (not e!2812365))))

(assert (=> b!4514306 e!2812365))

(declare-fun lt!1692513 () Unit!94004)

(declare-fun Unit!94068 () Unit!94004)

(assert (=> b!4514306 (= lt!1692513 Unit!94068)))

(declare-fun b!4514307 () Bool)

(assert (=> b!4514307 (= e!2812365 call!314393)))

(declare-fun b!4514308 () Bool)

(declare-fun res!1878195 () Bool)

(assert (=> b!4514308 (=> (not res!1878195) (not e!2812366))))

(assert (=> b!4514308 (= res!1878195 (forall!10242 (toList!4310 lt!1692070) lambda!171380))))

(declare-fun bm!314388 () Bool)

(assert (=> bm!314388 (= call!314393 (forall!10242 (toList!4310 lt!1692070) (ite c!770115 lambda!171377 lambda!171379)))))

(declare-fun bm!314389 () Bool)

(assert (=> bm!314389 (= call!314392 (lemmaContainsAllItsOwnKeys!330 lt!1692070))))

(declare-fun b!4514309 () Bool)

(assert (=> b!4514309 (= e!2812366 (invariantList!1008 (toList!4310 lt!1692502)))))

(assert (= (and d!1389142 c!770115) b!4514305))

(assert (= (and d!1389142 (not c!770115)) b!4514306))

(assert (= (and b!4514306 res!1878194) b!4514307))

(assert (= (or b!4514305 b!4514307) bm!314388))

(assert (= (or b!4514305 b!4514306) bm!314387))

(assert (= (or b!4514305 b!4514306) bm!314389))

(assert (= (and d!1389142 res!1878193) b!4514308))

(assert (= (and b!4514308 res!1878195) b!4514309))

(declare-fun m!5256973 () Bool)

(assert (=> b!4514308 m!5256973))

(declare-fun m!5256975 () Bool)

(assert (=> b!4514309 m!5256975))

(declare-fun m!5256977 () Bool)

(assert (=> b!4514306 m!5256977))

(declare-fun m!5256979 () Bool)

(assert (=> b!4514306 m!5256979))

(declare-fun m!5256981 () Bool)

(assert (=> b!4514306 m!5256981))

(declare-fun m!5256983 () Bool)

(assert (=> b!4514306 m!5256983))

(declare-fun m!5256985 () Bool)

(assert (=> b!4514306 m!5256985))

(assert (=> b!4514306 m!5256981))

(declare-fun m!5256987 () Bool)

(assert (=> b!4514306 m!5256987))

(declare-fun m!5256989 () Bool)

(assert (=> b!4514306 m!5256989))

(declare-fun m!5256991 () Bool)

(assert (=> b!4514306 m!5256991))

(declare-fun m!5256993 () Bool)

(assert (=> b!4514306 m!5256993))

(declare-fun m!5256995 () Bool)

(assert (=> b!4514306 m!5256995))

(declare-fun m!5256999 () Bool)

(assert (=> b!4514306 m!5256999))

(assert (=> b!4514306 m!5256995))

(assert (=> b!4514306 m!5256993))

(declare-fun m!5257001 () Bool)

(assert (=> bm!314388 m!5257001))

(declare-fun m!5257003 () Bool)

(assert (=> d!1389142 m!5257003))

(assert (=> d!1389142 m!5256917))

(declare-fun m!5257005 () Bool)

(assert (=> bm!314387 m!5257005))

(declare-fun m!5257007 () Bool)

(assert (=> bm!314389 m!5257007))

(assert (=> b!4513981 d!1389142))

(declare-fun bs!849633 () Bool)

(declare-fun d!1389152 () Bool)

(assert (= bs!849633 (and d!1389152 d!1389046)))

(declare-fun lambda!171381 () Int)

(assert (=> bs!849633 (= lambda!171381 lambda!171284)))

(declare-fun bs!849634 () Bool)

(assert (= bs!849634 (and d!1389152 d!1389072)))

(assert (=> bs!849634 (= lambda!171381 lambda!171293)))

(declare-fun bs!849635 () Bool)

(assert (= bs!849635 (and d!1389152 d!1389118)))

(assert (=> bs!849635 (= lambda!171381 lambda!171307)))

(declare-fun bs!849636 () Bool)

(assert (= bs!849636 (and d!1389152 start!446546)))

(assert (=> bs!849636 (= lambda!171381 lambda!171262)))

(declare-fun bs!849637 () Bool)

(assert (= bs!849637 (and d!1389152 d!1389106)))

(assert (=> bs!849637 (= lambda!171381 lambda!171306)))

(declare-fun bs!849638 () Bool)

(assert (= bs!849638 (and d!1389152 d!1389086)))

(assert (=> bs!849638 (= lambda!171381 lambda!171305)))

(declare-fun bs!849639 () Bool)

(assert (= bs!849639 (and d!1389152 d!1389050)))

(assert (=> bs!849639 (= lambda!171381 lambda!171287)))

(declare-fun bs!849640 () Bool)

(assert (= bs!849640 (and d!1389152 d!1389078)))

(assert (=> bs!849640 (= lambda!171381 lambda!171297)))

(declare-fun bs!849641 () Bool)

(assert (= bs!849641 (and d!1389152 d!1389066)))

(assert (=> bs!849641 (= lambda!171381 lambda!171290)))

(declare-fun bs!849642 () Bool)

(assert (= bs!849642 (and d!1389152 d!1389084)))

(assert (=> bs!849642 (= lambda!171381 lambda!171298)))

(declare-fun bs!849643 () Bool)

(assert (= bs!849643 (and d!1389152 d!1389028)))

(assert (=> bs!849643 (= lambda!171381 lambda!171275)))

(declare-fun lt!1692521 () ListMap!3571)

(assert (=> d!1389152 (invariantList!1008 (toList!4310 lt!1692521))))

(declare-fun e!2812379 () ListMap!3571)

(assert (=> d!1389152 (= lt!1692521 e!2812379)))

(declare-fun c!770116 () Bool)

(assert (=> d!1389152 (= c!770116 (is-Cons!50621 (toList!4309 lt!1692090)))))

(assert (=> d!1389152 (forall!10240 (toList!4309 lt!1692090) lambda!171381)))

(assert (=> d!1389152 (= (extractMap!1207 (toList!4309 lt!1692090)) lt!1692521)))

(declare-fun b!4514322 () Bool)

(assert (=> b!4514322 (= e!2812379 (addToMapMapFromBucket!678 (_2!28814 (h!56466 (toList!4309 lt!1692090))) (extractMap!1207 (t!357707 (toList!4309 lt!1692090)))))))

(declare-fun b!4514323 () Bool)

(assert (=> b!4514323 (= e!2812379 (ListMap!3572 Nil!50620))))

(assert (= (and d!1389152 c!770116) b!4514322))

(assert (= (and d!1389152 (not c!770116)) b!4514323))

(declare-fun m!5257009 () Bool)

(assert (=> d!1389152 m!5257009))

(declare-fun m!5257011 () Bool)

(assert (=> d!1389152 m!5257011))

(declare-fun m!5257013 () Bool)

(assert (=> b!4514322 m!5257013))

(assert (=> b!4514322 m!5257013))

(declare-fun m!5257015 () Bool)

(assert (=> b!4514322 m!5257015))

(assert (=> b!4513981 d!1389152))

(declare-fun bs!849644 () Bool)

(declare-fun d!1389154 () Bool)

(assert (= bs!849644 (and d!1389154 d!1389046)))

(declare-fun lambda!171384 () Int)

(assert (=> bs!849644 (not (= lambda!171384 lambda!171284))))

(declare-fun bs!849645 () Bool)

(assert (= bs!849645 (and d!1389154 d!1389072)))

(assert (=> bs!849645 (not (= lambda!171384 lambda!171293))))

(declare-fun bs!849646 () Bool)

(assert (= bs!849646 (and d!1389154 start!446546)))

(assert (=> bs!849646 (not (= lambda!171384 lambda!171262))))

(declare-fun bs!849647 () Bool)

(assert (= bs!849647 (and d!1389154 d!1389106)))

(assert (=> bs!849647 (not (= lambda!171384 lambda!171306))))

(declare-fun bs!849648 () Bool)

(assert (= bs!849648 (and d!1389154 d!1389086)))

(assert (=> bs!849648 (not (= lambda!171384 lambda!171305))))

(declare-fun bs!849649 () Bool)

(assert (= bs!849649 (and d!1389154 d!1389050)))

(assert (=> bs!849649 (not (= lambda!171384 lambda!171287))))

(declare-fun bs!849650 () Bool)

(assert (= bs!849650 (and d!1389154 d!1389078)))

(assert (=> bs!849650 (not (= lambda!171384 lambda!171297))))

(declare-fun bs!849651 () Bool)

(assert (= bs!849651 (and d!1389154 d!1389066)))

(assert (=> bs!849651 (not (= lambda!171384 lambda!171290))))

(declare-fun bs!849652 () Bool)

(assert (= bs!849652 (and d!1389154 d!1389084)))

(assert (=> bs!849652 (not (= lambda!171384 lambda!171298))))

(declare-fun bs!849653 () Bool)

(assert (= bs!849653 (and d!1389154 d!1389028)))

(assert (=> bs!849653 (not (= lambda!171384 lambda!171275))))

(declare-fun bs!849654 () Bool)

(assert (= bs!849654 (and d!1389154 d!1389118)))

(assert (=> bs!849654 (not (= lambda!171384 lambda!171307))))

(declare-fun bs!849655 () Bool)

(assert (= bs!849655 (and d!1389154 d!1389152)))

(assert (=> bs!849655 (not (= lambda!171384 lambda!171381))))

(assert (=> d!1389154 true))

(assert (=> d!1389154 (= (allKeysSameHashInMap!1258 lm!1477 hashF!1107) (forall!10240 (toList!4309 lm!1477) lambda!171384))))

(declare-fun bs!849656 () Bool)

(assert (= bs!849656 d!1389154))

(declare-fun m!5257025 () Bool)

(assert (=> bs!849656 m!5257025))

(assert (=> b!4513960 d!1389154))

(declare-fun d!1389160 () Bool)

(declare-fun lt!1692524 () Bool)

(assert (=> d!1389160 (= lt!1692524 (set.member lt!1692088 (content!8331 (t!357707 (toList!4309 lm!1477)))))))

(declare-fun e!2812392 () Bool)

(assert (=> d!1389160 (= lt!1692524 e!2812392)))

(declare-fun res!1878220 () Bool)

(assert (=> d!1389160 (=> (not res!1878220) (not e!2812392))))

(assert (=> d!1389160 (= res!1878220 (is-Cons!50621 (t!357707 (toList!4309 lm!1477))))))

(assert (=> d!1389160 (= (contains!13330 (t!357707 (toList!4309 lm!1477)) lt!1692088) lt!1692524)))

(declare-fun b!4514338 () Bool)

(declare-fun e!2812393 () Bool)

(assert (=> b!4514338 (= e!2812392 e!2812393)))

(declare-fun res!1878221 () Bool)

(assert (=> b!4514338 (=> res!1878221 e!2812393)))

(assert (=> b!4514338 (= res!1878221 (= (h!56466 (t!357707 (toList!4309 lm!1477))) lt!1692088))))

(declare-fun b!4514339 () Bool)

(assert (=> b!4514339 (= e!2812393 (contains!13330 (t!357707 (t!357707 (toList!4309 lm!1477))) lt!1692088))))

(assert (= (and d!1389160 res!1878220) b!4514338))

(assert (= (and b!4514338 (not res!1878221)) b!4514339))

(declare-fun m!5257027 () Bool)

(assert (=> d!1389160 m!5257027))

(declare-fun m!5257029 () Bool)

(assert (=> d!1389160 m!5257029))

(declare-fun m!5257031 () Bool)

(assert (=> b!4514339 m!5257031))

(assert (=> b!4513975 d!1389160))

(declare-fun d!1389162 () Bool)

(declare-fun hash!2781 (Hashable!5546 K!12018) (_ BitVec 64))

(assert (=> d!1389162 (= (hash!2776 hashF!1107 key!3287) (hash!2781 hashF!1107 key!3287))))

(declare-fun bs!849663 () Bool)

(assert (= bs!849663 d!1389162))

(declare-fun m!5257033 () Bool)

(assert (=> bs!849663 m!5257033))

(assert (=> b!4513963 d!1389162))

(declare-fun d!1389164 () Bool)

(declare-fun res!1878229 () Bool)

(declare-fun e!2812405 () Bool)

(assert (=> d!1389164 (=> res!1878229 e!2812405)))

(assert (=> d!1389164 (= res!1878229 (not (is-Cons!50620 newBucket!178)))))

(assert (=> d!1389164 (= (noDuplicateKeys!1151 newBucket!178) e!2812405)))

(declare-fun b!4514355 () Bool)

(declare-fun e!2812406 () Bool)

(assert (=> b!4514355 (= e!2812405 e!2812406)))

(declare-fun res!1878230 () Bool)

(assert (=> b!4514355 (=> (not res!1878230) (not e!2812406))))

(assert (=> b!4514355 (= res!1878230 (not (containsKey!1755 (t!357706 newBucket!178) (_1!28813 (h!56465 newBucket!178)))))))

(declare-fun b!4514356 () Bool)

(assert (=> b!4514356 (= e!2812406 (noDuplicateKeys!1151 (t!357706 newBucket!178)))))

(assert (= (and d!1389164 (not res!1878229)) b!4514355))

(assert (= (and b!4514355 res!1878230) b!4514356))

(declare-fun m!5257059 () Bool)

(assert (=> b!4514355 m!5257059))

(declare-fun m!5257061 () Bool)

(assert (=> b!4514356 m!5257061))

(assert (=> b!4513974 d!1389164))

(declare-fun b!4514361 () Bool)

(declare-fun e!2812409 () Bool)

(declare-fun tp!1337940 () Bool)

(assert (=> b!4514361 (= e!2812409 (and tp_is_empty!27881 tp_is_empty!27883 tp!1337940))))

(assert (=> b!4513967 (= tp!1337931 e!2812409)))

(assert (= (and b!4513967 (is-Cons!50620 (t!357706 newBucket!178))) b!4514361))

(declare-fun b!4514366 () Bool)

(declare-fun e!2812412 () Bool)

(declare-fun tp!1337945 () Bool)

(declare-fun tp!1337946 () Bool)

(assert (=> b!4514366 (= e!2812412 (and tp!1337945 tp!1337946))))

(assert (=> b!4513964 (= tp!1337930 e!2812412)))

(assert (= (and b!4513964 (is-Cons!50621 (toList!4309 lm!1477))) b!4514366))

(declare-fun b_lambda!154083 () Bool)

(assert (= b_lambda!154077 (or start!446546 b_lambda!154083)))

(declare-fun bs!849672 () Bool)

(declare-fun d!1389172 () Bool)

(assert (= bs!849672 (and d!1389172 start!446546)))

(assert (=> bs!849672 (= (dynLambda!21148 lambda!171262 (h!56466 (toList!4309 lm!1477))) (noDuplicateKeys!1151 (_2!28814 (h!56466 (toList!4309 lm!1477)))))))

(declare-fun m!5257069 () Bool)

(assert (=> bs!849672 m!5257069))

(assert (=> b!4514096 d!1389172))

(declare-fun b_lambda!154085 () Bool)

(assert (= b_lambda!154079 (or start!446546 b_lambda!154085)))

(declare-fun bs!849673 () Bool)

(declare-fun d!1389174 () Bool)

(assert (= bs!849673 (and d!1389174 start!446546)))

(assert (=> bs!849673 (= (dynLambda!21148 lambda!171262 lt!1692088) (noDuplicateKeys!1151 (_2!28814 lt!1692088)))))

(declare-fun m!5257071 () Bool)

(assert (=> bs!849673 m!5257071))

(assert (=> d!1389060 d!1389174))

(push 1)

(assert (not b!4514075))

(assert (not d!1389048))

(assert (not d!1389154))

(assert (not d!1389092))

(assert (not b!4514219))

(assert (not b!4514213))

(assert (not bm!314363))

(assert (not d!1389062))

(assert (not d!1389082))

(assert (not b!4514185))

(assert (not b!4514361))

(assert (not d!1389122))

(assert (not b!4514109))

(assert (not b!4514258))

(assert (not d!1389072))

(assert (not b!4514097))

(assert (not b!4514245))

(assert (not b!4514259))

(assert (not b!4514261))

(assert (not b!4514223))

(assert (not b!4514248))

(assert (not b!4514160))

(assert (not b!4514262))

(assert (not d!1389142))

(assert (not b!4514162))

(assert (not b!4514214))

(assert (not d!1389162))

(assert (not b!4514228))

(assert (not b!4514141))

(assert (not b!4514252))

(assert (not b!4514339))

(assert (not d!1389080))

(assert (not b!4514212))

(assert (not d!1389094))

(assert (not b!4514227))

(assert (not b!4514078))

(assert (not b!4514124))

(assert (not d!1389052))

(assert (not d!1389124))

(assert (not b!4514224))

(assert (not d!1389022))

(assert (not d!1389064))

(assert (not b!4514355))

(assert (not b!4514229))

(assert (not d!1389028))

(assert (not bm!314364))

(assert (not b!4514139))

(assert (not b!4514255))

(assert (not bm!314365))

(assert (not b!4514216))

(assert (not b!4514306))

(assert (not b!4514294))

(assert (not b!4514218))

(assert (not bs!849673))

(assert (not d!1389036))

(assert (not d!1389114))

(assert tp_is_empty!27881)

(assert (not b!4514076))

(assert (not b!4514308))

(assert (not b!4514120))

(assert (not b!4514366))

(assert (not b!4514105))

(assert (not d!1389056))

(assert (not b!4514154))

(assert tp_is_empty!27883)

(assert (not b!4514217))

(assert (not d!1389050))

(assert (not b!4514246))

(assert (not d!1389120))

(assert (not bm!314382))

(assert (not b!4514231))

(assert (not d!1389042))

(assert (not b!4514260))

(assert (not d!1389084))

(assert (not d!1389060))

(assert (not b!4514296))

(assert (not d!1389102))

(assert (not b!4514073))

(assert (not d!1389112))

(assert (not d!1389066))

(assert (not d!1389078))

(assert (not bs!849672))

(assert (not d!1389030))

(assert (not d!1389140))

(assert (not d!1389118))

(assert (not d!1389152))

(assert (not d!1389136))

(assert (not b!4514249))

(assert (not b!4514230))

(assert (not d!1389160))

(assert (not b_lambda!154085))

(assert (not bm!314388))

(assert (not b!4514066))

(assert (not d!1389058))

(assert (not d!1389108))

(assert (not d!1389086))

(assert (not b!4514356))

(assert (not b!4514225))

(assert (not b!4514322))

(assert (not bm!314381))

(assert (not b!4514104))

(assert (not d!1389106))

(assert (not bm!314383))

(assert (not b!4514243))

(assert (not b!4514309))

(assert (not b!4514108))

(assert (not d!1389110))

(assert (not b!4514256))

(assert (not b!4514244))

(assert (not d!1389126))

(assert (not b!4514254))

(assert (not d!1389054))

(assert (not b_lambda!154083))

(assert (not b!4514297))

(assert (not d!1389046))

(assert (not d!1389116))

(assert (not b!4514220))

(assert (not bm!314389))

(assert (not d!1389074))

(assert (not b!4514250))

(assert (not d!1389104))

(assert (not bm!314387))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

