; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!431924 () Bool)

(assert start!431924)

(declare-fun b!4426309 () Bool)

(declare-fun e!2756048 () Bool)

(declare-fun e!2756047 () Bool)

(assert (=> b!4426309 (= e!2756048 e!2756047)))

(declare-fun res!1830081 () Bool)

(assert (=> b!4426309 (=> res!1830081 e!2756047)))

(declare-datatypes ((V!11201 0))(
  ( (V!11202 (val!17035 Int)) )
))
(declare-datatypes ((K!10955 0))(
  ( (K!10956 (val!17036 Int)) )
))
(declare-datatypes ((tuple2!49390 0))(
  ( (tuple2!49391 (_1!27989 K!10955) (_2!27989 V!11201)) )
))
(declare-datatypes ((List!49717 0))(
  ( (Nil!49593) (Cons!49593 (h!55282 tuple2!49390) (t!356655 List!49717)) )
))
(declare-datatypes ((tuple2!49392 0))(
  ( (tuple2!49393 (_1!27990 (_ BitVec 64)) (_2!27990 List!49717)) )
))
(declare-datatypes ((List!49718 0))(
  ( (Nil!49594) (Cons!49594 (h!55283 tuple2!49392) (t!356656 List!49718)) )
))
(declare-datatypes ((ListLongMap!2143 0))(
  ( (ListLongMap!2144 (toList!3493 List!49718)) )
))
(declare-fun lm!1616 () ListLongMap!2143)

(declare-fun lt!1625662 () tuple2!49392)

(declare-fun head!9224 (ListLongMap!2143) tuple2!49392)

(assert (=> b!4426309 (= res!1830081 (= (head!9224 lm!1616) lt!1625662))))

(declare-datatypes ((ListMap!2737 0))(
  ( (ListMap!2738 (toList!3494 List!49717)) )
))
(declare-fun lt!1625663 () ListMap!2737)

(declare-fun lt!1625655 () ListMap!2737)

(declare-fun eq!411 (ListMap!2737 ListMap!2737) Bool)

(assert (=> b!4426309 (eq!411 lt!1625663 lt!1625655)))

(declare-fun lt!1625648 () ListMap!2737)

(declare-fun lt!1625659 () tuple2!49390)

(declare-fun +!1090 (ListMap!2737 tuple2!49390) ListMap!2737)

(assert (=> b!4426309 (= lt!1625655 (+!1090 lt!1625648 lt!1625659))))

(declare-fun key!3717 () K!10955)

(declare-fun newValue!93 () V!11201)

(assert (=> b!4426309 (= lt!1625659 (tuple2!49391 key!3717 newValue!93))))

(declare-fun lt!1625656 () ListLongMap!2143)

(declare-fun extractMap!814 (List!49718) ListMap!2737)

(assert (=> b!4426309 (= lt!1625648 (extractMap!814 (toList!3493 lt!1625656)))))

(declare-fun +!1091 (ListLongMap!2143 tuple2!49392) ListLongMap!2143)

(assert (=> b!4426309 (= lt!1625663 (extractMap!814 (toList!3493 (+!1091 lt!1625656 lt!1625662))))))

(declare-datatypes ((Unit!82099 0))(
  ( (Unit!82100) )
))
(declare-fun lt!1625653 () Unit!82099)

(declare-fun newBucket!194 () List!49717)

(declare-datatypes ((Hashable!5147 0))(
  ( (HashableExt!5146 (__x!30850 Int)) )
))
(declare-fun hashF!1220 () Hashable!5147)

(declare-fun hash!366 () (_ BitVec 64))

(declare-fun lemmaChangeOneBucketToUpdateANewKeyUpdateThisKeyInGenMap!127 (ListLongMap!2143 (_ BitVec 64) List!49717 K!10955 V!11201 Hashable!5147) Unit!82099)

(assert (=> b!4426309 (= lt!1625653 (lemmaChangeOneBucketToUpdateANewKeyUpdateThisKeyInGenMap!127 lt!1625656 hash!366 newBucket!194 key!3717 newValue!93 hashF!1220))))

(declare-fun tail!7278 (ListLongMap!2143) ListLongMap!2143)

(assert (=> b!4426309 (= lt!1625656 (tail!7278 lm!1616))))

(declare-fun lt!1625652 () Unit!82099)

(declare-fun e!2756045 () Unit!82099)

(assert (=> b!4426309 (= lt!1625652 e!2756045)))

(declare-fun c!753475 () Bool)

(declare-fun contains!12102 (ListMap!2737 K!10955) Bool)

(declare-fun tail!7279 (List!49718) List!49718)

(assert (=> b!4426309 (= c!753475 (contains!12102 (extractMap!814 (tail!7279 (toList!3493 lm!1616))) key!3717))))

(declare-fun b!4426310 () Bool)

(declare-fun e!2756053 () Bool)

(declare-fun apply!11605 (ListLongMap!2143 (_ BitVec 64)) List!49717)

(assert (=> b!4426310 (= e!2756053 (= newBucket!194 (Cons!49593 (tuple2!49391 key!3717 newValue!93) (apply!11605 lm!1616 hash!366))))))

(declare-fun b!4426311 () Bool)

(declare-fun res!1830077 () Bool)

(declare-fun e!2756049 () Bool)

(assert (=> b!4426311 (=> (not res!1830077) (not e!2756049))))

(declare-fun allKeysSameHashInMap!859 (ListLongMap!2143 Hashable!5147) Bool)

(assert (=> b!4426311 (= res!1830077 (allKeysSameHashInMap!859 lm!1616 hashF!1220))))

(declare-fun b!4426312 () Bool)

(declare-fun e!2756050 () Bool)

(assert (=> b!4426312 (= e!2756050 (not e!2756048))))

(declare-fun res!1830069 () Bool)

(assert (=> b!4426312 (=> res!1830069 e!2756048)))

(declare-fun lt!1625657 () ListLongMap!2143)

(declare-fun lambda!154186 () Int)

(declare-fun forall!9570 (List!49718 Int) Bool)

(assert (=> b!4426312 (= res!1830069 (not (forall!9570 (toList!3493 lt!1625657) lambda!154186)))))

(assert (=> b!4426312 (forall!9570 (toList!3493 lt!1625657) lambda!154186)))

(assert (=> b!4426312 (= lt!1625657 (+!1091 lm!1616 lt!1625662))))

(assert (=> b!4426312 (= lt!1625662 (tuple2!49393 hash!366 newBucket!194))))

(declare-fun lt!1625649 () Unit!82099)

(declare-fun addValidProp!397 (ListLongMap!2143 Int (_ BitVec 64) List!49717) Unit!82099)

(assert (=> b!4426312 (= lt!1625649 (addValidProp!397 lm!1616 lambda!154186 hash!366 newBucket!194))))

(declare-fun b!4426313 () Bool)

(declare-fun e!2756056 () Bool)

(assert (=> b!4426313 (= e!2756056 e!2756050)))

(declare-fun res!1830075 () Bool)

(assert (=> b!4426313 (=> (not res!1830075) (not e!2756050))))

(declare-fun e!2756051 () Bool)

(assert (=> b!4426313 (= res!1830075 e!2756051)))

(declare-fun res!1830072 () Bool)

(assert (=> b!4426313 (=> res!1830072 e!2756051)))

(assert (=> b!4426313 (= res!1830072 e!2756053)))

(declare-fun res!1830070 () Bool)

(assert (=> b!4426313 (=> (not res!1830070) (not e!2756053))))

(declare-fun lt!1625650 () Bool)

(assert (=> b!4426313 (= res!1830070 lt!1625650)))

(declare-fun contains!12103 (ListLongMap!2143 (_ BitVec 64)) Bool)

(assert (=> b!4426313 (= lt!1625650 (contains!12103 lm!1616 hash!366))))

(declare-fun b!4426314 () Bool)

(declare-fun Unit!82101 () Unit!82099)

(assert (=> b!4426314 (= e!2756045 Unit!82101)))

(declare-fun b!4426315 () Bool)

(assert (=> b!4426315 (= e!2756049 e!2756056)))

(declare-fun res!1830068 () Bool)

(assert (=> b!4426315 (=> (not res!1830068) (not e!2756056))))

(declare-fun lt!1625654 () ListMap!2737)

(assert (=> b!4426315 (= res!1830068 (not (contains!12102 lt!1625654 key!3717)))))

(assert (=> b!4426315 (= lt!1625654 (extractMap!814 (toList!3493 lm!1616)))))

(declare-fun tp_is_empty!26259 () Bool)

(declare-fun e!2756052 () Bool)

(declare-fun tp!1333254 () Bool)

(declare-fun tp_is_empty!26257 () Bool)

(declare-fun b!4426316 () Bool)

(assert (=> b!4426316 (= e!2756052 (and tp_is_empty!26259 tp_is_empty!26257 tp!1333254))))

(declare-fun b!4426317 () Bool)

(declare-fun res!1830076 () Bool)

(assert (=> b!4426317 (=> (not res!1830076) (not e!2756049))))

(declare-fun allKeysSameHash!713 (List!49717 (_ BitVec 64) Hashable!5147) Bool)

(assert (=> b!4426317 (= res!1830076 (allKeysSameHash!713 newBucket!194 hash!366 hashF!1220))))

(declare-fun b!4426318 () Bool)

(declare-fun res!1830079 () Bool)

(assert (=> b!4426318 (=> (not res!1830079) (not e!2756050))))

(declare-fun noDuplicateKeys!753 (List!49717) Bool)

(assert (=> b!4426318 (= res!1830079 (noDuplicateKeys!753 newBucket!194))))

(declare-fun b!4426319 () Bool)

(assert (=> b!4426319 (= e!2756051 (and (not lt!1625650) (= newBucket!194 (Cons!49593 (tuple2!49391 key!3717 newValue!93) Nil!49593))))))

(declare-fun b!4426320 () Bool)

(declare-fun res!1830080 () Bool)

(assert (=> b!4426320 (=> (not res!1830080) (not e!2756049))))

(declare-fun hash!2138 (Hashable!5147 K!10955) (_ BitVec 64))

(assert (=> b!4426320 (= res!1830080 (= (hash!2138 hashF!1220 key!3717) hash!366))))

(declare-fun b!4426321 () Bool)

(declare-fun e!2756046 () Bool)

(assert (=> b!4426321 (= e!2756047 e!2756046)))

(declare-fun res!1830078 () Bool)

(assert (=> b!4426321 (=> res!1830078 e!2756046)))

(declare-fun lt!1625660 () ListMap!2737)

(assert (=> b!4426321 (= res!1830078 (not (eq!411 lt!1625654 lt!1625660)))))

(declare-fun addToMapMapFromBucket!390 (List!49717 ListMap!2737) ListMap!2737)

(assert (=> b!4426321 (= lt!1625660 (addToMapMapFromBucket!390 (_2!27990 (h!55283 (toList!3493 lm!1616))) lt!1625648))))

(declare-fun b!4426322 () Bool)

(declare-fun Unit!82102 () Unit!82099)

(assert (=> b!4426322 (= e!2756045 Unit!82102)))

(declare-fun lt!1625658 () Unit!82099)

(declare-fun lemmaExtractTailMapContainsThenExtractMapDoes!40 (ListLongMap!2143 K!10955 Hashable!5147) Unit!82099)

(assert (=> b!4426322 (= lt!1625658 (lemmaExtractTailMapContainsThenExtractMapDoes!40 lm!1616 key!3717 hashF!1220))))

(assert (=> b!4426322 false))

(declare-fun b!4426323 () Bool)

(declare-fun e!2756055 () Bool)

(assert (=> b!4426323 (= e!2756055 (forall!9570 (toList!3493 lm!1616) lambda!154186))))

(assert (=> b!4426323 (eq!411 (addToMapMapFromBucket!390 (_2!27990 (h!55283 (toList!3493 lm!1616))) lt!1625655) (+!1090 lt!1625660 lt!1625659))))

(declare-fun lt!1625651 () Unit!82099)

(declare-fun lemmaAddToMapFromBucketPlusKeyValueIsCommutative!182 (ListMap!2737 K!10955 V!11201 List!49717) Unit!82099)

(assert (=> b!4426323 (= lt!1625651 (lemmaAddToMapFromBucketPlusKeyValueIsCommutative!182 lt!1625648 key!3717 newValue!93 (_2!27990 (h!55283 (toList!3493 lm!1616)))))))

(declare-fun res!1830074 () Bool)

(assert (=> start!431924 (=> (not res!1830074) (not e!2756049))))

(assert (=> start!431924 (= res!1830074 (forall!9570 (toList!3493 lm!1616) lambda!154186))))

(assert (=> start!431924 e!2756049))

(assert (=> start!431924 tp_is_empty!26257))

(assert (=> start!431924 tp_is_empty!26259))

(assert (=> start!431924 e!2756052))

(declare-fun e!2756054 () Bool)

(declare-fun inv!65141 (ListLongMap!2143) Bool)

(assert (=> start!431924 (and (inv!65141 lm!1616) e!2756054)))

(assert (=> start!431924 true))

(declare-fun b!4426324 () Bool)

(declare-fun res!1830071 () Bool)

(assert (=> b!4426324 (=> res!1830071 e!2756048)))

(get-info :version)

(assert (=> b!4426324 (= res!1830071 (or (and ((_ is Cons!49594) (toList!3493 lm!1616)) (= (_1!27990 (h!55283 (toList!3493 lm!1616))) hash!366)) (not ((_ is Cons!49594) (toList!3493 lm!1616))) (= (_1!27990 (h!55283 (toList!3493 lm!1616))) hash!366)))))

(declare-fun b!4426325 () Bool)

(assert (=> b!4426325 (= e!2756046 e!2756055)))

(declare-fun res!1830067 () Bool)

(assert (=> b!4426325 (=> res!1830067 e!2756055)))

(declare-fun containsKey!1124 (List!49717 K!10955) Bool)

(assert (=> b!4426325 (= res!1830067 (containsKey!1124 (_2!27990 (h!55283 (toList!3493 lm!1616))) key!3717))))

(assert (=> b!4426325 (not (containsKey!1124 (apply!11605 lm!1616 (_1!27990 (h!55283 (toList!3493 lm!1616)))) key!3717))))

(declare-fun lt!1625661 () Unit!82099)

(declare-fun lemmaNotSameHashThenCannotContainKey!132 (ListLongMap!2143 K!10955 (_ BitVec 64) Hashable!5147) Unit!82099)

(assert (=> b!4426325 (= lt!1625661 (lemmaNotSameHashThenCannotContainKey!132 lm!1616 key!3717 (_1!27990 (h!55283 (toList!3493 lm!1616))) hashF!1220))))

(declare-fun b!4426326 () Bool)

(declare-fun tp!1333253 () Bool)

(assert (=> b!4426326 (= e!2756054 tp!1333253)))

(declare-fun b!4426327 () Bool)

(declare-fun res!1830073 () Bool)

(assert (=> b!4426327 (=> (not res!1830073) (not e!2756050))))

(assert (=> b!4426327 (= res!1830073 (forall!9570 (toList!3493 lm!1616) lambda!154186))))

(assert (= (and start!431924 res!1830074) b!4426311))

(assert (= (and b!4426311 res!1830077) b!4426320))

(assert (= (and b!4426320 res!1830080) b!4426317))

(assert (= (and b!4426317 res!1830076) b!4426315))

(assert (= (and b!4426315 res!1830068) b!4426313))

(assert (= (and b!4426313 res!1830070) b!4426310))

(assert (= (and b!4426313 (not res!1830072)) b!4426319))

(assert (= (and b!4426313 res!1830075) b!4426318))

(assert (= (and b!4426318 res!1830079) b!4426327))

(assert (= (and b!4426327 res!1830073) b!4426312))

(assert (= (and b!4426312 (not res!1830069)) b!4426324))

(assert (= (and b!4426324 (not res!1830071)) b!4426309))

(assert (= (and b!4426309 c!753475) b!4426322))

(assert (= (and b!4426309 (not c!753475)) b!4426314))

(assert (= (and b!4426309 (not res!1830081)) b!4426321))

(assert (= (and b!4426321 (not res!1830078)) b!4426325))

(assert (= (and b!4426325 (not res!1830067)) b!4426323))

(assert (= (and start!431924 ((_ is Cons!49593) newBucket!194)) b!4426316))

(assert (= start!431924 b!4426326))

(declare-fun m!5107587 () Bool)

(assert (=> b!4426313 m!5107587))

(declare-fun m!5107589 () Bool)

(assert (=> b!4426327 m!5107589))

(declare-fun m!5107591 () Bool)

(assert (=> b!4426311 m!5107591))

(declare-fun m!5107593 () Bool)

(assert (=> b!4426317 m!5107593))

(declare-fun m!5107595 () Bool)

(assert (=> b!4426325 m!5107595))

(declare-fun m!5107597 () Bool)

(assert (=> b!4426325 m!5107597))

(assert (=> b!4426325 m!5107597))

(declare-fun m!5107599 () Bool)

(assert (=> b!4426325 m!5107599))

(declare-fun m!5107601 () Bool)

(assert (=> b!4426325 m!5107601))

(declare-fun m!5107603 () Bool)

(assert (=> b!4426323 m!5107603))

(declare-fun m!5107605 () Bool)

(assert (=> b!4426323 m!5107605))

(declare-fun m!5107607 () Bool)

(assert (=> b!4426323 m!5107607))

(assert (=> b!4426323 m!5107603))

(assert (=> b!4426323 m!5107605))

(declare-fun m!5107609 () Bool)

(assert (=> b!4426323 m!5107609))

(assert (=> b!4426323 m!5107589))

(declare-fun m!5107611 () Bool)

(assert (=> b!4426315 m!5107611))

(declare-fun m!5107613 () Bool)

(assert (=> b!4426315 m!5107613))

(declare-fun m!5107615 () Bool)

(assert (=> b!4426321 m!5107615))

(declare-fun m!5107617 () Bool)

(assert (=> b!4426321 m!5107617))

(declare-fun m!5107619 () Bool)

(assert (=> b!4426309 m!5107619))

(declare-fun m!5107621 () Bool)

(assert (=> b!4426309 m!5107621))

(declare-fun m!5107623 () Bool)

(assert (=> b!4426309 m!5107623))

(declare-fun m!5107625 () Bool)

(assert (=> b!4426309 m!5107625))

(declare-fun m!5107627 () Bool)

(assert (=> b!4426309 m!5107627))

(declare-fun m!5107629 () Bool)

(assert (=> b!4426309 m!5107629))

(declare-fun m!5107631 () Bool)

(assert (=> b!4426309 m!5107631))

(declare-fun m!5107633 () Bool)

(assert (=> b!4426309 m!5107633))

(assert (=> b!4426309 m!5107619))

(declare-fun m!5107635 () Bool)

(assert (=> b!4426309 m!5107635))

(assert (=> b!4426309 m!5107621))

(declare-fun m!5107637 () Bool)

(assert (=> b!4426309 m!5107637))

(declare-fun m!5107639 () Bool)

(assert (=> b!4426309 m!5107639))

(declare-fun m!5107641 () Bool)

(assert (=> b!4426310 m!5107641))

(declare-fun m!5107643 () Bool)

(assert (=> b!4426312 m!5107643))

(assert (=> b!4426312 m!5107643))

(declare-fun m!5107645 () Bool)

(assert (=> b!4426312 m!5107645))

(declare-fun m!5107647 () Bool)

(assert (=> b!4426312 m!5107647))

(assert (=> start!431924 m!5107589))

(declare-fun m!5107649 () Bool)

(assert (=> start!431924 m!5107649))

(declare-fun m!5107651 () Bool)

(assert (=> b!4426322 m!5107651))

(declare-fun m!5107653 () Bool)

(assert (=> b!4426320 m!5107653))

(declare-fun m!5107655 () Bool)

(assert (=> b!4426318 m!5107655))

(check-sat (not b!4426323) (not b!4426309) (not b!4426327) (not b!4426310) (not b!4426318) (not b!4426317) (not b!4426315) (not b!4426320) tp_is_empty!26257 (not start!431924) tp_is_empty!26259 (not b!4426312) (not b!4426321) (not b!4426326) (not b!4426313) (not b!4426311) (not b!4426322) (not b!4426325) (not b!4426316))
(check-sat)
