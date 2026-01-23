; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!476696 () Bool)

(assert start!476696)

(declare-fun b!4700548 () Bool)

(declare-fun e!2932212 () Bool)

(declare-fun e!2932214 () Bool)

(assert (=> b!4700548 (= e!2932212 e!2932214)))

(declare-fun res!1984507 () Bool)

(assert (=> b!4700548 (=> (not res!1984507) (not e!2932214))))

(declare-fun lt!1863347 () (_ BitVec 64))

(declare-fun hash!405 () (_ BitVec 64))

(assert (=> b!4700548 (= res!1984507 (= lt!1863347 hash!405))))

(declare-datatypes ((Hashable!6265 0))(
  ( (HashableExt!6264 (__x!31968 Int)) )
))
(declare-fun hashF!1323 () Hashable!6265)

(declare-datatypes ((K!13890 0))(
  ( (K!13891 (val!19383 Int)) )
))
(declare-fun key!4653 () K!13890)

(declare-fun hash!4168 (Hashable!6265 K!13890) (_ BitVec 64))

(assert (=> b!4700548 (= lt!1863347 (hash!4168 hashF!1323 key!4653))))

(declare-fun b!4700549 () Bool)

(declare-fun res!1984508 () Bool)

(declare-fun e!2932220 () Bool)

(assert (=> b!4700549 (=> res!1984508 e!2932220)))

(declare-datatypes ((V!14136 0))(
  ( (V!14137 (val!19384 Int)) )
))
(declare-datatypes ((tuple2!53978 0))(
  ( (tuple2!53979 (_1!30283 K!13890) (_2!30283 V!14136)) )
))
(declare-datatypes ((List!52651 0))(
  ( (Nil!52527) (Cons!52527 (h!58806 tuple2!53978) (t!359861 List!52651)) )
))
(declare-datatypes ((ListMap!5045 0))(
  ( (ListMap!5046 (toList!5681 List!52651)) )
))
(declare-fun lt!1863349 () ListMap!5045)

(declare-fun lt!1863335 () ListMap!5045)

(declare-fun eq!1055 (ListMap!5045 ListMap!5045) Bool)

(assert (=> b!4700549 (= res!1984508 (not (eq!1055 lt!1863349 lt!1863335)))))

(declare-fun b!4700550 () Bool)

(declare-fun res!1984501 () Bool)

(declare-fun e!2932209 () Bool)

(assert (=> b!4700550 (=> (not res!1984501) (not e!2932209))))

(declare-fun oldBucket!34 () List!52651)

(declare-fun allKeysSameHash!1722 (List!52651 (_ BitVec 64) Hashable!6265) Bool)

(assert (=> b!4700550 (= res!1984501 (allKeysSameHash!1722 oldBucket!34 hash!405 hashF!1323))))

(declare-fun b!4700551 () Bool)

(assert (=> b!4700551 (= e!2932209 e!2932212)))

(declare-fun res!1984493 () Bool)

(assert (=> b!4700551 (=> (not res!1984493) (not e!2932212))))

(declare-fun lt!1863356 () ListMap!5045)

(declare-fun contains!15802 (ListMap!5045 K!13890) Bool)

(assert (=> b!4700551 (= res!1984493 (contains!15802 lt!1863356 key!4653))))

(declare-datatypes ((tuple2!53980 0))(
  ( (tuple2!53981 (_1!30284 (_ BitVec 64)) (_2!30284 List!52651)) )
))
(declare-datatypes ((List!52652 0))(
  ( (Nil!52528) (Cons!52528 (h!58807 tuple2!53980) (t!359862 List!52652)) )
))
(declare-datatypes ((ListLongMap!4211 0))(
  ( (ListLongMap!4212 (toList!5682 List!52652)) )
))
(declare-fun lm!2023 () ListLongMap!4211)

(declare-fun extractMap!1922 (List!52652) ListMap!5045)

(assert (=> b!4700551 (= lt!1863356 (extractMap!1922 (toList!5682 lm!2023)))))

(declare-fun b!4700552 () Bool)

(declare-fun res!1984499 () Bool)

(assert (=> b!4700552 (=> res!1984499 e!2932220)))

(declare-fun lt!1863353 () ListMap!5045)

(declare-fun lt!1863334 () ListMap!5045)

(assert (=> b!4700552 (= res!1984499 (not (eq!1055 lt!1863353 lt!1863334)))))

(declare-fun b!4700553 () Bool)

(declare-fun res!1984497 () Bool)

(assert (=> b!4700553 (=> (not res!1984497) (not e!2932209))))

(declare-fun noDuplicateKeys!1896 (List!52651) Bool)

(assert (=> b!4700553 (= res!1984497 (noDuplicateKeys!1896 oldBucket!34))))

(declare-fun b!4700554 () Bool)

(declare-fun e!2932211 () Bool)

(declare-fun e!2932207 () Bool)

(assert (=> b!4700554 (= e!2932211 (not e!2932207))))

(declare-fun res!1984491 () Bool)

(assert (=> b!4700554 (=> res!1984491 e!2932207)))

(get-info :version)

(assert (=> b!4700554 (= res!1984491 (or (and ((_ is Cons!52527) oldBucket!34) (= (_1!30283 (h!58806 oldBucket!34)) key!4653)) (not ((_ is Cons!52527) oldBucket!34)) (= (_1!30283 (h!58806 oldBucket!34)) key!4653)))))

(declare-fun lt!1863360 () ListMap!5045)

(declare-fun addToMapMapFromBucket!1328 (List!52651 ListMap!5045) ListMap!5045)

(assert (=> b!4700554 (= lt!1863356 (addToMapMapFromBucket!1328 (_2!30284 (h!58807 (toList!5682 lm!2023))) lt!1863360))))

(assert (=> b!4700554 (= lt!1863360 (extractMap!1922 (t!359862 (toList!5682 lm!2023))))))

(declare-fun tail!8713 (ListLongMap!4211) ListLongMap!4211)

(assert (=> b!4700554 (= (t!359862 (toList!5682 lm!2023)) (toList!5682 (tail!8713 lm!2023)))))

(declare-fun b!4700555 () Bool)

(declare-fun res!1984489 () Bool)

(assert (=> b!4700555 (=> (not res!1984489) (not e!2932214))))

(declare-fun newBucket!218 () List!52651)

(assert (=> b!4700555 (= res!1984489 (allKeysSameHash!1722 newBucket!218 hash!405 hashF!1323))))

(declare-fun b!4700556 () Bool)

(declare-fun e!2932219 () Bool)

(declare-fun e!2932213 () Bool)

(assert (=> b!4700556 (= e!2932219 e!2932213)))

(declare-fun res!1984509 () Bool)

(assert (=> b!4700556 (=> res!1984509 e!2932213)))

(declare-fun lt!1863341 () ListMap!5045)

(declare-fun lt!1863351 () ListMap!5045)

(assert (=> b!4700556 (= res!1984509 (not (eq!1055 lt!1863341 lt!1863351)))))

(declare-fun lt!1863345 () ListMap!5045)

(declare-fun -!700 (ListMap!5045 K!13890) ListMap!5045)

(assert (=> b!4700556 (= lt!1863351 (-!700 lt!1863345 key!4653))))

(declare-fun lt!1863342 () tuple2!53980)

(assert (=> b!4700556 (= lt!1863341 (extractMap!1922 (Cons!52528 lt!1863342 (t!359862 (toList!5682 lm!2023)))))))

(declare-fun lt!1863357 () List!52652)

(declare-fun lt!1863332 () tuple2!53980)

(assert (=> b!4700556 (eq!1055 (extractMap!1922 (Cons!52528 lt!1863342 lt!1863357)) (-!700 (extractMap!1922 (Cons!52528 lt!1863332 lt!1863357)) key!4653))))

(declare-fun lt!1863344 () List!52652)

(declare-fun tail!8714 (List!52652) List!52652)

(assert (=> b!4700556 (= lt!1863357 (tail!8714 lt!1863344))))

(declare-fun lt!1863355 () List!52651)

(assert (=> b!4700556 (= lt!1863342 (tuple2!53981 hash!405 lt!1863355))))

(declare-datatypes ((Unit!126116 0))(
  ( (Unit!126117) )
))
(declare-fun lt!1863346 () Unit!126116)

(declare-fun lt!1863337 () ListLongMap!4211)

(declare-fun lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMapOneHashIsHead!70 (ListLongMap!4211 (_ BitVec 64) List!52651 List!52651 K!13890 Hashable!6265) Unit!126116)

(assert (=> b!4700556 (= lt!1863346 (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMapOneHashIsHead!70 lt!1863337 hash!405 (t!359861 oldBucket!34) lt!1863355 key!4653 hashF!1323))))

(declare-fun b!4700557 () Bool)

(declare-fun e!2932208 () Bool)

(declare-fun e!2932210 () Bool)

(assert (=> b!4700557 (= e!2932208 e!2932210)))

(declare-fun res!1984502 () Bool)

(assert (=> b!4700557 (=> res!1984502 e!2932210)))

(declare-fun lt!1863352 () List!52651)

(declare-fun removePairForKey!1491 (List!52651 K!13890) List!52651)

(assert (=> b!4700557 (= res!1984502 (not (= (removePairForKey!1491 lt!1863352 key!4653) lt!1863355)))))

(declare-fun tail!8715 (List!52651) List!52651)

(assert (=> b!4700557 (= lt!1863355 (tail!8715 newBucket!218))))

(assert (=> b!4700557 (= lt!1863352 (tail!8715 oldBucket!34))))

(declare-fun b!4700558 () Bool)

(assert (=> b!4700558 (= e!2932207 e!2932208)))

(declare-fun res!1984487 () Bool)

(assert (=> b!4700558 (=> res!1984487 e!2932208)))

(declare-fun containsKey!3163 (List!52651 K!13890) Bool)

(assert (=> b!4700558 (= res!1984487 (not (containsKey!3163 (t!359861 oldBucket!34) key!4653)))))

(assert (=> b!4700558 (containsKey!3163 oldBucket!34 key!4653)))

(declare-fun lt!1863338 () Unit!126116)

(declare-fun lemmaGetPairDefinedThenContainsKey!248 (List!52651 K!13890 Hashable!6265) Unit!126116)

(assert (=> b!4700558 (= lt!1863338 (lemmaGetPairDefinedThenContainsKey!248 oldBucket!34 key!4653 hashF!1323))))

(declare-fun lt!1863328 () List!52651)

(declare-datatypes ((Option!12187 0))(
  ( (None!12186) (Some!12186 (v!46669 tuple2!53978)) )
))
(declare-fun isDefined!9442 (Option!12187) Bool)

(declare-fun getPair!500 (List!52651 K!13890) Option!12187)

(assert (=> b!4700558 (isDefined!9442 (getPair!500 lt!1863328 key!4653))))

(declare-fun lt!1863362 () Unit!126116)

(declare-fun lt!1863350 () tuple2!53980)

(declare-fun lambda!210091 () Int)

(declare-fun forallContained!3504 (List!52652 Int tuple2!53980) Unit!126116)

(assert (=> b!4700558 (= lt!1863362 (forallContained!3504 (toList!5682 lm!2023) lambda!210091 lt!1863350))))

(declare-fun contains!15803 (List!52652 tuple2!53980) Bool)

(assert (=> b!4700558 (contains!15803 (toList!5682 lm!2023) lt!1863350)))

(assert (=> b!4700558 (= lt!1863350 (tuple2!53981 lt!1863347 lt!1863328))))

(declare-fun lt!1863348 () Unit!126116)

(declare-fun lemmaGetValueImpliesTupleContained!305 (ListLongMap!4211 (_ BitVec 64) List!52651) Unit!126116)

(assert (=> b!4700558 (= lt!1863348 (lemmaGetValueImpliesTupleContained!305 lm!2023 lt!1863347 lt!1863328))))

(declare-fun apply!12379 (ListLongMap!4211 (_ BitVec 64)) List!52651)

(assert (=> b!4700558 (= lt!1863328 (apply!12379 lm!2023 lt!1863347))))

(declare-fun contains!15804 (ListLongMap!4211 (_ BitVec 64)) Bool)

(assert (=> b!4700558 (contains!15804 lm!2023 lt!1863347)))

(declare-fun lt!1863361 () Unit!126116)

(declare-fun lemmaInGenMapThenLongMapContainsHash!706 (ListLongMap!4211 K!13890 Hashable!6265) Unit!126116)

(assert (=> b!4700558 (= lt!1863361 (lemmaInGenMapThenLongMapContainsHash!706 lm!2023 key!4653 hashF!1323))))

(declare-fun lt!1863343 () Unit!126116)

(declare-fun lemmaInGenMapThenGetPairDefined!296 (ListLongMap!4211 K!13890 Hashable!6265) Unit!126116)

(assert (=> b!4700558 (= lt!1863343 (lemmaInGenMapThenGetPairDefined!296 lm!2023 key!4653 hashF!1323))))

(declare-fun b!4700559 () Bool)

(declare-fun tp_is_empty!30877 () Bool)

(declare-fun e!2932218 () Bool)

(declare-fun tp!1346634 () Bool)

(declare-fun tp_is_empty!30879 () Bool)

(assert (=> b!4700559 (= e!2932218 (and tp_is_empty!30877 tp_is_empty!30879 tp!1346634))))

(declare-fun b!4700560 () Bool)

(declare-fun res!1984492 () Bool)

(assert (=> b!4700560 (=> (not res!1984492) (not e!2932209))))

(assert (=> b!4700560 (= res!1984492 (= (removePairForKey!1491 oldBucket!34 key!4653) newBucket!218))))

(declare-fun b!4700561 () Bool)

(declare-fun res!1984503 () Bool)

(assert (=> b!4700561 (=> res!1984503 e!2932219)))

(declare-fun lt!1863327 () ListMap!5045)

(declare-fun lt!1863331 () tuple2!53978)

(declare-fun +!2180 (ListMap!5045 tuple2!53978) ListMap!5045)

(assert (=> b!4700561 (= res!1984503 (not (eq!1055 lt!1863334 (+!2180 lt!1863327 lt!1863331))))))

(declare-fun b!4700562 () Bool)

(declare-fun res!1984500 () Bool)

(assert (=> b!4700562 (=> (not res!1984500) (not e!2932211))))

(assert (=> b!4700562 (= res!1984500 ((_ is Cons!52528) (toList!5682 lm!2023)))))

(declare-fun b!4700563 () Bool)

(declare-fun res!1984488 () Bool)

(assert (=> b!4700563 (=> (not res!1984488) (not e!2932209))))

(assert (=> b!4700563 (= res!1984488 (noDuplicateKeys!1896 newBucket!218))))

(declare-fun res!1984504 () Bool)

(assert (=> start!476696 (=> (not res!1984504) (not e!2932209))))

(declare-fun forall!11397 (List!52652 Int) Bool)

(assert (=> start!476696 (= res!1984504 (forall!11397 (toList!5682 lm!2023) lambda!210091))))

(assert (=> start!476696 e!2932209))

(declare-fun e!2932215 () Bool)

(declare-fun inv!67764 (ListLongMap!4211) Bool)

(assert (=> start!476696 (and (inv!67764 lm!2023) e!2932215)))

(assert (=> start!476696 tp_is_empty!30877))

(declare-fun e!2932217 () Bool)

(assert (=> start!476696 e!2932217))

(assert (=> start!476696 true))

(assert (=> start!476696 e!2932218))

(declare-fun b!4700564 () Bool)

(declare-fun e!2932216 () Bool)

(assert (=> b!4700564 (= e!2932220 e!2932216)))

(declare-fun res!1984505 () Bool)

(assert (=> b!4700564 (=> res!1984505 e!2932216)))

(assert (=> b!4700564 (= res!1984505 (not (eq!1055 lt!1863335 (+!2180 lt!1863341 (h!58806 oldBucket!34)))))))

(declare-fun lt!1863340 () ListMap!5045)

(assert (=> b!4700564 (eq!1055 lt!1863340 (+!2180 lt!1863341 (h!58806 oldBucket!34)))))

(declare-fun lt!1863359 () Unit!126116)

(declare-fun lemmaAddToEqMapsPreservesEq!78 (ListMap!5045 ListMap!5045 K!13890 V!14136) Unit!126116)

(assert (=> b!4700564 (= lt!1863359 (lemmaAddToEqMapsPreservesEq!78 lt!1863351 lt!1863341 (_1!30283 (h!58806 oldBucket!34)) (_2!30283 (h!58806 oldBucket!34))))))

(declare-fun b!4700565 () Bool)

(assert (=> b!4700565 (= e!2932214 e!2932211)))

(declare-fun res!1984490 () Bool)

(assert (=> b!4700565 (=> (not res!1984490) (not e!2932211))))

(declare-fun lt!1863330 () tuple2!53980)

(declare-fun head!10055 (List!52652) tuple2!53980)

(assert (=> b!4700565 (= res!1984490 (= (head!10055 (toList!5682 lm!2023)) lt!1863330))))

(assert (=> b!4700565 (= lt!1863330 (tuple2!53981 hash!405 oldBucket!34))))

(declare-fun b!4700566 () Bool)

(declare-fun tp!1346635 () Bool)

(assert (=> b!4700566 (= e!2932215 tp!1346635)))

(declare-fun b!4700567 () Bool)

(assert (=> b!4700567 (= e!2932216 (forall!11397 lt!1863344 lambda!210091))))

(declare-fun b!4700568 () Bool)

(declare-fun tp!1346633 () Bool)

(assert (=> b!4700568 (= e!2932217 (and tp_is_empty!30877 tp_is_empty!30879 tp!1346633))))

(declare-fun b!4700569 () Bool)

(assert (=> b!4700569 (= e!2932213 e!2932220)))

(declare-fun res!1984506 () Bool)

(assert (=> b!4700569 (=> res!1984506 e!2932220)))

(assert (=> b!4700569 (= res!1984506 (not (= lt!1863349 lt!1863335)))))

(assert (=> b!4700569 (= lt!1863335 (+!2180 lt!1863351 (h!58806 oldBucket!34)))))

(assert (=> b!4700569 (= lt!1863349 (-!700 lt!1863353 key!4653))))

(assert (=> b!4700569 (= lt!1863353 (+!2180 lt!1863345 (h!58806 oldBucket!34)))))

(declare-fun lt!1863358 () ListMap!5045)

(assert (=> b!4700569 (= lt!1863358 lt!1863340)))

(assert (=> b!4700569 (= lt!1863340 (+!2180 lt!1863351 (h!58806 oldBucket!34)))))

(assert (=> b!4700569 (= lt!1863358 (-!700 (+!2180 lt!1863345 (h!58806 oldBucket!34)) key!4653))))

(declare-fun lt!1863336 () Unit!126116)

(declare-fun addRemoveCommutativeForDiffKeys!101 (ListMap!5045 K!13890 V!14136 K!13890) Unit!126116)

(assert (=> b!4700569 (= lt!1863336 (addRemoveCommutativeForDiffKeys!101 lt!1863345 (_1!30283 (h!58806 oldBucket!34)) (_2!30283 (h!58806 oldBucket!34)) key!4653))))

(declare-fun b!4700570 () Bool)

(declare-fun res!1984494 () Bool)

(assert (=> b!4700570 (=> res!1984494 e!2932210)))

(assert (=> b!4700570 (= res!1984494 (not (= (removePairForKey!1491 (t!359861 oldBucket!34) key!4653) lt!1863355)))))

(declare-fun b!4700571 () Bool)

(declare-fun res!1984496 () Bool)

(assert (=> b!4700571 (=> res!1984496 e!2932219)))

(assert (=> b!4700571 (= res!1984496 (not (= (h!58806 oldBucket!34) lt!1863331)))))

(declare-fun b!4700572 () Bool)

(declare-fun res!1984495 () Bool)

(assert (=> b!4700572 (=> (not res!1984495) (not e!2932214))))

(declare-fun allKeysSameHashInMap!1810 (ListLongMap!4211 Hashable!6265) Bool)

(assert (=> b!4700572 (= res!1984495 (allKeysSameHashInMap!1810 lm!2023 hashF!1323))))

(declare-fun b!4700573 () Bool)

(assert (=> b!4700573 (= e!2932210 e!2932219)))

(declare-fun res!1984498 () Bool)

(assert (=> b!4700573 (=> res!1984498 e!2932219)))

(assert (=> b!4700573 (= res!1984498 (not (eq!1055 lt!1863334 (+!2180 lt!1863327 (h!58806 oldBucket!34)))))))

(assert (=> b!4700573 (= lt!1863327 (extractMap!1922 (Cons!52528 (tuple2!53981 hash!405 lt!1863352) (t!359862 (toList!5682 lm!2023)))))))

(assert (=> b!4700573 (= lt!1863334 (extractMap!1922 (Cons!52528 lt!1863330 (t!359862 (toList!5682 lm!2023)))))))

(assert (=> b!4700573 (eq!1055 (addToMapMapFromBucket!1328 (Cons!52527 lt!1863331 lt!1863355) lt!1863360) (+!2180 (addToMapMapFromBucket!1328 lt!1863355 lt!1863360) lt!1863331))))

(declare-fun lt!1863333 () Unit!126116)

(declare-fun lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!304 (tuple2!53978 List!52651 ListMap!5045) Unit!126116)

(assert (=> b!4700573 (= lt!1863333 (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!304 lt!1863331 lt!1863355 lt!1863360))))

(declare-fun head!10056 (List!52651) tuple2!53978)

(assert (=> b!4700573 (= lt!1863331 (head!10056 newBucket!218))))

(declare-fun lt!1863329 () tuple2!53978)

(assert (=> b!4700573 (eq!1055 (addToMapMapFromBucket!1328 (Cons!52527 lt!1863329 lt!1863352) lt!1863360) (+!2180 (addToMapMapFromBucket!1328 lt!1863352 lt!1863360) lt!1863329))))

(declare-fun lt!1863354 () Unit!126116)

(assert (=> b!4700573 (= lt!1863354 (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!304 lt!1863329 lt!1863352 lt!1863360))))

(assert (=> b!4700573 (= lt!1863329 (head!10056 oldBucket!34))))

(assert (=> b!4700573 (contains!15802 lt!1863345 key!4653)))

(assert (=> b!4700573 (= lt!1863345 (extractMap!1922 lt!1863344))))

(declare-fun lt!1863339 () Unit!126116)

(declare-fun lemmaListContainsThenExtractedMapContains!488 (ListLongMap!4211 K!13890 Hashable!6265) Unit!126116)

(assert (=> b!4700573 (= lt!1863339 (lemmaListContainsThenExtractedMapContains!488 lt!1863337 key!4653 hashF!1323))))

(assert (=> b!4700573 (= lt!1863337 (ListLongMap!4212 lt!1863344))))

(assert (=> b!4700573 (= lt!1863344 (Cons!52528 lt!1863332 (t!359862 (toList!5682 lm!2023))))))

(assert (=> b!4700573 (= lt!1863332 (tuple2!53981 hash!405 (t!359861 oldBucket!34)))))

(assert (= (and start!476696 res!1984504) b!4700553))

(assert (= (and b!4700553 res!1984497) b!4700563))

(assert (= (and b!4700563 res!1984488) b!4700560))

(assert (= (and b!4700560 res!1984492) b!4700550))

(assert (= (and b!4700550 res!1984501) b!4700551))

(assert (= (and b!4700551 res!1984493) b!4700548))

(assert (= (and b!4700548 res!1984507) b!4700555))

(assert (= (and b!4700555 res!1984489) b!4700572))

(assert (= (and b!4700572 res!1984495) b!4700565))

(assert (= (and b!4700565 res!1984490) b!4700562))

(assert (= (and b!4700562 res!1984500) b!4700554))

(assert (= (and b!4700554 (not res!1984491)) b!4700558))

(assert (= (and b!4700558 (not res!1984487)) b!4700557))

(assert (= (and b!4700557 (not res!1984502)) b!4700570))

(assert (= (and b!4700570 (not res!1984494)) b!4700573))

(assert (= (and b!4700573 (not res!1984498)) b!4700571))

(assert (= (and b!4700571 (not res!1984496)) b!4700561))

(assert (= (and b!4700561 (not res!1984503)) b!4700556))

(assert (= (and b!4700556 (not res!1984509)) b!4700569))

(assert (= (and b!4700569 (not res!1984506)) b!4700549))

(assert (= (and b!4700549 (not res!1984508)) b!4700552))

(assert (= (and b!4700552 (not res!1984499)) b!4700564))

(assert (= (and b!4700564 (not res!1984505)) b!4700567))

(assert (= start!476696 b!4700566))

(assert (= (and start!476696 ((_ is Cons!52527) oldBucket!34)) b!4700568))

(assert (= (and start!476696 ((_ is Cons!52527) newBucket!218)) b!4700559))

(declare-fun m!5614995 () Bool)

(assert (=> b!4700548 m!5614995))

(declare-fun m!5614997 () Bool)

(assert (=> b!4700551 m!5614997))

(declare-fun m!5614999 () Bool)

(assert (=> b!4700551 m!5614999))

(declare-fun m!5615001 () Bool)

(assert (=> b!4700555 m!5615001))

(declare-fun m!5615003 () Bool)

(assert (=> b!4700549 m!5615003))

(declare-fun m!5615005 () Bool)

(assert (=> b!4700567 m!5615005))

(declare-fun m!5615007 () Bool)

(assert (=> b!4700554 m!5615007))

(declare-fun m!5615009 () Bool)

(assert (=> b!4700554 m!5615009))

(declare-fun m!5615011 () Bool)

(assert (=> b!4700554 m!5615011))

(declare-fun m!5615013 () Bool)

(assert (=> b!4700561 m!5615013))

(assert (=> b!4700561 m!5615013))

(declare-fun m!5615015 () Bool)

(assert (=> b!4700561 m!5615015))

(declare-fun m!5615017 () Bool)

(assert (=> b!4700560 m!5615017))

(declare-fun m!5615019 () Bool)

(assert (=> b!4700570 m!5615019))

(declare-fun m!5615021 () Bool)

(assert (=> b!4700573 m!5615021))

(declare-fun m!5615023 () Bool)

(assert (=> b!4700573 m!5615023))

(declare-fun m!5615025 () Bool)

(assert (=> b!4700573 m!5615025))

(declare-fun m!5615027 () Bool)

(assert (=> b!4700573 m!5615027))

(declare-fun m!5615029 () Bool)

(assert (=> b!4700573 m!5615029))

(declare-fun m!5615031 () Bool)

(assert (=> b!4700573 m!5615031))

(declare-fun m!5615033 () Bool)

(assert (=> b!4700573 m!5615033))

(declare-fun m!5615035 () Bool)

(assert (=> b!4700573 m!5615035))

(declare-fun m!5615037 () Bool)

(assert (=> b!4700573 m!5615037))

(assert (=> b!4700573 m!5615031))

(declare-fun m!5615039 () Bool)

(assert (=> b!4700573 m!5615039))

(declare-fun m!5615041 () Bool)

(assert (=> b!4700573 m!5615041))

(assert (=> b!4700573 m!5615033))

(declare-fun m!5615043 () Bool)

(assert (=> b!4700573 m!5615043))

(declare-fun m!5615045 () Bool)

(assert (=> b!4700573 m!5615045))

(declare-fun m!5615047 () Bool)

(assert (=> b!4700573 m!5615047))

(assert (=> b!4700573 m!5615041))

(assert (=> b!4700573 m!5615029))

(declare-fun m!5615049 () Bool)

(assert (=> b!4700573 m!5615049))

(declare-fun m!5615051 () Bool)

(assert (=> b!4700573 m!5615051))

(declare-fun m!5615053 () Bool)

(assert (=> b!4700573 m!5615053))

(declare-fun m!5615055 () Bool)

(assert (=> b!4700573 m!5615055))

(assert (=> b!4700573 m!5615037))

(assert (=> b!4700573 m!5615049))

(assert (=> b!4700573 m!5615021))

(declare-fun m!5615057 () Bool)

(assert (=> b!4700573 m!5615057))

(declare-fun m!5615059 () Bool)

(assert (=> b!4700565 m!5615059))

(declare-fun m!5615061 () Bool)

(assert (=> b!4700569 m!5615061))

(declare-fun m!5615063 () Bool)

(assert (=> b!4700569 m!5615063))

(assert (=> b!4700569 m!5615063))

(declare-fun m!5615065 () Bool)

(assert (=> b!4700569 m!5615065))

(declare-fun m!5615067 () Bool)

(assert (=> b!4700569 m!5615067))

(declare-fun m!5615069 () Bool)

(assert (=> b!4700569 m!5615069))

(declare-fun m!5615071 () Bool)

(assert (=> b!4700556 m!5615071))

(declare-fun m!5615073 () Bool)

(assert (=> b!4700556 m!5615073))

(declare-fun m!5615075 () Bool)

(assert (=> b!4700556 m!5615075))

(declare-fun m!5615077 () Bool)

(assert (=> b!4700556 m!5615077))

(declare-fun m!5615079 () Bool)

(assert (=> b!4700556 m!5615079))

(declare-fun m!5615081 () Bool)

(assert (=> b!4700556 m!5615081))

(assert (=> b!4700556 m!5615075))

(declare-fun m!5615083 () Bool)

(assert (=> b!4700556 m!5615083))

(declare-fun m!5615085 () Bool)

(assert (=> b!4700556 m!5615085))

(assert (=> b!4700556 m!5615077))

(assert (=> b!4700556 m!5615085))

(declare-fun m!5615087 () Bool)

(assert (=> b!4700556 m!5615087))

(declare-fun m!5615089 () Bool)

(assert (=> b!4700557 m!5615089))

(declare-fun m!5615091 () Bool)

(assert (=> b!4700557 m!5615091))

(declare-fun m!5615093 () Bool)

(assert (=> b!4700557 m!5615093))

(declare-fun m!5615095 () Bool)

(assert (=> b!4700550 m!5615095))

(declare-fun m!5615097 () Bool)

(assert (=> b!4700563 m!5615097))

(declare-fun m!5615099 () Bool)

(assert (=> b!4700552 m!5615099))

(declare-fun m!5615101 () Bool)

(assert (=> b!4700558 m!5615101))

(declare-fun m!5615103 () Bool)

(assert (=> b!4700558 m!5615103))

(declare-fun m!5615105 () Bool)

(assert (=> b!4700558 m!5615105))

(declare-fun m!5615107 () Bool)

(assert (=> b!4700558 m!5615107))

(declare-fun m!5615109 () Bool)

(assert (=> b!4700558 m!5615109))

(declare-fun m!5615111 () Bool)

(assert (=> b!4700558 m!5615111))

(declare-fun m!5615113 () Bool)

(assert (=> b!4700558 m!5615113))

(declare-fun m!5615115 () Bool)

(assert (=> b!4700558 m!5615115))

(declare-fun m!5615117 () Bool)

(assert (=> b!4700558 m!5615117))

(declare-fun m!5615119 () Bool)

(assert (=> b!4700558 m!5615119))

(declare-fun m!5615121 () Bool)

(assert (=> b!4700558 m!5615121))

(assert (=> b!4700558 m!5615117))

(declare-fun m!5615123 () Bool)

(assert (=> b!4700558 m!5615123))

(declare-fun m!5615125 () Bool)

(assert (=> b!4700572 m!5615125))

(declare-fun m!5615127 () Bool)

(assert (=> start!476696 m!5615127))

(declare-fun m!5615129 () Bool)

(assert (=> start!476696 m!5615129))

(declare-fun m!5615131 () Bool)

(assert (=> b!4700564 m!5615131))

(assert (=> b!4700564 m!5615131))

(declare-fun m!5615133 () Bool)

(assert (=> b!4700564 m!5615133))

(assert (=> b!4700564 m!5615131))

(declare-fun m!5615135 () Bool)

(assert (=> b!4700564 m!5615135))

(declare-fun m!5615137 () Bool)

(assert (=> b!4700564 m!5615137))

(declare-fun m!5615139 () Bool)

(assert (=> b!4700553 m!5615139))

(check-sat (not b!4700565) (not b!4700561) (not b!4700550) tp_is_empty!30877 (not b!4700557) (not start!476696) (not b!4700548) (not b!4700555) (not b!4700570) (not b!4700559) (not b!4700551) (not b!4700552) (not b!4700563) (not b!4700553) (not b!4700564) (not b!4700573) (not b!4700554) (not b!4700558) (not b!4700560) tp_is_empty!30879 (not b!4700567) (not b!4700556) (not b!4700568) (not b!4700569) (not b!4700572) (not b!4700549) (not b!4700566))
(check-sat)
(get-model)

(declare-fun d!1495000 () Bool)

(assert (=> d!1495000 (= (head!10055 (toList!5682 lm!2023)) (h!58807 (toList!5682 lm!2023)))))

(assert (=> b!4700565 d!1495000))

(declare-fun b!4700713 () Bool)

(assert (=> b!4700713 true))

(declare-fun bs!1094921 () Bool)

(declare-fun b!4700715 () Bool)

(assert (= bs!1094921 (and b!4700715 b!4700713)))

(declare-fun lambda!210180 () Int)

(declare-fun lambda!210179 () Int)

(assert (=> bs!1094921 (= lambda!210180 lambda!210179)))

(assert (=> b!4700715 true))

(declare-fun lt!1863620 () ListMap!5045)

(declare-fun lambda!210181 () Int)

(assert (=> bs!1094921 (= (= lt!1863620 lt!1863360) (= lambda!210181 lambda!210179))))

(assert (=> b!4700715 (= (= lt!1863620 lt!1863360) (= lambda!210181 lambda!210180))))

(assert (=> b!4700715 true))

(declare-fun bs!1094922 () Bool)

(declare-fun d!1495002 () Bool)

(assert (= bs!1094922 (and d!1495002 b!4700713)))

(declare-fun lt!1863626 () ListMap!5045)

(declare-fun lambda!210182 () Int)

(assert (=> bs!1094922 (= (= lt!1863626 lt!1863360) (= lambda!210182 lambda!210179))))

(declare-fun bs!1094923 () Bool)

(assert (= bs!1094923 (and d!1495002 b!4700715)))

(assert (=> bs!1094923 (= (= lt!1863626 lt!1863360) (= lambda!210182 lambda!210180))))

(assert (=> bs!1094923 (= (= lt!1863626 lt!1863620) (= lambda!210182 lambda!210181))))

(assert (=> d!1495002 true))

(declare-fun b!4700711 () Bool)

(declare-fun e!2932302 () Bool)

(declare-fun forall!11399 (List!52651 Int) Bool)

(assert (=> b!4700711 (= e!2932302 (forall!11399 (toList!5681 lt!1863360) lambda!210181))))

(declare-fun e!2932303 () ListMap!5045)

(assert (=> b!4700713 (= e!2932303 lt!1863360)))

(declare-fun lt!1863630 () Unit!126116)

(declare-fun call!328636 () Unit!126116)

(assert (=> b!4700713 (= lt!1863630 call!328636)))

(declare-fun call!328637 () Bool)

(assert (=> b!4700713 call!328637))

(declare-fun lt!1863634 () Unit!126116)

(assert (=> b!4700713 (= lt!1863634 lt!1863630)))

(declare-fun call!328635 () Bool)

(assert (=> b!4700713 call!328635))

(declare-fun lt!1863631 () Unit!126116)

(declare-fun Unit!126160 () Unit!126116)

(assert (=> b!4700713 (= lt!1863631 Unit!126160)))

(declare-fun b!4700714 () Bool)

(declare-fun e!2932304 () Bool)

(declare-fun invariantList!1444 (List!52651) Bool)

(assert (=> b!4700714 (= e!2932304 (invariantList!1444 (toList!5681 lt!1863626)))))

(declare-fun bm!328630 () Bool)

(declare-fun lemmaContainsAllItsOwnKeys!732 (ListMap!5045) Unit!126116)

(assert (=> bm!328630 (= call!328636 (lemmaContainsAllItsOwnKeys!732 lt!1863360))))

(assert (=> b!4700715 (= e!2932303 lt!1863620)))

(declare-fun lt!1863622 () ListMap!5045)

(assert (=> b!4700715 (= lt!1863622 (+!2180 lt!1863360 (h!58806 (_2!30284 (h!58807 (toList!5682 lm!2023))))))))

(assert (=> b!4700715 (= lt!1863620 (addToMapMapFromBucket!1328 (t!359861 (_2!30284 (h!58807 (toList!5682 lm!2023)))) (+!2180 lt!1863360 (h!58806 (_2!30284 (h!58807 (toList!5682 lm!2023)))))))))

(declare-fun lt!1863618 () Unit!126116)

(assert (=> b!4700715 (= lt!1863618 call!328636)))

(assert (=> b!4700715 (forall!11399 (toList!5681 lt!1863360) lambda!210180)))

(declare-fun lt!1863616 () Unit!126116)

(assert (=> b!4700715 (= lt!1863616 lt!1863618)))

(assert (=> b!4700715 call!328637))

(declare-fun lt!1863615 () Unit!126116)

(declare-fun Unit!126162 () Unit!126116)

(assert (=> b!4700715 (= lt!1863615 Unit!126162)))

(assert (=> b!4700715 (forall!11399 (t!359861 (_2!30284 (h!58807 (toList!5682 lm!2023)))) lambda!210181)))

(declare-fun lt!1863632 () Unit!126116)

(declare-fun Unit!126163 () Unit!126116)

(assert (=> b!4700715 (= lt!1863632 Unit!126163)))

(declare-fun lt!1863619 () Unit!126116)

(declare-fun Unit!126164 () Unit!126116)

(assert (=> b!4700715 (= lt!1863619 Unit!126164)))

(declare-fun lt!1863628 () Unit!126116)

(declare-fun forallContained!3506 (List!52651 Int tuple2!53978) Unit!126116)

(assert (=> b!4700715 (= lt!1863628 (forallContained!3506 (toList!5681 lt!1863622) lambda!210181 (h!58806 (_2!30284 (h!58807 (toList!5682 lm!2023))))))))

(assert (=> b!4700715 (contains!15802 lt!1863622 (_1!30283 (h!58806 (_2!30284 (h!58807 (toList!5682 lm!2023))))))))

(declare-fun lt!1863621 () Unit!126116)

(declare-fun Unit!126165 () Unit!126116)

(assert (=> b!4700715 (= lt!1863621 Unit!126165)))

(assert (=> b!4700715 (contains!15802 lt!1863620 (_1!30283 (h!58806 (_2!30284 (h!58807 (toList!5682 lm!2023))))))))

(declare-fun lt!1863629 () Unit!126116)

(declare-fun Unit!126167 () Unit!126116)

(assert (=> b!4700715 (= lt!1863629 Unit!126167)))

(assert (=> b!4700715 (forall!11399 (_2!30284 (h!58807 (toList!5682 lm!2023))) lambda!210181)))

(declare-fun lt!1863614 () Unit!126116)

(declare-fun Unit!126168 () Unit!126116)

(assert (=> b!4700715 (= lt!1863614 Unit!126168)))

(assert (=> b!4700715 call!328635))

(declare-fun lt!1863633 () Unit!126116)

(declare-fun Unit!126169 () Unit!126116)

(assert (=> b!4700715 (= lt!1863633 Unit!126169)))

(declare-fun lt!1863625 () Unit!126116)

(declare-fun Unit!126170 () Unit!126116)

(assert (=> b!4700715 (= lt!1863625 Unit!126170)))

(declare-fun lt!1863623 () Unit!126116)

(declare-fun addForallContainsKeyThenBeforeAdding!731 (ListMap!5045 ListMap!5045 K!13890 V!14136) Unit!126116)

(assert (=> b!4700715 (= lt!1863623 (addForallContainsKeyThenBeforeAdding!731 lt!1863360 lt!1863620 (_1!30283 (h!58806 (_2!30284 (h!58807 (toList!5682 lm!2023))))) (_2!30283 (h!58806 (_2!30284 (h!58807 (toList!5682 lm!2023)))))))))

(assert (=> b!4700715 (forall!11399 (toList!5681 lt!1863360) lambda!210181)))

(declare-fun lt!1863624 () Unit!126116)

(assert (=> b!4700715 (= lt!1863624 lt!1863623)))

(assert (=> b!4700715 (forall!11399 (toList!5681 lt!1863360) lambda!210181)))

(declare-fun lt!1863627 () Unit!126116)

(declare-fun Unit!126171 () Unit!126116)

(assert (=> b!4700715 (= lt!1863627 Unit!126171)))

(declare-fun res!1984576 () Bool)

(assert (=> b!4700715 (= res!1984576 (forall!11399 (_2!30284 (h!58807 (toList!5682 lm!2023))) lambda!210181))))

(assert (=> b!4700715 (=> (not res!1984576) (not e!2932302))))

(assert (=> b!4700715 e!2932302))

(declare-fun lt!1863617 () Unit!126116)

(declare-fun Unit!126172 () Unit!126116)

(assert (=> b!4700715 (= lt!1863617 Unit!126172)))

(declare-fun c!803514 () Bool)

(declare-fun bm!328631 () Bool)

(assert (=> bm!328631 (= call!328635 (forall!11399 (ite c!803514 (toList!5681 lt!1863360) (toList!5681 lt!1863622)) (ite c!803514 lambda!210179 lambda!210181)))))

(declare-fun bm!328632 () Bool)

(assert (=> bm!328632 (= call!328637 (forall!11399 (ite c!803514 (toList!5681 lt!1863360) (toList!5681 lt!1863622)) (ite c!803514 lambda!210179 lambda!210181)))))

(assert (=> d!1495002 e!2932304))

(declare-fun res!1984575 () Bool)

(assert (=> d!1495002 (=> (not res!1984575) (not e!2932304))))

(assert (=> d!1495002 (= res!1984575 (forall!11399 (_2!30284 (h!58807 (toList!5682 lm!2023))) lambda!210182))))

(assert (=> d!1495002 (= lt!1863626 e!2932303)))

(assert (=> d!1495002 (= c!803514 ((_ is Nil!52527) (_2!30284 (h!58807 (toList!5682 lm!2023)))))))

(assert (=> d!1495002 (noDuplicateKeys!1896 (_2!30284 (h!58807 (toList!5682 lm!2023))))))

(assert (=> d!1495002 (= (addToMapMapFromBucket!1328 (_2!30284 (h!58807 (toList!5682 lm!2023))) lt!1863360) lt!1863626)))

(declare-fun b!4700712 () Bool)

(declare-fun res!1984577 () Bool)

(assert (=> b!4700712 (=> (not res!1984577) (not e!2932304))))

(assert (=> b!4700712 (= res!1984577 (forall!11399 (toList!5681 lt!1863360) lambda!210182))))

(assert (= (and d!1495002 c!803514) b!4700713))

(assert (= (and d!1495002 (not c!803514)) b!4700715))

(assert (= (and b!4700715 res!1984576) b!4700711))

(assert (= (or b!4700713 b!4700715) bm!328630))

(assert (= (or b!4700713 b!4700715) bm!328632))

(assert (= (or b!4700713 b!4700715) bm!328631))

(assert (= (and d!1495002 res!1984575) b!4700712))

(assert (= (and b!4700712 res!1984577) b!4700714))

(declare-fun m!5615499 () Bool)

(assert (=> d!1495002 m!5615499))

(declare-fun m!5615501 () Bool)

(assert (=> d!1495002 m!5615501))

(declare-fun m!5615503 () Bool)

(assert (=> b!4700711 m!5615503))

(declare-fun m!5615505 () Bool)

(assert (=> bm!328631 m!5615505))

(assert (=> bm!328632 m!5615505))

(declare-fun m!5615507 () Bool)

(assert (=> b!4700714 m!5615507))

(declare-fun m!5615509 () Bool)

(assert (=> bm!328630 m!5615509))

(declare-fun m!5615511 () Bool)

(assert (=> b!4700715 m!5615511))

(declare-fun m!5615513 () Bool)

(assert (=> b!4700715 m!5615513))

(assert (=> b!4700715 m!5615503))

(declare-fun m!5615515 () Bool)

(assert (=> b!4700715 m!5615515))

(declare-fun m!5615517 () Bool)

(assert (=> b!4700715 m!5615517))

(assert (=> b!4700715 m!5615503))

(assert (=> b!4700715 m!5615511))

(declare-fun m!5615519 () Bool)

(assert (=> b!4700715 m!5615519))

(declare-fun m!5615521 () Bool)

(assert (=> b!4700715 m!5615521))

(declare-fun m!5615523 () Bool)

(assert (=> b!4700715 m!5615523))

(declare-fun m!5615525 () Bool)

(assert (=> b!4700715 m!5615525))

(declare-fun m!5615527 () Bool)

(assert (=> b!4700715 m!5615527))

(assert (=> b!4700715 m!5615523))

(declare-fun m!5615529 () Bool)

(assert (=> b!4700712 m!5615529))

(assert (=> b!4700554 d!1495002))

(declare-fun bs!1094933 () Bool)

(declare-fun d!1495078 () Bool)

(assert (= bs!1094933 (and d!1495078 start!476696)))

(declare-fun lambda!210188 () Int)

(assert (=> bs!1094933 (= lambda!210188 lambda!210091)))

(declare-fun lt!1863657 () ListMap!5045)

(assert (=> d!1495078 (invariantList!1444 (toList!5681 lt!1863657))))

(declare-fun e!2932323 () ListMap!5045)

(assert (=> d!1495078 (= lt!1863657 e!2932323)))

(declare-fun c!803524 () Bool)

(assert (=> d!1495078 (= c!803524 ((_ is Cons!52528) (t!359862 (toList!5682 lm!2023))))))

(assert (=> d!1495078 (forall!11397 (t!359862 (toList!5682 lm!2023)) lambda!210188)))

(assert (=> d!1495078 (= (extractMap!1922 (t!359862 (toList!5682 lm!2023))) lt!1863657)))

(declare-fun b!4700745 () Bool)

(assert (=> b!4700745 (= e!2932323 (addToMapMapFromBucket!1328 (_2!30284 (h!58807 (t!359862 (toList!5682 lm!2023)))) (extractMap!1922 (t!359862 (t!359862 (toList!5682 lm!2023))))))))

(declare-fun b!4700746 () Bool)

(assert (=> b!4700746 (= e!2932323 (ListMap!5046 Nil!52527))))

(assert (= (and d!1495078 c!803524) b!4700745))

(assert (= (and d!1495078 (not c!803524)) b!4700746))

(declare-fun m!5615545 () Bool)

(assert (=> d!1495078 m!5615545))

(declare-fun m!5615547 () Bool)

(assert (=> d!1495078 m!5615547))

(declare-fun m!5615549 () Bool)

(assert (=> b!4700745 m!5615549))

(assert (=> b!4700745 m!5615549))

(declare-fun m!5615551 () Bool)

(assert (=> b!4700745 m!5615551))

(assert (=> b!4700554 d!1495078))

(declare-fun d!1495086 () Bool)

(assert (=> d!1495086 (= (tail!8713 lm!2023) (ListLongMap!4212 (tail!8714 (toList!5682 lm!2023))))))

(declare-fun bs!1094934 () Bool)

(assert (= bs!1094934 d!1495086))

(declare-fun m!5615553 () Bool)

(assert (=> bs!1094934 m!5615553))

(assert (=> b!4700554 d!1495086))

(declare-fun bs!1094935 () Bool)

(declare-fun d!1495088 () Bool)

(assert (= bs!1094935 (and d!1495088 b!4700713)))

(declare-fun lambda!210191 () Int)

(assert (=> bs!1094935 (not (= lambda!210191 lambda!210179))))

(declare-fun bs!1094936 () Bool)

(assert (= bs!1094936 (and d!1495088 b!4700715)))

(assert (=> bs!1094936 (not (= lambda!210191 lambda!210180))))

(assert (=> bs!1094936 (not (= lambda!210191 lambda!210181))))

(declare-fun bs!1094937 () Bool)

(assert (= bs!1094937 (and d!1495088 d!1495002)))

(assert (=> bs!1094937 (not (= lambda!210191 lambda!210182))))

(assert (=> d!1495088 true))

(assert (=> d!1495088 true))

(assert (=> d!1495088 (= (allKeysSameHash!1722 newBucket!218 hash!405 hashF!1323) (forall!11399 newBucket!218 lambda!210191))))

(declare-fun bs!1094938 () Bool)

(assert (= bs!1094938 d!1495088))

(declare-fun m!5615569 () Bool)

(assert (=> bs!1094938 m!5615569))

(assert (=> b!4700555 d!1495088))

(declare-fun d!1495092 () Bool)

(declare-fun res!1984603 () Bool)

(declare-fun e!2932339 () Bool)

(assert (=> d!1495092 (=> res!1984603 e!2932339)))

(assert (=> d!1495092 (= res!1984603 (not ((_ is Cons!52527) oldBucket!34)))))

(assert (=> d!1495092 (= (noDuplicateKeys!1896 oldBucket!34) e!2932339)))

(declare-fun b!4700771 () Bool)

(declare-fun e!2932340 () Bool)

(assert (=> b!4700771 (= e!2932339 e!2932340)))

(declare-fun res!1984604 () Bool)

(assert (=> b!4700771 (=> (not res!1984604) (not e!2932340))))

(assert (=> b!4700771 (= res!1984604 (not (containsKey!3163 (t!359861 oldBucket!34) (_1!30283 (h!58806 oldBucket!34)))))))

(declare-fun b!4700772 () Bool)

(assert (=> b!4700772 (= e!2932340 (noDuplicateKeys!1896 (t!359861 oldBucket!34)))))

(assert (= (and d!1495092 (not res!1984603)) b!4700771))

(assert (= (and b!4700771 res!1984604) b!4700772))

(declare-fun m!5615571 () Bool)

(assert (=> b!4700771 m!5615571))

(declare-fun m!5615573 () Bool)

(assert (=> b!4700772 m!5615573))

(assert (=> b!4700553 d!1495092))

(declare-fun d!1495094 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!9260 (List!52651) (InoxSet tuple2!53978))

(assert (=> d!1495094 (= (eq!1055 lt!1863335 (+!2180 lt!1863341 (h!58806 oldBucket!34))) (= (content!9260 (toList!5681 lt!1863335)) (content!9260 (toList!5681 (+!2180 lt!1863341 (h!58806 oldBucket!34))))))))

(declare-fun bs!1094939 () Bool)

(assert (= bs!1094939 d!1495094))

(declare-fun m!5615575 () Bool)

(assert (=> bs!1094939 m!5615575))

(declare-fun m!5615577 () Bool)

(assert (=> bs!1094939 m!5615577))

(assert (=> b!4700564 d!1495094))

(declare-fun d!1495096 () Bool)

(declare-fun e!2932343 () Bool)

(assert (=> d!1495096 e!2932343))

(declare-fun res!1984609 () Bool)

(assert (=> d!1495096 (=> (not res!1984609) (not e!2932343))))

(declare-fun lt!1863670 () ListMap!5045)

(assert (=> d!1495096 (= res!1984609 (contains!15802 lt!1863670 (_1!30283 (h!58806 oldBucket!34))))))

(declare-fun lt!1863669 () List!52651)

(assert (=> d!1495096 (= lt!1863670 (ListMap!5046 lt!1863669))))

(declare-fun lt!1863667 () Unit!126116)

(declare-fun lt!1863668 () Unit!126116)

(assert (=> d!1495096 (= lt!1863667 lt!1863668)))

(declare-datatypes ((Option!12189 0))(
  ( (None!12188) (Some!12188 (v!46675 V!14136)) )
))
(declare-fun getValueByKey!1847 (List!52651 K!13890) Option!12189)

(assert (=> d!1495096 (= (getValueByKey!1847 lt!1863669 (_1!30283 (h!58806 oldBucket!34))) (Some!12188 (_2!30283 (h!58806 oldBucket!34))))))

(declare-fun lemmaContainsTupThenGetReturnValue!1034 (List!52651 K!13890 V!14136) Unit!126116)

(assert (=> d!1495096 (= lt!1863668 (lemmaContainsTupThenGetReturnValue!1034 lt!1863669 (_1!30283 (h!58806 oldBucket!34)) (_2!30283 (h!58806 oldBucket!34))))))

(declare-fun insertNoDuplicatedKeys!542 (List!52651 K!13890 V!14136) List!52651)

(assert (=> d!1495096 (= lt!1863669 (insertNoDuplicatedKeys!542 (toList!5681 lt!1863341) (_1!30283 (h!58806 oldBucket!34)) (_2!30283 (h!58806 oldBucket!34))))))

(assert (=> d!1495096 (= (+!2180 lt!1863341 (h!58806 oldBucket!34)) lt!1863670)))

(declare-fun b!4700777 () Bool)

(declare-fun res!1984610 () Bool)

(assert (=> b!4700777 (=> (not res!1984610) (not e!2932343))))

(assert (=> b!4700777 (= res!1984610 (= (getValueByKey!1847 (toList!5681 lt!1863670) (_1!30283 (h!58806 oldBucket!34))) (Some!12188 (_2!30283 (h!58806 oldBucket!34)))))))

(declare-fun b!4700778 () Bool)

(declare-fun contains!15807 (List!52651 tuple2!53978) Bool)

(assert (=> b!4700778 (= e!2932343 (contains!15807 (toList!5681 lt!1863670) (h!58806 oldBucket!34)))))

(assert (= (and d!1495096 res!1984609) b!4700777))

(assert (= (and b!4700777 res!1984610) b!4700778))

(declare-fun m!5615579 () Bool)

(assert (=> d!1495096 m!5615579))

(declare-fun m!5615581 () Bool)

(assert (=> d!1495096 m!5615581))

(declare-fun m!5615583 () Bool)

(assert (=> d!1495096 m!5615583))

(declare-fun m!5615585 () Bool)

(assert (=> d!1495096 m!5615585))

(declare-fun m!5615587 () Bool)

(assert (=> b!4700777 m!5615587))

(declare-fun m!5615589 () Bool)

(assert (=> b!4700778 m!5615589))

(assert (=> b!4700564 d!1495096))

(declare-fun d!1495098 () Bool)

(assert (=> d!1495098 (= (eq!1055 lt!1863340 (+!2180 lt!1863341 (h!58806 oldBucket!34))) (= (content!9260 (toList!5681 lt!1863340)) (content!9260 (toList!5681 (+!2180 lt!1863341 (h!58806 oldBucket!34))))))))

(declare-fun bs!1094940 () Bool)

(assert (= bs!1094940 d!1495098))

(declare-fun m!5615591 () Bool)

(assert (=> bs!1094940 m!5615591))

(assert (=> bs!1094940 m!5615577))

(assert (=> b!4700564 d!1495098))

(declare-fun d!1495100 () Bool)

(assert (=> d!1495100 (eq!1055 (+!2180 lt!1863351 (tuple2!53979 (_1!30283 (h!58806 oldBucket!34)) (_2!30283 (h!58806 oldBucket!34)))) (+!2180 lt!1863341 (tuple2!53979 (_1!30283 (h!58806 oldBucket!34)) (_2!30283 (h!58806 oldBucket!34)))))))

(declare-fun lt!1863673 () Unit!126116)

(declare-fun choose!32872 (ListMap!5045 ListMap!5045 K!13890 V!14136) Unit!126116)

(assert (=> d!1495100 (= lt!1863673 (choose!32872 lt!1863351 lt!1863341 (_1!30283 (h!58806 oldBucket!34)) (_2!30283 (h!58806 oldBucket!34))))))

(assert (=> d!1495100 (eq!1055 lt!1863351 lt!1863341)))

(assert (=> d!1495100 (= (lemmaAddToEqMapsPreservesEq!78 lt!1863351 lt!1863341 (_1!30283 (h!58806 oldBucket!34)) (_2!30283 (h!58806 oldBucket!34))) lt!1863673)))

(declare-fun bs!1094941 () Bool)

(assert (= bs!1094941 d!1495100))

(declare-fun m!5615593 () Bool)

(assert (=> bs!1094941 m!5615593))

(declare-fun m!5615595 () Bool)

(assert (=> bs!1094941 m!5615595))

(declare-fun m!5615597 () Bool)

(assert (=> bs!1094941 m!5615597))

(assert (=> bs!1094941 m!5615597))

(declare-fun m!5615599 () Bool)

(assert (=> bs!1094941 m!5615599))

(declare-fun m!5615601 () Bool)

(assert (=> bs!1094941 m!5615601))

(assert (=> bs!1094941 m!5615599))

(assert (=> b!4700564 d!1495100))

(declare-fun b!4700787 () Bool)

(declare-fun e!2932349 () List!52651)

(assert (=> b!4700787 (= e!2932349 (t!359861 lt!1863352))))

(declare-fun d!1495102 () Bool)

(declare-fun lt!1863676 () List!52651)

(assert (=> d!1495102 (not (containsKey!3163 lt!1863676 key!4653))))

(assert (=> d!1495102 (= lt!1863676 e!2932349)))

(declare-fun c!803531 () Bool)

(assert (=> d!1495102 (= c!803531 (and ((_ is Cons!52527) lt!1863352) (= (_1!30283 (h!58806 lt!1863352)) key!4653)))))

(assert (=> d!1495102 (noDuplicateKeys!1896 lt!1863352)))

(assert (=> d!1495102 (= (removePairForKey!1491 lt!1863352 key!4653) lt!1863676)))

(declare-fun b!4700789 () Bool)

(declare-fun e!2932348 () List!52651)

(assert (=> b!4700789 (= e!2932348 (Cons!52527 (h!58806 lt!1863352) (removePairForKey!1491 (t!359861 lt!1863352) key!4653)))))

(declare-fun b!4700788 () Bool)

(assert (=> b!4700788 (= e!2932349 e!2932348)))

(declare-fun c!803532 () Bool)

(assert (=> b!4700788 (= c!803532 ((_ is Cons!52527) lt!1863352))))

(declare-fun b!4700790 () Bool)

(assert (=> b!4700790 (= e!2932348 Nil!52527)))

(assert (= (and d!1495102 c!803531) b!4700787))

(assert (= (and d!1495102 (not c!803531)) b!4700788))

(assert (= (and b!4700788 c!803532) b!4700789))

(assert (= (and b!4700788 (not c!803532)) b!4700790))

(declare-fun m!5615603 () Bool)

(assert (=> d!1495102 m!5615603))

(declare-fun m!5615605 () Bool)

(assert (=> d!1495102 m!5615605))

(declare-fun m!5615607 () Bool)

(assert (=> b!4700789 m!5615607))

(assert (=> b!4700557 d!1495102))

(declare-fun d!1495104 () Bool)

(assert (=> d!1495104 (= (tail!8715 newBucket!218) (t!359861 newBucket!218))))

(assert (=> b!4700557 d!1495104))

(declare-fun d!1495106 () Bool)

(assert (=> d!1495106 (= (tail!8715 oldBucket!34) (t!359861 oldBucket!34))))

(assert (=> b!4700557 d!1495106))

(declare-fun d!1495108 () Bool)

(declare-fun res!1984615 () Bool)

(declare-fun e!2932354 () Bool)

(assert (=> d!1495108 (=> res!1984615 e!2932354)))

(assert (=> d!1495108 (= res!1984615 ((_ is Nil!52528) (toList!5682 lm!2023)))))

(assert (=> d!1495108 (= (forall!11397 (toList!5682 lm!2023) lambda!210091) e!2932354)))

(declare-fun b!4700795 () Bool)

(declare-fun e!2932355 () Bool)

(assert (=> b!4700795 (= e!2932354 e!2932355)))

(declare-fun res!1984616 () Bool)

(assert (=> b!4700795 (=> (not res!1984616) (not e!2932355))))

(declare-fun dynLambda!21746 (Int tuple2!53980) Bool)

(assert (=> b!4700795 (= res!1984616 (dynLambda!21746 lambda!210091 (h!58807 (toList!5682 lm!2023))))))

(declare-fun b!4700796 () Bool)

(assert (=> b!4700796 (= e!2932355 (forall!11397 (t!359862 (toList!5682 lm!2023)) lambda!210091))))

(assert (= (and d!1495108 (not res!1984615)) b!4700795))

(assert (= (and b!4700795 res!1984616) b!4700796))

(declare-fun b_lambda!177359 () Bool)

(assert (=> (not b_lambda!177359) (not b!4700795)))

(declare-fun m!5615609 () Bool)

(assert (=> b!4700795 m!5615609))

(declare-fun m!5615611 () Bool)

(assert (=> b!4700796 m!5615611))

(assert (=> start!476696 d!1495108))

(declare-fun d!1495110 () Bool)

(declare-fun isStrictlySorted!682 (List!52652) Bool)

(assert (=> d!1495110 (= (inv!67764 lm!2023) (isStrictlySorted!682 (toList!5682 lm!2023)))))

(declare-fun bs!1094942 () Bool)

(assert (= bs!1094942 d!1495110))

(declare-fun m!5615613 () Bool)

(assert (=> bs!1094942 m!5615613))

(assert (=> start!476696 d!1495110))

(declare-fun d!1495112 () Bool)

(declare-fun res!1984617 () Bool)

(declare-fun e!2932356 () Bool)

(assert (=> d!1495112 (=> res!1984617 e!2932356)))

(assert (=> d!1495112 (= res!1984617 ((_ is Nil!52528) lt!1863344))))

(assert (=> d!1495112 (= (forall!11397 lt!1863344 lambda!210091) e!2932356)))

(declare-fun b!4700797 () Bool)

(declare-fun e!2932357 () Bool)

(assert (=> b!4700797 (= e!2932356 e!2932357)))

(declare-fun res!1984618 () Bool)

(assert (=> b!4700797 (=> (not res!1984618) (not e!2932357))))

(assert (=> b!4700797 (= res!1984618 (dynLambda!21746 lambda!210091 (h!58807 lt!1863344)))))

(declare-fun b!4700798 () Bool)

(assert (=> b!4700798 (= e!2932357 (forall!11397 (t!359862 lt!1863344) lambda!210091))))

(assert (= (and d!1495112 (not res!1984617)) b!4700797))

(assert (= (and b!4700797 res!1984618) b!4700798))

(declare-fun b_lambda!177361 () Bool)

(assert (=> (not b_lambda!177361) (not b!4700797)))

(declare-fun m!5615615 () Bool)

(assert (=> b!4700797 m!5615615))

(declare-fun m!5615617 () Bool)

(assert (=> b!4700798 m!5615617))

(assert (=> b!4700567 d!1495112))

(declare-fun d!1495114 () Bool)

(assert (=> d!1495114 (= (eq!1055 (extractMap!1922 (Cons!52528 lt!1863342 lt!1863357)) (-!700 (extractMap!1922 (Cons!52528 lt!1863332 lt!1863357)) key!4653)) (= (content!9260 (toList!5681 (extractMap!1922 (Cons!52528 lt!1863342 lt!1863357)))) (content!9260 (toList!5681 (-!700 (extractMap!1922 (Cons!52528 lt!1863332 lt!1863357)) key!4653)))))))

(declare-fun bs!1094943 () Bool)

(assert (= bs!1094943 d!1495114))

(declare-fun m!5615619 () Bool)

(assert (=> bs!1094943 m!5615619))

(declare-fun m!5615621 () Bool)

(assert (=> bs!1094943 m!5615621))

(assert (=> b!4700556 d!1495114))

(declare-fun bs!1094944 () Bool)

(declare-fun d!1495116 () Bool)

(assert (= bs!1094944 (and d!1495116 start!476696)))

(declare-fun lambda!210194 () Int)

(assert (=> bs!1094944 (= lambda!210194 lambda!210091)))

(declare-fun bs!1094945 () Bool)

(assert (= bs!1094945 (and d!1495116 d!1495078)))

(assert (=> bs!1094945 (= lambda!210194 lambda!210188)))

(declare-fun lt!1863677 () ListMap!5045)

(assert (=> d!1495116 (invariantList!1444 (toList!5681 lt!1863677))))

(declare-fun e!2932358 () ListMap!5045)

(assert (=> d!1495116 (= lt!1863677 e!2932358)))

(declare-fun c!803533 () Bool)

(assert (=> d!1495116 (= c!803533 ((_ is Cons!52528) (Cons!52528 lt!1863342 lt!1863357)))))

(assert (=> d!1495116 (forall!11397 (Cons!52528 lt!1863342 lt!1863357) lambda!210194)))

(assert (=> d!1495116 (= (extractMap!1922 (Cons!52528 lt!1863342 lt!1863357)) lt!1863677)))

(declare-fun b!4700799 () Bool)

(assert (=> b!4700799 (= e!2932358 (addToMapMapFromBucket!1328 (_2!30284 (h!58807 (Cons!52528 lt!1863342 lt!1863357))) (extractMap!1922 (t!359862 (Cons!52528 lt!1863342 lt!1863357)))))))

(declare-fun b!4700800 () Bool)

(assert (=> b!4700800 (= e!2932358 (ListMap!5046 Nil!52527))))

(assert (= (and d!1495116 c!803533) b!4700799))

(assert (= (and d!1495116 (not c!803533)) b!4700800))

(declare-fun m!5615623 () Bool)

(assert (=> d!1495116 m!5615623))

(declare-fun m!5615625 () Bool)

(assert (=> d!1495116 m!5615625))

(declare-fun m!5615627 () Bool)

(assert (=> b!4700799 m!5615627))

(assert (=> b!4700799 m!5615627))

(declare-fun m!5615629 () Bool)

(assert (=> b!4700799 m!5615629))

(assert (=> b!4700556 d!1495116))

(declare-fun d!1495118 () Bool)

(declare-fun e!2932367 () Bool)

(assert (=> d!1495118 e!2932367))

(declare-fun res!1984633 () Bool)

(assert (=> d!1495118 (=> (not res!1984633) (not e!2932367))))

(declare-fun lt!1863704 () ListMap!5045)

(assert (=> d!1495118 (= res!1984633 (not (contains!15802 lt!1863704 key!4653)))))

(declare-fun removePresrvNoDuplicatedKeys!364 (List!52651 K!13890) List!52651)

(assert (=> d!1495118 (= lt!1863704 (ListMap!5046 (removePresrvNoDuplicatedKeys!364 (toList!5681 (extractMap!1922 (Cons!52528 lt!1863332 lt!1863357))) key!4653)))))

(assert (=> d!1495118 (= (-!700 (extractMap!1922 (Cons!52528 lt!1863332 lt!1863357)) key!4653) lt!1863704)))

(declare-fun b!4700815 () Bool)

(declare-datatypes ((List!52654 0))(
  ( (Nil!52530) (Cons!52530 (h!58811 K!13890) (t!359866 List!52654)) )
))
(declare-fun content!9261 (List!52654) (InoxSet K!13890))

(declare-fun keys!18789 (ListMap!5045) List!52654)

(assert (=> b!4700815 (= e!2932367 (= ((_ map and) (content!9261 (keys!18789 (extractMap!1922 (Cons!52528 lt!1863332 lt!1863357)))) ((_ map not) (store ((as const (Array K!13890 Bool)) false) key!4653 true))) (content!9261 (keys!18789 lt!1863704))))))

(assert (= (and d!1495118 res!1984633) b!4700815))

(declare-fun m!5615631 () Bool)

(assert (=> d!1495118 m!5615631))

(declare-fun m!5615633 () Bool)

(assert (=> d!1495118 m!5615633))

(declare-fun m!5615635 () Bool)

(assert (=> b!4700815 m!5615635))

(declare-fun m!5615637 () Bool)

(assert (=> b!4700815 m!5615637))

(declare-fun m!5615639 () Bool)

(assert (=> b!4700815 m!5615639))

(declare-fun m!5615641 () Bool)

(assert (=> b!4700815 m!5615641))

(assert (=> b!4700815 m!5615085))

(assert (=> b!4700815 m!5615639))

(assert (=> b!4700815 m!5615635))

(declare-fun m!5615647 () Bool)

(assert (=> b!4700815 m!5615647))

(assert (=> b!4700556 d!1495118))

(declare-fun d!1495120 () Bool)

(assert (=> d!1495120 (= (tail!8714 lt!1863344) (t!359862 lt!1863344))))

(assert (=> b!4700556 d!1495120))

(declare-fun bs!1094953 () Bool)

(declare-fun d!1495122 () Bool)

(assert (= bs!1094953 (and d!1495122 start!476696)))

(declare-fun lambda!210200 () Int)

(assert (=> bs!1094953 (= lambda!210200 lambda!210091)))

(declare-fun bs!1094954 () Bool)

(assert (= bs!1094954 (and d!1495122 d!1495078)))

(assert (=> bs!1094954 (= lambda!210200 lambda!210188)))

(declare-fun bs!1094955 () Bool)

(assert (= bs!1094955 (and d!1495122 d!1495116)))

(assert (=> bs!1094955 (= lambda!210200 lambda!210194)))

(declare-fun lt!1863705 () ListMap!5045)

(assert (=> d!1495122 (invariantList!1444 (toList!5681 lt!1863705))))

(declare-fun e!2932368 () ListMap!5045)

(assert (=> d!1495122 (= lt!1863705 e!2932368)))

(declare-fun c!803534 () Bool)

(assert (=> d!1495122 (= c!803534 ((_ is Cons!52528) (Cons!52528 lt!1863332 lt!1863357)))))

(assert (=> d!1495122 (forall!11397 (Cons!52528 lt!1863332 lt!1863357) lambda!210200)))

(assert (=> d!1495122 (= (extractMap!1922 (Cons!52528 lt!1863332 lt!1863357)) lt!1863705)))

(declare-fun b!4700816 () Bool)

(assert (=> b!4700816 (= e!2932368 (addToMapMapFromBucket!1328 (_2!30284 (h!58807 (Cons!52528 lt!1863332 lt!1863357))) (extractMap!1922 (t!359862 (Cons!52528 lt!1863332 lt!1863357)))))))

(declare-fun b!4700817 () Bool)

(assert (=> b!4700817 (= e!2932368 (ListMap!5046 Nil!52527))))

(assert (= (and d!1495122 c!803534) b!4700816))

(assert (= (and d!1495122 (not c!803534)) b!4700817))

(declare-fun m!5615667 () Bool)

(assert (=> d!1495122 m!5615667))

(declare-fun m!5615669 () Bool)

(assert (=> d!1495122 m!5615669))

(declare-fun m!5615671 () Bool)

(assert (=> b!4700816 m!5615671))

(assert (=> b!4700816 m!5615671))

(declare-fun m!5615673 () Bool)

(assert (=> b!4700816 m!5615673))

(assert (=> b!4700556 d!1495122))

(declare-fun d!1495126 () Bool)

(assert (=> d!1495126 (= (eq!1055 lt!1863341 lt!1863351) (= (content!9260 (toList!5681 lt!1863341)) (content!9260 (toList!5681 lt!1863351))))))

(declare-fun bs!1094956 () Bool)

(assert (= bs!1094956 d!1495126))

(declare-fun m!5615675 () Bool)

(assert (=> bs!1094956 m!5615675))

(declare-fun m!5615677 () Bool)

(assert (=> bs!1094956 m!5615677))

(assert (=> b!4700556 d!1495126))

(declare-fun d!1495128 () Bool)

(declare-fun e!2932369 () Bool)

(assert (=> d!1495128 e!2932369))

(declare-fun res!1984634 () Bool)

(assert (=> d!1495128 (=> (not res!1984634) (not e!2932369))))

(declare-fun lt!1863706 () ListMap!5045)

(assert (=> d!1495128 (= res!1984634 (not (contains!15802 lt!1863706 key!4653)))))

(assert (=> d!1495128 (= lt!1863706 (ListMap!5046 (removePresrvNoDuplicatedKeys!364 (toList!5681 lt!1863345) key!4653)))))

(assert (=> d!1495128 (= (-!700 lt!1863345 key!4653) lt!1863706)))

(declare-fun b!4700818 () Bool)

(assert (=> b!4700818 (= e!2932369 (= ((_ map and) (content!9261 (keys!18789 lt!1863345)) ((_ map not) (store ((as const (Array K!13890 Bool)) false) key!4653 true))) (content!9261 (keys!18789 lt!1863706))))))

(assert (= (and d!1495128 res!1984634) b!4700818))

(declare-fun m!5615679 () Bool)

(assert (=> d!1495128 m!5615679))

(declare-fun m!5615681 () Bool)

(assert (=> d!1495128 m!5615681))

(declare-fun m!5615683 () Bool)

(assert (=> b!4700818 m!5615683))

(assert (=> b!4700818 m!5615637))

(declare-fun m!5615685 () Bool)

(assert (=> b!4700818 m!5615685))

(declare-fun m!5615687 () Bool)

(assert (=> b!4700818 m!5615687))

(assert (=> b!4700818 m!5615685))

(assert (=> b!4700818 m!5615683))

(declare-fun m!5615689 () Bool)

(assert (=> b!4700818 m!5615689))

(assert (=> b!4700556 d!1495128))

(declare-fun bs!1094957 () Bool)

(declare-fun d!1495130 () Bool)

(assert (= bs!1094957 (and d!1495130 start!476696)))

(declare-fun lambda!210201 () Int)

(assert (=> bs!1094957 (= lambda!210201 lambda!210091)))

(declare-fun bs!1094959 () Bool)

(assert (= bs!1094959 (and d!1495130 d!1495078)))

(assert (=> bs!1094959 (= lambda!210201 lambda!210188)))

(declare-fun bs!1094960 () Bool)

(assert (= bs!1094960 (and d!1495130 d!1495116)))

(assert (=> bs!1094960 (= lambda!210201 lambda!210194)))

(declare-fun bs!1094961 () Bool)

(assert (= bs!1094961 (and d!1495130 d!1495122)))

(assert (=> bs!1094961 (= lambda!210201 lambda!210200)))

(declare-fun lt!1863709 () ListMap!5045)

(assert (=> d!1495130 (invariantList!1444 (toList!5681 lt!1863709))))

(declare-fun e!2932370 () ListMap!5045)

(assert (=> d!1495130 (= lt!1863709 e!2932370)))

(declare-fun c!803535 () Bool)

(assert (=> d!1495130 (= c!803535 ((_ is Cons!52528) (Cons!52528 lt!1863342 (t!359862 (toList!5682 lm!2023)))))))

(assert (=> d!1495130 (forall!11397 (Cons!52528 lt!1863342 (t!359862 (toList!5682 lm!2023))) lambda!210201)))

(assert (=> d!1495130 (= (extractMap!1922 (Cons!52528 lt!1863342 (t!359862 (toList!5682 lm!2023)))) lt!1863709)))

(declare-fun b!4700819 () Bool)

(assert (=> b!4700819 (= e!2932370 (addToMapMapFromBucket!1328 (_2!30284 (h!58807 (Cons!52528 lt!1863342 (t!359862 (toList!5682 lm!2023))))) (extractMap!1922 (t!359862 (Cons!52528 lt!1863342 (t!359862 (toList!5682 lm!2023)))))))))

(declare-fun b!4700820 () Bool)

(assert (=> b!4700820 (= e!2932370 (ListMap!5046 Nil!52527))))

(assert (= (and d!1495130 c!803535) b!4700819))

(assert (= (and d!1495130 (not c!803535)) b!4700820))

(declare-fun m!5615693 () Bool)

(assert (=> d!1495130 m!5615693))

(declare-fun m!5615695 () Bool)

(assert (=> d!1495130 m!5615695))

(declare-fun m!5615697 () Bool)

(assert (=> b!4700819 m!5615697))

(assert (=> b!4700819 m!5615697))

(declare-fun m!5615699 () Bool)

(assert (=> b!4700819 m!5615699))

(assert (=> b!4700556 d!1495130))

(declare-fun bs!1094974 () Bool)

(declare-fun d!1495134 () Bool)

(assert (= bs!1094974 (and d!1495134 d!1495130)))

(declare-fun lambda!210205 () Int)

(assert (=> bs!1094974 (= lambda!210205 lambda!210201)))

(declare-fun bs!1094975 () Bool)

(assert (= bs!1094975 (and d!1495134 start!476696)))

(assert (=> bs!1094975 (= lambda!210205 lambda!210091)))

(declare-fun bs!1094976 () Bool)

(assert (= bs!1094976 (and d!1495134 d!1495122)))

(assert (=> bs!1094976 (= lambda!210205 lambda!210200)))

(declare-fun bs!1094977 () Bool)

(assert (= bs!1094977 (and d!1495134 d!1495116)))

(assert (=> bs!1094977 (= lambda!210205 lambda!210194)))

(declare-fun bs!1094978 () Bool)

(assert (= bs!1094978 (and d!1495134 d!1495078)))

(assert (=> bs!1094978 (= lambda!210205 lambda!210188)))

(assert (=> d!1495134 (eq!1055 (extractMap!1922 (Cons!52528 (tuple2!53981 hash!405 lt!1863355) (tail!8714 (toList!5682 lt!1863337)))) (-!700 (extractMap!1922 (Cons!52528 (tuple2!53981 hash!405 (t!359861 oldBucket!34)) (tail!8714 (toList!5682 lt!1863337)))) key!4653))))

(declare-fun lt!1863724 () Unit!126116)

(declare-fun choose!32875 (ListLongMap!4211 (_ BitVec 64) List!52651 List!52651 K!13890 Hashable!6265) Unit!126116)

(assert (=> d!1495134 (= lt!1863724 (choose!32875 lt!1863337 hash!405 (t!359861 oldBucket!34) lt!1863355 key!4653 hashF!1323))))

(assert (=> d!1495134 (forall!11397 (toList!5682 lt!1863337) lambda!210205)))

(assert (=> d!1495134 (= (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMapOneHashIsHead!70 lt!1863337 hash!405 (t!359861 oldBucket!34) lt!1863355 key!4653 hashF!1323) lt!1863724)))

(declare-fun bs!1094979 () Bool)

(assert (= bs!1094979 d!1495134))

(declare-fun m!5615741 () Bool)

(assert (=> bs!1094979 m!5615741))

(declare-fun m!5615743 () Bool)

(assert (=> bs!1094979 m!5615743))

(declare-fun m!5615745 () Bool)

(assert (=> bs!1094979 m!5615745))

(assert (=> bs!1094979 m!5615743))

(declare-fun m!5615747 () Bool)

(assert (=> bs!1094979 m!5615747))

(declare-fun m!5615749 () Bool)

(assert (=> bs!1094979 m!5615749))

(assert (=> bs!1094979 m!5615747))

(declare-fun m!5615751 () Bool)

(assert (=> bs!1094979 m!5615751))

(declare-fun m!5615753 () Bool)

(assert (=> bs!1094979 m!5615753))

(assert (=> bs!1094979 m!5615749))

(assert (=> b!4700556 d!1495134))

(declare-fun d!1495158 () Bool)

(assert (=> d!1495158 (= (eq!1055 lt!1863349 lt!1863335) (= (content!9260 (toList!5681 lt!1863349)) (content!9260 (toList!5681 lt!1863335))))))

(declare-fun bs!1094980 () Bool)

(assert (= bs!1094980 d!1495158))

(declare-fun m!5615755 () Bool)

(assert (=> bs!1094980 m!5615755))

(assert (=> bs!1094980 m!5615575))

(assert (=> b!4700549 d!1495158))

(declare-fun b!4700839 () Bool)

(declare-fun e!2932387 () List!52651)

(assert (=> b!4700839 (= e!2932387 (t!359861 (t!359861 oldBucket!34)))))

(declare-fun d!1495160 () Bool)

(declare-fun lt!1863725 () List!52651)

(assert (=> d!1495160 (not (containsKey!3163 lt!1863725 key!4653))))

(assert (=> d!1495160 (= lt!1863725 e!2932387)))

(declare-fun c!803537 () Bool)

(assert (=> d!1495160 (= c!803537 (and ((_ is Cons!52527) (t!359861 oldBucket!34)) (= (_1!30283 (h!58806 (t!359861 oldBucket!34))) key!4653)))))

(assert (=> d!1495160 (noDuplicateKeys!1896 (t!359861 oldBucket!34))))

(assert (=> d!1495160 (= (removePairForKey!1491 (t!359861 oldBucket!34) key!4653) lt!1863725)))

(declare-fun b!4700841 () Bool)

(declare-fun e!2932386 () List!52651)

(assert (=> b!4700841 (= e!2932386 (Cons!52527 (h!58806 (t!359861 oldBucket!34)) (removePairForKey!1491 (t!359861 (t!359861 oldBucket!34)) key!4653)))))

(declare-fun b!4700840 () Bool)

(assert (=> b!4700840 (= e!2932387 e!2932386)))

(declare-fun c!803538 () Bool)

(assert (=> b!4700840 (= c!803538 ((_ is Cons!52527) (t!359861 oldBucket!34)))))

(declare-fun b!4700842 () Bool)

(assert (=> b!4700842 (= e!2932386 Nil!52527)))

(assert (= (and d!1495160 c!803537) b!4700839))

(assert (= (and d!1495160 (not c!803537)) b!4700840))

(assert (= (and b!4700840 c!803538) b!4700841))

(assert (= (and b!4700840 (not c!803538)) b!4700842))

(declare-fun m!5615757 () Bool)

(assert (=> d!1495160 m!5615757))

(assert (=> d!1495160 m!5615573))

(declare-fun m!5615759 () Bool)

(assert (=> b!4700841 m!5615759))

(assert (=> b!4700570 d!1495160))

(declare-fun b!4700843 () Bool)

(declare-fun e!2932389 () List!52651)

(assert (=> b!4700843 (= e!2932389 (t!359861 oldBucket!34))))

(declare-fun d!1495162 () Bool)

(declare-fun lt!1863726 () List!52651)

(assert (=> d!1495162 (not (containsKey!3163 lt!1863726 key!4653))))

(assert (=> d!1495162 (= lt!1863726 e!2932389)))

(declare-fun c!803539 () Bool)

(assert (=> d!1495162 (= c!803539 (and ((_ is Cons!52527) oldBucket!34) (= (_1!30283 (h!58806 oldBucket!34)) key!4653)))))

(assert (=> d!1495162 (noDuplicateKeys!1896 oldBucket!34)))

(assert (=> d!1495162 (= (removePairForKey!1491 oldBucket!34 key!4653) lt!1863726)))

(declare-fun b!4700845 () Bool)

(declare-fun e!2932388 () List!52651)

(assert (=> b!4700845 (= e!2932388 (Cons!52527 (h!58806 oldBucket!34) (removePairForKey!1491 (t!359861 oldBucket!34) key!4653)))))

(declare-fun b!4700844 () Bool)

(assert (=> b!4700844 (= e!2932389 e!2932388)))

(declare-fun c!803540 () Bool)

(assert (=> b!4700844 (= c!803540 ((_ is Cons!52527) oldBucket!34))))

(declare-fun b!4700846 () Bool)

(assert (=> b!4700846 (= e!2932388 Nil!52527)))

(assert (= (and d!1495162 c!803539) b!4700843))

(assert (= (and d!1495162 (not c!803539)) b!4700844))

(assert (= (and b!4700844 c!803540) b!4700845))

(assert (= (and b!4700844 (not c!803540)) b!4700846))

(declare-fun m!5615761 () Bool)

(assert (=> d!1495162 m!5615761))

(assert (=> d!1495162 m!5615139))

(assert (=> b!4700845 m!5615019))

(assert (=> b!4700560 d!1495162))

(declare-fun d!1495164 () Bool)

(declare-fun e!2932390 () Bool)

(assert (=> d!1495164 e!2932390))

(declare-fun res!1984650 () Bool)

(assert (=> d!1495164 (=> (not res!1984650) (not e!2932390))))

(declare-fun lt!1863730 () ListMap!5045)

(assert (=> d!1495164 (= res!1984650 (contains!15802 lt!1863730 (_1!30283 (h!58806 oldBucket!34))))))

(declare-fun lt!1863729 () List!52651)

(assert (=> d!1495164 (= lt!1863730 (ListMap!5046 lt!1863729))))

(declare-fun lt!1863727 () Unit!126116)

(declare-fun lt!1863728 () Unit!126116)

(assert (=> d!1495164 (= lt!1863727 lt!1863728)))

(assert (=> d!1495164 (= (getValueByKey!1847 lt!1863729 (_1!30283 (h!58806 oldBucket!34))) (Some!12188 (_2!30283 (h!58806 oldBucket!34))))))

(assert (=> d!1495164 (= lt!1863728 (lemmaContainsTupThenGetReturnValue!1034 lt!1863729 (_1!30283 (h!58806 oldBucket!34)) (_2!30283 (h!58806 oldBucket!34))))))

(assert (=> d!1495164 (= lt!1863729 (insertNoDuplicatedKeys!542 (toList!5681 lt!1863351) (_1!30283 (h!58806 oldBucket!34)) (_2!30283 (h!58806 oldBucket!34))))))

(assert (=> d!1495164 (= (+!2180 lt!1863351 (h!58806 oldBucket!34)) lt!1863730)))

(declare-fun b!4700847 () Bool)

(declare-fun res!1984651 () Bool)

(assert (=> b!4700847 (=> (not res!1984651) (not e!2932390))))

(assert (=> b!4700847 (= res!1984651 (= (getValueByKey!1847 (toList!5681 lt!1863730) (_1!30283 (h!58806 oldBucket!34))) (Some!12188 (_2!30283 (h!58806 oldBucket!34)))))))

(declare-fun b!4700848 () Bool)

(assert (=> b!4700848 (= e!2932390 (contains!15807 (toList!5681 lt!1863730) (h!58806 oldBucket!34)))))

(assert (= (and d!1495164 res!1984650) b!4700847))

(assert (= (and b!4700847 res!1984651) b!4700848))

(declare-fun m!5615763 () Bool)

(assert (=> d!1495164 m!5615763))

(declare-fun m!5615765 () Bool)

(assert (=> d!1495164 m!5615765))

(declare-fun m!5615767 () Bool)

(assert (=> d!1495164 m!5615767))

(declare-fun m!5615769 () Bool)

(assert (=> d!1495164 m!5615769))

(declare-fun m!5615771 () Bool)

(assert (=> b!4700847 m!5615771))

(declare-fun m!5615773 () Bool)

(assert (=> b!4700848 m!5615773))

(assert (=> b!4700569 d!1495164))

(declare-fun d!1495166 () Bool)

(assert (=> d!1495166 (= (-!700 (+!2180 lt!1863345 (tuple2!53979 (_1!30283 (h!58806 oldBucket!34)) (_2!30283 (h!58806 oldBucket!34)))) key!4653) (+!2180 (-!700 lt!1863345 key!4653) (tuple2!53979 (_1!30283 (h!58806 oldBucket!34)) (_2!30283 (h!58806 oldBucket!34)))))))

(declare-fun lt!1863736 () Unit!126116)

(declare-fun choose!32876 (ListMap!5045 K!13890 V!14136 K!13890) Unit!126116)

(assert (=> d!1495166 (= lt!1863736 (choose!32876 lt!1863345 (_1!30283 (h!58806 oldBucket!34)) (_2!30283 (h!58806 oldBucket!34)) key!4653))))

(assert (=> d!1495166 (not (= (_1!30283 (h!58806 oldBucket!34)) key!4653))))

(assert (=> d!1495166 (= (addRemoveCommutativeForDiffKeys!101 lt!1863345 (_1!30283 (h!58806 oldBucket!34)) (_2!30283 (h!58806 oldBucket!34)) key!4653) lt!1863736)))

(declare-fun bs!1094983 () Bool)

(assert (= bs!1094983 d!1495166))

(declare-fun m!5615775 () Bool)

(assert (=> bs!1094983 m!5615775))

(assert (=> bs!1094983 m!5615073))

(declare-fun m!5615777 () Bool)

(assert (=> bs!1094983 m!5615777))

(assert (=> bs!1094983 m!5615073))

(declare-fun m!5615779 () Bool)

(assert (=> bs!1094983 m!5615779))

(declare-fun m!5615781 () Bool)

(assert (=> bs!1094983 m!5615781))

(assert (=> bs!1094983 m!5615779))

(assert (=> b!4700569 d!1495166))

(declare-fun d!1495168 () Bool)

(declare-fun e!2932391 () Bool)

(assert (=> d!1495168 e!2932391))

(declare-fun res!1984652 () Bool)

(assert (=> d!1495168 (=> (not res!1984652) (not e!2932391))))

(declare-fun lt!1863737 () ListMap!5045)

(assert (=> d!1495168 (= res!1984652 (not (contains!15802 lt!1863737 key!4653)))))

(assert (=> d!1495168 (= lt!1863737 (ListMap!5046 (removePresrvNoDuplicatedKeys!364 (toList!5681 lt!1863353) key!4653)))))

(assert (=> d!1495168 (= (-!700 lt!1863353 key!4653) lt!1863737)))

(declare-fun b!4700849 () Bool)

(assert (=> b!4700849 (= e!2932391 (= ((_ map and) (content!9261 (keys!18789 lt!1863353)) ((_ map not) (store ((as const (Array K!13890 Bool)) false) key!4653 true))) (content!9261 (keys!18789 lt!1863737))))))

(assert (= (and d!1495168 res!1984652) b!4700849))

(declare-fun m!5615783 () Bool)

(assert (=> d!1495168 m!5615783))

(declare-fun m!5615785 () Bool)

(assert (=> d!1495168 m!5615785))

(declare-fun m!5615787 () Bool)

(assert (=> b!4700849 m!5615787))

(assert (=> b!4700849 m!5615637))

(declare-fun m!5615789 () Bool)

(assert (=> b!4700849 m!5615789))

(declare-fun m!5615791 () Bool)

(assert (=> b!4700849 m!5615791))

(assert (=> b!4700849 m!5615789))

(assert (=> b!4700849 m!5615787))

(declare-fun m!5615793 () Bool)

(assert (=> b!4700849 m!5615793))

(assert (=> b!4700569 d!1495168))

(declare-fun d!1495170 () Bool)

(declare-fun e!2932392 () Bool)

(assert (=> d!1495170 e!2932392))

(declare-fun res!1984653 () Bool)

(assert (=> d!1495170 (=> (not res!1984653) (not e!2932392))))

(declare-fun lt!1863741 () ListMap!5045)

(assert (=> d!1495170 (= res!1984653 (contains!15802 lt!1863741 (_1!30283 (h!58806 oldBucket!34))))))

(declare-fun lt!1863740 () List!52651)

(assert (=> d!1495170 (= lt!1863741 (ListMap!5046 lt!1863740))))

(declare-fun lt!1863738 () Unit!126116)

(declare-fun lt!1863739 () Unit!126116)

(assert (=> d!1495170 (= lt!1863738 lt!1863739)))

(assert (=> d!1495170 (= (getValueByKey!1847 lt!1863740 (_1!30283 (h!58806 oldBucket!34))) (Some!12188 (_2!30283 (h!58806 oldBucket!34))))))

(assert (=> d!1495170 (= lt!1863739 (lemmaContainsTupThenGetReturnValue!1034 lt!1863740 (_1!30283 (h!58806 oldBucket!34)) (_2!30283 (h!58806 oldBucket!34))))))

(assert (=> d!1495170 (= lt!1863740 (insertNoDuplicatedKeys!542 (toList!5681 lt!1863345) (_1!30283 (h!58806 oldBucket!34)) (_2!30283 (h!58806 oldBucket!34))))))

(assert (=> d!1495170 (= (+!2180 lt!1863345 (h!58806 oldBucket!34)) lt!1863741)))

(declare-fun b!4700850 () Bool)

(declare-fun res!1984654 () Bool)

(assert (=> b!4700850 (=> (not res!1984654) (not e!2932392))))

(assert (=> b!4700850 (= res!1984654 (= (getValueByKey!1847 (toList!5681 lt!1863741) (_1!30283 (h!58806 oldBucket!34))) (Some!12188 (_2!30283 (h!58806 oldBucket!34)))))))

(declare-fun b!4700851 () Bool)

(assert (=> b!4700851 (= e!2932392 (contains!15807 (toList!5681 lt!1863741) (h!58806 oldBucket!34)))))

(assert (= (and d!1495170 res!1984653) b!4700850))

(assert (= (and b!4700850 res!1984654) b!4700851))

(declare-fun m!5615795 () Bool)

(assert (=> d!1495170 m!5615795))

(declare-fun m!5615797 () Bool)

(assert (=> d!1495170 m!5615797))

(declare-fun m!5615799 () Bool)

(assert (=> d!1495170 m!5615799))

(declare-fun m!5615801 () Bool)

(assert (=> d!1495170 m!5615801))

(declare-fun m!5615803 () Bool)

(assert (=> b!4700850 m!5615803))

(declare-fun m!5615805 () Bool)

(assert (=> b!4700851 m!5615805))

(assert (=> b!4700569 d!1495170))

(declare-fun d!1495172 () Bool)

(declare-fun e!2932393 () Bool)

(assert (=> d!1495172 e!2932393))

(declare-fun res!1984655 () Bool)

(assert (=> d!1495172 (=> (not res!1984655) (not e!2932393))))

(declare-fun lt!1863742 () ListMap!5045)

(assert (=> d!1495172 (= res!1984655 (not (contains!15802 lt!1863742 key!4653)))))

(assert (=> d!1495172 (= lt!1863742 (ListMap!5046 (removePresrvNoDuplicatedKeys!364 (toList!5681 (+!2180 lt!1863345 (h!58806 oldBucket!34))) key!4653)))))

(assert (=> d!1495172 (= (-!700 (+!2180 lt!1863345 (h!58806 oldBucket!34)) key!4653) lt!1863742)))

(declare-fun b!4700852 () Bool)

(assert (=> b!4700852 (= e!2932393 (= ((_ map and) (content!9261 (keys!18789 (+!2180 lt!1863345 (h!58806 oldBucket!34)))) ((_ map not) (store ((as const (Array K!13890 Bool)) false) key!4653 true))) (content!9261 (keys!18789 lt!1863742))))))

(assert (= (and d!1495172 res!1984655) b!4700852))

(declare-fun m!5615813 () Bool)

(assert (=> d!1495172 m!5615813))

(declare-fun m!5615815 () Bool)

(assert (=> d!1495172 m!5615815))

(declare-fun m!5615819 () Bool)

(assert (=> b!4700852 m!5615819))

(assert (=> b!4700852 m!5615637))

(declare-fun m!5615821 () Bool)

(assert (=> b!4700852 m!5615821))

(declare-fun m!5615823 () Bool)

(assert (=> b!4700852 m!5615823))

(assert (=> b!4700852 m!5615063))

(assert (=> b!4700852 m!5615821))

(assert (=> b!4700852 m!5615819))

(declare-fun m!5615825 () Bool)

(assert (=> b!4700852 m!5615825))

(assert (=> b!4700569 d!1495172))

(declare-fun d!1495174 () Bool)

(assert (=> d!1495174 (contains!15803 (toList!5682 lm!2023) (tuple2!53981 lt!1863347 lt!1863328))))

(declare-fun lt!1863747 () Unit!126116)

(declare-fun choose!32877 (ListLongMap!4211 (_ BitVec 64) List!52651) Unit!126116)

(assert (=> d!1495174 (= lt!1863747 (choose!32877 lm!2023 lt!1863347 lt!1863328))))

(assert (=> d!1495174 (contains!15804 lm!2023 lt!1863347)))

(assert (=> d!1495174 (= (lemmaGetValueImpliesTupleContained!305 lm!2023 lt!1863347 lt!1863328) lt!1863747)))

(declare-fun bs!1095013 () Bool)

(assert (= bs!1095013 d!1495174))

(declare-fun m!5615841 () Bool)

(assert (=> bs!1095013 m!5615841))

(declare-fun m!5615843 () Bool)

(assert (=> bs!1095013 m!5615843))

(assert (=> bs!1095013 m!5615109))

(assert (=> b!4700558 d!1495174))

(declare-fun bs!1095090 () Bool)

(declare-fun d!1495180 () Bool)

(assert (= bs!1095090 (and d!1495180 d!1495130)))

(declare-fun lambda!210223 () Int)

(assert (=> bs!1095090 (= lambda!210223 lambda!210201)))

(declare-fun bs!1095091 () Bool)

(assert (= bs!1095091 (and d!1495180 start!476696)))

(assert (=> bs!1095091 (= lambda!210223 lambda!210091)))

(declare-fun bs!1095092 () Bool)

(assert (= bs!1095092 (and d!1495180 d!1495122)))

(assert (=> bs!1095092 (= lambda!210223 lambda!210200)))

(declare-fun bs!1095093 () Bool)

(assert (= bs!1095093 (and d!1495180 d!1495116)))

(assert (=> bs!1095093 (= lambda!210223 lambda!210194)))

(declare-fun bs!1095094 () Bool)

(assert (= bs!1095094 (and d!1495180 d!1495078)))

(assert (=> bs!1095094 (= lambda!210223 lambda!210188)))

(declare-fun bs!1095095 () Bool)

(assert (= bs!1095095 (and d!1495180 d!1495134)))

(assert (=> bs!1095095 (= lambda!210223 lambda!210205)))

(declare-fun e!2932423 () Bool)

(assert (=> d!1495180 e!2932423))

(declare-fun res!1984677 () Bool)

(assert (=> d!1495180 (=> (not res!1984677) (not e!2932423))))

(assert (=> d!1495180 (= res!1984677 (forall!11397 (toList!5682 lm!2023) lambda!210223))))

(declare-fun lt!1863799 () Unit!126116)

(declare-fun choose!32878 (ListLongMap!4211 K!13890 Hashable!6265) Unit!126116)

(assert (=> d!1495180 (= lt!1863799 (choose!32878 lm!2023 key!4653 hashF!1323))))

(assert (=> d!1495180 (forall!11397 (toList!5682 lm!2023) lambda!210223)))

(assert (=> d!1495180 (= (lemmaInGenMapThenGetPairDefined!296 lm!2023 key!4653 hashF!1323) lt!1863799)))

(declare-fun b!4700902 () Bool)

(declare-fun lt!1863802 () (_ BitVec 64))

(declare-fun lt!1863800 () List!52651)

(declare-fun e!2932422 () Bool)

(declare-datatypes ((Option!12191 0))(
  ( (None!12190) (Some!12190 (v!46677 List!52651)) )
))
(declare-fun getValueByKey!1849 (List!52652 (_ BitVec 64)) Option!12191)

(assert (=> b!4700902 (= e!2932422 (= (getValueByKey!1849 (toList!5682 lm!2023) lt!1863802) (Some!12190 lt!1863800)))))

(declare-fun b!4700900 () Bool)

(declare-fun res!1984676 () Bool)

(assert (=> b!4700900 (=> (not res!1984676) (not e!2932423))))

(assert (=> b!4700900 (= res!1984676 (contains!15802 (extractMap!1922 (toList!5682 lm!2023)) key!4653))))

(declare-fun b!4700901 () Bool)

(assert (=> b!4700901 (= e!2932423 (isDefined!9442 (getPair!500 (apply!12379 lm!2023 (hash!4168 hashF!1323 key!4653)) key!4653)))))

(declare-fun lt!1863798 () Unit!126116)

(assert (=> b!4700901 (= lt!1863798 (forallContained!3504 (toList!5682 lm!2023) lambda!210223 (tuple2!53981 (hash!4168 hashF!1323 key!4653) (apply!12379 lm!2023 (hash!4168 hashF!1323 key!4653)))))))

(declare-fun lt!1863797 () Unit!126116)

(declare-fun lt!1863803 () Unit!126116)

(assert (=> b!4700901 (= lt!1863797 lt!1863803)))

(assert (=> b!4700901 (contains!15803 (toList!5682 lm!2023) (tuple2!53981 lt!1863802 lt!1863800))))

(assert (=> b!4700901 (= lt!1863803 (lemmaGetValueImpliesTupleContained!305 lm!2023 lt!1863802 lt!1863800))))

(assert (=> b!4700901 e!2932422))

(declare-fun res!1984674 () Bool)

(assert (=> b!4700901 (=> (not res!1984674) (not e!2932422))))

(assert (=> b!4700901 (= res!1984674 (contains!15804 lm!2023 lt!1863802))))

(assert (=> b!4700901 (= lt!1863800 (apply!12379 lm!2023 (hash!4168 hashF!1323 key!4653)))))

(assert (=> b!4700901 (= lt!1863802 (hash!4168 hashF!1323 key!4653))))

(declare-fun lt!1863804 () Unit!126116)

(declare-fun lt!1863801 () Unit!126116)

(assert (=> b!4700901 (= lt!1863804 lt!1863801)))

(assert (=> b!4700901 (contains!15804 lm!2023 (hash!4168 hashF!1323 key!4653))))

(assert (=> b!4700901 (= lt!1863801 (lemmaInGenMapThenLongMapContainsHash!706 lm!2023 key!4653 hashF!1323))))

(declare-fun b!4700899 () Bool)

(declare-fun res!1984675 () Bool)

(assert (=> b!4700899 (=> (not res!1984675) (not e!2932423))))

(assert (=> b!4700899 (= res!1984675 (allKeysSameHashInMap!1810 lm!2023 hashF!1323))))

(assert (= (and d!1495180 res!1984677) b!4700899))

(assert (= (and b!4700899 res!1984675) b!4700900))

(assert (= (and b!4700900 res!1984676) b!4700901))

(assert (= (and b!4700901 res!1984674) b!4700902))

(assert (=> b!4700899 m!5615125))

(declare-fun m!5615959 () Bool)

(assert (=> b!4700902 m!5615959))

(assert (=> b!4700900 m!5614999))

(assert (=> b!4700900 m!5614999))

(declare-fun m!5615961 () Bool)

(assert (=> b!4700900 m!5615961))

(declare-fun m!5615963 () Bool)

(assert (=> b!4700901 m!5615963))

(declare-fun m!5615965 () Bool)

(assert (=> b!4700901 m!5615965))

(declare-fun m!5615967 () Bool)

(assert (=> b!4700901 m!5615967))

(assert (=> b!4700901 m!5615965))

(declare-fun m!5615969 () Bool)

(assert (=> b!4700901 m!5615969))

(assert (=> b!4700901 m!5615119))

(declare-fun m!5615971 () Bool)

(assert (=> b!4700901 m!5615971))

(declare-fun m!5615973 () Bool)

(assert (=> b!4700901 m!5615973))

(assert (=> b!4700901 m!5614995))

(declare-fun m!5615975 () Bool)

(assert (=> b!4700901 m!5615975))

(declare-fun m!5615977 () Bool)

(assert (=> b!4700901 m!5615977))

(assert (=> b!4700901 m!5614995))

(assert (=> b!4700901 m!5615963))

(assert (=> b!4700901 m!5614995))

(declare-fun m!5615979 () Bool)

(assert (=> d!1495180 m!5615979))

(declare-fun m!5615981 () Bool)

(assert (=> d!1495180 m!5615981))

(assert (=> d!1495180 m!5615979))

(assert (=> b!4700558 d!1495180))

(declare-fun d!1495208 () Bool)

(declare-fun get!17581 (Option!12191) List!52651)

(assert (=> d!1495208 (= (apply!12379 lm!2023 lt!1863347) (get!17581 (getValueByKey!1849 (toList!5682 lm!2023) lt!1863347)))))

(declare-fun bs!1095096 () Bool)

(assert (= bs!1095096 d!1495208))

(declare-fun m!5615983 () Bool)

(assert (=> bs!1095096 m!5615983))

(assert (=> bs!1095096 m!5615983))

(declare-fun m!5615985 () Bool)

(assert (=> bs!1095096 m!5615985))

(assert (=> b!4700558 d!1495208))

(declare-fun d!1495210 () Bool)

(assert (=> d!1495210 (containsKey!3163 oldBucket!34 key!4653)))

(declare-fun lt!1863807 () Unit!126116)

(declare-fun choose!32880 (List!52651 K!13890 Hashable!6265) Unit!126116)

(assert (=> d!1495210 (= lt!1863807 (choose!32880 oldBucket!34 key!4653 hashF!1323))))

(assert (=> d!1495210 (noDuplicateKeys!1896 oldBucket!34)))

(assert (=> d!1495210 (= (lemmaGetPairDefinedThenContainsKey!248 oldBucket!34 key!4653 hashF!1323) lt!1863807)))

(declare-fun bs!1095097 () Bool)

(assert (= bs!1095097 d!1495210))

(assert (=> bs!1095097 m!5615115))

(declare-fun m!5615987 () Bool)

(assert (=> bs!1095097 m!5615987))

(assert (=> bs!1095097 m!5615139))

(assert (=> b!4700558 d!1495210))

(declare-fun d!1495212 () Bool)

(declare-fun res!1984682 () Bool)

(declare-fun e!2932428 () Bool)

(assert (=> d!1495212 (=> res!1984682 e!2932428)))

(assert (=> d!1495212 (= res!1984682 (and ((_ is Cons!52527) (t!359861 oldBucket!34)) (= (_1!30283 (h!58806 (t!359861 oldBucket!34))) key!4653)))))

(assert (=> d!1495212 (= (containsKey!3163 (t!359861 oldBucket!34) key!4653) e!2932428)))

(declare-fun b!4700907 () Bool)

(declare-fun e!2932429 () Bool)

(assert (=> b!4700907 (= e!2932428 e!2932429)))

(declare-fun res!1984683 () Bool)

(assert (=> b!4700907 (=> (not res!1984683) (not e!2932429))))

(assert (=> b!4700907 (= res!1984683 ((_ is Cons!52527) (t!359861 oldBucket!34)))))

(declare-fun b!4700908 () Bool)

(assert (=> b!4700908 (= e!2932429 (containsKey!3163 (t!359861 (t!359861 oldBucket!34)) key!4653))))

(assert (= (and d!1495212 (not res!1984682)) b!4700907))

(assert (= (and b!4700907 res!1984683) b!4700908))

(declare-fun m!5615989 () Bool)

(assert (=> b!4700908 m!5615989))

(assert (=> b!4700558 d!1495212))

(declare-fun b!4700925 () Bool)

(declare-fun e!2932440 () Option!12187)

(assert (=> b!4700925 (= e!2932440 (Some!12186 (h!58806 lt!1863328)))))

(declare-fun b!4700926 () Bool)

(declare-fun e!2932444 () Bool)

(declare-fun lt!1863810 () Option!12187)

(declare-fun get!17583 (Option!12187) tuple2!53978)

(assert (=> b!4700926 (= e!2932444 (contains!15807 lt!1863328 (get!17583 lt!1863810)))))

(declare-fun b!4700927 () Bool)

(declare-fun res!1984693 () Bool)

(assert (=> b!4700927 (=> (not res!1984693) (not e!2932444))))

(assert (=> b!4700927 (= res!1984693 (= (_1!30283 (get!17583 lt!1863810)) key!4653))))

(declare-fun b!4700928 () Bool)

(declare-fun e!2932442 () Option!12187)

(assert (=> b!4700928 (= e!2932440 e!2932442)))

(declare-fun c!803554 () Bool)

(assert (=> b!4700928 (= c!803554 ((_ is Cons!52527) lt!1863328))))

(declare-fun d!1495214 () Bool)

(declare-fun e!2932441 () Bool)

(assert (=> d!1495214 e!2932441))

(declare-fun res!1984694 () Bool)

(assert (=> d!1495214 (=> res!1984694 e!2932441)))

(declare-fun e!2932443 () Bool)

(assert (=> d!1495214 (= res!1984694 e!2932443)))

(declare-fun res!1984695 () Bool)

(assert (=> d!1495214 (=> (not res!1984695) (not e!2932443))))

(declare-fun isEmpty!29128 (Option!12187) Bool)

(assert (=> d!1495214 (= res!1984695 (isEmpty!29128 lt!1863810))))

(assert (=> d!1495214 (= lt!1863810 e!2932440)))

(declare-fun c!803553 () Bool)

(assert (=> d!1495214 (= c!803553 (and ((_ is Cons!52527) lt!1863328) (= (_1!30283 (h!58806 lt!1863328)) key!4653)))))

(assert (=> d!1495214 (noDuplicateKeys!1896 lt!1863328)))

(assert (=> d!1495214 (= (getPair!500 lt!1863328 key!4653) lt!1863810)))

(declare-fun b!4700929 () Bool)

(assert (=> b!4700929 (= e!2932442 None!12186)))

(declare-fun b!4700930 () Bool)

(assert (=> b!4700930 (= e!2932442 (getPair!500 (t!359861 lt!1863328) key!4653))))

(declare-fun b!4700931 () Bool)

(assert (=> b!4700931 (= e!2932443 (not (containsKey!3163 lt!1863328 key!4653)))))

(declare-fun b!4700932 () Bool)

(assert (=> b!4700932 (= e!2932441 e!2932444)))

(declare-fun res!1984692 () Bool)

(assert (=> b!4700932 (=> (not res!1984692) (not e!2932444))))

(assert (=> b!4700932 (= res!1984692 (isDefined!9442 lt!1863810))))

(assert (= (and d!1495214 c!803553) b!4700925))

(assert (= (and d!1495214 (not c!803553)) b!4700928))

(assert (= (and b!4700928 c!803554) b!4700930))

(assert (= (and b!4700928 (not c!803554)) b!4700929))

(assert (= (and d!1495214 res!1984695) b!4700931))

(assert (= (and d!1495214 (not res!1984694)) b!4700932))

(assert (= (and b!4700932 res!1984692) b!4700927))

(assert (= (and b!4700927 res!1984693) b!4700926))

(declare-fun m!5615991 () Bool)

(assert (=> b!4700926 m!5615991))

(assert (=> b!4700926 m!5615991))

(declare-fun m!5615993 () Bool)

(assert (=> b!4700926 m!5615993))

(declare-fun m!5615995 () Bool)

(assert (=> b!4700932 m!5615995))

(declare-fun m!5615997 () Bool)

(assert (=> b!4700931 m!5615997))

(declare-fun m!5615999 () Bool)

(assert (=> d!1495214 m!5615999))

(declare-fun m!5616001 () Bool)

(assert (=> d!1495214 m!5616001))

(declare-fun m!5616003 () Bool)

(assert (=> b!4700930 m!5616003))

(assert (=> b!4700927 m!5615991))

(assert (=> b!4700558 d!1495214))

(declare-fun d!1495216 () Bool)

(assert (=> d!1495216 (dynLambda!21746 lambda!210091 lt!1863350)))

(declare-fun lt!1863813 () Unit!126116)

(declare-fun choose!32881 (List!52652 Int tuple2!53980) Unit!126116)

(assert (=> d!1495216 (= lt!1863813 (choose!32881 (toList!5682 lm!2023) lambda!210091 lt!1863350))))

(declare-fun e!2932447 () Bool)

(assert (=> d!1495216 e!2932447))

(declare-fun res!1984698 () Bool)

(assert (=> d!1495216 (=> (not res!1984698) (not e!2932447))))

(assert (=> d!1495216 (= res!1984698 (forall!11397 (toList!5682 lm!2023) lambda!210091))))

(assert (=> d!1495216 (= (forallContained!3504 (toList!5682 lm!2023) lambda!210091 lt!1863350) lt!1863813)))

(declare-fun b!4700935 () Bool)

(assert (=> b!4700935 (= e!2932447 (contains!15803 (toList!5682 lm!2023) lt!1863350))))

(assert (= (and d!1495216 res!1984698) b!4700935))

(declare-fun b_lambda!177373 () Bool)

(assert (=> (not b_lambda!177373) (not d!1495216)))

(declare-fun m!5616005 () Bool)

(assert (=> d!1495216 m!5616005))

(declare-fun m!5616007 () Bool)

(assert (=> d!1495216 m!5616007))

(assert (=> d!1495216 m!5615127))

(assert (=> b!4700935 m!5615121))

(assert (=> b!4700558 d!1495216))

(declare-fun d!1495218 () Bool)

(declare-fun res!1984699 () Bool)

(declare-fun e!2932448 () Bool)

(assert (=> d!1495218 (=> res!1984699 e!2932448)))

(assert (=> d!1495218 (= res!1984699 (and ((_ is Cons!52527) oldBucket!34) (= (_1!30283 (h!58806 oldBucket!34)) key!4653)))))

(assert (=> d!1495218 (= (containsKey!3163 oldBucket!34 key!4653) e!2932448)))

(declare-fun b!4700936 () Bool)

(declare-fun e!2932449 () Bool)

(assert (=> b!4700936 (= e!2932448 e!2932449)))

(declare-fun res!1984700 () Bool)

(assert (=> b!4700936 (=> (not res!1984700) (not e!2932449))))

(assert (=> b!4700936 (= res!1984700 ((_ is Cons!52527) oldBucket!34))))

(declare-fun b!4700937 () Bool)

(assert (=> b!4700937 (= e!2932449 (containsKey!3163 (t!359861 oldBucket!34) key!4653))))

(assert (= (and d!1495218 (not res!1984699)) b!4700936))

(assert (= (and b!4700936 res!1984700) b!4700937))

(assert (=> b!4700937 m!5615111))

(assert (=> b!4700558 d!1495218))

(declare-fun bs!1095098 () Bool)

(declare-fun d!1495220 () Bool)

(assert (= bs!1095098 (and d!1495220 d!1495130)))

(declare-fun lambda!210226 () Int)

(assert (=> bs!1095098 (= lambda!210226 lambda!210201)))

(declare-fun bs!1095099 () Bool)

(assert (= bs!1095099 (and d!1495220 start!476696)))

(assert (=> bs!1095099 (= lambda!210226 lambda!210091)))

(declare-fun bs!1095100 () Bool)

(assert (= bs!1095100 (and d!1495220 d!1495122)))

(assert (=> bs!1095100 (= lambda!210226 lambda!210200)))

(declare-fun bs!1095101 () Bool)

(assert (= bs!1095101 (and d!1495220 d!1495116)))

(assert (=> bs!1095101 (= lambda!210226 lambda!210194)))

(declare-fun bs!1095102 () Bool)

(assert (= bs!1095102 (and d!1495220 d!1495180)))

(assert (=> bs!1095102 (= lambda!210226 lambda!210223)))

(declare-fun bs!1095103 () Bool)

(assert (= bs!1095103 (and d!1495220 d!1495078)))

(assert (=> bs!1095103 (= lambda!210226 lambda!210188)))

(declare-fun bs!1095104 () Bool)

(assert (= bs!1095104 (and d!1495220 d!1495134)))

(assert (=> bs!1095104 (= lambda!210226 lambda!210205)))

(assert (=> d!1495220 (contains!15804 lm!2023 (hash!4168 hashF!1323 key!4653))))

(declare-fun lt!1863816 () Unit!126116)

(declare-fun choose!32883 (ListLongMap!4211 K!13890 Hashable!6265) Unit!126116)

(assert (=> d!1495220 (= lt!1863816 (choose!32883 lm!2023 key!4653 hashF!1323))))

(assert (=> d!1495220 (forall!11397 (toList!5682 lm!2023) lambda!210226)))

(assert (=> d!1495220 (= (lemmaInGenMapThenLongMapContainsHash!706 lm!2023 key!4653 hashF!1323) lt!1863816)))

(declare-fun bs!1095105 () Bool)

(assert (= bs!1095105 d!1495220))

(assert (=> bs!1095105 m!5614995))

(assert (=> bs!1095105 m!5614995))

(assert (=> bs!1095105 m!5615975))

(declare-fun m!5616009 () Bool)

(assert (=> bs!1095105 m!5616009))

(declare-fun m!5616011 () Bool)

(assert (=> bs!1095105 m!5616011))

(assert (=> b!4700558 d!1495220))

(declare-fun d!1495222 () Bool)

(declare-fun lt!1863819 () Bool)

(declare-fun content!9264 (List!52652) (InoxSet tuple2!53980))

(assert (=> d!1495222 (= lt!1863819 (select (content!9264 (toList!5682 lm!2023)) lt!1863350))))

(declare-fun e!2932454 () Bool)

(assert (=> d!1495222 (= lt!1863819 e!2932454)))

(declare-fun res!1984705 () Bool)

(assert (=> d!1495222 (=> (not res!1984705) (not e!2932454))))

(assert (=> d!1495222 (= res!1984705 ((_ is Cons!52528) (toList!5682 lm!2023)))))

(assert (=> d!1495222 (= (contains!15803 (toList!5682 lm!2023) lt!1863350) lt!1863819)))

(declare-fun b!4700942 () Bool)

(declare-fun e!2932455 () Bool)

(assert (=> b!4700942 (= e!2932454 e!2932455)))

(declare-fun res!1984706 () Bool)

(assert (=> b!4700942 (=> res!1984706 e!2932455)))

(assert (=> b!4700942 (= res!1984706 (= (h!58807 (toList!5682 lm!2023)) lt!1863350))))

(declare-fun b!4700943 () Bool)

(assert (=> b!4700943 (= e!2932455 (contains!15803 (t!359862 (toList!5682 lm!2023)) lt!1863350))))

(assert (= (and d!1495222 res!1984705) b!4700942))

(assert (= (and b!4700942 (not res!1984706)) b!4700943))

(declare-fun m!5616013 () Bool)

(assert (=> d!1495222 m!5616013))

(declare-fun m!5616015 () Bool)

(assert (=> d!1495222 m!5616015))

(declare-fun m!5616017 () Bool)

(assert (=> b!4700943 m!5616017))

(assert (=> b!4700558 d!1495222))

(declare-fun d!1495224 () Bool)

(declare-fun e!2932460 () Bool)

(assert (=> d!1495224 e!2932460))

(declare-fun res!1984709 () Bool)

(assert (=> d!1495224 (=> res!1984709 e!2932460)))

(declare-fun lt!1863831 () Bool)

(assert (=> d!1495224 (= res!1984709 (not lt!1863831))))

(declare-fun lt!1863829 () Bool)

(assert (=> d!1495224 (= lt!1863831 lt!1863829)))

(declare-fun lt!1863830 () Unit!126116)

(declare-fun e!2932461 () Unit!126116)

(assert (=> d!1495224 (= lt!1863830 e!2932461)))

(declare-fun c!803557 () Bool)

(assert (=> d!1495224 (= c!803557 lt!1863829)))

(declare-fun containsKey!3166 (List!52652 (_ BitVec 64)) Bool)

(assert (=> d!1495224 (= lt!1863829 (containsKey!3166 (toList!5682 lm!2023) lt!1863347))))

(assert (=> d!1495224 (= (contains!15804 lm!2023 lt!1863347) lt!1863831)))

(declare-fun b!4700950 () Bool)

(declare-fun lt!1863828 () Unit!126116)

(assert (=> b!4700950 (= e!2932461 lt!1863828)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1740 (List!52652 (_ BitVec 64)) Unit!126116)

(assert (=> b!4700950 (= lt!1863828 (lemmaContainsKeyImpliesGetValueByKeyDefined!1740 (toList!5682 lm!2023) lt!1863347))))

(declare-fun isDefined!9445 (Option!12191) Bool)

(assert (=> b!4700950 (isDefined!9445 (getValueByKey!1849 (toList!5682 lm!2023) lt!1863347))))

(declare-fun b!4700951 () Bool)

(declare-fun Unit!126176 () Unit!126116)

(assert (=> b!4700951 (= e!2932461 Unit!126176)))

(declare-fun b!4700952 () Bool)

(assert (=> b!4700952 (= e!2932460 (isDefined!9445 (getValueByKey!1849 (toList!5682 lm!2023) lt!1863347)))))

(assert (= (and d!1495224 c!803557) b!4700950))

(assert (= (and d!1495224 (not c!803557)) b!4700951))

(assert (= (and d!1495224 (not res!1984709)) b!4700952))

(declare-fun m!5616019 () Bool)

(assert (=> d!1495224 m!5616019))

(declare-fun m!5616021 () Bool)

(assert (=> b!4700950 m!5616021))

(assert (=> b!4700950 m!5615983))

(assert (=> b!4700950 m!5615983))

(declare-fun m!5616023 () Bool)

(assert (=> b!4700950 m!5616023))

(assert (=> b!4700952 m!5615983))

(assert (=> b!4700952 m!5615983))

(assert (=> b!4700952 m!5616023))

(assert (=> b!4700558 d!1495224))

(declare-fun d!1495226 () Bool)

(assert (=> d!1495226 (= (isDefined!9442 (getPair!500 lt!1863328 key!4653)) (not (isEmpty!29128 (getPair!500 lt!1863328 key!4653))))))

(declare-fun bs!1095106 () Bool)

(assert (= bs!1095106 d!1495226))

(assert (=> bs!1095106 m!5615117))

(declare-fun m!5616025 () Bool)

(assert (=> bs!1095106 m!5616025))

(assert (=> b!4700558 d!1495226))

(declare-fun d!1495228 () Bool)

(declare-fun hash!4171 (Hashable!6265 K!13890) (_ BitVec 64))

(assert (=> d!1495228 (= (hash!4168 hashF!1323 key!4653) (hash!4171 hashF!1323 key!4653))))

(declare-fun bs!1095107 () Bool)

(assert (= bs!1095107 d!1495228))

(declare-fun m!5616027 () Bool)

(assert (=> bs!1095107 m!5616027))

(assert (=> b!4700548 d!1495228))

(declare-fun bs!1095108 () Bool)

(declare-fun b!4700955 () Bool)

(assert (= bs!1095108 (and b!4700955 d!1495002)))

(declare-fun lambda!210227 () Int)

(assert (=> bs!1095108 (= (= lt!1863360 lt!1863626) (= lambda!210227 lambda!210182))))

(declare-fun bs!1095109 () Bool)

(assert (= bs!1095109 (and b!4700955 d!1495088)))

(assert (=> bs!1095109 (not (= lambda!210227 lambda!210191))))

(declare-fun bs!1095110 () Bool)

(assert (= bs!1095110 (and b!4700955 b!4700715)))

(assert (=> bs!1095110 (= (= lt!1863360 lt!1863620) (= lambda!210227 lambda!210181))))

(assert (=> bs!1095110 (= lambda!210227 lambda!210180)))

(declare-fun bs!1095111 () Bool)

(assert (= bs!1095111 (and b!4700955 b!4700713)))

(assert (=> bs!1095111 (= lambda!210227 lambda!210179)))

(assert (=> b!4700955 true))

(declare-fun bs!1095112 () Bool)

(declare-fun b!4700957 () Bool)

(assert (= bs!1095112 (and b!4700957 d!1495002)))

(declare-fun lambda!210228 () Int)

(assert (=> bs!1095112 (= (= lt!1863360 lt!1863626) (= lambda!210228 lambda!210182))))

(declare-fun bs!1095113 () Bool)

(assert (= bs!1095113 (and b!4700957 d!1495088)))

(assert (=> bs!1095113 (not (= lambda!210228 lambda!210191))))

(declare-fun bs!1095114 () Bool)

(assert (= bs!1095114 (and b!4700957 b!4700715)))

(assert (=> bs!1095114 (= (= lt!1863360 lt!1863620) (= lambda!210228 lambda!210181))))

(assert (=> bs!1095114 (= lambda!210228 lambda!210180)))

(declare-fun bs!1095115 () Bool)

(assert (= bs!1095115 (and b!4700957 b!4700955)))

(assert (=> bs!1095115 (= lambda!210228 lambda!210227)))

(declare-fun bs!1095116 () Bool)

(assert (= bs!1095116 (and b!4700957 b!4700713)))

(assert (=> bs!1095116 (= lambda!210228 lambda!210179)))

(assert (=> b!4700957 true))

(declare-fun lt!1863838 () ListMap!5045)

(declare-fun lambda!210229 () Int)

(assert (=> bs!1095112 (= (= lt!1863838 lt!1863626) (= lambda!210229 lambda!210182))))

(assert (=> bs!1095113 (not (= lambda!210229 lambda!210191))))

(assert (=> b!4700957 (= (= lt!1863838 lt!1863360) (= lambda!210229 lambda!210228))))

(assert (=> bs!1095114 (= (= lt!1863838 lt!1863620) (= lambda!210229 lambda!210181))))

(assert (=> bs!1095114 (= (= lt!1863838 lt!1863360) (= lambda!210229 lambda!210180))))

(assert (=> bs!1095115 (= (= lt!1863838 lt!1863360) (= lambda!210229 lambda!210227))))

(assert (=> bs!1095116 (= (= lt!1863838 lt!1863360) (= lambda!210229 lambda!210179))))

(assert (=> b!4700957 true))

(declare-fun bs!1095117 () Bool)

(declare-fun d!1495230 () Bool)

(assert (= bs!1095117 (and d!1495230 d!1495002)))

(declare-fun lt!1863844 () ListMap!5045)

(declare-fun lambda!210230 () Int)

(assert (=> bs!1095117 (= (= lt!1863844 lt!1863626) (= lambda!210230 lambda!210182))))

(declare-fun bs!1095118 () Bool)

(assert (= bs!1095118 (and d!1495230 b!4700957)))

(assert (=> bs!1095118 (= (= lt!1863844 lt!1863838) (= lambda!210230 lambda!210229))))

(declare-fun bs!1095119 () Bool)

(assert (= bs!1095119 (and d!1495230 d!1495088)))

(assert (=> bs!1095119 (not (= lambda!210230 lambda!210191))))

(assert (=> bs!1095118 (= (= lt!1863844 lt!1863360) (= lambda!210230 lambda!210228))))

(declare-fun bs!1095120 () Bool)

(assert (= bs!1095120 (and d!1495230 b!4700715)))

(assert (=> bs!1095120 (= (= lt!1863844 lt!1863620) (= lambda!210230 lambda!210181))))

(assert (=> bs!1095120 (= (= lt!1863844 lt!1863360) (= lambda!210230 lambda!210180))))

(declare-fun bs!1095121 () Bool)

(assert (= bs!1095121 (and d!1495230 b!4700955)))

(assert (=> bs!1095121 (= (= lt!1863844 lt!1863360) (= lambda!210230 lambda!210227))))

(declare-fun bs!1095122 () Bool)

(assert (= bs!1095122 (and d!1495230 b!4700713)))

(assert (=> bs!1095122 (= (= lt!1863844 lt!1863360) (= lambda!210230 lambda!210179))))

(assert (=> d!1495230 true))

(declare-fun b!4700953 () Bool)

(declare-fun e!2932462 () Bool)

(assert (=> b!4700953 (= e!2932462 (forall!11399 (toList!5681 lt!1863360) lambda!210229))))

(declare-fun e!2932463 () ListMap!5045)

(assert (=> b!4700955 (= e!2932463 lt!1863360)))

(declare-fun lt!1863848 () Unit!126116)

(declare-fun call!328643 () Unit!126116)

(assert (=> b!4700955 (= lt!1863848 call!328643)))

(declare-fun call!328644 () Bool)

(assert (=> b!4700955 call!328644))

(declare-fun lt!1863852 () Unit!126116)

(assert (=> b!4700955 (= lt!1863852 lt!1863848)))

(declare-fun call!328642 () Bool)

(assert (=> b!4700955 call!328642))

(declare-fun lt!1863849 () Unit!126116)

(declare-fun Unit!126177 () Unit!126116)

(assert (=> b!4700955 (= lt!1863849 Unit!126177)))

(declare-fun b!4700956 () Bool)

(declare-fun e!2932464 () Bool)

(assert (=> b!4700956 (= e!2932464 (invariantList!1444 (toList!5681 lt!1863844)))))

(declare-fun bm!328637 () Bool)

(assert (=> bm!328637 (= call!328643 (lemmaContainsAllItsOwnKeys!732 lt!1863360))))

(assert (=> b!4700957 (= e!2932463 lt!1863838)))

(declare-fun lt!1863840 () ListMap!5045)

(assert (=> b!4700957 (= lt!1863840 (+!2180 lt!1863360 (h!58806 lt!1863352)))))

(assert (=> b!4700957 (= lt!1863838 (addToMapMapFromBucket!1328 (t!359861 lt!1863352) (+!2180 lt!1863360 (h!58806 lt!1863352))))))

(declare-fun lt!1863836 () Unit!126116)

(assert (=> b!4700957 (= lt!1863836 call!328643)))

(assert (=> b!4700957 (forall!11399 (toList!5681 lt!1863360) lambda!210228)))

(declare-fun lt!1863834 () Unit!126116)

(assert (=> b!4700957 (= lt!1863834 lt!1863836)))

(assert (=> b!4700957 call!328644))

(declare-fun lt!1863833 () Unit!126116)

(declare-fun Unit!126178 () Unit!126116)

(assert (=> b!4700957 (= lt!1863833 Unit!126178)))

(assert (=> b!4700957 (forall!11399 (t!359861 lt!1863352) lambda!210229)))

(declare-fun lt!1863850 () Unit!126116)

(declare-fun Unit!126179 () Unit!126116)

(assert (=> b!4700957 (= lt!1863850 Unit!126179)))

(declare-fun lt!1863837 () Unit!126116)

(declare-fun Unit!126180 () Unit!126116)

(assert (=> b!4700957 (= lt!1863837 Unit!126180)))

(declare-fun lt!1863846 () Unit!126116)

(assert (=> b!4700957 (= lt!1863846 (forallContained!3506 (toList!5681 lt!1863840) lambda!210229 (h!58806 lt!1863352)))))

(assert (=> b!4700957 (contains!15802 lt!1863840 (_1!30283 (h!58806 lt!1863352)))))

(declare-fun lt!1863839 () Unit!126116)

(declare-fun Unit!126181 () Unit!126116)

(assert (=> b!4700957 (= lt!1863839 Unit!126181)))

(assert (=> b!4700957 (contains!15802 lt!1863838 (_1!30283 (h!58806 lt!1863352)))))

(declare-fun lt!1863847 () Unit!126116)

(declare-fun Unit!126182 () Unit!126116)

(assert (=> b!4700957 (= lt!1863847 Unit!126182)))

(assert (=> b!4700957 (forall!11399 lt!1863352 lambda!210229)))

(declare-fun lt!1863832 () Unit!126116)

(declare-fun Unit!126183 () Unit!126116)

(assert (=> b!4700957 (= lt!1863832 Unit!126183)))

(assert (=> b!4700957 call!328642))

(declare-fun lt!1863851 () Unit!126116)

(declare-fun Unit!126184 () Unit!126116)

(assert (=> b!4700957 (= lt!1863851 Unit!126184)))

(declare-fun lt!1863843 () Unit!126116)

(declare-fun Unit!126185 () Unit!126116)

(assert (=> b!4700957 (= lt!1863843 Unit!126185)))

(declare-fun lt!1863841 () Unit!126116)

(assert (=> b!4700957 (= lt!1863841 (addForallContainsKeyThenBeforeAdding!731 lt!1863360 lt!1863838 (_1!30283 (h!58806 lt!1863352)) (_2!30283 (h!58806 lt!1863352))))))

(assert (=> b!4700957 (forall!11399 (toList!5681 lt!1863360) lambda!210229)))

(declare-fun lt!1863842 () Unit!126116)

(assert (=> b!4700957 (= lt!1863842 lt!1863841)))

(assert (=> b!4700957 (forall!11399 (toList!5681 lt!1863360) lambda!210229)))

(declare-fun lt!1863845 () Unit!126116)

(declare-fun Unit!126186 () Unit!126116)

(assert (=> b!4700957 (= lt!1863845 Unit!126186)))

(declare-fun res!1984711 () Bool)

(assert (=> b!4700957 (= res!1984711 (forall!11399 lt!1863352 lambda!210229))))

(assert (=> b!4700957 (=> (not res!1984711) (not e!2932462))))

(assert (=> b!4700957 e!2932462))

(declare-fun lt!1863835 () Unit!126116)

(declare-fun Unit!126187 () Unit!126116)

(assert (=> b!4700957 (= lt!1863835 Unit!126187)))

(declare-fun bm!328638 () Bool)

(declare-fun c!803558 () Bool)

(assert (=> bm!328638 (= call!328642 (forall!11399 (ite c!803558 (toList!5681 lt!1863360) (toList!5681 lt!1863840)) (ite c!803558 lambda!210227 lambda!210229)))))

(declare-fun bm!328639 () Bool)

(assert (=> bm!328639 (= call!328644 (forall!11399 (ite c!803558 (toList!5681 lt!1863360) (toList!5681 lt!1863840)) (ite c!803558 lambda!210227 lambda!210229)))))

(assert (=> d!1495230 e!2932464))

(declare-fun res!1984710 () Bool)

(assert (=> d!1495230 (=> (not res!1984710) (not e!2932464))))

(assert (=> d!1495230 (= res!1984710 (forall!11399 lt!1863352 lambda!210230))))

(assert (=> d!1495230 (= lt!1863844 e!2932463)))

(assert (=> d!1495230 (= c!803558 ((_ is Nil!52527) lt!1863352))))

(assert (=> d!1495230 (noDuplicateKeys!1896 lt!1863352)))

(assert (=> d!1495230 (= (addToMapMapFromBucket!1328 lt!1863352 lt!1863360) lt!1863844)))

(declare-fun b!4700954 () Bool)

(declare-fun res!1984712 () Bool)

(assert (=> b!4700954 (=> (not res!1984712) (not e!2932464))))

(assert (=> b!4700954 (= res!1984712 (forall!11399 (toList!5681 lt!1863360) lambda!210230))))

(assert (= (and d!1495230 c!803558) b!4700955))

(assert (= (and d!1495230 (not c!803558)) b!4700957))

(assert (= (and b!4700957 res!1984711) b!4700953))

(assert (= (or b!4700955 b!4700957) bm!328637))

(assert (= (or b!4700955 b!4700957) bm!328639))

(assert (= (or b!4700955 b!4700957) bm!328638))

(assert (= (and d!1495230 res!1984710) b!4700954))

(assert (= (and b!4700954 res!1984712) b!4700956))

(declare-fun m!5616029 () Bool)

(assert (=> d!1495230 m!5616029))

(assert (=> d!1495230 m!5615605))

(declare-fun m!5616031 () Bool)

(assert (=> b!4700953 m!5616031))

(declare-fun m!5616033 () Bool)

(assert (=> bm!328638 m!5616033))

(assert (=> bm!328639 m!5616033))

(declare-fun m!5616035 () Bool)

(assert (=> b!4700956 m!5616035))

(assert (=> bm!328637 m!5615509))

(declare-fun m!5616037 () Bool)

(assert (=> b!4700957 m!5616037))

(declare-fun m!5616039 () Bool)

(assert (=> b!4700957 m!5616039))

(assert (=> b!4700957 m!5616031))

(declare-fun m!5616041 () Bool)

(assert (=> b!4700957 m!5616041))

(declare-fun m!5616043 () Bool)

(assert (=> b!4700957 m!5616043))

(assert (=> b!4700957 m!5616031))

(assert (=> b!4700957 m!5616037))

(declare-fun m!5616045 () Bool)

(assert (=> b!4700957 m!5616045))

(declare-fun m!5616047 () Bool)

(assert (=> b!4700957 m!5616047))

(declare-fun m!5616049 () Bool)

(assert (=> b!4700957 m!5616049))

(declare-fun m!5616051 () Bool)

(assert (=> b!4700957 m!5616051))

(declare-fun m!5616053 () Bool)

(assert (=> b!4700957 m!5616053))

(assert (=> b!4700957 m!5616049))

(declare-fun m!5616055 () Bool)

(assert (=> b!4700954 m!5616055))

(assert (=> b!4700573 d!1495230))

(declare-fun d!1495232 () Bool)

(assert (=> d!1495232 (eq!1055 (addToMapMapFromBucket!1328 (Cons!52527 lt!1863331 lt!1863355) lt!1863360) (+!2180 (addToMapMapFromBucket!1328 lt!1863355 lt!1863360) lt!1863331))))

(declare-fun lt!1863855 () Unit!126116)

(declare-fun choose!32887 (tuple2!53978 List!52651 ListMap!5045) Unit!126116)

(assert (=> d!1495232 (= lt!1863855 (choose!32887 lt!1863331 lt!1863355 lt!1863360))))

(assert (=> d!1495232 (noDuplicateKeys!1896 lt!1863355)))

(assert (=> d!1495232 (= (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!304 lt!1863331 lt!1863355 lt!1863360) lt!1863855)))

(declare-fun bs!1095123 () Bool)

(assert (= bs!1095123 d!1495232))

(assert (=> bs!1095123 m!5615031))

(assert (=> bs!1095123 m!5615031))

(assert (=> bs!1095123 m!5615033))

(assert (=> bs!1095123 m!5615035))

(assert (=> bs!1095123 m!5615041))

(declare-fun m!5616057 () Bool)

(assert (=> bs!1095123 m!5616057))

(assert (=> bs!1095123 m!5615041))

(assert (=> bs!1095123 m!5615033))

(declare-fun m!5616059 () Bool)

(assert (=> bs!1095123 m!5616059))

(assert (=> b!4700573 d!1495232))

(declare-fun d!1495234 () Bool)

(assert (=> d!1495234 (= (head!10056 oldBucket!34) (h!58806 oldBucket!34))))

(assert (=> b!4700573 d!1495234))

(declare-fun d!1495236 () Bool)

(declare-fun e!2932465 () Bool)

(assert (=> d!1495236 e!2932465))

(declare-fun res!1984713 () Bool)

(assert (=> d!1495236 (=> (not res!1984713) (not e!2932465))))

(declare-fun lt!1863859 () ListMap!5045)

(assert (=> d!1495236 (= res!1984713 (contains!15802 lt!1863859 (_1!30283 lt!1863331)))))

(declare-fun lt!1863858 () List!52651)

(assert (=> d!1495236 (= lt!1863859 (ListMap!5046 lt!1863858))))

(declare-fun lt!1863856 () Unit!126116)

(declare-fun lt!1863857 () Unit!126116)

(assert (=> d!1495236 (= lt!1863856 lt!1863857)))

(assert (=> d!1495236 (= (getValueByKey!1847 lt!1863858 (_1!30283 lt!1863331)) (Some!12188 (_2!30283 lt!1863331)))))

(assert (=> d!1495236 (= lt!1863857 (lemmaContainsTupThenGetReturnValue!1034 lt!1863858 (_1!30283 lt!1863331) (_2!30283 lt!1863331)))))

(assert (=> d!1495236 (= lt!1863858 (insertNoDuplicatedKeys!542 (toList!5681 (addToMapMapFromBucket!1328 lt!1863355 lt!1863360)) (_1!30283 lt!1863331) (_2!30283 lt!1863331)))))

(assert (=> d!1495236 (= (+!2180 (addToMapMapFromBucket!1328 lt!1863355 lt!1863360) lt!1863331) lt!1863859)))

(declare-fun b!4700958 () Bool)

(declare-fun res!1984714 () Bool)

(assert (=> b!4700958 (=> (not res!1984714) (not e!2932465))))

(assert (=> b!4700958 (= res!1984714 (= (getValueByKey!1847 (toList!5681 lt!1863859) (_1!30283 lt!1863331)) (Some!12188 (_2!30283 lt!1863331))))))

(declare-fun b!4700959 () Bool)

(assert (=> b!4700959 (= e!2932465 (contains!15807 (toList!5681 lt!1863859) lt!1863331))))

(assert (= (and d!1495236 res!1984713) b!4700958))

(assert (= (and b!4700958 res!1984714) b!4700959))

(declare-fun m!5616061 () Bool)

(assert (=> d!1495236 m!5616061))

(declare-fun m!5616063 () Bool)

(assert (=> d!1495236 m!5616063))

(declare-fun m!5616065 () Bool)

(assert (=> d!1495236 m!5616065))

(declare-fun m!5616067 () Bool)

(assert (=> d!1495236 m!5616067))

(declare-fun m!5616069 () Bool)

(assert (=> b!4700958 m!5616069))

(declare-fun m!5616071 () Bool)

(assert (=> b!4700959 m!5616071))

(assert (=> b!4700573 d!1495236))

(declare-fun bs!1095124 () Bool)

(declare-fun d!1495238 () Bool)

(assert (= bs!1095124 (and d!1495238 start!476696)))

(declare-fun lambda!210231 () Int)

(assert (=> bs!1095124 (= lambda!210231 lambda!210091)))

(declare-fun bs!1095125 () Bool)

(assert (= bs!1095125 (and d!1495238 d!1495122)))

(assert (=> bs!1095125 (= lambda!210231 lambda!210200)))

(declare-fun bs!1095126 () Bool)

(assert (= bs!1095126 (and d!1495238 d!1495116)))

(assert (=> bs!1095126 (= lambda!210231 lambda!210194)))

(declare-fun bs!1095127 () Bool)

(assert (= bs!1095127 (and d!1495238 d!1495180)))

(assert (=> bs!1095127 (= lambda!210231 lambda!210223)))

(declare-fun bs!1095128 () Bool)

(assert (= bs!1095128 (and d!1495238 d!1495130)))

(assert (=> bs!1095128 (= lambda!210231 lambda!210201)))

(declare-fun bs!1095129 () Bool)

(assert (= bs!1095129 (and d!1495238 d!1495220)))

(assert (=> bs!1095129 (= lambda!210231 lambda!210226)))

(declare-fun bs!1095130 () Bool)

(assert (= bs!1095130 (and d!1495238 d!1495078)))

(assert (=> bs!1095130 (= lambda!210231 lambda!210188)))

(declare-fun bs!1095131 () Bool)

(assert (= bs!1095131 (and d!1495238 d!1495134)))

(assert (=> bs!1095131 (= lambda!210231 lambda!210205)))

(declare-fun lt!1863860 () ListMap!5045)

(assert (=> d!1495238 (invariantList!1444 (toList!5681 lt!1863860))))

(declare-fun e!2932466 () ListMap!5045)

(assert (=> d!1495238 (= lt!1863860 e!2932466)))

(declare-fun c!803559 () Bool)

(assert (=> d!1495238 (= c!803559 ((_ is Cons!52528) (Cons!52528 lt!1863330 (t!359862 (toList!5682 lm!2023)))))))

(assert (=> d!1495238 (forall!11397 (Cons!52528 lt!1863330 (t!359862 (toList!5682 lm!2023))) lambda!210231)))

(assert (=> d!1495238 (= (extractMap!1922 (Cons!52528 lt!1863330 (t!359862 (toList!5682 lm!2023)))) lt!1863860)))

(declare-fun b!4700960 () Bool)

(assert (=> b!4700960 (= e!2932466 (addToMapMapFromBucket!1328 (_2!30284 (h!58807 (Cons!52528 lt!1863330 (t!359862 (toList!5682 lm!2023))))) (extractMap!1922 (t!359862 (Cons!52528 lt!1863330 (t!359862 (toList!5682 lm!2023)))))))))

(declare-fun b!4700961 () Bool)

(assert (=> b!4700961 (= e!2932466 (ListMap!5046 Nil!52527))))

(assert (= (and d!1495238 c!803559) b!4700960))

(assert (= (and d!1495238 (not c!803559)) b!4700961))

(declare-fun m!5616073 () Bool)

(assert (=> d!1495238 m!5616073))

(declare-fun m!5616075 () Bool)

(assert (=> d!1495238 m!5616075))

(declare-fun m!5616077 () Bool)

(assert (=> b!4700960 m!5616077))

(assert (=> b!4700960 m!5616077))

(declare-fun m!5616079 () Bool)

(assert (=> b!4700960 m!5616079))

(assert (=> b!4700573 d!1495238))

(declare-fun d!1495240 () Bool)

(assert (=> d!1495240 (= (head!10056 newBucket!218) (h!58806 newBucket!218))))

(assert (=> b!4700573 d!1495240))

(declare-fun d!1495242 () Bool)

(declare-fun e!2932467 () Bool)

(assert (=> d!1495242 e!2932467))

(declare-fun res!1984715 () Bool)

(assert (=> d!1495242 (=> (not res!1984715) (not e!2932467))))

(declare-fun lt!1863864 () ListMap!5045)

(assert (=> d!1495242 (= res!1984715 (contains!15802 lt!1863864 (_1!30283 lt!1863329)))))

(declare-fun lt!1863863 () List!52651)

(assert (=> d!1495242 (= lt!1863864 (ListMap!5046 lt!1863863))))

(declare-fun lt!1863861 () Unit!126116)

(declare-fun lt!1863862 () Unit!126116)

(assert (=> d!1495242 (= lt!1863861 lt!1863862)))

(assert (=> d!1495242 (= (getValueByKey!1847 lt!1863863 (_1!30283 lt!1863329)) (Some!12188 (_2!30283 lt!1863329)))))

(assert (=> d!1495242 (= lt!1863862 (lemmaContainsTupThenGetReturnValue!1034 lt!1863863 (_1!30283 lt!1863329) (_2!30283 lt!1863329)))))

(assert (=> d!1495242 (= lt!1863863 (insertNoDuplicatedKeys!542 (toList!5681 (addToMapMapFromBucket!1328 lt!1863352 lt!1863360)) (_1!30283 lt!1863329) (_2!30283 lt!1863329)))))

(assert (=> d!1495242 (= (+!2180 (addToMapMapFromBucket!1328 lt!1863352 lt!1863360) lt!1863329) lt!1863864)))

(declare-fun b!4700962 () Bool)

(declare-fun res!1984716 () Bool)

(assert (=> b!4700962 (=> (not res!1984716) (not e!2932467))))

(assert (=> b!4700962 (= res!1984716 (= (getValueByKey!1847 (toList!5681 lt!1863864) (_1!30283 lt!1863329)) (Some!12188 (_2!30283 lt!1863329))))))

(declare-fun b!4700963 () Bool)

(assert (=> b!4700963 (= e!2932467 (contains!15807 (toList!5681 lt!1863864) lt!1863329))))

(assert (= (and d!1495242 res!1984715) b!4700962))

(assert (= (and b!4700962 res!1984716) b!4700963))

(declare-fun m!5616081 () Bool)

(assert (=> d!1495242 m!5616081))

(declare-fun m!5616083 () Bool)

(assert (=> d!1495242 m!5616083))

(declare-fun m!5616085 () Bool)

(assert (=> d!1495242 m!5616085))

(declare-fun m!5616087 () Bool)

(assert (=> d!1495242 m!5616087))

(declare-fun m!5616089 () Bool)

(assert (=> b!4700962 m!5616089))

(declare-fun m!5616091 () Bool)

(assert (=> b!4700963 m!5616091))

(assert (=> b!4700573 d!1495242))

(declare-fun bs!1095132 () Bool)

(declare-fun b!4700966 () Bool)

(assert (= bs!1095132 (and b!4700966 d!1495230)))

(declare-fun lambda!210232 () Int)

(assert (=> bs!1095132 (= (= lt!1863360 lt!1863844) (= lambda!210232 lambda!210230))))

(declare-fun bs!1095133 () Bool)

(assert (= bs!1095133 (and b!4700966 d!1495002)))

(assert (=> bs!1095133 (= (= lt!1863360 lt!1863626) (= lambda!210232 lambda!210182))))

(declare-fun bs!1095134 () Bool)

(assert (= bs!1095134 (and b!4700966 b!4700957)))

(assert (=> bs!1095134 (= (= lt!1863360 lt!1863838) (= lambda!210232 lambda!210229))))

(declare-fun bs!1095135 () Bool)

(assert (= bs!1095135 (and b!4700966 d!1495088)))

(assert (=> bs!1095135 (not (= lambda!210232 lambda!210191))))

(assert (=> bs!1095134 (= lambda!210232 lambda!210228)))

(declare-fun bs!1095136 () Bool)

(assert (= bs!1095136 (and b!4700966 b!4700715)))

(assert (=> bs!1095136 (= (= lt!1863360 lt!1863620) (= lambda!210232 lambda!210181))))

(assert (=> bs!1095136 (= lambda!210232 lambda!210180)))

(declare-fun bs!1095137 () Bool)

(assert (= bs!1095137 (and b!4700966 b!4700955)))

(assert (=> bs!1095137 (= lambda!210232 lambda!210227)))

(declare-fun bs!1095138 () Bool)

(assert (= bs!1095138 (and b!4700966 b!4700713)))

(assert (=> bs!1095138 (= lambda!210232 lambda!210179)))

(assert (=> b!4700966 true))

(declare-fun bs!1095139 () Bool)

(declare-fun b!4700968 () Bool)

(assert (= bs!1095139 (and b!4700968 b!4700966)))

(declare-fun lambda!210233 () Int)

(assert (=> bs!1095139 (= lambda!210233 lambda!210232)))

(declare-fun bs!1095140 () Bool)

(assert (= bs!1095140 (and b!4700968 d!1495230)))

(assert (=> bs!1095140 (= (= lt!1863360 lt!1863844) (= lambda!210233 lambda!210230))))

(declare-fun bs!1095141 () Bool)

(assert (= bs!1095141 (and b!4700968 d!1495002)))

(assert (=> bs!1095141 (= (= lt!1863360 lt!1863626) (= lambda!210233 lambda!210182))))

(declare-fun bs!1095142 () Bool)

(assert (= bs!1095142 (and b!4700968 b!4700957)))

(assert (=> bs!1095142 (= (= lt!1863360 lt!1863838) (= lambda!210233 lambda!210229))))

(declare-fun bs!1095143 () Bool)

(assert (= bs!1095143 (and b!4700968 d!1495088)))

(assert (=> bs!1095143 (not (= lambda!210233 lambda!210191))))

(assert (=> bs!1095142 (= lambda!210233 lambda!210228)))

(declare-fun bs!1095144 () Bool)

(assert (= bs!1095144 (and b!4700968 b!4700715)))

(assert (=> bs!1095144 (= (= lt!1863360 lt!1863620) (= lambda!210233 lambda!210181))))

(assert (=> bs!1095144 (= lambda!210233 lambda!210180)))

(declare-fun bs!1095145 () Bool)

(assert (= bs!1095145 (and b!4700968 b!4700955)))

(assert (=> bs!1095145 (= lambda!210233 lambda!210227)))

(declare-fun bs!1095146 () Bool)

(assert (= bs!1095146 (and b!4700968 b!4700713)))

(assert (=> bs!1095146 (= lambda!210233 lambda!210179)))

(assert (=> b!4700968 true))

(declare-fun lt!1863871 () ListMap!5045)

(declare-fun lambda!210234 () Int)

(assert (=> bs!1095139 (= (= lt!1863871 lt!1863360) (= lambda!210234 lambda!210232))))

(assert (=> bs!1095140 (= (= lt!1863871 lt!1863844) (= lambda!210234 lambda!210230))))

(assert (=> bs!1095141 (= (= lt!1863871 lt!1863626) (= lambda!210234 lambda!210182))))

(assert (=> bs!1095142 (= (= lt!1863871 lt!1863838) (= lambda!210234 lambda!210229))))

(assert (=> bs!1095143 (not (= lambda!210234 lambda!210191))))

(assert (=> b!4700968 (= (= lt!1863871 lt!1863360) (= lambda!210234 lambda!210233))))

(assert (=> bs!1095142 (= (= lt!1863871 lt!1863360) (= lambda!210234 lambda!210228))))

(assert (=> bs!1095144 (= (= lt!1863871 lt!1863620) (= lambda!210234 lambda!210181))))

(assert (=> bs!1095144 (= (= lt!1863871 lt!1863360) (= lambda!210234 lambda!210180))))

(assert (=> bs!1095145 (= (= lt!1863871 lt!1863360) (= lambda!210234 lambda!210227))))

(assert (=> bs!1095146 (= (= lt!1863871 lt!1863360) (= lambda!210234 lambda!210179))))

(assert (=> b!4700968 true))

(declare-fun bs!1095147 () Bool)

(declare-fun d!1495244 () Bool)

(assert (= bs!1095147 (and d!1495244 b!4700966)))

(declare-fun lt!1863877 () ListMap!5045)

(declare-fun lambda!210235 () Int)

(assert (=> bs!1095147 (= (= lt!1863877 lt!1863360) (= lambda!210235 lambda!210232))))

(declare-fun bs!1095148 () Bool)

(assert (= bs!1095148 (and d!1495244 d!1495230)))

(assert (=> bs!1095148 (= (= lt!1863877 lt!1863844) (= lambda!210235 lambda!210230))))

(declare-fun bs!1095149 () Bool)

(assert (= bs!1095149 (and d!1495244 d!1495002)))

(assert (=> bs!1095149 (= (= lt!1863877 lt!1863626) (= lambda!210235 lambda!210182))))

(declare-fun bs!1095150 () Bool)

(assert (= bs!1095150 (and d!1495244 b!4700957)))

(assert (=> bs!1095150 (= (= lt!1863877 lt!1863838) (= lambda!210235 lambda!210229))))

(declare-fun bs!1095151 () Bool)

(assert (= bs!1095151 (and d!1495244 d!1495088)))

(assert (=> bs!1095151 (not (= lambda!210235 lambda!210191))))

(declare-fun bs!1095152 () Bool)

(assert (= bs!1095152 (and d!1495244 b!4700968)))

(assert (=> bs!1095152 (= (= lt!1863877 lt!1863360) (= lambda!210235 lambda!210233))))

(assert (=> bs!1095150 (= (= lt!1863877 lt!1863360) (= lambda!210235 lambda!210228))))

(declare-fun bs!1095153 () Bool)

(assert (= bs!1095153 (and d!1495244 b!4700715)))

(assert (=> bs!1095153 (= (= lt!1863877 lt!1863360) (= lambda!210235 lambda!210180))))

(declare-fun bs!1095154 () Bool)

(assert (= bs!1095154 (and d!1495244 b!4700955)))

(assert (=> bs!1095154 (= (= lt!1863877 lt!1863360) (= lambda!210235 lambda!210227))))

(declare-fun bs!1095155 () Bool)

(assert (= bs!1095155 (and d!1495244 b!4700713)))

(assert (=> bs!1095155 (= (= lt!1863877 lt!1863360) (= lambda!210235 lambda!210179))))

(assert (=> bs!1095152 (= (= lt!1863877 lt!1863871) (= lambda!210235 lambda!210234))))

(assert (=> bs!1095153 (= (= lt!1863877 lt!1863620) (= lambda!210235 lambda!210181))))

(assert (=> d!1495244 true))

(declare-fun b!4700964 () Bool)

(declare-fun e!2932468 () Bool)

(assert (=> b!4700964 (= e!2932468 (forall!11399 (toList!5681 lt!1863360) lambda!210234))))

(declare-fun e!2932469 () ListMap!5045)

(assert (=> b!4700966 (= e!2932469 lt!1863360)))

(declare-fun lt!1863881 () Unit!126116)

(declare-fun call!328646 () Unit!126116)

(assert (=> b!4700966 (= lt!1863881 call!328646)))

(declare-fun call!328647 () Bool)

(assert (=> b!4700966 call!328647))

(declare-fun lt!1863885 () Unit!126116)

(assert (=> b!4700966 (= lt!1863885 lt!1863881)))

(declare-fun call!328645 () Bool)

(assert (=> b!4700966 call!328645))

(declare-fun lt!1863882 () Unit!126116)

(declare-fun Unit!126188 () Unit!126116)

(assert (=> b!4700966 (= lt!1863882 Unit!126188)))

(declare-fun b!4700967 () Bool)

(declare-fun e!2932470 () Bool)

(assert (=> b!4700967 (= e!2932470 (invariantList!1444 (toList!5681 lt!1863877)))))

(declare-fun bm!328640 () Bool)

(assert (=> bm!328640 (= call!328646 (lemmaContainsAllItsOwnKeys!732 lt!1863360))))

(assert (=> b!4700968 (= e!2932469 lt!1863871)))

(declare-fun lt!1863873 () ListMap!5045)

(assert (=> b!4700968 (= lt!1863873 (+!2180 lt!1863360 (h!58806 lt!1863355)))))

(assert (=> b!4700968 (= lt!1863871 (addToMapMapFromBucket!1328 (t!359861 lt!1863355) (+!2180 lt!1863360 (h!58806 lt!1863355))))))

(declare-fun lt!1863869 () Unit!126116)

(assert (=> b!4700968 (= lt!1863869 call!328646)))

(assert (=> b!4700968 (forall!11399 (toList!5681 lt!1863360) lambda!210233)))

(declare-fun lt!1863867 () Unit!126116)

(assert (=> b!4700968 (= lt!1863867 lt!1863869)))

(assert (=> b!4700968 call!328647))

(declare-fun lt!1863866 () Unit!126116)

(declare-fun Unit!126189 () Unit!126116)

(assert (=> b!4700968 (= lt!1863866 Unit!126189)))

(assert (=> b!4700968 (forall!11399 (t!359861 lt!1863355) lambda!210234)))

(declare-fun lt!1863883 () Unit!126116)

(declare-fun Unit!126190 () Unit!126116)

(assert (=> b!4700968 (= lt!1863883 Unit!126190)))

(declare-fun lt!1863870 () Unit!126116)

(declare-fun Unit!126191 () Unit!126116)

(assert (=> b!4700968 (= lt!1863870 Unit!126191)))

(declare-fun lt!1863879 () Unit!126116)

(assert (=> b!4700968 (= lt!1863879 (forallContained!3506 (toList!5681 lt!1863873) lambda!210234 (h!58806 lt!1863355)))))

(assert (=> b!4700968 (contains!15802 lt!1863873 (_1!30283 (h!58806 lt!1863355)))))

(declare-fun lt!1863872 () Unit!126116)

(declare-fun Unit!126192 () Unit!126116)

(assert (=> b!4700968 (= lt!1863872 Unit!126192)))

(assert (=> b!4700968 (contains!15802 lt!1863871 (_1!30283 (h!58806 lt!1863355)))))

(declare-fun lt!1863880 () Unit!126116)

(declare-fun Unit!126193 () Unit!126116)

(assert (=> b!4700968 (= lt!1863880 Unit!126193)))

(assert (=> b!4700968 (forall!11399 lt!1863355 lambda!210234)))

(declare-fun lt!1863865 () Unit!126116)

(declare-fun Unit!126194 () Unit!126116)

(assert (=> b!4700968 (= lt!1863865 Unit!126194)))

(assert (=> b!4700968 call!328645))

(declare-fun lt!1863884 () Unit!126116)

(declare-fun Unit!126195 () Unit!126116)

(assert (=> b!4700968 (= lt!1863884 Unit!126195)))

(declare-fun lt!1863876 () Unit!126116)

(declare-fun Unit!126196 () Unit!126116)

(assert (=> b!4700968 (= lt!1863876 Unit!126196)))

(declare-fun lt!1863874 () Unit!126116)

(assert (=> b!4700968 (= lt!1863874 (addForallContainsKeyThenBeforeAdding!731 lt!1863360 lt!1863871 (_1!30283 (h!58806 lt!1863355)) (_2!30283 (h!58806 lt!1863355))))))

(assert (=> b!4700968 (forall!11399 (toList!5681 lt!1863360) lambda!210234)))

(declare-fun lt!1863875 () Unit!126116)

(assert (=> b!4700968 (= lt!1863875 lt!1863874)))

(assert (=> b!4700968 (forall!11399 (toList!5681 lt!1863360) lambda!210234)))

(declare-fun lt!1863878 () Unit!126116)

(declare-fun Unit!126197 () Unit!126116)

(assert (=> b!4700968 (= lt!1863878 Unit!126197)))

(declare-fun res!1984718 () Bool)

(assert (=> b!4700968 (= res!1984718 (forall!11399 lt!1863355 lambda!210234))))

(assert (=> b!4700968 (=> (not res!1984718) (not e!2932468))))

(assert (=> b!4700968 e!2932468))

(declare-fun lt!1863868 () Unit!126116)

(declare-fun Unit!126198 () Unit!126116)

(assert (=> b!4700968 (= lt!1863868 Unit!126198)))

(declare-fun bm!328641 () Bool)

(declare-fun c!803560 () Bool)

(assert (=> bm!328641 (= call!328645 (forall!11399 (ite c!803560 (toList!5681 lt!1863360) (toList!5681 lt!1863873)) (ite c!803560 lambda!210232 lambda!210234)))))

(declare-fun bm!328642 () Bool)

(assert (=> bm!328642 (= call!328647 (forall!11399 (ite c!803560 (toList!5681 lt!1863360) (toList!5681 lt!1863873)) (ite c!803560 lambda!210232 lambda!210234)))))

(assert (=> d!1495244 e!2932470))

(declare-fun res!1984717 () Bool)

(assert (=> d!1495244 (=> (not res!1984717) (not e!2932470))))

(assert (=> d!1495244 (= res!1984717 (forall!11399 lt!1863355 lambda!210235))))

(assert (=> d!1495244 (= lt!1863877 e!2932469)))

(assert (=> d!1495244 (= c!803560 ((_ is Nil!52527) lt!1863355))))

(assert (=> d!1495244 (noDuplicateKeys!1896 lt!1863355)))

(assert (=> d!1495244 (= (addToMapMapFromBucket!1328 lt!1863355 lt!1863360) lt!1863877)))

(declare-fun b!4700965 () Bool)

(declare-fun res!1984719 () Bool)

(assert (=> b!4700965 (=> (not res!1984719) (not e!2932470))))

(assert (=> b!4700965 (= res!1984719 (forall!11399 (toList!5681 lt!1863360) lambda!210235))))

(assert (= (and d!1495244 c!803560) b!4700966))

(assert (= (and d!1495244 (not c!803560)) b!4700968))

(assert (= (and b!4700968 res!1984718) b!4700964))

(assert (= (or b!4700966 b!4700968) bm!328640))

(assert (= (or b!4700966 b!4700968) bm!328642))

(assert (= (or b!4700966 b!4700968) bm!328641))

(assert (= (and d!1495244 res!1984717) b!4700965))

(assert (= (and b!4700965 res!1984719) b!4700967))

(declare-fun m!5616093 () Bool)

(assert (=> d!1495244 m!5616093))

(assert (=> d!1495244 m!5616057))

(declare-fun m!5616095 () Bool)

(assert (=> b!4700964 m!5616095))

(declare-fun m!5616097 () Bool)

(assert (=> bm!328641 m!5616097))

(assert (=> bm!328642 m!5616097))

(declare-fun m!5616099 () Bool)

(assert (=> b!4700967 m!5616099))

(assert (=> bm!328640 m!5615509))

(declare-fun m!5616101 () Bool)

(assert (=> b!4700968 m!5616101))

(declare-fun m!5616103 () Bool)

(assert (=> b!4700968 m!5616103))

(assert (=> b!4700968 m!5616095))

(declare-fun m!5616105 () Bool)

(assert (=> b!4700968 m!5616105))

(declare-fun m!5616107 () Bool)

(assert (=> b!4700968 m!5616107))

(assert (=> b!4700968 m!5616095))

(assert (=> b!4700968 m!5616101))

(declare-fun m!5616109 () Bool)

(assert (=> b!4700968 m!5616109))

(declare-fun m!5616111 () Bool)

(assert (=> b!4700968 m!5616111))

(declare-fun m!5616113 () Bool)

(assert (=> b!4700968 m!5616113))

(declare-fun m!5616115 () Bool)

(assert (=> b!4700968 m!5616115))

(declare-fun m!5616117 () Bool)

(assert (=> b!4700968 m!5616117))

(assert (=> b!4700968 m!5616113))

(declare-fun m!5616119 () Bool)

(assert (=> b!4700965 m!5616119))

(assert (=> b!4700573 d!1495244))

(declare-fun d!1495246 () Bool)

(assert (=> d!1495246 (= (eq!1055 (addToMapMapFromBucket!1328 (Cons!52527 lt!1863331 lt!1863355) lt!1863360) (+!2180 (addToMapMapFromBucket!1328 lt!1863355 lt!1863360) lt!1863331)) (= (content!9260 (toList!5681 (addToMapMapFromBucket!1328 (Cons!52527 lt!1863331 lt!1863355) lt!1863360))) (content!9260 (toList!5681 (+!2180 (addToMapMapFromBucket!1328 lt!1863355 lt!1863360) lt!1863331)))))))

(declare-fun bs!1095156 () Bool)

(assert (= bs!1095156 d!1495246))

(declare-fun m!5616121 () Bool)

(assert (=> bs!1095156 m!5616121))

(declare-fun m!5616123 () Bool)

(assert (=> bs!1095156 m!5616123))

(assert (=> b!4700573 d!1495246))

(declare-fun bs!1095157 () Bool)

(declare-fun d!1495248 () Bool)

(assert (= bs!1095157 (and d!1495248 d!1495238)))

(declare-fun lambda!210238 () Int)

(assert (=> bs!1095157 (= lambda!210238 lambda!210231)))

(declare-fun bs!1095158 () Bool)

(assert (= bs!1095158 (and d!1495248 start!476696)))

(assert (=> bs!1095158 (= lambda!210238 lambda!210091)))

(declare-fun bs!1095159 () Bool)

(assert (= bs!1095159 (and d!1495248 d!1495122)))

(assert (=> bs!1095159 (= lambda!210238 lambda!210200)))

(declare-fun bs!1095160 () Bool)

(assert (= bs!1095160 (and d!1495248 d!1495116)))

(assert (=> bs!1095160 (= lambda!210238 lambda!210194)))

(declare-fun bs!1095161 () Bool)

(assert (= bs!1095161 (and d!1495248 d!1495180)))

(assert (=> bs!1095161 (= lambda!210238 lambda!210223)))

(declare-fun bs!1095162 () Bool)

(assert (= bs!1095162 (and d!1495248 d!1495130)))

(assert (=> bs!1095162 (= lambda!210238 lambda!210201)))

(declare-fun bs!1095163 () Bool)

(assert (= bs!1095163 (and d!1495248 d!1495220)))

(assert (=> bs!1095163 (= lambda!210238 lambda!210226)))

(declare-fun bs!1095164 () Bool)

(assert (= bs!1095164 (and d!1495248 d!1495078)))

(assert (=> bs!1095164 (= lambda!210238 lambda!210188)))

(declare-fun bs!1095165 () Bool)

(assert (= bs!1095165 (and d!1495248 d!1495134)))

(assert (=> bs!1095165 (= lambda!210238 lambda!210205)))

(assert (=> d!1495248 (contains!15802 (extractMap!1922 (toList!5682 lt!1863337)) key!4653)))

(declare-fun lt!1863888 () Unit!126116)

(declare-fun choose!32889 (ListLongMap!4211 K!13890 Hashable!6265) Unit!126116)

(assert (=> d!1495248 (= lt!1863888 (choose!32889 lt!1863337 key!4653 hashF!1323))))

(assert (=> d!1495248 (forall!11397 (toList!5682 lt!1863337) lambda!210238)))

(assert (=> d!1495248 (= (lemmaListContainsThenExtractedMapContains!488 lt!1863337 key!4653 hashF!1323) lt!1863888)))

(declare-fun bs!1095166 () Bool)

(assert (= bs!1095166 d!1495248))

(declare-fun m!5616125 () Bool)

(assert (=> bs!1095166 m!5616125))

(assert (=> bs!1095166 m!5616125))

(declare-fun m!5616127 () Bool)

(assert (=> bs!1095166 m!5616127))

(declare-fun m!5616129 () Bool)

(assert (=> bs!1095166 m!5616129))

(declare-fun m!5616131 () Bool)

(assert (=> bs!1095166 m!5616131))

(assert (=> b!4700573 d!1495248))

(declare-fun bs!1095167 () Bool)

(declare-fun d!1495250 () Bool)

(assert (= bs!1095167 (and d!1495250 d!1495238)))

(declare-fun lambda!210239 () Int)

(assert (=> bs!1095167 (= lambda!210239 lambda!210231)))

(declare-fun bs!1095168 () Bool)

(assert (= bs!1095168 (and d!1495250 start!476696)))

(assert (=> bs!1095168 (= lambda!210239 lambda!210091)))

(declare-fun bs!1095169 () Bool)

(assert (= bs!1095169 (and d!1495250 d!1495122)))

(assert (=> bs!1095169 (= lambda!210239 lambda!210200)))

(declare-fun bs!1095170 () Bool)

(assert (= bs!1095170 (and d!1495250 d!1495116)))

(assert (=> bs!1095170 (= lambda!210239 lambda!210194)))

(declare-fun bs!1095171 () Bool)

(assert (= bs!1095171 (and d!1495250 d!1495180)))

(assert (=> bs!1095171 (= lambda!210239 lambda!210223)))

(declare-fun bs!1095172 () Bool)

(assert (= bs!1095172 (and d!1495250 d!1495248)))

(assert (=> bs!1095172 (= lambda!210239 lambda!210238)))

(declare-fun bs!1095173 () Bool)

(assert (= bs!1095173 (and d!1495250 d!1495130)))

(assert (=> bs!1095173 (= lambda!210239 lambda!210201)))

(declare-fun bs!1095174 () Bool)

(assert (= bs!1095174 (and d!1495250 d!1495220)))

(assert (=> bs!1095174 (= lambda!210239 lambda!210226)))

(declare-fun bs!1095175 () Bool)

(assert (= bs!1095175 (and d!1495250 d!1495078)))

(assert (=> bs!1095175 (= lambda!210239 lambda!210188)))

(declare-fun bs!1095176 () Bool)

(assert (= bs!1095176 (and d!1495250 d!1495134)))

(assert (=> bs!1095176 (= lambda!210239 lambda!210205)))

(declare-fun lt!1863889 () ListMap!5045)

(assert (=> d!1495250 (invariantList!1444 (toList!5681 lt!1863889))))

(declare-fun e!2932471 () ListMap!5045)

(assert (=> d!1495250 (= lt!1863889 e!2932471)))

(declare-fun c!803561 () Bool)

(assert (=> d!1495250 (= c!803561 ((_ is Cons!52528) lt!1863344))))

(assert (=> d!1495250 (forall!11397 lt!1863344 lambda!210239)))

(assert (=> d!1495250 (= (extractMap!1922 lt!1863344) lt!1863889)))

(declare-fun b!4700969 () Bool)

(assert (=> b!4700969 (= e!2932471 (addToMapMapFromBucket!1328 (_2!30284 (h!58807 lt!1863344)) (extractMap!1922 (t!359862 lt!1863344))))))

(declare-fun b!4700970 () Bool)

(assert (=> b!4700970 (= e!2932471 (ListMap!5046 Nil!52527))))

(assert (= (and d!1495250 c!803561) b!4700969))

(assert (= (and d!1495250 (not c!803561)) b!4700970))

(declare-fun m!5616133 () Bool)

(assert (=> d!1495250 m!5616133))

(declare-fun m!5616135 () Bool)

(assert (=> d!1495250 m!5616135))

(declare-fun m!5616137 () Bool)

(assert (=> b!4700969 m!5616137))

(assert (=> b!4700969 m!5616137))

(declare-fun m!5616139 () Bool)

(assert (=> b!4700969 m!5616139))

(assert (=> b!4700573 d!1495250))

(declare-fun d!1495252 () Bool)

(assert (=> d!1495252 (= (eq!1055 (addToMapMapFromBucket!1328 (Cons!52527 lt!1863329 lt!1863352) lt!1863360) (+!2180 (addToMapMapFromBucket!1328 lt!1863352 lt!1863360) lt!1863329)) (= (content!9260 (toList!5681 (addToMapMapFromBucket!1328 (Cons!52527 lt!1863329 lt!1863352) lt!1863360))) (content!9260 (toList!5681 (+!2180 (addToMapMapFromBucket!1328 lt!1863352 lt!1863360) lt!1863329)))))))

(declare-fun bs!1095177 () Bool)

(assert (= bs!1095177 d!1495252))

(declare-fun m!5616141 () Bool)

(assert (=> bs!1095177 m!5616141))

(declare-fun m!5616143 () Bool)

(assert (=> bs!1095177 m!5616143))

(assert (=> b!4700573 d!1495252))

(declare-fun bs!1095178 () Bool)

(declare-fun b!4700973 () Bool)

(assert (= bs!1095178 (and b!4700973 b!4700966)))

(declare-fun lambda!210240 () Int)

(assert (=> bs!1095178 (= lambda!210240 lambda!210232)))

(declare-fun bs!1095179 () Bool)

(assert (= bs!1095179 (and b!4700973 d!1495230)))

(assert (=> bs!1095179 (= (= lt!1863360 lt!1863844) (= lambda!210240 lambda!210230))))

(declare-fun bs!1095180 () Bool)

(assert (= bs!1095180 (and b!4700973 d!1495002)))

(assert (=> bs!1095180 (= (= lt!1863360 lt!1863626) (= lambda!210240 lambda!210182))))

(declare-fun bs!1095181 () Bool)

(assert (= bs!1095181 (and b!4700973 b!4700957)))

(assert (=> bs!1095181 (= (= lt!1863360 lt!1863838) (= lambda!210240 lambda!210229))))

(declare-fun bs!1095182 () Bool)

(assert (= bs!1095182 (and b!4700973 d!1495088)))

(assert (=> bs!1095182 (not (= lambda!210240 lambda!210191))))

(declare-fun bs!1095183 () Bool)

(assert (= bs!1095183 (and b!4700973 b!4700968)))

(assert (=> bs!1095183 (= lambda!210240 lambda!210233)))

(assert (=> bs!1095181 (= lambda!210240 lambda!210228)))

(declare-fun bs!1095184 () Bool)

(assert (= bs!1095184 (and b!4700973 b!4700715)))

(assert (=> bs!1095184 (= lambda!210240 lambda!210180)))

(declare-fun bs!1095185 () Bool)

(assert (= bs!1095185 (and b!4700973 b!4700955)))

(assert (=> bs!1095185 (= lambda!210240 lambda!210227)))

(declare-fun bs!1095186 () Bool)

(assert (= bs!1095186 (and b!4700973 d!1495244)))

(assert (=> bs!1095186 (= (= lt!1863360 lt!1863877) (= lambda!210240 lambda!210235))))

(declare-fun bs!1095187 () Bool)

(assert (= bs!1095187 (and b!4700973 b!4700713)))

(assert (=> bs!1095187 (= lambda!210240 lambda!210179)))

(assert (=> bs!1095183 (= (= lt!1863360 lt!1863871) (= lambda!210240 lambda!210234))))

(assert (=> bs!1095184 (= (= lt!1863360 lt!1863620) (= lambda!210240 lambda!210181))))

(assert (=> b!4700973 true))

(declare-fun bs!1095188 () Bool)

(declare-fun b!4700975 () Bool)

(assert (= bs!1095188 (and b!4700975 b!4700966)))

(declare-fun lambda!210241 () Int)

(assert (=> bs!1095188 (= lambda!210241 lambda!210232)))

(declare-fun bs!1095189 () Bool)

(assert (= bs!1095189 (and b!4700975 d!1495230)))

(assert (=> bs!1095189 (= (= lt!1863360 lt!1863844) (= lambda!210241 lambda!210230))))

(declare-fun bs!1095190 () Bool)

(assert (= bs!1095190 (and b!4700975 d!1495002)))

(assert (=> bs!1095190 (= (= lt!1863360 lt!1863626) (= lambda!210241 lambda!210182))))

(declare-fun bs!1095191 () Bool)

(assert (= bs!1095191 (and b!4700975 b!4700957)))

(assert (=> bs!1095191 (= (= lt!1863360 lt!1863838) (= lambda!210241 lambda!210229))))

(declare-fun bs!1095192 () Bool)

(assert (= bs!1095192 (and b!4700975 d!1495088)))

(assert (=> bs!1095192 (not (= lambda!210241 lambda!210191))))

(declare-fun bs!1095193 () Bool)

(assert (= bs!1095193 (and b!4700975 b!4700973)))

(assert (=> bs!1095193 (= lambda!210241 lambda!210240)))

(declare-fun bs!1095194 () Bool)

(assert (= bs!1095194 (and b!4700975 b!4700968)))

(assert (=> bs!1095194 (= lambda!210241 lambda!210233)))

(assert (=> bs!1095191 (= lambda!210241 lambda!210228)))

(declare-fun bs!1095195 () Bool)

(assert (= bs!1095195 (and b!4700975 b!4700715)))

(assert (=> bs!1095195 (= lambda!210241 lambda!210180)))

(declare-fun bs!1095196 () Bool)

(assert (= bs!1095196 (and b!4700975 b!4700955)))

(assert (=> bs!1095196 (= lambda!210241 lambda!210227)))

(declare-fun bs!1095197 () Bool)

(assert (= bs!1095197 (and b!4700975 d!1495244)))

(assert (=> bs!1095197 (= (= lt!1863360 lt!1863877) (= lambda!210241 lambda!210235))))

(declare-fun bs!1095198 () Bool)

(assert (= bs!1095198 (and b!4700975 b!4700713)))

(assert (=> bs!1095198 (= lambda!210241 lambda!210179)))

(assert (=> bs!1095194 (= (= lt!1863360 lt!1863871) (= lambda!210241 lambda!210234))))

(assert (=> bs!1095195 (= (= lt!1863360 lt!1863620) (= lambda!210241 lambda!210181))))

(assert (=> b!4700975 true))

(declare-fun lambda!210242 () Int)

(declare-fun lt!1863896 () ListMap!5045)

(assert (=> bs!1095188 (= (= lt!1863896 lt!1863360) (= lambda!210242 lambda!210232))))

(assert (=> bs!1095189 (= (= lt!1863896 lt!1863844) (= lambda!210242 lambda!210230))))

(assert (=> bs!1095190 (= (= lt!1863896 lt!1863626) (= lambda!210242 lambda!210182))))

(assert (=> bs!1095191 (= (= lt!1863896 lt!1863838) (= lambda!210242 lambda!210229))))

(assert (=> bs!1095192 (not (= lambda!210242 lambda!210191))))

(assert (=> bs!1095193 (= (= lt!1863896 lt!1863360) (= lambda!210242 lambda!210240))))

(assert (=> bs!1095194 (= (= lt!1863896 lt!1863360) (= lambda!210242 lambda!210233))))

(assert (=> bs!1095191 (= (= lt!1863896 lt!1863360) (= lambda!210242 lambda!210228))))

(assert (=> bs!1095195 (= (= lt!1863896 lt!1863360) (= lambda!210242 lambda!210180))))

(assert (=> bs!1095196 (= (= lt!1863896 lt!1863360) (= lambda!210242 lambda!210227))))

(assert (=> bs!1095198 (= (= lt!1863896 lt!1863360) (= lambda!210242 lambda!210179))))

(assert (=> bs!1095194 (= (= lt!1863896 lt!1863871) (= lambda!210242 lambda!210234))))

(assert (=> bs!1095195 (= (= lt!1863896 lt!1863620) (= lambda!210242 lambda!210181))))

(assert (=> b!4700975 (= (= lt!1863896 lt!1863360) (= lambda!210242 lambda!210241))))

(assert (=> bs!1095197 (= (= lt!1863896 lt!1863877) (= lambda!210242 lambda!210235))))

(assert (=> b!4700975 true))

(declare-fun bs!1095199 () Bool)

(declare-fun d!1495254 () Bool)

(assert (= bs!1095199 (and d!1495254 b!4700966)))

(declare-fun lambda!210243 () Int)

(declare-fun lt!1863902 () ListMap!5045)

(assert (=> bs!1095199 (= (= lt!1863902 lt!1863360) (= lambda!210243 lambda!210232))))

(declare-fun bs!1095200 () Bool)

(assert (= bs!1095200 (and d!1495254 d!1495230)))

(assert (=> bs!1095200 (= (= lt!1863902 lt!1863844) (= lambda!210243 lambda!210230))))

(declare-fun bs!1095201 () Bool)

(assert (= bs!1095201 (and d!1495254 d!1495002)))

(assert (=> bs!1095201 (= (= lt!1863902 lt!1863626) (= lambda!210243 lambda!210182))))

(declare-fun bs!1095202 () Bool)

(assert (= bs!1095202 (and d!1495254 b!4700957)))

(assert (=> bs!1095202 (= (= lt!1863902 lt!1863838) (= lambda!210243 lambda!210229))))

(declare-fun bs!1095203 () Bool)

(assert (= bs!1095203 (and d!1495254 d!1495088)))

(assert (=> bs!1095203 (not (= lambda!210243 lambda!210191))))

(declare-fun bs!1095204 () Bool)

(assert (= bs!1095204 (and d!1495254 b!4700973)))

(assert (=> bs!1095204 (= (= lt!1863902 lt!1863360) (= lambda!210243 lambda!210240))))

(assert (=> bs!1095202 (= (= lt!1863902 lt!1863360) (= lambda!210243 lambda!210228))))

(declare-fun bs!1095205 () Bool)

(assert (= bs!1095205 (and d!1495254 b!4700715)))

(assert (=> bs!1095205 (= (= lt!1863902 lt!1863360) (= lambda!210243 lambda!210180))))

(declare-fun bs!1095206 () Bool)

(assert (= bs!1095206 (and d!1495254 b!4700955)))

(assert (=> bs!1095206 (= (= lt!1863902 lt!1863360) (= lambda!210243 lambda!210227))))

(declare-fun bs!1095207 () Bool)

(assert (= bs!1095207 (and d!1495254 b!4700713)))

(assert (=> bs!1095207 (= (= lt!1863902 lt!1863360) (= lambda!210243 lambda!210179))))

(declare-fun bs!1095208 () Bool)

(assert (= bs!1095208 (and d!1495254 b!4700968)))

(assert (=> bs!1095208 (= (= lt!1863902 lt!1863360) (= lambda!210243 lambda!210233))))

(declare-fun bs!1095209 () Bool)

(assert (= bs!1095209 (and d!1495254 b!4700975)))

(assert (=> bs!1095209 (= (= lt!1863902 lt!1863896) (= lambda!210243 lambda!210242))))

(assert (=> bs!1095208 (= (= lt!1863902 lt!1863871) (= lambda!210243 lambda!210234))))

(assert (=> bs!1095205 (= (= lt!1863902 lt!1863620) (= lambda!210243 lambda!210181))))

(assert (=> bs!1095209 (= (= lt!1863902 lt!1863360) (= lambda!210243 lambda!210241))))

(declare-fun bs!1095210 () Bool)

(assert (= bs!1095210 (and d!1495254 d!1495244)))

(assert (=> bs!1095210 (= (= lt!1863902 lt!1863877) (= lambda!210243 lambda!210235))))

(assert (=> d!1495254 true))

(declare-fun b!4700971 () Bool)

(declare-fun e!2932472 () Bool)

(assert (=> b!4700971 (= e!2932472 (forall!11399 (toList!5681 lt!1863360) lambda!210242))))

(declare-fun e!2932473 () ListMap!5045)

(assert (=> b!4700973 (= e!2932473 lt!1863360)))

(declare-fun lt!1863906 () Unit!126116)

(declare-fun call!328649 () Unit!126116)

(assert (=> b!4700973 (= lt!1863906 call!328649)))

(declare-fun call!328650 () Bool)

(assert (=> b!4700973 call!328650))

(declare-fun lt!1863910 () Unit!126116)

(assert (=> b!4700973 (= lt!1863910 lt!1863906)))

(declare-fun call!328648 () Bool)

(assert (=> b!4700973 call!328648))

(declare-fun lt!1863907 () Unit!126116)

(declare-fun Unit!126210 () Unit!126116)

(assert (=> b!4700973 (= lt!1863907 Unit!126210)))

(declare-fun b!4700974 () Bool)

(declare-fun e!2932474 () Bool)

(assert (=> b!4700974 (= e!2932474 (invariantList!1444 (toList!5681 lt!1863902)))))

(declare-fun bm!328643 () Bool)

(assert (=> bm!328643 (= call!328649 (lemmaContainsAllItsOwnKeys!732 lt!1863360))))

(assert (=> b!4700975 (= e!2932473 lt!1863896)))

(declare-fun lt!1863898 () ListMap!5045)

(assert (=> b!4700975 (= lt!1863898 (+!2180 lt!1863360 (h!58806 (Cons!52527 lt!1863329 lt!1863352))))))

(assert (=> b!4700975 (= lt!1863896 (addToMapMapFromBucket!1328 (t!359861 (Cons!52527 lt!1863329 lt!1863352)) (+!2180 lt!1863360 (h!58806 (Cons!52527 lt!1863329 lt!1863352)))))))

(declare-fun lt!1863894 () Unit!126116)

(assert (=> b!4700975 (= lt!1863894 call!328649)))

(assert (=> b!4700975 (forall!11399 (toList!5681 lt!1863360) lambda!210241)))

(declare-fun lt!1863892 () Unit!126116)

(assert (=> b!4700975 (= lt!1863892 lt!1863894)))

(assert (=> b!4700975 call!328650))

(declare-fun lt!1863891 () Unit!126116)

(declare-fun Unit!126211 () Unit!126116)

(assert (=> b!4700975 (= lt!1863891 Unit!126211)))

(assert (=> b!4700975 (forall!11399 (t!359861 (Cons!52527 lt!1863329 lt!1863352)) lambda!210242)))

(declare-fun lt!1863908 () Unit!126116)

(declare-fun Unit!126212 () Unit!126116)

(assert (=> b!4700975 (= lt!1863908 Unit!126212)))

(declare-fun lt!1863895 () Unit!126116)

(declare-fun Unit!126213 () Unit!126116)

(assert (=> b!4700975 (= lt!1863895 Unit!126213)))

(declare-fun lt!1863904 () Unit!126116)

(assert (=> b!4700975 (= lt!1863904 (forallContained!3506 (toList!5681 lt!1863898) lambda!210242 (h!58806 (Cons!52527 lt!1863329 lt!1863352))))))

(assert (=> b!4700975 (contains!15802 lt!1863898 (_1!30283 (h!58806 (Cons!52527 lt!1863329 lt!1863352))))))

(declare-fun lt!1863897 () Unit!126116)

(declare-fun Unit!126214 () Unit!126116)

(assert (=> b!4700975 (= lt!1863897 Unit!126214)))

(assert (=> b!4700975 (contains!15802 lt!1863896 (_1!30283 (h!58806 (Cons!52527 lt!1863329 lt!1863352))))))

(declare-fun lt!1863905 () Unit!126116)

(declare-fun Unit!126215 () Unit!126116)

(assert (=> b!4700975 (= lt!1863905 Unit!126215)))

(assert (=> b!4700975 (forall!11399 (Cons!52527 lt!1863329 lt!1863352) lambda!210242)))

(declare-fun lt!1863890 () Unit!126116)

(declare-fun Unit!126216 () Unit!126116)

(assert (=> b!4700975 (= lt!1863890 Unit!126216)))

(assert (=> b!4700975 call!328648))

(declare-fun lt!1863909 () Unit!126116)

(declare-fun Unit!126217 () Unit!126116)

(assert (=> b!4700975 (= lt!1863909 Unit!126217)))

(declare-fun lt!1863901 () Unit!126116)

(declare-fun Unit!126219 () Unit!126116)

(assert (=> b!4700975 (= lt!1863901 Unit!126219)))

(declare-fun lt!1863899 () Unit!126116)

(assert (=> b!4700975 (= lt!1863899 (addForallContainsKeyThenBeforeAdding!731 lt!1863360 lt!1863896 (_1!30283 (h!58806 (Cons!52527 lt!1863329 lt!1863352))) (_2!30283 (h!58806 (Cons!52527 lt!1863329 lt!1863352)))))))

(assert (=> b!4700975 (forall!11399 (toList!5681 lt!1863360) lambda!210242)))

(declare-fun lt!1863900 () Unit!126116)

(assert (=> b!4700975 (= lt!1863900 lt!1863899)))

(assert (=> b!4700975 (forall!11399 (toList!5681 lt!1863360) lambda!210242)))

(declare-fun lt!1863903 () Unit!126116)

(declare-fun Unit!126220 () Unit!126116)

(assert (=> b!4700975 (= lt!1863903 Unit!126220)))

(declare-fun res!1984721 () Bool)

(assert (=> b!4700975 (= res!1984721 (forall!11399 (Cons!52527 lt!1863329 lt!1863352) lambda!210242))))

(assert (=> b!4700975 (=> (not res!1984721) (not e!2932472))))

(assert (=> b!4700975 e!2932472))

(declare-fun lt!1863893 () Unit!126116)

(declare-fun Unit!126221 () Unit!126116)

(assert (=> b!4700975 (= lt!1863893 Unit!126221)))

(declare-fun bm!328644 () Bool)

(declare-fun c!803562 () Bool)

(assert (=> bm!328644 (= call!328648 (forall!11399 (ite c!803562 (toList!5681 lt!1863360) (toList!5681 lt!1863898)) (ite c!803562 lambda!210240 lambda!210242)))))

(declare-fun bm!328645 () Bool)

(assert (=> bm!328645 (= call!328650 (forall!11399 (ite c!803562 (toList!5681 lt!1863360) (toList!5681 lt!1863898)) (ite c!803562 lambda!210240 lambda!210242)))))

(assert (=> d!1495254 e!2932474))

(declare-fun res!1984720 () Bool)

(assert (=> d!1495254 (=> (not res!1984720) (not e!2932474))))

(assert (=> d!1495254 (= res!1984720 (forall!11399 (Cons!52527 lt!1863329 lt!1863352) lambda!210243))))

(assert (=> d!1495254 (= lt!1863902 e!2932473)))

(assert (=> d!1495254 (= c!803562 ((_ is Nil!52527) (Cons!52527 lt!1863329 lt!1863352)))))

(assert (=> d!1495254 (noDuplicateKeys!1896 (Cons!52527 lt!1863329 lt!1863352))))

(assert (=> d!1495254 (= (addToMapMapFromBucket!1328 (Cons!52527 lt!1863329 lt!1863352) lt!1863360) lt!1863902)))

(declare-fun b!4700972 () Bool)

(declare-fun res!1984722 () Bool)

(assert (=> b!4700972 (=> (not res!1984722) (not e!2932474))))

(assert (=> b!4700972 (= res!1984722 (forall!11399 (toList!5681 lt!1863360) lambda!210243))))

(assert (= (and d!1495254 c!803562) b!4700973))

(assert (= (and d!1495254 (not c!803562)) b!4700975))

(assert (= (and b!4700975 res!1984721) b!4700971))

(assert (= (or b!4700973 b!4700975) bm!328643))

(assert (= (or b!4700973 b!4700975) bm!328645))

(assert (= (or b!4700973 b!4700975) bm!328644))

(assert (= (and d!1495254 res!1984720) b!4700972))

(assert (= (and b!4700972 res!1984722) b!4700974))

(declare-fun m!5616145 () Bool)

(assert (=> d!1495254 m!5616145))

(declare-fun m!5616147 () Bool)

(assert (=> d!1495254 m!5616147))

(declare-fun m!5616149 () Bool)

(assert (=> b!4700971 m!5616149))

(declare-fun m!5616151 () Bool)

(assert (=> bm!328644 m!5616151))

(assert (=> bm!328645 m!5616151))

(declare-fun m!5616153 () Bool)

(assert (=> b!4700974 m!5616153))

(assert (=> bm!328643 m!5615509))

(declare-fun m!5616155 () Bool)

(assert (=> b!4700975 m!5616155))

(declare-fun m!5616157 () Bool)

(assert (=> b!4700975 m!5616157))

(assert (=> b!4700975 m!5616149))

(declare-fun m!5616159 () Bool)

(assert (=> b!4700975 m!5616159))

(declare-fun m!5616161 () Bool)

(assert (=> b!4700975 m!5616161))

(assert (=> b!4700975 m!5616149))

(assert (=> b!4700975 m!5616155))

(declare-fun m!5616163 () Bool)

(assert (=> b!4700975 m!5616163))

(declare-fun m!5616165 () Bool)

(assert (=> b!4700975 m!5616165))

(declare-fun m!5616167 () Bool)

(assert (=> b!4700975 m!5616167))

(declare-fun m!5616169 () Bool)

(assert (=> b!4700975 m!5616169))

(declare-fun m!5616171 () Bool)

(assert (=> b!4700975 m!5616171))

(assert (=> b!4700975 m!5616167))

(declare-fun m!5616173 () Bool)

(assert (=> b!4700972 m!5616173))

(assert (=> b!4700573 d!1495254))

(declare-fun d!1495256 () Bool)

(assert (=> d!1495256 (= (eq!1055 lt!1863334 (+!2180 lt!1863327 (h!58806 oldBucket!34))) (= (content!9260 (toList!5681 lt!1863334)) (content!9260 (toList!5681 (+!2180 lt!1863327 (h!58806 oldBucket!34))))))))

(declare-fun bs!1095211 () Bool)

(assert (= bs!1095211 d!1495256))

(declare-fun m!5616175 () Bool)

(assert (=> bs!1095211 m!5616175))

(declare-fun m!5616177 () Bool)

(assert (=> bs!1095211 m!5616177))

(assert (=> b!4700573 d!1495256))

(declare-fun bs!1095212 () Bool)

(declare-fun b!4700978 () Bool)

(assert (= bs!1095212 (and b!4700978 b!4700966)))

(declare-fun lambda!210244 () Int)

(assert (=> bs!1095212 (= lambda!210244 lambda!210232)))

(declare-fun bs!1095213 () Bool)

(assert (= bs!1095213 (and b!4700978 d!1495230)))

(assert (=> bs!1095213 (= (= lt!1863360 lt!1863844) (= lambda!210244 lambda!210230))))

(declare-fun bs!1095214 () Bool)

(assert (= bs!1095214 (and b!4700978 d!1495002)))

(assert (=> bs!1095214 (= (= lt!1863360 lt!1863626) (= lambda!210244 lambda!210182))))

(declare-fun bs!1095215 () Bool)

(assert (= bs!1095215 (and b!4700978 b!4700957)))

(assert (=> bs!1095215 (= (= lt!1863360 lt!1863838) (= lambda!210244 lambda!210229))))

(declare-fun bs!1095216 () Bool)

(assert (= bs!1095216 (and b!4700978 d!1495088)))

(assert (=> bs!1095216 (not (= lambda!210244 lambda!210191))))

(declare-fun bs!1095217 () Bool)

(assert (= bs!1095217 (and b!4700978 b!4700973)))

(assert (=> bs!1095217 (= lambda!210244 lambda!210240)))

(assert (=> bs!1095215 (= lambda!210244 lambda!210228)))

(declare-fun bs!1095218 () Bool)

(assert (= bs!1095218 (and b!4700978 b!4700715)))

(assert (=> bs!1095218 (= lambda!210244 lambda!210180)))

(declare-fun bs!1095219 () Bool)

(assert (= bs!1095219 (and b!4700978 b!4700955)))

(assert (=> bs!1095219 (= lambda!210244 lambda!210227)))

(declare-fun bs!1095220 () Bool)

(assert (= bs!1095220 (and b!4700978 b!4700713)))

(assert (=> bs!1095220 (= lambda!210244 lambda!210179)))

(declare-fun bs!1095221 () Bool)

(assert (= bs!1095221 (and b!4700978 d!1495254)))

(assert (=> bs!1095221 (= (= lt!1863360 lt!1863902) (= lambda!210244 lambda!210243))))

(declare-fun bs!1095222 () Bool)

(assert (= bs!1095222 (and b!4700978 b!4700968)))

(assert (=> bs!1095222 (= lambda!210244 lambda!210233)))

(declare-fun bs!1095223 () Bool)

(assert (= bs!1095223 (and b!4700978 b!4700975)))

(assert (=> bs!1095223 (= (= lt!1863360 lt!1863896) (= lambda!210244 lambda!210242))))

(assert (=> bs!1095222 (= (= lt!1863360 lt!1863871) (= lambda!210244 lambda!210234))))

(assert (=> bs!1095218 (= (= lt!1863360 lt!1863620) (= lambda!210244 lambda!210181))))

(assert (=> bs!1095223 (= lambda!210244 lambda!210241)))

(declare-fun bs!1095224 () Bool)

(assert (= bs!1095224 (and b!4700978 d!1495244)))

(assert (=> bs!1095224 (= (= lt!1863360 lt!1863877) (= lambda!210244 lambda!210235))))

(assert (=> b!4700978 true))

(declare-fun bs!1095225 () Bool)

(declare-fun b!4700980 () Bool)

(assert (= bs!1095225 (and b!4700980 b!4700966)))

(declare-fun lambda!210245 () Int)

(assert (=> bs!1095225 (= lambda!210245 lambda!210232)))

(declare-fun bs!1095226 () Bool)

(assert (= bs!1095226 (and b!4700980 d!1495230)))

(assert (=> bs!1095226 (= (= lt!1863360 lt!1863844) (= lambda!210245 lambda!210230))))

(declare-fun bs!1095227 () Bool)

(assert (= bs!1095227 (and b!4700980 d!1495002)))

(assert (=> bs!1095227 (= (= lt!1863360 lt!1863626) (= lambda!210245 lambda!210182))))

(declare-fun bs!1095228 () Bool)

(assert (= bs!1095228 (and b!4700980 d!1495088)))

(assert (=> bs!1095228 (not (= lambda!210245 lambda!210191))))

(declare-fun bs!1095229 () Bool)

(assert (= bs!1095229 (and b!4700980 b!4700973)))

(assert (=> bs!1095229 (= lambda!210245 lambda!210240)))

(declare-fun bs!1095230 () Bool)

(assert (= bs!1095230 (and b!4700980 b!4700957)))

(assert (=> bs!1095230 (= lambda!210245 lambda!210228)))

(declare-fun bs!1095231 () Bool)

(assert (= bs!1095231 (and b!4700980 b!4700715)))

(assert (=> bs!1095231 (= lambda!210245 lambda!210180)))

(declare-fun bs!1095232 () Bool)

(assert (= bs!1095232 (and b!4700980 b!4700955)))

(assert (=> bs!1095232 (= lambda!210245 lambda!210227)))

(declare-fun bs!1095233 () Bool)

(assert (= bs!1095233 (and b!4700980 b!4700713)))

(assert (=> bs!1095233 (= lambda!210245 lambda!210179)))

(declare-fun bs!1095234 () Bool)

(assert (= bs!1095234 (and b!4700980 d!1495254)))

(assert (=> bs!1095234 (= (= lt!1863360 lt!1863902) (= lambda!210245 lambda!210243))))

(declare-fun bs!1095235 () Bool)

(assert (= bs!1095235 (and b!4700980 b!4700978)))

(assert (=> bs!1095235 (= lambda!210245 lambda!210244)))

(assert (=> bs!1095230 (= (= lt!1863360 lt!1863838) (= lambda!210245 lambda!210229))))

(declare-fun bs!1095236 () Bool)

(assert (= bs!1095236 (and b!4700980 b!4700968)))

(assert (=> bs!1095236 (= lambda!210245 lambda!210233)))

(declare-fun bs!1095237 () Bool)

(assert (= bs!1095237 (and b!4700980 b!4700975)))

(assert (=> bs!1095237 (= (= lt!1863360 lt!1863896) (= lambda!210245 lambda!210242))))

(assert (=> bs!1095236 (= (= lt!1863360 lt!1863871) (= lambda!210245 lambda!210234))))

(assert (=> bs!1095231 (= (= lt!1863360 lt!1863620) (= lambda!210245 lambda!210181))))

(assert (=> bs!1095237 (= lambda!210245 lambda!210241)))

(declare-fun bs!1095238 () Bool)

(assert (= bs!1095238 (and b!4700980 d!1495244)))

(assert (=> bs!1095238 (= (= lt!1863360 lt!1863877) (= lambda!210245 lambda!210235))))

(assert (=> b!4700980 true))

(declare-fun lt!1863917 () ListMap!5045)

(declare-fun lambda!210246 () Int)

(assert (=> bs!1095225 (= (= lt!1863917 lt!1863360) (= lambda!210246 lambda!210232))))

(assert (=> bs!1095226 (= (= lt!1863917 lt!1863844) (= lambda!210246 lambda!210230))))

(assert (=> bs!1095227 (= (= lt!1863917 lt!1863626) (= lambda!210246 lambda!210182))))

(assert (=> bs!1095228 (not (= lambda!210246 lambda!210191))))

(assert (=> b!4700980 (= (= lt!1863917 lt!1863360) (= lambda!210246 lambda!210245))))

(assert (=> bs!1095229 (= (= lt!1863917 lt!1863360) (= lambda!210246 lambda!210240))))

(assert (=> bs!1095230 (= (= lt!1863917 lt!1863360) (= lambda!210246 lambda!210228))))

(assert (=> bs!1095231 (= (= lt!1863917 lt!1863360) (= lambda!210246 lambda!210180))))

(assert (=> bs!1095232 (= (= lt!1863917 lt!1863360) (= lambda!210246 lambda!210227))))

(assert (=> bs!1095233 (= (= lt!1863917 lt!1863360) (= lambda!210246 lambda!210179))))

(assert (=> bs!1095234 (= (= lt!1863917 lt!1863902) (= lambda!210246 lambda!210243))))

(assert (=> bs!1095235 (= (= lt!1863917 lt!1863360) (= lambda!210246 lambda!210244))))

(assert (=> bs!1095230 (= (= lt!1863917 lt!1863838) (= lambda!210246 lambda!210229))))

(assert (=> bs!1095236 (= (= lt!1863917 lt!1863360) (= lambda!210246 lambda!210233))))

(assert (=> bs!1095237 (= (= lt!1863917 lt!1863896) (= lambda!210246 lambda!210242))))

(assert (=> bs!1095236 (= (= lt!1863917 lt!1863871) (= lambda!210246 lambda!210234))))

(assert (=> bs!1095231 (= (= lt!1863917 lt!1863620) (= lambda!210246 lambda!210181))))

(assert (=> bs!1095237 (= (= lt!1863917 lt!1863360) (= lambda!210246 lambda!210241))))

(assert (=> bs!1095238 (= (= lt!1863917 lt!1863877) (= lambda!210246 lambda!210235))))

(assert (=> b!4700980 true))

(declare-fun bs!1095239 () Bool)

(declare-fun d!1495258 () Bool)

(assert (= bs!1095239 (and d!1495258 b!4700966)))

(declare-fun lt!1863923 () ListMap!5045)

(declare-fun lambda!210247 () Int)

(assert (=> bs!1095239 (= (= lt!1863923 lt!1863360) (= lambda!210247 lambda!210232))))

(declare-fun bs!1095240 () Bool)

(assert (= bs!1095240 (and d!1495258 d!1495230)))

(assert (=> bs!1095240 (= (= lt!1863923 lt!1863844) (= lambda!210247 lambda!210230))))

(declare-fun bs!1095241 () Bool)

(assert (= bs!1095241 (and d!1495258 d!1495002)))

(assert (=> bs!1095241 (= (= lt!1863923 lt!1863626) (= lambda!210247 lambda!210182))))

(declare-fun bs!1095242 () Bool)

(assert (= bs!1095242 (and d!1495258 d!1495088)))

(assert (=> bs!1095242 (not (= lambda!210247 lambda!210191))))

(declare-fun bs!1095243 () Bool)

(assert (= bs!1095243 (and d!1495258 b!4700980)))

(assert (=> bs!1095243 (= (= lt!1863923 lt!1863360) (= lambda!210247 lambda!210245))))

(declare-fun bs!1095244 () Bool)

(assert (= bs!1095244 (and d!1495258 b!4700973)))

(assert (=> bs!1095244 (= (= lt!1863923 lt!1863360) (= lambda!210247 lambda!210240))))

(declare-fun bs!1095245 () Bool)

(assert (= bs!1095245 (and d!1495258 b!4700957)))

(assert (=> bs!1095245 (= (= lt!1863923 lt!1863360) (= lambda!210247 lambda!210228))))

(assert (=> bs!1095243 (= (= lt!1863923 lt!1863917) (= lambda!210247 lambda!210246))))

(declare-fun bs!1095246 () Bool)

(assert (= bs!1095246 (and d!1495258 b!4700715)))

(assert (=> bs!1095246 (= (= lt!1863923 lt!1863360) (= lambda!210247 lambda!210180))))

(declare-fun bs!1095247 () Bool)

(assert (= bs!1095247 (and d!1495258 b!4700955)))

(assert (=> bs!1095247 (= (= lt!1863923 lt!1863360) (= lambda!210247 lambda!210227))))

(declare-fun bs!1095248 () Bool)

(assert (= bs!1095248 (and d!1495258 b!4700713)))

(assert (=> bs!1095248 (= (= lt!1863923 lt!1863360) (= lambda!210247 lambda!210179))))

(declare-fun bs!1095249 () Bool)

(assert (= bs!1095249 (and d!1495258 d!1495254)))

(assert (=> bs!1095249 (= (= lt!1863923 lt!1863902) (= lambda!210247 lambda!210243))))

(declare-fun bs!1095250 () Bool)

(assert (= bs!1095250 (and d!1495258 b!4700978)))

(assert (=> bs!1095250 (= (= lt!1863923 lt!1863360) (= lambda!210247 lambda!210244))))

(assert (=> bs!1095245 (= (= lt!1863923 lt!1863838) (= lambda!210247 lambda!210229))))

(declare-fun bs!1095251 () Bool)

(assert (= bs!1095251 (and d!1495258 b!4700968)))

(assert (=> bs!1095251 (= (= lt!1863923 lt!1863360) (= lambda!210247 lambda!210233))))

(declare-fun bs!1095252 () Bool)

(assert (= bs!1095252 (and d!1495258 b!4700975)))

(assert (=> bs!1095252 (= (= lt!1863923 lt!1863896) (= lambda!210247 lambda!210242))))

(assert (=> bs!1095251 (= (= lt!1863923 lt!1863871) (= lambda!210247 lambda!210234))))

(assert (=> bs!1095246 (= (= lt!1863923 lt!1863620) (= lambda!210247 lambda!210181))))

(assert (=> bs!1095252 (= (= lt!1863923 lt!1863360) (= lambda!210247 lambda!210241))))

(declare-fun bs!1095253 () Bool)

(assert (= bs!1095253 (and d!1495258 d!1495244)))

(assert (=> bs!1095253 (= (= lt!1863923 lt!1863877) (= lambda!210247 lambda!210235))))

(assert (=> d!1495258 true))

(declare-fun b!4700976 () Bool)

(declare-fun e!2932475 () Bool)

(assert (=> b!4700976 (= e!2932475 (forall!11399 (toList!5681 lt!1863360) lambda!210246))))

(declare-fun e!2932476 () ListMap!5045)

(assert (=> b!4700978 (= e!2932476 lt!1863360)))

(declare-fun lt!1863927 () Unit!126116)

(declare-fun call!328652 () Unit!126116)

(assert (=> b!4700978 (= lt!1863927 call!328652)))

(declare-fun call!328653 () Bool)

(assert (=> b!4700978 call!328653))

(declare-fun lt!1863931 () Unit!126116)

(assert (=> b!4700978 (= lt!1863931 lt!1863927)))

(declare-fun call!328651 () Bool)

(assert (=> b!4700978 call!328651))

(declare-fun lt!1863928 () Unit!126116)

(declare-fun Unit!126223 () Unit!126116)

(assert (=> b!4700978 (= lt!1863928 Unit!126223)))

(declare-fun b!4700979 () Bool)

(declare-fun e!2932477 () Bool)

(assert (=> b!4700979 (= e!2932477 (invariantList!1444 (toList!5681 lt!1863923)))))

(declare-fun bm!328646 () Bool)

(assert (=> bm!328646 (= call!328652 (lemmaContainsAllItsOwnKeys!732 lt!1863360))))

(assert (=> b!4700980 (= e!2932476 lt!1863917)))

(declare-fun lt!1863919 () ListMap!5045)

(assert (=> b!4700980 (= lt!1863919 (+!2180 lt!1863360 (h!58806 (Cons!52527 lt!1863331 lt!1863355))))))

(assert (=> b!4700980 (= lt!1863917 (addToMapMapFromBucket!1328 (t!359861 (Cons!52527 lt!1863331 lt!1863355)) (+!2180 lt!1863360 (h!58806 (Cons!52527 lt!1863331 lt!1863355)))))))

(declare-fun lt!1863915 () Unit!126116)

(assert (=> b!4700980 (= lt!1863915 call!328652)))

(assert (=> b!4700980 (forall!11399 (toList!5681 lt!1863360) lambda!210245)))

(declare-fun lt!1863913 () Unit!126116)

(assert (=> b!4700980 (= lt!1863913 lt!1863915)))

(assert (=> b!4700980 call!328653))

(declare-fun lt!1863912 () Unit!126116)

(declare-fun Unit!126224 () Unit!126116)

(assert (=> b!4700980 (= lt!1863912 Unit!126224)))

(assert (=> b!4700980 (forall!11399 (t!359861 (Cons!52527 lt!1863331 lt!1863355)) lambda!210246)))

(declare-fun lt!1863929 () Unit!126116)

(declare-fun Unit!126225 () Unit!126116)

(assert (=> b!4700980 (= lt!1863929 Unit!126225)))

(declare-fun lt!1863916 () Unit!126116)

(declare-fun Unit!126226 () Unit!126116)

(assert (=> b!4700980 (= lt!1863916 Unit!126226)))

(declare-fun lt!1863925 () Unit!126116)

(assert (=> b!4700980 (= lt!1863925 (forallContained!3506 (toList!5681 lt!1863919) lambda!210246 (h!58806 (Cons!52527 lt!1863331 lt!1863355))))))

(assert (=> b!4700980 (contains!15802 lt!1863919 (_1!30283 (h!58806 (Cons!52527 lt!1863331 lt!1863355))))))

(declare-fun lt!1863918 () Unit!126116)

(declare-fun Unit!126227 () Unit!126116)

(assert (=> b!4700980 (= lt!1863918 Unit!126227)))

(assert (=> b!4700980 (contains!15802 lt!1863917 (_1!30283 (h!58806 (Cons!52527 lt!1863331 lt!1863355))))))

(declare-fun lt!1863926 () Unit!126116)

(declare-fun Unit!126228 () Unit!126116)

(assert (=> b!4700980 (= lt!1863926 Unit!126228)))

(assert (=> b!4700980 (forall!11399 (Cons!52527 lt!1863331 lt!1863355) lambda!210246)))

(declare-fun lt!1863911 () Unit!126116)

(declare-fun Unit!126229 () Unit!126116)

(assert (=> b!4700980 (= lt!1863911 Unit!126229)))

(assert (=> b!4700980 call!328651))

(declare-fun lt!1863930 () Unit!126116)

(declare-fun Unit!126230 () Unit!126116)

(assert (=> b!4700980 (= lt!1863930 Unit!126230)))

(declare-fun lt!1863922 () Unit!126116)

(declare-fun Unit!126231 () Unit!126116)

(assert (=> b!4700980 (= lt!1863922 Unit!126231)))

(declare-fun lt!1863920 () Unit!126116)

(assert (=> b!4700980 (= lt!1863920 (addForallContainsKeyThenBeforeAdding!731 lt!1863360 lt!1863917 (_1!30283 (h!58806 (Cons!52527 lt!1863331 lt!1863355))) (_2!30283 (h!58806 (Cons!52527 lt!1863331 lt!1863355)))))))

(assert (=> b!4700980 (forall!11399 (toList!5681 lt!1863360) lambda!210246)))

(declare-fun lt!1863921 () Unit!126116)

(assert (=> b!4700980 (= lt!1863921 lt!1863920)))

(assert (=> b!4700980 (forall!11399 (toList!5681 lt!1863360) lambda!210246)))

(declare-fun lt!1863924 () Unit!126116)

(declare-fun Unit!126232 () Unit!126116)

(assert (=> b!4700980 (= lt!1863924 Unit!126232)))

(declare-fun res!1984724 () Bool)

(assert (=> b!4700980 (= res!1984724 (forall!11399 (Cons!52527 lt!1863331 lt!1863355) lambda!210246))))

(assert (=> b!4700980 (=> (not res!1984724) (not e!2932475))))

(assert (=> b!4700980 e!2932475))

(declare-fun lt!1863914 () Unit!126116)

(declare-fun Unit!126233 () Unit!126116)

(assert (=> b!4700980 (= lt!1863914 Unit!126233)))

(declare-fun bm!328647 () Bool)

(declare-fun c!803563 () Bool)

(assert (=> bm!328647 (= call!328651 (forall!11399 (ite c!803563 (toList!5681 lt!1863360) (toList!5681 lt!1863919)) (ite c!803563 lambda!210244 lambda!210246)))))

(declare-fun bm!328648 () Bool)

(assert (=> bm!328648 (= call!328653 (forall!11399 (ite c!803563 (toList!5681 lt!1863360) (toList!5681 lt!1863919)) (ite c!803563 lambda!210244 lambda!210246)))))

(assert (=> d!1495258 e!2932477))

(declare-fun res!1984723 () Bool)

(assert (=> d!1495258 (=> (not res!1984723) (not e!2932477))))

(assert (=> d!1495258 (= res!1984723 (forall!11399 (Cons!52527 lt!1863331 lt!1863355) lambda!210247))))

(assert (=> d!1495258 (= lt!1863923 e!2932476)))

(assert (=> d!1495258 (= c!803563 ((_ is Nil!52527) (Cons!52527 lt!1863331 lt!1863355)))))

(assert (=> d!1495258 (noDuplicateKeys!1896 (Cons!52527 lt!1863331 lt!1863355))))

(assert (=> d!1495258 (= (addToMapMapFromBucket!1328 (Cons!52527 lt!1863331 lt!1863355) lt!1863360) lt!1863923)))

(declare-fun b!4700977 () Bool)

(declare-fun res!1984725 () Bool)

(assert (=> b!4700977 (=> (not res!1984725) (not e!2932477))))

(assert (=> b!4700977 (= res!1984725 (forall!11399 (toList!5681 lt!1863360) lambda!210247))))

(assert (= (and d!1495258 c!803563) b!4700978))

(assert (= (and d!1495258 (not c!803563)) b!4700980))

(assert (= (and b!4700980 res!1984724) b!4700976))

(assert (= (or b!4700978 b!4700980) bm!328646))

(assert (= (or b!4700978 b!4700980) bm!328648))

(assert (= (or b!4700978 b!4700980) bm!328647))

(assert (= (and d!1495258 res!1984723) b!4700977))

(assert (= (and b!4700977 res!1984725) b!4700979))

(declare-fun m!5616179 () Bool)

(assert (=> d!1495258 m!5616179))

(declare-fun m!5616181 () Bool)

(assert (=> d!1495258 m!5616181))

(declare-fun m!5616183 () Bool)

(assert (=> b!4700976 m!5616183))

(declare-fun m!5616185 () Bool)

(assert (=> bm!328647 m!5616185))

(assert (=> bm!328648 m!5616185))

(declare-fun m!5616187 () Bool)

(assert (=> b!4700979 m!5616187))

(assert (=> bm!328646 m!5615509))

(declare-fun m!5616189 () Bool)

(assert (=> b!4700980 m!5616189))

(declare-fun m!5616191 () Bool)

(assert (=> b!4700980 m!5616191))

(assert (=> b!4700980 m!5616183))

(declare-fun m!5616193 () Bool)

(assert (=> b!4700980 m!5616193))

(declare-fun m!5616195 () Bool)

(assert (=> b!4700980 m!5616195))

(assert (=> b!4700980 m!5616183))

(assert (=> b!4700980 m!5616189))

(declare-fun m!5616197 () Bool)

(assert (=> b!4700980 m!5616197))

(declare-fun m!5616199 () Bool)

(assert (=> b!4700980 m!5616199))

(declare-fun m!5616201 () Bool)

(assert (=> b!4700980 m!5616201))

(declare-fun m!5616203 () Bool)

(assert (=> b!4700980 m!5616203))

(declare-fun m!5616205 () Bool)

(assert (=> b!4700980 m!5616205))

(assert (=> b!4700980 m!5616201))

(declare-fun m!5616207 () Bool)

(assert (=> b!4700977 m!5616207))

(assert (=> b!4700573 d!1495258))

(declare-fun b!4700999 () Bool)

(declare-fun e!2932495 () Unit!126116)

(declare-fun lt!1863951 () Unit!126116)

(assert (=> b!4700999 (= e!2932495 lt!1863951)))

(declare-fun lt!1863949 () Unit!126116)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1741 (List!52651 K!13890) Unit!126116)

(assert (=> b!4700999 (= lt!1863949 (lemmaContainsKeyImpliesGetValueByKeyDefined!1741 (toList!5681 lt!1863345) key!4653))))

(declare-fun isDefined!9446 (Option!12189) Bool)

(assert (=> b!4700999 (isDefined!9446 (getValueByKey!1847 (toList!5681 lt!1863345) key!4653))))

(declare-fun lt!1863952 () Unit!126116)

(assert (=> b!4700999 (= lt!1863952 lt!1863949)))

(declare-fun lemmaInListThenGetKeysListContains!879 (List!52651 K!13890) Unit!126116)

(assert (=> b!4700999 (= lt!1863951 (lemmaInListThenGetKeysListContains!879 (toList!5681 lt!1863345) key!4653))))

(declare-fun call!328656 () Bool)

(assert (=> b!4700999 call!328656))

(declare-fun b!4701000 () Bool)

(declare-fun e!2932491 () Unit!126116)

(assert (=> b!4701000 (= e!2932495 e!2932491)))

(declare-fun c!803571 () Bool)

(assert (=> b!4701000 (= c!803571 call!328656)))

(declare-fun b!4701001 () Bool)

(declare-fun e!2932494 () Bool)

(declare-fun e!2932492 () Bool)

(assert (=> b!4701001 (= e!2932494 e!2932492)))

(declare-fun res!1984733 () Bool)

(assert (=> b!4701001 (=> (not res!1984733) (not e!2932492))))

(assert (=> b!4701001 (= res!1984733 (isDefined!9446 (getValueByKey!1847 (toList!5681 lt!1863345) key!4653)))))

(declare-fun b!4701002 () Bool)

(declare-fun e!2932493 () List!52654)

(declare-fun getKeysList!884 (List!52651) List!52654)

(assert (=> b!4701002 (= e!2932493 (getKeysList!884 (toList!5681 lt!1863345)))))

(declare-fun b!4701003 () Bool)

(declare-fun e!2932490 () Bool)

(declare-fun contains!15808 (List!52654 K!13890) Bool)

(assert (=> b!4701003 (= e!2932490 (not (contains!15808 (keys!18789 lt!1863345) key!4653)))))

(declare-fun d!1495260 () Bool)

(assert (=> d!1495260 e!2932494))

(declare-fun res!1984734 () Bool)

(assert (=> d!1495260 (=> res!1984734 e!2932494)))

(assert (=> d!1495260 (= res!1984734 e!2932490)))

(declare-fun res!1984732 () Bool)

(assert (=> d!1495260 (=> (not res!1984732) (not e!2932490))))

(declare-fun lt!1863954 () Bool)

(assert (=> d!1495260 (= res!1984732 (not lt!1863954))))

(declare-fun lt!1863953 () Bool)

(assert (=> d!1495260 (= lt!1863954 lt!1863953)))

(declare-fun lt!1863955 () Unit!126116)

(assert (=> d!1495260 (= lt!1863955 e!2932495)))

(declare-fun c!803572 () Bool)

(assert (=> d!1495260 (= c!803572 lt!1863953)))

(declare-fun containsKey!3167 (List!52651 K!13890) Bool)

(assert (=> d!1495260 (= lt!1863953 (containsKey!3167 (toList!5681 lt!1863345) key!4653))))

(assert (=> d!1495260 (= (contains!15802 lt!1863345 key!4653) lt!1863954)))

(declare-fun b!4701004 () Bool)

(assert (=> b!4701004 (= e!2932492 (contains!15808 (keys!18789 lt!1863345) key!4653))))

(declare-fun b!4701005 () Bool)

(assert (=> b!4701005 (= e!2932493 (keys!18789 lt!1863345))))

(declare-fun b!4701006 () Bool)

(assert (=> b!4701006 false))

(declare-fun lt!1863950 () Unit!126116)

(declare-fun lt!1863948 () Unit!126116)

(assert (=> b!4701006 (= lt!1863950 lt!1863948)))

(assert (=> b!4701006 (containsKey!3167 (toList!5681 lt!1863345) key!4653)))

(declare-fun lemmaInGetKeysListThenContainsKey!883 (List!52651 K!13890) Unit!126116)

(assert (=> b!4701006 (= lt!1863948 (lemmaInGetKeysListThenContainsKey!883 (toList!5681 lt!1863345) key!4653))))

(declare-fun Unit!126234 () Unit!126116)

(assert (=> b!4701006 (= e!2932491 Unit!126234)))

(declare-fun bm!328651 () Bool)

(assert (=> bm!328651 (= call!328656 (contains!15808 e!2932493 key!4653))))

(declare-fun c!803570 () Bool)

(assert (=> bm!328651 (= c!803570 c!803572)))

(declare-fun b!4701007 () Bool)

(declare-fun Unit!126235 () Unit!126116)

(assert (=> b!4701007 (= e!2932491 Unit!126235)))

(assert (= (and d!1495260 c!803572) b!4700999))

(assert (= (and d!1495260 (not c!803572)) b!4701000))

(assert (= (and b!4701000 c!803571) b!4701006))

(assert (= (and b!4701000 (not c!803571)) b!4701007))

(assert (= (or b!4700999 b!4701000) bm!328651))

(assert (= (and bm!328651 c!803570) b!4701002))

(assert (= (and bm!328651 (not c!803570)) b!4701005))

(assert (= (and d!1495260 res!1984732) b!4701003))

(assert (= (and d!1495260 (not res!1984734)) b!4701001))

(assert (= (and b!4701001 res!1984733) b!4701004))

(assert (=> b!4701003 m!5615685))

(assert (=> b!4701003 m!5615685))

(declare-fun m!5616209 () Bool)

(assert (=> b!4701003 m!5616209))

(assert (=> b!4701005 m!5615685))

(declare-fun m!5616211 () Bool)

(assert (=> b!4701006 m!5616211))

(declare-fun m!5616213 () Bool)

(assert (=> b!4701006 m!5616213))

(declare-fun m!5616215 () Bool)

(assert (=> b!4701002 m!5616215))

(declare-fun m!5616217 () Bool)

(assert (=> b!4701001 m!5616217))

(assert (=> b!4701001 m!5616217))

(declare-fun m!5616219 () Bool)

(assert (=> b!4701001 m!5616219))

(assert (=> d!1495260 m!5616211))

(declare-fun m!5616221 () Bool)

(assert (=> b!4700999 m!5616221))

(assert (=> b!4700999 m!5616217))

(assert (=> b!4700999 m!5616217))

(assert (=> b!4700999 m!5616219))

(declare-fun m!5616223 () Bool)

(assert (=> b!4700999 m!5616223))

(declare-fun m!5616225 () Bool)

(assert (=> bm!328651 m!5616225))

(assert (=> b!4701004 m!5615685))

(assert (=> b!4701004 m!5615685))

(assert (=> b!4701004 m!5616209))

(assert (=> b!4700573 d!1495260))

(declare-fun bs!1095254 () Bool)

(declare-fun d!1495262 () Bool)

(assert (= bs!1095254 (and d!1495262 d!1495250)))

(declare-fun lambda!210248 () Int)

(assert (=> bs!1095254 (= lambda!210248 lambda!210239)))

(declare-fun bs!1095255 () Bool)

(assert (= bs!1095255 (and d!1495262 d!1495238)))

(assert (=> bs!1095255 (= lambda!210248 lambda!210231)))

(declare-fun bs!1095256 () Bool)

(assert (= bs!1095256 (and d!1495262 start!476696)))

(assert (=> bs!1095256 (= lambda!210248 lambda!210091)))

(declare-fun bs!1095257 () Bool)

(assert (= bs!1095257 (and d!1495262 d!1495122)))

(assert (=> bs!1095257 (= lambda!210248 lambda!210200)))

(declare-fun bs!1095258 () Bool)

(assert (= bs!1095258 (and d!1495262 d!1495116)))

(assert (=> bs!1095258 (= lambda!210248 lambda!210194)))

(declare-fun bs!1095259 () Bool)

(assert (= bs!1095259 (and d!1495262 d!1495180)))

(assert (=> bs!1095259 (= lambda!210248 lambda!210223)))

(declare-fun bs!1095260 () Bool)

(assert (= bs!1095260 (and d!1495262 d!1495248)))

(assert (=> bs!1095260 (= lambda!210248 lambda!210238)))

(declare-fun bs!1095261 () Bool)

(assert (= bs!1095261 (and d!1495262 d!1495130)))

(assert (=> bs!1095261 (= lambda!210248 lambda!210201)))

(declare-fun bs!1095262 () Bool)

(assert (= bs!1095262 (and d!1495262 d!1495220)))

(assert (=> bs!1095262 (= lambda!210248 lambda!210226)))

(declare-fun bs!1095263 () Bool)

(assert (= bs!1095263 (and d!1495262 d!1495078)))

(assert (=> bs!1095263 (= lambda!210248 lambda!210188)))

(declare-fun bs!1095264 () Bool)

(assert (= bs!1095264 (and d!1495262 d!1495134)))

(assert (=> bs!1095264 (= lambda!210248 lambda!210205)))

(declare-fun lt!1863956 () ListMap!5045)

(assert (=> d!1495262 (invariantList!1444 (toList!5681 lt!1863956))))

(declare-fun e!2932496 () ListMap!5045)

(assert (=> d!1495262 (= lt!1863956 e!2932496)))

(declare-fun c!803573 () Bool)

(assert (=> d!1495262 (= c!803573 ((_ is Cons!52528) (Cons!52528 (tuple2!53981 hash!405 lt!1863352) (t!359862 (toList!5682 lm!2023)))))))

(assert (=> d!1495262 (forall!11397 (Cons!52528 (tuple2!53981 hash!405 lt!1863352) (t!359862 (toList!5682 lm!2023))) lambda!210248)))

(assert (=> d!1495262 (= (extractMap!1922 (Cons!52528 (tuple2!53981 hash!405 lt!1863352) (t!359862 (toList!5682 lm!2023)))) lt!1863956)))

(declare-fun b!4701008 () Bool)

(assert (=> b!4701008 (= e!2932496 (addToMapMapFromBucket!1328 (_2!30284 (h!58807 (Cons!52528 (tuple2!53981 hash!405 lt!1863352) (t!359862 (toList!5682 lm!2023))))) (extractMap!1922 (t!359862 (Cons!52528 (tuple2!53981 hash!405 lt!1863352) (t!359862 (toList!5682 lm!2023)))))))))

(declare-fun b!4701009 () Bool)

(assert (=> b!4701009 (= e!2932496 (ListMap!5046 Nil!52527))))

(assert (= (and d!1495262 c!803573) b!4701008))

(assert (= (and d!1495262 (not c!803573)) b!4701009))

(declare-fun m!5616227 () Bool)

(assert (=> d!1495262 m!5616227))

(declare-fun m!5616229 () Bool)

(assert (=> d!1495262 m!5616229))

(declare-fun m!5616231 () Bool)

(assert (=> b!4701008 m!5616231))

(assert (=> b!4701008 m!5616231))

(declare-fun m!5616233 () Bool)

(assert (=> b!4701008 m!5616233))

(assert (=> b!4700573 d!1495262))

(declare-fun d!1495264 () Bool)

(declare-fun e!2932497 () Bool)

(assert (=> d!1495264 e!2932497))

(declare-fun res!1984735 () Bool)

(assert (=> d!1495264 (=> (not res!1984735) (not e!2932497))))

(declare-fun lt!1863960 () ListMap!5045)

(assert (=> d!1495264 (= res!1984735 (contains!15802 lt!1863960 (_1!30283 (h!58806 oldBucket!34))))))

(declare-fun lt!1863959 () List!52651)

(assert (=> d!1495264 (= lt!1863960 (ListMap!5046 lt!1863959))))

(declare-fun lt!1863957 () Unit!126116)

(declare-fun lt!1863958 () Unit!126116)

(assert (=> d!1495264 (= lt!1863957 lt!1863958)))

(assert (=> d!1495264 (= (getValueByKey!1847 lt!1863959 (_1!30283 (h!58806 oldBucket!34))) (Some!12188 (_2!30283 (h!58806 oldBucket!34))))))

(assert (=> d!1495264 (= lt!1863958 (lemmaContainsTupThenGetReturnValue!1034 lt!1863959 (_1!30283 (h!58806 oldBucket!34)) (_2!30283 (h!58806 oldBucket!34))))))

(assert (=> d!1495264 (= lt!1863959 (insertNoDuplicatedKeys!542 (toList!5681 lt!1863327) (_1!30283 (h!58806 oldBucket!34)) (_2!30283 (h!58806 oldBucket!34))))))

(assert (=> d!1495264 (= (+!2180 lt!1863327 (h!58806 oldBucket!34)) lt!1863960)))

(declare-fun b!4701010 () Bool)

(declare-fun res!1984736 () Bool)

(assert (=> b!4701010 (=> (not res!1984736) (not e!2932497))))

(assert (=> b!4701010 (= res!1984736 (= (getValueByKey!1847 (toList!5681 lt!1863960) (_1!30283 (h!58806 oldBucket!34))) (Some!12188 (_2!30283 (h!58806 oldBucket!34)))))))

(declare-fun b!4701011 () Bool)

(assert (=> b!4701011 (= e!2932497 (contains!15807 (toList!5681 lt!1863960) (h!58806 oldBucket!34)))))

(assert (= (and d!1495264 res!1984735) b!4701010))

(assert (= (and b!4701010 res!1984736) b!4701011))

(declare-fun m!5616235 () Bool)

(assert (=> d!1495264 m!5616235))

(declare-fun m!5616237 () Bool)

(assert (=> d!1495264 m!5616237))

(declare-fun m!5616239 () Bool)

(assert (=> d!1495264 m!5616239))

(declare-fun m!5616241 () Bool)

(assert (=> d!1495264 m!5616241))

(declare-fun m!5616243 () Bool)

(assert (=> b!4701010 m!5616243))

(declare-fun m!5616245 () Bool)

(assert (=> b!4701011 m!5616245))

(assert (=> b!4700573 d!1495264))

(declare-fun d!1495266 () Bool)

(assert (=> d!1495266 (eq!1055 (addToMapMapFromBucket!1328 (Cons!52527 lt!1863329 lt!1863352) lt!1863360) (+!2180 (addToMapMapFromBucket!1328 lt!1863352 lt!1863360) lt!1863329))))

(declare-fun lt!1863961 () Unit!126116)

(assert (=> d!1495266 (= lt!1863961 (choose!32887 lt!1863329 lt!1863352 lt!1863360))))

(assert (=> d!1495266 (noDuplicateKeys!1896 lt!1863352)))

(assert (=> d!1495266 (= (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!304 lt!1863329 lt!1863352 lt!1863360) lt!1863961)))

(declare-fun bs!1095265 () Bool)

(assert (= bs!1095265 d!1495266))

(assert (=> bs!1095265 m!5615029))

(assert (=> bs!1095265 m!5615029))

(assert (=> bs!1095265 m!5615049))

(assert (=> bs!1095265 m!5615051))

(assert (=> bs!1095265 m!5615037))

(assert (=> bs!1095265 m!5615605))

(assert (=> bs!1095265 m!5615037))

(assert (=> bs!1095265 m!5615049))

(declare-fun m!5616247 () Bool)

(assert (=> bs!1095265 m!5616247))

(assert (=> b!4700573 d!1495266))

(declare-fun d!1495268 () Bool)

(declare-fun res!1984737 () Bool)

(declare-fun e!2932498 () Bool)

(assert (=> d!1495268 (=> res!1984737 e!2932498)))

(assert (=> d!1495268 (= res!1984737 (not ((_ is Cons!52527) newBucket!218)))))

(assert (=> d!1495268 (= (noDuplicateKeys!1896 newBucket!218) e!2932498)))

(declare-fun b!4701012 () Bool)

(declare-fun e!2932499 () Bool)

(assert (=> b!4701012 (= e!2932498 e!2932499)))

(declare-fun res!1984738 () Bool)

(assert (=> b!4701012 (=> (not res!1984738) (not e!2932499))))

(assert (=> b!4701012 (= res!1984738 (not (containsKey!3163 (t!359861 newBucket!218) (_1!30283 (h!58806 newBucket!218)))))))

(declare-fun b!4701013 () Bool)

(assert (=> b!4701013 (= e!2932499 (noDuplicateKeys!1896 (t!359861 newBucket!218)))))

(assert (= (and d!1495268 (not res!1984737)) b!4701012))

(assert (= (and b!4701012 res!1984738) b!4701013))

(declare-fun m!5616249 () Bool)

(assert (=> b!4701012 m!5616249))

(declare-fun m!5616251 () Bool)

(assert (=> b!4701013 m!5616251))

(assert (=> b!4700563 d!1495268))

(declare-fun d!1495270 () Bool)

(assert (=> d!1495270 (= (eq!1055 lt!1863353 lt!1863334) (= (content!9260 (toList!5681 lt!1863353)) (content!9260 (toList!5681 lt!1863334))))))

(declare-fun bs!1095266 () Bool)

(assert (= bs!1095266 d!1495270))

(declare-fun m!5616253 () Bool)

(assert (=> bs!1095266 m!5616253))

(assert (=> bs!1095266 m!5616175))

(assert (=> b!4700552 d!1495270))

(declare-fun d!1495272 () Bool)

(assert (=> d!1495272 (= (eq!1055 lt!1863334 (+!2180 lt!1863327 lt!1863331)) (= (content!9260 (toList!5681 lt!1863334)) (content!9260 (toList!5681 (+!2180 lt!1863327 lt!1863331)))))))

(declare-fun bs!1095267 () Bool)

(assert (= bs!1095267 d!1495272))

(assert (=> bs!1095267 m!5616175))

(declare-fun m!5616255 () Bool)

(assert (=> bs!1095267 m!5616255))

(assert (=> b!4700561 d!1495272))

(declare-fun d!1495274 () Bool)

(declare-fun e!2932500 () Bool)

(assert (=> d!1495274 e!2932500))

(declare-fun res!1984739 () Bool)

(assert (=> d!1495274 (=> (not res!1984739) (not e!2932500))))

(declare-fun lt!1863965 () ListMap!5045)

(assert (=> d!1495274 (= res!1984739 (contains!15802 lt!1863965 (_1!30283 lt!1863331)))))

(declare-fun lt!1863964 () List!52651)

(assert (=> d!1495274 (= lt!1863965 (ListMap!5046 lt!1863964))))

(declare-fun lt!1863962 () Unit!126116)

(declare-fun lt!1863963 () Unit!126116)

(assert (=> d!1495274 (= lt!1863962 lt!1863963)))

(assert (=> d!1495274 (= (getValueByKey!1847 lt!1863964 (_1!30283 lt!1863331)) (Some!12188 (_2!30283 lt!1863331)))))

(assert (=> d!1495274 (= lt!1863963 (lemmaContainsTupThenGetReturnValue!1034 lt!1863964 (_1!30283 lt!1863331) (_2!30283 lt!1863331)))))

(assert (=> d!1495274 (= lt!1863964 (insertNoDuplicatedKeys!542 (toList!5681 lt!1863327) (_1!30283 lt!1863331) (_2!30283 lt!1863331)))))

(assert (=> d!1495274 (= (+!2180 lt!1863327 lt!1863331) lt!1863965)))

(declare-fun b!4701014 () Bool)

(declare-fun res!1984740 () Bool)

(assert (=> b!4701014 (=> (not res!1984740) (not e!2932500))))

(assert (=> b!4701014 (= res!1984740 (= (getValueByKey!1847 (toList!5681 lt!1863965) (_1!30283 lt!1863331)) (Some!12188 (_2!30283 lt!1863331))))))

(declare-fun b!4701015 () Bool)

(assert (=> b!4701015 (= e!2932500 (contains!15807 (toList!5681 lt!1863965) lt!1863331))))

(assert (= (and d!1495274 res!1984739) b!4701014))

(assert (= (and b!4701014 res!1984740) b!4701015))

(declare-fun m!5616257 () Bool)

(assert (=> d!1495274 m!5616257))

(declare-fun m!5616259 () Bool)

(assert (=> d!1495274 m!5616259))

(declare-fun m!5616261 () Bool)

(assert (=> d!1495274 m!5616261))

(declare-fun m!5616263 () Bool)

(assert (=> d!1495274 m!5616263))

(declare-fun m!5616265 () Bool)

(assert (=> b!4701014 m!5616265))

(declare-fun m!5616267 () Bool)

(assert (=> b!4701015 m!5616267))

(assert (=> b!4700561 d!1495274))

(declare-fun bs!1095268 () Bool)

(declare-fun d!1495276 () Bool)

(assert (= bs!1095268 (and d!1495276 b!4700966)))

(declare-fun lambda!210249 () Int)

(assert (=> bs!1095268 (not (= lambda!210249 lambda!210232))))

(declare-fun bs!1095269 () Bool)

(assert (= bs!1095269 (and d!1495276 d!1495230)))

(assert (=> bs!1095269 (not (= lambda!210249 lambda!210230))))

(declare-fun bs!1095270 () Bool)

(assert (= bs!1095270 (and d!1495276 d!1495002)))

(assert (=> bs!1095270 (not (= lambda!210249 lambda!210182))))

(declare-fun bs!1095271 () Bool)

(assert (= bs!1095271 (and d!1495276 d!1495088)))

(assert (=> bs!1095271 (= lambda!210249 lambda!210191)))

(declare-fun bs!1095272 () Bool)

(assert (= bs!1095272 (and d!1495276 b!4700980)))

(assert (=> bs!1095272 (not (= lambda!210249 lambda!210245))))

(declare-fun bs!1095273 () Bool)

(assert (= bs!1095273 (and d!1495276 b!4700973)))

(assert (=> bs!1095273 (not (= lambda!210249 lambda!210240))))

(declare-fun bs!1095274 () Bool)

(assert (= bs!1095274 (and d!1495276 b!4700957)))

(assert (=> bs!1095274 (not (= lambda!210249 lambda!210228))))

(assert (=> bs!1095272 (not (= lambda!210249 lambda!210246))))

(declare-fun bs!1095275 () Bool)

(assert (= bs!1095275 (and d!1495276 b!4700715)))

(assert (=> bs!1095275 (not (= lambda!210249 lambda!210180))))

(declare-fun bs!1095276 () Bool)

(assert (= bs!1095276 (and d!1495276 b!4700955)))

(assert (=> bs!1095276 (not (= lambda!210249 lambda!210227))))

(declare-fun bs!1095277 () Bool)

(assert (= bs!1095277 (and d!1495276 b!4700713)))

(assert (=> bs!1095277 (not (= lambda!210249 lambda!210179))))

(declare-fun bs!1095278 () Bool)

(assert (= bs!1095278 (and d!1495276 d!1495254)))

(assert (=> bs!1095278 (not (= lambda!210249 lambda!210243))))

(declare-fun bs!1095279 () Bool)

(assert (= bs!1095279 (and d!1495276 b!4700978)))

(assert (=> bs!1095279 (not (= lambda!210249 lambda!210244))))

(assert (=> bs!1095274 (not (= lambda!210249 lambda!210229))))

(declare-fun bs!1095280 () Bool)

(assert (= bs!1095280 (and d!1495276 b!4700968)))

(assert (=> bs!1095280 (not (= lambda!210249 lambda!210233))))

(declare-fun bs!1095281 () Bool)

(assert (= bs!1095281 (and d!1495276 d!1495258)))

(assert (=> bs!1095281 (not (= lambda!210249 lambda!210247))))

(declare-fun bs!1095282 () Bool)

(assert (= bs!1095282 (and d!1495276 b!4700975)))

(assert (=> bs!1095282 (not (= lambda!210249 lambda!210242))))

(assert (=> bs!1095280 (not (= lambda!210249 lambda!210234))))

(assert (=> bs!1095275 (not (= lambda!210249 lambda!210181))))

(assert (=> bs!1095282 (not (= lambda!210249 lambda!210241))))

(declare-fun bs!1095283 () Bool)

(assert (= bs!1095283 (and d!1495276 d!1495244)))

(assert (=> bs!1095283 (not (= lambda!210249 lambda!210235))))

(assert (=> d!1495276 true))

(assert (=> d!1495276 true))

(assert (=> d!1495276 (= (allKeysSameHash!1722 oldBucket!34 hash!405 hashF!1323) (forall!11399 oldBucket!34 lambda!210249))))

(declare-fun bs!1095284 () Bool)

(assert (= bs!1095284 d!1495276))

(declare-fun m!5616269 () Bool)

(assert (=> bs!1095284 m!5616269))

(assert (=> b!4700550 d!1495276))

(declare-fun b!4701016 () Bool)

(declare-fun e!2932506 () Unit!126116)

(declare-fun lt!1863969 () Unit!126116)

(assert (=> b!4701016 (= e!2932506 lt!1863969)))

(declare-fun lt!1863967 () Unit!126116)

(assert (=> b!4701016 (= lt!1863967 (lemmaContainsKeyImpliesGetValueByKeyDefined!1741 (toList!5681 lt!1863356) key!4653))))

(assert (=> b!4701016 (isDefined!9446 (getValueByKey!1847 (toList!5681 lt!1863356) key!4653))))

(declare-fun lt!1863970 () Unit!126116)

(assert (=> b!4701016 (= lt!1863970 lt!1863967)))

(assert (=> b!4701016 (= lt!1863969 (lemmaInListThenGetKeysListContains!879 (toList!5681 lt!1863356) key!4653))))

(declare-fun call!328657 () Bool)

(assert (=> b!4701016 call!328657))

(declare-fun b!4701017 () Bool)

(declare-fun e!2932502 () Unit!126116)

(assert (=> b!4701017 (= e!2932506 e!2932502)))

(declare-fun c!803575 () Bool)

(assert (=> b!4701017 (= c!803575 call!328657)))

(declare-fun b!4701018 () Bool)

(declare-fun e!2932505 () Bool)

(declare-fun e!2932503 () Bool)

(assert (=> b!4701018 (= e!2932505 e!2932503)))

(declare-fun res!1984742 () Bool)

(assert (=> b!4701018 (=> (not res!1984742) (not e!2932503))))

(assert (=> b!4701018 (= res!1984742 (isDefined!9446 (getValueByKey!1847 (toList!5681 lt!1863356) key!4653)))))

(declare-fun b!4701019 () Bool)

(declare-fun e!2932504 () List!52654)

(assert (=> b!4701019 (= e!2932504 (getKeysList!884 (toList!5681 lt!1863356)))))

(declare-fun b!4701020 () Bool)

(declare-fun e!2932501 () Bool)

(assert (=> b!4701020 (= e!2932501 (not (contains!15808 (keys!18789 lt!1863356) key!4653)))))

(declare-fun d!1495278 () Bool)

(assert (=> d!1495278 e!2932505))

(declare-fun res!1984743 () Bool)

(assert (=> d!1495278 (=> res!1984743 e!2932505)))

(assert (=> d!1495278 (= res!1984743 e!2932501)))

(declare-fun res!1984741 () Bool)

(assert (=> d!1495278 (=> (not res!1984741) (not e!2932501))))

(declare-fun lt!1863972 () Bool)

(assert (=> d!1495278 (= res!1984741 (not lt!1863972))))

(declare-fun lt!1863971 () Bool)

(assert (=> d!1495278 (= lt!1863972 lt!1863971)))

(declare-fun lt!1863973 () Unit!126116)

(assert (=> d!1495278 (= lt!1863973 e!2932506)))

(declare-fun c!803576 () Bool)

(assert (=> d!1495278 (= c!803576 lt!1863971)))

(assert (=> d!1495278 (= lt!1863971 (containsKey!3167 (toList!5681 lt!1863356) key!4653))))

(assert (=> d!1495278 (= (contains!15802 lt!1863356 key!4653) lt!1863972)))

(declare-fun b!4701021 () Bool)

(assert (=> b!4701021 (= e!2932503 (contains!15808 (keys!18789 lt!1863356) key!4653))))

(declare-fun b!4701022 () Bool)

(assert (=> b!4701022 (= e!2932504 (keys!18789 lt!1863356))))

(declare-fun b!4701023 () Bool)

(assert (=> b!4701023 false))

(declare-fun lt!1863968 () Unit!126116)

(declare-fun lt!1863966 () Unit!126116)

(assert (=> b!4701023 (= lt!1863968 lt!1863966)))

(assert (=> b!4701023 (containsKey!3167 (toList!5681 lt!1863356) key!4653)))

(assert (=> b!4701023 (= lt!1863966 (lemmaInGetKeysListThenContainsKey!883 (toList!5681 lt!1863356) key!4653))))

(declare-fun Unit!126236 () Unit!126116)

(assert (=> b!4701023 (= e!2932502 Unit!126236)))

(declare-fun bm!328652 () Bool)

(assert (=> bm!328652 (= call!328657 (contains!15808 e!2932504 key!4653))))

(declare-fun c!803574 () Bool)

(assert (=> bm!328652 (= c!803574 c!803576)))

(declare-fun b!4701024 () Bool)

(declare-fun Unit!126237 () Unit!126116)

(assert (=> b!4701024 (= e!2932502 Unit!126237)))

(assert (= (and d!1495278 c!803576) b!4701016))

(assert (= (and d!1495278 (not c!803576)) b!4701017))

(assert (= (and b!4701017 c!803575) b!4701023))

(assert (= (and b!4701017 (not c!803575)) b!4701024))

(assert (= (or b!4701016 b!4701017) bm!328652))

(assert (= (and bm!328652 c!803574) b!4701019))

(assert (= (and bm!328652 (not c!803574)) b!4701022))

(assert (= (and d!1495278 res!1984741) b!4701020))

(assert (= (and d!1495278 (not res!1984743)) b!4701018))

(assert (= (and b!4701018 res!1984742) b!4701021))

(declare-fun m!5616271 () Bool)

(assert (=> b!4701020 m!5616271))

(assert (=> b!4701020 m!5616271))

(declare-fun m!5616273 () Bool)

(assert (=> b!4701020 m!5616273))

(assert (=> b!4701022 m!5616271))

(declare-fun m!5616275 () Bool)

(assert (=> b!4701023 m!5616275))

(declare-fun m!5616277 () Bool)

(assert (=> b!4701023 m!5616277))

(declare-fun m!5616279 () Bool)

(assert (=> b!4701019 m!5616279))

(declare-fun m!5616281 () Bool)

(assert (=> b!4701018 m!5616281))

(assert (=> b!4701018 m!5616281))

(declare-fun m!5616283 () Bool)

(assert (=> b!4701018 m!5616283))

(assert (=> d!1495278 m!5616275))

(declare-fun m!5616285 () Bool)

(assert (=> b!4701016 m!5616285))

(assert (=> b!4701016 m!5616281))

(assert (=> b!4701016 m!5616281))

(assert (=> b!4701016 m!5616283))

(declare-fun m!5616287 () Bool)

(assert (=> b!4701016 m!5616287))

(declare-fun m!5616289 () Bool)

(assert (=> bm!328652 m!5616289))

(assert (=> b!4701021 m!5616271))

(assert (=> b!4701021 m!5616271))

(assert (=> b!4701021 m!5616273))

(assert (=> b!4700551 d!1495278))

(declare-fun bs!1095285 () Bool)

(declare-fun d!1495280 () Bool)

(assert (= bs!1095285 (and d!1495280 d!1495250)))

(declare-fun lambda!210250 () Int)

(assert (=> bs!1095285 (= lambda!210250 lambda!210239)))

(declare-fun bs!1095286 () Bool)

(assert (= bs!1095286 (and d!1495280 d!1495238)))

(assert (=> bs!1095286 (= lambda!210250 lambda!210231)))

(declare-fun bs!1095287 () Bool)

(assert (= bs!1095287 (and d!1495280 start!476696)))

(assert (=> bs!1095287 (= lambda!210250 lambda!210091)))

(declare-fun bs!1095288 () Bool)

(assert (= bs!1095288 (and d!1495280 d!1495262)))

(assert (=> bs!1095288 (= lambda!210250 lambda!210248)))

(declare-fun bs!1095289 () Bool)

(assert (= bs!1095289 (and d!1495280 d!1495122)))

(assert (=> bs!1095289 (= lambda!210250 lambda!210200)))

(declare-fun bs!1095290 () Bool)

(assert (= bs!1095290 (and d!1495280 d!1495116)))

(assert (=> bs!1095290 (= lambda!210250 lambda!210194)))

(declare-fun bs!1095291 () Bool)

(assert (= bs!1095291 (and d!1495280 d!1495180)))

(assert (=> bs!1095291 (= lambda!210250 lambda!210223)))

(declare-fun bs!1095292 () Bool)

(assert (= bs!1095292 (and d!1495280 d!1495248)))

(assert (=> bs!1095292 (= lambda!210250 lambda!210238)))

(declare-fun bs!1095293 () Bool)

(assert (= bs!1095293 (and d!1495280 d!1495130)))

(assert (=> bs!1095293 (= lambda!210250 lambda!210201)))

(declare-fun bs!1095294 () Bool)

(assert (= bs!1095294 (and d!1495280 d!1495220)))

(assert (=> bs!1095294 (= lambda!210250 lambda!210226)))

(declare-fun bs!1095295 () Bool)

(assert (= bs!1095295 (and d!1495280 d!1495078)))

(assert (=> bs!1095295 (= lambda!210250 lambda!210188)))

(declare-fun bs!1095296 () Bool)

(assert (= bs!1095296 (and d!1495280 d!1495134)))

(assert (=> bs!1095296 (= lambda!210250 lambda!210205)))

(declare-fun lt!1863974 () ListMap!5045)

(assert (=> d!1495280 (invariantList!1444 (toList!5681 lt!1863974))))

(declare-fun e!2932507 () ListMap!5045)

(assert (=> d!1495280 (= lt!1863974 e!2932507)))

(declare-fun c!803577 () Bool)

(assert (=> d!1495280 (= c!803577 ((_ is Cons!52528) (toList!5682 lm!2023)))))

(assert (=> d!1495280 (forall!11397 (toList!5682 lm!2023) lambda!210250)))

(assert (=> d!1495280 (= (extractMap!1922 (toList!5682 lm!2023)) lt!1863974)))

(declare-fun b!4701025 () Bool)

(assert (=> b!4701025 (= e!2932507 (addToMapMapFromBucket!1328 (_2!30284 (h!58807 (toList!5682 lm!2023))) (extractMap!1922 (t!359862 (toList!5682 lm!2023)))))))

(declare-fun b!4701026 () Bool)

(assert (=> b!4701026 (= e!2932507 (ListMap!5046 Nil!52527))))

(assert (= (and d!1495280 c!803577) b!4701025))

(assert (= (and d!1495280 (not c!803577)) b!4701026))

(declare-fun m!5616291 () Bool)

(assert (=> d!1495280 m!5616291))

(declare-fun m!5616293 () Bool)

(assert (=> d!1495280 m!5616293))

(assert (=> b!4701025 m!5615009))

(assert (=> b!4701025 m!5615009))

(declare-fun m!5616295 () Bool)

(assert (=> b!4701025 m!5616295))

(assert (=> b!4700551 d!1495280))

(declare-fun bs!1095297 () Bool)

(declare-fun d!1495282 () Bool)

(assert (= bs!1095297 (and d!1495282 d!1495250)))

(declare-fun lambda!210253 () Int)

(assert (=> bs!1095297 (not (= lambda!210253 lambda!210239))))

(declare-fun bs!1095298 () Bool)

(assert (= bs!1095298 (and d!1495282 d!1495238)))

(assert (=> bs!1095298 (not (= lambda!210253 lambda!210231))))

(declare-fun bs!1095299 () Bool)

(assert (= bs!1095299 (and d!1495282 start!476696)))

(assert (=> bs!1095299 (not (= lambda!210253 lambda!210091))))

(declare-fun bs!1095300 () Bool)

(assert (= bs!1095300 (and d!1495282 d!1495262)))

(assert (=> bs!1095300 (not (= lambda!210253 lambda!210248))))

(declare-fun bs!1095301 () Bool)

(assert (= bs!1095301 (and d!1495282 d!1495280)))

(assert (=> bs!1095301 (not (= lambda!210253 lambda!210250))))

(declare-fun bs!1095302 () Bool)

(assert (= bs!1095302 (and d!1495282 d!1495122)))

(assert (=> bs!1095302 (not (= lambda!210253 lambda!210200))))

(declare-fun bs!1095303 () Bool)

(assert (= bs!1095303 (and d!1495282 d!1495116)))

(assert (=> bs!1095303 (not (= lambda!210253 lambda!210194))))

(declare-fun bs!1095304 () Bool)

(assert (= bs!1095304 (and d!1495282 d!1495180)))

(assert (=> bs!1095304 (not (= lambda!210253 lambda!210223))))

(declare-fun bs!1095305 () Bool)

(assert (= bs!1095305 (and d!1495282 d!1495248)))

(assert (=> bs!1095305 (not (= lambda!210253 lambda!210238))))

(declare-fun bs!1095306 () Bool)

(assert (= bs!1095306 (and d!1495282 d!1495130)))

(assert (=> bs!1095306 (not (= lambda!210253 lambda!210201))))

(declare-fun bs!1095307 () Bool)

(assert (= bs!1095307 (and d!1495282 d!1495220)))

(assert (=> bs!1095307 (not (= lambda!210253 lambda!210226))))

(declare-fun bs!1095308 () Bool)

(assert (= bs!1095308 (and d!1495282 d!1495078)))

(assert (=> bs!1095308 (not (= lambda!210253 lambda!210188))))

(declare-fun bs!1095309 () Bool)

(assert (= bs!1095309 (and d!1495282 d!1495134)))

(assert (=> bs!1095309 (not (= lambda!210253 lambda!210205))))

(assert (=> d!1495282 true))

(assert (=> d!1495282 (= (allKeysSameHashInMap!1810 lm!2023 hashF!1323) (forall!11397 (toList!5682 lm!2023) lambda!210253))))

(declare-fun bs!1095310 () Bool)

(assert (= bs!1095310 d!1495282))

(declare-fun m!5616297 () Bool)

(assert (=> bs!1095310 m!5616297))

(assert (=> b!4700572 d!1495282))

(declare-fun e!2932510 () Bool)

(declare-fun tp!1346648 () Bool)

(declare-fun b!4701033 () Bool)

(assert (=> b!4701033 (= e!2932510 (and tp_is_empty!30877 tp_is_empty!30879 tp!1346648))))

(assert (=> b!4700559 (= tp!1346634 e!2932510)))

(assert (= (and b!4700559 ((_ is Cons!52527) (t!359861 newBucket!218))) b!4701033))

(declare-fun tp!1346649 () Bool)

(declare-fun b!4701034 () Bool)

(declare-fun e!2932511 () Bool)

(assert (=> b!4701034 (= e!2932511 (and tp_is_empty!30877 tp_is_empty!30879 tp!1346649))))

(assert (=> b!4700568 (= tp!1346633 e!2932511)))

(assert (= (and b!4700568 ((_ is Cons!52527) (t!359861 oldBucket!34))) b!4701034))

(declare-fun b!4701039 () Bool)

(declare-fun e!2932514 () Bool)

(declare-fun tp!1346654 () Bool)

(declare-fun tp!1346655 () Bool)

(assert (=> b!4701039 (= e!2932514 (and tp!1346654 tp!1346655))))

(assert (=> b!4700566 (= tp!1346635 e!2932514)))

(assert (= (and b!4700566 ((_ is Cons!52528) (toList!5682 lm!2023))) b!4701039))

(declare-fun b_lambda!177375 () Bool)

(assert (= b_lambda!177361 (or start!476696 b_lambda!177375)))

(declare-fun bs!1095311 () Bool)

(declare-fun d!1495284 () Bool)

(assert (= bs!1095311 (and d!1495284 start!476696)))

(assert (=> bs!1095311 (= (dynLambda!21746 lambda!210091 (h!58807 lt!1863344)) (noDuplicateKeys!1896 (_2!30284 (h!58807 lt!1863344))))))

(declare-fun m!5616299 () Bool)

(assert (=> bs!1095311 m!5616299))

(assert (=> b!4700797 d!1495284))

(declare-fun b_lambda!177377 () Bool)

(assert (= b_lambda!177359 (or start!476696 b_lambda!177377)))

(declare-fun bs!1095312 () Bool)

(declare-fun d!1495286 () Bool)

(assert (= bs!1095312 (and d!1495286 start!476696)))

(assert (=> bs!1095312 (= (dynLambda!21746 lambda!210091 (h!58807 (toList!5682 lm!2023))) (noDuplicateKeys!1896 (_2!30284 (h!58807 (toList!5682 lm!2023)))))))

(assert (=> bs!1095312 m!5615501))

(assert (=> b!4700795 d!1495286))

(declare-fun b_lambda!177379 () Bool)

(assert (= b_lambda!177373 (or start!476696 b_lambda!177379)))

(declare-fun bs!1095313 () Bool)

(declare-fun d!1495288 () Bool)

(assert (= bs!1095313 (and d!1495288 start!476696)))

(assert (=> bs!1095313 (= (dynLambda!21746 lambda!210091 lt!1863350) (noDuplicateKeys!1896 (_2!30284 lt!1863350)))))

(declare-fun m!5616301 () Bool)

(assert (=> bs!1095313 m!5616301))

(assert (=> d!1495216 d!1495288))

(check-sat (not b!4700977) (not b!4700847) (not d!1495128) (not b!4701018) (not b!4701023) (not bm!328645) (not d!1495250) (not d!1495224) (not d!1495114) (not bm!328639) (not b!4701015) (not d!1495208) (not d!1495232) (not b!4700974) (not b!4701003) (not d!1495078) (not b!4700980) (not bm!328644) (not bm!328646) (not b!4700799) (not bs!1095311) (not b!4701011) (not bm!328631) (not b!4700908) (not b!4700848) (not b!4700850) (not bm!328637) (not b!4701016) (not b!4701012) (not bm!328632) (not bs!1095312) (not d!1495216) (not d!1495096) (not d!1495162) (not d!1495158) (not d!1495180) (not d!1495160) (not b!4700960) (not b!4700715) (not d!1495264) (not b!4700937) (not b!4701020) (not b!4700958) (not b!4701002) (not b!4700851) (not d!1495110) (not d!1495254) (not b!4700999) (not b!4701006) (not b!4700841) (not d!1495258) (not bm!328643) (not d!1495236) (not b!4700930) (not b!4700953) (not b!4700711) (not b!4701039) (not d!1495230) (not d!1495272) (not b!4700849) (not b!4700954) (not b!4700979) (not b!4701005) (not b!4700900) (not b!4700969) (not b!4700712) (not b!4700971) (not d!1495220) (not b!4700714) (not d!1495228) (not b!4700777) (not b!4701034) (not d!1495276) (not d!1495260) (not d!1495102) (not bm!328647) (not b!4701021) (not bs!1095313) (not b!4701022) (not b!4700901) (not d!1495086) (not b!4700798) (not bm!328640) (not bm!328648) (not d!1495172) (not b!4700926) (not b!4700745) tp_is_empty!30877 (not bm!328638) (not b!4701001) (not b!4701004) (not d!1495098) (not d!1495134) (not b!4700943) (not bm!328642) (not b!4700931) (not b!4701008) (not b!4700972) (not d!1495274) (not bm!328652) (not b!4700956) (not d!1495242) (not b!4700952) (not d!1495280) (not b!4700818) (not d!1495094) (not b!4700950) (not d!1495126) (not d!1495002) (not d!1495116) (not b!4701013) (not b!4700796) (not b!4700957) (not b!4700962) (not b_lambda!177375) (not b!4700845) (not b!4700975) (not d!1495164) (not b!4700816) (not b!4700815) (not d!1495088) (not b!4701019) (not b!4701014) (not bm!328641) (not d!1495166) (not b_lambda!177379) (not b!4700852) (not d!1495238) (not bm!328630) (not d!1495266) (not b!4700902) (not b!4701025) (not b!4700964) (not d!1495168) (not d!1495256) (not b!4700965) (not d!1495270) (not d!1495210) (not b!4700976) (not b_lambda!177377) (not b!4701033) (not bm!328651) (not d!1495170) (not b!4700963) (not b!4700789) tp_is_empty!30879 (not d!1495282) (not d!1495222) (not b!4700899) (not d!1495244) (not d!1495174) (not b!4700968) (not d!1495262) (not d!1495248) (not d!1495122) (not b!4700935) (not d!1495130) (not d!1495246) (not b!4700771) (not b!4701010) (not d!1495214) (not b!4700959) (not b!4700932) (not d!1495252) (not d!1495118) (not d!1495278) (not b!4700927) (not b!4700967) (not d!1495100) (not b!4700772) (not b!4700778) (not d!1495226) (not b!4700819))
(check-sat)
