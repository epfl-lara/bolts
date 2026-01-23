; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!464234 () Bool)

(assert start!464234)

(declare-fun b!4628451 () Bool)

(declare-fun e!2887231 () Bool)

(declare-datatypes ((K!12948 0))(
  ( (K!12949 (val!18629 Int)) )
))
(declare-datatypes ((V!13194 0))(
  ( (V!13195 (val!18630 Int)) )
))
(declare-datatypes ((tuple2!52522 0))(
  ( (tuple2!52523 (_1!29555 K!12948) (_2!29555 V!13194)) )
))
(declare-datatypes ((List!51696 0))(
  ( (Nil!51572) (Cons!51572 (h!57634 tuple2!52522) (t!358740 List!51696)) )
))
(declare-fun newBucket!224 () List!51696)

(assert (=> b!4628451 (= e!2887231 (not (= newBucket!224 Nil!51572)))))

(declare-fun res!1941436 () Bool)

(declare-fun e!2887226 () Bool)

(assert (=> start!464234 (=> (not res!1941436) (not e!2887226))))

(declare-fun oldBucket!40 () List!51696)

(declare-fun noDuplicateKeys!1519 (List!51696) Bool)

(assert (=> start!464234 (= res!1941436 (noDuplicateKeys!1519 oldBucket!40))))

(assert (=> start!464234 e!2887226))

(assert (=> start!464234 true))

(declare-fun e!2887236 () Bool)

(assert (=> start!464234 e!2887236))

(declare-fun tp_is_empty!29369 () Bool)

(assert (=> start!464234 tp_is_empty!29369))

(declare-fun e!2887227 () Bool)

(assert (=> start!464234 e!2887227))

(declare-fun b!4628452 () Bool)

(declare-fun res!1941440 () Bool)

(declare-fun e!2887230 () Bool)

(assert (=> b!4628452 (=> (not res!1941440) (not e!2887230))))

(declare-datatypes ((Hashable!5916 0))(
  ( (HashableExt!5915 (__x!31619 Int)) )
))
(declare-fun hashF!1389 () Hashable!5916)

(declare-fun hash!414 () (_ BitVec 64))

(declare-fun allKeysSameHash!1373 (List!51696 (_ BitVec 64) Hashable!5916) Bool)

(assert (=> b!4628452 (= res!1941440 (allKeysSameHash!1373 newBucket!224 hash!414 hashF!1389))))

(declare-fun b!4628453 () Bool)

(declare-fun e!2887235 () Bool)

(assert (=> b!4628453 (= e!2887230 (not e!2887235))))

(declare-fun res!1941438 () Bool)

(assert (=> b!4628453 (=> res!1941438 e!2887235)))

(declare-fun key!4968 () K!12948)

(assert (=> b!4628453 (= res!1941438 (or (and (is-Cons!51572 oldBucket!40) (= (_1!29555 (h!57634 oldBucket!40)) key!4968)) (not (is-Cons!51572 oldBucket!40)) (= (_1!29555 (h!57634 oldBucket!40)) key!4968)))))

(declare-fun e!2887237 () Bool)

(assert (=> b!4628453 e!2887237))

(declare-fun res!1941444 () Bool)

(assert (=> b!4628453 (=> (not res!1941444) (not e!2887237))))

(declare-datatypes ((ListMap!4307 0))(
  ( (ListMap!4308 (toList!5003 List!51696)) )
))
(declare-fun lt!1787560 () ListMap!4307)

(declare-fun lt!1787550 () ListMap!4307)

(declare-fun addToMapMapFromBucket!980 (List!51696 ListMap!4307) ListMap!4307)

(assert (=> b!4628453 (= res!1941444 (= lt!1787560 (addToMapMapFromBucket!980 oldBucket!40 lt!1787550)))))

(declare-datatypes ((tuple2!52524 0))(
  ( (tuple2!52525 (_1!29556 (_ BitVec 64)) (_2!29556 List!51696)) )
))
(declare-datatypes ((List!51697 0))(
  ( (Nil!51573) (Cons!51573 (h!57635 tuple2!52524) (t!358741 List!51697)) )
))
(declare-fun extractMap!1575 (List!51697) ListMap!4307)

(assert (=> b!4628453 (= lt!1787550 (extractMap!1575 Nil!51573))))

(assert (=> b!4628453 true))

(declare-fun b!4628454 () Bool)

(declare-fun res!1941446 () Bool)

(assert (=> b!4628454 (=> (not res!1941446) (not e!2887226))))

(assert (=> b!4628454 (= res!1941446 (noDuplicateKeys!1519 newBucket!224))))

(declare-fun b!4628455 () Bool)

(declare-fun e!2887232 () Bool)

(declare-fun e!2887225 () Bool)

(assert (=> b!4628455 (= e!2887232 e!2887225)))

(declare-fun res!1941435 () Bool)

(assert (=> b!4628455 (=> res!1941435 e!2887225)))

(declare-fun lt!1787576 () ListMap!4307)

(declare-fun lt!1787558 () ListMap!4307)

(assert (=> b!4628455 (= res!1941435 (not (= lt!1787576 lt!1787558)))))

(declare-fun lt!1787566 () ListMap!4307)

(declare-fun +!1885 (ListMap!4307 tuple2!52522) ListMap!4307)

(assert (=> b!4628455 (= lt!1787558 (+!1885 lt!1787566 (h!57634 oldBucket!40)))))

(declare-fun lt!1787567 () ListMap!4307)

(declare-fun -!559 (ListMap!4307 K!12948) ListMap!4307)

(assert (=> b!4628455 (= lt!1787576 (-!559 lt!1787567 key!4968))))

(declare-fun lt!1787565 () ListMap!4307)

(assert (=> b!4628455 (= lt!1787567 (+!1885 lt!1787565 (h!57634 oldBucket!40)))))

(assert (=> b!4628455 (= (-!559 (+!1885 lt!1787565 (h!57634 oldBucket!40)) key!4968) (+!1885 lt!1787566 (h!57634 oldBucket!40)))))

(declare-datatypes ((Unit!112758 0))(
  ( (Unit!112759) )
))
(declare-fun lt!1787557 () Unit!112758)

(declare-fun addRemoveCommutativeForDiffKeys!14 (ListMap!4307 K!12948 V!13194 K!12948) Unit!112758)

(assert (=> b!4628455 (= lt!1787557 (addRemoveCommutativeForDiffKeys!14 lt!1787565 (_1!29555 (h!57634 oldBucket!40)) (_2!29555 (h!57634 oldBucket!40)) key!4968))))

(declare-fun lt!1787559 () ListMap!4307)

(declare-fun eq!834 (ListMap!4307 ListMap!4307) Bool)

(assert (=> b!4628455 (eq!834 lt!1787559 lt!1787566)))

(assert (=> b!4628455 (= lt!1787566 (-!559 lt!1787565 key!4968))))

(declare-fun lt!1787568 () List!51696)

(declare-fun lt!1787561 () Unit!112758)

(declare-fun lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMapOneHash!121 ((_ BitVec 64) List!51696 List!51696 K!12948 Hashable!5916) Unit!112758)

(assert (=> b!4628455 (= lt!1787561 (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMapOneHash!121 hash!414 (t!358740 oldBucket!40) lt!1787568 key!4968 hashF!1389))))

(declare-fun b!4628456 () Bool)

(declare-fun res!1941437 () Bool)

(assert (=> b!4628456 (=> (not res!1941437) (not e!2887226))))

(assert (=> b!4628456 (= res!1941437 (allKeysSameHash!1373 oldBucket!40 hash!414 hashF!1389))))

(declare-fun b!4628457 () Bool)

(declare-fun tp!1342232 () Bool)

(declare-fun tp_is_empty!29371 () Bool)

(assert (=> b!4628457 (= e!2887227 (and tp_is_empty!29369 tp_is_empty!29371 tp!1342232))))

(declare-fun tp!1342233 () Bool)

(declare-fun b!4628458 () Bool)

(assert (=> b!4628458 (= e!2887236 (and tp_is_empty!29369 tp_is_empty!29371 tp!1342233))))

(declare-fun b!4628459 () Bool)

(declare-fun e!2887234 () Bool)

(assert (=> b!4628459 (= e!2887226 e!2887234)))

(declare-fun res!1941443 () Bool)

(assert (=> b!4628459 (=> (not res!1941443) (not e!2887234))))

(declare-fun contains!14640 (ListMap!4307 K!12948) Bool)

(assert (=> b!4628459 (= res!1941443 (contains!14640 lt!1787560 key!4968))))

(declare-fun lt!1787547 () List!51697)

(assert (=> b!4628459 (= lt!1787560 (extractMap!1575 lt!1787547))))

(assert (=> b!4628459 (= lt!1787547 (Cons!51573 (tuple2!52525 hash!414 oldBucket!40) Nil!51573))))

(declare-fun b!4628460 () Bool)

(declare-fun e!2887228 () Bool)

(assert (=> b!4628460 (= e!2887235 e!2887228)))

(declare-fun res!1941431 () Bool)

(assert (=> b!4628460 (=> res!1941431 e!2887228)))

(declare-fun containsKey!2483 (List!51696 K!12948) Bool)

(assert (=> b!4628460 (= res!1941431 (not (containsKey!2483 (t!358740 oldBucket!40) key!4968)))))

(assert (=> b!4628460 (containsKey!2483 oldBucket!40 key!4968)))

(declare-fun lt!1787549 () Unit!112758)

(declare-fun lemmaGetPairDefinedThenContainsKey!65 (List!51696 K!12948 Hashable!5916) Unit!112758)

(assert (=> b!4628460 (= lt!1787549 (lemmaGetPairDefinedThenContainsKey!65 oldBucket!40 key!4968 hashF!1389))))

(declare-fun lt!1787551 () List!51696)

(declare-datatypes ((Option!11625 0))(
  ( (None!11624) (Some!11624 (v!45774 tuple2!52522)) )
))
(declare-fun isDefined!8890 (Option!11625) Bool)

(declare-fun getPair!311 (List!51696 K!12948) Option!11625)

(assert (=> b!4628460 (isDefined!8890 (getPair!311 lt!1787551 key!4968))))

(declare-fun lt!1787575 () tuple2!52524)

(declare-fun lt!1787569 () Unit!112758)

(declare-fun lambda!192917 () Int)

(declare-fun forallContained!3075 (List!51697 Int tuple2!52524) Unit!112758)

(assert (=> b!4628460 (= lt!1787569 (forallContained!3075 lt!1787547 lambda!192917 lt!1787575))))

(declare-fun contains!14641 (List!51697 tuple2!52524) Bool)

(assert (=> b!4628460 (contains!14641 lt!1787547 lt!1787575)))

(declare-fun lt!1787570 () (_ BitVec 64))

(assert (=> b!4628460 (= lt!1787575 (tuple2!52525 lt!1787570 lt!1787551))))

(declare-fun lt!1787555 () Unit!112758)

(declare-datatypes ((ListLongMap!3593 0))(
  ( (ListLongMap!3594 (toList!5004 List!51697)) )
))
(declare-fun lt!1787552 () ListLongMap!3593)

(declare-fun lemmaGetValueImpliesTupleContained!116 (ListLongMap!3593 (_ BitVec 64) List!51696) Unit!112758)

(assert (=> b!4628460 (= lt!1787555 (lemmaGetValueImpliesTupleContained!116 lt!1787552 lt!1787570 lt!1787551))))

(declare-fun apply!12184 (ListLongMap!3593 (_ BitVec 64)) List!51696)

(assert (=> b!4628460 (= lt!1787551 (apply!12184 lt!1787552 lt!1787570))))

(declare-fun contains!14642 (ListLongMap!3593 (_ BitVec 64)) Bool)

(assert (=> b!4628460 (contains!14642 lt!1787552 lt!1787570)))

(declare-fun lt!1787571 () Unit!112758)

(declare-fun lemmaInGenMapThenLongMapContainsHash!517 (ListLongMap!3593 K!12948 Hashable!5916) Unit!112758)

(assert (=> b!4628460 (= lt!1787571 (lemmaInGenMapThenLongMapContainsHash!517 lt!1787552 key!4968 hashF!1389))))

(declare-fun lt!1787572 () Unit!112758)

(declare-fun lemmaInGenMapThenGetPairDefined!107 (ListLongMap!3593 K!12948 Hashable!5916) Unit!112758)

(assert (=> b!4628460 (= lt!1787572 (lemmaInGenMapThenGetPairDefined!107 lt!1787552 key!4968 hashF!1389))))

(assert (=> b!4628460 (= lt!1787552 (ListLongMap!3594 lt!1787547))))

(declare-fun b!4628461 () Bool)

(declare-fun e!2887233 () Bool)

(assert (=> b!4628461 (= e!2887233 e!2887232)))

(declare-fun res!1941441 () Bool)

(assert (=> b!4628461 (=> res!1941441 e!2887232)))

(declare-fun lt!1787574 () tuple2!52522)

(declare-fun lt!1787548 () ListMap!4307)

(assert (=> b!4628461 (= res!1941441 (not (eq!834 lt!1787548 (+!1885 lt!1787559 lt!1787574))))))

(assert (=> b!4628461 (= lt!1787559 (extractMap!1575 (Cons!51573 (tuple2!52525 hash!414 lt!1787568) Nil!51573)))))

(assert (=> b!4628461 (= lt!1787548 (extractMap!1575 (Cons!51573 (tuple2!52525 hash!414 newBucket!224) Nil!51573)))))

(declare-fun b!4628462 () Bool)

(declare-fun res!1941434 () Bool)

(assert (=> b!4628462 (=> (not res!1941434) (not e!2887226))))

(declare-fun removePairForKey!1142 (List!51696 K!12948) List!51696)

(assert (=> b!4628462 (= res!1941434 (= (removePairForKey!1142 oldBucket!40 key!4968) newBucket!224))))

(declare-fun b!4628463 () Bool)

(declare-fun e!2887229 () Bool)

(assert (=> b!4628463 (= e!2887229 e!2887233)))

(declare-fun res!1941439 () Bool)

(assert (=> b!4628463 (=> res!1941439 e!2887233)))

(declare-fun lt!1787554 () List!51696)

(assert (=> b!4628463 (= res!1941439 (not (eq!834 lt!1787560 (+!1885 (extractMap!1575 (Cons!51573 (tuple2!52525 hash!414 lt!1787554) Nil!51573)) (h!57634 oldBucket!40)))))))

(assert (=> b!4628463 (eq!834 (addToMapMapFromBucket!980 (Cons!51572 lt!1787574 lt!1787568) (ListMap!4308 Nil!51572)) (+!1885 (addToMapMapFromBucket!980 lt!1787568 (ListMap!4308 Nil!51572)) lt!1787574))))

(declare-fun lt!1787562 () Unit!112758)

(declare-fun lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!85 (tuple2!52522 List!51696 ListMap!4307) Unit!112758)

(assert (=> b!4628463 (= lt!1787562 (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!85 lt!1787574 lt!1787568 (ListMap!4308 Nil!51572)))))

(declare-fun head!9653 (List!51696) tuple2!52522)

(assert (=> b!4628463 (= lt!1787574 (head!9653 newBucket!224))))

(declare-fun lt!1787553 () tuple2!52522)

(assert (=> b!4628463 (eq!834 (addToMapMapFromBucket!980 (Cons!51572 lt!1787553 lt!1787554) (ListMap!4308 Nil!51572)) (+!1885 (addToMapMapFromBucket!980 lt!1787554 (ListMap!4308 Nil!51572)) lt!1787553))))

(declare-fun lt!1787556 () Unit!112758)

(assert (=> b!4628463 (= lt!1787556 (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!85 lt!1787553 lt!1787554 (ListMap!4308 Nil!51572)))))

(assert (=> b!4628463 (= lt!1787553 (head!9653 oldBucket!40))))

(assert (=> b!4628463 (contains!14640 lt!1787565 key!4968)))

(declare-fun lt!1787563 () List!51697)

(assert (=> b!4628463 (= lt!1787565 (extractMap!1575 lt!1787563))))

(declare-fun lt!1787546 () Unit!112758)

(declare-fun lemmaListContainsThenExtractedMapContains!337 (ListLongMap!3593 K!12948 Hashable!5916) Unit!112758)

(assert (=> b!4628463 (= lt!1787546 (lemmaListContainsThenExtractedMapContains!337 (ListLongMap!3594 lt!1787563) key!4968 hashF!1389))))

(assert (=> b!4628463 (= lt!1787563 (Cons!51573 (tuple2!52525 hash!414 (t!358740 oldBucket!40)) Nil!51573))))

(declare-fun b!4628464 () Bool)

(assert (=> b!4628464 (= e!2887225 e!2887231)))

(declare-fun res!1941432 () Bool)

(assert (=> b!4628464 (=> res!1941432 e!2887231)))

(declare-fun lt!1787573 () ListMap!4307)

(assert (=> b!4628464 (= res!1941432 (not (eq!834 lt!1787573 lt!1787558)))))

(assert (=> b!4628464 (eq!834 lt!1787576 lt!1787573)))

(assert (=> b!4628464 (= lt!1787573 (-!559 lt!1787560 key!4968))))

(declare-fun lt!1787564 () Unit!112758)

(declare-fun lemmaRemovePreservesEq!15 (ListMap!4307 ListMap!4307 K!12948) Unit!112758)

(assert (=> b!4628464 (= lt!1787564 (lemmaRemovePreservesEq!15 lt!1787567 lt!1787560 key!4968))))

(declare-fun b!4628465 () Bool)

(declare-fun res!1941445 () Bool)

(assert (=> b!4628465 (=> res!1941445 e!2887229)))

(assert (=> b!4628465 (= res!1941445 (not (= (removePairForKey!1142 (t!358740 oldBucket!40) key!4968) lt!1787568)))))

(declare-fun b!4628466 () Bool)

(assert (=> b!4628466 (= e!2887234 e!2887230)))

(declare-fun res!1941433 () Bool)

(assert (=> b!4628466 (=> (not res!1941433) (not e!2887230))))

(assert (=> b!4628466 (= res!1941433 (= lt!1787570 hash!414))))

(declare-fun hash!3536 (Hashable!5916 K!12948) (_ BitVec 64))

(assert (=> b!4628466 (= lt!1787570 (hash!3536 hashF!1389 key!4968))))

(declare-fun b!4628467 () Bool)

(assert (=> b!4628467 (= e!2887237 (= lt!1787550 (ListMap!4308 Nil!51572)))))

(declare-fun b!4628468 () Bool)

(assert (=> b!4628468 (= e!2887228 e!2887229)))

(declare-fun res!1941442 () Bool)

(assert (=> b!4628468 (=> res!1941442 e!2887229)))

(assert (=> b!4628468 (= res!1941442 (not (= (removePairForKey!1142 lt!1787554 key!4968) lt!1787568)))))

(declare-fun tail!8154 (List!51696) List!51696)

(assert (=> b!4628468 (= lt!1787568 (tail!8154 newBucket!224))))

(assert (=> b!4628468 (= lt!1787554 (tail!8154 oldBucket!40))))

(assert (= (and start!464234 res!1941436) b!4628454))

(assert (= (and b!4628454 res!1941446) b!4628462))

(assert (= (and b!4628462 res!1941434) b!4628456))

(assert (= (and b!4628456 res!1941437) b!4628459))

(assert (= (and b!4628459 res!1941443) b!4628466))

(assert (= (and b!4628466 res!1941433) b!4628452))

(assert (= (and b!4628452 res!1941440) b!4628453))

(assert (= (and b!4628453 res!1941444) b!4628467))

(assert (= (and b!4628453 (not res!1941438)) b!4628460))

(assert (= (and b!4628460 (not res!1941431)) b!4628468))

(assert (= (and b!4628468 (not res!1941442)) b!4628465))

(assert (= (and b!4628465 (not res!1941445)) b!4628463))

(assert (= (and b!4628463 (not res!1941439)) b!4628461))

(assert (= (and b!4628461 (not res!1941441)) b!4628455))

(assert (= (and b!4628455 (not res!1941435)) b!4628464))

(assert (= (and b!4628464 (not res!1941432)) b!4628451))

(assert (= (and start!464234 (is-Cons!51572 oldBucket!40)) b!4628458))

(assert (= (and start!464234 (is-Cons!51572 newBucket!224)) b!4628457))

(declare-fun m!5474067 () Bool)

(assert (=> start!464234 m!5474067))

(declare-fun m!5474069 () Bool)

(assert (=> b!4628459 m!5474069))

(declare-fun m!5474071 () Bool)

(assert (=> b!4628459 m!5474071))

(declare-fun m!5474073 () Bool)

(assert (=> b!4628462 m!5474073))

(declare-fun m!5474075 () Bool)

(assert (=> b!4628468 m!5474075))

(declare-fun m!5474077 () Bool)

(assert (=> b!4628468 m!5474077))

(declare-fun m!5474079 () Bool)

(assert (=> b!4628468 m!5474079))

(declare-fun m!5474081 () Bool)

(assert (=> b!4628456 m!5474081))

(declare-fun m!5474083 () Bool)

(assert (=> b!4628455 m!5474083))

(declare-fun m!5474085 () Bool)

(assert (=> b!4628455 m!5474085))

(declare-fun m!5474087 () Bool)

(assert (=> b!4628455 m!5474087))

(assert (=> b!4628455 m!5474087))

(declare-fun m!5474089 () Bool)

(assert (=> b!4628455 m!5474089))

(declare-fun m!5474091 () Bool)

(assert (=> b!4628455 m!5474091))

(declare-fun m!5474093 () Bool)

(assert (=> b!4628455 m!5474093))

(declare-fun m!5474095 () Bool)

(assert (=> b!4628455 m!5474095))

(declare-fun m!5474097 () Bool)

(assert (=> b!4628455 m!5474097))

(declare-fun m!5474099 () Bool)

(assert (=> b!4628453 m!5474099))

(declare-fun m!5474101 () Bool)

(assert (=> b!4628453 m!5474101))

(declare-fun m!5474103 () Bool)

(assert (=> b!4628465 m!5474103))

(declare-fun m!5474105 () Bool)

(assert (=> b!4628460 m!5474105))

(declare-fun m!5474107 () Bool)

(assert (=> b!4628460 m!5474107))

(declare-fun m!5474109 () Bool)

(assert (=> b!4628460 m!5474109))

(declare-fun m!5474111 () Bool)

(assert (=> b!4628460 m!5474111))

(declare-fun m!5474113 () Bool)

(assert (=> b!4628460 m!5474113))

(declare-fun m!5474115 () Bool)

(assert (=> b!4628460 m!5474115))

(declare-fun m!5474117 () Bool)

(assert (=> b!4628460 m!5474117))

(declare-fun m!5474119 () Bool)

(assert (=> b!4628460 m!5474119))

(assert (=> b!4628460 m!5474113))

(declare-fun m!5474121 () Bool)

(assert (=> b!4628460 m!5474121))

(declare-fun m!5474123 () Bool)

(assert (=> b!4628460 m!5474123))

(declare-fun m!5474125 () Bool)

(assert (=> b!4628460 m!5474125))

(declare-fun m!5474127 () Bool)

(assert (=> b!4628460 m!5474127))

(declare-fun m!5474129 () Bool)

(assert (=> b!4628463 m!5474129))

(declare-fun m!5474131 () Bool)

(assert (=> b!4628463 m!5474131))

(declare-fun m!5474133 () Bool)

(assert (=> b!4628463 m!5474133))

(declare-fun m!5474135 () Bool)

(assert (=> b!4628463 m!5474135))

(declare-fun m!5474137 () Bool)

(assert (=> b!4628463 m!5474137))

(declare-fun m!5474139 () Bool)

(assert (=> b!4628463 m!5474139))

(declare-fun m!5474141 () Bool)

(assert (=> b!4628463 m!5474141))

(declare-fun m!5474143 () Bool)

(assert (=> b!4628463 m!5474143))

(declare-fun m!5474145 () Bool)

(assert (=> b!4628463 m!5474145))

(declare-fun m!5474147 () Bool)

(assert (=> b!4628463 m!5474147))

(declare-fun m!5474149 () Bool)

(assert (=> b!4628463 m!5474149))

(declare-fun m!5474151 () Bool)

(assert (=> b!4628463 m!5474151))

(assert (=> b!4628463 m!5474143))

(declare-fun m!5474153 () Bool)

(assert (=> b!4628463 m!5474153))

(assert (=> b!4628463 m!5474137))

(assert (=> b!4628463 m!5474139))

(declare-fun m!5474155 () Bool)

(assert (=> b!4628463 m!5474155))

(declare-fun m!5474157 () Bool)

(assert (=> b!4628463 m!5474157))

(assert (=> b!4628463 m!5474151))

(assert (=> b!4628463 m!5474133))

(assert (=> b!4628463 m!5474131))

(declare-fun m!5474159 () Bool)

(assert (=> b!4628463 m!5474159))

(declare-fun m!5474161 () Bool)

(assert (=> b!4628463 m!5474161))

(declare-fun m!5474163 () Bool)

(assert (=> b!4628463 m!5474163))

(assert (=> b!4628463 m!5474149))

(assert (=> b!4628463 m!5474145))

(declare-fun m!5474165 () Bool)

(assert (=> b!4628452 m!5474165))

(declare-fun m!5474167 () Bool)

(assert (=> b!4628461 m!5474167))

(assert (=> b!4628461 m!5474167))

(declare-fun m!5474169 () Bool)

(assert (=> b!4628461 m!5474169))

(declare-fun m!5474171 () Bool)

(assert (=> b!4628461 m!5474171))

(declare-fun m!5474173 () Bool)

(assert (=> b!4628461 m!5474173))

(declare-fun m!5474175 () Bool)

(assert (=> b!4628454 m!5474175))

(declare-fun m!5474177 () Bool)

(assert (=> b!4628466 m!5474177))

(declare-fun m!5474179 () Bool)

(assert (=> b!4628464 m!5474179))

(declare-fun m!5474181 () Bool)

(assert (=> b!4628464 m!5474181))

(declare-fun m!5474183 () Bool)

(assert (=> b!4628464 m!5474183))

(declare-fun m!5474185 () Bool)

(assert (=> b!4628464 m!5474185))

(push 1)

(assert (not start!464234))

(assert (not b!4628462))

(assert (not b!4628466))

(assert (not b!4628458))

(assert (not b!4628464))

(assert (not b!4628468))

(assert (not b!4628456))

(assert (not b!4628459))

(assert (not b!4628460))

(assert (not b!4628453))

(assert (not b!4628463))

(assert (not b!4628452))

(assert tp_is_empty!29369)

(assert (not b!4628454))

(assert (not b!4628455))

(assert (not b!4628461))

(assert (not b!4628465))

(assert tp_is_empty!29371)

(assert (not b!4628457))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1458282 () Bool)

(assert (=> d!1458282 true))

(assert (=> d!1458282 true))

(declare-fun lambda!192923 () Int)

(declare-fun forall!10845 (List!51696 Int) Bool)

(assert (=> d!1458282 (= (allKeysSameHash!1373 oldBucket!40 hash!414 hashF!1389) (forall!10845 oldBucket!40 lambda!192923))))

(declare-fun bs!1025552 () Bool)

(assert (= bs!1025552 d!1458282))

(declare-fun m!5474307 () Bool)

(assert (=> bs!1025552 m!5474307))

(assert (=> b!4628456 d!1458282))

(declare-fun b!4628538 () Bool)

(declare-fun e!2887282 () List!51696)

(assert (=> b!4628538 (= e!2887282 Nil!51572)))

(declare-fun b!4628535 () Bool)

(declare-fun e!2887281 () List!51696)

(assert (=> b!4628535 (= e!2887281 (t!358740 lt!1787554))))

(declare-fun d!1458284 () Bool)

(declare-fun lt!1787672 () List!51696)

(assert (=> d!1458284 (not (containsKey!2483 lt!1787672 key!4968))))

(assert (=> d!1458284 (= lt!1787672 e!2887281)))

(declare-fun c!792260 () Bool)

(assert (=> d!1458284 (= c!792260 (and (is-Cons!51572 lt!1787554) (= (_1!29555 (h!57634 lt!1787554)) key!4968)))))

(assert (=> d!1458284 (noDuplicateKeys!1519 lt!1787554)))

(assert (=> d!1458284 (= (removePairForKey!1142 lt!1787554 key!4968) lt!1787672)))

(declare-fun b!4628536 () Bool)

(assert (=> b!4628536 (= e!2887281 e!2887282)))

(declare-fun c!792259 () Bool)

(assert (=> b!4628536 (= c!792259 (is-Cons!51572 lt!1787554))))

(declare-fun b!4628537 () Bool)

(assert (=> b!4628537 (= e!2887282 (Cons!51572 (h!57634 lt!1787554) (removePairForKey!1142 (t!358740 lt!1787554) key!4968)))))

(assert (= (and d!1458284 c!792260) b!4628535))

(assert (= (and d!1458284 (not c!792260)) b!4628536))

(assert (= (and b!4628536 c!792259) b!4628537))

(assert (= (and b!4628536 (not c!792259)) b!4628538))

(declare-fun m!5474309 () Bool)

(assert (=> d!1458284 m!5474309))

(declare-fun m!5474311 () Bool)

(assert (=> d!1458284 m!5474311))

(declare-fun m!5474313 () Bool)

(assert (=> b!4628537 m!5474313))

(assert (=> b!4628468 d!1458284))

(declare-fun d!1458286 () Bool)

(assert (=> d!1458286 (= (tail!8154 newBucket!224) (t!358740 newBucket!224))))

(assert (=> b!4628468 d!1458286))

(declare-fun d!1458288 () Bool)

(assert (=> d!1458288 (= (tail!8154 oldBucket!40) (t!358740 oldBucket!40))))

(assert (=> b!4628468 d!1458288))

(declare-fun b!4628557 () Bool)

(declare-fun e!2887297 () Unit!112758)

(declare-fun lt!1787690 () Unit!112758)

(assert (=> b!4628557 (= e!2887297 lt!1787690)))

(declare-fun lt!1787696 () Unit!112758)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1375 (List!51696 K!12948) Unit!112758)

(assert (=> b!4628557 (= lt!1787696 (lemmaContainsKeyImpliesGetValueByKeyDefined!1375 (toList!5003 lt!1787560) key!4968))))

(declare-datatypes ((Option!11627 0))(
  ( (None!11626) (Some!11626 (v!45778 V!13194)) )
))
(declare-fun isDefined!8892 (Option!11627) Bool)

(declare-fun getValueByKey!1473 (List!51696 K!12948) Option!11627)

(assert (=> b!4628557 (isDefined!8892 (getValueByKey!1473 (toList!5003 lt!1787560) key!4968))))

(declare-fun lt!1787693 () Unit!112758)

(assert (=> b!4628557 (= lt!1787693 lt!1787696)))

(declare-fun lemmaInListThenGetKeysListContains!661 (List!51696 K!12948) Unit!112758)

(assert (=> b!4628557 (= lt!1787690 (lemmaInListThenGetKeysListContains!661 (toList!5003 lt!1787560) key!4968))))

(declare-fun call!322904 () Bool)

(assert (=> b!4628557 call!322904))

(declare-fun b!4628558 () Bool)

(declare-datatypes ((List!51700 0))(
  ( (Nil!51576) (Cons!51576 (h!57639 K!12948) (t!358746 List!51700)) )
))
(declare-fun e!2887298 () List!51700)

(declare-fun keys!18179 (ListMap!4307) List!51700)

(assert (=> b!4628558 (= e!2887298 (keys!18179 lt!1787560))))

(declare-fun b!4628559 () Bool)

(declare-fun e!2887300 () Bool)

(declare-fun contains!14646 (List!51700 K!12948) Bool)

(assert (=> b!4628559 (= e!2887300 (not (contains!14646 (keys!18179 lt!1787560) key!4968)))))

(declare-fun d!1458290 () Bool)

(declare-fun e!2887299 () Bool)

(assert (=> d!1458290 e!2887299))

(declare-fun res!1941503 () Bool)

(assert (=> d!1458290 (=> res!1941503 e!2887299)))

(assert (=> d!1458290 (= res!1941503 e!2887300)))

(declare-fun res!1941501 () Bool)

(assert (=> d!1458290 (=> (not res!1941501) (not e!2887300))))

(declare-fun lt!1787694 () Bool)

(assert (=> d!1458290 (= res!1941501 (not lt!1787694))))

(declare-fun lt!1787692 () Bool)

(assert (=> d!1458290 (= lt!1787694 lt!1787692)))

(declare-fun lt!1787689 () Unit!112758)

(assert (=> d!1458290 (= lt!1787689 e!2887297)))

(declare-fun c!792267 () Bool)

(assert (=> d!1458290 (= c!792267 lt!1787692)))

(declare-fun containsKey!2485 (List!51696 K!12948) Bool)

(assert (=> d!1458290 (= lt!1787692 (containsKey!2485 (toList!5003 lt!1787560) key!4968))))

(assert (=> d!1458290 (= (contains!14640 lt!1787560 key!4968) lt!1787694)))

(declare-fun b!4628560 () Bool)

(declare-fun e!2887295 () Unit!112758)

(assert (=> b!4628560 (= e!2887297 e!2887295)))

(declare-fun c!792269 () Bool)

(assert (=> b!4628560 (= c!792269 call!322904)))

(declare-fun b!4628561 () Bool)

(declare-fun Unit!112762 () Unit!112758)

(assert (=> b!4628561 (= e!2887295 Unit!112762)))

(declare-fun bm!322899 () Bool)

(assert (=> bm!322899 (= call!322904 (contains!14646 e!2887298 key!4968))))

(declare-fun c!792268 () Bool)

(assert (=> bm!322899 (= c!792268 c!792267)))

(declare-fun b!4628562 () Bool)

(declare-fun e!2887296 () Bool)

(assert (=> b!4628562 (= e!2887299 e!2887296)))

(declare-fun res!1941502 () Bool)

(assert (=> b!4628562 (=> (not res!1941502) (not e!2887296))))

(assert (=> b!4628562 (= res!1941502 (isDefined!8892 (getValueByKey!1473 (toList!5003 lt!1787560) key!4968)))))

(declare-fun b!4628563 () Bool)

(assert (=> b!4628563 false))

(declare-fun lt!1787691 () Unit!112758)

(declare-fun lt!1787695 () Unit!112758)

(assert (=> b!4628563 (= lt!1787691 lt!1787695)))

(assert (=> b!4628563 (containsKey!2485 (toList!5003 lt!1787560) key!4968)))

(declare-fun lemmaInGetKeysListThenContainsKey!665 (List!51696 K!12948) Unit!112758)

(assert (=> b!4628563 (= lt!1787695 (lemmaInGetKeysListThenContainsKey!665 (toList!5003 lt!1787560) key!4968))))

(declare-fun Unit!112763 () Unit!112758)

(assert (=> b!4628563 (= e!2887295 Unit!112763)))

(declare-fun b!4628564 () Bool)

(assert (=> b!4628564 (= e!2887296 (contains!14646 (keys!18179 lt!1787560) key!4968))))

(declare-fun b!4628565 () Bool)

(declare-fun getKeysList!666 (List!51696) List!51700)

(assert (=> b!4628565 (= e!2887298 (getKeysList!666 (toList!5003 lt!1787560)))))

(assert (= (and d!1458290 c!792267) b!4628557))

(assert (= (and d!1458290 (not c!792267)) b!4628560))

(assert (= (and b!4628560 c!792269) b!4628563))

(assert (= (and b!4628560 (not c!792269)) b!4628561))

(assert (= (or b!4628557 b!4628560) bm!322899))

(assert (= (and bm!322899 c!792268) b!4628565))

(assert (= (and bm!322899 (not c!792268)) b!4628558))

(assert (= (and d!1458290 res!1941501) b!4628559))

(assert (= (and d!1458290 (not res!1941503)) b!4628562))

(assert (= (and b!4628562 res!1941502) b!4628564))

(declare-fun m!5474315 () Bool)

(assert (=> b!4628563 m!5474315))

(declare-fun m!5474317 () Bool)

(assert (=> b!4628563 m!5474317))

(declare-fun m!5474319 () Bool)

(assert (=> b!4628565 m!5474319))

(declare-fun m!5474321 () Bool)

(assert (=> b!4628558 m!5474321))

(assert (=> d!1458290 m!5474315))

(assert (=> b!4628564 m!5474321))

(assert (=> b!4628564 m!5474321))

(declare-fun m!5474323 () Bool)

(assert (=> b!4628564 m!5474323))

(declare-fun m!5474325 () Bool)

(assert (=> b!4628562 m!5474325))

(assert (=> b!4628562 m!5474325))

(declare-fun m!5474327 () Bool)

(assert (=> b!4628562 m!5474327))

(declare-fun m!5474329 () Bool)

(assert (=> b!4628557 m!5474329))

(assert (=> b!4628557 m!5474325))

(assert (=> b!4628557 m!5474325))

(assert (=> b!4628557 m!5474327))

(declare-fun m!5474331 () Bool)

(assert (=> b!4628557 m!5474331))

(declare-fun m!5474333 () Bool)

(assert (=> bm!322899 m!5474333))

(assert (=> b!4628559 m!5474321))

(assert (=> b!4628559 m!5474321))

(assert (=> b!4628559 m!5474323))

(assert (=> b!4628459 d!1458290))

(declare-fun bs!1025553 () Bool)

(declare-fun d!1458292 () Bool)

(assert (= bs!1025553 (and d!1458292 b!4628460)))

(declare-fun lambda!192926 () Int)

(assert (=> bs!1025553 (= lambda!192926 lambda!192917)))

(declare-fun lt!1787699 () ListMap!4307)

(declare-fun invariantList!1215 (List!51696) Bool)

(assert (=> d!1458292 (invariantList!1215 (toList!5003 lt!1787699))))

(declare-fun e!2887303 () ListMap!4307)

(assert (=> d!1458292 (= lt!1787699 e!2887303)))

(declare-fun c!792272 () Bool)

(assert (=> d!1458292 (= c!792272 (is-Cons!51573 lt!1787547))))

(declare-fun forall!10846 (List!51697 Int) Bool)

(assert (=> d!1458292 (forall!10846 lt!1787547 lambda!192926)))

(assert (=> d!1458292 (= (extractMap!1575 lt!1787547) lt!1787699)))

(declare-fun b!4628570 () Bool)

(assert (=> b!4628570 (= e!2887303 (addToMapMapFromBucket!980 (_2!29556 (h!57635 lt!1787547)) (extractMap!1575 (t!358741 lt!1787547))))))

(declare-fun b!4628571 () Bool)

(assert (=> b!4628571 (= e!2887303 (ListMap!4308 Nil!51572))))

(assert (= (and d!1458292 c!792272) b!4628570))

(assert (= (and d!1458292 (not c!792272)) b!4628571))

(declare-fun m!5474335 () Bool)

(assert (=> d!1458292 m!5474335))

(declare-fun m!5474337 () Bool)

(assert (=> d!1458292 m!5474337))

(declare-fun m!5474339 () Bool)

(assert (=> b!4628570 m!5474339))

(assert (=> b!4628570 m!5474339))

(declare-fun m!5474341 () Bool)

(assert (=> b!4628570 m!5474341))

(assert (=> b!4628459 d!1458292))

(declare-fun d!1458294 () Bool)

(assert (=> d!1458294 (containsKey!2483 oldBucket!40 key!4968)))

(declare-fun lt!1787702 () Unit!112758)

(declare-fun choose!31408 (List!51696 K!12948 Hashable!5916) Unit!112758)

(assert (=> d!1458294 (= lt!1787702 (choose!31408 oldBucket!40 key!4968 hashF!1389))))

(assert (=> d!1458294 (noDuplicateKeys!1519 oldBucket!40)))

(assert (=> d!1458294 (= (lemmaGetPairDefinedThenContainsKey!65 oldBucket!40 key!4968 hashF!1389) lt!1787702)))

(declare-fun bs!1025554 () Bool)

(assert (= bs!1025554 d!1458294))

(assert (=> bs!1025554 m!5474117))

(declare-fun m!5474343 () Bool)

(assert (=> bs!1025554 m!5474343))

(assert (=> bs!1025554 m!5474067))

(assert (=> b!4628460 d!1458294))

(declare-fun d!1458296 () Bool)

(declare-fun isEmpty!28941 (Option!11625) Bool)

(assert (=> d!1458296 (= (isDefined!8890 (getPair!311 lt!1787551 key!4968)) (not (isEmpty!28941 (getPair!311 lt!1787551 key!4968))))))

(declare-fun bs!1025555 () Bool)

(assert (= bs!1025555 d!1458296))

(assert (=> bs!1025555 m!5474113))

(declare-fun m!5474345 () Bool)

(assert (=> bs!1025555 m!5474345))

(assert (=> b!4628460 d!1458296))

(declare-fun bs!1025556 () Bool)

(declare-fun d!1458298 () Bool)

(assert (= bs!1025556 (and d!1458298 b!4628460)))

(declare-fun lambda!192929 () Int)

(assert (=> bs!1025556 (= lambda!192929 lambda!192917)))

(declare-fun bs!1025557 () Bool)

(assert (= bs!1025557 (and d!1458298 d!1458292)))

(assert (=> bs!1025557 (= lambda!192929 lambda!192926)))

(assert (=> d!1458298 (contains!14642 lt!1787552 (hash!3536 hashF!1389 key!4968))))

(declare-fun lt!1787705 () Unit!112758)

(declare-fun choose!31409 (ListLongMap!3593 K!12948 Hashable!5916) Unit!112758)

(assert (=> d!1458298 (= lt!1787705 (choose!31409 lt!1787552 key!4968 hashF!1389))))

(assert (=> d!1458298 (forall!10846 (toList!5004 lt!1787552) lambda!192929)))

(assert (=> d!1458298 (= (lemmaInGenMapThenLongMapContainsHash!517 lt!1787552 key!4968 hashF!1389) lt!1787705)))

(declare-fun bs!1025558 () Bool)

(assert (= bs!1025558 d!1458298))

(assert (=> bs!1025558 m!5474177))

(assert (=> bs!1025558 m!5474177))

(declare-fun m!5474347 () Bool)

(assert (=> bs!1025558 m!5474347))

(declare-fun m!5474349 () Bool)

(assert (=> bs!1025558 m!5474349))

(declare-fun m!5474351 () Bool)

(assert (=> bs!1025558 m!5474351))

(assert (=> b!4628460 d!1458298))

(declare-fun d!1458300 () Bool)

(declare-fun res!1941508 () Bool)

(declare-fun e!2887308 () Bool)

(assert (=> d!1458300 (=> res!1941508 e!2887308)))

(assert (=> d!1458300 (= res!1941508 (and (is-Cons!51572 (t!358740 oldBucket!40)) (= (_1!29555 (h!57634 (t!358740 oldBucket!40))) key!4968)))))

(assert (=> d!1458300 (= (containsKey!2483 (t!358740 oldBucket!40) key!4968) e!2887308)))

(declare-fun b!4628576 () Bool)

(declare-fun e!2887309 () Bool)

(assert (=> b!4628576 (= e!2887308 e!2887309)))

(declare-fun res!1941509 () Bool)

(assert (=> b!4628576 (=> (not res!1941509) (not e!2887309))))

(assert (=> b!4628576 (= res!1941509 (is-Cons!51572 (t!358740 oldBucket!40)))))

(declare-fun b!4628577 () Bool)

(assert (=> b!4628577 (= e!2887309 (containsKey!2483 (t!358740 (t!358740 oldBucket!40)) key!4968))))

(assert (= (and d!1458300 (not res!1941508)) b!4628576))

(assert (= (and b!4628576 res!1941509) b!4628577))

(declare-fun m!5474353 () Bool)

(assert (=> b!4628577 m!5474353))

(assert (=> b!4628460 d!1458300))

(declare-fun b!4628594 () Bool)

(declare-fun e!2887323 () Bool)

(assert (=> b!4628594 (= e!2887323 (not (containsKey!2483 lt!1787551 key!4968)))))

(declare-fun b!4628595 () Bool)

(declare-fun e!2887321 () Option!11625)

(assert (=> b!4628595 (= e!2887321 (Some!11624 (h!57634 lt!1787551)))))

(declare-fun b!4628597 () Bool)

(declare-fun res!1941518 () Bool)

(declare-fun e!2887322 () Bool)

(assert (=> b!4628597 (=> (not res!1941518) (not e!2887322))))

(declare-fun lt!1787708 () Option!11625)

(declare-fun get!17106 (Option!11625) tuple2!52522)

(assert (=> b!4628597 (= res!1941518 (= (_1!29555 (get!17106 lt!1787708)) key!4968))))

(declare-fun b!4628598 () Bool)

(declare-fun contains!14647 (List!51696 tuple2!52522) Bool)

(assert (=> b!4628598 (= e!2887322 (contains!14647 lt!1787551 (get!17106 lt!1787708)))))

(declare-fun b!4628599 () Bool)

(declare-fun e!2887320 () Option!11625)

(assert (=> b!4628599 (= e!2887320 (getPair!311 (t!358740 lt!1787551) key!4968))))

(declare-fun b!4628596 () Bool)

(declare-fun e!2887324 () Bool)

(assert (=> b!4628596 (= e!2887324 e!2887322)))

(declare-fun res!1941520 () Bool)

(assert (=> b!4628596 (=> (not res!1941520) (not e!2887322))))

(assert (=> b!4628596 (= res!1941520 (isDefined!8890 lt!1787708))))

(declare-fun d!1458302 () Bool)

(assert (=> d!1458302 e!2887324))

(declare-fun res!1941519 () Bool)

(assert (=> d!1458302 (=> res!1941519 e!2887324)))

(assert (=> d!1458302 (= res!1941519 e!2887323)))

(declare-fun res!1941521 () Bool)

(assert (=> d!1458302 (=> (not res!1941521) (not e!2887323))))

(assert (=> d!1458302 (= res!1941521 (isEmpty!28941 lt!1787708))))

(assert (=> d!1458302 (= lt!1787708 e!2887321)))

(declare-fun c!792277 () Bool)

(assert (=> d!1458302 (= c!792277 (and (is-Cons!51572 lt!1787551) (= (_1!29555 (h!57634 lt!1787551)) key!4968)))))

(assert (=> d!1458302 (noDuplicateKeys!1519 lt!1787551)))

(assert (=> d!1458302 (= (getPair!311 lt!1787551 key!4968) lt!1787708)))

(declare-fun b!4628600 () Bool)

(assert (=> b!4628600 (= e!2887320 None!11624)))

(declare-fun b!4628601 () Bool)

(assert (=> b!4628601 (= e!2887321 e!2887320)))

(declare-fun c!792278 () Bool)

(assert (=> b!4628601 (= c!792278 (is-Cons!51572 lt!1787551))))

(assert (= (and d!1458302 c!792277) b!4628595))

(assert (= (and d!1458302 (not c!792277)) b!4628601))

(assert (= (and b!4628601 c!792278) b!4628599))

(assert (= (and b!4628601 (not c!792278)) b!4628600))

(assert (= (and d!1458302 res!1941521) b!4628594))

(assert (= (and d!1458302 (not res!1941519)) b!4628596))

(assert (= (and b!4628596 res!1941520) b!4628597))

(assert (= (and b!4628597 res!1941518) b!4628598))

(declare-fun m!5474355 () Bool)

(assert (=> d!1458302 m!5474355))

(declare-fun m!5474357 () Bool)

(assert (=> d!1458302 m!5474357))

(declare-fun m!5474359 () Bool)

(assert (=> b!4628596 m!5474359))

(declare-fun m!5474361 () Bool)

(assert (=> b!4628598 m!5474361))

(assert (=> b!4628598 m!5474361))

(declare-fun m!5474363 () Bool)

(assert (=> b!4628598 m!5474363))

(declare-fun m!5474365 () Bool)

(assert (=> b!4628599 m!5474365))

(assert (=> b!4628597 m!5474361))

(declare-fun m!5474367 () Bool)

(assert (=> b!4628594 m!5474367))

(assert (=> b!4628460 d!1458302))

(declare-fun d!1458304 () Bool)

(declare-fun e!2887329 () Bool)

(assert (=> d!1458304 e!2887329))

(declare-fun res!1941524 () Bool)

(assert (=> d!1458304 (=> res!1941524 e!2887329)))

(declare-fun lt!1787718 () Bool)

(assert (=> d!1458304 (= res!1941524 (not lt!1787718))))

(declare-fun lt!1787719 () Bool)

(assert (=> d!1458304 (= lt!1787718 lt!1787719)))

(declare-fun lt!1787717 () Unit!112758)

(declare-fun e!2887330 () Unit!112758)

(assert (=> d!1458304 (= lt!1787717 e!2887330)))

(declare-fun c!792281 () Bool)

(assert (=> d!1458304 (= c!792281 lt!1787719)))

(declare-fun containsKey!2486 (List!51697 (_ BitVec 64)) Bool)

(assert (=> d!1458304 (= lt!1787719 (containsKey!2486 (toList!5004 lt!1787552) lt!1787570))))

(assert (=> d!1458304 (= (contains!14642 lt!1787552 lt!1787570) lt!1787718)))

(declare-fun b!4628608 () Bool)

(declare-fun lt!1787720 () Unit!112758)

(assert (=> b!4628608 (= e!2887330 lt!1787720)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1376 (List!51697 (_ BitVec 64)) Unit!112758)

(assert (=> b!4628608 (= lt!1787720 (lemmaContainsKeyImpliesGetValueByKeyDefined!1376 (toList!5004 lt!1787552) lt!1787570))))

(declare-datatypes ((Option!11628 0))(
  ( (None!11627) (Some!11627 (v!45779 List!51696)) )
))
(declare-fun isDefined!8893 (Option!11628) Bool)

(declare-fun getValueByKey!1474 (List!51697 (_ BitVec 64)) Option!11628)

(assert (=> b!4628608 (isDefined!8893 (getValueByKey!1474 (toList!5004 lt!1787552) lt!1787570))))

(declare-fun b!4628609 () Bool)

(declare-fun Unit!112764 () Unit!112758)

(assert (=> b!4628609 (= e!2887330 Unit!112764)))

(declare-fun b!4628610 () Bool)

(assert (=> b!4628610 (= e!2887329 (isDefined!8893 (getValueByKey!1474 (toList!5004 lt!1787552) lt!1787570)))))

(assert (= (and d!1458304 c!792281) b!4628608))

(assert (= (and d!1458304 (not c!792281)) b!4628609))

(assert (= (and d!1458304 (not res!1941524)) b!4628610))

(declare-fun m!5474369 () Bool)

(assert (=> d!1458304 m!5474369))

(declare-fun m!5474371 () Bool)

(assert (=> b!4628608 m!5474371))

(declare-fun m!5474373 () Bool)

(assert (=> b!4628608 m!5474373))

(assert (=> b!4628608 m!5474373))

(declare-fun m!5474375 () Bool)

(assert (=> b!4628608 m!5474375))

(assert (=> b!4628610 m!5474373))

(assert (=> b!4628610 m!5474373))

(assert (=> b!4628610 m!5474375))

(assert (=> b!4628460 d!1458304))

(declare-fun d!1458306 () Bool)

(declare-fun dynLambda!21509 (Int tuple2!52524) Bool)

(assert (=> d!1458306 (dynLambda!21509 lambda!192917 lt!1787575)))

(declare-fun lt!1787723 () Unit!112758)

(declare-fun choose!31410 (List!51697 Int tuple2!52524) Unit!112758)

(assert (=> d!1458306 (= lt!1787723 (choose!31410 lt!1787547 lambda!192917 lt!1787575))))

(declare-fun e!2887333 () Bool)

(assert (=> d!1458306 e!2887333))

(declare-fun res!1941527 () Bool)

(assert (=> d!1458306 (=> (not res!1941527) (not e!2887333))))

(assert (=> d!1458306 (= res!1941527 (forall!10846 lt!1787547 lambda!192917))))

(assert (=> d!1458306 (= (forallContained!3075 lt!1787547 lambda!192917 lt!1787575) lt!1787723)))

(declare-fun b!4628613 () Bool)

(assert (=> b!4628613 (= e!2887333 (contains!14641 lt!1787547 lt!1787575))))

(assert (= (and d!1458306 res!1941527) b!4628613))

(declare-fun b_lambda!170821 () Bool)

(assert (=> (not b_lambda!170821) (not d!1458306)))

(declare-fun m!5474377 () Bool)

(assert (=> d!1458306 m!5474377))

(declare-fun m!5474379 () Bool)

(assert (=> d!1458306 m!5474379))

(declare-fun m!5474381 () Bool)

(assert (=> d!1458306 m!5474381))

(assert (=> b!4628613 m!5474105))

(assert (=> b!4628460 d!1458306))

(declare-fun d!1458308 () Bool)

(declare-fun res!1941528 () Bool)

(declare-fun e!2887334 () Bool)

(assert (=> d!1458308 (=> res!1941528 e!2887334)))

(assert (=> d!1458308 (= res!1941528 (and (is-Cons!51572 oldBucket!40) (= (_1!29555 (h!57634 oldBucket!40)) key!4968)))))

(assert (=> d!1458308 (= (containsKey!2483 oldBucket!40 key!4968) e!2887334)))

(declare-fun b!4628614 () Bool)

(declare-fun e!2887335 () Bool)

(assert (=> b!4628614 (= e!2887334 e!2887335)))

(declare-fun res!1941529 () Bool)

(assert (=> b!4628614 (=> (not res!1941529) (not e!2887335))))

(assert (=> b!4628614 (= res!1941529 (is-Cons!51572 oldBucket!40))))

(declare-fun b!4628615 () Bool)

(assert (=> b!4628615 (= e!2887335 (containsKey!2483 (t!358740 oldBucket!40) key!4968))))

(assert (= (and d!1458308 (not res!1941528)) b!4628614))

(assert (= (and b!4628614 res!1941529) b!4628615))

(assert (=> b!4628615 m!5474123))

(assert (=> b!4628460 d!1458308))

(declare-fun d!1458310 () Bool)

(assert (=> d!1458310 (contains!14641 (toList!5004 lt!1787552) (tuple2!52525 lt!1787570 lt!1787551))))

(declare-fun lt!1787726 () Unit!112758)

(declare-fun choose!31411 (ListLongMap!3593 (_ BitVec 64) List!51696) Unit!112758)

(assert (=> d!1458310 (= lt!1787726 (choose!31411 lt!1787552 lt!1787570 lt!1787551))))

(assert (=> d!1458310 (contains!14642 lt!1787552 lt!1787570)))

(assert (=> d!1458310 (= (lemmaGetValueImpliesTupleContained!116 lt!1787552 lt!1787570 lt!1787551) lt!1787726)))

(declare-fun bs!1025559 () Bool)

(assert (= bs!1025559 d!1458310))

(declare-fun m!5474383 () Bool)

(assert (=> bs!1025559 m!5474383))

(declare-fun m!5474385 () Bool)

(assert (=> bs!1025559 m!5474385))

(assert (=> bs!1025559 m!5474121))

(assert (=> b!4628460 d!1458310))

(declare-fun d!1458314 () Bool)

(declare-fun lt!1787729 () Bool)

(declare-fun content!8830 (List!51697) (Set tuple2!52524))

(assert (=> d!1458314 (= lt!1787729 (set.member lt!1787575 (content!8830 lt!1787547)))))

(declare-fun e!2887341 () Bool)

(assert (=> d!1458314 (= lt!1787729 e!2887341)))

(declare-fun res!1941535 () Bool)

(assert (=> d!1458314 (=> (not res!1941535) (not e!2887341))))

(assert (=> d!1458314 (= res!1941535 (is-Cons!51573 lt!1787547))))

(assert (=> d!1458314 (= (contains!14641 lt!1787547 lt!1787575) lt!1787729)))

(declare-fun b!4628621 () Bool)

(declare-fun e!2887340 () Bool)

(assert (=> b!4628621 (= e!2887341 e!2887340)))

(declare-fun res!1941534 () Bool)

(assert (=> b!4628621 (=> res!1941534 e!2887340)))

(assert (=> b!4628621 (= res!1941534 (= (h!57635 lt!1787547) lt!1787575))))

(declare-fun b!4628622 () Bool)

(assert (=> b!4628622 (= e!2887340 (contains!14641 (t!358741 lt!1787547) lt!1787575))))

(assert (= (and d!1458314 res!1941535) b!4628621))

(assert (= (and b!4628621 (not res!1941534)) b!4628622))

(declare-fun m!5474387 () Bool)

(assert (=> d!1458314 m!5474387))

(declare-fun m!5474389 () Bool)

(assert (=> d!1458314 m!5474389))

(declare-fun m!5474391 () Bool)

(assert (=> b!4628622 m!5474391))

(assert (=> b!4628460 d!1458314))

(declare-fun bs!1025560 () Bool)

(declare-fun d!1458316 () Bool)

(assert (= bs!1025560 (and d!1458316 b!4628460)))

(declare-fun lambda!192936 () Int)

(assert (=> bs!1025560 (= lambda!192936 lambda!192917)))

(declare-fun bs!1025561 () Bool)

(assert (= bs!1025561 (and d!1458316 d!1458292)))

(assert (=> bs!1025561 (= lambda!192936 lambda!192926)))

(declare-fun bs!1025562 () Bool)

(assert (= bs!1025562 (and d!1458316 d!1458298)))

(assert (=> bs!1025562 (= lambda!192936 lambda!192929)))

(declare-fun lt!1787768 () List!51696)

(declare-fun b!4628652 () Bool)

(declare-fun lt!1787764 () (_ BitVec 64))

(declare-fun e!2887358 () Bool)

(assert (=> b!4628652 (= e!2887358 (= (getValueByKey!1474 (toList!5004 lt!1787552) lt!1787764) (Some!11627 lt!1787768)))))

(declare-fun b!4628650 () Bool)

(declare-fun res!1941553 () Bool)

(declare-fun e!2887359 () Bool)

(assert (=> b!4628650 (=> (not res!1941553) (not e!2887359))))

(assert (=> b!4628650 (= res!1941553 (contains!14640 (extractMap!1575 (toList!5004 lt!1787552)) key!4968))))

(declare-fun b!4628651 () Bool)

(assert (=> b!4628651 (= e!2887359 (isDefined!8890 (getPair!311 (apply!12184 lt!1787552 (hash!3536 hashF!1389 key!4968)) key!4968)))))

(declare-fun lt!1787762 () Unit!112758)

(assert (=> b!4628651 (= lt!1787762 (forallContained!3075 (toList!5004 lt!1787552) lambda!192936 (tuple2!52525 (hash!3536 hashF!1389 key!4968) (apply!12184 lt!1787552 (hash!3536 hashF!1389 key!4968)))))))

(declare-fun lt!1787765 () Unit!112758)

(declare-fun lt!1787769 () Unit!112758)

(assert (=> b!4628651 (= lt!1787765 lt!1787769)))

(assert (=> b!4628651 (contains!14641 (toList!5004 lt!1787552) (tuple2!52525 lt!1787764 lt!1787768))))

(assert (=> b!4628651 (= lt!1787769 (lemmaGetValueImpliesTupleContained!116 lt!1787552 lt!1787764 lt!1787768))))

(assert (=> b!4628651 e!2887358))

(declare-fun res!1941550 () Bool)

(assert (=> b!4628651 (=> (not res!1941550) (not e!2887358))))

(assert (=> b!4628651 (= res!1941550 (contains!14642 lt!1787552 lt!1787764))))

(assert (=> b!4628651 (= lt!1787768 (apply!12184 lt!1787552 (hash!3536 hashF!1389 key!4968)))))

(assert (=> b!4628651 (= lt!1787764 (hash!3536 hashF!1389 key!4968))))

(declare-fun lt!1787767 () Unit!112758)

(declare-fun lt!1787763 () Unit!112758)

(assert (=> b!4628651 (= lt!1787767 lt!1787763)))

(assert (=> b!4628651 (contains!14642 lt!1787552 (hash!3536 hashF!1389 key!4968))))

(assert (=> b!4628651 (= lt!1787763 (lemmaInGenMapThenLongMapContainsHash!517 lt!1787552 key!4968 hashF!1389))))

(assert (=> d!1458316 e!2887359))

(declare-fun res!1941551 () Bool)

(assert (=> d!1458316 (=> (not res!1941551) (not e!2887359))))

(assert (=> d!1458316 (= res!1941551 (forall!10846 (toList!5004 lt!1787552) lambda!192936))))

(declare-fun lt!1787766 () Unit!112758)

(declare-fun choose!31412 (ListLongMap!3593 K!12948 Hashable!5916) Unit!112758)

(assert (=> d!1458316 (= lt!1787766 (choose!31412 lt!1787552 key!4968 hashF!1389))))

(assert (=> d!1458316 (forall!10846 (toList!5004 lt!1787552) lambda!192936)))

(assert (=> d!1458316 (= (lemmaInGenMapThenGetPairDefined!107 lt!1787552 key!4968 hashF!1389) lt!1787766)))

(declare-fun b!4628649 () Bool)

(declare-fun res!1941552 () Bool)

(assert (=> b!4628649 (=> (not res!1941552) (not e!2887359))))

(declare-fun allKeysSameHashInMap!1541 (ListLongMap!3593 Hashable!5916) Bool)

(assert (=> b!4628649 (= res!1941552 (allKeysSameHashInMap!1541 lt!1787552 hashF!1389))))

(assert (= (and d!1458316 res!1941551) b!4628649))

(assert (= (and b!4628649 res!1941552) b!4628650))

(assert (= (and b!4628650 res!1941553) b!4628651))

(assert (= (and b!4628651 res!1941550) b!4628652))

(declare-fun m!5474393 () Bool)

(assert (=> d!1458316 m!5474393))

(declare-fun m!5474395 () Bool)

(assert (=> d!1458316 m!5474395))

(assert (=> d!1458316 m!5474393))

(declare-fun m!5474397 () Bool)

(assert (=> b!4628650 m!5474397))

(assert (=> b!4628650 m!5474397))

(declare-fun m!5474399 () Bool)

(assert (=> b!4628650 m!5474399))

(declare-fun m!5474401 () Bool)

(assert (=> b!4628652 m!5474401))

(declare-fun m!5474403 () Bool)

(assert (=> b!4628649 m!5474403))

(assert (=> b!4628651 m!5474125))

(assert (=> b!4628651 m!5474177))

(declare-fun m!5474405 () Bool)

(assert (=> b!4628651 m!5474405))

(declare-fun m!5474407 () Bool)

(assert (=> b!4628651 m!5474407))

(declare-fun m!5474409 () Bool)

(assert (=> b!4628651 m!5474409))

(assert (=> b!4628651 m!5474177))

(declare-fun m!5474411 () Bool)

(assert (=> b!4628651 m!5474411))

(declare-fun m!5474413 () Bool)

(assert (=> b!4628651 m!5474413))

(declare-fun m!5474415 () Bool)

(assert (=> b!4628651 m!5474415))

(assert (=> b!4628651 m!5474177))

(assert (=> b!4628651 m!5474347))

(assert (=> b!4628651 m!5474411))

(assert (=> b!4628651 m!5474407))

(declare-fun m!5474417 () Bool)

(assert (=> b!4628651 m!5474417))

(assert (=> b!4628460 d!1458316))

(declare-fun d!1458318 () Bool)

(declare-fun get!17107 (Option!11628) List!51696)

(assert (=> d!1458318 (= (apply!12184 lt!1787552 lt!1787570) (get!17107 (getValueByKey!1474 (toList!5004 lt!1787552) lt!1787570)))))

(declare-fun bs!1025563 () Bool)

(assert (= bs!1025563 d!1458318))

(assert (=> bs!1025563 m!5474373))

(assert (=> bs!1025563 m!5474373))

(declare-fun m!5474419 () Bool)

(assert (=> bs!1025563 m!5474419))

(assert (=> b!4628460 d!1458318))

(declare-fun d!1458320 () Bool)

(declare-fun content!8831 (List!51696) (Set tuple2!52522))

(assert (=> d!1458320 (= (eq!834 lt!1787548 (+!1885 lt!1787559 lt!1787574)) (= (content!8831 (toList!5003 lt!1787548)) (content!8831 (toList!5003 (+!1885 lt!1787559 lt!1787574)))))))

(declare-fun bs!1025564 () Bool)

(assert (= bs!1025564 d!1458320))

(declare-fun m!5474421 () Bool)

(assert (=> bs!1025564 m!5474421))

(declare-fun m!5474423 () Bool)

(assert (=> bs!1025564 m!5474423))

(assert (=> b!4628461 d!1458320))

(declare-fun d!1458322 () Bool)

(declare-fun e!2887368 () Bool)

(assert (=> d!1458322 e!2887368))

(declare-fun res!1941561 () Bool)

(assert (=> d!1458322 (=> (not res!1941561) (not e!2887368))))

(declare-fun lt!1787787 () ListMap!4307)

(assert (=> d!1458322 (= res!1941561 (contains!14640 lt!1787787 (_1!29555 lt!1787574)))))

(declare-fun lt!1787786 () List!51696)

(assert (=> d!1458322 (= lt!1787787 (ListMap!4308 lt!1787786))))

(declare-fun lt!1787788 () Unit!112758)

(declare-fun lt!1787789 () Unit!112758)

(assert (=> d!1458322 (= lt!1787788 lt!1787789)))

(assert (=> d!1458322 (= (getValueByKey!1473 lt!1787786 (_1!29555 lt!1787574)) (Some!11626 (_2!29555 lt!1787574)))))

(declare-fun lemmaContainsTupThenGetReturnValue!859 (List!51696 K!12948 V!13194) Unit!112758)

(assert (=> d!1458322 (= lt!1787789 (lemmaContainsTupThenGetReturnValue!859 lt!1787786 (_1!29555 lt!1787574) (_2!29555 lt!1787574)))))

(declare-fun insertNoDuplicatedKeys!367 (List!51696 K!12948 V!13194) List!51696)

(assert (=> d!1458322 (= lt!1787786 (insertNoDuplicatedKeys!367 (toList!5003 lt!1787559) (_1!29555 lt!1787574) (_2!29555 lt!1787574)))))

(assert (=> d!1458322 (= (+!1885 lt!1787559 lt!1787574) lt!1787787)))

(declare-fun b!4628666 () Bool)

(declare-fun res!1941562 () Bool)

(assert (=> b!4628666 (=> (not res!1941562) (not e!2887368))))

(assert (=> b!4628666 (= res!1941562 (= (getValueByKey!1473 (toList!5003 lt!1787787) (_1!29555 lt!1787574)) (Some!11626 (_2!29555 lt!1787574))))))

(declare-fun b!4628667 () Bool)

(assert (=> b!4628667 (= e!2887368 (contains!14647 (toList!5003 lt!1787787) lt!1787574))))

(assert (= (and d!1458322 res!1941561) b!4628666))

(assert (= (and b!4628666 res!1941562) b!4628667))

(declare-fun m!5474445 () Bool)

(assert (=> d!1458322 m!5474445))

(declare-fun m!5474447 () Bool)

(assert (=> d!1458322 m!5474447))

(declare-fun m!5474449 () Bool)

(assert (=> d!1458322 m!5474449))

(declare-fun m!5474451 () Bool)

(assert (=> d!1458322 m!5474451))

(declare-fun m!5474453 () Bool)

(assert (=> b!4628666 m!5474453))

(declare-fun m!5474455 () Bool)

(assert (=> b!4628667 m!5474455))

(assert (=> b!4628461 d!1458322))

(declare-fun bs!1025565 () Bool)

(declare-fun d!1458326 () Bool)

(assert (= bs!1025565 (and d!1458326 b!4628460)))

(declare-fun lambda!192937 () Int)

(assert (=> bs!1025565 (= lambda!192937 lambda!192917)))

(declare-fun bs!1025566 () Bool)

(assert (= bs!1025566 (and d!1458326 d!1458292)))

(assert (=> bs!1025566 (= lambda!192937 lambda!192926)))

(declare-fun bs!1025567 () Bool)

(assert (= bs!1025567 (and d!1458326 d!1458298)))

(assert (=> bs!1025567 (= lambda!192937 lambda!192929)))

(declare-fun bs!1025568 () Bool)

(assert (= bs!1025568 (and d!1458326 d!1458316)))

(assert (=> bs!1025568 (= lambda!192937 lambda!192936)))

(declare-fun lt!1787790 () ListMap!4307)

(assert (=> d!1458326 (invariantList!1215 (toList!5003 lt!1787790))))

(declare-fun e!2887369 () ListMap!4307)

(assert (=> d!1458326 (= lt!1787790 e!2887369)))

(declare-fun c!792291 () Bool)

(assert (=> d!1458326 (= c!792291 (is-Cons!51573 (Cons!51573 (tuple2!52525 hash!414 lt!1787568) Nil!51573)))))

(assert (=> d!1458326 (forall!10846 (Cons!51573 (tuple2!52525 hash!414 lt!1787568) Nil!51573) lambda!192937)))

(assert (=> d!1458326 (= (extractMap!1575 (Cons!51573 (tuple2!52525 hash!414 lt!1787568) Nil!51573)) lt!1787790)))

(declare-fun b!4628668 () Bool)

(assert (=> b!4628668 (= e!2887369 (addToMapMapFromBucket!980 (_2!29556 (h!57635 (Cons!51573 (tuple2!52525 hash!414 lt!1787568) Nil!51573))) (extractMap!1575 (t!358741 (Cons!51573 (tuple2!52525 hash!414 lt!1787568) Nil!51573)))))))

(declare-fun b!4628669 () Bool)

(assert (=> b!4628669 (= e!2887369 (ListMap!4308 Nil!51572))))

(assert (= (and d!1458326 c!792291) b!4628668))

(assert (= (and d!1458326 (not c!792291)) b!4628669))

(declare-fun m!5474457 () Bool)

(assert (=> d!1458326 m!5474457))

(declare-fun m!5474459 () Bool)

(assert (=> d!1458326 m!5474459))

(declare-fun m!5474461 () Bool)

(assert (=> b!4628668 m!5474461))

(assert (=> b!4628668 m!5474461))

(declare-fun m!5474463 () Bool)

(assert (=> b!4628668 m!5474463))

(assert (=> b!4628461 d!1458326))

(declare-fun bs!1025569 () Bool)

(declare-fun d!1458328 () Bool)

(assert (= bs!1025569 (and d!1458328 d!1458316)))

(declare-fun lambda!192938 () Int)

(assert (=> bs!1025569 (= lambda!192938 lambda!192936)))

(declare-fun bs!1025570 () Bool)

(assert (= bs!1025570 (and d!1458328 d!1458292)))

(assert (=> bs!1025570 (= lambda!192938 lambda!192926)))

(declare-fun bs!1025571 () Bool)

(assert (= bs!1025571 (and d!1458328 b!4628460)))

(assert (=> bs!1025571 (= lambda!192938 lambda!192917)))

(declare-fun bs!1025572 () Bool)

(assert (= bs!1025572 (and d!1458328 d!1458298)))

(assert (=> bs!1025572 (= lambda!192938 lambda!192929)))

(declare-fun bs!1025573 () Bool)

(assert (= bs!1025573 (and d!1458328 d!1458326)))

(assert (=> bs!1025573 (= lambda!192938 lambda!192937)))

(declare-fun lt!1787791 () ListMap!4307)

(assert (=> d!1458328 (invariantList!1215 (toList!5003 lt!1787791))))

(declare-fun e!2887370 () ListMap!4307)

(assert (=> d!1458328 (= lt!1787791 e!2887370)))

(declare-fun c!792292 () Bool)

(assert (=> d!1458328 (= c!792292 (is-Cons!51573 (Cons!51573 (tuple2!52525 hash!414 newBucket!224) Nil!51573)))))

(assert (=> d!1458328 (forall!10846 (Cons!51573 (tuple2!52525 hash!414 newBucket!224) Nil!51573) lambda!192938)))

(assert (=> d!1458328 (= (extractMap!1575 (Cons!51573 (tuple2!52525 hash!414 newBucket!224) Nil!51573)) lt!1787791)))

(declare-fun b!4628670 () Bool)

(assert (=> b!4628670 (= e!2887370 (addToMapMapFromBucket!980 (_2!29556 (h!57635 (Cons!51573 (tuple2!52525 hash!414 newBucket!224) Nil!51573))) (extractMap!1575 (t!358741 (Cons!51573 (tuple2!52525 hash!414 newBucket!224) Nil!51573)))))))

(declare-fun b!4628671 () Bool)

(assert (=> b!4628671 (= e!2887370 (ListMap!4308 Nil!51572))))

(assert (= (and d!1458328 c!792292) b!4628670))

(assert (= (and d!1458328 (not c!792292)) b!4628671))

(declare-fun m!5474465 () Bool)

(assert (=> d!1458328 m!5474465))

(declare-fun m!5474467 () Bool)

(assert (=> d!1458328 m!5474467))

(declare-fun m!5474469 () Bool)

(assert (=> b!4628670 m!5474469))

(assert (=> b!4628670 m!5474469))

(declare-fun m!5474471 () Bool)

(assert (=> b!4628670 m!5474471))

(assert (=> b!4628461 d!1458328))

(declare-fun b!4628675 () Bool)

(declare-fun e!2887372 () List!51696)

(assert (=> b!4628675 (= e!2887372 Nil!51572)))

(declare-fun b!4628672 () Bool)

(declare-fun e!2887371 () List!51696)

(assert (=> b!4628672 (= e!2887371 (t!358740 oldBucket!40))))

(declare-fun d!1458330 () Bool)

(declare-fun lt!1787792 () List!51696)

(assert (=> d!1458330 (not (containsKey!2483 lt!1787792 key!4968))))

(assert (=> d!1458330 (= lt!1787792 e!2887371)))

(declare-fun c!792294 () Bool)

(assert (=> d!1458330 (= c!792294 (and (is-Cons!51572 oldBucket!40) (= (_1!29555 (h!57634 oldBucket!40)) key!4968)))))

(assert (=> d!1458330 (noDuplicateKeys!1519 oldBucket!40)))

(assert (=> d!1458330 (= (removePairForKey!1142 oldBucket!40 key!4968) lt!1787792)))

(declare-fun b!4628673 () Bool)

(assert (=> b!4628673 (= e!2887371 e!2887372)))

(declare-fun c!792293 () Bool)

(assert (=> b!4628673 (= c!792293 (is-Cons!51572 oldBucket!40))))

(declare-fun b!4628674 () Bool)

(assert (=> b!4628674 (= e!2887372 (Cons!51572 (h!57634 oldBucket!40) (removePairForKey!1142 (t!358740 oldBucket!40) key!4968)))))

(assert (= (and d!1458330 c!792294) b!4628672))

(assert (= (and d!1458330 (not c!792294)) b!4628673))

(assert (= (and b!4628673 c!792293) b!4628674))

(assert (= (and b!4628673 (not c!792293)) b!4628675))

(declare-fun m!5474473 () Bool)

(assert (=> d!1458330 m!5474473))

(assert (=> d!1458330 m!5474067))

(assert (=> b!4628674 m!5474103))

(assert (=> b!4628462 d!1458330))

(declare-fun bs!1025574 () Bool)

(declare-fun d!1458332 () Bool)

(assert (= bs!1025574 (and d!1458332 d!1458282)))

(declare-fun lambda!192939 () Int)

(assert (=> bs!1025574 (= lambda!192939 lambda!192923)))

(assert (=> d!1458332 true))

(assert (=> d!1458332 true))

(assert (=> d!1458332 (= (allKeysSameHash!1373 newBucket!224 hash!414 hashF!1389) (forall!10845 newBucket!224 lambda!192939))))

(declare-fun bs!1025575 () Bool)

(assert (= bs!1025575 d!1458332))

(declare-fun m!5474475 () Bool)

(assert (=> bs!1025575 m!5474475))

(assert (=> b!4628452 d!1458332))

(declare-fun d!1458334 () Bool)

(assert (=> d!1458334 (= (eq!834 (addToMapMapFromBucket!980 (Cons!51572 lt!1787574 lt!1787568) (ListMap!4308 Nil!51572)) (+!1885 (addToMapMapFromBucket!980 lt!1787568 (ListMap!4308 Nil!51572)) lt!1787574)) (= (content!8831 (toList!5003 (addToMapMapFromBucket!980 (Cons!51572 lt!1787574 lt!1787568) (ListMap!4308 Nil!51572)))) (content!8831 (toList!5003 (+!1885 (addToMapMapFromBucket!980 lt!1787568 (ListMap!4308 Nil!51572)) lt!1787574)))))))

(declare-fun bs!1025576 () Bool)

(assert (= bs!1025576 d!1458334))

(declare-fun m!5474477 () Bool)

(assert (=> bs!1025576 m!5474477))

(declare-fun m!5474479 () Bool)

(assert (=> bs!1025576 m!5474479))

(assert (=> b!4628463 d!1458334))

(declare-fun bs!1025577 () Bool)

(declare-fun b!4628689 () Bool)

(assert (= bs!1025577 (and b!4628689 d!1458282)))

(declare-fun lambda!192968 () Int)

(assert (=> bs!1025577 (not (= lambda!192968 lambda!192923))))

(declare-fun bs!1025578 () Bool)

(assert (= bs!1025578 (and b!4628689 d!1458332)))

(assert (=> bs!1025578 (not (= lambda!192968 lambda!192939))))

(assert (=> b!4628689 true))

(declare-fun bs!1025579 () Bool)

(declare-fun b!4628686 () Bool)

(assert (= bs!1025579 (and b!4628686 d!1458282)))

(declare-fun lambda!192969 () Int)

(assert (=> bs!1025579 (not (= lambda!192969 lambda!192923))))

(declare-fun bs!1025580 () Bool)

(assert (= bs!1025580 (and b!4628686 d!1458332)))

(assert (=> bs!1025580 (not (= lambda!192969 lambda!192939))))

(declare-fun bs!1025581 () Bool)

(assert (= bs!1025581 (and b!4628686 b!4628689)))

(assert (=> bs!1025581 (= lambda!192969 lambda!192968)))

(assert (=> b!4628686 true))

(declare-fun lambda!192970 () Int)

(assert (=> bs!1025579 (not (= lambda!192970 lambda!192923))))

(assert (=> bs!1025580 (not (= lambda!192970 lambda!192939))))

(declare-fun lt!1787848 () ListMap!4307)

(assert (=> bs!1025581 (= (= lt!1787848 (ListMap!4308 Nil!51572)) (= lambda!192970 lambda!192968))))

(assert (=> b!4628686 (= (= lt!1787848 (ListMap!4308 Nil!51572)) (= lambda!192970 lambda!192969))))

(assert (=> b!4628686 true))

(declare-fun bs!1025582 () Bool)

(declare-fun d!1458336 () Bool)

(assert (= bs!1025582 (and d!1458336 d!1458282)))

(declare-fun lambda!192971 () Int)

(assert (=> bs!1025582 (not (= lambda!192971 lambda!192923))))

(declare-fun bs!1025583 () Bool)

(assert (= bs!1025583 (and d!1458336 b!4628689)))

(declare-fun lt!1787849 () ListMap!4307)

(assert (=> bs!1025583 (= (= lt!1787849 (ListMap!4308 Nil!51572)) (= lambda!192971 lambda!192968))))

(declare-fun bs!1025584 () Bool)

(assert (= bs!1025584 (and d!1458336 b!4628686)))

(assert (=> bs!1025584 (= (= lt!1787849 lt!1787848) (= lambda!192971 lambda!192970))))

(assert (=> bs!1025584 (= (= lt!1787849 (ListMap!4308 Nil!51572)) (= lambda!192971 lambda!192969))))

(declare-fun bs!1025585 () Bool)

(assert (= bs!1025585 (and d!1458336 d!1458332)))

(assert (=> bs!1025585 (not (= lambda!192971 lambda!192939))))

(assert (=> d!1458336 true))

(declare-fun bm!322909 () Bool)

(declare-fun call!322915 () Unit!112758)

(declare-fun lemmaContainsAllItsOwnKeys!517 (ListMap!4307) Unit!112758)

(assert (=> bm!322909 (= call!322915 (lemmaContainsAllItsOwnKeys!517 (ListMap!4308 Nil!51572)))))

(declare-fun e!2887381 () ListMap!4307)

(assert (=> b!4628686 (= e!2887381 lt!1787848)))

(declare-fun lt!1787843 () ListMap!4307)

(assert (=> b!4628686 (= lt!1787843 (+!1885 (ListMap!4308 Nil!51572) (h!57634 (Cons!51572 lt!1787553 lt!1787554))))))

(assert (=> b!4628686 (= lt!1787848 (addToMapMapFromBucket!980 (t!358740 (Cons!51572 lt!1787553 lt!1787554)) (+!1885 (ListMap!4308 Nil!51572) (h!57634 (Cons!51572 lt!1787553 lt!1787554)))))))

(declare-fun lt!1787835 () Unit!112758)

(assert (=> b!4628686 (= lt!1787835 call!322915)))

(declare-fun call!322914 () Bool)

(assert (=> b!4628686 call!322914))

(declare-fun lt!1787840 () Unit!112758)

(assert (=> b!4628686 (= lt!1787840 lt!1787835)))

(assert (=> b!4628686 (forall!10845 (toList!5003 lt!1787843) lambda!192970)))

(declare-fun lt!1787853 () Unit!112758)

(declare-fun Unit!112765 () Unit!112758)

(assert (=> b!4628686 (= lt!1787853 Unit!112765)))

(assert (=> b!4628686 (forall!10845 (t!358740 (Cons!51572 lt!1787553 lt!1787554)) lambda!192970)))

(declare-fun lt!1787837 () Unit!112758)

(declare-fun Unit!112766 () Unit!112758)

(assert (=> b!4628686 (= lt!1787837 Unit!112766)))

(declare-fun lt!1787850 () Unit!112758)

(declare-fun Unit!112767 () Unit!112758)

(assert (=> b!4628686 (= lt!1787850 Unit!112767)))

(declare-fun lt!1787844 () Unit!112758)

(declare-fun forallContained!3077 (List!51696 Int tuple2!52522) Unit!112758)

(assert (=> b!4628686 (= lt!1787844 (forallContained!3077 (toList!5003 lt!1787843) lambda!192970 (h!57634 (Cons!51572 lt!1787553 lt!1787554))))))

(assert (=> b!4628686 (contains!14640 lt!1787843 (_1!29555 (h!57634 (Cons!51572 lt!1787553 lt!1787554))))))

(declare-fun lt!1787847 () Unit!112758)

(declare-fun Unit!112768 () Unit!112758)

(assert (=> b!4628686 (= lt!1787847 Unit!112768)))

(assert (=> b!4628686 (contains!14640 lt!1787848 (_1!29555 (h!57634 (Cons!51572 lt!1787553 lt!1787554))))))

(declare-fun lt!1787855 () Unit!112758)

(declare-fun Unit!112769 () Unit!112758)

(assert (=> b!4628686 (= lt!1787855 Unit!112769)))

(assert (=> b!4628686 (forall!10845 (Cons!51572 lt!1787553 lt!1787554) lambda!192970)))

(declare-fun lt!1787839 () Unit!112758)

(declare-fun Unit!112770 () Unit!112758)

(assert (=> b!4628686 (= lt!1787839 Unit!112770)))

(declare-fun call!322916 () Bool)

(assert (=> b!4628686 call!322916))

(declare-fun lt!1787842 () Unit!112758)

(declare-fun Unit!112771 () Unit!112758)

(assert (=> b!4628686 (= lt!1787842 Unit!112771)))

(declare-fun lt!1787854 () Unit!112758)

(declare-fun Unit!112772 () Unit!112758)

(assert (=> b!4628686 (= lt!1787854 Unit!112772)))

(declare-fun lt!1787838 () Unit!112758)

(declare-fun addForallContainsKeyThenBeforeAdding!516 (ListMap!4307 ListMap!4307 K!12948 V!13194) Unit!112758)

(assert (=> b!4628686 (= lt!1787838 (addForallContainsKeyThenBeforeAdding!516 (ListMap!4308 Nil!51572) lt!1787848 (_1!29555 (h!57634 (Cons!51572 lt!1787553 lt!1787554))) (_2!29555 (h!57634 (Cons!51572 lt!1787553 lt!1787554)))))))

(assert (=> b!4628686 (forall!10845 (toList!5003 (ListMap!4308 Nil!51572)) lambda!192970)))

(declare-fun lt!1787841 () Unit!112758)

(assert (=> b!4628686 (= lt!1787841 lt!1787838)))

(assert (=> b!4628686 (forall!10845 (toList!5003 (ListMap!4308 Nil!51572)) lambda!192970)))

(declare-fun lt!1787852 () Unit!112758)

(declare-fun Unit!112773 () Unit!112758)

(assert (=> b!4628686 (= lt!1787852 Unit!112773)))

(declare-fun res!1941569 () Bool)

(assert (=> b!4628686 (= res!1941569 (forall!10845 (Cons!51572 lt!1787553 lt!1787554) lambda!192970))))

(declare-fun e!2887379 () Bool)

(assert (=> b!4628686 (=> (not res!1941569) (not e!2887379))))

(assert (=> b!4628686 e!2887379))

(declare-fun lt!1787836 () Unit!112758)

(declare-fun Unit!112774 () Unit!112758)

(assert (=> b!4628686 (= lt!1787836 Unit!112774)))

(declare-fun b!4628687 () Bool)

(declare-fun e!2887380 () Bool)

(assert (=> b!4628687 (= e!2887380 (invariantList!1215 (toList!5003 lt!1787849)))))

(assert (=> d!1458336 e!2887380))

(declare-fun res!1941570 () Bool)

(assert (=> d!1458336 (=> (not res!1941570) (not e!2887380))))

(assert (=> d!1458336 (= res!1941570 (forall!10845 (Cons!51572 lt!1787553 lt!1787554) lambda!192971))))

(assert (=> d!1458336 (= lt!1787849 e!2887381)))

(declare-fun c!792297 () Bool)

(assert (=> d!1458336 (= c!792297 (is-Nil!51572 (Cons!51572 lt!1787553 lt!1787554)))))

(assert (=> d!1458336 (noDuplicateKeys!1519 (Cons!51572 lt!1787553 lt!1787554))))

(assert (=> d!1458336 (= (addToMapMapFromBucket!980 (Cons!51572 lt!1787553 lt!1787554) (ListMap!4308 Nil!51572)) lt!1787849)))

(declare-fun bm!322910 () Bool)

(assert (=> bm!322910 (= call!322916 (forall!10845 (ite c!792297 (toList!5003 (ListMap!4308 Nil!51572)) (toList!5003 lt!1787843)) (ite c!792297 lambda!192968 lambda!192970)))))

(declare-fun bm!322911 () Bool)

(assert (=> bm!322911 (= call!322914 (forall!10845 (toList!5003 (ListMap!4308 Nil!51572)) (ite c!792297 lambda!192968 lambda!192969)))))

(declare-fun b!4628688 () Bool)

(assert (=> b!4628688 (= e!2887379 (forall!10845 (toList!5003 (ListMap!4308 Nil!51572)) lambda!192970))))

(assert (=> b!4628689 (= e!2887381 (ListMap!4308 Nil!51572))))

(declare-fun lt!1787846 () Unit!112758)

(assert (=> b!4628689 (= lt!1787846 call!322915)))

(assert (=> b!4628689 call!322914))

(declare-fun lt!1787851 () Unit!112758)

(assert (=> b!4628689 (= lt!1787851 lt!1787846)))

(assert (=> b!4628689 call!322916))

(declare-fun lt!1787845 () Unit!112758)

(declare-fun Unit!112775 () Unit!112758)

(assert (=> b!4628689 (= lt!1787845 Unit!112775)))

(declare-fun b!4628690 () Bool)

(declare-fun res!1941571 () Bool)

(assert (=> b!4628690 (=> (not res!1941571) (not e!2887380))))

(assert (=> b!4628690 (= res!1941571 (forall!10845 (toList!5003 (ListMap!4308 Nil!51572)) lambda!192971))))

(assert (= (and d!1458336 c!792297) b!4628689))

(assert (= (and d!1458336 (not c!792297)) b!4628686))

(assert (= (and b!4628686 res!1941569) b!4628688))

(assert (= (or b!4628689 b!4628686) bm!322909))

(assert (= (or b!4628689 b!4628686) bm!322910))

(assert (= (or b!4628689 b!4628686) bm!322911))

(assert (= (and d!1458336 res!1941570) b!4628690))

(assert (= (and b!4628690 res!1941571) b!4628687))

(declare-fun m!5474481 () Bool)

(assert (=> b!4628686 m!5474481))

(declare-fun m!5474483 () Bool)

(assert (=> b!4628686 m!5474483))

(declare-fun m!5474485 () Bool)

(assert (=> b!4628686 m!5474485))

(declare-fun m!5474487 () Bool)

(assert (=> b!4628686 m!5474487))

(declare-fun m!5474489 () Bool)

(assert (=> b!4628686 m!5474489))

(assert (=> b!4628686 m!5474481))

(assert (=> b!4628686 m!5474483))

(declare-fun m!5474491 () Bool)

(assert (=> b!4628686 m!5474491))

(declare-fun m!5474493 () Bool)

(assert (=> b!4628686 m!5474493))

(declare-fun m!5474495 () Bool)

(assert (=> b!4628686 m!5474495))

(declare-fun m!5474497 () Bool)

(assert (=> b!4628686 m!5474497))

(assert (=> b!4628686 m!5474485))

(declare-fun m!5474499 () Bool)

(assert (=> b!4628686 m!5474499))

(declare-fun m!5474501 () Bool)

(assert (=> bm!322910 m!5474501))

(assert (=> b!4628688 m!5474483))

(declare-fun m!5474503 () Bool)

(assert (=> d!1458336 m!5474503))

(declare-fun m!5474505 () Bool)

(assert (=> d!1458336 m!5474505))

(declare-fun m!5474507 () Bool)

(assert (=> b!4628690 m!5474507))

(declare-fun m!5474509 () Bool)

(assert (=> bm!322909 m!5474509))

(declare-fun m!5474511 () Bool)

(assert (=> bm!322911 m!5474511))

(declare-fun m!5474513 () Bool)

(assert (=> b!4628687 m!5474513))

(assert (=> b!4628463 d!1458336))

(declare-fun bs!1025586 () Bool)

(declare-fun d!1458338 () Bool)

(assert (= bs!1025586 (and d!1458338 d!1458316)))

(declare-fun lambda!192972 () Int)

(assert (=> bs!1025586 (= lambda!192972 lambda!192936)))

(declare-fun bs!1025587 () Bool)

(assert (= bs!1025587 (and d!1458338 d!1458292)))

(assert (=> bs!1025587 (= lambda!192972 lambda!192926)))

(declare-fun bs!1025588 () Bool)

(assert (= bs!1025588 (and d!1458338 b!4628460)))

(assert (=> bs!1025588 (= lambda!192972 lambda!192917)))

(declare-fun bs!1025589 () Bool)

(assert (= bs!1025589 (and d!1458338 d!1458298)))

(assert (=> bs!1025589 (= lambda!192972 lambda!192929)))

(declare-fun bs!1025590 () Bool)

(assert (= bs!1025590 (and d!1458338 d!1458326)))

(assert (=> bs!1025590 (= lambda!192972 lambda!192937)))

(declare-fun bs!1025591 () Bool)

(assert (= bs!1025591 (and d!1458338 d!1458328)))

(assert (=> bs!1025591 (= lambda!192972 lambda!192938)))

(declare-fun lt!1787856 () ListMap!4307)

(assert (=> d!1458338 (invariantList!1215 (toList!5003 lt!1787856))))

(declare-fun e!2887382 () ListMap!4307)

(assert (=> d!1458338 (= lt!1787856 e!2887382)))

(declare-fun c!792298 () Bool)

(assert (=> d!1458338 (= c!792298 (is-Cons!51573 lt!1787563))))

(assert (=> d!1458338 (forall!10846 lt!1787563 lambda!192972)))

(assert (=> d!1458338 (= (extractMap!1575 lt!1787563) lt!1787856)))

(declare-fun b!4628693 () Bool)

(assert (=> b!4628693 (= e!2887382 (addToMapMapFromBucket!980 (_2!29556 (h!57635 lt!1787563)) (extractMap!1575 (t!358741 lt!1787563))))))

(declare-fun b!4628694 () Bool)

(assert (=> b!4628694 (= e!2887382 (ListMap!4308 Nil!51572))))

(assert (= (and d!1458338 c!792298) b!4628693))

(assert (= (and d!1458338 (not c!792298)) b!4628694))

(declare-fun m!5474515 () Bool)

(assert (=> d!1458338 m!5474515))

(declare-fun m!5474517 () Bool)

(assert (=> d!1458338 m!5474517))

(declare-fun m!5474519 () Bool)

(assert (=> b!4628693 m!5474519))

(assert (=> b!4628693 m!5474519))

(declare-fun m!5474521 () Bool)

(assert (=> b!4628693 m!5474521))

(assert (=> b!4628463 d!1458338))

(declare-fun d!1458340 () Bool)

(declare-fun e!2887383 () Bool)

(assert (=> d!1458340 e!2887383))

(declare-fun res!1941572 () Bool)

(assert (=> d!1458340 (=> (not res!1941572) (not e!2887383))))

(declare-fun lt!1787858 () ListMap!4307)

(assert (=> d!1458340 (= res!1941572 (contains!14640 lt!1787858 (_1!29555 lt!1787574)))))

(declare-fun lt!1787857 () List!51696)

(assert (=> d!1458340 (= lt!1787858 (ListMap!4308 lt!1787857))))

(declare-fun lt!1787859 () Unit!112758)

(declare-fun lt!1787860 () Unit!112758)

(assert (=> d!1458340 (= lt!1787859 lt!1787860)))

(assert (=> d!1458340 (= (getValueByKey!1473 lt!1787857 (_1!29555 lt!1787574)) (Some!11626 (_2!29555 lt!1787574)))))

(assert (=> d!1458340 (= lt!1787860 (lemmaContainsTupThenGetReturnValue!859 lt!1787857 (_1!29555 lt!1787574) (_2!29555 lt!1787574)))))

(assert (=> d!1458340 (= lt!1787857 (insertNoDuplicatedKeys!367 (toList!5003 (addToMapMapFromBucket!980 lt!1787568 (ListMap!4308 Nil!51572))) (_1!29555 lt!1787574) (_2!29555 lt!1787574)))))

(assert (=> d!1458340 (= (+!1885 (addToMapMapFromBucket!980 lt!1787568 (ListMap!4308 Nil!51572)) lt!1787574) lt!1787858)))

(declare-fun b!4628695 () Bool)

(declare-fun res!1941573 () Bool)

(assert (=> b!4628695 (=> (not res!1941573) (not e!2887383))))

(assert (=> b!4628695 (= res!1941573 (= (getValueByKey!1473 (toList!5003 lt!1787858) (_1!29555 lt!1787574)) (Some!11626 (_2!29555 lt!1787574))))))

(declare-fun b!4628696 () Bool)

(assert (=> b!4628696 (= e!2887383 (contains!14647 (toList!5003 lt!1787858) lt!1787574))))

(assert (= (and d!1458340 res!1941572) b!4628695))

(assert (= (and b!4628695 res!1941573) b!4628696))

(declare-fun m!5474523 () Bool)

(assert (=> d!1458340 m!5474523))

(declare-fun m!5474525 () Bool)

(assert (=> d!1458340 m!5474525))

(declare-fun m!5474527 () Bool)

(assert (=> d!1458340 m!5474527))

(declare-fun m!5474529 () Bool)

(assert (=> d!1458340 m!5474529))

(declare-fun m!5474531 () Bool)

(assert (=> b!4628695 m!5474531))

(declare-fun m!5474533 () Bool)

(assert (=> b!4628696 m!5474533))

(assert (=> b!4628463 d!1458340))

(declare-fun bs!1025592 () Bool)

(declare-fun d!1458342 () Bool)

(assert (= bs!1025592 (and d!1458342 d!1458316)))

(declare-fun lambda!192987 () Int)

(assert (=> bs!1025592 (= lambda!192987 lambda!192936)))

(declare-fun bs!1025593 () Bool)

(assert (= bs!1025593 (and d!1458342 d!1458292)))

(assert (=> bs!1025593 (= lambda!192987 lambda!192926)))

(declare-fun bs!1025594 () Bool)

(assert (= bs!1025594 (and d!1458342 b!4628460)))

(assert (=> bs!1025594 (= lambda!192987 lambda!192917)))

(declare-fun bs!1025595 () Bool)

(assert (= bs!1025595 (and d!1458342 d!1458298)))

(assert (=> bs!1025595 (= lambda!192987 lambda!192929)))

(declare-fun bs!1025596 () Bool)

(assert (= bs!1025596 (and d!1458342 d!1458326)))

(assert (=> bs!1025596 (= lambda!192987 lambda!192937)))

(declare-fun bs!1025597 () Bool)

(assert (= bs!1025597 (and d!1458342 d!1458328)))

(assert (=> bs!1025597 (= lambda!192987 lambda!192938)))

(declare-fun bs!1025598 () Bool)

(assert (= bs!1025598 (and d!1458342 d!1458338)))

(assert (=> bs!1025598 (= lambda!192987 lambda!192972)))

(assert (=> d!1458342 (contains!14640 (extractMap!1575 (toList!5004 (ListLongMap!3594 lt!1787563))) key!4968)))

(declare-fun lt!1787887 () Unit!112758)

(declare-fun choose!31413 (ListLongMap!3593 K!12948 Hashable!5916) Unit!112758)

(assert (=> d!1458342 (= lt!1787887 (choose!31413 (ListLongMap!3594 lt!1787563) key!4968 hashF!1389))))

(assert (=> d!1458342 (forall!10846 (toList!5004 (ListLongMap!3594 lt!1787563)) lambda!192987)))

(assert (=> d!1458342 (= (lemmaListContainsThenExtractedMapContains!337 (ListLongMap!3594 lt!1787563) key!4968 hashF!1389) lt!1787887)))

(declare-fun bs!1025599 () Bool)

(assert (= bs!1025599 d!1458342))

(declare-fun m!5474535 () Bool)

(assert (=> bs!1025599 m!5474535))

(assert (=> bs!1025599 m!5474535))

(declare-fun m!5474537 () Bool)

(assert (=> bs!1025599 m!5474537))

(declare-fun m!5474539 () Bool)

(assert (=> bs!1025599 m!5474539))

(declare-fun m!5474541 () Bool)

(assert (=> bs!1025599 m!5474541))

(assert (=> b!4628463 d!1458342))

(declare-fun d!1458344 () Bool)

(assert (=> d!1458344 (eq!834 (addToMapMapFromBucket!980 (Cons!51572 lt!1787553 lt!1787554) (ListMap!4308 Nil!51572)) (+!1885 (addToMapMapFromBucket!980 lt!1787554 (ListMap!4308 Nil!51572)) lt!1787553))))

(declare-fun lt!1787908 () Unit!112758)

(declare-fun choose!31414 (tuple2!52522 List!51696 ListMap!4307) Unit!112758)

(assert (=> d!1458344 (= lt!1787908 (choose!31414 lt!1787553 lt!1787554 (ListMap!4308 Nil!51572)))))

(assert (=> d!1458344 (noDuplicateKeys!1519 lt!1787554)))

(assert (=> d!1458344 (= (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!85 lt!1787553 lt!1787554 (ListMap!4308 Nil!51572)) lt!1787908)))

(declare-fun bs!1025600 () Bool)

(assert (= bs!1025600 d!1458344))

(assert (=> bs!1025600 m!5474149))

(assert (=> bs!1025600 m!5474143))

(assert (=> bs!1025600 m!5474149))

(assert (=> bs!1025600 m!5474145))

(assert (=> bs!1025600 m!5474143))

(assert (=> bs!1025600 m!5474145))

(assert (=> bs!1025600 m!5474147))

(assert (=> bs!1025600 m!5474311))

(declare-fun m!5474543 () Bool)

(assert (=> bs!1025600 m!5474543))

(assert (=> b!4628463 d!1458344))

(declare-fun d!1458346 () Bool)

(assert (=> d!1458346 (= (head!9653 newBucket!224) (h!57634 newBucket!224))))

(assert (=> b!4628463 d!1458346))

(declare-fun bs!1025601 () Bool)

(declare-fun b!4628710 () Bool)

(assert (= bs!1025601 (and b!4628710 d!1458282)))

(declare-fun lambda!193004 () Int)

(assert (=> bs!1025601 (not (= lambda!193004 lambda!192923))))

(declare-fun bs!1025602 () Bool)

(assert (= bs!1025602 (and b!4628710 b!4628689)))

(assert (=> bs!1025602 (= lambda!193004 lambda!192968)))

(declare-fun bs!1025603 () Bool)

(assert (= bs!1025603 (and b!4628710 b!4628686)))

(assert (=> bs!1025603 (= (= (ListMap!4308 Nil!51572) lt!1787848) (= lambda!193004 lambda!192970))))

(assert (=> bs!1025603 (= lambda!193004 lambda!192969)))

(declare-fun bs!1025604 () Bool)

(assert (= bs!1025604 (and b!4628710 d!1458332)))

(assert (=> bs!1025604 (not (= lambda!193004 lambda!192939))))

(declare-fun bs!1025605 () Bool)

(assert (= bs!1025605 (and b!4628710 d!1458336)))

(assert (=> bs!1025605 (= (= (ListMap!4308 Nil!51572) lt!1787849) (= lambda!193004 lambda!192971))))

(assert (=> b!4628710 true))

(declare-fun bs!1025606 () Bool)

(declare-fun b!4628707 () Bool)

(assert (= bs!1025606 (and b!4628707 d!1458282)))

(declare-fun lambda!193005 () Int)

(assert (=> bs!1025606 (not (= lambda!193005 lambda!192923))))

(declare-fun bs!1025607 () Bool)

(assert (= bs!1025607 (and b!4628707 b!4628689)))

(assert (=> bs!1025607 (= lambda!193005 lambda!192968)))

(declare-fun bs!1025608 () Bool)

(assert (= bs!1025608 (and b!4628707 b!4628686)))

(assert (=> bs!1025608 (= (= (ListMap!4308 Nil!51572) lt!1787848) (= lambda!193005 lambda!192970))))

(declare-fun bs!1025609 () Bool)

(assert (= bs!1025609 (and b!4628707 b!4628710)))

(assert (=> bs!1025609 (= lambda!193005 lambda!193004)))

(assert (=> bs!1025608 (= lambda!193005 lambda!192969)))

(declare-fun bs!1025610 () Bool)

(assert (= bs!1025610 (and b!4628707 d!1458332)))

(assert (=> bs!1025610 (not (= lambda!193005 lambda!192939))))

(declare-fun bs!1025611 () Bool)

(assert (= bs!1025611 (and b!4628707 d!1458336)))

(assert (=> bs!1025611 (= (= (ListMap!4308 Nil!51572) lt!1787849) (= lambda!193005 lambda!192971))))

(assert (=> b!4628707 true))

(declare-fun lambda!193006 () Int)

(assert (=> bs!1025606 (not (= lambda!193006 lambda!192923))))

(declare-fun lt!1787922 () ListMap!4307)

(assert (=> bs!1025607 (= (= lt!1787922 (ListMap!4308 Nil!51572)) (= lambda!193006 lambda!192968))))

(assert (=> bs!1025608 (= (= lt!1787922 lt!1787848) (= lambda!193006 lambda!192970))))

(assert (=> bs!1025609 (= (= lt!1787922 (ListMap!4308 Nil!51572)) (= lambda!193006 lambda!193004))))

(assert (=> bs!1025608 (= (= lt!1787922 (ListMap!4308 Nil!51572)) (= lambda!193006 lambda!192969))))

(assert (=> bs!1025610 (not (= lambda!193006 lambda!192939))))

(assert (=> bs!1025611 (= (= lt!1787922 lt!1787849) (= lambda!193006 lambda!192971))))

(assert (=> b!4628707 (= (= lt!1787922 (ListMap!4308 Nil!51572)) (= lambda!193006 lambda!193005))))

(assert (=> b!4628707 true))

(declare-fun bs!1025613 () Bool)

(declare-fun d!1458348 () Bool)

(assert (= bs!1025613 (and d!1458348 d!1458282)))

(declare-fun lambda!193010 () Int)

(assert (=> bs!1025613 (not (= lambda!193010 lambda!192923))))

(declare-fun bs!1025614 () Bool)

(assert (= bs!1025614 (and d!1458348 b!4628689)))

(declare-fun lt!1787923 () ListMap!4307)

(assert (=> bs!1025614 (= (= lt!1787923 (ListMap!4308 Nil!51572)) (= lambda!193010 lambda!192968))))

(declare-fun bs!1025615 () Bool)

(assert (= bs!1025615 (and d!1458348 b!4628686)))

(assert (=> bs!1025615 (= (= lt!1787923 lt!1787848) (= lambda!193010 lambda!192970))))

(declare-fun bs!1025616 () Bool)

(assert (= bs!1025616 (and d!1458348 b!4628710)))

(assert (=> bs!1025616 (= (= lt!1787923 (ListMap!4308 Nil!51572)) (= lambda!193010 lambda!193004))))

(assert (=> bs!1025615 (= (= lt!1787923 (ListMap!4308 Nil!51572)) (= lambda!193010 lambda!192969))))

(declare-fun bs!1025617 () Bool)

(assert (= bs!1025617 (and d!1458348 d!1458332)))

(assert (=> bs!1025617 (not (= lambda!193010 lambda!192939))))

(declare-fun bs!1025618 () Bool)

(assert (= bs!1025618 (and d!1458348 d!1458336)))

(assert (=> bs!1025618 (= (= lt!1787923 lt!1787849) (= lambda!193010 lambda!192971))))

(declare-fun bs!1025619 () Bool)

(assert (= bs!1025619 (and d!1458348 b!4628707)))

(assert (=> bs!1025619 (= (= lt!1787923 (ListMap!4308 Nil!51572)) (= lambda!193010 lambda!193005))))

(assert (=> bs!1025619 (= (= lt!1787923 lt!1787922) (= lambda!193010 lambda!193006))))

(assert (=> d!1458348 true))

(declare-fun bm!322918 () Bool)

(declare-fun call!322924 () Unit!112758)

(assert (=> bm!322918 (= call!322924 (lemmaContainsAllItsOwnKeys!517 (ListMap!4308 Nil!51572)))))

(declare-fun e!2887392 () ListMap!4307)

(assert (=> b!4628707 (= e!2887392 lt!1787922)))

(declare-fun lt!1787917 () ListMap!4307)

(assert (=> b!4628707 (= lt!1787917 (+!1885 (ListMap!4308 Nil!51572) (h!57634 (Cons!51572 lt!1787574 lt!1787568))))))

(assert (=> b!4628707 (= lt!1787922 (addToMapMapFromBucket!980 (t!358740 (Cons!51572 lt!1787574 lt!1787568)) (+!1885 (ListMap!4308 Nil!51572) (h!57634 (Cons!51572 lt!1787574 lt!1787568)))))))

(declare-fun lt!1787909 () Unit!112758)

(assert (=> b!4628707 (= lt!1787909 call!322924)))

(declare-fun call!322923 () Bool)

(assert (=> b!4628707 call!322923))

(declare-fun lt!1787914 () Unit!112758)

(assert (=> b!4628707 (= lt!1787914 lt!1787909)))

(assert (=> b!4628707 (forall!10845 (toList!5003 lt!1787917) lambda!193006)))

(declare-fun lt!1787927 () Unit!112758)

(declare-fun Unit!112776 () Unit!112758)

(assert (=> b!4628707 (= lt!1787927 Unit!112776)))

(assert (=> b!4628707 (forall!10845 (t!358740 (Cons!51572 lt!1787574 lt!1787568)) lambda!193006)))

(declare-fun lt!1787911 () Unit!112758)

(declare-fun Unit!112777 () Unit!112758)

(assert (=> b!4628707 (= lt!1787911 Unit!112777)))

(declare-fun lt!1787924 () Unit!112758)

(declare-fun Unit!112778 () Unit!112758)

(assert (=> b!4628707 (= lt!1787924 Unit!112778)))

(declare-fun lt!1787918 () Unit!112758)

(assert (=> b!4628707 (= lt!1787918 (forallContained!3077 (toList!5003 lt!1787917) lambda!193006 (h!57634 (Cons!51572 lt!1787574 lt!1787568))))))

(assert (=> b!4628707 (contains!14640 lt!1787917 (_1!29555 (h!57634 (Cons!51572 lt!1787574 lt!1787568))))))

(declare-fun lt!1787921 () Unit!112758)

(declare-fun Unit!112779 () Unit!112758)

(assert (=> b!4628707 (= lt!1787921 Unit!112779)))

(assert (=> b!4628707 (contains!14640 lt!1787922 (_1!29555 (h!57634 (Cons!51572 lt!1787574 lt!1787568))))))

(declare-fun lt!1787929 () Unit!112758)

(declare-fun Unit!112780 () Unit!112758)

(assert (=> b!4628707 (= lt!1787929 Unit!112780)))

(assert (=> b!4628707 (forall!10845 (Cons!51572 lt!1787574 lt!1787568) lambda!193006)))

(declare-fun lt!1787913 () Unit!112758)

(declare-fun Unit!112781 () Unit!112758)

(assert (=> b!4628707 (= lt!1787913 Unit!112781)))

(declare-fun call!322925 () Bool)

(assert (=> b!4628707 call!322925))

(declare-fun lt!1787916 () Unit!112758)

(declare-fun Unit!112782 () Unit!112758)

(assert (=> b!4628707 (= lt!1787916 Unit!112782)))

(declare-fun lt!1787928 () Unit!112758)

(declare-fun Unit!112783 () Unit!112758)

(assert (=> b!4628707 (= lt!1787928 Unit!112783)))

(declare-fun lt!1787912 () Unit!112758)

(assert (=> b!4628707 (= lt!1787912 (addForallContainsKeyThenBeforeAdding!516 (ListMap!4308 Nil!51572) lt!1787922 (_1!29555 (h!57634 (Cons!51572 lt!1787574 lt!1787568))) (_2!29555 (h!57634 (Cons!51572 lt!1787574 lt!1787568)))))))

(assert (=> b!4628707 (forall!10845 (toList!5003 (ListMap!4308 Nil!51572)) lambda!193006)))

(declare-fun lt!1787915 () Unit!112758)

(assert (=> b!4628707 (= lt!1787915 lt!1787912)))

(assert (=> b!4628707 (forall!10845 (toList!5003 (ListMap!4308 Nil!51572)) lambda!193006)))

(declare-fun lt!1787926 () Unit!112758)

(declare-fun Unit!112784 () Unit!112758)

(assert (=> b!4628707 (= lt!1787926 Unit!112784)))

(declare-fun res!1941580 () Bool)

(assert (=> b!4628707 (= res!1941580 (forall!10845 (Cons!51572 lt!1787574 lt!1787568) lambda!193006))))

(declare-fun e!2887390 () Bool)

(assert (=> b!4628707 (=> (not res!1941580) (not e!2887390))))

(assert (=> b!4628707 e!2887390))

(declare-fun lt!1787910 () Unit!112758)

(declare-fun Unit!112785 () Unit!112758)

(assert (=> b!4628707 (= lt!1787910 Unit!112785)))

(declare-fun b!4628708 () Bool)

(declare-fun e!2887391 () Bool)

(assert (=> b!4628708 (= e!2887391 (invariantList!1215 (toList!5003 lt!1787923)))))

(assert (=> d!1458348 e!2887391))

(declare-fun res!1941581 () Bool)

(assert (=> d!1458348 (=> (not res!1941581) (not e!2887391))))

(assert (=> d!1458348 (= res!1941581 (forall!10845 (Cons!51572 lt!1787574 lt!1787568) lambda!193010))))

(assert (=> d!1458348 (= lt!1787923 e!2887392)))

(declare-fun c!792301 () Bool)

(assert (=> d!1458348 (= c!792301 (is-Nil!51572 (Cons!51572 lt!1787574 lt!1787568)))))

(assert (=> d!1458348 (noDuplicateKeys!1519 (Cons!51572 lt!1787574 lt!1787568))))

(assert (=> d!1458348 (= (addToMapMapFromBucket!980 (Cons!51572 lt!1787574 lt!1787568) (ListMap!4308 Nil!51572)) lt!1787923)))

(declare-fun bm!322919 () Bool)

(assert (=> bm!322919 (= call!322925 (forall!10845 (ite c!792301 (toList!5003 (ListMap!4308 Nil!51572)) (toList!5003 lt!1787917)) (ite c!792301 lambda!193004 lambda!193006)))))

(declare-fun bm!322920 () Bool)

(assert (=> bm!322920 (= call!322923 (forall!10845 (toList!5003 (ListMap!4308 Nil!51572)) (ite c!792301 lambda!193004 lambda!193005)))))

(declare-fun b!4628709 () Bool)

(assert (=> b!4628709 (= e!2887390 (forall!10845 (toList!5003 (ListMap!4308 Nil!51572)) lambda!193006))))

(assert (=> b!4628710 (= e!2887392 (ListMap!4308 Nil!51572))))

(declare-fun lt!1787920 () Unit!112758)

(assert (=> b!4628710 (= lt!1787920 call!322924)))

(assert (=> b!4628710 call!322923))

(declare-fun lt!1787925 () Unit!112758)

(assert (=> b!4628710 (= lt!1787925 lt!1787920)))

(assert (=> b!4628710 call!322925))

(declare-fun lt!1787919 () Unit!112758)

(declare-fun Unit!112786 () Unit!112758)

(assert (=> b!4628710 (= lt!1787919 Unit!112786)))

(declare-fun b!4628711 () Bool)

(declare-fun res!1941582 () Bool)

(assert (=> b!4628711 (=> (not res!1941582) (not e!2887391))))

(assert (=> b!4628711 (= res!1941582 (forall!10845 (toList!5003 (ListMap!4308 Nil!51572)) lambda!193010))))

(assert (= (and d!1458348 c!792301) b!4628710))

(assert (= (and d!1458348 (not c!792301)) b!4628707))

(assert (= (and b!4628707 res!1941580) b!4628709))

(assert (= (or b!4628710 b!4628707) bm!322918))

(assert (= (or b!4628710 b!4628707) bm!322919))

(assert (= (or b!4628710 b!4628707) bm!322920))

(assert (= (and d!1458348 res!1941581) b!4628711))

(assert (= (and b!4628711 res!1941582) b!4628708))

(declare-fun m!5474545 () Bool)

(assert (=> b!4628707 m!5474545))

(declare-fun m!5474547 () Bool)

(assert (=> b!4628707 m!5474547))

(declare-fun m!5474549 () Bool)

(assert (=> b!4628707 m!5474549))

(declare-fun m!5474551 () Bool)

(assert (=> b!4628707 m!5474551))

(declare-fun m!5474553 () Bool)

(assert (=> b!4628707 m!5474553))

(assert (=> b!4628707 m!5474545))

(assert (=> b!4628707 m!5474547))

(declare-fun m!5474555 () Bool)

(assert (=> b!4628707 m!5474555))

(declare-fun m!5474557 () Bool)

(assert (=> b!4628707 m!5474557))

(declare-fun m!5474559 () Bool)

(assert (=> b!4628707 m!5474559))

(declare-fun m!5474561 () Bool)

(assert (=> b!4628707 m!5474561))

(assert (=> b!4628707 m!5474549))

(declare-fun m!5474563 () Bool)

(assert (=> b!4628707 m!5474563))

(declare-fun m!5474567 () Bool)

(assert (=> bm!322919 m!5474567))

(assert (=> b!4628709 m!5474547))

(declare-fun m!5474571 () Bool)

(assert (=> d!1458348 m!5474571))

(declare-fun m!5474573 () Bool)

(assert (=> d!1458348 m!5474573))

(declare-fun m!5474577 () Bool)

(assert (=> b!4628711 m!5474577))

(assert (=> bm!322918 m!5474509))

(declare-fun m!5474583 () Bool)

(assert (=> bm!322920 m!5474583))

(declare-fun m!5474585 () Bool)

(assert (=> b!4628708 m!5474585))

(assert (=> b!4628463 d!1458348))

(declare-fun d!1458350 () Bool)

(declare-fun e!2887396 () Bool)

(assert (=> d!1458350 e!2887396))

(declare-fun res!1941586 () Bool)

(assert (=> d!1458350 (=> (not res!1941586) (not e!2887396))))

(declare-fun lt!1787952 () ListMap!4307)

(assert (=> d!1458350 (= res!1941586 (contains!14640 lt!1787952 (_1!29555 lt!1787553)))))

(declare-fun lt!1787951 () List!51696)

(assert (=> d!1458350 (= lt!1787952 (ListMap!4308 lt!1787951))))

(declare-fun lt!1787953 () Unit!112758)

(declare-fun lt!1787954 () Unit!112758)

(assert (=> d!1458350 (= lt!1787953 lt!1787954)))

(assert (=> d!1458350 (= (getValueByKey!1473 lt!1787951 (_1!29555 lt!1787553)) (Some!11626 (_2!29555 lt!1787553)))))

(assert (=> d!1458350 (= lt!1787954 (lemmaContainsTupThenGetReturnValue!859 lt!1787951 (_1!29555 lt!1787553) (_2!29555 lt!1787553)))))

(assert (=> d!1458350 (= lt!1787951 (insertNoDuplicatedKeys!367 (toList!5003 (addToMapMapFromBucket!980 lt!1787554 (ListMap!4308 Nil!51572))) (_1!29555 lt!1787553) (_2!29555 lt!1787553)))))

(assert (=> d!1458350 (= (+!1885 (addToMapMapFromBucket!980 lt!1787554 (ListMap!4308 Nil!51572)) lt!1787553) lt!1787952)))

(declare-fun b!4628719 () Bool)

(declare-fun res!1941587 () Bool)

(assert (=> b!4628719 (=> (not res!1941587) (not e!2887396))))

(assert (=> b!4628719 (= res!1941587 (= (getValueByKey!1473 (toList!5003 lt!1787952) (_1!29555 lt!1787553)) (Some!11626 (_2!29555 lt!1787553))))))

(declare-fun b!4628720 () Bool)

(assert (=> b!4628720 (= e!2887396 (contains!14647 (toList!5003 lt!1787952) lt!1787553))))

(assert (= (and d!1458350 res!1941586) b!4628719))

(assert (= (and b!4628719 res!1941587) b!4628720))

(declare-fun m!5474613 () Bool)

(assert (=> d!1458350 m!5474613))

(declare-fun m!5474615 () Bool)

(assert (=> d!1458350 m!5474615))

(declare-fun m!5474617 () Bool)

(assert (=> d!1458350 m!5474617))

(declare-fun m!5474619 () Bool)

(assert (=> d!1458350 m!5474619))

(declare-fun m!5474621 () Bool)

(assert (=> b!4628719 m!5474621))

(declare-fun m!5474623 () Bool)

(assert (=> b!4628720 m!5474623))

(assert (=> b!4628463 d!1458350))

(declare-fun b!4628721 () Bool)

(declare-fun e!2887399 () Unit!112758)

(declare-fun lt!1787956 () Unit!112758)

(assert (=> b!4628721 (= e!2887399 lt!1787956)))

(declare-fun lt!1787962 () Unit!112758)

(assert (=> b!4628721 (= lt!1787962 (lemmaContainsKeyImpliesGetValueByKeyDefined!1375 (toList!5003 lt!1787565) key!4968))))

(assert (=> b!4628721 (isDefined!8892 (getValueByKey!1473 (toList!5003 lt!1787565) key!4968))))

(declare-fun lt!1787959 () Unit!112758)

(assert (=> b!4628721 (= lt!1787959 lt!1787962)))

(assert (=> b!4628721 (= lt!1787956 (lemmaInListThenGetKeysListContains!661 (toList!5003 lt!1787565) key!4968))))

(declare-fun call!322929 () Bool)

(assert (=> b!4628721 call!322929))

(declare-fun b!4628722 () Bool)

(declare-fun e!2887400 () List!51700)

(assert (=> b!4628722 (= e!2887400 (keys!18179 lt!1787565))))

(declare-fun b!4628723 () Bool)

(declare-fun e!2887402 () Bool)

(assert (=> b!4628723 (= e!2887402 (not (contains!14646 (keys!18179 lt!1787565) key!4968)))))

(declare-fun d!1458354 () Bool)

(declare-fun e!2887401 () Bool)

(assert (=> d!1458354 e!2887401))

(declare-fun res!1941590 () Bool)

(assert (=> d!1458354 (=> res!1941590 e!2887401)))

(assert (=> d!1458354 (= res!1941590 e!2887402)))

(declare-fun res!1941588 () Bool)

(assert (=> d!1458354 (=> (not res!1941588) (not e!2887402))))

(declare-fun lt!1787960 () Bool)

(assert (=> d!1458354 (= res!1941588 (not lt!1787960))))

(declare-fun lt!1787958 () Bool)

(assert (=> d!1458354 (= lt!1787960 lt!1787958)))

(declare-fun lt!1787955 () Unit!112758)

(assert (=> d!1458354 (= lt!1787955 e!2887399)))

(declare-fun c!792303 () Bool)

(assert (=> d!1458354 (= c!792303 lt!1787958)))

(assert (=> d!1458354 (= lt!1787958 (containsKey!2485 (toList!5003 lt!1787565) key!4968))))

(assert (=> d!1458354 (= (contains!14640 lt!1787565 key!4968) lt!1787960)))

(declare-fun b!4628724 () Bool)

(declare-fun e!2887397 () Unit!112758)

(assert (=> b!4628724 (= e!2887399 e!2887397)))

(declare-fun c!792305 () Bool)

(assert (=> b!4628724 (= c!792305 call!322929)))

(declare-fun b!4628725 () Bool)

(declare-fun Unit!112787 () Unit!112758)

(assert (=> b!4628725 (= e!2887397 Unit!112787)))

(declare-fun bm!322924 () Bool)

(assert (=> bm!322924 (= call!322929 (contains!14646 e!2887400 key!4968))))

(declare-fun c!792304 () Bool)

(assert (=> bm!322924 (= c!792304 c!792303)))

(declare-fun b!4628726 () Bool)

(declare-fun e!2887398 () Bool)

(assert (=> b!4628726 (= e!2887401 e!2887398)))

(declare-fun res!1941589 () Bool)

(assert (=> b!4628726 (=> (not res!1941589) (not e!2887398))))

(assert (=> b!4628726 (= res!1941589 (isDefined!8892 (getValueByKey!1473 (toList!5003 lt!1787565) key!4968)))))

(declare-fun b!4628727 () Bool)

(assert (=> b!4628727 false))

(declare-fun lt!1787957 () Unit!112758)

(declare-fun lt!1787961 () Unit!112758)

(assert (=> b!4628727 (= lt!1787957 lt!1787961)))

(assert (=> b!4628727 (containsKey!2485 (toList!5003 lt!1787565) key!4968)))

(assert (=> b!4628727 (= lt!1787961 (lemmaInGetKeysListThenContainsKey!665 (toList!5003 lt!1787565) key!4968))))

(declare-fun Unit!112788 () Unit!112758)

(assert (=> b!4628727 (= e!2887397 Unit!112788)))

(declare-fun b!4628728 () Bool)

(assert (=> b!4628728 (= e!2887398 (contains!14646 (keys!18179 lt!1787565) key!4968))))

(declare-fun b!4628729 () Bool)

(assert (=> b!4628729 (= e!2887400 (getKeysList!666 (toList!5003 lt!1787565)))))

(assert (= (and d!1458354 c!792303) b!4628721))

(assert (= (and d!1458354 (not c!792303)) b!4628724))

(assert (= (and b!4628724 c!792305) b!4628727))

(assert (= (and b!4628724 (not c!792305)) b!4628725))

(assert (= (or b!4628721 b!4628724) bm!322924))

(assert (= (and bm!322924 c!792304) b!4628729))

(assert (= (and bm!322924 (not c!792304)) b!4628722))

(assert (= (and d!1458354 res!1941588) b!4628723))

(assert (= (and d!1458354 (not res!1941590)) b!4628726))

(assert (= (and b!4628726 res!1941589) b!4628728))

(declare-fun m!5474625 () Bool)

(assert (=> b!4628727 m!5474625))

(declare-fun m!5474627 () Bool)

(assert (=> b!4628727 m!5474627))

(declare-fun m!5474629 () Bool)

(assert (=> b!4628729 m!5474629))

(declare-fun m!5474631 () Bool)

(assert (=> b!4628722 m!5474631))

(assert (=> d!1458354 m!5474625))

(assert (=> b!4628728 m!5474631))

(assert (=> b!4628728 m!5474631))

(declare-fun m!5474633 () Bool)

(assert (=> b!4628728 m!5474633))

(declare-fun m!5474635 () Bool)

(assert (=> b!4628726 m!5474635))

(assert (=> b!4628726 m!5474635))

(declare-fun m!5474637 () Bool)

(assert (=> b!4628726 m!5474637))

(declare-fun m!5474639 () Bool)

(assert (=> b!4628721 m!5474639))

(assert (=> b!4628721 m!5474635))

(assert (=> b!4628721 m!5474635))

(assert (=> b!4628721 m!5474637))

(declare-fun m!5474641 () Bool)

(assert (=> b!4628721 m!5474641))

(declare-fun m!5474643 () Bool)

(assert (=> bm!322924 m!5474643))

(assert (=> b!4628723 m!5474631))

(assert (=> b!4628723 m!5474631))

(assert (=> b!4628723 m!5474633))

(assert (=> b!4628463 d!1458354))

(declare-fun d!1458358 () Bool)

(assert (=> d!1458358 (= (eq!834 (addToMapMapFromBucket!980 (Cons!51572 lt!1787553 lt!1787554) (ListMap!4308 Nil!51572)) (+!1885 (addToMapMapFromBucket!980 lt!1787554 (ListMap!4308 Nil!51572)) lt!1787553)) (= (content!8831 (toList!5003 (addToMapMapFromBucket!980 (Cons!51572 lt!1787553 lt!1787554) (ListMap!4308 Nil!51572)))) (content!8831 (toList!5003 (+!1885 (addToMapMapFromBucket!980 lt!1787554 (ListMap!4308 Nil!51572)) lt!1787553)))))))

(declare-fun bs!1025622 () Bool)

(assert (= bs!1025622 d!1458358))

(declare-fun m!5474645 () Bool)

(assert (=> bs!1025622 m!5474645))

(declare-fun m!5474647 () Bool)

(assert (=> bs!1025622 m!5474647))

(assert (=> b!4628463 d!1458358))

(declare-fun d!1458360 () Bool)

(assert (=> d!1458360 (eq!834 (addToMapMapFromBucket!980 (Cons!51572 lt!1787574 lt!1787568) (ListMap!4308 Nil!51572)) (+!1885 (addToMapMapFromBucket!980 lt!1787568 (ListMap!4308 Nil!51572)) lt!1787574))))

(declare-fun lt!1787963 () Unit!112758)

(assert (=> d!1458360 (= lt!1787963 (choose!31414 lt!1787574 lt!1787568 (ListMap!4308 Nil!51572)))))

(assert (=> d!1458360 (noDuplicateKeys!1519 lt!1787568)))

(assert (=> d!1458360 (= (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!85 lt!1787574 lt!1787568 (ListMap!4308 Nil!51572)) lt!1787963)))

(declare-fun bs!1025623 () Bool)

(assert (= bs!1025623 d!1458360))

(assert (=> bs!1025623 m!5474151))

(assert (=> bs!1025623 m!5474131))

(assert (=> bs!1025623 m!5474151))

(assert (=> bs!1025623 m!5474133))

(assert (=> bs!1025623 m!5474131))

(assert (=> bs!1025623 m!5474133))

(assert (=> bs!1025623 m!5474135))

(declare-fun m!5474649 () Bool)

(assert (=> bs!1025623 m!5474649))

(declare-fun m!5474651 () Bool)

(assert (=> bs!1025623 m!5474651))

(assert (=> b!4628463 d!1458360))

(declare-fun d!1458362 () Bool)

(assert (=> d!1458362 (= (head!9653 oldBucket!40) (h!57634 oldBucket!40))))

(assert (=> b!4628463 d!1458362))

(declare-fun d!1458364 () Bool)

(assert (=> d!1458364 (= (eq!834 lt!1787560 (+!1885 (extractMap!1575 (Cons!51573 (tuple2!52525 hash!414 lt!1787554) Nil!51573)) (h!57634 oldBucket!40))) (= (content!8831 (toList!5003 lt!1787560)) (content!8831 (toList!5003 (+!1885 (extractMap!1575 (Cons!51573 (tuple2!52525 hash!414 lt!1787554) Nil!51573)) (h!57634 oldBucket!40))))))))

(declare-fun bs!1025624 () Bool)

(assert (= bs!1025624 d!1458364))

(declare-fun m!5474653 () Bool)

(assert (=> bs!1025624 m!5474653))

(declare-fun m!5474655 () Bool)

(assert (=> bs!1025624 m!5474655))

(assert (=> b!4628463 d!1458364))

(declare-fun d!1458366 () Bool)

(declare-fun e!2887403 () Bool)

(assert (=> d!1458366 e!2887403))

(declare-fun res!1941591 () Bool)

(assert (=> d!1458366 (=> (not res!1941591) (not e!2887403))))

(declare-fun lt!1787965 () ListMap!4307)

(assert (=> d!1458366 (= res!1941591 (contains!14640 lt!1787965 (_1!29555 (h!57634 oldBucket!40))))))

(declare-fun lt!1787964 () List!51696)

(assert (=> d!1458366 (= lt!1787965 (ListMap!4308 lt!1787964))))

(declare-fun lt!1787966 () Unit!112758)

(declare-fun lt!1787967 () Unit!112758)

(assert (=> d!1458366 (= lt!1787966 lt!1787967)))

(assert (=> d!1458366 (= (getValueByKey!1473 lt!1787964 (_1!29555 (h!57634 oldBucket!40))) (Some!11626 (_2!29555 (h!57634 oldBucket!40))))))

(assert (=> d!1458366 (= lt!1787967 (lemmaContainsTupThenGetReturnValue!859 lt!1787964 (_1!29555 (h!57634 oldBucket!40)) (_2!29555 (h!57634 oldBucket!40))))))

(assert (=> d!1458366 (= lt!1787964 (insertNoDuplicatedKeys!367 (toList!5003 (extractMap!1575 (Cons!51573 (tuple2!52525 hash!414 lt!1787554) Nil!51573))) (_1!29555 (h!57634 oldBucket!40)) (_2!29555 (h!57634 oldBucket!40))))))

(assert (=> d!1458366 (= (+!1885 (extractMap!1575 (Cons!51573 (tuple2!52525 hash!414 lt!1787554) Nil!51573)) (h!57634 oldBucket!40)) lt!1787965)))

(declare-fun b!4628730 () Bool)

(declare-fun res!1941592 () Bool)

(assert (=> b!4628730 (=> (not res!1941592) (not e!2887403))))

(assert (=> b!4628730 (= res!1941592 (= (getValueByKey!1473 (toList!5003 lt!1787965) (_1!29555 (h!57634 oldBucket!40))) (Some!11626 (_2!29555 (h!57634 oldBucket!40)))))))

(declare-fun b!4628731 () Bool)

(assert (=> b!4628731 (= e!2887403 (contains!14647 (toList!5003 lt!1787965) (h!57634 oldBucket!40)))))

(assert (= (and d!1458366 res!1941591) b!4628730))

(assert (= (and b!4628730 res!1941592) b!4628731))

(declare-fun m!5474657 () Bool)

(assert (=> d!1458366 m!5474657))

(declare-fun m!5474659 () Bool)

(assert (=> d!1458366 m!5474659))

(declare-fun m!5474661 () Bool)

(assert (=> d!1458366 m!5474661))

(declare-fun m!5474663 () Bool)

(assert (=> d!1458366 m!5474663))

(declare-fun m!5474665 () Bool)

(assert (=> b!4628730 m!5474665))

(declare-fun m!5474667 () Bool)

(assert (=> b!4628731 m!5474667))

(assert (=> b!4628463 d!1458366))

(declare-fun bs!1025625 () Bool)

(declare-fun b!4628735 () Bool)

(assert (= bs!1025625 (and b!4628735 d!1458282)))

(declare-fun lambda!193012 () Int)

(assert (=> bs!1025625 (not (= lambda!193012 lambda!192923))))

(declare-fun bs!1025626 () Bool)

(assert (= bs!1025626 (and b!4628735 b!4628689)))

(assert (=> bs!1025626 (= lambda!193012 lambda!192968)))

(declare-fun bs!1025627 () Bool)

(assert (= bs!1025627 (and b!4628735 b!4628686)))

(assert (=> bs!1025627 (= (= (ListMap!4308 Nil!51572) lt!1787848) (= lambda!193012 lambda!192970))))

(declare-fun bs!1025628 () Bool)

(assert (= bs!1025628 (and b!4628735 b!4628710)))

(assert (=> bs!1025628 (= lambda!193012 lambda!193004)))

(assert (=> bs!1025627 (= lambda!193012 lambda!192969)))

(declare-fun bs!1025629 () Bool)

(assert (= bs!1025629 (and b!4628735 d!1458332)))

(assert (=> bs!1025629 (not (= lambda!193012 lambda!192939))))

(declare-fun bs!1025630 () Bool)

(assert (= bs!1025630 (and b!4628735 d!1458348)))

(assert (=> bs!1025630 (= (= (ListMap!4308 Nil!51572) lt!1787923) (= lambda!193012 lambda!193010))))

(declare-fun bs!1025631 () Bool)

(assert (= bs!1025631 (and b!4628735 d!1458336)))

(assert (=> bs!1025631 (= (= (ListMap!4308 Nil!51572) lt!1787849) (= lambda!193012 lambda!192971))))

(declare-fun bs!1025632 () Bool)

(assert (= bs!1025632 (and b!4628735 b!4628707)))

(assert (=> bs!1025632 (= lambda!193012 lambda!193005)))

(assert (=> bs!1025632 (= (= (ListMap!4308 Nil!51572) lt!1787922) (= lambda!193012 lambda!193006))))

(assert (=> b!4628735 true))

(declare-fun bs!1025633 () Bool)

(declare-fun b!4628732 () Bool)

(assert (= bs!1025633 (and b!4628732 d!1458282)))

(declare-fun lambda!193013 () Int)

(assert (=> bs!1025633 (not (= lambda!193013 lambda!192923))))

(declare-fun bs!1025634 () Bool)

(assert (= bs!1025634 (and b!4628732 b!4628689)))

(assert (=> bs!1025634 (= lambda!193013 lambda!192968)))

(declare-fun bs!1025635 () Bool)

(assert (= bs!1025635 (and b!4628732 b!4628686)))

(assert (=> bs!1025635 (= (= (ListMap!4308 Nil!51572) lt!1787848) (= lambda!193013 lambda!192970))))

(declare-fun bs!1025636 () Bool)

(assert (= bs!1025636 (and b!4628732 b!4628710)))

(assert (=> bs!1025636 (= lambda!193013 lambda!193004)))

(assert (=> bs!1025635 (= lambda!193013 lambda!192969)))

(declare-fun bs!1025637 () Bool)

(assert (= bs!1025637 (and b!4628732 d!1458332)))

(assert (=> bs!1025637 (not (= lambda!193013 lambda!192939))))

(declare-fun bs!1025638 () Bool)

(assert (= bs!1025638 (and b!4628732 d!1458348)))

(assert (=> bs!1025638 (= (= (ListMap!4308 Nil!51572) lt!1787923) (= lambda!193013 lambda!193010))))

(declare-fun bs!1025639 () Bool)

(assert (= bs!1025639 (and b!4628732 b!4628735)))

(assert (=> bs!1025639 (= lambda!193013 lambda!193012)))

(declare-fun bs!1025640 () Bool)

(assert (= bs!1025640 (and b!4628732 d!1458336)))

(assert (=> bs!1025640 (= (= (ListMap!4308 Nil!51572) lt!1787849) (= lambda!193013 lambda!192971))))

(declare-fun bs!1025641 () Bool)

(assert (= bs!1025641 (and b!4628732 b!4628707)))

(assert (=> bs!1025641 (= lambda!193013 lambda!193005)))

(assert (=> bs!1025641 (= (= (ListMap!4308 Nil!51572) lt!1787922) (= lambda!193013 lambda!193006))))

(assert (=> b!4628732 true))

(declare-fun lambda!193014 () Int)

(assert (=> bs!1025633 (not (= lambda!193014 lambda!192923))))

(declare-fun lt!1787981 () ListMap!4307)

(assert (=> bs!1025634 (= (= lt!1787981 (ListMap!4308 Nil!51572)) (= lambda!193014 lambda!192968))))

(assert (=> b!4628732 (= (= lt!1787981 (ListMap!4308 Nil!51572)) (= lambda!193014 lambda!193013))))

(assert (=> bs!1025635 (= (= lt!1787981 lt!1787848) (= lambda!193014 lambda!192970))))

(assert (=> bs!1025636 (= (= lt!1787981 (ListMap!4308 Nil!51572)) (= lambda!193014 lambda!193004))))

(assert (=> bs!1025635 (= (= lt!1787981 (ListMap!4308 Nil!51572)) (= lambda!193014 lambda!192969))))

(assert (=> bs!1025637 (not (= lambda!193014 lambda!192939))))

(assert (=> bs!1025638 (= (= lt!1787981 lt!1787923) (= lambda!193014 lambda!193010))))

(assert (=> bs!1025639 (= (= lt!1787981 (ListMap!4308 Nil!51572)) (= lambda!193014 lambda!193012))))

(assert (=> bs!1025640 (= (= lt!1787981 lt!1787849) (= lambda!193014 lambda!192971))))

(assert (=> bs!1025641 (= (= lt!1787981 (ListMap!4308 Nil!51572)) (= lambda!193014 lambda!193005))))

(assert (=> bs!1025641 (= (= lt!1787981 lt!1787922) (= lambda!193014 lambda!193006))))

(assert (=> b!4628732 true))

(declare-fun bs!1025642 () Bool)

(declare-fun d!1458368 () Bool)

(assert (= bs!1025642 (and d!1458368 d!1458282)))

(declare-fun lambda!193015 () Int)

(assert (=> bs!1025642 (not (= lambda!193015 lambda!192923))))

(declare-fun bs!1025643 () Bool)

(assert (= bs!1025643 (and d!1458368 b!4628689)))

(declare-fun lt!1787982 () ListMap!4307)

(assert (=> bs!1025643 (= (= lt!1787982 (ListMap!4308 Nil!51572)) (= lambda!193015 lambda!192968))))

(declare-fun bs!1025644 () Bool)

(assert (= bs!1025644 (and d!1458368 b!4628732)))

(assert (=> bs!1025644 (= (= lt!1787982 (ListMap!4308 Nil!51572)) (= lambda!193015 lambda!193013))))

(declare-fun bs!1025645 () Bool)

(assert (= bs!1025645 (and d!1458368 b!4628686)))

(assert (=> bs!1025645 (= (= lt!1787982 lt!1787848) (= lambda!193015 lambda!192970))))

(assert (=> bs!1025644 (= (= lt!1787982 lt!1787981) (= lambda!193015 lambda!193014))))

(declare-fun bs!1025646 () Bool)

(assert (= bs!1025646 (and d!1458368 b!4628710)))

(assert (=> bs!1025646 (= (= lt!1787982 (ListMap!4308 Nil!51572)) (= lambda!193015 lambda!193004))))

(assert (=> bs!1025645 (= (= lt!1787982 (ListMap!4308 Nil!51572)) (= lambda!193015 lambda!192969))))

(declare-fun bs!1025647 () Bool)

(assert (= bs!1025647 (and d!1458368 d!1458332)))

(assert (=> bs!1025647 (not (= lambda!193015 lambda!192939))))

(declare-fun bs!1025648 () Bool)

(assert (= bs!1025648 (and d!1458368 d!1458348)))

(assert (=> bs!1025648 (= (= lt!1787982 lt!1787923) (= lambda!193015 lambda!193010))))

(declare-fun bs!1025649 () Bool)

(assert (= bs!1025649 (and d!1458368 b!4628735)))

(assert (=> bs!1025649 (= (= lt!1787982 (ListMap!4308 Nil!51572)) (= lambda!193015 lambda!193012))))

(declare-fun bs!1025650 () Bool)

(assert (= bs!1025650 (and d!1458368 d!1458336)))

(assert (=> bs!1025650 (= (= lt!1787982 lt!1787849) (= lambda!193015 lambda!192971))))

(declare-fun bs!1025651 () Bool)

(assert (= bs!1025651 (and d!1458368 b!4628707)))

(assert (=> bs!1025651 (= (= lt!1787982 (ListMap!4308 Nil!51572)) (= lambda!193015 lambda!193005))))

(assert (=> bs!1025651 (= (= lt!1787982 lt!1787922) (= lambda!193015 lambda!193006))))

(assert (=> d!1458368 true))

(declare-fun bm!322925 () Bool)

(declare-fun call!322931 () Unit!112758)

(assert (=> bm!322925 (= call!322931 (lemmaContainsAllItsOwnKeys!517 (ListMap!4308 Nil!51572)))))

(declare-fun e!2887406 () ListMap!4307)

(assert (=> b!4628732 (= e!2887406 lt!1787981)))

(declare-fun lt!1787976 () ListMap!4307)

(assert (=> b!4628732 (= lt!1787976 (+!1885 (ListMap!4308 Nil!51572) (h!57634 lt!1787568)))))

(assert (=> b!4628732 (= lt!1787981 (addToMapMapFromBucket!980 (t!358740 lt!1787568) (+!1885 (ListMap!4308 Nil!51572) (h!57634 lt!1787568))))))

(declare-fun lt!1787968 () Unit!112758)

(assert (=> b!4628732 (= lt!1787968 call!322931)))

(declare-fun call!322930 () Bool)

(assert (=> b!4628732 call!322930))

(declare-fun lt!1787973 () Unit!112758)

(assert (=> b!4628732 (= lt!1787973 lt!1787968)))

(assert (=> b!4628732 (forall!10845 (toList!5003 lt!1787976) lambda!193014)))

(declare-fun lt!1787986 () Unit!112758)

(declare-fun Unit!112792 () Unit!112758)

(assert (=> b!4628732 (= lt!1787986 Unit!112792)))

(assert (=> b!4628732 (forall!10845 (t!358740 lt!1787568) lambda!193014)))

(declare-fun lt!1787970 () Unit!112758)

(declare-fun Unit!112794 () Unit!112758)

(assert (=> b!4628732 (= lt!1787970 Unit!112794)))

(declare-fun lt!1787983 () Unit!112758)

(declare-fun Unit!112795 () Unit!112758)

(assert (=> b!4628732 (= lt!1787983 Unit!112795)))

(declare-fun lt!1787977 () Unit!112758)

(assert (=> b!4628732 (= lt!1787977 (forallContained!3077 (toList!5003 lt!1787976) lambda!193014 (h!57634 lt!1787568)))))

(assert (=> b!4628732 (contains!14640 lt!1787976 (_1!29555 (h!57634 lt!1787568)))))

(declare-fun lt!1787980 () Unit!112758)

(declare-fun Unit!112798 () Unit!112758)

(assert (=> b!4628732 (= lt!1787980 Unit!112798)))

(assert (=> b!4628732 (contains!14640 lt!1787981 (_1!29555 (h!57634 lt!1787568)))))

(declare-fun lt!1787988 () Unit!112758)

(declare-fun Unit!112799 () Unit!112758)

(assert (=> b!4628732 (= lt!1787988 Unit!112799)))

(assert (=> b!4628732 (forall!10845 lt!1787568 lambda!193014)))

(declare-fun lt!1787972 () Unit!112758)

(declare-fun Unit!112800 () Unit!112758)

(assert (=> b!4628732 (= lt!1787972 Unit!112800)))

(declare-fun call!322932 () Bool)

(assert (=> b!4628732 call!322932))

(declare-fun lt!1787975 () Unit!112758)

(declare-fun Unit!112802 () Unit!112758)

(assert (=> b!4628732 (= lt!1787975 Unit!112802)))

(declare-fun lt!1787987 () Unit!112758)

(declare-fun Unit!112803 () Unit!112758)

(assert (=> b!4628732 (= lt!1787987 Unit!112803)))

(declare-fun lt!1787971 () Unit!112758)

(assert (=> b!4628732 (= lt!1787971 (addForallContainsKeyThenBeforeAdding!516 (ListMap!4308 Nil!51572) lt!1787981 (_1!29555 (h!57634 lt!1787568)) (_2!29555 (h!57634 lt!1787568))))))

(assert (=> b!4628732 (forall!10845 (toList!5003 (ListMap!4308 Nil!51572)) lambda!193014)))

(declare-fun lt!1787974 () Unit!112758)

(assert (=> b!4628732 (= lt!1787974 lt!1787971)))

(assert (=> b!4628732 (forall!10845 (toList!5003 (ListMap!4308 Nil!51572)) lambda!193014)))

(declare-fun lt!1787985 () Unit!112758)

(declare-fun Unit!112806 () Unit!112758)

(assert (=> b!4628732 (= lt!1787985 Unit!112806)))

(declare-fun res!1941593 () Bool)

(assert (=> b!4628732 (= res!1941593 (forall!10845 lt!1787568 lambda!193014))))

(declare-fun e!2887404 () Bool)

(assert (=> b!4628732 (=> (not res!1941593) (not e!2887404))))

(assert (=> b!4628732 e!2887404))

(declare-fun lt!1787969 () Unit!112758)

(declare-fun Unit!112809 () Unit!112758)

(assert (=> b!4628732 (= lt!1787969 Unit!112809)))

(declare-fun b!4628733 () Bool)

(declare-fun e!2887405 () Bool)

(assert (=> b!4628733 (= e!2887405 (invariantList!1215 (toList!5003 lt!1787982)))))

(assert (=> d!1458368 e!2887405))

(declare-fun res!1941594 () Bool)

(assert (=> d!1458368 (=> (not res!1941594) (not e!2887405))))

(assert (=> d!1458368 (= res!1941594 (forall!10845 lt!1787568 lambda!193015))))

(assert (=> d!1458368 (= lt!1787982 e!2887406)))

(declare-fun c!792306 () Bool)

(assert (=> d!1458368 (= c!792306 (is-Nil!51572 lt!1787568))))

(assert (=> d!1458368 (noDuplicateKeys!1519 lt!1787568)))

(assert (=> d!1458368 (= (addToMapMapFromBucket!980 lt!1787568 (ListMap!4308 Nil!51572)) lt!1787982)))

(declare-fun bm!322926 () Bool)

(assert (=> bm!322926 (= call!322932 (forall!10845 (ite c!792306 (toList!5003 (ListMap!4308 Nil!51572)) (toList!5003 lt!1787976)) (ite c!792306 lambda!193012 lambda!193014)))))

(declare-fun bm!322927 () Bool)

(assert (=> bm!322927 (= call!322930 (forall!10845 (toList!5003 (ListMap!4308 Nil!51572)) (ite c!792306 lambda!193012 lambda!193013)))))

(declare-fun b!4628734 () Bool)

(assert (=> b!4628734 (= e!2887404 (forall!10845 (toList!5003 (ListMap!4308 Nil!51572)) lambda!193014))))

(assert (=> b!4628735 (= e!2887406 (ListMap!4308 Nil!51572))))

(declare-fun lt!1787979 () Unit!112758)

(assert (=> b!4628735 (= lt!1787979 call!322931)))

(assert (=> b!4628735 call!322930))

(declare-fun lt!1787984 () Unit!112758)

(assert (=> b!4628735 (= lt!1787984 lt!1787979)))

(assert (=> b!4628735 call!322932))

(declare-fun lt!1787978 () Unit!112758)

(declare-fun Unit!112812 () Unit!112758)

(assert (=> b!4628735 (= lt!1787978 Unit!112812)))

(declare-fun b!4628736 () Bool)

(declare-fun res!1941595 () Bool)

(assert (=> b!4628736 (=> (not res!1941595) (not e!2887405))))

(assert (=> b!4628736 (= res!1941595 (forall!10845 (toList!5003 (ListMap!4308 Nil!51572)) lambda!193015))))

(assert (= (and d!1458368 c!792306) b!4628735))

(assert (= (and d!1458368 (not c!792306)) b!4628732))

(assert (= (and b!4628732 res!1941593) b!4628734))

(assert (= (or b!4628735 b!4628732) bm!322925))

(assert (= (or b!4628735 b!4628732) bm!322926))

(assert (= (or b!4628735 b!4628732) bm!322927))

(assert (= (and d!1458368 res!1941594) b!4628736))

(assert (= (and b!4628736 res!1941595) b!4628733))

(declare-fun m!5474681 () Bool)

(assert (=> b!4628732 m!5474681))

(declare-fun m!5474683 () Bool)

(assert (=> b!4628732 m!5474683))

(declare-fun m!5474685 () Bool)

(assert (=> b!4628732 m!5474685))

(declare-fun m!5474687 () Bool)

(assert (=> b!4628732 m!5474687))

(declare-fun m!5474689 () Bool)

(assert (=> b!4628732 m!5474689))

(assert (=> b!4628732 m!5474681))

(assert (=> b!4628732 m!5474683))

(declare-fun m!5474691 () Bool)

(assert (=> b!4628732 m!5474691))

(declare-fun m!5474693 () Bool)

(assert (=> b!4628732 m!5474693))

(declare-fun m!5474695 () Bool)

(assert (=> b!4628732 m!5474695))

(declare-fun m!5474697 () Bool)

(assert (=> b!4628732 m!5474697))

(assert (=> b!4628732 m!5474685))

(declare-fun m!5474699 () Bool)

(assert (=> b!4628732 m!5474699))

(declare-fun m!5474701 () Bool)

(assert (=> bm!322926 m!5474701))

(assert (=> b!4628734 m!5474683))

(declare-fun m!5474703 () Bool)

(assert (=> d!1458368 m!5474703))

(assert (=> d!1458368 m!5474649))

(declare-fun m!5474705 () Bool)

(assert (=> b!4628736 m!5474705))

(assert (=> bm!322925 m!5474509))

(declare-fun m!5474707 () Bool)

(assert (=> bm!322927 m!5474707))

(declare-fun m!5474709 () Bool)

(assert (=> b!4628733 m!5474709))

(assert (=> b!4628463 d!1458368))

(declare-fun bs!1025653 () Bool)

(declare-fun b!4628746 () Bool)

(assert (= bs!1025653 (and b!4628746 d!1458282)))

(declare-fun lambda!193016 () Int)

(assert (=> bs!1025653 (not (= lambda!193016 lambda!192923))))

(declare-fun bs!1025654 () Bool)

(assert (= bs!1025654 (and b!4628746 b!4628689)))

(assert (=> bs!1025654 (= lambda!193016 lambda!192968)))

(declare-fun bs!1025655 () Bool)

(assert (= bs!1025655 (and b!4628746 b!4628732)))

(assert (=> bs!1025655 (= lambda!193016 lambda!193013)))

(declare-fun bs!1025656 () Bool)

(assert (= bs!1025656 (and b!4628746 b!4628686)))

(assert (=> bs!1025656 (= (= (ListMap!4308 Nil!51572) lt!1787848) (= lambda!193016 lambda!192970))))

(assert (=> bs!1025655 (= (= (ListMap!4308 Nil!51572) lt!1787981) (= lambda!193016 lambda!193014))))

(declare-fun bs!1025657 () Bool)

(assert (= bs!1025657 (and b!4628746 b!4628710)))

(assert (=> bs!1025657 (= lambda!193016 lambda!193004)))

(assert (=> bs!1025656 (= lambda!193016 lambda!192969)))

(declare-fun bs!1025658 () Bool)

(assert (= bs!1025658 (and b!4628746 d!1458332)))

(assert (=> bs!1025658 (not (= lambda!193016 lambda!192939))))

(declare-fun bs!1025659 () Bool)

(assert (= bs!1025659 (and b!4628746 d!1458348)))

(assert (=> bs!1025659 (= (= (ListMap!4308 Nil!51572) lt!1787923) (= lambda!193016 lambda!193010))))

(declare-fun bs!1025660 () Bool)

(assert (= bs!1025660 (and b!4628746 b!4628735)))

(assert (=> bs!1025660 (= lambda!193016 lambda!193012)))

(declare-fun bs!1025661 () Bool)

(assert (= bs!1025661 (and b!4628746 d!1458336)))

(assert (=> bs!1025661 (= (= (ListMap!4308 Nil!51572) lt!1787849) (= lambda!193016 lambda!192971))))

(declare-fun bs!1025662 () Bool)

(assert (= bs!1025662 (and b!4628746 d!1458368)))

(assert (=> bs!1025662 (= (= (ListMap!4308 Nil!51572) lt!1787982) (= lambda!193016 lambda!193015))))

(declare-fun bs!1025663 () Bool)

(assert (= bs!1025663 (and b!4628746 b!4628707)))

(assert (=> bs!1025663 (= lambda!193016 lambda!193005)))

(assert (=> bs!1025663 (= (= (ListMap!4308 Nil!51572) lt!1787922) (= lambda!193016 lambda!193006))))

(assert (=> b!4628746 true))

(declare-fun bs!1025664 () Bool)

(declare-fun b!4628743 () Bool)

(assert (= bs!1025664 (and b!4628743 d!1458282)))

(declare-fun lambda!193017 () Int)

(assert (=> bs!1025664 (not (= lambda!193017 lambda!192923))))

(declare-fun bs!1025665 () Bool)

(assert (= bs!1025665 (and b!4628743 b!4628689)))

(assert (=> bs!1025665 (= lambda!193017 lambda!192968)))

(declare-fun bs!1025666 () Bool)

(assert (= bs!1025666 (and b!4628743 b!4628732)))

(assert (=> bs!1025666 (= lambda!193017 lambda!193013)))

(declare-fun bs!1025667 () Bool)

(assert (= bs!1025667 (and b!4628743 b!4628686)))

(assert (=> bs!1025667 (= (= (ListMap!4308 Nil!51572) lt!1787848) (= lambda!193017 lambda!192970))))

(assert (=> bs!1025666 (= (= (ListMap!4308 Nil!51572) lt!1787981) (= lambda!193017 lambda!193014))))

(declare-fun bs!1025668 () Bool)

(assert (= bs!1025668 (and b!4628743 b!4628710)))

(assert (=> bs!1025668 (= lambda!193017 lambda!193004)))

(assert (=> bs!1025667 (= lambda!193017 lambda!192969)))

(declare-fun bs!1025669 () Bool)

(assert (= bs!1025669 (and b!4628743 d!1458332)))

(assert (=> bs!1025669 (not (= lambda!193017 lambda!192939))))

(declare-fun bs!1025670 () Bool)

(assert (= bs!1025670 (and b!4628743 b!4628735)))

(assert (=> bs!1025670 (= lambda!193017 lambda!193012)))

(declare-fun bs!1025671 () Bool)

(assert (= bs!1025671 (and b!4628743 d!1458336)))

(assert (=> bs!1025671 (= (= (ListMap!4308 Nil!51572) lt!1787849) (= lambda!193017 lambda!192971))))

(declare-fun bs!1025672 () Bool)

(assert (= bs!1025672 (and b!4628743 d!1458368)))

(assert (=> bs!1025672 (= (= (ListMap!4308 Nil!51572) lt!1787982) (= lambda!193017 lambda!193015))))

(declare-fun bs!1025673 () Bool)

(assert (= bs!1025673 (and b!4628743 d!1458348)))

(assert (=> bs!1025673 (= (= (ListMap!4308 Nil!51572) lt!1787923) (= lambda!193017 lambda!193010))))

(declare-fun bs!1025674 () Bool)

(assert (= bs!1025674 (and b!4628743 b!4628746)))

(assert (=> bs!1025674 (= lambda!193017 lambda!193016)))

(declare-fun bs!1025675 () Bool)

(assert (= bs!1025675 (and b!4628743 b!4628707)))

(assert (=> bs!1025675 (= lambda!193017 lambda!193005)))

(assert (=> bs!1025675 (= (= (ListMap!4308 Nil!51572) lt!1787922) (= lambda!193017 lambda!193006))))

(assert (=> b!4628743 true))

(declare-fun lambda!193018 () Int)

(assert (=> bs!1025664 (not (= lambda!193018 lambda!192923))))

(declare-fun lt!1788014 () ListMap!4307)

(assert (=> bs!1025665 (= (= lt!1788014 (ListMap!4308 Nil!51572)) (= lambda!193018 lambda!192968))))

(assert (=> bs!1025666 (= (= lt!1788014 (ListMap!4308 Nil!51572)) (= lambda!193018 lambda!193013))))

(assert (=> bs!1025667 (= (= lt!1788014 lt!1787848) (= lambda!193018 lambda!192970))))

(assert (=> bs!1025666 (= (= lt!1788014 lt!1787981) (= lambda!193018 lambda!193014))))

(assert (=> bs!1025668 (= (= lt!1788014 (ListMap!4308 Nil!51572)) (= lambda!193018 lambda!193004))))

(assert (=> bs!1025667 (= (= lt!1788014 (ListMap!4308 Nil!51572)) (= lambda!193018 lambda!192969))))

(assert (=> bs!1025670 (= (= lt!1788014 (ListMap!4308 Nil!51572)) (= lambda!193018 lambda!193012))))

(assert (=> bs!1025671 (= (= lt!1788014 lt!1787849) (= lambda!193018 lambda!192971))))

(assert (=> bs!1025672 (= (= lt!1788014 lt!1787982) (= lambda!193018 lambda!193015))))

(assert (=> bs!1025669 (not (= lambda!193018 lambda!192939))))

(assert (=> b!4628743 (= (= lt!1788014 (ListMap!4308 Nil!51572)) (= lambda!193018 lambda!193017))))

(assert (=> bs!1025673 (= (= lt!1788014 lt!1787923) (= lambda!193018 lambda!193010))))

(assert (=> bs!1025674 (= (= lt!1788014 (ListMap!4308 Nil!51572)) (= lambda!193018 lambda!193016))))

(assert (=> bs!1025675 (= (= lt!1788014 (ListMap!4308 Nil!51572)) (= lambda!193018 lambda!193005))))

(assert (=> bs!1025675 (= (= lt!1788014 lt!1787922) (= lambda!193018 lambda!193006))))

(assert (=> b!4628743 true))

(declare-fun bs!1025676 () Bool)

(declare-fun d!1458372 () Bool)

(assert (= bs!1025676 (and d!1458372 d!1458282)))

(declare-fun lambda!193019 () Int)

(assert (=> bs!1025676 (not (= lambda!193019 lambda!192923))))

(declare-fun bs!1025677 () Bool)

(assert (= bs!1025677 (and d!1458372 b!4628689)))

(declare-fun lt!1788015 () ListMap!4307)

(assert (=> bs!1025677 (= (= lt!1788015 (ListMap!4308 Nil!51572)) (= lambda!193019 lambda!192968))))

(declare-fun bs!1025678 () Bool)

(assert (= bs!1025678 (and d!1458372 b!4628732)))

(assert (=> bs!1025678 (= (= lt!1788015 (ListMap!4308 Nil!51572)) (= lambda!193019 lambda!193013))))

(declare-fun bs!1025679 () Bool)

(assert (= bs!1025679 (and d!1458372 b!4628686)))

(assert (=> bs!1025679 (= (= lt!1788015 lt!1787848) (= lambda!193019 lambda!192970))))

(assert (=> bs!1025678 (= (= lt!1788015 lt!1787981) (= lambda!193019 lambda!193014))))

(declare-fun bs!1025680 () Bool)

(assert (= bs!1025680 (and d!1458372 b!4628710)))

(assert (=> bs!1025680 (= (= lt!1788015 (ListMap!4308 Nil!51572)) (= lambda!193019 lambda!193004))))

(assert (=> bs!1025679 (= (= lt!1788015 (ListMap!4308 Nil!51572)) (= lambda!193019 lambda!192969))))

(declare-fun bs!1025681 () Bool)

(assert (= bs!1025681 (and d!1458372 b!4628735)))

(assert (=> bs!1025681 (= (= lt!1788015 (ListMap!4308 Nil!51572)) (= lambda!193019 lambda!193012))))

(declare-fun bs!1025682 () Bool)

(assert (= bs!1025682 (and d!1458372 d!1458336)))

(assert (=> bs!1025682 (= (= lt!1788015 lt!1787849) (= lambda!193019 lambda!192971))))

(declare-fun bs!1025683 () Bool)

(assert (= bs!1025683 (and d!1458372 b!4628743)))

(assert (=> bs!1025683 (= (= lt!1788015 lt!1788014) (= lambda!193019 lambda!193018))))

(declare-fun bs!1025684 () Bool)

(assert (= bs!1025684 (and d!1458372 d!1458368)))

(assert (=> bs!1025684 (= (= lt!1788015 lt!1787982) (= lambda!193019 lambda!193015))))

(declare-fun bs!1025685 () Bool)

(assert (= bs!1025685 (and d!1458372 d!1458332)))

(assert (=> bs!1025685 (not (= lambda!193019 lambda!192939))))

(assert (=> bs!1025683 (= (= lt!1788015 (ListMap!4308 Nil!51572)) (= lambda!193019 lambda!193017))))

(declare-fun bs!1025686 () Bool)

(assert (= bs!1025686 (and d!1458372 d!1458348)))

(assert (=> bs!1025686 (= (= lt!1788015 lt!1787923) (= lambda!193019 lambda!193010))))

(declare-fun bs!1025687 () Bool)

(assert (= bs!1025687 (and d!1458372 b!4628746)))

(assert (=> bs!1025687 (= (= lt!1788015 (ListMap!4308 Nil!51572)) (= lambda!193019 lambda!193016))))

(declare-fun bs!1025688 () Bool)

(assert (= bs!1025688 (and d!1458372 b!4628707)))

(assert (=> bs!1025688 (= (= lt!1788015 (ListMap!4308 Nil!51572)) (= lambda!193019 lambda!193005))))

(assert (=> bs!1025688 (= (= lt!1788015 lt!1787922) (= lambda!193019 lambda!193006))))

(assert (=> d!1458372 true))

(declare-fun bm!322928 () Bool)

(declare-fun call!322934 () Unit!112758)

(assert (=> bm!322928 (= call!322934 (lemmaContainsAllItsOwnKeys!517 (ListMap!4308 Nil!51572)))))

(declare-fun e!2887412 () ListMap!4307)

(assert (=> b!4628743 (= e!2887412 lt!1788014)))

(declare-fun lt!1788009 () ListMap!4307)

(assert (=> b!4628743 (= lt!1788009 (+!1885 (ListMap!4308 Nil!51572) (h!57634 lt!1787554)))))

(assert (=> b!4628743 (= lt!1788014 (addToMapMapFromBucket!980 (t!358740 lt!1787554) (+!1885 (ListMap!4308 Nil!51572) (h!57634 lt!1787554))))))

(declare-fun lt!1788001 () Unit!112758)

(assert (=> b!4628743 (= lt!1788001 call!322934)))

(declare-fun call!322933 () Bool)

(assert (=> b!4628743 call!322933))

(declare-fun lt!1788006 () Unit!112758)

(assert (=> b!4628743 (= lt!1788006 lt!1788001)))

(assert (=> b!4628743 (forall!10845 (toList!5003 lt!1788009) lambda!193018)))

(declare-fun lt!1788019 () Unit!112758)

(declare-fun Unit!112813 () Unit!112758)

(assert (=> b!4628743 (= lt!1788019 Unit!112813)))

(assert (=> b!4628743 (forall!10845 (t!358740 lt!1787554) lambda!193018)))

(declare-fun lt!1788003 () Unit!112758)

(declare-fun Unit!112814 () Unit!112758)

(assert (=> b!4628743 (= lt!1788003 Unit!112814)))

(declare-fun lt!1788016 () Unit!112758)

(declare-fun Unit!112815 () Unit!112758)

(assert (=> b!4628743 (= lt!1788016 Unit!112815)))

(declare-fun lt!1788010 () Unit!112758)

(assert (=> b!4628743 (= lt!1788010 (forallContained!3077 (toList!5003 lt!1788009) lambda!193018 (h!57634 lt!1787554)))))

(assert (=> b!4628743 (contains!14640 lt!1788009 (_1!29555 (h!57634 lt!1787554)))))

(declare-fun lt!1788013 () Unit!112758)

(declare-fun Unit!112816 () Unit!112758)

(assert (=> b!4628743 (= lt!1788013 Unit!112816)))

(assert (=> b!4628743 (contains!14640 lt!1788014 (_1!29555 (h!57634 lt!1787554)))))

(declare-fun lt!1788021 () Unit!112758)

(declare-fun Unit!112817 () Unit!112758)

(assert (=> b!4628743 (= lt!1788021 Unit!112817)))

(assert (=> b!4628743 (forall!10845 lt!1787554 lambda!193018)))

(declare-fun lt!1788005 () Unit!112758)

(declare-fun Unit!112818 () Unit!112758)

(assert (=> b!4628743 (= lt!1788005 Unit!112818)))

(declare-fun call!322935 () Bool)

(assert (=> b!4628743 call!322935))

(declare-fun lt!1788008 () Unit!112758)

(declare-fun Unit!112819 () Unit!112758)

(assert (=> b!4628743 (= lt!1788008 Unit!112819)))

(declare-fun lt!1788020 () Unit!112758)

(declare-fun Unit!112820 () Unit!112758)

(assert (=> b!4628743 (= lt!1788020 Unit!112820)))

(declare-fun lt!1788004 () Unit!112758)

(assert (=> b!4628743 (= lt!1788004 (addForallContainsKeyThenBeforeAdding!516 (ListMap!4308 Nil!51572) lt!1788014 (_1!29555 (h!57634 lt!1787554)) (_2!29555 (h!57634 lt!1787554))))))

(assert (=> b!4628743 (forall!10845 (toList!5003 (ListMap!4308 Nil!51572)) lambda!193018)))

(declare-fun lt!1788007 () Unit!112758)

(assert (=> b!4628743 (= lt!1788007 lt!1788004)))

(assert (=> b!4628743 (forall!10845 (toList!5003 (ListMap!4308 Nil!51572)) lambda!193018)))

(declare-fun lt!1788018 () Unit!112758)

(declare-fun Unit!112821 () Unit!112758)

(assert (=> b!4628743 (= lt!1788018 Unit!112821)))

(declare-fun res!1941602 () Bool)

(assert (=> b!4628743 (= res!1941602 (forall!10845 lt!1787554 lambda!193018))))

(declare-fun e!2887410 () Bool)

(assert (=> b!4628743 (=> (not res!1941602) (not e!2887410))))

(assert (=> b!4628743 e!2887410))

(declare-fun lt!1788002 () Unit!112758)

(declare-fun Unit!112822 () Unit!112758)

(assert (=> b!4628743 (= lt!1788002 Unit!112822)))

(declare-fun b!4628744 () Bool)

(declare-fun e!2887411 () Bool)

(assert (=> b!4628744 (= e!2887411 (invariantList!1215 (toList!5003 lt!1788015)))))

(assert (=> d!1458372 e!2887411))

(declare-fun res!1941603 () Bool)

(assert (=> d!1458372 (=> (not res!1941603) (not e!2887411))))

(assert (=> d!1458372 (= res!1941603 (forall!10845 lt!1787554 lambda!193019))))

(assert (=> d!1458372 (= lt!1788015 e!2887412)))

(declare-fun c!792307 () Bool)

(assert (=> d!1458372 (= c!792307 (is-Nil!51572 lt!1787554))))

(assert (=> d!1458372 (noDuplicateKeys!1519 lt!1787554)))

(assert (=> d!1458372 (= (addToMapMapFromBucket!980 lt!1787554 (ListMap!4308 Nil!51572)) lt!1788015)))

(declare-fun bm!322929 () Bool)

(assert (=> bm!322929 (= call!322935 (forall!10845 (ite c!792307 (toList!5003 (ListMap!4308 Nil!51572)) (toList!5003 lt!1788009)) (ite c!792307 lambda!193016 lambda!193018)))))

(declare-fun bm!322930 () Bool)

(assert (=> bm!322930 (= call!322933 (forall!10845 (toList!5003 (ListMap!4308 Nil!51572)) (ite c!792307 lambda!193016 lambda!193017)))))

(declare-fun b!4628745 () Bool)

(assert (=> b!4628745 (= e!2887410 (forall!10845 (toList!5003 (ListMap!4308 Nil!51572)) lambda!193018))))

(assert (=> b!4628746 (= e!2887412 (ListMap!4308 Nil!51572))))

(declare-fun lt!1788012 () Unit!112758)

(assert (=> b!4628746 (= lt!1788012 call!322934)))

(assert (=> b!4628746 call!322933))

(declare-fun lt!1788017 () Unit!112758)

(assert (=> b!4628746 (= lt!1788017 lt!1788012)))

(assert (=> b!4628746 call!322935))

(declare-fun lt!1788011 () Unit!112758)

(declare-fun Unit!112823 () Unit!112758)

(assert (=> b!4628746 (= lt!1788011 Unit!112823)))

(declare-fun b!4628747 () Bool)

(declare-fun res!1941604 () Bool)

(assert (=> b!4628747 (=> (not res!1941604) (not e!2887411))))

(assert (=> b!4628747 (= res!1941604 (forall!10845 (toList!5003 (ListMap!4308 Nil!51572)) lambda!193019))))

(assert (= (and d!1458372 c!792307) b!4628746))

(assert (= (and d!1458372 (not c!792307)) b!4628743))

(assert (= (and b!4628743 res!1941602) b!4628745))

(assert (= (or b!4628746 b!4628743) bm!322928))

(assert (= (or b!4628746 b!4628743) bm!322929))

(assert (= (or b!4628746 b!4628743) bm!322930))

(assert (= (and d!1458372 res!1941603) b!4628747))

(assert (= (and b!4628747 res!1941604) b!4628744))

(declare-fun m!5474715 () Bool)

(assert (=> b!4628743 m!5474715))

(declare-fun m!5474717 () Bool)

(assert (=> b!4628743 m!5474717))

(declare-fun m!5474719 () Bool)

(assert (=> b!4628743 m!5474719))

(declare-fun m!5474721 () Bool)

(assert (=> b!4628743 m!5474721))

(declare-fun m!5474723 () Bool)

(assert (=> b!4628743 m!5474723))

(assert (=> b!4628743 m!5474715))

(assert (=> b!4628743 m!5474717))

(declare-fun m!5474725 () Bool)

(assert (=> b!4628743 m!5474725))

(declare-fun m!5474727 () Bool)

(assert (=> b!4628743 m!5474727))

(declare-fun m!5474729 () Bool)

(assert (=> b!4628743 m!5474729))

(declare-fun m!5474731 () Bool)

(assert (=> b!4628743 m!5474731))

(assert (=> b!4628743 m!5474719))

(declare-fun m!5474733 () Bool)

(assert (=> b!4628743 m!5474733))

(declare-fun m!5474735 () Bool)

(assert (=> bm!322929 m!5474735))

(assert (=> b!4628745 m!5474717))

(declare-fun m!5474737 () Bool)

(assert (=> d!1458372 m!5474737))

(assert (=> d!1458372 m!5474311))

(declare-fun m!5474739 () Bool)

(assert (=> b!4628747 m!5474739))

(assert (=> bm!322928 m!5474509))

(declare-fun m!5474741 () Bool)

(assert (=> bm!322930 m!5474741))

(declare-fun m!5474743 () Bool)

(assert (=> b!4628744 m!5474743))

(assert (=> b!4628463 d!1458372))

(declare-fun bs!1025689 () Bool)

(declare-fun d!1458376 () Bool)

(assert (= bs!1025689 (and d!1458376 d!1458316)))

(declare-fun lambda!193020 () Int)

(assert (=> bs!1025689 (= lambda!193020 lambda!192936)))

(declare-fun bs!1025690 () Bool)

(assert (= bs!1025690 (and d!1458376 d!1458292)))

(assert (=> bs!1025690 (= lambda!193020 lambda!192926)))

(declare-fun bs!1025691 () Bool)

(assert (= bs!1025691 (and d!1458376 b!4628460)))

(assert (=> bs!1025691 (= lambda!193020 lambda!192917)))

(declare-fun bs!1025692 () Bool)

(assert (= bs!1025692 (and d!1458376 d!1458298)))

(assert (=> bs!1025692 (= lambda!193020 lambda!192929)))

(declare-fun bs!1025693 () Bool)

(assert (= bs!1025693 (and d!1458376 d!1458326)))

(assert (=> bs!1025693 (= lambda!193020 lambda!192937)))

(declare-fun bs!1025694 () Bool)

(assert (= bs!1025694 (and d!1458376 d!1458342)))

(assert (=> bs!1025694 (= lambda!193020 lambda!192987)))

(declare-fun bs!1025695 () Bool)

(assert (= bs!1025695 (and d!1458376 d!1458328)))

(assert (=> bs!1025695 (= lambda!193020 lambda!192938)))

(declare-fun bs!1025696 () Bool)

(assert (= bs!1025696 (and d!1458376 d!1458338)))

(assert (=> bs!1025696 (= lambda!193020 lambda!192972)))

(declare-fun lt!1788022 () ListMap!4307)

(assert (=> d!1458376 (invariantList!1215 (toList!5003 lt!1788022))))

(declare-fun e!2887413 () ListMap!4307)

(assert (=> d!1458376 (= lt!1788022 e!2887413)))

(declare-fun c!792308 () Bool)

(assert (=> d!1458376 (= c!792308 (is-Cons!51573 (Cons!51573 (tuple2!52525 hash!414 lt!1787554) Nil!51573)))))

(assert (=> d!1458376 (forall!10846 (Cons!51573 (tuple2!52525 hash!414 lt!1787554) Nil!51573) lambda!193020)))

(assert (=> d!1458376 (= (extractMap!1575 (Cons!51573 (tuple2!52525 hash!414 lt!1787554) Nil!51573)) lt!1788022)))

(declare-fun b!4628748 () Bool)

(assert (=> b!4628748 (= e!2887413 (addToMapMapFromBucket!980 (_2!29556 (h!57635 (Cons!51573 (tuple2!52525 hash!414 lt!1787554) Nil!51573))) (extractMap!1575 (t!358741 (Cons!51573 (tuple2!52525 hash!414 lt!1787554) Nil!51573)))))))

(declare-fun b!4628749 () Bool)

(assert (=> b!4628749 (= e!2887413 (ListMap!4308 Nil!51572))))

(assert (= (and d!1458376 c!792308) b!4628748))

(assert (= (and d!1458376 (not c!792308)) b!4628749))

(declare-fun m!5474745 () Bool)

(assert (=> d!1458376 m!5474745))

(declare-fun m!5474747 () Bool)

(assert (=> d!1458376 m!5474747))

(declare-fun m!5474749 () Bool)

(assert (=> b!4628748 m!5474749))

(assert (=> b!4628748 m!5474749))

(declare-fun m!5474751 () Bool)

(assert (=> b!4628748 m!5474751))

(assert (=> b!4628463 d!1458376))

(declare-fun bs!1025697 () Bool)

(declare-fun b!4628757 () Bool)

(assert (= bs!1025697 (and b!4628757 d!1458282)))

(declare-fun lambda!193023 () Int)

(assert (=> bs!1025697 (not (= lambda!193023 lambda!192923))))

(declare-fun bs!1025698 () Bool)

(assert (= bs!1025698 (and b!4628757 b!4628689)))

(assert (=> bs!1025698 (= (= lt!1787550 (ListMap!4308 Nil!51572)) (= lambda!193023 lambda!192968))))

(declare-fun bs!1025699 () Bool)

(assert (= bs!1025699 (and b!4628757 b!4628732)))

(assert (=> bs!1025699 (= (= lt!1787550 (ListMap!4308 Nil!51572)) (= lambda!193023 lambda!193013))))

(declare-fun bs!1025700 () Bool)

(assert (= bs!1025700 (and b!4628757 b!4628686)))

(assert (=> bs!1025700 (= (= lt!1787550 lt!1787848) (= lambda!193023 lambda!192970))))

(assert (=> bs!1025699 (= (= lt!1787550 lt!1787981) (= lambda!193023 lambda!193014))))

(declare-fun bs!1025701 () Bool)

(assert (= bs!1025701 (and b!4628757 d!1458372)))

(assert (=> bs!1025701 (= (= lt!1787550 lt!1788015) (= lambda!193023 lambda!193019))))

(declare-fun bs!1025702 () Bool)

(assert (= bs!1025702 (and b!4628757 b!4628710)))

(assert (=> bs!1025702 (= (= lt!1787550 (ListMap!4308 Nil!51572)) (= lambda!193023 lambda!193004))))

(assert (=> bs!1025700 (= (= lt!1787550 (ListMap!4308 Nil!51572)) (= lambda!193023 lambda!192969))))

(declare-fun bs!1025703 () Bool)

(assert (= bs!1025703 (and b!4628757 b!4628735)))

(assert (=> bs!1025703 (= (= lt!1787550 (ListMap!4308 Nil!51572)) (= lambda!193023 lambda!193012))))

(declare-fun bs!1025704 () Bool)

(assert (= bs!1025704 (and b!4628757 d!1458336)))

(assert (=> bs!1025704 (= (= lt!1787550 lt!1787849) (= lambda!193023 lambda!192971))))

(declare-fun bs!1025705 () Bool)

(assert (= bs!1025705 (and b!4628757 b!4628743)))

(assert (=> bs!1025705 (= (= lt!1787550 lt!1788014) (= lambda!193023 lambda!193018))))

(declare-fun bs!1025706 () Bool)

(assert (= bs!1025706 (and b!4628757 d!1458368)))

(assert (=> bs!1025706 (= (= lt!1787550 lt!1787982) (= lambda!193023 lambda!193015))))

(declare-fun bs!1025707 () Bool)

(assert (= bs!1025707 (and b!4628757 d!1458332)))

(assert (=> bs!1025707 (not (= lambda!193023 lambda!192939))))

(assert (=> bs!1025705 (= (= lt!1787550 (ListMap!4308 Nil!51572)) (= lambda!193023 lambda!193017))))

(declare-fun bs!1025709 () Bool)

(assert (= bs!1025709 (and b!4628757 d!1458348)))

(assert (=> bs!1025709 (= (= lt!1787550 lt!1787923) (= lambda!193023 lambda!193010))))

(declare-fun bs!1025710 () Bool)

(assert (= bs!1025710 (and b!4628757 b!4628746)))

(assert (=> bs!1025710 (= (= lt!1787550 (ListMap!4308 Nil!51572)) (= lambda!193023 lambda!193016))))

(declare-fun bs!1025711 () Bool)

(assert (= bs!1025711 (and b!4628757 b!4628707)))

(assert (=> bs!1025711 (= (= lt!1787550 (ListMap!4308 Nil!51572)) (= lambda!193023 lambda!193005))))

(assert (=> bs!1025711 (= (= lt!1787550 lt!1787922) (= lambda!193023 lambda!193006))))

(assert (=> b!4628757 true))

(declare-fun bs!1025712 () Bool)

(declare-fun b!4628754 () Bool)

(assert (= bs!1025712 (and b!4628754 d!1458282)))

(declare-fun lambda!193025 () Int)

(assert (=> bs!1025712 (not (= lambda!193025 lambda!192923))))

(declare-fun bs!1025713 () Bool)

(assert (= bs!1025713 (and b!4628754 b!4628689)))

(assert (=> bs!1025713 (= (= lt!1787550 (ListMap!4308 Nil!51572)) (= lambda!193025 lambda!192968))))

(declare-fun bs!1025715 () Bool)

(assert (= bs!1025715 (and b!4628754 b!4628732)))

(assert (=> bs!1025715 (= (= lt!1787550 (ListMap!4308 Nil!51572)) (= lambda!193025 lambda!193013))))

(declare-fun bs!1025716 () Bool)

(assert (= bs!1025716 (and b!4628754 b!4628686)))

(assert (=> bs!1025716 (= (= lt!1787550 lt!1787848) (= lambda!193025 lambda!192970))))

(assert (=> bs!1025715 (= (= lt!1787550 lt!1787981) (= lambda!193025 lambda!193014))))

(declare-fun bs!1025718 () Bool)

(assert (= bs!1025718 (and b!4628754 d!1458372)))

(assert (=> bs!1025718 (= (= lt!1787550 lt!1788015) (= lambda!193025 lambda!193019))))

(assert (=> bs!1025716 (= (= lt!1787550 (ListMap!4308 Nil!51572)) (= lambda!193025 lambda!192969))))

(declare-fun bs!1025719 () Bool)

(assert (= bs!1025719 (and b!4628754 b!4628735)))

(assert (=> bs!1025719 (= (= lt!1787550 (ListMap!4308 Nil!51572)) (= lambda!193025 lambda!193012))))

(declare-fun bs!1025720 () Bool)

(assert (= bs!1025720 (and b!4628754 d!1458336)))

(assert (=> bs!1025720 (= (= lt!1787550 lt!1787849) (= lambda!193025 lambda!192971))))

(declare-fun bs!1025721 () Bool)

(assert (= bs!1025721 (and b!4628754 b!4628743)))

(assert (=> bs!1025721 (= (= lt!1787550 lt!1788014) (= lambda!193025 lambda!193018))))

(declare-fun bs!1025722 () Bool)

(assert (= bs!1025722 (and b!4628754 d!1458368)))

(assert (=> bs!1025722 (= (= lt!1787550 lt!1787982) (= lambda!193025 lambda!193015))))

(declare-fun bs!1025723 () Bool)

(assert (= bs!1025723 (and b!4628754 b!4628757)))

(assert (=> bs!1025723 (= lambda!193025 lambda!193023)))

(declare-fun bs!1025724 () Bool)

(assert (= bs!1025724 (and b!4628754 b!4628710)))

(assert (=> bs!1025724 (= (= lt!1787550 (ListMap!4308 Nil!51572)) (= lambda!193025 lambda!193004))))

(declare-fun bs!1025725 () Bool)

(assert (= bs!1025725 (and b!4628754 d!1458332)))

(assert (=> bs!1025725 (not (= lambda!193025 lambda!192939))))

(assert (=> bs!1025721 (= (= lt!1787550 (ListMap!4308 Nil!51572)) (= lambda!193025 lambda!193017))))

(declare-fun bs!1025726 () Bool)

(assert (= bs!1025726 (and b!4628754 d!1458348)))

(assert (=> bs!1025726 (= (= lt!1787550 lt!1787923) (= lambda!193025 lambda!193010))))

(declare-fun bs!1025727 () Bool)

(assert (= bs!1025727 (and b!4628754 b!4628746)))

(assert (=> bs!1025727 (= (= lt!1787550 (ListMap!4308 Nil!51572)) (= lambda!193025 lambda!193016))))

(declare-fun bs!1025728 () Bool)

(assert (= bs!1025728 (and b!4628754 b!4628707)))

(assert (=> bs!1025728 (= (= lt!1787550 (ListMap!4308 Nil!51572)) (= lambda!193025 lambda!193005))))

(assert (=> bs!1025728 (= (= lt!1787550 lt!1787922) (= lambda!193025 lambda!193006))))

(assert (=> b!4628754 true))

(declare-fun lambda!193028 () Int)

(assert (=> bs!1025712 (not (= lambda!193028 lambda!192923))))

(declare-fun lt!1788038 () ListMap!4307)

(assert (=> bs!1025713 (= (= lt!1788038 (ListMap!4308 Nil!51572)) (= lambda!193028 lambda!192968))))

(assert (=> bs!1025715 (= (= lt!1788038 (ListMap!4308 Nil!51572)) (= lambda!193028 lambda!193013))))

(assert (=> bs!1025716 (= (= lt!1788038 lt!1787848) (= lambda!193028 lambda!192970))))

(assert (=> bs!1025715 (= (= lt!1788038 lt!1787981) (= lambda!193028 lambda!193014))))

(assert (=> bs!1025716 (= (= lt!1788038 (ListMap!4308 Nil!51572)) (= lambda!193028 lambda!192969))))

(assert (=> bs!1025719 (= (= lt!1788038 (ListMap!4308 Nil!51572)) (= lambda!193028 lambda!193012))))

(assert (=> bs!1025720 (= (= lt!1788038 lt!1787849) (= lambda!193028 lambda!192971))))

(assert (=> bs!1025721 (= (= lt!1788038 lt!1788014) (= lambda!193028 lambda!193018))))

(assert (=> bs!1025722 (= (= lt!1788038 lt!1787982) (= lambda!193028 lambda!193015))))

(assert (=> b!4628754 (= (= lt!1788038 lt!1787550) (= lambda!193028 lambda!193025))))

(assert (=> bs!1025718 (= (= lt!1788038 lt!1788015) (= lambda!193028 lambda!193019))))

(assert (=> bs!1025723 (= (= lt!1788038 lt!1787550) (= lambda!193028 lambda!193023))))

(assert (=> bs!1025724 (= (= lt!1788038 (ListMap!4308 Nil!51572)) (= lambda!193028 lambda!193004))))

(assert (=> bs!1025725 (not (= lambda!193028 lambda!192939))))

(assert (=> bs!1025721 (= (= lt!1788038 (ListMap!4308 Nil!51572)) (= lambda!193028 lambda!193017))))

(assert (=> bs!1025726 (= (= lt!1788038 lt!1787923) (= lambda!193028 lambda!193010))))

(assert (=> bs!1025727 (= (= lt!1788038 (ListMap!4308 Nil!51572)) (= lambda!193028 lambda!193016))))

(assert (=> bs!1025728 (= (= lt!1788038 (ListMap!4308 Nil!51572)) (= lambda!193028 lambda!193005))))

(assert (=> bs!1025728 (= (= lt!1788038 lt!1787922) (= lambda!193028 lambda!193006))))

(assert (=> b!4628754 true))

(declare-fun bs!1025736 () Bool)

(declare-fun d!1458378 () Bool)

(assert (= bs!1025736 (and d!1458378 d!1458282)))

(declare-fun lambda!193031 () Int)

(assert (=> bs!1025736 (not (= lambda!193031 lambda!192923))))

(declare-fun bs!1025737 () Bool)

(assert (= bs!1025737 (and d!1458378 b!4628689)))

(declare-fun lt!1788039 () ListMap!4307)

(assert (=> bs!1025737 (= (= lt!1788039 (ListMap!4308 Nil!51572)) (= lambda!193031 lambda!192968))))

(declare-fun bs!1025738 () Bool)

(assert (= bs!1025738 (and d!1458378 b!4628732)))

(assert (=> bs!1025738 (= (= lt!1788039 (ListMap!4308 Nil!51572)) (= lambda!193031 lambda!193013))))

(declare-fun bs!1025739 () Bool)

(assert (= bs!1025739 (and d!1458378 b!4628686)))

(assert (=> bs!1025739 (= (= lt!1788039 lt!1787848) (= lambda!193031 lambda!192970))))

(assert (=> bs!1025738 (= (= lt!1788039 lt!1787981) (= lambda!193031 lambda!193014))))

(assert (=> bs!1025739 (= (= lt!1788039 (ListMap!4308 Nil!51572)) (= lambda!193031 lambda!192969))))

(declare-fun bs!1025742 () Bool)

(assert (= bs!1025742 (and d!1458378 b!4628735)))

(assert (=> bs!1025742 (= (= lt!1788039 (ListMap!4308 Nil!51572)) (= lambda!193031 lambda!193012))))

(declare-fun bs!1025744 () Bool)

(assert (= bs!1025744 (and d!1458378 d!1458336)))

(assert (=> bs!1025744 (= (= lt!1788039 lt!1787849) (= lambda!193031 lambda!192971))))

(declare-fun bs!1025745 () Bool)

(assert (= bs!1025745 (and d!1458378 b!4628743)))

(assert (=> bs!1025745 (= (= lt!1788039 lt!1788014) (= lambda!193031 lambda!193018))))

(declare-fun bs!1025747 () Bool)

(assert (= bs!1025747 (and d!1458378 d!1458368)))

(assert (=> bs!1025747 (= (= lt!1788039 lt!1787982) (= lambda!193031 lambda!193015))))

(declare-fun bs!1025748 () Bool)

(assert (= bs!1025748 (and d!1458378 b!4628754)))

(assert (=> bs!1025748 (= (= lt!1788039 lt!1788038) (= lambda!193031 lambda!193028))))

(assert (=> bs!1025748 (= (= lt!1788039 lt!1787550) (= lambda!193031 lambda!193025))))

(declare-fun bs!1025750 () Bool)

(assert (= bs!1025750 (and d!1458378 d!1458372)))

(assert (=> bs!1025750 (= (= lt!1788039 lt!1788015) (= lambda!193031 lambda!193019))))

(declare-fun bs!1025751 () Bool)

(assert (= bs!1025751 (and d!1458378 b!4628757)))

(assert (=> bs!1025751 (= (= lt!1788039 lt!1787550) (= lambda!193031 lambda!193023))))

(declare-fun bs!1025752 () Bool)

(assert (= bs!1025752 (and d!1458378 b!4628710)))

(assert (=> bs!1025752 (= (= lt!1788039 (ListMap!4308 Nil!51572)) (= lambda!193031 lambda!193004))))

(declare-fun bs!1025753 () Bool)

(assert (= bs!1025753 (and d!1458378 d!1458332)))

(assert (=> bs!1025753 (not (= lambda!193031 lambda!192939))))

(assert (=> bs!1025745 (= (= lt!1788039 (ListMap!4308 Nil!51572)) (= lambda!193031 lambda!193017))))

(declare-fun bs!1025754 () Bool)

(assert (= bs!1025754 (and d!1458378 d!1458348)))

(assert (=> bs!1025754 (= (= lt!1788039 lt!1787923) (= lambda!193031 lambda!193010))))

(declare-fun bs!1025755 () Bool)

(assert (= bs!1025755 (and d!1458378 b!4628746)))

(assert (=> bs!1025755 (= (= lt!1788039 (ListMap!4308 Nil!51572)) (= lambda!193031 lambda!193016))))

(declare-fun bs!1025756 () Bool)

(assert (= bs!1025756 (and d!1458378 b!4628707)))

(assert (=> bs!1025756 (= (= lt!1788039 (ListMap!4308 Nil!51572)) (= lambda!193031 lambda!193005))))

(assert (=> bs!1025756 (= (= lt!1788039 lt!1787922) (= lambda!193031 lambda!193006))))

(assert (=> d!1458378 true))

(declare-fun bm!322931 () Bool)

(declare-fun call!322937 () Unit!112758)

(assert (=> bm!322931 (= call!322937 (lemmaContainsAllItsOwnKeys!517 lt!1787550))))

(declare-fun e!2887418 () ListMap!4307)

(assert (=> b!4628754 (= e!2887418 lt!1788038)))

(declare-fun lt!1788033 () ListMap!4307)

(assert (=> b!4628754 (= lt!1788033 (+!1885 lt!1787550 (h!57634 oldBucket!40)))))

(assert (=> b!4628754 (= lt!1788038 (addToMapMapFromBucket!980 (t!358740 oldBucket!40) (+!1885 lt!1787550 (h!57634 oldBucket!40))))))

(declare-fun lt!1788025 () Unit!112758)

(assert (=> b!4628754 (= lt!1788025 call!322937)))

(declare-fun call!322936 () Bool)

(assert (=> b!4628754 call!322936))

(declare-fun lt!1788030 () Unit!112758)

(assert (=> b!4628754 (= lt!1788030 lt!1788025)))

(assert (=> b!4628754 (forall!10845 (toList!5003 lt!1788033) lambda!193028)))

(declare-fun lt!1788043 () Unit!112758)

(declare-fun Unit!112835 () Unit!112758)

(assert (=> b!4628754 (= lt!1788043 Unit!112835)))

(assert (=> b!4628754 (forall!10845 (t!358740 oldBucket!40) lambda!193028)))

(declare-fun lt!1788027 () Unit!112758)

(declare-fun Unit!112836 () Unit!112758)

(assert (=> b!4628754 (= lt!1788027 Unit!112836)))

(declare-fun lt!1788040 () Unit!112758)

(declare-fun Unit!112837 () Unit!112758)

(assert (=> b!4628754 (= lt!1788040 Unit!112837)))

(declare-fun lt!1788034 () Unit!112758)

(assert (=> b!4628754 (= lt!1788034 (forallContained!3077 (toList!5003 lt!1788033) lambda!193028 (h!57634 oldBucket!40)))))

(assert (=> b!4628754 (contains!14640 lt!1788033 (_1!29555 (h!57634 oldBucket!40)))))

(declare-fun lt!1788037 () Unit!112758)

(declare-fun Unit!112838 () Unit!112758)

(assert (=> b!4628754 (= lt!1788037 Unit!112838)))

(assert (=> b!4628754 (contains!14640 lt!1788038 (_1!29555 (h!57634 oldBucket!40)))))

(declare-fun lt!1788045 () Unit!112758)

(declare-fun Unit!112839 () Unit!112758)

(assert (=> b!4628754 (= lt!1788045 Unit!112839)))

(assert (=> b!4628754 (forall!10845 oldBucket!40 lambda!193028)))

(declare-fun lt!1788029 () Unit!112758)

(declare-fun Unit!112840 () Unit!112758)

(assert (=> b!4628754 (= lt!1788029 Unit!112840)))

(declare-fun call!322938 () Bool)

(assert (=> b!4628754 call!322938))

(declare-fun lt!1788032 () Unit!112758)

(declare-fun Unit!112841 () Unit!112758)

(assert (=> b!4628754 (= lt!1788032 Unit!112841)))

(declare-fun lt!1788044 () Unit!112758)

(declare-fun Unit!112842 () Unit!112758)

(assert (=> b!4628754 (= lt!1788044 Unit!112842)))

(declare-fun lt!1788028 () Unit!112758)

(assert (=> b!4628754 (= lt!1788028 (addForallContainsKeyThenBeforeAdding!516 lt!1787550 lt!1788038 (_1!29555 (h!57634 oldBucket!40)) (_2!29555 (h!57634 oldBucket!40))))))

(assert (=> b!4628754 (forall!10845 (toList!5003 lt!1787550) lambda!193028)))

(declare-fun lt!1788031 () Unit!112758)

(assert (=> b!4628754 (= lt!1788031 lt!1788028)))

(assert (=> b!4628754 (forall!10845 (toList!5003 lt!1787550) lambda!193028)))

(declare-fun lt!1788042 () Unit!112758)

(declare-fun Unit!112843 () Unit!112758)

(assert (=> b!4628754 (= lt!1788042 Unit!112843)))

(declare-fun res!1941605 () Bool)

(assert (=> b!4628754 (= res!1941605 (forall!10845 oldBucket!40 lambda!193028))))

(declare-fun e!2887416 () Bool)

(assert (=> b!4628754 (=> (not res!1941605) (not e!2887416))))

(assert (=> b!4628754 e!2887416))

(declare-fun lt!1788026 () Unit!112758)

(declare-fun Unit!112844 () Unit!112758)

(assert (=> b!4628754 (= lt!1788026 Unit!112844)))

(declare-fun b!4628755 () Bool)

(declare-fun e!2887417 () Bool)

(assert (=> b!4628755 (= e!2887417 (invariantList!1215 (toList!5003 lt!1788039)))))

(assert (=> d!1458378 e!2887417))

(declare-fun res!1941606 () Bool)

(assert (=> d!1458378 (=> (not res!1941606) (not e!2887417))))

(assert (=> d!1458378 (= res!1941606 (forall!10845 oldBucket!40 lambda!193031))))

(assert (=> d!1458378 (= lt!1788039 e!2887418)))

(declare-fun c!792311 () Bool)

(assert (=> d!1458378 (= c!792311 (is-Nil!51572 oldBucket!40))))

(assert (=> d!1458378 (noDuplicateKeys!1519 oldBucket!40)))

(assert (=> d!1458378 (= (addToMapMapFromBucket!980 oldBucket!40 lt!1787550) lt!1788039)))

(declare-fun bm!322932 () Bool)

(assert (=> bm!322932 (= call!322938 (forall!10845 (ite c!792311 (toList!5003 lt!1787550) (toList!5003 lt!1788033)) (ite c!792311 lambda!193023 lambda!193028)))))

(declare-fun bm!322933 () Bool)

(assert (=> bm!322933 (= call!322936 (forall!10845 (toList!5003 lt!1787550) (ite c!792311 lambda!193023 lambda!193025)))))

(declare-fun b!4628756 () Bool)

(assert (=> b!4628756 (= e!2887416 (forall!10845 (toList!5003 lt!1787550) lambda!193028))))

(assert (=> b!4628757 (= e!2887418 lt!1787550)))

(declare-fun lt!1788036 () Unit!112758)

(assert (=> b!4628757 (= lt!1788036 call!322937)))

(assert (=> b!4628757 call!322936))

(declare-fun lt!1788041 () Unit!112758)

(assert (=> b!4628757 (= lt!1788041 lt!1788036)))

(assert (=> b!4628757 call!322938))

(declare-fun lt!1788035 () Unit!112758)

(declare-fun Unit!112845 () Unit!112758)

(assert (=> b!4628757 (= lt!1788035 Unit!112845)))

(declare-fun b!4628758 () Bool)

(declare-fun res!1941607 () Bool)

(assert (=> b!4628758 (=> (not res!1941607) (not e!2887417))))

(assert (=> b!4628758 (= res!1941607 (forall!10845 (toList!5003 lt!1787550) lambda!193031))))

(assert (= (and d!1458378 c!792311) b!4628757))

(assert (= (and d!1458378 (not c!792311)) b!4628754))

(assert (= (and b!4628754 res!1941605) b!4628756))

(assert (= (or b!4628757 b!4628754) bm!322931))

(assert (= (or b!4628757 b!4628754) bm!322932))

(assert (= (or b!4628757 b!4628754) bm!322933))

(assert (= (and d!1458378 res!1941606) b!4628758))

(assert (= (and b!4628758 res!1941607) b!4628755))

(declare-fun m!5474803 () Bool)

(assert (=> b!4628754 m!5474803))

(declare-fun m!5474805 () Bool)

(assert (=> b!4628754 m!5474805))

(declare-fun m!5474807 () Bool)

(assert (=> b!4628754 m!5474807))

(declare-fun m!5474809 () Bool)

(assert (=> b!4628754 m!5474809))

(declare-fun m!5474811 () Bool)

(assert (=> b!4628754 m!5474811))

(assert (=> b!4628754 m!5474803))

(assert (=> b!4628754 m!5474805))

(declare-fun m!5474813 () Bool)

(assert (=> b!4628754 m!5474813))

(declare-fun m!5474817 () Bool)

(assert (=> b!4628754 m!5474817))

(declare-fun m!5474819 () Bool)

(assert (=> b!4628754 m!5474819))

(declare-fun m!5474823 () Bool)

(assert (=> b!4628754 m!5474823))

(assert (=> b!4628754 m!5474807))

(declare-fun m!5474825 () Bool)

(assert (=> b!4628754 m!5474825))

(declare-fun m!5474827 () Bool)

(assert (=> bm!322932 m!5474827))

(assert (=> b!4628756 m!5474805))

(declare-fun m!5474829 () Bool)

(assert (=> d!1458378 m!5474829))

(assert (=> d!1458378 m!5474067))

(declare-fun m!5474831 () Bool)

(assert (=> b!4628758 m!5474831))

(declare-fun m!5474833 () Bool)

(assert (=> bm!322931 m!5474833))

(declare-fun m!5474835 () Bool)

(assert (=> bm!322933 m!5474835))

(declare-fun m!5474837 () Bool)

(assert (=> b!4628755 m!5474837))

(assert (=> b!4628453 d!1458378))

(declare-fun bs!1025758 () Bool)

(declare-fun d!1458388 () Bool)

(assert (= bs!1025758 (and d!1458388 d!1458316)))

(declare-fun lambda!193033 () Int)

(assert (=> bs!1025758 (= lambda!193033 lambda!192936)))

(declare-fun bs!1025759 () Bool)

(assert (= bs!1025759 (and d!1458388 d!1458292)))

(assert (=> bs!1025759 (= lambda!193033 lambda!192926)))

(declare-fun bs!1025760 () Bool)

(assert (= bs!1025760 (and d!1458388 b!4628460)))

(assert (=> bs!1025760 (= lambda!193033 lambda!192917)))

(declare-fun bs!1025761 () Bool)

(assert (= bs!1025761 (and d!1458388 d!1458298)))

(assert (=> bs!1025761 (= lambda!193033 lambda!192929)))

(declare-fun bs!1025762 () Bool)

(assert (= bs!1025762 (and d!1458388 d!1458326)))

(assert (=> bs!1025762 (= lambda!193033 lambda!192937)))

(declare-fun bs!1025763 () Bool)

(assert (= bs!1025763 (and d!1458388 d!1458342)))

(assert (=> bs!1025763 (= lambda!193033 lambda!192987)))

(declare-fun bs!1025764 () Bool)

(assert (= bs!1025764 (and d!1458388 d!1458328)))

(assert (=> bs!1025764 (= lambda!193033 lambda!192938)))

(declare-fun bs!1025765 () Bool)

(assert (= bs!1025765 (and d!1458388 d!1458376)))

(assert (=> bs!1025765 (= lambda!193033 lambda!193020)))

(declare-fun bs!1025766 () Bool)

(assert (= bs!1025766 (and d!1458388 d!1458338)))

(assert (=> bs!1025766 (= lambda!193033 lambda!192972)))

(declare-fun lt!1788069 () ListMap!4307)

(assert (=> d!1458388 (invariantList!1215 (toList!5003 lt!1788069))))

(declare-fun e!2887424 () ListMap!4307)

(assert (=> d!1458388 (= lt!1788069 e!2887424)))

(declare-fun c!792315 () Bool)

(assert (=> d!1458388 (= c!792315 (is-Cons!51573 Nil!51573))))

(assert (=> d!1458388 (forall!10846 Nil!51573 lambda!193033)))

(assert (=> d!1458388 (= (extractMap!1575 Nil!51573) lt!1788069)))

(declare-fun b!4628768 () Bool)

(assert (=> b!4628768 (= e!2887424 (addToMapMapFromBucket!980 (_2!29556 (h!57635 Nil!51573)) (extractMap!1575 (t!358741 Nil!51573))))))

(declare-fun b!4628769 () Bool)

(assert (=> b!4628769 (= e!2887424 (ListMap!4308 Nil!51572))))

(assert (= (and d!1458388 c!792315) b!4628768))

(assert (= (and d!1458388 (not c!792315)) b!4628769))

(declare-fun m!5474839 () Bool)

(assert (=> d!1458388 m!5474839))

(declare-fun m!5474841 () Bool)

(assert (=> d!1458388 m!5474841))

(declare-fun m!5474843 () Bool)

(assert (=> b!4628768 m!5474843))

(assert (=> b!4628768 m!5474843))

(declare-fun m!5474845 () Bool)

(assert (=> b!4628768 m!5474845))

(assert (=> b!4628453 d!1458388))

(declare-fun d!1458390 () Bool)

(assert (=> d!1458390 (= (eq!834 lt!1787573 lt!1787558) (= (content!8831 (toList!5003 lt!1787573)) (content!8831 (toList!5003 lt!1787558))))))

(declare-fun bs!1025767 () Bool)

(assert (= bs!1025767 d!1458390))

(declare-fun m!5474847 () Bool)

(assert (=> bs!1025767 m!5474847))

(declare-fun m!5474849 () Bool)

(assert (=> bs!1025767 m!5474849))

(assert (=> b!4628464 d!1458390))

(declare-fun d!1458392 () Bool)

(assert (=> d!1458392 (= (eq!834 lt!1787576 lt!1787573) (= (content!8831 (toList!5003 lt!1787576)) (content!8831 (toList!5003 lt!1787573))))))

(declare-fun bs!1025768 () Bool)

(assert (= bs!1025768 d!1458392))

(declare-fun m!5474851 () Bool)

(assert (=> bs!1025768 m!5474851))

(assert (=> bs!1025768 m!5474847))

(assert (=> b!4628464 d!1458392))

(declare-fun d!1458394 () Bool)

(declare-fun e!2887427 () Bool)

(assert (=> d!1458394 e!2887427))

(declare-fun res!1941613 () Bool)

(assert (=> d!1458394 (=> (not res!1941613) (not e!2887427))))

(declare-fun lt!1788074 () ListMap!4307)

(assert (=> d!1458394 (= res!1941613 (not (contains!14640 lt!1788074 key!4968)))))

(declare-fun removePresrvNoDuplicatedKeys!264 (List!51696 K!12948) List!51696)

(assert (=> d!1458394 (= lt!1788074 (ListMap!4308 (removePresrvNoDuplicatedKeys!264 (toList!5003 lt!1787560) key!4968)))))

(assert (=> d!1458394 (= (-!559 lt!1787560 key!4968) lt!1788074)))

(declare-fun b!4628772 () Bool)

(declare-fun content!8833 (List!51700) (Set K!12948))

(assert (=> b!4628772 (= e!2887427 (= (set.minus (content!8833 (keys!18179 lt!1787560)) (set.insert key!4968 (as set.empty (Set K!12948)))) (content!8833 (keys!18179 lt!1788074))))))

(assert (= (and d!1458394 res!1941613) b!4628772))

(declare-fun m!5474853 () Bool)

(assert (=> d!1458394 m!5474853))

(declare-fun m!5474855 () Bool)

(assert (=> d!1458394 m!5474855))

(declare-fun m!5474857 () Bool)

(assert (=> b!4628772 m!5474857))

(assert (=> b!4628772 m!5474321))

(assert (=> b!4628772 m!5474857))

(declare-fun m!5474859 () Bool)

(assert (=> b!4628772 m!5474859))

(declare-fun m!5474861 () Bool)

(assert (=> b!4628772 m!5474861))

(assert (=> b!4628772 m!5474321))

(declare-fun m!5474863 () Bool)

(assert (=> b!4628772 m!5474863))

(assert (=> b!4628464 d!1458394))

(declare-fun d!1458396 () Bool)

(assert (=> d!1458396 (eq!834 (-!559 lt!1787567 key!4968) (-!559 lt!1787560 key!4968))))

(declare-fun lt!1788100 () Unit!112758)

(declare-fun choose!31416 (ListMap!4307 ListMap!4307 K!12948) Unit!112758)

(assert (=> d!1458396 (= lt!1788100 (choose!31416 lt!1787567 lt!1787560 key!4968))))

(assert (=> d!1458396 (eq!834 lt!1787567 lt!1787560)))

(assert (=> d!1458396 (= (lemmaRemovePreservesEq!15 lt!1787567 lt!1787560 key!4968) lt!1788100)))

(declare-fun bs!1025791 () Bool)

(assert (= bs!1025791 d!1458396))

(assert (=> bs!1025791 m!5474097))

(assert (=> bs!1025791 m!5474183))

(declare-fun m!5474871 () Bool)

(assert (=> bs!1025791 m!5474871))

(declare-fun m!5474873 () Bool)

(assert (=> bs!1025791 m!5474873))

(declare-fun m!5474875 () Bool)

(assert (=> bs!1025791 m!5474875))

(assert (=> bs!1025791 m!5474183))

(assert (=> bs!1025791 m!5474097))

(assert (=> b!4628464 d!1458396))

(declare-fun d!1458402 () Bool)

(declare-fun res!1941621 () Bool)

(declare-fun e!2887435 () Bool)

(assert (=> d!1458402 (=> res!1941621 e!2887435)))

(assert (=> d!1458402 (= res!1941621 (not (is-Cons!51572 oldBucket!40)))))

(assert (=> d!1458402 (= (noDuplicateKeys!1519 oldBucket!40) e!2887435)))

(declare-fun b!4628782 () Bool)

(declare-fun e!2887436 () Bool)

(assert (=> b!4628782 (= e!2887435 e!2887436)))

(declare-fun res!1941622 () Bool)

(assert (=> b!4628782 (=> (not res!1941622) (not e!2887436))))

(assert (=> b!4628782 (= res!1941622 (not (containsKey!2483 (t!358740 oldBucket!40) (_1!29555 (h!57634 oldBucket!40)))))))

(declare-fun b!4628783 () Bool)

(assert (=> b!4628783 (= e!2887436 (noDuplicateKeys!1519 (t!358740 oldBucket!40)))))

(assert (= (and d!1458402 (not res!1941621)) b!4628782))

(assert (= (and b!4628782 res!1941622) b!4628783))

(declare-fun m!5474909 () Bool)

(assert (=> b!4628782 m!5474909))

(declare-fun m!5474911 () Bool)

(assert (=> b!4628783 m!5474911))

(assert (=> start!464234 d!1458402))

(declare-fun d!1458406 () Bool)

(declare-fun res!1941623 () Bool)

(declare-fun e!2887437 () Bool)

(assert (=> d!1458406 (=> res!1941623 e!2887437)))

(assert (=> d!1458406 (= res!1941623 (not (is-Cons!51572 newBucket!224)))))

(assert (=> d!1458406 (= (noDuplicateKeys!1519 newBucket!224) e!2887437)))

(declare-fun b!4628784 () Bool)

(declare-fun e!2887438 () Bool)

(assert (=> b!4628784 (= e!2887437 e!2887438)))

(declare-fun res!1941624 () Bool)

(assert (=> b!4628784 (=> (not res!1941624) (not e!2887438))))

(assert (=> b!4628784 (= res!1941624 (not (containsKey!2483 (t!358740 newBucket!224) (_1!29555 (h!57634 newBucket!224)))))))

(declare-fun b!4628785 () Bool)

(assert (=> b!4628785 (= e!2887438 (noDuplicateKeys!1519 (t!358740 newBucket!224)))))

(assert (= (and d!1458406 (not res!1941623)) b!4628784))

(assert (= (and b!4628784 res!1941624) b!4628785))

(declare-fun m!5474913 () Bool)

(assert (=> b!4628784 m!5474913))

(declare-fun m!5474915 () Bool)

(assert (=> b!4628785 m!5474915))

(assert (=> b!4628454 d!1458406))

(declare-fun b!4628789 () Bool)

(declare-fun e!2887440 () List!51696)

(assert (=> b!4628789 (= e!2887440 Nil!51572)))

(declare-fun b!4628786 () Bool)

(declare-fun e!2887439 () List!51696)

(assert (=> b!4628786 (= e!2887439 (t!358740 (t!358740 oldBucket!40)))))

(declare-fun d!1458408 () Bool)

(declare-fun lt!1788101 () List!51696)

(assert (=> d!1458408 (not (containsKey!2483 lt!1788101 key!4968))))

(assert (=> d!1458408 (= lt!1788101 e!2887439)))

(declare-fun c!792318 () Bool)

(assert (=> d!1458408 (= c!792318 (and (is-Cons!51572 (t!358740 oldBucket!40)) (= (_1!29555 (h!57634 (t!358740 oldBucket!40))) key!4968)))))

(assert (=> d!1458408 (noDuplicateKeys!1519 (t!358740 oldBucket!40))))

(assert (=> d!1458408 (= (removePairForKey!1142 (t!358740 oldBucket!40) key!4968) lt!1788101)))

(declare-fun b!4628787 () Bool)

(assert (=> b!4628787 (= e!2887439 e!2887440)))

(declare-fun c!792317 () Bool)

(assert (=> b!4628787 (= c!792317 (is-Cons!51572 (t!358740 oldBucket!40)))))

(declare-fun b!4628788 () Bool)

(assert (=> b!4628788 (= e!2887440 (Cons!51572 (h!57634 (t!358740 oldBucket!40)) (removePairForKey!1142 (t!358740 (t!358740 oldBucket!40)) key!4968)))))

(assert (= (and d!1458408 c!792318) b!4628786))

(assert (= (and d!1458408 (not c!792318)) b!4628787))

(assert (= (and b!4628787 c!792317) b!4628788))

(assert (= (and b!4628787 (not c!792317)) b!4628789))

(declare-fun m!5474917 () Bool)

(assert (=> d!1458408 m!5474917))

(assert (=> d!1458408 m!5474911))

(declare-fun m!5474919 () Bool)

(assert (=> b!4628788 m!5474919))

(assert (=> b!4628465 d!1458408))

(declare-fun d!1458410 () Bool)

(assert (=> d!1458410 (= (eq!834 lt!1787559 lt!1787566) (= (content!8831 (toList!5003 lt!1787559)) (content!8831 (toList!5003 lt!1787566))))))

(declare-fun bs!1025793 () Bool)

(assert (= bs!1025793 d!1458410))

(declare-fun m!5474921 () Bool)

(assert (=> bs!1025793 m!5474921))

(declare-fun m!5474923 () Bool)

(assert (=> bs!1025793 m!5474923))

(assert (=> b!4628455 d!1458410))

(declare-fun d!1458412 () Bool)

(declare-fun e!2887441 () Bool)

(assert (=> d!1458412 e!2887441))

(declare-fun res!1941625 () Bool)

(assert (=> d!1458412 (=> (not res!1941625) (not e!2887441))))

(declare-fun lt!1788102 () ListMap!4307)

(assert (=> d!1458412 (= res!1941625 (not (contains!14640 lt!1788102 key!4968)))))

(assert (=> d!1458412 (= lt!1788102 (ListMap!4308 (removePresrvNoDuplicatedKeys!264 (toList!5003 (+!1885 lt!1787565 (h!57634 oldBucket!40))) key!4968)))))

(assert (=> d!1458412 (= (-!559 (+!1885 lt!1787565 (h!57634 oldBucket!40)) key!4968) lt!1788102)))

(declare-fun b!4628790 () Bool)

(assert (=> b!4628790 (= e!2887441 (= (set.minus (content!8833 (keys!18179 (+!1885 lt!1787565 (h!57634 oldBucket!40)))) (set.insert key!4968 (as set.empty (Set K!12948)))) (content!8833 (keys!18179 lt!1788102))))))

(assert (= (and d!1458412 res!1941625) b!4628790))

(declare-fun m!5474925 () Bool)

(assert (=> d!1458412 m!5474925))

(declare-fun m!5474927 () Bool)

(assert (=> d!1458412 m!5474927))

(declare-fun m!5474929 () Bool)

(assert (=> b!4628790 m!5474929))

(assert (=> b!4628790 m!5474087))

(declare-fun m!5474931 () Bool)

(assert (=> b!4628790 m!5474931))

(assert (=> b!4628790 m!5474929))

(declare-fun m!5474933 () Bool)

(assert (=> b!4628790 m!5474933))

(assert (=> b!4628790 m!5474861))

(assert (=> b!4628790 m!5474931))

(declare-fun m!5474935 () Bool)

(assert (=> b!4628790 m!5474935))

(assert (=> b!4628455 d!1458412))

(declare-fun d!1458414 () Bool)

(declare-fun e!2887442 () Bool)

(assert (=> d!1458414 e!2887442))

(declare-fun res!1941626 () Bool)

(assert (=> d!1458414 (=> (not res!1941626) (not e!2887442))))

(declare-fun lt!1788104 () ListMap!4307)

(assert (=> d!1458414 (= res!1941626 (contains!14640 lt!1788104 (_1!29555 (h!57634 oldBucket!40))))))

(declare-fun lt!1788103 () List!51696)

(assert (=> d!1458414 (= lt!1788104 (ListMap!4308 lt!1788103))))

(declare-fun lt!1788105 () Unit!112758)

(declare-fun lt!1788106 () Unit!112758)

(assert (=> d!1458414 (= lt!1788105 lt!1788106)))

(assert (=> d!1458414 (= (getValueByKey!1473 lt!1788103 (_1!29555 (h!57634 oldBucket!40))) (Some!11626 (_2!29555 (h!57634 oldBucket!40))))))

(assert (=> d!1458414 (= lt!1788106 (lemmaContainsTupThenGetReturnValue!859 lt!1788103 (_1!29555 (h!57634 oldBucket!40)) (_2!29555 (h!57634 oldBucket!40))))))

(assert (=> d!1458414 (= lt!1788103 (insertNoDuplicatedKeys!367 (toList!5003 lt!1787565) (_1!29555 (h!57634 oldBucket!40)) (_2!29555 (h!57634 oldBucket!40))))))

(assert (=> d!1458414 (= (+!1885 lt!1787565 (h!57634 oldBucket!40)) lt!1788104)))

(declare-fun b!4628791 () Bool)

(declare-fun res!1941627 () Bool)

(assert (=> b!4628791 (=> (not res!1941627) (not e!2887442))))

(assert (=> b!4628791 (= res!1941627 (= (getValueByKey!1473 (toList!5003 lt!1788104) (_1!29555 (h!57634 oldBucket!40))) (Some!11626 (_2!29555 (h!57634 oldBucket!40)))))))

(declare-fun b!4628792 () Bool)

(assert (=> b!4628792 (= e!2887442 (contains!14647 (toList!5003 lt!1788104) (h!57634 oldBucket!40)))))

(assert (= (and d!1458414 res!1941626) b!4628791))

(assert (= (and b!4628791 res!1941627) b!4628792))

(declare-fun m!5474937 () Bool)

(assert (=> d!1458414 m!5474937))

(declare-fun m!5474939 () Bool)

(assert (=> d!1458414 m!5474939))

(declare-fun m!5474941 () Bool)

(assert (=> d!1458414 m!5474941))

(declare-fun m!5474943 () Bool)

(assert (=> d!1458414 m!5474943))

(declare-fun m!5474945 () Bool)

(assert (=> b!4628791 m!5474945))

(declare-fun m!5474947 () Bool)

(assert (=> b!4628792 m!5474947))

(assert (=> b!4628455 d!1458414))

(declare-fun d!1458416 () Bool)

(assert (=> d!1458416 (= (-!559 (+!1885 lt!1787565 (tuple2!52523 (_1!29555 (h!57634 oldBucket!40)) (_2!29555 (h!57634 oldBucket!40)))) key!4968) (+!1885 (-!559 lt!1787565 key!4968) (tuple2!52523 (_1!29555 (h!57634 oldBucket!40)) (_2!29555 (h!57634 oldBucket!40)))))))

(declare-fun lt!1788112 () Unit!112758)

(declare-fun choose!31418 (ListMap!4307 K!12948 V!13194 K!12948) Unit!112758)

(assert (=> d!1458416 (= lt!1788112 (choose!31418 lt!1787565 (_1!29555 (h!57634 oldBucket!40)) (_2!29555 (h!57634 oldBucket!40)) key!4968))))

(assert (=> d!1458416 (not (= (_1!29555 (h!57634 oldBucket!40)) key!4968))))

(assert (=> d!1458416 (= (addRemoveCommutativeForDiffKeys!14 lt!1787565 (_1!29555 (h!57634 oldBucket!40)) (_2!29555 (h!57634 oldBucket!40)) key!4968) lt!1788112)))

(declare-fun bs!1025796 () Bool)

(assert (= bs!1025796 d!1458416))

(declare-fun m!5474949 () Bool)

(assert (=> bs!1025796 m!5474949))

(declare-fun m!5474951 () Bool)

(assert (=> bs!1025796 m!5474951))

(declare-fun m!5474953 () Bool)

(assert (=> bs!1025796 m!5474953))

(assert (=> bs!1025796 m!5474949))

(assert (=> bs!1025796 m!5474093))

(assert (=> bs!1025796 m!5474093))

(declare-fun m!5474955 () Bool)

(assert (=> bs!1025796 m!5474955))

(assert (=> b!4628455 d!1458416))

(declare-fun d!1458418 () Bool)

(declare-fun e!2887443 () Bool)

(assert (=> d!1458418 e!2887443))

(declare-fun res!1941628 () Bool)

(assert (=> d!1458418 (=> (not res!1941628) (not e!2887443))))

(declare-fun lt!1788113 () ListMap!4307)

(assert (=> d!1458418 (= res!1941628 (not (contains!14640 lt!1788113 key!4968)))))

(assert (=> d!1458418 (= lt!1788113 (ListMap!4308 (removePresrvNoDuplicatedKeys!264 (toList!5003 lt!1787567) key!4968)))))

(assert (=> d!1458418 (= (-!559 lt!1787567 key!4968) lt!1788113)))

(declare-fun b!4628793 () Bool)

(assert (=> b!4628793 (= e!2887443 (= (set.minus (content!8833 (keys!18179 lt!1787567)) (set.insert key!4968 (as set.empty (Set K!12948)))) (content!8833 (keys!18179 lt!1788113))))))

(assert (= (and d!1458418 res!1941628) b!4628793))

(declare-fun m!5474963 () Bool)

(assert (=> d!1458418 m!5474963))

(declare-fun m!5474967 () Bool)

(assert (=> d!1458418 m!5474967))

(declare-fun m!5474969 () Bool)

(assert (=> b!4628793 m!5474969))

(declare-fun m!5474971 () Bool)

(assert (=> b!4628793 m!5474971))

(assert (=> b!4628793 m!5474969))

(declare-fun m!5474973 () Bool)

(assert (=> b!4628793 m!5474973))

(assert (=> b!4628793 m!5474861))

(assert (=> b!4628793 m!5474971))

(declare-fun m!5474975 () Bool)

(assert (=> b!4628793 m!5474975))

(assert (=> b!4628455 d!1458418))

(declare-fun d!1458422 () Bool)

(declare-fun e!2887444 () Bool)

(assert (=> d!1458422 e!2887444))

(declare-fun res!1941629 () Bool)

(assert (=> d!1458422 (=> (not res!1941629) (not e!2887444))))

(declare-fun lt!1788115 () ListMap!4307)

(assert (=> d!1458422 (= res!1941629 (contains!14640 lt!1788115 (_1!29555 (h!57634 oldBucket!40))))))

(declare-fun lt!1788114 () List!51696)

(assert (=> d!1458422 (= lt!1788115 (ListMap!4308 lt!1788114))))

(declare-fun lt!1788116 () Unit!112758)

(declare-fun lt!1788117 () Unit!112758)

(assert (=> d!1458422 (= lt!1788116 lt!1788117)))

(assert (=> d!1458422 (= (getValueByKey!1473 lt!1788114 (_1!29555 (h!57634 oldBucket!40))) (Some!11626 (_2!29555 (h!57634 oldBucket!40))))))

(assert (=> d!1458422 (= lt!1788117 (lemmaContainsTupThenGetReturnValue!859 lt!1788114 (_1!29555 (h!57634 oldBucket!40)) (_2!29555 (h!57634 oldBucket!40))))))

(assert (=> d!1458422 (= lt!1788114 (insertNoDuplicatedKeys!367 (toList!5003 lt!1787566) (_1!29555 (h!57634 oldBucket!40)) (_2!29555 (h!57634 oldBucket!40))))))

(assert (=> d!1458422 (= (+!1885 lt!1787566 (h!57634 oldBucket!40)) lt!1788115)))

(declare-fun b!4628794 () Bool)

(declare-fun res!1941630 () Bool)

(assert (=> b!4628794 (=> (not res!1941630) (not e!2887444))))

(assert (=> b!4628794 (= res!1941630 (= (getValueByKey!1473 (toList!5003 lt!1788115) (_1!29555 (h!57634 oldBucket!40))) (Some!11626 (_2!29555 (h!57634 oldBucket!40)))))))

(declare-fun b!4628795 () Bool)

(assert (=> b!4628795 (= e!2887444 (contains!14647 (toList!5003 lt!1788115) (h!57634 oldBucket!40)))))

(assert (= (and d!1458422 res!1941629) b!4628794))

(assert (= (and b!4628794 res!1941630) b!4628795))

(declare-fun m!5474977 () Bool)

(assert (=> d!1458422 m!5474977))

(declare-fun m!5474979 () Bool)

(assert (=> d!1458422 m!5474979))

(declare-fun m!5474981 () Bool)

(assert (=> d!1458422 m!5474981))

(declare-fun m!5474983 () Bool)

(assert (=> d!1458422 m!5474983))

(declare-fun m!5474985 () Bool)

(assert (=> b!4628794 m!5474985))

(declare-fun m!5474987 () Bool)

(assert (=> b!4628795 m!5474987))

(assert (=> b!4628455 d!1458422))

(declare-fun d!1458424 () Bool)

(assert (=> d!1458424 (eq!834 (extractMap!1575 (Cons!51573 (tuple2!52525 hash!414 lt!1787568) Nil!51573)) (-!559 (extractMap!1575 (Cons!51573 (tuple2!52525 hash!414 (t!358740 oldBucket!40)) Nil!51573)) key!4968))))

(declare-fun lt!1788151 () Unit!112758)

(declare-fun choose!31419 ((_ BitVec 64) List!51696 List!51696 K!12948 Hashable!5916) Unit!112758)

(assert (=> d!1458424 (= lt!1788151 (choose!31419 hash!414 (t!358740 oldBucket!40) lt!1787568 key!4968 hashF!1389))))

(assert (=> d!1458424 (noDuplicateKeys!1519 (t!358740 oldBucket!40))))

(assert (=> d!1458424 (= (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMapOneHash!121 hash!414 (t!358740 oldBucket!40) lt!1787568 key!4968 hashF!1389) lt!1788151)))

(declare-fun bs!1025830 () Bool)

(assert (= bs!1025830 d!1458424))

(assert (=> bs!1025830 m!5474911))

(declare-fun m!5475053 () Bool)

(assert (=> bs!1025830 m!5475053))

(assert (=> bs!1025830 m!5475053))

(declare-fun m!5475057 () Bool)

(assert (=> bs!1025830 m!5475057))

(assert (=> bs!1025830 m!5474171))

(assert (=> bs!1025830 m!5475057))

(declare-fun m!5475059 () Bool)

(assert (=> bs!1025830 m!5475059))

(assert (=> bs!1025830 m!5474171))

(declare-fun m!5475061 () Bool)

(assert (=> bs!1025830 m!5475061))

(assert (=> b!4628455 d!1458424))

(declare-fun d!1458438 () Bool)

(declare-fun e!2887456 () Bool)

(assert (=> d!1458438 e!2887456))

(declare-fun res!1941638 () Bool)

(assert (=> d!1458438 (=> (not res!1941638) (not e!2887456))))

(declare-fun lt!1788153 () ListMap!4307)

(assert (=> d!1458438 (= res!1941638 (not (contains!14640 lt!1788153 key!4968)))))

(assert (=> d!1458438 (= lt!1788153 (ListMap!4308 (removePresrvNoDuplicatedKeys!264 (toList!5003 lt!1787565) key!4968)))))

(assert (=> d!1458438 (= (-!559 lt!1787565 key!4968) lt!1788153)))

(declare-fun b!4628817 () Bool)

(assert (=> b!4628817 (= e!2887456 (= (set.minus (content!8833 (keys!18179 lt!1787565)) (set.insert key!4968 (as set.empty (Set K!12948)))) (content!8833 (keys!18179 lt!1788153))))))

(assert (= (and d!1458438 res!1941638) b!4628817))

(declare-fun m!5475063 () Bool)

(assert (=> d!1458438 m!5475063))

(declare-fun m!5475065 () Bool)

(assert (=> d!1458438 m!5475065))

(declare-fun m!5475067 () Bool)

(assert (=> b!4628817 m!5475067))

(assert (=> b!4628817 m!5474631))

(assert (=> b!4628817 m!5475067))

(declare-fun m!5475069 () Bool)

(assert (=> b!4628817 m!5475069))

(assert (=> b!4628817 m!5474861))

(assert (=> b!4628817 m!5474631))

(declare-fun m!5475071 () Bool)

(assert (=> b!4628817 m!5475071))

(assert (=> b!4628455 d!1458438))

(declare-fun d!1458444 () Bool)

(declare-fun hash!3540 (Hashable!5916 K!12948) (_ BitVec 64))

(assert (=> d!1458444 (= (hash!3536 hashF!1389 key!4968) (hash!3540 hashF!1389 key!4968))))

(declare-fun bs!1025831 () Bool)

(assert (= bs!1025831 d!1458444))

(declare-fun m!5475077 () Bool)

(assert (=> bs!1025831 m!5475077))

(assert (=> b!4628466 d!1458444))

(declare-fun tp!1342242 () Bool)

(declare-fun e!2887466 () Bool)

(declare-fun b!4628833 () Bool)

(assert (=> b!4628833 (= e!2887466 (and tp_is_empty!29369 tp_is_empty!29371 tp!1342242))))

(assert (=> b!4628457 (= tp!1342232 e!2887466)))

(assert (= (and b!4628457 (is-Cons!51572 (t!358740 newBucket!224))) b!4628833))

(declare-fun tp!1342243 () Bool)

(declare-fun b!4628834 () Bool)

(declare-fun e!2887467 () Bool)

(assert (=> b!4628834 (= e!2887467 (and tp_is_empty!29369 tp_is_empty!29371 tp!1342243))))

(assert (=> b!4628458 (= tp!1342233 e!2887467)))

(assert (= (and b!4628458 (is-Cons!51572 (t!358740 oldBucket!40))) b!4628834))

(declare-fun b_lambda!170823 () Bool)

(assert (= b_lambda!170821 (or b!4628460 b_lambda!170823)))

(declare-fun bs!1025836 () Bool)

(declare-fun d!1458448 () Bool)

(assert (= bs!1025836 (and d!1458448 b!4628460)))

(assert (=> bs!1025836 (= (dynLambda!21509 lambda!192917 lt!1787575) (noDuplicateKeys!1519 (_2!29556 lt!1787575)))))

(declare-fun m!5475095 () Bool)

(assert (=> bs!1025836 m!5475095))

(assert (=> d!1458306 d!1458448))

(push 1)

(assert (not b!4628695))

(assert (not d!1458372))

(assert (not bm!322931))

(assert tp_is_empty!29369)

(assert (not d!1458330))

(assert (not b!4628719))

(assert (not b!4628720))

(assert (not b!4628651))

(assert (not bm!322920))

(assert (not d!1458408))

(assert (not d!1458418))

(assert (not b!4628754))

(assert (not bm!322911))

(assert (not b!4628791))

(assert (not b!4628558))

(assert (not b!4628674))

(assert (not bs!1025836))

(assert (not bm!322924))

(assert (not d!1458304))

(assert (not d!1458378))

(assert (not b!4628597))

(assert (not d!1458292))

(assert (not b!4628794))

(assert (not d!1458392))

(assert (not d!1458422))

(assert (not b!4628792))

(assert (not b!4628670))

(assert (not d!1458302))

(assert (not d!1458338))

(assert (not b!4628728))

(assert (not b!4628784))

(assert (not b!4628732))

(assert (not d!1458376))

(assert (not b!4628772))

(assert (not bm!322909))

(assert (not b!4628721))

(assert (not d!1458320))

(assert (not b!4628783))

(assert (not d!1458340))

(assert (not b!4628615))

(assert (not b!4628562))

(assert (not b!4628688))

(assert (not d!1458414))

(assert (not b!4628834))

(assert (not b!4628570))

(assert (not b!4628690))

(assert (not b!4628788))

(assert (not d!1458354))

(assert (not b!4628608))

(assert (not b!4628687))

(assert (not b!4628782))

(assert (not b!4628652))

(assert (not b!4628594))

(assert (not b!4628711))

(assert (not b!4628756))

(assert (not d!1458360))

(assert (not d!1458328))

(assert (not b!4628817))

(assert (not b!4628577))

(assert (not d!1458342))

(assert (not bm!322899))

(assert (not b!4628666))

(assert (not d!1458412))

(assert (not b!4628758))

(assert (not b!4628707))

(assert (not b!4628708))

(assert (not b!4628733))

(assert (not d!1458316))

(assert (not d!1458296))

(assert (not d!1458318))

(assert (not d!1458364))

(assert (not b!4628565))

(assert (not bm!322918))

(assert (not b!4628748))

(assert (not b!4628727))

(assert (not d!1458294))

(assert (not bm!322930))

(assert (not b!4628755))

(assert (not b!4628722))

(assert (not d!1458390))

(assert (not d!1458350))

(assert (not bm!322925))

(assert (not d!1458348))

(assert (not b!4628730))

(assert (not b!4628747))

(assert (not b!4628745))

(assert (not d!1458336))

(assert (not d!1458332))

(assert (not b_lambda!170823))

(assert (not b!4628793))

(assert (not b!4628563))

(assert (not d!1458282))

(assert (not d!1458358))

(assert (not bm!322910))

(assert (not b!4628723))

(assert (not b!4628736))

(assert (not d!1458438))

(assert (not b!4628650))

(assert (not d!1458394))

(assert (not d!1458416))

(assert (not b!4628622))

(assert (not b!4628668))

(assert (not b!4628610))

(assert (not bm!322927))

(assert (not d!1458444))

(assert (not b!4628734))

(assert (not d!1458290))

(assert (not bm!322919))

(assert (not b!4628596))

(assert (not d!1458298))

(assert (not bm!322932))

(assert (not d!1458424))

(assert (not b!4628686))

(assert (not b!4628696))

(assert (not b!4628833))

(assert (not b!4628537))

(assert (not b!4628599))

(assert (not b!4628729))

(assert (not b!4628564))

(assert (not d!1458396))

(assert (not b!4628557))

(assert (not d!1458344))

(assert (not b!4628743))

(assert (not d!1458410))

(assert (not b!4628613))

(assert (not d!1458388))

(assert (not b!4628598))

(assert (not b!4628649))

(assert (not bm!322926))

(assert (not bm!322933))

(assert (not b!4628790))

(assert (not d!1458306))

(assert (not d!1458284))

(assert (not d!1458334))

(assert (not b!4628795))

(assert (not d!1458326))

(assert (not bm!322929))

(assert (not b!4628785))

(assert (not bm!322928))

(assert (not d!1458368))

(assert (not d!1458314))

(assert (not b!4628726))

(assert (not b!4628559))

(assert (not b!4628667))

(assert (not b!4628709))

(assert (not d!1458310))

(assert (not b!4628693))

(assert (not d!1458366))

(assert tp_is_empty!29371)

(assert (not d!1458322))

(assert (not b!4628731))

(assert (not b!4628744))

(assert (not b!4628768))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

