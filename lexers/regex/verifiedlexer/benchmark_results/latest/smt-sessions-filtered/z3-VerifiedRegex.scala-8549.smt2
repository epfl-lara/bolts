; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!450944 () Bool)

(assert start!450944)

(declare-fun bs!878933 () Bool)

(declare-fun b!4541605 () Bool)

(assert (= bs!878933 (and b!4541605 start!450944)))

(declare-fun lambda!176468 () Int)

(declare-fun lambda!176467 () Int)

(assert (=> bs!878933 (not (= lambda!176468 lambda!176467))))

(assert (=> b!4541605 true))

(assert (=> b!4541605 true))

(assert (=> b!4541605 true))

(declare-fun b!4541592 () Bool)

(declare-fun e!2830159 () Bool)

(declare-fun e!2830150 () Bool)

(assert (=> b!4541592 (= e!2830159 e!2830150)))

(declare-fun res!1892948 () Bool)

(assert (=> b!4541592 (=> res!1892948 e!2830150)))

(declare-datatypes ((K!12150 0))(
  ( (K!12151 (val!17991 Int)) )
))
(declare-datatypes ((V!12396 0))(
  ( (V!12397 (val!17992 Int)) )
))
(declare-datatypes ((tuple2!51250 0))(
  ( (tuple2!51251 (_1!28919 K!12150) (_2!28919 V!12396)) )
))
(declare-datatypes ((List!50890 0))(
  ( (Nil!50766) (Cons!50766 (h!56651 tuple2!51250) (t!357852 List!50890)) )
))
(declare-datatypes ((ListMap!3677 0))(
  ( (ListMap!3678 (toList!4415 List!50890)) )
))
(declare-fun lt!1716299 () ListMap!3677)

(declare-fun lt!1716285 () ListMap!3677)

(declare-fun eq!661 (ListMap!3677 ListMap!3677) Bool)

(assert (=> b!4541592 (= res!1892948 (not (eq!661 lt!1716299 lt!1716285)))))

(declare-datatypes ((tuple2!51252 0))(
  ( (tuple2!51253 (_1!28920 (_ BitVec 64)) (_2!28920 List!50890)) )
))
(declare-fun lt!1716280 () tuple2!51252)

(declare-fun lt!1716274 () ListMap!3677)

(declare-fun addToMapMapFromBucket!731 (List!50890 ListMap!3677) ListMap!3677)

(assert (=> b!4541592 (= lt!1716285 (addToMapMapFromBucket!731 (_2!28920 lt!1716280) lt!1716274))))

(declare-datatypes ((List!50891 0))(
  ( (Nil!50767) (Cons!50767 (h!56652 tuple2!51252) (t!357853 List!50891)) )
))
(declare-datatypes ((ListLongMap!3047 0))(
  ( (ListLongMap!3048 (toList!4416 List!50891)) )
))
(declare-fun lt!1716265 () ListLongMap!3047)

(declare-fun extractMap!1260 (List!50891) ListMap!3677)

(assert (=> b!4541592 (= lt!1716299 (extractMap!1260 (toList!4416 lt!1716265)))))

(declare-fun b!4541593 () Bool)

(declare-fun e!2830153 () Bool)

(declare-fun e!2830147 () Bool)

(assert (=> b!4541593 (= e!2830153 e!2830147)))

(declare-fun res!1892936 () Bool)

(assert (=> b!4541593 (=> (not res!1892936) (not e!2830147))))

(declare-fun lt!1716283 () ListMap!3677)

(declare-fun key!3287 () K!12150)

(declare-fun contains!13567 (ListMap!3677 K!12150) Bool)

(assert (=> b!4541593 (= res!1892936 (contains!13567 lt!1716283 key!3287))))

(declare-fun lm!1477 () ListLongMap!3047)

(assert (=> b!4541593 (= lt!1716283 (extractMap!1260 (toList!4416 lm!1477)))))

(declare-fun b!4541594 () Bool)

(declare-datatypes ((Unit!98804 0))(
  ( (Unit!98805) )
))
(declare-fun e!2830160 () Unit!98804)

(declare-fun Unit!98806 () Unit!98804)

(assert (=> b!4541594 (= e!2830160 Unit!98806)))

(declare-fun b!4541595 () Bool)

(declare-fun e!2830143 () Bool)

(declare-fun e!2830155 () Bool)

(assert (=> b!4541595 (= e!2830143 e!2830155)))

(declare-fun res!1892951 () Bool)

(assert (=> b!4541595 (=> res!1892951 e!2830155)))

(declare-fun lt!1716278 () ListMap!3677)

(declare-fun lt!1716290 () ListMap!3677)

(assert (=> b!4541595 (= res!1892951 (not (eq!661 lt!1716278 lt!1716290)))))

(assert (=> b!4541595 (= lt!1716278 lt!1716290)))

(declare-fun lt!1716292 () ListMap!3677)

(declare-fun -!430 (ListMap!3677 K!12150) ListMap!3677)

(assert (=> b!4541595 (= lt!1716290 (-!430 (addToMapMapFromBucket!731 (_2!28920 lt!1716280) lt!1716292) key!3287))))

(declare-fun lt!1716298 () Unit!98804)

(declare-fun lemmaAddToMapFromBucketMinusKeyIsCommutative!28 (ListMap!3677 K!12150 List!50890) Unit!98804)

(assert (=> b!4541595 (= lt!1716298 (lemmaAddToMapFromBucketMinusKeyIsCommutative!28 lt!1716292 key!3287 (_2!28920 lt!1716280)))))

(declare-fun b!4541596 () Bool)

(declare-fun e!2830154 () Bool)

(declare-fun e!2830148 () Bool)

(assert (=> b!4541596 (= e!2830154 e!2830148)))

(declare-fun res!1892935 () Bool)

(assert (=> b!4541596 (=> res!1892935 e!2830148)))

(declare-fun lt!1716294 () Bool)

(assert (=> b!4541596 (= res!1892935 lt!1716294)))

(declare-fun lt!1716270 () Unit!98804)

(declare-fun e!2830158 () Unit!98804)

(assert (=> b!4541596 (= lt!1716270 e!2830158)))

(declare-fun c!775732 () Bool)

(assert (=> b!4541596 (= c!775732 lt!1716294)))

(declare-fun lt!1716281 () List!50890)

(declare-fun containsKey!1888 (List!50890 K!12150) Bool)

(assert (=> b!4541596 (= lt!1716294 (not (containsKey!1888 lt!1716281 key!3287)))))

(declare-fun b!4541597 () Bool)

(declare-fun e!2830156 () Bool)

(declare-fun e!2830151 () Bool)

(assert (=> b!4541597 (= e!2830156 e!2830151)))

(declare-fun res!1892949 () Bool)

(assert (=> b!4541597 (=> res!1892949 e!2830151)))

(assert (=> b!4541597 (= res!1892949 (not (contains!13567 (extractMap!1260 (t!357853 (toList!4416 lm!1477))) key!3287)))))

(assert (=> b!4541597 (contains!13567 lt!1716292 key!3287)))

(declare-fun lt!1716276 () ListLongMap!3047)

(assert (=> b!4541597 (= lt!1716292 (extractMap!1260 (toList!4416 lt!1716276)))))

(declare-datatypes ((Hashable!5599 0))(
  ( (HashableExt!5598 (__x!31302 Int)) )
))
(declare-fun hashF!1107 () Hashable!5599)

(declare-fun lt!1716288 () Unit!98804)

(declare-fun lemmaListContainsThenExtractedMapContains!174 (ListLongMap!3047 K!12150 Hashable!5599) Unit!98804)

(assert (=> b!4541597 (= lt!1716288 (lemmaListContainsThenExtractedMapContains!174 lt!1716276 key!3287 hashF!1107))))

(declare-fun res!1892941 () Bool)

(assert (=> start!450944 (=> (not res!1892941) (not e!2830153))))

(declare-fun forall!10355 (List!50891 Int) Bool)

(assert (=> start!450944 (= res!1892941 (forall!10355 (toList!4416 lm!1477) lambda!176467))))

(assert (=> start!450944 e!2830153))

(assert (=> start!450944 true))

(declare-fun e!2830144 () Bool)

(declare-fun inv!66334 (ListLongMap!3047) Bool)

(assert (=> start!450944 (and (inv!66334 lm!1477) e!2830144)))

(declare-fun tp_is_empty!28093 () Bool)

(assert (=> start!450944 tp_is_empty!28093))

(declare-fun e!2830146 () Bool)

(assert (=> start!450944 e!2830146))

(declare-fun b!4541598 () Bool)

(declare-fun e!2830145 () Bool)

(declare-fun lt!1716282 () ListLongMap!3047)

(assert (=> b!4541598 (= e!2830145 (forall!10355 (toList!4416 lt!1716282) lambda!176467))))

(declare-fun b!4541599 () Bool)

(declare-fun res!1892959 () Bool)

(assert (=> b!4541599 (=> res!1892959 e!2830154)))

(declare-fun hash!344 () (_ BitVec 64))

(declare-fun apply!11941 (ListLongMap!3047 (_ BitVec 64)) List!50890)

(assert (=> b!4541599 (= res!1892959 (not (= (apply!11941 lt!1716276 hash!344) lt!1716281)))))

(declare-fun b!4541600 () Bool)

(declare-fun res!1892942 () Bool)

(assert (=> b!4541600 (=> res!1892942 e!2830145)))

(declare-fun lt!1716277 () ListMap!3677)

(assert (=> b!4541600 (= res!1892942 (not (eq!661 lt!1716299 lt!1716277)))))

(declare-fun b!4541601 () Bool)

(declare-fun e!2830149 () Bool)

(assert (=> b!4541601 (= e!2830147 e!2830149)))

(declare-fun res!1892953 () Bool)

(assert (=> b!4541601 (=> (not res!1892953) (not e!2830149))))

(declare-fun lt!1716289 () (_ BitVec 64))

(assert (=> b!4541601 (= res!1892953 (= lt!1716289 hash!344))))

(declare-fun hash!2931 (Hashable!5599 K!12150) (_ BitVec 64))

(assert (=> b!4541601 (= lt!1716289 (hash!2931 hashF!1107 key!3287))))

(declare-fun b!4541602 () Bool)

(assert (=> b!4541602 (= e!2830155 e!2830145)))

(declare-fun res!1892945 () Bool)

(assert (=> b!4541602 (=> res!1892945 e!2830145)))

(assert (=> b!4541602 (= res!1892945 (not (eq!661 lt!1716278 lt!1716277)))))

(assert (=> b!4541602 (= lt!1716277 (-!430 lt!1716283 key!3287))))

(declare-fun b!4541603 () Bool)

(declare-fun res!1892954 () Bool)

(declare-fun e!2830161 () Bool)

(assert (=> b!4541603 (=> res!1892954 e!2830161)))

(get-info :version)

(assert (=> b!4541603 (= res!1892954 (or ((_ is Nil!50767) (toList!4416 lm!1477)) (= (_1!28920 (h!56652 (toList!4416 lm!1477))) hash!344)))))

(declare-fun b!4541604 () Bool)

(declare-fun e!2830157 () Bool)

(assert (=> b!4541604 (= e!2830157 e!2830143)))

(declare-fun res!1892937 () Bool)

(assert (=> b!4541604 (=> res!1892937 e!2830143)))

(declare-fun lt!1716267 () Bool)

(assert (=> b!4541604 (= res!1892937 lt!1716267)))

(declare-fun lt!1716300 () Unit!98804)

(assert (=> b!4541604 (= lt!1716300 e!2830160)))

(declare-fun c!775733 () Bool)

(assert (=> b!4541604 (= c!775733 lt!1716267)))

(assert (=> b!4541604 (= lt!1716267 (containsKey!1888 (_2!28920 lt!1716280) key!3287))))

(declare-fun Unit!98807 () Unit!98804)

(assert (=> b!4541605 (= e!2830160 Unit!98807)))

(assert (=> b!4541605 (not (= hash!344 (_1!28920 lt!1716280)))))

(declare-datatypes ((Option!11215 0))(
  ( (None!11214) (Some!11214 (v!44920 tuple2!51250)) )
))
(declare-fun lt!1716279 () Option!11215)

(declare-fun getPair!220 (List!50890 K!12150) Option!11215)

(assert (=> b!4541605 (= lt!1716279 (getPair!220 (_2!28920 lt!1716280) key!3287))))

(declare-fun lt!1716273 () Unit!98804)

(declare-fun forallContained!2618 (List!50891 Int tuple2!51252) Unit!98804)

(assert (=> b!4541605 (= lt!1716273 (forallContained!2618 (toList!4416 lm!1477) lambda!176468 (h!56652 (toList!4416 lm!1477))))))

(declare-fun lt!1716291 () Unit!98804)

(declare-fun lambda!176469 () Int)

(declare-fun forallContained!2619 (List!50890 Int tuple2!51250) Unit!98804)

(declare-fun get!16698 (Option!11215) tuple2!51250)

(assert (=> b!4541605 (= lt!1716291 (forallContained!2619 (_2!28920 (h!56652 (toList!4416 lm!1477))) lambda!176469 (tuple2!51251 key!3287 (_2!28919 (get!16698 lt!1716279)))))))

(assert (=> b!4541605 false))

(declare-fun b!4541606 () Bool)

(assert (=> b!4541606 (= e!2830161 e!2830154)))

(declare-fun res!1892955 () Bool)

(assert (=> b!4541606 (=> res!1892955 e!2830154)))

(declare-fun contains!13568 (ListLongMap!3047 (_ BitVec 64)) Bool)

(assert (=> b!4541606 (= res!1892955 (not (contains!13568 lt!1716276 hash!344)))))

(declare-fun tail!7810 (ListLongMap!3047) ListLongMap!3047)

(assert (=> b!4541606 (= lt!1716276 (tail!7810 lm!1477))))

(declare-fun b!4541607 () Bool)

(declare-fun res!1892940 () Bool)

(assert (=> b!4541607 (=> res!1892940 e!2830161)))

(declare-fun newBucket!178 () List!50890)

(declare-fun noDuplicateKeys!1204 (List!50890) Bool)

(assert (=> b!4541607 (= res!1892940 (not (noDuplicateKeys!1204 newBucket!178)))))

(declare-fun b!4541608 () Bool)

(declare-fun res!1892943 () Bool)

(assert (=> b!4541608 (=> (not res!1892943) (not e!2830149))))

(declare-fun allKeysSameHash!1058 (List!50890 (_ BitVec 64) Hashable!5599) Bool)

(assert (=> b!4541608 (= res!1892943 (allKeysSameHash!1058 newBucket!178 hash!344 hashF!1107))))

(declare-fun b!4541609 () Bool)

(declare-fun tp_is_empty!28095 () Bool)

(declare-fun tp!1338697 () Bool)

(assert (=> b!4541609 (= e!2830146 (and tp_is_empty!28093 tp_is_empty!28095 tp!1338697))))

(declare-fun b!4541610 () Bool)

(declare-fun tp!1338696 () Bool)

(assert (=> b!4541610 (= e!2830144 tp!1338696)))

(declare-fun b!4541611 () Bool)

(declare-fun res!1892939 () Bool)

(assert (=> b!4541611 (=> res!1892939 e!2830145)))

(declare-fun lt!1716286 () ListMap!3677)

(assert (=> b!4541611 (= res!1892939 (not (eq!661 lt!1716299 (-!430 lt!1716286 key!3287))))))

(declare-fun b!4541612 () Bool)

(declare-fun res!1892946 () Bool)

(declare-fun e!2830152 () Bool)

(assert (=> b!4541612 (=> res!1892946 e!2830152)))

(assert (=> b!4541612 (= res!1892946 (bvsge (_1!28920 lt!1716280) hash!344))))

(declare-fun b!4541613 () Bool)

(assert (=> b!4541613 (= e!2830149 (not e!2830161))))

(declare-fun res!1892960 () Bool)

(assert (=> b!4541613 (=> res!1892960 e!2830161)))

(declare-fun removePairForKey!831 (List!50890 K!12150) List!50890)

(assert (=> b!4541613 (= res!1892960 (not (= newBucket!178 (removePairForKey!831 lt!1716281 key!3287))))))

(declare-fun lt!1716296 () tuple2!51252)

(declare-fun lt!1716284 () Unit!98804)

(assert (=> b!4541613 (= lt!1716284 (forallContained!2618 (toList!4416 lm!1477) lambda!176467 lt!1716296))))

(declare-fun contains!13569 (List!50891 tuple2!51252) Bool)

(assert (=> b!4541613 (contains!13569 (toList!4416 lm!1477) lt!1716296)))

(assert (=> b!4541613 (= lt!1716296 (tuple2!51253 hash!344 lt!1716281))))

(declare-fun lt!1716271 () Unit!98804)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!716 (List!50891 (_ BitVec 64) List!50890) Unit!98804)

(assert (=> b!4541613 (= lt!1716271 (lemmaGetValueByKeyImpliesContainsTuple!716 (toList!4416 lm!1477) hash!344 lt!1716281))))

(assert (=> b!4541613 (= lt!1716281 (apply!11941 lm!1477 hash!344))))

(assert (=> b!4541613 (contains!13568 lm!1477 lt!1716289)))

(declare-fun lt!1716287 () Unit!98804)

(declare-fun lemmaInGenMapThenLongMapContainsHash!278 (ListLongMap!3047 K!12150 Hashable!5599) Unit!98804)

(assert (=> b!4541613 (= lt!1716287 (lemmaInGenMapThenLongMapContainsHash!278 lm!1477 key!3287 hashF!1107))))

(declare-fun b!4541614 () Bool)

(declare-fun Unit!98808 () Unit!98804)

(assert (=> b!4541614 (= e!2830158 Unit!98808)))

(declare-fun b!4541615 () Bool)

(declare-fun res!1892950 () Bool)

(assert (=> b!4541615 (=> res!1892950 e!2830159)))

(declare-fun head!9488 (ListLongMap!3047) tuple2!51252)

(assert (=> b!4541615 (= res!1892950 (not (= (head!9488 lt!1716265) lt!1716280)))))

(declare-fun b!4541616 () Bool)

(declare-fun res!1892957 () Bool)

(assert (=> b!4541616 (=> res!1892957 e!2830154)))

(assert (=> b!4541616 (= res!1892957 (not (contains!13569 (t!357853 (toList!4416 lm!1477)) lt!1716296)))))

(declare-fun b!4541617 () Bool)

(assert (=> b!4541617 (= e!2830151 e!2830152)))

(declare-fun res!1892938 () Bool)

(assert (=> b!4541617 (=> res!1892938 e!2830152)))

(assert (=> b!4541617 (= res!1892938 (not (eq!661 lt!1716286 lt!1716283)))))

(declare-fun +!1614 (ListLongMap!3047 tuple2!51252) ListLongMap!3047)

(assert (=> b!4541617 (= lt!1716286 (extractMap!1260 (toList!4416 (+!1614 lt!1716276 lt!1716280))))))

(assert (=> b!4541617 (= lt!1716280 (head!9488 lm!1477))))

(declare-fun lt!1716275 () ListMap!3677)

(assert (=> b!4541617 (eq!661 lt!1716274 lt!1716275)))

(assert (=> b!4541617 (= lt!1716275 (-!430 lt!1716292 key!3287))))

(declare-fun lt!1716269 () ListLongMap!3047)

(assert (=> b!4541617 (= lt!1716274 (extractMap!1260 (toList!4416 lt!1716269)))))

(declare-fun lt!1716295 () tuple2!51252)

(assert (=> b!4541617 (= lt!1716269 (+!1614 lt!1716276 lt!1716295))))

(assert (=> b!4541617 (= lt!1716295 (tuple2!51253 hash!344 newBucket!178))))

(declare-fun lt!1716266 () Unit!98804)

(declare-fun lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMap!189 (ListLongMap!3047 (_ BitVec 64) List!50890 K!12150 Hashable!5599) Unit!98804)

(assert (=> b!4541617 (= lt!1716266 (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMap!189 lt!1716276 hash!344 newBucket!178 key!3287 hashF!1107))))

(declare-fun b!4541618 () Bool)

(declare-fun res!1892956 () Bool)

(assert (=> b!4541618 (=> (not res!1892956) (not e!2830153))))

(declare-fun allKeysSameHashInMap!1311 (ListLongMap!3047 Hashable!5599) Bool)

(assert (=> b!4541618 (= res!1892956 (allKeysSameHashInMap!1311 lm!1477 hashF!1107))))

(declare-fun b!4541619 () Bool)

(assert (=> b!4541619 (= e!2830148 e!2830156)))

(declare-fun res!1892934 () Bool)

(assert (=> b!4541619 (=> res!1892934 e!2830156)))

(declare-fun containsKeyBiggerList!184 (List!50891 K!12150) Bool)

(assert (=> b!4541619 (= res!1892934 (not (containsKeyBiggerList!184 (t!357853 (toList!4416 lm!1477)) key!3287)))))

(assert (=> b!4541619 (containsKeyBiggerList!184 (toList!4416 lt!1716276) key!3287)))

(declare-fun lt!1716268 () Unit!98804)

(declare-fun lemmaInLongMapThenContainsKeyBiggerList!120 (ListLongMap!3047 K!12150 Hashable!5599) Unit!98804)

(assert (=> b!4541619 (= lt!1716268 (lemmaInLongMapThenContainsKeyBiggerList!120 lt!1716276 key!3287 hashF!1107))))

(declare-fun b!4541620 () Bool)

(declare-fun Unit!98809 () Unit!98804)

(assert (=> b!4541620 (= e!2830158 Unit!98809)))

(declare-fun lt!1716272 () Unit!98804)

(declare-fun lemmaNotInItsHashBucketThenNotInMap!192 (ListLongMap!3047 K!12150 Hashable!5599) Unit!98804)

(assert (=> b!4541620 (= lt!1716272 (lemmaNotInItsHashBucketThenNotInMap!192 lm!1477 key!3287 hashF!1107))))

(assert (=> b!4541620 false))

(declare-fun b!4541621 () Bool)

(assert (=> b!4541621 (= e!2830152 e!2830159)))

(declare-fun res!1892944 () Bool)

(assert (=> b!4541621 (=> res!1892944 e!2830159)))

(assert (=> b!4541621 (= res!1892944 (not (= lt!1716265 lt!1716282)))))

(assert (=> b!4541621 (= lt!1716282 (+!1614 lm!1477 lt!1716295))))

(assert (=> b!4541621 (= lt!1716265 (+!1614 lt!1716269 lt!1716280))))

(declare-fun b!4541622 () Bool)

(declare-fun e!2830142 () Bool)

(assert (=> b!4541622 (= e!2830142 e!2830157)))

(declare-fun res!1892947 () Bool)

(assert (=> b!4541622 (=> res!1892947 e!2830157)))

(assert (=> b!4541622 (= res!1892947 (not (noDuplicateKeys!1204 (_2!28920 lt!1716280))))))

(declare-fun lt!1716297 () Unit!98804)

(assert (=> b!4541622 (= lt!1716297 (forallContained!2618 (toList!4416 lm!1477) lambda!176467 (h!56652 (toList!4416 lm!1477))))))

(declare-fun b!4541623 () Bool)

(declare-fun res!1892958 () Bool)

(assert (=> b!4541623 (=> res!1892958 e!2830152)))

(assert (=> b!4541623 (= res!1892958 (not (eq!661 lt!1716283 lt!1716286)))))

(declare-fun b!4541624 () Bool)

(assert (=> b!4541624 (= e!2830150 e!2830142)))

(declare-fun res!1892952 () Bool)

(assert (=> b!4541624 (=> res!1892952 e!2830142)))

(assert (=> b!4541624 (= res!1892952 (not (eq!661 lt!1716299 lt!1716278)))))

(assert (=> b!4541624 (eq!661 lt!1716285 lt!1716278)))

(assert (=> b!4541624 (= lt!1716278 (addToMapMapFromBucket!731 (_2!28920 lt!1716280) lt!1716275))))

(declare-fun lt!1716293 () Unit!98804)

(declare-fun lemmaAddToMapFromBucketPreservesEquivalence!80 (ListMap!3677 ListMap!3677 List!50890) Unit!98804)

(assert (=> b!4541624 (= lt!1716293 (lemmaAddToMapFromBucketPreservesEquivalence!80 lt!1716274 lt!1716275 (_2!28920 lt!1716280)))))

(assert (= (and start!450944 res!1892941) b!4541618))

(assert (= (and b!4541618 res!1892956) b!4541593))

(assert (= (and b!4541593 res!1892936) b!4541601))

(assert (= (and b!4541601 res!1892953) b!4541608))

(assert (= (and b!4541608 res!1892943) b!4541613))

(assert (= (and b!4541613 (not res!1892960)) b!4541607))

(assert (= (and b!4541607 (not res!1892940)) b!4541603))

(assert (= (and b!4541603 (not res!1892954)) b!4541606))

(assert (= (and b!4541606 (not res!1892955)) b!4541599))

(assert (= (and b!4541599 (not res!1892959)) b!4541616))

(assert (= (and b!4541616 (not res!1892957)) b!4541596))

(assert (= (and b!4541596 c!775732) b!4541620))

(assert (= (and b!4541596 (not c!775732)) b!4541614))

(assert (= (and b!4541596 (not res!1892935)) b!4541619))

(assert (= (and b!4541619 (not res!1892934)) b!4541597))

(assert (= (and b!4541597 (not res!1892949)) b!4541617))

(assert (= (and b!4541617 (not res!1892938)) b!4541623))

(assert (= (and b!4541623 (not res!1892958)) b!4541612))

(assert (= (and b!4541612 (not res!1892946)) b!4541621))

(assert (= (and b!4541621 (not res!1892944)) b!4541615))

(assert (= (and b!4541615 (not res!1892950)) b!4541592))

(assert (= (and b!4541592 (not res!1892948)) b!4541624))

(assert (= (and b!4541624 (not res!1892952)) b!4541622))

(assert (= (and b!4541622 (not res!1892947)) b!4541604))

(assert (= (and b!4541604 c!775733) b!4541605))

(assert (= (and b!4541604 (not c!775733)) b!4541594))

(assert (= (and b!4541604 (not res!1892937)) b!4541595))

(assert (= (and b!4541595 (not res!1892951)) b!4541602))

(assert (= (and b!4541602 (not res!1892945)) b!4541600))

(assert (= (and b!4541600 (not res!1892942)) b!4541611))

(assert (= (and b!4541611 (not res!1892939)) b!4541598))

(assert (= start!450944 b!4541610))

(assert (= (and start!450944 ((_ is Cons!50766) newBucket!178)) b!4541609))

(declare-fun m!5309325 () Bool)

(assert (=> b!4541619 m!5309325))

(declare-fun m!5309327 () Bool)

(assert (=> b!4541619 m!5309327))

(declare-fun m!5309329 () Bool)

(assert (=> b!4541619 m!5309329))

(declare-fun m!5309331 () Bool)

(assert (=> b!4541601 m!5309331))

(declare-fun m!5309333 () Bool)

(assert (=> b!4541613 m!5309333))

(declare-fun m!5309335 () Bool)

(assert (=> b!4541613 m!5309335))

(declare-fun m!5309337 () Bool)

(assert (=> b!4541613 m!5309337))

(declare-fun m!5309339 () Bool)

(assert (=> b!4541613 m!5309339))

(declare-fun m!5309341 () Bool)

(assert (=> b!4541613 m!5309341))

(declare-fun m!5309343 () Bool)

(assert (=> b!4541613 m!5309343))

(declare-fun m!5309345 () Bool)

(assert (=> b!4541613 m!5309345))

(declare-fun m!5309347 () Bool)

(assert (=> b!4541596 m!5309347))

(declare-fun m!5309349 () Bool)

(assert (=> b!4541598 m!5309349))

(declare-fun m!5309351 () Bool)

(assert (=> b!4541622 m!5309351))

(declare-fun m!5309353 () Bool)

(assert (=> b!4541622 m!5309353))

(declare-fun m!5309355 () Bool)

(assert (=> b!4541607 m!5309355))

(declare-fun m!5309357 () Bool)

(assert (=> b!4541618 m!5309357))

(declare-fun m!5309359 () Bool)

(assert (=> b!4541617 m!5309359))

(declare-fun m!5309361 () Bool)

(assert (=> b!4541617 m!5309361))

(declare-fun m!5309363 () Bool)

(assert (=> b!4541617 m!5309363))

(declare-fun m!5309365 () Bool)

(assert (=> b!4541617 m!5309365))

(declare-fun m!5309367 () Bool)

(assert (=> b!4541617 m!5309367))

(declare-fun m!5309369 () Bool)

(assert (=> b!4541617 m!5309369))

(declare-fun m!5309371 () Bool)

(assert (=> b!4541617 m!5309371))

(declare-fun m!5309373 () Bool)

(assert (=> b!4541617 m!5309373))

(declare-fun m!5309375 () Bool)

(assert (=> b!4541617 m!5309375))

(declare-fun m!5309377 () Bool)

(assert (=> b!4541620 m!5309377))

(declare-fun m!5309379 () Bool)

(assert (=> start!450944 m!5309379))

(declare-fun m!5309381 () Bool)

(assert (=> start!450944 m!5309381))

(declare-fun m!5309383 () Bool)

(assert (=> b!4541624 m!5309383))

(declare-fun m!5309385 () Bool)

(assert (=> b!4541624 m!5309385))

(declare-fun m!5309387 () Bool)

(assert (=> b!4541624 m!5309387))

(declare-fun m!5309389 () Bool)

(assert (=> b!4541624 m!5309389))

(declare-fun m!5309391 () Bool)

(assert (=> b!4541600 m!5309391))

(declare-fun m!5309393 () Bool)

(assert (=> b!4541602 m!5309393))

(declare-fun m!5309395 () Bool)

(assert (=> b!4541602 m!5309395))

(declare-fun m!5309397 () Bool)

(assert (=> b!4541597 m!5309397))

(declare-fun m!5309399 () Bool)

(assert (=> b!4541597 m!5309399))

(declare-fun m!5309401 () Bool)

(assert (=> b!4541597 m!5309401))

(declare-fun m!5309403 () Bool)

(assert (=> b!4541597 m!5309403))

(assert (=> b!4541597 m!5309401))

(declare-fun m!5309405 () Bool)

(assert (=> b!4541597 m!5309405))

(declare-fun m!5309407 () Bool)

(assert (=> b!4541608 m!5309407))

(declare-fun m!5309409 () Bool)

(assert (=> b!4541615 m!5309409))

(declare-fun m!5309411 () Bool)

(assert (=> b!4541592 m!5309411))

(declare-fun m!5309413 () Bool)

(assert (=> b!4541592 m!5309413))

(declare-fun m!5309415 () Bool)

(assert (=> b!4541592 m!5309415))

(declare-fun m!5309417 () Bool)

(assert (=> b!4541604 m!5309417))

(declare-fun m!5309419 () Bool)

(assert (=> b!4541616 m!5309419))

(declare-fun m!5309421 () Bool)

(assert (=> b!4541599 m!5309421))

(declare-fun m!5309423 () Bool)

(assert (=> b!4541595 m!5309423))

(declare-fun m!5309425 () Bool)

(assert (=> b!4541595 m!5309425))

(assert (=> b!4541595 m!5309425))

(declare-fun m!5309427 () Bool)

(assert (=> b!4541595 m!5309427))

(declare-fun m!5309429 () Bool)

(assert (=> b!4541595 m!5309429))

(declare-fun m!5309431 () Bool)

(assert (=> b!4541623 m!5309431))

(declare-fun m!5309433 () Bool)

(assert (=> b!4541605 m!5309433))

(declare-fun m!5309435 () Bool)

(assert (=> b!4541605 m!5309435))

(declare-fun m!5309437 () Bool)

(assert (=> b!4541605 m!5309437))

(declare-fun m!5309439 () Bool)

(assert (=> b!4541605 m!5309439))

(declare-fun m!5309441 () Bool)

(assert (=> b!4541611 m!5309441))

(assert (=> b!4541611 m!5309441))

(declare-fun m!5309443 () Bool)

(assert (=> b!4541611 m!5309443))

(declare-fun m!5309445 () Bool)

(assert (=> b!4541621 m!5309445))

(declare-fun m!5309447 () Bool)

(assert (=> b!4541621 m!5309447))

(declare-fun m!5309449 () Bool)

(assert (=> b!4541606 m!5309449))

(declare-fun m!5309451 () Bool)

(assert (=> b!4541606 m!5309451))

(declare-fun m!5309453 () Bool)

(assert (=> b!4541593 m!5309453))

(declare-fun m!5309455 () Bool)

(assert (=> b!4541593 m!5309455))

(check-sat (not b!4541608) (not b!4541595) (not b!4541610) tp_is_empty!28095 (not b!4541617) (not b!4541618) (not b!4541624) (not b!4541619) (not b!4541592) tp_is_empty!28093 (not b!4541611) (not b!4541621) (not b!4541602) (not b!4541604) (not b!4541609) (not b!4541598) (not b!4541623) (not b!4541615) (not b!4541600) (not b!4541606) (not b!4541620) (not b!4541622) (not b!4541601) (not b!4541605) (not b!4541597) (not b!4541596) (not b!4541616) (not b!4541607) (not start!450944) (not b!4541599) (not b!4541613) (not b!4541593))
(check-sat)
(get-model)

(declare-fun b!4541661 () Bool)

(declare-fun e!2830191 () Unit!98804)

(declare-fun lt!1716320 () Unit!98804)

(assert (=> b!4541661 (= e!2830191 lt!1716320)))

(declare-fun lt!1716321 () Unit!98804)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1059 (List!50890 K!12150) Unit!98804)

(assert (=> b!4541661 (= lt!1716321 (lemmaContainsKeyImpliesGetValueByKeyDefined!1059 (toList!4415 lt!1716283) key!3287))))

(declare-datatypes ((Option!11217 0))(
  ( (None!11216) (Some!11216 (v!44926 V!12396)) )
))
(declare-fun isDefined!8492 (Option!11217) Bool)

(declare-fun getValueByKey!1155 (List!50890 K!12150) Option!11217)

(assert (=> b!4541661 (isDefined!8492 (getValueByKey!1155 (toList!4415 lt!1716283) key!3287))))

(declare-fun lt!1716318 () Unit!98804)

(assert (=> b!4541661 (= lt!1716318 lt!1716321)))

(declare-fun lemmaInListThenGetKeysListContains!492 (List!50890 K!12150) Unit!98804)

(assert (=> b!4541661 (= lt!1716320 (lemmaInListThenGetKeysListContains!492 (toList!4415 lt!1716283) key!3287))))

(declare-fun call!316720 () Bool)

(assert (=> b!4541661 call!316720))

(declare-fun b!4541662 () Bool)

(declare-fun e!2830190 () Unit!98804)

(assert (=> b!4541662 (= e!2830191 e!2830190)))

(declare-fun c!775740 () Bool)

(assert (=> b!4541662 (= c!775740 call!316720)))

(declare-fun b!4541663 () Bool)

(declare-fun Unit!98811 () Unit!98804)

(assert (=> b!4541663 (= e!2830190 Unit!98811)))

(declare-fun b!4541664 () Bool)

(declare-fun e!2830187 () Bool)

(declare-datatypes ((List!50892 0))(
  ( (Nil!50768) (Cons!50768 (h!56655 K!12150) (t!357854 List!50892)) )
))
(declare-fun contains!13570 (List!50892 K!12150) Bool)

(declare-fun keys!17669 (ListMap!3677) List!50892)

(assert (=> b!4541664 (= e!2830187 (not (contains!13570 (keys!17669 lt!1716283) key!3287)))))

(declare-fun d!1404100 () Bool)

(declare-fun e!2830189 () Bool)

(assert (=> d!1404100 e!2830189))

(declare-fun res!1892979 () Bool)

(assert (=> d!1404100 (=> res!1892979 e!2830189)))

(assert (=> d!1404100 (= res!1892979 e!2830187)))

(declare-fun res!1892981 () Bool)

(assert (=> d!1404100 (=> (not res!1892981) (not e!2830187))))

(declare-fun lt!1716323 () Bool)

(assert (=> d!1404100 (= res!1892981 (not lt!1716323))))

(declare-fun lt!1716324 () Bool)

(assert (=> d!1404100 (= lt!1716323 lt!1716324)))

(declare-fun lt!1716322 () Unit!98804)

(assert (=> d!1404100 (= lt!1716322 e!2830191)))

(declare-fun c!775742 () Bool)

(assert (=> d!1404100 (= c!775742 lt!1716324)))

(declare-fun containsKey!1890 (List!50890 K!12150) Bool)

(assert (=> d!1404100 (= lt!1716324 (containsKey!1890 (toList!4415 lt!1716283) key!3287))))

(assert (=> d!1404100 (= (contains!13567 lt!1716283 key!3287) lt!1716323)))

(declare-fun b!4541665 () Bool)

(assert (=> b!4541665 false))

(declare-fun lt!1716319 () Unit!98804)

(declare-fun lt!1716317 () Unit!98804)

(assert (=> b!4541665 (= lt!1716319 lt!1716317)))

(assert (=> b!4541665 (containsKey!1890 (toList!4415 lt!1716283) key!3287)))

(declare-fun lemmaInGetKeysListThenContainsKey!495 (List!50890 K!12150) Unit!98804)

(assert (=> b!4541665 (= lt!1716317 (lemmaInGetKeysListThenContainsKey!495 (toList!4415 lt!1716283) key!3287))))

(declare-fun Unit!98812 () Unit!98804)

(assert (=> b!4541665 (= e!2830190 Unit!98812)))

(declare-fun b!4541666 () Bool)

(declare-fun e!2830186 () List!50892)

(assert (=> b!4541666 (= e!2830186 (keys!17669 lt!1716283))))

(declare-fun b!4541667 () Bool)

(declare-fun e!2830188 () Bool)

(assert (=> b!4541667 (= e!2830188 (contains!13570 (keys!17669 lt!1716283) key!3287))))

(declare-fun bm!316715 () Bool)

(assert (=> bm!316715 (= call!316720 (contains!13570 e!2830186 key!3287))))

(declare-fun c!775741 () Bool)

(assert (=> bm!316715 (= c!775741 c!775742)))

(declare-fun b!4541668 () Bool)

(declare-fun getKeysList!496 (List!50890) List!50892)

(assert (=> b!4541668 (= e!2830186 (getKeysList!496 (toList!4415 lt!1716283)))))

(declare-fun b!4541669 () Bool)

(assert (=> b!4541669 (= e!2830189 e!2830188)))

(declare-fun res!1892980 () Bool)

(assert (=> b!4541669 (=> (not res!1892980) (not e!2830188))))

(assert (=> b!4541669 (= res!1892980 (isDefined!8492 (getValueByKey!1155 (toList!4415 lt!1716283) key!3287)))))

(assert (= (and d!1404100 c!775742) b!4541661))

(assert (= (and d!1404100 (not c!775742)) b!4541662))

(assert (= (and b!4541662 c!775740) b!4541665))

(assert (= (and b!4541662 (not c!775740)) b!4541663))

(assert (= (or b!4541661 b!4541662) bm!316715))

(assert (= (and bm!316715 c!775741) b!4541668))

(assert (= (and bm!316715 (not c!775741)) b!4541666))

(assert (= (and d!1404100 res!1892981) b!4541664))

(assert (= (and d!1404100 (not res!1892979)) b!4541669))

(assert (= (and b!4541669 res!1892980) b!4541667))

(declare-fun m!5309467 () Bool)

(assert (=> b!4541664 m!5309467))

(assert (=> b!4541664 m!5309467))

(declare-fun m!5309469 () Bool)

(assert (=> b!4541664 m!5309469))

(declare-fun m!5309471 () Bool)

(assert (=> b!4541661 m!5309471))

(declare-fun m!5309473 () Bool)

(assert (=> b!4541661 m!5309473))

(assert (=> b!4541661 m!5309473))

(declare-fun m!5309475 () Bool)

(assert (=> b!4541661 m!5309475))

(declare-fun m!5309477 () Bool)

(assert (=> b!4541661 m!5309477))

(declare-fun m!5309479 () Bool)

(assert (=> d!1404100 m!5309479))

(assert (=> b!4541669 m!5309473))

(assert (=> b!4541669 m!5309473))

(assert (=> b!4541669 m!5309475))

(declare-fun m!5309481 () Bool)

(assert (=> bm!316715 m!5309481))

(assert (=> b!4541666 m!5309467))

(declare-fun m!5309483 () Bool)

(assert (=> b!4541668 m!5309483))

(assert (=> b!4541667 m!5309467))

(assert (=> b!4541667 m!5309467))

(assert (=> b!4541667 m!5309469))

(assert (=> b!4541665 m!5309479))

(declare-fun m!5309485 () Bool)

(assert (=> b!4541665 m!5309485))

(assert (=> b!4541593 d!1404100))

(declare-fun bs!878943 () Bool)

(declare-fun d!1404112 () Bool)

(assert (= bs!878943 (and d!1404112 start!450944)))

(declare-fun lambda!176478 () Int)

(assert (=> bs!878943 (= lambda!176478 lambda!176467)))

(declare-fun bs!878945 () Bool)

(assert (= bs!878945 (and d!1404112 b!4541605)))

(assert (=> bs!878945 (not (= lambda!176478 lambda!176468))))

(declare-fun lt!1716356 () ListMap!3677)

(declare-fun invariantList!1048 (List!50890) Bool)

(assert (=> d!1404112 (invariantList!1048 (toList!4415 lt!1716356))))

(declare-fun e!2830230 () ListMap!3677)

(assert (=> d!1404112 (= lt!1716356 e!2830230)))

(declare-fun c!775754 () Bool)

(assert (=> d!1404112 (= c!775754 ((_ is Cons!50767) (toList!4416 lm!1477)))))

(assert (=> d!1404112 (forall!10355 (toList!4416 lm!1477) lambda!176478)))

(assert (=> d!1404112 (= (extractMap!1260 (toList!4416 lm!1477)) lt!1716356)))

(declare-fun b!4541719 () Bool)

(assert (=> b!4541719 (= e!2830230 (addToMapMapFromBucket!731 (_2!28920 (h!56652 (toList!4416 lm!1477))) (extractMap!1260 (t!357853 (toList!4416 lm!1477)))))))

(declare-fun b!4541720 () Bool)

(assert (=> b!4541720 (= e!2830230 (ListMap!3678 Nil!50766))))

(assert (= (and d!1404112 c!775754) b!4541719))

(assert (= (and d!1404112 (not c!775754)) b!4541720))

(declare-fun m!5309535 () Bool)

(assert (=> d!1404112 m!5309535))

(declare-fun m!5309539 () Bool)

(assert (=> d!1404112 m!5309539))

(assert (=> b!4541719 m!5309401))

(assert (=> b!4541719 m!5309401))

(declare-fun m!5309543 () Bool)

(assert (=> b!4541719 m!5309543))

(assert (=> b!4541593 d!1404112))

(declare-fun d!1404136 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!8453 (List!50890) (InoxSet tuple2!51250))

(assert (=> d!1404136 (= (eq!661 lt!1716299 lt!1716285) (= (content!8453 (toList!4415 lt!1716299)) (content!8453 (toList!4415 lt!1716285))))))

(declare-fun bs!878947 () Bool)

(assert (= bs!878947 d!1404136))

(declare-fun m!5309545 () Bool)

(assert (=> bs!878947 m!5309545))

(declare-fun m!5309547 () Bool)

(assert (=> bs!878947 m!5309547))

(assert (=> b!4541592 d!1404136))

(declare-fun bs!878965 () Bool)

(declare-fun b!4541758 () Bool)

(assert (= bs!878965 (and b!4541758 b!4541605)))

(declare-fun lambda!176542 () Int)

(assert (=> bs!878965 (not (= lambda!176542 lambda!176469))))

(assert (=> b!4541758 true))

(declare-fun bs!878966 () Bool)

(declare-fun b!4541759 () Bool)

(assert (= bs!878966 (and b!4541759 b!4541605)))

(declare-fun lambda!176545 () Int)

(assert (=> bs!878966 (not (= lambda!176545 lambda!176469))))

(declare-fun bs!878967 () Bool)

(assert (= bs!878967 (and b!4541759 b!4541758)))

(assert (=> bs!878967 (= lambda!176545 lambda!176542)))

(assert (=> b!4541759 true))

(declare-fun lambda!176546 () Int)

(assert (=> bs!878966 (not (= lambda!176546 lambda!176469))))

(declare-fun lt!1716487 () ListMap!3677)

(assert (=> bs!878967 (= (= lt!1716487 lt!1716274) (= lambda!176546 lambda!176542))))

(assert (=> b!4541759 (= (= lt!1716487 lt!1716274) (= lambda!176546 lambda!176545))))

(assert (=> b!4541759 true))

(declare-fun bs!878973 () Bool)

(declare-fun d!1404138 () Bool)

(assert (= bs!878973 (and d!1404138 b!4541605)))

(declare-fun lambda!176548 () Int)

(assert (=> bs!878973 (not (= lambda!176548 lambda!176469))))

(declare-fun bs!878974 () Bool)

(assert (= bs!878974 (and d!1404138 b!4541758)))

(declare-fun lt!1716489 () ListMap!3677)

(assert (=> bs!878974 (= (= lt!1716489 lt!1716274) (= lambda!176548 lambda!176542))))

(declare-fun bs!878975 () Bool)

(assert (= bs!878975 (and d!1404138 b!4541759)))

(assert (=> bs!878975 (= (= lt!1716489 lt!1716274) (= lambda!176548 lambda!176545))))

(assert (=> bs!878975 (= (= lt!1716489 lt!1716487) (= lambda!176548 lambda!176546))))

(assert (=> d!1404138 true))

(declare-fun bm!316731 () Bool)

(declare-fun call!316737 () Unit!98804)

(declare-fun lemmaContainsAllItsOwnKeys!369 (ListMap!3677) Unit!98804)

(assert (=> bm!316731 (= call!316737 (lemmaContainsAllItsOwnKeys!369 lt!1716274))))

(declare-fun e!2830254 () ListMap!3677)

(assert (=> b!4541758 (= e!2830254 lt!1716274)))

(declare-fun lt!1716482 () Unit!98804)

(assert (=> b!4541758 (= lt!1716482 call!316737)))

(declare-fun call!316736 () Bool)

(assert (=> b!4541758 call!316736))

(declare-fun lt!1716488 () Unit!98804)

(assert (=> b!4541758 (= lt!1716488 lt!1716482)))

(declare-fun call!316738 () Bool)

(assert (=> b!4541758 call!316738))

(declare-fun lt!1716479 () Unit!98804)

(declare-fun Unit!98823 () Unit!98804)

(assert (=> b!4541758 (= lt!1716479 Unit!98823)))

(assert (=> b!4541759 (= e!2830254 lt!1716487)))

(declare-fun lt!1716476 () ListMap!3677)

(declare-fun +!1616 (ListMap!3677 tuple2!51250) ListMap!3677)

(assert (=> b!4541759 (= lt!1716476 (+!1616 lt!1716274 (h!56651 (_2!28920 lt!1716280))))))

(assert (=> b!4541759 (= lt!1716487 (addToMapMapFromBucket!731 (t!357852 (_2!28920 lt!1716280)) (+!1616 lt!1716274 (h!56651 (_2!28920 lt!1716280)))))))

(declare-fun lt!1716486 () Unit!98804)

(assert (=> b!4541759 (= lt!1716486 call!316737)))

(assert (=> b!4541759 call!316738))

(declare-fun lt!1716490 () Unit!98804)

(assert (=> b!4541759 (= lt!1716490 lt!1716486)))

(assert (=> b!4541759 call!316736))

(declare-fun lt!1716474 () Unit!98804)

(declare-fun Unit!98824 () Unit!98804)

(assert (=> b!4541759 (= lt!1716474 Unit!98824)))

(declare-fun forall!10357 (List!50890 Int) Bool)

(assert (=> b!4541759 (forall!10357 (t!357852 (_2!28920 lt!1716280)) lambda!176546)))

(declare-fun lt!1716493 () Unit!98804)

(declare-fun Unit!98826 () Unit!98804)

(assert (=> b!4541759 (= lt!1716493 Unit!98826)))

(declare-fun lt!1716475 () Unit!98804)

(declare-fun Unit!98827 () Unit!98804)

(assert (=> b!4541759 (= lt!1716475 Unit!98827)))

(declare-fun lt!1716491 () Unit!98804)

(assert (=> b!4541759 (= lt!1716491 (forallContained!2619 (toList!4415 lt!1716476) lambda!176546 (h!56651 (_2!28920 lt!1716280))))))

(assert (=> b!4541759 (contains!13567 lt!1716476 (_1!28919 (h!56651 (_2!28920 lt!1716280))))))

(declare-fun lt!1716480 () Unit!98804)

(declare-fun Unit!98828 () Unit!98804)

(assert (=> b!4541759 (= lt!1716480 Unit!98828)))

(assert (=> b!4541759 (contains!13567 lt!1716487 (_1!28919 (h!56651 (_2!28920 lt!1716280))))))

(declare-fun lt!1716481 () Unit!98804)

(declare-fun Unit!98829 () Unit!98804)

(assert (=> b!4541759 (= lt!1716481 Unit!98829)))

(assert (=> b!4541759 (forall!10357 (_2!28920 lt!1716280) lambda!176546)))

(declare-fun lt!1716483 () Unit!98804)

(declare-fun Unit!98830 () Unit!98804)

(assert (=> b!4541759 (= lt!1716483 Unit!98830)))

(assert (=> b!4541759 (forall!10357 (toList!4415 lt!1716476) lambda!176546)))

(declare-fun lt!1716477 () Unit!98804)

(declare-fun Unit!98831 () Unit!98804)

(assert (=> b!4541759 (= lt!1716477 Unit!98831)))

(declare-fun lt!1716484 () Unit!98804)

(declare-fun Unit!98832 () Unit!98804)

(assert (=> b!4541759 (= lt!1716484 Unit!98832)))

(declare-fun lt!1716473 () Unit!98804)

(declare-fun addForallContainsKeyThenBeforeAdding!370 (ListMap!3677 ListMap!3677 K!12150 V!12396) Unit!98804)

(assert (=> b!4541759 (= lt!1716473 (addForallContainsKeyThenBeforeAdding!370 lt!1716274 lt!1716487 (_1!28919 (h!56651 (_2!28920 lt!1716280))) (_2!28919 (h!56651 (_2!28920 lt!1716280)))))))

(assert (=> b!4541759 (forall!10357 (toList!4415 lt!1716274) lambda!176546)))

(declare-fun lt!1716492 () Unit!98804)

(assert (=> b!4541759 (= lt!1716492 lt!1716473)))

(assert (=> b!4541759 (forall!10357 (toList!4415 lt!1716274) lambda!176546)))

(declare-fun lt!1716478 () Unit!98804)

(declare-fun Unit!98833 () Unit!98804)

(assert (=> b!4541759 (= lt!1716478 Unit!98833)))

(declare-fun res!1893030 () Bool)

(assert (=> b!4541759 (= res!1893030 (forall!10357 (_2!28920 lt!1716280) lambda!176546))))

(declare-fun e!2830253 () Bool)

(assert (=> b!4541759 (=> (not res!1893030) (not e!2830253))))

(assert (=> b!4541759 e!2830253))

(declare-fun lt!1716485 () Unit!98804)

(declare-fun Unit!98834 () Unit!98804)

(assert (=> b!4541759 (= lt!1716485 Unit!98834)))

(declare-fun c!775761 () Bool)

(declare-fun bm!316732 () Bool)

(assert (=> bm!316732 (= call!316736 (forall!10357 (ite c!775761 (toList!4415 lt!1716274) (toList!4415 lt!1716476)) (ite c!775761 lambda!176542 lambda!176546)))))

(declare-fun e!2830255 () Bool)

(assert (=> d!1404138 e!2830255))

(declare-fun res!1893032 () Bool)

(assert (=> d!1404138 (=> (not res!1893032) (not e!2830255))))

(assert (=> d!1404138 (= res!1893032 (forall!10357 (_2!28920 lt!1716280) lambda!176548))))

(assert (=> d!1404138 (= lt!1716489 e!2830254)))

(assert (=> d!1404138 (= c!775761 ((_ is Nil!50766) (_2!28920 lt!1716280)))))

(assert (=> d!1404138 (noDuplicateKeys!1204 (_2!28920 lt!1716280))))

(assert (=> d!1404138 (= (addToMapMapFromBucket!731 (_2!28920 lt!1716280) lt!1716274) lt!1716489)))

(declare-fun bm!316733 () Bool)

(assert (=> bm!316733 (= call!316738 (forall!10357 (toList!4415 lt!1716274) (ite c!775761 lambda!176542 lambda!176545)))))

(declare-fun b!4541760 () Bool)

(declare-fun res!1893031 () Bool)

(assert (=> b!4541760 (=> (not res!1893031) (not e!2830255))))

(assert (=> b!4541760 (= res!1893031 (forall!10357 (toList!4415 lt!1716274) lambda!176548))))

(declare-fun b!4541761 () Bool)

(assert (=> b!4541761 (= e!2830255 (invariantList!1048 (toList!4415 lt!1716489)))))

(declare-fun b!4541762 () Bool)

(assert (=> b!4541762 (= e!2830253 (forall!10357 (toList!4415 lt!1716274) lambda!176546))))

(assert (= (and d!1404138 c!775761) b!4541758))

(assert (= (and d!1404138 (not c!775761)) b!4541759))

(assert (= (and b!4541759 res!1893030) b!4541762))

(assert (= (or b!4541758 b!4541759) bm!316732))

(assert (= (or b!4541758 b!4541759) bm!316733))

(assert (= (or b!4541758 b!4541759) bm!316731))

(assert (= (and d!1404138 res!1893032) b!4541760))

(assert (= (and b!4541760 res!1893031) b!4541761))

(declare-fun m!5309631 () Bool)

(assert (=> d!1404138 m!5309631))

(assert (=> d!1404138 m!5309351))

(declare-fun m!5309633 () Bool)

(assert (=> bm!316731 m!5309633))

(declare-fun m!5309635 () Bool)

(assert (=> b!4541759 m!5309635))

(declare-fun m!5309637 () Bool)

(assert (=> b!4541759 m!5309637))

(declare-fun m!5309639 () Bool)

(assert (=> b!4541759 m!5309639))

(declare-fun m!5309641 () Bool)

(assert (=> b!4541759 m!5309641))

(declare-fun m!5309643 () Bool)

(assert (=> b!4541759 m!5309643))

(declare-fun m!5309645 () Bool)

(assert (=> b!4541759 m!5309645))

(assert (=> b!4541759 m!5309635))

(declare-fun m!5309647 () Bool)

(assert (=> b!4541759 m!5309647))

(assert (=> b!4541759 m!5309645))

(declare-fun m!5309649 () Bool)

(assert (=> b!4541759 m!5309649))

(assert (=> b!4541759 m!5309647))

(declare-fun m!5309651 () Bool)

(assert (=> b!4541759 m!5309651))

(declare-fun m!5309653 () Bool)

(assert (=> b!4541759 m!5309653))

(declare-fun m!5309655 () Bool)

(assert (=> b!4541761 m!5309655))

(declare-fun m!5309657 () Bool)

(assert (=> bm!316733 m!5309657))

(declare-fun m!5309659 () Bool)

(assert (=> bm!316732 m!5309659))

(declare-fun m!5309661 () Bool)

(assert (=> b!4541760 m!5309661))

(assert (=> b!4541762 m!5309645))

(assert (=> b!4541592 d!1404138))

(declare-fun bs!878976 () Bool)

(declare-fun d!1404164 () Bool)

(assert (= bs!878976 (and d!1404164 start!450944)))

(declare-fun lambda!176549 () Int)

(assert (=> bs!878976 (= lambda!176549 lambda!176467)))

(declare-fun bs!878977 () Bool)

(assert (= bs!878977 (and d!1404164 b!4541605)))

(assert (=> bs!878977 (not (= lambda!176549 lambda!176468))))

(declare-fun bs!878978 () Bool)

(assert (= bs!878978 (and d!1404164 d!1404112)))

(assert (=> bs!878978 (= lambda!176549 lambda!176478)))

(declare-fun lt!1716497 () ListMap!3677)

(assert (=> d!1404164 (invariantList!1048 (toList!4415 lt!1716497))))

(declare-fun e!2830256 () ListMap!3677)

(assert (=> d!1404164 (= lt!1716497 e!2830256)))

(declare-fun c!775762 () Bool)

(assert (=> d!1404164 (= c!775762 ((_ is Cons!50767) (toList!4416 lt!1716265)))))

(assert (=> d!1404164 (forall!10355 (toList!4416 lt!1716265) lambda!176549)))

(assert (=> d!1404164 (= (extractMap!1260 (toList!4416 lt!1716265)) lt!1716497)))

(declare-fun b!4541765 () Bool)

(assert (=> b!4541765 (= e!2830256 (addToMapMapFromBucket!731 (_2!28920 (h!56652 (toList!4416 lt!1716265))) (extractMap!1260 (t!357853 (toList!4416 lt!1716265)))))))

(declare-fun b!4541766 () Bool)

(assert (=> b!4541766 (= e!2830256 (ListMap!3678 Nil!50766))))

(assert (= (and d!1404164 c!775762) b!4541765))

(assert (= (and d!1404164 (not c!775762)) b!4541766))

(declare-fun m!5309663 () Bool)

(assert (=> d!1404164 m!5309663))

(declare-fun m!5309665 () Bool)

(assert (=> d!1404164 m!5309665))

(declare-fun m!5309667 () Bool)

(assert (=> b!4541765 m!5309667))

(assert (=> b!4541765 m!5309667))

(declare-fun m!5309669 () Bool)

(assert (=> b!4541765 m!5309669))

(assert (=> b!4541592 d!1404164))

(declare-fun d!1404166 () Bool)

(declare-fun head!9490 (List!50891) tuple2!51252)

(assert (=> d!1404166 (= (head!9488 lt!1716265) (head!9490 (toList!4416 lt!1716265)))))

(declare-fun bs!878979 () Bool)

(assert (= bs!878979 d!1404166))

(declare-fun m!5309671 () Bool)

(assert (=> bs!878979 m!5309671))

(assert (=> b!4541615 d!1404166))

(declare-fun d!1404168 () Bool)

(assert (=> d!1404168 (= (eq!661 lt!1716299 (-!430 lt!1716286 key!3287)) (= (content!8453 (toList!4415 lt!1716299)) (content!8453 (toList!4415 (-!430 lt!1716286 key!3287)))))))

(declare-fun bs!878980 () Bool)

(assert (= bs!878980 d!1404168))

(assert (=> bs!878980 m!5309545))

(declare-fun m!5309673 () Bool)

(assert (=> bs!878980 m!5309673))

(assert (=> b!4541611 d!1404168))

(declare-fun d!1404170 () Bool)

(declare-fun e!2830259 () Bool)

(assert (=> d!1404170 e!2830259))

(declare-fun res!1893035 () Bool)

(assert (=> d!1404170 (=> (not res!1893035) (not e!2830259))))

(declare-fun lt!1716500 () ListMap!3677)

(assert (=> d!1404170 (= res!1893035 (not (contains!13567 lt!1716500 key!3287)))))

(declare-fun removePresrvNoDuplicatedKeys!173 (List!50890 K!12150) List!50890)

(assert (=> d!1404170 (= lt!1716500 (ListMap!3678 (removePresrvNoDuplicatedKeys!173 (toList!4415 lt!1716286) key!3287)))))

(assert (=> d!1404170 (= (-!430 lt!1716286 key!3287) lt!1716500)))

(declare-fun b!4541769 () Bool)

(declare-fun content!8454 (List!50892) (InoxSet K!12150))

(assert (=> b!4541769 (= e!2830259 (= ((_ map and) (content!8454 (keys!17669 lt!1716286)) ((_ map not) (store ((as const (Array K!12150 Bool)) false) key!3287 true))) (content!8454 (keys!17669 lt!1716500))))))

(assert (= (and d!1404170 res!1893035) b!4541769))

(declare-fun m!5309675 () Bool)

(assert (=> d!1404170 m!5309675))

(declare-fun m!5309677 () Bool)

(assert (=> d!1404170 m!5309677))

(declare-fun m!5309679 () Bool)

(assert (=> b!4541769 m!5309679))

(declare-fun m!5309681 () Bool)

(assert (=> b!4541769 m!5309681))

(declare-fun m!5309683 () Bool)

(assert (=> b!4541769 m!5309683))

(assert (=> b!4541769 m!5309683))

(declare-fun m!5309685 () Bool)

(assert (=> b!4541769 m!5309685))

(assert (=> b!4541769 m!5309679))

(declare-fun m!5309687 () Bool)

(assert (=> b!4541769 m!5309687))

(assert (=> b!4541611 d!1404170))

(declare-fun bs!878981 () Bool)

(declare-fun d!1404172 () Bool)

(assert (= bs!878981 (and d!1404172 start!450944)))

(declare-fun lambda!176552 () Int)

(assert (=> bs!878981 (= lambda!176552 lambda!176467)))

(declare-fun bs!878982 () Bool)

(assert (= bs!878982 (and d!1404172 b!4541605)))

(assert (=> bs!878982 (not (= lambda!176552 lambda!176468))))

(declare-fun bs!878983 () Bool)

(assert (= bs!878983 (and d!1404172 d!1404112)))

(assert (=> bs!878983 (= lambda!176552 lambda!176478)))

(declare-fun bs!878984 () Bool)

(assert (= bs!878984 (and d!1404172 d!1404164)))

(assert (=> bs!878984 (= lambda!176552 lambda!176549)))

(assert (=> d!1404172 (contains!13568 lm!1477 (hash!2931 hashF!1107 key!3287))))

(declare-fun lt!1716519 () Unit!98804)

(declare-fun choose!29942 (ListLongMap!3047 K!12150 Hashable!5599) Unit!98804)

(assert (=> d!1404172 (= lt!1716519 (choose!29942 lm!1477 key!3287 hashF!1107))))

(assert (=> d!1404172 (forall!10355 (toList!4416 lm!1477) lambda!176552)))

(assert (=> d!1404172 (= (lemmaInGenMapThenLongMapContainsHash!278 lm!1477 key!3287 hashF!1107) lt!1716519)))

(declare-fun bs!878985 () Bool)

(assert (= bs!878985 d!1404172))

(assert (=> bs!878985 m!5309331))

(assert (=> bs!878985 m!5309331))

(declare-fun m!5309689 () Bool)

(assert (=> bs!878985 m!5309689))

(declare-fun m!5309691 () Bool)

(assert (=> bs!878985 m!5309691))

(declare-fun m!5309693 () Bool)

(assert (=> bs!878985 m!5309693))

(assert (=> b!4541613 d!1404172))

(declare-fun d!1404174 () Bool)

(declare-datatypes ((Option!11218 0))(
  ( (None!11217) (Some!11217 (v!44927 List!50890)) )
))
(declare-fun get!16700 (Option!11218) List!50890)

(declare-fun getValueByKey!1156 (List!50891 (_ BitVec 64)) Option!11218)

(assert (=> d!1404174 (= (apply!11941 lm!1477 hash!344) (get!16700 (getValueByKey!1156 (toList!4416 lm!1477) hash!344)))))

(declare-fun bs!878986 () Bool)

(assert (= bs!878986 d!1404174))

(declare-fun m!5309715 () Bool)

(assert (=> bs!878986 m!5309715))

(assert (=> bs!878986 m!5309715))

(declare-fun m!5309717 () Bool)

(assert (=> bs!878986 m!5309717))

(assert (=> b!4541613 d!1404174))

(declare-fun b!4541807 () Bool)

(declare-fun e!2830282 () List!50890)

(assert (=> b!4541807 (= e!2830282 (Cons!50766 (h!56651 lt!1716281) (removePairForKey!831 (t!357852 lt!1716281) key!3287)))))

(declare-fun d!1404178 () Bool)

(declare-fun lt!1716530 () List!50890)

(assert (=> d!1404178 (not (containsKey!1888 lt!1716530 key!3287))))

(declare-fun e!2830283 () List!50890)

(assert (=> d!1404178 (= lt!1716530 e!2830283)))

(declare-fun c!775776 () Bool)

(assert (=> d!1404178 (= c!775776 (and ((_ is Cons!50766) lt!1716281) (= (_1!28919 (h!56651 lt!1716281)) key!3287)))))

(assert (=> d!1404178 (noDuplicateKeys!1204 lt!1716281)))

(assert (=> d!1404178 (= (removePairForKey!831 lt!1716281 key!3287) lt!1716530)))

(declare-fun b!4541808 () Bool)

(assert (=> b!4541808 (= e!2830282 Nil!50766)))

(declare-fun b!4541806 () Bool)

(assert (=> b!4541806 (= e!2830283 e!2830282)))

(declare-fun c!775777 () Bool)

(assert (=> b!4541806 (= c!775777 ((_ is Cons!50766) lt!1716281))))

(declare-fun b!4541805 () Bool)

(assert (=> b!4541805 (= e!2830283 (t!357852 lt!1716281))))

(assert (= (and d!1404178 c!775776) b!4541805))

(assert (= (and d!1404178 (not c!775776)) b!4541806))

(assert (= (and b!4541806 c!775777) b!4541807))

(assert (= (and b!4541806 (not c!775777)) b!4541808))

(declare-fun m!5309719 () Bool)

(assert (=> b!4541807 m!5309719))

(declare-fun m!5309721 () Bool)

(assert (=> d!1404178 m!5309721))

(declare-fun m!5309723 () Bool)

(assert (=> d!1404178 m!5309723))

(assert (=> b!4541613 d!1404178))

(declare-fun d!1404180 () Bool)

(declare-fun dynLambda!21223 (Int tuple2!51252) Bool)

(assert (=> d!1404180 (dynLambda!21223 lambda!176467 lt!1716296)))

(declare-fun lt!1716533 () Unit!98804)

(declare-fun choose!29944 (List!50891 Int tuple2!51252) Unit!98804)

(assert (=> d!1404180 (= lt!1716533 (choose!29944 (toList!4416 lm!1477) lambda!176467 lt!1716296))))

(declare-fun e!2830286 () Bool)

(assert (=> d!1404180 e!2830286))

(declare-fun res!1893047 () Bool)

(assert (=> d!1404180 (=> (not res!1893047) (not e!2830286))))

(assert (=> d!1404180 (= res!1893047 (forall!10355 (toList!4416 lm!1477) lambda!176467))))

(assert (=> d!1404180 (= (forallContained!2618 (toList!4416 lm!1477) lambda!176467 lt!1716296) lt!1716533)))

(declare-fun b!4541811 () Bool)

(assert (=> b!4541811 (= e!2830286 (contains!13569 (toList!4416 lm!1477) lt!1716296))))

(assert (= (and d!1404180 res!1893047) b!4541811))

(declare-fun b_lambda!158165 () Bool)

(assert (=> (not b_lambda!158165) (not d!1404180)))

(declare-fun m!5309725 () Bool)

(assert (=> d!1404180 m!5309725))

(declare-fun m!5309727 () Bool)

(assert (=> d!1404180 m!5309727))

(assert (=> d!1404180 m!5309379))

(assert (=> b!4541811 m!5309337))

(assert (=> b!4541613 d!1404180))

(declare-fun d!1404182 () Bool)

(assert (=> d!1404182 (contains!13569 (toList!4416 lm!1477) (tuple2!51253 hash!344 lt!1716281))))

(declare-fun lt!1716538 () Unit!98804)

(declare-fun choose!29945 (List!50891 (_ BitVec 64) List!50890) Unit!98804)

(assert (=> d!1404182 (= lt!1716538 (choose!29945 (toList!4416 lm!1477) hash!344 lt!1716281))))

(declare-fun e!2830291 () Bool)

(assert (=> d!1404182 e!2830291))

(declare-fun res!1893050 () Bool)

(assert (=> d!1404182 (=> (not res!1893050) (not e!2830291))))

(declare-fun isStrictlySorted!463 (List!50891) Bool)

(assert (=> d!1404182 (= res!1893050 (isStrictlySorted!463 (toList!4416 lm!1477)))))

(assert (=> d!1404182 (= (lemmaGetValueByKeyImpliesContainsTuple!716 (toList!4416 lm!1477) hash!344 lt!1716281) lt!1716538)))

(declare-fun b!4541818 () Bool)

(assert (=> b!4541818 (= e!2830291 (= (getValueByKey!1156 (toList!4416 lm!1477) hash!344) (Some!11217 lt!1716281)))))

(assert (= (and d!1404182 res!1893050) b!4541818))

(declare-fun m!5309729 () Bool)

(assert (=> d!1404182 m!5309729))

(declare-fun m!5309731 () Bool)

(assert (=> d!1404182 m!5309731))

(declare-fun m!5309733 () Bool)

(assert (=> d!1404182 m!5309733))

(assert (=> b!4541818 m!5309715))

(assert (=> b!4541613 d!1404182))

(declare-fun d!1404184 () Bool)

(declare-fun e!2830297 () Bool)

(assert (=> d!1404184 e!2830297))

(declare-fun res!1893053 () Bool)

(assert (=> d!1404184 (=> res!1893053 e!2830297)))

(declare-fun lt!1716550 () Bool)

(assert (=> d!1404184 (= res!1893053 (not lt!1716550))))

(declare-fun lt!1716548 () Bool)

(assert (=> d!1404184 (= lt!1716550 lt!1716548)))

(declare-fun lt!1716549 () Unit!98804)

(declare-fun e!2830298 () Unit!98804)

(assert (=> d!1404184 (= lt!1716549 e!2830298)))

(declare-fun c!775783 () Bool)

(assert (=> d!1404184 (= c!775783 lt!1716548)))

(declare-fun containsKey!1892 (List!50891 (_ BitVec 64)) Bool)

(assert (=> d!1404184 (= lt!1716548 (containsKey!1892 (toList!4416 lm!1477) lt!1716289))))

(assert (=> d!1404184 (= (contains!13568 lm!1477 lt!1716289) lt!1716550)))

(declare-fun b!4541827 () Bool)

(declare-fun lt!1716551 () Unit!98804)

(assert (=> b!4541827 (= e!2830298 lt!1716551)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1061 (List!50891 (_ BitVec 64)) Unit!98804)

(assert (=> b!4541827 (= lt!1716551 (lemmaContainsKeyImpliesGetValueByKeyDefined!1061 (toList!4416 lm!1477) lt!1716289))))

(declare-fun isDefined!8494 (Option!11218) Bool)

(assert (=> b!4541827 (isDefined!8494 (getValueByKey!1156 (toList!4416 lm!1477) lt!1716289))))

(declare-fun b!4541828 () Bool)

(declare-fun Unit!98838 () Unit!98804)

(assert (=> b!4541828 (= e!2830298 Unit!98838)))

(declare-fun b!4541829 () Bool)

(assert (=> b!4541829 (= e!2830297 (isDefined!8494 (getValueByKey!1156 (toList!4416 lm!1477) lt!1716289)))))

(assert (= (and d!1404184 c!775783) b!4541827))

(assert (= (and d!1404184 (not c!775783)) b!4541828))

(assert (= (and d!1404184 (not res!1893053)) b!4541829))

(declare-fun m!5309743 () Bool)

(assert (=> d!1404184 m!5309743))

(declare-fun m!5309745 () Bool)

(assert (=> b!4541827 m!5309745))

(declare-fun m!5309747 () Bool)

(assert (=> b!4541827 m!5309747))

(assert (=> b!4541827 m!5309747))

(declare-fun m!5309749 () Bool)

(assert (=> b!4541827 m!5309749))

(assert (=> b!4541829 m!5309747))

(assert (=> b!4541829 m!5309747))

(assert (=> b!4541829 m!5309749))

(assert (=> b!4541613 d!1404184))

(declare-fun d!1404188 () Bool)

(declare-fun lt!1716554 () Bool)

(declare-fun content!8455 (List!50891) (InoxSet tuple2!51252))

(assert (=> d!1404188 (= lt!1716554 (select (content!8455 (toList!4416 lm!1477)) lt!1716296))))

(declare-fun e!2830303 () Bool)

(assert (=> d!1404188 (= lt!1716554 e!2830303)))

(declare-fun res!1893059 () Bool)

(assert (=> d!1404188 (=> (not res!1893059) (not e!2830303))))

(assert (=> d!1404188 (= res!1893059 ((_ is Cons!50767) (toList!4416 lm!1477)))))

(assert (=> d!1404188 (= (contains!13569 (toList!4416 lm!1477) lt!1716296) lt!1716554)))

(declare-fun b!4541834 () Bool)

(declare-fun e!2830304 () Bool)

(assert (=> b!4541834 (= e!2830303 e!2830304)))

(declare-fun res!1893058 () Bool)

(assert (=> b!4541834 (=> res!1893058 e!2830304)))

(assert (=> b!4541834 (= res!1893058 (= (h!56652 (toList!4416 lm!1477)) lt!1716296))))

(declare-fun b!4541835 () Bool)

(assert (=> b!4541835 (= e!2830304 (contains!13569 (t!357853 (toList!4416 lm!1477)) lt!1716296))))

(assert (= (and d!1404188 res!1893059) b!4541834))

(assert (= (and b!4541834 (not res!1893058)) b!4541835))

(declare-fun m!5309751 () Bool)

(assert (=> d!1404188 m!5309751))

(declare-fun m!5309753 () Bool)

(assert (=> d!1404188 m!5309753))

(assert (=> b!4541835 m!5309419))

(assert (=> b!4541613 d!1404188))

(declare-fun bs!878992 () Bool)

(declare-fun d!1404190 () Bool)

(assert (= bs!878992 (and d!1404190 b!4541759)))

(declare-fun lambda!176559 () Int)

(assert (=> bs!878992 (not (= lambda!176559 lambda!176546))))

(declare-fun bs!878993 () Bool)

(assert (= bs!878993 (and d!1404190 d!1404138)))

(assert (=> bs!878993 (not (= lambda!176559 lambda!176548))))

(declare-fun bs!878994 () Bool)

(assert (= bs!878994 (and d!1404190 b!4541605)))

(assert (=> bs!878994 (= (= hash!344 (_1!28920 (h!56652 (toList!4416 lm!1477)))) (= lambda!176559 lambda!176469))))

(declare-fun bs!878995 () Bool)

(assert (= bs!878995 (and d!1404190 b!4541758)))

(assert (=> bs!878995 (not (= lambda!176559 lambda!176542))))

(assert (=> bs!878992 (not (= lambda!176559 lambda!176545))))

(assert (=> d!1404190 true))

(assert (=> d!1404190 true))

(assert (=> d!1404190 (= (allKeysSameHash!1058 newBucket!178 hash!344 hashF!1107) (forall!10357 newBucket!178 lambda!176559))))

(declare-fun bs!878996 () Bool)

(assert (= bs!878996 d!1404190))

(declare-fun m!5309755 () Bool)

(assert (=> bs!878996 m!5309755))

(assert (=> b!4541608 d!1404190))

(declare-fun d!1404192 () Bool)

(declare-fun res!1893067 () Bool)

(declare-fun e!2830315 () Bool)

(assert (=> d!1404192 (=> res!1893067 e!2830315)))

(assert (=> d!1404192 (= res!1893067 ((_ is Nil!50767) (toList!4416 lm!1477)))))

(assert (=> d!1404192 (= (forall!10355 (toList!4416 lm!1477) lambda!176467) e!2830315)))

(declare-fun b!4541851 () Bool)

(declare-fun e!2830316 () Bool)

(assert (=> b!4541851 (= e!2830315 e!2830316)))

(declare-fun res!1893068 () Bool)

(assert (=> b!4541851 (=> (not res!1893068) (not e!2830316))))

(assert (=> b!4541851 (= res!1893068 (dynLambda!21223 lambda!176467 (h!56652 (toList!4416 lm!1477))))))

(declare-fun b!4541852 () Bool)

(assert (=> b!4541852 (= e!2830316 (forall!10355 (t!357853 (toList!4416 lm!1477)) lambda!176467))))

(assert (= (and d!1404192 (not res!1893067)) b!4541851))

(assert (= (and b!4541851 res!1893068) b!4541852))

(declare-fun b_lambda!158167 () Bool)

(assert (=> (not b_lambda!158167) (not b!4541851)))

(declare-fun m!5309763 () Bool)

(assert (=> b!4541851 m!5309763))

(declare-fun m!5309769 () Bool)

(assert (=> b!4541852 m!5309769))

(assert (=> start!450944 d!1404192))

(declare-fun d!1404196 () Bool)

(assert (=> d!1404196 (= (inv!66334 lm!1477) (isStrictlySorted!463 (toList!4416 lm!1477)))))

(declare-fun bs!879004 () Bool)

(assert (= bs!879004 d!1404196))

(assert (=> bs!879004 m!5309733))

(assert (=> start!450944 d!1404196))

(declare-fun d!1404200 () Bool)

(declare-fun e!2830318 () Bool)

(assert (=> d!1404200 e!2830318))

(declare-fun res!1893069 () Bool)

(assert (=> d!1404200 (=> res!1893069 e!2830318)))

(declare-fun lt!1716569 () Bool)

(assert (=> d!1404200 (= res!1893069 (not lt!1716569))))

(declare-fun lt!1716567 () Bool)

(assert (=> d!1404200 (= lt!1716569 lt!1716567)))

(declare-fun lt!1716568 () Unit!98804)

(declare-fun e!2830319 () Unit!98804)

(assert (=> d!1404200 (= lt!1716568 e!2830319)))

(declare-fun c!775788 () Bool)

(assert (=> d!1404200 (= c!775788 lt!1716567)))

(assert (=> d!1404200 (= lt!1716567 (containsKey!1892 (toList!4416 lt!1716276) hash!344))))

(assert (=> d!1404200 (= (contains!13568 lt!1716276 hash!344) lt!1716569)))

(declare-fun b!4541855 () Bool)

(declare-fun lt!1716570 () Unit!98804)

(assert (=> b!4541855 (= e!2830319 lt!1716570)))

(assert (=> b!4541855 (= lt!1716570 (lemmaContainsKeyImpliesGetValueByKeyDefined!1061 (toList!4416 lt!1716276) hash!344))))

(assert (=> b!4541855 (isDefined!8494 (getValueByKey!1156 (toList!4416 lt!1716276) hash!344))))

(declare-fun b!4541856 () Bool)

(declare-fun Unit!98839 () Unit!98804)

(assert (=> b!4541856 (= e!2830319 Unit!98839)))

(declare-fun b!4541857 () Bool)

(assert (=> b!4541857 (= e!2830318 (isDefined!8494 (getValueByKey!1156 (toList!4416 lt!1716276) hash!344)))))

(assert (= (and d!1404200 c!775788) b!4541855))

(assert (= (and d!1404200 (not c!775788)) b!4541856))

(assert (= (and d!1404200 (not res!1893069)) b!4541857))

(declare-fun m!5309787 () Bool)

(assert (=> d!1404200 m!5309787))

(declare-fun m!5309789 () Bool)

(assert (=> b!4541855 m!5309789))

(declare-fun m!5309791 () Bool)

(assert (=> b!4541855 m!5309791))

(assert (=> b!4541855 m!5309791))

(declare-fun m!5309793 () Bool)

(assert (=> b!4541855 m!5309793))

(assert (=> b!4541857 m!5309791))

(assert (=> b!4541857 m!5309791))

(assert (=> b!4541857 m!5309793))

(assert (=> b!4541606 d!1404200))

(declare-fun d!1404202 () Bool)

(declare-fun tail!7812 (List!50891) List!50891)

(assert (=> d!1404202 (= (tail!7810 lm!1477) (ListLongMap!3048 (tail!7812 (toList!4416 lm!1477))))))

(declare-fun bs!879012 () Bool)

(assert (= bs!879012 d!1404202))

(declare-fun m!5309803 () Bool)

(assert (=> bs!879012 m!5309803))

(assert (=> b!4541606 d!1404202))

(declare-fun d!1404206 () Bool)

(declare-fun res!1893074 () Bool)

(declare-fun e!2830324 () Bool)

(assert (=> d!1404206 (=> res!1893074 e!2830324)))

(assert (=> d!1404206 (= res!1893074 (not ((_ is Cons!50766) newBucket!178)))))

(assert (=> d!1404206 (= (noDuplicateKeys!1204 newBucket!178) e!2830324)))

(declare-fun b!4541862 () Bool)

(declare-fun e!2830325 () Bool)

(assert (=> b!4541862 (= e!2830324 e!2830325)))

(declare-fun res!1893075 () Bool)

(assert (=> b!4541862 (=> (not res!1893075) (not e!2830325))))

(assert (=> b!4541862 (= res!1893075 (not (containsKey!1888 (t!357852 newBucket!178) (_1!28919 (h!56651 newBucket!178)))))))

(declare-fun b!4541863 () Bool)

(assert (=> b!4541863 (= e!2830325 (noDuplicateKeys!1204 (t!357852 newBucket!178)))))

(assert (= (and d!1404206 (not res!1893074)) b!4541862))

(assert (= (and b!4541862 res!1893075) b!4541863))

(declare-fun m!5309805 () Bool)

(assert (=> b!4541862 m!5309805))

(declare-fun m!5309807 () Bool)

(assert (=> b!4541863 m!5309807))

(assert (=> b!4541607 d!1404206))

(declare-fun d!1404208 () Bool)

(assert (=> d!1404208 (= (eq!661 lt!1716299 lt!1716278) (= (content!8453 (toList!4415 lt!1716299)) (content!8453 (toList!4415 lt!1716278))))))

(declare-fun bs!879013 () Bool)

(assert (= bs!879013 d!1404208))

(assert (=> bs!879013 m!5309545))

(declare-fun m!5309809 () Bool)

(assert (=> bs!879013 m!5309809))

(assert (=> b!4541624 d!1404208))

(declare-fun d!1404210 () Bool)

(assert (=> d!1404210 (= (eq!661 lt!1716285 lt!1716278) (= (content!8453 (toList!4415 lt!1716285)) (content!8453 (toList!4415 lt!1716278))))))

(declare-fun bs!879014 () Bool)

(assert (= bs!879014 d!1404210))

(assert (=> bs!879014 m!5309547))

(assert (=> bs!879014 m!5309809))

(assert (=> b!4541624 d!1404210))

(declare-fun bs!879015 () Bool)

(declare-fun b!4541864 () Bool)

(assert (= bs!879015 (and b!4541864 b!4541759)))

(declare-fun lambda!176563 () Int)

(assert (=> bs!879015 (= (= lt!1716275 lt!1716487) (= lambda!176563 lambda!176546))))

(declare-fun bs!879016 () Bool)

(assert (= bs!879016 (and b!4541864 d!1404138)))

(assert (=> bs!879016 (= (= lt!1716275 lt!1716489) (= lambda!176563 lambda!176548))))

(declare-fun bs!879017 () Bool)

(assert (= bs!879017 (and b!4541864 b!4541758)))

(assert (=> bs!879017 (= (= lt!1716275 lt!1716274) (= lambda!176563 lambda!176542))))

(assert (=> bs!879015 (= (= lt!1716275 lt!1716274) (= lambda!176563 lambda!176545))))

(declare-fun bs!879018 () Bool)

(assert (= bs!879018 (and b!4541864 b!4541605)))

(assert (=> bs!879018 (not (= lambda!176563 lambda!176469))))

(declare-fun bs!879019 () Bool)

(assert (= bs!879019 (and b!4541864 d!1404190)))

(assert (=> bs!879019 (not (= lambda!176563 lambda!176559))))

(assert (=> b!4541864 true))

(declare-fun bs!879020 () Bool)

(declare-fun b!4541865 () Bool)

(assert (= bs!879020 (and b!4541865 b!4541759)))

(declare-fun lambda!176564 () Int)

(assert (=> bs!879020 (= (= lt!1716275 lt!1716487) (= lambda!176564 lambda!176546))))

(declare-fun bs!879021 () Bool)

(assert (= bs!879021 (and b!4541865 b!4541864)))

(assert (=> bs!879021 (= lambda!176564 lambda!176563)))

(declare-fun bs!879022 () Bool)

(assert (= bs!879022 (and b!4541865 d!1404138)))

(assert (=> bs!879022 (= (= lt!1716275 lt!1716489) (= lambda!176564 lambda!176548))))

(declare-fun bs!879023 () Bool)

(assert (= bs!879023 (and b!4541865 b!4541758)))

(assert (=> bs!879023 (= (= lt!1716275 lt!1716274) (= lambda!176564 lambda!176542))))

(assert (=> bs!879020 (= (= lt!1716275 lt!1716274) (= lambda!176564 lambda!176545))))

(declare-fun bs!879024 () Bool)

(assert (= bs!879024 (and b!4541865 b!4541605)))

(assert (=> bs!879024 (not (= lambda!176564 lambda!176469))))

(declare-fun bs!879025 () Bool)

(assert (= bs!879025 (and b!4541865 d!1404190)))

(assert (=> bs!879025 (not (= lambda!176564 lambda!176559))))

(assert (=> b!4541865 true))

(declare-fun lt!1716585 () ListMap!3677)

(declare-fun lambda!176565 () Int)

(assert (=> b!4541865 (= (= lt!1716585 lt!1716275) (= lambda!176565 lambda!176564))))

(assert (=> bs!879020 (= (= lt!1716585 lt!1716487) (= lambda!176565 lambda!176546))))

(assert (=> bs!879021 (= (= lt!1716585 lt!1716275) (= lambda!176565 lambda!176563))))

(assert (=> bs!879022 (= (= lt!1716585 lt!1716489) (= lambda!176565 lambda!176548))))

(assert (=> bs!879023 (= (= lt!1716585 lt!1716274) (= lambda!176565 lambda!176542))))

(assert (=> bs!879020 (= (= lt!1716585 lt!1716274) (= lambda!176565 lambda!176545))))

(assert (=> bs!879024 (not (= lambda!176565 lambda!176469))))

(assert (=> bs!879025 (not (= lambda!176565 lambda!176559))))

(assert (=> b!4541865 true))

(declare-fun bs!879026 () Bool)

(declare-fun d!1404212 () Bool)

(assert (= bs!879026 (and d!1404212 b!4541865)))

(declare-fun lambda!176566 () Int)

(declare-fun lt!1716587 () ListMap!3677)

(assert (=> bs!879026 (= (= lt!1716587 lt!1716275) (= lambda!176566 lambda!176564))))

(declare-fun bs!879027 () Bool)

(assert (= bs!879027 (and d!1404212 b!4541759)))

(assert (=> bs!879027 (= (= lt!1716587 lt!1716487) (= lambda!176566 lambda!176546))))

(declare-fun bs!879028 () Bool)

(assert (= bs!879028 (and d!1404212 b!4541864)))

(assert (=> bs!879028 (= (= lt!1716587 lt!1716275) (= lambda!176566 lambda!176563))))

(declare-fun bs!879029 () Bool)

(assert (= bs!879029 (and d!1404212 d!1404138)))

(assert (=> bs!879029 (= (= lt!1716587 lt!1716489) (= lambda!176566 lambda!176548))))

(declare-fun bs!879030 () Bool)

(assert (= bs!879030 (and d!1404212 b!4541758)))

(assert (=> bs!879030 (= (= lt!1716587 lt!1716274) (= lambda!176566 lambda!176542))))

(assert (=> bs!879026 (= (= lt!1716587 lt!1716585) (= lambda!176566 lambda!176565))))

(assert (=> bs!879027 (= (= lt!1716587 lt!1716274) (= lambda!176566 lambda!176545))))

(declare-fun bs!879031 () Bool)

(assert (= bs!879031 (and d!1404212 b!4541605)))

(assert (=> bs!879031 (not (= lambda!176566 lambda!176469))))

(declare-fun bs!879032 () Bool)

(assert (= bs!879032 (and d!1404212 d!1404190)))

(assert (=> bs!879032 (not (= lambda!176566 lambda!176559))))

(assert (=> d!1404212 true))

(declare-fun bm!316738 () Bool)

(declare-fun call!316744 () Unit!98804)

(assert (=> bm!316738 (= call!316744 (lemmaContainsAllItsOwnKeys!369 lt!1716275))))

(declare-fun e!2830327 () ListMap!3677)

(assert (=> b!4541864 (= e!2830327 lt!1716275)))

(declare-fun lt!1716580 () Unit!98804)

(assert (=> b!4541864 (= lt!1716580 call!316744)))

(declare-fun call!316743 () Bool)

(assert (=> b!4541864 call!316743))

(declare-fun lt!1716586 () Unit!98804)

(assert (=> b!4541864 (= lt!1716586 lt!1716580)))

(declare-fun call!316745 () Bool)

(assert (=> b!4541864 call!316745))

(declare-fun lt!1716577 () Unit!98804)

(declare-fun Unit!98842 () Unit!98804)

(assert (=> b!4541864 (= lt!1716577 Unit!98842)))

(assert (=> b!4541865 (= e!2830327 lt!1716585)))

(declare-fun lt!1716574 () ListMap!3677)

(assert (=> b!4541865 (= lt!1716574 (+!1616 lt!1716275 (h!56651 (_2!28920 lt!1716280))))))

(assert (=> b!4541865 (= lt!1716585 (addToMapMapFromBucket!731 (t!357852 (_2!28920 lt!1716280)) (+!1616 lt!1716275 (h!56651 (_2!28920 lt!1716280)))))))

(declare-fun lt!1716584 () Unit!98804)

(assert (=> b!4541865 (= lt!1716584 call!316744)))

(assert (=> b!4541865 call!316745))

(declare-fun lt!1716588 () Unit!98804)

(assert (=> b!4541865 (= lt!1716588 lt!1716584)))

(assert (=> b!4541865 call!316743))

(declare-fun lt!1716572 () Unit!98804)

(declare-fun Unit!98843 () Unit!98804)

(assert (=> b!4541865 (= lt!1716572 Unit!98843)))

(assert (=> b!4541865 (forall!10357 (t!357852 (_2!28920 lt!1716280)) lambda!176565)))

(declare-fun lt!1716591 () Unit!98804)

(declare-fun Unit!98844 () Unit!98804)

(assert (=> b!4541865 (= lt!1716591 Unit!98844)))

(declare-fun lt!1716573 () Unit!98804)

(declare-fun Unit!98845 () Unit!98804)

(assert (=> b!4541865 (= lt!1716573 Unit!98845)))

(declare-fun lt!1716589 () Unit!98804)

(assert (=> b!4541865 (= lt!1716589 (forallContained!2619 (toList!4415 lt!1716574) lambda!176565 (h!56651 (_2!28920 lt!1716280))))))

(assert (=> b!4541865 (contains!13567 lt!1716574 (_1!28919 (h!56651 (_2!28920 lt!1716280))))))

(declare-fun lt!1716578 () Unit!98804)

(declare-fun Unit!98846 () Unit!98804)

(assert (=> b!4541865 (= lt!1716578 Unit!98846)))

(assert (=> b!4541865 (contains!13567 lt!1716585 (_1!28919 (h!56651 (_2!28920 lt!1716280))))))

(declare-fun lt!1716579 () Unit!98804)

(declare-fun Unit!98847 () Unit!98804)

(assert (=> b!4541865 (= lt!1716579 Unit!98847)))

(assert (=> b!4541865 (forall!10357 (_2!28920 lt!1716280) lambda!176565)))

(declare-fun lt!1716581 () Unit!98804)

(declare-fun Unit!98848 () Unit!98804)

(assert (=> b!4541865 (= lt!1716581 Unit!98848)))

(assert (=> b!4541865 (forall!10357 (toList!4415 lt!1716574) lambda!176565)))

(declare-fun lt!1716575 () Unit!98804)

(declare-fun Unit!98849 () Unit!98804)

(assert (=> b!4541865 (= lt!1716575 Unit!98849)))

(declare-fun lt!1716582 () Unit!98804)

(declare-fun Unit!98850 () Unit!98804)

(assert (=> b!4541865 (= lt!1716582 Unit!98850)))

(declare-fun lt!1716571 () Unit!98804)

(assert (=> b!4541865 (= lt!1716571 (addForallContainsKeyThenBeforeAdding!370 lt!1716275 lt!1716585 (_1!28919 (h!56651 (_2!28920 lt!1716280))) (_2!28919 (h!56651 (_2!28920 lt!1716280)))))))

(assert (=> b!4541865 (forall!10357 (toList!4415 lt!1716275) lambda!176565)))

(declare-fun lt!1716590 () Unit!98804)

(assert (=> b!4541865 (= lt!1716590 lt!1716571)))

(assert (=> b!4541865 (forall!10357 (toList!4415 lt!1716275) lambda!176565)))

(declare-fun lt!1716576 () Unit!98804)

(declare-fun Unit!98851 () Unit!98804)

(assert (=> b!4541865 (= lt!1716576 Unit!98851)))

(declare-fun res!1893076 () Bool)

(assert (=> b!4541865 (= res!1893076 (forall!10357 (_2!28920 lt!1716280) lambda!176565))))

(declare-fun e!2830326 () Bool)

(assert (=> b!4541865 (=> (not res!1893076) (not e!2830326))))

(assert (=> b!4541865 e!2830326))

(declare-fun lt!1716583 () Unit!98804)

(declare-fun Unit!98852 () Unit!98804)

(assert (=> b!4541865 (= lt!1716583 Unit!98852)))

(declare-fun c!775789 () Bool)

(declare-fun bm!316739 () Bool)

(assert (=> bm!316739 (= call!316743 (forall!10357 (ite c!775789 (toList!4415 lt!1716275) (toList!4415 lt!1716574)) (ite c!775789 lambda!176563 lambda!176565)))))

(declare-fun e!2830328 () Bool)

(assert (=> d!1404212 e!2830328))

(declare-fun res!1893078 () Bool)

(assert (=> d!1404212 (=> (not res!1893078) (not e!2830328))))

(assert (=> d!1404212 (= res!1893078 (forall!10357 (_2!28920 lt!1716280) lambda!176566))))

(assert (=> d!1404212 (= lt!1716587 e!2830327)))

(assert (=> d!1404212 (= c!775789 ((_ is Nil!50766) (_2!28920 lt!1716280)))))

(assert (=> d!1404212 (noDuplicateKeys!1204 (_2!28920 lt!1716280))))

(assert (=> d!1404212 (= (addToMapMapFromBucket!731 (_2!28920 lt!1716280) lt!1716275) lt!1716587)))

(declare-fun bm!316740 () Bool)

(assert (=> bm!316740 (= call!316745 (forall!10357 (toList!4415 lt!1716275) (ite c!775789 lambda!176563 lambda!176564)))))

(declare-fun b!4541866 () Bool)

(declare-fun res!1893077 () Bool)

(assert (=> b!4541866 (=> (not res!1893077) (not e!2830328))))

(assert (=> b!4541866 (= res!1893077 (forall!10357 (toList!4415 lt!1716275) lambda!176566))))

(declare-fun b!4541867 () Bool)

(assert (=> b!4541867 (= e!2830328 (invariantList!1048 (toList!4415 lt!1716587)))))

(declare-fun b!4541868 () Bool)

(assert (=> b!4541868 (= e!2830326 (forall!10357 (toList!4415 lt!1716275) lambda!176565))))

(assert (= (and d!1404212 c!775789) b!4541864))

(assert (= (and d!1404212 (not c!775789)) b!4541865))

(assert (= (and b!4541865 res!1893076) b!4541868))

(assert (= (or b!4541864 b!4541865) bm!316739))

(assert (= (or b!4541864 b!4541865) bm!316740))

(assert (= (or b!4541864 b!4541865) bm!316738))

(assert (= (and d!1404212 res!1893078) b!4541866))

(assert (= (and b!4541866 res!1893077) b!4541867))

(declare-fun m!5309835 () Bool)

(assert (=> d!1404212 m!5309835))

(assert (=> d!1404212 m!5309351))

(declare-fun m!5309837 () Bool)

(assert (=> bm!316738 m!5309837))

(declare-fun m!5309839 () Bool)

(assert (=> b!4541865 m!5309839))

(declare-fun m!5309841 () Bool)

(assert (=> b!4541865 m!5309841))

(declare-fun m!5309843 () Bool)

(assert (=> b!4541865 m!5309843))

(declare-fun m!5309845 () Bool)

(assert (=> b!4541865 m!5309845))

(declare-fun m!5309847 () Bool)

(assert (=> b!4541865 m!5309847))

(declare-fun m!5309849 () Bool)

(assert (=> b!4541865 m!5309849))

(assert (=> b!4541865 m!5309839))

(declare-fun m!5309851 () Bool)

(assert (=> b!4541865 m!5309851))

(assert (=> b!4541865 m!5309849))

(declare-fun m!5309853 () Bool)

(assert (=> b!4541865 m!5309853))

(assert (=> b!4541865 m!5309851))

(declare-fun m!5309855 () Bool)

(assert (=> b!4541865 m!5309855))

(declare-fun m!5309857 () Bool)

(assert (=> b!4541865 m!5309857))

(declare-fun m!5309859 () Bool)

(assert (=> b!4541867 m!5309859))

(declare-fun m!5309861 () Bool)

(assert (=> bm!316740 m!5309861))

(declare-fun m!5309863 () Bool)

(assert (=> bm!316739 m!5309863))

(declare-fun m!5309865 () Bool)

(assert (=> b!4541866 m!5309865))

(assert (=> b!4541868 m!5309849))

(assert (=> b!4541624 d!1404212))

(declare-fun d!1404220 () Bool)

(assert (=> d!1404220 (eq!661 (addToMapMapFromBucket!731 (_2!28920 lt!1716280) lt!1716274) (addToMapMapFromBucket!731 (_2!28920 lt!1716280) lt!1716275))))

(declare-fun lt!1716642 () Unit!98804)

(declare-fun choose!29947 (ListMap!3677 ListMap!3677 List!50890) Unit!98804)

(assert (=> d!1404220 (= lt!1716642 (choose!29947 lt!1716274 lt!1716275 (_2!28920 lt!1716280)))))

(assert (=> d!1404220 (noDuplicateKeys!1204 (_2!28920 lt!1716280))))

(assert (=> d!1404220 (= (lemmaAddToMapFromBucketPreservesEquivalence!80 lt!1716274 lt!1716275 (_2!28920 lt!1716280)) lt!1716642)))

(declare-fun bs!879063 () Bool)

(assert (= bs!879063 d!1404220))

(assert (=> bs!879063 m!5309413))

(assert (=> bs!879063 m!5309351))

(assert (=> bs!879063 m!5309387))

(declare-fun m!5309915 () Bool)

(assert (=> bs!879063 m!5309915))

(assert (=> bs!879063 m!5309413))

(assert (=> bs!879063 m!5309387))

(declare-fun m!5309919 () Bool)

(assert (=> bs!879063 m!5309919))

(assert (=> b!4541624 d!1404220))

(declare-fun b!4541924 () Bool)

(declare-fun res!1893115 () Bool)

(declare-fun e!2830368 () Bool)

(assert (=> b!4541924 (=> (not res!1893115) (not e!2830368))))

(declare-fun lt!1716651 () Option!11215)

(assert (=> b!4541924 (= res!1893115 (= (_1!28919 (get!16698 lt!1716651)) key!3287))))

(declare-fun b!4541925 () Bool)

(declare-fun e!2830367 () Option!11215)

(declare-fun e!2830365 () Option!11215)

(assert (=> b!4541925 (= e!2830367 e!2830365)))

(declare-fun c!775801 () Bool)

(assert (=> b!4541925 (= c!775801 ((_ is Cons!50766) (_2!28920 lt!1716280)))))

(declare-fun b!4541926 () Bool)

(declare-fun e!2830369 () Bool)

(assert (=> b!4541926 (= e!2830369 e!2830368)))

(declare-fun res!1893112 () Bool)

(assert (=> b!4541926 (=> (not res!1893112) (not e!2830368))))

(declare-fun isDefined!8495 (Option!11215) Bool)

(assert (=> b!4541926 (= res!1893112 (isDefined!8495 lt!1716651))))

(declare-fun b!4541927 () Bool)

(declare-fun e!2830366 () Bool)

(assert (=> b!4541927 (= e!2830366 (not (containsKey!1888 (_2!28920 lt!1716280) key!3287)))))

(declare-fun d!1404236 () Bool)

(assert (=> d!1404236 e!2830369))

(declare-fun res!1893114 () Bool)

(assert (=> d!1404236 (=> res!1893114 e!2830369)))

(assert (=> d!1404236 (= res!1893114 e!2830366)))

(declare-fun res!1893113 () Bool)

(assert (=> d!1404236 (=> (not res!1893113) (not e!2830366))))

(declare-fun isEmpty!28756 (Option!11215) Bool)

(assert (=> d!1404236 (= res!1893113 (isEmpty!28756 lt!1716651))))

(assert (=> d!1404236 (= lt!1716651 e!2830367)))

(declare-fun c!775802 () Bool)

(assert (=> d!1404236 (= c!775802 (and ((_ is Cons!50766) (_2!28920 lt!1716280)) (= (_1!28919 (h!56651 (_2!28920 lt!1716280))) key!3287)))))

(assert (=> d!1404236 (noDuplicateKeys!1204 (_2!28920 lt!1716280))))

(assert (=> d!1404236 (= (getPair!220 (_2!28920 lt!1716280) key!3287) lt!1716651)))

(declare-fun b!4541928 () Bool)

(declare-fun contains!13572 (List!50890 tuple2!51250) Bool)

(assert (=> b!4541928 (= e!2830368 (contains!13572 (_2!28920 lt!1716280) (get!16698 lt!1716651)))))

(declare-fun b!4541929 () Bool)

(assert (=> b!4541929 (= e!2830365 None!11214)))

(declare-fun b!4541930 () Bool)

(assert (=> b!4541930 (= e!2830365 (getPair!220 (t!357852 (_2!28920 lt!1716280)) key!3287))))

(declare-fun b!4541931 () Bool)

(assert (=> b!4541931 (= e!2830367 (Some!11214 (h!56651 (_2!28920 lt!1716280))))))

(assert (= (and d!1404236 c!775802) b!4541931))

(assert (= (and d!1404236 (not c!775802)) b!4541925))

(assert (= (and b!4541925 c!775801) b!4541930))

(assert (= (and b!4541925 (not c!775801)) b!4541929))

(assert (= (and d!1404236 res!1893113) b!4541927))

(assert (= (and d!1404236 (not res!1893114)) b!4541926))

(assert (= (and b!4541926 res!1893112) b!4541924))

(assert (= (and b!4541924 res!1893115) b!4541928))

(declare-fun m!5309989 () Bool)

(assert (=> d!1404236 m!5309989))

(assert (=> d!1404236 m!5309351))

(declare-fun m!5309991 () Bool)

(assert (=> b!4541928 m!5309991))

(assert (=> b!4541928 m!5309991))

(declare-fun m!5309993 () Bool)

(assert (=> b!4541928 m!5309993))

(assert (=> b!4541927 m!5309417))

(assert (=> b!4541924 m!5309991))

(declare-fun m!5309995 () Bool)

(assert (=> b!4541930 m!5309995))

(declare-fun m!5309997 () Bool)

(assert (=> b!4541926 m!5309997))

(assert (=> b!4541605 d!1404236))

(declare-fun d!1404252 () Bool)

(assert (=> d!1404252 (dynLambda!21223 lambda!176468 (h!56652 (toList!4416 lm!1477)))))

(declare-fun lt!1716652 () Unit!98804)

(assert (=> d!1404252 (= lt!1716652 (choose!29944 (toList!4416 lm!1477) lambda!176468 (h!56652 (toList!4416 lm!1477))))))

(declare-fun e!2830370 () Bool)

(assert (=> d!1404252 e!2830370))

(declare-fun res!1893116 () Bool)

(assert (=> d!1404252 (=> (not res!1893116) (not e!2830370))))

(assert (=> d!1404252 (= res!1893116 (forall!10355 (toList!4416 lm!1477) lambda!176468))))

(assert (=> d!1404252 (= (forallContained!2618 (toList!4416 lm!1477) lambda!176468 (h!56652 (toList!4416 lm!1477))) lt!1716652)))

(declare-fun b!4541932 () Bool)

(assert (=> b!4541932 (= e!2830370 (contains!13569 (toList!4416 lm!1477) (h!56652 (toList!4416 lm!1477))))))

(assert (= (and d!1404252 res!1893116) b!4541932))

(declare-fun b_lambda!158169 () Bool)

(assert (=> (not b_lambda!158169) (not d!1404252)))

(declare-fun m!5309999 () Bool)

(assert (=> d!1404252 m!5309999))

(declare-fun m!5310001 () Bool)

(assert (=> d!1404252 m!5310001))

(declare-fun m!5310003 () Bool)

(assert (=> d!1404252 m!5310003))

(declare-fun m!5310005 () Bool)

(assert (=> b!4541932 m!5310005))

(assert (=> b!4541605 d!1404252))

(declare-fun d!1404254 () Bool)

(declare-fun dynLambda!21224 (Int tuple2!51250) Bool)

(assert (=> d!1404254 (dynLambda!21224 lambda!176469 (tuple2!51251 key!3287 (_2!28919 (get!16698 lt!1716279))))))

(declare-fun lt!1716655 () Unit!98804)

(declare-fun choose!29948 (List!50890 Int tuple2!51250) Unit!98804)

(assert (=> d!1404254 (= lt!1716655 (choose!29948 (_2!28920 (h!56652 (toList!4416 lm!1477))) lambda!176469 (tuple2!51251 key!3287 (_2!28919 (get!16698 lt!1716279)))))))

(declare-fun e!2830373 () Bool)

(assert (=> d!1404254 e!2830373))

(declare-fun res!1893119 () Bool)

(assert (=> d!1404254 (=> (not res!1893119) (not e!2830373))))

(assert (=> d!1404254 (= res!1893119 (forall!10357 (_2!28920 (h!56652 (toList!4416 lm!1477))) lambda!176469))))

(assert (=> d!1404254 (= (forallContained!2619 (_2!28920 (h!56652 (toList!4416 lm!1477))) lambda!176469 (tuple2!51251 key!3287 (_2!28919 (get!16698 lt!1716279)))) lt!1716655)))

(declare-fun b!4541935 () Bool)

(assert (=> b!4541935 (= e!2830373 (contains!13572 (_2!28920 (h!56652 (toList!4416 lm!1477))) (tuple2!51251 key!3287 (_2!28919 (get!16698 lt!1716279)))))))

(assert (= (and d!1404254 res!1893119) b!4541935))

(declare-fun b_lambda!158171 () Bool)

(assert (=> (not b_lambda!158171) (not d!1404254)))

(declare-fun m!5310007 () Bool)

(assert (=> d!1404254 m!5310007))

(declare-fun m!5310009 () Bool)

(assert (=> d!1404254 m!5310009))

(declare-fun m!5310011 () Bool)

(assert (=> d!1404254 m!5310011))

(declare-fun m!5310013 () Bool)

(assert (=> b!4541935 m!5310013))

(assert (=> b!4541605 d!1404254))

(declare-fun d!1404256 () Bool)

(assert (=> d!1404256 (= (get!16698 lt!1716279) (v!44920 lt!1716279))))

(assert (=> b!4541605 d!1404256))

(declare-fun d!1404258 () Bool)

(declare-fun res!1893124 () Bool)

(declare-fun e!2830378 () Bool)

(assert (=> d!1404258 (=> res!1893124 e!2830378)))

(assert (=> d!1404258 (= res!1893124 (and ((_ is Cons!50766) (_2!28920 lt!1716280)) (= (_1!28919 (h!56651 (_2!28920 lt!1716280))) key!3287)))))

(assert (=> d!1404258 (= (containsKey!1888 (_2!28920 lt!1716280) key!3287) e!2830378)))

(declare-fun b!4541940 () Bool)

(declare-fun e!2830379 () Bool)

(assert (=> b!4541940 (= e!2830378 e!2830379)))

(declare-fun res!1893125 () Bool)

(assert (=> b!4541940 (=> (not res!1893125) (not e!2830379))))

(assert (=> b!4541940 (= res!1893125 ((_ is Cons!50766) (_2!28920 lt!1716280)))))

(declare-fun b!4541941 () Bool)

(assert (=> b!4541941 (= e!2830379 (containsKey!1888 (t!357852 (_2!28920 lt!1716280)) key!3287))))

(assert (= (and d!1404258 (not res!1893124)) b!4541940))

(assert (= (and b!4541940 res!1893125) b!4541941))

(declare-fun m!5310015 () Bool)

(assert (=> b!4541941 m!5310015))

(assert (=> b!4541604 d!1404258))

(declare-fun d!1404260 () Bool)

(declare-fun hash!2935 (Hashable!5599 K!12150) (_ BitVec 64))

(assert (=> d!1404260 (= (hash!2931 hashF!1107 key!3287) (hash!2935 hashF!1107 key!3287))))

(declare-fun bs!879085 () Bool)

(assert (= bs!879085 d!1404260))

(declare-fun m!5310017 () Bool)

(assert (=> bs!879085 m!5310017))

(assert (=> b!4541601 d!1404260))

(declare-fun d!1404262 () Bool)

(declare-fun res!1893126 () Bool)

(declare-fun e!2830380 () Bool)

(assert (=> d!1404262 (=> res!1893126 e!2830380)))

(assert (=> d!1404262 (= res!1893126 (not ((_ is Cons!50766) (_2!28920 lt!1716280))))))

(assert (=> d!1404262 (= (noDuplicateKeys!1204 (_2!28920 lt!1716280)) e!2830380)))

(declare-fun b!4541942 () Bool)

(declare-fun e!2830381 () Bool)

(assert (=> b!4541942 (= e!2830380 e!2830381)))

(declare-fun res!1893127 () Bool)

(assert (=> b!4541942 (=> (not res!1893127) (not e!2830381))))

(assert (=> b!4541942 (= res!1893127 (not (containsKey!1888 (t!357852 (_2!28920 lt!1716280)) (_1!28919 (h!56651 (_2!28920 lt!1716280))))))))

(declare-fun b!4541943 () Bool)

(assert (=> b!4541943 (= e!2830381 (noDuplicateKeys!1204 (t!357852 (_2!28920 lt!1716280))))))

(assert (= (and d!1404262 (not res!1893126)) b!4541942))

(assert (= (and b!4541942 res!1893127) b!4541943))

(declare-fun m!5310019 () Bool)

(assert (=> b!4541942 m!5310019))

(declare-fun m!5310021 () Bool)

(assert (=> b!4541943 m!5310021))

(assert (=> b!4541622 d!1404262))

(declare-fun d!1404264 () Bool)

(assert (=> d!1404264 (dynLambda!21223 lambda!176467 (h!56652 (toList!4416 lm!1477)))))

(declare-fun lt!1716656 () Unit!98804)

(assert (=> d!1404264 (= lt!1716656 (choose!29944 (toList!4416 lm!1477) lambda!176467 (h!56652 (toList!4416 lm!1477))))))

(declare-fun e!2830382 () Bool)

(assert (=> d!1404264 e!2830382))

(declare-fun res!1893128 () Bool)

(assert (=> d!1404264 (=> (not res!1893128) (not e!2830382))))

(assert (=> d!1404264 (= res!1893128 (forall!10355 (toList!4416 lm!1477) lambda!176467))))

(assert (=> d!1404264 (= (forallContained!2618 (toList!4416 lm!1477) lambda!176467 (h!56652 (toList!4416 lm!1477))) lt!1716656)))

(declare-fun b!4541944 () Bool)

(assert (=> b!4541944 (= e!2830382 (contains!13569 (toList!4416 lm!1477) (h!56652 (toList!4416 lm!1477))))))

(assert (= (and d!1404264 res!1893128) b!4541944))

(declare-fun b_lambda!158173 () Bool)

(assert (=> (not b_lambda!158173) (not d!1404264)))

(assert (=> d!1404264 m!5309763))

(declare-fun m!5310023 () Bool)

(assert (=> d!1404264 m!5310023))

(assert (=> d!1404264 m!5309379))

(assert (=> b!4541944 m!5310005))

(assert (=> b!4541622 d!1404264))

(declare-fun d!1404266 () Bool)

(assert (=> d!1404266 (= (eq!661 lt!1716299 lt!1716277) (= (content!8453 (toList!4415 lt!1716299)) (content!8453 (toList!4415 lt!1716277))))))

(declare-fun bs!879086 () Bool)

(assert (= bs!879086 d!1404266))

(assert (=> bs!879086 m!5309545))

(declare-fun m!5310025 () Bool)

(assert (=> bs!879086 m!5310025))

(assert (=> b!4541600 d!1404266))

(declare-fun d!1404268 () Bool)

(assert (=> d!1404268 (= (eq!661 lt!1716278 lt!1716277) (= (content!8453 (toList!4415 lt!1716278)) (content!8453 (toList!4415 lt!1716277))))))

(declare-fun bs!879087 () Bool)

(assert (= bs!879087 d!1404268))

(assert (=> bs!879087 m!5309809))

(assert (=> bs!879087 m!5310025))

(assert (=> b!4541602 d!1404268))

(declare-fun d!1404270 () Bool)

(declare-fun e!2830383 () Bool)

(assert (=> d!1404270 e!2830383))

(declare-fun res!1893129 () Bool)

(assert (=> d!1404270 (=> (not res!1893129) (not e!2830383))))

(declare-fun lt!1716657 () ListMap!3677)

(assert (=> d!1404270 (= res!1893129 (not (contains!13567 lt!1716657 key!3287)))))

(assert (=> d!1404270 (= lt!1716657 (ListMap!3678 (removePresrvNoDuplicatedKeys!173 (toList!4415 lt!1716283) key!3287)))))

(assert (=> d!1404270 (= (-!430 lt!1716283 key!3287) lt!1716657)))

(declare-fun b!4541945 () Bool)

(assert (=> b!4541945 (= e!2830383 (= ((_ map and) (content!8454 (keys!17669 lt!1716283)) ((_ map not) (store ((as const (Array K!12150 Bool)) false) key!3287 true))) (content!8454 (keys!17669 lt!1716657))))))

(assert (= (and d!1404270 res!1893129) b!4541945))

(declare-fun m!5310027 () Bool)

(assert (=> d!1404270 m!5310027))

(declare-fun m!5310029 () Bool)

(assert (=> d!1404270 m!5310029))

(declare-fun m!5310031 () Bool)

(assert (=> b!4541945 m!5310031))

(declare-fun m!5310033 () Bool)

(assert (=> b!4541945 m!5310033))

(assert (=> b!4541945 m!5309467))

(assert (=> b!4541945 m!5309467))

(declare-fun m!5310035 () Bool)

(assert (=> b!4541945 m!5310035))

(assert (=> b!4541945 m!5310031))

(assert (=> b!4541945 m!5309687))

(assert (=> b!4541602 d!1404270))

(declare-fun d!1404272 () Bool)

(assert (=> d!1404272 (= (eq!661 lt!1716283 lt!1716286) (= (content!8453 (toList!4415 lt!1716283)) (content!8453 (toList!4415 lt!1716286))))))

(declare-fun bs!879088 () Bool)

(assert (= bs!879088 d!1404272))

(declare-fun m!5310037 () Bool)

(assert (=> bs!879088 m!5310037))

(declare-fun m!5310039 () Bool)

(assert (=> bs!879088 m!5310039))

(assert (=> b!4541623 d!1404272))

(declare-fun d!1404274 () Bool)

(declare-fun res!1893130 () Bool)

(declare-fun e!2830384 () Bool)

(assert (=> d!1404274 (=> res!1893130 e!2830384)))

(assert (=> d!1404274 (= res!1893130 ((_ is Nil!50767) (toList!4416 lt!1716282)))))

(assert (=> d!1404274 (= (forall!10355 (toList!4416 lt!1716282) lambda!176467) e!2830384)))

(declare-fun b!4541946 () Bool)

(declare-fun e!2830385 () Bool)

(assert (=> b!4541946 (= e!2830384 e!2830385)))

(declare-fun res!1893131 () Bool)

(assert (=> b!4541946 (=> (not res!1893131) (not e!2830385))))

(assert (=> b!4541946 (= res!1893131 (dynLambda!21223 lambda!176467 (h!56652 (toList!4416 lt!1716282))))))

(declare-fun b!4541947 () Bool)

(assert (=> b!4541947 (= e!2830385 (forall!10355 (t!357853 (toList!4416 lt!1716282)) lambda!176467))))

(assert (= (and d!1404274 (not res!1893130)) b!4541946))

(assert (= (and b!4541946 res!1893131) b!4541947))

(declare-fun b_lambda!158175 () Bool)

(assert (=> (not b_lambda!158175) (not b!4541946)))

(declare-fun m!5310041 () Bool)

(assert (=> b!4541946 m!5310041))

(declare-fun m!5310043 () Bool)

(assert (=> b!4541947 m!5310043))

(assert (=> b!4541598 d!1404274))

(declare-fun d!1404276 () Bool)

(declare-fun res!1893140 () Bool)

(declare-fun e!2830392 () Bool)

(assert (=> d!1404276 (=> res!1893140 e!2830392)))

(declare-fun e!2830394 () Bool)

(assert (=> d!1404276 (= res!1893140 e!2830394)))

(declare-fun res!1893138 () Bool)

(assert (=> d!1404276 (=> (not res!1893138) (not e!2830394))))

(assert (=> d!1404276 (= res!1893138 ((_ is Cons!50767) (t!357853 (toList!4416 lm!1477))))))

(assert (=> d!1404276 (= (containsKeyBiggerList!184 (t!357853 (toList!4416 lm!1477)) key!3287) e!2830392)))

(declare-fun b!4541954 () Bool)

(assert (=> b!4541954 (= e!2830394 (containsKey!1888 (_2!28920 (h!56652 (t!357853 (toList!4416 lm!1477)))) key!3287))))

(declare-fun b!4541955 () Bool)

(declare-fun e!2830393 () Bool)

(assert (=> b!4541955 (= e!2830392 e!2830393)))

(declare-fun res!1893139 () Bool)

(assert (=> b!4541955 (=> (not res!1893139) (not e!2830393))))

(assert (=> b!4541955 (= res!1893139 ((_ is Cons!50767) (t!357853 (toList!4416 lm!1477))))))

(declare-fun b!4541956 () Bool)

(assert (=> b!4541956 (= e!2830393 (containsKeyBiggerList!184 (t!357853 (t!357853 (toList!4416 lm!1477))) key!3287))))

(assert (= (and d!1404276 res!1893138) b!4541954))

(assert (= (and d!1404276 (not res!1893140)) b!4541955))

(assert (= (and b!4541955 res!1893139) b!4541956))

(declare-fun m!5310045 () Bool)

(assert (=> b!4541954 m!5310045))

(declare-fun m!5310047 () Bool)

(assert (=> b!4541956 m!5310047))

(assert (=> b!4541619 d!1404276))

(declare-fun d!1404278 () Bool)

(declare-fun res!1893143 () Bool)

(declare-fun e!2830395 () Bool)

(assert (=> d!1404278 (=> res!1893143 e!2830395)))

(declare-fun e!2830397 () Bool)

(assert (=> d!1404278 (= res!1893143 e!2830397)))

(declare-fun res!1893141 () Bool)

(assert (=> d!1404278 (=> (not res!1893141) (not e!2830397))))

(assert (=> d!1404278 (= res!1893141 ((_ is Cons!50767) (toList!4416 lt!1716276)))))

(assert (=> d!1404278 (= (containsKeyBiggerList!184 (toList!4416 lt!1716276) key!3287) e!2830395)))

(declare-fun b!4541957 () Bool)

(assert (=> b!4541957 (= e!2830397 (containsKey!1888 (_2!28920 (h!56652 (toList!4416 lt!1716276))) key!3287))))

(declare-fun b!4541958 () Bool)

(declare-fun e!2830396 () Bool)

(assert (=> b!4541958 (= e!2830395 e!2830396)))

(declare-fun res!1893142 () Bool)

(assert (=> b!4541958 (=> (not res!1893142) (not e!2830396))))

(assert (=> b!4541958 (= res!1893142 ((_ is Cons!50767) (toList!4416 lt!1716276)))))

(declare-fun b!4541959 () Bool)

(assert (=> b!4541959 (= e!2830396 (containsKeyBiggerList!184 (t!357853 (toList!4416 lt!1716276)) key!3287))))

(assert (= (and d!1404278 res!1893141) b!4541957))

(assert (= (and d!1404278 (not res!1893143)) b!4541958))

(assert (= (and b!4541958 res!1893142) b!4541959))

(declare-fun m!5310049 () Bool)

(assert (=> b!4541957 m!5310049))

(declare-fun m!5310051 () Bool)

(assert (=> b!4541959 m!5310051))

(assert (=> b!4541619 d!1404278))

(declare-fun bs!879089 () Bool)

(declare-fun d!1404280 () Bool)

(assert (= bs!879089 (and d!1404280 d!1404172)))

(declare-fun lambda!176578 () Int)

(assert (=> bs!879089 (= lambda!176578 lambda!176552)))

(declare-fun bs!879090 () Bool)

(assert (= bs!879090 (and d!1404280 start!450944)))

(assert (=> bs!879090 (= lambda!176578 lambda!176467)))

(declare-fun bs!879091 () Bool)

(assert (= bs!879091 (and d!1404280 d!1404112)))

(assert (=> bs!879091 (= lambda!176578 lambda!176478)))

(declare-fun bs!879092 () Bool)

(assert (= bs!879092 (and d!1404280 d!1404164)))

(assert (=> bs!879092 (= lambda!176578 lambda!176549)))

(declare-fun bs!879093 () Bool)

(assert (= bs!879093 (and d!1404280 b!4541605)))

(assert (=> bs!879093 (not (= lambda!176578 lambda!176468))))

(assert (=> d!1404280 (containsKeyBiggerList!184 (toList!4416 lt!1716276) key!3287)))

(declare-fun lt!1716662 () Unit!98804)

(declare-fun choose!29949 (ListLongMap!3047 K!12150 Hashable!5599) Unit!98804)

(assert (=> d!1404280 (= lt!1716662 (choose!29949 lt!1716276 key!3287 hashF!1107))))

(assert (=> d!1404280 (forall!10355 (toList!4416 lt!1716276) lambda!176578)))

(assert (=> d!1404280 (= (lemmaInLongMapThenContainsKeyBiggerList!120 lt!1716276 key!3287 hashF!1107) lt!1716662)))

(declare-fun bs!879094 () Bool)

(assert (= bs!879094 d!1404280))

(assert (=> bs!879094 m!5309327))

(declare-fun m!5310053 () Bool)

(assert (=> bs!879094 m!5310053))

(declare-fun m!5310055 () Bool)

(assert (=> bs!879094 m!5310055))

(assert (=> b!4541619 d!1404280))

(declare-fun d!1404282 () Bool)

(declare-fun e!2830405 () Bool)

(assert (=> d!1404282 e!2830405))

(declare-fun res!1893153 () Bool)

(assert (=> d!1404282 (=> (not res!1893153) (not e!2830405))))

(declare-fun lt!1716678 () ListLongMap!3047)

(assert (=> d!1404282 (= res!1893153 (contains!13568 lt!1716678 (_1!28920 lt!1716295)))))

(declare-fun lt!1716681 () List!50891)

(assert (=> d!1404282 (= lt!1716678 (ListLongMap!3048 lt!1716681))))

(declare-fun lt!1716680 () Unit!98804)

(declare-fun lt!1716679 () Unit!98804)

(assert (=> d!1404282 (= lt!1716680 lt!1716679)))

(assert (=> d!1404282 (= (getValueByKey!1156 lt!1716681 (_1!28920 lt!1716295)) (Some!11217 (_2!28920 lt!1716295)))))

(declare-fun lemmaContainsTupThenGetReturnValue!726 (List!50891 (_ BitVec 64) List!50890) Unit!98804)

(assert (=> d!1404282 (= lt!1716679 (lemmaContainsTupThenGetReturnValue!726 lt!1716681 (_1!28920 lt!1716295) (_2!28920 lt!1716295)))))

(declare-fun insertStrictlySorted!440 (List!50891 (_ BitVec 64) List!50890) List!50891)

(assert (=> d!1404282 (= lt!1716681 (insertStrictlySorted!440 (toList!4416 lm!1477) (_1!28920 lt!1716295) (_2!28920 lt!1716295)))))

(assert (=> d!1404282 (= (+!1614 lm!1477 lt!1716295) lt!1716678)))

(declare-fun b!4541971 () Bool)

(declare-fun res!1893154 () Bool)

(assert (=> b!4541971 (=> (not res!1893154) (not e!2830405))))

(assert (=> b!4541971 (= res!1893154 (= (getValueByKey!1156 (toList!4416 lt!1716678) (_1!28920 lt!1716295)) (Some!11217 (_2!28920 lt!1716295))))))

(declare-fun b!4541972 () Bool)

(assert (=> b!4541972 (= e!2830405 (contains!13569 (toList!4416 lt!1716678) lt!1716295))))

(assert (= (and d!1404282 res!1893153) b!4541971))

(assert (= (and b!4541971 res!1893154) b!4541972))

(declare-fun m!5310103 () Bool)

(assert (=> d!1404282 m!5310103))

(declare-fun m!5310105 () Bool)

(assert (=> d!1404282 m!5310105))

(declare-fun m!5310107 () Bool)

(assert (=> d!1404282 m!5310107))

(declare-fun m!5310109 () Bool)

(assert (=> d!1404282 m!5310109))

(declare-fun m!5310111 () Bool)

(assert (=> b!4541971 m!5310111))

(declare-fun m!5310113 () Bool)

(assert (=> b!4541972 m!5310113))

(assert (=> b!4541621 d!1404282))

(declare-fun d!1404296 () Bool)

(declare-fun e!2830406 () Bool)

(assert (=> d!1404296 e!2830406))

(declare-fun res!1893155 () Bool)

(assert (=> d!1404296 (=> (not res!1893155) (not e!2830406))))

(declare-fun lt!1716682 () ListLongMap!3047)

(assert (=> d!1404296 (= res!1893155 (contains!13568 lt!1716682 (_1!28920 lt!1716280)))))

(declare-fun lt!1716685 () List!50891)

(assert (=> d!1404296 (= lt!1716682 (ListLongMap!3048 lt!1716685))))

(declare-fun lt!1716684 () Unit!98804)

(declare-fun lt!1716683 () Unit!98804)

(assert (=> d!1404296 (= lt!1716684 lt!1716683)))

(assert (=> d!1404296 (= (getValueByKey!1156 lt!1716685 (_1!28920 lt!1716280)) (Some!11217 (_2!28920 lt!1716280)))))

(assert (=> d!1404296 (= lt!1716683 (lemmaContainsTupThenGetReturnValue!726 lt!1716685 (_1!28920 lt!1716280) (_2!28920 lt!1716280)))))

(assert (=> d!1404296 (= lt!1716685 (insertStrictlySorted!440 (toList!4416 lt!1716269) (_1!28920 lt!1716280) (_2!28920 lt!1716280)))))

(assert (=> d!1404296 (= (+!1614 lt!1716269 lt!1716280) lt!1716682)))

(declare-fun b!4541973 () Bool)

(declare-fun res!1893156 () Bool)

(assert (=> b!4541973 (=> (not res!1893156) (not e!2830406))))

(assert (=> b!4541973 (= res!1893156 (= (getValueByKey!1156 (toList!4416 lt!1716682) (_1!28920 lt!1716280)) (Some!11217 (_2!28920 lt!1716280))))))

(declare-fun b!4541974 () Bool)

(assert (=> b!4541974 (= e!2830406 (contains!13569 (toList!4416 lt!1716682) lt!1716280))))

(assert (= (and d!1404296 res!1893155) b!4541973))

(assert (= (and b!4541973 res!1893156) b!4541974))

(declare-fun m!5310115 () Bool)

(assert (=> d!1404296 m!5310115))

(declare-fun m!5310117 () Bool)

(assert (=> d!1404296 m!5310117))

(declare-fun m!5310119 () Bool)

(assert (=> d!1404296 m!5310119))

(declare-fun m!5310121 () Bool)

(assert (=> d!1404296 m!5310121))

(declare-fun m!5310123 () Bool)

(assert (=> b!4541973 m!5310123))

(declare-fun m!5310125 () Bool)

(assert (=> b!4541974 m!5310125))

(assert (=> b!4541621 d!1404296))

(declare-fun d!1404298 () Bool)

(assert (=> d!1404298 (= (apply!11941 lt!1716276 hash!344) (get!16700 (getValueByKey!1156 (toList!4416 lt!1716276) hash!344)))))

(declare-fun bs!879128 () Bool)

(assert (= bs!879128 d!1404298))

(assert (=> bs!879128 m!5309791))

(assert (=> bs!879128 m!5309791))

(declare-fun m!5310127 () Bool)

(assert (=> bs!879128 m!5310127))

(assert (=> b!4541599 d!1404298))

(declare-fun bs!879135 () Bool)

(declare-fun d!1404300 () Bool)

(assert (= bs!879135 (and d!1404300 d!1404172)))

(declare-fun lambda!176586 () Int)

(assert (=> bs!879135 (= lambda!176586 lambda!176552)))

(declare-fun bs!879136 () Bool)

(assert (= bs!879136 (and d!1404300 start!450944)))

(assert (=> bs!879136 (= lambda!176586 lambda!176467)))

(declare-fun bs!879137 () Bool)

(assert (= bs!879137 (and d!1404300 d!1404112)))

(assert (=> bs!879137 (= lambda!176586 lambda!176478)))

(declare-fun bs!879138 () Bool)

(assert (= bs!879138 (and d!1404300 d!1404280)))

(assert (=> bs!879138 (= lambda!176586 lambda!176578)))

(declare-fun bs!879139 () Bool)

(assert (= bs!879139 (and d!1404300 d!1404164)))

(assert (=> bs!879139 (= lambda!176586 lambda!176549)))

(declare-fun bs!879140 () Bool)

(assert (= bs!879140 (and d!1404300 b!4541605)))

(assert (=> bs!879140 (not (= lambda!176586 lambda!176468))))

(assert (=> d!1404300 (not (contains!13567 (extractMap!1260 (toList!4416 lm!1477)) key!3287))))

(declare-fun lt!1716693 () Unit!98804)

(declare-fun choose!29950 (ListLongMap!3047 K!12150 Hashable!5599) Unit!98804)

(assert (=> d!1404300 (= lt!1716693 (choose!29950 lm!1477 key!3287 hashF!1107))))

(assert (=> d!1404300 (forall!10355 (toList!4416 lm!1477) lambda!176586)))

(assert (=> d!1404300 (= (lemmaNotInItsHashBucketThenNotInMap!192 lm!1477 key!3287 hashF!1107) lt!1716693)))

(declare-fun bs!879141 () Bool)

(assert (= bs!879141 d!1404300))

(assert (=> bs!879141 m!5309455))

(assert (=> bs!879141 m!5309455))

(declare-fun m!5310155 () Bool)

(assert (=> bs!879141 m!5310155))

(declare-fun m!5310157 () Bool)

(assert (=> bs!879141 m!5310157))

(declare-fun m!5310159 () Bool)

(assert (=> bs!879141 m!5310159))

(assert (=> b!4541620 d!1404300))

(declare-fun d!1404312 () Bool)

(declare-fun e!2830429 () Bool)

(assert (=> d!1404312 e!2830429))

(declare-fun res!1893176 () Bool)

(assert (=> d!1404312 (=> (not res!1893176) (not e!2830429))))

(declare-fun lt!1716697 () ListLongMap!3047)

(assert (=> d!1404312 (= res!1893176 (contains!13568 lt!1716697 (_1!28920 lt!1716280)))))

(declare-fun lt!1716700 () List!50891)

(assert (=> d!1404312 (= lt!1716697 (ListLongMap!3048 lt!1716700))))

(declare-fun lt!1716699 () Unit!98804)

(declare-fun lt!1716698 () Unit!98804)

(assert (=> d!1404312 (= lt!1716699 lt!1716698)))

(assert (=> d!1404312 (= (getValueByKey!1156 lt!1716700 (_1!28920 lt!1716280)) (Some!11217 (_2!28920 lt!1716280)))))

(assert (=> d!1404312 (= lt!1716698 (lemmaContainsTupThenGetReturnValue!726 lt!1716700 (_1!28920 lt!1716280) (_2!28920 lt!1716280)))))

(assert (=> d!1404312 (= lt!1716700 (insertStrictlySorted!440 (toList!4416 lt!1716276) (_1!28920 lt!1716280) (_2!28920 lt!1716280)))))

(assert (=> d!1404312 (= (+!1614 lt!1716276 lt!1716280) lt!1716697)))

(declare-fun b!4542006 () Bool)

(declare-fun res!1893177 () Bool)

(assert (=> b!4542006 (=> (not res!1893177) (not e!2830429))))

(assert (=> b!4542006 (= res!1893177 (= (getValueByKey!1156 (toList!4416 lt!1716697) (_1!28920 lt!1716280)) (Some!11217 (_2!28920 lt!1716280))))))

(declare-fun b!4542007 () Bool)

(assert (=> b!4542007 (= e!2830429 (contains!13569 (toList!4416 lt!1716697) lt!1716280))))

(assert (= (and d!1404312 res!1893176) b!4542006))

(assert (= (and b!4542006 res!1893177) b!4542007))

(declare-fun m!5310169 () Bool)

(assert (=> d!1404312 m!5310169))

(declare-fun m!5310171 () Bool)

(assert (=> d!1404312 m!5310171))

(declare-fun m!5310173 () Bool)

(assert (=> d!1404312 m!5310173))

(declare-fun m!5310175 () Bool)

(assert (=> d!1404312 m!5310175))

(declare-fun m!5310177 () Bool)

(assert (=> b!4542006 m!5310177))

(declare-fun m!5310179 () Bool)

(assert (=> b!4542007 m!5310179))

(assert (=> b!4541617 d!1404312))

(declare-fun d!1404318 () Bool)

(assert (=> d!1404318 (= (eq!661 lt!1716286 lt!1716283) (= (content!8453 (toList!4415 lt!1716286)) (content!8453 (toList!4415 lt!1716283))))))

(declare-fun bs!879143 () Bool)

(assert (= bs!879143 d!1404318))

(assert (=> bs!879143 m!5310039))

(assert (=> bs!879143 m!5310037))

(assert (=> b!4541617 d!1404318))

(declare-fun bs!879171 () Bool)

(declare-fun d!1404322 () Bool)

(assert (= bs!879171 (and d!1404322 d!1404172)))

(declare-fun lambda!176593 () Int)

(assert (=> bs!879171 (= lambda!176593 lambda!176552)))

(declare-fun bs!879172 () Bool)

(assert (= bs!879172 (and d!1404322 start!450944)))

(assert (=> bs!879172 (= lambda!176593 lambda!176467)))

(declare-fun bs!879173 () Bool)

(assert (= bs!879173 (and d!1404322 d!1404112)))

(assert (=> bs!879173 (= lambda!176593 lambda!176478)))

(declare-fun bs!879174 () Bool)

(assert (= bs!879174 (and d!1404322 d!1404300)))

(assert (=> bs!879174 (= lambda!176593 lambda!176586)))

(declare-fun bs!879175 () Bool)

(assert (= bs!879175 (and d!1404322 d!1404280)))

(assert (=> bs!879175 (= lambda!176593 lambda!176578)))

(declare-fun bs!879176 () Bool)

(assert (= bs!879176 (and d!1404322 d!1404164)))

(assert (=> bs!879176 (= lambda!176593 lambda!176549)))

(declare-fun bs!879177 () Bool)

(assert (= bs!879177 (and d!1404322 b!4541605)))

(assert (=> bs!879177 (not (= lambda!176593 lambda!176468))))

(assert (=> d!1404322 (eq!661 (extractMap!1260 (toList!4416 (+!1614 lt!1716276 (tuple2!51253 hash!344 newBucket!178)))) (-!430 (extractMap!1260 (toList!4416 lt!1716276)) key!3287))))

(declare-fun lt!1716725 () Unit!98804)

(declare-fun choose!29951 (ListLongMap!3047 (_ BitVec 64) List!50890 K!12150 Hashable!5599) Unit!98804)

(assert (=> d!1404322 (= lt!1716725 (choose!29951 lt!1716276 hash!344 newBucket!178 key!3287 hashF!1107))))

(assert (=> d!1404322 (forall!10355 (toList!4416 lt!1716276) lambda!176593)))

(assert (=> d!1404322 (= (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMap!189 lt!1716276 hash!344 newBucket!178 key!3287 hashF!1107) lt!1716725)))

(declare-fun bs!879178 () Bool)

(assert (= bs!879178 d!1404322))

(declare-fun m!5310229 () Bool)

(assert (=> bs!879178 m!5310229))

(assert (=> bs!879178 m!5309399))

(declare-fun m!5310231 () Bool)

(assert (=> bs!879178 m!5310231))

(assert (=> bs!879178 m!5309399))

(declare-fun m!5310233 () Bool)

(assert (=> bs!879178 m!5310233))

(declare-fun m!5310235 () Bool)

(assert (=> bs!879178 m!5310235))

(assert (=> bs!879178 m!5310235))

(assert (=> bs!879178 m!5310233))

(declare-fun m!5310237 () Bool)

(assert (=> bs!879178 m!5310237))

(declare-fun m!5310239 () Bool)

(assert (=> bs!879178 m!5310239))

(assert (=> b!4541617 d!1404322))

(declare-fun bs!879179 () Bool)

(declare-fun d!1404328 () Bool)

(assert (= bs!879179 (and d!1404328 d!1404172)))

(declare-fun lambda!176594 () Int)

(assert (=> bs!879179 (= lambda!176594 lambda!176552)))

(declare-fun bs!879180 () Bool)

(assert (= bs!879180 (and d!1404328 start!450944)))

(assert (=> bs!879180 (= lambda!176594 lambda!176467)))

(declare-fun bs!879181 () Bool)

(assert (= bs!879181 (and d!1404328 d!1404300)))

(assert (=> bs!879181 (= lambda!176594 lambda!176586)))

(declare-fun bs!879182 () Bool)

(assert (= bs!879182 (and d!1404328 d!1404280)))

(assert (=> bs!879182 (= lambda!176594 lambda!176578)))

(declare-fun bs!879183 () Bool)

(assert (= bs!879183 (and d!1404328 d!1404164)))

(assert (=> bs!879183 (= lambda!176594 lambda!176549)))

(declare-fun bs!879184 () Bool)

(assert (= bs!879184 (and d!1404328 b!4541605)))

(assert (=> bs!879184 (not (= lambda!176594 lambda!176468))))

(declare-fun bs!879185 () Bool)

(assert (= bs!879185 (and d!1404328 d!1404322)))

(assert (=> bs!879185 (= lambda!176594 lambda!176593)))

(declare-fun bs!879186 () Bool)

(assert (= bs!879186 (and d!1404328 d!1404112)))

(assert (=> bs!879186 (= lambda!176594 lambda!176478)))

(declare-fun lt!1716726 () ListMap!3677)

(assert (=> d!1404328 (invariantList!1048 (toList!4415 lt!1716726))))

(declare-fun e!2830434 () ListMap!3677)

(assert (=> d!1404328 (= lt!1716726 e!2830434)))

(declare-fun c!775811 () Bool)

(assert (=> d!1404328 (= c!775811 ((_ is Cons!50767) (toList!4416 (+!1614 lt!1716276 lt!1716280))))))

(assert (=> d!1404328 (forall!10355 (toList!4416 (+!1614 lt!1716276 lt!1716280)) lambda!176594)))

(assert (=> d!1404328 (= (extractMap!1260 (toList!4416 (+!1614 lt!1716276 lt!1716280))) lt!1716726)))

(declare-fun b!4542014 () Bool)

(assert (=> b!4542014 (= e!2830434 (addToMapMapFromBucket!731 (_2!28920 (h!56652 (toList!4416 (+!1614 lt!1716276 lt!1716280)))) (extractMap!1260 (t!357853 (toList!4416 (+!1614 lt!1716276 lt!1716280))))))))

(declare-fun b!4542015 () Bool)

(assert (=> b!4542015 (= e!2830434 (ListMap!3678 Nil!50766))))

(assert (= (and d!1404328 c!775811) b!4542014))

(assert (= (and d!1404328 (not c!775811)) b!4542015))

(declare-fun m!5310241 () Bool)

(assert (=> d!1404328 m!5310241))

(declare-fun m!5310243 () Bool)

(assert (=> d!1404328 m!5310243))

(declare-fun m!5310245 () Bool)

(assert (=> b!4542014 m!5310245))

(assert (=> b!4542014 m!5310245))

(declare-fun m!5310247 () Bool)

(assert (=> b!4542014 m!5310247))

(assert (=> b!4541617 d!1404328))

(declare-fun bs!879187 () Bool)

(declare-fun d!1404330 () Bool)

(assert (= bs!879187 (and d!1404330 d!1404328)))

(declare-fun lambda!176595 () Int)

(assert (=> bs!879187 (= lambda!176595 lambda!176594)))

(declare-fun bs!879188 () Bool)

(assert (= bs!879188 (and d!1404330 d!1404172)))

(assert (=> bs!879188 (= lambda!176595 lambda!176552)))

(declare-fun bs!879189 () Bool)

(assert (= bs!879189 (and d!1404330 start!450944)))

(assert (=> bs!879189 (= lambda!176595 lambda!176467)))

(declare-fun bs!879191 () Bool)

(assert (= bs!879191 (and d!1404330 d!1404300)))

(assert (=> bs!879191 (= lambda!176595 lambda!176586)))

(declare-fun bs!879192 () Bool)

(assert (= bs!879192 (and d!1404330 d!1404280)))

(assert (=> bs!879192 (= lambda!176595 lambda!176578)))

(declare-fun bs!879193 () Bool)

(assert (= bs!879193 (and d!1404330 d!1404164)))

(assert (=> bs!879193 (= lambda!176595 lambda!176549)))

(declare-fun bs!879194 () Bool)

(assert (= bs!879194 (and d!1404330 b!4541605)))

(assert (=> bs!879194 (not (= lambda!176595 lambda!176468))))

(declare-fun bs!879195 () Bool)

(assert (= bs!879195 (and d!1404330 d!1404322)))

(assert (=> bs!879195 (= lambda!176595 lambda!176593)))

(declare-fun bs!879196 () Bool)

(assert (= bs!879196 (and d!1404330 d!1404112)))

(assert (=> bs!879196 (= lambda!176595 lambda!176478)))

(declare-fun lt!1716729 () ListMap!3677)

(assert (=> d!1404330 (invariantList!1048 (toList!4415 lt!1716729))))

(declare-fun e!2830435 () ListMap!3677)

(assert (=> d!1404330 (= lt!1716729 e!2830435)))

(declare-fun c!775812 () Bool)

(assert (=> d!1404330 (= c!775812 ((_ is Cons!50767) (toList!4416 lt!1716269)))))

(assert (=> d!1404330 (forall!10355 (toList!4416 lt!1716269) lambda!176595)))

(assert (=> d!1404330 (= (extractMap!1260 (toList!4416 lt!1716269)) lt!1716729)))

(declare-fun b!4542016 () Bool)

(assert (=> b!4542016 (= e!2830435 (addToMapMapFromBucket!731 (_2!28920 (h!56652 (toList!4416 lt!1716269))) (extractMap!1260 (t!357853 (toList!4416 lt!1716269)))))))

(declare-fun b!4542017 () Bool)

(assert (=> b!4542017 (= e!2830435 (ListMap!3678 Nil!50766))))

(assert (= (and d!1404330 c!775812) b!4542016))

(assert (= (and d!1404330 (not c!775812)) b!4542017))

(declare-fun m!5310253 () Bool)

(assert (=> d!1404330 m!5310253))

(declare-fun m!5310255 () Bool)

(assert (=> d!1404330 m!5310255))

(declare-fun m!5310257 () Bool)

(assert (=> b!4542016 m!5310257))

(assert (=> b!4542016 m!5310257))

(declare-fun m!5310259 () Bool)

(assert (=> b!4542016 m!5310259))

(assert (=> b!4541617 d!1404330))

(declare-fun d!1404332 () Bool)

(assert (=> d!1404332 (= (eq!661 lt!1716274 lt!1716275) (= (content!8453 (toList!4415 lt!1716274)) (content!8453 (toList!4415 lt!1716275))))))

(declare-fun bs!879197 () Bool)

(assert (= bs!879197 d!1404332))

(declare-fun m!5310261 () Bool)

(assert (=> bs!879197 m!5310261))

(declare-fun m!5310263 () Bool)

(assert (=> bs!879197 m!5310263))

(assert (=> b!4541617 d!1404332))

(declare-fun d!1404334 () Bool)

(declare-fun e!2830439 () Bool)

(assert (=> d!1404334 e!2830439))

(declare-fun res!1893182 () Bool)

(assert (=> d!1404334 (=> (not res!1893182) (not e!2830439))))

(declare-fun lt!1716731 () ListMap!3677)

(assert (=> d!1404334 (= res!1893182 (not (contains!13567 lt!1716731 key!3287)))))

(assert (=> d!1404334 (= lt!1716731 (ListMap!3678 (removePresrvNoDuplicatedKeys!173 (toList!4415 lt!1716292) key!3287)))))

(assert (=> d!1404334 (= (-!430 lt!1716292 key!3287) lt!1716731)))

(declare-fun b!4542023 () Bool)

(assert (=> b!4542023 (= e!2830439 (= ((_ map and) (content!8454 (keys!17669 lt!1716292)) ((_ map not) (store ((as const (Array K!12150 Bool)) false) key!3287 true))) (content!8454 (keys!17669 lt!1716731))))))

(assert (= (and d!1404334 res!1893182) b!4542023))

(declare-fun m!5310265 () Bool)

(assert (=> d!1404334 m!5310265))

(declare-fun m!5310267 () Bool)

(assert (=> d!1404334 m!5310267))

(declare-fun m!5310269 () Bool)

(assert (=> b!4542023 m!5310269))

(declare-fun m!5310271 () Bool)

(assert (=> b!4542023 m!5310271))

(declare-fun m!5310273 () Bool)

(assert (=> b!4542023 m!5310273))

(assert (=> b!4542023 m!5310273))

(declare-fun m!5310275 () Bool)

(assert (=> b!4542023 m!5310275))

(assert (=> b!4542023 m!5310269))

(assert (=> b!4542023 m!5309687))

(assert (=> b!4541617 d!1404334))

(declare-fun d!1404336 () Bool)

(assert (=> d!1404336 (= (head!9488 lm!1477) (head!9490 (toList!4416 lm!1477)))))

(declare-fun bs!879198 () Bool)

(assert (= bs!879198 d!1404336))

(declare-fun m!5310277 () Bool)

(assert (=> bs!879198 m!5310277))

(assert (=> b!4541617 d!1404336))

(declare-fun d!1404338 () Bool)

(declare-fun e!2830443 () Bool)

(assert (=> d!1404338 e!2830443))

(declare-fun res!1893183 () Bool)

(assert (=> d!1404338 (=> (not res!1893183) (not e!2830443))))

(declare-fun lt!1716732 () ListLongMap!3047)

(assert (=> d!1404338 (= res!1893183 (contains!13568 lt!1716732 (_1!28920 lt!1716295)))))

(declare-fun lt!1716735 () List!50891)

(assert (=> d!1404338 (= lt!1716732 (ListLongMap!3048 lt!1716735))))

(declare-fun lt!1716734 () Unit!98804)

(declare-fun lt!1716733 () Unit!98804)

(assert (=> d!1404338 (= lt!1716734 lt!1716733)))

(assert (=> d!1404338 (= (getValueByKey!1156 lt!1716735 (_1!28920 lt!1716295)) (Some!11217 (_2!28920 lt!1716295)))))

(assert (=> d!1404338 (= lt!1716733 (lemmaContainsTupThenGetReturnValue!726 lt!1716735 (_1!28920 lt!1716295) (_2!28920 lt!1716295)))))

(assert (=> d!1404338 (= lt!1716735 (insertStrictlySorted!440 (toList!4416 lt!1716276) (_1!28920 lt!1716295) (_2!28920 lt!1716295)))))

(assert (=> d!1404338 (= (+!1614 lt!1716276 lt!1716295) lt!1716732)))

(declare-fun b!4542029 () Bool)

(declare-fun res!1893184 () Bool)

(assert (=> b!4542029 (=> (not res!1893184) (not e!2830443))))

(assert (=> b!4542029 (= res!1893184 (= (getValueByKey!1156 (toList!4416 lt!1716732) (_1!28920 lt!1716295)) (Some!11217 (_2!28920 lt!1716295))))))

(declare-fun b!4542030 () Bool)

(assert (=> b!4542030 (= e!2830443 (contains!13569 (toList!4416 lt!1716732) lt!1716295))))

(assert (= (and d!1404338 res!1893183) b!4542029))

(assert (= (and b!4542029 res!1893184) b!4542030))

(declare-fun m!5310281 () Bool)

(assert (=> d!1404338 m!5310281))

(declare-fun m!5310283 () Bool)

(assert (=> d!1404338 m!5310283))

(declare-fun m!5310285 () Bool)

(assert (=> d!1404338 m!5310285))

(declare-fun m!5310289 () Bool)

(assert (=> d!1404338 m!5310289))

(declare-fun m!5310291 () Bool)

(assert (=> b!4542029 m!5310291))

(declare-fun m!5310293 () Bool)

(assert (=> b!4542030 m!5310293))

(assert (=> b!4541617 d!1404338))

(declare-fun d!1404346 () Bool)

(assert (=> d!1404346 (= (eq!661 lt!1716278 lt!1716290) (= (content!8453 (toList!4415 lt!1716278)) (content!8453 (toList!4415 lt!1716290))))))

(declare-fun bs!879203 () Bool)

(assert (= bs!879203 d!1404346))

(assert (=> bs!879203 m!5309809))

(declare-fun m!5310299 () Bool)

(assert (=> bs!879203 m!5310299))

(assert (=> b!4541595 d!1404346))

(declare-fun d!1404352 () Bool)

(declare-fun e!2830444 () Bool)

(assert (=> d!1404352 e!2830444))

(declare-fun res!1893185 () Bool)

(assert (=> d!1404352 (=> (not res!1893185) (not e!2830444))))

(declare-fun lt!1716736 () ListMap!3677)

(assert (=> d!1404352 (= res!1893185 (not (contains!13567 lt!1716736 key!3287)))))

(assert (=> d!1404352 (= lt!1716736 (ListMap!3678 (removePresrvNoDuplicatedKeys!173 (toList!4415 (addToMapMapFromBucket!731 (_2!28920 lt!1716280) lt!1716292)) key!3287)))))

(assert (=> d!1404352 (= (-!430 (addToMapMapFromBucket!731 (_2!28920 lt!1716280) lt!1716292) key!3287) lt!1716736)))

(declare-fun b!4542031 () Bool)

(assert (=> b!4542031 (= e!2830444 (= ((_ map and) (content!8454 (keys!17669 (addToMapMapFromBucket!731 (_2!28920 lt!1716280) lt!1716292))) ((_ map not) (store ((as const (Array K!12150 Bool)) false) key!3287 true))) (content!8454 (keys!17669 lt!1716736))))))

(assert (= (and d!1404352 res!1893185) b!4542031))

(declare-fun m!5310303 () Bool)

(assert (=> d!1404352 m!5310303))

(declare-fun m!5310305 () Bool)

(assert (=> d!1404352 m!5310305))

(declare-fun m!5310307 () Bool)

(assert (=> b!4542031 m!5310307))

(declare-fun m!5310309 () Bool)

(assert (=> b!4542031 m!5310309))

(assert (=> b!4542031 m!5309425))

(declare-fun m!5310311 () Bool)

(assert (=> b!4542031 m!5310311))

(assert (=> b!4542031 m!5310311))

(declare-fun m!5310313 () Bool)

(assert (=> b!4542031 m!5310313))

(assert (=> b!4542031 m!5310307))

(assert (=> b!4542031 m!5309687))

(assert (=> b!4541595 d!1404352))

(declare-fun bs!879205 () Bool)

(declare-fun b!4542032 () Bool)

(assert (= bs!879205 (and b!4542032 b!4541865)))

(declare-fun lambda!176596 () Int)

(assert (=> bs!879205 (= (= lt!1716292 lt!1716275) (= lambda!176596 lambda!176564))))

(declare-fun bs!879206 () Bool)

(assert (= bs!879206 (and b!4542032 b!4541864)))

(assert (=> bs!879206 (= (= lt!1716292 lt!1716275) (= lambda!176596 lambda!176563))))

(declare-fun bs!879207 () Bool)

(assert (= bs!879207 (and b!4542032 d!1404138)))

(assert (=> bs!879207 (= (= lt!1716292 lt!1716489) (= lambda!176596 lambda!176548))))

(declare-fun bs!879208 () Bool)

(assert (= bs!879208 (and b!4542032 b!4541758)))

(assert (=> bs!879208 (= (= lt!1716292 lt!1716274) (= lambda!176596 lambda!176542))))

(assert (=> bs!879205 (= (= lt!1716292 lt!1716585) (= lambda!176596 lambda!176565))))

(declare-fun bs!879209 () Bool)

(assert (= bs!879209 (and b!4542032 b!4541759)))

(assert (=> bs!879209 (= (= lt!1716292 lt!1716274) (= lambda!176596 lambda!176545))))

(declare-fun bs!879210 () Bool)

(assert (= bs!879210 (and b!4542032 d!1404212)))

(assert (=> bs!879210 (= (= lt!1716292 lt!1716587) (= lambda!176596 lambda!176566))))

(assert (=> bs!879209 (= (= lt!1716292 lt!1716487) (= lambda!176596 lambda!176546))))

(declare-fun bs!879211 () Bool)

(assert (= bs!879211 (and b!4542032 b!4541605)))

(assert (=> bs!879211 (not (= lambda!176596 lambda!176469))))

(declare-fun bs!879212 () Bool)

(assert (= bs!879212 (and b!4542032 d!1404190)))

(assert (=> bs!879212 (not (= lambda!176596 lambda!176559))))

(assert (=> b!4542032 true))

(declare-fun bs!879213 () Bool)

(declare-fun b!4542033 () Bool)

(assert (= bs!879213 (and b!4542033 b!4541865)))

(declare-fun lambda!176597 () Int)

(assert (=> bs!879213 (= (= lt!1716292 lt!1716275) (= lambda!176597 lambda!176564))))

(declare-fun bs!879214 () Bool)

(assert (= bs!879214 (and b!4542033 b!4542032)))

(assert (=> bs!879214 (= lambda!176597 lambda!176596)))

(declare-fun bs!879215 () Bool)

(assert (= bs!879215 (and b!4542033 b!4541864)))

(assert (=> bs!879215 (= (= lt!1716292 lt!1716275) (= lambda!176597 lambda!176563))))

(declare-fun bs!879216 () Bool)

(assert (= bs!879216 (and b!4542033 d!1404138)))

(assert (=> bs!879216 (= (= lt!1716292 lt!1716489) (= lambda!176597 lambda!176548))))

(declare-fun bs!879217 () Bool)

(assert (= bs!879217 (and b!4542033 b!4541758)))

(assert (=> bs!879217 (= (= lt!1716292 lt!1716274) (= lambda!176597 lambda!176542))))

(assert (=> bs!879213 (= (= lt!1716292 lt!1716585) (= lambda!176597 lambda!176565))))

(declare-fun bs!879218 () Bool)

(assert (= bs!879218 (and b!4542033 b!4541759)))

(assert (=> bs!879218 (= (= lt!1716292 lt!1716274) (= lambda!176597 lambda!176545))))

(declare-fun bs!879219 () Bool)

(assert (= bs!879219 (and b!4542033 d!1404212)))

(assert (=> bs!879219 (= (= lt!1716292 lt!1716587) (= lambda!176597 lambda!176566))))

(assert (=> bs!879218 (= (= lt!1716292 lt!1716487) (= lambda!176597 lambda!176546))))

(declare-fun bs!879220 () Bool)

(assert (= bs!879220 (and b!4542033 b!4541605)))

(assert (=> bs!879220 (not (= lambda!176597 lambda!176469))))

(declare-fun bs!879221 () Bool)

(assert (= bs!879221 (and b!4542033 d!1404190)))

(assert (=> bs!879221 (not (= lambda!176597 lambda!176559))))

(assert (=> b!4542033 true))

(declare-fun lt!1716751 () ListMap!3677)

(declare-fun lambda!176598 () Int)

(assert (=> bs!879213 (= (= lt!1716751 lt!1716275) (= lambda!176598 lambda!176564))))

(assert (=> b!4542033 (= (= lt!1716751 lt!1716292) (= lambda!176598 lambda!176597))))

(assert (=> bs!879214 (= (= lt!1716751 lt!1716292) (= lambda!176598 lambda!176596))))

(assert (=> bs!879215 (= (= lt!1716751 lt!1716275) (= lambda!176598 lambda!176563))))

(assert (=> bs!879216 (= (= lt!1716751 lt!1716489) (= lambda!176598 lambda!176548))))

(assert (=> bs!879217 (= (= lt!1716751 lt!1716274) (= lambda!176598 lambda!176542))))

(assert (=> bs!879213 (= (= lt!1716751 lt!1716585) (= lambda!176598 lambda!176565))))

(assert (=> bs!879218 (= (= lt!1716751 lt!1716274) (= lambda!176598 lambda!176545))))

(assert (=> bs!879219 (= (= lt!1716751 lt!1716587) (= lambda!176598 lambda!176566))))

(assert (=> bs!879218 (= (= lt!1716751 lt!1716487) (= lambda!176598 lambda!176546))))

(assert (=> bs!879220 (not (= lambda!176598 lambda!176469))))

(assert (=> bs!879221 (not (= lambda!176598 lambda!176559))))

(assert (=> b!4542033 true))

(declare-fun bs!879222 () Bool)

(declare-fun d!1404354 () Bool)

(assert (= bs!879222 (and d!1404354 b!4541865)))

(declare-fun lambda!176599 () Int)

(declare-fun lt!1716753 () ListMap!3677)

(assert (=> bs!879222 (= (= lt!1716753 lt!1716275) (= lambda!176599 lambda!176564))))

(declare-fun bs!879223 () Bool)

(assert (= bs!879223 (and d!1404354 b!4542033)))

(assert (=> bs!879223 (= (= lt!1716753 lt!1716292) (= lambda!176599 lambda!176597))))

(declare-fun bs!879224 () Bool)

(assert (= bs!879224 (and d!1404354 b!4542032)))

(assert (=> bs!879224 (= (= lt!1716753 lt!1716292) (= lambda!176599 lambda!176596))))

(declare-fun bs!879225 () Bool)

(assert (= bs!879225 (and d!1404354 b!4541864)))

(assert (=> bs!879225 (= (= lt!1716753 lt!1716275) (= lambda!176599 lambda!176563))))

(declare-fun bs!879226 () Bool)

(assert (= bs!879226 (and d!1404354 d!1404138)))

(assert (=> bs!879226 (= (= lt!1716753 lt!1716489) (= lambda!176599 lambda!176548))))

(declare-fun bs!879227 () Bool)

(assert (= bs!879227 (and d!1404354 b!4541758)))

(assert (=> bs!879227 (= (= lt!1716753 lt!1716274) (= lambda!176599 lambda!176542))))

(declare-fun bs!879228 () Bool)

(assert (= bs!879228 (and d!1404354 b!4541759)))

(assert (=> bs!879228 (= (= lt!1716753 lt!1716274) (= lambda!176599 lambda!176545))))

(declare-fun bs!879229 () Bool)

(assert (= bs!879229 (and d!1404354 d!1404212)))

(assert (=> bs!879229 (= (= lt!1716753 lt!1716587) (= lambda!176599 lambda!176566))))

(assert (=> bs!879228 (= (= lt!1716753 lt!1716487) (= lambda!176599 lambda!176546))))

(declare-fun bs!879230 () Bool)

(assert (= bs!879230 (and d!1404354 b!4541605)))

(assert (=> bs!879230 (not (= lambda!176599 lambda!176469))))

(declare-fun bs!879231 () Bool)

(assert (= bs!879231 (and d!1404354 d!1404190)))

(assert (=> bs!879231 (not (= lambda!176599 lambda!176559))))

(assert (=> bs!879222 (= (= lt!1716753 lt!1716585) (= lambda!176599 lambda!176565))))

(assert (=> bs!879223 (= (= lt!1716753 lt!1716751) (= lambda!176599 lambda!176598))))

(assert (=> d!1404354 true))

(declare-fun bm!316748 () Bool)

(declare-fun call!316754 () Unit!98804)

(assert (=> bm!316748 (= call!316754 (lemmaContainsAllItsOwnKeys!369 lt!1716292))))

(declare-fun e!2830446 () ListMap!3677)

(assert (=> b!4542032 (= e!2830446 lt!1716292)))

(declare-fun lt!1716746 () Unit!98804)

(assert (=> b!4542032 (= lt!1716746 call!316754)))

(declare-fun call!316753 () Bool)

(assert (=> b!4542032 call!316753))

(declare-fun lt!1716752 () Unit!98804)

(assert (=> b!4542032 (= lt!1716752 lt!1716746)))

(declare-fun call!316755 () Bool)

(assert (=> b!4542032 call!316755))

(declare-fun lt!1716743 () Unit!98804)

(declare-fun Unit!98866 () Unit!98804)

(assert (=> b!4542032 (= lt!1716743 Unit!98866)))

(assert (=> b!4542033 (= e!2830446 lt!1716751)))

(declare-fun lt!1716740 () ListMap!3677)

(assert (=> b!4542033 (= lt!1716740 (+!1616 lt!1716292 (h!56651 (_2!28920 lt!1716280))))))

(assert (=> b!4542033 (= lt!1716751 (addToMapMapFromBucket!731 (t!357852 (_2!28920 lt!1716280)) (+!1616 lt!1716292 (h!56651 (_2!28920 lt!1716280)))))))

(declare-fun lt!1716750 () Unit!98804)

(assert (=> b!4542033 (= lt!1716750 call!316754)))

(assert (=> b!4542033 call!316755))

(declare-fun lt!1716754 () Unit!98804)

(assert (=> b!4542033 (= lt!1716754 lt!1716750)))

(assert (=> b!4542033 call!316753))

(declare-fun lt!1716738 () Unit!98804)

(declare-fun Unit!98867 () Unit!98804)

(assert (=> b!4542033 (= lt!1716738 Unit!98867)))

(assert (=> b!4542033 (forall!10357 (t!357852 (_2!28920 lt!1716280)) lambda!176598)))

(declare-fun lt!1716757 () Unit!98804)

(declare-fun Unit!98868 () Unit!98804)

(assert (=> b!4542033 (= lt!1716757 Unit!98868)))

(declare-fun lt!1716739 () Unit!98804)

(declare-fun Unit!98869 () Unit!98804)

(assert (=> b!4542033 (= lt!1716739 Unit!98869)))

(declare-fun lt!1716755 () Unit!98804)

(assert (=> b!4542033 (= lt!1716755 (forallContained!2619 (toList!4415 lt!1716740) lambda!176598 (h!56651 (_2!28920 lt!1716280))))))

(assert (=> b!4542033 (contains!13567 lt!1716740 (_1!28919 (h!56651 (_2!28920 lt!1716280))))))

(declare-fun lt!1716744 () Unit!98804)

(declare-fun Unit!98870 () Unit!98804)

(assert (=> b!4542033 (= lt!1716744 Unit!98870)))

(assert (=> b!4542033 (contains!13567 lt!1716751 (_1!28919 (h!56651 (_2!28920 lt!1716280))))))

(declare-fun lt!1716745 () Unit!98804)

(declare-fun Unit!98871 () Unit!98804)

(assert (=> b!4542033 (= lt!1716745 Unit!98871)))

(assert (=> b!4542033 (forall!10357 (_2!28920 lt!1716280) lambda!176598)))

(declare-fun lt!1716747 () Unit!98804)

(declare-fun Unit!98872 () Unit!98804)

(assert (=> b!4542033 (= lt!1716747 Unit!98872)))

(assert (=> b!4542033 (forall!10357 (toList!4415 lt!1716740) lambda!176598)))

(declare-fun lt!1716741 () Unit!98804)

(declare-fun Unit!98873 () Unit!98804)

(assert (=> b!4542033 (= lt!1716741 Unit!98873)))

(declare-fun lt!1716748 () Unit!98804)

(declare-fun Unit!98874 () Unit!98804)

(assert (=> b!4542033 (= lt!1716748 Unit!98874)))

(declare-fun lt!1716737 () Unit!98804)

(assert (=> b!4542033 (= lt!1716737 (addForallContainsKeyThenBeforeAdding!370 lt!1716292 lt!1716751 (_1!28919 (h!56651 (_2!28920 lt!1716280))) (_2!28919 (h!56651 (_2!28920 lt!1716280)))))))

(assert (=> b!4542033 (forall!10357 (toList!4415 lt!1716292) lambda!176598)))

(declare-fun lt!1716756 () Unit!98804)

(assert (=> b!4542033 (= lt!1716756 lt!1716737)))

(assert (=> b!4542033 (forall!10357 (toList!4415 lt!1716292) lambda!176598)))

(declare-fun lt!1716742 () Unit!98804)

(declare-fun Unit!98875 () Unit!98804)

(assert (=> b!4542033 (= lt!1716742 Unit!98875)))

(declare-fun res!1893186 () Bool)

(assert (=> b!4542033 (= res!1893186 (forall!10357 (_2!28920 lt!1716280) lambda!176598))))

(declare-fun e!2830445 () Bool)

(assert (=> b!4542033 (=> (not res!1893186) (not e!2830445))))

(assert (=> b!4542033 e!2830445))

(declare-fun lt!1716749 () Unit!98804)

(declare-fun Unit!98876 () Unit!98804)

(assert (=> b!4542033 (= lt!1716749 Unit!98876)))

(declare-fun bm!316749 () Bool)

(declare-fun c!775813 () Bool)

(assert (=> bm!316749 (= call!316753 (forall!10357 (ite c!775813 (toList!4415 lt!1716292) (toList!4415 lt!1716740)) (ite c!775813 lambda!176596 lambda!176598)))))

(declare-fun e!2830447 () Bool)

(assert (=> d!1404354 e!2830447))

(declare-fun res!1893188 () Bool)

(assert (=> d!1404354 (=> (not res!1893188) (not e!2830447))))

(assert (=> d!1404354 (= res!1893188 (forall!10357 (_2!28920 lt!1716280) lambda!176599))))

(assert (=> d!1404354 (= lt!1716753 e!2830446)))

(assert (=> d!1404354 (= c!775813 ((_ is Nil!50766) (_2!28920 lt!1716280)))))

(assert (=> d!1404354 (noDuplicateKeys!1204 (_2!28920 lt!1716280))))

(assert (=> d!1404354 (= (addToMapMapFromBucket!731 (_2!28920 lt!1716280) lt!1716292) lt!1716753)))

(declare-fun bm!316750 () Bool)

(assert (=> bm!316750 (= call!316755 (forall!10357 (toList!4415 lt!1716292) (ite c!775813 lambda!176596 lambda!176597)))))

(declare-fun b!4542034 () Bool)

(declare-fun res!1893187 () Bool)

(assert (=> b!4542034 (=> (not res!1893187) (not e!2830447))))

(assert (=> b!4542034 (= res!1893187 (forall!10357 (toList!4415 lt!1716292) lambda!176599))))

(declare-fun b!4542035 () Bool)

(assert (=> b!4542035 (= e!2830447 (invariantList!1048 (toList!4415 lt!1716753)))))

(declare-fun b!4542036 () Bool)

(assert (=> b!4542036 (= e!2830445 (forall!10357 (toList!4415 lt!1716292) lambda!176598))))

(assert (= (and d!1404354 c!775813) b!4542032))

(assert (= (and d!1404354 (not c!775813)) b!4542033))

(assert (= (and b!4542033 res!1893186) b!4542036))

(assert (= (or b!4542032 b!4542033) bm!316749))

(assert (= (or b!4542032 b!4542033) bm!316750))

(assert (= (or b!4542032 b!4542033) bm!316748))

(assert (= (and d!1404354 res!1893188) b!4542034))

(assert (= (and b!4542034 res!1893187) b!4542035))

(declare-fun m!5310315 () Bool)

(assert (=> d!1404354 m!5310315))

(assert (=> d!1404354 m!5309351))

(declare-fun m!5310317 () Bool)

(assert (=> bm!316748 m!5310317))

(declare-fun m!5310319 () Bool)

(assert (=> b!4542033 m!5310319))

(declare-fun m!5310321 () Bool)

(assert (=> b!4542033 m!5310321))

(declare-fun m!5310323 () Bool)

(assert (=> b!4542033 m!5310323))

(declare-fun m!5310325 () Bool)

(assert (=> b!4542033 m!5310325))

(declare-fun m!5310327 () Bool)

(assert (=> b!4542033 m!5310327))

(declare-fun m!5310329 () Bool)

(assert (=> b!4542033 m!5310329))

(assert (=> b!4542033 m!5310319))

(declare-fun m!5310331 () Bool)

(assert (=> b!4542033 m!5310331))

(assert (=> b!4542033 m!5310329))

(declare-fun m!5310333 () Bool)

(assert (=> b!4542033 m!5310333))

(assert (=> b!4542033 m!5310331))

(declare-fun m!5310335 () Bool)

(assert (=> b!4542033 m!5310335))

(declare-fun m!5310337 () Bool)

(assert (=> b!4542033 m!5310337))

(declare-fun m!5310339 () Bool)

(assert (=> b!4542035 m!5310339))

(declare-fun m!5310341 () Bool)

(assert (=> bm!316750 m!5310341))

(declare-fun m!5310343 () Bool)

(assert (=> bm!316749 m!5310343))

(declare-fun m!5310345 () Bool)

(assert (=> b!4542034 m!5310345))

(assert (=> b!4542036 m!5310329))

(assert (=> b!4541595 d!1404354))

(declare-fun d!1404356 () Bool)

(assert (=> d!1404356 (= (addToMapMapFromBucket!731 (_2!28920 lt!1716280) (-!430 lt!1716292 key!3287)) (-!430 (addToMapMapFromBucket!731 (_2!28920 lt!1716280) lt!1716292) key!3287))))

(declare-fun lt!1716760 () Unit!98804)

(declare-fun choose!29953 (ListMap!3677 K!12150 List!50890) Unit!98804)

(assert (=> d!1404356 (= lt!1716760 (choose!29953 lt!1716292 key!3287 (_2!28920 lt!1716280)))))

(assert (=> d!1404356 (not (containsKey!1888 (_2!28920 lt!1716280) key!3287))))

(assert (=> d!1404356 (= (lemmaAddToMapFromBucketMinusKeyIsCommutative!28 lt!1716292 key!3287 (_2!28920 lt!1716280)) lt!1716760)))

(declare-fun bs!879232 () Bool)

(assert (= bs!879232 d!1404356))

(assert (=> bs!879232 m!5309417))

(declare-fun m!5310347 () Bool)

(assert (=> bs!879232 m!5310347))

(assert (=> bs!879232 m!5309369))

(assert (=> bs!879232 m!5309425))

(assert (=> bs!879232 m!5309427))

(assert (=> bs!879232 m!5309369))

(declare-fun m!5310349 () Bool)

(assert (=> bs!879232 m!5310349))

(assert (=> bs!879232 m!5309425))

(assert (=> b!4541595 d!1404356))

(declare-fun d!1404358 () Bool)

(declare-fun lt!1716761 () Bool)

(assert (=> d!1404358 (= lt!1716761 (select (content!8455 (t!357853 (toList!4416 lm!1477))) lt!1716296))))

(declare-fun e!2830448 () Bool)

(assert (=> d!1404358 (= lt!1716761 e!2830448)))

(declare-fun res!1893190 () Bool)

(assert (=> d!1404358 (=> (not res!1893190) (not e!2830448))))

(assert (=> d!1404358 (= res!1893190 ((_ is Cons!50767) (t!357853 (toList!4416 lm!1477))))))

(assert (=> d!1404358 (= (contains!13569 (t!357853 (toList!4416 lm!1477)) lt!1716296) lt!1716761)))

(declare-fun b!4542037 () Bool)

(declare-fun e!2830449 () Bool)

(assert (=> b!4542037 (= e!2830448 e!2830449)))

(declare-fun res!1893189 () Bool)

(assert (=> b!4542037 (=> res!1893189 e!2830449)))

(assert (=> b!4542037 (= res!1893189 (= (h!56652 (t!357853 (toList!4416 lm!1477))) lt!1716296))))

(declare-fun b!4542038 () Bool)

(assert (=> b!4542038 (= e!2830449 (contains!13569 (t!357853 (t!357853 (toList!4416 lm!1477))) lt!1716296))))

(assert (= (and d!1404358 res!1893190) b!4542037))

(assert (= (and b!4542037 (not res!1893189)) b!4542038))

(declare-fun m!5310351 () Bool)

(assert (=> d!1404358 m!5310351))

(declare-fun m!5310353 () Bool)

(assert (=> d!1404358 m!5310353))

(declare-fun m!5310355 () Bool)

(assert (=> b!4542038 m!5310355))

(assert (=> b!4541616 d!1404358))

(declare-fun b!4542039 () Bool)

(declare-fun e!2830455 () Unit!98804)

(declare-fun lt!1716765 () Unit!98804)

(assert (=> b!4542039 (= e!2830455 lt!1716765)))

(declare-fun lt!1716766 () Unit!98804)

(assert (=> b!4542039 (= lt!1716766 (lemmaContainsKeyImpliesGetValueByKeyDefined!1059 (toList!4415 lt!1716292) key!3287))))

(assert (=> b!4542039 (isDefined!8492 (getValueByKey!1155 (toList!4415 lt!1716292) key!3287))))

(declare-fun lt!1716763 () Unit!98804)

(assert (=> b!4542039 (= lt!1716763 lt!1716766)))

(assert (=> b!4542039 (= lt!1716765 (lemmaInListThenGetKeysListContains!492 (toList!4415 lt!1716292) key!3287))))

(declare-fun call!316756 () Bool)

(assert (=> b!4542039 call!316756))

(declare-fun b!4542040 () Bool)

(declare-fun e!2830454 () Unit!98804)

(assert (=> b!4542040 (= e!2830455 e!2830454)))

(declare-fun c!775814 () Bool)

(assert (=> b!4542040 (= c!775814 call!316756)))

(declare-fun b!4542041 () Bool)

(declare-fun Unit!98877 () Unit!98804)

(assert (=> b!4542041 (= e!2830454 Unit!98877)))

(declare-fun b!4542042 () Bool)

(declare-fun e!2830451 () Bool)

(assert (=> b!4542042 (= e!2830451 (not (contains!13570 (keys!17669 lt!1716292) key!3287)))))

(declare-fun d!1404360 () Bool)

(declare-fun e!2830453 () Bool)

(assert (=> d!1404360 e!2830453))

(declare-fun res!1893191 () Bool)

(assert (=> d!1404360 (=> res!1893191 e!2830453)))

(assert (=> d!1404360 (= res!1893191 e!2830451)))

(declare-fun res!1893193 () Bool)

(assert (=> d!1404360 (=> (not res!1893193) (not e!2830451))))

(declare-fun lt!1716768 () Bool)

(assert (=> d!1404360 (= res!1893193 (not lt!1716768))))

(declare-fun lt!1716769 () Bool)

(assert (=> d!1404360 (= lt!1716768 lt!1716769)))

(declare-fun lt!1716767 () Unit!98804)

(assert (=> d!1404360 (= lt!1716767 e!2830455)))

(declare-fun c!775816 () Bool)

(assert (=> d!1404360 (= c!775816 lt!1716769)))

(assert (=> d!1404360 (= lt!1716769 (containsKey!1890 (toList!4415 lt!1716292) key!3287))))

(assert (=> d!1404360 (= (contains!13567 lt!1716292 key!3287) lt!1716768)))

(declare-fun b!4542043 () Bool)

(assert (=> b!4542043 false))

(declare-fun lt!1716764 () Unit!98804)

(declare-fun lt!1716762 () Unit!98804)

(assert (=> b!4542043 (= lt!1716764 lt!1716762)))

(assert (=> b!4542043 (containsKey!1890 (toList!4415 lt!1716292) key!3287)))

(assert (=> b!4542043 (= lt!1716762 (lemmaInGetKeysListThenContainsKey!495 (toList!4415 lt!1716292) key!3287))))

(declare-fun Unit!98878 () Unit!98804)

(assert (=> b!4542043 (= e!2830454 Unit!98878)))

(declare-fun b!4542044 () Bool)

(declare-fun e!2830450 () List!50892)

(assert (=> b!4542044 (= e!2830450 (keys!17669 lt!1716292))))

(declare-fun b!4542045 () Bool)

(declare-fun e!2830452 () Bool)

(assert (=> b!4542045 (= e!2830452 (contains!13570 (keys!17669 lt!1716292) key!3287))))

(declare-fun bm!316751 () Bool)

(assert (=> bm!316751 (= call!316756 (contains!13570 e!2830450 key!3287))))

(declare-fun c!775815 () Bool)

(assert (=> bm!316751 (= c!775815 c!775816)))

(declare-fun b!4542046 () Bool)

(assert (=> b!4542046 (= e!2830450 (getKeysList!496 (toList!4415 lt!1716292)))))

(declare-fun b!4542047 () Bool)

(assert (=> b!4542047 (= e!2830453 e!2830452)))

(declare-fun res!1893192 () Bool)

(assert (=> b!4542047 (=> (not res!1893192) (not e!2830452))))

(assert (=> b!4542047 (= res!1893192 (isDefined!8492 (getValueByKey!1155 (toList!4415 lt!1716292) key!3287)))))

(assert (= (and d!1404360 c!775816) b!4542039))

(assert (= (and d!1404360 (not c!775816)) b!4542040))

(assert (= (and b!4542040 c!775814) b!4542043))

(assert (= (and b!4542040 (not c!775814)) b!4542041))

(assert (= (or b!4542039 b!4542040) bm!316751))

(assert (= (and bm!316751 c!775815) b!4542046))

(assert (= (and bm!316751 (not c!775815)) b!4542044))

(assert (= (and d!1404360 res!1893193) b!4542042))

(assert (= (and d!1404360 (not res!1893191)) b!4542047))

(assert (= (and b!4542047 res!1893192) b!4542045))

(assert (=> b!4542042 m!5310273))

(assert (=> b!4542042 m!5310273))

(declare-fun m!5310357 () Bool)

(assert (=> b!4542042 m!5310357))

(declare-fun m!5310359 () Bool)

(assert (=> b!4542039 m!5310359))

(declare-fun m!5310361 () Bool)

(assert (=> b!4542039 m!5310361))

(assert (=> b!4542039 m!5310361))

(declare-fun m!5310363 () Bool)

(assert (=> b!4542039 m!5310363))

(declare-fun m!5310365 () Bool)

(assert (=> b!4542039 m!5310365))

(declare-fun m!5310367 () Bool)

(assert (=> d!1404360 m!5310367))

(assert (=> b!4542047 m!5310361))

(assert (=> b!4542047 m!5310361))

(assert (=> b!4542047 m!5310363))

(declare-fun m!5310369 () Bool)

(assert (=> bm!316751 m!5310369))

(assert (=> b!4542044 m!5310273))

(declare-fun m!5310371 () Bool)

(assert (=> b!4542046 m!5310371))

(assert (=> b!4542045 m!5310273))

(assert (=> b!4542045 m!5310273))

(assert (=> b!4542045 m!5310357))

(assert (=> b!4542043 m!5310367))

(declare-fun m!5310373 () Bool)

(assert (=> b!4542043 m!5310373))

(assert (=> b!4541597 d!1404360))

(declare-fun b!4542048 () Bool)

(declare-fun e!2830461 () Unit!98804)

(declare-fun lt!1716773 () Unit!98804)

(assert (=> b!4542048 (= e!2830461 lt!1716773)))

(declare-fun lt!1716774 () Unit!98804)

(assert (=> b!4542048 (= lt!1716774 (lemmaContainsKeyImpliesGetValueByKeyDefined!1059 (toList!4415 (extractMap!1260 (t!357853 (toList!4416 lm!1477)))) key!3287))))

(assert (=> b!4542048 (isDefined!8492 (getValueByKey!1155 (toList!4415 (extractMap!1260 (t!357853 (toList!4416 lm!1477)))) key!3287))))

(declare-fun lt!1716771 () Unit!98804)

(assert (=> b!4542048 (= lt!1716771 lt!1716774)))

(assert (=> b!4542048 (= lt!1716773 (lemmaInListThenGetKeysListContains!492 (toList!4415 (extractMap!1260 (t!357853 (toList!4416 lm!1477)))) key!3287))))

(declare-fun call!316757 () Bool)

(assert (=> b!4542048 call!316757))

(declare-fun b!4542049 () Bool)

(declare-fun e!2830460 () Unit!98804)

(assert (=> b!4542049 (= e!2830461 e!2830460)))

(declare-fun c!775817 () Bool)

(assert (=> b!4542049 (= c!775817 call!316757)))

(declare-fun b!4542050 () Bool)

(declare-fun Unit!98879 () Unit!98804)

(assert (=> b!4542050 (= e!2830460 Unit!98879)))

(declare-fun b!4542051 () Bool)

(declare-fun e!2830457 () Bool)

(assert (=> b!4542051 (= e!2830457 (not (contains!13570 (keys!17669 (extractMap!1260 (t!357853 (toList!4416 lm!1477)))) key!3287)))))

(declare-fun d!1404362 () Bool)

(declare-fun e!2830459 () Bool)

(assert (=> d!1404362 e!2830459))

(declare-fun res!1893194 () Bool)

(assert (=> d!1404362 (=> res!1893194 e!2830459)))

(assert (=> d!1404362 (= res!1893194 e!2830457)))

(declare-fun res!1893196 () Bool)

(assert (=> d!1404362 (=> (not res!1893196) (not e!2830457))))

(declare-fun lt!1716776 () Bool)

(assert (=> d!1404362 (= res!1893196 (not lt!1716776))))

(declare-fun lt!1716777 () Bool)

(assert (=> d!1404362 (= lt!1716776 lt!1716777)))

(declare-fun lt!1716775 () Unit!98804)

(assert (=> d!1404362 (= lt!1716775 e!2830461)))

(declare-fun c!775819 () Bool)

(assert (=> d!1404362 (= c!775819 lt!1716777)))

(assert (=> d!1404362 (= lt!1716777 (containsKey!1890 (toList!4415 (extractMap!1260 (t!357853 (toList!4416 lm!1477)))) key!3287))))

(assert (=> d!1404362 (= (contains!13567 (extractMap!1260 (t!357853 (toList!4416 lm!1477))) key!3287) lt!1716776)))

(declare-fun b!4542052 () Bool)

(assert (=> b!4542052 false))

(declare-fun lt!1716772 () Unit!98804)

(declare-fun lt!1716770 () Unit!98804)

(assert (=> b!4542052 (= lt!1716772 lt!1716770)))

(assert (=> b!4542052 (containsKey!1890 (toList!4415 (extractMap!1260 (t!357853 (toList!4416 lm!1477)))) key!3287)))

(assert (=> b!4542052 (= lt!1716770 (lemmaInGetKeysListThenContainsKey!495 (toList!4415 (extractMap!1260 (t!357853 (toList!4416 lm!1477)))) key!3287))))

(declare-fun Unit!98880 () Unit!98804)

(assert (=> b!4542052 (= e!2830460 Unit!98880)))

(declare-fun b!4542053 () Bool)

(declare-fun e!2830456 () List!50892)

(assert (=> b!4542053 (= e!2830456 (keys!17669 (extractMap!1260 (t!357853 (toList!4416 lm!1477)))))))

(declare-fun b!4542054 () Bool)

(declare-fun e!2830458 () Bool)

(assert (=> b!4542054 (= e!2830458 (contains!13570 (keys!17669 (extractMap!1260 (t!357853 (toList!4416 lm!1477)))) key!3287))))

(declare-fun bm!316752 () Bool)

(assert (=> bm!316752 (= call!316757 (contains!13570 e!2830456 key!3287))))

(declare-fun c!775818 () Bool)

(assert (=> bm!316752 (= c!775818 c!775819)))

(declare-fun b!4542055 () Bool)

(assert (=> b!4542055 (= e!2830456 (getKeysList!496 (toList!4415 (extractMap!1260 (t!357853 (toList!4416 lm!1477))))))))

(declare-fun b!4542056 () Bool)

(assert (=> b!4542056 (= e!2830459 e!2830458)))

(declare-fun res!1893195 () Bool)

(assert (=> b!4542056 (=> (not res!1893195) (not e!2830458))))

(assert (=> b!4542056 (= res!1893195 (isDefined!8492 (getValueByKey!1155 (toList!4415 (extractMap!1260 (t!357853 (toList!4416 lm!1477)))) key!3287)))))

(assert (= (and d!1404362 c!775819) b!4542048))

(assert (= (and d!1404362 (not c!775819)) b!4542049))

(assert (= (and b!4542049 c!775817) b!4542052))

(assert (= (and b!4542049 (not c!775817)) b!4542050))

(assert (= (or b!4542048 b!4542049) bm!316752))

(assert (= (and bm!316752 c!775818) b!4542055))

(assert (= (and bm!316752 (not c!775818)) b!4542053))

(assert (= (and d!1404362 res!1893196) b!4542051))

(assert (= (and d!1404362 (not res!1893194)) b!4542056))

(assert (= (and b!4542056 res!1893195) b!4542054))

(assert (=> b!4542051 m!5309401))

(declare-fun m!5310375 () Bool)

(assert (=> b!4542051 m!5310375))

(assert (=> b!4542051 m!5310375))

(declare-fun m!5310377 () Bool)

(assert (=> b!4542051 m!5310377))

(declare-fun m!5310379 () Bool)

(assert (=> b!4542048 m!5310379))

(declare-fun m!5310381 () Bool)

(assert (=> b!4542048 m!5310381))

(assert (=> b!4542048 m!5310381))

(declare-fun m!5310383 () Bool)

(assert (=> b!4542048 m!5310383))

(declare-fun m!5310385 () Bool)

(assert (=> b!4542048 m!5310385))

(declare-fun m!5310387 () Bool)

(assert (=> d!1404362 m!5310387))

(assert (=> b!4542056 m!5310381))

(assert (=> b!4542056 m!5310381))

(assert (=> b!4542056 m!5310383))

(declare-fun m!5310389 () Bool)

(assert (=> bm!316752 m!5310389))

(assert (=> b!4542053 m!5309401))

(assert (=> b!4542053 m!5310375))

(declare-fun m!5310391 () Bool)

(assert (=> b!4542055 m!5310391))

(assert (=> b!4542054 m!5309401))

(assert (=> b!4542054 m!5310375))

(assert (=> b!4542054 m!5310375))

(assert (=> b!4542054 m!5310377))

(assert (=> b!4542052 m!5310387))

(declare-fun m!5310393 () Bool)

(assert (=> b!4542052 m!5310393))

(assert (=> b!4541597 d!1404362))

(declare-fun bs!879233 () Bool)

(declare-fun d!1404364 () Bool)

(assert (= bs!879233 (and d!1404364 d!1404328)))

(declare-fun lambda!176600 () Int)

(assert (=> bs!879233 (= lambda!176600 lambda!176594)))

(declare-fun bs!879234 () Bool)

(assert (= bs!879234 (and d!1404364 d!1404172)))

(assert (=> bs!879234 (= lambda!176600 lambda!176552)))

(declare-fun bs!879235 () Bool)

(assert (= bs!879235 (and d!1404364 start!450944)))

(assert (=> bs!879235 (= lambda!176600 lambda!176467)))

(declare-fun bs!879236 () Bool)

(assert (= bs!879236 (and d!1404364 d!1404300)))

(assert (=> bs!879236 (= lambda!176600 lambda!176586)))

(declare-fun bs!879237 () Bool)

(assert (= bs!879237 (and d!1404364 d!1404280)))

(assert (=> bs!879237 (= lambda!176600 lambda!176578)))

(declare-fun bs!879238 () Bool)

(assert (= bs!879238 (and d!1404364 d!1404330)))

(assert (=> bs!879238 (= lambda!176600 lambda!176595)))

(declare-fun bs!879239 () Bool)

(assert (= bs!879239 (and d!1404364 d!1404164)))

(assert (=> bs!879239 (= lambda!176600 lambda!176549)))

(declare-fun bs!879240 () Bool)

(assert (= bs!879240 (and d!1404364 b!4541605)))

(assert (=> bs!879240 (not (= lambda!176600 lambda!176468))))

(declare-fun bs!879241 () Bool)

(assert (= bs!879241 (and d!1404364 d!1404322)))

(assert (=> bs!879241 (= lambda!176600 lambda!176593)))

(declare-fun bs!879242 () Bool)

(assert (= bs!879242 (and d!1404364 d!1404112)))

(assert (=> bs!879242 (= lambda!176600 lambda!176478)))

(declare-fun lt!1716778 () ListMap!3677)

(assert (=> d!1404364 (invariantList!1048 (toList!4415 lt!1716778))))

(declare-fun e!2830462 () ListMap!3677)

(assert (=> d!1404364 (= lt!1716778 e!2830462)))

(declare-fun c!775820 () Bool)

(assert (=> d!1404364 (= c!775820 ((_ is Cons!50767) (t!357853 (toList!4416 lm!1477))))))

(assert (=> d!1404364 (forall!10355 (t!357853 (toList!4416 lm!1477)) lambda!176600)))

(assert (=> d!1404364 (= (extractMap!1260 (t!357853 (toList!4416 lm!1477))) lt!1716778)))

(declare-fun b!4542057 () Bool)

(assert (=> b!4542057 (= e!2830462 (addToMapMapFromBucket!731 (_2!28920 (h!56652 (t!357853 (toList!4416 lm!1477)))) (extractMap!1260 (t!357853 (t!357853 (toList!4416 lm!1477))))))))

(declare-fun b!4542058 () Bool)

(assert (=> b!4542058 (= e!2830462 (ListMap!3678 Nil!50766))))

(assert (= (and d!1404364 c!775820) b!4542057))

(assert (= (and d!1404364 (not c!775820)) b!4542058))

(declare-fun m!5310395 () Bool)

(assert (=> d!1404364 m!5310395))

(declare-fun m!5310397 () Bool)

(assert (=> d!1404364 m!5310397))

(declare-fun m!5310399 () Bool)

(assert (=> b!4542057 m!5310399))

(assert (=> b!4542057 m!5310399))

(declare-fun m!5310401 () Bool)

(assert (=> b!4542057 m!5310401))

(assert (=> b!4541597 d!1404364))

(declare-fun bs!879243 () Bool)

(declare-fun d!1404366 () Bool)

(assert (= bs!879243 (and d!1404366 d!1404328)))

(declare-fun lambda!176603 () Int)

(assert (=> bs!879243 (= lambda!176603 lambda!176594)))

(declare-fun bs!879244 () Bool)

(assert (= bs!879244 (and d!1404366 d!1404172)))

(assert (=> bs!879244 (= lambda!176603 lambda!176552)))

(declare-fun bs!879245 () Bool)

(assert (= bs!879245 (and d!1404366 start!450944)))

(assert (=> bs!879245 (= lambda!176603 lambda!176467)))

(declare-fun bs!879246 () Bool)

(assert (= bs!879246 (and d!1404366 d!1404300)))

(assert (=> bs!879246 (= lambda!176603 lambda!176586)))

(declare-fun bs!879247 () Bool)

(assert (= bs!879247 (and d!1404366 d!1404364)))

(assert (=> bs!879247 (= lambda!176603 lambda!176600)))

(declare-fun bs!879248 () Bool)

(assert (= bs!879248 (and d!1404366 d!1404280)))

(assert (=> bs!879248 (= lambda!176603 lambda!176578)))

(declare-fun bs!879249 () Bool)

(assert (= bs!879249 (and d!1404366 d!1404330)))

(assert (=> bs!879249 (= lambda!176603 lambda!176595)))

(declare-fun bs!879250 () Bool)

(assert (= bs!879250 (and d!1404366 d!1404164)))

(assert (=> bs!879250 (= lambda!176603 lambda!176549)))

(declare-fun bs!879251 () Bool)

(assert (= bs!879251 (and d!1404366 b!4541605)))

(assert (=> bs!879251 (not (= lambda!176603 lambda!176468))))

(declare-fun bs!879252 () Bool)

(assert (= bs!879252 (and d!1404366 d!1404322)))

(assert (=> bs!879252 (= lambda!176603 lambda!176593)))

(declare-fun bs!879253 () Bool)

(assert (= bs!879253 (and d!1404366 d!1404112)))

(assert (=> bs!879253 (= lambda!176603 lambda!176478)))

(assert (=> d!1404366 (contains!13567 (extractMap!1260 (toList!4416 lt!1716276)) key!3287)))

(declare-fun lt!1716781 () Unit!98804)

(declare-fun choose!29955 (ListLongMap!3047 K!12150 Hashable!5599) Unit!98804)

(assert (=> d!1404366 (= lt!1716781 (choose!29955 lt!1716276 key!3287 hashF!1107))))

(assert (=> d!1404366 (forall!10355 (toList!4416 lt!1716276) lambda!176603)))

(assert (=> d!1404366 (= (lemmaListContainsThenExtractedMapContains!174 lt!1716276 key!3287 hashF!1107) lt!1716781)))

(declare-fun bs!879254 () Bool)

(assert (= bs!879254 d!1404366))

(assert (=> bs!879254 m!5309399))

(assert (=> bs!879254 m!5309399))

(declare-fun m!5310403 () Bool)

(assert (=> bs!879254 m!5310403))

(declare-fun m!5310405 () Bool)

(assert (=> bs!879254 m!5310405))

(declare-fun m!5310407 () Bool)

(assert (=> bs!879254 m!5310407))

(assert (=> b!4541597 d!1404366))

(declare-fun bs!879255 () Bool)

(declare-fun d!1404368 () Bool)

(assert (= bs!879255 (and d!1404368 d!1404328)))

(declare-fun lambda!176604 () Int)

(assert (=> bs!879255 (= lambda!176604 lambda!176594)))

(declare-fun bs!879256 () Bool)

(assert (= bs!879256 (and d!1404368 d!1404172)))

(assert (=> bs!879256 (= lambda!176604 lambda!176552)))

(declare-fun bs!879257 () Bool)

(assert (= bs!879257 (and d!1404368 start!450944)))

(assert (=> bs!879257 (= lambda!176604 lambda!176467)))

(declare-fun bs!879258 () Bool)

(assert (= bs!879258 (and d!1404368 d!1404364)))

(assert (=> bs!879258 (= lambda!176604 lambda!176600)))

(declare-fun bs!879259 () Bool)

(assert (= bs!879259 (and d!1404368 d!1404280)))

(assert (=> bs!879259 (= lambda!176604 lambda!176578)))

(declare-fun bs!879260 () Bool)

(assert (= bs!879260 (and d!1404368 d!1404330)))

(assert (=> bs!879260 (= lambda!176604 lambda!176595)))

(declare-fun bs!879261 () Bool)

(assert (= bs!879261 (and d!1404368 d!1404164)))

(assert (=> bs!879261 (= lambda!176604 lambda!176549)))

(declare-fun bs!879262 () Bool)

(assert (= bs!879262 (and d!1404368 b!4541605)))

(assert (=> bs!879262 (not (= lambda!176604 lambda!176468))))

(declare-fun bs!879263 () Bool)

(assert (= bs!879263 (and d!1404368 d!1404322)))

(assert (=> bs!879263 (= lambda!176604 lambda!176593)))

(declare-fun bs!879264 () Bool)

(assert (= bs!879264 (and d!1404368 d!1404112)))

(assert (=> bs!879264 (= lambda!176604 lambda!176478)))

(declare-fun bs!879265 () Bool)

(assert (= bs!879265 (and d!1404368 d!1404366)))

(assert (=> bs!879265 (= lambda!176604 lambda!176603)))

(declare-fun bs!879266 () Bool)

(assert (= bs!879266 (and d!1404368 d!1404300)))

(assert (=> bs!879266 (= lambda!176604 lambda!176586)))

(declare-fun lt!1716782 () ListMap!3677)

(assert (=> d!1404368 (invariantList!1048 (toList!4415 lt!1716782))))

(declare-fun e!2830463 () ListMap!3677)

(assert (=> d!1404368 (= lt!1716782 e!2830463)))

(declare-fun c!775821 () Bool)

(assert (=> d!1404368 (= c!775821 ((_ is Cons!50767) (toList!4416 lt!1716276)))))

(assert (=> d!1404368 (forall!10355 (toList!4416 lt!1716276) lambda!176604)))

(assert (=> d!1404368 (= (extractMap!1260 (toList!4416 lt!1716276)) lt!1716782)))

(declare-fun b!4542059 () Bool)

(assert (=> b!4542059 (= e!2830463 (addToMapMapFromBucket!731 (_2!28920 (h!56652 (toList!4416 lt!1716276))) (extractMap!1260 (t!357853 (toList!4416 lt!1716276)))))))

(declare-fun b!4542060 () Bool)

(assert (=> b!4542060 (= e!2830463 (ListMap!3678 Nil!50766))))

(assert (= (and d!1404368 c!775821) b!4542059))

(assert (= (and d!1404368 (not c!775821)) b!4542060))

(declare-fun m!5310409 () Bool)

(assert (=> d!1404368 m!5310409))

(declare-fun m!5310411 () Bool)

(assert (=> d!1404368 m!5310411))

(declare-fun m!5310413 () Bool)

(assert (=> b!4542059 m!5310413))

(assert (=> b!4542059 m!5310413))

(declare-fun m!5310415 () Bool)

(assert (=> b!4542059 m!5310415))

(assert (=> b!4541597 d!1404368))

(declare-fun bs!879267 () Bool)

(declare-fun d!1404370 () Bool)

(assert (= bs!879267 (and d!1404370 d!1404328)))

(declare-fun lambda!176607 () Int)

(assert (=> bs!879267 (not (= lambda!176607 lambda!176594))))

(declare-fun bs!879268 () Bool)

(assert (= bs!879268 (and d!1404370 d!1404172)))

(assert (=> bs!879268 (not (= lambda!176607 lambda!176552))))

(declare-fun bs!879269 () Bool)

(assert (= bs!879269 (and d!1404370 start!450944)))

(assert (=> bs!879269 (not (= lambda!176607 lambda!176467))))

(declare-fun bs!879270 () Bool)

(assert (= bs!879270 (and d!1404370 d!1404368)))

(assert (=> bs!879270 (not (= lambda!176607 lambda!176604))))

(declare-fun bs!879271 () Bool)

(assert (= bs!879271 (and d!1404370 d!1404364)))

(assert (=> bs!879271 (not (= lambda!176607 lambda!176600))))

(declare-fun bs!879272 () Bool)

(assert (= bs!879272 (and d!1404370 d!1404280)))

(assert (=> bs!879272 (not (= lambda!176607 lambda!176578))))

(declare-fun bs!879273 () Bool)

(assert (= bs!879273 (and d!1404370 d!1404330)))

(assert (=> bs!879273 (not (= lambda!176607 lambda!176595))))

(declare-fun bs!879274 () Bool)

(assert (= bs!879274 (and d!1404370 d!1404164)))

(assert (=> bs!879274 (not (= lambda!176607 lambda!176549))))

(declare-fun bs!879275 () Bool)

(assert (= bs!879275 (and d!1404370 b!4541605)))

(assert (=> bs!879275 (= lambda!176607 lambda!176468)))

(declare-fun bs!879276 () Bool)

(assert (= bs!879276 (and d!1404370 d!1404322)))

(assert (=> bs!879276 (not (= lambda!176607 lambda!176593))))

(declare-fun bs!879277 () Bool)

(assert (= bs!879277 (and d!1404370 d!1404112)))

(assert (=> bs!879277 (not (= lambda!176607 lambda!176478))))

(declare-fun bs!879278 () Bool)

(assert (= bs!879278 (and d!1404370 d!1404366)))

(assert (=> bs!879278 (not (= lambda!176607 lambda!176603))))

(declare-fun bs!879279 () Bool)

(assert (= bs!879279 (and d!1404370 d!1404300)))

(assert (=> bs!879279 (not (= lambda!176607 lambda!176586))))

(assert (=> d!1404370 true))

(assert (=> d!1404370 (= (allKeysSameHashInMap!1311 lm!1477 hashF!1107) (forall!10355 (toList!4416 lm!1477) lambda!176607))))

(declare-fun bs!879280 () Bool)

(assert (= bs!879280 d!1404370))

(declare-fun m!5310417 () Bool)

(assert (=> bs!879280 m!5310417))

(assert (=> b!4541618 d!1404370))

(declare-fun d!1404372 () Bool)

(declare-fun res!1893197 () Bool)

(declare-fun e!2830464 () Bool)

(assert (=> d!1404372 (=> res!1893197 e!2830464)))

(assert (=> d!1404372 (= res!1893197 (and ((_ is Cons!50766) lt!1716281) (= (_1!28919 (h!56651 lt!1716281)) key!3287)))))

(assert (=> d!1404372 (= (containsKey!1888 lt!1716281 key!3287) e!2830464)))

(declare-fun b!4542061 () Bool)

(declare-fun e!2830465 () Bool)

(assert (=> b!4542061 (= e!2830464 e!2830465)))

(declare-fun res!1893198 () Bool)

(assert (=> b!4542061 (=> (not res!1893198) (not e!2830465))))

(assert (=> b!4542061 (= res!1893198 ((_ is Cons!50766) lt!1716281))))

(declare-fun b!4542062 () Bool)

(assert (=> b!4542062 (= e!2830465 (containsKey!1888 (t!357852 lt!1716281) key!3287))))

(assert (= (and d!1404372 (not res!1893197)) b!4542061))

(assert (= (and b!4542061 res!1893198) b!4542062))

(declare-fun m!5310419 () Bool)

(assert (=> b!4542062 m!5310419))

(assert (=> b!4541596 d!1404372))

(declare-fun tp!1338709 () Bool)

(declare-fun e!2830468 () Bool)

(declare-fun b!4542067 () Bool)

(assert (=> b!4542067 (= e!2830468 (and tp_is_empty!28093 tp_is_empty!28095 tp!1338709))))

(assert (=> b!4541609 (= tp!1338697 e!2830468)))

(assert (= (and b!4541609 ((_ is Cons!50766) (t!357852 newBucket!178))) b!4542067))

(declare-fun b!4542072 () Bool)

(declare-fun e!2830471 () Bool)

(declare-fun tp!1338714 () Bool)

(declare-fun tp!1338715 () Bool)

(assert (=> b!4542072 (= e!2830471 (and tp!1338714 tp!1338715))))

(assert (=> b!4541610 (= tp!1338696 e!2830471)))

(assert (= (and b!4541610 ((_ is Cons!50767) (toList!4416 lm!1477))) b!4542072))

(declare-fun b_lambda!158195 () Bool)

(assert (= b_lambda!158167 (or start!450944 b_lambda!158195)))

(declare-fun bs!879281 () Bool)

(declare-fun d!1404374 () Bool)

(assert (= bs!879281 (and d!1404374 start!450944)))

(assert (=> bs!879281 (= (dynLambda!21223 lambda!176467 (h!56652 (toList!4416 lm!1477))) (noDuplicateKeys!1204 (_2!28920 (h!56652 (toList!4416 lm!1477)))))))

(declare-fun m!5310421 () Bool)

(assert (=> bs!879281 m!5310421))

(assert (=> b!4541851 d!1404374))

(declare-fun b_lambda!158197 () Bool)

(assert (= b_lambda!158169 (or b!4541605 b_lambda!158197)))

(declare-fun bs!879282 () Bool)

(declare-fun d!1404376 () Bool)

(assert (= bs!879282 (and d!1404376 b!4541605)))

(assert (=> bs!879282 (= (dynLambda!21223 lambda!176468 (h!56652 (toList!4416 lm!1477))) (allKeysSameHash!1058 (_2!28920 (h!56652 (toList!4416 lm!1477))) (_1!28920 (h!56652 (toList!4416 lm!1477))) hashF!1107))))

(declare-fun m!5310423 () Bool)

(assert (=> bs!879282 m!5310423))

(assert (=> d!1404252 d!1404376))

(declare-fun b_lambda!158199 () Bool)

(assert (= b_lambda!158165 (or start!450944 b_lambda!158199)))

(declare-fun bs!879283 () Bool)

(declare-fun d!1404378 () Bool)

(assert (= bs!879283 (and d!1404378 start!450944)))

(assert (=> bs!879283 (= (dynLambda!21223 lambda!176467 lt!1716296) (noDuplicateKeys!1204 (_2!28920 lt!1716296)))))

(declare-fun m!5310425 () Bool)

(assert (=> bs!879283 m!5310425))

(assert (=> d!1404180 d!1404378))

(declare-fun b_lambda!158201 () Bool)

(assert (= b_lambda!158173 (or start!450944 b_lambda!158201)))

(assert (=> d!1404264 d!1404374))

(declare-fun b_lambda!158203 () Bool)

(assert (= b_lambda!158171 (or b!4541605 b_lambda!158203)))

(declare-fun bs!879284 () Bool)

(declare-fun d!1404380 () Bool)

(assert (= bs!879284 (and d!1404380 b!4541605)))

(assert (=> bs!879284 (= (dynLambda!21224 lambda!176469 (tuple2!51251 key!3287 (_2!28919 (get!16698 lt!1716279)))) (= (hash!2931 hashF!1107 (_1!28919 (tuple2!51251 key!3287 (_2!28919 (get!16698 lt!1716279))))) (_1!28920 (h!56652 (toList!4416 lm!1477)))))))

(declare-fun m!5310427 () Bool)

(assert (=> bs!879284 m!5310427))

(assert (=> d!1404254 d!1404380))

(declare-fun b_lambda!158205 () Bool)

(assert (= b_lambda!158175 (or start!450944 b_lambda!158205)))

(declare-fun bs!879285 () Bool)

(declare-fun d!1404382 () Bool)

(assert (= bs!879285 (and d!1404382 start!450944)))

(assert (=> bs!879285 (= (dynLambda!21223 lambda!176467 (h!56652 (toList!4416 lt!1716282))) (noDuplicateKeys!1204 (_2!28920 (h!56652 (toList!4416 lt!1716282)))))))

(declare-fun m!5310429 () Bool)

(assert (=> bs!879285 m!5310429))

(assert (=> b!4541946 d!1404382))

(check-sat (not b!4542055) (not b!4542023) (not d!1404172) (not d!1404282) (not b!4541835) (not d!1404100) (not b!4542048) (not b!4541666) (not d!1404354) (not b!4541865) (not d!1404334) (not d!1404190) (not b!4541956) (not b!4541868) (not b!4541943) (not d!1404370) (not b!4541947) (not bm!316715) (not bs!879281) (not b_lambda!158205) (not b!4542038) (not b!4542030) (not b!4541973) (not b!4542043) (not d!1404368) (not bm!316740) (not d!1404280) (not b!4541942) (not b!4541668) (not b!4542054) (not d!1404366) (not b!4541930) tp_is_empty!28095 (not d!1404184) (not b!4541971) (not d!1404312) (not b!4542036) (not d!1404264) (not d!1404254) (not bs!879284) (not d!1404220) (not b!4541863) (not d!1404180) (not b_lambda!158195) (not b!4541974) (not d!1404200) (not d!1404138) (not bm!316748) (not bm!316749) (not b!4542062) (not d!1404170) (not b!4541932) (not d!1404236) (not d!1404336) (not b!4541762) (not d!1404300) (not b!4541852) (not b!4541941) (not b!4541667) (not d!1404166) (not b!4541818) (not b!4542052) (not d!1404212) (not d!1404208) (not b!4542039) (not b!4542045) (not bm!316750) (not b!4541769) (not b!4542067) (not b!4542044) (not b!4541959) (not b!4542059) (not b!4541855) (not b!4542034) (not b_lambda!158203) (not bm!316739) (not bs!879285) (not d!1404210) (not b!4542042) (not d!1404352) (not b!4541664) (not b!4541665) (not d!1404202) (not d!1404330) (not bs!879282) (not d!1404112) (not bm!316732) (not d!1404328) (not b!4542047) (not b!4541926) (not b!4542072) (not d!1404174) (not d!1404270) (not b!4541924) (not b_lambda!158199) (not d!1404346) (not b!4541661) (not b!4541927) (not b_lambda!158201) (not d!1404164) (not b!4541935) (not d!1404296) (not b!4541669) (not b_lambda!158197) (not b!4541945) (not b!4541867) (not b!4541857) (not bm!316731) (not b!4541972) (not d!1404178) (not d!1404272) (not b!4542046) (not d!1404358) (not d!1404268) (not b!4541827) (not bs!879283) (not b!4541759) (not d!1404260) (not d!1404318) (not b!4541765) (not d!1404136) (not d!1404252) (not b!4541761) (not b!4541928) (not b!4541954) (not d!1404332) (not b!4541862) (not d!1404182) (not bm!316738) (not b!4542029) (not d!1404360) (not b!4542035) (not b!4542031) (not b!4541944) (not bm!316733) (not b!4541807) (not d!1404362) (not b!4542053) (not b!4542014) (not b!4542006) (not b!4542051) (not b!4541811) (not b!4542033) (not b!4541957) (not d!1404196) (not b!4542016) (not d!1404168) (not bm!316752) (not d!1404364) (not b!4541760) (not b!4542056) (not d!1404298) (not d!1404338) (not b!4542057) (not bm!316751) (not b!4541866) (not d!1404188) (not d!1404322) tp_is_empty!28093 (not b!4541719) (not b!4542007) (not d!1404356) (not b!4541829) (not d!1404266))
(check-sat)
