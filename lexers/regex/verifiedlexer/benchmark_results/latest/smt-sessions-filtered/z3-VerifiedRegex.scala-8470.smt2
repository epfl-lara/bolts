; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!440060 () Bool)

(assert start!440060)

(declare-fun b!4474376 () Bool)

(declare-fun e!2786333 () Bool)

(declare-fun tp!1336506 () Bool)

(assert (=> b!4474376 (= e!2786333 tp!1336506)))

(declare-fun b!4474377 () Bool)

(declare-fun e!2786334 () Bool)

(declare-fun e!2786338 () Bool)

(assert (=> b!4474377 (= e!2786334 e!2786338)))

(declare-fun res!1856872 () Bool)

(assert (=> b!4474377 (=> res!1856872 e!2786338)))

(declare-datatypes ((K!11755 0))(
  ( (K!11756 (val!17675 Int)) )
))
(declare-datatypes ((V!12001 0))(
  ( (V!12002 (val!17676 Int)) )
))
(declare-datatypes ((tuple2!50618 0))(
  ( (tuple2!50619 (_1!28603 K!11755) (_2!28603 V!12001)) )
))
(declare-datatypes ((List!50466 0))(
  ( (Nil!50342) (Cons!50342 (h!56119 tuple2!50618) (t!357416 List!50466)) )
))
(declare-datatypes ((tuple2!50620 0))(
  ( (tuple2!50621 (_1!28604 (_ BitVec 64)) (_2!28604 List!50466)) )
))
(declare-datatypes ((List!50467 0))(
  ( (Nil!50343) (Cons!50343 (h!56120 tuple2!50620) (t!357417 List!50467)) )
))
(declare-fun lt!1662126 () List!50467)

(declare-fun key!3287 () K!11755)

(declare-fun containsKeyBiggerList!46 (List!50467 K!11755) Bool)

(assert (=> b!4474377 (= res!1856872 (not (containsKeyBiggerList!46 lt!1662126 key!3287)))))

(declare-datatypes ((ListLongMap!2731 0))(
  ( (ListLongMap!2732 (toList!4099 List!50467)) )
))
(declare-fun lm!1477 () ListLongMap!2731)

(assert (=> b!4474377 (= lt!1662126 (Cons!50343 (h!56120 (toList!4099 lm!1477)) Nil!50343))))

(declare-fun b!4474378 () Bool)

(declare-fun res!1856878 () Bool)

(declare-fun e!2786343 () Bool)

(assert (=> b!4474378 (=> (not res!1856878) (not e!2786343))))

(declare-datatypes ((Hashable!5441 0))(
  ( (HashableExt!5440 (__x!31144 Int)) )
))
(declare-fun hashF!1107 () Hashable!5441)

(declare-fun allKeysSameHashInMap!1153 (ListLongMap!2731 Hashable!5441) Bool)

(assert (=> b!4474378 (= res!1856878 (allKeysSameHashInMap!1153 lm!1477 hashF!1107))))

(declare-fun b!4474379 () Bool)

(declare-fun e!2786342 () Bool)

(declare-fun e!2786341 () Bool)

(assert (=> b!4474379 (= e!2786342 e!2786341)))

(declare-fun res!1856879 () Bool)

(assert (=> b!4474379 (=> res!1856879 e!2786341)))

(declare-datatypes ((ListMap!3361 0))(
  ( (ListMap!3362 (toList!4100 List!50466)) )
))
(declare-fun lt!1662123 () ListMap!3361)

(declare-fun extractMap!1102 (List!50467) ListMap!3361)

(assert (=> b!4474379 (= res!1856879 (not (= lt!1662123 (extractMap!1102 (t!357417 (toList!4099 lm!1477))))))))

(declare-fun lt!1662122 () ListLongMap!2731)

(assert (=> b!4474379 (= lt!1662123 (extractMap!1102 (toList!4099 lt!1662122)))))

(declare-fun b!4474380 () Bool)

(declare-fun e!2786346 () Bool)

(assert (=> b!4474380 (= e!2786338 e!2786346)))

(declare-fun res!1856875 () Bool)

(assert (=> b!4474380 (=> res!1856875 e!2786346)))

(declare-fun lt!1662127 () ListLongMap!2731)

(declare-fun tail!7544 (List!50467) List!50467)

(assert (=> b!4474380 (= res!1856875 (not (= (t!357417 (toList!4099 lm!1477)) (tail!7544 (toList!4099 lt!1662127)))))))

(declare-fun lt!1662120 () tuple2!50620)

(declare-fun +!1394 (ListLongMap!2731 tuple2!50620) ListLongMap!2731)

(assert (=> b!4474380 (= lt!1662127 (+!1394 lm!1477 lt!1662120))))

(declare-fun lt!1662141 () tuple2!50620)

(declare-fun eq!539 (ListMap!3361 ListMap!3361) Bool)

(declare-fun -!308 (ListMap!3361 K!11755) ListMap!3361)

(assert (=> b!4474380 (eq!539 (extractMap!1102 (Cons!50343 lt!1662120 Nil!50343)) (-!308 (extractMap!1102 (Cons!50343 lt!1662141 Nil!50343)) key!3287))))

(declare-fun hash!344 () (_ BitVec 64))

(assert (=> b!4474380 (= lt!1662141 (tuple2!50621 hash!344 (_2!28604 (h!56120 (toList!4099 lm!1477)))))))

(declare-fun newBucket!178 () List!50466)

(assert (=> b!4474380 (= lt!1662120 (tuple2!50621 hash!344 newBucket!178))))

(declare-datatypes ((Unit!88349 0))(
  ( (Unit!88350) )
))
(declare-fun lt!1662138 () Unit!88349)

(declare-fun lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMapOneHash!38 ((_ BitVec 64) List!50466 List!50466 K!11755 Hashable!5441) Unit!88349)

(assert (=> b!4474380 (= lt!1662138 (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMapOneHash!38 hash!344 (_2!28604 (h!56120 (toList!4099 lm!1477))) newBucket!178 key!3287 hashF!1107))))

(declare-fun contains!12919 (ListMap!3361 K!11755) Bool)

(assert (=> b!4474380 (contains!12919 (extractMap!1102 lt!1662126) key!3287)))

(declare-fun lt!1662124 () Unit!88349)

(declare-fun lemmaListContainsThenExtractedMapContains!42 (ListLongMap!2731 K!11755 Hashable!5441) Unit!88349)

(assert (=> b!4474380 (= lt!1662124 (lemmaListContainsThenExtractedMapContains!42 (ListLongMap!2732 lt!1662126) key!3287 hashF!1107))))

(declare-fun b!4474381 () Bool)

(declare-fun e!2786345 () Bool)

(assert (=> b!4474381 (= e!2786341 e!2786345)))

(declare-fun res!1856868 () Bool)

(assert (=> b!4474381 (=> res!1856868 e!2786345)))

(declare-fun lt!1662142 () Bool)

(assert (=> b!4474381 (= res!1856868 lt!1662142)))

(declare-fun lt!1662135 () Unit!88349)

(declare-fun e!2786344 () Unit!88349)

(assert (=> b!4474381 (= lt!1662135 e!2786344)))

(declare-fun c!761890 () Bool)

(assert (=> b!4474381 (= c!761890 lt!1662142)))

(assert (=> b!4474381 (= lt!1662142 (contains!12919 lt!1662123 key!3287))))

(declare-fun b!4474382 () Bool)

(declare-fun res!1856880 () Bool)

(declare-fun e!2786337 () Bool)

(assert (=> b!4474382 (=> (not res!1856880) (not e!2786337))))

(declare-fun allKeysSameHash!900 (List!50466 (_ BitVec 64) Hashable!5441) Bool)

(assert (=> b!4474382 (= res!1856880 (allKeysSameHash!900 newBucket!178 hash!344 hashF!1107))))

(declare-fun b!4474383 () Bool)

(declare-fun e!2786335 () Bool)

(assert (=> b!4474383 (= e!2786335 e!2786334)))

(declare-fun res!1856866 () Bool)

(assert (=> b!4474383 (=> res!1856866 e!2786334)))

(declare-fun lt!1662137 () Bool)

(assert (=> b!4474383 (= res!1856866 lt!1662137)))

(declare-fun lt!1662133 () Unit!88349)

(declare-fun e!2786339 () Unit!88349)

(assert (=> b!4474383 (= lt!1662133 e!2786339)))

(declare-fun c!761889 () Bool)

(assert (=> b!4474383 (= c!761889 lt!1662137)))

(declare-fun containsKey!1518 (List!50466 K!11755) Bool)

(assert (=> b!4474383 (= lt!1662137 (not (containsKey!1518 (_2!28604 (h!56120 (toList!4099 lm!1477))) key!3287)))))

(declare-fun b!4474384 () Bool)

(assert (=> b!4474384 (= e!2786343 e!2786337)))

(declare-fun res!1856869 () Bool)

(assert (=> b!4474384 (=> (not res!1856869) (not e!2786337))))

(declare-fun lt!1662134 () (_ BitVec 64))

(assert (=> b!4474384 (= res!1856869 (= lt!1662134 hash!344))))

(declare-fun hash!2505 (Hashable!5441 K!11755) (_ BitVec 64))

(assert (=> b!4474384 (= lt!1662134 (hash!2505 hashF!1107 key!3287))))

(declare-fun b!4474385 () Bool)

(declare-fun Unit!88351 () Unit!88349)

(assert (=> b!4474385 (= e!2786339 Unit!88351)))

(declare-fun lt!1662132 () Unit!88349)

(declare-fun lemmaNotInItsHashBucketThenNotInMap!46 (ListLongMap!2731 K!11755 Hashable!5441) Unit!88349)

(assert (=> b!4474385 (= lt!1662132 (lemmaNotInItsHashBucketThenNotInMap!46 lm!1477 key!3287 hashF!1107))))

(assert (=> b!4474385 false))

(declare-fun res!1856874 () Bool)

(assert (=> start!440060 (=> (not res!1856874) (not e!2786343))))

(declare-fun lambda!164125 () Int)

(declare-fun forall!10030 (List!50467 Int) Bool)

(assert (=> start!440060 (= res!1856874 (forall!10030 (toList!4099 lm!1477) lambda!164125))))

(assert (=> start!440060 e!2786343))

(assert (=> start!440060 true))

(declare-fun inv!65939 (ListLongMap!2731) Bool)

(assert (=> start!440060 (and (inv!65939 lm!1477) e!2786333)))

(declare-fun tp_is_empty!27461 () Bool)

(assert (=> start!440060 tp_is_empty!27461))

(declare-fun e!2786336 () Bool)

(assert (=> start!440060 e!2786336))

(declare-fun b!4474386 () Bool)

(declare-fun res!1856877 () Bool)

(assert (=> b!4474386 (=> (not res!1856877) (not e!2786343))))

(assert (=> b!4474386 (= res!1856877 (contains!12919 (extractMap!1102 (toList!4099 lm!1477)) key!3287))))

(declare-fun b!4474387 () Bool)

(declare-fun Unit!88352 () Unit!88349)

(assert (=> b!4474387 (= e!2786344 Unit!88352)))

(declare-fun lt!1662121 () Unit!88349)

(declare-fun lemmaInGenMapThenLongMapContainsHash!120 (ListLongMap!2731 K!11755 Hashable!5441) Unit!88349)

(assert (=> b!4474387 (= lt!1662121 (lemmaInGenMapThenLongMapContainsHash!120 lt!1662122 key!3287 hashF!1107))))

(declare-fun res!1856881 () Bool)

(declare-fun contains!12920 (ListLongMap!2731 (_ BitVec 64)) Bool)

(assert (=> b!4474387 (= res!1856881 (contains!12920 lt!1662122 lt!1662134))))

(declare-fun e!2786340 () Bool)

(assert (=> b!4474387 (=> (not res!1856881) (not e!2786340))))

(assert (=> b!4474387 e!2786340))

(declare-fun b!4474388 () Bool)

(declare-fun Unit!88353 () Unit!88349)

(assert (=> b!4474388 (= e!2786344 Unit!88353)))

(declare-fun tp_is_empty!27463 () Bool)

(declare-fun b!4474389 () Bool)

(declare-fun tp!1336507 () Bool)

(assert (=> b!4474389 (= e!2786336 (and tp_is_empty!27461 tp_is_empty!27463 tp!1336507))))

(declare-fun b!4474390 () Bool)

(declare-fun e!2786347 () Bool)

(assert (=> b!4474390 (= e!2786347 true)))

(declare-fun lt!1662129 () ListMap!3361)

(assert (=> b!4474390 (= lt!1662129 (extractMap!1102 (toList!4099 lt!1662127)))))

(declare-fun b!4474391 () Bool)

(assert (=> b!4474391 (= e!2786345 e!2786347)))

(declare-fun res!1856867 () Bool)

(assert (=> b!4474391 (=> res!1856867 e!2786347)))

(assert (=> b!4474391 (= res!1856867 (not (= (toList!4099 lt!1662127) (Cons!50343 lt!1662120 (t!357417 (toList!4099 lm!1477))))))))

(declare-fun lt!1662128 () List!50467)

(assert (=> b!4474391 (eq!539 (extractMap!1102 (Cons!50343 lt!1662120 lt!1662128)) (-!308 (extractMap!1102 (Cons!50343 lt!1662141 lt!1662128)) key!3287))))

(assert (=> b!4474391 (= lt!1662128 (tail!7544 (toList!4099 lm!1477)))))

(declare-fun lt!1662125 () Unit!88349)

(declare-fun lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMapOneHashIsHead!6 (ListLongMap!2731 (_ BitVec 64) List!50466 List!50466 K!11755 Hashable!5441) Unit!88349)

(assert (=> b!4474391 (= lt!1662125 (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMapOneHashIsHead!6 lm!1477 hash!344 (_2!28604 (h!56120 (toList!4099 lm!1477))) newBucket!178 key!3287 hashF!1107))))

(declare-fun b!4474392 () Bool)

(assert (=> b!4474392 (= e!2786346 e!2786342)))

(declare-fun res!1856870 () Bool)

(assert (=> b!4474392 (=> res!1856870 e!2786342)))

(assert (=> b!4474392 (= res!1856870 (not (= lt!1662127 (+!1394 lt!1662122 lt!1662120))))))

(declare-fun tail!7545 (ListLongMap!2731) ListLongMap!2731)

(assert (=> b!4474392 (= lt!1662122 (tail!7545 lm!1477))))

(declare-fun b!4474393 () Bool)

(assert (=> b!4474393 (= e!2786337 (not e!2786335))))

(declare-fun res!1856876 () Bool)

(assert (=> b!4474393 (=> res!1856876 e!2786335)))

(declare-fun lt!1662130 () List!50466)

(declare-fun removePairForKey!673 (List!50466 K!11755) List!50466)

(assert (=> b!4474393 (= res!1856876 (not (= newBucket!178 (removePairForKey!673 lt!1662130 key!3287))))))

(declare-fun lt!1662131 () Unit!88349)

(declare-fun lt!1662139 () tuple2!50620)

(declare-fun forallContained!2291 (List!50467 Int tuple2!50620) Unit!88349)

(assert (=> b!4474393 (= lt!1662131 (forallContained!2291 (toList!4099 lm!1477) lambda!164125 lt!1662139))))

(declare-fun contains!12921 (List!50467 tuple2!50620) Bool)

(assert (=> b!4474393 (contains!12921 (toList!4099 lm!1477) lt!1662139)))

(assert (=> b!4474393 (= lt!1662139 (tuple2!50621 hash!344 lt!1662130))))

(declare-fun lt!1662140 () Unit!88349)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!558 (List!50467 (_ BitVec 64) List!50466) Unit!88349)

(assert (=> b!4474393 (= lt!1662140 (lemmaGetValueByKeyImpliesContainsTuple!558 (toList!4099 lm!1477) hash!344 lt!1662130))))

(declare-fun apply!11783 (ListLongMap!2731 (_ BitVec 64)) List!50466)

(assert (=> b!4474393 (= lt!1662130 (apply!11783 lm!1477 hash!344))))

(assert (=> b!4474393 (contains!12920 lm!1477 lt!1662134)))

(declare-fun lt!1662136 () Unit!88349)

(assert (=> b!4474393 (= lt!1662136 (lemmaInGenMapThenLongMapContainsHash!120 lm!1477 key!3287 hashF!1107))))

(declare-fun b!4474394 () Bool)

(assert (=> b!4474394 (= e!2786340 false)))

(declare-fun b!4474395 () Bool)

(declare-fun res!1856871 () Bool)

(assert (=> b!4474395 (=> res!1856871 e!2786335)))

(declare-fun noDuplicateKeys!1046 (List!50466) Bool)

(assert (=> b!4474395 (= res!1856871 (not (noDuplicateKeys!1046 newBucket!178)))))

(declare-fun b!4474396 () Bool)

(declare-fun Unit!88354 () Unit!88349)

(assert (=> b!4474396 (= e!2786339 Unit!88354)))

(declare-fun b!4474397 () Bool)

(declare-fun res!1856873 () Bool)

(assert (=> b!4474397 (=> res!1856873 e!2786335)))

(get-info :version)

(assert (=> b!4474397 (= res!1856873 (or ((_ is Nil!50343) (toList!4099 lm!1477)) (not (= (_1!28604 (h!56120 (toList!4099 lm!1477))) hash!344))))))

(assert (= (and start!440060 res!1856874) b!4474378))

(assert (= (and b!4474378 res!1856878) b!4474386))

(assert (= (and b!4474386 res!1856877) b!4474384))

(assert (= (and b!4474384 res!1856869) b!4474382))

(assert (= (and b!4474382 res!1856880) b!4474393))

(assert (= (and b!4474393 (not res!1856876)) b!4474395))

(assert (= (and b!4474395 (not res!1856871)) b!4474397))

(assert (= (and b!4474397 (not res!1856873)) b!4474383))

(assert (= (and b!4474383 c!761889) b!4474385))

(assert (= (and b!4474383 (not c!761889)) b!4474396))

(assert (= (and b!4474383 (not res!1856866)) b!4474377))

(assert (= (and b!4474377 (not res!1856872)) b!4474380))

(assert (= (and b!4474380 (not res!1856875)) b!4474392))

(assert (= (and b!4474392 (not res!1856870)) b!4474379))

(assert (= (and b!4474379 (not res!1856879)) b!4474381))

(assert (= (and b!4474381 c!761890) b!4474387))

(assert (= (and b!4474381 (not c!761890)) b!4474388))

(assert (= (and b!4474387 res!1856881) b!4474394))

(assert (= (and b!4474381 (not res!1856868)) b!4474391))

(assert (= (and b!4474391 (not res!1856867)) b!4474390))

(assert (= start!440060 b!4474376))

(assert (= (and start!440060 ((_ is Cons!50342) newBucket!178)) b!4474389))

(declare-fun m!5184209 () Bool)

(assert (=> b!4474390 m!5184209))

(declare-fun m!5184211 () Bool)

(assert (=> b!4474393 m!5184211))

(declare-fun m!5184213 () Bool)

(assert (=> b!4474393 m!5184213))

(declare-fun m!5184215 () Bool)

(assert (=> b!4474393 m!5184215))

(declare-fun m!5184217 () Bool)

(assert (=> b!4474393 m!5184217))

(declare-fun m!5184219 () Bool)

(assert (=> b!4474393 m!5184219))

(declare-fun m!5184221 () Bool)

(assert (=> b!4474393 m!5184221))

(declare-fun m!5184223 () Bool)

(assert (=> b!4474393 m!5184223))

(declare-fun m!5184225 () Bool)

(assert (=> b!4474385 m!5184225))

(declare-fun m!5184227 () Bool)

(assert (=> b!4474382 m!5184227))

(declare-fun m!5184229 () Bool)

(assert (=> b!4474392 m!5184229))

(declare-fun m!5184231 () Bool)

(assert (=> b!4474392 m!5184231))

(declare-fun m!5184233 () Bool)

(assert (=> b!4474387 m!5184233))

(declare-fun m!5184235 () Bool)

(assert (=> b!4474387 m!5184235))

(declare-fun m!5184237 () Bool)

(assert (=> b!4474377 m!5184237))

(declare-fun m!5184239 () Bool)

(assert (=> b!4474386 m!5184239))

(assert (=> b!4474386 m!5184239))

(declare-fun m!5184241 () Bool)

(assert (=> b!4474386 m!5184241))

(declare-fun m!5184243 () Bool)

(assert (=> b!4474395 m!5184243))

(declare-fun m!5184245 () Bool)

(assert (=> b!4474391 m!5184245))

(declare-fun m!5184247 () Bool)

(assert (=> b!4474391 m!5184247))

(declare-fun m!5184249 () Bool)

(assert (=> b!4474391 m!5184249))

(declare-fun m!5184251 () Bool)

(assert (=> b!4474391 m!5184251))

(declare-fun m!5184253 () Bool)

(assert (=> b!4474391 m!5184253))

(declare-fun m!5184255 () Bool)

(assert (=> b!4474391 m!5184255))

(assert (=> b!4474391 m!5184247))

(assert (=> b!4474391 m!5184245))

(assert (=> b!4474391 m!5184249))

(declare-fun m!5184257 () Bool)

(assert (=> b!4474380 m!5184257))

(declare-fun m!5184259 () Bool)

(assert (=> b!4474380 m!5184259))

(declare-fun m!5184261 () Bool)

(assert (=> b!4474380 m!5184261))

(declare-fun m!5184263 () Bool)

(assert (=> b!4474380 m!5184263))

(declare-fun m!5184265 () Bool)

(assert (=> b!4474380 m!5184265))

(declare-fun m!5184267 () Bool)

(assert (=> b!4474380 m!5184267))

(declare-fun m!5184269 () Bool)

(assert (=> b!4474380 m!5184269))

(declare-fun m!5184271 () Bool)

(assert (=> b!4474380 m!5184271))

(assert (=> b!4474380 m!5184267))

(declare-fun m!5184273 () Bool)

(assert (=> b!4474380 m!5184273))

(assert (=> b!4474380 m!5184261))

(assert (=> b!4474380 m!5184269))

(declare-fun m!5184275 () Bool)

(assert (=> b!4474380 m!5184275))

(assert (=> b!4474380 m!5184257))

(declare-fun m!5184277 () Bool)

(assert (=> b!4474379 m!5184277))

(declare-fun m!5184279 () Bool)

(assert (=> b!4474379 m!5184279))

(declare-fun m!5184281 () Bool)

(assert (=> b!4474378 m!5184281))

(declare-fun m!5184283 () Bool)

(assert (=> b!4474384 m!5184283))

(declare-fun m!5184285 () Bool)

(assert (=> b!4474383 m!5184285))

(declare-fun m!5184287 () Bool)

(assert (=> b!4474381 m!5184287))

(declare-fun m!5184289 () Bool)

(assert (=> start!440060 m!5184289))

(declare-fun m!5184291 () Bool)

(assert (=> start!440060 m!5184291))

(check-sat (not b!4474390) (not b!4474383) (not b!4474392) (not b!4474381) (not b!4474391) (not b!4474389) (not b!4474395) (not b!4474377) (not b!4474380) (not b!4474382) (not b!4474376) (not start!440060) (not b!4474387) (not b!4474384) tp_is_empty!27463 (not b!4474393) (not b!4474379) (not b!4474386) (not b!4474378) (not b!4474385) tp_is_empty!27461)
(check-sat)
