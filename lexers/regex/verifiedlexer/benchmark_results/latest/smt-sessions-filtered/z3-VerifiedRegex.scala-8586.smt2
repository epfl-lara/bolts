; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!456856 () Bool)

(assert start!456856)

(declare-fun bs!1007472 () Bool)

(declare-fun b!4588995 () Bool)

(assert (= bs!1007472 (and b!4588995 start!456856)))

(declare-fun lambda!184392 () Int)

(declare-fun lambda!184391 () Int)

(assert (=> bs!1007472 (not (= lambda!184392 lambda!184391))))

(assert (=> b!4588995 true))

(assert (=> b!4588995 true))

(assert (=> b!4588995 true))

(declare-fun b!4588992 () Bool)

(declare-fun res!1918196 () Bool)

(declare-fun e!2862035 () Bool)

(assert (=> b!4588992 (=> res!1918196 e!2862035)))

(declare-datatypes ((K!12335 0))(
  ( (K!12336 (val!18139 Int)) )
))
(declare-datatypes ((V!12581 0))(
  ( (V!12582 (val!18140 Int)) )
))
(declare-datatypes ((tuple2!51546 0))(
  ( (tuple2!51547 (_1!29067 K!12335) (_2!29067 V!12581)) )
))
(declare-datatypes ((List!51092 0))(
  ( (Nil!50968) (Cons!50968 (h!56909 tuple2!51546) (t!358086 List!51092)) )
))
(declare-fun newBucket!178 () List!51092)

(declare-fun noDuplicateKeys!1278 (List!51092) Bool)

(assert (=> b!4588992 (= res!1918196 (not (noDuplicateKeys!1278 newBucket!178)))))

(declare-fun b!4588993 () Bool)

(declare-fun e!2862040 () Bool)

(declare-fun e!2862045 () Bool)

(assert (=> b!4588993 (= e!2862040 e!2862045)))

(declare-fun res!1918182 () Bool)

(assert (=> b!4588993 (=> res!1918182 e!2862045)))

(declare-datatypes ((ListMap!3825 0))(
  ( (ListMap!3826 (toList!4563 List!51092)) )
))
(declare-fun lt!1752066 () ListMap!3825)

(declare-fun lt!1752068 () ListMap!3825)

(declare-fun eq!717 (ListMap!3825 ListMap!3825) Bool)

(assert (=> b!4588993 (= res!1918182 (not (eq!717 lt!1752066 lt!1752068)))))

(declare-fun lt!1752088 () ListMap!3825)

(declare-fun key!3287 () K!12335)

(declare-fun -!486 (ListMap!3825 K!12335) ListMap!3825)

(assert (=> b!4588993 (= lt!1752068 (-!486 lt!1752088 key!3287))))

(declare-fun b!4588994 () Bool)

(declare-fun e!2862050 () Bool)

(assert (=> b!4588994 (= e!2862050 (not e!2862035))))

(declare-fun res!1918183 () Bool)

(assert (=> b!4588994 (=> res!1918183 e!2862035)))

(declare-fun lt!1752058 () List!51092)

(declare-fun removePairForKey!905 (List!51092 K!12335) List!51092)

(assert (=> b!4588994 (= res!1918183 (not (= newBucket!178 (removePairForKey!905 lt!1752058 key!3287))))))

(declare-datatypes ((Unit!107270 0))(
  ( (Unit!107271) )
))
(declare-fun lt!1752076 () Unit!107270)

(declare-datatypes ((tuple2!51548 0))(
  ( (tuple2!51549 (_1!29068 (_ BitVec 64)) (_2!29068 List!51092)) )
))
(declare-fun lt!1752082 () tuple2!51548)

(declare-datatypes ((List!51093 0))(
  ( (Nil!50969) (Cons!50969 (h!56910 tuple2!51548) (t!358087 List!51093)) )
))
(declare-datatypes ((ListLongMap!3195 0))(
  ( (ListLongMap!3196 (toList!4564 List!51093)) )
))
(declare-fun lm!1477 () ListLongMap!3195)

(declare-fun forallContained!2780 (List!51093 Int tuple2!51548) Unit!107270)

(assert (=> b!4588994 (= lt!1752076 (forallContained!2780 (toList!4564 lm!1477) lambda!184391 lt!1752082))))

(declare-fun contains!13875 (List!51093 tuple2!51548) Bool)

(assert (=> b!4588994 (contains!13875 (toList!4564 lm!1477) lt!1752082)))

(declare-fun hash!344 () (_ BitVec 64))

(assert (=> b!4588994 (= lt!1752082 (tuple2!51549 hash!344 lt!1752058))))

(declare-fun lt!1752063 () Unit!107270)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!790 (List!51093 (_ BitVec 64) List!51092) Unit!107270)

(assert (=> b!4588994 (= lt!1752063 (lemmaGetValueByKeyImpliesContainsTuple!790 (toList!4564 lm!1477) hash!344 lt!1752058))))

(declare-fun apply!12015 (ListLongMap!3195 (_ BitVec 64)) List!51092)

(assert (=> b!4588994 (= lt!1752058 (apply!12015 lm!1477 hash!344))))

(declare-fun lt!1752065 () (_ BitVec 64))

(declare-fun contains!13876 (ListLongMap!3195 (_ BitVec 64)) Bool)

(assert (=> b!4588994 (contains!13876 lm!1477 lt!1752065)))

(declare-datatypes ((Hashable!5673 0))(
  ( (HashableExt!5672 (__x!31376 Int)) )
))
(declare-fun hashF!1107 () Hashable!5673)

(declare-fun lt!1752075 () Unit!107270)

(declare-fun lemmaInGenMapThenLongMapContainsHash!352 (ListLongMap!3195 K!12335 Hashable!5673) Unit!107270)

(assert (=> b!4588994 (= lt!1752075 (lemmaInGenMapThenLongMapContainsHash!352 lm!1477 key!3287 hashF!1107))))

(declare-fun e!2862047 () Unit!107270)

(declare-fun Unit!107272 () Unit!107270)

(assert (=> b!4588995 (= e!2862047 Unit!107272)))

(declare-fun lt!1752072 () tuple2!51548)

(assert (=> b!4588995 (not (= hash!344 (_1!29068 lt!1752072)))))

(declare-datatypes ((Option!11343 0))(
  ( (None!11342) (Some!11342 (v!45242 tuple2!51546)) )
))
(declare-fun lt!1752087 () Option!11343)

(declare-fun getPair!238 (List!51092 K!12335) Option!11343)

(assert (=> b!4588995 (= lt!1752087 (getPair!238 (_2!29068 lt!1752072) key!3287))))

(declare-fun lt!1752073 () Unit!107270)

(assert (=> b!4588995 (= lt!1752073 (forallContained!2780 (toList!4564 lm!1477) lambda!184392 (h!56910 (toList!4564 lm!1477))))))

(declare-fun lt!1752071 () Unit!107270)

(declare-fun lambda!184393 () Int)

(declare-fun forallContained!2781 (List!51092 Int tuple2!51546) Unit!107270)

(declare-fun get!16833 (Option!11343) tuple2!51546)

(assert (=> b!4588995 (= lt!1752071 (forallContained!2781 (_2!29068 (h!56910 (toList!4564 lm!1477))) lambda!184393 (tuple2!51547 key!3287 (_2!29067 (get!16833 lt!1752087)))))))

(assert (=> b!4588995 false))

(declare-fun b!4588997 () Bool)

(declare-fun e!2862049 () Bool)

(declare-fun e!2862052 () Bool)

(assert (=> b!4588997 (= e!2862049 e!2862052)))

(declare-fun res!1918190 () Bool)

(assert (=> b!4588997 (=> res!1918190 e!2862052)))

(declare-fun lt!1752070 () ListMap!3825)

(declare-fun lt!1752062 () ListMap!3825)

(assert (=> b!4588997 (= res!1918190 (not (eq!717 lt!1752070 lt!1752062)))))

(declare-fun lt!1752084 () ListMap!3825)

(declare-fun addToMapMapFromBucket!791 (List!51092 ListMap!3825) ListMap!3825)

(assert (=> b!4588997 (= lt!1752062 (addToMapMapFromBucket!791 (_2!29068 lt!1752072) lt!1752084))))

(declare-fun lt!1752059 () ListLongMap!3195)

(declare-fun extractMap!1334 (List!51093) ListMap!3825)

(assert (=> b!4588997 (= lt!1752070 (extractMap!1334 (toList!4564 lt!1752059)))))

(declare-fun b!4588998 () Bool)

(declare-fun e!2862037 () Bool)

(declare-fun tp!1339853 () Bool)

(declare-fun tp_is_empty!28389 () Bool)

(declare-fun tp_is_empty!28391 () Bool)

(assert (=> b!4588998 (= e!2862037 (and tp_is_empty!28389 tp_is_empty!28391 tp!1339853))))

(declare-fun b!4588999 () Bool)

(declare-fun res!1918181 () Bool)

(assert (=> b!4588999 (=> res!1918181 e!2862049)))

(declare-fun head!9550 (ListLongMap!3195) tuple2!51548)

(assert (=> b!4588999 (= res!1918181 (not (= (head!9550 lt!1752059) lt!1752072)))))

(declare-fun b!4589000 () Bool)

(declare-fun e!2862048 () Bool)

(declare-fun tp!1339852 () Bool)

(assert (=> b!4589000 (= e!2862048 tp!1339852)))

(declare-fun b!4589001 () Bool)

(declare-fun res!1918170 () Bool)

(assert (=> b!4589001 (=> res!1918170 e!2862045)))

(declare-fun lt!1752086 () ListMap!3825)

(assert (=> b!4589001 (= res!1918170 (not (eq!717 lt!1752070 (-!486 lt!1752086 key!3287))))))

(declare-fun b!4589002 () Bool)

(declare-fun e!2862039 () Unit!107270)

(declare-fun Unit!107273 () Unit!107270)

(assert (=> b!4589002 (= e!2862039 Unit!107273)))

(declare-fun lt!1752083 () Unit!107270)

(declare-fun lemmaNotInItsHashBucketThenNotInMap!260 (ListLongMap!3195 K!12335 Hashable!5673) Unit!107270)

(assert (=> b!4589002 (= lt!1752083 (lemmaNotInItsHashBucketThenNotInMap!260 lm!1477 key!3287 hashF!1107))))

(assert (=> b!4589002 false))

(declare-fun b!4589003 () Bool)

(declare-fun e!2862034 () Bool)

(assert (=> b!4589003 (= e!2862052 e!2862034)))

(declare-fun res!1918172 () Bool)

(assert (=> b!4589003 (=> res!1918172 e!2862034)))

(assert (=> b!4589003 (= res!1918172 (not (eq!717 lt!1752070 lt!1752066)))))

(assert (=> b!4589003 (eq!717 lt!1752062 lt!1752066)))

(declare-fun lt!1752057 () ListMap!3825)

(assert (=> b!4589003 (= lt!1752066 (addToMapMapFromBucket!791 (_2!29068 lt!1752072) lt!1752057))))

(declare-fun lt!1752074 () Unit!107270)

(declare-fun lemmaAddToMapFromBucketPreservesEquivalence!102 (ListMap!3825 ListMap!3825 List!51092) Unit!107270)

(assert (=> b!4589003 (= lt!1752074 (lemmaAddToMapFromBucketPreservesEquivalence!102 lt!1752084 lt!1752057 (_2!29068 lt!1752072)))))

(declare-fun b!4589004 () Bool)

(declare-fun Unit!107274 () Unit!107270)

(assert (=> b!4589004 (= e!2862047 Unit!107274)))

(declare-fun b!4589005 () Bool)

(declare-fun e!2862042 () Bool)

(assert (=> b!4589005 (= e!2862034 e!2862042)))

(declare-fun res!1918194 () Bool)

(assert (=> b!4589005 (=> res!1918194 e!2862042)))

(assert (=> b!4589005 (= res!1918194 (not (noDuplicateKeys!1278 (_2!29068 lt!1752072))))))

(declare-fun lt!1752067 () Unit!107270)

(assert (=> b!4589005 (= lt!1752067 (forallContained!2780 (toList!4564 lm!1477) lambda!184391 (h!56910 (toList!4564 lm!1477))))))

(declare-fun b!4589006 () Bool)

(declare-fun res!1918193 () Bool)

(declare-fun e!2862046 () Bool)

(assert (=> b!4589006 (=> res!1918193 e!2862046)))

(assert (=> b!4589006 (= res!1918193 (not (eq!717 lt!1752088 lt!1752086)))))

(declare-fun b!4589007 () Bool)

(declare-fun res!1918191 () Bool)

(assert (=> b!4589007 (=> res!1918191 e!2862045)))

(assert (=> b!4589007 (= res!1918191 (not (eq!717 lt!1752070 lt!1752068)))))

(declare-fun b!4589008 () Bool)

(declare-fun e!2862044 () Bool)

(assert (=> b!4589008 (= e!2862044 e!2862050)))

(declare-fun res!1918173 () Bool)

(assert (=> b!4589008 (=> (not res!1918173) (not e!2862050))))

(assert (=> b!4589008 (= res!1918173 (= lt!1752065 hash!344))))

(declare-fun hash!3141 (Hashable!5673 K!12335) (_ BitVec 64))

(assert (=> b!4589008 (= lt!1752065 (hash!3141 hashF!1107 key!3287))))

(declare-fun b!4589009 () Bool)

(declare-fun e!2862043 () Bool)

(declare-fun e!2862041 () Bool)

(assert (=> b!4589009 (= e!2862043 e!2862041)))

(declare-fun res!1918174 () Bool)

(assert (=> b!4589009 (=> res!1918174 e!2862041)))

(declare-fun containsKeyBiggerList!248 (List!51093 K!12335) Bool)

(assert (=> b!4589009 (= res!1918174 (not (containsKeyBiggerList!248 (t!358087 (toList!4564 lm!1477)) key!3287)))))

(declare-fun lt!1752060 () ListLongMap!3195)

(assert (=> b!4589009 (containsKeyBiggerList!248 (toList!4564 lt!1752060) key!3287)))

(declare-fun lt!1752081 () Unit!107270)

(declare-fun lemmaInLongMapThenContainsKeyBiggerList!160 (ListLongMap!3195 K!12335 Hashable!5673) Unit!107270)

(assert (=> b!4589009 (= lt!1752081 (lemmaInLongMapThenContainsKeyBiggerList!160 lt!1752060 key!3287 hashF!1107))))

(declare-fun b!4589010 () Bool)

(declare-fun res!1918188 () Bool)

(assert (=> b!4589010 (=> (not res!1918188) (not e!2862050))))

(declare-fun allKeysSameHash!1132 (List!51092 (_ BitVec 64) Hashable!5673) Bool)

(assert (=> b!4589010 (= res!1918188 (allKeysSameHash!1132 newBucket!178 hash!344 hashF!1107))))

(declare-fun b!4589011 () Bool)

(declare-fun e!2862036 () Bool)

(assert (=> b!4589011 (= e!2862035 e!2862036)))

(declare-fun res!1918178 () Bool)

(assert (=> b!4589011 (=> res!1918178 e!2862036)))

(assert (=> b!4589011 (= res!1918178 (not (contains!13876 lt!1752060 hash!344)))))

(declare-fun tail!7929 (ListLongMap!3195) ListLongMap!3195)

(assert (=> b!4589011 (= lt!1752060 (tail!7929 lm!1477))))

(declare-fun b!4589012 () Bool)

(declare-fun Unit!107275 () Unit!107270)

(assert (=> b!4589012 (= e!2862039 Unit!107275)))

(declare-fun b!4589013 () Bool)

(declare-fun res!1918187 () Bool)

(assert (=> b!4589013 (=> res!1918187 e!2862046)))

(assert (=> b!4589013 (= res!1918187 (bvsge (_1!29068 lt!1752072) hash!344))))

(declare-fun b!4589014 () Bool)

(declare-fun res!1918177 () Bool)

(declare-fun e!2862051 () Bool)

(assert (=> b!4589014 (=> (not res!1918177) (not e!2862051))))

(declare-fun allKeysSameHashInMap!1385 (ListLongMap!3195 Hashable!5673) Bool)

(assert (=> b!4589014 (= res!1918177 (allKeysSameHashInMap!1385 lm!1477 hashF!1107))))

(declare-fun b!4589015 () Bool)

(declare-fun e!2862053 () Bool)

(assert (=> b!4589015 (= e!2862053 e!2862046)))

(declare-fun res!1918192 () Bool)

(assert (=> b!4589015 (=> res!1918192 e!2862046)))

(assert (=> b!4589015 (= res!1918192 (not (eq!717 lt!1752086 lt!1752088)))))

(declare-fun +!1720 (ListLongMap!3195 tuple2!51548) ListLongMap!3195)

(assert (=> b!4589015 (= lt!1752086 (extractMap!1334 (toList!4564 (+!1720 lt!1752060 lt!1752072))))))

(assert (=> b!4589015 (= lt!1752072 (head!9550 lm!1477))))

(assert (=> b!4589015 (eq!717 lt!1752084 lt!1752057)))

(declare-fun lt!1752085 () ListMap!3825)

(assert (=> b!4589015 (= lt!1752057 (-!486 lt!1752085 key!3287))))

(declare-fun lt!1752078 () ListLongMap!3195)

(assert (=> b!4589015 (= lt!1752084 (extractMap!1334 (toList!4564 lt!1752078)))))

(declare-fun lt!1752055 () tuple2!51548)

(assert (=> b!4589015 (= lt!1752078 (+!1720 lt!1752060 lt!1752055))))

(assert (=> b!4589015 (= lt!1752055 (tuple2!51549 hash!344 newBucket!178))))

(declare-fun lt!1752056 () Unit!107270)

(declare-fun lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMap!225 (ListLongMap!3195 (_ BitVec 64) List!51092 K!12335 Hashable!5673) Unit!107270)

(assert (=> b!4589015 (= lt!1752056 (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMap!225 lt!1752060 hash!344 newBucket!178 key!3287 hashF!1107))))

(declare-fun b!4589016 () Bool)

(declare-fun e!2862038 () Bool)

(assert (=> b!4589016 (= e!2862042 e!2862038)))

(declare-fun res!1918186 () Bool)

(assert (=> b!4589016 (=> res!1918186 e!2862038)))

(declare-fun lt!1752080 () Bool)

(assert (=> b!4589016 (= res!1918186 lt!1752080)))

(declare-fun lt!1752089 () Unit!107270)

(assert (=> b!4589016 (= lt!1752089 e!2862047)))

(declare-fun c!785917 () Bool)

(assert (=> b!4589016 (= c!785917 lt!1752080)))

(declare-fun containsKey!2072 (List!51092 K!12335) Bool)

(assert (=> b!4589016 (= lt!1752080 (containsKey!2072 (_2!29068 lt!1752072) key!3287))))

(declare-fun b!4589017 () Bool)

(assert (=> b!4589017 (= e!2862038 e!2862040)))

(declare-fun res!1918185 () Bool)

(assert (=> b!4589017 (=> res!1918185 e!2862040)))

(declare-fun lt!1752069 () ListMap!3825)

(assert (=> b!4589017 (= res!1918185 (not (eq!717 lt!1752066 lt!1752069)))))

(assert (=> b!4589017 (= lt!1752066 lt!1752069)))

(assert (=> b!4589017 (= lt!1752069 (-!486 (addToMapMapFromBucket!791 (_2!29068 lt!1752072) lt!1752085) key!3287))))

(declare-fun lt!1752079 () Unit!107270)

(declare-fun lemmaAddToMapFromBucketMinusKeyIsCommutative!44 (ListMap!3825 K!12335 List!51092) Unit!107270)

(assert (=> b!4589017 (= lt!1752079 (lemmaAddToMapFromBucketMinusKeyIsCommutative!44 lt!1752085 key!3287 (_2!29068 lt!1752072)))))

(declare-fun b!4589018 () Bool)

(assert (=> b!4589018 (= e!2862041 e!2862053)))

(declare-fun res!1918175 () Bool)

(assert (=> b!4589018 (=> res!1918175 e!2862053)))

(declare-fun contains!13877 (ListMap!3825 K!12335) Bool)

(assert (=> b!4589018 (= res!1918175 (not (contains!13877 (extractMap!1334 (t!358087 (toList!4564 lm!1477))) key!3287)))))

(assert (=> b!4589018 (contains!13877 lt!1752085 key!3287)))

(assert (=> b!4589018 (= lt!1752085 (extractMap!1334 (toList!4564 lt!1752060)))))

(declare-fun lt!1752064 () Unit!107270)

(declare-fun lemmaListContainsThenExtractedMapContains!234 (ListLongMap!3195 K!12335 Hashable!5673) Unit!107270)

(assert (=> b!4589018 (= lt!1752064 (lemmaListContainsThenExtractedMapContains!234 lt!1752060 key!3287 hashF!1107))))

(declare-fun b!4589019 () Bool)

(declare-fun res!1918184 () Bool)

(assert (=> b!4589019 (=> res!1918184 e!2862036)))

(assert (=> b!4589019 (= res!1918184 (not (= (apply!12015 lt!1752060 hash!344) lt!1752058)))))

(declare-fun b!4589020 () Bool)

(assert (=> b!4589020 (= e!2862051 e!2862044)))

(declare-fun res!1918195 () Bool)

(assert (=> b!4589020 (=> (not res!1918195) (not e!2862044))))

(assert (=> b!4589020 (= res!1918195 (contains!13877 lt!1752088 key!3287))))

(assert (=> b!4589020 (= lt!1752088 (extractMap!1334 (toList!4564 lm!1477)))))

(declare-fun b!4589021 () Bool)

(assert (=> b!4589021 (= e!2862036 e!2862043)))

(declare-fun res!1918176 () Bool)

(assert (=> b!4589021 (=> res!1918176 e!2862043)))

(declare-fun lt!1752061 () Bool)

(assert (=> b!4589021 (= res!1918176 lt!1752061)))

(declare-fun lt!1752090 () Unit!107270)

(assert (=> b!4589021 (= lt!1752090 e!2862039)))

(declare-fun c!785916 () Bool)

(assert (=> b!4589021 (= c!785916 lt!1752061)))

(assert (=> b!4589021 (= lt!1752061 (not (containsKey!2072 lt!1752058 key!3287)))))

(declare-fun b!4589022 () Bool)

(declare-fun res!1918171 () Bool)

(assert (=> b!4589022 (=> res!1918171 e!2862036)))

(assert (=> b!4589022 (= res!1918171 (not (contains!13875 (t!358087 (toList!4564 lm!1477)) lt!1752082)))))

(declare-fun res!1918189 () Bool)

(assert (=> start!456856 (=> (not res!1918189) (not e!2862051))))

(declare-fun forall!10516 (List!51093 Int) Bool)

(assert (=> start!456856 (= res!1918189 (forall!10516 (toList!4564 lm!1477) lambda!184391))))

(assert (=> start!456856 e!2862051))

(assert (=> start!456856 true))

(declare-fun inv!66519 (ListLongMap!3195) Bool)

(assert (=> start!456856 (and (inv!66519 lm!1477) e!2862048)))

(assert (=> start!456856 tp_is_empty!28389))

(assert (=> start!456856 e!2862037))

(declare-fun b!4588996 () Bool)

(declare-fun lt!1752077 () ListLongMap!3195)

(assert (=> b!4588996 (= e!2862045 (eq!717 (extractMap!1334 (toList!4564 lt!1752077)) lt!1752068))))

(declare-fun b!4589023 () Bool)

(assert (=> b!4589023 (= e!2862046 e!2862049)))

(declare-fun res!1918180 () Bool)

(assert (=> b!4589023 (=> res!1918180 e!2862049)))

(assert (=> b!4589023 (= res!1918180 (not (= lt!1752059 lt!1752077)))))

(assert (=> b!4589023 (= lt!1752077 (+!1720 lm!1477 lt!1752055))))

(assert (=> b!4589023 (= lt!1752059 (+!1720 lt!1752078 lt!1752072))))

(declare-fun b!4589024 () Bool)

(declare-fun res!1918179 () Bool)

(assert (=> b!4589024 (=> res!1918179 e!2862035)))

(get-info :version)

(assert (=> b!4589024 (= res!1918179 (or ((_ is Nil!50969) (toList!4564 lm!1477)) (= (_1!29068 (h!56910 (toList!4564 lm!1477))) hash!344)))))

(assert (= (and start!456856 res!1918189) b!4589014))

(assert (= (and b!4589014 res!1918177) b!4589020))

(assert (= (and b!4589020 res!1918195) b!4589008))

(assert (= (and b!4589008 res!1918173) b!4589010))

(assert (= (and b!4589010 res!1918188) b!4588994))

(assert (= (and b!4588994 (not res!1918183)) b!4588992))

(assert (= (and b!4588992 (not res!1918196)) b!4589024))

(assert (= (and b!4589024 (not res!1918179)) b!4589011))

(assert (= (and b!4589011 (not res!1918178)) b!4589019))

(assert (= (and b!4589019 (not res!1918184)) b!4589022))

(assert (= (and b!4589022 (not res!1918171)) b!4589021))

(assert (= (and b!4589021 c!785916) b!4589002))

(assert (= (and b!4589021 (not c!785916)) b!4589012))

(assert (= (and b!4589021 (not res!1918176)) b!4589009))

(assert (= (and b!4589009 (not res!1918174)) b!4589018))

(assert (= (and b!4589018 (not res!1918175)) b!4589015))

(assert (= (and b!4589015 (not res!1918192)) b!4589006))

(assert (= (and b!4589006 (not res!1918193)) b!4589013))

(assert (= (and b!4589013 (not res!1918187)) b!4589023))

(assert (= (and b!4589023 (not res!1918180)) b!4588999))

(assert (= (and b!4588999 (not res!1918181)) b!4588997))

(assert (= (and b!4588997 (not res!1918190)) b!4589003))

(assert (= (and b!4589003 (not res!1918172)) b!4589005))

(assert (= (and b!4589005 (not res!1918194)) b!4589016))

(assert (= (and b!4589016 c!785917) b!4588995))

(assert (= (and b!4589016 (not c!785917)) b!4589004))

(assert (= (and b!4589016 (not res!1918186)) b!4589017))

(assert (= (and b!4589017 (not res!1918185)) b!4588993))

(assert (= (and b!4588993 (not res!1918182)) b!4589007))

(assert (= (and b!4589007 (not res!1918191)) b!4589001))

(assert (= (and b!4589001 (not res!1918170)) b!4588996))

(assert (= start!456856 b!4589000))

(assert (= (and start!456856 ((_ is Cons!50968) newBucket!178)) b!4588998))

(declare-fun m!5411813 () Bool)

(assert (=> b!4589003 m!5411813))

(declare-fun m!5411815 () Bool)

(assert (=> b!4589003 m!5411815))

(declare-fun m!5411817 () Bool)

(assert (=> b!4589003 m!5411817))

(declare-fun m!5411819 () Bool)

(assert (=> b!4589003 m!5411819))

(declare-fun m!5411821 () Bool)

(assert (=> b!4589017 m!5411821))

(declare-fun m!5411823 () Bool)

(assert (=> b!4589017 m!5411823))

(assert (=> b!4589017 m!5411823))

(declare-fun m!5411825 () Bool)

(assert (=> b!4589017 m!5411825))

(declare-fun m!5411827 () Bool)

(assert (=> b!4589017 m!5411827))

(declare-fun m!5411829 () Bool)

(assert (=> b!4589001 m!5411829))

(assert (=> b!4589001 m!5411829))

(declare-fun m!5411831 () Bool)

(assert (=> b!4589001 m!5411831))

(declare-fun m!5411833 () Bool)

(assert (=> b!4589005 m!5411833))

(declare-fun m!5411835 () Bool)

(assert (=> b!4589005 m!5411835))

(declare-fun m!5411837 () Bool)

(assert (=> b!4588995 m!5411837))

(declare-fun m!5411839 () Bool)

(assert (=> b!4588995 m!5411839))

(declare-fun m!5411841 () Bool)

(assert (=> b!4588995 m!5411841))

(declare-fun m!5411843 () Bool)

(assert (=> b!4588995 m!5411843))

(declare-fun m!5411845 () Bool)

(assert (=> b!4589009 m!5411845))

(declare-fun m!5411847 () Bool)

(assert (=> b!4589009 m!5411847))

(declare-fun m!5411849 () Bool)

(assert (=> b!4589009 m!5411849))

(declare-fun m!5411851 () Bool)

(assert (=> b!4589023 m!5411851))

(declare-fun m!5411853 () Bool)

(assert (=> b!4589023 m!5411853))

(declare-fun m!5411855 () Bool)

(assert (=> b!4589014 m!5411855))

(declare-fun m!5411857 () Bool)

(assert (=> b!4589021 m!5411857))

(declare-fun m!5411859 () Bool)

(assert (=> b!4588993 m!5411859))

(declare-fun m!5411861 () Bool)

(assert (=> b!4588993 m!5411861))

(declare-fun m!5411863 () Bool)

(assert (=> b!4589010 m!5411863))

(declare-fun m!5411865 () Bool)

(assert (=> b!4589015 m!5411865))

(declare-fun m!5411867 () Bool)

(assert (=> b!4589015 m!5411867))

(declare-fun m!5411869 () Bool)

(assert (=> b!4589015 m!5411869))

(declare-fun m!5411871 () Bool)

(assert (=> b!4589015 m!5411871))

(declare-fun m!5411873 () Bool)

(assert (=> b!4589015 m!5411873))

(declare-fun m!5411875 () Bool)

(assert (=> b!4589015 m!5411875))

(declare-fun m!5411877 () Bool)

(assert (=> b!4589015 m!5411877))

(declare-fun m!5411879 () Bool)

(assert (=> b!4589015 m!5411879))

(declare-fun m!5411881 () Bool)

(assert (=> b!4589015 m!5411881))

(declare-fun m!5411883 () Bool)

(assert (=> b!4589020 m!5411883))

(declare-fun m!5411885 () Bool)

(assert (=> b!4589020 m!5411885))

(declare-fun m!5411887 () Bool)

(assert (=> b!4589007 m!5411887))

(declare-fun m!5411889 () Bool)

(assert (=> b!4589022 m!5411889))

(declare-fun m!5411891 () Bool)

(assert (=> b!4589016 m!5411891))

(declare-fun m!5411893 () Bool)

(assert (=> b!4589018 m!5411893))

(declare-fun m!5411895 () Bool)

(assert (=> b!4589018 m!5411895))

(declare-fun m!5411897 () Bool)

(assert (=> b!4589018 m!5411897))

(declare-fun m!5411899 () Bool)

(assert (=> b!4589018 m!5411899))

(assert (=> b!4589018 m!5411899))

(declare-fun m!5411901 () Bool)

(assert (=> b!4589018 m!5411901))

(declare-fun m!5411903 () Bool)

(assert (=> start!456856 m!5411903))

(declare-fun m!5411905 () Bool)

(assert (=> start!456856 m!5411905))

(declare-fun m!5411907 () Bool)

(assert (=> b!4588996 m!5411907))

(assert (=> b!4588996 m!5411907))

(declare-fun m!5411909 () Bool)

(assert (=> b!4588996 m!5411909))

(declare-fun m!5411911 () Bool)

(assert (=> b!4588994 m!5411911))

(declare-fun m!5411913 () Bool)

(assert (=> b!4588994 m!5411913))

(declare-fun m!5411915 () Bool)

(assert (=> b!4588994 m!5411915))

(declare-fun m!5411917 () Bool)

(assert (=> b!4588994 m!5411917))

(declare-fun m!5411919 () Bool)

(assert (=> b!4588994 m!5411919))

(declare-fun m!5411921 () Bool)

(assert (=> b!4588994 m!5411921))

(declare-fun m!5411923 () Bool)

(assert (=> b!4588994 m!5411923))

(declare-fun m!5411925 () Bool)

(assert (=> b!4589011 m!5411925))

(declare-fun m!5411927 () Bool)

(assert (=> b!4589011 m!5411927))

(declare-fun m!5411929 () Bool)

(assert (=> b!4589008 m!5411929))

(declare-fun m!5411931 () Bool)

(assert (=> b!4589002 m!5411931))

(declare-fun m!5411933 () Bool)

(assert (=> b!4589019 m!5411933))

(declare-fun m!5411935 () Bool)

(assert (=> b!4588992 m!5411935))

(declare-fun m!5411937 () Bool)

(assert (=> b!4588997 m!5411937))

(declare-fun m!5411939 () Bool)

(assert (=> b!4588997 m!5411939))

(declare-fun m!5411941 () Bool)

(assert (=> b!4588997 m!5411941))

(declare-fun m!5411943 () Bool)

(assert (=> b!4589006 m!5411943))

(declare-fun m!5411945 () Bool)

(assert (=> b!4588999 m!5411945))

(check-sat (not b!4589019) (not b!4589017) (not b!4589008) (not b!4589000) (not b!4589005) (not b!4588997) (not b!4589015) (not b!4589002) (not b!4589016) (not b!4588996) (not b!4589003) (not b!4589021) (not b!4589006) (not b!4589020) tp_is_empty!28389 (not b!4588995) (not b!4588999) (not b!4589014) (not b!4588994) tp_is_empty!28391 (not b!4589009) (not b!4589010) (not b!4589001) (not b!4589018) (not start!456856) (not b!4588993) (not b!4589022) (not b!4588998) (not b!4589007) (not b!4589011) (not b!4588992) (not b!4589023))
(check-sat)
