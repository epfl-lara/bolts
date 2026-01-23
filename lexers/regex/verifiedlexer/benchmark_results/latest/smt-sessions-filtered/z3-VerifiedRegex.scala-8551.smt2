; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!451080 () Bool)

(assert start!451080)

(declare-fun bs!879293 () Bool)

(declare-fun b!4542476 () Bool)

(assert (= bs!879293 (and b!4542476 start!451080)))

(declare-fun lambda!176666 () Int)

(declare-fun lambda!176665 () Int)

(assert (=> bs!879293 (not (= lambda!176666 lambda!176665))))

(assert (=> b!4542476 true))

(assert (=> b!4542476 true))

(assert (=> b!4542476 true))

(declare-fun b!4542459 () Bool)

(declare-fun e!2830696 () Bool)

(declare-fun e!2830701 () Bool)

(assert (=> b!4542459 (= e!2830696 e!2830701)))

(declare-fun res!1893520 () Bool)

(assert (=> b!4542459 (=> (not res!1893520) (not e!2830701))))

(declare-datatypes ((K!12160 0))(
  ( (K!12161 (val!17999 Int)) )
))
(declare-datatypes ((V!12406 0))(
  ( (V!12407 (val!18000 Int)) )
))
(declare-datatypes ((tuple2!51266 0))(
  ( (tuple2!51267 (_1!28927 K!12160) (_2!28927 V!12406)) )
))
(declare-datatypes ((List!50900 0))(
  ( (Nil!50776) (Cons!50776 (h!56663 tuple2!51266) (t!357862 List!50900)) )
))
(declare-datatypes ((ListMap!3685 0))(
  ( (ListMap!3686 (toList!4423 List!50900)) )
))
(declare-fun lt!1717203 () ListMap!3685)

(declare-fun key!3287 () K!12160)

(declare-fun contains!13583 (ListMap!3685 K!12160) Bool)

(assert (=> b!4542459 (= res!1893520 (contains!13583 lt!1717203 key!3287))))

(declare-datatypes ((tuple2!51268 0))(
  ( (tuple2!51269 (_1!28928 (_ BitVec 64)) (_2!28928 List!50900)) )
))
(declare-datatypes ((List!50901 0))(
  ( (Nil!50777) (Cons!50777 (h!56664 tuple2!51268) (t!357863 List!50901)) )
))
(declare-datatypes ((ListLongMap!3055 0))(
  ( (ListLongMap!3056 (toList!4424 List!50901)) )
))
(declare-fun lm!1477 () ListLongMap!3055)

(declare-fun extractMap!1264 (List!50901) ListMap!3685)

(assert (=> b!4542459 (= lt!1717203 (extractMap!1264 (toList!4424 lm!1477)))))

(declare-fun b!4542460 () Bool)

(declare-fun e!2830694 () Bool)

(declare-fun e!2830708 () Bool)

(assert (=> b!4542460 (= e!2830694 e!2830708)))

(declare-fun res!1893525 () Bool)

(assert (=> b!4542460 (=> res!1893525 e!2830708)))

(declare-fun lt!1717197 () ListLongMap!3055)

(declare-fun lt!1717217 () ListLongMap!3055)

(assert (=> b!4542460 (= res!1893525 (not (= lt!1717197 lt!1717217)))))

(declare-fun lt!1717188 () tuple2!51268)

(declare-fun +!1620 (ListLongMap!3055 tuple2!51268) ListLongMap!3055)

(assert (=> b!4542460 (= lt!1717217 (+!1620 lm!1477 lt!1717188))))

(declare-fun lt!1717189 () ListLongMap!3055)

(declare-fun lt!1717207 () tuple2!51268)

(assert (=> b!4542460 (= lt!1717197 (+!1620 lt!1717189 lt!1717207))))

(declare-fun b!4542461 () Bool)

(declare-fun e!2830697 () Bool)

(assert (=> b!4542461 (= e!2830708 e!2830697)))

(declare-fun res!1893518 () Bool)

(assert (=> b!4542461 (=> res!1893518 e!2830697)))

(declare-fun lt!1717201 () ListMap!3685)

(declare-fun lt!1717187 () ListMap!3685)

(declare-fun eq!665 (ListMap!3685 ListMap!3685) Bool)

(assert (=> b!4542461 (= res!1893518 (not (eq!665 lt!1717201 lt!1717187)))))

(declare-fun lt!1717196 () ListMap!3685)

(declare-fun addToMapMapFromBucket!735 (List!50900 ListMap!3685) ListMap!3685)

(assert (=> b!4542461 (= lt!1717187 (addToMapMapFromBucket!735 (_2!28928 lt!1717207) lt!1717196))))

(assert (=> b!4542461 (= lt!1717201 (extractMap!1264 (toList!4424 lt!1717197)))))

(declare-fun b!4542462 () Bool)

(declare-fun res!1893511 () Bool)

(declare-fun e!2830705 () Bool)

(assert (=> b!4542462 (=> (not res!1893511) (not e!2830705))))

(declare-datatypes ((Hashable!5603 0))(
  ( (HashableExt!5602 (__x!31306 Int)) )
))
(declare-fun hashF!1107 () Hashable!5603)

(declare-fun hash!344 () (_ BitVec 64))

(declare-fun newBucket!178 () List!50900)

(declare-fun allKeysSameHash!1062 (List!50900 (_ BitVec 64) Hashable!5603) Bool)

(assert (=> b!4542462 (= res!1893511 (allKeysSameHash!1062 newBucket!178 hash!344 hashF!1107))))

(declare-fun b!4542463 () Bool)

(declare-fun res!1893519 () Bool)

(assert (=> b!4542463 (=> (not res!1893519) (not e!2830696))))

(declare-fun allKeysSameHashInMap!1315 (ListLongMap!3055 Hashable!5603) Bool)

(assert (=> b!4542463 (= res!1893519 (allKeysSameHashInMap!1315 lm!1477 hashF!1107))))

(declare-fun b!4542464 () Bool)

(assert (=> b!4542464 (= e!2830701 e!2830705)))

(declare-fun res!1893509 () Bool)

(assert (=> b!4542464 (=> (not res!1893509) (not e!2830705))))

(declare-fun lt!1717198 () (_ BitVec 64))

(assert (=> b!4542464 (= res!1893509 (= lt!1717198 hash!344))))

(declare-fun hash!2939 (Hashable!5603 K!12160) (_ BitVec 64))

(assert (=> b!4542464 (= lt!1717198 (hash!2939 hashF!1107 key!3287))))

(declare-fun b!4542465 () Bool)

(declare-fun res!1893505 () Bool)

(declare-fun e!2830707 () Bool)

(assert (=> b!4542465 (=> res!1893505 e!2830707)))

(get-info :version)

(assert (=> b!4542465 (= res!1893505 (or ((_ is Nil!50777) (toList!4424 lm!1477)) (= (_1!28928 (h!56664 (toList!4424 lm!1477))) hash!344)))))

(declare-fun b!4542466 () Bool)

(declare-fun res!1893504 () Bool)

(assert (=> b!4542466 (=> res!1893504 e!2830694)))

(declare-fun lt!1717213 () ListMap!3685)

(assert (=> b!4542466 (= res!1893504 (not (eq!665 lt!1717203 lt!1717213)))))

(declare-fun b!4542468 () Bool)

(declare-fun res!1893514 () Bool)

(assert (=> b!4542468 (=> res!1893514 e!2830694)))

(assert (=> b!4542468 (= res!1893514 (bvsge (_1!28928 lt!1717207) hash!344))))

(declare-fun b!4542469 () Bool)

(declare-fun res!1893513 () Bool)

(declare-fun e!2830704 () Bool)

(assert (=> b!4542469 (=> res!1893513 e!2830704)))

(declare-fun lt!1717214 () ListMap!3685)

(assert (=> b!4542469 (= res!1893513 (not (eq!665 lt!1717201 lt!1717214)))))

(declare-fun b!4542470 () Bool)

(declare-fun e!2830695 () Bool)

(declare-fun e!2830700 () Bool)

(assert (=> b!4542470 (= e!2830695 e!2830700)))

(declare-fun res!1893501 () Bool)

(assert (=> b!4542470 (=> res!1893501 e!2830700)))

(declare-fun lt!1717216 () ListMap!3685)

(declare-fun lt!1717206 () ListMap!3685)

(assert (=> b!4542470 (= res!1893501 (not (eq!665 lt!1717216 lt!1717206)))))

(assert (=> b!4542470 (= lt!1717216 lt!1717206)))

(declare-fun lt!1717191 () ListMap!3685)

(declare-fun -!434 (ListMap!3685 K!12160) ListMap!3685)

(assert (=> b!4542470 (= lt!1717206 (-!434 (addToMapMapFromBucket!735 (_2!28928 lt!1717207) lt!1717191) key!3287))))

(declare-datatypes ((Unit!98910 0))(
  ( (Unit!98911) )
))
(declare-fun lt!1717193 () Unit!98910)

(declare-fun lemmaAddToMapFromBucketMinusKeyIsCommutative!32 (ListMap!3685 K!12160 List!50900) Unit!98910)

(assert (=> b!4542470 (= lt!1717193 (lemmaAddToMapFromBucketMinusKeyIsCommutative!32 lt!1717191 key!3287 (_2!28928 lt!1717207)))))

(declare-fun b!4542471 () Bool)

(declare-fun res!1893524 () Bool)

(assert (=> b!4542471 (=> res!1893524 e!2830707)))

(declare-fun noDuplicateKeys!1208 (List!50900) Bool)

(assert (=> b!4542471 (= res!1893524 (not (noDuplicateKeys!1208 newBucket!178)))))

(declare-fun b!4542472 () Bool)

(declare-fun e!2830706 () Bool)

(declare-fun e!2830702 () Bool)

(assert (=> b!4542472 (= e!2830706 e!2830702)))

(declare-fun res!1893512 () Bool)

(assert (=> b!4542472 (=> res!1893512 e!2830702)))

(assert (=> b!4542472 (= res!1893512 (not (contains!13583 (extractMap!1264 (t!357863 (toList!4424 lm!1477))) key!3287)))))

(assert (=> b!4542472 (contains!13583 lt!1717191 key!3287)))

(declare-fun lt!1717220 () ListLongMap!3055)

(assert (=> b!4542472 (= lt!1717191 (extractMap!1264 (toList!4424 lt!1717220)))))

(declare-fun lt!1717202 () Unit!98910)

(declare-fun lemmaListContainsThenExtractedMapContains!178 (ListLongMap!3055 K!12160 Hashable!5603) Unit!98910)

(assert (=> b!4542472 (= lt!1717202 (lemmaListContainsThenExtractedMapContains!178 lt!1717220 key!3287 hashF!1107))))

(declare-fun b!4542473 () Bool)

(assert (=> b!4542473 (= e!2830705 (not e!2830707))))

(declare-fun res!1893508 () Bool)

(assert (=> b!4542473 (=> res!1893508 e!2830707)))

(declare-fun lt!1717219 () List!50900)

(declare-fun removePairForKey!835 (List!50900 K!12160) List!50900)

(assert (=> b!4542473 (= res!1893508 (not (= newBucket!178 (removePairForKey!835 lt!1717219 key!3287))))))

(declare-fun lt!1717210 () Unit!98910)

(declare-fun lt!1717192 () tuple2!51268)

(declare-fun forallContained!2626 (List!50901 Int tuple2!51268) Unit!98910)

(assert (=> b!4542473 (= lt!1717210 (forallContained!2626 (toList!4424 lm!1477) lambda!176665 lt!1717192))))

(declare-fun contains!13584 (List!50901 tuple2!51268) Bool)

(assert (=> b!4542473 (contains!13584 (toList!4424 lm!1477) lt!1717192)))

(assert (=> b!4542473 (= lt!1717192 (tuple2!51269 hash!344 lt!1717219))))

(declare-fun lt!1717195 () Unit!98910)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!720 (List!50901 (_ BitVec 64) List!50900) Unit!98910)

(assert (=> b!4542473 (= lt!1717195 (lemmaGetValueByKeyImpliesContainsTuple!720 (toList!4424 lm!1477) hash!344 lt!1717219))))

(declare-fun apply!11945 (ListLongMap!3055 (_ BitVec 64)) List!50900)

(assert (=> b!4542473 (= lt!1717219 (apply!11945 lm!1477 hash!344))))

(declare-fun contains!13585 (ListLongMap!3055 (_ BitVec 64)) Bool)

(assert (=> b!4542473 (contains!13585 lm!1477 lt!1717198)))

(declare-fun lt!1717186 () Unit!98910)

(declare-fun lemmaInGenMapThenLongMapContainsHash!282 (ListLongMap!3055 K!12160 Hashable!5603) Unit!98910)

(assert (=> b!4542473 (= lt!1717186 (lemmaInGenMapThenLongMapContainsHash!282 lm!1477 key!3287 hashF!1107))))

(declare-fun b!4542474 () Bool)

(declare-fun res!1893506 () Bool)

(declare-fun e!2830711 () Bool)

(assert (=> b!4542474 (=> res!1893506 e!2830711)))

(assert (=> b!4542474 (= res!1893506 (not (contains!13584 (t!357863 (toList!4424 lm!1477)) lt!1717192)))))

(declare-fun b!4542475 () Bool)

(declare-fun e!2830693 () Bool)

(assert (=> b!4542475 (= e!2830693 e!2830706)))

(declare-fun res!1893521 () Bool)

(assert (=> b!4542475 (=> res!1893521 e!2830706)))

(declare-fun containsKeyBiggerList!188 (List!50901 K!12160) Bool)

(assert (=> b!4542475 (= res!1893521 (not (containsKeyBiggerList!188 (t!357863 (toList!4424 lm!1477)) key!3287)))))

(assert (=> b!4542475 (containsKeyBiggerList!188 (toList!4424 lt!1717220) key!3287)))

(declare-fun lt!1717215 () Unit!98910)

(declare-fun lemmaInLongMapThenContainsKeyBiggerList!124 (ListLongMap!3055 K!12160 Hashable!5603) Unit!98910)

(assert (=> b!4542475 (= lt!1717215 (lemmaInLongMapThenContainsKeyBiggerList!124 lt!1717220 key!3287 hashF!1107))))

(declare-fun e!2830692 () Unit!98910)

(declare-fun Unit!98912 () Unit!98910)

(assert (=> b!4542476 (= e!2830692 Unit!98912)))

(assert (=> b!4542476 (not (= hash!344 (_1!28928 lt!1717207)))))

(declare-datatypes ((Option!11223 0))(
  ( (None!11222) (Some!11222 (v!44932 tuple2!51266)) )
))
(declare-fun lt!1717190 () Option!11223)

(declare-fun getPair!224 (List!50900 K!12160) Option!11223)

(assert (=> b!4542476 (= lt!1717190 (getPair!224 (_2!28928 lt!1717207) key!3287))))

(declare-fun lt!1717199 () Unit!98910)

(assert (=> b!4542476 (= lt!1717199 (forallContained!2626 (toList!4424 lm!1477) lambda!176666 (h!56664 (toList!4424 lm!1477))))))

(declare-fun lambda!176667 () Int)

(declare-fun lt!1717185 () Unit!98910)

(declare-fun forallContained!2627 (List!50900 Int tuple2!51266) Unit!98910)

(declare-fun get!16706 (Option!11223) tuple2!51266)

(assert (=> b!4542476 (= lt!1717185 (forallContained!2627 (_2!28928 (h!56664 (toList!4424 lm!1477))) lambda!176667 (tuple2!51267 key!3287 (_2!28927 (get!16706 lt!1717190)))))))

(assert (=> b!4542476 false))

(declare-fun b!4542477 () Bool)

(declare-fun e!2830710 () Bool)

(declare-fun tp!1338738 () Bool)

(assert (=> b!4542477 (= e!2830710 tp!1338738)))

(declare-fun b!4542478 () Bool)

(declare-fun e!2830709 () Unit!98910)

(declare-fun Unit!98913 () Unit!98910)

(assert (=> b!4542478 (= e!2830709 Unit!98913)))

(declare-fun b!4542479 () Bool)

(declare-fun e!2830703 () Bool)

(assert (=> b!4542479 (= e!2830703 e!2830695)))

(declare-fun res!1893517 () Bool)

(assert (=> b!4542479 (=> res!1893517 e!2830695)))

(declare-fun lt!1717208 () Bool)

(assert (=> b!4542479 (= res!1893517 lt!1717208)))

(declare-fun lt!1717209 () Unit!98910)

(assert (=> b!4542479 (= lt!1717209 e!2830692)))

(declare-fun c!775845 () Bool)

(assert (=> b!4542479 (= c!775845 lt!1717208)))

(declare-fun containsKey!1896 (List!50900 K!12160) Bool)

(assert (=> b!4542479 (= lt!1717208 (containsKey!1896 (_2!28928 lt!1717207) key!3287))))

(declare-fun b!4542480 () Bool)

(declare-fun res!1893507 () Bool)

(assert (=> b!4542480 (=> res!1893507 e!2830704)))

(assert (=> b!4542480 (= res!1893507 (not (eq!665 (extractMap!1264 (toList!4424 lt!1717217)) lt!1717214)))))

(declare-fun b!4542481 () Bool)

(assert (=> b!4542481 (= e!2830711 e!2830693)))

(declare-fun res!1893503 () Bool)

(assert (=> b!4542481 (=> res!1893503 e!2830693)))

(declare-fun lt!1717218 () Bool)

(assert (=> b!4542481 (= res!1893503 lt!1717218)))

(declare-fun lt!1717200 () Unit!98910)

(assert (=> b!4542481 (= lt!1717200 e!2830709)))

(declare-fun c!775844 () Bool)

(assert (=> b!4542481 (= c!775844 lt!1717218)))

(assert (=> b!4542481 (= lt!1717218 (not (containsKey!1896 lt!1717219 key!3287)))))

(declare-fun b!4542482 () Bool)

(declare-fun e!2830698 () Bool)

(assert (=> b!4542482 (= e!2830697 e!2830698)))

(declare-fun res!1893522 () Bool)

(assert (=> b!4542482 (=> res!1893522 e!2830698)))

(assert (=> b!4542482 (= res!1893522 (not (eq!665 lt!1717201 lt!1717216)))))

(assert (=> b!4542482 (eq!665 lt!1717187 lt!1717216)))

(declare-fun lt!1717211 () ListMap!3685)

(assert (=> b!4542482 (= lt!1717216 (addToMapMapFromBucket!735 (_2!28928 lt!1717207) lt!1717211))))

(declare-fun lt!1717212 () Unit!98910)

(declare-fun lemmaAddToMapFromBucketPreservesEquivalence!84 (ListMap!3685 ListMap!3685 List!50900) Unit!98910)

(assert (=> b!4542482 (= lt!1717212 (lemmaAddToMapFromBucketPreservesEquivalence!84 lt!1717196 lt!1717211 (_2!28928 lt!1717207)))))

(declare-fun b!4542483 () Bool)

(assert (=> b!4542483 (= e!2830700 e!2830704)))

(declare-fun res!1893510 () Bool)

(assert (=> b!4542483 (=> res!1893510 e!2830704)))

(assert (=> b!4542483 (= res!1893510 (not (eq!665 lt!1717216 lt!1717214)))))

(assert (=> b!4542483 (= lt!1717214 (-!434 lt!1717203 key!3287))))

(declare-fun b!4542467 () Bool)

(declare-fun tp_is_empty!28109 () Bool)

(declare-fun tp!1338739 () Bool)

(declare-fun e!2830699 () Bool)

(declare-fun tp_is_empty!28111 () Bool)

(assert (=> b!4542467 (= e!2830699 (and tp_is_empty!28109 tp_is_empty!28111 tp!1338739))))

(declare-fun res!1893528 () Bool)

(assert (=> start!451080 (=> (not res!1893528) (not e!2830696))))

(declare-fun forall!10361 (List!50901 Int) Bool)

(assert (=> start!451080 (= res!1893528 (forall!10361 (toList!4424 lm!1477) lambda!176665))))

(assert (=> start!451080 e!2830696))

(assert (=> start!451080 true))

(declare-fun inv!66344 (ListLongMap!3055) Bool)

(assert (=> start!451080 (and (inv!66344 lm!1477) e!2830710)))

(assert (=> start!451080 tp_is_empty!28109))

(assert (=> start!451080 e!2830699))

(declare-fun b!4542484 () Bool)

(assert (=> b!4542484 (= e!2830698 e!2830703)))

(declare-fun res!1893516 () Bool)

(assert (=> b!4542484 (=> res!1893516 e!2830703)))

(assert (=> b!4542484 (= res!1893516 (not (noDuplicateKeys!1208 (_2!28928 lt!1717207))))))

(declare-fun lt!1717194 () Unit!98910)

(assert (=> b!4542484 (= lt!1717194 (forallContained!2626 (toList!4424 lm!1477) lambda!176665 (h!56664 (toList!4424 lm!1477))))))

(declare-fun b!4542485 () Bool)

(assert (=> b!4542485 (= e!2830702 e!2830694)))

(declare-fun res!1893523 () Bool)

(assert (=> b!4542485 (=> res!1893523 e!2830694)))

(assert (=> b!4542485 (= res!1893523 (not (eq!665 lt!1717213 lt!1717203)))))

(assert (=> b!4542485 (= lt!1717213 (extractMap!1264 (toList!4424 (+!1620 lt!1717220 lt!1717207))))))

(declare-fun head!9494 (ListLongMap!3055) tuple2!51268)

(assert (=> b!4542485 (= lt!1717207 (head!9494 lm!1477))))

(assert (=> b!4542485 (eq!665 lt!1717196 lt!1717211)))

(assert (=> b!4542485 (= lt!1717211 (-!434 lt!1717191 key!3287))))

(assert (=> b!4542485 (= lt!1717196 (extractMap!1264 (toList!4424 lt!1717189)))))

(assert (=> b!4542485 (= lt!1717189 (+!1620 lt!1717220 lt!1717188))))

(assert (=> b!4542485 (= lt!1717188 (tuple2!51269 hash!344 newBucket!178))))

(declare-fun lt!1717204 () Unit!98910)

(declare-fun lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMap!193 (ListLongMap!3055 (_ BitVec 64) List!50900 K!12160 Hashable!5603) Unit!98910)

(assert (=> b!4542485 (= lt!1717204 (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMap!193 lt!1717220 hash!344 newBucket!178 key!3287 hashF!1107))))

(declare-fun b!4542486 () Bool)

(assert (=> b!4542486 (= e!2830707 e!2830711)))

(declare-fun res!1893526 () Bool)

(assert (=> b!4542486 (=> res!1893526 e!2830711)))

(assert (=> b!4542486 (= res!1893526 (not (contains!13585 lt!1717220 hash!344)))))

(declare-fun tail!7816 (ListLongMap!3055) ListLongMap!3055)

(assert (=> b!4542486 (= lt!1717220 (tail!7816 lm!1477))))

(declare-fun b!4542487 () Bool)

(declare-fun Unit!98914 () Unit!98910)

(assert (=> b!4542487 (= e!2830709 Unit!98914)))

(declare-fun lt!1717205 () Unit!98910)

(declare-fun lemmaNotInItsHashBucketThenNotInMap!196 (ListLongMap!3055 K!12160 Hashable!5603) Unit!98910)

(assert (=> b!4542487 (= lt!1717205 (lemmaNotInItsHashBucketThenNotInMap!196 lm!1477 key!3287 hashF!1107))))

(assert (=> b!4542487 false))

(declare-fun b!4542488 () Bool)

(declare-fun res!1893502 () Bool)

(assert (=> b!4542488 (=> res!1893502 e!2830708)))

(assert (=> b!4542488 (= res!1893502 (not (= (head!9494 lt!1717197) lt!1717207)))))

(declare-fun b!4542489 () Bool)

(declare-fun res!1893527 () Bool)

(assert (=> b!4542489 (=> res!1893527 e!2830704)))

(assert (=> b!4542489 (= res!1893527 (not (eq!665 lt!1717201 (-!434 lt!1717213 key!3287))))))

(declare-fun b!4542490 () Bool)

(declare-fun Unit!98915 () Unit!98910)

(assert (=> b!4542490 (= e!2830692 Unit!98915)))

(declare-fun b!4542491 () Bool)

(declare-fun res!1893515 () Bool)

(assert (=> b!4542491 (=> res!1893515 e!2830711)))

(assert (=> b!4542491 (= res!1893515 (not (= (apply!11945 lt!1717220 hash!344) lt!1717219)))))

(declare-fun b!4542492 () Bool)

(assert (=> b!4542492 (= e!2830704 (forall!10361 (toList!4424 lt!1717217) lambda!176665))))

(assert (= (and start!451080 res!1893528) b!4542463))

(assert (= (and b!4542463 res!1893519) b!4542459))

(assert (= (and b!4542459 res!1893520) b!4542464))

(assert (= (and b!4542464 res!1893509) b!4542462))

(assert (= (and b!4542462 res!1893511) b!4542473))

(assert (= (and b!4542473 (not res!1893508)) b!4542471))

(assert (= (and b!4542471 (not res!1893524)) b!4542465))

(assert (= (and b!4542465 (not res!1893505)) b!4542486))

(assert (= (and b!4542486 (not res!1893526)) b!4542491))

(assert (= (and b!4542491 (not res!1893515)) b!4542474))

(assert (= (and b!4542474 (not res!1893506)) b!4542481))

(assert (= (and b!4542481 c!775844) b!4542487))

(assert (= (and b!4542481 (not c!775844)) b!4542478))

(assert (= (and b!4542481 (not res!1893503)) b!4542475))

(assert (= (and b!4542475 (not res!1893521)) b!4542472))

(assert (= (and b!4542472 (not res!1893512)) b!4542485))

(assert (= (and b!4542485 (not res!1893523)) b!4542466))

(assert (= (and b!4542466 (not res!1893504)) b!4542468))

(assert (= (and b!4542468 (not res!1893514)) b!4542460))

(assert (= (and b!4542460 (not res!1893525)) b!4542488))

(assert (= (and b!4542488 (not res!1893502)) b!4542461))

(assert (= (and b!4542461 (not res!1893518)) b!4542482))

(assert (= (and b!4542482 (not res!1893522)) b!4542484))

(assert (= (and b!4542484 (not res!1893516)) b!4542479))

(assert (= (and b!4542479 c!775845) b!4542476))

(assert (= (and b!4542479 (not c!775845)) b!4542490))

(assert (= (and b!4542479 (not res!1893517)) b!4542470))

(assert (= (and b!4542470 (not res!1893501)) b!4542483))

(assert (= (and b!4542483 (not res!1893510)) b!4542469))

(assert (= (and b!4542469 (not res!1893513)) b!4542489))

(assert (= (and b!4542489 (not res!1893527)) b!4542480))

(assert (= (and b!4542480 (not res!1893507)) b!4542492))

(assert (= start!451080 b!4542477))

(assert (= (and start!451080 ((_ is Cons!50776) newBucket!178)) b!4542467))

(declare-fun m!5310831 () Bool)

(assert (=> b!4542469 m!5310831))

(declare-fun m!5310833 () Bool)

(assert (=> b!4542482 m!5310833))

(declare-fun m!5310835 () Bool)

(assert (=> b!4542482 m!5310835))

(declare-fun m!5310837 () Bool)

(assert (=> b!4542482 m!5310837))

(declare-fun m!5310839 () Bool)

(assert (=> b!4542482 m!5310839))

(declare-fun m!5310841 () Bool)

(assert (=> b!4542491 m!5310841))

(declare-fun m!5310843 () Bool)

(assert (=> b!4542459 m!5310843))

(declare-fun m!5310845 () Bool)

(assert (=> b!4542459 m!5310845))

(declare-fun m!5310847 () Bool)

(assert (=> b!4542461 m!5310847))

(declare-fun m!5310849 () Bool)

(assert (=> b!4542461 m!5310849))

(declare-fun m!5310851 () Bool)

(assert (=> b!4542461 m!5310851))

(declare-fun m!5310853 () Bool)

(assert (=> b!4542476 m!5310853))

(declare-fun m!5310855 () Bool)

(assert (=> b!4542476 m!5310855))

(declare-fun m!5310857 () Bool)

(assert (=> b!4542476 m!5310857))

(declare-fun m!5310859 () Bool)

(assert (=> b!4542476 m!5310859))

(declare-fun m!5310861 () Bool)

(assert (=> b!4542488 m!5310861))

(declare-fun m!5310863 () Bool)

(assert (=> b!4542470 m!5310863))

(declare-fun m!5310865 () Bool)

(assert (=> b!4542470 m!5310865))

(assert (=> b!4542470 m!5310865))

(declare-fun m!5310867 () Bool)

(assert (=> b!4542470 m!5310867))

(declare-fun m!5310869 () Bool)

(assert (=> b!4542470 m!5310869))

(declare-fun m!5310871 () Bool)

(assert (=> b!4542472 m!5310871))

(declare-fun m!5310873 () Bool)

(assert (=> b!4542472 m!5310873))

(declare-fun m!5310875 () Bool)

(assert (=> b!4542472 m!5310875))

(assert (=> b!4542472 m!5310873))

(declare-fun m!5310877 () Bool)

(assert (=> b!4542472 m!5310877))

(declare-fun m!5310879 () Bool)

(assert (=> b!4542472 m!5310879))

(declare-fun m!5310881 () Bool)

(assert (=> b!4542475 m!5310881))

(declare-fun m!5310883 () Bool)

(assert (=> b!4542475 m!5310883))

(declare-fun m!5310885 () Bool)

(assert (=> b!4542475 m!5310885))

(declare-fun m!5310887 () Bool)

(assert (=> b!4542487 m!5310887))

(declare-fun m!5310889 () Bool)

(assert (=> b!4542479 m!5310889))

(declare-fun m!5310891 () Bool)

(assert (=> b!4542462 m!5310891))

(declare-fun m!5310893 () Bool)

(assert (=> b!4542471 m!5310893))

(declare-fun m!5310895 () Bool)

(assert (=> b!4542484 m!5310895))

(declare-fun m!5310897 () Bool)

(assert (=> b!4542484 m!5310897))

(declare-fun m!5310899 () Bool)

(assert (=> b!4542486 m!5310899))

(declare-fun m!5310901 () Bool)

(assert (=> b!4542486 m!5310901))

(declare-fun m!5310903 () Bool)

(assert (=> b!4542483 m!5310903))

(declare-fun m!5310905 () Bool)

(assert (=> b!4542483 m!5310905))

(declare-fun m!5310907 () Bool)

(assert (=> b!4542489 m!5310907))

(assert (=> b!4542489 m!5310907))

(declare-fun m!5310909 () Bool)

(assert (=> b!4542489 m!5310909))

(declare-fun m!5310911 () Bool)

(assert (=> start!451080 m!5310911))

(declare-fun m!5310913 () Bool)

(assert (=> start!451080 m!5310913))

(declare-fun m!5310915 () Bool)

(assert (=> b!4542473 m!5310915))

(declare-fun m!5310917 () Bool)

(assert (=> b!4542473 m!5310917))

(declare-fun m!5310919 () Bool)

(assert (=> b!4542473 m!5310919))

(declare-fun m!5310921 () Bool)

(assert (=> b!4542473 m!5310921))

(declare-fun m!5310923 () Bool)

(assert (=> b!4542473 m!5310923))

(declare-fun m!5310925 () Bool)

(assert (=> b!4542473 m!5310925))

(declare-fun m!5310927 () Bool)

(assert (=> b!4542473 m!5310927))

(declare-fun m!5310929 () Bool)

(assert (=> b!4542460 m!5310929))

(declare-fun m!5310931 () Bool)

(assert (=> b!4542460 m!5310931))

(declare-fun m!5310933 () Bool)

(assert (=> b!4542463 m!5310933))

(declare-fun m!5310935 () Bool)

(assert (=> b!4542485 m!5310935))

(declare-fun m!5310937 () Bool)

(assert (=> b!4542485 m!5310937))

(declare-fun m!5310939 () Bool)

(assert (=> b!4542485 m!5310939))

(declare-fun m!5310941 () Bool)

(assert (=> b!4542485 m!5310941))

(declare-fun m!5310943 () Bool)

(assert (=> b!4542485 m!5310943))

(declare-fun m!5310945 () Bool)

(assert (=> b!4542485 m!5310945))

(declare-fun m!5310947 () Bool)

(assert (=> b!4542485 m!5310947))

(declare-fun m!5310949 () Bool)

(assert (=> b!4542485 m!5310949))

(declare-fun m!5310951 () Bool)

(assert (=> b!4542485 m!5310951))

(declare-fun m!5310953 () Bool)

(assert (=> b!4542480 m!5310953))

(assert (=> b!4542480 m!5310953))

(declare-fun m!5310955 () Bool)

(assert (=> b!4542480 m!5310955))

(declare-fun m!5310957 () Bool)

(assert (=> b!4542466 m!5310957))

(declare-fun m!5310959 () Bool)

(assert (=> b!4542464 m!5310959))

(declare-fun m!5310961 () Bool)

(assert (=> b!4542492 m!5310961))

(declare-fun m!5310963 () Bool)

(assert (=> b!4542481 m!5310963))

(declare-fun m!5310965 () Bool)

(assert (=> b!4542474 m!5310965))

(check-sat (not start!451080) (not b!4542463) (not b!4542469) (not b!4542477) (not b!4542472) (not b!4542481) (not b!4542464) (not b!4542486) (not b!4542480) (not b!4542467) (not b!4542473) (not b!4542489) (not b!4542488) (not b!4542462) tp_is_empty!28109 (not b!4542466) (not b!4542491) (not b!4542476) (not b!4542482) (not b!4542470) (not b!4542479) (not b!4542475) (not b!4542485) tp_is_empty!28111 (not b!4542492) (not b!4542487) (not b!4542474) (not b!4542461) (not b!4542471) (not b!4542459) (not b!4542483) (not b!4542484) (not b!4542460))
(check-sat)
(get-model)

(declare-fun d!1404386 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!8458 (List!50900) (InoxSet tuple2!51266))

(assert (=> d!1404386 (= (eq!665 lt!1717201 lt!1717216) (= (content!8458 (toList!4423 lt!1717201)) (content!8458 (toList!4423 lt!1717216))))))

(declare-fun bs!879294 () Bool)

(assert (= bs!879294 d!1404386))

(declare-fun m!5310967 () Bool)

(assert (=> bs!879294 m!5310967))

(declare-fun m!5310969 () Bool)

(assert (=> bs!879294 m!5310969))

(assert (=> b!4542482 d!1404386))

(declare-fun d!1404388 () Bool)

(assert (=> d!1404388 (= (eq!665 lt!1717187 lt!1717216) (= (content!8458 (toList!4423 lt!1717187)) (content!8458 (toList!4423 lt!1717216))))))

(declare-fun bs!879295 () Bool)

(assert (= bs!879295 d!1404388))

(declare-fun m!5310971 () Bool)

(assert (=> bs!879295 m!5310971))

(assert (=> bs!879295 m!5310969))

(assert (=> b!4542482 d!1404388))

(declare-fun bs!879311 () Bool)

(declare-fun b!4542552 () Bool)

(assert (= bs!879311 (and b!4542552 b!4542476)))

(declare-fun lambda!176734 () Int)

(assert (=> bs!879311 (not (= lambda!176734 lambda!176667))))

(assert (=> b!4542552 true))

(declare-fun bs!879312 () Bool)

(declare-fun b!4542553 () Bool)

(assert (= bs!879312 (and b!4542553 b!4542476)))

(declare-fun lambda!176735 () Int)

(assert (=> bs!879312 (not (= lambda!176735 lambda!176667))))

(declare-fun bs!879313 () Bool)

(assert (= bs!879313 (and b!4542553 b!4542552)))

(assert (=> bs!879313 (= lambda!176735 lambda!176734)))

(assert (=> b!4542553 true))

(declare-fun lambda!176736 () Int)

(assert (=> bs!879312 (not (= lambda!176736 lambda!176667))))

(declare-fun lt!1717345 () ListMap!3685)

(assert (=> bs!879313 (= (= lt!1717345 lt!1717211) (= lambda!176736 lambda!176734))))

(assert (=> b!4542553 (= (= lt!1717345 lt!1717211) (= lambda!176736 lambda!176735))))

(assert (=> b!4542553 true))

(declare-fun bs!879314 () Bool)

(declare-fun d!1404390 () Bool)

(assert (= bs!879314 (and d!1404390 b!4542476)))

(declare-fun lambda!176737 () Int)

(assert (=> bs!879314 (not (= lambda!176737 lambda!176667))))

(declare-fun bs!879315 () Bool)

(assert (= bs!879315 (and d!1404390 b!4542552)))

(declare-fun lt!1717333 () ListMap!3685)

(assert (=> bs!879315 (= (= lt!1717333 lt!1717211) (= lambda!176737 lambda!176734))))

(declare-fun bs!879316 () Bool)

(assert (= bs!879316 (and d!1404390 b!4542553)))

(assert (=> bs!879316 (= (= lt!1717333 lt!1717211) (= lambda!176737 lambda!176735))))

(assert (=> bs!879316 (= (= lt!1717333 lt!1717345) (= lambda!176737 lambda!176736))))

(assert (=> d!1404390 true))

(declare-fun bm!316768 () Bool)

(declare-fun call!316775 () Unit!98910)

(declare-fun lemmaContainsAllItsOwnKeys!372 (ListMap!3685) Unit!98910)

(assert (=> bm!316768 (= call!316775 (lemmaContainsAllItsOwnKeys!372 lt!1717211))))

(declare-fun b!4542549 () Bool)

(declare-fun e!2830747 () Bool)

(declare-fun invariantList!1051 (List!50900) Bool)

(assert (=> b!4542549 (= e!2830747 (invariantList!1051 (toList!4423 lt!1717333)))))

(declare-fun call!316773 () Bool)

(declare-fun bm!316769 () Bool)

(declare-fun lt!1717342 () ListMap!3685)

(declare-fun c!775854 () Bool)

(declare-fun forall!10363 (List!50900 Int) Bool)

(assert (=> bm!316769 (= call!316773 (forall!10363 (ite c!775854 (toList!4423 lt!1717211) (toList!4423 lt!1717342)) (ite c!775854 lambda!176734 lambda!176736)))))

(declare-fun b!4542550 () Bool)

(declare-fun res!1893560 () Bool)

(assert (=> b!4542550 (=> (not res!1893560) (not e!2830747))))

(assert (=> b!4542550 (= res!1893560 (forall!10363 (toList!4423 lt!1717211) lambda!176737))))

(declare-fun b!4542551 () Bool)

(declare-fun e!2830745 () Bool)

(assert (=> b!4542551 (= e!2830745 (forall!10363 (toList!4423 lt!1717211) lambda!176736))))

(declare-fun e!2830746 () ListMap!3685)

(assert (=> b!4542552 (= e!2830746 lt!1717211)))

(declare-fun lt!1717352 () Unit!98910)

(assert (=> b!4542552 (= lt!1717352 call!316775)))

(declare-fun call!316774 () Bool)

(assert (=> b!4542552 call!316774))

(declare-fun lt!1717351 () Unit!98910)

(assert (=> b!4542552 (= lt!1717351 lt!1717352)))

(assert (=> b!4542552 call!316773))

(declare-fun lt!1717348 () Unit!98910)

(declare-fun Unit!98927 () Unit!98910)

(assert (=> b!4542552 (= lt!1717348 Unit!98927)))

(assert (=> d!1404390 e!2830747))

(declare-fun res!1893561 () Bool)

(assert (=> d!1404390 (=> (not res!1893561) (not e!2830747))))

(assert (=> d!1404390 (= res!1893561 (forall!10363 (_2!28928 lt!1717207) lambda!176737))))

(assert (=> d!1404390 (= lt!1717333 e!2830746)))

(assert (=> d!1404390 (= c!775854 ((_ is Nil!50776) (_2!28928 lt!1717207)))))

(assert (=> d!1404390 (noDuplicateKeys!1208 (_2!28928 lt!1717207))))

(assert (=> d!1404390 (= (addToMapMapFromBucket!735 (_2!28928 lt!1717207) lt!1717211) lt!1717333)))

(assert (=> b!4542553 (= e!2830746 lt!1717345)))

(declare-fun +!1622 (ListMap!3685 tuple2!51266) ListMap!3685)

(assert (=> b!4542553 (= lt!1717342 (+!1622 lt!1717211 (h!56663 (_2!28928 lt!1717207))))))

(assert (=> b!4542553 (= lt!1717345 (addToMapMapFromBucket!735 (t!357862 (_2!28928 lt!1717207)) (+!1622 lt!1717211 (h!56663 (_2!28928 lt!1717207)))))))

(declare-fun lt!1717350 () Unit!98910)

(assert (=> b!4542553 (= lt!1717350 call!316775)))

(assert (=> b!4542553 (forall!10363 (toList!4423 lt!1717211) lambda!176735)))

(declare-fun lt!1717335 () Unit!98910)

(assert (=> b!4542553 (= lt!1717335 lt!1717350)))

(assert (=> b!4542553 (forall!10363 (toList!4423 lt!1717342) lambda!176736)))

(declare-fun lt!1717346 () Unit!98910)

(declare-fun Unit!98928 () Unit!98910)

(assert (=> b!4542553 (= lt!1717346 Unit!98928)))

(assert (=> b!4542553 call!316774))

(declare-fun lt!1717340 () Unit!98910)

(declare-fun Unit!98929 () Unit!98910)

(assert (=> b!4542553 (= lt!1717340 Unit!98929)))

(declare-fun lt!1717344 () Unit!98910)

(declare-fun Unit!98930 () Unit!98910)

(assert (=> b!4542553 (= lt!1717344 Unit!98930)))

(declare-fun lt!1717334 () Unit!98910)

(assert (=> b!4542553 (= lt!1717334 (forallContained!2627 (toList!4423 lt!1717342) lambda!176736 (h!56663 (_2!28928 lt!1717207))))))

(assert (=> b!4542553 (contains!13583 lt!1717342 (_1!28927 (h!56663 (_2!28928 lt!1717207))))))

(declare-fun lt!1717343 () Unit!98910)

(declare-fun Unit!98931 () Unit!98910)

(assert (=> b!4542553 (= lt!1717343 Unit!98931)))

(assert (=> b!4542553 (contains!13583 lt!1717345 (_1!28927 (h!56663 (_2!28928 lt!1717207))))))

(declare-fun lt!1717347 () Unit!98910)

(declare-fun Unit!98932 () Unit!98910)

(assert (=> b!4542553 (= lt!1717347 Unit!98932)))

(assert (=> b!4542553 (forall!10363 (_2!28928 lt!1717207) lambda!176736)))

(declare-fun lt!1717339 () Unit!98910)

(declare-fun Unit!98933 () Unit!98910)

(assert (=> b!4542553 (= lt!1717339 Unit!98933)))

(assert (=> b!4542553 call!316773))

(declare-fun lt!1717336 () Unit!98910)

(declare-fun Unit!98934 () Unit!98910)

(assert (=> b!4542553 (= lt!1717336 Unit!98934)))

(declare-fun lt!1717341 () Unit!98910)

(declare-fun Unit!98935 () Unit!98910)

(assert (=> b!4542553 (= lt!1717341 Unit!98935)))

(declare-fun lt!1717338 () Unit!98910)

(declare-fun addForallContainsKeyThenBeforeAdding!372 (ListMap!3685 ListMap!3685 K!12160 V!12406) Unit!98910)

(assert (=> b!4542553 (= lt!1717338 (addForallContainsKeyThenBeforeAdding!372 lt!1717211 lt!1717345 (_1!28927 (h!56663 (_2!28928 lt!1717207))) (_2!28927 (h!56663 (_2!28928 lt!1717207)))))))

(assert (=> b!4542553 (forall!10363 (toList!4423 lt!1717211) lambda!176736)))

(declare-fun lt!1717332 () Unit!98910)

(assert (=> b!4542553 (= lt!1717332 lt!1717338)))

(assert (=> b!4542553 (forall!10363 (toList!4423 lt!1717211) lambda!176736)))

(declare-fun lt!1717337 () Unit!98910)

(declare-fun Unit!98936 () Unit!98910)

(assert (=> b!4542553 (= lt!1717337 Unit!98936)))

(declare-fun res!1893559 () Bool)

(assert (=> b!4542553 (= res!1893559 (forall!10363 (_2!28928 lt!1717207) lambda!176736))))

(assert (=> b!4542553 (=> (not res!1893559) (not e!2830745))))

(assert (=> b!4542553 e!2830745))

(declare-fun lt!1717349 () Unit!98910)

(declare-fun Unit!98937 () Unit!98910)

(assert (=> b!4542553 (= lt!1717349 Unit!98937)))

(declare-fun bm!316770 () Bool)

(assert (=> bm!316770 (= call!316774 (forall!10363 (ite c!775854 (toList!4423 lt!1717211) (t!357862 (_2!28928 lt!1717207))) (ite c!775854 lambda!176734 lambda!176736)))))

(assert (= (and d!1404390 c!775854) b!4542552))

(assert (= (and d!1404390 (not c!775854)) b!4542553))

(assert (= (and b!4542553 res!1893559) b!4542551))

(assert (= (or b!4542552 b!4542553) bm!316770))

(assert (= (or b!4542552 b!4542553) bm!316769))

(assert (= (or b!4542552 b!4542553) bm!316768))

(assert (= (and d!1404390 res!1893561) b!4542550))

(assert (= (and b!4542550 res!1893560) b!4542549))

(declare-fun m!5311047 () Bool)

(assert (=> bm!316770 m!5311047))

(declare-fun m!5311049 () Bool)

(assert (=> b!4542550 m!5311049))

(declare-fun m!5311051 () Bool)

(assert (=> bm!316768 m!5311051))

(declare-fun m!5311053 () Bool)

(assert (=> bm!316769 m!5311053))

(declare-fun m!5311055 () Bool)

(assert (=> b!4542553 m!5311055))

(declare-fun m!5311057 () Bool)

(assert (=> b!4542553 m!5311057))

(declare-fun m!5311059 () Bool)

(assert (=> b!4542553 m!5311059))

(declare-fun m!5311061 () Bool)

(assert (=> b!4542553 m!5311061))

(declare-fun m!5311063 () Bool)

(assert (=> b!4542553 m!5311063))

(declare-fun m!5311065 () Bool)

(assert (=> b!4542553 m!5311065))

(declare-fun m!5311067 () Bool)

(assert (=> b!4542553 m!5311067))

(assert (=> b!4542553 m!5311055))

(declare-fun m!5311069 () Bool)

(assert (=> b!4542553 m!5311069))

(assert (=> b!4542553 m!5311059))

(assert (=> b!4542553 m!5311065))

(declare-fun m!5311071 () Bool)

(assert (=> b!4542553 m!5311071))

(declare-fun m!5311073 () Bool)

(assert (=> b!4542553 m!5311073))

(declare-fun m!5311075 () Bool)

(assert (=> b!4542549 m!5311075))

(assert (=> b!4542551 m!5311065))

(declare-fun m!5311077 () Bool)

(assert (=> d!1404390 m!5311077))

(assert (=> d!1404390 m!5310895))

(assert (=> b!4542482 d!1404390))

(declare-fun d!1404414 () Bool)

(assert (=> d!1404414 (eq!665 (addToMapMapFromBucket!735 (_2!28928 lt!1717207) lt!1717196) (addToMapMapFromBucket!735 (_2!28928 lt!1717207) lt!1717211))))

(declare-fun lt!1717361 () Unit!98910)

(declare-fun choose!29959 (ListMap!3685 ListMap!3685 List!50900) Unit!98910)

(assert (=> d!1404414 (= lt!1717361 (choose!29959 lt!1717196 lt!1717211 (_2!28928 lt!1717207)))))

(assert (=> d!1404414 (noDuplicateKeys!1208 (_2!28928 lt!1717207))))

(assert (=> d!1404414 (= (lemmaAddToMapFromBucketPreservesEquivalence!84 lt!1717196 lt!1717211 (_2!28928 lt!1717207)) lt!1717361)))

(declare-fun bs!879326 () Bool)

(assert (= bs!879326 d!1404414))

(assert (=> bs!879326 m!5310837))

(declare-fun m!5311093 () Bool)

(assert (=> bs!879326 m!5311093))

(assert (=> bs!879326 m!5310849))

(assert (=> bs!879326 m!5310895))

(assert (=> bs!879326 m!5310849))

(assert (=> bs!879326 m!5310837))

(declare-fun m!5311095 () Bool)

(assert (=> bs!879326 m!5311095))

(assert (=> b!4542482 d!1404414))

(declare-fun d!1404420 () Bool)

(assert (=> d!1404420 (= (eq!665 lt!1717201 lt!1717187) (= (content!8458 (toList!4423 lt!1717201)) (content!8458 (toList!4423 lt!1717187))))))

(declare-fun bs!879327 () Bool)

(assert (= bs!879327 d!1404420))

(assert (=> bs!879327 m!5310967))

(assert (=> bs!879327 m!5310971))

(assert (=> b!4542461 d!1404420))

(declare-fun bs!879329 () Bool)

(declare-fun b!4542568 () Bool)

(assert (= bs!879329 (and b!4542568 b!4542553)))

(declare-fun lambda!176744 () Int)

(assert (=> bs!879329 (= (= lt!1717196 lt!1717211) (= lambda!176744 lambda!176735))))

(declare-fun bs!879330 () Bool)

(assert (= bs!879330 (and b!4542568 b!4542476)))

(assert (=> bs!879330 (not (= lambda!176744 lambda!176667))))

(declare-fun bs!879331 () Bool)

(assert (= bs!879331 (and b!4542568 b!4542552)))

(assert (=> bs!879331 (= (= lt!1717196 lt!1717211) (= lambda!176744 lambda!176734))))

(assert (=> bs!879329 (= (= lt!1717196 lt!1717345) (= lambda!176744 lambda!176736))))

(declare-fun bs!879332 () Bool)

(assert (= bs!879332 (and b!4542568 d!1404390)))

(assert (=> bs!879332 (= (= lt!1717196 lt!1717333) (= lambda!176744 lambda!176737))))

(assert (=> b!4542568 true))

(declare-fun bs!879333 () Bool)

(declare-fun b!4542569 () Bool)

(assert (= bs!879333 (and b!4542569 b!4542553)))

(declare-fun lambda!176745 () Int)

(assert (=> bs!879333 (= (= lt!1717196 lt!1717211) (= lambda!176745 lambda!176735))))

(declare-fun bs!879334 () Bool)

(assert (= bs!879334 (and b!4542569 b!4542476)))

(assert (=> bs!879334 (not (= lambda!176745 lambda!176667))))

(declare-fun bs!879335 () Bool)

(assert (= bs!879335 (and b!4542569 b!4542552)))

(assert (=> bs!879335 (= (= lt!1717196 lt!1717211) (= lambda!176745 lambda!176734))))

(declare-fun bs!879336 () Bool)

(assert (= bs!879336 (and b!4542569 b!4542568)))

(assert (=> bs!879336 (= lambda!176745 lambda!176744)))

(assert (=> bs!879333 (= (= lt!1717196 lt!1717345) (= lambda!176745 lambda!176736))))

(declare-fun bs!879337 () Bool)

(assert (= bs!879337 (and b!4542569 d!1404390)))

(assert (=> bs!879337 (= (= lt!1717196 lt!1717333) (= lambda!176745 lambda!176737))))

(assert (=> b!4542569 true))

(declare-fun lt!1717375 () ListMap!3685)

(declare-fun lambda!176746 () Int)

(assert (=> bs!879333 (= (= lt!1717375 lt!1717211) (= lambda!176746 lambda!176735))))

(assert (=> bs!879334 (not (= lambda!176746 lambda!176667))))

(assert (=> b!4542569 (= (= lt!1717375 lt!1717196) (= lambda!176746 lambda!176745))))

(assert (=> bs!879335 (= (= lt!1717375 lt!1717211) (= lambda!176746 lambda!176734))))

(assert (=> bs!879336 (= (= lt!1717375 lt!1717196) (= lambda!176746 lambda!176744))))

(assert (=> bs!879333 (= (= lt!1717375 lt!1717345) (= lambda!176746 lambda!176736))))

(assert (=> bs!879337 (= (= lt!1717375 lt!1717333) (= lambda!176746 lambda!176737))))

(assert (=> b!4542569 true))

(declare-fun bs!879338 () Bool)

(declare-fun d!1404422 () Bool)

(assert (= bs!879338 (and d!1404422 b!4542553)))

(declare-fun lt!1717363 () ListMap!3685)

(declare-fun lambda!176747 () Int)

(assert (=> bs!879338 (= (= lt!1717363 lt!1717211) (= lambda!176747 lambda!176735))))

(declare-fun bs!879339 () Bool)

(assert (= bs!879339 (and d!1404422 b!4542476)))

(assert (=> bs!879339 (not (= lambda!176747 lambda!176667))))

(declare-fun bs!879340 () Bool)

(assert (= bs!879340 (and d!1404422 b!4542569)))

(assert (=> bs!879340 (= (= lt!1717363 lt!1717196) (= lambda!176747 lambda!176745))))

(declare-fun bs!879341 () Bool)

(assert (= bs!879341 (and d!1404422 b!4542552)))

(assert (=> bs!879341 (= (= lt!1717363 lt!1717211) (= lambda!176747 lambda!176734))))

(assert (=> bs!879338 (= (= lt!1717363 lt!1717345) (= lambda!176747 lambda!176736))))

(declare-fun bs!879342 () Bool)

(assert (= bs!879342 (and d!1404422 d!1404390)))

(assert (=> bs!879342 (= (= lt!1717363 lt!1717333) (= lambda!176747 lambda!176737))))

(declare-fun bs!879343 () Bool)

(assert (= bs!879343 (and d!1404422 b!4542568)))

(assert (=> bs!879343 (= (= lt!1717363 lt!1717196) (= lambda!176747 lambda!176744))))

(assert (=> bs!879340 (= (= lt!1717363 lt!1717375) (= lambda!176747 lambda!176746))))

(assert (=> d!1404422 true))

(declare-fun bm!316771 () Bool)

(declare-fun call!316778 () Unit!98910)

(assert (=> bm!316771 (= call!316778 (lemmaContainsAllItsOwnKeys!372 lt!1717196))))

(declare-fun b!4542565 () Bool)

(declare-fun e!2830759 () Bool)

(assert (=> b!4542565 (= e!2830759 (invariantList!1051 (toList!4423 lt!1717363)))))

(declare-fun lt!1717372 () ListMap!3685)

(declare-fun bm!316772 () Bool)

(declare-fun c!775855 () Bool)

(declare-fun call!316776 () Bool)

(assert (=> bm!316772 (= call!316776 (forall!10363 (ite c!775855 (toList!4423 lt!1717196) (toList!4423 lt!1717372)) (ite c!775855 lambda!176744 lambda!176746)))))

(declare-fun b!4542566 () Bool)

(declare-fun res!1893572 () Bool)

(assert (=> b!4542566 (=> (not res!1893572) (not e!2830759))))

(assert (=> b!4542566 (= res!1893572 (forall!10363 (toList!4423 lt!1717196) lambda!176747))))

(declare-fun b!4542567 () Bool)

(declare-fun e!2830757 () Bool)

(assert (=> b!4542567 (= e!2830757 (forall!10363 (toList!4423 lt!1717196) lambda!176746))))

(declare-fun e!2830758 () ListMap!3685)

(assert (=> b!4542568 (= e!2830758 lt!1717196)))

(declare-fun lt!1717382 () Unit!98910)

(assert (=> b!4542568 (= lt!1717382 call!316778)))

(declare-fun call!316777 () Bool)

(assert (=> b!4542568 call!316777))

(declare-fun lt!1717381 () Unit!98910)

(assert (=> b!4542568 (= lt!1717381 lt!1717382)))

(assert (=> b!4542568 call!316776))

(declare-fun lt!1717378 () Unit!98910)

(declare-fun Unit!98938 () Unit!98910)

(assert (=> b!4542568 (= lt!1717378 Unit!98938)))

(assert (=> d!1404422 e!2830759))

(declare-fun res!1893573 () Bool)

(assert (=> d!1404422 (=> (not res!1893573) (not e!2830759))))

(assert (=> d!1404422 (= res!1893573 (forall!10363 (_2!28928 lt!1717207) lambda!176747))))

(assert (=> d!1404422 (= lt!1717363 e!2830758)))

(assert (=> d!1404422 (= c!775855 ((_ is Nil!50776) (_2!28928 lt!1717207)))))

(assert (=> d!1404422 (noDuplicateKeys!1208 (_2!28928 lt!1717207))))

(assert (=> d!1404422 (= (addToMapMapFromBucket!735 (_2!28928 lt!1717207) lt!1717196) lt!1717363)))

(assert (=> b!4542569 (= e!2830758 lt!1717375)))

(assert (=> b!4542569 (= lt!1717372 (+!1622 lt!1717196 (h!56663 (_2!28928 lt!1717207))))))

(assert (=> b!4542569 (= lt!1717375 (addToMapMapFromBucket!735 (t!357862 (_2!28928 lt!1717207)) (+!1622 lt!1717196 (h!56663 (_2!28928 lt!1717207)))))))

(declare-fun lt!1717380 () Unit!98910)

(assert (=> b!4542569 (= lt!1717380 call!316778)))

(assert (=> b!4542569 (forall!10363 (toList!4423 lt!1717196) lambda!176745)))

(declare-fun lt!1717365 () Unit!98910)

(assert (=> b!4542569 (= lt!1717365 lt!1717380)))

(assert (=> b!4542569 (forall!10363 (toList!4423 lt!1717372) lambda!176746)))

(declare-fun lt!1717376 () Unit!98910)

(declare-fun Unit!98939 () Unit!98910)

(assert (=> b!4542569 (= lt!1717376 Unit!98939)))

(assert (=> b!4542569 call!316777))

(declare-fun lt!1717370 () Unit!98910)

(declare-fun Unit!98940 () Unit!98910)

(assert (=> b!4542569 (= lt!1717370 Unit!98940)))

(declare-fun lt!1717374 () Unit!98910)

(declare-fun Unit!98941 () Unit!98910)

(assert (=> b!4542569 (= lt!1717374 Unit!98941)))

(declare-fun lt!1717364 () Unit!98910)

(assert (=> b!4542569 (= lt!1717364 (forallContained!2627 (toList!4423 lt!1717372) lambda!176746 (h!56663 (_2!28928 lt!1717207))))))

(assert (=> b!4542569 (contains!13583 lt!1717372 (_1!28927 (h!56663 (_2!28928 lt!1717207))))))

(declare-fun lt!1717373 () Unit!98910)

(declare-fun Unit!98943 () Unit!98910)

(assert (=> b!4542569 (= lt!1717373 Unit!98943)))

(assert (=> b!4542569 (contains!13583 lt!1717375 (_1!28927 (h!56663 (_2!28928 lt!1717207))))))

(declare-fun lt!1717377 () Unit!98910)

(declare-fun Unit!98944 () Unit!98910)

(assert (=> b!4542569 (= lt!1717377 Unit!98944)))

(assert (=> b!4542569 (forall!10363 (_2!28928 lt!1717207) lambda!176746)))

(declare-fun lt!1717369 () Unit!98910)

(declare-fun Unit!98945 () Unit!98910)

(assert (=> b!4542569 (= lt!1717369 Unit!98945)))

(assert (=> b!4542569 call!316776))

(declare-fun lt!1717366 () Unit!98910)

(declare-fun Unit!98946 () Unit!98910)

(assert (=> b!4542569 (= lt!1717366 Unit!98946)))

(declare-fun lt!1717371 () Unit!98910)

(declare-fun Unit!98947 () Unit!98910)

(assert (=> b!4542569 (= lt!1717371 Unit!98947)))

(declare-fun lt!1717368 () Unit!98910)

(assert (=> b!4542569 (= lt!1717368 (addForallContainsKeyThenBeforeAdding!372 lt!1717196 lt!1717375 (_1!28927 (h!56663 (_2!28928 lt!1717207))) (_2!28927 (h!56663 (_2!28928 lt!1717207)))))))

(assert (=> b!4542569 (forall!10363 (toList!4423 lt!1717196) lambda!176746)))

(declare-fun lt!1717362 () Unit!98910)

(assert (=> b!4542569 (= lt!1717362 lt!1717368)))

(assert (=> b!4542569 (forall!10363 (toList!4423 lt!1717196) lambda!176746)))

(declare-fun lt!1717367 () Unit!98910)

(declare-fun Unit!98948 () Unit!98910)

(assert (=> b!4542569 (= lt!1717367 Unit!98948)))

(declare-fun res!1893571 () Bool)

(assert (=> b!4542569 (= res!1893571 (forall!10363 (_2!28928 lt!1717207) lambda!176746))))

(assert (=> b!4542569 (=> (not res!1893571) (not e!2830757))))

(assert (=> b!4542569 e!2830757))

(declare-fun lt!1717379 () Unit!98910)

(declare-fun Unit!98949 () Unit!98910)

(assert (=> b!4542569 (= lt!1717379 Unit!98949)))

(declare-fun bm!316773 () Bool)

(assert (=> bm!316773 (= call!316777 (forall!10363 (ite c!775855 (toList!4423 lt!1717196) (t!357862 (_2!28928 lt!1717207))) (ite c!775855 lambda!176744 lambda!176746)))))

(assert (= (and d!1404422 c!775855) b!4542568))

(assert (= (and d!1404422 (not c!775855)) b!4542569))

(assert (= (and b!4542569 res!1893571) b!4542567))

(assert (= (or b!4542568 b!4542569) bm!316773))

(assert (= (or b!4542568 b!4542569) bm!316772))

(assert (= (or b!4542568 b!4542569) bm!316771))

(assert (= (and d!1404422 res!1893573) b!4542566))

(assert (= (and b!4542566 res!1893572) b!4542565))

(declare-fun m!5311103 () Bool)

(assert (=> bm!316773 m!5311103))

(declare-fun m!5311105 () Bool)

(assert (=> b!4542566 m!5311105))

(declare-fun m!5311107 () Bool)

(assert (=> bm!316771 m!5311107))

(declare-fun m!5311109 () Bool)

(assert (=> bm!316772 m!5311109))

(declare-fun m!5311111 () Bool)

(assert (=> b!4542569 m!5311111))

(declare-fun m!5311113 () Bool)

(assert (=> b!4542569 m!5311113))

(declare-fun m!5311115 () Bool)

(assert (=> b!4542569 m!5311115))

(declare-fun m!5311117 () Bool)

(assert (=> b!4542569 m!5311117))

(declare-fun m!5311119 () Bool)

(assert (=> b!4542569 m!5311119))

(declare-fun m!5311121 () Bool)

(assert (=> b!4542569 m!5311121))

(declare-fun m!5311123 () Bool)

(assert (=> b!4542569 m!5311123))

(assert (=> b!4542569 m!5311111))

(declare-fun m!5311125 () Bool)

(assert (=> b!4542569 m!5311125))

(assert (=> b!4542569 m!5311115))

(assert (=> b!4542569 m!5311121))

(declare-fun m!5311127 () Bool)

(assert (=> b!4542569 m!5311127))

(declare-fun m!5311129 () Bool)

(assert (=> b!4542569 m!5311129))

(declare-fun m!5311131 () Bool)

(assert (=> b!4542565 m!5311131))

(assert (=> b!4542567 m!5311121))

(declare-fun m!5311133 () Bool)

(assert (=> d!1404422 m!5311133))

(assert (=> d!1404422 m!5310895))

(assert (=> b!4542461 d!1404422))

(declare-fun bs!879344 () Bool)

(declare-fun d!1404428 () Bool)

(assert (= bs!879344 (and d!1404428 start!451080)))

(declare-fun lambda!176750 () Int)

(assert (=> bs!879344 (= lambda!176750 lambda!176665)))

(declare-fun bs!879345 () Bool)

(assert (= bs!879345 (and d!1404428 b!4542476)))

(assert (=> bs!879345 (not (= lambda!176750 lambda!176666))))

(declare-fun lt!1717406 () ListMap!3685)

(assert (=> d!1404428 (invariantList!1051 (toList!4423 lt!1717406))))

(declare-fun e!2830783 () ListMap!3685)

(assert (=> d!1404428 (= lt!1717406 e!2830783)))

(declare-fun c!775867 () Bool)

(assert (=> d!1404428 (= c!775867 ((_ is Cons!50777) (toList!4424 lt!1717197)))))

(assert (=> d!1404428 (forall!10361 (toList!4424 lt!1717197) lambda!176750)))

(assert (=> d!1404428 (= (extractMap!1264 (toList!4424 lt!1717197)) lt!1717406)))

(declare-fun b!4542604 () Bool)

(assert (=> b!4542604 (= e!2830783 (addToMapMapFromBucket!735 (_2!28928 (h!56664 (toList!4424 lt!1717197))) (extractMap!1264 (t!357863 (toList!4424 lt!1717197)))))))

(declare-fun b!4542605 () Bool)

(assert (=> b!4542605 (= e!2830783 (ListMap!3686 Nil!50776))))

(assert (= (and d!1404428 c!775867) b!4542604))

(assert (= (and d!1404428 (not c!775867)) b!4542605))

(declare-fun m!5311153 () Bool)

(assert (=> d!1404428 m!5311153))

(declare-fun m!5311155 () Bool)

(assert (=> d!1404428 m!5311155))

(declare-fun m!5311157 () Bool)

(assert (=> b!4542604 m!5311157))

(assert (=> b!4542604 m!5311157))

(declare-fun m!5311159 () Bool)

(assert (=> b!4542604 m!5311159))

(assert (=> b!4542461 d!1404428))

(declare-fun b!4542648 () Bool)

(declare-fun e!2830811 () Bool)

(declare-datatypes ((List!50903 0))(
  ( (Nil!50779) (Cons!50779 (h!56668 K!12160) (t!357865 List!50903)) )
))
(declare-fun contains!13587 (List!50903 K!12160) Bool)

(declare-fun keys!17676 (ListMap!3685) List!50903)

(assert (=> b!4542648 (= e!2830811 (not (contains!13587 (keys!17676 lt!1717203) key!3287)))))

(declare-fun b!4542649 () Bool)

(declare-fun e!2830813 () List!50903)

(assert (=> b!4542649 (= e!2830813 (keys!17676 lt!1717203))))

(declare-fun b!4542650 () Bool)

(declare-fun getKeysList!498 (List!50900) List!50903)

(assert (=> b!4542650 (= e!2830813 (getKeysList!498 (toList!4423 lt!1717203)))))

(declare-fun b!4542651 () Bool)

(declare-fun e!2830815 () Unit!98910)

(declare-fun lt!1717435 () Unit!98910)

(assert (=> b!4542651 (= e!2830815 lt!1717435)))

(declare-fun lt!1717436 () Unit!98910)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1063 (List!50900 K!12160) Unit!98910)

(assert (=> b!4542651 (= lt!1717436 (lemmaContainsKeyImpliesGetValueByKeyDefined!1063 (toList!4423 lt!1717203) key!3287))))

(declare-datatypes ((Option!11225 0))(
  ( (None!11224) (Some!11224 (v!44938 V!12406)) )
))
(declare-fun isDefined!8499 (Option!11225) Bool)

(declare-fun getValueByKey!1159 (List!50900 K!12160) Option!11225)

(assert (=> b!4542651 (isDefined!8499 (getValueByKey!1159 (toList!4423 lt!1717203) key!3287))))

(declare-fun lt!1717429 () Unit!98910)

(assert (=> b!4542651 (= lt!1717429 lt!1717436)))

(declare-fun lemmaInListThenGetKeysListContains!494 (List!50900 K!12160) Unit!98910)

(assert (=> b!4542651 (= lt!1717435 (lemmaInListThenGetKeysListContains!494 (toList!4423 lt!1717203) key!3287))))

(declare-fun call!316781 () Bool)

(assert (=> b!4542651 call!316781))

(declare-fun b!4542652 () Bool)

(declare-fun e!2830816 () Bool)

(assert (=> b!4542652 (= e!2830816 (contains!13587 (keys!17676 lt!1717203) key!3287))))

(declare-fun b!4542653 () Bool)

(declare-fun e!2830812 () Bool)

(assert (=> b!4542653 (= e!2830812 e!2830816)))

(declare-fun res!1893605 () Bool)

(assert (=> b!4542653 (=> (not res!1893605) (not e!2830816))))

(assert (=> b!4542653 (= res!1893605 (isDefined!8499 (getValueByKey!1159 (toList!4423 lt!1717203) key!3287)))))

(declare-fun bm!316776 () Bool)

(assert (=> bm!316776 (= call!316781 (contains!13587 e!2830813 key!3287))))

(declare-fun c!775882 () Bool)

(declare-fun c!775881 () Bool)

(assert (=> bm!316776 (= c!775882 c!775881)))

(declare-fun d!1404436 () Bool)

(assert (=> d!1404436 e!2830812))

(declare-fun res!1893604 () Bool)

(assert (=> d!1404436 (=> res!1893604 e!2830812)))

(assert (=> d!1404436 (= res!1893604 e!2830811)))

(declare-fun res!1893606 () Bool)

(assert (=> d!1404436 (=> (not res!1893606) (not e!2830811))))

(declare-fun lt!1717434 () Bool)

(assert (=> d!1404436 (= res!1893606 (not lt!1717434))))

(declare-fun lt!1717432 () Bool)

(assert (=> d!1404436 (= lt!1717434 lt!1717432)))

(declare-fun lt!1717430 () Unit!98910)

(assert (=> d!1404436 (= lt!1717430 e!2830815)))

(assert (=> d!1404436 (= c!775881 lt!1717432)))

(declare-fun containsKey!1898 (List!50900 K!12160) Bool)

(assert (=> d!1404436 (= lt!1717432 (containsKey!1898 (toList!4423 lt!1717203) key!3287))))

(assert (=> d!1404436 (= (contains!13583 lt!1717203 key!3287) lt!1717434)))

(declare-fun b!4542654 () Bool)

(assert (=> b!4542654 false))

(declare-fun lt!1717433 () Unit!98910)

(declare-fun lt!1717431 () Unit!98910)

(assert (=> b!4542654 (= lt!1717433 lt!1717431)))

(assert (=> b!4542654 (containsKey!1898 (toList!4423 lt!1717203) key!3287)))

(declare-fun lemmaInGetKeysListThenContainsKey!497 (List!50900 K!12160) Unit!98910)

(assert (=> b!4542654 (= lt!1717431 (lemmaInGetKeysListThenContainsKey!497 (toList!4423 lt!1717203) key!3287))))

(declare-fun e!2830814 () Unit!98910)

(declare-fun Unit!98950 () Unit!98910)

(assert (=> b!4542654 (= e!2830814 Unit!98950)))

(declare-fun b!4542655 () Bool)

(declare-fun Unit!98951 () Unit!98910)

(assert (=> b!4542655 (= e!2830814 Unit!98951)))

(declare-fun b!4542656 () Bool)

(assert (=> b!4542656 (= e!2830815 e!2830814)))

(declare-fun c!775880 () Bool)

(assert (=> b!4542656 (= c!775880 call!316781)))

(assert (= (and d!1404436 c!775881) b!4542651))

(assert (= (and d!1404436 (not c!775881)) b!4542656))

(assert (= (and b!4542656 c!775880) b!4542654))

(assert (= (and b!4542656 (not c!775880)) b!4542655))

(assert (= (or b!4542651 b!4542656) bm!316776))

(assert (= (and bm!316776 c!775882) b!4542650))

(assert (= (and bm!316776 (not c!775882)) b!4542649))

(assert (= (and d!1404436 res!1893606) b!4542648))

(assert (= (and d!1404436 (not res!1893604)) b!4542653))

(assert (= (and b!4542653 res!1893605) b!4542652))

(declare-fun m!5311177 () Bool)

(assert (=> b!4542650 m!5311177))

(declare-fun m!5311181 () Bool)

(assert (=> b!4542651 m!5311181))

(declare-fun m!5311183 () Bool)

(assert (=> b!4542651 m!5311183))

(assert (=> b!4542651 m!5311183))

(declare-fun m!5311189 () Bool)

(assert (=> b!4542651 m!5311189))

(declare-fun m!5311193 () Bool)

(assert (=> b!4542651 m!5311193))

(declare-fun m!5311195 () Bool)

(assert (=> b!4542652 m!5311195))

(assert (=> b!4542652 m!5311195))

(declare-fun m!5311197 () Bool)

(assert (=> b!4542652 m!5311197))

(declare-fun m!5311199 () Bool)

(assert (=> d!1404436 m!5311199))

(assert (=> b!4542649 m!5311195))

(declare-fun m!5311201 () Bool)

(assert (=> bm!316776 m!5311201))

(assert (=> b!4542653 m!5311183))

(assert (=> b!4542653 m!5311183))

(assert (=> b!4542653 m!5311189))

(assert (=> b!4542654 m!5311199))

(declare-fun m!5311203 () Bool)

(assert (=> b!4542654 m!5311203))

(assert (=> b!4542648 m!5311195))

(assert (=> b!4542648 m!5311195))

(assert (=> b!4542648 m!5311197))

(assert (=> b!4542459 d!1404436))

(declare-fun bs!879352 () Bool)

(declare-fun d!1404444 () Bool)

(assert (= bs!879352 (and d!1404444 start!451080)))

(declare-fun lambda!176754 () Int)

(assert (=> bs!879352 (= lambda!176754 lambda!176665)))

(declare-fun bs!879353 () Bool)

(assert (= bs!879353 (and d!1404444 b!4542476)))

(assert (=> bs!879353 (not (= lambda!176754 lambda!176666))))

(declare-fun bs!879354 () Bool)

(assert (= bs!879354 (and d!1404444 d!1404428)))

(assert (=> bs!879354 (= lambda!176754 lambda!176750)))

(declare-fun lt!1717438 () ListMap!3685)

(assert (=> d!1404444 (invariantList!1051 (toList!4423 lt!1717438))))

(declare-fun e!2830818 () ListMap!3685)

(assert (=> d!1404444 (= lt!1717438 e!2830818)))

(declare-fun c!775883 () Bool)

(assert (=> d!1404444 (= c!775883 ((_ is Cons!50777) (toList!4424 lm!1477)))))

(assert (=> d!1404444 (forall!10361 (toList!4424 lm!1477) lambda!176754)))

(assert (=> d!1404444 (= (extractMap!1264 (toList!4424 lm!1477)) lt!1717438)))

(declare-fun b!4542658 () Bool)

(assert (=> b!4542658 (= e!2830818 (addToMapMapFromBucket!735 (_2!28928 (h!56664 (toList!4424 lm!1477))) (extractMap!1264 (t!357863 (toList!4424 lm!1477)))))))

(declare-fun b!4542659 () Bool)

(assert (=> b!4542659 (= e!2830818 (ListMap!3686 Nil!50776))))

(assert (= (and d!1404444 c!775883) b!4542658))

(assert (= (and d!1404444 (not c!775883)) b!4542659))

(declare-fun m!5311205 () Bool)

(assert (=> d!1404444 m!5311205))

(declare-fun m!5311207 () Bool)

(assert (=> d!1404444 m!5311207))

(assert (=> b!4542658 m!5310873))

(assert (=> b!4542658 m!5310873))

(declare-fun m!5311209 () Bool)

(assert (=> b!4542658 m!5311209))

(assert (=> b!4542459 d!1404444))

(declare-fun d!1404446 () Bool)

(declare-fun e!2830830 () Bool)

(assert (=> d!1404446 e!2830830))

(declare-fun res!1893620 () Bool)

(assert (=> d!1404446 (=> (not res!1893620) (not e!2830830))))

(declare-fun lt!1717458 () ListLongMap!3055)

(assert (=> d!1404446 (= res!1893620 (contains!13585 lt!1717458 (_1!28928 lt!1717188)))))

(declare-fun lt!1717459 () List!50901)

(assert (=> d!1404446 (= lt!1717458 (ListLongMap!3056 lt!1717459))))

(declare-fun lt!1717456 () Unit!98910)

(declare-fun lt!1717457 () Unit!98910)

(assert (=> d!1404446 (= lt!1717456 lt!1717457)))

(declare-datatypes ((Option!11226 0))(
  ( (None!11225) (Some!11225 (v!44939 List!50900)) )
))
(declare-fun getValueByKey!1160 (List!50901 (_ BitVec 64)) Option!11226)

(assert (=> d!1404446 (= (getValueByKey!1160 lt!1717459 (_1!28928 lt!1717188)) (Some!11225 (_2!28928 lt!1717188)))))

(declare-fun lemmaContainsTupThenGetReturnValue!727 (List!50901 (_ BitVec 64) List!50900) Unit!98910)

(assert (=> d!1404446 (= lt!1717457 (lemmaContainsTupThenGetReturnValue!727 lt!1717459 (_1!28928 lt!1717188) (_2!28928 lt!1717188)))))

(declare-fun insertStrictlySorted!441 (List!50901 (_ BitVec 64) List!50900) List!50901)

(assert (=> d!1404446 (= lt!1717459 (insertStrictlySorted!441 (toList!4424 lm!1477) (_1!28928 lt!1717188) (_2!28928 lt!1717188)))))

(assert (=> d!1404446 (= (+!1620 lm!1477 lt!1717188) lt!1717458)))

(declare-fun b!4542675 () Bool)

(declare-fun res!1893619 () Bool)

(assert (=> b!4542675 (=> (not res!1893619) (not e!2830830))))

(assert (=> b!4542675 (= res!1893619 (= (getValueByKey!1160 (toList!4424 lt!1717458) (_1!28928 lt!1717188)) (Some!11225 (_2!28928 lt!1717188))))))

(declare-fun b!4542676 () Bool)

(assert (=> b!4542676 (= e!2830830 (contains!13584 (toList!4424 lt!1717458) lt!1717188))))

(assert (= (and d!1404446 res!1893620) b!4542675))

(assert (= (and b!4542675 res!1893619) b!4542676))

(declare-fun m!5311261 () Bool)

(assert (=> d!1404446 m!5311261))

(declare-fun m!5311263 () Bool)

(assert (=> d!1404446 m!5311263))

(declare-fun m!5311265 () Bool)

(assert (=> d!1404446 m!5311265))

(declare-fun m!5311267 () Bool)

(assert (=> d!1404446 m!5311267))

(declare-fun m!5311269 () Bool)

(assert (=> b!4542675 m!5311269))

(declare-fun m!5311271 () Bool)

(assert (=> b!4542676 m!5311271))

(assert (=> b!4542460 d!1404446))

(declare-fun d!1404470 () Bool)

(declare-fun e!2830837 () Bool)

(assert (=> d!1404470 e!2830837))

(declare-fun res!1893628 () Bool)

(assert (=> d!1404470 (=> (not res!1893628) (not e!2830837))))

(declare-fun lt!1717462 () ListLongMap!3055)

(assert (=> d!1404470 (= res!1893628 (contains!13585 lt!1717462 (_1!28928 lt!1717207)))))

(declare-fun lt!1717463 () List!50901)

(assert (=> d!1404470 (= lt!1717462 (ListLongMap!3056 lt!1717463))))

(declare-fun lt!1717460 () Unit!98910)

(declare-fun lt!1717461 () Unit!98910)

(assert (=> d!1404470 (= lt!1717460 lt!1717461)))

(assert (=> d!1404470 (= (getValueByKey!1160 lt!1717463 (_1!28928 lt!1717207)) (Some!11225 (_2!28928 lt!1717207)))))

(assert (=> d!1404470 (= lt!1717461 (lemmaContainsTupThenGetReturnValue!727 lt!1717463 (_1!28928 lt!1717207) (_2!28928 lt!1717207)))))

(assert (=> d!1404470 (= lt!1717463 (insertStrictlySorted!441 (toList!4424 lt!1717189) (_1!28928 lt!1717207) (_2!28928 lt!1717207)))))

(assert (=> d!1404470 (= (+!1620 lt!1717189 lt!1717207) lt!1717462)))

(declare-fun b!4542683 () Bool)

(declare-fun res!1893627 () Bool)

(assert (=> b!4542683 (=> (not res!1893627) (not e!2830837))))

(assert (=> b!4542683 (= res!1893627 (= (getValueByKey!1160 (toList!4424 lt!1717462) (_1!28928 lt!1717207)) (Some!11225 (_2!28928 lt!1717207))))))

(declare-fun b!4542684 () Bool)

(assert (=> b!4542684 (= e!2830837 (contains!13584 (toList!4424 lt!1717462) lt!1717207))))

(assert (= (and d!1404470 res!1893628) b!4542683))

(assert (= (and b!4542683 res!1893627) b!4542684))

(declare-fun m!5311273 () Bool)

(assert (=> d!1404470 m!5311273))

(declare-fun m!5311275 () Bool)

(assert (=> d!1404470 m!5311275))

(declare-fun m!5311277 () Bool)

(assert (=> d!1404470 m!5311277))

(declare-fun m!5311279 () Bool)

(assert (=> d!1404470 m!5311279))

(declare-fun m!5311281 () Bool)

(assert (=> b!4542683 m!5311281))

(declare-fun m!5311283 () Bool)

(assert (=> b!4542684 m!5311283))

(assert (=> b!4542460 d!1404470))

(declare-fun d!1404472 () Bool)

(declare-fun res!1893639 () Bool)

(declare-fun e!2830848 () Bool)

(assert (=> d!1404472 (=> res!1893639 e!2830848)))

(assert (=> d!1404472 (= res!1893639 (and ((_ is Cons!50776) lt!1717219) (= (_1!28927 (h!56663 lt!1717219)) key!3287)))))

(assert (=> d!1404472 (= (containsKey!1896 lt!1717219 key!3287) e!2830848)))

(declare-fun b!4542695 () Bool)

(declare-fun e!2830849 () Bool)

(assert (=> b!4542695 (= e!2830848 e!2830849)))

(declare-fun res!1893640 () Bool)

(assert (=> b!4542695 (=> (not res!1893640) (not e!2830849))))

(assert (=> b!4542695 (= res!1893640 ((_ is Cons!50776) lt!1717219))))

(declare-fun b!4542696 () Bool)

(assert (=> b!4542696 (= e!2830849 (containsKey!1896 (t!357862 lt!1717219) key!3287))))

(assert (= (and d!1404472 (not res!1893639)) b!4542695))

(assert (= (and b!4542695 res!1893640) b!4542696))

(declare-fun m!5311293 () Bool)

(assert (=> b!4542696 m!5311293))

(assert (=> b!4542481 d!1404472))

(declare-fun bs!879373 () Bool)

(declare-fun d!1404478 () Bool)

(assert (= bs!879373 (and d!1404478 start!451080)))

(declare-fun lambda!176761 () Int)

(assert (=> bs!879373 (not (= lambda!176761 lambda!176665))))

(declare-fun bs!879374 () Bool)

(assert (= bs!879374 (and d!1404478 b!4542476)))

(assert (=> bs!879374 (= lambda!176761 lambda!176666)))

(declare-fun bs!879375 () Bool)

(assert (= bs!879375 (and d!1404478 d!1404428)))

(assert (=> bs!879375 (not (= lambda!176761 lambda!176750))))

(declare-fun bs!879377 () Bool)

(assert (= bs!879377 (and d!1404478 d!1404444)))

(assert (=> bs!879377 (not (= lambda!176761 lambda!176754))))

(assert (=> d!1404478 true))

(assert (=> d!1404478 (= (allKeysSameHashInMap!1315 lm!1477 hashF!1107) (forall!10361 (toList!4424 lm!1477) lambda!176761))))

(declare-fun bs!879378 () Bool)

(assert (= bs!879378 d!1404478))

(declare-fun m!5311299 () Bool)

(assert (=> bs!879378 m!5311299))

(assert (=> b!4542463 d!1404478))

(declare-fun d!1404482 () Bool)

(declare-fun hash!2942 (Hashable!5603 K!12160) (_ BitVec 64))

(assert (=> d!1404482 (= (hash!2939 hashF!1107 key!3287) (hash!2942 hashF!1107 key!3287))))

(declare-fun bs!879381 () Bool)

(assert (= bs!879381 d!1404482))

(declare-fun m!5311303 () Bool)

(assert (=> bs!879381 m!5311303))

(assert (=> b!4542464 d!1404482))

(declare-fun d!1404486 () Bool)

(declare-fun e!2830850 () Bool)

(assert (=> d!1404486 e!2830850))

(declare-fun res!1893642 () Bool)

(assert (=> d!1404486 (=> (not res!1893642) (not e!2830850))))

(declare-fun lt!1717469 () ListLongMap!3055)

(assert (=> d!1404486 (= res!1893642 (contains!13585 lt!1717469 (_1!28928 lt!1717188)))))

(declare-fun lt!1717470 () List!50901)

(assert (=> d!1404486 (= lt!1717469 (ListLongMap!3056 lt!1717470))))

(declare-fun lt!1717467 () Unit!98910)

(declare-fun lt!1717468 () Unit!98910)

(assert (=> d!1404486 (= lt!1717467 lt!1717468)))

(assert (=> d!1404486 (= (getValueByKey!1160 lt!1717470 (_1!28928 lt!1717188)) (Some!11225 (_2!28928 lt!1717188)))))

(assert (=> d!1404486 (= lt!1717468 (lemmaContainsTupThenGetReturnValue!727 lt!1717470 (_1!28928 lt!1717188) (_2!28928 lt!1717188)))))

(assert (=> d!1404486 (= lt!1717470 (insertStrictlySorted!441 (toList!4424 lt!1717220) (_1!28928 lt!1717188) (_2!28928 lt!1717188)))))

(assert (=> d!1404486 (= (+!1620 lt!1717220 lt!1717188) lt!1717469)))

(declare-fun b!4542697 () Bool)

(declare-fun res!1893641 () Bool)

(assert (=> b!4542697 (=> (not res!1893641) (not e!2830850))))

(assert (=> b!4542697 (= res!1893641 (= (getValueByKey!1160 (toList!4424 lt!1717469) (_1!28928 lt!1717188)) (Some!11225 (_2!28928 lt!1717188))))))

(declare-fun b!4542698 () Bool)

(assert (=> b!4542698 (= e!2830850 (contains!13584 (toList!4424 lt!1717469) lt!1717188))))

(assert (= (and d!1404486 res!1893642) b!4542697))

(assert (= (and b!4542697 res!1893641) b!4542698))

(declare-fun m!5311317 () Bool)

(assert (=> d!1404486 m!5311317))

(declare-fun m!5311321 () Bool)

(assert (=> d!1404486 m!5311321))

(declare-fun m!5311323 () Bool)

(assert (=> d!1404486 m!5311323))

(declare-fun m!5311325 () Bool)

(assert (=> d!1404486 m!5311325))

(declare-fun m!5311327 () Bool)

(assert (=> b!4542697 m!5311327))

(declare-fun m!5311329 () Bool)

(assert (=> b!4542698 m!5311329))

(assert (=> b!4542485 d!1404486))

(declare-fun bs!879400 () Bool)

(declare-fun d!1404492 () Bool)

(assert (= bs!879400 (and d!1404492 d!1404428)))

(declare-fun lambda!176768 () Int)

(assert (=> bs!879400 (= lambda!176768 lambda!176750)))

(declare-fun bs!879401 () Bool)

(assert (= bs!879401 (and d!1404492 d!1404444)))

(assert (=> bs!879401 (= lambda!176768 lambda!176754)))

(declare-fun bs!879402 () Bool)

(assert (= bs!879402 (and d!1404492 d!1404478)))

(assert (=> bs!879402 (not (= lambda!176768 lambda!176761))))

(declare-fun bs!879403 () Bool)

(assert (= bs!879403 (and d!1404492 b!4542476)))

(assert (=> bs!879403 (not (= lambda!176768 lambda!176666))))

(declare-fun bs!879404 () Bool)

(assert (= bs!879404 (and d!1404492 start!451080)))

(assert (=> bs!879404 (= lambda!176768 lambda!176665)))

(assert (=> d!1404492 (eq!665 (extractMap!1264 (toList!4424 (+!1620 lt!1717220 (tuple2!51269 hash!344 newBucket!178)))) (-!434 (extractMap!1264 (toList!4424 lt!1717220)) key!3287))))

(declare-fun lt!1717495 () Unit!98910)

(declare-fun choose!29963 (ListLongMap!3055 (_ BitVec 64) List!50900 K!12160 Hashable!5603) Unit!98910)

(assert (=> d!1404492 (= lt!1717495 (choose!29963 lt!1717220 hash!344 newBucket!178 key!3287 hashF!1107))))

(assert (=> d!1404492 (forall!10361 (toList!4424 lt!1717220) lambda!176768)))

(assert (=> d!1404492 (= (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMap!193 lt!1717220 hash!344 newBucket!178 key!3287 hashF!1107) lt!1717495)))

(declare-fun bs!879405 () Bool)

(assert (= bs!879405 d!1404492))

(declare-fun m!5311363 () Bool)

(assert (=> bs!879405 m!5311363))

(assert (=> bs!879405 m!5310875))

(declare-fun m!5311367 () Bool)

(assert (=> bs!879405 m!5311367))

(declare-fun m!5311369 () Bool)

(assert (=> bs!879405 m!5311369))

(declare-fun m!5311371 () Bool)

(assert (=> bs!879405 m!5311371))

(assert (=> bs!879405 m!5310875))

(assert (=> bs!879405 m!5311369))

(assert (=> bs!879405 m!5311367))

(declare-fun m!5311375 () Bool)

(assert (=> bs!879405 m!5311375))

(declare-fun m!5311377 () Bool)

(assert (=> bs!879405 m!5311377))

(assert (=> b!4542485 d!1404492))

(declare-fun d!1404498 () Bool)

(declare-fun e!2830859 () Bool)

(assert (=> d!1404498 e!2830859))

(declare-fun res!1893653 () Bool)

(assert (=> d!1404498 (=> (not res!1893653) (not e!2830859))))

(declare-fun lt!1717509 () ListMap!3685)

(assert (=> d!1404498 (= res!1893653 (not (contains!13583 lt!1717509 key!3287)))))

(declare-fun removePresrvNoDuplicatedKeys!175 (List!50900 K!12160) List!50900)

(assert (=> d!1404498 (= lt!1717509 (ListMap!3686 (removePresrvNoDuplicatedKeys!175 (toList!4423 lt!1717191) key!3287)))))

(assert (=> d!1404498 (= (-!434 lt!1717191 key!3287) lt!1717509)))

(declare-fun b!4542711 () Bool)

(declare-fun content!8460 (List!50903) (InoxSet K!12160))

(assert (=> b!4542711 (= e!2830859 (= ((_ map and) (content!8460 (keys!17676 lt!1717191)) ((_ map not) (store ((as const (Array K!12160 Bool)) false) key!3287 true))) (content!8460 (keys!17676 lt!1717509))))))

(assert (= (and d!1404498 res!1893653) b!4542711))

(declare-fun m!5311379 () Bool)

(assert (=> d!1404498 m!5311379))

(declare-fun m!5311381 () Bool)

(assert (=> d!1404498 m!5311381))

(declare-fun m!5311383 () Bool)

(assert (=> b!4542711 m!5311383))

(declare-fun m!5311385 () Bool)

(assert (=> b!4542711 m!5311385))

(declare-fun m!5311387 () Bool)

(assert (=> b!4542711 m!5311387))

(assert (=> b!4542711 m!5311387))

(declare-fun m!5311389 () Bool)

(assert (=> b!4542711 m!5311389))

(assert (=> b!4542711 m!5311385))

(declare-fun m!5311391 () Bool)

(assert (=> b!4542711 m!5311391))

(assert (=> b!4542485 d!1404498))

(declare-fun d!1404500 () Bool)

(declare-fun e!2830861 () Bool)

(assert (=> d!1404500 e!2830861))

(declare-fun res!1893657 () Bool)

(assert (=> d!1404500 (=> (not res!1893657) (not e!2830861))))

(declare-fun lt!1717516 () ListLongMap!3055)

(assert (=> d!1404500 (= res!1893657 (contains!13585 lt!1717516 (_1!28928 lt!1717207)))))

(declare-fun lt!1717517 () List!50901)

(assert (=> d!1404500 (= lt!1717516 (ListLongMap!3056 lt!1717517))))

(declare-fun lt!1717514 () Unit!98910)

(declare-fun lt!1717515 () Unit!98910)

(assert (=> d!1404500 (= lt!1717514 lt!1717515)))

(assert (=> d!1404500 (= (getValueByKey!1160 lt!1717517 (_1!28928 lt!1717207)) (Some!11225 (_2!28928 lt!1717207)))))

(assert (=> d!1404500 (= lt!1717515 (lemmaContainsTupThenGetReturnValue!727 lt!1717517 (_1!28928 lt!1717207) (_2!28928 lt!1717207)))))

(assert (=> d!1404500 (= lt!1717517 (insertStrictlySorted!441 (toList!4424 lt!1717220) (_1!28928 lt!1717207) (_2!28928 lt!1717207)))))

(assert (=> d!1404500 (= (+!1620 lt!1717220 lt!1717207) lt!1717516)))

(declare-fun b!4542714 () Bool)

(declare-fun res!1893656 () Bool)

(assert (=> b!4542714 (=> (not res!1893656) (not e!2830861))))

(assert (=> b!4542714 (= res!1893656 (= (getValueByKey!1160 (toList!4424 lt!1717516) (_1!28928 lt!1717207)) (Some!11225 (_2!28928 lt!1717207))))))

(declare-fun b!4542715 () Bool)

(assert (=> b!4542715 (= e!2830861 (contains!13584 (toList!4424 lt!1717516) lt!1717207))))

(assert (= (and d!1404500 res!1893657) b!4542714))

(assert (= (and b!4542714 res!1893656) b!4542715))

(declare-fun m!5311405 () Bool)

(assert (=> d!1404500 m!5311405))

(declare-fun m!5311407 () Bool)

(assert (=> d!1404500 m!5311407))

(declare-fun m!5311409 () Bool)

(assert (=> d!1404500 m!5311409))

(declare-fun m!5311411 () Bool)

(assert (=> d!1404500 m!5311411))

(declare-fun m!5311413 () Bool)

(assert (=> b!4542714 m!5311413))

(declare-fun m!5311415 () Bool)

(assert (=> b!4542715 m!5311415))

(assert (=> b!4542485 d!1404500))

(declare-fun bs!879407 () Bool)

(declare-fun d!1404504 () Bool)

(assert (= bs!879407 (and d!1404504 d!1404428)))

(declare-fun lambda!176769 () Int)

(assert (=> bs!879407 (= lambda!176769 lambda!176750)))

(declare-fun bs!879408 () Bool)

(assert (= bs!879408 (and d!1404504 d!1404444)))

(assert (=> bs!879408 (= lambda!176769 lambda!176754)))

(declare-fun bs!879409 () Bool)

(assert (= bs!879409 (and d!1404504 d!1404492)))

(assert (=> bs!879409 (= lambda!176769 lambda!176768)))

(declare-fun bs!879410 () Bool)

(assert (= bs!879410 (and d!1404504 d!1404478)))

(assert (=> bs!879410 (not (= lambda!176769 lambda!176761))))

(declare-fun bs!879412 () Bool)

(assert (= bs!879412 (and d!1404504 b!4542476)))

(assert (=> bs!879412 (not (= lambda!176769 lambda!176666))))

(declare-fun bs!879414 () Bool)

(assert (= bs!879414 (and d!1404504 start!451080)))

(assert (=> bs!879414 (= lambda!176769 lambda!176665)))

(declare-fun lt!1717522 () ListMap!3685)

(assert (=> d!1404504 (invariantList!1051 (toList!4423 lt!1717522))))

(declare-fun e!2830863 () ListMap!3685)

(assert (=> d!1404504 (= lt!1717522 e!2830863)))

(declare-fun c!775887 () Bool)

(assert (=> d!1404504 (= c!775887 ((_ is Cons!50777) (toList!4424 (+!1620 lt!1717220 lt!1717207))))))

(assert (=> d!1404504 (forall!10361 (toList!4424 (+!1620 lt!1717220 lt!1717207)) lambda!176769)))

(assert (=> d!1404504 (= (extractMap!1264 (toList!4424 (+!1620 lt!1717220 lt!1717207))) lt!1717522)))

(declare-fun b!4542718 () Bool)

(assert (=> b!4542718 (= e!2830863 (addToMapMapFromBucket!735 (_2!28928 (h!56664 (toList!4424 (+!1620 lt!1717220 lt!1717207)))) (extractMap!1264 (t!357863 (toList!4424 (+!1620 lt!1717220 lt!1717207))))))))

(declare-fun b!4542719 () Bool)

(assert (=> b!4542719 (= e!2830863 (ListMap!3686 Nil!50776))))

(assert (= (and d!1404504 c!775887) b!4542718))

(assert (= (and d!1404504 (not c!775887)) b!4542719))

(declare-fun m!5311429 () Bool)

(assert (=> d!1404504 m!5311429))

(declare-fun m!5311431 () Bool)

(assert (=> d!1404504 m!5311431))

(declare-fun m!5311433 () Bool)

(assert (=> b!4542718 m!5311433))

(assert (=> b!4542718 m!5311433))

(declare-fun m!5311435 () Bool)

(assert (=> b!4542718 m!5311435))

(assert (=> b!4542485 d!1404504))

(declare-fun d!1404512 () Bool)

(declare-fun head!9496 (List!50901) tuple2!51268)

(assert (=> d!1404512 (= (head!9494 lm!1477) (head!9496 (toList!4424 lm!1477)))))

(declare-fun bs!879423 () Bool)

(assert (= bs!879423 d!1404512))

(declare-fun m!5311437 () Bool)

(assert (=> bs!879423 m!5311437))

(assert (=> b!4542485 d!1404512))

(declare-fun d!1404514 () Bool)

(assert (=> d!1404514 (= (eq!665 lt!1717213 lt!1717203) (= (content!8458 (toList!4423 lt!1717213)) (content!8458 (toList!4423 lt!1717203))))))

(declare-fun bs!879424 () Bool)

(assert (= bs!879424 d!1404514))

(declare-fun m!5311439 () Bool)

(assert (=> bs!879424 m!5311439))

(declare-fun m!5311441 () Bool)

(assert (=> bs!879424 m!5311441))

(assert (=> b!4542485 d!1404514))

(declare-fun bs!879428 () Bool)

(declare-fun d!1404516 () Bool)

(assert (= bs!879428 (and d!1404516 d!1404428)))

(declare-fun lambda!176772 () Int)

(assert (=> bs!879428 (= lambda!176772 lambda!176750)))

(declare-fun bs!879430 () Bool)

(assert (= bs!879430 (and d!1404516 d!1404444)))

(assert (=> bs!879430 (= lambda!176772 lambda!176754)))

(declare-fun bs!879431 () Bool)

(assert (= bs!879431 (and d!1404516 d!1404478)))

(assert (=> bs!879431 (not (= lambda!176772 lambda!176761))))

(declare-fun bs!879433 () Bool)

(assert (= bs!879433 (and d!1404516 b!4542476)))

(assert (=> bs!879433 (not (= lambda!176772 lambda!176666))))

(declare-fun bs!879435 () Bool)

(assert (= bs!879435 (and d!1404516 start!451080)))

(assert (=> bs!879435 (= lambda!176772 lambda!176665)))

(declare-fun bs!879437 () Bool)

(assert (= bs!879437 (and d!1404516 d!1404492)))

(assert (=> bs!879437 (= lambda!176772 lambda!176768)))

(declare-fun bs!879439 () Bool)

(assert (= bs!879439 (and d!1404516 d!1404504)))

(assert (=> bs!879439 (= lambda!176772 lambda!176769)))

(declare-fun lt!1717544 () ListMap!3685)

(assert (=> d!1404516 (invariantList!1051 (toList!4423 lt!1717544))))

(declare-fun e!2830867 () ListMap!3685)

(assert (=> d!1404516 (= lt!1717544 e!2830867)))

(declare-fun c!775889 () Bool)

(assert (=> d!1404516 (= c!775889 ((_ is Cons!50777) (toList!4424 lt!1717189)))))

(assert (=> d!1404516 (forall!10361 (toList!4424 lt!1717189) lambda!176772)))

(assert (=> d!1404516 (= (extractMap!1264 (toList!4424 lt!1717189)) lt!1717544)))

(declare-fun b!4542725 () Bool)

(assert (=> b!4542725 (= e!2830867 (addToMapMapFromBucket!735 (_2!28928 (h!56664 (toList!4424 lt!1717189))) (extractMap!1264 (t!357863 (toList!4424 lt!1717189)))))))

(declare-fun b!4542726 () Bool)

(assert (=> b!4542726 (= e!2830867 (ListMap!3686 Nil!50776))))

(assert (= (and d!1404516 c!775889) b!4542725))

(assert (= (and d!1404516 (not c!775889)) b!4542726))

(declare-fun m!5311443 () Bool)

(assert (=> d!1404516 m!5311443))

(declare-fun m!5311445 () Bool)

(assert (=> d!1404516 m!5311445))

(declare-fun m!5311447 () Bool)

(assert (=> b!4542725 m!5311447))

(assert (=> b!4542725 m!5311447))

(declare-fun m!5311449 () Bool)

(assert (=> b!4542725 m!5311449))

(assert (=> b!4542485 d!1404516))

(declare-fun d!1404518 () Bool)

(assert (=> d!1404518 (= (eq!665 lt!1717196 lt!1717211) (= (content!8458 (toList!4423 lt!1717196)) (content!8458 (toList!4423 lt!1717211))))))

(declare-fun bs!879441 () Bool)

(assert (= bs!879441 d!1404518))

(declare-fun m!5311451 () Bool)

(assert (=> bs!879441 m!5311451))

(declare-fun m!5311453 () Bool)

(assert (=> bs!879441 m!5311453))

(assert (=> b!4542485 d!1404518))

(declare-fun bs!879444 () Bool)

(declare-fun d!1404520 () Bool)

(assert (= bs!879444 (and d!1404520 b!4542553)))

(declare-fun lambda!176777 () Int)

(assert (=> bs!879444 (not (= lambda!176777 lambda!176735))))

(declare-fun bs!879447 () Bool)

(assert (= bs!879447 (and d!1404520 b!4542476)))

(assert (=> bs!879447 (= (= hash!344 (_1!28928 (h!56664 (toList!4424 lm!1477)))) (= lambda!176777 lambda!176667))))

(declare-fun bs!879449 () Bool)

(assert (= bs!879449 (and d!1404520 b!4542569)))

(assert (=> bs!879449 (not (= lambda!176777 lambda!176745))))

(declare-fun bs!879450 () Bool)

(assert (= bs!879450 (and d!1404520 b!4542552)))

(assert (=> bs!879450 (not (= lambda!176777 lambda!176734))))

(declare-fun bs!879452 () Bool)

(assert (= bs!879452 (and d!1404520 d!1404422)))

(assert (=> bs!879452 (not (= lambda!176777 lambda!176747))))

(assert (=> bs!879444 (not (= lambda!176777 lambda!176736))))

(declare-fun bs!879454 () Bool)

(assert (= bs!879454 (and d!1404520 d!1404390)))

(assert (=> bs!879454 (not (= lambda!176777 lambda!176737))))

(declare-fun bs!879456 () Bool)

(assert (= bs!879456 (and d!1404520 b!4542568)))

(assert (=> bs!879456 (not (= lambda!176777 lambda!176744))))

(assert (=> bs!879449 (not (= lambda!176777 lambda!176746))))

(assert (=> d!1404520 true))

(assert (=> d!1404520 true))

(assert (=> d!1404520 (= (allKeysSameHash!1062 newBucket!178 hash!344 hashF!1107) (forall!10363 newBucket!178 lambda!176777))))

(declare-fun bs!879459 () Bool)

(assert (= bs!879459 d!1404520))

(declare-fun m!5311455 () Bool)

(assert (=> bs!879459 m!5311455))

(assert (=> b!4542462 d!1404520))

(declare-fun d!1404522 () Bool)

(assert (=> d!1404522 (= (eq!665 lt!1717216 lt!1717214) (= (content!8458 (toList!4423 lt!1717216)) (content!8458 (toList!4423 lt!1717214))))))

(declare-fun bs!879460 () Bool)

(assert (= bs!879460 d!1404522))

(assert (=> bs!879460 m!5310969))

(declare-fun m!5311457 () Bool)

(assert (=> bs!879460 m!5311457))

(assert (=> b!4542483 d!1404522))

(declare-fun d!1404524 () Bool)

(declare-fun e!2830868 () Bool)

(assert (=> d!1404524 e!2830868))

(declare-fun res!1893663 () Bool)

(assert (=> d!1404524 (=> (not res!1893663) (not e!2830868))))

(declare-fun lt!1717545 () ListMap!3685)

(assert (=> d!1404524 (= res!1893663 (not (contains!13583 lt!1717545 key!3287)))))

(assert (=> d!1404524 (= lt!1717545 (ListMap!3686 (removePresrvNoDuplicatedKeys!175 (toList!4423 lt!1717203) key!3287)))))

(assert (=> d!1404524 (= (-!434 lt!1717203 key!3287) lt!1717545)))

(declare-fun b!4542729 () Bool)

(assert (=> b!4542729 (= e!2830868 (= ((_ map and) (content!8460 (keys!17676 lt!1717203)) ((_ map not) (store ((as const (Array K!12160 Bool)) false) key!3287 true))) (content!8460 (keys!17676 lt!1717545))))))

(assert (= (and d!1404524 res!1893663) b!4542729))

(declare-fun m!5311459 () Bool)

(assert (=> d!1404524 m!5311459))

(declare-fun m!5311461 () Bool)

(assert (=> d!1404524 m!5311461))

(assert (=> b!4542729 m!5311383))

(declare-fun m!5311463 () Bool)

(assert (=> b!4542729 m!5311463))

(assert (=> b!4542729 m!5311195))

(assert (=> b!4542729 m!5311195))

(declare-fun m!5311465 () Bool)

(assert (=> b!4542729 m!5311465))

(assert (=> b!4542729 m!5311463))

(declare-fun m!5311467 () Bool)

(assert (=> b!4542729 m!5311467))

(assert (=> b!4542483 d!1404524))

(declare-fun d!1404526 () Bool)

(declare-fun res!1893668 () Bool)

(declare-fun e!2830873 () Bool)

(assert (=> d!1404526 (=> res!1893668 e!2830873)))

(assert (=> d!1404526 (= res!1893668 (not ((_ is Cons!50776) (_2!28928 lt!1717207))))))

(assert (=> d!1404526 (= (noDuplicateKeys!1208 (_2!28928 lt!1717207)) e!2830873)))

(declare-fun b!4542734 () Bool)

(declare-fun e!2830874 () Bool)

(assert (=> b!4542734 (= e!2830873 e!2830874)))

(declare-fun res!1893669 () Bool)

(assert (=> b!4542734 (=> (not res!1893669) (not e!2830874))))

(assert (=> b!4542734 (= res!1893669 (not (containsKey!1896 (t!357862 (_2!28928 lt!1717207)) (_1!28927 (h!56663 (_2!28928 lt!1717207))))))))

(declare-fun b!4542735 () Bool)

(assert (=> b!4542735 (= e!2830874 (noDuplicateKeys!1208 (t!357862 (_2!28928 lt!1717207))))))

(assert (= (and d!1404526 (not res!1893668)) b!4542734))

(assert (= (and b!4542734 res!1893669) b!4542735))

(declare-fun m!5311501 () Bool)

(assert (=> b!4542734 m!5311501))

(declare-fun m!5311503 () Bool)

(assert (=> b!4542735 m!5311503))

(assert (=> b!4542484 d!1404526))

(declare-fun d!1404530 () Bool)

(declare-fun dynLambda!21228 (Int tuple2!51268) Bool)

(assert (=> d!1404530 (dynLambda!21228 lambda!176665 (h!56664 (toList!4424 lm!1477)))))

(declare-fun lt!1717548 () Unit!98910)

(declare-fun choose!29965 (List!50901 Int tuple2!51268) Unit!98910)

(assert (=> d!1404530 (= lt!1717548 (choose!29965 (toList!4424 lm!1477) lambda!176665 (h!56664 (toList!4424 lm!1477))))))

(declare-fun e!2830877 () Bool)

(assert (=> d!1404530 e!2830877))

(declare-fun res!1893672 () Bool)

(assert (=> d!1404530 (=> (not res!1893672) (not e!2830877))))

(assert (=> d!1404530 (= res!1893672 (forall!10361 (toList!4424 lm!1477) lambda!176665))))

(assert (=> d!1404530 (= (forallContained!2626 (toList!4424 lm!1477) lambda!176665 (h!56664 (toList!4424 lm!1477))) lt!1717548)))

(declare-fun b!4542738 () Bool)

(assert (=> b!4542738 (= e!2830877 (contains!13584 (toList!4424 lm!1477) (h!56664 (toList!4424 lm!1477))))))

(assert (= (and d!1404530 res!1893672) b!4542738))

(declare-fun b_lambda!158215 () Bool)

(assert (=> (not b_lambda!158215) (not d!1404530)))

(declare-fun m!5311505 () Bool)

(assert (=> d!1404530 m!5311505))

(declare-fun m!5311507 () Bool)

(assert (=> d!1404530 m!5311507))

(assert (=> d!1404530 m!5310911))

(declare-fun m!5311509 () Bool)

(assert (=> b!4542738 m!5311509))

(assert (=> b!4542484 d!1404530))

(declare-fun d!1404532 () Bool)

(declare-fun res!1893681 () Bool)

(declare-fun e!2830885 () Bool)

(assert (=> d!1404532 (=> res!1893681 e!2830885)))

(declare-fun e!2830886 () Bool)

(assert (=> d!1404532 (= res!1893681 e!2830886)))

(declare-fun res!1893680 () Bool)

(assert (=> d!1404532 (=> (not res!1893680) (not e!2830886))))

(assert (=> d!1404532 (= res!1893680 ((_ is Cons!50777) (t!357863 (toList!4424 lm!1477))))))

(assert (=> d!1404532 (= (containsKeyBiggerList!188 (t!357863 (toList!4424 lm!1477)) key!3287) e!2830885)))

(declare-fun b!4542745 () Bool)

(assert (=> b!4542745 (= e!2830886 (containsKey!1896 (_2!28928 (h!56664 (t!357863 (toList!4424 lm!1477)))) key!3287))))

(declare-fun b!4542746 () Bool)

(declare-fun e!2830884 () Bool)

(assert (=> b!4542746 (= e!2830885 e!2830884)))

(declare-fun res!1893679 () Bool)

(assert (=> b!4542746 (=> (not res!1893679) (not e!2830884))))

(assert (=> b!4542746 (= res!1893679 ((_ is Cons!50777) (t!357863 (toList!4424 lm!1477))))))

(declare-fun b!4542747 () Bool)

(assert (=> b!4542747 (= e!2830884 (containsKeyBiggerList!188 (t!357863 (t!357863 (toList!4424 lm!1477))) key!3287))))

(assert (= (and d!1404532 res!1893680) b!4542745))

(assert (= (and d!1404532 (not res!1893681)) b!4542746))

(assert (= (and b!4542746 res!1893679) b!4542747))

(declare-fun m!5311511 () Bool)

(assert (=> b!4542745 m!5311511))

(declare-fun m!5311513 () Bool)

(assert (=> b!4542747 m!5311513))

(assert (=> b!4542475 d!1404532))

(declare-fun d!1404534 () Bool)

(declare-fun res!1893684 () Bool)

(declare-fun e!2830888 () Bool)

(assert (=> d!1404534 (=> res!1893684 e!2830888)))

(declare-fun e!2830889 () Bool)

(assert (=> d!1404534 (= res!1893684 e!2830889)))

(declare-fun res!1893683 () Bool)

(assert (=> d!1404534 (=> (not res!1893683) (not e!2830889))))

(assert (=> d!1404534 (= res!1893683 ((_ is Cons!50777) (toList!4424 lt!1717220)))))

(assert (=> d!1404534 (= (containsKeyBiggerList!188 (toList!4424 lt!1717220) key!3287) e!2830888)))

(declare-fun b!4542748 () Bool)

(assert (=> b!4542748 (= e!2830889 (containsKey!1896 (_2!28928 (h!56664 (toList!4424 lt!1717220))) key!3287))))

(declare-fun b!4542749 () Bool)

(declare-fun e!2830887 () Bool)

(assert (=> b!4542749 (= e!2830888 e!2830887)))

(declare-fun res!1893682 () Bool)

(assert (=> b!4542749 (=> (not res!1893682) (not e!2830887))))

(assert (=> b!4542749 (= res!1893682 ((_ is Cons!50777) (toList!4424 lt!1717220)))))

(declare-fun b!4542750 () Bool)

(assert (=> b!4542750 (= e!2830887 (containsKeyBiggerList!188 (t!357863 (toList!4424 lt!1717220)) key!3287))))

(assert (= (and d!1404534 res!1893683) b!4542748))

(assert (= (and d!1404534 (not res!1893684)) b!4542749))

(assert (= (and b!4542749 res!1893682) b!4542750))

(declare-fun m!5311515 () Bool)

(assert (=> b!4542748 m!5311515))

(declare-fun m!5311517 () Bool)

(assert (=> b!4542750 m!5311517))

(assert (=> b!4542475 d!1404534))

(declare-fun bs!879463 () Bool)

(declare-fun d!1404536 () Bool)

(assert (= bs!879463 (and d!1404536 d!1404428)))

(declare-fun lambda!176780 () Int)

(assert (=> bs!879463 (= lambda!176780 lambda!176750)))

(declare-fun bs!879464 () Bool)

(assert (= bs!879464 (and d!1404536 d!1404444)))

(assert (=> bs!879464 (= lambda!176780 lambda!176754)))

(declare-fun bs!879465 () Bool)

(assert (= bs!879465 (and d!1404536 d!1404478)))

(assert (=> bs!879465 (not (= lambda!176780 lambda!176761))))

(declare-fun bs!879466 () Bool)

(assert (= bs!879466 (and d!1404536 b!4542476)))

(assert (=> bs!879466 (not (= lambda!176780 lambda!176666))))

(declare-fun bs!879467 () Bool)

(assert (= bs!879467 (and d!1404536 start!451080)))

(assert (=> bs!879467 (= lambda!176780 lambda!176665)))

(declare-fun bs!879468 () Bool)

(assert (= bs!879468 (and d!1404536 d!1404516)))

(assert (=> bs!879468 (= lambda!176780 lambda!176772)))

(declare-fun bs!879469 () Bool)

(assert (= bs!879469 (and d!1404536 d!1404492)))

(assert (=> bs!879469 (= lambda!176780 lambda!176768)))

(declare-fun bs!879470 () Bool)

(assert (= bs!879470 (and d!1404536 d!1404504)))

(assert (=> bs!879470 (= lambda!176780 lambda!176769)))

(assert (=> d!1404536 (containsKeyBiggerList!188 (toList!4424 lt!1717220) key!3287)))

(declare-fun lt!1717554 () Unit!98910)

(declare-fun choose!29967 (ListLongMap!3055 K!12160 Hashable!5603) Unit!98910)

(assert (=> d!1404536 (= lt!1717554 (choose!29967 lt!1717220 key!3287 hashF!1107))))

(assert (=> d!1404536 (forall!10361 (toList!4424 lt!1717220) lambda!176780)))

(assert (=> d!1404536 (= (lemmaInLongMapThenContainsKeyBiggerList!124 lt!1717220 key!3287 hashF!1107) lt!1717554)))

(declare-fun bs!879471 () Bool)

(assert (= bs!879471 d!1404536))

(assert (=> bs!879471 m!5310883))

(declare-fun m!5311523 () Bool)

(assert (=> bs!879471 m!5311523))

(declare-fun m!5311525 () Bool)

(assert (=> bs!879471 m!5311525))

(assert (=> b!4542475 d!1404536))

(declare-fun b!4542767 () Bool)

(declare-fun e!2830902 () Bool)

(declare-fun e!2830901 () Bool)

(assert (=> b!4542767 (= e!2830902 e!2830901)))

(declare-fun res!1893695 () Bool)

(assert (=> b!4542767 (=> (not res!1893695) (not e!2830901))))

(declare-fun lt!1717557 () Option!11223)

(declare-fun isDefined!8500 (Option!11223) Bool)

(assert (=> b!4542767 (= res!1893695 (isDefined!8500 lt!1717557))))

(declare-fun b!4542768 () Bool)

(declare-fun e!2830903 () Option!11223)

(assert (=> b!4542768 (= e!2830903 (getPair!224 (t!357862 (_2!28928 lt!1717207)) key!3287))))

(declare-fun b!4542769 () Bool)

(declare-fun res!1893693 () Bool)

(assert (=> b!4542769 (=> (not res!1893693) (not e!2830901))))

(assert (=> b!4542769 (= res!1893693 (= (_1!28927 (get!16706 lt!1717557)) key!3287))))

(declare-fun d!1404542 () Bool)

(assert (=> d!1404542 e!2830902))

(declare-fun res!1893694 () Bool)

(assert (=> d!1404542 (=> res!1893694 e!2830902)))

(declare-fun e!2830900 () Bool)

(assert (=> d!1404542 (= res!1893694 e!2830900)))

(declare-fun res!1893696 () Bool)

(assert (=> d!1404542 (=> (not res!1893696) (not e!2830900))))

(declare-fun isEmpty!28759 (Option!11223) Bool)

(assert (=> d!1404542 (= res!1893696 (isEmpty!28759 lt!1717557))))

(declare-fun e!2830904 () Option!11223)

(assert (=> d!1404542 (= lt!1717557 e!2830904)))

(declare-fun c!775895 () Bool)

(assert (=> d!1404542 (= c!775895 (and ((_ is Cons!50776) (_2!28928 lt!1717207)) (= (_1!28927 (h!56663 (_2!28928 lt!1717207))) key!3287)))))

(assert (=> d!1404542 (noDuplicateKeys!1208 (_2!28928 lt!1717207))))

(assert (=> d!1404542 (= (getPair!224 (_2!28928 lt!1717207) key!3287) lt!1717557)))

(declare-fun b!4542770 () Bool)

(assert (=> b!4542770 (= e!2830904 (Some!11222 (h!56663 (_2!28928 lt!1717207))))))

(declare-fun b!4542771 () Bool)

(assert (=> b!4542771 (= e!2830904 e!2830903)))

(declare-fun c!775894 () Bool)

(assert (=> b!4542771 (= c!775894 ((_ is Cons!50776) (_2!28928 lt!1717207)))))

(declare-fun b!4542772 () Bool)

(declare-fun contains!13588 (List!50900 tuple2!51266) Bool)

(assert (=> b!4542772 (= e!2830901 (contains!13588 (_2!28928 lt!1717207) (get!16706 lt!1717557)))))

(declare-fun b!4542773 () Bool)

(assert (=> b!4542773 (= e!2830900 (not (containsKey!1896 (_2!28928 lt!1717207) key!3287)))))

(declare-fun b!4542774 () Bool)

(assert (=> b!4542774 (= e!2830903 None!11222)))

(assert (= (and d!1404542 c!775895) b!4542770))

(assert (= (and d!1404542 (not c!775895)) b!4542771))

(assert (= (and b!4542771 c!775894) b!4542768))

(assert (= (and b!4542771 (not c!775894)) b!4542774))

(assert (= (and d!1404542 res!1893696) b!4542773))

(assert (= (and d!1404542 (not res!1893694)) b!4542767))

(assert (= (and b!4542767 res!1893695) b!4542769))

(assert (= (and b!4542769 res!1893693) b!4542772))

(declare-fun m!5311527 () Bool)

(assert (=> d!1404542 m!5311527))

(assert (=> d!1404542 m!5310895))

(declare-fun m!5311529 () Bool)

(assert (=> b!4542769 m!5311529))

(declare-fun m!5311531 () Bool)

(assert (=> b!4542768 m!5311531))

(assert (=> b!4542773 m!5310889))

(declare-fun m!5311533 () Bool)

(assert (=> b!4542767 m!5311533))

(assert (=> b!4542772 m!5311529))

(assert (=> b!4542772 m!5311529))

(declare-fun m!5311535 () Bool)

(assert (=> b!4542772 m!5311535))

(assert (=> b!4542476 d!1404542))

(declare-fun d!1404544 () Bool)

(assert (=> d!1404544 (dynLambda!21228 lambda!176666 (h!56664 (toList!4424 lm!1477)))))

(declare-fun lt!1717558 () Unit!98910)

(assert (=> d!1404544 (= lt!1717558 (choose!29965 (toList!4424 lm!1477) lambda!176666 (h!56664 (toList!4424 lm!1477))))))

(declare-fun e!2830905 () Bool)

(assert (=> d!1404544 e!2830905))

(declare-fun res!1893697 () Bool)

(assert (=> d!1404544 (=> (not res!1893697) (not e!2830905))))

(assert (=> d!1404544 (= res!1893697 (forall!10361 (toList!4424 lm!1477) lambda!176666))))

(assert (=> d!1404544 (= (forallContained!2626 (toList!4424 lm!1477) lambda!176666 (h!56664 (toList!4424 lm!1477))) lt!1717558)))

(declare-fun b!4542775 () Bool)

(assert (=> b!4542775 (= e!2830905 (contains!13584 (toList!4424 lm!1477) (h!56664 (toList!4424 lm!1477))))))

(assert (= (and d!1404544 res!1893697) b!4542775))

(declare-fun b_lambda!158217 () Bool)

(assert (=> (not b_lambda!158217) (not d!1404544)))

(declare-fun m!5311537 () Bool)

(assert (=> d!1404544 m!5311537))

(declare-fun m!5311539 () Bool)

(assert (=> d!1404544 m!5311539))

(declare-fun m!5311541 () Bool)

(assert (=> d!1404544 m!5311541))

(assert (=> b!4542775 m!5311509))

(assert (=> b!4542476 d!1404544))

(declare-fun d!1404546 () Bool)

(declare-fun dynLambda!21229 (Int tuple2!51266) Bool)

(assert (=> d!1404546 (dynLambda!21229 lambda!176667 (tuple2!51267 key!3287 (_2!28927 (get!16706 lt!1717190))))))

(declare-fun lt!1717561 () Unit!98910)

(declare-fun choose!29968 (List!50900 Int tuple2!51266) Unit!98910)

(assert (=> d!1404546 (= lt!1717561 (choose!29968 (_2!28928 (h!56664 (toList!4424 lm!1477))) lambda!176667 (tuple2!51267 key!3287 (_2!28927 (get!16706 lt!1717190)))))))

(declare-fun e!2830908 () Bool)

(assert (=> d!1404546 e!2830908))

(declare-fun res!1893700 () Bool)

(assert (=> d!1404546 (=> (not res!1893700) (not e!2830908))))

(assert (=> d!1404546 (= res!1893700 (forall!10363 (_2!28928 (h!56664 (toList!4424 lm!1477))) lambda!176667))))

(assert (=> d!1404546 (= (forallContained!2627 (_2!28928 (h!56664 (toList!4424 lm!1477))) lambda!176667 (tuple2!51267 key!3287 (_2!28927 (get!16706 lt!1717190)))) lt!1717561)))

(declare-fun b!4542778 () Bool)

(assert (=> b!4542778 (= e!2830908 (contains!13588 (_2!28928 (h!56664 (toList!4424 lm!1477))) (tuple2!51267 key!3287 (_2!28927 (get!16706 lt!1717190)))))))

(assert (= (and d!1404546 res!1893700) b!4542778))

(declare-fun b_lambda!158219 () Bool)

(assert (=> (not b_lambda!158219) (not d!1404546)))

(declare-fun m!5311543 () Bool)

(assert (=> d!1404546 m!5311543))

(declare-fun m!5311545 () Bool)

(assert (=> d!1404546 m!5311545))

(declare-fun m!5311547 () Bool)

(assert (=> d!1404546 m!5311547))

(declare-fun m!5311549 () Bool)

(assert (=> b!4542778 m!5311549))

(assert (=> b!4542476 d!1404546))

(declare-fun d!1404548 () Bool)

(assert (=> d!1404548 (= (get!16706 lt!1717190) (v!44932 lt!1717190))))

(assert (=> b!4542476 d!1404548))

(declare-fun d!1404550 () Bool)

(declare-fun res!1893701 () Bool)

(declare-fun e!2830913 () Bool)

(assert (=> d!1404550 (=> res!1893701 e!2830913)))

(assert (=> d!1404550 (= res!1893701 (and ((_ is Cons!50776) (_2!28928 lt!1717207)) (= (_1!28927 (h!56663 (_2!28928 lt!1717207))) key!3287)))))

(assert (=> d!1404550 (= (containsKey!1896 (_2!28928 lt!1717207) key!3287) e!2830913)))

(declare-fun b!4542787 () Bool)

(declare-fun e!2830914 () Bool)

(assert (=> b!4542787 (= e!2830913 e!2830914)))

(declare-fun res!1893702 () Bool)

(assert (=> b!4542787 (=> (not res!1893702) (not e!2830914))))

(assert (=> b!4542787 (= res!1893702 ((_ is Cons!50776) (_2!28928 lt!1717207)))))

(declare-fun b!4542788 () Bool)

(assert (=> b!4542788 (= e!2830914 (containsKey!1896 (t!357862 (_2!28928 lt!1717207)) key!3287))))

(assert (= (and d!1404550 (not res!1893701)) b!4542787))

(assert (= (and b!4542787 res!1893702) b!4542788))

(declare-fun m!5311551 () Bool)

(assert (=> b!4542788 m!5311551))

(assert (=> b!4542479 d!1404550))

(declare-fun d!1404552 () Bool)

(assert (=> d!1404552 (= (eq!665 (extractMap!1264 (toList!4424 lt!1717217)) lt!1717214) (= (content!8458 (toList!4423 (extractMap!1264 (toList!4424 lt!1717217)))) (content!8458 (toList!4423 lt!1717214))))))

(declare-fun bs!879472 () Bool)

(assert (= bs!879472 d!1404552))

(declare-fun m!5311553 () Bool)

(assert (=> bs!879472 m!5311553))

(assert (=> bs!879472 m!5311457))

(assert (=> b!4542480 d!1404552))

(declare-fun bs!879473 () Bool)

(declare-fun d!1404554 () Bool)

(assert (= bs!879473 (and d!1404554 d!1404428)))

(declare-fun lambda!176781 () Int)

(assert (=> bs!879473 (= lambda!176781 lambda!176750)))

(declare-fun bs!879474 () Bool)

(assert (= bs!879474 (and d!1404554 d!1404444)))

(assert (=> bs!879474 (= lambda!176781 lambda!176754)))

(declare-fun bs!879475 () Bool)

(assert (= bs!879475 (and d!1404554 d!1404478)))

(assert (=> bs!879475 (not (= lambda!176781 lambda!176761))))

(declare-fun bs!879476 () Bool)

(assert (= bs!879476 (and d!1404554 b!4542476)))

(assert (=> bs!879476 (not (= lambda!176781 lambda!176666))))

(declare-fun bs!879477 () Bool)

(assert (= bs!879477 (and d!1404554 start!451080)))

(assert (=> bs!879477 (= lambda!176781 lambda!176665)))

(declare-fun bs!879478 () Bool)

(assert (= bs!879478 (and d!1404554 d!1404516)))

(assert (=> bs!879478 (= lambda!176781 lambda!176772)))

(declare-fun bs!879479 () Bool)

(assert (= bs!879479 (and d!1404554 d!1404536)))

(assert (=> bs!879479 (= lambda!176781 lambda!176780)))

(declare-fun bs!879480 () Bool)

(assert (= bs!879480 (and d!1404554 d!1404492)))

(assert (=> bs!879480 (= lambda!176781 lambda!176768)))

(declare-fun bs!879481 () Bool)

(assert (= bs!879481 (and d!1404554 d!1404504)))

(assert (=> bs!879481 (= lambda!176781 lambda!176769)))

(declare-fun lt!1717578 () ListMap!3685)

(assert (=> d!1404554 (invariantList!1051 (toList!4423 lt!1717578))))

(declare-fun e!2830917 () ListMap!3685)

(assert (=> d!1404554 (= lt!1717578 e!2830917)))

(declare-fun c!775902 () Bool)

(assert (=> d!1404554 (= c!775902 ((_ is Cons!50777) (toList!4424 lt!1717217)))))

(assert (=> d!1404554 (forall!10361 (toList!4424 lt!1717217) lambda!176781)))

(assert (=> d!1404554 (= (extractMap!1264 (toList!4424 lt!1717217)) lt!1717578)))

(declare-fun b!4542793 () Bool)

(assert (=> b!4542793 (= e!2830917 (addToMapMapFromBucket!735 (_2!28928 (h!56664 (toList!4424 lt!1717217))) (extractMap!1264 (t!357863 (toList!4424 lt!1717217)))))))

(declare-fun b!4542794 () Bool)

(assert (=> b!4542794 (= e!2830917 (ListMap!3686 Nil!50776))))

(assert (= (and d!1404554 c!775902) b!4542793))

(assert (= (and d!1404554 (not c!775902)) b!4542794))

(declare-fun m!5311555 () Bool)

(assert (=> d!1404554 m!5311555))

(declare-fun m!5311557 () Bool)

(assert (=> d!1404554 m!5311557))

(declare-fun m!5311559 () Bool)

(assert (=> b!4542793 m!5311559))

(assert (=> b!4542793 m!5311559))

(declare-fun m!5311561 () Bool)

(assert (=> b!4542793 m!5311561))

(assert (=> b!4542480 d!1404554))

(declare-fun d!1404556 () Bool)

(declare-fun res!1893713 () Bool)

(declare-fun e!2830928 () Bool)

(assert (=> d!1404556 (=> res!1893713 e!2830928)))

(assert (=> d!1404556 (= res!1893713 ((_ is Nil!50777) (toList!4424 lm!1477)))))

(assert (=> d!1404556 (= (forall!10361 (toList!4424 lm!1477) lambda!176665) e!2830928)))

(declare-fun b!4542805 () Bool)

(declare-fun e!2830929 () Bool)

(assert (=> b!4542805 (= e!2830928 e!2830929)))

(declare-fun res!1893714 () Bool)

(assert (=> b!4542805 (=> (not res!1893714) (not e!2830929))))

(assert (=> b!4542805 (= res!1893714 (dynLambda!21228 lambda!176665 (h!56664 (toList!4424 lm!1477))))))

(declare-fun b!4542806 () Bool)

(assert (=> b!4542806 (= e!2830929 (forall!10361 (t!357863 (toList!4424 lm!1477)) lambda!176665))))

(assert (= (and d!1404556 (not res!1893713)) b!4542805))

(assert (= (and b!4542805 res!1893714) b!4542806))

(declare-fun b_lambda!158221 () Bool)

(assert (=> (not b_lambda!158221) (not b!4542805)))

(assert (=> b!4542805 m!5311505))

(declare-fun m!5311563 () Bool)

(assert (=> b!4542806 m!5311563))

(assert (=> start!451080 d!1404556))

(declare-fun d!1404558 () Bool)

(declare-fun isStrictlySorted!465 (List!50901) Bool)

(assert (=> d!1404558 (= (inv!66344 lm!1477) (isStrictlySorted!465 (toList!4424 lm!1477)))))

(declare-fun bs!879482 () Bool)

(assert (= bs!879482 d!1404558))

(declare-fun m!5311575 () Bool)

(assert (=> bs!879482 m!5311575))

(assert (=> start!451080 d!1404558))

(declare-fun d!1404560 () Bool)

(declare-fun res!1893718 () Bool)

(declare-fun e!2830936 () Bool)

(assert (=> d!1404560 (=> res!1893718 e!2830936)))

(assert (=> d!1404560 (= res!1893718 (not ((_ is Cons!50776) newBucket!178)))))

(assert (=> d!1404560 (= (noDuplicateKeys!1208 newBucket!178) e!2830936)))

(declare-fun b!4542816 () Bool)

(declare-fun e!2830937 () Bool)

(assert (=> b!4542816 (= e!2830936 e!2830937)))

(declare-fun res!1893719 () Bool)

(assert (=> b!4542816 (=> (not res!1893719) (not e!2830937))))

(assert (=> b!4542816 (= res!1893719 (not (containsKey!1896 (t!357862 newBucket!178) (_1!28927 (h!56663 newBucket!178)))))))

(declare-fun b!4542817 () Bool)

(assert (=> b!4542817 (= e!2830937 (noDuplicateKeys!1208 (t!357862 newBucket!178)))))

(assert (= (and d!1404560 (not res!1893718)) b!4542816))

(assert (= (and b!4542816 res!1893719) b!4542817))

(declare-fun m!5311585 () Bool)

(assert (=> b!4542816 m!5311585))

(declare-fun m!5311587 () Bool)

(assert (=> b!4542817 m!5311587))

(assert (=> b!4542471 d!1404560))

(declare-fun b!4542820 () Bool)

(declare-fun e!2830939 () Bool)

(assert (=> b!4542820 (= e!2830939 (not (contains!13587 (keys!17676 (extractMap!1264 (t!357863 (toList!4424 lm!1477)))) key!3287)))))

(declare-fun b!4542821 () Bool)

(declare-fun e!2830941 () List!50903)

(assert (=> b!4542821 (= e!2830941 (keys!17676 (extractMap!1264 (t!357863 (toList!4424 lm!1477)))))))

(declare-fun b!4542822 () Bool)

(assert (=> b!4542822 (= e!2830941 (getKeysList!498 (toList!4423 (extractMap!1264 (t!357863 (toList!4424 lm!1477))))))))

(declare-fun b!4542823 () Bool)

(declare-fun e!2830943 () Unit!98910)

(declare-fun lt!1717594 () Unit!98910)

(assert (=> b!4542823 (= e!2830943 lt!1717594)))

(declare-fun lt!1717595 () Unit!98910)

(assert (=> b!4542823 (= lt!1717595 (lemmaContainsKeyImpliesGetValueByKeyDefined!1063 (toList!4423 (extractMap!1264 (t!357863 (toList!4424 lm!1477)))) key!3287))))

(assert (=> b!4542823 (isDefined!8499 (getValueByKey!1159 (toList!4423 (extractMap!1264 (t!357863 (toList!4424 lm!1477)))) key!3287))))

(declare-fun lt!1717588 () Unit!98910)

(assert (=> b!4542823 (= lt!1717588 lt!1717595)))

(assert (=> b!4542823 (= lt!1717594 (lemmaInListThenGetKeysListContains!494 (toList!4423 (extractMap!1264 (t!357863 (toList!4424 lm!1477)))) key!3287))))

(declare-fun call!316791 () Bool)

(assert (=> b!4542823 call!316791))

(declare-fun b!4542824 () Bool)

(declare-fun e!2830944 () Bool)

(assert (=> b!4542824 (= e!2830944 (contains!13587 (keys!17676 (extractMap!1264 (t!357863 (toList!4424 lm!1477)))) key!3287))))

(declare-fun b!4542825 () Bool)

(declare-fun e!2830940 () Bool)

(assert (=> b!4542825 (= e!2830940 e!2830944)))

(declare-fun res!1893721 () Bool)

(assert (=> b!4542825 (=> (not res!1893721) (not e!2830944))))

(assert (=> b!4542825 (= res!1893721 (isDefined!8499 (getValueByKey!1159 (toList!4423 (extractMap!1264 (t!357863 (toList!4424 lm!1477)))) key!3287)))))

(declare-fun bm!316786 () Bool)

(assert (=> bm!316786 (= call!316791 (contains!13587 e!2830941 key!3287))))

(declare-fun c!775909 () Bool)

(declare-fun c!775908 () Bool)

(assert (=> bm!316786 (= c!775909 c!775908)))

(declare-fun d!1404564 () Bool)

(assert (=> d!1404564 e!2830940))

(declare-fun res!1893720 () Bool)

(assert (=> d!1404564 (=> res!1893720 e!2830940)))

(assert (=> d!1404564 (= res!1893720 e!2830939)))

(declare-fun res!1893722 () Bool)

(assert (=> d!1404564 (=> (not res!1893722) (not e!2830939))))

(declare-fun lt!1717593 () Bool)

(assert (=> d!1404564 (= res!1893722 (not lt!1717593))))

(declare-fun lt!1717591 () Bool)

(assert (=> d!1404564 (= lt!1717593 lt!1717591)))

(declare-fun lt!1717589 () Unit!98910)

(assert (=> d!1404564 (= lt!1717589 e!2830943)))

(assert (=> d!1404564 (= c!775908 lt!1717591)))

(assert (=> d!1404564 (= lt!1717591 (containsKey!1898 (toList!4423 (extractMap!1264 (t!357863 (toList!4424 lm!1477)))) key!3287))))

(assert (=> d!1404564 (= (contains!13583 (extractMap!1264 (t!357863 (toList!4424 lm!1477))) key!3287) lt!1717593)))

(declare-fun b!4542826 () Bool)

(assert (=> b!4542826 false))

(declare-fun lt!1717592 () Unit!98910)

(declare-fun lt!1717590 () Unit!98910)

(assert (=> b!4542826 (= lt!1717592 lt!1717590)))

(assert (=> b!4542826 (containsKey!1898 (toList!4423 (extractMap!1264 (t!357863 (toList!4424 lm!1477)))) key!3287)))

(assert (=> b!4542826 (= lt!1717590 (lemmaInGetKeysListThenContainsKey!497 (toList!4423 (extractMap!1264 (t!357863 (toList!4424 lm!1477)))) key!3287))))

(declare-fun e!2830942 () Unit!98910)

(declare-fun Unit!98975 () Unit!98910)

(assert (=> b!4542826 (= e!2830942 Unit!98975)))

(declare-fun b!4542827 () Bool)

(declare-fun Unit!98976 () Unit!98910)

(assert (=> b!4542827 (= e!2830942 Unit!98976)))

(declare-fun b!4542828 () Bool)

(assert (=> b!4542828 (= e!2830943 e!2830942)))

(declare-fun c!775907 () Bool)

(assert (=> b!4542828 (= c!775907 call!316791)))

(assert (= (and d!1404564 c!775908) b!4542823))

(assert (= (and d!1404564 (not c!775908)) b!4542828))

(assert (= (and b!4542828 c!775907) b!4542826))

(assert (= (and b!4542828 (not c!775907)) b!4542827))

(assert (= (or b!4542823 b!4542828) bm!316786))

(assert (= (and bm!316786 c!775909) b!4542822))

(assert (= (and bm!316786 (not c!775909)) b!4542821))

(assert (= (and d!1404564 res!1893722) b!4542820))

(assert (= (and d!1404564 (not res!1893720)) b!4542825))

(assert (= (and b!4542825 res!1893721) b!4542824))

(declare-fun m!5311589 () Bool)

(assert (=> b!4542822 m!5311589))

(declare-fun m!5311591 () Bool)

(assert (=> b!4542823 m!5311591))

(declare-fun m!5311593 () Bool)

(assert (=> b!4542823 m!5311593))

(assert (=> b!4542823 m!5311593))

(declare-fun m!5311595 () Bool)

(assert (=> b!4542823 m!5311595))

(declare-fun m!5311597 () Bool)

(assert (=> b!4542823 m!5311597))

(assert (=> b!4542824 m!5310873))

(declare-fun m!5311599 () Bool)

(assert (=> b!4542824 m!5311599))

(assert (=> b!4542824 m!5311599))

(declare-fun m!5311601 () Bool)

(assert (=> b!4542824 m!5311601))

(declare-fun m!5311603 () Bool)

(assert (=> d!1404564 m!5311603))

(assert (=> b!4542821 m!5310873))

(assert (=> b!4542821 m!5311599))

(declare-fun m!5311607 () Bool)

(assert (=> bm!316786 m!5311607))

(assert (=> b!4542825 m!5311593))

(assert (=> b!4542825 m!5311593))

(assert (=> b!4542825 m!5311595))

(assert (=> b!4542826 m!5311603))

(declare-fun m!5311613 () Bool)

(assert (=> b!4542826 m!5311613))

(assert (=> b!4542820 m!5310873))

(assert (=> b!4542820 m!5311599))

(assert (=> b!4542820 m!5311599))

(assert (=> b!4542820 m!5311601))

(assert (=> b!4542472 d!1404564))

(declare-fun bs!879500 () Bool)

(declare-fun d!1404568 () Bool)

(assert (= bs!879500 (and d!1404568 d!1404428)))

(declare-fun lambda!176786 () Int)

(assert (=> bs!879500 (= lambda!176786 lambda!176750)))

(declare-fun bs!879501 () Bool)

(assert (= bs!879501 (and d!1404568 d!1404444)))

(assert (=> bs!879501 (= lambda!176786 lambda!176754)))

(declare-fun bs!879502 () Bool)

(assert (= bs!879502 (and d!1404568 d!1404478)))

(assert (=> bs!879502 (not (= lambda!176786 lambda!176761))))

(declare-fun bs!879503 () Bool)

(assert (= bs!879503 (and d!1404568 b!4542476)))

(assert (=> bs!879503 (not (= lambda!176786 lambda!176666))))

(declare-fun bs!879504 () Bool)

(assert (= bs!879504 (and d!1404568 d!1404554)))

(assert (=> bs!879504 (= lambda!176786 lambda!176781)))

(declare-fun bs!879505 () Bool)

(assert (= bs!879505 (and d!1404568 start!451080)))

(assert (=> bs!879505 (= lambda!176786 lambda!176665)))

(declare-fun bs!879506 () Bool)

(assert (= bs!879506 (and d!1404568 d!1404516)))

(assert (=> bs!879506 (= lambda!176786 lambda!176772)))

(declare-fun bs!879507 () Bool)

(assert (= bs!879507 (and d!1404568 d!1404536)))

(assert (=> bs!879507 (= lambda!176786 lambda!176780)))

(declare-fun bs!879508 () Bool)

(assert (= bs!879508 (and d!1404568 d!1404492)))

(assert (=> bs!879508 (= lambda!176786 lambda!176768)))

(declare-fun bs!879509 () Bool)

(assert (= bs!879509 (and d!1404568 d!1404504)))

(assert (=> bs!879509 (= lambda!176786 lambda!176769)))

(assert (=> d!1404568 (contains!13583 (extractMap!1264 (toList!4424 lt!1717220)) key!3287)))

(declare-fun lt!1717607 () Unit!98910)

(declare-fun choose!29970 (ListLongMap!3055 K!12160 Hashable!5603) Unit!98910)

(assert (=> d!1404568 (= lt!1717607 (choose!29970 lt!1717220 key!3287 hashF!1107))))

(assert (=> d!1404568 (forall!10361 (toList!4424 lt!1717220) lambda!176786)))

(assert (=> d!1404568 (= (lemmaListContainsThenExtractedMapContains!178 lt!1717220 key!3287 hashF!1107) lt!1717607)))

(declare-fun bs!879510 () Bool)

(assert (= bs!879510 d!1404568))

(assert (=> bs!879510 m!5310875))

(assert (=> bs!879510 m!5310875))

(declare-fun m!5311643 () Bool)

(assert (=> bs!879510 m!5311643))

(declare-fun m!5311645 () Bool)

(assert (=> bs!879510 m!5311645))

(declare-fun m!5311647 () Bool)

(assert (=> bs!879510 m!5311647))

(assert (=> b!4542472 d!1404568))

(declare-fun bs!879511 () Bool)

(declare-fun d!1404574 () Bool)

(assert (= bs!879511 (and d!1404574 d!1404428)))

(declare-fun lambda!176789 () Int)

(assert (=> bs!879511 (= lambda!176789 lambda!176750)))

(declare-fun bs!879512 () Bool)

(assert (= bs!879512 (and d!1404574 d!1404444)))

(assert (=> bs!879512 (= lambda!176789 lambda!176754)))

(declare-fun bs!879513 () Bool)

(assert (= bs!879513 (and d!1404574 d!1404478)))

(assert (=> bs!879513 (not (= lambda!176789 lambda!176761))))

(declare-fun bs!879514 () Bool)

(assert (= bs!879514 (and d!1404574 b!4542476)))

(assert (=> bs!879514 (not (= lambda!176789 lambda!176666))))

(declare-fun bs!879515 () Bool)

(assert (= bs!879515 (and d!1404574 d!1404554)))

(assert (=> bs!879515 (= lambda!176789 lambda!176781)))

(declare-fun bs!879516 () Bool)

(assert (= bs!879516 (and d!1404574 d!1404568)))

(assert (=> bs!879516 (= lambda!176789 lambda!176786)))

(declare-fun bs!879517 () Bool)

(assert (= bs!879517 (and d!1404574 start!451080)))

(assert (=> bs!879517 (= lambda!176789 lambda!176665)))

(declare-fun bs!879518 () Bool)

(assert (= bs!879518 (and d!1404574 d!1404516)))

(assert (=> bs!879518 (= lambda!176789 lambda!176772)))

(declare-fun bs!879519 () Bool)

(assert (= bs!879519 (and d!1404574 d!1404536)))

(assert (=> bs!879519 (= lambda!176789 lambda!176780)))

(declare-fun bs!879520 () Bool)

(assert (= bs!879520 (and d!1404574 d!1404492)))

(assert (=> bs!879520 (= lambda!176789 lambda!176768)))

(declare-fun bs!879521 () Bool)

(assert (= bs!879521 (and d!1404574 d!1404504)))

(assert (=> bs!879521 (= lambda!176789 lambda!176769)))

(declare-fun lt!1717608 () ListMap!3685)

(assert (=> d!1404574 (invariantList!1051 (toList!4423 lt!1717608))))

(declare-fun e!2830952 () ListMap!3685)

(assert (=> d!1404574 (= lt!1717608 e!2830952)))

(declare-fun c!775914 () Bool)

(assert (=> d!1404574 (= c!775914 ((_ is Cons!50777) (t!357863 (toList!4424 lm!1477))))))

(assert (=> d!1404574 (forall!10361 (t!357863 (toList!4424 lm!1477)) lambda!176789)))

(assert (=> d!1404574 (= (extractMap!1264 (t!357863 (toList!4424 lm!1477))) lt!1717608)))

(declare-fun b!4542840 () Bool)

(assert (=> b!4542840 (= e!2830952 (addToMapMapFromBucket!735 (_2!28928 (h!56664 (t!357863 (toList!4424 lm!1477)))) (extractMap!1264 (t!357863 (t!357863 (toList!4424 lm!1477))))))))

(declare-fun b!4542841 () Bool)

(assert (=> b!4542841 (= e!2830952 (ListMap!3686 Nil!50776))))

(assert (= (and d!1404574 c!775914) b!4542840))

(assert (= (and d!1404574 (not c!775914)) b!4542841))

(declare-fun m!5311649 () Bool)

(assert (=> d!1404574 m!5311649))

(declare-fun m!5311651 () Bool)

(assert (=> d!1404574 m!5311651))

(declare-fun m!5311653 () Bool)

(assert (=> b!4542840 m!5311653))

(assert (=> b!4542840 m!5311653))

(declare-fun m!5311655 () Bool)

(assert (=> b!4542840 m!5311655))

(assert (=> b!4542472 d!1404574))

(declare-fun bs!879526 () Bool)

(declare-fun d!1404576 () Bool)

(assert (= bs!879526 (and d!1404576 d!1404428)))

(declare-fun lambda!176791 () Int)

(assert (=> bs!879526 (= lambda!176791 lambda!176750)))

(declare-fun bs!879528 () Bool)

(assert (= bs!879528 (and d!1404576 d!1404444)))

(assert (=> bs!879528 (= lambda!176791 lambda!176754)))

(declare-fun bs!879530 () Bool)

(assert (= bs!879530 (and d!1404576 d!1404478)))

(assert (=> bs!879530 (not (= lambda!176791 lambda!176761))))

(declare-fun bs!879532 () Bool)

(assert (= bs!879532 (and d!1404576 b!4542476)))

(assert (=> bs!879532 (not (= lambda!176791 lambda!176666))))

(declare-fun bs!879534 () Bool)

(assert (= bs!879534 (and d!1404576 d!1404554)))

(assert (=> bs!879534 (= lambda!176791 lambda!176781)))

(declare-fun bs!879536 () Bool)

(assert (= bs!879536 (and d!1404576 d!1404568)))

(assert (=> bs!879536 (= lambda!176791 lambda!176786)))

(declare-fun bs!879538 () Bool)

(assert (= bs!879538 (and d!1404576 d!1404574)))

(assert (=> bs!879538 (= lambda!176791 lambda!176789)))

(declare-fun bs!879539 () Bool)

(assert (= bs!879539 (and d!1404576 start!451080)))

(assert (=> bs!879539 (= lambda!176791 lambda!176665)))

(declare-fun bs!879540 () Bool)

(assert (= bs!879540 (and d!1404576 d!1404516)))

(assert (=> bs!879540 (= lambda!176791 lambda!176772)))

(declare-fun bs!879541 () Bool)

(assert (= bs!879541 (and d!1404576 d!1404536)))

(assert (=> bs!879541 (= lambda!176791 lambda!176780)))

(declare-fun bs!879542 () Bool)

(assert (= bs!879542 (and d!1404576 d!1404492)))

(assert (=> bs!879542 (= lambda!176791 lambda!176768)))

(declare-fun bs!879544 () Bool)

(assert (= bs!879544 (and d!1404576 d!1404504)))

(assert (=> bs!879544 (= lambda!176791 lambda!176769)))

(declare-fun lt!1717612 () ListMap!3685)

(assert (=> d!1404576 (invariantList!1051 (toList!4423 lt!1717612))))

(declare-fun e!2830953 () ListMap!3685)

(assert (=> d!1404576 (= lt!1717612 e!2830953)))

(declare-fun c!775915 () Bool)

(assert (=> d!1404576 (= c!775915 ((_ is Cons!50777) (toList!4424 lt!1717220)))))

(assert (=> d!1404576 (forall!10361 (toList!4424 lt!1717220) lambda!176791)))

(assert (=> d!1404576 (= (extractMap!1264 (toList!4424 lt!1717220)) lt!1717612)))

(declare-fun b!4542842 () Bool)

(assert (=> b!4542842 (= e!2830953 (addToMapMapFromBucket!735 (_2!28928 (h!56664 (toList!4424 lt!1717220))) (extractMap!1264 (t!357863 (toList!4424 lt!1717220)))))))

(declare-fun b!4542843 () Bool)

(assert (=> b!4542843 (= e!2830953 (ListMap!3686 Nil!50776))))

(assert (= (and d!1404576 c!775915) b!4542842))

(assert (= (and d!1404576 (not c!775915)) b!4542843))

(declare-fun m!5311663 () Bool)

(assert (=> d!1404576 m!5311663))

(declare-fun m!5311665 () Bool)

(assert (=> d!1404576 m!5311665))

(declare-fun m!5311667 () Bool)

(assert (=> b!4542842 m!5311667))

(assert (=> b!4542842 m!5311667))

(declare-fun m!5311669 () Bool)

(assert (=> b!4542842 m!5311669))

(assert (=> b!4542472 d!1404576))

(declare-fun b!4542846 () Bool)

(declare-fun e!2830955 () Bool)

(assert (=> b!4542846 (= e!2830955 (not (contains!13587 (keys!17676 lt!1717191) key!3287)))))

(declare-fun b!4542847 () Bool)

(declare-fun e!2830957 () List!50903)

(assert (=> b!4542847 (= e!2830957 (keys!17676 lt!1717191))))

(declare-fun b!4542848 () Bool)

(assert (=> b!4542848 (= e!2830957 (getKeysList!498 (toList!4423 lt!1717191)))))

(declare-fun b!4542849 () Bool)

(declare-fun e!2830959 () Unit!98910)

(declare-fun lt!1717620 () Unit!98910)

(assert (=> b!4542849 (= e!2830959 lt!1717620)))

(declare-fun lt!1717621 () Unit!98910)

(assert (=> b!4542849 (= lt!1717621 (lemmaContainsKeyImpliesGetValueByKeyDefined!1063 (toList!4423 lt!1717191) key!3287))))

(assert (=> b!4542849 (isDefined!8499 (getValueByKey!1159 (toList!4423 lt!1717191) key!3287))))

(declare-fun lt!1717614 () Unit!98910)

(assert (=> b!4542849 (= lt!1717614 lt!1717621)))

(assert (=> b!4542849 (= lt!1717620 (lemmaInListThenGetKeysListContains!494 (toList!4423 lt!1717191) key!3287))))

(declare-fun call!316793 () Bool)

(assert (=> b!4542849 call!316793))

(declare-fun b!4542850 () Bool)

(declare-fun e!2830960 () Bool)

(assert (=> b!4542850 (= e!2830960 (contains!13587 (keys!17676 lt!1717191) key!3287))))

(declare-fun b!4542851 () Bool)

(declare-fun e!2830956 () Bool)

(assert (=> b!4542851 (= e!2830956 e!2830960)))

(declare-fun res!1893727 () Bool)

(assert (=> b!4542851 (=> (not res!1893727) (not e!2830960))))

(assert (=> b!4542851 (= res!1893727 (isDefined!8499 (getValueByKey!1159 (toList!4423 lt!1717191) key!3287)))))

(declare-fun bm!316788 () Bool)

(assert (=> bm!316788 (= call!316793 (contains!13587 e!2830957 key!3287))))

(declare-fun c!775919 () Bool)

(declare-fun c!775918 () Bool)

(assert (=> bm!316788 (= c!775919 c!775918)))

(declare-fun d!1404580 () Bool)

(assert (=> d!1404580 e!2830956))

(declare-fun res!1893726 () Bool)

(assert (=> d!1404580 (=> res!1893726 e!2830956)))

(assert (=> d!1404580 (= res!1893726 e!2830955)))

(declare-fun res!1893728 () Bool)

(assert (=> d!1404580 (=> (not res!1893728) (not e!2830955))))

(declare-fun lt!1717619 () Bool)

(assert (=> d!1404580 (= res!1893728 (not lt!1717619))))

(declare-fun lt!1717617 () Bool)

(assert (=> d!1404580 (= lt!1717619 lt!1717617)))

(declare-fun lt!1717615 () Unit!98910)

(assert (=> d!1404580 (= lt!1717615 e!2830959)))

(assert (=> d!1404580 (= c!775918 lt!1717617)))

(assert (=> d!1404580 (= lt!1717617 (containsKey!1898 (toList!4423 lt!1717191) key!3287))))

(assert (=> d!1404580 (= (contains!13583 lt!1717191 key!3287) lt!1717619)))

(declare-fun b!4542852 () Bool)

(assert (=> b!4542852 false))

(declare-fun lt!1717618 () Unit!98910)

(declare-fun lt!1717616 () Unit!98910)

(assert (=> b!4542852 (= lt!1717618 lt!1717616)))

(assert (=> b!4542852 (containsKey!1898 (toList!4423 lt!1717191) key!3287)))

(assert (=> b!4542852 (= lt!1717616 (lemmaInGetKeysListThenContainsKey!497 (toList!4423 lt!1717191) key!3287))))

(declare-fun e!2830958 () Unit!98910)

(declare-fun Unit!98981 () Unit!98910)

(assert (=> b!4542852 (= e!2830958 Unit!98981)))

(declare-fun b!4542853 () Bool)

(declare-fun Unit!98982 () Unit!98910)

(assert (=> b!4542853 (= e!2830958 Unit!98982)))

(declare-fun b!4542854 () Bool)

(assert (=> b!4542854 (= e!2830959 e!2830958)))

(declare-fun c!775917 () Bool)

(assert (=> b!4542854 (= c!775917 call!316793)))

(assert (= (and d!1404580 c!775918) b!4542849))

(assert (= (and d!1404580 (not c!775918)) b!4542854))

(assert (= (and b!4542854 c!775917) b!4542852))

(assert (= (and b!4542854 (not c!775917)) b!4542853))

(assert (= (or b!4542849 b!4542854) bm!316788))

(assert (= (and bm!316788 c!775919) b!4542848))

(assert (= (and bm!316788 (not c!775919)) b!4542847))

(assert (= (and d!1404580 res!1893728) b!4542846))

(assert (= (and d!1404580 (not res!1893726)) b!4542851))

(assert (= (and b!4542851 res!1893727) b!4542850))

(declare-fun m!5311671 () Bool)

(assert (=> b!4542848 m!5311671))

(declare-fun m!5311673 () Bool)

(assert (=> b!4542849 m!5311673))

(declare-fun m!5311675 () Bool)

(assert (=> b!4542849 m!5311675))

(assert (=> b!4542849 m!5311675))

(declare-fun m!5311677 () Bool)

(assert (=> b!4542849 m!5311677))

(declare-fun m!5311679 () Bool)

(assert (=> b!4542849 m!5311679))

(assert (=> b!4542850 m!5311387))

(assert (=> b!4542850 m!5311387))

(declare-fun m!5311681 () Bool)

(assert (=> b!4542850 m!5311681))

(declare-fun m!5311683 () Bool)

(assert (=> d!1404580 m!5311683))

(assert (=> b!4542847 m!5311387))

(declare-fun m!5311685 () Bool)

(assert (=> bm!316788 m!5311685))

(assert (=> b!4542851 m!5311675))

(assert (=> b!4542851 m!5311675))

(assert (=> b!4542851 m!5311677))

(assert (=> b!4542852 m!5311683))

(declare-fun m!5311693 () Bool)

(assert (=> b!4542852 m!5311693))

(assert (=> b!4542846 m!5311387))

(assert (=> b!4542846 m!5311387))

(assert (=> b!4542846 m!5311681))

(assert (=> b!4542472 d!1404580))

(declare-fun d!1404582 () Bool)

(assert (=> d!1404582 (= (eq!665 lt!1717216 lt!1717206) (= (content!8458 (toList!4423 lt!1717216)) (content!8458 (toList!4423 lt!1717206))))))

(declare-fun bs!879556 () Bool)

(assert (= bs!879556 d!1404582))

(assert (=> bs!879556 m!5310969))

(declare-fun m!5311697 () Bool)

(assert (=> bs!879556 m!5311697))

(assert (=> b!4542470 d!1404582))

(declare-fun d!1404586 () Bool)

(declare-fun e!2830967 () Bool)

(assert (=> d!1404586 e!2830967))

(declare-fun res!1893732 () Bool)

(assert (=> d!1404586 (=> (not res!1893732) (not e!2830967))))

(declare-fun lt!1717630 () ListMap!3685)

(assert (=> d!1404586 (= res!1893732 (not (contains!13583 lt!1717630 key!3287)))))

(assert (=> d!1404586 (= lt!1717630 (ListMap!3686 (removePresrvNoDuplicatedKeys!175 (toList!4423 (addToMapMapFromBucket!735 (_2!28928 lt!1717207) lt!1717191)) key!3287)))))

(assert (=> d!1404586 (= (-!434 (addToMapMapFromBucket!735 (_2!28928 lt!1717207) lt!1717191) key!3287) lt!1717630)))

(declare-fun b!4542864 () Bool)

(assert (=> b!4542864 (= e!2830967 (= ((_ map and) (content!8460 (keys!17676 (addToMapMapFromBucket!735 (_2!28928 lt!1717207) lt!1717191))) ((_ map not) (store ((as const (Array K!12160 Bool)) false) key!3287 true))) (content!8460 (keys!17676 lt!1717630))))))

(assert (= (and d!1404586 res!1893732) b!4542864))

(declare-fun m!5311699 () Bool)

(assert (=> d!1404586 m!5311699))

(declare-fun m!5311701 () Bool)

(assert (=> d!1404586 m!5311701))

(assert (=> b!4542864 m!5311383))

(declare-fun m!5311703 () Bool)

(assert (=> b!4542864 m!5311703))

(assert (=> b!4542864 m!5310865))

(declare-fun m!5311705 () Bool)

(assert (=> b!4542864 m!5311705))

(assert (=> b!4542864 m!5311705))

(declare-fun m!5311707 () Bool)

(assert (=> b!4542864 m!5311707))

(assert (=> b!4542864 m!5311703))

(declare-fun m!5311709 () Bool)

(assert (=> b!4542864 m!5311709))

(assert (=> b!4542470 d!1404586))

(declare-fun bs!879557 () Bool)

(declare-fun b!4542868 () Bool)

(assert (= bs!879557 (and b!4542868 b!4542553)))

(declare-fun lambda!176793 () Int)

(assert (=> bs!879557 (= (= lt!1717191 lt!1717211) (= lambda!176793 lambda!176735))))

(declare-fun bs!879558 () Bool)

(assert (= bs!879558 (and b!4542868 b!4542569)))

(assert (=> bs!879558 (= (= lt!1717191 lt!1717196) (= lambda!176793 lambda!176745))))

(declare-fun bs!879559 () Bool)

(assert (= bs!879559 (and b!4542868 b!4542552)))

(assert (=> bs!879559 (= (= lt!1717191 lt!1717211) (= lambda!176793 lambda!176734))))

(declare-fun bs!879560 () Bool)

(assert (= bs!879560 (and b!4542868 d!1404422)))

(assert (=> bs!879560 (= (= lt!1717191 lt!1717363) (= lambda!176793 lambda!176747))))

(declare-fun bs!879561 () Bool)

(assert (= bs!879561 (and b!4542868 b!4542476)))

(assert (=> bs!879561 (not (= lambda!176793 lambda!176667))))

(declare-fun bs!879562 () Bool)

(assert (= bs!879562 (and b!4542868 d!1404520)))

(assert (=> bs!879562 (not (= lambda!176793 lambda!176777))))

(assert (=> bs!879557 (= (= lt!1717191 lt!1717345) (= lambda!176793 lambda!176736))))

(declare-fun bs!879563 () Bool)

(assert (= bs!879563 (and b!4542868 d!1404390)))

(assert (=> bs!879563 (= (= lt!1717191 lt!1717333) (= lambda!176793 lambda!176737))))

(declare-fun bs!879564 () Bool)

(assert (= bs!879564 (and b!4542868 b!4542568)))

(assert (=> bs!879564 (= (= lt!1717191 lt!1717196) (= lambda!176793 lambda!176744))))

(assert (=> bs!879558 (= (= lt!1717191 lt!1717375) (= lambda!176793 lambda!176746))))

(assert (=> b!4542868 true))

(declare-fun bs!879566 () Bool)

(declare-fun b!4542869 () Bool)

(assert (= bs!879566 (and b!4542869 b!4542868)))

(declare-fun lambda!176794 () Int)

(assert (=> bs!879566 (= lambda!176794 lambda!176793)))

(declare-fun bs!879567 () Bool)

(assert (= bs!879567 (and b!4542869 b!4542553)))

(assert (=> bs!879567 (= (= lt!1717191 lt!1717211) (= lambda!176794 lambda!176735))))

(declare-fun bs!879568 () Bool)

(assert (= bs!879568 (and b!4542869 b!4542569)))

(assert (=> bs!879568 (= (= lt!1717191 lt!1717196) (= lambda!176794 lambda!176745))))

(declare-fun bs!879569 () Bool)

(assert (= bs!879569 (and b!4542869 b!4542552)))

(assert (=> bs!879569 (= (= lt!1717191 lt!1717211) (= lambda!176794 lambda!176734))))

(declare-fun bs!879570 () Bool)

(assert (= bs!879570 (and b!4542869 d!1404422)))

(assert (=> bs!879570 (= (= lt!1717191 lt!1717363) (= lambda!176794 lambda!176747))))

(declare-fun bs!879571 () Bool)

(assert (= bs!879571 (and b!4542869 b!4542476)))

(assert (=> bs!879571 (not (= lambda!176794 lambda!176667))))

(declare-fun bs!879572 () Bool)

(assert (= bs!879572 (and b!4542869 d!1404520)))

(assert (=> bs!879572 (not (= lambda!176794 lambda!176777))))

(assert (=> bs!879567 (= (= lt!1717191 lt!1717345) (= lambda!176794 lambda!176736))))

(declare-fun bs!879573 () Bool)

(assert (= bs!879573 (and b!4542869 d!1404390)))

(assert (=> bs!879573 (= (= lt!1717191 lt!1717333) (= lambda!176794 lambda!176737))))

(declare-fun bs!879574 () Bool)

(assert (= bs!879574 (and b!4542869 b!4542568)))

(assert (=> bs!879574 (= (= lt!1717191 lt!1717196) (= lambda!176794 lambda!176744))))

(assert (=> bs!879568 (= (= lt!1717191 lt!1717375) (= lambda!176794 lambda!176746))))

(assert (=> b!4542869 true))

(declare-fun lambda!176795 () Int)

(declare-fun lt!1717644 () ListMap!3685)

(assert (=> bs!879566 (= (= lt!1717644 lt!1717191) (= lambda!176795 lambda!176793))))

(assert (=> bs!879567 (= (= lt!1717644 lt!1717211) (= lambda!176795 lambda!176735))))

(assert (=> bs!879568 (= (= lt!1717644 lt!1717196) (= lambda!176795 lambda!176745))))

(assert (=> b!4542869 (= (= lt!1717644 lt!1717191) (= lambda!176795 lambda!176794))))

(assert (=> bs!879569 (= (= lt!1717644 lt!1717211) (= lambda!176795 lambda!176734))))

(assert (=> bs!879570 (= (= lt!1717644 lt!1717363) (= lambda!176795 lambda!176747))))

(assert (=> bs!879571 (not (= lambda!176795 lambda!176667))))

(assert (=> bs!879572 (not (= lambda!176795 lambda!176777))))

(assert (=> bs!879567 (= (= lt!1717644 lt!1717345) (= lambda!176795 lambda!176736))))

(assert (=> bs!879573 (= (= lt!1717644 lt!1717333) (= lambda!176795 lambda!176737))))

(assert (=> bs!879574 (= (= lt!1717644 lt!1717196) (= lambda!176795 lambda!176744))))

(assert (=> bs!879568 (= (= lt!1717644 lt!1717375) (= lambda!176795 lambda!176746))))

(assert (=> b!4542869 true))

(declare-fun bs!879577 () Bool)

(declare-fun d!1404588 () Bool)

(assert (= bs!879577 (and d!1404588 b!4542868)))

(declare-fun lt!1717632 () ListMap!3685)

(declare-fun lambda!176796 () Int)

(assert (=> bs!879577 (= (= lt!1717632 lt!1717191) (= lambda!176796 lambda!176793))))

(declare-fun bs!879578 () Bool)

(assert (= bs!879578 (and d!1404588 b!4542553)))

(assert (=> bs!879578 (= (= lt!1717632 lt!1717211) (= lambda!176796 lambda!176735))))

(declare-fun bs!879579 () Bool)

(assert (= bs!879579 (and d!1404588 b!4542569)))

(assert (=> bs!879579 (= (= lt!1717632 lt!1717196) (= lambda!176796 lambda!176745))))

(declare-fun bs!879581 () Bool)

(assert (= bs!879581 (and d!1404588 b!4542869)))

(assert (=> bs!879581 (= (= lt!1717632 lt!1717191) (= lambda!176796 lambda!176794))))

(declare-fun bs!879583 () Bool)

(assert (= bs!879583 (and d!1404588 b!4542552)))

(assert (=> bs!879583 (= (= lt!1717632 lt!1717211) (= lambda!176796 lambda!176734))))

(declare-fun bs!879585 () Bool)

(assert (= bs!879585 (and d!1404588 b!4542476)))

(assert (=> bs!879585 (not (= lambda!176796 lambda!176667))))

(declare-fun bs!879586 () Bool)

(assert (= bs!879586 (and d!1404588 d!1404520)))

(assert (=> bs!879586 (not (= lambda!176796 lambda!176777))))

(assert (=> bs!879578 (= (= lt!1717632 lt!1717345) (= lambda!176796 lambda!176736))))

(declare-fun bs!879589 () Bool)

(assert (= bs!879589 (and d!1404588 d!1404390)))

(assert (=> bs!879589 (= (= lt!1717632 lt!1717333) (= lambda!176796 lambda!176737))))

(declare-fun bs!879591 () Bool)

(assert (= bs!879591 (and d!1404588 b!4542568)))

(assert (=> bs!879591 (= (= lt!1717632 lt!1717196) (= lambda!176796 lambda!176744))))

(assert (=> bs!879579 (= (= lt!1717632 lt!1717375) (= lambda!176796 lambda!176746))))

(declare-fun bs!879594 () Bool)

(assert (= bs!879594 (and d!1404588 d!1404422)))

(assert (=> bs!879594 (= (= lt!1717632 lt!1717363) (= lambda!176796 lambda!176747))))

(assert (=> bs!879581 (= (= lt!1717632 lt!1717644) (= lambda!176796 lambda!176795))))

(assert (=> d!1404588 true))

(declare-fun bm!316790 () Bool)

(declare-fun call!316797 () Unit!98910)

(assert (=> bm!316790 (= call!316797 (lemmaContainsAllItsOwnKeys!372 lt!1717191))))

(declare-fun b!4542865 () Bool)

(declare-fun e!2830970 () Bool)

(assert (=> b!4542865 (= e!2830970 (invariantList!1051 (toList!4423 lt!1717632)))))

(declare-fun lt!1717641 () ListMap!3685)

(declare-fun call!316795 () Bool)

(declare-fun bm!316791 () Bool)

(declare-fun c!775923 () Bool)

(assert (=> bm!316791 (= call!316795 (forall!10363 (ite c!775923 (toList!4423 lt!1717191) (toList!4423 lt!1717641)) (ite c!775923 lambda!176793 lambda!176795)))))

(declare-fun b!4542866 () Bool)

(declare-fun res!1893734 () Bool)

(assert (=> b!4542866 (=> (not res!1893734) (not e!2830970))))

(assert (=> b!4542866 (= res!1893734 (forall!10363 (toList!4423 lt!1717191) lambda!176796))))

(declare-fun b!4542867 () Bool)

(declare-fun e!2830968 () Bool)

(assert (=> b!4542867 (= e!2830968 (forall!10363 (toList!4423 lt!1717191) lambda!176795))))

(declare-fun e!2830969 () ListMap!3685)

(assert (=> b!4542868 (= e!2830969 lt!1717191)))

(declare-fun lt!1717651 () Unit!98910)

(assert (=> b!4542868 (= lt!1717651 call!316797)))

(declare-fun call!316796 () Bool)

(assert (=> b!4542868 call!316796))

(declare-fun lt!1717650 () Unit!98910)

(assert (=> b!4542868 (= lt!1717650 lt!1717651)))

(assert (=> b!4542868 call!316795))

(declare-fun lt!1717647 () Unit!98910)

(declare-fun Unit!98983 () Unit!98910)

(assert (=> b!4542868 (= lt!1717647 Unit!98983)))

(assert (=> d!1404588 e!2830970))

(declare-fun res!1893735 () Bool)

(assert (=> d!1404588 (=> (not res!1893735) (not e!2830970))))

(assert (=> d!1404588 (= res!1893735 (forall!10363 (_2!28928 lt!1717207) lambda!176796))))

(assert (=> d!1404588 (= lt!1717632 e!2830969)))

(assert (=> d!1404588 (= c!775923 ((_ is Nil!50776) (_2!28928 lt!1717207)))))

(assert (=> d!1404588 (noDuplicateKeys!1208 (_2!28928 lt!1717207))))

(assert (=> d!1404588 (= (addToMapMapFromBucket!735 (_2!28928 lt!1717207) lt!1717191) lt!1717632)))

(assert (=> b!4542869 (= e!2830969 lt!1717644)))

(assert (=> b!4542869 (= lt!1717641 (+!1622 lt!1717191 (h!56663 (_2!28928 lt!1717207))))))

(assert (=> b!4542869 (= lt!1717644 (addToMapMapFromBucket!735 (t!357862 (_2!28928 lt!1717207)) (+!1622 lt!1717191 (h!56663 (_2!28928 lt!1717207)))))))

(declare-fun lt!1717649 () Unit!98910)

(assert (=> b!4542869 (= lt!1717649 call!316797)))

(assert (=> b!4542869 (forall!10363 (toList!4423 lt!1717191) lambda!176794)))

(declare-fun lt!1717634 () Unit!98910)

(assert (=> b!4542869 (= lt!1717634 lt!1717649)))

(assert (=> b!4542869 (forall!10363 (toList!4423 lt!1717641) lambda!176795)))

(declare-fun lt!1717645 () Unit!98910)

(declare-fun Unit!98984 () Unit!98910)

(assert (=> b!4542869 (= lt!1717645 Unit!98984)))

(assert (=> b!4542869 call!316796))

(declare-fun lt!1717639 () Unit!98910)

(declare-fun Unit!98985 () Unit!98910)

(assert (=> b!4542869 (= lt!1717639 Unit!98985)))

(declare-fun lt!1717643 () Unit!98910)

(declare-fun Unit!98986 () Unit!98910)

(assert (=> b!4542869 (= lt!1717643 Unit!98986)))

(declare-fun lt!1717633 () Unit!98910)

(assert (=> b!4542869 (= lt!1717633 (forallContained!2627 (toList!4423 lt!1717641) lambda!176795 (h!56663 (_2!28928 lt!1717207))))))

(assert (=> b!4542869 (contains!13583 lt!1717641 (_1!28927 (h!56663 (_2!28928 lt!1717207))))))

(declare-fun lt!1717642 () Unit!98910)

(declare-fun Unit!98987 () Unit!98910)

(assert (=> b!4542869 (= lt!1717642 Unit!98987)))

(assert (=> b!4542869 (contains!13583 lt!1717644 (_1!28927 (h!56663 (_2!28928 lt!1717207))))))

(declare-fun lt!1717646 () Unit!98910)

(declare-fun Unit!98988 () Unit!98910)

(assert (=> b!4542869 (= lt!1717646 Unit!98988)))

(assert (=> b!4542869 (forall!10363 (_2!28928 lt!1717207) lambda!176795)))

(declare-fun lt!1717638 () Unit!98910)

(declare-fun Unit!98990 () Unit!98910)

(assert (=> b!4542869 (= lt!1717638 Unit!98990)))

(assert (=> b!4542869 call!316795))

(declare-fun lt!1717635 () Unit!98910)

(declare-fun Unit!98991 () Unit!98910)

(assert (=> b!4542869 (= lt!1717635 Unit!98991)))

(declare-fun lt!1717640 () Unit!98910)

(declare-fun Unit!98992 () Unit!98910)

(assert (=> b!4542869 (= lt!1717640 Unit!98992)))

(declare-fun lt!1717637 () Unit!98910)

(assert (=> b!4542869 (= lt!1717637 (addForallContainsKeyThenBeforeAdding!372 lt!1717191 lt!1717644 (_1!28927 (h!56663 (_2!28928 lt!1717207))) (_2!28927 (h!56663 (_2!28928 lt!1717207)))))))

(assert (=> b!4542869 (forall!10363 (toList!4423 lt!1717191) lambda!176795)))

(declare-fun lt!1717631 () Unit!98910)

(assert (=> b!4542869 (= lt!1717631 lt!1717637)))

(assert (=> b!4542869 (forall!10363 (toList!4423 lt!1717191) lambda!176795)))

(declare-fun lt!1717636 () Unit!98910)

(declare-fun Unit!98994 () Unit!98910)

(assert (=> b!4542869 (= lt!1717636 Unit!98994)))

(declare-fun res!1893733 () Bool)

(assert (=> b!4542869 (= res!1893733 (forall!10363 (_2!28928 lt!1717207) lambda!176795))))

(assert (=> b!4542869 (=> (not res!1893733) (not e!2830968))))

(assert (=> b!4542869 e!2830968))

(declare-fun lt!1717648 () Unit!98910)

(declare-fun Unit!98995 () Unit!98910)

(assert (=> b!4542869 (= lt!1717648 Unit!98995)))

(declare-fun bm!316792 () Bool)

(assert (=> bm!316792 (= call!316796 (forall!10363 (ite c!775923 (toList!4423 lt!1717191) (t!357862 (_2!28928 lt!1717207))) (ite c!775923 lambda!176793 lambda!176795)))))

(assert (= (and d!1404588 c!775923) b!4542868))

(assert (= (and d!1404588 (not c!775923)) b!4542869))

(assert (= (and b!4542869 res!1893733) b!4542867))

(assert (= (or b!4542868 b!4542869) bm!316792))

(assert (= (or b!4542868 b!4542869) bm!316791))

(assert (= (or b!4542868 b!4542869) bm!316790))

(assert (= (and d!1404588 res!1893735) b!4542866))

(assert (= (and b!4542866 res!1893734) b!4542865))

(declare-fun m!5311781 () Bool)

(assert (=> bm!316792 m!5311781))

(declare-fun m!5311783 () Bool)

(assert (=> b!4542866 m!5311783))

(declare-fun m!5311785 () Bool)

(assert (=> bm!316790 m!5311785))

(declare-fun m!5311787 () Bool)

(assert (=> bm!316791 m!5311787))

(declare-fun m!5311789 () Bool)

(assert (=> b!4542869 m!5311789))

(declare-fun m!5311791 () Bool)

(assert (=> b!4542869 m!5311791))

(declare-fun m!5311793 () Bool)

(assert (=> b!4542869 m!5311793))

(declare-fun m!5311795 () Bool)

(assert (=> b!4542869 m!5311795))

(declare-fun m!5311797 () Bool)

(assert (=> b!4542869 m!5311797))

(declare-fun m!5311799 () Bool)

(assert (=> b!4542869 m!5311799))

(declare-fun m!5311801 () Bool)

(assert (=> b!4542869 m!5311801))

(assert (=> b!4542869 m!5311789))

(declare-fun m!5311803 () Bool)

(assert (=> b!4542869 m!5311803))

(assert (=> b!4542869 m!5311793))

(assert (=> b!4542869 m!5311799))

(declare-fun m!5311805 () Bool)

(assert (=> b!4542869 m!5311805))

(declare-fun m!5311807 () Bool)

(assert (=> b!4542869 m!5311807))

(declare-fun m!5311809 () Bool)

(assert (=> b!4542865 m!5311809))

(assert (=> b!4542867 m!5311799))

(declare-fun m!5311811 () Bool)

(assert (=> d!1404588 m!5311811))

(assert (=> d!1404588 m!5310895))

(assert (=> b!4542470 d!1404588))

(declare-fun d!1404612 () Bool)

(assert (=> d!1404612 (= (addToMapMapFromBucket!735 (_2!28928 lt!1717207) (-!434 lt!1717191 key!3287)) (-!434 (addToMapMapFromBucket!735 (_2!28928 lt!1717207) lt!1717191) key!3287))))

(declare-fun lt!1717662 () Unit!98910)

(declare-fun choose!29972 (ListMap!3685 K!12160 List!50900) Unit!98910)

(assert (=> d!1404612 (= lt!1717662 (choose!29972 lt!1717191 key!3287 (_2!28928 lt!1717207)))))

(assert (=> d!1404612 (not (containsKey!1896 (_2!28928 lt!1717207) key!3287))))

(assert (=> d!1404612 (= (lemmaAddToMapFromBucketMinusKeyIsCommutative!32 lt!1717191 key!3287 (_2!28928 lt!1717207)) lt!1717662)))

(declare-fun bs!879599 () Bool)

(assert (= bs!879599 d!1404612))

(assert (=> bs!879599 m!5310943))

(declare-fun m!5311813 () Bool)

(assert (=> bs!879599 m!5311813))

(assert (=> bs!879599 m!5310865))

(assert (=> bs!879599 m!5310867))

(assert (=> bs!879599 m!5310889))

(declare-fun m!5311815 () Bool)

(assert (=> bs!879599 m!5311815))

(assert (=> bs!879599 m!5310943))

(assert (=> bs!879599 m!5310865))

(assert (=> b!4542470 d!1404612))

(declare-fun d!1404614 () Bool)

(declare-fun get!16708 (Option!11226) List!50900)

(assert (=> d!1404614 (= (apply!11945 lt!1717220 hash!344) (get!16708 (getValueByKey!1160 (toList!4424 lt!1717220) hash!344)))))

(declare-fun bs!879600 () Bool)

(assert (= bs!879600 d!1404614))

(declare-fun m!5311817 () Bool)

(assert (=> bs!879600 m!5311817))

(assert (=> bs!879600 m!5311817))

(declare-fun m!5311819 () Bool)

(assert (=> bs!879600 m!5311819))

(assert (=> b!4542491 d!1404614))

(declare-fun d!1404616 () Bool)

(declare-fun res!1893746 () Bool)

(declare-fun e!2830981 () Bool)

(assert (=> d!1404616 (=> res!1893746 e!2830981)))

(assert (=> d!1404616 (= res!1893746 ((_ is Nil!50777) (toList!4424 lt!1717217)))))

(assert (=> d!1404616 (= (forall!10361 (toList!4424 lt!1717217) lambda!176665) e!2830981)))

(declare-fun b!4542882 () Bool)

(declare-fun e!2830982 () Bool)

(assert (=> b!4542882 (= e!2830981 e!2830982)))

(declare-fun res!1893747 () Bool)

(assert (=> b!4542882 (=> (not res!1893747) (not e!2830982))))

(assert (=> b!4542882 (= res!1893747 (dynLambda!21228 lambda!176665 (h!56664 (toList!4424 lt!1717217))))))

(declare-fun b!4542883 () Bool)

(assert (=> b!4542883 (= e!2830982 (forall!10361 (t!357863 (toList!4424 lt!1717217)) lambda!176665))))

(assert (= (and d!1404616 (not res!1893746)) b!4542882))

(assert (= (and b!4542882 res!1893747) b!4542883))

(declare-fun b_lambda!158227 () Bool)

(assert (=> (not b_lambda!158227) (not b!4542882)))

(declare-fun m!5311821 () Bool)

(assert (=> b!4542882 m!5311821))

(declare-fun m!5311823 () Bool)

(assert (=> b!4542883 m!5311823))

(assert (=> b!4542492 d!1404616))

(declare-fun d!1404618 () Bool)

(declare-fun lt!1717668 () Bool)

(declare-fun content!8461 (List!50901) (InoxSet tuple2!51268))

(assert (=> d!1404618 (= lt!1717668 (select (content!8461 (t!357863 (toList!4424 lm!1477))) lt!1717192))))

(declare-fun e!2830987 () Bool)

(assert (=> d!1404618 (= lt!1717668 e!2830987)))

(declare-fun res!1893752 () Bool)

(assert (=> d!1404618 (=> (not res!1893752) (not e!2830987))))

(assert (=> d!1404618 (= res!1893752 ((_ is Cons!50777) (t!357863 (toList!4424 lm!1477))))))

(assert (=> d!1404618 (= (contains!13584 (t!357863 (toList!4424 lm!1477)) lt!1717192) lt!1717668)))

(declare-fun b!4542888 () Bool)

(declare-fun e!2830988 () Bool)

(assert (=> b!4542888 (= e!2830987 e!2830988)))

(declare-fun res!1893753 () Bool)

(assert (=> b!4542888 (=> res!1893753 e!2830988)))

(assert (=> b!4542888 (= res!1893753 (= (h!56664 (t!357863 (toList!4424 lm!1477))) lt!1717192))))

(declare-fun b!4542889 () Bool)

(assert (=> b!4542889 (= e!2830988 (contains!13584 (t!357863 (t!357863 (toList!4424 lm!1477))) lt!1717192))))

(assert (= (and d!1404618 res!1893752) b!4542888))

(assert (= (and b!4542888 (not res!1893753)) b!4542889))

(declare-fun m!5311825 () Bool)

(assert (=> d!1404618 m!5311825))

(declare-fun m!5311827 () Bool)

(assert (=> d!1404618 m!5311827))

(declare-fun m!5311829 () Bool)

(assert (=> b!4542889 m!5311829))

(assert (=> b!4542474 d!1404618))

(declare-fun bs!879631 () Bool)

(declare-fun d!1404620 () Bool)

(assert (= bs!879631 (and d!1404620 d!1404576)))

(declare-fun lambda!176804 () Int)

(assert (=> bs!879631 (= lambda!176804 lambda!176791)))

(declare-fun bs!879632 () Bool)

(assert (= bs!879632 (and d!1404620 d!1404428)))

(assert (=> bs!879632 (= lambda!176804 lambda!176750)))

(declare-fun bs!879633 () Bool)

(assert (= bs!879633 (and d!1404620 d!1404444)))

(assert (=> bs!879633 (= lambda!176804 lambda!176754)))

(declare-fun bs!879634 () Bool)

(assert (= bs!879634 (and d!1404620 d!1404478)))

(assert (=> bs!879634 (not (= lambda!176804 lambda!176761))))

(declare-fun bs!879635 () Bool)

(assert (= bs!879635 (and d!1404620 b!4542476)))

(assert (=> bs!879635 (not (= lambda!176804 lambda!176666))))

(declare-fun bs!879636 () Bool)

(assert (= bs!879636 (and d!1404620 d!1404554)))

(assert (=> bs!879636 (= lambda!176804 lambda!176781)))

(declare-fun bs!879637 () Bool)

(assert (= bs!879637 (and d!1404620 d!1404568)))

(assert (=> bs!879637 (= lambda!176804 lambda!176786)))

(declare-fun bs!879638 () Bool)

(assert (= bs!879638 (and d!1404620 d!1404574)))

(assert (=> bs!879638 (= lambda!176804 lambda!176789)))

(declare-fun bs!879639 () Bool)

(assert (= bs!879639 (and d!1404620 start!451080)))

(assert (=> bs!879639 (= lambda!176804 lambda!176665)))

(declare-fun bs!879640 () Bool)

(assert (= bs!879640 (and d!1404620 d!1404516)))

(assert (=> bs!879640 (= lambda!176804 lambda!176772)))

(declare-fun bs!879641 () Bool)

(assert (= bs!879641 (and d!1404620 d!1404536)))

(assert (=> bs!879641 (= lambda!176804 lambda!176780)))

(declare-fun bs!879642 () Bool)

(assert (= bs!879642 (and d!1404620 d!1404492)))

(assert (=> bs!879642 (= lambda!176804 lambda!176768)))

(declare-fun bs!879643 () Bool)

(assert (= bs!879643 (and d!1404620 d!1404504)))

(assert (=> bs!879643 (= lambda!176804 lambda!176769)))

(assert (=> d!1404620 (contains!13585 lm!1477 (hash!2939 hashF!1107 key!3287))))

(declare-fun lt!1717676 () Unit!98910)

(declare-fun choose!29973 (ListLongMap!3055 K!12160 Hashable!5603) Unit!98910)

(assert (=> d!1404620 (= lt!1717676 (choose!29973 lm!1477 key!3287 hashF!1107))))

(assert (=> d!1404620 (forall!10361 (toList!4424 lm!1477) lambda!176804)))

(assert (=> d!1404620 (= (lemmaInGenMapThenLongMapContainsHash!282 lm!1477 key!3287 hashF!1107) lt!1717676)))

(declare-fun bs!879645 () Bool)

(assert (= bs!879645 d!1404620))

(assert (=> bs!879645 m!5310959))

(assert (=> bs!879645 m!5310959))

(declare-fun m!5311871 () Bool)

(assert (=> bs!879645 m!5311871))

(declare-fun m!5311873 () Bool)

(assert (=> bs!879645 m!5311873))

(declare-fun m!5311877 () Bool)

(assert (=> bs!879645 m!5311877))

(assert (=> b!4542473 d!1404620))

(declare-fun d!1404636 () Bool)

(assert (=> d!1404636 (= (apply!11945 lm!1477 hash!344) (get!16708 (getValueByKey!1160 (toList!4424 lm!1477) hash!344)))))

(declare-fun bs!879648 () Bool)

(assert (= bs!879648 d!1404636))

(declare-fun m!5311881 () Bool)

(assert (=> bs!879648 m!5311881))

(assert (=> bs!879648 m!5311881))

(declare-fun m!5311883 () Bool)

(assert (=> bs!879648 m!5311883))

(assert (=> b!4542473 d!1404636))

(declare-fun d!1404640 () Bool)

(declare-fun e!2831002 () Bool)

(assert (=> d!1404640 e!2831002))

(declare-fun res!1893758 () Bool)

(assert (=> d!1404640 (=> res!1893758 e!2831002)))

(declare-fun lt!1717687 () Bool)

(assert (=> d!1404640 (= res!1893758 (not lt!1717687))))

(declare-fun lt!1717685 () Bool)

(assert (=> d!1404640 (= lt!1717687 lt!1717685)))

(declare-fun lt!1717688 () Unit!98910)

(declare-fun e!2831001 () Unit!98910)

(assert (=> d!1404640 (= lt!1717688 e!2831001)))

(declare-fun c!775928 () Bool)

(assert (=> d!1404640 (= c!775928 lt!1717685)))

(declare-fun containsKey!1900 (List!50901 (_ BitVec 64)) Bool)

(assert (=> d!1404640 (= lt!1717685 (containsKey!1900 (toList!4424 lm!1477) lt!1717198))))

(assert (=> d!1404640 (= (contains!13585 lm!1477 lt!1717198) lt!1717687)))

(declare-fun b!4542910 () Bool)

(declare-fun lt!1717686 () Unit!98910)

(assert (=> b!4542910 (= e!2831001 lt!1717686)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1065 (List!50901 (_ BitVec 64)) Unit!98910)

(assert (=> b!4542910 (= lt!1717686 (lemmaContainsKeyImpliesGetValueByKeyDefined!1065 (toList!4424 lm!1477) lt!1717198))))

(declare-fun isDefined!8502 (Option!11226) Bool)

(assert (=> b!4542910 (isDefined!8502 (getValueByKey!1160 (toList!4424 lm!1477) lt!1717198))))

(declare-fun b!4542911 () Bool)

(declare-fun Unit!98996 () Unit!98910)

(assert (=> b!4542911 (= e!2831001 Unit!98996)))

(declare-fun b!4542912 () Bool)

(assert (=> b!4542912 (= e!2831002 (isDefined!8502 (getValueByKey!1160 (toList!4424 lm!1477) lt!1717198)))))

(assert (= (and d!1404640 c!775928) b!4542910))

(assert (= (and d!1404640 (not c!775928)) b!4542911))

(assert (= (and d!1404640 (not res!1893758)) b!4542912))

(declare-fun m!5311889 () Bool)

(assert (=> d!1404640 m!5311889))

(declare-fun m!5311891 () Bool)

(assert (=> b!4542910 m!5311891))

(declare-fun m!5311893 () Bool)

(assert (=> b!4542910 m!5311893))

(assert (=> b!4542910 m!5311893))

(declare-fun m!5311895 () Bool)

(assert (=> b!4542910 m!5311895))

(assert (=> b!4542912 m!5311893))

(assert (=> b!4542912 m!5311893))

(assert (=> b!4542912 m!5311895))

(assert (=> b!4542473 d!1404640))

(declare-fun d!1404644 () Bool)

(assert (=> d!1404644 (dynLambda!21228 lambda!176665 lt!1717192)))

(declare-fun lt!1717689 () Unit!98910)

(assert (=> d!1404644 (= lt!1717689 (choose!29965 (toList!4424 lm!1477) lambda!176665 lt!1717192))))

(declare-fun e!2831003 () Bool)

(assert (=> d!1404644 e!2831003))

(declare-fun res!1893759 () Bool)

(assert (=> d!1404644 (=> (not res!1893759) (not e!2831003))))

(assert (=> d!1404644 (= res!1893759 (forall!10361 (toList!4424 lm!1477) lambda!176665))))

(assert (=> d!1404644 (= (forallContained!2626 (toList!4424 lm!1477) lambda!176665 lt!1717192) lt!1717689)))

(declare-fun b!4542913 () Bool)

(assert (=> b!4542913 (= e!2831003 (contains!13584 (toList!4424 lm!1477) lt!1717192))))

(assert (= (and d!1404644 res!1893759) b!4542913))

(declare-fun b_lambda!158241 () Bool)

(assert (=> (not b_lambda!158241) (not d!1404644)))

(declare-fun m!5311897 () Bool)

(assert (=> d!1404644 m!5311897))

(declare-fun m!5311899 () Bool)

(assert (=> d!1404644 m!5311899))

(assert (=> d!1404644 m!5310911))

(assert (=> b!4542913 m!5310917))

(assert (=> b!4542473 d!1404644))

(declare-fun d!1404646 () Bool)

(assert (=> d!1404646 (contains!13584 (toList!4424 lm!1477) (tuple2!51269 hash!344 lt!1717219))))

(declare-fun lt!1717692 () Unit!98910)

(declare-fun choose!29974 (List!50901 (_ BitVec 64) List!50900) Unit!98910)

(assert (=> d!1404646 (= lt!1717692 (choose!29974 (toList!4424 lm!1477) hash!344 lt!1717219))))

(declare-fun e!2831006 () Bool)

(assert (=> d!1404646 e!2831006))

(declare-fun res!1893762 () Bool)

(assert (=> d!1404646 (=> (not res!1893762) (not e!2831006))))

(assert (=> d!1404646 (= res!1893762 (isStrictlySorted!465 (toList!4424 lm!1477)))))

(assert (=> d!1404646 (= (lemmaGetValueByKeyImpliesContainsTuple!720 (toList!4424 lm!1477) hash!344 lt!1717219) lt!1717692)))

(declare-fun b!4542916 () Bool)

(assert (=> b!4542916 (= e!2831006 (= (getValueByKey!1160 (toList!4424 lm!1477) hash!344) (Some!11225 lt!1717219)))))

(assert (= (and d!1404646 res!1893762) b!4542916))

(declare-fun m!5311901 () Bool)

(assert (=> d!1404646 m!5311901))

(declare-fun m!5311903 () Bool)

(assert (=> d!1404646 m!5311903))

(assert (=> d!1404646 m!5311575))

(assert (=> b!4542916 m!5311881))

(assert (=> b!4542473 d!1404646))

(declare-fun d!1404648 () Bool)

(declare-fun lt!1717693 () Bool)

(assert (=> d!1404648 (= lt!1717693 (select (content!8461 (toList!4424 lm!1477)) lt!1717192))))

(declare-fun e!2831007 () Bool)

(assert (=> d!1404648 (= lt!1717693 e!2831007)))

(declare-fun res!1893763 () Bool)

(assert (=> d!1404648 (=> (not res!1893763) (not e!2831007))))

(assert (=> d!1404648 (= res!1893763 ((_ is Cons!50777) (toList!4424 lm!1477)))))

(assert (=> d!1404648 (= (contains!13584 (toList!4424 lm!1477) lt!1717192) lt!1717693)))

(declare-fun b!4542917 () Bool)

(declare-fun e!2831008 () Bool)

(assert (=> b!4542917 (= e!2831007 e!2831008)))

(declare-fun res!1893764 () Bool)

(assert (=> b!4542917 (=> res!1893764 e!2831008)))

(assert (=> b!4542917 (= res!1893764 (= (h!56664 (toList!4424 lm!1477)) lt!1717192))))

(declare-fun b!4542918 () Bool)

(assert (=> b!4542918 (= e!2831008 (contains!13584 (t!357863 (toList!4424 lm!1477)) lt!1717192))))

(assert (= (and d!1404648 res!1893763) b!4542917))

(assert (= (and b!4542917 (not res!1893764)) b!4542918))

(declare-fun m!5311905 () Bool)

(assert (=> d!1404648 m!5311905))

(declare-fun m!5311907 () Bool)

(assert (=> d!1404648 m!5311907))

(assert (=> b!4542918 m!5310965))

(assert (=> b!4542473 d!1404648))

(declare-fun b!4542930 () Bool)

(declare-fun e!2831014 () List!50900)

(assert (=> b!4542930 (= e!2831014 Nil!50776)))

(declare-fun b!4542928 () Bool)

(declare-fun e!2831013 () List!50900)

(assert (=> b!4542928 (= e!2831013 e!2831014)))

(declare-fun c!775933 () Bool)

(assert (=> b!4542928 (= c!775933 ((_ is Cons!50776) lt!1717219))))

(declare-fun b!4542929 () Bool)

(assert (=> b!4542929 (= e!2831014 (Cons!50776 (h!56663 lt!1717219) (removePairForKey!835 (t!357862 lt!1717219) key!3287)))))

(declare-fun b!4542927 () Bool)

(assert (=> b!4542927 (= e!2831013 (t!357862 lt!1717219))))

(declare-fun d!1404650 () Bool)

(declare-fun lt!1717696 () List!50900)

(assert (=> d!1404650 (not (containsKey!1896 lt!1717696 key!3287))))

(assert (=> d!1404650 (= lt!1717696 e!2831013)))

(declare-fun c!775934 () Bool)

(assert (=> d!1404650 (= c!775934 (and ((_ is Cons!50776) lt!1717219) (= (_1!28927 (h!56663 lt!1717219)) key!3287)))))

(assert (=> d!1404650 (noDuplicateKeys!1208 lt!1717219)))

(assert (=> d!1404650 (= (removePairForKey!835 lt!1717219 key!3287) lt!1717696)))

(assert (= (and d!1404650 c!775934) b!4542927))

(assert (= (and d!1404650 (not c!775934)) b!4542928))

(assert (= (and b!4542928 c!775933) b!4542929))

(assert (= (and b!4542928 (not c!775933)) b!4542930))

(declare-fun m!5311909 () Bool)

(assert (=> b!4542929 m!5311909))

(declare-fun m!5311911 () Bool)

(assert (=> d!1404650 m!5311911))

(declare-fun m!5311913 () Bool)

(assert (=> d!1404650 m!5311913))

(assert (=> b!4542473 d!1404650))

(declare-fun d!1404652 () Bool)

(assert (=> d!1404652 (= (eq!665 lt!1717203 lt!1717213) (= (content!8458 (toList!4423 lt!1717203)) (content!8458 (toList!4423 lt!1717213))))))

(declare-fun bs!879651 () Bool)

(assert (= bs!879651 d!1404652))

(assert (=> bs!879651 m!5311441))

(assert (=> bs!879651 m!5311439))

(assert (=> b!4542466 d!1404652))

(declare-fun bs!879652 () Bool)

(declare-fun d!1404654 () Bool)

(assert (= bs!879652 (and d!1404654 d!1404576)))

(declare-fun lambda!176807 () Int)

(assert (=> bs!879652 (= lambda!176807 lambda!176791)))

(declare-fun bs!879653 () Bool)

(assert (= bs!879653 (and d!1404654 d!1404428)))

(assert (=> bs!879653 (= lambda!176807 lambda!176750)))

(declare-fun bs!879654 () Bool)

(assert (= bs!879654 (and d!1404654 d!1404444)))

(assert (=> bs!879654 (= lambda!176807 lambda!176754)))

(declare-fun bs!879655 () Bool)

(assert (= bs!879655 (and d!1404654 d!1404478)))

(assert (=> bs!879655 (not (= lambda!176807 lambda!176761))))

(declare-fun bs!879656 () Bool)

(assert (= bs!879656 (and d!1404654 b!4542476)))

(assert (=> bs!879656 (not (= lambda!176807 lambda!176666))))

(declare-fun bs!879657 () Bool)

(assert (= bs!879657 (and d!1404654 d!1404554)))

(assert (=> bs!879657 (= lambda!176807 lambda!176781)))

(declare-fun bs!879658 () Bool)

(assert (= bs!879658 (and d!1404654 d!1404568)))

(assert (=> bs!879658 (= lambda!176807 lambda!176786)))

(declare-fun bs!879659 () Bool)

(assert (= bs!879659 (and d!1404654 d!1404574)))

(assert (=> bs!879659 (= lambda!176807 lambda!176789)))

(declare-fun bs!879660 () Bool)

(assert (= bs!879660 (and d!1404654 d!1404516)))

(assert (=> bs!879660 (= lambda!176807 lambda!176772)))

(declare-fun bs!879661 () Bool)

(assert (= bs!879661 (and d!1404654 d!1404536)))

(assert (=> bs!879661 (= lambda!176807 lambda!176780)))

(declare-fun bs!879662 () Bool)

(assert (= bs!879662 (and d!1404654 d!1404492)))

(assert (=> bs!879662 (= lambda!176807 lambda!176768)))

(declare-fun bs!879663 () Bool)

(assert (= bs!879663 (and d!1404654 d!1404504)))

(assert (=> bs!879663 (= lambda!176807 lambda!176769)))

(declare-fun bs!879664 () Bool)

(assert (= bs!879664 (and d!1404654 d!1404620)))

(assert (=> bs!879664 (= lambda!176807 lambda!176804)))

(declare-fun bs!879665 () Bool)

(assert (= bs!879665 (and d!1404654 start!451080)))

(assert (=> bs!879665 (= lambda!176807 lambda!176665)))

(assert (=> d!1404654 (not (contains!13583 (extractMap!1264 (toList!4424 lm!1477)) key!3287))))

(declare-fun lt!1717699 () Unit!98910)

(declare-fun choose!29976 (ListLongMap!3055 K!12160 Hashable!5603) Unit!98910)

(assert (=> d!1404654 (= lt!1717699 (choose!29976 lm!1477 key!3287 hashF!1107))))

(assert (=> d!1404654 (forall!10361 (toList!4424 lm!1477) lambda!176807)))

(assert (=> d!1404654 (= (lemmaNotInItsHashBucketThenNotInMap!196 lm!1477 key!3287 hashF!1107) lt!1717699)))

(declare-fun bs!879666 () Bool)

(assert (= bs!879666 d!1404654))

(assert (=> bs!879666 m!5310845))

(assert (=> bs!879666 m!5310845))

(declare-fun m!5311915 () Bool)

(assert (=> bs!879666 m!5311915))

(declare-fun m!5311917 () Bool)

(assert (=> bs!879666 m!5311917))

(declare-fun m!5311919 () Bool)

(assert (=> bs!879666 m!5311919))

(assert (=> b!4542487 d!1404654))

(declare-fun d!1404656 () Bool)

(assert (=> d!1404656 (= (head!9494 lt!1717197) (head!9496 (toList!4424 lt!1717197)))))

(declare-fun bs!879667 () Bool)

(assert (= bs!879667 d!1404656))

(declare-fun m!5311921 () Bool)

(assert (=> bs!879667 m!5311921))

(assert (=> b!4542488 d!1404656))

(declare-fun d!1404658 () Bool)

(declare-fun e!2831016 () Bool)

(assert (=> d!1404658 e!2831016))

(declare-fun res!1893765 () Bool)

(assert (=> d!1404658 (=> res!1893765 e!2831016)))

(declare-fun lt!1717702 () Bool)

(assert (=> d!1404658 (= res!1893765 (not lt!1717702))))

(declare-fun lt!1717700 () Bool)

(assert (=> d!1404658 (= lt!1717702 lt!1717700)))

(declare-fun lt!1717703 () Unit!98910)

(declare-fun e!2831015 () Unit!98910)

(assert (=> d!1404658 (= lt!1717703 e!2831015)))

(declare-fun c!775935 () Bool)

(assert (=> d!1404658 (= c!775935 lt!1717700)))

(assert (=> d!1404658 (= lt!1717700 (containsKey!1900 (toList!4424 lt!1717220) hash!344))))

(assert (=> d!1404658 (= (contains!13585 lt!1717220 hash!344) lt!1717702)))

(declare-fun b!4542931 () Bool)

(declare-fun lt!1717701 () Unit!98910)

(assert (=> b!4542931 (= e!2831015 lt!1717701)))

(assert (=> b!4542931 (= lt!1717701 (lemmaContainsKeyImpliesGetValueByKeyDefined!1065 (toList!4424 lt!1717220) hash!344))))

(assert (=> b!4542931 (isDefined!8502 (getValueByKey!1160 (toList!4424 lt!1717220) hash!344))))

(declare-fun b!4542932 () Bool)

(declare-fun Unit!98997 () Unit!98910)

(assert (=> b!4542932 (= e!2831015 Unit!98997)))

(declare-fun b!4542933 () Bool)

(assert (=> b!4542933 (= e!2831016 (isDefined!8502 (getValueByKey!1160 (toList!4424 lt!1717220) hash!344)))))

(assert (= (and d!1404658 c!775935) b!4542931))

(assert (= (and d!1404658 (not c!775935)) b!4542932))

(assert (= (and d!1404658 (not res!1893765)) b!4542933))

(declare-fun m!5311923 () Bool)

(assert (=> d!1404658 m!5311923))

(declare-fun m!5311925 () Bool)

(assert (=> b!4542931 m!5311925))

(assert (=> b!4542931 m!5311817))

(assert (=> b!4542931 m!5311817))

(declare-fun m!5311927 () Bool)

(assert (=> b!4542931 m!5311927))

(assert (=> b!4542933 m!5311817))

(assert (=> b!4542933 m!5311817))

(assert (=> b!4542933 m!5311927))

(assert (=> b!4542486 d!1404658))

(declare-fun d!1404660 () Bool)

(declare-fun tail!7818 (List!50901) List!50901)

(assert (=> d!1404660 (= (tail!7816 lm!1477) (ListLongMap!3056 (tail!7818 (toList!4424 lm!1477))))))

(declare-fun bs!879668 () Bool)

(assert (= bs!879668 d!1404660))

(declare-fun m!5311929 () Bool)

(assert (=> bs!879668 m!5311929))

(assert (=> b!4542486 d!1404660))

(declare-fun d!1404662 () Bool)

(assert (=> d!1404662 (= (eq!665 lt!1717201 lt!1717214) (= (content!8458 (toList!4423 lt!1717201)) (content!8458 (toList!4423 lt!1717214))))))

(declare-fun bs!879669 () Bool)

(assert (= bs!879669 d!1404662))

(assert (=> bs!879669 m!5310967))

(assert (=> bs!879669 m!5311457))

(assert (=> b!4542469 d!1404662))

(declare-fun d!1404664 () Bool)

(assert (=> d!1404664 (= (eq!665 lt!1717201 (-!434 lt!1717213 key!3287)) (= (content!8458 (toList!4423 lt!1717201)) (content!8458 (toList!4423 (-!434 lt!1717213 key!3287)))))))

(declare-fun bs!879670 () Bool)

(assert (= bs!879670 d!1404664))

(assert (=> bs!879670 m!5310967))

(declare-fun m!5311931 () Bool)

(assert (=> bs!879670 m!5311931))

(assert (=> b!4542489 d!1404664))

(declare-fun d!1404666 () Bool)

(declare-fun e!2831017 () Bool)

(assert (=> d!1404666 e!2831017))

(declare-fun res!1893766 () Bool)

(assert (=> d!1404666 (=> (not res!1893766) (not e!2831017))))

(declare-fun lt!1717704 () ListMap!3685)

(assert (=> d!1404666 (= res!1893766 (not (contains!13583 lt!1717704 key!3287)))))

(assert (=> d!1404666 (= lt!1717704 (ListMap!3686 (removePresrvNoDuplicatedKeys!175 (toList!4423 lt!1717213) key!3287)))))

(assert (=> d!1404666 (= (-!434 lt!1717213 key!3287) lt!1717704)))

(declare-fun b!4542934 () Bool)

(assert (=> b!4542934 (= e!2831017 (= ((_ map and) (content!8460 (keys!17676 lt!1717213)) ((_ map not) (store ((as const (Array K!12160 Bool)) false) key!3287 true))) (content!8460 (keys!17676 lt!1717704))))))

(assert (= (and d!1404666 res!1893766) b!4542934))

(declare-fun m!5311933 () Bool)

(assert (=> d!1404666 m!5311933))

(declare-fun m!5311935 () Bool)

(assert (=> d!1404666 m!5311935))

(assert (=> b!4542934 m!5311383))

(declare-fun m!5311937 () Bool)

(assert (=> b!4542934 m!5311937))

(declare-fun m!5311939 () Bool)

(assert (=> b!4542934 m!5311939))

(assert (=> b!4542934 m!5311939))

(declare-fun m!5311941 () Bool)

(assert (=> b!4542934 m!5311941))

(assert (=> b!4542934 m!5311937))

(declare-fun m!5311943 () Bool)

(assert (=> b!4542934 m!5311943))

(assert (=> b!4542489 d!1404666))

(declare-fun b!4542939 () Bool)

(declare-fun e!2831020 () Bool)

(declare-fun tp!1338753 () Bool)

(declare-fun tp!1338754 () Bool)

(assert (=> b!4542939 (= e!2831020 (and tp!1338753 tp!1338754))))

(assert (=> b!4542477 (= tp!1338738 e!2831020)))

(assert (= (and b!4542477 ((_ is Cons!50777) (toList!4424 lm!1477))) b!4542939))

(declare-fun b!4542944 () Bool)

(declare-fun e!2831023 () Bool)

(declare-fun tp!1338757 () Bool)

(assert (=> b!4542944 (= e!2831023 (and tp_is_empty!28109 tp_is_empty!28111 tp!1338757))))

(assert (=> b!4542467 (= tp!1338739 e!2831023)))

(assert (= (and b!4542467 ((_ is Cons!50776) (t!357862 newBucket!178))) b!4542944))

(declare-fun b_lambda!158243 () Bool)

(assert (= b_lambda!158219 (or b!4542476 b_lambda!158243)))

(declare-fun bs!879671 () Bool)

(declare-fun d!1404668 () Bool)

(assert (= bs!879671 (and d!1404668 b!4542476)))

(assert (=> bs!879671 (= (dynLambda!21229 lambda!176667 (tuple2!51267 key!3287 (_2!28927 (get!16706 lt!1717190)))) (= (hash!2939 hashF!1107 (_1!28927 (tuple2!51267 key!3287 (_2!28927 (get!16706 lt!1717190))))) (_1!28928 (h!56664 (toList!4424 lm!1477)))))))

(declare-fun m!5311945 () Bool)

(assert (=> bs!879671 m!5311945))

(assert (=> d!1404546 d!1404668))

(declare-fun b_lambda!158245 () Bool)

(assert (= b_lambda!158227 (or start!451080 b_lambda!158245)))

(declare-fun bs!879672 () Bool)

(declare-fun d!1404670 () Bool)

(assert (= bs!879672 (and d!1404670 start!451080)))

(assert (=> bs!879672 (= (dynLambda!21228 lambda!176665 (h!56664 (toList!4424 lt!1717217))) (noDuplicateKeys!1208 (_2!28928 (h!56664 (toList!4424 lt!1717217)))))))

(declare-fun m!5311947 () Bool)

(assert (=> bs!879672 m!5311947))

(assert (=> b!4542882 d!1404670))

(declare-fun b_lambda!158247 () Bool)

(assert (= b_lambda!158217 (or b!4542476 b_lambda!158247)))

(declare-fun bs!879673 () Bool)

(declare-fun d!1404672 () Bool)

(assert (= bs!879673 (and d!1404672 b!4542476)))

(assert (=> bs!879673 (= (dynLambda!21228 lambda!176666 (h!56664 (toList!4424 lm!1477))) (allKeysSameHash!1062 (_2!28928 (h!56664 (toList!4424 lm!1477))) (_1!28928 (h!56664 (toList!4424 lm!1477))) hashF!1107))))

(declare-fun m!5311949 () Bool)

(assert (=> bs!879673 m!5311949))

(assert (=> d!1404544 d!1404672))

(declare-fun b_lambda!158249 () Bool)

(assert (= b_lambda!158215 (or start!451080 b_lambda!158249)))

(declare-fun bs!879674 () Bool)

(declare-fun d!1404674 () Bool)

(assert (= bs!879674 (and d!1404674 start!451080)))

(assert (=> bs!879674 (= (dynLambda!21228 lambda!176665 (h!56664 (toList!4424 lm!1477))) (noDuplicateKeys!1208 (_2!28928 (h!56664 (toList!4424 lm!1477)))))))

(declare-fun m!5311951 () Bool)

(assert (=> bs!879674 m!5311951))

(assert (=> d!1404530 d!1404674))

(declare-fun b_lambda!158251 () Bool)

(assert (= b_lambda!158241 (or start!451080 b_lambda!158251)))

(declare-fun bs!879675 () Bool)

(declare-fun d!1404676 () Bool)

(assert (= bs!879675 (and d!1404676 start!451080)))

(assert (=> bs!879675 (= (dynLambda!21228 lambda!176665 lt!1717192) (noDuplicateKeys!1208 (_2!28928 lt!1717192)))))

(declare-fun m!5311953 () Bool)

(assert (=> bs!879675 m!5311953))

(assert (=> d!1404644 d!1404676))

(declare-fun b_lambda!158253 () Bool)

(assert (= b_lambda!158221 (or start!451080 b_lambda!158253)))

(assert (=> b!4542805 d!1404674))

(check-sat (not d!1404524) (not b!4542846) (not b!4542654) (not d!1404420) (not b!4542650) (not b!4542817) (not b!4542823) (not b!4542697) (not b!4542649) (not d!1404574) (not d!1404558) (not d!1404660) (not b!4542750) (not b!4542816) (not d!1404492) (not b!4542698) (not d!1404636) (not bm!316776) (not d!1404388) (not d!1404518) (not d!1404520) (not d!1404428) (not b!4542735) (not b_lambda!158251) (not bm!316792) (not b!4542944) (not b!4542866) (not bm!316771) (not b!4542820) (not b!4542551) (not b!4542822) (not d!1404588) (not d!1404504) (not d!1404444) (not bs!879675) tp_is_empty!28109 (not b!4542775) (not bm!316772) (not b!4542824) (not d!1404654) (not b!4542933) (not b!4542734) (not d!1404478) (not b!4542869) (not b!4542715) (not b!4542929) (not bs!879674) (not bm!316791) (not b!4542550) (not b!4542851) (not b!4542566) (not b!4542549) (not b!4542842) (not bs!879673) (not bm!316769) (not b!4542773) (not b!4542718) (not b!4542889) (not b!4542768) (not d!1404564) (not b!4542910) (not b!4542769) (not b!4542767) (not b!4542565) (not d!1404576) (not b!4542912) (not d!1404666) (not b!4542648) (not d!1404612) (not bm!316788) (not d!1404644) (not b!4542864) (not b_lambda!158249) (not d!1404652) (not b_lambda!158245) (not b!4542849) (not b!4542714) (not d!1404500) (not d!1404650) (not b!4542916) (not b!4542778) (not bm!316770) (not b!4542653) (not d!1404486) (not bs!879671) tp_is_empty!28111 (not b!4542658) (not d!1404614) (not d!1404436) (not b!4542934) (not b!4542806) (not d!1404656) (not d!1404658) (not bm!316768) (not b!4542684) (not b!4542850) (not d!1404386) (not d!1404620) (not b!4542847) (not d!1404646) (not b!4542840) (not d!1404554) (not d!1404544) (not d!1404568) (not b_lambda!158247) (not b!4542683) (not b!4542696) (not b!4542867) (not b!4542676) (not d!1404390) (not d!1404542) (not b!4542725) (not b!4542788) (not b!4542826) (not d!1404516) (not bm!316773) (not bm!316786) (not d!1404546) (not b!4542651) (not d!1404514) (not bm!316790) (not b!4542745) (not d!1404586) (not b!4542931) (not d!1404422) (not d!1404512) (not b_lambda!158253) (not b_lambda!158243) (not b!4542825) (not b!4542747) (not b!4542918) (not b!4542748) (not b!4542848) (not b!4542569) (not b!4542567) (not b!4542711) (not d!1404580) (not d!1404470) (not b!4542821) (not d!1404536) (not b!4542913) (not d!1404498) (not b!4542883) (not b!4542772) (not b!4542738) (not b!4542865) (not b!4542729) (not d!1404640) (not b!4542604) (not d!1404522) (not d!1404662) (not d!1404648) (not b!4542675) (not d!1404582) (not d!1404446) (not d!1404482) (not bs!879672) (not d!1404530) (not b!4542793) (not d!1404552) (not b!4542852) (not d!1404664) (not b!4542939) (not d!1404414) (not d!1404618) (not b!4542652) (not b!4542553))
(check-sat)
