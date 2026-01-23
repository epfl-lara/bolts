; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!479756 () Bool)

(assert start!479756)

(declare-fun b!4716403 () Bool)

(declare-fun res!1994359 () Bool)

(declare-fun e!2941542 () Bool)

(assert (=> b!4716403 (=> res!1994359 e!2941542)))

(declare-datatypes ((K!14120 0))(
  ( (K!14121 (val!19567 Int)) )
))
(declare-datatypes ((V!14366 0))(
  ( (V!14367 (val!19568 Int)) )
))
(declare-datatypes ((tuple2!54346 0))(
  ( (tuple2!54347 (_1!30467 K!14120) (_2!30467 V!14366)) )
))
(declare-datatypes ((List!52885 0))(
  ( (Nil!52761) (Cons!52761 (h!59090 tuple2!54346) (t!360137 List!52885)) )
))
(declare-datatypes ((ListMap!5229 0))(
  ( (ListMap!5230 (toList!5865 List!52885)) )
))
(declare-fun lt!1881618 () ListMap!5229)

(declare-fun lt!1881630 () ListMap!5229)

(declare-fun eq!1115 (ListMap!5229 ListMap!5229) Bool)

(assert (=> b!4716403 (= res!1994359 (not (eq!1115 lt!1881618 lt!1881630)))))

(declare-fun b!4716404 () Bool)

(declare-fun res!1994365 () Bool)

(assert (=> b!4716404 (=> res!1994365 e!2941542)))

(declare-fun lt!1881639 () ListMap!5229)

(declare-fun lt!1881637 () ListMap!5229)

(assert (=> b!4716404 (= res!1994365 (not (eq!1115 lt!1881639 lt!1881637)))))

(declare-fun b!4716405 () Bool)

(declare-fun e!2941550 () Bool)

(declare-fun tp!1347961 () Bool)

(assert (=> b!4716405 (= e!2941550 tp!1347961)))

(declare-fun b!4716406 () Bool)

(declare-fun e!2941548 () Bool)

(declare-fun e!2941546 () Bool)

(assert (=> b!4716406 (= e!2941548 e!2941546)))

(declare-fun res!1994368 () Bool)

(assert (=> b!4716406 (=> (not res!1994368) (not e!2941546))))

(declare-fun lt!1881640 () (_ BitVec 64))

(declare-fun hash!405 () (_ BitVec 64))

(assert (=> b!4716406 (= res!1994368 (= lt!1881640 hash!405))))

(declare-datatypes ((Hashable!6357 0))(
  ( (HashableExt!6356 (__x!32060 Int)) )
))
(declare-fun hashF!1323 () Hashable!6357)

(declare-fun key!4653 () K!14120)

(declare-fun hash!4337 (Hashable!6357 K!14120) (_ BitVec 64))

(assert (=> b!4716406 (= lt!1881640 (hash!4337 hashF!1323 key!4653))))

(declare-fun b!4716407 () Bool)

(declare-fun res!1994377 () Bool)

(declare-fun e!2941552 () Bool)

(assert (=> b!4716407 (=> (not res!1994377) (not e!2941552))))

(declare-fun oldBucket!34 () List!52885)

(declare-fun noDuplicateKeys!1988 (List!52885) Bool)

(assert (=> b!4716407 (= res!1994377 (noDuplicateKeys!1988 oldBucket!34))))

(declare-fun b!4716408 () Bool)

(declare-fun res!1994370 () Bool)

(assert (=> b!4716408 (=> (not res!1994370) (not e!2941546))))

(declare-fun newBucket!218 () List!52885)

(declare-fun allKeysSameHash!1814 (List!52885 (_ BitVec 64) Hashable!6357) Bool)

(assert (=> b!4716408 (= res!1994370 (allKeysSameHash!1814 newBucket!218 hash!405 hashF!1323))))

(declare-fun tp_is_empty!31245 () Bool)

(declare-fun tp_is_empty!31247 () Bool)

(declare-fun tp!1347962 () Bool)

(declare-fun b!4716409 () Bool)

(declare-fun e!2941543 () Bool)

(assert (=> b!4716409 (= e!2941543 (and tp_is_empty!31245 tp_is_empty!31247 tp!1347962))))

(declare-fun b!4716410 () Bool)

(declare-fun e!2941549 () Bool)

(declare-fun e!2941547 () Bool)

(assert (=> b!4716410 (= e!2941549 e!2941547)))

(declare-fun res!1994371 () Bool)

(assert (=> b!4716410 (=> res!1994371 e!2941547)))

(declare-fun lt!1881621 () ListMap!5229)

(declare-fun +!2248 (ListMap!5229 tuple2!54346) ListMap!5229)

(assert (=> b!4716410 (= res!1994371 (not (eq!1115 lt!1881630 (+!2248 lt!1881621 (h!59090 oldBucket!34)))))))

(declare-datatypes ((tuple2!54348 0))(
  ( (tuple2!54349 (_1!30468 (_ BitVec 64)) (_2!30468 List!52885)) )
))
(declare-datatypes ((List!52886 0))(
  ( (Nil!52762) (Cons!52762 (h!59091 tuple2!54348) (t!360138 List!52886)) )
))
(declare-datatypes ((ListLongMap!4395 0))(
  ( (ListLongMap!4396 (toList!5866 List!52886)) )
))
(declare-fun lm!2023 () ListLongMap!4395)

(declare-fun lt!1881636 () List!52885)

(declare-fun extractMap!2014 (List!52886) ListMap!5229)

(assert (=> b!4716410 (= lt!1881621 (extractMap!2014 (Cons!52762 (tuple2!54349 hash!405 lt!1881636) (t!360138 (toList!5866 lm!2023)))))))

(declare-fun lt!1881619 () tuple2!54348)

(assert (=> b!4716410 (= lt!1881630 (extractMap!2014 (Cons!52762 lt!1881619 (t!360138 (toList!5866 lm!2023)))))))

(declare-fun lt!1881645 () tuple2!54346)

(declare-fun lt!1881628 () List!52885)

(declare-fun lt!1881632 () ListMap!5229)

(declare-fun addToMapMapFromBucket!1418 (List!52885 ListMap!5229) ListMap!5229)

(assert (=> b!4716410 (eq!1115 (addToMapMapFromBucket!1418 (Cons!52761 lt!1881645 lt!1881628) lt!1881632) (+!2248 (addToMapMapFromBucket!1418 lt!1881628 lt!1881632) lt!1881645))))

(declare-datatypes ((Unit!128857 0))(
  ( (Unit!128858) )
))
(declare-fun lt!1881617 () Unit!128857)

(declare-fun lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!364 (tuple2!54346 List!52885 ListMap!5229) Unit!128857)

(assert (=> b!4716410 (= lt!1881617 (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!364 lt!1881645 lt!1881628 lt!1881632))))

(declare-fun head!10205 (List!52885) tuple2!54346)

(assert (=> b!4716410 (= lt!1881645 (head!10205 newBucket!218))))

(declare-fun lt!1881643 () tuple2!54346)

(assert (=> b!4716410 (eq!1115 (addToMapMapFromBucket!1418 (Cons!52761 lt!1881643 lt!1881636) lt!1881632) (+!2248 (addToMapMapFromBucket!1418 lt!1881636 lt!1881632) lt!1881643))))

(declare-fun lt!1881620 () Unit!128857)

(assert (=> b!4716410 (= lt!1881620 (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!364 lt!1881643 lt!1881636 lt!1881632))))

(assert (=> b!4716410 (= lt!1881643 (head!10205 oldBucket!34))))

(declare-fun lt!1881634 () ListMap!5229)

(declare-fun contains!16103 (ListMap!5229 K!14120) Bool)

(assert (=> b!4716410 (contains!16103 lt!1881634 key!4653)))

(declare-fun lt!1881627 () List!52886)

(assert (=> b!4716410 (= lt!1881634 (extractMap!2014 lt!1881627))))

(declare-fun lt!1881625 () ListLongMap!4395)

(declare-fun lt!1881641 () Unit!128857)

(declare-fun lemmaListContainsThenExtractedMapContains!534 (ListLongMap!4395 K!14120 Hashable!6357) Unit!128857)

(assert (=> b!4716410 (= lt!1881641 (lemmaListContainsThenExtractedMapContains!534 lt!1881625 key!4653 hashF!1323))))

(assert (=> b!4716410 (= lt!1881625 (ListLongMap!4396 lt!1881627))))

(declare-fun lt!1881635 () tuple2!54348)

(assert (=> b!4716410 (= lt!1881627 (Cons!52762 lt!1881635 (t!360138 (toList!5866 lm!2023))))))

(assert (=> b!4716410 (= lt!1881635 (tuple2!54349 hash!405 (t!360137 oldBucket!34)))))

(declare-fun b!4716411 () Bool)

(declare-fun res!1994375 () Bool)

(declare-fun e!2941551 () Bool)

(assert (=> b!4716411 (=> (not res!1994375) (not e!2941551))))

(get-info :version)

(assert (=> b!4716411 (= res!1994375 ((_ is Cons!52762) (toList!5866 lm!2023)))))

(declare-fun e!2941553 () Bool)

(declare-fun tp!1347963 () Bool)

(declare-fun b!4716412 () Bool)

(assert (=> b!4716412 (= e!2941553 (and tp_is_empty!31245 tp_is_empty!31247 tp!1347963))))

(declare-fun lt!1881624 () ListMap!5229)

(declare-fun b!4716413 () Bool)

(assert (=> b!4716413 (= e!2941542 (eq!1115 lt!1881637 (+!2248 lt!1881624 (h!59090 oldBucket!34))))))

(declare-fun lt!1881649 () ListMap!5229)

(assert (=> b!4716413 (eq!1115 lt!1881649 (+!2248 lt!1881624 (h!59090 oldBucket!34)))))

(declare-fun lt!1881651 () ListMap!5229)

(declare-fun lt!1881626 () Unit!128857)

(declare-fun lemmaAddToEqMapsPreservesEq!106 (ListMap!5229 ListMap!5229 K!14120 V!14366) Unit!128857)

(assert (=> b!4716413 (= lt!1881626 (lemmaAddToEqMapsPreservesEq!106 lt!1881651 lt!1881624 (_1!30467 (h!59090 oldBucket!34)) (_2!30467 (h!59090 oldBucket!34))))))

(declare-fun b!4716414 () Bool)

(declare-fun res!1994373 () Bool)

(assert (=> b!4716414 (=> res!1994373 e!2941549)))

(declare-fun removePairForKey!1583 (List!52885 K!14120) List!52885)

(assert (=> b!4716414 (= res!1994373 (not (= (removePairForKey!1583 (t!360137 oldBucket!34) key!4653) lt!1881628)))))

(declare-fun b!4716415 () Bool)

(declare-fun e!2941554 () Bool)

(assert (=> b!4716415 (= e!2941554 e!2941549)))

(declare-fun res!1994367 () Bool)

(assert (=> b!4716415 (=> res!1994367 e!2941549)))

(assert (=> b!4716415 (= res!1994367 (not (= (removePairForKey!1583 lt!1881636 key!4653) lt!1881628)))))

(declare-fun tail!8938 (List!52885) List!52885)

(assert (=> b!4716415 (= lt!1881628 (tail!8938 newBucket!218))))

(assert (=> b!4716415 (= lt!1881636 (tail!8938 oldBucket!34))))

(declare-fun b!4716416 () Bool)

(declare-fun e!2941544 () Bool)

(assert (=> b!4716416 (= e!2941544 e!2941554)))

(declare-fun res!1994362 () Bool)

(assert (=> b!4716416 (=> res!1994362 e!2941554)))

(declare-fun containsKey!3325 (List!52885 K!14120) Bool)

(assert (=> b!4716416 (= res!1994362 (not (containsKey!3325 (t!360137 oldBucket!34) key!4653)))))

(assert (=> b!4716416 (containsKey!3325 oldBucket!34 key!4653)))

(declare-fun lt!1881648 () Unit!128857)

(declare-fun lemmaGetPairDefinedThenContainsKey!302 (List!52885 K!14120 Hashable!6357) Unit!128857)

(assert (=> b!4716416 (= lt!1881648 (lemmaGetPairDefinedThenContainsKey!302 oldBucket!34 key!4653 hashF!1323))))

(declare-fun lt!1881647 () List!52885)

(declare-datatypes ((Option!12328 0))(
  ( (None!12327) (Some!12327 (v!46886 tuple2!54346)) )
))
(declare-fun isDefined!9582 (Option!12328) Bool)

(declare-fun getPair!554 (List!52885 K!14120) Option!12328)

(assert (=> b!4716416 (isDefined!9582 (getPair!554 lt!1881647 key!4653))))

(declare-fun lt!1881633 () tuple2!54348)

(declare-fun lt!1881629 () Unit!128857)

(declare-fun lambda!214139 () Int)

(declare-fun forallContained!3608 (List!52886 Int tuple2!54348) Unit!128857)

(assert (=> b!4716416 (= lt!1881629 (forallContained!3608 (toList!5866 lm!2023) lambda!214139 lt!1881633))))

(declare-fun contains!16104 (List!52886 tuple2!54348) Bool)

(assert (=> b!4716416 (contains!16104 (toList!5866 lm!2023) lt!1881633)))

(assert (=> b!4716416 (= lt!1881633 (tuple2!54349 lt!1881640 lt!1881647))))

(declare-fun lt!1881650 () Unit!128857)

(declare-fun lemmaGetValueImpliesTupleContained!359 (ListLongMap!4395 (_ BitVec 64) List!52885) Unit!128857)

(assert (=> b!4716416 (= lt!1881650 (lemmaGetValueImpliesTupleContained!359 lm!2023 lt!1881640 lt!1881647))))

(declare-fun apply!12437 (ListLongMap!4395 (_ BitVec 64)) List!52885)

(assert (=> b!4716416 (= lt!1881647 (apply!12437 lm!2023 lt!1881640))))

(declare-fun contains!16105 (ListLongMap!4395 (_ BitVec 64)) Bool)

(assert (=> b!4716416 (contains!16105 lm!2023 lt!1881640)))

(declare-fun lt!1881623 () Unit!128857)

(declare-fun lemmaInGenMapThenLongMapContainsHash!760 (ListLongMap!4395 K!14120 Hashable!6357) Unit!128857)

(assert (=> b!4716416 (= lt!1881623 (lemmaInGenMapThenLongMapContainsHash!760 lm!2023 key!4653 hashF!1323))))

(declare-fun lt!1881652 () Unit!128857)

(declare-fun lemmaInGenMapThenGetPairDefined!350 (ListLongMap!4395 K!14120 Hashable!6357) Unit!128857)

(assert (=> b!4716416 (= lt!1881652 (lemmaInGenMapThenGetPairDefined!350 lm!2023 key!4653 hashF!1323))))

(declare-fun b!4716417 () Bool)

(assert (=> b!4716417 (= e!2941552 e!2941548)))

(declare-fun res!1994358 () Bool)

(assert (=> b!4716417 (=> (not res!1994358) (not e!2941548))))

(declare-fun lt!1881646 () ListMap!5229)

(assert (=> b!4716417 (= res!1994358 (contains!16103 lt!1881646 key!4653))))

(assert (=> b!4716417 (= lt!1881646 (extractMap!2014 (toList!5866 lm!2023)))))

(declare-fun b!4716418 () Bool)

(declare-fun res!1994378 () Bool)

(assert (=> b!4716418 (=> (not res!1994378) (not e!2941552))))

(assert (=> b!4716418 (= res!1994378 (noDuplicateKeys!1988 newBucket!218))))

(declare-fun b!4716419 () Bool)

(declare-fun res!1994366 () Bool)

(assert (=> b!4716419 (=> res!1994366 e!2941547)))

(assert (=> b!4716419 (= res!1994366 (not (eq!1115 lt!1881630 (+!2248 lt!1881621 lt!1881645))))))

(declare-fun b!4716420 () Bool)

(declare-fun res!1994363 () Bool)

(assert (=> b!4716420 (=> (not res!1994363) (not e!2941546))))

(declare-fun allKeysSameHashInMap!1902 (ListLongMap!4395 Hashable!6357) Bool)

(assert (=> b!4716420 (= res!1994363 (allKeysSameHashInMap!1902 lm!2023 hashF!1323))))

(declare-fun b!4716421 () Bool)

(assert (=> b!4716421 (= e!2941546 e!2941551)))

(declare-fun res!1994361 () Bool)

(assert (=> b!4716421 (=> (not res!1994361) (not e!2941551))))

(declare-fun head!10206 (List!52886) tuple2!54348)

(assert (=> b!4716421 (= res!1994361 (= (head!10206 (toList!5866 lm!2023)) lt!1881619))))

(assert (=> b!4716421 (= lt!1881619 (tuple2!54349 hash!405 oldBucket!34))))

(declare-fun b!4716422 () Bool)

(declare-fun res!1994369 () Bool)

(assert (=> b!4716422 (=> res!1994369 e!2941547)))

(assert (=> b!4716422 (= res!1994369 (not (= (h!59090 oldBucket!34) lt!1881645)))))

(declare-fun b!4716423 () Bool)

(declare-fun e!2941545 () Bool)

(assert (=> b!4716423 (= e!2941545 e!2941542)))

(declare-fun res!1994376 () Bool)

(assert (=> b!4716423 (=> res!1994376 e!2941542)))

(assert (=> b!4716423 (= res!1994376 (not (= lt!1881639 lt!1881637)))))

(assert (=> b!4716423 (= lt!1881637 (+!2248 lt!1881651 (h!59090 oldBucket!34)))))

(declare-fun -!744 (ListMap!5229 K!14120) ListMap!5229)

(assert (=> b!4716423 (= lt!1881639 (-!744 lt!1881618 key!4653))))

(assert (=> b!4716423 (= lt!1881618 (+!2248 lt!1881634 (h!59090 oldBucket!34)))))

(declare-fun lt!1881644 () ListMap!5229)

(assert (=> b!4716423 (= lt!1881644 lt!1881649)))

(assert (=> b!4716423 (= lt!1881649 (+!2248 lt!1881651 (h!59090 oldBucket!34)))))

(assert (=> b!4716423 (= lt!1881644 (-!744 (+!2248 lt!1881634 (h!59090 oldBucket!34)) key!4653))))

(declare-fun lt!1881642 () Unit!128857)

(declare-fun addRemoveCommutativeForDiffKeys!135 (ListMap!5229 K!14120 V!14366 K!14120) Unit!128857)

(assert (=> b!4716423 (= lt!1881642 (addRemoveCommutativeForDiffKeys!135 lt!1881634 (_1!30467 (h!59090 oldBucket!34)) (_2!30467 (h!59090 oldBucket!34)) key!4653))))

(declare-fun res!1994379 () Bool)

(assert (=> start!479756 (=> (not res!1994379) (not e!2941552))))

(declare-fun forall!11539 (List!52886 Int) Bool)

(assert (=> start!479756 (= res!1994379 (forall!11539 (toList!5866 lm!2023) lambda!214139))))

(assert (=> start!479756 e!2941552))

(declare-fun inv!67994 (ListLongMap!4395) Bool)

(assert (=> start!479756 (and (inv!67994 lm!2023) e!2941550)))

(assert (=> start!479756 tp_is_empty!31245))

(assert (=> start!479756 e!2941553))

(assert (=> start!479756 true))

(assert (=> start!479756 e!2941543))

(declare-fun b!4716424 () Bool)

(declare-fun res!1994374 () Bool)

(assert (=> b!4716424 (=> (not res!1994374) (not e!2941552))))

(assert (=> b!4716424 (= res!1994374 (= (removePairForKey!1583 oldBucket!34 key!4653) newBucket!218))))

(declare-fun b!4716425 () Bool)

(assert (=> b!4716425 (= e!2941551 (not e!2941544))))

(declare-fun res!1994360 () Bool)

(assert (=> b!4716425 (=> res!1994360 e!2941544)))

(assert (=> b!4716425 (= res!1994360 (or (and ((_ is Cons!52761) oldBucket!34) (= (_1!30467 (h!59090 oldBucket!34)) key!4653)) (not ((_ is Cons!52761) oldBucket!34)) (= (_1!30467 (h!59090 oldBucket!34)) key!4653)))))

(assert (=> b!4716425 (= lt!1881646 (addToMapMapFromBucket!1418 (_2!30468 (h!59091 (toList!5866 lm!2023))) lt!1881632))))

(assert (=> b!4716425 (= lt!1881632 (extractMap!2014 (t!360138 (toList!5866 lm!2023))))))

(declare-fun tail!8939 (ListLongMap!4395) ListLongMap!4395)

(assert (=> b!4716425 (= (t!360138 (toList!5866 lm!2023)) (toList!5866 (tail!8939 lm!2023)))))

(declare-fun b!4716426 () Bool)

(assert (=> b!4716426 (= e!2941547 e!2941545)))

(declare-fun res!1994364 () Bool)

(assert (=> b!4716426 (=> res!1994364 e!2941545)))

(assert (=> b!4716426 (= res!1994364 (not (eq!1115 lt!1881624 lt!1881651)))))

(assert (=> b!4716426 (= lt!1881651 (-!744 lt!1881634 key!4653))))

(declare-fun lt!1881631 () tuple2!54348)

(assert (=> b!4716426 (= lt!1881624 (extractMap!2014 (Cons!52762 lt!1881631 (t!360138 (toList!5866 lm!2023)))))))

(declare-fun lt!1881638 () List!52886)

(assert (=> b!4716426 (eq!1115 (extractMap!2014 (Cons!52762 lt!1881631 lt!1881638)) (-!744 (extractMap!2014 (Cons!52762 lt!1881635 lt!1881638)) key!4653))))

(declare-fun tail!8940 (List!52886) List!52886)

(assert (=> b!4716426 (= lt!1881638 (tail!8940 lt!1881627))))

(assert (=> b!4716426 (= lt!1881631 (tuple2!54349 hash!405 lt!1881628))))

(declare-fun lt!1881622 () Unit!128857)

(declare-fun lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMapOneHashIsHead!106 (ListLongMap!4395 (_ BitVec 64) List!52885 List!52885 K!14120 Hashable!6357) Unit!128857)

(assert (=> b!4716426 (= lt!1881622 (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMapOneHashIsHead!106 lt!1881625 hash!405 (t!360137 oldBucket!34) lt!1881628 key!4653 hashF!1323))))

(declare-fun b!4716427 () Bool)

(declare-fun res!1994372 () Bool)

(assert (=> b!4716427 (=> (not res!1994372) (not e!2941552))))

(assert (=> b!4716427 (= res!1994372 (allKeysSameHash!1814 oldBucket!34 hash!405 hashF!1323))))

(assert (= (and start!479756 res!1994379) b!4716407))

(assert (= (and b!4716407 res!1994377) b!4716418))

(assert (= (and b!4716418 res!1994378) b!4716424))

(assert (= (and b!4716424 res!1994374) b!4716427))

(assert (= (and b!4716427 res!1994372) b!4716417))

(assert (= (and b!4716417 res!1994358) b!4716406))

(assert (= (and b!4716406 res!1994368) b!4716408))

(assert (= (and b!4716408 res!1994370) b!4716420))

(assert (= (and b!4716420 res!1994363) b!4716421))

(assert (= (and b!4716421 res!1994361) b!4716411))

(assert (= (and b!4716411 res!1994375) b!4716425))

(assert (= (and b!4716425 (not res!1994360)) b!4716416))

(assert (= (and b!4716416 (not res!1994362)) b!4716415))

(assert (= (and b!4716415 (not res!1994367)) b!4716414))

(assert (= (and b!4716414 (not res!1994373)) b!4716410))

(assert (= (and b!4716410 (not res!1994371)) b!4716422))

(assert (= (and b!4716422 (not res!1994369)) b!4716419))

(assert (= (and b!4716419 (not res!1994366)) b!4716426))

(assert (= (and b!4716426 (not res!1994364)) b!4716423))

(assert (= (and b!4716423 (not res!1994376)) b!4716404))

(assert (= (and b!4716404 (not res!1994365)) b!4716403))

(assert (= (and b!4716403 (not res!1994359)) b!4716413))

(assert (= start!479756 b!4716405))

(assert (= (and start!479756 ((_ is Cons!52761) oldBucket!34)) b!4716412))

(assert (= (and start!479756 ((_ is Cons!52761) newBucket!218)) b!4716409))

(declare-fun m!5646255 () Bool)

(assert (=> b!4716426 m!5646255))

(declare-fun m!5646257 () Bool)

(assert (=> b!4716426 m!5646257))

(declare-fun m!5646259 () Bool)

(assert (=> b!4716426 m!5646259))

(assert (=> b!4716426 m!5646257))

(declare-fun m!5646261 () Bool)

(assert (=> b!4716426 m!5646261))

(declare-fun m!5646263 () Bool)

(assert (=> b!4716426 m!5646263))

(declare-fun m!5646265 () Bool)

(assert (=> b!4716426 m!5646265))

(assert (=> b!4716426 m!5646255))

(assert (=> b!4716426 m!5646259))

(declare-fun m!5646267 () Bool)

(assert (=> b!4716426 m!5646267))

(declare-fun m!5646269 () Bool)

(assert (=> b!4716426 m!5646269))

(declare-fun m!5646271 () Bool)

(assert (=> b!4716426 m!5646271))

(declare-fun m!5646273 () Bool)

(assert (=> b!4716403 m!5646273))

(declare-fun m!5646275 () Bool)

(assert (=> b!4716427 m!5646275))

(declare-fun m!5646277 () Bool)

(assert (=> b!4716407 m!5646277))

(declare-fun m!5646279 () Bool)

(assert (=> start!479756 m!5646279))

(declare-fun m!5646281 () Bool)

(assert (=> start!479756 m!5646281))

(declare-fun m!5646283 () Bool)

(assert (=> b!4716420 m!5646283))

(declare-fun m!5646285 () Bool)

(assert (=> b!4716414 m!5646285))

(declare-fun m!5646287 () Bool)

(assert (=> b!4716410 m!5646287))

(declare-fun m!5646289 () Bool)

(assert (=> b!4716410 m!5646289))

(declare-fun m!5646291 () Bool)

(assert (=> b!4716410 m!5646291))

(declare-fun m!5646293 () Bool)

(assert (=> b!4716410 m!5646293))

(declare-fun m!5646295 () Bool)

(assert (=> b!4716410 m!5646295))

(assert (=> b!4716410 m!5646291))

(declare-fun m!5646297 () Bool)

(assert (=> b!4716410 m!5646297))

(declare-fun m!5646299 () Bool)

(assert (=> b!4716410 m!5646299))

(declare-fun m!5646301 () Bool)

(assert (=> b!4716410 m!5646301))

(declare-fun m!5646303 () Bool)

(assert (=> b!4716410 m!5646303))

(declare-fun m!5646305 () Bool)

(assert (=> b!4716410 m!5646305))

(assert (=> b!4716410 m!5646295))

(assert (=> b!4716410 m!5646297))

(declare-fun m!5646307 () Bool)

(assert (=> b!4716410 m!5646307))

(declare-fun m!5646309 () Bool)

(assert (=> b!4716410 m!5646309))

(assert (=> b!4716410 m!5646289))

(assert (=> b!4716410 m!5646287))

(assert (=> b!4716410 m!5646307))

(declare-fun m!5646311 () Bool)

(assert (=> b!4716410 m!5646311))

(declare-fun m!5646313 () Bool)

(assert (=> b!4716410 m!5646313))

(declare-fun m!5646315 () Bool)

(assert (=> b!4716410 m!5646315))

(assert (=> b!4716410 m!5646299))

(declare-fun m!5646317 () Bool)

(assert (=> b!4716410 m!5646317))

(declare-fun m!5646319 () Bool)

(assert (=> b!4716410 m!5646319))

(declare-fun m!5646321 () Bool)

(assert (=> b!4716410 m!5646321))

(declare-fun m!5646323 () Bool)

(assert (=> b!4716410 m!5646323))

(declare-fun m!5646325 () Bool)

(assert (=> b!4716421 m!5646325))

(declare-fun m!5646327 () Bool)

(assert (=> b!4716416 m!5646327))

(declare-fun m!5646329 () Bool)

(assert (=> b!4716416 m!5646329))

(declare-fun m!5646331 () Bool)

(assert (=> b!4716416 m!5646331))

(declare-fun m!5646333 () Bool)

(assert (=> b!4716416 m!5646333))

(declare-fun m!5646335 () Bool)

(assert (=> b!4716416 m!5646335))

(declare-fun m!5646337 () Bool)

(assert (=> b!4716416 m!5646337))

(declare-fun m!5646339 () Bool)

(assert (=> b!4716416 m!5646339))

(declare-fun m!5646341 () Bool)

(assert (=> b!4716416 m!5646341))

(declare-fun m!5646343 () Bool)

(assert (=> b!4716416 m!5646343))

(declare-fun m!5646345 () Bool)

(assert (=> b!4716416 m!5646345))

(assert (=> b!4716416 m!5646335))

(declare-fun m!5646347 () Bool)

(assert (=> b!4716416 m!5646347))

(declare-fun m!5646349 () Bool)

(assert (=> b!4716416 m!5646349))

(declare-fun m!5646351 () Bool)

(assert (=> b!4716424 m!5646351))

(declare-fun m!5646353 () Bool)

(assert (=> b!4716413 m!5646353))

(assert (=> b!4716413 m!5646353))

(declare-fun m!5646355 () Bool)

(assert (=> b!4716413 m!5646355))

(assert (=> b!4716413 m!5646353))

(declare-fun m!5646357 () Bool)

(assert (=> b!4716413 m!5646357))

(declare-fun m!5646359 () Bool)

(assert (=> b!4716413 m!5646359))

(declare-fun m!5646361 () Bool)

(assert (=> b!4716417 m!5646361))

(declare-fun m!5646363 () Bool)

(assert (=> b!4716417 m!5646363))

(declare-fun m!5646365 () Bool)

(assert (=> b!4716423 m!5646365))

(declare-fun m!5646367 () Bool)

(assert (=> b!4716423 m!5646367))

(declare-fun m!5646369 () Bool)

(assert (=> b!4716423 m!5646369))

(declare-fun m!5646371 () Bool)

(assert (=> b!4716423 m!5646371))

(declare-fun m!5646373 () Bool)

(assert (=> b!4716423 m!5646373))

(assert (=> b!4716423 m!5646371))

(declare-fun m!5646375 () Bool)

(assert (=> b!4716418 m!5646375))

(declare-fun m!5646377 () Bool)

(assert (=> b!4716415 m!5646377))

(declare-fun m!5646379 () Bool)

(assert (=> b!4716415 m!5646379))

(declare-fun m!5646381 () Bool)

(assert (=> b!4716415 m!5646381))

(declare-fun m!5646383 () Bool)

(assert (=> b!4716425 m!5646383))

(declare-fun m!5646385 () Bool)

(assert (=> b!4716425 m!5646385))

(declare-fun m!5646387 () Bool)

(assert (=> b!4716425 m!5646387))

(declare-fun m!5646389 () Bool)

(assert (=> b!4716404 m!5646389))

(declare-fun m!5646391 () Bool)

(assert (=> b!4716419 m!5646391))

(assert (=> b!4716419 m!5646391))

(declare-fun m!5646393 () Bool)

(assert (=> b!4716419 m!5646393))

(declare-fun m!5646395 () Bool)

(assert (=> b!4716408 m!5646395))

(declare-fun m!5646397 () Bool)

(assert (=> b!4716406 m!5646397))

(check-sat (not b!4716421) tp_is_empty!31245 (not b!4716410) tp_is_empty!31247 (not b!4716419) (not b!4716404) (not b!4716426) (not b!4716418) (not b!4716408) (not b!4716407) (not b!4716423) (not b!4716420) (not b!4716406) (not start!479756) (not b!4716415) (not b!4716416) (not b!4716424) (not b!4716427) (not b!4716413) (not b!4716425) (not b!4716405) (not b!4716409) (not b!4716414) (not b!4716417) (not b!4716412) (not b!4716403))
(check-sat)
