; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!450680 () Bool)

(assert start!450680)

(declare-fun bs!878225 () Bool)

(declare-fun b!4540305 () Bool)

(assert (= bs!878225 (and b!4540305 start!450680)))

(declare-fun lambda!176132 () Int)

(declare-fun lambda!176131 () Int)

(assert (=> bs!878225 (not (= lambda!176132 lambda!176131))))

(assert (=> b!4540305 true))

(assert (=> b!4540305 true))

(assert (=> b!4540305 true))

(declare-fun b!4540299 () Bool)

(declare-fun e!2829291 () Bool)

(declare-fun e!2829289 () Bool)

(assert (=> b!4540299 (= e!2829291 e!2829289)))

(declare-fun res!1892160 () Bool)

(assert (=> b!4540299 (=> res!1892160 e!2829289)))

(declare-datatypes ((K!12140 0))(
  ( (K!12141 (val!17983 Int)) )
))
(declare-datatypes ((V!12386 0))(
  ( (V!12387 (val!17984 Int)) )
))
(declare-datatypes ((tuple2!51234 0))(
  ( (tuple2!51235 (_1!28911 K!12140) (_2!28911 V!12386)) )
))
(declare-datatypes ((List!50878 0))(
  ( (Nil!50754) (Cons!50754 (h!56635 tuple2!51234) (t!357840 List!50878)) )
))
(declare-datatypes ((ListMap!3669 0))(
  ( (ListMap!3670 (toList!4407 List!50878)) )
))
(declare-fun lt!1714887 () ListMap!3669)

(declare-fun lt!1714888 () ListMap!3669)

(declare-fun eq!657 (ListMap!3669 ListMap!3669) Bool)

(assert (=> b!4540299 (= res!1892160 (not (eq!657 lt!1714887 lt!1714888)))))

(declare-fun lt!1714891 () ListMap!3669)

(assert (=> b!4540299 (eq!657 lt!1714891 lt!1714888)))

(declare-datatypes ((tuple2!51236 0))(
  ( (tuple2!51237 (_1!28912 (_ BitVec 64)) (_2!28912 List!50878)) )
))
(declare-fun lt!1714880 () tuple2!51236)

(declare-fun lt!1714886 () ListMap!3669)

(declare-fun addToMapMapFromBucket!727 (List!50878 ListMap!3669) ListMap!3669)

(assert (=> b!4540299 (= lt!1714888 (addToMapMapFromBucket!727 (_2!28912 lt!1714880) lt!1714886))))

(declare-datatypes ((Unit!98616 0))(
  ( (Unit!98617) )
))
(declare-fun lt!1714895 () Unit!98616)

(declare-fun lt!1714899 () ListMap!3669)

(declare-fun lemmaAddToMapFromBucketPreservesEquivalence!76 (ListMap!3669 ListMap!3669 List!50878) Unit!98616)

(assert (=> b!4540299 (= lt!1714895 (lemmaAddToMapFromBucketPreservesEquivalence!76 lt!1714899 lt!1714886 (_2!28912 lt!1714880)))))

(declare-fun b!4540300 () Bool)

(declare-fun e!2829301 () Unit!98616)

(declare-fun Unit!98618 () Unit!98616)

(assert (=> b!4540300 (= e!2829301 Unit!98618)))

(declare-fun b!4540301 () Bool)

(declare-fun res!1892156 () Bool)

(declare-fun e!2829302 () Bool)

(assert (=> b!4540301 (=> res!1892156 e!2829302)))

(declare-fun lt!1714904 () ListMap!3669)

(declare-fun lt!1714902 () ListMap!3669)

(assert (=> b!4540301 (= res!1892156 (not (eq!657 lt!1714904 lt!1714902)))))

(declare-fun b!4540302 () Bool)

(declare-fun e!2829288 () Bool)

(declare-fun e!2829296 () Bool)

(assert (=> b!4540302 (= e!2829288 e!2829296)))

(declare-fun res!1892170 () Bool)

(assert (=> b!4540302 (=> res!1892170 e!2829296)))

(declare-datatypes ((List!50879 0))(
  ( (Nil!50755) (Cons!50755 (h!56636 tuple2!51236) (t!357841 List!50879)) )
))
(declare-datatypes ((ListLongMap!3039 0))(
  ( (ListLongMap!3040 (toList!4408 List!50879)) )
))
(declare-fun lm!1477 () ListLongMap!3039)

(declare-fun key!3287 () K!12140)

(declare-fun contains!13547 (ListMap!3669 K!12140) Bool)

(declare-fun extractMap!1256 (List!50879) ListMap!3669)

(assert (=> b!4540302 (= res!1892170 (not (contains!13547 (extractMap!1256 (t!357841 (toList!4408 lm!1477))) key!3287)))))

(declare-fun lt!1714884 () ListMap!3669)

(assert (=> b!4540302 (contains!13547 lt!1714884 key!3287)))

(declare-fun lt!1714874 () ListLongMap!3039)

(assert (=> b!4540302 (= lt!1714884 (extractMap!1256 (toList!4408 lt!1714874)))))

(declare-datatypes ((Hashable!5595 0))(
  ( (HashableExt!5594 (__x!31298 Int)) )
))
(declare-fun hashF!1107 () Hashable!5595)

(declare-fun lt!1714890 () Unit!98616)

(declare-fun lemmaListContainsThenExtractedMapContains!170 (ListLongMap!3039 K!12140 Hashable!5595) Unit!98616)

(assert (=> b!4540302 (= lt!1714890 (lemmaListContainsThenExtractedMapContains!170 lt!1714874 key!3287 hashF!1107))))

(declare-fun b!4540303 () Bool)

(declare-fun res!1892150 () Bool)

(declare-fun e!2829297 () Bool)

(assert (=> b!4540303 (=> res!1892150 e!2829297)))

(declare-fun newBucket!178 () List!50878)

(declare-fun noDuplicateKeys!1200 (List!50878) Bool)

(assert (=> b!4540303 (= res!1892150 (not (noDuplicateKeys!1200 newBucket!178)))))

(declare-fun b!4540304 () Bool)

(declare-fun res!1892147 () Bool)

(declare-fun e!2829286 () Bool)

(assert (=> b!4540304 (=> res!1892147 e!2829286)))

(declare-fun lt!1714885 () ListLongMap!3039)

(declare-fun head!9480 (ListLongMap!3039) tuple2!51236)

(assert (=> b!4540304 (= res!1892147 (not (= (head!9480 lt!1714885) lt!1714880)))))

(declare-fun e!2829305 () Unit!98616)

(declare-fun Unit!98619 () Unit!98616)

(assert (=> b!4540305 (= e!2829305 Unit!98619)))

(declare-fun hash!344 () (_ BitVec 64))

(assert (=> b!4540305 (not (= hash!344 (_1!28912 lt!1714880)))))

(declare-datatypes ((Option!11203 0))(
  ( (None!11202) (Some!11202 (v!44900 tuple2!51234)) )
))
(declare-fun lt!1714896 () Option!11203)

(declare-fun getPair!216 (List!50878 K!12140) Option!11203)

(assert (=> b!4540305 (= lt!1714896 (getPair!216 (_2!28912 lt!1714880) key!3287))))

(declare-fun lt!1714892 () Unit!98616)

(declare-fun forallContained!2610 (List!50879 Int tuple2!51236) Unit!98616)

(assert (=> b!4540305 (= lt!1714892 (forallContained!2610 (toList!4408 lm!1477) lambda!176132 (h!56636 (toList!4408 lm!1477))))))

(declare-fun lt!1714905 () Unit!98616)

(declare-fun lambda!176133 () Int)

(declare-fun forallContained!2611 (List!50878 Int tuple2!51234) Unit!98616)

(declare-fun get!16688 (Option!11203) tuple2!51234)

(assert (=> b!4540305 (= lt!1714905 (forallContained!2611 (_2!28912 (h!56636 (toList!4408 lm!1477))) lambda!176133 (tuple2!51235 key!3287 (_2!28911 (get!16688 lt!1714896)))))))

(assert (=> b!4540305 false))

(declare-fun b!4540306 () Bool)

(declare-fun e!2829299 () Bool)

(declare-fun e!2829287 () Bool)

(assert (=> b!4540306 (= e!2829299 e!2829287)))

(declare-fun res!1892162 () Bool)

(assert (=> b!4540306 (=> (not res!1892162) (not e!2829287))))

(assert (=> b!4540306 (= res!1892162 (contains!13547 lt!1714904 key!3287))))

(assert (=> b!4540306 (= lt!1714904 (extractMap!1256 (toList!4408 lm!1477)))))

(declare-fun b!4540307 () Bool)

(declare-fun Unit!98620 () Unit!98616)

(assert (=> b!4540307 (= e!2829305 Unit!98620)))

(declare-fun b!4540308 () Bool)

(declare-fun e!2829298 () Bool)

(declare-fun tp!1338636 () Bool)

(assert (=> b!4540308 (= e!2829298 tp!1338636)))

(declare-fun res!1892159 () Bool)

(assert (=> start!450680 (=> (not res!1892159) (not e!2829299))))

(declare-fun forall!10347 (List!50879 Int) Bool)

(assert (=> start!450680 (= res!1892159 (forall!10347 (toList!4408 lm!1477) lambda!176131))))

(assert (=> start!450680 e!2829299))

(assert (=> start!450680 true))

(declare-fun inv!66324 (ListLongMap!3039) Bool)

(assert (=> start!450680 (and (inv!66324 lm!1477) e!2829298)))

(declare-fun tp_is_empty!28077 () Bool)

(assert (=> start!450680 tp_is_empty!28077))

(declare-fun e!2829290 () Bool)

(assert (=> start!450680 e!2829290))

(declare-fun b!4540309 () Bool)

(declare-fun res!1892155 () Bool)

(declare-fun e!2829294 () Bool)

(assert (=> b!4540309 (=> res!1892155 e!2829294)))

(declare-fun lt!1714879 () tuple2!51236)

(declare-fun contains!13548 (List!50879 tuple2!51236) Bool)

(assert (=> b!4540309 (= res!1892155 (not (contains!13548 (t!357841 (toList!4408 lm!1477)) lt!1714879)))))

(declare-fun tp!1338637 () Bool)

(declare-fun tp_is_empty!28079 () Bool)

(declare-fun b!4540310 () Bool)

(assert (=> b!4540310 (= e!2829290 (and tp_is_empty!28077 tp_is_empty!28079 tp!1338637))))

(declare-fun b!4540311 () Bool)

(declare-fun res!1892157 () Bool)

(assert (=> b!4540311 (=> (not res!1892157) (not e!2829299))))

(declare-fun allKeysSameHashInMap!1307 (ListLongMap!3039 Hashable!5595) Bool)

(assert (=> b!4540311 (= res!1892157 (allKeysSameHashInMap!1307 lm!1477 hashF!1107))))

(declare-fun b!4540312 () Bool)

(declare-fun e!2829304 () Bool)

(assert (=> b!4540312 (= e!2829294 e!2829304)))

(declare-fun res!1892153 () Bool)

(assert (=> b!4540312 (=> res!1892153 e!2829304)))

(declare-fun lt!1714901 () Bool)

(assert (=> b!4540312 (= res!1892153 lt!1714901)))

(declare-fun lt!1714893 () Unit!98616)

(assert (=> b!4540312 (= lt!1714893 e!2829301)))

(declare-fun c!775533 () Bool)

(assert (=> b!4540312 (= c!775533 lt!1714901)))

(declare-fun lt!1714889 () List!50878)

(declare-fun containsKey!1876 (List!50878 K!12140) Bool)

(assert (=> b!4540312 (= lt!1714901 (not (containsKey!1876 lt!1714889 key!3287)))))

(declare-fun b!4540313 () Bool)

(declare-fun res!1892167 () Bool)

(assert (=> b!4540313 (=> res!1892167 e!2829294)))

(declare-fun apply!11937 (ListLongMap!3039 (_ BitVec 64)) List!50878)

(assert (=> b!4540313 (= res!1892167 (not (= (apply!11937 lt!1714874 hash!344) lt!1714889)))))

(declare-fun b!4540314 () Bool)

(declare-fun Unit!98621 () Unit!98616)

(assert (=> b!4540314 (= e!2829301 Unit!98621)))

(declare-fun lt!1714883 () Unit!98616)

(declare-fun lemmaNotInItsHashBucketThenNotInMap!188 (ListLongMap!3039 K!12140 Hashable!5595) Unit!98616)

(assert (=> b!4540314 (= lt!1714883 (lemmaNotInItsHashBucketThenNotInMap!188 lm!1477 key!3287 hashF!1107))))

(assert (=> b!4540314 false))

(declare-fun b!4540315 () Bool)

(assert (=> b!4540315 (= e!2829297 e!2829294)))

(declare-fun res!1892158 () Bool)

(assert (=> b!4540315 (=> res!1892158 e!2829294)))

(declare-fun contains!13549 (ListLongMap!3039 (_ BitVec 64)) Bool)

(assert (=> b!4540315 (= res!1892158 (not (contains!13549 lt!1714874 hash!344)))))

(declare-fun tail!7802 (ListLongMap!3039) ListLongMap!3039)

(assert (=> b!4540315 (= lt!1714874 (tail!7802 lm!1477))))

(declare-fun b!4540316 () Bool)

(declare-fun e!2829300 () Bool)

(assert (=> b!4540316 (= e!2829289 e!2829300)))

(declare-fun res!1892165 () Bool)

(assert (=> b!4540316 (=> res!1892165 e!2829300)))

(assert (=> b!4540316 (= res!1892165 (not (noDuplicateKeys!1200 (_2!28912 lt!1714880))))))

(declare-fun lt!1714894 () Unit!98616)

(assert (=> b!4540316 (= lt!1714894 (forallContained!2610 (toList!4408 lm!1477) lambda!176131 (h!56636 (toList!4408 lm!1477))))))

(declare-fun b!4540317 () Bool)

(declare-fun res!1892163 () Bool)

(assert (=> b!4540317 (=> res!1892163 e!2829297)))

(get-info :version)

(assert (=> b!4540317 (= res!1892163 (or ((_ is Nil!50755) (toList!4408 lm!1477)) (= (_1!28912 (h!56636 (toList!4408 lm!1477))) hash!344)))))

(declare-fun b!4540318 () Bool)

(assert (=> b!4540318 (= e!2829304 e!2829288)))

(declare-fun res!1892166 () Bool)

(assert (=> b!4540318 (=> res!1892166 e!2829288)))

(declare-fun containsKeyBiggerList!180 (List!50879 K!12140) Bool)

(assert (=> b!4540318 (= res!1892166 (not (containsKeyBiggerList!180 (t!357841 (toList!4408 lm!1477)) key!3287)))))

(assert (=> b!4540318 (containsKeyBiggerList!180 (toList!4408 lt!1714874) key!3287)))

(declare-fun lt!1714881 () Unit!98616)

(declare-fun lemmaInLongMapThenContainsKeyBiggerList!116 (ListLongMap!3039 K!12140 Hashable!5595) Unit!98616)

(assert (=> b!4540318 (= lt!1714881 (lemmaInLongMapThenContainsKeyBiggerList!116 lt!1714874 key!3287 hashF!1107))))

(declare-fun b!4540319 () Bool)

(assert (=> b!4540319 (= e!2829302 e!2829286)))

(declare-fun res!1892152 () Bool)

(assert (=> b!4540319 (=> res!1892152 e!2829286)))

(declare-fun lt!1714908 () tuple2!51236)

(declare-fun +!1606 (ListLongMap!3039 tuple2!51236) ListLongMap!3039)

(assert (=> b!4540319 (= res!1892152 (not (= lt!1714885 (+!1606 lm!1477 lt!1714908))))))

(declare-fun lt!1714877 () ListLongMap!3039)

(assert (=> b!4540319 (= lt!1714885 (+!1606 lt!1714877 lt!1714880))))

(declare-fun b!4540320 () Bool)

(declare-fun e!2829295 () Bool)

(declare-fun e!2829293 () Bool)

(assert (=> b!4540320 (= e!2829295 e!2829293)))

(declare-fun res!1892145 () Bool)

(assert (=> b!4540320 (=> res!1892145 e!2829293)))

(declare-fun lt!1714906 () ListMap!3669)

(assert (=> b!4540320 (= res!1892145 (not (eq!657 lt!1714888 lt!1714906)))))

(assert (=> b!4540320 (= lt!1714888 lt!1714906)))

(declare-fun -!426 (ListMap!3669 K!12140) ListMap!3669)

(assert (=> b!4540320 (= lt!1714906 (-!426 (addToMapMapFromBucket!727 (_2!28912 lt!1714880) lt!1714884) key!3287))))

(declare-fun lt!1714882 () Unit!98616)

(declare-fun lemmaAddToMapFromBucketMinusKeyIsCommutative!24 (ListMap!3669 K!12140 List!50878) Unit!98616)

(assert (=> b!4540320 (= lt!1714882 (lemmaAddToMapFromBucketMinusKeyIsCommutative!24 lt!1714884 key!3287 (_2!28912 lt!1714880)))))

(declare-fun b!4540321 () Bool)

(declare-fun e!2829303 () Bool)

(assert (=> b!4540321 (= e!2829303 (forall!10347 (toList!4408 lt!1714885) lambda!176131))))

(declare-fun b!4540322 () Bool)

(declare-fun res!1892168 () Bool)

(assert (=> b!4540322 (=> res!1892168 e!2829302)))

(assert (=> b!4540322 (= res!1892168 (bvsge (_1!28912 lt!1714880) hash!344))))

(declare-fun b!4540323 () Bool)

(declare-fun e!2829292 () Bool)

(assert (=> b!4540323 (= e!2829287 e!2829292)))

(declare-fun res!1892164 () Bool)

(assert (=> b!4540323 (=> (not res!1892164) (not e!2829292))))

(declare-fun lt!1714875 () (_ BitVec 64))

(assert (=> b!4540323 (= res!1892164 (= lt!1714875 hash!344))))

(declare-fun hash!2919 (Hashable!5595 K!12140) (_ BitVec 64))

(assert (=> b!4540323 (= lt!1714875 (hash!2919 hashF!1107 key!3287))))

(declare-fun b!4540324 () Bool)

(assert (=> b!4540324 (= e!2829286 e!2829291)))

(declare-fun res!1892146 () Bool)

(assert (=> b!4540324 (=> res!1892146 e!2829291)))

(assert (=> b!4540324 (= res!1892146 (not (eq!657 lt!1714887 lt!1714891)))))

(assert (=> b!4540324 (= lt!1714891 (addToMapMapFromBucket!727 (_2!28912 lt!1714880) lt!1714899))))

(assert (=> b!4540324 (= lt!1714887 (extractMap!1256 (toList!4408 lt!1714885)))))

(declare-fun b!4540325 () Bool)

(declare-fun res!1892151 () Bool)

(assert (=> b!4540325 (=> res!1892151 e!2829303)))

(declare-fun lt!1714897 () ListMap!3669)

(assert (=> b!4540325 (= res!1892151 (not (eq!657 lt!1714887 lt!1714897)))))

(declare-fun b!4540326 () Bool)

(assert (=> b!4540326 (= e!2829293 e!2829303)))

(declare-fun res!1892148 () Bool)

(assert (=> b!4540326 (=> res!1892148 e!2829303)))

(assert (=> b!4540326 (= res!1892148 (not (eq!657 lt!1714888 lt!1714897)))))

(assert (=> b!4540326 (= lt!1714897 (-!426 lt!1714904 key!3287))))

(declare-fun b!4540327 () Bool)

(assert (=> b!4540327 (= e!2829296 e!2829302)))

(declare-fun res!1892149 () Bool)

(assert (=> b!4540327 (=> res!1892149 e!2829302)))

(assert (=> b!4540327 (= res!1892149 (not (eq!657 lt!1714902 lt!1714904)))))

(assert (=> b!4540327 (= lt!1714902 (extractMap!1256 (toList!4408 (+!1606 lt!1714874 lt!1714880))))))

(assert (=> b!4540327 (= lt!1714880 (head!9480 lm!1477))))

(assert (=> b!4540327 (eq!657 lt!1714899 lt!1714886)))

(assert (=> b!4540327 (= lt!1714886 (-!426 lt!1714884 key!3287))))

(assert (=> b!4540327 (= lt!1714899 (extractMap!1256 (toList!4408 lt!1714877)))))

(assert (=> b!4540327 (= lt!1714877 (+!1606 lt!1714874 lt!1714908))))

(assert (=> b!4540327 (= lt!1714908 (tuple2!51237 hash!344 newBucket!178))))

(declare-fun lt!1714898 () Unit!98616)

(declare-fun lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMap!185 (ListLongMap!3039 (_ BitVec 64) List!50878 K!12140 Hashable!5595) Unit!98616)

(assert (=> b!4540327 (= lt!1714898 (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMap!185 lt!1714874 hash!344 newBucket!178 key!3287 hashF!1107))))

(declare-fun b!4540328 () Bool)

(assert (=> b!4540328 (= e!2829300 e!2829295)))

(declare-fun res!1892169 () Bool)

(assert (=> b!4540328 (=> res!1892169 e!2829295)))

(declare-fun lt!1714907 () Bool)

(assert (=> b!4540328 (= res!1892169 lt!1714907)))

(declare-fun lt!1714878 () Unit!98616)

(assert (=> b!4540328 (= lt!1714878 e!2829305)))

(declare-fun c!775532 () Bool)

(assert (=> b!4540328 (= c!775532 lt!1714907)))

(assert (=> b!4540328 (= lt!1714907 (containsKey!1876 (_2!28912 lt!1714880) key!3287))))

(declare-fun b!4540329 () Bool)

(assert (=> b!4540329 (= e!2829292 (not e!2829297))))

(declare-fun res!1892161 () Bool)

(assert (=> b!4540329 (=> res!1892161 e!2829297)))

(declare-fun removePairForKey!827 (List!50878 K!12140) List!50878)

(assert (=> b!4540329 (= res!1892161 (not (= newBucket!178 (removePairForKey!827 lt!1714889 key!3287))))))

(declare-fun lt!1714876 () Unit!98616)

(assert (=> b!4540329 (= lt!1714876 (forallContained!2610 (toList!4408 lm!1477) lambda!176131 lt!1714879))))

(assert (=> b!4540329 (contains!13548 (toList!4408 lm!1477) lt!1714879)))

(assert (=> b!4540329 (= lt!1714879 (tuple2!51237 hash!344 lt!1714889))))

(declare-fun lt!1714903 () Unit!98616)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!712 (List!50879 (_ BitVec 64) List!50878) Unit!98616)

(assert (=> b!4540329 (= lt!1714903 (lemmaGetValueByKeyImpliesContainsTuple!712 (toList!4408 lm!1477) hash!344 lt!1714889))))

(assert (=> b!4540329 (= lt!1714889 (apply!11937 lm!1477 hash!344))))

(assert (=> b!4540329 (contains!13549 lm!1477 lt!1714875)))

(declare-fun lt!1714900 () Unit!98616)

(declare-fun lemmaInGenMapThenLongMapContainsHash!274 (ListLongMap!3039 K!12140 Hashable!5595) Unit!98616)

(assert (=> b!4540329 (= lt!1714900 (lemmaInGenMapThenLongMapContainsHash!274 lm!1477 key!3287 hashF!1107))))

(declare-fun b!4540330 () Bool)

(declare-fun res!1892154 () Bool)

(assert (=> b!4540330 (=> (not res!1892154) (not e!2829292))))

(declare-fun allKeysSameHash!1054 (List!50878 (_ BitVec 64) Hashable!5595) Bool)

(assert (=> b!4540330 (= res!1892154 (allKeysSameHash!1054 newBucket!178 hash!344 hashF!1107))))

(assert (= (and start!450680 res!1892159) b!4540311))

(assert (= (and b!4540311 res!1892157) b!4540306))

(assert (= (and b!4540306 res!1892162) b!4540323))

(assert (= (and b!4540323 res!1892164) b!4540330))

(assert (= (and b!4540330 res!1892154) b!4540329))

(assert (= (and b!4540329 (not res!1892161)) b!4540303))

(assert (= (and b!4540303 (not res!1892150)) b!4540317))

(assert (= (and b!4540317 (not res!1892163)) b!4540315))

(assert (= (and b!4540315 (not res!1892158)) b!4540313))

(assert (= (and b!4540313 (not res!1892167)) b!4540309))

(assert (= (and b!4540309 (not res!1892155)) b!4540312))

(assert (= (and b!4540312 c!775533) b!4540314))

(assert (= (and b!4540312 (not c!775533)) b!4540300))

(assert (= (and b!4540312 (not res!1892153)) b!4540318))

(assert (= (and b!4540318 (not res!1892166)) b!4540302))

(assert (= (and b!4540302 (not res!1892170)) b!4540327))

(assert (= (and b!4540327 (not res!1892149)) b!4540301))

(assert (= (and b!4540301 (not res!1892156)) b!4540322))

(assert (= (and b!4540322 (not res!1892168)) b!4540319))

(assert (= (and b!4540319 (not res!1892152)) b!4540304))

(assert (= (and b!4540304 (not res!1892147)) b!4540324))

(assert (= (and b!4540324 (not res!1892146)) b!4540299))

(assert (= (and b!4540299 (not res!1892160)) b!4540316))

(assert (= (and b!4540316 (not res!1892165)) b!4540328))

(assert (= (and b!4540328 c!775532) b!4540305))

(assert (= (and b!4540328 (not c!775532)) b!4540307))

(assert (= (and b!4540328 (not res!1892169)) b!4540320))

(assert (= (and b!4540320 (not res!1892145)) b!4540326))

(assert (= (and b!4540326 (not res!1892148)) b!4540325))

(assert (= (and b!4540325 (not res!1892151)) b!4540321))

(assert (= start!450680 b!4540308))

(assert (= (and start!450680 ((_ is Cons!50754) newBucket!178)) b!4540310))

(declare-fun m!5306935 () Bool)

(assert (=> b!4540329 m!5306935))

(declare-fun m!5306937 () Bool)

(assert (=> b!4540329 m!5306937))

(declare-fun m!5306939 () Bool)

(assert (=> b!4540329 m!5306939))

(declare-fun m!5306941 () Bool)

(assert (=> b!4540329 m!5306941))

(declare-fun m!5306943 () Bool)

(assert (=> b!4540329 m!5306943))

(declare-fun m!5306945 () Bool)

(assert (=> b!4540329 m!5306945))

(declare-fun m!5306947 () Bool)

(assert (=> b!4540329 m!5306947))

(declare-fun m!5306949 () Bool)

(assert (=> b!4540303 m!5306949))

(declare-fun m!5306951 () Bool)

(assert (=> b!4540323 m!5306951))

(declare-fun m!5306953 () Bool)

(assert (=> b!4540328 m!5306953))

(declare-fun m!5306955 () Bool)

(assert (=> b!4540304 m!5306955))

(declare-fun m!5306957 () Bool)

(assert (=> b!4540319 m!5306957))

(declare-fun m!5306959 () Bool)

(assert (=> b!4540319 m!5306959))

(declare-fun m!5306961 () Bool)

(assert (=> b!4540326 m!5306961))

(declare-fun m!5306963 () Bool)

(assert (=> b!4540326 m!5306963))

(declare-fun m!5306965 () Bool)

(assert (=> b!4540330 m!5306965))

(declare-fun m!5306967 () Bool)

(assert (=> b!4540311 m!5306967))

(declare-fun m!5306969 () Bool)

(assert (=> b!4540305 m!5306969))

(declare-fun m!5306971 () Bool)

(assert (=> b!4540305 m!5306971))

(declare-fun m!5306973 () Bool)

(assert (=> b!4540305 m!5306973))

(declare-fun m!5306975 () Bool)

(assert (=> b!4540305 m!5306975))

(declare-fun m!5306977 () Bool)

(assert (=> b!4540302 m!5306977))

(declare-fun m!5306979 () Bool)

(assert (=> b!4540302 m!5306979))

(declare-fun m!5306981 () Bool)

(assert (=> b!4540302 m!5306981))

(declare-fun m!5306983 () Bool)

(assert (=> b!4540302 m!5306983))

(assert (=> b!4540302 m!5306977))

(declare-fun m!5306985 () Bool)

(assert (=> b!4540302 m!5306985))

(declare-fun m!5306987 () Bool)

(assert (=> b!4540316 m!5306987))

(declare-fun m!5306989 () Bool)

(assert (=> b!4540316 m!5306989))

(declare-fun m!5306991 () Bool)

(assert (=> b!4540314 m!5306991))

(declare-fun m!5306993 () Bool)

(assert (=> b!4540309 m!5306993))

(declare-fun m!5306995 () Bool)

(assert (=> b!4540318 m!5306995))

(declare-fun m!5306997 () Bool)

(assert (=> b!4540318 m!5306997))

(declare-fun m!5306999 () Bool)

(assert (=> b!4540318 m!5306999))

(declare-fun m!5307001 () Bool)

(assert (=> b!4540321 m!5307001))

(declare-fun m!5307003 () Bool)

(assert (=> b!4540306 m!5307003))

(declare-fun m!5307005 () Bool)

(assert (=> b!4540306 m!5307005))

(declare-fun m!5307007 () Bool)

(assert (=> b!4540315 m!5307007))

(declare-fun m!5307009 () Bool)

(assert (=> b!4540315 m!5307009))

(declare-fun m!5307011 () Bool)

(assert (=> b!4540320 m!5307011))

(declare-fun m!5307013 () Bool)

(assert (=> b!4540320 m!5307013))

(assert (=> b!4540320 m!5307013))

(declare-fun m!5307015 () Bool)

(assert (=> b!4540320 m!5307015))

(declare-fun m!5307017 () Bool)

(assert (=> b!4540320 m!5307017))

(declare-fun m!5307019 () Bool)

(assert (=> b!4540301 m!5307019))

(declare-fun m!5307021 () Bool)

(assert (=> b!4540327 m!5307021))

(declare-fun m!5307023 () Bool)

(assert (=> b!4540327 m!5307023))

(declare-fun m!5307025 () Bool)

(assert (=> b!4540327 m!5307025))

(declare-fun m!5307027 () Bool)

(assert (=> b!4540327 m!5307027))

(declare-fun m!5307029 () Bool)

(assert (=> b!4540327 m!5307029))

(declare-fun m!5307031 () Bool)

(assert (=> b!4540327 m!5307031))

(declare-fun m!5307033 () Bool)

(assert (=> b!4540327 m!5307033))

(declare-fun m!5307035 () Bool)

(assert (=> b!4540327 m!5307035))

(declare-fun m!5307037 () Bool)

(assert (=> b!4540327 m!5307037))

(declare-fun m!5307039 () Bool)

(assert (=> b!4540325 m!5307039))

(declare-fun m!5307041 () Bool)

(assert (=> b!4540324 m!5307041))

(declare-fun m!5307043 () Bool)

(assert (=> b!4540324 m!5307043))

(declare-fun m!5307045 () Bool)

(assert (=> b!4540324 m!5307045))

(declare-fun m!5307047 () Bool)

(assert (=> b!4540313 m!5307047))

(declare-fun m!5307049 () Bool)

(assert (=> b!4540299 m!5307049))

(declare-fun m!5307051 () Bool)

(assert (=> b!4540299 m!5307051))

(declare-fun m!5307053 () Bool)

(assert (=> b!4540299 m!5307053))

(declare-fun m!5307055 () Bool)

(assert (=> b!4540299 m!5307055))

(declare-fun m!5307057 () Bool)

(assert (=> start!450680 m!5307057))

(declare-fun m!5307059 () Bool)

(assert (=> start!450680 m!5307059))

(declare-fun m!5307061 () Bool)

(assert (=> b!4540312 m!5307061))

(check-sat (not start!450680) (not b!4540302) (not b!4540308) (not b!4540318) (not b!4540305) (not b!4540311) (not b!4540314) (not b!4540329) (not b!4540304) (not b!4540312) (not b!4540306) tp_is_empty!28077 (not b!4540325) (not b!4540327) tp_is_empty!28079 (not b!4540320) (not b!4540324) (not b!4540328) (not b!4540321) (not b!4540299) (not b!4540319) (not b!4540303) (not b!4540313) (not b!4540326) (not b!4540330) (not b!4540323) (not b!4540316) (not b!4540310) (not b!4540309) (not b!4540301) (not b!4540315))
(check-sat)
(get-model)

(declare-fun d!1403566 () Bool)

(declare-fun res!1892196 () Bool)

(declare-fun e!2829340 () Bool)

(assert (=> d!1403566 (=> res!1892196 e!2829340)))

(assert (=> d!1403566 (= res!1892196 (not ((_ is Cons!50754) (_2!28912 lt!1714880))))))

(assert (=> d!1403566 (= (noDuplicateKeys!1200 (_2!28912 lt!1714880)) e!2829340)))

(declare-fun b!4540382 () Bool)

(declare-fun e!2829341 () Bool)

(assert (=> b!4540382 (= e!2829340 e!2829341)))

(declare-fun res!1892197 () Bool)

(assert (=> b!4540382 (=> (not res!1892197) (not e!2829341))))

(assert (=> b!4540382 (= res!1892197 (not (containsKey!1876 (t!357840 (_2!28912 lt!1714880)) (_1!28911 (h!56635 (_2!28912 lt!1714880))))))))

(declare-fun b!4540383 () Bool)

(assert (=> b!4540383 (= e!2829341 (noDuplicateKeys!1200 (t!357840 (_2!28912 lt!1714880))))))

(assert (= (and d!1403566 (not res!1892196)) b!4540382))

(assert (= (and b!4540382 res!1892197) b!4540383))

(declare-fun m!5307109 () Bool)

(assert (=> b!4540382 m!5307109))

(declare-fun m!5307111 () Bool)

(assert (=> b!4540383 m!5307111))

(assert (=> b!4540316 d!1403566))

(declare-fun d!1403570 () Bool)

(declare-fun dynLambda!21216 (Int tuple2!51236) Bool)

(assert (=> d!1403570 (dynLambda!21216 lambda!176131 (h!56636 (toList!4408 lm!1477)))))

(declare-fun lt!1714942 () Unit!98616)

(declare-fun choose!29902 (List!50879 Int tuple2!51236) Unit!98616)

(assert (=> d!1403570 (= lt!1714942 (choose!29902 (toList!4408 lm!1477) lambda!176131 (h!56636 (toList!4408 lm!1477))))))

(declare-fun e!2829360 () Bool)

(assert (=> d!1403570 e!2829360))

(declare-fun res!1892213 () Bool)

(assert (=> d!1403570 (=> (not res!1892213) (not e!2829360))))

(assert (=> d!1403570 (= res!1892213 (forall!10347 (toList!4408 lm!1477) lambda!176131))))

(assert (=> d!1403570 (= (forallContained!2610 (toList!4408 lm!1477) lambda!176131 (h!56636 (toList!4408 lm!1477))) lt!1714942)))

(declare-fun b!4540411 () Bool)

(assert (=> b!4540411 (= e!2829360 (contains!13548 (toList!4408 lm!1477) (h!56636 (toList!4408 lm!1477))))))

(assert (= (and d!1403570 res!1892213) b!4540411))

(declare-fun b_lambda!158067 () Bool)

(assert (=> (not b_lambda!158067) (not d!1403570)))

(declare-fun m!5307131 () Bool)

(assert (=> d!1403570 m!5307131))

(declare-fun m!5307133 () Bool)

(assert (=> d!1403570 m!5307133))

(assert (=> d!1403570 m!5307057))

(declare-fun m!5307135 () Bool)

(assert (=> b!4540411 m!5307135))

(assert (=> b!4540316 d!1403570))

(declare-fun d!1403576 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!8439 (List!50878) (InoxSet tuple2!51234))

(assert (=> d!1403576 (= (eq!657 lt!1714887 lt!1714888) (= (content!8439 (toList!4407 lt!1714887)) (content!8439 (toList!4407 lt!1714888))))))

(declare-fun bs!878233 () Bool)

(assert (= bs!878233 d!1403576))

(declare-fun m!5307145 () Bool)

(assert (=> bs!878233 m!5307145))

(declare-fun m!5307147 () Bool)

(assert (=> bs!878233 m!5307147))

(assert (=> b!4540299 d!1403576))

(declare-fun d!1403582 () Bool)

(assert (=> d!1403582 (= (eq!657 lt!1714891 lt!1714888) (= (content!8439 (toList!4407 lt!1714891)) (content!8439 (toList!4407 lt!1714888))))))

(declare-fun bs!878234 () Bool)

(assert (= bs!878234 d!1403582))

(declare-fun m!5307149 () Bool)

(assert (=> bs!878234 m!5307149))

(assert (=> bs!878234 m!5307147))

(assert (=> b!4540299 d!1403582))

(declare-fun bs!878274 () Bool)

(declare-fun b!4540525 () Bool)

(assert (= bs!878274 (and b!4540525 b!4540305)))

(declare-fun lambda!176211 () Int)

(assert (=> bs!878274 (not (= lambda!176211 lambda!176133))))

(assert (=> b!4540525 true))

(declare-fun bs!878275 () Bool)

(declare-fun b!4540528 () Bool)

(assert (= bs!878275 (and b!4540528 b!4540305)))

(declare-fun lambda!176212 () Int)

(assert (=> bs!878275 (not (= lambda!176212 lambda!176133))))

(declare-fun bs!878276 () Bool)

(assert (= bs!878276 (and b!4540528 b!4540525)))

(assert (=> bs!878276 (= lambda!176212 lambda!176211)))

(assert (=> b!4540528 true))

(declare-fun lambda!176213 () Int)

(assert (=> bs!878275 (not (= lambda!176213 lambda!176133))))

(declare-fun lt!1715103 () ListMap!3669)

(assert (=> bs!878276 (= (= lt!1715103 lt!1714886) (= lambda!176213 lambda!176211))))

(assert (=> b!4540528 (= (= lt!1715103 lt!1714886) (= lambda!176213 lambda!176212))))

(assert (=> b!4540528 true))

(declare-fun bs!878277 () Bool)

(declare-fun d!1403584 () Bool)

(assert (= bs!878277 (and d!1403584 b!4540305)))

(declare-fun lambda!176214 () Int)

(assert (=> bs!878277 (not (= lambda!176214 lambda!176133))))

(declare-fun bs!878278 () Bool)

(assert (= bs!878278 (and d!1403584 b!4540525)))

(declare-fun lt!1715122 () ListMap!3669)

(assert (=> bs!878278 (= (= lt!1715122 lt!1714886) (= lambda!176214 lambda!176211))))

(declare-fun bs!878279 () Bool)

(assert (= bs!878279 (and d!1403584 b!4540528)))

(assert (=> bs!878279 (= (= lt!1715122 lt!1714886) (= lambda!176214 lambda!176212))))

(assert (=> bs!878279 (= (= lt!1715122 lt!1715103) (= lambda!176214 lambda!176213))))

(assert (=> d!1403584 true))

(declare-fun call!316658 () Bool)

(declare-fun lt!1715118 () ListMap!3669)

(declare-fun c!775574 () Bool)

(declare-fun bm!316653 () Bool)

(declare-fun forall!10349 (List!50878 Int) Bool)

(assert (=> bm!316653 (= call!316658 (forall!10349 (ite c!775574 (toList!4407 lt!1714886) (toList!4407 lt!1715118)) (ite c!775574 lambda!176211 lambda!176213)))))

(declare-fun b!4540524 () Bool)

(declare-fun e!2829441 () Bool)

(declare-fun invariantList!1045 (List!50878) Bool)

(assert (=> b!4540524 (= e!2829441 (invariantList!1045 (toList!4407 lt!1715122)))))

(declare-fun e!2829442 () ListMap!3669)

(assert (=> b!4540525 (= e!2829442 lt!1714886)))

(declare-fun lt!1715123 () Unit!98616)

(declare-fun call!316659 () Unit!98616)

(assert (=> b!4540525 (= lt!1715123 call!316659)))

(declare-fun call!316660 () Bool)

(assert (=> b!4540525 call!316660))

(declare-fun lt!1715106 () Unit!98616)

(assert (=> b!4540525 (= lt!1715106 lt!1715123)))

(assert (=> b!4540525 call!316658))

(declare-fun lt!1715121 () Unit!98616)

(declare-fun Unit!98629 () Unit!98616)

(assert (=> b!4540525 (= lt!1715121 Unit!98629)))

(declare-fun bm!316654 () Bool)

(assert (=> bm!316654 (= call!316660 (forall!10349 (ite c!775574 (toList!4407 lt!1714886) (toList!4407 lt!1715118)) (ite c!775574 lambda!176211 lambda!176213)))))

(declare-fun b!4540526 () Bool)

(declare-fun res!1892276 () Bool)

(assert (=> b!4540526 (=> (not res!1892276) (not e!2829441))))

(assert (=> b!4540526 (= res!1892276 (forall!10349 (toList!4407 lt!1714886) lambda!176214))))

(assert (=> d!1403584 e!2829441))

(declare-fun res!1892274 () Bool)

(assert (=> d!1403584 (=> (not res!1892274) (not e!2829441))))

(assert (=> d!1403584 (= res!1892274 (forall!10349 (_2!28912 lt!1714880) lambda!176214))))

(assert (=> d!1403584 (= lt!1715122 e!2829442)))

(assert (=> d!1403584 (= c!775574 ((_ is Nil!50754) (_2!28912 lt!1714880)))))

(assert (=> d!1403584 (noDuplicateKeys!1200 (_2!28912 lt!1714880))))

(assert (=> d!1403584 (= (addToMapMapFromBucket!727 (_2!28912 lt!1714880) lt!1714886) lt!1715122)))

(declare-fun b!4540527 () Bool)

(declare-fun e!2829443 () Bool)

(assert (=> b!4540527 (= e!2829443 (forall!10349 (toList!4407 lt!1714886) lambda!176213))))

(declare-fun bm!316655 () Bool)

(declare-fun lemmaContainsAllItsOwnKeys!365 (ListMap!3669) Unit!98616)

(assert (=> bm!316655 (= call!316659 (lemmaContainsAllItsOwnKeys!365 lt!1714886))))

(assert (=> b!4540528 (= e!2829442 lt!1715103)))

(declare-fun +!1607 (ListMap!3669 tuple2!51234) ListMap!3669)

(assert (=> b!4540528 (= lt!1715118 (+!1607 lt!1714886 (h!56635 (_2!28912 lt!1714880))))))

(assert (=> b!4540528 (= lt!1715103 (addToMapMapFromBucket!727 (t!357840 (_2!28912 lt!1714880)) (+!1607 lt!1714886 (h!56635 (_2!28912 lt!1714880)))))))

(declare-fun lt!1715108 () Unit!98616)

(assert (=> b!4540528 (= lt!1715108 call!316659)))

(assert (=> b!4540528 (forall!10349 (toList!4407 lt!1714886) lambda!176212)))

(declare-fun lt!1715107 () Unit!98616)

(assert (=> b!4540528 (= lt!1715107 lt!1715108)))

(assert (=> b!4540528 call!316658))

(declare-fun lt!1715112 () Unit!98616)

(declare-fun Unit!98630 () Unit!98616)

(assert (=> b!4540528 (= lt!1715112 Unit!98630)))

(assert (=> b!4540528 (forall!10349 (t!357840 (_2!28912 lt!1714880)) lambda!176213)))

(declare-fun lt!1715104 () Unit!98616)

(declare-fun Unit!98631 () Unit!98616)

(assert (=> b!4540528 (= lt!1715104 Unit!98631)))

(declare-fun lt!1715116 () Unit!98616)

(declare-fun Unit!98632 () Unit!98616)

(assert (=> b!4540528 (= lt!1715116 Unit!98632)))

(declare-fun lt!1715109 () Unit!98616)

(assert (=> b!4540528 (= lt!1715109 (forallContained!2611 (toList!4407 lt!1715118) lambda!176213 (h!56635 (_2!28912 lt!1714880))))))

(assert (=> b!4540528 (contains!13547 lt!1715118 (_1!28911 (h!56635 (_2!28912 lt!1714880))))))

(declare-fun lt!1715114 () Unit!98616)

(declare-fun Unit!98633 () Unit!98616)

(assert (=> b!4540528 (= lt!1715114 Unit!98633)))

(assert (=> b!4540528 (contains!13547 lt!1715103 (_1!28911 (h!56635 (_2!28912 lt!1714880))))))

(declare-fun lt!1715115 () Unit!98616)

(declare-fun Unit!98634 () Unit!98616)

(assert (=> b!4540528 (= lt!1715115 Unit!98634)))

(assert (=> b!4540528 (forall!10349 (_2!28912 lt!1714880) lambda!176213)))

(declare-fun lt!1715113 () Unit!98616)

(declare-fun Unit!98635 () Unit!98616)

(assert (=> b!4540528 (= lt!1715113 Unit!98635)))

(assert (=> b!4540528 call!316660))

(declare-fun lt!1715105 () Unit!98616)

(declare-fun Unit!98636 () Unit!98616)

(assert (=> b!4540528 (= lt!1715105 Unit!98636)))

(declare-fun lt!1715120 () Unit!98616)

(declare-fun Unit!98637 () Unit!98616)

(assert (=> b!4540528 (= lt!1715120 Unit!98637)))

(declare-fun lt!1715111 () Unit!98616)

(declare-fun addForallContainsKeyThenBeforeAdding!365 (ListMap!3669 ListMap!3669 K!12140 V!12386) Unit!98616)

(assert (=> b!4540528 (= lt!1715111 (addForallContainsKeyThenBeforeAdding!365 lt!1714886 lt!1715103 (_1!28911 (h!56635 (_2!28912 lt!1714880))) (_2!28911 (h!56635 (_2!28912 lt!1714880)))))))

(assert (=> b!4540528 (forall!10349 (toList!4407 lt!1714886) lambda!176213)))

(declare-fun lt!1715110 () Unit!98616)

(assert (=> b!4540528 (= lt!1715110 lt!1715111)))

(assert (=> b!4540528 (forall!10349 (toList!4407 lt!1714886) lambda!176213)))

(declare-fun lt!1715117 () Unit!98616)

(declare-fun Unit!98638 () Unit!98616)

(assert (=> b!4540528 (= lt!1715117 Unit!98638)))

(declare-fun res!1892275 () Bool)

(assert (=> b!4540528 (= res!1892275 (forall!10349 (_2!28912 lt!1714880) lambda!176213))))

(assert (=> b!4540528 (=> (not res!1892275) (not e!2829443))))

(assert (=> b!4540528 e!2829443))

(declare-fun lt!1715119 () Unit!98616)

(declare-fun Unit!98639 () Unit!98616)

(assert (=> b!4540528 (= lt!1715119 Unit!98639)))

(assert (= (and d!1403584 c!775574) b!4540525))

(assert (= (and d!1403584 (not c!775574)) b!4540528))

(assert (= (and b!4540528 res!1892275) b!4540527))

(assert (= (or b!4540525 b!4540528) bm!316653))

(assert (= (or b!4540525 b!4540528) bm!316654))

(assert (= (or b!4540525 b!4540528) bm!316655))

(assert (= (and d!1403584 res!1892274) b!4540526))

(assert (= (and b!4540526 res!1892276) b!4540524))

(declare-fun m!5307303 () Bool)

(assert (=> d!1403584 m!5307303))

(assert (=> d!1403584 m!5306987))

(declare-fun m!5307305 () Bool)

(assert (=> b!4540527 m!5307305))

(declare-fun m!5307307 () Bool)

(assert (=> bm!316655 m!5307307))

(declare-fun m!5307309 () Bool)

(assert (=> b!4540528 m!5307309))

(declare-fun m!5307311 () Bool)

(assert (=> b!4540528 m!5307311))

(declare-fun m!5307313 () Bool)

(assert (=> b!4540528 m!5307313))

(declare-fun m!5307315 () Bool)

(assert (=> b!4540528 m!5307315))

(declare-fun m!5307317 () Bool)

(assert (=> b!4540528 m!5307317))

(declare-fun m!5307319 () Bool)

(assert (=> b!4540528 m!5307319))

(assert (=> b!4540528 m!5307315))

(assert (=> b!4540528 m!5307305))

(declare-fun m!5307321 () Bool)

(assert (=> b!4540528 m!5307321))

(assert (=> b!4540528 m!5307305))

(declare-fun m!5307323 () Bool)

(assert (=> b!4540528 m!5307323))

(assert (=> b!4540528 m!5307311))

(declare-fun m!5307325 () Bool)

(assert (=> b!4540528 m!5307325))

(declare-fun m!5307327 () Bool)

(assert (=> b!4540524 m!5307327))

(declare-fun m!5307329 () Bool)

(assert (=> b!4540526 m!5307329))

(declare-fun m!5307331 () Bool)

(assert (=> bm!316654 m!5307331))

(assert (=> bm!316653 m!5307331))

(assert (=> b!4540299 d!1403584))

(declare-fun d!1403622 () Bool)

(assert (=> d!1403622 (eq!657 (addToMapMapFromBucket!727 (_2!28912 lt!1714880) lt!1714899) (addToMapMapFromBucket!727 (_2!28912 lt!1714880) lt!1714886))))

(declare-fun lt!1715150 () Unit!98616)

(declare-fun choose!29904 (ListMap!3669 ListMap!3669 List!50878) Unit!98616)

(assert (=> d!1403622 (= lt!1715150 (choose!29904 lt!1714899 lt!1714886 (_2!28912 lt!1714880)))))

(assert (=> d!1403622 (noDuplicateKeys!1200 (_2!28912 lt!1714880))))

(assert (=> d!1403622 (= (lemmaAddToMapFromBucketPreservesEquivalence!76 lt!1714899 lt!1714886 (_2!28912 lt!1714880)) lt!1715150)))

(declare-fun bs!878293 () Bool)

(assert (= bs!878293 d!1403622))

(assert (=> bs!878293 m!5307043))

(assert (=> bs!878293 m!5307053))

(declare-fun m!5307337 () Bool)

(assert (=> bs!878293 m!5307337))

(assert (=> bs!878293 m!5306987))

(declare-fun m!5307339 () Bool)

(assert (=> bs!878293 m!5307339))

(assert (=> bs!878293 m!5307043))

(assert (=> bs!878293 m!5307053))

(assert (=> b!4540299 d!1403622))

(declare-fun d!1403628 () Bool)

(assert (=> d!1403628 (= (eq!657 lt!1714888 lt!1714906) (= (content!8439 (toList!4407 lt!1714888)) (content!8439 (toList!4407 lt!1714906))))))

(declare-fun bs!878294 () Bool)

(assert (= bs!878294 d!1403628))

(assert (=> bs!878294 m!5307147))

(declare-fun m!5307341 () Bool)

(assert (=> bs!878294 m!5307341))

(assert (=> b!4540320 d!1403628))

(declare-fun d!1403630 () Bool)

(declare-fun e!2829450 () Bool)

(assert (=> d!1403630 e!2829450))

(declare-fun res!1892282 () Bool)

(assert (=> d!1403630 (=> (not res!1892282) (not e!2829450))))

(declare-fun lt!1715154 () ListMap!3669)

(assert (=> d!1403630 (= res!1892282 (not (contains!13547 lt!1715154 key!3287)))))

(declare-fun removePresrvNoDuplicatedKeys!168 (List!50878 K!12140) List!50878)

(assert (=> d!1403630 (= lt!1715154 (ListMap!3670 (removePresrvNoDuplicatedKeys!168 (toList!4407 (addToMapMapFromBucket!727 (_2!28912 lt!1714880) lt!1714884)) key!3287)))))

(assert (=> d!1403630 (= (-!426 (addToMapMapFromBucket!727 (_2!28912 lt!1714880) lt!1714884) key!3287) lt!1715154)))

(declare-fun b!4540540 () Bool)

(declare-datatypes ((List!50881 0))(
  ( (Nil!50757) (Cons!50757 (h!56640 K!12140) (t!357843 List!50881)) )
))
(declare-fun content!8440 (List!50881) (InoxSet K!12140))

(declare-fun keys!17662 (ListMap!3669) List!50881)

(assert (=> b!4540540 (= e!2829450 (= ((_ map and) (content!8440 (keys!17662 (addToMapMapFromBucket!727 (_2!28912 lt!1714880) lt!1714884))) ((_ map not) (store ((as const (Array K!12140 Bool)) false) key!3287 true))) (content!8440 (keys!17662 lt!1715154))))))

(assert (= (and d!1403630 res!1892282) b!4540540))

(declare-fun m!5307387 () Bool)

(assert (=> d!1403630 m!5307387))

(declare-fun m!5307389 () Bool)

(assert (=> d!1403630 m!5307389))

(declare-fun m!5307391 () Bool)

(assert (=> b!4540540 m!5307391))

(declare-fun m!5307393 () Bool)

(assert (=> b!4540540 m!5307393))

(declare-fun m!5307395 () Bool)

(assert (=> b!4540540 m!5307395))

(declare-fun m!5307397 () Bool)

(assert (=> b!4540540 m!5307397))

(declare-fun m!5307399 () Bool)

(assert (=> b!4540540 m!5307399))

(assert (=> b!4540540 m!5307013))

(assert (=> b!4540540 m!5307395))

(assert (=> b!4540540 m!5307391))

(assert (=> b!4540320 d!1403630))

(declare-fun bs!878311 () Bool)

(declare-fun b!4540542 () Bool)

(assert (= bs!878311 (and b!4540542 b!4540528)))

(declare-fun lambda!176220 () Int)

(assert (=> bs!878311 (= (= lt!1714884 lt!1714886) (= lambda!176220 lambda!176212))))

(assert (=> bs!878311 (= (= lt!1714884 lt!1715103) (= lambda!176220 lambda!176213))))

(declare-fun bs!878312 () Bool)

(assert (= bs!878312 (and b!4540542 d!1403584)))

(assert (=> bs!878312 (= (= lt!1714884 lt!1715122) (= lambda!176220 lambda!176214))))

(declare-fun bs!878313 () Bool)

(assert (= bs!878313 (and b!4540542 b!4540525)))

(assert (=> bs!878313 (= (= lt!1714884 lt!1714886) (= lambda!176220 lambda!176211))))

(declare-fun bs!878314 () Bool)

(assert (= bs!878314 (and b!4540542 b!4540305)))

(assert (=> bs!878314 (not (= lambda!176220 lambda!176133))))

(assert (=> b!4540542 true))

(declare-fun bs!878315 () Bool)

(declare-fun b!4540545 () Bool)

(assert (= bs!878315 (and b!4540545 b!4540542)))

(declare-fun lambda!176221 () Int)

(assert (=> bs!878315 (= lambda!176221 lambda!176220)))

(declare-fun bs!878316 () Bool)

(assert (= bs!878316 (and b!4540545 b!4540528)))

(assert (=> bs!878316 (= (= lt!1714884 lt!1714886) (= lambda!176221 lambda!176212))))

(assert (=> bs!878316 (= (= lt!1714884 lt!1715103) (= lambda!176221 lambda!176213))))

(declare-fun bs!878317 () Bool)

(assert (= bs!878317 (and b!4540545 d!1403584)))

(assert (=> bs!878317 (= (= lt!1714884 lt!1715122) (= lambda!176221 lambda!176214))))

(declare-fun bs!878318 () Bool)

(assert (= bs!878318 (and b!4540545 b!4540525)))

(assert (=> bs!878318 (= (= lt!1714884 lt!1714886) (= lambda!176221 lambda!176211))))

(declare-fun bs!878319 () Bool)

(assert (= bs!878319 (and b!4540545 b!4540305)))

(assert (=> bs!878319 (not (= lambda!176221 lambda!176133))))

(assert (=> b!4540545 true))

(declare-fun lambda!176222 () Int)

(declare-fun lt!1715155 () ListMap!3669)

(assert (=> bs!878315 (= (= lt!1715155 lt!1714884) (= lambda!176222 lambda!176220))))

(assert (=> bs!878316 (= (= lt!1715155 lt!1714886) (= lambda!176222 lambda!176212))))

(assert (=> bs!878316 (= (= lt!1715155 lt!1715103) (= lambda!176222 lambda!176213))))

(assert (=> bs!878317 (= (= lt!1715155 lt!1715122) (= lambda!176222 lambda!176214))))

(assert (=> b!4540545 (= (= lt!1715155 lt!1714884) (= lambda!176222 lambda!176221))))

(assert (=> bs!878318 (= (= lt!1715155 lt!1714886) (= lambda!176222 lambda!176211))))

(assert (=> bs!878319 (not (= lambda!176222 lambda!176133))))

(assert (=> b!4540545 true))

(declare-fun bs!878320 () Bool)

(declare-fun d!1403638 () Bool)

(assert (= bs!878320 (and d!1403638 b!4540542)))

(declare-fun lt!1715174 () ListMap!3669)

(declare-fun lambda!176223 () Int)

(assert (=> bs!878320 (= (= lt!1715174 lt!1714884) (= lambda!176223 lambda!176220))))

(declare-fun bs!878321 () Bool)

(assert (= bs!878321 (and d!1403638 b!4540528)))

(assert (=> bs!878321 (= (= lt!1715174 lt!1714886) (= lambda!176223 lambda!176212))))

(assert (=> bs!878321 (= (= lt!1715174 lt!1715103) (= lambda!176223 lambda!176213))))

(declare-fun bs!878322 () Bool)

(assert (= bs!878322 (and d!1403638 d!1403584)))

(assert (=> bs!878322 (= (= lt!1715174 lt!1715122) (= lambda!176223 lambda!176214))))

(declare-fun bs!878323 () Bool)

(assert (= bs!878323 (and d!1403638 b!4540545)))

(assert (=> bs!878323 (= (= lt!1715174 lt!1714884) (= lambda!176223 lambda!176221))))

(declare-fun bs!878324 () Bool)

(assert (= bs!878324 (and d!1403638 b!4540305)))

(assert (=> bs!878324 (not (= lambda!176223 lambda!176133))))

(declare-fun bs!878325 () Bool)

(assert (= bs!878325 (and d!1403638 b!4540525)))

(assert (=> bs!878325 (= (= lt!1715174 lt!1714886) (= lambda!176223 lambda!176211))))

(assert (=> bs!878323 (= (= lt!1715174 lt!1715155) (= lambda!176223 lambda!176222))))

(assert (=> d!1403638 true))

(declare-fun bm!316659 () Bool)

(declare-fun c!775577 () Bool)

(declare-fun call!316664 () Bool)

(declare-fun lt!1715170 () ListMap!3669)

(assert (=> bm!316659 (= call!316664 (forall!10349 (ite c!775577 (toList!4407 lt!1714884) (toList!4407 lt!1715170)) (ite c!775577 lambda!176220 lambda!176222)))))

(declare-fun b!4540541 () Bool)

(declare-fun e!2829451 () Bool)

(assert (=> b!4540541 (= e!2829451 (invariantList!1045 (toList!4407 lt!1715174)))))

(declare-fun e!2829452 () ListMap!3669)

(assert (=> b!4540542 (= e!2829452 lt!1714884)))

(declare-fun lt!1715175 () Unit!98616)

(declare-fun call!316665 () Unit!98616)

(assert (=> b!4540542 (= lt!1715175 call!316665)))

(declare-fun call!316666 () Bool)

(assert (=> b!4540542 call!316666))

(declare-fun lt!1715158 () Unit!98616)

(assert (=> b!4540542 (= lt!1715158 lt!1715175)))

(assert (=> b!4540542 call!316664))

(declare-fun lt!1715173 () Unit!98616)

(declare-fun Unit!98640 () Unit!98616)

(assert (=> b!4540542 (= lt!1715173 Unit!98640)))

(declare-fun bm!316660 () Bool)

(assert (=> bm!316660 (= call!316666 (forall!10349 (ite c!775577 (toList!4407 lt!1714884) (toList!4407 lt!1715170)) (ite c!775577 lambda!176220 lambda!176222)))))

(declare-fun b!4540543 () Bool)

(declare-fun res!1892285 () Bool)

(assert (=> b!4540543 (=> (not res!1892285) (not e!2829451))))

(assert (=> b!4540543 (= res!1892285 (forall!10349 (toList!4407 lt!1714884) lambda!176223))))

(assert (=> d!1403638 e!2829451))

(declare-fun res!1892283 () Bool)

(assert (=> d!1403638 (=> (not res!1892283) (not e!2829451))))

(assert (=> d!1403638 (= res!1892283 (forall!10349 (_2!28912 lt!1714880) lambda!176223))))

(assert (=> d!1403638 (= lt!1715174 e!2829452)))

(assert (=> d!1403638 (= c!775577 ((_ is Nil!50754) (_2!28912 lt!1714880)))))

(assert (=> d!1403638 (noDuplicateKeys!1200 (_2!28912 lt!1714880))))

(assert (=> d!1403638 (= (addToMapMapFromBucket!727 (_2!28912 lt!1714880) lt!1714884) lt!1715174)))

(declare-fun b!4540544 () Bool)

(declare-fun e!2829453 () Bool)

(assert (=> b!4540544 (= e!2829453 (forall!10349 (toList!4407 lt!1714884) lambda!176222))))

(declare-fun bm!316661 () Bool)

(assert (=> bm!316661 (= call!316665 (lemmaContainsAllItsOwnKeys!365 lt!1714884))))

(assert (=> b!4540545 (= e!2829452 lt!1715155)))

(assert (=> b!4540545 (= lt!1715170 (+!1607 lt!1714884 (h!56635 (_2!28912 lt!1714880))))))

(assert (=> b!4540545 (= lt!1715155 (addToMapMapFromBucket!727 (t!357840 (_2!28912 lt!1714880)) (+!1607 lt!1714884 (h!56635 (_2!28912 lt!1714880)))))))

(declare-fun lt!1715160 () Unit!98616)

(assert (=> b!4540545 (= lt!1715160 call!316665)))

(assert (=> b!4540545 (forall!10349 (toList!4407 lt!1714884) lambda!176221)))

(declare-fun lt!1715159 () Unit!98616)

(assert (=> b!4540545 (= lt!1715159 lt!1715160)))

(assert (=> b!4540545 call!316664))

(declare-fun lt!1715164 () Unit!98616)

(declare-fun Unit!98642 () Unit!98616)

(assert (=> b!4540545 (= lt!1715164 Unit!98642)))

(assert (=> b!4540545 (forall!10349 (t!357840 (_2!28912 lt!1714880)) lambda!176222)))

(declare-fun lt!1715156 () Unit!98616)

(declare-fun Unit!98643 () Unit!98616)

(assert (=> b!4540545 (= lt!1715156 Unit!98643)))

(declare-fun lt!1715168 () Unit!98616)

(declare-fun Unit!98645 () Unit!98616)

(assert (=> b!4540545 (= lt!1715168 Unit!98645)))

(declare-fun lt!1715161 () Unit!98616)

(assert (=> b!4540545 (= lt!1715161 (forallContained!2611 (toList!4407 lt!1715170) lambda!176222 (h!56635 (_2!28912 lt!1714880))))))

(assert (=> b!4540545 (contains!13547 lt!1715170 (_1!28911 (h!56635 (_2!28912 lt!1714880))))))

(declare-fun lt!1715166 () Unit!98616)

(declare-fun Unit!98648 () Unit!98616)

(assert (=> b!4540545 (= lt!1715166 Unit!98648)))

(assert (=> b!4540545 (contains!13547 lt!1715155 (_1!28911 (h!56635 (_2!28912 lt!1714880))))))

(declare-fun lt!1715167 () Unit!98616)

(declare-fun Unit!98649 () Unit!98616)

(assert (=> b!4540545 (= lt!1715167 Unit!98649)))

(assert (=> b!4540545 (forall!10349 (_2!28912 lt!1714880) lambda!176222)))

(declare-fun lt!1715165 () Unit!98616)

(declare-fun Unit!98651 () Unit!98616)

(assert (=> b!4540545 (= lt!1715165 Unit!98651)))

(assert (=> b!4540545 call!316666))

(declare-fun lt!1715157 () Unit!98616)

(declare-fun Unit!98653 () Unit!98616)

(assert (=> b!4540545 (= lt!1715157 Unit!98653)))

(declare-fun lt!1715172 () Unit!98616)

(declare-fun Unit!98655 () Unit!98616)

(assert (=> b!4540545 (= lt!1715172 Unit!98655)))

(declare-fun lt!1715163 () Unit!98616)

(assert (=> b!4540545 (= lt!1715163 (addForallContainsKeyThenBeforeAdding!365 lt!1714884 lt!1715155 (_1!28911 (h!56635 (_2!28912 lt!1714880))) (_2!28911 (h!56635 (_2!28912 lt!1714880)))))))

(assert (=> b!4540545 (forall!10349 (toList!4407 lt!1714884) lambda!176222)))

(declare-fun lt!1715162 () Unit!98616)

(assert (=> b!4540545 (= lt!1715162 lt!1715163)))

(assert (=> b!4540545 (forall!10349 (toList!4407 lt!1714884) lambda!176222)))

(declare-fun lt!1715169 () Unit!98616)

(declare-fun Unit!98658 () Unit!98616)

(assert (=> b!4540545 (= lt!1715169 Unit!98658)))

(declare-fun res!1892284 () Bool)

(assert (=> b!4540545 (= res!1892284 (forall!10349 (_2!28912 lt!1714880) lambda!176222))))

(assert (=> b!4540545 (=> (not res!1892284) (not e!2829453))))

(assert (=> b!4540545 e!2829453))

(declare-fun lt!1715171 () Unit!98616)

(declare-fun Unit!98660 () Unit!98616)

(assert (=> b!4540545 (= lt!1715171 Unit!98660)))

(assert (= (and d!1403638 c!775577) b!4540542))

(assert (= (and d!1403638 (not c!775577)) b!4540545))

(assert (= (and b!4540545 res!1892284) b!4540544))

(assert (= (or b!4540542 b!4540545) bm!316659))

(assert (= (or b!4540542 b!4540545) bm!316660))

(assert (= (or b!4540542 b!4540545) bm!316661))

(assert (= (and d!1403638 res!1892283) b!4540543))

(assert (= (and b!4540543 res!1892285) b!4540541))

(declare-fun m!5307413 () Bool)

(assert (=> d!1403638 m!5307413))

(assert (=> d!1403638 m!5306987))

(declare-fun m!5307415 () Bool)

(assert (=> b!4540544 m!5307415))

(declare-fun m!5307417 () Bool)

(assert (=> bm!316661 m!5307417))

(declare-fun m!5307419 () Bool)

(assert (=> b!4540545 m!5307419))

(declare-fun m!5307421 () Bool)

(assert (=> b!4540545 m!5307421))

(declare-fun m!5307423 () Bool)

(assert (=> b!4540545 m!5307423))

(declare-fun m!5307425 () Bool)

(assert (=> b!4540545 m!5307425))

(declare-fun m!5307427 () Bool)

(assert (=> b!4540545 m!5307427))

(declare-fun m!5307429 () Bool)

(assert (=> b!4540545 m!5307429))

(assert (=> b!4540545 m!5307425))

(assert (=> b!4540545 m!5307415))

(declare-fun m!5307431 () Bool)

(assert (=> b!4540545 m!5307431))

(assert (=> b!4540545 m!5307415))

(declare-fun m!5307433 () Bool)

(assert (=> b!4540545 m!5307433))

(assert (=> b!4540545 m!5307421))

(declare-fun m!5307435 () Bool)

(assert (=> b!4540545 m!5307435))

(declare-fun m!5307437 () Bool)

(assert (=> b!4540541 m!5307437))

(declare-fun m!5307439 () Bool)

(assert (=> b!4540543 m!5307439))

(declare-fun m!5307441 () Bool)

(assert (=> bm!316660 m!5307441))

(assert (=> bm!316659 m!5307441))

(assert (=> b!4540320 d!1403638))

(declare-fun d!1403642 () Bool)

(assert (=> d!1403642 (= (addToMapMapFromBucket!727 (_2!28912 lt!1714880) (-!426 lt!1714884 key!3287)) (-!426 (addToMapMapFromBucket!727 (_2!28912 lt!1714880) lt!1714884) key!3287))))

(declare-fun lt!1715193 () Unit!98616)

(declare-fun choose!29905 (ListMap!3669 K!12140 List!50878) Unit!98616)

(assert (=> d!1403642 (= lt!1715193 (choose!29905 lt!1714884 key!3287 (_2!28912 lt!1714880)))))

(assert (=> d!1403642 (not (containsKey!1876 (_2!28912 lt!1714880) key!3287))))

(assert (=> d!1403642 (= (lemmaAddToMapFromBucketMinusKeyIsCommutative!24 lt!1714884 key!3287 (_2!28912 lt!1714880)) lt!1715193)))

(declare-fun bs!878327 () Bool)

(assert (= bs!878327 d!1403642))

(assert (=> bs!878327 m!5307013))

(assert (=> bs!878327 m!5306953))

(declare-fun m!5307459 () Bool)

(assert (=> bs!878327 m!5307459))

(assert (=> bs!878327 m!5307027))

(assert (=> bs!878327 m!5307013))

(assert (=> bs!878327 m!5307015))

(assert (=> bs!878327 m!5307027))

(declare-fun m!5307461 () Bool)

(assert (=> bs!878327 m!5307461))

(assert (=> b!4540320 d!1403642))

(declare-fun d!1403648 () Bool)

(declare-fun res!1892302 () Bool)

(declare-fun e!2829468 () Bool)

(assert (=> d!1403648 (=> res!1892302 e!2829468)))

(declare-fun e!2829466 () Bool)

(assert (=> d!1403648 (= res!1892302 e!2829466)))

(declare-fun res!1892303 () Bool)

(assert (=> d!1403648 (=> (not res!1892303) (not e!2829466))))

(assert (=> d!1403648 (= res!1892303 ((_ is Cons!50755) (t!357841 (toList!4408 lm!1477))))))

(assert (=> d!1403648 (= (containsKeyBiggerList!180 (t!357841 (toList!4408 lm!1477)) key!3287) e!2829468)))

(declare-fun b!4540561 () Bool)

(assert (=> b!4540561 (= e!2829466 (containsKey!1876 (_2!28912 (h!56636 (t!357841 (toList!4408 lm!1477)))) key!3287))))

(declare-fun b!4540562 () Bool)

(declare-fun e!2829467 () Bool)

(assert (=> b!4540562 (= e!2829468 e!2829467)))

(declare-fun res!1892301 () Bool)

(assert (=> b!4540562 (=> (not res!1892301) (not e!2829467))))

(assert (=> b!4540562 (= res!1892301 ((_ is Cons!50755) (t!357841 (toList!4408 lm!1477))))))

(declare-fun b!4540563 () Bool)

(assert (=> b!4540563 (= e!2829467 (containsKeyBiggerList!180 (t!357841 (t!357841 (toList!4408 lm!1477))) key!3287))))

(assert (= (and d!1403648 res!1892303) b!4540561))

(assert (= (and d!1403648 (not res!1892302)) b!4540562))

(assert (= (and b!4540562 res!1892301) b!4540563))

(declare-fun m!5307463 () Bool)

(assert (=> b!4540561 m!5307463))

(declare-fun m!5307465 () Bool)

(assert (=> b!4540563 m!5307465))

(assert (=> b!4540318 d!1403648))

(declare-fun d!1403650 () Bool)

(declare-fun res!1892305 () Bool)

(declare-fun e!2829471 () Bool)

(assert (=> d!1403650 (=> res!1892305 e!2829471)))

(declare-fun e!2829469 () Bool)

(assert (=> d!1403650 (= res!1892305 e!2829469)))

(declare-fun res!1892306 () Bool)

(assert (=> d!1403650 (=> (not res!1892306) (not e!2829469))))

(assert (=> d!1403650 (= res!1892306 ((_ is Cons!50755) (toList!4408 lt!1714874)))))

(assert (=> d!1403650 (= (containsKeyBiggerList!180 (toList!4408 lt!1714874) key!3287) e!2829471)))

(declare-fun b!4540564 () Bool)

(assert (=> b!4540564 (= e!2829469 (containsKey!1876 (_2!28912 (h!56636 (toList!4408 lt!1714874))) key!3287))))

(declare-fun b!4540565 () Bool)

(declare-fun e!2829470 () Bool)

(assert (=> b!4540565 (= e!2829471 e!2829470)))

(declare-fun res!1892304 () Bool)

(assert (=> b!4540565 (=> (not res!1892304) (not e!2829470))))

(assert (=> b!4540565 (= res!1892304 ((_ is Cons!50755) (toList!4408 lt!1714874)))))

(declare-fun b!4540566 () Bool)

(assert (=> b!4540566 (= e!2829470 (containsKeyBiggerList!180 (t!357841 (toList!4408 lt!1714874)) key!3287))))

(assert (= (and d!1403650 res!1892306) b!4540564))

(assert (= (and d!1403650 (not res!1892305)) b!4540565))

(assert (= (and b!4540565 res!1892304) b!4540566))

(declare-fun m!5307467 () Bool)

(assert (=> b!4540564 m!5307467))

(declare-fun m!5307469 () Bool)

(assert (=> b!4540566 m!5307469))

(assert (=> b!4540318 d!1403650))

(declare-fun bs!878328 () Bool)

(declare-fun d!1403652 () Bool)

(assert (= bs!878328 (and d!1403652 start!450680)))

(declare-fun lambda!176226 () Int)

(assert (=> bs!878328 (= lambda!176226 lambda!176131)))

(declare-fun bs!878329 () Bool)

(assert (= bs!878329 (and d!1403652 b!4540305)))

(assert (=> bs!878329 (not (= lambda!176226 lambda!176132))))

(assert (=> d!1403652 (containsKeyBiggerList!180 (toList!4408 lt!1714874) key!3287)))

(declare-fun lt!1715196 () Unit!98616)

(declare-fun choose!29907 (ListLongMap!3039 K!12140 Hashable!5595) Unit!98616)

(assert (=> d!1403652 (= lt!1715196 (choose!29907 lt!1714874 key!3287 hashF!1107))))

(assert (=> d!1403652 (forall!10347 (toList!4408 lt!1714874) lambda!176226)))

(assert (=> d!1403652 (= (lemmaInLongMapThenContainsKeyBiggerList!116 lt!1714874 key!3287 hashF!1107) lt!1715196)))

(declare-fun bs!878330 () Bool)

(assert (= bs!878330 d!1403652))

(assert (=> bs!878330 m!5306997))

(declare-fun m!5307471 () Bool)

(assert (=> bs!878330 m!5307471))

(declare-fun m!5307473 () Bool)

(assert (=> bs!878330 m!5307473))

(assert (=> b!4540318 d!1403652))

(declare-fun d!1403654 () Bool)

(declare-fun e!2829475 () Bool)

(assert (=> d!1403654 e!2829475))

(declare-fun res!1892311 () Bool)

(assert (=> d!1403654 (=> (not res!1892311) (not e!2829475))))

(declare-fun lt!1715212 () ListLongMap!3039)

(assert (=> d!1403654 (= res!1892311 (contains!13549 lt!1715212 (_1!28912 lt!1714908)))))

(declare-fun lt!1715209 () List!50879)

(assert (=> d!1403654 (= lt!1715212 (ListLongMap!3040 lt!1715209))))

(declare-fun lt!1715211 () Unit!98616)

(declare-fun lt!1715210 () Unit!98616)

(assert (=> d!1403654 (= lt!1715211 lt!1715210)))

(declare-datatypes ((Option!11206 0))(
  ( (None!11205) (Some!11205 (v!44907 List!50878)) )
))
(declare-fun getValueByKey!1148 (List!50879 (_ BitVec 64)) Option!11206)

(assert (=> d!1403654 (= (getValueByKey!1148 lt!1715209 (_1!28912 lt!1714908)) (Some!11205 (_2!28912 lt!1714908)))))

(declare-fun lemmaContainsTupThenGetReturnValue!721 (List!50879 (_ BitVec 64) List!50878) Unit!98616)

(assert (=> d!1403654 (= lt!1715210 (lemmaContainsTupThenGetReturnValue!721 lt!1715209 (_1!28912 lt!1714908) (_2!28912 lt!1714908)))))

(declare-fun insertStrictlySorted!435 (List!50879 (_ BitVec 64) List!50878) List!50879)

(assert (=> d!1403654 (= lt!1715209 (insertStrictlySorted!435 (toList!4408 lm!1477) (_1!28912 lt!1714908) (_2!28912 lt!1714908)))))

(assert (=> d!1403654 (= (+!1606 lm!1477 lt!1714908) lt!1715212)))

(declare-fun b!4540573 () Bool)

(declare-fun res!1892312 () Bool)

(assert (=> b!4540573 (=> (not res!1892312) (not e!2829475))))

(assert (=> b!4540573 (= res!1892312 (= (getValueByKey!1148 (toList!4408 lt!1715212) (_1!28912 lt!1714908)) (Some!11205 (_2!28912 lt!1714908))))))

(declare-fun b!4540574 () Bool)

(assert (=> b!4540574 (= e!2829475 (contains!13548 (toList!4408 lt!1715212) lt!1714908))))

(assert (= (and d!1403654 res!1892311) b!4540573))

(assert (= (and b!4540573 res!1892312) b!4540574))

(declare-fun m!5307499 () Bool)

(assert (=> d!1403654 m!5307499))

(declare-fun m!5307501 () Bool)

(assert (=> d!1403654 m!5307501))

(declare-fun m!5307503 () Bool)

(assert (=> d!1403654 m!5307503))

(declare-fun m!5307505 () Bool)

(assert (=> d!1403654 m!5307505))

(declare-fun m!5307507 () Bool)

(assert (=> b!4540573 m!5307507))

(declare-fun m!5307509 () Bool)

(assert (=> b!4540574 m!5307509))

(assert (=> b!4540319 d!1403654))

(declare-fun d!1403662 () Bool)

(declare-fun e!2829477 () Bool)

(assert (=> d!1403662 e!2829477))

(declare-fun res!1892313 () Bool)

(assert (=> d!1403662 (=> (not res!1892313) (not e!2829477))))

(declare-fun lt!1715217 () ListLongMap!3039)

(assert (=> d!1403662 (= res!1892313 (contains!13549 lt!1715217 (_1!28912 lt!1714880)))))

(declare-fun lt!1715214 () List!50879)

(assert (=> d!1403662 (= lt!1715217 (ListLongMap!3040 lt!1715214))))

(declare-fun lt!1715216 () Unit!98616)

(declare-fun lt!1715215 () Unit!98616)

(assert (=> d!1403662 (= lt!1715216 lt!1715215)))

(assert (=> d!1403662 (= (getValueByKey!1148 lt!1715214 (_1!28912 lt!1714880)) (Some!11205 (_2!28912 lt!1714880)))))

(assert (=> d!1403662 (= lt!1715215 (lemmaContainsTupThenGetReturnValue!721 lt!1715214 (_1!28912 lt!1714880) (_2!28912 lt!1714880)))))

(assert (=> d!1403662 (= lt!1715214 (insertStrictlySorted!435 (toList!4408 lt!1714877) (_1!28912 lt!1714880) (_2!28912 lt!1714880)))))

(assert (=> d!1403662 (= (+!1606 lt!1714877 lt!1714880) lt!1715217)))

(declare-fun b!4540577 () Bool)

(declare-fun res!1892314 () Bool)

(assert (=> b!4540577 (=> (not res!1892314) (not e!2829477))))

(assert (=> b!4540577 (= res!1892314 (= (getValueByKey!1148 (toList!4408 lt!1715217) (_1!28912 lt!1714880)) (Some!11205 (_2!28912 lt!1714880))))))

(declare-fun b!4540578 () Bool)

(assert (=> b!4540578 (= e!2829477 (contains!13548 (toList!4408 lt!1715217) lt!1714880))))

(assert (= (and d!1403662 res!1892313) b!4540577))

(assert (= (and b!4540577 res!1892314) b!4540578))

(declare-fun m!5307511 () Bool)

(assert (=> d!1403662 m!5307511))

(declare-fun m!5307513 () Bool)

(assert (=> d!1403662 m!5307513))

(declare-fun m!5307515 () Bool)

(assert (=> d!1403662 m!5307515))

(declare-fun m!5307517 () Bool)

(assert (=> d!1403662 m!5307517))

(declare-fun m!5307519 () Bool)

(assert (=> b!4540577 m!5307519))

(declare-fun m!5307521 () Bool)

(assert (=> b!4540578 m!5307521))

(assert (=> b!4540319 d!1403662))

(declare-fun d!1403664 () Bool)

(assert (=> d!1403664 (= (eq!657 lt!1714904 lt!1714902) (= (content!8439 (toList!4407 lt!1714904)) (content!8439 (toList!4407 lt!1714902))))))

(declare-fun bs!878363 () Bool)

(assert (= bs!878363 d!1403664))

(declare-fun m!5307523 () Bool)

(assert (=> bs!878363 m!5307523))

(declare-fun m!5307525 () Bool)

(assert (=> bs!878363 m!5307525))

(assert (=> b!4540301 d!1403664))

(declare-fun d!1403666 () Bool)

(declare-fun hash!2923 (Hashable!5595 K!12140) (_ BitVec 64))

(assert (=> d!1403666 (= (hash!2919 hashF!1107 key!3287) (hash!2923 hashF!1107 key!3287))))

(declare-fun bs!878364 () Bool)

(assert (= bs!878364 d!1403666))

(declare-fun m!5307535 () Bool)

(assert (=> bs!878364 m!5307535))

(assert (=> b!4540323 d!1403666))

(declare-fun d!1403670 () Bool)

(declare-fun res!1892324 () Bool)

(declare-fun e!2829486 () Bool)

(assert (=> d!1403670 (=> res!1892324 e!2829486)))

(assert (=> d!1403670 (= res!1892324 ((_ is Nil!50755) (toList!4408 lt!1714885)))))

(assert (=> d!1403670 (= (forall!10347 (toList!4408 lt!1714885) lambda!176131) e!2829486)))

(declare-fun b!4540588 () Bool)

(declare-fun e!2829487 () Bool)

(assert (=> b!4540588 (= e!2829486 e!2829487)))

(declare-fun res!1892325 () Bool)

(assert (=> b!4540588 (=> (not res!1892325) (not e!2829487))))

(assert (=> b!4540588 (= res!1892325 (dynLambda!21216 lambda!176131 (h!56636 (toList!4408 lt!1714885))))))

(declare-fun b!4540589 () Bool)

(assert (=> b!4540589 (= e!2829487 (forall!10347 (t!357841 (toList!4408 lt!1714885)) lambda!176131))))

(assert (= (and d!1403670 (not res!1892324)) b!4540588))

(assert (= (and b!4540588 res!1892325) b!4540589))

(declare-fun b_lambda!158077 () Bool)

(assert (=> (not b_lambda!158077) (not b!4540588)))

(declare-fun m!5307567 () Bool)

(assert (=> b!4540588 m!5307567))

(declare-fun m!5307571 () Bool)

(assert (=> b!4540589 m!5307571))

(assert (=> b!4540321 d!1403670))

(declare-fun d!1403682 () Bool)

(assert (=> d!1403682 (= (eq!657 lt!1714887 lt!1714897) (= (content!8439 (toList!4407 lt!1714887)) (content!8439 (toList!4407 lt!1714897))))))

(declare-fun bs!878367 () Bool)

(assert (= bs!878367 d!1403682))

(assert (=> bs!878367 m!5307145))

(declare-fun m!5307573 () Bool)

(assert (=> bs!878367 m!5307573))

(assert (=> b!4540325 d!1403682))

(declare-fun d!1403684 () Bool)

(declare-fun head!9481 (List!50879) tuple2!51236)

(assert (=> d!1403684 (= (head!9480 lt!1714885) (head!9481 (toList!4408 lt!1714885)))))

(declare-fun bs!878374 () Bool)

(assert (= bs!878374 d!1403684))

(declare-fun m!5307575 () Bool)

(assert (=> bs!878374 m!5307575))

(assert (=> b!4540304 d!1403684))

(declare-fun d!1403686 () Bool)

(declare-fun res!1892329 () Bool)

(declare-fun e!2829491 () Bool)

(assert (=> d!1403686 (=> res!1892329 e!2829491)))

(assert (=> d!1403686 (= res!1892329 ((_ is Nil!50755) (toList!4408 lm!1477)))))

(assert (=> d!1403686 (= (forall!10347 (toList!4408 lm!1477) lambda!176131) e!2829491)))

(declare-fun b!4540595 () Bool)

(declare-fun e!2829492 () Bool)

(assert (=> b!4540595 (= e!2829491 e!2829492)))

(declare-fun res!1892330 () Bool)

(assert (=> b!4540595 (=> (not res!1892330) (not e!2829492))))

(assert (=> b!4540595 (= res!1892330 (dynLambda!21216 lambda!176131 (h!56636 (toList!4408 lm!1477))))))

(declare-fun b!4540596 () Bool)

(assert (=> b!4540596 (= e!2829492 (forall!10347 (t!357841 (toList!4408 lm!1477)) lambda!176131))))

(assert (= (and d!1403686 (not res!1892329)) b!4540595))

(assert (= (and b!4540595 res!1892330) b!4540596))

(declare-fun b_lambda!158079 () Bool)

(assert (=> (not b_lambda!158079) (not b!4540595)))

(assert (=> b!4540595 m!5307131))

(declare-fun m!5307577 () Bool)

(assert (=> b!4540596 m!5307577))

(assert (=> start!450680 d!1403686))

(declare-fun d!1403688 () Bool)

(declare-fun isStrictlySorted!459 (List!50879) Bool)

(assert (=> d!1403688 (= (inv!66324 lm!1477) (isStrictlySorted!459 (toList!4408 lm!1477)))))

(declare-fun bs!878386 () Bool)

(assert (= bs!878386 d!1403688))

(declare-fun m!5307579 () Bool)

(assert (=> bs!878386 m!5307579))

(assert (=> start!450680 d!1403688))

(declare-fun b!4540618 () Bool)

(declare-fun e!2829511 () Bool)

(declare-fun e!2829510 () Bool)

(assert (=> b!4540618 (= e!2829511 e!2829510)))

(declare-fun res!1892340 () Bool)

(assert (=> b!4540618 (=> (not res!1892340) (not e!2829510))))

(declare-datatypes ((Option!11207 0))(
  ( (None!11206) (Some!11206 (v!44908 V!12386)) )
))
(declare-fun isDefined!8482 (Option!11207) Bool)

(declare-fun getValueByKey!1149 (List!50878 K!12140) Option!11207)

(assert (=> b!4540618 (= res!1892340 (isDefined!8482 (getValueByKey!1149 (toList!4407 (extractMap!1256 (t!357841 (toList!4408 lm!1477)))) key!3287)))))

(declare-fun b!4540619 () Bool)

(declare-fun e!2829508 () Bool)

(declare-fun contains!13552 (List!50881 K!12140) Bool)

(assert (=> b!4540619 (= e!2829508 (not (contains!13552 (keys!17662 (extractMap!1256 (t!357841 (toList!4408 lm!1477)))) key!3287)))))

(declare-fun b!4540620 () Bool)

(assert (=> b!4540620 false))

(declare-fun lt!1715267 () Unit!98616)

(declare-fun lt!1715266 () Unit!98616)

(assert (=> b!4540620 (= lt!1715267 lt!1715266)))

(declare-fun containsKey!1879 (List!50878 K!12140) Bool)

(assert (=> b!4540620 (containsKey!1879 (toList!4407 (extractMap!1256 (t!357841 (toList!4408 lm!1477)))) key!3287)))

(declare-fun lemmaInGetKeysListThenContainsKey!492 (List!50878 K!12140) Unit!98616)

(assert (=> b!4540620 (= lt!1715266 (lemmaInGetKeysListThenContainsKey!492 (toList!4407 (extractMap!1256 (t!357841 (toList!4408 lm!1477)))) key!3287))))

(declare-fun e!2829509 () Unit!98616)

(declare-fun Unit!98673 () Unit!98616)

(assert (=> b!4540620 (= e!2829509 Unit!98673)))

(declare-fun b!4540621 () Bool)

(declare-fun e!2829512 () List!50881)

(declare-fun getKeysList!493 (List!50878) List!50881)

(assert (=> b!4540621 (= e!2829512 (getKeysList!493 (toList!4407 (extractMap!1256 (t!357841 (toList!4408 lm!1477))))))))

(declare-fun d!1403690 () Bool)

(assert (=> d!1403690 e!2829511))

(declare-fun res!1892341 () Bool)

(assert (=> d!1403690 (=> res!1892341 e!2829511)))

(assert (=> d!1403690 (= res!1892341 e!2829508)))

(declare-fun res!1892342 () Bool)

(assert (=> d!1403690 (=> (not res!1892342) (not e!2829508))))

(declare-fun lt!1715268 () Bool)

(assert (=> d!1403690 (= res!1892342 (not lt!1715268))))

(declare-fun lt!1715269 () Bool)

(assert (=> d!1403690 (= lt!1715268 lt!1715269)))

(declare-fun lt!1715270 () Unit!98616)

(declare-fun e!2829513 () Unit!98616)

(assert (=> d!1403690 (= lt!1715270 e!2829513)))

(declare-fun c!775589 () Bool)

(assert (=> d!1403690 (= c!775589 lt!1715269)))

(assert (=> d!1403690 (= lt!1715269 (containsKey!1879 (toList!4407 (extractMap!1256 (t!357841 (toList!4408 lm!1477)))) key!3287))))

(assert (=> d!1403690 (= (contains!13547 (extractMap!1256 (t!357841 (toList!4408 lm!1477))) key!3287) lt!1715268)))

(declare-fun bm!316667 () Bool)

(declare-fun call!316672 () Bool)

(assert (=> bm!316667 (= call!316672 (contains!13552 e!2829512 key!3287))))

(declare-fun c!775587 () Bool)

(assert (=> bm!316667 (= c!775587 c!775589)))

(declare-fun b!4540622 () Bool)

(assert (=> b!4540622 (= e!2829510 (contains!13552 (keys!17662 (extractMap!1256 (t!357841 (toList!4408 lm!1477)))) key!3287))))

(declare-fun b!4540623 () Bool)

(declare-fun lt!1715265 () Unit!98616)

(assert (=> b!4540623 (= e!2829513 lt!1715265)))

(declare-fun lt!1715271 () Unit!98616)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1052 (List!50878 K!12140) Unit!98616)

(assert (=> b!4540623 (= lt!1715271 (lemmaContainsKeyImpliesGetValueByKeyDefined!1052 (toList!4407 (extractMap!1256 (t!357841 (toList!4408 lm!1477)))) key!3287))))

(assert (=> b!4540623 (isDefined!8482 (getValueByKey!1149 (toList!4407 (extractMap!1256 (t!357841 (toList!4408 lm!1477)))) key!3287))))

(declare-fun lt!1715264 () Unit!98616)

(assert (=> b!4540623 (= lt!1715264 lt!1715271)))

(declare-fun lemmaInListThenGetKeysListContains!489 (List!50878 K!12140) Unit!98616)

(assert (=> b!4540623 (= lt!1715265 (lemmaInListThenGetKeysListContains!489 (toList!4407 (extractMap!1256 (t!357841 (toList!4408 lm!1477)))) key!3287))))

(assert (=> b!4540623 call!316672))

(declare-fun b!4540624 () Bool)

(assert (=> b!4540624 (= e!2829513 e!2829509)))

(declare-fun c!775588 () Bool)

(assert (=> b!4540624 (= c!775588 call!316672)))

(declare-fun b!4540625 () Bool)

(declare-fun Unit!98674 () Unit!98616)

(assert (=> b!4540625 (= e!2829509 Unit!98674)))

(declare-fun b!4540626 () Bool)

(assert (=> b!4540626 (= e!2829512 (keys!17662 (extractMap!1256 (t!357841 (toList!4408 lm!1477)))))))

(assert (= (and d!1403690 c!775589) b!4540623))

(assert (= (and d!1403690 (not c!775589)) b!4540624))

(assert (= (and b!4540624 c!775588) b!4540620))

(assert (= (and b!4540624 (not c!775588)) b!4540625))

(assert (= (or b!4540623 b!4540624) bm!316667))

(assert (= (and bm!316667 c!775587) b!4540621))

(assert (= (and bm!316667 (not c!775587)) b!4540626))

(assert (= (and d!1403690 res!1892342) b!4540619))

(assert (= (and d!1403690 (not res!1892341)) b!4540618))

(assert (= (and b!4540618 res!1892340) b!4540622))

(declare-fun m!5307635 () Bool)

(assert (=> b!4540620 m!5307635))

(declare-fun m!5307637 () Bool)

(assert (=> b!4540620 m!5307637))

(assert (=> b!4540619 m!5306977))

(declare-fun m!5307639 () Bool)

(assert (=> b!4540619 m!5307639))

(assert (=> b!4540619 m!5307639))

(declare-fun m!5307641 () Bool)

(assert (=> b!4540619 m!5307641))

(assert (=> d!1403690 m!5307635))

(assert (=> b!4540622 m!5306977))

(assert (=> b!4540622 m!5307639))

(assert (=> b!4540622 m!5307639))

(assert (=> b!4540622 m!5307641))

(declare-fun m!5307643 () Bool)

(assert (=> bm!316667 m!5307643))

(declare-fun m!5307645 () Bool)

(assert (=> b!4540623 m!5307645))

(declare-fun m!5307647 () Bool)

(assert (=> b!4540623 m!5307647))

(assert (=> b!4540623 m!5307647))

(declare-fun m!5307649 () Bool)

(assert (=> b!4540623 m!5307649))

(declare-fun m!5307651 () Bool)

(assert (=> b!4540623 m!5307651))

(assert (=> b!4540618 m!5307647))

(assert (=> b!4540618 m!5307647))

(assert (=> b!4540618 m!5307649))

(assert (=> b!4540626 m!5306977))

(assert (=> b!4540626 m!5307639))

(declare-fun m!5307653 () Bool)

(assert (=> b!4540621 m!5307653))

(assert (=> b!4540302 d!1403690))

(declare-fun b!4540627 () Bool)

(declare-fun e!2829517 () Bool)

(declare-fun e!2829516 () Bool)

(assert (=> b!4540627 (= e!2829517 e!2829516)))

(declare-fun res!1892343 () Bool)

(assert (=> b!4540627 (=> (not res!1892343) (not e!2829516))))

(assert (=> b!4540627 (= res!1892343 (isDefined!8482 (getValueByKey!1149 (toList!4407 lt!1714884) key!3287)))))

(declare-fun b!4540628 () Bool)

(declare-fun e!2829514 () Bool)

(assert (=> b!4540628 (= e!2829514 (not (contains!13552 (keys!17662 lt!1714884) key!3287)))))

(declare-fun b!4540629 () Bool)

(assert (=> b!4540629 false))

(declare-fun lt!1715275 () Unit!98616)

(declare-fun lt!1715274 () Unit!98616)

(assert (=> b!4540629 (= lt!1715275 lt!1715274)))

(assert (=> b!4540629 (containsKey!1879 (toList!4407 lt!1714884) key!3287)))

(assert (=> b!4540629 (= lt!1715274 (lemmaInGetKeysListThenContainsKey!492 (toList!4407 lt!1714884) key!3287))))

(declare-fun e!2829515 () Unit!98616)

(declare-fun Unit!98675 () Unit!98616)

(assert (=> b!4540629 (= e!2829515 Unit!98675)))

(declare-fun b!4540630 () Bool)

(declare-fun e!2829518 () List!50881)

(assert (=> b!4540630 (= e!2829518 (getKeysList!493 (toList!4407 lt!1714884)))))

(declare-fun d!1403704 () Bool)

(assert (=> d!1403704 e!2829517))

(declare-fun res!1892344 () Bool)

(assert (=> d!1403704 (=> res!1892344 e!2829517)))

(assert (=> d!1403704 (= res!1892344 e!2829514)))

(declare-fun res!1892345 () Bool)

(assert (=> d!1403704 (=> (not res!1892345) (not e!2829514))))

(declare-fun lt!1715276 () Bool)

(assert (=> d!1403704 (= res!1892345 (not lt!1715276))))

(declare-fun lt!1715277 () Bool)

(assert (=> d!1403704 (= lt!1715276 lt!1715277)))

(declare-fun lt!1715278 () Unit!98616)

(declare-fun e!2829519 () Unit!98616)

(assert (=> d!1403704 (= lt!1715278 e!2829519)))

(declare-fun c!775592 () Bool)

(assert (=> d!1403704 (= c!775592 lt!1715277)))

(assert (=> d!1403704 (= lt!1715277 (containsKey!1879 (toList!4407 lt!1714884) key!3287))))

(assert (=> d!1403704 (= (contains!13547 lt!1714884 key!3287) lt!1715276)))

(declare-fun bm!316668 () Bool)

(declare-fun call!316673 () Bool)

(assert (=> bm!316668 (= call!316673 (contains!13552 e!2829518 key!3287))))

(declare-fun c!775590 () Bool)

(assert (=> bm!316668 (= c!775590 c!775592)))

(declare-fun b!4540631 () Bool)

(assert (=> b!4540631 (= e!2829516 (contains!13552 (keys!17662 lt!1714884) key!3287))))

(declare-fun b!4540632 () Bool)

(declare-fun lt!1715273 () Unit!98616)

(assert (=> b!4540632 (= e!2829519 lt!1715273)))

(declare-fun lt!1715279 () Unit!98616)

(assert (=> b!4540632 (= lt!1715279 (lemmaContainsKeyImpliesGetValueByKeyDefined!1052 (toList!4407 lt!1714884) key!3287))))

(assert (=> b!4540632 (isDefined!8482 (getValueByKey!1149 (toList!4407 lt!1714884) key!3287))))

(declare-fun lt!1715272 () Unit!98616)

(assert (=> b!4540632 (= lt!1715272 lt!1715279)))

(assert (=> b!4540632 (= lt!1715273 (lemmaInListThenGetKeysListContains!489 (toList!4407 lt!1714884) key!3287))))

(assert (=> b!4540632 call!316673))

(declare-fun b!4540633 () Bool)

(assert (=> b!4540633 (= e!2829519 e!2829515)))

(declare-fun c!775591 () Bool)

(assert (=> b!4540633 (= c!775591 call!316673)))

(declare-fun b!4540634 () Bool)

(declare-fun Unit!98676 () Unit!98616)

(assert (=> b!4540634 (= e!2829515 Unit!98676)))

(declare-fun b!4540635 () Bool)

(assert (=> b!4540635 (= e!2829518 (keys!17662 lt!1714884))))

(assert (= (and d!1403704 c!775592) b!4540632))

(assert (= (and d!1403704 (not c!775592)) b!4540633))

(assert (= (and b!4540633 c!775591) b!4540629))

(assert (= (and b!4540633 (not c!775591)) b!4540634))

(assert (= (or b!4540632 b!4540633) bm!316668))

(assert (= (and bm!316668 c!775590) b!4540630))

(assert (= (and bm!316668 (not c!775590)) b!4540635))

(assert (= (and d!1403704 res!1892345) b!4540628))

(assert (= (and d!1403704 (not res!1892344)) b!4540627))

(assert (= (and b!4540627 res!1892343) b!4540631))

(declare-fun m!5307655 () Bool)

(assert (=> b!4540629 m!5307655))

(declare-fun m!5307657 () Bool)

(assert (=> b!4540629 m!5307657))

(declare-fun m!5307659 () Bool)

(assert (=> b!4540628 m!5307659))

(assert (=> b!4540628 m!5307659))

(declare-fun m!5307661 () Bool)

(assert (=> b!4540628 m!5307661))

(assert (=> d!1403704 m!5307655))

(assert (=> b!4540631 m!5307659))

(assert (=> b!4540631 m!5307659))

(assert (=> b!4540631 m!5307661))

(declare-fun m!5307663 () Bool)

(assert (=> bm!316668 m!5307663))

(declare-fun m!5307665 () Bool)

(assert (=> b!4540632 m!5307665))

(declare-fun m!5307667 () Bool)

(assert (=> b!4540632 m!5307667))

(assert (=> b!4540632 m!5307667))

(declare-fun m!5307669 () Bool)

(assert (=> b!4540632 m!5307669))

(declare-fun m!5307671 () Bool)

(assert (=> b!4540632 m!5307671))

(assert (=> b!4540627 m!5307667))

(assert (=> b!4540627 m!5307667))

(assert (=> b!4540627 m!5307669))

(assert (=> b!4540635 m!5307659))

(declare-fun m!5307673 () Bool)

(assert (=> b!4540630 m!5307673))

(assert (=> b!4540302 d!1403704))

(declare-fun bs!878415 () Bool)

(declare-fun d!1403706 () Bool)

(assert (= bs!878415 (and d!1403706 start!450680)))

(declare-fun lambda!176243 () Int)

(assert (=> bs!878415 (= lambda!176243 lambda!176131)))

(declare-fun bs!878416 () Bool)

(assert (= bs!878416 (and d!1403706 b!4540305)))

(assert (=> bs!878416 (not (= lambda!176243 lambda!176132))))

(declare-fun bs!878417 () Bool)

(assert (= bs!878417 (and d!1403706 d!1403652)))

(assert (=> bs!878417 (= lambda!176243 lambda!176226)))

(declare-fun lt!1715285 () ListMap!3669)

(assert (=> d!1403706 (invariantList!1045 (toList!4407 lt!1715285))))

(declare-fun e!2829524 () ListMap!3669)

(assert (=> d!1403706 (= lt!1715285 e!2829524)))

(declare-fun c!775595 () Bool)

(assert (=> d!1403706 (= c!775595 ((_ is Cons!50755) (toList!4408 lt!1714874)))))

(assert (=> d!1403706 (forall!10347 (toList!4408 lt!1714874) lambda!176243)))

(assert (=> d!1403706 (= (extractMap!1256 (toList!4408 lt!1714874)) lt!1715285)))

(declare-fun b!4540642 () Bool)

(assert (=> b!4540642 (= e!2829524 (addToMapMapFromBucket!727 (_2!28912 (h!56636 (toList!4408 lt!1714874))) (extractMap!1256 (t!357841 (toList!4408 lt!1714874)))))))

(declare-fun b!4540643 () Bool)

(assert (=> b!4540643 (= e!2829524 (ListMap!3670 Nil!50754))))

(assert (= (and d!1403706 c!775595) b!4540642))

(assert (= (and d!1403706 (not c!775595)) b!4540643))

(declare-fun m!5307685 () Bool)

(assert (=> d!1403706 m!5307685))

(declare-fun m!5307687 () Bool)

(assert (=> d!1403706 m!5307687))

(declare-fun m!5307689 () Bool)

(assert (=> b!4540642 m!5307689))

(assert (=> b!4540642 m!5307689))

(declare-fun m!5307691 () Bool)

(assert (=> b!4540642 m!5307691))

(assert (=> b!4540302 d!1403706))

(declare-fun bs!878438 () Bool)

(declare-fun d!1403716 () Bool)

(assert (= bs!878438 (and d!1403716 start!450680)))

(declare-fun lambda!176247 () Int)

(assert (=> bs!878438 (= lambda!176247 lambda!176131)))

(declare-fun bs!878439 () Bool)

(assert (= bs!878439 (and d!1403716 b!4540305)))

(assert (=> bs!878439 (not (= lambda!176247 lambda!176132))))

(declare-fun bs!878440 () Bool)

(assert (= bs!878440 (and d!1403716 d!1403652)))

(assert (=> bs!878440 (= lambda!176247 lambda!176226)))

(declare-fun bs!878441 () Bool)

(assert (= bs!878441 (and d!1403716 d!1403706)))

(assert (=> bs!878441 (= lambda!176247 lambda!176243)))

(assert (=> d!1403716 (contains!13547 (extractMap!1256 (toList!4408 lt!1714874)) key!3287)))

(declare-fun lt!1715301 () Unit!98616)

(declare-fun choose!29909 (ListLongMap!3039 K!12140 Hashable!5595) Unit!98616)

(assert (=> d!1403716 (= lt!1715301 (choose!29909 lt!1714874 key!3287 hashF!1107))))

(assert (=> d!1403716 (forall!10347 (toList!4408 lt!1714874) lambda!176247)))

(assert (=> d!1403716 (= (lemmaListContainsThenExtractedMapContains!170 lt!1714874 key!3287 hashF!1107) lt!1715301)))

(declare-fun bs!878442 () Bool)

(assert (= bs!878442 d!1403716))

(assert (=> bs!878442 m!5306983))

(assert (=> bs!878442 m!5306983))

(declare-fun m!5307741 () Bool)

(assert (=> bs!878442 m!5307741))

(declare-fun m!5307743 () Bool)

(assert (=> bs!878442 m!5307743))

(declare-fun m!5307745 () Bool)

(assert (=> bs!878442 m!5307745))

(assert (=> b!4540302 d!1403716))

(declare-fun bs!878443 () Bool)

(declare-fun d!1403736 () Bool)

(assert (= bs!878443 (and d!1403736 start!450680)))

(declare-fun lambda!176248 () Int)

(assert (=> bs!878443 (= lambda!176248 lambda!176131)))

(declare-fun bs!878444 () Bool)

(assert (= bs!878444 (and d!1403736 d!1403716)))

(assert (=> bs!878444 (= lambda!176248 lambda!176247)))

(declare-fun bs!878445 () Bool)

(assert (= bs!878445 (and d!1403736 b!4540305)))

(assert (=> bs!878445 (not (= lambda!176248 lambda!176132))))

(declare-fun bs!878446 () Bool)

(assert (= bs!878446 (and d!1403736 d!1403706)))

(assert (=> bs!878446 (= lambda!176248 lambda!176243)))

(declare-fun bs!878447 () Bool)

(assert (= bs!878447 (and d!1403736 d!1403652)))

(assert (=> bs!878447 (= lambda!176248 lambda!176226)))

(declare-fun lt!1715302 () ListMap!3669)

(assert (=> d!1403736 (invariantList!1045 (toList!4407 lt!1715302))))

(declare-fun e!2829535 () ListMap!3669)

(assert (=> d!1403736 (= lt!1715302 e!2829535)))

(declare-fun c!775597 () Bool)

(assert (=> d!1403736 (= c!775597 ((_ is Cons!50755) (t!357841 (toList!4408 lm!1477))))))

(assert (=> d!1403736 (forall!10347 (t!357841 (toList!4408 lm!1477)) lambda!176248)))

(assert (=> d!1403736 (= (extractMap!1256 (t!357841 (toList!4408 lm!1477))) lt!1715302)))

(declare-fun b!4540661 () Bool)

(assert (=> b!4540661 (= e!2829535 (addToMapMapFromBucket!727 (_2!28912 (h!56636 (t!357841 (toList!4408 lm!1477)))) (extractMap!1256 (t!357841 (t!357841 (toList!4408 lm!1477))))))))

(declare-fun b!4540662 () Bool)

(assert (=> b!4540662 (= e!2829535 (ListMap!3670 Nil!50754))))

(assert (= (and d!1403736 c!775597) b!4540661))

(assert (= (and d!1403736 (not c!775597)) b!4540662))

(declare-fun m!5307747 () Bool)

(assert (=> d!1403736 m!5307747))

(declare-fun m!5307749 () Bool)

(assert (=> d!1403736 m!5307749))

(declare-fun m!5307751 () Bool)

(assert (=> b!4540661 m!5307751))

(assert (=> b!4540661 m!5307751))

(declare-fun m!5307753 () Bool)

(assert (=> b!4540661 m!5307753))

(assert (=> b!4540302 d!1403736))

(declare-fun d!1403738 () Bool)

(declare-fun res!1892353 () Bool)

(declare-fun e!2829536 () Bool)

(assert (=> d!1403738 (=> res!1892353 e!2829536)))

(assert (=> d!1403738 (= res!1892353 (not ((_ is Cons!50754) newBucket!178)))))

(assert (=> d!1403738 (= (noDuplicateKeys!1200 newBucket!178) e!2829536)))

(declare-fun b!4540663 () Bool)

(declare-fun e!2829537 () Bool)

(assert (=> b!4540663 (= e!2829536 e!2829537)))

(declare-fun res!1892354 () Bool)

(assert (=> b!4540663 (=> (not res!1892354) (not e!2829537))))

(assert (=> b!4540663 (= res!1892354 (not (containsKey!1876 (t!357840 newBucket!178) (_1!28911 (h!56635 newBucket!178)))))))

(declare-fun b!4540664 () Bool)

(assert (=> b!4540664 (= e!2829537 (noDuplicateKeys!1200 (t!357840 newBucket!178)))))

(assert (= (and d!1403738 (not res!1892353)) b!4540663))

(assert (= (and b!4540663 res!1892354) b!4540664))

(declare-fun m!5307755 () Bool)

(assert (=> b!4540663 m!5307755))

(declare-fun m!5307757 () Bool)

(assert (=> b!4540664 m!5307757))

(assert (=> b!4540303 d!1403738))

(declare-fun d!1403740 () Bool)

(assert (=> d!1403740 (= (eq!657 lt!1714887 lt!1714891) (= (content!8439 (toList!4407 lt!1714887)) (content!8439 (toList!4407 lt!1714891))))))

(declare-fun bs!878448 () Bool)

(assert (= bs!878448 d!1403740))

(assert (=> bs!878448 m!5307145))

(assert (=> bs!878448 m!5307149))

(assert (=> b!4540324 d!1403740))

(declare-fun bs!878449 () Bool)

(declare-fun b!4540666 () Bool)

(assert (= bs!878449 (and b!4540666 b!4540542)))

(declare-fun lambda!176249 () Int)

(assert (=> bs!878449 (= (= lt!1714899 lt!1714884) (= lambda!176249 lambda!176220))))

(declare-fun bs!878450 () Bool)

(assert (= bs!878450 (and b!4540666 b!4540528)))

(assert (=> bs!878450 (= (= lt!1714899 lt!1714886) (= lambda!176249 lambda!176212))))

(assert (=> bs!878450 (= (= lt!1714899 lt!1715103) (= lambda!176249 lambda!176213))))

(declare-fun bs!878451 () Bool)

(assert (= bs!878451 (and b!4540666 d!1403584)))

(assert (=> bs!878451 (= (= lt!1714899 lt!1715122) (= lambda!176249 lambda!176214))))

(declare-fun bs!878452 () Bool)

(assert (= bs!878452 (and b!4540666 b!4540545)))

(assert (=> bs!878452 (= (= lt!1714899 lt!1714884) (= lambda!176249 lambda!176221))))

(declare-fun bs!878453 () Bool)

(assert (= bs!878453 (and b!4540666 d!1403638)))

(assert (=> bs!878453 (= (= lt!1714899 lt!1715174) (= lambda!176249 lambda!176223))))

(declare-fun bs!878454 () Bool)

(assert (= bs!878454 (and b!4540666 b!4540305)))

(assert (=> bs!878454 (not (= lambda!176249 lambda!176133))))

(declare-fun bs!878455 () Bool)

(assert (= bs!878455 (and b!4540666 b!4540525)))

(assert (=> bs!878455 (= (= lt!1714899 lt!1714886) (= lambda!176249 lambda!176211))))

(assert (=> bs!878452 (= (= lt!1714899 lt!1715155) (= lambda!176249 lambda!176222))))

(assert (=> b!4540666 true))

(declare-fun bs!878456 () Bool)

(declare-fun b!4540669 () Bool)

(assert (= bs!878456 (and b!4540669 b!4540542)))

(declare-fun lambda!176250 () Int)

(assert (=> bs!878456 (= (= lt!1714899 lt!1714884) (= lambda!176250 lambda!176220))))

(declare-fun bs!878457 () Bool)

(assert (= bs!878457 (and b!4540669 b!4540528)))

(assert (=> bs!878457 (= (= lt!1714899 lt!1714886) (= lambda!176250 lambda!176212))))

(declare-fun bs!878458 () Bool)

(assert (= bs!878458 (and b!4540669 d!1403584)))

(assert (=> bs!878458 (= (= lt!1714899 lt!1715122) (= lambda!176250 lambda!176214))))

(declare-fun bs!878459 () Bool)

(assert (= bs!878459 (and b!4540669 b!4540545)))

(assert (=> bs!878459 (= (= lt!1714899 lt!1714884) (= lambda!176250 lambda!176221))))

(declare-fun bs!878460 () Bool)

(assert (= bs!878460 (and b!4540669 d!1403638)))

(assert (=> bs!878460 (= (= lt!1714899 lt!1715174) (= lambda!176250 lambda!176223))))

(declare-fun bs!878461 () Bool)

(assert (= bs!878461 (and b!4540669 b!4540305)))

(assert (=> bs!878461 (not (= lambda!176250 lambda!176133))))

(assert (=> bs!878457 (= (= lt!1714899 lt!1715103) (= lambda!176250 lambda!176213))))

(declare-fun bs!878462 () Bool)

(assert (= bs!878462 (and b!4540669 b!4540666)))

(assert (=> bs!878462 (= lambda!176250 lambda!176249)))

(declare-fun bs!878463 () Bool)

(assert (= bs!878463 (and b!4540669 b!4540525)))

(assert (=> bs!878463 (= (= lt!1714899 lt!1714886) (= lambda!176250 lambda!176211))))

(assert (=> bs!878459 (= (= lt!1714899 lt!1715155) (= lambda!176250 lambda!176222))))

(assert (=> b!4540669 true))

(declare-fun lambda!176251 () Int)

(declare-fun lt!1715303 () ListMap!3669)

(assert (=> bs!878456 (= (= lt!1715303 lt!1714884) (= lambda!176251 lambda!176220))))

(assert (=> bs!878457 (= (= lt!1715303 lt!1714886) (= lambda!176251 lambda!176212))))

(assert (=> bs!878458 (= (= lt!1715303 lt!1715122) (= lambda!176251 lambda!176214))))

(assert (=> bs!878460 (= (= lt!1715303 lt!1715174) (= lambda!176251 lambda!176223))))

(assert (=> bs!878461 (not (= lambda!176251 lambda!176133))))

(assert (=> bs!878457 (= (= lt!1715303 lt!1715103) (= lambda!176251 lambda!176213))))

(assert (=> bs!878462 (= (= lt!1715303 lt!1714899) (= lambda!176251 lambda!176249))))

(assert (=> b!4540669 (= (= lt!1715303 lt!1714899) (= lambda!176251 lambda!176250))))

(assert (=> bs!878459 (= (= lt!1715303 lt!1714884) (= lambda!176251 lambda!176221))))

(assert (=> bs!878463 (= (= lt!1715303 lt!1714886) (= lambda!176251 lambda!176211))))

(assert (=> bs!878459 (= (= lt!1715303 lt!1715155) (= lambda!176251 lambda!176222))))

(assert (=> b!4540669 true))

(declare-fun bs!878464 () Bool)

(declare-fun d!1403742 () Bool)

(assert (= bs!878464 (and d!1403742 b!4540542)))

(declare-fun lt!1715322 () ListMap!3669)

(declare-fun lambda!176252 () Int)

(assert (=> bs!878464 (= (= lt!1715322 lt!1714884) (= lambda!176252 lambda!176220))))

(declare-fun bs!878465 () Bool)

(assert (= bs!878465 (and d!1403742 b!4540528)))

(assert (=> bs!878465 (= (= lt!1715322 lt!1714886) (= lambda!176252 lambda!176212))))

(declare-fun bs!878466 () Bool)

(assert (= bs!878466 (and d!1403742 d!1403638)))

(assert (=> bs!878466 (= (= lt!1715322 lt!1715174) (= lambda!176252 lambda!176223))))

(declare-fun bs!878467 () Bool)

(assert (= bs!878467 (and d!1403742 b!4540305)))

(assert (=> bs!878467 (not (= lambda!176252 lambda!176133))))

(assert (=> bs!878465 (= (= lt!1715322 lt!1715103) (= lambda!176252 lambda!176213))))

(declare-fun bs!878468 () Bool)

(assert (= bs!878468 (and d!1403742 b!4540666)))

(assert (=> bs!878468 (= (= lt!1715322 lt!1714899) (= lambda!176252 lambda!176249))))

(declare-fun bs!878469 () Bool)

(assert (= bs!878469 (and d!1403742 d!1403584)))

(assert (=> bs!878469 (= (= lt!1715322 lt!1715122) (= lambda!176252 lambda!176214))))

(declare-fun bs!878470 () Bool)

(assert (= bs!878470 (and d!1403742 b!4540669)))

(assert (=> bs!878470 (= (= lt!1715322 lt!1715303) (= lambda!176252 lambda!176251))))

(assert (=> bs!878470 (= (= lt!1715322 lt!1714899) (= lambda!176252 lambda!176250))))

(declare-fun bs!878471 () Bool)

(assert (= bs!878471 (and d!1403742 b!4540545)))

(assert (=> bs!878471 (= (= lt!1715322 lt!1714884) (= lambda!176252 lambda!176221))))

(declare-fun bs!878472 () Bool)

(assert (= bs!878472 (and d!1403742 b!4540525)))

(assert (=> bs!878472 (= (= lt!1715322 lt!1714886) (= lambda!176252 lambda!176211))))

(assert (=> bs!878471 (= (= lt!1715322 lt!1715155) (= lambda!176252 lambda!176222))))

(assert (=> d!1403742 true))

(declare-fun c!775598 () Bool)

(declare-fun call!316674 () Bool)

(declare-fun bm!316669 () Bool)

(declare-fun lt!1715318 () ListMap!3669)

(assert (=> bm!316669 (= call!316674 (forall!10349 (ite c!775598 (toList!4407 lt!1714899) (toList!4407 lt!1715318)) (ite c!775598 lambda!176249 lambda!176251)))))

(declare-fun b!4540665 () Bool)

(declare-fun e!2829538 () Bool)

(assert (=> b!4540665 (= e!2829538 (invariantList!1045 (toList!4407 lt!1715322)))))

(declare-fun e!2829539 () ListMap!3669)

(assert (=> b!4540666 (= e!2829539 lt!1714899)))

(declare-fun lt!1715323 () Unit!98616)

(declare-fun call!316675 () Unit!98616)

(assert (=> b!4540666 (= lt!1715323 call!316675)))

(declare-fun call!316676 () Bool)

(assert (=> b!4540666 call!316676))

(declare-fun lt!1715306 () Unit!98616)

(assert (=> b!4540666 (= lt!1715306 lt!1715323)))

(assert (=> b!4540666 call!316674))

(declare-fun lt!1715321 () Unit!98616)

(declare-fun Unit!98677 () Unit!98616)

(assert (=> b!4540666 (= lt!1715321 Unit!98677)))

(declare-fun bm!316670 () Bool)

(assert (=> bm!316670 (= call!316676 (forall!10349 (ite c!775598 (toList!4407 lt!1714899) (toList!4407 lt!1715318)) (ite c!775598 lambda!176249 lambda!176251)))))

(declare-fun b!4540667 () Bool)

(declare-fun res!1892357 () Bool)

(assert (=> b!4540667 (=> (not res!1892357) (not e!2829538))))

(assert (=> b!4540667 (= res!1892357 (forall!10349 (toList!4407 lt!1714899) lambda!176252))))

(assert (=> d!1403742 e!2829538))

(declare-fun res!1892355 () Bool)

(assert (=> d!1403742 (=> (not res!1892355) (not e!2829538))))

(assert (=> d!1403742 (= res!1892355 (forall!10349 (_2!28912 lt!1714880) lambda!176252))))

(assert (=> d!1403742 (= lt!1715322 e!2829539)))

(assert (=> d!1403742 (= c!775598 ((_ is Nil!50754) (_2!28912 lt!1714880)))))

(assert (=> d!1403742 (noDuplicateKeys!1200 (_2!28912 lt!1714880))))

(assert (=> d!1403742 (= (addToMapMapFromBucket!727 (_2!28912 lt!1714880) lt!1714899) lt!1715322)))

(declare-fun b!4540668 () Bool)

(declare-fun e!2829540 () Bool)

(assert (=> b!4540668 (= e!2829540 (forall!10349 (toList!4407 lt!1714899) lambda!176251))))

(declare-fun bm!316671 () Bool)

(assert (=> bm!316671 (= call!316675 (lemmaContainsAllItsOwnKeys!365 lt!1714899))))

(assert (=> b!4540669 (= e!2829539 lt!1715303)))

(assert (=> b!4540669 (= lt!1715318 (+!1607 lt!1714899 (h!56635 (_2!28912 lt!1714880))))))

(assert (=> b!4540669 (= lt!1715303 (addToMapMapFromBucket!727 (t!357840 (_2!28912 lt!1714880)) (+!1607 lt!1714899 (h!56635 (_2!28912 lt!1714880)))))))

(declare-fun lt!1715308 () Unit!98616)

(assert (=> b!4540669 (= lt!1715308 call!316675)))

(assert (=> b!4540669 (forall!10349 (toList!4407 lt!1714899) lambda!176250)))

(declare-fun lt!1715307 () Unit!98616)

(assert (=> b!4540669 (= lt!1715307 lt!1715308)))

(assert (=> b!4540669 call!316674))

(declare-fun lt!1715312 () Unit!98616)

(declare-fun Unit!98678 () Unit!98616)

(assert (=> b!4540669 (= lt!1715312 Unit!98678)))

(assert (=> b!4540669 (forall!10349 (t!357840 (_2!28912 lt!1714880)) lambda!176251)))

(declare-fun lt!1715304 () Unit!98616)

(declare-fun Unit!98679 () Unit!98616)

(assert (=> b!4540669 (= lt!1715304 Unit!98679)))

(declare-fun lt!1715316 () Unit!98616)

(declare-fun Unit!98680 () Unit!98616)

(assert (=> b!4540669 (= lt!1715316 Unit!98680)))

(declare-fun lt!1715309 () Unit!98616)

(assert (=> b!4540669 (= lt!1715309 (forallContained!2611 (toList!4407 lt!1715318) lambda!176251 (h!56635 (_2!28912 lt!1714880))))))

(assert (=> b!4540669 (contains!13547 lt!1715318 (_1!28911 (h!56635 (_2!28912 lt!1714880))))))

(declare-fun lt!1715314 () Unit!98616)

(declare-fun Unit!98681 () Unit!98616)

(assert (=> b!4540669 (= lt!1715314 Unit!98681)))

(assert (=> b!4540669 (contains!13547 lt!1715303 (_1!28911 (h!56635 (_2!28912 lt!1714880))))))

(declare-fun lt!1715315 () Unit!98616)

(declare-fun Unit!98682 () Unit!98616)

(assert (=> b!4540669 (= lt!1715315 Unit!98682)))

(assert (=> b!4540669 (forall!10349 (_2!28912 lt!1714880) lambda!176251)))

(declare-fun lt!1715313 () Unit!98616)

(declare-fun Unit!98683 () Unit!98616)

(assert (=> b!4540669 (= lt!1715313 Unit!98683)))

(assert (=> b!4540669 call!316676))

(declare-fun lt!1715305 () Unit!98616)

(declare-fun Unit!98684 () Unit!98616)

(assert (=> b!4540669 (= lt!1715305 Unit!98684)))

(declare-fun lt!1715320 () Unit!98616)

(declare-fun Unit!98685 () Unit!98616)

(assert (=> b!4540669 (= lt!1715320 Unit!98685)))

(declare-fun lt!1715311 () Unit!98616)

(assert (=> b!4540669 (= lt!1715311 (addForallContainsKeyThenBeforeAdding!365 lt!1714899 lt!1715303 (_1!28911 (h!56635 (_2!28912 lt!1714880))) (_2!28911 (h!56635 (_2!28912 lt!1714880)))))))

(assert (=> b!4540669 (forall!10349 (toList!4407 lt!1714899) lambda!176251)))

(declare-fun lt!1715310 () Unit!98616)

(assert (=> b!4540669 (= lt!1715310 lt!1715311)))

(assert (=> b!4540669 (forall!10349 (toList!4407 lt!1714899) lambda!176251)))

(declare-fun lt!1715317 () Unit!98616)

(declare-fun Unit!98686 () Unit!98616)

(assert (=> b!4540669 (= lt!1715317 Unit!98686)))

(declare-fun res!1892356 () Bool)

(assert (=> b!4540669 (= res!1892356 (forall!10349 (_2!28912 lt!1714880) lambda!176251))))

(assert (=> b!4540669 (=> (not res!1892356) (not e!2829540))))

(assert (=> b!4540669 e!2829540))

(declare-fun lt!1715319 () Unit!98616)

(declare-fun Unit!98687 () Unit!98616)

(assert (=> b!4540669 (= lt!1715319 Unit!98687)))

(assert (= (and d!1403742 c!775598) b!4540666))

(assert (= (and d!1403742 (not c!775598)) b!4540669))

(assert (= (and b!4540669 res!1892356) b!4540668))

(assert (= (or b!4540666 b!4540669) bm!316669))

(assert (= (or b!4540666 b!4540669) bm!316670))

(assert (= (or b!4540666 b!4540669) bm!316671))

(assert (= (and d!1403742 res!1892355) b!4540667))

(assert (= (and b!4540667 res!1892357) b!4540665))

(declare-fun m!5307759 () Bool)

(assert (=> d!1403742 m!5307759))

(assert (=> d!1403742 m!5306987))

(declare-fun m!5307761 () Bool)

(assert (=> b!4540668 m!5307761))

(declare-fun m!5307763 () Bool)

(assert (=> bm!316671 m!5307763))

(declare-fun m!5307765 () Bool)

(assert (=> b!4540669 m!5307765))

(declare-fun m!5307767 () Bool)

(assert (=> b!4540669 m!5307767))

(declare-fun m!5307769 () Bool)

(assert (=> b!4540669 m!5307769))

(declare-fun m!5307771 () Bool)

(assert (=> b!4540669 m!5307771))

(declare-fun m!5307773 () Bool)

(assert (=> b!4540669 m!5307773))

(declare-fun m!5307775 () Bool)

(assert (=> b!4540669 m!5307775))

(assert (=> b!4540669 m!5307771))

(assert (=> b!4540669 m!5307761))

(declare-fun m!5307777 () Bool)

(assert (=> b!4540669 m!5307777))

(assert (=> b!4540669 m!5307761))

(declare-fun m!5307779 () Bool)

(assert (=> b!4540669 m!5307779))

(assert (=> b!4540669 m!5307767))

(declare-fun m!5307781 () Bool)

(assert (=> b!4540669 m!5307781))

(declare-fun m!5307783 () Bool)

(assert (=> b!4540665 m!5307783))

(declare-fun m!5307785 () Bool)

(assert (=> b!4540667 m!5307785))

(declare-fun m!5307787 () Bool)

(assert (=> bm!316670 m!5307787))

(assert (=> bm!316669 m!5307787))

(assert (=> b!4540324 d!1403742))

(declare-fun bs!878473 () Bool)

(declare-fun d!1403744 () Bool)

(assert (= bs!878473 (and d!1403744 start!450680)))

(declare-fun lambda!176253 () Int)

(assert (=> bs!878473 (= lambda!176253 lambda!176131)))

(declare-fun bs!878474 () Bool)

(assert (= bs!878474 (and d!1403744 d!1403716)))

(assert (=> bs!878474 (= lambda!176253 lambda!176247)))

(declare-fun bs!878475 () Bool)

(assert (= bs!878475 (and d!1403744 d!1403706)))

(assert (=> bs!878475 (= lambda!176253 lambda!176243)))

(declare-fun bs!878476 () Bool)

(assert (= bs!878476 (and d!1403744 d!1403652)))

(assert (=> bs!878476 (= lambda!176253 lambda!176226)))

(declare-fun bs!878477 () Bool)

(assert (= bs!878477 (and d!1403744 b!4540305)))

(assert (=> bs!878477 (not (= lambda!176253 lambda!176132))))

(declare-fun bs!878478 () Bool)

(assert (= bs!878478 (and d!1403744 d!1403736)))

(assert (=> bs!878478 (= lambda!176253 lambda!176248)))

(declare-fun lt!1715324 () ListMap!3669)

(assert (=> d!1403744 (invariantList!1045 (toList!4407 lt!1715324))))

(declare-fun e!2829541 () ListMap!3669)

(assert (=> d!1403744 (= lt!1715324 e!2829541)))

(declare-fun c!775599 () Bool)

(assert (=> d!1403744 (= c!775599 ((_ is Cons!50755) (toList!4408 lt!1714885)))))

(assert (=> d!1403744 (forall!10347 (toList!4408 lt!1714885) lambda!176253)))

(assert (=> d!1403744 (= (extractMap!1256 (toList!4408 lt!1714885)) lt!1715324)))

(declare-fun b!4540670 () Bool)

(assert (=> b!4540670 (= e!2829541 (addToMapMapFromBucket!727 (_2!28912 (h!56636 (toList!4408 lt!1714885))) (extractMap!1256 (t!357841 (toList!4408 lt!1714885)))))))

(declare-fun b!4540671 () Bool)

(assert (=> b!4540671 (= e!2829541 (ListMap!3670 Nil!50754))))

(assert (= (and d!1403744 c!775599) b!4540670))

(assert (= (and d!1403744 (not c!775599)) b!4540671))

(declare-fun m!5307789 () Bool)

(assert (=> d!1403744 m!5307789))

(declare-fun m!5307791 () Bool)

(assert (=> d!1403744 m!5307791))

(declare-fun m!5307793 () Bool)

(assert (=> b!4540670 m!5307793))

(assert (=> b!4540670 m!5307793))

(declare-fun m!5307795 () Bool)

(assert (=> b!4540670 m!5307795))

(assert (=> b!4540324 d!1403744))

(declare-fun b!4540672 () Bool)

(declare-fun e!2829545 () Bool)

(declare-fun e!2829544 () Bool)

(assert (=> b!4540672 (= e!2829545 e!2829544)))

(declare-fun res!1892358 () Bool)

(assert (=> b!4540672 (=> (not res!1892358) (not e!2829544))))

(assert (=> b!4540672 (= res!1892358 (isDefined!8482 (getValueByKey!1149 (toList!4407 lt!1714904) key!3287)))))

(declare-fun b!4540673 () Bool)

(declare-fun e!2829542 () Bool)

(assert (=> b!4540673 (= e!2829542 (not (contains!13552 (keys!17662 lt!1714904) key!3287)))))

(declare-fun b!4540674 () Bool)

(assert (=> b!4540674 false))

(declare-fun lt!1715328 () Unit!98616)

(declare-fun lt!1715327 () Unit!98616)

(assert (=> b!4540674 (= lt!1715328 lt!1715327)))

(assert (=> b!4540674 (containsKey!1879 (toList!4407 lt!1714904) key!3287)))

(assert (=> b!4540674 (= lt!1715327 (lemmaInGetKeysListThenContainsKey!492 (toList!4407 lt!1714904) key!3287))))

(declare-fun e!2829543 () Unit!98616)

(declare-fun Unit!98689 () Unit!98616)

(assert (=> b!4540674 (= e!2829543 Unit!98689)))

(declare-fun b!4540675 () Bool)

(declare-fun e!2829546 () List!50881)

(assert (=> b!4540675 (= e!2829546 (getKeysList!493 (toList!4407 lt!1714904)))))

(declare-fun d!1403746 () Bool)

(assert (=> d!1403746 e!2829545))

(declare-fun res!1892359 () Bool)

(assert (=> d!1403746 (=> res!1892359 e!2829545)))

(assert (=> d!1403746 (= res!1892359 e!2829542)))

(declare-fun res!1892360 () Bool)

(assert (=> d!1403746 (=> (not res!1892360) (not e!2829542))))

(declare-fun lt!1715329 () Bool)

(assert (=> d!1403746 (= res!1892360 (not lt!1715329))))

(declare-fun lt!1715330 () Bool)

(assert (=> d!1403746 (= lt!1715329 lt!1715330)))

(declare-fun lt!1715331 () Unit!98616)

(declare-fun e!2829547 () Unit!98616)

(assert (=> d!1403746 (= lt!1715331 e!2829547)))

(declare-fun c!775602 () Bool)

(assert (=> d!1403746 (= c!775602 lt!1715330)))

(assert (=> d!1403746 (= lt!1715330 (containsKey!1879 (toList!4407 lt!1714904) key!3287))))

(assert (=> d!1403746 (= (contains!13547 lt!1714904 key!3287) lt!1715329)))

(declare-fun bm!316672 () Bool)

(declare-fun call!316677 () Bool)

(assert (=> bm!316672 (= call!316677 (contains!13552 e!2829546 key!3287))))

(declare-fun c!775600 () Bool)

(assert (=> bm!316672 (= c!775600 c!775602)))

(declare-fun b!4540676 () Bool)

(assert (=> b!4540676 (= e!2829544 (contains!13552 (keys!17662 lt!1714904) key!3287))))

(declare-fun b!4540677 () Bool)

(declare-fun lt!1715326 () Unit!98616)

(assert (=> b!4540677 (= e!2829547 lt!1715326)))

(declare-fun lt!1715332 () Unit!98616)

(assert (=> b!4540677 (= lt!1715332 (lemmaContainsKeyImpliesGetValueByKeyDefined!1052 (toList!4407 lt!1714904) key!3287))))

(assert (=> b!4540677 (isDefined!8482 (getValueByKey!1149 (toList!4407 lt!1714904) key!3287))))

(declare-fun lt!1715325 () Unit!98616)

(assert (=> b!4540677 (= lt!1715325 lt!1715332)))

(assert (=> b!4540677 (= lt!1715326 (lemmaInListThenGetKeysListContains!489 (toList!4407 lt!1714904) key!3287))))

(assert (=> b!4540677 call!316677))

(declare-fun b!4540678 () Bool)

(assert (=> b!4540678 (= e!2829547 e!2829543)))

(declare-fun c!775601 () Bool)

(assert (=> b!4540678 (= c!775601 call!316677)))

(declare-fun b!4540679 () Bool)

(declare-fun Unit!98699 () Unit!98616)

(assert (=> b!4540679 (= e!2829543 Unit!98699)))

(declare-fun b!4540680 () Bool)

(assert (=> b!4540680 (= e!2829546 (keys!17662 lt!1714904))))

(assert (= (and d!1403746 c!775602) b!4540677))

(assert (= (and d!1403746 (not c!775602)) b!4540678))

(assert (= (and b!4540678 c!775601) b!4540674))

(assert (= (and b!4540678 (not c!775601)) b!4540679))

(assert (= (or b!4540677 b!4540678) bm!316672))

(assert (= (and bm!316672 c!775600) b!4540675))

(assert (= (and bm!316672 (not c!775600)) b!4540680))

(assert (= (and d!1403746 res!1892360) b!4540673))

(assert (= (and d!1403746 (not res!1892359)) b!4540672))

(assert (= (and b!4540672 res!1892358) b!4540676))

(declare-fun m!5307797 () Bool)

(assert (=> b!4540674 m!5307797))

(declare-fun m!5307799 () Bool)

(assert (=> b!4540674 m!5307799))

(declare-fun m!5307801 () Bool)

(assert (=> b!4540673 m!5307801))

(assert (=> b!4540673 m!5307801))

(declare-fun m!5307803 () Bool)

(assert (=> b!4540673 m!5307803))

(assert (=> d!1403746 m!5307797))

(assert (=> b!4540676 m!5307801))

(assert (=> b!4540676 m!5307801))

(assert (=> b!4540676 m!5307803))

(declare-fun m!5307805 () Bool)

(assert (=> bm!316672 m!5307805))

(declare-fun m!5307807 () Bool)

(assert (=> b!4540677 m!5307807))

(declare-fun m!5307809 () Bool)

(assert (=> b!4540677 m!5307809))

(assert (=> b!4540677 m!5307809))

(declare-fun m!5307811 () Bool)

(assert (=> b!4540677 m!5307811))

(declare-fun m!5307813 () Bool)

(assert (=> b!4540677 m!5307813))

(assert (=> b!4540672 m!5307809))

(assert (=> b!4540672 m!5307809))

(assert (=> b!4540672 m!5307811))

(assert (=> b!4540680 m!5307801))

(declare-fun m!5307815 () Bool)

(assert (=> b!4540675 m!5307815))

(assert (=> b!4540306 d!1403746))

(declare-fun bs!878479 () Bool)

(declare-fun d!1403748 () Bool)

(assert (= bs!878479 (and d!1403748 start!450680)))

(declare-fun lambda!176254 () Int)

(assert (=> bs!878479 (= lambda!176254 lambda!176131)))

(declare-fun bs!878480 () Bool)

(assert (= bs!878480 (and d!1403748 d!1403716)))

(assert (=> bs!878480 (= lambda!176254 lambda!176247)))

(declare-fun bs!878481 () Bool)

(assert (= bs!878481 (and d!1403748 d!1403706)))

(assert (=> bs!878481 (= lambda!176254 lambda!176243)))

(declare-fun bs!878482 () Bool)

(assert (= bs!878482 (and d!1403748 d!1403744)))

(assert (=> bs!878482 (= lambda!176254 lambda!176253)))

(declare-fun bs!878483 () Bool)

(assert (= bs!878483 (and d!1403748 d!1403652)))

(assert (=> bs!878483 (= lambda!176254 lambda!176226)))

(declare-fun bs!878484 () Bool)

(assert (= bs!878484 (and d!1403748 b!4540305)))

(assert (=> bs!878484 (not (= lambda!176254 lambda!176132))))

(declare-fun bs!878485 () Bool)

(assert (= bs!878485 (and d!1403748 d!1403736)))

(assert (=> bs!878485 (= lambda!176254 lambda!176248)))

(declare-fun lt!1715333 () ListMap!3669)

(assert (=> d!1403748 (invariantList!1045 (toList!4407 lt!1715333))))

(declare-fun e!2829548 () ListMap!3669)

(assert (=> d!1403748 (= lt!1715333 e!2829548)))

(declare-fun c!775603 () Bool)

(assert (=> d!1403748 (= c!775603 ((_ is Cons!50755) (toList!4408 lm!1477)))))

(assert (=> d!1403748 (forall!10347 (toList!4408 lm!1477) lambda!176254)))

(assert (=> d!1403748 (= (extractMap!1256 (toList!4408 lm!1477)) lt!1715333)))

(declare-fun b!4540681 () Bool)

(assert (=> b!4540681 (= e!2829548 (addToMapMapFromBucket!727 (_2!28912 (h!56636 (toList!4408 lm!1477))) (extractMap!1256 (t!357841 (toList!4408 lm!1477)))))))

(declare-fun b!4540682 () Bool)

(assert (=> b!4540682 (= e!2829548 (ListMap!3670 Nil!50754))))

(assert (= (and d!1403748 c!775603) b!4540681))

(assert (= (and d!1403748 (not c!775603)) b!4540682))

(declare-fun m!5307817 () Bool)

(assert (=> d!1403748 m!5307817))

(declare-fun m!5307819 () Bool)

(assert (=> d!1403748 m!5307819))

(assert (=> b!4540681 m!5306977))

(assert (=> b!4540681 m!5306977))

(declare-fun m!5307821 () Bool)

(assert (=> b!4540681 m!5307821))

(assert (=> b!4540306 d!1403748))

(declare-fun d!1403750 () Bool)

(declare-fun res!1892365 () Bool)

(declare-fun e!2829553 () Bool)

(assert (=> d!1403750 (=> res!1892365 e!2829553)))

(assert (=> d!1403750 (= res!1892365 (and ((_ is Cons!50754) (_2!28912 lt!1714880)) (= (_1!28911 (h!56635 (_2!28912 lt!1714880))) key!3287)))))

(assert (=> d!1403750 (= (containsKey!1876 (_2!28912 lt!1714880) key!3287) e!2829553)))

(declare-fun b!4540687 () Bool)

(declare-fun e!2829554 () Bool)

(assert (=> b!4540687 (= e!2829553 e!2829554)))

(declare-fun res!1892366 () Bool)

(assert (=> b!4540687 (=> (not res!1892366) (not e!2829554))))

(assert (=> b!4540687 (= res!1892366 ((_ is Cons!50754) (_2!28912 lt!1714880)))))

(declare-fun b!4540688 () Bool)

(assert (=> b!4540688 (= e!2829554 (containsKey!1876 (t!357840 (_2!28912 lt!1714880)) key!3287))))

(assert (= (and d!1403750 (not res!1892365)) b!4540687))

(assert (= (and b!4540687 res!1892366) b!4540688))

(declare-fun m!5307823 () Bool)

(assert (=> b!4540688 m!5307823))

(assert (=> b!4540328 d!1403750))

(declare-fun b!4540705 () Bool)

(declare-fun e!2829569 () Bool)

(declare-fun lt!1715336 () Option!11203)

(declare-fun contains!13553 (List!50878 tuple2!51234) Bool)

(assert (=> b!4540705 (= e!2829569 (contains!13553 (_2!28912 lt!1714880) (get!16688 lt!1715336)))))

(declare-fun d!1403752 () Bool)

(declare-fun e!2829567 () Bool)

(assert (=> d!1403752 e!2829567))

(declare-fun res!1892377 () Bool)

(assert (=> d!1403752 (=> res!1892377 e!2829567)))

(declare-fun e!2829568 () Bool)

(assert (=> d!1403752 (= res!1892377 e!2829568)))

(declare-fun res!1892376 () Bool)

(assert (=> d!1403752 (=> (not res!1892376) (not e!2829568))))

(declare-fun isEmpty!28753 (Option!11203) Bool)

(assert (=> d!1403752 (= res!1892376 (isEmpty!28753 lt!1715336))))

(declare-fun e!2829566 () Option!11203)

(assert (=> d!1403752 (= lt!1715336 e!2829566)))

(declare-fun c!775609 () Bool)

(assert (=> d!1403752 (= c!775609 (and ((_ is Cons!50754) (_2!28912 lt!1714880)) (= (_1!28911 (h!56635 (_2!28912 lt!1714880))) key!3287)))))

(assert (=> d!1403752 (noDuplicateKeys!1200 (_2!28912 lt!1714880))))

(assert (=> d!1403752 (= (getPair!216 (_2!28912 lt!1714880) key!3287) lt!1715336)))

(declare-fun b!4540706 () Bool)

(assert (=> b!4540706 (= e!2829566 (Some!11202 (h!56635 (_2!28912 lt!1714880))))))

(declare-fun b!4540707 () Bool)

(assert (=> b!4540707 (= e!2829568 (not (containsKey!1876 (_2!28912 lt!1714880) key!3287)))))

(declare-fun b!4540708 () Bool)

(declare-fun e!2829565 () Option!11203)

(assert (=> b!4540708 (= e!2829566 e!2829565)))

(declare-fun c!775608 () Bool)

(assert (=> b!4540708 (= c!775608 ((_ is Cons!50754) (_2!28912 lt!1714880)))))

(declare-fun b!4540709 () Bool)

(assert (=> b!4540709 (= e!2829567 e!2829569)))

(declare-fun res!1892378 () Bool)

(assert (=> b!4540709 (=> (not res!1892378) (not e!2829569))))

(declare-fun isDefined!8483 (Option!11203) Bool)

(assert (=> b!4540709 (= res!1892378 (isDefined!8483 lt!1715336))))

(declare-fun b!4540710 () Bool)

(declare-fun res!1892375 () Bool)

(assert (=> b!4540710 (=> (not res!1892375) (not e!2829569))))

(assert (=> b!4540710 (= res!1892375 (= (_1!28911 (get!16688 lt!1715336)) key!3287))))

(declare-fun b!4540711 () Bool)

(assert (=> b!4540711 (= e!2829565 None!11202)))

(declare-fun b!4540712 () Bool)

(assert (=> b!4540712 (= e!2829565 (getPair!216 (t!357840 (_2!28912 lt!1714880)) key!3287))))

(assert (= (and d!1403752 c!775609) b!4540706))

(assert (= (and d!1403752 (not c!775609)) b!4540708))

(assert (= (and b!4540708 c!775608) b!4540712))

(assert (= (and b!4540708 (not c!775608)) b!4540711))

(assert (= (and d!1403752 res!1892376) b!4540707))

(assert (= (and d!1403752 (not res!1892377)) b!4540709))

(assert (= (and b!4540709 res!1892378) b!4540710))

(assert (= (and b!4540710 res!1892375) b!4540705))

(declare-fun m!5307825 () Bool)

(assert (=> b!4540709 m!5307825))

(assert (=> b!4540707 m!5306953))

(declare-fun m!5307827 () Bool)

(assert (=> b!4540712 m!5307827))

(declare-fun m!5307829 () Bool)

(assert (=> d!1403752 m!5307829))

(assert (=> d!1403752 m!5306987))

(declare-fun m!5307831 () Bool)

(assert (=> b!4540705 m!5307831))

(assert (=> b!4540705 m!5307831))

(declare-fun m!5307833 () Bool)

(assert (=> b!4540705 m!5307833))

(assert (=> b!4540710 m!5307831))

(assert (=> b!4540305 d!1403752))

(declare-fun d!1403754 () Bool)

(assert (=> d!1403754 (dynLambda!21216 lambda!176132 (h!56636 (toList!4408 lm!1477)))))

(declare-fun lt!1715337 () Unit!98616)

(assert (=> d!1403754 (= lt!1715337 (choose!29902 (toList!4408 lm!1477) lambda!176132 (h!56636 (toList!4408 lm!1477))))))

(declare-fun e!2829570 () Bool)

(assert (=> d!1403754 e!2829570))

(declare-fun res!1892379 () Bool)

(assert (=> d!1403754 (=> (not res!1892379) (not e!2829570))))

(assert (=> d!1403754 (= res!1892379 (forall!10347 (toList!4408 lm!1477) lambda!176132))))

(assert (=> d!1403754 (= (forallContained!2610 (toList!4408 lm!1477) lambda!176132 (h!56636 (toList!4408 lm!1477))) lt!1715337)))

(declare-fun b!4540713 () Bool)

(assert (=> b!4540713 (= e!2829570 (contains!13548 (toList!4408 lm!1477) (h!56636 (toList!4408 lm!1477))))))

(assert (= (and d!1403754 res!1892379) b!4540713))

(declare-fun b_lambda!158093 () Bool)

(assert (=> (not b_lambda!158093) (not d!1403754)))

(declare-fun m!5307835 () Bool)

(assert (=> d!1403754 m!5307835))

(declare-fun m!5307837 () Bool)

(assert (=> d!1403754 m!5307837))

(declare-fun m!5307839 () Bool)

(assert (=> d!1403754 m!5307839))

(assert (=> b!4540713 m!5307135))

(assert (=> b!4540305 d!1403754))

(declare-fun d!1403756 () Bool)

(declare-fun dynLambda!21217 (Int tuple2!51234) Bool)

(assert (=> d!1403756 (dynLambda!21217 lambda!176133 (tuple2!51235 key!3287 (_2!28911 (get!16688 lt!1714896))))))

(declare-fun lt!1715340 () Unit!98616)

(declare-fun choose!29911 (List!50878 Int tuple2!51234) Unit!98616)

(assert (=> d!1403756 (= lt!1715340 (choose!29911 (_2!28912 (h!56636 (toList!4408 lm!1477))) lambda!176133 (tuple2!51235 key!3287 (_2!28911 (get!16688 lt!1714896)))))))

(declare-fun e!2829573 () Bool)

(assert (=> d!1403756 e!2829573))

(declare-fun res!1892382 () Bool)

(assert (=> d!1403756 (=> (not res!1892382) (not e!2829573))))

(assert (=> d!1403756 (= res!1892382 (forall!10349 (_2!28912 (h!56636 (toList!4408 lm!1477))) lambda!176133))))

(assert (=> d!1403756 (= (forallContained!2611 (_2!28912 (h!56636 (toList!4408 lm!1477))) lambda!176133 (tuple2!51235 key!3287 (_2!28911 (get!16688 lt!1714896)))) lt!1715340)))

(declare-fun b!4540716 () Bool)

(assert (=> b!4540716 (= e!2829573 (contains!13553 (_2!28912 (h!56636 (toList!4408 lm!1477))) (tuple2!51235 key!3287 (_2!28911 (get!16688 lt!1714896)))))))

(assert (= (and d!1403756 res!1892382) b!4540716))

(declare-fun b_lambda!158095 () Bool)

(assert (=> (not b_lambda!158095) (not d!1403756)))

(declare-fun m!5307841 () Bool)

(assert (=> d!1403756 m!5307841))

(declare-fun m!5307843 () Bool)

(assert (=> d!1403756 m!5307843))

(declare-fun m!5307845 () Bool)

(assert (=> d!1403756 m!5307845))

(declare-fun m!5307847 () Bool)

(assert (=> b!4540716 m!5307847))

(assert (=> b!4540305 d!1403756))

(declare-fun d!1403758 () Bool)

(assert (=> d!1403758 (= (get!16688 lt!1714896) (v!44900 lt!1714896))))

(assert (=> b!4540305 d!1403758))

(declare-fun d!1403760 () Bool)

(assert (=> d!1403760 (= (eq!657 lt!1714888 lt!1714897) (= (content!8439 (toList!4407 lt!1714888)) (content!8439 (toList!4407 lt!1714897))))))

(declare-fun bs!878486 () Bool)

(assert (= bs!878486 d!1403760))

(assert (=> bs!878486 m!5307147))

(assert (=> bs!878486 m!5307573))

(assert (=> b!4540326 d!1403760))

(declare-fun d!1403762 () Bool)

(declare-fun e!2829574 () Bool)

(assert (=> d!1403762 e!2829574))

(declare-fun res!1892383 () Bool)

(assert (=> d!1403762 (=> (not res!1892383) (not e!2829574))))

(declare-fun lt!1715341 () ListMap!3669)

(assert (=> d!1403762 (= res!1892383 (not (contains!13547 lt!1715341 key!3287)))))

(assert (=> d!1403762 (= lt!1715341 (ListMap!3670 (removePresrvNoDuplicatedKeys!168 (toList!4407 lt!1714904) key!3287)))))

(assert (=> d!1403762 (= (-!426 lt!1714904 key!3287) lt!1715341)))

(declare-fun b!4540717 () Bool)

(assert (=> b!4540717 (= e!2829574 (= ((_ map and) (content!8440 (keys!17662 lt!1714904)) ((_ map not) (store ((as const (Array K!12140 Bool)) false) key!3287 true))) (content!8440 (keys!17662 lt!1715341))))))

(assert (= (and d!1403762 res!1892383) b!4540717))

(declare-fun m!5307849 () Bool)

(assert (=> d!1403762 m!5307849))

(declare-fun m!5307851 () Bool)

(assert (=> d!1403762 m!5307851))

(declare-fun m!5307853 () Bool)

(assert (=> b!4540717 m!5307853))

(declare-fun m!5307855 () Bool)

(assert (=> b!4540717 m!5307855))

(assert (=> b!4540717 m!5307801))

(declare-fun m!5307857 () Bool)

(assert (=> b!4540717 m!5307857))

(assert (=> b!4540717 m!5307399))

(assert (=> b!4540717 m!5307801))

(assert (=> b!4540717 m!5307853))

(assert (=> b!4540326 d!1403762))

(declare-fun bs!878487 () Bool)

(declare-fun d!1403764 () Bool)

(assert (= bs!878487 (and d!1403764 start!450680)))

(declare-fun lambda!176255 () Int)

(assert (=> bs!878487 (= lambda!176255 lambda!176131)))

(declare-fun bs!878488 () Bool)

(assert (= bs!878488 (and d!1403764 d!1403716)))

(assert (=> bs!878488 (= lambda!176255 lambda!176247)))

(declare-fun bs!878489 () Bool)

(assert (= bs!878489 (and d!1403764 d!1403744)))

(assert (=> bs!878489 (= lambda!176255 lambda!176253)))

(declare-fun bs!878490 () Bool)

(assert (= bs!878490 (and d!1403764 d!1403652)))

(assert (=> bs!878490 (= lambda!176255 lambda!176226)))

(declare-fun bs!878491 () Bool)

(assert (= bs!878491 (and d!1403764 b!4540305)))

(assert (=> bs!878491 (not (= lambda!176255 lambda!176132))))

(declare-fun bs!878492 () Bool)

(assert (= bs!878492 (and d!1403764 d!1403736)))

(assert (=> bs!878492 (= lambda!176255 lambda!176248)))

(declare-fun bs!878493 () Bool)

(assert (= bs!878493 (and d!1403764 d!1403706)))

(assert (=> bs!878493 (= lambda!176255 lambda!176243)))

(declare-fun bs!878494 () Bool)

(assert (= bs!878494 (and d!1403764 d!1403748)))

(assert (=> bs!878494 (= lambda!176255 lambda!176254)))

(declare-fun lt!1715342 () ListMap!3669)

(assert (=> d!1403764 (invariantList!1045 (toList!4407 lt!1715342))))

(declare-fun e!2829575 () ListMap!3669)

(assert (=> d!1403764 (= lt!1715342 e!2829575)))

(declare-fun c!775610 () Bool)

(assert (=> d!1403764 (= c!775610 ((_ is Cons!50755) (toList!4408 lt!1714877)))))

(assert (=> d!1403764 (forall!10347 (toList!4408 lt!1714877) lambda!176255)))

(assert (=> d!1403764 (= (extractMap!1256 (toList!4408 lt!1714877)) lt!1715342)))

(declare-fun b!4540718 () Bool)

(assert (=> b!4540718 (= e!2829575 (addToMapMapFromBucket!727 (_2!28912 (h!56636 (toList!4408 lt!1714877))) (extractMap!1256 (t!357841 (toList!4408 lt!1714877)))))))

(declare-fun b!4540719 () Bool)

(assert (=> b!4540719 (= e!2829575 (ListMap!3670 Nil!50754))))

(assert (= (and d!1403764 c!775610) b!4540718))

(assert (= (and d!1403764 (not c!775610)) b!4540719))

(declare-fun m!5307859 () Bool)

(assert (=> d!1403764 m!5307859))

(declare-fun m!5307861 () Bool)

(assert (=> d!1403764 m!5307861))

(declare-fun m!5307863 () Bool)

(assert (=> b!4540718 m!5307863))

(assert (=> b!4540718 m!5307863))

(declare-fun m!5307865 () Bool)

(assert (=> b!4540718 m!5307865))

(assert (=> b!4540327 d!1403764))

(declare-fun d!1403766 () Bool)

(assert (=> d!1403766 (= (eq!657 lt!1714902 lt!1714904) (= (content!8439 (toList!4407 lt!1714902)) (content!8439 (toList!4407 lt!1714904))))))

(declare-fun bs!878495 () Bool)

(assert (= bs!878495 d!1403766))

(assert (=> bs!878495 m!5307525))

(assert (=> bs!878495 m!5307523))

(assert (=> b!4540327 d!1403766))

(declare-fun d!1403768 () Bool)

(declare-fun e!2829576 () Bool)

(assert (=> d!1403768 e!2829576))

(declare-fun res!1892384 () Bool)

(assert (=> d!1403768 (=> (not res!1892384) (not e!2829576))))

(declare-fun lt!1715346 () ListLongMap!3039)

(assert (=> d!1403768 (= res!1892384 (contains!13549 lt!1715346 (_1!28912 lt!1714880)))))

(declare-fun lt!1715343 () List!50879)

(assert (=> d!1403768 (= lt!1715346 (ListLongMap!3040 lt!1715343))))

(declare-fun lt!1715345 () Unit!98616)

(declare-fun lt!1715344 () Unit!98616)

(assert (=> d!1403768 (= lt!1715345 lt!1715344)))

(assert (=> d!1403768 (= (getValueByKey!1148 lt!1715343 (_1!28912 lt!1714880)) (Some!11205 (_2!28912 lt!1714880)))))

(assert (=> d!1403768 (= lt!1715344 (lemmaContainsTupThenGetReturnValue!721 lt!1715343 (_1!28912 lt!1714880) (_2!28912 lt!1714880)))))

(assert (=> d!1403768 (= lt!1715343 (insertStrictlySorted!435 (toList!4408 lt!1714874) (_1!28912 lt!1714880) (_2!28912 lt!1714880)))))

(assert (=> d!1403768 (= (+!1606 lt!1714874 lt!1714880) lt!1715346)))

(declare-fun b!4540720 () Bool)

(declare-fun res!1892385 () Bool)

(assert (=> b!4540720 (=> (not res!1892385) (not e!2829576))))

(assert (=> b!4540720 (= res!1892385 (= (getValueByKey!1148 (toList!4408 lt!1715346) (_1!28912 lt!1714880)) (Some!11205 (_2!28912 lt!1714880))))))

(declare-fun b!4540721 () Bool)

(assert (=> b!4540721 (= e!2829576 (contains!13548 (toList!4408 lt!1715346) lt!1714880))))

(assert (= (and d!1403768 res!1892384) b!4540720))

(assert (= (and b!4540720 res!1892385) b!4540721))

(declare-fun m!5307867 () Bool)

(assert (=> d!1403768 m!5307867))

(declare-fun m!5307869 () Bool)

(assert (=> d!1403768 m!5307869))

(declare-fun m!5307871 () Bool)

(assert (=> d!1403768 m!5307871))

(declare-fun m!5307873 () Bool)

(assert (=> d!1403768 m!5307873))

(declare-fun m!5307875 () Bool)

(assert (=> b!4540720 m!5307875))

(declare-fun m!5307877 () Bool)

(assert (=> b!4540721 m!5307877))

(assert (=> b!4540327 d!1403768))

(declare-fun d!1403770 () Bool)

(declare-fun e!2829577 () Bool)

(assert (=> d!1403770 e!2829577))

(declare-fun res!1892386 () Bool)

(assert (=> d!1403770 (=> (not res!1892386) (not e!2829577))))

(declare-fun lt!1715350 () ListLongMap!3039)

(assert (=> d!1403770 (= res!1892386 (contains!13549 lt!1715350 (_1!28912 lt!1714908)))))

(declare-fun lt!1715347 () List!50879)

(assert (=> d!1403770 (= lt!1715350 (ListLongMap!3040 lt!1715347))))

(declare-fun lt!1715349 () Unit!98616)

(declare-fun lt!1715348 () Unit!98616)

(assert (=> d!1403770 (= lt!1715349 lt!1715348)))

(assert (=> d!1403770 (= (getValueByKey!1148 lt!1715347 (_1!28912 lt!1714908)) (Some!11205 (_2!28912 lt!1714908)))))

(assert (=> d!1403770 (= lt!1715348 (lemmaContainsTupThenGetReturnValue!721 lt!1715347 (_1!28912 lt!1714908) (_2!28912 lt!1714908)))))

(assert (=> d!1403770 (= lt!1715347 (insertStrictlySorted!435 (toList!4408 lt!1714874) (_1!28912 lt!1714908) (_2!28912 lt!1714908)))))

(assert (=> d!1403770 (= (+!1606 lt!1714874 lt!1714908) lt!1715350)))

(declare-fun b!4540722 () Bool)

(declare-fun res!1892387 () Bool)

(assert (=> b!4540722 (=> (not res!1892387) (not e!2829577))))

(assert (=> b!4540722 (= res!1892387 (= (getValueByKey!1148 (toList!4408 lt!1715350) (_1!28912 lt!1714908)) (Some!11205 (_2!28912 lt!1714908))))))

(declare-fun b!4540723 () Bool)

(assert (=> b!4540723 (= e!2829577 (contains!13548 (toList!4408 lt!1715350) lt!1714908))))

(assert (= (and d!1403770 res!1892386) b!4540722))

(assert (= (and b!4540722 res!1892387) b!4540723))

(declare-fun m!5307879 () Bool)

(assert (=> d!1403770 m!5307879))

(declare-fun m!5307881 () Bool)

(assert (=> d!1403770 m!5307881))

(declare-fun m!5307883 () Bool)

(assert (=> d!1403770 m!5307883))

(declare-fun m!5307885 () Bool)

(assert (=> d!1403770 m!5307885))

(declare-fun m!5307887 () Bool)

(assert (=> b!4540722 m!5307887))

(declare-fun m!5307889 () Bool)

(assert (=> b!4540723 m!5307889))

(assert (=> b!4540327 d!1403770))

(declare-fun d!1403772 () Bool)

(assert (=> d!1403772 (= (head!9480 lm!1477) (head!9481 (toList!4408 lm!1477)))))

(declare-fun bs!878496 () Bool)

(assert (= bs!878496 d!1403772))

(declare-fun m!5307891 () Bool)

(assert (=> bs!878496 m!5307891))

(assert (=> b!4540327 d!1403772))

(declare-fun d!1403774 () Bool)

(declare-fun e!2829578 () Bool)

(assert (=> d!1403774 e!2829578))

(declare-fun res!1892388 () Bool)

(assert (=> d!1403774 (=> (not res!1892388) (not e!2829578))))

(declare-fun lt!1715351 () ListMap!3669)

(assert (=> d!1403774 (= res!1892388 (not (contains!13547 lt!1715351 key!3287)))))

(assert (=> d!1403774 (= lt!1715351 (ListMap!3670 (removePresrvNoDuplicatedKeys!168 (toList!4407 lt!1714884) key!3287)))))

(assert (=> d!1403774 (= (-!426 lt!1714884 key!3287) lt!1715351)))

(declare-fun b!4540724 () Bool)

(assert (=> b!4540724 (= e!2829578 (= ((_ map and) (content!8440 (keys!17662 lt!1714884)) ((_ map not) (store ((as const (Array K!12140 Bool)) false) key!3287 true))) (content!8440 (keys!17662 lt!1715351))))))

(assert (= (and d!1403774 res!1892388) b!4540724))

(declare-fun m!5307893 () Bool)

(assert (=> d!1403774 m!5307893))

(declare-fun m!5307895 () Bool)

(assert (=> d!1403774 m!5307895))

(declare-fun m!5307897 () Bool)

(assert (=> b!4540724 m!5307897))

(declare-fun m!5307899 () Bool)

(assert (=> b!4540724 m!5307899))

(assert (=> b!4540724 m!5307659))

(declare-fun m!5307901 () Bool)

(assert (=> b!4540724 m!5307901))

(assert (=> b!4540724 m!5307399))

(assert (=> b!4540724 m!5307659))

(assert (=> b!4540724 m!5307897))

(assert (=> b!4540327 d!1403774))

(declare-fun bs!878497 () Bool)

(declare-fun d!1403776 () Bool)

(assert (= bs!878497 (and d!1403776 d!1403764)))

(declare-fun lambda!176256 () Int)

(assert (=> bs!878497 (= lambda!176256 lambda!176255)))

(declare-fun bs!878498 () Bool)

(assert (= bs!878498 (and d!1403776 start!450680)))

(assert (=> bs!878498 (= lambda!176256 lambda!176131)))

(declare-fun bs!878499 () Bool)

(assert (= bs!878499 (and d!1403776 d!1403716)))

(assert (=> bs!878499 (= lambda!176256 lambda!176247)))

(declare-fun bs!878500 () Bool)

(assert (= bs!878500 (and d!1403776 d!1403744)))

(assert (=> bs!878500 (= lambda!176256 lambda!176253)))

(declare-fun bs!878501 () Bool)

(assert (= bs!878501 (and d!1403776 d!1403652)))

(assert (=> bs!878501 (= lambda!176256 lambda!176226)))

(declare-fun bs!878502 () Bool)

(assert (= bs!878502 (and d!1403776 b!4540305)))

(assert (=> bs!878502 (not (= lambda!176256 lambda!176132))))

(declare-fun bs!878503 () Bool)

(assert (= bs!878503 (and d!1403776 d!1403736)))

(assert (=> bs!878503 (= lambda!176256 lambda!176248)))

(declare-fun bs!878504 () Bool)

(assert (= bs!878504 (and d!1403776 d!1403706)))

(assert (=> bs!878504 (= lambda!176256 lambda!176243)))

(declare-fun bs!878505 () Bool)

(assert (= bs!878505 (and d!1403776 d!1403748)))

(assert (=> bs!878505 (= lambda!176256 lambda!176254)))

(declare-fun lt!1715352 () ListMap!3669)

(assert (=> d!1403776 (invariantList!1045 (toList!4407 lt!1715352))))

(declare-fun e!2829579 () ListMap!3669)

(assert (=> d!1403776 (= lt!1715352 e!2829579)))

(declare-fun c!775611 () Bool)

(assert (=> d!1403776 (= c!775611 ((_ is Cons!50755) (toList!4408 (+!1606 lt!1714874 lt!1714880))))))

(assert (=> d!1403776 (forall!10347 (toList!4408 (+!1606 lt!1714874 lt!1714880)) lambda!176256)))

(assert (=> d!1403776 (= (extractMap!1256 (toList!4408 (+!1606 lt!1714874 lt!1714880))) lt!1715352)))

(declare-fun b!4540725 () Bool)

(assert (=> b!4540725 (= e!2829579 (addToMapMapFromBucket!727 (_2!28912 (h!56636 (toList!4408 (+!1606 lt!1714874 lt!1714880)))) (extractMap!1256 (t!357841 (toList!4408 (+!1606 lt!1714874 lt!1714880))))))))

(declare-fun b!4540726 () Bool)

(assert (=> b!4540726 (= e!2829579 (ListMap!3670 Nil!50754))))

(assert (= (and d!1403776 c!775611) b!4540725))

(assert (= (and d!1403776 (not c!775611)) b!4540726))

(declare-fun m!5307903 () Bool)

(assert (=> d!1403776 m!5307903))

(declare-fun m!5307905 () Bool)

(assert (=> d!1403776 m!5307905))

(declare-fun m!5307907 () Bool)

(assert (=> b!4540725 m!5307907))

(assert (=> b!4540725 m!5307907))

(declare-fun m!5307909 () Bool)

(assert (=> b!4540725 m!5307909))

(assert (=> b!4540327 d!1403776))

(declare-fun bs!878506 () Bool)

(declare-fun d!1403778 () Bool)

(assert (= bs!878506 (and d!1403778 d!1403776)))

(declare-fun lambda!176259 () Int)

(assert (=> bs!878506 (= lambda!176259 lambda!176256)))

(declare-fun bs!878507 () Bool)

(assert (= bs!878507 (and d!1403778 d!1403764)))

(assert (=> bs!878507 (= lambda!176259 lambda!176255)))

(declare-fun bs!878508 () Bool)

(assert (= bs!878508 (and d!1403778 start!450680)))

(assert (=> bs!878508 (= lambda!176259 lambda!176131)))

(declare-fun bs!878509 () Bool)

(assert (= bs!878509 (and d!1403778 d!1403716)))

(assert (=> bs!878509 (= lambda!176259 lambda!176247)))

(declare-fun bs!878510 () Bool)

(assert (= bs!878510 (and d!1403778 d!1403744)))

(assert (=> bs!878510 (= lambda!176259 lambda!176253)))

(declare-fun bs!878511 () Bool)

(assert (= bs!878511 (and d!1403778 d!1403652)))

(assert (=> bs!878511 (= lambda!176259 lambda!176226)))

(declare-fun bs!878512 () Bool)

(assert (= bs!878512 (and d!1403778 b!4540305)))

(assert (=> bs!878512 (not (= lambda!176259 lambda!176132))))

(declare-fun bs!878513 () Bool)

(assert (= bs!878513 (and d!1403778 d!1403736)))

(assert (=> bs!878513 (= lambda!176259 lambda!176248)))

(declare-fun bs!878514 () Bool)

(assert (= bs!878514 (and d!1403778 d!1403706)))

(assert (=> bs!878514 (= lambda!176259 lambda!176243)))

(declare-fun bs!878515 () Bool)

(assert (= bs!878515 (and d!1403778 d!1403748)))

(assert (=> bs!878515 (= lambda!176259 lambda!176254)))

(assert (=> d!1403778 (eq!657 (extractMap!1256 (toList!4408 (+!1606 lt!1714874 (tuple2!51237 hash!344 newBucket!178)))) (-!426 (extractMap!1256 (toList!4408 lt!1714874)) key!3287))))

(declare-fun lt!1715355 () Unit!98616)

(declare-fun choose!29913 (ListLongMap!3039 (_ BitVec 64) List!50878 K!12140 Hashable!5595) Unit!98616)

(assert (=> d!1403778 (= lt!1715355 (choose!29913 lt!1714874 hash!344 newBucket!178 key!3287 hashF!1107))))

(assert (=> d!1403778 (forall!10347 (toList!4408 lt!1714874) lambda!176259)))

(assert (=> d!1403778 (= (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMap!185 lt!1714874 hash!344 newBucket!178 key!3287 hashF!1107) lt!1715355)))

(declare-fun bs!878516 () Bool)

(assert (= bs!878516 d!1403778))

(declare-fun m!5307911 () Bool)

(assert (=> bs!878516 m!5307911))

(declare-fun m!5307913 () Bool)

(assert (=> bs!878516 m!5307913))

(declare-fun m!5307915 () Bool)

(assert (=> bs!878516 m!5307915))

(declare-fun m!5307917 () Bool)

(assert (=> bs!878516 m!5307917))

(assert (=> bs!878516 m!5306983))

(assert (=> bs!878516 m!5307915))

(declare-fun m!5307919 () Bool)

(assert (=> bs!878516 m!5307919))

(declare-fun m!5307921 () Bool)

(assert (=> bs!878516 m!5307921))

(assert (=> bs!878516 m!5306983))

(assert (=> bs!878516 m!5307919))

(assert (=> b!4540327 d!1403778))

(declare-fun d!1403780 () Bool)

(assert (=> d!1403780 (= (eq!657 lt!1714899 lt!1714886) (= (content!8439 (toList!4407 lt!1714899)) (content!8439 (toList!4407 lt!1714886))))))

(declare-fun bs!878517 () Bool)

(assert (= bs!878517 d!1403780))

(declare-fun m!5307923 () Bool)

(assert (=> bs!878517 m!5307923))

(declare-fun m!5307925 () Bool)

(assert (=> bs!878517 m!5307925))

(assert (=> b!4540327 d!1403780))

(declare-fun d!1403782 () Bool)

(declare-fun lt!1715358 () Bool)

(declare-fun content!8443 (List!50879) (InoxSet tuple2!51236))

(assert (=> d!1403782 (= lt!1715358 (select (content!8443 (t!357841 (toList!4408 lm!1477))) lt!1714879))))

(declare-fun e!2829585 () Bool)

(assert (=> d!1403782 (= lt!1715358 e!2829585)))

(declare-fun res!1892393 () Bool)

(assert (=> d!1403782 (=> (not res!1892393) (not e!2829585))))

(assert (=> d!1403782 (= res!1892393 ((_ is Cons!50755) (t!357841 (toList!4408 lm!1477))))))

(assert (=> d!1403782 (= (contains!13548 (t!357841 (toList!4408 lm!1477)) lt!1714879) lt!1715358)))

(declare-fun b!4540731 () Bool)

(declare-fun e!2829584 () Bool)

(assert (=> b!4540731 (= e!2829585 e!2829584)))

(declare-fun res!1892394 () Bool)

(assert (=> b!4540731 (=> res!1892394 e!2829584)))

(assert (=> b!4540731 (= res!1892394 (= (h!56636 (t!357841 (toList!4408 lm!1477))) lt!1714879))))

(declare-fun b!4540732 () Bool)

(assert (=> b!4540732 (= e!2829584 (contains!13548 (t!357841 (t!357841 (toList!4408 lm!1477))) lt!1714879))))

(assert (= (and d!1403782 res!1892393) b!4540731))

(assert (= (and b!4540731 (not res!1892394)) b!4540732))

(declare-fun m!5307927 () Bool)

(assert (=> d!1403782 m!5307927))

(declare-fun m!5307929 () Bool)

(assert (=> d!1403782 m!5307929))

(declare-fun m!5307931 () Bool)

(assert (=> b!4540732 m!5307931))

(assert (=> b!4540309 d!1403782))

(declare-fun bs!878518 () Bool)

(declare-fun d!1403784 () Bool)

(assert (= bs!878518 (and d!1403784 b!4540528)))

(declare-fun lambda!176262 () Int)

(assert (=> bs!878518 (not (= lambda!176262 lambda!176212))))

(declare-fun bs!878519 () Bool)

(assert (= bs!878519 (and d!1403784 d!1403638)))

(assert (=> bs!878519 (not (= lambda!176262 lambda!176223))))

(declare-fun bs!878520 () Bool)

(assert (= bs!878520 (and d!1403784 b!4540305)))

(assert (=> bs!878520 (= (= hash!344 (_1!28912 (h!56636 (toList!4408 lm!1477)))) (= lambda!176262 lambda!176133))))

(declare-fun bs!878521 () Bool)

(assert (= bs!878521 (and d!1403784 d!1403742)))

(assert (=> bs!878521 (not (= lambda!176262 lambda!176252))))

(declare-fun bs!878522 () Bool)

(assert (= bs!878522 (and d!1403784 b!4540542)))

(assert (=> bs!878522 (not (= lambda!176262 lambda!176220))))

(assert (=> bs!878518 (not (= lambda!176262 lambda!176213))))

(declare-fun bs!878523 () Bool)

(assert (= bs!878523 (and d!1403784 b!4540666)))

(assert (=> bs!878523 (not (= lambda!176262 lambda!176249))))

(declare-fun bs!878524 () Bool)

(assert (= bs!878524 (and d!1403784 d!1403584)))

(assert (=> bs!878524 (not (= lambda!176262 lambda!176214))))

(declare-fun bs!878525 () Bool)

(assert (= bs!878525 (and d!1403784 b!4540669)))

(assert (=> bs!878525 (not (= lambda!176262 lambda!176251))))

(assert (=> bs!878525 (not (= lambda!176262 lambda!176250))))

(declare-fun bs!878526 () Bool)

(assert (= bs!878526 (and d!1403784 b!4540545)))

(assert (=> bs!878526 (not (= lambda!176262 lambda!176221))))

(declare-fun bs!878527 () Bool)

(assert (= bs!878527 (and d!1403784 b!4540525)))

(assert (=> bs!878527 (not (= lambda!176262 lambda!176211))))

(assert (=> bs!878526 (not (= lambda!176262 lambda!176222))))

(assert (=> d!1403784 true))

(assert (=> d!1403784 true))

(assert (=> d!1403784 (= (allKeysSameHash!1054 newBucket!178 hash!344 hashF!1107) (forall!10349 newBucket!178 lambda!176262))))

(declare-fun bs!878528 () Bool)

(assert (= bs!878528 d!1403784))

(declare-fun m!5307933 () Bool)

(assert (=> bs!878528 m!5307933))

(assert (=> b!4540330 d!1403784))

(declare-fun bs!878529 () Bool)

(declare-fun d!1403786 () Bool)

(assert (= bs!878529 (and d!1403786 d!1403776)))

(declare-fun lambda!176265 () Int)

(assert (=> bs!878529 (= lambda!176265 lambda!176256)))

(declare-fun bs!878530 () Bool)

(assert (= bs!878530 (and d!1403786 d!1403764)))

(assert (=> bs!878530 (= lambda!176265 lambda!176255)))

(declare-fun bs!878531 () Bool)

(assert (= bs!878531 (and d!1403786 d!1403778)))

(assert (=> bs!878531 (= lambda!176265 lambda!176259)))

(declare-fun bs!878532 () Bool)

(assert (= bs!878532 (and d!1403786 start!450680)))

(assert (=> bs!878532 (= lambda!176265 lambda!176131)))

(declare-fun bs!878533 () Bool)

(assert (= bs!878533 (and d!1403786 d!1403716)))

(assert (=> bs!878533 (= lambda!176265 lambda!176247)))

(declare-fun bs!878534 () Bool)

(assert (= bs!878534 (and d!1403786 d!1403744)))

(assert (=> bs!878534 (= lambda!176265 lambda!176253)))

(declare-fun bs!878535 () Bool)

(assert (= bs!878535 (and d!1403786 d!1403652)))

(assert (=> bs!878535 (= lambda!176265 lambda!176226)))

(declare-fun bs!878536 () Bool)

(assert (= bs!878536 (and d!1403786 b!4540305)))

(assert (=> bs!878536 (not (= lambda!176265 lambda!176132))))

(declare-fun bs!878537 () Bool)

(assert (= bs!878537 (and d!1403786 d!1403736)))

(assert (=> bs!878537 (= lambda!176265 lambda!176248)))

(declare-fun bs!878538 () Bool)

(assert (= bs!878538 (and d!1403786 d!1403706)))

(assert (=> bs!878538 (= lambda!176265 lambda!176243)))

(declare-fun bs!878539 () Bool)

(assert (= bs!878539 (and d!1403786 d!1403748)))

(assert (=> bs!878539 (= lambda!176265 lambda!176254)))

(assert (=> d!1403786 (contains!13549 lm!1477 (hash!2919 hashF!1107 key!3287))))

(declare-fun lt!1715361 () Unit!98616)

(declare-fun choose!29914 (ListLongMap!3039 K!12140 Hashable!5595) Unit!98616)

(assert (=> d!1403786 (= lt!1715361 (choose!29914 lm!1477 key!3287 hashF!1107))))

(assert (=> d!1403786 (forall!10347 (toList!4408 lm!1477) lambda!176265)))

(assert (=> d!1403786 (= (lemmaInGenMapThenLongMapContainsHash!274 lm!1477 key!3287 hashF!1107) lt!1715361)))

(declare-fun bs!878540 () Bool)

(assert (= bs!878540 d!1403786))

(assert (=> bs!878540 m!5306951))

(assert (=> bs!878540 m!5306951))

(declare-fun m!5307935 () Bool)

(assert (=> bs!878540 m!5307935))

(declare-fun m!5307937 () Bool)

(assert (=> bs!878540 m!5307937))

(declare-fun m!5307939 () Bool)

(assert (=> bs!878540 m!5307939))

(assert (=> b!4540329 d!1403786))

(declare-fun d!1403788 () Bool)

(assert (=> d!1403788 (dynLambda!21216 lambda!176131 lt!1714879)))

(declare-fun lt!1715362 () Unit!98616)

(assert (=> d!1403788 (= lt!1715362 (choose!29902 (toList!4408 lm!1477) lambda!176131 lt!1714879))))

(declare-fun e!2829586 () Bool)

(assert (=> d!1403788 e!2829586))

(declare-fun res!1892395 () Bool)

(assert (=> d!1403788 (=> (not res!1892395) (not e!2829586))))

(assert (=> d!1403788 (= res!1892395 (forall!10347 (toList!4408 lm!1477) lambda!176131))))

(assert (=> d!1403788 (= (forallContained!2610 (toList!4408 lm!1477) lambda!176131 lt!1714879) lt!1715362)))

(declare-fun b!4540735 () Bool)

(assert (=> b!4540735 (= e!2829586 (contains!13548 (toList!4408 lm!1477) lt!1714879))))

(assert (= (and d!1403788 res!1892395) b!4540735))

(declare-fun b_lambda!158097 () Bool)

(assert (=> (not b_lambda!158097) (not d!1403788)))

(declare-fun m!5307941 () Bool)

(assert (=> d!1403788 m!5307941))

(declare-fun m!5307943 () Bool)

(assert (=> d!1403788 m!5307943))

(assert (=> d!1403788 m!5307057))

(assert (=> b!4540735 m!5306947))

(assert (=> b!4540329 d!1403788))

(declare-fun b!4540744 () Bool)

(declare-fun e!2829592 () List!50878)

(assert (=> b!4540744 (= e!2829592 (t!357840 lt!1714889))))

(declare-fun b!4540747 () Bool)

(declare-fun e!2829591 () List!50878)

(assert (=> b!4540747 (= e!2829591 Nil!50754)))

(declare-fun b!4540745 () Bool)

(assert (=> b!4540745 (= e!2829592 e!2829591)))

(declare-fun c!775617 () Bool)

(assert (=> b!4540745 (= c!775617 ((_ is Cons!50754) lt!1714889))))

(declare-fun b!4540746 () Bool)

(assert (=> b!4540746 (= e!2829591 (Cons!50754 (h!56635 lt!1714889) (removePairForKey!827 (t!357840 lt!1714889) key!3287)))))

(declare-fun d!1403790 () Bool)

(declare-fun lt!1715365 () List!50878)

(assert (=> d!1403790 (not (containsKey!1876 lt!1715365 key!3287))))

(assert (=> d!1403790 (= lt!1715365 e!2829592)))

(declare-fun c!775616 () Bool)

(assert (=> d!1403790 (= c!775616 (and ((_ is Cons!50754) lt!1714889) (= (_1!28911 (h!56635 lt!1714889)) key!3287)))))

(assert (=> d!1403790 (noDuplicateKeys!1200 lt!1714889)))

(assert (=> d!1403790 (= (removePairForKey!827 lt!1714889 key!3287) lt!1715365)))

(assert (= (and d!1403790 c!775616) b!4540744))

(assert (= (and d!1403790 (not c!775616)) b!4540745))

(assert (= (and b!4540745 c!775617) b!4540746))

(assert (= (and b!4540745 (not c!775617)) b!4540747))

(declare-fun m!5307945 () Bool)

(assert (=> b!4540746 m!5307945))

(declare-fun m!5307947 () Bool)

(assert (=> d!1403790 m!5307947))

(declare-fun m!5307949 () Bool)

(assert (=> d!1403790 m!5307949))

(assert (=> b!4540329 d!1403790))

(declare-fun d!1403792 () Bool)

(assert (=> d!1403792 (contains!13548 (toList!4408 lm!1477) (tuple2!51237 hash!344 lt!1714889))))

(declare-fun lt!1715368 () Unit!98616)

(declare-fun choose!29915 (List!50879 (_ BitVec 64) List!50878) Unit!98616)

(assert (=> d!1403792 (= lt!1715368 (choose!29915 (toList!4408 lm!1477) hash!344 lt!1714889))))

(declare-fun e!2829595 () Bool)

(assert (=> d!1403792 e!2829595))

(declare-fun res!1892398 () Bool)

(assert (=> d!1403792 (=> (not res!1892398) (not e!2829595))))

(assert (=> d!1403792 (= res!1892398 (isStrictlySorted!459 (toList!4408 lm!1477)))))

(assert (=> d!1403792 (= (lemmaGetValueByKeyImpliesContainsTuple!712 (toList!4408 lm!1477) hash!344 lt!1714889) lt!1715368)))

(declare-fun b!4540750 () Bool)

(assert (=> b!4540750 (= e!2829595 (= (getValueByKey!1148 (toList!4408 lm!1477) hash!344) (Some!11205 lt!1714889)))))

(assert (= (and d!1403792 res!1892398) b!4540750))

(declare-fun m!5307951 () Bool)

(assert (=> d!1403792 m!5307951))

(declare-fun m!5307953 () Bool)

(assert (=> d!1403792 m!5307953))

(assert (=> d!1403792 m!5307579))

(declare-fun m!5307955 () Bool)

(assert (=> b!4540750 m!5307955))

(assert (=> b!4540329 d!1403792))

(declare-fun d!1403794 () Bool)

(declare-fun lt!1715369 () Bool)

(assert (=> d!1403794 (= lt!1715369 (select (content!8443 (toList!4408 lm!1477)) lt!1714879))))

(declare-fun e!2829597 () Bool)

(assert (=> d!1403794 (= lt!1715369 e!2829597)))

(declare-fun res!1892399 () Bool)

(assert (=> d!1403794 (=> (not res!1892399) (not e!2829597))))

(assert (=> d!1403794 (= res!1892399 ((_ is Cons!50755) (toList!4408 lm!1477)))))

(assert (=> d!1403794 (= (contains!13548 (toList!4408 lm!1477) lt!1714879) lt!1715369)))

(declare-fun b!4540751 () Bool)

(declare-fun e!2829596 () Bool)

(assert (=> b!4540751 (= e!2829597 e!2829596)))

(declare-fun res!1892400 () Bool)

(assert (=> b!4540751 (=> res!1892400 e!2829596)))

(assert (=> b!4540751 (= res!1892400 (= (h!56636 (toList!4408 lm!1477)) lt!1714879))))

(declare-fun b!4540752 () Bool)

(assert (=> b!4540752 (= e!2829596 (contains!13548 (t!357841 (toList!4408 lm!1477)) lt!1714879))))

(assert (= (and d!1403794 res!1892399) b!4540751))

(assert (= (and b!4540751 (not res!1892400)) b!4540752))

(declare-fun m!5307957 () Bool)

(assert (=> d!1403794 m!5307957))

(declare-fun m!5307959 () Bool)

(assert (=> d!1403794 m!5307959))

(assert (=> b!4540752 m!5306993))

(assert (=> b!4540329 d!1403794))

(declare-fun d!1403796 () Bool)

(declare-fun e!2829603 () Bool)

(assert (=> d!1403796 e!2829603))

(declare-fun res!1892403 () Bool)

(assert (=> d!1403796 (=> res!1892403 e!2829603)))

(declare-fun lt!1715381 () Bool)

(assert (=> d!1403796 (= res!1892403 (not lt!1715381))))

(declare-fun lt!1715379 () Bool)

(assert (=> d!1403796 (= lt!1715381 lt!1715379)))

(declare-fun lt!1715380 () Unit!98616)

(declare-fun e!2829602 () Unit!98616)

(assert (=> d!1403796 (= lt!1715380 e!2829602)))

(declare-fun c!775620 () Bool)

(assert (=> d!1403796 (= c!775620 lt!1715379)))

(declare-fun containsKey!1880 (List!50879 (_ BitVec 64)) Bool)

(assert (=> d!1403796 (= lt!1715379 (containsKey!1880 (toList!4408 lm!1477) lt!1714875))))

(assert (=> d!1403796 (= (contains!13549 lm!1477 lt!1714875) lt!1715381)))

(declare-fun b!4540759 () Bool)

(declare-fun lt!1715378 () Unit!98616)

(assert (=> b!4540759 (= e!2829602 lt!1715378)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1053 (List!50879 (_ BitVec 64)) Unit!98616)

(assert (=> b!4540759 (= lt!1715378 (lemmaContainsKeyImpliesGetValueByKeyDefined!1053 (toList!4408 lm!1477) lt!1714875))))

(declare-fun isDefined!8484 (Option!11206) Bool)

(assert (=> b!4540759 (isDefined!8484 (getValueByKey!1148 (toList!4408 lm!1477) lt!1714875))))

(declare-fun b!4540760 () Bool)

(declare-fun Unit!98702 () Unit!98616)

(assert (=> b!4540760 (= e!2829602 Unit!98702)))

(declare-fun b!4540761 () Bool)

(assert (=> b!4540761 (= e!2829603 (isDefined!8484 (getValueByKey!1148 (toList!4408 lm!1477) lt!1714875)))))

(assert (= (and d!1403796 c!775620) b!4540759))

(assert (= (and d!1403796 (not c!775620)) b!4540760))

(assert (= (and d!1403796 (not res!1892403)) b!4540761))

(declare-fun m!5307961 () Bool)

(assert (=> d!1403796 m!5307961))

(declare-fun m!5307963 () Bool)

(assert (=> b!4540759 m!5307963))

(declare-fun m!5307965 () Bool)

(assert (=> b!4540759 m!5307965))

(assert (=> b!4540759 m!5307965))

(declare-fun m!5307967 () Bool)

(assert (=> b!4540759 m!5307967))

(assert (=> b!4540761 m!5307965))

(assert (=> b!4540761 m!5307965))

(assert (=> b!4540761 m!5307967))

(assert (=> b!4540329 d!1403796))

(declare-fun d!1403798 () Bool)

(declare-fun get!16690 (Option!11206) List!50878)

(assert (=> d!1403798 (= (apply!11937 lm!1477 hash!344) (get!16690 (getValueByKey!1148 (toList!4408 lm!1477) hash!344)))))

(declare-fun bs!878541 () Bool)

(assert (= bs!878541 d!1403798))

(assert (=> bs!878541 m!5307955))

(assert (=> bs!878541 m!5307955))

(declare-fun m!5307969 () Bool)

(assert (=> bs!878541 m!5307969))

(assert (=> b!4540329 d!1403798))

(declare-fun d!1403800 () Bool)

(declare-fun res!1892404 () Bool)

(declare-fun e!2829604 () Bool)

(assert (=> d!1403800 (=> res!1892404 e!2829604)))

(assert (=> d!1403800 (= res!1892404 (and ((_ is Cons!50754) lt!1714889) (= (_1!28911 (h!56635 lt!1714889)) key!3287)))))

(assert (=> d!1403800 (= (containsKey!1876 lt!1714889 key!3287) e!2829604)))

(declare-fun b!4540762 () Bool)

(declare-fun e!2829605 () Bool)

(assert (=> b!4540762 (= e!2829604 e!2829605)))

(declare-fun res!1892405 () Bool)

(assert (=> b!4540762 (=> (not res!1892405) (not e!2829605))))

(assert (=> b!4540762 (= res!1892405 ((_ is Cons!50754) lt!1714889))))

(declare-fun b!4540763 () Bool)

(assert (=> b!4540763 (= e!2829605 (containsKey!1876 (t!357840 lt!1714889) key!3287))))

(assert (= (and d!1403800 (not res!1892404)) b!4540762))

(assert (= (and b!4540762 res!1892405) b!4540763))

(declare-fun m!5307971 () Bool)

(assert (=> b!4540763 m!5307971))

(assert (=> b!4540312 d!1403800))

(declare-fun bs!878542 () Bool)

(declare-fun d!1403802 () Bool)

(assert (= bs!878542 (and d!1403802 d!1403776)))

(declare-fun lambda!176268 () Int)

(assert (=> bs!878542 (not (= lambda!176268 lambda!176256))))

(declare-fun bs!878543 () Bool)

(assert (= bs!878543 (and d!1403802 d!1403778)))

(assert (=> bs!878543 (not (= lambda!176268 lambda!176259))))

(declare-fun bs!878544 () Bool)

(assert (= bs!878544 (and d!1403802 start!450680)))

(assert (=> bs!878544 (not (= lambda!176268 lambda!176131))))

(declare-fun bs!878545 () Bool)

(assert (= bs!878545 (and d!1403802 d!1403716)))

(assert (=> bs!878545 (not (= lambda!176268 lambda!176247))))

(declare-fun bs!878546 () Bool)

(assert (= bs!878546 (and d!1403802 d!1403744)))

(assert (=> bs!878546 (not (= lambda!176268 lambda!176253))))

(declare-fun bs!878547 () Bool)

(assert (= bs!878547 (and d!1403802 d!1403652)))

(assert (=> bs!878547 (not (= lambda!176268 lambda!176226))))

(declare-fun bs!878548 () Bool)

(assert (= bs!878548 (and d!1403802 d!1403764)))

(assert (=> bs!878548 (not (= lambda!176268 lambda!176255))))

(declare-fun bs!878549 () Bool)

(assert (= bs!878549 (and d!1403802 d!1403786)))

(assert (=> bs!878549 (not (= lambda!176268 lambda!176265))))

(declare-fun bs!878550 () Bool)

(assert (= bs!878550 (and d!1403802 b!4540305)))

(assert (=> bs!878550 (= lambda!176268 lambda!176132)))

(declare-fun bs!878551 () Bool)

(assert (= bs!878551 (and d!1403802 d!1403736)))

(assert (=> bs!878551 (not (= lambda!176268 lambda!176248))))

(declare-fun bs!878552 () Bool)

(assert (= bs!878552 (and d!1403802 d!1403706)))

(assert (=> bs!878552 (not (= lambda!176268 lambda!176243))))

(declare-fun bs!878553 () Bool)

(assert (= bs!878553 (and d!1403802 d!1403748)))

(assert (=> bs!878553 (not (= lambda!176268 lambda!176254))))

(assert (=> d!1403802 true))

(assert (=> d!1403802 (= (allKeysSameHashInMap!1307 lm!1477 hashF!1107) (forall!10347 (toList!4408 lm!1477) lambda!176268))))

(declare-fun bs!878554 () Bool)

(assert (= bs!878554 d!1403802))

(declare-fun m!5307973 () Bool)

(assert (=> bs!878554 m!5307973))

(assert (=> b!4540311 d!1403802))

(declare-fun bs!878555 () Bool)

(declare-fun d!1403804 () Bool)

(assert (= bs!878555 (and d!1403804 d!1403802)))

(declare-fun lambda!176271 () Int)

(assert (=> bs!878555 (not (= lambda!176271 lambda!176268))))

(declare-fun bs!878556 () Bool)

(assert (= bs!878556 (and d!1403804 d!1403776)))

(assert (=> bs!878556 (= lambda!176271 lambda!176256)))

(declare-fun bs!878557 () Bool)

(assert (= bs!878557 (and d!1403804 d!1403778)))

(assert (=> bs!878557 (= lambda!176271 lambda!176259)))

(declare-fun bs!878558 () Bool)

(assert (= bs!878558 (and d!1403804 start!450680)))

(assert (=> bs!878558 (= lambda!176271 lambda!176131)))

(declare-fun bs!878559 () Bool)

(assert (= bs!878559 (and d!1403804 d!1403716)))

(assert (=> bs!878559 (= lambda!176271 lambda!176247)))

(declare-fun bs!878560 () Bool)

(assert (= bs!878560 (and d!1403804 d!1403744)))

(assert (=> bs!878560 (= lambda!176271 lambda!176253)))

(declare-fun bs!878561 () Bool)

(assert (= bs!878561 (and d!1403804 d!1403652)))

(assert (=> bs!878561 (= lambda!176271 lambda!176226)))

(declare-fun bs!878562 () Bool)

(assert (= bs!878562 (and d!1403804 d!1403764)))

(assert (=> bs!878562 (= lambda!176271 lambda!176255)))

(declare-fun bs!878563 () Bool)

(assert (= bs!878563 (and d!1403804 d!1403786)))

(assert (=> bs!878563 (= lambda!176271 lambda!176265)))

(declare-fun bs!878564 () Bool)

(assert (= bs!878564 (and d!1403804 b!4540305)))

(assert (=> bs!878564 (not (= lambda!176271 lambda!176132))))

(declare-fun bs!878565 () Bool)

(assert (= bs!878565 (and d!1403804 d!1403736)))

(assert (=> bs!878565 (= lambda!176271 lambda!176248)))

(declare-fun bs!878566 () Bool)

(assert (= bs!878566 (and d!1403804 d!1403706)))

(assert (=> bs!878566 (= lambda!176271 lambda!176243)))

(declare-fun bs!878567 () Bool)

(assert (= bs!878567 (and d!1403804 d!1403748)))

(assert (=> bs!878567 (= lambda!176271 lambda!176254)))

(assert (=> d!1403804 (not (contains!13547 (extractMap!1256 (toList!4408 lm!1477)) key!3287))))

(declare-fun lt!1715384 () Unit!98616)

(declare-fun choose!29916 (ListLongMap!3039 K!12140 Hashable!5595) Unit!98616)

(assert (=> d!1403804 (= lt!1715384 (choose!29916 lm!1477 key!3287 hashF!1107))))

(assert (=> d!1403804 (forall!10347 (toList!4408 lm!1477) lambda!176271)))

(assert (=> d!1403804 (= (lemmaNotInItsHashBucketThenNotInMap!188 lm!1477 key!3287 hashF!1107) lt!1715384)))

(declare-fun bs!878568 () Bool)

(assert (= bs!878568 d!1403804))

(assert (=> bs!878568 m!5307005))

(assert (=> bs!878568 m!5307005))

(declare-fun m!5307975 () Bool)

(assert (=> bs!878568 m!5307975))

(declare-fun m!5307977 () Bool)

(assert (=> bs!878568 m!5307977))

(declare-fun m!5307979 () Bool)

(assert (=> bs!878568 m!5307979))

(assert (=> b!4540314 d!1403804))

(declare-fun d!1403806 () Bool)

(declare-fun e!2829607 () Bool)

(assert (=> d!1403806 e!2829607))

(declare-fun res!1892406 () Bool)

(assert (=> d!1403806 (=> res!1892406 e!2829607)))

(declare-fun lt!1715388 () Bool)

(assert (=> d!1403806 (= res!1892406 (not lt!1715388))))

(declare-fun lt!1715386 () Bool)

(assert (=> d!1403806 (= lt!1715388 lt!1715386)))

(declare-fun lt!1715387 () Unit!98616)

(declare-fun e!2829606 () Unit!98616)

(assert (=> d!1403806 (= lt!1715387 e!2829606)))

(declare-fun c!775621 () Bool)

(assert (=> d!1403806 (= c!775621 lt!1715386)))

(assert (=> d!1403806 (= lt!1715386 (containsKey!1880 (toList!4408 lt!1714874) hash!344))))

(assert (=> d!1403806 (= (contains!13549 lt!1714874 hash!344) lt!1715388)))

(declare-fun b!4540764 () Bool)

(declare-fun lt!1715385 () Unit!98616)

(assert (=> b!4540764 (= e!2829606 lt!1715385)))

(assert (=> b!4540764 (= lt!1715385 (lemmaContainsKeyImpliesGetValueByKeyDefined!1053 (toList!4408 lt!1714874) hash!344))))

(assert (=> b!4540764 (isDefined!8484 (getValueByKey!1148 (toList!4408 lt!1714874) hash!344))))

(declare-fun b!4540765 () Bool)

(declare-fun Unit!98703 () Unit!98616)

(assert (=> b!4540765 (= e!2829606 Unit!98703)))

(declare-fun b!4540766 () Bool)

(assert (=> b!4540766 (= e!2829607 (isDefined!8484 (getValueByKey!1148 (toList!4408 lt!1714874) hash!344)))))

(assert (= (and d!1403806 c!775621) b!4540764))

(assert (= (and d!1403806 (not c!775621)) b!4540765))

(assert (= (and d!1403806 (not res!1892406)) b!4540766))

(declare-fun m!5307981 () Bool)

(assert (=> d!1403806 m!5307981))

(declare-fun m!5307983 () Bool)

(assert (=> b!4540764 m!5307983))

(declare-fun m!5307985 () Bool)

(assert (=> b!4540764 m!5307985))

(assert (=> b!4540764 m!5307985))

(declare-fun m!5307987 () Bool)

(assert (=> b!4540764 m!5307987))

(assert (=> b!4540766 m!5307985))

(assert (=> b!4540766 m!5307985))

(assert (=> b!4540766 m!5307987))

(assert (=> b!4540315 d!1403806))

(declare-fun d!1403808 () Bool)

(declare-fun tail!7804 (List!50879) List!50879)

(assert (=> d!1403808 (= (tail!7802 lm!1477) (ListLongMap!3040 (tail!7804 (toList!4408 lm!1477))))))

(declare-fun bs!878569 () Bool)

(assert (= bs!878569 d!1403808))

(declare-fun m!5307989 () Bool)

(assert (=> bs!878569 m!5307989))

(assert (=> b!4540315 d!1403808))

(declare-fun d!1403810 () Bool)

(assert (=> d!1403810 (= (apply!11937 lt!1714874 hash!344) (get!16690 (getValueByKey!1148 (toList!4408 lt!1714874) hash!344)))))

(declare-fun bs!878570 () Bool)

(assert (= bs!878570 d!1403810))

(assert (=> bs!878570 m!5307985))

(assert (=> bs!878570 m!5307985))

(declare-fun m!5307991 () Bool)

(assert (=> bs!878570 m!5307991))

(assert (=> b!4540313 d!1403810))

(declare-fun e!2829610 () Bool)

(declare-fun b!4540771 () Bool)

(declare-fun tp!1338649 () Bool)

(assert (=> b!4540771 (= e!2829610 (and tp_is_empty!28077 tp_is_empty!28079 tp!1338649))))

(assert (=> b!4540310 (= tp!1338637 e!2829610)))

(assert (= (and b!4540310 ((_ is Cons!50754) (t!357840 newBucket!178))) b!4540771))

(declare-fun b!4540776 () Bool)

(declare-fun e!2829613 () Bool)

(declare-fun tp!1338654 () Bool)

(declare-fun tp!1338655 () Bool)

(assert (=> b!4540776 (= e!2829613 (and tp!1338654 tp!1338655))))

(assert (=> b!4540308 (= tp!1338636 e!2829613)))

(assert (= (and b!4540308 ((_ is Cons!50755) (toList!4408 lm!1477))) b!4540776))

(declare-fun b_lambda!158099 () Bool)

(assert (= b_lambda!158067 (or start!450680 b_lambda!158099)))

(declare-fun bs!878571 () Bool)

(declare-fun d!1403812 () Bool)

(assert (= bs!878571 (and d!1403812 start!450680)))

(assert (=> bs!878571 (= (dynLambda!21216 lambda!176131 (h!56636 (toList!4408 lm!1477))) (noDuplicateKeys!1200 (_2!28912 (h!56636 (toList!4408 lm!1477)))))))

(declare-fun m!5307993 () Bool)

(assert (=> bs!878571 m!5307993))

(assert (=> d!1403570 d!1403812))

(declare-fun b_lambda!158101 () Bool)

(assert (= b_lambda!158095 (or b!4540305 b_lambda!158101)))

(declare-fun bs!878572 () Bool)

(declare-fun d!1403814 () Bool)

(assert (= bs!878572 (and d!1403814 b!4540305)))

(assert (=> bs!878572 (= (dynLambda!21217 lambda!176133 (tuple2!51235 key!3287 (_2!28911 (get!16688 lt!1714896)))) (= (hash!2919 hashF!1107 (_1!28911 (tuple2!51235 key!3287 (_2!28911 (get!16688 lt!1714896))))) (_1!28912 (h!56636 (toList!4408 lm!1477)))))))

(declare-fun m!5307995 () Bool)

(assert (=> bs!878572 m!5307995))

(assert (=> d!1403756 d!1403814))

(declare-fun b_lambda!158103 () Bool)

(assert (= b_lambda!158079 (or start!450680 b_lambda!158103)))

(assert (=> b!4540595 d!1403812))

(declare-fun b_lambda!158105 () Bool)

(assert (= b_lambda!158093 (or b!4540305 b_lambda!158105)))

(declare-fun bs!878573 () Bool)

(declare-fun d!1403816 () Bool)

(assert (= bs!878573 (and d!1403816 b!4540305)))

(assert (=> bs!878573 (= (dynLambda!21216 lambda!176132 (h!56636 (toList!4408 lm!1477))) (allKeysSameHash!1054 (_2!28912 (h!56636 (toList!4408 lm!1477))) (_1!28912 (h!56636 (toList!4408 lm!1477))) hashF!1107))))

(declare-fun m!5307997 () Bool)

(assert (=> bs!878573 m!5307997))

(assert (=> d!1403754 d!1403816))

(declare-fun b_lambda!158107 () Bool)

(assert (= b_lambda!158077 (or start!450680 b_lambda!158107)))

(declare-fun bs!878574 () Bool)

(declare-fun d!1403818 () Bool)

(assert (= bs!878574 (and d!1403818 start!450680)))

(assert (=> bs!878574 (= (dynLambda!21216 lambda!176131 (h!56636 (toList!4408 lt!1714885))) (noDuplicateKeys!1200 (_2!28912 (h!56636 (toList!4408 lt!1714885)))))))

(declare-fun m!5307999 () Bool)

(assert (=> bs!878574 m!5307999))

(assert (=> b!4540588 d!1403818))

(declare-fun b_lambda!158109 () Bool)

(assert (= b_lambda!158097 (or start!450680 b_lambda!158109)))

(declare-fun bs!878575 () Bool)

(declare-fun d!1403820 () Bool)

(assert (= bs!878575 (and d!1403820 start!450680)))

(assert (=> bs!878575 (= (dynLambda!21216 lambda!176131 lt!1714879) (noDuplicateKeys!1200 (_2!28912 lt!1714879)))))

(declare-fun m!5308001 () Bool)

(assert (=> bs!878575 m!5308001))

(assert (=> d!1403788 d!1403820))

(check-sat (not b!4540543) (not b!4540623) (not b!4540382) (not d!1403778) (not b!4540561) (not d!1403796) (not d!1403682) (not b!4540675) (not d!1403790) (not d!1403638) (not b_lambda!158107) (not d!1403570) (not d!1403654) (not b_lambda!158103) (not b!4540776) (not b!4540635) (not bs!878573) (not bm!316667) (not b!4540619) (not d!1403782) (not d!1403716) (not d!1403788) (not d!1403756) (not b!4540663) (not bm!316671) (not b!4540577) (not b!4540620) (not b!4540732) (not b!4540642) (not d!1403740) (not b!4540723) (not bm!316654) (not bm!316672) (not b!4540722) (not b_lambda!158109) (not b!4540626) (not b!4540720) (not b!4540670) (not d!1403690) (not b!4540764) (not b!4540630) (not b!4540526) (not b!4540725) (not b!4540528) (not b!4540383) (not b!4540627) (not b!4540676) (not bm!316659) (not d!1403688) (not b!4540618) (not b!4540688) (not d!1403776) (not d!1403630) (not b!4540578) tp_is_empty!28079 (not b!4540628) (not b!4540665) (not b!4540681) (not d!1403786) (not b!4540709) (not b!4540759) (not b!4540621) (not b!4540705) (not d!1403766) (not b!4540661) (not bm!316655) (not b!4540713) (not b!4540632) (not bm!316669) (not d!1403684) (not b!4540540) (not b!4540746) (not b!4540680) (not d!1403772) (not d!1403744) (not bs!878575) (not b!4540721) (not b!4540564) (not b!4540411) (not d!1403762) (not b!4540677) (not d!1403704) (not b!4540524) (not d!1403804) (not d!1403584) (not d!1403764) (not b!4540541) (not d!1403748) (not b!4540589) (not b!4540735) (not b!4540667) (not d!1403802) (not bm!316668) (not d!1403768) (not d!1403760) (not d!1403806) (not bm!316660) (not d!1403642) (not d!1403576) (not b!4540766) (not b!4540674) (not bm!316670) (not bm!316661) (not d!1403622) (not d!1403798) (not b!4540673) (not b!4540750) (not b!4540622) (not b!4540544) (not d!1403754) (not b!4540718) (not d!1403794) (not b!4540716) tp_is_empty!28077 (not b_lambda!158099) (not b!4540596) (not b!4540563) (not d!1403628) (not d!1403810) (not b_lambda!158101) (not d!1403784) (not b!4540771) (not b!4540668) (not d!1403736) (not d!1403742) (not b_lambda!158105) (not b!4540763) (not d!1403746) (not b!4540672) (not d!1403770) (not b!4540631) (not bm!316653) (not d!1403808) (not d!1403706) (not b!4540545) (not b!4540712) (not b!4540717) (not bs!878574) (not d!1403666) (not b!4540724) (not b!4540574) (not b!4540669) (not b!4540527) (not b!4540573) (not d!1403652) (not d!1403792) (not b!4540629) (not d!1403774) (not b!4540664) (not b!4540707) (not b!4540566) (not b!4540710) (not b!4540761) (not bs!878571) (not d!1403664) (not b!4540752) (not d!1403780) (not d!1403582) (not d!1403752) (not d!1403662) (not bs!878572))
(check-sat)
