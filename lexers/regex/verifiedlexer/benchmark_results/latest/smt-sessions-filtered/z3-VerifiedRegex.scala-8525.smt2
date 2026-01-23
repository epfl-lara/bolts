; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!446940 () Bool)

(assert start!446940)

(declare-fun b!4516281 () Bool)

(declare-fun res!1879250 () Bool)

(declare-fun e!2813660 () Bool)

(assert (=> b!4516281 (=> res!1879250 e!2813660)))

(declare-datatypes ((K!12030 0))(
  ( (K!12031 (val!17895 Int)) )
))
(declare-datatypes ((V!12276 0))(
  ( (V!12277 (val!17896 Int)) )
))
(declare-datatypes ((tuple2!51058 0))(
  ( (tuple2!51059 (_1!28823 K!12030) (_2!28823 V!12276)) )
))
(declare-datatypes ((List!50758 0))(
  ( (Nil!50634) (Cons!50634 (h!56483 tuple2!51058) (t!357720 List!50758)) )
))
(declare-datatypes ((tuple2!51060 0))(
  ( (tuple2!51061 (_1!28824 (_ BitVec 64)) (_2!28824 List!50758)) )
))
(declare-fun lt!1694150 () tuple2!51060)

(declare-fun hash!344 () (_ BitVec 64))

(assert (=> b!4516281 (= res!1879250 (bvsge (_1!28824 lt!1694150) hash!344))))

(declare-fun b!4516282 () Bool)

(declare-fun res!1879257 () Bool)

(declare-fun e!2813653 () Bool)

(assert (=> b!4516282 (=> res!1879257 e!2813653)))

(declare-datatypes ((List!50759 0))(
  ( (Nil!50635) (Cons!50635 (h!56484 tuple2!51060) (t!357721 List!50759)) )
))
(declare-datatypes ((ListLongMap!2951 0))(
  ( (ListLongMap!2952 (toList!4319 List!50759)) )
))
(declare-fun lt!1694164 () ListLongMap!2951)

(declare-fun lt!1694146 () List!50758)

(declare-fun apply!11893 (ListLongMap!2951 (_ BitVec 64)) List!50758)

(assert (=> b!4516282 (= res!1879257 (not (= (apply!11893 lt!1694164 hash!344) lt!1694146)))))

(declare-fun b!4516283 () Bool)

(declare-fun e!2813655 () Bool)

(assert (=> b!4516283 (= e!2813653 e!2813655)))

(declare-fun res!1879259 () Bool)

(assert (=> b!4516283 (=> res!1879259 e!2813655)))

(declare-fun lt!1694163 () Bool)

(assert (=> b!4516283 (= res!1879259 lt!1694163)))

(declare-datatypes ((Unit!94398 0))(
  ( (Unit!94399) )
))
(declare-fun lt!1694160 () Unit!94398)

(declare-fun e!2813663 () Unit!94398)

(assert (=> b!4516283 (= lt!1694160 e!2813663)))

(declare-fun c!770531 () Bool)

(assert (=> b!4516283 (= c!770531 lt!1694163)))

(declare-fun key!3287 () K!12030)

(declare-fun containsKey!1768 (List!50758 K!12030) Bool)

(assert (=> b!4516283 (= lt!1694163 (not (containsKey!1768 lt!1694146 key!3287)))))

(declare-fun b!4516284 () Bool)

(declare-fun res!1879256 () Bool)

(declare-fun e!2813664 () Bool)

(assert (=> b!4516284 (=> res!1879256 e!2813664)))

(declare-fun lt!1694165 () ListLongMap!2951)

(declare-fun head!9404 (ListLongMap!2951) tuple2!51060)

(assert (=> b!4516284 (= res!1879256 (not (= (head!9404 lt!1694165) lt!1694150)))))

(declare-fun b!4516285 () Bool)

(declare-fun e!2813652 () Bool)

(declare-fun e!2813658 () Bool)

(assert (=> b!4516285 (= e!2813652 (not e!2813658))))

(declare-fun res!1879254 () Bool)

(assert (=> b!4516285 (=> res!1879254 e!2813658)))

(declare-fun newBucket!178 () List!50758)

(declare-fun removePairForKey!783 (List!50758 K!12030) List!50758)

(assert (=> b!4516285 (= res!1879254 (not (= newBucket!178 (removePairForKey!783 lt!1694146 key!3287))))))

(declare-fun lambda!171717 () Int)

(declare-fun lm!1477 () ListLongMap!2951)

(declare-fun lt!1694152 () tuple2!51060)

(declare-fun lt!1694166 () Unit!94398)

(declare-fun forallContained!2503 (List!50759 Int tuple2!51060) Unit!94398)

(assert (=> b!4516285 (= lt!1694166 (forallContained!2503 (toList!4319 lm!1477) lambda!171717 lt!1694152))))

(declare-fun contains!13351 (List!50759 tuple2!51060) Bool)

(assert (=> b!4516285 (contains!13351 (toList!4319 lm!1477) lt!1694152)))

(assert (=> b!4516285 (= lt!1694152 (tuple2!51061 hash!344 lt!1694146))))

(declare-fun lt!1694167 () Unit!94398)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!668 (List!50759 (_ BitVec 64) List!50758) Unit!94398)

(assert (=> b!4516285 (= lt!1694167 (lemmaGetValueByKeyImpliesContainsTuple!668 (toList!4319 lm!1477) hash!344 lt!1694146))))

(assert (=> b!4516285 (= lt!1694146 (apply!11893 lm!1477 hash!344))))

(declare-fun lt!1694171 () (_ BitVec 64))

(declare-fun contains!13352 (ListLongMap!2951 (_ BitVec 64)) Bool)

(assert (=> b!4516285 (contains!13352 lm!1477 lt!1694171)))

(declare-datatypes ((Hashable!5551 0))(
  ( (HashableExt!5550 (__x!31254 Int)) )
))
(declare-fun hashF!1107 () Hashable!5551)

(declare-fun lt!1694162 () Unit!94398)

(declare-fun lemmaInGenMapThenLongMapContainsHash!230 (ListLongMap!2951 K!12030 Hashable!5551) Unit!94398)

(assert (=> b!4516285 (= lt!1694162 (lemmaInGenMapThenLongMapContainsHash!230 lm!1477 key!3287 hashF!1107))))

(declare-fun b!4516286 () Bool)

(declare-fun e!2813662 () Bool)

(declare-fun e!2813656 () Bool)

(assert (=> b!4516286 (= e!2813662 e!2813656)))

(declare-fun res!1879249 () Bool)

(assert (=> b!4516286 (=> (not res!1879249) (not e!2813656))))

(declare-datatypes ((ListMap!3581 0))(
  ( (ListMap!3582 (toList!4320 List!50758)) )
))
(declare-fun lt!1694148 () ListMap!3581)

(declare-fun contains!13353 (ListMap!3581 K!12030) Bool)

(assert (=> b!4516286 (= res!1879249 (contains!13353 lt!1694148 key!3287))))

(declare-fun extractMap!1212 (List!50759) ListMap!3581)

(assert (=> b!4516286 (= lt!1694148 (extractMap!1212 (toList!4319 lm!1477)))))

(declare-fun b!4516287 () Bool)

(declare-fun Unit!94400 () Unit!94398)

(assert (=> b!4516287 (= e!2813663 Unit!94400)))

(declare-fun b!4516288 () Bool)

(declare-fun e!2813661 () Bool)

(assert (=> b!4516288 (= e!2813664 e!2813661)))

(declare-fun res!1879260 () Bool)

(assert (=> b!4516288 (=> res!1879260 e!2813661)))

(declare-fun lt!1694149 () ListMap!3581)

(declare-fun lt!1694151 () ListMap!3581)

(declare-fun eq!613 (ListMap!3581 ListMap!3581) Bool)

(assert (=> b!4516288 (= res!1879260 (not (eq!613 lt!1694149 lt!1694151)))))

(declare-fun lt!1694172 () ListMap!3581)

(declare-fun addToMapMapFromBucket!683 (List!50758 ListMap!3581) ListMap!3581)

(assert (=> b!4516288 (= lt!1694151 (addToMapMapFromBucket!683 (_2!28824 lt!1694150) lt!1694172))))

(assert (=> b!4516288 (= lt!1694149 (extractMap!1212 (toList!4319 lt!1694165)))))

(declare-fun b!4516289 () Bool)

(declare-fun e!2813651 () Bool)

(declare-fun e!2813657 () Bool)

(assert (=> b!4516289 (= e!2813651 e!2813657)))

(declare-fun res!1879252 () Bool)

(assert (=> b!4516289 (=> res!1879252 e!2813657)))

(declare-fun noDuplicateKeys!1156 (List!50758) Bool)

(assert (=> b!4516289 (= res!1879252 (not (noDuplicateKeys!1156 (_2!28824 lt!1694150))))))

(declare-fun lt!1694153 () Unit!94398)

(assert (=> b!4516289 (= lt!1694153 (forallContained!2503 (toList!4319 lm!1477) lambda!171717 (h!56484 (toList!4319 lm!1477))))))

(declare-fun tp_is_empty!27903 () Bool)

(declare-fun tp!1338004 () Bool)

(declare-fun tp_is_empty!27901 () Bool)

(declare-fun e!2813665 () Bool)

(declare-fun b!4516290 () Bool)

(assert (=> b!4516290 (= e!2813665 (and tp_is_empty!27901 tp_is_empty!27903 tp!1338004))))

(declare-fun b!4516291 () Bool)

(assert (=> b!4516291 (= e!2813660 e!2813664)))

(declare-fun res!1879240 () Bool)

(assert (=> b!4516291 (=> res!1879240 e!2813664)))

(declare-fun lt!1694154 () tuple2!51060)

(declare-fun +!1530 (ListLongMap!2951 tuple2!51060) ListLongMap!2951)

(assert (=> b!4516291 (= res!1879240 (not (= lt!1694165 (+!1530 lm!1477 lt!1694154))))))

(declare-fun lt!1694158 () ListLongMap!2951)

(assert (=> b!4516291 (= lt!1694165 (+!1530 lt!1694158 lt!1694150))))

(declare-fun b!4516292 () Bool)

(assert (=> b!4516292 (= e!2813656 e!2813652)))

(declare-fun res!1879241 () Bool)

(assert (=> b!4516292 (=> (not res!1879241) (not e!2813652))))

(assert (=> b!4516292 (= res!1879241 (= lt!1694171 hash!344))))

(declare-fun hash!2791 (Hashable!5551 K!12030) (_ BitVec 64))

(assert (=> b!4516292 (= lt!1694171 (hash!2791 hashF!1107 key!3287))))

(declare-fun res!1879242 () Bool)

(assert (=> start!446940 (=> (not res!1879242) (not e!2813662))))

(declare-fun forall!10251 (List!50759 Int) Bool)

(assert (=> start!446940 (= res!1879242 (forall!10251 (toList!4319 lm!1477) lambda!171717))))

(assert (=> start!446940 e!2813662))

(assert (=> start!446940 true))

(declare-fun e!2813659 () Bool)

(declare-fun inv!66214 (ListLongMap!2951) Bool)

(assert (=> start!446940 (and (inv!66214 lm!1477) e!2813659)))

(assert (=> start!446940 tp_is_empty!27901))

(assert (=> start!446940 e!2813665))

(declare-fun b!4516293 () Bool)

(declare-fun res!1879251 () Bool)

(assert (=> b!4516293 (=> res!1879251 e!2813658)))

(assert (=> b!4516293 (= res!1879251 (not (noDuplicateKeys!1156 newBucket!178)))))

(declare-fun b!4516294 () Bool)

(declare-fun isEmpty!28651 (ListLongMap!2951) Bool)

(assert (=> b!4516294 (= e!2813657 (not (isEmpty!28651 lm!1477)))))

(declare-fun b!4516295 () Bool)

(declare-fun res!1879246 () Bool)

(assert (=> b!4516295 (=> (not res!1879246) (not e!2813662))))

(declare-fun allKeysSameHashInMap!1263 (ListLongMap!2951 Hashable!5551) Bool)

(assert (=> b!4516295 (= res!1879246 (allKeysSameHashInMap!1263 lm!1477 hashF!1107))))

(declare-fun b!4516296 () Bool)

(assert (=> b!4516296 (= e!2813658 e!2813653)))

(declare-fun res!1879258 () Bool)

(assert (=> b!4516296 (=> res!1879258 e!2813653)))

(assert (=> b!4516296 (= res!1879258 (not (contains!13352 lt!1694164 hash!344)))))

(declare-fun tail!7726 (ListLongMap!2951) ListLongMap!2951)

(assert (=> b!4516296 (= lt!1694164 (tail!7726 lm!1477))))

(declare-fun b!4516297 () Bool)

(declare-fun e!2813650 () Bool)

(declare-fun e!2813654 () Bool)

(assert (=> b!4516297 (= e!2813650 e!2813654)))

(declare-fun res!1879248 () Bool)

(assert (=> b!4516297 (=> res!1879248 e!2813654)))

(assert (=> b!4516297 (= res!1879248 (not (contains!13353 (extractMap!1212 (t!357721 (toList!4319 lm!1477))) key!3287)))))

(declare-fun lt!1694159 () ListMap!3581)

(assert (=> b!4516297 (contains!13353 lt!1694159 key!3287)))

(assert (=> b!4516297 (= lt!1694159 (extractMap!1212 (toList!4319 lt!1694164)))))

(declare-fun lt!1694170 () Unit!94398)

(declare-fun lemmaListContainsThenExtractedMapContains!126 (ListLongMap!2951 K!12030 Hashable!5551) Unit!94398)

(assert (=> b!4516297 (= lt!1694170 (lemmaListContainsThenExtractedMapContains!126 lt!1694164 key!3287 hashF!1107))))

(declare-fun b!4516298 () Bool)

(assert (=> b!4516298 (= e!2813655 e!2813650)))

(declare-fun res!1879244 () Bool)

(assert (=> b!4516298 (=> res!1879244 e!2813650)))

(declare-fun containsKeyBiggerList!136 (List!50759 K!12030) Bool)

(assert (=> b!4516298 (= res!1879244 (not (containsKeyBiggerList!136 (t!357721 (toList!4319 lm!1477)) key!3287)))))

(assert (=> b!4516298 (containsKeyBiggerList!136 (toList!4319 lt!1694164) key!3287)))

(declare-fun lt!1694157 () Unit!94398)

(declare-fun lemmaInLongMapThenContainsKeyBiggerList!72 (ListLongMap!2951 K!12030 Hashable!5551) Unit!94398)

(assert (=> b!4516298 (= lt!1694157 (lemmaInLongMapThenContainsKeyBiggerList!72 lt!1694164 key!3287 hashF!1107))))

(declare-fun b!4516299 () Bool)

(declare-fun res!1879239 () Bool)

(assert (=> b!4516299 (=> res!1879239 e!2813660)))

(declare-fun lt!1694168 () ListMap!3581)

(assert (=> b!4516299 (= res!1879239 (not (eq!613 lt!1694148 lt!1694168)))))

(declare-fun b!4516300 () Bool)

(assert (=> b!4516300 (= e!2813661 e!2813651)))

(declare-fun res!1879255 () Bool)

(assert (=> b!4516300 (=> res!1879255 e!2813651)))

(declare-fun lt!1694161 () ListMap!3581)

(assert (=> b!4516300 (= res!1879255 (not (eq!613 lt!1694149 lt!1694161)))))

(assert (=> b!4516300 (eq!613 lt!1694151 lt!1694161)))

(declare-fun lt!1694147 () ListMap!3581)

(assert (=> b!4516300 (= lt!1694161 (addToMapMapFromBucket!683 (_2!28824 lt!1694150) lt!1694147))))

(declare-fun lt!1694155 () Unit!94398)

(declare-fun lemmaAddToMapFromBucketPreservesEquivalence!32 (ListMap!3581 ListMap!3581 List!50758) Unit!94398)

(assert (=> b!4516300 (= lt!1694155 (lemmaAddToMapFromBucketPreservesEquivalence!32 lt!1694172 lt!1694147 (_2!28824 lt!1694150)))))

(declare-fun b!4516301 () Bool)

(declare-fun res!1879247 () Bool)

(assert (=> b!4516301 (=> res!1879247 e!2813653)))

(assert (=> b!4516301 (= res!1879247 (not (contains!13351 (t!357721 (toList!4319 lm!1477)) lt!1694152)))))

(declare-fun b!4516302 () Bool)

(assert (=> b!4516302 (= e!2813654 e!2813660)))

(declare-fun res!1879245 () Bool)

(assert (=> b!4516302 (=> res!1879245 e!2813660)))

(assert (=> b!4516302 (= res!1879245 (not (eq!613 lt!1694168 lt!1694148)))))

(assert (=> b!4516302 (= lt!1694168 (extractMap!1212 (toList!4319 (+!1530 lt!1694164 lt!1694150))))))

(assert (=> b!4516302 (= lt!1694150 (head!9404 lm!1477))))

(assert (=> b!4516302 (eq!613 lt!1694172 lt!1694147)))

(declare-fun -!382 (ListMap!3581 K!12030) ListMap!3581)

(assert (=> b!4516302 (= lt!1694147 (-!382 lt!1694159 key!3287))))

(assert (=> b!4516302 (= lt!1694172 (extractMap!1212 (toList!4319 lt!1694158)))))

(assert (=> b!4516302 (= lt!1694158 (+!1530 lt!1694164 lt!1694154))))

(assert (=> b!4516302 (= lt!1694154 (tuple2!51061 hash!344 newBucket!178))))

(declare-fun lt!1694169 () Unit!94398)

(declare-fun lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMap!141 (ListLongMap!2951 (_ BitVec 64) List!50758 K!12030 Hashable!5551) Unit!94398)

(assert (=> b!4516302 (= lt!1694169 (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMap!141 lt!1694164 hash!344 newBucket!178 key!3287 hashF!1107))))

(declare-fun b!4516303 () Bool)

(declare-fun res!1879253 () Bool)

(assert (=> b!4516303 (=> res!1879253 e!2813658)))

(get-info :version)

(assert (=> b!4516303 (= res!1879253 (or ((_ is Nil!50635) (toList!4319 lm!1477)) (= (_1!28824 (h!56484 (toList!4319 lm!1477))) hash!344)))))

(declare-fun b!4516304 () Bool)

(declare-fun tp!1338005 () Bool)

(assert (=> b!4516304 (= e!2813659 tp!1338005)))

(declare-fun b!4516305 () Bool)

(declare-fun Unit!94401 () Unit!94398)

(assert (=> b!4516305 (= e!2813663 Unit!94401)))

(declare-fun lt!1694156 () Unit!94398)

(declare-fun lemmaNotInItsHashBucketThenNotInMap!144 (ListLongMap!2951 K!12030 Hashable!5551) Unit!94398)

(assert (=> b!4516305 (= lt!1694156 (lemmaNotInItsHashBucketThenNotInMap!144 lm!1477 key!3287 hashF!1107))))

(assert (=> b!4516305 false))

(declare-fun b!4516306 () Bool)

(declare-fun res!1879243 () Bool)

(assert (=> b!4516306 (=> (not res!1879243) (not e!2813652))))

(declare-fun allKeysSameHash!1010 (List!50758 (_ BitVec 64) Hashable!5551) Bool)

(assert (=> b!4516306 (= res!1879243 (allKeysSameHash!1010 newBucket!178 hash!344 hashF!1107))))

(assert (= (and start!446940 res!1879242) b!4516295))

(assert (= (and b!4516295 res!1879246) b!4516286))

(assert (= (and b!4516286 res!1879249) b!4516292))

(assert (= (and b!4516292 res!1879241) b!4516306))

(assert (= (and b!4516306 res!1879243) b!4516285))

(assert (= (and b!4516285 (not res!1879254)) b!4516293))

(assert (= (and b!4516293 (not res!1879251)) b!4516303))

(assert (= (and b!4516303 (not res!1879253)) b!4516296))

(assert (= (and b!4516296 (not res!1879258)) b!4516282))

(assert (= (and b!4516282 (not res!1879257)) b!4516301))

(assert (= (and b!4516301 (not res!1879247)) b!4516283))

(assert (= (and b!4516283 c!770531) b!4516305))

(assert (= (and b!4516283 (not c!770531)) b!4516287))

(assert (= (and b!4516283 (not res!1879259)) b!4516298))

(assert (= (and b!4516298 (not res!1879244)) b!4516297))

(assert (= (and b!4516297 (not res!1879248)) b!4516302))

(assert (= (and b!4516302 (not res!1879245)) b!4516299))

(assert (= (and b!4516299 (not res!1879239)) b!4516281))

(assert (= (and b!4516281 (not res!1879250)) b!4516291))

(assert (= (and b!4516291 (not res!1879240)) b!4516284))

(assert (= (and b!4516284 (not res!1879256)) b!4516288))

(assert (= (and b!4516288 (not res!1879260)) b!4516300))

(assert (= (and b!4516300 (not res!1879255)) b!4516289))

(assert (= (and b!4516289 (not res!1879252)) b!4516294))

(assert (= start!446940 b!4516304))

(assert (= (and start!446940 ((_ is Cons!50634) newBucket!178)) b!4516290))

(declare-fun m!5260701 () Bool)

(assert (=> b!4516284 m!5260701))

(declare-fun m!5260703 () Bool)

(assert (=> b!4516293 m!5260703))

(declare-fun m!5260705 () Bool)

(assert (=> b!4516298 m!5260705))

(declare-fun m!5260707 () Bool)

(assert (=> b!4516298 m!5260707))

(declare-fun m!5260709 () Bool)

(assert (=> b!4516298 m!5260709))

(declare-fun m!5260711 () Bool)

(assert (=> b!4516301 m!5260711))

(declare-fun m!5260713 () Bool)

(assert (=> b!4516302 m!5260713))

(declare-fun m!5260715 () Bool)

(assert (=> b!4516302 m!5260715))

(declare-fun m!5260717 () Bool)

(assert (=> b!4516302 m!5260717))

(declare-fun m!5260719 () Bool)

(assert (=> b!4516302 m!5260719))

(declare-fun m!5260721 () Bool)

(assert (=> b!4516302 m!5260721))

(declare-fun m!5260723 () Bool)

(assert (=> b!4516302 m!5260723))

(declare-fun m!5260725 () Bool)

(assert (=> b!4516302 m!5260725))

(declare-fun m!5260727 () Bool)

(assert (=> b!4516302 m!5260727))

(declare-fun m!5260729 () Bool)

(assert (=> b!4516302 m!5260729))

(declare-fun m!5260731 () Bool)

(assert (=> b!4516297 m!5260731))

(declare-fun m!5260733 () Bool)

(assert (=> b!4516297 m!5260733))

(declare-fun m!5260735 () Bool)

(assert (=> b!4516297 m!5260735))

(declare-fun m!5260737 () Bool)

(assert (=> b!4516297 m!5260737))

(assert (=> b!4516297 m!5260733))

(declare-fun m!5260739 () Bool)

(assert (=> b!4516297 m!5260739))

(declare-fun m!5260741 () Bool)

(assert (=> b!4516305 m!5260741))

(declare-fun m!5260743 () Bool)

(assert (=> b!4516300 m!5260743))

(declare-fun m!5260745 () Bool)

(assert (=> b!4516300 m!5260745))

(declare-fun m!5260747 () Bool)

(assert (=> b!4516300 m!5260747))

(declare-fun m!5260749 () Bool)

(assert (=> b!4516300 m!5260749))

(declare-fun m!5260751 () Bool)

(assert (=> b!4516285 m!5260751))

(declare-fun m!5260753 () Bool)

(assert (=> b!4516285 m!5260753))

(declare-fun m!5260755 () Bool)

(assert (=> b!4516285 m!5260755))

(declare-fun m!5260757 () Bool)

(assert (=> b!4516285 m!5260757))

(declare-fun m!5260759 () Bool)

(assert (=> b!4516285 m!5260759))

(declare-fun m!5260761 () Bool)

(assert (=> b!4516285 m!5260761))

(declare-fun m!5260763 () Bool)

(assert (=> b!4516285 m!5260763))

(declare-fun m!5260765 () Bool)

(assert (=> b!4516294 m!5260765))

(declare-fun m!5260767 () Bool)

(assert (=> b!4516295 m!5260767))

(declare-fun m!5260769 () Bool)

(assert (=> b!4516291 m!5260769))

(declare-fun m!5260771 () Bool)

(assert (=> b!4516291 m!5260771))

(declare-fun m!5260773 () Bool)

(assert (=> b!4516306 m!5260773))

(declare-fun m!5260775 () Bool)

(assert (=> b!4516288 m!5260775))

(declare-fun m!5260777 () Bool)

(assert (=> b!4516288 m!5260777))

(declare-fun m!5260779 () Bool)

(assert (=> b!4516288 m!5260779))

(declare-fun m!5260781 () Bool)

(assert (=> b!4516292 m!5260781))

(declare-fun m!5260783 () Bool)

(assert (=> b!4516282 m!5260783))

(declare-fun m!5260785 () Bool)

(assert (=> b!4516283 m!5260785))

(declare-fun m!5260787 () Bool)

(assert (=> b!4516299 m!5260787))

(declare-fun m!5260789 () Bool)

(assert (=> b!4516286 m!5260789))

(declare-fun m!5260791 () Bool)

(assert (=> b!4516286 m!5260791))

(declare-fun m!5260793 () Bool)

(assert (=> b!4516289 m!5260793))

(declare-fun m!5260795 () Bool)

(assert (=> b!4516289 m!5260795))

(declare-fun m!5260797 () Bool)

(assert (=> start!446940 m!5260797))

(declare-fun m!5260799 () Bool)

(assert (=> start!446940 m!5260799))

(declare-fun m!5260801 () Bool)

(assert (=> b!4516296 m!5260801))

(declare-fun m!5260803 () Bool)

(assert (=> b!4516296 m!5260803))

(check-sat (not b!4516296) (not start!446940) (not b!4516286) (not b!4516298) (not b!4516282) (not b!4516292) (not b!4516294) (not b!4516291) (not b!4516289) (not b!4516299) (not b!4516285) (not b!4516293) (not b!4516295) (not b!4516301) (not b!4516300) (not b!4516304) tp_is_empty!27903 (not b!4516288) (not b!4516306) (not b!4516290) (not b!4516283) (not b!4516302) (not b!4516297) tp_is_empty!27901 (not b!4516305) (not b!4516284))
(check-sat)
(get-model)

(declare-fun d!1390266 () Bool)

(declare-fun res!1879265 () Bool)

(declare-fun e!2813670 () Bool)

(assert (=> d!1390266 (=> res!1879265 e!2813670)))

(assert (=> d!1390266 (= res!1879265 (and ((_ is Cons!50634) lt!1694146) (= (_1!28823 (h!56483 lt!1694146)) key!3287)))))

(assert (=> d!1390266 (= (containsKey!1768 lt!1694146 key!3287) e!2813670)))

(declare-fun b!4516311 () Bool)

(declare-fun e!2813671 () Bool)

(assert (=> b!4516311 (= e!2813670 e!2813671)))

(declare-fun res!1879266 () Bool)

(assert (=> b!4516311 (=> (not res!1879266) (not e!2813671))))

(assert (=> b!4516311 (= res!1879266 ((_ is Cons!50634) lt!1694146))))

(declare-fun b!4516312 () Bool)

(assert (=> b!4516312 (= e!2813671 (containsKey!1768 (t!357720 lt!1694146) key!3287))))

(assert (= (and d!1390266 (not res!1879265)) b!4516311))

(assert (= (and b!4516311 res!1879266) b!4516312))

(declare-fun m!5260805 () Bool)

(assert (=> b!4516312 m!5260805))

(assert (=> b!4516283 d!1390266))

(declare-fun d!1390268 () Bool)

(declare-fun isEmpty!28652 (List!50759) Bool)

(assert (=> d!1390268 (= (isEmpty!28651 lm!1477) (isEmpty!28652 (toList!4319 lm!1477)))))

(declare-fun bs!851645 () Bool)

(assert (= bs!851645 d!1390268))

(declare-fun m!5260807 () Bool)

(assert (=> bs!851645 m!5260807))

(assert (=> b!4516294 d!1390268))

(declare-fun bs!851646 () Bool)

(declare-fun d!1390270 () Bool)

(assert (= bs!851646 (and d!1390270 start!446940)))

(declare-fun lambda!171720 () Int)

(assert (=> bs!851646 (= lambda!171720 lambda!171717)))

(assert (=> d!1390270 (not (contains!13353 (extractMap!1212 (toList!4319 lm!1477)) key!3287))))

(declare-fun lt!1694175 () Unit!94398)

(declare-fun choose!29446 (ListLongMap!2951 K!12030 Hashable!5551) Unit!94398)

(assert (=> d!1390270 (= lt!1694175 (choose!29446 lm!1477 key!3287 hashF!1107))))

(assert (=> d!1390270 (forall!10251 (toList!4319 lm!1477) lambda!171720)))

(assert (=> d!1390270 (= (lemmaNotInItsHashBucketThenNotInMap!144 lm!1477 key!3287 hashF!1107) lt!1694175)))

(declare-fun bs!851647 () Bool)

(assert (= bs!851647 d!1390270))

(assert (=> bs!851647 m!5260791))

(assert (=> bs!851647 m!5260791))

(declare-fun m!5260809 () Bool)

(assert (=> bs!851647 m!5260809))

(declare-fun m!5260811 () Bool)

(assert (=> bs!851647 m!5260811))

(declare-fun m!5260813 () Bool)

(assert (=> bs!851647 m!5260813))

(assert (=> b!4516305 d!1390270))

(declare-fun d!1390272 () Bool)

(declare-fun hash!2795 (Hashable!5551 K!12030) (_ BitVec 64))

(assert (=> d!1390272 (= (hash!2791 hashF!1107 key!3287) (hash!2795 hashF!1107 key!3287))))

(declare-fun bs!851648 () Bool)

(assert (= bs!851648 d!1390272))

(declare-fun m!5260815 () Bool)

(assert (=> bs!851648 m!5260815))

(assert (=> b!4516292 d!1390272))

(declare-fun d!1390276 () Bool)

(declare-fun res!1879271 () Bool)

(declare-fun e!2813676 () Bool)

(assert (=> d!1390276 (=> res!1879271 e!2813676)))

(assert (=> d!1390276 (= res!1879271 ((_ is Nil!50635) (toList!4319 lm!1477)))))

(assert (=> d!1390276 (= (forall!10251 (toList!4319 lm!1477) lambda!171717) e!2813676)))

(declare-fun b!4516317 () Bool)

(declare-fun e!2813677 () Bool)

(assert (=> b!4516317 (= e!2813676 e!2813677)))

(declare-fun res!1879272 () Bool)

(assert (=> b!4516317 (=> (not res!1879272) (not e!2813677))))

(declare-fun dynLambda!21155 (Int tuple2!51060) Bool)

(assert (=> b!4516317 (= res!1879272 (dynLambda!21155 lambda!171717 (h!56484 (toList!4319 lm!1477))))))

(declare-fun b!4516318 () Bool)

(assert (=> b!4516318 (= e!2813677 (forall!10251 (t!357721 (toList!4319 lm!1477)) lambda!171717))))

(assert (= (and d!1390276 (not res!1879271)) b!4516317))

(assert (= (and b!4516317 res!1879272) b!4516318))

(declare-fun b_lambda!154373 () Bool)

(assert (=> (not b_lambda!154373) (not b!4516317)))

(declare-fun m!5260823 () Bool)

(assert (=> b!4516317 m!5260823))

(declare-fun m!5260825 () Bool)

(assert (=> b!4516318 m!5260825))

(assert (=> start!446940 d!1390276))

(declare-fun d!1390282 () Bool)

(declare-fun isStrictlySorted!427 (List!50759) Bool)

(assert (=> d!1390282 (= (inv!66214 lm!1477) (isStrictlySorted!427 (toList!4319 lm!1477)))))

(declare-fun bs!851651 () Bool)

(assert (= bs!851651 d!1390282))

(declare-fun m!5260827 () Bool)

(assert (=> bs!851651 m!5260827))

(assert (=> start!446940 d!1390282))

(declare-fun d!1390284 () Bool)

(declare-datatypes ((Option!11103 0))(
  ( (None!11102) (Some!11102 (v!44686 List!50758)) )
))
(declare-fun get!16578 (Option!11103) List!50758)

(declare-fun getValueByKey!1083 (List!50759 (_ BitVec 64)) Option!11103)

(assert (=> d!1390284 (= (apply!11893 lt!1694164 hash!344) (get!16578 (getValueByKey!1083 (toList!4319 lt!1694164) hash!344)))))

(declare-fun bs!851652 () Bool)

(assert (= bs!851652 d!1390284))

(declare-fun m!5260829 () Bool)

(assert (=> bs!851652 m!5260829))

(assert (=> bs!851652 m!5260829))

(declare-fun m!5260831 () Bool)

(assert (=> bs!851652 m!5260831))

(assert (=> b!4516282 d!1390284))

(declare-fun d!1390286 () Bool)

(declare-fun res!1879277 () Bool)

(declare-fun e!2813682 () Bool)

(assert (=> d!1390286 (=> res!1879277 e!2813682)))

(assert (=> d!1390286 (= res!1879277 (not ((_ is Cons!50634) newBucket!178)))))

(assert (=> d!1390286 (= (noDuplicateKeys!1156 newBucket!178) e!2813682)))

(declare-fun b!4516323 () Bool)

(declare-fun e!2813683 () Bool)

(assert (=> b!4516323 (= e!2813682 e!2813683)))

(declare-fun res!1879278 () Bool)

(assert (=> b!4516323 (=> (not res!1879278) (not e!2813683))))

(assert (=> b!4516323 (= res!1879278 (not (containsKey!1768 (t!357720 newBucket!178) (_1!28823 (h!56483 newBucket!178)))))))

(declare-fun b!4516324 () Bool)

(assert (=> b!4516324 (= e!2813683 (noDuplicateKeys!1156 (t!357720 newBucket!178)))))

(assert (= (and d!1390286 (not res!1879277)) b!4516323))

(assert (= (and b!4516323 res!1879278) b!4516324))

(declare-fun m!5260833 () Bool)

(assert (=> b!4516323 m!5260833))

(declare-fun m!5260835 () Bool)

(assert (=> b!4516324 m!5260835))

(assert (=> b!4516293 d!1390286))

(declare-fun d!1390288 () Bool)

(declare-fun e!2813688 () Bool)

(assert (=> d!1390288 e!2813688))

(declare-fun res!1879281 () Bool)

(assert (=> d!1390288 (=> res!1879281 e!2813688)))

(declare-fun lt!1694186 () Bool)

(assert (=> d!1390288 (= res!1879281 (not lt!1694186))))

(declare-fun lt!1694184 () Bool)

(assert (=> d!1390288 (= lt!1694186 lt!1694184)))

(declare-fun lt!1694187 () Unit!94398)

(declare-fun e!2813689 () Unit!94398)

(assert (=> d!1390288 (= lt!1694187 e!2813689)))

(declare-fun c!770534 () Bool)

(assert (=> d!1390288 (= c!770534 lt!1694184)))

(declare-fun containsKey!1770 (List!50759 (_ BitVec 64)) Bool)

(assert (=> d!1390288 (= lt!1694184 (containsKey!1770 (toList!4319 lt!1694164) hash!344))))

(assert (=> d!1390288 (= (contains!13352 lt!1694164 hash!344) lt!1694186)))

(declare-fun b!4516331 () Bool)

(declare-fun lt!1694185 () Unit!94398)

(assert (=> b!4516331 (= e!2813689 lt!1694185)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!987 (List!50759 (_ BitVec 64)) Unit!94398)

(assert (=> b!4516331 (= lt!1694185 (lemmaContainsKeyImpliesGetValueByKeyDefined!987 (toList!4319 lt!1694164) hash!344))))

(declare-fun isDefined!8390 (Option!11103) Bool)

(assert (=> b!4516331 (isDefined!8390 (getValueByKey!1083 (toList!4319 lt!1694164) hash!344))))

(declare-fun b!4516332 () Bool)

(declare-fun Unit!94414 () Unit!94398)

(assert (=> b!4516332 (= e!2813689 Unit!94414)))

(declare-fun b!4516333 () Bool)

(assert (=> b!4516333 (= e!2813688 (isDefined!8390 (getValueByKey!1083 (toList!4319 lt!1694164) hash!344)))))

(assert (= (and d!1390288 c!770534) b!4516331))

(assert (= (and d!1390288 (not c!770534)) b!4516332))

(assert (= (and d!1390288 (not res!1879281)) b!4516333))

(declare-fun m!5260837 () Bool)

(assert (=> d!1390288 m!5260837))

(declare-fun m!5260839 () Bool)

(assert (=> b!4516331 m!5260839))

(assert (=> b!4516331 m!5260829))

(assert (=> b!4516331 m!5260829))

(declare-fun m!5260841 () Bool)

(assert (=> b!4516331 m!5260841))

(assert (=> b!4516333 m!5260829))

(assert (=> b!4516333 m!5260829))

(assert (=> b!4516333 m!5260841))

(assert (=> b!4516296 d!1390288))

(declare-fun d!1390290 () Bool)

(declare-fun tail!7727 (List!50759) List!50759)

(assert (=> d!1390290 (= (tail!7726 lm!1477) (ListLongMap!2952 (tail!7727 (toList!4319 lm!1477))))))

(declare-fun bs!851653 () Bool)

(assert (= bs!851653 d!1390290))

(declare-fun m!5260843 () Bool)

(assert (=> bs!851653 m!5260843))

(assert (=> b!4516296 d!1390290))

(declare-fun b!4516352 () Bool)

(declare-fun e!2813704 () Unit!94398)

(declare-fun lt!1694208 () Unit!94398)

(assert (=> b!4516352 (= e!2813704 lt!1694208)))

(declare-fun lt!1694209 () Unit!94398)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!988 (List!50758 K!12030) Unit!94398)

(assert (=> b!4516352 (= lt!1694209 (lemmaContainsKeyImpliesGetValueByKeyDefined!988 (toList!4320 lt!1694148) key!3287))))

(declare-datatypes ((Option!11104 0))(
  ( (None!11103) (Some!11103 (v!44687 V!12276)) )
))
(declare-fun isDefined!8391 (Option!11104) Bool)

(declare-fun getValueByKey!1084 (List!50758 K!12030) Option!11104)

(assert (=> b!4516352 (isDefined!8391 (getValueByKey!1084 (toList!4320 lt!1694148) key!3287))))

(declare-fun lt!1694207 () Unit!94398)

(assert (=> b!4516352 (= lt!1694207 lt!1694209)))

(declare-fun lemmaInListThenGetKeysListContains!456 (List!50758 K!12030) Unit!94398)

(assert (=> b!4516352 (= lt!1694208 (lemmaInListThenGetKeysListContains!456 (toList!4320 lt!1694148) key!3287))))

(declare-fun call!314566 () Bool)

(assert (=> b!4516352 call!314566))

(declare-fun b!4516353 () Bool)

(declare-fun e!2813707 () Unit!94398)

(assert (=> b!4516353 (= e!2813704 e!2813707)))

(declare-fun c!770543 () Bool)

(assert (=> b!4516353 (= c!770543 call!314566)))

(declare-fun b!4516354 () Bool)

(declare-fun Unit!94415 () Unit!94398)

(assert (=> b!4516354 (= e!2813707 Unit!94415)))

(declare-fun bm!314561 () Bool)

(declare-datatypes ((List!50761 0))(
  ( (Nil!50637) (Cons!50637 (h!56488 K!12030) (t!357723 List!50761)) )
))
(declare-fun e!2813702 () List!50761)

(declare-fun contains!13354 (List!50761 K!12030) Bool)

(assert (=> bm!314561 (= call!314566 (contains!13354 e!2813702 key!3287))))

(declare-fun c!770542 () Bool)

(declare-fun c!770541 () Bool)

(assert (=> bm!314561 (= c!770542 c!770541)))

(declare-fun b!4516355 () Bool)

(declare-fun keys!17586 (ListMap!3581) List!50761)

(assert (=> b!4516355 (= e!2813702 (keys!17586 lt!1694148))))

(declare-fun b!4516356 () Bool)

(declare-fun e!2813706 () Bool)

(declare-fun e!2813705 () Bool)

(assert (=> b!4516356 (= e!2813706 e!2813705)))

(declare-fun res!1879289 () Bool)

(assert (=> b!4516356 (=> (not res!1879289) (not e!2813705))))

(assert (=> b!4516356 (= res!1879289 (isDefined!8391 (getValueByKey!1084 (toList!4320 lt!1694148) key!3287)))))

(declare-fun d!1390292 () Bool)

(assert (=> d!1390292 e!2813706))

(declare-fun res!1879290 () Bool)

(assert (=> d!1390292 (=> res!1879290 e!2813706)))

(declare-fun e!2813703 () Bool)

(assert (=> d!1390292 (= res!1879290 e!2813703)))

(declare-fun res!1879288 () Bool)

(assert (=> d!1390292 (=> (not res!1879288) (not e!2813703))))

(declare-fun lt!1694211 () Bool)

(assert (=> d!1390292 (= res!1879288 (not lt!1694211))))

(declare-fun lt!1694204 () Bool)

(assert (=> d!1390292 (= lt!1694211 lt!1694204)))

(declare-fun lt!1694205 () Unit!94398)

(assert (=> d!1390292 (= lt!1694205 e!2813704)))

(assert (=> d!1390292 (= c!770541 lt!1694204)))

(declare-fun containsKey!1771 (List!50758 K!12030) Bool)

(assert (=> d!1390292 (= lt!1694204 (containsKey!1771 (toList!4320 lt!1694148) key!3287))))

(assert (=> d!1390292 (= (contains!13353 lt!1694148 key!3287) lt!1694211)))

(declare-fun b!4516357 () Bool)

(assert (=> b!4516357 (= e!2813703 (not (contains!13354 (keys!17586 lt!1694148) key!3287)))))

(declare-fun b!4516358 () Bool)

(assert (=> b!4516358 (= e!2813705 (contains!13354 (keys!17586 lt!1694148) key!3287))))

(declare-fun b!4516359 () Bool)

(declare-fun getKeysList!461 (List!50758) List!50761)

(assert (=> b!4516359 (= e!2813702 (getKeysList!461 (toList!4320 lt!1694148)))))

(declare-fun b!4516360 () Bool)

(assert (=> b!4516360 false))

(declare-fun lt!1694206 () Unit!94398)

(declare-fun lt!1694210 () Unit!94398)

(assert (=> b!4516360 (= lt!1694206 lt!1694210)))

(assert (=> b!4516360 (containsKey!1771 (toList!4320 lt!1694148) key!3287)))

(declare-fun lemmaInGetKeysListThenContainsKey!459 (List!50758 K!12030) Unit!94398)

(assert (=> b!4516360 (= lt!1694210 (lemmaInGetKeysListThenContainsKey!459 (toList!4320 lt!1694148) key!3287))))

(declare-fun Unit!94417 () Unit!94398)

(assert (=> b!4516360 (= e!2813707 Unit!94417)))

(assert (= (and d!1390292 c!770541) b!4516352))

(assert (= (and d!1390292 (not c!770541)) b!4516353))

(assert (= (and b!4516353 c!770543) b!4516360))

(assert (= (and b!4516353 (not c!770543)) b!4516354))

(assert (= (or b!4516352 b!4516353) bm!314561))

(assert (= (and bm!314561 c!770542) b!4516359))

(assert (= (and bm!314561 (not c!770542)) b!4516355))

(assert (= (and d!1390292 res!1879288) b!4516357))

(assert (= (and d!1390292 (not res!1879290)) b!4516356))

(assert (= (and b!4516356 res!1879289) b!4516358))

(declare-fun m!5260845 () Bool)

(assert (=> b!4516356 m!5260845))

(assert (=> b!4516356 m!5260845))

(declare-fun m!5260847 () Bool)

(assert (=> b!4516356 m!5260847))

(declare-fun m!5260849 () Bool)

(assert (=> b!4516352 m!5260849))

(assert (=> b!4516352 m!5260845))

(assert (=> b!4516352 m!5260845))

(assert (=> b!4516352 m!5260847))

(declare-fun m!5260851 () Bool)

(assert (=> b!4516352 m!5260851))

(declare-fun m!5260853 () Bool)

(assert (=> b!4516357 m!5260853))

(assert (=> b!4516357 m!5260853))

(declare-fun m!5260855 () Bool)

(assert (=> b!4516357 m!5260855))

(declare-fun m!5260857 () Bool)

(assert (=> b!4516360 m!5260857))

(declare-fun m!5260859 () Bool)

(assert (=> b!4516360 m!5260859))

(declare-fun m!5260861 () Bool)

(assert (=> b!4516359 m!5260861))

(assert (=> b!4516355 m!5260853))

(assert (=> d!1390292 m!5260857))

(assert (=> b!4516358 m!5260853))

(assert (=> b!4516358 m!5260853))

(assert (=> b!4516358 m!5260855))

(declare-fun m!5260863 () Bool)

(assert (=> bm!314561 m!5260863))

(assert (=> b!4516286 d!1390292))

(declare-fun bs!851654 () Bool)

(declare-fun d!1390294 () Bool)

(assert (= bs!851654 (and d!1390294 start!446940)))

(declare-fun lambda!171751 () Int)

(assert (=> bs!851654 (= lambda!171751 lambda!171717)))

(declare-fun bs!851655 () Bool)

(assert (= bs!851655 (and d!1390294 d!1390270)))

(assert (=> bs!851655 (= lambda!171751 lambda!171720)))

(declare-fun lt!1694256 () ListMap!3581)

(declare-fun invariantList!1013 (List!50758) Bool)

(assert (=> d!1390294 (invariantList!1013 (toList!4320 lt!1694256))))

(declare-fun e!2813716 () ListMap!3581)

(assert (=> d!1390294 (= lt!1694256 e!2813716)))

(declare-fun c!770548 () Bool)

(assert (=> d!1390294 (= c!770548 ((_ is Cons!50635) (toList!4319 lm!1477)))))

(assert (=> d!1390294 (forall!10251 (toList!4319 lm!1477) lambda!171751)))

(assert (=> d!1390294 (= (extractMap!1212 (toList!4319 lm!1477)) lt!1694256)))

(declare-fun b!4516375 () Bool)

(assert (=> b!4516375 (= e!2813716 (addToMapMapFromBucket!683 (_2!28824 (h!56484 (toList!4319 lm!1477))) (extractMap!1212 (t!357721 (toList!4319 lm!1477)))))))

(declare-fun b!4516376 () Bool)

(assert (=> b!4516376 (= e!2813716 (ListMap!3582 Nil!50634))))

(assert (= (and d!1390294 c!770548) b!4516375))

(assert (= (and d!1390294 (not c!770548)) b!4516376))

(declare-fun m!5260865 () Bool)

(assert (=> d!1390294 m!5260865))

(declare-fun m!5260867 () Bool)

(assert (=> d!1390294 m!5260867))

(assert (=> b!4516375 m!5260733))

(assert (=> b!4516375 m!5260733))

(declare-fun m!5260869 () Bool)

(assert (=> b!4516375 m!5260869))

(assert (=> b!4516286 d!1390294))

(declare-fun b!4516377 () Bool)

(declare-fun e!2813719 () Unit!94398)

(declare-fun lt!1694261 () Unit!94398)

(assert (=> b!4516377 (= e!2813719 lt!1694261)))

(declare-fun lt!1694262 () Unit!94398)

(assert (=> b!4516377 (= lt!1694262 (lemmaContainsKeyImpliesGetValueByKeyDefined!988 (toList!4320 (extractMap!1212 (t!357721 (toList!4319 lm!1477)))) key!3287))))

(assert (=> b!4516377 (isDefined!8391 (getValueByKey!1084 (toList!4320 (extractMap!1212 (t!357721 (toList!4319 lm!1477)))) key!3287))))

(declare-fun lt!1694260 () Unit!94398)

(assert (=> b!4516377 (= lt!1694260 lt!1694262)))

(assert (=> b!4516377 (= lt!1694261 (lemmaInListThenGetKeysListContains!456 (toList!4320 (extractMap!1212 (t!357721 (toList!4319 lm!1477)))) key!3287))))

(declare-fun call!314573 () Bool)

(assert (=> b!4516377 call!314573))

(declare-fun b!4516378 () Bool)

(declare-fun e!2813722 () Unit!94398)

(assert (=> b!4516378 (= e!2813719 e!2813722)))

(declare-fun c!770551 () Bool)

(assert (=> b!4516378 (= c!770551 call!314573)))

(declare-fun b!4516379 () Bool)

(declare-fun Unit!94419 () Unit!94398)

(assert (=> b!4516379 (= e!2813722 Unit!94419)))

(declare-fun bm!314568 () Bool)

(declare-fun e!2813717 () List!50761)

(assert (=> bm!314568 (= call!314573 (contains!13354 e!2813717 key!3287))))

(declare-fun c!770550 () Bool)

(declare-fun c!770549 () Bool)

(assert (=> bm!314568 (= c!770550 c!770549)))

(declare-fun b!4516380 () Bool)

(assert (=> b!4516380 (= e!2813717 (keys!17586 (extractMap!1212 (t!357721 (toList!4319 lm!1477)))))))

(declare-fun b!4516381 () Bool)

(declare-fun e!2813721 () Bool)

(declare-fun e!2813720 () Bool)

(assert (=> b!4516381 (= e!2813721 e!2813720)))

(declare-fun res!1879298 () Bool)

(assert (=> b!4516381 (=> (not res!1879298) (not e!2813720))))

(assert (=> b!4516381 (= res!1879298 (isDefined!8391 (getValueByKey!1084 (toList!4320 (extractMap!1212 (t!357721 (toList!4319 lm!1477)))) key!3287)))))

(declare-fun d!1390296 () Bool)

(assert (=> d!1390296 e!2813721))

(declare-fun res!1879299 () Bool)

(assert (=> d!1390296 (=> res!1879299 e!2813721)))

(declare-fun e!2813718 () Bool)

(assert (=> d!1390296 (= res!1879299 e!2813718)))

(declare-fun res!1879297 () Bool)

(assert (=> d!1390296 (=> (not res!1879297) (not e!2813718))))

(declare-fun lt!1694264 () Bool)

(assert (=> d!1390296 (= res!1879297 (not lt!1694264))))

(declare-fun lt!1694257 () Bool)

(assert (=> d!1390296 (= lt!1694264 lt!1694257)))

(declare-fun lt!1694258 () Unit!94398)

(assert (=> d!1390296 (= lt!1694258 e!2813719)))

(assert (=> d!1390296 (= c!770549 lt!1694257)))

(assert (=> d!1390296 (= lt!1694257 (containsKey!1771 (toList!4320 (extractMap!1212 (t!357721 (toList!4319 lm!1477)))) key!3287))))

(assert (=> d!1390296 (= (contains!13353 (extractMap!1212 (t!357721 (toList!4319 lm!1477))) key!3287) lt!1694264)))

(declare-fun b!4516382 () Bool)

(assert (=> b!4516382 (= e!2813718 (not (contains!13354 (keys!17586 (extractMap!1212 (t!357721 (toList!4319 lm!1477)))) key!3287)))))

(declare-fun b!4516383 () Bool)

(assert (=> b!4516383 (= e!2813720 (contains!13354 (keys!17586 (extractMap!1212 (t!357721 (toList!4319 lm!1477)))) key!3287))))

(declare-fun b!4516384 () Bool)

(assert (=> b!4516384 (= e!2813717 (getKeysList!461 (toList!4320 (extractMap!1212 (t!357721 (toList!4319 lm!1477))))))))

(declare-fun b!4516385 () Bool)

(assert (=> b!4516385 false))

(declare-fun lt!1694259 () Unit!94398)

(declare-fun lt!1694263 () Unit!94398)

(assert (=> b!4516385 (= lt!1694259 lt!1694263)))

(assert (=> b!4516385 (containsKey!1771 (toList!4320 (extractMap!1212 (t!357721 (toList!4319 lm!1477)))) key!3287)))

(assert (=> b!4516385 (= lt!1694263 (lemmaInGetKeysListThenContainsKey!459 (toList!4320 (extractMap!1212 (t!357721 (toList!4319 lm!1477)))) key!3287))))

(declare-fun Unit!94420 () Unit!94398)

(assert (=> b!4516385 (= e!2813722 Unit!94420)))

(assert (= (and d!1390296 c!770549) b!4516377))

(assert (= (and d!1390296 (not c!770549)) b!4516378))

(assert (= (and b!4516378 c!770551) b!4516385))

(assert (= (and b!4516378 (not c!770551)) b!4516379))

(assert (= (or b!4516377 b!4516378) bm!314568))

(assert (= (and bm!314568 c!770550) b!4516384))

(assert (= (and bm!314568 (not c!770550)) b!4516380))

(assert (= (and d!1390296 res!1879297) b!4516382))

(assert (= (and d!1390296 (not res!1879299)) b!4516381))

(assert (= (and b!4516381 res!1879298) b!4516383))

(declare-fun m!5260871 () Bool)

(assert (=> b!4516381 m!5260871))

(assert (=> b!4516381 m!5260871))

(declare-fun m!5260873 () Bool)

(assert (=> b!4516381 m!5260873))

(declare-fun m!5260875 () Bool)

(assert (=> b!4516377 m!5260875))

(assert (=> b!4516377 m!5260871))

(assert (=> b!4516377 m!5260871))

(assert (=> b!4516377 m!5260873))

(declare-fun m!5260877 () Bool)

(assert (=> b!4516377 m!5260877))

(assert (=> b!4516382 m!5260733))

(declare-fun m!5260879 () Bool)

(assert (=> b!4516382 m!5260879))

(assert (=> b!4516382 m!5260879))

(declare-fun m!5260881 () Bool)

(assert (=> b!4516382 m!5260881))

(declare-fun m!5260883 () Bool)

(assert (=> b!4516385 m!5260883))

(declare-fun m!5260885 () Bool)

(assert (=> b!4516385 m!5260885))

(declare-fun m!5260887 () Bool)

(assert (=> b!4516384 m!5260887))

(assert (=> b!4516380 m!5260733))

(assert (=> b!4516380 m!5260879))

(assert (=> d!1390296 m!5260883))

(assert (=> b!4516383 m!5260733))

(assert (=> b!4516383 m!5260879))

(assert (=> b!4516383 m!5260879))

(assert (=> b!4516383 m!5260881))

(declare-fun m!5260889 () Bool)

(assert (=> bm!314568 m!5260889))

(assert (=> b!4516297 d!1390296))

(declare-fun bs!851657 () Bool)

(declare-fun d!1390298 () Bool)

(assert (= bs!851657 (and d!1390298 start!446940)))

(declare-fun lambda!171755 () Int)

(assert (=> bs!851657 (= lambda!171755 lambda!171717)))

(declare-fun bs!851660 () Bool)

(assert (= bs!851660 (and d!1390298 d!1390270)))

(assert (=> bs!851660 (= lambda!171755 lambda!171720)))

(declare-fun bs!851661 () Bool)

(assert (= bs!851661 (and d!1390298 d!1390294)))

(assert (=> bs!851661 (= lambda!171755 lambda!171751)))

(declare-fun lt!1694286 () ListMap!3581)

(assert (=> d!1390298 (invariantList!1013 (toList!4320 lt!1694286))))

(declare-fun e!2813726 () ListMap!3581)

(assert (=> d!1390298 (= lt!1694286 e!2813726)))

(declare-fun c!770553 () Bool)

(assert (=> d!1390298 (= c!770553 ((_ is Cons!50635) (t!357721 (toList!4319 lm!1477))))))

(assert (=> d!1390298 (forall!10251 (t!357721 (toList!4319 lm!1477)) lambda!171755)))

(assert (=> d!1390298 (= (extractMap!1212 (t!357721 (toList!4319 lm!1477))) lt!1694286)))

(declare-fun b!4516393 () Bool)

(assert (=> b!4516393 (= e!2813726 (addToMapMapFromBucket!683 (_2!28824 (h!56484 (t!357721 (toList!4319 lm!1477)))) (extractMap!1212 (t!357721 (t!357721 (toList!4319 lm!1477))))))))

(declare-fun b!4516394 () Bool)

(assert (=> b!4516394 (= e!2813726 (ListMap!3582 Nil!50634))))

(assert (= (and d!1390298 c!770553) b!4516393))

(assert (= (and d!1390298 (not c!770553)) b!4516394))

(declare-fun m!5260891 () Bool)

(assert (=> d!1390298 m!5260891))

(declare-fun m!5260893 () Bool)

(assert (=> d!1390298 m!5260893))

(declare-fun m!5260895 () Bool)

(assert (=> b!4516393 m!5260895))

(assert (=> b!4516393 m!5260895))

(declare-fun m!5260897 () Bool)

(assert (=> b!4516393 m!5260897))

(assert (=> b!4516297 d!1390298))

(declare-fun bs!851667 () Bool)

(declare-fun d!1390300 () Bool)

(assert (= bs!851667 (and d!1390300 start!446940)))

(declare-fun lambda!171762 () Int)

(assert (=> bs!851667 (= lambda!171762 lambda!171717)))

(declare-fun bs!851668 () Bool)

(assert (= bs!851668 (and d!1390300 d!1390270)))

(assert (=> bs!851668 (= lambda!171762 lambda!171720)))

(declare-fun bs!851669 () Bool)

(assert (= bs!851669 (and d!1390300 d!1390294)))

(assert (=> bs!851669 (= lambda!171762 lambda!171751)))

(declare-fun bs!851670 () Bool)

(assert (= bs!851670 (and d!1390300 d!1390298)))

(assert (=> bs!851670 (= lambda!171762 lambda!171755)))

(assert (=> d!1390300 (contains!13353 (extractMap!1212 (toList!4319 lt!1694164)) key!3287)))

(declare-fun lt!1694292 () Unit!94398)

(declare-fun choose!29447 (ListLongMap!2951 K!12030 Hashable!5551) Unit!94398)

(assert (=> d!1390300 (= lt!1694292 (choose!29447 lt!1694164 key!3287 hashF!1107))))

(assert (=> d!1390300 (forall!10251 (toList!4319 lt!1694164) lambda!171762)))

(assert (=> d!1390300 (= (lemmaListContainsThenExtractedMapContains!126 lt!1694164 key!3287 hashF!1107) lt!1694292)))

(declare-fun bs!851671 () Bool)

(assert (= bs!851671 d!1390300))

(assert (=> bs!851671 m!5260735))

(assert (=> bs!851671 m!5260735))

(declare-fun m!5260947 () Bool)

(assert (=> bs!851671 m!5260947))

(declare-fun m!5260949 () Bool)

(assert (=> bs!851671 m!5260949))

(declare-fun m!5260951 () Bool)

(assert (=> bs!851671 m!5260951))

(assert (=> b!4516297 d!1390300))

(declare-fun bs!851672 () Bool)

(declare-fun d!1390314 () Bool)

(assert (= bs!851672 (and d!1390314 d!1390298)))

(declare-fun lambda!171763 () Int)

(assert (=> bs!851672 (= lambda!171763 lambda!171755)))

(declare-fun bs!851673 () Bool)

(assert (= bs!851673 (and d!1390314 d!1390294)))

(assert (=> bs!851673 (= lambda!171763 lambda!171751)))

(declare-fun bs!851674 () Bool)

(assert (= bs!851674 (and d!1390314 d!1390270)))

(assert (=> bs!851674 (= lambda!171763 lambda!171720)))

(declare-fun bs!851675 () Bool)

(assert (= bs!851675 (and d!1390314 start!446940)))

(assert (=> bs!851675 (= lambda!171763 lambda!171717)))

(declare-fun bs!851676 () Bool)

(assert (= bs!851676 (and d!1390314 d!1390300)))

(assert (=> bs!851676 (= lambda!171763 lambda!171762)))

(declare-fun lt!1694295 () ListMap!3581)

(assert (=> d!1390314 (invariantList!1013 (toList!4320 lt!1694295))))

(declare-fun e!2813737 () ListMap!3581)

(assert (=> d!1390314 (= lt!1694295 e!2813737)))

(declare-fun c!770558 () Bool)

(assert (=> d!1390314 (= c!770558 ((_ is Cons!50635) (toList!4319 lt!1694164)))))

(assert (=> d!1390314 (forall!10251 (toList!4319 lt!1694164) lambda!171763)))

(assert (=> d!1390314 (= (extractMap!1212 (toList!4319 lt!1694164)) lt!1694295)))

(declare-fun b!4516411 () Bool)

(assert (=> b!4516411 (= e!2813737 (addToMapMapFromBucket!683 (_2!28824 (h!56484 (toList!4319 lt!1694164))) (extractMap!1212 (t!357721 (toList!4319 lt!1694164)))))))

(declare-fun b!4516412 () Bool)

(assert (=> b!4516412 (= e!2813737 (ListMap!3582 Nil!50634))))

(assert (= (and d!1390314 c!770558) b!4516411))

(assert (= (and d!1390314 (not c!770558)) b!4516412))

(declare-fun m!5260959 () Bool)

(assert (=> d!1390314 m!5260959))

(declare-fun m!5260961 () Bool)

(assert (=> d!1390314 m!5260961))

(declare-fun m!5260963 () Bool)

(assert (=> b!4516411 m!5260963))

(assert (=> b!4516411 m!5260963))

(declare-fun m!5260965 () Bool)

(assert (=> b!4516411 m!5260965))

(assert (=> b!4516297 d!1390314))

(declare-fun b!4516417 () Bool)

(declare-fun e!2813742 () Unit!94398)

(declare-fun lt!1694301 () Unit!94398)

(assert (=> b!4516417 (= e!2813742 lt!1694301)))

(declare-fun lt!1694302 () Unit!94398)

(assert (=> b!4516417 (= lt!1694302 (lemmaContainsKeyImpliesGetValueByKeyDefined!988 (toList!4320 lt!1694159) key!3287))))

(assert (=> b!4516417 (isDefined!8391 (getValueByKey!1084 (toList!4320 lt!1694159) key!3287))))

(declare-fun lt!1694300 () Unit!94398)

(assert (=> b!4516417 (= lt!1694300 lt!1694302)))

(assert (=> b!4516417 (= lt!1694301 (lemmaInListThenGetKeysListContains!456 (toList!4320 lt!1694159) key!3287))))

(declare-fun call!314577 () Bool)

(assert (=> b!4516417 call!314577))

(declare-fun b!4516418 () Bool)

(declare-fun e!2813745 () Unit!94398)

(assert (=> b!4516418 (= e!2813742 e!2813745)))

(declare-fun c!770563 () Bool)

(assert (=> b!4516418 (= c!770563 call!314577)))

(declare-fun b!4516419 () Bool)

(declare-fun Unit!94421 () Unit!94398)

(assert (=> b!4516419 (= e!2813745 Unit!94421)))

(declare-fun bm!314572 () Bool)

(declare-fun e!2813740 () List!50761)

(assert (=> bm!314572 (= call!314577 (contains!13354 e!2813740 key!3287))))

(declare-fun c!770562 () Bool)

(declare-fun c!770561 () Bool)

(assert (=> bm!314572 (= c!770562 c!770561)))

(declare-fun b!4516420 () Bool)

(assert (=> b!4516420 (= e!2813740 (keys!17586 lt!1694159))))

(declare-fun b!4516421 () Bool)

(declare-fun e!2813744 () Bool)

(declare-fun e!2813743 () Bool)

(assert (=> b!4516421 (= e!2813744 e!2813743)))

(declare-fun res!1879310 () Bool)

(assert (=> b!4516421 (=> (not res!1879310) (not e!2813743))))

(assert (=> b!4516421 (= res!1879310 (isDefined!8391 (getValueByKey!1084 (toList!4320 lt!1694159) key!3287)))))

(declare-fun d!1390318 () Bool)

(assert (=> d!1390318 e!2813744))

(declare-fun res!1879311 () Bool)

(assert (=> d!1390318 (=> res!1879311 e!2813744)))

(declare-fun e!2813741 () Bool)

(assert (=> d!1390318 (= res!1879311 e!2813741)))

(declare-fun res!1879309 () Bool)

(assert (=> d!1390318 (=> (not res!1879309) (not e!2813741))))

(declare-fun lt!1694304 () Bool)

(assert (=> d!1390318 (= res!1879309 (not lt!1694304))))

(declare-fun lt!1694297 () Bool)

(assert (=> d!1390318 (= lt!1694304 lt!1694297)))

(declare-fun lt!1694298 () Unit!94398)

(assert (=> d!1390318 (= lt!1694298 e!2813742)))

(assert (=> d!1390318 (= c!770561 lt!1694297)))

(assert (=> d!1390318 (= lt!1694297 (containsKey!1771 (toList!4320 lt!1694159) key!3287))))

(assert (=> d!1390318 (= (contains!13353 lt!1694159 key!3287) lt!1694304)))

(declare-fun b!4516422 () Bool)

(assert (=> b!4516422 (= e!2813741 (not (contains!13354 (keys!17586 lt!1694159) key!3287)))))

(declare-fun b!4516423 () Bool)

(assert (=> b!4516423 (= e!2813743 (contains!13354 (keys!17586 lt!1694159) key!3287))))

(declare-fun b!4516424 () Bool)

(assert (=> b!4516424 (= e!2813740 (getKeysList!461 (toList!4320 lt!1694159)))))

(declare-fun b!4516425 () Bool)

(assert (=> b!4516425 false))

(declare-fun lt!1694299 () Unit!94398)

(declare-fun lt!1694303 () Unit!94398)

(assert (=> b!4516425 (= lt!1694299 lt!1694303)))

(assert (=> b!4516425 (containsKey!1771 (toList!4320 lt!1694159) key!3287)))

(assert (=> b!4516425 (= lt!1694303 (lemmaInGetKeysListThenContainsKey!459 (toList!4320 lt!1694159) key!3287))))

(declare-fun Unit!94422 () Unit!94398)

(assert (=> b!4516425 (= e!2813745 Unit!94422)))

(assert (= (and d!1390318 c!770561) b!4516417))

(assert (= (and d!1390318 (not c!770561)) b!4516418))

(assert (= (and b!4516418 c!770563) b!4516425))

(assert (= (and b!4516418 (not c!770563)) b!4516419))

(assert (= (or b!4516417 b!4516418) bm!314572))

(assert (= (and bm!314572 c!770562) b!4516424))

(assert (= (and bm!314572 (not c!770562)) b!4516420))

(assert (= (and d!1390318 res!1879309) b!4516422))

(assert (= (and d!1390318 (not res!1879311)) b!4516421))

(assert (= (and b!4516421 res!1879310) b!4516423))

(declare-fun m!5260967 () Bool)

(assert (=> b!4516421 m!5260967))

(assert (=> b!4516421 m!5260967))

(declare-fun m!5260969 () Bool)

(assert (=> b!4516421 m!5260969))

(declare-fun m!5260971 () Bool)

(assert (=> b!4516417 m!5260971))

(assert (=> b!4516417 m!5260967))

(assert (=> b!4516417 m!5260967))

(assert (=> b!4516417 m!5260969))

(declare-fun m!5260973 () Bool)

(assert (=> b!4516417 m!5260973))

(declare-fun m!5260975 () Bool)

(assert (=> b!4516422 m!5260975))

(assert (=> b!4516422 m!5260975))

(declare-fun m!5260977 () Bool)

(assert (=> b!4516422 m!5260977))

(declare-fun m!5260979 () Bool)

(assert (=> b!4516425 m!5260979))

(declare-fun m!5260981 () Bool)

(assert (=> b!4516425 m!5260981))

(declare-fun m!5260983 () Bool)

(assert (=> b!4516424 m!5260983))

(assert (=> b!4516420 m!5260975))

(assert (=> d!1390318 m!5260979))

(assert (=> b!4516423 m!5260975))

(assert (=> b!4516423 m!5260975))

(assert (=> b!4516423 m!5260977))

(declare-fun m!5260985 () Bool)

(assert (=> bm!314572 m!5260985))

(assert (=> b!4516297 d!1390318))

(declare-fun d!1390320 () Bool)

(declare-fun head!9406 (List!50759) tuple2!51060)

(assert (=> d!1390320 (= (head!9404 lt!1694165) (head!9406 (toList!4319 lt!1694165)))))

(declare-fun bs!851680 () Bool)

(assert (= bs!851680 d!1390320))

(declare-fun m!5260993 () Bool)

(assert (=> bs!851680 m!5260993))

(assert (=> b!4516284 d!1390320))

(declare-fun bs!851681 () Bool)

(declare-fun d!1390324 () Bool)

(assert (= bs!851681 (and d!1390324 d!1390298)))

(declare-fun lambda!171769 () Int)

(assert (=> bs!851681 (not (= lambda!171769 lambda!171755))))

(declare-fun bs!851682 () Bool)

(assert (= bs!851682 (and d!1390324 d!1390270)))

(assert (=> bs!851682 (not (= lambda!171769 lambda!171720))))

(declare-fun bs!851683 () Bool)

(assert (= bs!851683 (and d!1390324 start!446940)))

(assert (=> bs!851683 (not (= lambda!171769 lambda!171717))))

(declare-fun bs!851684 () Bool)

(assert (= bs!851684 (and d!1390324 d!1390300)))

(assert (=> bs!851684 (not (= lambda!171769 lambda!171762))))

(declare-fun bs!851685 () Bool)

(assert (= bs!851685 (and d!1390324 d!1390294)))

(assert (=> bs!851685 (not (= lambda!171769 lambda!171751))))

(declare-fun bs!851686 () Bool)

(assert (= bs!851686 (and d!1390324 d!1390314)))

(assert (=> bs!851686 (not (= lambda!171769 lambda!171763))))

(assert (=> d!1390324 true))

(assert (=> d!1390324 (= (allKeysSameHashInMap!1263 lm!1477 hashF!1107) (forall!10251 (toList!4319 lm!1477) lambda!171769))))

(declare-fun bs!851687 () Bool)

(assert (= bs!851687 d!1390324))

(declare-fun m!5260995 () Bool)

(assert (=> bs!851687 m!5260995))

(assert (=> b!4516295 d!1390324))

(declare-fun d!1390326 () Bool)

(assert (=> d!1390326 true))

(assert (=> d!1390326 true))

(declare-fun lambda!171772 () Int)

(declare-fun forall!10253 (List!50758 Int) Bool)

(assert (=> d!1390326 (= (allKeysSameHash!1010 newBucket!178 hash!344 hashF!1107) (forall!10253 newBucket!178 lambda!171772))))

(declare-fun bs!851688 () Bool)

(assert (= bs!851688 d!1390326))

(declare-fun m!5260997 () Bool)

(assert (=> bs!851688 m!5260997))

(assert (=> b!4516306 d!1390326))

(declare-fun d!1390328 () Bool)

(declare-fun lt!1694322 () List!50758)

(assert (=> d!1390328 (not (containsKey!1768 lt!1694322 key!3287))))

(declare-fun e!2813759 () List!50758)

(assert (=> d!1390328 (= lt!1694322 e!2813759)))

(declare-fun c!770571 () Bool)

(assert (=> d!1390328 (= c!770571 (and ((_ is Cons!50634) lt!1694146) (= (_1!28823 (h!56483 lt!1694146)) key!3287)))))

(assert (=> d!1390328 (noDuplicateKeys!1156 lt!1694146)))

(assert (=> d!1390328 (= (removePairForKey!783 lt!1694146 key!3287) lt!1694322)))

(declare-fun b!4516452 () Bool)

(declare-fun e!2813758 () List!50758)

(assert (=> b!4516452 (= e!2813759 e!2813758)))

(declare-fun c!770572 () Bool)

(assert (=> b!4516452 (= c!770572 ((_ is Cons!50634) lt!1694146))))

(declare-fun b!4516453 () Bool)

(assert (=> b!4516453 (= e!2813758 (Cons!50634 (h!56483 lt!1694146) (removePairForKey!783 (t!357720 lt!1694146) key!3287)))))

(declare-fun b!4516451 () Bool)

(assert (=> b!4516451 (= e!2813759 (t!357720 lt!1694146))))

(declare-fun b!4516454 () Bool)

(assert (=> b!4516454 (= e!2813758 Nil!50634)))

(assert (= (and d!1390328 c!770571) b!4516451))

(assert (= (and d!1390328 (not c!770571)) b!4516452))

(assert (= (and b!4516452 c!770572) b!4516453))

(assert (= (and b!4516452 (not c!770572)) b!4516454))

(declare-fun m!5261011 () Bool)

(assert (=> d!1390328 m!5261011))

(declare-fun m!5261013 () Bool)

(assert (=> d!1390328 m!5261013))

(declare-fun m!5261015 () Bool)

(assert (=> b!4516453 m!5261015))

(assert (=> b!4516285 d!1390328))

(declare-fun bs!851690 () Bool)

(declare-fun d!1390334 () Bool)

(assert (= bs!851690 (and d!1390334 d!1390298)))

(declare-fun lambda!171775 () Int)

(assert (=> bs!851690 (= lambda!171775 lambda!171755)))

(declare-fun bs!851691 () Bool)

(assert (= bs!851691 (and d!1390334 d!1390270)))

(assert (=> bs!851691 (= lambda!171775 lambda!171720)))

(declare-fun bs!851692 () Bool)

(assert (= bs!851692 (and d!1390334 start!446940)))

(assert (=> bs!851692 (= lambda!171775 lambda!171717)))

(declare-fun bs!851693 () Bool)

(assert (= bs!851693 (and d!1390334 d!1390300)))

(assert (=> bs!851693 (= lambda!171775 lambda!171762)))

(declare-fun bs!851694 () Bool)

(assert (= bs!851694 (and d!1390334 d!1390324)))

(assert (=> bs!851694 (not (= lambda!171775 lambda!171769))))

(declare-fun bs!851695 () Bool)

(assert (= bs!851695 (and d!1390334 d!1390294)))

(assert (=> bs!851695 (= lambda!171775 lambda!171751)))

(declare-fun bs!851696 () Bool)

(assert (= bs!851696 (and d!1390334 d!1390314)))

(assert (=> bs!851696 (= lambda!171775 lambda!171763)))

(assert (=> d!1390334 (contains!13352 lm!1477 (hash!2791 hashF!1107 key!3287))))

(declare-fun lt!1694331 () Unit!94398)

(declare-fun choose!29449 (ListLongMap!2951 K!12030 Hashable!5551) Unit!94398)

(assert (=> d!1390334 (= lt!1694331 (choose!29449 lm!1477 key!3287 hashF!1107))))

(assert (=> d!1390334 (forall!10251 (toList!4319 lm!1477) lambda!171775)))

(assert (=> d!1390334 (= (lemmaInGenMapThenLongMapContainsHash!230 lm!1477 key!3287 hashF!1107) lt!1694331)))

(declare-fun bs!851697 () Bool)

(assert (= bs!851697 d!1390334))

(assert (=> bs!851697 m!5260781))

(assert (=> bs!851697 m!5260781))

(declare-fun m!5261027 () Bool)

(assert (=> bs!851697 m!5261027))

(declare-fun m!5261029 () Bool)

(assert (=> bs!851697 m!5261029))

(declare-fun m!5261031 () Bool)

(assert (=> bs!851697 m!5261031))

(assert (=> b!4516285 d!1390334))

(declare-fun d!1390340 () Bool)

(assert (=> d!1390340 (= (apply!11893 lm!1477 hash!344) (get!16578 (getValueByKey!1083 (toList!4319 lm!1477) hash!344)))))

(declare-fun bs!851698 () Bool)

(assert (= bs!851698 d!1390340))

(declare-fun m!5261033 () Bool)

(assert (=> bs!851698 m!5261033))

(assert (=> bs!851698 m!5261033))

(declare-fun m!5261035 () Bool)

(assert (=> bs!851698 m!5261035))

(assert (=> b!4516285 d!1390340))

(declare-fun d!1390342 () Bool)

(assert (=> d!1390342 (contains!13351 (toList!4319 lm!1477) (tuple2!51061 hash!344 lt!1694146))))

(declare-fun lt!1694337 () Unit!94398)

(declare-fun choose!29450 (List!50759 (_ BitVec 64) List!50758) Unit!94398)

(assert (=> d!1390342 (= lt!1694337 (choose!29450 (toList!4319 lm!1477) hash!344 lt!1694146))))

(declare-fun e!2813772 () Bool)

(assert (=> d!1390342 e!2813772))

(declare-fun res!1879329 () Bool)

(assert (=> d!1390342 (=> (not res!1879329) (not e!2813772))))

(assert (=> d!1390342 (= res!1879329 (isStrictlySorted!427 (toList!4319 lm!1477)))))

(assert (=> d!1390342 (= (lemmaGetValueByKeyImpliesContainsTuple!668 (toList!4319 lm!1477) hash!344 lt!1694146) lt!1694337)))

(declare-fun b!4516467 () Bool)

(assert (=> b!4516467 (= e!2813772 (= (getValueByKey!1083 (toList!4319 lm!1477) hash!344) (Some!11102 lt!1694146)))))

(assert (= (and d!1390342 res!1879329) b!4516467))

(declare-fun m!5261041 () Bool)

(assert (=> d!1390342 m!5261041))

(declare-fun m!5261043 () Bool)

(assert (=> d!1390342 m!5261043))

(assert (=> d!1390342 m!5260827))

(assert (=> b!4516467 m!5261033))

(assert (=> b!4516285 d!1390342))

(declare-fun d!1390346 () Bool)

(declare-fun lt!1694340 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!8345 (List!50759) (InoxSet tuple2!51060))

(assert (=> d!1390346 (= lt!1694340 (select (content!8345 (toList!4319 lm!1477)) lt!1694152))))

(declare-fun e!2813778 () Bool)

(assert (=> d!1390346 (= lt!1694340 e!2813778)))

(declare-fun res!1879335 () Bool)

(assert (=> d!1390346 (=> (not res!1879335) (not e!2813778))))

(assert (=> d!1390346 (= res!1879335 ((_ is Cons!50635) (toList!4319 lm!1477)))))

(assert (=> d!1390346 (= (contains!13351 (toList!4319 lm!1477) lt!1694152) lt!1694340)))

(declare-fun b!4516472 () Bool)

(declare-fun e!2813777 () Bool)

(assert (=> b!4516472 (= e!2813778 e!2813777)))

(declare-fun res!1879334 () Bool)

(assert (=> b!4516472 (=> res!1879334 e!2813777)))

(assert (=> b!4516472 (= res!1879334 (= (h!56484 (toList!4319 lm!1477)) lt!1694152))))

(declare-fun b!4516473 () Bool)

(assert (=> b!4516473 (= e!2813777 (contains!13351 (t!357721 (toList!4319 lm!1477)) lt!1694152))))

(assert (= (and d!1390346 res!1879335) b!4516472))

(assert (= (and b!4516472 (not res!1879334)) b!4516473))

(declare-fun m!5261045 () Bool)

(assert (=> d!1390346 m!5261045))

(declare-fun m!5261047 () Bool)

(assert (=> d!1390346 m!5261047))

(assert (=> b!4516473 m!5260711))

(assert (=> b!4516285 d!1390346))

(declare-fun d!1390348 () Bool)

(assert (=> d!1390348 (dynLambda!21155 lambda!171717 lt!1694152)))

(declare-fun lt!1694355 () Unit!94398)

(declare-fun choose!29452 (List!50759 Int tuple2!51060) Unit!94398)

(assert (=> d!1390348 (= lt!1694355 (choose!29452 (toList!4319 lm!1477) lambda!171717 lt!1694152))))

(declare-fun e!2813784 () Bool)

(assert (=> d!1390348 e!2813784))

(declare-fun res!1879344 () Bool)

(assert (=> d!1390348 (=> (not res!1879344) (not e!2813784))))

(assert (=> d!1390348 (= res!1879344 (forall!10251 (toList!4319 lm!1477) lambda!171717))))

(assert (=> d!1390348 (= (forallContained!2503 (toList!4319 lm!1477) lambda!171717 lt!1694152) lt!1694355)))

(declare-fun b!4516482 () Bool)

(assert (=> b!4516482 (= e!2813784 (contains!13351 (toList!4319 lm!1477) lt!1694152))))

(assert (= (and d!1390348 res!1879344) b!4516482))

(declare-fun b_lambda!154377 () Bool)

(assert (=> (not b_lambda!154377) (not d!1390348)))

(declare-fun m!5261059 () Bool)

(assert (=> d!1390348 m!5261059))

(declare-fun m!5261063 () Bool)

(assert (=> d!1390348 m!5261063))

(assert (=> d!1390348 m!5260797))

(assert (=> b!4516482 m!5260755))

(assert (=> b!4516285 d!1390348))

(declare-fun d!1390352 () Bool)

(declare-fun e!2813786 () Bool)

(assert (=> d!1390352 e!2813786))

(declare-fun res!1879347 () Bool)

(assert (=> d!1390352 (=> res!1879347 e!2813786)))

(declare-fun lt!1694362 () Bool)

(assert (=> d!1390352 (= res!1879347 (not lt!1694362))))

(declare-fun lt!1694360 () Bool)

(assert (=> d!1390352 (= lt!1694362 lt!1694360)))

(declare-fun lt!1694363 () Unit!94398)

(declare-fun e!2813787 () Unit!94398)

(assert (=> d!1390352 (= lt!1694363 e!2813787)))

(declare-fun c!770573 () Bool)

(assert (=> d!1390352 (= c!770573 lt!1694360)))

(assert (=> d!1390352 (= lt!1694360 (containsKey!1770 (toList!4319 lm!1477) lt!1694171))))

(assert (=> d!1390352 (= (contains!13352 lm!1477 lt!1694171) lt!1694362)))

(declare-fun b!4516485 () Bool)

(declare-fun lt!1694361 () Unit!94398)

(assert (=> b!4516485 (= e!2813787 lt!1694361)))

(assert (=> b!4516485 (= lt!1694361 (lemmaContainsKeyImpliesGetValueByKeyDefined!987 (toList!4319 lm!1477) lt!1694171))))

(assert (=> b!4516485 (isDefined!8390 (getValueByKey!1083 (toList!4319 lm!1477) lt!1694171))))

(declare-fun b!4516486 () Bool)

(declare-fun Unit!94423 () Unit!94398)

(assert (=> b!4516486 (= e!2813787 Unit!94423)))

(declare-fun b!4516487 () Bool)

(assert (=> b!4516487 (= e!2813786 (isDefined!8390 (getValueByKey!1083 (toList!4319 lm!1477) lt!1694171)))))

(assert (= (and d!1390352 c!770573) b!4516485))

(assert (= (and d!1390352 (not c!770573)) b!4516486))

(assert (= (and d!1390352 (not res!1879347)) b!4516487))

(declare-fun m!5261069 () Bool)

(assert (=> d!1390352 m!5261069))

(declare-fun m!5261073 () Bool)

(assert (=> b!4516485 m!5261073))

(declare-fun m!5261075 () Bool)

(assert (=> b!4516485 m!5261075))

(assert (=> b!4516485 m!5261075))

(declare-fun m!5261081 () Bool)

(assert (=> b!4516485 m!5261081))

(assert (=> b!4516487 m!5261075))

(assert (=> b!4516487 m!5261075))

(assert (=> b!4516487 m!5261081))

(assert (=> b!4516285 d!1390352))

(declare-fun d!1390356 () Bool)

(declare-fun content!8346 (List!50758) (InoxSet tuple2!51058))

(assert (=> d!1390356 (= (eq!613 lt!1694149 lt!1694151) (= (content!8346 (toList!4320 lt!1694149)) (content!8346 (toList!4320 lt!1694151))))))

(declare-fun bs!851699 () Bool)

(assert (= bs!851699 d!1390356))

(declare-fun m!5261085 () Bool)

(assert (=> bs!851699 m!5261085))

(declare-fun m!5261087 () Bool)

(assert (=> bs!851699 m!5261087))

(assert (=> b!4516288 d!1390356))

(declare-fun bs!851793 () Bool)

(declare-fun b!4516603 () Bool)

(assert (= bs!851793 (and b!4516603 d!1390326)))

(declare-fun lambda!171828 () Int)

(assert (=> bs!851793 (not (= lambda!171828 lambda!171772))))

(assert (=> b!4516603 true))

(declare-fun bs!851794 () Bool)

(declare-fun b!4516604 () Bool)

(assert (= bs!851794 (and b!4516604 d!1390326)))

(declare-fun lambda!171829 () Int)

(assert (=> bs!851794 (not (= lambda!171829 lambda!171772))))

(declare-fun bs!851795 () Bool)

(assert (= bs!851795 (and b!4516604 b!4516603)))

(assert (=> bs!851795 (= lambda!171829 lambda!171828)))

(assert (=> b!4516604 true))

(declare-fun lambda!171830 () Int)

(assert (=> bs!851794 (not (= lambda!171830 lambda!171772))))

(declare-fun lt!1694513 () ListMap!3581)

(assert (=> bs!851795 (= (= lt!1694513 lt!1694172) (= lambda!171830 lambda!171828))))

(assert (=> b!4516604 (= (= lt!1694513 lt!1694172) (= lambda!171830 lambda!171829))))

(assert (=> b!4516604 true))

(declare-fun bs!851796 () Bool)

(declare-fun d!1390358 () Bool)

(assert (= bs!851796 (and d!1390358 d!1390326)))

(declare-fun lambda!171831 () Int)

(assert (=> bs!851796 (not (= lambda!171831 lambda!171772))))

(declare-fun bs!851797 () Bool)

(assert (= bs!851797 (and d!1390358 b!4516603)))

(declare-fun lt!1694503 () ListMap!3581)

(assert (=> bs!851797 (= (= lt!1694503 lt!1694172) (= lambda!171831 lambda!171828))))

(declare-fun bs!851798 () Bool)

(assert (= bs!851798 (and d!1390358 b!4516604)))

(assert (=> bs!851798 (= (= lt!1694503 lt!1694172) (= lambda!171831 lambda!171829))))

(assert (=> bs!851798 (= (= lt!1694503 lt!1694513) (= lambda!171831 lambda!171830))))

(assert (=> d!1390358 true))

(declare-fun bm!314587 () Bool)

(declare-fun c!770601 () Bool)

(declare-fun call!314593 () Bool)

(assert (=> bm!314587 (= call!314593 (forall!10253 (toList!4320 lt!1694172) (ite c!770601 lambda!171828 lambda!171829)))))

(declare-fun call!314592 () Bool)

(declare-fun bm!314588 () Bool)

(assert (=> bm!314588 (= call!314592 (forall!10253 (toList!4320 lt!1694172) (ite c!770601 lambda!171828 lambda!171830)))))

(declare-fun b!4516601 () Bool)

(declare-fun e!2813867 () Bool)

(assert (=> b!4516601 (= e!2813867 (forall!10253 (toList!4320 lt!1694172) lambda!171830))))

(declare-fun bm!314589 () Bool)

(declare-fun call!314594 () Unit!94398)

(declare-fun lemmaContainsAllItsOwnKeys!334 (ListMap!3581) Unit!94398)

(assert (=> bm!314589 (= call!314594 (lemmaContainsAllItsOwnKeys!334 lt!1694172))))

(declare-fun b!4516602 () Bool)

(declare-fun res!1879405 () Bool)

(declare-fun e!2813866 () Bool)

(assert (=> b!4516602 (=> (not res!1879405) (not e!2813866))))

(assert (=> b!4516602 (= res!1879405 (forall!10253 (toList!4320 lt!1694172) lambda!171831))))

(assert (=> d!1390358 e!2813866))

(declare-fun res!1879404 () Bool)

(assert (=> d!1390358 (=> (not res!1879404) (not e!2813866))))

(assert (=> d!1390358 (= res!1879404 (forall!10253 (_2!28824 lt!1694150) lambda!171831))))

(declare-fun e!2813865 () ListMap!3581)

(assert (=> d!1390358 (= lt!1694503 e!2813865)))

(assert (=> d!1390358 (= c!770601 ((_ is Nil!50634) (_2!28824 lt!1694150)))))

(assert (=> d!1390358 (noDuplicateKeys!1156 (_2!28824 lt!1694150))))

(assert (=> d!1390358 (= (addToMapMapFromBucket!683 (_2!28824 lt!1694150) lt!1694172) lt!1694503)))

(assert (=> b!4516603 (= e!2813865 lt!1694172)))

(declare-fun lt!1694517 () Unit!94398)

(assert (=> b!4516603 (= lt!1694517 call!314594)))

(assert (=> b!4516603 call!314593))

(declare-fun lt!1694507 () Unit!94398)

(assert (=> b!4516603 (= lt!1694507 lt!1694517)))

(assert (=> b!4516603 call!314592))

(declare-fun lt!1694505 () Unit!94398)

(declare-fun Unit!94431 () Unit!94398)

(assert (=> b!4516603 (= lt!1694505 Unit!94431)))

(assert (=> b!4516604 (= e!2813865 lt!1694513)))

(declare-fun lt!1694520 () ListMap!3581)

(declare-fun +!1532 (ListMap!3581 tuple2!51058) ListMap!3581)

(assert (=> b!4516604 (= lt!1694520 (+!1532 lt!1694172 (h!56483 (_2!28824 lt!1694150))))))

(assert (=> b!4516604 (= lt!1694513 (addToMapMapFromBucket!683 (t!357720 (_2!28824 lt!1694150)) (+!1532 lt!1694172 (h!56483 (_2!28824 lt!1694150)))))))

(declare-fun lt!1694502 () Unit!94398)

(assert (=> b!4516604 (= lt!1694502 call!314594)))

(assert (=> b!4516604 call!314593))

(declare-fun lt!1694515 () Unit!94398)

(assert (=> b!4516604 (= lt!1694515 lt!1694502)))

(assert (=> b!4516604 (forall!10253 (toList!4320 lt!1694520) lambda!171830)))

(declare-fun lt!1694518 () Unit!94398)

(declare-fun Unit!94434 () Unit!94398)

(assert (=> b!4516604 (= lt!1694518 Unit!94434)))

(assert (=> b!4516604 (forall!10253 (t!357720 (_2!28824 lt!1694150)) lambda!171830)))

(declare-fun lt!1694504 () Unit!94398)

(declare-fun Unit!94435 () Unit!94398)

(assert (=> b!4516604 (= lt!1694504 Unit!94435)))

(declare-fun lt!1694512 () Unit!94398)

(declare-fun Unit!94437 () Unit!94398)

(assert (=> b!4516604 (= lt!1694512 Unit!94437)))

(declare-fun lt!1694519 () Unit!94398)

(declare-fun forallContained!2505 (List!50758 Int tuple2!51058) Unit!94398)

(assert (=> b!4516604 (= lt!1694519 (forallContained!2505 (toList!4320 lt!1694520) lambda!171830 (h!56483 (_2!28824 lt!1694150))))))

(assert (=> b!4516604 (contains!13353 lt!1694520 (_1!28823 (h!56483 (_2!28824 lt!1694150))))))

(declare-fun lt!1694516 () Unit!94398)

(declare-fun Unit!94438 () Unit!94398)

(assert (=> b!4516604 (= lt!1694516 Unit!94438)))

(assert (=> b!4516604 (contains!13353 lt!1694513 (_1!28823 (h!56483 (_2!28824 lt!1694150))))))

(declare-fun lt!1694508 () Unit!94398)

(declare-fun Unit!94439 () Unit!94398)

(assert (=> b!4516604 (= lt!1694508 Unit!94439)))

(assert (=> b!4516604 (forall!10253 (_2!28824 lt!1694150) lambda!171830)))

(declare-fun lt!1694510 () Unit!94398)

(declare-fun Unit!94440 () Unit!94398)

(assert (=> b!4516604 (= lt!1694510 Unit!94440)))

(assert (=> b!4516604 (forall!10253 (toList!4320 lt!1694520) lambda!171830)))

(declare-fun lt!1694511 () Unit!94398)

(declare-fun Unit!94442 () Unit!94398)

(assert (=> b!4516604 (= lt!1694511 Unit!94442)))

(declare-fun lt!1694514 () Unit!94398)

(declare-fun Unit!94443 () Unit!94398)

(assert (=> b!4516604 (= lt!1694514 Unit!94443)))

(declare-fun lt!1694506 () Unit!94398)

(declare-fun addForallContainsKeyThenBeforeAdding!334 (ListMap!3581 ListMap!3581 K!12030 V!12276) Unit!94398)

(assert (=> b!4516604 (= lt!1694506 (addForallContainsKeyThenBeforeAdding!334 lt!1694172 lt!1694513 (_1!28823 (h!56483 (_2!28824 lt!1694150))) (_2!28823 (h!56483 (_2!28824 lt!1694150)))))))

(assert (=> b!4516604 (forall!10253 (toList!4320 lt!1694172) lambda!171830)))

(declare-fun lt!1694501 () Unit!94398)

(assert (=> b!4516604 (= lt!1694501 lt!1694506)))

(assert (=> b!4516604 call!314592))

(declare-fun lt!1694521 () Unit!94398)

(declare-fun Unit!94444 () Unit!94398)

(assert (=> b!4516604 (= lt!1694521 Unit!94444)))

(declare-fun res!1879403 () Bool)

(assert (=> b!4516604 (= res!1879403 (forall!10253 (_2!28824 lt!1694150) lambda!171830))))

(assert (=> b!4516604 (=> (not res!1879403) (not e!2813867))))

(assert (=> b!4516604 e!2813867))

(declare-fun lt!1694509 () Unit!94398)

(declare-fun Unit!94445 () Unit!94398)

(assert (=> b!4516604 (= lt!1694509 Unit!94445)))

(declare-fun b!4516605 () Bool)

(assert (=> b!4516605 (= e!2813866 (invariantList!1013 (toList!4320 lt!1694503)))))

(assert (= (and d!1390358 c!770601) b!4516603))

(assert (= (and d!1390358 (not c!770601)) b!4516604))

(assert (= (and b!4516604 res!1879403) b!4516601))

(assert (= (or b!4516603 b!4516604) bm!314588))

(assert (= (or b!4516603 b!4516604) bm!314587))

(assert (= (or b!4516603 b!4516604) bm!314589))

(assert (= (and d!1390358 res!1879404) b!4516602))

(assert (= (and b!4516602 res!1879405) b!4516605))

(declare-fun m!5261333 () Bool)

(assert (=> b!4516605 m!5261333))

(declare-fun m!5261335 () Bool)

(assert (=> b!4516604 m!5261335))

(declare-fun m!5261337 () Bool)

(assert (=> b!4516604 m!5261337))

(declare-fun m!5261339 () Bool)

(assert (=> b!4516604 m!5261339))

(declare-fun m!5261341 () Bool)

(assert (=> b!4516604 m!5261341))

(declare-fun m!5261343 () Bool)

(assert (=> b!4516604 m!5261343))

(assert (=> b!4516604 m!5261335))

(declare-fun m!5261345 () Bool)

(assert (=> b!4516604 m!5261345))

(assert (=> b!4516604 m!5261339))

(declare-fun m!5261347 () Bool)

(assert (=> b!4516604 m!5261347))

(declare-fun m!5261349 () Bool)

(assert (=> b!4516604 m!5261349))

(declare-fun m!5261351 () Bool)

(assert (=> b!4516604 m!5261351))

(assert (=> b!4516604 m!5261349))

(declare-fun m!5261353 () Bool)

(assert (=> b!4516604 m!5261353))

(declare-fun m!5261355 () Bool)

(assert (=> d!1390358 m!5261355))

(assert (=> d!1390358 m!5260793))

(declare-fun m!5261357 () Bool)

(assert (=> bm!314587 m!5261357))

(declare-fun m!5261359 () Bool)

(assert (=> bm!314589 m!5261359))

(declare-fun m!5261361 () Bool)

(assert (=> b!4516602 m!5261361))

(assert (=> b!4516601 m!5261341))

(declare-fun m!5261363 () Bool)

(assert (=> bm!314588 m!5261363))

(assert (=> b!4516288 d!1390358))

(declare-fun bs!851799 () Bool)

(declare-fun d!1390424 () Bool)

(assert (= bs!851799 (and d!1390424 d!1390298)))

(declare-fun lambda!171832 () Int)

(assert (=> bs!851799 (= lambda!171832 lambda!171755)))

(declare-fun bs!851800 () Bool)

(assert (= bs!851800 (and d!1390424 d!1390270)))

(assert (=> bs!851800 (= lambda!171832 lambda!171720)))

(declare-fun bs!851801 () Bool)

(assert (= bs!851801 (and d!1390424 start!446940)))

(assert (=> bs!851801 (= lambda!171832 lambda!171717)))

(declare-fun bs!851802 () Bool)

(assert (= bs!851802 (and d!1390424 d!1390334)))

(assert (=> bs!851802 (= lambda!171832 lambda!171775)))

(declare-fun bs!851803 () Bool)

(assert (= bs!851803 (and d!1390424 d!1390300)))

(assert (=> bs!851803 (= lambda!171832 lambda!171762)))

(declare-fun bs!851804 () Bool)

(assert (= bs!851804 (and d!1390424 d!1390324)))

(assert (=> bs!851804 (not (= lambda!171832 lambda!171769))))

(declare-fun bs!851805 () Bool)

(assert (= bs!851805 (and d!1390424 d!1390294)))

(assert (=> bs!851805 (= lambda!171832 lambda!171751)))

(declare-fun bs!851806 () Bool)

(assert (= bs!851806 (and d!1390424 d!1390314)))

(assert (=> bs!851806 (= lambda!171832 lambda!171763)))

(declare-fun lt!1694522 () ListMap!3581)

(assert (=> d!1390424 (invariantList!1013 (toList!4320 lt!1694522))))

(declare-fun e!2813868 () ListMap!3581)

(assert (=> d!1390424 (= lt!1694522 e!2813868)))

(declare-fun c!770602 () Bool)

(assert (=> d!1390424 (= c!770602 ((_ is Cons!50635) (toList!4319 lt!1694165)))))

(assert (=> d!1390424 (forall!10251 (toList!4319 lt!1694165) lambda!171832)))

(assert (=> d!1390424 (= (extractMap!1212 (toList!4319 lt!1694165)) lt!1694522)))

(declare-fun b!4516608 () Bool)

(assert (=> b!4516608 (= e!2813868 (addToMapMapFromBucket!683 (_2!28824 (h!56484 (toList!4319 lt!1694165))) (extractMap!1212 (t!357721 (toList!4319 lt!1694165)))))))

(declare-fun b!4516609 () Bool)

(assert (=> b!4516609 (= e!2813868 (ListMap!3582 Nil!50634))))

(assert (= (and d!1390424 c!770602) b!4516608))

(assert (= (and d!1390424 (not c!770602)) b!4516609))

(declare-fun m!5261365 () Bool)

(assert (=> d!1390424 m!5261365))

(declare-fun m!5261367 () Bool)

(assert (=> d!1390424 m!5261367))

(declare-fun m!5261369 () Bool)

(assert (=> b!4516608 m!5261369))

(assert (=> b!4516608 m!5261369))

(declare-fun m!5261371 () Bool)

(assert (=> b!4516608 m!5261371))

(assert (=> b!4516288 d!1390424))

(declare-fun d!1390426 () Bool)

(assert (=> d!1390426 (= (eq!613 lt!1694148 lt!1694168) (= (content!8346 (toList!4320 lt!1694148)) (content!8346 (toList!4320 lt!1694168))))))

(declare-fun bs!851807 () Bool)

(assert (= bs!851807 d!1390426))

(declare-fun m!5261373 () Bool)

(assert (=> bs!851807 m!5261373))

(declare-fun m!5261375 () Bool)

(assert (=> bs!851807 m!5261375))

(assert (=> b!4516299 d!1390426))

(declare-fun d!1390428 () Bool)

(declare-fun res!1879406 () Bool)

(declare-fun e!2813869 () Bool)

(assert (=> d!1390428 (=> res!1879406 e!2813869)))

(assert (=> d!1390428 (= res!1879406 (not ((_ is Cons!50634) (_2!28824 lt!1694150))))))

(assert (=> d!1390428 (= (noDuplicateKeys!1156 (_2!28824 lt!1694150)) e!2813869)))

(declare-fun b!4516610 () Bool)

(declare-fun e!2813870 () Bool)

(assert (=> b!4516610 (= e!2813869 e!2813870)))

(declare-fun res!1879407 () Bool)

(assert (=> b!4516610 (=> (not res!1879407) (not e!2813870))))

(assert (=> b!4516610 (= res!1879407 (not (containsKey!1768 (t!357720 (_2!28824 lt!1694150)) (_1!28823 (h!56483 (_2!28824 lt!1694150))))))))

(declare-fun b!4516611 () Bool)

(assert (=> b!4516611 (= e!2813870 (noDuplicateKeys!1156 (t!357720 (_2!28824 lt!1694150))))))

(assert (= (and d!1390428 (not res!1879406)) b!4516610))

(assert (= (and b!4516610 res!1879407) b!4516611))

(declare-fun m!5261377 () Bool)

(assert (=> b!4516610 m!5261377))

(declare-fun m!5261379 () Bool)

(assert (=> b!4516611 m!5261379))

(assert (=> b!4516289 d!1390428))

(declare-fun d!1390430 () Bool)

(assert (=> d!1390430 (dynLambda!21155 lambda!171717 (h!56484 (toList!4319 lm!1477)))))

(declare-fun lt!1694523 () Unit!94398)

(assert (=> d!1390430 (= lt!1694523 (choose!29452 (toList!4319 lm!1477) lambda!171717 (h!56484 (toList!4319 lm!1477))))))

(declare-fun e!2813871 () Bool)

(assert (=> d!1390430 e!2813871))

(declare-fun res!1879408 () Bool)

(assert (=> d!1390430 (=> (not res!1879408) (not e!2813871))))

(assert (=> d!1390430 (= res!1879408 (forall!10251 (toList!4319 lm!1477) lambda!171717))))

(assert (=> d!1390430 (= (forallContained!2503 (toList!4319 lm!1477) lambda!171717 (h!56484 (toList!4319 lm!1477))) lt!1694523)))

(declare-fun b!4516612 () Bool)

(assert (=> b!4516612 (= e!2813871 (contains!13351 (toList!4319 lm!1477) (h!56484 (toList!4319 lm!1477))))))

(assert (= (and d!1390430 res!1879408) b!4516612))

(declare-fun b_lambda!154383 () Bool)

(assert (=> (not b_lambda!154383) (not d!1390430)))

(assert (=> d!1390430 m!5260823))

(declare-fun m!5261381 () Bool)

(assert (=> d!1390430 m!5261381))

(assert (=> d!1390430 m!5260797))

(declare-fun m!5261383 () Bool)

(assert (=> b!4516612 m!5261383))

(assert (=> b!4516289 d!1390430))

(declare-fun d!1390432 () Bool)

(declare-fun res!1879417 () Bool)

(declare-fun e!2813879 () Bool)

(assert (=> d!1390432 (=> res!1879417 e!2813879)))

(declare-fun e!2813880 () Bool)

(assert (=> d!1390432 (= res!1879417 e!2813880)))

(declare-fun res!1879415 () Bool)

(assert (=> d!1390432 (=> (not res!1879415) (not e!2813880))))

(assert (=> d!1390432 (= res!1879415 ((_ is Cons!50635) (t!357721 (toList!4319 lm!1477))))))

(assert (=> d!1390432 (= (containsKeyBiggerList!136 (t!357721 (toList!4319 lm!1477)) key!3287) e!2813879)))

(declare-fun b!4516619 () Bool)

(assert (=> b!4516619 (= e!2813880 (containsKey!1768 (_2!28824 (h!56484 (t!357721 (toList!4319 lm!1477)))) key!3287))))

(declare-fun b!4516620 () Bool)

(declare-fun e!2813878 () Bool)

(assert (=> b!4516620 (= e!2813879 e!2813878)))

(declare-fun res!1879416 () Bool)

(assert (=> b!4516620 (=> (not res!1879416) (not e!2813878))))

(assert (=> b!4516620 (= res!1879416 ((_ is Cons!50635) (t!357721 (toList!4319 lm!1477))))))

(declare-fun b!4516621 () Bool)

(assert (=> b!4516621 (= e!2813878 (containsKeyBiggerList!136 (t!357721 (t!357721 (toList!4319 lm!1477))) key!3287))))

(assert (= (and d!1390432 res!1879415) b!4516619))

(assert (= (and d!1390432 (not res!1879417)) b!4516620))

(assert (= (and b!4516620 res!1879416) b!4516621))

(declare-fun m!5261391 () Bool)

(assert (=> b!4516619 m!5261391))

(declare-fun m!5261393 () Bool)

(assert (=> b!4516621 m!5261393))

(assert (=> b!4516298 d!1390432))

(declare-fun d!1390436 () Bool)

(declare-fun res!1879420 () Bool)

(declare-fun e!2813882 () Bool)

(assert (=> d!1390436 (=> res!1879420 e!2813882)))

(declare-fun e!2813883 () Bool)

(assert (=> d!1390436 (= res!1879420 e!2813883)))

(declare-fun res!1879418 () Bool)

(assert (=> d!1390436 (=> (not res!1879418) (not e!2813883))))

(assert (=> d!1390436 (= res!1879418 ((_ is Cons!50635) (toList!4319 lt!1694164)))))

(assert (=> d!1390436 (= (containsKeyBiggerList!136 (toList!4319 lt!1694164) key!3287) e!2813882)))

(declare-fun b!4516622 () Bool)

(assert (=> b!4516622 (= e!2813883 (containsKey!1768 (_2!28824 (h!56484 (toList!4319 lt!1694164))) key!3287))))

(declare-fun b!4516623 () Bool)

(declare-fun e!2813881 () Bool)

(assert (=> b!4516623 (= e!2813882 e!2813881)))

(declare-fun res!1879419 () Bool)

(assert (=> b!4516623 (=> (not res!1879419) (not e!2813881))))

(assert (=> b!4516623 (= res!1879419 ((_ is Cons!50635) (toList!4319 lt!1694164)))))

(declare-fun b!4516624 () Bool)

(assert (=> b!4516624 (= e!2813881 (containsKeyBiggerList!136 (t!357721 (toList!4319 lt!1694164)) key!3287))))

(assert (= (and d!1390436 res!1879418) b!4516622))

(assert (= (and d!1390436 (not res!1879420)) b!4516623))

(assert (= (and b!4516623 res!1879419) b!4516624))

(declare-fun m!5261395 () Bool)

(assert (=> b!4516622 m!5261395))

(declare-fun m!5261397 () Bool)

(assert (=> b!4516624 m!5261397))

(assert (=> b!4516298 d!1390436))

(declare-fun bs!851822 () Bool)

(declare-fun d!1390438 () Bool)

(assert (= bs!851822 (and d!1390438 d!1390298)))

(declare-fun lambda!171838 () Int)

(assert (=> bs!851822 (= lambda!171838 lambda!171755)))

(declare-fun bs!851823 () Bool)

(assert (= bs!851823 (and d!1390438 start!446940)))

(assert (=> bs!851823 (= lambda!171838 lambda!171717)))

(declare-fun bs!851824 () Bool)

(assert (= bs!851824 (and d!1390438 d!1390334)))

(assert (=> bs!851824 (= lambda!171838 lambda!171775)))

(declare-fun bs!851826 () Bool)

(assert (= bs!851826 (and d!1390438 d!1390300)))

(assert (=> bs!851826 (= lambda!171838 lambda!171762)))

(declare-fun bs!851827 () Bool)

(assert (= bs!851827 (and d!1390438 d!1390324)))

(assert (=> bs!851827 (not (= lambda!171838 lambda!171769))))

(declare-fun bs!851829 () Bool)

(assert (= bs!851829 (and d!1390438 d!1390294)))

(assert (=> bs!851829 (= lambda!171838 lambda!171751)))

(declare-fun bs!851830 () Bool)

(assert (= bs!851830 (and d!1390438 d!1390314)))

(assert (=> bs!851830 (= lambda!171838 lambda!171763)))

(declare-fun bs!851831 () Bool)

(assert (= bs!851831 (and d!1390438 d!1390424)))

(assert (=> bs!851831 (= lambda!171838 lambda!171832)))

(declare-fun bs!851832 () Bool)

(assert (= bs!851832 (and d!1390438 d!1390270)))

(assert (=> bs!851832 (= lambda!171838 lambda!171720)))

(assert (=> d!1390438 (containsKeyBiggerList!136 (toList!4319 lt!1694164) key!3287)))

(declare-fun lt!1694529 () Unit!94398)

(declare-fun choose!29454 (ListLongMap!2951 K!12030 Hashable!5551) Unit!94398)

(assert (=> d!1390438 (= lt!1694529 (choose!29454 lt!1694164 key!3287 hashF!1107))))

(assert (=> d!1390438 (forall!10251 (toList!4319 lt!1694164) lambda!171838)))

(assert (=> d!1390438 (= (lemmaInLongMapThenContainsKeyBiggerList!72 lt!1694164 key!3287 hashF!1107) lt!1694529)))

(declare-fun bs!851833 () Bool)

(assert (= bs!851833 d!1390438))

(assert (=> bs!851833 m!5260707))

(declare-fun m!5261407 () Bool)

(assert (=> bs!851833 m!5261407))

(declare-fun m!5261409 () Bool)

(assert (=> bs!851833 m!5261409))

(assert (=> b!4516298 d!1390438))

(declare-fun d!1390446 () Bool)

(declare-fun e!2813898 () Bool)

(assert (=> d!1390446 e!2813898))

(declare-fun res!1879431 () Bool)

(assert (=> d!1390446 (=> (not res!1879431) (not e!2813898))))

(declare-fun lt!1694541 () ListLongMap!2951)

(assert (=> d!1390446 (= res!1879431 (contains!13352 lt!1694541 (_1!28824 lt!1694154)))))

(declare-fun lt!1694538 () List!50759)

(assert (=> d!1390446 (= lt!1694541 (ListLongMap!2952 lt!1694538))))

(declare-fun lt!1694540 () Unit!94398)

(declare-fun lt!1694539 () Unit!94398)

(assert (=> d!1390446 (= lt!1694540 lt!1694539)))

(assert (=> d!1390446 (= (getValueByKey!1083 lt!1694538 (_1!28824 lt!1694154)) (Some!11102 (_2!28824 lt!1694154)))))

(declare-fun lemmaContainsTupThenGetReturnValue!670 (List!50759 (_ BitVec 64) List!50758) Unit!94398)

(assert (=> d!1390446 (= lt!1694539 (lemmaContainsTupThenGetReturnValue!670 lt!1694538 (_1!28824 lt!1694154) (_2!28824 lt!1694154)))))

(declare-fun insertStrictlySorted!404 (List!50759 (_ BitVec 64) List!50758) List!50759)

(assert (=> d!1390446 (= lt!1694538 (insertStrictlySorted!404 (toList!4319 lm!1477) (_1!28824 lt!1694154) (_2!28824 lt!1694154)))))

(assert (=> d!1390446 (= (+!1530 lm!1477 lt!1694154) lt!1694541)))

(declare-fun b!4516645 () Bool)

(declare-fun res!1879432 () Bool)

(assert (=> b!4516645 (=> (not res!1879432) (not e!2813898))))

(assert (=> b!4516645 (= res!1879432 (= (getValueByKey!1083 (toList!4319 lt!1694541) (_1!28824 lt!1694154)) (Some!11102 (_2!28824 lt!1694154))))))

(declare-fun b!4516646 () Bool)

(assert (=> b!4516646 (= e!2813898 (contains!13351 (toList!4319 lt!1694541) lt!1694154))))

(assert (= (and d!1390446 res!1879431) b!4516645))

(assert (= (and b!4516645 res!1879432) b!4516646))

(declare-fun m!5261411 () Bool)

(assert (=> d!1390446 m!5261411))

(declare-fun m!5261413 () Bool)

(assert (=> d!1390446 m!5261413))

(declare-fun m!5261415 () Bool)

(assert (=> d!1390446 m!5261415))

(declare-fun m!5261417 () Bool)

(assert (=> d!1390446 m!5261417))

(declare-fun m!5261419 () Bool)

(assert (=> b!4516645 m!5261419))

(declare-fun m!5261421 () Bool)

(assert (=> b!4516646 m!5261421))

(assert (=> b!4516291 d!1390446))

(declare-fun d!1390448 () Bool)

(declare-fun e!2813899 () Bool)

(assert (=> d!1390448 e!2813899))

(declare-fun res!1879433 () Bool)

(assert (=> d!1390448 (=> (not res!1879433) (not e!2813899))))

(declare-fun lt!1694545 () ListLongMap!2951)

(assert (=> d!1390448 (= res!1879433 (contains!13352 lt!1694545 (_1!28824 lt!1694150)))))

(declare-fun lt!1694542 () List!50759)

(assert (=> d!1390448 (= lt!1694545 (ListLongMap!2952 lt!1694542))))

(declare-fun lt!1694544 () Unit!94398)

(declare-fun lt!1694543 () Unit!94398)

(assert (=> d!1390448 (= lt!1694544 lt!1694543)))

(assert (=> d!1390448 (= (getValueByKey!1083 lt!1694542 (_1!28824 lt!1694150)) (Some!11102 (_2!28824 lt!1694150)))))

(assert (=> d!1390448 (= lt!1694543 (lemmaContainsTupThenGetReturnValue!670 lt!1694542 (_1!28824 lt!1694150) (_2!28824 lt!1694150)))))

(assert (=> d!1390448 (= lt!1694542 (insertStrictlySorted!404 (toList!4319 lt!1694158) (_1!28824 lt!1694150) (_2!28824 lt!1694150)))))

(assert (=> d!1390448 (= (+!1530 lt!1694158 lt!1694150) lt!1694545)))

(declare-fun b!4516647 () Bool)

(declare-fun res!1879434 () Bool)

(assert (=> b!4516647 (=> (not res!1879434) (not e!2813899))))

(assert (=> b!4516647 (= res!1879434 (= (getValueByKey!1083 (toList!4319 lt!1694545) (_1!28824 lt!1694150)) (Some!11102 (_2!28824 lt!1694150))))))

(declare-fun b!4516648 () Bool)

(assert (=> b!4516648 (= e!2813899 (contains!13351 (toList!4319 lt!1694545) lt!1694150))))

(assert (= (and d!1390448 res!1879433) b!4516647))

(assert (= (and b!4516647 res!1879434) b!4516648))

(declare-fun m!5261423 () Bool)

(assert (=> d!1390448 m!5261423))

(declare-fun m!5261425 () Bool)

(assert (=> d!1390448 m!5261425))

(declare-fun m!5261427 () Bool)

(assert (=> d!1390448 m!5261427))

(declare-fun m!5261429 () Bool)

(assert (=> d!1390448 m!5261429))

(declare-fun m!5261431 () Bool)

(assert (=> b!4516647 m!5261431))

(declare-fun m!5261433 () Bool)

(assert (=> b!4516648 m!5261433))

(assert (=> b!4516291 d!1390448))

(declare-fun d!1390450 () Bool)

(declare-fun e!2813902 () Bool)

(assert (=> d!1390450 e!2813902))

(declare-fun res!1879437 () Bool)

(assert (=> d!1390450 (=> (not res!1879437) (not e!2813902))))

(declare-fun lt!1694548 () ListMap!3581)

(assert (=> d!1390450 (= res!1879437 (not (contains!13353 lt!1694548 key!3287)))))

(declare-fun removePresrvNoDuplicatedKeys!137 (List!50758 K!12030) List!50758)

(assert (=> d!1390450 (= lt!1694548 (ListMap!3582 (removePresrvNoDuplicatedKeys!137 (toList!4320 lt!1694159) key!3287)))))

(assert (=> d!1390450 (= (-!382 lt!1694159 key!3287) lt!1694548)))

(declare-fun b!4516651 () Bool)

(declare-fun content!8347 (List!50761) (InoxSet K!12030))

(assert (=> b!4516651 (= e!2813902 (= ((_ map and) (content!8347 (keys!17586 lt!1694159)) ((_ map not) (store ((as const (Array K!12030 Bool)) false) key!3287 true))) (content!8347 (keys!17586 lt!1694548))))))

(assert (= (and d!1390450 res!1879437) b!4516651))

(declare-fun m!5261435 () Bool)

(assert (=> d!1390450 m!5261435))

(declare-fun m!5261437 () Bool)

(assert (=> d!1390450 m!5261437))

(declare-fun m!5261439 () Bool)

(assert (=> b!4516651 m!5261439))

(assert (=> b!4516651 m!5261439))

(declare-fun m!5261441 () Bool)

(assert (=> b!4516651 m!5261441))

(assert (=> b!4516651 m!5260975))

(declare-fun m!5261443 () Bool)

(assert (=> b!4516651 m!5261443))

(assert (=> b!4516651 m!5260975))

(declare-fun m!5261445 () Bool)

(assert (=> b!4516651 m!5261445))

(assert (=> b!4516302 d!1390450))

(declare-fun bs!851834 () Bool)

(declare-fun d!1390452 () Bool)

(assert (= bs!851834 (and d!1390452 d!1390298)))

(declare-fun lambda!171839 () Int)

(assert (=> bs!851834 (= lambda!171839 lambda!171755)))

(declare-fun bs!851835 () Bool)

(assert (= bs!851835 (and d!1390452 d!1390438)))

(assert (=> bs!851835 (= lambda!171839 lambda!171838)))

(declare-fun bs!851836 () Bool)

(assert (= bs!851836 (and d!1390452 start!446940)))

(assert (=> bs!851836 (= lambda!171839 lambda!171717)))

(declare-fun bs!851837 () Bool)

(assert (= bs!851837 (and d!1390452 d!1390334)))

(assert (=> bs!851837 (= lambda!171839 lambda!171775)))

(declare-fun bs!851838 () Bool)

(assert (= bs!851838 (and d!1390452 d!1390300)))

(assert (=> bs!851838 (= lambda!171839 lambda!171762)))

(declare-fun bs!851839 () Bool)

(assert (= bs!851839 (and d!1390452 d!1390324)))

(assert (=> bs!851839 (not (= lambda!171839 lambda!171769))))

(declare-fun bs!851840 () Bool)

(assert (= bs!851840 (and d!1390452 d!1390294)))

(assert (=> bs!851840 (= lambda!171839 lambda!171751)))

(declare-fun bs!851841 () Bool)

(assert (= bs!851841 (and d!1390452 d!1390314)))

(assert (=> bs!851841 (= lambda!171839 lambda!171763)))

(declare-fun bs!851842 () Bool)

(assert (= bs!851842 (and d!1390452 d!1390424)))

(assert (=> bs!851842 (= lambda!171839 lambda!171832)))

(declare-fun bs!851843 () Bool)

(assert (= bs!851843 (and d!1390452 d!1390270)))

(assert (=> bs!851843 (= lambda!171839 lambda!171720)))

(declare-fun lt!1694549 () ListMap!3581)

(assert (=> d!1390452 (invariantList!1013 (toList!4320 lt!1694549))))

(declare-fun e!2813903 () ListMap!3581)

(assert (=> d!1390452 (= lt!1694549 e!2813903)))

(declare-fun c!770603 () Bool)

(assert (=> d!1390452 (= c!770603 ((_ is Cons!50635) (toList!4319 (+!1530 lt!1694164 lt!1694150))))))

(assert (=> d!1390452 (forall!10251 (toList!4319 (+!1530 lt!1694164 lt!1694150)) lambda!171839)))

(assert (=> d!1390452 (= (extractMap!1212 (toList!4319 (+!1530 lt!1694164 lt!1694150))) lt!1694549)))

(declare-fun b!4516652 () Bool)

(assert (=> b!4516652 (= e!2813903 (addToMapMapFromBucket!683 (_2!28824 (h!56484 (toList!4319 (+!1530 lt!1694164 lt!1694150)))) (extractMap!1212 (t!357721 (toList!4319 (+!1530 lt!1694164 lt!1694150))))))))

(declare-fun b!4516653 () Bool)

(assert (=> b!4516653 (= e!2813903 (ListMap!3582 Nil!50634))))

(assert (= (and d!1390452 c!770603) b!4516652))

(assert (= (and d!1390452 (not c!770603)) b!4516653))

(declare-fun m!5261447 () Bool)

(assert (=> d!1390452 m!5261447))

(declare-fun m!5261449 () Bool)

(assert (=> d!1390452 m!5261449))

(declare-fun m!5261451 () Bool)

(assert (=> b!4516652 m!5261451))

(assert (=> b!4516652 m!5261451))

(declare-fun m!5261453 () Bool)

(assert (=> b!4516652 m!5261453))

(assert (=> b!4516302 d!1390452))

(declare-fun d!1390454 () Bool)

(declare-fun e!2813904 () Bool)

(assert (=> d!1390454 e!2813904))

(declare-fun res!1879438 () Bool)

(assert (=> d!1390454 (=> (not res!1879438) (not e!2813904))))

(declare-fun lt!1694553 () ListLongMap!2951)

(assert (=> d!1390454 (= res!1879438 (contains!13352 lt!1694553 (_1!28824 lt!1694154)))))

(declare-fun lt!1694550 () List!50759)

(assert (=> d!1390454 (= lt!1694553 (ListLongMap!2952 lt!1694550))))

(declare-fun lt!1694552 () Unit!94398)

(declare-fun lt!1694551 () Unit!94398)

(assert (=> d!1390454 (= lt!1694552 lt!1694551)))

(assert (=> d!1390454 (= (getValueByKey!1083 lt!1694550 (_1!28824 lt!1694154)) (Some!11102 (_2!28824 lt!1694154)))))

(assert (=> d!1390454 (= lt!1694551 (lemmaContainsTupThenGetReturnValue!670 lt!1694550 (_1!28824 lt!1694154) (_2!28824 lt!1694154)))))

(assert (=> d!1390454 (= lt!1694550 (insertStrictlySorted!404 (toList!4319 lt!1694164) (_1!28824 lt!1694154) (_2!28824 lt!1694154)))))

(assert (=> d!1390454 (= (+!1530 lt!1694164 lt!1694154) lt!1694553)))

(declare-fun b!4516654 () Bool)

(declare-fun res!1879439 () Bool)

(assert (=> b!4516654 (=> (not res!1879439) (not e!2813904))))

(assert (=> b!4516654 (= res!1879439 (= (getValueByKey!1083 (toList!4319 lt!1694553) (_1!28824 lt!1694154)) (Some!11102 (_2!28824 lt!1694154))))))

(declare-fun b!4516655 () Bool)

(assert (=> b!4516655 (= e!2813904 (contains!13351 (toList!4319 lt!1694553) lt!1694154))))

(assert (= (and d!1390454 res!1879438) b!4516654))

(assert (= (and b!4516654 res!1879439) b!4516655))

(declare-fun m!5261455 () Bool)

(assert (=> d!1390454 m!5261455))

(declare-fun m!5261457 () Bool)

(assert (=> d!1390454 m!5261457))

(declare-fun m!5261459 () Bool)

(assert (=> d!1390454 m!5261459))

(declare-fun m!5261461 () Bool)

(assert (=> d!1390454 m!5261461))

(declare-fun m!5261463 () Bool)

(assert (=> b!4516654 m!5261463))

(declare-fun m!5261465 () Bool)

(assert (=> b!4516655 m!5261465))

(assert (=> b!4516302 d!1390454))

(declare-fun d!1390456 () Bool)

(assert (=> d!1390456 (= (eq!613 lt!1694172 lt!1694147) (= (content!8346 (toList!4320 lt!1694172)) (content!8346 (toList!4320 lt!1694147))))))

(declare-fun bs!851844 () Bool)

(assert (= bs!851844 d!1390456))

(declare-fun m!5261467 () Bool)

(assert (=> bs!851844 m!5261467))

(declare-fun m!5261469 () Bool)

(assert (=> bs!851844 m!5261469))

(assert (=> b!4516302 d!1390456))

(declare-fun d!1390458 () Bool)

(declare-fun e!2813905 () Bool)

(assert (=> d!1390458 e!2813905))

(declare-fun res!1879440 () Bool)

(assert (=> d!1390458 (=> (not res!1879440) (not e!2813905))))

(declare-fun lt!1694557 () ListLongMap!2951)

(assert (=> d!1390458 (= res!1879440 (contains!13352 lt!1694557 (_1!28824 lt!1694150)))))

(declare-fun lt!1694554 () List!50759)

(assert (=> d!1390458 (= lt!1694557 (ListLongMap!2952 lt!1694554))))

(declare-fun lt!1694556 () Unit!94398)

(declare-fun lt!1694555 () Unit!94398)

(assert (=> d!1390458 (= lt!1694556 lt!1694555)))

(assert (=> d!1390458 (= (getValueByKey!1083 lt!1694554 (_1!28824 lt!1694150)) (Some!11102 (_2!28824 lt!1694150)))))

(assert (=> d!1390458 (= lt!1694555 (lemmaContainsTupThenGetReturnValue!670 lt!1694554 (_1!28824 lt!1694150) (_2!28824 lt!1694150)))))

(assert (=> d!1390458 (= lt!1694554 (insertStrictlySorted!404 (toList!4319 lt!1694164) (_1!28824 lt!1694150) (_2!28824 lt!1694150)))))

(assert (=> d!1390458 (= (+!1530 lt!1694164 lt!1694150) lt!1694557)))

(declare-fun b!4516656 () Bool)

(declare-fun res!1879441 () Bool)

(assert (=> b!4516656 (=> (not res!1879441) (not e!2813905))))

(assert (=> b!4516656 (= res!1879441 (= (getValueByKey!1083 (toList!4319 lt!1694557) (_1!28824 lt!1694150)) (Some!11102 (_2!28824 lt!1694150))))))

(declare-fun b!4516657 () Bool)

(assert (=> b!4516657 (= e!2813905 (contains!13351 (toList!4319 lt!1694557) lt!1694150))))

(assert (= (and d!1390458 res!1879440) b!4516656))

(assert (= (and b!4516656 res!1879441) b!4516657))

(declare-fun m!5261471 () Bool)

(assert (=> d!1390458 m!5261471))

(declare-fun m!5261473 () Bool)

(assert (=> d!1390458 m!5261473))

(declare-fun m!5261475 () Bool)

(assert (=> d!1390458 m!5261475))

(declare-fun m!5261477 () Bool)

(assert (=> d!1390458 m!5261477))

(declare-fun m!5261479 () Bool)

(assert (=> b!4516656 m!5261479))

(declare-fun m!5261481 () Bool)

(assert (=> b!4516657 m!5261481))

(assert (=> b!4516302 d!1390458))

(declare-fun bs!851845 () Bool)

(declare-fun d!1390460 () Bool)

(assert (= bs!851845 (and d!1390460 d!1390298)))

(declare-fun lambda!171840 () Int)

(assert (=> bs!851845 (= lambda!171840 lambda!171755)))

(declare-fun bs!851846 () Bool)

(assert (= bs!851846 (and d!1390460 d!1390438)))

(assert (=> bs!851846 (= lambda!171840 lambda!171838)))

(declare-fun bs!851847 () Bool)

(assert (= bs!851847 (and d!1390460 d!1390452)))

(assert (=> bs!851847 (= lambda!171840 lambda!171839)))

(declare-fun bs!851848 () Bool)

(assert (= bs!851848 (and d!1390460 start!446940)))

(assert (=> bs!851848 (= lambda!171840 lambda!171717)))

(declare-fun bs!851849 () Bool)

(assert (= bs!851849 (and d!1390460 d!1390334)))

(assert (=> bs!851849 (= lambda!171840 lambda!171775)))

(declare-fun bs!851850 () Bool)

(assert (= bs!851850 (and d!1390460 d!1390300)))

(assert (=> bs!851850 (= lambda!171840 lambda!171762)))

(declare-fun bs!851851 () Bool)

(assert (= bs!851851 (and d!1390460 d!1390324)))

(assert (=> bs!851851 (not (= lambda!171840 lambda!171769))))

(declare-fun bs!851852 () Bool)

(assert (= bs!851852 (and d!1390460 d!1390294)))

(assert (=> bs!851852 (= lambda!171840 lambda!171751)))

(declare-fun bs!851853 () Bool)

(assert (= bs!851853 (and d!1390460 d!1390314)))

(assert (=> bs!851853 (= lambda!171840 lambda!171763)))

(declare-fun bs!851854 () Bool)

(assert (= bs!851854 (and d!1390460 d!1390424)))

(assert (=> bs!851854 (= lambda!171840 lambda!171832)))

(declare-fun bs!851855 () Bool)

(assert (= bs!851855 (and d!1390460 d!1390270)))

(assert (=> bs!851855 (= lambda!171840 lambda!171720)))

(declare-fun lt!1694558 () ListMap!3581)

(assert (=> d!1390460 (invariantList!1013 (toList!4320 lt!1694558))))

(declare-fun e!2813906 () ListMap!3581)

(assert (=> d!1390460 (= lt!1694558 e!2813906)))

(declare-fun c!770604 () Bool)

(assert (=> d!1390460 (= c!770604 ((_ is Cons!50635) (toList!4319 lt!1694158)))))

(assert (=> d!1390460 (forall!10251 (toList!4319 lt!1694158) lambda!171840)))

(assert (=> d!1390460 (= (extractMap!1212 (toList!4319 lt!1694158)) lt!1694558)))

(declare-fun b!4516658 () Bool)

(assert (=> b!4516658 (= e!2813906 (addToMapMapFromBucket!683 (_2!28824 (h!56484 (toList!4319 lt!1694158))) (extractMap!1212 (t!357721 (toList!4319 lt!1694158)))))))

(declare-fun b!4516659 () Bool)

(assert (=> b!4516659 (= e!2813906 (ListMap!3582 Nil!50634))))

(assert (= (and d!1390460 c!770604) b!4516658))

(assert (= (and d!1390460 (not c!770604)) b!4516659))

(declare-fun m!5261483 () Bool)

(assert (=> d!1390460 m!5261483))

(declare-fun m!5261485 () Bool)

(assert (=> d!1390460 m!5261485))

(declare-fun m!5261487 () Bool)

(assert (=> b!4516658 m!5261487))

(assert (=> b!4516658 m!5261487))

(declare-fun m!5261489 () Bool)

(assert (=> b!4516658 m!5261489))

(assert (=> b!4516302 d!1390460))

(declare-fun bs!851856 () Bool)

(declare-fun d!1390462 () Bool)

(assert (= bs!851856 (and d!1390462 d!1390298)))

(declare-fun lambda!171843 () Int)

(assert (=> bs!851856 (= lambda!171843 lambda!171755)))

(declare-fun bs!851857 () Bool)

(assert (= bs!851857 (and d!1390462 d!1390438)))

(assert (=> bs!851857 (= lambda!171843 lambda!171838)))

(declare-fun bs!851858 () Bool)

(assert (= bs!851858 (and d!1390462 d!1390452)))

(assert (=> bs!851858 (= lambda!171843 lambda!171839)))

(declare-fun bs!851859 () Bool)

(assert (= bs!851859 (and d!1390462 start!446940)))

(assert (=> bs!851859 (= lambda!171843 lambda!171717)))

(declare-fun bs!851860 () Bool)

(assert (= bs!851860 (and d!1390462 d!1390334)))

(assert (=> bs!851860 (= lambda!171843 lambda!171775)))

(declare-fun bs!851861 () Bool)

(assert (= bs!851861 (and d!1390462 d!1390300)))

(assert (=> bs!851861 (= lambda!171843 lambda!171762)))

(declare-fun bs!851862 () Bool)

(assert (= bs!851862 (and d!1390462 d!1390460)))

(assert (=> bs!851862 (= lambda!171843 lambda!171840)))

(declare-fun bs!851863 () Bool)

(assert (= bs!851863 (and d!1390462 d!1390324)))

(assert (=> bs!851863 (not (= lambda!171843 lambda!171769))))

(declare-fun bs!851864 () Bool)

(assert (= bs!851864 (and d!1390462 d!1390294)))

(assert (=> bs!851864 (= lambda!171843 lambda!171751)))

(declare-fun bs!851865 () Bool)

(assert (= bs!851865 (and d!1390462 d!1390314)))

(assert (=> bs!851865 (= lambda!171843 lambda!171763)))

(declare-fun bs!851866 () Bool)

(assert (= bs!851866 (and d!1390462 d!1390424)))

(assert (=> bs!851866 (= lambda!171843 lambda!171832)))

(declare-fun bs!851867 () Bool)

(assert (= bs!851867 (and d!1390462 d!1390270)))

(assert (=> bs!851867 (= lambda!171843 lambda!171720)))

(assert (=> d!1390462 (eq!613 (extractMap!1212 (toList!4319 (+!1530 lt!1694164 (tuple2!51061 hash!344 newBucket!178)))) (-!382 (extractMap!1212 (toList!4319 lt!1694164)) key!3287))))

(declare-fun lt!1694561 () Unit!94398)

(declare-fun choose!29455 (ListLongMap!2951 (_ BitVec 64) List!50758 K!12030 Hashable!5551) Unit!94398)

(assert (=> d!1390462 (= lt!1694561 (choose!29455 lt!1694164 hash!344 newBucket!178 key!3287 hashF!1107))))

(assert (=> d!1390462 (forall!10251 (toList!4319 lt!1694164) lambda!171843)))

(assert (=> d!1390462 (= (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMap!141 lt!1694164 hash!344 newBucket!178 key!3287 hashF!1107) lt!1694561)))

(declare-fun bs!851868 () Bool)

(assert (= bs!851868 d!1390462))

(declare-fun m!5261491 () Bool)

(assert (=> bs!851868 m!5261491))

(assert (=> bs!851868 m!5261491))

(declare-fun m!5261493 () Bool)

(assert (=> bs!851868 m!5261493))

(declare-fun m!5261495 () Bool)

(assert (=> bs!851868 m!5261495))

(declare-fun m!5261497 () Bool)

(assert (=> bs!851868 m!5261497))

(declare-fun m!5261499 () Bool)

(assert (=> bs!851868 m!5261499))

(assert (=> bs!851868 m!5260735))

(declare-fun m!5261501 () Bool)

(assert (=> bs!851868 m!5261501))

(assert (=> bs!851868 m!5260735))

(assert (=> bs!851868 m!5261493))

(assert (=> b!4516302 d!1390462))

(declare-fun d!1390464 () Bool)

(assert (=> d!1390464 (= (head!9404 lm!1477) (head!9406 (toList!4319 lm!1477)))))

(declare-fun bs!851869 () Bool)

(assert (= bs!851869 d!1390464))

(declare-fun m!5261503 () Bool)

(assert (=> bs!851869 m!5261503))

(assert (=> b!4516302 d!1390464))

(declare-fun d!1390466 () Bool)

(assert (=> d!1390466 (= (eq!613 lt!1694168 lt!1694148) (= (content!8346 (toList!4320 lt!1694168)) (content!8346 (toList!4320 lt!1694148))))))

(declare-fun bs!851870 () Bool)

(assert (= bs!851870 d!1390466))

(assert (=> bs!851870 m!5261375))

(assert (=> bs!851870 m!5261373))

(assert (=> b!4516302 d!1390466))

(declare-fun d!1390468 () Bool)

(assert (=> d!1390468 (= (eq!613 lt!1694149 lt!1694161) (= (content!8346 (toList!4320 lt!1694149)) (content!8346 (toList!4320 lt!1694161))))))

(declare-fun bs!851871 () Bool)

(assert (= bs!851871 d!1390468))

(assert (=> bs!851871 m!5261085))

(declare-fun m!5261505 () Bool)

(assert (=> bs!851871 m!5261505))

(assert (=> b!4516300 d!1390468))

(declare-fun d!1390470 () Bool)

(assert (=> d!1390470 (= (eq!613 lt!1694151 lt!1694161) (= (content!8346 (toList!4320 lt!1694151)) (content!8346 (toList!4320 lt!1694161))))))

(declare-fun bs!851872 () Bool)

(assert (= bs!851872 d!1390470))

(assert (=> bs!851872 m!5261087))

(assert (=> bs!851872 m!5261505))

(assert (=> b!4516300 d!1390470))

(declare-fun bs!851873 () Bool)

(declare-fun b!4516662 () Bool)

(assert (= bs!851873 (and b!4516662 b!4516604)))

(declare-fun lambda!171844 () Int)

(assert (=> bs!851873 (= (= lt!1694147 lt!1694513) (= lambda!171844 lambda!171830))))

(declare-fun bs!851874 () Bool)

(assert (= bs!851874 (and b!4516662 d!1390358)))

(assert (=> bs!851874 (= (= lt!1694147 lt!1694503) (= lambda!171844 lambda!171831))))

(declare-fun bs!851875 () Bool)

(assert (= bs!851875 (and b!4516662 d!1390326)))

(assert (=> bs!851875 (not (= lambda!171844 lambda!171772))))

(assert (=> bs!851873 (= (= lt!1694147 lt!1694172) (= lambda!171844 lambda!171829))))

(declare-fun bs!851876 () Bool)

(assert (= bs!851876 (and b!4516662 b!4516603)))

(assert (=> bs!851876 (= (= lt!1694147 lt!1694172) (= lambda!171844 lambda!171828))))

(assert (=> b!4516662 true))

(declare-fun bs!851877 () Bool)

(declare-fun b!4516663 () Bool)

(assert (= bs!851877 (and b!4516663 b!4516662)))

(declare-fun lambda!171845 () Int)

(assert (=> bs!851877 (= lambda!171845 lambda!171844)))

(declare-fun bs!851878 () Bool)

(assert (= bs!851878 (and b!4516663 b!4516604)))

(assert (=> bs!851878 (= (= lt!1694147 lt!1694513) (= lambda!171845 lambda!171830))))

(declare-fun bs!851879 () Bool)

(assert (= bs!851879 (and b!4516663 d!1390358)))

(assert (=> bs!851879 (= (= lt!1694147 lt!1694503) (= lambda!171845 lambda!171831))))

(declare-fun bs!851880 () Bool)

(assert (= bs!851880 (and b!4516663 d!1390326)))

(assert (=> bs!851880 (not (= lambda!171845 lambda!171772))))

(assert (=> bs!851878 (= (= lt!1694147 lt!1694172) (= lambda!171845 lambda!171829))))

(declare-fun bs!851881 () Bool)

(assert (= bs!851881 (and b!4516663 b!4516603)))

(assert (=> bs!851881 (= (= lt!1694147 lt!1694172) (= lambda!171845 lambda!171828))))

(assert (=> b!4516663 true))

(declare-fun lt!1694574 () ListMap!3581)

(declare-fun lambda!171846 () Int)

(assert (=> bs!851877 (= (= lt!1694574 lt!1694147) (= lambda!171846 lambda!171844))))

(assert (=> bs!851878 (= (= lt!1694574 lt!1694513) (= lambda!171846 lambda!171830))))

(assert (=> bs!851879 (= (= lt!1694574 lt!1694503) (= lambda!171846 lambda!171831))))

(assert (=> bs!851880 (not (= lambda!171846 lambda!171772))))

(assert (=> b!4516663 (= (= lt!1694574 lt!1694147) (= lambda!171846 lambda!171845))))

(assert (=> bs!851878 (= (= lt!1694574 lt!1694172) (= lambda!171846 lambda!171829))))

(assert (=> bs!851881 (= (= lt!1694574 lt!1694172) (= lambda!171846 lambda!171828))))

(assert (=> b!4516663 true))

(declare-fun bs!851882 () Bool)

(declare-fun d!1390472 () Bool)

(assert (= bs!851882 (and d!1390472 b!4516662)))

(declare-fun lt!1694564 () ListMap!3581)

(declare-fun lambda!171847 () Int)

(assert (=> bs!851882 (= (= lt!1694564 lt!1694147) (= lambda!171847 lambda!171844))))

(declare-fun bs!851883 () Bool)

(assert (= bs!851883 (and d!1390472 b!4516604)))

(assert (=> bs!851883 (= (= lt!1694564 lt!1694513) (= lambda!171847 lambda!171830))))

(declare-fun bs!851884 () Bool)

(assert (= bs!851884 (and d!1390472 d!1390358)))

(assert (=> bs!851884 (= (= lt!1694564 lt!1694503) (= lambda!171847 lambda!171831))))

(declare-fun bs!851885 () Bool)

(assert (= bs!851885 (and d!1390472 d!1390326)))

(assert (=> bs!851885 (not (= lambda!171847 lambda!171772))))

(declare-fun bs!851886 () Bool)

(assert (= bs!851886 (and d!1390472 b!4516663)))

(assert (=> bs!851886 (= (= lt!1694564 lt!1694574) (= lambda!171847 lambda!171846))))

(assert (=> bs!851886 (= (= lt!1694564 lt!1694147) (= lambda!171847 lambda!171845))))

(assert (=> bs!851883 (= (= lt!1694564 lt!1694172) (= lambda!171847 lambda!171829))))

(declare-fun bs!851887 () Bool)

(assert (= bs!851887 (and d!1390472 b!4516603)))

(assert (=> bs!851887 (= (= lt!1694564 lt!1694172) (= lambda!171847 lambda!171828))))

(assert (=> d!1390472 true))

(declare-fun bm!314590 () Bool)

(declare-fun c!770605 () Bool)

(declare-fun call!314596 () Bool)

(assert (=> bm!314590 (= call!314596 (forall!10253 (toList!4320 lt!1694147) (ite c!770605 lambda!171844 lambda!171845)))))

(declare-fun call!314595 () Bool)

(declare-fun bm!314591 () Bool)

(assert (=> bm!314591 (= call!314595 (forall!10253 (toList!4320 lt!1694147) (ite c!770605 lambda!171844 lambda!171846)))))

(declare-fun b!4516660 () Bool)

(declare-fun e!2813909 () Bool)

(assert (=> b!4516660 (= e!2813909 (forall!10253 (toList!4320 lt!1694147) lambda!171846))))

(declare-fun bm!314592 () Bool)

(declare-fun call!314597 () Unit!94398)

(assert (=> bm!314592 (= call!314597 (lemmaContainsAllItsOwnKeys!334 lt!1694147))))

(declare-fun b!4516661 () Bool)

(declare-fun res!1879444 () Bool)

(declare-fun e!2813908 () Bool)

(assert (=> b!4516661 (=> (not res!1879444) (not e!2813908))))

(assert (=> b!4516661 (= res!1879444 (forall!10253 (toList!4320 lt!1694147) lambda!171847))))

(assert (=> d!1390472 e!2813908))

(declare-fun res!1879443 () Bool)

(assert (=> d!1390472 (=> (not res!1879443) (not e!2813908))))

(assert (=> d!1390472 (= res!1879443 (forall!10253 (_2!28824 lt!1694150) lambda!171847))))

(declare-fun e!2813907 () ListMap!3581)

(assert (=> d!1390472 (= lt!1694564 e!2813907)))

(assert (=> d!1390472 (= c!770605 ((_ is Nil!50634) (_2!28824 lt!1694150)))))

(assert (=> d!1390472 (noDuplicateKeys!1156 (_2!28824 lt!1694150))))

(assert (=> d!1390472 (= (addToMapMapFromBucket!683 (_2!28824 lt!1694150) lt!1694147) lt!1694564)))

(assert (=> b!4516662 (= e!2813907 lt!1694147)))

(declare-fun lt!1694578 () Unit!94398)

(assert (=> b!4516662 (= lt!1694578 call!314597)))

(assert (=> b!4516662 call!314596))

(declare-fun lt!1694568 () Unit!94398)

(assert (=> b!4516662 (= lt!1694568 lt!1694578)))

(assert (=> b!4516662 call!314595))

(declare-fun lt!1694566 () Unit!94398)

(declare-fun Unit!94451 () Unit!94398)

(assert (=> b!4516662 (= lt!1694566 Unit!94451)))

(assert (=> b!4516663 (= e!2813907 lt!1694574)))

(declare-fun lt!1694581 () ListMap!3581)

(assert (=> b!4516663 (= lt!1694581 (+!1532 lt!1694147 (h!56483 (_2!28824 lt!1694150))))))

(assert (=> b!4516663 (= lt!1694574 (addToMapMapFromBucket!683 (t!357720 (_2!28824 lt!1694150)) (+!1532 lt!1694147 (h!56483 (_2!28824 lt!1694150)))))))

(declare-fun lt!1694563 () Unit!94398)

(assert (=> b!4516663 (= lt!1694563 call!314597)))

(assert (=> b!4516663 call!314596))

(declare-fun lt!1694576 () Unit!94398)

(assert (=> b!4516663 (= lt!1694576 lt!1694563)))

(assert (=> b!4516663 (forall!10253 (toList!4320 lt!1694581) lambda!171846)))

(declare-fun lt!1694579 () Unit!94398)

(declare-fun Unit!94452 () Unit!94398)

(assert (=> b!4516663 (= lt!1694579 Unit!94452)))

(assert (=> b!4516663 (forall!10253 (t!357720 (_2!28824 lt!1694150)) lambda!171846)))

(declare-fun lt!1694565 () Unit!94398)

(declare-fun Unit!94453 () Unit!94398)

(assert (=> b!4516663 (= lt!1694565 Unit!94453)))

(declare-fun lt!1694573 () Unit!94398)

(declare-fun Unit!94454 () Unit!94398)

(assert (=> b!4516663 (= lt!1694573 Unit!94454)))

(declare-fun lt!1694580 () Unit!94398)

(assert (=> b!4516663 (= lt!1694580 (forallContained!2505 (toList!4320 lt!1694581) lambda!171846 (h!56483 (_2!28824 lt!1694150))))))

(assert (=> b!4516663 (contains!13353 lt!1694581 (_1!28823 (h!56483 (_2!28824 lt!1694150))))))

(declare-fun lt!1694577 () Unit!94398)

(declare-fun Unit!94455 () Unit!94398)

(assert (=> b!4516663 (= lt!1694577 Unit!94455)))

(assert (=> b!4516663 (contains!13353 lt!1694574 (_1!28823 (h!56483 (_2!28824 lt!1694150))))))

(declare-fun lt!1694569 () Unit!94398)

(declare-fun Unit!94456 () Unit!94398)

(assert (=> b!4516663 (= lt!1694569 Unit!94456)))

(assert (=> b!4516663 (forall!10253 (_2!28824 lt!1694150) lambda!171846)))

(declare-fun lt!1694571 () Unit!94398)

(declare-fun Unit!94457 () Unit!94398)

(assert (=> b!4516663 (= lt!1694571 Unit!94457)))

(assert (=> b!4516663 (forall!10253 (toList!4320 lt!1694581) lambda!171846)))

(declare-fun lt!1694572 () Unit!94398)

(declare-fun Unit!94458 () Unit!94398)

(assert (=> b!4516663 (= lt!1694572 Unit!94458)))

(declare-fun lt!1694575 () Unit!94398)

(declare-fun Unit!94459 () Unit!94398)

(assert (=> b!4516663 (= lt!1694575 Unit!94459)))

(declare-fun lt!1694567 () Unit!94398)

(assert (=> b!4516663 (= lt!1694567 (addForallContainsKeyThenBeforeAdding!334 lt!1694147 lt!1694574 (_1!28823 (h!56483 (_2!28824 lt!1694150))) (_2!28823 (h!56483 (_2!28824 lt!1694150)))))))

(assert (=> b!4516663 (forall!10253 (toList!4320 lt!1694147) lambda!171846)))

(declare-fun lt!1694562 () Unit!94398)

(assert (=> b!4516663 (= lt!1694562 lt!1694567)))

(assert (=> b!4516663 call!314595))

(declare-fun lt!1694582 () Unit!94398)

(declare-fun Unit!94460 () Unit!94398)

(assert (=> b!4516663 (= lt!1694582 Unit!94460)))

(declare-fun res!1879442 () Bool)

(assert (=> b!4516663 (= res!1879442 (forall!10253 (_2!28824 lt!1694150) lambda!171846))))

(assert (=> b!4516663 (=> (not res!1879442) (not e!2813909))))

(assert (=> b!4516663 e!2813909))

(declare-fun lt!1694570 () Unit!94398)

(declare-fun Unit!94461 () Unit!94398)

(assert (=> b!4516663 (= lt!1694570 Unit!94461)))

(declare-fun b!4516664 () Bool)

(assert (=> b!4516664 (= e!2813908 (invariantList!1013 (toList!4320 lt!1694564)))))

(assert (= (and d!1390472 c!770605) b!4516662))

(assert (= (and d!1390472 (not c!770605)) b!4516663))

(assert (= (and b!4516663 res!1879442) b!4516660))

(assert (= (or b!4516662 b!4516663) bm!314591))

(assert (= (or b!4516662 b!4516663) bm!314590))

(assert (= (or b!4516662 b!4516663) bm!314592))

(assert (= (and d!1390472 res!1879443) b!4516661))

(assert (= (and b!4516661 res!1879444) b!4516664))

(declare-fun m!5261507 () Bool)

(assert (=> b!4516664 m!5261507))

(declare-fun m!5261509 () Bool)

(assert (=> b!4516663 m!5261509))

(declare-fun m!5261511 () Bool)

(assert (=> b!4516663 m!5261511))

(declare-fun m!5261513 () Bool)

(assert (=> b!4516663 m!5261513))

(declare-fun m!5261515 () Bool)

(assert (=> b!4516663 m!5261515))

(declare-fun m!5261517 () Bool)

(assert (=> b!4516663 m!5261517))

(assert (=> b!4516663 m!5261509))

(declare-fun m!5261519 () Bool)

(assert (=> b!4516663 m!5261519))

(assert (=> b!4516663 m!5261513))

(declare-fun m!5261521 () Bool)

(assert (=> b!4516663 m!5261521))

(declare-fun m!5261523 () Bool)

(assert (=> b!4516663 m!5261523))

(declare-fun m!5261525 () Bool)

(assert (=> b!4516663 m!5261525))

(assert (=> b!4516663 m!5261523))

(declare-fun m!5261527 () Bool)

(assert (=> b!4516663 m!5261527))

(declare-fun m!5261529 () Bool)

(assert (=> d!1390472 m!5261529))

(assert (=> d!1390472 m!5260793))

(declare-fun m!5261531 () Bool)

(assert (=> bm!314590 m!5261531))

(declare-fun m!5261533 () Bool)

(assert (=> bm!314592 m!5261533))

(declare-fun m!5261535 () Bool)

(assert (=> b!4516661 m!5261535))

(assert (=> b!4516660 m!5261515))

(declare-fun m!5261537 () Bool)

(assert (=> bm!314591 m!5261537))

(assert (=> b!4516300 d!1390472))

(declare-fun d!1390474 () Bool)

(assert (=> d!1390474 (eq!613 (addToMapMapFromBucket!683 (_2!28824 lt!1694150) lt!1694172) (addToMapMapFromBucket!683 (_2!28824 lt!1694150) lt!1694147))))

(declare-fun lt!1694585 () Unit!94398)

(declare-fun choose!29457 (ListMap!3581 ListMap!3581 List!50758) Unit!94398)

(assert (=> d!1390474 (= lt!1694585 (choose!29457 lt!1694172 lt!1694147 (_2!28824 lt!1694150)))))

(assert (=> d!1390474 (noDuplicateKeys!1156 (_2!28824 lt!1694150))))

(assert (=> d!1390474 (= (lemmaAddToMapFromBucketPreservesEquivalence!32 lt!1694172 lt!1694147 (_2!28824 lt!1694150)) lt!1694585)))

(declare-fun bs!851888 () Bool)

(assert (= bs!851888 d!1390474))

(assert (=> bs!851888 m!5260747))

(assert (=> bs!851888 m!5260777))

(declare-fun m!5261539 () Bool)

(assert (=> bs!851888 m!5261539))

(assert (=> bs!851888 m!5260793))

(assert (=> bs!851888 m!5260777))

(assert (=> bs!851888 m!5260747))

(declare-fun m!5261541 () Bool)

(assert (=> bs!851888 m!5261541))

(assert (=> b!4516300 d!1390474))

(declare-fun d!1390476 () Bool)

(declare-fun lt!1694586 () Bool)

(assert (=> d!1390476 (= lt!1694586 (select (content!8345 (t!357721 (toList!4319 lm!1477))) lt!1694152))))

(declare-fun e!2813911 () Bool)

(assert (=> d!1390476 (= lt!1694586 e!2813911)))

(declare-fun res!1879446 () Bool)

(assert (=> d!1390476 (=> (not res!1879446) (not e!2813911))))

(assert (=> d!1390476 (= res!1879446 ((_ is Cons!50635) (t!357721 (toList!4319 lm!1477))))))

(assert (=> d!1390476 (= (contains!13351 (t!357721 (toList!4319 lm!1477)) lt!1694152) lt!1694586)))

(declare-fun b!4516665 () Bool)

(declare-fun e!2813910 () Bool)

(assert (=> b!4516665 (= e!2813911 e!2813910)))

(declare-fun res!1879445 () Bool)

(assert (=> b!4516665 (=> res!1879445 e!2813910)))

(assert (=> b!4516665 (= res!1879445 (= (h!56484 (t!357721 (toList!4319 lm!1477))) lt!1694152))))

(declare-fun b!4516666 () Bool)

(assert (=> b!4516666 (= e!2813910 (contains!13351 (t!357721 (t!357721 (toList!4319 lm!1477))) lt!1694152))))

(assert (= (and d!1390476 res!1879446) b!4516665))

(assert (= (and b!4516665 (not res!1879445)) b!4516666))

(declare-fun m!5261543 () Bool)

(assert (=> d!1390476 m!5261543))

(declare-fun m!5261545 () Bool)

(assert (=> d!1390476 m!5261545))

(declare-fun m!5261547 () Bool)

(assert (=> b!4516666 m!5261547))

(assert (=> b!4516301 d!1390476))

(declare-fun b!4516671 () Bool)

(declare-fun e!2813914 () Bool)

(declare-fun tp!1338019 () Bool)

(declare-fun tp!1338020 () Bool)

(assert (=> b!4516671 (= e!2813914 (and tp!1338019 tp!1338020))))

(assert (=> b!4516304 (= tp!1338005 e!2813914)))

(assert (= (and b!4516304 ((_ is Cons!50635) (toList!4319 lm!1477))) b!4516671))

(declare-fun tp!1338023 () Bool)

(declare-fun b!4516676 () Bool)

(declare-fun e!2813917 () Bool)

(assert (=> b!4516676 (= e!2813917 (and tp_is_empty!27901 tp_is_empty!27903 tp!1338023))))

(assert (=> b!4516290 (= tp!1338004 e!2813917)))

(assert (= (and b!4516290 ((_ is Cons!50634) (t!357720 newBucket!178))) b!4516676))

(declare-fun b_lambda!154391 () Bool)

(assert (= b_lambda!154377 (or start!446940 b_lambda!154391)))

(declare-fun bs!851889 () Bool)

(declare-fun d!1390478 () Bool)

(assert (= bs!851889 (and d!1390478 start!446940)))

(assert (=> bs!851889 (= (dynLambda!21155 lambda!171717 lt!1694152) (noDuplicateKeys!1156 (_2!28824 lt!1694152)))))

(declare-fun m!5261549 () Bool)

(assert (=> bs!851889 m!5261549))

(assert (=> d!1390348 d!1390478))

(declare-fun b_lambda!154393 () Bool)

(assert (= b_lambda!154383 (or start!446940 b_lambda!154393)))

(declare-fun bs!851890 () Bool)

(declare-fun d!1390480 () Bool)

(assert (= bs!851890 (and d!1390480 start!446940)))

(assert (=> bs!851890 (= (dynLambda!21155 lambda!171717 (h!56484 (toList!4319 lm!1477))) (noDuplicateKeys!1156 (_2!28824 (h!56484 (toList!4319 lm!1477)))))))

(declare-fun m!5261551 () Bool)

(assert (=> bs!851890 m!5261551))

(assert (=> d!1390430 d!1390480))

(declare-fun b_lambda!154395 () Bool)

(assert (= b_lambda!154373 (or start!446940 b_lambda!154395)))

(assert (=> b!4516317 d!1390480))

(check-sat (not d!1390470) (not b!4516624) (not b_lambda!154393) (not b!4516318) (not b!4516324) (not b!4516655) (not b!4516657) (not bm!314592) (not d!1390294) (not b_lambda!154391) (not d!1390424) (not b!4516421) (not b!4516654) (not b!4516601) (not b!4516417) (not b!4516485) (not b!4516602) (not d!1390456) (not b!4516610) (not b!4516380) tp_is_empty!27903 (not d!1390342) (not d!1390268) (not d!1390352) (not b!4516648) (not d!1390296) (not d!1390326) (not d!1390462) (not b!4516605) (not d!1390324) (not b!4516331) (not bm!314568) (not d!1390328) (not b!4516604) (not b!4516352) (not d!1390314) (not d!1390460) (not d!1390334) (not bm!314561) (not d!1390290) (not d!1390476) (not b!4516358) (not d!1390318) (not b!4516383) (not d!1390454) (not d!1390298) (not b!4516612) (not b!4516651) (not b!4516660) (not b!4516323) (not b!4516646) (not d!1390448) (not bm!314589) (not b!4516658) (not b!4516676) (not b!4516423) (not b!4516473) (not b!4516382) (not d!1390430) (not b!4516333) (not d!1390340) (not b!4516356) (not d!1390450) (not d!1390288) tp_is_empty!27901 (not d!1390446) (not b!4516663) (not b!4516664) (not d!1390270) (not b!4516671) (not b!4516482) (not d!1390284) (not b!4516645) (not d!1390438) (not b!4516381) (not b!4516622) (not b!4516377) (not bs!851890) (not d!1390474) (not d!1390282) (not bm!314572) (not b!4516360) (not b!4516375) (not b!4516611) (not b!4516453) (not b!4516425) (not b!4516359) (not b!4516652) (not d!1390320) (not d!1390358) (not d!1390272) (not b!4516487) (not b!4516424) (not bs!851889) (not b!4516420) (not b!4516422) (not d!1390346) (not d!1390300) (not b!4516619) (not b!4516467) (not b!4516355) (not d!1390464) (not d!1390356) (not b!4516384) (not d!1390472) (not b!4516393) (not b!4516661) (not b!4516357) (not b!4516608) (not bm!314590) (not bm!314587) (not b!4516621) (not d!1390452) (not d!1390458) (not d!1390468) (not d!1390292) (not b!4516647) (not bm!314591) (not d!1390466) (not d!1390426) (not b!4516666) (not bm!314588) (not b!4516312) (not b!4516411) (not b!4516656) (not d!1390348) (not b!4516385) (not b_lambda!154395))
(check-sat)
(get-model)

(declare-fun d!1390484 () Bool)

(declare-fun lt!1694589 () Bool)

(assert (=> d!1390484 (= lt!1694589 (select (content!8347 e!2813702) key!3287))))

(declare-fun e!2813929 () Bool)

(assert (=> d!1390484 (= lt!1694589 e!2813929)))

(declare-fun res!1879457 () Bool)

(assert (=> d!1390484 (=> (not res!1879457) (not e!2813929))))

(assert (=> d!1390484 (= res!1879457 ((_ is Cons!50637) e!2813702))))

(assert (=> d!1390484 (= (contains!13354 e!2813702 key!3287) lt!1694589)))

(declare-fun b!4516687 () Bool)

(declare-fun e!2813928 () Bool)

(assert (=> b!4516687 (= e!2813929 e!2813928)))

(declare-fun res!1879458 () Bool)

(assert (=> b!4516687 (=> res!1879458 e!2813928)))

(assert (=> b!4516687 (= res!1879458 (= (h!56488 e!2813702) key!3287))))

(declare-fun b!4516688 () Bool)

(assert (=> b!4516688 (= e!2813928 (contains!13354 (t!357723 e!2813702) key!3287))))

(assert (= (and d!1390484 res!1879457) b!4516687))

(assert (= (and b!4516687 (not res!1879458)) b!4516688))

(declare-fun m!5261555 () Bool)

(assert (=> d!1390484 m!5261555))

(declare-fun m!5261557 () Bool)

(assert (=> d!1390484 m!5261557))

(declare-fun m!5261559 () Bool)

(assert (=> b!4516688 m!5261559))

(assert (=> bm!314561 d!1390484))

(declare-fun d!1390488 () Bool)

(declare-fun lt!1694590 () Bool)

(assert (=> d!1390488 (= lt!1694590 (select (content!8347 e!2813740) key!3287))))

(declare-fun e!2813935 () Bool)

(assert (=> d!1390488 (= lt!1694590 e!2813935)))

(declare-fun res!1879463 () Bool)

(assert (=> d!1390488 (=> (not res!1879463) (not e!2813935))))

(assert (=> d!1390488 (= res!1879463 ((_ is Cons!50637) e!2813740))))

(assert (=> d!1390488 (= (contains!13354 e!2813740 key!3287) lt!1694590)))

(declare-fun b!4516693 () Bool)

(declare-fun e!2813934 () Bool)

(assert (=> b!4516693 (= e!2813935 e!2813934)))

(declare-fun res!1879464 () Bool)

(assert (=> b!4516693 (=> res!1879464 e!2813934)))

(assert (=> b!4516693 (= res!1879464 (= (h!56488 e!2813740) key!3287))))

(declare-fun b!4516694 () Bool)

(assert (=> b!4516694 (= e!2813934 (contains!13354 (t!357723 e!2813740) key!3287))))

(assert (= (and d!1390488 res!1879463) b!4516693))

(assert (= (and b!4516693 (not res!1879464)) b!4516694))

(declare-fun m!5261561 () Bool)

(assert (=> d!1390488 m!5261561))

(declare-fun m!5261563 () Bool)

(assert (=> d!1390488 m!5261563))

(declare-fun m!5261565 () Bool)

(assert (=> b!4516694 m!5261565))

(assert (=> bm!314572 d!1390488))

(declare-fun d!1390490 () Bool)

(declare-fun res!1879471 () Bool)

(declare-fun e!2813942 () Bool)

(assert (=> d!1390490 (=> res!1879471 e!2813942)))

(assert (=> d!1390490 (= res!1879471 ((_ is Nil!50634) (toList!4320 lt!1694172)))))

(assert (=> d!1390490 (= (forall!10253 (toList!4320 lt!1694172) (ite c!770601 lambda!171828 lambda!171830)) e!2813942)))

(declare-fun b!4516701 () Bool)

(declare-fun e!2813943 () Bool)

(assert (=> b!4516701 (= e!2813942 e!2813943)))

(declare-fun res!1879472 () Bool)

(assert (=> b!4516701 (=> (not res!1879472) (not e!2813943))))

(declare-fun dynLambda!21156 (Int tuple2!51058) Bool)

(assert (=> b!4516701 (= res!1879472 (dynLambda!21156 (ite c!770601 lambda!171828 lambda!171830) (h!56483 (toList!4320 lt!1694172))))))

(declare-fun b!4516702 () Bool)

(assert (=> b!4516702 (= e!2813943 (forall!10253 (t!357720 (toList!4320 lt!1694172)) (ite c!770601 lambda!171828 lambda!171830)))))

(assert (= (and d!1390490 (not res!1879471)) b!4516701))

(assert (= (and b!4516701 res!1879472) b!4516702))

(declare-fun b_lambda!154397 () Bool)

(assert (=> (not b_lambda!154397) (not b!4516701)))

(declare-fun m!5261569 () Bool)

(assert (=> b!4516701 m!5261569))

(declare-fun m!5261571 () Bool)

(assert (=> b!4516702 m!5261571))

(assert (=> bm!314588 d!1390490))

(declare-fun d!1390494 () Bool)

(declare-fun res!1879473 () Bool)

(declare-fun e!2813944 () Bool)

(assert (=> d!1390494 (=> res!1879473 e!2813944)))

(assert (=> d!1390494 (= res!1879473 (and ((_ is Cons!50634) (t!357720 newBucket!178)) (= (_1!28823 (h!56483 (t!357720 newBucket!178))) (_1!28823 (h!56483 newBucket!178)))))))

(assert (=> d!1390494 (= (containsKey!1768 (t!357720 newBucket!178) (_1!28823 (h!56483 newBucket!178))) e!2813944)))

(declare-fun b!4516703 () Bool)

(declare-fun e!2813945 () Bool)

(assert (=> b!4516703 (= e!2813944 e!2813945)))

(declare-fun res!1879474 () Bool)

(assert (=> b!4516703 (=> (not res!1879474) (not e!2813945))))

(assert (=> b!4516703 (= res!1879474 ((_ is Cons!50634) (t!357720 newBucket!178)))))

(declare-fun b!4516704 () Bool)

(assert (=> b!4516704 (= e!2813945 (containsKey!1768 (t!357720 (t!357720 newBucket!178)) (_1!28823 (h!56483 newBucket!178))))))

(assert (= (and d!1390494 (not res!1879473)) b!4516703))

(assert (= (and b!4516703 res!1879474) b!4516704))

(declare-fun m!5261573 () Bool)

(assert (=> b!4516704 m!5261573))

(assert (=> b!4516323 d!1390494))

(declare-fun d!1390496 () Bool)

(declare-fun noDuplicatedKeys!258 (List!50758) Bool)

(assert (=> d!1390496 (= (invariantList!1013 (toList!4320 lt!1694295)) (noDuplicatedKeys!258 (toList!4320 lt!1694295)))))

(declare-fun bs!851892 () Bool)

(assert (= bs!851892 d!1390496))

(declare-fun m!5261577 () Bool)

(assert (=> bs!851892 m!5261577))

(assert (=> d!1390314 d!1390496))

(declare-fun d!1390500 () Bool)

(declare-fun res!1879475 () Bool)

(declare-fun e!2813946 () Bool)

(assert (=> d!1390500 (=> res!1879475 e!2813946)))

(assert (=> d!1390500 (= res!1879475 ((_ is Nil!50635) (toList!4319 lt!1694164)))))

(assert (=> d!1390500 (= (forall!10251 (toList!4319 lt!1694164) lambda!171763) e!2813946)))

(declare-fun b!4516705 () Bool)

(declare-fun e!2813947 () Bool)

(assert (=> b!4516705 (= e!2813946 e!2813947)))

(declare-fun res!1879476 () Bool)

(assert (=> b!4516705 (=> (not res!1879476) (not e!2813947))))

(assert (=> b!4516705 (= res!1879476 (dynLambda!21155 lambda!171763 (h!56484 (toList!4319 lt!1694164))))))

(declare-fun b!4516706 () Bool)

(assert (=> b!4516706 (= e!2813947 (forall!10251 (t!357721 (toList!4319 lt!1694164)) lambda!171763))))

(assert (= (and d!1390500 (not res!1879475)) b!4516705))

(assert (= (and b!4516705 res!1879476) b!4516706))

(declare-fun b_lambda!154399 () Bool)

(assert (=> (not b_lambda!154399) (not b!4516705)))

(declare-fun m!5261579 () Bool)

(assert (=> b!4516705 m!5261579))

(declare-fun m!5261581 () Bool)

(assert (=> b!4516706 m!5261581))

(assert (=> d!1390314 d!1390500))

(declare-fun d!1390502 () Bool)

(declare-fun lt!1694591 () Bool)

(assert (=> d!1390502 (= lt!1694591 (select (content!8347 (keys!17586 lt!1694159)) key!3287))))

(declare-fun e!2813949 () Bool)

(assert (=> d!1390502 (= lt!1694591 e!2813949)))

(declare-fun res!1879477 () Bool)

(assert (=> d!1390502 (=> (not res!1879477) (not e!2813949))))

(assert (=> d!1390502 (= res!1879477 ((_ is Cons!50637) (keys!17586 lt!1694159)))))

(assert (=> d!1390502 (= (contains!13354 (keys!17586 lt!1694159) key!3287) lt!1694591)))

(declare-fun b!4516707 () Bool)

(declare-fun e!2813948 () Bool)

(assert (=> b!4516707 (= e!2813949 e!2813948)))

(declare-fun res!1879478 () Bool)

(assert (=> b!4516707 (=> res!1879478 e!2813948)))

(assert (=> b!4516707 (= res!1879478 (= (h!56488 (keys!17586 lt!1694159)) key!3287))))

(declare-fun b!4516708 () Bool)

(assert (=> b!4516708 (= e!2813948 (contains!13354 (t!357723 (keys!17586 lt!1694159)) key!3287))))

(assert (= (and d!1390502 res!1879477) b!4516707))

(assert (= (and b!4516707 (not res!1879478)) b!4516708))

(assert (=> d!1390502 m!5260975))

(assert (=> d!1390502 m!5261445))

(declare-fun m!5261583 () Bool)

(assert (=> d!1390502 m!5261583))

(declare-fun m!5261585 () Bool)

(assert (=> b!4516708 m!5261585))

(assert (=> b!4516423 d!1390502))

(declare-fun b!4516724 () Bool)

(assert (=> b!4516724 true))

(declare-fun d!1390504 () Bool)

(declare-fun e!2813960 () Bool)

(assert (=> d!1390504 e!2813960))

(declare-fun res!1879493 () Bool)

(assert (=> d!1390504 (=> (not res!1879493) (not e!2813960))))

(declare-fun lt!1694598 () List!50761)

(declare-fun noDuplicate!743 (List!50761) Bool)

(assert (=> d!1390504 (= res!1879493 (noDuplicate!743 lt!1694598))))

(assert (=> d!1390504 (= lt!1694598 (getKeysList!461 (toList!4320 lt!1694159)))))

(assert (=> d!1390504 (= (keys!17586 lt!1694159) lt!1694598)))

(declare-fun b!4516723 () Bool)

(declare-fun res!1879495 () Bool)

(assert (=> b!4516723 (=> (not res!1879495) (not e!2813960))))

(declare-fun length!342 (List!50761) Int)

(declare-fun length!343 (List!50758) Int)

(assert (=> b!4516723 (= res!1879495 (= (length!342 lt!1694598) (length!343 (toList!4320 lt!1694159))))))

(declare-fun res!1879494 () Bool)

(assert (=> b!4516724 (=> (not res!1879494) (not e!2813960))))

(declare-fun lambda!171852 () Int)

(declare-fun forall!10254 (List!50761 Int) Bool)

(assert (=> b!4516724 (= res!1879494 (forall!10254 lt!1694598 lambda!171852))))

(declare-fun lambda!171853 () Int)

(declare-fun b!4516725 () Bool)

(declare-fun map!11132 (List!50758 Int) List!50761)

(assert (=> b!4516725 (= e!2813960 (= (content!8347 lt!1694598) (content!8347 (map!11132 (toList!4320 lt!1694159) lambda!171853))))))

(assert (= (and d!1390504 res!1879493) b!4516723))

(assert (= (and b!4516723 res!1879495) b!4516724))

(assert (= (and b!4516724 res!1879494) b!4516725))

(declare-fun m!5261603 () Bool)

(assert (=> d!1390504 m!5261603))

(assert (=> d!1390504 m!5260983))

(declare-fun m!5261605 () Bool)

(assert (=> b!4516723 m!5261605))

(declare-fun m!5261607 () Bool)

(assert (=> b!4516723 m!5261607))

(declare-fun m!5261609 () Bool)

(assert (=> b!4516724 m!5261609))

(declare-fun m!5261611 () Bool)

(assert (=> b!4516725 m!5261611))

(declare-fun m!5261613 () Bool)

(assert (=> b!4516725 m!5261613))

(assert (=> b!4516725 m!5261613))

(declare-fun m!5261615 () Bool)

(assert (=> b!4516725 m!5261615))

(assert (=> b!4516423 d!1390504))

(declare-fun d!1390516 () Bool)

(declare-fun res!1879502 () Bool)

(declare-fun e!2813967 () Bool)

(assert (=> d!1390516 (=> res!1879502 e!2813967)))

(assert (=> d!1390516 (= res!1879502 (and ((_ is Cons!50634) (toList!4320 (extractMap!1212 (t!357721 (toList!4319 lm!1477))))) (= (_1!28823 (h!56483 (toList!4320 (extractMap!1212 (t!357721 (toList!4319 lm!1477)))))) key!3287)))))

(assert (=> d!1390516 (= (containsKey!1771 (toList!4320 (extractMap!1212 (t!357721 (toList!4319 lm!1477)))) key!3287) e!2813967)))

(declare-fun b!4516734 () Bool)

(declare-fun e!2813968 () Bool)

(assert (=> b!4516734 (= e!2813967 e!2813968)))

(declare-fun res!1879503 () Bool)

(assert (=> b!4516734 (=> (not res!1879503) (not e!2813968))))

(assert (=> b!4516734 (= res!1879503 ((_ is Cons!50634) (toList!4320 (extractMap!1212 (t!357721 (toList!4319 lm!1477))))))))

(declare-fun b!4516735 () Bool)

(assert (=> b!4516735 (= e!2813968 (containsKey!1771 (t!357720 (toList!4320 (extractMap!1212 (t!357721 (toList!4319 lm!1477))))) key!3287))))

(assert (= (and d!1390516 (not res!1879502)) b!4516734))

(assert (= (and b!4516734 res!1879503) b!4516735))

(declare-fun m!5261617 () Bool)

(assert (=> b!4516735 m!5261617))

(assert (=> d!1390296 d!1390516))

(declare-fun d!1390518 () Bool)

(declare-fun res!1879506 () Bool)

(declare-fun e!2813970 () Bool)

(assert (=> d!1390518 (=> res!1879506 e!2813970)))

(declare-fun e!2813971 () Bool)

(assert (=> d!1390518 (= res!1879506 e!2813971)))

(declare-fun res!1879504 () Bool)

(assert (=> d!1390518 (=> (not res!1879504) (not e!2813971))))

(assert (=> d!1390518 (= res!1879504 ((_ is Cons!50635) (t!357721 (t!357721 (toList!4319 lm!1477)))))))

(assert (=> d!1390518 (= (containsKeyBiggerList!136 (t!357721 (t!357721 (toList!4319 lm!1477))) key!3287) e!2813970)))

(declare-fun b!4516736 () Bool)

(assert (=> b!4516736 (= e!2813971 (containsKey!1768 (_2!28824 (h!56484 (t!357721 (t!357721 (toList!4319 lm!1477))))) key!3287))))

(declare-fun b!4516737 () Bool)

(declare-fun e!2813969 () Bool)

(assert (=> b!4516737 (= e!2813970 e!2813969)))

(declare-fun res!1879505 () Bool)

(assert (=> b!4516737 (=> (not res!1879505) (not e!2813969))))

(assert (=> b!4516737 (= res!1879505 ((_ is Cons!50635) (t!357721 (t!357721 (toList!4319 lm!1477)))))))

(declare-fun b!4516738 () Bool)

(assert (=> b!4516738 (= e!2813969 (containsKeyBiggerList!136 (t!357721 (t!357721 (t!357721 (toList!4319 lm!1477)))) key!3287))))

(assert (= (and d!1390518 res!1879504) b!4516736))

(assert (= (and d!1390518 (not res!1879506)) b!4516737))

(assert (= (and b!4516737 res!1879505) b!4516738))

(declare-fun m!5261619 () Bool)

(assert (=> b!4516736 m!5261619))

(declare-fun m!5261621 () Bool)

(assert (=> b!4516738 m!5261621))

(assert (=> b!4516621 d!1390518))

(assert (=> d!1390438 d!1390436))

(declare-fun d!1390520 () Bool)

(assert (=> d!1390520 (containsKeyBiggerList!136 (toList!4319 lt!1694164) key!3287)))

(assert (=> d!1390520 true))

(declare-fun _$33!655 () Unit!94398)

(assert (=> d!1390520 (= (choose!29454 lt!1694164 key!3287 hashF!1107) _$33!655)))

(declare-fun bs!851896 () Bool)

(assert (= bs!851896 d!1390520))

(assert (=> bs!851896 m!5260707))

(assert (=> d!1390438 d!1390520))

(declare-fun d!1390524 () Bool)

(declare-fun res!1879507 () Bool)

(declare-fun e!2813972 () Bool)

(assert (=> d!1390524 (=> res!1879507 e!2813972)))

(assert (=> d!1390524 (= res!1879507 ((_ is Nil!50635) (toList!4319 lt!1694164)))))

(assert (=> d!1390524 (= (forall!10251 (toList!4319 lt!1694164) lambda!171838) e!2813972)))

(declare-fun b!4516739 () Bool)

(declare-fun e!2813973 () Bool)

(assert (=> b!4516739 (= e!2813972 e!2813973)))

(declare-fun res!1879508 () Bool)

(assert (=> b!4516739 (=> (not res!1879508) (not e!2813973))))

(assert (=> b!4516739 (= res!1879508 (dynLambda!21155 lambda!171838 (h!56484 (toList!4319 lt!1694164))))))

(declare-fun b!4516740 () Bool)

(assert (=> b!4516740 (= e!2813973 (forall!10251 (t!357721 (toList!4319 lt!1694164)) lambda!171838))))

(assert (= (and d!1390524 (not res!1879507)) b!4516739))

(assert (= (and b!4516739 res!1879508) b!4516740))

(declare-fun b_lambda!154403 () Bool)

(assert (=> (not b_lambda!154403) (not b!4516739)))

(declare-fun m!5261627 () Bool)

(assert (=> b!4516739 m!5261627))

(declare-fun m!5261629 () Bool)

(assert (=> b!4516740 m!5261629))

(assert (=> d!1390438 d!1390524))

(declare-fun bs!851897 () Bool)

(declare-fun b!4516743 () Bool)

(assert (= bs!851897 (and b!4516743 b!4516662)))

(declare-fun lambda!171854 () Int)

(assert (=> bs!851897 (= (= (extractMap!1212 (t!357721 (toList!4319 lt!1694164))) lt!1694147) (= lambda!171854 lambda!171844))))

(declare-fun bs!851898 () Bool)

(assert (= bs!851898 (and b!4516743 b!4516604)))

(assert (=> bs!851898 (= (= (extractMap!1212 (t!357721 (toList!4319 lt!1694164))) lt!1694513) (= lambda!171854 lambda!171830))))

(declare-fun bs!851899 () Bool)

(assert (= bs!851899 (and b!4516743 d!1390358)))

(assert (=> bs!851899 (= (= (extractMap!1212 (t!357721 (toList!4319 lt!1694164))) lt!1694503) (= lambda!171854 lambda!171831))))

(declare-fun bs!851900 () Bool)

(assert (= bs!851900 (and b!4516743 d!1390326)))

(assert (=> bs!851900 (not (= lambda!171854 lambda!171772))))

(declare-fun bs!851901 () Bool)

(assert (= bs!851901 (and b!4516743 b!4516663)))

(assert (=> bs!851901 (= (= (extractMap!1212 (t!357721 (toList!4319 lt!1694164))) lt!1694574) (= lambda!171854 lambda!171846))))

(declare-fun bs!851902 () Bool)

(assert (= bs!851902 (and b!4516743 d!1390472)))

(assert (=> bs!851902 (= (= (extractMap!1212 (t!357721 (toList!4319 lt!1694164))) lt!1694564) (= lambda!171854 lambda!171847))))

(assert (=> bs!851901 (= (= (extractMap!1212 (t!357721 (toList!4319 lt!1694164))) lt!1694147) (= lambda!171854 lambda!171845))))

(assert (=> bs!851898 (= (= (extractMap!1212 (t!357721 (toList!4319 lt!1694164))) lt!1694172) (= lambda!171854 lambda!171829))))

(declare-fun bs!851903 () Bool)

(assert (= bs!851903 (and b!4516743 b!4516603)))

(assert (=> bs!851903 (= (= (extractMap!1212 (t!357721 (toList!4319 lt!1694164))) lt!1694172) (= lambda!171854 lambda!171828))))

(assert (=> b!4516743 true))

(declare-fun bs!851904 () Bool)

(declare-fun b!4516744 () Bool)

(assert (= bs!851904 (and b!4516744 b!4516662)))

(declare-fun lambda!171855 () Int)

(assert (=> bs!851904 (= (= (extractMap!1212 (t!357721 (toList!4319 lt!1694164))) lt!1694147) (= lambda!171855 lambda!171844))))

(declare-fun bs!851905 () Bool)

(assert (= bs!851905 (and b!4516744 d!1390358)))

(assert (=> bs!851905 (= (= (extractMap!1212 (t!357721 (toList!4319 lt!1694164))) lt!1694503) (= lambda!171855 lambda!171831))))

(declare-fun bs!851906 () Bool)

(assert (= bs!851906 (and b!4516744 d!1390326)))

(assert (=> bs!851906 (not (= lambda!171855 lambda!171772))))

(declare-fun bs!851907 () Bool)

(assert (= bs!851907 (and b!4516744 b!4516663)))

(assert (=> bs!851907 (= (= (extractMap!1212 (t!357721 (toList!4319 lt!1694164))) lt!1694574) (= lambda!171855 lambda!171846))))

(declare-fun bs!851908 () Bool)

(assert (= bs!851908 (and b!4516744 d!1390472)))

(assert (=> bs!851908 (= (= (extractMap!1212 (t!357721 (toList!4319 lt!1694164))) lt!1694564) (= lambda!171855 lambda!171847))))

(assert (=> bs!851907 (= (= (extractMap!1212 (t!357721 (toList!4319 lt!1694164))) lt!1694147) (= lambda!171855 lambda!171845))))

(declare-fun bs!851909 () Bool)

(assert (= bs!851909 (and b!4516744 b!4516743)))

(assert (=> bs!851909 (= lambda!171855 lambda!171854)))

(declare-fun bs!851910 () Bool)

(assert (= bs!851910 (and b!4516744 b!4516604)))

(assert (=> bs!851910 (= (= (extractMap!1212 (t!357721 (toList!4319 lt!1694164))) lt!1694513) (= lambda!171855 lambda!171830))))

(assert (=> bs!851910 (= (= (extractMap!1212 (t!357721 (toList!4319 lt!1694164))) lt!1694172) (= lambda!171855 lambda!171829))))

(declare-fun bs!851911 () Bool)

(assert (= bs!851911 (and b!4516744 b!4516603)))

(assert (=> bs!851911 (= (= (extractMap!1212 (t!357721 (toList!4319 lt!1694164))) lt!1694172) (= lambda!171855 lambda!171828))))

(assert (=> b!4516744 true))

(declare-fun lt!1694614 () ListMap!3581)

(declare-fun lambda!171856 () Int)

(assert (=> bs!851904 (= (= lt!1694614 lt!1694147) (= lambda!171856 lambda!171844))))

(assert (=> bs!851905 (= (= lt!1694614 lt!1694503) (= lambda!171856 lambda!171831))))

(assert (=> bs!851906 (not (= lambda!171856 lambda!171772))))

(assert (=> bs!851907 (= (= lt!1694614 lt!1694574) (= lambda!171856 lambda!171846))))

(assert (=> bs!851908 (= (= lt!1694614 lt!1694564) (= lambda!171856 lambda!171847))))

(assert (=> bs!851907 (= (= lt!1694614 lt!1694147) (= lambda!171856 lambda!171845))))

(assert (=> b!4516744 (= (= lt!1694614 (extractMap!1212 (t!357721 (toList!4319 lt!1694164)))) (= lambda!171856 lambda!171855))))

(assert (=> bs!851909 (= (= lt!1694614 (extractMap!1212 (t!357721 (toList!4319 lt!1694164)))) (= lambda!171856 lambda!171854))))

(assert (=> bs!851910 (= (= lt!1694614 lt!1694513) (= lambda!171856 lambda!171830))))

(assert (=> bs!851910 (= (= lt!1694614 lt!1694172) (= lambda!171856 lambda!171829))))

(assert (=> bs!851911 (= (= lt!1694614 lt!1694172) (= lambda!171856 lambda!171828))))

(assert (=> b!4516744 true))

(declare-fun bs!851912 () Bool)

(declare-fun d!1390526 () Bool)

(assert (= bs!851912 (and d!1390526 b!4516662)))

(declare-fun lt!1694604 () ListMap!3581)

(declare-fun lambda!171857 () Int)

(assert (=> bs!851912 (= (= lt!1694604 lt!1694147) (= lambda!171857 lambda!171844))))

(declare-fun bs!851913 () Bool)

(assert (= bs!851913 (and d!1390526 d!1390358)))

(assert (=> bs!851913 (= (= lt!1694604 lt!1694503) (= lambda!171857 lambda!171831))))

(declare-fun bs!851914 () Bool)

(assert (= bs!851914 (and d!1390526 d!1390326)))

(assert (=> bs!851914 (not (= lambda!171857 lambda!171772))))

(declare-fun bs!851915 () Bool)

(assert (= bs!851915 (and d!1390526 b!4516744)))

(assert (=> bs!851915 (= (= lt!1694604 lt!1694614) (= lambda!171857 lambda!171856))))

(declare-fun bs!851916 () Bool)

(assert (= bs!851916 (and d!1390526 b!4516663)))

(assert (=> bs!851916 (= (= lt!1694604 lt!1694574) (= lambda!171857 lambda!171846))))

(declare-fun bs!851917 () Bool)

(assert (= bs!851917 (and d!1390526 d!1390472)))

(assert (=> bs!851917 (= (= lt!1694604 lt!1694564) (= lambda!171857 lambda!171847))))

(assert (=> bs!851916 (= (= lt!1694604 lt!1694147) (= lambda!171857 lambda!171845))))

(assert (=> bs!851915 (= (= lt!1694604 (extractMap!1212 (t!357721 (toList!4319 lt!1694164)))) (= lambda!171857 lambda!171855))))

(declare-fun bs!851918 () Bool)

(assert (= bs!851918 (and d!1390526 b!4516743)))

(assert (=> bs!851918 (= (= lt!1694604 (extractMap!1212 (t!357721 (toList!4319 lt!1694164)))) (= lambda!171857 lambda!171854))))

(declare-fun bs!851919 () Bool)

(assert (= bs!851919 (and d!1390526 b!4516604)))

(assert (=> bs!851919 (= (= lt!1694604 lt!1694513) (= lambda!171857 lambda!171830))))

(assert (=> bs!851919 (= (= lt!1694604 lt!1694172) (= lambda!171857 lambda!171829))))

(declare-fun bs!851920 () Bool)

(assert (= bs!851920 (and d!1390526 b!4516603)))

(assert (=> bs!851920 (= (= lt!1694604 lt!1694172) (= lambda!171857 lambda!171828))))

(assert (=> d!1390526 true))

(declare-fun c!770606 () Bool)

(declare-fun call!314599 () Bool)

(declare-fun bm!314593 () Bool)

(assert (=> bm!314593 (= call!314599 (forall!10253 (toList!4320 (extractMap!1212 (t!357721 (toList!4319 lt!1694164)))) (ite c!770606 lambda!171854 lambda!171855)))))

(declare-fun call!314598 () Bool)

(declare-fun bm!314594 () Bool)

(assert (=> bm!314594 (= call!314598 (forall!10253 (toList!4320 (extractMap!1212 (t!357721 (toList!4319 lt!1694164)))) (ite c!770606 lambda!171854 lambda!171856)))))

(declare-fun b!4516741 () Bool)

(declare-fun e!2813976 () Bool)

(assert (=> b!4516741 (= e!2813976 (forall!10253 (toList!4320 (extractMap!1212 (t!357721 (toList!4319 lt!1694164)))) lambda!171856))))

(declare-fun bm!314595 () Bool)

(declare-fun call!314600 () Unit!94398)

(assert (=> bm!314595 (= call!314600 (lemmaContainsAllItsOwnKeys!334 (extractMap!1212 (t!357721 (toList!4319 lt!1694164)))))))

(declare-fun b!4516742 () Bool)

(declare-fun res!1879511 () Bool)

(declare-fun e!2813975 () Bool)

(assert (=> b!4516742 (=> (not res!1879511) (not e!2813975))))

(assert (=> b!4516742 (= res!1879511 (forall!10253 (toList!4320 (extractMap!1212 (t!357721 (toList!4319 lt!1694164)))) lambda!171857))))

(assert (=> d!1390526 e!2813975))

(declare-fun res!1879510 () Bool)

(assert (=> d!1390526 (=> (not res!1879510) (not e!2813975))))

(assert (=> d!1390526 (= res!1879510 (forall!10253 (_2!28824 (h!56484 (toList!4319 lt!1694164))) lambda!171857))))

(declare-fun e!2813974 () ListMap!3581)

(assert (=> d!1390526 (= lt!1694604 e!2813974)))

(assert (=> d!1390526 (= c!770606 ((_ is Nil!50634) (_2!28824 (h!56484 (toList!4319 lt!1694164)))))))

(assert (=> d!1390526 (noDuplicateKeys!1156 (_2!28824 (h!56484 (toList!4319 lt!1694164))))))

(assert (=> d!1390526 (= (addToMapMapFromBucket!683 (_2!28824 (h!56484 (toList!4319 lt!1694164))) (extractMap!1212 (t!357721 (toList!4319 lt!1694164)))) lt!1694604)))

(assert (=> b!4516743 (= e!2813974 (extractMap!1212 (t!357721 (toList!4319 lt!1694164))))))

(declare-fun lt!1694618 () Unit!94398)

(assert (=> b!4516743 (= lt!1694618 call!314600)))

(assert (=> b!4516743 call!314599))

(declare-fun lt!1694608 () Unit!94398)

(assert (=> b!4516743 (= lt!1694608 lt!1694618)))

(assert (=> b!4516743 call!314598))

(declare-fun lt!1694606 () Unit!94398)

(declare-fun Unit!94462 () Unit!94398)

(assert (=> b!4516743 (= lt!1694606 Unit!94462)))

(assert (=> b!4516744 (= e!2813974 lt!1694614)))

(declare-fun lt!1694621 () ListMap!3581)

(assert (=> b!4516744 (= lt!1694621 (+!1532 (extractMap!1212 (t!357721 (toList!4319 lt!1694164))) (h!56483 (_2!28824 (h!56484 (toList!4319 lt!1694164))))))))

(assert (=> b!4516744 (= lt!1694614 (addToMapMapFromBucket!683 (t!357720 (_2!28824 (h!56484 (toList!4319 lt!1694164)))) (+!1532 (extractMap!1212 (t!357721 (toList!4319 lt!1694164))) (h!56483 (_2!28824 (h!56484 (toList!4319 lt!1694164)))))))))

(declare-fun lt!1694603 () Unit!94398)

(assert (=> b!4516744 (= lt!1694603 call!314600)))

(assert (=> b!4516744 call!314599))

(declare-fun lt!1694616 () Unit!94398)

(assert (=> b!4516744 (= lt!1694616 lt!1694603)))

(assert (=> b!4516744 (forall!10253 (toList!4320 lt!1694621) lambda!171856)))

(declare-fun lt!1694619 () Unit!94398)

(declare-fun Unit!94463 () Unit!94398)

(assert (=> b!4516744 (= lt!1694619 Unit!94463)))

(assert (=> b!4516744 (forall!10253 (t!357720 (_2!28824 (h!56484 (toList!4319 lt!1694164)))) lambda!171856)))

(declare-fun lt!1694605 () Unit!94398)

(declare-fun Unit!94464 () Unit!94398)

(assert (=> b!4516744 (= lt!1694605 Unit!94464)))

(declare-fun lt!1694613 () Unit!94398)

(declare-fun Unit!94465 () Unit!94398)

(assert (=> b!4516744 (= lt!1694613 Unit!94465)))

(declare-fun lt!1694620 () Unit!94398)

(assert (=> b!4516744 (= lt!1694620 (forallContained!2505 (toList!4320 lt!1694621) lambda!171856 (h!56483 (_2!28824 (h!56484 (toList!4319 lt!1694164))))))))

(assert (=> b!4516744 (contains!13353 lt!1694621 (_1!28823 (h!56483 (_2!28824 (h!56484 (toList!4319 lt!1694164))))))))

(declare-fun lt!1694617 () Unit!94398)

(declare-fun Unit!94466 () Unit!94398)

(assert (=> b!4516744 (= lt!1694617 Unit!94466)))

(assert (=> b!4516744 (contains!13353 lt!1694614 (_1!28823 (h!56483 (_2!28824 (h!56484 (toList!4319 lt!1694164))))))))

(declare-fun lt!1694609 () Unit!94398)

(declare-fun Unit!94467 () Unit!94398)

(assert (=> b!4516744 (= lt!1694609 Unit!94467)))

(assert (=> b!4516744 (forall!10253 (_2!28824 (h!56484 (toList!4319 lt!1694164))) lambda!171856)))

(declare-fun lt!1694611 () Unit!94398)

(declare-fun Unit!94468 () Unit!94398)

(assert (=> b!4516744 (= lt!1694611 Unit!94468)))

(assert (=> b!4516744 (forall!10253 (toList!4320 lt!1694621) lambda!171856)))

(declare-fun lt!1694612 () Unit!94398)

(declare-fun Unit!94469 () Unit!94398)

(assert (=> b!4516744 (= lt!1694612 Unit!94469)))

(declare-fun lt!1694615 () Unit!94398)

(declare-fun Unit!94471 () Unit!94398)

(assert (=> b!4516744 (= lt!1694615 Unit!94471)))

(declare-fun lt!1694607 () Unit!94398)

(assert (=> b!4516744 (= lt!1694607 (addForallContainsKeyThenBeforeAdding!334 (extractMap!1212 (t!357721 (toList!4319 lt!1694164))) lt!1694614 (_1!28823 (h!56483 (_2!28824 (h!56484 (toList!4319 lt!1694164))))) (_2!28823 (h!56483 (_2!28824 (h!56484 (toList!4319 lt!1694164)))))))))

(assert (=> b!4516744 (forall!10253 (toList!4320 (extractMap!1212 (t!357721 (toList!4319 lt!1694164)))) lambda!171856)))

(declare-fun lt!1694602 () Unit!94398)

(assert (=> b!4516744 (= lt!1694602 lt!1694607)))

(assert (=> b!4516744 call!314598))

(declare-fun lt!1694622 () Unit!94398)

(declare-fun Unit!94474 () Unit!94398)

(assert (=> b!4516744 (= lt!1694622 Unit!94474)))

(declare-fun res!1879509 () Bool)

(assert (=> b!4516744 (= res!1879509 (forall!10253 (_2!28824 (h!56484 (toList!4319 lt!1694164))) lambda!171856))))

(assert (=> b!4516744 (=> (not res!1879509) (not e!2813976))))

(assert (=> b!4516744 e!2813976))

(declare-fun lt!1694610 () Unit!94398)

(declare-fun Unit!94475 () Unit!94398)

(assert (=> b!4516744 (= lt!1694610 Unit!94475)))

(declare-fun b!4516745 () Bool)

(assert (=> b!4516745 (= e!2813975 (invariantList!1013 (toList!4320 lt!1694604)))))

(assert (= (and d!1390526 c!770606) b!4516743))

(assert (= (and d!1390526 (not c!770606)) b!4516744))

(assert (= (and b!4516744 res!1879509) b!4516741))

(assert (= (or b!4516743 b!4516744) bm!314594))

(assert (= (or b!4516743 b!4516744) bm!314593))

(assert (= (or b!4516743 b!4516744) bm!314595))

(assert (= (and d!1390526 res!1879510) b!4516742))

(assert (= (and b!4516742 res!1879511) b!4516745))

(declare-fun m!5261635 () Bool)

(assert (=> b!4516745 m!5261635))

(declare-fun m!5261637 () Bool)

(assert (=> b!4516744 m!5261637))

(declare-fun m!5261639 () Bool)

(assert (=> b!4516744 m!5261639))

(declare-fun m!5261641 () Bool)

(assert (=> b!4516744 m!5261641))

(declare-fun m!5261643 () Bool)

(assert (=> b!4516744 m!5261643))

(assert (=> b!4516744 m!5260963))

(declare-fun m!5261645 () Bool)

(assert (=> b!4516744 m!5261645))

(assert (=> b!4516744 m!5261637))

(declare-fun m!5261647 () Bool)

(assert (=> b!4516744 m!5261647))

(assert (=> b!4516744 m!5261641))

(declare-fun m!5261649 () Bool)

(assert (=> b!4516744 m!5261649))

(assert (=> b!4516744 m!5260963))

(declare-fun m!5261651 () Bool)

(assert (=> b!4516744 m!5261651))

(declare-fun m!5261653 () Bool)

(assert (=> b!4516744 m!5261653))

(assert (=> b!4516744 m!5261651))

(declare-fun m!5261655 () Bool)

(assert (=> b!4516744 m!5261655))

(declare-fun m!5261657 () Bool)

(assert (=> d!1390526 m!5261657))

(declare-fun m!5261659 () Bool)

(assert (=> d!1390526 m!5261659))

(declare-fun m!5261661 () Bool)

(assert (=> bm!314593 m!5261661))

(assert (=> bm!314595 m!5260963))

(declare-fun m!5261663 () Bool)

(assert (=> bm!314595 m!5261663))

(declare-fun m!5261665 () Bool)

(assert (=> b!4516742 m!5261665))

(assert (=> b!4516741 m!5261643))

(declare-fun m!5261667 () Bool)

(assert (=> bm!314594 m!5261667))

(assert (=> b!4516411 d!1390526))

(declare-fun bs!851921 () Bool)

(declare-fun d!1390530 () Bool)

(assert (= bs!851921 (and d!1390530 d!1390298)))

(declare-fun lambda!171858 () Int)

(assert (=> bs!851921 (= lambda!171858 lambda!171755)))

(declare-fun bs!851922 () Bool)

(assert (= bs!851922 (and d!1390530 d!1390462)))

(assert (=> bs!851922 (= lambda!171858 lambda!171843)))

(declare-fun bs!851923 () Bool)

(assert (= bs!851923 (and d!1390530 d!1390438)))

(assert (=> bs!851923 (= lambda!171858 lambda!171838)))

(declare-fun bs!851924 () Bool)

(assert (= bs!851924 (and d!1390530 d!1390452)))

(assert (=> bs!851924 (= lambda!171858 lambda!171839)))

(declare-fun bs!851925 () Bool)

(assert (= bs!851925 (and d!1390530 start!446940)))

(assert (=> bs!851925 (= lambda!171858 lambda!171717)))

(declare-fun bs!851926 () Bool)

(assert (= bs!851926 (and d!1390530 d!1390334)))

(assert (=> bs!851926 (= lambda!171858 lambda!171775)))

(declare-fun bs!851927 () Bool)

(assert (= bs!851927 (and d!1390530 d!1390300)))

(assert (=> bs!851927 (= lambda!171858 lambda!171762)))

(declare-fun bs!851928 () Bool)

(assert (= bs!851928 (and d!1390530 d!1390460)))

(assert (=> bs!851928 (= lambda!171858 lambda!171840)))

(declare-fun bs!851929 () Bool)

(assert (= bs!851929 (and d!1390530 d!1390324)))

(assert (=> bs!851929 (not (= lambda!171858 lambda!171769))))

(declare-fun bs!851930 () Bool)

(assert (= bs!851930 (and d!1390530 d!1390294)))

(assert (=> bs!851930 (= lambda!171858 lambda!171751)))

(declare-fun bs!851931 () Bool)

(assert (= bs!851931 (and d!1390530 d!1390314)))

(assert (=> bs!851931 (= lambda!171858 lambda!171763)))

(declare-fun bs!851932 () Bool)

(assert (= bs!851932 (and d!1390530 d!1390424)))

(assert (=> bs!851932 (= lambda!171858 lambda!171832)))

(declare-fun bs!851933 () Bool)

(assert (= bs!851933 (and d!1390530 d!1390270)))

(assert (=> bs!851933 (= lambda!171858 lambda!171720)))

(declare-fun lt!1694626 () ListMap!3581)

(assert (=> d!1390530 (invariantList!1013 (toList!4320 lt!1694626))))

(declare-fun e!2813986 () ListMap!3581)

(assert (=> d!1390530 (= lt!1694626 e!2813986)))

(declare-fun c!770607 () Bool)

(assert (=> d!1390530 (= c!770607 ((_ is Cons!50635) (t!357721 (toList!4319 lt!1694164))))))

(assert (=> d!1390530 (forall!10251 (t!357721 (toList!4319 lt!1694164)) lambda!171858)))

(assert (=> d!1390530 (= (extractMap!1212 (t!357721 (toList!4319 lt!1694164))) lt!1694626)))

(declare-fun b!4516755 () Bool)

(assert (=> b!4516755 (= e!2813986 (addToMapMapFromBucket!683 (_2!28824 (h!56484 (t!357721 (toList!4319 lt!1694164)))) (extractMap!1212 (t!357721 (t!357721 (toList!4319 lt!1694164))))))))

(declare-fun b!4516756 () Bool)

(assert (=> b!4516756 (= e!2813986 (ListMap!3582 Nil!50634))))

(assert (= (and d!1390530 c!770607) b!4516755))

(assert (= (and d!1390530 (not c!770607)) b!4516756))

(declare-fun m!5261673 () Bool)

(assert (=> d!1390530 m!5261673))

(declare-fun m!5261675 () Bool)

(assert (=> d!1390530 m!5261675))

(declare-fun m!5261677 () Bool)

(assert (=> b!4516755 m!5261677))

(assert (=> b!4516755 m!5261677))

(declare-fun m!5261679 () Bool)

(assert (=> b!4516755 m!5261679))

(assert (=> b!4516411 d!1390530))

(declare-fun d!1390536 () Bool)

(declare-fun res!1879521 () Bool)

(declare-fun e!2813987 () Bool)

(assert (=> d!1390536 (=> res!1879521 e!2813987)))

(assert (=> d!1390536 (= res!1879521 (and ((_ is Cons!50634) (t!357720 (_2!28824 lt!1694150))) (= (_1!28823 (h!56483 (t!357720 (_2!28824 lt!1694150)))) (_1!28823 (h!56483 (_2!28824 lt!1694150))))))))

(assert (=> d!1390536 (= (containsKey!1768 (t!357720 (_2!28824 lt!1694150)) (_1!28823 (h!56483 (_2!28824 lt!1694150)))) e!2813987)))

(declare-fun b!4516757 () Bool)

(declare-fun e!2813988 () Bool)

(assert (=> b!4516757 (= e!2813987 e!2813988)))

(declare-fun res!1879522 () Bool)

(assert (=> b!4516757 (=> (not res!1879522) (not e!2813988))))

(assert (=> b!4516757 (= res!1879522 ((_ is Cons!50634) (t!357720 (_2!28824 lt!1694150))))))

(declare-fun b!4516758 () Bool)

(assert (=> b!4516758 (= e!2813988 (containsKey!1768 (t!357720 (t!357720 (_2!28824 lt!1694150))) (_1!28823 (h!56483 (_2!28824 lt!1694150)))))))

(assert (= (and d!1390536 (not res!1879521)) b!4516757))

(assert (= (and b!4516757 res!1879522) b!4516758))

(declare-fun m!5261681 () Bool)

(assert (=> b!4516758 m!5261681))

(assert (=> b!4516610 d!1390536))

(declare-fun d!1390538 () Bool)

(declare-fun lt!1694627 () Bool)

(assert (=> d!1390538 (= lt!1694627 (select (content!8347 (keys!17586 lt!1694148)) key!3287))))

(declare-fun e!2813990 () Bool)

(assert (=> d!1390538 (= lt!1694627 e!2813990)))

(declare-fun res!1879523 () Bool)

(assert (=> d!1390538 (=> (not res!1879523) (not e!2813990))))

(assert (=> d!1390538 (= res!1879523 ((_ is Cons!50637) (keys!17586 lt!1694148)))))

(assert (=> d!1390538 (= (contains!13354 (keys!17586 lt!1694148) key!3287) lt!1694627)))

(declare-fun b!4516759 () Bool)

(declare-fun e!2813989 () Bool)

(assert (=> b!4516759 (= e!2813990 e!2813989)))

(declare-fun res!1879524 () Bool)

(assert (=> b!4516759 (=> res!1879524 e!2813989)))

(assert (=> b!4516759 (= res!1879524 (= (h!56488 (keys!17586 lt!1694148)) key!3287))))

(declare-fun b!4516760 () Bool)

(assert (=> b!4516760 (= e!2813989 (contains!13354 (t!357723 (keys!17586 lt!1694148)) key!3287))))

(assert (= (and d!1390538 res!1879523) b!4516759))

(assert (= (and b!4516759 (not res!1879524)) b!4516760))

(assert (=> d!1390538 m!5260853))

(declare-fun m!5261683 () Bool)

(assert (=> d!1390538 m!5261683))

(declare-fun m!5261685 () Bool)

(assert (=> d!1390538 m!5261685))

(declare-fun m!5261687 () Bool)

(assert (=> b!4516760 m!5261687))

(assert (=> b!4516358 d!1390538))

(declare-fun bs!851935 () Bool)

(declare-fun b!4516762 () Bool)

(assert (= bs!851935 (and b!4516762 b!4516724)))

(declare-fun lambda!171859 () Int)

(assert (=> bs!851935 (= (= (toList!4320 lt!1694148) (toList!4320 lt!1694159)) (= lambda!171859 lambda!171852))))

(assert (=> b!4516762 true))

(declare-fun bs!851936 () Bool)

(declare-fun b!4516763 () Bool)

(assert (= bs!851936 (and b!4516763 b!4516725)))

(declare-fun lambda!171860 () Int)

(assert (=> bs!851936 (= lambda!171860 lambda!171853)))

(declare-fun d!1390540 () Bool)

(declare-fun e!2813991 () Bool)

(assert (=> d!1390540 e!2813991))

(declare-fun res!1879525 () Bool)

(assert (=> d!1390540 (=> (not res!1879525) (not e!2813991))))

(declare-fun lt!1694628 () List!50761)

(assert (=> d!1390540 (= res!1879525 (noDuplicate!743 lt!1694628))))

(assert (=> d!1390540 (= lt!1694628 (getKeysList!461 (toList!4320 lt!1694148)))))

(assert (=> d!1390540 (= (keys!17586 lt!1694148) lt!1694628)))

(declare-fun b!4516761 () Bool)

(declare-fun res!1879527 () Bool)

(assert (=> b!4516761 (=> (not res!1879527) (not e!2813991))))

(assert (=> b!4516761 (= res!1879527 (= (length!342 lt!1694628) (length!343 (toList!4320 lt!1694148))))))

(declare-fun res!1879526 () Bool)

(assert (=> b!4516762 (=> (not res!1879526) (not e!2813991))))

(assert (=> b!4516762 (= res!1879526 (forall!10254 lt!1694628 lambda!171859))))

(assert (=> b!4516763 (= e!2813991 (= (content!8347 lt!1694628) (content!8347 (map!11132 (toList!4320 lt!1694148) lambda!171860))))))

(assert (= (and d!1390540 res!1879525) b!4516761))

(assert (= (and b!4516761 res!1879527) b!4516762))

(assert (= (and b!4516762 res!1879526) b!4516763))

(declare-fun m!5261689 () Bool)

(assert (=> d!1390540 m!5261689))

(assert (=> d!1390540 m!5260861))

(declare-fun m!5261691 () Bool)

(assert (=> b!4516761 m!5261691))

(declare-fun m!5261693 () Bool)

(assert (=> b!4516761 m!5261693))

(declare-fun m!5261695 () Bool)

(assert (=> b!4516762 m!5261695))

(declare-fun m!5261697 () Bool)

(assert (=> b!4516763 m!5261697))

(declare-fun m!5261699 () Bool)

(assert (=> b!4516763 m!5261699))

(assert (=> b!4516763 m!5261699))

(declare-fun m!5261701 () Bool)

(assert (=> b!4516763 m!5261701))

(assert (=> b!4516358 d!1390540))

(declare-fun d!1390542 () Bool)

(declare-fun c!770614 () Bool)

(assert (=> d!1390542 (= c!770614 ((_ is Nil!50634) (toList!4320 lt!1694168)))))

(declare-fun e!2813998 () (InoxSet tuple2!51058))

(assert (=> d!1390542 (= (content!8346 (toList!4320 lt!1694168)) e!2813998)))

(declare-fun b!4516776 () Bool)

(assert (=> b!4516776 (= e!2813998 ((as const (Array tuple2!51058 Bool)) false))))

(declare-fun b!4516777 () Bool)

(assert (=> b!4516777 (= e!2813998 ((_ map or) (store ((as const (Array tuple2!51058 Bool)) false) (h!56483 (toList!4320 lt!1694168)) true) (content!8346 (t!357720 (toList!4320 lt!1694168)))))))

(assert (= (and d!1390542 c!770614) b!4516776))

(assert (= (and d!1390542 (not c!770614)) b!4516777))

(declare-fun m!5261703 () Bool)

(assert (=> b!4516777 m!5261703))

(declare-fun m!5261705 () Bool)

(assert (=> b!4516777 m!5261705))

(assert (=> d!1390466 d!1390542))

(declare-fun d!1390544 () Bool)

(declare-fun c!770615 () Bool)

(assert (=> d!1390544 (= c!770615 ((_ is Nil!50634) (toList!4320 lt!1694148)))))

(declare-fun e!2813999 () (InoxSet tuple2!51058))

(assert (=> d!1390544 (= (content!8346 (toList!4320 lt!1694148)) e!2813999)))

(declare-fun b!4516778 () Bool)

(assert (=> b!4516778 (= e!2813999 ((as const (Array tuple2!51058 Bool)) false))))

(declare-fun b!4516779 () Bool)

(assert (=> b!4516779 (= e!2813999 ((_ map or) (store ((as const (Array tuple2!51058 Bool)) false) (h!56483 (toList!4320 lt!1694148)) true) (content!8346 (t!357720 (toList!4320 lt!1694148)))))))

(assert (= (and d!1390544 c!770615) b!4516778))

(assert (= (and d!1390544 (not c!770615)) b!4516779))

(declare-fun m!5261707 () Bool)

(assert (=> b!4516779 m!5261707))

(declare-fun m!5261709 () Bool)

(assert (=> b!4516779 m!5261709))

(assert (=> d!1390466 d!1390544))

(declare-fun d!1390546 () Bool)

(declare-fun lt!1694629 () Bool)

(assert (=> d!1390546 (= lt!1694629 (select (content!8347 e!2813717) key!3287))))

(declare-fun e!2814001 () Bool)

(assert (=> d!1390546 (= lt!1694629 e!2814001)))

(declare-fun res!1879528 () Bool)

(assert (=> d!1390546 (=> (not res!1879528) (not e!2814001))))

(assert (=> d!1390546 (= res!1879528 ((_ is Cons!50637) e!2813717))))

(assert (=> d!1390546 (= (contains!13354 e!2813717 key!3287) lt!1694629)))

(declare-fun b!4516780 () Bool)

(declare-fun e!2814000 () Bool)

(assert (=> b!4516780 (= e!2814001 e!2814000)))

(declare-fun res!1879529 () Bool)

(assert (=> b!4516780 (=> res!1879529 e!2814000)))

(assert (=> b!4516780 (= res!1879529 (= (h!56488 e!2813717) key!3287))))

(declare-fun b!4516781 () Bool)

(assert (=> b!4516781 (= e!2814000 (contains!13354 (t!357723 e!2813717) key!3287))))

(assert (= (and d!1390546 res!1879528) b!4516780))

(assert (= (and b!4516780 (not res!1879529)) b!4516781))

(declare-fun m!5261711 () Bool)

(assert (=> d!1390546 m!5261711))

(declare-fun m!5261713 () Bool)

(assert (=> d!1390546 m!5261713))

(declare-fun m!5261715 () Bool)

(assert (=> b!4516781 m!5261715))

(assert (=> bm!314568 d!1390546))

(assert (=> b!4516482 d!1390346))

(declare-fun d!1390548 () Bool)

(declare-fun isEmpty!28656 (Option!11103) Bool)

(assert (=> d!1390548 (= (isDefined!8390 (getValueByKey!1083 (toList!4319 lm!1477) lt!1694171)) (not (isEmpty!28656 (getValueByKey!1083 (toList!4319 lm!1477) lt!1694171))))))

(declare-fun bs!851937 () Bool)

(assert (= bs!851937 d!1390548))

(assert (=> bs!851937 m!5261075))

(declare-fun m!5261717 () Bool)

(assert (=> bs!851937 m!5261717))

(assert (=> b!4516487 d!1390548))

(declare-fun b!4516799 () Bool)

(declare-fun e!2814011 () Option!11103)

(assert (=> b!4516799 (= e!2814011 None!11102)))

(declare-fun b!4516798 () Bool)

(assert (=> b!4516798 (= e!2814011 (getValueByKey!1083 (t!357721 (toList!4319 lm!1477)) lt!1694171))))

(declare-fun b!4516796 () Bool)

(declare-fun e!2814010 () Option!11103)

(assert (=> b!4516796 (= e!2814010 (Some!11102 (_2!28824 (h!56484 (toList!4319 lm!1477)))))))

(declare-fun b!4516797 () Bool)

(assert (=> b!4516797 (= e!2814010 e!2814011)))

(declare-fun c!770623 () Bool)

(assert (=> b!4516797 (= c!770623 (and ((_ is Cons!50635) (toList!4319 lm!1477)) (not (= (_1!28824 (h!56484 (toList!4319 lm!1477))) lt!1694171))))))

(declare-fun d!1390550 () Bool)

(declare-fun c!770622 () Bool)

(assert (=> d!1390550 (= c!770622 (and ((_ is Cons!50635) (toList!4319 lm!1477)) (= (_1!28824 (h!56484 (toList!4319 lm!1477))) lt!1694171)))))

(assert (=> d!1390550 (= (getValueByKey!1083 (toList!4319 lm!1477) lt!1694171) e!2814010)))

(assert (= (and d!1390550 c!770622) b!4516796))

(assert (= (and d!1390550 (not c!770622)) b!4516797))

(assert (= (and b!4516797 c!770623) b!4516798))

(assert (= (and b!4516797 (not c!770623)) b!4516799))

(declare-fun m!5261725 () Bool)

(assert (=> b!4516798 m!5261725))

(assert (=> b!4516487 d!1390550))

(declare-fun bs!851938 () Bool)

(declare-fun b!4516801 () Bool)

(assert (= bs!851938 (and b!4516801 b!4516724)))

(declare-fun lambda!171861 () Int)

(assert (=> bs!851938 (= (= (toList!4320 (extractMap!1212 (t!357721 (toList!4319 lm!1477)))) (toList!4320 lt!1694159)) (= lambda!171861 lambda!171852))))

(declare-fun bs!851939 () Bool)

(assert (= bs!851939 (and b!4516801 b!4516762)))

(assert (=> bs!851939 (= (= (toList!4320 (extractMap!1212 (t!357721 (toList!4319 lm!1477)))) (toList!4320 lt!1694148)) (= lambda!171861 lambda!171859))))

(assert (=> b!4516801 true))

(declare-fun bs!851940 () Bool)

(declare-fun b!4516802 () Bool)

(assert (= bs!851940 (and b!4516802 b!4516725)))

(declare-fun lambda!171862 () Int)

(assert (=> bs!851940 (= lambda!171862 lambda!171853)))

(declare-fun bs!851941 () Bool)

(assert (= bs!851941 (and b!4516802 b!4516763)))

(assert (=> bs!851941 (= lambda!171862 lambda!171860)))

(declare-fun d!1390558 () Bool)

(declare-fun e!2814012 () Bool)

(assert (=> d!1390558 e!2814012))

(declare-fun res!1879532 () Bool)

(assert (=> d!1390558 (=> (not res!1879532) (not e!2814012))))

(declare-fun lt!1694631 () List!50761)

(assert (=> d!1390558 (= res!1879532 (noDuplicate!743 lt!1694631))))

(assert (=> d!1390558 (= lt!1694631 (getKeysList!461 (toList!4320 (extractMap!1212 (t!357721 (toList!4319 lm!1477))))))))

(assert (=> d!1390558 (= (keys!17586 (extractMap!1212 (t!357721 (toList!4319 lm!1477)))) lt!1694631)))

(declare-fun b!4516800 () Bool)

(declare-fun res!1879534 () Bool)

(assert (=> b!4516800 (=> (not res!1879534) (not e!2814012))))

(assert (=> b!4516800 (= res!1879534 (= (length!342 lt!1694631) (length!343 (toList!4320 (extractMap!1212 (t!357721 (toList!4319 lm!1477)))))))))

(declare-fun res!1879533 () Bool)

(assert (=> b!4516801 (=> (not res!1879533) (not e!2814012))))

(assert (=> b!4516801 (= res!1879533 (forall!10254 lt!1694631 lambda!171861))))

(assert (=> b!4516802 (= e!2814012 (= (content!8347 lt!1694631) (content!8347 (map!11132 (toList!4320 (extractMap!1212 (t!357721 (toList!4319 lm!1477)))) lambda!171862))))))

(assert (= (and d!1390558 res!1879532) b!4516800))

(assert (= (and b!4516800 res!1879534) b!4516801))

(assert (= (and b!4516801 res!1879533) b!4516802))

(declare-fun m!5261727 () Bool)

(assert (=> d!1390558 m!5261727))

(assert (=> d!1390558 m!5260887))

(declare-fun m!5261729 () Bool)

(assert (=> b!4516800 m!5261729))

(declare-fun m!5261731 () Bool)

(assert (=> b!4516800 m!5261731))

(declare-fun m!5261733 () Bool)

(assert (=> b!4516801 m!5261733))

(declare-fun m!5261735 () Bool)

(assert (=> b!4516802 m!5261735))

(declare-fun m!5261737 () Bool)

(assert (=> b!4516802 m!5261737))

(assert (=> b!4516802 m!5261737))

(declare-fun m!5261739 () Bool)

(assert (=> b!4516802 m!5261739))

(assert (=> b!4516380 d!1390558))

(declare-fun d!1390560 () Bool)

(declare-fun res!1879535 () Bool)

(declare-fun e!2814013 () Bool)

(assert (=> d!1390560 (=> res!1879535 e!2814013)))

(assert (=> d!1390560 (= res!1879535 ((_ is Nil!50634) (toList!4320 lt!1694147)))))

(assert (=> d!1390560 (= (forall!10253 (toList!4320 lt!1694147) lambda!171847) e!2814013)))

(declare-fun b!4516803 () Bool)

(declare-fun e!2814014 () Bool)

(assert (=> b!4516803 (= e!2814013 e!2814014)))

(declare-fun res!1879536 () Bool)

(assert (=> b!4516803 (=> (not res!1879536) (not e!2814014))))

(assert (=> b!4516803 (= res!1879536 (dynLambda!21156 lambda!171847 (h!56483 (toList!4320 lt!1694147))))))

(declare-fun b!4516804 () Bool)

(assert (=> b!4516804 (= e!2814014 (forall!10253 (t!357720 (toList!4320 lt!1694147)) lambda!171847))))

(assert (= (and d!1390560 (not res!1879535)) b!4516803))

(assert (= (and b!4516803 res!1879536) b!4516804))

(declare-fun b_lambda!154407 () Bool)

(assert (=> (not b_lambda!154407) (not b!4516803)))

(declare-fun m!5261741 () Bool)

(assert (=> b!4516803 m!5261741))

(declare-fun m!5261743 () Bool)

(assert (=> b!4516804 m!5261743))

(assert (=> b!4516661 d!1390560))

(declare-fun d!1390562 () Bool)

(declare-fun choose!29463 (Hashable!5551 K!12030) (_ BitVec 64))

(assert (=> d!1390562 (= (hash!2795 hashF!1107 key!3287) (choose!29463 hashF!1107 key!3287))))

(declare-fun bs!851942 () Bool)

(assert (= bs!851942 d!1390562))

(declare-fun m!5261745 () Bool)

(assert (=> bs!851942 m!5261745))

(assert (=> d!1390272 d!1390562))

(declare-fun bs!851943 () Bool)

(declare-fun b!4516807 () Bool)

(assert (= bs!851943 (and b!4516807 b!4516662)))

(declare-fun lambda!171863 () Int)

(assert (=> bs!851943 (= (= (extractMap!1212 (t!357721 (toList!4319 lt!1694158))) lt!1694147) (= lambda!171863 lambda!171844))))

(declare-fun bs!851944 () Bool)

(assert (= bs!851944 (and b!4516807 d!1390358)))

(assert (=> bs!851944 (= (= (extractMap!1212 (t!357721 (toList!4319 lt!1694158))) lt!1694503) (= lambda!171863 lambda!171831))))

(declare-fun bs!851945 () Bool)

(assert (= bs!851945 (and b!4516807 b!4516744)))

(assert (=> bs!851945 (= (= (extractMap!1212 (t!357721 (toList!4319 lt!1694158))) lt!1694614) (= lambda!171863 lambda!171856))))

(declare-fun bs!851946 () Bool)

(assert (= bs!851946 (and b!4516807 b!4516663)))

(assert (=> bs!851946 (= (= (extractMap!1212 (t!357721 (toList!4319 lt!1694158))) lt!1694574) (= lambda!171863 lambda!171846))))

(declare-fun bs!851947 () Bool)

(assert (= bs!851947 (and b!4516807 d!1390472)))

(assert (=> bs!851947 (= (= (extractMap!1212 (t!357721 (toList!4319 lt!1694158))) lt!1694564) (= lambda!171863 lambda!171847))))

(assert (=> bs!851946 (= (= (extractMap!1212 (t!357721 (toList!4319 lt!1694158))) lt!1694147) (= lambda!171863 lambda!171845))))

(assert (=> bs!851945 (= (= (extractMap!1212 (t!357721 (toList!4319 lt!1694158))) (extractMap!1212 (t!357721 (toList!4319 lt!1694164)))) (= lambda!171863 lambda!171855))))

(declare-fun bs!851948 () Bool)

(assert (= bs!851948 (and b!4516807 b!4516743)))

(assert (=> bs!851948 (= (= (extractMap!1212 (t!357721 (toList!4319 lt!1694158))) (extractMap!1212 (t!357721 (toList!4319 lt!1694164)))) (= lambda!171863 lambda!171854))))

(declare-fun bs!851949 () Bool)

(assert (= bs!851949 (and b!4516807 b!4516604)))

(assert (=> bs!851949 (= (= (extractMap!1212 (t!357721 (toList!4319 lt!1694158))) lt!1694513) (= lambda!171863 lambda!171830))))

(declare-fun bs!851950 () Bool)

(assert (= bs!851950 (and b!4516807 d!1390326)))

(assert (=> bs!851950 (not (= lambda!171863 lambda!171772))))

(declare-fun bs!851951 () Bool)

(assert (= bs!851951 (and b!4516807 d!1390526)))

(assert (=> bs!851951 (= (= (extractMap!1212 (t!357721 (toList!4319 lt!1694158))) lt!1694604) (= lambda!171863 lambda!171857))))

(assert (=> bs!851949 (= (= (extractMap!1212 (t!357721 (toList!4319 lt!1694158))) lt!1694172) (= lambda!171863 lambda!171829))))

(declare-fun bs!851952 () Bool)

(assert (= bs!851952 (and b!4516807 b!4516603)))

(assert (=> bs!851952 (= (= (extractMap!1212 (t!357721 (toList!4319 lt!1694158))) lt!1694172) (= lambda!171863 lambda!171828))))

(assert (=> b!4516807 true))

(declare-fun bs!851953 () Bool)

(declare-fun b!4516808 () Bool)

(assert (= bs!851953 (and b!4516808 b!4516662)))

(declare-fun lambda!171864 () Int)

(assert (=> bs!851953 (= (= (extractMap!1212 (t!357721 (toList!4319 lt!1694158))) lt!1694147) (= lambda!171864 lambda!171844))))

(declare-fun bs!851954 () Bool)

(assert (= bs!851954 (and b!4516808 b!4516807)))

(assert (=> bs!851954 (= lambda!171864 lambda!171863)))

(declare-fun bs!851955 () Bool)

(assert (= bs!851955 (and b!4516808 d!1390358)))

(assert (=> bs!851955 (= (= (extractMap!1212 (t!357721 (toList!4319 lt!1694158))) lt!1694503) (= lambda!171864 lambda!171831))))

(declare-fun bs!851956 () Bool)

(assert (= bs!851956 (and b!4516808 b!4516744)))

(assert (=> bs!851956 (= (= (extractMap!1212 (t!357721 (toList!4319 lt!1694158))) lt!1694614) (= lambda!171864 lambda!171856))))

(declare-fun bs!851957 () Bool)

(assert (= bs!851957 (and b!4516808 b!4516663)))

(assert (=> bs!851957 (= (= (extractMap!1212 (t!357721 (toList!4319 lt!1694158))) lt!1694574) (= lambda!171864 lambda!171846))))

(declare-fun bs!851958 () Bool)

(assert (= bs!851958 (and b!4516808 d!1390472)))

(assert (=> bs!851958 (= (= (extractMap!1212 (t!357721 (toList!4319 lt!1694158))) lt!1694564) (= lambda!171864 lambda!171847))))

(assert (=> bs!851957 (= (= (extractMap!1212 (t!357721 (toList!4319 lt!1694158))) lt!1694147) (= lambda!171864 lambda!171845))))

(assert (=> bs!851956 (= (= (extractMap!1212 (t!357721 (toList!4319 lt!1694158))) (extractMap!1212 (t!357721 (toList!4319 lt!1694164)))) (= lambda!171864 lambda!171855))))

(declare-fun bs!851959 () Bool)

(assert (= bs!851959 (and b!4516808 b!4516743)))

(assert (=> bs!851959 (= (= (extractMap!1212 (t!357721 (toList!4319 lt!1694158))) (extractMap!1212 (t!357721 (toList!4319 lt!1694164)))) (= lambda!171864 lambda!171854))))

(declare-fun bs!851960 () Bool)

(assert (= bs!851960 (and b!4516808 b!4516604)))

(assert (=> bs!851960 (= (= (extractMap!1212 (t!357721 (toList!4319 lt!1694158))) lt!1694513) (= lambda!171864 lambda!171830))))

(declare-fun bs!851961 () Bool)

(assert (= bs!851961 (and b!4516808 d!1390326)))

(assert (=> bs!851961 (not (= lambda!171864 lambda!171772))))

(declare-fun bs!851962 () Bool)

(assert (= bs!851962 (and b!4516808 d!1390526)))

(assert (=> bs!851962 (= (= (extractMap!1212 (t!357721 (toList!4319 lt!1694158))) lt!1694604) (= lambda!171864 lambda!171857))))

(assert (=> bs!851960 (= (= (extractMap!1212 (t!357721 (toList!4319 lt!1694158))) lt!1694172) (= lambda!171864 lambda!171829))))

(declare-fun bs!851963 () Bool)

(assert (= bs!851963 (and b!4516808 b!4516603)))

(assert (=> bs!851963 (= (= (extractMap!1212 (t!357721 (toList!4319 lt!1694158))) lt!1694172) (= lambda!171864 lambda!171828))))

(assert (=> b!4516808 true))

(declare-fun lambda!171865 () Int)

(declare-fun lt!1694644 () ListMap!3581)

(assert (=> b!4516808 (= (= lt!1694644 (extractMap!1212 (t!357721 (toList!4319 lt!1694158)))) (= lambda!171865 lambda!171864))))

(assert (=> bs!851953 (= (= lt!1694644 lt!1694147) (= lambda!171865 lambda!171844))))

(assert (=> bs!851954 (= (= lt!1694644 (extractMap!1212 (t!357721 (toList!4319 lt!1694158)))) (= lambda!171865 lambda!171863))))

(assert (=> bs!851955 (= (= lt!1694644 lt!1694503) (= lambda!171865 lambda!171831))))

(assert (=> bs!851956 (= (= lt!1694644 lt!1694614) (= lambda!171865 lambda!171856))))

(assert (=> bs!851957 (= (= lt!1694644 lt!1694574) (= lambda!171865 lambda!171846))))

(assert (=> bs!851958 (= (= lt!1694644 lt!1694564) (= lambda!171865 lambda!171847))))

(assert (=> bs!851957 (= (= lt!1694644 lt!1694147) (= lambda!171865 lambda!171845))))

(assert (=> bs!851956 (= (= lt!1694644 (extractMap!1212 (t!357721 (toList!4319 lt!1694164)))) (= lambda!171865 lambda!171855))))

(assert (=> bs!851959 (= (= lt!1694644 (extractMap!1212 (t!357721 (toList!4319 lt!1694164)))) (= lambda!171865 lambda!171854))))

(assert (=> bs!851960 (= (= lt!1694644 lt!1694513) (= lambda!171865 lambda!171830))))

(assert (=> bs!851961 (not (= lambda!171865 lambda!171772))))

(assert (=> bs!851962 (= (= lt!1694644 lt!1694604) (= lambda!171865 lambda!171857))))

(assert (=> bs!851960 (= (= lt!1694644 lt!1694172) (= lambda!171865 lambda!171829))))

(assert (=> bs!851963 (= (= lt!1694644 lt!1694172) (= lambda!171865 lambda!171828))))

(assert (=> b!4516808 true))

(declare-fun bs!851964 () Bool)

(declare-fun d!1390564 () Bool)

(assert (= bs!851964 (and d!1390564 b!4516808)))

(declare-fun lambda!171866 () Int)

(declare-fun lt!1694634 () ListMap!3581)

(assert (=> bs!851964 (= (= lt!1694634 (extractMap!1212 (t!357721 (toList!4319 lt!1694158)))) (= lambda!171866 lambda!171864))))

(declare-fun bs!851965 () Bool)

(assert (= bs!851965 (and d!1390564 b!4516662)))

(assert (=> bs!851965 (= (= lt!1694634 lt!1694147) (= lambda!171866 lambda!171844))))

(declare-fun bs!851966 () Bool)

(assert (= bs!851966 (and d!1390564 b!4516807)))

(assert (=> bs!851966 (= (= lt!1694634 (extractMap!1212 (t!357721 (toList!4319 lt!1694158)))) (= lambda!171866 lambda!171863))))

(declare-fun bs!851967 () Bool)

(assert (= bs!851967 (and d!1390564 d!1390358)))

(assert (=> bs!851967 (= (= lt!1694634 lt!1694503) (= lambda!171866 lambda!171831))))

(declare-fun bs!851968 () Bool)

(assert (= bs!851968 (and d!1390564 b!4516744)))

(assert (=> bs!851968 (= (= lt!1694634 lt!1694614) (= lambda!171866 lambda!171856))))

(declare-fun bs!851969 () Bool)

(assert (= bs!851969 (and d!1390564 b!4516663)))

(assert (=> bs!851969 (= (= lt!1694634 lt!1694574) (= lambda!171866 lambda!171846))))

(declare-fun bs!851970 () Bool)

(assert (= bs!851970 (and d!1390564 d!1390472)))

(assert (=> bs!851970 (= (= lt!1694634 lt!1694564) (= lambda!171866 lambda!171847))))

(assert (=> bs!851969 (= (= lt!1694634 lt!1694147) (= lambda!171866 lambda!171845))))

(assert (=> bs!851968 (= (= lt!1694634 (extractMap!1212 (t!357721 (toList!4319 lt!1694164)))) (= lambda!171866 lambda!171855))))

(declare-fun bs!851971 () Bool)

(assert (= bs!851971 (and d!1390564 b!4516743)))

(assert (=> bs!851971 (= (= lt!1694634 (extractMap!1212 (t!357721 (toList!4319 lt!1694164)))) (= lambda!171866 lambda!171854))))

(assert (=> bs!851964 (= (= lt!1694634 lt!1694644) (= lambda!171866 lambda!171865))))

(declare-fun bs!851972 () Bool)

(assert (= bs!851972 (and d!1390564 b!4516604)))

(assert (=> bs!851972 (= (= lt!1694634 lt!1694513) (= lambda!171866 lambda!171830))))

(declare-fun bs!851973 () Bool)

(assert (= bs!851973 (and d!1390564 d!1390326)))

(assert (=> bs!851973 (not (= lambda!171866 lambda!171772))))

(declare-fun bs!851974 () Bool)

(assert (= bs!851974 (and d!1390564 d!1390526)))

(assert (=> bs!851974 (= (= lt!1694634 lt!1694604) (= lambda!171866 lambda!171857))))

(assert (=> bs!851972 (= (= lt!1694634 lt!1694172) (= lambda!171866 lambda!171829))))

(declare-fun bs!851975 () Bool)

(assert (= bs!851975 (and d!1390564 b!4516603)))

(assert (=> bs!851975 (= (= lt!1694634 lt!1694172) (= lambda!171866 lambda!171828))))

(assert (=> d!1390564 true))

(declare-fun c!770624 () Bool)

(declare-fun call!314602 () Bool)

(declare-fun bm!314596 () Bool)

(assert (=> bm!314596 (= call!314602 (forall!10253 (toList!4320 (extractMap!1212 (t!357721 (toList!4319 lt!1694158)))) (ite c!770624 lambda!171863 lambda!171864)))))

(declare-fun bm!314597 () Bool)

(declare-fun call!314601 () Bool)

(assert (=> bm!314597 (= call!314601 (forall!10253 (toList!4320 (extractMap!1212 (t!357721 (toList!4319 lt!1694158)))) (ite c!770624 lambda!171863 lambda!171865)))))

(declare-fun b!4516805 () Bool)

(declare-fun e!2814017 () Bool)

(assert (=> b!4516805 (= e!2814017 (forall!10253 (toList!4320 (extractMap!1212 (t!357721 (toList!4319 lt!1694158)))) lambda!171865))))

(declare-fun bm!314598 () Bool)

(declare-fun call!314603 () Unit!94398)

(assert (=> bm!314598 (= call!314603 (lemmaContainsAllItsOwnKeys!334 (extractMap!1212 (t!357721 (toList!4319 lt!1694158)))))))

(declare-fun b!4516806 () Bool)

(declare-fun res!1879539 () Bool)

(declare-fun e!2814016 () Bool)

(assert (=> b!4516806 (=> (not res!1879539) (not e!2814016))))

(assert (=> b!4516806 (= res!1879539 (forall!10253 (toList!4320 (extractMap!1212 (t!357721 (toList!4319 lt!1694158)))) lambda!171866))))

(assert (=> d!1390564 e!2814016))

(declare-fun res!1879538 () Bool)

(assert (=> d!1390564 (=> (not res!1879538) (not e!2814016))))

(assert (=> d!1390564 (= res!1879538 (forall!10253 (_2!28824 (h!56484 (toList!4319 lt!1694158))) lambda!171866))))

(declare-fun e!2814015 () ListMap!3581)

(assert (=> d!1390564 (= lt!1694634 e!2814015)))

(assert (=> d!1390564 (= c!770624 ((_ is Nil!50634) (_2!28824 (h!56484 (toList!4319 lt!1694158)))))))

(assert (=> d!1390564 (noDuplicateKeys!1156 (_2!28824 (h!56484 (toList!4319 lt!1694158))))))

(assert (=> d!1390564 (= (addToMapMapFromBucket!683 (_2!28824 (h!56484 (toList!4319 lt!1694158))) (extractMap!1212 (t!357721 (toList!4319 lt!1694158)))) lt!1694634)))

(assert (=> b!4516807 (= e!2814015 (extractMap!1212 (t!357721 (toList!4319 lt!1694158))))))

(declare-fun lt!1694648 () Unit!94398)

(assert (=> b!4516807 (= lt!1694648 call!314603)))

(assert (=> b!4516807 call!314602))

(declare-fun lt!1694638 () Unit!94398)

(assert (=> b!4516807 (= lt!1694638 lt!1694648)))

(assert (=> b!4516807 call!314601))

(declare-fun lt!1694636 () Unit!94398)

(declare-fun Unit!94479 () Unit!94398)

(assert (=> b!4516807 (= lt!1694636 Unit!94479)))

(assert (=> b!4516808 (= e!2814015 lt!1694644)))

(declare-fun lt!1694651 () ListMap!3581)

(assert (=> b!4516808 (= lt!1694651 (+!1532 (extractMap!1212 (t!357721 (toList!4319 lt!1694158))) (h!56483 (_2!28824 (h!56484 (toList!4319 lt!1694158))))))))

(assert (=> b!4516808 (= lt!1694644 (addToMapMapFromBucket!683 (t!357720 (_2!28824 (h!56484 (toList!4319 lt!1694158)))) (+!1532 (extractMap!1212 (t!357721 (toList!4319 lt!1694158))) (h!56483 (_2!28824 (h!56484 (toList!4319 lt!1694158)))))))))

(declare-fun lt!1694633 () Unit!94398)

(assert (=> b!4516808 (= lt!1694633 call!314603)))

(assert (=> b!4516808 call!314602))

(declare-fun lt!1694646 () Unit!94398)

(assert (=> b!4516808 (= lt!1694646 lt!1694633)))

(assert (=> b!4516808 (forall!10253 (toList!4320 lt!1694651) lambda!171865)))

(declare-fun lt!1694649 () Unit!94398)

(declare-fun Unit!94480 () Unit!94398)

(assert (=> b!4516808 (= lt!1694649 Unit!94480)))

(assert (=> b!4516808 (forall!10253 (t!357720 (_2!28824 (h!56484 (toList!4319 lt!1694158)))) lambda!171865)))

(declare-fun lt!1694635 () Unit!94398)

(declare-fun Unit!94481 () Unit!94398)

(assert (=> b!4516808 (= lt!1694635 Unit!94481)))

(declare-fun lt!1694643 () Unit!94398)

(declare-fun Unit!94482 () Unit!94398)

(assert (=> b!4516808 (= lt!1694643 Unit!94482)))

(declare-fun lt!1694650 () Unit!94398)

(assert (=> b!4516808 (= lt!1694650 (forallContained!2505 (toList!4320 lt!1694651) lambda!171865 (h!56483 (_2!28824 (h!56484 (toList!4319 lt!1694158))))))))

(assert (=> b!4516808 (contains!13353 lt!1694651 (_1!28823 (h!56483 (_2!28824 (h!56484 (toList!4319 lt!1694158))))))))

(declare-fun lt!1694647 () Unit!94398)

(declare-fun Unit!94483 () Unit!94398)

(assert (=> b!4516808 (= lt!1694647 Unit!94483)))

(assert (=> b!4516808 (contains!13353 lt!1694644 (_1!28823 (h!56483 (_2!28824 (h!56484 (toList!4319 lt!1694158))))))))

(declare-fun lt!1694639 () Unit!94398)

(declare-fun Unit!94484 () Unit!94398)

(assert (=> b!4516808 (= lt!1694639 Unit!94484)))

(assert (=> b!4516808 (forall!10253 (_2!28824 (h!56484 (toList!4319 lt!1694158))) lambda!171865)))

(declare-fun lt!1694641 () Unit!94398)

(declare-fun Unit!94485 () Unit!94398)

(assert (=> b!4516808 (= lt!1694641 Unit!94485)))

(assert (=> b!4516808 (forall!10253 (toList!4320 lt!1694651) lambda!171865)))

(declare-fun lt!1694642 () Unit!94398)

(declare-fun Unit!94486 () Unit!94398)

(assert (=> b!4516808 (= lt!1694642 Unit!94486)))

(declare-fun lt!1694645 () Unit!94398)

(declare-fun Unit!94487 () Unit!94398)

(assert (=> b!4516808 (= lt!1694645 Unit!94487)))

(declare-fun lt!1694637 () Unit!94398)

(assert (=> b!4516808 (= lt!1694637 (addForallContainsKeyThenBeforeAdding!334 (extractMap!1212 (t!357721 (toList!4319 lt!1694158))) lt!1694644 (_1!28823 (h!56483 (_2!28824 (h!56484 (toList!4319 lt!1694158))))) (_2!28823 (h!56483 (_2!28824 (h!56484 (toList!4319 lt!1694158)))))))))

(assert (=> b!4516808 (forall!10253 (toList!4320 (extractMap!1212 (t!357721 (toList!4319 lt!1694158)))) lambda!171865)))

(declare-fun lt!1694632 () Unit!94398)

(assert (=> b!4516808 (= lt!1694632 lt!1694637)))

(assert (=> b!4516808 call!314601))

(declare-fun lt!1694652 () Unit!94398)

(declare-fun Unit!94488 () Unit!94398)

(assert (=> b!4516808 (= lt!1694652 Unit!94488)))

(declare-fun res!1879537 () Bool)

(assert (=> b!4516808 (= res!1879537 (forall!10253 (_2!28824 (h!56484 (toList!4319 lt!1694158))) lambda!171865))))

(assert (=> b!4516808 (=> (not res!1879537) (not e!2814017))))

(assert (=> b!4516808 e!2814017))

(declare-fun lt!1694640 () Unit!94398)

(declare-fun Unit!94489 () Unit!94398)

(assert (=> b!4516808 (= lt!1694640 Unit!94489)))

(declare-fun b!4516809 () Bool)

(assert (=> b!4516809 (= e!2814016 (invariantList!1013 (toList!4320 lt!1694634)))))

(assert (= (and d!1390564 c!770624) b!4516807))

(assert (= (and d!1390564 (not c!770624)) b!4516808))

(assert (= (and b!4516808 res!1879537) b!4516805))

(assert (= (or b!4516807 b!4516808) bm!314597))

(assert (= (or b!4516807 b!4516808) bm!314596))

(assert (= (or b!4516807 b!4516808) bm!314598))

(assert (= (and d!1390564 res!1879538) b!4516806))

(assert (= (and b!4516806 res!1879539) b!4516809))

(declare-fun m!5261747 () Bool)

(assert (=> b!4516809 m!5261747))

(declare-fun m!5261749 () Bool)

(assert (=> b!4516808 m!5261749))

(declare-fun m!5261751 () Bool)

(assert (=> b!4516808 m!5261751))

(declare-fun m!5261753 () Bool)

(assert (=> b!4516808 m!5261753))

(declare-fun m!5261755 () Bool)

(assert (=> b!4516808 m!5261755))

(assert (=> b!4516808 m!5261487))

(declare-fun m!5261757 () Bool)

(assert (=> b!4516808 m!5261757))

(assert (=> b!4516808 m!5261749))

(declare-fun m!5261759 () Bool)

(assert (=> b!4516808 m!5261759))

(assert (=> b!4516808 m!5261753))

(declare-fun m!5261761 () Bool)

(assert (=> b!4516808 m!5261761))

(assert (=> b!4516808 m!5261487))

(declare-fun m!5261763 () Bool)

(assert (=> b!4516808 m!5261763))

(declare-fun m!5261765 () Bool)

(assert (=> b!4516808 m!5261765))

(assert (=> b!4516808 m!5261763))

(declare-fun m!5261767 () Bool)

(assert (=> b!4516808 m!5261767))

(declare-fun m!5261769 () Bool)

(assert (=> d!1390564 m!5261769))

(declare-fun m!5261771 () Bool)

(assert (=> d!1390564 m!5261771))

(declare-fun m!5261773 () Bool)

(assert (=> bm!314596 m!5261773))

(assert (=> bm!314598 m!5261487))

(declare-fun m!5261775 () Bool)

(assert (=> bm!314598 m!5261775))

(declare-fun m!5261777 () Bool)

(assert (=> b!4516806 m!5261777))

(assert (=> b!4516805 m!5261755))

(declare-fun m!5261779 () Bool)

(assert (=> bm!314597 m!5261779))

(assert (=> b!4516658 d!1390564))

(declare-fun bs!851976 () Bool)

(declare-fun d!1390566 () Bool)

(assert (= bs!851976 (and d!1390566 d!1390298)))

(declare-fun lambda!171867 () Int)

(assert (=> bs!851976 (= lambda!171867 lambda!171755)))

(declare-fun bs!851977 () Bool)

(assert (= bs!851977 (and d!1390566 d!1390462)))

(assert (=> bs!851977 (= lambda!171867 lambda!171843)))

(declare-fun bs!851978 () Bool)

(assert (= bs!851978 (and d!1390566 d!1390438)))

(assert (=> bs!851978 (= lambda!171867 lambda!171838)))

(declare-fun bs!851979 () Bool)

(assert (= bs!851979 (and d!1390566 d!1390452)))

(assert (=> bs!851979 (= lambda!171867 lambda!171839)))

(declare-fun bs!851980 () Bool)

(assert (= bs!851980 (and d!1390566 start!446940)))

(assert (=> bs!851980 (= lambda!171867 lambda!171717)))

(declare-fun bs!851981 () Bool)

(assert (= bs!851981 (and d!1390566 d!1390334)))

(assert (=> bs!851981 (= lambda!171867 lambda!171775)))

(declare-fun bs!851982 () Bool)

(assert (= bs!851982 (and d!1390566 d!1390300)))

(assert (=> bs!851982 (= lambda!171867 lambda!171762)))

(declare-fun bs!851983 () Bool)

(assert (= bs!851983 (and d!1390566 d!1390460)))

(assert (=> bs!851983 (= lambda!171867 lambda!171840)))

(declare-fun bs!851984 () Bool)

(assert (= bs!851984 (and d!1390566 d!1390324)))

(assert (=> bs!851984 (not (= lambda!171867 lambda!171769))))

(declare-fun bs!851985 () Bool)

(assert (= bs!851985 (and d!1390566 d!1390530)))

(assert (=> bs!851985 (= lambda!171867 lambda!171858)))

(declare-fun bs!851986 () Bool)

(assert (= bs!851986 (and d!1390566 d!1390294)))

(assert (=> bs!851986 (= lambda!171867 lambda!171751)))

(declare-fun bs!851987 () Bool)

(assert (= bs!851987 (and d!1390566 d!1390314)))

(assert (=> bs!851987 (= lambda!171867 lambda!171763)))

(declare-fun bs!851988 () Bool)

(assert (= bs!851988 (and d!1390566 d!1390424)))

(assert (=> bs!851988 (= lambda!171867 lambda!171832)))

(declare-fun bs!851989 () Bool)

(assert (= bs!851989 (and d!1390566 d!1390270)))

(assert (=> bs!851989 (= lambda!171867 lambda!171720)))

(declare-fun lt!1694653 () ListMap!3581)

(assert (=> d!1390566 (invariantList!1013 (toList!4320 lt!1694653))))

(declare-fun e!2814018 () ListMap!3581)

(assert (=> d!1390566 (= lt!1694653 e!2814018)))

(declare-fun c!770625 () Bool)

(assert (=> d!1390566 (= c!770625 ((_ is Cons!50635) (t!357721 (toList!4319 lt!1694158))))))

(assert (=> d!1390566 (forall!10251 (t!357721 (toList!4319 lt!1694158)) lambda!171867)))

(assert (=> d!1390566 (= (extractMap!1212 (t!357721 (toList!4319 lt!1694158))) lt!1694653)))

(declare-fun b!4516810 () Bool)

(assert (=> b!4516810 (= e!2814018 (addToMapMapFromBucket!683 (_2!28824 (h!56484 (t!357721 (toList!4319 lt!1694158)))) (extractMap!1212 (t!357721 (t!357721 (toList!4319 lt!1694158))))))))

(declare-fun b!4516811 () Bool)

(assert (=> b!4516811 (= e!2814018 (ListMap!3582 Nil!50634))))

(assert (= (and d!1390566 c!770625) b!4516810))

(assert (= (and d!1390566 (not c!770625)) b!4516811))

(declare-fun m!5261781 () Bool)

(assert (=> d!1390566 m!5261781))

(declare-fun m!5261783 () Bool)

(assert (=> d!1390566 m!5261783))

(declare-fun m!5261785 () Bool)

(assert (=> b!4516810 m!5261785))

(assert (=> b!4516810 m!5261785))

(declare-fun m!5261787 () Bool)

(assert (=> b!4516810 m!5261787))

(assert (=> b!4516658 d!1390566))

(declare-fun bs!851990 () Bool)

(declare-fun b!4516814 () Bool)

(assert (= bs!851990 (and b!4516814 b!4516808)))

(declare-fun lambda!171868 () Int)

(assert (=> bs!851990 (= (= (extractMap!1212 (t!357721 (toList!4319 lm!1477))) (extractMap!1212 (t!357721 (toList!4319 lt!1694158)))) (= lambda!171868 lambda!171864))))

(declare-fun bs!851991 () Bool)

(assert (= bs!851991 (and b!4516814 b!4516662)))

(assert (=> bs!851991 (= (= (extractMap!1212 (t!357721 (toList!4319 lm!1477))) lt!1694147) (= lambda!171868 lambda!171844))))

(declare-fun bs!851992 () Bool)

(assert (= bs!851992 (and b!4516814 b!4516807)))

(assert (=> bs!851992 (= (= (extractMap!1212 (t!357721 (toList!4319 lm!1477))) (extractMap!1212 (t!357721 (toList!4319 lt!1694158)))) (= lambda!171868 lambda!171863))))

(declare-fun bs!851993 () Bool)

(assert (= bs!851993 (and b!4516814 d!1390358)))

(assert (=> bs!851993 (= (= (extractMap!1212 (t!357721 (toList!4319 lm!1477))) lt!1694503) (= lambda!171868 lambda!171831))))

(declare-fun bs!851994 () Bool)

(assert (= bs!851994 (and b!4516814 b!4516744)))

(assert (=> bs!851994 (= (= (extractMap!1212 (t!357721 (toList!4319 lm!1477))) lt!1694614) (= lambda!171868 lambda!171856))))

(declare-fun bs!851995 () Bool)

(assert (= bs!851995 (and b!4516814 b!4516663)))

(assert (=> bs!851995 (= (= (extractMap!1212 (t!357721 (toList!4319 lm!1477))) lt!1694574) (= lambda!171868 lambda!171846))))

(declare-fun bs!851996 () Bool)

(assert (= bs!851996 (and b!4516814 d!1390564)))

(assert (=> bs!851996 (= (= (extractMap!1212 (t!357721 (toList!4319 lm!1477))) lt!1694634) (= lambda!171868 lambda!171866))))

(declare-fun bs!851997 () Bool)

(assert (= bs!851997 (and b!4516814 d!1390472)))

(assert (=> bs!851997 (= (= (extractMap!1212 (t!357721 (toList!4319 lm!1477))) lt!1694564) (= lambda!171868 lambda!171847))))

(assert (=> bs!851995 (= (= (extractMap!1212 (t!357721 (toList!4319 lm!1477))) lt!1694147) (= lambda!171868 lambda!171845))))

(assert (=> bs!851994 (= (= (extractMap!1212 (t!357721 (toList!4319 lm!1477))) (extractMap!1212 (t!357721 (toList!4319 lt!1694164)))) (= lambda!171868 lambda!171855))))

(declare-fun bs!851998 () Bool)

(assert (= bs!851998 (and b!4516814 b!4516743)))

(assert (=> bs!851998 (= (= (extractMap!1212 (t!357721 (toList!4319 lm!1477))) (extractMap!1212 (t!357721 (toList!4319 lt!1694164)))) (= lambda!171868 lambda!171854))))

(assert (=> bs!851990 (= (= (extractMap!1212 (t!357721 (toList!4319 lm!1477))) lt!1694644) (= lambda!171868 lambda!171865))))

(declare-fun bs!851999 () Bool)

(assert (= bs!851999 (and b!4516814 b!4516604)))

(assert (=> bs!851999 (= (= (extractMap!1212 (t!357721 (toList!4319 lm!1477))) lt!1694513) (= lambda!171868 lambda!171830))))

(declare-fun bs!852000 () Bool)

(assert (= bs!852000 (and b!4516814 d!1390326)))

(assert (=> bs!852000 (not (= lambda!171868 lambda!171772))))

(declare-fun bs!852001 () Bool)

(assert (= bs!852001 (and b!4516814 d!1390526)))

(assert (=> bs!852001 (= (= (extractMap!1212 (t!357721 (toList!4319 lm!1477))) lt!1694604) (= lambda!171868 lambda!171857))))

(assert (=> bs!851999 (= (= (extractMap!1212 (t!357721 (toList!4319 lm!1477))) lt!1694172) (= lambda!171868 lambda!171829))))

(declare-fun bs!852002 () Bool)

(assert (= bs!852002 (and b!4516814 b!4516603)))

(assert (=> bs!852002 (= (= (extractMap!1212 (t!357721 (toList!4319 lm!1477))) lt!1694172) (= lambda!171868 lambda!171828))))

(assert (=> b!4516814 true))

(declare-fun bs!852003 () Bool)

(declare-fun b!4516815 () Bool)

(assert (= bs!852003 (and b!4516815 b!4516808)))

(declare-fun lambda!171869 () Int)

(assert (=> bs!852003 (= (= (extractMap!1212 (t!357721 (toList!4319 lm!1477))) (extractMap!1212 (t!357721 (toList!4319 lt!1694158)))) (= lambda!171869 lambda!171864))))

(declare-fun bs!852004 () Bool)

(assert (= bs!852004 (and b!4516815 b!4516662)))

(assert (=> bs!852004 (= (= (extractMap!1212 (t!357721 (toList!4319 lm!1477))) lt!1694147) (= lambda!171869 lambda!171844))))

(declare-fun bs!852005 () Bool)

(assert (= bs!852005 (and b!4516815 b!4516807)))

(assert (=> bs!852005 (= (= (extractMap!1212 (t!357721 (toList!4319 lm!1477))) (extractMap!1212 (t!357721 (toList!4319 lt!1694158)))) (= lambda!171869 lambda!171863))))

(declare-fun bs!852006 () Bool)

(assert (= bs!852006 (and b!4516815 d!1390358)))

(assert (=> bs!852006 (= (= (extractMap!1212 (t!357721 (toList!4319 lm!1477))) lt!1694503) (= lambda!171869 lambda!171831))))

(declare-fun bs!852007 () Bool)

(assert (= bs!852007 (and b!4516815 b!4516744)))

(assert (=> bs!852007 (= (= (extractMap!1212 (t!357721 (toList!4319 lm!1477))) lt!1694614) (= lambda!171869 lambda!171856))))

(declare-fun bs!852008 () Bool)

(assert (= bs!852008 (and b!4516815 b!4516663)))

(assert (=> bs!852008 (= (= (extractMap!1212 (t!357721 (toList!4319 lm!1477))) lt!1694574) (= lambda!171869 lambda!171846))))

(declare-fun bs!852009 () Bool)

(assert (= bs!852009 (and b!4516815 d!1390564)))

(assert (=> bs!852009 (= (= (extractMap!1212 (t!357721 (toList!4319 lm!1477))) lt!1694634) (= lambda!171869 lambda!171866))))

(declare-fun bs!852010 () Bool)

(assert (= bs!852010 (and b!4516815 d!1390472)))

(assert (=> bs!852010 (= (= (extractMap!1212 (t!357721 (toList!4319 lm!1477))) lt!1694564) (= lambda!171869 lambda!171847))))

(assert (=> bs!852007 (= (= (extractMap!1212 (t!357721 (toList!4319 lm!1477))) (extractMap!1212 (t!357721 (toList!4319 lt!1694164)))) (= lambda!171869 lambda!171855))))

(declare-fun bs!852011 () Bool)

(assert (= bs!852011 (and b!4516815 b!4516743)))

(assert (=> bs!852011 (= (= (extractMap!1212 (t!357721 (toList!4319 lm!1477))) (extractMap!1212 (t!357721 (toList!4319 lt!1694164)))) (= lambda!171869 lambda!171854))))

(assert (=> bs!852003 (= (= (extractMap!1212 (t!357721 (toList!4319 lm!1477))) lt!1694644) (= lambda!171869 lambda!171865))))

(declare-fun bs!852012 () Bool)

(assert (= bs!852012 (and b!4516815 b!4516604)))

(assert (=> bs!852012 (= (= (extractMap!1212 (t!357721 (toList!4319 lm!1477))) lt!1694513) (= lambda!171869 lambda!171830))))

(declare-fun bs!852013 () Bool)

(assert (= bs!852013 (and b!4516815 d!1390326)))

(assert (=> bs!852013 (not (= lambda!171869 lambda!171772))))

(declare-fun bs!852014 () Bool)

(assert (= bs!852014 (and b!4516815 d!1390526)))

(assert (=> bs!852014 (= (= (extractMap!1212 (t!357721 (toList!4319 lm!1477))) lt!1694604) (= lambda!171869 lambda!171857))))

(assert (=> bs!852012 (= (= (extractMap!1212 (t!357721 (toList!4319 lm!1477))) lt!1694172) (= lambda!171869 lambda!171829))))

(declare-fun bs!852015 () Bool)

(assert (= bs!852015 (and b!4516815 b!4516603)))

(assert (=> bs!852015 (= (= (extractMap!1212 (t!357721 (toList!4319 lm!1477))) lt!1694172) (= lambda!171869 lambda!171828))))

(declare-fun bs!852016 () Bool)

(assert (= bs!852016 (and b!4516815 b!4516814)))

(assert (=> bs!852016 (= lambda!171869 lambda!171868)))

(assert (=> bs!852008 (= (= (extractMap!1212 (t!357721 (toList!4319 lm!1477))) lt!1694147) (= lambda!171869 lambda!171845))))

(assert (=> b!4516815 true))

(declare-fun lambda!171870 () Int)

(declare-fun lt!1694666 () ListMap!3581)

(assert (=> bs!852003 (= (= lt!1694666 (extractMap!1212 (t!357721 (toList!4319 lt!1694158)))) (= lambda!171870 lambda!171864))))

(assert (=> bs!852004 (= (= lt!1694666 lt!1694147) (= lambda!171870 lambda!171844))))

(assert (=> bs!852005 (= (= lt!1694666 (extractMap!1212 (t!357721 (toList!4319 lt!1694158)))) (= lambda!171870 lambda!171863))))

(assert (=> bs!852006 (= (= lt!1694666 lt!1694503) (= lambda!171870 lambda!171831))))

(assert (=> b!4516815 (= (= lt!1694666 (extractMap!1212 (t!357721 (toList!4319 lm!1477)))) (= lambda!171870 lambda!171869))))

(assert (=> bs!852007 (= (= lt!1694666 lt!1694614) (= lambda!171870 lambda!171856))))

(assert (=> bs!852008 (= (= lt!1694666 lt!1694574) (= lambda!171870 lambda!171846))))

(assert (=> bs!852009 (= (= lt!1694666 lt!1694634) (= lambda!171870 lambda!171866))))

(assert (=> bs!852010 (= (= lt!1694666 lt!1694564) (= lambda!171870 lambda!171847))))

(assert (=> bs!852007 (= (= lt!1694666 (extractMap!1212 (t!357721 (toList!4319 lt!1694164)))) (= lambda!171870 lambda!171855))))

(assert (=> bs!852011 (= (= lt!1694666 (extractMap!1212 (t!357721 (toList!4319 lt!1694164)))) (= lambda!171870 lambda!171854))))

(assert (=> bs!852003 (= (= lt!1694666 lt!1694644) (= lambda!171870 lambda!171865))))

(assert (=> bs!852012 (= (= lt!1694666 lt!1694513) (= lambda!171870 lambda!171830))))

(assert (=> bs!852013 (not (= lambda!171870 lambda!171772))))

(assert (=> bs!852014 (= (= lt!1694666 lt!1694604) (= lambda!171870 lambda!171857))))

(assert (=> bs!852012 (= (= lt!1694666 lt!1694172) (= lambda!171870 lambda!171829))))

(assert (=> bs!852015 (= (= lt!1694666 lt!1694172) (= lambda!171870 lambda!171828))))

(assert (=> bs!852016 (= (= lt!1694666 (extractMap!1212 (t!357721 (toList!4319 lm!1477)))) (= lambda!171870 lambda!171868))))

(assert (=> bs!852008 (= (= lt!1694666 lt!1694147) (= lambda!171870 lambda!171845))))

(assert (=> b!4516815 true))

(declare-fun bs!852017 () Bool)

(declare-fun d!1390568 () Bool)

(assert (= bs!852017 (and d!1390568 b!4516808)))

(declare-fun lt!1694656 () ListMap!3581)

(declare-fun lambda!171871 () Int)

(assert (=> bs!852017 (= (= lt!1694656 (extractMap!1212 (t!357721 (toList!4319 lt!1694158)))) (= lambda!171871 lambda!171864))))

(declare-fun bs!852018 () Bool)

(assert (= bs!852018 (and d!1390568 b!4516662)))

(assert (=> bs!852018 (= (= lt!1694656 lt!1694147) (= lambda!171871 lambda!171844))))

(declare-fun bs!852019 () Bool)

(assert (= bs!852019 (and d!1390568 b!4516807)))

(assert (=> bs!852019 (= (= lt!1694656 (extractMap!1212 (t!357721 (toList!4319 lt!1694158)))) (= lambda!171871 lambda!171863))))

(declare-fun bs!852020 () Bool)

(assert (= bs!852020 (and d!1390568 d!1390358)))

(assert (=> bs!852020 (= (= lt!1694656 lt!1694503) (= lambda!171871 lambda!171831))))

(declare-fun bs!852021 () Bool)

(assert (= bs!852021 (and d!1390568 b!4516815)))

(assert (=> bs!852021 (= (= lt!1694656 (extractMap!1212 (t!357721 (toList!4319 lm!1477)))) (= lambda!171871 lambda!171869))))

(declare-fun bs!852022 () Bool)

(assert (= bs!852022 (and d!1390568 b!4516744)))

(assert (=> bs!852022 (= (= lt!1694656 lt!1694614) (= lambda!171871 lambda!171856))))

(declare-fun bs!852023 () Bool)

(assert (= bs!852023 (and d!1390568 b!4516663)))

(assert (=> bs!852023 (= (= lt!1694656 lt!1694574) (= lambda!171871 lambda!171846))))

(declare-fun bs!852024 () Bool)

(assert (= bs!852024 (and d!1390568 d!1390564)))

(assert (=> bs!852024 (= (= lt!1694656 lt!1694634) (= lambda!171871 lambda!171866))))

(declare-fun bs!852025 () Bool)

(assert (= bs!852025 (and d!1390568 d!1390472)))

(assert (=> bs!852025 (= (= lt!1694656 lt!1694564) (= lambda!171871 lambda!171847))))

(assert (=> bs!852021 (= (= lt!1694656 lt!1694666) (= lambda!171871 lambda!171870))))

(assert (=> bs!852022 (= (= lt!1694656 (extractMap!1212 (t!357721 (toList!4319 lt!1694164)))) (= lambda!171871 lambda!171855))))

(declare-fun bs!852026 () Bool)

(assert (= bs!852026 (and d!1390568 b!4516743)))

(assert (=> bs!852026 (= (= lt!1694656 (extractMap!1212 (t!357721 (toList!4319 lt!1694164)))) (= lambda!171871 lambda!171854))))

(assert (=> bs!852017 (= (= lt!1694656 lt!1694644) (= lambda!171871 lambda!171865))))

(declare-fun bs!852027 () Bool)

(assert (= bs!852027 (and d!1390568 b!4516604)))

(assert (=> bs!852027 (= (= lt!1694656 lt!1694513) (= lambda!171871 lambda!171830))))

(declare-fun bs!852028 () Bool)

(assert (= bs!852028 (and d!1390568 d!1390326)))

(assert (=> bs!852028 (not (= lambda!171871 lambda!171772))))

(declare-fun bs!852029 () Bool)

(assert (= bs!852029 (and d!1390568 d!1390526)))

(assert (=> bs!852029 (= (= lt!1694656 lt!1694604) (= lambda!171871 lambda!171857))))

(assert (=> bs!852027 (= (= lt!1694656 lt!1694172) (= lambda!171871 lambda!171829))))

(declare-fun bs!852030 () Bool)

(assert (= bs!852030 (and d!1390568 b!4516603)))

(assert (=> bs!852030 (= (= lt!1694656 lt!1694172) (= lambda!171871 lambda!171828))))

(declare-fun bs!852031 () Bool)

(assert (= bs!852031 (and d!1390568 b!4516814)))

(assert (=> bs!852031 (= (= lt!1694656 (extractMap!1212 (t!357721 (toList!4319 lm!1477)))) (= lambda!171871 lambda!171868))))

(assert (=> bs!852023 (= (= lt!1694656 lt!1694147) (= lambda!171871 lambda!171845))))

(assert (=> d!1390568 true))

(declare-fun c!770626 () Bool)

(declare-fun call!314605 () Bool)

(declare-fun bm!314599 () Bool)

(assert (=> bm!314599 (= call!314605 (forall!10253 (toList!4320 (extractMap!1212 (t!357721 (toList!4319 lm!1477)))) (ite c!770626 lambda!171868 lambda!171869)))))

(declare-fun bm!314600 () Bool)

(declare-fun call!314604 () Bool)

(assert (=> bm!314600 (= call!314604 (forall!10253 (toList!4320 (extractMap!1212 (t!357721 (toList!4319 lm!1477)))) (ite c!770626 lambda!171868 lambda!171870)))))

(declare-fun b!4516812 () Bool)

(declare-fun e!2814021 () Bool)

(assert (=> b!4516812 (= e!2814021 (forall!10253 (toList!4320 (extractMap!1212 (t!357721 (toList!4319 lm!1477)))) lambda!171870))))

(declare-fun bm!314601 () Bool)

(declare-fun call!314606 () Unit!94398)

(assert (=> bm!314601 (= call!314606 (lemmaContainsAllItsOwnKeys!334 (extractMap!1212 (t!357721 (toList!4319 lm!1477)))))))

(declare-fun b!4516813 () Bool)

(declare-fun res!1879542 () Bool)

(declare-fun e!2814020 () Bool)

(assert (=> b!4516813 (=> (not res!1879542) (not e!2814020))))

(assert (=> b!4516813 (= res!1879542 (forall!10253 (toList!4320 (extractMap!1212 (t!357721 (toList!4319 lm!1477)))) lambda!171871))))

(assert (=> d!1390568 e!2814020))

(declare-fun res!1879541 () Bool)

(assert (=> d!1390568 (=> (not res!1879541) (not e!2814020))))

(assert (=> d!1390568 (= res!1879541 (forall!10253 (_2!28824 (h!56484 (toList!4319 lm!1477))) lambda!171871))))

(declare-fun e!2814019 () ListMap!3581)

(assert (=> d!1390568 (= lt!1694656 e!2814019)))

(assert (=> d!1390568 (= c!770626 ((_ is Nil!50634) (_2!28824 (h!56484 (toList!4319 lm!1477)))))))

(assert (=> d!1390568 (noDuplicateKeys!1156 (_2!28824 (h!56484 (toList!4319 lm!1477))))))

(assert (=> d!1390568 (= (addToMapMapFromBucket!683 (_2!28824 (h!56484 (toList!4319 lm!1477))) (extractMap!1212 (t!357721 (toList!4319 lm!1477)))) lt!1694656)))

(assert (=> b!4516814 (= e!2814019 (extractMap!1212 (t!357721 (toList!4319 lm!1477))))))

(declare-fun lt!1694670 () Unit!94398)

(assert (=> b!4516814 (= lt!1694670 call!314606)))

(assert (=> b!4516814 call!314605))

(declare-fun lt!1694660 () Unit!94398)

(assert (=> b!4516814 (= lt!1694660 lt!1694670)))

(assert (=> b!4516814 call!314604))

(declare-fun lt!1694658 () Unit!94398)

(declare-fun Unit!94502 () Unit!94398)

(assert (=> b!4516814 (= lt!1694658 Unit!94502)))

(assert (=> b!4516815 (= e!2814019 lt!1694666)))

(declare-fun lt!1694673 () ListMap!3581)

(assert (=> b!4516815 (= lt!1694673 (+!1532 (extractMap!1212 (t!357721 (toList!4319 lm!1477))) (h!56483 (_2!28824 (h!56484 (toList!4319 lm!1477))))))))

(assert (=> b!4516815 (= lt!1694666 (addToMapMapFromBucket!683 (t!357720 (_2!28824 (h!56484 (toList!4319 lm!1477)))) (+!1532 (extractMap!1212 (t!357721 (toList!4319 lm!1477))) (h!56483 (_2!28824 (h!56484 (toList!4319 lm!1477)))))))))

(declare-fun lt!1694655 () Unit!94398)

(assert (=> b!4516815 (= lt!1694655 call!314606)))

(assert (=> b!4516815 call!314605))

(declare-fun lt!1694668 () Unit!94398)

(assert (=> b!4516815 (= lt!1694668 lt!1694655)))

(assert (=> b!4516815 (forall!10253 (toList!4320 lt!1694673) lambda!171870)))

(declare-fun lt!1694671 () Unit!94398)

(declare-fun Unit!94504 () Unit!94398)

(assert (=> b!4516815 (= lt!1694671 Unit!94504)))

(assert (=> b!4516815 (forall!10253 (t!357720 (_2!28824 (h!56484 (toList!4319 lm!1477)))) lambda!171870)))

(declare-fun lt!1694657 () Unit!94398)

(declare-fun Unit!94505 () Unit!94398)

(assert (=> b!4516815 (= lt!1694657 Unit!94505)))

(declare-fun lt!1694665 () Unit!94398)

(declare-fun Unit!94506 () Unit!94398)

(assert (=> b!4516815 (= lt!1694665 Unit!94506)))

(declare-fun lt!1694672 () Unit!94398)

(assert (=> b!4516815 (= lt!1694672 (forallContained!2505 (toList!4320 lt!1694673) lambda!171870 (h!56483 (_2!28824 (h!56484 (toList!4319 lm!1477))))))))

(assert (=> b!4516815 (contains!13353 lt!1694673 (_1!28823 (h!56483 (_2!28824 (h!56484 (toList!4319 lm!1477))))))))

(declare-fun lt!1694669 () Unit!94398)

(declare-fun Unit!94507 () Unit!94398)

(assert (=> b!4516815 (= lt!1694669 Unit!94507)))

(assert (=> b!4516815 (contains!13353 lt!1694666 (_1!28823 (h!56483 (_2!28824 (h!56484 (toList!4319 lm!1477))))))))

(declare-fun lt!1694661 () Unit!94398)

(declare-fun Unit!94508 () Unit!94398)

(assert (=> b!4516815 (= lt!1694661 Unit!94508)))

(assert (=> b!4516815 (forall!10253 (_2!28824 (h!56484 (toList!4319 lm!1477))) lambda!171870)))

(declare-fun lt!1694663 () Unit!94398)

(declare-fun Unit!94509 () Unit!94398)

(assert (=> b!4516815 (= lt!1694663 Unit!94509)))

(assert (=> b!4516815 (forall!10253 (toList!4320 lt!1694673) lambda!171870)))

(declare-fun lt!1694664 () Unit!94398)

(declare-fun Unit!94510 () Unit!94398)

(assert (=> b!4516815 (= lt!1694664 Unit!94510)))

(declare-fun lt!1694667 () Unit!94398)

(declare-fun Unit!94511 () Unit!94398)

(assert (=> b!4516815 (= lt!1694667 Unit!94511)))

(declare-fun lt!1694659 () Unit!94398)

(assert (=> b!4516815 (= lt!1694659 (addForallContainsKeyThenBeforeAdding!334 (extractMap!1212 (t!357721 (toList!4319 lm!1477))) lt!1694666 (_1!28823 (h!56483 (_2!28824 (h!56484 (toList!4319 lm!1477))))) (_2!28823 (h!56483 (_2!28824 (h!56484 (toList!4319 lm!1477)))))))))

(assert (=> b!4516815 (forall!10253 (toList!4320 (extractMap!1212 (t!357721 (toList!4319 lm!1477)))) lambda!171870)))

(declare-fun lt!1694654 () Unit!94398)

(assert (=> b!4516815 (= lt!1694654 lt!1694659)))

(assert (=> b!4516815 call!314604))

(declare-fun lt!1694674 () Unit!94398)

(declare-fun Unit!94512 () Unit!94398)

(assert (=> b!4516815 (= lt!1694674 Unit!94512)))

(declare-fun res!1879540 () Bool)

(assert (=> b!4516815 (= res!1879540 (forall!10253 (_2!28824 (h!56484 (toList!4319 lm!1477))) lambda!171870))))

(assert (=> b!4516815 (=> (not res!1879540) (not e!2814021))))

(assert (=> b!4516815 e!2814021))

(declare-fun lt!1694662 () Unit!94398)

(declare-fun Unit!94513 () Unit!94398)

(assert (=> b!4516815 (= lt!1694662 Unit!94513)))

(declare-fun b!4516816 () Bool)

(assert (=> b!4516816 (= e!2814020 (invariantList!1013 (toList!4320 lt!1694656)))))

(assert (= (and d!1390568 c!770626) b!4516814))

(assert (= (and d!1390568 (not c!770626)) b!4516815))

(assert (= (and b!4516815 res!1879540) b!4516812))

(assert (= (or b!4516814 b!4516815) bm!314600))

(assert (= (or b!4516814 b!4516815) bm!314599))

(assert (= (or b!4516814 b!4516815) bm!314601))

(assert (= (and d!1390568 res!1879541) b!4516813))

(assert (= (and b!4516813 res!1879542) b!4516816))

(declare-fun m!5261789 () Bool)

(assert (=> b!4516816 m!5261789))

(declare-fun m!5261791 () Bool)

(assert (=> b!4516815 m!5261791))

(declare-fun m!5261793 () Bool)

(assert (=> b!4516815 m!5261793))

(declare-fun m!5261795 () Bool)

(assert (=> b!4516815 m!5261795))

(declare-fun m!5261797 () Bool)

(assert (=> b!4516815 m!5261797))

(assert (=> b!4516815 m!5260733))

(declare-fun m!5261799 () Bool)

(assert (=> b!4516815 m!5261799))

(assert (=> b!4516815 m!5261791))

(declare-fun m!5261801 () Bool)

(assert (=> b!4516815 m!5261801))

(assert (=> b!4516815 m!5261795))

(declare-fun m!5261803 () Bool)

(assert (=> b!4516815 m!5261803))

(assert (=> b!4516815 m!5260733))

(declare-fun m!5261805 () Bool)

(assert (=> b!4516815 m!5261805))

(declare-fun m!5261807 () Bool)

(assert (=> b!4516815 m!5261807))

(assert (=> b!4516815 m!5261805))

(declare-fun m!5261809 () Bool)

(assert (=> b!4516815 m!5261809))

(declare-fun m!5261811 () Bool)

(assert (=> d!1390568 m!5261811))

(assert (=> d!1390568 m!5261551))

(declare-fun m!5261813 () Bool)

(assert (=> bm!314599 m!5261813))

(assert (=> bm!314601 m!5260733))

(declare-fun m!5261815 () Bool)

(assert (=> bm!314601 m!5261815))

(declare-fun m!5261817 () Bool)

(assert (=> b!4516813 m!5261817))

(assert (=> b!4516812 m!5261797))

(declare-fun m!5261819 () Bool)

(assert (=> bm!314600 m!5261819))

(assert (=> b!4516375 d!1390568))

(assert (=> b!4516375 d!1390298))

(declare-fun bs!852038 () Bool)

(declare-fun b!4516877 () Bool)

(assert (= bs!852038 (and b!4516877 b!4516724)))

(declare-fun lambda!171892 () Int)

(assert (=> bs!852038 (= (= (t!357720 (toList!4320 (extractMap!1212 (t!357721 (toList!4319 lm!1477))))) (toList!4320 lt!1694159)) (= lambda!171892 lambda!171852))))

(declare-fun bs!852039 () Bool)

(assert (= bs!852039 (and b!4516877 b!4516762)))

(assert (=> bs!852039 (= (= (t!357720 (toList!4320 (extractMap!1212 (t!357721 (toList!4319 lm!1477))))) (toList!4320 lt!1694148)) (= lambda!171892 lambda!171859))))

(declare-fun bs!852040 () Bool)

(assert (= bs!852040 (and b!4516877 b!4516801)))

(assert (=> bs!852040 (= (= (t!357720 (toList!4320 (extractMap!1212 (t!357721 (toList!4319 lm!1477))))) (toList!4320 (extractMap!1212 (t!357721 (toList!4319 lm!1477))))) (= lambda!171892 lambda!171861))))

(assert (=> b!4516877 true))

(declare-fun bs!852041 () Bool)

(declare-fun b!4516878 () Bool)

(assert (= bs!852041 (and b!4516878 b!4516724)))

(declare-fun lambda!171893 () Int)

(assert (=> bs!852041 (= (= (Cons!50634 (h!56483 (toList!4320 (extractMap!1212 (t!357721 (toList!4319 lm!1477))))) (t!357720 (toList!4320 (extractMap!1212 (t!357721 (toList!4319 lm!1477)))))) (toList!4320 lt!1694159)) (= lambda!171893 lambda!171852))))

(declare-fun bs!852042 () Bool)

(assert (= bs!852042 (and b!4516878 b!4516762)))

(assert (=> bs!852042 (= (= (Cons!50634 (h!56483 (toList!4320 (extractMap!1212 (t!357721 (toList!4319 lm!1477))))) (t!357720 (toList!4320 (extractMap!1212 (t!357721 (toList!4319 lm!1477)))))) (toList!4320 lt!1694148)) (= lambda!171893 lambda!171859))))

(declare-fun bs!852043 () Bool)

(assert (= bs!852043 (and b!4516878 b!4516801)))

(assert (=> bs!852043 (= (= (Cons!50634 (h!56483 (toList!4320 (extractMap!1212 (t!357721 (toList!4319 lm!1477))))) (t!357720 (toList!4320 (extractMap!1212 (t!357721 (toList!4319 lm!1477)))))) (toList!4320 (extractMap!1212 (t!357721 (toList!4319 lm!1477))))) (= lambda!171893 lambda!171861))))

(declare-fun bs!852044 () Bool)

(assert (= bs!852044 (and b!4516878 b!4516877)))

(assert (=> bs!852044 (= (= (Cons!50634 (h!56483 (toList!4320 (extractMap!1212 (t!357721 (toList!4319 lm!1477))))) (t!357720 (toList!4320 (extractMap!1212 (t!357721 (toList!4319 lm!1477)))))) (t!357720 (toList!4320 (extractMap!1212 (t!357721 (toList!4319 lm!1477)))))) (= lambda!171893 lambda!171892))))

(assert (=> b!4516878 true))

(declare-fun bs!852046 () Bool)

(declare-fun b!4516881 () Bool)

(assert (= bs!852046 (and b!4516881 b!4516801)))

(declare-fun lambda!171894 () Int)

(assert (=> bs!852046 (= lambda!171894 lambda!171861)))

(declare-fun bs!852047 () Bool)

(assert (= bs!852047 (and b!4516881 b!4516877)))

(assert (=> bs!852047 (= (= (toList!4320 (extractMap!1212 (t!357721 (toList!4319 lm!1477)))) (t!357720 (toList!4320 (extractMap!1212 (t!357721 (toList!4319 lm!1477)))))) (= lambda!171894 lambda!171892))))

(declare-fun bs!852048 () Bool)

(assert (= bs!852048 (and b!4516881 b!4516724)))

(assert (=> bs!852048 (= (= (toList!4320 (extractMap!1212 (t!357721 (toList!4319 lm!1477)))) (toList!4320 lt!1694159)) (= lambda!171894 lambda!171852))))

(declare-fun bs!852049 () Bool)

(assert (= bs!852049 (and b!4516881 b!4516762)))

(assert (=> bs!852049 (= (= (toList!4320 (extractMap!1212 (t!357721 (toList!4319 lm!1477)))) (toList!4320 lt!1694148)) (= lambda!171894 lambda!171859))))

(declare-fun bs!852050 () Bool)

(assert (= bs!852050 (and b!4516881 b!4516878)))

(assert (=> bs!852050 (= (= (toList!4320 (extractMap!1212 (t!357721 (toList!4319 lm!1477)))) (Cons!50634 (h!56483 (toList!4320 (extractMap!1212 (t!357721 (toList!4319 lm!1477))))) (t!357720 (toList!4320 (extractMap!1212 (t!357721 (toList!4319 lm!1477))))))) (= lambda!171894 lambda!171893))))

(assert (=> b!4516881 true))

(declare-fun bs!852051 () Bool)

(declare-fun b!4516882 () Bool)

(assert (= bs!852051 (and b!4516882 b!4516725)))

(declare-fun lambda!171895 () Int)

(assert (=> bs!852051 (= lambda!171895 lambda!171853)))

(declare-fun bs!852052 () Bool)

(assert (= bs!852052 (and b!4516882 b!4516763)))

(assert (=> bs!852052 (= lambda!171895 lambda!171860)))

(declare-fun bs!852053 () Bool)

(assert (= bs!852053 (and b!4516882 b!4516802)))

(assert (=> bs!852053 (= lambda!171895 lambda!171862)))

(declare-fun b!4516876 () Bool)

(declare-fun e!2814051 () Unit!94398)

(declare-fun Unit!94521 () Unit!94398)

(assert (=> b!4516876 (= e!2814051 Unit!94521)))

(assert (=> b!4516877 false))

(declare-fun lt!1694717 () Unit!94398)

(declare-fun forallContained!2507 (List!50761 Int K!12030) Unit!94398)

(assert (=> b!4516877 (= lt!1694717 (forallContained!2507 (getKeysList!461 (t!357720 (toList!4320 (extractMap!1212 (t!357721 (toList!4319 lm!1477)))))) lambda!171892 (_1!28823 (h!56483 (toList!4320 (extractMap!1212 (t!357721 (toList!4319 lm!1477))))))))))

(declare-fun e!2814049 () Unit!94398)

(declare-fun Unit!94523 () Unit!94398)

(assert (=> b!4516877 (= e!2814049 Unit!94523)))

(declare-fun e!2814048 () List!50761)

(assert (=> b!4516878 (= e!2814048 (Cons!50637 (_1!28823 (h!56483 (toList!4320 (extractMap!1212 (t!357721 (toList!4319 lm!1477)))))) (getKeysList!461 (t!357720 (toList!4320 (extractMap!1212 (t!357721 (toList!4319 lm!1477))))))))))

(declare-fun c!770649 () Bool)

(assert (=> b!4516878 (= c!770649 (containsKey!1771 (t!357720 (toList!4320 (extractMap!1212 (t!357721 (toList!4319 lm!1477))))) (_1!28823 (h!56483 (toList!4320 (extractMap!1212 (t!357721 (toList!4319 lm!1477))))))))))

(declare-fun lt!1694719 () Unit!94398)

(assert (=> b!4516878 (= lt!1694719 e!2814051)))

(declare-fun c!770648 () Bool)

(assert (=> b!4516878 (= c!770648 (contains!13354 (getKeysList!461 (t!357720 (toList!4320 (extractMap!1212 (t!357721 (toList!4319 lm!1477)))))) (_1!28823 (h!56483 (toList!4320 (extractMap!1212 (t!357721 (toList!4319 lm!1477))))))))))

(declare-fun lt!1694720 () Unit!94398)

(assert (=> b!4516878 (= lt!1694720 e!2814049)))

(declare-fun lt!1694716 () List!50761)

(assert (=> b!4516878 (= lt!1694716 (getKeysList!461 (t!357720 (toList!4320 (extractMap!1212 (t!357721 (toList!4319 lm!1477)))))))))

(declare-fun lt!1694718 () Unit!94398)

(declare-fun lemmaForallContainsAddHeadPreserves!165 (List!50758 List!50761 tuple2!51058) Unit!94398)

(assert (=> b!4516878 (= lt!1694718 (lemmaForallContainsAddHeadPreserves!165 (t!357720 (toList!4320 (extractMap!1212 (t!357721 (toList!4319 lm!1477))))) lt!1694716 (h!56483 (toList!4320 (extractMap!1212 (t!357721 (toList!4319 lm!1477)))))))))

(assert (=> b!4516878 (forall!10254 lt!1694716 lambda!171893)))

(declare-fun lt!1694721 () Unit!94398)

(assert (=> b!4516878 (= lt!1694721 lt!1694718)))

(declare-fun b!4516879 () Bool)

(assert (=> b!4516879 (= e!2814048 Nil!50637)))

(declare-fun b!4516880 () Bool)

(declare-fun Unit!94524 () Unit!94398)

(assert (=> b!4516880 (= e!2814049 Unit!94524)))

(declare-fun res!1879560 () Bool)

(declare-fun e!2814050 () Bool)

(assert (=> b!4516881 (=> (not res!1879560) (not e!2814050))))

(declare-fun lt!1694722 () List!50761)

(assert (=> b!4516881 (= res!1879560 (forall!10254 lt!1694722 lambda!171894))))

(declare-fun d!1390570 () Bool)

(assert (=> d!1390570 e!2814050))

(declare-fun res!1879558 () Bool)

(assert (=> d!1390570 (=> (not res!1879558) (not e!2814050))))

(assert (=> d!1390570 (= res!1879558 (noDuplicate!743 lt!1694722))))

(assert (=> d!1390570 (= lt!1694722 e!2814048)))

(declare-fun c!770650 () Bool)

(assert (=> d!1390570 (= c!770650 ((_ is Cons!50634) (toList!4320 (extractMap!1212 (t!357721 (toList!4319 lm!1477))))))))

(assert (=> d!1390570 (invariantList!1013 (toList!4320 (extractMap!1212 (t!357721 (toList!4319 lm!1477)))))))

(assert (=> d!1390570 (= (getKeysList!461 (toList!4320 (extractMap!1212 (t!357721 (toList!4319 lm!1477))))) lt!1694722)))

(assert (=> b!4516882 (= e!2814050 (= (content!8347 lt!1694722) (content!8347 (map!11132 (toList!4320 (extractMap!1212 (t!357721 (toList!4319 lm!1477)))) lambda!171895))))))

(declare-fun b!4516883 () Bool)

(declare-fun res!1879559 () Bool)

(assert (=> b!4516883 (=> (not res!1879559) (not e!2814050))))

(assert (=> b!4516883 (= res!1879559 (= (length!342 lt!1694722) (length!343 (toList!4320 (extractMap!1212 (t!357721 (toList!4319 lm!1477)))))))))

(declare-fun b!4516884 () Bool)

(assert (=> b!4516884 false))

(declare-fun Unit!94525 () Unit!94398)

(assert (=> b!4516884 (= e!2814051 Unit!94525)))

(assert (= (and d!1390570 c!770650) b!4516878))

(assert (= (and d!1390570 (not c!770650)) b!4516879))

(assert (= (and b!4516878 c!770649) b!4516884))

(assert (= (and b!4516878 (not c!770649)) b!4516876))

(assert (= (and b!4516878 c!770648) b!4516877))

(assert (= (and b!4516878 (not c!770648)) b!4516880))

(assert (= (and d!1390570 res!1879558) b!4516883))

(assert (= (and b!4516883 res!1879559) b!4516881))

(assert (= (and b!4516881 res!1879560) b!4516882))

(declare-fun m!5261883 () Bool)

(assert (=> b!4516878 m!5261883))

(declare-fun m!5261885 () Bool)

(assert (=> b!4516878 m!5261885))

(declare-fun m!5261887 () Bool)

(assert (=> b!4516878 m!5261887))

(declare-fun m!5261889 () Bool)

(assert (=> b!4516878 m!5261889))

(declare-fun m!5261891 () Bool)

(assert (=> b!4516878 m!5261891))

(assert (=> b!4516878 m!5261887))

(declare-fun m!5261893 () Bool)

(assert (=> b!4516883 m!5261893))

(assert (=> b!4516883 m!5261731))

(declare-fun m!5261895 () Bool)

(assert (=> d!1390570 m!5261895))

(declare-fun m!5261899 () Bool)

(assert (=> d!1390570 m!5261899))

(assert (=> b!4516877 m!5261887))

(assert (=> b!4516877 m!5261887))

(declare-fun m!5261901 () Bool)

(assert (=> b!4516877 m!5261901))

(declare-fun m!5261903 () Bool)

(assert (=> b!4516882 m!5261903))

(declare-fun m!5261905 () Bool)

(assert (=> b!4516882 m!5261905))

(assert (=> b!4516882 m!5261905))

(declare-fun m!5261907 () Bool)

(assert (=> b!4516882 m!5261907))

(declare-fun m!5261909 () Bool)

(assert (=> b!4516881 m!5261909))

(assert (=> b!4516384 d!1390570))

(assert (=> d!1390426 d!1390544))

(assert (=> d!1390426 d!1390542))

(declare-fun d!1390598 () Bool)

(declare-fun c!770660 () Bool)

(assert (=> d!1390598 (= c!770660 ((_ is Nil!50635) (toList!4319 lm!1477)))))

(declare-fun e!2814073 () (InoxSet tuple2!51060))

(assert (=> d!1390598 (= (content!8345 (toList!4319 lm!1477)) e!2814073)))

(declare-fun b!4516917 () Bool)

(assert (=> b!4516917 (= e!2814073 ((as const (Array tuple2!51060 Bool)) false))))

(declare-fun b!4516918 () Bool)

(assert (=> b!4516918 (= e!2814073 ((_ map or) (store ((as const (Array tuple2!51060 Bool)) false) (h!56484 (toList!4319 lm!1477)) true) (content!8345 (t!357721 (toList!4319 lm!1477)))))))

(assert (= (and d!1390598 c!770660) b!4516917))

(assert (= (and d!1390598 (not c!770660)) b!4516918))

(declare-fun m!5261925 () Bool)

(assert (=> b!4516918 m!5261925))

(assert (=> b!4516918 m!5261543))

(assert (=> d!1390346 d!1390598))

(declare-fun d!1390610 () Bool)

(declare-fun res!1879573 () Bool)

(declare-fun e!2814074 () Bool)

(assert (=> d!1390610 (=> res!1879573 e!2814074)))

(assert (=> d!1390610 (= res!1879573 (and ((_ is Cons!50634) (toList!4320 lt!1694159)) (= (_1!28823 (h!56483 (toList!4320 lt!1694159))) key!3287)))))

(assert (=> d!1390610 (= (containsKey!1771 (toList!4320 lt!1694159) key!3287) e!2814074)))

(declare-fun b!4516919 () Bool)

(declare-fun e!2814075 () Bool)

(assert (=> b!4516919 (= e!2814074 e!2814075)))

(declare-fun res!1879574 () Bool)

(assert (=> b!4516919 (=> (not res!1879574) (not e!2814075))))

(assert (=> b!4516919 (= res!1879574 ((_ is Cons!50634) (toList!4320 lt!1694159)))))

(declare-fun b!4516920 () Bool)

(assert (=> b!4516920 (= e!2814075 (containsKey!1771 (t!357720 (toList!4320 lt!1694159)) key!3287))))

(assert (= (and d!1390610 (not res!1879573)) b!4516919))

(assert (= (and b!4516919 res!1879574) b!4516920))

(declare-fun m!5261931 () Bool)

(assert (=> b!4516920 m!5261931))

(assert (=> d!1390318 d!1390610))

(declare-fun d!1390612 () Bool)

(declare-fun res!1879575 () Bool)

(declare-fun e!2814076 () Bool)

(assert (=> d!1390612 (=> res!1879575 e!2814076)))

(assert (=> d!1390612 (= res!1879575 (and ((_ is Cons!50634) (_2!28824 (h!56484 (toList!4319 lt!1694164)))) (= (_1!28823 (h!56483 (_2!28824 (h!56484 (toList!4319 lt!1694164))))) key!3287)))))

(assert (=> d!1390612 (= (containsKey!1768 (_2!28824 (h!56484 (toList!4319 lt!1694164))) key!3287) e!2814076)))

(declare-fun b!4516921 () Bool)

(declare-fun e!2814077 () Bool)

(assert (=> b!4516921 (= e!2814076 e!2814077)))

(declare-fun res!1879576 () Bool)

(assert (=> b!4516921 (=> (not res!1879576) (not e!2814077))))

(assert (=> b!4516921 (= res!1879576 ((_ is Cons!50634) (_2!28824 (h!56484 (toList!4319 lt!1694164)))))))

(declare-fun b!4516922 () Bool)

(assert (=> b!4516922 (= e!2814077 (containsKey!1768 (t!357720 (_2!28824 (h!56484 (toList!4319 lt!1694164)))) key!3287))))

(assert (= (and d!1390612 (not res!1879575)) b!4516921))

(assert (= (and b!4516921 res!1879576) b!4516922))

(declare-fun m!5261945 () Bool)

(assert (=> b!4516922 m!5261945))

(assert (=> b!4516622 d!1390612))

(declare-fun d!1390614 () Bool)

(assert (=> d!1390614 (isDefined!8390 (getValueByKey!1083 (toList!4319 lt!1694164) hash!344))))

(declare-fun lt!1694737 () Unit!94398)

(declare-fun choose!29464 (List!50759 (_ BitVec 64)) Unit!94398)

(assert (=> d!1390614 (= lt!1694737 (choose!29464 (toList!4319 lt!1694164) hash!344))))

(declare-fun e!2814080 () Bool)

(assert (=> d!1390614 e!2814080))

(declare-fun res!1879579 () Bool)

(assert (=> d!1390614 (=> (not res!1879579) (not e!2814080))))

(assert (=> d!1390614 (= res!1879579 (isStrictlySorted!427 (toList!4319 lt!1694164)))))

(assert (=> d!1390614 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!987 (toList!4319 lt!1694164) hash!344) lt!1694737)))

(declare-fun b!4516925 () Bool)

(assert (=> b!4516925 (= e!2814080 (containsKey!1770 (toList!4319 lt!1694164) hash!344))))

(assert (= (and d!1390614 res!1879579) b!4516925))

(assert (=> d!1390614 m!5260829))

(assert (=> d!1390614 m!5260829))

(assert (=> d!1390614 m!5260841))

(declare-fun m!5261951 () Bool)

(assert (=> d!1390614 m!5261951))

(declare-fun m!5261953 () Bool)

(assert (=> d!1390614 m!5261953))

(assert (=> b!4516925 m!5260837))

(assert (=> b!4516331 d!1390614))

(declare-fun d!1390618 () Bool)

(assert (=> d!1390618 (= (isDefined!8390 (getValueByKey!1083 (toList!4319 lt!1694164) hash!344)) (not (isEmpty!28656 (getValueByKey!1083 (toList!4319 lt!1694164) hash!344))))))

(declare-fun bs!852058 () Bool)

(assert (= bs!852058 d!1390618))

(assert (=> bs!852058 m!5260829))

(declare-fun m!5261955 () Bool)

(assert (=> bs!852058 m!5261955))

(assert (=> b!4516331 d!1390618))

(declare-fun b!4516929 () Bool)

(declare-fun e!2814082 () Option!11103)

(assert (=> b!4516929 (= e!2814082 None!11102)))

(declare-fun b!4516928 () Bool)

(assert (=> b!4516928 (= e!2814082 (getValueByKey!1083 (t!357721 (toList!4319 lt!1694164)) hash!344))))

(declare-fun b!4516926 () Bool)

(declare-fun e!2814081 () Option!11103)

(assert (=> b!4516926 (= e!2814081 (Some!11102 (_2!28824 (h!56484 (toList!4319 lt!1694164)))))))

(declare-fun b!4516927 () Bool)

(assert (=> b!4516927 (= e!2814081 e!2814082)))

(declare-fun c!770662 () Bool)

(assert (=> b!4516927 (= c!770662 (and ((_ is Cons!50635) (toList!4319 lt!1694164)) (not (= (_1!28824 (h!56484 (toList!4319 lt!1694164))) hash!344))))))

(declare-fun d!1390620 () Bool)

(declare-fun c!770661 () Bool)

(assert (=> d!1390620 (= c!770661 (and ((_ is Cons!50635) (toList!4319 lt!1694164)) (= (_1!28824 (h!56484 (toList!4319 lt!1694164))) hash!344)))))

(assert (=> d!1390620 (= (getValueByKey!1083 (toList!4319 lt!1694164) hash!344) e!2814081)))

(assert (= (and d!1390620 c!770661) b!4516926))

(assert (= (and d!1390620 (not c!770661)) b!4516927))

(assert (= (and b!4516927 c!770662) b!4516928))

(assert (= (and b!4516927 (not c!770662)) b!4516929))

(declare-fun m!5261957 () Bool)

(assert (=> b!4516928 m!5261957))

(assert (=> b!4516331 d!1390620))

(declare-fun d!1390622 () Bool)

(declare-fun c!770665 () Bool)

(assert (=> d!1390622 (= c!770665 ((_ is Nil!50637) (keys!17586 lt!1694159)))))

(declare-fun e!2814085 () (InoxSet K!12030))

(assert (=> d!1390622 (= (content!8347 (keys!17586 lt!1694159)) e!2814085)))

(declare-fun b!4516934 () Bool)

(assert (=> b!4516934 (= e!2814085 ((as const (Array K!12030 Bool)) false))))

(declare-fun b!4516935 () Bool)

(assert (=> b!4516935 (= e!2814085 ((_ map or) (store ((as const (Array K!12030 Bool)) false) (h!56488 (keys!17586 lt!1694159)) true) (content!8347 (t!357723 (keys!17586 lt!1694159)))))))

(assert (= (and d!1390622 c!770665) b!4516934))

(assert (= (and d!1390622 (not c!770665)) b!4516935))

(declare-fun m!5261959 () Bool)

(assert (=> b!4516935 m!5261959))

(declare-fun m!5261961 () Bool)

(assert (=> b!4516935 m!5261961))

(assert (=> b!4516651 d!1390622))

(assert (=> b!4516651 d!1390504))

(declare-fun d!1390624 () Bool)

(declare-fun c!770666 () Bool)

(assert (=> d!1390624 (= c!770666 ((_ is Nil!50637) (keys!17586 lt!1694548)))))

(declare-fun e!2814086 () (InoxSet K!12030))

(assert (=> d!1390624 (= (content!8347 (keys!17586 lt!1694548)) e!2814086)))

(declare-fun b!4516936 () Bool)

(assert (=> b!4516936 (= e!2814086 ((as const (Array K!12030 Bool)) false))))

(declare-fun b!4516937 () Bool)

(assert (=> b!4516937 (= e!2814086 ((_ map or) (store ((as const (Array K!12030 Bool)) false) (h!56488 (keys!17586 lt!1694548)) true) (content!8347 (t!357723 (keys!17586 lt!1694548)))))))

(assert (= (and d!1390624 c!770666) b!4516936))

(assert (= (and d!1390624 (not c!770666)) b!4516937))

(declare-fun m!5261963 () Bool)

(assert (=> b!4516937 m!5261963))

(declare-fun m!5261965 () Bool)

(assert (=> b!4516937 m!5261965))

(assert (=> b!4516651 d!1390624))

(declare-fun bs!852059 () Bool)

(declare-fun b!4516939 () Bool)

(assert (= bs!852059 (and b!4516939 b!4516801)))

(declare-fun lambda!171896 () Int)

(assert (=> bs!852059 (= (= (toList!4320 lt!1694548) (toList!4320 (extractMap!1212 (t!357721 (toList!4319 lm!1477))))) (= lambda!171896 lambda!171861))))

(declare-fun bs!852060 () Bool)

(assert (= bs!852060 (and b!4516939 b!4516877)))

(assert (=> bs!852060 (= (= (toList!4320 lt!1694548) (t!357720 (toList!4320 (extractMap!1212 (t!357721 (toList!4319 lm!1477)))))) (= lambda!171896 lambda!171892))))

(declare-fun bs!852061 () Bool)

(assert (= bs!852061 (and b!4516939 b!4516724)))

(assert (=> bs!852061 (= (= (toList!4320 lt!1694548) (toList!4320 lt!1694159)) (= lambda!171896 lambda!171852))))

(declare-fun bs!852062 () Bool)

(assert (= bs!852062 (and b!4516939 b!4516881)))

(assert (=> bs!852062 (= (= (toList!4320 lt!1694548) (toList!4320 (extractMap!1212 (t!357721 (toList!4319 lm!1477))))) (= lambda!171896 lambda!171894))))

(declare-fun bs!852063 () Bool)

(assert (= bs!852063 (and b!4516939 b!4516762)))

(assert (=> bs!852063 (= (= (toList!4320 lt!1694548) (toList!4320 lt!1694148)) (= lambda!171896 lambda!171859))))

(declare-fun bs!852064 () Bool)

(assert (= bs!852064 (and b!4516939 b!4516878)))

(assert (=> bs!852064 (= (= (toList!4320 lt!1694548) (Cons!50634 (h!56483 (toList!4320 (extractMap!1212 (t!357721 (toList!4319 lm!1477))))) (t!357720 (toList!4320 (extractMap!1212 (t!357721 (toList!4319 lm!1477))))))) (= lambda!171896 lambda!171893))))

(assert (=> b!4516939 true))

(declare-fun bs!852065 () Bool)

(declare-fun b!4516940 () Bool)

(assert (= bs!852065 (and b!4516940 b!4516725)))

(declare-fun lambda!171897 () Int)

(assert (=> bs!852065 (= lambda!171897 lambda!171853)))

(declare-fun bs!852066 () Bool)

(assert (= bs!852066 (and b!4516940 b!4516763)))

(assert (=> bs!852066 (= lambda!171897 lambda!171860)))

(declare-fun bs!852067 () Bool)

(assert (= bs!852067 (and b!4516940 b!4516802)))

(assert (=> bs!852067 (= lambda!171897 lambda!171862)))

(declare-fun bs!852068 () Bool)

(assert (= bs!852068 (and b!4516940 b!4516882)))

(assert (=> bs!852068 (= lambda!171897 lambda!171895)))

(declare-fun d!1390626 () Bool)

(declare-fun e!2814087 () Bool)

(assert (=> d!1390626 e!2814087))

(declare-fun res!1879580 () Bool)

(assert (=> d!1390626 (=> (not res!1879580) (not e!2814087))))

(declare-fun lt!1694738 () List!50761)

(assert (=> d!1390626 (= res!1879580 (noDuplicate!743 lt!1694738))))

(assert (=> d!1390626 (= lt!1694738 (getKeysList!461 (toList!4320 lt!1694548)))))

(assert (=> d!1390626 (= (keys!17586 lt!1694548) lt!1694738)))

(declare-fun b!4516938 () Bool)

(declare-fun res!1879582 () Bool)

(assert (=> b!4516938 (=> (not res!1879582) (not e!2814087))))

(assert (=> b!4516938 (= res!1879582 (= (length!342 lt!1694738) (length!343 (toList!4320 lt!1694548))))))

(declare-fun res!1879581 () Bool)

(assert (=> b!4516939 (=> (not res!1879581) (not e!2814087))))

(assert (=> b!4516939 (= res!1879581 (forall!10254 lt!1694738 lambda!171896))))

(assert (=> b!4516940 (= e!2814087 (= (content!8347 lt!1694738) (content!8347 (map!11132 (toList!4320 lt!1694548) lambda!171897))))))

(assert (= (and d!1390626 res!1879580) b!4516938))

(assert (= (and b!4516938 res!1879582) b!4516939))

(assert (= (and b!4516939 res!1879581) b!4516940))

(declare-fun m!5261967 () Bool)

(assert (=> d!1390626 m!5261967))

(declare-fun m!5261969 () Bool)

(assert (=> d!1390626 m!5261969))

(declare-fun m!5261971 () Bool)

(assert (=> b!4516938 m!5261971))

(declare-fun m!5261973 () Bool)

(assert (=> b!4516938 m!5261973))

(declare-fun m!5261975 () Bool)

(assert (=> b!4516939 m!5261975))

(declare-fun m!5261977 () Bool)

(assert (=> b!4516940 m!5261977))

(declare-fun m!5261979 () Bool)

(assert (=> b!4516940 m!5261979))

(assert (=> b!4516940 m!5261979))

(declare-fun m!5261981 () Bool)

(assert (=> b!4516940 m!5261981))

(assert (=> b!4516651 d!1390626))

(assert (=> b!4516473 d!1390476))

(declare-fun d!1390628 () Bool)

(declare-fun c!770667 () Bool)

(assert (=> d!1390628 (= c!770667 ((_ is Nil!50634) (toList!4320 lt!1694172)))))

(declare-fun e!2814088 () (InoxSet tuple2!51058))

(assert (=> d!1390628 (= (content!8346 (toList!4320 lt!1694172)) e!2814088)))

(declare-fun b!4516941 () Bool)

(assert (=> b!4516941 (= e!2814088 ((as const (Array tuple2!51058 Bool)) false))))

(declare-fun b!4516942 () Bool)

(assert (=> b!4516942 (= e!2814088 ((_ map or) (store ((as const (Array tuple2!51058 Bool)) false) (h!56483 (toList!4320 lt!1694172)) true) (content!8346 (t!357720 (toList!4320 lt!1694172)))))))

(assert (= (and d!1390628 c!770667) b!4516941))

(assert (= (and d!1390628 (not c!770667)) b!4516942))

(declare-fun m!5261983 () Bool)

(assert (=> b!4516942 m!5261983))

(declare-fun m!5261985 () Bool)

(assert (=> b!4516942 m!5261985))

(assert (=> d!1390456 d!1390628))

(declare-fun d!1390630 () Bool)

(declare-fun c!770668 () Bool)

(assert (=> d!1390630 (= c!770668 ((_ is Nil!50634) (toList!4320 lt!1694147)))))

(declare-fun e!2814089 () (InoxSet tuple2!51058))

(assert (=> d!1390630 (= (content!8346 (toList!4320 lt!1694147)) e!2814089)))

(declare-fun b!4516943 () Bool)

(assert (=> b!4516943 (= e!2814089 ((as const (Array tuple2!51058 Bool)) false))))

(declare-fun b!4516944 () Bool)

(assert (=> b!4516944 (= e!2814089 ((_ map or) (store ((as const (Array tuple2!51058 Bool)) false) (h!56483 (toList!4320 lt!1694147)) true) (content!8346 (t!357720 (toList!4320 lt!1694147)))))))

(assert (= (and d!1390630 c!770668) b!4516943))

(assert (= (and d!1390630 (not c!770668)) b!4516944))

(declare-fun m!5261987 () Bool)

(assert (=> b!4516944 m!5261987))

(declare-fun m!5261989 () Bool)

(assert (=> b!4516944 m!5261989))

(assert (=> d!1390456 d!1390630))

(declare-fun d!1390632 () Bool)

(assert (=> d!1390632 (= (head!9406 (toList!4319 lm!1477)) (h!56484 (toList!4319 lm!1477)))))

(assert (=> d!1390464 d!1390632))

(declare-fun d!1390634 () Bool)

(declare-fun res!1879583 () Bool)

(declare-fun e!2814090 () Bool)

(assert (=> d!1390634 (=> res!1879583 e!2814090)))

(assert (=> d!1390634 (= res!1879583 (and ((_ is Cons!50634) lt!1694322) (= (_1!28823 (h!56483 lt!1694322)) key!3287)))))

(assert (=> d!1390634 (= (containsKey!1768 lt!1694322 key!3287) e!2814090)))

(declare-fun b!4516945 () Bool)

(declare-fun e!2814091 () Bool)

(assert (=> b!4516945 (= e!2814090 e!2814091)))

(declare-fun res!1879584 () Bool)

(assert (=> b!4516945 (=> (not res!1879584) (not e!2814091))))

(assert (=> b!4516945 (= res!1879584 ((_ is Cons!50634) lt!1694322))))

(declare-fun b!4516946 () Bool)

(assert (=> b!4516946 (= e!2814091 (containsKey!1768 (t!357720 lt!1694322) key!3287))))

(assert (= (and d!1390634 (not res!1879583)) b!4516945))

(assert (= (and b!4516945 res!1879584) b!4516946))

(declare-fun m!5261991 () Bool)

(assert (=> b!4516946 m!5261991))

(assert (=> d!1390328 d!1390634))

(declare-fun d!1390636 () Bool)

(declare-fun res!1879585 () Bool)

(declare-fun e!2814092 () Bool)

(assert (=> d!1390636 (=> res!1879585 e!2814092)))

(assert (=> d!1390636 (= res!1879585 (not ((_ is Cons!50634) lt!1694146)))))

(assert (=> d!1390636 (= (noDuplicateKeys!1156 lt!1694146) e!2814092)))

(declare-fun b!4516947 () Bool)

(declare-fun e!2814093 () Bool)

(assert (=> b!4516947 (= e!2814092 e!2814093)))

(declare-fun res!1879586 () Bool)

(assert (=> b!4516947 (=> (not res!1879586) (not e!2814093))))

(assert (=> b!4516947 (= res!1879586 (not (containsKey!1768 (t!357720 lt!1694146) (_1!28823 (h!56483 lt!1694146)))))))

(declare-fun b!4516948 () Bool)

(assert (=> b!4516948 (= e!2814093 (noDuplicateKeys!1156 (t!357720 lt!1694146)))))

(assert (= (and d!1390636 (not res!1879585)) b!4516947))

(assert (= (and b!4516947 res!1879586) b!4516948))

(declare-fun m!5261993 () Bool)

(assert (=> b!4516947 m!5261993))

(declare-fun m!5261995 () Bool)

(assert (=> b!4516948 m!5261995))

(assert (=> d!1390328 d!1390636))

(assert (=> b!4516422 d!1390502))

(assert (=> b!4516422 d!1390504))

(declare-fun d!1390638 () Bool)

(declare-fun res!1879587 () Bool)

(declare-fun e!2814094 () Bool)

(assert (=> d!1390638 (=> res!1879587 e!2814094)))

(assert (=> d!1390638 (= res!1879587 ((_ is Nil!50634) (toList!4320 lt!1694172)))))

(assert (=> d!1390638 (= (forall!10253 (toList!4320 lt!1694172) lambda!171831) e!2814094)))

(declare-fun b!4516949 () Bool)

(declare-fun e!2814095 () Bool)

(assert (=> b!4516949 (= e!2814094 e!2814095)))

(declare-fun res!1879588 () Bool)

(assert (=> b!4516949 (=> (not res!1879588) (not e!2814095))))

(assert (=> b!4516949 (= res!1879588 (dynLambda!21156 lambda!171831 (h!56483 (toList!4320 lt!1694172))))))

(declare-fun b!4516950 () Bool)

(assert (=> b!4516950 (= e!2814095 (forall!10253 (t!357720 (toList!4320 lt!1694172)) lambda!171831))))

(assert (= (and d!1390638 (not res!1879587)) b!4516949))

(assert (= (and b!4516949 res!1879588) b!4516950))

(declare-fun b_lambda!154413 () Bool)

(assert (=> (not b_lambda!154413) (not b!4516949)))

(declare-fun m!5261997 () Bool)

(assert (=> b!4516949 m!5261997))

(declare-fun m!5261999 () Bool)

(assert (=> b!4516950 m!5261999))

(assert (=> b!4516602 d!1390638))

(assert (=> b!4516357 d!1390538))

(assert (=> b!4516357 d!1390540))

(declare-fun b!4516953 () Bool)

(declare-fun e!2814100 () Unit!94398)

(declare-fun lt!1694743 () Unit!94398)

(assert (=> b!4516953 (= e!2814100 lt!1694743)))

(declare-fun lt!1694744 () Unit!94398)

(assert (=> b!4516953 (= lt!1694744 (lemmaContainsKeyImpliesGetValueByKeyDefined!988 (toList!4320 (extractMap!1212 (toList!4319 lm!1477))) key!3287))))

(assert (=> b!4516953 (isDefined!8391 (getValueByKey!1084 (toList!4320 (extractMap!1212 (toList!4319 lm!1477))) key!3287))))

(declare-fun lt!1694742 () Unit!94398)

(assert (=> b!4516953 (= lt!1694742 lt!1694744)))

(assert (=> b!4516953 (= lt!1694743 (lemmaInListThenGetKeysListContains!456 (toList!4320 (extractMap!1212 (toList!4319 lm!1477))) key!3287))))

(declare-fun call!314608 () Bool)

(assert (=> b!4516953 call!314608))

(declare-fun b!4516954 () Bool)

(declare-fun e!2814103 () Unit!94398)

(assert (=> b!4516954 (= e!2814100 e!2814103)))

(declare-fun c!770671 () Bool)

(assert (=> b!4516954 (= c!770671 call!314608)))

(declare-fun b!4516955 () Bool)

(declare-fun Unit!94530 () Unit!94398)

(assert (=> b!4516955 (= e!2814103 Unit!94530)))

(declare-fun bm!314603 () Bool)

(declare-fun e!2814098 () List!50761)

(assert (=> bm!314603 (= call!314608 (contains!13354 e!2814098 key!3287))))

(declare-fun c!770670 () Bool)

(declare-fun c!770669 () Bool)

(assert (=> bm!314603 (= c!770670 c!770669)))

(declare-fun b!4516956 () Bool)

(assert (=> b!4516956 (= e!2814098 (keys!17586 (extractMap!1212 (toList!4319 lm!1477))))))

(declare-fun b!4516957 () Bool)

(declare-fun e!2814102 () Bool)

(declare-fun e!2814101 () Bool)

(assert (=> b!4516957 (= e!2814102 e!2814101)))

(declare-fun res!1879592 () Bool)

(assert (=> b!4516957 (=> (not res!1879592) (not e!2814101))))

(assert (=> b!4516957 (= res!1879592 (isDefined!8391 (getValueByKey!1084 (toList!4320 (extractMap!1212 (toList!4319 lm!1477))) key!3287)))))

(declare-fun d!1390642 () Bool)

(assert (=> d!1390642 e!2814102))

(declare-fun res!1879593 () Bool)

(assert (=> d!1390642 (=> res!1879593 e!2814102)))

(declare-fun e!2814099 () Bool)

(assert (=> d!1390642 (= res!1879593 e!2814099)))

(declare-fun res!1879591 () Bool)

(assert (=> d!1390642 (=> (not res!1879591) (not e!2814099))))

(declare-fun lt!1694746 () Bool)

(assert (=> d!1390642 (= res!1879591 (not lt!1694746))))

(declare-fun lt!1694739 () Bool)

(assert (=> d!1390642 (= lt!1694746 lt!1694739)))

(declare-fun lt!1694740 () Unit!94398)

(assert (=> d!1390642 (= lt!1694740 e!2814100)))

(assert (=> d!1390642 (= c!770669 lt!1694739)))

(assert (=> d!1390642 (= lt!1694739 (containsKey!1771 (toList!4320 (extractMap!1212 (toList!4319 lm!1477))) key!3287))))

(assert (=> d!1390642 (= (contains!13353 (extractMap!1212 (toList!4319 lm!1477)) key!3287) lt!1694746)))

(declare-fun b!4516958 () Bool)

(assert (=> b!4516958 (= e!2814099 (not (contains!13354 (keys!17586 (extractMap!1212 (toList!4319 lm!1477))) key!3287)))))

(declare-fun b!4516959 () Bool)

(assert (=> b!4516959 (= e!2814101 (contains!13354 (keys!17586 (extractMap!1212 (toList!4319 lm!1477))) key!3287))))

(declare-fun b!4516960 () Bool)

(assert (=> b!4516960 (= e!2814098 (getKeysList!461 (toList!4320 (extractMap!1212 (toList!4319 lm!1477)))))))

(declare-fun b!4516961 () Bool)

(assert (=> b!4516961 false))

(declare-fun lt!1694741 () Unit!94398)

(declare-fun lt!1694745 () Unit!94398)

(assert (=> b!4516961 (= lt!1694741 lt!1694745)))

(assert (=> b!4516961 (containsKey!1771 (toList!4320 (extractMap!1212 (toList!4319 lm!1477))) key!3287)))

(assert (=> b!4516961 (= lt!1694745 (lemmaInGetKeysListThenContainsKey!459 (toList!4320 (extractMap!1212 (toList!4319 lm!1477))) key!3287))))

(declare-fun Unit!94531 () Unit!94398)

(assert (=> b!4516961 (= e!2814103 Unit!94531)))

(assert (= (and d!1390642 c!770669) b!4516953))

(assert (= (and d!1390642 (not c!770669)) b!4516954))

(assert (= (and b!4516954 c!770671) b!4516961))

(assert (= (and b!4516954 (not c!770671)) b!4516955))

(assert (= (or b!4516953 b!4516954) bm!314603))

(assert (= (and bm!314603 c!770670) b!4516960))

(assert (= (and bm!314603 (not c!770670)) b!4516956))

(assert (= (and d!1390642 res!1879591) b!4516958))

(assert (= (and d!1390642 (not res!1879593)) b!4516957))

(assert (= (and b!4516957 res!1879592) b!4516959))

(declare-fun m!5262005 () Bool)

(assert (=> b!4516957 m!5262005))

(assert (=> b!4516957 m!5262005))

(declare-fun m!5262007 () Bool)

(assert (=> b!4516957 m!5262007))

(declare-fun m!5262009 () Bool)

(assert (=> b!4516953 m!5262009))

(assert (=> b!4516953 m!5262005))

(assert (=> b!4516953 m!5262005))

(assert (=> b!4516953 m!5262007))

(declare-fun m!5262011 () Bool)

(assert (=> b!4516953 m!5262011))

(assert (=> b!4516958 m!5260791))

(declare-fun m!5262013 () Bool)

(assert (=> b!4516958 m!5262013))

(assert (=> b!4516958 m!5262013))

(declare-fun m!5262015 () Bool)

(assert (=> b!4516958 m!5262015))

(declare-fun m!5262017 () Bool)

(assert (=> b!4516961 m!5262017))

(declare-fun m!5262019 () Bool)

(assert (=> b!4516961 m!5262019))

(declare-fun m!5262021 () Bool)

(assert (=> b!4516960 m!5262021))

(assert (=> b!4516956 m!5260791))

(assert (=> b!4516956 m!5262013))

(assert (=> d!1390642 m!5262017))

(assert (=> b!4516959 m!5260791))

(assert (=> b!4516959 m!5262013))

(assert (=> b!4516959 m!5262013))

(assert (=> b!4516959 m!5262015))

(declare-fun m!5262023 () Bool)

(assert (=> bm!314603 m!5262023))

(assert (=> d!1390270 d!1390642))

(assert (=> d!1390270 d!1390294))

(declare-fun d!1390646 () Bool)

(assert (=> d!1390646 (not (contains!13353 (extractMap!1212 (toList!4319 lm!1477)) key!3287))))

(assert (=> d!1390646 true))

(declare-fun _$26!365 () Unit!94398)

(assert (=> d!1390646 (= (choose!29446 lm!1477 key!3287 hashF!1107) _$26!365)))

(declare-fun bs!852094 () Bool)

(assert (= bs!852094 d!1390646))

(assert (=> bs!852094 m!5260791))

(assert (=> bs!852094 m!5260791))

(assert (=> bs!852094 m!5260809))

(assert (=> d!1390270 d!1390646))

(declare-fun d!1390650 () Bool)

(declare-fun res!1879601 () Bool)

(declare-fun e!2814111 () Bool)

(assert (=> d!1390650 (=> res!1879601 e!2814111)))

(assert (=> d!1390650 (= res!1879601 ((_ is Nil!50635) (toList!4319 lm!1477)))))

(assert (=> d!1390650 (= (forall!10251 (toList!4319 lm!1477) lambda!171720) e!2814111)))

(declare-fun b!4516971 () Bool)

(declare-fun e!2814112 () Bool)

(assert (=> b!4516971 (= e!2814111 e!2814112)))

(declare-fun res!1879602 () Bool)

(assert (=> b!4516971 (=> (not res!1879602) (not e!2814112))))

(assert (=> b!4516971 (= res!1879602 (dynLambda!21155 lambda!171720 (h!56484 (toList!4319 lm!1477))))))

(declare-fun b!4516972 () Bool)

(assert (=> b!4516972 (= e!2814112 (forall!10251 (t!357721 (toList!4319 lm!1477)) lambda!171720))))

(assert (= (and d!1390650 (not res!1879601)) b!4516971))

(assert (= (and b!4516971 res!1879602) b!4516972))

(declare-fun b_lambda!154417 () Bool)

(assert (=> (not b_lambda!154417) (not b!4516971)))

(declare-fun m!5262057 () Bool)

(assert (=> b!4516971 m!5262057))

(declare-fun m!5262059 () Bool)

(assert (=> b!4516972 m!5262059))

(assert (=> d!1390270 d!1390650))

(declare-fun d!1390652 () Bool)

(declare-fun res!1879614 () Bool)

(declare-fun e!2814128 () Bool)

(assert (=> d!1390652 (=> res!1879614 e!2814128)))

(assert (=> d!1390652 (= res!1879614 (or ((_ is Nil!50635) (toList!4319 lm!1477)) ((_ is Nil!50635) (t!357721 (toList!4319 lm!1477)))))))

(assert (=> d!1390652 (= (isStrictlySorted!427 (toList!4319 lm!1477)) e!2814128)))

(declare-fun b!4516992 () Bool)

(declare-fun e!2814129 () Bool)

(assert (=> b!4516992 (= e!2814128 e!2814129)))

(declare-fun res!1879615 () Bool)

(assert (=> b!4516992 (=> (not res!1879615) (not e!2814129))))

(assert (=> b!4516992 (= res!1879615 (bvslt (_1!28824 (h!56484 (toList!4319 lm!1477))) (_1!28824 (h!56484 (t!357721 (toList!4319 lm!1477))))))))

(declare-fun b!4516993 () Bool)

(assert (=> b!4516993 (= e!2814129 (isStrictlySorted!427 (t!357721 (toList!4319 lm!1477))))))

(assert (= (and d!1390652 (not res!1879614)) b!4516992))

(assert (= (and b!4516992 res!1879615) b!4516993))

(declare-fun m!5262077 () Bool)

(assert (=> b!4516993 m!5262077))

(assert (=> d!1390282 d!1390652))

(assert (=> d!1390474 d!1390472))

(declare-fun d!1390668 () Bool)

(assert (=> d!1390668 (eq!613 (addToMapMapFromBucket!683 (_2!28824 lt!1694150) lt!1694172) (addToMapMapFromBucket!683 (_2!28824 lt!1694150) lt!1694147))))

(assert (=> d!1390668 true))

(declare-fun _$16!206 () Unit!94398)

(assert (=> d!1390668 (= (choose!29457 lt!1694172 lt!1694147 (_2!28824 lt!1694150)) _$16!206)))

(declare-fun bs!852096 () Bool)

(assert (= bs!852096 d!1390668))

(assert (=> bs!852096 m!5260777))

(assert (=> bs!852096 m!5260747))

(assert (=> bs!852096 m!5260777))

(assert (=> bs!852096 m!5260747))

(assert (=> bs!852096 m!5261541))

(assert (=> d!1390474 d!1390668))

(declare-fun d!1390676 () Bool)

(assert (=> d!1390676 (= (eq!613 (addToMapMapFromBucket!683 (_2!28824 lt!1694150) lt!1694172) (addToMapMapFromBucket!683 (_2!28824 lt!1694150) lt!1694147)) (= (content!8346 (toList!4320 (addToMapMapFromBucket!683 (_2!28824 lt!1694150) lt!1694172))) (content!8346 (toList!4320 (addToMapMapFromBucket!683 (_2!28824 lt!1694150) lt!1694147)))))))

(declare-fun bs!852097 () Bool)

(assert (= bs!852097 d!1390676))

(declare-fun m!5262101 () Bool)

(assert (=> bs!852097 m!5262101))

(declare-fun m!5262103 () Bool)

(assert (=> bs!852097 m!5262103))

(assert (=> d!1390474 d!1390676))

(assert (=> d!1390474 d!1390358))

(assert (=> d!1390474 d!1390428))

(declare-fun d!1390678 () Bool)

(declare-fun res!1879619 () Bool)

(declare-fun e!2814141 () Bool)

(assert (=> d!1390678 (=> res!1879619 e!2814141)))

(assert (=> d!1390678 (= res!1879619 ((_ is Nil!50634) newBucket!178))))

(assert (=> d!1390678 (= (forall!10253 newBucket!178 lambda!171772) e!2814141)))

(declare-fun b!4517013 () Bool)

(declare-fun e!2814142 () Bool)

(assert (=> b!4517013 (= e!2814141 e!2814142)))

(declare-fun res!1879620 () Bool)

(assert (=> b!4517013 (=> (not res!1879620) (not e!2814142))))

(assert (=> b!4517013 (= res!1879620 (dynLambda!21156 lambda!171772 (h!56483 newBucket!178)))))

(declare-fun b!4517014 () Bool)

(assert (=> b!4517014 (= e!2814142 (forall!10253 (t!357720 newBucket!178) lambda!171772))))

(assert (= (and d!1390678 (not res!1879619)) b!4517013))

(assert (= (and b!4517013 res!1879620) b!4517014))

(declare-fun b_lambda!154419 () Bool)

(assert (=> (not b_lambda!154419) (not b!4517013)))

(declare-fun m!5262105 () Bool)

(assert (=> b!4517013 m!5262105))

(declare-fun m!5262107 () Bool)

(assert (=> b!4517014 m!5262107))

(assert (=> d!1390326 d!1390678))

(declare-fun d!1390680 () Bool)

(declare-fun res!1879625 () Bool)

(declare-fun e!2814147 () Bool)

(assert (=> d!1390680 (=> res!1879625 e!2814147)))

(assert (=> d!1390680 (= res!1879625 (and ((_ is Cons!50635) (toList!4319 lt!1694164)) (= (_1!28824 (h!56484 (toList!4319 lt!1694164))) hash!344)))))

(assert (=> d!1390680 (= (containsKey!1770 (toList!4319 lt!1694164) hash!344) e!2814147)))

(declare-fun b!4517019 () Bool)

(declare-fun e!2814148 () Bool)

(assert (=> b!4517019 (= e!2814147 e!2814148)))

(declare-fun res!1879626 () Bool)

(assert (=> b!4517019 (=> (not res!1879626) (not e!2814148))))

(assert (=> b!4517019 (= res!1879626 (and (or (not ((_ is Cons!50635) (toList!4319 lt!1694164))) (bvsle (_1!28824 (h!56484 (toList!4319 lt!1694164))) hash!344)) ((_ is Cons!50635) (toList!4319 lt!1694164)) (bvslt (_1!28824 (h!56484 (toList!4319 lt!1694164))) hash!344)))))

(declare-fun b!4517020 () Bool)

(assert (=> b!4517020 (= e!2814148 (containsKey!1770 (t!357721 (toList!4319 lt!1694164)) hash!344))))

(assert (= (and d!1390680 (not res!1879625)) b!4517019))

(assert (= (and b!4517019 res!1879626) b!4517020))

(declare-fun m!5262109 () Bool)

(assert (=> b!4517020 m!5262109))

(assert (=> d!1390288 d!1390680))

(declare-fun b!4517024 () Bool)

(declare-fun e!2814150 () Option!11103)

(assert (=> b!4517024 (= e!2814150 None!11102)))

(declare-fun b!4517023 () Bool)

(assert (=> b!4517023 (= e!2814150 (getValueByKey!1083 (t!357721 (toList!4319 lm!1477)) hash!344))))

(declare-fun b!4517021 () Bool)

(declare-fun e!2814149 () Option!11103)

(assert (=> b!4517021 (= e!2814149 (Some!11102 (_2!28824 (h!56484 (toList!4319 lm!1477)))))))

(declare-fun b!4517022 () Bool)

(assert (=> b!4517022 (= e!2814149 e!2814150)))

(declare-fun c!770686 () Bool)

(assert (=> b!4517022 (= c!770686 (and ((_ is Cons!50635) (toList!4319 lm!1477)) (not (= (_1!28824 (h!56484 (toList!4319 lm!1477))) hash!344))))))

(declare-fun d!1390682 () Bool)

(declare-fun c!770685 () Bool)

(assert (=> d!1390682 (= c!770685 (and ((_ is Cons!50635) (toList!4319 lm!1477)) (= (_1!28824 (h!56484 (toList!4319 lm!1477))) hash!344)))))

(assert (=> d!1390682 (= (getValueByKey!1083 (toList!4319 lm!1477) hash!344) e!2814149)))

(assert (= (and d!1390682 c!770685) b!4517021))

(assert (= (and d!1390682 (not c!770685)) b!4517022))

(assert (= (and b!4517022 c!770686) b!4517023))

(assert (= (and b!4517022 (not c!770686)) b!4517024))

(declare-fun m!5262111 () Bool)

(assert (=> b!4517023 m!5262111))

(assert (=> b!4516467 d!1390682))

(declare-fun d!1390684 () Bool)

(declare-fun res!1879627 () Bool)

(declare-fun e!2814151 () Bool)

(assert (=> d!1390684 (=> res!1879627 e!2814151)))

(assert (=> d!1390684 (= res!1879627 ((_ is Nil!50634) (toList!4320 lt!1694147)))))

(assert (=> d!1390684 (= (forall!10253 (toList!4320 lt!1694147) lambda!171846) e!2814151)))

(declare-fun b!4517025 () Bool)

(declare-fun e!2814152 () Bool)

(assert (=> b!4517025 (= e!2814151 e!2814152)))

(declare-fun res!1879628 () Bool)

(assert (=> b!4517025 (=> (not res!1879628) (not e!2814152))))

(assert (=> b!4517025 (= res!1879628 (dynLambda!21156 lambda!171846 (h!56483 (toList!4320 lt!1694147))))))

(declare-fun b!4517026 () Bool)

(assert (=> b!4517026 (= e!2814152 (forall!10253 (t!357720 (toList!4320 lt!1694147)) lambda!171846))))

(assert (= (and d!1390684 (not res!1879627)) b!4517025))

(assert (= (and b!4517025 res!1879628) b!4517026))

(declare-fun b_lambda!154421 () Bool)

(assert (=> (not b_lambda!154421) (not b!4517025)))

(declare-fun m!5262113 () Bool)

(assert (=> b!4517025 m!5262113))

(declare-fun m!5262115 () Bool)

(assert (=> b!4517026 m!5262115))

(assert (=> b!4516660 d!1390684))

(declare-fun d!1390686 () Bool)

(assert (=> d!1390686 (= (invariantList!1013 (toList!4320 lt!1694256)) (noDuplicatedKeys!258 (toList!4320 lt!1694256)))))

(declare-fun bs!852098 () Bool)

(assert (= bs!852098 d!1390686))

(declare-fun m!5262117 () Bool)

(assert (=> bs!852098 m!5262117))

(assert (=> d!1390294 d!1390686))

(declare-fun d!1390688 () Bool)

(declare-fun res!1879629 () Bool)

(declare-fun e!2814153 () Bool)

(assert (=> d!1390688 (=> res!1879629 e!2814153)))

(assert (=> d!1390688 (= res!1879629 ((_ is Nil!50635) (toList!4319 lm!1477)))))

(assert (=> d!1390688 (= (forall!10251 (toList!4319 lm!1477) lambda!171751) e!2814153)))

(declare-fun b!4517027 () Bool)

(declare-fun e!2814154 () Bool)

(assert (=> b!4517027 (= e!2814153 e!2814154)))

(declare-fun res!1879630 () Bool)

(assert (=> b!4517027 (=> (not res!1879630) (not e!2814154))))

(assert (=> b!4517027 (= res!1879630 (dynLambda!21155 lambda!171751 (h!56484 (toList!4319 lm!1477))))))

(declare-fun b!4517028 () Bool)

(assert (=> b!4517028 (= e!2814154 (forall!10251 (t!357721 (toList!4319 lm!1477)) lambda!171751))))

(assert (= (and d!1390688 (not res!1879629)) b!4517027))

(assert (= (and b!4517027 res!1879630) b!4517028))

(declare-fun b_lambda!154423 () Bool)

(assert (=> (not b_lambda!154423) (not b!4517027)))

(declare-fun m!5262119 () Bool)

(assert (=> b!4517027 m!5262119))

(declare-fun m!5262121 () Bool)

(assert (=> b!4517028 m!5262121))

(assert (=> d!1390294 d!1390688))

(declare-fun d!1390690 () Bool)

(declare-fun c!770687 () Bool)

(assert (=> d!1390690 (= c!770687 ((_ is Nil!50634) (toList!4320 lt!1694149)))))

(declare-fun e!2814155 () (InoxSet tuple2!51058))

(assert (=> d!1390690 (= (content!8346 (toList!4320 lt!1694149)) e!2814155)))

(declare-fun b!4517029 () Bool)

(assert (=> b!4517029 (= e!2814155 ((as const (Array tuple2!51058 Bool)) false))))

(declare-fun b!4517030 () Bool)

(assert (=> b!4517030 (= e!2814155 ((_ map or) (store ((as const (Array tuple2!51058 Bool)) false) (h!56483 (toList!4320 lt!1694149)) true) (content!8346 (t!357720 (toList!4320 lt!1694149)))))))

(assert (= (and d!1390690 c!770687) b!4517029))

(assert (= (and d!1390690 (not c!770687)) b!4517030))

(declare-fun m!5262123 () Bool)

(assert (=> b!4517030 m!5262123))

(declare-fun m!5262125 () Bool)

(assert (=> b!4517030 m!5262125))

(assert (=> d!1390468 d!1390690))

(declare-fun d!1390692 () Bool)

(declare-fun c!770688 () Bool)

(assert (=> d!1390692 (= c!770688 ((_ is Nil!50634) (toList!4320 lt!1694161)))))

(declare-fun e!2814156 () (InoxSet tuple2!51058))

(assert (=> d!1390692 (= (content!8346 (toList!4320 lt!1694161)) e!2814156)))

(declare-fun b!4517031 () Bool)

(assert (=> b!4517031 (= e!2814156 ((as const (Array tuple2!51058 Bool)) false))))

(declare-fun b!4517032 () Bool)

(assert (=> b!4517032 (= e!2814156 ((_ map or) (store ((as const (Array tuple2!51058 Bool)) false) (h!56483 (toList!4320 lt!1694161)) true) (content!8346 (t!357720 (toList!4320 lt!1694161)))))))

(assert (= (and d!1390692 c!770688) b!4517031))

(assert (= (and d!1390692 (not c!770688)) b!4517032))

(declare-fun m!5262127 () Bool)

(assert (=> b!4517032 m!5262127))

(declare-fun m!5262129 () Bool)

(assert (=> b!4517032 m!5262129))

(assert (=> d!1390468 d!1390692))

(declare-fun bs!852099 () Bool)

(declare-fun d!1390694 () Bool)

(assert (= bs!852099 (and d!1390694 b!4516808)))

(declare-fun lambda!171904 () Int)

(assert (=> bs!852099 (= (= lt!1694147 (extractMap!1212 (t!357721 (toList!4319 lt!1694158)))) (= lambda!171904 lambda!171864))))

(declare-fun bs!852100 () Bool)

(assert (= bs!852100 (and d!1390694 b!4516662)))

(assert (=> bs!852100 (= lambda!171904 lambda!171844)))

(declare-fun bs!852101 () Bool)

(assert (= bs!852101 (and d!1390694 b!4516807)))

(assert (=> bs!852101 (= (= lt!1694147 (extractMap!1212 (t!357721 (toList!4319 lt!1694158)))) (= lambda!171904 lambda!171863))))

(declare-fun bs!852102 () Bool)

(assert (= bs!852102 (and d!1390694 d!1390358)))

(assert (=> bs!852102 (= (= lt!1694147 lt!1694503) (= lambda!171904 lambda!171831))))

(declare-fun bs!852103 () Bool)

(assert (= bs!852103 (and d!1390694 d!1390568)))

(assert (=> bs!852103 (= (= lt!1694147 lt!1694656) (= lambda!171904 lambda!171871))))

(declare-fun bs!852104 () Bool)

(assert (= bs!852104 (and d!1390694 b!4516815)))

(assert (=> bs!852104 (= (= lt!1694147 (extractMap!1212 (t!357721 (toList!4319 lm!1477)))) (= lambda!171904 lambda!171869))))

(declare-fun bs!852105 () Bool)

(assert (= bs!852105 (and d!1390694 b!4516744)))

(assert (=> bs!852105 (= (= lt!1694147 lt!1694614) (= lambda!171904 lambda!171856))))

(declare-fun bs!852106 () Bool)

(assert (= bs!852106 (and d!1390694 b!4516663)))

(assert (=> bs!852106 (= (= lt!1694147 lt!1694574) (= lambda!171904 lambda!171846))))

(declare-fun bs!852107 () Bool)

(assert (= bs!852107 (and d!1390694 d!1390564)))

(assert (=> bs!852107 (= (= lt!1694147 lt!1694634) (= lambda!171904 lambda!171866))))

(declare-fun bs!852108 () Bool)

(assert (= bs!852108 (and d!1390694 d!1390472)))

(assert (=> bs!852108 (= (= lt!1694147 lt!1694564) (= lambda!171904 lambda!171847))))

(assert (=> bs!852104 (= (= lt!1694147 lt!1694666) (= lambda!171904 lambda!171870))))

(assert (=> bs!852105 (= (= lt!1694147 (extractMap!1212 (t!357721 (toList!4319 lt!1694164)))) (= lambda!171904 lambda!171855))))

(declare-fun bs!852109 () Bool)

(assert (= bs!852109 (and d!1390694 b!4516743)))

(assert (=> bs!852109 (= (= lt!1694147 (extractMap!1212 (t!357721 (toList!4319 lt!1694164)))) (= lambda!171904 lambda!171854))))

(assert (=> bs!852099 (= (= lt!1694147 lt!1694644) (= lambda!171904 lambda!171865))))

(declare-fun bs!852110 () Bool)

(assert (= bs!852110 (and d!1390694 b!4516604)))

(assert (=> bs!852110 (= (= lt!1694147 lt!1694513) (= lambda!171904 lambda!171830))))

(declare-fun bs!852111 () Bool)

(assert (= bs!852111 (and d!1390694 d!1390326)))

(assert (=> bs!852111 (not (= lambda!171904 lambda!171772))))

(declare-fun bs!852112 () Bool)

(assert (= bs!852112 (and d!1390694 d!1390526)))

(assert (=> bs!852112 (= (= lt!1694147 lt!1694604) (= lambda!171904 lambda!171857))))

(assert (=> bs!852110 (= (= lt!1694147 lt!1694172) (= lambda!171904 lambda!171829))))

(declare-fun bs!852113 () Bool)

(assert (= bs!852113 (and d!1390694 b!4516603)))

(assert (=> bs!852113 (= (= lt!1694147 lt!1694172) (= lambda!171904 lambda!171828))))

(declare-fun bs!852114 () Bool)

(assert (= bs!852114 (and d!1390694 b!4516814)))

(assert (=> bs!852114 (= (= lt!1694147 (extractMap!1212 (t!357721 (toList!4319 lm!1477)))) (= lambda!171904 lambda!171868))))

(assert (=> bs!852106 (= lambda!171904 lambda!171845)))

(assert (=> d!1390694 true))

(assert (=> d!1390694 (forall!10253 (toList!4320 lt!1694147) lambda!171904)))

(declare-fun lt!1694778 () Unit!94398)

(declare-fun choose!29465 (ListMap!3581) Unit!94398)

(assert (=> d!1390694 (= lt!1694778 (choose!29465 lt!1694147))))

(assert (=> d!1390694 (= (lemmaContainsAllItsOwnKeys!334 lt!1694147) lt!1694778)))

(declare-fun bs!852115 () Bool)

(assert (= bs!852115 d!1390694))

(declare-fun m!5262131 () Bool)

(assert (=> bs!852115 m!5262131))

(declare-fun m!5262133 () Bool)

(assert (=> bs!852115 m!5262133))

(assert (=> bm!314592 d!1390694))

(declare-fun d!1390696 () Bool)

(declare-fun res!1879631 () Bool)

(declare-fun e!2814157 () Bool)

(assert (=> d!1390696 (=> res!1879631 e!2814157)))

(assert (=> d!1390696 (= res!1879631 ((_ is Nil!50634) (_2!28824 lt!1694150)))))

(assert (=> d!1390696 (= (forall!10253 (_2!28824 lt!1694150) lambda!171831) e!2814157)))

(declare-fun b!4517033 () Bool)

(declare-fun e!2814158 () Bool)

(assert (=> b!4517033 (= e!2814157 e!2814158)))

(declare-fun res!1879632 () Bool)

(assert (=> b!4517033 (=> (not res!1879632) (not e!2814158))))

(assert (=> b!4517033 (= res!1879632 (dynLambda!21156 lambda!171831 (h!56483 (_2!28824 lt!1694150))))))

(declare-fun b!4517034 () Bool)

(assert (=> b!4517034 (= e!2814158 (forall!10253 (t!357720 (_2!28824 lt!1694150)) lambda!171831))))

(assert (= (and d!1390696 (not res!1879631)) b!4517033))

(assert (= (and b!4517033 res!1879632) b!4517034))

(declare-fun b_lambda!154425 () Bool)

(assert (=> (not b_lambda!154425) (not b!4517033)))

(declare-fun m!5262135 () Bool)

(assert (=> b!4517033 m!5262135))

(declare-fun m!5262137 () Bool)

(assert (=> b!4517034 m!5262137))

(assert (=> d!1390358 d!1390696))

(assert (=> d!1390358 d!1390428))

(declare-fun d!1390698 () Bool)

(declare-fun lt!1694779 () Bool)

(assert (=> d!1390698 (= lt!1694779 (select (content!8347 (keys!17586 (extractMap!1212 (t!357721 (toList!4319 lm!1477))))) key!3287))))

(declare-fun e!2814160 () Bool)

(assert (=> d!1390698 (= lt!1694779 e!2814160)))

(declare-fun res!1879633 () Bool)

(assert (=> d!1390698 (=> (not res!1879633) (not e!2814160))))

(assert (=> d!1390698 (= res!1879633 ((_ is Cons!50637) (keys!17586 (extractMap!1212 (t!357721 (toList!4319 lm!1477))))))))

(assert (=> d!1390698 (= (contains!13354 (keys!17586 (extractMap!1212 (t!357721 (toList!4319 lm!1477)))) key!3287) lt!1694779)))

(declare-fun b!4517035 () Bool)

(declare-fun e!2814159 () Bool)

(assert (=> b!4517035 (= e!2814160 e!2814159)))

(declare-fun res!1879634 () Bool)

(assert (=> b!4517035 (=> res!1879634 e!2814159)))

(assert (=> b!4517035 (= res!1879634 (= (h!56488 (keys!17586 (extractMap!1212 (t!357721 (toList!4319 lm!1477))))) key!3287))))

(declare-fun b!4517036 () Bool)

(assert (=> b!4517036 (= e!2814159 (contains!13354 (t!357723 (keys!17586 (extractMap!1212 (t!357721 (toList!4319 lm!1477))))) key!3287))))

(assert (= (and d!1390698 res!1879633) b!4517035))

(assert (= (and b!4517035 (not res!1879634)) b!4517036))

(assert (=> d!1390698 m!5260879))

(declare-fun m!5262139 () Bool)

(assert (=> d!1390698 m!5262139))

(declare-fun m!5262141 () Bool)

(assert (=> d!1390698 m!5262141))

(declare-fun m!5262143 () Bool)

(assert (=> b!4517036 m!5262143))

(assert (=> b!4516383 d!1390698))

(assert (=> b!4516383 d!1390558))

(declare-fun b!4517037 () Bool)

(declare-fun e!2814163 () Unit!94398)

(declare-fun lt!1694784 () Unit!94398)

(assert (=> b!4517037 (= e!2814163 lt!1694784)))

(declare-fun lt!1694785 () Unit!94398)

(assert (=> b!4517037 (= lt!1694785 (lemmaContainsKeyImpliesGetValueByKeyDefined!988 (toList!4320 lt!1694548) key!3287))))

(assert (=> b!4517037 (isDefined!8391 (getValueByKey!1084 (toList!4320 lt!1694548) key!3287))))

(declare-fun lt!1694783 () Unit!94398)

(assert (=> b!4517037 (= lt!1694783 lt!1694785)))

(assert (=> b!4517037 (= lt!1694784 (lemmaInListThenGetKeysListContains!456 (toList!4320 lt!1694548) key!3287))))

(declare-fun call!314613 () Bool)

(assert (=> b!4517037 call!314613))

(declare-fun b!4517038 () Bool)

(declare-fun e!2814166 () Unit!94398)

(assert (=> b!4517038 (= e!2814163 e!2814166)))

(declare-fun c!770691 () Bool)

(assert (=> b!4517038 (= c!770691 call!314613)))

(declare-fun b!4517039 () Bool)

(declare-fun Unit!94544 () Unit!94398)

(assert (=> b!4517039 (= e!2814166 Unit!94544)))

(declare-fun bm!314608 () Bool)

(declare-fun e!2814161 () List!50761)

(assert (=> bm!314608 (= call!314613 (contains!13354 e!2814161 key!3287))))

(declare-fun c!770690 () Bool)

(declare-fun c!770689 () Bool)

(assert (=> bm!314608 (= c!770690 c!770689)))

(declare-fun b!4517040 () Bool)

(assert (=> b!4517040 (= e!2814161 (keys!17586 lt!1694548))))

(declare-fun b!4517041 () Bool)

(declare-fun e!2814165 () Bool)

(declare-fun e!2814164 () Bool)

(assert (=> b!4517041 (= e!2814165 e!2814164)))

(declare-fun res!1879636 () Bool)

(assert (=> b!4517041 (=> (not res!1879636) (not e!2814164))))

(assert (=> b!4517041 (= res!1879636 (isDefined!8391 (getValueByKey!1084 (toList!4320 lt!1694548) key!3287)))))

(declare-fun d!1390700 () Bool)

(assert (=> d!1390700 e!2814165))

(declare-fun res!1879637 () Bool)

(assert (=> d!1390700 (=> res!1879637 e!2814165)))

(declare-fun e!2814162 () Bool)

(assert (=> d!1390700 (= res!1879637 e!2814162)))

(declare-fun res!1879635 () Bool)

(assert (=> d!1390700 (=> (not res!1879635) (not e!2814162))))

(declare-fun lt!1694787 () Bool)

(assert (=> d!1390700 (= res!1879635 (not lt!1694787))))

(declare-fun lt!1694780 () Bool)

(assert (=> d!1390700 (= lt!1694787 lt!1694780)))

(declare-fun lt!1694781 () Unit!94398)

(assert (=> d!1390700 (= lt!1694781 e!2814163)))

(assert (=> d!1390700 (= c!770689 lt!1694780)))

(assert (=> d!1390700 (= lt!1694780 (containsKey!1771 (toList!4320 lt!1694548) key!3287))))

(assert (=> d!1390700 (= (contains!13353 lt!1694548 key!3287) lt!1694787)))

(declare-fun b!4517042 () Bool)

(assert (=> b!4517042 (= e!2814162 (not (contains!13354 (keys!17586 lt!1694548) key!3287)))))

(declare-fun b!4517043 () Bool)

(assert (=> b!4517043 (= e!2814164 (contains!13354 (keys!17586 lt!1694548) key!3287))))

(declare-fun b!4517044 () Bool)

(assert (=> b!4517044 (= e!2814161 (getKeysList!461 (toList!4320 lt!1694548)))))

(declare-fun b!4517045 () Bool)

(assert (=> b!4517045 false))

(declare-fun lt!1694782 () Unit!94398)

(declare-fun lt!1694786 () Unit!94398)

(assert (=> b!4517045 (= lt!1694782 lt!1694786)))

(assert (=> b!4517045 (containsKey!1771 (toList!4320 lt!1694548) key!3287)))

(assert (=> b!4517045 (= lt!1694786 (lemmaInGetKeysListThenContainsKey!459 (toList!4320 lt!1694548) key!3287))))

(declare-fun Unit!94545 () Unit!94398)

(assert (=> b!4517045 (= e!2814166 Unit!94545)))

(assert (= (and d!1390700 c!770689) b!4517037))

(assert (= (and d!1390700 (not c!770689)) b!4517038))

(assert (= (and b!4517038 c!770691) b!4517045))

(assert (= (and b!4517038 (not c!770691)) b!4517039))

(assert (= (or b!4517037 b!4517038) bm!314608))

(assert (= (and bm!314608 c!770690) b!4517044))

(assert (= (and bm!314608 (not c!770690)) b!4517040))

(assert (= (and d!1390700 res!1879635) b!4517042))

(assert (= (and d!1390700 (not res!1879637)) b!4517041))

(assert (= (and b!4517041 res!1879636) b!4517043))

(declare-fun m!5262145 () Bool)

(assert (=> b!4517041 m!5262145))

(assert (=> b!4517041 m!5262145))

(declare-fun m!5262147 () Bool)

(assert (=> b!4517041 m!5262147))

(declare-fun m!5262149 () Bool)

(assert (=> b!4517037 m!5262149))

(assert (=> b!4517037 m!5262145))

(assert (=> b!4517037 m!5262145))

(assert (=> b!4517037 m!5262147))

(declare-fun m!5262151 () Bool)

(assert (=> b!4517037 m!5262151))

(assert (=> b!4517042 m!5261439))

(assert (=> b!4517042 m!5261439))

(declare-fun m!5262153 () Bool)

(assert (=> b!4517042 m!5262153))

(declare-fun m!5262155 () Bool)

(assert (=> b!4517045 m!5262155))

(declare-fun m!5262157 () Bool)

(assert (=> b!4517045 m!5262157))

(assert (=> b!4517044 m!5261969))

(assert (=> b!4517040 m!5261439))

(assert (=> d!1390700 m!5262155))

(assert (=> b!4517043 m!5261439))

(assert (=> b!4517043 m!5261439))

(assert (=> b!4517043 m!5262153))

(declare-fun m!5262159 () Bool)

(assert (=> bm!314608 m!5262159))

(assert (=> d!1390450 d!1390700))

(declare-fun b!4517174 () Bool)

(declare-fun e!2814235 () Unit!94398)

(declare-fun Unit!94546 () Unit!94398)

(assert (=> b!4517174 (= e!2814235 Unit!94546)))

(declare-fun lt!1694922 () Unit!94398)

(assert (=> b!4517174 (= lt!1694922 (lemmaInGetKeysListThenContainsKey!459 (t!357720 (toList!4320 lt!1694159)) (_1!28823 (h!56483 (toList!4320 lt!1694159)))))))

(declare-fun call!314652 () Bool)

(assert (=> b!4517174 call!314652))

(declare-fun lt!1694927 () Unit!94398)

(assert (=> b!4517174 (= lt!1694927 lt!1694922)))

(assert (=> b!4517174 false))

(declare-fun b!4517175 () Bool)

(declare-fun e!2814242 () Unit!94398)

(declare-fun Unit!94547 () Unit!94398)

(assert (=> b!4517175 (= e!2814242 Unit!94547)))

(declare-fun lt!1694916 () V!12276)

(declare-fun get!16580 (Option!11104) V!12276)

(assert (=> b!4517175 (= lt!1694916 (get!16580 (getValueByKey!1084 (toList!4320 lt!1694159) key!3287)))))

(declare-fun lt!1694926 () K!12030)

(assert (=> b!4517175 (= lt!1694926 key!3287)))

(declare-fun lt!1694915 () K!12030)

(assert (=> b!4517175 (= lt!1694915 key!3287)))

(declare-fun lt!1694921 () Unit!94398)

(declare-fun lemmaContainsTupleThenContainsKey!59 (List!50758 K!12030 V!12276) Unit!94398)

(assert (=> b!4517175 (= lt!1694921 (lemmaContainsTupleThenContainsKey!59 (t!357720 (toList!4320 lt!1694159)) lt!1694926 (get!16580 (getValueByKey!1084 (toList!4320 lt!1694159) key!3287))))))

(declare-fun call!314651 () Bool)

(assert (=> b!4517175 call!314651))

(declare-fun lt!1694924 () Unit!94398)

(assert (=> b!4517175 (= lt!1694924 lt!1694921)))

(assert (=> b!4517175 false))

(declare-fun bm!314642 () Bool)

(declare-fun call!314648 () (InoxSet tuple2!51058))

(assert (=> bm!314642 (= call!314648 (content!8346 (t!357720 (toList!4320 lt!1694159))))))

(declare-fun b!4517176 () Bool)

(declare-fun Unit!94548 () Unit!94398)

(assert (=> b!4517176 (= e!2814242 Unit!94548)))

(declare-fun b!4517177 () Bool)

(declare-fun e!2814241 () Bool)

(declare-fun call!314650 () (InoxSet tuple2!51058))

(declare-fun call!314647 () (InoxSet tuple2!51058))

(assert (=> b!4517177 (= e!2814241 (= call!314650 call!314647))))

(declare-fun bm!314643 () Bool)

(assert (=> bm!314643 (= call!314647 (content!8346 (toList!4320 lt!1694159)))))

(declare-fun bm!314644 () Bool)

(declare-fun call!314649 () (InoxSet tuple2!51058))

(assert (=> bm!314644 (= call!314649 (content!8346 (toList!4320 lt!1694159)))))

(declare-fun b!4517178 () Bool)

(assert (=> b!4517178 (= call!314648 call!314649)))

(declare-fun e!2814239 () Unit!94398)

(declare-fun Unit!94549 () Unit!94398)

(assert (=> b!4517178 (= e!2814239 Unit!94549)))

(declare-fun bm!314645 () Bool)

(declare-fun lt!1694913 () List!50758)

(assert (=> bm!314645 (= call!314650 (content!8346 lt!1694913))))

(declare-fun b!4517179 () Bool)

(declare-fun e!2814237 () List!50758)

(assert (=> b!4517179 (= e!2814237 (t!357720 (toList!4320 lt!1694159)))))

(declare-fun c!770737 () Bool)

(assert (=> b!4517179 (= c!770737 call!314652)))

(declare-fun lt!1694917 () Unit!94398)

(assert (=> b!4517179 (= lt!1694917 e!2814239)))

(declare-fun bm!314646 () Bool)

(declare-fun c!770742 () Bool)

(assert (=> bm!314646 (= call!314652 (containsKey!1771 (ite c!770742 (toList!4320 lt!1694159) (t!357720 (toList!4320 lt!1694159))) (ite c!770742 key!3287 (_1!28823 (h!56483 (toList!4320 lt!1694159))))))))

(declare-fun b!4517180 () Bool)

(declare-fun e!2814240 () List!50758)

(assert (=> b!4517180 (= e!2814237 e!2814240)))

(declare-fun c!770738 () Bool)

(assert (=> b!4517180 (= c!770738 (and ((_ is Cons!50634) (toList!4320 lt!1694159)) (not (= (_1!28823 (h!56483 (toList!4320 lt!1694159))) key!3287))))))

(declare-fun d!1390702 () Bool)

(declare-fun e!2814238 () Bool)

(assert (=> d!1390702 e!2814238))

(declare-fun res!1879677 () Bool)

(assert (=> d!1390702 (=> (not res!1879677) (not e!2814238))))

(assert (=> d!1390702 (= res!1879677 (invariantList!1013 lt!1694913))))

(assert (=> d!1390702 (= lt!1694913 e!2814237)))

(assert (=> d!1390702 (= c!770742 (and ((_ is Cons!50634) (toList!4320 lt!1694159)) (= (_1!28823 (h!56483 (toList!4320 lt!1694159))) key!3287)))))

(assert (=> d!1390702 (invariantList!1013 (toList!4320 lt!1694159))))

(assert (=> d!1390702 (= (removePresrvNoDuplicatedKeys!137 (toList!4320 lt!1694159) key!3287) lt!1694913)))

(declare-fun b!4517181 () Bool)

(assert (=> b!4517181 (= e!2814240 Nil!50634)))

(declare-fun b!4517182 () Bool)

(assert (=> b!4517182 (= e!2814241 (= call!314650 ((_ map and) call!314647 ((_ map not) (store ((as const (Array tuple2!51058 Bool)) false) (tuple2!51059 key!3287 (get!16580 (getValueByKey!1084 (toList!4320 lt!1694159) key!3287))) true)))))))

(assert (=> b!4517182 (containsKey!1771 (toList!4320 lt!1694159) key!3287)))

(declare-fun lt!1694923 () Unit!94398)

(assert (=> b!4517182 (= lt!1694923 (lemmaContainsKeyImpliesGetValueByKeyDefined!988 (toList!4320 lt!1694159) key!3287))))

(assert (=> b!4517182 (isDefined!8391 (getValueByKey!1084 (toList!4320 lt!1694159) key!3287))))

(declare-fun lt!1694911 () Unit!94398)

(assert (=> b!4517182 (= lt!1694911 lt!1694923)))

(declare-fun b!4517183 () Bool)

(declare-fun e!2814236 () Unit!94398)

(declare-fun Unit!94550 () Unit!94398)

(assert (=> b!4517183 (= e!2814236 Unit!94550)))

(declare-fun b!4517184 () Bool)

(assert (=> b!4517184 (= e!2814238 e!2814241)))

(declare-fun c!770736 () Bool)

(assert (=> b!4517184 (= c!770736 (containsKey!1771 (toList!4320 lt!1694159) key!3287))))

(declare-fun b!4517185 () Bool)

(declare-fun Unit!94551 () Unit!94398)

(assert (=> b!4517185 (= e!2814235 Unit!94551)))

(declare-fun b!4517186 () Bool)

(assert (=> b!4517186 (= call!314648 ((_ map and) call!314649 ((_ map not) (store ((as const (Array tuple2!51058 Bool)) false) (tuple2!51059 key!3287 (get!16580 (getValueByKey!1084 (toList!4320 lt!1694159) key!3287))) true))))))

(declare-fun lt!1694918 () Unit!94398)

(assert (=> b!4517186 (= lt!1694918 e!2814242)))

(declare-fun c!770740 () Bool)

(declare-fun contains!13357 (List!50758 tuple2!51058) Bool)

(assert (=> b!4517186 (= c!770740 (contains!13357 (t!357720 (toList!4320 lt!1694159)) (tuple2!51059 key!3287 (get!16580 (getValueByKey!1084 (toList!4320 lt!1694159) key!3287)))))))

(declare-fun Unit!94552 () Unit!94398)

(assert (=> b!4517186 (= e!2814239 Unit!94552)))

(declare-fun b!4517187 () Bool)

(declare-fun res!1879676 () Bool)

(assert (=> b!4517187 (=> (not res!1879676) (not e!2814238))))

(assert (=> b!4517187 (= res!1879676 (not (containsKey!1771 lt!1694913 key!3287)))))

(declare-fun bm!314647 () Bool)

(declare-fun e!2814234 () List!50758)

(assert (=> bm!314647 (= call!314651 (containsKey!1771 e!2814234 (ite c!770742 lt!1694926 (_1!28823 (h!56483 (toList!4320 lt!1694159))))))))

(declare-fun c!770741 () Bool)

(assert (=> bm!314647 (= c!770741 c!770742)))

(declare-fun b!4517188 () Bool)

(declare-fun lt!1694912 () Unit!94398)

(assert (=> b!4517188 (= lt!1694912 e!2814236)))

(declare-fun c!770739 () Bool)

(assert (=> b!4517188 (= c!770739 call!314651)))

(declare-fun lt!1694914 () Unit!94398)

(assert (=> b!4517188 (= lt!1694914 e!2814235)))

(declare-fun c!770743 () Bool)

(assert (=> b!4517188 (= c!770743 (contains!13354 (getKeysList!461 (t!357720 (toList!4320 lt!1694159))) (_1!28823 (h!56483 (toList!4320 lt!1694159)))))))

(declare-fun lt!1694925 () List!50758)

(declare-fun $colon$colon!929 (List!50758 tuple2!51058) List!50758)

(assert (=> b!4517188 (= lt!1694925 ($colon$colon!929 (removePresrvNoDuplicatedKeys!137 (t!357720 (toList!4320 lt!1694159)) key!3287) (h!56483 (toList!4320 lt!1694159))))))

(assert (=> b!4517188 (= e!2814240 lt!1694925)))

(declare-fun b!4517189 () Bool)

(declare-fun Unit!94553 () Unit!94398)

(assert (=> b!4517189 (= e!2814236 Unit!94553)))

(declare-fun lt!1694920 () List!50758)

(assert (=> b!4517189 (= lt!1694920 (removePresrvNoDuplicatedKeys!137 (t!357720 (toList!4320 lt!1694159)) key!3287))))

(declare-fun lt!1694919 () Unit!94398)

(assert (=> b!4517189 (= lt!1694919 (lemmaInListThenGetKeysListContains!456 lt!1694920 (_1!28823 (h!56483 (toList!4320 lt!1694159)))))))

(assert (=> b!4517189 (contains!13354 (getKeysList!461 lt!1694920) (_1!28823 (h!56483 (toList!4320 lt!1694159))))))

(declare-fun lt!1694910 () Unit!94398)

(assert (=> b!4517189 (= lt!1694910 lt!1694919)))

(assert (=> b!4517189 false))

(declare-fun b!4517190 () Bool)

(declare-fun res!1879678 () Bool)

(assert (=> b!4517190 (=> (not res!1879678) (not e!2814238))))

(assert (=> b!4517190 (= res!1879678 (= (content!8347 (getKeysList!461 lt!1694913)) ((_ map and) (content!8347 (getKeysList!461 (toList!4320 lt!1694159))) ((_ map not) (store ((as const (Array K!12030 Bool)) false) key!3287 true)))))))

(declare-fun b!4517191 () Bool)

(assert (=> b!4517191 (= e!2814234 (removePresrvNoDuplicatedKeys!137 (t!357720 (toList!4320 lt!1694159)) key!3287))))

(declare-fun b!4517192 () Bool)

(assert (=> b!4517192 (= e!2814234 (t!357720 (toList!4320 lt!1694159)))))

(assert (= (and d!1390702 c!770742) b!4517179))

(assert (= (and d!1390702 (not c!770742)) b!4517180))

(assert (= (and b!4517179 c!770737) b!4517186))

(assert (= (and b!4517179 (not c!770737)) b!4517178))

(assert (= (and b!4517186 c!770740) b!4517175))

(assert (= (and b!4517186 (not c!770740)) b!4517176))

(assert (= (or b!4517186 b!4517178) bm!314642))

(assert (= (or b!4517186 b!4517178) bm!314644))

(assert (= (and b!4517180 c!770738) b!4517188))

(assert (= (and b!4517180 (not c!770738)) b!4517181))

(assert (= (and b!4517188 c!770743) b!4517174))

(assert (= (and b!4517188 (not c!770743)) b!4517185))

(assert (= (and b!4517188 c!770739) b!4517189))

(assert (= (and b!4517188 (not c!770739)) b!4517183))

(assert (= (or b!4517179 b!4517174) bm!314646))

(assert (= (or b!4517175 b!4517188) bm!314647))

(assert (= (and bm!314647 c!770741) b!4517192))

(assert (= (and bm!314647 (not c!770741)) b!4517191))

(assert (= (and d!1390702 res!1879677) b!4517187))

(assert (= (and b!4517187 res!1879676) b!4517190))

(assert (= (and b!4517190 res!1879678) b!4517184))

(assert (= (and b!4517184 c!770736) b!4517182))

(assert (= (and b!4517184 (not c!770736)) b!4517177))

(assert (= (or b!4517182 b!4517177) bm!314645))

(assert (= (or b!4517182 b!4517177) bm!314643))

(declare-fun m!5262255 () Bool)

(assert (=> b!4517187 m!5262255))

(declare-fun m!5262257 () Bool)

(assert (=> d!1390702 m!5262257))

(declare-fun m!5262259 () Bool)

(assert (=> d!1390702 m!5262259))

(assert (=> b!4517184 m!5260979))

(assert (=> b!4517186 m!5260967))

(assert (=> b!4517186 m!5260967))

(declare-fun m!5262261 () Bool)

(assert (=> b!4517186 m!5262261))

(declare-fun m!5262263 () Bool)

(assert (=> b!4517186 m!5262263))

(declare-fun m!5262265 () Bool)

(assert (=> b!4517186 m!5262265))

(declare-fun m!5262267 () Bool)

(assert (=> bm!314647 m!5262267))

(declare-fun m!5262269 () Bool)

(assert (=> bm!314645 m!5262269))

(assert (=> b!4517182 m!5260967))

(assert (=> b!4517182 m!5262261))

(assert (=> b!4517182 m!5260967))

(assert (=> b!4517182 m!5260969))

(assert (=> b!4517182 m!5260967))

(assert (=> b!4517182 m!5260979))

(assert (=> b!4517182 m!5260971))

(assert (=> b!4517182 m!5262263))

(declare-fun m!5262271 () Bool)

(assert (=> b!4517191 m!5262271))

(declare-fun m!5262273 () Bool)

(assert (=> bm!314642 m!5262273))

(declare-fun m!5262275 () Bool)

(assert (=> b!4517190 m!5262275))

(declare-fun m!5262277 () Bool)

(assert (=> b!4517190 m!5262277))

(assert (=> b!4517190 m!5262275))

(assert (=> b!4517190 m!5261443))

(assert (=> b!4517190 m!5260983))

(assert (=> b!4517190 m!5260983))

(declare-fun m!5262279 () Bool)

(assert (=> b!4517190 m!5262279))

(declare-fun m!5262281 () Bool)

(assert (=> b!4517188 m!5262281))

(assert (=> b!4517188 m!5262281))

(declare-fun m!5262283 () Bool)

(assert (=> b!4517188 m!5262283))

(assert (=> b!4517188 m!5262271))

(assert (=> b!4517188 m!5262271))

(declare-fun m!5262285 () Bool)

(assert (=> b!4517188 m!5262285))

(assert (=> b!4517189 m!5262271))

(declare-fun m!5262287 () Bool)

(assert (=> b!4517189 m!5262287))

(declare-fun m!5262289 () Bool)

(assert (=> b!4517189 m!5262289))

(assert (=> b!4517189 m!5262289))

(declare-fun m!5262291 () Bool)

(assert (=> b!4517189 m!5262291))

(declare-fun m!5262293 () Bool)

(assert (=> b!4517174 m!5262293))

(declare-fun m!5262295 () Bool)

(assert (=> bm!314643 m!5262295))

(assert (=> b!4517175 m!5260967))

(assert (=> b!4517175 m!5260967))

(assert (=> b!4517175 m!5262261))

(assert (=> b!4517175 m!5262261))

(declare-fun m!5262297 () Bool)

(assert (=> b!4517175 m!5262297))

(assert (=> bm!314644 m!5262295))

(declare-fun m!5262299 () Bool)

(assert (=> bm!314646 m!5262299))

(assert (=> d!1390450 d!1390702))

(declare-fun d!1390718 () Bool)

(assert (=> d!1390718 (= (invariantList!1013 (toList!4320 lt!1694564)) (noDuplicatedKeys!258 (toList!4320 lt!1694564)))))

(declare-fun bs!852170 () Bool)

(assert (= bs!852170 d!1390718))

(declare-fun m!5262305 () Bool)

(assert (=> bs!852170 m!5262305))

(assert (=> b!4516664 d!1390718))

(declare-fun d!1390720 () Bool)

(declare-fun res!1879679 () Bool)

(declare-fun e!2814243 () Bool)

(assert (=> d!1390720 (=> res!1879679 e!2814243)))

(assert (=> d!1390720 (= res!1879679 (and ((_ is Cons!50634) (t!357720 lt!1694146)) (= (_1!28823 (h!56483 (t!357720 lt!1694146))) key!3287)))))

(assert (=> d!1390720 (= (containsKey!1768 (t!357720 lt!1694146) key!3287) e!2814243)))

(declare-fun b!4517193 () Bool)

(declare-fun e!2814244 () Bool)

(assert (=> b!4517193 (= e!2814243 e!2814244)))

(declare-fun res!1879680 () Bool)

(assert (=> b!4517193 (=> (not res!1879680) (not e!2814244))))

(assert (=> b!4517193 (= res!1879680 ((_ is Cons!50634) (t!357720 lt!1694146)))))

(declare-fun b!4517194 () Bool)

(assert (=> b!4517194 (= e!2814244 (containsKey!1768 (t!357720 (t!357720 lt!1694146)) key!3287))))

(assert (= (and d!1390720 (not res!1879679)) b!4517193))

(assert (= (and b!4517193 res!1879680) b!4517194))

(declare-fun m!5262321 () Bool)

(assert (=> b!4517194 m!5262321))

(assert (=> b!4516312 d!1390720))

(declare-fun d!1390722 () Bool)

(declare-fun c!770744 () Bool)

(assert (=> d!1390722 (= c!770744 ((_ is Nil!50634) (toList!4320 lt!1694151)))))

(declare-fun e!2814245 () (InoxSet tuple2!51058))

(assert (=> d!1390722 (= (content!8346 (toList!4320 lt!1694151)) e!2814245)))

(declare-fun b!4517195 () Bool)

(assert (=> b!4517195 (= e!2814245 ((as const (Array tuple2!51058 Bool)) false))))

(declare-fun b!4517196 () Bool)

(assert (=> b!4517196 (= e!2814245 ((_ map or) (store ((as const (Array tuple2!51058 Bool)) false) (h!56483 (toList!4320 lt!1694151)) true) (content!8346 (t!357720 (toList!4320 lt!1694151)))))))

(assert (= (and d!1390722 c!770744) b!4517195))

(assert (= (and d!1390722 (not c!770744)) b!4517196))

(declare-fun m!5262331 () Bool)

(assert (=> b!4517196 m!5262331))

(declare-fun m!5262335 () Bool)

(assert (=> b!4517196 m!5262335))

(assert (=> d!1390470 d!1390722))

(assert (=> d!1390470 d!1390692))

(declare-fun d!1390724 () Bool)

(assert (=> d!1390724 (= (head!9406 (toList!4319 lt!1694165)) (h!56484 (toList!4319 lt!1694165)))))

(assert (=> d!1390320 d!1390724))

(declare-fun d!1390726 () Bool)

(declare-fun lt!1694928 () Bool)

(assert (=> d!1390726 (= lt!1694928 (select (content!8345 (toList!4319 lt!1694557)) lt!1694150))))

(declare-fun e!2814247 () Bool)

(assert (=> d!1390726 (= lt!1694928 e!2814247)))

(declare-fun res!1879682 () Bool)

(assert (=> d!1390726 (=> (not res!1879682) (not e!2814247))))

(assert (=> d!1390726 (= res!1879682 ((_ is Cons!50635) (toList!4319 lt!1694557)))))

(assert (=> d!1390726 (= (contains!13351 (toList!4319 lt!1694557) lt!1694150) lt!1694928)))

(declare-fun b!4517197 () Bool)

(declare-fun e!2814246 () Bool)

(assert (=> b!4517197 (= e!2814247 e!2814246)))

(declare-fun res!1879681 () Bool)

(assert (=> b!4517197 (=> res!1879681 e!2814246)))

(assert (=> b!4517197 (= res!1879681 (= (h!56484 (toList!4319 lt!1694557)) lt!1694150))))

(declare-fun b!4517198 () Bool)

(assert (=> b!4517198 (= e!2814246 (contains!13351 (t!357721 (toList!4319 lt!1694557)) lt!1694150))))

(assert (= (and d!1390726 res!1879682) b!4517197))

(assert (= (and b!4517197 (not res!1879681)) b!4517198))

(declare-fun m!5262343 () Bool)

(assert (=> d!1390726 m!5262343))

(declare-fun m!5262345 () Bool)

(assert (=> d!1390726 m!5262345))

(declare-fun m!5262347 () Bool)

(assert (=> b!4517198 m!5262347))

(assert (=> b!4516657 d!1390726))

(declare-fun d!1390730 () Bool)

(assert (=> d!1390730 (= (isEmpty!28652 (toList!4319 lm!1477)) ((_ is Nil!50635) (toList!4319 lm!1477)))))

(assert (=> d!1390268 d!1390730))

(declare-fun d!1390732 () Bool)

(declare-fun res!1879683 () Bool)

(declare-fun e!2814249 () Bool)

(assert (=> d!1390732 (=> res!1879683 e!2814249)))

(assert (=> d!1390732 (= res!1879683 ((_ is Nil!50635) (t!357721 (toList!4319 lm!1477))))))

(assert (=> d!1390732 (= (forall!10251 (t!357721 (toList!4319 lm!1477)) lambda!171717) e!2814249)))

(declare-fun b!4517201 () Bool)

(declare-fun e!2814250 () Bool)

(assert (=> b!4517201 (= e!2814249 e!2814250)))

(declare-fun res!1879684 () Bool)

(assert (=> b!4517201 (=> (not res!1879684) (not e!2814250))))

(assert (=> b!4517201 (= res!1879684 (dynLambda!21155 lambda!171717 (h!56484 (t!357721 (toList!4319 lm!1477)))))))

(declare-fun b!4517202 () Bool)

(assert (=> b!4517202 (= e!2814250 (forall!10251 (t!357721 (t!357721 (toList!4319 lm!1477))) lambda!171717))))

(assert (= (and d!1390732 (not res!1879683)) b!4517201))

(assert (= (and b!4517201 res!1879684) b!4517202))

(declare-fun b_lambda!154427 () Bool)

(assert (=> (not b_lambda!154427) (not b!4517201)))

(declare-fun m!5262349 () Bool)

(assert (=> b!4517201 m!5262349))

(declare-fun m!5262351 () Bool)

(assert (=> b!4517202 m!5262351))

(assert (=> b!4516318 d!1390732))

(declare-fun d!1390734 () Bool)

(declare-fun e!2814251 () Bool)

(assert (=> d!1390734 e!2814251))

(declare-fun res!1879685 () Bool)

(assert (=> d!1390734 (=> res!1879685 e!2814251)))

(declare-fun lt!1694932 () Bool)

(assert (=> d!1390734 (= res!1879685 (not lt!1694932))))

(declare-fun lt!1694930 () Bool)

(assert (=> d!1390734 (= lt!1694932 lt!1694930)))

(declare-fun lt!1694933 () Unit!94398)

(declare-fun e!2814252 () Unit!94398)

(assert (=> d!1390734 (= lt!1694933 e!2814252)))

(declare-fun c!770746 () Bool)

(assert (=> d!1390734 (= c!770746 lt!1694930)))

(assert (=> d!1390734 (= lt!1694930 (containsKey!1770 (toList!4319 lm!1477) (hash!2791 hashF!1107 key!3287)))))

(assert (=> d!1390734 (= (contains!13352 lm!1477 (hash!2791 hashF!1107 key!3287)) lt!1694932)))

(declare-fun b!4517203 () Bool)

(declare-fun lt!1694931 () Unit!94398)

(assert (=> b!4517203 (= e!2814252 lt!1694931)))

(assert (=> b!4517203 (= lt!1694931 (lemmaContainsKeyImpliesGetValueByKeyDefined!987 (toList!4319 lm!1477) (hash!2791 hashF!1107 key!3287)))))

(assert (=> b!4517203 (isDefined!8390 (getValueByKey!1083 (toList!4319 lm!1477) (hash!2791 hashF!1107 key!3287)))))

(declare-fun b!4517204 () Bool)

(declare-fun Unit!94554 () Unit!94398)

(assert (=> b!4517204 (= e!2814252 Unit!94554)))

(declare-fun b!4517205 () Bool)

(assert (=> b!4517205 (= e!2814251 (isDefined!8390 (getValueByKey!1083 (toList!4319 lm!1477) (hash!2791 hashF!1107 key!3287))))))

(assert (= (and d!1390734 c!770746) b!4517203))

(assert (= (and d!1390734 (not c!770746)) b!4517204))

(assert (= (and d!1390734 (not res!1879685)) b!4517205))

(assert (=> d!1390734 m!5260781))

(declare-fun m!5262361 () Bool)

(assert (=> d!1390734 m!5262361))

(assert (=> b!4517203 m!5260781))

(declare-fun m!5262363 () Bool)

(assert (=> b!4517203 m!5262363))

(assert (=> b!4517203 m!5260781))

(declare-fun m!5262365 () Bool)

(assert (=> b!4517203 m!5262365))

(assert (=> b!4517203 m!5262365))

(declare-fun m!5262367 () Bool)

(assert (=> b!4517203 m!5262367))

(assert (=> b!4517205 m!5260781))

(assert (=> b!4517205 m!5262365))

(assert (=> b!4517205 m!5262365))

(assert (=> b!4517205 m!5262367))

(assert (=> d!1390334 d!1390734))

(assert (=> d!1390334 d!1390272))

(declare-fun d!1390738 () Bool)

(assert (=> d!1390738 (contains!13352 lm!1477 (hash!2791 hashF!1107 key!3287))))

(assert (=> d!1390738 true))

(declare-fun _$27!1221 () Unit!94398)

(assert (=> d!1390738 (= (choose!29449 lm!1477 key!3287 hashF!1107) _$27!1221)))

(declare-fun bs!852184 () Bool)

(assert (= bs!852184 d!1390738))

(assert (=> bs!852184 m!5260781))

(assert (=> bs!852184 m!5260781))

(assert (=> bs!852184 m!5261027))

(assert (=> d!1390334 d!1390738))

(declare-fun d!1390746 () Bool)

(declare-fun res!1879689 () Bool)

(declare-fun e!2814259 () Bool)

(assert (=> d!1390746 (=> res!1879689 e!2814259)))

(assert (=> d!1390746 (= res!1879689 ((_ is Nil!50635) (toList!4319 lm!1477)))))

(assert (=> d!1390746 (= (forall!10251 (toList!4319 lm!1477) lambda!171775) e!2814259)))

(declare-fun b!4517215 () Bool)

(declare-fun e!2814260 () Bool)

(assert (=> b!4517215 (= e!2814259 e!2814260)))

(declare-fun res!1879690 () Bool)

(assert (=> b!4517215 (=> (not res!1879690) (not e!2814260))))

(assert (=> b!4517215 (= res!1879690 (dynLambda!21155 lambda!171775 (h!56484 (toList!4319 lm!1477))))))

(declare-fun b!4517216 () Bool)

(assert (=> b!4517216 (= e!2814260 (forall!10251 (t!357721 (toList!4319 lm!1477)) lambda!171775))))

(assert (= (and d!1390746 (not res!1879689)) b!4517215))

(assert (= (and b!4517215 res!1879690) b!4517216))

(declare-fun b_lambda!154431 () Bool)

(assert (=> (not b_lambda!154431) (not b!4517215)))

(declare-fun m!5262381 () Bool)

(assert (=> b!4517215 m!5262381))

(declare-fun m!5262383 () Bool)

(assert (=> b!4517216 m!5262383))

(assert (=> d!1390334 d!1390746))

(declare-fun d!1390748 () Bool)

(declare-fun lt!1694938 () Bool)

(assert (=> d!1390748 (= lt!1694938 (select (content!8345 (toList!4319 lt!1694541)) lt!1694154))))

(declare-fun e!2814262 () Bool)

(assert (=> d!1390748 (= lt!1694938 e!2814262)))

(declare-fun res!1879692 () Bool)

(assert (=> d!1390748 (=> (not res!1879692) (not e!2814262))))

(assert (=> d!1390748 (= res!1879692 ((_ is Cons!50635) (toList!4319 lt!1694541)))))

(assert (=> d!1390748 (= (contains!13351 (toList!4319 lt!1694541) lt!1694154) lt!1694938)))

(declare-fun b!4517217 () Bool)

(declare-fun e!2814261 () Bool)

(assert (=> b!4517217 (= e!2814262 e!2814261)))

(declare-fun res!1879691 () Bool)

(assert (=> b!4517217 (=> res!1879691 e!2814261)))

(assert (=> b!4517217 (= res!1879691 (= (h!56484 (toList!4319 lt!1694541)) lt!1694154))))

(declare-fun b!4517218 () Bool)

(assert (=> b!4517218 (= e!2814261 (contains!13351 (t!357721 (toList!4319 lt!1694541)) lt!1694154))))

(assert (= (and d!1390748 res!1879692) b!4517217))

(assert (= (and b!4517217 (not res!1879691)) b!4517218))

(declare-fun m!5262385 () Bool)

(assert (=> d!1390748 m!5262385))

(declare-fun m!5262387 () Bool)

(assert (=> d!1390748 m!5262387))

(declare-fun m!5262389 () Bool)

(assert (=> b!4517218 m!5262389))

(assert (=> b!4516646 d!1390748))

(declare-fun d!1390750 () Bool)

(declare-fun res!1879693 () Bool)

(declare-fun e!2814263 () Bool)

(assert (=> d!1390750 (=> res!1879693 e!2814263)))

(assert (=> d!1390750 (= res!1879693 ((_ is Nil!50634) (toList!4320 lt!1694172)))))

(assert (=> d!1390750 (= (forall!10253 (toList!4320 lt!1694172) (ite c!770601 lambda!171828 lambda!171829)) e!2814263)))

(declare-fun b!4517219 () Bool)

(declare-fun e!2814264 () Bool)

(assert (=> b!4517219 (= e!2814263 e!2814264)))

(declare-fun res!1879694 () Bool)

(assert (=> b!4517219 (=> (not res!1879694) (not e!2814264))))

(assert (=> b!4517219 (= res!1879694 (dynLambda!21156 (ite c!770601 lambda!171828 lambda!171829) (h!56483 (toList!4320 lt!1694172))))))

(declare-fun b!4517220 () Bool)

(assert (=> b!4517220 (= e!2814264 (forall!10253 (t!357720 (toList!4320 lt!1694172)) (ite c!770601 lambda!171828 lambda!171829)))))

(assert (= (and d!1390750 (not res!1879693)) b!4517219))

(assert (= (and b!4517219 res!1879694) b!4517220))

(declare-fun b_lambda!154433 () Bool)

(assert (=> (not b_lambda!154433) (not b!4517219)))

(declare-fun m!5262391 () Bool)

(assert (=> b!4517219 m!5262391))

(declare-fun m!5262393 () Bool)

(assert (=> b!4517220 m!5262393))

(assert (=> bm!314587 d!1390750))

(declare-fun d!1390752 () Bool)

(declare-fun res!1879695 () Bool)

(declare-fun e!2814265 () Bool)

(assert (=> d!1390752 (=> res!1879695 e!2814265)))

(assert (=> d!1390752 (= res!1879695 (not ((_ is Cons!50634) (_2!28824 (h!56484 (toList!4319 lm!1477))))))))

(assert (=> d!1390752 (= (noDuplicateKeys!1156 (_2!28824 (h!56484 (toList!4319 lm!1477)))) e!2814265)))

(declare-fun b!4517221 () Bool)

(declare-fun e!2814266 () Bool)

(assert (=> b!4517221 (= e!2814265 e!2814266)))

(declare-fun res!1879696 () Bool)

(assert (=> b!4517221 (=> (not res!1879696) (not e!2814266))))

(assert (=> b!4517221 (= res!1879696 (not (containsKey!1768 (t!357720 (_2!28824 (h!56484 (toList!4319 lm!1477)))) (_1!28823 (h!56483 (_2!28824 (h!56484 (toList!4319 lm!1477))))))))))

(declare-fun b!4517222 () Bool)

(assert (=> b!4517222 (= e!2814266 (noDuplicateKeys!1156 (t!357720 (_2!28824 (h!56484 (toList!4319 lm!1477))))))))

(assert (= (and d!1390752 (not res!1879695)) b!4517221))

(assert (= (and b!4517221 res!1879696) b!4517222))

(declare-fun m!5262395 () Bool)

(assert (=> b!4517221 m!5262395))

(declare-fun m!5262397 () Bool)

(assert (=> b!4517222 m!5262397))

(assert (=> bs!851890 d!1390752))

(assert (=> b!4516333 d!1390618))

(assert (=> b!4516333 d!1390620))

(declare-fun d!1390754 () Bool)

(declare-fun lt!1694939 () Bool)

(assert (=> d!1390754 (= lt!1694939 (select (content!8345 (toList!4319 lt!1694545)) lt!1694150))))

(declare-fun e!2814268 () Bool)

(assert (=> d!1390754 (= lt!1694939 e!2814268)))

(declare-fun res!1879698 () Bool)

(assert (=> d!1390754 (=> (not res!1879698) (not e!2814268))))

(assert (=> d!1390754 (= res!1879698 ((_ is Cons!50635) (toList!4319 lt!1694545)))))

(assert (=> d!1390754 (= (contains!13351 (toList!4319 lt!1694545) lt!1694150) lt!1694939)))

(declare-fun b!4517223 () Bool)

(declare-fun e!2814267 () Bool)

(assert (=> b!4517223 (= e!2814268 e!2814267)))

(declare-fun res!1879697 () Bool)

(assert (=> b!4517223 (=> res!1879697 e!2814267)))

(assert (=> b!4517223 (= res!1879697 (= (h!56484 (toList!4319 lt!1694545)) lt!1694150))))

(declare-fun b!4517224 () Bool)

(assert (=> b!4517224 (= e!2814267 (contains!13351 (t!357721 (toList!4319 lt!1694545)) lt!1694150))))

(assert (= (and d!1390754 res!1879698) b!4517223))

(assert (= (and b!4517223 (not res!1879697)) b!4517224))

(declare-fun m!5262399 () Bool)

(assert (=> d!1390754 m!5262399))

(declare-fun m!5262401 () Bool)

(assert (=> d!1390754 m!5262401))

(declare-fun m!5262403 () Bool)

(assert (=> b!4517224 m!5262403))

(assert (=> b!4516648 d!1390754))

(declare-fun bs!852185 () Bool)

(declare-fun d!1390756 () Bool)

(assert (= bs!852185 (and d!1390756 b!4516808)))

(declare-fun lambda!171920 () Int)

(assert (=> bs!852185 (= (= lt!1694172 (extractMap!1212 (t!357721 (toList!4319 lt!1694158)))) (= lambda!171920 lambda!171864))))

(declare-fun bs!852186 () Bool)

(assert (= bs!852186 (and d!1390756 b!4516662)))

(assert (=> bs!852186 (= (= lt!1694172 lt!1694147) (= lambda!171920 lambda!171844))))

(declare-fun bs!852187 () Bool)

(assert (= bs!852187 (and d!1390756 b!4516807)))

(assert (=> bs!852187 (= (= lt!1694172 (extractMap!1212 (t!357721 (toList!4319 lt!1694158)))) (= lambda!171920 lambda!171863))))

(declare-fun bs!852188 () Bool)

(assert (= bs!852188 (and d!1390756 d!1390358)))

(assert (=> bs!852188 (= (= lt!1694172 lt!1694503) (= lambda!171920 lambda!171831))))

(declare-fun bs!852189 () Bool)

(assert (= bs!852189 (and d!1390756 d!1390568)))

(assert (=> bs!852189 (= (= lt!1694172 lt!1694656) (= lambda!171920 lambda!171871))))

(declare-fun bs!852190 () Bool)

(assert (= bs!852190 (and d!1390756 b!4516815)))

(assert (=> bs!852190 (= (= lt!1694172 (extractMap!1212 (t!357721 (toList!4319 lm!1477)))) (= lambda!171920 lambda!171869))))

(declare-fun bs!852191 () Bool)

(assert (= bs!852191 (and d!1390756 b!4516744)))

(assert (=> bs!852191 (= (= lt!1694172 lt!1694614) (= lambda!171920 lambda!171856))))

(declare-fun bs!852192 () Bool)

(assert (= bs!852192 (and d!1390756 b!4516663)))

(assert (=> bs!852192 (= (= lt!1694172 lt!1694574) (= lambda!171920 lambda!171846))))

(declare-fun bs!852193 () Bool)

(assert (= bs!852193 (and d!1390756 d!1390564)))

(assert (=> bs!852193 (= (= lt!1694172 lt!1694634) (= lambda!171920 lambda!171866))))

(declare-fun bs!852194 () Bool)

(assert (= bs!852194 (and d!1390756 d!1390472)))

(assert (=> bs!852194 (= (= lt!1694172 lt!1694564) (= lambda!171920 lambda!171847))))

(assert (=> bs!852190 (= (= lt!1694172 lt!1694666) (= lambda!171920 lambda!171870))))

(declare-fun bs!852195 () Bool)

(assert (= bs!852195 (and d!1390756 d!1390694)))

(assert (=> bs!852195 (= (= lt!1694172 lt!1694147) (= lambda!171920 lambda!171904))))

(assert (=> bs!852191 (= (= lt!1694172 (extractMap!1212 (t!357721 (toList!4319 lt!1694164)))) (= lambda!171920 lambda!171855))))

(declare-fun bs!852196 () Bool)

(assert (= bs!852196 (and d!1390756 b!4516743)))

(assert (=> bs!852196 (= (= lt!1694172 (extractMap!1212 (t!357721 (toList!4319 lt!1694164)))) (= lambda!171920 lambda!171854))))

(assert (=> bs!852185 (= (= lt!1694172 lt!1694644) (= lambda!171920 lambda!171865))))

(declare-fun bs!852197 () Bool)

(assert (= bs!852197 (and d!1390756 b!4516604)))

(assert (=> bs!852197 (= (= lt!1694172 lt!1694513) (= lambda!171920 lambda!171830))))

(declare-fun bs!852198 () Bool)

(assert (= bs!852198 (and d!1390756 d!1390326)))

(assert (=> bs!852198 (not (= lambda!171920 lambda!171772))))

(declare-fun bs!852199 () Bool)

(assert (= bs!852199 (and d!1390756 d!1390526)))

(assert (=> bs!852199 (= (= lt!1694172 lt!1694604) (= lambda!171920 lambda!171857))))

(assert (=> bs!852197 (= lambda!171920 lambda!171829)))

(declare-fun bs!852200 () Bool)

(assert (= bs!852200 (and d!1390756 b!4516603)))

(assert (=> bs!852200 (= lambda!171920 lambda!171828)))

(declare-fun bs!852201 () Bool)

(assert (= bs!852201 (and d!1390756 b!4516814)))

(assert (=> bs!852201 (= (= lt!1694172 (extractMap!1212 (t!357721 (toList!4319 lm!1477)))) (= lambda!171920 lambda!171868))))

(assert (=> bs!852192 (= (= lt!1694172 lt!1694147) (= lambda!171920 lambda!171845))))

(assert (=> d!1390756 true))

(assert (=> d!1390756 (forall!10253 (toList!4320 lt!1694172) lambda!171920)))

(declare-fun lt!1694942 () Unit!94398)

(assert (=> d!1390756 (= lt!1694942 (choose!29465 lt!1694172))))

(assert (=> d!1390756 (= (lemmaContainsAllItsOwnKeys!334 lt!1694172) lt!1694942)))

(declare-fun bs!852202 () Bool)

(assert (= bs!852202 d!1390756))

(declare-fun m!5262413 () Bool)

(assert (=> bs!852202 m!5262413))

(declare-fun m!5262415 () Bool)

(assert (=> bs!852202 m!5262415))

(assert (=> bm!314589 d!1390756))

(declare-fun d!1390760 () Bool)

(declare-fun res!1879705 () Bool)

(declare-fun e!2814272 () Bool)

(assert (=> d!1390760 (=> res!1879705 e!2814272)))

(assert (=> d!1390760 (= res!1879705 (and ((_ is Cons!50634) (_2!28824 (h!56484 (t!357721 (toList!4319 lm!1477))))) (= (_1!28823 (h!56483 (_2!28824 (h!56484 (t!357721 (toList!4319 lm!1477)))))) key!3287)))))

(assert (=> d!1390760 (= (containsKey!1768 (_2!28824 (h!56484 (t!357721 (toList!4319 lm!1477)))) key!3287) e!2814272)))

(declare-fun b!4517231 () Bool)

(declare-fun e!2814273 () Bool)

(assert (=> b!4517231 (= e!2814272 e!2814273)))

(declare-fun res!1879706 () Bool)

(assert (=> b!4517231 (=> (not res!1879706) (not e!2814273))))

(assert (=> b!4517231 (= res!1879706 ((_ is Cons!50634) (_2!28824 (h!56484 (t!357721 (toList!4319 lm!1477))))))))

(declare-fun b!4517232 () Bool)

(assert (=> b!4517232 (= e!2814273 (containsKey!1768 (t!357720 (_2!28824 (h!56484 (t!357721 (toList!4319 lm!1477))))) key!3287))))

(assert (= (and d!1390760 (not res!1879705)) b!4517231))

(assert (= (and b!4517231 res!1879706) b!4517232))

(declare-fun m!5262417 () Bool)

(assert (=> b!4517232 m!5262417))

(assert (=> b!4516619 d!1390760))

(declare-fun d!1390762 () Bool)

(declare-fun isEmpty!28657 (Option!11104) Bool)

(assert (=> d!1390762 (= (isDefined!8391 (getValueByKey!1084 (toList!4320 lt!1694159) key!3287)) (not (isEmpty!28657 (getValueByKey!1084 (toList!4320 lt!1694159) key!3287))))))

(declare-fun bs!852203 () Bool)

(assert (= bs!852203 d!1390762))

(assert (=> bs!852203 m!5260967))

(declare-fun m!5262419 () Bool)

(assert (=> bs!852203 m!5262419))

(assert (=> b!4516421 d!1390762))

(declare-fun b!4517241 () Bool)

(declare-fun e!2814278 () Option!11104)

(assert (=> b!4517241 (= e!2814278 (Some!11103 (_2!28823 (h!56483 (toList!4320 lt!1694159)))))))

(declare-fun d!1390764 () Bool)

(declare-fun c!770754 () Bool)

(assert (=> d!1390764 (= c!770754 (and ((_ is Cons!50634) (toList!4320 lt!1694159)) (= (_1!28823 (h!56483 (toList!4320 lt!1694159))) key!3287)))))

(assert (=> d!1390764 (= (getValueByKey!1084 (toList!4320 lt!1694159) key!3287) e!2814278)))

(declare-fun b!4517244 () Bool)

(declare-fun e!2814279 () Option!11104)

(assert (=> b!4517244 (= e!2814279 None!11103)))

(declare-fun b!4517243 () Bool)

(assert (=> b!4517243 (= e!2814279 (getValueByKey!1084 (t!357720 (toList!4320 lt!1694159)) key!3287))))

(declare-fun b!4517242 () Bool)

(assert (=> b!4517242 (= e!2814278 e!2814279)))

(declare-fun c!770755 () Bool)

(assert (=> b!4517242 (= c!770755 (and ((_ is Cons!50634) (toList!4320 lt!1694159)) (not (= (_1!28823 (h!56483 (toList!4320 lt!1694159))) key!3287))))))

(assert (= (and d!1390764 c!770754) b!4517241))

(assert (= (and d!1390764 (not c!770754)) b!4517242))

(assert (= (and b!4517242 c!770755) b!4517243))

(assert (= (and b!4517242 (not c!770755)) b!4517244))

(declare-fun m!5262421 () Bool)

(assert (=> b!4517243 m!5262421))

(assert (=> b!4516421 d!1390764))

(declare-fun d!1390766 () Bool)

(declare-fun c!770756 () Bool)

(assert (=> d!1390766 (= c!770756 ((_ is Nil!50635) (t!357721 (toList!4319 lm!1477))))))

(declare-fun e!2814280 () (InoxSet tuple2!51060))

(assert (=> d!1390766 (= (content!8345 (t!357721 (toList!4319 lm!1477))) e!2814280)))

(declare-fun b!4517245 () Bool)

(assert (=> b!4517245 (= e!2814280 ((as const (Array tuple2!51060 Bool)) false))))

(declare-fun b!4517246 () Bool)

(assert (=> b!4517246 (= e!2814280 ((_ map or) (store ((as const (Array tuple2!51060 Bool)) false) (h!56484 (t!357721 (toList!4319 lm!1477))) true) (content!8345 (t!357721 (t!357721 (toList!4319 lm!1477))))))))

(assert (= (and d!1390766 c!770756) b!4517245))

(assert (= (and d!1390766 (not c!770756)) b!4517246))

(declare-fun m!5262423 () Bool)

(assert (=> b!4517246 m!5262423))

(declare-fun m!5262425 () Bool)

(assert (=> b!4517246 m!5262425))

(assert (=> d!1390476 d!1390766))

(declare-fun d!1390768 () Bool)

(assert (=> d!1390768 (= (isDefined!8391 (getValueByKey!1084 (toList!4320 lt!1694148) key!3287)) (not (isEmpty!28657 (getValueByKey!1084 (toList!4320 lt!1694148) key!3287))))))

(declare-fun bs!852204 () Bool)

(assert (= bs!852204 d!1390768))

(assert (=> bs!852204 m!5260845))

(declare-fun m!5262427 () Bool)

(assert (=> bs!852204 m!5262427))

(assert (=> b!4516356 d!1390768))

(declare-fun b!4517247 () Bool)

(declare-fun e!2814281 () Option!11104)

(assert (=> b!4517247 (= e!2814281 (Some!11103 (_2!28823 (h!56483 (toList!4320 lt!1694148)))))))

(declare-fun d!1390770 () Bool)

(declare-fun c!770757 () Bool)

(assert (=> d!1390770 (= c!770757 (and ((_ is Cons!50634) (toList!4320 lt!1694148)) (= (_1!28823 (h!56483 (toList!4320 lt!1694148))) key!3287)))))

(assert (=> d!1390770 (= (getValueByKey!1084 (toList!4320 lt!1694148) key!3287) e!2814281)))

(declare-fun b!4517250 () Bool)

(declare-fun e!2814282 () Option!11104)

(assert (=> b!4517250 (= e!2814282 None!11103)))

(declare-fun b!4517249 () Bool)

(assert (=> b!4517249 (= e!2814282 (getValueByKey!1084 (t!357720 (toList!4320 lt!1694148)) key!3287))))

(declare-fun b!4517248 () Bool)

(assert (=> b!4517248 (= e!2814281 e!2814282)))

(declare-fun c!770758 () Bool)

(assert (=> b!4517248 (= c!770758 (and ((_ is Cons!50634) (toList!4320 lt!1694148)) (not (= (_1!28823 (h!56483 (toList!4320 lt!1694148))) key!3287))))))

(assert (= (and d!1390770 c!770757) b!4517247))

(assert (= (and d!1390770 (not c!770757)) b!4517248))

(assert (= (and b!4517248 c!770758) b!4517249))

(assert (= (and b!4517248 (not c!770758)) b!4517250))

(declare-fun m!5262429 () Bool)

(assert (=> b!4517249 m!5262429))

(assert (=> b!4516356 d!1390770))

(declare-fun d!1390772 () Bool)

(declare-fun lt!1694944 () Bool)

(assert (=> d!1390772 (= lt!1694944 (select (content!8345 (toList!4319 lm!1477)) (h!56484 (toList!4319 lm!1477))))))

(declare-fun e!2814284 () Bool)

(assert (=> d!1390772 (= lt!1694944 e!2814284)))

(declare-fun res!1879708 () Bool)

(assert (=> d!1390772 (=> (not res!1879708) (not e!2814284))))

(assert (=> d!1390772 (= res!1879708 ((_ is Cons!50635) (toList!4319 lm!1477)))))

(assert (=> d!1390772 (= (contains!13351 (toList!4319 lm!1477) (h!56484 (toList!4319 lm!1477))) lt!1694944)))

(declare-fun b!4517251 () Bool)

(declare-fun e!2814283 () Bool)

(assert (=> b!4517251 (= e!2814284 e!2814283)))

(declare-fun res!1879707 () Bool)

(assert (=> b!4517251 (=> res!1879707 e!2814283)))

(assert (=> b!4517251 (= res!1879707 (= (h!56484 (toList!4319 lm!1477)) (h!56484 (toList!4319 lm!1477))))))

(declare-fun b!4517252 () Bool)

(assert (=> b!4517252 (= e!2814283 (contains!13351 (t!357721 (toList!4319 lm!1477)) (h!56484 (toList!4319 lm!1477))))))

(assert (= (and d!1390772 res!1879708) b!4517251))

(assert (= (and b!4517251 (not res!1879707)) b!4517252))

(assert (=> d!1390772 m!5261045))

(declare-fun m!5262431 () Bool)

(assert (=> d!1390772 m!5262431))

(declare-fun m!5262433 () Bool)

(assert (=> b!4517252 m!5262433))

(assert (=> b!4516612 d!1390772))

(declare-fun b!4517255 () Bool)

(declare-fun e!2814287 () Unit!94398)

(declare-fun lt!1694951 () Unit!94398)

(assert (=> b!4517255 (= e!2814287 lt!1694951)))

(declare-fun lt!1694952 () Unit!94398)

(assert (=> b!4517255 (= lt!1694952 (lemmaContainsKeyImpliesGetValueByKeyDefined!988 (toList!4320 (extractMap!1212 (toList!4319 lt!1694164))) key!3287))))

(assert (=> b!4517255 (isDefined!8391 (getValueByKey!1084 (toList!4320 (extractMap!1212 (toList!4319 lt!1694164))) key!3287))))

(declare-fun lt!1694950 () Unit!94398)

(assert (=> b!4517255 (= lt!1694950 lt!1694952)))

(assert (=> b!4517255 (= lt!1694951 (lemmaInListThenGetKeysListContains!456 (toList!4320 (extractMap!1212 (toList!4319 lt!1694164))) key!3287))))

(declare-fun call!314653 () Bool)

(assert (=> b!4517255 call!314653))

(declare-fun b!4517256 () Bool)

(declare-fun e!2814290 () Unit!94398)

(assert (=> b!4517256 (= e!2814287 e!2814290)))

(declare-fun c!770761 () Bool)

(assert (=> b!4517256 (= c!770761 call!314653)))

(declare-fun b!4517257 () Bool)

(declare-fun Unit!94555 () Unit!94398)

(assert (=> b!4517257 (= e!2814290 Unit!94555)))

(declare-fun bm!314648 () Bool)

(declare-fun e!2814285 () List!50761)

(assert (=> bm!314648 (= call!314653 (contains!13354 e!2814285 key!3287))))

(declare-fun c!770760 () Bool)

(declare-fun c!770759 () Bool)

(assert (=> bm!314648 (= c!770760 c!770759)))

(declare-fun b!4517258 () Bool)

(assert (=> b!4517258 (= e!2814285 (keys!17586 (extractMap!1212 (toList!4319 lt!1694164))))))

(declare-fun b!4517259 () Bool)

(declare-fun e!2814289 () Bool)

(declare-fun e!2814288 () Bool)

(assert (=> b!4517259 (= e!2814289 e!2814288)))

(declare-fun res!1879710 () Bool)

(assert (=> b!4517259 (=> (not res!1879710) (not e!2814288))))

(assert (=> b!4517259 (= res!1879710 (isDefined!8391 (getValueByKey!1084 (toList!4320 (extractMap!1212 (toList!4319 lt!1694164))) key!3287)))))

(declare-fun d!1390774 () Bool)

(assert (=> d!1390774 e!2814289))

(declare-fun res!1879711 () Bool)

(assert (=> d!1390774 (=> res!1879711 e!2814289)))

(declare-fun e!2814286 () Bool)

(assert (=> d!1390774 (= res!1879711 e!2814286)))

(declare-fun res!1879709 () Bool)

(assert (=> d!1390774 (=> (not res!1879709) (not e!2814286))))

(declare-fun lt!1694954 () Bool)

(assert (=> d!1390774 (= res!1879709 (not lt!1694954))))

(declare-fun lt!1694945 () Bool)

(assert (=> d!1390774 (= lt!1694954 lt!1694945)))

(declare-fun lt!1694946 () Unit!94398)

(assert (=> d!1390774 (= lt!1694946 e!2814287)))

(assert (=> d!1390774 (= c!770759 lt!1694945)))

(assert (=> d!1390774 (= lt!1694945 (containsKey!1771 (toList!4320 (extractMap!1212 (toList!4319 lt!1694164))) key!3287))))

(assert (=> d!1390774 (= (contains!13353 (extractMap!1212 (toList!4319 lt!1694164)) key!3287) lt!1694954)))

(declare-fun b!4517260 () Bool)

(assert (=> b!4517260 (= e!2814286 (not (contains!13354 (keys!17586 (extractMap!1212 (toList!4319 lt!1694164))) key!3287)))))

(declare-fun b!4517261 () Bool)

(assert (=> b!4517261 (= e!2814288 (contains!13354 (keys!17586 (extractMap!1212 (toList!4319 lt!1694164))) key!3287))))

(declare-fun b!4517262 () Bool)

(assert (=> b!4517262 (= e!2814285 (getKeysList!461 (toList!4320 (extractMap!1212 (toList!4319 lt!1694164)))))))

(declare-fun b!4517263 () Bool)

(assert (=> b!4517263 false))

(declare-fun lt!1694949 () Unit!94398)

(declare-fun lt!1694953 () Unit!94398)

(assert (=> b!4517263 (= lt!1694949 lt!1694953)))

(assert (=> b!4517263 (containsKey!1771 (toList!4320 (extractMap!1212 (toList!4319 lt!1694164))) key!3287)))

(assert (=> b!4517263 (= lt!1694953 (lemmaInGetKeysListThenContainsKey!459 (toList!4320 (extractMap!1212 (toList!4319 lt!1694164))) key!3287))))

(declare-fun Unit!94561 () Unit!94398)

(assert (=> b!4517263 (= e!2814290 Unit!94561)))

(assert (= (and d!1390774 c!770759) b!4517255))

(assert (= (and d!1390774 (not c!770759)) b!4517256))

(assert (= (and b!4517256 c!770761) b!4517263))

(assert (= (and b!4517256 (not c!770761)) b!4517257))

(assert (= (or b!4517255 b!4517256) bm!314648))

(assert (= (and bm!314648 c!770760) b!4517262))

(assert (= (and bm!314648 (not c!770760)) b!4517258))

(assert (= (and d!1390774 res!1879709) b!4517260))

(assert (= (and d!1390774 (not res!1879711)) b!4517259))

(assert (= (and b!4517259 res!1879710) b!4517261))

(declare-fun m!5262435 () Bool)

(assert (=> b!4517259 m!5262435))

(assert (=> b!4517259 m!5262435))

(declare-fun m!5262437 () Bool)

(assert (=> b!4517259 m!5262437))

(declare-fun m!5262439 () Bool)

(assert (=> b!4517255 m!5262439))

(assert (=> b!4517255 m!5262435))

(assert (=> b!4517255 m!5262435))

(assert (=> b!4517255 m!5262437))

(declare-fun m!5262441 () Bool)

(assert (=> b!4517255 m!5262441))

(assert (=> b!4517260 m!5260735))

(declare-fun m!5262443 () Bool)

(assert (=> b!4517260 m!5262443))

(assert (=> b!4517260 m!5262443))

(declare-fun m!5262445 () Bool)

(assert (=> b!4517260 m!5262445))

(declare-fun m!5262447 () Bool)

(assert (=> b!4517263 m!5262447))

(declare-fun m!5262449 () Bool)

(assert (=> b!4517263 m!5262449))

(declare-fun m!5262451 () Bool)

(assert (=> b!4517262 m!5262451))

(assert (=> b!4517258 m!5260735))

(assert (=> b!4517258 m!5262443))

(assert (=> d!1390774 m!5262447))

(assert (=> b!4517261 m!5260735))

(assert (=> b!4517261 m!5262443))

(assert (=> b!4517261 m!5262443))

(assert (=> b!4517261 m!5262445))

(declare-fun m!5262453 () Bool)

(assert (=> bm!314648 m!5262453))

(assert (=> d!1390300 d!1390774))

(assert (=> d!1390300 d!1390314))

(declare-fun d!1390776 () Bool)

(assert (=> d!1390776 (contains!13353 (extractMap!1212 (toList!4319 lt!1694164)) key!3287)))

(assert (=> d!1390776 true))

(declare-fun _$34!667 () Unit!94398)

(assert (=> d!1390776 (= (choose!29447 lt!1694164 key!3287 hashF!1107) _$34!667)))

(declare-fun bs!852216 () Bool)

(assert (= bs!852216 d!1390776))

(assert (=> bs!852216 m!5260735))

(assert (=> bs!852216 m!5260735))

(assert (=> bs!852216 m!5260947))

(assert (=> d!1390300 d!1390776))

(declare-fun d!1390790 () Bool)

(declare-fun res!1879730 () Bool)

(declare-fun e!2814314 () Bool)

(assert (=> d!1390790 (=> res!1879730 e!2814314)))

(assert (=> d!1390790 (= res!1879730 ((_ is Nil!50635) (toList!4319 lt!1694164)))))

(assert (=> d!1390790 (= (forall!10251 (toList!4319 lt!1694164) lambda!171762) e!2814314)))

(declare-fun b!4517304 () Bool)

(declare-fun e!2814315 () Bool)

(assert (=> b!4517304 (= e!2814314 e!2814315)))

(declare-fun res!1879731 () Bool)

(assert (=> b!4517304 (=> (not res!1879731) (not e!2814315))))

(assert (=> b!4517304 (= res!1879731 (dynLambda!21155 lambda!171762 (h!56484 (toList!4319 lt!1694164))))))

(declare-fun b!4517305 () Bool)

(assert (=> b!4517305 (= e!2814315 (forall!10251 (t!357721 (toList!4319 lt!1694164)) lambda!171762))))

(assert (= (and d!1390790 (not res!1879730)) b!4517304))

(assert (= (and b!4517304 res!1879731) b!4517305))

(declare-fun b_lambda!154439 () Bool)

(assert (=> (not b_lambda!154439) (not b!4517304)))

(declare-fun m!5262493 () Bool)

(assert (=> b!4517304 m!5262493))

(declare-fun m!5262495 () Bool)

(assert (=> b!4517305 m!5262495))

(assert (=> d!1390300 d!1390790))

(declare-fun d!1390792 () Bool)

(assert (=> d!1390792 (= (invariantList!1013 (toList!4320 lt!1694503)) (noDuplicatedKeys!258 (toList!4320 lt!1694503)))))

(declare-fun bs!852224 () Bool)

(assert (= bs!852224 d!1390792))

(declare-fun m!5262497 () Bool)

(assert (=> bs!852224 m!5262497))

(assert (=> b!4516605 d!1390792))

(declare-fun d!1390794 () Bool)

(declare-fun res!1879732 () Bool)

(declare-fun e!2814316 () Bool)

(assert (=> d!1390794 (=> res!1879732 e!2814316)))

(assert (=> d!1390794 (= res!1879732 (and ((_ is Cons!50634) (toList!4320 lt!1694148)) (= (_1!28823 (h!56483 (toList!4320 lt!1694148))) key!3287)))))

(assert (=> d!1390794 (= (containsKey!1771 (toList!4320 lt!1694148) key!3287) e!2814316)))

(declare-fun b!4517306 () Bool)

(declare-fun e!2814317 () Bool)

(assert (=> b!4517306 (= e!2814316 e!2814317)))

(declare-fun res!1879733 () Bool)

(assert (=> b!4517306 (=> (not res!1879733) (not e!2814317))))

(assert (=> b!4517306 (= res!1879733 ((_ is Cons!50634) (toList!4320 lt!1694148)))))

(declare-fun b!4517307 () Bool)

(assert (=> b!4517307 (= e!2814317 (containsKey!1771 (t!357720 (toList!4320 lt!1694148)) key!3287))))

(assert (= (and d!1390794 (not res!1879732)) b!4517306))

(assert (= (and b!4517306 res!1879733) b!4517307))

(declare-fun m!5262499 () Bool)

(assert (=> b!4517307 m!5262499))

(assert (=> b!4516360 d!1390794))

(declare-fun d!1390796 () Bool)

(assert (=> d!1390796 (containsKey!1771 (toList!4320 lt!1694148) key!3287)))

(declare-fun lt!1694962 () Unit!94398)

(declare-fun choose!29467 (List!50758 K!12030) Unit!94398)

(assert (=> d!1390796 (= lt!1694962 (choose!29467 (toList!4320 lt!1694148) key!3287))))

(assert (=> d!1390796 (invariantList!1013 (toList!4320 lt!1694148))))

(assert (=> d!1390796 (= (lemmaInGetKeysListThenContainsKey!459 (toList!4320 lt!1694148) key!3287) lt!1694962)))

(declare-fun bs!852230 () Bool)

(assert (= bs!852230 d!1390796))

(assert (=> bs!852230 m!5260857))

(declare-fun m!5262513 () Bool)

(assert (=> bs!852230 m!5262513))

(declare-fun m!5262515 () Bool)

(assert (=> bs!852230 m!5262515))

(assert (=> b!4516360 d!1390796))

(declare-fun d!1390800 () Bool)

(declare-fun e!2814320 () Bool)

(assert (=> d!1390800 e!2814320))

(declare-fun res!1879734 () Bool)

(assert (=> d!1390800 (=> res!1879734 e!2814320)))

(declare-fun lt!1694965 () Bool)

(assert (=> d!1390800 (= res!1879734 (not lt!1694965))))

(declare-fun lt!1694963 () Bool)

(assert (=> d!1390800 (= lt!1694965 lt!1694963)))

(declare-fun lt!1694966 () Unit!94398)

(declare-fun e!2814321 () Unit!94398)

(assert (=> d!1390800 (= lt!1694966 e!2814321)))

(declare-fun c!770776 () Bool)

(assert (=> d!1390800 (= c!770776 lt!1694963)))

(assert (=> d!1390800 (= lt!1694963 (containsKey!1770 (toList!4319 lt!1694557) (_1!28824 lt!1694150)))))

(assert (=> d!1390800 (= (contains!13352 lt!1694557 (_1!28824 lt!1694150)) lt!1694965)))

(declare-fun b!4517312 () Bool)

(declare-fun lt!1694964 () Unit!94398)

(assert (=> b!4517312 (= e!2814321 lt!1694964)))

(assert (=> b!4517312 (= lt!1694964 (lemmaContainsKeyImpliesGetValueByKeyDefined!987 (toList!4319 lt!1694557) (_1!28824 lt!1694150)))))

(assert (=> b!4517312 (isDefined!8390 (getValueByKey!1083 (toList!4319 lt!1694557) (_1!28824 lt!1694150)))))

(declare-fun b!4517313 () Bool)

(declare-fun Unit!94568 () Unit!94398)

(assert (=> b!4517313 (= e!2814321 Unit!94568)))

(declare-fun b!4517314 () Bool)

(assert (=> b!4517314 (= e!2814320 (isDefined!8390 (getValueByKey!1083 (toList!4319 lt!1694557) (_1!28824 lt!1694150))))))

(assert (= (and d!1390800 c!770776) b!4517312))

(assert (= (and d!1390800 (not c!770776)) b!4517313))

(assert (= (and d!1390800 (not res!1879734)) b!4517314))

(declare-fun m!5262517 () Bool)

(assert (=> d!1390800 m!5262517))

(declare-fun m!5262519 () Bool)

(assert (=> b!4517312 m!5262519))

(assert (=> b!4517312 m!5261479))

(assert (=> b!4517312 m!5261479))

(declare-fun m!5262521 () Bool)

(assert (=> b!4517312 m!5262521))

(assert (=> b!4517314 m!5261479))

(assert (=> b!4517314 m!5261479))

(assert (=> b!4517314 m!5262521))

(assert (=> d!1390458 d!1390800))

(declare-fun b!4517320 () Bool)

(declare-fun e!2814324 () Option!11103)

(assert (=> b!4517320 (= e!2814324 None!11102)))

(declare-fun b!4517319 () Bool)

(assert (=> b!4517319 (= e!2814324 (getValueByKey!1083 (t!357721 lt!1694554) (_1!28824 lt!1694150)))))

(declare-fun b!4517317 () Bool)

(declare-fun e!2814323 () Option!11103)

(assert (=> b!4517317 (= e!2814323 (Some!11102 (_2!28824 (h!56484 lt!1694554))))))

(declare-fun b!4517318 () Bool)

(assert (=> b!4517318 (= e!2814323 e!2814324)))

(declare-fun c!770779 () Bool)

(assert (=> b!4517318 (= c!770779 (and ((_ is Cons!50635) lt!1694554) (not (= (_1!28824 (h!56484 lt!1694554)) (_1!28824 lt!1694150)))))))

(declare-fun d!1390802 () Bool)

(declare-fun c!770778 () Bool)

(assert (=> d!1390802 (= c!770778 (and ((_ is Cons!50635) lt!1694554) (= (_1!28824 (h!56484 lt!1694554)) (_1!28824 lt!1694150))))))

(assert (=> d!1390802 (= (getValueByKey!1083 lt!1694554 (_1!28824 lt!1694150)) e!2814323)))

(assert (= (and d!1390802 c!770778) b!4517317))

(assert (= (and d!1390802 (not c!770778)) b!4517318))

(assert (= (and b!4517318 c!770779) b!4517319))

(assert (= (and b!4517318 (not c!770779)) b!4517320))

(declare-fun m!5262531 () Bool)

(assert (=> b!4517319 m!5262531))

(assert (=> d!1390458 d!1390802))

(declare-fun d!1390808 () Bool)

(assert (=> d!1390808 (= (getValueByKey!1083 lt!1694554 (_1!28824 lt!1694150)) (Some!11102 (_2!28824 lt!1694150)))))

(declare-fun lt!1694974 () Unit!94398)

(declare-fun choose!29468 (List!50759 (_ BitVec 64) List!50758) Unit!94398)

(assert (=> d!1390808 (= lt!1694974 (choose!29468 lt!1694554 (_1!28824 lt!1694150) (_2!28824 lt!1694150)))))

(declare-fun e!2814330 () Bool)

(assert (=> d!1390808 e!2814330))

(declare-fun res!1879742 () Bool)

(assert (=> d!1390808 (=> (not res!1879742) (not e!2814330))))

(assert (=> d!1390808 (= res!1879742 (isStrictlySorted!427 lt!1694554))))

(assert (=> d!1390808 (= (lemmaContainsTupThenGetReturnValue!670 lt!1694554 (_1!28824 lt!1694150) (_2!28824 lt!1694150)) lt!1694974)))

(declare-fun b!4517330 () Bool)

(declare-fun res!1879743 () Bool)

(assert (=> b!4517330 (=> (not res!1879743) (not e!2814330))))

(assert (=> b!4517330 (= res!1879743 (containsKey!1770 lt!1694554 (_1!28824 lt!1694150)))))

(declare-fun b!4517331 () Bool)

(assert (=> b!4517331 (= e!2814330 (contains!13351 lt!1694554 (tuple2!51061 (_1!28824 lt!1694150) (_2!28824 lt!1694150))))))

(assert (= (and d!1390808 res!1879742) b!4517330))

(assert (= (and b!4517330 res!1879743) b!4517331))

(assert (=> d!1390808 m!5261473))

(declare-fun m!5262561 () Bool)

(assert (=> d!1390808 m!5262561))

(declare-fun m!5262563 () Bool)

(assert (=> d!1390808 m!5262563))

(declare-fun m!5262565 () Bool)

(assert (=> b!4517330 m!5262565))

(declare-fun m!5262567 () Bool)

(assert (=> b!4517331 m!5262567))

(assert (=> d!1390458 d!1390808))

(declare-fun b!4517352 () Bool)

(declare-fun e!2814343 () List!50759)

(declare-fun call!314669 () List!50759)

(assert (=> b!4517352 (= e!2814343 call!314669)))

(declare-fun b!4517353 () Bool)

(assert (=> b!4517353 (= e!2814343 call!314669)))

(declare-fun b!4517354 () Bool)

(declare-fun e!2814344 () List!50759)

(assert (=> b!4517354 (= e!2814344 (insertStrictlySorted!404 (t!357721 (toList!4319 lt!1694164)) (_1!28824 lt!1694150) (_2!28824 lt!1694150)))))

(declare-fun b!4517355 () Bool)

(declare-fun e!2814342 () Bool)

(declare-fun lt!1694977 () List!50759)

(assert (=> b!4517355 (= e!2814342 (contains!13351 lt!1694977 (tuple2!51061 (_1!28824 lt!1694150) (_2!28824 lt!1694150))))))

(declare-fun b!4517356 () Bool)

(declare-fun e!2814341 () List!50759)

(declare-fun call!314671 () List!50759)

(assert (=> b!4517356 (= e!2814341 call!314671)))

(declare-fun call!314670 () List!50759)

(declare-fun bm!314664 () Bool)

(declare-fun c!770790 () Bool)

(declare-fun $colon$colon!930 (List!50759 tuple2!51060) List!50759)

(assert (=> bm!314664 (= call!314670 ($colon$colon!930 e!2814344 (ite c!770790 (h!56484 (toList!4319 lt!1694164)) (tuple2!51061 (_1!28824 lt!1694150) (_2!28824 lt!1694150)))))))

(declare-fun c!770789 () Bool)

(assert (=> bm!314664 (= c!770789 c!770790)))

(declare-fun d!1390816 () Bool)

(assert (=> d!1390816 e!2814342))

(declare-fun res!1879748 () Bool)

(assert (=> d!1390816 (=> (not res!1879748) (not e!2814342))))

(assert (=> d!1390816 (= res!1879748 (isStrictlySorted!427 lt!1694977))))

(declare-fun e!2814345 () List!50759)

(assert (=> d!1390816 (= lt!1694977 e!2814345)))

(assert (=> d!1390816 (= c!770790 (and ((_ is Cons!50635) (toList!4319 lt!1694164)) (bvslt (_1!28824 (h!56484 (toList!4319 lt!1694164))) (_1!28824 lt!1694150))))))

(assert (=> d!1390816 (isStrictlySorted!427 (toList!4319 lt!1694164))))

(assert (=> d!1390816 (= (insertStrictlySorted!404 (toList!4319 lt!1694164) (_1!28824 lt!1694150) (_2!28824 lt!1694150)) lt!1694977)))

(declare-fun bm!314665 () Bool)

(assert (=> bm!314665 (= call!314669 call!314671)))

(declare-fun b!4517357 () Bool)

(declare-fun c!770792 () Bool)

(declare-fun c!770791 () Bool)

(assert (=> b!4517357 (= e!2814344 (ite c!770791 (t!357721 (toList!4319 lt!1694164)) (ite c!770792 (Cons!50635 (h!56484 (toList!4319 lt!1694164)) (t!357721 (toList!4319 lt!1694164))) Nil!50635)))))

(declare-fun b!4517358 () Bool)

(assert (=> b!4517358 (= e!2814345 call!314670)))

(declare-fun b!4517359 () Bool)

(declare-fun res!1879749 () Bool)

(assert (=> b!4517359 (=> (not res!1879749) (not e!2814342))))

(assert (=> b!4517359 (= res!1879749 (containsKey!1770 lt!1694977 (_1!28824 lt!1694150)))))

(declare-fun bm!314666 () Bool)

(assert (=> bm!314666 (= call!314671 call!314670)))

(declare-fun b!4517360 () Bool)

(assert (=> b!4517360 (= c!770792 (and ((_ is Cons!50635) (toList!4319 lt!1694164)) (bvsgt (_1!28824 (h!56484 (toList!4319 lt!1694164))) (_1!28824 lt!1694150))))))

(assert (=> b!4517360 (= e!2814341 e!2814343)))

(declare-fun b!4517361 () Bool)

(assert (=> b!4517361 (= e!2814345 e!2814341)))

(assert (=> b!4517361 (= c!770791 (and ((_ is Cons!50635) (toList!4319 lt!1694164)) (= (_1!28824 (h!56484 (toList!4319 lt!1694164))) (_1!28824 lt!1694150))))))

(assert (= (and d!1390816 c!770790) b!4517358))

(assert (= (and d!1390816 (not c!770790)) b!4517361))

(assert (= (and b!4517361 c!770791) b!4517356))

(assert (= (and b!4517361 (not c!770791)) b!4517360))

(assert (= (and b!4517360 c!770792) b!4517353))

(assert (= (and b!4517360 (not c!770792)) b!4517352))

(assert (= (or b!4517353 b!4517352) bm!314665))

(assert (= (or b!4517356 bm!314665) bm!314666))

(assert (= (or b!4517358 bm!314666) bm!314664))

(assert (= (and bm!314664 c!770789) b!4517354))

(assert (= (and bm!314664 (not c!770789)) b!4517357))

(assert (= (and d!1390816 res!1879748) b!4517359))

(assert (= (and b!4517359 res!1879749) b!4517355))

(declare-fun m!5262569 () Bool)

(assert (=> b!4517355 m!5262569))

(declare-fun m!5262571 () Bool)

(assert (=> d!1390816 m!5262571))

(assert (=> d!1390816 m!5261953))

(declare-fun m!5262573 () Bool)

(assert (=> b!4517354 m!5262573))

(declare-fun m!5262575 () Bool)

(assert (=> bm!314664 m!5262575))

(declare-fun m!5262577 () Bool)

(assert (=> b!4517359 m!5262577))

(assert (=> d!1390458 d!1390816))

(declare-fun d!1390820 () Bool)

(assert (=> d!1390820 (isDefined!8390 (getValueByKey!1083 (toList!4319 lm!1477) lt!1694171))))

(declare-fun lt!1694979 () Unit!94398)

(assert (=> d!1390820 (= lt!1694979 (choose!29464 (toList!4319 lm!1477) lt!1694171))))

(declare-fun e!2814347 () Bool)

(assert (=> d!1390820 e!2814347))

(declare-fun res!1879750 () Bool)

(assert (=> d!1390820 (=> (not res!1879750) (not e!2814347))))

(assert (=> d!1390820 (= res!1879750 (isStrictlySorted!427 (toList!4319 lm!1477)))))

(assert (=> d!1390820 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!987 (toList!4319 lm!1477) lt!1694171) lt!1694979)))

(declare-fun b!4517364 () Bool)

(assert (=> b!4517364 (= e!2814347 (containsKey!1770 (toList!4319 lm!1477) lt!1694171))))

(assert (= (and d!1390820 res!1879750) b!4517364))

(assert (=> d!1390820 m!5261075))

(assert (=> d!1390820 m!5261075))

(assert (=> d!1390820 m!5261081))

(declare-fun m!5262579 () Bool)

(assert (=> d!1390820 m!5262579))

(assert (=> d!1390820 m!5260827))

(assert (=> b!4517364 m!5261069))

(assert (=> b!4516485 d!1390820))

(assert (=> b!4516485 d!1390548))

(assert (=> b!4516485 d!1390550))

(assert (=> b!4516425 d!1390610))

(declare-fun d!1390822 () Bool)

(assert (=> d!1390822 (containsKey!1771 (toList!4320 lt!1694159) key!3287)))

(declare-fun lt!1694980 () Unit!94398)

(assert (=> d!1390822 (= lt!1694980 (choose!29467 (toList!4320 lt!1694159) key!3287))))

(assert (=> d!1390822 (invariantList!1013 (toList!4320 lt!1694159))))

(assert (=> d!1390822 (= (lemmaInGetKeysListThenContainsKey!459 (toList!4320 lt!1694159) key!3287) lt!1694980)))

(declare-fun bs!852247 () Bool)

(assert (= bs!852247 d!1390822))

(assert (=> bs!852247 m!5260979))

(declare-fun m!5262587 () Bool)

(assert (=> bs!852247 m!5262587))

(assert (=> bs!852247 m!5262259))

(assert (=> b!4516425 d!1390822))

(declare-fun d!1390824 () Bool)

(declare-fun lt!1694981 () Bool)

(assert (=> d!1390824 (= lt!1694981 (select (content!8345 (toList!4319 lt!1694553)) lt!1694154))))

(declare-fun e!2814349 () Bool)

(assert (=> d!1390824 (= lt!1694981 e!2814349)))

(declare-fun res!1879752 () Bool)

(assert (=> d!1390824 (=> (not res!1879752) (not e!2814349))))

(assert (=> d!1390824 (= res!1879752 ((_ is Cons!50635) (toList!4319 lt!1694553)))))

(assert (=> d!1390824 (= (contains!13351 (toList!4319 lt!1694553) lt!1694154) lt!1694981)))

(declare-fun b!4517365 () Bool)

(declare-fun e!2814348 () Bool)

(assert (=> b!4517365 (= e!2814349 e!2814348)))

(declare-fun res!1879751 () Bool)

(assert (=> b!4517365 (=> res!1879751 e!2814348)))

(assert (=> b!4517365 (= res!1879751 (= (h!56484 (toList!4319 lt!1694553)) lt!1694154))))

(declare-fun b!4517366 () Bool)

(assert (=> b!4517366 (= e!2814348 (contains!13351 (t!357721 (toList!4319 lt!1694553)) lt!1694154))))

(assert (= (and d!1390824 res!1879752) b!4517365))

(assert (= (and b!4517365 (not res!1879751)) b!4517366))

(declare-fun m!5262591 () Bool)

(assert (=> d!1390824 m!5262591))

(declare-fun m!5262593 () Bool)

(assert (=> d!1390824 m!5262593))

(declare-fun m!5262595 () Bool)

(assert (=> b!4517366 m!5262595))

(assert (=> b!4516655 d!1390824))

(declare-fun d!1390828 () Bool)

(assert (=> d!1390828 (= (tail!7727 (toList!4319 lm!1477)) (t!357721 (toList!4319 lm!1477)))))

(assert (=> d!1390290 d!1390828))

(declare-fun d!1390834 () Bool)

(declare-fun res!1879757 () Bool)

(declare-fun e!2814354 () Bool)

(assert (=> d!1390834 (=> res!1879757 e!2814354)))

(assert (=> d!1390834 (= res!1879757 ((_ is Nil!50634) (toList!4320 lt!1694147)))))

(assert (=> d!1390834 (= (forall!10253 (toList!4320 lt!1694147) (ite c!770605 lambda!171844 lambda!171846)) e!2814354)))

(declare-fun b!4517371 () Bool)

(declare-fun e!2814355 () Bool)

(assert (=> b!4517371 (= e!2814354 e!2814355)))

(declare-fun res!1879758 () Bool)

(assert (=> b!4517371 (=> (not res!1879758) (not e!2814355))))

(assert (=> b!4517371 (= res!1879758 (dynLambda!21156 (ite c!770605 lambda!171844 lambda!171846) (h!56483 (toList!4320 lt!1694147))))))

(declare-fun b!4517372 () Bool)

(assert (=> b!4517372 (= e!2814355 (forall!10253 (t!357720 (toList!4320 lt!1694147)) (ite c!770605 lambda!171844 lambda!171846)))))

(assert (= (and d!1390834 (not res!1879757)) b!4517371))

(assert (= (and b!4517371 res!1879758) b!4517372))

(declare-fun b_lambda!154445 () Bool)

(assert (=> (not b_lambda!154445) (not b!4517371)))

(declare-fun m!5262613 () Bool)

(assert (=> b!4517371 m!5262613))

(declare-fun m!5262615 () Bool)

(assert (=> b!4517372 m!5262615))

(assert (=> bm!314591 d!1390834))

(assert (=> b!4516382 d!1390698))

(assert (=> b!4516382 d!1390558))

(declare-fun d!1390842 () Bool)

(assert (=> d!1390842 (= (invariantList!1013 (toList!4320 lt!1694549)) (noDuplicatedKeys!258 (toList!4320 lt!1694549)))))

(declare-fun bs!852250 () Bool)

(assert (= bs!852250 d!1390842))

(declare-fun m!5262623 () Bool)

(assert (=> bs!852250 m!5262623))

(assert (=> d!1390452 d!1390842))

(declare-fun d!1390846 () Bool)

(declare-fun res!1879765 () Bool)

(declare-fun e!2814362 () Bool)

(assert (=> d!1390846 (=> res!1879765 e!2814362)))

(assert (=> d!1390846 (= res!1879765 ((_ is Nil!50635) (toList!4319 (+!1530 lt!1694164 lt!1694150))))))

(assert (=> d!1390846 (= (forall!10251 (toList!4319 (+!1530 lt!1694164 lt!1694150)) lambda!171839) e!2814362)))

(declare-fun b!4517379 () Bool)

(declare-fun e!2814363 () Bool)

(assert (=> b!4517379 (= e!2814362 e!2814363)))

(declare-fun res!1879766 () Bool)

(assert (=> b!4517379 (=> (not res!1879766) (not e!2814363))))

(assert (=> b!4517379 (= res!1879766 (dynLambda!21155 lambda!171839 (h!56484 (toList!4319 (+!1530 lt!1694164 lt!1694150)))))))

(declare-fun b!4517380 () Bool)

(assert (=> b!4517380 (= e!2814363 (forall!10251 (t!357721 (toList!4319 (+!1530 lt!1694164 lt!1694150))) lambda!171839))))

(assert (= (and d!1390846 (not res!1879765)) b!4517379))

(assert (= (and b!4517379 res!1879766) b!4517380))

(declare-fun b_lambda!154449 () Bool)

(assert (=> (not b_lambda!154449) (not b!4517379)))

(declare-fun m!5262631 () Bool)

(assert (=> b!4517379 m!5262631))

(declare-fun m!5262633 () Bool)

(assert (=> b!4517380 m!5262633))

(assert (=> d!1390452 d!1390846))

(declare-fun d!1390850 () Bool)

(assert (=> d!1390850 (= (get!16578 (getValueByKey!1083 (toList!4319 lt!1694164) hash!344)) (v!44686 (getValueByKey!1083 (toList!4319 lt!1694164) hash!344)))))

(assert (=> d!1390284 d!1390850))

(assert (=> d!1390284 d!1390620))

(assert (=> d!1390356 d!1390690))

(assert (=> d!1390356 d!1390722))

(declare-fun bs!852263 () Bool)

(declare-fun b!4517388 () Bool)

(assert (= bs!852263 (and b!4517388 b!4516808)))

(declare-fun lambda!171927 () Int)

(assert (=> bs!852263 (= (= (+!1532 lt!1694147 (h!56483 (_2!28824 lt!1694150))) (extractMap!1212 (t!357721 (toList!4319 lt!1694158)))) (= lambda!171927 lambda!171864))))

(declare-fun bs!852265 () Bool)

(assert (= bs!852265 (and b!4517388 b!4516662)))

(assert (=> bs!852265 (= (= (+!1532 lt!1694147 (h!56483 (_2!28824 lt!1694150))) lt!1694147) (= lambda!171927 lambda!171844))))

(declare-fun bs!852266 () Bool)

(assert (= bs!852266 (and b!4517388 b!4516807)))

(assert (=> bs!852266 (= (= (+!1532 lt!1694147 (h!56483 (_2!28824 lt!1694150))) (extractMap!1212 (t!357721 (toList!4319 lt!1694158)))) (= lambda!171927 lambda!171863))))

(declare-fun bs!852267 () Bool)

(assert (= bs!852267 (and b!4517388 d!1390358)))

(assert (=> bs!852267 (= (= (+!1532 lt!1694147 (h!56483 (_2!28824 lt!1694150))) lt!1694503) (= lambda!171927 lambda!171831))))

(declare-fun bs!852268 () Bool)

(assert (= bs!852268 (and b!4517388 d!1390568)))

(assert (=> bs!852268 (= (= (+!1532 lt!1694147 (h!56483 (_2!28824 lt!1694150))) lt!1694656) (= lambda!171927 lambda!171871))))

(declare-fun bs!852269 () Bool)

(assert (= bs!852269 (and b!4517388 b!4516815)))

(assert (=> bs!852269 (= (= (+!1532 lt!1694147 (h!56483 (_2!28824 lt!1694150))) (extractMap!1212 (t!357721 (toList!4319 lm!1477)))) (= lambda!171927 lambda!171869))))

(declare-fun bs!852270 () Bool)

(assert (= bs!852270 (and b!4517388 b!4516744)))

(assert (=> bs!852270 (= (= (+!1532 lt!1694147 (h!56483 (_2!28824 lt!1694150))) lt!1694614) (= lambda!171927 lambda!171856))))

(declare-fun bs!852271 () Bool)

(assert (= bs!852271 (and b!4517388 b!4516663)))

(assert (=> bs!852271 (= (= (+!1532 lt!1694147 (h!56483 (_2!28824 lt!1694150))) lt!1694574) (= lambda!171927 lambda!171846))))

(declare-fun bs!852272 () Bool)

(assert (= bs!852272 (and b!4517388 d!1390564)))

(assert (=> bs!852272 (= (= (+!1532 lt!1694147 (h!56483 (_2!28824 lt!1694150))) lt!1694634) (= lambda!171927 lambda!171866))))

(declare-fun bs!852274 () Bool)

(assert (= bs!852274 (and b!4517388 d!1390472)))

(assert (=> bs!852274 (= (= (+!1532 lt!1694147 (h!56483 (_2!28824 lt!1694150))) lt!1694564) (= lambda!171927 lambda!171847))))

(assert (=> bs!852269 (= (= (+!1532 lt!1694147 (h!56483 (_2!28824 lt!1694150))) lt!1694666) (= lambda!171927 lambda!171870))))

(declare-fun bs!852276 () Bool)

(assert (= bs!852276 (and b!4517388 d!1390694)))

(assert (=> bs!852276 (= (= (+!1532 lt!1694147 (h!56483 (_2!28824 lt!1694150))) lt!1694147) (= lambda!171927 lambda!171904))))

(assert (=> bs!852270 (= (= (+!1532 lt!1694147 (h!56483 (_2!28824 lt!1694150))) (extractMap!1212 (t!357721 (toList!4319 lt!1694164)))) (= lambda!171927 lambda!171855))))

(declare-fun bs!852279 () Bool)

(assert (= bs!852279 (and b!4517388 d!1390756)))

(assert (=> bs!852279 (= (= (+!1532 lt!1694147 (h!56483 (_2!28824 lt!1694150))) lt!1694172) (= lambda!171927 lambda!171920))))

(declare-fun bs!852281 () Bool)

(assert (= bs!852281 (and b!4517388 b!4516743)))

(assert (=> bs!852281 (= (= (+!1532 lt!1694147 (h!56483 (_2!28824 lt!1694150))) (extractMap!1212 (t!357721 (toList!4319 lt!1694164)))) (= lambda!171927 lambda!171854))))

(assert (=> bs!852263 (= (= (+!1532 lt!1694147 (h!56483 (_2!28824 lt!1694150))) lt!1694644) (= lambda!171927 lambda!171865))))

(declare-fun bs!852283 () Bool)

(assert (= bs!852283 (and b!4517388 b!4516604)))

(assert (=> bs!852283 (= (= (+!1532 lt!1694147 (h!56483 (_2!28824 lt!1694150))) lt!1694513) (= lambda!171927 lambda!171830))))

(declare-fun bs!852285 () Bool)

(assert (= bs!852285 (and b!4517388 d!1390326)))

(assert (=> bs!852285 (not (= lambda!171927 lambda!171772))))

(declare-fun bs!852287 () Bool)

(assert (= bs!852287 (and b!4517388 d!1390526)))

(assert (=> bs!852287 (= (= (+!1532 lt!1694147 (h!56483 (_2!28824 lt!1694150))) lt!1694604) (= lambda!171927 lambda!171857))))

(assert (=> bs!852283 (= (= (+!1532 lt!1694147 (h!56483 (_2!28824 lt!1694150))) lt!1694172) (= lambda!171927 lambda!171829))))

(declare-fun bs!852289 () Bool)

(assert (= bs!852289 (and b!4517388 b!4516603)))

(assert (=> bs!852289 (= (= (+!1532 lt!1694147 (h!56483 (_2!28824 lt!1694150))) lt!1694172) (= lambda!171927 lambda!171828))))

(declare-fun bs!852291 () Bool)

(assert (= bs!852291 (and b!4517388 b!4516814)))

(assert (=> bs!852291 (= (= (+!1532 lt!1694147 (h!56483 (_2!28824 lt!1694150))) (extractMap!1212 (t!357721 (toList!4319 lm!1477)))) (= lambda!171927 lambda!171868))))

(assert (=> bs!852271 (= (= (+!1532 lt!1694147 (h!56483 (_2!28824 lt!1694150))) lt!1694147) (= lambda!171927 lambda!171845))))

(assert (=> b!4517388 true))

(declare-fun bs!852296 () Bool)

(declare-fun b!4517389 () Bool)

(assert (= bs!852296 (and b!4517389 b!4516662)))

(declare-fun lambda!171929 () Int)

(assert (=> bs!852296 (= (= (+!1532 lt!1694147 (h!56483 (_2!28824 lt!1694150))) lt!1694147) (= lambda!171929 lambda!171844))))

(declare-fun bs!852297 () Bool)

(assert (= bs!852297 (and b!4517389 b!4516807)))

(assert (=> bs!852297 (= (= (+!1532 lt!1694147 (h!56483 (_2!28824 lt!1694150))) (extractMap!1212 (t!357721 (toList!4319 lt!1694158)))) (= lambda!171929 lambda!171863))))

(declare-fun bs!852298 () Bool)

(assert (= bs!852298 (and b!4517389 d!1390358)))

(assert (=> bs!852298 (= (= (+!1532 lt!1694147 (h!56483 (_2!28824 lt!1694150))) lt!1694503) (= lambda!171929 lambda!171831))))

(declare-fun bs!852299 () Bool)

(assert (= bs!852299 (and b!4517389 d!1390568)))

(assert (=> bs!852299 (= (= (+!1532 lt!1694147 (h!56483 (_2!28824 lt!1694150))) lt!1694656) (= lambda!171929 lambda!171871))))

(declare-fun bs!852300 () Bool)

(assert (= bs!852300 (and b!4517389 b!4516815)))

(assert (=> bs!852300 (= (= (+!1532 lt!1694147 (h!56483 (_2!28824 lt!1694150))) (extractMap!1212 (t!357721 (toList!4319 lm!1477)))) (= lambda!171929 lambda!171869))))

(declare-fun bs!852301 () Bool)

(assert (= bs!852301 (and b!4517389 b!4516744)))

(assert (=> bs!852301 (= (= (+!1532 lt!1694147 (h!56483 (_2!28824 lt!1694150))) lt!1694614) (= lambda!171929 lambda!171856))))

(declare-fun bs!852302 () Bool)

(assert (= bs!852302 (and b!4517389 b!4516663)))

(assert (=> bs!852302 (= (= (+!1532 lt!1694147 (h!56483 (_2!28824 lt!1694150))) lt!1694574) (= lambda!171929 lambda!171846))))

(declare-fun bs!852303 () Bool)

(assert (= bs!852303 (and b!4517389 d!1390564)))

(assert (=> bs!852303 (= (= (+!1532 lt!1694147 (h!56483 (_2!28824 lt!1694150))) lt!1694634) (= lambda!171929 lambda!171866))))

(declare-fun bs!852304 () Bool)

(assert (= bs!852304 (and b!4517389 d!1390472)))

(assert (=> bs!852304 (= (= (+!1532 lt!1694147 (h!56483 (_2!28824 lt!1694150))) lt!1694564) (= lambda!171929 lambda!171847))))

(assert (=> bs!852300 (= (= (+!1532 lt!1694147 (h!56483 (_2!28824 lt!1694150))) lt!1694666) (= lambda!171929 lambda!171870))))

(declare-fun bs!852305 () Bool)

(assert (= bs!852305 (and b!4517389 d!1390694)))

(assert (=> bs!852305 (= (= (+!1532 lt!1694147 (h!56483 (_2!28824 lt!1694150))) lt!1694147) (= lambda!171929 lambda!171904))))

(assert (=> bs!852301 (= (= (+!1532 lt!1694147 (h!56483 (_2!28824 lt!1694150))) (extractMap!1212 (t!357721 (toList!4319 lt!1694164)))) (= lambda!171929 lambda!171855))))

(declare-fun bs!852306 () Bool)

(assert (= bs!852306 (and b!4517389 d!1390756)))

(assert (=> bs!852306 (= (= (+!1532 lt!1694147 (h!56483 (_2!28824 lt!1694150))) lt!1694172) (= lambda!171929 lambda!171920))))

(declare-fun bs!852307 () Bool)

(assert (= bs!852307 (and b!4517389 b!4517388)))

(assert (=> bs!852307 (= lambda!171929 lambda!171927)))

(declare-fun bs!852308 () Bool)

(assert (= bs!852308 (and b!4517389 b!4516808)))

(assert (=> bs!852308 (= (= (+!1532 lt!1694147 (h!56483 (_2!28824 lt!1694150))) (extractMap!1212 (t!357721 (toList!4319 lt!1694158)))) (= lambda!171929 lambda!171864))))

(declare-fun bs!852309 () Bool)

(assert (= bs!852309 (and b!4517389 b!4516743)))

(assert (=> bs!852309 (= (= (+!1532 lt!1694147 (h!56483 (_2!28824 lt!1694150))) (extractMap!1212 (t!357721 (toList!4319 lt!1694164)))) (= lambda!171929 lambda!171854))))

(assert (=> bs!852308 (= (= (+!1532 lt!1694147 (h!56483 (_2!28824 lt!1694150))) lt!1694644) (= lambda!171929 lambda!171865))))

(declare-fun bs!852310 () Bool)

(assert (= bs!852310 (and b!4517389 b!4516604)))

(assert (=> bs!852310 (= (= (+!1532 lt!1694147 (h!56483 (_2!28824 lt!1694150))) lt!1694513) (= lambda!171929 lambda!171830))))

(declare-fun bs!852311 () Bool)

(assert (= bs!852311 (and b!4517389 d!1390326)))

(assert (=> bs!852311 (not (= lambda!171929 lambda!171772))))

(declare-fun bs!852312 () Bool)

(assert (= bs!852312 (and b!4517389 d!1390526)))

(assert (=> bs!852312 (= (= (+!1532 lt!1694147 (h!56483 (_2!28824 lt!1694150))) lt!1694604) (= lambda!171929 lambda!171857))))

(assert (=> bs!852310 (= (= (+!1532 lt!1694147 (h!56483 (_2!28824 lt!1694150))) lt!1694172) (= lambda!171929 lambda!171829))))

(declare-fun bs!852313 () Bool)

(assert (= bs!852313 (and b!4517389 b!4516603)))

(assert (=> bs!852313 (= (= (+!1532 lt!1694147 (h!56483 (_2!28824 lt!1694150))) lt!1694172) (= lambda!171929 lambda!171828))))

(declare-fun bs!852314 () Bool)

(assert (= bs!852314 (and b!4517389 b!4516814)))

(assert (=> bs!852314 (= (= (+!1532 lt!1694147 (h!56483 (_2!28824 lt!1694150))) (extractMap!1212 (t!357721 (toList!4319 lm!1477)))) (= lambda!171929 lambda!171868))))

(assert (=> bs!852302 (= (= (+!1532 lt!1694147 (h!56483 (_2!28824 lt!1694150))) lt!1694147) (= lambda!171929 lambda!171845))))

(assert (=> b!4517389 true))

(declare-fun lt!1695017 () ListMap!3581)

(declare-fun lambda!171931 () Int)

(assert (=> bs!852296 (= (= lt!1695017 lt!1694147) (= lambda!171931 lambda!171844))))

(assert (=> bs!852297 (= (= lt!1695017 (extractMap!1212 (t!357721 (toList!4319 lt!1694158)))) (= lambda!171931 lambda!171863))))

(assert (=> bs!852298 (= (= lt!1695017 lt!1694503) (= lambda!171931 lambda!171831))))

(assert (=> bs!852299 (= (= lt!1695017 lt!1694656) (= lambda!171931 lambda!171871))))

(assert (=> bs!852301 (= (= lt!1695017 lt!1694614) (= lambda!171931 lambda!171856))))

(assert (=> bs!852302 (= (= lt!1695017 lt!1694574) (= lambda!171931 lambda!171846))))

(assert (=> bs!852303 (= (= lt!1695017 lt!1694634) (= lambda!171931 lambda!171866))))

(assert (=> bs!852304 (= (= lt!1695017 lt!1694564) (= lambda!171931 lambda!171847))))

(assert (=> bs!852300 (= (= lt!1695017 lt!1694666) (= lambda!171931 lambda!171870))))

(assert (=> bs!852305 (= (= lt!1695017 lt!1694147) (= lambda!171931 lambda!171904))))

(assert (=> bs!852301 (= (= lt!1695017 (extractMap!1212 (t!357721 (toList!4319 lt!1694164)))) (= lambda!171931 lambda!171855))))

(assert (=> bs!852306 (= (= lt!1695017 lt!1694172) (= lambda!171931 lambda!171920))))

(assert (=> bs!852307 (= (= lt!1695017 (+!1532 lt!1694147 (h!56483 (_2!28824 lt!1694150)))) (= lambda!171931 lambda!171927))))

(assert (=> bs!852308 (= (= lt!1695017 (extractMap!1212 (t!357721 (toList!4319 lt!1694158)))) (= lambda!171931 lambda!171864))))

(assert (=> bs!852309 (= (= lt!1695017 (extractMap!1212 (t!357721 (toList!4319 lt!1694164)))) (= lambda!171931 lambda!171854))))

(assert (=> bs!852308 (= (= lt!1695017 lt!1694644) (= lambda!171931 lambda!171865))))

(assert (=> bs!852310 (= (= lt!1695017 lt!1694513) (= lambda!171931 lambda!171830))))

(assert (=> bs!852311 (not (= lambda!171931 lambda!171772))))

(assert (=> bs!852312 (= (= lt!1695017 lt!1694604) (= lambda!171931 lambda!171857))))

(assert (=> bs!852310 (= (= lt!1695017 lt!1694172) (= lambda!171931 lambda!171829))))

(assert (=> bs!852313 (= (= lt!1695017 lt!1694172) (= lambda!171931 lambda!171828))))

(assert (=> b!4517389 (= (= lt!1695017 (+!1532 lt!1694147 (h!56483 (_2!28824 lt!1694150)))) (= lambda!171931 lambda!171929))))

(assert (=> bs!852300 (= (= lt!1695017 (extractMap!1212 (t!357721 (toList!4319 lm!1477)))) (= lambda!171931 lambda!171869))))

(assert (=> bs!852314 (= (= lt!1695017 (extractMap!1212 (t!357721 (toList!4319 lm!1477)))) (= lambda!171931 lambda!171868))))

(assert (=> bs!852302 (= (= lt!1695017 lt!1694147) (= lambda!171931 lambda!171845))))

(assert (=> b!4517389 true))

(declare-fun bs!852330 () Bool)

(declare-fun d!1390852 () Bool)

(assert (= bs!852330 (and d!1390852 b!4517389)))

(declare-fun lt!1695007 () ListMap!3581)

(declare-fun lambda!171933 () Int)

(assert (=> bs!852330 (= (= lt!1695007 lt!1695017) (= lambda!171933 lambda!171931))))

(declare-fun bs!852331 () Bool)

(assert (= bs!852331 (and d!1390852 b!4516662)))

(assert (=> bs!852331 (= (= lt!1695007 lt!1694147) (= lambda!171933 lambda!171844))))

(declare-fun bs!852332 () Bool)

(assert (= bs!852332 (and d!1390852 b!4516807)))

(assert (=> bs!852332 (= (= lt!1695007 (extractMap!1212 (t!357721 (toList!4319 lt!1694158)))) (= lambda!171933 lambda!171863))))

(declare-fun bs!852333 () Bool)

(assert (= bs!852333 (and d!1390852 d!1390358)))

(assert (=> bs!852333 (= (= lt!1695007 lt!1694503) (= lambda!171933 lambda!171831))))

(declare-fun bs!852334 () Bool)

(assert (= bs!852334 (and d!1390852 d!1390568)))

(assert (=> bs!852334 (= (= lt!1695007 lt!1694656) (= lambda!171933 lambda!171871))))

(declare-fun bs!852335 () Bool)

(assert (= bs!852335 (and d!1390852 b!4516744)))

(assert (=> bs!852335 (= (= lt!1695007 lt!1694614) (= lambda!171933 lambda!171856))))

(declare-fun bs!852336 () Bool)

(assert (= bs!852336 (and d!1390852 b!4516663)))

(assert (=> bs!852336 (= (= lt!1695007 lt!1694574) (= lambda!171933 lambda!171846))))

(declare-fun bs!852337 () Bool)

(assert (= bs!852337 (and d!1390852 d!1390564)))

(assert (=> bs!852337 (= (= lt!1695007 lt!1694634) (= lambda!171933 lambda!171866))))

(declare-fun bs!852338 () Bool)

(assert (= bs!852338 (and d!1390852 d!1390472)))

(assert (=> bs!852338 (= (= lt!1695007 lt!1694564) (= lambda!171933 lambda!171847))))

(declare-fun bs!852339 () Bool)

(assert (= bs!852339 (and d!1390852 b!4516815)))

(assert (=> bs!852339 (= (= lt!1695007 lt!1694666) (= lambda!171933 lambda!171870))))

(declare-fun bs!852340 () Bool)

(assert (= bs!852340 (and d!1390852 d!1390694)))

(assert (=> bs!852340 (= (= lt!1695007 lt!1694147) (= lambda!171933 lambda!171904))))

(assert (=> bs!852335 (= (= lt!1695007 (extractMap!1212 (t!357721 (toList!4319 lt!1694164)))) (= lambda!171933 lambda!171855))))

(declare-fun bs!852341 () Bool)

(assert (= bs!852341 (and d!1390852 d!1390756)))

(assert (=> bs!852341 (= (= lt!1695007 lt!1694172) (= lambda!171933 lambda!171920))))

(declare-fun bs!852342 () Bool)

(assert (= bs!852342 (and d!1390852 b!4517388)))

(assert (=> bs!852342 (= (= lt!1695007 (+!1532 lt!1694147 (h!56483 (_2!28824 lt!1694150)))) (= lambda!171933 lambda!171927))))

(declare-fun bs!852343 () Bool)

(assert (= bs!852343 (and d!1390852 b!4516808)))

(assert (=> bs!852343 (= (= lt!1695007 (extractMap!1212 (t!357721 (toList!4319 lt!1694158)))) (= lambda!171933 lambda!171864))))

(declare-fun bs!852344 () Bool)

(assert (= bs!852344 (and d!1390852 b!4516743)))

(assert (=> bs!852344 (= (= lt!1695007 (extractMap!1212 (t!357721 (toList!4319 lt!1694164)))) (= lambda!171933 lambda!171854))))

(assert (=> bs!852343 (= (= lt!1695007 lt!1694644) (= lambda!171933 lambda!171865))))

(declare-fun bs!852345 () Bool)

(assert (= bs!852345 (and d!1390852 b!4516604)))

(assert (=> bs!852345 (= (= lt!1695007 lt!1694513) (= lambda!171933 lambda!171830))))

(declare-fun bs!852346 () Bool)

(assert (= bs!852346 (and d!1390852 d!1390326)))

(assert (=> bs!852346 (not (= lambda!171933 lambda!171772))))

(declare-fun bs!852347 () Bool)

(assert (= bs!852347 (and d!1390852 d!1390526)))

(assert (=> bs!852347 (= (= lt!1695007 lt!1694604) (= lambda!171933 lambda!171857))))

(assert (=> bs!852345 (= (= lt!1695007 lt!1694172) (= lambda!171933 lambda!171829))))

(declare-fun bs!852349 () Bool)

(assert (= bs!852349 (and d!1390852 b!4516603)))

(assert (=> bs!852349 (= (= lt!1695007 lt!1694172) (= lambda!171933 lambda!171828))))

(assert (=> bs!852330 (= (= lt!1695007 (+!1532 lt!1694147 (h!56483 (_2!28824 lt!1694150)))) (= lambda!171933 lambda!171929))))

(assert (=> bs!852339 (= (= lt!1695007 (extractMap!1212 (t!357721 (toList!4319 lm!1477)))) (= lambda!171933 lambda!171869))))

(declare-fun bs!852353 () Bool)

(assert (= bs!852353 (and d!1390852 b!4516814)))

(assert (=> bs!852353 (= (= lt!1695007 (extractMap!1212 (t!357721 (toList!4319 lm!1477)))) (= lambda!171933 lambda!171868))))

(assert (=> bs!852336 (= (= lt!1695007 lt!1694147) (= lambda!171933 lambda!171845))))

(assert (=> d!1390852 true))

(declare-fun bm!314670 () Bool)

(declare-fun c!770795 () Bool)

(declare-fun call!314676 () Bool)

(assert (=> bm!314670 (= call!314676 (forall!10253 (toList!4320 (+!1532 lt!1694147 (h!56483 (_2!28824 lt!1694150)))) (ite c!770795 lambda!171927 lambda!171929)))))

(declare-fun bm!314671 () Bool)

(declare-fun call!314675 () Bool)

(assert (=> bm!314671 (= call!314675 (forall!10253 (toList!4320 (+!1532 lt!1694147 (h!56483 (_2!28824 lt!1694150)))) (ite c!770795 lambda!171927 lambda!171931)))))

(declare-fun b!4517386 () Bool)

(declare-fun e!2814369 () Bool)

(assert (=> b!4517386 (= e!2814369 (forall!10253 (toList!4320 (+!1532 lt!1694147 (h!56483 (_2!28824 lt!1694150)))) lambda!171931))))

(declare-fun bm!314672 () Bool)

(declare-fun call!314677 () Unit!94398)

(assert (=> bm!314672 (= call!314677 (lemmaContainsAllItsOwnKeys!334 (+!1532 lt!1694147 (h!56483 (_2!28824 lt!1694150)))))))

(declare-fun b!4517387 () Bool)

(declare-fun res!1879772 () Bool)

(declare-fun e!2814368 () Bool)

(assert (=> b!4517387 (=> (not res!1879772) (not e!2814368))))

(assert (=> b!4517387 (= res!1879772 (forall!10253 (toList!4320 (+!1532 lt!1694147 (h!56483 (_2!28824 lt!1694150)))) lambda!171933))))

(assert (=> d!1390852 e!2814368))

(declare-fun res!1879771 () Bool)

(assert (=> d!1390852 (=> (not res!1879771) (not e!2814368))))

(assert (=> d!1390852 (= res!1879771 (forall!10253 (t!357720 (_2!28824 lt!1694150)) lambda!171933))))

(declare-fun e!2814367 () ListMap!3581)

(assert (=> d!1390852 (= lt!1695007 e!2814367)))

(assert (=> d!1390852 (= c!770795 ((_ is Nil!50634) (t!357720 (_2!28824 lt!1694150))))))

(assert (=> d!1390852 (noDuplicateKeys!1156 (t!357720 (_2!28824 lt!1694150)))))

(assert (=> d!1390852 (= (addToMapMapFromBucket!683 (t!357720 (_2!28824 lt!1694150)) (+!1532 lt!1694147 (h!56483 (_2!28824 lt!1694150)))) lt!1695007)))

(assert (=> b!4517388 (= e!2814367 (+!1532 lt!1694147 (h!56483 (_2!28824 lt!1694150))))))

(declare-fun lt!1695021 () Unit!94398)

(assert (=> b!4517388 (= lt!1695021 call!314677)))

(assert (=> b!4517388 call!314676))

(declare-fun lt!1695011 () Unit!94398)

(assert (=> b!4517388 (= lt!1695011 lt!1695021)))

(assert (=> b!4517388 call!314675))

(declare-fun lt!1695009 () Unit!94398)

(declare-fun Unit!94580 () Unit!94398)

(assert (=> b!4517388 (= lt!1695009 Unit!94580)))

(assert (=> b!4517389 (= e!2814367 lt!1695017)))

(declare-fun lt!1695024 () ListMap!3581)

(assert (=> b!4517389 (= lt!1695024 (+!1532 (+!1532 lt!1694147 (h!56483 (_2!28824 lt!1694150))) (h!56483 (t!357720 (_2!28824 lt!1694150)))))))

(assert (=> b!4517389 (= lt!1695017 (addToMapMapFromBucket!683 (t!357720 (t!357720 (_2!28824 lt!1694150))) (+!1532 (+!1532 lt!1694147 (h!56483 (_2!28824 lt!1694150))) (h!56483 (t!357720 (_2!28824 lt!1694150))))))))

(declare-fun lt!1695006 () Unit!94398)

(assert (=> b!4517389 (= lt!1695006 call!314677)))

(assert (=> b!4517389 call!314676))

(declare-fun lt!1695019 () Unit!94398)

(assert (=> b!4517389 (= lt!1695019 lt!1695006)))

(assert (=> b!4517389 (forall!10253 (toList!4320 lt!1695024) lambda!171931)))

(declare-fun lt!1695022 () Unit!94398)

(declare-fun Unit!94581 () Unit!94398)

(assert (=> b!4517389 (= lt!1695022 Unit!94581)))

(assert (=> b!4517389 (forall!10253 (t!357720 (t!357720 (_2!28824 lt!1694150))) lambda!171931)))

(declare-fun lt!1695008 () Unit!94398)

(declare-fun Unit!94582 () Unit!94398)

(assert (=> b!4517389 (= lt!1695008 Unit!94582)))

(declare-fun lt!1695016 () Unit!94398)

(declare-fun Unit!94583 () Unit!94398)

(assert (=> b!4517389 (= lt!1695016 Unit!94583)))

(declare-fun lt!1695023 () Unit!94398)

(assert (=> b!4517389 (= lt!1695023 (forallContained!2505 (toList!4320 lt!1695024) lambda!171931 (h!56483 (t!357720 (_2!28824 lt!1694150)))))))

(assert (=> b!4517389 (contains!13353 lt!1695024 (_1!28823 (h!56483 (t!357720 (_2!28824 lt!1694150)))))))

(declare-fun lt!1695020 () Unit!94398)

(declare-fun Unit!94584 () Unit!94398)

(assert (=> b!4517389 (= lt!1695020 Unit!94584)))

(assert (=> b!4517389 (contains!13353 lt!1695017 (_1!28823 (h!56483 (t!357720 (_2!28824 lt!1694150)))))))

(declare-fun lt!1695012 () Unit!94398)

(declare-fun Unit!94585 () Unit!94398)

(assert (=> b!4517389 (= lt!1695012 Unit!94585)))

(assert (=> b!4517389 (forall!10253 (t!357720 (_2!28824 lt!1694150)) lambda!171931)))

(declare-fun lt!1695014 () Unit!94398)

(declare-fun Unit!94586 () Unit!94398)

(assert (=> b!4517389 (= lt!1695014 Unit!94586)))

(assert (=> b!4517389 (forall!10253 (toList!4320 lt!1695024) lambda!171931)))

(declare-fun lt!1695015 () Unit!94398)

(declare-fun Unit!94587 () Unit!94398)

(assert (=> b!4517389 (= lt!1695015 Unit!94587)))

(declare-fun lt!1695018 () Unit!94398)

(declare-fun Unit!94588 () Unit!94398)

(assert (=> b!4517389 (= lt!1695018 Unit!94588)))

(declare-fun lt!1695010 () Unit!94398)

(assert (=> b!4517389 (= lt!1695010 (addForallContainsKeyThenBeforeAdding!334 (+!1532 lt!1694147 (h!56483 (_2!28824 lt!1694150))) lt!1695017 (_1!28823 (h!56483 (t!357720 (_2!28824 lt!1694150)))) (_2!28823 (h!56483 (t!357720 (_2!28824 lt!1694150))))))))

(assert (=> b!4517389 (forall!10253 (toList!4320 (+!1532 lt!1694147 (h!56483 (_2!28824 lt!1694150)))) lambda!171931)))

(declare-fun lt!1695005 () Unit!94398)

(assert (=> b!4517389 (= lt!1695005 lt!1695010)))

(assert (=> b!4517389 call!314675))

(declare-fun lt!1695025 () Unit!94398)

(declare-fun Unit!94589 () Unit!94398)

(assert (=> b!4517389 (= lt!1695025 Unit!94589)))

(declare-fun res!1879770 () Bool)

(assert (=> b!4517389 (= res!1879770 (forall!10253 (t!357720 (_2!28824 lt!1694150)) lambda!171931))))

(assert (=> b!4517389 (=> (not res!1879770) (not e!2814369))))

(assert (=> b!4517389 e!2814369))

(declare-fun lt!1695013 () Unit!94398)

(declare-fun Unit!94590 () Unit!94398)

(assert (=> b!4517389 (= lt!1695013 Unit!94590)))

(declare-fun b!4517390 () Bool)

(assert (=> b!4517390 (= e!2814368 (invariantList!1013 (toList!4320 lt!1695007)))))

(assert (= (and d!1390852 c!770795) b!4517388))

(assert (= (and d!1390852 (not c!770795)) b!4517389))

(assert (= (and b!4517389 res!1879770) b!4517386))

(assert (= (or b!4517388 b!4517389) bm!314671))

(assert (= (or b!4517388 b!4517389) bm!314670))

(assert (= (or b!4517388 b!4517389) bm!314672))

(assert (= (and d!1390852 res!1879771) b!4517387))

(assert (= (and b!4517387 res!1879772) b!4517390))

(declare-fun m!5262679 () Bool)

(assert (=> b!4517390 m!5262679))

(declare-fun m!5262683 () Bool)

(assert (=> b!4517389 m!5262683))

(declare-fun m!5262685 () Bool)

(assert (=> b!4517389 m!5262685))

(declare-fun m!5262687 () Bool)

(assert (=> b!4517389 m!5262687))

(declare-fun m!5262689 () Bool)

(assert (=> b!4517389 m!5262689))

(assert (=> b!4517389 m!5261523))

(declare-fun m!5262691 () Bool)

(assert (=> b!4517389 m!5262691))

(assert (=> b!4517389 m!5262683))

(declare-fun m!5262693 () Bool)

(assert (=> b!4517389 m!5262693))

(assert (=> b!4517389 m!5262687))

(declare-fun m!5262695 () Bool)

(assert (=> b!4517389 m!5262695))

(assert (=> b!4517389 m!5261523))

(declare-fun m!5262697 () Bool)

(assert (=> b!4517389 m!5262697))

(declare-fun m!5262701 () Bool)

(assert (=> b!4517389 m!5262701))

(assert (=> b!4517389 m!5262697))

(declare-fun m!5262705 () Bool)

(assert (=> b!4517389 m!5262705))

(declare-fun m!5262707 () Bool)

(assert (=> d!1390852 m!5262707))

(assert (=> d!1390852 m!5261379))

(declare-fun m!5262709 () Bool)

(assert (=> bm!314670 m!5262709))

(assert (=> bm!314672 m!5261523))

(declare-fun m!5262711 () Bool)

(assert (=> bm!314672 m!5262711))

(declare-fun m!5262713 () Bool)

(assert (=> b!4517387 m!5262713))

(assert (=> b!4517386 m!5262689))

(declare-fun m!5262717 () Bool)

(assert (=> bm!314671 m!5262717))

(assert (=> b!4516663 d!1390852))

(declare-fun bs!852417 () Bool)

(declare-fun d!1390866 () Bool)

(assert (= bs!852417 (and d!1390866 b!4517389)))

(declare-fun lambda!171943 () Int)

(assert (=> bs!852417 (= (= lt!1694574 lt!1695017) (= lambda!171943 lambda!171931))))

(declare-fun bs!852418 () Bool)

(assert (= bs!852418 (and d!1390866 b!4516662)))

(assert (=> bs!852418 (= (= lt!1694574 lt!1694147) (= lambda!171943 lambda!171844))))

(declare-fun bs!852419 () Bool)

(assert (= bs!852419 (and d!1390866 b!4516807)))

(assert (=> bs!852419 (= (= lt!1694574 (extractMap!1212 (t!357721 (toList!4319 lt!1694158)))) (= lambda!171943 lambda!171863))))

(declare-fun bs!852420 () Bool)

(assert (= bs!852420 (and d!1390866 d!1390358)))

(assert (=> bs!852420 (= (= lt!1694574 lt!1694503) (= lambda!171943 lambda!171831))))

(declare-fun bs!852421 () Bool)

(assert (= bs!852421 (and d!1390866 d!1390568)))

(assert (=> bs!852421 (= (= lt!1694574 lt!1694656) (= lambda!171943 lambda!171871))))

(declare-fun bs!852422 () Bool)

(assert (= bs!852422 (and d!1390866 b!4516744)))

(assert (=> bs!852422 (= (= lt!1694574 lt!1694614) (= lambda!171943 lambda!171856))))

(declare-fun bs!852423 () Bool)

(assert (= bs!852423 (and d!1390866 b!4516663)))

(assert (=> bs!852423 (= lambda!171943 lambda!171846)))

(declare-fun bs!852424 () Bool)

(assert (= bs!852424 (and d!1390866 d!1390564)))

(assert (=> bs!852424 (= (= lt!1694574 lt!1694634) (= lambda!171943 lambda!171866))))

(declare-fun bs!852425 () Bool)

(assert (= bs!852425 (and d!1390866 d!1390472)))

(assert (=> bs!852425 (= (= lt!1694574 lt!1694564) (= lambda!171943 lambda!171847))))

(declare-fun bs!852426 () Bool)

(assert (= bs!852426 (and d!1390866 b!4516815)))

(assert (=> bs!852426 (= (= lt!1694574 lt!1694666) (= lambda!171943 lambda!171870))))

(declare-fun bs!852427 () Bool)

(assert (= bs!852427 (and d!1390866 d!1390694)))

(assert (=> bs!852427 (= (= lt!1694574 lt!1694147) (= lambda!171943 lambda!171904))))

(assert (=> bs!852422 (= (= lt!1694574 (extractMap!1212 (t!357721 (toList!4319 lt!1694164)))) (= lambda!171943 lambda!171855))))

(declare-fun bs!852428 () Bool)

(assert (= bs!852428 (and d!1390866 d!1390756)))

(assert (=> bs!852428 (= (= lt!1694574 lt!1694172) (= lambda!171943 lambda!171920))))

(declare-fun bs!852429 () Bool)

(assert (= bs!852429 (and d!1390866 d!1390852)))

(assert (=> bs!852429 (= (= lt!1694574 lt!1695007) (= lambda!171943 lambda!171933))))

(declare-fun bs!852430 () Bool)

(assert (= bs!852430 (and d!1390866 b!4517388)))

(assert (=> bs!852430 (= (= lt!1694574 (+!1532 lt!1694147 (h!56483 (_2!28824 lt!1694150)))) (= lambda!171943 lambda!171927))))

(declare-fun bs!852431 () Bool)

(assert (= bs!852431 (and d!1390866 b!4516808)))

(assert (=> bs!852431 (= (= lt!1694574 (extractMap!1212 (t!357721 (toList!4319 lt!1694158)))) (= lambda!171943 lambda!171864))))

(declare-fun bs!852432 () Bool)

(assert (= bs!852432 (and d!1390866 b!4516743)))

(assert (=> bs!852432 (= (= lt!1694574 (extractMap!1212 (t!357721 (toList!4319 lt!1694164)))) (= lambda!171943 lambda!171854))))

(assert (=> bs!852431 (= (= lt!1694574 lt!1694644) (= lambda!171943 lambda!171865))))

(declare-fun bs!852433 () Bool)

(assert (= bs!852433 (and d!1390866 b!4516604)))

(assert (=> bs!852433 (= (= lt!1694574 lt!1694513) (= lambda!171943 lambda!171830))))

(declare-fun bs!852434 () Bool)

(assert (= bs!852434 (and d!1390866 d!1390326)))

(assert (=> bs!852434 (not (= lambda!171943 lambda!171772))))

(declare-fun bs!852435 () Bool)

(assert (= bs!852435 (and d!1390866 d!1390526)))

(assert (=> bs!852435 (= (= lt!1694574 lt!1694604) (= lambda!171943 lambda!171857))))

(assert (=> bs!852433 (= (= lt!1694574 lt!1694172) (= lambda!171943 lambda!171829))))

(declare-fun bs!852436 () Bool)

(assert (= bs!852436 (and d!1390866 b!4516603)))

(assert (=> bs!852436 (= (= lt!1694574 lt!1694172) (= lambda!171943 lambda!171828))))

(assert (=> bs!852417 (= (= lt!1694574 (+!1532 lt!1694147 (h!56483 (_2!28824 lt!1694150)))) (= lambda!171943 lambda!171929))))

(assert (=> bs!852426 (= (= lt!1694574 (extractMap!1212 (t!357721 (toList!4319 lm!1477)))) (= lambda!171943 lambda!171869))))

(declare-fun bs!852437 () Bool)

(assert (= bs!852437 (and d!1390866 b!4516814)))

(assert (=> bs!852437 (= (= lt!1694574 (extractMap!1212 (t!357721 (toList!4319 lm!1477)))) (= lambda!171943 lambda!171868))))

(assert (=> bs!852423 (= (= lt!1694574 lt!1694147) (= lambda!171943 lambda!171845))))

(assert (=> d!1390866 true))

(assert (=> d!1390866 (forall!10253 (toList!4320 lt!1694147) lambda!171943)))

(declare-fun lt!1695050 () Unit!94398)

(declare-fun choose!29470 (ListMap!3581 ListMap!3581 K!12030 V!12276) Unit!94398)

(assert (=> d!1390866 (= lt!1695050 (choose!29470 lt!1694147 lt!1694574 (_1!28823 (h!56483 (_2!28824 lt!1694150))) (_2!28823 (h!56483 (_2!28824 lt!1694150)))))))

(assert (=> d!1390866 (forall!10253 (toList!4320 (+!1532 lt!1694147 (tuple2!51059 (_1!28823 (h!56483 (_2!28824 lt!1694150))) (_2!28823 (h!56483 (_2!28824 lt!1694150)))))) lambda!171943)))

(assert (=> d!1390866 (= (addForallContainsKeyThenBeforeAdding!334 lt!1694147 lt!1694574 (_1!28823 (h!56483 (_2!28824 lt!1694150))) (_2!28823 (h!56483 (_2!28824 lt!1694150)))) lt!1695050)))

(declare-fun bs!852438 () Bool)

(assert (= bs!852438 d!1390866))

(declare-fun m!5262755 () Bool)

(assert (=> bs!852438 m!5262755))

(declare-fun m!5262757 () Bool)

(assert (=> bs!852438 m!5262757))

(declare-fun m!5262759 () Bool)

(assert (=> bs!852438 m!5262759))

(declare-fun m!5262761 () Bool)

(assert (=> bs!852438 m!5262761))

(assert (=> b!4516663 d!1390866))

(declare-fun b!4517407 () Bool)

(declare-fun e!2814383 () Unit!94398)

(declare-fun lt!1695056 () Unit!94398)

(assert (=> b!4517407 (= e!2814383 lt!1695056)))

(declare-fun lt!1695057 () Unit!94398)

(assert (=> b!4517407 (= lt!1695057 (lemmaContainsKeyImpliesGetValueByKeyDefined!988 (toList!4320 lt!1694581) (_1!28823 (h!56483 (_2!28824 lt!1694150)))))))

(assert (=> b!4517407 (isDefined!8391 (getValueByKey!1084 (toList!4320 lt!1694581) (_1!28823 (h!56483 (_2!28824 lt!1694150)))))))

(declare-fun lt!1695055 () Unit!94398)

(assert (=> b!4517407 (= lt!1695055 lt!1695057)))

(assert (=> b!4517407 (= lt!1695056 (lemmaInListThenGetKeysListContains!456 (toList!4320 lt!1694581) (_1!28823 (h!56483 (_2!28824 lt!1694150)))))))

(declare-fun call!314681 () Bool)

(assert (=> b!4517407 call!314681))

(declare-fun b!4517408 () Bool)

(declare-fun e!2814386 () Unit!94398)

(assert (=> b!4517408 (= e!2814383 e!2814386)))

(declare-fun c!770801 () Bool)

(assert (=> b!4517408 (= c!770801 call!314681)))

(declare-fun b!4517409 () Bool)

(declare-fun Unit!94591 () Unit!94398)

(assert (=> b!4517409 (= e!2814386 Unit!94591)))

(declare-fun bm!314676 () Bool)

(declare-fun e!2814381 () List!50761)

(assert (=> bm!314676 (= call!314681 (contains!13354 e!2814381 (_1!28823 (h!56483 (_2!28824 lt!1694150)))))))

(declare-fun c!770800 () Bool)

(declare-fun c!770799 () Bool)

(assert (=> bm!314676 (= c!770800 c!770799)))

(declare-fun b!4517410 () Bool)

(assert (=> b!4517410 (= e!2814381 (keys!17586 lt!1694581))))

(declare-fun b!4517411 () Bool)

(declare-fun e!2814385 () Bool)

(declare-fun e!2814384 () Bool)

(assert (=> b!4517411 (= e!2814385 e!2814384)))

(declare-fun res!1879783 () Bool)

(assert (=> b!4517411 (=> (not res!1879783) (not e!2814384))))

(assert (=> b!4517411 (= res!1879783 (isDefined!8391 (getValueByKey!1084 (toList!4320 lt!1694581) (_1!28823 (h!56483 (_2!28824 lt!1694150))))))))

(declare-fun d!1390870 () Bool)

(assert (=> d!1390870 e!2814385))

(declare-fun res!1879784 () Bool)

(assert (=> d!1390870 (=> res!1879784 e!2814385)))

(declare-fun e!2814382 () Bool)

(assert (=> d!1390870 (= res!1879784 e!2814382)))

(declare-fun res!1879782 () Bool)

(assert (=> d!1390870 (=> (not res!1879782) (not e!2814382))))

(declare-fun lt!1695059 () Bool)

(assert (=> d!1390870 (= res!1879782 (not lt!1695059))))

(declare-fun lt!1695052 () Bool)

(assert (=> d!1390870 (= lt!1695059 lt!1695052)))

(declare-fun lt!1695053 () Unit!94398)

(assert (=> d!1390870 (= lt!1695053 e!2814383)))

(assert (=> d!1390870 (= c!770799 lt!1695052)))

(assert (=> d!1390870 (= lt!1695052 (containsKey!1771 (toList!4320 lt!1694581) (_1!28823 (h!56483 (_2!28824 lt!1694150)))))))

(assert (=> d!1390870 (= (contains!13353 lt!1694581 (_1!28823 (h!56483 (_2!28824 lt!1694150)))) lt!1695059)))

(declare-fun b!4517412 () Bool)

(assert (=> b!4517412 (= e!2814382 (not (contains!13354 (keys!17586 lt!1694581) (_1!28823 (h!56483 (_2!28824 lt!1694150))))))))

(declare-fun b!4517413 () Bool)

(assert (=> b!4517413 (= e!2814384 (contains!13354 (keys!17586 lt!1694581) (_1!28823 (h!56483 (_2!28824 lt!1694150)))))))

(declare-fun b!4517414 () Bool)

(assert (=> b!4517414 (= e!2814381 (getKeysList!461 (toList!4320 lt!1694581)))))

(declare-fun b!4517415 () Bool)

(assert (=> b!4517415 false))

(declare-fun lt!1695054 () Unit!94398)

(declare-fun lt!1695058 () Unit!94398)

(assert (=> b!4517415 (= lt!1695054 lt!1695058)))

(assert (=> b!4517415 (containsKey!1771 (toList!4320 lt!1694581) (_1!28823 (h!56483 (_2!28824 lt!1694150))))))

(assert (=> b!4517415 (= lt!1695058 (lemmaInGetKeysListThenContainsKey!459 (toList!4320 lt!1694581) (_1!28823 (h!56483 (_2!28824 lt!1694150)))))))

(declare-fun Unit!94593 () Unit!94398)

(assert (=> b!4517415 (= e!2814386 Unit!94593)))

(assert (= (and d!1390870 c!770799) b!4517407))

(assert (= (and d!1390870 (not c!770799)) b!4517408))

(assert (= (and b!4517408 c!770801) b!4517415))

(assert (= (and b!4517408 (not c!770801)) b!4517409))

(assert (= (or b!4517407 b!4517408) bm!314676))

(assert (= (and bm!314676 c!770800) b!4517414))

(assert (= (and bm!314676 (not c!770800)) b!4517410))

(assert (= (and d!1390870 res!1879782) b!4517412))

(assert (= (and d!1390870 (not res!1879784)) b!4517411))

(assert (= (and b!4517411 res!1879783) b!4517413))

(declare-fun m!5262763 () Bool)

(assert (=> b!4517411 m!5262763))

(assert (=> b!4517411 m!5262763))

(declare-fun m!5262765 () Bool)

(assert (=> b!4517411 m!5262765))

(declare-fun m!5262767 () Bool)

(assert (=> b!4517407 m!5262767))

(assert (=> b!4517407 m!5262763))

(assert (=> b!4517407 m!5262763))

(assert (=> b!4517407 m!5262765))

(declare-fun m!5262769 () Bool)

(assert (=> b!4517407 m!5262769))

(declare-fun m!5262771 () Bool)

(assert (=> b!4517412 m!5262771))

(assert (=> b!4517412 m!5262771))

(declare-fun m!5262773 () Bool)

(assert (=> b!4517412 m!5262773))

(declare-fun m!5262775 () Bool)

(assert (=> b!4517415 m!5262775))

(declare-fun m!5262777 () Bool)

(assert (=> b!4517415 m!5262777))

(declare-fun m!5262779 () Bool)

(assert (=> b!4517414 m!5262779))

(assert (=> b!4517410 m!5262771))

(assert (=> d!1390870 m!5262775))

(assert (=> b!4517413 m!5262771))

(assert (=> b!4517413 m!5262771))

(assert (=> b!4517413 m!5262773))

(declare-fun m!5262781 () Bool)

(assert (=> bm!314676 m!5262781))

(assert (=> b!4516663 d!1390870))

(declare-fun d!1390872 () Bool)

(declare-fun e!2814395 () Bool)

(assert (=> d!1390872 e!2814395))

(declare-fun res!1879798 () Bool)

(assert (=> d!1390872 (=> (not res!1879798) (not e!2814395))))

(declare-fun lt!1695078 () ListMap!3581)

(assert (=> d!1390872 (= res!1879798 (contains!13353 lt!1695078 (_1!28823 (h!56483 (_2!28824 lt!1694150)))))))

(declare-fun lt!1695081 () List!50758)

(assert (=> d!1390872 (= lt!1695078 (ListMap!3582 lt!1695081))))

(declare-fun lt!1695080 () Unit!94398)

(declare-fun lt!1695079 () Unit!94398)

(assert (=> d!1390872 (= lt!1695080 lt!1695079)))

(assert (=> d!1390872 (= (getValueByKey!1084 lt!1695081 (_1!28823 (h!56483 (_2!28824 lt!1694150)))) (Some!11103 (_2!28823 (h!56483 (_2!28824 lt!1694150)))))))

(declare-fun lemmaContainsTupThenGetReturnValue!672 (List!50758 K!12030 V!12276) Unit!94398)

(assert (=> d!1390872 (= lt!1695079 (lemmaContainsTupThenGetReturnValue!672 lt!1695081 (_1!28823 (h!56483 (_2!28824 lt!1694150))) (_2!28823 (h!56483 (_2!28824 lt!1694150)))))))

(declare-fun insertNoDuplicatedKeys!276 (List!50758 K!12030 V!12276) List!50758)

(assert (=> d!1390872 (= lt!1695081 (insertNoDuplicatedKeys!276 (toList!4320 lt!1694147) (_1!28823 (h!56483 (_2!28824 lt!1694150))) (_2!28823 (h!56483 (_2!28824 lt!1694150)))))))

(assert (=> d!1390872 (= (+!1532 lt!1694147 (h!56483 (_2!28824 lt!1694150))) lt!1695078)))

(declare-fun b!4517428 () Bool)

(declare-fun res!1879797 () Bool)

(assert (=> b!4517428 (=> (not res!1879797) (not e!2814395))))

(assert (=> b!4517428 (= res!1879797 (= (getValueByKey!1084 (toList!4320 lt!1695078) (_1!28823 (h!56483 (_2!28824 lt!1694150)))) (Some!11103 (_2!28823 (h!56483 (_2!28824 lt!1694150))))))))

(declare-fun b!4517429 () Bool)

(assert (=> b!4517429 (= e!2814395 (contains!13357 (toList!4320 lt!1695078) (h!56483 (_2!28824 lt!1694150))))))

(assert (= (and d!1390872 res!1879798) b!4517428))

(assert (= (and b!4517428 res!1879797) b!4517429))

(declare-fun m!5262803 () Bool)

(assert (=> d!1390872 m!5262803))

(declare-fun m!5262805 () Bool)

(assert (=> d!1390872 m!5262805))

(declare-fun m!5262807 () Bool)

(assert (=> d!1390872 m!5262807))

(declare-fun m!5262809 () Bool)

(assert (=> d!1390872 m!5262809))

(declare-fun m!5262811 () Bool)

(assert (=> b!4517428 m!5262811))

(declare-fun m!5262813 () Bool)

(assert (=> b!4517429 m!5262813))

(assert (=> b!4516663 d!1390872))

(declare-fun b!4517430 () Bool)

(declare-fun e!2814398 () Unit!94398)

(declare-fun lt!1695086 () Unit!94398)

(assert (=> b!4517430 (= e!2814398 lt!1695086)))

(declare-fun lt!1695087 () Unit!94398)

(assert (=> b!4517430 (= lt!1695087 (lemmaContainsKeyImpliesGetValueByKeyDefined!988 (toList!4320 lt!1694574) (_1!28823 (h!56483 (_2!28824 lt!1694150)))))))

(assert (=> b!4517430 (isDefined!8391 (getValueByKey!1084 (toList!4320 lt!1694574) (_1!28823 (h!56483 (_2!28824 lt!1694150)))))))

(declare-fun lt!1695085 () Unit!94398)

(assert (=> b!4517430 (= lt!1695085 lt!1695087)))

(assert (=> b!4517430 (= lt!1695086 (lemmaInListThenGetKeysListContains!456 (toList!4320 lt!1694574) (_1!28823 (h!56483 (_2!28824 lt!1694150)))))))

(declare-fun call!314682 () Bool)

(assert (=> b!4517430 call!314682))

(declare-fun b!4517431 () Bool)

(declare-fun e!2814401 () Unit!94398)

(assert (=> b!4517431 (= e!2814398 e!2814401)))

(declare-fun c!770804 () Bool)

(assert (=> b!4517431 (= c!770804 call!314682)))

(declare-fun b!4517432 () Bool)

(declare-fun Unit!94596 () Unit!94398)

(assert (=> b!4517432 (= e!2814401 Unit!94596)))

(declare-fun bm!314677 () Bool)

(declare-fun e!2814396 () List!50761)

(assert (=> bm!314677 (= call!314682 (contains!13354 e!2814396 (_1!28823 (h!56483 (_2!28824 lt!1694150)))))))

(declare-fun c!770803 () Bool)

(declare-fun c!770802 () Bool)

(assert (=> bm!314677 (= c!770803 c!770802)))

(declare-fun b!4517433 () Bool)

(assert (=> b!4517433 (= e!2814396 (keys!17586 lt!1694574))))

(declare-fun b!4517434 () Bool)

(declare-fun e!2814400 () Bool)

(declare-fun e!2814399 () Bool)

(assert (=> b!4517434 (= e!2814400 e!2814399)))

(declare-fun res!1879800 () Bool)

(assert (=> b!4517434 (=> (not res!1879800) (not e!2814399))))

(assert (=> b!4517434 (= res!1879800 (isDefined!8391 (getValueByKey!1084 (toList!4320 lt!1694574) (_1!28823 (h!56483 (_2!28824 lt!1694150))))))))

(declare-fun d!1390882 () Bool)

(assert (=> d!1390882 e!2814400))

(declare-fun res!1879801 () Bool)

(assert (=> d!1390882 (=> res!1879801 e!2814400)))

(declare-fun e!2814397 () Bool)

(assert (=> d!1390882 (= res!1879801 e!2814397)))

(declare-fun res!1879799 () Bool)

(assert (=> d!1390882 (=> (not res!1879799) (not e!2814397))))

(declare-fun lt!1695089 () Bool)

(assert (=> d!1390882 (= res!1879799 (not lt!1695089))))

(declare-fun lt!1695082 () Bool)

(assert (=> d!1390882 (= lt!1695089 lt!1695082)))

(declare-fun lt!1695083 () Unit!94398)

(assert (=> d!1390882 (= lt!1695083 e!2814398)))

(assert (=> d!1390882 (= c!770802 lt!1695082)))

(assert (=> d!1390882 (= lt!1695082 (containsKey!1771 (toList!4320 lt!1694574) (_1!28823 (h!56483 (_2!28824 lt!1694150)))))))

(assert (=> d!1390882 (= (contains!13353 lt!1694574 (_1!28823 (h!56483 (_2!28824 lt!1694150)))) lt!1695089)))

(declare-fun b!4517435 () Bool)

(assert (=> b!4517435 (= e!2814397 (not (contains!13354 (keys!17586 lt!1694574) (_1!28823 (h!56483 (_2!28824 lt!1694150))))))))

(declare-fun b!4517436 () Bool)

(assert (=> b!4517436 (= e!2814399 (contains!13354 (keys!17586 lt!1694574) (_1!28823 (h!56483 (_2!28824 lt!1694150)))))))

(declare-fun b!4517437 () Bool)

(assert (=> b!4517437 (= e!2814396 (getKeysList!461 (toList!4320 lt!1694574)))))

(declare-fun b!4517438 () Bool)

(assert (=> b!4517438 false))

(declare-fun lt!1695084 () Unit!94398)

(declare-fun lt!1695088 () Unit!94398)

(assert (=> b!4517438 (= lt!1695084 lt!1695088)))

(assert (=> b!4517438 (containsKey!1771 (toList!4320 lt!1694574) (_1!28823 (h!56483 (_2!28824 lt!1694150))))))

(assert (=> b!4517438 (= lt!1695088 (lemmaInGetKeysListThenContainsKey!459 (toList!4320 lt!1694574) (_1!28823 (h!56483 (_2!28824 lt!1694150)))))))

(declare-fun Unit!94598 () Unit!94398)

(assert (=> b!4517438 (= e!2814401 Unit!94598)))

(assert (= (and d!1390882 c!770802) b!4517430))

(assert (= (and d!1390882 (not c!770802)) b!4517431))

(assert (= (and b!4517431 c!770804) b!4517438))

(assert (= (and b!4517431 (not c!770804)) b!4517432))

(assert (= (or b!4517430 b!4517431) bm!314677))

(assert (= (and bm!314677 c!770803) b!4517437))

(assert (= (and bm!314677 (not c!770803)) b!4517433))

(assert (= (and d!1390882 res!1879799) b!4517435))

(assert (= (and d!1390882 (not res!1879801)) b!4517434))

(assert (= (and b!4517434 res!1879800) b!4517436))

(declare-fun m!5262815 () Bool)

(assert (=> b!4517434 m!5262815))

(assert (=> b!4517434 m!5262815))

(declare-fun m!5262817 () Bool)

(assert (=> b!4517434 m!5262817))

(declare-fun m!5262819 () Bool)

(assert (=> b!4517430 m!5262819))

(assert (=> b!4517430 m!5262815))

(assert (=> b!4517430 m!5262815))

(assert (=> b!4517430 m!5262817))

(declare-fun m!5262821 () Bool)

(assert (=> b!4517430 m!5262821))

(declare-fun m!5262823 () Bool)

(assert (=> b!4517435 m!5262823))

(assert (=> b!4517435 m!5262823))

(declare-fun m!5262825 () Bool)

(assert (=> b!4517435 m!5262825))

(declare-fun m!5262827 () Bool)

(assert (=> b!4517438 m!5262827))

(declare-fun m!5262829 () Bool)

(assert (=> b!4517438 m!5262829))

(declare-fun m!5262831 () Bool)

(assert (=> b!4517437 m!5262831))

(assert (=> b!4517433 m!5262823))

(assert (=> d!1390882 m!5262827))

(assert (=> b!4517436 m!5262823))

(assert (=> b!4517436 m!5262823))

(assert (=> b!4517436 m!5262825))

(declare-fun m!5262833 () Bool)

(assert (=> bm!314677 m!5262833))

(assert (=> b!4516663 d!1390882))

(assert (=> b!4516663 d!1390684))

(declare-fun d!1390884 () Bool)

(declare-fun res!1879804 () Bool)

(declare-fun e!2814403 () Bool)

(assert (=> d!1390884 (=> res!1879804 e!2814403)))

(assert (=> d!1390884 (= res!1879804 ((_ is Nil!50634) (t!357720 (_2!28824 lt!1694150))))))

(assert (=> d!1390884 (= (forall!10253 (t!357720 (_2!28824 lt!1694150)) lambda!171846) e!2814403)))

(declare-fun b!4517441 () Bool)

(declare-fun e!2814404 () Bool)

(assert (=> b!4517441 (= e!2814403 e!2814404)))

(declare-fun res!1879805 () Bool)

(assert (=> b!4517441 (=> (not res!1879805) (not e!2814404))))

(assert (=> b!4517441 (= res!1879805 (dynLambda!21156 lambda!171846 (h!56483 (t!357720 (_2!28824 lt!1694150)))))))

(declare-fun b!4517442 () Bool)

(assert (=> b!4517442 (= e!2814404 (forall!10253 (t!357720 (t!357720 (_2!28824 lt!1694150))) lambda!171846))))

(assert (= (and d!1390884 (not res!1879804)) b!4517441))

(assert (= (and b!4517441 res!1879805) b!4517442))

(declare-fun b_lambda!154453 () Bool)

(assert (=> (not b_lambda!154453) (not b!4517441)))

(declare-fun m!5262841 () Bool)

(assert (=> b!4517441 m!5262841))

(declare-fun m!5262845 () Bool)

(assert (=> b!4517442 m!5262845))

(assert (=> b!4516663 d!1390884))

(declare-fun d!1390886 () Bool)

(declare-fun res!1879806 () Bool)

(declare-fun e!2814405 () Bool)

(assert (=> d!1390886 (=> res!1879806 e!2814405)))

(assert (=> d!1390886 (= res!1879806 ((_ is Nil!50634) (toList!4320 lt!1694581)))))

(assert (=> d!1390886 (= (forall!10253 (toList!4320 lt!1694581) lambda!171846) e!2814405)))

(declare-fun b!4517443 () Bool)

(declare-fun e!2814406 () Bool)

(assert (=> b!4517443 (= e!2814405 e!2814406)))

(declare-fun res!1879807 () Bool)

(assert (=> b!4517443 (=> (not res!1879807) (not e!2814406))))

(assert (=> b!4517443 (= res!1879807 (dynLambda!21156 lambda!171846 (h!56483 (toList!4320 lt!1694581))))))

(declare-fun b!4517444 () Bool)

(assert (=> b!4517444 (= e!2814406 (forall!10253 (t!357720 (toList!4320 lt!1694581)) lambda!171846))))

(assert (= (and d!1390886 (not res!1879806)) b!4517443))

(assert (= (and b!4517443 res!1879807) b!4517444))

(declare-fun b_lambda!154455 () Bool)

(assert (=> (not b_lambda!154455) (not b!4517443)))

(declare-fun m!5262851 () Bool)

(assert (=> b!4517443 m!5262851))

(declare-fun m!5262853 () Bool)

(assert (=> b!4517444 m!5262853))

(assert (=> b!4516663 d!1390886))

(declare-fun d!1390890 () Bool)

(assert (=> d!1390890 (dynLambda!21156 lambda!171846 (h!56483 (_2!28824 lt!1694150)))))

(declare-fun lt!1695096 () Unit!94398)

(declare-fun choose!29472 (List!50758 Int tuple2!51058) Unit!94398)

(assert (=> d!1390890 (= lt!1695096 (choose!29472 (toList!4320 lt!1694581) lambda!171846 (h!56483 (_2!28824 lt!1694150))))))

(declare-fun e!2814411 () Bool)

(assert (=> d!1390890 e!2814411))

(declare-fun res!1879812 () Bool)

(assert (=> d!1390890 (=> (not res!1879812) (not e!2814411))))

(assert (=> d!1390890 (= res!1879812 (forall!10253 (toList!4320 lt!1694581) lambda!171846))))

(assert (=> d!1390890 (= (forallContained!2505 (toList!4320 lt!1694581) lambda!171846 (h!56483 (_2!28824 lt!1694150))) lt!1695096)))

(declare-fun b!4517449 () Bool)

(assert (=> b!4517449 (= e!2814411 (contains!13357 (toList!4320 lt!1694581) (h!56483 (_2!28824 lt!1694150))))))

(assert (= (and d!1390890 res!1879812) b!4517449))

(declare-fun b_lambda!154459 () Bool)

(assert (=> (not b_lambda!154459) (not d!1390890)))

(declare-fun m!5262859 () Bool)

(assert (=> d!1390890 m!5262859))

(declare-fun m!5262861 () Bool)

(assert (=> d!1390890 m!5262861))

(assert (=> d!1390890 m!5261509))

(declare-fun m!5262863 () Bool)

(assert (=> b!4517449 m!5262863))

(assert (=> b!4516663 d!1390890))

(declare-fun d!1390894 () Bool)

(declare-fun res!1879813 () Bool)

(declare-fun e!2814412 () Bool)

(assert (=> d!1390894 (=> res!1879813 e!2814412)))

(assert (=> d!1390894 (= res!1879813 ((_ is Nil!50634) (_2!28824 lt!1694150)))))

(assert (=> d!1390894 (= (forall!10253 (_2!28824 lt!1694150) lambda!171846) e!2814412)))

(declare-fun b!4517450 () Bool)

(declare-fun e!2814413 () Bool)

(assert (=> b!4517450 (= e!2814412 e!2814413)))

(declare-fun res!1879814 () Bool)

(assert (=> b!4517450 (=> (not res!1879814) (not e!2814413))))

(assert (=> b!4517450 (= res!1879814 (dynLambda!21156 lambda!171846 (h!56483 (_2!28824 lt!1694150))))))

(declare-fun b!4517451 () Bool)

(assert (=> b!4517451 (= e!2814413 (forall!10253 (t!357720 (_2!28824 lt!1694150)) lambda!171846))))

(assert (= (and d!1390894 (not res!1879813)) b!4517450))

(assert (= (and b!4517450 res!1879814) b!4517451))

(declare-fun b_lambda!154461 () Bool)

(assert (=> (not b_lambda!154461) (not b!4517450)))

(assert (=> b!4517450 m!5262859))

(assert (=> b!4517451 m!5261511))

(assert (=> b!4516663 d!1390894))

(declare-fun d!1390896 () Bool)

(declare-fun res!1879815 () Bool)

(declare-fun e!2814414 () Bool)

(assert (=> d!1390896 (=> res!1879815 e!2814414)))

(assert (=> d!1390896 (= res!1879815 (not ((_ is Cons!50634) (_2!28824 lt!1694152))))))

(assert (=> d!1390896 (= (noDuplicateKeys!1156 (_2!28824 lt!1694152)) e!2814414)))

(declare-fun b!4517452 () Bool)

(declare-fun e!2814415 () Bool)

(assert (=> b!4517452 (= e!2814414 e!2814415)))

(declare-fun res!1879816 () Bool)

(assert (=> b!4517452 (=> (not res!1879816) (not e!2814415))))

(assert (=> b!4517452 (= res!1879816 (not (containsKey!1768 (t!357720 (_2!28824 lt!1694152)) (_1!28823 (h!56483 (_2!28824 lt!1694152))))))))

(declare-fun b!4517453 () Bool)

(assert (=> b!4517453 (= e!2814415 (noDuplicateKeys!1156 (t!357720 (_2!28824 lt!1694152))))))

(assert (= (and d!1390896 (not res!1879815)) b!4517452))

(assert (= (and b!4517452 res!1879816) b!4517453))

(declare-fun m!5262865 () Bool)

(assert (=> b!4517452 m!5262865))

(declare-fun m!5262867 () Bool)

(assert (=> b!4517453 m!5262867))

(assert (=> bs!851889 d!1390896))

(declare-fun bs!852455 () Bool)

(declare-fun d!1390898 () Bool)

(assert (= bs!852455 (and d!1390898 d!1390298)))

(declare-fun lambda!171945 () Int)

(assert (=> bs!852455 (= lambda!171945 lambda!171755)))

(declare-fun bs!852456 () Bool)

(assert (= bs!852456 (and d!1390898 d!1390462)))

(assert (=> bs!852456 (= lambda!171945 lambda!171843)))

(declare-fun bs!852457 () Bool)

(assert (= bs!852457 (and d!1390898 d!1390438)))

(assert (=> bs!852457 (= lambda!171945 lambda!171838)))

(declare-fun bs!852458 () Bool)

(assert (= bs!852458 (and d!1390898 d!1390452)))

(assert (=> bs!852458 (= lambda!171945 lambda!171839)))

(declare-fun bs!852459 () Bool)

(assert (= bs!852459 (and d!1390898 start!446940)))

(assert (=> bs!852459 (= lambda!171945 lambda!171717)))

(declare-fun bs!852460 () Bool)

(assert (= bs!852460 (and d!1390898 d!1390334)))

(assert (=> bs!852460 (= lambda!171945 lambda!171775)))

(declare-fun bs!852461 () Bool)

(assert (= bs!852461 (and d!1390898 d!1390300)))

(assert (=> bs!852461 (= lambda!171945 lambda!171762)))

(declare-fun bs!852462 () Bool)

(assert (= bs!852462 (and d!1390898 d!1390460)))

(assert (=> bs!852462 (= lambda!171945 lambda!171840)))

(declare-fun bs!852463 () Bool)

(assert (= bs!852463 (and d!1390898 d!1390566)))

(assert (=> bs!852463 (= lambda!171945 lambda!171867)))

(declare-fun bs!852464 () Bool)

(assert (= bs!852464 (and d!1390898 d!1390324)))

(assert (=> bs!852464 (not (= lambda!171945 lambda!171769))))

(declare-fun bs!852465 () Bool)

(assert (= bs!852465 (and d!1390898 d!1390530)))

(assert (=> bs!852465 (= lambda!171945 lambda!171858)))

(declare-fun bs!852466 () Bool)

(assert (= bs!852466 (and d!1390898 d!1390294)))

(assert (=> bs!852466 (= lambda!171945 lambda!171751)))

(declare-fun bs!852467 () Bool)

(assert (= bs!852467 (and d!1390898 d!1390314)))

(assert (=> bs!852467 (= lambda!171945 lambda!171763)))

(declare-fun bs!852468 () Bool)

(assert (= bs!852468 (and d!1390898 d!1390424)))

(assert (=> bs!852468 (= lambda!171945 lambda!171832)))

(declare-fun bs!852469 () Bool)

(assert (= bs!852469 (and d!1390898 d!1390270)))

(assert (=> bs!852469 (= lambda!171945 lambda!171720)))

(declare-fun lt!1695097 () ListMap!3581)

(assert (=> d!1390898 (invariantList!1013 (toList!4320 lt!1695097))))

(declare-fun e!2814416 () ListMap!3581)

(assert (=> d!1390898 (= lt!1695097 e!2814416)))

(declare-fun c!770805 () Bool)

(assert (=> d!1390898 (= c!770805 ((_ is Cons!50635) (toList!4319 (+!1530 lt!1694164 (tuple2!51061 hash!344 newBucket!178)))))))

(assert (=> d!1390898 (forall!10251 (toList!4319 (+!1530 lt!1694164 (tuple2!51061 hash!344 newBucket!178))) lambda!171945)))

(assert (=> d!1390898 (= (extractMap!1212 (toList!4319 (+!1530 lt!1694164 (tuple2!51061 hash!344 newBucket!178)))) lt!1695097)))

(declare-fun b!4517454 () Bool)

(assert (=> b!4517454 (= e!2814416 (addToMapMapFromBucket!683 (_2!28824 (h!56484 (toList!4319 (+!1530 lt!1694164 (tuple2!51061 hash!344 newBucket!178))))) (extractMap!1212 (t!357721 (toList!4319 (+!1530 lt!1694164 (tuple2!51061 hash!344 newBucket!178)))))))))

(declare-fun b!4517455 () Bool)

(assert (=> b!4517455 (= e!2814416 (ListMap!3582 Nil!50634))))

(assert (= (and d!1390898 c!770805) b!4517454))

(assert (= (and d!1390898 (not c!770805)) b!4517455))

(declare-fun m!5262869 () Bool)

(assert (=> d!1390898 m!5262869))

(declare-fun m!5262871 () Bool)

(assert (=> d!1390898 m!5262871))

(declare-fun m!5262873 () Bool)

(assert (=> b!4517454 m!5262873))

(assert (=> b!4517454 m!5262873))

(declare-fun m!5262875 () Bool)

(assert (=> b!4517454 m!5262875))

(assert (=> d!1390462 d!1390898))

(declare-fun d!1390900 () Bool)

(declare-fun e!2814417 () Bool)

(assert (=> d!1390900 e!2814417))

(declare-fun res!1879817 () Bool)

(assert (=> d!1390900 (=> (not res!1879817) (not e!2814417))))

(declare-fun lt!1695098 () ListMap!3581)

(assert (=> d!1390900 (= res!1879817 (not (contains!13353 lt!1695098 key!3287)))))

(assert (=> d!1390900 (= lt!1695098 (ListMap!3582 (removePresrvNoDuplicatedKeys!137 (toList!4320 (extractMap!1212 (toList!4319 lt!1694164))) key!3287)))))

(assert (=> d!1390900 (= (-!382 (extractMap!1212 (toList!4319 lt!1694164)) key!3287) lt!1695098)))

(declare-fun b!4517457 () Bool)

(assert (=> b!4517457 (= e!2814417 (= ((_ map and) (content!8347 (keys!17586 (extractMap!1212 (toList!4319 lt!1694164)))) ((_ map not) (store ((as const (Array K!12030 Bool)) false) key!3287 true))) (content!8347 (keys!17586 lt!1695098))))))

(assert (= (and d!1390900 res!1879817) b!4517457))

(declare-fun m!5262877 () Bool)

(assert (=> d!1390900 m!5262877))

(declare-fun m!5262879 () Bool)

(assert (=> d!1390900 m!5262879))

(declare-fun m!5262881 () Bool)

(assert (=> b!4517457 m!5262881))

(assert (=> b!4517457 m!5262881))

(declare-fun m!5262883 () Bool)

(assert (=> b!4517457 m!5262883))

(assert (=> b!4517457 m!5260735))

(assert (=> b!4517457 m!5262443))

(assert (=> b!4517457 m!5261443))

(assert (=> b!4517457 m!5262443))

(declare-fun m!5262885 () Bool)

(assert (=> b!4517457 m!5262885))

(assert (=> d!1390462 d!1390900))

(declare-fun d!1390902 () Bool)

(assert (=> d!1390902 (eq!613 (extractMap!1212 (toList!4319 (+!1530 lt!1694164 (tuple2!51061 hash!344 newBucket!178)))) (-!382 (extractMap!1212 (toList!4319 lt!1694164)) key!3287))))

(assert (=> d!1390902 true))

(declare-fun _$8!644 () Unit!94398)

(assert (=> d!1390902 (= (choose!29455 lt!1694164 hash!344 newBucket!178 key!3287 hashF!1107) _$8!644)))

(declare-fun bs!852506 () Bool)

(assert (= bs!852506 d!1390902))

(assert (=> bs!852506 m!5261491))

(assert (=> bs!852506 m!5261493))

(assert (=> bs!852506 m!5261495))

(assert (=> bs!852506 m!5261491))

(assert (=> bs!852506 m!5260735))

(assert (=> bs!852506 m!5261493))

(assert (=> bs!852506 m!5260735))

(assert (=> bs!852506 m!5261497))

(assert (=> d!1390462 d!1390902))

(declare-fun d!1390916 () Bool)

(declare-fun res!1879834 () Bool)

(declare-fun e!2814440 () Bool)

(assert (=> d!1390916 (=> res!1879834 e!2814440)))

(assert (=> d!1390916 (= res!1879834 ((_ is Nil!50635) (toList!4319 lt!1694164)))))

(assert (=> d!1390916 (= (forall!10251 (toList!4319 lt!1694164) lambda!171843) e!2814440)))

(declare-fun b!4517488 () Bool)

(declare-fun e!2814441 () Bool)

(assert (=> b!4517488 (= e!2814440 e!2814441)))

(declare-fun res!1879835 () Bool)

(assert (=> b!4517488 (=> (not res!1879835) (not e!2814441))))

(assert (=> b!4517488 (= res!1879835 (dynLambda!21155 lambda!171843 (h!56484 (toList!4319 lt!1694164))))))

(declare-fun b!4517489 () Bool)

(assert (=> b!4517489 (= e!2814441 (forall!10251 (t!357721 (toList!4319 lt!1694164)) lambda!171843))))

(assert (= (and d!1390916 (not res!1879834)) b!4517488))

(assert (= (and b!4517488 res!1879835) b!4517489))

(declare-fun b_lambda!154469 () Bool)

(assert (=> (not b_lambda!154469) (not b!4517488)))

(declare-fun m!5262947 () Bool)

(assert (=> b!4517488 m!5262947))

(declare-fun m!5262949 () Bool)

(assert (=> b!4517489 m!5262949))

(assert (=> d!1390462 d!1390916))

(declare-fun d!1390918 () Bool)

(declare-fun e!2814442 () Bool)

(assert (=> d!1390918 e!2814442))

(declare-fun res!1879836 () Bool)

(assert (=> d!1390918 (=> (not res!1879836) (not e!2814442))))

(declare-fun lt!1695145 () ListLongMap!2951)

(assert (=> d!1390918 (= res!1879836 (contains!13352 lt!1695145 (_1!28824 (tuple2!51061 hash!344 newBucket!178))))))

(declare-fun lt!1695142 () List!50759)

(assert (=> d!1390918 (= lt!1695145 (ListLongMap!2952 lt!1695142))))

(declare-fun lt!1695144 () Unit!94398)

(declare-fun lt!1695143 () Unit!94398)

(assert (=> d!1390918 (= lt!1695144 lt!1695143)))

(assert (=> d!1390918 (= (getValueByKey!1083 lt!1695142 (_1!28824 (tuple2!51061 hash!344 newBucket!178))) (Some!11102 (_2!28824 (tuple2!51061 hash!344 newBucket!178))))))

(assert (=> d!1390918 (= lt!1695143 (lemmaContainsTupThenGetReturnValue!670 lt!1695142 (_1!28824 (tuple2!51061 hash!344 newBucket!178)) (_2!28824 (tuple2!51061 hash!344 newBucket!178))))))

(assert (=> d!1390918 (= lt!1695142 (insertStrictlySorted!404 (toList!4319 lt!1694164) (_1!28824 (tuple2!51061 hash!344 newBucket!178)) (_2!28824 (tuple2!51061 hash!344 newBucket!178))))))

(assert (=> d!1390918 (= (+!1530 lt!1694164 (tuple2!51061 hash!344 newBucket!178)) lt!1695145)))

(declare-fun b!4517490 () Bool)

(declare-fun res!1879837 () Bool)

(assert (=> b!4517490 (=> (not res!1879837) (not e!2814442))))

(assert (=> b!4517490 (= res!1879837 (= (getValueByKey!1083 (toList!4319 lt!1695145) (_1!28824 (tuple2!51061 hash!344 newBucket!178))) (Some!11102 (_2!28824 (tuple2!51061 hash!344 newBucket!178)))))))

(declare-fun b!4517491 () Bool)

(assert (=> b!4517491 (= e!2814442 (contains!13351 (toList!4319 lt!1695145) (tuple2!51061 hash!344 newBucket!178)))))

(assert (= (and d!1390918 res!1879836) b!4517490))

(assert (= (and b!4517490 res!1879837) b!4517491))

(declare-fun m!5262951 () Bool)

(assert (=> d!1390918 m!5262951))

(declare-fun m!5262953 () Bool)

(assert (=> d!1390918 m!5262953))

(declare-fun m!5262955 () Bool)

(assert (=> d!1390918 m!5262955))

(declare-fun m!5262957 () Bool)

(assert (=> d!1390918 m!5262957))

(declare-fun m!5262959 () Bool)

(assert (=> b!4517490 m!5262959))

(declare-fun m!5262961 () Bool)

(assert (=> b!4517491 m!5262961))

(assert (=> d!1390462 d!1390918))

(assert (=> d!1390462 d!1390314))

(declare-fun d!1390920 () Bool)

(assert (=> d!1390920 (= (eq!613 (extractMap!1212 (toList!4319 (+!1530 lt!1694164 (tuple2!51061 hash!344 newBucket!178)))) (-!382 (extractMap!1212 (toList!4319 lt!1694164)) key!3287)) (= (content!8346 (toList!4320 (extractMap!1212 (toList!4319 (+!1530 lt!1694164 (tuple2!51061 hash!344 newBucket!178)))))) (content!8346 (toList!4320 (-!382 (extractMap!1212 (toList!4319 lt!1694164)) key!3287)))))))

(declare-fun bs!852522 () Bool)

(assert (= bs!852522 d!1390920))

(declare-fun m!5262963 () Bool)

(assert (=> bs!852522 m!5262963))

(declare-fun m!5262965 () Bool)

(assert (=> bs!852522 m!5262965))

(assert (=> d!1390462 d!1390920))

(declare-fun b!4517495 () Bool)

(declare-fun e!2814444 () Option!11103)

(assert (=> b!4517495 (= e!2814444 None!11102)))

(declare-fun b!4517494 () Bool)

(assert (=> b!4517494 (= e!2814444 (getValueByKey!1083 (t!357721 (toList!4319 lt!1694557)) (_1!28824 lt!1694150)))))

(declare-fun b!4517492 () Bool)

(declare-fun e!2814443 () Option!11103)

(assert (=> b!4517492 (= e!2814443 (Some!11102 (_2!28824 (h!56484 (toList!4319 lt!1694557)))))))

(declare-fun b!4517493 () Bool)

(assert (=> b!4517493 (= e!2814443 e!2814444)))

(declare-fun c!770814 () Bool)

(assert (=> b!4517493 (= c!770814 (and ((_ is Cons!50635) (toList!4319 lt!1694557)) (not (= (_1!28824 (h!56484 (toList!4319 lt!1694557))) (_1!28824 lt!1694150)))))))

(declare-fun d!1390922 () Bool)

(declare-fun c!770813 () Bool)

(assert (=> d!1390922 (= c!770813 (and ((_ is Cons!50635) (toList!4319 lt!1694557)) (= (_1!28824 (h!56484 (toList!4319 lt!1694557))) (_1!28824 lt!1694150))))))

(assert (=> d!1390922 (= (getValueByKey!1083 (toList!4319 lt!1694557) (_1!28824 lt!1694150)) e!2814443)))

(assert (= (and d!1390922 c!770813) b!4517492))

(assert (= (and d!1390922 (not c!770813)) b!4517493))

(assert (= (and b!4517493 c!770814) b!4517494))

(assert (= (and b!4517493 (not c!770814)) b!4517495))

(declare-fun m!5262967 () Bool)

(assert (=> b!4517494 m!5262967))

(assert (=> b!4516656 d!1390922))

(declare-fun bs!852533 () Bool)

(declare-fun b!4517498 () Bool)

(assert (= bs!852533 (and b!4517498 d!1390866)))

(declare-fun lambda!171953 () Int)

(assert (=> bs!852533 (= (= (extractMap!1212 (t!357721 (toList!4319 (+!1530 lt!1694164 lt!1694150)))) lt!1694574) (= lambda!171953 lambda!171943))))

(declare-fun bs!852534 () Bool)

(assert (= bs!852534 (and b!4517498 b!4517389)))

(assert (=> bs!852534 (= (= (extractMap!1212 (t!357721 (toList!4319 (+!1530 lt!1694164 lt!1694150)))) lt!1695017) (= lambda!171953 lambda!171931))))

(declare-fun bs!852535 () Bool)

(assert (= bs!852535 (and b!4517498 b!4516662)))

(assert (=> bs!852535 (= (= (extractMap!1212 (t!357721 (toList!4319 (+!1530 lt!1694164 lt!1694150)))) lt!1694147) (= lambda!171953 lambda!171844))))

(declare-fun bs!852536 () Bool)

(assert (= bs!852536 (and b!4517498 b!4516807)))

(assert (=> bs!852536 (= (= (extractMap!1212 (t!357721 (toList!4319 (+!1530 lt!1694164 lt!1694150)))) (extractMap!1212 (t!357721 (toList!4319 lt!1694158)))) (= lambda!171953 lambda!171863))))

(declare-fun bs!852537 () Bool)

(assert (= bs!852537 (and b!4517498 d!1390358)))

(assert (=> bs!852537 (= (= (extractMap!1212 (t!357721 (toList!4319 (+!1530 lt!1694164 lt!1694150)))) lt!1694503) (= lambda!171953 lambda!171831))))

(declare-fun bs!852538 () Bool)

(assert (= bs!852538 (and b!4517498 d!1390568)))

(assert (=> bs!852538 (= (= (extractMap!1212 (t!357721 (toList!4319 (+!1530 lt!1694164 lt!1694150)))) lt!1694656) (= lambda!171953 lambda!171871))))

(declare-fun bs!852539 () Bool)

(assert (= bs!852539 (and b!4517498 b!4516744)))

(assert (=> bs!852539 (= (= (extractMap!1212 (t!357721 (toList!4319 (+!1530 lt!1694164 lt!1694150)))) lt!1694614) (= lambda!171953 lambda!171856))))

(declare-fun bs!852540 () Bool)

(assert (= bs!852540 (and b!4517498 b!4516663)))

(assert (=> bs!852540 (= (= (extractMap!1212 (t!357721 (toList!4319 (+!1530 lt!1694164 lt!1694150)))) lt!1694574) (= lambda!171953 lambda!171846))))

(declare-fun bs!852541 () Bool)

(assert (= bs!852541 (and b!4517498 d!1390564)))

(assert (=> bs!852541 (= (= (extractMap!1212 (t!357721 (toList!4319 (+!1530 lt!1694164 lt!1694150)))) lt!1694634) (= lambda!171953 lambda!171866))))

(declare-fun bs!852542 () Bool)

(assert (= bs!852542 (and b!4517498 d!1390472)))

(assert (=> bs!852542 (= (= (extractMap!1212 (t!357721 (toList!4319 (+!1530 lt!1694164 lt!1694150)))) lt!1694564) (= lambda!171953 lambda!171847))))

(declare-fun bs!852543 () Bool)

(assert (= bs!852543 (and b!4517498 b!4516815)))

(assert (=> bs!852543 (= (= (extractMap!1212 (t!357721 (toList!4319 (+!1530 lt!1694164 lt!1694150)))) lt!1694666) (= lambda!171953 lambda!171870))))

(declare-fun bs!852544 () Bool)

(assert (= bs!852544 (and b!4517498 d!1390694)))

(assert (=> bs!852544 (= (= (extractMap!1212 (t!357721 (toList!4319 (+!1530 lt!1694164 lt!1694150)))) lt!1694147) (= lambda!171953 lambda!171904))))

(assert (=> bs!852539 (= (= (extractMap!1212 (t!357721 (toList!4319 (+!1530 lt!1694164 lt!1694150)))) (extractMap!1212 (t!357721 (toList!4319 lt!1694164)))) (= lambda!171953 lambda!171855))))

(declare-fun bs!852545 () Bool)

(assert (= bs!852545 (and b!4517498 d!1390756)))

(assert (=> bs!852545 (= (= (extractMap!1212 (t!357721 (toList!4319 (+!1530 lt!1694164 lt!1694150)))) lt!1694172) (= lambda!171953 lambda!171920))))

(declare-fun bs!852546 () Bool)

(assert (= bs!852546 (and b!4517498 d!1390852)))

(assert (=> bs!852546 (= (= (extractMap!1212 (t!357721 (toList!4319 (+!1530 lt!1694164 lt!1694150)))) lt!1695007) (= lambda!171953 lambda!171933))))

(declare-fun bs!852547 () Bool)

(assert (= bs!852547 (and b!4517498 b!4517388)))

(assert (=> bs!852547 (= (= (extractMap!1212 (t!357721 (toList!4319 (+!1530 lt!1694164 lt!1694150)))) (+!1532 lt!1694147 (h!56483 (_2!28824 lt!1694150)))) (= lambda!171953 lambda!171927))))

(declare-fun bs!852548 () Bool)

(assert (= bs!852548 (and b!4517498 b!4516808)))

(assert (=> bs!852548 (= (= (extractMap!1212 (t!357721 (toList!4319 (+!1530 lt!1694164 lt!1694150)))) (extractMap!1212 (t!357721 (toList!4319 lt!1694158)))) (= lambda!171953 lambda!171864))))

(declare-fun bs!852549 () Bool)

(assert (= bs!852549 (and b!4517498 b!4516743)))

(assert (=> bs!852549 (= (= (extractMap!1212 (t!357721 (toList!4319 (+!1530 lt!1694164 lt!1694150)))) (extractMap!1212 (t!357721 (toList!4319 lt!1694164)))) (= lambda!171953 lambda!171854))))

(assert (=> bs!852548 (= (= (extractMap!1212 (t!357721 (toList!4319 (+!1530 lt!1694164 lt!1694150)))) lt!1694644) (= lambda!171953 lambda!171865))))

(declare-fun bs!852550 () Bool)

(assert (= bs!852550 (and b!4517498 b!4516604)))

(assert (=> bs!852550 (= (= (extractMap!1212 (t!357721 (toList!4319 (+!1530 lt!1694164 lt!1694150)))) lt!1694513) (= lambda!171953 lambda!171830))))

(declare-fun bs!852551 () Bool)

(assert (= bs!852551 (and b!4517498 d!1390326)))

(assert (=> bs!852551 (not (= lambda!171953 lambda!171772))))

(declare-fun bs!852552 () Bool)

(assert (= bs!852552 (and b!4517498 d!1390526)))

(assert (=> bs!852552 (= (= (extractMap!1212 (t!357721 (toList!4319 (+!1530 lt!1694164 lt!1694150)))) lt!1694604) (= lambda!171953 lambda!171857))))

(assert (=> bs!852550 (= (= (extractMap!1212 (t!357721 (toList!4319 (+!1530 lt!1694164 lt!1694150)))) lt!1694172) (= lambda!171953 lambda!171829))))

(declare-fun bs!852553 () Bool)

(assert (= bs!852553 (and b!4517498 b!4516603)))

(assert (=> bs!852553 (= (= (extractMap!1212 (t!357721 (toList!4319 (+!1530 lt!1694164 lt!1694150)))) lt!1694172) (= lambda!171953 lambda!171828))))

(assert (=> bs!852534 (= (= (extractMap!1212 (t!357721 (toList!4319 (+!1530 lt!1694164 lt!1694150)))) (+!1532 lt!1694147 (h!56483 (_2!28824 lt!1694150)))) (= lambda!171953 lambda!171929))))

(assert (=> bs!852543 (= (= (extractMap!1212 (t!357721 (toList!4319 (+!1530 lt!1694164 lt!1694150)))) (extractMap!1212 (t!357721 (toList!4319 lm!1477)))) (= lambda!171953 lambda!171869))))

(declare-fun bs!852554 () Bool)

(assert (= bs!852554 (and b!4517498 b!4516814)))

(assert (=> bs!852554 (= (= (extractMap!1212 (t!357721 (toList!4319 (+!1530 lt!1694164 lt!1694150)))) (extractMap!1212 (t!357721 (toList!4319 lm!1477)))) (= lambda!171953 lambda!171868))))

(assert (=> bs!852540 (= (= (extractMap!1212 (t!357721 (toList!4319 (+!1530 lt!1694164 lt!1694150)))) lt!1694147) (= lambda!171953 lambda!171845))))

(assert (=> b!4517498 true))

(declare-fun bs!852555 () Bool)

(declare-fun b!4517499 () Bool)

(assert (= bs!852555 (and b!4517499 d!1390866)))

(declare-fun lambda!171955 () Int)

(assert (=> bs!852555 (= (= (extractMap!1212 (t!357721 (toList!4319 (+!1530 lt!1694164 lt!1694150)))) lt!1694574) (= lambda!171955 lambda!171943))))

(declare-fun bs!852556 () Bool)

(assert (= bs!852556 (and b!4517499 b!4517498)))

(assert (=> bs!852556 (= lambda!171955 lambda!171953)))

(declare-fun bs!852557 () Bool)

(assert (= bs!852557 (and b!4517499 b!4517389)))

(assert (=> bs!852557 (= (= (extractMap!1212 (t!357721 (toList!4319 (+!1530 lt!1694164 lt!1694150)))) lt!1695017) (= lambda!171955 lambda!171931))))

(declare-fun bs!852558 () Bool)

(assert (= bs!852558 (and b!4517499 b!4516662)))

(assert (=> bs!852558 (= (= (extractMap!1212 (t!357721 (toList!4319 (+!1530 lt!1694164 lt!1694150)))) lt!1694147) (= lambda!171955 lambda!171844))))

(declare-fun bs!852559 () Bool)

(assert (= bs!852559 (and b!4517499 b!4516807)))

(assert (=> bs!852559 (= (= (extractMap!1212 (t!357721 (toList!4319 (+!1530 lt!1694164 lt!1694150)))) (extractMap!1212 (t!357721 (toList!4319 lt!1694158)))) (= lambda!171955 lambda!171863))))

(declare-fun bs!852560 () Bool)

(assert (= bs!852560 (and b!4517499 d!1390358)))

(assert (=> bs!852560 (= (= (extractMap!1212 (t!357721 (toList!4319 (+!1530 lt!1694164 lt!1694150)))) lt!1694503) (= lambda!171955 lambda!171831))))

(declare-fun bs!852561 () Bool)

(assert (= bs!852561 (and b!4517499 d!1390568)))

(assert (=> bs!852561 (= (= (extractMap!1212 (t!357721 (toList!4319 (+!1530 lt!1694164 lt!1694150)))) lt!1694656) (= lambda!171955 lambda!171871))))

(declare-fun bs!852562 () Bool)

(assert (= bs!852562 (and b!4517499 b!4516744)))

(assert (=> bs!852562 (= (= (extractMap!1212 (t!357721 (toList!4319 (+!1530 lt!1694164 lt!1694150)))) lt!1694614) (= lambda!171955 lambda!171856))))

(declare-fun bs!852563 () Bool)

(assert (= bs!852563 (and b!4517499 b!4516663)))

(assert (=> bs!852563 (= (= (extractMap!1212 (t!357721 (toList!4319 (+!1530 lt!1694164 lt!1694150)))) lt!1694574) (= lambda!171955 lambda!171846))))

(declare-fun bs!852564 () Bool)

(assert (= bs!852564 (and b!4517499 d!1390564)))

(assert (=> bs!852564 (= (= (extractMap!1212 (t!357721 (toList!4319 (+!1530 lt!1694164 lt!1694150)))) lt!1694634) (= lambda!171955 lambda!171866))))

(declare-fun bs!852566 () Bool)

(assert (= bs!852566 (and b!4517499 d!1390472)))

(assert (=> bs!852566 (= (= (extractMap!1212 (t!357721 (toList!4319 (+!1530 lt!1694164 lt!1694150)))) lt!1694564) (= lambda!171955 lambda!171847))))

(declare-fun bs!852568 () Bool)

(assert (= bs!852568 (and b!4517499 b!4516815)))

(assert (=> bs!852568 (= (= (extractMap!1212 (t!357721 (toList!4319 (+!1530 lt!1694164 lt!1694150)))) lt!1694666) (= lambda!171955 lambda!171870))))

(declare-fun bs!852570 () Bool)

(assert (= bs!852570 (and b!4517499 d!1390694)))

(assert (=> bs!852570 (= (= (extractMap!1212 (t!357721 (toList!4319 (+!1530 lt!1694164 lt!1694150)))) lt!1694147) (= lambda!171955 lambda!171904))))

(assert (=> bs!852562 (= (= (extractMap!1212 (t!357721 (toList!4319 (+!1530 lt!1694164 lt!1694150)))) (extractMap!1212 (t!357721 (toList!4319 lt!1694164)))) (= lambda!171955 lambda!171855))))

(declare-fun bs!852572 () Bool)

(assert (= bs!852572 (and b!4517499 d!1390756)))

(assert (=> bs!852572 (= (= (extractMap!1212 (t!357721 (toList!4319 (+!1530 lt!1694164 lt!1694150)))) lt!1694172) (= lambda!171955 lambda!171920))))

(declare-fun bs!852574 () Bool)

(assert (= bs!852574 (and b!4517499 d!1390852)))

(assert (=> bs!852574 (= (= (extractMap!1212 (t!357721 (toList!4319 (+!1530 lt!1694164 lt!1694150)))) lt!1695007) (= lambda!171955 lambda!171933))))

(declare-fun bs!852576 () Bool)

(assert (= bs!852576 (and b!4517499 b!4517388)))

(assert (=> bs!852576 (= (= (extractMap!1212 (t!357721 (toList!4319 (+!1530 lt!1694164 lt!1694150)))) (+!1532 lt!1694147 (h!56483 (_2!28824 lt!1694150)))) (= lambda!171955 lambda!171927))))

(declare-fun bs!852578 () Bool)

(assert (= bs!852578 (and b!4517499 b!4516808)))

(assert (=> bs!852578 (= (= (extractMap!1212 (t!357721 (toList!4319 (+!1530 lt!1694164 lt!1694150)))) (extractMap!1212 (t!357721 (toList!4319 lt!1694158)))) (= lambda!171955 lambda!171864))))

(declare-fun bs!852579 () Bool)

(assert (= bs!852579 (and b!4517499 b!4516743)))

(assert (=> bs!852579 (= (= (extractMap!1212 (t!357721 (toList!4319 (+!1530 lt!1694164 lt!1694150)))) (extractMap!1212 (t!357721 (toList!4319 lt!1694164)))) (= lambda!171955 lambda!171854))))

(assert (=> bs!852578 (= (= (extractMap!1212 (t!357721 (toList!4319 (+!1530 lt!1694164 lt!1694150)))) lt!1694644) (= lambda!171955 lambda!171865))))

(declare-fun bs!852582 () Bool)

(assert (= bs!852582 (and b!4517499 b!4516604)))

(assert (=> bs!852582 (= (= (extractMap!1212 (t!357721 (toList!4319 (+!1530 lt!1694164 lt!1694150)))) lt!1694513) (= lambda!171955 lambda!171830))))

(declare-fun bs!852584 () Bool)

(assert (= bs!852584 (and b!4517499 d!1390326)))

(assert (=> bs!852584 (not (= lambda!171955 lambda!171772))))

(declare-fun bs!852586 () Bool)

(assert (= bs!852586 (and b!4517499 d!1390526)))

(assert (=> bs!852586 (= (= (extractMap!1212 (t!357721 (toList!4319 (+!1530 lt!1694164 lt!1694150)))) lt!1694604) (= lambda!171955 lambda!171857))))

(assert (=> bs!852582 (= (= (extractMap!1212 (t!357721 (toList!4319 (+!1530 lt!1694164 lt!1694150)))) lt!1694172) (= lambda!171955 lambda!171829))))

(declare-fun bs!852589 () Bool)

(assert (= bs!852589 (and b!4517499 b!4516603)))

(assert (=> bs!852589 (= (= (extractMap!1212 (t!357721 (toList!4319 (+!1530 lt!1694164 lt!1694150)))) lt!1694172) (= lambda!171955 lambda!171828))))

(assert (=> bs!852557 (= (= (extractMap!1212 (t!357721 (toList!4319 (+!1530 lt!1694164 lt!1694150)))) (+!1532 lt!1694147 (h!56483 (_2!28824 lt!1694150)))) (= lambda!171955 lambda!171929))))

(assert (=> bs!852568 (= (= (extractMap!1212 (t!357721 (toList!4319 (+!1530 lt!1694164 lt!1694150)))) (extractMap!1212 (t!357721 (toList!4319 lm!1477)))) (= lambda!171955 lambda!171869))))

(declare-fun bs!852592 () Bool)

(assert (= bs!852592 (and b!4517499 b!4516814)))

(assert (=> bs!852592 (= (= (extractMap!1212 (t!357721 (toList!4319 (+!1530 lt!1694164 lt!1694150)))) (extractMap!1212 (t!357721 (toList!4319 lm!1477)))) (= lambda!171955 lambda!171868))))

(assert (=> bs!852563 (= (= (extractMap!1212 (t!357721 (toList!4319 (+!1530 lt!1694164 lt!1694150)))) lt!1694147) (= lambda!171955 lambda!171845))))

(assert (=> b!4517499 true))

(declare-fun lt!1695158 () ListMap!3581)

(declare-fun lambda!171957 () Int)

(assert (=> bs!852555 (= (= lt!1695158 lt!1694574) (= lambda!171957 lambda!171943))))

(assert (=> bs!852556 (= (= lt!1695158 (extractMap!1212 (t!357721 (toList!4319 (+!1530 lt!1694164 lt!1694150))))) (= lambda!171957 lambda!171953))))

(assert (=> bs!852557 (= (= lt!1695158 lt!1695017) (= lambda!171957 lambda!171931))))

(assert (=> bs!852558 (= (= lt!1695158 lt!1694147) (= lambda!171957 lambda!171844))))

(assert (=> bs!852559 (= (= lt!1695158 (extractMap!1212 (t!357721 (toList!4319 lt!1694158)))) (= lambda!171957 lambda!171863))))

(assert (=> bs!852560 (= (= lt!1695158 lt!1694503) (= lambda!171957 lambda!171831))))

(assert (=> bs!852561 (= (= lt!1695158 lt!1694656) (= lambda!171957 lambda!171871))))

(assert (=> bs!852562 (= (= lt!1695158 lt!1694614) (= lambda!171957 lambda!171856))))

(assert (=> bs!852563 (= (= lt!1695158 lt!1694574) (= lambda!171957 lambda!171846))))

(assert (=> bs!852564 (= (= lt!1695158 lt!1694634) (= lambda!171957 lambda!171866))))

(assert (=> bs!852566 (= (= lt!1695158 lt!1694564) (= lambda!171957 lambda!171847))))

(assert (=> bs!852568 (= (= lt!1695158 lt!1694666) (= lambda!171957 lambda!171870))))

(assert (=> bs!852570 (= (= lt!1695158 lt!1694147) (= lambda!171957 lambda!171904))))

(assert (=> bs!852562 (= (= lt!1695158 (extractMap!1212 (t!357721 (toList!4319 lt!1694164)))) (= lambda!171957 lambda!171855))))

(assert (=> bs!852572 (= (= lt!1695158 lt!1694172) (= lambda!171957 lambda!171920))))

(assert (=> bs!852574 (= (= lt!1695158 lt!1695007) (= lambda!171957 lambda!171933))))

(assert (=> bs!852576 (= (= lt!1695158 (+!1532 lt!1694147 (h!56483 (_2!28824 lt!1694150)))) (= lambda!171957 lambda!171927))))

(assert (=> bs!852578 (= (= lt!1695158 (extractMap!1212 (t!357721 (toList!4319 lt!1694158)))) (= lambda!171957 lambda!171864))))

(assert (=> bs!852579 (= (= lt!1695158 (extractMap!1212 (t!357721 (toList!4319 lt!1694164)))) (= lambda!171957 lambda!171854))))

(assert (=> bs!852578 (= (= lt!1695158 lt!1694644) (= lambda!171957 lambda!171865))))

(assert (=> bs!852582 (= (= lt!1695158 lt!1694513) (= lambda!171957 lambda!171830))))

(assert (=> bs!852584 (not (= lambda!171957 lambda!171772))))

(assert (=> bs!852586 (= (= lt!1695158 lt!1694604) (= lambda!171957 lambda!171857))))

(assert (=> bs!852582 (= (= lt!1695158 lt!1694172) (= lambda!171957 lambda!171829))))

(assert (=> bs!852589 (= (= lt!1695158 lt!1694172) (= lambda!171957 lambda!171828))))

(assert (=> bs!852557 (= (= lt!1695158 (+!1532 lt!1694147 (h!56483 (_2!28824 lt!1694150)))) (= lambda!171957 lambda!171929))))

(assert (=> bs!852568 (= (= lt!1695158 (extractMap!1212 (t!357721 (toList!4319 lm!1477)))) (= lambda!171957 lambda!171869))))

(assert (=> b!4517499 (= (= lt!1695158 (extractMap!1212 (t!357721 (toList!4319 (+!1530 lt!1694164 lt!1694150))))) (= lambda!171957 lambda!171955))))

(assert (=> bs!852592 (= (= lt!1695158 (extractMap!1212 (t!357721 (toList!4319 lm!1477)))) (= lambda!171957 lambda!171868))))

(assert (=> bs!852563 (= (= lt!1695158 lt!1694147) (= lambda!171957 lambda!171845))))

(assert (=> b!4517499 true))

(declare-fun bs!852600 () Bool)

(declare-fun d!1390924 () Bool)

(assert (= bs!852600 (and d!1390924 d!1390866)))

(declare-fun lambda!171958 () Int)

(declare-fun lt!1695148 () ListMap!3581)

(assert (=> bs!852600 (= (= lt!1695148 lt!1694574) (= lambda!171958 lambda!171943))))

(declare-fun bs!852602 () Bool)

(assert (= bs!852602 (and d!1390924 b!4517498)))

(assert (=> bs!852602 (= (= lt!1695148 (extractMap!1212 (t!357721 (toList!4319 (+!1530 lt!1694164 lt!1694150))))) (= lambda!171958 lambda!171953))))

(declare-fun bs!852603 () Bool)

(assert (= bs!852603 (and d!1390924 b!4517389)))

(assert (=> bs!852603 (= (= lt!1695148 lt!1695017) (= lambda!171958 lambda!171931))))

(declare-fun bs!852604 () Bool)

(assert (= bs!852604 (and d!1390924 b!4516662)))

(assert (=> bs!852604 (= (= lt!1695148 lt!1694147) (= lambda!171958 lambda!171844))))

(declare-fun bs!852605 () Bool)

(assert (= bs!852605 (and d!1390924 d!1390358)))

(assert (=> bs!852605 (= (= lt!1695148 lt!1694503) (= lambda!171958 lambda!171831))))

(declare-fun bs!852607 () Bool)

(assert (= bs!852607 (and d!1390924 d!1390568)))

(assert (=> bs!852607 (= (= lt!1695148 lt!1694656) (= lambda!171958 lambda!171871))))

(declare-fun bs!852608 () Bool)

(assert (= bs!852608 (and d!1390924 b!4516744)))

(assert (=> bs!852608 (= (= lt!1695148 lt!1694614) (= lambda!171958 lambda!171856))))

(declare-fun bs!852609 () Bool)

(assert (= bs!852609 (and d!1390924 b!4516663)))

(assert (=> bs!852609 (= (= lt!1695148 lt!1694574) (= lambda!171958 lambda!171846))))

(declare-fun bs!852610 () Bool)

(assert (= bs!852610 (and d!1390924 d!1390564)))

(assert (=> bs!852610 (= (= lt!1695148 lt!1694634) (= lambda!171958 lambda!171866))))

(declare-fun bs!852611 () Bool)

(assert (= bs!852611 (and d!1390924 d!1390472)))

(assert (=> bs!852611 (= (= lt!1695148 lt!1694564) (= lambda!171958 lambda!171847))))

(declare-fun bs!852612 () Bool)

(assert (= bs!852612 (and d!1390924 b!4516815)))

(assert (=> bs!852612 (= (= lt!1695148 lt!1694666) (= lambda!171958 lambda!171870))))

(declare-fun bs!852613 () Bool)

(assert (= bs!852613 (and d!1390924 d!1390694)))

(assert (=> bs!852613 (= (= lt!1695148 lt!1694147) (= lambda!171958 lambda!171904))))

(assert (=> bs!852608 (= (= lt!1695148 (extractMap!1212 (t!357721 (toList!4319 lt!1694164)))) (= lambda!171958 lambda!171855))))

(declare-fun bs!852614 () Bool)

(assert (= bs!852614 (and d!1390924 d!1390756)))

(assert (=> bs!852614 (= (= lt!1695148 lt!1694172) (= lambda!171958 lambda!171920))))

(declare-fun bs!852615 () Bool)

(assert (= bs!852615 (and d!1390924 d!1390852)))

(assert (=> bs!852615 (= (= lt!1695148 lt!1695007) (= lambda!171958 lambda!171933))))

(declare-fun bs!852616 () Bool)

(assert (= bs!852616 (and d!1390924 b!4517388)))

(assert (=> bs!852616 (= (= lt!1695148 (+!1532 lt!1694147 (h!56483 (_2!28824 lt!1694150)))) (= lambda!171958 lambda!171927))))

(declare-fun bs!852617 () Bool)

(assert (= bs!852617 (and d!1390924 b!4516808)))

(assert (=> bs!852617 (= (= lt!1695148 (extractMap!1212 (t!357721 (toList!4319 lt!1694158)))) (= lambda!171958 lambda!171864))))

(declare-fun bs!852618 () Bool)

(assert (= bs!852618 (and d!1390924 b!4516807)))

(assert (=> bs!852618 (= (= lt!1695148 (extractMap!1212 (t!357721 (toList!4319 lt!1694158)))) (= lambda!171958 lambda!171863))))

(declare-fun bs!852619 () Bool)

(assert (= bs!852619 (and d!1390924 b!4517499)))

(assert (=> bs!852619 (= (= lt!1695148 lt!1695158) (= lambda!171958 lambda!171957))))

(declare-fun bs!852620 () Bool)

(assert (= bs!852620 (and d!1390924 b!4516743)))

(assert (=> bs!852620 (= (= lt!1695148 (extractMap!1212 (t!357721 (toList!4319 lt!1694164)))) (= lambda!171958 lambda!171854))))

(assert (=> bs!852617 (= (= lt!1695148 lt!1694644) (= lambda!171958 lambda!171865))))

(declare-fun bs!852621 () Bool)

(assert (= bs!852621 (and d!1390924 b!4516604)))

(assert (=> bs!852621 (= (= lt!1695148 lt!1694513) (= lambda!171958 lambda!171830))))

(declare-fun bs!852622 () Bool)

(assert (= bs!852622 (and d!1390924 d!1390326)))

(assert (=> bs!852622 (not (= lambda!171958 lambda!171772))))

(declare-fun bs!852623 () Bool)

(assert (= bs!852623 (and d!1390924 d!1390526)))

(assert (=> bs!852623 (= (= lt!1695148 lt!1694604) (= lambda!171958 lambda!171857))))

(assert (=> bs!852621 (= (= lt!1695148 lt!1694172) (= lambda!171958 lambda!171829))))

(declare-fun bs!852624 () Bool)

(assert (= bs!852624 (and d!1390924 b!4516603)))

(assert (=> bs!852624 (= (= lt!1695148 lt!1694172) (= lambda!171958 lambda!171828))))

(assert (=> bs!852603 (= (= lt!1695148 (+!1532 lt!1694147 (h!56483 (_2!28824 lt!1694150)))) (= lambda!171958 lambda!171929))))

(assert (=> bs!852612 (= (= lt!1695148 (extractMap!1212 (t!357721 (toList!4319 lm!1477)))) (= lambda!171958 lambda!171869))))

(assert (=> bs!852619 (= (= lt!1695148 (extractMap!1212 (t!357721 (toList!4319 (+!1530 lt!1694164 lt!1694150))))) (= lambda!171958 lambda!171955))))

(declare-fun bs!852625 () Bool)

(assert (= bs!852625 (and d!1390924 b!4516814)))

(assert (=> bs!852625 (= (= lt!1695148 (extractMap!1212 (t!357721 (toList!4319 lm!1477)))) (= lambda!171958 lambda!171868))))

(assert (=> bs!852609 (= (= lt!1695148 lt!1694147) (= lambda!171958 lambda!171845))))

(assert (=> d!1390924 true))

(declare-fun call!314689 () Bool)

(declare-fun c!770815 () Bool)

(declare-fun bm!314683 () Bool)

(assert (=> bm!314683 (= call!314689 (forall!10253 (toList!4320 (extractMap!1212 (t!357721 (toList!4319 (+!1530 lt!1694164 lt!1694150))))) (ite c!770815 lambda!171953 lambda!171955)))))

(declare-fun call!314688 () Bool)

(declare-fun bm!314684 () Bool)

(assert (=> bm!314684 (= call!314688 (forall!10253 (toList!4320 (extractMap!1212 (t!357721 (toList!4319 (+!1530 lt!1694164 lt!1694150))))) (ite c!770815 lambda!171953 lambda!171957)))))

(declare-fun b!4517496 () Bool)

(declare-fun e!2814447 () Bool)

(assert (=> b!4517496 (= e!2814447 (forall!10253 (toList!4320 (extractMap!1212 (t!357721 (toList!4319 (+!1530 lt!1694164 lt!1694150))))) lambda!171957))))

(declare-fun bm!314685 () Bool)

(declare-fun call!314690 () Unit!94398)

(assert (=> bm!314685 (= call!314690 (lemmaContainsAllItsOwnKeys!334 (extractMap!1212 (t!357721 (toList!4319 (+!1530 lt!1694164 lt!1694150))))))))

(declare-fun b!4517497 () Bool)

(declare-fun res!1879840 () Bool)

(declare-fun e!2814446 () Bool)

(assert (=> b!4517497 (=> (not res!1879840) (not e!2814446))))

(assert (=> b!4517497 (= res!1879840 (forall!10253 (toList!4320 (extractMap!1212 (t!357721 (toList!4319 (+!1530 lt!1694164 lt!1694150))))) lambda!171958))))

(assert (=> d!1390924 e!2814446))

(declare-fun res!1879839 () Bool)

(assert (=> d!1390924 (=> (not res!1879839) (not e!2814446))))

(assert (=> d!1390924 (= res!1879839 (forall!10253 (_2!28824 (h!56484 (toList!4319 (+!1530 lt!1694164 lt!1694150)))) lambda!171958))))

(declare-fun e!2814445 () ListMap!3581)

(assert (=> d!1390924 (= lt!1695148 e!2814445)))

(assert (=> d!1390924 (= c!770815 ((_ is Nil!50634) (_2!28824 (h!56484 (toList!4319 (+!1530 lt!1694164 lt!1694150))))))))

(assert (=> d!1390924 (noDuplicateKeys!1156 (_2!28824 (h!56484 (toList!4319 (+!1530 lt!1694164 lt!1694150)))))))

(assert (=> d!1390924 (= (addToMapMapFromBucket!683 (_2!28824 (h!56484 (toList!4319 (+!1530 lt!1694164 lt!1694150)))) (extractMap!1212 (t!357721 (toList!4319 (+!1530 lt!1694164 lt!1694150))))) lt!1695148)))

(assert (=> b!4517498 (= e!2814445 (extractMap!1212 (t!357721 (toList!4319 (+!1530 lt!1694164 lt!1694150)))))))

(declare-fun lt!1695162 () Unit!94398)

(assert (=> b!4517498 (= lt!1695162 call!314690)))

(assert (=> b!4517498 call!314689))

(declare-fun lt!1695152 () Unit!94398)

(assert (=> b!4517498 (= lt!1695152 lt!1695162)))

(assert (=> b!4517498 call!314688))

(declare-fun lt!1695150 () Unit!94398)

(declare-fun Unit!94611 () Unit!94398)

(assert (=> b!4517498 (= lt!1695150 Unit!94611)))

(assert (=> b!4517499 (= e!2814445 lt!1695158)))

(declare-fun lt!1695165 () ListMap!3581)

(assert (=> b!4517499 (= lt!1695165 (+!1532 (extractMap!1212 (t!357721 (toList!4319 (+!1530 lt!1694164 lt!1694150)))) (h!56483 (_2!28824 (h!56484 (toList!4319 (+!1530 lt!1694164 lt!1694150)))))))))

(assert (=> b!4517499 (= lt!1695158 (addToMapMapFromBucket!683 (t!357720 (_2!28824 (h!56484 (toList!4319 (+!1530 lt!1694164 lt!1694150))))) (+!1532 (extractMap!1212 (t!357721 (toList!4319 (+!1530 lt!1694164 lt!1694150)))) (h!56483 (_2!28824 (h!56484 (toList!4319 (+!1530 lt!1694164 lt!1694150))))))))))

(declare-fun lt!1695147 () Unit!94398)

(assert (=> b!4517499 (= lt!1695147 call!314690)))

(assert (=> b!4517499 call!314689))

(declare-fun lt!1695160 () Unit!94398)

(assert (=> b!4517499 (= lt!1695160 lt!1695147)))

(assert (=> b!4517499 (forall!10253 (toList!4320 lt!1695165) lambda!171957)))

(declare-fun lt!1695163 () Unit!94398)

(declare-fun Unit!94612 () Unit!94398)

(assert (=> b!4517499 (= lt!1695163 Unit!94612)))

(assert (=> b!4517499 (forall!10253 (t!357720 (_2!28824 (h!56484 (toList!4319 (+!1530 lt!1694164 lt!1694150))))) lambda!171957)))

(declare-fun lt!1695149 () Unit!94398)

(declare-fun Unit!94613 () Unit!94398)

(assert (=> b!4517499 (= lt!1695149 Unit!94613)))

(declare-fun lt!1695157 () Unit!94398)

(declare-fun Unit!94614 () Unit!94398)

(assert (=> b!4517499 (= lt!1695157 Unit!94614)))

(declare-fun lt!1695164 () Unit!94398)

(assert (=> b!4517499 (= lt!1695164 (forallContained!2505 (toList!4320 lt!1695165) lambda!171957 (h!56483 (_2!28824 (h!56484 (toList!4319 (+!1530 lt!1694164 lt!1694150)))))))))

(assert (=> b!4517499 (contains!13353 lt!1695165 (_1!28823 (h!56483 (_2!28824 (h!56484 (toList!4319 (+!1530 lt!1694164 lt!1694150)))))))))

(declare-fun lt!1695161 () Unit!94398)

(declare-fun Unit!94615 () Unit!94398)

(assert (=> b!4517499 (= lt!1695161 Unit!94615)))

(assert (=> b!4517499 (contains!13353 lt!1695158 (_1!28823 (h!56483 (_2!28824 (h!56484 (toList!4319 (+!1530 lt!1694164 lt!1694150)))))))))

(declare-fun lt!1695153 () Unit!94398)

(declare-fun Unit!94616 () Unit!94398)

(assert (=> b!4517499 (= lt!1695153 Unit!94616)))

(assert (=> b!4517499 (forall!10253 (_2!28824 (h!56484 (toList!4319 (+!1530 lt!1694164 lt!1694150)))) lambda!171957)))

(declare-fun lt!1695155 () Unit!94398)

(declare-fun Unit!94617 () Unit!94398)

(assert (=> b!4517499 (= lt!1695155 Unit!94617)))

(assert (=> b!4517499 (forall!10253 (toList!4320 lt!1695165) lambda!171957)))

(declare-fun lt!1695156 () Unit!94398)

(declare-fun Unit!94618 () Unit!94398)

(assert (=> b!4517499 (= lt!1695156 Unit!94618)))

(declare-fun lt!1695159 () Unit!94398)

(declare-fun Unit!94619 () Unit!94398)

(assert (=> b!4517499 (= lt!1695159 Unit!94619)))

(declare-fun lt!1695151 () Unit!94398)

(assert (=> b!4517499 (= lt!1695151 (addForallContainsKeyThenBeforeAdding!334 (extractMap!1212 (t!357721 (toList!4319 (+!1530 lt!1694164 lt!1694150)))) lt!1695158 (_1!28823 (h!56483 (_2!28824 (h!56484 (toList!4319 (+!1530 lt!1694164 lt!1694150)))))) (_2!28823 (h!56483 (_2!28824 (h!56484 (toList!4319 (+!1530 lt!1694164 lt!1694150))))))))))

(assert (=> b!4517499 (forall!10253 (toList!4320 (extractMap!1212 (t!357721 (toList!4319 (+!1530 lt!1694164 lt!1694150))))) lambda!171957)))

(declare-fun lt!1695146 () Unit!94398)

(assert (=> b!4517499 (= lt!1695146 lt!1695151)))

(assert (=> b!4517499 call!314688))

(declare-fun lt!1695166 () Unit!94398)

(declare-fun Unit!94620 () Unit!94398)

(assert (=> b!4517499 (= lt!1695166 Unit!94620)))

(declare-fun res!1879838 () Bool)

(assert (=> b!4517499 (= res!1879838 (forall!10253 (_2!28824 (h!56484 (toList!4319 (+!1530 lt!1694164 lt!1694150)))) lambda!171957))))

(assert (=> b!4517499 (=> (not res!1879838) (not e!2814447))))

(assert (=> b!4517499 e!2814447))

(declare-fun lt!1695154 () Unit!94398)

(declare-fun Unit!94621 () Unit!94398)

(assert (=> b!4517499 (= lt!1695154 Unit!94621)))

(declare-fun b!4517500 () Bool)

(assert (=> b!4517500 (= e!2814446 (invariantList!1013 (toList!4320 lt!1695148)))))

(assert (= (and d!1390924 c!770815) b!4517498))

(assert (= (and d!1390924 (not c!770815)) b!4517499))

(assert (= (and b!4517499 res!1879838) b!4517496))

(assert (= (or b!4517498 b!4517499) bm!314684))

(assert (= (or b!4517498 b!4517499) bm!314683))

(assert (= (or b!4517498 b!4517499) bm!314685))

(assert (= (and d!1390924 res!1879839) b!4517497))

(assert (= (and b!4517497 res!1879840) b!4517500))

(declare-fun m!5263025 () Bool)

(assert (=> b!4517500 m!5263025))

(declare-fun m!5263027 () Bool)

(assert (=> b!4517499 m!5263027))

(declare-fun m!5263029 () Bool)

(assert (=> b!4517499 m!5263029))

(declare-fun m!5263033 () Bool)

(assert (=> b!4517499 m!5263033))

(declare-fun m!5263037 () Bool)

(assert (=> b!4517499 m!5263037))

(assert (=> b!4517499 m!5261451))

(declare-fun m!5263039 () Bool)

(assert (=> b!4517499 m!5263039))

(assert (=> b!4517499 m!5263027))

(declare-fun m!5263041 () Bool)

(assert (=> b!4517499 m!5263041))

(assert (=> b!4517499 m!5263033))

(declare-fun m!5263043 () Bool)

(assert (=> b!4517499 m!5263043))

(assert (=> b!4517499 m!5261451))

(declare-fun m!5263045 () Bool)

(assert (=> b!4517499 m!5263045))

(declare-fun m!5263047 () Bool)

(assert (=> b!4517499 m!5263047))

(assert (=> b!4517499 m!5263045))

(declare-fun m!5263049 () Bool)

(assert (=> b!4517499 m!5263049))

(declare-fun m!5263051 () Bool)

(assert (=> d!1390924 m!5263051))

(declare-fun m!5263053 () Bool)

(assert (=> d!1390924 m!5263053))

(declare-fun m!5263055 () Bool)

(assert (=> bm!314683 m!5263055))

(assert (=> bm!314685 m!5261451))

(declare-fun m!5263057 () Bool)

(assert (=> bm!314685 m!5263057))

(declare-fun m!5263059 () Bool)

(assert (=> b!4517497 m!5263059))

(assert (=> b!4517496 m!5263037))

(declare-fun m!5263061 () Bool)

(assert (=> bm!314684 m!5263061))

(assert (=> b!4516652 d!1390924))

(declare-fun bs!852635 () Bool)

(declare-fun d!1390944 () Bool)

(assert (= bs!852635 (and d!1390944 d!1390298)))

(declare-fun lambda!171960 () Int)

(assert (=> bs!852635 (= lambda!171960 lambda!171755)))

(declare-fun bs!852637 () Bool)

(assert (= bs!852637 (and d!1390944 d!1390898)))

(assert (=> bs!852637 (= lambda!171960 lambda!171945)))

(declare-fun bs!852639 () Bool)

(assert (= bs!852639 (and d!1390944 d!1390462)))

(assert (=> bs!852639 (= lambda!171960 lambda!171843)))

(declare-fun bs!852641 () Bool)

(assert (= bs!852641 (and d!1390944 d!1390438)))

(assert (=> bs!852641 (= lambda!171960 lambda!171838)))

(declare-fun bs!852643 () Bool)

(assert (= bs!852643 (and d!1390944 d!1390452)))

(assert (=> bs!852643 (= lambda!171960 lambda!171839)))

(declare-fun bs!852645 () Bool)

(assert (= bs!852645 (and d!1390944 start!446940)))

(assert (=> bs!852645 (= lambda!171960 lambda!171717)))

(declare-fun bs!852647 () Bool)

(assert (= bs!852647 (and d!1390944 d!1390334)))

(assert (=> bs!852647 (= lambda!171960 lambda!171775)))

(declare-fun bs!852648 () Bool)

(assert (= bs!852648 (and d!1390944 d!1390300)))

(assert (=> bs!852648 (= lambda!171960 lambda!171762)))

(declare-fun bs!852650 () Bool)

(assert (= bs!852650 (and d!1390944 d!1390460)))

(assert (=> bs!852650 (= lambda!171960 lambda!171840)))

(declare-fun bs!852652 () Bool)

(assert (= bs!852652 (and d!1390944 d!1390566)))

(assert (=> bs!852652 (= lambda!171960 lambda!171867)))

(declare-fun bs!852654 () Bool)

(assert (= bs!852654 (and d!1390944 d!1390324)))

(assert (=> bs!852654 (not (= lambda!171960 lambda!171769))))

(declare-fun bs!852657 () Bool)

(assert (= bs!852657 (and d!1390944 d!1390530)))

(assert (=> bs!852657 (= lambda!171960 lambda!171858)))

(declare-fun bs!852659 () Bool)

(assert (= bs!852659 (and d!1390944 d!1390294)))

(assert (=> bs!852659 (= lambda!171960 lambda!171751)))

(declare-fun bs!852660 () Bool)

(assert (= bs!852660 (and d!1390944 d!1390314)))

(assert (=> bs!852660 (= lambda!171960 lambda!171763)))

(declare-fun bs!852662 () Bool)

(assert (= bs!852662 (and d!1390944 d!1390424)))

(assert (=> bs!852662 (= lambda!171960 lambda!171832)))

(declare-fun bs!852663 () Bool)

(assert (= bs!852663 (and d!1390944 d!1390270)))

(assert (=> bs!852663 (= lambda!171960 lambda!171720)))

(declare-fun lt!1695174 () ListMap!3581)

(assert (=> d!1390944 (invariantList!1013 (toList!4320 lt!1695174))))

(declare-fun e!2814458 () ListMap!3581)

(assert (=> d!1390944 (= lt!1695174 e!2814458)))

(declare-fun c!770817 () Bool)

(assert (=> d!1390944 (= c!770817 ((_ is Cons!50635) (t!357721 (toList!4319 (+!1530 lt!1694164 lt!1694150)))))))

(assert (=> d!1390944 (forall!10251 (t!357721 (toList!4319 (+!1530 lt!1694164 lt!1694150))) lambda!171960)))

(assert (=> d!1390944 (= (extractMap!1212 (t!357721 (toList!4319 (+!1530 lt!1694164 lt!1694150)))) lt!1695174)))

(declare-fun b!4517512 () Bool)

(assert (=> b!4517512 (= e!2814458 (addToMapMapFromBucket!683 (_2!28824 (h!56484 (t!357721 (toList!4319 (+!1530 lt!1694164 lt!1694150))))) (extractMap!1212 (t!357721 (t!357721 (toList!4319 (+!1530 lt!1694164 lt!1694150)))))))))

(declare-fun b!4517513 () Bool)

(assert (=> b!4517513 (= e!2814458 (ListMap!3582 Nil!50634))))

(assert (= (and d!1390944 c!770817) b!4517512))

(assert (= (and d!1390944 (not c!770817)) b!4517513))

(declare-fun m!5263063 () Bool)

(assert (=> d!1390944 m!5263063))

(declare-fun m!5263065 () Bool)

(assert (=> d!1390944 m!5263065))

(declare-fun m!5263067 () Bool)

(assert (=> b!4517512 m!5263067))

(assert (=> b!4517512 m!5263067))

(declare-fun m!5263069 () Bool)

(assert (=> b!4517512 m!5263069))

(assert (=> b!4516652 d!1390944))

(declare-fun b!4517517 () Bool)

(declare-fun e!2814460 () Option!11103)

(assert (=> b!4517517 (= e!2814460 None!11102)))

(declare-fun b!4517516 () Bool)

(assert (=> b!4517516 (= e!2814460 (getValueByKey!1083 (t!357721 (toList!4319 lt!1694541)) (_1!28824 lt!1694154)))))

(declare-fun b!4517514 () Bool)

(declare-fun e!2814459 () Option!11103)

(assert (=> b!4517514 (= e!2814459 (Some!11102 (_2!28824 (h!56484 (toList!4319 lt!1694541)))))))

(declare-fun b!4517515 () Bool)

(assert (=> b!4517515 (= e!2814459 e!2814460)))

(declare-fun c!770819 () Bool)

(assert (=> b!4517515 (= c!770819 (and ((_ is Cons!50635) (toList!4319 lt!1694541)) (not (= (_1!28824 (h!56484 (toList!4319 lt!1694541))) (_1!28824 lt!1694154)))))))

(declare-fun d!1390946 () Bool)

(declare-fun c!770818 () Bool)

(assert (=> d!1390946 (= c!770818 (and ((_ is Cons!50635) (toList!4319 lt!1694541)) (= (_1!28824 (h!56484 (toList!4319 lt!1694541))) (_1!28824 lt!1694154))))))

(assert (=> d!1390946 (= (getValueByKey!1083 (toList!4319 lt!1694541) (_1!28824 lt!1694154)) e!2814459)))

(assert (= (and d!1390946 c!770818) b!4517514))

(assert (= (and d!1390946 (not c!770818)) b!4517515))

(assert (= (and b!4517515 c!770819) b!4517516))

(assert (= (and b!4517515 (not c!770819)) b!4517517))

(declare-fun m!5263079 () Bool)

(assert (=> b!4517516 m!5263079))

(assert (=> b!4516645 d!1390946))

(declare-fun d!1390950 () Bool)

(declare-fun res!1879850 () Bool)

(declare-fun e!2814461 () Bool)

(assert (=> d!1390950 (=> res!1879850 e!2814461)))

(assert (=> d!1390950 (= res!1879850 ((_ is Nil!50634) (_2!28824 lt!1694150)))))

(assert (=> d!1390950 (= (forall!10253 (_2!28824 lt!1694150) lambda!171847) e!2814461)))

(declare-fun b!4517518 () Bool)

(declare-fun e!2814462 () Bool)

(assert (=> b!4517518 (= e!2814461 e!2814462)))

(declare-fun res!1879851 () Bool)

(assert (=> b!4517518 (=> (not res!1879851) (not e!2814462))))

(assert (=> b!4517518 (= res!1879851 (dynLambda!21156 lambda!171847 (h!56483 (_2!28824 lt!1694150))))))

(declare-fun b!4517519 () Bool)

(assert (=> b!4517519 (= e!2814462 (forall!10253 (t!357720 (_2!28824 lt!1694150)) lambda!171847))))

(assert (= (and d!1390950 (not res!1879850)) b!4517518))

(assert (= (and b!4517518 res!1879851) b!4517519))

(declare-fun b_lambda!154477 () Bool)

(assert (=> (not b_lambda!154477) (not b!4517518)))

(declare-fun m!5263081 () Bool)

(assert (=> b!4517518 m!5263081))

(declare-fun m!5263083 () Bool)

(assert (=> b!4517519 m!5263083))

(assert (=> d!1390472 d!1390950))

(assert (=> d!1390472 d!1390428))

(declare-fun d!1390952 () Bool)

(assert (=> d!1390952 (= (get!16578 (getValueByKey!1083 (toList!4319 lm!1477) hash!344)) (v!44686 (getValueByKey!1083 (toList!4319 lm!1477) hash!344)))))

(assert (=> d!1390340 d!1390952))

(assert (=> d!1390340 d!1390682))

(declare-fun d!1390954 () Bool)

(declare-fun res!1879857 () Bool)

(declare-fun e!2814467 () Bool)

(assert (=> d!1390954 (=> res!1879857 e!2814467)))

(declare-fun e!2814468 () Bool)

(assert (=> d!1390954 (= res!1879857 e!2814468)))

(declare-fun res!1879855 () Bool)

(assert (=> d!1390954 (=> (not res!1879855) (not e!2814468))))

(assert (=> d!1390954 (= res!1879855 ((_ is Cons!50635) (t!357721 (toList!4319 lt!1694164))))))

(assert (=> d!1390954 (= (containsKeyBiggerList!136 (t!357721 (toList!4319 lt!1694164)) key!3287) e!2814467)))

(declare-fun b!4517525 () Bool)

(assert (=> b!4517525 (= e!2814468 (containsKey!1768 (_2!28824 (h!56484 (t!357721 (toList!4319 lt!1694164)))) key!3287))))

(declare-fun b!4517526 () Bool)

(declare-fun e!2814466 () Bool)

(assert (=> b!4517526 (= e!2814467 e!2814466)))

(declare-fun res!1879856 () Bool)

(assert (=> b!4517526 (=> (not res!1879856) (not e!2814466))))

(assert (=> b!4517526 (= res!1879856 ((_ is Cons!50635) (t!357721 (toList!4319 lt!1694164))))))

(declare-fun b!4517527 () Bool)

(assert (=> b!4517527 (= e!2814466 (containsKeyBiggerList!136 (t!357721 (t!357721 (toList!4319 lt!1694164))) key!3287))))

(assert (= (and d!1390954 res!1879855) b!4517525))

(assert (= (and d!1390954 (not res!1879857)) b!4517526))

(assert (= (and b!4517526 res!1879856) b!4517527))

(declare-fun m!5263085 () Bool)

(assert (=> b!4517525 m!5263085))

(declare-fun m!5263087 () Bool)

(assert (=> b!4517527 m!5263087))

(assert (=> b!4516624 d!1390954))

(assert (=> b!4516420 d!1390504))

(declare-fun d!1390956 () Bool)

(declare-fun res!1879858 () Bool)

(declare-fun e!2814469 () Bool)

(assert (=> d!1390956 (=> res!1879858 e!2814469)))

(assert (=> d!1390956 (= res!1879858 ((_ is Nil!50634) (toList!4320 lt!1694172)))))

(assert (=> d!1390956 (= (forall!10253 (toList!4320 lt!1694172) lambda!171830) e!2814469)))

(declare-fun b!4517528 () Bool)

(declare-fun e!2814470 () Bool)

(assert (=> b!4517528 (= e!2814469 e!2814470)))

(declare-fun res!1879859 () Bool)

(assert (=> b!4517528 (=> (not res!1879859) (not e!2814470))))

(assert (=> b!4517528 (= res!1879859 (dynLambda!21156 lambda!171830 (h!56483 (toList!4320 lt!1694172))))))

(declare-fun b!4517529 () Bool)

(assert (=> b!4517529 (= e!2814470 (forall!10253 (t!357720 (toList!4320 lt!1694172)) lambda!171830))))

(assert (= (and d!1390956 (not res!1879858)) b!4517528))

(assert (= (and b!4517528 res!1879859) b!4517529))

(declare-fun b_lambda!154479 () Bool)

(assert (=> (not b_lambda!154479) (not b!4517528)))

(declare-fun m!5263089 () Bool)

(assert (=> b!4517528 m!5263089))

(declare-fun m!5263091 () Bool)

(assert (=> b!4517529 m!5263091))

(assert (=> b!4516601 d!1390956))

(declare-fun d!1390958 () Bool)

(declare-fun res!1879860 () Bool)

(declare-fun e!2814471 () Bool)

(assert (=> d!1390958 (=> res!1879860 e!2814471)))

(assert (=> d!1390958 (= res!1879860 (not ((_ is Cons!50634) (t!357720 newBucket!178))))))

(assert (=> d!1390958 (= (noDuplicateKeys!1156 (t!357720 newBucket!178)) e!2814471)))

(declare-fun b!4517530 () Bool)

(declare-fun e!2814472 () Bool)

(assert (=> b!4517530 (= e!2814471 e!2814472)))

(declare-fun res!1879861 () Bool)

(assert (=> b!4517530 (=> (not res!1879861) (not e!2814472))))

(assert (=> b!4517530 (= res!1879861 (not (containsKey!1768 (t!357720 (t!357720 newBucket!178)) (_1!28823 (h!56483 (t!357720 newBucket!178))))))))

(declare-fun b!4517531 () Bool)

(assert (=> b!4517531 (= e!2814472 (noDuplicateKeys!1156 (t!357720 (t!357720 newBucket!178))))))

(assert (= (and d!1390958 (not res!1879860)) b!4517530))

(assert (= (and b!4517530 res!1879861) b!4517531))

(declare-fun m!5263093 () Bool)

(assert (=> b!4517530 m!5263093))

(declare-fun m!5263095 () Bool)

(assert (=> b!4517531 m!5263095))

(assert (=> b!4516324 d!1390958))

(assert (=> b!4516355 d!1390540))

(declare-fun d!1390960 () Bool)

(declare-fun lt!1695196 () Bool)

(assert (=> d!1390960 (= lt!1695196 (select (content!8345 (toList!4319 lm!1477)) (tuple2!51061 hash!344 lt!1694146)))))

(declare-fun e!2814474 () Bool)

(assert (=> d!1390960 (= lt!1695196 e!2814474)))

(declare-fun res!1879863 () Bool)

(assert (=> d!1390960 (=> (not res!1879863) (not e!2814474))))

(assert (=> d!1390960 (= res!1879863 ((_ is Cons!50635) (toList!4319 lm!1477)))))

(assert (=> d!1390960 (= (contains!13351 (toList!4319 lm!1477) (tuple2!51061 hash!344 lt!1694146)) lt!1695196)))

(declare-fun b!4517532 () Bool)

(declare-fun e!2814473 () Bool)

(assert (=> b!4517532 (= e!2814474 e!2814473)))

(declare-fun res!1879862 () Bool)

(assert (=> b!4517532 (=> res!1879862 e!2814473)))

(assert (=> b!4517532 (= res!1879862 (= (h!56484 (toList!4319 lm!1477)) (tuple2!51061 hash!344 lt!1694146)))))

(declare-fun b!4517533 () Bool)

(assert (=> b!4517533 (= e!2814473 (contains!13351 (t!357721 (toList!4319 lm!1477)) (tuple2!51061 hash!344 lt!1694146)))))

(assert (= (and d!1390960 res!1879863) b!4517532))

(assert (= (and b!4517532 (not res!1879862)) b!4517533))

(assert (=> d!1390960 m!5261045))

(declare-fun m!5263097 () Bool)

(assert (=> d!1390960 m!5263097))

(declare-fun m!5263099 () Bool)

(assert (=> b!4517533 m!5263099))

(assert (=> d!1390342 d!1390960))

(declare-fun d!1390962 () Bool)

(assert (=> d!1390962 (contains!13351 (toList!4319 lm!1477) (tuple2!51061 hash!344 lt!1694146))))

(assert (=> d!1390962 true))

(declare-fun _$14!1149 () Unit!94398)

(assert (=> d!1390962 (= (choose!29450 (toList!4319 lm!1477) hash!344 lt!1694146) _$14!1149)))

(declare-fun bs!852691 () Bool)

(assert (= bs!852691 d!1390962))

(assert (=> bs!852691 m!5261041))

(assert (=> d!1390342 d!1390962))

(assert (=> d!1390342 d!1390652))

(declare-fun bs!852698 () Bool)

(declare-fun b!4517535 () Bool)

(assert (= bs!852698 (and b!4517535 b!4516801)))

(declare-fun lambda!171963 () Int)

(assert (=> bs!852698 (= (= (t!357720 (toList!4320 lt!1694148)) (toList!4320 (extractMap!1212 (t!357721 (toList!4319 lm!1477))))) (= lambda!171963 lambda!171861))))

(declare-fun bs!852700 () Bool)

(assert (= bs!852700 (and b!4517535 b!4516877)))

(assert (=> bs!852700 (= (= (t!357720 (toList!4320 lt!1694148)) (t!357720 (toList!4320 (extractMap!1212 (t!357721 (toList!4319 lm!1477)))))) (= lambda!171963 lambda!171892))))

(declare-fun bs!852702 () Bool)

(assert (= bs!852702 (and b!4517535 b!4516724)))

(assert (=> bs!852702 (= (= (t!357720 (toList!4320 lt!1694148)) (toList!4320 lt!1694159)) (= lambda!171963 lambda!171852))))

(declare-fun bs!852704 () Bool)

(assert (= bs!852704 (and b!4517535 b!4516881)))

(assert (=> bs!852704 (= (= (t!357720 (toList!4320 lt!1694148)) (toList!4320 (extractMap!1212 (t!357721 (toList!4319 lm!1477))))) (= lambda!171963 lambda!171894))))

(declare-fun bs!852706 () Bool)

(assert (= bs!852706 (and b!4517535 b!4516939)))

(assert (=> bs!852706 (= (= (t!357720 (toList!4320 lt!1694148)) (toList!4320 lt!1694548)) (= lambda!171963 lambda!171896))))

(declare-fun bs!852708 () Bool)

(assert (= bs!852708 (and b!4517535 b!4516762)))

(assert (=> bs!852708 (= (= (t!357720 (toList!4320 lt!1694148)) (toList!4320 lt!1694148)) (= lambda!171963 lambda!171859))))

(declare-fun bs!852710 () Bool)

(assert (= bs!852710 (and b!4517535 b!4516878)))

(assert (=> bs!852710 (= (= (t!357720 (toList!4320 lt!1694148)) (Cons!50634 (h!56483 (toList!4320 (extractMap!1212 (t!357721 (toList!4319 lm!1477))))) (t!357720 (toList!4320 (extractMap!1212 (t!357721 (toList!4319 lm!1477))))))) (= lambda!171963 lambda!171893))))

(assert (=> b!4517535 true))

(declare-fun bs!852715 () Bool)

(declare-fun b!4517536 () Bool)

(assert (= bs!852715 (and b!4517536 b!4516801)))

(declare-fun lambda!171964 () Int)

(assert (=> bs!852715 (= (= (Cons!50634 (h!56483 (toList!4320 lt!1694148)) (t!357720 (toList!4320 lt!1694148))) (toList!4320 (extractMap!1212 (t!357721 (toList!4319 lm!1477))))) (= lambda!171964 lambda!171861))))

(declare-fun bs!852717 () Bool)

(assert (= bs!852717 (and b!4517536 b!4516877)))

(assert (=> bs!852717 (= (= (Cons!50634 (h!56483 (toList!4320 lt!1694148)) (t!357720 (toList!4320 lt!1694148))) (t!357720 (toList!4320 (extractMap!1212 (t!357721 (toList!4319 lm!1477)))))) (= lambda!171964 lambda!171892))))

(declare-fun bs!852719 () Bool)

(assert (= bs!852719 (and b!4517536 b!4516724)))

(assert (=> bs!852719 (= (= (Cons!50634 (h!56483 (toList!4320 lt!1694148)) (t!357720 (toList!4320 lt!1694148))) (toList!4320 lt!1694159)) (= lambda!171964 lambda!171852))))

(declare-fun bs!852721 () Bool)

(assert (= bs!852721 (and b!4517536 b!4516881)))

(assert (=> bs!852721 (= (= (Cons!50634 (h!56483 (toList!4320 lt!1694148)) (t!357720 (toList!4320 lt!1694148))) (toList!4320 (extractMap!1212 (t!357721 (toList!4319 lm!1477))))) (= lambda!171964 lambda!171894))))

(declare-fun bs!852723 () Bool)

(assert (= bs!852723 (and b!4517536 b!4517535)))

(assert (=> bs!852723 (= (= (Cons!50634 (h!56483 (toList!4320 lt!1694148)) (t!357720 (toList!4320 lt!1694148))) (t!357720 (toList!4320 lt!1694148))) (= lambda!171964 lambda!171963))))

(declare-fun bs!852725 () Bool)

(assert (= bs!852725 (and b!4517536 b!4516939)))

(assert (=> bs!852725 (= (= (Cons!50634 (h!56483 (toList!4320 lt!1694148)) (t!357720 (toList!4320 lt!1694148))) (toList!4320 lt!1694548)) (= lambda!171964 lambda!171896))))

(declare-fun bs!852727 () Bool)

(assert (= bs!852727 (and b!4517536 b!4516762)))

(assert (=> bs!852727 (= (= (Cons!50634 (h!56483 (toList!4320 lt!1694148)) (t!357720 (toList!4320 lt!1694148))) (toList!4320 lt!1694148)) (= lambda!171964 lambda!171859))))

(declare-fun bs!852728 () Bool)

(assert (= bs!852728 (and b!4517536 b!4516878)))

(assert (=> bs!852728 (= (= (Cons!50634 (h!56483 (toList!4320 lt!1694148)) (t!357720 (toList!4320 lt!1694148))) (Cons!50634 (h!56483 (toList!4320 (extractMap!1212 (t!357721 (toList!4319 lm!1477))))) (t!357720 (toList!4320 (extractMap!1212 (t!357721 (toList!4319 lm!1477))))))) (= lambda!171964 lambda!171893))))

(assert (=> b!4517536 true))

(declare-fun bs!852730 () Bool)

(declare-fun b!4517539 () Bool)

(assert (= bs!852730 (and b!4517539 b!4516801)))

(declare-fun lambda!171965 () Int)

(assert (=> bs!852730 (= (= (toList!4320 lt!1694148) (toList!4320 (extractMap!1212 (t!357721 (toList!4319 lm!1477))))) (= lambda!171965 lambda!171861))))

(declare-fun bs!852732 () Bool)

(assert (= bs!852732 (and b!4517539 b!4516877)))

(assert (=> bs!852732 (= (= (toList!4320 lt!1694148) (t!357720 (toList!4320 (extractMap!1212 (t!357721 (toList!4319 lm!1477)))))) (= lambda!171965 lambda!171892))))

(declare-fun bs!852734 () Bool)

(assert (= bs!852734 (and b!4517539 b!4516724)))

(assert (=> bs!852734 (= (= (toList!4320 lt!1694148) (toList!4320 lt!1694159)) (= lambda!171965 lambda!171852))))

(declare-fun bs!852735 () Bool)

(assert (= bs!852735 (and b!4517539 b!4516881)))

(assert (=> bs!852735 (= (= (toList!4320 lt!1694148) (toList!4320 (extractMap!1212 (t!357721 (toList!4319 lm!1477))))) (= lambda!171965 lambda!171894))))

(declare-fun bs!852736 () Bool)

(assert (= bs!852736 (and b!4517539 b!4517535)))

(assert (=> bs!852736 (= (= (toList!4320 lt!1694148) (t!357720 (toList!4320 lt!1694148))) (= lambda!171965 lambda!171963))))

(declare-fun bs!852737 () Bool)

(assert (= bs!852737 (and b!4517539 b!4517536)))

(assert (=> bs!852737 (= (= (toList!4320 lt!1694148) (Cons!50634 (h!56483 (toList!4320 lt!1694148)) (t!357720 (toList!4320 lt!1694148)))) (= lambda!171965 lambda!171964))))

(declare-fun bs!852738 () Bool)

(assert (= bs!852738 (and b!4517539 b!4516939)))

(assert (=> bs!852738 (= (= (toList!4320 lt!1694148) (toList!4320 lt!1694548)) (= lambda!171965 lambda!171896))))

(declare-fun bs!852739 () Bool)

(assert (= bs!852739 (and b!4517539 b!4516762)))

(assert (=> bs!852739 (= lambda!171965 lambda!171859)))

(declare-fun bs!852740 () Bool)

(assert (= bs!852740 (and b!4517539 b!4516878)))

(assert (=> bs!852740 (= (= (toList!4320 lt!1694148) (Cons!50634 (h!56483 (toList!4320 (extractMap!1212 (t!357721 (toList!4319 lm!1477))))) (t!357720 (toList!4320 (extractMap!1212 (t!357721 (toList!4319 lm!1477))))))) (= lambda!171965 lambda!171893))))

(assert (=> b!4517539 true))

(declare-fun bs!852741 () Bool)

(declare-fun b!4517540 () Bool)

(assert (= bs!852741 (and b!4517540 b!4516940)))

(declare-fun lambda!171967 () Int)

(assert (=> bs!852741 (= lambda!171967 lambda!171897)))

(declare-fun bs!852742 () Bool)

(assert (= bs!852742 (and b!4517540 b!4516802)))

(assert (=> bs!852742 (= lambda!171967 lambda!171862)))

(declare-fun bs!852743 () Bool)

(assert (= bs!852743 (and b!4517540 b!4516725)))

(assert (=> bs!852743 (= lambda!171967 lambda!171853)))

(declare-fun bs!852744 () Bool)

(assert (= bs!852744 (and b!4517540 b!4516763)))

(assert (=> bs!852744 (= lambda!171967 lambda!171860)))

(declare-fun bs!852745 () Bool)

(assert (= bs!852745 (and b!4517540 b!4516882)))

(assert (=> bs!852745 (= lambda!171967 lambda!171895)))

(declare-fun b!4517534 () Bool)

(declare-fun e!2814478 () Unit!94398)

(declare-fun Unit!94627 () Unit!94398)

(assert (=> b!4517534 (= e!2814478 Unit!94627)))

(assert (=> b!4517535 false))

(declare-fun lt!1695198 () Unit!94398)

(assert (=> b!4517535 (= lt!1695198 (forallContained!2507 (getKeysList!461 (t!357720 (toList!4320 lt!1694148))) lambda!171963 (_1!28823 (h!56483 (toList!4320 lt!1694148)))))))

(declare-fun e!2814476 () Unit!94398)

(declare-fun Unit!94630 () Unit!94398)

(assert (=> b!4517535 (= e!2814476 Unit!94630)))

(declare-fun e!2814475 () List!50761)

(assert (=> b!4517536 (= e!2814475 (Cons!50637 (_1!28823 (h!56483 (toList!4320 lt!1694148))) (getKeysList!461 (t!357720 (toList!4320 lt!1694148)))))))

(declare-fun c!770822 () Bool)

(assert (=> b!4517536 (= c!770822 (containsKey!1771 (t!357720 (toList!4320 lt!1694148)) (_1!28823 (h!56483 (toList!4320 lt!1694148)))))))

(declare-fun lt!1695200 () Unit!94398)

(assert (=> b!4517536 (= lt!1695200 e!2814478)))

(declare-fun c!770821 () Bool)

(assert (=> b!4517536 (= c!770821 (contains!13354 (getKeysList!461 (t!357720 (toList!4320 lt!1694148))) (_1!28823 (h!56483 (toList!4320 lt!1694148)))))))

(declare-fun lt!1695201 () Unit!94398)

(assert (=> b!4517536 (= lt!1695201 e!2814476)))

(declare-fun lt!1695197 () List!50761)

(assert (=> b!4517536 (= lt!1695197 (getKeysList!461 (t!357720 (toList!4320 lt!1694148))))))

(declare-fun lt!1695199 () Unit!94398)

(assert (=> b!4517536 (= lt!1695199 (lemmaForallContainsAddHeadPreserves!165 (t!357720 (toList!4320 lt!1694148)) lt!1695197 (h!56483 (toList!4320 lt!1694148))))))

(assert (=> b!4517536 (forall!10254 lt!1695197 lambda!171964)))

(declare-fun lt!1695202 () Unit!94398)

(assert (=> b!4517536 (= lt!1695202 lt!1695199)))

(declare-fun b!4517537 () Bool)

(assert (=> b!4517537 (= e!2814475 Nil!50637)))

(declare-fun b!4517538 () Bool)

(declare-fun Unit!94634 () Unit!94398)

(assert (=> b!4517538 (= e!2814476 Unit!94634)))

(declare-fun res!1879866 () Bool)

(declare-fun e!2814477 () Bool)

(assert (=> b!4517539 (=> (not res!1879866) (not e!2814477))))

(declare-fun lt!1695203 () List!50761)

(assert (=> b!4517539 (= res!1879866 (forall!10254 lt!1695203 lambda!171965))))

(declare-fun d!1390964 () Bool)

(assert (=> d!1390964 e!2814477))

(declare-fun res!1879864 () Bool)

(assert (=> d!1390964 (=> (not res!1879864) (not e!2814477))))

(assert (=> d!1390964 (= res!1879864 (noDuplicate!743 lt!1695203))))

(assert (=> d!1390964 (= lt!1695203 e!2814475)))

(declare-fun c!770823 () Bool)

(assert (=> d!1390964 (= c!770823 ((_ is Cons!50634) (toList!4320 lt!1694148)))))

(assert (=> d!1390964 (invariantList!1013 (toList!4320 lt!1694148))))

(assert (=> d!1390964 (= (getKeysList!461 (toList!4320 lt!1694148)) lt!1695203)))

(assert (=> b!4517540 (= e!2814477 (= (content!8347 lt!1695203) (content!8347 (map!11132 (toList!4320 lt!1694148) lambda!171967))))))

(declare-fun b!4517541 () Bool)

(declare-fun res!1879865 () Bool)

(assert (=> b!4517541 (=> (not res!1879865) (not e!2814477))))

(assert (=> b!4517541 (= res!1879865 (= (length!342 lt!1695203) (length!343 (toList!4320 lt!1694148))))))

(declare-fun b!4517542 () Bool)

(assert (=> b!4517542 false))

(declare-fun Unit!94636 () Unit!94398)

(assert (=> b!4517542 (= e!2814478 Unit!94636)))

(assert (= (and d!1390964 c!770823) b!4517536))

(assert (= (and d!1390964 (not c!770823)) b!4517537))

(assert (= (and b!4517536 c!770822) b!4517542))

(assert (= (and b!4517536 (not c!770822)) b!4517534))

(assert (= (and b!4517536 c!770821) b!4517535))

(assert (= (and b!4517536 (not c!770821)) b!4517538))

(assert (= (and d!1390964 res!1879864) b!4517541))

(assert (= (and b!4517541 res!1879865) b!4517539))

(assert (= (and b!4517539 res!1879866) b!4517540))

(declare-fun m!5263101 () Bool)

(assert (=> b!4517536 m!5263101))

(declare-fun m!5263103 () Bool)

(assert (=> b!4517536 m!5263103))

(declare-fun m!5263105 () Bool)

(assert (=> b!4517536 m!5263105))

(declare-fun m!5263107 () Bool)

(assert (=> b!4517536 m!5263107))

(declare-fun m!5263109 () Bool)

(assert (=> b!4517536 m!5263109))

(assert (=> b!4517536 m!5263105))

(declare-fun m!5263111 () Bool)

(assert (=> b!4517541 m!5263111))

(assert (=> b!4517541 m!5261693))

(declare-fun m!5263113 () Bool)

(assert (=> d!1390964 m!5263113))

(assert (=> d!1390964 m!5262515))

(assert (=> b!4517535 m!5263105))

(assert (=> b!4517535 m!5263105))

(declare-fun m!5263115 () Bool)

(assert (=> b!4517535 m!5263115))

(declare-fun m!5263117 () Bool)

(assert (=> b!4517540 m!5263117))

(declare-fun m!5263119 () Bool)

(assert (=> b!4517540 m!5263119))

(assert (=> b!4517540 m!5263119))

(declare-fun m!5263121 () Bool)

(assert (=> b!4517540 m!5263121))

(declare-fun m!5263123 () Bool)

(assert (=> b!4517539 m!5263123))

(assert (=> b!4516359 d!1390964))

(declare-fun d!1390966 () Bool)

(declare-fun lt!1695204 () List!50758)

(assert (=> d!1390966 (not (containsKey!1768 lt!1695204 key!3287))))

(declare-fun e!2814480 () List!50758)

(assert (=> d!1390966 (= lt!1695204 e!2814480)))

(declare-fun c!770824 () Bool)

(assert (=> d!1390966 (= c!770824 (and ((_ is Cons!50634) (t!357720 lt!1694146)) (= (_1!28823 (h!56483 (t!357720 lt!1694146))) key!3287)))))

(assert (=> d!1390966 (noDuplicateKeys!1156 (t!357720 lt!1694146))))

(assert (=> d!1390966 (= (removePairForKey!783 (t!357720 lt!1694146) key!3287) lt!1695204)))

(declare-fun b!4517544 () Bool)

(declare-fun e!2814479 () List!50758)

(assert (=> b!4517544 (= e!2814480 e!2814479)))

(declare-fun c!770825 () Bool)

(assert (=> b!4517544 (= c!770825 ((_ is Cons!50634) (t!357720 lt!1694146)))))

(declare-fun b!4517545 () Bool)

(assert (=> b!4517545 (= e!2814479 (Cons!50634 (h!56483 (t!357720 lt!1694146)) (removePairForKey!783 (t!357720 (t!357720 lt!1694146)) key!3287)))))

(declare-fun b!4517543 () Bool)

(assert (=> b!4517543 (= e!2814480 (t!357720 (t!357720 lt!1694146)))))

(declare-fun b!4517546 () Bool)

(assert (=> b!4517546 (= e!2814479 Nil!50634)))

(assert (= (and d!1390966 c!770824) b!4517543))

(assert (= (and d!1390966 (not c!770824)) b!4517544))

(assert (= (and b!4517544 c!770825) b!4517545))

(assert (= (and b!4517544 (not c!770825)) b!4517546))

(declare-fun m!5263125 () Bool)

(assert (=> d!1390966 m!5263125))

(assert (=> d!1390966 m!5261995))

(declare-fun m!5263127 () Bool)

(assert (=> b!4517545 m!5263127))

(assert (=> b!4516453 d!1390966))

(declare-fun d!1390968 () Bool)

(assert (=> d!1390968 (= (invariantList!1013 (toList!4320 lt!1694286)) (noDuplicatedKeys!258 (toList!4320 lt!1694286)))))

(declare-fun bs!852746 () Bool)

(assert (= bs!852746 d!1390968))

(declare-fun m!5263129 () Bool)

(assert (=> bs!852746 m!5263129))

(assert (=> d!1390298 d!1390968))

(declare-fun d!1390970 () Bool)

(declare-fun res!1879867 () Bool)

(declare-fun e!2814481 () Bool)

(assert (=> d!1390970 (=> res!1879867 e!2814481)))

(assert (=> d!1390970 (= res!1879867 ((_ is Nil!50635) (t!357721 (toList!4319 lm!1477))))))

(assert (=> d!1390970 (= (forall!10251 (t!357721 (toList!4319 lm!1477)) lambda!171755) e!2814481)))

(declare-fun b!4517547 () Bool)

(declare-fun e!2814482 () Bool)

(assert (=> b!4517547 (= e!2814481 e!2814482)))

(declare-fun res!1879868 () Bool)

(assert (=> b!4517547 (=> (not res!1879868) (not e!2814482))))

(assert (=> b!4517547 (= res!1879868 (dynLambda!21155 lambda!171755 (h!56484 (t!357721 (toList!4319 lm!1477)))))))

(declare-fun b!4517548 () Bool)

(assert (=> b!4517548 (= e!2814482 (forall!10251 (t!357721 (t!357721 (toList!4319 lm!1477))) lambda!171755))))

(assert (= (and d!1390970 (not res!1879867)) b!4517547))

(assert (= (and b!4517547 res!1879868) b!4517548))

(declare-fun b_lambda!154481 () Bool)

(assert (=> (not b_lambda!154481) (not b!4517547)))

(declare-fun m!5263131 () Bool)

(assert (=> b!4517547 m!5263131))

(declare-fun m!5263133 () Bool)

(assert (=> b!4517548 m!5263133))

(assert (=> d!1390298 d!1390970))

(declare-fun bs!852750 () Bool)

(declare-fun b!4517550 () Bool)

(assert (= bs!852750 (and b!4517550 b!4516801)))

(declare-fun lambda!171969 () Int)

(assert (=> bs!852750 (= (= (t!357720 (toList!4320 lt!1694159)) (toList!4320 (extractMap!1212 (t!357721 (toList!4319 lm!1477))))) (= lambda!171969 lambda!171861))))

(declare-fun bs!852753 () Bool)

(assert (= bs!852753 (and b!4517550 b!4516877)))

(assert (=> bs!852753 (= (= (t!357720 (toList!4320 lt!1694159)) (t!357720 (toList!4320 (extractMap!1212 (t!357721 (toList!4319 lm!1477)))))) (= lambda!171969 lambda!171892))))

(declare-fun bs!852755 () Bool)

(assert (= bs!852755 (and b!4517550 b!4516724)))

(assert (=> bs!852755 (= (= (t!357720 (toList!4320 lt!1694159)) (toList!4320 lt!1694159)) (= lambda!171969 lambda!171852))))

(declare-fun bs!852757 () Bool)

(assert (= bs!852757 (and b!4517550 b!4517539)))

(assert (=> bs!852757 (= (= (t!357720 (toList!4320 lt!1694159)) (toList!4320 lt!1694148)) (= lambda!171969 lambda!171965))))

(declare-fun bs!852759 () Bool)

(assert (= bs!852759 (and b!4517550 b!4516881)))

(assert (=> bs!852759 (= (= (t!357720 (toList!4320 lt!1694159)) (toList!4320 (extractMap!1212 (t!357721 (toList!4319 lm!1477))))) (= lambda!171969 lambda!171894))))

(declare-fun bs!852761 () Bool)

(assert (= bs!852761 (and b!4517550 b!4517535)))

(assert (=> bs!852761 (= (= (t!357720 (toList!4320 lt!1694159)) (t!357720 (toList!4320 lt!1694148))) (= lambda!171969 lambda!171963))))

(declare-fun bs!852763 () Bool)

(assert (= bs!852763 (and b!4517550 b!4517536)))

(assert (=> bs!852763 (= (= (t!357720 (toList!4320 lt!1694159)) (Cons!50634 (h!56483 (toList!4320 lt!1694148)) (t!357720 (toList!4320 lt!1694148)))) (= lambda!171969 lambda!171964))))

(declare-fun bs!852764 () Bool)

(assert (= bs!852764 (and b!4517550 b!4516939)))

(assert (=> bs!852764 (= (= (t!357720 (toList!4320 lt!1694159)) (toList!4320 lt!1694548)) (= lambda!171969 lambda!171896))))

(declare-fun bs!852766 () Bool)

(assert (= bs!852766 (and b!4517550 b!4516762)))

(assert (=> bs!852766 (= (= (t!357720 (toList!4320 lt!1694159)) (toList!4320 lt!1694148)) (= lambda!171969 lambda!171859))))

(declare-fun bs!852768 () Bool)

(assert (= bs!852768 (and b!4517550 b!4516878)))

(assert (=> bs!852768 (= (= (t!357720 (toList!4320 lt!1694159)) (Cons!50634 (h!56483 (toList!4320 (extractMap!1212 (t!357721 (toList!4319 lm!1477))))) (t!357720 (toList!4320 (extractMap!1212 (t!357721 (toList!4319 lm!1477))))))) (= lambda!171969 lambda!171893))))

(assert (=> b!4517550 true))

(declare-fun bs!852774 () Bool)

(declare-fun b!4517551 () Bool)

(assert (= bs!852774 (and b!4517551 b!4516801)))

(declare-fun lambda!171970 () Int)

(assert (=> bs!852774 (= (= (Cons!50634 (h!56483 (toList!4320 lt!1694159)) (t!357720 (toList!4320 lt!1694159))) (toList!4320 (extractMap!1212 (t!357721 (toList!4319 lm!1477))))) (= lambda!171970 lambda!171861))))

(declare-fun bs!852775 () Bool)

(assert (= bs!852775 (and b!4517551 b!4516877)))

(assert (=> bs!852775 (= (= (Cons!50634 (h!56483 (toList!4320 lt!1694159)) (t!357720 (toList!4320 lt!1694159))) (t!357720 (toList!4320 (extractMap!1212 (t!357721 (toList!4319 lm!1477)))))) (= lambda!171970 lambda!171892))))

(declare-fun bs!852777 () Bool)

(assert (= bs!852777 (and b!4517551 b!4516724)))

(assert (=> bs!852777 (= (= (Cons!50634 (h!56483 (toList!4320 lt!1694159)) (t!357720 (toList!4320 lt!1694159))) (toList!4320 lt!1694159)) (= lambda!171970 lambda!171852))))

(declare-fun bs!852779 () Bool)

(assert (= bs!852779 (and b!4517551 b!4517550)))

(assert (=> bs!852779 (= (= (Cons!50634 (h!56483 (toList!4320 lt!1694159)) (t!357720 (toList!4320 lt!1694159))) (t!357720 (toList!4320 lt!1694159))) (= lambda!171970 lambda!171969))))

(declare-fun bs!852781 () Bool)

(assert (= bs!852781 (and b!4517551 b!4517539)))

(assert (=> bs!852781 (= (= (Cons!50634 (h!56483 (toList!4320 lt!1694159)) (t!357720 (toList!4320 lt!1694159))) (toList!4320 lt!1694148)) (= lambda!171970 lambda!171965))))

(declare-fun bs!852782 () Bool)

(assert (= bs!852782 (and b!4517551 b!4516881)))

(assert (=> bs!852782 (= (= (Cons!50634 (h!56483 (toList!4320 lt!1694159)) (t!357720 (toList!4320 lt!1694159))) (toList!4320 (extractMap!1212 (t!357721 (toList!4319 lm!1477))))) (= lambda!171970 lambda!171894))))

(declare-fun bs!852783 () Bool)

(assert (= bs!852783 (and b!4517551 b!4517535)))

(assert (=> bs!852783 (= (= (Cons!50634 (h!56483 (toList!4320 lt!1694159)) (t!357720 (toList!4320 lt!1694159))) (t!357720 (toList!4320 lt!1694148))) (= lambda!171970 lambda!171963))))

(declare-fun bs!852785 () Bool)

(assert (= bs!852785 (and b!4517551 b!4517536)))

(assert (=> bs!852785 (= (= (Cons!50634 (h!56483 (toList!4320 lt!1694159)) (t!357720 (toList!4320 lt!1694159))) (Cons!50634 (h!56483 (toList!4320 lt!1694148)) (t!357720 (toList!4320 lt!1694148)))) (= lambda!171970 lambda!171964))))

(declare-fun bs!852787 () Bool)

(assert (= bs!852787 (and b!4517551 b!4516939)))

(assert (=> bs!852787 (= (= (Cons!50634 (h!56483 (toList!4320 lt!1694159)) (t!357720 (toList!4320 lt!1694159))) (toList!4320 lt!1694548)) (= lambda!171970 lambda!171896))))

(declare-fun bs!852789 () Bool)

(assert (= bs!852789 (and b!4517551 b!4516762)))

(assert (=> bs!852789 (= (= (Cons!50634 (h!56483 (toList!4320 lt!1694159)) (t!357720 (toList!4320 lt!1694159))) (toList!4320 lt!1694148)) (= lambda!171970 lambda!171859))))

(declare-fun bs!852790 () Bool)

(assert (= bs!852790 (and b!4517551 b!4516878)))

(assert (=> bs!852790 (= (= (Cons!50634 (h!56483 (toList!4320 lt!1694159)) (t!357720 (toList!4320 lt!1694159))) (Cons!50634 (h!56483 (toList!4320 (extractMap!1212 (t!357721 (toList!4319 lm!1477))))) (t!357720 (toList!4320 (extractMap!1212 (t!357721 (toList!4319 lm!1477))))))) (= lambda!171970 lambda!171893))))

(assert (=> b!4517551 true))

(declare-fun bs!852793 () Bool)

(declare-fun b!4517554 () Bool)

(assert (= bs!852793 (and b!4517554 b!4516801)))

(declare-fun lambda!171971 () Int)

(assert (=> bs!852793 (= (= (toList!4320 lt!1694159) (toList!4320 (extractMap!1212 (t!357721 (toList!4319 lm!1477))))) (= lambda!171971 lambda!171861))))

(declare-fun bs!852794 () Bool)

(assert (= bs!852794 (and b!4517554 b!4516877)))

(assert (=> bs!852794 (= (= (toList!4320 lt!1694159) (t!357720 (toList!4320 (extractMap!1212 (t!357721 (toList!4319 lm!1477)))))) (= lambda!171971 lambda!171892))))

(declare-fun bs!852796 () Bool)

(assert (= bs!852796 (and b!4517554 b!4517551)))

(assert (=> bs!852796 (= (= (toList!4320 lt!1694159) (Cons!50634 (h!56483 (toList!4320 lt!1694159)) (t!357720 (toList!4320 lt!1694159)))) (= lambda!171971 lambda!171970))))

(declare-fun bs!852797 () Bool)

(assert (= bs!852797 (and b!4517554 b!4516724)))

(assert (=> bs!852797 (= lambda!171971 lambda!171852)))

(declare-fun bs!852798 () Bool)

(assert (= bs!852798 (and b!4517554 b!4517550)))

(assert (=> bs!852798 (= (= (toList!4320 lt!1694159) (t!357720 (toList!4320 lt!1694159))) (= lambda!171971 lambda!171969))))

(declare-fun bs!852799 () Bool)

(assert (= bs!852799 (and b!4517554 b!4517539)))

(assert (=> bs!852799 (= (= (toList!4320 lt!1694159) (toList!4320 lt!1694148)) (= lambda!171971 lambda!171965))))

(declare-fun bs!852800 () Bool)

(assert (= bs!852800 (and b!4517554 b!4516881)))

(assert (=> bs!852800 (= (= (toList!4320 lt!1694159) (toList!4320 (extractMap!1212 (t!357721 (toList!4319 lm!1477))))) (= lambda!171971 lambda!171894))))

(declare-fun bs!852801 () Bool)

(assert (= bs!852801 (and b!4517554 b!4517535)))

(assert (=> bs!852801 (= (= (toList!4320 lt!1694159) (t!357720 (toList!4320 lt!1694148))) (= lambda!171971 lambda!171963))))

(declare-fun bs!852802 () Bool)

(assert (= bs!852802 (and b!4517554 b!4517536)))

(assert (=> bs!852802 (= (= (toList!4320 lt!1694159) (Cons!50634 (h!56483 (toList!4320 lt!1694148)) (t!357720 (toList!4320 lt!1694148)))) (= lambda!171971 lambda!171964))))

(declare-fun bs!852803 () Bool)

(assert (= bs!852803 (and b!4517554 b!4516939)))

(assert (=> bs!852803 (= (= (toList!4320 lt!1694159) (toList!4320 lt!1694548)) (= lambda!171971 lambda!171896))))

(declare-fun bs!852804 () Bool)

(assert (= bs!852804 (and b!4517554 b!4516762)))

(assert (=> bs!852804 (= (= (toList!4320 lt!1694159) (toList!4320 lt!1694148)) (= lambda!171971 lambda!171859))))

(declare-fun bs!852805 () Bool)

(assert (= bs!852805 (and b!4517554 b!4516878)))

(assert (=> bs!852805 (= (= (toList!4320 lt!1694159) (Cons!50634 (h!56483 (toList!4320 (extractMap!1212 (t!357721 (toList!4319 lm!1477))))) (t!357720 (toList!4320 (extractMap!1212 (t!357721 (toList!4319 lm!1477))))))) (= lambda!171971 lambda!171893))))

(assert (=> b!4517554 true))

(declare-fun bs!852806 () Bool)

(declare-fun b!4517555 () Bool)

(assert (= bs!852806 (and b!4517555 b!4516940)))

(declare-fun lambda!171972 () Int)

(assert (=> bs!852806 (= lambda!171972 lambda!171897)))

(declare-fun bs!852807 () Bool)

(assert (= bs!852807 (and b!4517555 b!4516802)))

(assert (=> bs!852807 (= lambda!171972 lambda!171862)))

(declare-fun bs!852808 () Bool)

(assert (= bs!852808 (and b!4517555 b!4516763)))

(assert (=> bs!852808 (= lambda!171972 lambda!171860)))

(declare-fun bs!852809 () Bool)

(assert (= bs!852809 (and b!4517555 b!4516882)))

(assert (=> bs!852809 (= lambda!171972 lambda!171895)))

(declare-fun bs!852810 () Bool)

(assert (= bs!852810 (and b!4517555 b!4517540)))

(assert (=> bs!852810 (= lambda!171972 lambda!171967)))

(declare-fun bs!852811 () Bool)

(assert (= bs!852811 (and b!4517555 b!4516725)))

(assert (=> bs!852811 (= lambda!171972 lambda!171853)))

(declare-fun b!4517549 () Bool)

(declare-fun e!2814486 () Unit!94398)

(declare-fun Unit!94640 () Unit!94398)

(assert (=> b!4517549 (= e!2814486 Unit!94640)))

(assert (=> b!4517550 false))

(declare-fun lt!1695206 () Unit!94398)

(assert (=> b!4517550 (= lt!1695206 (forallContained!2507 (getKeysList!461 (t!357720 (toList!4320 lt!1694159))) lambda!171969 (_1!28823 (h!56483 (toList!4320 lt!1694159)))))))

(declare-fun e!2814484 () Unit!94398)

(declare-fun Unit!94641 () Unit!94398)

(assert (=> b!4517550 (= e!2814484 Unit!94641)))

(declare-fun e!2814483 () List!50761)

(assert (=> b!4517551 (= e!2814483 (Cons!50637 (_1!28823 (h!56483 (toList!4320 lt!1694159))) (getKeysList!461 (t!357720 (toList!4320 lt!1694159)))))))

(declare-fun c!770827 () Bool)

(assert (=> b!4517551 (= c!770827 (containsKey!1771 (t!357720 (toList!4320 lt!1694159)) (_1!28823 (h!56483 (toList!4320 lt!1694159)))))))

(declare-fun lt!1695208 () Unit!94398)

(assert (=> b!4517551 (= lt!1695208 e!2814486)))

(declare-fun c!770826 () Bool)

(assert (=> b!4517551 (= c!770826 (contains!13354 (getKeysList!461 (t!357720 (toList!4320 lt!1694159))) (_1!28823 (h!56483 (toList!4320 lt!1694159)))))))

(declare-fun lt!1695209 () Unit!94398)

(assert (=> b!4517551 (= lt!1695209 e!2814484)))

(declare-fun lt!1695205 () List!50761)

(assert (=> b!4517551 (= lt!1695205 (getKeysList!461 (t!357720 (toList!4320 lt!1694159))))))

(declare-fun lt!1695207 () Unit!94398)

(assert (=> b!4517551 (= lt!1695207 (lemmaForallContainsAddHeadPreserves!165 (t!357720 (toList!4320 lt!1694159)) lt!1695205 (h!56483 (toList!4320 lt!1694159))))))

(assert (=> b!4517551 (forall!10254 lt!1695205 lambda!171970)))

(declare-fun lt!1695210 () Unit!94398)

(assert (=> b!4517551 (= lt!1695210 lt!1695207)))

(declare-fun b!4517552 () Bool)

(assert (=> b!4517552 (= e!2814483 Nil!50637)))

(declare-fun b!4517553 () Bool)

(declare-fun Unit!94643 () Unit!94398)

(assert (=> b!4517553 (= e!2814484 Unit!94643)))

(declare-fun res!1879871 () Bool)

(declare-fun e!2814485 () Bool)

(assert (=> b!4517554 (=> (not res!1879871) (not e!2814485))))

(declare-fun lt!1695211 () List!50761)

(assert (=> b!4517554 (= res!1879871 (forall!10254 lt!1695211 lambda!171971))))

(declare-fun d!1390972 () Bool)

(assert (=> d!1390972 e!2814485))

(declare-fun res!1879869 () Bool)

(assert (=> d!1390972 (=> (not res!1879869) (not e!2814485))))

(assert (=> d!1390972 (= res!1879869 (noDuplicate!743 lt!1695211))))

(assert (=> d!1390972 (= lt!1695211 e!2814483)))

(declare-fun c!770828 () Bool)

(assert (=> d!1390972 (= c!770828 ((_ is Cons!50634) (toList!4320 lt!1694159)))))

(assert (=> d!1390972 (invariantList!1013 (toList!4320 lt!1694159))))

(assert (=> d!1390972 (= (getKeysList!461 (toList!4320 lt!1694159)) lt!1695211)))

(assert (=> b!4517555 (= e!2814485 (= (content!8347 lt!1695211) (content!8347 (map!11132 (toList!4320 lt!1694159) lambda!171972))))))

(declare-fun b!4517556 () Bool)

(declare-fun res!1879870 () Bool)

(assert (=> b!4517556 (=> (not res!1879870) (not e!2814485))))

(assert (=> b!4517556 (= res!1879870 (= (length!342 lt!1695211) (length!343 (toList!4320 lt!1694159))))))

(declare-fun b!4517557 () Bool)

(assert (=> b!4517557 false))

(declare-fun Unit!94644 () Unit!94398)

(assert (=> b!4517557 (= e!2814486 Unit!94644)))

(assert (= (and d!1390972 c!770828) b!4517551))

(assert (= (and d!1390972 (not c!770828)) b!4517552))

(assert (= (and b!4517551 c!770827) b!4517557))

(assert (= (and b!4517551 (not c!770827)) b!4517549))

(assert (= (and b!4517551 c!770826) b!4517550))

(assert (= (and b!4517551 (not c!770826)) b!4517553))

(assert (= (and d!1390972 res!1879869) b!4517556))

(assert (= (and b!4517556 res!1879870) b!4517554))

(assert (= (and b!4517554 res!1879871) b!4517555))

(declare-fun m!5263155 () Bool)

(assert (=> b!4517551 m!5263155))

(declare-fun m!5263157 () Bool)

(assert (=> b!4517551 m!5263157))

(assert (=> b!4517551 m!5262281))

(assert (=> b!4517551 m!5262283))

(declare-fun m!5263163 () Bool)

(assert (=> b!4517551 m!5263163))

(assert (=> b!4517551 m!5262281))

(declare-fun m!5263169 () Bool)

(assert (=> b!4517556 m!5263169))

(assert (=> b!4517556 m!5261607))

(declare-fun m!5263171 () Bool)

(assert (=> d!1390972 m!5263171))

(assert (=> d!1390972 m!5262259))

(assert (=> b!4517550 m!5262281))

(assert (=> b!4517550 m!5262281))

(declare-fun m!5263177 () Bool)

(assert (=> b!4517550 m!5263177))

(declare-fun m!5263179 () Bool)

(assert (=> b!4517555 m!5263179))

(declare-fun m!5263181 () Bool)

(assert (=> b!4517555 m!5263181))

(assert (=> b!4517555 m!5263181))

(declare-fun m!5263183 () Bool)

(assert (=> b!4517555 m!5263183))

(declare-fun m!5263185 () Bool)

(assert (=> b!4517554 m!5263185))

(assert (=> b!4516424 d!1390972))

(declare-fun d!1390976 () Bool)

(assert (=> d!1390976 (dynLambda!21156 lambda!171830 (h!56483 (_2!28824 lt!1694150)))))

(declare-fun lt!1695212 () Unit!94398)

(assert (=> d!1390976 (= lt!1695212 (choose!29472 (toList!4320 lt!1694520) lambda!171830 (h!56483 (_2!28824 lt!1694150))))))

(declare-fun e!2814489 () Bool)

(assert (=> d!1390976 e!2814489))

(declare-fun res!1879874 () Bool)

(assert (=> d!1390976 (=> (not res!1879874) (not e!2814489))))

(assert (=> d!1390976 (= res!1879874 (forall!10253 (toList!4320 lt!1694520) lambda!171830))))

(assert (=> d!1390976 (= (forallContained!2505 (toList!4320 lt!1694520) lambda!171830 (h!56483 (_2!28824 lt!1694150))) lt!1695212)))

(declare-fun b!4517560 () Bool)

(assert (=> b!4517560 (= e!2814489 (contains!13357 (toList!4320 lt!1694520) (h!56483 (_2!28824 lt!1694150))))))

(assert (= (and d!1390976 res!1879874) b!4517560))

(declare-fun b_lambda!154485 () Bool)

(assert (=> (not b_lambda!154485) (not d!1390976)))

(declare-fun m!5263191 () Bool)

(assert (=> d!1390976 m!5263191))

(declare-fun m!5263193 () Bool)

(assert (=> d!1390976 m!5263193))

(assert (=> d!1390976 m!5261335))

(declare-fun m!5263195 () Bool)

(assert (=> b!4517560 m!5263195))

(assert (=> b!4516604 d!1390976))

(declare-fun d!1390980 () Bool)

(declare-fun res!1879878 () Bool)

(declare-fun e!2814496 () Bool)

(assert (=> d!1390980 (=> res!1879878 e!2814496)))

(assert (=> d!1390980 (= res!1879878 ((_ is Nil!50634) (toList!4320 lt!1694520)))))

(assert (=> d!1390980 (= (forall!10253 (toList!4320 lt!1694520) lambda!171830) e!2814496)))

(declare-fun b!4517570 () Bool)

(declare-fun e!2814497 () Bool)

(assert (=> b!4517570 (= e!2814496 e!2814497)))

(declare-fun res!1879879 () Bool)

(assert (=> b!4517570 (=> (not res!1879879) (not e!2814497))))

(assert (=> b!4517570 (= res!1879879 (dynLambda!21156 lambda!171830 (h!56483 (toList!4320 lt!1694520))))))

(declare-fun b!4517571 () Bool)

(assert (=> b!4517571 (= e!2814497 (forall!10253 (t!357720 (toList!4320 lt!1694520)) lambda!171830))))

(assert (= (and d!1390980 (not res!1879878)) b!4517570))

(assert (= (and b!4517570 res!1879879) b!4517571))

(declare-fun b_lambda!154487 () Bool)

(assert (=> (not b_lambda!154487) (not b!4517570)))

(declare-fun m!5263197 () Bool)

(assert (=> b!4517570 m!5263197))

(declare-fun m!5263199 () Bool)

(assert (=> b!4517571 m!5263199))

(assert (=> b!4516604 d!1390980))

(declare-fun d!1390982 () Bool)

(declare-fun res!1879880 () Bool)

(declare-fun e!2814498 () Bool)

(assert (=> d!1390982 (=> res!1879880 e!2814498)))

(assert (=> d!1390982 (= res!1879880 ((_ is Nil!50634) (t!357720 (_2!28824 lt!1694150))))))

(assert (=> d!1390982 (= (forall!10253 (t!357720 (_2!28824 lt!1694150)) lambda!171830) e!2814498)))

(declare-fun b!4517572 () Bool)

(declare-fun e!2814499 () Bool)

(assert (=> b!4517572 (= e!2814498 e!2814499)))

(declare-fun res!1879881 () Bool)

(assert (=> b!4517572 (=> (not res!1879881) (not e!2814499))))

(assert (=> b!4517572 (= res!1879881 (dynLambda!21156 lambda!171830 (h!56483 (t!357720 (_2!28824 lt!1694150)))))))

(declare-fun b!4517573 () Bool)

(assert (=> b!4517573 (= e!2814499 (forall!10253 (t!357720 (t!357720 (_2!28824 lt!1694150))) lambda!171830))))

(assert (= (and d!1390982 (not res!1879880)) b!4517572))

(assert (= (and b!4517572 res!1879881) b!4517573))

(declare-fun b_lambda!154489 () Bool)

(assert (=> (not b_lambda!154489) (not b!4517572)))

(declare-fun m!5263201 () Bool)

(assert (=> b!4517572 m!5263201))

(declare-fun m!5263203 () Bool)

(assert (=> b!4517573 m!5263203))

(assert (=> b!4516604 d!1390982))

(declare-fun d!1390984 () Bool)

(declare-fun res!1879882 () Bool)

(declare-fun e!2814500 () Bool)

(assert (=> d!1390984 (=> res!1879882 e!2814500)))

(assert (=> d!1390984 (= res!1879882 ((_ is Nil!50634) (_2!28824 lt!1694150)))))

(assert (=> d!1390984 (= (forall!10253 (_2!28824 lt!1694150) lambda!171830) e!2814500)))

(declare-fun b!4517574 () Bool)

(declare-fun e!2814501 () Bool)

(assert (=> b!4517574 (= e!2814500 e!2814501)))

(declare-fun res!1879883 () Bool)

(assert (=> b!4517574 (=> (not res!1879883) (not e!2814501))))

(assert (=> b!4517574 (= res!1879883 (dynLambda!21156 lambda!171830 (h!56483 (_2!28824 lt!1694150))))))

(declare-fun b!4517575 () Bool)

(assert (=> b!4517575 (= e!2814501 (forall!10253 (t!357720 (_2!28824 lt!1694150)) lambda!171830))))

(assert (= (and d!1390984 (not res!1879882)) b!4517574))

(assert (= (and b!4517574 res!1879883) b!4517575))

(declare-fun b_lambda!154491 () Bool)

(assert (=> (not b_lambda!154491) (not b!4517574)))

(assert (=> b!4517574 m!5263191))

(assert (=> b!4517575 m!5261337))

(assert (=> b!4516604 d!1390984))

(declare-fun d!1390986 () Bool)

(declare-fun e!2814502 () Bool)

(assert (=> d!1390986 e!2814502))

(declare-fun res!1879885 () Bool)

(assert (=> d!1390986 (=> (not res!1879885) (not e!2814502))))

(declare-fun lt!1695221 () ListMap!3581)

(assert (=> d!1390986 (= res!1879885 (contains!13353 lt!1695221 (_1!28823 (h!56483 (_2!28824 lt!1694150)))))))

(declare-fun lt!1695224 () List!50758)

(assert (=> d!1390986 (= lt!1695221 (ListMap!3582 lt!1695224))))

(declare-fun lt!1695223 () Unit!94398)

(declare-fun lt!1695222 () Unit!94398)

(assert (=> d!1390986 (= lt!1695223 lt!1695222)))

(assert (=> d!1390986 (= (getValueByKey!1084 lt!1695224 (_1!28823 (h!56483 (_2!28824 lt!1694150)))) (Some!11103 (_2!28823 (h!56483 (_2!28824 lt!1694150)))))))

(assert (=> d!1390986 (= lt!1695222 (lemmaContainsTupThenGetReturnValue!672 lt!1695224 (_1!28823 (h!56483 (_2!28824 lt!1694150))) (_2!28823 (h!56483 (_2!28824 lt!1694150)))))))

(assert (=> d!1390986 (= lt!1695224 (insertNoDuplicatedKeys!276 (toList!4320 lt!1694172) (_1!28823 (h!56483 (_2!28824 lt!1694150))) (_2!28823 (h!56483 (_2!28824 lt!1694150)))))))

(assert (=> d!1390986 (= (+!1532 lt!1694172 (h!56483 (_2!28824 lt!1694150))) lt!1695221)))

(declare-fun b!4517576 () Bool)

(declare-fun res!1879884 () Bool)

(assert (=> b!4517576 (=> (not res!1879884) (not e!2814502))))

(assert (=> b!4517576 (= res!1879884 (= (getValueByKey!1084 (toList!4320 lt!1695221) (_1!28823 (h!56483 (_2!28824 lt!1694150)))) (Some!11103 (_2!28823 (h!56483 (_2!28824 lt!1694150))))))))

(declare-fun b!4517577 () Bool)

(assert (=> b!4517577 (= e!2814502 (contains!13357 (toList!4320 lt!1695221) (h!56483 (_2!28824 lt!1694150))))))

(assert (= (and d!1390986 res!1879885) b!4517576))

(assert (= (and b!4517576 res!1879884) b!4517577))

(declare-fun m!5263229 () Bool)

(assert (=> d!1390986 m!5263229))

(declare-fun m!5263231 () Bool)

(assert (=> d!1390986 m!5263231))

(declare-fun m!5263233 () Bool)

(assert (=> d!1390986 m!5263233))

(declare-fun m!5263235 () Bool)

(assert (=> d!1390986 m!5263235))

(declare-fun m!5263237 () Bool)

(assert (=> b!4517576 m!5263237))

(declare-fun m!5263239 () Bool)

(assert (=> b!4517577 m!5263239))

(assert (=> b!4516604 d!1390986))

(declare-fun bs!852812 () Bool)

(declare-fun d!1390992 () Bool)

(assert (= bs!852812 (and d!1390992 d!1390866)))

(declare-fun lambda!171973 () Int)

(assert (=> bs!852812 (= (= lt!1694513 lt!1694574) (= lambda!171973 lambda!171943))))

(declare-fun bs!852813 () Bool)

(assert (= bs!852813 (and d!1390992 b!4517498)))

(assert (=> bs!852813 (= (= lt!1694513 (extractMap!1212 (t!357721 (toList!4319 (+!1530 lt!1694164 lt!1694150))))) (= lambda!171973 lambda!171953))))

(declare-fun bs!852814 () Bool)

(assert (= bs!852814 (and d!1390992 b!4517389)))

(assert (=> bs!852814 (= (= lt!1694513 lt!1695017) (= lambda!171973 lambda!171931))))

(declare-fun bs!852815 () Bool)

(assert (= bs!852815 (and d!1390992 d!1390358)))

(assert (=> bs!852815 (= (= lt!1694513 lt!1694503) (= lambda!171973 lambda!171831))))

(declare-fun bs!852816 () Bool)

(assert (= bs!852816 (and d!1390992 d!1390568)))

(assert (=> bs!852816 (= (= lt!1694513 lt!1694656) (= lambda!171973 lambda!171871))))

(declare-fun bs!852817 () Bool)

(assert (= bs!852817 (and d!1390992 b!4516744)))

(assert (=> bs!852817 (= (= lt!1694513 lt!1694614) (= lambda!171973 lambda!171856))))

(declare-fun bs!852818 () Bool)

(assert (= bs!852818 (and d!1390992 b!4516663)))

(assert (=> bs!852818 (= (= lt!1694513 lt!1694574) (= lambda!171973 lambda!171846))))

(declare-fun bs!852819 () Bool)

(assert (= bs!852819 (and d!1390992 d!1390564)))

(assert (=> bs!852819 (= (= lt!1694513 lt!1694634) (= lambda!171973 lambda!171866))))

(declare-fun bs!852820 () Bool)

(assert (= bs!852820 (and d!1390992 d!1390472)))

(assert (=> bs!852820 (= (= lt!1694513 lt!1694564) (= lambda!171973 lambda!171847))))

(declare-fun bs!852821 () Bool)

(assert (= bs!852821 (and d!1390992 b!4516815)))

(assert (=> bs!852821 (= (= lt!1694513 lt!1694666) (= lambda!171973 lambda!171870))))

(declare-fun bs!852822 () Bool)

(assert (= bs!852822 (and d!1390992 d!1390694)))

(assert (=> bs!852822 (= (= lt!1694513 lt!1694147) (= lambda!171973 lambda!171904))))

(assert (=> bs!852817 (= (= lt!1694513 (extractMap!1212 (t!357721 (toList!4319 lt!1694164)))) (= lambda!171973 lambda!171855))))

(declare-fun bs!852823 () Bool)

(assert (= bs!852823 (and d!1390992 d!1390756)))

(assert (=> bs!852823 (= (= lt!1694513 lt!1694172) (= lambda!171973 lambda!171920))))

(declare-fun bs!852824 () Bool)

(assert (= bs!852824 (and d!1390992 d!1390852)))

(assert (=> bs!852824 (= (= lt!1694513 lt!1695007) (= lambda!171973 lambda!171933))))

(declare-fun bs!852825 () Bool)

(assert (= bs!852825 (and d!1390992 b!4517388)))

(assert (=> bs!852825 (= (= lt!1694513 (+!1532 lt!1694147 (h!56483 (_2!28824 lt!1694150)))) (= lambda!171973 lambda!171927))))

(declare-fun bs!852826 () Bool)

(assert (= bs!852826 (and d!1390992 b!4516808)))

(assert (=> bs!852826 (= (= lt!1694513 (extractMap!1212 (t!357721 (toList!4319 lt!1694158)))) (= lambda!171973 lambda!171864))))

(declare-fun bs!852827 () Bool)

(assert (= bs!852827 (and d!1390992 d!1390924)))

(assert (=> bs!852827 (= (= lt!1694513 lt!1695148) (= lambda!171973 lambda!171958))))

(declare-fun bs!852828 () Bool)

(assert (= bs!852828 (and d!1390992 b!4516662)))

(assert (=> bs!852828 (= (= lt!1694513 lt!1694147) (= lambda!171973 lambda!171844))))

(declare-fun bs!852829 () Bool)

(assert (= bs!852829 (and d!1390992 b!4516807)))

(assert (=> bs!852829 (= (= lt!1694513 (extractMap!1212 (t!357721 (toList!4319 lt!1694158)))) (= lambda!171973 lambda!171863))))

(declare-fun bs!852830 () Bool)

(assert (= bs!852830 (and d!1390992 b!4517499)))

(assert (=> bs!852830 (= (= lt!1694513 lt!1695158) (= lambda!171973 lambda!171957))))

(declare-fun bs!852831 () Bool)

(assert (= bs!852831 (and d!1390992 b!4516743)))

(assert (=> bs!852831 (= (= lt!1694513 (extractMap!1212 (t!357721 (toList!4319 lt!1694164)))) (= lambda!171973 lambda!171854))))

(assert (=> bs!852826 (= (= lt!1694513 lt!1694644) (= lambda!171973 lambda!171865))))

(declare-fun bs!852832 () Bool)

(assert (= bs!852832 (and d!1390992 b!4516604)))

(assert (=> bs!852832 (= lambda!171973 lambda!171830)))

(declare-fun bs!852833 () Bool)

(assert (= bs!852833 (and d!1390992 d!1390326)))

(assert (=> bs!852833 (not (= lambda!171973 lambda!171772))))

(declare-fun bs!852834 () Bool)

(assert (= bs!852834 (and d!1390992 d!1390526)))

(assert (=> bs!852834 (= (= lt!1694513 lt!1694604) (= lambda!171973 lambda!171857))))

(assert (=> bs!852832 (= (= lt!1694513 lt!1694172) (= lambda!171973 lambda!171829))))

(declare-fun bs!852835 () Bool)

(assert (= bs!852835 (and d!1390992 b!4516603)))

(assert (=> bs!852835 (= (= lt!1694513 lt!1694172) (= lambda!171973 lambda!171828))))

(assert (=> bs!852814 (= (= lt!1694513 (+!1532 lt!1694147 (h!56483 (_2!28824 lt!1694150)))) (= lambda!171973 lambda!171929))))

(assert (=> bs!852821 (= (= lt!1694513 (extractMap!1212 (t!357721 (toList!4319 lm!1477)))) (= lambda!171973 lambda!171869))))

(assert (=> bs!852830 (= (= lt!1694513 (extractMap!1212 (t!357721 (toList!4319 (+!1530 lt!1694164 lt!1694150))))) (= lambda!171973 lambda!171955))))

(declare-fun bs!852836 () Bool)

(assert (= bs!852836 (and d!1390992 b!4516814)))

(assert (=> bs!852836 (= (= lt!1694513 (extractMap!1212 (t!357721 (toList!4319 lm!1477)))) (= lambda!171973 lambda!171868))))

(assert (=> bs!852818 (= (= lt!1694513 lt!1694147) (= lambda!171973 lambda!171845))))

(assert (=> d!1390992 true))

(assert (=> d!1390992 (forall!10253 (toList!4320 lt!1694172) lambda!171973)))

(declare-fun lt!1695226 () Unit!94398)

(assert (=> d!1390992 (= lt!1695226 (choose!29470 lt!1694172 lt!1694513 (_1!28823 (h!56483 (_2!28824 lt!1694150))) (_2!28823 (h!56483 (_2!28824 lt!1694150)))))))

(assert (=> d!1390992 (forall!10253 (toList!4320 (+!1532 lt!1694172 (tuple2!51059 (_1!28823 (h!56483 (_2!28824 lt!1694150))) (_2!28823 (h!56483 (_2!28824 lt!1694150)))))) lambda!171973)))

(assert (=> d!1390992 (= (addForallContainsKeyThenBeforeAdding!334 lt!1694172 lt!1694513 (_1!28823 (h!56483 (_2!28824 lt!1694150))) (_2!28823 (h!56483 (_2!28824 lt!1694150)))) lt!1695226)))

(declare-fun bs!852837 () Bool)

(assert (= bs!852837 d!1390992))

(declare-fun m!5263287 () Bool)

(assert (=> bs!852837 m!5263287))

(declare-fun m!5263289 () Bool)

(assert (=> bs!852837 m!5263289))

(declare-fun m!5263291 () Bool)

(assert (=> bs!852837 m!5263291))

(declare-fun m!5263293 () Bool)

(assert (=> bs!852837 m!5263293))

(assert (=> b!4516604 d!1390992))

(declare-fun b!4517603 () Bool)

(declare-fun e!2814522 () Unit!94398)

(declare-fun lt!1695248 () Unit!94398)

(assert (=> b!4517603 (= e!2814522 lt!1695248)))

(declare-fun lt!1695249 () Unit!94398)

(assert (=> b!4517603 (= lt!1695249 (lemmaContainsKeyImpliesGetValueByKeyDefined!988 (toList!4320 lt!1694520) (_1!28823 (h!56483 (_2!28824 lt!1694150)))))))

(assert (=> b!4517603 (isDefined!8391 (getValueByKey!1084 (toList!4320 lt!1694520) (_1!28823 (h!56483 (_2!28824 lt!1694150)))))))

(declare-fun lt!1695247 () Unit!94398)

(assert (=> b!4517603 (= lt!1695247 lt!1695249)))

(assert (=> b!4517603 (= lt!1695248 (lemmaInListThenGetKeysListContains!456 (toList!4320 lt!1694520) (_1!28823 (h!56483 (_2!28824 lt!1694150)))))))

(declare-fun call!314696 () Bool)

(assert (=> b!4517603 call!314696))

(declare-fun b!4517604 () Bool)

(declare-fun e!2814525 () Unit!94398)

(assert (=> b!4517604 (= e!2814522 e!2814525)))

(declare-fun c!770840 () Bool)

(assert (=> b!4517604 (= c!770840 call!314696)))

(declare-fun b!4517605 () Bool)

(declare-fun Unit!94646 () Unit!94398)

(assert (=> b!4517605 (= e!2814525 Unit!94646)))

(declare-fun bm!314691 () Bool)

(declare-fun e!2814520 () List!50761)

(assert (=> bm!314691 (= call!314696 (contains!13354 e!2814520 (_1!28823 (h!56483 (_2!28824 lt!1694150)))))))

(declare-fun c!770839 () Bool)

(declare-fun c!770838 () Bool)

(assert (=> bm!314691 (= c!770839 c!770838)))

(declare-fun b!4517606 () Bool)

(assert (=> b!4517606 (= e!2814520 (keys!17586 lt!1694520))))

(declare-fun b!4517607 () Bool)

(declare-fun e!2814524 () Bool)

(declare-fun e!2814523 () Bool)

(assert (=> b!4517607 (= e!2814524 e!2814523)))

(declare-fun res!1879900 () Bool)

(assert (=> b!4517607 (=> (not res!1879900) (not e!2814523))))

(assert (=> b!4517607 (= res!1879900 (isDefined!8391 (getValueByKey!1084 (toList!4320 lt!1694520) (_1!28823 (h!56483 (_2!28824 lt!1694150))))))))

(declare-fun d!1391004 () Bool)

(assert (=> d!1391004 e!2814524))

(declare-fun res!1879901 () Bool)

(assert (=> d!1391004 (=> res!1879901 e!2814524)))

(declare-fun e!2814521 () Bool)

(assert (=> d!1391004 (= res!1879901 e!2814521)))

(declare-fun res!1879899 () Bool)

(assert (=> d!1391004 (=> (not res!1879899) (not e!2814521))))

(declare-fun lt!1695251 () Bool)

(assert (=> d!1391004 (= res!1879899 (not lt!1695251))))

(declare-fun lt!1695244 () Bool)

(assert (=> d!1391004 (= lt!1695251 lt!1695244)))

(declare-fun lt!1695245 () Unit!94398)

(assert (=> d!1391004 (= lt!1695245 e!2814522)))

(assert (=> d!1391004 (= c!770838 lt!1695244)))

(assert (=> d!1391004 (= lt!1695244 (containsKey!1771 (toList!4320 lt!1694520) (_1!28823 (h!56483 (_2!28824 lt!1694150)))))))

(assert (=> d!1391004 (= (contains!13353 lt!1694520 (_1!28823 (h!56483 (_2!28824 lt!1694150)))) lt!1695251)))

(declare-fun b!4517608 () Bool)

(assert (=> b!4517608 (= e!2814521 (not (contains!13354 (keys!17586 lt!1694520) (_1!28823 (h!56483 (_2!28824 lt!1694150))))))))

(declare-fun b!4517609 () Bool)

(assert (=> b!4517609 (= e!2814523 (contains!13354 (keys!17586 lt!1694520) (_1!28823 (h!56483 (_2!28824 lt!1694150)))))))

(declare-fun b!4517610 () Bool)

(assert (=> b!4517610 (= e!2814520 (getKeysList!461 (toList!4320 lt!1694520)))))

(declare-fun b!4517611 () Bool)

(assert (=> b!4517611 false))

(declare-fun lt!1695246 () Unit!94398)

(declare-fun lt!1695250 () Unit!94398)

(assert (=> b!4517611 (= lt!1695246 lt!1695250)))

(assert (=> b!4517611 (containsKey!1771 (toList!4320 lt!1694520) (_1!28823 (h!56483 (_2!28824 lt!1694150))))))

(assert (=> b!4517611 (= lt!1695250 (lemmaInGetKeysListThenContainsKey!459 (toList!4320 lt!1694520) (_1!28823 (h!56483 (_2!28824 lt!1694150)))))))

(declare-fun Unit!94647 () Unit!94398)

(assert (=> b!4517611 (= e!2814525 Unit!94647)))

(assert (= (and d!1391004 c!770838) b!4517603))

(assert (= (and d!1391004 (not c!770838)) b!4517604))

(assert (= (and b!4517604 c!770840) b!4517611))

(assert (= (and b!4517604 (not c!770840)) b!4517605))

(assert (= (or b!4517603 b!4517604) bm!314691))

(assert (= (and bm!314691 c!770839) b!4517610))

(assert (= (and bm!314691 (not c!770839)) b!4517606))

(assert (= (and d!1391004 res!1879899) b!4517608))

(assert (= (and d!1391004 (not res!1879901)) b!4517607))

(assert (= (and b!4517607 res!1879900) b!4517609))

(declare-fun m!5263305 () Bool)

(assert (=> b!4517607 m!5263305))

(assert (=> b!4517607 m!5263305))

(declare-fun m!5263307 () Bool)

(assert (=> b!4517607 m!5263307))

(declare-fun m!5263309 () Bool)

(assert (=> b!4517603 m!5263309))

(assert (=> b!4517603 m!5263305))

(assert (=> b!4517603 m!5263305))

(assert (=> b!4517603 m!5263307))

(declare-fun m!5263311 () Bool)

(assert (=> b!4517603 m!5263311))

(declare-fun m!5263313 () Bool)

(assert (=> b!4517608 m!5263313))

(assert (=> b!4517608 m!5263313))

(declare-fun m!5263315 () Bool)

(assert (=> b!4517608 m!5263315))

(declare-fun m!5263317 () Bool)

(assert (=> b!4517611 m!5263317))

(declare-fun m!5263319 () Bool)

(assert (=> b!4517611 m!5263319))

(declare-fun m!5263321 () Bool)

(assert (=> b!4517610 m!5263321))

(assert (=> b!4517606 m!5263313))

(assert (=> d!1391004 m!5263317))

(assert (=> b!4517609 m!5263313))

(assert (=> b!4517609 m!5263313))

(assert (=> b!4517609 m!5263315))

(declare-fun m!5263323 () Bool)

(assert (=> bm!314691 m!5263323))

(assert (=> b!4516604 d!1391004))

(assert (=> b!4516604 d!1390956))

(declare-fun bs!852838 () Bool)

(declare-fun b!4517624 () Bool)

(assert (= bs!852838 (and b!4517624 d!1390866)))

(declare-fun lambda!171974 () Int)

(assert (=> bs!852838 (= (= (+!1532 lt!1694172 (h!56483 (_2!28824 lt!1694150))) lt!1694574) (= lambda!171974 lambda!171943))))

(declare-fun bs!852839 () Bool)

(assert (= bs!852839 (and b!4517624 b!4517498)))

(assert (=> bs!852839 (= (= (+!1532 lt!1694172 (h!56483 (_2!28824 lt!1694150))) (extractMap!1212 (t!357721 (toList!4319 (+!1530 lt!1694164 lt!1694150))))) (= lambda!171974 lambda!171953))))

(declare-fun bs!852840 () Bool)

(assert (= bs!852840 (and b!4517624 b!4517389)))

(assert (=> bs!852840 (= (= (+!1532 lt!1694172 (h!56483 (_2!28824 lt!1694150))) lt!1695017) (= lambda!171974 lambda!171931))))

(declare-fun bs!852841 () Bool)

(assert (= bs!852841 (and b!4517624 d!1390358)))

(assert (=> bs!852841 (= (= (+!1532 lt!1694172 (h!56483 (_2!28824 lt!1694150))) lt!1694503) (= lambda!171974 lambda!171831))))

(declare-fun bs!852842 () Bool)

(assert (= bs!852842 (and b!4517624 d!1390568)))

(assert (=> bs!852842 (= (= (+!1532 lt!1694172 (h!56483 (_2!28824 lt!1694150))) lt!1694656) (= lambda!171974 lambda!171871))))

(declare-fun bs!852843 () Bool)

(assert (= bs!852843 (and b!4517624 b!4516744)))

(assert (=> bs!852843 (= (= (+!1532 lt!1694172 (h!56483 (_2!28824 lt!1694150))) lt!1694614) (= lambda!171974 lambda!171856))))

(declare-fun bs!852844 () Bool)

(assert (= bs!852844 (and b!4517624 b!4516663)))

(assert (=> bs!852844 (= (= (+!1532 lt!1694172 (h!56483 (_2!28824 lt!1694150))) lt!1694574) (= lambda!171974 lambda!171846))))

(declare-fun bs!852845 () Bool)

(assert (= bs!852845 (and b!4517624 d!1390564)))

(assert (=> bs!852845 (= (= (+!1532 lt!1694172 (h!56483 (_2!28824 lt!1694150))) lt!1694634) (= lambda!171974 lambda!171866))))

(declare-fun bs!852846 () Bool)

(assert (= bs!852846 (and b!4517624 d!1390472)))

(assert (=> bs!852846 (= (= (+!1532 lt!1694172 (h!56483 (_2!28824 lt!1694150))) lt!1694564) (= lambda!171974 lambda!171847))))

(declare-fun bs!852847 () Bool)

(assert (= bs!852847 (and b!4517624 b!4516815)))

(assert (=> bs!852847 (= (= (+!1532 lt!1694172 (h!56483 (_2!28824 lt!1694150))) lt!1694666) (= lambda!171974 lambda!171870))))

(declare-fun bs!852848 () Bool)

(assert (= bs!852848 (and b!4517624 d!1390694)))

(assert (=> bs!852848 (= (= (+!1532 lt!1694172 (h!56483 (_2!28824 lt!1694150))) lt!1694147) (= lambda!171974 lambda!171904))))

(assert (=> bs!852843 (= (= (+!1532 lt!1694172 (h!56483 (_2!28824 lt!1694150))) (extractMap!1212 (t!357721 (toList!4319 lt!1694164)))) (= lambda!171974 lambda!171855))))

(declare-fun bs!852849 () Bool)

(assert (= bs!852849 (and b!4517624 d!1390756)))

(assert (=> bs!852849 (= (= (+!1532 lt!1694172 (h!56483 (_2!28824 lt!1694150))) lt!1694172) (= lambda!171974 lambda!171920))))

(declare-fun bs!852850 () Bool)

(assert (= bs!852850 (and b!4517624 d!1390852)))

(assert (=> bs!852850 (= (= (+!1532 lt!1694172 (h!56483 (_2!28824 lt!1694150))) lt!1695007) (= lambda!171974 lambda!171933))))

(declare-fun bs!852851 () Bool)

(assert (= bs!852851 (and b!4517624 b!4517388)))

(assert (=> bs!852851 (= (= (+!1532 lt!1694172 (h!56483 (_2!28824 lt!1694150))) (+!1532 lt!1694147 (h!56483 (_2!28824 lt!1694150)))) (= lambda!171974 lambda!171927))))

(declare-fun bs!852852 () Bool)

(assert (= bs!852852 (and b!4517624 b!4516808)))

(assert (=> bs!852852 (= (= (+!1532 lt!1694172 (h!56483 (_2!28824 lt!1694150))) (extractMap!1212 (t!357721 (toList!4319 lt!1694158)))) (= lambda!171974 lambda!171864))))

(declare-fun bs!852853 () Bool)

(assert (= bs!852853 (and b!4517624 d!1390924)))

(assert (=> bs!852853 (= (= (+!1532 lt!1694172 (h!56483 (_2!28824 lt!1694150))) lt!1695148) (= lambda!171974 lambda!171958))))

(declare-fun bs!852854 () Bool)

(assert (= bs!852854 (and b!4517624 b!4516662)))

(assert (=> bs!852854 (= (= (+!1532 lt!1694172 (h!56483 (_2!28824 lt!1694150))) lt!1694147) (= lambda!171974 lambda!171844))))

(declare-fun bs!852855 () Bool)

(assert (= bs!852855 (and b!4517624 b!4516807)))

(assert (=> bs!852855 (= (= (+!1532 lt!1694172 (h!56483 (_2!28824 lt!1694150))) (extractMap!1212 (t!357721 (toList!4319 lt!1694158)))) (= lambda!171974 lambda!171863))))

(declare-fun bs!852857 () Bool)

(assert (= bs!852857 (and b!4517624 b!4517499)))

(assert (=> bs!852857 (= (= (+!1532 lt!1694172 (h!56483 (_2!28824 lt!1694150))) lt!1695158) (= lambda!171974 lambda!171957))))

(declare-fun bs!852858 () Bool)

(assert (= bs!852858 (and b!4517624 b!4516743)))

(assert (=> bs!852858 (= (= (+!1532 lt!1694172 (h!56483 (_2!28824 lt!1694150))) (extractMap!1212 (t!357721 (toList!4319 lt!1694164)))) (= lambda!171974 lambda!171854))))

(assert (=> bs!852852 (= (= (+!1532 lt!1694172 (h!56483 (_2!28824 lt!1694150))) lt!1694644) (= lambda!171974 lambda!171865))))

(declare-fun bs!852859 () Bool)

(assert (= bs!852859 (and b!4517624 b!4516604)))

(assert (=> bs!852859 (= (= (+!1532 lt!1694172 (h!56483 (_2!28824 lt!1694150))) lt!1694513) (= lambda!171974 lambda!171830))))

(declare-fun bs!852860 () Bool)

(assert (= bs!852860 (and b!4517624 d!1390326)))

(assert (=> bs!852860 (not (= lambda!171974 lambda!171772))))

(declare-fun bs!852861 () Bool)

(assert (= bs!852861 (and b!4517624 d!1390526)))

(assert (=> bs!852861 (= (= (+!1532 lt!1694172 (h!56483 (_2!28824 lt!1694150))) lt!1694604) (= lambda!171974 lambda!171857))))

(declare-fun bs!852862 () Bool)

(assert (= bs!852862 (and b!4517624 d!1390992)))

(assert (=> bs!852862 (= (= (+!1532 lt!1694172 (h!56483 (_2!28824 lt!1694150))) lt!1694513) (= lambda!171974 lambda!171973))))

(assert (=> bs!852859 (= (= (+!1532 lt!1694172 (h!56483 (_2!28824 lt!1694150))) lt!1694172) (= lambda!171974 lambda!171829))))

(declare-fun bs!852863 () Bool)

(assert (= bs!852863 (and b!4517624 b!4516603)))

(assert (=> bs!852863 (= (= (+!1532 lt!1694172 (h!56483 (_2!28824 lt!1694150))) lt!1694172) (= lambda!171974 lambda!171828))))

(assert (=> bs!852840 (= (= (+!1532 lt!1694172 (h!56483 (_2!28824 lt!1694150))) (+!1532 lt!1694147 (h!56483 (_2!28824 lt!1694150)))) (= lambda!171974 lambda!171929))))

(assert (=> bs!852847 (= (= (+!1532 lt!1694172 (h!56483 (_2!28824 lt!1694150))) (extractMap!1212 (t!357721 (toList!4319 lm!1477)))) (= lambda!171974 lambda!171869))))

(assert (=> bs!852857 (= (= (+!1532 lt!1694172 (h!56483 (_2!28824 lt!1694150))) (extractMap!1212 (t!357721 (toList!4319 (+!1530 lt!1694164 lt!1694150))))) (= lambda!171974 lambda!171955))))

(declare-fun bs!852864 () Bool)

(assert (= bs!852864 (and b!4517624 b!4516814)))

(assert (=> bs!852864 (= (= (+!1532 lt!1694172 (h!56483 (_2!28824 lt!1694150))) (extractMap!1212 (t!357721 (toList!4319 lm!1477)))) (= lambda!171974 lambda!171868))))

(assert (=> bs!852844 (= (= (+!1532 lt!1694172 (h!56483 (_2!28824 lt!1694150))) lt!1694147) (= lambda!171974 lambda!171845))))

(assert (=> b!4517624 true))

(declare-fun bs!852865 () Bool)

(declare-fun b!4517625 () Bool)

(assert (= bs!852865 (and b!4517625 d!1390866)))

(declare-fun lambda!171975 () Int)

(assert (=> bs!852865 (= (= (+!1532 lt!1694172 (h!56483 (_2!28824 lt!1694150))) lt!1694574) (= lambda!171975 lambda!171943))))

(declare-fun bs!852866 () Bool)

(assert (= bs!852866 (and b!4517625 b!4517498)))

(assert (=> bs!852866 (= (= (+!1532 lt!1694172 (h!56483 (_2!28824 lt!1694150))) (extractMap!1212 (t!357721 (toList!4319 (+!1530 lt!1694164 lt!1694150))))) (= lambda!171975 lambda!171953))))

(declare-fun bs!852867 () Bool)

(assert (= bs!852867 (and b!4517625 b!4517389)))

(assert (=> bs!852867 (= (= (+!1532 lt!1694172 (h!56483 (_2!28824 lt!1694150))) lt!1695017) (= lambda!171975 lambda!171931))))

(declare-fun bs!852868 () Bool)

(assert (= bs!852868 (and b!4517625 d!1390358)))

(assert (=> bs!852868 (= (= (+!1532 lt!1694172 (h!56483 (_2!28824 lt!1694150))) lt!1694503) (= lambda!171975 lambda!171831))))

(declare-fun bs!852869 () Bool)

(assert (= bs!852869 (and b!4517625 d!1390568)))

(assert (=> bs!852869 (= (= (+!1532 lt!1694172 (h!56483 (_2!28824 lt!1694150))) lt!1694656) (= lambda!171975 lambda!171871))))

(declare-fun bs!852870 () Bool)

(assert (= bs!852870 (and b!4517625 b!4516744)))

(assert (=> bs!852870 (= (= (+!1532 lt!1694172 (h!56483 (_2!28824 lt!1694150))) lt!1694614) (= lambda!171975 lambda!171856))))

(declare-fun bs!852871 () Bool)

(assert (= bs!852871 (and b!4517625 b!4516663)))

(assert (=> bs!852871 (= (= (+!1532 lt!1694172 (h!56483 (_2!28824 lt!1694150))) lt!1694574) (= lambda!171975 lambda!171846))))

(declare-fun bs!852872 () Bool)

(assert (= bs!852872 (and b!4517625 d!1390564)))

(assert (=> bs!852872 (= (= (+!1532 lt!1694172 (h!56483 (_2!28824 lt!1694150))) lt!1694634) (= lambda!171975 lambda!171866))))

(declare-fun bs!852873 () Bool)

(assert (= bs!852873 (and b!4517625 d!1390472)))

(assert (=> bs!852873 (= (= (+!1532 lt!1694172 (h!56483 (_2!28824 lt!1694150))) lt!1694564) (= lambda!171975 lambda!171847))))

(declare-fun bs!852874 () Bool)

(assert (= bs!852874 (and b!4517625 b!4516815)))

(assert (=> bs!852874 (= (= (+!1532 lt!1694172 (h!56483 (_2!28824 lt!1694150))) lt!1694666) (= lambda!171975 lambda!171870))))

(declare-fun bs!852875 () Bool)

(assert (= bs!852875 (and b!4517625 d!1390694)))

(assert (=> bs!852875 (= (= (+!1532 lt!1694172 (h!56483 (_2!28824 lt!1694150))) lt!1694147) (= lambda!171975 lambda!171904))))

(assert (=> bs!852870 (= (= (+!1532 lt!1694172 (h!56483 (_2!28824 lt!1694150))) (extractMap!1212 (t!357721 (toList!4319 lt!1694164)))) (= lambda!171975 lambda!171855))))

(declare-fun bs!852876 () Bool)

(assert (= bs!852876 (and b!4517625 d!1390756)))

(assert (=> bs!852876 (= (= (+!1532 lt!1694172 (h!56483 (_2!28824 lt!1694150))) lt!1694172) (= lambda!171975 lambda!171920))))

(declare-fun bs!852877 () Bool)

(assert (= bs!852877 (and b!4517625 d!1390852)))

(assert (=> bs!852877 (= (= (+!1532 lt!1694172 (h!56483 (_2!28824 lt!1694150))) lt!1695007) (= lambda!171975 lambda!171933))))

(declare-fun bs!852878 () Bool)

(assert (= bs!852878 (and b!4517625 b!4517388)))

(assert (=> bs!852878 (= (= (+!1532 lt!1694172 (h!56483 (_2!28824 lt!1694150))) (+!1532 lt!1694147 (h!56483 (_2!28824 lt!1694150)))) (= lambda!171975 lambda!171927))))

(declare-fun bs!852879 () Bool)

(assert (= bs!852879 (and b!4517625 b!4516808)))

(assert (=> bs!852879 (= (= (+!1532 lt!1694172 (h!56483 (_2!28824 lt!1694150))) (extractMap!1212 (t!357721 (toList!4319 lt!1694158)))) (= lambda!171975 lambda!171864))))

(declare-fun bs!852880 () Bool)

(assert (= bs!852880 (and b!4517625 d!1390924)))

(assert (=> bs!852880 (= (= (+!1532 lt!1694172 (h!56483 (_2!28824 lt!1694150))) lt!1695148) (= lambda!171975 lambda!171958))))

(declare-fun bs!852881 () Bool)

(assert (= bs!852881 (and b!4517625 b!4516662)))

(assert (=> bs!852881 (= (= (+!1532 lt!1694172 (h!56483 (_2!28824 lt!1694150))) lt!1694147) (= lambda!171975 lambda!171844))))

(declare-fun bs!852882 () Bool)

(assert (= bs!852882 (and b!4517625 b!4516807)))

(assert (=> bs!852882 (= (= (+!1532 lt!1694172 (h!56483 (_2!28824 lt!1694150))) (extractMap!1212 (t!357721 (toList!4319 lt!1694158)))) (= lambda!171975 lambda!171863))))

(declare-fun bs!852883 () Bool)

(assert (= bs!852883 (and b!4517625 b!4517499)))

(assert (=> bs!852883 (= (= (+!1532 lt!1694172 (h!56483 (_2!28824 lt!1694150))) lt!1695158) (= lambda!171975 lambda!171957))))

(declare-fun bs!852884 () Bool)

(assert (= bs!852884 (and b!4517625 b!4516743)))

(assert (=> bs!852884 (= (= (+!1532 lt!1694172 (h!56483 (_2!28824 lt!1694150))) (extractMap!1212 (t!357721 (toList!4319 lt!1694164)))) (= lambda!171975 lambda!171854))))

(assert (=> bs!852879 (= (= (+!1532 lt!1694172 (h!56483 (_2!28824 lt!1694150))) lt!1694644) (= lambda!171975 lambda!171865))))

(declare-fun bs!852885 () Bool)

(assert (= bs!852885 (and b!4517625 b!4516604)))

(assert (=> bs!852885 (= (= (+!1532 lt!1694172 (h!56483 (_2!28824 lt!1694150))) lt!1694513) (= lambda!171975 lambda!171830))))

(declare-fun bs!852886 () Bool)

(assert (= bs!852886 (and b!4517625 d!1390326)))

(assert (=> bs!852886 (not (= lambda!171975 lambda!171772))))

(declare-fun bs!852887 () Bool)

(assert (= bs!852887 (and b!4517625 b!4517624)))

(assert (=> bs!852887 (= lambda!171975 lambda!171974)))

(declare-fun bs!852888 () Bool)

(assert (= bs!852888 (and b!4517625 d!1390526)))

(assert (=> bs!852888 (= (= (+!1532 lt!1694172 (h!56483 (_2!28824 lt!1694150))) lt!1694604) (= lambda!171975 lambda!171857))))

(declare-fun bs!852889 () Bool)

(assert (= bs!852889 (and b!4517625 d!1390992)))

(assert (=> bs!852889 (= (= (+!1532 lt!1694172 (h!56483 (_2!28824 lt!1694150))) lt!1694513) (= lambda!171975 lambda!171973))))

(assert (=> bs!852885 (= (= (+!1532 lt!1694172 (h!56483 (_2!28824 lt!1694150))) lt!1694172) (= lambda!171975 lambda!171829))))

(declare-fun bs!852890 () Bool)

(assert (= bs!852890 (and b!4517625 b!4516603)))

(assert (=> bs!852890 (= (= (+!1532 lt!1694172 (h!56483 (_2!28824 lt!1694150))) lt!1694172) (= lambda!171975 lambda!171828))))

(assert (=> bs!852867 (= (= (+!1532 lt!1694172 (h!56483 (_2!28824 lt!1694150))) (+!1532 lt!1694147 (h!56483 (_2!28824 lt!1694150)))) (= lambda!171975 lambda!171929))))

(assert (=> bs!852874 (= (= (+!1532 lt!1694172 (h!56483 (_2!28824 lt!1694150))) (extractMap!1212 (t!357721 (toList!4319 lm!1477)))) (= lambda!171975 lambda!171869))))

(assert (=> bs!852883 (= (= (+!1532 lt!1694172 (h!56483 (_2!28824 lt!1694150))) (extractMap!1212 (t!357721 (toList!4319 (+!1530 lt!1694164 lt!1694150))))) (= lambda!171975 lambda!171955))))

(declare-fun bs!852891 () Bool)

(assert (= bs!852891 (and b!4517625 b!4516814)))

(assert (=> bs!852891 (= (= (+!1532 lt!1694172 (h!56483 (_2!28824 lt!1694150))) (extractMap!1212 (t!357721 (toList!4319 lm!1477)))) (= lambda!171975 lambda!171868))))

(assert (=> bs!852871 (= (= (+!1532 lt!1694172 (h!56483 (_2!28824 lt!1694150))) lt!1694147) (= lambda!171975 lambda!171845))))

(assert (=> b!4517625 true))

(declare-fun lambda!171976 () Int)

(declare-fun lt!1695265 () ListMap!3581)

(assert (=> bs!852865 (= (= lt!1695265 lt!1694574) (= lambda!171976 lambda!171943))))

(assert (=> bs!852866 (= (= lt!1695265 (extractMap!1212 (t!357721 (toList!4319 (+!1530 lt!1694164 lt!1694150))))) (= lambda!171976 lambda!171953))))

(assert (=> bs!852867 (= (= lt!1695265 lt!1695017) (= lambda!171976 lambda!171931))))

(assert (=> bs!852868 (= (= lt!1695265 lt!1694503) (= lambda!171976 lambda!171831))))

(assert (=> b!4517625 (= (= lt!1695265 (+!1532 lt!1694172 (h!56483 (_2!28824 lt!1694150)))) (= lambda!171976 lambda!171975))))

(assert (=> bs!852869 (= (= lt!1695265 lt!1694656) (= lambda!171976 lambda!171871))))

(assert (=> bs!852870 (= (= lt!1695265 lt!1694614) (= lambda!171976 lambda!171856))))

(assert (=> bs!852871 (= (= lt!1695265 lt!1694574) (= lambda!171976 lambda!171846))))

(assert (=> bs!852872 (= (= lt!1695265 lt!1694634) (= lambda!171976 lambda!171866))))

(assert (=> bs!852873 (= (= lt!1695265 lt!1694564) (= lambda!171976 lambda!171847))))

(assert (=> bs!852874 (= (= lt!1695265 lt!1694666) (= lambda!171976 lambda!171870))))

(assert (=> bs!852875 (= (= lt!1695265 lt!1694147) (= lambda!171976 lambda!171904))))

(assert (=> bs!852870 (= (= lt!1695265 (extractMap!1212 (t!357721 (toList!4319 lt!1694164)))) (= lambda!171976 lambda!171855))))

(assert (=> bs!852876 (= (= lt!1695265 lt!1694172) (= lambda!171976 lambda!171920))))

(assert (=> bs!852877 (= (= lt!1695265 lt!1695007) (= lambda!171976 lambda!171933))))

(assert (=> bs!852878 (= (= lt!1695265 (+!1532 lt!1694147 (h!56483 (_2!28824 lt!1694150)))) (= lambda!171976 lambda!171927))))

(assert (=> bs!852879 (= (= lt!1695265 (extractMap!1212 (t!357721 (toList!4319 lt!1694158)))) (= lambda!171976 lambda!171864))))

(assert (=> bs!852880 (= (= lt!1695265 lt!1695148) (= lambda!171976 lambda!171958))))

(assert (=> bs!852881 (= (= lt!1695265 lt!1694147) (= lambda!171976 lambda!171844))))

(assert (=> bs!852882 (= (= lt!1695265 (extractMap!1212 (t!357721 (toList!4319 lt!1694158)))) (= lambda!171976 lambda!171863))))

(assert (=> bs!852883 (= (= lt!1695265 lt!1695158) (= lambda!171976 lambda!171957))))

(assert (=> bs!852884 (= (= lt!1695265 (extractMap!1212 (t!357721 (toList!4319 lt!1694164)))) (= lambda!171976 lambda!171854))))

(assert (=> bs!852879 (= (= lt!1695265 lt!1694644) (= lambda!171976 lambda!171865))))

(assert (=> bs!852885 (= (= lt!1695265 lt!1694513) (= lambda!171976 lambda!171830))))

(assert (=> bs!852886 (not (= lambda!171976 lambda!171772))))

(assert (=> bs!852887 (= (= lt!1695265 (+!1532 lt!1694172 (h!56483 (_2!28824 lt!1694150)))) (= lambda!171976 lambda!171974))))

(assert (=> bs!852888 (= (= lt!1695265 lt!1694604) (= lambda!171976 lambda!171857))))

(assert (=> bs!852889 (= (= lt!1695265 lt!1694513) (= lambda!171976 lambda!171973))))

(assert (=> bs!852885 (= (= lt!1695265 lt!1694172) (= lambda!171976 lambda!171829))))

(assert (=> bs!852890 (= (= lt!1695265 lt!1694172) (= lambda!171976 lambda!171828))))

(assert (=> bs!852867 (= (= lt!1695265 (+!1532 lt!1694147 (h!56483 (_2!28824 lt!1694150)))) (= lambda!171976 lambda!171929))))

(assert (=> bs!852874 (= (= lt!1695265 (extractMap!1212 (t!357721 (toList!4319 lm!1477)))) (= lambda!171976 lambda!171869))))

(assert (=> bs!852883 (= (= lt!1695265 (extractMap!1212 (t!357721 (toList!4319 (+!1530 lt!1694164 lt!1694150))))) (= lambda!171976 lambda!171955))))

(assert (=> bs!852891 (= (= lt!1695265 (extractMap!1212 (t!357721 (toList!4319 lm!1477)))) (= lambda!171976 lambda!171868))))

(assert (=> bs!852871 (= (= lt!1695265 lt!1694147) (= lambda!171976 lambda!171845))))

(assert (=> b!4517625 true))

(declare-fun bs!852911 () Bool)

(declare-fun d!1391010 () Bool)

(assert (= bs!852911 (and d!1391010 d!1390866)))

(declare-fun lambda!171980 () Int)

(declare-fun lt!1695255 () ListMap!3581)

(assert (=> bs!852911 (= (= lt!1695255 lt!1694574) (= lambda!171980 lambda!171943))))

(declare-fun bs!852914 () Bool)

(assert (= bs!852914 (and d!1391010 b!4517498)))

(assert (=> bs!852914 (= (= lt!1695255 (extractMap!1212 (t!357721 (toList!4319 (+!1530 lt!1694164 lt!1694150))))) (= lambda!171980 lambda!171953))))

(declare-fun bs!852916 () Bool)

(assert (= bs!852916 (and d!1391010 b!4517389)))

(assert (=> bs!852916 (= (= lt!1695255 lt!1695017) (= lambda!171980 lambda!171931))))

(declare-fun bs!852918 () Bool)

(assert (= bs!852918 (and d!1391010 d!1390358)))

(assert (=> bs!852918 (= (= lt!1695255 lt!1694503) (= lambda!171980 lambda!171831))))

(declare-fun bs!852920 () Bool)

(assert (= bs!852920 (and d!1391010 b!4517625)))

(assert (=> bs!852920 (= (= lt!1695255 (+!1532 lt!1694172 (h!56483 (_2!28824 lt!1694150)))) (= lambda!171980 lambda!171975))))

(declare-fun bs!852921 () Bool)

(assert (= bs!852921 (and d!1391010 d!1390568)))

(assert (=> bs!852921 (= (= lt!1695255 lt!1694656) (= lambda!171980 lambda!171871))))

(declare-fun bs!852923 () Bool)

(assert (= bs!852923 (and d!1391010 b!4516744)))

(assert (=> bs!852923 (= (= lt!1695255 lt!1694614) (= lambda!171980 lambda!171856))))

(declare-fun bs!852924 () Bool)

(assert (= bs!852924 (and d!1391010 b!4516663)))

(assert (=> bs!852924 (= (= lt!1695255 lt!1694574) (= lambda!171980 lambda!171846))))

(declare-fun bs!852925 () Bool)

(assert (= bs!852925 (and d!1391010 d!1390564)))

(assert (=> bs!852925 (= (= lt!1695255 lt!1694634) (= lambda!171980 lambda!171866))))

(declare-fun bs!852927 () Bool)

(assert (= bs!852927 (and d!1391010 d!1390472)))

(assert (=> bs!852927 (= (= lt!1695255 lt!1694564) (= lambda!171980 lambda!171847))))

(declare-fun bs!852928 () Bool)

(assert (= bs!852928 (and d!1391010 b!4516815)))

(assert (=> bs!852928 (= (= lt!1695255 lt!1694666) (= lambda!171980 lambda!171870))))

(declare-fun bs!852930 () Bool)

(assert (= bs!852930 (and d!1391010 d!1390694)))

(assert (=> bs!852930 (= (= lt!1695255 lt!1694147) (= lambda!171980 lambda!171904))))

(assert (=> bs!852923 (= (= lt!1695255 (extractMap!1212 (t!357721 (toList!4319 lt!1694164)))) (= lambda!171980 lambda!171855))))

(declare-fun bs!852931 () Bool)

(assert (= bs!852931 (and d!1391010 d!1390756)))

(assert (=> bs!852931 (= (= lt!1695255 lt!1694172) (= lambda!171980 lambda!171920))))

(declare-fun bs!852932 () Bool)

(assert (= bs!852932 (and d!1391010 d!1390852)))

(assert (=> bs!852932 (= (= lt!1695255 lt!1695007) (= lambda!171980 lambda!171933))))

(declare-fun bs!852933 () Bool)

(assert (= bs!852933 (and d!1391010 b!4517388)))

(assert (=> bs!852933 (= (= lt!1695255 (+!1532 lt!1694147 (h!56483 (_2!28824 lt!1694150)))) (= lambda!171980 lambda!171927))))

(declare-fun bs!852934 () Bool)

(assert (= bs!852934 (and d!1391010 b!4516808)))

(assert (=> bs!852934 (= (= lt!1695255 (extractMap!1212 (t!357721 (toList!4319 lt!1694158)))) (= lambda!171980 lambda!171864))))

(declare-fun bs!852936 () Bool)

(assert (= bs!852936 (and d!1391010 d!1390924)))

(assert (=> bs!852936 (= (= lt!1695255 lt!1695148) (= lambda!171980 lambda!171958))))

(declare-fun bs!852937 () Bool)

(assert (= bs!852937 (and d!1391010 b!4516662)))

(assert (=> bs!852937 (= (= lt!1695255 lt!1694147) (= lambda!171980 lambda!171844))))

(declare-fun bs!852938 () Bool)

(assert (= bs!852938 (and d!1391010 b!4516807)))

(assert (=> bs!852938 (= (= lt!1695255 (extractMap!1212 (t!357721 (toList!4319 lt!1694158)))) (= lambda!171980 lambda!171863))))

(declare-fun bs!852939 () Bool)

(assert (= bs!852939 (and d!1391010 b!4517499)))

(assert (=> bs!852939 (= (= lt!1695255 lt!1695158) (= lambda!171980 lambda!171957))))

(declare-fun bs!852940 () Bool)

(assert (= bs!852940 (and d!1391010 b!4516743)))

(assert (=> bs!852940 (= (= lt!1695255 (extractMap!1212 (t!357721 (toList!4319 lt!1694164)))) (= lambda!171980 lambda!171854))))

(assert (=> bs!852934 (= (= lt!1695255 lt!1694644) (= lambda!171980 lambda!171865))))

(declare-fun bs!852943 () Bool)

(assert (= bs!852943 (and d!1391010 b!4516604)))

(assert (=> bs!852943 (= (= lt!1695255 lt!1694513) (= lambda!171980 lambda!171830))))

(declare-fun bs!852945 () Bool)

(assert (= bs!852945 (and d!1391010 d!1390326)))

(assert (=> bs!852945 (not (= lambda!171980 lambda!171772))))

(assert (=> bs!852920 (= (= lt!1695255 lt!1695265) (= lambda!171980 lambda!171976))))

(declare-fun bs!852948 () Bool)

(assert (= bs!852948 (and d!1391010 b!4517624)))

(assert (=> bs!852948 (= (= lt!1695255 (+!1532 lt!1694172 (h!56483 (_2!28824 lt!1694150)))) (= lambda!171980 lambda!171974))))

(declare-fun bs!852950 () Bool)

(assert (= bs!852950 (and d!1391010 d!1390526)))

(assert (=> bs!852950 (= (= lt!1695255 lt!1694604) (= lambda!171980 lambda!171857))))

(declare-fun bs!852952 () Bool)

(assert (= bs!852952 (and d!1391010 d!1390992)))

(assert (=> bs!852952 (= (= lt!1695255 lt!1694513) (= lambda!171980 lambda!171973))))

(assert (=> bs!852943 (= (= lt!1695255 lt!1694172) (= lambda!171980 lambda!171829))))

(declare-fun bs!852954 () Bool)

(assert (= bs!852954 (and d!1391010 b!4516603)))

(assert (=> bs!852954 (= (= lt!1695255 lt!1694172) (= lambda!171980 lambda!171828))))

(assert (=> bs!852916 (= (= lt!1695255 (+!1532 lt!1694147 (h!56483 (_2!28824 lt!1694150)))) (= lambda!171980 lambda!171929))))

(assert (=> bs!852928 (= (= lt!1695255 (extractMap!1212 (t!357721 (toList!4319 lm!1477)))) (= lambda!171980 lambda!171869))))

(assert (=> bs!852939 (= (= lt!1695255 (extractMap!1212 (t!357721 (toList!4319 (+!1530 lt!1694164 lt!1694150))))) (= lambda!171980 lambda!171955))))

(declare-fun bs!852959 () Bool)

(assert (= bs!852959 (and d!1391010 b!4516814)))

(assert (=> bs!852959 (= (= lt!1695255 (extractMap!1212 (t!357721 (toList!4319 lm!1477)))) (= lambda!171980 lambda!171868))))

(assert (=> bs!852924 (= (= lt!1695255 lt!1694147) (= lambda!171980 lambda!171845))))

(assert (=> d!1391010 true))

(declare-fun call!314701 () Bool)

(declare-fun c!770845 () Bool)

(declare-fun bm!314695 () Bool)

(assert (=> bm!314695 (= call!314701 (forall!10253 (toList!4320 (+!1532 lt!1694172 (h!56483 (_2!28824 lt!1694150)))) (ite c!770845 lambda!171974 lambda!171975)))))

(declare-fun call!314700 () Bool)

(declare-fun bm!314696 () Bool)

(assert (=> bm!314696 (= call!314700 (forall!10253 (toList!4320 (+!1532 lt!1694172 (h!56483 (_2!28824 lt!1694150)))) (ite c!770845 lambda!171974 lambda!171976)))))

(declare-fun b!4517622 () Bool)

(declare-fun e!2814533 () Bool)

(assert (=> b!4517622 (= e!2814533 (forall!10253 (toList!4320 (+!1532 lt!1694172 (h!56483 (_2!28824 lt!1694150)))) lambda!171976))))

(declare-fun bm!314697 () Bool)

(declare-fun call!314702 () Unit!94398)

(assert (=> bm!314697 (= call!314702 (lemmaContainsAllItsOwnKeys!334 (+!1532 lt!1694172 (h!56483 (_2!28824 lt!1694150)))))))

(declare-fun b!4517623 () Bool)

(declare-fun res!1879906 () Bool)

(declare-fun e!2814532 () Bool)

(assert (=> b!4517623 (=> (not res!1879906) (not e!2814532))))

(assert (=> b!4517623 (= res!1879906 (forall!10253 (toList!4320 (+!1532 lt!1694172 (h!56483 (_2!28824 lt!1694150)))) lambda!171980))))

(assert (=> d!1391010 e!2814532))

(declare-fun res!1879905 () Bool)

(assert (=> d!1391010 (=> (not res!1879905) (not e!2814532))))

(assert (=> d!1391010 (= res!1879905 (forall!10253 (t!357720 (_2!28824 lt!1694150)) lambda!171980))))

(declare-fun e!2814531 () ListMap!3581)

(assert (=> d!1391010 (= lt!1695255 e!2814531)))

(assert (=> d!1391010 (= c!770845 ((_ is Nil!50634) (t!357720 (_2!28824 lt!1694150))))))

(assert (=> d!1391010 (noDuplicateKeys!1156 (t!357720 (_2!28824 lt!1694150)))))

(assert (=> d!1391010 (= (addToMapMapFromBucket!683 (t!357720 (_2!28824 lt!1694150)) (+!1532 lt!1694172 (h!56483 (_2!28824 lt!1694150)))) lt!1695255)))

(assert (=> b!4517624 (= e!2814531 (+!1532 lt!1694172 (h!56483 (_2!28824 lt!1694150))))))

(declare-fun lt!1695269 () Unit!94398)

(assert (=> b!4517624 (= lt!1695269 call!314702)))

(assert (=> b!4517624 call!314701))

(declare-fun lt!1695259 () Unit!94398)

(assert (=> b!4517624 (= lt!1695259 lt!1695269)))

(assert (=> b!4517624 call!314700))

(declare-fun lt!1695257 () Unit!94398)

(declare-fun Unit!94649 () Unit!94398)

(assert (=> b!4517624 (= lt!1695257 Unit!94649)))

(assert (=> b!4517625 (= e!2814531 lt!1695265)))

(declare-fun lt!1695272 () ListMap!3581)

(assert (=> b!4517625 (= lt!1695272 (+!1532 (+!1532 lt!1694172 (h!56483 (_2!28824 lt!1694150))) (h!56483 (t!357720 (_2!28824 lt!1694150)))))))

(assert (=> b!4517625 (= lt!1695265 (addToMapMapFromBucket!683 (t!357720 (t!357720 (_2!28824 lt!1694150))) (+!1532 (+!1532 lt!1694172 (h!56483 (_2!28824 lt!1694150))) (h!56483 (t!357720 (_2!28824 lt!1694150))))))))

(declare-fun lt!1695254 () Unit!94398)

(assert (=> b!4517625 (= lt!1695254 call!314702)))

(assert (=> b!4517625 call!314701))

(declare-fun lt!1695267 () Unit!94398)

(assert (=> b!4517625 (= lt!1695267 lt!1695254)))

(assert (=> b!4517625 (forall!10253 (toList!4320 lt!1695272) lambda!171976)))

(declare-fun lt!1695270 () Unit!94398)

(declare-fun Unit!94650 () Unit!94398)

(assert (=> b!4517625 (= lt!1695270 Unit!94650)))

(assert (=> b!4517625 (forall!10253 (t!357720 (t!357720 (_2!28824 lt!1694150))) lambda!171976)))

(declare-fun lt!1695256 () Unit!94398)

(declare-fun Unit!94651 () Unit!94398)

(assert (=> b!4517625 (= lt!1695256 Unit!94651)))

(declare-fun lt!1695264 () Unit!94398)

(declare-fun Unit!94652 () Unit!94398)

(assert (=> b!4517625 (= lt!1695264 Unit!94652)))

(declare-fun lt!1695271 () Unit!94398)

(assert (=> b!4517625 (= lt!1695271 (forallContained!2505 (toList!4320 lt!1695272) lambda!171976 (h!56483 (t!357720 (_2!28824 lt!1694150)))))))

(assert (=> b!4517625 (contains!13353 lt!1695272 (_1!28823 (h!56483 (t!357720 (_2!28824 lt!1694150)))))))

(declare-fun lt!1695268 () Unit!94398)

(declare-fun Unit!94653 () Unit!94398)

(assert (=> b!4517625 (= lt!1695268 Unit!94653)))

(assert (=> b!4517625 (contains!13353 lt!1695265 (_1!28823 (h!56483 (t!357720 (_2!28824 lt!1694150)))))))

(declare-fun lt!1695260 () Unit!94398)

(declare-fun Unit!94654 () Unit!94398)

(assert (=> b!4517625 (= lt!1695260 Unit!94654)))

(assert (=> b!4517625 (forall!10253 (t!357720 (_2!28824 lt!1694150)) lambda!171976)))

(declare-fun lt!1695262 () Unit!94398)

(declare-fun Unit!94655 () Unit!94398)

(assert (=> b!4517625 (= lt!1695262 Unit!94655)))

(assert (=> b!4517625 (forall!10253 (toList!4320 lt!1695272) lambda!171976)))

(declare-fun lt!1695263 () Unit!94398)

(declare-fun Unit!94656 () Unit!94398)

(assert (=> b!4517625 (= lt!1695263 Unit!94656)))

(declare-fun lt!1695266 () Unit!94398)

(declare-fun Unit!94657 () Unit!94398)

(assert (=> b!4517625 (= lt!1695266 Unit!94657)))

(declare-fun lt!1695258 () Unit!94398)

(assert (=> b!4517625 (= lt!1695258 (addForallContainsKeyThenBeforeAdding!334 (+!1532 lt!1694172 (h!56483 (_2!28824 lt!1694150))) lt!1695265 (_1!28823 (h!56483 (t!357720 (_2!28824 lt!1694150)))) (_2!28823 (h!56483 (t!357720 (_2!28824 lt!1694150))))))))

(assert (=> b!4517625 (forall!10253 (toList!4320 (+!1532 lt!1694172 (h!56483 (_2!28824 lt!1694150)))) lambda!171976)))

(declare-fun lt!1695253 () Unit!94398)

(assert (=> b!4517625 (= lt!1695253 lt!1695258)))

(assert (=> b!4517625 call!314700))

(declare-fun lt!1695273 () Unit!94398)

(declare-fun Unit!94658 () Unit!94398)

(assert (=> b!4517625 (= lt!1695273 Unit!94658)))

(declare-fun res!1879904 () Bool)

(assert (=> b!4517625 (= res!1879904 (forall!10253 (t!357720 (_2!28824 lt!1694150)) lambda!171976))))

(assert (=> b!4517625 (=> (not res!1879904) (not e!2814533))))

(assert (=> b!4517625 e!2814533))

(declare-fun lt!1695261 () Unit!94398)

(declare-fun Unit!94659 () Unit!94398)

(assert (=> b!4517625 (= lt!1695261 Unit!94659)))

(declare-fun b!4517626 () Bool)

(assert (=> b!4517626 (= e!2814532 (invariantList!1013 (toList!4320 lt!1695255)))))

(assert (= (and d!1391010 c!770845) b!4517624))

(assert (= (and d!1391010 (not c!770845)) b!4517625))

(assert (= (and b!4517625 res!1879904) b!4517622))

(assert (= (or b!4517624 b!4517625) bm!314696))

(assert (= (or b!4517624 b!4517625) bm!314695))

(assert (= (or b!4517624 b!4517625) bm!314697))

(assert (= (and d!1391010 res!1879905) b!4517623))

(assert (= (and b!4517623 res!1879906) b!4517626))

(declare-fun m!5263355 () Bool)

(assert (=> b!4517626 m!5263355))

(declare-fun m!5263357 () Bool)

(assert (=> b!4517625 m!5263357))

(declare-fun m!5263359 () Bool)

(assert (=> b!4517625 m!5263359))

(declare-fun m!5263361 () Bool)

(assert (=> b!4517625 m!5263361))

(declare-fun m!5263363 () Bool)

(assert (=> b!4517625 m!5263363))

(assert (=> b!4517625 m!5261349))

(declare-fun m!5263365 () Bool)

(assert (=> b!4517625 m!5263365))

(assert (=> b!4517625 m!5263357))

(declare-fun m!5263367 () Bool)

(assert (=> b!4517625 m!5263367))

(assert (=> b!4517625 m!5263361))

(declare-fun m!5263371 () Bool)

(assert (=> b!4517625 m!5263371))

(assert (=> b!4517625 m!5261349))

(declare-fun m!5263375 () Bool)

(assert (=> b!4517625 m!5263375))

(declare-fun m!5263377 () Bool)

(assert (=> b!4517625 m!5263377))

(assert (=> b!4517625 m!5263375))

(declare-fun m!5263379 () Bool)

(assert (=> b!4517625 m!5263379))

(declare-fun m!5263381 () Bool)

(assert (=> d!1391010 m!5263381))

(assert (=> d!1391010 m!5261379))

(declare-fun m!5263383 () Bool)

(assert (=> bm!314695 m!5263383))

(assert (=> bm!314697 m!5261349))

(declare-fun m!5263385 () Bool)

(assert (=> bm!314697 m!5263385))

(declare-fun m!5263387 () Bool)

(assert (=> b!4517623 m!5263387))

(assert (=> b!4517622 m!5263363))

(declare-fun m!5263389 () Bool)

(assert (=> bm!314696 m!5263389))

(assert (=> b!4516604 d!1391010))

(declare-fun b!4517640 () Bool)

(declare-fun e!2814544 () Unit!94398)

(declare-fun lt!1695284 () Unit!94398)

(assert (=> b!4517640 (= e!2814544 lt!1695284)))

(declare-fun lt!1695287 () Unit!94398)

(assert (=> b!4517640 (= lt!1695287 (lemmaContainsKeyImpliesGetValueByKeyDefined!988 (toList!4320 lt!1694513) (_1!28823 (h!56483 (_2!28824 lt!1694150)))))))

(assert (=> b!4517640 (isDefined!8391 (getValueByKey!1084 (toList!4320 lt!1694513) (_1!28823 (h!56483 (_2!28824 lt!1694150)))))))

(declare-fun lt!1695283 () Unit!94398)

(assert (=> b!4517640 (= lt!1695283 lt!1695287)))

(assert (=> b!4517640 (= lt!1695284 (lemmaInListThenGetKeysListContains!456 (toList!4320 lt!1694513) (_1!28823 (h!56483 (_2!28824 lt!1694150)))))))

(declare-fun call!314703 () Bool)

(assert (=> b!4517640 call!314703))

(declare-fun b!4517641 () Bool)

(declare-fun e!2814548 () Unit!94398)

(assert (=> b!4517641 (= e!2814544 e!2814548)))

(declare-fun c!770851 () Bool)

(assert (=> b!4517641 (= c!770851 call!314703)))

(declare-fun b!4517642 () Bool)

(declare-fun Unit!94660 () Unit!94398)

(assert (=> b!4517642 (= e!2814548 Unit!94660)))

(declare-fun bm!314698 () Bool)

(declare-fun e!2814542 () List!50761)

(assert (=> bm!314698 (= call!314703 (contains!13354 e!2814542 (_1!28823 (h!56483 (_2!28824 lt!1694150)))))))

(declare-fun c!770849 () Bool)

(declare-fun c!770848 () Bool)

(assert (=> bm!314698 (= c!770849 c!770848)))

(declare-fun b!4517643 () Bool)

(assert (=> b!4517643 (= e!2814542 (keys!17586 lt!1694513))))

(declare-fun b!4517644 () Bool)

(declare-fun e!2814547 () Bool)

(declare-fun e!2814545 () Bool)

(assert (=> b!4517644 (= e!2814547 e!2814545)))

(declare-fun res!1879914 () Bool)

(assert (=> b!4517644 (=> (not res!1879914) (not e!2814545))))

(assert (=> b!4517644 (= res!1879914 (isDefined!8391 (getValueByKey!1084 (toList!4320 lt!1694513) (_1!28823 (h!56483 (_2!28824 lt!1694150))))))))

(declare-fun d!1391028 () Bool)

(assert (=> d!1391028 e!2814547))

(declare-fun res!1879915 () Bool)

(assert (=> d!1391028 (=> res!1879915 e!2814547)))

(declare-fun e!2814543 () Bool)

(assert (=> d!1391028 (= res!1879915 e!2814543)))

(declare-fun res!1879913 () Bool)

(assert (=> d!1391028 (=> (not res!1879913) (not e!2814543))))

(declare-fun lt!1695290 () Bool)

(assert (=> d!1391028 (= res!1879913 (not lt!1695290))))

(declare-fun lt!1695279 () Bool)

(assert (=> d!1391028 (= lt!1695290 lt!1695279)))

(declare-fun lt!1695280 () Unit!94398)

(assert (=> d!1391028 (= lt!1695280 e!2814544)))

(assert (=> d!1391028 (= c!770848 lt!1695279)))

(assert (=> d!1391028 (= lt!1695279 (containsKey!1771 (toList!4320 lt!1694513) (_1!28823 (h!56483 (_2!28824 lt!1694150)))))))

(assert (=> d!1391028 (= (contains!13353 lt!1694513 (_1!28823 (h!56483 (_2!28824 lt!1694150)))) lt!1695290)))

(declare-fun b!4517645 () Bool)

(assert (=> b!4517645 (= e!2814543 (not (contains!13354 (keys!17586 lt!1694513) (_1!28823 (h!56483 (_2!28824 lt!1694150))))))))

(declare-fun b!4517646 () Bool)

(assert (=> b!4517646 (= e!2814545 (contains!13354 (keys!17586 lt!1694513) (_1!28823 (h!56483 (_2!28824 lt!1694150)))))))

(declare-fun b!4517647 () Bool)

(assert (=> b!4517647 (= e!2814542 (getKeysList!461 (toList!4320 lt!1694513)))))

(declare-fun b!4517648 () Bool)

(assert (=> b!4517648 false))

(declare-fun lt!1695281 () Unit!94398)

(declare-fun lt!1695288 () Unit!94398)

(assert (=> b!4517648 (= lt!1695281 lt!1695288)))

(assert (=> b!4517648 (containsKey!1771 (toList!4320 lt!1694513) (_1!28823 (h!56483 (_2!28824 lt!1694150))))))

(assert (=> b!4517648 (= lt!1695288 (lemmaInGetKeysListThenContainsKey!459 (toList!4320 lt!1694513) (_1!28823 (h!56483 (_2!28824 lt!1694150)))))))

(declare-fun Unit!94661 () Unit!94398)

(assert (=> b!4517648 (= e!2814548 Unit!94661)))

(assert (= (and d!1391028 c!770848) b!4517640))

(assert (= (and d!1391028 (not c!770848)) b!4517641))

(assert (= (and b!4517641 c!770851) b!4517648))

(assert (= (and b!4517641 (not c!770851)) b!4517642))

(assert (= (or b!4517640 b!4517641) bm!314698))

(assert (= (and bm!314698 c!770849) b!4517647))

(assert (= (and bm!314698 (not c!770849)) b!4517643))

(assert (= (and d!1391028 res!1879913) b!4517645))

(assert (= (and d!1391028 (not res!1879915)) b!4517644))

(assert (= (and b!4517644 res!1879914) b!4517646))

(declare-fun m!5263399 () Bool)

(assert (=> b!4517644 m!5263399))

(assert (=> b!4517644 m!5263399))

(declare-fun m!5263401 () Bool)

(assert (=> b!4517644 m!5263401))

(declare-fun m!5263403 () Bool)

(assert (=> b!4517640 m!5263403))

(assert (=> b!4517640 m!5263399))

(assert (=> b!4517640 m!5263399))

(assert (=> b!4517640 m!5263401))

(declare-fun m!5263407 () Bool)

(assert (=> b!4517640 m!5263407))

(declare-fun m!5263409 () Bool)

(assert (=> b!4517645 m!5263409))

(assert (=> b!4517645 m!5263409))

(declare-fun m!5263411 () Bool)

(assert (=> b!4517645 m!5263411))

(declare-fun m!5263413 () Bool)

(assert (=> b!4517648 m!5263413))

(declare-fun m!5263415 () Bool)

(assert (=> b!4517648 m!5263415))

(declare-fun m!5263417 () Bool)

(assert (=> b!4517647 m!5263417))

(assert (=> b!4517643 m!5263409))

(assert (=> d!1391028 m!5263413))

(assert (=> b!4517646 m!5263409))

(assert (=> b!4517646 m!5263409))

(assert (=> b!4517646 m!5263411))

(declare-fun m!5263419 () Bool)

(assert (=> bm!314698 m!5263419))

(assert (=> b!4516604 d!1391028))

(declare-fun b!4517658 () Bool)

(declare-fun e!2814554 () Option!11103)

(assert (=> b!4517658 (= e!2814554 None!11102)))

(declare-fun b!4517657 () Bool)

(assert (=> b!4517657 (= e!2814554 (getValueByKey!1083 (t!357721 (toList!4319 lt!1694553)) (_1!28824 lt!1694154)))))

(declare-fun b!4517655 () Bool)

(declare-fun e!2814553 () Option!11103)

(assert (=> b!4517655 (= e!2814553 (Some!11102 (_2!28824 (h!56484 (toList!4319 lt!1694553)))))))

(declare-fun b!4517656 () Bool)

(assert (=> b!4517656 (= e!2814553 e!2814554)))

(declare-fun c!770855 () Bool)

(assert (=> b!4517656 (= c!770855 (and ((_ is Cons!50635) (toList!4319 lt!1694553)) (not (= (_1!28824 (h!56484 (toList!4319 lt!1694553))) (_1!28824 lt!1694154)))))))

(declare-fun d!1391036 () Bool)

(declare-fun c!770854 () Bool)

(assert (=> d!1391036 (= c!770854 (and ((_ is Cons!50635) (toList!4319 lt!1694553)) (= (_1!28824 (h!56484 (toList!4319 lt!1694553))) (_1!28824 lt!1694154))))))

(assert (=> d!1391036 (= (getValueByKey!1083 (toList!4319 lt!1694553) (_1!28824 lt!1694154)) e!2814553)))

(assert (= (and d!1391036 c!770854) b!4517655))

(assert (= (and d!1391036 (not c!770854)) b!4517656))

(assert (= (and b!4517656 c!770855) b!4517657))

(assert (= (and b!4517656 (not c!770855)) b!4517658))

(declare-fun m!5263429 () Bool)

(assert (=> b!4517657 m!5263429))

(assert (=> b!4516654 d!1391036))

(declare-fun d!1391040 () Bool)

(assert (=> d!1391040 (isDefined!8391 (getValueByKey!1084 (toList!4320 (extractMap!1212 (t!357721 (toList!4319 lm!1477)))) key!3287))))

(declare-fun lt!1695296 () Unit!94398)

(declare-fun choose!29474 (List!50758 K!12030) Unit!94398)

(assert (=> d!1391040 (= lt!1695296 (choose!29474 (toList!4320 (extractMap!1212 (t!357721 (toList!4319 lm!1477)))) key!3287))))

(assert (=> d!1391040 (invariantList!1013 (toList!4320 (extractMap!1212 (t!357721 (toList!4319 lm!1477)))))))

(assert (=> d!1391040 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!988 (toList!4320 (extractMap!1212 (t!357721 (toList!4319 lm!1477)))) key!3287) lt!1695296)))

(declare-fun bs!852978 () Bool)

(assert (= bs!852978 d!1391040))

(assert (=> bs!852978 m!5260871))

(assert (=> bs!852978 m!5260871))

(assert (=> bs!852978 m!5260873))

(declare-fun m!5263451 () Bool)

(assert (=> bs!852978 m!5263451))

(assert (=> bs!852978 m!5261899))

(assert (=> b!4516377 d!1391040))

(declare-fun d!1391050 () Bool)

(assert (=> d!1391050 (= (isDefined!8391 (getValueByKey!1084 (toList!4320 (extractMap!1212 (t!357721 (toList!4319 lm!1477)))) key!3287)) (not (isEmpty!28657 (getValueByKey!1084 (toList!4320 (extractMap!1212 (t!357721 (toList!4319 lm!1477)))) key!3287))))))

(declare-fun bs!852979 () Bool)

(assert (= bs!852979 d!1391050))

(assert (=> bs!852979 m!5260871))

(declare-fun m!5263455 () Bool)

(assert (=> bs!852979 m!5263455))

(assert (=> b!4516377 d!1391050))

(declare-fun b!4517681 () Bool)

(declare-fun e!2814568 () Option!11104)

(assert (=> b!4517681 (= e!2814568 (Some!11103 (_2!28823 (h!56483 (toList!4320 (extractMap!1212 (t!357721 (toList!4319 lm!1477))))))))))

(declare-fun d!1391054 () Bool)

(declare-fun c!770864 () Bool)

(assert (=> d!1391054 (= c!770864 (and ((_ is Cons!50634) (toList!4320 (extractMap!1212 (t!357721 (toList!4319 lm!1477))))) (= (_1!28823 (h!56483 (toList!4320 (extractMap!1212 (t!357721 (toList!4319 lm!1477)))))) key!3287)))))

(assert (=> d!1391054 (= (getValueByKey!1084 (toList!4320 (extractMap!1212 (t!357721 (toList!4319 lm!1477)))) key!3287) e!2814568)))

(declare-fun b!4517684 () Bool)

(declare-fun e!2814569 () Option!11104)

(assert (=> b!4517684 (= e!2814569 None!11103)))

(declare-fun b!4517683 () Bool)

(assert (=> b!4517683 (= e!2814569 (getValueByKey!1084 (t!357720 (toList!4320 (extractMap!1212 (t!357721 (toList!4319 lm!1477))))) key!3287))))

(declare-fun b!4517682 () Bool)

(assert (=> b!4517682 (= e!2814568 e!2814569)))

(declare-fun c!770865 () Bool)

(assert (=> b!4517682 (= c!770865 (and ((_ is Cons!50634) (toList!4320 (extractMap!1212 (t!357721 (toList!4319 lm!1477))))) (not (= (_1!28823 (h!56483 (toList!4320 (extractMap!1212 (t!357721 (toList!4319 lm!1477)))))) key!3287))))))

(assert (= (and d!1391054 c!770864) b!4517681))

(assert (= (and d!1391054 (not c!770864)) b!4517682))

(assert (= (and b!4517682 c!770865) b!4517683))

(assert (= (and b!4517682 (not c!770865)) b!4517684))

(declare-fun m!5263461 () Bool)

(assert (=> b!4517683 m!5263461))

(assert (=> b!4516377 d!1391054))

(declare-fun d!1391058 () Bool)

(assert (=> d!1391058 (contains!13354 (getKeysList!461 (toList!4320 (extractMap!1212 (t!357721 (toList!4319 lm!1477))))) key!3287)))

(declare-fun lt!1695301 () Unit!94398)

(declare-fun choose!29475 (List!50758 K!12030) Unit!94398)

(assert (=> d!1391058 (= lt!1695301 (choose!29475 (toList!4320 (extractMap!1212 (t!357721 (toList!4319 lm!1477)))) key!3287))))

(assert (=> d!1391058 (invariantList!1013 (toList!4320 (extractMap!1212 (t!357721 (toList!4319 lm!1477)))))))

(assert (=> d!1391058 (= (lemmaInListThenGetKeysListContains!456 (toList!4320 (extractMap!1212 (t!357721 (toList!4319 lm!1477)))) key!3287) lt!1695301)))

(declare-fun bs!852982 () Bool)

(assert (= bs!852982 d!1391058))

(assert (=> bs!852982 m!5260887))

(assert (=> bs!852982 m!5260887))

(declare-fun m!5263481 () Bool)

(assert (=> bs!852982 m!5263481))

(declare-fun m!5263483 () Bool)

(assert (=> bs!852982 m!5263483))

(assert (=> bs!852982 m!5261899))

(assert (=> b!4516377 d!1391058))

(declare-fun d!1391070 () Bool)

(declare-fun res!1879929 () Bool)

(declare-fun e!2814575 () Bool)

(assert (=> d!1391070 (=> res!1879929 e!2814575)))

(assert (=> d!1391070 (= res!1879929 ((_ is Nil!50634) (toList!4320 lt!1694147)))))

(assert (=> d!1391070 (= (forall!10253 (toList!4320 lt!1694147) (ite c!770605 lambda!171844 lambda!171845)) e!2814575)))

(declare-fun b!4517691 () Bool)

(declare-fun e!2814576 () Bool)

(assert (=> b!4517691 (= e!2814575 e!2814576)))

(declare-fun res!1879930 () Bool)

(assert (=> b!4517691 (=> (not res!1879930) (not e!2814576))))

(assert (=> b!4517691 (= res!1879930 (dynLambda!21156 (ite c!770605 lambda!171844 lambda!171845) (h!56483 (toList!4320 lt!1694147))))))

(declare-fun b!4517692 () Bool)

(assert (=> b!4517692 (= e!2814576 (forall!10253 (t!357720 (toList!4320 lt!1694147)) (ite c!770605 lambda!171844 lambda!171845)))))

(assert (= (and d!1391070 (not res!1879929)) b!4517691))

(assert (= (and b!4517691 res!1879930) b!4517692))

(declare-fun b_lambda!154505 () Bool)

(assert (=> (not b_lambda!154505) (not b!4517691)))

(declare-fun m!5263485 () Bool)

(assert (=> b!4517691 m!5263485))

(declare-fun m!5263487 () Bool)

(assert (=> b!4517692 m!5263487))

(assert (=> bm!314590 d!1391070))

(declare-fun d!1391072 () Bool)

(declare-fun res!1879931 () Bool)

(declare-fun e!2814577 () Bool)

(assert (=> d!1391072 (=> res!1879931 e!2814577)))

(assert (=> d!1391072 (= res!1879931 (not ((_ is Cons!50634) (t!357720 (_2!28824 lt!1694150)))))))

(assert (=> d!1391072 (= (noDuplicateKeys!1156 (t!357720 (_2!28824 lt!1694150))) e!2814577)))

(declare-fun b!4517693 () Bool)

(declare-fun e!2814578 () Bool)

(assert (=> b!4517693 (= e!2814577 e!2814578)))

(declare-fun res!1879932 () Bool)

(assert (=> b!4517693 (=> (not res!1879932) (not e!2814578))))

(assert (=> b!4517693 (= res!1879932 (not (containsKey!1768 (t!357720 (t!357720 (_2!28824 lt!1694150))) (_1!28823 (h!56483 (t!357720 (_2!28824 lt!1694150)))))))))

(declare-fun b!4517694 () Bool)

(assert (=> b!4517694 (= e!2814578 (noDuplicateKeys!1156 (t!357720 (t!357720 (_2!28824 lt!1694150)))))))

(assert (= (and d!1391072 (not res!1879931)) b!4517693))

(assert (= (and b!4517693 res!1879932) b!4517694))

(declare-fun m!5263489 () Bool)

(assert (=> b!4517693 m!5263489))

(declare-fun m!5263491 () Bool)

(assert (=> b!4517694 m!5263491))

(assert (=> b!4516611 d!1391072))

(declare-fun d!1391074 () Bool)

(declare-fun e!2814579 () Bool)

(assert (=> d!1391074 e!2814579))

(declare-fun res!1879933 () Bool)

(assert (=> d!1391074 (=> res!1879933 e!2814579)))

(declare-fun lt!1695304 () Bool)

(assert (=> d!1391074 (= res!1879933 (not lt!1695304))))

(declare-fun lt!1695302 () Bool)

(assert (=> d!1391074 (= lt!1695304 lt!1695302)))

(declare-fun lt!1695305 () Unit!94398)

(declare-fun e!2814580 () Unit!94398)

(assert (=> d!1391074 (= lt!1695305 e!2814580)))

(declare-fun c!770867 () Bool)

(assert (=> d!1391074 (= c!770867 lt!1695302)))

(assert (=> d!1391074 (= lt!1695302 (containsKey!1770 (toList!4319 lt!1694541) (_1!28824 lt!1694154)))))

(assert (=> d!1391074 (= (contains!13352 lt!1694541 (_1!28824 lt!1694154)) lt!1695304)))

(declare-fun b!4517695 () Bool)

(declare-fun lt!1695303 () Unit!94398)

(assert (=> b!4517695 (= e!2814580 lt!1695303)))

(assert (=> b!4517695 (= lt!1695303 (lemmaContainsKeyImpliesGetValueByKeyDefined!987 (toList!4319 lt!1694541) (_1!28824 lt!1694154)))))

(assert (=> b!4517695 (isDefined!8390 (getValueByKey!1083 (toList!4319 lt!1694541) (_1!28824 lt!1694154)))))

(declare-fun b!4517696 () Bool)

(declare-fun Unit!94662 () Unit!94398)

(assert (=> b!4517696 (= e!2814580 Unit!94662)))

(declare-fun b!4517697 () Bool)

(assert (=> b!4517697 (= e!2814579 (isDefined!8390 (getValueByKey!1083 (toList!4319 lt!1694541) (_1!28824 lt!1694154))))))

(assert (= (and d!1391074 c!770867) b!4517695))

(assert (= (and d!1391074 (not c!770867)) b!4517696))

(assert (= (and d!1391074 (not res!1879933)) b!4517697))

(declare-fun m!5263493 () Bool)

(assert (=> d!1391074 m!5263493))

(declare-fun m!5263495 () Bool)

(assert (=> b!4517695 m!5263495))

(assert (=> b!4517695 m!5261419))

(assert (=> b!4517695 m!5261419))

(declare-fun m!5263497 () Bool)

(assert (=> b!4517695 m!5263497))

(assert (=> b!4517697 m!5261419))

(assert (=> b!4517697 m!5261419))

(assert (=> b!4517697 m!5263497))

(assert (=> d!1390446 d!1391074))

(declare-fun b!4517701 () Bool)

(declare-fun e!2814582 () Option!11103)

(assert (=> b!4517701 (= e!2814582 None!11102)))

(declare-fun b!4517700 () Bool)

(assert (=> b!4517700 (= e!2814582 (getValueByKey!1083 (t!357721 lt!1694538) (_1!28824 lt!1694154)))))

(declare-fun b!4517698 () Bool)

(declare-fun e!2814581 () Option!11103)

(assert (=> b!4517698 (= e!2814581 (Some!11102 (_2!28824 (h!56484 lt!1694538))))))

(declare-fun b!4517699 () Bool)

(assert (=> b!4517699 (= e!2814581 e!2814582)))

(declare-fun c!770869 () Bool)

(assert (=> b!4517699 (= c!770869 (and ((_ is Cons!50635) lt!1694538) (not (= (_1!28824 (h!56484 lt!1694538)) (_1!28824 lt!1694154)))))))

(declare-fun d!1391076 () Bool)

(declare-fun c!770868 () Bool)

(assert (=> d!1391076 (= c!770868 (and ((_ is Cons!50635) lt!1694538) (= (_1!28824 (h!56484 lt!1694538)) (_1!28824 lt!1694154))))))

(assert (=> d!1391076 (= (getValueByKey!1083 lt!1694538 (_1!28824 lt!1694154)) e!2814581)))

(assert (= (and d!1391076 c!770868) b!4517698))

(assert (= (and d!1391076 (not c!770868)) b!4517699))

(assert (= (and b!4517699 c!770869) b!4517700))

(assert (= (and b!4517699 (not c!770869)) b!4517701))

(declare-fun m!5263499 () Bool)

(assert (=> b!4517700 m!5263499))

(assert (=> d!1390446 d!1391076))

(declare-fun d!1391078 () Bool)

(assert (=> d!1391078 (= (getValueByKey!1083 lt!1694538 (_1!28824 lt!1694154)) (Some!11102 (_2!28824 lt!1694154)))))

(declare-fun lt!1695306 () Unit!94398)

(assert (=> d!1391078 (= lt!1695306 (choose!29468 lt!1694538 (_1!28824 lt!1694154) (_2!28824 lt!1694154)))))

(declare-fun e!2814583 () Bool)

(assert (=> d!1391078 e!2814583))

(declare-fun res!1879934 () Bool)

(assert (=> d!1391078 (=> (not res!1879934) (not e!2814583))))

(assert (=> d!1391078 (= res!1879934 (isStrictlySorted!427 lt!1694538))))

(assert (=> d!1391078 (= (lemmaContainsTupThenGetReturnValue!670 lt!1694538 (_1!28824 lt!1694154) (_2!28824 lt!1694154)) lt!1695306)))

(declare-fun b!4517702 () Bool)

(declare-fun res!1879935 () Bool)

(assert (=> b!4517702 (=> (not res!1879935) (not e!2814583))))

(assert (=> b!4517702 (= res!1879935 (containsKey!1770 lt!1694538 (_1!28824 lt!1694154)))))

(declare-fun b!4517703 () Bool)

(assert (=> b!4517703 (= e!2814583 (contains!13351 lt!1694538 (tuple2!51061 (_1!28824 lt!1694154) (_2!28824 lt!1694154))))))

(assert (= (and d!1391078 res!1879934) b!4517702))

(assert (= (and b!4517702 res!1879935) b!4517703))

(assert (=> d!1391078 m!5261413))

(declare-fun m!5263501 () Bool)

(assert (=> d!1391078 m!5263501))

(declare-fun m!5263503 () Bool)

(assert (=> d!1391078 m!5263503))

(declare-fun m!5263505 () Bool)

(assert (=> b!4517702 m!5263505))

(declare-fun m!5263507 () Bool)

(assert (=> b!4517703 m!5263507))

(assert (=> d!1390446 d!1391078))

(declare-fun b!4517704 () Bool)

(declare-fun e!2814586 () List!50759)

(declare-fun call!314707 () List!50759)

(assert (=> b!4517704 (= e!2814586 call!314707)))

(declare-fun b!4517705 () Bool)

(assert (=> b!4517705 (= e!2814586 call!314707)))

(declare-fun b!4517706 () Bool)

(declare-fun e!2814587 () List!50759)

(assert (=> b!4517706 (= e!2814587 (insertStrictlySorted!404 (t!357721 (toList!4319 lm!1477)) (_1!28824 lt!1694154) (_2!28824 lt!1694154)))))

(declare-fun b!4517707 () Bool)

(declare-fun e!2814585 () Bool)

(declare-fun lt!1695307 () List!50759)

(assert (=> b!4517707 (= e!2814585 (contains!13351 lt!1695307 (tuple2!51061 (_1!28824 lt!1694154) (_2!28824 lt!1694154))))))

(declare-fun b!4517708 () Bool)

(declare-fun e!2814584 () List!50759)

(declare-fun call!314709 () List!50759)

(assert (=> b!4517708 (= e!2814584 call!314709)))

(declare-fun c!770871 () Bool)

(declare-fun bm!314702 () Bool)

(declare-fun call!314708 () List!50759)

(assert (=> bm!314702 (= call!314708 ($colon$colon!930 e!2814587 (ite c!770871 (h!56484 (toList!4319 lm!1477)) (tuple2!51061 (_1!28824 lt!1694154) (_2!28824 lt!1694154)))))))

(declare-fun c!770870 () Bool)

(assert (=> bm!314702 (= c!770870 c!770871)))

(declare-fun d!1391080 () Bool)

(assert (=> d!1391080 e!2814585))

(declare-fun res!1879936 () Bool)

(assert (=> d!1391080 (=> (not res!1879936) (not e!2814585))))

(assert (=> d!1391080 (= res!1879936 (isStrictlySorted!427 lt!1695307))))

(declare-fun e!2814588 () List!50759)

(assert (=> d!1391080 (= lt!1695307 e!2814588)))

(assert (=> d!1391080 (= c!770871 (and ((_ is Cons!50635) (toList!4319 lm!1477)) (bvslt (_1!28824 (h!56484 (toList!4319 lm!1477))) (_1!28824 lt!1694154))))))

(assert (=> d!1391080 (isStrictlySorted!427 (toList!4319 lm!1477))))

(assert (=> d!1391080 (= (insertStrictlySorted!404 (toList!4319 lm!1477) (_1!28824 lt!1694154) (_2!28824 lt!1694154)) lt!1695307)))

(declare-fun bm!314703 () Bool)

(assert (=> bm!314703 (= call!314707 call!314709)))

(declare-fun c!770873 () Bool)

(declare-fun c!770872 () Bool)

(declare-fun b!4517709 () Bool)

(assert (=> b!4517709 (= e!2814587 (ite c!770872 (t!357721 (toList!4319 lm!1477)) (ite c!770873 (Cons!50635 (h!56484 (toList!4319 lm!1477)) (t!357721 (toList!4319 lm!1477))) Nil!50635)))))

(declare-fun b!4517710 () Bool)

(assert (=> b!4517710 (= e!2814588 call!314708)))

(declare-fun b!4517711 () Bool)

(declare-fun res!1879937 () Bool)

(assert (=> b!4517711 (=> (not res!1879937) (not e!2814585))))

(assert (=> b!4517711 (= res!1879937 (containsKey!1770 lt!1695307 (_1!28824 lt!1694154)))))

(declare-fun bm!314704 () Bool)

(assert (=> bm!314704 (= call!314709 call!314708)))

(declare-fun b!4517712 () Bool)

(assert (=> b!4517712 (= c!770873 (and ((_ is Cons!50635) (toList!4319 lm!1477)) (bvsgt (_1!28824 (h!56484 (toList!4319 lm!1477))) (_1!28824 lt!1694154))))))

(assert (=> b!4517712 (= e!2814584 e!2814586)))

(declare-fun b!4517713 () Bool)

(assert (=> b!4517713 (= e!2814588 e!2814584)))

(assert (=> b!4517713 (= c!770872 (and ((_ is Cons!50635) (toList!4319 lm!1477)) (= (_1!28824 (h!56484 (toList!4319 lm!1477))) (_1!28824 lt!1694154))))))

(assert (= (and d!1391080 c!770871) b!4517710))

(assert (= (and d!1391080 (not c!770871)) b!4517713))

(assert (= (and b!4517713 c!770872) b!4517708))

(assert (= (and b!4517713 (not c!770872)) b!4517712))

(assert (= (and b!4517712 c!770873) b!4517705))

(assert (= (and b!4517712 (not c!770873)) b!4517704))

(assert (= (or b!4517705 b!4517704) bm!314703))

(assert (= (or b!4517708 bm!314703) bm!314704))

(assert (= (or b!4517710 bm!314704) bm!314702))

(assert (= (and bm!314702 c!770870) b!4517706))

(assert (= (and bm!314702 (not c!770870)) b!4517709))

(assert (= (and d!1391080 res!1879936) b!4517711))

(assert (= (and b!4517711 res!1879937) b!4517707))

(declare-fun m!5263509 () Bool)

(assert (=> b!4517707 m!5263509))

(declare-fun m!5263511 () Bool)

(assert (=> d!1391080 m!5263511))

(assert (=> d!1391080 m!5260827))

(declare-fun m!5263513 () Bool)

(assert (=> b!4517706 m!5263513))

(declare-fun m!5263515 () Bool)

(assert (=> bm!314702 m!5263515))

(declare-fun m!5263517 () Bool)

(assert (=> b!4517711 m!5263517))

(assert (=> d!1390446 d!1391080))

(declare-fun d!1391082 () Bool)

(assert (=> d!1391082 (= (invariantList!1013 (toList!4320 lt!1694558)) (noDuplicatedKeys!258 (toList!4320 lt!1694558)))))

(declare-fun bs!852983 () Bool)

(assert (= bs!852983 d!1391082))

(declare-fun m!5263519 () Bool)

(assert (=> bs!852983 m!5263519))

(assert (=> d!1390460 d!1391082))

(declare-fun d!1391084 () Bool)

(declare-fun res!1879938 () Bool)

(declare-fun e!2814589 () Bool)

(assert (=> d!1391084 (=> res!1879938 e!2814589)))

(assert (=> d!1391084 (= res!1879938 ((_ is Nil!50635) (toList!4319 lt!1694158)))))

(assert (=> d!1391084 (= (forall!10251 (toList!4319 lt!1694158) lambda!171840) e!2814589)))

(declare-fun b!4517714 () Bool)

(declare-fun e!2814590 () Bool)

(assert (=> b!4517714 (= e!2814589 e!2814590)))

(declare-fun res!1879939 () Bool)

(assert (=> b!4517714 (=> (not res!1879939) (not e!2814590))))

(assert (=> b!4517714 (= res!1879939 (dynLambda!21155 lambda!171840 (h!56484 (toList!4319 lt!1694158))))))

(declare-fun b!4517715 () Bool)

(assert (=> b!4517715 (= e!2814590 (forall!10251 (t!357721 (toList!4319 lt!1694158)) lambda!171840))))

(assert (= (and d!1391084 (not res!1879938)) b!4517714))

(assert (= (and b!4517714 res!1879939) b!4517715))

(declare-fun b_lambda!154507 () Bool)

(assert (=> (not b_lambda!154507) (not b!4517714)))

(declare-fun m!5263521 () Bool)

(assert (=> b!4517714 m!5263521))

(declare-fun m!5263523 () Bool)

(assert (=> b!4517715 m!5263523))

(assert (=> d!1390460 d!1391084))

(declare-fun bs!852985 () Bool)

(declare-fun b!4517718 () Bool)

(assert (= bs!852985 (and b!4517718 d!1390866)))

(declare-fun lambda!171982 () Int)

(assert (=> bs!852985 (= (= (extractMap!1212 (t!357721 (t!357721 (toList!4319 lm!1477)))) lt!1694574) (= lambda!171982 lambda!171943))))

(declare-fun bs!852986 () Bool)

(assert (= bs!852986 (and b!4517718 b!4517498)))

(assert (=> bs!852986 (= (= (extractMap!1212 (t!357721 (t!357721 (toList!4319 lm!1477)))) (extractMap!1212 (t!357721 (toList!4319 (+!1530 lt!1694164 lt!1694150))))) (= lambda!171982 lambda!171953))))

(declare-fun bs!852987 () Bool)

(assert (= bs!852987 (and b!4517718 b!4517389)))

(assert (=> bs!852987 (= (= (extractMap!1212 (t!357721 (t!357721 (toList!4319 lm!1477)))) lt!1695017) (= lambda!171982 lambda!171931))))

(declare-fun bs!852988 () Bool)

(assert (= bs!852988 (and b!4517718 d!1390358)))

(assert (=> bs!852988 (= (= (extractMap!1212 (t!357721 (t!357721 (toList!4319 lm!1477)))) lt!1694503) (= lambda!171982 lambda!171831))))

(declare-fun bs!852990 () Bool)

(assert (= bs!852990 (and b!4517718 b!4517625)))

(assert (=> bs!852990 (= (= (extractMap!1212 (t!357721 (t!357721 (toList!4319 lm!1477)))) (+!1532 lt!1694172 (h!56483 (_2!28824 lt!1694150)))) (= lambda!171982 lambda!171975))))

(declare-fun bs!852991 () Bool)

(assert (= bs!852991 (and b!4517718 d!1390568)))

(assert (=> bs!852991 (= (= (extractMap!1212 (t!357721 (t!357721 (toList!4319 lm!1477)))) lt!1694656) (= lambda!171982 lambda!171871))))

(declare-fun bs!852992 () Bool)

(assert (= bs!852992 (and b!4517718 b!4516744)))

(assert (=> bs!852992 (= (= (extractMap!1212 (t!357721 (t!357721 (toList!4319 lm!1477)))) lt!1694614) (= lambda!171982 lambda!171856))))

(declare-fun bs!852993 () Bool)

(assert (= bs!852993 (and b!4517718 b!4516663)))

(assert (=> bs!852993 (= (= (extractMap!1212 (t!357721 (t!357721 (toList!4319 lm!1477)))) lt!1694574) (= lambda!171982 lambda!171846))))

(declare-fun bs!852994 () Bool)

(assert (= bs!852994 (and b!4517718 d!1390564)))

(assert (=> bs!852994 (= (= (extractMap!1212 (t!357721 (t!357721 (toList!4319 lm!1477)))) lt!1694634) (= lambda!171982 lambda!171866))))

(declare-fun bs!852995 () Bool)

(assert (= bs!852995 (and b!4517718 d!1390472)))

(assert (=> bs!852995 (= (= (extractMap!1212 (t!357721 (t!357721 (toList!4319 lm!1477)))) lt!1694564) (= lambda!171982 lambda!171847))))

(declare-fun bs!852996 () Bool)

(assert (= bs!852996 (and b!4517718 b!4516815)))

(assert (=> bs!852996 (= (= (extractMap!1212 (t!357721 (t!357721 (toList!4319 lm!1477)))) lt!1694666) (= lambda!171982 lambda!171870))))

(declare-fun bs!852997 () Bool)

(assert (= bs!852997 (and b!4517718 d!1390694)))

(assert (=> bs!852997 (= (= (extractMap!1212 (t!357721 (t!357721 (toList!4319 lm!1477)))) lt!1694147) (= lambda!171982 lambda!171904))))

(assert (=> bs!852992 (= (= (extractMap!1212 (t!357721 (t!357721 (toList!4319 lm!1477)))) (extractMap!1212 (t!357721 (toList!4319 lt!1694164)))) (= lambda!171982 lambda!171855))))

(declare-fun bs!852998 () Bool)

(assert (= bs!852998 (and b!4517718 d!1390756)))

(assert (=> bs!852998 (= (= (extractMap!1212 (t!357721 (t!357721 (toList!4319 lm!1477)))) lt!1694172) (= lambda!171982 lambda!171920))))

(declare-fun bs!853000 () Bool)

(assert (= bs!853000 (and b!4517718 d!1390852)))

(assert (=> bs!853000 (= (= (extractMap!1212 (t!357721 (t!357721 (toList!4319 lm!1477)))) lt!1695007) (= lambda!171982 lambda!171933))))

(declare-fun bs!853001 () Bool)

(assert (= bs!853001 (and b!4517718 b!4517388)))

(assert (=> bs!853001 (= (= (extractMap!1212 (t!357721 (t!357721 (toList!4319 lm!1477)))) (+!1532 lt!1694147 (h!56483 (_2!28824 lt!1694150)))) (= lambda!171982 lambda!171927))))

(declare-fun bs!853003 () Bool)

(assert (= bs!853003 (and b!4517718 b!4516808)))

(assert (=> bs!853003 (= (= (extractMap!1212 (t!357721 (t!357721 (toList!4319 lm!1477)))) (extractMap!1212 (t!357721 (toList!4319 lt!1694158)))) (= lambda!171982 lambda!171864))))

(declare-fun bs!853005 () Bool)

(assert (= bs!853005 (and b!4517718 d!1391010)))

(assert (=> bs!853005 (= (= (extractMap!1212 (t!357721 (t!357721 (toList!4319 lm!1477)))) lt!1695255) (= lambda!171982 lambda!171980))))

(declare-fun bs!853007 () Bool)

(assert (= bs!853007 (and b!4517718 d!1390924)))

(assert (=> bs!853007 (= (= (extractMap!1212 (t!357721 (t!357721 (toList!4319 lm!1477)))) lt!1695148) (= lambda!171982 lambda!171958))))

(declare-fun bs!853008 () Bool)

(assert (= bs!853008 (and b!4517718 b!4516662)))

(assert (=> bs!853008 (= (= (extractMap!1212 (t!357721 (t!357721 (toList!4319 lm!1477)))) lt!1694147) (= lambda!171982 lambda!171844))))

(declare-fun bs!853010 () Bool)

(assert (= bs!853010 (and b!4517718 b!4516807)))

(assert (=> bs!853010 (= (= (extractMap!1212 (t!357721 (t!357721 (toList!4319 lm!1477)))) (extractMap!1212 (t!357721 (toList!4319 lt!1694158)))) (= lambda!171982 lambda!171863))))

(declare-fun bs!853012 () Bool)

(assert (= bs!853012 (and b!4517718 b!4517499)))

(assert (=> bs!853012 (= (= (extractMap!1212 (t!357721 (t!357721 (toList!4319 lm!1477)))) lt!1695158) (= lambda!171982 lambda!171957))))

(declare-fun bs!853014 () Bool)

(assert (= bs!853014 (and b!4517718 b!4516743)))

(assert (=> bs!853014 (= (= (extractMap!1212 (t!357721 (t!357721 (toList!4319 lm!1477)))) (extractMap!1212 (t!357721 (toList!4319 lt!1694164)))) (= lambda!171982 lambda!171854))))

(assert (=> bs!853003 (= (= (extractMap!1212 (t!357721 (t!357721 (toList!4319 lm!1477)))) lt!1694644) (= lambda!171982 lambda!171865))))

(declare-fun bs!853017 () Bool)

(assert (= bs!853017 (and b!4517718 b!4516604)))

(assert (=> bs!853017 (= (= (extractMap!1212 (t!357721 (t!357721 (toList!4319 lm!1477)))) lt!1694513) (= lambda!171982 lambda!171830))))

(declare-fun bs!853018 () Bool)

(assert (= bs!853018 (and b!4517718 d!1390326)))

(assert (=> bs!853018 (not (= lambda!171982 lambda!171772))))

(assert (=> bs!852990 (= (= (extractMap!1212 (t!357721 (t!357721 (toList!4319 lm!1477)))) lt!1695265) (= lambda!171982 lambda!171976))))

(declare-fun bs!853021 () Bool)

(assert (= bs!853021 (and b!4517718 b!4517624)))

(assert (=> bs!853021 (= (= (extractMap!1212 (t!357721 (t!357721 (toList!4319 lm!1477)))) (+!1532 lt!1694172 (h!56483 (_2!28824 lt!1694150)))) (= lambda!171982 lambda!171974))))

(declare-fun bs!853023 () Bool)

(assert (= bs!853023 (and b!4517718 d!1390526)))

(assert (=> bs!853023 (= (= (extractMap!1212 (t!357721 (t!357721 (toList!4319 lm!1477)))) lt!1694604) (= lambda!171982 lambda!171857))))

(declare-fun bs!853025 () Bool)

(assert (= bs!853025 (and b!4517718 d!1390992)))

(assert (=> bs!853025 (= (= (extractMap!1212 (t!357721 (t!357721 (toList!4319 lm!1477)))) lt!1694513) (= lambda!171982 lambda!171973))))

(assert (=> bs!853017 (= (= (extractMap!1212 (t!357721 (t!357721 (toList!4319 lm!1477)))) lt!1694172) (= lambda!171982 lambda!171829))))

(declare-fun bs!853028 () Bool)

(assert (= bs!853028 (and b!4517718 b!4516603)))

(assert (=> bs!853028 (= (= (extractMap!1212 (t!357721 (t!357721 (toList!4319 lm!1477)))) lt!1694172) (= lambda!171982 lambda!171828))))

(assert (=> bs!852987 (= (= (extractMap!1212 (t!357721 (t!357721 (toList!4319 lm!1477)))) (+!1532 lt!1694147 (h!56483 (_2!28824 lt!1694150)))) (= lambda!171982 lambda!171929))))

(assert (=> bs!852996 (= (= (extractMap!1212 (t!357721 (t!357721 (toList!4319 lm!1477)))) (extractMap!1212 (t!357721 (toList!4319 lm!1477)))) (= lambda!171982 lambda!171869))))

(assert (=> bs!853012 (= (= (extractMap!1212 (t!357721 (t!357721 (toList!4319 lm!1477)))) (extractMap!1212 (t!357721 (toList!4319 (+!1530 lt!1694164 lt!1694150))))) (= lambda!171982 lambda!171955))))

(declare-fun bs!853032 () Bool)

(assert (= bs!853032 (and b!4517718 b!4516814)))

(assert (=> bs!853032 (= (= (extractMap!1212 (t!357721 (t!357721 (toList!4319 lm!1477)))) (extractMap!1212 (t!357721 (toList!4319 lm!1477)))) (= lambda!171982 lambda!171868))))

(assert (=> bs!852993 (= (= (extractMap!1212 (t!357721 (t!357721 (toList!4319 lm!1477)))) lt!1694147) (= lambda!171982 lambda!171845))))

(assert (=> b!4517718 true))

(declare-fun bs!853040 () Bool)

(declare-fun b!4517719 () Bool)

(assert (= bs!853040 (and b!4517719 d!1390866)))

(declare-fun lambda!171984 () Int)

(assert (=> bs!853040 (= (= (extractMap!1212 (t!357721 (t!357721 (toList!4319 lm!1477)))) lt!1694574) (= lambda!171984 lambda!171943))))

(declare-fun bs!853042 () Bool)

(assert (= bs!853042 (and b!4517719 b!4517498)))

(assert (=> bs!853042 (= (= (extractMap!1212 (t!357721 (t!357721 (toList!4319 lm!1477)))) (extractMap!1212 (t!357721 (toList!4319 (+!1530 lt!1694164 lt!1694150))))) (= lambda!171984 lambda!171953))))

(declare-fun bs!853044 () Bool)

(assert (= bs!853044 (and b!4517719 b!4517389)))

(assert (=> bs!853044 (= (= (extractMap!1212 (t!357721 (t!357721 (toList!4319 lm!1477)))) lt!1695017) (= lambda!171984 lambda!171931))))

(declare-fun bs!853045 () Bool)

(assert (= bs!853045 (and b!4517719 d!1390358)))

(assert (=> bs!853045 (= (= (extractMap!1212 (t!357721 (t!357721 (toList!4319 lm!1477)))) lt!1694503) (= lambda!171984 lambda!171831))))

(declare-fun bs!853046 () Bool)

(assert (= bs!853046 (and b!4517719 b!4517625)))

(assert (=> bs!853046 (= (= (extractMap!1212 (t!357721 (t!357721 (toList!4319 lm!1477)))) (+!1532 lt!1694172 (h!56483 (_2!28824 lt!1694150)))) (= lambda!171984 lambda!171975))))

(declare-fun bs!853048 () Bool)

(assert (= bs!853048 (and b!4517719 d!1390568)))

(assert (=> bs!853048 (= (= (extractMap!1212 (t!357721 (t!357721 (toList!4319 lm!1477)))) lt!1694656) (= lambda!171984 lambda!171871))))

(declare-fun bs!853049 () Bool)

(assert (= bs!853049 (and b!4517719 b!4516663)))

(assert (=> bs!853049 (= (= (extractMap!1212 (t!357721 (t!357721 (toList!4319 lm!1477)))) lt!1694574) (= lambda!171984 lambda!171846))))

(declare-fun bs!853051 () Bool)

(assert (= bs!853051 (and b!4517719 d!1390564)))

(assert (=> bs!853051 (= (= (extractMap!1212 (t!357721 (t!357721 (toList!4319 lm!1477)))) lt!1694634) (= lambda!171984 lambda!171866))))

(declare-fun bs!853052 () Bool)

(assert (= bs!853052 (and b!4517719 d!1390472)))

(assert (=> bs!853052 (= (= (extractMap!1212 (t!357721 (t!357721 (toList!4319 lm!1477)))) lt!1694564) (= lambda!171984 lambda!171847))))

(declare-fun bs!853053 () Bool)

(assert (= bs!853053 (and b!4517719 b!4516815)))

(assert (=> bs!853053 (= (= (extractMap!1212 (t!357721 (t!357721 (toList!4319 lm!1477)))) lt!1694666) (= lambda!171984 lambda!171870))))

(declare-fun bs!853054 () Bool)

(assert (= bs!853054 (and b!4517719 d!1390694)))

(assert (=> bs!853054 (= (= (extractMap!1212 (t!357721 (t!357721 (toList!4319 lm!1477)))) lt!1694147) (= lambda!171984 lambda!171904))))

(declare-fun bs!853055 () Bool)

(assert (= bs!853055 (and b!4517719 b!4516744)))

(assert (=> bs!853055 (= (= (extractMap!1212 (t!357721 (t!357721 (toList!4319 lm!1477)))) (extractMap!1212 (t!357721 (toList!4319 lt!1694164)))) (= lambda!171984 lambda!171855))))

(declare-fun bs!853056 () Bool)

(assert (= bs!853056 (and b!4517719 d!1390756)))

(assert (=> bs!853056 (= (= (extractMap!1212 (t!357721 (t!357721 (toList!4319 lm!1477)))) lt!1694172) (= lambda!171984 lambda!171920))))

(declare-fun bs!853057 () Bool)

(assert (= bs!853057 (and b!4517719 d!1390852)))

(assert (=> bs!853057 (= (= (extractMap!1212 (t!357721 (t!357721 (toList!4319 lm!1477)))) lt!1695007) (= lambda!171984 lambda!171933))))

(declare-fun bs!853058 () Bool)

(assert (= bs!853058 (and b!4517719 b!4517388)))

(assert (=> bs!853058 (= (= (extractMap!1212 (t!357721 (t!357721 (toList!4319 lm!1477)))) (+!1532 lt!1694147 (h!56483 (_2!28824 lt!1694150)))) (= lambda!171984 lambda!171927))))

(declare-fun bs!853059 () Bool)

(assert (= bs!853059 (and b!4517719 b!4516808)))

(assert (=> bs!853059 (= (= (extractMap!1212 (t!357721 (t!357721 (toList!4319 lm!1477)))) (extractMap!1212 (t!357721 (toList!4319 lt!1694158)))) (= lambda!171984 lambda!171864))))

(declare-fun bs!853061 () Bool)

(assert (= bs!853061 (and b!4517719 d!1391010)))

(assert (=> bs!853061 (= (= (extractMap!1212 (t!357721 (t!357721 (toList!4319 lm!1477)))) lt!1695255) (= lambda!171984 lambda!171980))))

(declare-fun bs!853062 () Bool)

(assert (= bs!853062 (and b!4517719 d!1390924)))

(assert (=> bs!853062 (= (= (extractMap!1212 (t!357721 (t!357721 (toList!4319 lm!1477)))) lt!1695148) (= lambda!171984 lambda!171958))))

(declare-fun bs!853064 () Bool)

(assert (= bs!853064 (and b!4517719 b!4516662)))

(assert (=> bs!853064 (= (= (extractMap!1212 (t!357721 (t!357721 (toList!4319 lm!1477)))) lt!1694147) (= lambda!171984 lambda!171844))))

(declare-fun bs!853066 () Bool)

(assert (= bs!853066 (and b!4517719 b!4516807)))

(assert (=> bs!853066 (= (= (extractMap!1212 (t!357721 (t!357721 (toList!4319 lm!1477)))) (extractMap!1212 (t!357721 (toList!4319 lt!1694158)))) (= lambda!171984 lambda!171863))))

(declare-fun bs!853068 () Bool)

(assert (= bs!853068 (and b!4517719 b!4517499)))

(assert (=> bs!853068 (= (= (extractMap!1212 (t!357721 (t!357721 (toList!4319 lm!1477)))) lt!1695158) (= lambda!171984 lambda!171957))))

(declare-fun bs!853070 () Bool)

(assert (= bs!853070 (and b!4517719 b!4516743)))

(assert (=> bs!853070 (= (= (extractMap!1212 (t!357721 (t!357721 (toList!4319 lm!1477)))) (extractMap!1212 (t!357721 (toList!4319 lt!1694164)))) (= lambda!171984 lambda!171854))))

(assert (=> bs!853059 (= (= (extractMap!1212 (t!357721 (t!357721 (toList!4319 lm!1477)))) lt!1694644) (= lambda!171984 lambda!171865))))

(declare-fun bs!853073 () Bool)

(assert (= bs!853073 (and b!4517719 b!4516604)))

(assert (=> bs!853073 (= (= (extractMap!1212 (t!357721 (t!357721 (toList!4319 lm!1477)))) lt!1694513) (= lambda!171984 lambda!171830))))

(declare-fun bs!853075 () Bool)

(assert (= bs!853075 (and b!4517719 d!1390326)))

(assert (=> bs!853075 (not (= lambda!171984 lambda!171772))))

(assert (=> bs!853046 (= (= (extractMap!1212 (t!357721 (t!357721 (toList!4319 lm!1477)))) lt!1695265) (= lambda!171984 lambda!171976))))

(declare-fun bs!853078 () Bool)

(assert (= bs!853078 (and b!4517719 b!4517624)))

(assert (=> bs!853078 (= (= (extractMap!1212 (t!357721 (t!357721 (toList!4319 lm!1477)))) (+!1532 lt!1694172 (h!56483 (_2!28824 lt!1694150)))) (= lambda!171984 lambda!171974))))

(declare-fun bs!853079 () Bool)

(assert (= bs!853079 (and b!4517719 d!1390526)))

(assert (=> bs!853079 (= (= (extractMap!1212 (t!357721 (t!357721 (toList!4319 lm!1477)))) lt!1694604) (= lambda!171984 lambda!171857))))

(declare-fun bs!853081 () Bool)

(assert (= bs!853081 (and b!4517719 d!1390992)))

(assert (=> bs!853081 (= (= (extractMap!1212 (t!357721 (t!357721 (toList!4319 lm!1477)))) lt!1694513) (= lambda!171984 lambda!171973))))

(assert (=> bs!853073 (= (= (extractMap!1212 (t!357721 (t!357721 (toList!4319 lm!1477)))) lt!1694172) (= lambda!171984 lambda!171829))))

(declare-fun bs!853084 () Bool)

(assert (= bs!853084 (and b!4517719 b!4516603)))

(assert (=> bs!853084 (= (= (extractMap!1212 (t!357721 (t!357721 (toList!4319 lm!1477)))) lt!1694172) (= lambda!171984 lambda!171828))))

(assert (=> bs!853044 (= (= (extractMap!1212 (t!357721 (t!357721 (toList!4319 lm!1477)))) (+!1532 lt!1694147 (h!56483 (_2!28824 lt!1694150)))) (= lambda!171984 lambda!171929))))

(assert (=> bs!853053 (= (= (extractMap!1212 (t!357721 (t!357721 (toList!4319 lm!1477)))) (extractMap!1212 (t!357721 (toList!4319 lm!1477)))) (= lambda!171984 lambda!171869))))

(declare-fun bs!853088 () Bool)

(assert (= bs!853088 (and b!4517719 b!4517718)))

(assert (=> bs!853088 (= lambda!171984 lambda!171982)))

(assert (=> bs!853055 (= (= (extractMap!1212 (t!357721 (t!357721 (toList!4319 lm!1477)))) lt!1694614) (= lambda!171984 lambda!171856))))

(assert (=> bs!853068 (= (= (extractMap!1212 (t!357721 (t!357721 (toList!4319 lm!1477)))) (extractMap!1212 (t!357721 (toList!4319 (+!1530 lt!1694164 lt!1694150))))) (= lambda!171984 lambda!171955))))

(declare-fun bs!853091 () Bool)

(assert (= bs!853091 (and b!4517719 b!4516814)))

(assert (=> bs!853091 (= (= (extractMap!1212 (t!357721 (t!357721 (toList!4319 lm!1477)))) (extractMap!1212 (t!357721 (toList!4319 lm!1477)))) (= lambda!171984 lambda!171868))))

(assert (=> bs!853049 (= (= (extractMap!1212 (t!357721 (t!357721 (toList!4319 lm!1477)))) lt!1694147) (= lambda!171984 lambda!171845))))

(assert (=> b!4517719 true))

(declare-fun lt!1695320 () ListMap!3581)

(declare-fun lambda!171986 () Int)

(assert (=> bs!853040 (= (= lt!1695320 lt!1694574) (= lambda!171986 lambda!171943))))

(assert (=> bs!853042 (= (= lt!1695320 (extractMap!1212 (t!357721 (toList!4319 (+!1530 lt!1694164 lt!1694150))))) (= lambda!171986 lambda!171953))))

(assert (=> bs!853044 (= (= lt!1695320 lt!1695017) (= lambda!171986 lambda!171931))))

(assert (=> bs!853045 (= (= lt!1695320 lt!1694503) (= lambda!171986 lambda!171831))))

(assert (=> bs!853046 (= (= lt!1695320 (+!1532 lt!1694172 (h!56483 (_2!28824 lt!1694150)))) (= lambda!171986 lambda!171975))))

(assert (=> bs!853048 (= (= lt!1695320 lt!1694656) (= lambda!171986 lambda!171871))))

(assert (=> bs!853049 (= (= lt!1695320 lt!1694574) (= lambda!171986 lambda!171846))))

(assert (=> bs!853051 (= (= lt!1695320 lt!1694634) (= lambda!171986 lambda!171866))))

(assert (=> bs!853052 (= (= lt!1695320 lt!1694564) (= lambda!171986 lambda!171847))))

(assert (=> bs!853053 (= (= lt!1695320 lt!1694666) (= lambda!171986 lambda!171870))))

(assert (=> bs!853054 (= (= lt!1695320 lt!1694147) (= lambda!171986 lambda!171904))))

(assert (=> bs!853055 (= (= lt!1695320 (extractMap!1212 (t!357721 (toList!4319 lt!1694164)))) (= lambda!171986 lambda!171855))))

(assert (=> bs!853056 (= (= lt!1695320 lt!1694172) (= lambda!171986 lambda!171920))))

(assert (=> bs!853057 (= (= lt!1695320 lt!1695007) (= lambda!171986 lambda!171933))))

(assert (=> bs!853058 (= (= lt!1695320 (+!1532 lt!1694147 (h!56483 (_2!28824 lt!1694150)))) (= lambda!171986 lambda!171927))))

(assert (=> bs!853059 (= (= lt!1695320 (extractMap!1212 (t!357721 (toList!4319 lt!1694158)))) (= lambda!171986 lambda!171864))))

(assert (=> bs!853061 (= (= lt!1695320 lt!1695255) (= lambda!171986 lambda!171980))))

(assert (=> bs!853062 (= (= lt!1695320 lt!1695148) (= lambda!171986 lambda!171958))))

(assert (=> bs!853064 (= (= lt!1695320 lt!1694147) (= lambda!171986 lambda!171844))))

(assert (=> bs!853066 (= (= lt!1695320 (extractMap!1212 (t!357721 (toList!4319 lt!1694158)))) (= lambda!171986 lambda!171863))))

(assert (=> bs!853068 (= (= lt!1695320 lt!1695158) (= lambda!171986 lambda!171957))))

(assert (=> bs!853070 (= (= lt!1695320 (extractMap!1212 (t!357721 (toList!4319 lt!1694164)))) (= lambda!171986 lambda!171854))))

(assert (=> bs!853059 (= (= lt!1695320 lt!1694644) (= lambda!171986 lambda!171865))))

(assert (=> bs!853073 (= (= lt!1695320 lt!1694513) (= lambda!171986 lambda!171830))))

(assert (=> bs!853075 (not (= lambda!171986 lambda!171772))))

(assert (=> bs!853046 (= (= lt!1695320 lt!1695265) (= lambda!171986 lambda!171976))))

(assert (=> bs!853078 (= (= lt!1695320 (+!1532 lt!1694172 (h!56483 (_2!28824 lt!1694150)))) (= lambda!171986 lambda!171974))))

(assert (=> bs!853079 (= (= lt!1695320 lt!1694604) (= lambda!171986 lambda!171857))))

(assert (=> bs!853081 (= (= lt!1695320 lt!1694513) (= lambda!171986 lambda!171973))))

(assert (=> bs!853073 (= (= lt!1695320 lt!1694172) (= lambda!171986 lambda!171829))))

(assert (=> bs!853084 (= (= lt!1695320 lt!1694172) (= lambda!171986 lambda!171828))))

(assert (=> bs!853044 (= (= lt!1695320 (+!1532 lt!1694147 (h!56483 (_2!28824 lt!1694150)))) (= lambda!171986 lambda!171929))))

(assert (=> bs!853053 (= (= lt!1695320 (extractMap!1212 (t!357721 (toList!4319 lm!1477)))) (= lambda!171986 lambda!171869))))

(assert (=> bs!853088 (= (= lt!1695320 (extractMap!1212 (t!357721 (t!357721 (toList!4319 lm!1477))))) (= lambda!171986 lambda!171982))))

(assert (=> bs!853055 (= (= lt!1695320 lt!1694614) (= lambda!171986 lambda!171856))))

(assert (=> b!4517719 (= (= lt!1695320 (extractMap!1212 (t!357721 (t!357721 (toList!4319 lm!1477))))) (= lambda!171986 lambda!171984))))

(assert (=> bs!853068 (= (= lt!1695320 (extractMap!1212 (t!357721 (toList!4319 (+!1530 lt!1694164 lt!1694150))))) (= lambda!171986 lambda!171955))))

(assert (=> bs!853091 (= (= lt!1695320 (extractMap!1212 (t!357721 (toList!4319 lm!1477)))) (= lambda!171986 lambda!171868))))

(assert (=> bs!853049 (= (= lt!1695320 lt!1694147) (= lambda!171986 lambda!171845))))

(assert (=> b!4517719 true))

(declare-fun bs!853104 () Bool)

(declare-fun d!1391086 () Bool)

(assert (= bs!853104 (and d!1391086 d!1390866)))

(declare-fun lambda!171988 () Int)

(declare-fun lt!1695310 () ListMap!3581)

(assert (=> bs!853104 (= (= lt!1695310 lt!1694574) (= lambda!171988 lambda!171943))))

(declare-fun bs!853105 () Bool)

(assert (= bs!853105 (and d!1391086 b!4517498)))

(assert (=> bs!853105 (= (= lt!1695310 (extractMap!1212 (t!357721 (toList!4319 (+!1530 lt!1694164 lt!1694150))))) (= lambda!171988 lambda!171953))))

(declare-fun bs!853106 () Bool)

(assert (= bs!853106 (and d!1391086 b!4517389)))

(assert (=> bs!853106 (= (= lt!1695310 lt!1695017) (= lambda!171988 lambda!171931))))

(declare-fun bs!853107 () Bool)

(assert (= bs!853107 (and d!1391086 d!1390358)))

(assert (=> bs!853107 (= (= lt!1695310 lt!1694503) (= lambda!171988 lambda!171831))))

(declare-fun bs!853108 () Bool)

(assert (= bs!853108 (and d!1391086 b!4517625)))

(assert (=> bs!853108 (= (= lt!1695310 (+!1532 lt!1694172 (h!56483 (_2!28824 lt!1694150)))) (= lambda!171988 lambda!171975))))

(declare-fun bs!853109 () Bool)

(assert (= bs!853109 (and d!1391086 d!1390568)))

(assert (=> bs!853109 (= (= lt!1695310 lt!1694656) (= lambda!171988 lambda!171871))))

(declare-fun bs!853110 () Bool)

(assert (= bs!853110 (and d!1391086 b!4516663)))

(assert (=> bs!853110 (= (= lt!1695310 lt!1694574) (= lambda!171988 lambda!171846))))

(declare-fun bs!853111 () Bool)

(assert (= bs!853111 (and d!1391086 d!1390564)))

(assert (=> bs!853111 (= (= lt!1695310 lt!1694634) (= lambda!171988 lambda!171866))))

(declare-fun bs!853112 () Bool)

(assert (= bs!853112 (and d!1391086 d!1390472)))

(assert (=> bs!853112 (= (= lt!1695310 lt!1694564) (= lambda!171988 lambda!171847))))

(declare-fun bs!853113 () Bool)

(assert (= bs!853113 (and d!1391086 b!4516815)))

(assert (=> bs!853113 (= (= lt!1695310 lt!1694666) (= lambda!171988 lambda!171870))))

(declare-fun bs!853114 () Bool)

(assert (= bs!853114 (and d!1391086 d!1390694)))

(assert (=> bs!853114 (= (= lt!1695310 lt!1694147) (= lambda!171988 lambda!171904))))

(declare-fun bs!853115 () Bool)

(assert (= bs!853115 (and d!1391086 b!4516744)))

(assert (=> bs!853115 (= (= lt!1695310 (extractMap!1212 (t!357721 (toList!4319 lt!1694164)))) (= lambda!171988 lambda!171855))))

(declare-fun bs!853116 () Bool)

(assert (= bs!853116 (and d!1391086 d!1390756)))

(assert (=> bs!853116 (= (= lt!1695310 lt!1694172) (= lambda!171988 lambda!171920))))

(declare-fun bs!853117 () Bool)

(assert (= bs!853117 (and d!1391086 d!1390852)))

(assert (=> bs!853117 (= (= lt!1695310 lt!1695007) (= lambda!171988 lambda!171933))))

(declare-fun bs!853119 () Bool)

(assert (= bs!853119 (and d!1391086 b!4517388)))

(assert (=> bs!853119 (= (= lt!1695310 (+!1532 lt!1694147 (h!56483 (_2!28824 lt!1694150)))) (= lambda!171988 lambda!171927))))

(declare-fun bs!853121 () Bool)

(assert (= bs!853121 (and d!1391086 b!4516808)))

(assert (=> bs!853121 (= (= lt!1695310 (extractMap!1212 (t!357721 (toList!4319 lt!1694158)))) (= lambda!171988 lambda!171864))))

(declare-fun bs!853123 () Bool)

(assert (= bs!853123 (and d!1391086 d!1391010)))

(assert (=> bs!853123 (= (= lt!1695310 lt!1695255) (= lambda!171988 lambda!171980))))

(declare-fun bs!853125 () Bool)

(assert (= bs!853125 (and d!1391086 d!1390924)))

(assert (=> bs!853125 (= (= lt!1695310 lt!1695148) (= lambda!171988 lambda!171958))))

(declare-fun bs!853127 () Bool)

(assert (= bs!853127 (and d!1391086 b!4516662)))

(assert (=> bs!853127 (= (= lt!1695310 lt!1694147) (= lambda!171988 lambda!171844))))

(declare-fun bs!853129 () Bool)

(assert (= bs!853129 (and d!1391086 b!4516807)))

(assert (=> bs!853129 (= (= lt!1695310 (extractMap!1212 (t!357721 (toList!4319 lt!1694158)))) (= lambda!171988 lambda!171863))))

(declare-fun bs!853131 () Bool)

(assert (= bs!853131 (and d!1391086 b!4517499)))

(assert (=> bs!853131 (= (= lt!1695310 lt!1695158) (= lambda!171988 lambda!171957))))

(declare-fun bs!853133 () Bool)

(assert (= bs!853133 (and d!1391086 b!4516743)))

(assert (=> bs!853133 (= (= lt!1695310 (extractMap!1212 (t!357721 (toList!4319 lt!1694164)))) (= lambda!171988 lambda!171854))))

(assert (=> bs!853121 (= (= lt!1695310 lt!1694644) (= lambda!171988 lambda!171865))))

(declare-fun bs!853136 () Bool)

(assert (= bs!853136 (and d!1391086 b!4516604)))

(assert (=> bs!853136 (= (= lt!1695310 lt!1694513) (= lambda!171988 lambda!171830))))

(declare-fun bs!853138 () Bool)

(assert (= bs!853138 (and d!1391086 d!1390326)))

(assert (=> bs!853138 (not (= lambda!171988 lambda!171772))))

(assert (=> bs!853108 (= (= lt!1695310 lt!1695265) (= lambda!171988 lambda!171976))))

(declare-fun bs!853141 () Bool)

(assert (= bs!853141 (and d!1391086 b!4517624)))

(assert (=> bs!853141 (= (= lt!1695310 (+!1532 lt!1694172 (h!56483 (_2!28824 lt!1694150)))) (= lambda!171988 lambda!171974))))

(declare-fun bs!853143 () Bool)

(assert (= bs!853143 (and d!1391086 d!1390526)))

(assert (=> bs!853143 (= (= lt!1695310 lt!1694604) (= lambda!171988 lambda!171857))))

(declare-fun bs!853145 () Bool)

(assert (= bs!853145 (and d!1391086 d!1390992)))

(assert (=> bs!853145 (= (= lt!1695310 lt!1694513) (= lambda!171988 lambda!171973))))

(assert (=> bs!853136 (= (= lt!1695310 lt!1694172) (= lambda!171988 lambda!171829))))

(declare-fun bs!853148 () Bool)

(assert (= bs!853148 (and d!1391086 b!4517719)))

(assert (=> bs!853148 (= (= lt!1695310 lt!1695320) (= lambda!171988 lambda!171986))))

(declare-fun bs!853150 () Bool)

(assert (= bs!853150 (and d!1391086 b!4516603)))

(assert (=> bs!853150 (= (= lt!1695310 lt!1694172) (= lambda!171988 lambda!171828))))

(assert (=> bs!853106 (= (= lt!1695310 (+!1532 lt!1694147 (h!56483 (_2!28824 lt!1694150)))) (= lambda!171988 lambda!171929))))

(assert (=> bs!853113 (= (= lt!1695310 (extractMap!1212 (t!357721 (toList!4319 lm!1477)))) (= lambda!171988 lambda!171869))))

(declare-fun bs!853153 () Bool)

(assert (= bs!853153 (and d!1391086 b!4517718)))

(assert (=> bs!853153 (= (= lt!1695310 (extractMap!1212 (t!357721 (t!357721 (toList!4319 lm!1477))))) (= lambda!171988 lambda!171982))))

(assert (=> bs!853115 (= (= lt!1695310 lt!1694614) (= lambda!171988 lambda!171856))))

(assert (=> bs!853148 (= (= lt!1695310 (extractMap!1212 (t!357721 (t!357721 (toList!4319 lm!1477))))) (= lambda!171988 lambda!171984))))

(assert (=> bs!853131 (= (= lt!1695310 (extractMap!1212 (t!357721 (toList!4319 (+!1530 lt!1694164 lt!1694150))))) (= lambda!171988 lambda!171955))))

(declare-fun bs!853155 () Bool)

(assert (= bs!853155 (and d!1391086 b!4516814)))

(assert (=> bs!853155 (= (= lt!1695310 (extractMap!1212 (t!357721 (toList!4319 lm!1477)))) (= lambda!171988 lambda!171868))))

(assert (=> bs!853110 (= (= lt!1695310 lt!1694147) (= lambda!171988 lambda!171845))))

(assert (=> d!1391086 true))

(declare-fun c!770874 () Bool)

(declare-fun call!314711 () Bool)

(declare-fun bm!314705 () Bool)

(assert (=> bm!314705 (= call!314711 (forall!10253 (toList!4320 (extractMap!1212 (t!357721 (t!357721 (toList!4319 lm!1477))))) (ite c!770874 lambda!171982 lambda!171984)))))

(declare-fun call!314710 () Bool)

(declare-fun bm!314706 () Bool)

(assert (=> bm!314706 (= call!314710 (forall!10253 (toList!4320 (extractMap!1212 (t!357721 (t!357721 (toList!4319 lm!1477))))) (ite c!770874 lambda!171982 lambda!171986)))))

(declare-fun b!4517716 () Bool)

(declare-fun e!2814593 () Bool)

(assert (=> b!4517716 (= e!2814593 (forall!10253 (toList!4320 (extractMap!1212 (t!357721 (t!357721 (toList!4319 lm!1477))))) lambda!171986))))

(declare-fun bm!314707 () Bool)

(declare-fun call!314712 () Unit!94398)

(assert (=> bm!314707 (= call!314712 (lemmaContainsAllItsOwnKeys!334 (extractMap!1212 (t!357721 (t!357721 (toList!4319 lm!1477))))))))

(declare-fun b!4517717 () Bool)

(declare-fun res!1879942 () Bool)

(declare-fun e!2814592 () Bool)

(assert (=> b!4517717 (=> (not res!1879942) (not e!2814592))))

(assert (=> b!4517717 (= res!1879942 (forall!10253 (toList!4320 (extractMap!1212 (t!357721 (t!357721 (toList!4319 lm!1477))))) lambda!171988))))

(assert (=> d!1391086 e!2814592))

(declare-fun res!1879941 () Bool)

(assert (=> d!1391086 (=> (not res!1879941) (not e!2814592))))

(assert (=> d!1391086 (= res!1879941 (forall!10253 (_2!28824 (h!56484 (t!357721 (toList!4319 lm!1477)))) lambda!171988))))

(declare-fun e!2814591 () ListMap!3581)

(assert (=> d!1391086 (= lt!1695310 e!2814591)))

(assert (=> d!1391086 (= c!770874 ((_ is Nil!50634) (_2!28824 (h!56484 (t!357721 (toList!4319 lm!1477))))))))

(assert (=> d!1391086 (noDuplicateKeys!1156 (_2!28824 (h!56484 (t!357721 (toList!4319 lm!1477)))))))

(assert (=> d!1391086 (= (addToMapMapFromBucket!683 (_2!28824 (h!56484 (t!357721 (toList!4319 lm!1477)))) (extractMap!1212 (t!357721 (t!357721 (toList!4319 lm!1477))))) lt!1695310)))

(assert (=> b!4517718 (= e!2814591 (extractMap!1212 (t!357721 (t!357721 (toList!4319 lm!1477)))))))

(declare-fun lt!1695324 () Unit!94398)

(assert (=> b!4517718 (= lt!1695324 call!314712)))

(assert (=> b!4517718 call!314711))

(declare-fun lt!1695314 () Unit!94398)

(assert (=> b!4517718 (= lt!1695314 lt!1695324)))

(assert (=> b!4517718 call!314710))

(declare-fun lt!1695312 () Unit!94398)

(declare-fun Unit!94674 () Unit!94398)

(assert (=> b!4517718 (= lt!1695312 Unit!94674)))

(assert (=> b!4517719 (= e!2814591 lt!1695320)))

(declare-fun lt!1695327 () ListMap!3581)

(assert (=> b!4517719 (= lt!1695327 (+!1532 (extractMap!1212 (t!357721 (t!357721 (toList!4319 lm!1477)))) (h!56483 (_2!28824 (h!56484 (t!357721 (toList!4319 lm!1477)))))))))

(assert (=> b!4517719 (= lt!1695320 (addToMapMapFromBucket!683 (t!357720 (_2!28824 (h!56484 (t!357721 (toList!4319 lm!1477))))) (+!1532 (extractMap!1212 (t!357721 (t!357721 (toList!4319 lm!1477)))) (h!56483 (_2!28824 (h!56484 (t!357721 (toList!4319 lm!1477))))))))))

(declare-fun lt!1695309 () Unit!94398)

(assert (=> b!4517719 (= lt!1695309 call!314712)))

(assert (=> b!4517719 call!314711))

(declare-fun lt!1695322 () Unit!94398)

(assert (=> b!4517719 (= lt!1695322 lt!1695309)))

(assert (=> b!4517719 (forall!10253 (toList!4320 lt!1695327) lambda!171986)))

(declare-fun lt!1695325 () Unit!94398)

(declare-fun Unit!94675 () Unit!94398)

(assert (=> b!4517719 (= lt!1695325 Unit!94675)))

(assert (=> b!4517719 (forall!10253 (t!357720 (_2!28824 (h!56484 (t!357721 (toList!4319 lm!1477))))) lambda!171986)))

(declare-fun lt!1695311 () Unit!94398)

(declare-fun Unit!94676 () Unit!94398)

(assert (=> b!4517719 (= lt!1695311 Unit!94676)))

(declare-fun lt!1695319 () Unit!94398)

(declare-fun Unit!94677 () Unit!94398)

(assert (=> b!4517719 (= lt!1695319 Unit!94677)))

(declare-fun lt!1695326 () Unit!94398)

(assert (=> b!4517719 (= lt!1695326 (forallContained!2505 (toList!4320 lt!1695327) lambda!171986 (h!56483 (_2!28824 (h!56484 (t!357721 (toList!4319 lm!1477)))))))))

(assert (=> b!4517719 (contains!13353 lt!1695327 (_1!28823 (h!56483 (_2!28824 (h!56484 (t!357721 (toList!4319 lm!1477)))))))))

(declare-fun lt!1695323 () Unit!94398)

(declare-fun Unit!94678 () Unit!94398)

(assert (=> b!4517719 (= lt!1695323 Unit!94678)))

(assert (=> b!4517719 (contains!13353 lt!1695320 (_1!28823 (h!56483 (_2!28824 (h!56484 (t!357721 (toList!4319 lm!1477)))))))))

(declare-fun lt!1695315 () Unit!94398)

(declare-fun Unit!94679 () Unit!94398)

(assert (=> b!4517719 (= lt!1695315 Unit!94679)))

(assert (=> b!4517719 (forall!10253 (_2!28824 (h!56484 (t!357721 (toList!4319 lm!1477)))) lambda!171986)))

(declare-fun lt!1695317 () Unit!94398)

(declare-fun Unit!94680 () Unit!94398)

(assert (=> b!4517719 (= lt!1695317 Unit!94680)))

(assert (=> b!4517719 (forall!10253 (toList!4320 lt!1695327) lambda!171986)))

(declare-fun lt!1695318 () Unit!94398)

(declare-fun Unit!94681 () Unit!94398)

(assert (=> b!4517719 (= lt!1695318 Unit!94681)))

(declare-fun lt!1695321 () Unit!94398)

(declare-fun Unit!94682 () Unit!94398)

(assert (=> b!4517719 (= lt!1695321 Unit!94682)))

(declare-fun lt!1695313 () Unit!94398)

(assert (=> b!4517719 (= lt!1695313 (addForallContainsKeyThenBeforeAdding!334 (extractMap!1212 (t!357721 (t!357721 (toList!4319 lm!1477)))) lt!1695320 (_1!28823 (h!56483 (_2!28824 (h!56484 (t!357721 (toList!4319 lm!1477)))))) (_2!28823 (h!56483 (_2!28824 (h!56484 (t!357721 (toList!4319 lm!1477))))))))))

(assert (=> b!4517719 (forall!10253 (toList!4320 (extractMap!1212 (t!357721 (t!357721 (toList!4319 lm!1477))))) lambda!171986)))

(declare-fun lt!1695308 () Unit!94398)

(assert (=> b!4517719 (= lt!1695308 lt!1695313)))

(assert (=> b!4517719 call!314710))

(declare-fun lt!1695328 () Unit!94398)

(declare-fun Unit!94683 () Unit!94398)

(assert (=> b!4517719 (= lt!1695328 Unit!94683)))

(declare-fun res!1879940 () Bool)

(assert (=> b!4517719 (= res!1879940 (forall!10253 (_2!28824 (h!56484 (t!357721 (toList!4319 lm!1477)))) lambda!171986))))

(assert (=> b!4517719 (=> (not res!1879940) (not e!2814593))))

(assert (=> b!4517719 e!2814593))

(declare-fun lt!1695316 () Unit!94398)

(declare-fun Unit!94684 () Unit!94398)

(assert (=> b!4517719 (= lt!1695316 Unit!94684)))

(declare-fun b!4517720 () Bool)

(assert (=> b!4517720 (= e!2814592 (invariantList!1013 (toList!4320 lt!1695310)))))

(assert (= (and d!1391086 c!770874) b!4517718))

(assert (= (and d!1391086 (not c!770874)) b!4517719))

(assert (= (and b!4517719 res!1879940) b!4517716))

(assert (= (or b!4517718 b!4517719) bm!314706))

(assert (= (or b!4517718 b!4517719) bm!314705))

(assert (= (or b!4517718 b!4517719) bm!314707))

(assert (= (and d!1391086 res!1879941) b!4517717))

(assert (= (and b!4517717 res!1879942) b!4517720))

(declare-fun m!5263529 () Bool)

(assert (=> b!4517720 m!5263529))

(declare-fun m!5263531 () Bool)

(assert (=> b!4517719 m!5263531))

(declare-fun m!5263533 () Bool)

(assert (=> b!4517719 m!5263533))

(declare-fun m!5263535 () Bool)

(assert (=> b!4517719 m!5263535))

(declare-fun m!5263537 () Bool)

(assert (=> b!4517719 m!5263537))

(assert (=> b!4517719 m!5260895))

(declare-fun m!5263539 () Bool)

(assert (=> b!4517719 m!5263539))

(assert (=> b!4517719 m!5263531))

(declare-fun m!5263541 () Bool)

(assert (=> b!4517719 m!5263541))

(assert (=> b!4517719 m!5263535))

(declare-fun m!5263543 () Bool)

(assert (=> b!4517719 m!5263543))

(assert (=> b!4517719 m!5260895))

(declare-fun m!5263545 () Bool)

(assert (=> b!4517719 m!5263545))

(declare-fun m!5263547 () Bool)

(assert (=> b!4517719 m!5263547))

(assert (=> b!4517719 m!5263545))

(declare-fun m!5263549 () Bool)

(assert (=> b!4517719 m!5263549))

(declare-fun m!5263551 () Bool)

(assert (=> d!1391086 m!5263551))

(declare-fun m!5263553 () Bool)

(assert (=> d!1391086 m!5263553))

(declare-fun m!5263555 () Bool)

(assert (=> bm!314705 m!5263555))

(assert (=> bm!314707 m!5260895))

(declare-fun m!5263557 () Bool)

(assert (=> bm!314707 m!5263557))

(declare-fun m!5263559 () Bool)

(assert (=> b!4517717 m!5263559))

(assert (=> b!4517716 m!5263537))

(declare-fun m!5263561 () Bool)

(assert (=> bm!314706 m!5263561))

(assert (=> b!4516393 d!1391086))

(declare-fun bs!853166 () Bool)

(declare-fun d!1391092 () Bool)

(assert (= bs!853166 (and d!1391092 d!1390298)))

(declare-fun lambda!171990 () Int)

(assert (=> bs!853166 (= lambda!171990 lambda!171755)))

(declare-fun bs!853167 () Bool)

(assert (= bs!853167 (and d!1391092 d!1390898)))

(assert (=> bs!853167 (= lambda!171990 lambda!171945)))

(declare-fun bs!853168 () Bool)

(assert (= bs!853168 (and d!1391092 d!1390462)))

(assert (=> bs!853168 (= lambda!171990 lambda!171843)))

(declare-fun bs!853169 () Bool)

(assert (= bs!853169 (and d!1391092 d!1390438)))

(assert (=> bs!853169 (= lambda!171990 lambda!171838)))

(declare-fun bs!853170 () Bool)

(assert (= bs!853170 (and d!1391092 d!1390452)))

(assert (=> bs!853170 (= lambda!171990 lambda!171839)))

(declare-fun bs!853171 () Bool)

(assert (= bs!853171 (and d!1391092 start!446940)))

(assert (=> bs!853171 (= lambda!171990 lambda!171717)))

(declare-fun bs!853172 () Bool)

(assert (= bs!853172 (and d!1391092 d!1390334)))

(assert (=> bs!853172 (= lambda!171990 lambda!171775)))

(declare-fun bs!853173 () Bool)

(assert (= bs!853173 (and d!1391092 d!1390300)))

(assert (=> bs!853173 (= lambda!171990 lambda!171762)))

(declare-fun bs!853174 () Bool)

(assert (= bs!853174 (and d!1391092 d!1390460)))

(assert (=> bs!853174 (= lambda!171990 lambda!171840)))

(declare-fun bs!853175 () Bool)

(assert (= bs!853175 (and d!1391092 d!1390944)))

(assert (=> bs!853175 (= lambda!171990 lambda!171960)))

(declare-fun bs!853176 () Bool)

(assert (= bs!853176 (and d!1391092 d!1390566)))

(assert (=> bs!853176 (= lambda!171990 lambda!171867)))

(declare-fun bs!853177 () Bool)

(assert (= bs!853177 (and d!1391092 d!1390324)))

(assert (=> bs!853177 (not (= lambda!171990 lambda!171769))))

(declare-fun bs!853178 () Bool)

(assert (= bs!853178 (and d!1391092 d!1390530)))

(assert (=> bs!853178 (= lambda!171990 lambda!171858)))

(declare-fun bs!853179 () Bool)

(assert (= bs!853179 (and d!1391092 d!1390294)))

(assert (=> bs!853179 (= lambda!171990 lambda!171751)))

(declare-fun bs!853180 () Bool)

(assert (= bs!853180 (and d!1391092 d!1390314)))

(assert (=> bs!853180 (= lambda!171990 lambda!171763)))

(declare-fun bs!853181 () Bool)

(assert (= bs!853181 (and d!1391092 d!1390424)))

(assert (=> bs!853181 (= lambda!171990 lambda!171832)))

(declare-fun bs!853182 () Bool)

(assert (= bs!853182 (and d!1391092 d!1390270)))

(assert (=> bs!853182 (= lambda!171990 lambda!171720)))

(declare-fun lt!1695350 () ListMap!3581)

(assert (=> d!1391092 (invariantList!1013 (toList!4320 lt!1695350))))

(declare-fun e!2814597 () ListMap!3581)

(assert (=> d!1391092 (= lt!1695350 e!2814597)))

(declare-fun c!770876 () Bool)

(assert (=> d!1391092 (= c!770876 ((_ is Cons!50635) (t!357721 (t!357721 (toList!4319 lm!1477)))))))

(assert (=> d!1391092 (forall!10251 (t!357721 (t!357721 (toList!4319 lm!1477))) lambda!171990)))

(assert (=> d!1391092 (= (extractMap!1212 (t!357721 (t!357721 (toList!4319 lm!1477)))) lt!1695350)))

(declare-fun b!4517726 () Bool)

(assert (=> b!4517726 (= e!2814597 (addToMapMapFromBucket!683 (_2!28824 (h!56484 (t!357721 (t!357721 (toList!4319 lm!1477))))) (extractMap!1212 (t!357721 (t!357721 (t!357721 (toList!4319 lm!1477)))))))))

(declare-fun b!4517727 () Bool)

(assert (=> b!4517727 (= e!2814597 (ListMap!3582 Nil!50634))))

(assert (= (and d!1391092 c!770876) b!4517726))

(assert (= (and d!1391092 (not c!770876)) b!4517727))

(declare-fun m!5263597 () Bool)

(assert (=> d!1391092 m!5263597))

(declare-fun m!5263599 () Bool)

(assert (=> d!1391092 m!5263599))

(declare-fun m!5263601 () Bool)

(assert (=> b!4517726 m!5263601))

(assert (=> b!4517726 m!5263601))

(declare-fun m!5263603 () Bool)

(assert (=> b!4517726 m!5263603))

(assert (=> b!4516393 d!1391092))

(declare-fun d!1391096 () Bool)

(declare-fun lt!1695352 () Bool)

(assert (=> d!1391096 (= lt!1695352 (select (content!8345 (t!357721 (t!357721 (toList!4319 lm!1477)))) lt!1694152))))

(declare-fun e!2814600 () Bool)

(assert (=> d!1391096 (= lt!1695352 e!2814600)))

(declare-fun res!1879947 () Bool)

(assert (=> d!1391096 (=> (not res!1879947) (not e!2814600))))

(assert (=> d!1391096 (= res!1879947 ((_ is Cons!50635) (t!357721 (t!357721 (toList!4319 lm!1477)))))))

(assert (=> d!1391096 (= (contains!13351 (t!357721 (t!357721 (toList!4319 lm!1477))) lt!1694152) lt!1695352)))

(declare-fun b!4517730 () Bool)

(declare-fun e!2814599 () Bool)

(assert (=> b!4517730 (= e!2814600 e!2814599)))

(declare-fun res!1879946 () Bool)

(assert (=> b!4517730 (=> res!1879946 e!2814599)))

(assert (=> b!4517730 (= res!1879946 (= (h!56484 (t!357721 (t!357721 (toList!4319 lm!1477)))) lt!1694152))))

(declare-fun b!4517731 () Bool)

(assert (=> b!4517731 (= e!2814599 (contains!13351 (t!357721 (t!357721 (t!357721 (toList!4319 lm!1477)))) lt!1694152))))

(assert (= (and d!1391096 res!1879947) b!4517730))

(assert (= (and b!4517730 (not res!1879946)) b!4517731))

(assert (=> d!1391096 m!5262425))

(declare-fun m!5263605 () Bool)

(assert (=> d!1391096 m!5263605))

(declare-fun m!5263607 () Bool)

(assert (=> b!4517731 m!5263607))

(assert (=> b!4516666 d!1391096))

(declare-fun d!1391098 () Bool)

(declare-fun e!2814601 () Bool)

(assert (=> d!1391098 e!2814601))

(declare-fun res!1879948 () Bool)

(assert (=> d!1391098 (=> res!1879948 e!2814601)))

(declare-fun lt!1695355 () Bool)

(assert (=> d!1391098 (= res!1879948 (not lt!1695355))))

(declare-fun lt!1695353 () Bool)

(assert (=> d!1391098 (= lt!1695355 lt!1695353)))

(declare-fun lt!1695356 () Unit!94398)

(declare-fun e!2814602 () Unit!94398)

(assert (=> d!1391098 (= lt!1695356 e!2814602)))

(declare-fun c!770878 () Bool)

(assert (=> d!1391098 (= c!770878 lt!1695353)))

(assert (=> d!1391098 (= lt!1695353 (containsKey!1770 (toList!4319 lt!1694545) (_1!28824 lt!1694150)))))

(assert (=> d!1391098 (= (contains!13352 lt!1694545 (_1!28824 lt!1694150)) lt!1695355)))

(declare-fun b!4517732 () Bool)

(declare-fun lt!1695354 () Unit!94398)

(assert (=> b!4517732 (= e!2814602 lt!1695354)))

(assert (=> b!4517732 (= lt!1695354 (lemmaContainsKeyImpliesGetValueByKeyDefined!987 (toList!4319 lt!1694545) (_1!28824 lt!1694150)))))

(assert (=> b!4517732 (isDefined!8390 (getValueByKey!1083 (toList!4319 lt!1694545) (_1!28824 lt!1694150)))))

(declare-fun b!4517733 () Bool)

(declare-fun Unit!94689 () Unit!94398)

(assert (=> b!4517733 (= e!2814602 Unit!94689)))

(declare-fun b!4517734 () Bool)

(assert (=> b!4517734 (= e!2814601 (isDefined!8390 (getValueByKey!1083 (toList!4319 lt!1694545) (_1!28824 lt!1694150))))))

(assert (= (and d!1391098 c!770878) b!4517732))

(assert (= (and d!1391098 (not c!770878)) b!4517733))

(assert (= (and d!1391098 (not res!1879948)) b!4517734))

(declare-fun m!5263609 () Bool)

(assert (=> d!1391098 m!5263609))

(declare-fun m!5263611 () Bool)

(assert (=> b!4517732 m!5263611))

(assert (=> b!4517732 m!5261431))

(assert (=> b!4517732 m!5261431))

(declare-fun m!5263613 () Bool)

(assert (=> b!4517732 m!5263613))

(assert (=> b!4517734 m!5261431))

(assert (=> b!4517734 m!5261431))

(assert (=> b!4517734 m!5263613))

(assert (=> d!1390448 d!1391098))

(declare-fun b!4517738 () Bool)

(declare-fun e!2814604 () Option!11103)

(assert (=> b!4517738 (= e!2814604 None!11102)))

(declare-fun b!4517737 () Bool)

(assert (=> b!4517737 (= e!2814604 (getValueByKey!1083 (t!357721 lt!1694542) (_1!28824 lt!1694150)))))

(declare-fun b!4517735 () Bool)

(declare-fun e!2814603 () Option!11103)

(assert (=> b!4517735 (= e!2814603 (Some!11102 (_2!28824 (h!56484 lt!1694542))))))

(declare-fun b!4517736 () Bool)

(assert (=> b!4517736 (= e!2814603 e!2814604)))

(declare-fun c!770880 () Bool)

(assert (=> b!4517736 (= c!770880 (and ((_ is Cons!50635) lt!1694542) (not (= (_1!28824 (h!56484 lt!1694542)) (_1!28824 lt!1694150)))))))

(declare-fun d!1391100 () Bool)

(declare-fun c!770879 () Bool)

(assert (=> d!1391100 (= c!770879 (and ((_ is Cons!50635) lt!1694542) (= (_1!28824 (h!56484 lt!1694542)) (_1!28824 lt!1694150))))))

(assert (=> d!1391100 (= (getValueByKey!1083 lt!1694542 (_1!28824 lt!1694150)) e!2814603)))

(assert (= (and d!1391100 c!770879) b!4517735))

(assert (= (and d!1391100 (not c!770879)) b!4517736))

(assert (= (and b!4517736 c!770880) b!4517737))

(assert (= (and b!4517736 (not c!770880)) b!4517738))

(declare-fun m!5263623 () Bool)

(assert (=> b!4517737 m!5263623))

(assert (=> d!1390448 d!1391100))

(declare-fun d!1391104 () Bool)

(assert (=> d!1391104 (= (getValueByKey!1083 lt!1694542 (_1!28824 lt!1694150)) (Some!11102 (_2!28824 lt!1694150)))))

(declare-fun lt!1695357 () Unit!94398)

(assert (=> d!1391104 (= lt!1695357 (choose!29468 lt!1694542 (_1!28824 lt!1694150) (_2!28824 lt!1694150)))))

(declare-fun e!2814605 () Bool)

(assert (=> d!1391104 e!2814605))

(declare-fun res!1879949 () Bool)

(assert (=> d!1391104 (=> (not res!1879949) (not e!2814605))))

(assert (=> d!1391104 (= res!1879949 (isStrictlySorted!427 lt!1694542))))

(assert (=> d!1391104 (= (lemmaContainsTupThenGetReturnValue!670 lt!1694542 (_1!28824 lt!1694150) (_2!28824 lt!1694150)) lt!1695357)))

(declare-fun b!4517739 () Bool)

(declare-fun res!1879950 () Bool)

(assert (=> b!4517739 (=> (not res!1879950) (not e!2814605))))

(assert (=> b!4517739 (= res!1879950 (containsKey!1770 lt!1694542 (_1!28824 lt!1694150)))))

(declare-fun b!4517740 () Bool)

(assert (=> b!4517740 (= e!2814605 (contains!13351 lt!1694542 (tuple2!51061 (_1!28824 lt!1694150) (_2!28824 lt!1694150))))))

(assert (= (and d!1391104 res!1879949) b!4517739))

(assert (= (and b!4517739 res!1879950) b!4517740))

(assert (=> d!1391104 m!5261425))

(declare-fun m!5263625 () Bool)

(assert (=> d!1391104 m!5263625))

(declare-fun m!5263627 () Bool)

(assert (=> d!1391104 m!5263627))

(declare-fun m!5263629 () Bool)

(assert (=> b!4517739 m!5263629))

(declare-fun m!5263631 () Bool)

(assert (=> b!4517740 m!5263631))

(assert (=> d!1390448 d!1391104))

(declare-fun b!4517741 () Bool)

(declare-fun e!2814608 () List!50759)

(declare-fun call!314716 () List!50759)

(assert (=> b!4517741 (= e!2814608 call!314716)))

(declare-fun b!4517742 () Bool)

(assert (=> b!4517742 (= e!2814608 call!314716)))

(declare-fun b!4517743 () Bool)

(declare-fun e!2814609 () List!50759)

(assert (=> b!4517743 (= e!2814609 (insertStrictlySorted!404 (t!357721 (toList!4319 lt!1694158)) (_1!28824 lt!1694150) (_2!28824 lt!1694150)))))

(declare-fun b!4517744 () Bool)

(declare-fun e!2814607 () Bool)

(declare-fun lt!1695358 () List!50759)

(assert (=> b!4517744 (= e!2814607 (contains!13351 lt!1695358 (tuple2!51061 (_1!28824 lt!1694150) (_2!28824 lt!1694150))))))

(declare-fun b!4517745 () Bool)

(declare-fun e!2814606 () List!50759)

(declare-fun call!314718 () List!50759)

(assert (=> b!4517745 (= e!2814606 call!314718)))

(declare-fun bm!314711 () Bool)

(declare-fun c!770882 () Bool)

(declare-fun call!314717 () List!50759)

(assert (=> bm!314711 (= call!314717 ($colon$colon!930 e!2814609 (ite c!770882 (h!56484 (toList!4319 lt!1694158)) (tuple2!51061 (_1!28824 lt!1694150) (_2!28824 lt!1694150)))))))

(declare-fun c!770881 () Bool)

(assert (=> bm!314711 (= c!770881 c!770882)))

(declare-fun d!1391106 () Bool)

(assert (=> d!1391106 e!2814607))

(declare-fun res!1879951 () Bool)

(assert (=> d!1391106 (=> (not res!1879951) (not e!2814607))))

(assert (=> d!1391106 (= res!1879951 (isStrictlySorted!427 lt!1695358))))

(declare-fun e!2814610 () List!50759)

(assert (=> d!1391106 (= lt!1695358 e!2814610)))

(assert (=> d!1391106 (= c!770882 (and ((_ is Cons!50635) (toList!4319 lt!1694158)) (bvslt (_1!28824 (h!56484 (toList!4319 lt!1694158))) (_1!28824 lt!1694150))))))

(assert (=> d!1391106 (isStrictlySorted!427 (toList!4319 lt!1694158))))

(assert (=> d!1391106 (= (insertStrictlySorted!404 (toList!4319 lt!1694158) (_1!28824 lt!1694150) (_2!28824 lt!1694150)) lt!1695358)))

(declare-fun bm!314712 () Bool)

(assert (=> bm!314712 (= call!314716 call!314718)))

(declare-fun b!4517746 () Bool)

(declare-fun c!770884 () Bool)

(declare-fun c!770883 () Bool)

(assert (=> b!4517746 (= e!2814609 (ite c!770883 (t!357721 (toList!4319 lt!1694158)) (ite c!770884 (Cons!50635 (h!56484 (toList!4319 lt!1694158)) (t!357721 (toList!4319 lt!1694158))) Nil!50635)))))

(declare-fun b!4517747 () Bool)

(assert (=> b!4517747 (= e!2814610 call!314717)))

(declare-fun b!4517748 () Bool)

(declare-fun res!1879952 () Bool)

(assert (=> b!4517748 (=> (not res!1879952) (not e!2814607))))

(assert (=> b!4517748 (= res!1879952 (containsKey!1770 lt!1695358 (_1!28824 lt!1694150)))))

(declare-fun bm!314713 () Bool)

(assert (=> bm!314713 (= call!314718 call!314717)))

(declare-fun b!4517749 () Bool)

(assert (=> b!4517749 (= c!770884 (and ((_ is Cons!50635) (toList!4319 lt!1694158)) (bvsgt (_1!28824 (h!56484 (toList!4319 lt!1694158))) (_1!28824 lt!1694150))))))

(assert (=> b!4517749 (= e!2814606 e!2814608)))

(declare-fun b!4517750 () Bool)

(assert (=> b!4517750 (= e!2814610 e!2814606)))

(assert (=> b!4517750 (= c!770883 (and ((_ is Cons!50635) (toList!4319 lt!1694158)) (= (_1!28824 (h!56484 (toList!4319 lt!1694158))) (_1!28824 lt!1694150))))))

(assert (= (and d!1391106 c!770882) b!4517747))

(assert (= (and d!1391106 (not c!770882)) b!4517750))

(assert (= (and b!4517750 c!770883) b!4517745))

(assert (= (and b!4517750 (not c!770883)) b!4517749))

(assert (= (and b!4517749 c!770884) b!4517742))

(assert (= (and b!4517749 (not c!770884)) b!4517741))

(assert (= (or b!4517742 b!4517741) bm!314712))

(assert (= (or b!4517745 bm!314712) bm!314713))

(assert (= (or b!4517747 bm!314713) bm!314711))

(assert (= (and bm!314711 c!770881) b!4517743))

(assert (= (and bm!314711 (not c!770881)) b!4517746))

(assert (= (and d!1391106 res!1879951) b!4517748))

(assert (= (and b!4517748 res!1879952) b!4517744))

(declare-fun m!5263633 () Bool)

(assert (=> b!4517744 m!5263633))

(declare-fun m!5263635 () Bool)

(assert (=> d!1391106 m!5263635))

(declare-fun m!5263637 () Bool)

(assert (=> d!1391106 m!5263637))

(declare-fun m!5263639 () Bool)

(assert (=> b!4517743 m!5263639))

(declare-fun m!5263641 () Bool)

(assert (=> bm!314711 m!5263641))

(declare-fun m!5263643 () Bool)

(assert (=> b!4517748 m!5263643))

(assert (=> d!1390448 d!1391106))

(assert (=> b!4516381 d!1391050))

(assert (=> b!4516381 d!1391054))

(declare-fun d!1391108 () Bool)

(assert (=> d!1391108 (= (invariantList!1013 (toList!4320 lt!1694522)) (noDuplicatedKeys!258 (toList!4320 lt!1694522)))))

(declare-fun bs!853200 () Bool)

(assert (= bs!853200 d!1391108))

(declare-fun m!5263645 () Bool)

(assert (=> bs!853200 m!5263645))

(assert (=> d!1390424 d!1391108))

(declare-fun d!1391110 () Bool)

(declare-fun res!1879953 () Bool)

(declare-fun e!2814614 () Bool)

(assert (=> d!1391110 (=> res!1879953 e!2814614)))

(assert (=> d!1391110 (= res!1879953 ((_ is Nil!50635) (toList!4319 lt!1694165)))))

(assert (=> d!1391110 (= (forall!10251 (toList!4319 lt!1694165) lambda!171832) e!2814614)))

(declare-fun b!4517757 () Bool)

(declare-fun e!2814615 () Bool)

(assert (=> b!4517757 (= e!2814614 e!2814615)))

(declare-fun res!1879954 () Bool)

(assert (=> b!4517757 (=> (not res!1879954) (not e!2814615))))

(assert (=> b!4517757 (= res!1879954 (dynLambda!21155 lambda!171832 (h!56484 (toList!4319 lt!1694165))))))

(declare-fun b!4517758 () Bool)

(assert (=> b!4517758 (= e!2814615 (forall!10251 (t!357721 (toList!4319 lt!1694165)) lambda!171832))))

(assert (= (and d!1391110 (not res!1879953)) b!4517757))

(assert (= (and b!4517757 res!1879954) b!4517758))

(declare-fun b_lambda!154509 () Bool)

(assert (=> (not b_lambda!154509) (not b!4517757)))

(declare-fun m!5263655 () Bool)

(assert (=> b!4517757 m!5263655))

(declare-fun m!5263657 () Bool)

(assert (=> b!4517758 m!5263657))

(assert (=> d!1390424 d!1391110))

(assert (=> d!1390292 d!1390794))

(declare-fun d!1391116 () Bool)

(assert (=> d!1391116 (dynLambda!21155 lambda!171717 lt!1694152)))

(assert (=> d!1391116 true))

(declare-fun _$7!1828 () Unit!94398)

(assert (=> d!1391116 (= (choose!29452 (toList!4319 lm!1477) lambda!171717 lt!1694152) _$7!1828)))

(declare-fun b_lambda!154511 () Bool)

(assert (=> (not b_lambda!154511) (not d!1391116)))

(declare-fun bs!853210 () Bool)

(assert (= bs!853210 d!1391116))

(assert (=> bs!853210 m!5261059))

(assert (=> d!1390348 d!1391116))

(assert (=> d!1390348 d!1390276))

(assert (=> b!4516385 d!1390516))

(declare-fun d!1391118 () Bool)

(assert (=> d!1391118 (containsKey!1771 (toList!4320 (extractMap!1212 (t!357721 (toList!4319 lm!1477)))) key!3287)))

(declare-fun lt!1695360 () Unit!94398)

(assert (=> d!1391118 (= lt!1695360 (choose!29467 (toList!4320 (extractMap!1212 (t!357721 (toList!4319 lm!1477)))) key!3287))))

(assert (=> d!1391118 (invariantList!1013 (toList!4320 (extractMap!1212 (t!357721 (toList!4319 lm!1477)))))))

(assert (=> d!1391118 (= (lemmaInGetKeysListThenContainsKey!459 (toList!4320 (extractMap!1212 (t!357721 (toList!4319 lm!1477)))) key!3287) lt!1695360)))

(declare-fun bs!853215 () Bool)

(assert (= bs!853215 d!1391118))

(assert (=> bs!853215 m!5260883))

(declare-fun m!5263659 () Bool)

(assert (=> bs!853215 m!5263659))

(assert (=> bs!853215 m!5261899))

(assert (=> b!4516385 d!1391118))

(declare-fun d!1391120 () Bool)

(declare-fun res!1879958 () Bool)

(declare-fun e!2814618 () Bool)

(assert (=> d!1391120 (=> res!1879958 e!2814618)))

(assert (=> d!1391120 (= res!1879958 ((_ is Nil!50635) (toList!4319 lm!1477)))))

(assert (=> d!1391120 (= (forall!10251 (toList!4319 lm!1477) lambda!171769) e!2814618)))

(declare-fun b!4517764 () Bool)

(declare-fun e!2814619 () Bool)

(assert (=> b!4517764 (= e!2814618 e!2814619)))

(declare-fun res!1879959 () Bool)

(assert (=> b!4517764 (=> (not res!1879959) (not e!2814619))))

(assert (=> b!4517764 (= res!1879959 (dynLambda!21155 lambda!171769 (h!56484 (toList!4319 lm!1477))))))

(declare-fun b!4517765 () Bool)

(assert (=> b!4517765 (= e!2814619 (forall!10251 (t!357721 (toList!4319 lm!1477)) lambda!171769))))

(assert (= (and d!1391120 (not res!1879958)) b!4517764))

(assert (= (and b!4517764 res!1879959) b!4517765))

(declare-fun b_lambda!154513 () Bool)

(assert (=> (not b_lambda!154513) (not b!4517764)))

(declare-fun m!5263665 () Bool)

(assert (=> b!4517764 m!5263665))

(declare-fun m!5263671 () Bool)

(assert (=> b!4517765 m!5263671))

(assert (=> d!1390324 d!1391120))

(declare-fun bs!853218 () Bool)

(declare-fun b!4517768 () Bool)

(assert (= bs!853218 (and b!4517768 d!1390866)))

(declare-fun lambda!171994 () Int)

(assert (=> bs!853218 (= (= (extractMap!1212 (t!357721 (toList!4319 lt!1694165))) lt!1694574) (= lambda!171994 lambda!171943))))

(declare-fun bs!853219 () Bool)

(assert (= bs!853219 (and b!4517768 b!4517498)))

(assert (=> bs!853219 (= (= (extractMap!1212 (t!357721 (toList!4319 lt!1694165))) (extractMap!1212 (t!357721 (toList!4319 (+!1530 lt!1694164 lt!1694150))))) (= lambda!171994 lambda!171953))))

(declare-fun bs!853220 () Bool)

(assert (= bs!853220 (and b!4517768 b!4517389)))

(assert (=> bs!853220 (= (= (extractMap!1212 (t!357721 (toList!4319 lt!1694165))) lt!1695017) (= lambda!171994 lambda!171931))))

(declare-fun bs!853221 () Bool)

(assert (= bs!853221 (and b!4517768 d!1390358)))

(assert (=> bs!853221 (= (= (extractMap!1212 (t!357721 (toList!4319 lt!1694165))) lt!1694503) (= lambda!171994 lambda!171831))))

(declare-fun bs!853222 () Bool)

(assert (= bs!853222 (and b!4517768 d!1391086)))

(assert (=> bs!853222 (= (= (extractMap!1212 (t!357721 (toList!4319 lt!1694165))) lt!1695310) (= lambda!171994 lambda!171988))))

(declare-fun bs!853223 () Bool)

(assert (= bs!853223 (and b!4517768 b!4517625)))

(assert (=> bs!853223 (= (= (extractMap!1212 (t!357721 (toList!4319 lt!1694165))) (+!1532 lt!1694172 (h!56483 (_2!28824 lt!1694150)))) (= lambda!171994 lambda!171975))))

(declare-fun bs!853224 () Bool)

(assert (= bs!853224 (and b!4517768 d!1390568)))

(assert (=> bs!853224 (= (= (extractMap!1212 (t!357721 (toList!4319 lt!1694165))) lt!1694656) (= lambda!171994 lambda!171871))))

(declare-fun bs!853225 () Bool)

(assert (= bs!853225 (and b!4517768 b!4516663)))

(assert (=> bs!853225 (= (= (extractMap!1212 (t!357721 (toList!4319 lt!1694165))) lt!1694574) (= lambda!171994 lambda!171846))))

(declare-fun bs!853226 () Bool)

(assert (= bs!853226 (and b!4517768 d!1390564)))

(assert (=> bs!853226 (= (= (extractMap!1212 (t!357721 (toList!4319 lt!1694165))) lt!1694634) (= lambda!171994 lambda!171866))))

(declare-fun bs!853227 () Bool)

(assert (= bs!853227 (and b!4517768 d!1390472)))

(assert (=> bs!853227 (= (= (extractMap!1212 (t!357721 (toList!4319 lt!1694165))) lt!1694564) (= lambda!171994 lambda!171847))))

(declare-fun bs!853228 () Bool)

(assert (= bs!853228 (and b!4517768 b!4516815)))

(assert (=> bs!853228 (= (= (extractMap!1212 (t!357721 (toList!4319 lt!1694165))) lt!1694666) (= lambda!171994 lambda!171870))))

(declare-fun bs!853229 () Bool)

(assert (= bs!853229 (and b!4517768 d!1390694)))

(assert (=> bs!853229 (= (= (extractMap!1212 (t!357721 (toList!4319 lt!1694165))) lt!1694147) (= lambda!171994 lambda!171904))))

(declare-fun bs!853230 () Bool)

(assert (= bs!853230 (and b!4517768 b!4516744)))

(assert (=> bs!853230 (= (= (extractMap!1212 (t!357721 (toList!4319 lt!1694165))) (extractMap!1212 (t!357721 (toList!4319 lt!1694164)))) (= lambda!171994 lambda!171855))))

(declare-fun bs!853231 () Bool)

(assert (= bs!853231 (and b!4517768 d!1390756)))

(assert (=> bs!853231 (= (= (extractMap!1212 (t!357721 (toList!4319 lt!1694165))) lt!1694172) (= lambda!171994 lambda!171920))))

(declare-fun bs!853232 () Bool)

(assert (= bs!853232 (and b!4517768 d!1390852)))

(assert (=> bs!853232 (= (= (extractMap!1212 (t!357721 (toList!4319 lt!1694165))) lt!1695007) (= lambda!171994 lambda!171933))))

(declare-fun bs!853233 () Bool)

(assert (= bs!853233 (and b!4517768 b!4517388)))

(assert (=> bs!853233 (= (= (extractMap!1212 (t!357721 (toList!4319 lt!1694165))) (+!1532 lt!1694147 (h!56483 (_2!28824 lt!1694150)))) (= lambda!171994 lambda!171927))))

(declare-fun bs!853235 () Bool)

(assert (= bs!853235 (and b!4517768 b!4516808)))

(assert (=> bs!853235 (= (= (extractMap!1212 (t!357721 (toList!4319 lt!1694165))) (extractMap!1212 (t!357721 (toList!4319 lt!1694158)))) (= lambda!171994 lambda!171864))))

(declare-fun bs!853237 () Bool)

(assert (= bs!853237 (and b!4517768 d!1391010)))

(assert (=> bs!853237 (= (= (extractMap!1212 (t!357721 (toList!4319 lt!1694165))) lt!1695255) (= lambda!171994 lambda!171980))))

(declare-fun bs!853239 () Bool)

(assert (= bs!853239 (and b!4517768 d!1390924)))

(assert (=> bs!853239 (= (= (extractMap!1212 (t!357721 (toList!4319 lt!1694165))) lt!1695148) (= lambda!171994 lambda!171958))))

(declare-fun bs!853241 () Bool)

(assert (= bs!853241 (and b!4517768 b!4516662)))

(assert (=> bs!853241 (= (= (extractMap!1212 (t!357721 (toList!4319 lt!1694165))) lt!1694147) (= lambda!171994 lambda!171844))))

(declare-fun bs!853243 () Bool)

(assert (= bs!853243 (and b!4517768 b!4516807)))

(assert (=> bs!853243 (= (= (extractMap!1212 (t!357721 (toList!4319 lt!1694165))) (extractMap!1212 (t!357721 (toList!4319 lt!1694158)))) (= lambda!171994 lambda!171863))))

(declare-fun bs!853245 () Bool)

(assert (= bs!853245 (and b!4517768 b!4517499)))

(assert (=> bs!853245 (= (= (extractMap!1212 (t!357721 (toList!4319 lt!1694165))) lt!1695158) (= lambda!171994 lambda!171957))))

(declare-fun bs!853247 () Bool)

(assert (= bs!853247 (and b!4517768 b!4516743)))

(assert (=> bs!853247 (= (= (extractMap!1212 (t!357721 (toList!4319 lt!1694165))) (extractMap!1212 (t!357721 (toList!4319 lt!1694164)))) (= lambda!171994 lambda!171854))))

(assert (=> bs!853235 (= (= (extractMap!1212 (t!357721 (toList!4319 lt!1694165))) lt!1694644) (= lambda!171994 lambda!171865))))

(declare-fun bs!853250 () Bool)

(assert (= bs!853250 (and b!4517768 b!4516604)))

(assert (=> bs!853250 (= (= (extractMap!1212 (t!357721 (toList!4319 lt!1694165))) lt!1694513) (= lambda!171994 lambda!171830))))

(declare-fun bs!853252 () Bool)

(assert (= bs!853252 (and b!4517768 d!1390326)))

(assert (=> bs!853252 (not (= lambda!171994 lambda!171772))))

(assert (=> bs!853223 (= (= (extractMap!1212 (t!357721 (toList!4319 lt!1694165))) lt!1695265) (= lambda!171994 lambda!171976))))

(declare-fun bs!853253 () Bool)

(assert (= bs!853253 (and b!4517768 b!4517624)))

(assert (=> bs!853253 (= (= (extractMap!1212 (t!357721 (toList!4319 lt!1694165))) (+!1532 lt!1694172 (h!56483 (_2!28824 lt!1694150)))) (= lambda!171994 lambda!171974))))

(declare-fun bs!853254 () Bool)

(assert (= bs!853254 (and b!4517768 d!1390526)))

(assert (=> bs!853254 (= (= (extractMap!1212 (t!357721 (toList!4319 lt!1694165))) lt!1694604) (= lambda!171994 lambda!171857))))

(declare-fun bs!853255 () Bool)

(assert (= bs!853255 (and b!4517768 d!1390992)))

(assert (=> bs!853255 (= (= (extractMap!1212 (t!357721 (toList!4319 lt!1694165))) lt!1694513) (= lambda!171994 lambda!171973))))

(assert (=> bs!853250 (= (= (extractMap!1212 (t!357721 (toList!4319 lt!1694165))) lt!1694172) (= lambda!171994 lambda!171829))))

(declare-fun bs!853257 () Bool)

(assert (= bs!853257 (and b!4517768 b!4517719)))

(assert (=> bs!853257 (= (= (extractMap!1212 (t!357721 (toList!4319 lt!1694165))) lt!1695320) (= lambda!171994 lambda!171986))))

(declare-fun bs!853259 () Bool)

(assert (= bs!853259 (and b!4517768 b!4516603)))

(assert (=> bs!853259 (= (= (extractMap!1212 (t!357721 (toList!4319 lt!1694165))) lt!1694172) (= lambda!171994 lambda!171828))))

(assert (=> bs!853220 (= (= (extractMap!1212 (t!357721 (toList!4319 lt!1694165))) (+!1532 lt!1694147 (h!56483 (_2!28824 lt!1694150)))) (= lambda!171994 lambda!171929))))

(assert (=> bs!853228 (= (= (extractMap!1212 (t!357721 (toList!4319 lt!1694165))) (extractMap!1212 (t!357721 (toList!4319 lm!1477)))) (= lambda!171994 lambda!171869))))

(declare-fun bs!853263 () Bool)

(assert (= bs!853263 (and b!4517768 b!4517718)))

(assert (=> bs!853263 (= (= (extractMap!1212 (t!357721 (toList!4319 lt!1694165))) (extractMap!1212 (t!357721 (t!357721 (toList!4319 lm!1477))))) (= lambda!171994 lambda!171982))))

(assert (=> bs!853230 (= (= (extractMap!1212 (t!357721 (toList!4319 lt!1694165))) lt!1694614) (= lambda!171994 lambda!171856))))

(assert (=> bs!853257 (= (= (extractMap!1212 (t!357721 (toList!4319 lt!1694165))) (extractMap!1212 (t!357721 (t!357721 (toList!4319 lm!1477))))) (= lambda!171994 lambda!171984))))

(assert (=> bs!853245 (= (= (extractMap!1212 (t!357721 (toList!4319 lt!1694165))) (extractMap!1212 (t!357721 (toList!4319 (+!1530 lt!1694164 lt!1694150))))) (= lambda!171994 lambda!171955))))

(declare-fun bs!853268 () Bool)

(assert (= bs!853268 (and b!4517768 b!4516814)))

(assert (=> bs!853268 (= (= (extractMap!1212 (t!357721 (toList!4319 lt!1694165))) (extractMap!1212 (t!357721 (toList!4319 lm!1477)))) (= lambda!171994 lambda!171868))))

(assert (=> bs!853225 (= (= (extractMap!1212 (t!357721 (toList!4319 lt!1694165))) lt!1694147) (= lambda!171994 lambda!171845))))

(assert (=> b!4517768 true))

(declare-fun bs!853275 () Bool)

(declare-fun b!4517769 () Bool)

(assert (= bs!853275 (and b!4517769 d!1390866)))

(declare-fun lambda!171998 () Int)

(assert (=> bs!853275 (= (= (extractMap!1212 (t!357721 (toList!4319 lt!1694165))) lt!1694574) (= lambda!171998 lambda!171943))))

(declare-fun bs!853277 () Bool)

(assert (= bs!853277 (and b!4517769 b!4517498)))

(assert (=> bs!853277 (= (= (extractMap!1212 (t!357721 (toList!4319 lt!1694165))) (extractMap!1212 (t!357721 (toList!4319 (+!1530 lt!1694164 lt!1694150))))) (= lambda!171998 lambda!171953))))

(declare-fun bs!853279 () Bool)

(assert (= bs!853279 (and b!4517769 b!4517389)))

(assert (=> bs!853279 (= (= (extractMap!1212 (t!357721 (toList!4319 lt!1694165))) lt!1695017) (= lambda!171998 lambda!171931))))

(declare-fun bs!853281 () Bool)

(assert (= bs!853281 (and b!4517769 d!1390358)))

(assert (=> bs!853281 (= (= (extractMap!1212 (t!357721 (toList!4319 lt!1694165))) lt!1694503) (= lambda!171998 lambda!171831))))

(declare-fun bs!853283 () Bool)

(assert (= bs!853283 (and b!4517769 d!1391086)))

(assert (=> bs!853283 (= (= (extractMap!1212 (t!357721 (toList!4319 lt!1694165))) lt!1695310) (= lambda!171998 lambda!171988))))

(declare-fun bs!853285 () Bool)

(assert (= bs!853285 (and b!4517769 b!4517625)))

(assert (=> bs!853285 (= (= (extractMap!1212 (t!357721 (toList!4319 lt!1694165))) (+!1532 lt!1694172 (h!56483 (_2!28824 lt!1694150)))) (= lambda!171998 lambda!171975))))

(declare-fun bs!853288 () Bool)

(assert (= bs!853288 (and b!4517769 d!1390568)))

(assert (=> bs!853288 (= (= (extractMap!1212 (t!357721 (toList!4319 lt!1694165))) lt!1694656) (= lambda!171998 lambda!171871))))

(declare-fun bs!853290 () Bool)

(assert (= bs!853290 (and b!4517769 b!4516663)))

(assert (=> bs!853290 (= (= (extractMap!1212 (t!357721 (toList!4319 lt!1694165))) lt!1694574) (= lambda!171998 lambda!171846))))

(declare-fun bs!853291 () Bool)

(assert (= bs!853291 (and b!4517769 d!1390564)))

(assert (=> bs!853291 (= (= (extractMap!1212 (t!357721 (toList!4319 lt!1694165))) lt!1694634) (= lambda!171998 lambda!171866))))

(declare-fun bs!853292 () Bool)

(assert (= bs!853292 (and b!4517769 d!1390472)))

(assert (=> bs!853292 (= (= (extractMap!1212 (t!357721 (toList!4319 lt!1694165))) lt!1694564) (= lambda!171998 lambda!171847))))

(declare-fun bs!853294 () Bool)

(assert (= bs!853294 (and b!4517769 b!4516815)))

(assert (=> bs!853294 (= (= (extractMap!1212 (t!357721 (toList!4319 lt!1694165))) lt!1694666) (= lambda!171998 lambda!171870))))

(declare-fun bs!853296 () Bool)

(assert (= bs!853296 (and b!4517769 d!1390694)))

(assert (=> bs!853296 (= (= (extractMap!1212 (t!357721 (toList!4319 lt!1694165))) lt!1694147) (= lambda!171998 lambda!171904))))

(declare-fun bs!853298 () Bool)

(assert (= bs!853298 (and b!4517769 b!4516744)))

(assert (=> bs!853298 (= (= (extractMap!1212 (t!357721 (toList!4319 lt!1694165))) (extractMap!1212 (t!357721 (toList!4319 lt!1694164)))) (= lambda!171998 lambda!171855))))

(declare-fun bs!853300 () Bool)

(assert (= bs!853300 (and b!4517769 d!1390756)))

(assert (=> bs!853300 (= (= (extractMap!1212 (t!357721 (toList!4319 lt!1694165))) lt!1694172) (= lambda!171998 lambda!171920))))

(declare-fun bs!853302 () Bool)

(assert (= bs!853302 (and b!4517769 d!1390852)))

(assert (=> bs!853302 (= (= (extractMap!1212 (t!357721 (toList!4319 lt!1694165))) lt!1695007) (= lambda!171998 lambda!171933))))

(declare-fun bs!853304 () Bool)

(assert (= bs!853304 (and b!4517769 b!4517388)))

(assert (=> bs!853304 (= (= (extractMap!1212 (t!357721 (toList!4319 lt!1694165))) (+!1532 lt!1694147 (h!56483 (_2!28824 lt!1694150)))) (= lambda!171998 lambda!171927))))

(declare-fun bs!853305 () Bool)

(assert (= bs!853305 (and b!4517769 b!4516808)))

(assert (=> bs!853305 (= (= (extractMap!1212 (t!357721 (toList!4319 lt!1694165))) (extractMap!1212 (t!357721 (toList!4319 lt!1694158)))) (= lambda!171998 lambda!171864))))

(declare-fun bs!853306 () Bool)

(assert (= bs!853306 (and b!4517769 d!1391010)))

(assert (=> bs!853306 (= (= (extractMap!1212 (t!357721 (toList!4319 lt!1694165))) lt!1695255) (= lambda!171998 lambda!171980))))

(declare-fun bs!853307 () Bool)

(assert (= bs!853307 (and b!4517769 d!1390924)))

(assert (=> bs!853307 (= (= (extractMap!1212 (t!357721 (toList!4319 lt!1694165))) lt!1695148) (= lambda!171998 lambda!171958))))

(declare-fun bs!853308 () Bool)

(assert (= bs!853308 (and b!4517769 b!4516662)))

(assert (=> bs!853308 (= (= (extractMap!1212 (t!357721 (toList!4319 lt!1694165))) lt!1694147) (= lambda!171998 lambda!171844))))

(declare-fun bs!853309 () Bool)

(assert (= bs!853309 (and b!4517769 b!4516807)))

(assert (=> bs!853309 (= (= (extractMap!1212 (t!357721 (toList!4319 lt!1694165))) (extractMap!1212 (t!357721 (toList!4319 lt!1694158)))) (= lambda!171998 lambda!171863))))

(declare-fun bs!853310 () Bool)

(assert (= bs!853310 (and b!4517769 b!4517499)))

(assert (=> bs!853310 (= (= (extractMap!1212 (t!357721 (toList!4319 lt!1694165))) lt!1695158) (= lambda!171998 lambda!171957))))

(declare-fun bs!853311 () Bool)

(assert (= bs!853311 (and b!4517769 b!4517768)))

(assert (=> bs!853311 (= lambda!171998 lambda!171994)))

(declare-fun bs!853312 () Bool)

(assert (= bs!853312 (and b!4517769 b!4516743)))

(assert (=> bs!853312 (= (= (extractMap!1212 (t!357721 (toList!4319 lt!1694165))) (extractMap!1212 (t!357721 (toList!4319 lt!1694164)))) (= lambda!171998 lambda!171854))))

(assert (=> bs!853305 (= (= (extractMap!1212 (t!357721 (toList!4319 lt!1694165))) lt!1694644) (= lambda!171998 lambda!171865))))

(declare-fun bs!853313 () Bool)

(assert (= bs!853313 (and b!4517769 b!4516604)))

(assert (=> bs!853313 (= (= (extractMap!1212 (t!357721 (toList!4319 lt!1694165))) lt!1694513) (= lambda!171998 lambda!171830))))

(declare-fun bs!853314 () Bool)

(assert (= bs!853314 (and b!4517769 d!1390326)))

(assert (=> bs!853314 (not (= lambda!171998 lambda!171772))))

(assert (=> bs!853285 (= (= (extractMap!1212 (t!357721 (toList!4319 lt!1694165))) lt!1695265) (= lambda!171998 lambda!171976))))

(declare-fun bs!853315 () Bool)

(assert (= bs!853315 (and b!4517769 b!4517624)))

(assert (=> bs!853315 (= (= (extractMap!1212 (t!357721 (toList!4319 lt!1694165))) (+!1532 lt!1694172 (h!56483 (_2!28824 lt!1694150)))) (= lambda!171998 lambda!171974))))

(declare-fun bs!853316 () Bool)

(assert (= bs!853316 (and b!4517769 d!1390526)))

(assert (=> bs!853316 (= (= (extractMap!1212 (t!357721 (toList!4319 lt!1694165))) lt!1694604) (= lambda!171998 lambda!171857))))

(declare-fun bs!853317 () Bool)

(assert (= bs!853317 (and b!4517769 d!1390992)))

(assert (=> bs!853317 (= (= (extractMap!1212 (t!357721 (toList!4319 lt!1694165))) lt!1694513) (= lambda!171998 lambda!171973))))

(assert (=> bs!853313 (= (= (extractMap!1212 (t!357721 (toList!4319 lt!1694165))) lt!1694172) (= lambda!171998 lambda!171829))))

(declare-fun bs!853318 () Bool)

(assert (= bs!853318 (and b!4517769 b!4517719)))

(assert (=> bs!853318 (= (= (extractMap!1212 (t!357721 (toList!4319 lt!1694165))) lt!1695320) (= lambda!171998 lambda!171986))))

(declare-fun bs!853319 () Bool)

(assert (= bs!853319 (and b!4517769 b!4516603)))

(assert (=> bs!853319 (= (= (extractMap!1212 (t!357721 (toList!4319 lt!1694165))) lt!1694172) (= lambda!171998 lambda!171828))))

(assert (=> bs!853279 (= (= (extractMap!1212 (t!357721 (toList!4319 lt!1694165))) (+!1532 lt!1694147 (h!56483 (_2!28824 lt!1694150)))) (= lambda!171998 lambda!171929))))

(assert (=> bs!853294 (= (= (extractMap!1212 (t!357721 (toList!4319 lt!1694165))) (extractMap!1212 (t!357721 (toList!4319 lm!1477)))) (= lambda!171998 lambda!171869))))

(declare-fun bs!853320 () Bool)

(assert (= bs!853320 (and b!4517769 b!4517718)))

(assert (=> bs!853320 (= (= (extractMap!1212 (t!357721 (toList!4319 lt!1694165))) (extractMap!1212 (t!357721 (t!357721 (toList!4319 lm!1477))))) (= lambda!171998 lambda!171982))))

(assert (=> bs!853298 (= (= (extractMap!1212 (t!357721 (toList!4319 lt!1694165))) lt!1694614) (= lambda!171998 lambda!171856))))

(assert (=> bs!853318 (= (= (extractMap!1212 (t!357721 (toList!4319 lt!1694165))) (extractMap!1212 (t!357721 (t!357721 (toList!4319 lm!1477))))) (= lambda!171998 lambda!171984))))

(assert (=> bs!853310 (= (= (extractMap!1212 (t!357721 (toList!4319 lt!1694165))) (extractMap!1212 (t!357721 (toList!4319 (+!1530 lt!1694164 lt!1694150))))) (= lambda!171998 lambda!171955))))

(declare-fun bs!853321 () Bool)

(assert (= bs!853321 (and b!4517769 b!4516814)))

(assert (=> bs!853321 (= (= (extractMap!1212 (t!357721 (toList!4319 lt!1694165))) (extractMap!1212 (t!357721 (toList!4319 lm!1477)))) (= lambda!171998 lambda!171868))))

(assert (=> bs!853290 (= (= (extractMap!1212 (t!357721 (toList!4319 lt!1694165))) lt!1694147) (= lambda!171998 lambda!171845))))

(assert (=> b!4517769 true))

(declare-fun lambda!172000 () Int)

(declare-fun lt!1695373 () ListMap!3581)

(assert (=> bs!853275 (= (= lt!1695373 lt!1694574) (= lambda!172000 lambda!171943))))

(assert (=> bs!853277 (= (= lt!1695373 (extractMap!1212 (t!357721 (toList!4319 (+!1530 lt!1694164 lt!1694150))))) (= lambda!172000 lambda!171953))))

(assert (=> bs!853279 (= (= lt!1695373 lt!1695017) (= lambda!172000 lambda!171931))))

(assert (=> bs!853281 (= (= lt!1695373 lt!1694503) (= lambda!172000 lambda!171831))))

(assert (=> bs!853283 (= (= lt!1695373 lt!1695310) (= lambda!172000 lambda!171988))))

(assert (=> bs!853288 (= (= lt!1695373 lt!1694656) (= lambda!172000 lambda!171871))))

(assert (=> bs!853290 (= (= lt!1695373 lt!1694574) (= lambda!172000 lambda!171846))))

(assert (=> bs!853291 (= (= lt!1695373 lt!1694634) (= lambda!172000 lambda!171866))))

(assert (=> bs!853292 (= (= lt!1695373 lt!1694564) (= lambda!172000 lambda!171847))))

(assert (=> bs!853294 (= (= lt!1695373 lt!1694666) (= lambda!172000 lambda!171870))))

(assert (=> bs!853296 (= (= lt!1695373 lt!1694147) (= lambda!172000 lambda!171904))))

(assert (=> bs!853298 (= (= lt!1695373 (extractMap!1212 (t!357721 (toList!4319 lt!1694164)))) (= lambda!172000 lambda!171855))))

(assert (=> bs!853300 (= (= lt!1695373 lt!1694172) (= lambda!172000 lambda!171920))))

(assert (=> bs!853302 (= (= lt!1695373 lt!1695007) (= lambda!172000 lambda!171933))))

(assert (=> bs!853304 (= (= lt!1695373 (+!1532 lt!1694147 (h!56483 (_2!28824 lt!1694150)))) (= lambda!172000 lambda!171927))))

(assert (=> bs!853305 (= (= lt!1695373 (extractMap!1212 (t!357721 (toList!4319 lt!1694158)))) (= lambda!172000 lambda!171864))))

(assert (=> bs!853306 (= (= lt!1695373 lt!1695255) (= lambda!172000 lambda!171980))))

(assert (=> bs!853307 (= (= lt!1695373 lt!1695148) (= lambda!172000 lambda!171958))))

(assert (=> bs!853308 (= (= lt!1695373 lt!1694147) (= lambda!172000 lambda!171844))))

(assert (=> bs!853309 (= (= lt!1695373 (extractMap!1212 (t!357721 (toList!4319 lt!1694158)))) (= lambda!172000 lambda!171863))))

(assert (=> bs!853310 (= (= lt!1695373 lt!1695158) (= lambda!172000 lambda!171957))))

(assert (=> bs!853311 (= (= lt!1695373 (extractMap!1212 (t!357721 (toList!4319 lt!1694165)))) (= lambda!172000 lambda!171994))))

(assert (=> bs!853312 (= (= lt!1695373 (extractMap!1212 (t!357721 (toList!4319 lt!1694164)))) (= lambda!172000 lambda!171854))))

(assert (=> bs!853305 (= (= lt!1695373 lt!1694644) (= lambda!172000 lambda!171865))))

(assert (=> bs!853313 (= (= lt!1695373 lt!1694513) (= lambda!172000 lambda!171830))))

(assert (=> bs!853285 (= (= lt!1695373 (+!1532 lt!1694172 (h!56483 (_2!28824 lt!1694150)))) (= lambda!172000 lambda!171975))))

(assert (=> b!4517769 (= (= lt!1695373 (extractMap!1212 (t!357721 (toList!4319 lt!1694165)))) (= lambda!172000 lambda!171998))))

(assert (=> bs!853314 (not (= lambda!172000 lambda!171772))))

(assert (=> bs!853285 (= (= lt!1695373 lt!1695265) (= lambda!172000 lambda!171976))))

(assert (=> bs!853315 (= (= lt!1695373 (+!1532 lt!1694172 (h!56483 (_2!28824 lt!1694150)))) (= lambda!172000 lambda!171974))))

(assert (=> bs!853316 (= (= lt!1695373 lt!1694604) (= lambda!172000 lambda!171857))))

(assert (=> bs!853317 (= (= lt!1695373 lt!1694513) (= lambda!172000 lambda!171973))))

(assert (=> bs!853313 (= (= lt!1695373 lt!1694172) (= lambda!172000 lambda!171829))))

(assert (=> bs!853318 (= (= lt!1695373 lt!1695320) (= lambda!172000 lambda!171986))))

(assert (=> bs!853319 (= (= lt!1695373 lt!1694172) (= lambda!172000 lambda!171828))))

(assert (=> bs!853279 (= (= lt!1695373 (+!1532 lt!1694147 (h!56483 (_2!28824 lt!1694150)))) (= lambda!172000 lambda!171929))))

(assert (=> bs!853294 (= (= lt!1695373 (extractMap!1212 (t!357721 (toList!4319 lm!1477)))) (= lambda!172000 lambda!171869))))

(assert (=> bs!853320 (= (= lt!1695373 (extractMap!1212 (t!357721 (t!357721 (toList!4319 lm!1477))))) (= lambda!172000 lambda!171982))))

(assert (=> bs!853298 (= (= lt!1695373 lt!1694614) (= lambda!172000 lambda!171856))))

(assert (=> bs!853318 (= (= lt!1695373 (extractMap!1212 (t!357721 (t!357721 (toList!4319 lm!1477))))) (= lambda!172000 lambda!171984))))

(assert (=> bs!853310 (= (= lt!1695373 (extractMap!1212 (t!357721 (toList!4319 (+!1530 lt!1694164 lt!1694150))))) (= lambda!172000 lambda!171955))))

(assert (=> bs!853321 (= (= lt!1695373 (extractMap!1212 (t!357721 (toList!4319 lm!1477)))) (= lambda!172000 lambda!171868))))

(assert (=> bs!853290 (= (= lt!1695373 lt!1694147) (= lambda!172000 lambda!171845))))

(assert (=> b!4517769 true))

(declare-fun bs!853354 () Bool)

(declare-fun d!1391122 () Bool)

(assert (= bs!853354 (and d!1391122 d!1390866)))

(declare-fun lt!1695363 () ListMap!3581)

(declare-fun lambda!172002 () Int)

(assert (=> bs!853354 (= (= lt!1695363 lt!1694574) (= lambda!172002 lambda!171943))))

(declare-fun bs!853355 () Bool)

(assert (= bs!853355 (and d!1391122 b!4517498)))

(assert (=> bs!853355 (= (= lt!1695363 (extractMap!1212 (t!357721 (toList!4319 (+!1530 lt!1694164 lt!1694150))))) (= lambda!172002 lambda!171953))))

(declare-fun bs!853356 () Bool)

(assert (= bs!853356 (and d!1391122 b!4517389)))

(assert (=> bs!853356 (= (= lt!1695363 lt!1695017) (= lambda!172002 lambda!171931))))

(declare-fun bs!853357 () Bool)

(assert (= bs!853357 (and d!1391122 d!1390358)))

(assert (=> bs!853357 (= (= lt!1695363 lt!1694503) (= lambda!172002 lambda!171831))))

(declare-fun bs!853358 () Bool)

(assert (= bs!853358 (and d!1391122 d!1391086)))

(assert (=> bs!853358 (= (= lt!1695363 lt!1695310) (= lambda!172002 lambda!171988))))

(declare-fun bs!853360 () Bool)

(assert (= bs!853360 (and d!1391122 d!1390568)))

(assert (=> bs!853360 (= (= lt!1695363 lt!1694656) (= lambda!172002 lambda!171871))))

(declare-fun bs!853362 () Bool)

(assert (= bs!853362 (and d!1391122 b!4516663)))

(assert (=> bs!853362 (= (= lt!1695363 lt!1694574) (= lambda!172002 lambda!171846))))

(declare-fun bs!853364 () Bool)

(assert (= bs!853364 (and d!1391122 d!1390564)))

(assert (=> bs!853364 (= (= lt!1695363 lt!1694634) (= lambda!172002 lambda!171866))))

(declare-fun bs!853366 () Bool)

(assert (= bs!853366 (and d!1391122 d!1390472)))

(assert (=> bs!853366 (= (= lt!1695363 lt!1694564) (= lambda!172002 lambda!171847))))

(declare-fun bs!853368 () Bool)

(assert (= bs!853368 (and d!1391122 b!4516815)))

(assert (=> bs!853368 (= (= lt!1695363 lt!1694666) (= lambda!172002 lambda!171870))))

(declare-fun bs!853370 () Bool)

(assert (= bs!853370 (and d!1391122 d!1390694)))

(assert (=> bs!853370 (= (= lt!1695363 lt!1694147) (= lambda!172002 lambda!171904))))

(declare-fun bs!853372 () Bool)

(assert (= bs!853372 (and d!1391122 b!4516744)))

(assert (=> bs!853372 (= (= lt!1695363 (extractMap!1212 (t!357721 (toList!4319 lt!1694164)))) (= lambda!172002 lambda!171855))))

(declare-fun bs!853374 () Bool)

(assert (= bs!853374 (and d!1391122 d!1390756)))

(assert (=> bs!853374 (= (= lt!1695363 lt!1694172) (= lambda!172002 lambda!171920))))

(declare-fun bs!853376 () Bool)

(assert (= bs!853376 (and d!1391122 d!1390852)))

(assert (=> bs!853376 (= (= lt!1695363 lt!1695007) (= lambda!172002 lambda!171933))))

(declare-fun bs!853378 () Bool)

(assert (= bs!853378 (and d!1391122 b!4517388)))

(assert (=> bs!853378 (= (= lt!1695363 (+!1532 lt!1694147 (h!56483 (_2!28824 lt!1694150)))) (= lambda!172002 lambda!171927))))

(declare-fun bs!853380 () Bool)

(assert (= bs!853380 (and d!1391122 b!4516808)))

(assert (=> bs!853380 (= (= lt!1695363 (extractMap!1212 (t!357721 (toList!4319 lt!1694158)))) (= lambda!172002 lambda!171864))))

(declare-fun bs!853382 () Bool)

(assert (= bs!853382 (and d!1391122 d!1391010)))

(assert (=> bs!853382 (= (= lt!1695363 lt!1695255) (= lambda!172002 lambda!171980))))

(declare-fun bs!853384 () Bool)

(assert (= bs!853384 (and d!1391122 d!1390924)))

(assert (=> bs!853384 (= (= lt!1695363 lt!1695148) (= lambda!172002 lambda!171958))))

(declare-fun bs!853386 () Bool)

(assert (= bs!853386 (and d!1391122 b!4516662)))

(assert (=> bs!853386 (= (= lt!1695363 lt!1694147) (= lambda!172002 lambda!171844))))

(declare-fun bs!853388 () Bool)

(assert (= bs!853388 (and d!1391122 b!4517769)))

(assert (=> bs!853388 (= (= lt!1695363 lt!1695373) (= lambda!172002 lambda!172000))))

(declare-fun bs!853390 () Bool)

(assert (= bs!853390 (and d!1391122 b!4516807)))

(assert (=> bs!853390 (= (= lt!1695363 (extractMap!1212 (t!357721 (toList!4319 lt!1694158)))) (= lambda!172002 lambda!171863))))

(declare-fun bs!853392 () Bool)

(assert (= bs!853392 (and d!1391122 b!4517499)))

(assert (=> bs!853392 (= (= lt!1695363 lt!1695158) (= lambda!172002 lambda!171957))))

(declare-fun bs!853394 () Bool)

(assert (= bs!853394 (and d!1391122 b!4517768)))

(assert (=> bs!853394 (= (= lt!1695363 (extractMap!1212 (t!357721 (toList!4319 lt!1694165)))) (= lambda!172002 lambda!171994))))

(declare-fun bs!853396 () Bool)

(assert (= bs!853396 (and d!1391122 b!4516743)))

(assert (=> bs!853396 (= (= lt!1695363 (extractMap!1212 (t!357721 (toList!4319 lt!1694164)))) (= lambda!172002 lambda!171854))))

(assert (=> bs!853380 (= (= lt!1695363 lt!1694644) (= lambda!172002 lambda!171865))))

(declare-fun bs!853398 () Bool)

(assert (= bs!853398 (and d!1391122 b!4516604)))

(assert (=> bs!853398 (= (= lt!1695363 lt!1694513) (= lambda!172002 lambda!171830))))

(declare-fun bs!853400 () Bool)

(assert (= bs!853400 (and d!1391122 b!4517625)))

(assert (=> bs!853400 (= (= lt!1695363 (+!1532 lt!1694172 (h!56483 (_2!28824 lt!1694150)))) (= lambda!172002 lambda!171975))))

(assert (=> bs!853388 (= (= lt!1695363 (extractMap!1212 (t!357721 (toList!4319 lt!1694165)))) (= lambda!172002 lambda!171998))))

(declare-fun bs!853403 () Bool)

(assert (= bs!853403 (and d!1391122 d!1390326)))

(assert (=> bs!853403 (not (= lambda!172002 lambda!171772))))

(assert (=> bs!853400 (= (= lt!1695363 lt!1695265) (= lambda!172002 lambda!171976))))

(declare-fun bs!853405 () Bool)

(assert (= bs!853405 (and d!1391122 b!4517624)))

(assert (=> bs!853405 (= (= lt!1695363 (+!1532 lt!1694172 (h!56483 (_2!28824 lt!1694150)))) (= lambda!172002 lambda!171974))))

(declare-fun bs!853406 () Bool)

(assert (= bs!853406 (and d!1391122 d!1390526)))

(assert (=> bs!853406 (= (= lt!1695363 lt!1694604) (= lambda!172002 lambda!171857))))

(declare-fun bs!853408 () Bool)

(assert (= bs!853408 (and d!1391122 d!1390992)))

(assert (=> bs!853408 (= (= lt!1695363 lt!1694513) (= lambda!172002 lambda!171973))))

(assert (=> bs!853398 (= (= lt!1695363 lt!1694172) (= lambda!172002 lambda!171829))))

(declare-fun bs!853411 () Bool)

(assert (= bs!853411 (and d!1391122 b!4517719)))

(assert (=> bs!853411 (= (= lt!1695363 lt!1695320) (= lambda!172002 lambda!171986))))

(declare-fun bs!853413 () Bool)

(assert (= bs!853413 (and d!1391122 b!4516603)))

(assert (=> bs!853413 (= (= lt!1695363 lt!1694172) (= lambda!172002 lambda!171828))))

(assert (=> bs!853356 (= (= lt!1695363 (+!1532 lt!1694147 (h!56483 (_2!28824 lt!1694150)))) (= lambda!172002 lambda!171929))))

(assert (=> bs!853368 (= (= lt!1695363 (extractMap!1212 (t!357721 (toList!4319 lm!1477)))) (= lambda!172002 lambda!171869))))

(declare-fun bs!853416 () Bool)

(assert (= bs!853416 (and d!1391122 b!4517718)))

(assert (=> bs!853416 (= (= lt!1695363 (extractMap!1212 (t!357721 (t!357721 (toList!4319 lm!1477))))) (= lambda!172002 lambda!171982))))

(assert (=> bs!853372 (= (= lt!1695363 lt!1694614) (= lambda!172002 lambda!171856))))

(assert (=> bs!853411 (= (= lt!1695363 (extractMap!1212 (t!357721 (t!357721 (toList!4319 lm!1477))))) (= lambda!172002 lambda!171984))))

(assert (=> bs!853392 (= (= lt!1695363 (extractMap!1212 (t!357721 (toList!4319 (+!1530 lt!1694164 lt!1694150))))) (= lambda!172002 lambda!171955))))

(declare-fun bs!853418 () Bool)

(assert (= bs!853418 (and d!1391122 b!4516814)))

(assert (=> bs!853418 (= (= lt!1695363 (extractMap!1212 (t!357721 (toList!4319 lm!1477)))) (= lambda!172002 lambda!171868))))

(assert (=> bs!853362 (= (= lt!1695363 lt!1694147) (= lambda!172002 lambda!171845))))

(assert (=> d!1391122 true))

(declare-fun c!770889 () Bool)

(declare-fun call!314720 () Bool)

(declare-fun bm!314714 () Bool)

(assert (=> bm!314714 (= call!314720 (forall!10253 (toList!4320 (extractMap!1212 (t!357721 (toList!4319 lt!1694165)))) (ite c!770889 lambda!171994 lambda!171998)))))

(declare-fun bm!314715 () Bool)

(declare-fun call!314719 () Bool)

(assert (=> bm!314715 (= call!314719 (forall!10253 (toList!4320 (extractMap!1212 (t!357721 (toList!4319 lt!1694165)))) (ite c!770889 lambda!171994 lambda!172000)))))

(declare-fun b!4517766 () Bool)

(declare-fun e!2814622 () Bool)

(assert (=> b!4517766 (= e!2814622 (forall!10253 (toList!4320 (extractMap!1212 (t!357721 (toList!4319 lt!1694165)))) lambda!172000))))

(declare-fun bm!314716 () Bool)

(declare-fun call!314721 () Unit!94398)

(assert (=> bm!314716 (= call!314721 (lemmaContainsAllItsOwnKeys!334 (extractMap!1212 (t!357721 (toList!4319 lt!1694165)))))))

(declare-fun b!4517767 () Bool)

(declare-fun res!1879962 () Bool)

(declare-fun e!2814621 () Bool)

(assert (=> b!4517767 (=> (not res!1879962) (not e!2814621))))

(assert (=> b!4517767 (= res!1879962 (forall!10253 (toList!4320 (extractMap!1212 (t!357721 (toList!4319 lt!1694165)))) lambda!172002))))

(assert (=> d!1391122 e!2814621))

(declare-fun res!1879961 () Bool)

(assert (=> d!1391122 (=> (not res!1879961) (not e!2814621))))

(assert (=> d!1391122 (= res!1879961 (forall!10253 (_2!28824 (h!56484 (toList!4319 lt!1694165))) lambda!172002))))

(declare-fun e!2814620 () ListMap!3581)

(assert (=> d!1391122 (= lt!1695363 e!2814620)))

(assert (=> d!1391122 (= c!770889 ((_ is Nil!50634) (_2!28824 (h!56484 (toList!4319 lt!1694165)))))))

(assert (=> d!1391122 (noDuplicateKeys!1156 (_2!28824 (h!56484 (toList!4319 lt!1694165))))))

(assert (=> d!1391122 (= (addToMapMapFromBucket!683 (_2!28824 (h!56484 (toList!4319 lt!1694165))) (extractMap!1212 (t!357721 (toList!4319 lt!1694165)))) lt!1695363)))

(assert (=> b!4517768 (= e!2814620 (extractMap!1212 (t!357721 (toList!4319 lt!1694165))))))

(declare-fun lt!1695377 () Unit!94398)

(assert (=> b!4517768 (= lt!1695377 call!314721)))

(assert (=> b!4517768 call!314720))

(declare-fun lt!1695367 () Unit!94398)

(assert (=> b!4517768 (= lt!1695367 lt!1695377)))

(assert (=> b!4517768 call!314719))

(declare-fun lt!1695365 () Unit!94398)

(declare-fun Unit!94701 () Unit!94398)

(assert (=> b!4517768 (= lt!1695365 Unit!94701)))

(assert (=> b!4517769 (= e!2814620 lt!1695373)))

(declare-fun lt!1695380 () ListMap!3581)

(assert (=> b!4517769 (= lt!1695380 (+!1532 (extractMap!1212 (t!357721 (toList!4319 lt!1694165))) (h!56483 (_2!28824 (h!56484 (toList!4319 lt!1694165))))))))

(assert (=> b!4517769 (= lt!1695373 (addToMapMapFromBucket!683 (t!357720 (_2!28824 (h!56484 (toList!4319 lt!1694165)))) (+!1532 (extractMap!1212 (t!357721 (toList!4319 lt!1694165))) (h!56483 (_2!28824 (h!56484 (toList!4319 lt!1694165)))))))))

(declare-fun lt!1695362 () Unit!94398)

(assert (=> b!4517769 (= lt!1695362 call!314721)))

(assert (=> b!4517769 call!314720))

(declare-fun lt!1695375 () Unit!94398)

(assert (=> b!4517769 (= lt!1695375 lt!1695362)))

(assert (=> b!4517769 (forall!10253 (toList!4320 lt!1695380) lambda!172000)))

(declare-fun lt!1695378 () Unit!94398)

(declare-fun Unit!94702 () Unit!94398)

(assert (=> b!4517769 (= lt!1695378 Unit!94702)))

(assert (=> b!4517769 (forall!10253 (t!357720 (_2!28824 (h!56484 (toList!4319 lt!1694165)))) lambda!172000)))

(declare-fun lt!1695364 () Unit!94398)

(declare-fun Unit!94703 () Unit!94398)

(assert (=> b!4517769 (= lt!1695364 Unit!94703)))

(declare-fun lt!1695372 () Unit!94398)

(declare-fun Unit!94704 () Unit!94398)

(assert (=> b!4517769 (= lt!1695372 Unit!94704)))

(declare-fun lt!1695379 () Unit!94398)

(assert (=> b!4517769 (= lt!1695379 (forallContained!2505 (toList!4320 lt!1695380) lambda!172000 (h!56483 (_2!28824 (h!56484 (toList!4319 lt!1694165))))))))

(assert (=> b!4517769 (contains!13353 lt!1695380 (_1!28823 (h!56483 (_2!28824 (h!56484 (toList!4319 lt!1694165))))))))

(declare-fun lt!1695376 () Unit!94398)

(declare-fun Unit!94705 () Unit!94398)

(assert (=> b!4517769 (= lt!1695376 Unit!94705)))

(assert (=> b!4517769 (contains!13353 lt!1695373 (_1!28823 (h!56483 (_2!28824 (h!56484 (toList!4319 lt!1694165))))))))

(declare-fun lt!1695368 () Unit!94398)

(declare-fun Unit!94706 () Unit!94398)

(assert (=> b!4517769 (= lt!1695368 Unit!94706)))

(assert (=> b!4517769 (forall!10253 (_2!28824 (h!56484 (toList!4319 lt!1694165))) lambda!172000)))

(declare-fun lt!1695370 () Unit!94398)

(declare-fun Unit!94707 () Unit!94398)

(assert (=> b!4517769 (= lt!1695370 Unit!94707)))

(assert (=> b!4517769 (forall!10253 (toList!4320 lt!1695380) lambda!172000)))

(declare-fun lt!1695371 () Unit!94398)

(declare-fun Unit!94708 () Unit!94398)

(assert (=> b!4517769 (= lt!1695371 Unit!94708)))

(declare-fun lt!1695374 () Unit!94398)

(declare-fun Unit!94709 () Unit!94398)

(assert (=> b!4517769 (= lt!1695374 Unit!94709)))

(declare-fun lt!1695366 () Unit!94398)

(assert (=> b!4517769 (= lt!1695366 (addForallContainsKeyThenBeforeAdding!334 (extractMap!1212 (t!357721 (toList!4319 lt!1694165))) lt!1695373 (_1!28823 (h!56483 (_2!28824 (h!56484 (toList!4319 lt!1694165))))) (_2!28823 (h!56483 (_2!28824 (h!56484 (toList!4319 lt!1694165)))))))))

(assert (=> b!4517769 (forall!10253 (toList!4320 (extractMap!1212 (t!357721 (toList!4319 lt!1694165)))) lambda!172000)))

(declare-fun lt!1695361 () Unit!94398)

(assert (=> b!4517769 (= lt!1695361 lt!1695366)))

(assert (=> b!4517769 call!314719))

(declare-fun lt!1695381 () Unit!94398)

(declare-fun Unit!94710 () Unit!94398)

(assert (=> b!4517769 (= lt!1695381 Unit!94710)))

(declare-fun res!1879960 () Bool)

(assert (=> b!4517769 (= res!1879960 (forall!10253 (_2!28824 (h!56484 (toList!4319 lt!1694165))) lambda!172000))))

(assert (=> b!4517769 (=> (not res!1879960) (not e!2814622))))

(assert (=> b!4517769 e!2814622))

(declare-fun lt!1695369 () Unit!94398)

(declare-fun Unit!94711 () Unit!94398)

(assert (=> b!4517769 (= lt!1695369 Unit!94711)))

(declare-fun b!4517770 () Bool)

(assert (=> b!4517770 (= e!2814621 (invariantList!1013 (toList!4320 lt!1695363)))))

(assert (= (and d!1391122 c!770889) b!4517768))

(assert (= (and d!1391122 (not c!770889)) b!4517769))

(assert (= (and b!4517769 res!1879960) b!4517766))

(assert (= (or b!4517768 b!4517769) bm!314715))

(assert (= (or b!4517768 b!4517769) bm!314714))

(assert (= (or b!4517768 b!4517769) bm!314716))

(assert (= (and d!1391122 res!1879961) b!4517767))

(assert (= (and b!4517767 res!1879962) b!4517770))

(declare-fun m!5263715 () Bool)

(assert (=> b!4517770 m!5263715))

(declare-fun m!5263717 () Bool)

(assert (=> b!4517769 m!5263717))

(declare-fun m!5263719 () Bool)

(assert (=> b!4517769 m!5263719))

(declare-fun m!5263721 () Bool)

(assert (=> b!4517769 m!5263721))

(declare-fun m!5263723 () Bool)

(assert (=> b!4517769 m!5263723))

(assert (=> b!4517769 m!5261369))

(declare-fun m!5263725 () Bool)

(assert (=> b!4517769 m!5263725))

(assert (=> b!4517769 m!5263717))

(declare-fun m!5263727 () Bool)

(assert (=> b!4517769 m!5263727))

(assert (=> b!4517769 m!5263721))

(declare-fun m!5263729 () Bool)

(assert (=> b!4517769 m!5263729))

(assert (=> b!4517769 m!5261369))

(declare-fun m!5263731 () Bool)

(assert (=> b!4517769 m!5263731))

(declare-fun m!5263733 () Bool)

(assert (=> b!4517769 m!5263733))

(assert (=> b!4517769 m!5263731))

(declare-fun m!5263735 () Bool)

(assert (=> b!4517769 m!5263735))

(declare-fun m!5263737 () Bool)

(assert (=> d!1391122 m!5263737))

(declare-fun m!5263739 () Bool)

(assert (=> d!1391122 m!5263739))

(declare-fun m!5263741 () Bool)

(assert (=> bm!314714 m!5263741))

(assert (=> bm!314716 m!5261369))

(declare-fun m!5263743 () Bool)

(assert (=> bm!314716 m!5263743))

(declare-fun m!5263745 () Bool)

(assert (=> b!4517767 m!5263745))

(assert (=> b!4517766 m!5263723))

(declare-fun m!5263747 () Bool)

(assert (=> bm!314715 m!5263747))

(assert (=> b!4516608 d!1391122))

(declare-fun bs!853421 () Bool)

(declare-fun d!1391138 () Bool)

(assert (= bs!853421 (and d!1391138 d!1390298)))

(declare-fun lambda!172005 () Int)

(assert (=> bs!853421 (= lambda!172005 lambda!171755)))

(declare-fun bs!853422 () Bool)

(assert (= bs!853422 (and d!1391138 d!1390898)))

(assert (=> bs!853422 (= lambda!172005 lambda!171945)))

(declare-fun bs!853423 () Bool)

(assert (= bs!853423 (and d!1391138 d!1390462)))

(assert (=> bs!853423 (= lambda!172005 lambda!171843)))

(declare-fun bs!853424 () Bool)

(assert (= bs!853424 (and d!1391138 d!1390438)))

(assert (=> bs!853424 (= lambda!172005 lambda!171838)))

(declare-fun bs!853425 () Bool)

(assert (= bs!853425 (and d!1391138 d!1390452)))

(assert (=> bs!853425 (= lambda!172005 lambda!171839)))

(declare-fun bs!853426 () Bool)

(assert (= bs!853426 (and d!1391138 start!446940)))

(assert (=> bs!853426 (= lambda!172005 lambda!171717)))

(declare-fun bs!853427 () Bool)

(assert (= bs!853427 (and d!1391138 d!1390334)))

(assert (=> bs!853427 (= lambda!172005 lambda!171775)))

(declare-fun bs!853428 () Bool)

(assert (= bs!853428 (and d!1391138 d!1390300)))

(assert (=> bs!853428 (= lambda!172005 lambda!171762)))

(declare-fun bs!853429 () Bool)

(assert (= bs!853429 (and d!1391138 d!1390460)))

(assert (=> bs!853429 (= lambda!172005 lambda!171840)))

(declare-fun bs!853430 () Bool)

(assert (= bs!853430 (and d!1391138 d!1390944)))

(assert (=> bs!853430 (= lambda!172005 lambda!171960)))

(declare-fun bs!853431 () Bool)

(assert (= bs!853431 (and d!1391138 d!1390566)))

(assert (=> bs!853431 (= lambda!172005 lambda!171867)))

(declare-fun bs!853432 () Bool)

(assert (= bs!853432 (and d!1391138 d!1390324)))

(assert (=> bs!853432 (not (= lambda!172005 lambda!171769))))

(declare-fun bs!853433 () Bool)

(assert (= bs!853433 (and d!1391138 d!1390294)))

(assert (=> bs!853433 (= lambda!172005 lambda!171751)))

(declare-fun bs!853434 () Bool)

(assert (= bs!853434 (and d!1391138 d!1390314)))

(assert (=> bs!853434 (= lambda!172005 lambda!171763)))

(declare-fun bs!853435 () Bool)

(assert (= bs!853435 (and d!1391138 d!1390424)))

(assert (=> bs!853435 (= lambda!172005 lambda!171832)))

(declare-fun bs!853436 () Bool)

(assert (= bs!853436 (and d!1391138 d!1390270)))

(assert (=> bs!853436 (= lambda!172005 lambda!171720)))

(declare-fun bs!853437 () Bool)

(assert (= bs!853437 (and d!1391138 d!1391092)))

(assert (=> bs!853437 (= lambda!172005 lambda!171990)))

(declare-fun bs!853438 () Bool)

(assert (= bs!853438 (and d!1391138 d!1390530)))

(assert (=> bs!853438 (= lambda!172005 lambda!171858)))

(declare-fun lt!1695410 () ListMap!3581)

(assert (=> d!1391138 (invariantList!1013 (toList!4320 lt!1695410))))

(declare-fun e!2814636 () ListMap!3581)

(assert (=> d!1391138 (= lt!1695410 e!2814636)))

(declare-fun c!770896 () Bool)

(assert (=> d!1391138 (= c!770896 ((_ is Cons!50635) (t!357721 (toList!4319 lt!1694165))))))

(assert (=> d!1391138 (forall!10251 (t!357721 (toList!4319 lt!1694165)) lambda!172005)))

(assert (=> d!1391138 (= (extractMap!1212 (t!357721 (toList!4319 lt!1694165))) lt!1695410)))

(declare-fun b!4517793 () Bool)

(assert (=> b!4517793 (= e!2814636 (addToMapMapFromBucket!683 (_2!28824 (h!56484 (t!357721 (toList!4319 lt!1694165)))) (extractMap!1212 (t!357721 (t!357721 (toList!4319 lt!1694165))))))))

(declare-fun b!4517794 () Bool)

(assert (=> b!4517794 (= e!2814636 (ListMap!3582 Nil!50634))))

(assert (= (and d!1391138 c!770896) b!4517793))

(assert (= (and d!1391138 (not c!770896)) b!4517794))

(declare-fun m!5263749 () Bool)

(assert (=> d!1391138 m!5263749))

(declare-fun m!5263751 () Bool)

(assert (=> d!1391138 m!5263751))

(declare-fun m!5263753 () Bool)

(assert (=> b!4517793 m!5263753))

(assert (=> b!4517793 m!5263753))

(declare-fun m!5263755 () Bool)

(assert (=> b!4517793 m!5263755))

(assert (=> b!4516608 d!1391138))

(declare-fun d!1391140 () Bool)

(assert (=> d!1391140 (isDefined!8391 (getValueByKey!1084 (toList!4320 lt!1694148) key!3287))))

(declare-fun lt!1695411 () Unit!94398)

(assert (=> d!1391140 (= lt!1695411 (choose!29474 (toList!4320 lt!1694148) key!3287))))

(assert (=> d!1391140 (invariantList!1013 (toList!4320 lt!1694148))))

(assert (=> d!1391140 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!988 (toList!4320 lt!1694148) key!3287) lt!1695411)))

(declare-fun bs!853441 () Bool)

(assert (= bs!853441 d!1391140))

(assert (=> bs!853441 m!5260845))

(assert (=> bs!853441 m!5260845))

(assert (=> bs!853441 m!5260847))

(declare-fun m!5263757 () Bool)

(assert (=> bs!853441 m!5263757))

(assert (=> bs!853441 m!5262515))

(assert (=> b!4516352 d!1391140))

(assert (=> b!4516352 d!1390768))

(assert (=> b!4516352 d!1390770))

(declare-fun d!1391142 () Bool)

(assert (=> d!1391142 (contains!13354 (getKeysList!461 (toList!4320 lt!1694148)) key!3287)))

(declare-fun lt!1695412 () Unit!94398)

(assert (=> d!1391142 (= lt!1695412 (choose!29475 (toList!4320 lt!1694148) key!3287))))

(assert (=> d!1391142 (invariantList!1013 (toList!4320 lt!1694148))))

(assert (=> d!1391142 (= (lemmaInListThenGetKeysListContains!456 (toList!4320 lt!1694148) key!3287) lt!1695412)))

(declare-fun bs!853447 () Bool)

(assert (= bs!853447 d!1391142))

(assert (=> bs!853447 m!5260861))

(assert (=> bs!853447 m!5260861))

(declare-fun m!5263759 () Bool)

(assert (=> bs!853447 m!5263759))

(declare-fun m!5263761 () Bool)

(assert (=> bs!853447 m!5263761))

(assert (=> bs!853447 m!5262515))

(assert (=> b!4516352 d!1391142))

(declare-fun d!1391144 () Bool)

(declare-fun res!1879973 () Bool)

(declare-fun e!2814637 () Bool)

(assert (=> d!1391144 (=> res!1879973 e!2814637)))

(assert (=> d!1391144 (= res!1879973 (and ((_ is Cons!50635) (toList!4319 lm!1477)) (= (_1!28824 (h!56484 (toList!4319 lm!1477))) lt!1694171)))))

(assert (=> d!1391144 (= (containsKey!1770 (toList!4319 lm!1477) lt!1694171) e!2814637)))

(declare-fun b!4517795 () Bool)

(declare-fun e!2814638 () Bool)

(assert (=> b!4517795 (= e!2814637 e!2814638)))

(declare-fun res!1879974 () Bool)

(assert (=> b!4517795 (=> (not res!1879974) (not e!2814638))))

(assert (=> b!4517795 (= res!1879974 (and (or (not ((_ is Cons!50635) (toList!4319 lm!1477))) (bvsle (_1!28824 (h!56484 (toList!4319 lm!1477))) lt!1694171)) ((_ is Cons!50635) (toList!4319 lm!1477)) (bvslt (_1!28824 (h!56484 (toList!4319 lm!1477))) lt!1694171)))))

(declare-fun b!4517796 () Bool)

(assert (=> b!4517796 (= e!2814638 (containsKey!1770 (t!357721 (toList!4319 lm!1477)) lt!1694171))))

(assert (= (and d!1391144 (not res!1879973)) b!4517795))

(assert (= (and b!4517795 res!1879974) b!4517796))

(declare-fun m!5263763 () Bool)

(assert (=> b!4517796 m!5263763))

(assert (=> d!1390352 d!1391144))

(declare-fun d!1391146 () Bool)

(assert (=> d!1391146 (isDefined!8391 (getValueByKey!1084 (toList!4320 lt!1694159) key!3287))))

(declare-fun lt!1695413 () Unit!94398)

(assert (=> d!1391146 (= lt!1695413 (choose!29474 (toList!4320 lt!1694159) key!3287))))

(assert (=> d!1391146 (invariantList!1013 (toList!4320 lt!1694159))))

(assert (=> d!1391146 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!988 (toList!4320 lt!1694159) key!3287) lt!1695413)))

(declare-fun bs!853456 () Bool)

(assert (= bs!853456 d!1391146))

(assert (=> bs!853456 m!5260967))

(assert (=> bs!853456 m!5260967))

(assert (=> bs!853456 m!5260969))

(declare-fun m!5263765 () Bool)

(assert (=> bs!853456 m!5263765))

(assert (=> bs!853456 m!5262259))

(assert (=> b!4516417 d!1391146))

(assert (=> b!4516417 d!1390762))

(assert (=> b!4516417 d!1390764))

(declare-fun d!1391148 () Bool)

(assert (=> d!1391148 (contains!13354 (getKeysList!461 (toList!4320 lt!1694159)) key!3287)))

(declare-fun lt!1695414 () Unit!94398)

(assert (=> d!1391148 (= lt!1695414 (choose!29475 (toList!4320 lt!1694159) key!3287))))

(assert (=> d!1391148 (invariantList!1013 (toList!4320 lt!1694159))))

(assert (=> d!1391148 (= (lemmaInListThenGetKeysListContains!456 (toList!4320 lt!1694159) key!3287) lt!1695414)))

(declare-fun bs!853461 () Bool)

(assert (= bs!853461 d!1391148))

(assert (=> bs!853461 m!5260983))

(assert (=> bs!853461 m!5260983))

(declare-fun m!5263767 () Bool)

(assert (=> bs!853461 m!5263767))

(declare-fun m!5263769 () Bool)

(assert (=> bs!853461 m!5263769))

(assert (=> bs!853461 m!5262259))

(assert (=> b!4516417 d!1391148))

(declare-fun d!1391150 () Bool)

(declare-fun e!2814639 () Bool)

(assert (=> d!1391150 e!2814639))

(declare-fun res!1879975 () Bool)

(assert (=> d!1391150 (=> res!1879975 e!2814639)))

(declare-fun lt!1695417 () Bool)

(assert (=> d!1391150 (= res!1879975 (not lt!1695417))))

(declare-fun lt!1695415 () Bool)

(assert (=> d!1391150 (= lt!1695417 lt!1695415)))

(declare-fun lt!1695418 () Unit!94398)

(declare-fun e!2814640 () Unit!94398)

(assert (=> d!1391150 (= lt!1695418 e!2814640)))

(declare-fun c!770897 () Bool)

(assert (=> d!1391150 (= c!770897 lt!1695415)))

(assert (=> d!1391150 (= lt!1695415 (containsKey!1770 (toList!4319 lt!1694553) (_1!28824 lt!1694154)))))

(assert (=> d!1391150 (= (contains!13352 lt!1694553 (_1!28824 lt!1694154)) lt!1695417)))

(declare-fun b!4517797 () Bool)

(declare-fun lt!1695416 () Unit!94398)

(assert (=> b!4517797 (= e!2814640 lt!1695416)))

(assert (=> b!4517797 (= lt!1695416 (lemmaContainsKeyImpliesGetValueByKeyDefined!987 (toList!4319 lt!1694553) (_1!28824 lt!1694154)))))

(assert (=> b!4517797 (isDefined!8390 (getValueByKey!1083 (toList!4319 lt!1694553) (_1!28824 lt!1694154)))))

(declare-fun b!4517798 () Bool)

(declare-fun Unit!94714 () Unit!94398)

(assert (=> b!4517798 (= e!2814640 Unit!94714)))

(declare-fun b!4517799 () Bool)

(assert (=> b!4517799 (= e!2814639 (isDefined!8390 (getValueByKey!1083 (toList!4319 lt!1694553) (_1!28824 lt!1694154))))))

(assert (= (and d!1391150 c!770897) b!4517797))

(assert (= (and d!1391150 (not c!770897)) b!4517798))

(assert (= (and d!1391150 (not res!1879975)) b!4517799))

(declare-fun m!5263771 () Bool)

(assert (=> d!1391150 m!5263771))

(declare-fun m!5263773 () Bool)

(assert (=> b!4517797 m!5263773))

(assert (=> b!4517797 m!5261463))

(assert (=> b!4517797 m!5261463))

(declare-fun m!5263775 () Bool)

(assert (=> b!4517797 m!5263775))

(assert (=> b!4517799 m!5261463))

(assert (=> b!4517799 m!5261463))

(assert (=> b!4517799 m!5263775))

(assert (=> d!1390454 d!1391150))

(declare-fun b!4517803 () Bool)

(declare-fun e!2814642 () Option!11103)

(assert (=> b!4517803 (= e!2814642 None!11102)))

(declare-fun b!4517802 () Bool)

(assert (=> b!4517802 (= e!2814642 (getValueByKey!1083 (t!357721 lt!1694550) (_1!28824 lt!1694154)))))

(declare-fun b!4517800 () Bool)

(declare-fun e!2814641 () Option!11103)

(assert (=> b!4517800 (= e!2814641 (Some!11102 (_2!28824 (h!56484 lt!1694550))))))

(declare-fun b!4517801 () Bool)

(assert (=> b!4517801 (= e!2814641 e!2814642)))

(declare-fun c!770899 () Bool)

(assert (=> b!4517801 (= c!770899 (and ((_ is Cons!50635) lt!1694550) (not (= (_1!28824 (h!56484 lt!1694550)) (_1!28824 lt!1694154)))))))

(declare-fun d!1391152 () Bool)

(declare-fun c!770898 () Bool)

(assert (=> d!1391152 (= c!770898 (and ((_ is Cons!50635) lt!1694550) (= (_1!28824 (h!56484 lt!1694550)) (_1!28824 lt!1694154))))))

(assert (=> d!1391152 (= (getValueByKey!1083 lt!1694550 (_1!28824 lt!1694154)) e!2814641)))

(assert (= (and d!1391152 c!770898) b!4517800))

(assert (= (and d!1391152 (not c!770898)) b!4517801))

(assert (= (and b!4517801 c!770899) b!4517802))

(assert (= (and b!4517801 (not c!770899)) b!4517803))

(declare-fun m!5263777 () Bool)

(assert (=> b!4517802 m!5263777))

(assert (=> d!1390454 d!1391152))

(declare-fun d!1391154 () Bool)

(assert (=> d!1391154 (= (getValueByKey!1083 lt!1694550 (_1!28824 lt!1694154)) (Some!11102 (_2!28824 lt!1694154)))))

(declare-fun lt!1695419 () Unit!94398)

(assert (=> d!1391154 (= lt!1695419 (choose!29468 lt!1694550 (_1!28824 lt!1694154) (_2!28824 lt!1694154)))))

(declare-fun e!2814643 () Bool)

(assert (=> d!1391154 e!2814643))

(declare-fun res!1879976 () Bool)

(assert (=> d!1391154 (=> (not res!1879976) (not e!2814643))))

(assert (=> d!1391154 (= res!1879976 (isStrictlySorted!427 lt!1694550))))

(assert (=> d!1391154 (= (lemmaContainsTupThenGetReturnValue!670 lt!1694550 (_1!28824 lt!1694154) (_2!28824 lt!1694154)) lt!1695419)))

(declare-fun b!4517804 () Bool)

(declare-fun res!1879977 () Bool)

(assert (=> b!4517804 (=> (not res!1879977) (not e!2814643))))

(assert (=> b!4517804 (= res!1879977 (containsKey!1770 lt!1694550 (_1!28824 lt!1694154)))))

(declare-fun b!4517805 () Bool)

(assert (=> b!4517805 (= e!2814643 (contains!13351 lt!1694550 (tuple2!51061 (_1!28824 lt!1694154) (_2!28824 lt!1694154))))))

(assert (= (and d!1391154 res!1879976) b!4517804))

(assert (= (and b!4517804 res!1879977) b!4517805))

(assert (=> d!1391154 m!5261457))

(declare-fun m!5263779 () Bool)

(assert (=> d!1391154 m!5263779))

(declare-fun m!5263781 () Bool)

(assert (=> d!1391154 m!5263781))

(declare-fun m!5263783 () Bool)

(assert (=> b!4517804 m!5263783))

(declare-fun m!5263785 () Bool)

(assert (=> b!4517805 m!5263785))

(assert (=> d!1390454 d!1391154))

(declare-fun b!4517806 () Bool)

(declare-fun e!2814646 () List!50759)

(declare-fun call!314725 () List!50759)

(assert (=> b!4517806 (= e!2814646 call!314725)))

(declare-fun b!4517807 () Bool)

(assert (=> b!4517807 (= e!2814646 call!314725)))

(declare-fun b!4517808 () Bool)

(declare-fun e!2814647 () List!50759)

(assert (=> b!4517808 (= e!2814647 (insertStrictlySorted!404 (t!357721 (toList!4319 lt!1694164)) (_1!28824 lt!1694154) (_2!28824 lt!1694154)))))

(declare-fun b!4517809 () Bool)

(declare-fun e!2814645 () Bool)

(declare-fun lt!1695420 () List!50759)

(assert (=> b!4517809 (= e!2814645 (contains!13351 lt!1695420 (tuple2!51061 (_1!28824 lt!1694154) (_2!28824 lt!1694154))))))

(declare-fun b!4517810 () Bool)

(declare-fun e!2814644 () List!50759)

(declare-fun call!314727 () List!50759)

(assert (=> b!4517810 (= e!2814644 call!314727)))

(declare-fun call!314726 () List!50759)

(declare-fun bm!314720 () Bool)

(declare-fun c!770901 () Bool)

(assert (=> bm!314720 (= call!314726 ($colon$colon!930 e!2814647 (ite c!770901 (h!56484 (toList!4319 lt!1694164)) (tuple2!51061 (_1!28824 lt!1694154) (_2!28824 lt!1694154)))))))

(declare-fun c!770900 () Bool)

(assert (=> bm!314720 (= c!770900 c!770901)))

(declare-fun d!1391156 () Bool)

(assert (=> d!1391156 e!2814645))

(declare-fun res!1879978 () Bool)

(assert (=> d!1391156 (=> (not res!1879978) (not e!2814645))))

(assert (=> d!1391156 (= res!1879978 (isStrictlySorted!427 lt!1695420))))

(declare-fun e!2814648 () List!50759)

(assert (=> d!1391156 (= lt!1695420 e!2814648)))

(assert (=> d!1391156 (= c!770901 (and ((_ is Cons!50635) (toList!4319 lt!1694164)) (bvslt (_1!28824 (h!56484 (toList!4319 lt!1694164))) (_1!28824 lt!1694154))))))

(assert (=> d!1391156 (isStrictlySorted!427 (toList!4319 lt!1694164))))

(assert (=> d!1391156 (= (insertStrictlySorted!404 (toList!4319 lt!1694164) (_1!28824 lt!1694154) (_2!28824 lt!1694154)) lt!1695420)))

(declare-fun bm!314721 () Bool)

(assert (=> bm!314721 (= call!314725 call!314727)))

(declare-fun c!770903 () Bool)

(declare-fun b!4517811 () Bool)

(declare-fun c!770902 () Bool)

(assert (=> b!4517811 (= e!2814647 (ite c!770902 (t!357721 (toList!4319 lt!1694164)) (ite c!770903 (Cons!50635 (h!56484 (toList!4319 lt!1694164)) (t!357721 (toList!4319 lt!1694164))) Nil!50635)))))

(declare-fun b!4517812 () Bool)

(assert (=> b!4517812 (= e!2814648 call!314726)))

(declare-fun b!4517813 () Bool)

(declare-fun res!1879979 () Bool)

(assert (=> b!4517813 (=> (not res!1879979) (not e!2814645))))

(assert (=> b!4517813 (= res!1879979 (containsKey!1770 lt!1695420 (_1!28824 lt!1694154)))))

(declare-fun bm!314722 () Bool)

(assert (=> bm!314722 (= call!314727 call!314726)))

(declare-fun b!4517814 () Bool)

(assert (=> b!4517814 (= c!770903 (and ((_ is Cons!50635) (toList!4319 lt!1694164)) (bvsgt (_1!28824 (h!56484 (toList!4319 lt!1694164))) (_1!28824 lt!1694154))))))

(assert (=> b!4517814 (= e!2814644 e!2814646)))

(declare-fun b!4517815 () Bool)

(assert (=> b!4517815 (= e!2814648 e!2814644)))

(assert (=> b!4517815 (= c!770902 (and ((_ is Cons!50635) (toList!4319 lt!1694164)) (= (_1!28824 (h!56484 (toList!4319 lt!1694164))) (_1!28824 lt!1694154))))))

(assert (= (and d!1391156 c!770901) b!4517812))

(assert (= (and d!1391156 (not c!770901)) b!4517815))

(assert (= (and b!4517815 c!770902) b!4517810))

(assert (= (and b!4517815 (not c!770902)) b!4517814))

(assert (= (and b!4517814 c!770903) b!4517807))

(assert (= (and b!4517814 (not c!770903)) b!4517806))

(assert (= (or b!4517807 b!4517806) bm!314721))

(assert (= (or b!4517810 bm!314721) bm!314722))

(assert (= (or b!4517812 bm!314722) bm!314720))

(assert (= (and bm!314720 c!770900) b!4517808))

(assert (= (and bm!314720 (not c!770900)) b!4517811))

(assert (= (and d!1391156 res!1879978) b!4517813))

(assert (= (and b!4517813 res!1879979) b!4517809))

(declare-fun m!5263787 () Bool)

(assert (=> b!4517809 m!5263787))

(declare-fun m!5263789 () Bool)

(assert (=> d!1391156 m!5263789))

(assert (=> d!1391156 m!5261953))

(declare-fun m!5263791 () Bool)

(assert (=> b!4517808 m!5263791))

(declare-fun m!5263793 () Bool)

(assert (=> bm!314720 m!5263793))

(declare-fun m!5263795 () Bool)

(assert (=> b!4517813 m!5263795))

(assert (=> d!1390454 d!1391156))

(declare-fun b!4517819 () Bool)

(declare-fun e!2814650 () Option!11103)

(assert (=> b!4517819 (= e!2814650 None!11102)))

(declare-fun b!4517818 () Bool)

(assert (=> b!4517818 (= e!2814650 (getValueByKey!1083 (t!357721 (toList!4319 lt!1694545)) (_1!28824 lt!1694150)))))

(declare-fun b!4517816 () Bool)

(declare-fun e!2814649 () Option!11103)

(assert (=> b!4517816 (= e!2814649 (Some!11102 (_2!28824 (h!56484 (toList!4319 lt!1694545)))))))

(declare-fun b!4517817 () Bool)

(assert (=> b!4517817 (= e!2814649 e!2814650)))

(declare-fun c!770905 () Bool)

(assert (=> b!4517817 (= c!770905 (and ((_ is Cons!50635) (toList!4319 lt!1694545)) (not (= (_1!28824 (h!56484 (toList!4319 lt!1694545))) (_1!28824 lt!1694150)))))))

(declare-fun d!1391158 () Bool)

(declare-fun c!770904 () Bool)

(assert (=> d!1391158 (= c!770904 (and ((_ is Cons!50635) (toList!4319 lt!1694545)) (= (_1!28824 (h!56484 (toList!4319 lt!1694545))) (_1!28824 lt!1694150))))))

(assert (=> d!1391158 (= (getValueByKey!1083 (toList!4319 lt!1694545) (_1!28824 lt!1694150)) e!2814649)))

(assert (= (and d!1391158 c!770904) b!4517816))

(assert (= (and d!1391158 (not c!770904)) b!4517817))

(assert (= (and b!4517817 c!770905) b!4517818))

(assert (= (and b!4517817 (not c!770905)) b!4517819))

(declare-fun m!5263797 () Bool)

(assert (=> b!4517818 m!5263797))

(assert (=> b!4516647 d!1391158))

(declare-fun d!1391160 () Bool)

(assert (=> d!1391160 (dynLambda!21155 lambda!171717 (h!56484 (toList!4319 lm!1477)))))

(assert (=> d!1391160 true))

(declare-fun _$7!1829 () Unit!94398)

(assert (=> d!1391160 (= (choose!29452 (toList!4319 lm!1477) lambda!171717 (h!56484 (toList!4319 lm!1477))) _$7!1829)))

(declare-fun b_lambda!154519 () Bool)

(assert (=> (not b_lambda!154519) (not d!1391160)))

(declare-fun bs!853477 () Bool)

(assert (= bs!853477 d!1391160))

(assert (=> bs!853477 m!5260823))

(assert (=> d!1390430 d!1391160))

(assert (=> d!1390430 d!1390276))

(declare-fun b!4517820 () Bool)

(declare-fun e!2814651 () Bool)

(declare-fun tp!1338024 () Bool)

(assert (=> b!4517820 (= e!2814651 (and tp_is_empty!27901 tp_is_empty!27903 tp!1338024))))

(assert (=> b!4516676 (= tp!1338023 e!2814651)))

(assert (= (and b!4516676 ((_ is Cons!50634) (t!357720 (t!357720 newBucket!178)))) b!4517820))

(declare-fun tp!1338025 () Bool)

(declare-fun b!4517821 () Bool)

(declare-fun e!2814652 () Bool)

(assert (=> b!4517821 (= e!2814652 (and tp_is_empty!27901 tp_is_empty!27903 tp!1338025))))

(assert (=> b!4516671 (= tp!1338019 e!2814652)))

(assert (= (and b!4516671 ((_ is Cons!50634) (_2!28824 (h!56484 (toList!4319 lm!1477))))) b!4517821))

(declare-fun b!4517824 () Bool)

(declare-fun e!2814654 () Bool)

(declare-fun tp!1338026 () Bool)

(declare-fun tp!1338027 () Bool)

(assert (=> b!4517824 (= e!2814654 (and tp!1338026 tp!1338027))))

(assert (=> b!4516671 (= tp!1338020 e!2814654)))

(assert (= (and b!4516671 ((_ is Cons!50635) (t!357721 (toList!4319 lm!1477)))) b!4517824))

(declare-fun b_lambda!154521 () Bool)

(assert (= b_lambda!154477 (or d!1390472 b_lambda!154521)))

(declare-fun bs!853493 () Bool)

(declare-fun d!1391164 () Bool)

(assert (= bs!853493 (and d!1391164 d!1390472)))

(assert (=> bs!853493 (= (dynLambda!21156 lambda!171847 (h!56483 (_2!28824 lt!1694150))) (contains!13353 lt!1694564 (_1!28823 (h!56483 (_2!28824 lt!1694150)))))))

(declare-fun m!5263833 () Bool)

(assert (=> bs!853493 m!5263833))

(assert (=> b!4517518 d!1391164))

(declare-fun b_lambda!154523 () Bool)

(assert (= b_lambda!154449 (or d!1390452 b_lambda!154523)))

(declare-fun bs!853496 () Bool)

(declare-fun d!1391166 () Bool)

(assert (= bs!853496 (and d!1391166 d!1390452)))

(assert (=> bs!853496 (= (dynLambda!21155 lambda!171839 (h!56484 (toList!4319 (+!1530 lt!1694164 lt!1694150)))) (noDuplicateKeys!1156 (_2!28824 (h!56484 (toList!4319 (+!1530 lt!1694164 lt!1694150))))))))

(assert (=> bs!853496 m!5263053))

(assert (=> b!4517379 d!1391166))

(declare-fun b_lambda!154525 () Bool)

(assert (= b_lambda!154423 (or d!1390294 b_lambda!154525)))

(declare-fun bs!853498 () Bool)

(declare-fun d!1391168 () Bool)

(assert (= bs!853498 (and d!1391168 d!1390294)))

(assert (=> bs!853498 (= (dynLambda!21155 lambda!171751 (h!56484 (toList!4319 lm!1477))) (noDuplicateKeys!1156 (_2!28824 (h!56484 (toList!4319 lm!1477)))))))

(assert (=> bs!853498 m!5261551))

(assert (=> b!4517027 d!1391168))

(declare-fun b_lambda!154527 () Bool)

(assert (= b_lambda!154431 (or d!1390334 b_lambda!154527)))

(declare-fun bs!853499 () Bool)

(declare-fun d!1391170 () Bool)

(assert (= bs!853499 (and d!1391170 d!1390334)))

(assert (=> bs!853499 (= (dynLambda!21155 lambda!171775 (h!56484 (toList!4319 lm!1477))) (noDuplicateKeys!1156 (_2!28824 (h!56484 (toList!4319 lm!1477)))))))

(assert (=> bs!853499 m!5261551))

(assert (=> b!4517215 d!1391170))

(declare-fun b_lambda!154529 () Bool)

(assert (= b_lambda!154519 (or start!446940 b_lambda!154529)))

(assert (=> d!1391160 d!1390480))

(declare-fun b_lambda!154531 () Bool)

(assert (= b_lambda!154513 (or d!1390324 b_lambda!154531)))

(declare-fun bs!853500 () Bool)

(declare-fun d!1391172 () Bool)

(assert (= bs!853500 (and d!1391172 d!1390324)))

(assert (=> bs!853500 (= (dynLambda!21155 lambda!171769 (h!56484 (toList!4319 lm!1477))) (allKeysSameHash!1010 (_2!28824 (h!56484 (toList!4319 lm!1477))) (_1!28824 (h!56484 (toList!4319 lm!1477))) hashF!1107))))

(declare-fun m!5263839 () Bool)

(assert (=> bs!853500 m!5263839))

(assert (=> b!4517764 d!1391172))

(declare-fun b_lambda!154533 () Bool)

(assert (= b_lambda!154407 (or d!1390472 b_lambda!154533)))

(declare-fun bs!853501 () Bool)

(declare-fun d!1391174 () Bool)

(assert (= bs!853501 (and d!1391174 d!1390472)))

(assert (=> bs!853501 (= (dynLambda!21156 lambda!171847 (h!56483 (toList!4320 lt!1694147))) (contains!13353 lt!1694564 (_1!28823 (h!56483 (toList!4320 lt!1694147)))))))

(declare-fun m!5263845 () Bool)

(assert (=> bs!853501 m!5263845))

(assert (=> b!4516803 d!1391174))

(declare-fun b_lambda!154535 () Bool)

(assert (= b_lambda!154427 (or start!446940 b_lambda!154535)))

(declare-fun bs!853502 () Bool)

(declare-fun d!1391176 () Bool)

(assert (= bs!853502 (and d!1391176 start!446940)))

(assert (=> bs!853502 (= (dynLambda!21155 lambda!171717 (h!56484 (t!357721 (toList!4319 lm!1477)))) (noDuplicateKeys!1156 (_2!28824 (h!56484 (t!357721 (toList!4319 lm!1477))))))))

(assert (=> bs!853502 m!5263553))

(assert (=> b!4517201 d!1391176))

(declare-fun b_lambda!154537 () Bool)

(assert (= b_lambda!154487 (or b!4516604 b_lambda!154537)))

(declare-fun bs!853503 () Bool)

(declare-fun d!1391180 () Bool)

(assert (= bs!853503 (and d!1391180 b!4516604)))

(assert (=> bs!853503 (= (dynLambda!21156 lambda!171830 (h!56483 (toList!4320 lt!1694520))) (contains!13353 lt!1694513 (_1!28823 (h!56483 (toList!4320 lt!1694520)))))))

(declare-fun m!5263847 () Bool)

(assert (=> bs!853503 m!5263847))

(assert (=> b!4517570 d!1391180))

(declare-fun b_lambda!154539 () Bool)

(assert (= b_lambda!154439 (or d!1390300 b_lambda!154539)))

(declare-fun bs!853504 () Bool)

(declare-fun d!1391182 () Bool)

(assert (= bs!853504 (and d!1391182 d!1390300)))

(assert (=> bs!853504 (= (dynLambda!21155 lambda!171762 (h!56484 (toList!4319 lt!1694164))) (noDuplicateKeys!1156 (_2!28824 (h!56484 (toList!4319 lt!1694164)))))))

(assert (=> bs!853504 m!5261659))

(assert (=> b!4517304 d!1391182))

(declare-fun b_lambda!154541 () Bool)

(assert (= b_lambda!154481 (or d!1390298 b_lambda!154541)))

(declare-fun bs!853505 () Bool)

(declare-fun d!1391184 () Bool)

(assert (= bs!853505 (and d!1391184 d!1390298)))

(assert (=> bs!853505 (= (dynLambda!21155 lambda!171755 (h!56484 (t!357721 (toList!4319 lm!1477)))) (noDuplicateKeys!1156 (_2!28824 (h!56484 (t!357721 (toList!4319 lm!1477))))))))

(assert (=> bs!853505 m!5263553))

(assert (=> b!4517547 d!1391184))

(declare-fun b_lambda!154543 () Bool)

(assert (= b_lambda!154509 (or d!1390424 b_lambda!154543)))

(declare-fun bs!853506 () Bool)

(declare-fun d!1391186 () Bool)

(assert (= bs!853506 (and d!1391186 d!1390424)))

(assert (=> bs!853506 (= (dynLambda!21155 lambda!171832 (h!56484 (toList!4319 lt!1694165))) (noDuplicateKeys!1156 (_2!28824 (h!56484 (toList!4319 lt!1694165)))))))

(assert (=> bs!853506 m!5263739))

(assert (=> b!4517757 d!1391186))

(declare-fun b_lambda!154545 () Bool)

(assert (= b_lambda!154489 (or b!4516604 b_lambda!154545)))

(declare-fun bs!853507 () Bool)

(declare-fun d!1391188 () Bool)

(assert (= bs!853507 (and d!1391188 b!4516604)))

(assert (=> bs!853507 (= (dynLambda!21156 lambda!171830 (h!56483 (t!357720 (_2!28824 lt!1694150)))) (contains!13353 lt!1694513 (_1!28823 (h!56483 (t!357720 (_2!28824 lt!1694150))))))))

(declare-fun m!5263853 () Bool)

(assert (=> bs!853507 m!5263853))

(assert (=> b!4517572 d!1391188))

(declare-fun b_lambda!154547 () Bool)

(assert (= b_lambda!154413 (or d!1390358 b_lambda!154547)))

(declare-fun bs!853508 () Bool)

(declare-fun d!1391192 () Bool)

(assert (= bs!853508 (and d!1391192 d!1390358)))

(assert (=> bs!853508 (= (dynLambda!21156 lambda!171831 (h!56483 (toList!4320 lt!1694172))) (contains!13353 lt!1694503 (_1!28823 (h!56483 (toList!4320 lt!1694172)))))))

(declare-fun m!5263855 () Bool)

(assert (=> bs!853508 m!5263855))

(assert (=> b!4516949 d!1391192))

(declare-fun b_lambda!154549 () Bool)

(assert (= b_lambda!154491 (or b!4516604 b_lambda!154549)))

(declare-fun bs!853509 () Bool)

(declare-fun d!1391194 () Bool)

(assert (= bs!853509 (and d!1391194 b!4516604)))

(assert (=> bs!853509 (= (dynLambda!21156 lambda!171830 (h!56483 (_2!28824 lt!1694150))) (contains!13353 lt!1694513 (_1!28823 (h!56483 (_2!28824 lt!1694150)))))))

(assert (=> bs!853509 m!5261351))

(assert (=> b!4517574 d!1391194))

(declare-fun b_lambda!154551 () Bool)

(assert (= b_lambda!154403 (or d!1390438 b_lambda!154551)))

(declare-fun bs!853510 () Bool)

(declare-fun d!1391196 () Bool)

(assert (= bs!853510 (and d!1391196 d!1390438)))

(assert (=> bs!853510 (= (dynLambda!21155 lambda!171838 (h!56484 (toList!4319 lt!1694164))) (noDuplicateKeys!1156 (_2!28824 (h!56484 (toList!4319 lt!1694164)))))))

(assert (=> bs!853510 m!5261659))

(assert (=> b!4516739 d!1391196))

(declare-fun b_lambda!154553 () Bool)

(assert (= b_lambda!154455 (or b!4516663 b_lambda!154553)))

(declare-fun bs!853511 () Bool)

(declare-fun d!1391198 () Bool)

(assert (= bs!853511 (and d!1391198 b!4516663)))

(assert (=> bs!853511 (= (dynLambda!21156 lambda!171846 (h!56483 (toList!4320 lt!1694581))) (contains!13353 lt!1694574 (_1!28823 (h!56483 (toList!4320 lt!1694581)))))))

(declare-fun m!5263857 () Bool)

(assert (=> bs!853511 m!5263857))

(assert (=> b!4517443 d!1391198))

(declare-fun b_lambda!154555 () Bool)

(assert (= b_lambda!154507 (or d!1390460 b_lambda!154555)))

(declare-fun bs!853512 () Bool)

(declare-fun d!1391200 () Bool)

(assert (= bs!853512 (and d!1391200 d!1390460)))

(assert (=> bs!853512 (= (dynLambda!21155 lambda!171840 (h!56484 (toList!4319 lt!1694158))) (noDuplicateKeys!1156 (_2!28824 (h!56484 (toList!4319 lt!1694158)))))))

(assert (=> bs!853512 m!5261771))

(assert (=> b!4517714 d!1391200))

(declare-fun b_lambda!154557 () Bool)

(assert (= b_lambda!154469 (or d!1390462 b_lambda!154557)))

(declare-fun bs!853513 () Bool)

(declare-fun d!1391202 () Bool)

(assert (= bs!853513 (and d!1391202 d!1390462)))

(assert (=> bs!853513 (= (dynLambda!21155 lambda!171843 (h!56484 (toList!4319 lt!1694164))) (noDuplicateKeys!1156 (_2!28824 (h!56484 (toList!4319 lt!1694164)))))))

(assert (=> bs!853513 m!5261659))

(assert (=> b!4517488 d!1391202))

(declare-fun b_lambda!154559 () Bool)

(assert (= b_lambda!154417 (or d!1390270 b_lambda!154559)))

(declare-fun bs!853514 () Bool)

(declare-fun d!1391204 () Bool)

(assert (= bs!853514 (and d!1391204 d!1390270)))

(assert (=> bs!853514 (= (dynLambda!21155 lambda!171720 (h!56484 (toList!4319 lm!1477))) (noDuplicateKeys!1156 (_2!28824 (h!56484 (toList!4319 lm!1477)))))))

(assert (=> bs!853514 m!5261551))

(assert (=> b!4516971 d!1391204))

(declare-fun b_lambda!154561 () Bool)

(assert (= b_lambda!154479 (or b!4516604 b_lambda!154561)))

(declare-fun bs!853515 () Bool)

(declare-fun d!1391206 () Bool)

(assert (= bs!853515 (and d!1391206 b!4516604)))

(assert (=> bs!853515 (= (dynLambda!21156 lambda!171830 (h!56483 (toList!4320 lt!1694172))) (contains!13353 lt!1694513 (_1!28823 (h!56483 (toList!4320 lt!1694172)))))))

(declare-fun m!5263859 () Bool)

(assert (=> bs!853515 m!5263859))

(assert (=> b!4517528 d!1391206))

(declare-fun b_lambda!154563 () Bool)

(assert (= b_lambda!154461 (or b!4516663 b_lambda!154563)))

(declare-fun bs!853516 () Bool)

(declare-fun d!1391208 () Bool)

(assert (= bs!853516 (and d!1391208 b!4516663)))

(assert (=> bs!853516 (= (dynLambda!21156 lambda!171846 (h!56483 (_2!28824 lt!1694150))) (contains!13353 lt!1694574 (_1!28823 (h!56483 (_2!28824 lt!1694150)))))))

(assert (=> bs!853516 m!5261525))

(assert (=> b!4517450 d!1391208))

(declare-fun b_lambda!154565 () Bool)

(assert (= b_lambda!154459 (or b!4516663 b_lambda!154565)))

(assert (=> d!1390890 d!1391208))

(declare-fun b_lambda!154567 () Bool)

(assert (= b_lambda!154485 (or b!4516604 b_lambda!154567)))

(assert (=> d!1390976 d!1391194))

(declare-fun b_lambda!154569 () Bool)

(assert (= b_lambda!154453 (or b!4516663 b_lambda!154569)))

(declare-fun bs!853517 () Bool)

(declare-fun d!1391210 () Bool)

(assert (= bs!853517 (and d!1391210 b!4516663)))

(assert (=> bs!853517 (= (dynLambda!21156 lambda!171846 (h!56483 (t!357720 (_2!28824 lt!1694150)))) (contains!13353 lt!1694574 (_1!28823 (h!56483 (t!357720 (_2!28824 lt!1694150))))))))

(declare-fun m!5263861 () Bool)

(assert (=> bs!853517 m!5263861))

(assert (=> b!4517441 d!1391210))

(declare-fun b_lambda!154571 () Bool)

(assert (= b_lambda!154421 (or b!4516663 b_lambda!154571)))

(declare-fun bs!853518 () Bool)

(declare-fun d!1391212 () Bool)

(assert (= bs!853518 (and d!1391212 b!4516663)))

(assert (=> bs!853518 (= (dynLambda!21156 lambda!171846 (h!56483 (toList!4320 lt!1694147))) (contains!13353 lt!1694574 (_1!28823 (h!56483 (toList!4320 lt!1694147)))))))

(declare-fun m!5263863 () Bool)

(assert (=> bs!853518 m!5263863))

(assert (=> b!4517025 d!1391212))

(declare-fun b_lambda!154573 () Bool)

(assert (= b_lambda!154425 (or d!1390358 b_lambda!154573)))

(declare-fun bs!853520 () Bool)

(declare-fun d!1391215 () Bool)

(assert (= bs!853520 (and d!1391215 d!1390358)))

(assert (=> bs!853520 (= (dynLambda!21156 lambda!171831 (h!56483 (_2!28824 lt!1694150))) (contains!13353 lt!1694503 (_1!28823 (h!56483 (_2!28824 lt!1694150)))))))

(declare-fun m!5263865 () Bool)

(assert (=> bs!853520 m!5263865))

(assert (=> b!4517033 d!1391215))

(declare-fun b_lambda!154575 () Bool)

(assert (= b_lambda!154399 (or d!1390314 b_lambda!154575)))

(declare-fun bs!853521 () Bool)

(declare-fun d!1391218 () Bool)

(assert (= bs!853521 (and d!1391218 d!1390314)))

(assert (=> bs!853521 (= (dynLambda!21155 lambda!171763 (h!56484 (toList!4319 lt!1694164))) (noDuplicateKeys!1156 (_2!28824 (h!56484 (toList!4319 lt!1694164)))))))

(assert (=> bs!853521 m!5261659))

(assert (=> b!4516705 d!1391218))

(declare-fun b_lambda!154577 () Bool)

(assert (= b_lambda!154511 (or start!446940 b_lambda!154577)))

(assert (=> d!1391116 d!1390478))

(declare-fun b_lambda!154579 () Bool)

(assert (= b_lambda!154419 (or d!1390326 b_lambda!154579)))

(declare-fun bs!853522 () Bool)

(declare-fun d!1391220 () Bool)

(assert (= bs!853522 (and d!1391220 d!1390326)))

(assert (=> bs!853522 (= (dynLambda!21156 lambda!171772 (h!56483 newBucket!178)) (= (hash!2791 hashF!1107 (_1!28823 (h!56483 newBucket!178))) hash!344))))

(declare-fun m!5263867 () Bool)

(assert (=> bs!853522 m!5263867))

(assert (=> b!4517013 d!1391220))

(check-sat (not bm!314685) (not b!4517645) (not b_lambda!154393) (not b!4516882) (not d!1391096) (not bs!853507) (not bm!314648) (not bm!314594) (not b!4517202) (not b!4517683) (not bs!853499) (not bm!314644) (not b_lambda!154525) (not b_lambda!154577) (not bs!853511) (not d!1391010) (not b!4516953) (not b!4517414) (not d!1390944) (not bs!853521) (not d!1390718) (not b!4516942) (not b!4516922) (not b!4516937) (not b!4516972) (not bm!314595) (not d!1390962) (not b!4516944) (not b!4517196) (not b!4516801) (not b!4517732) (not bm!314714) (not b_lambda!154571) (not b_lambda!154391) (not d!1391074) (not b!4517805) (not b!4516946) (not b!4517255) (not b_lambda!154505) (not b!4517194) (not b!4516761) (not b!4516779) (not b!4516740) (not bs!853509) (not d!1390796) (not b!4517571) (not d!1390614) (not b!4517454) (not b!4517436) (not b_lambda!154549) (not b!4517411) (not b!4517731) (not b!4517246) (not d!1391098) (not b!4517739) (not b!4517529) tp_is_empty!27903 (not b!4516745) (not b!4516781) (not b!4517809) (not b!4516878) (not b!4517577) (not b!4516920) (not d!1390866) (not d!1390792) (not b!4517319) (not b!4517453) (not b!4516777) (not d!1390870) (not bm!314683) (not d!1390762) (not d!1390872) (not b!4516735) (not b!4517726) (not b!4517260) (not d!1391108) (not b!4517818) (not b!4517648) (not d!1390564) (not b!4517535) (not b!4517541) (not b!4516810) (not d!1391154) (not b!4516813) (not b!4517314) (not b!4516993) (not b_lambda!154537) (not b!4517312) (not b!4516812) (not b!4516702) (not b_lambda!154573) (not d!1390702) (not bm!314691) (not b!4517766) (not d!1390562) (not b!4516708) (not b!4517824) (not b!4517380) (not bm!314601) (not b!4516724) (not b_lambda!154541) (not b!4517531) (not b!4517622) (not b!4517372) (not bs!853510) (not bm!314671) (not b_lambda!154433) (not bm!314642) (not b!4517220) (not b!4517366) (not b!4517043) (not b!4517041) (not b!4517182) (not bm!314697) (not d!1391106) (not b!4516741) (not b!4517647) (not b!4517494) (not b!4516694) (not d!1390898) (not b_lambda!154561) (not b_lambda!154531) (not b!4517657) (not b_lambda!154529) (not bm!314705) (not d!1390986) (not d!1390668) (not bm!314684) (not bs!853518) (not d!1391140) (not d!1390566) (not bs!853496) (not b!4517428) (not b!4517037) (not b!4517525) (not b!4517734) (not bm!314670) (not bs!853505) (not b!4517717) (not bm!314593) (not bm!314716) (not bm!314715) (not b!4517258) (not b!4517608) (not bm!314608) (not b!4517640) (not b!4517626) (not b_lambda!154547) (not b!4517770) (not b!4516736) (not bs!853522) (not b!4517607) (not d!1391040) (not d!1390726) (not d!1390538) (not b!4517189) (not b!4517430) (not bm!314645) (not b!4517434) (not d!1390800) (not d!1390496) (not b_lambda!154551) (not b!4517386) (not bm!314643) (not b!4517540) (not d!1390642) (not bs!853502) (not b!4516806) (not b!4516800) (not b!4517259) (not b!4516725) (not bm!314647) (not b!4517720) (not b!4516742) (not b!4517703) tp_is_empty!27901 (not b!4517715) (not b!4517711) (not bs!853515) (not d!1390852) (not b!4517491) (not b!4516939) (not b!4517706) (not b!4517042) (not b!4517545) (not d!1390700) (not d!1390964) (not b_lambda!154557) (not b!4517218) (not bm!314702) (not bs!853506) (not d!1390738) (not b!4517767) (not b!4517694) (not b_lambda!154553) (not bm!314603) (not b!4517413) (not bs!853512) (not b!4517355) (not b!4517437) (not b!4517744) (not b!4517262) (not b!4517188) (not bm!314676) (not b!4516688) (not b!4517174) (not b!4517702) (not b!4517014) (not b!4516798) (not b!4517603) (not b!4517030) (not d!1390824) (not d!1390754) (not bm!314598) (not b!4517548) (not bs!853501) (not b!4517305) (not d!1390734) (not b!4517719) (not b!4516758) (not b!4517364) (not b!4516883) (not d!1390966) (not b!4517643) (not b!4517743) (not d!1390822) (not b!4516918) (not b!4517512) (not b!4517232) (not b!4517550) (not b!4517438) (not bs!853520) (not b!4517500) (not b!4516935) (not b!4517496) (not d!1391146) (not d!1390890) (not bs!853493) (not b!4517186) (not b!4516961) (not b_lambda!154523) (not d!1390902) (not b!4517221) (not bm!314646) (not b!4517410) (not bm!314720) (not b!4516959) (not b!4517023) (not b!4517530) (not d!1390816) (not b!4516815) (not d!1390546) (not b_lambda!154555) (not bs!853517) (not bm!314696) (not b!4517606) (not b!4517331) (not b_lambda!154539) (not b!4516706) (not d!1390526) (not b_lambda!154533) (not b!4516808) (not b!4516881) (not d!1390808) (not bm!314672) (not b!4517490) (not d!1391058) (not b!4516958) (not d!1390842) (not b!4517412) (not b!4517433) (not b!4516925) (not b_lambda!154521) (not b!4517737) (not b!4517429) (not b!4517716) (not b_lambda!154559) (not b!4517354) (not d!1390488) (not b!4517740) (not bs!853500) (not b!4516950) (not d!1390900) (not d!1391142) (not d!1390502) (not b!4516940) (not b!4517307) (not d!1391118) (not b!4517808) (not b!4517040) (not b!4517536) (not b!4517243) (not b!4517330) (not b!4517554) (not b!4517609) (not d!1391004) (not b!4517390) (not bm!314695) (not d!1391086) (not b!4517555) (not b!4517034) (not b!4517556) (not d!1390558) (not b!4517045) (not b!4517821) (not b!4516704) (not b!4517036) (not b!4517184) (not d!1390694) (not b!4516723) (not d!1390882) (not b!4517451) (not b!4517359) (not b_lambda!154567) (not b_lambda!154397) (not b!4517449) (not b!4517802) (not bm!314677) (not b!4517748) (not b!4517765) (not b!4517575) (not d!1390924) (not b!4516816) (not d!1390960) (not b!4517222) (not b!4516948) (not b!4517527) (not b_lambda!154563) (not d!1391028) (not bm!314600) (not b!4517611) (not b_lambda!154543) (not b!4517203) (not d!1390540) (not d!1390756) (not b!4516928) (not b!4517224) (not b!4516763) (not b!4516877) (not b_lambda!154535) (not b!4516805) (not d!1391138) (not b!4517692) (not bs!853508) (not d!1390676) (not bs!853514) (not b!4517249) (not b!4516947) (not b!4517442) (not b_lambda!154575) (not bm!314596) (not d!1390698) (not b!4517263) (not b!4517793) (not b!4517820) (not b!4517387) (not b!4517695) (not b!4517191) (not b!4517026) (not b!4517187) (not bm!314711) (not b!4517644) (not b!4517519) (not bs!853498) (not b!4516956) (not d!1390774) (not b!4517799) (not b!4516957) (not b!4516738) (not b!4517032) (not d!1390768) (not b!4517623) (not b!4517700) (not d!1390646) (not b!4516760) (not b_lambda!154527) (not bm!314706) (not b!4517758) (not b!4516960) (not d!1390504) (not b!4517804) (not bm!314599) (not d!1390776) (not b!4517539) (not bs!853516) (not d!1390968) (not b!4516762) (not b!4517389) (not b!4517216) (not d!1391122) (not b!4517796) (not b!4516802) (not b!4516809) (not d!1390618) (not d!1391104) (not b!4516744) (not d!1390570) (not b!4517044) (not d!1390686) (not b!4517020) (not b!4517489) (not d!1390972) (not d!1390548) (not d!1390568) (not d!1390626) (not b!4517625) (not b!4517198) (not b!4517697) (not b_lambda!154579) (not b!4517769) (not b!4517551) (not d!1390520) (not b!4517435) (not b!4516755) (not b!4517813) (not d!1390976) (not bm!314707) (not d!1390920) (not d!1390992) (not b!4517516) (not d!1391080) (not b!4517797) (not d!1390772) (not b!4517573) (not bs!853503) (not d!1390820) (not b!4517205) (not b!4517646) (not b!4517499) (not b!4517190) (not d!1391050) (not bs!853513) (not b!4516938) (not b!4517252) (not b!4517452) (not b!4517175) (not bm!314698) (not d!1390918) (not b!4517407) (not b!4517444) (not b!4516804) (not b!4517028) (not b!4517576) (not d!1390484) (not b!4517533) (not d!1391082) (not d!1391150) (not d!1391156) (not b!4517560) (not b_lambda!154545) (not b_lambda!154569) (not b_lambda!154445) (not b_lambda!154395) (not b!4517457) (not b!4517261) (not b!4517610) (not b!4517497) (not b!4517707) (not bs!853504) (not b!4517693) (not d!1390530) (not d!1391078) (not d!1390748) (not bm!314664) (not bm!314597) (not d!1391092) (not b_lambda!154565) (not b!4517415) (not d!1391148))
(check-sat)
