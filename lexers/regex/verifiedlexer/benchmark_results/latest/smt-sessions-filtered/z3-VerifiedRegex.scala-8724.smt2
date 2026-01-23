; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!465936 () Bool)

(assert start!465936)

(declare-fun b!4636456 () Bool)

(declare-fun e!2892350 () Bool)

(declare-fun e!2892356 () Bool)

(assert (=> b!4636456 (= e!2892350 e!2892356)))

(declare-fun res!1946325 () Bool)

(assert (=> b!4636456 (=> res!1946325 e!2892356)))

(declare-datatypes ((K!13025 0))(
  ( (K!13026 (val!18691 Int)) )
))
(declare-datatypes ((V!13271 0))(
  ( (V!13272 (val!18692 Int)) )
))
(declare-datatypes ((tuple2!52646 0))(
  ( (tuple2!52647 (_1!29617 K!13025) (_2!29617 V!13271)) )
))
(declare-datatypes ((List!51786 0))(
  ( (Nil!51662) (Cons!51662 (h!57752 tuple2!52646) (t!358858 List!51786)) )
))
(declare-datatypes ((ListMap!4369 0))(
  ( (ListMap!4370 (toList!5065 List!51786)) )
))
(declare-fun lt!1799142 () ListMap!4369)

(declare-fun lt!1799151 () ListMap!4369)

(assert (=> b!4636456 (= res!1946325 (not (= lt!1799142 lt!1799151)))))

(declare-fun lt!1799149 () ListMap!4369)

(declare-fun oldBucket!40 () List!51786)

(declare-fun +!1916 (ListMap!4369 tuple2!52646) ListMap!4369)

(assert (=> b!4636456 (= lt!1799151 (+!1916 lt!1799149 (h!57752 oldBucket!40)))))

(declare-fun lt!1799136 () ListMap!4369)

(declare-fun key!4968 () K!13025)

(declare-fun -!590 (ListMap!4369 K!13025) ListMap!4369)

(assert (=> b!4636456 (= lt!1799142 (-!590 lt!1799136 key!4968))))

(declare-fun lt!1799157 () ListMap!4369)

(assert (=> b!4636456 (= lt!1799136 (+!1916 lt!1799157 (h!57752 oldBucket!40)))))

(declare-fun lt!1799159 () ListMap!4369)

(declare-fun lt!1799161 () ListMap!4369)

(assert (=> b!4636456 (= lt!1799159 lt!1799161)))

(assert (=> b!4636456 (= lt!1799161 (+!1916 lt!1799149 (h!57752 oldBucket!40)))))

(assert (=> b!4636456 (= lt!1799159 (-!590 (+!1916 lt!1799157 (h!57752 oldBucket!40)) key!4968))))

(declare-datatypes ((Unit!114499 0))(
  ( (Unit!114500) )
))
(declare-fun lt!1799138 () Unit!114499)

(declare-fun addRemoveCommutativeForDiffKeys!45 (ListMap!4369 K!13025 V!13271 K!13025) Unit!114499)

(assert (=> b!4636456 (= lt!1799138 (addRemoveCommutativeForDiffKeys!45 lt!1799157 (_1!29617 (h!57752 oldBucket!40)) (_2!29617 (h!57752 oldBucket!40)) key!4968))))

(declare-fun lt!1799135 () ListMap!4369)

(declare-fun eq!865 (ListMap!4369 ListMap!4369) Bool)

(assert (=> b!4636456 (eq!865 lt!1799135 lt!1799149)))

(assert (=> b!4636456 (= lt!1799149 (-!590 lt!1799157 key!4968))))

(declare-datatypes ((Hashable!5947 0))(
  ( (HashableExt!5946 (__x!31650 Int)) )
))
(declare-fun hashF!1389 () Hashable!5947)

(declare-fun hash!414 () (_ BitVec 64))

(declare-fun lt!1799150 () List!51786)

(declare-fun lt!1799139 () Unit!114499)

(declare-fun lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMapOneHash!152 ((_ BitVec 64) List!51786 List!51786 K!13025 Hashable!5947) Unit!114499)

(assert (=> b!4636456 (= lt!1799139 (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMapOneHash!152 hash!414 (t!358858 oldBucket!40) lt!1799150 key!4968 hashF!1389))))

(declare-fun b!4636457 () Bool)

(declare-fun e!2892349 () Bool)

(assert (=> b!4636457 (= e!2892356 e!2892349)))

(declare-fun res!1946314 () Bool)

(assert (=> b!4636457 (=> res!1946314 e!2892349)))

(declare-fun lt!1799147 () ListMap!4369)

(assert (=> b!4636457 (= res!1946314 (not (eq!865 lt!1799147 lt!1799151)))))

(assert (=> b!4636457 (eq!865 lt!1799142 lt!1799147)))

(declare-fun lt!1799156 () ListMap!4369)

(assert (=> b!4636457 (= lt!1799147 (-!590 lt!1799156 key!4968))))

(declare-fun lt!1799137 () Unit!114499)

(declare-fun lemmaRemovePreservesEq!46 (ListMap!4369 ListMap!4369 K!13025) Unit!114499)

(assert (=> b!4636457 (= lt!1799137 (lemmaRemovePreservesEq!46 lt!1799136 lt!1799156 key!4968))))

(declare-fun b!4636458 () Bool)

(declare-fun e!2892354 () Bool)

(declare-fun e!2892348 () Bool)

(assert (=> b!4636458 (= e!2892354 (not e!2892348))))

(declare-fun res!1946310 () Bool)

(assert (=> b!4636458 (=> res!1946310 e!2892348)))

(get-info :version)

(assert (=> b!4636458 (= res!1946310 (or (and ((_ is Cons!51662) oldBucket!40) (= (_1!29617 (h!57752 oldBucket!40)) key!4968)) (not ((_ is Cons!51662) oldBucket!40)) (= (_1!29617 (h!57752 oldBucket!40)) key!4968)))))

(declare-fun e!2892357 () Bool)

(assert (=> b!4636458 e!2892357))

(declare-fun res!1946330 () Bool)

(assert (=> b!4636458 (=> (not res!1946330) (not e!2892357))))

(declare-fun lt!1799152 () ListMap!4369)

(declare-fun addToMapMapFromBucket!1011 (List!51786 ListMap!4369) ListMap!4369)

(assert (=> b!4636458 (= res!1946330 (= lt!1799156 (addToMapMapFromBucket!1011 oldBucket!40 lt!1799152)))))

(declare-datatypes ((tuple2!52648 0))(
  ( (tuple2!52649 (_1!29618 (_ BitVec 64)) (_2!29618 List!51786)) )
))
(declare-datatypes ((List!51787 0))(
  ( (Nil!51663) (Cons!51663 (h!57753 tuple2!52648) (t!358859 List!51787)) )
))
(declare-fun extractMap!1606 (List!51787) ListMap!4369)

(assert (=> b!4636458 (= lt!1799152 (extractMap!1606 Nil!51663))))

(assert (=> b!4636458 true))

(declare-fun b!4636459 () Bool)

(declare-fun e!2892355 () Bool)

(declare-fun lt!1799140 () List!51787)

(declare-fun lambda!195102 () Int)

(declare-fun forall!10902 (List!51787 Int) Bool)

(assert (=> b!4636459 (= e!2892355 (forall!10902 lt!1799140 lambda!195102))))

(declare-fun b!4636460 () Bool)

(declare-fun res!1946313 () Bool)

(declare-fun e!2892347 () Bool)

(assert (=> b!4636460 (=> (not res!1946313) (not e!2892347))))

(declare-fun newBucket!224 () List!51786)

(declare-fun noDuplicateKeys!1550 (List!51786) Bool)

(assert (=> b!4636460 (= res!1946313 (noDuplicateKeys!1550 newBucket!224))))

(declare-fun b!4636461 () Bool)

(declare-fun res!1946312 () Bool)

(assert (=> b!4636461 (=> (not res!1946312) (not e!2892347))))

(declare-fun removePairForKey!1173 (List!51786 K!13025) List!51786)

(assert (=> b!4636461 (= res!1946312 (= (removePairForKey!1173 oldBucket!40 key!4968) newBucket!224))))

(declare-fun b!4636462 () Bool)

(declare-fun e!2892352 () Bool)

(assert (=> b!4636462 (= e!2892352 e!2892354)))

(declare-fun res!1946324 () Bool)

(assert (=> b!4636462 (=> (not res!1946324) (not e!2892354))))

(declare-fun lt!1799145 () (_ BitVec 64))

(assert (=> b!4636462 (= res!1946324 (= lt!1799145 hash!414))))

(declare-fun hash!3622 (Hashable!5947 K!13025) (_ BitVec 64))

(assert (=> b!4636462 (= lt!1799145 (hash!3622 hashF!1389 key!4968))))

(declare-fun b!4636463 () Bool)

(declare-fun res!1946328 () Bool)

(assert (=> b!4636463 (=> res!1946328 e!2892349)))

(declare-fun lt!1799162 () ListMap!4369)

(assert (=> b!4636463 (= res!1946328 (not (eq!865 lt!1799162 (+!1916 lt!1799135 (h!57752 oldBucket!40)))))))

(declare-fun b!4636464 () Bool)

(declare-fun res!1946315 () Bool)

(declare-fun e!2892345 () Bool)

(assert (=> b!4636464 (=> res!1946315 e!2892345)))

(assert (=> b!4636464 (= res!1946315 (not (= (removePairForKey!1173 (t!358858 oldBucket!40) key!4968) lt!1799150)))))

(declare-fun b!4636465 () Bool)

(declare-fun e!2892346 () Bool)

(assert (=> b!4636465 (= e!2892346 e!2892345)))

(declare-fun res!1946319 () Bool)

(assert (=> b!4636465 (=> res!1946319 e!2892345)))

(declare-fun lt!1799154 () List!51786)

(assert (=> b!4636465 (= res!1946319 (not (= (removePairForKey!1173 lt!1799154 key!4968) lt!1799150)))))

(declare-fun tail!8185 (List!51786) List!51786)

(assert (=> b!4636465 (= lt!1799150 (tail!8185 newBucket!224))))

(assert (=> b!4636465 (= lt!1799154 (tail!8185 oldBucket!40))))

(declare-fun b!4636466 () Bool)

(declare-fun e!2892358 () Bool)

(assert (=> b!4636466 (= e!2892358 e!2892350)))

(declare-fun res!1946316 () Bool)

(assert (=> b!4636466 (=> res!1946316 e!2892350)))

(declare-fun lt!1799143 () tuple2!52646)

(assert (=> b!4636466 (= res!1946316 (not (eq!865 lt!1799162 (+!1916 lt!1799135 lt!1799143))))))

(assert (=> b!4636466 (= lt!1799135 (extractMap!1606 (Cons!51663 (tuple2!52649 hash!414 lt!1799150) Nil!51663)))))

(assert (=> b!4636466 (= lt!1799162 (extractMap!1606 (Cons!51663 (tuple2!52649 hash!414 newBucket!224) Nil!51663)))))

(declare-fun b!4636467 () Bool)

(declare-fun res!1946326 () Bool)

(assert (=> b!4636467 (=> res!1946326 e!2892355)))

(assert (=> b!4636467 (= res!1946326 (not (eq!865 lt!1799156 lt!1799136)))))

(declare-fun b!4636468 () Bool)

(declare-fun res!1946317 () Bool)

(assert (=> b!4636468 (=> res!1946317 e!2892355)))

(assert (=> b!4636468 (= res!1946317 (not (eq!865 lt!1799162 lt!1799147)))))

(declare-fun tp!1342530 () Bool)

(declare-fun tp_is_empty!29495 () Bool)

(declare-fun b!4636469 () Bool)

(declare-fun tp_is_empty!29493 () Bool)

(declare-fun e!2892353 () Bool)

(assert (=> b!4636469 (= e!2892353 (and tp_is_empty!29493 tp_is_empty!29495 tp!1342530))))

(declare-fun b!4636470 () Bool)

(assert (=> b!4636470 (= e!2892345 e!2892358)))

(declare-fun res!1946323 () Bool)

(assert (=> b!4636470 (=> res!1946323 e!2892358)))

(assert (=> b!4636470 (= res!1946323 (not (eq!865 lt!1799156 (+!1916 (extractMap!1606 (Cons!51663 (tuple2!52649 hash!414 lt!1799154) Nil!51663)) (h!57752 oldBucket!40)))))))

(assert (=> b!4636470 (eq!865 (addToMapMapFromBucket!1011 (Cons!51662 lt!1799143 lt!1799150) (ListMap!4370 Nil!51662)) (+!1916 (addToMapMapFromBucket!1011 lt!1799150 (ListMap!4370 Nil!51662)) lt!1799143))))

(declare-fun lt!1799155 () Unit!114499)

(declare-fun lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!116 (tuple2!52646 List!51786 ListMap!4369) Unit!114499)

(assert (=> b!4636470 (= lt!1799155 (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!116 lt!1799143 lt!1799150 (ListMap!4370 Nil!51662)))))

(declare-fun head!9684 (List!51786) tuple2!52646)

(assert (=> b!4636470 (= lt!1799143 (head!9684 newBucket!224))))

(declare-fun lt!1799144 () tuple2!52646)

(assert (=> b!4636470 (eq!865 (addToMapMapFromBucket!1011 (Cons!51662 lt!1799144 lt!1799154) (ListMap!4370 Nil!51662)) (+!1916 (addToMapMapFromBucket!1011 lt!1799154 (ListMap!4370 Nil!51662)) lt!1799144))))

(declare-fun lt!1799160 () Unit!114499)

(assert (=> b!4636470 (= lt!1799160 (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!116 lt!1799144 lt!1799154 (ListMap!4370 Nil!51662)))))

(assert (=> b!4636470 (= lt!1799144 (head!9684 oldBucket!40))))

(declare-fun contains!14789 (ListMap!4369 K!13025) Bool)

(assert (=> b!4636470 (contains!14789 lt!1799157 key!4968)))

(declare-fun lt!1799153 () List!51787)

(assert (=> b!4636470 (= lt!1799157 (extractMap!1606 lt!1799153))))

(declare-fun lt!1799146 () Unit!114499)

(declare-datatypes ((ListLongMap!3655 0))(
  ( (ListLongMap!3656 (toList!5066 List!51787)) )
))
(declare-fun lemmaListContainsThenExtractedMapContains!368 (ListLongMap!3655 K!13025 Hashable!5947) Unit!114499)

(assert (=> b!4636470 (= lt!1799146 (lemmaListContainsThenExtractedMapContains!368 (ListLongMap!3656 lt!1799153) key!4968 hashF!1389))))

(assert (=> b!4636470 (= lt!1799153 (Cons!51663 (tuple2!52649 hash!414 (t!358858 oldBucket!40)) Nil!51663))))

(declare-fun b!4636471 () Bool)

(assert (=> b!4636471 (= e!2892349 e!2892355)))

(declare-fun res!1946327 () Bool)

(assert (=> b!4636471 (=> res!1946327 e!2892355)))

(assert (=> b!4636471 (= res!1946327 (not (eq!865 lt!1799162 lt!1799151)))))

(assert (=> b!4636471 (eq!865 lt!1799161 (+!1916 lt!1799135 (h!57752 oldBucket!40)))))

(declare-fun lt!1799166 () Unit!114499)

(declare-fun lemmaAddToEqMapsPreservesEq!62 (ListMap!4369 ListMap!4369 K!13025 V!13271) Unit!114499)

(assert (=> b!4636471 (= lt!1799166 (lemmaAddToEqMapsPreservesEq!62 lt!1799149 lt!1799135 (_1!29617 (h!57752 oldBucket!40)) (_2!29617 (h!57752 oldBucket!40))))))

(declare-fun b!4636472 () Bool)

(assert (=> b!4636472 (= e!2892357 (= lt!1799152 (ListMap!4370 Nil!51662)))))

(declare-fun b!4636473 () Bool)

(assert (=> b!4636473 (= e!2892348 e!2892346)))

(declare-fun res!1946322 () Bool)

(assert (=> b!4636473 (=> res!1946322 e!2892346)))

(declare-fun containsKey!2570 (List!51786 K!13025) Bool)

(assert (=> b!4636473 (= res!1946322 (not (containsKey!2570 (t!358858 oldBucket!40) key!4968)))))

(assert (=> b!4636473 (containsKey!2570 oldBucket!40 key!4968)))

(declare-fun lt!1799158 () Unit!114499)

(declare-fun lemmaGetPairDefinedThenContainsKey!96 (List!51786 K!13025 Hashable!5947) Unit!114499)

(assert (=> b!4636473 (= lt!1799158 (lemmaGetPairDefinedThenContainsKey!96 oldBucket!40 key!4968 hashF!1389))))

(declare-fun lt!1799164 () List!51786)

(declare-datatypes ((Option!11712 0))(
  ( (None!11711) (Some!11711 (v!45917 tuple2!52646)) )
))
(declare-fun isDefined!8977 (Option!11712) Bool)

(declare-fun getPair!342 (List!51786 K!13025) Option!11712)

(assert (=> b!4636473 (isDefined!8977 (getPair!342 lt!1799164 key!4968))))

(declare-fun lt!1799141 () tuple2!52648)

(declare-fun lt!1799165 () Unit!114499)

(declare-fun forallContained!3134 (List!51787 Int tuple2!52648) Unit!114499)

(assert (=> b!4636473 (= lt!1799165 (forallContained!3134 lt!1799140 lambda!195102 lt!1799141))))

(declare-fun contains!14790 (List!51787 tuple2!52648) Bool)

(assert (=> b!4636473 (contains!14790 lt!1799140 lt!1799141)))

(assert (=> b!4636473 (= lt!1799141 (tuple2!52649 lt!1799145 lt!1799164))))

(declare-fun lt!1799167 () ListLongMap!3655)

(declare-fun lt!1799148 () Unit!114499)

(declare-fun lemmaGetValueImpliesTupleContained!147 (ListLongMap!3655 (_ BitVec 64) List!51786) Unit!114499)

(assert (=> b!4636473 (= lt!1799148 (lemmaGetValueImpliesTupleContained!147 lt!1799167 lt!1799145 lt!1799164))))

(declare-fun apply!12215 (ListLongMap!3655 (_ BitVec 64)) List!51786)

(assert (=> b!4636473 (= lt!1799164 (apply!12215 lt!1799167 lt!1799145))))

(declare-fun contains!14791 (ListLongMap!3655 (_ BitVec 64)) Bool)

(assert (=> b!4636473 (contains!14791 lt!1799167 lt!1799145)))

(declare-fun lt!1799134 () Unit!114499)

(declare-fun lemmaInGenMapThenLongMapContainsHash!548 (ListLongMap!3655 K!13025 Hashable!5947) Unit!114499)

(assert (=> b!4636473 (= lt!1799134 (lemmaInGenMapThenLongMapContainsHash!548 lt!1799167 key!4968 hashF!1389))))

(declare-fun lt!1799163 () Unit!114499)

(declare-fun lemmaInGenMapThenGetPairDefined!138 (ListLongMap!3655 K!13025 Hashable!5947) Unit!114499)

(assert (=> b!4636473 (= lt!1799163 (lemmaInGenMapThenGetPairDefined!138 lt!1799167 key!4968 hashF!1389))))

(assert (=> b!4636473 (= lt!1799167 (ListLongMap!3656 lt!1799140))))

(declare-fun b!4636474 () Bool)

(declare-fun res!1946320 () Bool)

(assert (=> b!4636474 (=> (not res!1946320) (not e!2892354))))

(declare-fun allKeysSameHash!1404 (List!51786 (_ BitVec 64) Hashable!5947) Bool)

(assert (=> b!4636474 (= res!1946320 (allKeysSameHash!1404 newBucket!224 hash!414 hashF!1389))))

(declare-fun b!4636475 () Bool)

(assert (=> b!4636475 (= e!2892347 e!2892352)))

(declare-fun res!1946329 () Bool)

(assert (=> b!4636475 (=> (not res!1946329) (not e!2892352))))

(assert (=> b!4636475 (= res!1946329 (contains!14789 lt!1799156 key!4968))))

(assert (=> b!4636475 (= lt!1799156 (extractMap!1606 lt!1799140))))

(assert (=> b!4636475 (= lt!1799140 (Cons!51663 (tuple2!52649 hash!414 oldBucket!40) Nil!51663))))

(declare-fun res!1946321 () Bool)

(assert (=> start!465936 (=> (not res!1946321) (not e!2892347))))

(assert (=> start!465936 (= res!1946321 (noDuplicateKeys!1550 oldBucket!40))))

(assert (=> start!465936 e!2892347))

(assert (=> start!465936 true))

(assert (=> start!465936 e!2892353))

(assert (=> start!465936 tp_is_empty!29493))

(declare-fun e!2892351 () Bool)

(assert (=> start!465936 e!2892351))

(declare-fun b!4636476 () Bool)

(declare-fun res!1946318 () Bool)

(assert (=> b!4636476 (=> (not res!1946318) (not e!2892347))))

(assert (=> b!4636476 (= res!1946318 (allKeysSameHash!1404 oldBucket!40 hash!414 hashF!1389))))

(declare-fun tp!1342531 () Bool)

(declare-fun b!4636477 () Bool)

(assert (=> b!4636477 (= e!2892351 (and tp_is_empty!29493 tp_is_empty!29495 tp!1342531))))

(declare-fun b!4636478 () Bool)

(declare-fun res!1946311 () Bool)

(assert (=> b!4636478 (=> res!1946311 e!2892349)))

(assert (=> b!4636478 (= res!1946311 (not (= lt!1799143 (h!57752 oldBucket!40))))))

(assert (= (and start!465936 res!1946321) b!4636460))

(assert (= (and b!4636460 res!1946313) b!4636461))

(assert (= (and b!4636461 res!1946312) b!4636476))

(assert (= (and b!4636476 res!1946318) b!4636475))

(assert (= (and b!4636475 res!1946329) b!4636462))

(assert (= (and b!4636462 res!1946324) b!4636474))

(assert (= (and b!4636474 res!1946320) b!4636458))

(assert (= (and b!4636458 res!1946330) b!4636472))

(assert (= (and b!4636458 (not res!1946310)) b!4636473))

(assert (= (and b!4636473 (not res!1946322)) b!4636465))

(assert (= (and b!4636465 (not res!1946319)) b!4636464))

(assert (= (and b!4636464 (not res!1946315)) b!4636470))

(assert (= (and b!4636470 (not res!1946323)) b!4636466))

(assert (= (and b!4636466 (not res!1946316)) b!4636456))

(assert (= (and b!4636456 (not res!1946325)) b!4636457))

(assert (= (and b!4636457 (not res!1946314)) b!4636478))

(assert (= (and b!4636478 (not res!1946311)) b!4636463))

(assert (= (and b!4636463 (not res!1946328)) b!4636471))

(assert (= (and b!4636471 (not res!1946327)) b!4636467))

(assert (= (and b!4636467 (not res!1946326)) b!4636468))

(assert (= (and b!4636468 (not res!1946317)) b!4636459))

(assert (= (and start!465936 ((_ is Cons!51662) oldBucket!40)) b!4636469))

(assert (= (and start!465936 ((_ is Cons!51662) newBucket!224)) b!4636477))

(declare-fun m!5493699 () Bool)

(assert (=> b!4636456 m!5493699))

(declare-fun m!5493701 () Bool)

(assert (=> b!4636456 m!5493701))

(declare-fun m!5493703 () Bool)

(assert (=> b!4636456 m!5493703))

(declare-fun m!5493705 () Bool)

(assert (=> b!4636456 m!5493705))

(declare-fun m!5493707 () Bool)

(assert (=> b!4636456 m!5493707))

(declare-fun m!5493709 () Bool)

(assert (=> b!4636456 m!5493709))

(assert (=> b!4636456 m!5493709))

(declare-fun m!5493711 () Bool)

(assert (=> b!4636456 m!5493711))

(declare-fun m!5493713 () Bool)

(assert (=> b!4636456 m!5493713))

(declare-fun m!5493715 () Bool)

(assert (=> b!4636471 m!5493715))

(declare-fun m!5493717 () Bool)

(assert (=> b!4636471 m!5493717))

(assert (=> b!4636471 m!5493717))

(declare-fun m!5493719 () Bool)

(assert (=> b!4636471 m!5493719))

(declare-fun m!5493721 () Bool)

(assert (=> b!4636471 m!5493721))

(declare-fun m!5493723 () Bool)

(assert (=> b!4636460 m!5493723))

(declare-fun m!5493725 () Bool)

(assert (=> b!4636464 m!5493725))

(declare-fun m!5493727 () Bool)

(assert (=> b!4636457 m!5493727))

(declare-fun m!5493729 () Bool)

(assert (=> b!4636457 m!5493729))

(declare-fun m!5493731 () Bool)

(assert (=> b!4636457 m!5493731))

(declare-fun m!5493733 () Bool)

(assert (=> b!4636457 m!5493733))

(assert (=> b!4636463 m!5493717))

(assert (=> b!4636463 m!5493717))

(declare-fun m!5493735 () Bool)

(assert (=> b!4636463 m!5493735))

(declare-fun m!5493737 () Bool)

(assert (=> b!4636459 m!5493737))

(declare-fun m!5493739 () Bool)

(assert (=> b!4636465 m!5493739))

(declare-fun m!5493741 () Bool)

(assert (=> b!4636465 m!5493741))

(declare-fun m!5493743 () Bool)

(assert (=> b!4636465 m!5493743))

(declare-fun m!5493745 () Bool)

(assert (=> b!4636473 m!5493745))

(declare-fun m!5493747 () Bool)

(assert (=> b!4636473 m!5493747))

(declare-fun m!5493749 () Bool)

(assert (=> b!4636473 m!5493749))

(declare-fun m!5493751 () Bool)

(assert (=> b!4636473 m!5493751))

(declare-fun m!5493753 () Bool)

(assert (=> b!4636473 m!5493753))

(declare-fun m!5493755 () Bool)

(assert (=> b!4636473 m!5493755))

(assert (=> b!4636473 m!5493745))

(declare-fun m!5493757 () Bool)

(assert (=> b!4636473 m!5493757))

(declare-fun m!5493759 () Bool)

(assert (=> b!4636473 m!5493759))

(declare-fun m!5493761 () Bool)

(assert (=> b!4636473 m!5493761))

(declare-fun m!5493763 () Bool)

(assert (=> b!4636473 m!5493763))

(declare-fun m!5493765 () Bool)

(assert (=> b!4636473 m!5493765))

(declare-fun m!5493767 () Bool)

(assert (=> b!4636473 m!5493767))

(declare-fun m!5493769 () Bool)

(assert (=> b!4636458 m!5493769))

(declare-fun m!5493771 () Bool)

(assert (=> b!4636458 m!5493771))

(declare-fun m!5493773 () Bool)

(assert (=> b!4636474 m!5493773))

(declare-fun m!5493775 () Bool)

(assert (=> b!4636470 m!5493775))

(declare-fun m!5493777 () Bool)

(assert (=> b!4636470 m!5493777))

(declare-fun m!5493779 () Bool)

(assert (=> b!4636470 m!5493779))

(declare-fun m!5493781 () Bool)

(assert (=> b!4636470 m!5493781))

(declare-fun m!5493783 () Bool)

(assert (=> b!4636470 m!5493783))

(assert (=> b!4636470 m!5493779))

(declare-fun m!5493785 () Bool)

(assert (=> b!4636470 m!5493785))

(declare-fun m!5493787 () Bool)

(assert (=> b!4636470 m!5493787))

(declare-fun m!5493789 () Bool)

(assert (=> b!4636470 m!5493789))

(assert (=> b!4636470 m!5493781))

(declare-fun m!5493791 () Bool)

(assert (=> b!4636470 m!5493791))

(assert (=> b!4636470 m!5493777))

(assert (=> b!4636470 m!5493785))

(declare-fun m!5493793 () Bool)

(assert (=> b!4636470 m!5493793))

(declare-fun m!5493795 () Bool)

(assert (=> b!4636470 m!5493795))

(declare-fun m!5493797 () Bool)

(assert (=> b!4636470 m!5493797))

(declare-fun m!5493799 () Bool)

(assert (=> b!4636470 m!5493799))

(assert (=> b!4636470 m!5493783))

(declare-fun m!5493801 () Bool)

(assert (=> b!4636470 m!5493801))

(assert (=> b!4636470 m!5493797))

(declare-fun m!5493803 () Bool)

(assert (=> b!4636470 m!5493803))

(declare-fun m!5493805 () Bool)

(assert (=> b!4636470 m!5493805))

(assert (=> b!4636470 m!5493789))

(assert (=> b!4636470 m!5493803))

(declare-fun m!5493807 () Bool)

(assert (=> b!4636470 m!5493807))

(declare-fun m!5493809 () Bool)

(assert (=> b!4636470 m!5493809))

(declare-fun m!5493811 () Bool)

(assert (=> b!4636461 m!5493811))

(declare-fun m!5493813 () Bool)

(assert (=> b!4636466 m!5493813))

(assert (=> b!4636466 m!5493813))

(declare-fun m!5493815 () Bool)

(assert (=> b!4636466 m!5493815))

(declare-fun m!5493817 () Bool)

(assert (=> b!4636466 m!5493817))

(declare-fun m!5493819 () Bool)

(assert (=> b!4636466 m!5493819))

(declare-fun m!5493821 () Bool)

(assert (=> b!4636462 m!5493821))

(declare-fun m!5493823 () Bool)

(assert (=> b!4636475 m!5493823))

(declare-fun m!5493825 () Bool)

(assert (=> b!4636475 m!5493825))

(declare-fun m!5493827 () Bool)

(assert (=> start!465936 m!5493827))

(declare-fun m!5493829 () Bool)

(assert (=> b!4636468 m!5493829))

(declare-fun m!5493831 () Bool)

(assert (=> b!4636476 m!5493831))

(declare-fun m!5493833 () Bool)

(assert (=> b!4636467 m!5493833))

(check-sat (not b!4636468) (not start!465936) (not b!4636474) tp_is_empty!29495 (not b!4636456) (not b!4636463) (not b!4636471) (not b!4636476) (not b!4636461) (not b!4636457) (not b!4636477) tp_is_empty!29493 (not b!4636470) (not b!4636467) (not b!4636460) (not b!4636465) (not b!4636475) (not b!4636464) (not b!4636469) (not b!4636473) (not b!4636458) (not b!4636466) (not b!4636462) (not b!4636459))
(check-sat)
(get-model)

(declare-fun d!1461979 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!8917 (List!51786) (InoxSet tuple2!52646))

(assert (=> d!1461979 (= (eq!865 lt!1799156 lt!1799136) (= (content!8917 (toList!5065 lt!1799156)) (content!8917 (toList!5065 lt!1799136))))))

(declare-fun bs!1031356 () Bool)

(assert (= bs!1031356 d!1461979))

(declare-fun m!5493841 () Bool)

(assert (=> bs!1031356 m!5493841))

(declare-fun m!5493843 () Bool)

(assert (=> bs!1031356 m!5493843))

(assert (=> b!4636467 d!1461979))

(declare-fun d!1461981 () Bool)

(assert (=> d!1461981 (= (eq!865 lt!1799147 lt!1799151) (= (content!8917 (toList!5065 lt!1799147)) (content!8917 (toList!5065 lt!1799151))))))

(declare-fun bs!1031357 () Bool)

(assert (= bs!1031357 d!1461981))

(declare-fun m!5493845 () Bool)

(assert (=> bs!1031357 m!5493845))

(declare-fun m!5493847 () Bool)

(assert (=> bs!1031357 m!5493847))

(assert (=> b!4636457 d!1461981))

(declare-fun d!1461983 () Bool)

(assert (=> d!1461983 (= (eq!865 lt!1799142 lt!1799147) (= (content!8917 (toList!5065 lt!1799142)) (content!8917 (toList!5065 lt!1799147))))))

(declare-fun bs!1031358 () Bool)

(assert (= bs!1031358 d!1461983))

(declare-fun m!5493849 () Bool)

(assert (=> bs!1031358 m!5493849))

(assert (=> bs!1031358 m!5493845))

(assert (=> b!4636457 d!1461983))

(declare-fun d!1461985 () Bool)

(declare-fun e!2892370 () Bool)

(assert (=> d!1461985 e!2892370))

(declare-fun res!1946339 () Bool)

(assert (=> d!1461985 (=> (not res!1946339) (not e!2892370))))

(declare-fun lt!1799188 () ListMap!4369)

(assert (=> d!1461985 (= res!1946339 (not (contains!14789 lt!1799188 key!4968)))))

(declare-fun removePresrvNoDuplicatedKeys!293 (List!51786 K!13025) List!51786)

(assert (=> d!1461985 (= lt!1799188 (ListMap!4370 (removePresrvNoDuplicatedKeys!293 (toList!5065 lt!1799156) key!4968)))))

(assert (=> d!1461985 (= (-!590 lt!1799156 key!4968) lt!1799188)))

(declare-fun b!4636499 () Bool)

(declare-datatypes ((List!51789 0))(
  ( (Nil!51665) (Cons!51665 (h!57757 K!13025) (t!358863 List!51789)) )
))
(declare-fun content!8918 (List!51789) (InoxSet K!13025))

(declare-fun keys!18238 (ListMap!4369) List!51789)

(assert (=> b!4636499 (= e!2892370 (= ((_ map and) (content!8918 (keys!18238 lt!1799156)) ((_ map not) (store ((as const (Array K!13025 Bool)) false) key!4968 true))) (content!8918 (keys!18238 lt!1799188))))))

(assert (= (and d!1461985 res!1946339) b!4636499))

(declare-fun m!5493875 () Bool)

(assert (=> d!1461985 m!5493875))

(declare-fun m!5493877 () Bool)

(assert (=> d!1461985 m!5493877))

(declare-fun m!5493879 () Bool)

(assert (=> b!4636499 m!5493879))

(declare-fun m!5493881 () Bool)

(assert (=> b!4636499 m!5493881))

(declare-fun m!5493883 () Bool)

(assert (=> b!4636499 m!5493883))

(declare-fun m!5493885 () Bool)

(assert (=> b!4636499 m!5493885))

(assert (=> b!4636499 m!5493881))

(assert (=> b!4636499 m!5493885))

(declare-fun m!5493887 () Bool)

(assert (=> b!4636499 m!5493887))

(assert (=> b!4636457 d!1461985))

(declare-fun d!1461993 () Bool)

(assert (=> d!1461993 (eq!865 (-!590 lt!1799136 key!4968) (-!590 lt!1799156 key!4968))))

(declare-fun lt!1799191 () Unit!114499)

(declare-fun choose!31705 (ListMap!4369 ListMap!4369 K!13025) Unit!114499)

(assert (=> d!1461993 (= lt!1799191 (choose!31705 lt!1799136 lt!1799156 key!4968))))

(assert (=> d!1461993 (eq!865 lt!1799136 lt!1799156)))

(assert (=> d!1461993 (= (lemmaRemovePreservesEq!46 lt!1799136 lt!1799156 key!4968) lt!1799191)))

(declare-fun bs!1031361 () Bool)

(assert (= bs!1031361 d!1461993))

(assert (=> bs!1031361 m!5493731))

(assert (=> bs!1031361 m!5493713))

(declare-fun m!5493889 () Bool)

(assert (=> bs!1031361 m!5493889))

(assert (=> bs!1031361 m!5493713))

(assert (=> bs!1031361 m!5493731))

(declare-fun m!5493891 () Bool)

(assert (=> bs!1031361 m!5493891))

(declare-fun m!5493893 () Bool)

(assert (=> bs!1031361 m!5493893))

(assert (=> b!4636457 d!1461993))

(declare-fun d!1461995 () Bool)

(assert (=> d!1461995 (= (eq!865 lt!1799162 lt!1799147) (= (content!8917 (toList!5065 lt!1799162)) (content!8917 (toList!5065 lt!1799147))))))

(declare-fun bs!1031362 () Bool)

(assert (= bs!1031362 d!1461995))

(declare-fun m!5493895 () Bool)

(assert (=> bs!1031362 m!5493895))

(assert (=> bs!1031362 m!5493845))

(assert (=> b!4636468 d!1461995))

(declare-fun b!4636592 () Bool)

(assert (=> b!4636592 true))

(declare-fun bs!1031377 () Bool)

(declare-fun b!4636593 () Bool)

(assert (= bs!1031377 (and b!4636593 b!4636592)))

(declare-fun lambda!195142 () Int)

(declare-fun lambda!195141 () Int)

(assert (=> bs!1031377 (= lambda!195142 lambda!195141)))

(assert (=> b!4636593 true))

(declare-fun lt!1799328 () ListMap!4369)

(declare-fun lambda!195143 () Int)

(assert (=> bs!1031377 (= (= lt!1799328 lt!1799152) (= lambda!195143 lambda!195141))))

(assert (=> b!4636593 (= (= lt!1799328 lt!1799152) (= lambda!195143 lambda!195142))))

(assert (=> b!4636593 true))

(declare-fun bs!1031378 () Bool)

(declare-fun d!1461997 () Bool)

(assert (= bs!1031378 (and d!1461997 b!4636592)))

(declare-fun lt!1799325 () ListMap!4369)

(declare-fun lambda!195144 () Int)

(assert (=> bs!1031378 (= (= lt!1799325 lt!1799152) (= lambda!195144 lambda!195141))))

(declare-fun bs!1031379 () Bool)

(assert (= bs!1031379 (and d!1461997 b!4636593)))

(assert (=> bs!1031379 (= (= lt!1799325 lt!1799152) (= lambda!195144 lambda!195142))))

(assert (=> bs!1031379 (= (= lt!1799325 lt!1799328) (= lambda!195144 lambda!195143))))

(assert (=> d!1461997 true))

(declare-fun b!4636590 () Bool)

(declare-fun e!2892437 () Bool)

(declare-fun call!323609 () Bool)

(assert (=> b!4636590 (= e!2892437 call!323609)))

(declare-fun b!4636591 () Bool)

(declare-fun res!1946407 () Bool)

(declare-fun e!2892435 () Bool)

(assert (=> b!4636591 (=> (not res!1946407) (not e!2892435))))

(declare-fun forall!10903 (List!51786 Int) Bool)

(assert (=> b!4636591 (= res!1946407 (forall!10903 (toList!5065 lt!1799152) lambda!195144))))

(declare-fun c!793560 () Bool)

(declare-fun bm!323603 () Bool)

(assert (=> bm!323603 (= call!323609 (forall!10903 (toList!5065 lt!1799152) (ite c!793560 lambda!195141 lambda!195143)))))

(declare-fun e!2892436 () ListMap!4369)

(assert (=> b!4636592 (= e!2892436 lt!1799152)))

(declare-fun lt!1799331 () Unit!114499)

(declare-fun call!323610 () Unit!114499)

(assert (=> b!4636592 (= lt!1799331 call!323610)))

(assert (=> b!4636592 call!323609))

(declare-fun lt!1799323 () Unit!114499)

(assert (=> b!4636592 (= lt!1799323 lt!1799331)))

(declare-fun call!323608 () Bool)

(assert (=> b!4636592 call!323608))

(declare-fun lt!1799324 () Unit!114499)

(declare-fun Unit!114502 () Unit!114499)

(assert (=> b!4636592 (= lt!1799324 Unit!114502)))

(assert (=> b!4636593 (= e!2892436 lt!1799328)))

(declare-fun lt!1799334 () ListMap!4369)

(assert (=> b!4636593 (= lt!1799334 (+!1916 lt!1799152 (h!57752 oldBucket!40)))))

(assert (=> b!4636593 (= lt!1799328 (addToMapMapFromBucket!1011 (t!358858 oldBucket!40) (+!1916 lt!1799152 (h!57752 oldBucket!40))))))

(declare-fun lt!1799319 () Unit!114499)

(assert (=> b!4636593 (= lt!1799319 call!323610)))

(assert (=> b!4636593 (forall!10903 (toList!5065 lt!1799152) lambda!195142)))

(declare-fun lt!1799314 () Unit!114499)

(assert (=> b!4636593 (= lt!1799314 lt!1799319)))

(assert (=> b!4636593 call!323608))

(declare-fun lt!1799321 () Unit!114499)

(declare-fun Unit!114503 () Unit!114499)

(assert (=> b!4636593 (= lt!1799321 Unit!114503)))

(assert (=> b!4636593 (forall!10903 (t!358858 oldBucket!40) lambda!195143)))

(declare-fun lt!1799330 () Unit!114499)

(declare-fun Unit!114504 () Unit!114499)

(assert (=> b!4636593 (= lt!1799330 Unit!114504)))

(declare-fun lt!1799329 () Unit!114499)

(declare-fun Unit!114505 () Unit!114499)

(assert (=> b!4636593 (= lt!1799329 Unit!114505)))

(declare-fun lt!1799317 () Unit!114499)

(declare-fun forallContained!3135 (List!51786 Int tuple2!52646) Unit!114499)

(assert (=> b!4636593 (= lt!1799317 (forallContained!3135 (toList!5065 lt!1799334) lambda!195143 (h!57752 oldBucket!40)))))

(assert (=> b!4636593 (contains!14789 lt!1799334 (_1!29617 (h!57752 oldBucket!40)))))

(declare-fun lt!1799316 () Unit!114499)

(declare-fun Unit!114506 () Unit!114499)

(assert (=> b!4636593 (= lt!1799316 Unit!114506)))

(assert (=> b!4636593 (contains!14789 lt!1799328 (_1!29617 (h!57752 oldBucket!40)))))

(declare-fun lt!1799322 () Unit!114499)

(declare-fun Unit!114507 () Unit!114499)

(assert (=> b!4636593 (= lt!1799322 Unit!114507)))

(assert (=> b!4636593 (forall!10903 oldBucket!40 lambda!195143)))

(declare-fun lt!1799333 () Unit!114499)

(declare-fun Unit!114508 () Unit!114499)

(assert (=> b!4636593 (= lt!1799333 Unit!114508)))

(assert (=> b!4636593 (forall!10903 (toList!5065 lt!1799334) lambda!195143)))

(declare-fun lt!1799320 () Unit!114499)

(declare-fun Unit!114509 () Unit!114499)

(assert (=> b!4636593 (= lt!1799320 Unit!114509)))

(declare-fun lt!1799315 () Unit!114499)

(declare-fun Unit!114510 () Unit!114499)

(assert (=> b!4636593 (= lt!1799315 Unit!114510)))

(declare-fun lt!1799327 () Unit!114499)

(declare-fun addForallContainsKeyThenBeforeAdding!544 (ListMap!4369 ListMap!4369 K!13025 V!13271) Unit!114499)

(assert (=> b!4636593 (= lt!1799327 (addForallContainsKeyThenBeforeAdding!544 lt!1799152 lt!1799328 (_1!29617 (h!57752 oldBucket!40)) (_2!29617 (h!57752 oldBucket!40))))))

(assert (=> b!4636593 (forall!10903 (toList!5065 lt!1799152) lambda!195143)))

(declare-fun lt!1799326 () Unit!114499)

(assert (=> b!4636593 (= lt!1799326 lt!1799327)))

(assert (=> b!4636593 (forall!10903 (toList!5065 lt!1799152) lambda!195143)))

(declare-fun lt!1799318 () Unit!114499)

(declare-fun Unit!114511 () Unit!114499)

(assert (=> b!4636593 (= lt!1799318 Unit!114511)))

(declare-fun res!1946409 () Bool)

(assert (=> b!4636593 (= res!1946409 (forall!10903 oldBucket!40 lambda!195143))))

(assert (=> b!4636593 (=> (not res!1946409) (not e!2892437))))

(assert (=> b!4636593 e!2892437))

(declare-fun lt!1799332 () Unit!114499)

(declare-fun Unit!114512 () Unit!114499)

(assert (=> b!4636593 (= lt!1799332 Unit!114512)))

(declare-fun bm!323604 () Bool)

(declare-fun lemmaContainsAllItsOwnKeys!545 (ListMap!4369) Unit!114499)

(assert (=> bm!323604 (= call!323610 (lemmaContainsAllItsOwnKeys!545 lt!1799152))))

(declare-fun b!4636594 () Bool)

(declare-fun invariantList!1243 (List!51786) Bool)

(assert (=> b!4636594 (= e!2892435 (invariantList!1243 (toList!5065 lt!1799325)))))

(assert (=> d!1461997 e!2892435))

(declare-fun res!1946408 () Bool)

(assert (=> d!1461997 (=> (not res!1946408) (not e!2892435))))

(assert (=> d!1461997 (= res!1946408 (forall!10903 oldBucket!40 lambda!195144))))

(assert (=> d!1461997 (= lt!1799325 e!2892436)))

(assert (=> d!1461997 (= c!793560 ((_ is Nil!51662) oldBucket!40))))

(assert (=> d!1461997 (noDuplicateKeys!1550 oldBucket!40)))

(assert (=> d!1461997 (= (addToMapMapFromBucket!1011 oldBucket!40 lt!1799152) lt!1799325)))

(declare-fun bm!323605 () Bool)

(assert (=> bm!323605 (= call!323608 (forall!10903 (ite c!793560 (toList!5065 lt!1799152) (toList!5065 lt!1799334)) (ite c!793560 lambda!195141 lambda!195143)))))

(assert (= (and d!1461997 c!793560) b!4636592))

(assert (= (and d!1461997 (not c!793560)) b!4636593))

(assert (= (and b!4636593 res!1946409) b!4636590))

(assert (= (or b!4636592 b!4636593) bm!323604))

(assert (= (or b!4636592 b!4636590) bm!323603))

(assert (= (or b!4636592 b!4636593) bm!323605))

(assert (= (and d!1461997 res!1946408) b!4636591))

(assert (= (and b!4636591 res!1946407) b!4636594))

(declare-fun m!5494087 () Bool)

(assert (=> bm!323603 m!5494087))

(declare-fun m!5494089 () Bool)

(assert (=> b!4636594 m!5494089))

(declare-fun m!5494091 () Bool)

(assert (=> bm!323604 m!5494091))

(declare-fun m!5494093 () Bool)

(assert (=> b!4636591 m!5494093))

(declare-fun m!5494095 () Bool)

(assert (=> d!1461997 m!5494095))

(assert (=> d!1461997 m!5493827))

(declare-fun m!5494097 () Bool)

(assert (=> b!4636593 m!5494097))

(declare-fun m!5494099 () Bool)

(assert (=> b!4636593 m!5494099))

(declare-fun m!5494101 () Bool)

(assert (=> b!4636593 m!5494101))

(declare-fun m!5494103 () Bool)

(assert (=> b!4636593 m!5494103))

(declare-fun m!5494105 () Bool)

(assert (=> b!4636593 m!5494105))

(declare-fun m!5494107 () Bool)

(assert (=> b!4636593 m!5494107))

(declare-fun m!5494109 () Bool)

(assert (=> b!4636593 m!5494109))

(declare-fun m!5494111 () Bool)

(assert (=> b!4636593 m!5494111))

(assert (=> b!4636593 m!5494109))

(declare-fun m!5494113 () Bool)

(assert (=> b!4636593 m!5494113))

(assert (=> b!4636593 m!5494099))

(assert (=> b!4636593 m!5494105))

(declare-fun m!5494115 () Bool)

(assert (=> b!4636593 m!5494115))

(declare-fun m!5494117 () Bool)

(assert (=> b!4636593 m!5494117))

(declare-fun m!5494119 () Bool)

(assert (=> bm!323605 m!5494119))

(assert (=> b!4636458 d!1461997))

(declare-fun bs!1031380 () Bool)

(declare-fun d!1462051 () Bool)

(assert (= bs!1031380 (and d!1462051 b!4636473)))

(declare-fun lambda!195147 () Int)

(assert (=> bs!1031380 (= lambda!195147 lambda!195102)))

(declare-fun lt!1799337 () ListMap!4369)

(assert (=> d!1462051 (invariantList!1243 (toList!5065 lt!1799337))))

(declare-fun e!2892440 () ListMap!4369)

(assert (=> d!1462051 (= lt!1799337 e!2892440)))

(declare-fun c!793563 () Bool)

(assert (=> d!1462051 (= c!793563 ((_ is Cons!51663) Nil!51663))))

(assert (=> d!1462051 (forall!10902 Nil!51663 lambda!195147)))

(assert (=> d!1462051 (= (extractMap!1606 Nil!51663) lt!1799337)))

(declare-fun b!4636601 () Bool)

(assert (=> b!4636601 (= e!2892440 (addToMapMapFromBucket!1011 (_2!29618 (h!57753 Nil!51663)) (extractMap!1606 (t!358859 Nil!51663))))))

(declare-fun b!4636602 () Bool)

(assert (=> b!4636602 (= e!2892440 (ListMap!4370 Nil!51662))))

(assert (= (and d!1462051 c!793563) b!4636601))

(assert (= (and d!1462051 (not c!793563)) b!4636602))

(declare-fun m!5494121 () Bool)

(assert (=> d!1462051 m!5494121))

(declare-fun m!5494123 () Bool)

(assert (=> d!1462051 m!5494123))

(declare-fun m!5494125 () Bool)

(assert (=> b!4636601 m!5494125))

(assert (=> b!4636601 m!5494125))

(declare-fun m!5494127 () Bool)

(assert (=> b!4636601 m!5494127))

(assert (=> b!4636458 d!1462051))

(declare-fun b!4636631 () Bool)

(declare-fun e!2892464 () Unit!114499)

(declare-fun lt!1799402 () Unit!114499)

(assert (=> b!4636631 (= e!2892464 lt!1799402)))

(declare-fun lt!1799400 () Unit!114499)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1432 (List!51786 K!13025) Unit!114499)

(assert (=> b!4636631 (= lt!1799400 (lemmaContainsKeyImpliesGetValueByKeyDefined!1432 (toList!5065 lt!1799156) key!4968))))

(declare-datatypes ((Option!11715 0))(
  ( (None!11714) (Some!11714 (v!45924 V!13271)) )
))
(declare-fun isDefined!8979 (Option!11715) Bool)

(declare-fun getValueByKey!1531 (List!51786 K!13025) Option!11715)

(assert (=> b!4636631 (isDefined!8979 (getValueByKey!1531 (toList!5065 lt!1799156) key!4968))))

(declare-fun lt!1799396 () Unit!114499)

(assert (=> b!4636631 (= lt!1799396 lt!1799400)))

(declare-fun lemmaInListThenGetKeysListContains!689 (List!51786 K!13025) Unit!114499)

(assert (=> b!4636631 (= lt!1799402 (lemmaInListThenGetKeysListContains!689 (toList!5065 lt!1799156) key!4968))))

(declare-fun call!323619 () Bool)

(assert (=> b!4636631 call!323619))

(declare-fun d!1462053 () Bool)

(declare-fun e!2892460 () Bool)

(assert (=> d!1462053 e!2892460))

(declare-fun res!1946423 () Bool)

(assert (=> d!1462053 (=> res!1946423 e!2892460)))

(declare-fun e!2892459 () Bool)

(assert (=> d!1462053 (= res!1946423 e!2892459)))

(declare-fun res!1946424 () Bool)

(assert (=> d!1462053 (=> (not res!1946424) (not e!2892459))))

(declare-fun lt!1799401 () Bool)

(assert (=> d!1462053 (= res!1946424 (not lt!1799401))))

(declare-fun lt!1799403 () Bool)

(assert (=> d!1462053 (= lt!1799401 lt!1799403)))

(declare-fun lt!1799398 () Unit!114499)

(assert (=> d!1462053 (= lt!1799398 e!2892464)))

(declare-fun c!793573 () Bool)

(assert (=> d!1462053 (= c!793573 lt!1799403)))

(declare-fun containsKey!2572 (List!51786 K!13025) Bool)

(assert (=> d!1462053 (= lt!1799403 (containsKey!2572 (toList!5065 lt!1799156) key!4968))))

(assert (=> d!1462053 (= (contains!14789 lt!1799156 key!4968) lt!1799401)))

(declare-fun b!4636632 () Bool)

(declare-fun e!2892461 () Bool)

(declare-fun contains!14793 (List!51789 K!13025) Bool)

(assert (=> b!4636632 (= e!2892461 (contains!14793 (keys!18238 lt!1799156) key!4968))))

(declare-fun b!4636633 () Bool)

(declare-fun e!2892463 () Unit!114499)

(assert (=> b!4636633 (= e!2892464 e!2892463)))

(declare-fun c!793574 () Bool)

(assert (=> b!4636633 (= c!793574 call!323619)))

(declare-fun b!4636634 () Bool)

(assert (=> b!4636634 false))

(declare-fun lt!1799399 () Unit!114499)

(declare-fun lt!1799397 () Unit!114499)

(assert (=> b!4636634 (= lt!1799399 lt!1799397)))

(assert (=> b!4636634 (containsKey!2572 (toList!5065 lt!1799156) key!4968)))

(declare-fun lemmaInGetKeysListThenContainsKey!693 (List!51786 K!13025) Unit!114499)

(assert (=> b!4636634 (= lt!1799397 (lemmaInGetKeysListThenContainsKey!693 (toList!5065 lt!1799156) key!4968))))

(declare-fun Unit!114513 () Unit!114499)

(assert (=> b!4636634 (= e!2892463 Unit!114513)))

(declare-fun b!4636635 () Bool)

(declare-fun e!2892462 () List!51789)

(assert (=> b!4636635 (= e!2892462 (keys!18238 lt!1799156))))

(declare-fun bm!323614 () Bool)

(assert (=> bm!323614 (= call!323619 (contains!14793 e!2892462 key!4968))))

(declare-fun c!793572 () Bool)

(assert (=> bm!323614 (= c!793572 c!793573)))

(declare-fun b!4636636 () Bool)

(assert (=> b!4636636 (= e!2892459 (not (contains!14793 (keys!18238 lt!1799156) key!4968)))))

(declare-fun b!4636637 () Bool)

(declare-fun getKeysList!694 (List!51786) List!51789)

(assert (=> b!4636637 (= e!2892462 (getKeysList!694 (toList!5065 lt!1799156)))))

(declare-fun b!4636638 () Bool)

(assert (=> b!4636638 (= e!2892460 e!2892461)))

(declare-fun res!1946422 () Bool)

(assert (=> b!4636638 (=> (not res!1946422) (not e!2892461))))

(assert (=> b!4636638 (= res!1946422 (isDefined!8979 (getValueByKey!1531 (toList!5065 lt!1799156) key!4968)))))

(declare-fun b!4636639 () Bool)

(declare-fun Unit!114514 () Unit!114499)

(assert (=> b!4636639 (= e!2892463 Unit!114514)))

(assert (= (and d!1462053 c!793573) b!4636631))

(assert (= (and d!1462053 (not c!793573)) b!4636633))

(assert (= (and b!4636633 c!793574) b!4636634))

(assert (= (and b!4636633 (not c!793574)) b!4636639))

(assert (= (or b!4636631 b!4636633) bm!323614))

(assert (= (and bm!323614 c!793572) b!4636637))

(assert (= (and bm!323614 (not c!793572)) b!4636635))

(assert (= (and d!1462053 res!1946424) b!4636636))

(assert (= (and d!1462053 (not res!1946423)) b!4636638))

(assert (= (and b!4636638 res!1946422) b!4636632))

(assert (=> b!4636632 m!5493885))

(assert (=> b!4636632 m!5493885))

(declare-fun m!5494129 () Bool)

(assert (=> b!4636632 m!5494129))

(declare-fun m!5494131 () Bool)

(assert (=> d!1462053 m!5494131))

(assert (=> b!4636634 m!5494131))

(declare-fun m!5494133 () Bool)

(assert (=> b!4636634 m!5494133))

(declare-fun m!5494135 () Bool)

(assert (=> b!4636637 m!5494135))

(assert (=> b!4636636 m!5493885))

(assert (=> b!4636636 m!5493885))

(assert (=> b!4636636 m!5494129))

(declare-fun m!5494137 () Bool)

(assert (=> b!4636638 m!5494137))

(assert (=> b!4636638 m!5494137))

(declare-fun m!5494139 () Bool)

(assert (=> b!4636638 m!5494139))

(declare-fun m!5494141 () Bool)

(assert (=> b!4636631 m!5494141))

(assert (=> b!4636631 m!5494137))

(assert (=> b!4636631 m!5494137))

(assert (=> b!4636631 m!5494139))

(declare-fun m!5494143 () Bool)

(assert (=> b!4636631 m!5494143))

(declare-fun m!5494145 () Bool)

(assert (=> bm!323614 m!5494145))

(assert (=> b!4636635 m!5493885))

(assert (=> b!4636475 d!1462053))

(declare-fun bs!1031381 () Bool)

(declare-fun d!1462055 () Bool)

(assert (= bs!1031381 (and d!1462055 b!4636473)))

(declare-fun lambda!195176 () Int)

(assert (=> bs!1031381 (= lambda!195176 lambda!195102)))

(declare-fun bs!1031382 () Bool)

(assert (= bs!1031382 (and d!1462055 d!1462051)))

(assert (=> bs!1031382 (= lambda!195176 lambda!195147)))

(declare-fun lt!1799404 () ListMap!4369)

(assert (=> d!1462055 (invariantList!1243 (toList!5065 lt!1799404))))

(declare-fun e!2892465 () ListMap!4369)

(assert (=> d!1462055 (= lt!1799404 e!2892465)))

(declare-fun c!793575 () Bool)

(assert (=> d!1462055 (= c!793575 ((_ is Cons!51663) lt!1799140))))

(assert (=> d!1462055 (forall!10902 lt!1799140 lambda!195176)))

(assert (=> d!1462055 (= (extractMap!1606 lt!1799140) lt!1799404)))

(declare-fun b!4636640 () Bool)

(assert (=> b!4636640 (= e!2892465 (addToMapMapFromBucket!1011 (_2!29618 (h!57753 lt!1799140)) (extractMap!1606 (t!358859 lt!1799140))))))

(declare-fun b!4636641 () Bool)

(assert (=> b!4636641 (= e!2892465 (ListMap!4370 Nil!51662))))

(assert (= (and d!1462055 c!793575) b!4636640))

(assert (= (and d!1462055 (not c!793575)) b!4636641))

(declare-fun m!5494147 () Bool)

(assert (=> d!1462055 m!5494147))

(declare-fun m!5494149 () Bool)

(assert (=> d!1462055 m!5494149))

(declare-fun m!5494151 () Bool)

(assert (=> b!4636640 m!5494151))

(assert (=> b!4636640 m!5494151))

(declare-fun m!5494153 () Bool)

(assert (=> b!4636640 m!5494153))

(assert (=> b!4636475 d!1462055))

(declare-fun b!4636660 () Bool)

(declare-fun e!2892473 () List!51786)

(assert (=> b!4636660 (= e!2892473 Nil!51662)))

(declare-fun b!4636658 () Bool)

(declare-fun e!2892474 () List!51786)

(assert (=> b!4636658 (= e!2892474 e!2892473)))

(declare-fun c!793581 () Bool)

(assert (=> b!4636658 (= c!793581 ((_ is Cons!51662) lt!1799154))))

(declare-fun b!4636657 () Bool)

(assert (=> b!4636657 (= e!2892474 (t!358858 lt!1799154))))

(declare-fun b!4636659 () Bool)

(assert (=> b!4636659 (= e!2892473 (Cons!51662 (h!57752 lt!1799154) (removePairForKey!1173 (t!358858 lt!1799154) key!4968)))))

(declare-fun d!1462057 () Bool)

(declare-fun lt!1799428 () List!51786)

(assert (=> d!1462057 (not (containsKey!2570 lt!1799428 key!4968))))

(assert (=> d!1462057 (= lt!1799428 e!2892474)))

(declare-fun c!793582 () Bool)

(assert (=> d!1462057 (= c!793582 (and ((_ is Cons!51662) lt!1799154) (= (_1!29617 (h!57752 lt!1799154)) key!4968)))))

(assert (=> d!1462057 (noDuplicateKeys!1550 lt!1799154)))

(assert (=> d!1462057 (= (removePairForKey!1173 lt!1799154 key!4968) lt!1799428)))

(assert (= (and d!1462057 c!793582) b!4636657))

(assert (= (and d!1462057 (not c!793582)) b!4636658))

(assert (= (and b!4636658 c!793581) b!4636659))

(assert (= (and b!4636658 (not c!793581)) b!4636660))

(declare-fun m!5494155 () Bool)

(assert (=> b!4636659 m!5494155))

(declare-fun m!5494157 () Bool)

(assert (=> d!1462057 m!5494157))

(declare-fun m!5494159 () Bool)

(assert (=> d!1462057 m!5494159))

(assert (=> b!4636465 d!1462057))

(declare-fun d!1462059 () Bool)

(assert (=> d!1462059 (= (tail!8185 newBucket!224) (t!358858 newBucket!224))))

(assert (=> b!4636465 d!1462059))

(declare-fun d!1462061 () Bool)

(assert (=> d!1462061 (= (tail!8185 oldBucket!40) (t!358858 oldBucket!40))))

(assert (=> b!4636465 d!1462061))

(declare-fun bs!1031386 () Bool)

(declare-fun d!1462063 () Bool)

(assert (= bs!1031386 (and d!1462063 b!4636592)))

(declare-fun lambda!195183 () Int)

(assert (=> bs!1031386 (not (= lambda!195183 lambda!195141))))

(declare-fun bs!1031387 () Bool)

(assert (= bs!1031387 (and d!1462063 b!4636593)))

(assert (=> bs!1031387 (not (= lambda!195183 lambda!195142))))

(assert (=> bs!1031387 (not (= lambda!195183 lambda!195143))))

(declare-fun bs!1031388 () Bool)

(assert (= bs!1031388 (and d!1462063 d!1461997)))

(assert (=> bs!1031388 (not (= lambda!195183 lambda!195144))))

(assert (=> d!1462063 true))

(assert (=> d!1462063 true))

(assert (=> d!1462063 (= (allKeysSameHash!1404 oldBucket!40 hash!414 hashF!1389) (forall!10903 oldBucket!40 lambda!195183))))

(declare-fun bs!1031389 () Bool)

(assert (= bs!1031389 d!1462063))

(declare-fun m!5494161 () Bool)

(assert (=> bs!1031389 m!5494161))

(assert (=> b!4636476 d!1462063))

(declare-fun d!1462065 () Bool)

(assert (=> d!1462065 (= (eq!865 lt!1799162 (+!1916 lt!1799135 lt!1799143)) (= (content!8917 (toList!5065 lt!1799162)) (content!8917 (toList!5065 (+!1916 lt!1799135 lt!1799143)))))))

(declare-fun bs!1031390 () Bool)

(assert (= bs!1031390 d!1462065))

(assert (=> bs!1031390 m!5493895))

(declare-fun m!5494175 () Bool)

(assert (=> bs!1031390 m!5494175))

(assert (=> b!4636466 d!1462065))

(declare-fun d!1462067 () Bool)

(declare-fun e!2892478 () Bool)

(assert (=> d!1462067 e!2892478))

(declare-fun res!1946435 () Bool)

(assert (=> d!1462067 (=> (not res!1946435) (not e!2892478))))

(declare-fun lt!1799442 () ListMap!4369)

(assert (=> d!1462067 (= res!1946435 (contains!14789 lt!1799442 (_1!29617 lt!1799143)))))

(declare-fun lt!1799443 () List!51786)

(assert (=> d!1462067 (= lt!1799442 (ListMap!4370 lt!1799443))))

(declare-fun lt!1799444 () Unit!114499)

(declare-fun lt!1799441 () Unit!114499)

(assert (=> d!1462067 (= lt!1799444 lt!1799441)))

(assert (=> d!1462067 (= (getValueByKey!1531 lt!1799443 (_1!29617 lt!1799143)) (Some!11714 (_2!29617 lt!1799143)))))

(declare-fun lemmaContainsTupThenGetReturnValue!888 (List!51786 K!13025 V!13271) Unit!114499)

(assert (=> d!1462067 (= lt!1799441 (lemmaContainsTupThenGetReturnValue!888 lt!1799443 (_1!29617 lt!1799143) (_2!29617 lt!1799143)))))

(declare-fun insertNoDuplicatedKeys!396 (List!51786 K!13025 V!13271) List!51786)

(assert (=> d!1462067 (= lt!1799443 (insertNoDuplicatedKeys!396 (toList!5065 lt!1799135) (_1!29617 lt!1799143) (_2!29617 lt!1799143)))))

(assert (=> d!1462067 (= (+!1916 lt!1799135 lt!1799143) lt!1799442)))

(declare-fun b!4636671 () Bool)

(declare-fun res!1946434 () Bool)

(assert (=> b!4636671 (=> (not res!1946434) (not e!2892478))))

(assert (=> b!4636671 (= res!1946434 (= (getValueByKey!1531 (toList!5065 lt!1799442) (_1!29617 lt!1799143)) (Some!11714 (_2!29617 lt!1799143))))))

(declare-fun b!4636672 () Bool)

(declare-fun contains!14794 (List!51786 tuple2!52646) Bool)

(assert (=> b!4636672 (= e!2892478 (contains!14794 (toList!5065 lt!1799442) lt!1799143))))

(assert (= (and d!1462067 res!1946435) b!4636671))

(assert (= (and b!4636671 res!1946434) b!4636672))

(declare-fun m!5494219 () Bool)

(assert (=> d!1462067 m!5494219))

(declare-fun m!5494221 () Bool)

(assert (=> d!1462067 m!5494221))

(declare-fun m!5494223 () Bool)

(assert (=> d!1462067 m!5494223))

(declare-fun m!5494225 () Bool)

(assert (=> d!1462067 m!5494225))

(declare-fun m!5494227 () Bool)

(assert (=> b!4636671 m!5494227))

(declare-fun m!5494229 () Bool)

(assert (=> b!4636672 m!5494229))

(assert (=> b!4636466 d!1462067))

(declare-fun bs!1031393 () Bool)

(declare-fun d!1462081 () Bool)

(assert (= bs!1031393 (and d!1462081 b!4636473)))

(declare-fun lambda!195184 () Int)

(assert (=> bs!1031393 (= lambda!195184 lambda!195102)))

(declare-fun bs!1031394 () Bool)

(assert (= bs!1031394 (and d!1462081 d!1462051)))

(assert (=> bs!1031394 (= lambda!195184 lambda!195147)))

(declare-fun bs!1031395 () Bool)

(assert (= bs!1031395 (and d!1462081 d!1462055)))

(assert (=> bs!1031395 (= lambda!195184 lambda!195176)))

(declare-fun lt!1799445 () ListMap!4369)

(assert (=> d!1462081 (invariantList!1243 (toList!5065 lt!1799445))))

(declare-fun e!2892479 () ListMap!4369)

(assert (=> d!1462081 (= lt!1799445 e!2892479)))

(declare-fun c!793583 () Bool)

(assert (=> d!1462081 (= c!793583 ((_ is Cons!51663) (Cons!51663 (tuple2!52649 hash!414 lt!1799150) Nil!51663)))))

(assert (=> d!1462081 (forall!10902 (Cons!51663 (tuple2!52649 hash!414 lt!1799150) Nil!51663) lambda!195184)))

(assert (=> d!1462081 (= (extractMap!1606 (Cons!51663 (tuple2!52649 hash!414 lt!1799150) Nil!51663)) lt!1799445)))

(declare-fun b!4636673 () Bool)

(assert (=> b!4636673 (= e!2892479 (addToMapMapFromBucket!1011 (_2!29618 (h!57753 (Cons!51663 (tuple2!52649 hash!414 lt!1799150) Nil!51663))) (extractMap!1606 (t!358859 (Cons!51663 (tuple2!52649 hash!414 lt!1799150) Nil!51663)))))))

(declare-fun b!4636674 () Bool)

(assert (=> b!4636674 (= e!2892479 (ListMap!4370 Nil!51662))))

(assert (= (and d!1462081 c!793583) b!4636673))

(assert (= (and d!1462081 (not c!793583)) b!4636674))

(declare-fun m!5494231 () Bool)

(assert (=> d!1462081 m!5494231))

(declare-fun m!5494233 () Bool)

(assert (=> d!1462081 m!5494233))

(declare-fun m!5494235 () Bool)

(assert (=> b!4636673 m!5494235))

(assert (=> b!4636673 m!5494235))

(declare-fun m!5494237 () Bool)

(assert (=> b!4636673 m!5494237))

(assert (=> b!4636466 d!1462081))

(declare-fun bs!1031396 () Bool)

(declare-fun d!1462083 () Bool)

(assert (= bs!1031396 (and d!1462083 b!4636473)))

(declare-fun lambda!195185 () Int)

(assert (=> bs!1031396 (= lambda!195185 lambda!195102)))

(declare-fun bs!1031397 () Bool)

(assert (= bs!1031397 (and d!1462083 d!1462051)))

(assert (=> bs!1031397 (= lambda!195185 lambda!195147)))

(declare-fun bs!1031398 () Bool)

(assert (= bs!1031398 (and d!1462083 d!1462055)))

(assert (=> bs!1031398 (= lambda!195185 lambda!195176)))

(declare-fun bs!1031399 () Bool)

(assert (= bs!1031399 (and d!1462083 d!1462081)))

(assert (=> bs!1031399 (= lambda!195185 lambda!195184)))

(declare-fun lt!1799446 () ListMap!4369)

(assert (=> d!1462083 (invariantList!1243 (toList!5065 lt!1799446))))

(declare-fun e!2892480 () ListMap!4369)

(assert (=> d!1462083 (= lt!1799446 e!2892480)))

(declare-fun c!793584 () Bool)

(assert (=> d!1462083 (= c!793584 ((_ is Cons!51663) (Cons!51663 (tuple2!52649 hash!414 newBucket!224) Nil!51663)))))

(assert (=> d!1462083 (forall!10902 (Cons!51663 (tuple2!52649 hash!414 newBucket!224) Nil!51663) lambda!195185)))

(assert (=> d!1462083 (= (extractMap!1606 (Cons!51663 (tuple2!52649 hash!414 newBucket!224) Nil!51663)) lt!1799446)))

(declare-fun b!4636675 () Bool)

(assert (=> b!4636675 (= e!2892480 (addToMapMapFromBucket!1011 (_2!29618 (h!57753 (Cons!51663 (tuple2!52649 hash!414 newBucket!224) Nil!51663))) (extractMap!1606 (t!358859 (Cons!51663 (tuple2!52649 hash!414 newBucket!224) Nil!51663)))))))

(declare-fun b!4636676 () Bool)

(assert (=> b!4636676 (= e!2892480 (ListMap!4370 Nil!51662))))

(assert (= (and d!1462083 c!793584) b!4636675))

(assert (= (and d!1462083 (not c!793584)) b!4636676))

(declare-fun m!5494239 () Bool)

(assert (=> d!1462083 m!5494239))

(declare-fun m!5494241 () Bool)

(assert (=> d!1462083 m!5494241))

(declare-fun m!5494243 () Bool)

(assert (=> b!4636675 m!5494243))

(assert (=> b!4636675 m!5494243))

(declare-fun m!5494245 () Bool)

(assert (=> b!4636675 m!5494245))

(assert (=> b!4636466 d!1462083))

(declare-fun d!1462085 () Bool)

(declare-fun e!2892481 () Bool)

(assert (=> d!1462085 e!2892481))

(declare-fun res!1946437 () Bool)

(assert (=> d!1462085 (=> (not res!1946437) (not e!2892481))))

(declare-fun lt!1799448 () ListMap!4369)

(assert (=> d!1462085 (= res!1946437 (contains!14789 lt!1799448 (_1!29617 (h!57752 oldBucket!40))))))

(declare-fun lt!1799449 () List!51786)

(assert (=> d!1462085 (= lt!1799448 (ListMap!4370 lt!1799449))))

(declare-fun lt!1799450 () Unit!114499)

(declare-fun lt!1799447 () Unit!114499)

(assert (=> d!1462085 (= lt!1799450 lt!1799447)))

(assert (=> d!1462085 (= (getValueByKey!1531 lt!1799449 (_1!29617 (h!57752 oldBucket!40))) (Some!11714 (_2!29617 (h!57752 oldBucket!40))))))

(assert (=> d!1462085 (= lt!1799447 (lemmaContainsTupThenGetReturnValue!888 lt!1799449 (_1!29617 (h!57752 oldBucket!40)) (_2!29617 (h!57752 oldBucket!40))))))

(assert (=> d!1462085 (= lt!1799449 (insertNoDuplicatedKeys!396 (toList!5065 lt!1799157) (_1!29617 (h!57752 oldBucket!40)) (_2!29617 (h!57752 oldBucket!40))))))

(assert (=> d!1462085 (= (+!1916 lt!1799157 (h!57752 oldBucket!40)) lt!1799448)))

(declare-fun b!4636677 () Bool)

(declare-fun res!1946436 () Bool)

(assert (=> b!4636677 (=> (not res!1946436) (not e!2892481))))

(assert (=> b!4636677 (= res!1946436 (= (getValueByKey!1531 (toList!5065 lt!1799448) (_1!29617 (h!57752 oldBucket!40))) (Some!11714 (_2!29617 (h!57752 oldBucket!40)))))))

(declare-fun b!4636678 () Bool)

(assert (=> b!4636678 (= e!2892481 (contains!14794 (toList!5065 lt!1799448) (h!57752 oldBucket!40)))))

(assert (= (and d!1462085 res!1946437) b!4636677))

(assert (= (and b!4636677 res!1946436) b!4636678))

(declare-fun m!5494247 () Bool)

(assert (=> d!1462085 m!5494247))

(declare-fun m!5494249 () Bool)

(assert (=> d!1462085 m!5494249))

(declare-fun m!5494251 () Bool)

(assert (=> d!1462085 m!5494251))

(declare-fun m!5494253 () Bool)

(assert (=> d!1462085 m!5494253))

(declare-fun m!5494255 () Bool)

(assert (=> b!4636677 m!5494255))

(declare-fun m!5494257 () Bool)

(assert (=> b!4636678 m!5494257))

(assert (=> b!4636456 d!1462085))

(declare-fun d!1462087 () Bool)

(assert (=> d!1462087 (= (-!590 (+!1916 lt!1799157 (tuple2!52647 (_1!29617 (h!57752 oldBucket!40)) (_2!29617 (h!57752 oldBucket!40)))) key!4968) (+!1916 (-!590 lt!1799157 key!4968) (tuple2!52647 (_1!29617 (h!57752 oldBucket!40)) (_2!29617 (h!57752 oldBucket!40)))))))

(declare-fun lt!1799478 () Unit!114499)

(declare-fun choose!31709 (ListMap!4369 K!13025 V!13271 K!13025) Unit!114499)

(assert (=> d!1462087 (= lt!1799478 (choose!31709 lt!1799157 (_1!29617 (h!57752 oldBucket!40)) (_2!29617 (h!57752 oldBucket!40)) key!4968))))

(assert (=> d!1462087 (not (= (_1!29617 (h!57752 oldBucket!40)) key!4968))))

(assert (=> d!1462087 (= (addRemoveCommutativeForDiffKeys!45 lt!1799157 (_1!29617 (h!57752 oldBucket!40)) (_2!29617 (h!57752 oldBucket!40)) key!4968) lt!1799478)))

(declare-fun bs!1031417 () Bool)

(assert (= bs!1031417 d!1462087))

(assert (=> bs!1031417 m!5493707))

(declare-fun m!5494293 () Bool)

(assert (=> bs!1031417 m!5494293))

(assert (=> bs!1031417 m!5493707))

(declare-fun m!5494299 () Bool)

(assert (=> bs!1031417 m!5494299))

(declare-fun m!5494303 () Bool)

(assert (=> bs!1031417 m!5494303))

(assert (=> bs!1031417 m!5494303))

(declare-fun m!5494307 () Bool)

(assert (=> bs!1031417 m!5494307))

(assert (=> b!4636456 d!1462087))

(declare-fun d!1462093 () Bool)

(declare-fun e!2892485 () Bool)

(assert (=> d!1462093 e!2892485))

(declare-fun res!1946441 () Bool)

(assert (=> d!1462093 (=> (not res!1946441) (not e!2892485))))

(declare-fun lt!1799479 () ListMap!4369)

(assert (=> d!1462093 (= res!1946441 (not (contains!14789 lt!1799479 key!4968)))))

(assert (=> d!1462093 (= lt!1799479 (ListMap!4370 (removePresrvNoDuplicatedKeys!293 (toList!5065 (+!1916 lt!1799157 (h!57752 oldBucket!40))) key!4968)))))

(assert (=> d!1462093 (= (-!590 (+!1916 lt!1799157 (h!57752 oldBucket!40)) key!4968) lt!1799479)))

(declare-fun b!4636684 () Bool)

(assert (=> b!4636684 (= e!2892485 (= ((_ map and) (content!8918 (keys!18238 (+!1916 lt!1799157 (h!57752 oldBucket!40)))) ((_ map not) (store ((as const (Array K!13025 Bool)) false) key!4968 true))) (content!8918 (keys!18238 lt!1799479))))))

(assert (= (and d!1462093 res!1946441) b!4636684))

(declare-fun m!5494313 () Bool)

(assert (=> d!1462093 m!5494313))

(declare-fun m!5494315 () Bool)

(assert (=> d!1462093 m!5494315))

(assert (=> b!4636684 m!5493879))

(declare-fun m!5494317 () Bool)

(assert (=> b!4636684 m!5494317))

(declare-fun m!5494319 () Bool)

(assert (=> b!4636684 m!5494319))

(assert (=> b!4636684 m!5493709))

(declare-fun m!5494321 () Bool)

(assert (=> b!4636684 m!5494321))

(assert (=> b!4636684 m!5494317))

(assert (=> b!4636684 m!5494321))

(declare-fun m!5494323 () Bool)

(assert (=> b!4636684 m!5494323))

(assert (=> b!4636456 d!1462093))

(declare-fun d!1462097 () Bool)

(assert (=> d!1462097 (eq!865 (extractMap!1606 (Cons!51663 (tuple2!52649 hash!414 lt!1799150) Nil!51663)) (-!590 (extractMap!1606 (Cons!51663 (tuple2!52649 hash!414 (t!358858 oldBucket!40)) Nil!51663)) key!4968))))

(declare-fun lt!1799506 () Unit!114499)

(declare-fun choose!31711 ((_ BitVec 64) List!51786 List!51786 K!13025 Hashable!5947) Unit!114499)

(assert (=> d!1462097 (= lt!1799506 (choose!31711 hash!414 (t!358858 oldBucket!40) lt!1799150 key!4968 hashF!1389))))

(assert (=> d!1462097 (noDuplicateKeys!1550 (t!358858 oldBucket!40))))

(assert (=> d!1462097 (= (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMapOneHash!152 hash!414 (t!358858 oldBucket!40) lt!1799150 key!4968 hashF!1389) lt!1799506)))

(declare-fun bs!1031431 () Bool)

(assert (= bs!1031431 d!1462097))

(assert (=> bs!1031431 m!5493817))

(declare-fun m!5494333 () Bool)

(assert (=> bs!1031431 m!5494333))

(declare-fun m!5494335 () Bool)

(assert (=> bs!1031431 m!5494335))

(declare-fun m!5494337 () Bool)

(assert (=> bs!1031431 m!5494337))

(assert (=> bs!1031431 m!5493817))

(declare-fun m!5494339 () Bool)

(assert (=> bs!1031431 m!5494339))

(declare-fun m!5494341 () Bool)

(assert (=> bs!1031431 m!5494341))

(assert (=> bs!1031431 m!5494337))

(assert (=> bs!1031431 m!5494333))

(assert (=> b!4636456 d!1462097))

(declare-fun d!1462101 () Bool)

(assert (=> d!1462101 (= (eq!865 lt!1799135 lt!1799149) (= (content!8917 (toList!5065 lt!1799135)) (content!8917 (toList!5065 lt!1799149))))))

(declare-fun bs!1031436 () Bool)

(assert (= bs!1031436 d!1462101))

(declare-fun m!5494343 () Bool)

(assert (=> bs!1031436 m!5494343))

(declare-fun m!5494345 () Bool)

(assert (=> bs!1031436 m!5494345))

(assert (=> b!4636456 d!1462101))

(declare-fun d!1462103 () Bool)

(declare-fun e!2892492 () Bool)

(assert (=> d!1462103 e!2892492))

(declare-fun res!1946445 () Bool)

(assert (=> d!1462103 (=> (not res!1946445) (not e!2892492))))

(declare-fun lt!1799507 () ListMap!4369)

(assert (=> d!1462103 (= res!1946445 (not (contains!14789 lt!1799507 key!4968)))))

(assert (=> d!1462103 (= lt!1799507 (ListMap!4370 (removePresrvNoDuplicatedKeys!293 (toList!5065 lt!1799136) key!4968)))))

(assert (=> d!1462103 (= (-!590 lt!1799136 key!4968) lt!1799507)))

(declare-fun b!4636696 () Bool)

(assert (=> b!4636696 (= e!2892492 (= ((_ map and) (content!8918 (keys!18238 lt!1799136)) ((_ map not) (store ((as const (Array K!13025 Bool)) false) key!4968 true))) (content!8918 (keys!18238 lt!1799507))))))

(assert (= (and d!1462103 res!1946445) b!4636696))

(declare-fun m!5494347 () Bool)

(assert (=> d!1462103 m!5494347))

(declare-fun m!5494349 () Bool)

(assert (=> d!1462103 m!5494349))

(assert (=> b!4636696 m!5493879))

(declare-fun m!5494351 () Bool)

(assert (=> b!4636696 m!5494351))

(declare-fun m!5494353 () Bool)

(assert (=> b!4636696 m!5494353))

(declare-fun m!5494355 () Bool)

(assert (=> b!4636696 m!5494355))

(assert (=> b!4636696 m!5494351))

(assert (=> b!4636696 m!5494355))

(declare-fun m!5494357 () Bool)

(assert (=> b!4636696 m!5494357))

(assert (=> b!4636456 d!1462103))

(declare-fun d!1462105 () Bool)

(declare-fun e!2892493 () Bool)

(assert (=> d!1462105 e!2892493))

(declare-fun res!1946447 () Bool)

(assert (=> d!1462105 (=> (not res!1946447) (not e!2892493))))

(declare-fun lt!1799509 () ListMap!4369)

(assert (=> d!1462105 (= res!1946447 (contains!14789 lt!1799509 (_1!29617 (h!57752 oldBucket!40))))))

(declare-fun lt!1799510 () List!51786)

(assert (=> d!1462105 (= lt!1799509 (ListMap!4370 lt!1799510))))

(declare-fun lt!1799511 () Unit!114499)

(declare-fun lt!1799508 () Unit!114499)

(assert (=> d!1462105 (= lt!1799511 lt!1799508)))

(assert (=> d!1462105 (= (getValueByKey!1531 lt!1799510 (_1!29617 (h!57752 oldBucket!40))) (Some!11714 (_2!29617 (h!57752 oldBucket!40))))))

(assert (=> d!1462105 (= lt!1799508 (lemmaContainsTupThenGetReturnValue!888 lt!1799510 (_1!29617 (h!57752 oldBucket!40)) (_2!29617 (h!57752 oldBucket!40))))))

(assert (=> d!1462105 (= lt!1799510 (insertNoDuplicatedKeys!396 (toList!5065 lt!1799149) (_1!29617 (h!57752 oldBucket!40)) (_2!29617 (h!57752 oldBucket!40))))))

(assert (=> d!1462105 (= (+!1916 lt!1799149 (h!57752 oldBucket!40)) lt!1799509)))

(declare-fun b!4636697 () Bool)

(declare-fun res!1946446 () Bool)

(assert (=> b!4636697 (=> (not res!1946446) (not e!2892493))))

(assert (=> b!4636697 (= res!1946446 (= (getValueByKey!1531 (toList!5065 lt!1799509) (_1!29617 (h!57752 oldBucket!40))) (Some!11714 (_2!29617 (h!57752 oldBucket!40)))))))

(declare-fun b!4636698 () Bool)

(assert (=> b!4636698 (= e!2892493 (contains!14794 (toList!5065 lt!1799509) (h!57752 oldBucket!40)))))

(assert (= (and d!1462105 res!1946447) b!4636697))

(assert (= (and b!4636697 res!1946446) b!4636698))

(declare-fun m!5494359 () Bool)

(assert (=> d!1462105 m!5494359))

(declare-fun m!5494361 () Bool)

(assert (=> d!1462105 m!5494361))

(declare-fun m!5494363 () Bool)

(assert (=> d!1462105 m!5494363))

(declare-fun m!5494365 () Bool)

(assert (=> d!1462105 m!5494365))

(declare-fun m!5494367 () Bool)

(assert (=> b!4636697 m!5494367))

(declare-fun m!5494369 () Bool)

(assert (=> b!4636698 m!5494369))

(assert (=> b!4636456 d!1462105))

(declare-fun d!1462107 () Bool)

(declare-fun e!2892494 () Bool)

(assert (=> d!1462107 e!2892494))

(declare-fun res!1946448 () Bool)

(assert (=> d!1462107 (=> (not res!1946448) (not e!2892494))))

(declare-fun lt!1799512 () ListMap!4369)

(assert (=> d!1462107 (= res!1946448 (not (contains!14789 lt!1799512 key!4968)))))

(assert (=> d!1462107 (= lt!1799512 (ListMap!4370 (removePresrvNoDuplicatedKeys!293 (toList!5065 lt!1799157) key!4968)))))

(assert (=> d!1462107 (= (-!590 lt!1799157 key!4968) lt!1799512)))

(declare-fun b!4636699 () Bool)

(assert (=> b!4636699 (= e!2892494 (= ((_ map and) (content!8918 (keys!18238 lt!1799157)) ((_ map not) (store ((as const (Array K!13025 Bool)) false) key!4968 true))) (content!8918 (keys!18238 lt!1799512))))))

(assert (= (and d!1462107 res!1946448) b!4636699))

(declare-fun m!5494371 () Bool)

(assert (=> d!1462107 m!5494371))

(declare-fun m!5494373 () Bool)

(assert (=> d!1462107 m!5494373))

(assert (=> b!4636699 m!5493879))

(declare-fun m!5494375 () Bool)

(assert (=> b!4636699 m!5494375))

(declare-fun m!5494377 () Bool)

(assert (=> b!4636699 m!5494377))

(declare-fun m!5494379 () Bool)

(assert (=> b!4636699 m!5494379))

(assert (=> b!4636699 m!5494375))

(assert (=> b!4636699 m!5494379))

(declare-fun m!5494381 () Bool)

(assert (=> b!4636699 m!5494381))

(assert (=> b!4636456 d!1462107))

(declare-fun d!1462109 () Bool)

(declare-fun hash!3626 (Hashable!5947 K!13025) (_ BitVec 64))

(assert (=> d!1462109 (= (hash!3622 hashF!1389 key!4968) (hash!3626 hashF!1389 key!4968))))

(declare-fun bs!1031440 () Bool)

(assert (= bs!1031440 d!1462109))

(declare-fun m!5494383 () Bool)

(assert (=> bs!1031440 m!5494383))

(assert (=> b!4636462 d!1462109))

(declare-fun d!1462111 () Bool)

(declare-datatypes ((Option!11716 0))(
  ( (None!11715) (Some!11715 (v!45925 List!51786)) )
))
(declare-fun get!17179 (Option!11716) List!51786)

(declare-fun getValueByKey!1532 (List!51787 (_ BitVec 64)) Option!11716)

(assert (=> d!1462111 (= (apply!12215 lt!1799167 lt!1799145) (get!17179 (getValueByKey!1532 (toList!5066 lt!1799167) lt!1799145)))))

(declare-fun bs!1031446 () Bool)

(assert (= bs!1031446 d!1462111))

(declare-fun m!5494385 () Bool)

(assert (=> bs!1031446 m!5494385))

(assert (=> bs!1031446 m!5494385))

(declare-fun m!5494387 () Bool)

(assert (=> bs!1031446 m!5494387))

(assert (=> b!4636473 d!1462111))

(declare-fun d!1462113 () Bool)

(declare-fun dynLambda!21538 (Int tuple2!52648) Bool)

(assert (=> d!1462113 (dynLambda!21538 lambda!195102 lt!1799141)))

(declare-fun lt!1799536 () Unit!114499)

(declare-fun choose!31712 (List!51787 Int tuple2!52648) Unit!114499)

(assert (=> d!1462113 (= lt!1799536 (choose!31712 lt!1799140 lambda!195102 lt!1799141))))

(declare-fun e!2892500 () Bool)

(assert (=> d!1462113 e!2892500))

(declare-fun res!1946454 () Bool)

(assert (=> d!1462113 (=> (not res!1946454) (not e!2892500))))

(assert (=> d!1462113 (= res!1946454 (forall!10902 lt!1799140 lambda!195102))))

(assert (=> d!1462113 (= (forallContained!3134 lt!1799140 lambda!195102 lt!1799141) lt!1799536)))

(declare-fun b!4636707 () Bool)

(assert (=> b!4636707 (= e!2892500 (contains!14790 lt!1799140 lt!1799141))))

(assert (= (and d!1462113 res!1946454) b!4636707))

(declare-fun b_lambda!171023 () Bool)

(assert (=> (not b_lambda!171023) (not d!1462113)))

(declare-fun m!5494421 () Bool)

(assert (=> d!1462113 m!5494421))

(declare-fun m!5494423 () Bool)

(assert (=> d!1462113 m!5494423))

(assert (=> d!1462113 m!5493737))

(assert (=> b!4636707 m!5493751))

(assert (=> b!4636473 d!1462113))

(declare-fun b!4636726 () Bool)

(declare-fun e!2892512 () Option!11712)

(assert (=> b!4636726 (= e!2892512 (getPair!342 (t!358858 lt!1799164) key!4968))))

(declare-fun b!4636727 () Bool)

(declare-fun e!2892516 () Option!11712)

(assert (=> b!4636727 (= e!2892516 (Some!11711 (h!57752 lt!1799164)))))

(declare-fun b!4636728 () Bool)

(assert (=> b!4636728 (= e!2892516 e!2892512)))

(declare-fun c!793596 () Bool)

(assert (=> b!4636728 (= c!793596 ((_ is Cons!51662) lt!1799164))))

(declare-fun d!1462117 () Bool)

(declare-fun e!2892514 () Bool)

(assert (=> d!1462117 e!2892514))

(declare-fun res!1946467 () Bool)

(assert (=> d!1462117 (=> res!1946467 e!2892514)))

(declare-fun e!2892513 () Bool)

(assert (=> d!1462117 (= res!1946467 e!2892513)))

(declare-fun res!1946465 () Bool)

(assert (=> d!1462117 (=> (not res!1946465) (not e!2892513))))

(declare-fun lt!1799543 () Option!11712)

(declare-fun isEmpty!28970 (Option!11712) Bool)

(assert (=> d!1462117 (= res!1946465 (isEmpty!28970 lt!1799543))))

(assert (=> d!1462117 (= lt!1799543 e!2892516)))

(declare-fun c!793595 () Bool)

(assert (=> d!1462117 (= c!793595 (and ((_ is Cons!51662) lt!1799164) (= (_1!29617 (h!57752 lt!1799164)) key!4968)))))

(assert (=> d!1462117 (noDuplicateKeys!1550 lt!1799164)))

(assert (=> d!1462117 (= (getPair!342 lt!1799164 key!4968) lt!1799543)))

(declare-fun b!4636729 () Bool)

(declare-fun res!1946466 () Bool)

(declare-fun e!2892515 () Bool)

(assert (=> b!4636729 (=> (not res!1946466) (not e!2892515))))

(declare-fun get!17180 (Option!11712) tuple2!52646)

(assert (=> b!4636729 (= res!1946466 (= (_1!29617 (get!17180 lt!1799543)) key!4968))))

(declare-fun b!4636730 () Bool)

(assert (=> b!4636730 (= e!2892512 None!11711)))

(declare-fun b!4636731 () Bool)

(assert (=> b!4636731 (= e!2892515 (contains!14794 lt!1799164 (get!17180 lt!1799543)))))

(declare-fun b!4636732 () Bool)

(assert (=> b!4636732 (= e!2892513 (not (containsKey!2570 lt!1799164 key!4968)))))

(declare-fun b!4636733 () Bool)

(assert (=> b!4636733 (= e!2892514 e!2892515)))

(declare-fun res!1946468 () Bool)

(assert (=> b!4636733 (=> (not res!1946468) (not e!2892515))))

(assert (=> b!4636733 (= res!1946468 (isDefined!8977 lt!1799543))))

(assert (= (and d!1462117 c!793595) b!4636727))

(assert (= (and d!1462117 (not c!793595)) b!4636728))

(assert (= (and b!4636728 c!793596) b!4636726))

(assert (= (and b!4636728 (not c!793596)) b!4636730))

(assert (= (and d!1462117 res!1946465) b!4636732))

(assert (= (and d!1462117 (not res!1946467)) b!4636733))

(assert (= (and b!4636733 res!1946468) b!4636729))

(assert (= (and b!4636729 res!1946466) b!4636731))

(declare-fun m!5494471 () Bool)

(assert (=> b!4636726 m!5494471))

(declare-fun m!5494473 () Bool)

(assert (=> b!4636733 m!5494473))

(declare-fun m!5494475 () Bool)

(assert (=> b!4636731 m!5494475))

(assert (=> b!4636731 m!5494475))

(declare-fun m!5494477 () Bool)

(assert (=> b!4636731 m!5494477))

(declare-fun m!5494479 () Bool)

(assert (=> b!4636732 m!5494479))

(assert (=> b!4636729 m!5494475))

(declare-fun m!5494481 () Bool)

(assert (=> d!1462117 m!5494481))

(declare-fun m!5494483 () Bool)

(assert (=> d!1462117 m!5494483))

(assert (=> b!4636473 d!1462117))

(declare-fun d!1462123 () Bool)

(declare-fun res!1946473 () Bool)

(declare-fun e!2892521 () Bool)

(assert (=> d!1462123 (=> res!1946473 e!2892521)))

(assert (=> d!1462123 (= res!1946473 (and ((_ is Cons!51662) oldBucket!40) (= (_1!29617 (h!57752 oldBucket!40)) key!4968)))))

(assert (=> d!1462123 (= (containsKey!2570 oldBucket!40 key!4968) e!2892521)))

(declare-fun b!4636738 () Bool)

(declare-fun e!2892522 () Bool)

(assert (=> b!4636738 (= e!2892521 e!2892522)))

(declare-fun res!1946474 () Bool)

(assert (=> b!4636738 (=> (not res!1946474) (not e!2892522))))

(assert (=> b!4636738 (= res!1946474 ((_ is Cons!51662) oldBucket!40))))

(declare-fun b!4636739 () Bool)

(assert (=> b!4636739 (= e!2892522 (containsKey!2570 (t!358858 oldBucket!40) key!4968))))

(assert (= (and d!1462123 (not res!1946473)) b!4636738))

(assert (= (and b!4636738 res!1946474) b!4636739))

(assert (=> b!4636739 m!5493763))

(assert (=> b!4636473 d!1462123))

(declare-fun d!1462125 () Bool)

(declare-fun lt!1799546 () Bool)

(declare-fun content!8919 (List!51787) (InoxSet tuple2!52648))

(assert (=> d!1462125 (= lt!1799546 (select (content!8919 lt!1799140) lt!1799141))))

(declare-fun e!2892528 () Bool)

(assert (=> d!1462125 (= lt!1799546 e!2892528)))

(declare-fun res!1946480 () Bool)

(assert (=> d!1462125 (=> (not res!1946480) (not e!2892528))))

(assert (=> d!1462125 (= res!1946480 ((_ is Cons!51663) lt!1799140))))

(assert (=> d!1462125 (= (contains!14790 lt!1799140 lt!1799141) lt!1799546)))

(declare-fun b!4636744 () Bool)

(declare-fun e!2892527 () Bool)

(assert (=> b!4636744 (= e!2892528 e!2892527)))

(declare-fun res!1946479 () Bool)

(assert (=> b!4636744 (=> res!1946479 e!2892527)))

(assert (=> b!4636744 (= res!1946479 (= (h!57753 lt!1799140) lt!1799141))))

(declare-fun b!4636745 () Bool)

(assert (=> b!4636745 (= e!2892527 (contains!14790 (t!358859 lt!1799140) lt!1799141))))

(assert (= (and d!1462125 res!1946480) b!4636744))

(assert (= (and b!4636744 (not res!1946479)) b!4636745))

(declare-fun m!5494485 () Bool)

(assert (=> d!1462125 m!5494485))

(declare-fun m!5494487 () Bool)

(assert (=> d!1462125 m!5494487))

(declare-fun m!5494489 () Bool)

(assert (=> b!4636745 m!5494489))

(assert (=> b!4636473 d!1462125))

(declare-fun bs!1031477 () Bool)

(declare-fun d!1462127 () Bool)

(assert (= bs!1031477 (and d!1462127 d!1462051)))

(declare-fun lambda!195206 () Int)

(assert (=> bs!1031477 (= lambda!195206 lambda!195147)))

(declare-fun bs!1031478 () Bool)

(assert (= bs!1031478 (and d!1462127 d!1462083)))

(assert (=> bs!1031478 (= lambda!195206 lambda!195185)))

(declare-fun bs!1031479 () Bool)

(assert (= bs!1031479 (and d!1462127 d!1462081)))

(assert (=> bs!1031479 (= lambda!195206 lambda!195184)))

(declare-fun bs!1031480 () Bool)

(assert (= bs!1031480 (and d!1462127 d!1462055)))

(assert (=> bs!1031480 (= lambda!195206 lambda!195176)))

(declare-fun bs!1031481 () Bool)

(assert (= bs!1031481 (and d!1462127 b!4636473)))

(assert (=> bs!1031481 (= lambda!195206 lambda!195102)))

(assert (=> d!1462127 (contains!14791 lt!1799167 (hash!3622 hashF!1389 key!4968))))

(declare-fun lt!1799549 () Unit!114499)

(declare-fun choose!31713 (ListLongMap!3655 K!13025 Hashable!5947) Unit!114499)

(assert (=> d!1462127 (= lt!1799549 (choose!31713 lt!1799167 key!4968 hashF!1389))))

(assert (=> d!1462127 (forall!10902 (toList!5066 lt!1799167) lambda!195206)))

(assert (=> d!1462127 (= (lemmaInGenMapThenLongMapContainsHash!548 lt!1799167 key!4968 hashF!1389) lt!1799549)))

(declare-fun bs!1031482 () Bool)

(assert (= bs!1031482 d!1462127))

(assert (=> bs!1031482 m!5493821))

(assert (=> bs!1031482 m!5493821))

(declare-fun m!5494491 () Bool)

(assert (=> bs!1031482 m!5494491))

(declare-fun m!5494493 () Bool)

(assert (=> bs!1031482 m!5494493))

(declare-fun m!5494495 () Bool)

(assert (=> bs!1031482 m!5494495))

(assert (=> b!4636473 d!1462127))

(declare-fun d!1462129 () Bool)

(assert (=> d!1462129 (containsKey!2570 oldBucket!40 key!4968)))

(declare-fun lt!1799552 () Unit!114499)

(declare-fun choose!31714 (List!51786 K!13025 Hashable!5947) Unit!114499)

(assert (=> d!1462129 (= lt!1799552 (choose!31714 oldBucket!40 key!4968 hashF!1389))))

(assert (=> d!1462129 (noDuplicateKeys!1550 oldBucket!40)))

(assert (=> d!1462129 (= (lemmaGetPairDefinedThenContainsKey!96 oldBucket!40 key!4968 hashF!1389) lt!1799552)))

(declare-fun bs!1031483 () Bool)

(assert (= bs!1031483 d!1462129))

(assert (=> bs!1031483 m!5493753))

(declare-fun m!5494497 () Bool)

(assert (=> bs!1031483 m!5494497))

(assert (=> bs!1031483 m!5493827))

(assert (=> b!4636473 d!1462129))

(declare-fun d!1462131 () Bool)

(declare-fun e!2892551 () Bool)

(assert (=> d!1462131 e!2892551))

(declare-fun res!1946492 () Bool)

(assert (=> d!1462131 (=> res!1946492 e!2892551)))

(declare-fun lt!1799585 () Bool)

(assert (=> d!1462131 (= res!1946492 (not lt!1799585))))

(declare-fun lt!1799586 () Bool)

(assert (=> d!1462131 (= lt!1799585 lt!1799586)))

(declare-fun lt!1799588 () Unit!114499)

(declare-fun e!2892552 () Unit!114499)

(assert (=> d!1462131 (= lt!1799588 e!2892552)))

(declare-fun c!793608 () Bool)

(assert (=> d!1462131 (= c!793608 lt!1799586)))

(declare-fun containsKey!2573 (List!51787 (_ BitVec 64)) Bool)

(assert (=> d!1462131 (= lt!1799586 (containsKey!2573 (toList!5066 lt!1799167) lt!1799145))))

(assert (=> d!1462131 (= (contains!14791 lt!1799167 lt!1799145) lt!1799585)))

(declare-fun b!4636779 () Bool)

(declare-fun lt!1799587 () Unit!114499)

(assert (=> b!4636779 (= e!2892552 lt!1799587)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1433 (List!51787 (_ BitVec 64)) Unit!114499)

(assert (=> b!4636779 (= lt!1799587 (lemmaContainsKeyImpliesGetValueByKeyDefined!1433 (toList!5066 lt!1799167) lt!1799145))))

(declare-fun isDefined!8980 (Option!11716) Bool)

(assert (=> b!4636779 (isDefined!8980 (getValueByKey!1532 (toList!5066 lt!1799167) lt!1799145))))

(declare-fun b!4636780 () Bool)

(declare-fun Unit!114537 () Unit!114499)

(assert (=> b!4636780 (= e!2892552 Unit!114537)))

(declare-fun b!4636781 () Bool)

(assert (=> b!4636781 (= e!2892551 (isDefined!8980 (getValueByKey!1532 (toList!5066 lt!1799167) lt!1799145)))))

(assert (= (and d!1462131 c!793608) b!4636779))

(assert (= (and d!1462131 (not c!793608)) b!4636780))

(assert (= (and d!1462131 (not res!1946492)) b!4636781))

(declare-fun m!5494517 () Bool)

(assert (=> d!1462131 m!5494517))

(declare-fun m!5494519 () Bool)

(assert (=> b!4636779 m!5494519))

(assert (=> b!4636779 m!5494385))

(assert (=> b!4636779 m!5494385))

(declare-fun m!5494521 () Bool)

(assert (=> b!4636779 m!5494521))

(assert (=> b!4636781 m!5494385))

(assert (=> b!4636781 m!5494385))

(assert (=> b!4636781 m!5494521))

(assert (=> b!4636473 d!1462131))

(declare-fun bs!1031599 () Bool)

(declare-fun d!1462135 () Bool)

(assert (= bs!1031599 (and d!1462135 d!1462051)))

(declare-fun lambda!195226 () Int)

(assert (=> bs!1031599 (= lambda!195226 lambda!195147)))

(declare-fun bs!1031600 () Bool)

(assert (= bs!1031600 (and d!1462135 d!1462083)))

(assert (=> bs!1031600 (= lambda!195226 lambda!195185)))

(declare-fun bs!1031601 () Bool)

(assert (= bs!1031601 (and d!1462135 d!1462081)))

(assert (=> bs!1031601 (= lambda!195226 lambda!195184)))

(declare-fun bs!1031602 () Bool)

(assert (= bs!1031602 (and d!1462135 b!4636473)))

(assert (=> bs!1031602 (= lambda!195226 lambda!195102)))

(declare-fun bs!1031603 () Bool)

(assert (= bs!1031603 (and d!1462135 d!1462055)))

(assert (=> bs!1031603 (= lambda!195226 lambda!195176)))

(declare-fun bs!1031604 () Bool)

(assert (= bs!1031604 (and d!1462135 d!1462127)))

(assert (=> bs!1031604 (= lambda!195226 lambda!195206)))

(declare-fun e!2892590 () Bool)

(assert (=> d!1462135 e!2892590))

(declare-fun res!1946521 () Bool)

(assert (=> d!1462135 (=> (not res!1946521) (not e!2892590))))

(assert (=> d!1462135 (= res!1946521 (forall!10902 (toList!5066 lt!1799167) lambda!195226))))

(declare-fun lt!1799649 () Unit!114499)

(declare-fun choose!31715 (ListLongMap!3655 K!13025 Hashable!5947) Unit!114499)

(assert (=> d!1462135 (= lt!1799649 (choose!31715 lt!1799167 key!4968 hashF!1389))))

(assert (=> d!1462135 (forall!10902 (toList!5066 lt!1799167) lambda!195226)))

(assert (=> d!1462135 (= (lemmaInGenMapThenGetPairDefined!138 lt!1799167 key!4968 hashF!1389) lt!1799649)))

(declare-fun lt!1799652 () (_ BitVec 64))

(declare-fun e!2892589 () Bool)

(declare-fun lt!1799656 () List!51786)

(declare-fun b!4636846 () Bool)

(assert (=> b!4636846 (= e!2892589 (= (getValueByKey!1532 (toList!5066 lt!1799167) lt!1799652) (Some!11715 lt!1799656)))))

(declare-fun b!4636844 () Bool)

(declare-fun res!1946519 () Bool)

(assert (=> b!4636844 (=> (not res!1946519) (not e!2892590))))

(assert (=> b!4636844 (= res!1946519 (contains!14789 (extractMap!1606 (toList!5066 lt!1799167)) key!4968))))

(declare-fun b!4636843 () Bool)

(declare-fun res!1946520 () Bool)

(assert (=> b!4636843 (=> (not res!1946520) (not e!2892590))))

(declare-fun allKeysSameHashInMap!1570 (ListLongMap!3655 Hashable!5947) Bool)

(assert (=> b!4636843 (= res!1946520 (allKeysSameHashInMap!1570 lt!1799167 hashF!1389))))

(declare-fun b!4636845 () Bool)

(assert (=> b!4636845 (= e!2892590 (isDefined!8977 (getPair!342 (apply!12215 lt!1799167 (hash!3622 hashF!1389 key!4968)) key!4968)))))

(declare-fun lt!1799655 () Unit!114499)

(assert (=> b!4636845 (= lt!1799655 (forallContained!3134 (toList!5066 lt!1799167) lambda!195226 (tuple2!52649 (hash!3622 hashF!1389 key!4968) (apply!12215 lt!1799167 (hash!3622 hashF!1389 key!4968)))))))

(declare-fun lt!1799654 () Unit!114499)

(declare-fun lt!1799653 () Unit!114499)

(assert (=> b!4636845 (= lt!1799654 lt!1799653)))

(assert (=> b!4636845 (contains!14790 (toList!5066 lt!1799167) (tuple2!52649 lt!1799652 lt!1799656))))

(assert (=> b!4636845 (= lt!1799653 (lemmaGetValueImpliesTupleContained!147 lt!1799167 lt!1799652 lt!1799656))))

(assert (=> b!4636845 e!2892589))

(declare-fun res!1946518 () Bool)

(assert (=> b!4636845 (=> (not res!1946518) (not e!2892589))))

(assert (=> b!4636845 (= res!1946518 (contains!14791 lt!1799167 lt!1799652))))

(assert (=> b!4636845 (= lt!1799656 (apply!12215 lt!1799167 (hash!3622 hashF!1389 key!4968)))))

(assert (=> b!4636845 (= lt!1799652 (hash!3622 hashF!1389 key!4968))))

(declare-fun lt!1799650 () Unit!114499)

(declare-fun lt!1799651 () Unit!114499)

(assert (=> b!4636845 (= lt!1799650 lt!1799651)))

(assert (=> b!4636845 (contains!14791 lt!1799167 (hash!3622 hashF!1389 key!4968))))

(assert (=> b!4636845 (= lt!1799651 (lemmaInGenMapThenLongMapContainsHash!548 lt!1799167 key!4968 hashF!1389))))

(assert (= (and d!1462135 res!1946521) b!4636843))

(assert (= (and b!4636843 res!1946520) b!4636844))

(assert (= (and b!4636844 res!1946519) b!4636845))

(assert (= (and b!4636845 res!1946518) b!4636846))

(declare-fun m!5494673 () Bool)

(assert (=> b!4636845 m!5494673))

(assert (=> b!4636845 m!5493821))

(declare-fun m!5494675 () Bool)

(assert (=> b!4636845 m!5494675))

(declare-fun m!5494677 () Bool)

(assert (=> b!4636845 m!5494677))

(declare-fun m!5494679 () Bool)

(assert (=> b!4636845 m!5494679))

(assert (=> b!4636845 m!5493821))

(assert (=> b!4636845 m!5494491))

(assert (=> b!4636845 m!5494675))

(assert (=> b!4636845 m!5494677))

(declare-fun m!5494681 () Bool)

(assert (=> b!4636845 m!5494681))

(declare-fun m!5494683 () Bool)

(assert (=> b!4636845 m!5494683))

(assert (=> b!4636845 m!5493821))

(declare-fun m!5494685 () Bool)

(assert (=> b!4636845 m!5494685))

(assert (=> b!4636845 m!5493767))

(declare-fun m!5494687 () Bool)

(assert (=> b!4636843 m!5494687))

(declare-fun m!5494689 () Bool)

(assert (=> d!1462135 m!5494689))

(declare-fun m!5494691 () Bool)

(assert (=> d!1462135 m!5494691))

(assert (=> d!1462135 m!5494689))

(declare-fun m!5494693 () Bool)

(assert (=> b!4636844 m!5494693))

(assert (=> b!4636844 m!5494693))

(declare-fun m!5494695 () Bool)

(assert (=> b!4636844 m!5494695))

(declare-fun m!5494697 () Bool)

(assert (=> b!4636846 m!5494697))

(assert (=> b!4636473 d!1462135))

(declare-fun d!1462185 () Bool)

(assert (=> d!1462185 (contains!14790 (toList!5066 lt!1799167) (tuple2!52649 lt!1799145 lt!1799164))))

(declare-fun lt!1799659 () Unit!114499)

(declare-fun choose!31716 (ListLongMap!3655 (_ BitVec 64) List!51786) Unit!114499)

(assert (=> d!1462185 (= lt!1799659 (choose!31716 lt!1799167 lt!1799145 lt!1799164))))

(assert (=> d!1462185 (contains!14791 lt!1799167 lt!1799145)))

(assert (=> d!1462185 (= (lemmaGetValueImpliesTupleContained!147 lt!1799167 lt!1799145 lt!1799164) lt!1799659)))

(declare-fun bs!1031605 () Bool)

(assert (= bs!1031605 d!1462185))

(declare-fun m!5494699 () Bool)

(assert (=> bs!1031605 m!5494699))

(declare-fun m!5494701 () Bool)

(assert (=> bs!1031605 m!5494701))

(assert (=> bs!1031605 m!5493765))

(assert (=> b!4636473 d!1462185))

(declare-fun d!1462187 () Bool)

(declare-fun res!1946522 () Bool)

(declare-fun e!2892591 () Bool)

(assert (=> d!1462187 (=> res!1946522 e!2892591)))

(assert (=> d!1462187 (= res!1946522 (and ((_ is Cons!51662) (t!358858 oldBucket!40)) (= (_1!29617 (h!57752 (t!358858 oldBucket!40))) key!4968)))))

(assert (=> d!1462187 (= (containsKey!2570 (t!358858 oldBucket!40) key!4968) e!2892591)))

(declare-fun b!4636848 () Bool)

(declare-fun e!2892592 () Bool)

(assert (=> b!4636848 (= e!2892591 e!2892592)))

(declare-fun res!1946523 () Bool)

(assert (=> b!4636848 (=> (not res!1946523) (not e!2892592))))

(assert (=> b!4636848 (= res!1946523 ((_ is Cons!51662) (t!358858 oldBucket!40)))))

(declare-fun b!4636849 () Bool)

(assert (=> b!4636849 (= e!2892592 (containsKey!2570 (t!358858 (t!358858 oldBucket!40)) key!4968))))

(assert (= (and d!1462187 (not res!1946522)) b!4636848))

(assert (= (and b!4636848 res!1946523) b!4636849))

(declare-fun m!5494703 () Bool)

(assert (=> b!4636849 m!5494703))

(assert (=> b!4636473 d!1462187))

(declare-fun d!1462189 () Bool)

(assert (=> d!1462189 (= (isDefined!8977 (getPair!342 lt!1799164 key!4968)) (not (isEmpty!28970 (getPair!342 lt!1799164 key!4968))))))

(declare-fun bs!1031606 () Bool)

(assert (= bs!1031606 d!1462189))

(assert (=> bs!1031606 m!5493745))

(declare-fun m!5494705 () Bool)

(assert (=> bs!1031606 m!5494705))

(assert (=> b!4636473 d!1462189))

(declare-fun d!1462191 () Bool)

(assert (=> d!1462191 (= (eq!865 lt!1799162 (+!1916 lt!1799135 (h!57752 oldBucket!40))) (= (content!8917 (toList!5065 lt!1799162)) (content!8917 (toList!5065 (+!1916 lt!1799135 (h!57752 oldBucket!40))))))))

(declare-fun bs!1031607 () Bool)

(assert (= bs!1031607 d!1462191))

(assert (=> bs!1031607 m!5493895))

(declare-fun m!5494707 () Bool)

(assert (=> bs!1031607 m!5494707))

(assert (=> b!4636463 d!1462191))

(declare-fun d!1462193 () Bool)

(declare-fun e!2892593 () Bool)

(assert (=> d!1462193 e!2892593))

(declare-fun res!1946525 () Bool)

(assert (=> d!1462193 (=> (not res!1946525) (not e!2892593))))

(declare-fun lt!1799661 () ListMap!4369)

(assert (=> d!1462193 (= res!1946525 (contains!14789 lt!1799661 (_1!29617 (h!57752 oldBucket!40))))))

(declare-fun lt!1799662 () List!51786)

(assert (=> d!1462193 (= lt!1799661 (ListMap!4370 lt!1799662))))

(declare-fun lt!1799663 () Unit!114499)

(declare-fun lt!1799660 () Unit!114499)

(assert (=> d!1462193 (= lt!1799663 lt!1799660)))

(assert (=> d!1462193 (= (getValueByKey!1531 lt!1799662 (_1!29617 (h!57752 oldBucket!40))) (Some!11714 (_2!29617 (h!57752 oldBucket!40))))))

(assert (=> d!1462193 (= lt!1799660 (lemmaContainsTupThenGetReturnValue!888 lt!1799662 (_1!29617 (h!57752 oldBucket!40)) (_2!29617 (h!57752 oldBucket!40))))))

(assert (=> d!1462193 (= lt!1799662 (insertNoDuplicatedKeys!396 (toList!5065 lt!1799135) (_1!29617 (h!57752 oldBucket!40)) (_2!29617 (h!57752 oldBucket!40))))))

(assert (=> d!1462193 (= (+!1916 lt!1799135 (h!57752 oldBucket!40)) lt!1799661)))

(declare-fun b!4636850 () Bool)

(declare-fun res!1946524 () Bool)

(assert (=> b!4636850 (=> (not res!1946524) (not e!2892593))))

(assert (=> b!4636850 (= res!1946524 (= (getValueByKey!1531 (toList!5065 lt!1799661) (_1!29617 (h!57752 oldBucket!40))) (Some!11714 (_2!29617 (h!57752 oldBucket!40)))))))

(declare-fun b!4636851 () Bool)

(assert (=> b!4636851 (= e!2892593 (contains!14794 (toList!5065 lt!1799661) (h!57752 oldBucket!40)))))

(assert (= (and d!1462193 res!1946525) b!4636850))

(assert (= (and b!4636850 res!1946524) b!4636851))

(declare-fun m!5494709 () Bool)

(assert (=> d!1462193 m!5494709))

(declare-fun m!5494711 () Bool)

(assert (=> d!1462193 m!5494711))

(declare-fun m!5494713 () Bool)

(assert (=> d!1462193 m!5494713))

(declare-fun m!5494715 () Bool)

(assert (=> d!1462193 m!5494715))

(declare-fun m!5494717 () Bool)

(assert (=> b!4636850 m!5494717))

(declare-fun m!5494719 () Bool)

(assert (=> b!4636851 m!5494719))

(assert (=> b!4636463 d!1462193))

(declare-fun bs!1031608 () Bool)

(declare-fun d!1462195 () Bool)

(assert (= bs!1031608 (and d!1462195 b!4636593)))

(declare-fun lambda!195227 () Int)

(assert (=> bs!1031608 (not (= lambda!195227 lambda!195142))))

(assert (=> bs!1031608 (not (= lambda!195227 lambda!195143))))

(declare-fun bs!1031609 () Bool)

(assert (= bs!1031609 (and d!1462195 b!4636592)))

(assert (=> bs!1031609 (not (= lambda!195227 lambda!195141))))

(declare-fun bs!1031610 () Bool)

(assert (= bs!1031610 (and d!1462195 d!1462063)))

(assert (=> bs!1031610 (= lambda!195227 lambda!195183)))

(declare-fun bs!1031611 () Bool)

(assert (= bs!1031611 (and d!1462195 d!1461997)))

(assert (=> bs!1031611 (not (= lambda!195227 lambda!195144))))

(assert (=> d!1462195 true))

(assert (=> d!1462195 true))

(assert (=> d!1462195 (= (allKeysSameHash!1404 newBucket!224 hash!414 hashF!1389) (forall!10903 newBucket!224 lambda!195227))))

(declare-fun bs!1031612 () Bool)

(assert (= bs!1031612 d!1462195))

(declare-fun m!5494721 () Bool)

(assert (=> bs!1031612 m!5494721))

(assert (=> b!4636474 d!1462195))

(declare-fun b!4636855 () Bool)

(declare-fun e!2892594 () List!51786)

(assert (=> b!4636855 (= e!2892594 Nil!51662)))

(declare-fun b!4636853 () Bool)

(declare-fun e!2892595 () List!51786)

(assert (=> b!4636853 (= e!2892595 e!2892594)))

(declare-fun c!793622 () Bool)

(assert (=> b!4636853 (= c!793622 ((_ is Cons!51662) (t!358858 oldBucket!40)))))

(declare-fun b!4636852 () Bool)

(assert (=> b!4636852 (= e!2892595 (t!358858 (t!358858 oldBucket!40)))))

(declare-fun b!4636854 () Bool)

(assert (=> b!4636854 (= e!2892594 (Cons!51662 (h!57752 (t!358858 oldBucket!40)) (removePairForKey!1173 (t!358858 (t!358858 oldBucket!40)) key!4968)))))

(declare-fun d!1462197 () Bool)

(declare-fun lt!1799664 () List!51786)

(assert (=> d!1462197 (not (containsKey!2570 lt!1799664 key!4968))))

(assert (=> d!1462197 (= lt!1799664 e!2892595)))

(declare-fun c!793623 () Bool)

(assert (=> d!1462197 (= c!793623 (and ((_ is Cons!51662) (t!358858 oldBucket!40)) (= (_1!29617 (h!57752 (t!358858 oldBucket!40))) key!4968)))))

(assert (=> d!1462197 (noDuplicateKeys!1550 (t!358858 oldBucket!40))))

(assert (=> d!1462197 (= (removePairForKey!1173 (t!358858 oldBucket!40) key!4968) lt!1799664)))

(assert (= (and d!1462197 c!793623) b!4636852))

(assert (= (and d!1462197 (not c!793623)) b!4636853))

(assert (= (and b!4636853 c!793622) b!4636854))

(assert (= (and b!4636853 (not c!793622)) b!4636855))

(declare-fun m!5494723 () Bool)

(assert (=> b!4636854 m!5494723))

(declare-fun m!5494725 () Bool)

(assert (=> d!1462197 m!5494725))

(assert (=> d!1462197 m!5494339))

(assert (=> b!4636464 d!1462197))

(declare-fun d!1462199 () Bool)

(declare-fun res!1946530 () Bool)

(declare-fun e!2892600 () Bool)

(assert (=> d!1462199 (=> res!1946530 e!2892600)))

(assert (=> d!1462199 (= res!1946530 ((_ is Nil!51663) lt!1799140))))

(assert (=> d!1462199 (= (forall!10902 lt!1799140 lambda!195102) e!2892600)))

(declare-fun b!4636860 () Bool)

(declare-fun e!2892601 () Bool)

(assert (=> b!4636860 (= e!2892600 e!2892601)))

(declare-fun res!1946531 () Bool)

(assert (=> b!4636860 (=> (not res!1946531) (not e!2892601))))

(assert (=> b!4636860 (= res!1946531 (dynLambda!21538 lambda!195102 (h!57753 lt!1799140)))))

(declare-fun b!4636861 () Bool)

(assert (=> b!4636861 (= e!2892601 (forall!10902 (t!358859 lt!1799140) lambda!195102))))

(assert (= (and d!1462199 (not res!1946530)) b!4636860))

(assert (= (and b!4636860 res!1946531) b!4636861))

(declare-fun b_lambda!171031 () Bool)

(assert (=> (not b_lambda!171031) (not b!4636860)))

(declare-fun m!5494727 () Bool)

(assert (=> b!4636860 m!5494727))

(declare-fun m!5494729 () Bool)

(assert (=> b!4636861 m!5494729))

(assert (=> b!4636459 d!1462199))

(declare-fun bs!1031613 () Bool)

(declare-fun b!4636864 () Bool)

(assert (= bs!1031613 (and b!4636864 b!4636593)))

(declare-fun lambda!195228 () Int)

(assert (=> bs!1031613 (= (= (ListMap!4370 Nil!51662) lt!1799152) (= lambda!195228 lambda!195142))))

(assert (=> bs!1031613 (= (= (ListMap!4370 Nil!51662) lt!1799328) (= lambda!195228 lambda!195143))))

(declare-fun bs!1031614 () Bool)

(assert (= bs!1031614 (and b!4636864 b!4636592)))

(assert (=> bs!1031614 (= (= (ListMap!4370 Nil!51662) lt!1799152) (= lambda!195228 lambda!195141))))

(declare-fun bs!1031615 () Bool)

(assert (= bs!1031615 (and b!4636864 d!1462195)))

(assert (=> bs!1031615 (not (= lambda!195228 lambda!195227))))

(declare-fun bs!1031616 () Bool)

(assert (= bs!1031616 (and b!4636864 d!1462063)))

(assert (=> bs!1031616 (not (= lambda!195228 lambda!195183))))

(declare-fun bs!1031617 () Bool)

(assert (= bs!1031617 (and b!4636864 d!1461997)))

(assert (=> bs!1031617 (= (= (ListMap!4370 Nil!51662) lt!1799325) (= lambda!195228 lambda!195144))))

(assert (=> b!4636864 true))

(declare-fun bs!1031618 () Bool)

(declare-fun b!4636865 () Bool)

(assert (= bs!1031618 (and b!4636865 b!4636593)))

(declare-fun lambda!195229 () Int)

(assert (=> bs!1031618 (= (= (ListMap!4370 Nil!51662) lt!1799152) (= lambda!195229 lambda!195142))))

(assert (=> bs!1031618 (= (= (ListMap!4370 Nil!51662) lt!1799328) (= lambda!195229 lambda!195143))))

(declare-fun bs!1031619 () Bool)

(assert (= bs!1031619 (and b!4636865 b!4636864)))

(assert (=> bs!1031619 (= lambda!195229 lambda!195228)))

(declare-fun bs!1031620 () Bool)

(assert (= bs!1031620 (and b!4636865 b!4636592)))

(assert (=> bs!1031620 (= (= (ListMap!4370 Nil!51662) lt!1799152) (= lambda!195229 lambda!195141))))

(declare-fun bs!1031621 () Bool)

(assert (= bs!1031621 (and b!4636865 d!1462195)))

(assert (=> bs!1031621 (not (= lambda!195229 lambda!195227))))

(declare-fun bs!1031622 () Bool)

(assert (= bs!1031622 (and b!4636865 d!1462063)))

(assert (=> bs!1031622 (not (= lambda!195229 lambda!195183))))

(declare-fun bs!1031623 () Bool)

(assert (= bs!1031623 (and b!4636865 d!1461997)))

(assert (=> bs!1031623 (= (= (ListMap!4370 Nil!51662) lt!1799325) (= lambda!195229 lambda!195144))))

(assert (=> b!4636865 true))

(declare-fun lambda!195230 () Int)

(declare-fun lt!1799679 () ListMap!4369)

(assert (=> bs!1031618 (= (= lt!1799679 lt!1799152) (= lambda!195230 lambda!195142))))

(assert (=> bs!1031618 (= (= lt!1799679 lt!1799328) (= lambda!195230 lambda!195143))))

(assert (=> bs!1031619 (= (= lt!1799679 (ListMap!4370 Nil!51662)) (= lambda!195230 lambda!195228))))

(assert (=> bs!1031620 (= (= lt!1799679 lt!1799152) (= lambda!195230 lambda!195141))))

(assert (=> bs!1031621 (not (= lambda!195230 lambda!195227))))

(assert (=> b!4636865 (= (= lt!1799679 (ListMap!4370 Nil!51662)) (= lambda!195230 lambda!195229))))

(assert (=> bs!1031622 (not (= lambda!195230 lambda!195183))))

(assert (=> bs!1031623 (= (= lt!1799679 lt!1799325) (= lambda!195230 lambda!195144))))

(assert (=> b!4636865 true))

(declare-fun bs!1031624 () Bool)

(declare-fun d!1462201 () Bool)

(assert (= bs!1031624 (and d!1462201 b!4636593)))

(declare-fun lambda!195231 () Int)

(declare-fun lt!1799676 () ListMap!4369)

(assert (=> bs!1031624 (= (= lt!1799676 lt!1799152) (= lambda!195231 lambda!195142))))

(declare-fun bs!1031625 () Bool)

(assert (= bs!1031625 (and d!1462201 b!4636865)))

(assert (=> bs!1031625 (= (= lt!1799676 lt!1799679) (= lambda!195231 lambda!195230))))

(assert (=> bs!1031624 (= (= lt!1799676 lt!1799328) (= lambda!195231 lambda!195143))))

(declare-fun bs!1031626 () Bool)

(assert (= bs!1031626 (and d!1462201 b!4636864)))

(assert (=> bs!1031626 (= (= lt!1799676 (ListMap!4370 Nil!51662)) (= lambda!195231 lambda!195228))))

(declare-fun bs!1031627 () Bool)

(assert (= bs!1031627 (and d!1462201 b!4636592)))

(assert (=> bs!1031627 (= (= lt!1799676 lt!1799152) (= lambda!195231 lambda!195141))))

(declare-fun bs!1031628 () Bool)

(assert (= bs!1031628 (and d!1462201 d!1462195)))

(assert (=> bs!1031628 (not (= lambda!195231 lambda!195227))))

(assert (=> bs!1031625 (= (= lt!1799676 (ListMap!4370 Nil!51662)) (= lambda!195231 lambda!195229))))

(declare-fun bs!1031629 () Bool)

(assert (= bs!1031629 (and d!1462201 d!1462063)))

(assert (=> bs!1031629 (not (= lambda!195231 lambda!195183))))

(declare-fun bs!1031630 () Bool)

(assert (= bs!1031630 (and d!1462201 d!1461997)))

(assert (=> bs!1031630 (= (= lt!1799676 lt!1799325) (= lambda!195231 lambda!195144))))

(assert (=> d!1462201 true))

(declare-fun b!4636862 () Bool)

(declare-fun e!2892604 () Bool)

(declare-fun call!323640 () Bool)

(assert (=> b!4636862 (= e!2892604 call!323640)))

(declare-fun b!4636863 () Bool)

(declare-fun res!1946532 () Bool)

(declare-fun e!2892602 () Bool)

(assert (=> b!4636863 (=> (not res!1946532) (not e!2892602))))

(assert (=> b!4636863 (= res!1946532 (forall!10903 (toList!5065 (ListMap!4370 Nil!51662)) lambda!195231))))

(declare-fun c!793624 () Bool)

(declare-fun bm!323634 () Bool)

(assert (=> bm!323634 (= call!323640 (forall!10903 (toList!5065 (ListMap!4370 Nil!51662)) (ite c!793624 lambda!195228 lambda!195230)))))

(declare-fun e!2892603 () ListMap!4369)

(assert (=> b!4636864 (= e!2892603 (ListMap!4370 Nil!51662))))

(declare-fun lt!1799682 () Unit!114499)

(declare-fun call!323641 () Unit!114499)

(assert (=> b!4636864 (= lt!1799682 call!323641)))

(assert (=> b!4636864 call!323640))

(declare-fun lt!1799674 () Unit!114499)

(assert (=> b!4636864 (= lt!1799674 lt!1799682)))

(declare-fun call!323639 () Bool)

(assert (=> b!4636864 call!323639))

(declare-fun lt!1799675 () Unit!114499)

(declare-fun Unit!114549 () Unit!114499)

(assert (=> b!4636864 (= lt!1799675 Unit!114549)))

(assert (=> b!4636865 (= e!2892603 lt!1799679)))

(declare-fun lt!1799685 () ListMap!4369)

(assert (=> b!4636865 (= lt!1799685 (+!1916 (ListMap!4370 Nil!51662) (h!57752 lt!1799150)))))

(assert (=> b!4636865 (= lt!1799679 (addToMapMapFromBucket!1011 (t!358858 lt!1799150) (+!1916 (ListMap!4370 Nil!51662) (h!57752 lt!1799150))))))

(declare-fun lt!1799670 () Unit!114499)

(assert (=> b!4636865 (= lt!1799670 call!323641)))

(assert (=> b!4636865 (forall!10903 (toList!5065 (ListMap!4370 Nil!51662)) lambda!195229)))

(declare-fun lt!1799665 () Unit!114499)

(assert (=> b!4636865 (= lt!1799665 lt!1799670)))

(assert (=> b!4636865 call!323639))

(declare-fun lt!1799672 () Unit!114499)

(declare-fun Unit!114550 () Unit!114499)

(assert (=> b!4636865 (= lt!1799672 Unit!114550)))

(assert (=> b!4636865 (forall!10903 (t!358858 lt!1799150) lambda!195230)))

(declare-fun lt!1799681 () Unit!114499)

(declare-fun Unit!114551 () Unit!114499)

(assert (=> b!4636865 (= lt!1799681 Unit!114551)))

(declare-fun lt!1799680 () Unit!114499)

(declare-fun Unit!114552 () Unit!114499)

(assert (=> b!4636865 (= lt!1799680 Unit!114552)))

(declare-fun lt!1799668 () Unit!114499)

(assert (=> b!4636865 (= lt!1799668 (forallContained!3135 (toList!5065 lt!1799685) lambda!195230 (h!57752 lt!1799150)))))

(assert (=> b!4636865 (contains!14789 lt!1799685 (_1!29617 (h!57752 lt!1799150)))))

(declare-fun lt!1799667 () Unit!114499)

(declare-fun Unit!114553 () Unit!114499)

(assert (=> b!4636865 (= lt!1799667 Unit!114553)))

(assert (=> b!4636865 (contains!14789 lt!1799679 (_1!29617 (h!57752 lt!1799150)))))

(declare-fun lt!1799673 () Unit!114499)

(declare-fun Unit!114554 () Unit!114499)

(assert (=> b!4636865 (= lt!1799673 Unit!114554)))

(assert (=> b!4636865 (forall!10903 lt!1799150 lambda!195230)))

(declare-fun lt!1799684 () Unit!114499)

(declare-fun Unit!114555 () Unit!114499)

(assert (=> b!4636865 (= lt!1799684 Unit!114555)))

(assert (=> b!4636865 (forall!10903 (toList!5065 lt!1799685) lambda!195230)))

(declare-fun lt!1799671 () Unit!114499)

(declare-fun Unit!114556 () Unit!114499)

(assert (=> b!4636865 (= lt!1799671 Unit!114556)))

(declare-fun lt!1799666 () Unit!114499)

(declare-fun Unit!114557 () Unit!114499)

(assert (=> b!4636865 (= lt!1799666 Unit!114557)))

(declare-fun lt!1799678 () Unit!114499)

(assert (=> b!4636865 (= lt!1799678 (addForallContainsKeyThenBeforeAdding!544 (ListMap!4370 Nil!51662) lt!1799679 (_1!29617 (h!57752 lt!1799150)) (_2!29617 (h!57752 lt!1799150))))))

(assert (=> b!4636865 (forall!10903 (toList!5065 (ListMap!4370 Nil!51662)) lambda!195230)))

(declare-fun lt!1799677 () Unit!114499)

(assert (=> b!4636865 (= lt!1799677 lt!1799678)))

(assert (=> b!4636865 (forall!10903 (toList!5065 (ListMap!4370 Nil!51662)) lambda!195230)))

(declare-fun lt!1799669 () Unit!114499)

(declare-fun Unit!114558 () Unit!114499)

(assert (=> b!4636865 (= lt!1799669 Unit!114558)))

(declare-fun res!1946534 () Bool)

(assert (=> b!4636865 (= res!1946534 (forall!10903 lt!1799150 lambda!195230))))

(assert (=> b!4636865 (=> (not res!1946534) (not e!2892604))))

(assert (=> b!4636865 e!2892604))

(declare-fun lt!1799683 () Unit!114499)

(declare-fun Unit!114559 () Unit!114499)

(assert (=> b!4636865 (= lt!1799683 Unit!114559)))

(declare-fun bm!323635 () Bool)

(assert (=> bm!323635 (= call!323641 (lemmaContainsAllItsOwnKeys!545 (ListMap!4370 Nil!51662)))))

(declare-fun b!4636866 () Bool)

(assert (=> b!4636866 (= e!2892602 (invariantList!1243 (toList!5065 lt!1799676)))))

(assert (=> d!1462201 e!2892602))

(declare-fun res!1946533 () Bool)

(assert (=> d!1462201 (=> (not res!1946533) (not e!2892602))))

(assert (=> d!1462201 (= res!1946533 (forall!10903 lt!1799150 lambda!195231))))

(assert (=> d!1462201 (= lt!1799676 e!2892603)))

(assert (=> d!1462201 (= c!793624 ((_ is Nil!51662) lt!1799150))))

(assert (=> d!1462201 (noDuplicateKeys!1550 lt!1799150)))

(assert (=> d!1462201 (= (addToMapMapFromBucket!1011 lt!1799150 (ListMap!4370 Nil!51662)) lt!1799676)))

(declare-fun bm!323636 () Bool)

(assert (=> bm!323636 (= call!323639 (forall!10903 (ite c!793624 (toList!5065 (ListMap!4370 Nil!51662)) (toList!5065 lt!1799685)) (ite c!793624 lambda!195228 lambda!195230)))))

(assert (= (and d!1462201 c!793624) b!4636864))

(assert (= (and d!1462201 (not c!793624)) b!4636865))

(assert (= (and b!4636865 res!1946534) b!4636862))

(assert (= (or b!4636864 b!4636865) bm!323635))

(assert (= (or b!4636864 b!4636862) bm!323634))

(assert (= (or b!4636864 b!4636865) bm!323636))

(assert (= (and d!1462201 res!1946533) b!4636863))

(assert (= (and b!4636863 res!1946532) b!4636866))

(declare-fun m!5494731 () Bool)

(assert (=> bm!323634 m!5494731))

(declare-fun m!5494733 () Bool)

(assert (=> b!4636866 m!5494733))

(declare-fun m!5494735 () Bool)

(assert (=> bm!323635 m!5494735))

(declare-fun m!5494737 () Bool)

(assert (=> b!4636863 m!5494737))

(declare-fun m!5494739 () Bool)

(assert (=> d!1462201 m!5494739))

(declare-fun m!5494741 () Bool)

(assert (=> d!1462201 m!5494741))

(declare-fun m!5494743 () Bool)

(assert (=> b!4636865 m!5494743))

(declare-fun m!5494745 () Bool)

(assert (=> b!4636865 m!5494745))

(declare-fun m!5494747 () Bool)

(assert (=> b!4636865 m!5494747))

(declare-fun m!5494749 () Bool)

(assert (=> b!4636865 m!5494749))

(declare-fun m!5494751 () Bool)

(assert (=> b!4636865 m!5494751))

(declare-fun m!5494753 () Bool)

(assert (=> b!4636865 m!5494753))

(declare-fun m!5494755 () Bool)

(assert (=> b!4636865 m!5494755))

(declare-fun m!5494757 () Bool)

(assert (=> b!4636865 m!5494757))

(assert (=> b!4636865 m!5494755))

(declare-fun m!5494759 () Bool)

(assert (=> b!4636865 m!5494759))

(assert (=> b!4636865 m!5494745))

(assert (=> b!4636865 m!5494751))

(declare-fun m!5494761 () Bool)

(assert (=> b!4636865 m!5494761))

(declare-fun m!5494763 () Bool)

(assert (=> b!4636865 m!5494763))

(declare-fun m!5494765 () Bool)

(assert (=> bm!323636 m!5494765))

(assert (=> b!4636470 d!1462201))

(declare-fun bs!1031631 () Bool)

(declare-fun d!1462203 () Bool)

(assert (= bs!1031631 (and d!1462203 d!1462051)))

(declare-fun lambda!195232 () Int)

(assert (=> bs!1031631 (= lambda!195232 lambda!195147)))

(declare-fun bs!1031632 () Bool)

(assert (= bs!1031632 (and d!1462203 d!1462083)))

(assert (=> bs!1031632 (= lambda!195232 lambda!195185)))

(declare-fun bs!1031633 () Bool)

(assert (= bs!1031633 (and d!1462203 d!1462081)))

(assert (=> bs!1031633 (= lambda!195232 lambda!195184)))

(declare-fun bs!1031634 () Bool)

(assert (= bs!1031634 (and d!1462203 d!1462135)))

(assert (=> bs!1031634 (= lambda!195232 lambda!195226)))

(declare-fun bs!1031635 () Bool)

(assert (= bs!1031635 (and d!1462203 b!4636473)))

(assert (=> bs!1031635 (= lambda!195232 lambda!195102)))

(declare-fun bs!1031636 () Bool)

(assert (= bs!1031636 (and d!1462203 d!1462055)))

(assert (=> bs!1031636 (= lambda!195232 lambda!195176)))

(declare-fun bs!1031637 () Bool)

(assert (= bs!1031637 (and d!1462203 d!1462127)))

(assert (=> bs!1031637 (= lambda!195232 lambda!195206)))

(declare-fun lt!1799686 () ListMap!4369)

(assert (=> d!1462203 (invariantList!1243 (toList!5065 lt!1799686))))

(declare-fun e!2892605 () ListMap!4369)

(assert (=> d!1462203 (= lt!1799686 e!2892605)))

(declare-fun c!793625 () Bool)

(assert (=> d!1462203 (= c!793625 ((_ is Cons!51663) lt!1799153))))

(assert (=> d!1462203 (forall!10902 lt!1799153 lambda!195232)))

(assert (=> d!1462203 (= (extractMap!1606 lt!1799153) lt!1799686)))

(declare-fun b!4636867 () Bool)

(assert (=> b!4636867 (= e!2892605 (addToMapMapFromBucket!1011 (_2!29618 (h!57753 lt!1799153)) (extractMap!1606 (t!358859 lt!1799153))))))

(declare-fun b!4636868 () Bool)

(assert (=> b!4636868 (= e!2892605 (ListMap!4370 Nil!51662))))

(assert (= (and d!1462203 c!793625) b!4636867))

(assert (= (and d!1462203 (not c!793625)) b!4636868))

(declare-fun m!5494767 () Bool)

(assert (=> d!1462203 m!5494767))

(declare-fun m!5494769 () Bool)

(assert (=> d!1462203 m!5494769))

(declare-fun m!5494771 () Bool)

(assert (=> b!4636867 m!5494771))

(assert (=> b!4636867 m!5494771))

(declare-fun m!5494773 () Bool)

(assert (=> b!4636867 m!5494773))

(assert (=> b!4636470 d!1462203))

(declare-fun d!1462205 () Bool)

(assert (=> d!1462205 (= (eq!865 (addToMapMapFromBucket!1011 (Cons!51662 lt!1799143 lt!1799150) (ListMap!4370 Nil!51662)) (+!1916 (addToMapMapFromBucket!1011 lt!1799150 (ListMap!4370 Nil!51662)) lt!1799143)) (= (content!8917 (toList!5065 (addToMapMapFromBucket!1011 (Cons!51662 lt!1799143 lt!1799150) (ListMap!4370 Nil!51662)))) (content!8917 (toList!5065 (+!1916 (addToMapMapFromBucket!1011 lt!1799150 (ListMap!4370 Nil!51662)) lt!1799143)))))))

(declare-fun bs!1031638 () Bool)

(assert (= bs!1031638 d!1462205))

(declare-fun m!5494775 () Bool)

(assert (=> bs!1031638 m!5494775))

(declare-fun m!5494777 () Bool)

(assert (=> bs!1031638 m!5494777))

(assert (=> b!4636470 d!1462205))

(declare-fun d!1462207 () Bool)

(assert (=> d!1462207 (= (eq!865 (addToMapMapFromBucket!1011 (Cons!51662 lt!1799144 lt!1799154) (ListMap!4370 Nil!51662)) (+!1916 (addToMapMapFromBucket!1011 lt!1799154 (ListMap!4370 Nil!51662)) lt!1799144)) (= (content!8917 (toList!5065 (addToMapMapFromBucket!1011 (Cons!51662 lt!1799144 lt!1799154) (ListMap!4370 Nil!51662)))) (content!8917 (toList!5065 (+!1916 (addToMapMapFromBucket!1011 lt!1799154 (ListMap!4370 Nil!51662)) lt!1799144)))))))

(declare-fun bs!1031639 () Bool)

(assert (= bs!1031639 d!1462207))

(declare-fun m!5494779 () Bool)

(assert (=> bs!1031639 m!5494779))

(declare-fun m!5494781 () Bool)

(assert (=> bs!1031639 m!5494781))

(assert (=> b!4636470 d!1462207))

(declare-fun d!1462209 () Bool)

(assert (=> d!1462209 (= (head!9684 oldBucket!40) (h!57752 oldBucket!40))))

(assert (=> b!4636470 d!1462209))

(declare-fun bs!1031640 () Bool)

(declare-fun b!4636871 () Bool)

(assert (= bs!1031640 (and b!4636871 b!4636593)))

(declare-fun lambda!195233 () Int)

(assert (=> bs!1031640 (= (= (ListMap!4370 Nil!51662) lt!1799152) (= lambda!195233 lambda!195142))))

(declare-fun bs!1031641 () Bool)

(assert (= bs!1031641 (and b!4636871 b!4636865)))

(assert (=> bs!1031641 (= (= (ListMap!4370 Nil!51662) lt!1799679) (= lambda!195233 lambda!195230))))

(assert (=> bs!1031640 (= (= (ListMap!4370 Nil!51662) lt!1799328) (= lambda!195233 lambda!195143))))

(declare-fun bs!1031642 () Bool)

(assert (= bs!1031642 (and b!4636871 b!4636864)))

(assert (=> bs!1031642 (= lambda!195233 lambda!195228)))

(declare-fun bs!1031643 () Bool)

(assert (= bs!1031643 (and b!4636871 d!1462201)))

(assert (=> bs!1031643 (= (= (ListMap!4370 Nil!51662) lt!1799676) (= lambda!195233 lambda!195231))))

(declare-fun bs!1031644 () Bool)

(assert (= bs!1031644 (and b!4636871 b!4636592)))

(assert (=> bs!1031644 (= (= (ListMap!4370 Nil!51662) lt!1799152) (= lambda!195233 lambda!195141))))

(declare-fun bs!1031645 () Bool)

(assert (= bs!1031645 (and b!4636871 d!1462195)))

(assert (=> bs!1031645 (not (= lambda!195233 lambda!195227))))

(assert (=> bs!1031641 (= lambda!195233 lambda!195229)))

(declare-fun bs!1031646 () Bool)

(assert (= bs!1031646 (and b!4636871 d!1462063)))

(assert (=> bs!1031646 (not (= lambda!195233 lambda!195183))))

(declare-fun bs!1031647 () Bool)

(assert (= bs!1031647 (and b!4636871 d!1461997)))

(assert (=> bs!1031647 (= (= (ListMap!4370 Nil!51662) lt!1799325) (= lambda!195233 lambda!195144))))

(assert (=> b!4636871 true))

(declare-fun bs!1031648 () Bool)

(declare-fun b!4636872 () Bool)

(assert (= bs!1031648 (and b!4636872 b!4636593)))

(declare-fun lambda!195234 () Int)

(assert (=> bs!1031648 (= (= (ListMap!4370 Nil!51662) lt!1799152) (= lambda!195234 lambda!195142))))

(declare-fun bs!1031649 () Bool)

(assert (= bs!1031649 (and b!4636872 b!4636865)))

(assert (=> bs!1031649 (= (= (ListMap!4370 Nil!51662) lt!1799679) (= lambda!195234 lambda!195230))))

(assert (=> bs!1031648 (= (= (ListMap!4370 Nil!51662) lt!1799328) (= lambda!195234 lambda!195143))))

(declare-fun bs!1031650 () Bool)

(assert (= bs!1031650 (and b!4636872 b!4636864)))

(assert (=> bs!1031650 (= lambda!195234 lambda!195228)))

(declare-fun bs!1031651 () Bool)

(assert (= bs!1031651 (and b!4636872 d!1462201)))

(assert (=> bs!1031651 (= (= (ListMap!4370 Nil!51662) lt!1799676) (= lambda!195234 lambda!195231))))

(declare-fun bs!1031652 () Bool)

(assert (= bs!1031652 (and b!4636872 b!4636592)))

(assert (=> bs!1031652 (= (= (ListMap!4370 Nil!51662) lt!1799152) (= lambda!195234 lambda!195141))))

(assert (=> bs!1031649 (= lambda!195234 lambda!195229)))

(declare-fun bs!1031653 () Bool)

(assert (= bs!1031653 (and b!4636872 d!1462063)))

(assert (=> bs!1031653 (not (= lambda!195234 lambda!195183))))

(declare-fun bs!1031654 () Bool)

(assert (= bs!1031654 (and b!4636872 d!1461997)))

(assert (=> bs!1031654 (= (= (ListMap!4370 Nil!51662) lt!1799325) (= lambda!195234 lambda!195144))))

(declare-fun bs!1031655 () Bool)

(assert (= bs!1031655 (and b!4636872 d!1462195)))

(assert (=> bs!1031655 (not (= lambda!195234 lambda!195227))))

(declare-fun bs!1031656 () Bool)

(assert (= bs!1031656 (and b!4636872 b!4636871)))

(assert (=> bs!1031656 (= lambda!195234 lambda!195233)))

(assert (=> b!4636872 true))

(declare-fun lambda!195235 () Int)

(declare-fun lt!1799701 () ListMap!4369)

(assert (=> bs!1031648 (= (= lt!1799701 lt!1799152) (= lambda!195235 lambda!195142))))

(assert (=> bs!1031649 (= (= lt!1799701 lt!1799679) (= lambda!195235 lambda!195230))))

(assert (=> bs!1031648 (= (= lt!1799701 lt!1799328) (= lambda!195235 lambda!195143))))

(assert (=> bs!1031650 (= (= lt!1799701 (ListMap!4370 Nil!51662)) (= lambda!195235 lambda!195228))))

(assert (=> bs!1031651 (= (= lt!1799701 lt!1799676) (= lambda!195235 lambda!195231))))

(assert (=> bs!1031652 (= (= lt!1799701 lt!1799152) (= lambda!195235 lambda!195141))))

(assert (=> b!4636872 (= (= lt!1799701 (ListMap!4370 Nil!51662)) (= lambda!195235 lambda!195234))))

(assert (=> bs!1031649 (= (= lt!1799701 (ListMap!4370 Nil!51662)) (= lambda!195235 lambda!195229))))

(assert (=> bs!1031653 (not (= lambda!195235 lambda!195183))))

(assert (=> bs!1031654 (= (= lt!1799701 lt!1799325) (= lambda!195235 lambda!195144))))

(assert (=> bs!1031655 (not (= lambda!195235 lambda!195227))))

(assert (=> bs!1031656 (= (= lt!1799701 (ListMap!4370 Nil!51662)) (= lambda!195235 lambda!195233))))

(assert (=> b!4636872 true))

(declare-fun bs!1031657 () Bool)

(declare-fun d!1462211 () Bool)

(assert (= bs!1031657 (and d!1462211 b!4636593)))

(declare-fun lambda!195236 () Int)

(declare-fun lt!1799698 () ListMap!4369)

(assert (=> bs!1031657 (= (= lt!1799698 lt!1799152) (= lambda!195236 lambda!195142))))

(declare-fun bs!1031658 () Bool)

(assert (= bs!1031658 (and d!1462211 b!4636865)))

(assert (=> bs!1031658 (= (= lt!1799698 lt!1799679) (= lambda!195236 lambda!195230))))

(declare-fun bs!1031659 () Bool)

(assert (= bs!1031659 (and d!1462211 b!4636872)))

(assert (=> bs!1031659 (= (= lt!1799698 lt!1799701) (= lambda!195236 lambda!195235))))

(assert (=> bs!1031657 (= (= lt!1799698 lt!1799328) (= lambda!195236 lambda!195143))))

(declare-fun bs!1031660 () Bool)

(assert (= bs!1031660 (and d!1462211 b!4636864)))

(assert (=> bs!1031660 (= (= lt!1799698 (ListMap!4370 Nil!51662)) (= lambda!195236 lambda!195228))))

(declare-fun bs!1031661 () Bool)

(assert (= bs!1031661 (and d!1462211 d!1462201)))

(assert (=> bs!1031661 (= (= lt!1799698 lt!1799676) (= lambda!195236 lambda!195231))))

(declare-fun bs!1031662 () Bool)

(assert (= bs!1031662 (and d!1462211 b!4636592)))

(assert (=> bs!1031662 (= (= lt!1799698 lt!1799152) (= lambda!195236 lambda!195141))))

(assert (=> bs!1031659 (= (= lt!1799698 (ListMap!4370 Nil!51662)) (= lambda!195236 lambda!195234))))

(assert (=> bs!1031658 (= (= lt!1799698 (ListMap!4370 Nil!51662)) (= lambda!195236 lambda!195229))))

(declare-fun bs!1031663 () Bool)

(assert (= bs!1031663 (and d!1462211 d!1462063)))

(assert (=> bs!1031663 (not (= lambda!195236 lambda!195183))))

(declare-fun bs!1031664 () Bool)

(assert (= bs!1031664 (and d!1462211 d!1461997)))

(assert (=> bs!1031664 (= (= lt!1799698 lt!1799325) (= lambda!195236 lambda!195144))))

(declare-fun bs!1031665 () Bool)

(assert (= bs!1031665 (and d!1462211 d!1462195)))

(assert (=> bs!1031665 (not (= lambda!195236 lambda!195227))))

(declare-fun bs!1031666 () Bool)

(assert (= bs!1031666 (and d!1462211 b!4636871)))

(assert (=> bs!1031666 (= (= lt!1799698 (ListMap!4370 Nil!51662)) (= lambda!195236 lambda!195233))))

(assert (=> d!1462211 true))

(declare-fun b!4636869 () Bool)

(declare-fun e!2892608 () Bool)

(declare-fun call!323643 () Bool)

(assert (=> b!4636869 (= e!2892608 call!323643)))

(declare-fun b!4636870 () Bool)

(declare-fun res!1946535 () Bool)

(declare-fun e!2892606 () Bool)

(assert (=> b!4636870 (=> (not res!1946535) (not e!2892606))))

(assert (=> b!4636870 (= res!1946535 (forall!10903 (toList!5065 (ListMap!4370 Nil!51662)) lambda!195236))))

(declare-fun bm!323637 () Bool)

(declare-fun c!793626 () Bool)

(assert (=> bm!323637 (= call!323643 (forall!10903 (toList!5065 (ListMap!4370 Nil!51662)) (ite c!793626 lambda!195233 lambda!195235)))))

(declare-fun e!2892607 () ListMap!4369)

(assert (=> b!4636871 (= e!2892607 (ListMap!4370 Nil!51662))))

(declare-fun lt!1799704 () Unit!114499)

(declare-fun call!323644 () Unit!114499)

(assert (=> b!4636871 (= lt!1799704 call!323644)))

(assert (=> b!4636871 call!323643))

(declare-fun lt!1799696 () Unit!114499)

(assert (=> b!4636871 (= lt!1799696 lt!1799704)))

(declare-fun call!323642 () Bool)

(assert (=> b!4636871 call!323642))

(declare-fun lt!1799697 () Unit!114499)

(declare-fun Unit!114561 () Unit!114499)

(assert (=> b!4636871 (= lt!1799697 Unit!114561)))

(assert (=> b!4636872 (= e!2892607 lt!1799701)))

(declare-fun lt!1799707 () ListMap!4369)

(assert (=> b!4636872 (= lt!1799707 (+!1916 (ListMap!4370 Nil!51662) (h!57752 (Cons!51662 lt!1799144 lt!1799154))))))

(assert (=> b!4636872 (= lt!1799701 (addToMapMapFromBucket!1011 (t!358858 (Cons!51662 lt!1799144 lt!1799154)) (+!1916 (ListMap!4370 Nil!51662) (h!57752 (Cons!51662 lt!1799144 lt!1799154)))))))

(declare-fun lt!1799692 () Unit!114499)

(assert (=> b!4636872 (= lt!1799692 call!323644)))

(assert (=> b!4636872 (forall!10903 (toList!5065 (ListMap!4370 Nil!51662)) lambda!195234)))

(declare-fun lt!1799687 () Unit!114499)

(assert (=> b!4636872 (= lt!1799687 lt!1799692)))

(assert (=> b!4636872 call!323642))

(declare-fun lt!1799694 () Unit!114499)

(declare-fun Unit!114563 () Unit!114499)

(assert (=> b!4636872 (= lt!1799694 Unit!114563)))

(assert (=> b!4636872 (forall!10903 (t!358858 (Cons!51662 lt!1799144 lt!1799154)) lambda!195235)))

(declare-fun lt!1799703 () Unit!114499)

(declare-fun Unit!114565 () Unit!114499)

(assert (=> b!4636872 (= lt!1799703 Unit!114565)))

(declare-fun lt!1799702 () Unit!114499)

(declare-fun Unit!114567 () Unit!114499)

(assert (=> b!4636872 (= lt!1799702 Unit!114567)))

(declare-fun lt!1799690 () Unit!114499)

(assert (=> b!4636872 (= lt!1799690 (forallContained!3135 (toList!5065 lt!1799707) lambda!195235 (h!57752 (Cons!51662 lt!1799144 lt!1799154))))))

(assert (=> b!4636872 (contains!14789 lt!1799707 (_1!29617 (h!57752 (Cons!51662 lt!1799144 lt!1799154))))))

(declare-fun lt!1799689 () Unit!114499)

(declare-fun Unit!114568 () Unit!114499)

(assert (=> b!4636872 (= lt!1799689 Unit!114568)))

(assert (=> b!4636872 (contains!14789 lt!1799701 (_1!29617 (h!57752 (Cons!51662 lt!1799144 lt!1799154))))))

(declare-fun lt!1799695 () Unit!114499)

(declare-fun Unit!114570 () Unit!114499)

(assert (=> b!4636872 (= lt!1799695 Unit!114570)))

(assert (=> b!4636872 (forall!10903 (Cons!51662 lt!1799144 lt!1799154) lambda!195235)))

(declare-fun lt!1799706 () Unit!114499)

(declare-fun Unit!114571 () Unit!114499)

(assert (=> b!4636872 (= lt!1799706 Unit!114571)))

(assert (=> b!4636872 (forall!10903 (toList!5065 lt!1799707) lambda!195235)))

(declare-fun lt!1799693 () Unit!114499)

(declare-fun Unit!114573 () Unit!114499)

(assert (=> b!4636872 (= lt!1799693 Unit!114573)))

(declare-fun lt!1799688 () Unit!114499)

(declare-fun Unit!114574 () Unit!114499)

(assert (=> b!4636872 (= lt!1799688 Unit!114574)))

(declare-fun lt!1799700 () Unit!114499)

(assert (=> b!4636872 (= lt!1799700 (addForallContainsKeyThenBeforeAdding!544 (ListMap!4370 Nil!51662) lt!1799701 (_1!29617 (h!57752 (Cons!51662 lt!1799144 lt!1799154))) (_2!29617 (h!57752 (Cons!51662 lt!1799144 lt!1799154)))))))

(assert (=> b!4636872 (forall!10903 (toList!5065 (ListMap!4370 Nil!51662)) lambda!195235)))

(declare-fun lt!1799699 () Unit!114499)

(assert (=> b!4636872 (= lt!1799699 lt!1799700)))

(assert (=> b!4636872 (forall!10903 (toList!5065 (ListMap!4370 Nil!51662)) lambda!195235)))

(declare-fun lt!1799691 () Unit!114499)

(declare-fun Unit!114577 () Unit!114499)

(assert (=> b!4636872 (= lt!1799691 Unit!114577)))

(declare-fun res!1946537 () Bool)

(assert (=> b!4636872 (= res!1946537 (forall!10903 (Cons!51662 lt!1799144 lt!1799154) lambda!195235))))

(assert (=> b!4636872 (=> (not res!1946537) (not e!2892608))))

(assert (=> b!4636872 e!2892608))

(declare-fun lt!1799705 () Unit!114499)

(declare-fun Unit!114579 () Unit!114499)

(assert (=> b!4636872 (= lt!1799705 Unit!114579)))

(declare-fun bm!323638 () Bool)

(assert (=> bm!323638 (= call!323644 (lemmaContainsAllItsOwnKeys!545 (ListMap!4370 Nil!51662)))))

(declare-fun b!4636873 () Bool)

(assert (=> b!4636873 (= e!2892606 (invariantList!1243 (toList!5065 lt!1799698)))))

(assert (=> d!1462211 e!2892606))

(declare-fun res!1946536 () Bool)

(assert (=> d!1462211 (=> (not res!1946536) (not e!2892606))))

(assert (=> d!1462211 (= res!1946536 (forall!10903 (Cons!51662 lt!1799144 lt!1799154) lambda!195236))))

(assert (=> d!1462211 (= lt!1799698 e!2892607)))

(assert (=> d!1462211 (= c!793626 ((_ is Nil!51662) (Cons!51662 lt!1799144 lt!1799154)))))

(assert (=> d!1462211 (noDuplicateKeys!1550 (Cons!51662 lt!1799144 lt!1799154))))

(assert (=> d!1462211 (= (addToMapMapFromBucket!1011 (Cons!51662 lt!1799144 lt!1799154) (ListMap!4370 Nil!51662)) lt!1799698)))

(declare-fun bm!323639 () Bool)

(assert (=> bm!323639 (= call!323642 (forall!10903 (ite c!793626 (toList!5065 (ListMap!4370 Nil!51662)) (toList!5065 lt!1799707)) (ite c!793626 lambda!195233 lambda!195235)))))

(assert (= (and d!1462211 c!793626) b!4636871))

(assert (= (and d!1462211 (not c!793626)) b!4636872))

(assert (= (and b!4636872 res!1946537) b!4636869))

(assert (= (or b!4636871 b!4636872) bm!323638))

(assert (= (or b!4636871 b!4636869) bm!323637))

(assert (= (or b!4636871 b!4636872) bm!323639))

(assert (= (and d!1462211 res!1946536) b!4636870))

(assert (= (and b!4636870 res!1946535) b!4636873))

(declare-fun m!5494783 () Bool)

(assert (=> bm!323637 m!5494783))

(declare-fun m!5494785 () Bool)

(assert (=> b!4636873 m!5494785))

(assert (=> bm!323638 m!5494735))

(declare-fun m!5494787 () Bool)

(assert (=> b!4636870 m!5494787))

(declare-fun m!5494789 () Bool)

(assert (=> d!1462211 m!5494789))

(declare-fun m!5494791 () Bool)

(assert (=> d!1462211 m!5494791))

(declare-fun m!5494793 () Bool)

(assert (=> b!4636872 m!5494793))

(declare-fun m!5494795 () Bool)

(assert (=> b!4636872 m!5494795))

(declare-fun m!5494797 () Bool)

(assert (=> b!4636872 m!5494797))

(declare-fun m!5494799 () Bool)

(assert (=> b!4636872 m!5494799))

(declare-fun m!5494801 () Bool)

(assert (=> b!4636872 m!5494801))

(declare-fun m!5494803 () Bool)

(assert (=> b!4636872 m!5494803))

(declare-fun m!5494805 () Bool)

(assert (=> b!4636872 m!5494805))

(declare-fun m!5494807 () Bool)

(assert (=> b!4636872 m!5494807))

(assert (=> b!4636872 m!5494805))

(declare-fun m!5494809 () Bool)

(assert (=> b!4636872 m!5494809))

(assert (=> b!4636872 m!5494795))

(assert (=> b!4636872 m!5494801))

(declare-fun m!5494811 () Bool)

(assert (=> b!4636872 m!5494811))

(declare-fun m!5494813 () Bool)

(assert (=> b!4636872 m!5494813))

(declare-fun m!5494815 () Bool)

(assert (=> bm!323639 m!5494815))

(assert (=> b!4636470 d!1462211))

(declare-fun bs!1031667 () Bool)

(declare-fun b!4636876 () Bool)

(assert (= bs!1031667 (and b!4636876 d!1462211)))

(declare-fun lambda!195237 () Int)

(assert (=> bs!1031667 (= (= (ListMap!4370 Nil!51662) lt!1799698) (= lambda!195237 lambda!195236))))

(declare-fun bs!1031668 () Bool)

(assert (= bs!1031668 (and b!4636876 b!4636593)))

(assert (=> bs!1031668 (= (= (ListMap!4370 Nil!51662) lt!1799152) (= lambda!195237 lambda!195142))))

(declare-fun bs!1031669 () Bool)

(assert (= bs!1031669 (and b!4636876 b!4636865)))

(assert (=> bs!1031669 (= (= (ListMap!4370 Nil!51662) lt!1799679) (= lambda!195237 lambda!195230))))

(declare-fun bs!1031670 () Bool)

(assert (= bs!1031670 (and b!4636876 b!4636872)))

(assert (=> bs!1031670 (= (= (ListMap!4370 Nil!51662) lt!1799701) (= lambda!195237 lambda!195235))))

(assert (=> bs!1031668 (= (= (ListMap!4370 Nil!51662) lt!1799328) (= lambda!195237 lambda!195143))))

(declare-fun bs!1031671 () Bool)

(assert (= bs!1031671 (and b!4636876 b!4636864)))

(assert (=> bs!1031671 (= lambda!195237 lambda!195228)))

(declare-fun bs!1031672 () Bool)

(assert (= bs!1031672 (and b!4636876 d!1462201)))

(assert (=> bs!1031672 (= (= (ListMap!4370 Nil!51662) lt!1799676) (= lambda!195237 lambda!195231))))

(declare-fun bs!1031673 () Bool)

(assert (= bs!1031673 (and b!4636876 b!4636592)))

(assert (=> bs!1031673 (= (= (ListMap!4370 Nil!51662) lt!1799152) (= lambda!195237 lambda!195141))))

(assert (=> bs!1031670 (= lambda!195237 lambda!195234)))

(assert (=> bs!1031669 (= lambda!195237 lambda!195229)))

(declare-fun bs!1031674 () Bool)

(assert (= bs!1031674 (and b!4636876 d!1462063)))

(assert (=> bs!1031674 (not (= lambda!195237 lambda!195183))))

(declare-fun bs!1031675 () Bool)

(assert (= bs!1031675 (and b!4636876 d!1461997)))

(assert (=> bs!1031675 (= (= (ListMap!4370 Nil!51662) lt!1799325) (= lambda!195237 lambda!195144))))

(declare-fun bs!1031676 () Bool)

(assert (= bs!1031676 (and b!4636876 d!1462195)))

(assert (=> bs!1031676 (not (= lambda!195237 lambda!195227))))

(declare-fun bs!1031677 () Bool)

(assert (= bs!1031677 (and b!4636876 b!4636871)))

(assert (=> bs!1031677 (= lambda!195237 lambda!195233)))

(assert (=> b!4636876 true))

(declare-fun bs!1031678 () Bool)

(declare-fun b!4636877 () Bool)

(assert (= bs!1031678 (and b!4636877 d!1462211)))

(declare-fun lambda!195238 () Int)

(assert (=> bs!1031678 (= (= (ListMap!4370 Nil!51662) lt!1799698) (= lambda!195238 lambda!195236))))

(declare-fun bs!1031679 () Bool)

(assert (= bs!1031679 (and b!4636877 b!4636593)))

(assert (=> bs!1031679 (= (= (ListMap!4370 Nil!51662) lt!1799152) (= lambda!195238 lambda!195142))))

(declare-fun bs!1031680 () Bool)

(assert (= bs!1031680 (and b!4636877 b!4636865)))

(assert (=> bs!1031680 (= (= (ListMap!4370 Nil!51662) lt!1799679) (= lambda!195238 lambda!195230))))

(declare-fun bs!1031681 () Bool)

(assert (= bs!1031681 (and b!4636877 b!4636872)))

(assert (=> bs!1031681 (= (= (ListMap!4370 Nil!51662) lt!1799701) (= lambda!195238 lambda!195235))))

(declare-fun bs!1031682 () Bool)

(assert (= bs!1031682 (and b!4636877 b!4636864)))

(assert (=> bs!1031682 (= lambda!195238 lambda!195228)))

(declare-fun bs!1031683 () Bool)

(assert (= bs!1031683 (and b!4636877 d!1462201)))

(assert (=> bs!1031683 (= (= (ListMap!4370 Nil!51662) lt!1799676) (= lambda!195238 lambda!195231))))

(declare-fun bs!1031684 () Bool)

(assert (= bs!1031684 (and b!4636877 b!4636592)))

(assert (=> bs!1031684 (= (= (ListMap!4370 Nil!51662) lt!1799152) (= lambda!195238 lambda!195141))))

(assert (=> bs!1031681 (= lambda!195238 lambda!195234)))

(assert (=> bs!1031680 (= lambda!195238 lambda!195229)))

(declare-fun bs!1031685 () Bool)

(assert (= bs!1031685 (and b!4636877 d!1462063)))

(assert (=> bs!1031685 (not (= lambda!195238 lambda!195183))))

(declare-fun bs!1031686 () Bool)

(assert (= bs!1031686 (and b!4636877 d!1461997)))

(assert (=> bs!1031686 (= (= (ListMap!4370 Nil!51662) lt!1799325) (= lambda!195238 lambda!195144))))

(assert (=> bs!1031679 (= (= (ListMap!4370 Nil!51662) lt!1799328) (= lambda!195238 lambda!195143))))

(declare-fun bs!1031687 () Bool)

(assert (= bs!1031687 (and b!4636877 b!4636876)))

(assert (=> bs!1031687 (= lambda!195238 lambda!195237)))

(declare-fun bs!1031688 () Bool)

(assert (= bs!1031688 (and b!4636877 d!1462195)))

(assert (=> bs!1031688 (not (= lambda!195238 lambda!195227))))

(declare-fun bs!1031689 () Bool)

(assert (= bs!1031689 (and b!4636877 b!4636871)))

(assert (=> bs!1031689 (= lambda!195238 lambda!195233)))

(assert (=> b!4636877 true))

(declare-fun lambda!195239 () Int)

(declare-fun lt!1799722 () ListMap!4369)

(assert (=> bs!1031678 (= (= lt!1799722 lt!1799698) (= lambda!195239 lambda!195236))))

(assert (=> bs!1031679 (= (= lt!1799722 lt!1799152) (= lambda!195239 lambda!195142))))

(assert (=> bs!1031680 (= (= lt!1799722 lt!1799679) (= lambda!195239 lambda!195230))))

(assert (=> bs!1031681 (= (= lt!1799722 lt!1799701) (= lambda!195239 lambda!195235))))

(assert (=> bs!1031682 (= (= lt!1799722 (ListMap!4370 Nil!51662)) (= lambda!195239 lambda!195228))))

(assert (=> b!4636877 (= (= lt!1799722 (ListMap!4370 Nil!51662)) (= lambda!195239 lambda!195238))))

(assert (=> bs!1031683 (= (= lt!1799722 lt!1799676) (= lambda!195239 lambda!195231))))

(assert (=> bs!1031684 (= (= lt!1799722 lt!1799152) (= lambda!195239 lambda!195141))))

(assert (=> bs!1031681 (= (= lt!1799722 (ListMap!4370 Nil!51662)) (= lambda!195239 lambda!195234))))

(assert (=> bs!1031680 (= (= lt!1799722 (ListMap!4370 Nil!51662)) (= lambda!195239 lambda!195229))))

(assert (=> bs!1031685 (not (= lambda!195239 lambda!195183))))

(assert (=> bs!1031686 (= (= lt!1799722 lt!1799325) (= lambda!195239 lambda!195144))))

(assert (=> bs!1031679 (= (= lt!1799722 lt!1799328) (= lambda!195239 lambda!195143))))

(assert (=> bs!1031687 (= (= lt!1799722 (ListMap!4370 Nil!51662)) (= lambda!195239 lambda!195237))))

(assert (=> bs!1031688 (not (= lambda!195239 lambda!195227))))

(assert (=> bs!1031689 (= (= lt!1799722 (ListMap!4370 Nil!51662)) (= lambda!195239 lambda!195233))))

(assert (=> b!4636877 true))

(declare-fun bs!1031690 () Bool)

(declare-fun d!1462213 () Bool)

(assert (= bs!1031690 (and d!1462213 d!1462211)))

(declare-fun lambda!195240 () Int)

(declare-fun lt!1799719 () ListMap!4369)

(assert (=> bs!1031690 (= (= lt!1799719 lt!1799698) (= lambda!195240 lambda!195236))))

(declare-fun bs!1031691 () Bool)

(assert (= bs!1031691 (and d!1462213 b!4636593)))

(assert (=> bs!1031691 (= (= lt!1799719 lt!1799152) (= lambda!195240 lambda!195142))))

(declare-fun bs!1031692 () Bool)

(assert (= bs!1031692 (and d!1462213 b!4636865)))

(assert (=> bs!1031692 (= (= lt!1799719 lt!1799679) (= lambda!195240 lambda!195230))))

(declare-fun bs!1031693 () Bool)

(assert (= bs!1031693 (and d!1462213 b!4636872)))

(assert (=> bs!1031693 (= (= lt!1799719 lt!1799701) (= lambda!195240 lambda!195235))))

(declare-fun bs!1031694 () Bool)

(assert (= bs!1031694 (and d!1462213 b!4636864)))

(assert (=> bs!1031694 (= (= lt!1799719 (ListMap!4370 Nil!51662)) (= lambda!195240 lambda!195228))))

(declare-fun bs!1031695 () Bool)

(assert (= bs!1031695 (and d!1462213 b!4636877)))

(assert (=> bs!1031695 (= (= lt!1799719 (ListMap!4370 Nil!51662)) (= lambda!195240 lambda!195238))))

(declare-fun bs!1031696 () Bool)

(assert (= bs!1031696 (and d!1462213 d!1462201)))

(assert (=> bs!1031696 (= (= lt!1799719 lt!1799676) (= lambda!195240 lambda!195231))))

(declare-fun bs!1031697 () Bool)

(assert (= bs!1031697 (and d!1462213 b!4636592)))

(assert (=> bs!1031697 (= (= lt!1799719 lt!1799152) (= lambda!195240 lambda!195141))))

(assert (=> bs!1031692 (= (= lt!1799719 (ListMap!4370 Nil!51662)) (= lambda!195240 lambda!195229))))

(declare-fun bs!1031698 () Bool)

(assert (= bs!1031698 (and d!1462213 d!1462063)))

(assert (=> bs!1031698 (not (= lambda!195240 lambda!195183))))

(declare-fun bs!1031699 () Bool)

(assert (= bs!1031699 (and d!1462213 d!1461997)))

(assert (=> bs!1031699 (= (= lt!1799719 lt!1799325) (= lambda!195240 lambda!195144))))

(assert (=> bs!1031691 (= (= lt!1799719 lt!1799328) (= lambda!195240 lambda!195143))))

(declare-fun bs!1031700 () Bool)

(assert (= bs!1031700 (and d!1462213 b!4636876)))

(assert (=> bs!1031700 (= (= lt!1799719 (ListMap!4370 Nil!51662)) (= lambda!195240 lambda!195237))))

(assert (=> bs!1031695 (= (= lt!1799719 lt!1799722) (= lambda!195240 lambda!195239))))

(assert (=> bs!1031693 (= (= lt!1799719 (ListMap!4370 Nil!51662)) (= lambda!195240 lambda!195234))))

(declare-fun bs!1031701 () Bool)

(assert (= bs!1031701 (and d!1462213 d!1462195)))

(assert (=> bs!1031701 (not (= lambda!195240 lambda!195227))))

(declare-fun bs!1031702 () Bool)

(assert (= bs!1031702 (and d!1462213 b!4636871)))

(assert (=> bs!1031702 (= (= lt!1799719 (ListMap!4370 Nil!51662)) (= lambda!195240 lambda!195233))))

(assert (=> d!1462213 true))

(declare-fun b!4636874 () Bool)

(declare-fun e!2892611 () Bool)

(declare-fun call!323646 () Bool)

(assert (=> b!4636874 (= e!2892611 call!323646)))

(declare-fun b!4636875 () Bool)

(declare-fun res!1946538 () Bool)

(declare-fun e!2892609 () Bool)

(assert (=> b!4636875 (=> (not res!1946538) (not e!2892609))))

(assert (=> b!4636875 (= res!1946538 (forall!10903 (toList!5065 (ListMap!4370 Nil!51662)) lambda!195240))))

(declare-fun bm!323640 () Bool)

(declare-fun c!793627 () Bool)

(assert (=> bm!323640 (= call!323646 (forall!10903 (toList!5065 (ListMap!4370 Nil!51662)) (ite c!793627 lambda!195237 lambda!195239)))))

(declare-fun e!2892610 () ListMap!4369)

(assert (=> b!4636876 (= e!2892610 (ListMap!4370 Nil!51662))))

(declare-fun lt!1799725 () Unit!114499)

(declare-fun call!323647 () Unit!114499)

(assert (=> b!4636876 (= lt!1799725 call!323647)))

(assert (=> b!4636876 call!323646))

(declare-fun lt!1799717 () Unit!114499)

(assert (=> b!4636876 (= lt!1799717 lt!1799725)))

(declare-fun call!323645 () Bool)

(assert (=> b!4636876 call!323645))

(declare-fun lt!1799718 () Unit!114499)

(declare-fun Unit!114583 () Unit!114499)

(assert (=> b!4636876 (= lt!1799718 Unit!114583)))

(assert (=> b!4636877 (= e!2892610 lt!1799722)))

(declare-fun lt!1799728 () ListMap!4369)

(assert (=> b!4636877 (= lt!1799728 (+!1916 (ListMap!4370 Nil!51662) (h!57752 (Cons!51662 lt!1799143 lt!1799150))))))

(assert (=> b!4636877 (= lt!1799722 (addToMapMapFromBucket!1011 (t!358858 (Cons!51662 lt!1799143 lt!1799150)) (+!1916 (ListMap!4370 Nil!51662) (h!57752 (Cons!51662 lt!1799143 lt!1799150)))))))

(declare-fun lt!1799713 () Unit!114499)

(assert (=> b!4636877 (= lt!1799713 call!323647)))

(assert (=> b!4636877 (forall!10903 (toList!5065 (ListMap!4370 Nil!51662)) lambda!195238)))

(declare-fun lt!1799708 () Unit!114499)

(assert (=> b!4636877 (= lt!1799708 lt!1799713)))

(assert (=> b!4636877 call!323645))

(declare-fun lt!1799715 () Unit!114499)

(declare-fun Unit!114585 () Unit!114499)

(assert (=> b!4636877 (= lt!1799715 Unit!114585)))

(assert (=> b!4636877 (forall!10903 (t!358858 (Cons!51662 lt!1799143 lt!1799150)) lambda!195239)))

(declare-fun lt!1799724 () Unit!114499)

(declare-fun Unit!114586 () Unit!114499)

(assert (=> b!4636877 (= lt!1799724 Unit!114586)))

(declare-fun lt!1799723 () Unit!114499)

(declare-fun Unit!114587 () Unit!114499)

(assert (=> b!4636877 (= lt!1799723 Unit!114587)))

(declare-fun lt!1799711 () Unit!114499)

(assert (=> b!4636877 (= lt!1799711 (forallContained!3135 (toList!5065 lt!1799728) lambda!195239 (h!57752 (Cons!51662 lt!1799143 lt!1799150))))))

(assert (=> b!4636877 (contains!14789 lt!1799728 (_1!29617 (h!57752 (Cons!51662 lt!1799143 lt!1799150))))))

(declare-fun lt!1799710 () Unit!114499)

(declare-fun Unit!114588 () Unit!114499)

(assert (=> b!4636877 (= lt!1799710 Unit!114588)))

(assert (=> b!4636877 (contains!14789 lt!1799722 (_1!29617 (h!57752 (Cons!51662 lt!1799143 lt!1799150))))))

(declare-fun lt!1799716 () Unit!114499)

(declare-fun Unit!114589 () Unit!114499)

(assert (=> b!4636877 (= lt!1799716 Unit!114589)))

(assert (=> b!4636877 (forall!10903 (Cons!51662 lt!1799143 lt!1799150) lambda!195239)))

(declare-fun lt!1799727 () Unit!114499)

(declare-fun Unit!114590 () Unit!114499)

(assert (=> b!4636877 (= lt!1799727 Unit!114590)))

(assert (=> b!4636877 (forall!10903 (toList!5065 lt!1799728) lambda!195239)))

(declare-fun lt!1799714 () Unit!114499)

(declare-fun Unit!114591 () Unit!114499)

(assert (=> b!4636877 (= lt!1799714 Unit!114591)))

(declare-fun lt!1799709 () Unit!114499)

(declare-fun Unit!114592 () Unit!114499)

(assert (=> b!4636877 (= lt!1799709 Unit!114592)))

(declare-fun lt!1799721 () Unit!114499)

(assert (=> b!4636877 (= lt!1799721 (addForallContainsKeyThenBeforeAdding!544 (ListMap!4370 Nil!51662) lt!1799722 (_1!29617 (h!57752 (Cons!51662 lt!1799143 lt!1799150))) (_2!29617 (h!57752 (Cons!51662 lt!1799143 lt!1799150)))))))

(assert (=> b!4636877 (forall!10903 (toList!5065 (ListMap!4370 Nil!51662)) lambda!195239)))

(declare-fun lt!1799720 () Unit!114499)

(assert (=> b!4636877 (= lt!1799720 lt!1799721)))

(assert (=> b!4636877 (forall!10903 (toList!5065 (ListMap!4370 Nil!51662)) lambda!195239)))

(declare-fun lt!1799712 () Unit!114499)

(declare-fun Unit!114593 () Unit!114499)

(assert (=> b!4636877 (= lt!1799712 Unit!114593)))

(declare-fun res!1946540 () Bool)

(assert (=> b!4636877 (= res!1946540 (forall!10903 (Cons!51662 lt!1799143 lt!1799150) lambda!195239))))

(assert (=> b!4636877 (=> (not res!1946540) (not e!2892611))))

(assert (=> b!4636877 e!2892611))

(declare-fun lt!1799726 () Unit!114499)

(declare-fun Unit!114594 () Unit!114499)

(assert (=> b!4636877 (= lt!1799726 Unit!114594)))

(declare-fun bm!323641 () Bool)

(assert (=> bm!323641 (= call!323647 (lemmaContainsAllItsOwnKeys!545 (ListMap!4370 Nil!51662)))))

(declare-fun b!4636878 () Bool)

(assert (=> b!4636878 (= e!2892609 (invariantList!1243 (toList!5065 lt!1799719)))))

(assert (=> d!1462213 e!2892609))

(declare-fun res!1946539 () Bool)

(assert (=> d!1462213 (=> (not res!1946539) (not e!2892609))))

(assert (=> d!1462213 (= res!1946539 (forall!10903 (Cons!51662 lt!1799143 lt!1799150) lambda!195240))))

(assert (=> d!1462213 (= lt!1799719 e!2892610)))

(assert (=> d!1462213 (= c!793627 ((_ is Nil!51662) (Cons!51662 lt!1799143 lt!1799150)))))

(assert (=> d!1462213 (noDuplicateKeys!1550 (Cons!51662 lt!1799143 lt!1799150))))

(assert (=> d!1462213 (= (addToMapMapFromBucket!1011 (Cons!51662 lt!1799143 lt!1799150) (ListMap!4370 Nil!51662)) lt!1799719)))

(declare-fun bm!323642 () Bool)

(assert (=> bm!323642 (= call!323645 (forall!10903 (ite c!793627 (toList!5065 (ListMap!4370 Nil!51662)) (toList!5065 lt!1799728)) (ite c!793627 lambda!195237 lambda!195239)))))

(assert (= (and d!1462213 c!793627) b!4636876))

(assert (= (and d!1462213 (not c!793627)) b!4636877))

(assert (= (and b!4636877 res!1946540) b!4636874))

(assert (= (or b!4636876 b!4636877) bm!323641))

(assert (= (or b!4636876 b!4636874) bm!323640))

(assert (= (or b!4636876 b!4636877) bm!323642))

(assert (= (and d!1462213 res!1946539) b!4636875))

(assert (= (and b!4636875 res!1946538) b!4636878))

(declare-fun m!5494817 () Bool)

(assert (=> bm!323640 m!5494817))

(declare-fun m!5494819 () Bool)

(assert (=> b!4636878 m!5494819))

(assert (=> bm!323641 m!5494735))

(declare-fun m!5494821 () Bool)

(assert (=> b!4636875 m!5494821))

(declare-fun m!5494823 () Bool)

(assert (=> d!1462213 m!5494823))

(declare-fun m!5494825 () Bool)

(assert (=> d!1462213 m!5494825))

(declare-fun m!5494827 () Bool)

(assert (=> b!4636877 m!5494827))

(declare-fun m!5494829 () Bool)

(assert (=> b!4636877 m!5494829))

(declare-fun m!5494831 () Bool)

(assert (=> b!4636877 m!5494831))

(declare-fun m!5494833 () Bool)

(assert (=> b!4636877 m!5494833))

(declare-fun m!5494835 () Bool)

(assert (=> b!4636877 m!5494835))

(declare-fun m!5494837 () Bool)

(assert (=> b!4636877 m!5494837))

(declare-fun m!5494839 () Bool)

(assert (=> b!4636877 m!5494839))

(declare-fun m!5494841 () Bool)

(assert (=> b!4636877 m!5494841))

(assert (=> b!4636877 m!5494839))

(declare-fun m!5494843 () Bool)

(assert (=> b!4636877 m!5494843))

(assert (=> b!4636877 m!5494829))

(assert (=> b!4636877 m!5494835))

(declare-fun m!5494845 () Bool)

(assert (=> b!4636877 m!5494845))

(declare-fun m!5494847 () Bool)

(assert (=> b!4636877 m!5494847))

(declare-fun m!5494849 () Bool)

(assert (=> bm!323642 m!5494849))

(assert (=> b!4636470 d!1462213))

(declare-fun d!1462215 () Bool)

(assert (=> d!1462215 (= (head!9684 newBucket!224) (h!57752 newBucket!224))))

(assert (=> b!4636470 d!1462215))

(declare-fun b!4636879 () Bool)

(declare-fun e!2892617 () Unit!114499)

(declare-fun lt!1799735 () Unit!114499)

(assert (=> b!4636879 (= e!2892617 lt!1799735)))

(declare-fun lt!1799733 () Unit!114499)

(assert (=> b!4636879 (= lt!1799733 (lemmaContainsKeyImpliesGetValueByKeyDefined!1432 (toList!5065 lt!1799157) key!4968))))

(assert (=> b!4636879 (isDefined!8979 (getValueByKey!1531 (toList!5065 lt!1799157) key!4968))))

(declare-fun lt!1799729 () Unit!114499)

(assert (=> b!4636879 (= lt!1799729 lt!1799733)))

(assert (=> b!4636879 (= lt!1799735 (lemmaInListThenGetKeysListContains!689 (toList!5065 lt!1799157) key!4968))))

(declare-fun call!323648 () Bool)

(assert (=> b!4636879 call!323648))

(declare-fun d!1462217 () Bool)

(declare-fun e!2892613 () Bool)

(assert (=> d!1462217 e!2892613))

(declare-fun res!1946542 () Bool)

(assert (=> d!1462217 (=> res!1946542 e!2892613)))

(declare-fun e!2892612 () Bool)

(assert (=> d!1462217 (= res!1946542 e!2892612)))

(declare-fun res!1946543 () Bool)

(assert (=> d!1462217 (=> (not res!1946543) (not e!2892612))))

(declare-fun lt!1799734 () Bool)

(assert (=> d!1462217 (= res!1946543 (not lt!1799734))))

(declare-fun lt!1799736 () Bool)

(assert (=> d!1462217 (= lt!1799734 lt!1799736)))

(declare-fun lt!1799731 () Unit!114499)

(assert (=> d!1462217 (= lt!1799731 e!2892617)))

(declare-fun c!793629 () Bool)

(assert (=> d!1462217 (= c!793629 lt!1799736)))

(assert (=> d!1462217 (= lt!1799736 (containsKey!2572 (toList!5065 lt!1799157) key!4968))))

(assert (=> d!1462217 (= (contains!14789 lt!1799157 key!4968) lt!1799734)))

(declare-fun b!4636880 () Bool)

(declare-fun e!2892614 () Bool)

(assert (=> b!4636880 (= e!2892614 (contains!14793 (keys!18238 lt!1799157) key!4968))))

(declare-fun b!4636881 () Bool)

(declare-fun e!2892616 () Unit!114499)

(assert (=> b!4636881 (= e!2892617 e!2892616)))

(declare-fun c!793630 () Bool)

(assert (=> b!4636881 (= c!793630 call!323648)))

(declare-fun b!4636882 () Bool)

(assert (=> b!4636882 false))

(declare-fun lt!1799732 () Unit!114499)

(declare-fun lt!1799730 () Unit!114499)

(assert (=> b!4636882 (= lt!1799732 lt!1799730)))

(assert (=> b!4636882 (containsKey!2572 (toList!5065 lt!1799157) key!4968)))

(assert (=> b!4636882 (= lt!1799730 (lemmaInGetKeysListThenContainsKey!693 (toList!5065 lt!1799157) key!4968))))

(declare-fun Unit!114595 () Unit!114499)

(assert (=> b!4636882 (= e!2892616 Unit!114595)))

(declare-fun b!4636883 () Bool)

(declare-fun e!2892615 () List!51789)

(assert (=> b!4636883 (= e!2892615 (keys!18238 lt!1799157))))

(declare-fun bm!323643 () Bool)

(assert (=> bm!323643 (= call!323648 (contains!14793 e!2892615 key!4968))))

(declare-fun c!793628 () Bool)

(assert (=> bm!323643 (= c!793628 c!793629)))

(declare-fun b!4636884 () Bool)

(assert (=> b!4636884 (= e!2892612 (not (contains!14793 (keys!18238 lt!1799157) key!4968)))))

(declare-fun b!4636885 () Bool)

(assert (=> b!4636885 (= e!2892615 (getKeysList!694 (toList!5065 lt!1799157)))))

(declare-fun b!4636886 () Bool)

(assert (=> b!4636886 (= e!2892613 e!2892614)))

(declare-fun res!1946541 () Bool)

(assert (=> b!4636886 (=> (not res!1946541) (not e!2892614))))

(assert (=> b!4636886 (= res!1946541 (isDefined!8979 (getValueByKey!1531 (toList!5065 lt!1799157) key!4968)))))

(declare-fun b!4636887 () Bool)

(declare-fun Unit!114596 () Unit!114499)

(assert (=> b!4636887 (= e!2892616 Unit!114596)))

(assert (= (and d!1462217 c!793629) b!4636879))

(assert (= (and d!1462217 (not c!793629)) b!4636881))

(assert (= (and b!4636881 c!793630) b!4636882))

(assert (= (and b!4636881 (not c!793630)) b!4636887))

(assert (= (or b!4636879 b!4636881) bm!323643))

(assert (= (and bm!323643 c!793628) b!4636885))

(assert (= (and bm!323643 (not c!793628)) b!4636883))

(assert (= (and d!1462217 res!1946543) b!4636884))

(assert (= (and d!1462217 (not res!1946542)) b!4636886))

(assert (= (and b!4636886 res!1946541) b!4636880))

(assert (=> b!4636880 m!5494379))

(assert (=> b!4636880 m!5494379))

(declare-fun m!5494851 () Bool)

(assert (=> b!4636880 m!5494851))

(declare-fun m!5494853 () Bool)

(assert (=> d!1462217 m!5494853))

(assert (=> b!4636882 m!5494853))

(declare-fun m!5494855 () Bool)

(assert (=> b!4636882 m!5494855))

(declare-fun m!5494857 () Bool)

(assert (=> b!4636885 m!5494857))

(assert (=> b!4636884 m!5494379))

(assert (=> b!4636884 m!5494379))

(assert (=> b!4636884 m!5494851))

(declare-fun m!5494859 () Bool)

(assert (=> b!4636886 m!5494859))

(assert (=> b!4636886 m!5494859))

(declare-fun m!5494861 () Bool)

(assert (=> b!4636886 m!5494861))

(declare-fun m!5494863 () Bool)

(assert (=> b!4636879 m!5494863))

(assert (=> b!4636879 m!5494859))

(assert (=> b!4636879 m!5494859))

(assert (=> b!4636879 m!5494861))

(declare-fun m!5494865 () Bool)

(assert (=> b!4636879 m!5494865))

(declare-fun m!5494867 () Bool)

(assert (=> bm!323643 m!5494867))

(assert (=> b!4636883 m!5494379))

(assert (=> b!4636470 d!1462217))

(declare-fun d!1462219 () Bool)

(declare-fun e!2892618 () Bool)

(assert (=> d!1462219 e!2892618))

(declare-fun res!1946545 () Bool)

(assert (=> d!1462219 (=> (not res!1946545) (not e!2892618))))

(declare-fun lt!1799738 () ListMap!4369)

(assert (=> d!1462219 (= res!1946545 (contains!14789 lt!1799738 (_1!29617 lt!1799144)))))

(declare-fun lt!1799739 () List!51786)

(assert (=> d!1462219 (= lt!1799738 (ListMap!4370 lt!1799739))))

(declare-fun lt!1799740 () Unit!114499)

(declare-fun lt!1799737 () Unit!114499)

(assert (=> d!1462219 (= lt!1799740 lt!1799737)))

(assert (=> d!1462219 (= (getValueByKey!1531 lt!1799739 (_1!29617 lt!1799144)) (Some!11714 (_2!29617 lt!1799144)))))

(assert (=> d!1462219 (= lt!1799737 (lemmaContainsTupThenGetReturnValue!888 lt!1799739 (_1!29617 lt!1799144) (_2!29617 lt!1799144)))))

(assert (=> d!1462219 (= lt!1799739 (insertNoDuplicatedKeys!396 (toList!5065 (addToMapMapFromBucket!1011 lt!1799154 (ListMap!4370 Nil!51662))) (_1!29617 lt!1799144) (_2!29617 lt!1799144)))))

(assert (=> d!1462219 (= (+!1916 (addToMapMapFromBucket!1011 lt!1799154 (ListMap!4370 Nil!51662)) lt!1799144) lt!1799738)))

(declare-fun b!4636888 () Bool)

(declare-fun res!1946544 () Bool)

(assert (=> b!4636888 (=> (not res!1946544) (not e!2892618))))

(assert (=> b!4636888 (= res!1946544 (= (getValueByKey!1531 (toList!5065 lt!1799738) (_1!29617 lt!1799144)) (Some!11714 (_2!29617 lt!1799144))))))

(declare-fun b!4636889 () Bool)

(assert (=> b!4636889 (= e!2892618 (contains!14794 (toList!5065 lt!1799738) lt!1799144))))

(assert (= (and d!1462219 res!1946545) b!4636888))

(assert (= (and b!4636888 res!1946544) b!4636889))

(declare-fun m!5494869 () Bool)

(assert (=> d!1462219 m!5494869))

(declare-fun m!5494871 () Bool)

(assert (=> d!1462219 m!5494871))

(declare-fun m!5494873 () Bool)

(assert (=> d!1462219 m!5494873))

(declare-fun m!5494875 () Bool)

(assert (=> d!1462219 m!5494875))

(declare-fun m!5494877 () Bool)

(assert (=> b!4636888 m!5494877))

(declare-fun m!5494879 () Bool)

(assert (=> b!4636889 m!5494879))

(assert (=> b!4636470 d!1462219))

(declare-fun d!1462221 () Bool)

(assert (=> d!1462221 (eq!865 (addToMapMapFromBucket!1011 (Cons!51662 lt!1799144 lt!1799154) (ListMap!4370 Nil!51662)) (+!1916 (addToMapMapFromBucket!1011 lt!1799154 (ListMap!4370 Nil!51662)) lt!1799144))))

(declare-fun lt!1799743 () Unit!114499)

(declare-fun choose!31718 (tuple2!52646 List!51786 ListMap!4369) Unit!114499)

(assert (=> d!1462221 (= lt!1799743 (choose!31718 lt!1799144 lt!1799154 (ListMap!4370 Nil!51662)))))

(assert (=> d!1462221 (noDuplicateKeys!1550 lt!1799154)))

(assert (=> d!1462221 (= (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!116 lt!1799144 lt!1799154 (ListMap!4370 Nil!51662)) lt!1799743)))

(declare-fun bs!1031703 () Bool)

(assert (= bs!1031703 d!1462221))

(assert (=> bs!1031703 m!5494159))

(assert (=> bs!1031703 m!5493777))

(assert (=> bs!1031703 m!5493779))

(assert (=> bs!1031703 m!5493785))

(assert (=> bs!1031703 m!5493787))

(declare-fun m!5494881 () Bool)

(assert (=> bs!1031703 m!5494881))

(assert (=> bs!1031703 m!5493777))

(assert (=> bs!1031703 m!5493785))

(assert (=> bs!1031703 m!5493779))

(assert (=> b!4636470 d!1462221))

(declare-fun d!1462223 () Bool)

(assert (=> d!1462223 (= (eq!865 lt!1799156 (+!1916 (extractMap!1606 (Cons!51663 (tuple2!52649 hash!414 lt!1799154) Nil!51663)) (h!57752 oldBucket!40))) (= (content!8917 (toList!5065 lt!1799156)) (content!8917 (toList!5065 (+!1916 (extractMap!1606 (Cons!51663 (tuple2!52649 hash!414 lt!1799154) Nil!51663)) (h!57752 oldBucket!40))))))))

(declare-fun bs!1031704 () Bool)

(assert (= bs!1031704 d!1462223))

(assert (=> bs!1031704 m!5493841))

(declare-fun m!5494883 () Bool)

(assert (=> bs!1031704 m!5494883))

(assert (=> b!4636470 d!1462223))

(declare-fun d!1462225 () Bool)

(declare-fun e!2892619 () Bool)

(assert (=> d!1462225 e!2892619))

(declare-fun res!1946547 () Bool)

(assert (=> d!1462225 (=> (not res!1946547) (not e!2892619))))

(declare-fun lt!1799745 () ListMap!4369)

(assert (=> d!1462225 (= res!1946547 (contains!14789 lt!1799745 (_1!29617 lt!1799143)))))

(declare-fun lt!1799746 () List!51786)

(assert (=> d!1462225 (= lt!1799745 (ListMap!4370 lt!1799746))))

(declare-fun lt!1799747 () Unit!114499)

(declare-fun lt!1799744 () Unit!114499)

(assert (=> d!1462225 (= lt!1799747 lt!1799744)))

(assert (=> d!1462225 (= (getValueByKey!1531 lt!1799746 (_1!29617 lt!1799143)) (Some!11714 (_2!29617 lt!1799143)))))

(assert (=> d!1462225 (= lt!1799744 (lemmaContainsTupThenGetReturnValue!888 lt!1799746 (_1!29617 lt!1799143) (_2!29617 lt!1799143)))))

(assert (=> d!1462225 (= lt!1799746 (insertNoDuplicatedKeys!396 (toList!5065 (addToMapMapFromBucket!1011 lt!1799150 (ListMap!4370 Nil!51662))) (_1!29617 lt!1799143) (_2!29617 lt!1799143)))))

(assert (=> d!1462225 (= (+!1916 (addToMapMapFromBucket!1011 lt!1799150 (ListMap!4370 Nil!51662)) lt!1799143) lt!1799745)))

(declare-fun b!4636890 () Bool)

(declare-fun res!1946546 () Bool)

(assert (=> b!4636890 (=> (not res!1946546) (not e!2892619))))

(assert (=> b!4636890 (= res!1946546 (= (getValueByKey!1531 (toList!5065 lt!1799745) (_1!29617 lt!1799143)) (Some!11714 (_2!29617 lt!1799143))))))

(declare-fun b!4636891 () Bool)

(assert (=> b!4636891 (= e!2892619 (contains!14794 (toList!5065 lt!1799745) lt!1799143))))

(assert (= (and d!1462225 res!1946547) b!4636890))

(assert (= (and b!4636890 res!1946546) b!4636891))

(declare-fun m!5494885 () Bool)

(assert (=> d!1462225 m!5494885))

(declare-fun m!5494887 () Bool)

(assert (=> d!1462225 m!5494887))

(declare-fun m!5494889 () Bool)

(assert (=> d!1462225 m!5494889))

(declare-fun m!5494891 () Bool)

(assert (=> d!1462225 m!5494891))

(declare-fun m!5494893 () Bool)

(assert (=> b!4636890 m!5494893))

(declare-fun m!5494895 () Bool)

(assert (=> b!4636891 m!5494895))

(assert (=> b!4636470 d!1462225))

(declare-fun bs!1031705 () Bool)

(declare-fun b!4636894 () Bool)

(assert (= bs!1031705 (and b!4636894 d!1462211)))

(declare-fun lambda!195241 () Int)

(assert (=> bs!1031705 (= (= (ListMap!4370 Nil!51662) lt!1799698) (= lambda!195241 lambda!195236))))

(declare-fun bs!1031706 () Bool)

(assert (= bs!1031706 (and b!4636894 b!4636593)))

(assert (=> bs!1031706 (= (= (ListMap!4370 Nil!51662) lt!1799152) (= lambda!195241 lambda!195142))))

(declare-fun bs!1031707 () Bool)

(assert (= bs!1031707 (and b!4636894 b!4636865)))

(assert (=> bs!1031707 (= (= (ListMap!4370 Nil!51662) lt!1799679) (= lambda!195241 lambda!195230))))

(declare-fun bs!1031708 () Bool)

(assert (= bs!1031708 (and b!4636894 b!4636872)))

(assert (=> bs!1031708 (= (= (ListMap!4370 Nil!51662) lt!1799701) (= lambda!195241 lambda!195235))))

(declare-fun bs!1031709 () Bool)

(assert (= bs!1031709 (and b!4636894 b!4636877)))

(assert (=> bs!1031709 (= lambda!195241 lambda!195238)))

(declare-fun bs!1031710 () Bool)

(assert (= bs!1031710 (and b!4636894 d!1462201)))

(assert (=> bs!1031710 (= (= (ListMap!4370 Nil!51662) lt!1799676) (= lambda!195241 lambda!195231))))

(declare-fun bs!1031711 () Bool)

(assert (= bs!1031711 (and b!4636894 b!4636592)))

(assert (=> bs!1031711 (= (= (ListMap!4370 Nil!51662) lt!1799152) (= lambda!195241 lambda!195141))))

(assert (=> bs!1031707 (= lambda!195241 lambda!195229)))

(declare-fun bs!1031712 () Bool)

(assert (= bs!1031712 (and b!4636894 d!1462063)))

(assert (=> bs!1031712 (not (= lambda!195241 lambda!195183))))

(declare-fun bs!1031713 () Bool)

(assert (= bs!1031713 (and b!4636894 d!1461997)))

(assert (=> bs!1031713 (= (= (ListMap!4370 Nil!51662) lt!1799325) (= lambda!195241 lambda!195144))))

(assert (=> bs!1031706 (= (= (ListMap!4370 Nil!51662) lt!1799328) (= lambda!195241 lambda!195143))))

(declare-fun bs!1031714 () Bool)

(assert (= bs!1031714 (and b!4636894 b!4636876)))

(assert (=> bs!1031714 (= lambda!195241 lambda!195237)))

(declare-fun bs!1031715 () Bool)

(assert (= bs!1031715 (and b!4636894 b!4636864)))

(assert (=> bs!1031715 (= lambda!195241 lambda!195228)))

(declare-fun bs!1031716 () Bool)

(assert (= bs!1031716 (and b!4636894 d!1462213)))

(assert (=> bs!1031716 (= (= (ListMap!4370 Nil!51662) lt!1799719) (= lambda!195241 lambda!195240))))

(assert (=> bs!1031709 (= (= (ListMap!4370 Nil!51662) lt!1799722) (= lambda!195241 lambda!195239))))

(assert (=> bs!1031708 (= lambda!195241 lambda!195234)))

(declare-fun bs!1031717 () Bool)

(assert (= bs!1031717 (and b!4636894 d!1462195)))

(assert (=> bs!1031717 (not (= lambda!195241 lambda!195227))))

(declare-fun bs!1031718 () Bool)

(assert (= bs!1031718 (and b!4636894 b!4636871)))

(assert (=> bs!1031718 (= lambda!195241 lambda!195233)))

(assert (=> b!4636894 true))

(declare-fun bs!1031719 () Bool)

(declare-fun b!4636895 () Bool)

(assert (= bs!1031719 (and b!4636895 d!1462211)))

(declare-fun lambda!195242 () Int)

(assert (=> bs!1031719 (= (= (ListMap!4370 Nil!51662) lt!1799698) (= lambda!195242 lambda!195236))))

(declare-fun bs!1031720 () Bool)

(assert (= bs!1031720 (and b!4636895 b!4636593)))

(assert (=> bs!1031720 (= (= (ListMap!4370 Nil!51662) lt!1799152) (= lambda!195242 lambda!195142))))

(declare-fun bs!1031721 () Bool)

(assert (= bs!1031721 (and b!4636895 b!4636865)))

(assert (=> bs!1031721 (= (= (ListMap!4370 Nil!51662) lt!1799679) (= lambda!195242 lambda!195230))))

(declare-fun bs!1031722 () Bool)

(assert (= bs!1031722 (and b!4636895 b!4636872)))

(assert (=> bs!1031722 (= (= (ListMap!4370 Nil!51662) lt!1799701) (= lambda!195242 lambda!195235))))

(declare-fun bs!1031723 () Bool)

(assert (= bs!1031723 (and b!4636895 b!4636877)))

(assert (=> bs!1031723 (= lambda!195242 lambda!195238)))

(declare-fun bs!1031724 () Bool)

(assert (= bs!1031724 (and b!4636895 d!1462201)))

(assert (=> bs!1031724 (= (= (ListMap!4370 Nil!51662) lt!1799676) (= lambda!195242 lambda!195231))))

(declare-fun bs!1031725 () Bool)

(assert (= bs!1031725 (and b!4636895 b!4636592)))

(assert (=> bs!1031725 (= (= (ListMap!4370 Nil!51662) lt!1799152) (= lambda!195242 lambda!195141))))

(assert (=> bs!1031721 (= lambda!195242 lambda!195229)))

(declare-fun bs!1031726 () Bool)

(assert (= bs!1031726 (and b!4636895 d!1462063)))

(assert (=> bs!1031726 (not (= lambda!195242 lambda!195183))))

(declare-fun bs!1031727 () Bool)

(assert (= bs!1031727 (and b!4636895 d!1461997)))

(assert (=> bs!1031727 (= (= (ListMap!4370 Nil!51662) lt!1799325) (= lambda!195242 lambda!195144))))

(assert (=> bs!1031720 (= (= (ListMap!4370 Nil!51662) lt!1799328) (= lambda!195242 lambda!195143))))

(declare-fun bs!1031728 () Bool)

(assert (= bs!1031728 (and b!4636895 b!4636876)))

(assert (=> bs!1031728 (= lambda!195242 lambda!195237)))

(declare-fun bs!1031729 () Bool)

(assert (= bs!1031729 (and b!4636895 b!4636864)))

(assert (=> bs!1031729 (= lambda!195242 lambda!195228)))

(declare-fun bs!1031730 () Bool)

(assert (= bs!1031730 (and b!4636895 d!1462213)))

(assert (=> bs!1031730 (= (= (ListMap!4370 Nil!51662) lt!1799719) (= lambda!195242 lambda!195240))))

(declare-fun bs!1031731 () Bool)

(assert (= bs!1031731 (and b!4636895 b!4636894)))

(assert (=> bs!1031731 (= lambda!195242 lambda!195241)))

(assert (=> bs!1031723 (= (= (ListMap!4370 Nil!51662) lt!1799722) (= lambda!195242 lambda!195239))))

(assert (=> bs!1031722 (= lambda!195242 lambda!195234)))

(declare-fun bs!1031732 () Bool)

(assert (= bs!1031732 (and b!4636895 d!1462195)))

(assert (=> bs!1031732 (not (= lambda!195242 lambda!195227))))

(declare-fun bs!1031733 () Bool)

(assert (= bs!1031733 (and b!4636895 b!4636871)))

(assert (=> bs!1031733 (= lambda!195242 lambda!195233)))

(assert (=> b!4636895 true))

(declare-fun lambda!195243 () Int)

(declare-fun lt!1799762 () ListMap!4369)

(assert (=> bs!1031719 (= (= lt!1799762 lt!1799698) (= lambda!195243 lambda!195236))))

(assert (=> bs!1031720 (= (= lt!1799762 lt!1799152) (= lambda!195243 lambda!195142))))

(assert (=> bs!1031721 (= (= lt!1799762 lt!1799679) (= lambda!195243 lambda!195230))))

(assert (=> bs!1031722 (= (= lt!1799762 lt!1799701) (= lambda!195243 lambda!195235))))

(assert (=> bs!1031723 (= (= lt!1799762 (ListMap!4370 Nil!51662)) (= lambda!195243 lambda!195238))))

(assert (=> b!4636895 (= (= lt!1799762 (ListMap!4370 Nil!51662)) (= lambda!195243 lambda!195242))))

(assert (=> bs!1031724 (= (= lt!1799762 lt!1799676) (= lambda!195243 lambda!195231))))

(assert (=> bs!1031725 (= (= lt!1799762 lt!1799152) (= lambda!195243 lambda!195141))))

(assert (=> bs!1031721 (= (= lt!1799762 (ListMap!4370 Nil!51662)) (= lambda!195243 lambda!195229))))

(assert (=> bs!1031726 (not (= lambda!195243 lambda!195183))))

(assert (=> bs!1031727 (= (= lt!1799762 lt!1799325) (= lambda!195243 lambda!195144))))

(assert (=> bs!1031720 (= (= lt!1799762 lt!1799328) (= lambda!195243 lambda!195143))))

(assert (=> bs!1031728 (= (= lt!1799762 (ListMap!4370 Nil!51662)) (= lambda!195243 lambda!195237))))

(assert (=> bs!1031729 (= (= lt!1799762 (ListMap!4370 Nil!51662)) (= lambda!195243 lambda!195228))))

(assert (=> bs!1031730 (= (= lt!1799762 lt!1799719) (= lambda!195243 lambda!195240))))

(assert (=> bs!1031731 (= (= lt!1799762 (ListMap!4370 Nil!51662)) (= lambda!195243 lambda!195241))))

(assert (=> bs!1031723 (= (= lt!1799762 lt!1799722) (= lambda!195243 lambda!195239))))

(assert (=> bs!1031722 (= (= lt!1799762 (ListMap!4370 Nil!51662)) (= lambda!195243 lambda!195234))))

(assert (=> bs!1031732 (not (= lambda!195243 lambda!195227))))

(assert (=> bs!1031733 (= (= lt!1799762 (ListMap!4370 Nil!51662)) (= lambda!195243 lambda!195233))))

(assert (=> b!4636895 true))

(declare-fun bs!1031734 () Bool)

(declare-fun d!1462227 () Bool)

(assert (= bs!1031734 (and d!1462227 d!1462211)))

(declare-fun lt!1799759 () ListMap!4369)

(declare-fun lambda!195244 () Int)

(assert (=> bs!1031734 (= (= lt!1799759 lt!1799698) (= lambda!195244 lambda!195236))))

(declare-fun bs!1031735 () Bool)

(assert (= bs!1031735 (and d!1462227 b!4636593)))

(assert (=> bs!1031735 (= (= lt!1799759 lt!1799152) (= lambda!195244 lambda!195142))))

(declare-fun bs!1031736 () Bool)

(assert (= bs!1031736 (and d!1462227 b!4636865)))

(assert (=> bs!1031736 (= (= lt!1799759 lt!1799679) (= lambda!195244 lambda!195230))))

(declare-fun bs!1031737 () Bool)

(assert (= bs!1031737 (and d!1462227 b!4636895)))

(assert (=> bs!1031737 (= (= lt!1799759 lt!1799762) (= lambda!195244 lambda!195243))))

(declare-fun bs!1031738 () Bool)

(assert (= bs!1031738 (and d!1462227 b!4636872)))

(assert (=> bs!1031738 (= (= lt!1799759 lt!1799701) (= lambda!195244 lambda!195235))))

(declare-fun bs!1031739 () Bool)

(assert (= bs!1031739 (and d!1462227 b!4636877)))

(assert (=> bs!1031739 (= (= lt!1799759 (ListMap!4370 Nil!51662)) (= lambda!195244 lambda!195238))))

(assert (=> bs!1031737 (= (= lt!1799759 (ListMap!4370 Nil!51662)) (= lambda!195244 lambda!195242))))

(declare-fun bs!1031740 () Bool)

(assert (= bs!1031740 (and d!1462227 d!1462201)))

(assert (=> bs!1031740 (= (= lt!1799759 lt!1799676) (= lambda!195244 lambda!195231))))

(declare-fun bs!1031741 () Bool)

(assert (= bs!1031741 (and d!1462227 b!4636592)))

(assert (=> bs!1031741 (= (= lt!1799759 lt!1799152) (= lambda!195244 lambda!195141))))

(assert (=> bs!1031736 (= (= lt!1799759 (ListMap!4370 Nil!51662)) (= lambda!195244 lambda!195229))))

(declare-fun bs!1031742 () Bool)

(assert (= bs!1031742 (and d!1462227 d!1462063)))

(assert (=> bs!1031742 (not (= lambda!195244 lambda!195183))))

(declare-fun bs!1031743 () Bool)

(assert (= bs!1031743 (and d!1462227 d!1461997)))

(assert (=> bs!1031743 (= (= lt!1799759 lt!1799325) (= lambda!195244 lambda!195144))))

(assert (=> bs!1031735 (= (= lt!1799759 lt!1799328) (= lambda!195244 lambda!195143))))

(declare-fun bs!1031744 () Bool)

(assert (= bs!1031744 (and d!1462227 b!4636876)))

(assert (=> bs!1031744 (= (= lt!1799759 (ListMap!4370 Nil!51662)) (= lambda!195244 lambda!195237))))

(declare-fun bs!1031745 () Bool)

(assert (= bs!1031745 (and d!1462227 b!4636864)))

(assert (=> bs!1031745 (= (= lt!1799759 (ListMap!4370 Nil!51662)) (= lambda!195244 lambda!195228))))

(declare-fun bs!1031746 () Bool)

(assert (= bs!1031746 (and d!1462227 d!1462213)))

(assert (=> bs!1031746 (= (= lt!1799759 lt!1799719) (= lambda!195244 lambda!195240))))

(declare-fun bs!1031747 () Bool)

(assert (= bs!1031747 (and d!1462227 b!4636894)))

(assert (=> bs!1031747 (= (= lt!1799759 (ListMap!4370 Nil!51662)) (= lambda!195244 lambda!195241))))

(assert (=> bs!1031739 (= (= lt!1799759 lt!1799722) (= lambda!195244 lambda!195239))))

(assert (=> bs!1031738 (= (= lt!1799759 (ListMap!4370 Nil!51662)) (= lambda!195244 lambda!195234))))

(declare-fun bs!1031748 () Bool)

(assert (= bs!1031748 (and d!1462227 d!1462195)))

(assert (=> bs!1031748 (not (= lambda!195244 lambda!195227))))

(declare-fun bs!1031749 () Bool)

(assert (= bs!1031749 (and d!1462227 b!4636871)))

(assert (=> bs!1031749 (= (= lt!1799759 (ListMap!4370 Nil!51662)) (= lambda!195244 lambda!195233))))

(assert (=> d!1462227 true))

(declare-fun b!4636892 () Bool)

(declare-fun e!2892622 () Bool)

(declare-fun call!323650 () Bool)

(assert (=> b!4636892 (= e!2892622 call!323650)))

(declare-fun b!4636893 () Bool)

(declare-fun res!1946548 () Bool)

(declare-fun e!2892620 () Bool)

(assert (=> b!4636893 (=> (not res!1946548) (not e!2892620))))

(assert (=> b!4636893 (= res!1946548 (forall!10903 (toList!5065 (ListMap!4370 Nil!51662)) lambda!195244))))

(declare-fun c!793631 () Bool)

(declare-fun bm!323644 () Bool)

(assert (=> bm!323644 (= call!323650 (forall!10903 (toList!5065 (ListMap!4370 Nil!51662)) (ite c!793631 lambda!195241 lambda!195243)))))

(declare-fun e!2892621 () ListMap!4369)

(assert (=> b!4636894 (= e!2892621 (ListMap!4370 Nil!51662))))

(declare-fun lt!1799765 () Unit!114499)

(declare-fun call!323651 () Unit!114499)

(assert (=> b!4636894 (= lt!1799765 call!323651)))

(assert (=> b!4636894 call!323650))

(declare-fun lt!1799757 () Unit!114499)

(assert (=> b!4636894 (= lt!1799757 lt!1799765)))

(declare-fun call!323649 () Bool)

(assert (=> b!4636894 call!323649))

(declare-fun lt!1799758 () Unit!114499)

(declare-fun Unit!114597 () Unit!114499)

(assert (=> b!4636894 (= lt!1799758 Unit!114597)))

(assert (=> b!4636895 (= e!2892621 lt!1799762)))

(declare-fun lt!1799768 () ListMap!4369)

(assert (=> b!4636895 (= lt!1799768 (+!1916 (ListMap!4370 Nil!51662) (h!57752 lt!1799154)))))

(assert (=> b!4636895 (= lt!1799762 (addToMapMapFromBucket!1011 (t!358858 lt!1799154) (+!1916 (ListMap!4370 Nil!51662) (h!57752 lt!1799154))))))

(declare-fun lt!1799753 () Unit!114499)

(assert (=> b!4636895 (= lt!1799753 call!323651)))

(assert (=> b!4636895 (forall!10903 (toList!5065 (ListMap!4370 Nil!51662)) lambda!195242)))

(declare-fun lt!1799748 () Unit!114499)

(assert (=> b!4636895 (= lt!1799748 lt!1799753)))

(assert (=> b!4636895 call!323649))

(declare-fun lt!1799755 () Unit!114499)

(declare-fun Unit!114598 () Unit!114499)

(assert (=> b!4636895 (= lt!1799755 Unit!114598)))

(assert (=> b!4636895 (forall!10903 (t!358858 lt!1799154) lambda!195243)))

(declare-fun lt!1799764 () Unit!114499)

(declare-fun Unit!114599 () Unit!114499)

(assert (=> b!4636895 (= lt!1799764 Unit!114599)))

(declare-fun lt!1799763 () Unit!114499)

(declare-fun Unit!114600 () Unit!114499)

(assert (=> b!4636895 (= lt!1799763 Unit!114600)))

(declare-fun lt!1799751 () Unit!114499)

(assert (=> b!4636895 (= lt!1799751 (forallContained!3135 (toList!5065 lt!1799768) lambda!195243 (h!57752 lt!1799154)))))

(assert (=> b!4636895 (contains!14789 lt!1799768 (_1!29617 (h!57752 lt!1799154)))))

(declare-fun lt!1799750 () Unit!114499)

(declare-fun Unit!114601 () Unit!114499)

(assert (=> b!4636895 (= lt!1799750 Unit!114601)))

(assert (=> b!4636895 (contains!14789 lt!1799762 (_1!29617 (h!57752 lt!1799154)))))

(declare-fun lt!1799756 () Unit!114499)

(declare-fun Unit!114602 () Unit!114499)

(assert (=> b!4636895 (= lt!1799756 Unit!114602)))

(assert (=> b!4636895 (forall!10903 lt!1799154 lambda!195243)))

(declare-fun lt!1799767 () Unit!114499)

(declare-fun Unit!114603 () Unit!114499)

(assert (=> b!4636895 (= lt!1799767 Unit!114603)))

(assert (=> b!4636895 (forall!10903 (toList!5065 lt!1799768) lambda!195243)))

(declare-fun lt!1799754 () Unit!114499)

(declare-fun Unit!114605 () Unit!114499)

(assert (=> b!4636895 (= lt!1799754 Unit!114605)))

(declare-fun lt!1799749 () Unit!114499)

(declare-fun Unit!114606 () Unit!114499)

(assert (=> b!4636895 (= lt!1799749 Unit!114606)))

(declare-fun lt!1799761 () Unit!114499)

(assert (=> b!4636895 (= lt!1799761 (addForallContainsKeyThenBeforeAdding!544 (ListMap!4370 Nil!51662) lt!1799762 (_1!29617 (h!57752 lt!1799154)) (_2!29617 (h!57752 lt!1799154))))))

(assert (=> b!4636895 (forall!10903 (toList!5065 (ListMap!4370 Nil!51662)) lambda!195243)))

(declare-fun lt!1799760 () Unit!114499)

(assert (=> b!4636895 (= lt!1799760 lt!1799761)))

(assert (=> b!4636895 (forall!10903 (toList!5065 (ListMap!4370 Nil!51662)) lambda!195243)))

(declare-fun lt!1799752 () Unit!114499)

(declare-fun Unit!114607 () Unit!114499)

(assert (=> b!4636895 (= lt!1799752 Unit!114607)))

(declare-fun res!1946550 () Bool)

(assert (=> b!4636895 (= res!1946550 (forall!10903 lt!1799154 lambda!195243))))

(assert (=> b!4636895 (=> (not res!1946550) (not e!2892622))))

(assert (=> b!4636895 e!2892622))

(declare-fun lt!1799766 () Unit!114499)

(declare-fun Unit!114608 () Unit!114499)

(assert (=> b!4636895 (= lt!1799766 Unit!114608)))

(declare-fun bm!323645 () Bool)

(assert (=> bm!323645 (= call!323651 (lemmaContainsAllItsOwnKeys!545 (ListMap!4370 Nil!51662)))))

(declare-fun b!4636896 () Bool)

(assert (=> b!4636896 (= e!2892620 (invariantList!1243 (toList!5065 lt!1799759)))))

(assert (=> d!1462227 e!2892620))

(declare-fun res!1946549 () Bool)

(assert (=> d!1462227 (=> (not res!1946549) (not e!2892620))))

(assert (=> d!1462227 (= res!1946549 (forall!10903 lt!1799154 lambda!195244))))

(assert (=> d!1462227 (= lt!1799759 e!2892621)))

(assert (=> d!1462227 (= c!793631 ((_ is Nil!51662) lt!1799154))))

(assert (=> d!1462227 (noDuplicateKeys!1550 lt!1799154)))

(assert (=> d!1462227 (= (addToMapMapFromBucket!1011 lt!1799154 (ListMap!4370 Nil!51662)) lt!1799759)))

(declare-fun bm!323646 () Bool)

(assert (=> bm!323646 (= call!323649 (forall!10903 (ite c!793631 (toList!5065 (ListMap!4370 Nil!51662)) (toList!5065 lt!1799768)) (ite c!793631 lambda!195241 lambda!195243)))))

(assert (= (and d!1462227 c!793631) b!4636894))

(assert (= (and d!1462227 (not c!793631)) b!4636895))

(assert (= (and b!4636895 res!1946550) b!4636892))

(assert (= (or b!4636894 b!4636895) bm!323645))

(assert (= (or b!4636894 b!4636892) bm!323644))

(assert (= (or b!4636894 b!4636895) bm!323646))

(assert (= (and d!1462227 res!1946549) b!4636893))

(assert (= (and b!4636893 res!1946548) b!4636896))

(declare-fun m!5494897 () Bool)

(assert (=> bm!323644 m!5494897))

(declare-fun m!5494899 () Bool)

(assert (=> b!4636896 m!5494899))

(assert (=> bm!323645 m!5494735))

(declare-fun m!5494901 () Bool)

(assert (=> b!4636893 m!5494901))

(declare-fun m!5494903 () Bool)

(assert (=> d!1462227 m!5494903))

(assert (=> d!1462227 m!5494159))

(declare-fun m!5494905 () Bool)

(assert (=> b!4636895 m!5494905))

(declare-fun m!5494907 () Bool)

(assert (=> b!4636895 m!5494907))

(declare-fun m!5494909 () Bool)

(assert (=> b!4636895 m!5494909))

(declare-fun m!5494911 () Bool)

(assert (=> b!4636895 m!5494911))

(declare-fun m!5494913 () Bool)

(assert (=> b!4636895 m!5494913))

(declare-fun m!5494915 () Bool)

(assert (=> b!4636895 m!5494915))

(declare-fun m!5494917 () Bool)

(assert (=> b!4636895 m!5494917))

(declare-fun m!5494919 () Bool)

(assert (=> b!4636895 m!5494919))

(assert (=> b!4636895 m!5494917))

(declare-fun m!5494921 () Bool)

(assert (=> b!4636895 m!5494921))

(assert (=> b!4636895 m!5494907))

(assert (=> b!4636895 m!5494913))

(declare-fun m!5494923 () Bool)

(assert (=> b!4636895 m!5494923))

(declare-fun m!5494925 () Bool)

(assert (=> b!4636895 m!5494925))

(declare-fun m!5494927 () Bool)

(assert (=> bm!323646 m!5494927))

(assert (=> b!4636470 d!1462227))

(declare-fun d!1462229 () Bool)

(declare-fun e!2892623 () Bool)

(assert (=> d!1462229 e!2892623))

(declare-fun res!1946552 () Bool)

(assert (=> d!1462229 (=> (not res!1946552) (not e!2892623))))

(declare-fun lt!1799770 () ListMap!4369)

(assert (=> d!1462229 (= res!1946552 (contains!14789 lt!1799770 (_1!29617 (h!57752 oldBucket!40))))))

(declare-fun lt!1799771 () List!51786)

(assert (=> d!1462229 (= lt!1799770 (ListMap!4370 lt!1799771))))

(declare-fun lt!1799772 () Unit!114499)

(declare-fun lt!1799769 () Unit!114499)

(assert (=> d!1462229 (= lt!1799772 lt!1799769)))

(assert (=> d!1462229 (= (getValueByKey!1531 lt!1799771 (_1!29617 (h!57752 oldBucket!40))) (Some!11714 (_2!29617 (h!57752 oldBucket!40))))))

(assert (=> d!1462229 (= lt!1799769 (lemmaContainsTupThenGetReturnValue!888 lt!1799771 (_1!29617 (h!57752 oldBucket!40)) (_2!29617 (h!57752 oldBucket!40))))))

(assert (=> d!1462229 (= lt!1799771 (insertNoDuplicatedKeys!396 (toList!5065 (extractMap!1606 (Cons!51663 (tuple2!52649 hash!414 lt!1799154) Nil!51663))) (_1!29617 (h!57752 oldBucket!40)) (_2!29617 (h!57752 oldBucket!40))))))

(assert (=> d!1462229 (= (+!1916 (extractMap!1606 (Cons!51663 (tuple2!52649 hash!414 lt!1799154) Nil!51663)) (h!57752 oldBucket!40)) lt!1799770)))

(declare-fun b!4636897 () Bool)

(declare-fun res!1946551 () Bool)

(assert (=> b!4636897 (=> (not res!1946551) (not e!2892623))))

(assert (=> b!4636897 (= res!1946551 (= (getValueByKey!1531 (toList!5065 lt!1799770) (_1!29617 (h!57752 oldBucket!40))) (Some!11714 (_2!29617 (h!57752 oldBucket!40)))))))

(declare-fun b!4636898 () Bool)

(assert (=> b!4636898 (= e!2892623 (contains!14794 (toList!5065 lt!1799770) (h!57752 oldBucket!40)))))

(assert (= (and d!1462229 res!1946552) b!4636897))

(assert (= (and b!4636897 res!1946551) b!4636898))

(declare-fun m!5494929 () Bool)

(assert (=> d!1462229 m!5494929))

(declare-fun m!5494931 () Bool)

(assert (=> d!1462229 m!5494931))

(declare-fun m!5494933 () Bool)

(assert (=> d!1462229 m!5494933))

(declare-fun m!5494935 () Bool)

(assert (=> d!1462229 m!5494935))

(declare-fun m!5494937 () Bool)

(assert (=> b!4636897 m!5494937))

(declare-fun m!5494939 () Bool)

(assert (=> b!4636898 m!5494939))

(assert (=> b!4636470 d!1462229))

(declare-fun bs!1031750 () Bool)

(declare-fun d!1462231 () Bool)

(assert (= bs!1031750 (and d!1462231 d!1462051)))

(declare-fun lambda!195245 () Int)

(assert (=> bs!1031750 (= lambda!195245 lambda!195147)))

(declare-fun bs!1031751 () Bool)

(assert (= bs!1031751 (and d!1462231 d!1462083)))

(assert (=> bs!1031751 (= lambda!195245 lambda!195185)))

(declare-fun bs!1031752 () Bool)

(assert (= bs!1031752 (and d!1462231 d!1462081)))

(assert (=> bs!1031752 (= lambda!195245 lambda!195184)))

(declare-fun bs!1031753 () Bool)

(assert (= bs!1031753 (and d!1462231 d!1462135)))

(assert (=> bs!1031753 (= lambda!195245 lambda!195226)))

(declare-fun bs!1031754 () Bool)

(assert (= bs!1031754 (and d!1462231 b!4636473)))

(assert (=> bs!1031754 (= lambda!195245 lambda!195102)))

(declare-fun bs!1031755 () Bool)

(assert (= bs!1031755 (and d!1462231 d!1462203)))

(assert (=> bs!1031755 (= lambda!195245 lambda!195232)))

(declare-fun bs!1031756 () Bool)

(assert (= bs!1031756 (and d!1462231 d!1462055)))

(assert (=> bs!1031756 (= lambda!195245 lambda!195176)))

(declare-fun bs!1031757 () Bool)

(assert (= bs!1031757 (and d!1462231 d!1462127)))

(assert (=> bs!1031757 (= lambda!195245 lambda!195206)))

(declare-fun lt!1799773 () ListMap!4369)

(assert (=> d!1462231 (invariantList!1243 (toList!5065 lt!1799773))))

(declare-fun e!2892624 () ListMap!4369)

(assert (=> d!1462231 (= lt!1799773 e!2892624)))

(declare-fun c!793632 () Bool)

(assert (=> d!1462231 (= c!793632 ((_ is Cons!51663) (Cons!51663 (tuple2!52649 hash!414 lt!1799154) Nil!51663)))))

(assert (=> d!1462231 (forall!10902 (Cons!51663 (tuple2!52649 hash!414 lt!1799154) Nil!51663) lambda!195245)))

(assert (=> d!1462231 (= (extractMap!1606 (Cons!51663 (tuple2!52649 hash!414 lt!1799154) Nil!51663)) lt!1799773)))

(declare-fun b!4636899 () Bool)

(assert (=> b!4636899 (= e!2892624 (addToMapMapFromBucket!1011 (_2!29618 (h!57753 (Cons!51663 (tuple2!52649 hash!414 lt!1799154) Nil!51663))) (extractMap!1606 (t!358859 (Cons!51663 (tuple2!52649 hash!414 lt!1799154) Nil!51663)))))))

(declare-fun b!4636900 () Bool)

(assert (=> b!4636900 (= e!2892624 (ListMap!4370 Nil!51662))))

(assert (= (and d!1462231 c!793632) b!4636899))

(assert (= (and d!1462231 (not c!793632)) b!4636900))

(declare-fun m!5494941 () Bool)

(assert (=> d!1462231 m!5494941))

(declare-fun m!5494943 () Bool)

(assert (=> d!1462231 m!5494943))

(declare-fun m!5494945 () Bool)

(assert (=> b!4636899 m!5494945))

(assert (=> b!4636899 m!5494945))

(declare-fun m!5494947 () Bool)

(assert (=> b!4636899 m!5494947))

(assert (=> b!4636470 d!1462231))

(declare-fun bs!1031758 () Bool)

(declare-fun d!1462233 () Bool)

(assert (= bs!1031758 (and d!1462233 d!1462051)))

(declare-fun lambda!195248 () Int)

(assert (=> bs!1031758 (= lambda!195248 lambda!195147)))

(declare-fun bs!1031759 () Bool)

(assert (= bs!1031759 (and d!1462233 d!1462083)))

(assert (=> bs!1031759 (= lambda!195248 lambda!195185)))

(declare-fun bs!1031760 () Bool)

(assert (= bs!1031760 (and d!1462233 d!1462081)))

(assert (=> bs!1031760 (= lambda!195248 lambda!195184)))

(declare-fun bs!1031761 () Bool)

(assert (= bs!1031761 (and d!1462233 d!1462231)))

(assert (=> bs!1031761 (= lambda!195248 lambda!195245)))

(declare-fun bs!1031762 () Bool)

(assert (= bs!1031762 (and d!1462233 d!1462135)))

(assert (=> bs!1031762 (= lambda!195248 lambda!195226)))

(declare-fun bs!1031763 () Bool)

(assert (= bs!1031763 (and d!1462233 b!4636473)))

(assert (=> bs!1031763 (= lambda!195248 lambda!195102)))

(declare-fun bs!1031764 () Bool)

(assert (= bs!1031764 (and d!1462233 d!1462203)))

(assert (=> bs!1031764 (= lambda!195248 lambda!195232)))

(declare-fun bs!1031765 () Bool)

(assert (= bs!1031765 (and d!1462233 d!1462055)))

(assert (=> bs!1031765 (= lambda!195248 lambda!195176)))

(declare-fun bs!1031766 () Bool)

(assert (= bs!1031766 (and d!1462233 d!1462127)))

(assert (=> bs!1031766 (= lambda!195248 lambda!195206)))

(assert (=> d!1462233 (contains!14789 (extractMap!1606 (toList!5066 (ListLongMap!3656 lt!1799153))) key!4968)))

(declare-fun lt!1799776 () Unit!114499)

(declare-fun choose!31719 (ListLongMap!3655 K!13025 Hashable!5947) Unit!114499)

(assert (=> d!1462233 (= lt!1799776 (choose!31719 (ListLongMap!3656 lt!1799153) key!4968 hashF!1389))))

(assert (=> d!1462233 (forall!10902 (toList!5066 (ListLongMap!3656 lt!1799153)) lambda!195248)))

(assert (=> d!1462233 (= (lemmaListContainsThenExtractedMapContains!368 (ListLongMap!3656 lt!1799153) key!4968 hashF!1389) lt!1799776)))

(declare-fun bs!1031767 () Bool)

(assert (= bs!1031767 d!1462233))

(declare-fun m!5494949 () Bool)

(assert (=> bs!1031767 m!5494949))

(assert (=> bs!1031767 m!5494949))

(declare-fun m!5494951 () Bool)

(assert (=> bs!1031767 m!5494951))

(declare-fun m!5494953 () Bool)

(assert (=> bs!1031767 m!5494953))

(declare-fun m!5494955 () Bool)

(assert (=> bs!1031767 m!5494955))

(assert (=> b!4636470 d!1462233))

(declare-fun d!1462235 () Bool)

(assert (=> d!1462235 (eq!865 (addToMapMapFromBucket!1011 (Cons!51662 lt!1799143 lt!1799150) (ListMap!4370 Nil!51662)) (+!1916 (addToMapMapFromBucket!1011 lt!1799150 (ListMap!4370 Nil!51662)) lt!1799143))))

(declare-fun lt!1799777 () Unit!114499)

(assert (=> d!1462235 (= lt!1799777 (choose!31718 lt!1799143 lt!1799150 (ListMap!4370 Nil!51662)))))

(assert (=> d!1462235 (noDuplicateKeys!1550 lt!1799150)))

(assert (=> d!1462235 (= (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!116 lt!1799143 lt!1799150 (ListMap!4370 Nil!51662)) lt!1799777)))

(declare-fun bs!1031768 () Bool)

(assert (= bs!1031768 d!1462235))

(assert (=> bs!1031768 m!5494741))

(assert (=> bs!1031768 m!5493797))

(assert (=> bs!1031768 m!5493789))

(assert (=> bs!1031768 m!5493803))

(assert (=> bs!1031768 m!5493807))

(declare-fun m!5494957 () Bool)

(assert (=> bs!1031768 m!5494957))

(assert (=> bs!1031768 m!5493797))

(assert (=> bs!1031768 m!5493803))

(assert (=> bs!1031768 m!5493789))

(assert (=> b!4636470 d!1462235))

(declare-fun d!1462237 () Bool)

(declare-fun res!1946557 () Bool)

(declare-fun e!2892629 () Bool)

(assert (=> d!1462237 (=> res!1946557 e!2892629)))

(assert (=> d!1462237 (= res!1946557 (not ((_ is Cons!51662) newBucket!224)))))

(assert (=> d!1462237 (= (noDuplicateKeys!1550 newBucket!224) e!2892629)))

(declare-fun b!4636905 () Bool)

(declare-fun e!2892630 () Bool)

(assert (=> b!4636905 (= e!2892629 e!2892630)))

(declare-fun res!1946558 () Bool)

(assert (=> b!4636905 (=> (not res!1946558) (not e!2892630))))

(assert (=> b!4636905 (= res!1946558 (not (containsKey!2570 (t!358858 newBucket!224) (_1!29617 (h!57752 newBucket!224)))))))

(declare-fun b!4636906 () Bool)

(assert (=> b!4636906 (= e!2892630 (noDuplicateKeys!1550 (t!358858 newBucket!224)))))

(assert (= (and d!1462237 (not res!1946557)) b!4636905))

(assert (= (and b!4636905 res!1946558) b!4636906))

(declare-fun m!5494959 () Bool)

(assert (=> b!4636905 m!5494959))

(declare-fun m!5494961 () Bool)

(assert (=> b!4636906 m!5494961))

(assert (=> b!4636460 d!1462237))

(declare-fun d!1462239 () Bool)

(assert (=> d!1462239 (= (eq!865 lt!1799162 lt!1799151) (= (content!8917 (toList!5065 lt!1799162)) (content!8917 (toList!5065 lt!1799151))))))

(declare-fun bs!1031769 () Bool)

(assert (= bs!1031769 d!1462239))

(assert (=> bs!1031769 m!5493895))

(assert (=> bs!1031769 m!5493847))

(assert (=> b!4636471 d!1462239))

(declare-fun d!1462241 () Bool)

(assert (=> d!1462241 (= (eq!865 lt!1799161 (+!1916 lt!1799135 (h!57752 oldBucket!40))) (= (content!8917 (toList!5065 lt!1799161)) (content!8917 (toList!5065 (+!1916 lt!1799135 (h!57752 oldBucket!40))))))))

(declare-fun bs!1031770 () Bool)

(assert (= bs!1031770 d!1462241))

(declare-fun m!5494963 () Bool)

(assert (=> bs!1031770 m!5494963))

(assert (=> bs!1031770 m!5494707))

(assert (=> b!4636471 d!1462241))

(assert (=> b!4636471 d!1462193))

(declare-fun d!1462243 () Bool)

(assert (=> d!1462243 (eq!865 (+!1916 lt!1799149 (tuple2!52647 (_1!29617 (h!57752 oldBucket!40)) (_2!29617 (h!57752 oldBucket!40)))) (+!1916 lt!1799135 (tuple2!52647 (_1!29617 (h!57752 oldBucket!40)) (_2!29617 (h!57752 oldBucket!40)))))))

(declare-fun lt!1799780 () Unit!114499)

(declare-fun choose!31720 (ListMap!4369 ListMap!4369 K!13025 V!13271) Unit!114499)

(assert (=> d!1462243 (= lt!1799780 (choose!31720 lt!1799149 lt!1799135 (_1!29617 (h!57752 oldBucket!40)) (_2!29617 (h!57752 oldBucket!40))))))

(assert (=> d!1462243 (eq!865 lt!1799149 lt!1799135)))

(assert (=> d!1462243 (= (lemmaAddToEqMapsPreservesEq!62 lt!1799149 lt!1799135 (_1!29617 (h!57752 oldBucket!40)) (_2!29617 (h!57752 oldBucket!40))) lt!1799780)))

(declare-fun bs!1031771 () Bool)

(assert (= bs!1031771 d!1462243))

(declare-fun m!5494965 () Bool)

(assert (=> bs!1031771 m!5494965))

(declare-fun m!5494967 () Bool)

(assert (=> bs!1031771 m!5494967))

(declare-fun m!5494969 () Bool)

(assert (=> bs!1031771 m!5494969))

(assert (=> bs!1031771 m!5494965))

(declare-fun m!5494971 () Bool)

(assert (=> bs!1031771 m!5494971))

(assert (=> bs!1031771 m!5494969))

(declare-fun m!5494973 () Bool)

(assert (=> bs!1031771 m!5494973))

(assert (=> b!4636471 d!1462243))

(declare-fun b!4636910 () Bool)

(declare-fun e!2892631 () List!51786)

(assert (=> b!4636910 (= e!2892631 Nil!51662)))

(declare-fun b!4636908 () Bool)

(declare-fun e!2892632 () List!51786)

(assert (=> b!4636908 (= e!2892632 e!2892631)))

(declare-fun c!793633 () Bool)

(assert (=> b!4636908 (= c!793633 ((_ is Cons!51662) oldBucket!40))))

(declare-fun b!4636907 () Bool)

(assert (=> b!4636907 (= e!2892632 (t!358858 oldBucket!40))))

(declare-fun b!4636909 () Bool)

(assert (=> b!4636909 (= e!2892631 (Cons!51662 (h!57752 oldBucket!40) (removePairForKey!1173 (t!358858 oldBucket!40) key!4968)))))

(declare-fun d!1462245 () Bool)

(declare-fun lt!1799781 () List!51786)

(assert (=> d!1462245 (not (containsKey!2570 lt!1799781 key!4968))))

(assert (=> d!1462245 (= lt!1799781 e!2892632)))

(declare-fun c!793634 () Bool)

(assert (=> d!1462245 (= c!793634 (and ((_ is Cons!51662) oldBucket!40) (= (_1!29617 (h!57752 oldBucket!40)) key!4968)))))

(assert (=> d!1462245 (noDuplicateKeys!1550 oldBucket!40)))

(assert (=> d!1462245 (= (removePairForKey!1173 oldBucket!40 key!4968) lt!1799781)))

(assert (= (and d!1462245 c!793634) b!4636907))

(assert (= (and d!1462245 (not c!793634)) b!4636908))

(assert (= (and b!4636908 c!793633) b!4636909))

(assert (= (and b!4636908 (not c!793633)) b!4636910))

(assert (=> b!4636909 m!5493725))

(declare-fun m!5494975 () Bool)

(assert (=> d!1462245 m!5494975))

(assert (=> d!1462245 m!5493827))

(assert (=> b!4636461 d!1462245))

(declare-fun d!1462247 () Bool)

(declare-fun res!1946559 () Bool)

(declare-fun e!2892633 () Bool)

(assert (=> d!1462247 (=> res!1946559 e!2892633)))

(assert (=> d!1462247 (= res!1946559 (not ((_ is Cons!51662) oldBucket!40)))))

(assert (=> d!1462247 (= (noDuplicateKeys!1550 oldBucket!40) e!2892633)))

(declare-fun b!4636911 () Bool)

(declare-fun e!2892634 () Bool)

(assert (=> b!4636911 (= e!2892633 e!2892634)))

(declare-fun res!1946560 () Bool)

(assert (=> b!4636911 (=> (not res!1946560) (not e!2892634))))

(assert (=> b!4636911 (= res!1946560 (not (containsKey!2570 (t!358858 oldBucket!40) (_1!29617 (h!57752 oldBucket!40)))))))

(declare-fun b!4636912 () Bool)

(assert (=> b!4636912 (= e!2892634 (noDuplicateKeys!1550 (t!358858 oldBucket!40)))))

(assert (= (and d!1462247 (not res!1946559)) b!4636911))

(assert (= (and b!4636911 res!1946560) b!4636912))

(declare-fun m!5494977 () Bool)

(assert (=> b!4636911 m!5494977))

(assert (=> b!4636912 m!5494339))

(assert (=> start!465936 d!1462247))

(declare-fun e!2892637 () Bool)

(declare-fun b!4636917 () Bool)

(declare-fun tp!1342538 () Bool)

(assert (=> b!4636917 (= e!2892637 (and tp_is_empty!29493 tp_is_empty!29495 tp!1342538))))

(assert (=> b!4636469 (= tp!1342530 e!2892637)))

(assert (= (and b!4636469 ((_ is Cons!51662) (t!358858 oldBucket!40))) b!4636917))

(declare-fun tp!1342539 () Bool)

(declare-fun b!4636918 () Bool)

(declare-fun e!2892638 () Bool)

(assert (=> b!4636918 (= e!2892638 (and tp_is_empty!29493 tp_is_empty!29495 tp!1342539))))

(assert (=> b!4636477 (= tp!1342531 e!2892638)))

(assert (= (and b!4636477 ((_ is Cons!51662) (t!358858 newBucket!224))) b!4636918))

(declare-fun b_lambda!171033 () Bool)

(assert (= b_lambda!171031 (or b!4636473 b_lambda!171033)))

(declare-fun bs!1031772 () Bool)

(declare-fun d!1462249 () Bool)

(assert (= bs!1031772 (and d!1462249 b!4636473)))

(assert (=> bs!1031772 (= (dynLambda!21538 lambda!195102 (h!57753 lt!1799140)) (noDuplicateKeys!1550 (_2!29618 (h!57753 lt!1799140))))))

(declare-fun m!5494979 () Bool)

(assert (=> bs!1031772 m!5494979))

(assert (=> b!4636860 d!1462249))

(declare-fun b_lambda!171035 () Bool)

(assert (= b_lambda!171023 (or b!4636473 b_lambda!171035)))

(declare-fun bs!1031773 () Bool)

(declare-fun d!1462251 () Bool)

(assert (= bs!1031773 (and d!1462251 b!4636473)))

(assert (=> bs!1031773 (= (dynLambda!21538 lambda!195102 lt!1799141) (noDuplicateKeys!1550 (_2!29618 lt!1799141)))))

(declare-fun m!5494981 () Bool)

(assert (=> bs!1031773 m!5494981))

(assert (=> d!1462113 d!1462251))

(check-sat (not bm!323646) (not b!4636896) (not d!1462223) (not d!1462113) (not bm!323634) (not d!1462081) (not b!4636499) (not b!4636726) (not b!4636672) (not d!1462211) (not b!4636918) (not b!4636886) (not d!1462097) (not b!4636863) (not d!1462053) (not b!4636850) (not b!4636885) (not bm!323639) (not d!1462103) (not d!1462067) (not b!4636844) (not bm!323645) (not bm!323603) (not b!4636638) (not d!1462129) (not b!4636891) (not d!1462217) (not b!4636640) (not d!1461981) (not b!4636697) (not bm!323636) (not b!4636591) (not d!1462125) (not bm!323604) (not d!1462083) (not d!1462135) (not d!1462239) (not b!4636875) (not b!4636659) (not b!4636889) (not bm!323641) (not bm!323644) (not d!1462055) tp_is_empty!29495 (not d!1462243) (not b!4636854) (not b!4636873) (not b!4636739) (not d!1462219) (not b!4636872) (not d!1462201) (not b!4636878) (not b!4636745) (not b!4636843) (not b!4636733) (not b!4636634) (not d!1462065) (not d!1462107) (not d!1462063) (not bm!323640) (not d!1462195) (not b!4636632) (not bm!323635) (not bm!323643) (not b!4636635) (not bs!1031773) (not d!1461993) (not d!1462229) (not d!1462105) (not d!1462127) (not b_lambda!171035) (not b!4636845) (not b!4636732) (not d!1462111) (not bm!323642) (not d!1462241) (not d!1462207) (not b!4636678) (not b!4636636) (not d!1462221) (not b!4636866) (not b!4636867) (not b!4636883) (not b!4636696) (not d!1462235) (not b!4636673) (not d!1462213) (not d!1462051) (not b!4636677) (not d!1462231) (not b!4636675) (not b!4636911) (not b!4636601) (not b_lambda!171033) (not b!4636671) (not b!4636882) (not d!1462225) (not b!4636637) (not b!4636890) (not b!4636593) (not b!4636917) (not d!1461995) (not d!1462197) (not b!4636897) (not b!4636879) (not b!4636888) (not b!4636707) (not bm!323614) (not b!4636893) (not b!4636779) (not b!4636906) (not b!4636870) (not b!4636895) (not b!4636880) (not d!1461997) (not d!1461985) (not b!4636698) (not d!1462191) (not d!1461979) (not d!1462085) (not b!4636849) (not b!4636684) (not bm!323605) (not b!4636729) (not d!1462233) (not b!4636898) (not d!1462193) (not d!1462093) tp_is_empty!29493 (not bm!323638) (not d!1462203) (not b!4636781) (not d!1462245) (not d!1462057) (not d!1462109) (not b!4636865) (not b!4636884) (not b!4636861) (not d!1462131) (not bs!1031772) (not d!1462227) (not b!4636899) (not b!4636846) (not b!4636731) (not bm!323637) (not b!4636631) (not b!4636905) (not d!1462101) (not d!1462189) (not d!1462117) (not b!4636699) (not b!4636851) (not d!1462205) (not d!1461983) (not d!1462185) (not b!4636877) (not d!1462087) (not b!4636594) (not b!4636912) (not b!4636909))
(check-sat)
