; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!478604 () Bool)

(assert start!478604)

(declare-fun b!4710361 () Bool)

(declare-fun res!1990652 () Bool)

(declare-fun e!2937921 () Bool)

(assert (=> b!4710361 (=> (not res!1990652) (not e!2937921))))

(declare-datatypes ((K!14030 0))(
  ( (K!14031 (val!19495 Int)) )
))
(declare-datatypes ((V!14276 0))(
  ( (V!14277 (val!19496 Int)) )
))
(declare-datatypes ((tuple2!54202 0))(
  ( (tuple2!54203 (_1!30395 K!14030) (_2!30395 V!14276)) )
))
(declare-datatypes ((List!52793 0))(
  ( (Nil!52669) (Cons!52669 (h!58978 tuple2!54202) (t!360031 List!52793)) )
))
(declare-datatypes ((tuple2!54204 0))(
  ( (tuple2!54205 (_1!30396 (_ BitVec 64)) (_2!30396 List!52793)) )
))
(declare-datatypes ((List!52794 0))(
  ( (Nil!52670) (Cons!52670 (h!58979 tuple2!54204) (t!360032 List!52794)) )
))
(declare-datatypes ((ListLongMap!4323 0))(
  ( (ListLongMap!4324 (toList!5793 List!52794)) )
))
(declare-fun lm!2023 () ListLongMap!4323)

(declare-fun oldBucket!34 () List!52793)

(declare-fun hash!405 () (_ BitVec 64))

(declare-fun head!10143 (List!52794) tuple2!54204)

(assert (=> b!4710361 (= res!1990652 (= (head!10143 (toList!5793 lm!2023)) (tuple2!54205 hash!405 oldBucket!34)))))

(declare-fun b!4710362 () Bool)

(declare-fun e!2937924 () Bool)

(declare-fun e!2937928 () Bool)

(assert (=> b!4710362 (= e!2937924 e!2937928)))

(declare-fun res!1990665 () Bool)

(assert (=> b!4710362 (=> res!1990665 e!2937928)))

(declare-fun newBucket!218 () List!52793)

(declare-datatypes ((ListMap!5157 0))(
  ( (ListMap!5158 (toList!5794 List!52793)) )
))
(declare-fun lt!1874910 () ListMap!5157)

(declare-fun extractMap!1978 (List!52794) ListMap!5157)

(assert (=> b!4710362 (= res!1990665 (not (= lt!1874910 (extractMap!1978 (Cons!52670 (tuple2!54205 hash!405 newBucket!218) (t!360032 (toList!5793 lm!2023)))))))))

(declare-fun lt!1874906 () List!52794)

(assert (=> b!4710362 (= lt!1874910 (extractMap!1978 lt!1874906))))

(declare-fun lt!1874908 () List!52793)

(assert (=> b!4710362 (= lt!1874906 (Cons!52670 (tuple2!54205 hash!405 lt!1874908) (t!360032 (toList!5793 lm!2023))))))

(declare-fun b!4710363 () Bool)

(declare-fun e!2937923 () Bool)

(assert (=> b!4710363 (= e!2937923 e!2937924)))

(declare-fun res!1990660 () Bool)

(assert (=> b!4710363 (=> res!1990660 e!2937924)))

(assert (=> b!4710363 (= res!1990660 (not (= lt!1874908 newBucket!218)))))

(declare-fun tail!8847 (List!52793) List!52793)

(assert (=> b!4710363 (= lt!1874908 (tail!8847 oldBucket!34))))

(declare-fun b!4710364 () Bool)

(assert (=> b!4710364 (= e!2937921 (not e!2937923))))

(declare-fun res!1990661 () Bool)

(assert (=> b!4710364 (=> res!1990661 e!2937923)))

(declare-fun key!4653 () K!14030)

(get-info :version)

(assert (=> b!4710364 (= res!1990661 (or (not ((_ is Cons!52669) oldBucket!34)) (not (= (_1!30395 (h!58978 oldBucket!34)) key!4653))))))

(declare-fun lt!1874907 () ListMap!5157)

(declare-fun lt!1874904 () ListMap!5157)

(declare-fun addToMapMapFromBucket!1382 (List!52793 ListMap!5157) ListMap!5157)

(assert (=> b!4710364 (= lt!1874907 (addToMapMapFromBucket!1382 (_2!30396 (h!58979 (toList!5793 lm!2023))) lt!1874904))))

(assert (=> b!4710364 (= lt!1874904 (extractMap!1978 (t!360032 (toList!5793 lm!2023))))))

(declare-fun tail!8848 (ListLongMap!4323) ListLongMap!4323)

(assert (=> b!4710364 (= (t!360032 (toList!5793 lm!2023)) (toList!5793 (tail!8848 lm!2023)))))

(declare-fun b!4710365 () Bool)

(declare-fun tp!1347438 () Bool)

(declare-fun tp_is_empty!31103 () Bool)

(declare-fun tp_is_empty!31101 () Bool)

(declare-fun e!2937919 () Bool)

(assert (=> b!4710365 (= e!2937919 (and tp_is_empty!31101 tp_is_empty!31103 tp!1347438))))

(declare-fun b!4710366 () Bool)

(declare-fun res!1990651 () Bool)

(assert (=> b!4710366 (=> (not res!1990651) (not e!2937921))))

(declare-datatypes ((Hashable!6321 0))(
  ( (HashableExt!6320 (__x!32024 Int)) )
))
(declare-fun hashF!1323 () Hashable!6321)

(declare-fun allKeysSameHash!1778 (List!52793 (_ BitVec 64) Hashable!6321) Bool)

(assert (=> b!4710366 (= res!1990651 (allKeysSameHash!1778 newBucket!218 hash!405 hashF!1323))))

(declare-fun b!4710368 () Bool)

(declare-fun res!1990662 () Bool)

(assert (=> b!4710368 (=> (not res!1990662) (not e!2937921))))

(assert (=> b!4710368 (= res!1990662 ((_ is Cons!52670) (toList!5793 lm!2023)))))

(declare-fun b!4710369 () Bool)

(declare-fun res!1990658 () Bool)

(declare-fun e!2937920 () Bool)

(assert (=> b!4710369 (=> res!1990658 e!2937920)))

(declare-fun containsKey!3255 (List!52793 K!14030) Bool)

(assert (=> b!4710369 (= res!1990658 (containsKey!3255 lt!1874908 key!4653))))

(declare-fun b!4710370 () Bool)

(declare-fun res!1990650 () Bool)

(declare-fun e!2937926 () Bool)

(assert (=> b!4710370 (=> (not res!1990650) (not e!2937926))))

(assert (=> b!4710370 (= res!1990650 (allKeysSameHash!1778 oldBucket!34 hash!405 hashF!1323))))

(declare-fun b!4710371 () Bool)

(declare-fun e!2937925 () Bool)

(assert (=> b!4710371 (= e!2937925 e!2937920)))

(declare-fun res!1990649 () Bool)

(assert (=> b!4710371 (=> res!1990649 e!2937920)))

(declare-fun lt!1874905 () ListMap!5157)

(declare-fun eq!1089 (ListMap!5157 ListMap!5157) Bool)

(declare-fun +!2216 (ListMap!5157 tuple2!54202) ListMap!5157)

(assert (=> b!4710371 (= res!1990649 (not (eq!1089 (+!2216 lt!1874905 (h!58978 oldBucket!34)) (addToMapMapFromBucket!1382 oldBucket!34 lt!1874904))))))

(declare-fun lt!1874911 () tuple2!54202)

(assert (=> b!4710371 (eq!1089 (addToMapMapFromBucket!1382 (Cons!52669 lt!1874911 lt!1874908) lt!1874904) (+!2216 lt!1874905 lt!1874911))))

(declare-datatypes ((Unit!127870 0))(
  ( (Unit!127871) )
))
(declare-fun lt!1874909 () Unit!127870)

(declare-fun lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!338 (tuple2!54202 List!52793 ListMap!5157) Unit!127870)

(assert (=> b!4710371 (= lt!1874909 (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!338 lt!1874911 lt!1874908 lt!1874904))))

(declare-fun head!10144 (List!52793) tuple2!54202)

(assert (=> b!4710371 (= lt!1874911 (head!10144 oldBucket!34))))

(declare-fun b!4710372 () Bool)

(declare-fun res!1990654 () Bool)

(assert (=> b!4710372 (=> (not res!1990654) (not e!2937921))))

(declare-fun hash!4276 (Hashable!6321 K!14030) (_ BitVec 64))

(assert (=> b!4710372 (= res!1990654 (= (hash!4276 hashF!1323 key!4653) hash!405))))

(declare-fun b!4710373 () Bool)

(assert (=> b!4710373 (= e!2937928 e!2937925)))

(declare-fun res!1990655 () Bool)

(assert (=> b!4710373 (=> res!1990655 e!2937925)))

(assert (=> b!4710373 (= res!1990655 (not (= lt!1874905 (addToMapMapFromBucket!1382 newBucket!218 lt!1874904))))))

(assert (=> b!4710373 (= lt!1874905 (addToMapMapFromBucket!1382 lt!1874908 lt!1874904))))

(declare-fun b!4710374 () Bool)

(declare-fun contains!15974 (ListMap!5157 K!14030) Bool)

(assert (=> b!4710374 (= e!2937920 (not (contains!15974 lt!1874905 key!4653)))))

(assert (=> b!4710374 (not (contains!15974 lt!1874910 key!4653))))

(declare-fun lt!1874912 () Unit!127870)

(declare-fun lemmaNotInItsHashBucketThenNotInMap!406 (ListLongMap!4323 K!14030 Hashable!6321) Unit!127870)

(assert (=> b!4710374 (= lt!1874912 (lemmaNotInItsHashBucketThenNotInMap!406 (ListLongMap!4324 lt!1874906) key!4653 hashF!1323))))

(declare-fun b!4710375 () Bool)

(declare-fun res!1990663 () Bool)

(assert (=> b!4710375 (=> (not res!1990663) (not e!2937926))))

(declare-fun removePairForKey!1547 (List!52793 K!14030) List!52793)

(assert (=> b!4710375 (= res!1990663 (= (removePairForKey!1547 oldBucket!34 key!4653) newBucket!218))))

(declare-fun b!4710376 () Bool)

(declare-fun res!1990659 () Bool)

(assert (=> b!4710376 (=> (not res!1990659) (not e!2937926))))

(declare-fun noDuplicateKeys!1952 (List!52793) Bool)

(assert (=> b!4710376 (= res!1990659 (noDuplicateKeys!1952 newBucket!218))))

(declare-fun b!4710367 () Bool)

(declare-fun res!1990664 () Bool)

(assert (=> b!4710367 (=> res!1990664 e!2937920)))

(assert (=> b!4710367 (= res!1990664 (not (= lt!1874905 lt!1874910)))))

(declare-fun res!1990648 () Bool)

(assert (=> start!478604 (=> (not res!1990648) (not e!2937926))))

(declare-fun lambda!212611 () Int)

(declare-fun forall!11483 (List!52794 Int) Bool)

(assert (=> start!478604 (= res!1990648 (forall!11483 (toList!5793 lm!2023) lambda!212611))))

(assert (=> start!478604 e!2937926))

(declare-fun e!2937922 () Bool)

(declare-fun inv!67904 (ListLongMap!4323) Bool)

(assert (=> start!478604 (and (inv!67904 lm!2023) e!2937922)))

(assert (=> start!478604 tp_is_empty!31101))

(assert (=> start!478604 e!2937919))

(assert (=> start!478604 true))

(declare-fun e!2937927 () Bool)

(assert (=> start!478604 e!2937927))

(declare-fun b!4710377 () Bool)

(declare-fun res!1990653 () Bool)

(assert (=> b!4710377 (=> (not res!1990653) (not e!2937921))))

(declare-fun allKeysSameHashInMap!1866 (ListLongMap!4323 Hashable!6321) Bool)

(assert (=> b!4710377 (= res!1990653 (allKeysSameHashInMap!1866 lm!2023 hashF!1323))))

(declare-fun b!4710378 () Bool)

(declare-fun tp!1347437 () Bool)

(assert (=> b!4710378 (= e!2937927 (and tp_is_empty!31101 tp_is_empty!31103 tp!1347437))))

(declare-fun b!4710379 () Bool)

(assert (=> b!4710379 (= e!2937926 e!2937921)))

(declare-fun res!1990657 () Bool)

(assert (=> b!4710379 (=> (not res!1990657) (not e!2937921))))

(assert (=> b!4710379 (= res!1990657 (contains!15974 lt!1874907 key!4653))))

(assert (=> b!4710379 (= lt!1874907 (extractMap!1978 (toList!5793 lm!2023)))))

(declare-fun b!4710380 () Bool)

(declare-fun tp!1347439 () Bool)

(assert (=> b!4710380 (= e!2937922 tp!1347439)))

(declare-fun b!4710381 () Bool)

(declare-fun res!1990656 () Bool)

(assert (=> b!4710381 (=> (not res!1990656) (not e!2937926))))

(assert (=> b!4710381 (= res!1990656 (noDuplicateKeys!1952 oldBucket!34))))

(assert (= (and start!478604 res!1990648) b!4710381))

(assert (= (and b!4710381 res!1990656) b!4710376))

(assert (= (and b!4710376 res!1990659) b!4710375))

(assert (= (and b!4710375 res!1990663) b!4710370))

(assert (= (and b!4710370 res!1990650) b!4710379))

(assert (= (and b!4710379 res!1990657) b!4710372))

(assert (= (and b!4710372 res!1990654) b!4710366))

(assert (= (and b!4710366 res!1990651) b!4710377))

(assert (= (and b!4710377 res!1990653) b!4710361))

(assert (= (and b!4710361 res!1990652) b!4710368))

(assert (= (and b!4710368 res!1990662) b!4710364))

(assert (= (and b!4710364 (not res!1990661)) b!4710363))

(assert (= (and b!4710363 (not res!1990660)) b!4710362))

(assert (= (and b!4710362 (not res!1990665)) b!4710373))

(assert (= (and b!4710373 (not res!1990655)) b!4710371))

(assert (= (and b!4710371 (not res!1990649)) b!4710369))

(assert (= (and b!4710369 (not res!1990658)) b!4710367))

(assert (= (and b!4710367 (not res!1990664)) b!4710374))

(assert (= start!478604 b!4710380))

(assert (= (and start!478604 ((_ is Cons!52669) oldBucket!34)) b!4710365))

(assert (= (and start!478604 ((_ is Cons!52669) newBucket!218)) b!4710378))

(declare-fun m!5635517 () Bool)

(assert (=> start!478604 m!5635517))

(declare-fun m!5635519 () Bool)

(assert (=> start!478604 m!5635519))

(declare-fun m!5635521 () Bool)

(assert (=> b!4710370 m!5635521))

(declare-fun m!5635523 () Bool)

(assert (=> b!4710364 m!5635523))

(declare-fun m!5635525 () Bool)

(assert (=> b!4710364 m!5635525))

(declare-fun m!5635527 () Bool)

(assert (=> b!4710364 m!5635527))

(declare-fun m!5635529 () Bool)

(assert (=> b!4710375 m!5635529))

(declare-fun m!5635531 () Bool)

(assert (=> b!4710361 m!5635531))

(declare-fun m!5635533 () Bool)

(assert (=> b!4710372 m!5635533))

(declare-fun m!5635535 () Bool)

(assert (=> b!4710369 m!5635535))

(declare-fun m!5635537 () Bool)

(assert (=> b!4710376 m!5635537))

(declare-fun m!5635539 () Bool)

(assert (=> b!4710366 m!5635539))

(declare-fun m!5635541 () Bool)

(assert (=> b!4710374 m!5635541))

(declare-fun m!5635543 () Bool)

(assert (=> b!4710374 m!5635543))

(declare-fun m!5635545 () Bool)

(assert (=> b!4710374 m!5635545))

(declare-fun m!5635547 () Bool)

(assert (=> b!4710363 m!5635547))

(declare-fun m!5635549 () Bool)

(assert (=> b!4710377 m!5635549))

(declare-fun m!5635551 () Bool)

(assert (=> b!4710362 m!5635551))

(declare-fun m!5635553 () Bool)

(assert (=> b!4710362 m!5635553))

(declare-fun m!5635555 () Bool)

(assert (=> b!4710379 m!5635555))

(declare-fun m!5635557 () Bool)

(assert (=> b!4710379 m!5635557))

(declare-fun m!5635559 () Bool)

(assert (=> b!4710371 m!5635559))

(declare-fun m!5635561 () Bool)

(assert (=> b!4710371 m!5635561))

(declare-fun m!5635563 () Bool)

(assert (=> b!4710371 m!5635563))

(declare-fun m!5635565 () Bool)

(assert (=> b!4710371 m!5635565))

(declare-fun m!5635567 () Bool)

(assert (=> b!4710371 m!5635567))

(assert (=> b!4710371 m!5635561))

(assert (=> b!4710371 m!5635559))

(declare-fun m!5635569 () Bool)

(assert (=> b!4710371 m!5635569))

(declare-fun m!5635571 () Bool)

(assert (=> b!4710371 m!5635571))

(assert (=> b!4710371 m!5635565))

(assert (=> b!4710371 m!5635571))

(declare-fun m!5635573 () Bool)

(assert (=> b!4710371 m!5635573))

(declare-fun m!5635575 () Bool)

(assert (=> b!4710373 m!5635575))

(declare-fun m!5635577 () Bool)

(assert (=> b!4710373 m!5635577))

(declare-fun m!5635579 () Bool)

(assert (=> b!4710381 m!5635579))

(check-sat (not b!4710363) (not b!4710370) (not b!4710374) (not b!4710376) (not b!4710377) (not b!4710361) (not b!4710380) (not b!4710372) tp_is_empty!31101 (not b!4710371) (not b!4710362) (not b!4710365) (not start!478604) (not b!4710369) (not b!4710381) (not b!4710375) (not b!4710366) tp_is_empty!31103 (not b!4710373) (not b!4710364) (not b!4710379) (not b!4710378))
(check-sat)
