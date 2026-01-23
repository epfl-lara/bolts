; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!477844 () Bool)

(assert start!477844)

(declare-fun b!4705726 () Bool)

(declare-fun e!2935359 () Bool)

(declare-fun tp!1346955 () Bool)

(assert (=> b!4705726 (= e!2935359 tp!1346955)))

(declare-fun b!4705727 () Bool)

(declare-fun res!1987654 () Bool)

(declare-fun e!2935365 () Bool)

(assert (=> b!4705727 (=> res!1987654 e!2935365)))

(declare-datatypes ((K!13935 0))(
  ( (K!13936 (val!19419 Int)) )
))
(declare-datatypes ((V!14181 0))(
  ( (V!14182 (val!19420 Int)) )
))
(declare-datatypes ((tuple2!54050 0))(
  ( (tuple2!54051 (_1!30319 K!13935) (_2!30319 V!14181)) )
))
(declare-datatypes ((List!52703 0))(
  ( (Nil!52579) (Cons!52579 (h!58874 tuple2!54050) (t!359929 List!52703)) )
))
(declare-datatypes ((tuple2!54052 0))(
  ( (tuple2!54053 (_1!30320 (_ BitVec 64)) (_2!30320 List!52703)) )
))
(declare-datatypes ((List!52704 0))(
  ( (Nil!52580) (Cons!52580 (h!58875 tuple2!54052) (t!359930 List!52704)) )
))
(declare-datatypes ((ListLongMap!4247 0))(
  ( (ListLongMap!4248 (toList!5717 List!52704)) )
))
(declare-fun lm!2023 () ListLongMap!4247)

(declare-fun newBucket!218 () List!52703)

(declare-datatypes ((ListMap!5081 0))(
  ( (ListMap!5082 (toList!5718 List!52703)) )
))
(declare-fun lt!1870353 () ListMap!5081)

(declare-fun hash!405 () (_ BitVec 64))

(declare-fun eq!1073 (ListMap!5081 ListMap!5081) Bool)

(declare-fun extractMap!1940 (List!52704) ListMap!5081)

(assert (=> b!4705727 (= res!1987654 (not (eq!1073 lt!1870353 (extractMap!1940 (Cons!52580 (tuple2!54053 hash!405 newBucket!218) (t!359930 (toList!5717 lm!2023)))))))))

(declare-fun b!4705728 () Bool)

(declare-fun res!1987650 () Bool)

(declare-fun e!2935366 () Bool)

(assert (=> b!4705728 (=> res!1987650 e!2935366)))

(declare-fun key!4653 () K!13935)

(declare-fun lt!1870368 () List!52703)

(declare-fun oldBucket!34 () List!52703)

(declare-fun removePairForKey!1509 (List!52703 K!13935) List!52703)

(assert (=> b!4705728 (= res!1987650 (not (= (removePairForKey!1509 (t!359929 oldBucket!34) key!4653) lt!1870368)))))

(declare-fun b!4705729 () Bool)

(declare-fun res!1987662 () Bool)

(declare-fun e!2935367 () Bool)

(assert (=> b!4705729 (=> res!1987662 e!2935367)))

(declare-fun lt!1870333 () tuple2!54050)

(assert (=> b!4705729 (= res!1987662 (not (= (h!58874 oldBucket!34) lt!1870333)))))

(declare-fun b!4705730 () Bool)

(declare-fun e!2935361 () Bool)

(assert (=> b!4705730 (= e!2935361 e!2935365)))

(declare-fun res!1987648 () Bool)

(assert (=> b!4705730 (=> res!1987648 e!2935365)))

(declare-fun lt!1870352 () ListMap!5081)

(declare-fun lt!1870359 () ListMap!5081)

(assert (=> b!4705730 (= res!1987648 (not (eq!1073 lt!1870352 lt!1870359)))))

(declare-fun lt!1870337 () ListMap!5081)

(assert (=> b!4705730 (eq!1073 lt!1870337 lt!1870359)))

(declare-fun lt!1870364 () ListMap!5081)

(declare-fun -!718 (ListMap!5081 K!13935) ListMap!5081)

(assert (=> b!4705730 (= lt!1870359 (-!718 lt!1870364 key!4653))))

(declare-fun lt!1870369 () ListMap!5081)

(declare-datatypes ((Unit!127112 0))(
  ( (Unit!127113) )
))
(declare-fun lt!1870360 () Unit!127112)

(declare-fun lemmaRemovePreservesEq!100 (ListMap!5081 ListMap!5081 K!13935) Unit!127112)

(assert (=> b!4705730 (= lt!1870360 (lemmaRemovePreservesEq!100 lt!1870369 lt!1870364 key!4653))))

(declare-fun b!4705731 () Bool)

(declare-fun e!2935357 () Bool)

(declare-fun e!2935356 () Bool)

(assert (=> b!4705731 (= e!2935357 e!2935356)))

(declare-fun res!1987660 () Bool)

(assert (=> b!4705731 (=> (not res!1987660) (not e!2935356))))

(declare-fun lt!1870335 () ListMap!5081)

(declare-fun contains!15888 (ListMap!5081 K!13935) Bool)

(assert (=> b!4705731 (= res!1987660 (contains!15888 lt!1870335 key!4653))))

(assert (=> b!4705731 (= lt!1870335 (extractMap!1940 (toList!5717 lm!2023)))))

(declare-fun b!4705732 () Bool)

(declare-fun e!2935358 () Bool)

(declare-fun e!2935354 () Bool)

(assert (=> b!4705732 (= e!2935358 e!2935354)))

(declare-fun res!1987653 () Bool)

(assert (=> b!4705732 (=> res!1987653 e!2935354)))

(assert (=> b!4705732 (= res!1987653 (not (= lt!1870337 lt!1870352)))))

(declare-fun lt!1870371 () ListMap!5081)

(declare-fun +!2198 (ListMap!5081 tuple2!54050) ListMap!5081)

(assert (=> b!4705732 (= lt!1870352 (+!2198 lt!1870371 (h!58874 oldBucket!34)))))

(assert (=> b!4705732 (= lt!1870337 (-!718 lt!1870369 key!4653))))

(declare-fun lt!1870351 () ListMap!5081)

(assert (=> b!4705732 (= lt!1870369 (+!2198 lt!1870351 (h!58874 oldBucket!34)))))

(declare-fun lt!1870344 () ListMap!5081)

(declare-fun lt!1870345 () ListMap!5081)

(assert (=> b!4705732 (= lt!1870344 lt!1870345)))

(assert (=> b!4705732 (= lt!1870345 (+!2198 lt!1870371 (h!58874 oldBucket!34)))))

(assert (=> b!4705732 (= lt!1870344 (-!718 (+!2198 lt!1870351 (h!58874 oldBucket!34)) key!4653))))

(declare-fun lt!1870367 () Unit!127112)

(declare-fun addRemoveCommutativeForDiffKeys!119 (ListMap!5081 K!13935 V!14181 K!13935) Unit!127112)

(assert (=> b!4705732 (= lt!1870367 (addRemoveCommutativeForDiffKeys!119 lt!1870351 (_1!30319 (h!58874 oldBucket!34)) (_2!30319 (h!58874 oldBucket!34)) key!4653))))

(declare-fun tp_is_empty!30951 () Bool)

(declare-fun tp!1346957 () Bool)

(declare-fun e!2935364 () Bool)

(declare-fun tp_is_empty!30949 () Bool)

(declare-fun b!4705733 () Bool)

(assert (=> b!4705733 (= e!2935364 (and tp_is_empty!30949 tp_is_empty!30951 tp!1346957))))

(declare-fun b!4705734 () Bool)

(declare-fun res!1987646 () Bool)

(assert (=> b!4705734 (=> res!1987646 e!2935367)))

(declare-fun lt!1870362 () ListMap!5081)

(assert (=> b!4705734 (= res!1987646 (not (eq!1073 lt!1870364 (+!2198 lt!1870362 lt!1870333))))))

(declare-fun b!4705735 () Bool)

(declare-fun e!2935360 () Bool)

(declare-fun e!2935355 () Bool)

(assert (=> b!4705735 (= e!2935360 e!2935355)))

(declare-fun res!1987643 () Bool)

(assert (=> b!4705735 (=> (not res!1987643) (not e!2935355))))

(declare-fun lt!1870341 () tuple2!54052)

(declare-fun head!10091 (List!52704) tuple2!54052)

(assert (=> b!4705735 (= res!1987643 (= (head!10091 (toList!5717 lm!2023)) lt!1870341))))

(assert (=> b!4705735 (= lt!1870341 (tuple2!54053 hash!405 oldBucket!34))))

(declare-fun b!4705736 () Bool)

(assert (=> b!4705736 (= e!2935366 e!2935367)))

(declare-fun res!1987667 () Bool)

(assert (=> b!4705736 (=> res!1987667 e!2935367)))

(assert (=> b!4705736 (= res!1987667 (not (eq!1073 lt!1870364 (+!2198 lt!1870362 (h!58874 oldBucket!34)))))))

(declare-fun lt!1870361 () List!52703)

(assert (=> b!4705736 (= lt!1870362 (extractMap!1940 (Cons!52580 (tuple2!54053 hash!405 lt!1870361) (t!359930 (toList!5717 lm!2023)))))))

(declare-fun lt!1870350 () List!52704)

(assert (=> b!4705736 (= lt!1870364 (extractMap!1940 lt!1870350))))

(assert (=> b!4705736 (= lt!1870350 (Cons!52580 lt!1870341 (t!359930 (toList!5717 lm!2023))))))

(declare-fun lt!1870342 () ListMap!5081)

(declare-fun addToMapMapFromBucket!1346 (List!52703 ListMap!5081) ListMap!5081)

(assert (=> b!4705736 (eq!1073 (addToMapMapFromBucket!1346 (Cons!52579 lt!1870333 lt!1870368) lt!1870342) (+!2198 (addToMapMapFromBucket!1346 lt!1870368 lt!1870342) lt!1870333))))

(declare-fun lt!1870370 () Unit!127112)

(declare-fun lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!322 (tuple2!54050 List!52703 ListMap!5081) Unit!127112)

(assert (=> b!4705736 (= lt!1870370 (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!322 lt!1870333 lt!1870368 lt!1870342))))

(declare-fun head!10092 (List!52703) tuple2!54050)

(assert (=> b!4705736 (= lt!1870333 (head!10092 newBucket!218))))

(declare-fun lt!1870336 () tuple2!54050)

(assert (=> b!4705736 (eq!1073 (addToMapMapFromBucket!1346 (Cons!52579 lt!1870336 lt!1870361) lt!1870342) (+!2198 (addToMapMapFromBucket!1346 lt!1870361 lt!1870342) lt!1870336))))

(declare-fun lt!1870365 () Unit!127112)

(assert (=> b!4705736 (= lt!1870365 (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!322 lt!1870336 lt!1870361 lt!1870342))))

(assert (=> b!4705736 (= lt!1870336 (head!10092 oldBucket!34))))

(assert (=> b!4705736 (contains!15888 lt!1870351 key!4653)))

(declare-fun lt!1870358 () List!52704)

(assert (=> b!4705736 (= lt!1870351 (extractMap!1940 lt!1870358))))

(declare-fun lt!1870366 () ListLongMap!4247)

(declare-fun lt!1870363 () Unit!127112)

(declare-datatypes ((Hashable!6283 0))(
  ( (HashableExt!6282 (__x!31986 Int)) )
))
(declare-fun hashF!1323 () Hashable!6283)

(declare-fun lemmaListContainsThenExtractedMapContains!506 (ListLongMap!4247 K!13935 Hashable!6283) Unit!127112)

(assert (=> b!4705736 (= lt!1870363 (lemmaListContainsThenExtractedMapContains!506 lt!1870366 key!4653 hashF!1323))))

(assert (=> b!4705736 (= lt!1870366 (ListLongMap!4248 lt!1870358))))

(declare-fun lt!1870339 () tuple2!54052)

(assert (=> b!4705736 (= lt!1870358 (Cons!52580 lt!1870339 (t!359930 (toList!5717 lm!2023))))))

(assert (=> b!4705736 (= lt!1870339 (tuple2!54053 hash!405 (t!359929 oldBucket!34)))))

(declare-fun b!4705737 () Bool)

(declare-fun res!1987659 () Bool)

(assert (=> b!4705737 (=> (not res!1987659) (not e!2935360))))

(declare-fun allKeysSameHashInMap!1828 (ListLongMap!4247 Hashable!6283) Bool)

(assert (=> b!4705737 (= res!1987659 (allKeysSameHashInMap!1828 lm!2023 hashF!1323))))

(declare-fun b!4705738 () Bool)

(assert (=> b!4705738 (= e!2935356 e!2935360)))

(declare-fun res!1987657 () Bool)

(assert (=> b!4705738 (=> (not res!1987657) (not e!2935360))))

(declare-fun lt!1870343 () (_ BitVec 64))

(assert (=> b!4705738 (= res!1987657 (= lt!1870343 hash!405))))

(declare-fun hash!4218 (Hashable!6283 K!13935) (_ BitVec 64))

(assert (=> b!4705738 (= lt!1870343 (hash!4218 hashF!1323 key!4653))))

(declare-fun b!4705739 () Bool)

(declare-fun e!2935368 () Bool)

(declare-fun e!2935363 () Bool)

(assert (=> b!4705739 (= e!2935368 e!2935363)))

(declare-fun res!1987644 () Bool)

(assert (=> b!4705739 (=> res!1987644 e!2935363)))

(declare-fun containsKey!3213 (List!52703 K!13935) Bool)

(assert (=> b!4705739 (= res!1987644 (not (containsKey!3213 (t!359929 oldBucket!34) key!4653)))))

(assert (=> b!4705739 (containsKey!3213 oldBucket!34 key!4653)))

(declare-fun lt!1870349 () Unit!127112)

(declare-fun lemmaGetPairDefinedThenContainsKey!266 (List!52703 K!13935 Hashable!6283) Unit!127112)

(assert (=> b!4705739 (= lt!1870349 (lemmaGetPairDefinedThenContainsKey!266 oldBucket!34 key!4653 hashF!1323))))

(declare-fun lt!1870347 () List!52703)

(declare-datatypes ((Option!12237 0))(
  ( (None!12236) (Some!12236 (v!46751 tuple2!54050)) )
))
(declare-fun isDefined!9492 (Option!12237) Bool)

(declare-fun getPair!518 (List!52703 K!13935) Option!12237)

(assert (=> b!4705739 (isDefined!9492 (getPair!518 lt!1870347 key!4653))))

(declare-fun lt!1870356 () tuple2!54052)

(declare-fun lt!1870355 () Unit!127112)

(declare-fun lambda!211507 () Int)

(declare-fun forallContained!3538 (List!52704 Int tuple2!54052) Unit!127112)

(assert (=> b!4705739 (= lt!1870355 (forallContained!3538 (toList!5717 lm!2023) lambda!211507 lt!1870356))))

(declare-fun contains!15889 (List!52704 tuple2!54052) Bool)

(assert (=> b!4705739 (contains!15889 (toList!5717 lm!2023) lt!1870356)))

(assert (=> b!4705739 (= lt!1870356 (tuple2!54053 lt!1870343 lt!1870347))))

(declare-fun lt!1870372 () Unit!127112)

(declare-fun lemmaGetValueImpliesTupleContained!323 (ListLongMap!4247 (_ BitVec 64) List!52703) Unit!127112)

(assert (=> b!4705739 (= lt!1870372 (lemmaGetValueImpliesTupleContained!323 lm!2023 lt!1870343 lt!1870347))))

(declare-fun apply!12397 (ListLongMap!4247 (_ BitVec 64)) List!52703)

(assert (=> b!4705739 (= lt!1870347 (apply!12397 lm!2023 lt!1870343))))

(declare-fun contains!15890 (ListLongMap!4247 (_ BitVec 64)) Bool)

(assert (=> b!4705739 (contains!15890 lm!2023 lt!1870343)))

(declare-fun lt!1870354 () Unit!127112)

(declare-fun lemmaInGenMapThenLongMapContainsHash!724 (ListLongMap!4247 K!13935 Hashable!6283) Unit!127112)

(assert (=> b!4705739 (= lt!1870354 (lemmaInGenMapThenLongMapContainsHash!724 lm!2023 key!4653 hashF!1323))))

(declare-fun lt!1870340 () Unit!127112)

(declare-fun lemmaInGenMapThenGetPairDefined!314 (ListLongMap!4247 K!13935 Hashable!6283) Unit!127112)

(assert (=> b!4705739 (= lt!1870340 (lemmaInGenMapThenGetPairDefined!314 lm!2023 key!4653 hashF!1323))))

(declare-fun b!4705740 () Bool)

(assert (=> b!4705740 (= e!2935363 e!2935366)))

(declare-fun res!1987658 () Bool)

(assert (=> b!4705740 (=> res!1987658 e!2935366)))

(assert (=> b!4705740 (= res!1987658 (not (= (removePairForKey!1509 lt!1870361 key!4653) lt!1870368)))))

(declare-fun tail!8767 (List!52703) List!52703)

(assert (=> b!4705740 (= lt!1870368 (tail!8767 newBucket!218))))

(assert (=> b!4705740 (= lt!1870361 (tail!8767 oldBucket!34))))

(declare-fun res!1987665 () Bool)

(assert (=> start!477844 (=> (not res!1987665) (not e!2935357))))

(declare-fun forall!11431 (List!52704 Int) Bool)

(assert (=> start!477844 (= res!1987665 (forall!11431 (toList!5717 lm!2023) lambda!211507))))

(assert (=> start!477844 e!2935357))

(declare-fun inv!67809 (ListLongMap!4247) Bool)

(assert (=> start!477844 (and (inv!67809 lm!2023) e!2935359)))

(assert (=> start!477844 tp_is_empty!30949))

(declare-fun e!2935362 () Bool)

(assert (=> start!477844 e!2935362))

(assert (=> start!477844 true))

(assert (=> start!477844 e!2935364))

(declare-fun b!4705741 () Bool)

(declare-fun res!1987645 () Bool)

(assert (=> b!4705741 (=> res!1987645 e!2935354)))

(assert (=> b!4705741 (= res!1987645 (not (eq!1073 lt!1870337 lt!1870352)))))

(declare-fun b!4705742 () Bool)

(assert (=> b!4705742 (= e!2935365 (forall!11431 lt!1870350 lambda!211507))))

(declare-fun b!4705743 () Bool)

(declare-fun res!1987664 () Bool)

(assert (=> b!4705743 (=> (not res!1987664) (not e!2935355))))

(get-info :version)

(assert (=> b!4705743 (= res!1987664 ((_ is Cons!52580) (toList!5717 lm!2023)))))

(declare-fun b!4705744 () Bool)

(assert (=> b!4705744 (= e!2935367 e!2935358)))

(declare-fun res!1987652 () Bool)

(assert (=> b!4705744 (=> res!1987652 e!2935358)))

(declare-fun lt!1870346 () ListMap!5081)

(assert (=> b!4705744 (= res!1987652 (not (eq!1073 lt!1870346 lt!1870371)))))

(assert (=> b!4705744 (= lt!1870371 (-!718 lt!1870351 key!4653))))

(declare-fun lt!1870357 () tuple2!54052)

(assert (=> b!4705744 (= lt!1870346 (extractMap!1940 (Cons!52580 lt!1870357 (t!359930 (toList!5717 lm!2023)))))))

(declare-fun lt!1870338 () List!52704)

(assert (=> b!4705744 (eq!1073 (extractMap!1940 (Cons!52580 lt!1870357 lt!1870338)) (-!718 (extractMap!1940 (Cons!52580 lt!1870339 lt!1870338)) key!4653))))

(declare-fun tail!8768 (List!52704) List!52704)

(assert (=> b!4705744 (= lt!1870338 (tail!8768 lt!1870358))))

(assert (=> b!4705744 (= lt!1870357 (tuple2!54053 hash!405 lt!1870368))))

(declare-fun lt!1870334 () Unit!127112)

(declare-fun lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMapOneHashIsHead!88 (ListLongMap!4247 (_ BitVec 64) List!52703 List!52703 K!13935 Hashable!6283) Unit!127112)

(assert (=> b!4705744 (= lt!1870334 (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMapOneHashIsHead!88 lt!1870366 hash!405 (t!359929 oldBucket!34) lt!1870368 key!4653 hashF!1323))))

(declare-fun b!4705745 () Bool)

(declare-fun res!1987655 () Bool)

(assert (=> b!4705745 (=> (not res!1987655) (not e!2935357))))

(declare-fun noDuplicateKeys!1914 (List!52703) Bool)

(assert (=> b!4705745 (= res!1987655 (noDuplicateKeys!1914 newBucket!218))))

(declare-fun b!4705746 () Bool)

(declare-fun res!1987649 () Bool)

(assert (=> b!4705746 (=> (not res!1987649) (not e!2935360))))

(declare-fun allKeysSameHash!1740 (List!52703 (_ BitVec 64) Hashable!6283) Bool)

(assert (=> b!4705746 (= res!1987649 (allKeysSameHash!1740 newBucket!218 hash!405 hashF!1323))))

(declare-fun b!4705747 () Bool)

(declare-fun res!1987647 () Bool)

(assert (=> b!4705747 (=> res!1987647 e!2935354)))

(assert (=> b!4705747 (= res!1987647 (not (eq!1073 lt!1870369 lt!1870364)))))

(declare-fun b!4705748 () Bool)

(assert (=> b!4705748 (= e!2935354 e!2935361)))

(declare-fun res!1987666 () Bool)

(assert (=> b!4705748 (=> res!1987666 e!2935361)))

(assert (=> b!4705748 (= res!1987666 (not (eq!1073 lt!1870352 lt!1870353)))))

(assert (=> b!4705748 (= lt!1870353 (+!2198 lt!1870346 (h!58874 oldBucket!34)))))

(assert (=> b!4705748 (eq!1073 lt!1870345 (+!2198 lt!1870346 (h!58874 oldBucket!34)))))

(declare-fun lt!1870348 () Unit!127112)

(declare-fun lemmaAddToEqMapsPreservesEq!96 (ListMap!5081 ListMap!5081 K!13935 V!14181) Unit!127112)

(assert (=> b!4705748 (= lt!1870348 (lemmaAddToEqMapsPreservesEq!96 lt!1870371 lt!1870346 (_1!30319 (h!58874 oldBucket!34)) (_2!30319 (h!58874 oldBucket!34))))))

(declare-fun b!4705749 () Bool)

(declare-fun res!1987656 () Bool)

(assert (=> b!4705749 (=> (not res!1987656) (not e!2935357))))

(assert (=> b!4705749 (= res!1987656 (= (removePairForKey!1509 oldBucket!34 key!4653) newBucket!218))))

(declare-fun tp!1346956 () Bool)

(declare-fun b!4705750 () Bool)

(assert (=> b!4705750 (= e!2935362 (and tp_is_empty!30949 tp_is_empty!30951 tp!1346956))))

(declare-fun b!4705751 () Bool)

(declare-fun res!1987661 () Bool)

(assert (=> b!4705751 (=> (not res!1987661) (not e!2935357))))

(assert (=> b!4705751 (= res!1987661 (allKeysSameHash!1740 oldBucket!34 hash!405 hashF!1323))))

(declare-fun b!4705752 () Bool)

(assert (=> b!4705752 (= e!2935355 (not e!2935368))))

(declare-fun res!1987663 () Bool)

(assert (=> b!4705752 (=> res!1987663 e!2935368)))

(assert (=> b!4705752 (= res!1987663 (or (and ((_ is Cons!52579) oldBucket!34) (= (_1!30319 (h!58874 oldBucket!34)) key!4653)) (not ((_ is Cons!52579) oldBucket!34)) (= (_1!30319 (h!58874 oldBucket!34)) key!4653)))))

(assert (=> b!4705752 (= lt!1870335 (addToMapMapFromBucket!1346 (_2!30320 (h!58875 (toList!5717 lm!2023))) lt!1870342))))

(assert (=> b!4705752 (= lt!1870342 (extractMap!1940 (t!359930 (toList!5717 lm!2023))))))

(declare-fun tail!8769 (ListLongMap!4247) ListLongMap!4247)

(assert (=> b!4705752 (= (t!359930 (toList!5717 lm!2023)) (toList!5717 (tail!8769 lm!2023)))))

(declare-fun b!4705753 () Bool)

(declare-fun res!1987651 () Bool)

(assert (=> b!4705753 (=> (not res!1987651) (not e!2935357))))

(assert (=> b!4705753 (= res!1987651 (noDuplicateKeys!1914 oldBucket!34))))

(assert (= (and start!477844 res!1987665) b!4705753))

(assert (= (and b!4705753 res!1987651) b!4705745))

(assert (= (and b!4705745 res!1987655) b!4705749))

(assert (= (and b!4705749 res!1987656) b!4705751))

(assert (= (and b!4705751 res!1987661) b!4705731))

(assert (= (and b!4705731 res!1987660) b!4705738))

(assert (= (and b!4705738 res!1987657) b!4705746))

(assert (= (and b!4705746 res!1987649) b!4705737))

(assert (= (and b!4705737 res!1987659) b!4705735))

(assert (= (and b!4705735 res!1987643) b!4705743))

(assert (= (and b!4705743 res!1987664) b!4705752))

(assert (= (and b!4705752 (not res!1987663)) b!4705739))

(assert (= (and b!4705739 (not res!1987644)) b!4705740))

(assert (= (and b!4705740 (not res!1987658)) b!4705728))

(assert (= (and b!4705728 (not res!1987650)) b!4705736))

(assert (= (and b!4705736 (not res!1987667)) b!4705729))

(assert (= (and b!4705729 (not res!1987662)) b!4705734))

(assert (= (and b!4705734 (not res!1987646)) b!4705744))

(assert (= (and b!4705744 (not res!1987652)) b!4705732))

(assert (= (and b!4705732 (not res!1987653)) b!4705741))

(assert (= (and b!4705741 (not res!1987645)) b!4705747))

(assert (= (and b!4705747 (not res!1987647)) b!4705748))

(assert (= (and b!4705748 (not res!1987666)) b!4705730))

(assert (= (and b!4705730 (not res!1987648)) b!4705727))

(assert (= (and b!4705727 (not res!1987654)) b!4705742))

(assert (= start!477844 b!4705726))

(assert (= (and start!477844 ((_ is Cons!52579) oldBucket!34)) b!4705750))

(assert (= (and start!477844 ((_ is Cons!52579) newBucket!218)) b!4705733))

(declare-fun m!5627347 () Bool)

(assert (=> b!4705744 m!5627347))

(assert (=> b!4705744 m!5627347))

(declare-fun m!5627349 () Bool)

(assert (=> b!4705744 m!5627349))

(declare-fun m!5627351 () Bool)

(assert (=> b!4705744 m!5627351))

(declare-fun m!5627353 () Bool)

(assert (=> b!4705744 m!5627353))

(declare-fun m!5627355 () Bool)

(assert (=> b!4705744 m!5627355))

(declare-fun m!5627357 () Bool)

(assert (=> b!4705744 m!5627357))

(declare-fun m!5627359 () Bool)

(assert (=> b!4705744 m!5627359))

(assert (=> b!4705744 m!5627349))

(declare-fun m!5627361 () Bool)

(assert (=> b!4705744 m!5627361))

(declare-fun m!5627363 () Bool)

(assert (=> b!4705744 m!5627363))

(assert (=> b!4705744 m!5627359))

(declare-fun m!5627365 () Bool)

(assert (=> b!4705740 m!5627365))

(declare-fun m!5627367 () Bool)

(assert (=> b!4705740 m!5627367))

(declare-fun m!5627369 () Bool)

(assert (=> b!4705740 m!5627369))

(declare-fun m!5627371 () Bool)

(assert (=> start!477844 m!5627371))

(declare-fun m!5627373 () Bool)

(assert (=> start!477844 m!5627373))

(declare-fun m!5627375 () Bool)

(assert (=> b!4705745 m!5627375))

(declare-fun m!5627377 () Bool)

(assert (=> b!4705730 m!5627377))

(declare-fun m!5627379 () Bool)

(assert (=> b!4705730 m!5627379))

(declare-fun m!5627381 () Bool)

(assert (=> b!4705730 m!5627381))

(declare-fun m!5627383 () Bool)

(assert (=> b!4705730 m!5627383))

(declare-fun m!5627385 () Bool)

(assert (=> b!4705736 m!5627385))

(declare-fun m!5627387 () Bool)

(assert (=> b!4705736 m!5627387))

(declare-fun m!5627389 () Bool)

(assert (=> b!4705736 m!5627389))

(declare-fun m!5627391 () Bool)

(assert (=> b!4705736 m!5627391))

(declare-fun m!5627393 () Bool)

(assert (=> b!4705736 m!5627393))

(declare-fun m!5627395 () Bool)

(assert (=> b!4705736 m!5627395))

(declare-fun m!5627397 () Bool)

(assert (=> b!4705736 m!5627397))

(declare-fun m!5627399 () Bool)

(assert (=> b!4705736 m!5627399))

(declare-fun m!5627401 () Bool)

(assert (=> b!4705736 m!5627401))

(assert (=> b!4705736 m!5627395))

(declare-fun m!5627403 () Bool)

(assert (=> b!4705736 m!5627403))

(declare-fun m!5627405 () Bool)

(assert (=> b!4705736 m!5627405))

(assert (=> b!4705736 m!5627405))

(declare-fun m!5627407 () Bool)

(assert (=> b!4705736 m!5627407))

(assert (=> b!4705736 m!5627387))

(assert (=> b!4705736 m!5627397))

(declare-fun m!5627409 () Bool)

(assert (=> b!4705736 m!5627409))

(declare-fun m!5627411 () Bool)

(assert (=> b!4705736 m!5627411))

(assert (=> b!4705736 m!5627411))

(declare-fun m!5627413 () Bool)

(assert (=> b!4705736 m!5627413))

(assert (=> b!4705736 m!5627393))

(assert (=> b!4705736 m!5627407))

(declare-fun m!5627415 () Bool)

(assert (=> b!4705736 m!5627415))

(declare-fun m!5627417 () Bool)

(assert (=> b!4705736 m!5627417))

(declare-fun m!5627419 () Bool)

(assert (=> b!4705736 m!5627419))

(declare-fun m!5627421 () Bool)

(assert (=> b!4705736 m!5627421))

(declare-fun m!5627423 () Bool)

(assert (=> b!4705739 m!5627423))

(declare-fun m!5627425 () Bool)

(assert (=> b!4705739 m!5627425))

(declare-fun m!5627427 () Bool)

(assert (=> b!4705739 m!5627427))

(declare-fun m!5627429 () Bool)

(assert (=> b!4705739 m!5627429))

(declare-fun m!5627431 () Bool)

(assert (=> b!4705739 m!5627431))

(declare-fun m!5627433 () Bool)

(assert (=> b!4705739 m!5627433))

(declare-fun m!5627435 () Bool)

(assert (=> b!4705739 m!5627435))

(declare-fun m!5627437 () Bool)

(assert (=> b!4705739 m!5627437))

(declare-fun m!5627439 () Bool)

(assert (=> b!4705739 m!5627439))

(declare-fun m!5627441 () Bool)

(assert (=> b!4705739 m!5627441))

(assert (=> b!4705739 m!5627441))

(declare-fun m!5627443 () Bool)

(assert (=> b!4705739 m!5627443))

(declare-fun m!5627445 () Bool)

(assert (=> b!4705739 m!5627445))

(declare-fun m!5627447 () Bool)

(assert (=> b!4705752 m!5627447))

(declare-fun m!5627449 () Bool)

(assert (=> b!4705752 m!5627449))

(declare-fun m!5627451 () Bool)

(assert (=> b!4705752 m!5627451))

(declare-fun m!5627453 () Bool)

(assert (=> b!4705747 m!5627453))

(declare-fun m!5627455 () Bool)

(assert (=> b!4705735 m!5627455))

(declare-fun m!5627457 () Bool)

(assert (=> b!4705728 m!5627457))

(declare-fun m!5627459 () Bool)

(assert (=> b!4705731 m!5627459))

(declare-fun m!5627461 () Bool)

(assert (=> b!4705731 m!5627461))

(declare-fun m!5627463 () Bool)

(assert (=> b!4705732 m!5627463))

(assert (=> b!4705732 m!5627463))

(declare-fun m!5627465 () Bool)

(assert (=> b!4705732 m!5627465))

(declare-fun m!5627467 () Bool)

(assert (=> b!4705732 m!5627467))

(declare-fun m!5627469 () Bool)

(assert (=> b!4705732 m!5627469))

(declare-fun m!5627471 () Bool)

(assert (=> b!4705732 m!5627471))

(declare-fun m!5627473 () Bool)

(assert (=> b!4705742 m!5627473))

(declare-fun m!5627475 () Bool)

(assert (=> b!4705749 m!5627475))

(declare-fun m!5627477 () Bool)

(assert (=> b!4705748 m!5627477))

(declare-fun m!5627479 () Bool)

(assert (=> b!4705748 m!5627479))

(assert (=> b!4705748 m!5627479))

(declare-fun m!5627481 () Bool)

(assert (=> b!4705748 m!5627481))

(declare-fun m!5627483 () Bool)

(assert (=> b!4705748 m!5627483))

(declare-fun m!5627485 () Bool)

(assert (=> b!4705737 m!5627485))

(declare-fun m!5627487 () Bool)

(assert (=> b!4705734 m!5627487))

(assert (=> b!4705734 m!5627487))

(declare-fun m!5627489 () Bool)

(assert (=> b!4705734 m!5627489))

(declare-fun m!5627491 () Bool)

(assert (=> b!4705738 m!5627491))

(declare-fun m!5627493 () Bool)

(assert (=> b!4705746 m!5627493))

(declare-fun m!5627495 () Bool)

(assert (=> b!4705751 m!5627495))

(declare-fun m!5627497 () Bool)

(assert (=> b!4705753 m!5627497))

(declare-fun m!5627499 () Bool)

(assert (=> b!4705727 m!5627499))

(assert (=> b!4705727 m!5627499))

(declare-fun m!5627501 () Bool)

(assert (=> b!4705727 m!5627501))

(declare-fun m!5627503 () Bool)

(assert (=> b!4705741 m!5627503))

(check-sat (not b!4705727) (not b!4705737) (not b!4705747) (not b!4705744) (not b!4705730) (not b!4705739) (not b!4705738) (not b!4705753) (not b!4705746) (not b!4705752) (not b!4705728) tp_is_empty!30949 (not b!4705748) (not b!4705732) (not b!4705741) (not b!4705733) (not b!4705745) (not b!4705736) tp_is_empty!30951 (not b!4705735) (not b!4705750) (not start!477844) (not b!4705734) (not b!4705751) (not b!4705749) (not b!4705731) (not b!4705740) (not b!4705726) (not b!4705742))
(check-sat)
(get-model)

(declare-fun bs!1098996 () Bool)

(declare-fun d!1497533 () Bool)

(assert (= bs!1098996 (and d!1497533 start!477844)))

(declare-fun lambda!211516 () Int)

(assert (=> bs!1098996 (not (= lambda!211516 lambda!211507))))

(assert (=> d!1497533 true))

(assert (=> d!1497533 (= (allKeysSameHashInMap!1828 lm!2023 hashF!1323) (forall!11431 (toList!5717 lm!2023) lambda!211516))))

(declare-fun bs!1098997 () Bool)

(assert (= bs!1098997 d!1497533))

(declare-fun m!5627557 () Bool)

(assert (=> bs!1098997 m!5627557))

(assert (=> b!4705737 d!1497533))

(declare-fun b!4705882 () Bool)

(assert (=> b!4705882 true))

(declare-fun bs!1099012 () Bool)

(declare-fun b!4705883 () Bool)

(assert (= bs!1099012 (and b!4705883 b!4705882)))

(declare-fun lambda!211584 () Int)

(declare-fun lambda!211583 () Int)

(assert (=> bs!1099012 (= lambda!211584 lambda!211583)))

(assert (=> b!4705883 true))

(declare-fun lambda!211585 () Int)

(declare-fun lt!1870541 () ListMap!5081)

(assert (=> bs!1099012 (= (= lt!1870541 lt!1870342) (= lambda!211585 lambda!211583))))

(assert (=> b!4705883 (= (= lt!1870541 lt!1870342) (= lambda!211585 lambda!211584))))

(assert (=> b!4705883 true))

(declare-fun bs!1099014 () Bool)

(declare-fun d!1497539 () Bool)

(assert (= bs!1099014 (and d!1497539 b!4705882)))

(declare-fun lambda!211587 () Int)

(declare-fun lt!1870559 () ListMap!5081)

(assert (=> bs!1099014 (= (= lt!1870559 lt!1870342) (= lambda!211587 lambda!211583))))

(declare-fun bs!1099015 () Bool)

(assert (= bs!1099015 (and d!1497539 b!4705883)))

(assert (=> bs!1099015 (= (= lt!1870559 lt!1870342) (= lambda!211587 lambda!211584))))

(assert (=> bs!1099015 (= (= lt!1870559 lt!1870541) (= lambda!211587 lambda!211585))))

(assert (=> d!1497539 true))

(declare-fun b!4705879 () Bool)

(declare-fun e!2935450 () Bool)

(declare-fun forall!11433 (List!52703 Int) Bool)

(assert (=> b!4705879 (= e!2935450 (forall!11433 (toList!5718 lt!1870342) lambda!211585))))

(declare-fun bm!329015 () Bool)

(declare-fun call!329020 () Unit!127112)

(declare-fun lemmaContainsAllItsOwnKeys!748 (ListMap!5081) Unit!127112)

(assert (=> bm!329015 (= call!329020 (lemmaContainsAllItsOwnKeys!748 lt!1870342))))

(declare-fun b!4705880 () Bool)

(declare-fun e!2935451 () Bool)

(declare-fun invariantList!1460 (List!52703) Bool)

(assert (=> b!4705880 (= e!2935451 (invariantList!1460 (toList!5718 lt!1870559)))))

(assert (=> d!1497539 e!2935451))

(declare-fun res!1987746 () Bool)

(assert (=> d!1497539 (=> (not res!1987746) (not e!2935451))))

(assert (=> d!1497539 (= res!1987746 (forall!11433 lt!1870368 lambda!211587))))

(declare-fun e!2935449 () ListMap!5081)

(assert (=> d!1497539 (= lt!1870559 e!2935449)))

(declare-fun c!804273 () Bool)

(assert (=> d!1497539 (= c!804273 ((_ is Nil!52579) lt!1870368))))

(assert (=> d!1497539 (noDuplicateKeys!1914 lt!1870368)))

(assert (=> d!1497539 (= (addToMapMapFromBucket!1346 lt!1870368 lt!1870342) lt!1870559)))

(declare-fun b!4705881 () Bool)

(declare-fun res!1987745 () Bool)

(assert (=> b!4705881 (=> (not res!1987745) (not e!2935451))))

(assert (=> b!4705881 (= res!1987745 (forall!11433 (toList!5718 lt!1870342) lambda!211587))))

(assert (=> b!4705882 (= e!2935449 lt!1870342)))

(declare-fun lt!1870547 () Unit!127112)

(assert (=> b!4705882 (= lt!1870547 call!329020)))

(declare-fun call!329022 () Bool)

(assert (=> b!4705882 call!329022))

(declare-fun lt!1870555 () Unit!127112)

(assert (=> b!4705882 (= lt!1870555 lt!1870547)))

(declare-fun call!329021 () Bool)

(assert (=> b!4705882 call!329021))

(declare-fun lt!1870554 () Unit!127112)

(declare-fun Unit!127126 () Unit!127112)

(assert (=> b!4705882 (= lt!1870554 Unit!127126)))

(declare-fun bm!329016 () Bool)

(assert (=> bm!329016 (= call!329021 (forall!11433 (toList!5718 lt!1870342) (ite c!804273 lambda!211583 lambda!211585)))))

(declare-fun lt!1870550 () ListMap!5081)

(declare-fun bm!329017 () Bool)

(assert (=> bm!329017 (= call!329022 (forall!11433 (ite c!804273 (toList!5718 lt!1870342) (toList!5718 lt!1870550)) (ite c!804273 lambda!211583 lambda!211585)))))

(assert (=> b!4705883 (= e!2935449 lt!1870541)))

(assert (=> b!4705883 (= lt!1870550 (+!2198 lt!1870342 (h!58874 lt!1870368)))))

(assert (=> b!4705883 (= lt!1870541 (addToMapMapFromBucket!1346 (t!359929 lt!1870368) (+!2198 lt!1870342 (h!58874 lt!1870368))))))

(declare-fun lt!1870552 () Unit!127112)

(assert (=> b!4705883 (= lt!1870552 call!329020)))

(assert (=> b!4705883 (forall!11433 (toList!5718 lt!1870342) lambda!211584)))

(declare-fun lt!1870543 () Unit!127112)

(assert (=> b!4705883 (= lt!1870543 lt!1870552)))

(assert (=> b!4705883 call!329022))

(declare-fun lt!1870540 () Unit!127112)

(declare-fun Unit!127127 () Unit!127112)

(assert (=> b!4705883 (= lt!1870540 Unit!127127)))

(assert (=> b!4705883 (forall!11433 (t!359929 lt!1870368) lambda!211585)))

(declare-fun lt!1870542 () Unit!127112)

(declare-fun Unit!127128 () Unit!127112)

(assert (=> b!4705883 (= lt!1870542 Unit!127128)))

(declare-fun lt!1870549 () Unit!127112)

(declare-fun Unit!127129 () Unit!127112)

(assert (=> b!4705883 (= lt!1870549 Unit!127129)))

(declare-fun lt!1870546 () Unit!127112)

(declare-fun forallContained!3540 (List!52703 Int tuple2!54050) Unit!127112)

(assert (=> b!4705883 (= lt!1870546 (forallContained!3540 (toList!5718 lt!1870550) lambda!211585 (h!58874 lt!1870368)))))

(assert (=> b!4705883 (contains!15888 lt!1870550 (_1!30319 (h!58874 lt!1870368)))))

(declare-fun lt!1870551 () Unit!127112)

(declare-fun Unit!127130 () Unit!127112)

(assert (=> b!4705883 (= lt!1870551 Unit!127130)))

(assert (=> b!4705883 (contains!15888 lt!1870541 (_1!30319 (h!58874 lt!1870368)))))

(declare-fun lt!1870556 () Unit!127112)

(declare-fun Unit!127131 () Unit!127112)

(assert (=> b!4705883 (= lt!1870556 Unit!127131)))

(assert (=> b!4705883 (forall!11433 lt!1870368 lambda!211585)))

(declare-fun lt!1870545 () Unit!127112)

(declare-fun Unit!127132 () Unit!127112)

(assert (=> b!4705883 (= lt!1870545 Unit!127132)))

(assert (=> b!4705883 (forall!11433 (toList!5718 lt!1870550) lambda!211585)))

(declare-fun lt!1870560 () Unit!127112)

(declare-fun Unit!127133 () Unit!127112)

(assert (=> b!4705883 (= lt!1870560 Unit!127133)))

(declare-fun lt!1870548 () Unit!127112)

(declare-fun Unit!127134 () Unit!127112)

(assert (=> b!4705883 (= lt!1870548 Unit!127134)))

(declare-fun lt!1870544 () Unit!127112)

(declare-fun addForallContainsKeyThenBeforeAdding!747 (ListMap!5081 ListMap!5081 K!13935 V!14181) Unit!127112)

(assert (=> b!4705883 (= lt!1870544 (addForallContainsKeyThenBeforeAdding!747 lt!1870342 lt!1870541 (_1!30319 (h!58874 lt!1870368)) (_2!30319 (h!58874 lt!1870368))))))

(assert (=> b!4705883 (forall!11433 (toList!5718 lt!1870342) lambda!211585)))

(declare-fun lt!1870557 () Unit!127112)

(assert (=> b!4705883 (= lt!1870557 lt!1870544)))

(assert (=> b!4705883 call!329021))

(declare-fun lt!1870553 () Unit!127112)

(declare-fun Unit!127135 () Unit!127112)

(assert (=> b!4705883 (= lt!1870553 Unit!127135)))

(declare-fun res!1987744 () Bool)

(assert (=> b!4705883 (= res!1987744 (forall!11433 lt!1870368 lambda!211585))))

(assert (=> b!4705883 (=> (not res!1987744) (not e!2935450))))

(assert (=> b!4705883 e!2935450))

(declare-fun lt!1870558 () Unit!127112)

(declare-fun Unit!127137 () Unit!127112)

(assert (=> b!4705883 (= lt!1870558 Unit!127137)))

(assert (= (and d!1497539 c!804273) b!4705882))

(assert (= (and d!1497539 (not c!804273)) b!4705883))

(assert (= (and b!4705883 res!1987744) b!4705879))

(assert (= (or b!4705882 b!4705883) bm!329015))

(assert (= (or b!4705882 b!4705883) bm!329016))

(assert (= (or b!4705882 b!4705883) bm!329017))

(assert (= (and d!1497539 res!1987746) b!4705881))

(assert (= (and b!4705881 res!1987745) b!4705880))

(declare-fun m!5627659 () Bool)

(assert (=> bm!329015 m!5627659))

(declare-fun m!5627661 () Bool)

(assert (=> bm!329016 m!5627661))

(declare-fun m!5627663 () Bool)

(assert (=> b!4705880 m!5627663))

(declare-fun m!5627665 () Bool)

(assert (=> b!4705881 m!5627665))

(declare-fun m!5627667 () Bool)

(assert (=> b!4705879 m!5627667))

(declare-fun m!5627669 () Bool)

(assert (=> d!1497539 m!5627669))

(declare-fun m!5627671 () Bool)

(assert (=> d!1497539 m!5627671))

(declare-fun m!5627673 () Bool)

(assert (=> bm!329017 m!5627673))

(declare-fun m!5627675 () Bool)

(assert (=> b!4705883 m!5627675))

(declare-fun m!5627677 () Bool)

(assert (=> b!4705883 m!5627677))

(declare-fun m!5627679 () Bool)

(assert (=> b!4705883 m!5627679))

(declare-fun m!5627681 () Bool)

(assert (=> b!4705883 m!5627681))

(assert (=> b!4705883 m!5627679))

(assert (=> b!4705883 m!5627667))

(declare-fun m!5627683 () Bool)

(assert (=> b!4705883 m!5627683))

(declare-fun m!5627685 () Bool)

(assert (=> b!4705883 m!5627685))

(declare-fun m!5627687 () Bool)

(assert (=> b!4705883 m!5627687))

(declare-fun m!5627689 () Bool)

(assert (=> b!4705883 m!5627689))

(assert (=> b!4705883 m!5627675))

(declare-fun m!5627691 () Bool)

(assert (=> b!4705883 m!5627691))

(declare-fun m!5627693 () Bool)

(assert (=> b!4705883 m!5627693))

(assert (=> b!4705736 d!1497539))

(declare-fun bs!1099038 () Bool)

(declare-fun d!1497579 () Bool)

(assert (= bs!1099038 (and d!1497579 start!477844)))

(declare-fun lambda!211597 () Int)

(assert (=> bs!1099038 (= lambda!211597 lambda!211507)))

(declare-fun bs!1099039 () Bool)

(assert (= bs!1099039 (and d!1497579 d!1497533)))

(assert (=> bs!1099039 (not (= lambda!211597 lambda!211516))))

(declare-fun lt!1870606 () ListMap!5081)

(assert (=> d!1497579 (invariantList!1460 (toList!5718 lt!1870606))))

(declare-fun e!2935460 () ListMap!5081)

(assert (=> d!1497579 (= lt!1870606 e!2935460)))

(declare-fun c!804278 () Bool)

(assert (=> d!1497579 (= c!804278 ((_ is Cons!52580) (Cons!52580 (tuple2!54053 hash!405 lt!1870361) (t!359930 (toList!5717 lm!2023)))))))

(assert (=> d!1497579 (forall!11431 (Cons!52580 (tuple2!54053 hash!405 lt!1870361) (t!359930 (toList!5717 lm!2023))) lambda!211597)))

(assert (=> d!1497579 (= (extractMap!1940 (Cons!52580 (tuple2!54053 hash!405 lt!1870361) (t!359930 (toList!5717 lm!2023)))) lt!1870606)))

(declare-fun b!4705902 () Bool)

(assert (=> b!4705902 (= e!2935460 (addToMapMapFromBucket!1346 (_2!30320 (h!58875 (Cons!52580 (tuple2!54053 hash!405 lt!1870361) (t!359930 (toList!5717 lm!2023))))) (extractMap!1940 (t!359930 (Cons!52580 (tuple2!54053 hash!405 lt!1870361) (t!359930 (toList!5717 lm!2023)))))))))

(declare-fun b!4705903 () Bool)

(assert (=> b!4705903 (= e!2935460 (ListMap!5082 Nil!52579))))

(assert (= (and d!1497579 c!804278) b!4705902))

(assert (= (and d!1497579 (not c!804278)) b!4705903))

(declare-fun m!5627767 () Bool)

(assert (=> d!1497579 m!5627767))

(declare-fun m!5627769 () Bool)

(assert (=> d!1497579 m!5627769))

(declare-fun m!5627771 () Bool)

(assert (=> b!4705902 m!5627771))

(assert (=> b!4705902 m!5627771))

(declare-fun m!5627773 () Bool)

(assert (=> b!4705902 m!5627773))

(assert (=> b!4705736 d!1497579))

(declare-fun bs!1099040 () Bool)

(declare-fun b!4705907 () Bool)

(assert (= bs!1099040 (and b!4705907 b!4705882)))

(declare-fun lambda!211598 () Int)

(assert (=> bs!1099040 (= lambda!211598 lambda!211583)))

(declare-fun bs!1099041 () Bool)

(assert (= bs!1099041 (and b!4705907 b!4705883)))

(assert (=> bs!1099041 (= lambda!211598 lambda!211584)))

(assert (=> bs!1099041 (= (= lt!1870342 lt!1870541) (= lambda!211598 lambda!211585))))

(declare-fun bs!1099042 () Bool)

(assert (= bs!1099042 (and b!4705907 d!1497539)))

(assert (=> bs!1099042 (= (= lt!1870342 lt!1870559) (= lambda!211598 lambda!211587))))

(assert (=> b!4705907 true))

(declare-fun bs!1099043 () Bool)

(declare-fun b!4705908 () Bool)

(assert (= bs!1099043 (and b!4705908 b!4705907)))

(declare-fun lambda!211599 () Int)

(assert (=> bs!1099043 (= lambda!211599 lambda!211598)))

(declare-fun bs!1099044 () Bool)

(assert (= bs!1099044 (and b!4705908 b!4705882)))

(assert (=> bs!1099044 (= lambda!211599 lambda!211583)))

(declare-fun bs!1099045 () Bool)

(assert (= bs!1099045 (and b!4705908 d!1497539)))

(assert (=> bs!1099045 (= (= lt!1870342 lt!1870559) (= lambda!211599 lambda!211587))))

(declare-fun bs!1099046 () Bool)

(assert (= bs!1099046 (and b!4705908 b!4705883)))

(assert (=> bs!1099046 (= (= lt!1870342 lt!1870541) (= lambda!211599 lambda!211585))))

(assert (=> bs!1099046 (= lambda!211599 lambda!211584)))

(assert (=> b!4705908 true))

(declare-fun lt!1870608 () ListMap!5081)

(declare-fun lambda!211600 () Int)

(assert (=> bs!1099043 (= (= lt!1870608 lt!1870342) (= lambda!211600 lambda!211598))))

(assert (=> bs!1099044 (= (= lt!1870608 lt!1870342) (= lambda!211600 lambda!211583))))

(assert (=> bs!1099045 (= (= lt!1870608 lt!1870559) (= lambda!211600 lambda!211587))))

(assert (=> b!4705908 (= (= lt!1870608 lt!1870342) (= lambda!211600 lambda!211599))))

(assert (=> bs!1099046 (= (= lt!1870608 lt!1870541) (= lambda!211600 lambda!211585))))

(assert (=> bs!1099046 (= (= lt!1870608 lt!1870342) (= lambda!211600 lambda!211584))))

(assert (=> b!4705908 true))

(declare-fun bs!1099047 () Bool)

(declare-fun d!1497591 () Bool)

(assert (= bs!1099047 (and d!1497591 b!4705907)))

(declare-fun lt!1870626 () ListMap!5081)

(declare-fun lambda!211601 () Int)

(assert (=> bs!1099047 (= (= lt!1870626 lt!1870342) (= lambda!211601 lambda!211598))))

(declare-fun bs!1099048 () Bool)

(assert (= bs!1099048 (and d!1497591 b!4705882)))

(assert (=> bs!1099048 (= (= lt!1870626 lt!1870342) (= lambda!211601 lambda!211583))))

(declare-fun bs!1099049 () Bool)

(assert (= bs!1099049 (and d!1497591 d!1497539)))

(assert (=> bs!1099049 (= (= lt!1870626 lt!1870559) (= lambda!211601 lambda!211587))))

(declare-fun bs!1099050 () Bool)

(assert (= bs!1099050 (and d!1497591 b!4705908)))

(assert (=> bs!1099050 (= (= lt!1870626 lt!1870342) (= lambda!211601 lambda!211599))))

(assert (=> bs!1099050 (= (= lt!1870626 lt!1870608) (= lambda!211601 lambda!211600))))

(declare-fun bs!1099051 () Bool)

(assert (= bs!1099051 (and d!1497591 b!4705883)))

(assert (=> bs!1099051 (= (= lt!1870626 lt!1870541) (= lambda!211601 lambda!211585))))

(assert (=> bs!1099051 (= (= lt!1870626 lt!1870342) (= lambda!211601 lambda!211584))))

(assert (=> d!1497591 true))

(declare-fun b!4705904 () Bool)

(declare-fun e!2935462 () Bool)

(assert (=> b!4705904 (= e!2935462 (forall!11433 (toList!5718 lt!1870342) lambda!211600))))

(declare-fun bm!329024 () Bool)

(declare-fun call!329029 () Unit!127112)

(assert (=> bm!329024 (= call!329029 (lemmaContainsAllItsOwnKeys!748 lt!1870342))))

(declare-fun b!4705905 () Bool)

(declare-fun e!2935463 () Bool)

(assert (=> b!4705905 (= e!2935463 (invariantList!1460 (toList!5718 lt!1870626)))))

(assert (=> d!1497591 e!2935463))

(declare-fun res!1987755 () Bool)

(assert (=> d!1497591 (=> (not res!1987755) (not e!2935463))))

(assert (=> d!1497591 (= res!1987755 (forall!11433 (Cons!52579 lt!1870333 lt!1870368) lambda!211601))))

(declare-fun e!2935461 () ListMap!5081)

(assert (=> d!1497591 (= lt!1870626 e!2935461)))

(declare-fun c!804279 () Bool)

(assert (=> d!1497591 (= c!804279 ((_ is Nil!52579) (Cons!52579 lt!1870333 lt!1870368)))))

(assert (=> d!1497591 (noDuplicateKeys!1914 (Cons!52579 lt!1870333 lt!1870368))))

(assert (=> d!1497591 (= (addToMapMapFromBucket!1346 (Cons!52579 lt!1870333 lt!1870368) lt!1870342) lt!1870626)))

(declare-fun b!4705906 () Bool)

(declare-fun res!1987754 () Bool)

(assert (=> b!4705906 (=> (not res!1987754) (not e!2935463))))

(assert (=> b!4705906 (= res!1987754 (forall!11433 (toList!5718 lt!1870342) lambda!211601))))

(assert (=> b!4705907 (= e!2935461 lt!1870342)))

(declare-fun lt!1870614 () Unit!127112)

(assert (=> b!4705907 (= lt!1870614 call!329029)))

(declare-fun call!329031 () Bool)

(assert (=> b!4705907 call!329031))

(declare-fun lt!1870622 () Unit!127112)

(assert (=> b!4705907 (= lt!1870622 lt!1870614)))

(declare-fun call!329030 () Bool)

(assert (=> b!4705907 call!329030))

(declare-fun lt!1870621 () Unit!127112)

(declare-fun Unit!127148 () Unit!127112)

(assert (=> b!4705907 (= lt!1870621 Unit!127148)))

(declare-fun bm!329025 () Bool)

(assert (=> bm!329025 (= call!329030 (forall!11433 (toList!5718 lt!1870342) (ite c!804279 lambda!211598 lambda!211600)))))

(declare-fun lt!1870617 () ListMap!5081)

(declare-fun bm!329026 () Bool)

(assert (=> bm!329026 (= call!329031 (forall!11433 (ite c!804279 (toList!5718 lt!1870342) (toList!5718 lt!1870617)) (ite c!804279 lambda!211598 lambda!211600)))))

(assert (=> b!4705908 (= e!2935461 lt!1870608)))

(assert (=> b!4705908 (= lt!1870617 (+!2198 lt!1870342 (h!58874 (Cons!52579 lt!1870333 lt!1870368))))))

(assert (=> b!4705908 (= lt!1870608 (addToMapMapFromBucket!1346 (t!359929 (Cons!52579 lt!1870333 lt!1870368)) (+!2198 lt!1870342 (h!58874 (Cons!52579 lt!1870333 lt!1870368)))))))

(declare-fun lt!1870619 () Unit!127112)

(assert (=> b!4705908 (= lt!1870619 call!329029)))

(assert (=> b!4705908 (forall!11433 (toList!5718 lt!1870342) lambda!211599)))

(declare-fun lt!1870610 () Unit!127112)

(assert (=> b!4705908 (= lt!1870610 lt!1870619)))

(assert (=> b!4705908 call!329031))

(declare-fun lt!1870607 () Unit!127112)

(declare-fun Unit!127149 () Unit!127112)

(assert (=> b!4705908 (= lt!1870607 Unit!127149)))

(assert (=> b!4705908 (forall!11433 (t!359929 (Cons!52579 lt!1870333 lt!1870368)) lambda!211600)))

(declare-fun lt!1870609 () Unit!127112)

(declare-fun Unit!127150 () Unit!127112)

(assert (=> b!4705908 (= lt!1870609 Unit!127150)))

(declare-fun lt!1870616 () Unit!127112)

(declare-fun Unit!127151 () Unit!127112)

(assert (=> b!4705908 (= lt!1870616 Unit!127151)))

(declare-fun lt!1870613 () Unit!127112)

(assert (=> b!4705908 (= lt!1870613 (forallContained!3540 (toList!5718 lt!1870617) lambda!211600 (h!58874 (Cons!52579 lt!1870333 lt!1870368))))))

(assert (=> b!4705908 (contains!15888 lt!1870617 (_1!30319 (h!58874 (Cons!52579 lt!1870333 lt!1870368))))))

(declare-fun lt!1870618 () Unit!127112)

(declare-fun Unit!127152 () Unit!127112)

(assert (=> b!4705908 (= lt!1870618 Unit!127152)))

(assert (=> b!4705908 (contains!15888 lt!1870608 (_1!30319 (h!58874 (Cons!52579 lt!1870333 lt!1870368))))))

(declare-fun lt!1870623 () Unit!127112)

(declare-fun Unit!127153 () Unit!127112)

(assert (=> b!4705908 (= lt!1870623 Unit!127153)))

(assert (=> b!4705908 (forall!11433 (Cons!52579 lt!1870333 lt!1870368) lambda!211600)))

(declare-fun lt!1870612 () Unit!127112)

(declare-fun Unit!127154 () Unit!127112)

(assert (=> b!4705908 (= lt!1870612 Unit!127154)))

(assert (=> b!4705908 (forall!11433 (toList!5718 lt!1870617) lambda!211600)))

(declare-fun lt!1870627 () Unit!127112)

(declare-fun Unit!127155 () Unit!127112)

(assert (=> b!4705908 (= lt!1870627 Unit!127155)))

(declare-fun lt!1870615 () Unit!127112)

(declare-fun Unit!127156 () Unit!127112)

(assert (=> b!4705908 (= lt!1870615 Unit!127156)))

(declare-fun lt!1870611 () Unit!127112)

(assert (=> b!4705908 (= lt!1870611 (addForallContainsKeyThenBeforeAdding!747 lt!1870342 lt!1870608 (_1!30319 (h!58874 (Cons!52579 lt!1870333 lt!1870368))) (_2!30319 (h!58874 (Cons!52579 lt!1870333 lt!1870368)))))))

(assert (=> b!4705908 (forall!11433 (toList!5718 lt!1870342) lambda!211600)))

(declare-fun lt!1870624 () Unit!127112)

(assert (=> b!4705908 (= lt!1870624 lt!1870611)))

(assert (=> b!4705908 call!329030))

(declare-fun lt!1870620 () Unit!127112)

(declare-fun Unit!127157 () Unit!127112)

(assert (=> b!4705908 (= lt!1870620 Unit!127157)))

(declare-fun res!1987753 () Bool)

(assert (=> b!4705908 (= res!1987753 (forall!11433 (Cons!52579 lt!1870333 lt!1870368) lambda!211600))))

(assert (=> b!4705908 (=> (not res!1987753) (not e!2935462))))

(assert (=> b!4705908 e!2935462))

(declare-fun lt!1870625 () Unit!127112)

(declare-fun Unit!127158 () Unit!127112)

(assert (=> b!4705908 (= lt!1870625 Unit!127158)))

(assert (= (and d!1497591 c!804279) b!4705907))

(assert (= (and d!1497591 (not c!804279)) b!4705908))

(assert (= (and b!4705908 res!1987753) b!4705904))

(assert (= (or b!4705907 b!4705908) bm!329024))

(assert (= (or b!4705907 b!4705908) bm!329025))

(assert (= (or b!4705907 b!4705908) bm!329026))

(assert (= (and d!1497591 res!1987755) b!4705906))

(assert (= (and b!4705906 res!1987754) b!4705905))

(assert (=> bm!329024 m!5627659))

(declare-fun m!5627775 () Bool)

(assert (=> bm!329025 m!5627775))

(declare-fun m!5627777 () Bool)

(assert (=> b!4705905 m!5627777))

(declare-fun m!5627779 () Bool)

(assert (=> b!4705906 m!5627779))

(declare-fun m!5627781 () Bool)

(assert (=> b!4705904 m!5627781))

(declare-fun m!5627783 () Bool)

(assert (=> d!1497591 m!5627783))

(declare-fun m!5627785 () Bool)

(assert (=> d!1497591 m!5627785))

(declare-fun m!5627787 () Bool)

(assert (=> bm!329026 m!5627787))

(declare-fun m!5627789 () Bool)

(assert (=> b!4705908 m!5627789))

(declare-fun m!5627791 () Bool)

(assert (=> b!4705908 m!5627791))

(declare-fun m!5627793 () Bool)

(assert (=> b!4705908 m!5627793))

(declare-fun m!5627795 () Bool)

(assert (=> b!4705908 m!5627795))

(assert (=> b!4705908 m!5627793))

(assert (=> b!4705908 m!5627781))

(declare-fun m!5627797 () Bool)

(assert (=> b!4705908 m!5627797))

(declare-fun m!5627799 () Bool)

(assert (=> b!4705908 m!5627799))

(declare-fun m!5627801 () Bool)

(assert (=> b!4705908 m!5627801))

(declare-fun m!5627803 () Bool)

(assert (=> b!4705908 m!5627803))

(assert (=> b!4705908 m!5627789))

(declare-fun m!5627805 () Bool)

(assert (=> b!4705908 m!5627805))

(declare-fun m!5627807 () Bool)

(assert (=> b!4705908 m!5627807))

(assert (=> b!4705736 d!1497591))

(declare-fun bs!1099052 () Bool)

(declare-fun d!1497593 () Bool)

(assert (= bs!1099052 (and d!1497593 start!477844)))

(declare-fun lambda!211604 () Int)

(assert (=> bs!1099052 (= lambda!211604 lambda!211507)))

(declare-fun bs!1099053 () Bool)

(assert (= bs!1099053 (and d!1497593 d!1497533)))

(assert (=> bs!1099053 (not (= lambda!211604 lambda!211516))))

(declare-fun bs!1099054 () Bool)

(assert (= bs!1099054 (and d!1497593 d!1497579)))

(assert (=> bs!1099054 (= lambda!211604 lambda!211597)))

(declare-fun lt!1870628 () ListMap!5081)

(assert (=> d!1497593 (invariantList!1460 (toList!5718 lt!1870628))))

(declare-fun e!2935464 () ListMap!5081)

(assert (=> d!1497593 (= lt!1870628 e!2935464)))

(declare-fun c!804280 () Bool)

(assert (=> d!1497593 (= c!804280 ((_ is Cons!52580) lt!1870358))))

(assert (=> d!1497593 (forall!11431 lt!1870358 lambda!211604)))

(assert (=> d!1497593 (= (extractMap!1940 lt!1870358) lt!1870628)))

(declare-fun b!4705909 () Bool)

(assert (=> b!4705909 (= e!2935464 (addToMapMapFromBucket!1346 (_2!30320 (h!58875 lt!1870358)) (extractMap!1940 (t!359930 lt!1870358))))))

(declare-fun b!4705910 () Bool)

(assert (=> b!4705910 (= e!2935464 (ListMap!5082 Nil!52579))))

(assert (= (and d!1497593 c!804280) b!4705909))

(assert (= (and d!1497593 (not c!804280)) b!4705910))

(declare-fun m!5627809 () Bool)

(assert (=> d!1497593 m!5627809))

(declare-fun m!5627811 () Bool)

(assert (=> d!1497593 m!5627811))

(declare-fun m!5627813 () Bool)

(assert (=> b!4705909 m!5627813))

(assert (=> b!4705909 m!5627813))

(declare-fun m!5627815 () Bool)

(assert (=> b!4705909 m!5627815))

(assert (=> b!4705736 d!1497593))

(declare-fun b!4705943 () Bool)

(declare-fun e!2935488 () Unit!127112)

(declare-fun Unit!127159 () Unit!127112)

(assert (=> b!4705943 (= e!2935488 Unit!127159)))

(declare-fun d!1497595 () Bool)

(declare-fun e!2935485 () Bool)

(assert (=> d!1497595 e!2935485))

(declare-fun res!1987766 () Bool)

(assert (=> d!1497595 (=> res!1987766 e!2935485)))

(declare-fun e!2935486 () Bool)

(assert (=> d!1497595 (= res!1987766 e!2935486)))

(declare-fun res!1987767 () Bool)

(assert (=> d!1497595 (=> (not res!1987767) (not e!2935486))))

(declare-fun lt!1870661 () Bool)

(assert (=> d!1497595 (= res!1987767 (not lt!1870661))))

(declare-fun lt!1870662 () Bool)

(assert (=> d!1497595 (= lt!1870661 lt!1870662)))

(declare-fun lt!1870664 () Unit!127112)

(declare-fun e!2935489 () Unit!127112)

(assert (=> d!1497595 (= lt!1870664 e!2935489)))

(declare-fun c!804294 () Bool)

(assert (=> d!1497595 (= c!804294 lt!1870662)))

(declare-fun containsKey!3215 (List!52703 K!13935) Bool)

(assert (=> d!1497595 (= lt!1870662 (containsKey!3215 (toList!5718 lt!1870351) key!4653))))

(assert (=> d!1497595 (= (contains!15888 lt!1870351 key!4653) lt!1870661)))

(declare-fun b!4705944 () Bool)

(declare-datatypes ((List!52705 0))(
  ( (Nil!52581) (Cons!52581 (h!58878 K!13935) (t!359933 List!52705)) )
))
(declare-fun contains!15892 (List!52705 K!13935) Bool)

(declare-fun keys!18822 (ListMap!5081) List!52705)

(assert (=> b!4705944 (= e!2935486 (not (contains!15892 (keys!18822 lt!1870351) key!4653)))))

(declare-fun b!4705945 () Bool)

(declare-fun e!2935487 () Bool)

(assert (=> b!4705945 (= e!2935487 (contains!15892 (keys!18822 lt!1870351) key!4653))))

(declare-fun b!4705946 () Bool)

(assert (=> b!4705946 false))

(declare-fun lt!1870660 () Unit!127112)

(declare-fun lt!1870663 () Unit!127112)

(assert (=> b!4705946 (= lt!1870660 lt!1870663)))

(assert (=> b!4705946 (containsKey!3215 (toList!5718 lt!1870351) key!4653)))

(declare-fun lemmaInGetKeysListThenContainsKey!898 (List!52703 K!13935) Unit!127112)

(assert (=> b!4705946 (= lt!1870663 (lemmaInGetKeysListThenContainsKey!898 (toList!5718 lt!1870351) key!4653))))

(declare-fun Unit!127161 () Unit!127112)

(assert (=> b!4705946 (= e!2935488 Unit!127161)))

(declare-fun b!4705947 () Bool)

(declare-fun e!2935484 () List!52705)

(declare-fun getKeysList!900 (List!52703) List!52705)

(assert (=> b!4705947 (= e!2935484 (getKeysList!900 (toList!5718 lt!1870351)))))

(declare-fun b!4705948 () Bool)

(declare-fun lt!1870659 () Unit!127112)

(assert (=> b!4705948 (= e!2935489 lt!1870659)))

(declare-fun lt!1870665 () Unit!127112)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1771 (List!52703 K!13935) Unit!127112)

(assert (=> b!4705948 (= lt!1870665 (lemmaContainsKeyImpliesGetValueByKeyDefined!1771 (toList!5718 lt!1870351) key!4653))))

(declare-datatypes ((Option!12240 0))(
  ( (None!12239) (Some!12239 (v!46758 V!14181)) )
))
(declare-fun isDefined!9494 (Option!12240) Bool)

(declare-fun getValueByKey!1880 (List!52703 K!13935) Option!12240)

(assert (=> b!4705948 (isDefined!9494 (getValueByKey!1880 (toList!5718 lt!1870351) key!4653))))

(declare-fun lt!1870658 () Unit!127112)

(assert (=> b!4705948 (= lt!1870658 lt!1870665)))

(declare-fun lemmaInListThenGetKeysListContains!894 (List!52703 K!13935) Unit!127112)

(assert (=> b!4705948 (= lt!1870659 (lemmaInListThenGetKeysListContains!894 (toList!5718 lt!1870351) key!4653))))

(declare-fun call!329034 () Bool)

(assert (=> b!4705948 call!329034))

(declare-fun b!4705949 () Bool)

(assert (=> b!4705949 (= e!2935484 (keys!18822 lt!1870351))))

(declare-fun b!4705950 () Bool)

(assert (=> b!4705950 (= e!2935485 e!2935487)))

(declare-fun res!1987768 () Bool)

(assert (=> b!4705950 (=> (not res!1987768) (not e!2935487))))

(assert (=> b!4705950 (= res!1987768 (isDefined!9494 (getValueByKey!1880 (toList!5718 lt!1870351) key!4653)))))

(declare-fun bm!329029 () Bool)

(assert (=> bm!329029 (= call!329034 (contains!15892 e!2935484 key!4653))))

(declare-fun c!804293 () Bool)

(assert (=> bm!329029 (= c!804293 c!804294)))

(declare-fun b!4705951 () Bool)

(assert (=> b!4705951 (= e!2935489 e!2935488)))

(declare-fun c!804292 () Bool)

(assert (=> b!4705951 (= c!804292 call!329034)))

(assert (= (and d!1497595 c!804294) b!4705948))

(assert (= (and d!1497595 (not c!804294)) b!4705951))

(assert (= (and b!4705951 c!804292) b!4705946))

(assert (= (and b!4705951 (not c!804292)) b!4705943))

(assert (= (or b!4705948 b!4705951) bm!329029))

(assert (= (and bm!329029 c!804293) b!4705947))

(assert (= (and bm!329029 (not c!804293)) b!4705949))

(assert (= (and d!1497595 res!1987767) b!4705944))

(assert (= (and d!1497595 (not res!1987766)) b!4705950))

(assert (= (and b!4705950 res!1987768) b!4705945))

(declare-fun m!5627865 () Bool)

(assert (=> b!4705944 m!5627865))

(assert (=> b!4705944 m!5627865))

(declare-fun m!5627867 () Bool)

(assert (=> b!4705944 m!5627867))

(declare-fun m!5627869 () Bool)

(assert (=> b!4705948 m!5627869))

(declare-fun m!5627871 () Bool)

(assert (=> b!4705948 m!5627871))

(assert (=> b!4705948 m!5627871))

(declare-fun m!5627873 () Bool)

(assert (=> b!4705948 m!5627873))

(declare-fun m!5627875 () Bool)

(assert (=> b!4705948 m!5627875))

(declare-fun m!5627877 () Bool)

(assert (=> b!4705946 m!5627877))

(declare-fun m!5627879 () Bool)

(assert (=> b!4705946 m!5627879))

(assert (=> d!1497595 m!5627877))

(declare-fun m!5627881 () Bool)

(assert (=> bm!329029 m!5627881))

(assert (=> b!4705950 m!5627871))

(assert (=> b!4705950 m!5627871))

(assert (=> b!4705950 m!5627873))

(assert (=> b!4705949 m!5627865))

(declare-fun m!5627883 () Bool)

(assert (=> b!4705947 m!5627883))

(assert (=> b!4705945 m!5627865))

(assert (=> b!4705945 m!5627865))

(assert (=> b!4705945 m!5627867))

(assert (=> b!4705736 d!1497595))

(declare-fun d!1497607 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!9309 (List!52703) (InoxSet tuple2!54050))

(assert (=> d!1497607 (= (eq!1073 (addToMapMapFromBucket!1346 (Cons!52579 lt!1870336 lt!1870361) lt!1870342) (+!2198 (addToMapMapFromBucket!1346 lt!1870361 lt!1870342) lt!1870336)) (= (content!9309 (toList!5718 (addToMapMapFromBucket!1346 (Cons!52579 lt!1870336 lt!1870361) lt!1870342))) (content!9309 (toList!5718 (+!2198 (addToMapMapFromBucket!1346 lt!1870361 lt!1870342) lt!1870336)))))))

(declare-fun bs!1099070 () Bool)

(assert (= bs!1099070 d!1497607))

(declare-fun m!5627885 () Bool)

(assert (=> bs!1099070 m!5627885))

(declare-fun m!5627887 () Bool)

(assert (=> bs!1099070 m!5627887))

(assert (=> b!4705736 d!1497607))

(declare-fun d!1497609 () Bool)

(declare-fun e!2935513 () Bool)

(assert (=> d!1497609 e!2935513))

(declare-fun res!1987786 () Bool)

(assert (=> d!1497609 (=> (not res!1987786) (not e!2935513))))

(declare-fun lt!1870721 () ListMap!5081)

(assert (=> d!1497609 (= res!1987786 (contains!15888 lt!1870721 (_1!30319 lt!1870333)))))

(declare-fun lt!1870719 () List!52703)

(assert (=> d!1497609 (= lt!1870721 (ListMap!5082 lt!1870719))))

(declare-fun lt!1870720 () Unit!127112)

(declare-fun lt!1870722 () Unit!127112)

(assert (=> d!1497609 (= lt!1870720 lt!1870722)))

(assert (=> d!1497609 (= (getValueByKey!1880 lt!1870719 (_1!30319 lt!1870333)) (Some!12239 (_2!30319 lt!1870333)))))

(declare-fun lemmaContainsTupThenGetReturnValue!1050 (List!52703 K!13935 V!14181) Unit!127112)

(assert (=> d!1497609 (= lt!1870722 (lemmaContainsTupThenGetReturnValue!1050 lt!1870719 (_1!30319 lt!1870333) (_2!30319 lt!1870333)))))

(declare-fun insertNoDuplicatedKeys!558 (List!52703 K!13935 V!14181) List!52703)

(assert (=> d!1497609 (= lt!1870719 (insertNoDuplicatedKeys!558 (toList!5718 (addToMapMapFromBucket!1346 lt!1870368 lt!1870342)) (_1!30319 lt!1870333) (_2!30319 lt!1870333)))))

(assert (=> d!1497609 (= (+!2198 (addToMapMapFromBucket!1346 lt!1870368 lt!1870342) lt!1870333) lt!1870721)))

(declare-fun b!4705988 () Bool)

(declare-fun res!1987785 () Bool)

(assert (=> b!4705988 (=> (not res!1987785) (not e!2935513))))

(assert (=> b!4705988 (= res!1987785 (= (getValueByKey!1880 (toList!5718 lt!1870721) (_1!30319 lt!1870333)) (Some!12239 (_2!30319 lt!1870333))))))

(declare-fun b!4705989 () Bool)

(declare-fun contains!15894 (List!52703 tuple2!54050) Bool)

(assert (=> b!4705989 (= e!2935513 (contains!15894 (toList!5718 lt!1870721) lt!1870333))))

(assert (= (and d!1497609 res!1987786) b!4705988))

(assert (= (and b!4705988 res!1987785) b!4705989))

(declare-fun m!5627909 () Bool)

(assert (=> d!1497609 m!5627909))

(declare-fun m!5627911 () Bool)

(assert (=> d!1497609 m!5627911))

(declare-fun m!5627913 () Bool)

(assert (=> d!1497609 m!5627913))

(declare-fun m!5627915 () Bool)

(assert (=> d!1497609 m!5627915))

(declare-fun m!5627917 () Bool)

(assert (=> b!4705988 m!5627917))

(declare-fun m!5627919 () Bool)

(assert (=> b!4705989 m!5627919))

(assert (=> b!4705736 d!1497609))

(declare-fun d!1497613 () Bool)

(declare-fun e!2935514 () Bool)

(assert (=> d!1497613 e!2935514))

(declare-fun res!1987788 () Bool)

(assert (=> d!1497613 (=> (not res!1987788) (not e!2935514))))

(declare-fun lt!1870725 () ListMap!5081)

(assert (=> d!1497613 (= res!1987788 (contains!15888 lt!1870725 (_1!30319 (h!58874 oldBucket!34))))))

(declare-fun lt!1870723 () List!52703)

(assert (=> d!1497613 (= lt!1870725 (ListMap!5082 lt!1870723))))

(declare-fun lt!1870724 () Unit!127112)

(declare-fun lt!1870726 () Unit!127112)

(assert (=> d!1497613 (= lt!1870724 lt!1870726)))

(assert (=> d!1497613 (= (getValueByKey!1880 lt!1870723 (_1!30319 (h!58874 oldBucket!34))) (Some!12239 (_2!30319 (h!58874 oldBucket!34))))))

(assert (=> d!1497613 (= lt!1870726 (lemmaContainsTupThenGetReturnValue!1050 lt!1870723 (_1!30319 (h!58874 oldBucket!34)) (_2!30319 (h!58874 oldBucket!34))))))

(assert (=> d!1497613 (= lt!1870723 (insertNoDuplicatedKeys!558 (toList!5718 lt!1870362) (_1!30319 (h!58874 oldBucket!34)) (_2!30319 (h!58874 oldBucket!34))))))

(assert (=> d!1497613 (= (+!2198 lt!1870362 (h!58874 oldBucket!34)) lt!1870725)))

(declare-fun b!4705990 () Bool)

(declare-fun res!1987787 () Bool)

(assert (=> b!4705990 (=> (not res!1987787) (not e!2935514))))

(assert (=> b!4705990 (= res!1987787 (= (getValueByKey!1880 (toList!5718 lt!1870725) (_1!30319 (h!58874 oldBucket!34))) (Some!12239 (_2!30319 (h!58874 oldBucket!34)))))))

(declare-fun b!4705991 () Bool)

(assert (=> b!4705991 (= e!2935514 (contains!15894 (toList!5718 lt!1870725) (h!58874 oldBucket!34)))))

(assert (= (and d!1497613 res!1987788) b!4705990))

(assert (= (and b!4705990 res!1987787) b!4705991))

(declare-fun m!5627921 () Bool)

(assert (=> d!1497613 m!5627921))

(declare-fun m!5627923 () Bool)

(assert (=> d!1497613 m!5627923))

(declare-fun m!5627925 () Bool)

(assert (=> d!1497613 m!5627925))

(declare-fun m!5627927 () Bool)

(assert (=> d!1497613 m!5627927))

(declare-fun m!5627929 () Bool)

(assert (=> b!4705990 m!5627929))

(declare-fun m!5627931 () Bool)

(assert (=> b!4705991 m!5627931))

(assert (=> b!4705736 d!1497613))

(declare-fun bs!1099095 () Bool)

(declare-fun b!4705995 () Bool)

(assert (= bs!1099095 (and b!4705995 b!4705907)))

(declare-fun lambda!211612 () Int)

(assert (=> bs!1099095 (= lambda!211612 lambda!211598)))

(declare-fun bs!1099096 () Bool)

(assert (= bs!1099096 (and b!4705995 d!1497591)))

(assert (=> bs!1099096 (= (= lt!1870342 lt!1870626) (= lambda!211612 lambda!211601))))

(declare-fun bs!1099097 () Bool)

(assert (= bs!1099097 (and b!4705995 b!4705882)))

(assert (=> bs!1099097 (= lambda!211612 lambda!211583)))

(declare-fun bs!1099098 () Bool)

(assert (= bs!1099098 (and b!4705995 d!1497539)))

(assert (=> bs!1099098 (= (= lt!1870342 lt!1870559) (= lambda!211612 lambda!211587))))

(declare-fun bs!1099099 () Bool)

(assert (= bs!1099099 (and b!4705995 b!4705908)))

(assert (=> bs!1099099 (= lambda!211612 lambda!211599)))

(assert (=> bs!1099099 (= (= lt!1870342 lt!1870608) (= lambda!211612 lambda!211600))))

(declare-fun bs!1099100 () Bool)

(assert (= bs!1099100 (and b!4705995 b!4705883)))

(assert (=> bs!1099100 (= (= lt!1870342 lt!1870541) (= lambda!211612 lambda!211585))))

(assert (=> bs!1099100 (= lambda!211612 lambda!211584)))

(assert (=> b!4705995 true))

(declare-fun bs!1099102 () Bool)

(declare-fun b!4705996 () Bool)

(assert (= bs!1099102 (and b!4705996 b!4705907)))

(declare-fun lambda!211614 () Int)

(assert (=> bs!1099102 (= lambda!211614 lambda!211598)))

(declare-fun bs!1099103 () Bool)

(assert (= bs!1099103 (and b!4705996 d!1497591)))

(assert (=> bs!1099103 (= (= lt!1870342 lt!1870626) (= lambda!211614 lambda!211601))))

(declare-fun bs!1099105 () Bool)

(assert (= bs!1099105 (and b!4705996 b!4705882)))

(assert (=> bs!1099105 (= lambda!211614 lambda!211583)))

(declare-fun bs!1099107 () Bool)

(assert (= bs!1099107 (and b!4705996 d!1497539)))

(assert (=> bs!1099107 (= (= lt!1870342 lt!1870559) (= lambda!211614 lambda!211587))))

(declare-fun bs!1099109 () Bool)

(assert (= bs!1099109 (and b!4705996 b!4705908)))

(assert (=> bs!1099109 (= lambda!211614 lambda!211599)))

(assert (=> bs!1099109 (= (= lt!1870342 lt!1870608) (= lambda!211614 lambda!211600))))

(declare-fun bs!1099112 () Bool)

(assert (= bs!1099112 (and b!4705996 b!4705883)))

(assert (=> bs!1099112 (= lambda!211614 lambda!211584)))

(declare-fun bs!1099113 () Bool)

(assert (= bs!1099113 (and b!4705996 b!4705995)))

(assert (=> bs!1099113 (= lambda!211614 lambda!211612)))

(assert (=> bs!1099112 (= (= lt!1870342 lt!1870541) (= lambda!211614 lambda!211585))))

(assert (=> b!4705996 true))

(declare-fun lambda!211615 () Int)

(declare-fun lt!1870728 () ListMap!5081)

(assert (=> bs!1099102 (= (= lt!1870728 lt!1870342) (= lambda!211615 lambda!211598))))

(assert (=> bs!1099103 (= (= lt!1870728 lt!1870626) (= lambda!211615 lambda!211601))))

(assert (=> bs!1099105 (= (= lt!1870728 lt!1870342) (= lambda!211615 lambda!211583))))

(assert (=> bs!1099107 (= (= lt!1870728 lt!1870559) (= lambda!211615 lambda!211587))))

(assert (=> bs!1099109 (= (= lt!1870728 lt!1870342) (= lambda!211615 lambda!211599))))

(assert (=> bs!1099109 (= (= lt!1870728 lt!1870608) (= lambda!211615 lambda!211600))))

(assert (=> bs!1099112 (= (= lt!1870728 lt!1870342) (= lambda!211615 lambda!211584))))

(assert (=> bs!1099113 (= (= lt!1870728 lt!1870342) (= lambda!211615 lambda!211612))))

(assert (=> b!4705996 (= (= lt!1870728 lt!1870342) (= lambda!211615 lambda!211614))))

(assert (=> bs!1099112 (= (= lt!1870728 lt!1870541) (= lambda!211615 lambda!211585))))

(assert (=> b!4705996 true))

(declare-fun bs!1099129 () Bool)

(declare-fun d!1497615 () Bool)

(assert (= bs!1099129 (and d!1497615 b!4705907)))

(declare-fun lambda!211618 () Int)

(declare-fun lt!1870746 () ListMap!5081)

(assert (=> bs!1099129 (= (= lt!1870746 lt!1870342) (= lambda!211618 lambda!211598))))

(declare-fun bs!1099130 () Bool)

(assert (= bs!1099130 (and d!1497615 d!1497591)))

(assert (=> bs!1099130 (= (= lt!1870746 lt!1870626) (= lambda!211618 lambda!211601))))

(declare-fun bs!1099131 () Bool)

(assert (= bs!1099131 (and d!1497615 b!4705882)))

(assert (=> bs!1099131 (= (= lt!1870746 lt!1870342) (= lambda!211618 lambda!211583))))

(declare-fun bs!1099132 () Bool)

(assert (= bs!1099132 (and d!1497615 b!4705996)))

(assert (=> bs!1099132 (= (= lt!1870746 lt!1870728) (= lambda!211618 lambda!211615))))

(declare-fun bs!1099133 () Bool)

(assert (= bs!1099133 (and d!1497615 d!1497539)))

(assert (=> bs!1099133 (= (= lt!1870746 lt!1870559) (= lambda!211618 lambda!211587))))

(declare-fun bs!1099134 () Bool)

(assert (= bs!1099134 (and d!1497615 b!4705908)))

(assert (=> bs!1099134 (= (= lt!1870746 lt!1870342) (= lambda!211618 lambda!211599))))

(assert (=> bs!1099134 (= (= lt!1870746 lt!1870608) (= lambda!211618 lambda!211600))))

(declare-fun bs!1099135 () Bool)

(assert (= bs!1099135 (and d!1497615 b!4705883)))

(assert (=> bs!1099135 (= (= lt!1870746 lt!1870342) (= lambda!211618 lambda!211584))))

(declare-fun bs!1099136 () Bool)

(assert (= bs!1099136 (and d!1497615 b!4705995)))

(assert (=> bs!1099136 (= (= lt!1870746 lt!1870342) (= lambda!211618 lambda!211612))))

(assert (=> bs!1099132 (= (= lt!1870746 lt!1870342) (= lambda!211618 lambda!211614))))

(assert (=> bs!1099135 (= (= lt!1870746 lt!1870541) (= lambda!211618 lambda!211585))))

(assert (=> d!1497615 true))

(declare-fun b!4705992 () Bool)

(declare-fun e!2935516 () Bool)

(assert (=> b!4705992 (= e!2935516 (forall!11433 (toList!5718 lt!1870342) lambda!211615))))

(declare-fun bm!329036 () Bool)

(declare-fun call!329041 () Unit!127112)

(assert (=> bm!329036 (= call!329041 (lemmaContainsAllItsOwnKeys!748 lt!1870342))))

(declare-fun b!4705993 () Bool)

(declare-fun e!2935517 () Bool)

(assert (=> b!4705993 (= e!2935517 (invariantList!1460 (toList!5718 lt!1870746)))))

(assert (=> d!1497615 e!2935517))

(declare-fun res!1987791 () Bool)

(assert (=> d!1497615 (=> (not res!1987791) (not e!2935517))))

(assert (=> d!1497615 (= res!1987791 (forall!11433 (Cons!52579 lt!1870336 lt!1870361) lambda!211618))))

(declare-fun e!2935515 () ListMap!5081)

(assert (=> d!1497615 (= lt!1870746 e!2935515)))

(declare-fun c!804305 () Bool)

(assert (=> d!1497615 (= c!804305 ((_ is Nil!52579) (Cons!52579 lt!1870336 lt!1870361)))))

(assert (=> d!1497615 (noDuplicateKeys!1914 (Cons!52579 lt!1870336 lt!1870361))))

(assert (=> d!1497615 (= (addToMapMapFromBucket!1346 (Cons!52579 lt!1870336 lt!1870361) lt!1870342) lt!1870746)))

(declare-fun b!4705994 () Bool)

(declare-fun res!1987790 () Bool)

(assert (=> b!4705994 (=> (not res!1987790) (not e!2935517))))

(assert (=> b!4705994 (= res!1987790 (forall!11433 (toList!5718 lt!1870342) lambda!211618))))

(assert (=> b!4705995 (= e!2935515 lt!1870342)))

(declare-fun lt!1870734 () Unit!127112)

(assert (=> b!4705995 (= lt!1870734 call!329041)))

(declare-fun call!329043 () Bool)

(assert (=> b!4705995 call!329043))

(declare-fun lt!1870742 () Unit!127112)

(assert (=> b!4705995 (= lt!1870742 lt!1870734)))

(declare-fun call!329042 () Bool)

(assert (=> b!4705995 call!329042))

(declare-fun lt!1870741 () Unit!127112)

(declare-fun Unit!127167 () Unit!127112)

(assert (=> b!4705995 (= lt!1870741 Unit!127167)))

(declare-fun bm!329037 () Bool)

(assert (=> bm!329037 (= call!329042 (forall!11433 (toList!5718 lt!1870342) (ite c!804305 lambda!211612 lambda!211615)))))

(declare-fun bm!329038 () Bool)

(declare-fun lt!1870737 () ListMap!5081)

(assert (=> bm!329038 (= call!329043 (forall!11433 (ite c!804305 (toList!5718 lt!1870342) (toList!5718 lt!1870737)) (ite c!804305 lambda!211612 lambda!211615)))))

(assert (=> b!4705996 (= e!2935515 lt!1870728)))

(assert (=> b!4705996 (= lt!1870737 (+!2198 lt!1870342 (h!58874 (Cons!52579 lt!1870336 lt!1870361))))))

(assert (=> b!4705996 (= lt!1870728 (addToMapMapFromBucket!1346 (t!359929 (Cons!52579 lt!1870336 lt!1870361)) (+!2198 lt!1870342 (h!58874 (Cons!52579 lt!1870336 lt!1870361)))))))

(declare-fun lt!1870739 () Unit!127112)

(assert (=> b!4705996 (= lt!1870739 call!329041)))

(assert (=> b!4705996 (forall!11433 (toList!5718 lt!1870342) lambda!211614)))

(declare-fun lt!1870730 () Unit!127112)

(assert (=> b!4705996 (= lt!1870730 lt!1870739)))

(assert (=> b!4705996 call!329043))

(declare-fun lt!1870727 () Unit!127112)

(declare-fun Unit!127172 () Unit!127112)

(assert (=> b!4705996 (= lt!1870727 Unit!127172)))

(assert (=> b!4705996 (forall!11433 (t!359929 (Cons!52579 lt!1870336 lt!1870361)) lambda!211615)))

(declare-fun lt!1870729 () Unit!127112)

(declare-fun Unit!127174 () Unit!127112)

(assert (=> b!4705996 (= lt!1870729 Unit!127174)))

(declare-fun lt!1870736 () Unit!127112)

(declare-fun Unit!127175 () Unit!127112)

(assert (=> b!4705996 (= lt!1870736 Unit!127175)))

(declare-fun lt!1870733 () Unit!127112)

(assert (=> b!4705996 (= lt!1870733 (forallContained!3540 (toList!5718 lt!1870737) lambda!211615 (h!58874 (Cons!52579 lt!1870336 lt!1870361))))))

(assert (=> b!4705996 (contains!15888 lt!1870737 (_1!30319 (h!58874 (Cons!52579 lt!1870336 lt!1870361))))))

(declare-fun lt!1870738 () Unit!127112)

(declare-fun Unit!127177 () Unit!127112)

(assert (=> b!4705996 (= lt!1870738 Unit!127177)))

(assert (=> b!4705996 (contains!15888 lt!1870728 (_1!30319 (h!58874 (Cons!52579 lt!1870336 lt!1870361))))))

(declare-fun lt!1870743 () Unit!127112)

(declare-fun Unit!127178 () Unit!127112)

(assert (=> b!4705996 (= lt!1870743 Unit!127178)))

(assert (=> b!4705996 (forall!11433 (Cons!52579 lt!1870336 lt!1870361) lambda!211615)))

(declare-fun lt!1870732 () Unit!127112)

(declare-fun Unit!127180 () Unit!127112)

(assert (=> b!4705996 (= lt!1870732 Unit!127180)))

(assert (=> b!4705996 (forall!11433 (toList!5718 lt!1870737) lambda!211615)))

(declare-fun lt!1870747 () Unit!127112)

(declare-fun Unit!127181 () Unit!127112)

(assert (=> b!4705996 (= lt!1870747 Unit!127181)))

(declare-fun lt!1870735 () Unit!127112)

(declare-fun Unit!127182 () Unit!127112)

(assert (=> b!4705996 (= lt!1870735 Unit!127182)))

(declare-fun lt!1870731 () Unit!127112)

(assert (=> b!4705996 (= lt!1870731 (addForallContainsKeyThenBeforeAdding!747 lt!1870342 lt!1870728 (_1!30319 (h!58874 (Cons!52579 lt!1870336 lt!1870361))) (_2!30319 (h!58874 (Cons!52579 lt!1870336 lt!1870361)))))))

(assert (=> b!4705996 (forall!11433 (toList!5718 lt!1870342) lambda!211615)))

(declare-fun lt!1870744 () Unit!127112)

(assert (=> b!4705996 (= lt!1870744 lt!1870731)))

(assert (=> b!4705996 call!329042))

(declare-fun lt!1870740 () Unit!127112)

(declare-fun Unit!127183 () Unit!127112)

(assert (=> b!4705996 (= lt!1870740 Unit!127183)))

(declare-fun res!1987789 () Bool)

(assert (=> b!4705996 (= res!1987789 (forall!11433 (Cons!52579 lt!1870336 lt!1870361) lambda!211615))))

(assert (=> b!4705996 (=> (not res!1987789) (not e!2935516))))

(assert (=> b!4705996 e!2935516))

(declare-fun lt!1870745 () Unit!127112)

(declare-fun Unit!127184 () Unit!127112)

(assert (=> b!4705996 (= lt!1870745 Unit!127184)))

(assert (= (and d!1497615 c!804305) b!4705995))

(assert (= (and d!1497615 (not c!804305)) b!4705996))

(assert (= (and b!4705996 res!1987789) b!4705992))

(assert (= (or b!4705995 b!4705996) bm!329036))

(assert (= (or b!4705995 b!4705996) bm!329037))

(assert (= (or b!4705995 b!4705996) bm!329038))

(assert (= (and d!1497615 res!1987791) b!4705994))

(assert (= (and b!4705994 res!1987790) b!4705993))

(assert (=> bm!329036 m!5627659))

(declare-fun m!5627963 () Bool)

(assert (=> bm!329037 m!5627963))

(declare-fun m!5627965 () Bool)

(assert (=> b!4705993 m!5627965))

(declare-fun m!5627967 () Bool)

(assert (=> b!4705994 m!5627967))

(declare-fun m!5627969 () Bool)

(assert (=> b!4705992 m!5627969))

(declare-fun m!5627971 () Bool)

(assert (=> d!1497615 m!5627971))

(declare-fun m!5627973 () Bool)

(assert (=> d!1497615 m!5627973))

(declare-fun m!5627975 () Bool)

(assert (=> bm!329038 m!5627975))

(declare-fun m!5627977 () Bool)

(assert (=> b!4705996 m!5627977))

(declare-fun m!5627979 () Bool)

(assert (=> b!4705996 m!5627979))

(declare-fun m!5627981 () Bool)

(assert (=> b!4705996 m!5627981))

(declare-fun m!5627983 () Bool)

(assert (=> b!4705996 m!5627983))

(assert (=> b!4705996 m!5627981))

(assert (=> b!4705996 m!5627969))

(declare-fun m!5627985 () Bool)

(assert (=> b!4705996 m!5627985))

(declare-fun m!5627987 () Bool)

(assert (=> b!4705996 m!5627987))

(declare-fun m!5627989 () Bool)

(assert (=> b!4705996 m!5627989))

(declare-fun m!5627991 () Bool)

(assert (=> b!4705996 m!5627991))

(assert (=> b!4705996 m!5627977))

(declare-fun m!5627993 () Bool)

(assert (=> b!4705996 m!5627993))

(declare-fun m!5627995 () Bool)

(assert (=> b!4705996 m!5627995))

(assert (=> b!4705736 d!1497615))

(declare-fun bs!1099149 () Bool)

(declare-fun b!4706005 () Bool)

(assert (= bs!1099149 (and b!4706005 b!4705907)))

(declare-fun lambda!211620 () Int)

(assert (=> bs!1099149 (= lambda!211620 lambda!211598)))

(declare-fun bs!1099150 () Bool)

(assert (= bs!1099150 (and b!4706005 d!1497591)))

(assert (=> bs!1099150 (= (= lt!1870342 lt!1870626) (= lambda!211620 lambda!211601))))

(declare-fun bs!1099151 () Bool)

(assert (= bs!1099151 (and b!4706005 b!4705996)))

(assert (=> bs!1099151 (= (= lt!1870342 lt!1870728) (= lambda!211620 lambda!211615))))

(declare-fun bs!1099152 () Bool)

(assert (= bs!1099152 (and b!4706005 d!1497539)))

(assert (=> bs!1099152 (= (= lt!1870342 lt!1870559) (= lambda!211620 lambda!211587))))

(declare-fun bs!1099153 () Bool)

(assert (= bs!1099153 (and b!4706005 b!4705908)))

(assert (=> bs!1099153 (= lambda!211620 lambda!211599)))

(assert (=> bs!1099153 (= (= lt!1870342 lt!1870608) (= lambda!211620 lambda!211600))))

(declare-fun bs!1099154 () Bool)

(assert (= bs!1099154 (and b!4706005 b!4705883)))

(assert (=> bs!1099154 (= lambda!211620 lambda!211584)))

(declare-fun bs!1099155 () Bool)

(assert (= bs!1099155 (and b!4706005 d!1497615)))

(assert (=> bs!1099155 (= (= lt!1870342 lt!1870746) (= lambda!211620 lambda!211618))))

(declare-fun bs!1099156 () Bool)

(assert (= bs!1099156 (and b!4706005 b!4705882)))

(assert (=> bs!1099156 (= lambda!211620 lambda!211583)))

(declare-fun bs!1099157 () Bool)

(assert (= bs!1099157 (and b!4706005 b!4705995)))

(assert (=> bs!1099157 (= lambda!211620 lambda!211612)))

(assert (=> bs!1099151 (= lambda!211620 lambda!211614)))

(assert (=> bs!1099154 (= (= lt!1870342 lt!1870541) (= lambda!211620 lambda!211585))))

(assert (=> b!4706005 true))

(declare-fun bs!1099158 () Bool)

(declare-fun b!4706006 () Bool)

(assert (= bs!1099158 (and b!4706006 b!4706005)))

(declare-fun lambda!211621 () Int)

(assert (=> bs!1099158 (= lambda!211621 lambda!211620)))

(declare-fun bs!1099159 () Bool)

(assert (= bs!1099159 (and b!4706006 b!4705907)))

(assert (=> bs!1099159 (= lambda!211621 lambda!211598)))

(declare-fun bs!1099160 () Bool)

(assert (= bs!1099160 (and b!4706006 d!1497591)))

(assert (=> bs!1099160 (= (= lt!1870342 lt!1870626) (= lambda!211621 lambda!211601))))

(declare-fun bs!1099161 () Bool)

(assert (= bs!1099161 (and b!4706006 b!4705996)))

(assert (=> bs!1099161 (= (= lt!1870342 lt!1870728) (= lambda!211621 lambda!211615))))

(declare-fun bs!1099162 () Bool)

(assert (= bs!1099162 (and b!4706006 d!1497539)))

(assert (=> bs!1099162 (= (= lt!1870342 lt!1870559) (= lambda!211621 lambda!211587))))

(declare-fun bs!1099163 () Bool)

(assert (= bs!1099163 (and b!4706006 b!4705908)))

(assert (=> bs!1099163 (= lambda!211621 lambda!211599)))

(assert (=> bs!1099163 (= (= lt!1870342 lt!1870608) (= lambda!211621 lambda!211600))))

(declare-fun bs!1099164 () Bool)

(assert (= bs!1099164 (and b!4706006 b!4705883)))

(assert (=> bs!1099164 (= lambda!211621 lambda!211584)))

(declare-fun bs!1099165 () Bool)

(assert (= bs!1099165 (and b!4706006 d!1497615)))

(assert (=> bs!1099165 (= (= lt!1870342 lt!1870746) (= lambda!211621 lambda!211618))))

(declare-fun bs!1099166 () Bool)

(assert (= bs!1099166 (and b!4706006 b!4705882)))

(assert (=> bs!1099166 (= lambda!211621 lambda!211583)))

(declare-fun bs!1099167 () Bool)

(assert (= bs!1099167 (and b!4706006 b!4705995)))

(assert (=> bs!1099167 (= lambda!211621 lambda!211612)))

(assert (=> bs!1099161 (= lambda!211621 lambda!211614)))

(assert (=> bs!1099164 (= (= lt!1870342 lt!1870541) (= lambda!211621 lambda!211585))))

(assert (=> b!4706006 true))

(declare-fun lt!1870770 () ListMap!5081)

(declare-fun lambda!211622 () Int)

(assert (=> bs!1099158 (= (= lt!1870770 lt!1870342) (= lambda!211622 lambda!211620))))

(assert (=> bs!1099159 (= (= lt!1870770 lt!1870342) (= lambda!211622 lambda!211598))))

(assert (=> bs!1099160 (= (= lt!1870770 lt!1870626) (= lambda!211622 lambda!211601))))

(assert (=> bs!1099161 (= (= lt!1870770 lt!1870728) (= lambda!211622 lambda!211615))))

(assert (=> bs!1099162 (= (= lt!1870770 lt!1870559) (= lambda!211622 lambda!211587))))

(assert (=> bs!1099163 (= (= lt!1870770 lt!1870342) (= lambda!211622 lambda!211599))))

(assert (=> bs!1099163 (= (= lt!1870770 lt!1870608) (= lambda!211622 lambda!211600))))

(assert (=> bs!1099164 (= (= lt!1870770 lt!1870342) (= lambda!211622 lambda!211584))))

(assert (=> b!4706006 (= (= lt!1870770 lt!1870342) (= lambda!211622 lambda!211621))))

(assert (=> bs!1099165 (= (= lt!1870770 lt!1870746) (= lambda!211622 lambda!211618))))

(assert (=> bs!1099166 (= (= lt!1870770 lt!1870342) (= lambda!211622 lambda!211583))))

(assert (=> bs!1099167 (= (= lt!1870770 lt!1870342) (= lambda!211622 lambda!211612))))

(assert (=> bs!1099161 (= (= lt!1870770 lt!1870342) (= lambda!211622 lambda!211614))))

(assert (=> bs!1099164 (= (= lt!1870770 lt!1870541) (= lambda!211622 lambda!211585))))

(assert (=> b!4706006 true))

(declare-fun bs!1099169 () Bool)

(declare-fun d!1497619 () Bool)

(assert (= bs!1099169 (and d!1497619 b!4706005)))

(declare-fun lambda!211623 () Int)

(declare-fun lt!1870788 () ListMap!5081)

(assert (=> bs!1099169 (= (= lt!1870788 lt!1870342) (= lambda!211623 lambda!211620))))

(declare-fun bs!1099170 () Bool)

(assert (= bs!1099170 (and d!1497619 b!4705907)))

(assert (=> bs!1099170 (= (= lt!1870788 lt!1870342) (= lambda!211623 lambda!211598))))

(declare-fun bs!1099171 () Bool)

(assert (= bs!1099171 (and d!1497619 d!1497591)))

(assert (=> bs!1099171 (= (= lt!1870788 lt!1870626) (= lambda!211623 lambda!211601))))

(declare-fun bs!1099172 () Bool)

(assert (= bs!1099172 (and d!1497619 b!4706006)))

(assert (=> bs!1099172 (= (= lt!1870788 lt!1870770) (= lambda!211623 lambda!211622))))

(declare-fun bs!1099173 () Bool)

(assert (= bs!1099173 (and d!1497619 b!4705996)))

(assert (=> bs!1099173 (= (= lt!1870788 lt!1870728) (= lambda!211623 lambda!211615))))

(declare-fun bs!1099174 () Bool)

(assert (= bs!1099174 (and d!1497619 d!1497539)))

(assert (=> bs!1099174 (= (= lt!1870788 lt!1870559) (= lambda!211623 lambda!211587))))

(declare-fun bs!1099175 () Bool)

(assert (= bs!1099175 (and d!1497619 b!4705908)))

(assert (=> bs!1099175 (= (= lt!1870788 lt!1870342) (= lambda!211623 lambda!211599))))

(assert (=> bs!1099175 (= (= lt!1870788 lt!1870608) (= lambda!211623 lambda!211600))))

(declare-fun bs!1099176 () Bool)

(assert (= bs!1099176 (and d!1497619 b!4705883)))

(assert (=> bs!1099176 (= (= lt!1870788 lt!1870342) (= lambda!211623 lambda!211584))))

(assert (=> bs!1099172 (= (= lt!1870788 lt!1870342) (= lambda!211623 lambda!211621))))

(declare-fun bs!1099177 () Bool)

(assert (= bs!1099177 (and d!1497619 d!1497615)))

(assert (=> bs!1099177 (= (= lt!1870788 lt!1870746) (= lambda!211623 lambda!211618))))

(declare-fun bs!1099178 () Bool)

(assert (= bs!1099178 (and d!1497619 b!4705882)))

(assert (=> bs!1099178 (= (= lt!1870788 lt!1870342) (= lambda!211623 lambda!211583))))

(declare-fun bs!1099179 () Bool)

(assert (= bs!1099179 (and d!1497619 b!4705995)))

(assert (=> bs!1099179 (= (= lt!1870788 lt!1870342) (= lambda!211623 lambda!211612))))

(assert (=> bs!1099173 (= (= lt!1870788 lt!1870342) (= lambda!211623 lambda!211614))))

(assert (=> bs!1099176 (= (= lt!1870788 lt!1870541) (= lambda!211623 lambda!211585))))

(assert (=> d!1497619 true))

(declare-fun b!4706002 () Bool)

(declare-fun e!2935522 () Bool)

(assert (=> b!4706002 (= e!2935522 (forall!11433 (toList!5718 lt!1870342) lambda!211622))))

(declare-fun bm!329042 () Bool)

(declare-fun call!329047 () Unit!127112)

(assert (=> bm!329042 (= call!329047 (lemmaContainsAllItsOwnKeys!748 lt!1870342))))

(declare-fun b!4706003 () Bool)

(declare-fun e!2935523 () Bool)

(assert (=> b!4706003 (= e!2935523 (invariantList!1460 (toList!5718 lt!1870788)))))

(assert (=> d!1497619 e!2935523))

(declare-fun res!1987797 () Bool)

(assert (=> d!1497619 (=> (not res!1987797) (not e!2935523))))

(assert (=> d!1497619 (= res!1987797 (forall!11433 lt!1870361 lambda!211623))))

(declare-fun e!2935521 () ListMap!5081)

(assert (=> d!1497619 (= lt!1870788 e!2935521)))

(declare-fun c!804307 () Bool)

(assert (=> d!1497619 (= c!804307 ((_ is Nil!52579) lt!1870361))))

(assert (=> d!1497619 (noDuplicateKeys!1914 lt!1870361)))

(assert (=> d!1497619 (= (addToMapMapFromBucket!1346 lt!1870361 lt!1870342) lt!1870788)))

(declare-fun b!4706004 () Bool)

(declare-fun res!1987796 () Bool)

(assert (=> b!4706004 (=> (not res!1987796) (not e!2935523))))

(assert (=> b!4706004 (= res!1987796 (forall!11433 (toList!5718 lt!1870342) lambda!211623))))

(assert (=> b!4706005 (= e!2935521 lt!1870342)))

(declare-fun lt!1870776 () Unit!127112)

(assert (=> b!4706005 (= lt!1870776 call!329047)))

(declare-fun call!329049 () Bool)

(assert (=> b!4706005 call!329049))

(declare-fun lt!1870784 () Unit!127112)

(assert (=> b!4706005 (= lt!1870784 lt!1870776)))

(declare-fun call!329048 () Bool)

(assert (=> b!4706005 call!329048))

(declare-fun lt!1870783 () Unit!127112)

(declare-fun Unit!127185 () Unit!127112)

(assert (=> b!4706005 (= lt!1870783 Unit!127185)))

(declare-fun bm!329043 () Bool)

(assert (=> bm!329043 (= call!329048 (forall!11433 (toList!5718 lt!1870342) (ite c!804307 lambda!211620 lambda!211622)))))

(declare-fun lt!1870779 () ListMap!5081)

(declare-fun bm!329044 () Bool)

(assert (=> bm!329044 (= call!329049 (forall!11433 (ite c!804307 (toList!5718 lt!1870342) (toList!5718 lt!1870779)) (ite c!804307 lambda!211620 lambda!211622)))))

(assert (=> b!4706006 (= e!2935521 lt!1870770)))

(assert (=> b!4706006 (= lt!1870779 (+!2198 lt!1870342 (h!58874 lt!1870361)))))

(assert (=> b!4706006 (= lt!1870770 (addToMapMapFromBucket!1346 (t!359929 lt!1870361) (+!2198 lt!1870342 (h!58874 lt!1870361))))))

(declare-fun lt!1870781 () Unit!127112)

(assert (=> b!4706006 (= lt!1870781 call!329047)))

(assert (=> b!4706006 (forall!11433 (toList!5718 lt!1870342) lambda!211621)))

(declare-fun lt!1870772 () Unit!127112)

(assert (=> b!4706006 (= lt!1870772 lt!1870781)))

(assert (=> b!4706006 call!329049))

(declare-fun lt!1870769 () Unit!127112)

(declare-fun Unit!127189 () Unit!127112)

(assert (=> b!4706006 (= lt!1870769 Unit!127189)))

(assert (=> b!4706006 (forall!11433 (t!359929 lt!1870361) lambda!211622)))

(declare-fun lt!1870771 () Unit!127112)

(declare-fun Unit!127190 () Unit!127112)

(assert (=> b!4706006 (= lt!1870771 Unit!127190)))

(declare-fun lt!1870778 () Unit!127112)

(declare-fun Unit!127191 () Unit!127112)

(assert (=> b!4706006 (= lt!1870778 Unit!127191)))

(declare-fun lt!1870775 () Unit!127112)

(assert (=> b!4706006 (= lt!1870775 (forallContained!3540 (toList!5718 lt!1870779) lambda!211622 (h!58874 lt!1870361)))))

(assert (=> b!4706006 (contains!15888 lt!1870779 (_1!30319 (h!58874 lt!1870361)))))

(declare-fun lt!1870780 () Unit!127112)

(declare-fun Unit!127194 () Unit!127112)

(assert (=> b!4706006 (= lt!1870780 Unit!127194)))

(assert (=> b!4706006 (contains!15888 lt!1870770 (_1!30319 (h!58874 lt!1870361)))))

(declare-fun lt!1870785 () Unit!127112)

(declare-fun Unit!127196 () Unit!127112)

(assert (=> b!4706006 (= lt!1870785 Unit!127196)))

(assert (=> b!4706006 (forall!11433 lt!1870361 lambda!211622)))

(declare-fun lt!1870774 () Unit!127112)

(declare-fun Unit!127198 () Unit!127112)

(assert (=> b!4706006 (= lt!1870774 Unit!127198)))

(assert (=> b!4706006 (forall!11433 (toList!5718 lt!1870779) lambda!211622)))

(declare-fun lt!1870789 () Unit!127112)

(declare-fun Unit!127200 () Unit!127112)

(assert (=> b!4706006 (= lt!1870789 Unit!127200)))

(declare-fun lt!1870777 () Unit!127112)

(declare-fun Unit!127201 () Unit!127112)

(assert (=> b!4706006 (= lt!1870777 Unit!127201)))

(declare-fun lt!1870773 () Unit!127112)

(assert (=> b!4706006 (= lt!1870773 (addForallContainsKeyThenBeforeAdding!747 lt!1870342 lt!1870770 (_1!30319 (h!58874 lt!1870361)) (_2!30319 (h!58874 lt!1870361))))))

(assert (=> b!4706006 (forall!11433 (toList!5718 lt!1870342) lambda!211622)))

(declare-fun lt!1870786 () Unit!127112)

(assert (=> b!4706006 (= lt!1870786 lt!1870773)))

(assert (=> b!4706006 call!329048))

(declare-fun lt!1870782 () Unit!127112)

(declare-fun Unit!127203 () Unit!127112)

(assert (=> b!4706006 (= lt!1870782 Unit!127203)))

(declare-fun res!1987795 () Bool)

(assert (=> b!4706006 (= res!1987795 (forall!11433 lt!1870361 lambda!211622))))

(assert (=> b!4706006 (=> (not res!1987795) (not e!2935522))))

(assert (=> b!4706006 e!2935522))

(declare-fun lt!1870787 () Unit!127112)

(declare-fun Unit!127205 () Unit!127112)

(assert (=> b!4706006 (= lt!1870787 Unit!127205)))

(assert (= (and d!1497619 c!804307) b!4706005))

(assert (= (and d!1497619 (not c!804307)) b!4706006))

(assert (= (and b!4706006 res!1987795) b!4706002))

(assert (= (or b!4706005 b!4706006) bm!329042))

(assert (= (or b!4706005 b!4706006) bm!329043))

(assert (= (or b!4706005 b!4706006) bm!329044))

(assert (= (and d!1497619 res!1987797) b!4706004))

(assert (= (and b!4706004 res!1987796) b!4706003))

(assert (=> bm!329042 m!5627659))

(declare-fun m!5628035 () Bool)

(assert (=> bm!329043 m!5628035))

(declare-fun m!5628037 () Bool)

(assert (=> b!4706003 m!5628037))

(declare-fun m!5628039 () Bool)

(assert (=> b!4706004 m!5628039))

(declare-fun m!5628041 () Bool)

(assert (=> b!4706002 m!5628041))

(declare-fun m!5628043 () Bool)

(assert (=> d!1497619 m!5628043))

(declare-fun m!5628045 () Bool)

(assert (=> d!1497619 m!5628045))

(declare-fun m!5628047 () Bool)

(assert (=> bm!329044 m!5628047))

(declare-fun m!5628049 () Bool)

(assert (=> b!4706006 m!5628049))

(declare-fun m!5628051 () Bool)

(assert (=> b!4706006 m!5628051))

(declare-fun m!5628053 () Bool)

(assert (=> b!4706006 m!5628053))

(declare-fun m!5628055 () Bool)

(assert (=> b!4706006 m!5628055))

(assert (=> b!4706006 m!5628053))

(assert (=> b!4706006 m!5628041))

(declare-fun m!5628057 () Bool)

(assert (=> b!4706006 m!5628057))

(declare-fun m!5628059 () Bool)

(assert (=> b!4706006 m!5628059))

(declare-fun m!5628061 () Bool)

(assert (=> b!4706006 m!5628061))

(declare-fun m!5628063 () Bool)

(assert (=> b!4706006 m!5628063))

(assert (=> b!4706006 m!5628049))

(declare-fun m!5628065 () Bool)

(assert (=> b!4706006 m!5628065))

(declare-fun m!5628067 () Bool)

(assert (=> b!4706006 m!5628067))

(assert (=> b!4705736 d!1497619))

(declare-fun d!1497629 () Bool)

(assert (=> d!1497629 (= (eq!1073 lt!1870364 (+!2198 lt!1870362 (h!58874 oldBucket!34))) (= (content!9309 (toList!5718 lt!1870364)) (content!9309 (toList!5718 (+!2198 lt!1870362 (h!58874 oldBucket!34))))))))

(declare-fun bs!1099180 () Bool)

(assert (= bs!1099180 d!1497629))

(declare-fun m!5628069 () Bool)

(assert (=> bs!1099180 m!5628069))

(declare-fun m!5628071 () Bool)

(assert (=> bs!1099180 m!5628071))

(assert (=> b!4705736 d!1497629))

(declare-fun d!1497631 () Bool)

(declare-fun e!2935526 () Bool)

(assert (=> d!1497631 e!2935526))

(declare-fun res!1987799 () Bool)

(assert (=> d!1497631 (=> (not res!1987799) (not e!2935526))))

(declare-fun lt!1870793 () ListMap!5081)

(assert (=> d!1497631 (= res!1987799 (contains!15888 lt!1870793 (_1!30319 lt!1870336)))))

(declare-fun lt!1870791 () List!52703)

(assert (=> d!1497631 (= lt!1870793 (ListMap!5082 lt!1870791))))

(declare-fun lt!1870792 () Unit!127112)

(declare-fun lt!1870794 () Unit!127112)

(assert (=> d!1497631 (= lt!1870792 lt!1870794)))

(assert (=> d!1497631 (= (getValueByKey!1880 lt!1870791 (_1!30319 lt!1870336)) (Some!12239 (_2!30319 lt!1870336)))))

(assert (=> d!1497631 (= lt!1870794 (lemmaContainsTupThenGetReturnValue!1050 lt!1870791 (_1!30319 lt!1870336) (_2!30319 lt!1870336)))))

(assert (=> d!1497631 (= lt!1870791 (insertNoDuplicatedKeys!558 (toList!5718 (addToMapMapFromBucket!1346 lt!1870361 lt!1870342)) (_1!30319 lt!1870336) (_2!30319 lt!1870336)))))

(assert (=> d!1497631 (= (+!2198 (addToMapMapFromBucket!1346 lt!1870361 lt!1870342) lt!1870336) lt!1870793)))

(declare-fun b!4706011 () Bool)

(declare-fun res!1987798 () Bool)

(assert (=> b!4706011 (=> (not res!1987798) (not e!2935526))))

(assert (=> b!4706011 (= res!1987798 (= (getValueByKey!1880 (toList!5718 lt!1870793) (_1!30319 lt!1870336)) (Some!12239 (_2!30319 lt!1870336))))))

(declare-fun b!4706012 () Bool)

(assert (=> b!4706012 (= e!2935526 (contains!15894 (toList!5718 lt!1870793) lt!1870336))))

(assert (= (and d!1497631 res!1987799) b!4706011))

(assert (= (and b!4706011 res!1987798) b!4706012))

(declare-fun m!5628073 () Bool)

(assert (=> d!1497631 m!5628073))

(declare-fun m!5628075 () Bool)

(assert (=> d!1497631 m!5628075))

(declare-fun m!5628077 () Bool)

(assert (=> d!1497631 m!5628077))

(declare-fun m!5628079 () Bool)

(assert (=> d!1497631 m!5628079))

(declare-fun m!5628081 () Bool)

(assert (=> b!4706011 m!5628081))

(declare-fun m!5628083 () Bool)

(assert (=> b!4706012 m!5628083))

(assert (=> b!4705736 d!1497631))

(declare-fun bs!1099181 () Bool)

(declare-fun d!1497633 () Bool)

(assert (= bs!1099181 (and d!1497633 start!477844)))

(declare-fun lambda!211624 () Int)

(assert (=> bs!1099181 (= lambda!211624 lambda!211507)))

(declare-fun bs!1099182 () Bool)

(assert (= bs!1099182 (and d!1497633 d!1497533)))

(assert (=> bs!1099182 (not (= lambda!211624 lambda!211516))))

(declare-fun bs!1099183 () Bool)

(assert (= bs!1099183 (and d!1497633 d!1497579)))

(assert (=> bs!1099183 (= lambda!211624 lambda!211597)))

(declare-fun bs!1099184 () Bool)

(assert (= bs!1099184 (and d!1497633 d!1497593)))

(assert (=> bs!1099184 (= lambda!211624 lambda!211604)))

(declare-fun lt!1870795 () ListMap!5081)

(assert (=> d!1497633 (invariantList!1460 (toList!5718 lt!1870795))))

(declare-fun e!2935527 () ListMap!5081)

(assert (=> d!1497633 (= lt!1870795 e!2935527)))

(declare-fun c!804310 () Bool)

(assert (=> d!1497633 (= c!804310 ((_ is Cons!52580) lt!1870350))))

(assert (=> d!1497633 (forall!11431 lt!1870350 lambda!211624)))

(assert (=> d!1497633 (= (extractMap!1940 lt!1870350) lt!1870795)))

(declare-fun b!4706013 () Bool)

(assert (=> b!4706013 (= e!2935527 (addToMapMapFromBucket!1346 (_2!30320 (h!58875 lt!1870350)) (extractMap!1940 (t!359930 lt!1870350))))))

(declare-fun b!4706014 () Bool)

(assert (=> b!4706014 (= e!2935527 (ListMap!5082 Nil!52579))))

(assert (= (and d!1497633 c!804310) b!4706013))

(assert (= (and d!1497633 (not c!804310)) b!4706014))

(declare-fun m!5628085 () Bool)

(assert (=> d!1497633 m!5628085))

(declare-fun m!5628087 () Bool)

(assert (=> d!1497633 m!5628087))

(declare-fun m!5628089 () Bool)

(assert (=> b!4706013 m!5628089))

(assert (=> b!4706013 m!5628089))

(declare-fun m!5628091 () Bool)

(assert (=> b!4706013 m!5628091))

(assert (=> b!4705736 d!1497633))

(declare-fun bs!1099192 () Bool)

(declare-fun d!1497635 () Bool)

(assert (= bs!1099192 (and d!1497635 start!477844)))

(declare-fun lambda!211628 () Int)

(assert (=> bs!1099192 (= lambda!211628 lambda!211507)))

(declare-fun bs!1099193 () Bool)

(assert (= bs!1099193 (and d!1497635 d!1497579)))

(assert (=> bs!1099193 (= lambda!211628 lambda!211597)))

(declare-fun bs!1099194 () Bool)

(assert (= bs!1099194 (and d!1497635 d!1497593)))

(assert (=> bs!1099194 (= lambda!211628 lambda!211604)))

(declare-fun bs!1099195 () Bool)

(assert (= bs!1099195 (and d!1497635 d!1497533)))

(assert (=> bs!1099195 (not (= lambda!211628 lambda!211516))))

(declare-fun bs!1099196 () Bool)

(assert (= bs!1099196 (and d!1497635 d!1497633)))

(assert (=> bs!1099196 (= lambda!211628 lambda!211624)))

(assert (=> d!1497635 (contains!15888 (extractMap!1940 (toList!5717 lt!1870366)) key!4653)))

(declare-fun lt!1870802 () Unit!127112)

(declare-fun choose!33050 (ListLongMap!4247 K!13935 Hashable!6283) Unit!127112)

(assert (=> d!1497635 (= lt!1870802 (choose!33050 lt!1870366 key!4653 hashF!1323))))

(assert (=> d!1497635 (forall!11431 (toList!5717 lt!1870366) lambda!211628)))

(assert (=> d!1497635 (= (lemmaListContainsThenExtractedMapContains!506 lt!1870366 key!4653 hashF!1323) lt!1870802)))

(declare-fun bs!1099197 () Bool)

(assert (= bs!1099197 d!1497635))

(declare-fun m!5628115 () Bool)

(assert (=> bs!1099197 m!5628115))

(assert (=> bs!1099197 m!5628115))

(declare-fun m!5628117 () Bool)

(assert (=> bs!1099197 m!5628117))

(declare-fun m!5628119 () Bool)

(assert (=> bs!1099197 m!5628119))

(declare-fun m!5628121 () Bool)

(assert (=> bs!1099197 m!5628121))

(assert (=> b!4705736 d!1497635))

(declare-fun d!1497643 () Bool)

(assert (=> d!1497643 (= (head!10092 oldBucket!34) (h!58874 oldBucket!34))))

(assert (=> b!4705736 d!1497643))

(declare-fun d!1497645 () Bool)

(assert (=> d!1497645 (eq!1073 (addToMapMapFromBucket!1346 (Cons!52579 lt!1870336 lt!1870361) lt!1870342) (+!2198 (addToMapMapFromBucket!1346 lt!1870361 lt!1870342) lt!1870336))))

(declare-fun lt!1870809 () Unit!127112)

(declare-fun choose!33051 (tuple2!54050 List!52703 ListMap!5081) Unit!127112)

(assert (=> d!1497645 (= lt!1870809 (choose!33051 lt!1870336 lt!1870361 lt!1870342))))

(assert (=> d!1497645 (noDuplicateKeys!1914 lt!1870361)))

(assert (=> d!1497645 (= (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!322 lt!1870336 lt!1870361 lt!1870342) lt!1870809)))

(declare-fun bs!1099216 () Bool)

(assert (= bs!1099216 d!1497645))

(assert (=> bs!1099216 m!5627405))

(assert (=> bs!1099216 m!5627407))

(assert (=> bs!1099216 m!5627393))

(assert (=> bs!1099216 m!5627407))

(assert (=> bs!1099216 m!5627415))

(assert (=> bs!1099216 m!5627405))

(declare-fun m!5628145 () Bool)

(assert (=> bs!1099216 m!5628145))

(assert (=> bs!1099216 m!5628045))

(assert (=> bs!1099216 m!5627393))

(assert (=> b!4705736 d!1497645))

(declare-fun d!1497651 () Bool)

(assert (=> d!1497651 (= (eq!1073 (addToMapMapFromBucket!1346 (Cons!52579 lt!1870333 lt!1870368) lt!1870342) (+!2198 (addToMapMapFromBucket!1346 lt!1870368 lt!1870342) lt!1870333)) (= (content!9309 (toList!5718 (addToMapMapFromBucket!1346 (Cons!52579 lt!1870333 lt!1870368) lt!1870342))) (content!9309 (toList!5718 (+!2198 (addToMapMapFromBucket!1346 lt!1870368 lt!1870342) lt!1870333)))))))

(declare-fun bs!1099217 () Bool)

(assert (= bs!1099217 d!1497651))

(declare-fun m!5628149 () Bool)

(assert (=> bs!1099217 m!5628149))

(declare-fun m!5628153 () Bool)

(assert (=> bs!1099217 m!5628153))

(assert (=> b!4705736 d!1497651))

(declare-fun d!1497653 () Bool)

(assert (=> d!1497653 (eq!1073 (addToMapMapFromBucket!1346 (Cons!52579 lt!1870333 lt!1870368) lt!1870342) (+!2198 (addToMapMapFromBucket!1346 lt!1870368 lt!1870342) lt!1870333))))

(declare-fun lt!1870811 () Unit!127112)

(assert (=> d!1497653 (= lt!1870811 (choose!33051 lt!1870333 lt!1870368 lt!1870342))))

(assert (=> d!1497653 (noDuplicateKeys!1914 lt!1870368)))

(assert (=> d!1497653 (= (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!322 lt!1870333 lt!1870368 lt!1870342) lt!1870811)))

(declare-fun bs!1099219 () Bool)

(assert (= bs!1099219 d!1497653))

(assert (=> bs!1099219 m!5627395))

(assert (=> bs!1099219 m!5627397))

(assert (=> bs!1099219 m!5627387))

(assert (=> bs!1099219 m!5627397))

(assert (=> bs!1099219 m!5627409))

(assert (=> bs!1099219 m!5627395))

(declare-fun m!5628167 () Bool)

(assert (=> bs!1099219 m!5628167))

(assert (=> bs!1099219 m!5627671))

(assert (=> bs!1099219 m!5627387))

(assert (=> b!4705736 d!1497653))

(declare-fun d!1497661 () Bool)

(assert (=> d!1497661 (= (head!10092 newBucket!218) (h!58874 newBucket!218))))

(assert (=> b!4705736 d!1497661))

(declare-fun b!4706041 () Bool)

(declare-fun e!2935543 () List!52703)

(assert (=> b!4706041 (= e!2935543 Nil!52579)))

(declare-fun b!4706038 () Bool)

(declare-fun e!2935542 () List!52703)

(assert (=> b!4706038 (= e!2935542 (t!359929 lt!1870361))))

(declare-fun d!1497663 () Bool)

(declare-fun lt!1870836 () List!52703)

(assert (=> d!1497663 (not (containsKey!3213 lt!1870836 key!4653))))

(assert (=> d!1497663 (= lt!1870836 e!2935542)))

(declare-fun c!804319 () Bool)

(assert (=> d!1497663 (= c!804319 (and ((_ is Cons!52579) lt!1870361) (= (_1!30319 (h!58874 lt!1870361)) key!4653)))))

(assert (=> d!1497663 (noDuplicateKeys!1914 lt!1870361)))

(assert (=> d!1497663 (= (removePairForKey!1509 lt!1870361 key!4653) lt!1870836)))

(declare-fun b!4706039 () Bool)

(assert (=> b!4706039 (= e!2935542 e!2935543)))

(declare-fun c!804320 () Bool)

(assert (=> b!4706039 (= c!804320 ((_ is Cons!52579) lt!1870361))))

(declare-fun b!4706040 () Bool)

(assert (=> b!4706040 (= e!2935543 (Cons!52579 (h!58874 lt!1870361) (removePairForKey!1509 (t!359929 lt!1870361) key!4653)))))

(assert (= (and d!1497663 c!804319) b!4706038))

(assert (= (and d!1497663 (not c!804319)) b!4706039))

(assert (= (and b!4706039 c!804320) b!4706040))

(assert (= (and b!4706039 (not c!804320)) b!4706041))

(declare-fun m!5628181 () Bool)

(assert (=> d!1497663 m!5628181))

(assert (=> d!1497663 m!5628045))

(declare-fun m!5628183 () Bool)

(assert (=> b!4706040 m!5628183))

(assert (=> b!4705740 d!1497663))

(declare-fun d!1497669 () Bool)

(assert (=> d!1497669 (= (tail!8767 newBucket!218) (t!359929 newBucket!218))))

(assert (=> b!4705740 d!1497669))

(declare-fun d!1497671 () Bool)

(assert (=> d!1497671 (= (tail!8767 oldBucket!34) (t!359929 oldBucket!34))))

(assert (=> b!4705740 d!1497671))

(declare-fun d!1497673 () Bool)

(declare-fun e!2935548 () Bool)

(assert (=> d!1497673 e!2935548))

(declare-fun res!1987809 () Bool)

(assert (=> d!1497673 (=> res!1987809 e!2935548)))

(declare-fun lt!1870848 () Bool)

(assert (=> d!1497673 (= res!1987809 (not lt!1870848))))

(declare-fun lt!1870847 () Bool)

(assert (=> d!1497673 (= lt!1870848 lt!1870847)))

(declare-fun lt!1870845 () Unit!127112)

(declare-fun e!2935549 () Unit!127112)

(assert (=> d!1497673 (= lt!1870845 e!2935549)))

(declare-fun c!804323 () Bool)

(assert (=> d!1497673 (= c!804323 lt!1870847)))

(declare-fun containsKey!3217 (List!52704 (_ BitVec 64)) Bool)

(assert (=> d!1497673 (= lt!1870847 (containsKey!3217 (toList!5717 lm!2023) lt!1870343))))

(assert (=> d!1497673 (= (contains!15890 lm!2023 lt!1870343) lt!1870848)))

(declare-fun b!4706048 () Bool)

(declare-fun lt!1870846 () Unit!127112)

(assert (=> b!4706048 (= e!2935549 lt!1870846)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1773 (List!52704 (_ BitVec 64)) Unit!127112)

(assert (=> b!4706048 (= lt!1870846 (lemmaContainsKeyImpliesGetValueByKeyDefined!1773 (toList!5717 lm!2023) lt!1870343))))

(declare-datatypes ((Option!12241 0))(
  ( (None!12240) (Some!12240 (v!46759 List!52703)) )
))
(declare-fun isDefined!9496 (Option!12241) Bool)

(declare-fun getValueByKey!1881 (List!52704 (_ BitVec 64)) Option!12241)

(assert (=> b!4706048 (isDefined!9496 (getValueByKey!1881 (toList!5717 lm!2023) lt!1870343))))

(declare-fun b!4706049 () Bool)

(declare-fun Unit!127207 () Unit!127112)

(assert (=> b!4706049 (= e!2935549 Unit!127207)))

(declare-fun b!4706050 () Bool)

(assert (=> b!4706050 (= e!2935548 (isDefined!9496 (getValueByKey!1881 (toList!5717 lm!2023) lt!1870343)))))

(assert (= (and d!1497673 c!804323) b!4706048))

(assert (= (and d!1497673 (not c!804323)) b!4706049))

(assert (= (and d!1497673 (not res!1987809)) b!4706050))

(declare-fun m!5628185 () Bool)

(assert (=> d!1497673 m!5628185))

(declare-fun m!5628187 () Bool)

(assert (=> b!4706048 m!5628187))

(declare-fun m!5628189 () Bool)

(assert (=> b!4706048 m!5628189))

(assert (=> b!4706048 m!5628189))

(declare-fun m!5628191 () Bool)

(assert (=> b!4706048 m!5628191))

(assert (=> b!4706050 m!5628189))

(assert (=> b!4706050 m!5628189))

(assert (=> b!4706050 m!5628191))

(assert (=> b!4705739 d!1497673))

(declare-fun d!1497675 () Bool)

(declare-fun get!17623 (Option!12241) List!52703)

(assert (=> d!1497675 (= (apply!12397 lm!2023 lt!1870343) (get!17623 (getValueByKey!1881 (toList!5717 lm!2023) lt!1870343)))))

(declare-fun bs!1099292 () Bool)

(assert (= bs!1099292 d!1497675))

(assert (=> bs!1099292 m!5628189))

(assert (=> bs!1099292 m!5628189))

(declare-fun m!5628225 () Bool)

(assert (=> bs!1099292 m!5628225))

(assert (=> b!4705739 d!1497675))

(declare-fun bs!1099306 () Bool)

(declare-fun d!1497679 () Bool)

(assert (= bs!1099306 (and d!1497679 start!477844)))

(declare-fun lambda!211642 () Int)

(assert (=> bs!1099306 (= lambda!211642 lambda!211507)))

(declare-fun bs!1099307 () Bool)

(assert (= bs!1099307 (and d!1497679 d!1497579)))

(assert (=> bs!1099307 (= lambda!211642 lambda!211597)))

(declare-fun bs!1099308 () Bool)

(assert (= bs!1099308 (and d!1497679 d!1497635)))

(assert (=> bs!1099308 (= lambda!211642 lambda!211628)))

(declare-fun bs!1099309 () Bool)

(assert (= bs!1099309 (and d!1497679 d!1497593)))

(assert (=> bs!1099309 (= lambda!211642 lambda!211604)))

(declare-fun bs!1099310 () Bool)

(assert (= bs!1099310 (and d!1497679 d!1497533)))

(assert (=> bs!1099310 (not (= lambda!211642 lambda!211516))))

(declare-fun bs!1099311 () Bool)

(assert (= bs!1099311 (and d!1497679 d!1497633)))

(assert (=> bs!1099311 (= lambda!211642 lambda!211624)))

(assert (=> d!1497679 (contains!15890 lm!2023 (hash!4218 hashF!1323 key!4653))))

(declare-fun lt!1870853 () Unit!127112)

(declare-fun choose!33053 (ListLongMap!4247 K!13935 Hashable!6283) Unit!127112)

(assert (=> d!1497679 (= lt!1870853 (choose!33053 lm!2023 key!4653 hashF!1323))))

(assert (=> d!1497679 (forall!11431 (toList!5717 lm!2023) lambda!211642)))

(assert (=> d!1497679 (= (lemmaInGenMapThenLongMapContainsHash!724 lm!2023 key!4653 hashF!1323) lt!1870853)))

(declare-fun bs!1099312 () Bool)

(assert (= bs!1099312 d!1497679))

(assert (=> bs!1099312 m!5627491))

(assert (=> bs!1099312 m!5627491))

(declare-fun m!5628253 () Bool)

(assert (=> bs!1099312 m!5628253))

(declare-fun m!5628255 () Bool)

(assert (=> bs!1099312 m!5628255))

(declare-fun m!5628257 () Bool)

(assert (=> bs!1099312 m!5628257))

(assert (=> b!4705739 d!1497679))

(declare-fun b!4706070 () Bool)

(declare-fun e!2935565 () Bool)

(declare-fun lt!1870859 () Option!12237)

(declare-fun get!17624 (Option!12237) tuple2!54050)

(assert (=> b!4706070 (= e!2935565 (contains!15894 lt!1870347 (get!17624 lt!1870859)))))

(declare-fun b!4706071 () Bool)

(declare-fun res!1987821 () Bool)

(assert (=> b!4706071 (=> (not res!1987821) (not e!2935565))))

(assert (=> b!4706071 (= res!1987821 (= (_1!30319 (get!17624 lt!1870859)) key!4653))))

(declare-fun b!4706073 () Bool)

(declare-fun e!2935566 () Option!12237)

(assert (=> b!4706073 (= e!2935566 (Some!12236 (h!58874 lt!1870347)))))

(declare-fun b!4706074 () Bool)

(declare-fun e!2935563 () Option!12237)

(assert (=> b!4706074 (= e!2935563 None!12236)))

(declare-fun b!4706075 () Bool)

(declare-fun e!2935564 () Bool)

(assert (=> b!4706075 (= e!2935564 e!2935565)))

(declare-fun res!1987820 () Bool)

(assert (=> b!4706075 (=> (not res!1987820) (not e!2935565))))

(assert (=> b!4706075 (= res!1987820 (isDefined!9492 lt!1870859))))

(declare-fun b!4706076 () Bool)

(assert (=> b!4706076 (= e!2935566 e!2935563)))

(declare-fun c!804329 () Bool)

(assert (=> b!4706076 (= c!804329 ((_ is Cons!52579) lt!1870347))))

(declare-fun b!4706077 () Bool)

(assert (=> b!4706077 (= e!2935563 (getPair!518 (t!359929 lt!1870347) key!4653))))

(declare-fun d!1497693 () Bool)

(assert (=> d!1497693 e!2935564))

(declare-fun res!1987819 () Bool)

(assert (=> d!1497693 (=> res!1987819 e!2935564)))

(declare-fun e!2935562 () Bool)

(assert (=> d!1497693 (= res!1987819 e!2935562)))

(declare-fun res!1987822 () Bool)

(assert (=> d!1497693 (=> (not res!1987822) (not e!2935562))))

(declare-fun isEmpty!29144 (Option!12237) Bool)

(assert (=> d!1497693 (= res!1987822 (isEmpty!29144 lt!1870859))))

(assert (=> d!1497693 (= lt!1870859 e!2935566)))

(declare-fun c!804330 () Bool)

(assert (=> d!1497693 (= c!804330 (and ((_ is Cons!52579) lt!1870347) (= (_1!30319 (h!58874 lt!1870347)) key!4653)))))

(assert (=> d!1497693 (noDuplicateKeys!1914 lt!1870347)))

(assert (=> d!1497693 (= (getPair!518 lt!1870347 key!4653) lt!1870859)))

(declare-fun b!4706072 () Bool)

(assert (=> b!4706072 (= e!2935562 (not (containsKey!3213 lt!1870347 key!4653)))))

(assert (= (and d!1497693 c!804330) b!4706073))

(assert (= (and d!1497693 (not c!804330)) b!4706076))

(assert (= (and b!4706076 c!804329) b!4706077))

(assert (= (and b!4706076 (not c!804329)) b!4706074))

(assert (= (and d!1497693 res!1987822) b!4706072))

(assert (= (and d!1497693 (not res!1987819)) b!4706075))

(assert (= (and b!4706075 res!1987820) b!4706071))

(assert (= (and b!4706071 res!1987821) b!4706070))

(declare-fun m!5628263 () Bool)

(assert (=> b!4706075 m!5628263))

(declare-fun m!5628265 () Bool)

(assert (=> b!4706070 m!5628265))

(assert (=> b!4706070 m!5628265))

(declare-fun m!5628267 () Bool)

(assert (=> b!4706070 m!5628267))

(declare-fun m!5628269 () Bool)

(assert (=> b!4706077 m!5628269))

(declare-fun m!5628271 () Bool)

(assert (=> d!1497693 m!5628271))

(declare-fun m!5628273 () Bool)

(assert (=> d!1497693 m!5628273))

(declare-fun m!5628275 () Bool)

(assert (=> b!4706072 m!5628275))

(assert (=> b!4706071 m!5628265))

(assert (=> b!4705739 d!1497693))

(declare-fun bs!1099361 () Bool)

(declare-fun d!1497697 () Bool)

(assert (= bs!1099361 (and d!1497697 start!477844)))

(declare-fun lambda!211654 () Int)

(assert (=> bs!1099361 (= lambda!211654 lambda!211507)))

(declare-fun bs!1099362 () Bool)

(assert (= bs!1099362 (and d!1497697 d!1497579)))

(assert (=> bs!1099362 (= lambda!211654 lambda!211597)))

(declare-fun bs!1099363 () Bool)

(assert (= bs!1099363 (and d!1497697 d!1497635)))

(assert (=> bs!1099363 (= lambda!211654 lambda!211628)))

(declare-fun bs!1099364 () Bool)

(assert (= bs!1099364 (and d!1497697 d!1497593)))

(assert (=> bs!1099364 (= lambda!211654 lambda!211604)))

(declare-fun bs!1099365 () Bool)

(assert (= bs!1099365 (and d!1497697 d!1497679)))

(assert (=> bs!1099365 (= lambda!211654 lambda!211642)))

(declare-fun bs!1099366 () Bool)

(assert (= bs!1099366 (and d!1497697 d!1497533)))

(assert (=> bs!1099366 (not (= lambda!211654 lambda!211516))))

(declare-fun bs!1099367 () Bool)

(assert (= bs!1099367 (and d!1497697 d!1497633)))

(assert (=> bs!1099367 (= lambda!211654 lambda!211624)))

(declare-fun b!4706124 () Bool)

(declare-fun res!1987849 () Bool)

(declare-fun e!2935595 () Bool)

(assert (=> b!4706124 (=> (not res!1987849) (not e!2935595))))

(assert (=> b!4706124 (= res!1987849 (allKeysSameHashInMap!1828 lm!2023 hashF!1323))))

(assert (=> d!1497697 e!2935595))

(declare-fun res!1987846 () Bool)

(assert (=> d!1497697 (=> (not res!1987846) (not e!2935595))))

(assert (=> d!1497697 (= res!1987846 (forall!11431 (toList!5717 lm!2023) lambda!211654))))

(declare-fun lt!1870907 () Unit!127112)

(declare-fun choose!33054 (ListLongMap!4247 K!13935 Hashable!6283) Unit!127112)

(assert (=> d!1497697 (= lt!1870907 (choose!33054 lm!2023 key!4653 hashF!1323))))

(assert (=> d!1497697 (forall!11431 (toList!5717 lm!2023) lambda!211654)))

(assert (=> d!1497697 (= (lemmaInGenMapThenGetPairDefined!314 lm!2023 key!4653 hashF!1323) lt!1870907)))

(declare-fun b!4706125 () Bool)

(declare-fun res!1987848 () Bool)

(assert (=> b!4706125 (=> (not res!1987848) (not e!2935595))))

(assert (=> b!4706125 (= res!1987848 (contains!15888 (extractMap!1940 (toList!5717 lm!2023)) key!4653))))

(declare-fun lt!1870905 () List!52703)

(declare-fun lt!1870903 () (_ BitVec 64))

(declare-fun b!4706127 () Bool)

(declare-fun e!2935596 () Bool)

(assert (=> b!4706127 (= e!2935596 (= (getValueByKey!1881 (toList!5717 lm!2023) lt!1870903) (Some!12240 lt!1870905)))))

(declare-fun b!4706126 () Bool)

(assert (=> b!4706126 (= e!2935595 (isDefined!9492 (getPair!518 (apply!12397 lm!2023 (hash!4218 hashF!1323 key!4653)) key!4653)))))

(declare-fun lt!1870904 () Unit!127112)

(assert (=> b!4706126 (= lt!1870904 (forallContained!3538 (toList!5717 lm!2023) lambda!211654 (tuple2!54053 (hash!4218 hashF!1323 key!4653) (apply!12397 lm!2023 (hash!4218 hashF!1323 key!4653)))))))

(declare-fun lt!1870910 () Unit!127112)

(declare-fun lt!1870908 () Unit!127112)

(assert (=> b!4706126 (= lt!1870910 lt!1870908)))

(assert (=> b!4706126 (contains!15889 (toList!5717 lm!2023) (tuple2!54053 lt!1870903 lt!1870905))))

(assert (=> b!4706126 (= lt!1870908 (lemmaGetValueImpliesTupleContained!323 lm!2023 lt!1870903 lt!1870905))))

(assert (=> b!4706126 e!2935596))

(declare-fun res!1987847 () Bool)

(assert (=> b!4706126 (=> (not res!1987847) (not e!2935596))))

(assert (=> b!4706126 (= res!1987847 (contains!15890 lm!2023 lt!1870903))))

(assert (=> b!4706126 (= lt!1870905 (apply!12397 lm!2023 (hash!4218 hashF!1323 key!4653)))))

(assert (=> b!4706126 (= lt!1870903 (hash!4218 hashF!1323 key!4653))))

(declare-fun lt!1870906 () Unit!127112)

(declare-fun lt!1870909 () Unit!127112)

(assert (=> b!4706126 (= lt!1870906 lt!1870909)))

(assert (=> b!4706126 (contains!15890 lm!2023 (hash!4218 hashF!1323 key!4653))))

(assert (=> b!4706126 (= lt!1870909 (lemmaInGenMapThenLongMapContainsHash!724 lm!2023 key!4653 hashF!1323))))

(assert (= (and d!1497697 res!1987846) b!4706124))

(assert (= (and b!4706124 res!1987849) b!4706125))

(assert (= (and b!4706125 res!1987848) b!4706126))

(assert (= (and b!4706126 res!1987847) b!4706127))

(assert (=> b!4706125 m!5627461))

(assert (=> b!4706125 m!5627461))

(declare-fun m!5628399 () Bool)

(assert (=> b!4706125 m!5628399))

(declare-fun m!5628401 () Bool)

(assert (=> d!1497697 m!5628401))

(declare-fun m!5628403 () Bool)

(assert (=> d!1497697 m!5628403))

(assert (=> d!1497697 m!5628401))

(assert (=> b!4706124 m!5627485))

(declare-fun m!5628405 () Bool)

(assert (=> b!4706127 m!5628405))

(assert (=> b!4706126 m!5627491))

(declare-fun m!5628407 () Bool)

(assert (=> b!4706126 m!5628407))

(declare-fun m!5628409 () Bool)

(assert (=> b!4706126 m!5628409))

(declare-fun m!5628411 () Bool)

(assert (=> b!4706126 m!5628411))

(declare-fun m!5628413 () Bool)

(assert (=> b!4706126 m!5628413))

(assert (=> b!4706126 m!5627491))

(declare-fun m!5628415 () Bool)

(assert (=> b!4706126 m!5628415))

(declare-fun m!5628417 () Bool)

(assert (=> b!4706126 m!5628417))

(assert (=> b!4706126 m!5627431))

(declare-fun m!5628419 () Bool)

(assert (=> b!4706126 m!5628419))

(assert (=> b!4706126 m!5627491))

(assert (=> b!4706126 m!5628253))

(assert (=> b!4706126 m!5628407))

(assert (=> b!4706126 m!5628409))

(assert (=> b!4705739 d!1497697))

(declare-fun d!1497735 () Bool)

(assert (=> d!1497735 (containsKey!3213 oldBucket!34 key!4653)))

(declare-fun lt!1870913 () Unit!127112)

(declare-fun choose!33055 (List!52703 K!13935 Hashable!6283) Unit!127112)

(assert (=> d!1497735 (= lt!1870913 (choose!33055 oldBucket!34 key!4653 hashF!1323))))

(assert (=> d!1497735 (noDuplicateKeys!1914 oldBucket!34)))

(assert (=> d!1497735 (= (lemmaGetPairDefinedThenContainsKey!266 oldBucket!34 key!4653 hashF!1323) lt!1870913)))

(declare-fun bs!1099368 () Bool)

(assert (= bs!1099368 d!1497735))

(assert (=> bs!1099368 m!5627439))

(declare-fun m!5628421 () Bool)

(assert (=> bs!1099368 m!5628421))

(assert (=> bs!1099368 m!5627497))

(assert (=> b!4705739 d!1497735))

(declare-fun d!1497737 () Bool)

(declare-fun res!1987854 () Bool)

(declare-fun e!2935601 () Bool)

(assert (=> d!1497737 (=> res!1987854 e!2935601)))

(assert (=> d!1497737 (= res!1987854 (and ((_ is Cons!52579) (t!359929 oldBucket!34)) (= (_1!30319 (h!58874 (t!359929 oldBucket!34))) key!4653)))))

(assert (=> d!1497737 (= (containsKey!3213 (t!359929 oldBucket!34) key!4653) e!2935601)))

(declare-fun b!4706132 () Bool)

(declare-fun e!2935602 () Bool)

(assert (=> b!4706132 (= e!2935601 e!2935602)))

(declare-fun res!1987855 () Bool)

(assert (=> b!4706132 (=> (not res!1987855) (not e!2935602))))

(assert (=> b!4706132 (= res!1987855 ((_ is Cons!52579) (t!359929 oldBucket!34)))))

(declare-fun b!4706133 () Bool)

(assert (=> b!4706133 (= e!2935602 (containsKey!3213 (t!359929 (t!359929 oldBucket!34)) key!4653))))

(assert (= (and d!1497737 (not res!1987854)) b!4706132))

(assert (= (and b!4706132 res!1987855) b!4706133))

(declare-fun m!5628423 () Bool)

(assert (=> b!4706133 m!5628423))

(assert (=> b!4705739 d!1497737))

(declare-fun d!1497739 () Bool)

(assert (=> d!1497739 (contains!15889 (toList!5717 lm!2023) (tuple2!54053 lt!1870343 lt!1870347))))

(declare-fun lt!1870916 () Unit!127112)

(declare-fun choose!33056 (ListLongMap!4247 (_ BitVec 64) List!52703) Unit!127112)

(assert (=> d!1497739 (= lt!1870916 (choose!33056 lm!2023 lt!1870343 lt!1870347))))

(assert (=> d!1497739 (contains!15890 lm!2023 lt!1870343)))

(assert (=> d!1497739 (= (lemmaGetValueImpliesTupleContained!323 lm!2023 lt!1870343 lt!1870347) lt!1870916)))

(declare-fun bs!1099369 () Bool)

(assert (= bs!1099369 d!1497739))

(declare-fun m!5628425 () Bool)

(assert (=> bs!1099369 m!5628425))

(declare-fun m!5628427 () Bool)

(assert (=> bs!1099369 m!5628427))

(assert (=> bs!1099369 m!5627445))

(assert (=> b!4705739 d!1497739))

(declare-fun d!1497741 () Bool)

(declare-fun lt!1870919 () Bool)

(declare-fun content!9311 (List!52704) (InoxSet tuple2!54052))

(assert (=> d!1497741 (= lt!1870919 (select (content!9311 (toList!5717 lm!2023)) lt!1870356))))

(declare-fun e!2935607 () Bool)

(assert (=> d!1497741 (= lt!1870919 e!2935607)))

(declare-fun res!1987860 () Bool)

(assert (=> d!1497741 (=> (not res!1987860) (not e!2935607))))

(assert (=> d!1497741 (= res!1987860 ((_ is Cons!52580) (toList!5717 lm!2023)))))

(assert (=> d!1497741 (= (contains!15889 (toList!5717 lm!2023) lt!1870356) lt!1870919)))

(declare-fun b!4706139 () Bool)

(declare-fun e!2935608 () Bool)

(assert (=> b!4706139 (= e!2935607 e!2935608)))

(declare-fun res!1987861 () Bool)

(assert (=> b!4706139 (=> res!1987861 e!2935608)))

(assert (=> b!4706139 (= res!1987861 (= (h!58875 (toList!5717 lm!2023)) lt!1870356))))

(declare-fun b!4706140 () Bool)

(assert (=> b!4706140 (= e!2935608 (contains!15889 (t!359930 (toList!5717 lm!2023)) lt!1870356))))

(assert (= (and d!1497741 res!1987860) b!4706139))

(assert (= (and b!4706139 (not res!1987861)) b!4706140))

(declare-fun m!5628429 () Bool)

(assert (=> d!1497741 m!5628429))

(declare-fun m!5628431 () Bool)

(assert (=> d!1497741 m!5628431))

(declare-fun m!5628433 () Bool)

(assert (=> b!4706140 m!5628433))

(assert (=> b!4705739 d!1497741))

(declare-fun d!1497743 () Bool)

(declare-fun res!1987862 () Bool)

(declare-fun e!2935609 () Bool)

(assert (=> d!1497743 (=> res!1987862 e!2935609)))

(assert (=> d!1497743 (= res!1987862 (and ((_ is Cons!52579) oldBucket!34) (= (_1!30319 (h!58874 oldBucket!34)) key!4653)))))

(assert (=> d!1497743 (= (containsKey!3213 oldBucket!34 key!4653) e!2935609)))

(declare-fun b!4706141 () Bool)

(declare-fun e!2935610 () Bool)

(assert (=> b!4706141 (= e!2935609 e!2935610)))

(declare-fun res!1987863 () Bool)

(assert (=> b!4706141 (=> (not res!1987863) (not e!2935610))))

(assert (=> b!4706141 (= res!1987863 ((_ is Cons!52579) oldBucket!34))))

(declare-fun b!4706142 () Bool)

(assert (=> b!4706142 (= e!2935610 (containsKey!3213 (t!359929 oldBucket!34) key!4653))))

(assert (= (and d!1497743 (not res!1987862)) b!4706141))

(assert (= (and b!4706141 res!1987863) b!4706142))

(assert (=> b!4706142 m!5627435))

(assert (=> b!4705739 d!1497743))

(declare-fun d!1497745 () Bool)

(assert (=> d!1497745 (= (isDefined!9492 (getPair!518 lt!1870347 key!4653)) (not (isEmpty!29144 (getPair!518 lt!1870347 key!4653))))))

(declare-fun bs!1099370 () Bool)

(assert (= bs!1099370 d!1497745))

(assert (=> bs!1099370 m!5627441))

(declare-fun m!5628435 () Bool)

(assert (=> bs!1099370 m!5628435))

(assert (=> b!4705739 d!1497745))

(declare-fun d!1497747 () Bool)

(declare-fun dynLambda!21763 (Int tuple2!54052) Bool)

(assert (=> d!1497747 (dynLambda!21763 lambda!211507 lt!1870356)))

(declare-fun lt!1870922 () Unit!127112)

(declare-fun choose!33057 (List!52704 Int tuple2!54052) Unit!127112)

(assert (=> d!1497747 (= lt!1870922 (choose!33057 (toList!5717 lm!2023) lambda!211507 lt!1870356))))

(declare-fun e!2935613 () Bool)

(assert (=> d!1497747 e!2935613))

(declare-fun res!1987866 () Bool)

(assert (=> d!1497747 (=> (not res!1987866) (not e!2935613))))

(assert (=> d!1497747 (= res!1987866 (forall!11431 (toList!5717 lm!2023) lambda!211507))))

(assert (=> d!1497747 (= (forallContained!3538 (toList!5717 lm!2023) lambda!211507 lt!1870356) lt!1870922)))

(declare-fun b!4706145 () Bool)

(assert (=> b!4706145 (= e!2935613 (contains!15889 (toList!5717 lm!2023) lt!1870356))))

(assert (= (and d!1497747 res!1987866) b!4706145))

(declare-fun b_lambda!177553 () Bool)

(assert (=> (not b_lambda!177553) (not d!1497747)))

(declare-fun m!5628437 () Bool)

(assert (=> d!1497747 m!5628437))

(declare-fun m!5628439 () Bool)

(assert (=> d!1497747 m!5628439))

(assert (=> d!1497747 m!5627371))

(assert (=> b!4706145 m!5627427))

(assert (=> b!4705739 d!1497747))

(declare-fun d!1497749 () Bool)

(declare-fun hash!4222 (Hashable!6283 K!13935) (_ BitVec 64))

(assert (=> d!1497749 (= (hash!4218 hashF!1323 key!4653) (hash!4222 hashF!1323 key!4653))))

(declare-fun bs!1099371 () Bool)

(assert (= bs!1099371 d!1497749))

(declare-fun m!5628441 () Bool)

(assert (=> bs!1099371 m!5628441))

(assert (=> b!4705738 d!1497749))

(declare-fun d!1497751 () Bool)

(declare-fun res!1987871 () Bool)

(declare-fun e!2935618 () Bool)

(assert (=> d!1497751 (=> res!1987871 e!2935618)))

(assert (=> d!1497751 (= res!1987871 ((_ is Nil!52580) lt!1870350))))

(assert (=> d!1497751 (= (forall!11431 lt!1870350 lambda!211507) e!2935618)))

(declare-fun b!4706150 () Bool)

(declare-fun e!2935619 () Bool)

(assert (=> b!4706150 (= e!2935618 e!2935619)))

(declare-fun res!1987872 () Bool)

(assert (=> b!4706150 (=> (not res!1987872) (not e!2935619))))

(assert (=> b!4706150 (= res!1987872 (dynLambda!21763 lambda!211507 (h!58875 lt!1870350)))))

(declare-fun b!4706151 () Bool)

(assert (=> b!4706151 (= e!2935619 (forall!11431 (t!359930 lt!1870350) lambda!211507))))

(assert (= (and d!1497751 (not res!1987871)) b!4706150))

(assert (= (and b!4706150 res!1987872) b!4706151))

(declare-fun b_lambda!177555 () Bool)

(assert (=> (not b_lambda!177555) (not b!4706150)))

(declare-fun m!5628443 () Bool)

(assert (=> b!4706150 m!5628443))

(declare-fun m!5628445 () Bool)

(assert (=> b!4706151 m!5628445))

(assert (=> b!4705742 d!1497751))

(declare-fun d!1497753 () Bool)

(declare-fun res!1987873 () Bool)

(declare-fun e!2935620 () Bool)

(assert (=> d!1497753 (=> res!1987873 e!2935620)))

(assert (=> d!1497753 (= res!1987873 ((_ is Nil!52580) (toList!5717 lm!2023)))))

(assert (=> d!1497753 (= (forall!11431 (toList!5717 lm!2023) lambda!211507) e!2935620)))

(declare-fun b!4706152 () Bool)

(declare-fun e!2935621 () Bool)

(assert (=> b!4706152 (= e!2935620 e!2935621)))

(declare-fun res!1987874 () Bool)

(assert (=> b!4706152 (=> (not res!1987874) (not e!2935621))))

(assert (=> b!4706152 (= res!1987874 (dynLambda!21763 lambda!211507 (h!58875 (toList!5717 lm!2023))))))

(declare-fun b!4706153 () Bool)

(assert (=> b!4706153 (= e!2935621 (forall!11431 (t!359930 (toList!5717 lm!2023)) lambda!211507))))

(assert (= (and d!1497753 (not res!1987873)) b!4706152))

(assert (= (and b!4706152 res!1987874) b!4706153))

(declare-fun b_lambda!177557 () Bool)

(assert (=> (not b_lambda!177557) (not b!4706152)))

(declare-fun m!5628447 () Bool)

(assert (=> b!4706152 m!5628447))

(declare-fun m!5628449 () Bool)

(assert (=> b!4706153 m!5628449))

(assert (=> start!477844 d!1497753))

(declare-fun d!1497755 () Bool)

(declare-fun isStrictlySorted!698 (List!52704) Bool)

(assert (=> d!1497755 (= (inv!67809 lm!2023) (isStrictlySorted!698 (toList!5717 lm!2023)))))

(declare-fun bs!1099372 () Bool)

(assert (= bs!1099372 d!1497755))

(declare-fun m!5628451 () Bool)

(assert (=> bs!1099372 m!5628451))

(assert (=> start!477844 d!1497755))

(declare-fun d!1497757 () Bool)

(assert (=> d!1497757 (= (eq!1073 lt!1870337 lt!1870352) (= (content!9309 (toList!5718 lt!1870337)) (content!9309 (toList!5718 lt!1870352))))))

(declare-fun bs!1099373 () Bool)

(assert (= bs!1099373 d!1497757))

(declare-fun m!5628453 () Bool)

(assert (=> bs!1099373 m!5628453))

(declare-fun m!5628455 () Bool)

(assert (=> bs!1099373 m!5628455))

(assert (=> b!4705741 d!1497757))

(declare-fun d!1497759 () Bool)

(declare-fun res!1987879 () Bool)

(declare-fun e!2935626 () Bool)

(assert (=> d!1497759 (=> res!1987879 e!2935626)))

(assert (=> d!1497759 (= res!1987879 (not ((_ is Cons!52579) newBucket!218)))))

(assert (=> d!1497759 (= (noDuplicateKeys!1914 newBucket!218) e!2935626)))

(declare-fun b!4706158 () Bool)

(declare-fun e!2935627 () Bool)

(assert (=> b!4706158 (= e!2935626 e!2935627)))

(declare-fun res!1987880 () Bool)

(assert (=> b!4706158 (=> (not res!1987880) (not e!2935627))))

(assert (=> b!4706158 (= res!1987880 (not (containsKey!3213 (t!359929 newBucket!218) (_1!30319 (h!58874 newBucket!218)))))))

(declare-fun b!4706159 () Bool)

(assert (=> b!4706159 (= e!2935627 (noDuplicateKeys!1914 (t!359929 newBucket!218)))))

(assert (= (and d!1497759 (not res!1987879)) b!4706158))

(assert (= (and b!4706158 res!1987880) b!4706159))

(declare-fun m!5628457 () Bool)

(assert (=> b!4706158 m!5628457))

(declare-fun m!5628459 () Bool)

(assert (=> b!4706159 m!5628459))

(assert (=> b!4705745 d!1497759))

(declare-fun bs!1099374 () Bool)

(declare-fun d!1497761 () Bool)

(assert (= bs!1099374 (and d!1497761 start!477844)))

(declare-fun lambda!211655 () Int)

(assert (=> bs!1099374 (= lambda!211655 lambda!211507)))

(declare-fun bs!1099375 () Bool)

(assert (= bs!1099375 (and d!1497761 d!1497579)))

(assert (=> bs!1099375 (= lambda!211655 lambda!211597)))

(declare-fun bs!1099376 () Bool)

(assert (= bs!1099376 (and d!1497761 d!1497635)))

(assert (=> bs!1099376 (= lambda!211655 lambda!211628)))

(declare-fun bs!1099377 () Bool)

(assert (= bs!1099377 (and d!1497761 d!1497697)))

(assert (=> bs!1099377 (= lambda!211655 lambda!211654)))

(declare-fun bs!1099378 () Bool)

(assert (= bs!1099378 (and d!1497761 d!1497593)))

(assert (=> bs!1099378 (= lambda!211655 lambda!211604)))

(declare-fun bs!1099379 () Bool)

(assert (= bs!1099379 (and d!1497761 d!1497679)))

(assert (=> bs!1099379 (= lambda!211655 lambda!211642)))

(declare-fun bs!1099380 () Bool)

(assert (= bs!1099380 (and d!1497761 d!1497533)))

(assert (=> bs!1099380 (not (= lambda!211655 lambda!211516))))

(declare-fun bs!1099381 () Bool)

(assert (= bs!1099381 (and d!1497761 d!1497633)))

(assert (=> bs!1099381 (= lambda!211655 lambda!211624)))

(declare-fun lt!1870923 () ListMap!5081)

(assert (=> d!1497761 (invariantList!1460 (toList!5718 lt!1870923))))

(declare-fun e!2935628 () ListMap!5081)

(assert (=> d!1497761 (= lt!1870923 e!2935628)))

(declare-fun c!804336 () Bool)

(assert (=> d!1497761 (= c!804336 ((_ is Cons!52580) (Cons!52580 lt!1870357 (t!359930 (toList!5717 lm!2023)))))))

(assert (=> d!1497761 (forall!11431 (Cons!52580 lt!1870357 (t!359930 (toList!5717 lm!2023))) lambda!211655)))

(assert (=> d!1497761 (= (extractMap!1940 (Cons!52580 lt!1870357 (t!359930 (toList!5717 lm!2023)))) lt!1870923)))

(declare-fun b!4706160 () Bool)

(assert (=> b!4706160 (= e!2935628 (addToMapMapFromBucket!1346 (_2!30320 (h!58875 (Cons!52580 lt!1870357 (t!359930 (toList!5717 lm!2023))))) (extractMap!1940 (t!359930 (Cons!52580 lt!1870357 (t!359930 (toList!5717 lm!2023)))))))))

(declare-fun b!4706161 () Bool)

(assert (=> b!4706161 (= e!2935628 (ListMap!5082 Nil!52579))))

(assert (= (and d!1497761 c!804336) b!4706160))

(assert (= (and d!1497761 (not c!804336)) b!4706161))

(declare-fun m!5628461 () Bool)

(assert (=> d!1497761 m!5628461))

(declare-fun m!5628463 () Bool)

(assert (=> d!1497761 m!5628463))

(declare-fun m!5628465 () Bool)

(assert (=> b!4706160 m!5628465))

(assert (=> b!4706160 m!5628465))

(declare-fun m!5628467 () Bool)

(assert (=> b!4706160 m!5628467))

(assert (=> b!4705744 d!1497761))

(declare-fun bs!1099382 () Bool)

(declare-fun d!1497763 () Bool)

(assert (= bs!1099382 (and d!1497763 start!477844)))

(declare-fun lambda!211656 () Int)

(assert (=> bs!1099382 (= lambda!211656 lambda!211507)))

(declare-fun bs!1099383 () Bool)

(assert (= bs!1099383 (and d!1497763 d!1497579)))

(assert (=> bs!1099383 (= lambda!211656 lambda!211597)))

(declare-fun bs!1099384 () Bool)

(assert (= bs!1099384 (and d!1497763 d!1497761)))

(assert (=> bs!1099384 (= lambda!211656 lambda!211655)))

(declare-fun bs!1099385 () Bool)

(assert (= bs!1099385 (and d!1497763 d!1497635)))

(assert (=> bs!1099385 (= lambda!211656 lambda!211628)))

(declare-fun bs!1099386 () Bool)

(assert (= bs!1099386 (and d!1497763 d!1497697)))

(assert (=> bs!1099386 (= lambda!211656 lambda!211654)))

(declare-fun bs!1099387 () Bool)

(assert (= bs!1099387 (and d!1497763 d!1497593)))

(assert (=> bs!1099387 (= lambda!211656 lambda!211604)))

(declare-fun bs!1099388 () Bool)

(assert (= bs!1099388 (and d!1497763 d!1497679)))

(assert (=> bs!1099388 (= lambda!211656 lambda!211642)))

(declare-fun bs!1099389 () Bool)

(assert (= bs!1099389 (and d!1497763 d!1497533)))

(assert (=> bs!1099389 (not (= lambda!211656 lambda!211516))))

(declare-fun bs!1099390 () Bool)

(assert (= bs!1099390 (and d!1497763 d!1497633)))

(assert (=> bs!1099390 (= lambda!211656 lambda!211624)))

(declare-fun lt!1870924 () ListMap!5081)

(assert (=> d!1497763 (invariantList!1460 (toList!5718 lt!1870924))))

(declare-fun e!2935629 () ListMap!5081)

(assert (=> d!1497763 (= lt!1870924 e!2935629)))

(declare-fun c!804337 () Bool)

(assert (=> d!1497763 (= c!804337 ((_ is Cons!52580) (Cons!52580 lt!1870357 lt!1870338)))))

(assert (=> d!1497763 (forall!11431 (Cons!52580 lt!1870357 lt!1870338) lambda!211656)))

(assert (=> d!1497763 (= (extractMap!1940 (Cons!52580 lt!1870357 lt!1870338)) lt!1870924)))

(declare-fun b!4706162 () Bool)

(assert (=> b!4706162 (= e!2935629 (addToMapMapFromBucket!1346 (_2!30320 (h!58875 (Cons!52580 lt!1870357 lt!1870338))) (extractMap!1940 (t!359930 (Cons!52580 lt!1870357 lt!1870338)))))))

(declare-fun b!4706163 () Bool)

(assert (=> b!4706163 (= e!2935629 (ListMap!5082 Nil!52579))))

(assert (= (and d!1497763 c!804337) b!4706162))

(assert (= (and d!1497763 (not c!804337)) b!4706163))

(declare-fun m!5628469 () Bool)

(assert (=> d!1497763 m!5628469))

(declare-fun m!5628471 () Bool)

(assert (=> d!1497763 m!5628471))

(declare-fun m!5628473 () Bool)

(assert (=> b!4706162 m!5628473))

(assert (=> b!4706162 m!5628473))

(declare-fun m!5628475 () Bool)

(assert (=> b!4706162 m!5628475))

(assert (=> b!4705744 d!1497763))

(declare-fun d!1497765 () Bool)

(assert (=> d!1497765 (= (eq!1073 (extractMap!1940 (Cons!52580 lt!1870357 lt!1870338)) (-!718 (extractMap!1940 (Cons!52580 lt!1870339 lt!1870338)) key!4653)) (= (content!9309 (toList!5718 (extractMap!1940 (Cons!52580 lt!1870357 lt!1870338)))) (content!9309 (toList!5718 (-!718 (extractMap!1940 (Cons!52580 lt!1870339 lt!1870338)) key!4653)))))))

(declare-fun bs!1099391 () Bool)

(assert (= bs!1099391 d!1497765))

(declare-fun m!5628477 () Bool)

(assert (=> bs!1099391 m!5628477))

(declare-fun m!5628479 () Bool)

(assert (=> bs!1099391 m!5628479))

(assert (=> b!4705744 d!1497765))

(declare-fun d!1497767 () Bool)

(assert (=> d!1497767 (= (tail!8768 lt!1870358) (t!359930 lt!1870358))))

(assert (=> b!4705744 d!1497767))

(declare-fun bs!1099392 () Bool)

(declare-fun d!1497769 () Bool)

(assert (= bs!1099392 (and d!1497769 start!477844)))

(declare-fun lambda!211659 () Int)

(assert (=> bs!1099392 (= lambda!211659 lambda!211507)))

(declare-fun bs!1099393 () Bool)

(assert (= bs!1099393 (and d!1497769 d!1497579)))

(assert (=> bs!1099393 (= lambda!211659 lambda!211597)))

(declare-fun bs!1099394 () Bool)

(assert (= bs!1099394 (and d!1497769 d!1497763)))

(assert (=> bs!1099394 (= lambda!211659 lambda!211656)))

(declare-fun bs!1099395 () Bool)

(assert (= bs!1099395 (and d!1497769 d!1497761)))

(assert (=> bs!1099395 (= lambda!211659 lambda!211655)))

(declare-fun bs!1099396 () Bool)

(assert (= bs!1099396 (and d!1497769 d!1497635)))

(assert (=> bs!1099396 (= lambda!211659 lambda!211628)))

(declare-fun bs!1099397 () Bool)

(assert (= bs!1099397 (and d!1497769 d!1497697)))

(assert (=> bs!1099397 (= lambda!211659 lambda!211654)))

(declare-fun bs!1099398 () Bool)

(assert (= bs!1099398 (and d!1497769 d!1497593)))

(assert (=> bs!1099398 (= lambda!211659 lambda!211604)))

(declare-fun bs!1099399 () Bool)

(assert (= bs!1099399 (and d!1497769 d!1497679)))

(assert (=> bs!1099399 (= lambda!211659 lambda!211642)))

(declare-fun bs!1099400 () Bool)

(assert (= bs!1099400 (and d!1497769 d!1497533)))

(assert (=> bs!1099400 (not (= lambda!211659 lambda!211516))))

(declare-fun bs!1099401 () Bool)

(assert (= bs!1099401 (and d!1497769 d!1497633)))

(assert (=> bs!1099401 (= lambda!211659 lambda!211624)))

(assert (=> d!1497769 (eq!1073 (extractMap!1940 (Cons!52580 (tuple2!54053 hash!405 lt!1870368) (tail!8768 (toList!5717 lt!1870366)))) (-!718 (extractMap!1940 (Cons!52580 (tuple2!54053 hash!405 (t!359929 oldBucket!34)) (tail!8768 (toList!5717 lt!1870366)))) key!4653))))

(declare-fun lt!1870927 () Unit!127112)

(declare-fun choose!33058 (ListLongMap!4247 (_ BitVec 64) List!52703 List!52703 K!13935 Hashable!6283) Unit!127112)

(assert (=> d!1497769 (= lt!1870927 (choose!33058 lt!1870366 hash!405 (t!359929 oldBucket!34) lt!1870368 key!4653 hashF!1323))))

(assert (=> d!1497769 (forall!11431 (toList!5717 lt!1870366) lambda!211659)))

(assert (=> d!1497769 (= (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMapOneHashIsHead!88 lt!1870366 hash!405 (t!359929 oldBucket!34) lt!1870368 key!4653 hashF!1323) lt!1870927)))

(declare-fun bs!1099402 () Bool)

(assert (= bs!1099402 d!1497769))

(declare-fun m!5628481 () Bool)

(assert (=> bs!1099402 m!5628481))

(declare-fun m!5628483 () Bool)

(assert (=> bs!1099402 m!5628483))

(declare-fun m!5628485 () Bool)

(assert (=> bs!1099402 m!5628485))

(assert (=> bs!1099402 m!5628485))

(assert (=> bs!1099402 m!5628483))

(declare-fun m!5628487 () Bool)

(assert (=> bs!1099402 m!5628487))

(assert (=> bs!1099402 m!5628481))

(declare-fun m!5628489 () Bool)

(assert (=> bs!1099402 m!5628489))

(declare-fun m!5628491 () Bool)

(assert (=> bs!1099402 m!5628491))

(declare-fun m!5628493 () Bool)

(assert (=> bs!1099402 m!5628493))

(assert (=> b!4705744 d!1497769))

(declare-fun d!1497771 () Bool)

(assert (=> d!1497771 (= (eq!1073 lt!1870346 lt!1870371) (= (content!9309 (toList!5718 lt!1870346)) (content!9309 (toList!5718 lt!1870371))))))

(declare-fun bs!1099403 () Bool)

(assert (= bs!1099403 d!1497771))

(declare-fun m!5628495 () Bool)

(assert (=> bs!1099403 m!5628495))

(declare-fun m!5628497 () Bool)

(assert (=> bs!1099403 m!5628497))

(assert (=> b!4705744 d!1497771))

(declare-fun d!1497773 () Bool)

(declare-fun e!2935632 () Bool)

(assert (=> d!1497773 e!2935632))

(declare-fun res!1987883 () Bool)

(assert (=> d!1497773 (=> (not res!1987883) (not e!2935632))))

(declare-fun lt!1870930 () ListMap!5081)

(assert (=> d!1497773 (= res!1987883 (not (contains!15888 lt!1870930 key!4653)))))

(declare-fun removePresrvNoDuplicatedKeys!381 (List!52703 K!13935) List!52703)

(assert (=> d!1497773 (= lt!1870930 (ListMap!5082 (removePresrvNoDuplicatedKeys!381 (toList!5718 lt!1870351) key!4653)))))

(assert (=> d!1497773 (= (-!718 lt!1870351 key!4653) lt!1870930)))

(declare-fun b!4706166 () Bool)

(declare-fun content!9312 (List!52705) (InoxSet K!13935))

(assert (=> b!4706166 (= e!2935632 (= ((_ map and) (content!9312 (keys!18822 lt!1870351)) ((_ map not) (store ((as const (Array K!13935 Bool)) false) key!4653 true))) (content!9312 (keys!18822 lt!1870930))))))

(assert (= (and d!1497773 res!1987883) b!4706166))

(declare-fun m!5628499 () Bool)

(assert (=> d!1497773 m!5628499))

(declare-fun m!5628501 () Bool)

(assert (=> d!1497773 m!5628501))

(declare-fun m!5628503 () Bool)

(assert (=> b!4706166 m!5628503))

(assert (=> b!4706166 m!5627865))

(declare-fun m!5628505 () Bool)

(assert (=> b!4706166 m!5628505))

(declare-fun m!5628507 () Bool)

(assert (=> b!4706166 m!5628507))

(assert (=> b!4706166 m!5627865))

(assert (=> b!4706166 m!5628507))

(declare-fun m!5628509 () Bool)

(assert (=> b!4706166 m!5628509))

(assert (=> b!4705744 d!1497773))

(declare-fun bs!1099404 () Bool)

(declare-fun d!1497775 () Bool)

(assert (= bs!1099404 (and d!1497775 start!477844)))

(declare-fun lambda!211660 () Int)

(assert (=> bs!1099404 (= lambda!211660 lambda!211507)))

(declare-fun bs!1099405 () Bool)

(assert (= bs!1099405 (and d!1497775 d!1497763)))

(assert (=> bs!1099405 (= lambda!211660 lambda!211656)))

(declare-fun bs!1099406 () Bool)

(assert (= bs!1099406 (and d!1497775 d!1497761)))

(assert (=> bs!1099406 (= lambda!211660 lambda!211655)))

(declare-fun bs!1099407 () Bool)

(assert (= bs!1099407 (and d!1497775 d!1497635)))

(assert (=> bs!1099407 (= lambda!211660 lambda!211628)))

(declare-fun bs!1099408 () Bool)

(assert (= bs!1099408 (and d!1497775 d!1497697)))

(assert (=> bs!1099408 (= lambda!211660 lambda!211654)))

(declare-fun bs!1099409 () Bool)

(assert (= bs!1099409 (and d!1497775 d!1497593)))

(assert (=> bs!1099409 (= lambda!211660 lambda!211604)))

(declare-fun bs!1099410 () Bool)

(assert (= bs!1099410 (and d!1497775 d!1497679)))

(assert (=> bs!1099410 (= lambda!211660 lambda!211642)))

(declare-fun bs!1099411 () Bool)

(assert (= bs!1099411 (and d!1497775 d!1497579)))

(assert (=> bs!1099411 (= lambda!211660 lambda!211597)))

(declare-fun bs!1099412 () Bool)

(assert (= bs!1099412 (and d!1497775 d!1497769)))

(assert (=> bs!1099412 (= lambda!211660 lambda!211659)))

(declare-fun bs!1099413 () Bool)

(assert (= bs!1099413 (and d!1497775 d!1497533)))

(assert (=> bs!1099413 (not (= lambda!211660 lambda!211516))))

(declare-fun bs!1099414 () Bool)

(assert (= bs!1099414 (and d!1497775 d!1497633)))

(assert (=> bs!1099414 (= lambda!211660 lambda!211624)))

(declare-fun lt!1870931 () ListMap!5081)

(assert (=> d!1497775 (invariantList!1460 (toList!5718 lt!1870931))))

(declare-fun e!2935633 () ListMap!5081)

(assert (=> d!1497775 (= lt!1870931 e!2935633)))

(declare-fun c!804338 () Bool)

(assert (=> d!1497775 (= c!804338 ((_ is Cons!52580) (Cons!52580 lt!1870339 lt!1870338)))))

(assert (=> d!1497775 (forall!11431 (Cons!52580 lt!1870339 lt!1870338) lambda!211660)))

(assert (=> d!1497775 (= (extractMap!1940 (Cons!52580 lt!1870339 lt!1870338)) lt!1870931)))

(declare-fun b!4706167 () Bool)

(assert (=> b!4706167 (= e!2935633 (addToMapMapFromBucket!1346 (_2!30320 (h!58875 (Cons!52580 lt!1870339 lt!1870338))) (extractMap!1940 (t!359930 (Cons!52580 lt!1870339 lt!1870338)))))))

(declare-fun b!4706168 () Bool)

(assert (=> b!4706168 (= e!2935633 (ListMap!5082 Nil!52579))))

(assert (= (and d!1497775 c!804338) b!4706167))

(assert (= (and d!1497775 (not c!804338)) b!4706168))

(declare-fun m!5628511 () Bool)

(assert (=> d!1497775 m!5628511))

(declare-fun m!5628513 () Bool)

(assert (=> d!1497775 m!5628513))

(declare-fun m!5628515 () Bool)

(assert (=> b!4706167 m!5628515))

(assert (=> b!4706167 m!5628515))

(declare-fun m!5628517 () Bool)

(assert (=> b!4706167 m!5628517))

(assert (=> b!4705744 d!1497775))

(declare-fun d!1497777 () Bool)

(declare-fun e!2935634 () Bool)

(assert (=> d!1497777 e!2935634))

(declare-fun res!1987884 () Bool)

(assert (=> d!1497777 (=> (not res!1987884) (not e!2935634))))

(declare-fun lt!1870932 () ListMap!5081)

(assert (=> d!1497777 (= res!1987884 (not (contains!15888 lt!1870932 key!4653)))))

(assert (=> d!1497777 (= lt!1870932 (ListMap!5082 (removePresrvNoDuplicatedKeys!381 (toList!5718 (extractMap!1940 (Cons!52580 lt!1870339 lt!1870338))) key!4653)))))

(assert (=> d!1497777 (= (-!718 (extractMap!1940 (Cons!52580 lt!1870339 lt!1870338)) key!4653) lt!1870932)))

(declare-fun b!4706169 () Bool)

(assert (=> b!4706169 (= e!2935634 (= ((_ map and) (content!9312 (keys!18822 (extractMap!1940 (Cons!52580 lt!1870339 lt!1870338)))) ((_ map not) (store ((as const (Array K!13935 Bool)) false) key!4653 true))) (content!9312 (keys!18822 lt!1870932))))))

(assert (= (and d!1497777 res!1987884) b!4706169))

(declare-fun m!5628519 () Bool)

(assert (=> d!1497777 m!5628519))

(declare-fun m!5628521 () Bool)

(assert (=> d!1497777 m!5628521))

(assert (=> b!4706169 m!5628503))

(declare-fun m!5628523 () Bool)

(assert (=> b!4706169 m!5628523))

(declare-fun m!5628525 () Bool)

(assert (=> b!4706169 m!5628525))

(declare-fun m!5628527 () Bool)

(assert (=> b!4706169 m!5628527))

(assert (=> b!4706169 m!5627347))

(assert (=> b!4706169 m!5628523))

(assert (=> b!4706169 m!5628527))

(declare-fun m!5628529 () Bool)

(assert (=> b!4706169 m!5628529))

(assert (=> b!4705744 d!1497777))

(declare-fun d!1497779 () Bool)

(assert (=> d!1497779 (= (eq!1073 lt!1870352 lt!1870353) (= (content!9309 (toList!5718 lt!1870352)) (content!9309 (toList!5718 lt!1870353))))))

(declare-fun bs!1099415 () Bool)

(assert (= bs!1099415 d!1497779))

(assert (=> bs!1099415 m!5628455))

(declare-fun m!5628531 () Bool)

(assert (=> bs!1099415 m!5628531))

(assert (=> b!4705748 d!1497779))

(declare-fun d!1497781 () Bool)

(declare-fun e!2935635 () Bool)

(assert (=> d!1497781 e!2935635))

(declare-fun res!1987886 () Bool)

(assert (=> d!1497781 (=> (not res!1987886) (not e!2935635))))

(declare-fun lt!1870935 () ListMap!5081)

(assert (=> d!1497781 (= res!1987886 (contains!15888 lt!1870935 (_1!30319 (h!58874 oldBucket!34))))))

(declare-fun lt!1870933 () List!52703)

(assert (=> d!1497781 (= lt!1870935 (ListMap!5082 lt!1870933))))

(declare-fun lt!1870934 () Unit!127112)

(declare-fun lt!1870936 () Unit!127112)

(assert (=> d!1497781 (= lt!1870934 lt!1870936)))

(assert (=> d!1497781 (= (getValueByKey!1880 lt!1870933 (_1!30319 (h!58874 oldBucket!34))) (Some!12239 (_2!30319 (h!58874 oldBucket!34))))))

(assert (=> d!1497781 (= lt!1870936 (lemmaContainsTupThenGetReturnValue!1050 lt!1870933 (_1!30319 (h!58874 oldBucket!34)) (_2!30319 (h!58874 oldBucket!34))))))

(assert (=> d!1497781 (= lt!1870933 (insertNoDuplicatedKeys!558 (toList!5718 lt!1870346) (_1!30319 (h!58874 oldBucket!34)) (_2!30319 (h!58874 oldBucket!34))))))

(assert (=> d!1497781 (= (+!2198 lt!1870346 (h!58874 oldBucket!34)) lt!1870935)))

(declare-fun b!4706170 () Bool)

(declare-fun res!1987885 () Bool)

(assert (=> b!4706170 (=> (not res!1987885) (not e!2935635))))

(assert (=> b!4706170 (= res!1987885 (= (getValueByKey!1880 (toList!5718 lt!1870935) (_1!30319 (h!58874 oldBucket!34))) (Some!12239 (_2!30319 (h!58874 oldBucket!34)))))))

(declare-fun b!4706171 () Bool)

(assert (=> b!4706171 (= e!2935635 (contains!15894 (toList!5718 lt!1870935) (h!58874 oldBucket!34)))))

(assert (= (and d!1497781 res!1987886) b!4706170))

(assert (= (and b!4706170 res!1987885) b!4706171))

(declare-fun m!5628533 () Bool)

(assert (=> d!1497781 m!5628533))

(declare-fun m!5628535 () Bool)

(assert (=> d!1497781 m!5628535))

(declare-fun m!5628537 () Bool)

(assert (=> d!1497781 m!5628537))

(declare-fun m!5628539 () Bool)

(assert (=> d!1497781 m!5628539))

(declare-fun m!5628541 () Bool)

(assert (=> b!4706170 m!5628541))

(declare-fun m!5628543 () Bool)

(assert (=> b!4706171 m!5628543))

(assert (=> b!4705748 d!1497781))

(declare-fun d!1497783 () Bool)

(assert (=> d!1497783 (= (eq!1073 lt!1870345 (+!2198 lt!1870346 (h!58874 oldBucket!34))) (= (content!9309 (toList!5718 lt!1870345)) (content!9309 (toList!5718 (+!2198 lt!1870346 (h!58874 oldBucket!34))))))))

(declare-fun bs!1099416 () Bool)

(assert (= bs!1099416 d!1497783))

(declare-fun m!5628545 () Bool)

(assert (=> bs!1099416 m!5628545))

(declare-fun m!5628547 () Bool)

(assert (=> bs!1099416 m!5628547))

(assert (=> b!4705748 d!1497783))

(declare-fun d!1497785 () Bool)

(assert (=> d!1497785 (eq!1073 (+!2198 lt!1870371 (tuple2!54051 (_1!30319 (h!58874 oldBucket!34)) (_2!30319 (h!58874 oldBucket!34)))) (+!2198 lt!1870346 (tuple2!54051 (_1!30319 (h!58874 oldBucket!34)) (_2!30319 (h!58874 oldBucket!34)))))))

(declare-fun lt!1870939 () Unit!127112)

(declare-fun choose!33061 (ListMap!5081 ListMap!5081 K!13935 V!14181) Unit!127112)

(assert (=> d!1497785 (= lt!1870939 (choose!33061 lt!1870371 lt!1870346 (_1!30319 (h!58874 oldBucket!34)) (_2!30319 (h!58874 oldBucket!34))))))

(assert (=> d!1497785 (eq!1073 lt!1870371 lt!1870346)))

(assert (=> d!1497785 (= (lemmaAddToEqMapsPreservesEq!96 lt!1870371 lt!1870346 (_1!30319 (h!58874 oldBucket!34)) (_2!30319 (h!58874 oldBucket!34))) lt!1870939)))

(declare-fun bs!1099417 () Bool)

(assert (= bs!1099417 d!1497785))

(declare-fun m!5628549 () Bool)

(assert (=> bs!1099417 m!5628549))

(declare-fun m!5628551 () Bool)

(assert (=> bs!1099417 m!5628551))

(declare-fun m!5628553 () Bool)

(assert (=> bs!1099417 m!5628553))

(declare-fun m!5628555 () Bool)

(assert (=> bs!1099417 m!5628555))

(assert (=> bs!1099417 m!5628555))

(assert (=> bs!1099417 m!5628553))

(declare-fun m!5628557 () Bool)

(assert (=> bs!1099417 m!5628557))

(assert (=> b!4705748 d!1497785))

(declare-fun d!1497787 () Bool)

(assert (=> d!1497787 (= (eq!1073 lt!1870353 (extractMap!1940 (Cons!52580 (tuple2!54053 hash!405 newBucket!218) (t!359930 (toList!5717 lm!2023))))) (= (content!9309 (toList!5718 lt!1870353)) (content!9309 (toList!5718 (extractMap!1940 (Cons!52580 (tuple2!54053 hash!405 newBucket!218) (t!359930 (toList!5717 lm!2023))))))))))

(declare-fun bs!1099418 () Bool)

(assert (= bs!1099418 d!1497787))

(assert (=> bs!1099418 m!5628531))

(declare-fun m!5628559 () Bool)

(assert (=> bs!1099418 m!5628559))

(assert (=> b!4705727 d!1497787))

(declare-fun bs!1099419 () Bool)

(declare-fun d!1497789 () Bool)

(assert (= bs!1099419 (and d!1497789 start!477844)))

(declare-fun lambda!211661 () Int)

(assert (=> bs!1099419 (= lambda!211661 lambda!211507)))

(declare-fun bs!1099420 () Bool)

(assert (= bs!1099420 (and d!1497789 d!1497763)))

(assert (=> bs!1099420 (= lambda!211661 lambda!211656)))

(declare-fun bs!1099421 () Bool)

(assert (= bs!1099421 (and d!1497789 d!1497635)))

(assert (=> bs!1099421 (= lambda!211661 lambda!211628)))

(declare-fun bs!1099422 () Bool)

(assert (= bs!1099422 (and d!1497789 d!1497697)))

(assert (=> bs!1099422 (= lambda!211661 lambda!211654)))

(declare-fun bs!1099423 () Bool)

(assert (= bs!1099423 (and d!1497789 d!1497593)))

(assert (=> bs!1099423 (= lambda!211661 lambda!211604)))

(declare-fun bs!1099424 () Bool)

(assert (= bs!1099424 (and d!1497789 d!1497679)))

(assert (=> bs!1099424 (= lambda!211661 lambda!211642)))

(declare-fun bs!1099425 () Bool)

(assert (= bs!1099425 (and d!1497789 d!1497579)))

(assert (=> bs!1099425 (= lambda!211661 lambda!211597)))

(declare-fun bs!1099426 () Bool)

(assert (= bs!1099426 (and d!1497789 d!1497769)))

(assert (=> bs!1099426 (= lambda!211661 lambda!211659)))

(declare-fun bs!1099427 () Bool)

(assert (= bs!1099427 (and d!1497789 d!1497533)))

(assert (=> bs!1099427 (not (= lambda!211661 lambda!211516))))

(declare-fun bs!1099428 () Bool)

(assert (= bs!1099428 (and d!1497789 d!1497633)))

(assert (=> bs!1099428 (= lambda!211661 lambda!211624)))

(declare-fun bs!1099429 () Bool)

(assert (= bs!1099429 (and d!1497789 d!1497775)))

(assert (=> bs!1099429 (= lambda!211661 lambda!211660)))

(declare-fun bs!1099430 () Bool)

(assert (= bs!1099430 (and d!1497789 d!1497761)))

(assert (=> bs!1099430 (= lambda!211661 lambda!211655)))

(declare-fun lt!1870940 () ListMap!5081)

(assert (=> d!1497789 (invariantList!1460 (toList!5718 lt!1870940))))

(declare-fun e!2935636 () ListMap!5081)

(assert (=> d!1497789 (= lt!1870940 e!2935636)))

(declare-fun c!804339 () Bool)

(assert (=> d!1497789 (= c!804339 ((_ is Cons!52580) (Cons!52580 (tuple2!54053 hash!405 newBucket!218) (t!359930 (toList!5717 lm!2023)))))))

(assert (=> d!1497789 (forall!11431 (Cons!52580 (tuple2!54053 hash!405 newBucket!218) (t!359930 (toList!5717 lm!2023))) lambda!211661)))

(assert (=> d!1497789 (= (extractMap!1940 (Cons!52580 (tuple2!54053 hash!405 newBucket!218) (t!359930 (toList!5717 lm!2023)))) lt!1870940)))

(declare-fun b!4706172 () Bool)

(assert (=> b!4706172 (= e!2935636 (addToMapMapFromBucket!1346 (_2!30320 (h!58875 (Cons!52580 (tuple2!54053 hash!405 newBucket!218) (t!359930 (toList!5717 lm!2023))))) (extractMap!1940 (t!359930 (Cons!52580 (tuple2!54053 hash!405 newBucket!218) (t!359930 (toList!5717 lm!2023)))))))))

(declare-fun b!4706173 () Bool)

(assert (=> b!4706173 (= e!2935636 (ListMap!5082 Nil!52579))))

(assert (= (and d!1497789 c!804339) b!4706172))

(assert (= (and d!1497789 (not c!804339)) b!4706173))

(declare-fun m!5628561 () Bool)

(assert (=> d!1497789 m!5628561))

(declare-fun m!5628563 () Bool)

(assert (=> d!1497789 m!5628563))

(declare-fun m!5628565 () Bool)

(assert (=> b!4706172 m!5628565))

(assert (=> b!4706172 m!5628565))

(declare-fun m!5628567 () Bool)

(assert (=> b!4706172 m!5628567))

(assert (=> b!4705727 d!1497789))

(declare-fun d!1497791 () Bool)

(assert (=> d!1497791 (= (eq!1073 lt!1870369 lt!1870364) (= (content!9309 (toList!5718 lt!1870369)) (content!9309 (toList!5718 lt!1870364))))))

(declare-fun bs!1099431 () Bool)

(assert (= bs!1099431 d!1497791))

(declare-fun m!5628569 () Bool)

(assert (=> bs!1099431 m!5628569))

(assert (=> bs!1099431 m!5628069))

(assert (=> b!4705747 d!1497791))

(declare-fun bs!1099432 () Bool)

(declare-fun d!1497793 () Bool)

(assert (= bs!1099432 (and d!1497793 b!4706005)))

(declare-fun lambda!211664 () Int)

(assert (=> bs!1099432 (not (= lambda!211664 lambda!211620))))

(declare-fun bs!1099433 () Bool)

(assert (= bs!1099433 (and d!1497793 b!4705907)))

(assert (=> bs!1099433 (not (= lambda!211664 lambda!211598))))

(declare-fun bs!1099434 () Bool)

(assert (= bs!1099434 (and d!1497793 d!1497591)))

(assert (=> bs!1099434 (not (= lambda!211664 lambda!211601))))

(declare-fun bs!1099435 () Bool)

(assert (= bs!1099435 (and d!1497793 b!4706006)))

(assert (=> bs!1099435 (not (= lambda!211664 lambda!211622))))

(declare-fun bs!1099436 () Bool)

(assert (= bs!1099436 (and d!1497793 b!4705996)))

(assert (=> bs!1099436 (not (= lambda!211664 lambda!211615))))

(declare-fun bs!1099437 () Bool)

(assert (= bs!1099437 (and d!1497793 d!1497539)))

(assert (=> bs!1099437 (not (= lambda!211664 lambda!211587))))

(declare-fun bs!1099438 () Bool)

(assert (= bs!1099438 (and d!1497793 d!1497619)))

(assert (=> bs!1099438 (not (= lambda!211664 lambda!211623))))

(declare-fun bs!1099439 () Bool)

(assert (= bs!1099439 (and d!1497793 b!4705908)))

(assert (=> bs!1099439 (not (= lambda!211664 lambda!211599))))

(assert (=> bs!1099439 (not (= lambda!211664 lambda!211600))))

(declare-fun bs!1099440 () Bool)

(assert (= bs!1099440 (and d!1497793 b!4705883)))

(assert (=> bs!1099440 (not (= lambda!211664 lambda!211584))))

(assert (=> bs!1099435 (not (= lambda!211664 lambda!211621))))

(declare-fun bs!1099441 () Bool)

(assert (= bs!1099441 (and d!1497793 d!1497615)))

(assert (=> bs!1099441 (not (= lambda!211664 lambda!211618))))

(declare-fun bs!1099442 () Bool)

(assert (= bs!1099442 (and d!1497793 b!4705882)))

(assert (=> bs!1099442 (not (= lambda!211664 lambda!211583))))

(declare-fun bs!1099443 () Bool)

(assert (= bs!1099443 (and d!1497793 b!4705995)))

(assert (=> bs!1099443 (not (= lambda!211664 lambda!211612))))

(assert (=> bs!1099436 (not (= lambda!211664 lambda!211614))))

(assert (=> bs!1099440 (not (= lambda!211664 lambda!211585))))

(assert (=> d!1497793 true))

(assert (=> d!1497793 true))

(assert (=> d!1497793 (= (allKeysSameHash!1740 newBucket!218 hash!405 hashF!1323) (forall!11433 newBucket!218 lambda!211664))))

(declare-fun bs!1099444 () Bool)

(assert (= bs!1099444 d!1497793))

(declare-fun m!5628571 () Bool)

(assert (=> bs!1099444 m!5628571))

(assert (=> b!4705746 d!1497793))

(declare-fun bs!1099445 () Bool)

(declare-fun d!1497795 () Bool)

(assert (= bs!1099445 (and d!1497795 b!4706005)))

(declare-fun lambda!211665 () Int)

(assert (=> bs!1099445 (not (= lambda!211665 lambda!211620))))

(declare-fun bs!1099446 () Bool)

(assert (= bs!1099446 (and d!1497795 b!4705907)))

(assert (=> bs!1099446 (not (= lambda!211665 lambda!211598))))

(declare-fun bs!1099447 () Bool)

(assert (= bs!1099447 (and d!1497795 d!1497591)))

(assert (=> bs!1099447 (not (= lambda!211665 lambda!211601))))

(declare-fun bs!1099448 () Bool)

(assert (= bs!1099448 (and d!1497795 b!4706006)))

(assert (=> bs!1099448 (not (= lambda!211665 lambda!211622))))

(declare-fun bs!1099449 () Bool)

(assert (= bs!1099449 (and d!1497795 b!4705996)))

(assert (=> bs!1099449 (not (= lambda!211665 lambda!211615))))

(declare-fun bs!1099450 () Bool)

(assert (= bs!1099450 (and d!1497795 d!1497539)))

(assert (=> bs!1099450 (not (= lambda!211665 lambda!211587))))

(declare-fun bs!1099451 () Bool)

(assert (= bs!1099451 (and d!1497795 d!1497619)))

(assert (=> bs!1099451 (not (= lambda!211665 lambda!211623))))

(declare-fun bs!1099452 () Bool)

(assert (= bs!1099452 (and d!1497795 b!4705908)))

(assert (=> bs!1099452 (not (= lambda!211665 lambda!211599))))

(assert (=> bs!1099452 (not (= lambda!211665 lambda!211600))))

(declare-fun bs!1099453 () Bool)

(assert (= bs!1099453 (and d!1497795 b!4705883)))

(assert (=> bs!1099453 (not (= lambda!211665 lambda!211584))))

(assert (=> bs!1099448 (not (= lambda!211665 lambda!211621))))

(declare-fun bs!1099454 () Bool)

(assert (= bs!1099454 (and d!1497795 d!1497793)))

(assert (=> bs!1099454 (= lambda!211665 lambda!211664)))

(declare-fun bs!1099455 () Bool)

(assert (= bs!1099455 (and d!1497795 d!1497615)))

(assert (=> bs!1099455 (not (= lambda!211665 lambda!211618))))

(declare-fun bs!1099456 () Bool)

(assert (= bs!1099456 (and d!1497795 b!4705882)))

(assert (=> bs!1099456 (not (= lambda!211665 lambda!211583))))

(declare-fun bs!1099457 () Bool)

(assert (= bs!1099457 (and d!1497795 b!4705995)))

(assert (=> bs!1099457 (not (= lambda!211665 lambda!211612))))

(assert (=> bs!1099449 (not (= lambda!211665 lambda!211614))))

(assert (=> bs!1099453 (not (= lambda!211665 lambda!211585))))

(assert (=> d!1497795 true))

(assert (=> d!1497795 true))

(assert (=> d!1497795 (= (allKeysSameHash!1740 oldBucket!34 hash!405 hashF!1323) (forall!11433 oldBucket!34 lambda!211665))))

(declare-fun bs!1099458 () Bool)

(assert (= bs!1099458 d!1497795))

(declare-fun m!5628573 () Bool)

(assert (=> bs!1099458 m!5628573))

(assert (=> b!4705751 d!1497795))

(declare-fun b!4706181 () Bool)

(declare-fun e!2935638 () List!52703)

(assert (=> b!4706181 (= e!2935638 Nil!52579)))

(declare-fun b!4706178 () Bool)

(declare-fun e!2935637 () List!52703)

(assert (=> b!4706178 (= e!2935637 (t!359929 (t!359929 oldBucket!34)))))

(declare-fun d!1497797 () Bool)

(declare-fun lt!1870941 () List!52703)

(assert (=> d!1497797 (not (containsKey!3213 lt!1870941 key!4653))))

(assert (=> d!1497797 (= lt!1870941 e!2935637)))

(declare-fun c!804340 () Bool)

(assert (=> d!1497797 (= c!804340 (and ((_ is Cons!52579) (t!359929 oldBucket!34)) (= (_1!30319 (h!58874 (t!359929 oldBucket!34))) key!4653)))))

(assert (=> d!1497797 (noDuplicateKeys!1914 (t!359929 oldBucket!34))))

(assert (=> d!1497797 (= (removePairForKey!1509 (t!359929 oldBucket!34) key!4653) lt!1870941)))

(declare-fun b!4706179 () Bool)

(assert (=> b!4706179 (= e!2935637 e!2935638)))

(declare-fun c!804341 () Bool)

(assert (=> b!4706179 (= c!804341 ((_ is Cons!52579) (t!359929 oldBucket!34)))))

(declare-fun b!4706180 () Bool)

(assert (=> b!4706180 (= e!2935638 (Cons!52579 (h!58874 (t!359929 oldBucket!34)) (removePairForKey!1509 (t!359929 (t!359929 oldBucket!34)) key!4653)))))

(assert (= (and d!1497797 c!804340) b!4706178))

(assert (= (and d!1497797 (not c!804340)) b!4706179))

(assert (= (and b!4706179 c!804341) b!4706180))

(assert (= (and b!4706179 (not c!804341)) b!4706181))

(declare-fun m!5628575 () Bool)

(assert (=> d!1497797 m!5628575))

(declare-fun m!5628577 () Bool)

(assert (=> d!1497797 m!5628577))

(declare-fun m!5628579 () Bool)

(assert (=> b!4706180 m!5628579))

(assert (=> b!4705728 d!1497797))

(declare-fun b!4706185 () Bool)

(declare-fun e!2935640 () List!52703)

(assert (=> b!4706185 (= e!2935640 Nil!52579)))

(declare-fun b!4706182 () Bool)

(declare-fun e!2935639 () List!52703)

(assert (=> b!4706182 (= e!2935639 (t!359929 oldBucket!34))))

(declare-fun d!1497799 () Bool)

(declare-fun lt!1870942 () List!52703)

(assert (=> d!1497799 (not (containsKey!3213 lt!1870942 key!4653))))

(assert (=> d!1497799 (= lt!1870942 e!2935639)))

(declare-fun c!804342 () Bool)

(assert (=> d!1497799 (= c!804342 (and ((_ is Cons!52579) oldBucket!34) (= (_1!30319 (h!58874 oldBucket!34)) key!4653)))))

(assert (=> d!1497799 (noDuplicateKeys!1914 oldBucket!34)))

(assert (=> d!1497799 (= (removePairForKey!1509 oldBucket!34 key!4653) lt!1870942)))

(declare-fun b!4706183 () Bool)

(assert (=> b!4706183 (= e!2935639 e!2935640)))

(declare-fun c!804343 () Bool)

(assert (=> b!4706183 (= c!804343 ((_ is Cons!52579) oldBucket!34))))

(declare-fun b!4706184 () Bool)

(assert (=> b!4706184 (= e!2935640 (Cons!52579 (h!58874 oldBucket!34) (removePairForKey!1509 (t!359929 oldBucket!34) key!4653)))))

(assert (= (and d!1497799 c!804342) b!4706182))

(assert (= (and d!1497799 (not c!804342)) b!4706183))

(assert (= (and b!4706183 c!804343) b!4706184))

(assert (= (and b!4706183 (not c!804343)) b!4706185))

(declare-fun m!5628581 () Bool)

(assert (=> d!1497799 m!5628581))

(assert (=> d!1497799 m!5627497))

(assert (=> b!4706184 m!5627457))

(assert (=> b!4705749 d!1497799))

(declare-fun d!1497801 () Bool)

(declare-fun e!2935641 () Bool)

(assert (=> d!1497801 e!2935641))

(declare-fun res!1987888 () Bool)

(assert (=> d!1497801 (=> (not res!1987888) (not e!2935641))))

(declare-fun lt!1870945 () ListMap!5081)

(assert (=> d!1497801 (= res!1987888 (contains!15888 lt!1870945 (_1!30319 (h!58874 oldBucket!34))))))

(declare-fun lt!1870943 () List!52703)

(assert (=> d!1497801 (= lt!1870945 (ListMap!5082 lt!1870943))))

(declare-fun lt!1870944 () Unit!127112)

(declare-fun lt!1870946 () Unit!127112)

(assert (=> d!1497801 (= lt!1870944 lt!1870946)))

(assert (=> d!1497801 (= (getValueByKey!1880 lt!1870943 (_1!30319 (h!58874 oldBucket!34))) (Some!12239 (_2!30319 (h!58874 oldBucket!34))))))

(assert (=> d!1497801 (= lt!1870946 (lemmaContainsTupThenGetReturnValue!1050 lt!1870943 (_1!30319 (h!58874 oldBucket!34)) (_2!30319 (h!58874 oldBucket!34))))))

(assert (=> d!1497801 (= lt!1870943 (insertNoDuplicatedKeys!558 (toList!5718 lt!1870371) (_1!30319 (h!58874 oldBucket!34)) (_2!30319 (h!58874 oldBucket!34))))))

(assert (=> d!1497801 (= (+!2198 lt!1870371 (h!58874 oldBucket!34)) lt!1870945)))

(declare-fun b!4706186 () Bool)

(declare-fun res!1987887 () Bool)

(assert (=> b!4706186 (=> (not res!1987887) (not e!2935641))))

(assert (=> b!4706186 (= res!1987887 (= (getValueByKey!1880 (toList!5718 lt!1870945) (_1!30319 (h!58874 oldBucket!34))) (Some!12239 (_2!30319 (h!58874 oldBucket!34)))))))

(declare-fun b!4706187 () Bool)

(assert (=> b!4706187 (= e!2935641 (contains!15894 (toList!5718 lt!1870945) (h!58874 oldBucket!34)))))

(assert (= (and d!1497801 res!1987888) b!4706186))

(assert (= (and b!4706186 res!1987887) b!4706187))

(declare-fun m!5628583 () Bool)

(assert (=> d!1497801 m!5628583))

(declare-fun m!5628585 () Bool)

(assert (=> d!1497801 m!5628585))

(declare-fun m!5628587 () Bool)

(assert (=> d!1497801 m!5628587))

(declare-fun m!5628589 () Bool)

(assert (=> d!1497801 m!5628589))

(declare-fun m!5628591 () Bool)

(assert (=> b!4706186 m!5628591))

(declare-fun m!5628593 () Bool)

(assert (=> b!4706187 m!5628593))

(assert (=> b!4705732 d!1497801))

(declare-fun d!1497803 () Bool)

(declare-fun e!2935642 () Bool)

(assert (=> d!1497803 e!2935642))

(declare-fun res!1987889 () Bool)

(assert (=> d!1497803 (=> (not res!1987889) (not e!2935642))))

(declare-fun lt!1870947 () ListMap!5081)

(assert (=> d!1497803 (= res!1987889 (not (contains!15888 lt!1870947 key!4653)))))

(assert (=> d!1497803 (= lt!1870947 (ListMap!5082 (removePresrvNoDuplicatedKeys!381 (toList!5718 lt!1870369) key!4653)))))

(assert (=> d!1497803 (= (-!718 lt!1870369 key!4653) lt!1870947)))

(declare-fun b!4706188 () Bool)

(assert (=> b!4706188 (= e!2935642 (= ((_ map and) (content!9312 (keys!18822 lt!1870369)) ((_ map not) (store ((as const (Array K!13935 Bool)) false) key!4653 true))) (content!9312 (keys!18822 lt!1870947))))))

(assert (= (and d!1497803 res!1987889) b!4706188))

(declare-fun m!5628595 () Bool)

(assert (=> d!1497803 m!5628595))

(declare-fun m!5628597 () Bool)

(assert (=> d!1497803 m!5628597))

(assert (=> b!4706188 m!5628503))

(declare-fun m!5628599 () Bool)

(assert (=> b!4706188 m!5628599))

(declare-fun m!5628601 () Bool)

(assert (=> b!4706188 m!5628601))

(declare-fun m!5628603 () Bool)

(assert (=> b!4706188 m!5628603))

(assert (=> b!4706188 m!5628599))

(assert (=> b!4706188 m!5628603))

(declare-fun m!5628605 () Bool)

(assert (=> b!4706188 m!5628605))

(assert (=> b!4705732 d!1497803))

(declare-fun d!1497805 () Bool)

(declare-fun e!2935643 () Bool)

(assert (=> d!1497805 e!2935643))

(declare-fun res!1987890 () Bool)

(assert (=> d!1497805 (=> (not res!1987890) (not e!2935643))))

(declare-fun lt!1870948 () ListMap!5081)

(assert (=> d!1497805 (= res!1987890 (not (contains!15888 lt!1870948 key!4653)))))

(assert (=> d!1497805 (= lt!1870948 (ListMap!5082 (removePresrvNoDuplicatedKeys!381 (toList!5718 (+!2198 lt!1870351 (h!58874 oldBucket!34))) key!4653)))))

(assert (=> d!1497805 (= (-!718 (+!2198 lt!1870351 (h!58874 oldBucket!34)) key!4653) lt!1870948)))

(declare-fun b!4706189 () Bool)

(assert (=> b!4706189 (= e!2935643 (= ((_ map and) (content!9312 (keys!18822 (+!2198 lt!1870351 (h!58874 oldBucket!34)))) ((_ map not) (store ((as const (Array K!13935 Bool)) false) key!4653 true))) (content!9312 (keys!18822 lt!1870948))))))

(assert (= (and d!1497805 res!1987890) b!4706189))

(declare-fun m!5628607 () Bool)

(assert (=> d!1497805 m!5628607))

(declare-fun m!5628609 () Bool)

(assert (=> d!1497805 m!5628609))

(assert (=> b!4706189 m!5628503))

(declare-fun m!5628611 () Bool)

(assert (=> b!4706189 m!5628611))

(declare-fun m!5628613 () Bool)

(assert (=> b!4706189 m!5628613))

(declare-fun m!5628615 () Bool)

(assert (=> b!4706189 m!5628615))

(assert (=> b!4706189 m!5627463))

(assert (=> b!4706189 m!5628611))

(assert (=> b!4706189 m!5628615))

(declare-fun m!5628617 () Bool)

(assert (=> b!4706189 m!5628617))

(assert (=> b!4705732 d!1497805))

(declare-fun d!1497807 () Bool)

(declare-fun e!2935644 () Bool)

(assert (=> d!1497807 e!2935644))

(declare-fun res!1987892 () Bool)

(assert (=> d!1497807 (=> (not res!1987892) (not e!2935644))))

(declare-fun lt!1870951 () ListMap!5081)

(assert (=> d!1497807 (= res!1987892 (contains!15888 lt!1870951 (_1!30319 (h!58874 oldBucket!34))))))

(declare-fun lt!1870949 () List!52703)

(assert (=> d!1497807 (= lt!1870951 (ListMap!5082 lt!1870949))))

(declare-fun lt!1870950 () Unit!127112)

(declare-fun lt!1870952 () Unit!127112)

(assert (=> d!1497807 (= lt!1870950 lt!1870952)))

(assert (=> d!1497807 (= (getValueByKey!1880 lt!1870949 (_1!30319 (h!58874 oldBucket!34))) (Some!12239 (_2!30319 (h!58874 oldBucket!34))))))

(assert (=> d!1497807 (= lt!1870952 (lemmaContainsTupThenGetReturnValue!1050 lt!1870949 (_1!30319 (h!58874 oldBucket!34)) (_2!30319 (h!58874 oldBucket!34))))))

(assert (=> d!1497807 (= lt!1870949 (insertNoDuplicatedKeys!558 (toList!5718 lt!1870351) (_1!30319 (h!58874 oldBucket!34)) (_2!30319 (h!58874 oldBucket!34))))))

(assert (=> d!1497807 (= (+!2198 lt!1870351 (h!58874 oldBucket!34)) lt!1870951)))

(declare-fun b!4706190 () Bool)

(declare-fun res!1987891 () Bool)

(assert (=> b!4706190 (=> (not res!1987891) (not e!2935644))))

(assert (=> b!4706190 (= res!1987891 (= (getValueByKey!1880 (toList!5718 lt!1870951) (_1!30319 (h!58874 oldBucket!34))) (Some!12239 (_2!30319 (h!58874 oldBucket!34)))))))

(declare-fun b!4706191 () Bool)

(assert (=> b!4706191 (= e!2935644 (contains!15894 (toList!5718 lt!1870951) (h!58874 oldBucket!34)))))

(assert (= (and d!1497807 res!1987892) b!4706190))

(assert (= (and b!4706190 res!1987891) b!4706191))

(declare-fun m!5628619 () Bool)

(assert (=> d!1497807 m!5628619))

(declare-fun m!5628621 () Bool)

(assert (=> d!1497807 m!5628621))

(declare-fun m!5628623 () Bool)

(assert (=> d!1497807 m!5628623))

(declare-fun m!5628625 () Bool)

(assert (=> d!1497807 m!5628625))

(declare-fun m!5628627 () Bool)

(assert (=> b!4706190 m!5628627))

(declare-fun m!5628629 () Bool)

(assert (=> b!4706191 m!5628629))

(assert (=> b!4705732 d!1497807))

(declare-fun d!1497809 () Bool)

(assert (=> d!1497809 (= (-!718 (+!2198 lt!1870351 (tuple2!54051 (_1!30319 (h!58874 oldBucket!34)) (_2!30319 (h!58874 oldBucket!34)))) key!4653) (+!2198 (-!718 lt!1870351 key!4653) (tuple2!54051 (_1!30319 (h!58874 oldBucket!34)) (_2!30319 (h!58874 oldBucket!34)))))))

(declare-fun lt!1870955 () Unit!127112)

(declare-fun choose!33062 (ListMap!5081 K!13935 V!14181 K!13935) Unit!127112)

(assert (=> d!1497809 (= lt!1870955 (choose!33062 lt!1870351 (_1!30319 (h!58874 oldBucket!34)) (_2!30319 (h!58874 oldBucket!34)) key!4653))))

(assert (=> d!1497809 (not (= (_1!30319 (h!58874 oldBucket!34)) key!4653))))

(assert (=> d!1497809 (= (addRemoveCommutativeForDiffKeys!119 lt!1870351 (_1!30319 (h!58874 oldBucket!34)) (_2!30319 (h!58874 oldBucket!34)) key!4653) lt!1870955)))

(declare-fun bs!1099459 () Bool)

(assert (= bs!1099459 d!1497809))

(assert (=> bs!1099459 m!5627357))

(declare-fun m!5628631 () Bool)

(assert (=> bs!1099459 m!5628631))

(declare-fun m!5628633 () Bool)

(assert (=> bs!1099459 m!5628633))

(assert (=> bs!1099459 m!5627357))

(assert (=> bs!1099459 m!5628633))

(declare-fun m!5628635 () Bool)

(assert (=> bs!1099459 m!5628635))

(declare-fun m!5628637 () Bool)

(assert (=> bs!1099459 m!5628637))

(assert (=> b!4705732 d!1497809))

(declare-fun d!1497811 () Bool)

(declare-fun res!1987893 () Bool)

(declare-fun e!2935645 () Bool)

(assert (=> d!1497811 (=> res!1987893 e!2935645)))

(assert (=> d!1497811 (= res!1987893 (not ((_ is Cons!52579) oldBucket!34)))))

(assert (=> d!1497811 (= (noDuplicateKeys!1914 oldBucket!34) e!2935645)))

(declare-fun b!4706192 () Bool)

(declare-fun e!2935646 () Bool)

(assert (=> b!4706192 (= e!2935645 e!2935646)))

(declare-fun res!1987894 () Bool)

(assert (=> b!4706192 (=> (not res!1987894) (not e!2935646))))

(assert (=> b!4706192 (= res!1987894 (not (containsKey!3213 (t!359929 oldBucket!34) (_1!30319 (h!58874 oldBucket!34)))))))

(declare-fun b!4706193 () Bool)

(assert (=> b!4706193 (= e!2935646 (noDuplicateKeys!1914 (t!359929 oldBucket!34)))))

(assert (= (and d!1497811 (not res!1987893)) b!4706192))

(assert (= (and b!4706192 res!1987894) b!4706193))

(declare-fun m!5628639 () Bool)

(assert (=> b!4706192 m!5628639))

(assert (=> b!4706193 m!5628577))

(assert (=> b!4705753 d!1497811))

(declare-fun bs!1099460 () Bool)

(declare-fun b!4706197 () Bool)

(assert (= bs!1099460 (and b!4706197 b!4706005)))

(declare-fun lambda!211666 () Int)

(assert (=> bs!1099460 (= lambda!211666 lambda!211620)))

(declare-fun bs!1099461 () Bool)

(assert (= bs!1099461 (and b!4706197 b!4705907)))

(assert (=> bs!1099461 (= lambda!211666 lambda!211598)))

(declare-fun bs!1099462 () Bool)

(assert (= bs!1099462 (and b!4706197 d!1497591)))

(assert (=> bs!1099462 (= (= lt!1870342 lt!1870626) (= lambda!211666 lambda!211601))))

(declare-fun bs!1099463 () Bool)

(assert (= bs!1099463 (and b!4706197 b!4706006)))

(assert (=> bs!1099463 (= (= lt!1870342 lt!1870770) (= lambda!211666 lambda!211622))))

(declare-fun bs!1099464 () Bool)

(assert (= bs!1099464 (and b!4706197 b!4705996)))

(assert (=> bs!1099464 (= (= lt!1870342 lt!1870728) (= lambda!211666 lambda!211615))))

(declare-fun bs!1099465 () Bool)

(assert (= bs!1099465 (and b!4706197 d!1497539)))

(assert (=> bs!1099465 (= (= lt!1870342 lt!1870559) (= lambda!211666 lambda!211587))))

(declare-fun bs!1099466 () Bool)

(assert (= bs!1099466 (and b!4706197 d!1497619)))

(assert (=> bs!1099466 (= (= lt!1870342 lt!1870788) (= lambda!211666 lambda!211623))))

(declare-fun bs!1099467 () Bool)

(assert (= bs!1099467 (and b!4706197 b!4705908)))

(assert (=> bs!1099467 (= lambda!211666 lambda!211599)))

(assert (=> bs!1099467 (= (= lt!1870342 lt!1870608) (= lambda!211666 lambda!211600))))

(declare-fun bs!1099468 () Bool)

(assert (= bs!1099468 (and b!4706197 b!4705883)))

(assert (=> bs!1099468 (= lambda!211666 lambda!211584)))

(declare-fun bs!1099469 () Bool)

(assert (= bs!1099469 (and b!4706197 d!1497795)))

(assert (=> bs!1099469 (not (= lambda!211666 lambda!211665))))

(assert (=> bs!1099463 (= lambda!211666 lambda!211621)))

(declare-fun bs!1099470 () Bool)

(assert (= bs!1099470 (and b!4706197 d!1497793)))

(assert (=> bs!1099470 (not (= lambda!211666 lambda!211664))))

(declare-fun bs!1099471 () Bool)

(assert (= bs!1099471 (and b!4706197 d!1497615)))

(assert (=> bs!1099471 (= (= lt!1870342 lt!1870746) (= lambda!211666 lambda!211618))))

(declare-fun bs!1099472 () Bool)

(assert (= bs!1099472 (and b!4706197 b!4705882)))

(assert (=> bs!1099472 (= lambda!211666 lambda!211583)))

(declare-fun bs!1099473 () Bool)

(assert (= bs!1099473 (and b!4706197 b!4705995)))

(assert (=> bs!1099473 (= lambda!211666 lambda!211612)))

(assert (=> bs!1099464 (= lambda!211666 lambda!211614)))

(assert (=> bs!1099468 (= (= lt!1870342 lt!1870541) (= lambda!211666 lambda!211585))))

(assert (=> b!4706197 true))

(declare-fun bs!1099474 () Bool)

(declare-fun b!4706198 () Bool)

(assert (= bs!1099474 (and b!4706198 b!4706005)))

(declare-fun lambda!211667 () Int)

(assert (=> bs!1099474 (= lambda!211667 lambda!211620)))

(declare-fun bs!1099475 () Bool)

(assert (= bs!1099475 (and b!4706198 b!4705907)))

(assert (=> bs!1099475 (= lambda!211667 lambda!211598)))

(declare-fun bs!1099476 () Bool)

(assert (= bs!1099476 (and b!4706198 d!1497591)))

(assert (=> bs!1099476 (= (= lt!1870342 lt!1870626) (= lambda!211667 lambda!211601))))

(declare-fun bs!1099477 () Bool)

(assert (= bs!1099477 (and b!4706198 b!4706006)))

(assert (=> bs!1099477 (= (= lt!1870342 lt!1870770) (= lambda!211667 lambda!211622))))

(declare-fun bs!1099478 () Bool)

(assert (= bs!1099478 (and b!4706198 b!4705996)))

(assert (=> bs!1099478 (= (= lt!1870342 lt!1870728) (= lambda!211667 lambda!211615))))

(declare-fun bs!1099479 () Bool)

(assert (= bs!1099479 (and b!4706198 d!1497539)))

(assert (=> bs!1099479 (= (= lt!1870342 lt!1870559) (= lambda!211667 lambda!211587))))

(declare-fun bs!1099480 () Bool)

(assert (= bs!1099480 (and b!4706198 d!1497619)))

(assert (=> bs!1099480 (= (= lt!1870342 lt!1870788) (= lambda!211667 lambda!211623))))

(declare-fun bs!1099481 () Bool)

(assert (= bs!1099481 (and b!4706198 b!4705908)))

(assert (=> bs!1099481 (= lambda!211667 lambda!211599)))

(assert (=> bs!1099481 (= (= lt!1870342 lt!1870608) (= lambda!211667 lambda!211600))))

(declare-fun bs!1099482 () Bool)

(assert (= bs!1099482 (and b!4706198 b!4705883)))

(assert (=> bs!1099482 (= lambda!211667 lambda!211584)))

(declare-fun bs!1099483 () Bool)

(assert (= bs!1099483 (and b!4706198 d!1497795)))

(assert (=> bs!1099483 (not (= lambda!211667 lambda!211665))))

(assert (=> bs!1099477 (= lambda!211667 lambda!211621)))

(declare-fun bs!1099484 () Bool)

(assert (= bs!1099484 (and b!4706198 d!1497793)))

(assert (=> bs!1099484 (not (= lambda!211667 lambda!211664))))

(declare-fun bs!1099485 () Bool)

(assert (= bs!1099485 (and b!4706198 b!4706197)))

(assert (=> bs!1099485 (= lambda!211667 lambda!211666)))

(declare-fun bs!1099486 () Bool)

(assert (= bs!1099486 (and b!4706198 d!1497615)))

(assert (=> bs!1099486 (= (= lt!1870342 lt!1870746) (= lambda!211667 lambda!211618))))

(declare-fun bs!1099487 () Bool)

(assert (= bs!1099487 (and b!4706198 b!4705882)))

(assert (=> bs!1099487 (= lambda!211667 lambda!211583)))

(declare-fun bs!1099488 () Bool)

(assert (= bs!1099488 (and b!4706198 b!4705995)))

(assert (=> bs!1099488 (= lambda!211667 lambda!211612)))

(assert (=> bs!1099478 (= lambda!211667 lambda!211614)))

(assert (=> bs!1099482 (= (= lt!1870342 lt!1870541) (= lambda!211667 lambda!211585))))

(assert (=> b!4706198 true))

(declare-fun lt!1870957 () ListMap!5081)

(declare-fun lambda!211668 () Int)

(assert (=> bs!1099474 (= (= lt!1870957 lt!1870342) (= lambda!211668 lambda!211620))))

(assert (=> bs!1099475 (= (= lt!1870957 lt!1870342) (= lambda!211668 lambda!211598))))

(assert (=> bs!1099476 (= (= lt!1870957 lt!1870626) (= lambda!211668 lambda!211601))))

(assert (=> bs!1099477 (= (= lt!1870957 lt!1870770) (= lambda!211668 lambda!211622))))

(assert (=> bs!1099478 (= (= lt!1870957 lt!1870728) (= lambda!211668 lambda!211615))))

(assert (=> bs!1099479 (= (= lt!1870957 lt!1870559) (= lambda!211668 lambda!211587))))

(assert (=> bs!1099480 (= (= lt!1870957 lt!1870788) (= lambda!211668 lambda!211623))))

(assert (=> bs!1099481 (= (= lt!1870957 lt!1870342) (= lambda!211668 lambda!211599))))

(assert (=> bs!1099481 (= (= lt!1870957 lt!1870608) (= lambda!211668 lambda!211600))))

(assert (=> bs!1099482 (= (= lt!1870957 lt!1870342) (= lambda!211668 lambda!211584))))

(assert (=> bs!1099483 (not (= lambda!211668 lambda!211665))))

(assert (=> bs!1099477 (= (= lt!1870957 lt!1870342) (= lambda!211668 lambda!211621))))

(assert (=> bs!1099485 (= (= lt!1870957 lt!1870342) (= lambda!211668 lambda!211666))))

(assert (=> bs!1099486 (= (= lt!1870957 lt!1870746) (= lambda!211668 lambda!211618))))

(assert (=> bs!1099487 (= (= lt!1870957 lt!1870342) (= lambda!211668 lambda!211583))))

(assert (=> bs!1099488 (= (= lt!1870957 lt!1870342) (= lambda!211668 lambda!211612))))

(assert (=> bs!1099478 (= (= lt!1870957 lt!1870342) (= lambda!211668 lambda!211614))))

(assert (=> bs!1099482 (= (= lt!1870957 lt!1870541) (= lambda!211668 lambda!211585))))

(assert (=> b!4706198 (= (= lt!1870957 lt!1870342) (= lambda!211668 lambda!211667))))

(assert (=> bs!1099484 (not (= lambda!211668 lambda!211664))))

(assert (=> b!4706198 true))

(declare-fun bs!1099489 () Bool)

(declare-fun d!1497813 () Bool)

(assert (= bs!1099489 (and d!1497813 b!4706005)))

(declare-fun lambda!211669 () Int)

(declare-fun lt!1870975 () ListMap!5081)

(assert (=> bs!1099489 (= (= lt!1870975 lt!1870342) (= lambda!211669 lambda!211620))))

(declare-fun bs!1099490 () Bool)

(assert (= bs!1099490 (and d!1497813 b!4705907)))

(assert (=> bs!1099490 (= (= lt!1870975 lt!1870342) (= lambda!211669 lambda!211598))))

(declare-fun bs!1099491 () Bool)

(assert (= bs!1099491 (and d!1497813 d!1497591)))

(assert (=> bs!1099491 (= (= lt!1870975 lt!1870626) (= lambda!211669 lambda!211601))))

(declare-fun bs!1099492 () Bool)

(assert (= bs!1099492 (and d!1497813 b!4706006)))

(assert (=> bs!1099492 (= (= lt!1870975 lt!1870770) (= lambda!211669 lambda!211622))))

(declare-fun bs!1099493 () Bool)

(assert (= bs!1099493 (and d!1497813 b!4705996)))

(assert (=> bs!1099493 (= (= lt!1870975 lt!1870728) (= lambda!211669 lambda!211615))))

(declare-fun bs!1099494 () Bool)

(assert (= bs!1099494 (and d!1497813 d!1497539)))

(assert (=> bs!1099494 (= (= lt!1870975 lt!1870559) (= lambda!211669 lambda!211587))))

(declare-fun bs!1099495 () Bool)

(assert (= bs!1099495 (and d!1497813 d!1497619)))

(assert (=> bs!1099495 (= (= lt!1870975 lt!1870788) (= lambda!211669 lambda!211623))))

(declare-fun bs!1099496 () Bool)

(assert (= bs!1099496 (and d!1497813 b!4706198)))

(assert (=> bs!1099496 (= (= lt!1870975 lt!1870957) (= lambda!211669 lambda!211668))))

(declare-fun bs!1099497 () Bool)

(assert (= bs!1099497 (and d!1497813 b!4705908)))

(assert (=> bs!1099497 (= (= lt!1870975 lt!1870342) (= lambda!211669 lambda!211599))))

(assert (=> bs!1099497 (= (= lt!1870975 lt!1870608) (= lambda!211669 lambda!211600))))

(declare-fun bs!1099498 () Bool)

(assert (= bs!1099498 (and d!1497813 b!4705883)))

(assert (=> bs!1099498 (= (= lt!1870975 lt!1870342) (= lambda!211669 lambda!211584))))

(declare-fun bs!1099499 () Bool)

(assert (= bs!1099499 (and d!1497813 d!1497795)))

(assert (=> bs!1099499 (not (= lambda!211669 lambda!211665))))

(assert (=> bs!1099492 (= (= lt!1870975 lt!1870342) (= lambda!211669 lambda!211621))))

(declare-fun bs!1099500 () Bool)

(assert (= bs!1099500 (and d!1497813 b!4706197)))

(assert (=> bs!1099500 (= (= lt!1870975 lt!1870342) (= lambda!211669 lambda!211666))))

(declare-fun bs!1099501 () Bool)

(assert (= bs!1099501 (and d!1497813 d!1497615)))

(assert (=> bs!1099501 (= (= lt!1870975 lt!1870746) (= lambda!211669 lambda!211618))))

(declare-fun bs!1099502 () Bool)

(assert (= bs!1099502 (and d!1497813 b!4705882)))

(assert (=> bs!1099502 (= (= lt!1870975 lt!1870342) (= lambda!211669 lambda!211583))))

(declare-fun bs!1099503 () Bool)

(assert (= bs!1099503 (and d!1497813 b!4705995)))

(assert (=> bs!1099503 (= (= lt!1870975 lt!1870342) (= lambda!211669 lambda!211612))))

(assert (=> bs!1099493 (= (= lt!1870975 lt!1870342) (= lambda!211669 lambda!211614))))

(assert (=> bs!1099498 (= (= lt!1870975 lt!1870541) (= lambda!211669 lambda!211585))))

(assert (=> bs!1099496 (= (= lt!1870975 lt!1870342) (= lambda!211669 lambda!211667))))

(declare-fun bs!1099504 () Bool)

(assert (= bs!1099504 (and d!1497813 d!1497793)))

(assert (=> bs!1099504 (not (= lambda!211669 lambda!211664))))

(assert (=> d!1497813 true))

(declare-fun b!4706194 () Bool)

(declare-fun e!2935648 () Bool)

(assert (=> b!4706194 (= e!2935648 (forall!11433 (toList!5718 lt!1870342) lambda!211668))))

(declare-fun bm!329049 () Bool)

(declare-fun call!329054 () Unit!127112)

(assert (=> bm!329049 (= call!329054 (lemmaContainsAllItsOwnKeys!748 lt!1870342))))

(declare-fun b!4706195 () Bool)

(declare-fun e!2935649 () Bool)

(assert (=> b!4706195 (= e!2935649 (invariantList!1460 (toList!5718 lt!1870975)))))

(assert (=> d!1497813 e!2935649))

(declare-fun res!1987897 () Bool)

(assert (=> d!1497813 (=> (not res!1987897) (not e!2935649))))

(assert (=> d!1497813 (= res!1987897 (forall!11433 (_2!30320 (h!58875 (toList!5717 lm!2023))) lambda!211669))))

(declare-fun e!2935647 () ListMap!5081)

(assert (=> d!1497813 (= lt!1870975 e!2935647)))

(declare-fun c!804344 () Bool)

(assert (=> d!1497813 (= c!804344 ((_ is Nil!52579) (_2!30320 (h!58875 (toList!5717 lm!2023)))))))

(assert (=> d!1497813 (noDuplicateKeys!1914 (_2!30320 (h!58875 (toList!5717 lm!2023))))))

(assert (=> d!1497813 (= (addToMapMapFromBucket!1346 (_2!30320 (h!58875 (toList!5717 lm!2023))) lt!1870342) lt!1870975)))

(declare-fun b!4706196 () Bool)

(declare-fun res!1987896 () Bool)

(assert (=> b!4706196 (=> (not res!1987896) (not e!2935649))))

(assert (=> b!4706196 (= res!1987896 (forall!11433 (toList!5718 lt!1870342) lambda!211669))))

(assert (=> b!4706197 (= e!2935647 lt!1870342)))

(declare-fun lt!1870963 () Unit!127112)

(assert (=> b!4706197 (= lt!1870963 call!329054)))

(declare-fun call!329056 () Bool)

(assert (=> b!4706197 call!329056))

(declare-fun lt!1870971 () Unit!127112)

(assert (=> b!4706197 (= lt!1870971 lt!1870963)))

(declare-fun call!329055 () Bool)

(assert (=> b!4706197 call!329055))

(declare-fun lt!1870970 () Unit!127112)

(declare-fun Unit!127221 () Unit!127112)

(assert (=> b!4706197 (= lt!1870970 Unit!127221)))

(declare-fun bm!329050 () Bool)

(assert (=> bm!329050 (= call!329055 (forall!11433 (toList!5718 lt!1870342) (ite c!804344 lambda!211666 lambda!211668)))))

(declare-fun bm!329051 () Bool)

(declare-fun lt!1870966 () ListMap!5081)

(assert (=> bm!329051 (= call!329056 (forall!11433 (ite c!804344 (toList!5718 lt!1870342) (toList!5718 lt!1870966)) (ite c!804344 lambda!211666 lambda!211668)))))

(assert (=> b!4706198 (= e!2935647 lt!1870957)))

(assert (=> b!4706198 (= lt!1870966 (+!2198 lt!1870342 (h!58874 (_2!30320 (h!58875 (toList!5717 lm!2023))))))))

(assert (=> b!4706198 (= lt!1870957 (addToMapMapFromBucket!1346 (t!359929 (_2!30320 (h!58875 (toList!5717 lm!2023)))) (+!2198 lt!1870342 (h!58874 (_2!30320 (h!58875 (toList!5717 lm!2023)))))))))

(declare-fun lt!1870968 () Unit!127112)

(assert (=> b!4706198 (= lt!1870968 call!329054)))

(assert (=> b!4706198 (forall!11433 (toList!5718 lt!1870342) lambda!211667)))

(declare-fun lt!1870959 () Unit!127112)

(assert (=> b!4706198 (= lt!1870959 lt!1870968)))

(assert (=> b!4706198 call!329056))

(declare-fun lt!1870956 () Unit!127112)

(declare-fun Unit!127222 () Unit!127112)

(assert (=> b!4706198 (= lt!1870956 Unit!127222)))

(assert (=> b!4706198 (forall!11433 (t!359929 (_2!30320 (h!58875 (toList!5717 lm!2023)))) lambda!211668)))

(declare-fun lt!1870958 () Unit!127112)

(declare-fun Unit!127223 () Unit!127112)

(assert (=> b!4706198 (= lt!1870958 Unit!127223)))

(declare-fun lt!1870965 () Unit!127112)

(declare-fun Unit!127224 () Unit!127112)

(assert (=> b!4706198 (= lt!1870965 Unit!127224)))

(declare-fun lt!1870962 () Unit!127112)

(assert (=> b!4706198 (= lt!1870962 (forallContained!3540 (toList!5718 lt!1870966) lambda!211668 (h!58874 (_2!30320 (h!58875 (toList!5717 lm!2023))))))))

(assert (=> b!4706198 (contains!15888 lt!1870966 (_1!30319 (h!58874 (_2!30320 (h!58875 (toList!5717 lm!2023))))))))

(declare-fun lt!1870967 () Unit!127112)

(declare-fun Unit!127225 () Unit!127112)

(assert (=> b!4706198 (= lt!1870967 Unit!127225)))

(assert (=> b!4706198 (contains!15888 lt!1870957 (_1!30319 (h!58874 (_2!30320 (h!58875 (toList!5717 lm!2023))))))))

(declare-fun lt!1870972 () Unit!127112)

(declare-fun Unit!127226 () Unit!127112)

(assert (=> b!4706198 (= lt!1870972 Unit!127226)))

(assert (=> b!4706198 (forall!11433 (_2!30320 (h!58875 (toList!5717 lm!2023))) lambda!211668)))

(declare-fun lt!1870961 () Unit!127112)

(declare-fun Unit!127227 () Unit!127112)

(assert (=> b!4706198 (= lt!1870961 Unit!127227)))

(assert (=> b!4706198 (forall!11433 (toList!5718 lt!1870966) lambda!211668)))

(declare-fun lt!1870976 () Unit!127112)

(declare-fun Unit!127228 () Unit!127112)

(assert (=> b!4706198 (= lt!1870976 Unit!127228)))

(declare-fun lt!1870964 () Unit!127112)

(declare-fun Unit!127229 () Unit!127112)

(assert (=> b!4706198 (= lt!1870964 Unit!127229)))

(declare-fun lt!1870960 () Unit!127112)

(assert (=> b!4706198 (= lt!1870960 (addForallContainsKeyThenBeforeAdding!747 lt!1870342 lt!1870957 (_1!30319 (h!58874 (_2!30320 (h!58875 (toList!5717 lm!2023))))) (_2!30319 (h!58874 (_2!30320 (h!58875 (toList!5717 lm!2023)))))))))

(assert (=> b!4706198 (forall!11433 (toList!5718 lt!1870342) lambda!211668)))

(declare-fun lt!1870973 () Unit!127112)

(assert (=> b!4706198 (= lt!1870973 lt!1870960)))

(assert (=> b!4706198 call!329055))

(declare-fun lt!1870969 () Unit!127112)

(declare-fun Unit!127230 () Unit!127112)

(assert (=> b!4706198 (= lt!1870969 Unit!127230)))

(declare-fun res!1987895 () Bool)

(assert (=> b!4706198 (= res!1987895 (forall!11433 (_2!30320 (h!58875 (toList!5717 lm!2023))) lambda!211668))))

(assert (=> b!4706198 (=> (not res!1987895) (not e!2935648))))

(assert (=> b!4706198 e!2935648))

(declare-fun lt!1870974 () Unit!127112)

(declare-fun Unit!127231 () Unit!127112)

(assert (=> b!4706198 (= lt!1870974 Unit!127231)))

(assert (= (and d!1497813 c!804344) b!4706197))

(assert (= (and d!1497813 (not c!804344)) b!4706198))

(assert (= (and b!4706198 res!1987895) b!4706194))

(assert (= (or b!4706197 b!4706198) bm!329049))

(assert (= (or b!4706197 b!4706198) bm!329050))

(assert (= (or b!4706197 b!4706198) bm!329051))

(assert (= (and d!1497813 res!1987897) b!4706196))

(assert (= (and b!4706196 res!1987896) b!4706195))

(assert (=> bm!329049 m!5627659))

(declare-fun m!5628641 () Bool)

(assert (=> bm!329050 m!5628641))

(declare-fun m!5628643 () Bool)

(assert (=> b!4706195 m!5628643))

(declare-fun m!5628645 () Bool)

(assert (=> b!4706196 m!5628645))

(declare-fun m!5628647 () Bool)

(assert (=> b!4706194 m!5628647))

(declare-fun m!5628649 () Bool)

(assert (=> d!1497813 m!5628649))

(declare-fun m!5628651 () Bool)

(assert (=> d!1497813 m!5628651))

(declare-fun m!5628653 () Bool)

(assert (=> bm!329051 m!5628653))

(declare-fun m!5628655 () Bool)

(assert (=> b!4706198 m!5628655))

(declare-fun m!5628657 () Bool)

(assert (=> b!4706198 m!5628657))

(declare-fun m!5628659 () Bool)

(assert (=> b!4706198 m!5628659))

(declare-fun m!5628661 () Bool)

(assert (=> b!4706198 m!5628661))

(assert (=> b!4706198 m!5628659))

(assert (=> b!4706198 m!5628647))

(declare-fun m!5628663 () Bool)

(assert (=> b!4706198 m!5628663))

(declare-fun m!5628665 () Bool)

(assert (=> b!4706198 m!5628665))

(declare-fun m!5628667 () Bool)

(assert (=> b!4706198 m!5628667))

(declare-fun m!5628669 () Bool)

(assert (=> b!4706198 m!5628669))

(assert (=> b!4706198 m!5628655))

(declare-fun m!5628671 () Bool)

(assert (=> b!4706198 m!5628671))

(declare-fun m!5628673 () Bool)

(assert (=> b!4706198 m!5628673))

(assert (=> b!4705752 d!1497813))

(declare-fun bs!1099505 () Bool)

(declare-fun d!1497815 () Bool)

(assert (= bs!1099505 (and d!1497815 start!477844)))

(declare-fun lambda!211670 () Int)

(assert (=> bs!1099505 (= lambda!211670 lambda!211507)))

(declare-fun bs!1099506 () Bool)

(assert (= bs!1099506 (and d!1497815 d!1497763)))

(assert (=> bs!1099506 (= lambda!211670 lambda!211656)))

(declare-fun bs!1099507 () Bool)

(assert (= bs!1099507 (and d!1497815 d!1497635)))

(assert (=> bs!1099507 (= lambda!211670 lambda!211628)))

(declare-fun bs!1099508 () Bool)

(assert (= bs!1099508 (and d!1497815 d!1497697)))

(assert (=> bs!1099508 (= lambda!211670 lambda!211654)))

(declare-fun bs!1099509 () Bool)

(assert (= bs!1099509 (and d!1497815 d!1497593)))

(assert (=> bs!1099509 (= lambda!211670 lambda!211604)))

(declare-fun bs!1099510 () Bool)

(assert (= bs!1099510 (and d!1497815 d!1497789)))

(assert (=> bs!1099510 (= lambda!211670 lambda!211661)))

(declare-fun bs!1099511 () Bool)

(assert (= bs!1099511 (and d!1497815 d!1497679)))

(assert (=> bs!1099511 (= lambda!211670 lambda!211642)))

(declare-fun bs!1099512 () Bool)

(assert (= bs!1099512 (and d!1497815 d!1497579)))

(assert (=> bs!1099512 (= lambda!211670 lambda!211597)))

(declare-fun bs!1099513 () Bool)

(assert (= bs!1099513 (and d!1497815 d!1497769)))

(assert (=> bs!1099513 (= lambda!211670 lambda!211659)))

(declare-fun bs!1099514 () Bool)

(assert (= bs!1099514 (and d!1497815 d!1497533)))

(assert (=> bs!1099514 (not (= lambda!211670 lambda!211516))))

(declare-fun bs!1099515 () Bool)

(assert (= bs!1099515 (and d!1497815 d!1497633)))

(assert (=> bs!1099515 (= lambda!211670 lambda!211624)))

(declare-fun bs!1099516 () Bool)

(assert (= bs!1099516 (and d!1497815 d!1497775)))

(assert (=> bs!1099516 (= lambda!211670 lambda!211660)))

(declare-fun bs!1099517 () Bool)

(assert (= bs!1099517 (and d!1497815 d!1497761)))

(assert (=> bs!1099517 (= lambda!211670 lambda!211655)))

(declare-fun lt!1870977 () ListMap!5081)

(assert (=> d!1497815 (invariantList!1460 (toList!5718 lt!1870977))))

(declare-fun e!2935650 () ListMap!5081)

(assert (=> d!1497815 (= lt!1870977 e!2935650)))

(declare-fun c!804345 () Bool)

(assert (=> d!1497815 (= c!804345 ((_ is Cons!52580) (t!359930 (toList!5717 lm!2023))))))

(assert (=> d!1497815 (forall!11431 (t!359930 (toList!5717 lm!2023)) lambda!211670)))

(assert (=> d!1497815 (= (extractMap!1940 (t!359930 (toList!5717 lm!2023))) lt!1870977)))

(declare-fun b!4706199 () Bool)

(assert (=> b!4706199 (= e!2935650 (addToMapMapFromBucket!1346 (_2!30320 (h!58875 (t!359930 (toList!5717 lm!2023)))) (extractMap!1940 (t!359930 (t!359930 (toList!5717 lm!2023))))))))

(declare-fun b!4706200 () Bool)

(assert (=> b!4706200 (= e!2935650 (ListMap!5082 Nil!52579))))

(assert (= (and d!1497815 c!804345) b!4706199))

(assert (= (and d!1497815 (not c!804345)) b!4706200))

(declare-fun m!5628675 () Bool)

(assert (=> d!1497815 m!5628675))

(declare-fun m!5628677 () Bool)

(assert (=> d!1497815 m!5628677))

(declare-fun m!5628679 () Bool)

(assert (=> b!4706199 m!5628679))

(assert (=> b!4706199 m!5628679))

(declare-fun m!5628681 () Bool)

(assert (=> b!4706199 m!5628681))

(assert (=> b!4705752 d!1497815))

(declare-fun d!1497817 () Bool)

(assert (=> d!1497817 (= (tail!8769 lm!2023) (ListLongMap!4248 (tail!8768 (toList!5717 lm!2023))))))

(declare-fun bs!1099518 () Bool)

(assert (= bs!1099518 d!1497817))

(declare-fun m!5628683 () Bool)

(assert (=> bs!1099518 m!5628683))

(assert (=> b!4705752 d!1497817))

(declare-fun b!4706201 () Bool)

(declare-fun e!2935655 () Unit!127112)

(declare-fun Unit!127232 () Unit!127112)

(assert (=> b!4706201 (= e!2935655 Unit!127232)))

(declare-fun d!1497819 () Bool)

(declare-fun e!2935652 () Bool)

(assert (=> d!1497819 e!2935652))

(declare-fun res!1987898 () Bool)

(assert (=> d!1497819 (=> res!1987898 e!2935652)))

(declare-fun e!2935653 () Bool)

(assert (=> d!1497819 (= res!1987898 e!2935653)))

(declare-fun res!1987899 () Bool)

(assert (=> d!1497819 (=> (not res!1987899) (not e!2935653))))

(declare-fun lt!1870981 () Bool)

(assert (=> d!1497819 (= res!1987899 (not lt!1870981))))

(declare-fun lt!1870982 () Bool)

(assert (=> d!1497819 (= lt!1870981 lt!1870982)))

(declare-fun lt!1870984 () Unit!127112)

(declare-fun e!2935656 () Unit!127112)

(assert (=> d!1497819 (= lt!1870984 e!2935656)))

(declare-fun c!804348 () Bool)

(assert (=> d!1497819 (= c!804348 lt!1870982)))

(assert (=> d!1497819 (= lt!1870982 (containsKey!3215 (toList!5718 lt!1870335) key!4653))))

(assert (=> d!1497819 (= (contains!15888 lt!1870335 key!4653) lt!1870981)))

(declare-fun b!4706202 () Bool)

(assert (=> b!4706202 (= e!2935653 (not (contains!15892 (keys!18822 lt!1870335) key!4653)))))

(declare-fun b!4706203 () Bool)

(declare-fun e!2935654 () Bool)

(assert (=> b!4706203 (= e!2935654 (contains!15892 (keys!18822 lt!1870335) key!4653))))

(declare-fun b!4706204 () Bool)

(assert (=> b!4706204 false))

(declare-fun lt!1870980 () Unit!127112)

(declare-fun lt!1870983 () Unit!127112)

(assert (=> b!4706204 (= lt!1870980 lt!1870983)))

(assert (=> b!4706204 (containsKey!3215 (toList!5718 lt!1870335) key!4653)))

(assert (=> b!4706204 (= lt!1870983 (lemmaInGetKeysListThenContainsKey!898 (toList!5718 lt!1870335) key!4653))))

(declare-fun Unit!127233 () Unit!127112)

(assert (=> b!4706204 (= e!2935655 Unit!127233)))

(declare-fun b!4706205 () Bool)

(declare-fun e!2935651 () List!52705)

(assert (=> b!4706205 (= e!2935651 (getKeysList!900 (toList!5718 lt!1870335)))))

(declare-fun b!4706206 () Bool)

(declare-fun lt!1870979 () Unit!127112)

(assert (=> b!4706206 (= e!2935656 lt!1870979)))

(declare-fun lt!1870985 () Unit!127112)

(assert (=> b!4706206 (= lt!1870985 (lemmaContainsKeyImpliesGetValueByKeyDefined!1771 (toList!5718 lt!1870335) key!4653))))

(assert (=> b!4706206 (isDefined!9494 (getValueByKey!1880 (toList!5718 lt!1870335) key!4653))))

(declare-fun lt!1870978 () Unit!127112)

(assert (=> b!4706206 (= lt!1870978 lt!1870985)))

(assert (=> b!4706206 (= lt!1870979 (lemmaInListThenGetKeysListContains!894 (toList!5718 lt!1870335) key!4653))))

(declare-fun call!329057 () Bool)

(assert (=> b!4706206 call!329057))

(declare-fun b!4706207 () Bool)

(assert (=> b!4706207 (= e!2935651 (keys!18822 lt!1870335))))

(declare-fun b!4706208 () Bool)

(assert (=> b!4706208 (= e!2935652 e!2935654)))

(declare-fun res!1987900 () Bool)

(assert (=> b!4706208 (=> (not res!1987900) (not e!2935654))))

(assert (=> b!4706208 (= res!1987900 (isDefined!9494 (getValueByKey!1880 (toList!5718 lt!1870335) key!4653)))))

(declare-fun bm!329052 () Bool)

(assert (=> bm!329052 (= call!329057 (contains!15892 e!2935651 key!4653))))

(declare-fun c!804347 () Bool)

(assert (=> bm!329052 (= c!804347 c!804348)))

(declare-fun b!4706209 () Bool)

(assert (=> b!4706209 (= e!2935656 e!2935655)))

(declare-fun c!804346 () Bool)

(assert (=> b!4706209 (= c!804346 call!329057)))

(assert (= (and d!1497819 c!804348) b!4706206))

(assert (= (and d!1497819 (not c!804348)) b!4706209))

(assert (= (and b!4706209 c!804346) b!4706204))

(assert (= (and b!4706209 (not c!804346)) b!4706201))

(assert (= (or b!4706206 b!4706209) bm!329052))

(assert (= (and bm!329052 c!804347) b!4706205))

(assert (= (and bm!329052 (not c!804347)) b!4706207))

(assert (= (and d!1497819 res!1987899) b!4706202))

(assert (= (and d!1497819 (not res!1987898)) b!4706208))

(assert (= (and b!4706208 res!1987900) b!4706203))

(declare-fun m!5628685 () Bool)

(assert (=> b!4706202 m!5628685))

(assert (=> b!4706202 m!5628685))

(declare-fun m!5628687 () Bool)

(assert (=> b!4706202 m!5628687))

(declare-fun m!5628689 () Bool)

(assert (=> b!4706206 m!5628689))

(declare-fun m!5628691 () Bool)

(assert (=> b!4706206 m!5628691))

(assert (=> b!4706206 m!5628691))

(declare-fun m!5628693 () Bool)

(assert (=> b!4706206 m!5628693))

(declare-fun m!5628695 () Bool)

(assert (=> b!4706206 m!5628695))

(declare-fun m!5628697 () Bool)

(assert (=> b!4706204 m!5628697))

(declare-fun m!5628699 () Bool)

(assert (=> b!4706204 m!5628699))

(assert (=> d!1497819 m!5628697))

(declare-fun m!5628701 () Bool)

(assert (=> bm!329052 m!5628701))

(assert (=> b!4706208 m!5628691))

(assert (=> b!4706208 m!5628691))

(assert (=> b!4706208 m!5628693))

(assert (=> b!4706207 m!5628685))

(declare-fun m!5628703 () Bool)

(assert (=> b!4706205 m!5628703))

(assert (=> b!4706203 m!5628685))

(assert (=> b!4706203 m!5628685))

(assert (=> b!4706203 m!5628687))

(assert (=> b!4705731 d!1497819))

(declare-fun bs!1099519 () Bool)

(declare-fun d!1497821 () Bool)

(assert (= bs!1099519 (and d!1497821 start!477844)))

(declare-fun lambda!211671 () Int)

(assert (=> bs!1099519 (= lambda!211671 lambda!211507)))

(declare-fun bs!1099520 () Bool)

(assert (= bs!1099520 (and d!1497821 d!1497763)))

(assert (=> bs!1099520 (= lambda!211671 lambda!211656)))

(declare-fun bs!1099521 () Bool)

(assert (= bs!1099521 (and d!1497821 d!1497635)))

(assert (=> bs!1099521 (= lambda!211671 lambda!211628)))

(declare-fun bs!1099522 () Bool)

(assert (= bs!1099522 (and d!1497821 d!1497697)))

(assert (=> bs!1099522 (= lambda!211671 lambda!211654)))

(declare-fun bs!1099523 () Bool)

(assert (= bs!1099523 (and d!1497821 d!1497593)))

(assert (=> bs!1099523 (= lambda!211671 lambda!211604)))

(declare-fun bs!1099524 () Bool)

(assert (= bs!1099524 (and d!1497821 d!1497789)))

(assert (=> bs!1099524 (= lambda!211671 lambda!211661)))

(declare-fun bs!1099525 () Bool)

(assert (= bs!1099525 (and d!1497821 d!1497679)))

(assert (=> bs!1099525 (= lambda!211671 lambda!211642)))

(declare-fun bs!1099526 () Bool)

(assert (= bs!1099526 (and d!1497821 d!1497815)))

(assert (=> bs!1099526 (= lambda!211671 lambda!211670)))

(declare-fun bs!1099527 () Bool)

(assert (= bs!1099527 (and d!1497821 d!1497579)))

(assert (=> bs!1099527 (= lambda!211671 lambda!211597)))

(declare-fun bs!1099528 () Bool)

(assert (= bs!1099528 (and d!1497821 d!1497769)))

(assert (=> bs!1099528 (= lambda!211671 lambda!211659)))

(declare-fun bs!1099529 () Bool)

(assert (= bs!1099529 (and d!1497821 d!1497533)))

(assert (=> bs!1099529 (not (= lambda!211671 lambda!211516))))

(declare-fun bs!1099530 () Bool)

(assert (= bs!1099530 (and d!1497821 d!1497633)))

(assert (=> bs!1099530 (= lambda!211671 lambda!211624)))

(declare-fun bs!1099531 () Bool)

(assert (= bs!1099531 (and d!1497821 d!1497775)))

(assert (=> bs!1099531 (= lambda!211671 lambda!211660)))

(declare-fun bs!1099532 () Bool)

(assert (= bs!1099532 (and d!1497821 d!1497761)))

(assert (=> bs!1099532 (= lambda!211671 lambda!211655)))

(declare-fun lt!1870986 () ListMap!5081)

(assert (=> d!1497821 (invariantList!1460 (toList!5718 lt!1870986))))

(declare-fun e!2935657 () ListMap!5081)

(assert (=> d!1497821 (= lt!1870986 e!2935657)))

(declare-fun c!804349 () Bool)

(assert (=> d!1497821 (= c!804349 ((_ is Cons!52580) (toList!5717 lm!2023)))))

(assert (=> d!1497821 (forall!11431 (toList!5717 lm!2023) lambda!211671)))

(assert (=> d!1497821 (= (extractMap!1940 (toList!5717 lm!2023)) lt!1870986)))

(declare-fun b!4706210 () Bool)

(assert (=> b!4706210 (= e!2935657 (addToMapMapFromBucket!1346 (_2!30320 (h!58875 (toList!5717 lm!2023))) (extractMap!1940 (t!359930 (toList!5717 lm!2023)))))))

(declare-fun b!4706211 () Bool)

(assert (=> b!4706211 (= e!2935657 (ListMap!5082 Nil!52579))))

(assert (= (and d!1497821 c!804349) b!4706210))

(assert (= (and d!1497821 (not c!804349)) b!4706211))

(declare-fun m!5628705 () Bool)

(assert (=> d!1497821 m!5628705))

(declare-fun m!5628707 () Bool)

(assert (=> d!1497821 m!5628707))

(assert (=> b!4706210 m!5627449))

(assert (=> b!4706210 m!5627449))

(declare-fun m!5628709 () Bool)

(assert (=> b!4706210 m!5628709))

(assert (=> b!4705731 d!1497821))

(declare-fun d!1497823 () Bool)

(assert (=> d!1497823 (= (eq!1073 lt!1870352 lt!1870359) (= (content!9309 (toList!5718 lt!1870352)) (content!9309 (toList!5718 lt!1870359))))))

(declare-fun bs!1099533 () Bool)

(assert (= bs!1099533 d!1497823))

(assert (=> bs!1099533 m!5628455))

(declare-fun m!5628711 () Bool)

(assert (=> bs!1099533 m!5628711))

(assert (=> b!4705730 d!1497823))

(declare-fun d!1497825 () Bool)

(assert (=> d!1497825 (= (eq!1073 lt!1870337 lt!1870359) (= (content!9309 (toList!5718 lt!1870337)) (content!9309 (toList!5718 lt!1870359))))))

(declare-fun bs!1099534 () Bool)

(assert (= bs!1099534 d!1497825))

(assert (=> bs!1099534 m!5628453))

(assert (=> bs!1099534 m!5628711))

(assert (=> b!4705730 d!1497825))

(declare-fun d!1497827 () Bool)

(declare-fun e!2935658 () Bool)

(assert (=> d!1497827 e!2935658))

(declare-fun res!1987901 () Bool)

(assert (=> d!1497827 (=> (not res!1987901) (not e!2935658))))

(declare-fun lt!1870987 () ListMap!5081)

(assert (=> d!1497827 (= res!1987901 (not (contains!15888 lt!1870987 key!4653)))))

(assert (=> d!1497827 (= lt!1870987 (ListMap!5082 (removePresrvNoDuplicatedKeys!381 (toList!5718 lt!1870364) key!4653)))))

(assert (=> d!1497827 (= (-!718 lt!1870364 key!4653) lt!1870987)))

(declare-fun b!4706212 () Bool)

(assert (=> b!4706212 (= e!2935658 (= ((_ map and) (content!9312 (keys!18822 lt!1870364)) ((_ map not) (store ((as const (Array K!13935 Bool)) false) key!4653 true))) (content!9312 (keys!18822 lt!1870987))))))

(assert (= (and d!1497827 res!1987901) b!4706212))

(declare-fun m!5628713 () Bool)

(assert (=> d!1497827 m!5628713))

(declare-fun m!5628715 () Bool)

(assert (=> d!1497827 m!5628715))

(assert (=> b!4706212 m!5628503))

(declare-fun m!5628717 () Bool)

(assert (=> b!4706212 m!5628717))

(declare-fun m!5628719 () Bool)

(assert (=> b!4706212 m!5628719))

(declare-fun m!5628721 () Bool)

(assert (=> b!4706212 m!5628721))

(assert (=> b!4706212 m!5628717))

(assert (=> b!4706212 m!5628721))

(declare-fun m!5628723 () Bool)

(assert (=> b!4706212 m!5628723))

(assert (=> b!4705730 d!1497827))

(declare-fun d!1497829 () Bool)

(assert (=> d!1497829 (eq!1073 (-!718 lt!1870369 key!4653) (-!718 lt!1870364 key!4653))))

(declare-fun lt!1870990 () Unit!127112)

(declare-fun choose!33063 (ListMap!5081 ListMap!5081 K!13935) Unit!127112)

(assert (=> d!1497829 (= lt!1870990 (choose!33063 lt!1870369 lt!1870364 key!4653))))

(assert (=> d!1497829 (eq!1073 lt!1870369 lt!1870364)))

(assert (=> d!1497829 (= (lemmaRemovePreservesEq!100 lt!1870369 lt!1870364 key!4653) lt!1870990)))

(declare-fun bs!1099535 () Bool)

(assert (= bs!1099535 d!1497829))

(assert (=> bs!1099535 m!5627381))

(assert (=> bs!1099535 m!5627453))

(declare-fun m!5628725 () Bool)

(assert (=> bs!1099535 m!5628725))

(assert (=> bs!1099535 m!5627469))

(assert (=> bs!1099535 m!5627381))

(declare-fun m!5628727 () Bool)

(assert (=> bs!1099535 m!5628727))

(assert (=> bs!1099535 m!5627469))

(assert (=> b!4705730 d!1497829))

(declare-fun d!1497831 () Bool)

(assert (=> d!1497831 (= (head!10091 (toList!5717 lm!2023)) (h!58875 (toList!5717 lm!2023)))))

(assert (=> b!4705735 d!1497831))

(declare-fun d!1497833 () Bool)

(assert (=> d!1497833 (= (eq!1073 lt!1870364 (+!2198 lt!1870362 lt!1870333)) (= (content!9309 (toList!5718 lt!1870364)) (content!9309 (toList!5718 (+!2198 lt!1870362 lt!1870333)))))))

(declare-fun bs!1099536 () Bool)

(assert (= bs!1099536 d!1497833))

(assert (=> bs!1099536 m!5628069))

(declare-fun m!5628729 () Bool)

(assert (=> bs!1099536 m!5628729))

(assert (=> b!4705734 d!1497833))

(declare-fun d!1497835 () Bool)

(declare-fun e!2935659 () Bool)

(assert (=> d!1497835 e!2935659))

(declare-fun res!1987903 () Bool)

(assert (=> d!1497835 (=> (not res!1987903) (not e!2935659))))

(declare-fun lt!1870993 () ListMap!5081)

(assert (=> d!1497835 (= res!1987903 (contains!15888 lt!1870993 (_1!30319 lt!1870333)))))

(declare-fun lt!1870991 () List!52703)

(assert (=> d!1497835 (= lt!1870993 (ListMap!5082 lt!1870991))))

(declare-fun lt!1870992 () Unit!127112)

(declare-fun lt!1870994 () Unit!127112)

(assert (=> d!1497835 (= lt!1870992 lt!1870994)))

(assert (=> d!1497835 (= (getValueByKey!1880 lt!1870991 (_1!30319 lt!1870333)) (Some!12239 (_2!30319 lt!1870333)))))

(assert (=> d!1497835 (= lt!1870994 (lemmaContainsTupThenGetReturnValue!1050 lt!1870991 (_1!30319 lt!1870333) (_2!30319 lt!1870333)))))

(assert (=> d!1497835 (= lt!1870991 (insertNoDuplicatedKeys!558 (toList!5718 lt!1870362) (_1!30319 lt!1870333) (_2!30319 lt!1870333)))))

(assert (=> d!1497835 (= (+!2198 lt!1870362 lt!1870333) lt!1870993)))

(declare-fun b!4706213 () Bool)

(declare-fun res!1987902 () Bool)

(assert (=> b!4706213 (=> (not res!1987902) (not e!2935659))))

(assert (=> b!4706213 (= res!1987902 (= (getValueByKey!1880 (toList!5718 lt!1870993) (_1!30319 lt!1870333)) (Some!12239 (_2!30319 lt!1870333))))))

(declare-fun b!4706214 () Bool)

(assert (=> b!4706214 (= e!2935659 (contains!15894 (toList!5718 lt!1870993) lt!1870333))))

(assert (= (and d!1497835 res!1987903) b!4706213))

(assert (= (and b!4706213 res!1987902) b!4706214))

(declare-fun m!5628731 () Bool)

(assert (=> d!1497835 m!5628731))

(declare-fun m!5628733 () Bool)

(assert (=> d!1497835 m!5628733))

(declare-fun m!5628735 () Bool)

(assert (=> d!1497835 m!5628735))

(declare-fun m!5628737 () Bool)

(assert (=> d!1497835 m!5628737))

(declare-fun m!5628739 () Bool)

(assert (=> b!4706213 m!5628739))

(declare-fun m!5628741 () Bool)

(assert (=> b!4706214 m!5628741))

(assert (=> b!4705734 d!1497835))

(declare-fun b!4706219 () Bool)

(declare-fun e!2935662 () Bool)

(declare-fun tp!1346972 () Bool)

(declare-fun tp!1346973 () Bool)

(assert (=> b!4706219 (= e!2935662 (and tp!1346972 tp!1346973))))

(assert (=> b!4705726 (= tp!1346955 e!2935662)))

(assert (= (and b!4705726 ((_ is Cons!52580) (toList!5717 lm!2023))) b!4706219))

(declare-fun tp!1346976 () Bool)

(declare-fun b!4706224 () Bool)

(declare-fun e!2935665 () Bool)

(assert (=> b!4706224 (= e!2935665 (and tp_is_empty!30949 tp_is_empty!30951 tp!1346976))))

(assert (=> b!4705750 (= tp!1346956 e!2935665)))

(assert (= (and b!4705750 ((_ is Cons!52579) (t!359929 oldBucket!34))) b!4706224))

(declare-fun b!4706225 () Bool)

(declare-fun tp!1346977 () Bool)

(declare-fun e!2935666 () Bool)

(assert (=> b!4706225 (= e!2935666 (and tp_is_empty!30949 tp_is_empty!30951 tp!1346977))))

(assert (=> b!4705733 (= tp!1346957 e!2935666)))

(assert (= (and b!4705733 ((_ is Cons!52579) (t!359929 newBucket!218))) b!4706225))

(declare-fun b_lambda!177559 () Bool)

(assert (= b_lambda!177553 (or start!477844 b_lambda!177559)))

(declare-fun bs!1099537 () Bool)

(declare-fun d!1497837 () Bool)

(assert (= bs!1099537 (and d!1497837 start!477844)))

(assert (=> bs!1099537 (= (dynLambda!21763 lambda!211507 lt!1870356) (noDuplicateKeys!1914 (_2!30320 lt!1870356)))))

(declare-fun m!5628743 () Bool)

(assert (=> bs!1099537 m!5628743))

(assert (=> d!1497747 d!1497837))

(declare-fun b_lambda!177561 () Bool)

(assert (= b_lambda!177555 (or start!477844 b_lambda!177561)))

(declare-fun bs!1099538 () Bool)

(declare-fun d!1497839 () Bool)

(assert (= bs!1099538 (and d!1497839 start!477844)))

(assert (=> bs!1099538 (= (dynLambda!21763 lambda!211507 (h!58875 lt!1870350)) (noDuplicateKeys!1914 (_2!30320 (h!58875 lt!1870350))))))

(declare-fun m!5628745 () Bool)

(assert (=> bs!1099538 m!5628745))

(assert (=> b!4706150 d!1497839))

(declare-fun b_lambda!177563 () Bool)

(assert (= b_lambda!177557 (or start!477844 b_lambda!177563)))

(declare-fun bs!1099539 () Bool)

(declare-fun d!1497841 () Bool)

(assert (= bs!1099539 (and d!1497841 start!477844)))

(assert (=> bs!1099539 (= (dynLambda!21763 lambda!211507 (h!58875 (toList!5717 lm!2023))) (noDuplicateKeys!1914 (_2!30320 (h!58875 (toList!5717 lm!2023)))))))

(assert (=> bs!1099539 m!5628651))

(assert (=> b!4706152 d!1497841))

(check-sat (not bm!329026) (not d!1497795) (not d!1497813) (not b!4706194) (not b!4706208) (not d!1497607) (not d!1497613) (not b!4706186) (not d!1497747) (not d!1497801) tp_is_empty!30951 (not bm!329049) (not d!1497783) (not d!1497651) (not b!4706224) (not bs!1099537) (not b!4705944) (not b!4706193) (not bm!329015) (not b!4705906) (not b!4706190) (not b!4706184) (not d!1497803) (not d!1497593) (not b!4706002) (not bm!329043) (not b!4706171) (not b!4706192) (not d!1497771) (not d!1497595) (not b!4706219) (not b!4706126) (not d!1497805) (not b!4706077) (not b!4706167) (not b!4705994) (not d!1497819) (not d!1497833) (not b!4706011) (not d!1497815) (not b!4706142) (not b!4705988) (not b!4706162) (not b!4705947) (not b!4706166) (not b!4706172) (not d!1497829) (not bm!329025) (not d!1497645) (not b!4706205) (not b!4705904) (not b!4706140) (not d!1497579) (not d!1497777) (not b!4706206) (not b!4706191) (not b!4706075) (not d!1497817) (not b!4705991) (not b!4706040) (not b!4706195) (not d!1497735) (not d!1497619) (not b!4706048) (not bm!329042) (not d!1497779) (not bs!1099539) (not d!1497791) (not bm!329017) (not bm!329044) (not d!1497663) (not b!4705879) (not d!1497789) (not b!4706207) (not b!4706133) (not d!1497761) (not d!1497653) (not d!1497615) (not b!4706012) (not b!4706203) (not b!4706125) (not b_lambda!177561) (not b!4706159) (not b!4706158) (not bm!329051) (not d!1497787) (not b!4705990) (not d!1497773) (not d!1497739) (not d!1497673) (not d!1497675) (not d!1497821) (not d!1497825) (not d!1497781) (not b!4706151) (not b_lambda!177559) (not b!4705946) (not b!4705902) (not b!4706202) (not b!4706204) (not bm!329016) (not d!1497765) (not d!1497741) (not bm!329029) (not b!4706225) (not b!4705949) (not d!1497539) (not d!1497697) (not d!1497693) (not b!4706004) (not b_lambda!177563) (not b!4705908) (not d!1497631) (not bm!329052) (not d!1497835) (not bm!329037) (not bm!329024) (not b!4706160) (not b!4705950) (not b!4705883) (not b!4706212) (not b!4706187) (not b!4706050) (not d!1497809) (not b!4706003) (not b!4706189) (not b!4705948) (not d!1497763) (not b!4705905) (not d!1497679) (not d!1497769) (not b!4706188) (not b!4706072) tp_is_empty!30949 (not d!1497745) (not b!4706145) (not d!1497629) (not d!1497807) (not b!4705880) (not b!4705989) (not b!4706196) (not d!1497609) (not d!1497749) (not d!1497797) (not b!4706198) (not b!4706210) (not b!4706213) (not d!1497799) (not bs!1099538) (not d!1497793) (not b!4706170) (not b!4706214) (not d!1497755) (not bm!329036) (not b!4706127) (not d!1497827) (not b!4705945) (not b!4705996) (not d!1497533) (not b!4706180) (not b!4706006) (not d!1497823) (not b!4706153) (not bm!329038) (not d!1497635) (not b!4705993) (not b!4706124) (not b!4706013) (not b!4706169) (not bm!329050) (not b!4706070) (not d!1497633) (not b!4705881) (not b!4706199) (not d!1497757) (not b!4705909) (not b!4706071) (not b!4705992) (not d!1497785) (not d!1497775) (not d!1497591))
(check-sat)
