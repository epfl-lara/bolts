; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!455892 () Bool)

(assert start!455892)

(declare-fun bs!971497 () Bool)

(declare-fun b!4579173 () Bool)

(assert (= bs!971497 (and b!4579173 start!455892)))

(declare-fun lambda!182852 () Int)

(declare-fun lambda!182851 () Int)

(assert (=> bs!971497 (not (= lambda!182852 lambda!182851))))

(assert (=> b!4579173 true))

(assert (=> b!4579173 true))

(assert (=> b!4579173 true))

(declare-fun b!4579152 () Bool)

(declare-fun e!2855466 () Bool)

(declare-fun e!2855475 () Bool)

(assert (=> b!4579152 (= e!2855466 e!2855475)))

(declare-fun res!1912977 () Bool)

(assert (=> b!4579152 (=> (not res!1912977) (not e!2855475))))

(declare-datatypes ((K!12310 0))(
  ( (K!12311 (val!18119 Int)) )
))
(declare-datatypes ((V!12556 0))(
  ( (V!12557 (val!18120 Int)) )
))
(declare-datatypes ((tuple2!51506 0))(
  ( (tuple2!51507 (_1!29047 K!12310) (_2!29047 V!12556)) )
))
(declare-datatypes ((List!51064 0))(
  ( (Nil!50940) (Cons!50940 (h!56873 tuple2!51506) (t!358054 List!51064)) )
))
(declare-datatypes ((ListMap!3805 0))(
  ( (ListMap!3806 (toList!4543 List!51064)) )
))
(declare-fun lt!1744332 () ListMap!3805)

(declare-fun key!3287 () K!12310)

(declare-fun contains!13829 (ListMap!3805 K!12310) Bool)

(assert (=> b!4579152 (= res!1912977 (contains!13829 lt!1744332 key!3287))))

(declare-datatypes ((tuple2!51508 0))(
  ( (tuple2!51509 (_1!29048 (_ BitVec 64)) (_2!29048 List!51064)) )
))
(declare-datatypes ((List!51065 0))(
  ( (Nil!50941) (Cons!50941 (h!56874 tuple2!51508) (t!358055 List!51065)) )
))
(declare-datatypes ((ListLongMap!3175 0))(
  ( (ListLongMap!3176 (toList!4544 List!51065)) )
))
(declare-fun lm!1477 () ListLongMap!3175)

(declare-fun extractMap!1324 (List!51065) ListMap!3805)

(assert (=> b!4579152 (= lt!1744332 (extractMap!1324 (toList!4544 lm!1477)))))

(declare-fun b!4579153 () Bool)

(declare-fun res!1912979 () Bool)

(declare-fun e!2855460 () Bool)

(assert (=> b!4579153 (=> res!1912979 e!2855460)))

(declare-fun lt!1744330 () ListLongMap!3175)

(declare-fun hash!344 () (_ BitVec 64))

(declare-fun lt!1744334 () List!51064)

(declare-fun apply!12005 (ListLongMap!3175 (_ BitVec 64)) List!51064)

(assert (=> b!4579153 (= res!1912979 (not (= (apply!12005 lt!1744330 hash!344) lt!1744334)))))

(declare-fun b!4579154 () Bool)

(declare-fun tp_is_empty!28351 () Bool)

(declare-fun e!2855469 () Bool)

(declare-fun tp_is_empty!28349 () Bool)

(declare-fun tp!1339695 () Bool)

(assert (=> b!4579154 (= e!2855469 (and tp_is_empty!28349 tp_is_empty!28351 tp!1339695))))

(declare-fun b!4579155 () Bool)

(declare-fun e!2855465 () Bool)

(declare-fun e!2855474 () Bool)

(assert (=> b!4579155 (= e!2855465 e!2855474)))

(declare-fun res!1912966 () Bool)

(assert (=> b!4579155 (=> res!1912966 e!2855474)))

(declare-fun lt!1744352 () ListMap!3805)

(declare-fun lt!1744354 () ListMap!3805)

(declare-fun eq!707 (ListMap!3805 ListMap!3805) Bool)

(assert (=> b!4579155 (= res!1912966 (not (eq!707 lt!1744352 lt!1744354)))))

(declare-fun lt!1744328 () ListMap!3805)

(assert (=> b!4579155 (eq!707 lt!1744328 lt!1744354)))

(declare-fun lt!1744339 () tuple2!51508)

(declare-fun lt!1744329 () ListMap!3805)

(declare-fun addToMapMapFromBucket!781 (List!51064 ListMap!3805) ListMap!3805)

(assert (=> b!4579155 (= lt!1744354 (addToMapMapFromBucket!781 (_2!29048 lt!1744339) lt!1744329))))

(declare-datatypes ((Unit!105419 0))(
  ( (Unit!105420) )
))
(declare-fun lt!1744333 () Unit!105419)

(declare-fun lt!1744345 () ListMap!3805)

(declare-fun lemmaAddToMapFromBucketPreservesEquivalence!92 (ListMap!3805 ListMap!3805 List!51064) Unit!105419)

(assert (=> b!4579155 (= lt!1744333 (lemmaAddToMapFromBucketPreservesEquivalence!92 lt!1744345 lt!1744329 (_2!29048 lt!1744339)))))

(declare-fun b!4579156 () Bool)

(declare-fun res!1912973 () Bool)

(declare-fun e!2855467 () Bool)

(assert (=> b!4579156 (=> res!1912973 e!2855467)))

(get-info :version)

(assert (=> b!4579156 (= res!1912973 (or ((_ is Nil!50941) (toList!4544 lm!1477)) (= (_1!29048 (h!56874 (toList!4544 lm!1477))) hash!344)))))

(declare-fun b!4579157 () Bool)

(declare-fun res!1912974 () Bool)

(declare-fun e!2855473 () Bool)

(assert (=> b!4579157 (=> res!1912974 e!2855473)))

(declare-fun lt!1744327 () ListMap!3805)

(assert (=> b!4579157 (= res!1912974 (not (eq!707 lt!1744332 lt!1744327)))))

(declare-fun b!4579158 () Bool)

(declare-fun e!2855468 () Bool)

(assert (=> b!4579158 (= e!2855468 e!2855465)))

(declare-fun res!1912961 () Bool)

(assert (=> b!4579158 (=> res!1912961 e!2855465)))

(assert (=> b!4579158 (= res!1912961 (not (eq!707 lt!1744352 lt!1744328)))))

(assert (=> b!4579158 (= lt!1744328 (addToMapMapFromBucket!781 (_2!29048 lt!1744339) lt!1744345))))

(declare-fun lt!1744357 () ListLongMap!3175)

(assert (=> b!4579158 (= lt!1744352 (extractMap!1324 (toList!4544 lt!1744357)))))

(declare-fun b!4579159 () Bool)

(assert (=> b!4579159 (= e!2855467 e!2855460)))

(declare-fun res!1912968 () Bool)

(assert (=> b!4579159 (=> res!1912968 e!2855460)))

(declare-fun contains!13830 (ListLongMap!3175 (_ BitVec 64)) Bool)

(assert (=> b!4579159 (= res!1912968 (not (contains!13830 lt!1744330 hash!344)))))

(declare-fun tail!7911 (ListLongMap!3175) ListLongMap!3175)

(assert (=> b!4579159 (= lt!1744330 (tail!7911 lm!1477))))

(declare-fun b!4579160 () Bool)

(declare-fun res!1912969 () Bool)

(declare-fun e!2855461 () Bool)

(assert (=> b!4579160 (=> (not res!1912969) (not e!2855461))))

(declare-datatypes ((Hashable!5663 0))(
  ( (HashableExt!5662 (__x!31366 Int)) )
))
(declare-fun hashF!1107 () Hashable!5663)

(declare-fun newBucket!178 () List!51064)

(declare-fun allKeysSameHash!1122 (List!51064 (_ BitVec 64) Hashable!5663) Bool)

(assert (=> b!4579160 (= res!1912969 (allKeysSameHash!1122 newBucket!178 hash!344 hashF!1107))))

(declare-fun b!4579161 () Bool)

(declare-fun e!2855464 () Unit!105419)

(declare-fun Unit!105421 () Unit!105419)

(assert (=> b!4579161 (= e!2855464 Unit!105421)))

(declare-fun b!4579162 () Bool)

(declare-fun e!2855472 () Unit!105419)

(declare-fun Unit!105422 () Unit!105419)

(assert (=> b!4579162 (= e!2855472 Unit!105422)))

(declare-fun b!4579163 () Bool)

(declare-fun Unit!105423 () Unit!105419)

(assert (=> b!4579163 (= e!2855472 Unit!105423)))

(declare-fun lt!1744351 () Unit!105419)

(declare-fun lemmaNotInItsHashBucketThenNotInMap!250 (ListLongMap!3175 K!12310 Hashable!5663) Unit!105419)

(assert (=> b!4579163 (= lt!1744351 (lemmaNotInItsHashBucketThenNotInMap!250 lm!1477 key!3287 hashF!1107))))

(assert (=> b!4579163 false))

(declare-fun b!4579164 () Bool)

(declare-fun e!2855459 () Bool)

(declare-fun tp!1339694 () Bool)

(assert (=> b!4579164 (= e!2855459 tp!1339694)))

(declare-fun b!4579165 () Bool)

(declare-fun res!1912960 () Bool)

(assert (=> b!4579165 (=> (not res!1912960) (not e!2855466))))

(declare-fun allKeysSameHashInMap!1375 (ListLongMap!3175 Hashable!5663) Bool)

(assert (=> b!4579165 (= res!1912960 (allKeysSameHashInMap!1375 lm!1477 hashF!1107))))

(declare-fun b!4579166 () Bool)

(declare-fun res!1912978 () Bool)

(assert (=> b!4579166 (=> res!1912978 e!2855468)))

(declare-fun head!9532 (ListLongMap!3175) tuple2!51508)

(assert (=> b!4579166 (= res!1912978 (not (= (head!9532 lt!1744357) lt!1744339)))))

(declare-fun b!4579167 () Bool)

(declare-fun res!1912981 () Bool)

(assert (=> b!4579167 (=> res!1912981 e!2855467)))

(declare-fun noDuplicateKeys!1268 (List!51064) Bool)

(assert (=> b!4579167 (= res!1912981 (not (noDuplicateKeys!1268 newBucket!178)))))

(declare-fun b!4579168 () Bool)

(declare-fun res!1912972 () Bool)

(assert (=> b!4579168 (=> res!1912972 e!2855460)))

(declare-fun lt!1744349 () tuple2!51508)

(declare-fun contains!13831 (List!51065 tuple2!51508) Bool)

(assert (=> b!4579168 (= res!1912972 (not (contains!13831 (t!358055 (toList!4544 lm!1477)) lt!1744349)))))

(declare-fun b!4579169 () Bool)

(declare-fun e!2855463 () Bool)

(assert (=> b!4579169 (= e!2855474 e!2855463)))

(declare-fun res!1912976 () Bool)

(assert (=> b!4579169 (=> res!1912976 e!2855463)))

(assert (=> b!4579169 (= res!1912976 (not (noDuplicateKeys!1268 (_2!29048 lt!1744339))))))

(declare-fun lt!1744337 () Unit!105419)

(declare-fun forallContained!2756 (List!51065 Int tuple2!51508) Unit!105419)

(assert (=> b!4579169 (= lt!1744337 (forallContained!2756 (toList!4544 lm!1477) lambda!182851 (h!56874 (toList!4544 lm!1477))))))

(declare-fun b!4579170 () Bool)

(assert (=> b!4579170 (= e!2855473 e!2855468)))

(declare-fun res!1912971 () Bool)

(assert (=> b!4579170 (=> res!1912971 e!2855468)))

(declare-fun lt!1744343 () tuple2!51508)

(declare-fun +!1702 (ListLongMap!3175 tuple2!51508) ListLongMap!3175)

(assert (=> b!4579170 (= res!1912971 (not (= lt!1744357 (+!1702 lm!1477 lt!1744343))))))

(declare-fun lt!1744342 () ListLongMap!3175)

(assert (=> b!4579170 (= lt!1744357 (+!1702 lt!1744342 lt!1744339))))

(declare-fun b!4579171 () Bool)

(declare-fun lt!1744344 () Bool)

(assert (=> b!4579171 (= e!2855463 (not lt!1744344))))

(declare-fun lt!1744353 () Unit!105419)

(assert (=> b!4579171 (= lt!1744353 e!2855464)))

(declare-fun c!783738 () Bool)

(assert (=> b!4579171 (= c!783738 lt!1744344)))

(declare-fun containsKey!2046 (List!51064 K!12310) Bool)

(assert (=> b!4579171 (= lt!1744344 (containsKey!2046 (_2!29048 lt!1744339) key!3287))))

(declare-fun b!4579172 () Bool)

(assert (=> b!4579172 (= e!2855461 (not e!2855467))))

(declare-fun res!1912980 () Bool)

(assert (=> b!4579172 (=> res!1912980 e!2855467)))

(declare-fun removePairForKey!895 (List!51064 K!12310) List!51064)

(assert (=> b!4579172 (= res!1912980 (not (= newBucket!178 (removePairForKey!895 lt!1744334 key!3287))))))

(declare-fun lt!1744331 () Unit!105419)

(assert (=> b!4579172 (= lt!1744331 (forallContained!2756 (toList!4544 lm!1477) lambda!182851 lt!1744349))))

(assert (=> b!4579172 (contains!13831 (toList!4544 lm!1477) lt!1744349)))

(assert (=> b!4579172 (= lt!1744349 (tuple2!51509 hash!344 lt!1744334))))

(declare-fun lt!1744336 () Unit!105419)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!780 (List!51065 (_ BitVec 64) List!51064) Unit!105419)

(assert (=> b!4579172 (= lt!1744336 (lemmaGetValueByKeyImpliesContainsTuple!780 (toList!4544 lm!1477) hash!344 lt!1744334))))

(assert (=> b!4579172 (= lt!1744334 (apply!12005 lm!1477 hash!344))))

(declare-fun lt!1744341 () (_ BitVec 64))

(assert (=> b!4579172 (contains!13830 lm!1477 lt!1744341)))

(declare-fun lt!1744338 () Unit!105419)

(declare-fun lemmaInGenMapThenLongMapContainsHash!342 (ListLongMap!3175 K!12310 Hashable!5663) Unit!105419)

(assert (=> b!4579172 (= lt!1744338 (lemmaInGenMapThenLongMapContainsHash!342 lm!1477 key!3287 hashF!1107))))

(declare-fun res!1912970 () Bool)

(assert (=> start!455892 (=> (not res!1912970) (not e!2855466))))

(declare-fun forall!10494 (List!51065 Int) Bool)

(assert (=> start!455892 (= res!1912970 (forall!10494 (toList!4544 lm!1477) lambda!182851))))

(assert (=> start!455892 e!2855466))

(assert (=> start!455892 true))

(declare-fun inv!66494 (ListLongMap!3175) Bool)

(assert (=> start!455892 (and (inv!66494 lm!1477) e!2855459)))

(assert (=> start!455892 tp_is_empty!28349))

(assert (=> start!455892 e!2855469))

(declare-fun Unit!105424 () Unit!105419)

(assert (=> b!4579173 (= e!2855464 Unit!105424)))

(assert (=> b!4579173 (not (= hash!344 (_1!29048 lt!1744339)))))

(declare-datatypes ((Option!11317 0))(
  ( (None!11316) (Some!11316 (v!45188 tuple2!51506)) )
))
(declare-fun lt!1744356 () Option!11317)

(declare-fun getPair!228 (List!51064 K!12310) Option!11317)

(assert (=> b!4579173 (= lt!1744356 (getPair!228 (_2!29048 lt!1744339) key!3287))))

(declare-fun lt!1744348 () Unit!105419)

(assert (=> b!4579173 (= lt!1744348 (forallContained!2756 (toList!4544 lm!1477) lambda!182852 (h!56874 (toList!4544 lm!1477))))))

(declare-fun lt!1744358 () Unit!105419)

(declare-fun lambda!182853 () Int)

(declare-fun forallContained!2757 (List!51064 Int tuple2!51506) Unit!105419)

(declare-fun get!16806 (Option!11317) tuple2!51506)

(assert (=> b!4579173 (= lt!1744358 (forallContained!2757 (_2!29048 (h!56874 (toList!4544 lm!1477))) lambda!182853 (tuple2!51507 key!3287 (_2!29047 (get!16806 lt!1744356)))))))

(assert (=> b!4579173 false))

(declare-fun b!4579174 () Bool)

(declare-fun e!2855470 () Bool)

(assert (=> b!4579174 (= e!2855470 e!2855473)))

(declare-fun res!1912962 () Bool)

(assert (=> b!4579174 (=> res!1912962 e!2855473)))

(assert (=> b!4579174 (= res!1912962 (not (eq!707 lt!1744327 lt!1744332)))))

(assert (=> b!4579174 (= lt!1744327 (extractMap!1324 (toList!4544 (+!1702 lt!1744330 lt!1744339))))))

(assert (=> b!4579174 (= lt!1744339 (head!9532 lm!1477))))

(assert (=> b!4579174 (eq!707 lt!1744345 lt!1744329)))

(declare-fun lt!1744346 () ListMap!3805)

(declare-fun -!476 (ListMap!3805 K!12310) ListMap!3805)

(assert (=> b!4579174 (= lt!1744329 (-!476 lt!1744346 key!3287))))

(assert (=> b!4579174 (= lt!1744345 (extractMap!1324 (toList!4544 lt!1744342)))))

(assert (=> b!4579174 (= lt!1744342 (+!1702 lt!1744330 lt!1744343))))

(assert (=> b!4579174 (= lt!1744343 (tuple2!51509 hash!344 newBucket!178))))

(declare-fun lt!1744347 () Unit!105419)

(declare-fun lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMap!215 (ListLongMap!3175 (_ BitVec 64) List!51064 K!12310 Hashable!5663) Unit!105419)

(assert (=> b!4579174 (= lt!1744347 (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMap!215 lt!1744330 hash!344 newBucket!178 key!3287 hashF!1107))))

(declare-fun b!4579175 () Bool)

(declare-fun res!1912964 () Bool)

(assert (=> b!4579175 (=> res!1912964 e!2855473)))

(assert (=> b!4579175 (= res!1912964 (bvsge (_1!29048 lt!1744339) hash!344))))

(declare-fun b!4579176 () Bool)

(assert (=> b!4579176 (= e!2855475 e!2855461)))

(declare-fun res!1912965 () Bool)

(assert (=> b!4579176 (=> (not res!1912965) (not e!2855461))))

(assert (=> b!4579176 (= res!1912965 (= lt!1744341 hash!344))))

(declare-fun hash!3111 (Hashable!5663 K!12310) (_ BitVec 64))

(assert (=> b!4579176 (= lt!1744341 (hash!3111 hashF!1107 key!3287))))

(declare-fun b!4579177 () Bool)

(declare-fun e!2855471 () Bool)

(assert (=> b!4579177 (= e!2855460 e!2855471)))

(declare-fun res!1912963 () Bool)

(assert (=> b!4579177 (=> res!1912963 e!2855471)))

(declare-fun lt!1744355 () Bool)

(assert (=> b!4579177 (= res!1912963 lt!1744355)))

(declare-fun lt!1744340 () Unit!105419)

(assert (=> b!4579177 (= lt!1744340 e!2855472)))

(declare-fun c!783737 () Bool)

(assert (=> b!4579177 (= c!783737 lt!1744355)))

(assert (=> b!4579177 (= lt!1744355 (not (containsKey!2046 lt!1744334 key!3287)))))

(declare-fun b!4579178 () Bool)

(declare-fun e!2855462 () Bool)

(assert (=> b!4579178 (= e!2855471 e!2855462)))

(declare-fun res!1912967 () Bool)

(assert (=> b!4579178 (=> res!1912967 e!2855462)))

(declare-fun containsKeyBiggerList!238 (List!51065 K!12310) Bool)

(assert (=> b!4579178 (= res!1912967 (not (containsKeyBiggerList!238 (t!358055 (toList!4544 lm!1477)) key!3287)))))

(assert (=> b!4579178 (containsKeyBiggerList!238 (toList!4544 lt!1744330) key!3287)))

(declare-fun lt!1744335 () Unit!105419)

(declare-fun lemmaInLongMapThenContainsKeyBiggerList!150 (ListLongMap!3175 K!12310 Hashable!5663) Unit!105419)

(assert (=> b!4579178 (= lt!1744335 (lemmaInLongMapThenContainsKeyBiggerList!150 lt!1744330 key!3287 hashF!1107))))

(declare-fun b!4579179 () Bool)

(assert (=> b!4579179 (= e!2855462 e!2855470)))

(declare-fun res!1912975 () Bool)

(assert (=> b!4579179 (=> res!1912975 e!2855470)))

(assert (=> b!4579179 (= res!1912975 (not (contains!13829 (extractMap!1324 (t!358055 (toList!4544 lm!1477))) key!3287)))))

(assert (=> b!4579179 (contains!13829 lt!1744346 key!3287)))

(assert (=> b!4579179 (= lt!1744346 (extractMap!1324 (toList!4544 lt!1744330)))))

(declare-fun lt!1744350 () Unit!105419)

(declare-fun lemmaListContainsThenExtractedMapContains!224 (ListLongMap!3175 K!12310 Hashable!5663) Unit!105419)

(assert (=> b!4579179 (= lt!1744350 (lemmaListContainsThenExtractedMapContains!224 lt!1744330 key!3287 hashF!1107))))

(assert (= (and start!455892 res!1912970) b!4579165))

(assert (= (and b!4579165 res!1912960) b!4579152))

(assert (= (and b!4579152 res!1912977) b!4579176))

(assert (= (and b!4579176 res!1912965) b!4579160))

(assert (= (and b!4579160 res!1912969) b!4579172))

(assert (= (and b!4579172 (not res!1912980)) b!4579167))

(assert (= (and b!4579167 (not res!1912981)) b!4579156))

(assert (= (and b!4579156 (not res!1912973)) b!4579159))

(assert (= (and b!4579159 (not res!1912968)) b!4579153))

(assert (= (and b!4579153 (not res!1912979)) b!4579168))

(assert (= (and b!4579168 (not res!1912972)) b!4579177))

(assert (= (and b!4579177 c!783737) b!4579163))

(assert (= (and b!4579177 (not c!783737)) b!4579162))

(assert (= (and b!4579177 (not res!1912963)) b!4579178))

(assert (= (and b!4579178 (not res!1912967)) b!4579179))

(assert (= (and b!4579179 (not res!1912975)) b!4579174))

(assert (= (and b!4579174 (not res!1912962)) b!4579157))

(assert (= (and b!4579157 (not res!1912974)) b!4579175))

(assert (= (and b!4579175 (not res!1912964)) b!4579170))

(assert (= (and b!4579170 (not res!1912971)) b!4579166))

(assert (= (and b!4579166 (not res!1912978)) b!4579158))

(assert (= (and b!4579158 (not res!1912961)) b!4579155))

(assert (= (and b!4579155 (not res!1912966)) b!4579169))

(assert (= (and b!4579169 (not res!1912976)) b!4579171))

(assert (= (and b!4579171 c!783738) b!4579173))

(assert (= (and b!4579171 (not c!783738)) b!4579161))

(assert (= start!455892 b!4579164))

(assert (= (and start!455892 ((_ is Cons!50940) newBucket!178)) b!4579154))

(declare-fun m!5388349 () Bool)

(assert (=> b!4579166 m!5388349))

(declare-fun m!5388351 () Bool)

(assert (=> b!4579178 m!5388351))

(declare-fun m!5388353 () Bool)

(assert (=> b!4579178 m!5388353))

(declare-fun m!5388355 () Bool)

(assert (=> b!4579178 m!5388355))

(declare-fun m!5388357 () Bool)

(assert (=> b!4579177 m!5388357))

(declare-fun m!5388359 () Bool)

(assert (=> b!4579163 m!5388359))

(declare-fun m!5388361 () Bool)

(assert (=> b!4579159 m!5388361))

(declare-fun m!5388363 () Bool)

(assert (=> b!4579159 m!5388363))

(declare-fun m!5388365 () Bool)

(assert (=> b!4579173 m!5388365))

(declare-fun m!5388367 () Bool)

(assert (=> b!4579173 m!5388367))

(declare-fun m!5388369 () Bool)

(assert (=> b!4579173 m!5388369))

(declare-fun m!5388371 () Bool)

(assert (=> b!4579173 m!5388371))

(declare-fun m!5388373 () Bool)

(assert (=> start!455892 m!5388373))

(declare-fun m!5388375 () Bool)

(assert (=> start!455892 m!5388375))

(declare-fun m!5388377 () Bool)

(assert (=> b!4579160 m!5388377))

(declare-fun m!5388379 () Bool)

(assert (=> b!4579171 m!5388379))

(declare-fun m!5388381 () Bool)

(assert (=> b!4579153 m!5388381))

(declare-fun m!5388383 () Bool)

(assert (=> b!4579168 m!5388383))

(declare-fun m!5388385 () Bool)

(assert (=> b!4579174 m!5388385))

(declare-fun m!5388387 () Bool)

(assert (=> b!4579174 m!5388387))

(declare-fun m!5388389 () Bool)

(assert (=> b!4579174 m!5388389))

(declare-fun m!5388391 () Bool)

(assert (=> b!4579174 m!5388391))

(declare-fun m!5388393 () Bool)

(assert (=> b!4579174 m!5388393))

(declare-fun m!5388395 () Bool)

(assert (=> b!4579174 m!5388395))

(declare-fun m!5388397 () Bool)

(assert (=> b!4579174 m!5388397))

(declare-fun m!5388399 () Bool)

(assert (=> b!4579174 m!5388399))

(declare-fun m!5388401 () Bool)

(assert (=> b!4579174 m!5388401))

(declare-fun m!5388403 () Bool)

(assert (=> b!4579176 m!5388403))

(declare-fun m!5388405 () Bool)

(assert (=> b!4579158 m!5388405))

(declare-fun m!5388407 () Bool)

(assert (=> b!4579158 m!5388407))

(declare-fun m!5388409 () Bool)

(assert (=> b!4579158 m!5388409))

(declare-fun m!5388411 () Bool)

(assert (=> b!4579152 m!5388411))

(declare-fun m!5388413 () Bool)

(assert (=> b!4579152 m!5388413))

(declare-fun m!5388415 () Bool)

(assert (=> b!4579170 m!5388415))

(declare-fun m!5388417 () Bool)

(assert (=> b!4579170 m!5388417))

(declare-fun m!5388419 () Bool)

(assert (=> b!4579155 m!5388419))

(declare-fun m!5388421 () Bool)

(assert (=> b!4579155 m!5388421))

(declare-fun m!5388423 () Bool)

(assert (=> b!4579155 m!5388423))

(declare-fun m!5388425 () Bool)

(assert (=> b!4579155 m!5388425))

(declare-fun m!5388427 () Bool)

(assert (=> b!4579172 m!5388427))

(declare-fun m!5388429 () Bool)

(assert (=> b!4579172 m!5388429))

(declare-fun m!5388431 () Bool)

(assert (=> b!4579172 m!5388431))

(declare-fun m!5388433 () Bool)

(assert (=> b!4579172 m!5388433))

(declare-fun m!5388435 () Bool)

(assert (=> b!4579172 m!5388435))

(declare-fun m!5388437 () Bool)

(assert (=> b!4579172 m!5388437))

(declare-fun m!5388439 () Bool)

(assert (=> b!4579172 m!5388439))

(declare-fun m!5388441 () Bool)

(assert (=> b!4579179 m!5388441))

(declare-fun m!5388443 () Bool)

(assert (=> b!4579179 m!5388443))

(declare-fun m!5388445 () Bool)

(assert (=> b!4579179 m!5388445))

(declare-fun m!5388447 () Bool)

(assert (=> b!4579179 m!5388447))

(assert (=> b!4579179 m!5388443))

(declare-fun m!5388449 () Bool)

(assert (=> b!4579179 m!5388449))

(declare-fun m!5388451 () Bool)

(assert (=> b!4579169 m!5388451))

(declare-fun m!5388453 () Bool)

(assert (=> b!4579169 m!5388453))

(declare-fun m!5388455 () Bool)

(assert (=> b!4579167 m!5388455))

(declare-fun m!5388457 () Bool)

(assert (=> b!4579165 m!5388457))

(declare-fun m!5388459 () Bool)

(assert (=> b!4579157 m!5388459))

(check-sat (not b!4579177) (not b!4579173) (not b!4579163) (not b!4579171) (not b!4579157) tp_is_empty!28349 (not b!4579159) (not b!4579154) (not b!4579164) (not b!4579170) (not b!4579165) (not b!4579152) (not b!4579179) (not b!4579160) (not b!4579155) tp_is_empty!28351 (not start!455892) (not b!4579167) (not b!4579168) (not b!4579178) (not b!4579153) (not b!4579158) (not b!4579169) (not b!4579176) (not b!4579174) (not b!4579166) (not b!4579172))
(check-sat)
