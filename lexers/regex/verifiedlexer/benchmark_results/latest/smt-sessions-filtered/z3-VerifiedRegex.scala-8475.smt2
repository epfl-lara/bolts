; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!440756 () Bool)

(assert start!440756)

(declare-fun b!4480834 () Bool)

(declare-datatypes ((Unit!89701 0))(
  ( (Unit!89702) )
))
(declare-fun e!2790731 () Unit!89701)

(declare-fun Unit!89703 () Unit!89701)

(assert (=> b!4480834 (= e!2790731 Unit!89703)))

(declare-fun b!4480835 () Bool)

(declare-fun e!2790720 () Bool)

(declare-fun e!2790726 () Bool)

(assert (=> b!4480835 (= e!2790720 e!2790726)))

(declare-fun res!1860305 () Bool)

(assert (=> b!4480835 (=> res!1860305 e!2790726)))

(declare-datatypes ((K!11780 0))(
  ( (K!11781 (val!17695 Int)) )
))
(declare-datatypes ((V!12026 0))(
  ( (V!12027 (val!17696 Int)) )
))
(declare-datatypes ((tuple2!50658 0))(
  ( (tuple2!50659 (_1!28623 K!11780) (_2!28623 V!12026)) )
))
(declare-datatypes ((List!50494 0))(
  ( (Nil!50370) (Cons!50370 (h!56155 tuple2!50658) (t!357448 List!50494)) )
))
(declare-datatypes ((tuple2!50660 0))(
  ( (tuple2!50661 (_1!28624 (_ BitVec 64)) (_2!28624 List!50494)) )
))
(declare-fun lt!1667514 () tuple2!50660)

(declare-datatypes ((List!50495 0))(
  ( (Nil!50371) (Cons!50371 (h!56156 tuple2!50660) (t!357449 List!50495)) )
))
(declare-datatypes ((ListLongMap!2751 0))(
  ( (ListLongMap!2752 (toList!4119 List!50495)) )
))
(declare-fun lt!1667526 () ListLongMap!2751)

(declare-fun lm!1477 () ListLongMap!2751)

(assert (=> b!4480835 (= res!1860305 (not (= (toList!4119 lt!1667526) (Cons!50371 lt!1667514 (t!357449 (toList!4119 lm!1477))))))))

(declare-fun lt!1667523 () List!50495)

(declare-fun lt!1667522 () tuple2!50660)

(declare-fun key!3287 () K!11780)

(declare-datatypes ((ListMap!3381 0))(
  ( (ListMap!3382 (toList!4120 List!50494)) )
))
(declare-fun eq!549 (ListMap!3381 ListMap!3381) Bool)

(declare-fun extractMap!1112 (List!50495) ListMap!3381)

(declare-fun -!318 (ListMap!3381 K!11780) ListMap!3381)

(assert (=> b!4480835 (eq!549 (extractMap!1112 (Cons!50371 lt!1667514 lt!1667523)) (-!318 (extractMap!1112 (Cons!50371 lt!1667522 lt!1667523)) key!3287))))

(declare-fun tail!7564 (List!50495) List!50495)

(assert (=> b!4480835 (= lt!1667523 (tail!7564 (toList!4119 lm!1477)))))

(declare-datatypes ((Hashable!5451 0))(
  ( (HashableExt!5450 (__x!31154 Int)) )
))
(declare-fun hashF!1107 () Hashable!5451)

(declare-fun lt!1667519 () Unit!89701)

(declare-fun hash!344 () (_ BitVec 64))

(declare-fun newBucket!178 () List!50494)

(declare-fun lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMapOneHashIsHead!16 (ListLongMap!2751 (_ BitVec 64) List!50494 List!50494 K!11780 Hashable!5451) Unit!89701)

(assert (=> b!4480835 (= lt!1667519 (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMapOneHashIsHead!16 lm!1477 hash!344 (_2!28624 (h!56156 (toList!4119 lm!1477))) newBucket!178 key!3287 hashF!1107))))

(declare-fun b!4480836 () Bool)

(declare-fun Unit!89704 () Unit!89701)

(assert (=> b!4480836 (= e!2790731 Unit!89704)))

(declare-fun lt!1667528 () ListLongMap!2751)

(declare-fun lt!1667524 () Unit!89701)

(declare-fun lemmaInGenMapThenLongMapContainsHash!130 (ListLongMap!2751 K!11780 Hashable!5451) Unit!89701)

(assert (=> b!4480836 (= lt!1667524 (lemmaInGenMapThenLongMapContainsHash!130 lt!1667528 key!3287 hashF!1107))))

(declare-fun res!1860320 () Bool)

(declare-fun lt!1667517 () (_ BitVec 64))

(declare-fun contains!12959 (ListLongMap!2751 (_ BitVec 64)) Bool)

(assert (=> b!4480836 (= res!1860320 (contains!12959 lt!1667528 lt!1667517))))

(declare-fun e!2790724 () Bool)

(assert (=> b!4480836 (=> (not res!1860320) (not e!2790724))))

(assert (=> b!4480836 e!2790724))

(declare-fun b!4480837 () Bool)

(declare-fun res!1860306 () Bool)

(declare-fun e!2790729 () Bool)

(assert (=> b!4480837 (=> (not res!1860306) (not e!2790729))))

(declare-fun contains!12960 (ListMap!3381 K!11780) Bool)

(assert (=> b!4480837 (= res!1860306 (contains!12960 (extractMap!1112 (toList!4119 lm!1477)) key!3287))))

(declare-fun b!4480838 () Bool)

(declare-fun e!2790723 () Bool)

(assert (=> b!4480838 (= e!2790729 e!2790723)))

(declare-fun res!1860313 () Bool)

(assert (=> b!4480838 (=> (not res!1860313) (not e!2790723))))

(assert (=> b!4480838 (= res!1860313 (= lt!1667517 hash!344))))

(declare-fun hash!2543 (Hashable!5451 K!11780) (_ BitVec 64))

(assert (=> b!4480838 (= lt!1667517 (hash!2543 hashF!1107 key!3287))))

(declare-fun b!4480839 () Bool)

(declare-fun e!2790721 () Bool)

(assert (=> b!4480839 (= e!2790721 e!2790720)))

(declare-fun res!1860321 () Bool)

(assert (=> b!4480839 (=> res!1860321 e!2790720)))

(declare-fun lt!1667512 () Bool)

(assert (=> b!4480839 (= res!1860321 lt!1667512)))

(declare-fun lt!1667527 () Unit!89701)

(assert (=> b!4480839 (= lt!1667527 e!2790731)))

(declare-fun c!763285 () Bool)

(assert (=> b!4480839 (= c!763285 lt!1667512)))

(declare-fun lt!1667516 () ListMap!3381)

(assert (=> b!4480839 (= lt!1667512 (contains!12960 lt!1667516 key!3287))))

(declare-fun b!4480840 () Bool)

(declare-fun e!2790725 () Bool)

(declare-fun e!2790730 () Bool)

(assert (=> b!4480840 (= e!2790725 e!2790730)))

(declare-fun res!1860314 () Bool)

(assert (=> b!4480840 (=> res!1860314 e!2790730)))

(declare-fun +!1412 (ListLongMap!2751 tuple2!50660) ListLongMap!2751)

(assert (=> b!4480840 (= res!1860314 (not (= lt!1667526 (+!1412 lt!1667528 lt!1667514))))))

(declare-fun tail!7565 (ListLongMap!2751) ListLongMap!2751)

(assert (=> b!4480840 (= lt!1667528 (tail!7565 lm!1477))))

(declare-fun b!4480841 () Bool)

(declare-fun res!1860310 () Bool)

(assert (=> b!4480841 (=> res!1860310 e!2790726)))

(declare-fun lt!1667518 () ListMap!3381)

(declare-fun addToMapMapFromBucket!611 (List!50494 ListMap!3381) ListMap!3381)

(assert (=> b!4480841 (= res!1860310 (not (eq!549 (extractMap!1112 (toList!4119 (+!1412 lm!1477 lt!1667522))) (addToMapMapFromBucket!611 (_2!28624 (h!56156 (toList!4119 lm!1477))) lt!1667518))))))

(declare-fun b!4480842 () Bool)

(declare-fun res!1860307 () Bool)

(declare-fun e!2790727 () Bool)

(assert (=> b!4480842 (=> res!1860307 e!2790727)))

(get-info :version)

(assert (=> b!4480842 (= res!1860307 (or ((_ is Nil!50371) (toList!4119 lm!1477)) (not (= (_1!28624 (h!56156 (toList!4119 lm!1477))) hash!344))))))

(declare-fun b!4480843 () Bool)

(declare-fun lambda!165329 () Int)

(declare-fun forall!10050 (List!50495 Int) Bool)

(assert (=> b!4480843 (= e!2790726 (forall!10050 (toList!4119 lm!1477) lambda!165329))))

(declare-fun b!4480844 () Bool)

(declare-fun res!1860316 () Bool)

(assert (=> b!4480844 (=> (not res!1860316) (not e!2790729))))

(declare-fun allKeysSameHashInMap!1163 (ListLongMap!2751 Hashable!5451) Bool)

(assert (=> b!4480844 (= res!1860316 (allKeysSameHashInMap!1163 lm!1477 hashF!1107))))

(declare-fun b!4480845 () Bool)

(declare-fun e!2790722 () Bool)

(declare-fun tp!1336656 () Bool)

(assert (=> b!4480845 (= e!2790722 tp!1336656)))

(declare-fun b!4480846 () Bool)

(declare-fun e!2790732 () Unit!89701)

(declare-fun Unit!89705 () Unit!89701)

(assert (=> b!4480846 (= e!2790732 Unit!89705)))

(declare-fun lt!1667511 () Unit!89701)

(declare-fun lemmaNotInItsHashBucketThenNotInMap!56 (ListLongMap!2751 K!11780 Hashable!5451) Unit!89701)

(assert (=> b!4480846 (= lt!1667511 (lemmaNotInItsHashBucketThenNotInMap!56 lm!1477 key!3287 hashF!1107))))

(assert (=> b!4480846 false))

(declare-fun res!1860311 () Bool)

(assert (=> start!440756 (=> (not res!1860311) (not e!2790729))))

(assert (=> start!440756 (= res!1860311 (forall!10050 (toList!4119 lm!1477) lambda!165329))))

(assert (=> start!440756 e!2790729))

(assert (=> start!440756 true))

(declare-fun inv!65964 (ListLongMap!2751) Bool)

(assert (=> start!440756 (and (inv!65964 lm!1477) e!2790722)))

(declare-fun tp_is_empty!27501 () Bool)

(assert (=> start!440756 tp_is_empty!27501))

(declare-fun e!2790728 () Bool)

(assert (=> start!440756 e!2790728))

(declare-fun b!4480833 () Bool)

(declare-fun res!1860312 () Bool)

(assert (=> b!4480833 (=> (not res!1860312) (not e!2790723))))

(declare-fun allKeysSameHash!910 (List!50494 (_ BitVec 64) Hashable!5451) Bool)

(assert (=> b!4480833 (= res!1860312 (allKeysSameHash!910 newBucket!178 hash!344 hashF!1107))))

(declare-fun b!4480847 () Bool)

(assert (=> b!4480847 (= e!2790724 false)))

(declare-fun b!4480848 () Bool)

(assert (=> b!4480848 (= e!2790723 (not e!2790727))))

(declare-fun res!1860322 () Bool)

(assert (=> b!4480848 (=> res!1860322 e!2790727)))

(declare-fun lt!1667520 () List!50494)

(declare-fun removePairForKey!683 (List!50494 K!11780) List!50494)

(assert (=> b!4480848 (= res!1860322 (not (= newBucket!178 (removePairForKey!683 lt!1667520 key!3287))))))

(declare-fun lt!1667530 () tuple2!50660)

(declare-fun lt!1667521 () Unit!89701)

(declare-fun forallContained!2311 (List!50495 Int tuple2!50660) Unit!89701)

(assert (=> b!4480848 (= lt!1667521 (forallContained!2311 (toList!4119 lm!1477) lambda!165329 lt!1667530))))

(declare-fun contains!12961 (List!50495 tuple2!50660) Bool)

(assert (=> b!4480848 (contains!12961 (toList!4119 lm!1477) lt!1667530)))

(assert (=> b!4480848 (= lt!1667530 (tuple2!50661 hash!344 lt!1667520))))

(declare-fun lt!1667529 () Unit!89701)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!568 (List!50495 (_ BitVec 64) List!50494) Unit!89701)

(assert (=> b!4480848 (= lt!1667529 (lemmaGetValueByKeyImpliesContainsTuple!568 (toList!4119 lm!1477) hash!344 lt!1667520))))

(declare-fun apply!11793 (ListLongMap!2751 (_ BitVec 64)) List!50494)

(assert (=> b!4480848 (= lt!1667520 (apply!11793 lm!1477 hash!344))))

(assert (=> b!4480848 (contains!12959 lm!1477 lt!1667517)))

(declare-fun lt!1667531 () Unit!89701)

(assert (=> b!4480848 (= lt!1667531 (lemmaInGenMapThenLongMapContainsHash!130 lm!1477 key!3287 hashF!1107))))

(declare-fun b!4480849 () Bool)

(declare-fun e!2790733 () Bool)

(assert (=> b!4480849 (= e!2790733 e!2790725)))

(declare-fun res!1860308 () Bool)

(assert (=> b!4480849 (=> res!1860308 e!2790725)))

(assert (=> b!4480849 (= res!1860308 (not (= (t!357449 (toList!4119 lm!1477)) (tail!7564 (toList!4119 lt!1667526)))))))

(assert (=> b!4480849 (= lt!1667526 (+!1412 lm!1477 lt!1667514))))

(assert (=> b!4480849 (eq!549 (extractMap!1112 (Cons!50371 lt!1667514 Nil!50371)) (-!318 (extractMap!1112 (Cons!50371 lt!1667522 Nil!50371)) key!3287))))

(assert (=> b!4480849 (= lt!1667522 (tuple2!50661 hash!344 (_2!28624 (h!56156 (toList!4119 lm!1477)))))))

(assert (=> b!4480849 (= lt!1667514 (tuple2!50661 hash!344 newBucket!178))))

(declare-fun lt!1667513 () Unit!89701)

(declare-fun lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMapOneHash!48 ((_ BitVec 64) List!50494 List!50494 K!11780 Hashable!5451) Unit!89701)

(assert (=> b!4480849 (= lt!1667513 (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMapOneHash!48 hash!344 (_2!28624 (h!56156 (toList!4119 lm!1477))) newBucket!178 key!3287 hashF!1107))))

(declare-fun lt!1667532 () List!50495)

(assert (=> b!4480849 (contains!12960 (extractMap!1112 lt!1667532) key!3287)))

(declare-fun lt!1667510 () Unit!89701)

(declare-fun lemmaListContainsThenExtractedMapContains!52 (ListLongMap!2751 K!11780 Hashable!5451) Unit!89701)

(assert (=> b!4480849 (= lt!1667510 (lemmaListContainsThenExtractedMapContains!52 (ListLongMap!2752 lt!1667532) key!3287 hashF!1107))))

(declare-fun b!4480850 () Bool)

(declare-fun res!1860309 () Bool)

(assert (=> b!4480850 (=> res!1860309 e!2790727)))

(declare-fun noDuplicateKeys!1056 (List!50494) Bool)

(assert (=> b!4480850 (= res!1860309 (not (noDuplicateKeys!1056 newBucket!178)))))

(declare-fun b!4480851 () Bool)

(assert (=> b!4480851 (= e!2790730 e!2790721)))

(declare-fun res!1860319 () Bool)

(assert (=> b!4480851 (=> res!1860319 e!2790721)))

(assert (=> b!4480851 (= res!1860319 (not (= lt!1667516 lt!1667518)))))

(assert (=> b!4480851 (= lt!1667518 (extractMap!1112 (t!357449 (toList!4119 lm!1477))))))

(assert (=> b!4480851 (= lt!1667516 (extractMap!1112 (toList!4119 lt!1667528)))))

(declare-fun b!4480852 () Bool)

(declare-fun res!1860318 () Bool)

(assert (=> b!4480852 (=> res!1860318 e!2790726)))

(assert (=> b!4480852 (= res!1860318 (not (eq!549 (extractMap!1112 (toList!4119 lt!1667526)) (addToMapMapFromBucket!611 newBucket!178 lt!1667518))))))

(declare-fun tp!1336657 () Bool)

(declare-fun tp_is_empty!27503 () Bool)

(declare-fun b!4480853 () Bool)

(assert (=> b!4480853 (= e!2790728 (and tp_is_empty!27501 tp_is_empty!27503 tp!1336657))))

(declare-fun b!4480854 () Bool)

(declare-fun e!2790719 () Bool)

(assert (=> b!4480854 (= e!2790719 e!2790733)))

(declare-fun res!1860317 () Bool)

(assert (=> b!4480854 (=> res!1860317 e!2790733)))

(declare-fun containsKeyBiggerList!56 (List!50495 K!11780) Bool)

(assert (=> b!4480854 (= res!1860317 (not (containsKeyBiggerList!56 lt!1667532 key!3287)))))

(assert (=> b!4480854 (= lt!1667532 (Cons!50371 (h!56156 (toList!4119 lm!1477)) Nil!50371))))

(declare-fun b!4480855 () Bool)

(declare-fun Unit!89706 () Unit!89701)

(assert (=> b!4480855 (= e!2790732 Unit!89706)))

(declare-fun b!4480856 () Bool)

(assert (=> b!4480856 (= e!2790727 e!2790719)))

(declare-fun res!1860315 () Bool)

(assert (=> b!4480856 (=> res!1860315 e!2790719)))

(declare-fun lt!1667525 () Bool)

(assert (=> b!4480856 (= res!1860315 lt!1667525)))

(declare-fun lt!1667515 () Unit!89701)

(assert (=> b!4480856 (= lt!1667515 e!2790732)))

(declare-fun c!763284 () Bool)

(assert (=> b!4480856 (= c!763284 lt!1667525)))

(declare-fun containsKey!1544 (List!50494 K!11780) Bool)

(assert (=> b!4480856 (= lt!1667525 (not (containsKey!1544 (_2!28624 (h!56156 (toList!4119 lm!1477))) key!3287)))))

(assert (= (and start!440756 res!1860311) b!4480844))

(assert (= (and b!4480844 res!1860316) b!4480837))

(assert (= (and b!4480837 res!1860306) b!4480838))

(assert (= (and b!4480838 res!1860313) b!4480833))

(assert (= (and b!4480833 res!1860312) b!4480848))

(assert (= (and b!4480848 (not res!1860322)) b!4480850))

(assert (= (and b!4480850 (not res!1860309)) b!4480842))

(assert (= (and b!4480842 (not res!1860307)) b!4480856))

(assert (= (and b!4480856 c!763284) b!4480846))

(assert (= (and b!4480856 (not c!763284)) b!4480855))

(assert (= (and b!4480856 (not res!1860315)) b!4480854))

(assert (= (and b!4480854 (not res!1860317)) b!4480849))

(assert (= (and b!4480849 (not res!1860308)) b!4480840))

(assert (= (and b!4480840 (not res!1860314)) b!4480851))

(assert (= (and b!4480851 (not res!1860319)) b!4480839))

(assert (= (and b!4480839 c!763285) b!4480836))

(assert (= (and b!4480839 (not c!763285)) b!4480834))

(assert (= (and b!4480836 res!1860320) b!4480847))

(assert (= (and b!4480839 (not res!1860321)) b!4480835))

(assert (= (and b!4480835 (not res!1860305)) b!4480852))

(assert (= (and b!4480852 (not res!1860318)) b!4480841))

(assert (= (and b!4480841 (not res!1860310)) b!4480843))

(assert (= start!440756 b!4480845))

(assert (= (and start!440756 ((_ is Cons!50370) newBucket!178)) b!4480853))

(declare-fun m!5200139 () Bool)

(assert (=> b!4480848 m!5200139))

(declare-fun m!5200141 () Bool)

(assert (=> b!4480848 m!5200141))

(declare-fun m!5200143 () Bool)

(assert (=> b!4480848 m!5200143))

(declare-fun m!5200145 () Bool)

(assert (=> b!4480848 m!5200145))

(declare-fun m!5200147 () Bool)

(assert (=> b!4480848 m!5200147))

(declare-fun m!5200149 () Bool)

(assert (=> b!4480848 m!5200149))

(declare-fun m!5200151 () Bool)

(assert (=> b!4480848 m!5200151))

(declare-fun m!5200153 () Bool)

(assert (=> b!4480856 m!5200153))

(declare-fun m!5200155 () Bool)

(assert (=> b!4480849 m!5200155))

(declare-fun m!5200157 () Bool)

(assert (=> b!4480849 m!5200157))

(assert (=> b!4480849 m!5200155))

(declare-fun m!5200159 () Bool)

(assert (=> b!4480849 m!5200159))

(declare-fun m!5200161 () Bool)

(assert (=> b!4480849 m!5200161))

(declare-fun m!5200163 () Bool)

(assert (=> b!4480849 m!5200163))

(declare-fun m!5200165 () Bool)

(assert (=> b!4480849 m!5200165))

(declare-fun m!5200167 () Bool)

(assert (=> b!4480849 m!5200167))

(declare-fun m!5200169 () Bool)

(assert (=> b!4480849 m!5200169))

(assert (=> b!4480849 m!5200161))

(declare-fun m!5200171 () Bool)

(assert (=> b!4480849 m!5200171))

(assert (=> b!4480849 m!5200169))

(assert (=> b!4480849 m!5200163))

(declare-fun m!5200173 () Bool)

(assert (=> b!4480849 m!5200173))

(declare-fun m!5200175 () Bool)

(assert (=> b!4480846 m!5200175))

(declare-fun m!5200177 () Bool)

(assert (=> b!4480833 m!5200177))

(declare-fun m!5200179 () Bool)

(assert (=> b!4480854 m!5200179))

(declare-fun m!5200181 () Bool)

(assert (=> b!4480851 m!5200181))

(declare-fun m!5200183 () Bool)

(assert (=> b!4480851 m!5200183))

(declare-fun m!5200185 () Bool)

(assert (=> b!4480844 m!5200185))

(declare-fun m!5200187 () Bool)

(assert (=> b!4480852 m!5200187))

(declare-fun m!5200189 () Bool)

(assert (=> b!4480852 m!5200189))

(assert (=> b!4480852 m!5200187))

(assert (=> b!4480852 m!5200189))

(declare-fun m!5200191 () Bool)

(assert (=> b!4480852 m!5200191))

(declare-fun m!5200193 () Bool)

(assert (=> b!4480839 m!5200193))

(declare-fun m!5200195 () Bool)

(assert (=> start!440756 m!5200195))

(declare-fun m!5200197 () Bool)

(assert (=> start!440756 m!5200197))

(declare-fun m!5200199 () Bool)

(assert (=> b!4480838 m!5200199))

(declare-fun m!5200201 () Bool)

(assert (=> b!4480837 m!5200201))

(assert (=> b!4480837 m!5200201))

(declare-fun m!5200203 () Bool)

(assert (=> b!4480837 m!5200203))

(declare-fun m!5200205 () Bool)

(assert (=> b!4480836 m!5200205))

(declare-fun m!5200207 () Bool)

(assert (=> b!4480836 m!5200207))

(declare-fun m!5200209 () Bool)

(assert (=> b!4480840 m!5200209))

(declare-fun m!5200211 () Bool)

(assert (=> b!4480840 m!5200211))

(declare-fun m!5200213 () Bool)

(assert (=> b!4480850 m!5200213))

(assert (=> b!4480843 m!5200195))

(declare-fun m!5200215 () Bool)

(assert (=> b!4480835 m!5200215))

(declare-fun m!5200217 () Bool)

(assert (=> b!4480835 m!5200217))

(declare-fun m!5200219 () Bool)

(assert (=> b!4480835 m!5200219))

(assert (=> b!4480835 m!5200219))

(assert (=> b!4480835 m!5200217))

(declare-fun m!5200221 () Bool)

(assert (=> b!4480835 m!5200221))

(declare-fun m!5200223 () Bool)

(assert (=> b!4480835 m!5200223))

(declare-fun m!5200225 () Bool)

(assert (=> b!4480835 m!5200225))

(assert (=> b!4480835 m!5200215))

(declare-fun m!5200227 () Bool)

(assert (=> b!4480841 m!5200227))

(declare-fun m!5200229 () Bool)

(assert (=> b!4480841 m!5200229))

(declare-fun m!5200231 () Bool)

(assert (=> b!4480841 m!5200231))

(assert (=> b!4480841 m!5200229))

(assert (=> b!4480841 m!5200231))

(declare-fun m!5200233 () Bool)

(assert (=> b!4480841 m!5200233))

(check-sat (not b!4480835) (not b!4480839) tp_is_empty!27503 tp_is_empty!27501 (not b!4480846) (not b!4480833) (not b!4480850) (not b!4480843) (not b!4480856) (not b!4480852) (not b!4480851) (not b!4480841) (not b!4480836) (not b!4480849) (not b!4480845) (not b!4480853) (not b!4480838) (not b!4480854) (not b!4480844) (not start!440756) (not b!4480837) (not b!4480848) (not b!4480840))
(check-sat)
