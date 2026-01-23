; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!478140 () Bool)

(assert start!478140)

(declare-fun b!4707365 () Bool)

(declare-fun e!2936333 () Bool)

(declare-fun e!2936342 () Bool)

(assert (=> b!4707365 (= e!2936333 e!2936342)))

(declare-fun res!1988753 () Bool)

(assert (=> b!4707365 (=> res!1988753 e!2936342)))

(declare-datatypes ((K!13955 0))(
  ( (K!13956 (val!19435 Int)) )
))
(declare-datatypes ((V!14201 0))(
  ( (V!14202 (val!19436 Int)) )
))
(declare-datatypes ((tuple2!54082 0))(
  ( (tuple2!54083 (_1!30335 K!13955) (_2!30335 V!14201)) )
))
(declare-datatypes ((List!52723 0))(
  ( (Nil!52599) (Cons!52599 (h!58898 tuple2!54082) (t!359953 List!52723)) )
))
(declare-datatypes ((ListMap!5097 0))(
  ( (ListMap!5098 (toList!5733 List!52723)) )
))
(declare-fun lt!1872601 () ListMap!5097)

(declare-fun lt!1872570 () ListMap!5097)

(declare-fun eq!1081 (ListMap!5097 ListMap!5097) Bool)

(assert (=> b!4707365 (= res!1988753 (not (eq!1081 lt!1872601 lt!1872570)))))

(declare-fun lt!1872573 () ListMap!5097)

(declare-fun key!4653 () K!13955)

(declare-fun -!726 (ListMap!5097 K!13955) ListMap!5097)

(assert (=> b!4707365 (= lt!1872570 (-!726 lt!1872573 key!4653))))

(declare-datatypes ((tuple2!54084 0))(
  ( (tuple2!54085 (_1!30336 (_ BitVec 64)) (_2!30336 List!52723)) )
))
(declare-fun lt!1872579 () tuple2!54084)

(declare-datatypes ((List!52724 0))(
  ( (Nil!52600) (Cons!52600 (h!58899 tuple2!54084) (t!359954 List!52724)) )
))
(declare-datatypes ((ListLongMap!4263 0))(
  ( (ListLongMap!4264 (toList!5734 List!52724)) )
))
(declare-fun lm!2023 () ListLongMap!4263)

(declare-fun extractMap!1948 (List!52724) ListMap!5097)

(assert (=> b!4707365 (= lt!1872601 (extractMap!1948 (Cons!52600 lt!1872579 (t!359954 (toList!5734 lm!2023)))))))

(declare-fun lt!1872588 () List!52724)

(declare-fun lt!1872586 () tuple2!54084)

(assert (=> b!4707365 (eq!1081 (extractMap!1948 (Cons!52600 lt!1872579 lt!1872588)) (-!726 (extractMap!1948 (Cons!52600 lt!1872586 lt!1872588)) key!4653))))

(declare-fun lt!1872594 () List!52724)

(declare-fun tail!8791 (List!52724) List!52724)

(assert (=> b!4707365 (= lt!1872588 (tail!8791 lt!1872594))))

(declare-fun hash!405 () (_ BitVec 64))

(declare-fun lt!1872571 () List!52723)

(assert (=> b!4707365 (= lt!1872579 (tuple2!54085 hash!405 lt!1872571))))

(declare-datatypes ((Hashable!6291 0))(
  ( (HashableExt!6290 (__x!31994 Int)) )
))
(declare-fun hashF!1323 () Hashable!6291)

(declare-fun oldBucket!34 () List!52723)

(declare-fun lt!1872577 () ListLongMap!4263)

(declare-datatypes ((Unit!127368 0))(
  ( (Unit!127369) )
))
(declare-fun lt!1872602 () Unit!127368)

(declare-fun lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMapOneHashIsHead!96 (ListLongMap!4263 (_ BitVec 64) List!52723 List!52723 K!13955 Hashable!6291) Unit!127368)

(assert (=> b!4707365 (= lt!1872602 (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMapOneHashIsHead!96 lt!1872577 hash!405 (t!359953 oldBucket!34) lt!1872571 key!4653 hashF!1323))))

(declare-fun b!4707366 () Bool)

(declare-fun res!1988754 () Bool)

(declare-fun e!2936336 () Bool)

(assert (=> b!4707366 (=> res!1988754 e!2936336)))

(declare-fun lt!1872612 () ListMap!5097)

(declare-fun lt!1872596 () ListMap!5097)

(assert (=> b!4707366 (= res!1988754 (not (eq!1081 lt!1872612 lt!1872596)))))

(declare-fun b!4707367 () Bool)

(declare-fun e!2936340 () Bool)

(assert (=> b!4707367 (= e!2936340 e!2936336)))

(declare-fun res!1988743 () Bool)

(assert (=> b!4707367 (=> res!1988743 e!2936336)))

(declare-fun lt!1872605 () ListMap!5097)

(assert (=> b!4707367 (= res!1988743 (not (eq!1081 lt!1872605 lt!1872612)))))

(declare-fun lt!1872610 () tuple2!54084)

(assert (=> b!4707367 (= lt!1872612 (extractMap!1948 (Cons!52600 lt!1872610 (t!359954 (toList!5734 lm!2023)))))))

(declare-fun newBucket!218 () List!52723)

(assert (=> b!4707367 (= lt!1872610 (tuple2!54085 hash!405 newBucket!218))))

(declare-fun b!4707368 () Bool)

(declare-fun e!2936345 () Bool)

(declare-fun e!2936335 () Bool)

(assert (=> b!4707368 (= e!2936345 (not e!2936335))))

(declare-fun res!1988740 () Bool)

(assert (=> b!4707368 (=> res!1988740 e!2936335)))

(get-info :version)

(assert (=> b!4707368 (= res!1988740 (or (and ((_ is Cons!52599) oldBucket!34) (= (_1!30335 (h!58898 oldBucket!34)) key!4653)) (not ((_ is Cons!52599) oldBucket!34)) (= (_1!30335 (h!58898 oldBucket!34)) key!4653)))))

(declare-fun lt!1872593 () ListMap!5097)

(declare-fun lt!1872599 () ListMap!5097)

(declare-fun addToMapMapFromBucket!1354 (List!52723 ListMap!5097) ListMap!5097)

(assert (=> b!4707368 (= lt!1872593 (addToMapMapFromBucket!1354 (_2!30336 (h!58899 (toList!5734 lm!2023))) lt!1872599))))

(assert (=> b!4707368 (= lt!1872599 (extractMap!1948 (t!359954 (toList!5734 lm!2023))))))

(declare-fun tail!8792 (ListLongMap!4263) ListLongMap!4263)

(assert (=> b!4707368 (= (t!359954 (toList!5734 lm!2023)) (toList!5734 (tail!8792 lm!2023)))))

(declare-fun e!2936344 () Bool)

(declare-fun b!4707369 () Bool)

(declare-fun tp_is_empty!30983 () Bool)

(declare-fun tp!1347067 () Bool)

(declare-fun tp_is_empty!30981 () Bool)

(assert (=> b!4707369 (= e!2936344 (and tp_is_empty!30981 tp_is_empty!30983 tp!1347067))))

(declare-fun b!4707370 () Bool)

(declare-fun e!2936337 () Bool)

(declare-fun e!2936348 () Bool)

(assert (=> b!4707370 (= e!2936337 e!2936348)))

(declare-fun res!1988755 () Bool)

(assert (=> b!4707370 (=> (not res!1988755) (not e!2936348))))

(declare-fun lt!1872600 () (_ BitVec 64))

(assert (=> b!4707370 (= res!1988755 (= lt!1872600 hash!405))))

(declare-fun hash!4234 (Hashable!6291 K!13955) (_ BitVec 64))

(assert (=> b!4707370 (= lt!1872600 (hash!4234 hashF!1323 key!4653))))

(declare-fun b!4707371 () Bool)

(declare-fun e!2936343 () Bool)

(assert (=> b!4707371 (= e!2936335 e!2936343)))

(declare-fun res!1988759 () Bool)

(assert (=> b!4707371 (=> res!1988759 e!2936343)))

(declare-fun containsKey!3229 (List!52723 K!13955) Bool)

(assert (=> b!4707371 (= res!1988759 (not (containsKey!3229 (t!359953 oldBucket!34) key!4653)))))

(assert (=> b!4707371 (containsKey!3229 oldBucket!34 key!4653)))

(declare-fun lt!1872606 () Unit!127368)

(declare-fun lemmaGetPairDefinedThenContainsKey!274 (List!52723 K!13955 Hashable!6291) Unit!127368)

(assert (=> b!4707371 (= lt!1872606 (lemmaGetPairDefinedThenContainsKey!274 oldBucket!34 key!4653 hashF!1323))))

(declare-fun lt!1872595 () List!52723)

(declare-datatypes ((Option!12253 0))(
  ( (None!12252) (Some!12252 (v!46775 tuple2!54082)) )
))
(declare-fun isDefined!9508 (Option!12253) Bool)

(declare-fun getPair!526 (List!52723 K!13955) Option!12253)

(assert (=> b!4707371 (isDefined!9508 (getPair!526 lt!1872595 key!4653))))

(declare-fun lt!1872576 () Unit!127368)

(declare-fun lt!1872582 () tuple2!54084)

(declare-fun lambda!211883 () Int)

(declare-fun forallContained!3550 (List!52724 Int tuple2!54084) Unit!127368)

(assert (=> b!4707371 (= lt!1872576 (forallContained!3550 (toList!5734 lm!2023) lambda!211883 lt!1872582))))

(declare-fun contains!15920 (List!52724 tuple2!54084) Bool)

(assert (=> b!4707371 (contains!15920 (toList!5734 lm!2023) lt!1872582)))

(assert (=> b!4707371 (= lt!1872582 (tuple2!54085 lt!1872600 lt!1872595))))

(declare-fun lt!1872583 () Unit!127368)

(declare-fun lemmaGetValueImpliesTupleContained!331 (ListLongMap!4263 (_ BitVec 64) List!52723) Unit!127368)

(assert (=> b!4707371 (= lt!1872583 (lemmaGetValueImpliesTupleContained!331 lm!2023 lt!1872600 lt!1872595))))

(declare-fun apply!12405 (ListLongMap!4263 (_ BitVec 64)) List!52723)

(assert (=> b!4707371 (= lt!1872595 (apply!12405 lm!2023 lt!1872600))))

(declare-fun contains!15921 (ListLongMap!4263 (_ BitVec 64)) Bool)

(assert (=> b!4707371 (contains!15921 lm!2023 lt!1872600)))

(declare-fun lt!1872590 () Unit!127368)

(declare-fun lemmaInGenMapThenLongMapContainsHash!732 (ListLongMap!4263 K!13955 Hashable!6291) Unit!127368)

(assert (=> b!4707371 (= lt!1872590 (lemmaInGenMapThenLongMapContainsHash!732 lm!2023 key!4653 hashF!1323))))

(declare-fun lt!1872574 () Unit!127368)

(declare-fun lemmaInGenMapThenGetPairDefined!322 (ListLongMap!4263 K!13955 Hashable!6291) Unit!127368)

(assert (=> b!4707371 (= lt!1872574 (lemmaInGenMapThenGetPairDefined!322 lm!2023 key!4653 hashF!1323))))

(declare-fun b!4707372 () Bool)

(declare-fun lt!1872609 () List!52724)

(declare-fun lt!1872603 () tuple2!54084)

(declare-fun forall!11443 (List!52724 Int) Bool)

(assert (=> b!4707372 (= e!2936336 (forall!11443 (Cons!52600 lt!1872603 lt!1872609) lambda!211883))))

(declare-fun lt!1872589 () ListMap!5097)

(assert (=> b!4707372 (= lt!1872589 (extractMap!1948 (Cons!52600 lt!1872610 lt!1872609)))))

(assert (=> b!4707372 (= lt!1872609 (tail!8791 (toList!5734 lm!2023)))))

(declare-fun b!4707373 () Bool)

(declare-fun e!2936334 () Bool)

(assert (=> b!4707373 (= e!2936343 e!2936334)))

(declare-fun res!1988756 () Bool)

(assert (=> b!4707373 (=> res!1988756 e!2936334)))

(declare-fun lt!1872598 () List!52723)

(declare-fun removePairForKey!1517 (List!52723 K!13955) List!52723)

(assert (=> b!4707373 (= res!1988756 (not (= (removePairForKey!1517 lt!1872598 key!4653) lt!1872571)))))

(declare-fun tail!8793 (List!52723) List!52723)

(assert (=> b!4707373 (= lt!1872571 (tail!8793 newBucket!218))))

(assert (=> b!4707373 (= lt!1872598 (tail!8793 oldBucket!34))))

(declare-fun b!4707374 () Bool)

(assert (=> b!4707374 (= e!2936348 e!2936345)))

(declare-fun res!1988748 () Bool)

(assert (=> b!4707374 (=> (not res!1988748) (not e!2936345))))

(declare-fun head!10107 (List!52724) tuple2!54084)

(assert (=> b!4707374 (= res!1988748 (= (head!10107 (toList!5734 lm!2023)) lt!1872603))))

(assert (=> b!4707374 (= lt!1872603 (tuple2!54085 hash!405 oldBucket!34))))

(declare-fun b!4707375 () Bool)

(declare-fun e!2936346 () Bool)

(declare-fun e!2936339 () Bool)

(assert (=> b!4707375 (= e!2936346 e!2936339)))

(declare-fun res!1988752 () Bool)

(assert (=> b!4707375 (=> res!1988752 e!2936339)))

(declare-fun lt!1872578 () ListMap!5097)

(assert (=> b!4707375 (= res!1988752 (not (eq!1081 lt!1872578 lt!1872605)))))

(declare-fun +!2206 (ListMap!5097 tuple2!54082) ListMap!5097)

(assert (=> b!4707375 (= lt!1872605 (+!2206 lt!1872601 (h!58898 oldBucket!34)))))

(declare-fun lt!1872597 () ListMap!5097)

(assert (=> b!4707375 (eq!1081 lt!1872597 (+!2206 lt!1872601 (h!58898 oldBucket!34)))))

(declare-fun lt!1872580 () Unit!127368)

(declare-fun lemmaAddToEqMapsPreservesEq!104 (ListMap!5097 ListMap!5097 K!13955 V!14201) Unit!127368)

(assert (=> b!4707375 (= lt!1872580 (lemmaAddToEqMapsPreservesEq!104 lt!1872570 lt!1872601 (_1!30335 (h!58898 oldBucket!34)) (_2!30335 (h!58898 oldBucket!34))))))

(declare-fun tp!1347069 () Bool)

(declare-fun b!4707376 () Bool)

(declare-fun e!2936338 () Bool)

(assert (=> b!4707376 (= e!2936338 (and tp_is_empty!30981 tp_is_empty!30983 tp!1347069))))

(declare-fun b!4707377 () Bool)

(declare-fun res!1988750 () Bool)

(assert (=> b!4707377 (=> res!1988750 e!2936346)))

(declare-fun lt!1872604 () ListMap!5097)

(declare-fun lt!1872611 () ListMap!5097)

(assert (=> b!4707377 (= res!1988750 (not (eq!1081 lt!1872604 lt!1872611)))))

(declare-fun b!4707378 () Bool)

(declare-fun e!2936341 () Bool)

(assert (=> b!4707378 (= e!2936341 e!2936337)))

(declare-fun res!1988757 () Bool)

(assert (=> b!4707378 (=> (not res!1988757) (not e!2936337))))

(declare-fun contains!15922 (ListMap!5097 K!13955) Bool)

(assert (=> b!4707378 (= res!1988757 (contains!15922 lt!1872593 key!4653))))

(assert (=> b!4707378 (= lt!1872593 (extractMap!1948 (toList!5734 lm!2023)))))

(declare-fun b!4707379 () Bool)

(declare-fun res!1988746 () Bool)

(assert (=> b!4707379 (=> (not res!1988746) (not e!2936348))))

(declare-fun allKeysSameHashInMap!1836 (ListLongMap!4263 Hashable!6291) Bool)

(assert (=> b!4707379 (= res!1988746 (allKeysSameHashInMap!1836 lm!2023 hashF!1323))))

(declare-fun b!4707380 () Bool)

(assert (=> b!4707380 (= e!2936339 e!2936340)))

(declare-fun res!1988758 () Bool)

(assert (=> b!4707380 (=> res!1988758 e!2936340)))

(assert (=> b!4707380 (= res!1988758 (not (eq!1081 lt!1872578 lt!1872596)))))

(declare-fun lt!1872575 () ListMap!5097)

(assert (=> b!4707380 (eq!1081 lt!1872575 lt!1872596)))

(assert (=> b!4707380 (= lt!1872596 (-!726 lt!1872611 key!4653))))

(declare-fun lt!1872607 () Unit!127368)

(declare-fun lemmaRemovePreservesEq!108 (ListMap!5097 ListMap!5097 K!13955) Unit!127368)

(assert (=> b!4707380 (= lt!1872607 (lemmaRemovePreservesEq!108 lt!1872604 lt!1872611 key!4653))))

(declare-fun b!4707381 () Bool)

(declare-fun res!1988742 () Bool)

(assert (=> b!4707381 (=> res!1988742 e!2936333)))

(declare-fun lt!1872585 () tuple2!54082)

(assert (=> b!4707381 (= res!1988742 (not (= (h!58898 oldBucket!34) lt!1872585)))))

(declare-fun b!4707382 () Bool)

(declare-fun res!1988738 () Bool)

(assert (=> b!4707382 (=> (not res!1988738) (not e!2936341))))

(declare-fun allKeysSameHash!1748 (List!52723 (_ BitVec 64) Hashable!6291) Bool)

(assert (=> b!4707382 (= res!1988738 (allKeysSameHash!1748 oldBucket!34 hash!405 hashF!1323))))

(declare-fun b!4707383 () Bool)

(declare-fun res!1988747 () Bool)

(assert (=> b!4707383 (=> (not res!1988747) (not e!2936341))))

(assert (=> b!4707383 (= res!1988747 (= (removePairForKey!1517 oldBucket!34 key!4653) newBucket!218))))

(declare-fun res!1988760 () Bool)

(assert (=> start!478140 (=> (not res!1988760) (not e!2936341))))

(assert (=> start!478140 (= res!1988760 (forall!11443 (toList!5734 lm!2023) lambda!211883))))

(assert (=> start!478140 e!2936341))

(declare-fun e!2936347 () Bool)

(declare-fun inv!67829 (ListLongMap!4263) Bool)

(assert (=> start!478140 (and (inv!67829 lm!2023) e!2936347)))

(assert (=> start!478140 tp_is_empty!30981))

(assert (=> start!478140 e!2936344))

(assert (=> start!478140 true))

(assert (=> start!478140 e!2936338))

(declare-fun b!4707384 () Bool)

(declare-fun res!1988739 () Bool)

(assert (=> b!4707384 (=> (not res!1988739) (not e!2936345))))

(assert (=> b!4707384 (= res!1988739 ((_ is Cons!52600) (toList!5734 lm!2023)))))

(declare-fun b!4707385 () Bool)

(declare-fun res!1988749 () Bool)

(assert (=> b!4707385 (=> res!1988749 e!2936334)))

(assert (=> b!4707385 (= res!1988749 (not (= (removePairForKey!1517 (t!359953 oldBucket!34) key!4653) lt!1872571)))))

(declare-fun b!4707386 () Bool)

(assert (=> b!4707386 (= e!2936334 e!2936333)))

(declare-fun res!1988741 () Bool)

(assert (=> b!4707386 (=> res!1988741 e!2936333)))

(declare-fun lt!1872584 () ListMap!5097)

(assert (=> b!4707386 (= res!1988741 (not (eq!1081 lt!1872611 (+!2206 lt!1872584 (h!58898 oldBucket!34)))))))

(assert (=> b!4707386 (= lt!1872584 (extractMap!1948 (Cons!52600 (tuple2!54085 hash!405 lt!1872598) (t!359954 (toList!5734 lm!2023)))))))

(assert (=> b!4707386 (= lt!1872611 (extractMap!1948 (Cons!52600 lt!1872603 (t!359954 (toList!5734 lm!2023)))))))

(assert (=> b!4707386 (eq!1081 (addToMapMapFromBucket!1354 (Cons!52599 lt!1872585 lt!1872571) lt!1872599) (+!2206 (addToMapMapFromBucket!1354 lt!1872571 lt!1872599) lt!1872585))))

(declare-fun lt!1872587 () Unit!127368)

(declare-fun lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!330 (tuple2!54082 List!52723 ListMap!5097) Unit!127368)

(assert (=> b!4707386 (= lt!1872587 (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!330 lt!1872585 lt!1872571 lt!1872599))))

(declare-fun head!10108 (List!52723) tuple2!54082)

(assert (=> b!4707386 (= lt!1872585 (head!10108 newBucket!218))))

(declare-fun lt!1872591 () tuple2!54082)

(assert (=> b!4707386 (eq!1081 (addToMapMapFromBucket!1354 (Cons!52599 lt!1872591 lt!1872598) lt!1872599) (+!2206 (addToMapMapFromBucket!1354 lt!1872598 lt!1872599) lt!1872591))))

(declare-fun lt!1872608 () Unit!127368)

(assert (=> b!4707386 (= lt!1872608 (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!330 lt!1872591 lt!1872598 lt!1872599))))

(assert (=> b!4707386 (= lt!1872591 (head!10108 oldBucket!34))))

(assert (=> b!4707386 (contains!15922 lt!1872573 key!4653)))

(assert (=> b!4707386 (= lt!1872573 (extractMap!1948 lt!1872594))))

(declare-fun lt!1872572 () Unit!127368)

(declare-fun lemmaListContainsThenExtractedMapContains!514 (ListLongMap!4263 K!13955 Hashable!6291) Unit!127368)

(assert (=> b!4707386 (= lt!1872572 (lemmaListContainsThenExtractedMapContains!514 lt!1872577 key!4653 hashF!1323))))

(assert (=> b!4707386 (= lt!1872577 (ListLongMap!4264 lt!1872594))))

(assert (=> b!4707386 (= lt!1872594 (Cons!52600 lt!1872586 (t!359954 (toList!5734 lm!2023))))))

(assert (=> b!4707386 (= lt!1872586 (tuple2!54085 hash!405 (t!359953 oldBucket!34)))))

(declare-fun b!4707387 () Bool)

(declare-fun res!1988745 () Bool)

(assert (=> b!4707387 (=> (not res!1988745) (not e!2936341))))

(declare-fun noDuplicateKeys!1922 (List!52723) Bool)

(assert (=> b!4707387 (= res!1988745 (noDuplicateKeys!1922 oldBucket!34))))

(declare-fun b!4707388 () Bool)

(declare-fun res!1988761 () Bool)

(assert (=> b!4707388 (=> res!1988761 e!2936346)))

(assert (=> b!4707388 (= res!1988761 (not (eq!1081 lt!1872575 lt!1872578)))))

(declare-fun b!4707389 () Bool)

(declare-fun res!1988751 () Bool)

(assert (=> b!4707389 (=> (not res!1988751) (not e!2936341))))

(assert (=> b!4707389 (= res!1988751 (noDuplicateKeys!1922 newBucket!218))))

(declare-fun b!4707390 () Bool)

(assert (=> b!4707390 (= e!2936342 e!2936346)))

(declare-fun res!1988763 () Bool)

(assert (=> b!4707390 (=> res!1988763 e!2936346)))

(assert (=> b!4707390 (= res!1988763 (not (= lt!1872575 lt!1872578)))))

(assert (=> b!4707390 (= lt!1872578 (+!2206 lt!1872570 (h!58898 oldBucket!34)))))

(assert (=> b!4707390 (= lt!1872575 (-!726 lt!1872604 key!4653))))

(assert (=> b!4707390 (= lt!1872604 (+!2206 lt!1872573 (h!58898 oldBucket!34)))))

(declare-fun lt!1872592 () ListMap!5097)

(assert (=> b!4707390 (= lt!1872592 lt!1872597)))

(assert (=> b!4707390 (= lt!1872597 (+!2206 lt!1872570 (h!58898 oldBucket!34)))))

(assert (=> b!4707390 (= lt!1872592 (-!726 (+!2206 lt!1872573 (h!58898 oldBucket!34)) key!4653))))

(declare-fun lt!1872581 () Unit!127368)

(declare-fun addRemoveCommutativeForDiffKeys!127 (ListMap!5097 K!13955 V!14201 K!13955) Unit!127368)

(assert (=> b!4707390 (= lt!1872581 (addRemoveCommutativeForDiffKeys!127 lt!1872573 (_1!30335 (h!58898 oldBucket!34)) (_2!30335 (h!58898 oldBucket!34)) key!4653))))

(declare-fun b!4707391 () Bool)

(declare-fun tp!1347068 () Bool)

(assert (=> b!4707391 (= e!2936347 tp!1347068)))

(declare-fun b!4707392 () Bool)

(declare-fun res!1988762 () Bool)

(assert (=> b!4707392 (=> (not res!1988762) (not e!2936348))))

(assert (=> b!4707392 (= res!1988762 (allKeysSameHash!1748 newBucket!218 hash!405 hashF!1323))))

(declare-fun b!4707393 () Bool)

(declare-fun res!1988744 () Bool)

(assert (=> b!4707393 (=> res!1988744 e!2936333)))

(assert (=> b!4707393 (= res!1988744 (not (eq!1081 lt!1872611 (+!2206 lt!1872584 lt!1872585))))))

(assert (= (and start!478140 res!1988760) b!4707387))

(assert (= (and b!4707387 res!1988745) b!4707389))

(assert (= (and b!4707389 res!1988751) b!4707383))

(assert (= (and b!4707383 res!1988747) b!4707382))

(assert (= (and b!4707382 res!1988738) b!4707378))

(assert (= (and b!4707378 res!1988757) b!4707370))

(assert (= (and b!4707370 res!1988755) b!4707392))

(assert (= (and b!4707392 res!1988762) b!4707379))

(assert (= (and b!4707379 res!1988746) b!4707374))

(assert (= (and b!4707374 res!1988748) b!4707384))

(assert (= (and b!4707384 res!1988739) b!4707368))

(assert (= (and b!4707368 (not res!1988740)) b!4707371))

(assert (= (and b!4707371 (not res!1988759)) b!4707373))

(assert (= (and b!4707373 (not res!1988756)) b!4707385))

(assert (= (and b!4707385 (not res!1988749)) b!4707386))

(assert (= (and b!4707386 (not res!1988741)) b!4707381))

(assert (= (and b!4707381 (not res!1988742)) b!4707393))

(assert (= (and b!4707393 (not res!1988744)) b!4707365))

(assert (= (and b!4707365 (not res!1988753)) b!4707390))

(assert (= (and b!4707390 (not res!1988763)) b!4707388))

(assert (= (and b!4707388 (not res!1988761)) b!4707377))

(assert (= (and b!4707377 (not res!1988750)) b!4707375))

(assert (= (and b!4707375 (not res!1988752)) b!4707380))

(assert (= (and b!4707380 (not res!1988758)) b!4707367))

(assert (= (and b!4707367 (not res!1988743)) b!4707366))

(assert (= (and b!4707366 (not res!1988754)) b!4707372))

(assert (= start!478140 b!4707391))

(assert (= (and start!478140 ((_ is Cons!52599) oldBucket!34)) b!4707369))

(assert (= (and start!478140 ((_ is Cons!52599) newBucket!218)) b!4707376))

(declare-fun m!5631103 () Bool)

(assert (=> b!4707370 m!5631103))

(declare-fun m!5631105 () Bool)

(assert (=> b!4707393 m!5631105))

(assert (=> b!4707393 m!5631105))

(declare-fun m!5631107 () Bool)

(assert (=> b!4707393 m!5631107))

(declare-fun m!5631109 () Bool)

(assert (=> b!4707379 m!5631109))

(declare-fun m!5631111 () Bool)

(assert (=> b!4707373 m!5631111))

(declare-fun m!5631113 () Bool)

(assert (=> b!4707373 m!5631113))

(declare-fun m!5631115 () Bool)

(assert (=> b!4707373 m!5631115))

(declare-fun m!5631117 () Bool)

(assert (=> b!4707385 m!5631117))

(declare-fun m!5631119 () Bool)

(assert (=> b!4707387 m!5631119))

(declare-fun m!5631121 () Bool)

(assert (=> b!4707378 m!5631121))

(declare-fun m!5631123 () Bool)

(assert (=> b!4707378 m!5631123))

(declare-fun m!5631125 () Bool)

(assert (=> b!4707390 m!5631125))

(declare-fun m!5631127 () Bool)

(assert (=> b!4707390 m!5631127))

(assert (=> b!4707390 m!5631125))

(declare-fun m!5631129 () Bool)

(assert (=> b!4707390 m!5631129))

(declare-fun m!5631131 () Bool)

(assert (=> b!4707390 m!5631131))

(declare-fun m!5631133 () Bool)

(assert (=> b!4707390 m!5631133))

(declare-fun m!5631135 () Bool)

(assert (=> b!4707374 m!5631135))

(declare-fun m!5631137 () Bool)

(assert (=> b!4707389 m!5631137))

(declare-fun m!5631139 () Bool)

(assert (=> b!4707368 m!5631139))

(declare-fun m!5631141 () Bool)

(assert (=> b!4707368 m!5631141))

(declare-fun m!5631143 () Bool)

(assert (=> b!4707368 m!5631143))

(declare-fun m!5631145 () Bool)

(assert (=> b!4707386 m!5631145))

(declare-fun m!5631147 () Bool)

(assert (=> b!4707386 m!5631147))

(declare-fun m!5631149 () Bool)

(assert (=> b!4707386 m!5631149))

(declare-fun m!5631151 () Bool)

(assert (=> b!4707386 m!5631151))

(declare-fun m!5631153 () Bool)

(assert (=> b!4707386 m!5631153))

(declare-fun m!5631155 () Bool)

(assert (=> b!4707386 m!5631155))

(declare-fun m!5631157 () Bool)

(assert (=> b!4707386 m!5631157))

(declare-fun m!5631159 () Bool)

(assert (=> b!4707386 m!5631159))

(declare-fun m!5631161 () Bool)

(assert (=> b!4707386 m!5631161))

(declare-fun m!5631163 () Bool)

(assert (=> b!4707386 m!5631163))

(declare-fun m!5631165 () Bool)

(assert (=> b!4707386 m!5631165))

(declare-fun m!5631167 () Bool)

(assert (=> b!4707386 m!5631167))

(declare-fun m!5631169 () Bool)

(assert (=> b!4707386 m!5631169))

(declare-fun m!5631171 () Bool)

(assert (=> b!4707386 m!5631171))

(declare-fun m!5631173 () Bool)

(assert (=> b!4707386 m!5631173))

(assert (=> b!4707386 m!5631165))

(assert (=> b!4707386 m!5631161))

(declare-fun m!5631175 () Bool)

(assert (=> b!4707386 m!5631175))

(assert (=> b!4707386 m!5631159))

(assert (=> b!4707386 m!5631171))

(declare-fun m!5631177 () Bool)

(assert (=> b!4707386 m!5631177))

(declare-fun m!5631179 () Bool)

(assert (=> b!4707386 m!5631179))

(assert (=> b!4707386 m!5631145))

(declare-fun m!5631181 () Bool)

(assert (=> b!4707386 m!5631181))

(assert (=> b!4707386 m!5631163))

(assert (=> b!4707386 m!5631147))

(declare-fun m!5631183 () Bool)

(assert (=> b!4707371 m!5631183))

(declare-fun m!5631185 () Bool)

(assert (=> b!4707371 m!5631185))

(declare-fun m!5631187 () Bool)

(assert (=> b!4707371 m!5631187))

(assert (=> b!4707371 m!5631185))

(declare-fun m!5631189 () Bool)

(assert (=> b!4707371 m!5631189))

(declare-fun m!5631191 () Bool)

(assert (=> b!4707371 m!5631191))

(declare-fun m!5631193 () Bool)

(assert (=> b!4707371 m!5631193))

(declare-fun m!5631195 () Bool)

(assert (=> b!4707371 m!5631195))

(declare-fun m!5631197 () Bool)

(assert (=> b!4707371 m!5631197))

(declare-fun m!5631199 () Bool)

(assert (=> b!4707371 m!5631199))

(declare-fun m!5631201 () Bool)

(assert (=> b!4707371 m!5631201))

(declare-fun m!5631203 () Bool)

(assert (=> b!4707371 m!5631203))

(declare-fun m!5631205 () Bool)

(assert (=> b!4707371 m!5631205))

(declare-fun m!5631207 () Bool)

(assert (=> b!4707367 m!5631207))

(declare-fun m!5631209 () Bool)

(assert (=> b!4707367 m!5631209))

(declare-fun m!5631211 () Bool)

(assert (=> b!4707382 m!5631211))

(declare-fun m!5631213 () Bool)

(assert (=> b!4707375 m!5631213))

(declare-fun m!5631215 () Bool)

(assert (=> b!4707375 m!5631215))

(assert (=> b!4707375 m!5631215))

(declare-fun m!5631217 () Bool)

(assert (=> b!4707375 m!5631217))

(declare-fun m!5631219 () Bool)

(assert (=> b!4707375 m!5631219))

(declare-fun m!5631221 () Bool)

(assert (=> b!4707377 m!5631221))

(declare-fun m!5631223 () Bool)

(assert (=> b!4707392 m!5631223))

(declare-fun m!5631225 () Bool)

(assert (=> start!478140 m!5631225))

(declare-fun m!5631227 () Bool)

(assert (=> start!478140 m!5631227))

(declare-fun m!5631229 () Bool)

(assert (=> b!4707383 m!5631229))

(declare-fun m!5631231 () Bool)

(assert (=> b!4707366 m!5631231))

(declare-fun m!5631233 () Bool)

(assert (=> b!4707388 m!5631233))

(declare-fun m!5631235 () Bool)

(assert (=> b!4707365 m!5631235))

(declare-fun m!5631237 () Bool)

(assert (=> b!4707365 m!5631237))

(declare-fun m!5631239 () Bool)

(assert (=> b!4707365 m!5631239))

(declare-fun m!5631241 () Bool)

(assert (=> b!4707365 m!5631241))

(declare-fun m!5631243 () Bool)

(assert (=> b!4707365 m!5631243))

(declare-fun m!5631245 () Bool)

(assert (=> b!4707365 m!5631245))

(declare-fun m!5631247 () Bool)

(assert (=> b!4707365 m!5631247))

(assert (=> b!4707365 m!5631239))

(assert (=> b!4707365 m!5631243))

(declare-fun m!5631249 () Bool)

(assert (=> b!4707365 m!5631249))

(assert (=> b!4707365 m!5631241))

(declare-fun m!5631251 () Bool)

(assert (=> b!4707365 m!5631251))

(declare-fun m!5631253 () Bool)

(assert (=> b!4707380 m!5631253))

(declare-fun m!5631255 () Bool)

(assert (=> b!4707380 m!5631255))

(declare-fun m!5631257 () Bool)

(assert (=> b!4707380 m!5631257))

(declare-fun m!5631259 () Bool)

(assert (=> b!4707380 m!5631259))

(declare-fun m!5631261 () Bool)

(assert (=> b!4707372 m!5631261))

(declare-fun m!5631263 () Bool)

(assert (=> b!4707372 m!5631263))

(declare-fun m!5631265 () Bool)

(assert (=> b!4707372 m!5631265))

(check-sat (not b!4707372) (not start!478140) (not b!4707369) (not b!4707385) (not b!4707393) (not b!4707389) (not b!4707378) (not b!4707377) tp_is_empty!30981 (not b!4707392) (not b!4707387) (not b!4707373) (not b!4707375) (not b!4707382) (not b!4707365) (not b!4707366) tp_is_empty!30983 (not b!4707379) (not b!4707368) (not b!4707371) (not b!4707380) (not b!4707376) (not b!4707391) (not b!4707386) (not b!4707388) (not b!4707370) (not b!4707374) (not b!4707383) (not b!4707367) (not b!4707390))
(check-sat)
(get-model)

(declare-fun d!1498199 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!9322 (List!52723) (InoxSet tuple2!54082))

(assert (=> d!1498199 (= (eq!1081 lt!1872612 lt!1872596) (= (content!9322 (toList!5733 lt!1872612)) (content!9322 (toList!5733 lt!1872596))))))

(declare-fun bs!1100102 () Bool)

(assert (= bs!1100102 d!1498199))

(declare-fun m!5631341 () Bool)

(assert (=> bs!1100102 m!5631341))

(declare-fun m!5631345 () Bool)

(assert (=> bs!1100102 m!5631345))

(assert (=> b!4707366 d!1498199))

(declare-fun d!1498205 () Bool)

(assert (=> d!1498205 (= (eq!1081 lt!1872575 lt!1872578) (= (content!9322 (toList!5733 lt!1872575)) (content!9322 (toList!5733 lt!1872578))))))

(declare-fun bs!1100104 () Bool)

(assert (= bs!1100104 d!1498205))

(declare-fun m!5631349 () Bool)

(assert (=> bs!1100104 m!5631349))

(declare-fun m!5631351 () Bool)

(assert (=> bs!1100104 m!5631351))

(assert (=> b!4707388 d!1498205))

(declare-fun d!1498207 () Bool)

(assert (=> d!1498207 (= (eq!1081 lt!1872605 lt!1872612) (= (content!9322 (toList!5733 lt!1872605)) (content!9322 (toList!5733 lt!1872612))))))

(declare-fun bs!1100105 () Bool)

(assert (= bs!1100105 d!1498207))

(declare-fun m!5631353 () Bool)

(assert (=> bs!1100105 m!5631353))

(assert (=> bs!1100105 m!5631341))

(assert (=> b!4707367 d!1498207))

(declare-fun bs!1100109 () Bool)

(declare-fun d!1498209 () Bool)

(assert (= bs!1100109 (and d!1498209 start!478140)))

(declare-fun lambda!211889 () Int)

(assert (=> bs!1100109 (= lambda!211889 lambda!211883)))

(declare-fun lt!1872653 () ListMap!5097)

(declare-fun invariantList!1464 (List!52723) Bool)

(assert (=> d!1498209 (invariantList!1464 (toList!5733 lt!1872653))))

(declare-fun e!2936374 () ListMap!5097)

(assert (=> d!1498209 (= lt!1872653 e!2936374)))

(declare-fun c!804456 () Bool)

(assert (=> d!1498209 (= c!804456 ((_ is Cons!52600) (Cons!52600 lt!1872610 (t!359954 (toList!5734 lm!2023)))))))

(assert (=> d!1498209 (forall!11443 (Cons!52600 lt!1872610 (t!359954 (toList!5734 lm!2023))) lambda!211889)))

(assert (=> d!1498209 (= (extractMap!1948 (Cons!52600 lt!1872610 (t!359954 (toList!5734 lm!2023)))) lt!1872653)))

(declare-fun b!4707432 () Bool)

(assert (=> b!4707432 (= e!2936374 (addToMapMapFromBucket!1354 (_2!30336 (h!58899 (Cons!52600 lt!1872610 (t!359954 (toList!5734 lm!2023))))) (extractMap!1948 (t!359954 (Cons!52600 lt!1872610 (t!359954 (toList!5734 lm!2023)))))))))

(declare-fun b!4707433 () Bool)

(assert (=> b!4707433 (= e!2936374 (ListMap!5098 Nil!52599))))

(assert (= (and d!1498209 c!804456) b!4707432))

(assert (= (and d!1498209 (not c!804456)) b!4707433))

(declare-fun m!5631369 () Bool)

(assert (=> d!1498209 m!5631369))

(declare-fun m!5631371 () Bool)

(assert (=> d!1498209 m!5631371))

(declare-fun m!5631373 () Bool)

(assert (=> b!4707432 m!5631373))

(assert (=> b!4707432 m!5631373))

(declare-fun m!5631375 () Bool)

(assert (=> b!4707432 m!5631375))

(assert (=> b!4707367 d!1498209))

(declare-fun d!1498217 () Bool)

(declare-fun res!1988789 () Bool)

(declare-fun e!2936379 () Bool)

(assert (=> d!1498217 (=> res!1988789 e!2936379)))

(assert (=> d!1498217 (= res!1988789 (not ((_ is Cons!52599) newBucket!218)))))

(assert (=> d!1498217 (= (noDuplicateKeys!1922 newBucket!218) e!2936379)))

(declare-fun b!4707438 () Bool)

(declare-fun e!2936380 () Bool)

(assert (=> b!4707438 (= e!2936379 e!2936380)))

(declare-fun res!1988790 () Bool)

(assert (=> b!4707438 (=> (not res!1988790) (not e!2936380))))

(assert (=> b!4707438 (= res!1988790 (not (containsKey!3229 (t!359953 newBucket!218) (_1!30335 (h!58898 newBucket!218)))))))

(declare-fun b!4707439 () Bool)

(assert (=> b!4707439 (= e!2936380 (noDuplicateKeys!1922 (t!359953 newBucket!218)))))

(assert (= (and d!1498217 (not res!1988789)) b!4707438))

(assert (= (and b!4707438 res!1988790) b!4707439))

(declare-fun m!5631377 () Bool)

(assert (=> b!4707438 m!5631377))

(declare-fun m!5631379 () Bool)

(assert (=> b!4707439 m!5631379))

(assert (=> b!4707389 d!1498217))

(declare-fun b!4707531 () Bool)

(assert (=> b!4707531 true))

(declare-fun bs!1100139 () Bool)

(declare-fun b!4707529 () Bool)

(assert (= bs!1100139 (and b!4707529 b!4707531)))

(declare-fun lambda!211937 () Int)

(declare-fun lambda!211936 () Int)

(assert (=> bs!1100139 (= lambda!211937 lambda!211936)))

(assert (=> b!4707529 true))

(declare-fun lambda!211938 () Int)

(declare-fun lt!1872770 () ListMap!5097)

(assert (=> bs!1100139 (= (= lt!1872770 lt!1872599) (= lambda!211938 lambda!211936))))

(assert (=> b!4707529 (= (= lt!1872770 lt!1872599) (= lambda!211938 lambda!211937))))

(assert (=> b!4707529 true))

(declare-fun bs!1100140 () Bool)

(declare-fun d!1498219 () Bool)

(assert (= bs!1100140 (and d!1498219 b!4707531)))

(declare-fun lt!1872769 () ListMap!5097)

(declare-fun lambda!211941 () Int)

(assert (=> bs!1100140 (= (= lt!1872769 lt!1872599) (= lambda!211941 lambda!211936))))

(declare-fun bs!1100141 () Bool)

(assert (= bs!1100141 (and d!1498219 b!4707529)))

(assert (=> bs!1100141 (= (= lt!1872769 lt!1872599) (= lambda!211941 lambda!211937))))

(assert (=> bs!1100141 (= (= lt!1872769 lt!1872770) (= lambda!211941 lambda!211938))))

(assert (=> d!1498219 true))

(declare-fun call!329116 () Bool)

(declare-fun bm!329109 () Bool)

(declare-fun c!804473 () Bool)

(declare-fun forall!11445 (List!52723 Int) Bool)

(assert (=> bm!329109 (= call!329116 (forall!11445 (ite c!804473 (toList!5733 lt!1872599) (t!359953 (_2!30336 (h!58899 (toList!5734 lm!2023))))) (ite c!804473 lambda!211936 lambda!211938)))))

(declare-fun e!2936438 () ListMap!5097)

(assert (=> b!4707529 (= e!2936438 lt!1872770)))

(declare-fun lt!1872772 () ListMap!5097)

(assert (=> b!4707529 (= lt!1872772 (+!2206 lt!1872599 (h!58898 (_2!30336 (h!58899 (toList!5734 lm!2023))))))))

(assert (=> b!4707529 (= lt!1872770 (addToMapMapFromBucket!1354 (t!359953 (_2!30336 (h!58899 (toList!5734 lm!2023)))) (+!2206 lt!1872599 (h!58898 (_2!30336 (h!58899 (toList!5734 lm!2023)))))))))

(declare-fun lt!1872764 () Unit!127368)

(declare-fun call!329115 () Unit!127368)

(assert (=> b!4707529 (= lt!1872764 call!329115)))

(assert (=> b!4707529 (forall!11445 (toList!5733 lt!1872599) lambda!211937)))

(declare-fun lt!1872762 () Unit!127368)

(assert (=> b!4707529 (= lt!1872762 lt!1872764)))

(assert (=> b!4707529 (forall!11445 (toList!5733 lt!1872772) lambda!211938)))

(declare-fun lt!1872758 () Unit!127368)

(declare-fun Unit!127371 () Unit!127368)

(assert (=> b!4707529 (= lt!1872758 Unit!127371)))

(assert (=> b!4707529 call!329116))

(declare-fun lt!1872757 () Unit!127368)

(declare-fun Unit!127372 () Unit!127368)

(assert (=> b!4707529 (= lt!1872757 Unit!127372)))

(declare-fun lt!1872759 () Unit!127368)

(declare-fun Unit!127373 () Unit!127368)

(assert (=> b!4707529 (= lt!1872759 Unit!127373)))

(declare-fun lt!1872752 () Unit!127368)

(declare-fun forallContained!3551 (List!52723 Int tuple2!54082) Unit!127368)

(assert (=> b!4707529 (= lt!1872752 (forallContained!3551 (toList!5733 lt!1872772) lambda!211938 (h!58898 (_2!30336 (h!58899 (toList!5734 lm!2023))))))))

(assert (=> b!4707529 (contains!15922 lt!1872772 (_1!30335 (h!58898 (_2!30336 (h!58899 (toList!5734 lm!2023))))))))

(declare-fun lt!1872760 () Unit!127368)

(declare-fun Unit!127374 () Unit!127368)

(assert (=> b!4707529 (= lt!1872760 Unit!127374)))

(assert (=> b!4707529 (contains!15922 lt!1872770 (_1!30335 (h!58898 (_2!30336 (h!58899 (toList!5734 lm!2023))))))))

(declare-fun lt!1872765 () Unit!127368)

(declare-fun Unit!127375 () Unit!127368)

(assert (=> b!4707529 (= lt!1872765 Unit!127375)))

(assert (=> b!4707529 (forall!11445 (_2!30336 (h!58899 (toList!5734 lm!2023))) lambda!211938)))

(declare-fun lt!1872763 () Unit!127368)

(declare-fun Unit!127376 () Unit!127368)

(assert (=> b!4707529 (= lt!1872763 Unit!127376)))

(assert (=> b!4707529 (forall!11445 (toList!5733 lt!1872772) lambda!211938)))

(declare-fun lt!1872754 () Unit!127368)

(declare-fun Unit!127377 () Unit!127368)

(assert (=> b!4707529 (= lt!1872754 Unit!127377)))

(declare-fun lt!1872766 () Unit!127368)

(declare-fun Unit!127378 () Unit!127368)

(assert (=> b!4707529 (= lt!1872766 Unit!127378)))

(declare-fun lt!1872756 () Unit!127368)

(declare-fun addForallContainsKeyThenBeforeAdding!750 (ListMap!5097 ListMap!5097 K!13955 V!14201) Unit!127368)

(assert (=> b!4707529 (= lt!1872756 (addForallContainsKeyThenBeforeAdding!750 lt!1872599 lt!1872770 (_1!30335 (h!58898 (_2!30336 (h!58899 (toList!5734 lm!2023))))) (_2!30335 (h!58898 (_2!30336 (h!58899 (toList!5734 lm!2023)))))))))

(assert (=> b!4707529 (forall!11445 (toList!5733 lt!1872599) lambda!211938)))

(declare-fun lt!1872771 () Unit!127368)

(assert (=> b!4707529 (= lt!1872771 lt!1872756)))

(assert (=> b!4707529 (forall!11445 (toList!5733 lt!1872599) lambda!211938)))

(declare-fun lt!1872768 () Unit!127368)

(declare-fun Unit!127379 () Unit!127368)

(assert (=> b!4707529 (= lt!1872768 Unit!127379)))

(declare-fun res!1988846 () Bool)

(assert (=> b!4707529 (= res!1988846 (forall!11445 (_2!30336 (h!58899 (toList!5734 lm!2023))) lambda!211938))))

(declare-fun e!2936440 () Bool)

(assert (=> b!4707529 (=> (not res!1988846) (not e!2936440))))

(assert (=> b!4707529 e!2936440))

(declare-fun lt!1872767 () Unit!127368)

(declare-fun Unit!127380 () Unit!127368)

(assert (=> b!4707529 (= lt!1872767 Unit!127380)))

(declare-fun b!4707530 () Bool)

(declare-fun res!1988845 () Bool)

(declare-fun e!2936439 () Bool)

(assert (=> b!4707530 (=> (not res!1988845) (not e!2936439))))

(assert (=> b!4707530 (= res!1988845 (forall!11445 (toList!5733 lt!1872599) lambda!211941))))

(assert (=> b!4707531 (= e!2936438 lt!1872599)))

(declare-fun lt!1872761 () Unit!127368)

(assert (=> b!4707531 (= lt!1872761 call!329115)))

(declare-fun call!329114 () Bool)

(assert (=> b!4707531 call!329114))

(declare-fun lt!1872755 () Unit!127368)

(assert (=> b!4707531 (= lt!1872755 lt!1872761)))

(assert (=> b!4707531 call!329116))

(declare-fun lt!1872753 () Unit!127368)

(declare-fun Unit!127382 () Unit!127368)

(assert (=> b!4707531 (= lt!1872753 Unit!127382)))

(declare-fun b!4707532 () Bool)

(assert (=> b!4707532 (= e!2936439 (invariantList!1464 (toList!5733 lt!1872769)))))

(declare-fun bm!329110 () Bool)

(assert (=> bm!329110 (= call!329114 (forall!11445 (toList!5733 lt!1872599) (ite c!804473 lambda!211936 lambda!211938)))))

(assert (=> d!1498219 e!2936439))

(declare-fun res!1988844 () Bool)

(assert (=> d!1498219 (=> (not res!1988844) (not e!2936439))))

(assert (=> d!1498219 (= res!1988844 (forall!11445 (_2!30336 (h!58899 (toList!5734 lm!2023))) lambda!211941))))

(assert (=> d!1498219 (= lt!1872769 e!2936438)))

(assert (=> d!1498219 (= c!804473 ((_ is Nil!52599) (_2!30336 (h!58899 (toList!5734 lm!2023)))))))

(assert (=> d!1498219 (noDuplicateKeys!1922 (_2!30336 (h!58899 (toList!5734 lm!2023))))))

(assert (=> d!1498219 (= (addToMapMapFromBucket!1354 (_2!30336 (h!58899 (toList!5734 lm!2023))) lt!1872599) lt!1872769)))

(declare-fun b!4707533 () Bool)

(assert (=> b!4707533 (= e!2936440 call!329114)))

(declare-fun bm!329111 () Bool)

(declare-fun lemmaContainsAllItsOwnKeys!752 (ListMap!5097) Unit!127368)

(assert (=> bm!329111 (= call!329115 (lemmaContainsAllItsOwnKeys!752 lt!1872599))))

(assert (= (and d!1498219 c!804473) b!4707531))

(assert (= (and d!1498219 (not c!804473)) b!4707529))

(assert (= (and b!4707529 res!1988846) b!4707533))

(assert (= (or b!4707531 b!4707529) bm!329111))

(assert (= (or b!4707531 b!4707533) bm!329110))

(assert (= (or b!4707531 b!4707529) bm!329109))

(assert (= (and d!1498219 res!1988844) b!4707530))

(assert (= (and b!4707530 res!1988845) b!4707532))

(declare-fun m!5631529 () Bool)

(assert (=> bm!329109 m!5631529))

(declare-fun m!5631531 () Bool)

(assert (=> b!4707529 m!5631531))

(declare-fun m!5631533 () Bool)

(assert (=> b!4707529 m!5631533))

(declare-fun m!5631535 () Bool)

(assert (=> b!4707529 m!5631535))

(declare-fun m!5631537 () Bool)

(assert (=> b!4707529 m!5631537))

(declare-fun m!5631539 () Bool)

(assert (=> b!4707529 m!5631539))

(declare-fun m!5631541 () Bool)

(assert (=> b!4707529 m!5631541))

(assert (=> b!4707529 m!5631533))

(assert (=> b!4707529 m!5631541))

(declare-fun m!5631543 () Bool)

(assert (=> b!4707529 m!5631543))

(declare-fun m!5631545 () Bool)

(assert (=> b!4707529 m!5631545))

(declare-fun m!5631547 () Bool)

(assert (=> b!4707529 m!5631547))

(assert (=> b!4707529 m!5631537))

(assert (=> b!4707529 m!5631531))

(declare-fun m!5631549 () Bool)

(assert (=> b!4707529 m!5631549))

(declare-fun m!5631551 () Bool)

(assert (=> bm!329111 m!5631551))

(declare-fun m!5631553 () Bool)

(assert (=> b!4707532 m!5631553))

(declare-fun m!5631555 () Bool)

(assert (=> d!1498219 m!5631555))

(declare-fun m!5631557 () Bool)

(assert (=> d!1498219 m!5631557))

(declare-fun m!5631559 () Bool)

(assert (=> bm!329110 m!5631559))

(declare-fun m!5631561 () Bool)

(assert (=> b!4707530 m!5631561))

(assert (=> b!4707368 d!1498219))

(declare-fun bs!1100142 () Bool)

(declare-fun d!1498267 () Bool)

(assert (= bs!1100142 (and d!1498267 start!478140)))

(declare-fun lambda!211948 () Int)

(assert (=> bs!1100142 (= lambda!211948 lambda!211883)))

(declare-fun bs!1100143 () Bool)

(assert (= bs!1100143 (and d!1498267 d!1498209)))

(assert (=> bs!1100143 (= lambda!211948 lambda!211889)))

(declare-fun lt!1872791 () ListMap!5097)

(assert (=> d!1498267 (invariantList!1464 (toList!5733 lt!1872791))))

(declare-fun e!2936443 () ListMap!5097)

(assert (=> d!1498267 (= lt!1872791 e!2936443)))

(declare-fun c!804476 () Bool)

(assert (=> d!1498267 (= c!804476 ((_ is Cons!52600) (t!359954 (toList!5734 lm!2023))))))

(assert (=> d!1498267 (forall!11443 (t!359954 (toList!5734 lm!2023)) lambda!211948)))

(assert (=> d!1498267 (= (extractMap!1948 (t!359954 (toList!5734 lm!2023))) lt!1872791)))

(declare-fun b!4707540 () Bool)

(assert (=> b!4707540 (= e!2936443 (addToMapMapFromBucket!1354 (_2!30336 (h!58899 (t!359954 (toList!5734 lm!2023)))) (extractMap!1948 (t!359954 (t!359954 (toList!5734 lm!2023))))))))

(declare-fun b!4707541 () Bool)

(assert (=> b!4707541 (= e!2936443 (ListMap!5098 Nil!52599))))

(assert (= (and d!1498267 c!804476) b!4707540))

(assert (= (and d!1498267 (not c!804476)) b!4707541))

(declare-fun m!5631563 () Bool)

(assert (=> d!1498267 m!5631563))

(declare-fun m!5631565 () Bool)

(assert (=> d!1498267 m!5631565))

(declare-fun m!5631567 () Bool)

(assert (=> b!4707540 m!5631567))

(assert (=> b!4707540 m!5631567))

(declare-fun m!5631569 () Bool)

(assert (=> b!4707540 m!5631569))

(assert (=> b!4707368 d!1498267))

(declare-fun d!1498269 () Bool)

(assert (=> d!1498269 (= (tail!8792 lm!2023) (ListLongMap!4264 (tail!8791 (toList!5734 lm!2023))))))

(declare-fun bs!1100144 () Bool)

(assert (= bs!1100144 d!1498269))

(assert (=> bs!1100144 m!5631265))

(assert (=> b!4707368 d!1498269))

(declare-fun d!1498271 () Bool)

(declare-fun res!1988851 () Bool)

(declare-fun e!2936448 () Bool)

(assert (=> d!1498271 (=> res!1988851 e!2936448)))

(assert (=> d!1498271 (= res!1988851 ((_ is Nil!52600) (toList!5734 lm!2023)))))

(assert (=> d!1498271 (= (forall!11443 (toList!5734 lm!2023) lambda!211883) e!2936448)))

(declare-fun b!4707546 () Bool)

(declare-fun e!2936449 () Bool)

(assert (=> b!4707546 (= e!2936448 e!2936449)))

(declare-fun res!1988852 () Bool)

(assert (=> b!4707546 (=> (not res!1988852) (not e!2936449))))

(declare-fun dynLambda!21767 (Int tuple2!54084) Bool)

(assert (=> b!4707546 (= res!1988852 (dynLambda!21767 lambda!211883 (h!58899 (toList!5734 lm!2023))))))

(declare-fun b!4707547 () Bool)

(assert (=> b!4707547 (= e!2936449 (forall!11443 (t!359954 (toList!5734 lm!2023)) lambda!211883))))

(assert (= (and d!1498271 (not res!1988851)) b!4707546))

(assert (= (and b!4707546 res!1988852) b!4707547))

(declare-fun b_lambda!177591 () Bool)

(assert (=> (not b_lambda!177591) (not b!4707546)))

(declare-fun m!5631571 () Bool)

(assert (=> b!4707546 m!5631571))

(declare-fun m!5631573 () Bool)

(assert (=> b!4707547 m!5631573))

(assert (=> start!478140 d!1498271))

(declare-fun d!1498273 () Bool)

(declare-fun isStrictlySorted!702 (List!52724) Bool)

(assert (=> d!1498273 (= (inv!67829 lm!2023) (isStrictlySorted!702 (toList!5734 lm!2023)))))

(declare-fun bs!1100145 () Bool)

(assert (= bs!1100145 d!1498273))

(declare-fun m!5631575 () Bool)

(assert (=> bs!1100145 m!5631575))

(assert (=> start!478140 d!1498273))

(declare-fun b!4707558 () Bool)

(declare-fun e!2936459 () List!52723)

(assert (=> b!4707558 (= e!2936459 (t!359953 (t!359953 oldBucket!34)))))

(declare-fun b!4707561 () Bool)

(declare-fun e!2936458 () List!52723)

(assert (=> b!4707561 (= e!2936458 Nil!52599)))

(declare-fun d!1498275 () Bool)

(declare-fun lt!1872818 () List!52723)

(assert (=> d!1498275 (not (containsKey!3229 lt!1872818 key!4653))))

(assert (=> d!1498275 (= lt!1872818 e!2936459)))

(declare-fun c!804481 () Bool)

(assert (=> d!1498275 (= c!804481 (and ((_ is Cons!52599) (t!359953 oldBucket!34)) (= (_1!30335 (h!58898 (t!359953 oldBucket!34))) key!4653)))))

(assert (=> d!1498275 (noDuplicateKeys!1922 (t!359953 oldBucket!34))))

(assert (=> d!1498275 (= (removePairForKey!1517 (t!359953 oldBucket!34) key!4653) lt!1872818)))

(declare-fun b!4707560 () Bool)

(assert (=> b!4707560 (= e!2936458 (Cons!52599 (h!58898 (t!359953 oldBucket!34)) (removePairForKey!1517 (t!359953 (t!359953 oldBucket!34)) key!4653)))))

(declare-fun b!4707559 () Bool)

(assert (=> b!4707559 (= e!2936459 e!2936458)))

(declare-fun c!804482 () Bool)

(assert (=> b!4707559 (= c!804482 ((_ is Cons!52599) (t!359953 oldBucket!34)))))

(assert (= (and d!1498275 c!804481) b!4707558))

(assert (= (and d!1498275 (not c!804481)) b!4707559))

(assert (= (and b!4707559 c!804482) b!4707560))

(assert (= (and b!4707559 (not c!804482)) b!4707561))

(declare-fun m!5631577 () Bool)

(assert (=> d!1498275 m!5631577))

(declare-fun m!5631579 () Bool)

(assert (=> d!1498275 m!5631579))

(declare-fun m!5631581 () Bool)

(assert (=> b!4707560 m!5631581))

(assert (=> b!4707385 d!1498275))

(declare-fun bs!1100146 () Bool)

(declare-fun d!1498277 () Bool)

(assert (= bs!1100146 (and d!1498277 start!478140)))

(declare-fun lambda!211967 () Int)

(assert (=> bs!1100146 (= lambda!211967 lambda!211883)))

(declare-fun bs!1100147 () Bool)

(assert (= bs!1100147 (and d!1498277 d!1498209)))

(assert (=> bs!1100147 (= lambda!211967 lambda!211889)))

(declare-fun bs!1100148 () Bool)

(assert (= bs!1100148 (and d!1498277 d!1498267)))

(assert (=> bs!1100148 (= lambda!211967 lambda!211948)))

(declare-fun lt!1872819 () ListMap!5097)

(assert (=> d!1498277 (invariantList!1464 (toList!5733 lt!1872819))))

(declare-fun e!2936460 () ListMap!5097)

(assert (=> d!1498277 (= lt!1872819 e!2936460)))

(declare-fun c!804483 () Bool)

(assert (=> d!1498277 (= c!804483 ((_ is Cons!52600) (Cons!52600 (tuple2!54085 hash!405 lt!1872598) (t!359954 (toList!5734 lm!2023)))))))

(assert (=> d!1498277 (forall!11443 (Cons!52600 (tuple2!54085 hash!405 lt!1872598) (t!359954 (toList!5734 lm!2023))) lambda!211967)))

(assert (=> d!1498277 (= (extractMap!1948 (Cons!52600 (tuple2!54085 hash!405 lt!1872598) (t!359954 (toList!5734 lm!2023)))) lt!1872819)))

(declare-fun b!4707564 () Bool)

(assert (=> b!4707564 (= e!2936460 (addToMapMapFromBucket!1354 (_2!30336 (h!58899 (Cons!52600 (tuple2!54085 hash!405 lt!1872598) (t!359954 (toList!5734 lm!2023))))) (extractMap!1948 (t!359954 (Cons!52600 (tuple2!54085 hash!405 lt!1872598) (t!359954 (toList!5734 lm!2023)))))))))

(declare-fun b!4707565 () Bool)

(assert (=> b!4707565 (= e!2936460 (ListMap!5098 Nil!52599))))

(assert (= (and d!1498277 c!804483) b!4707564))

(assert (= (and d!1498277 (not c!804483)) b!4707565))

(declare-fun m!5631583 () Bool)

(assert (=> d!1498277 m!5631583))

(declare-fun m!5631585 () Bool)

(assert (=> d!1498277 m!5631585))

(declare-fun m!5631587 () Bool)

(assert (=> b!4707564 m!5631587))

(assert (=> b!4707564 m!5631587))

(declare-fun m!5631589 () Bool)

(assert (=> b!4707564 m!5631589))

(assert (=> b!4707386 d!1498277))

(declare-fun d!1498279 () Bool)

(declare-fun e!2936466 () Bool)

(assert (=> d!1498279 e!2936466))

(declare-fun res!1988866 () Bool)

(assert (=> d!1498279 (=> (not res!1988866) (not e!2936466))))

(declare-fun lt!1872851 () ListMap!5097)

(assert (=> d!1498279 (= res!1988866 (contains!15922 lt!1872851 (_1!30335 (h!58898 oldBucket!34))))))

(declare-fun lt!1872852 () List!52723)

(assert (=> d!1498279 (= lt!1872851 (ListMap!5098 lt!1872852))))

(declare-fun lt!1872850 () Unit!127368)

(declare-fun lt!1872849 () Unit!127368)

(assert (=> d!1498279 (= lt!1872850 lt!1872849)))

(declare-datatypes ((Option!12256 0))(
  ( (None!12255) (Some!12255 (v!46782 V!14201)) )
))
(declare-fun getValueByKey!1888 (List!52723 K!13955) Option!12256)

(assert (=> d!1498279 (= (getValueByKey!1888 lt!1872852 (_1!30335 (h!58898 oldBucket!34))) (Some!12255 (_2!30335 (h!58898 oldBucket!34))))))

(declare-fun lemmaContainsTupThenGetReturnValue!1054 (List!52723 K!13955 V!14201) Unit!127368)

(assert (=> d!1498279 (= lt!1872849 (lemmaContainsTupThenGetReturnValue!1054 lt!1872852 (_1!30335 (h!58898 oldBucket!34)) (_2!30335 (h!58898 oldBucket!34))))))

(declare-fun insertNoDuplicatedKeys!562 (List!52723 K!13955 V!14201) List!52723)

(assert (=> d!1498279 (= lt!1872852 (insertNoDuplicatedKeys!562 (toList!5733 lt!1872584) (_1!30335 (h!58898 oldBucket!34)) (_2!30335 (h!58898 oldBucket!34))))))

(assert (=> d!1498279 (= (+!2206 lt!1872584 (h!58898 oldBucket!34)) lt!1872851)))

(declare-fun b!4707579 () Bool)

(declare-fun res!1988867 () Bool)

(assert (=> b!4707579 (=> (not res!1988867) (not e!2936466))))

(assert (=> b!4707579 (= res!1988867 (= (getValueByKey!1888 (toList!5733 lt!1872851) (_1!30335 (h!58898 oldBucket!34))) (Some!12255 (_2!30335 (h!58898 oldBucket!34)))))))

(declare-fun b!4707580 () Bool)

(declare-fun contains!15924 (List!52723 tuple2!54082) Bool)

(assert (=> b!4707580 (= e!2936466 (contains!15924 (toList!5733 lt!1872851) (h!58898 oldBucket!34)))))

(assert (= (and d!1498279 res!1988866) b!4707579))

(assert (= (and b!4707579 res!1988867) b!4707580))

(declare-fun m!5631611 () Bool)

(assert (=> d!1498279 m!5631611))

(declare-fun m!5631613 () Bool)

(assert (=> d!1498279 m!5631613))

(declare-fun m!5631617 () Bool)

(assert (=> d!1498279 m!5631617))

(declare-fun m!5631623 () Bool)

(assert (=> d!1498279 m!5631623))

(declare-fun m!5631625 () Bool)

(assert (=> b!4707579 m!5631625))

(declare-fun m!5631629 () Bool)

(assert (=> b!4707580 m!5631629))

(assert (=> b!4707386 d!1498279))

(declare-fun bs!1100169 () Bool)

(declare-fun d!1498281 () Bool)

(assert (= bs!1100169 (and d!1498281 start!478140)))

(declare-fun lambda!211978 () Int)

(assert (=> bs!1100169 (= lambda!211978 lambda!211883)))

(declare-fun bs!1100171 () Bool)

(assert (= bs!1100171 (and d!1498281 d!1498209)))

(assert (=> bs!1100171 (= lambda!211978 lambda!211889)))

(declare-fun bs!1100173 () Bool)

(assert (= bs!1100173 (and d!1498281 d!1498267)))

(assert (=> bs!1100173 (= lambda!211978 lambda!211948)))

(declare-fun bs!1100175 () Bool)

(assert (= bs!1100175 (and d!1498281 d!1498277)))

(assert (=> bs!1100175 (= lambda!211978 lambda!211967)))

(assert (=> d!1498281 (contains!15922 (extractMap!1948 (toList!5734 lt!1872577)) key!4653)))

(declare-fun lt!1872862 () Unit!127368)

(declare-fun choose!33094 (ListLongMap!4263 K!13955 Hashable!6291) Unit!127368)

(assert (=> d!1498281 (= lt!1872862 (choose!33094 lt!1872577 key!4653 hashF!1323))))

(assert (=> d!1498281 (forall!11443 (toList!5734 lt!1872577) lambda!211978)))

(assert (=> d!1498281 (= (lemmaListContainsThenExtractedMapContains!514 lt!1872577 key!4653 hashF!1323) lt!1872862)))

(declare-fun bs!1100179 () Bool)

(assert (= bs!1100179 d!1498281))

(declare-fun m!5631667 () Bool)

(assert (=> bs!1100179 m!5631667))

(assert (=> bs!1100179 m!5631667))

(declare-fun m!5631669 () Bool)

(assert (=> bs!1100179 m!5631669))

(declare-fun m!5631671 () Bool)

(assert (=> bs!1100179 m!5631671))

(declare-fun m!5631673 () Bool)

(assert (=> bs!1100179 m!5631673))

(assert (=> b!4707386 d!1498281))

(declare-fun d!1498301 () Bool)

(assert (=> d!1498301 (= (eq!1081 lt!1872611 (+!2206 lt!1872584 (h!58898 oldBucket!34))) (= (content!9322 (toList!5733 lt!1872611)) (content!9322 (toList!5733 (+!2206 lt!1872584 (h!58898 oldBucket!34))))))))

(declare-fun bs!1100180 () Bool)

(assert (= bs!1100180 d!1498301))

(declare-fun m!5631681 () Bool)

(assert (=> bs!1100180 m!5631681))

(declare-fun m!5631683 () Bool)

(assert (=> bs!1100180 m!5631683))

(assert (=> b!4707386 d!1498301))

(declare-fun d!1498303 () Bool)

(assert (=> d!1498303 (= (eq!1081 (addToMapMapFromBucket!1354 (Cons!52599 lt!1872585 lt!1872571) lt!1872599) (+!2206 (addToMapMapFromBucket!1354 lt!1872571 lt!1872599) lt!1872585)) (= (content!9322 (toList!5733 (addToMapMapFromBucket!1354 (Cons!52599 lt!1872585 lt!1872571) lt!1872599))) (content!9322 (toList!5733 (+!2206 (addToMapMapFromBucket!1354 lt!1872571 lt!1872599) lt!1872585)))))))

(declare-fun bs!1100181 () Bool)

(assert (= bs!1100181 d!1498303))

(declare-fun m!5631687 () Bool)

(assert (=> bs!1100181 m!5631687))

(declare-fun m!5631689 () Bool)

(assert (=> bs!1100181 m!5631689))

(assert (=> b!4707386 d!1498303))

(declare-fun d!1498307 () Bool)

(assert (=> d!1498307 (= (eq!1081 (addToMapMapFromBucket!1354 (Cons!52599 lt!1872591 lt!1872598) lt!1872599) (+!2206 (addToMapMapFromBucket!1354 lt!1872598 lt!1872599) lt!1872591)) (= (content!9322 (toList!5733 (addToMapMapFromBucket!1354 (Cons!52599 lt!1872591 lt!1872598) lt!1872599))) (content!9322 (toList!5733 (+!2206 (addToMapMapFromBucket!1354 lt!1872598 lt!1872599) lt!1872591)))))))

(declare-fun bs!1100182 () Bool)

(assert (= bs!1100182 d!1498307))

(declare-fun m!5631691 () Bool)

(assert (=> bs!1100182 m!5631691))

(declare-fun m!5631693 () Bool)

(assert (=> bs!1100182 m!5631693))

(assert (=> b!4707386 d!1498307))

(declare-fun bs!1100183 () Bool)

(declare-fun b!4707592 () Bool)

(assert (= bs!1100183 (and b!4707592 b!4707531)))

(declare-fun lambda!211979 () Int)

(assert (=> bs!1100183 (= lambda!211979 lambda!211936)))

(declare-fun bs!1100184 () Bool)

(assert (= bs!1100184 (and b!4707592 b!4707529)))

(assert (=> bs!1100184 (= lambda!211979 lambda!211937)))

(assert (=> bs!1100184 (= (= lt!1872599 lt!1872770) (= lambda!211979 lambda!211938))))

(declare-fun bs!1100185 () Bool)

(assert (= bs!1100185 (and b!4707592 d!1498219)))

(assert (=> bs!1100185 (= (= lt!1872599 lt!1872769) (= lambda!211979 lambda!211941))))

(assert (=> b!4707592 true))

(declare-fun bs!1100186 () Bool)

(declare-fun b!4707590 () Bool)

(assert (= bs!1100186 (and b!4707590 b!4707592)))

(declare-fun lambda!211982 () Int)

(assert (=> bs!1100186 (= lambda!211982 lambda!211979)))

(declare-fun bs!1100187 () Bool)

(assert (= bs!1100187 (and b!4707590 b!4707529)))

(assert (=> bs!1100187 (= lambda!211982 lambda!211937)))

(declare-fun bs!1100188 () Bool)

(assert (= bs!1100188 (and b!4707590 b!4707531)))

(assert (=> bs!1100188 (= lambda!211982 lambda!211936)))

(declare-fun bs!1100189 () Bool)

(assert (= bs!1100189 (and b!4707590 d!1498219)))

(assert (=> bs!1100189 (= (= lt!1872599 lt!1872769) (= lambda!211982 lambda!211941))))

(assert (=> bs!1100187 (= (= lt!1872599 lt!1872770) (= lambda!211982 lambda!211938))))

(assert (=> b!4707590 true))

(declare-fun lambda!211983 () Int)

(declare-fun lt!1872881 () ListMap!5097)

(assert (=> bs!1100186 (= (= lt!1872881 lt!1872599) (= lambda!211983 lambda!211979))))

(assert (=> bs!1100187 (= (= lt!1872881 lt!1872599) (= lambda!211983 lambda!211937))))

(assert (=> b!4707590 (= (= lt!1872881 lt!1872599) (= lambda!211983 lambda!211982))))

(assert (=> bs!1100188 (= (= lt!1872881 lt!1872599) (= lambda!211983 lambda!211936))))

(assert (=> bs!1100189 (= (= lt!1872881 lt!1872769) (= lambda!211983 lambda!211941))))

(assert (=> bs!1100187 (= (= lt!1872881 lt!1872770) (= lambda!211983 lambda!211938))))

(assert (=> b!4707590 true))

(declare-fun bs!1100200 () Bool)

(declare-fun d!1498309 () Bool)

(assert (= bs!1100200 (and d!1498309 b!4707592)))

(declare-fun lambda!211985 () Int)

(declare-fun lt!1872880 () ListMap!5097)

(assert (=> bs!1100200 (= (= lt!1872880 lt!1872599) (= lambda!211985 lambda!211979))))

(declare-fun bs!1100201 () Bool)

(assert (= bs!1100201 (and d!1498309 b!4707590)))

(assert (=> bs!1100201 (= (= lt!1872880 lt!1872881) (= lambda!211985 lambda!211983))))

(declare-fun bs!1100202 () Bool)

(assert (= bs!1100202 (and d!1498309 b!4707529)))

(assert (=> bs!1100202 (= (= lt!1872880 lt!1872599) (= lambda!211985 lambda!211937))))

(assert (=> bs!1100201 (= (= lt!1872880 lt!1872599) (= lambda!211985 lambda!211982))))

(declare-fun bs!1100203 () Bool)

(assert (= bs!1100203 (and d!1498309 b!4707531)))

(assert (=> bs!1100203 (= (= lt!1872880 lt!1872599) (= lambda!211985 lambda!211936))))

(declare-fun bs!1100204 () Bool)

(assert (= bs!1100204 (and d!1498309 d!1498219)))

(assert (=> bs!1100204 (= (= lt!1872880 lt!1872769) (= lambda!211985 lambda!211941))))

(assert (=> bs!1100202 (= (= lt!1872880 lt!1872770) (= lambda!211985 lambda!211938))))

(assert (=> d!1498309 true))

(declare-fun call!329128 () Bool)

(declare-fun bm!329121 () Bool)

(declare-fun c!804489 () Bool)

(assert (=> bm!329121 (= call!329128 (forall!11445 (ite c!804489 (toList!5733 lt!1872599) (t!359953 lt!1872571)) (ite c!804489 lambda!211979 lambda!211983)))))

(declare-fun e!2936472 () ListMap!5097)

(assert (=> b!4707590 (= e!2936472 lt!1872881)))

(declare-fun lt!1872883 () ListMap!5097)

(assert (=> b!4707590 (= lt!1872883 (+!2206 lt!1872599 (h!58898 lt!1872571)))))

(assert (=> b!4707590 (= lt!1872881 (addToMapMapFromBucket!1354 (t!359953 lt!1872571) (+!2206 lt!1872599 (h!58898 lt!1872571))))))

(declare-fun lt!1872875 () Unit!127368)

(declare-fun call!329127 () Unit!127368)

(assert (=> b!4707590 (= lt!1872875 call!329127)))

(assert (=> b!4707590 (forall!11445 (toList!5733 lt!1872599) lambda!211982)))

(declare-fun lt!1872873 () Unit!127368)

(assert (=> b!4707590 (= lt!1872873 lt!1872875)))

(assert (=> b!4707590 (forall!11445 (toList!5733 lt!1872883) lambda!211983)))

(declare-fun lt!1872869 () Unit!127368)

(declare-fun Unit!127393 () Unit!127368)

(assert (=> b!4707590 (= lt!1872869 Unit!127393)))

(assert (=> b!4707590 call!329128))

(declare-fun lt!1872868 () Unit!127368)

(declare-fun Unit!127394 () Unit!127368)

(assert (=> b!4707590 (= lt!1872868 Unit!127394)))

(declare-fun lt!1872870 () Unit!127368)

(declare-fun Unit!127395 () Unit!127368)

(assert (=> b!4707590 (= lt!1872870 Unit!127395)))

(declare-fun lt!1872863 () Unit!127368)

(assert (=> b!4707590 (= lt!1872863 (forallContained!3551 (toList!5733 lt!1872883) lambda!211983 (h!58898 lt!1872571)))))

(assert (=> b!4707590 (contains!15922 lt!1872883 (_1!30335 (h!58898 lt!1872571)))))

(declare-fun lt!1872871 () Unit!127368)

(declare-fun Unit!127396 () Unit!127368)

(assert (=> b!4707590 (= lt!1872871 Unit!127396)))

(assert (=> b!4707590 (contains!15922 lt!1872881 (_1!30335 (h!58898 lt!1872571)))))

(declare-fun lt!1872876 () Unit!127368)

(declare-fun Unit!127397 () Unit!127368)

(assert (=> b!4707590 (= lt!1872876 Unit!127397)))

(assert (=> b!4707590 (forall!11445 lt!1872571 lambda!211983)))

(declare-fun lt!1872874 () Unit!127368)

(declare-fun Unit!127398 () Unit!127368)

(assert (=> b!4707590 (= lt!1872874 Unit!127398)))

(assert (=> b!4707590 (forall!11445 (toList!5733 lt!1872883) lambda!211983)))

(declare-fun lt!1872865 () Unit!127368)

(declare-fun Unit!127399 () Unit!127368)

(assert (=> b!4707590 (= lt!1872865 Unit!127399)))

(declare-fun lt!1872877 () Unit!127368)

(declare-fun Unit!127400 () Unit!127368)

(assert (=> b!4707590 (= lt!1872877 Unit!127400)))

(declare-fun lt!1872867 () Unit!127368)

(assert (=> b!4707590 (= lt!1872867 (addForallContainsKeyThenBeforeAdding!750 lt!1872599 lt!1872881 (_1!30335 (h!58898 lt!1872571)) (_2!30335 (h!58898 lt!1872571))))))

(assert (=> b!4707590 (forall!11445 (toList!5733 lt!1872599) lambda!211983)))

(declare-fun lt!1872882 () Unit!127368)

(assert (=> b!4707590 (= lt!1872882 lt!1872867)))

(assert (=> b!4707590 (forall!11445 (toList!5733 lt!1872599) lambda!211983)))

(declare-fun lt!1872879 () Unit!127368)

(declare-fun Unit!127401 () Unit!127368)

(assert (=> b!4707590 (= lt!1872879 Unit!127401)))

(declare-fun res!1988871 () Bool)

(assert (=> b!4707590 (= res!1988871 (forall!11445 lt!1872571 lambda!211983))))

(declare-fun e!2936474 () Bool)

(assert (=> b!4707590 (=> (not res!1988871) (not e!2936474))))

(assert (=> b!4707590 e!2936474))

(declare-fun lt!1872878 () Unit!127368)

(declare-fun Unit!127402 () Unit!127368)

(assert (=> b!4707590 (= lt!1872878 Unit!127402)))

(declare-fun b!4707591 () Bool)

(declare-fun res!1988870 () Bool)

(declare-fun e!2936473 () Bool)

(assert (=> b!4707591 (=> (not res!1988870) (not e!2936473))))

(assert (=> b!4707591 (= res!1988870 (forall!11445 (toList!5733 lt!1872599) lambda!211985))))

(assert (=> b!4707592 (= e!2936472 lt!1872599)))

(declare-fun lt!1872872 () Unit!127368)

(assert (=> b!4707592 (= lt!1872872 call!329127)))

(declare-fun call!329126 () Bool)

(assert (=> b!4707592 call!329126))

(declare-fun lt!1872866 () Unit!127368)

(assert (=> b!4707592 (= lt!1872866 lt!1872872)))

(assert (=> b!4707592 call!329128))

(declare-fun lt!1872864 () Unit!127368)

(declare-fun Unit!127403 () Unit!127368)

(assert (=> b!4707592 (= lt!1872864 Unit!127403)))

(declare-fun b!4707593 () Bool)

(assert (=> b!4707593 (= e!2936473 (invariantList!1464 (toList!5733 lt!1872880)))))

(declare-fun bm!329122 () Bool)

(assert (=> bm!329122 (= call!329126 (forall!11445 (toList!5733 lt!1872599) (ite c!804489 lambda!211979 lambda!211983)))))

(assert (=> d!1498309 e!2936473))

(declare-fun res!1988869 () Bool)

(assert (=> d!1498309 (=> (not res!1988869) (not e!2936473))))

(assert (=> d!1498309 (= res!1988869 (forall!11445 lt!1872571 lambda!211985))))

(assert (=> d!1498309 (= lt!1872880 e!2936472)))

(assert (=> d!1498309 (= c!804489 ((_ is Nil!52599) lt!1872571))))

(assert (=> d!1498309 (noDuplicateKeys!1922 lt!1872571)))

(assert (=> d!1498309 (= (addToMapMapFromBucket!1354 lt!1872571 lt!1872599) lt!1872880)))

(declare-fun b!4707594 () Bool)

(assert (=> b!4707594 (= e!2936474 call!329126)))

(declare-fun bm!329123 () Bool)

(assert (=> bm!329123 (= call!329127 (lemmaContainsAllItsOwnKeys!752 lt!1872599))))

(assert (= (and d!1498309 c!804489) b!4707592))

(assert (= (and d!1498309 (not c!804489)) b!4707590))

(assert (= (and b!4707590 res!1988871) b!4707594))

(assert (= (or b!4707592 b!4707590) bm!329123))

(assert (= (or b!4707592 b!4707594) bm!329122))

(assert (= (or b!4707592 b!4707590) bm!329121))

(assert (= (and d!1498309 res!1988869) b!4707591))

(assert (= (and b!4707591 res!1988870) b!4707593))

(declare-fun m!5631697 () Bool)

(assert (=> bm!329121 m!5631697))

(declare-fun m!5631699 () Bool)

(assert (=> b!4707590 m!5631699))

(declare-fun m!5631701 () Bool)

(assert (=> b!4707590 m!5631701))

(declare-fun m!5631703 () Bool)

(assert (=> b!4707590 m!5631703))

(declare-fun m!5631705 () Bool)

(assert (=> b!4707590 m!5631705))

(declare-fun m!5631707 () Bool)

(assert (=> b!4707590 m!5631707))

(declare-fun m!5631709 () Bool)

(assert (=> b!4707590 m!5631709))

(assert (=> b!4707590 m!5631701))

(assert (=> b!4707590 m!5631709))

(declare-fun m!5631711 () Bool)

(assert (=> b!4707590 m!5631711))

(declare-fun m!5631715 () Bool)

(assert (=> b!4707590 m!5631715))

(declare-fun m!5631717 () Bool)

(assert (=> b!4707590 m!5631717))

(assert (=> b!4707590 m!5631705))

(assert (=> b!4707590 m!5631699))

(declare-fun m!5631721 () Bool)

(assert (=> b!4707590 m!5631721))

(assert (=> bm!329123 m!5631551))

(declare-fun m!5631723 () Bool)

(assert (=> b!4707593 m!5631723))

(declare-fun m!5631725 () Bool)

(assert (=> d!1498309 m!5631725))

(declare-fun m!5631727 () Bool)

(assert (=> d!1498309 m!5631727))

(declare-fun m!5631729 () Bool)

(assert (=> bm!329122 m!5631729))

(declare-fun m!5631731 () Bool)

(assert (=> b!4707591 m!5631731))

(assert (=> b!4707386 d!1498309))

(declare-fun bs!1100210 () Bool)

(declare-fun b!4707607 () Bool)

(assert (= bs!1100210 (and b!4707607 b!4707592)))

(declare-fun lambda!211987 () Int)

(assert (=> bs!1100210 (= lambda!211987 lambda!211979)))

(declare-fun bs!1100212 () Bool)

(assert (= bs!1100212 (and b!4707607 b!4707590)))

(assert (=> bs!1100212 (= (= lt!1872599 lt!1872881) (= lambda!211987 lambda!211983))))

(declare-fun bs!1100214 () Bool)

(assert (= bs!1100214 (and b!4707607 b!4707529)))

(assert (=> bs!1100214 (= lambda!211987 lambda!211937)))

(declare-fun bs!1100216 () Bool)

(assert (= bs!1100216 (and b!4707607 d!1498309)))

(assert (=> bs!1100216 (= (= lt!1872599 lt!1872880) (= lambda!211987 lambda!211985))))

(assert (=> bs!1100212 (= lambda!211987 lambda!211982)))

(declare-fun bs!1100219 () Bool)

(assert (= bs!1100219 (and b!4707607 b!4707531)))

(assert (=> bs!1100219 (= lambda!211987 lambda!211936)))

(declare-fun bs!1100220 () Bool)

(assert (= bs!1100220 (and b!4707607 d!1498219)))

(assert (=> bs!1100220 (= (= lt!1872599 lt!1872769) (= lambda!211987 lambda!211941))))

(assert (=> bs!1100214 (= (= lt!1872599 lt!1872770) (= lambda!211987 lambda!211938))))

(assert (=> b!4707607 true))

(declare-fun bs!1100221 () Bool)

(declare-fun b!4707605 () Bool)

(assert (= bs!1100221 (and b!4707605 b!4707592)))

(declare-fun lambda!211988 () Int)

(assert (=> bs!1100221 (= lambda!211988 lambda!211979)))

(declare-fun bs!1100222 () Bool)

(assert (= bs!1100222 (and b!4707605 b!4707590)))

(assert (=> bs!1100222 (= (= lt!1872599 lt!1872881) (= lambda!211988 lambda!211983))))

(declare-fun bs!1100223 () Bool)

(assert (= bs!1100223 (and b!4707605 b!4707529)))

(assert (=> bs!1100223 (= lambda!211988 lambda!211937)))

(declare-fun bs!1100224 () Bool)

(assert (= bs!1100224 (and b!4707605 d!1498309)))

(assert (=> bs!1100224 (= (= lt!1872599 lt!1872880) (= lambda!211988 lambda!211985))))

(assert (=> bs!1100222 (= lambda!211988 lambda!211982)))

(declare-fun bs!1100225 () Bool)

(assert (= bs!1100225 (and b!4707605 b!4707531)))

(assert (=> bs!1100225 (= lambda!211988 lambda!211936)))

(declare-fun bs!1100226 () Bool)

(assert (= bs!1100226 (and b!4707605 d!1498219)))

(assert (=> bs!1100226 (= (= lt!1872599 lt!1872769) (= lambda!211988 lambda!211941))))

(declare-fun bs!1100227 () Bool)

(assert (= bs!1100227 (and b!4707605 b!4707607)))

(assert (=> bs!1100227 (= lambda!211988 lambda!211987)))

(assert (=> bs!1100223 (= (= lt!1872599 lt!1872770) (= lambda!211988 lambda!211938))))

(assert (=> b!4707605 true))

(declare-fun lt!1872903 () ListMap!5097)

(declare-fun lambda!211989 () Int)

(assert (=> bs!1100221 (= (= lt!1872903 lt!1872599) (= lambda!211989 lambda!211979))))

(assert (=> bs!1100222 (= (= lt!1872903 lt!1872881) (= lambda!211989 lambda!211983))))

(assert (=> bs!1100223 (= (= lt!1872903 lt!1872599) (= lambda!211989 lambda!211937))))

(assert (=> bs!1100224 (= (= lt!1872903 lt!1872880) (= lambda!211989 lambda!211985))))

(assert (=> bs!1100222 (= (= lt!1872903 lt!1872599) (= lambda!211989 lambda!211982))))

(assert (=> bs!1100225 (= (= lt!1872903 lt!1872599) (= lambda!211989 lambda!211936))))

(assert (=> bs!1100226 (= (= lt!1872903 lt!1872769) (= lambda!211989 lambda!211941))))

(assert (=> b!4707605 (= (= lt!1872903 lt!1872599) (= lambda!211989 lambda!211988))))

(assert (=> bs!1100227 (= (= lt!1872903 lt!1872599) (= lambda!211989 lambda!211987))))

(assert (=> bs!1100223 (= (= lt!1872903 lt!1872770) (= lambda!211989 lambda!211938))))

(assert (=> b!4707605 true))

(declare-fun bs!1100238 () Bool)

(declare-fun d!1498315 () Bool)

(assert (= bs!1100238 (and d!1498315 b!4707592)))

(declare-fun lambda!211992 () Int)

(declare-fun lt!1872902 () ListMap!5097)

(assert (=> bs!1100238 (= (= lt!1872902 lt!1872599) (= lambda!211992 lambda!211979))))

(declare-fun bs!1100239 () Bool)

(assert (= bs!1100239 (and d!1498315 b!4707590)))

(assert (=> bs!1100239 (= (= lt!1872902 lt!1872881) (= lambda!211992 lambda!211983))))

(declare-fun bs!1100240 () Bool)

(assert (= bs!1100240 (and d!1498315 b!4707529)))

(assert (=> bs!1100240 (= (= lt!1872902 lt!1872599) (= lambda!211992 lambda!211937))))

(declare-fun bs!1100241 () Bool)

(assert (= bs!1100241 (and d!1498315 d!1498309)))

(assert (=> bs!1100241 (= (= lt!1872902 lt!1872880) (= lambda!211992 lambda!211985))))

(assert (=> bs!1100239 (= (= lt!1872902 lt!1872599) (= lambda!211992 lambda!211982))))

(declare-fun bs!1100242 () Bool)

(assert (= bs!1100242 (and d!1498315 b!4707531)))

(assert (=> bs!1100242 (= (= lt!1872902 lt!1872599) (= lambda!211992 lambda!211936))))

(declare-fun bs!1100243 () Bool)

(assert (= bs!1100243 (and d!1498315 b!4707605)))

(assert (=> bs!1100243 (= (= lt!1872902 lt!1872599) (= lambda!211992 lambda!211988))))

(declare-fun bs!1100244 () Bool)

(assert (= bs!1100244 (and d!1498315 b!4707607)))

(assert (=> bs!1100244 (= (= lt!1872902 lt!1872599) (= lambda!211992 lambda!211987))))

(assert (=> bs!1100240 (= (= lt!1872902 lt!1872770) (= lambda!211992 lambda!211938))))

(assert (=> bs!1100243 (= (= lt!1872902 lt!1872903) (= lambda!211992 lambda!211989))))

(declare-fun bs!1100245 () Bool)

(assert (= bs!1100245 (and d!1498315 d!1498219)))

(assert (=> bs!1100245 (= (= lt!1872902 lt!1872769) (= lambda!211992 lambda!211941))))

(assert (=> d!1498315 true))

(declare-fun bm!329124 () Bool)

(declare-fun c!804491 () Bool)

(declare-fun call!329131 () Bool)

(assert (=> bm!329124 (= call!329131 (forall!11445 (ite c!804491 (toList!5733 lt!1872599) (t!359953 lt!1872598)) (ite c!804491 lambda!211987 lambda!211989)))))

(declare-fun e!2936482 () ListMap!5097)

(assert (=> b!4707605 (= e!2936482 lt!1872903)))

(declare-fun lt!1872905 () ListMap!5097)

(assert (=> b!4707605 (= lt!1872905 (+!2206 lt!1872599 (h!58898 lt!1872598)))))

(assert (=> b!4707605 (= lt!1872903 (addToMapMapFromBucket!1354 (t!359953 lt!1872598) (+!2206 lt!1872599 (h!58898 lt!1872598))))))

(declare-fun lt!1872897 () Unit!127368)

(declare-fun call!329130 () Unit!127368)

(assert (=> b!4707605 (= lt!1872897 call!329130)))

(assert (=> b!4707605 (forall!11445 (toList!5733 lt!1872599) lambda!211988)))

(declare-fun lt!1872895 () Unit!127368)

(assert (=> b!4707605 (= lt!1872895 lt!1872897)))

(assert (=> b!4707605 (forall!11445 (toList!5733 lt!1872905) lambda!211989)))

(declare-fun lt!1872891 () Unit!127368)

(declare-fun Unit!127408 () Unit!127368)

(assert (=> b!4707605 (= lt!1872891 Unit!127408)))

(assert (=> b!4707605 call!329131))

(declare-fun lt!1872890 () Unit!127368)

(declare-fun Unit!127409 () Unit!127368)

(assert (=> b!4707605 (= lt!1872890 Unit!127409)))

(declare-fun lt!1872892 () Unit!127368)

(declare-fun Unit!127410 () Unit!127368)

(assert (=> b!4707605 (= lt!1872892 Unit!127410)))

(declare-fun lt!1872885 () Unit!127368)

(assert (=> b!4707605 (= lt!1872885 (forallContained!3551 (toList!5733 lt!1872905) lambda!211989 (h!58898 lt!1872598)))))

(assert (=> b!4707605 (contains!15922 lt!1872905 (_1!30335 (h!58898 lt!1872598)))))

(declare-fun lt!1872893 () Unit!127368)

(declare-fun Unit!127413 () Unit!127368)

(assert (=> b!4707605 (= lt!1872893 Unit!127413)))

(assert (=> b!4707605 (contains!15922 lt!1872903 (_1!30335 (h!58898 lt!1872598)))))

(declare-fun lt!1872898 () Unit!127368)

(declare-fun Unit!127415 () Unit!127368)

(assert (=> b!4707605 (= lt!1872898 Unit!127415)))

(assert (=> b!4707605 (forall!11445 lt!1872598 lambda!211989)))

(declare-fun lt!1872896 () Unit!127368)

(declare-fun Unit!127417 () Unit!127368)

(assert (=> b!4707605 (= lt!1872896 Unit!127417)))

(assert (=> b!4707605 (forall!11445 (toList!5733 lt!1872905) lambda!211989)))

(declare-fun lt!1872887 () Unit!127368)

(declare-fun Unit!127419 () Unit!127368)

(assert (=> b!4707605 (= lt!1872887 Unit!127419)))

(declare-fun lt!1872899 () Unit!127368)

(declare-fun Unit!127420 () Unit!127368)

(assert (=> b!4707605 (= lt!1872899 Unit!127420)))

(declare-fun lt!1872889 () Unit!127368)

(assert (=> b!4707605 (= lt!1872889 (addForallContainsKeyThenBeforeAdding!750 lt!1872599 lt!1872903 (_1!30335 (h!58898 lt!1872598)) (_2!30335 (h!58898 lt!1872598))))))

(assert (=> b!4707605 (forall!11445 (toList!5733 lt!1872599) lambda!211989)))

(declare-fun lt!1872904 () Unit!127368)

(assert (=> b!4707605 (= lt!1872904 lt!1872889)))

(assert (=> b!4707605 (forall!11445 (toList!5733 lt!1872599) lambda!211989)))

(declare-fun lt!1872901 () Unit!127368)

(declare-fun Unit!127422 () Unit!127368)

(assert (=> b!4707605 (= lt!1872901 Unit!127422)))

(declare-fun res!1988880 () Bool)

(assert (=> b!4707605 (= res!1988880 (forall!11445 lt!1872598 lambda!211989))))

(declare-fun e!2936484 () Bool)

(assert (=> b!4707605 (=> (not res!1988880) (not e!2936484))))

(assert (=> b!4707605 e!2936484))

(declare-fun lt!1872900 () Unit!127368)

(declare-fun Unit!127424 () Unit!127368)

(assert (=> b!4707605 (= lt!1872900 Unit!127424)))

(declare-fun b!4707606 () Bool)

(declare-fun res!1988879 () Bool)

(declare-fun e!2936483 () Bool)

(assert (=> b!4707606 (=> (not res!1988879) (not e!2936483))))

(assert (=> b!4707606 (= res!1988879 (forall!11445 (toList!5733 lt!1872599) lambda!211992))))

(assert (=> b!4707607 (= e!2936482 lt!1872599)))

(declare-fun lt!1872894 () Unit!127368)

(assert (=> b!4707607 (= lt!1872894 call!329130)))

(declare-fun call!329129 () Bool)

(assert (=> b!4707607 call!329129))

(declare-fun lt!1872888 () Unit!127368)

(assert (=> b!4707607 (= lt!1872888 lt!1872894)))

(assert (=> b!4707607 call!329131))

(declare-fun lt!1872886 () Unit!127368)

(declare-fun Unit!127425 () Unit!127368)

(assert (=> b!4707607 (= lt!1872886 Unit!127425)))

(declare-fun b!4707608 () Bool)

(assert (=> b!4707608 (= e!2936483 (invariantList!1464 (toList!5733 lt!1872902)))))

(declare-fun bm!329125 () Bool)

(assert (=> bm!329125 (= call!329129 (forall!11445 (toList!5733 lt!1872599) (ite c!804491 lambda!211987 lambda!211989)))))

(assert (=> d!1498315 e!2936483))

(declare-fun res!1988878 () Bool)

(assert (=> d!1498315 (=> (not res!1988878) (not e!2936483))))

(assert (=> d!1498315 (= res!1988878 (forall!11445 lt!1872598 lambda!211992))))

(assert (=> d!1498315 (= lt!1872902 e!2936482)))

(assert (=> d!1498315 (= c!804491 ((_ is Nil!52599) lt!1872598))))

(assert (=> d!1498315 (noDuplicateKeys!1922 lt!1872598)))

(assert (=> d!1498315 (= (addToMapMapFromBucket!1354 lt!1872598 lt!1872599) lt!1872902)))

(declare-fun b!4707609 () Bool)

(assert (=> b!4707609 (= e!2936484 call!329129)))

(declare-fun bm!329126 () Bool)

(assert (=> bm!329126 (= call!329130 (lemmaContainsAllItsOwnKeys!752 lt!1872599))))

(assert (= (and d!1498315 c!804491) b!4707607))

(assert (= (and d!1498315 (not c!804491)) b!4707605))

(assert (= (and b!4707605 res!1988880) b!4707609))

(assert (= (or b!4707607 b!4707605) bm!329126))

(assert (= (or b!4707607 b!4707609) bm!329125))

(assert (= (or b!4707607 b!4707605) bm!329124))

(assert (= (and d!1498315 res!1988878) b!4707606))

(assert (= (and b!4707606 res!1988879) b!4707608))

(declare-fun m!5631743 () Bool)

(assert (=> bm!329124 m!5631743))

(declare-fun m!5631745 () Bool)

(assert (=> b!4707605 m!5631745))

(declare-fun m!5631747 () Bool)

(assert (=> b!4707605 m!5631747))

(declare-fun m!5631749 () Bool)

(assert (=> b!4707605 m!5631749))

(declare-fun m!5631751 () Bool)

(assert (=> b!4707605 m!5631751))

(declare-fun m!5631753 () Bool)

(assert (=> b!4707605 m!5631753))

(declare-fun m!5631755 () Bool)

(assert (=> b!4707605 m!5631755))

(assert (=> b!4707605 m!5631747))

(assert (=> b!4707605 m!5631755))

(declare-fun m!5631757 () Bool)

(assert (=> b!4707605 m!5631757))

(declare-fun m!5631759 () Bool)

(assert (=> b!4707605 m!5631759))

(declare-fun m!5631761 () Bool)

(assert (=> b!4707605 m!5631761))

(assert (=> b!4707605 m!5631751))

(assert (=> b!4707605 m!5631745))

(declare-fun m!5631763 () Bool)

(assert (=> b!4707605 m!5631763))

(assert (=> bm!329126 m!5631551))

(declare-fun m!5631765 () Bool)

(assert (=> b!4707608 m!5631765))

(declare-fun m!5631767 () Bool)

(assert (=> d!1498315 m!5631767))

(declare-fun m!5631769 () Bool)

(assert (=> d!1498315 m!5631769))

(declare-fun m!5631771 () Bool)

(assert (=> bm!329125 m!5631771))

(declare-fun m!5631773 () Bool)

(assert (=> b!4707606 m!5631773))

(assert (=> b!4707386 d!1498315))

(declare-fun d!1498323 () Bool)

(assert (=> d!1498323 (eq!1081 (addToMapMapFromBucket!1354 (Cons!52599 lt!1872591 lt!1872598) lt!1872599) (+!2206 (addToMapMapFromBucket!1354 lt!1872598 lt!1872599) lt!1872591))))

(declare-fun lt!1872933 () Unit!127368)

(declare-fun choose!33095 (tuple2!54082 List!52723 ListMap!5097) Unit!127368)

(assert (=> d!1498323 (= lt!1872933 (choose!33095 lt!1872591 lt!1872598 lt!1872599))))

(assert (=> d!1498323 (noDuplicateKeys!1922 lt!1872598)))

(assert (=> d!1498323 (= (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!330 lt!1872591 lt!1872598 lt!1872599) lt!1872933)))

(declare-fun bs!1100252 () Bool)

(assert (= bs!1100252 d!1498323))

(assert (=> bs!1100252 m!5631769))

(assert (=> bs!1100252 m!5631163))

(assert (=> bs!1100252 m!5631147))

(assert (=> bs!1100252 m!5631163))

(assert (=> bs!1100252 m!5631145))

(assert (=> bs!1100252 m!5631145))

(assert (=> bs!1100252 m!5631147))

(assert (=> bs!1100252 m!5631149))

(declare-fun m!5631821 () Bool)

(assert (=> bs!1100252 m!5631821))

(assert (=> b!4707386 d!1498323))

(declare-fun bs!1100253 () Bool)

(declare-fun d!1498329 () Bool)

(assert (= bs!1100253 (and d!1498329 start!478140)))

(declare-fun lambda!211995 () Int)

(assert (=> bs!1100253 (= lambda!211995 lambda!211883)))

(declare-fun bs!1100254 () Bool)

(assert (= bs!1100254 (and d!1498329 d!1498209)))

(assert (=> bs!1100254 (= lambda!211995 lambda!211889)))

(declare-fun bs!1100255 () Bool)

(assert (= bs!1100255 (and d!1498329 d!1498277)))

(assert (=> bs!1100255 (= lambda!211995 lambda!211967)))

(declare-fun bs!1100256 () Bool)

(assert (= bs!1100256 (and d!1498329 d!1498267)))

(assert (=> bs!1100256 (= lambda!211995 lambda!211948)))

(declare-fun bs!1100257 () Bool)

(assert (= bs!1100257 (and d!1498329 d!1498281)))

(assert (=> bs!1100257 (= lambda!211995 lambda!211978)))

(declare-fun lt!1872934 () ListMap!5097)

(assert (=> d!1498329 (invariantList!1464 (toList!5733 lt!1872934))))

(declare-fun e!2936489 () ListMap!5097)

(assert (=> d!1498329 (= lt!1872934 e!2936489)))

(declare-fun c!804493 () Bool)

(assert (=> d!1498329 (= c!804493 ((_ is Cons!52600) lt!1872594))))

(assert (=> d!1498329 (forall!11443 lt!1872594 lambda!211995)))

(assert (=> d!1498329 (= (extractMap!1948 lt!1872594) lt!1872934)))

(declare-fun b!4707617 () Bool)

(assert (=> b!4707617 (= e!2936489 (addToMapMapFromBucket!1354 (_2!30336 (h!58899 lt!1872594)) (extractMap!1948 (t!359954 lt!1872594))))))

(declare-fun b!4707618 () Bool)

(assert (=> b!4707618 (= e!2936489 (ListMap!5098 Nil!52599))))

(assert (= (and d!1498329 c!804493) b!4707617))

(assert (= (and d!1498329 (not c!804493)) b!4707618))

(declare-fun m!5631823 () Bool)

(assert (=> d!1498329 m!5631823))

(declare-fun m!5631825 () Bool)

(assert (=> d!1498329 m!5631825))

(declare-fun m!5631827 () Bool)

(assert (=> b!4707617 m!5631827))

(assert (=> b!4707617 m!5631827))

(declare-fun m!5631829 () Bool)

(assert (=> b!4707617 m!5631829))

(assert (=> b!4707386 d!1498329))

(declare-fun d!1498331 () Bool)

(declare-fun e!2936490 () Bool)

(assert (=> d!1498331 e!2936490))

(declare-fun res!1988886 () Bool)

(assert (=> d!1498331 (=> (not res!1988886) (not e!2936490))))

(declare-fun lt!1872937 () ListMap!5097)

(assert (=> d!1498331 (= res!1988886 (contains!15922 lt!1872937 (_1!30335 lt!1872591)))))

(declare-fun lt!1872938 () List!52723)

(assert (=> d!1498331 (= lt!1872937 (ListMap!5098 lt!1872938))))

(declare-fun lt!1872936 () Unit!127368)

(declare-fun lt!1872935 () Unit!127368)

(assert (=> d!1498331 (= lt!1872936 lt!1872935)))

(assert (=> d!1498331 (= (getValueByKey!1888 lt!1872938 (_1!30335 lt!1872591)) (Some!12255 (_2!30335 lt!1872591)))))

(assert (=> d!1498331 (= lt!1872935 (lemmaContainsTupThenGetReturnValue!1054 lt!1872938 (_1!30335 lt!1872591) (_2!30335 lt!1872591)))))

(assert (=> d!1498331 (= lt!1872938 (insertNoDuplicatedKeys!562 (toList!5733 (addToMapMapFromBucket!1354 lt!1872598 lt!1872599)) (_1!30335 lt!1872591) (_2!30335 lt!1872591)))))

(assert (=> d!1498331 (= (+!2206 (addToMapMapFromBucket!1354 lt!1872598 lt!1872599) lt!1872591) lt!1872937)))

(declare-fun b!4707619 () Bool)

(declare-fun res!1988887 () Bool)

(assert (=> b!4707619 (=> (not res!1988887) (not e!2936490))))

(assert (=> b!4707619 (= res!1988887 (= (getValueByKey!1888 (toList!5733 lt!1872937) (_1!30335 lt!1872591)) (Some!12255 (_2!30335 lt!1872591))))))

(declare-fun b!4707620 () Bool)

(assert (=> b!4707620 (= e!2936490 (contains!15924 (toList!5733 lt!1872937) lt!1872591))))

(assert (= (and d!1498331 res!1988886) b!4707619))

(assert (= (and b!4707619 res!1988887) b!4707620))

(declare-fun m!5631831 () Bool)

(assert (=> d!1498331 m!5631831))

(declare-fun m!5631833 () Bool)

(assert (=> d!1498331 m!5631833))

(declare-fun m!5631835 () Bool)

(assert (=> d!1498331 m!5631835))

(declare-fun m!5631837 () Bool)

(assert (=> d!1498331 m!5631837))

(declare-fun m!5631839 () Bool)

(assert (=> b!4707619 m!5631839))

(declare-fun m!5631841 () Bool)

(assert (=> b!4707620 m!5631841))

(assert (=> b!4707386 d!1498331))

(declare-fun b!4707676 () Bool)

(declare-fun e!2936526 () Unit!127368)

(declare-fun lt!1872994 () Unit!127368)

(assert (=> b!4707676 (= e!2936526 lt!1872994)))

(declare-fun lt!1872993 () Unit!127368)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1780 (List!52723 K!13955) Unit!127368)

(assert (=> b!4707676 (= lt!1872993 (lemmaContainsKeyImpliesGetValueByKeyDefined!1780 (toList!5733 lt!1872573) key!4653))))

(declare-fun isDefined!9511 (Option!12256) Bool)

(assert (=> b!4707676 (isDefined!9511 (getValueByKey!1888 (toList!5733 lt!1872573) key!4653))))

(declare-fun lt!1872991 () Unit!127368)

(assert (=> b!4707676 (= lt!1872991 lt!1872993)))

(declare-fun lemmaInListThenGetKeysListContains!899 (List!52723 K!13955) Unit!127368)

(assert (=> b!4707676 (= lt!1872994 (lemmaInListThenGetKeysListContains!899 (toList!5733 lt!1872573) key!4653))))

(declare-fun call!329140 () Bool)

(assert (=> b!4707676 call!329140))

(declare-fun b!4707677 () Bool)

(declare-fun e!2936528 () Bool)

(declare-fun e!2936529 () Bool)

(assert (=> b!4707677 (= e!2936528 e!2936529)))

(declare-fun res!1988909 () Bool)

(assert (=> b!4707677 (=> (not res!1988909) (not e!2936529))))

(assert (=> b!4707677 (= res!1988909 (isDefined!9511 (getValueByKey!1888 (toList!5733 lt!1872573) key!4653)))))

(declare-fun b!4707678 () Bool)

(declare-fun e!2936530 () Unit!127368)

(assert (=> b!4707678 (= e!2936526 e!2936530)))

(declare-fun c!804514 () Bool)

(assert (=> b!4707678 (= c!804514 call!329140)))

(declare-fun b!4707679 () Bool)

(declare-fun Unit!127428 () Unit!127368)

(assert (=> b!4707679 (= e!2936530 Unit!127428)))

(declare-fun bm!329135 () Bool)

(declare-datatypes ((List!52726 0))(
  ( (Nil!52602) (Cons!52602 (h!58903 K!13955) (t!359958 List!52726)) )
))
(declare-fun e!2936527 () List!52726)

(declare-fun contains!15926 (List!52726 K!13955) Bool)

(assert (=> bm!329135 (= call!329140 (contains!15926 e!2936527 key!4653))))

(declare-fun c!804513 () Bool)

(declare-fun c!804512 () Bool)

(assert (=> bm!329135 (= c!804513 c!804512)))

(declare-fun d!1498333 () Bool)

(assert (=> d!1498333 e!2936528))

(declare-fun res!1988907 () Bool)

(assert (=> d!1498333 (=> res!1988907 e!2936528)))

(declare-fun e!2936531 () Bool)

(assert (=> d!1498333 (= res!1988907 e!2936531)))

(declare-fun res!1988908 () Bool)

(assert (=> d!1498333 (=> (not res!1988908) (not e!2936531))))

(declare-fun lt!1872992 () Bool)

(assert (=> d!1498333 (= res!1988908 (not lt!1872992))))

(declare-fun lt!1872990 () Bool)

(assert (=> d!1498333 (= lt!1872992 lt!1872990)))

(declare-fun lt!1872997 () Unit!127368)

(assert (=> d!1498333 (= lt!1872997 e!2936526)))

(assert (=> d!1498333 (= c!804512 lt!1872990)))

(declare-fun containsKey!3232 (List!52723 K!13955) Bool)

(assert (=> d!1498333 (= lt!1872990 (containsKey!3232 (toList!5733 lt!1872573) key!4653))))

(assert (=> d!1498333 (= (contains!15922 lt!1872573 key!4653) lt!1872992)))

(declare-fun b!4707680 () Bool)

(declare-fun keys!18835 (ListMap!5097) List!52726)

(assert (=> b!4707680 (= e!2936529 (contains!15926 (keys!18835 lt!1872573) key!4653))))

(declare-fun b!4707681 () Bool)

(assert (=> b!4707681 false))

(declare-fun lt!1872995 () Unit!127368)

(declare-fun lt!1872996 () Unit!127368)

(assert (=> b!4707681 (= lt!1872995 lt!1872996)))

(assert (=> b!4707681 (containsKey!3232 (toList!5733 lt!1872573) key!4653)))

(declare-fun lemmaInGetKeysListThenContainsKey!903 (List!52723 K!13955) Unit!127368)

(assert (=> b!4707681 (= lt!1872996 (lemmaInGetKeysListThenContainsKey!903 (toList!5733 lt!1872573) key!4653))))

(declare-fun Unit!127429 () Unit!127368)

(assert (=> b!4707681 (= e!2936530 Unit!127429)))

(declare-fun b!4707682 () Bool)

(assert (=> b!4707682 (= e!2936527 (keys!18835 lt!1872573))))

(declare-fun b!4707683 () Bool)

(assert (=> b!4707683 (= e!2936531 (not (contains!15926 (keys!18835 lt!1872573) key!4653)))))

(declare-fun b!4707684 () Bool)

(declare-fun getKeysList!904 (List!52723) List!52726)

(assert (=> b!4707684 (= e!2936527 (getKeysList!904 (toList!5733 lt!1872573)))))

(assert (= (and d!1498333 c!804512) b!4707676))

(assert (= (and d!1498333 (not c!804512)) b!4707678))

(assert (= (and b!4707678 c!804514) b!4707681))

(assert (= (and b!4707678 (not c!804514)) b!4707679))

(assert (= (or b!4707676 b!4707678) bm!329135))

(assert (= (and bm!329135 c!804513) b!4707684))

(assert (= (and bm!329135 (not c!804513)) b!4707682))

(assert (= (and d!1498333 res!1988908) b!4707683))

(assert (= (and d!1498333 (not res!1988907)) b!4707677))

(assert (= (and b!4707677 res!1988909) b!4707680))

(declare-fun m!5631919 () Bool)

(assert (=> d!1498333 m!5631919))

(assert (=> b!4707681 m!5631919))

(declare-fun m!5631921 () Bool)

(assert (=> b!4707681 m!5631921))

(declare-fun m!5631923 () Bool)

(assert (=> b!4707683 m!5631923))

(assert (=> b!4707683 m!5631923))

(declare-fun m!5631925 () Bool)

(assert (=> b!4707683 m!5631925))

(assert (=> b!4707682 m!5631923))

(declare-fun m!5631927 () Bool)

(assert (=> b!4707676 m!5631927))

(declare-fun m!5631929 () Bool)

(assert (=> b!4707676 m!5631929))

(assert (=> b!4707676 m!5631929))

(declare-fun m!5631931 () Bool)

(assert (=> b!4707676 m!5631931))

(declare-fun m!5631933 () Bool)

(assert (=> b!4707676 m!5631933))

(assert (=> b!4707680 m!5631923))

(assert (=> b!4707680 m!5631923))

(assert (=> b!4707680 m!5631925))

(declare-fun m!5631935 () Bool)

(assert (=> b!4707684 m!5631935))

(declare-fun m!5631937 () Bool)

(assert (=> bm!329135 m!5631937))

(assert (=> b!4707677 m!5631929))

(assert (=> b!4707677 m!5631929))

(assert (=> b!4707677 m!5631931))

(assert (=> b!4707386 d!1498333))

(declare-fun bs!1100297 () Bool)

(declare-fun b!4707687 () Bool)

(assert (= bs!1100297 (and b!4707687 b!4707592)))

(declare-fun lambda!211999 () Int)

(assert (=> bs!1100297 (= lambda!211999 lambda!211979)))

(declare-fun bs!1100298 () Bool)

(assert (= bs!1100298 (and b!4707687 b!4707590)))

(assert (=> bs!1100298 (= (= lt!1872599 lt!1872881) (= lambda!211999 lambda!211983))))

(declare-fun bs!1100299 () Bool)

(assert (= bs!1100299 (and b!4707687 b!4707529)))

(assert (=> bs!1100299 (= lambda!211999 lambda!211937)))

(declare-fun bs!1100300 () Bool)

(assert (= bs!1100300 (and b!4707687 d!1498309)))

(assert (=> bs!1100300 (= (= lt!1872599 lt!1872880) (= lambda!211999 lambda!211985))))

(assert (=> bs!1100298 (= lambda!211999 lambda!211982)))

(declare-fun bs!1100301 () Bool)

(assert (= bs!1100301 (and b!4707687 b!4707531)))

(assert (=> bs!1100301 (= lambda!211999 lambda!211936)))

(declare-fun bs!1100302 () Bool)

(assert (= bs!1100302 (and b!4707687 b!4707605)))

(assert (=> bs!1100302 (= lambda!211999 lambda!211988)))

(declare-fun bs!1100303 () Bool)

(assert (= bs!1100303 (and b!4707687 b!4707607)))

(assert (=> bs!1100303 (= lambda!211999 lambda!211987)))

(assert (=> bs!1100302 (= (= lt!1872599 lt!1872903) (= lambda!211999 lambda!211989))))

(declare-fun bs!1100304 () Bool)

(assert (= bs!1100304 (and b!4707687 d!1498219)))

(assert (=> bs!1100304 (= (= lt!1872599 lt!1872769) (= lambda!211999 lambda!211941))))

(declare-fun bs!1100305 () Bool)

(assert (= bs!1100305 (and b!4707687 d!1498315)))

(assert (=> bs!1100305 (= (= lt!1872599 lt!1872902) (= lambda!211999 lambda!211992))))

(assert (=> bs!1100299 (= (= lt!1872599 lt!1872770) (= lambda!211999 lambda!211938))))

(assert (=> b!4707687 true))

(declare-fun bs!1100306 () Bool)

(declare-fun b!4707685 () Bool)

(assert (= bs!1100306 (and b!4707685 b!4707592)))

(declare-fun lambda!212000 () Int)

(assert (=> bs!1100306 (= lambda!212000 lambda!211979)))

(declare-fun bs!1100307 () Bool)

(assert (= bs!1100307 (and b!4707685 b!4707590)))

(assert (=> bs!1100307 (= (= lt!1872599 lt!1872881) (= lambda!212000 lambda!211983))))

(declare-fun bs!1100308 () Bool)

(assert (= bs!1100308 (and b!4707685 b!4707529)))

(assert (=> bs!1100308 (= lambda!212000 lambda!211937)))

(declare-fun bs!1100309 () Bool)

(assert (= bs!1100309 (and b!4707685 d!1498309)))

(assert (=> bs!1100309 (= (= lt!1872599 lt!1872880) (= lambda!212000 lambda!211985))))

(assert (=> bs!1100307 (= lambda!212000 lambda!211982)))

(declare-fun bs!1100310 () Bool)

(assert (= bs!1100310 (and b!4707685 b!4707531)))

(assert (=> bs!1100310 (= lambda!212000 lambda!211936)))

(declare-fun bs!1100311 () Bool)

(assert (= bs!1100311 (and b!4707685 b!4707605)))

(assert (=> bs!1100311 (= lambda!212000 lambda!211988)))

(declare-fun bs!1100312 () Bool)

(assert (= bs!1100312 (and b!4707685 b!4707607)))

(assert (=> bs!1100312 (= lambda!212000 lambda!211987)))

(assert (=> bs!1100311 (= (= lt!1872599 lt!1872903) (= lambda!212000 lambda!211989))))

(declare-fun bs!1100313 () Bool)

(assert (= bs!1100313 (and b!4707685 d!1498219)))

(assert (=> bs!1100313 (= (= lt!1872599 lt!1872769) (= lambda!212000 lambda!211941))))

(declare-fun bs!1100314 () Bool)

(assert (= bs!1100314 (and b!4707685 d!1498315)))

(assert (=> bs!1100314 (= (= lt!1872599 lt!1872902) (= lambda!212000 lambda!211992))))

(declare-fun bs!1100315 () Bool)

(assert (= bs!1100315 (and b!4707685 b!4707687)))

(assert (=> bs!1100315 (= lambda!212000 lambda!211999)))

(assert (=> bs!1100308 (= (= lt!1872599 lt!1872770) (= lambda!212000 lambda!211938))))

(assert (=> b!4707685 true))

(declare-fun lambda!212001 () Int)

(declare-fun lt!1873016 () ListMap!5097)

(assert (=> bs!1100306 (= (= lt!1873016 lt!1872599) (= lambda!212001 lambda!211979))))

(assert (=> bs!1100307 (= (= lt!1873016 lt!1872881) (= lambda!212001 lambda!211983))))

(assert (=> bs!1100308 (= (= lt!1873016 lt!1872599) (= lambda!212001 lambda!211937))))

(assert (=> bs!1100309 (= (= lt!1873016 lt!1872880) (= lambda!212001 lambda!211985))))

(assert (=> bs!1100307 (= (= lt!1873016 lt!1872599) (= lambda!212001 lambda!211982))))

(assert (=> bs!1100310 (= (= lt!1873016 lt!1872599) (= lambda!212001 lambda!211936))))

(assert (=> bs!1100311 (= (= lt!1873016 lt!1872599) (= lambda!212001 lambda!211988))))

(assert (=> bs!1100311 (= (= lt!1873016 lt!1872903) (= lambda!212001 lambda!211989))))

(assert (=> bs!1100313 (= (= lt!1873016 lt!1872769) (= lambda!212001 lambda!211941))))

(assert (=> bs!1100312 (= (= lt!1873016 lt!1872599) (= lambda!212001 lambda!211987))))

(assert (=> b!4707685 (= (= lt!1873016 lt!1872599) (= lambda!212001 lambda!212000))))

(assert (=> bs!1100314 (= (= lt!1873016 lt!1872902) (= lambda!212001 lambda!211992))))

(assert (=> bs!1100315 (= (= lt!1873016 lt!1872599) (= lambda!212001 lambda!211999))))

(assert (=> bs!1100308 (= (= lt!1873016 lt!1872770) (= lambda!212001 lambda!211938))))

(assert (=> b!4707685 true))

(declare-fun bs!1100316 () Bool)

(declare-fun d!1498355 () Bool)

(assert (= bs!1100316 (and d!1498355 b!4707592)))

(declare-fun lambda!212002 () Int)

(declare-fun lt!1873015 () ListMap!5097)

(assert (=> bs!1100316 (= (= lt!1873015 lt!1872599) (= lambda!212002 lambda!211979))))

(declare-fun bs!1100317 () Bool)

(assert (= bs!1100317 (and d!1498355 b!4707590)))

(assert (=> bs!1100317 (= (= lt!1873015 lt!1872881) (= lambda!212002 lambda!211983))))

(declare-fun bs!1100318 () Bool)

(assert (= bs!1100318 (and d!1498355 d!1498309)))

(assert (=> bs!1100318 (= (= lt!1873015 lt!1872880) (= lambda!212002 lambda!211985))))

(assert (=> bs!1100317 (= (= lt!1873015 lt!1872599) (= lambda!212002 lambda!211982))))

(declare-fun bs!1100319 () Bool)

(assert (= bs!1100319 (and d!1498355 b!4707531)))

(assert (=> bs!1100319 (= (= lt!1873015 lt!1872599) (= lambda!212002 lambda!211936))))

(declare-fun bs!1100320 () Bool)

(assert (= bs!1100320 (and d!1498355 b!4707605)))

(assert (=> bs!1100320 (= (= lt!1873015 lt!1872599) (= lambda!212002 lambda!211988))))

(declare-fun bs!1100321 () Bool)

(assert (= bs!1100321 (and d!1498355 b!4707685)))

(assert (=> bs!1100321 (= (= lt!1873015 lt!1873016) (= lambda!212002 lambda!212001))))

(declare-fun bs!1100322 () Bool)

(assert (= bs!1100322 (and d!1498355 b!4707529)))

(assert (=> bs!1100322 (= (= lt!1873015 lt!1872599) (= lambda!212002 lambda!211937))))

(assert (=> bs!1100320 (= (= lt!1873015 lt!1872903) (= lambda!212002 lambda!211989))))

(declare-fun bs!1100323 () Bool)

(assert (= bs!1100323 (and d!1498355 d!1498219)))

(assert (=> bs!1100323 (= (= lt!1873015 lt!1872769) (= lambda!212002 lambda!211941))))

(declare-fun bs!1100324 () Bool)

(assert (= bs!1100324 (and d!1498355 b!4707607)))

(assert (=> bs!1100324 (= (= lt!1873015 lt!1872599) (= lambda!212002 lambda!211987))))

(assert (=> bs!1100321 (= (= lt!1873015 lt!1872599) (= lambda!212002 lambda!212000))))

(declare-fun bs!1100325 () Bool)

(assert (= bs!1100325 (and d!1498355 d!1498315)))

(assert (=> bs!1100325 (= (= lt!1873015 lt!1872902) (= lambda!212002 lambda!211992))))

(declare-fun bs!1100326 () Bool)

(assert (= bs!1100326 (and d!1498355 b!4707687)))

(assert (=> bs!1100326 (= (= lt!1873015 lt!1872599) (= lambda!212002 lambda!211999))))

(assert (=> bs!1100322 (= (= lt!1873015 lt!1872770) (= lambda!212002 lambda!211938))))

(assert (=> d!1498355 true))

(declare-fun bm!329136 () Bool)

(declare-fun call!329143 () Bool)

(declare-fun c!804515 () Bool)

(assert (=> bm!329136 (= call!329143 (forall!11445 (ite c!804515 (toList!5733 lt!1872599) (t!359953 (Cons!52599 lt!1872591 lt!1872598))) (ite c!804515 lambda!211999 lambda!212001)))))

(declare-fun e!2936532 () ListMap!5097)

(assert (=> b!4707685 (= e!2936532 lt!1873016)))

(declare-fun lt!1873018 () ListMap!5097)

(assert (=> b!4707685 (= lt!1873018 (+!2206 lt!1872599 (h!58898 (Cons!52599 lt!1872591 lt!1872598))))))

(assert (=> b!4707685 (= lt!1873016 (addToMapMapFromBucket!1354 (t!359953 (Cons!52599 lt!1872591 lt!1872598)) (+!2206 lt!1872599 (h!58898 (Cons!52599 lt!1872591 lt!1872598)))))))

(declare-fun lt!1873010 () Unit!127368)

(declare-fun call!329142 () Unit!127368)

(assert (=> b!4707685 (= lt!1873010 call!329142)))

(assert (=> b!4707685 (forall!11445 (toList!5733 lt!1872599) lambda!212000)))

(declare-fun lt!1873008 () Unit!127368)

(assert (=> b!4707685 (= lt!1873008 lt!1873010)))

(assert (=> b!4707685 (forall!11445 (toList!5733 lt!1873018) lambda!212001)))

(declare-fun lt!1873004 () Unit!127368)

(declare-fun Unit!127430 () Unit!127368)

(assert (=> b!4707685 (= lt!1873004 Unit!127430)))

(assert (=> b!4707685 call!329143))

(declare-fun lt!1873003 () Unit!127368)

(declare-fun Unit!127431 () Unit!127368)

(assert (=> b!4707685 (= lt!1873003 Unit!127431)))

(declare-fun lt!1873005 () Unit!127368)

(declare-fun Unit!127432 () Unit!127368)

(assert (=> b!4707685 (= lt!1873005 Unit!127432)))

(declare-fun lt!1872998 () Unit!127368)

(assert (=> b!4707685 (= lt!1872998 (forallContained!3551 (toList!5733 lt!1873018) lambda!212001 (h!58898 (Cons!52599 lt!1872591 lt!1872598))))))

(assert (=> b!4707685 (contains!15922 lt!1873018 (_1!30335 (h!58898 (Cons!52599 lt!1872591 lt!1872598))))))

(declare-fun lt!1873006 () Unit!127368)

(declare-fun Unit!127433 () Unit!127368)

(assert (=> b!4707685 (= lt!1873006 Unit!127433)))

(assert (=> b!4707685 (contains!15922 lt!1873016 (_1!30335 (h!58898 (Cons!52599 lt!1872591 lt!1872598))))))

(declare-fun lt!1873011 () Unit!127368)

(declare-fun Unit!127434 () Unit!127368)

(assert (=> b!4707685 (= lt!1873011 Unit!127434)))

(assert (=> b!4707685 (forall!11445 (Cons!52599 lt!1872591 lt!1872598) lambda!212001)))

(declare-fun lt!1873009 () Unit!127368)

(declare-fun Unit!127435 () Unit!127368)

(assert (=> b!4707685 (= lt!1873009 Unit!127435)))

(assert (=> b!4707685 (forall!11445 (toList!5733 lt!1873018) lambda!212001)))

(declare-fun lt!1873000 () Unit!127368)

(declare-fun Unit!127436 () Unit!127368)

(assert (=> b!4707685 (= lt!1873000 Unit!127436)))

(declare-fun lt!1873012 () Unit!127368)

(declare-fun Unit!127437 () Unit!127368)

(assert (=> b!4707685 (= lt!1873012 Unit!127437)))

(declare-fun lt!1873002 () Unit!127368)

(assert (=> b!4707685 (= lt!1873002 (addForallContainsKeyThenBeforeAdding!750 lt!1872599 lt!1873016 (_1!30335 (h!58898 (Cons!52599 lt!1872591 lt!1872598))) (_2!30335 (h!58898 (Cons!52599 lt!1872591 lt!1872598)))))))

(assert (=> b!4707685 (forall!11445 (toList!5733 lt!1872599) lambda!212001)))

(declare-fun lt!1873017 () Unit!127368)

(assert (=> b!4707685 (= lt!1873017 lt!1873002)))

(assert (=> b!4707685 (forall!11445 (toList!5733 lt!1872599) lambda!212001)))

(declare-fun lt!1873014 () Unit!127368)

(declare-fun Unit!127438 () Unit!127368)

(assert (=> b!4707685 (= lt!1873014 Unit!127438)))

(declare-fun res!1988912 () Bool)

(assert (=> b!4707685 (= res!1988912 (forall!11445 (Cons!52599 lt!1872591 lt!1872598) lambda!212001))))

(declare-fun e!2936534 () Bool)

(assert (=> b!4707685 (=> (not res!1988912) (not e!2936534))))

(assert (=> b!4707685 e!2936534))

(declare-fun lt!1873013 () Unit!127368)

(declare-fun Unit!127439 () Unit!127368)

(assert (=> b!4707685 (= lt!1873013 Unit!127439)))

(declare-fun b!4707686 () Bool)

(declare-fun res!1988911 () Bool)

(declare-fun e!2936533 () Bool)

(assert (=> b!4707686 (=> (not res!1988911) (not e!2936533))))

(assert (=> b!4707686 (= res!1988911 (forall!11445 (toList!5733 lt!1872599) lambda!212002))))

(assert (=> b!4707687 (= e!2936532 lt!1872599)))

(declare-fun lt!1873007 () Unit!127368)

(assert (=> b!4707687 (= lt!1873007 call!329142)))

(declare-fun call!329141 () Bool)

(assert (=> b!4707687 call!329141))

(declare-fun lt!1873001 () Unit!127368)

(assert (=> b!4707687 (= lt!1873001 lt!1873007)))

(assert (=> b!4707687 call!329143))

(declare-fun lt!1872999 () Unit!127368)

(declare-fun Unit!127440 () Unit!127368)

(assert (=> b!4707687 (= lt!1872999 Unit!127440)))

(declare-fun b!4707688 () Bool)

(assert (=> b!4707688 (= e!2936533 (invariantList!1464 (toList!5733 lt!1873015)))))

(declare-fun bm!329137 () Bool)

(assert (=> bm!329137 (= call!329141 (forall!11445 (toList!5733 lt!1872599) (ite c!804515 lambda!211999 lambda!212001)))))

(assert (=> d!1498355 e!2936533))

(declare-fun res!1988910 () Bool)

(assert (=> d!1498355 (=> (not res!1988910) (not e!2936533))))

(assert (=> d!1498355 (= res!1988910 (forall!11445 (Cons!52599 lt!1872591 lt!1872598) lambda!212002))))

(assert (=> d!1498355 (= lt!1873015 e!2936532)))

(assert (=> d!1498355 (= c!804515 ((_ is Nil!52599) (Cons!52599 lt!1872591 lt!1872598)))))

(assert (=> d!1498355 (noDuplicateKeys!1922 (Cons!52599 lt!1872591 lt!1872598))))

(assert (=> d!1498355 (= (addToMapMapFromBucket!1354 (Cons!52599 lt!1872591 lt!1872598) lt!1872599) lt!1873015)))

(declare-fun b!4707689 () Bool)

(assert (=> b!4707689 (= e!2936534 call!329141)))

(declare-fun bm!329138 () Bool)

(assert (=> bm!329138 (= call!329142 (lemmaContainsAllItsOwnKeys!752 lt!1872599))))

(assert (= (and d!1498355 c!804515) b!4707687))

(assert (= (and d!1498355 (not c!804515)) b!4707685))

(assert (= (and b!4707685 res!1988912) b!4707689))

(assert (= (or b!4707687 b!4707685) bm!329138))

(assert (= (or b!4707687 b!4707689) bm!329137))

(assert (= (or b!4707687 b!4707685) bm!329136))

(assert (= (and d!1498355 res!1988910) b!4707686))

(assert (= (and b!4707686 res!1988911) b!4707688))

(declare-fun m!5631941 () Bool)

(assert (=> bm!329136 m!5631941))

(declare-fun m!5631945 () Bool)

(assert (=> b!4707685 m!5631945))

(declare-fun m!5631947 () Bool)

(assert (=> b!4707685 m!5631947))

(declare-fun m!5631949 () Bool)

(assert (=> b!4707685 m!5631949))

(declare-fun m!5631951 () Bool)

(assert (=> b!4707685 m!5631951))

(declare-fun m!5631953 () Bool)

(assert (=> b!4707685 m!5631953))

(declare-fun m!5631955 () Bool)

(assert (=> b!4707685 m!5631955))

(assert (=> b!4707685 m!5631947))

(assert (=> b!4707685 m!5631955))

(declare-fun m!5631957 () Bool)

(assert (=> b!4707685 m!5631957))

(declare-fun m!5631959 () Bool)

(assert (=> b!4707685 m!5631959))

(declare-fun m!5631961 () Bool)

(assert (=> b!4707685 m!5631961))

(assert (=> b!4707685 m!5631951))

(assert (=> b!4707685 m!5631945))

(declare-fun m!5631963 () Bool)

(assert (=> b!4707685 m!5631963))

(assert (=> bm!329138 m!5631551))

(declare-fun m!5631965 () Bool)

(assert (=> b!4707688 m!5631965))

(declare-fun m!5631967 () Bool)

(assert (=> d!1498355 m!5631967))

(declare-fun m!5631969 () Bool)

(assert (=> d!1498355 m!5631969))

(declare-fun m!5631971 () Bool)

(assert (=> bm!329137 m!5631971))

(declare-fun m!5631973 () Bool)

(assert (=> b!4707686 m!5631973))

(assert (=> b!4707386 d!1498355))

(declare-fun bs!1100332 () Bool)

(declare-fun d!1498359 () Bool)

(assert (= bs!1100332 (and d!1498359 d!1498329)))

(declare-fun lambda!212004 () Int)

(assert (=> bs!1100332 (= lambda!212004 lambda!211995)))

(declare-fun bs!1100335 () Bool)

(assert (= bs!1100335 (and d!1498359 start!478140)))

(assert (=> bs!1100335 (= lambda!212004 lambda!211883)))

(declare-fun bs!1100336 () Bool)

(assert (= bs!1100336 (and d!1498359 d!1498209)))

(assert (=> bs!1100336 (= lambda!212004 lambda!211889)))

(declare-fun bs!1100338 () Bool)

(assert (= bs!1100338 (and d!1498359 d!1498277)))

(assert (=> bs!1100338 (= lambda!212004 lambda!211967)))

(declare-fun bs!1100339 () Bool)

(assert (= bs!1100339 (and d!1498359 d!1498267)))

(assert (=> bs!1100339 (= lambda!212004 lambda!211948)))

(declare-fun bs!1100340 () Bool)

(assert (= bs!1100340 (and d!1498359 d!1498281)))

(assert (=> bs!1100340 (= lambda!212004 lambda!211978)))

(declare-fun lt!1873043 () ListMap!5097)

(assert (=> d!1498359 (invariantList!1464 (toList!5733 lt!1873043))))

(declare-fun e!2936538 () ListMap!5097)

(assert (=> d!1498359 (= lt!1873043 e!2936538)))

(declare-fun c!804517 () Bool)

(assert (=> d!1498359 (= c!804517 ((_ is Cons!52600) (Cons!52600 lt!1872603 (t!359954 (toList!5734 lm!2023)))))))

(assert (=> d!1498359 (forall!11443 (Cons!52600 lt!1872603 (t!359954 (toList!5734 lm!2023))) lambda!212004)))

(assert (=> d!1498359 (= (extractMap!1948 (Cons!52600 lt!1872603 (t!359954 (toList!5734 lm!2023)))) lt!1873043)))

(declare-fun b!4707695 () Bool)

(assert (=> b!4707695 (= e!2936538 (addToMapMapFromBucket!1354 (_2!30336 (h!58899 (Cons!52600 lt!1872603 (t!359954 (toList!5734 lm!2023))))) (extractMap!1948 (t!359954 (Cons!52600 lt!1872603 (t!359954 (toList!5734 lm!2023)))))))))

(declare-fun b!4707696 () Bool)

(assert (=> b!4707696 (= e!2936538 (ListMap!5098 Nil!52599))))

(assert (= (and d!1498359 c!804517) b!4707695))

(assert (= (and d!1498359 (not c!804517)) b!4707696))

(declare-fun m!5631975 () Bool)

(assert (=> d!1498359 m!5631975))

(declare-fun m!5631977 () Bool)

(assert (=> d!1498359 m!5631977))

(declare-fun m!5631979 () Bool)

(assert (=> b!4707695 m!5631979))

(assert (=> b!4707695 m!5631979))

(declare-fun m!5631981 () Bool)

(assert (=> b!4707695 m!5631981))

(assert (=> b!4707386 d!1498359))

(declare-fun d!1498361 () Bool)

(assert (=> d!1498361 (= (head!10108 oldBucket!34) (h!58898 oldBucket!34))))

(assert (=> b!4707386 d!1498361))

(declare-fun d!1498363 () Bool)

(declare-fun e!2936539 () Bool)

(assert (=> d!1498363 e!2936539))

(declare-fun res!1988916 () Bool)

(assert (=> d!1498363 (=> (not res!1988916) (not e!2936539))))

(declare-fun lt!1873046 () ListMap!5097)

(assert (=> d!1498363 (= res!1988916 (contains!15922 lt!1873046 (_1!30335 lt!1872585)))))

(declare-fun lt!1873047 () List!52723)

(assert (=> d!1498363 (= lt!1873046 (ListMap!5098 lt!1873047))))

(declare-fun lt!1873045 () Unit!127368)

(declare-fun lt!1873044 () Unit!127368)

(assert (=> d!1498363 (= lt!1873045 lt!1873044)))

(assert (=> d!1498363 (= (getValueByKey!1888 lt!1873047 (_1!30335 lt!1872585)) (Some!12255 (_2!30335 lt!1872585)))))

(assert (=> d!1498363 (= lt!1873044 (lemmaContainsTupThenGetReturnValue!1054 lt!1873047 (_1!30335 lt!1872585) (_2!30335 lt!1872585)))))

(assert (=> d!1498363 (= lt!1873047 (insertNoDuplicatedKeys!562 (toList!5733 (addToMapMapFromBucket!1354 lt!1872571 lt!1872599)) (_1!30335 lt!1872585) (_2!30335 lt!1872585)))))

(assert (=> d!1498363 (= (+!2206 (addToMapMapFromBucket!1354 lt!1872571 lt!1872599) lt!1872585) lt!1873046)))

(declare-fun b!4707697 () Bool)

(declare-fun res!1988917 () Bool)

(assert (=> b!4707697 (=> (not res!1988917) (not e!2936539))))

(assert (=> b!4707697 (= res!1988917 (= (getValueByKey!1888 (toList!5733 lt!1873046) (_1!30335 lt!1872585)) (Some!12255 (_2!30335 lt!1872585))))))

(declare-fun b!4707698 () Bool)

(assert (=> b!4707698 (= e!2936539 (contains!15924 (toList!5733 lt!1873046) lt!1872585))))

(assert (= (and d!1498363 res!1988916) b!4707697))

(assert (= (and b!4707697 res!1988917) b!4707698))

(declare-fun m!5631983 () Bool)

(assert (=> d!1498363 m!5631983))

(declare-fun m!5631985 () Bool)

(assert (=> d!1498363 m!5631985))

(declare-fun m!5631987 () Bool)

(assert (=> d!1498363 m!5631987))

(declare-fun m!5631989 () Bool)

(assert (=> d!1498363 m!5631989))

(declare-fun m!5631991 () Bool)

(assert (=> b!4707697 m!5631991))

(declare-fun m!5631993 () Bool)

(assert (=> b!4707698 m!5631993))

(assert (=> b!4707386 d!1498363))

(declare-fun bs!1100349 () Bool)

(declare-fun b!4707701 () Bool)

(assert (= bs!1100349 (and b!4707701 b!4707592)))

(declare-fun lambda!212007 () Int)

(assert (=> bs!1100349 (= lambda!212007 lambda!211979)))

(declare-fun bs!1100350 () Bool)

(assert (= bs!1100350 (and b!4707701 b!4707590)))

(assert (=> bs!1100350 (= (= lt!1872599 lt!1872881) (= lambda!212007 lambda!211983))))

(declare-fun bs!1100351 () Bool)

(assert (= bs!1100351 (and b!4707701 d!1498355)))

(assert (=> bs!1100351 (= (= lt!1872599 lt!1873015) (= lambda!212007 lambda!212002))))

(declare-fun bs!1100352 () Bool)

(assert (= bs!1100352 (and b!4707701 d!1498309)))

(assert (=> bs!1100352 (= (= lt!1872599 lt!1872880) (= lambda!212007 lambda!211985))))

(assert (=> bs!1100350 (= lambda!212007 lambda!211982)))

(declare-fun bs!1100353 () Bool)

(assert (= bs!1100353 (and b!4707701 b!4707531)))

(assert (=> bs!1100353 (= lambda!212007 lambda!211936)))

(declare-fun bs!1100354 () Bool)

(assert (= bs!1100354 (and b!4707701 b!4707605)))

(assert (=> bs!1100354 (= lambda!212007 lambda!211988)))

(declare-fun bs!1100355 () Bool)

(assert (= bs!1100355 (and b!4707701 b!4707685)))

(assert (=> bs!1100355 (= (= lt!1872599 lt!1873016) (= lambda!212007 lambda!212001))))

(declare-fun bs!1100356 () Bool)

(assert (= bs!1100356 (and b!4707701 b!4707529)))

(assert (=> bs!1100356 (= lambda!212007 lambda!211937)))

(assert (=> bs!1100354 (= (= lt!1872599 lt!1872903) (= lambda!212007 lambda!211989))))

(declare-fun bs!1100357 () Bool)

(assert (= bs!1100357 (and b!4707701 d!1498219)))

(assert (=> bs!1100357 (= (= lt!1872599 lt!1872769) (= lambda!212007 lambda!211941))))

(declare-fun bs!1100358 () Bool)

(assert (= bs!1100358 (and b!4707701 b!4707607)))

(assert (=> bs!1100358 (= lambda!212007 lambda!211987)))

(assert (=> bs!1100355 (= lambda!212007 lambda!212000)))

(declare-fun bs!1100361 () Bool)

(assert (= bs!1100361 (and b!4707701 d!1498315)))

(assert (=> bs!1100361 (= (= lt!1872599 lt!1872902) (= lambda!212007 lambda!211992))))

(declare-fun bs!1100363 () Bool)

(assert (= bs!1100363 (and b!4707701 b!4707687)))

(assert (=> bs!1100363 (= lambda!212007 lambda!211999)))

(assert (=> bs!1100356 (= (= lt!1872599 lt!1872770) (= lambda!212007 lambda!211938))))

(assert (=> b!4707701 true))

(declare-fun bs!1100369 () Bool)

(declare-fun b!4707699 () Bool)

(assert (= bs!1100369 (and b!4707699 b!4707592)))

(declare-fun lambda!212009 () Int)

(assert (=> bs!1100369 (= lambda!212009 lambda!211979)))

(declare-fun bs!1100370 () Bool)

(assert (= bs!1100370 (and b!4707699 b!4707590)))

(assert (=> bs!1100370 (= (= lt!1872599 lt!1872881) (= lambda!212009 lambda!211983))))

(declare-fun bs!1100372 () Bool)

(assert (= bs!1100372 (and b!4707699 b!4707701)))

(assert (=> bs!1100372 (= lambda!212009 lambda!212007)))

(declare-fun bs!1100373 () Bool)

(assert (= bs!1100373 (and b!4707699 d!1498355)))

(assert (=> bs!1100373 (= (= lt!1872599 lt!1873015) (= lambda!212009 lambda!212002))))

(declare-fun bs!1100374 () Bool)

(assert (= bs!1100374 (and b!4707699 d!1498309)))

(assert (=> bs!1100374 (= (= lt!1872599 lt!1872880) (= lambda!212009 lambda!211985))))

(assert (=> bs!1100370 (= lambda!212009 lambda!211982)))

(declare-fun bs!1100375 () Bool)

(assert (= bs!1100375 (and b!4707699 b!4707531)))

(assert (=> bs!1100375 (= lambda!212009 lambda!211936)))

(declare-fun bs!1100376 () Bool)

(assert (= bs!1100376 (and b!4707699 b!4707605)))

(assert (=> bs!1100376 (= lambda!212009 lambda!211988)))

(declare-fun bs!1100377 () Bool)

(assert (= bs!1100377 (and b!4707699 b!4707685)))

(assert (=> bs!1100377 (= (= lt!1872599 lt!1873016) (= lambda!212009 lambda!212001))))

(declare-fun bs!1100378 () Bool)

(assert (= bs!1100378 (and b!4707699 b!4707529)))

(assert (=> bs!1100378 (= lambda!212009 lambda!211937)))

(assert (=> bs!1100376 (= (= lt!1872599 lt!1872903) (= lambda!212009 lambda!211989))))

(declare-fun bs!1100379 () Bool)

(assert (= bs!1100379 (and b!4707699 d!1498219)))

(assert (=> bs!1100379 (= (= lt!1872599 lt!1872769) (= lambda!212009 lambda!211941))))

(declare-fun bs!1100380 () Bool)

(assert (= bs!1100380 (and b!4707699 b!4707607)))

(assert (=> bs!1100380 (= lambda!212009 lambda!211987)))

(assert (=> bs!1100377 (= lambda!212009 lambda!212000)))

(declare-fun bs!1100381 () Bool)

(assert (= bs!1100381 (and b!4707699 d!1498315)))

(assert (=> bs!1100381 (= (= lt!1872599 lt!1872902) (= lambda!212009 lambda!211992))))

(declare-fun bs!1100382 () Bool)

(assert (= bs!1100382 (and b!4707699 b!4707687)))

(assert (=> bs!1100382 (= lambda!212009 lambda!211999)))

(assert (=> bs!1100378 (= (= lt!1872599 lt!1872770) (= lambda!212009 lambda!211938))))

(assert (=> b!4707699 true))

(declare-fun lt!1873066 () ListMap!5097)

(declare-fun lambda!212010 () Int)

(assert (=> bs!1100369 (= (= lt!1873066 lt!1872599) (= lambda!212010 lambda!211979))))

(assert (=> bs!1100370 (= (= lt!1873066 lt!1872881) (= lambda!212010 lambda!211983))))

(assert (=> bs!1100372 (= (= lt!1873066 lt!1872599) (= lambda!212010 lambda!212007))))

(assert (=> bs!1100373 (= (= lt!1873066 lt!1873015) (= lambda!212010 lambda!212002))))

(assert (=> b!4707699 (= (= lt!1873066 lt!1872599) (= lambda!212010 lambda!212009))))

(assert (=> bs!1100374 (= (= lt!1873066 lt!1872880) (= lambda!212010 lambda!211985))))

(assert (=> bs!1100370 (= (= lt!1873066 lt!1872599) (= lambda!212010 lambda!211982))))

(assert (=> bs!1100375 (= (= lt!1873066 lt!1872599) (= lambda!212010 lambda!211936))))

(assert (=> bs!1100376 (= (= lt!1873066 lt!1872599) (= lambda!212010 lambda!211988))))

(assert (=> bs!1100377 (= (= lt!1873066 lt!1873016) (= lambda!212010 lambda!212001))))

(assert (=> bs!1100378 (= (= lt!1873066 lt!1872599) (= lambda!212010 lambda!211937))))

(assert (=> bs!1100376 (= (= lt!1873066 lt!1872903) (= lambda!212010 lambda!211989))))

(assert (=> bs!1100379 (= (= lt!1873066 lt!1872769) (= lambda!212010 lambda!211941))))

(assert (=> bs!1100380 (= (= lt!1873066 lt!1872599) (= lambda!212010 lambda!211987))))

(assert (=> bs!1100377 (= (= lt!1873066 lt!1872599) (= lambda!212010 lambda!212000))))

(assert (=> bs!1100381 (= (= lt!1873066 lt!1872902) (= lambda!212010 lambda!211992))))

(assert (=> bs!1100382 (= (= lt!1873066 lt!1872599) (= lambda!212010 lambda!211999))))

(assert (=> bs!1100378 (= (= lt!1873066 lt!1872770) (= lambda!212010 lambda!211938))))

(assert (=> b!4707699 true))

(declare-fun bs!1100383 () Bool)

(declare-fun d!1498365 () Bool)

(assert (= bs!1100383 (and d!1498365 b!4707592)))

(declare-fun lt!1873065 () ListMap!5097)

(declare-fun lambda!212011 () Int)

(assert (=> bs!1100383 (= (= lt!1873065 lt!1872599) (= lambda!212011 lambda!211979))))

(declare-fun bs!1100384 () Bool)

(assert (= bs!1100384 (and d!1498365 b!4707590)))

(assert (=> bs!1100384 (= (= lt!1873065 lt!1872881) (= lambda!212011 lambda!211983))))

(declare-fun bs!1100385 () Bool)

(assert (= bs!1100385 (and d!1498365 b!4707701)))

(assert (=> bs!1100385 (= (= lt!1873065 lt!1872599) (= lambda!212011 lambda!212007))))

(declare-fun bs!1100386 () Bool)

(assert (= bs!1100386 (and d!1498365 d!1498355)))

(assert (=> bs!1100386 (= (= lt!1873065 lt!1873015) (= lambda!212011 lambda!212002))))

(declare-fun bs!1100387 () Bool)

(assert (= bs!1100387 (and d!1498365 b!4707699)))

(assert (=> bs!1100387 (= (= lt!1873065 lt!1872599) (= lambda!212011 lambda!212009))))

(declare-fun bs!1100388 () Bool)

(assert (= bs!1100388 (and d!1498365 d!1498309)))

(assert (=> bs!1100388 (= (= lt!1873065 lt!1872880) (= lambda!212011 lambda!211985))))

(assert (=> bs!1100384 (= (= lt!1873065 lt!1872599) (= lambda!212011 lambda!211982))))

(declare-fun bs!1100389 () Bool)

(assert (= bs!1100389 (and d!1498365 b!4707531)))

(assert (=> bs!1100389 (= (= lt!1873065 lt!1872599) (= lambda!212011 lambda!211936))))

(declare-fun bs!1100390 () Bool)

(assert (= bs!1100390 (and d!1498365 b!4707605)))

(assert (=> bs!1100390 (= (= lt!1873065 lt!1872599) (= lambda!212011 lambda!211988))))

(declare-fun bs!1100391 () Bool)

(assert (= bs!1100391 (and d!1498365 b!4707685)))

(assert (=> bs!1100391 (= (= lt!1873065 lt!1873016) (= lambda!212011 lambda!212001))))

(declare-fun bs!1100392 () Bool)

(assert (= bs!1100392 (and d!1498365 b!4707529)))

(assert (=> bs!1100392 (= (= lt!1873065 lt!1872599) (= lambda!212011 lambda!211937))))

(assert (=> bs!1100387 (= (= lt!1873065 lt!1873066) (= lambda!212011 lambda!212010))))

(assert (=> bs!1100390 (= (= lt!1873065 lt!1872903) (= lambda!212011 lambda!211989))))

(declare-fun bs!1100393 () Bool)

(assert (= bs!1100393 (and d!1498365 d!1498219)))

(assert (=> bs!1100393 (= (= lt!1873065 lt!1872769) (= lambda!212011 lambda!211941))))

(declare-fun bs!1100394 () Bool)

(assert (= bs!1100394 (and d!1498365 b!4707607)))

(assert (=> bs!1100394 (= (= lt!1873065 lt!1872599) (= lambda!212011 lambda!211987))))

(assert (=> bs!1100391 (= (= lt!1873065 lt!1872599) (= lambda!212011 lambda!212000))))

(declare-fun bs!1100395 () Bool)

(assert (= bs!1100395 (and d!1498365 d!1498315)))

(assert (=> bs!1100395 (= (= lt!1873065 lt!1872902) (= lambda!212011 lambda!211992))))

(declare-fun bs!1100396 () Bool)

(assert (= bs!1100396 (and d!1498365 b!4707687)))

(assert (=> bs!1100396 (= (= lt!1873065 lt!1872599) (= lambda!212011 lambda!211999))))

(assert (=> bs!1100392 (= (= lt!1873065 lt!1872770) (= lambda!212011 lambda!211938))))

(assert (=> d!1498365 true))

(declare-fun call!329149 () Bool)

(declare-fun bm!329142 () Bool)

(declare-fun c!804518 () Bool)

(assert (=> bm!329142 (= call!329149 (forall!11445 (ite c!804518 (toList!5733 lt!1872599) (t!359953 (Cons!52599 lt!1872585 lt!1872571))) (ite c!804518 lambda!212007 lambda!212010)))))

(declare-fun e!2936540 () ListMap!5097)

(assert (=> b!4707699 (= e!2936540 lt!1873066)))

(declare-fun lt!1873068 () ListMap!5097)

(assert (=> b!4707699 (= lt!1873068 (+!2206 lt!1872599 (h!58898 (Cons!52599 lt!1872585 lt!1872571))))))

(assert (=> b!4707699 (= lt!1873066 (addToMapMapFromBucket!1354 (t!359953 (Cons!52599 lt!1872585 lt!1872571)) (+!2206 lt!1872599 (h!58898 (Cons!52599 lt!1872585 lt!1872571)))))))

(declare-fun lt!1873060 () Unit!127368)

(declare-fun call!329148 () Unit!127368)

(assert (=> b!4707699 (= lt!1873060 call!329148)))

(assert (=> b!4707699 (forall!11445 (toList!5733 lt!1872599) lambda!212009)))

(declare-fun lt!1873058 () Unit!127368)

(assert (=> b!4707699 (= lt!1873058 lt!1873060)))

(assert (=> b!4707699 (forall!11445 (toList!5733 lt!1873068) lambda!212010)))

(declare-fun lt!1873054 () Unit!127368)

(declare-fun Unit!127452 () Unit!127368)

(assert (=> b!4707699 (= lt!1873054 Unit!127452)))

(assert (=> b!4707699 call!329149))

(declare-fun lt!1873053 () Unit!127368)

(declare-fun Unit!127453 () Unit!127368)

(assert (=> b!4707699 (= lt!1873053 Unit!127453)))

(declare-fun lt!1873055 () Unit!127368)

(declare-fun Unit!127454 () Unit!127368)

(assert (=> b!4707699 (= lt!1873055 Unit!127454)))

(declare-fun lt!1873048 () Unit!127368)

(assert (=> b!4707699 (= lt!1873048 (forallContained!3551 (toList!5733 lt!1873068) lambda!212010 (h!58898 (Cons!52599 lt!1872585 lt!1872571))))))

(assert (=> b!4707699 (contains!15922 lt!1873068 (_1!30335 (h!58898 (Cons!52599 lt!1872585 lt!1872571))))))

(declare-fun lt!1873056 () Unit!127368)

(declare-fun Unit!127455 () Unit!127368)

(assert (=> b!4707699 (= lt!1873056 Unit!127455)))

(assert (=> b!4707699 (contains!15922 lt!1873066 (_1!30335 (h!58898 (Cons!52599 lt!1872585 lt!1872571))))))

(declare-fun lt!1873061 () Unit!127368)

(declare-fun Unit!127456 () Unit!127368)

(assert (=> b!4707699 (= lt!1873061 Unit!127456)))

(assert (=> b!4707699 (forall!11445 (Cons!52599 lt!1872585 lt!1872571) lambda!212010)))

(declare-fun lt!1873059 () Unit!127368)

(declare-fun Unit!127457 () Unit!127368)

(assert (=> b!4707699 (= lt!1873059 Unit!127457)))

(assert (=> b!4707699 (forall!11445 (toList!5733 lt!1873068) lambda!212010)))

(declare-fun lt!1873050 () Unit!127368)

(declare-fun Unit!127458 () Unit!127368)

(assert (=> b!4707699 (= lt!1873050 Unit!127458)))

(declare-fun lt!1873062 () Unit!127368)

(declare-fun Unit!127459 () Unit!127368)

(assert (=> b!4707699 (= lt!1873062 Unit!127459)))

(declare-fun lt!1873052 () Unit!127368)

(assert (=> b!4707699 (= lt!1873052 (addForallContainsKeyThenBeforeAdding!750 lt!1872599 lt!1873066 (_1!30335 (h!58898 (Cons!52599 lt!1872585 lt!1872571))) (_2!30335 (h!58898 (Cons!52599 lt!1872585 lt!1872571)))))))

(assert (=> b!4707699 (forall!11445 (toList!5733 lt!1872599) lambda!212010)))

(declare-fun lt!1873067 () Unit!127368)

(assert (=> b!4707699 (= lt!1873067 lt!1873052)))

(assert (=> b!4707699 (forall!11445 (toList!5733 lt!1872599) lambda!212010)))

(declare-fun lt!1873064 () Unit!127368)

(declare-fun Unit!127460 () Unit!127368)

(assert (=> b!4707699 (= lt!1873064 Unit!127460)))

(declare-fun res!1988920 () Bool)

(assert (=> b!4707699 (= res!1988920 (forall!11445 (Cons!52599 lt!1872585 lt!1872571) lambda!212010))))

(declare-fun e!2936542 () Bool)

(assert (=> b!4707699 (=> (not res!1988920) (not e!2936542))))

(assert (=> b!4707699 e!2936542))

(declare-fun lt!1873063 () Unit!127368)

(declare-fun Unit!127461 () Unit!127368)

(assert (=> b!4707699 (= lt!1873063 Unit!127461)))

(declare-fun b!4707700 () Bool)

(declare-fun res!1988919 () Bool)

(declare-fun e!2936541 () Bool)

(assert (=> b!4707700 (=> (not res!1988919) (not e!2936541))))

(assert (=> b!4707700 (= res!1988919 (forall!11445 (toList!5733 lt!1872599) lambda!212011))))

(assert (=> b!4707701 (= e!2936540 lt!1872599)))

(declare-fun lt!1873057 () Unit!127368)

(assert (=> b!4707701 (= lt!1873057 call!329148)))

(declare-fun call!329147 () Bool)

(assert (=> b!4707701 call!329147))

(declare-fun lt!1873051 () Unit!127368)

(assert (=> b!4707701 (= lt!1873051 lt!1873057)))

(assert (=> b!4707701 call!329149))

(declare-fun lt!1873049 () Unit!127368)

(declare-fun Unit!127462 () Unit!127368)

(assert (=> b!4707701 (= lt!1873049 Unit!127462)))

(declare-fun b!4707702 () Bool)

(assert (=> b!4707702 (= e!2936541 (invariantList!1464 (toList!5733 lt!1873065)))))

(declare-fun bm!329143 () Bool)

(assert (=> bm!329143 (= call!329147 (forall!11445 (toList!5733 lt!1872599) (ite c!804518 lambda!212007 lambda!212010)))))

(assert (=> d!1498365 e!2936541))

(declare-fun res!1988918 () Bool)

(assert (=> d!1498365 (=> (not res!1988918) (not e!2936541))))

(assert (=> d!1498365 (= res!1988918 (forall!11445 (Cons!52599 lt!1872585 lt!1872571) lambda!212011))))

(assert (=> d!1498365 (= lt!1873065 e!2936540)))

(assert (=> d!1498365 (= c!804518 ((_ is Nil!52599) (Cons!52599 lt!1872585 lt!1872571)))))

(assert (=> d!1498365 (noDuplicateKeys!1922 (Cons!52599 lt!1872585 lt!1872571))))

(assert (=> d!1498365 (= (addToMapMapFromBucket!1354 (Cons!52599 lt!1872585 lt!1872571) lt!1872599) lt!1873065)))

(declare-fun b!4707703 () Bool)

(assert (=> b!4707703 (= e!2936542 call!329147)))

(declare-fun bm!329144 () Bool)

(assert (=> bm!329144 (= call!329148 (lemmaContainsAllItsOwnKeys!752 lt!1872599))))

(assert (= (and d!1498365 c!804518) b!4707701))

(assert (= (and d!1498365 (not c!804518)) b!4707699))

(assert (= (and b!4707699 res!1988920) b!4707703))

(assert (= (or b!4707701 b!4707699) bm!329144))

(assert (= (or b!4707701 b!4707703) bm!329143))

(assert (= (or b!4707701 b!4707699) bm!329142))

(assert (= (and d!1498365 res!1988918) b!4707700))

(assert (= (and b!4707700 res!1988919) b!4707702))

(declare-fun m!5632027 () Bool)

(assert (=> bm!329142 m!5632027))

(declare-fun m!5632029 () Bool)

(assert (=> b!4707699 m!5632029))

(declare-fun m!5632031 () Bool)

(assert (=> b!4707699 m!5632031))

(declare-fun m!5632033 () Bool)

(assert (=> b!4707699 m!5632033))

(declare-fun m!5632035 () Bool)

(assert (=> b!4707699 m!5632035))

(declare-fun m!5632037 () Bool)

(assert (=> b!4707699 m!5632037))

(declare-fun m!5632039 () Bool)

(assert (=> b!4707699 m!5632039))

(assert (=> b!4707699 m!5632031))

(assert (=> b!4707699 m!5632039))

(declare-fun m!5632041 () Bool)

(assert (=> b!4707699 m!5632041))

(declare-fun m!5632043 () Bool)

(assert (=> b!4707699 m!5632043))

(declare-fun m!5632045 () Bool)

(assert (=> b!4707699 m!5632045))

(assert (=> b!4707699 m!5632035))

(assert (=> b!4707699 m!5632029))

(declare-fun m!5632047 () Bool)

(assert (=> b!4707699 m!5632047))

(assert (=> bm!329144 m!5631551))

(declare-fun m!5632049 () Bool)

(assert (=> b!4707702 m!5632049))

(declare-fun m!5632051 () Bool)

(assert (=> d!1498365 m!5632051))

(declare-fun m!5632053 () Bool)

(assert (=> d!1498365 m!5632053))

(declare-fun m!5632055 () Bool)

(assert (=> bm!329143 m!5632055))

(declare-fun m!5632057 () Bool)

(assert (=> b!4707700 m!5632057))

(assert (=> b!4707386 d!1498365))

(declare-fun d!1498371 () Bool)

(assert (=> d!1498371 (eq!1081 (addToMapMapFromBucket!1354 (Cons!52599 lt!1872585 lt!1872571) lt!1872599) (+!2206 (addToMapMapFromBucket!1354 lt!1872571 lt!1872599) lt!1872585))))

(declare-fun lt!1873069 () Unit!127368)

(assert (=> d!1498371 (= lt!1873069 (choose!33095 lt!1872585 lt!1872571 lt!1872599))))

(assert (=> d!1498371 (noDuplicateKeys!1922 lt!1872571)))

(assert (=> d!1498371 (= (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!330 lt!1872585 lt!1872571 lt!1872599) lt!1873069)))

(declare-fun bs!1100397 () Bool)

(assert (= bs!1100397 d!1498371))

(assert (=> bs!1100397 m!5631727))

(assert (=> bs!1100397 m!5631159))

(assert (=> bs!1100397 m!5631161))

(assert (=> bs!1100397 m!5631159))

(assert (=> bs!1100397 m!5631165))

(assert (=> bs!1100397 m!5631165))

(assert (=> bs!1100397 m!5631161))

(assert (=> bs!1100397 m!5631175))

(declare-fun m!5632059 () Bool)

(assert (=> bs!1100397 m!5632059))

(assert (=> b!4707386 d!1498371))

(declare-fun d!1498373 () Bool)

(assert (=> d!1498373 (= (head!10108 newBucket!218) (h!58898 newBucket!218))))

(assert (=> b!4707386 d!1498373))

(declare-fun d!1498375 () Bool)

(assert (=> d!1498375 (= (eq!1081 lt!1872601 lt!1872570) (= (content!9322 (toList!5733 lt!1872601)) (content!9322 (toList!5733 lt!1872570))))))

(declare-fun bs!1100398 () Bool)

(assert (= bs!1100398 d!1498375))

(declare-fun m!5632061 () Bool)

(assert (=> bs!1100398 m!5632061))

(declare-fun m!5632063 () Bool)

(assert (=> bs!1100398 m!5632063))

(assert (=> b!4707365 d!1498375))

(declare-fun bs!1100447 () Bool)

(declare-fun d!1498377 () Bool)

(assert (= bs!1100447 (and d!1498377 d!1498359)))

(declare-fun lambda!212021 () Int)

(assert (=> bs!1100447 (= lambda!212021 lambda!212004)))

(declare-fun bs!1100448 () Bool)

(assert (= bs!1100448 (and d!1498377 d!1498329)))

(assert (=> bs!1100448 (= lambda!212021 lambda!211995)))

(declare-fun bs!1100449 () Bool)

(assert (= bs!1100449 (and d!1498377 start!478140)))

(assert (=> bs!1100449 (= lambda!212021 lambda!211883)))

(declare-fun bs!1100450 () Bool)

(assert (= bs!1100450 (and d!1498377 d!1498209)))

(assert (=> bs!1100450 (= lambda!212021 lambda!211889)))

(declare-fun bs!1100452 () Bool)

(assert (= bs!1100452 (and d!1498377 d!1498277)))

(assert (=> bs!1100452 (= lambda!212021 lambda!211967)))

(declare-fun bs!1100453 () Bool)

(assert (= bs!1100453 (and d!1498377 d!1498267)))

(assert (=> bs!1100453 (= lambda!212021 lambda!211948)))

(declare-fun bs!1100454 () Bool)

(assert (= bs!1100454 (and d!1498377 d!1498281)))

(assert (=> bs!1100454 (= lambda!212021 lambda!211978)))

(assert (=> d!1498377 (eq!1081 (extractMap!1948 (Cons!52600 (tuple2!54085 hash!405 lt!1872571) (tail!8791 (toList!5734 lt!1872577)))) (-!726 (extractMap!1948 (Cons!52600 (tuple2!54085 hash!405 (t!359953 oldBucket!34)) (tail!8791 (toList!5734 lt!1872577)))) key!4653))))

(declare-fun lt!1873096 () Unit!127368)

(declare-fun choose!33098 (ListLongMap!4263 (_ BitVec 64) List!52723 List!52723 K!13955 Hashable!6291) Unit!127368)

(assert (=> d!1498377 (= lt!1873096 (choose!33098 lt!1872577 hash!405 (t!359953 oldBucket!34) lt!1872571 key!4653 hashF!1323))))

(assert (=> d!1498377 (forall!11443 (toList!5734 lt!1872577) lambda!212021)))

(assert (=> d!1498377 (= (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMapOneHashIsHead!96 lt!1872577 hash!405 (t!359953 oldBucket!34) lt!1872571 key!4653 hashF!1323) lt!1873096)))

(declare-fun bs!1100459 () Bool)

(assert (= bs!1100459 d!1498377))

(declare-fun m!5632111 () Bool)

(assert (=> bs!1100459 m!5632111))

(declare-fun m!5632113 () Bool)

(assert (=> bs!1100459 m!5632113))

(declare-fun m!5632115 () Bool)

(assert (=> bs!1100459 m!5632115))

(assert (=> bs!1100459 m!5632111))

(assert (=> bs!1100459 m!5632115))

(declare-fun m!5632117 () Bool)

(assert (=> bs!1100459 m!5632117))

(declare-fun m!5632119 () Bool)

(assert (=> bs!1100459 m!5632119))

(assert (=> bs!1100459 m!5632113))

(declare-fun m!5632121 () Bool)

(assert (=> bs!1100459 m!5632121))

(declare-fun m!5632123 () Bool)

(assert (=> bs!1100459 m!5632123))

(assert (=> b!4707365 d!1498377))

(declare-fun bs!1100469 () Bool)

(declare-fun d!1498385 () Bool)

(assert (= bs!1100469 (and d!1498385 d!1498359)))

(declare-fun lambda!212023 () Int)

(assert (=> bs!1100469 (= lambda!212023 lambda!212004)))

(declare-fun bs!1100470 () Bool)

(assert (= bs!1100470 (and d!1498385 d!1498329)))

(assert (=> bs!1100470 (= lambda!212023 lambda!211995)))

(declare-fun bs!1100471 () Bool)

(assert (= bs!1100471 (and d!1498385 start!478140)))

(assert (=> bs!1100471 (= lambda!212023 lambda!211883)))

(declare-fun bs!1100472 () Bool)

(assert (= bs!1100472 (and d!1498385 d!1498209)))

(assert (=> bs!1100472 (= lambda!212023 lambda!211889)))

(declare-fun bs!1100473 () Bool)

(assert (= bs!1100473 (and d!1498385 d!1498277)))

(assert (=> bs!1100473 (= lambda!212023 lambda!211967)))

(declare-fun bs!1100475 () Bool)

(assert (= bs!1100475 (and d!1498385 d!1498267)))

(assert (=> bs!1100475 (= lambda!212023 lambda!211948)))

(declare-fun bs!1100478 () Bool)

(assert (= bs!1100478 (and d!1498385 d!1498281)))

(assert (=> bs!1100478 (= lambda!212023 lambda!211978)))

(declare-fun bs!1100480 () Bool)

(assert (= bs!1100480 (and d!1498385 d!1498377)))

(assert (=> bs!1100480 (= lambda!212023 lambda!212021)))

(declare-fun lt!1873119 () ListMap!5097)

(assert (=> d!1498385 (invariantList!1464 (toList!5733 lt!1873119))))

(declare-fun e!2936549 () ListMap!5097)

(assert (=> d!1498385 (= lt!1873119 e!2936549)))

(declare-fun c!804521 () Bool)

(assert (=> d!1498385 (= c!804521 ((_ is Cons!52600) (Cons!52600 lt!1872579 (t!359954 (toList!5734 lm!2023)))))))

(assert (=> d!1498385 (forall!11443 (Cons!52600 lt!1872579 (t!359954 (toList!5734 lm!2023))) lambda!212023)))

(assert (=> d!1498385 (= (extractMap!1948 (Cons!52600 lt!1872579 (t!359954 (toList!5734 lm!2023)))) lt!1873119)))

(declare-fun b!4707714 () Bool)

(assert (=> b!4707714 (= e!2936549 (addToMapMapFromBucket!1354 (_2!30336 (h!58899 (Cons!52600 lt!1872579 (t!359954 (toList!5734 lm!2023))))) (extractMap!1948 (t!359954 (Cons!52600 lt!1872579 (t!359954 (toList!5734 lm!2023)))))))))

(declare-fun b!4707715 () Bool)

(assert (=> b!4707715 (= e!2936549 (ListMap!5098 Nil!52599))))

(assert (= (and d!1498385 c!804521) b!4707714))

(assert (= (and d!1498385 (not c!804521)) b!4707715))

(declare-fun m!5632125 () Bool)

(assert (=> d!1498385 m!5632125))

(declare-fun m!5632127 () Bool)

(assert (=> d!1498385 m!5632127))

(declare-fun m!5632129 () Bool)

(assert (=> b!4707714 m!5632129))

(assert (=> b!4707714 m!5632129))

(declare-fun m!5632131 () Bool)

(assert (=> b!4707714 m!5632131))

(assert (=> b!4707365 d!1498385))

(declare-fun d!1498387 () Bool)

(declare-fun e!2936552 () Bool)

(assert (=> d!1498387 e!2936552))

(declare-fun res!1988929 () Bool)

(assert (=> d!1498387 (=> (not res!1988929) (not e!2936552))))

(declare-fun lt!1873122 () ListMap!5097)

(assert (=> d!1498387 (= res!1988929 (not (contains!15922 lt!1873122 key!4653)))))

(declare-fun removePresrvNoDuplicatedKeys!385 (List!52723 K!13955) List!52723)

(assert (=> d!1498387 (= lt!1873122 (ListMap!5098 (removePresrvNoDuplicatedKeys!385 (toList!5733 (extractMap!1948 (Cons!52600 lt!1872586 lt!1872588))) key!4653)))))

(assert (=> d!1498387 (= (-!726 (extractMap!1948 (Cons!52600 lt!1872586 lt!1872588)) key!4653) lt!1873122)))

(declare-fun b!4707718 () Bool)

(declare-fun content!9323 (List!52726) (InoxSet K!13955))

(assert (=> b!4707718 (= e!2936552 (= ((_ map and) (content!9323 (keys!18835 (extractMap!1948 (Cons!52600 lt!1872586 lt!1872588)))) ((_ map not) (store ((as const (Array K!13955 Bool)) false) key!4653 true))) (content!9323 (keys!18835 lt!1873122))))))

(assert (= (and d!1498387 res!1988929) b!4707718))

(declare-fun m!5632165 () Bool)

(assert (=> d!1498387 m!5632165))

(declare-fun m!5632167 () Bool)

(assert (=> d!1498387 m!5632167))

(declare-fun m!5632169 () Bool)

(assert (=> b!4707718 m!5632169))

(declare-fun m!5632171 () Bool)

(assert (=> b!4707718 m!5632171))

(declare-fun m!5632173 () Bool)

(assert (=> b!4707718 m!5632173))

(assert (=> b!4707718 m!5631241))

(declare-fun m!5632175 () Bool)

(assert (=> b!4707718 m!5632175))

(assert (=> b!4707718 m!5632175))

(declare-fun m!5632177 () Bool)

(assert (=> b!4707718 m!5632177))

(assert (=> b!4707718 m!5632169))

(assert (=> b!4707365 d!1498387))

(declare-fun bs!1100514 () Bool)

(declare-fun d!1498393 () Bool)

(assert (= bs!1100514 (and d!1498393 d!1498359)))

(declare-fun lambda!212028 () Int)

(assert (=> bs!1100514 (= lambda!212028 lambda!212004)))

(declare-fun bs!1100516 () Bool)

(assert (= bs!1100516 (and d!1498393 d!1498329)))

(assert (=> bs!1100516 (= lambda!212028 lambda!211995)))

(declare-fun bs!1100518 () Bool)

(assert (= bs!1100518 (and d!1498393 start!478140)))

(assert (=> bs!1100518 (= lambda!212028 lambda!211883)))

(declare-fun bs!1100520 () Bool)

(assert (= bs!1100520 (and d!1498393 d!1498209)))

(assert (=> bs!1100520 (= lambda!212028 lambda!211889)))

(declare-fun bs!1100522 () Bool)

(assert (= bs!1100522 (and d!1498393 d!1498385)))

(assert (=> bs!1100522 (= lambda!212028 lambda!212023)))

(declare-fun bs!1100524 () Bool)

(assert (= bs!1100524 (and d!1498393 d!1498277)))

(assert (=> bs!1100524 (= lambda!212028 lambda!211967)))

(declare-fun bs!1100526 () Bool)

(assert (= bs!1100526 (and d!1498393 d!1498267)))

(assert (=> bs!1100526 (= lambda!212028 lambda!211948)))

(declare-fun bs!1100527 () Bool)

(assert (= bs!1100527 (and d!1498393 d!1498281)))

(assert (=> bs!1100527 (= lambda!212028 lambda!211978)))

(declare-fun bs!1100528 () Bool)

(assert (= bs!1100528 (and d!1498393 d!1498377)))

(assert (=> bs!1100528 (= lambda!212028 lambda!212021)))

(declare-fun lt!1873123 () ListMap!5097)

(assert (=> d!1498393 (invariantList!1464 (toList!5733 lt!1873123))))

(declare-fun e!2936553 () ListMap!5097)

(assert (=> d!1498393 (= lt!1873123 e!2936553)))

(declare-fun c!804522 () Bool)

(assert (=> d!1498393 (= c!804522 ((_ is Cons!52600) (Cons!52600 lt!1872579 lt!1872588)))))

(assert (=> d!1498393 (forall!11443 (Cons!52600 lt!1872579 lt!1872588) lambda!212028)))

(assert (=> d!1498393 (= (extractMap!1948 (Cons!52600 lt!1872579 lt!1872588)) lt!1873123)))

(declare-fun b!4707719 () Bool)

(assert (=> b!4707719 (= e!2936553 (addToMapMapFromBucket!1354 (_2!30336 (h!58899 (Cons!52600 lt!1872579 lt!1872588))) (extractMap!1948 (t!359954 (Cons!52600 lt!1872579 lt!1872588)))))))

(declare-fun b!4707720 () Bool)

(assert (=> b!4707720 (= e!2936553 (ListMap!5098 Nil!52599))))

(assert (= (and d!1498393 c!804522) b!4707719))

(assert (= (and d!1498393 (not c!804522)) b!4707720))

(declare-fun m!5632179 () Bool)

(assert (=> d!1498393 m!5632179))

(declare-fun m!5632181 () Bool)

(assert (=> d!1498393 m!5632181))

(declare-fun m!5632185 () Bool)

(assert (=> b!4707719 m!5632185))

(assert (=> b!4707719 m!5632185))

(declare-fun m!5632187 () Bool)

(assert (=> b!4707719 m!5632187))

(assert (=> b!4707365 d!1498393))

(declare-fun d!1498397 () Bool)

(assert (=> d!1498397 (= (tail!8791 lt!1872594) (t!359954 lt!1872594))))

(assert (=> b!4707365 d!1498397))

(declare-fun d!1498401 () Bool)

(assert (=> d!1498401 (= (eq!1081 (extractMap!1948 (Cons!52600 lt!1872579 lt!1872588)) (-!726 (extractMap!1948 (Cons!52600 lt!1872586 lt!1872588)) key!4653)) (= (content!9322 (toList!5733 (extractMap!1948 (Cons!52600 lt!1872579 lt!1872588)))) (content!9322 (toList!5733 (-!726 (extractMap!1948 (Cons!52600 lt!1872586 lt!1872588)) key!4653)))))))

(declare-fun bs!1100533 () Bool)

(assert (= bs!1100533 d!1498401))

(declare-fun m!5632201 () Bool)

(assert (=> bs!1100533 m!5632201))

(declare-fun m!5632203 () Bool)

(assert (=> bs!1100533 m!5632203))

(assert (=> b!4707365 d!1498401))

(declare-fun d!1498405 () Bool)

(declare-fun e!2936555 () Bool)

(assert (=> d!1498405 e!2936555))

(declare-fun res!1988932 () Bool)

(assert (=> d!1498405 (=> (not res!1988932) (not e!2936555))))

(declare-fun lt!1873128 () ListMap!5097)

(assert (=> d!1498405 (= res!1988932 (not (contains!15922 lt!1873128 key!4653)))))

(assert (=> d!1498405 (= lt!1873128 (ListMap!5098 (removePresrvNoDuplicatedKeys!385 (toList!5733 lt!1872573) key!4653)))))

(assert (=> d!1498405 (= (-!726 lt!1872573 key!4653) lt!1873128)))

(declare-fun b!4707723 () Bool)

(assert (=> b!4707723 (= e!2936555 (= ((_ map and) (content!9323 (keys!18835 lt!1872573)) ((_ map not) (store ((as const (Array K!13955 Bool)) false) key!4653 true))) (content!9323 (keys!18835 lt!1873128))))))

(assert (= (and d!1498405 res!1988932) b!4707723))

(declare-fun m!5632209 () Bool)

(assert (=> d!1498405 m!5632209))

(declare-fun m!5632211 () Bool)

(assert (=> d!1498405 m!5632211))

(declare-fun m!5632213 () Bool)

(assert (=> b!4707723 m!5632213))

(declare-fun m!5632215 () Bool)

(assert (=> b!4707723 m!5632215))

(assert (=> b!4707723 m!5632173))

(assert (=> b!4707723 m!5631923))

(assert (=> b!4707723 m!5631923))

(declare-fun m!5632217 () Bool)

(assert (=> b!4707723 m!5632217))

(assert (=> b!4707723 m!5632213))

(assert (=> b!4707365 d!1498405))

(declare-fun bs!1100535 () Bool)

(declare-fun d!1498409 () Bool)

(assert (= bs!1100535 (and d!1498409 d!1498359)))

(declare-fun lambda!212029 () Int)

(assert (=> bs!1100535 (= lambda!212029 lambda!212004)))

(declare-fun bs!1100536 () Bool)

(assert (= bs!1100536 (and d!1498409 d!1498329)))

(assert (=> bs!1100536 (= lambda!212029 lambda!211995)))

(declare-fun bs!1100537 () Bool)

(assert (= bs!1100537 (and d!1498409 d!1498393)))

(assert (=> bs!1100537 (= lambda!212029 lambda!212028)))

(declare-fun bs!1100538 () Bool)

(assert (= bs!1100538 (and d!1498409 start!478140)))

(assert (=> bs!1100538 (= lambda!212029 lambda!211883)))

(declare-fun bs!1100539 () Bool)

(assert (= bs!1100539 (and d!1498409 d!1498209)))

(assert (=> bs!1100539 (= lambda!212029 lambda!211889)))

(declare-fun bs!1100540 () Bool)

(assert (= bs!1100540 (and d!1498409 d!1498385)))

(assert (=> bs!1100540 (= lambda!212029 lambda!212023)))

(declare-fun bs!1100541 () Bool)

(assert (= bs!1100541 (and d!1498409 d!1498277)))

(assert (=> bs!1100541 (= lambda!212029 lambda!211967)))

(declare-fun bs!1100542 () Bool)

(assert (= bs!1100542 (and d!1498409 d!1498267)))

(assert (=> bs!1100542 (= lambda!212029 lambda!211948)))

(declare-fun bs!1100543 () Bool)

(assert (= bs!1100543 (and d!1498409 d!1498281)))

(assert (=> bs!1100543 (= lambda!212029 lambda!211978)))

(declare-fun bs!1100544 () Bool)

(assert (= bs!1100544 (and d!1498409 d!1498377)))

(assert (=> bs!1100544 (= lambda!212029 lambda!212021)))

(declare-fun lt!1873129 () ListMap!5097)

(assert (=> d!1498409 (invariantList!1464 (toList!5733 lt!1873129))))

(declare-fun e!2936556 () ListMap!5097)

(assert (=> d!1498409 (= lt!1873129 e!2936556)))

(declare-fun c!804523 () Bool)

(assert (=> d!1498409 (= c!804523 ((_ is Cons!52600) (Cons!52600 lt!1872586 lt!1872588)))))

(assert (=> d!1498409 (forall!11443 (Cons!52600 lt!1872586 lt!1872588) lambda!212029)))

(assert (=> d!1498409 (= (extractMap!1948 (Cons!52600 lt!1872586 lt!1872588)) lt!1873129)))

(declare-fun b!4707724 () Bool)

(assert (=> b!4707724 (= e!2936556 (addToMapMapFromBucket!1354 (_2!30336 (h!58899 (Cons!52600 lt!1872586 lt!1872588))) (extractMap!1948 (t!359954 (Cons!52600 lt!1872586 lt!1872588)))))))

(declare-fun b!4707725 () Bool)

(assert (=> b!4707725 (= e!2936556 (ListMap!5098 Nil!52599))))

(assert (= (and d!1498409 c!804523) b!4707724))

(assert (= (and d!1498409 (not c!804523)) b!4707725))

(declare-fun m!5632219 () Bool)

(assert (=> d!1498409 m!5632219))

(declare-fun m!5632221 () Bool)

(assert (=> d!1498409 m!5632221))

(declare-fun m!5632223 () Bool)

(assert (=> b!4707724 m!5632223))

(assert (=> b!4707724 m!5632223))

(declare-fun m!5632225 () Bool)

(assert (=> b!4707724 m!5632225))

(assert (=> b!4707365 d!1498409))

(declare-fun d!1498411 () Bool)

(declare-fun res!1988933 () Bool)

(declare-fun e!2936557 () Bool)

(assert (=> d!1498411 (=> res!1988933 e!2936557)))

(assert (=> d!1498411 (= res!1988933 (not ((_ is Cons!52599) oldBucket!34)))))

(assert (=> d!1498411 (= (noDuplicateKeys!1922 oldBucket!34) e!2936557)))

(declare-fun b!4707726 () Bool)

(declare-fun e!2936558 () Bool)

(assert (=> b!4707726 (= e!2936557 e!2936558)))

(declare-fun res!1988934 () Bool)

(assert (=> b!4707726 (=> (not res!1988934) (not e!2936558))))

(assert (=> b!4707726 (= res!1988934 (not (containsKey!3229 (t!359953 oldBucket!34) (_1!30335 (h!58898 oldBucket!34)))))))

(declare-fun b!4707727 () Bool)

(assert (=> b!4707727 (= e!2936558 (noDuplicateKeys!1922 (t!359953 oldBucket!34)))))

(assert (= (and d!1498411 (not res!1988933)) b!4707726))

(assert (= (and b!4707726 res!1988934) b!4707727))

(declare-fun m!5632227 () Bool)

(assert (=> b!4707726 m!5632227))

(assert (=> b!4707727 m!5631579))

(assert (=> b!4707387 d!1498411))

(declare-fun bs!1100545 () Bool)

(declare-fun d!1498413 () Bool)

(assert (= bs!1100545 (and d!1498413 b!4707592)))

(declare-fun lambda!212032 () Int)

(assert (=> bs!1100545 (not (= lambda!212032 lambda!211979))))

(declare-fun bs!1100546 () Bool)

(assert (= bs!1100546 (and d!1498413 b!4707590)))

(assert (=> bs!1100546 (not (= lambda!212032 lambda!211983))))

(declare-fun bs!1100547 () Bool)

(assert (= bs!1100547 (and d!1498413 b!4707701)))

(assert (=> bs!1100547 (not (= lambda!212032 lambda!212007))))

(declare-fun bs!1100548 () Bool)

(assert (= bs!1100548 (and d!1498413 d!1498355)))

(assert (=> bs!1100548 (not (= lambda!212032 lambda!212002))))

(declare-fun bs!1100549 () Bool)

(assert (= bs!1100549 (and d!1498413 b!4707699)))

(assert (=> bs!1100549 (not (= lambda!212032 lambda!212009))))

(declare-fun bs!1100550 () Bool)

(assert (= bs!1100550 (and d!1498413 d!1498309)))

(assert (=> bs!1100550 (not (= lambda!212032 lambda!211985))))

(assert (=> bs!1100546 (not (= lambda!212032 lambda!211982))))

(declare-fun bs!1100551 () Bool)

(assert (= bs!1100551 (and d!1498413 b!4707531)))

(assert (=> bs!1100551 (not (= lambda!212032 lambda!211936))))

(declare-fun bs!1100552 () Bool)

(assert (= bs!1100552 (and d!1498413 b!4707605)))

(assert (=> bs!1100552 (not (= lambda!212032 lambda!211988))))

(declare-fun bs!1100553 () Bool)

(assert (= bs!1100553 (and d!1498413 b!4707685)))

(assert (=> bs!1100553 (not (= lambda!212032 lambda!212001))))

(declare-fun bs!1100554 () Bool)

(assert (= bs!1100554 (and d!1498413 b!4707529)))

(assert (=> bs!1100554 (not (= lambda!212032 lambda!211937))))

(declare-fun bs!1100555 () Bool)

(assert (= bs!1100555 (and d!1498413 d!1498365)))

(assert (=> bs!1100555 (not (= lambda!212032 lambda!212011))))

(assert (=> bs!1100549 (not (= lambda!212032 lambda!212010))))

(assert (=> bs!1100552 (not (= lambda!212032 lambda!211989))))

(declare-fun bs!1100556 () Bool)

(assert (= bs!1100556 (and d!1498413 d!1498219)))

(assert (=> bs!1100556 (not (= lambda!212032 lambda!211941))))

(declare-fun bs!1100557 () Bool)

(assert (= bs!1100557 (and d!1498413 b!4707607)))

(assert (=> bs!1100557 (not (= lambda!212032 lambda!211987))))

(assert (=> bs!1100553 (not (= lambda!212032 lambda!212000))))

(declare-fun bs!1100558 () Bool)

(assert (= bs!1100558 (and d!1498413 d!1498315)))

(assert (=> bs!1100558 (not (= lambda!212032 lambda!211992))))

(declare-fun bs!1100559 () Bool)

(assert (= bs!1100559 (and d!1498413 b!4707687)))

(assert (=> bs!1100559 (not (= lambda!212032 lambda!211999))))

(assert (=> bs!1100554 (not (= lambda!212032 lambda!211938))))

(assert (=> d!1498413 true))

(assert (=> d!1498413 true))

(assert (=> d!1498413 (= (allKeysSameHash!1748 oldBucket!34 hash!405 hashF!1323) (forall!11445 oldBucket!34 lambda!212032))))

(declare-fun bs!1100560 () Bool)

(assert (= bs!1100560 d!1498413))

(declare-fun m!5632229 () Bool)

(assert (=> bs!1100560 m!5632229))

(assert (=> b!4707382 d!1498413))

(declare-fun b!4707732 () Bool)

(declare-fun e!2936560 () List!52723)

(assert (=> b!4707732 (= e!2936560 (t!359953 oldBucket!34))))

(declare-fun b!4707735 () Bool)

(declare-fun e!2936559 () List!52723)

(assert (=> b!4707735 (= e!2936559 Nil!52599)))

(declare-fun d!1498415 () Bool)

(declare-fun lt!1873130 () List!52723)

(assert (=> d!1498415 (not (containsKey!3229 lt!1873130 key!4653))))

(assert (=> d!1498415 (= lt!1873130 e!2936560)))

(declare-fun c!804524 () Bool)

(assert (=> d!1498415 (= c!804524 (and ((_ is Cons!52599) oldBucket!34) (= (_1!30335 (h!58898 oldBucket!34)) key!4653)))))

(assert (=> d!1498415 (noDuplicateKeys!1922 oldBucket!34)))

(assert (=> d!1498415 (= (removePairForKey!1517 oldBucket!34 key!4653) lt!1873130)))

(declare-fun b!4707734 () Bool)

(assert (=> b!4707734 (= e!2936559 (Cons!52599 (h!58898 oldBucket!34) (removePairForKey!1517 (t!359953 oldBucket!34) key!4653)))))

(declare-fun b!4707733 () Bool)

(assert (=> b!4707733 (= e!2936560 e!2936559)))

(declare-fun c!804525 () Bool)

(assert (=> b!4707733 (= c!804525 ((_ is Cons!52599) oldBucket!34))))

(assert (= (and d!1498415 c!804524) b!4707732))

(assert (= (and d!1498415 (not c!804524)) b!4707733))

(assert (= (and b!4707733 c!804525) b!4707734))

(assert (= (and b!4707733 (not c!804525)) b!4707735))

(declare-fun m!5632231 () Bool)

(assert (=> d!1498415 m!5632231))

(assert (=> d!1498415 m!5631119))

(assert (=> b!4707734 m!5631117))

(assert (=> b!4707383 d!1498415))

(declare-fun d!1498417 () Bool)

(assert (=> d!1498417 (= (eq!1081 lt!1872578 lt!1872596) (= (content!9322 (toList!5733 lt!1872578)) (content!9322 (toList!5733 lt!1872596))))))

(declare-fun bs!1100561 () Bool)

(assert (= bs!1100561 d!1498417))

(assert (=> bs!1100561 m!5631351))

(assert (=> bs!1100561 m!5631345))

(assert (=> b!4707380 d!1498417))

(declare-fun d!1498419 () Bool)

(assert (=> d!1498419 (= (eq!1081 lt!1872575 lt!1872596) (= (content!9322 (toList!5733 lt!1872575)) (content!9322 (toList!5733 lt!1872596))))))

(declare-fun bs!1100562 () Bool)

(assert (= bs!1100562 d!1498419))

(assert (=> bs!1100562 m!5631349))

(assert (=> bs!1100562 m!5631345))

(assert (=> b!4707380 d!1498419))

(declare-fun d!1498421 () Bool)

(declare-fun e!2936561 () Bool)

(assert (=> d!1498421 e!2936561))

(declare-fun res!1988935 () Bool)

(assert (=> d!1498421 (=> (not res!1988935) (not e!2936561))))

(declare-fun lt!1873133 () ListMap!5097)

(assert (=> d!1498421 (= res!1988935 (not (contains!15922 lt!1873133 key!4653)))))

(assert (=> d!1498421 (= lt!1873133 (ListMap!5098 (removePresrvNoDuplicatedKeys!385 (toList!5733 lt!1872611) key!4653)))))

(assert (=> d!1498421 (= (-!726 lt!1872611 key!4653) lt!1873133)))

(declare-fun b!4707736 () Bool)

(assert (=> b!4707736 (= e!2936561 (= ((_ map and) (content!9323 (keys!18835 lt!1872611)) ((_ map not) (store ((as const (Array K!13955 Bool)) false) key!4653 true))) (content!9323 (keys!18835 lt!1873133))))))

(assert (= (and d!1498421 res!1988935) b!4707736))

(declare-fun m!5632233 () Bool)

(assert (=> d!1498421 m!5632233))

(declare-fun m!5632235 () Bool)

(assert (=> d!1498421 m!5632235))

(declare-fun m!5632237 () Bool)

(assert (=> b!4707736 m!5632237))

(declare-fun m!5632239 () Bool)

(assert (=> b!4707736 m!5632239))

(assert (=> b!4707736 m!5632173))

(declare-fun m!5632241 () Bool)

(assert (=> b!4707736 m!5632241))

(assert (=> b!4707736 m!5632241))

(declare-fun m!5632243 () Bool)

(assert (=> b!4707736 m!5632243))

(assert (=> b!4707736 m!5632237))

(assert (=> b!4707380 d!1498421))

(declare-fun d!1498423 () Bool)

(assert (=> d!1498423 (eq!1081 (-!726 lt!1872604 key!4653) (-!726 lt!1872611 key!4653))))

(declare-fun lt!1873147 () Unit!127368)

(declare-fun choose!33099 (ListMap!5097 ListMap!5097 K!13955) Unit!127368)

(assert (=> d!1498423 (= lt!1873147 (choose!33099 lt!1872604 lt!1872611 key!4653))))

(assert (=> d!1498423 (eq!1081 lt!1872604 lt!1872611)))

(assert (=> d!1498423 (= (lemmaRemovePreservesEq!108 lt!1872604 lt!1872611 key!4653) lt!1873147)))

(declare-fun bs!1100580 () Bool)

(assert (= bs!1100580 d!1498423))

(assert (=> bs!1100580 m!5631129))

(assert (=> bs!1100580 m!5631257))

(assert (=> bs!1100580 m!5631129))

(assert (=> bs!1100580 m!5631257))

(declare-fun m!5632291 () Bool)

(assert (=> bs!1100580 m!5632291))

(assert (=> bs!1100580 m!5631221))

(declare-fun m!5632293 () Bool)

(assert (=> bs!1100580 m!5632293))

(assert (=> b!4707380 d!1498423))

(declare-fun d!1498439 () Bool)

(assert (=> d!1498439 (= (eq!1081 lt!1872604 lt!1872611) (= (content!9322 (toList!5733 lt!1872604)) (content!9322 (toList!5733 lt!1872611))))))

(declare-fun bs!1100581 () Bool)

(assert (= bs!1100581 d!1498439))

(declare-fun m!5632295 () Bool)

(assert (=> bs!1100581 m!5632295))

(assert (=> bs!1100581 m!5631681))

(assert (=> b!4707377 d!1498439))

(declare-fun b!4707764 () Bool)

(declare-fun e!2936579 () Unit!127368)

(declare-fun lt!1873152 () Unit!127368)

(assert (=> b!4707764 (= e!2936579 lt!1873152)))

(declare-fun lt!1873151 () Unit!127368)

(assert (=> b!4707764 (= lt!1873151 (lemmaContainsKeyImpliesGetValueByKeyDefined!1780 (toList!5733 lt!1872593) key!4653))))

(assert (=> b!4707764 (isDefined!9511 (getValueByKey!1888 (toList!5733 lt!1872593) key!4653))))

(declare-fun lt!1873149 () Unit!127368)

(assert (=> b!4707764 (= lt!1873149 lt!1873151)))

(assert (=> b!4707764 (= lt!1873152 (lemmaInListThenGetKeysListContains!899 (toList!5733 lt!1872593) key!4653))))

(declare-fun call!329157 () Bool)

(assert (=> b!4707764 call!329157))

(declare-fun b!4707765 () Bool)

(declare-fun e!2936581 () Bool)

(declare-fun e!2936582 () Bool)

(assert (=> b!4707765 (= e!2936581 e!2936582)))

(declare-fun res!1988943 () Bool)

(assert (=> b!4707765 (=> (not res!1988943) (not e!2936582))))

(assert (=> b!4707765 (= res!1988943 (isDefined!9511 (getValueByKey!1888 (toList!5733 lt!1872593) key!4653)))))

(declare-fun b!4707766 () Bool)

(declare-fun e!2936583 () Unit!127368)

(assert (=> b!4707766 (= e!2936579 e!2936583)))

(declare-fun c!804534 () Bool)

(assert (=> b!4707766 (= c!804534 call!329157)))

(declare-fun b!4707767 () Bool)

(declare-fun Unit!127475 () Unit!127368)

(assert (=> b!4707767 (= e!2936583 Unit!127475)))

(declare-fun bm!329152 () Bool)

(declare-fun e!2936580 () List!52726)

(assert (=> bm!329152 (= call!329157 (contains!15926 e!2936580 key!4653))))

(declare-fun c!804533 () Bool)

(declare-fun c!804532 () Bool)

(assert (=> bm!329152 (= c!804533 c!804532)))

(declare-fun d!1498441 () Bool)

(assert (=> d!1498441 e!2936581))

(declare-fun res!1988941 () Bool)

(assert (=> d!1498441 (=> res!1988941 e!2936581)))

(declare-fun e!2936584 () Bool)

(assert (=> d!1498441 (= res!1988941 e!2936584)))

(declare-fun res!1988942 () Bool)

(assert (=> d!1498441 (=> (not res!1988942) (not e!2936584))))

(declare-fun lt!1873150 () Bool)

(assert (=> d!1498441 (= res!1988942 (not lt!1873150))))

(declare-fun lt!1873148 () Bool)

(assert (=> d!1498441 (= lt!1873150 lt!1873148)))

(declare-fun lt!1873155 () Unit!127368)

(assert (=> d!1498441 (= lt!1873155 e!2936579)))

(assert (=> d!1498441 (= c!804532 lt!1873148)))

(assert (=> d!1498441 (= lt!1873148 (containsKey!3232 (toList!5733 lt!1872593) key!4653))))

(assert (=> d!1498441 (= (contains!15922 lt!1872593 key!4653) lt!1873150)))

(declare-fun b!4707768 () Bool)

(assert (=> b!4707768 (= e!2936582 (contains!15926 (keys!18835 lt!1872593) key!4653))))

(declare-fun b!4707769 () Bool)

(assert (=> b!4707769 false))

(declare-fun lt!1873153 () Unit!127368)

(declare-fun lt!1873154 () Unit!127368)

(assert (=> b!4707769 (= lt!1873153 lt!1873154)))

(assert (=> b!4707769 (containsKey!3232 (toList!5733 lt!1872593) key!4653)))

(assert (=> b!4707769 (= lt!1873154 (lemmaInGetKeysListThenContainsKey!903 (toList!5733 lt!1872593) key!4653))))

(declare-fun Unit!127483 () Unit!127368)

(assert (=> b!4707769 (= e!2936583 Unit!127483)))

(declare-fun b!4707770 () Bool)

(assert (=> b!4707770 (= e!2936580 (keys!18835 lt!1872593))))

(declare-fun b!4707771 () Bool)

(assert (=> b!4707771 (= e!2936584 (not (contains!15926 (keys!18835 lt!1872593) key!4653)))))

(declare-fun b!4707772 () Bool)

(assert (=> b!4707772 (= e!2936580 (getKeysList!904 (toList!5733 lt!1872593)))))

(assert (= (and d!1498441 c!804532) b!4707764))

(assert (= (and d!1498441 (not c!804532)) b!4707766))

(assert (= (and b!4707766 c!804534) b!4707769))

(assert (= (and b!4707766 (not c!804534)) b!4707767))

(assert (= (or b!4707764 b!4707766) bm!329152))

(assert (= (and bm!329152 c!804533) b!4707772))

(assert (= (and bm!329152 (not c!804533)) b!4707770))

(assert (= (and d!1498441 res!1988942) b!4707771))

(assert (= (and d!1498441 (not res!1988941)) b!4707765))

(assert (= (and b!4707765 res!1988943) b!4707768))

(declare-fun m!5632299 () Bool)

(assert (=> d!1498441 m!5632299))

(assert (=> b!4707769 m!5632299))

(declare-fun m!5632301 () Bool)

(assert (=> b!4707769 m!5632301))

(declare-fun m!5632305 () Bool)

(assert (=> b!4707771 m!5632305))

(assert (=> b!4707771 m!5632305))

(declare-fun m!5632307 () Bool)

(assert (=> b!4707771 m!5632307))

(assert (=> b!4707770 m!5632305))

(declare-fun m!5632309 () Bool)

(assert (=> b!4707764 m!5632309))

(declare-fun m!5632311 () Bool)

(assert (=> b!4707764 m!5632311))

(assert (=> b!4707764 m!5632311))

(declare-fun m!5632313 () Bool)

(assert (=> b!4707764 m!5632313))

(declare-fun m!5632315 () Bool)

(assert (=> b!4707764 m!5632315))

(assert (=> b!4707768 m!5632305))

(assert (=> b!4707768 m!5632305))

(assert (=> b!4707768 m!5632307))

(declare-fun m!5632317 () Bool)

(assert (=> b!4707772 m!5632317))

(declare-fun m!5632319 () Bool)

(assert (=> bm!329152 m!5632319))

(assert (=> b!4707765 m!5632311))

(assert (=> b!4707765 m!5632311))

(assert (=> b!4707765 m!5632313))

(assert (=> b!4707378 d!1498441))

(declare-fun bs!1100585 () Bool)

(declare-fun d!1498449 () Bool)

(assert (= bs!1100585 (and d!1498449 d!1498359)))

(declare-fun lambda!212034 () Int)

(assert (=> bs!1100585 (= lambda!212034 lambda!212004)))

(declare-fun bs!1100586 () Bool)

(assert (= bs!1100586 (and d!1498449 d!1498329)))

(assert (=> bs!1100586 (= lambda!212034 lambda!211995)))

(declare-fun bs!1100587 () Bool)

(assert (= bs!1100587 (and d!1498449 d!1498393)))

(assert (=> bs!1100587 (= lambda!212034 lambda!212028)))

(declare-fun bs!1100588 () Bool)

(assert (= bs!1100588 (and d!1498449 start!478140)))

(assert (=> bs!1100588 (= lambda!212034 lambda!211883)))

(declare-fun bs!1100589 () Bool)

(assert (= bs!1100589 (and d!1498449 d!1498209)))

(assert (=> bs!1100589 (= lambda!212034 lambda!211889)))

(declare-fun bs!1100590 () Bool)

(assert (= bs!1100590 (and d!1498449 d!1498277)))

(assert (=> bs!1100590 (= lambda!212034 lambda!211967)))

(declare-fun bs!1100591 () Bool)

(assert (= bs!1100591 (and d!1498449 d!1498267)))

(assert (=> bs!1100591 (= lambda!212034 lambda!211948)))

(declare-fun bs!1100592 () Bool)

(assert (= bs!1100592 (and d!1498449 d!1498281)))

(assert (=> bs!1100592 (= lambda!212034 lambda!211978)))

(declare-fun bs!1100593 () Bool)

(assert (= bs!1100593 (and d!1498449 d!1498377)))

(assert (=> bs!1100593 (= lambda!212034 lambda!212021)))

(declare-fun bs!1100594 () Bool)

(assert (= bs!1100594 (and d!1498449 d!1498409)))

(assert (=> bs!1100594 (= lambda!212034 lambda!212029)))

(declare-fun bs!1100595 () Bool)

(assert (= bs!1100595 (and d!1498449 d!1498385)))

(assert (=> bs!1100595 (= lambda!212034 lambda!212023)))

(declare-fun lt!1873156 () ListMap!5097)

(assert (=> d!1498449 (invariantList!1464 (toList!5733 lt!1873156))))

(declare-fun e!2936586 () ListMap!5097)

(assert (=> d!1498449 (= lt!1873156 e!2936586)))

(declare-fun c!804535 () Bool)

(assert (=> d!1498449 (= c!804535 ((_ is Cons!52600) (toList!5734 lm!2023)))))

(assert (=> d!1498449 (forall!11443 (toList!5734 lm!2023) lambda!212034)))

(assert (=> d!1498449 (= (extractMap!1948 (toList!5734 lm!2023)) lt!1873156)))

(declare-fun b!4707774 () Bool)

(assert (=> b!4707774 (= e!2936586 (addToMapMapFromBucket!1354 (_2!30336 (h!58899 (toList!5734 lm!2023))) (extractMap!1948 (t!359954 (toList!5734 lm!2023)))))))

(declare-fun b!4707775 () Bool)

(assert (=> b!4707775 (= e!2936586 (ListMap!5098 Nil!52599))))

(assert (= (and d!1498449 c!804535) b!4707774))

(assert (= (and d!1498449 (not c!804535)) b!4707775))

(declare-fun m!5632321 () Bool)

(assert (=> d!1498449 m!5632321))

(declare-fun m!5632323 () Bool)

(assert (=> d!1498449 m!5632323))

(assert (=> b!4707774 m!5631141))

(assert (=> b!4707774 m!5631141))

(declare-fun m!5632325 () Bool)

(assert (=> b!4707774 m!5632325))

(assert (=> b!4707378 d!1498449))

(declare-fun bs!1100596 () Bool)

(declare-fun d!1498451 () Bool)

(assert (= bs!1100596 (and d!1498451 d!1498359)))

(declare-fun lambda!212037 () Int)

(assert (=> bs!1100596 (not (= lambda!212037 lambda!212004))))

(declare-fun bs!1100597 () Bool)

(assert (= bs!1100597 (and d!1498451 d!1498329)))

(assert (=> bs!1100597 (not (= lambda!212037 lambda!211995))))

(declare-fun bs!1100598 () Bool)

(assert (= bs!1100598 (and d!1498451 d!1498393)))

(assert (=> bs!1100598 (not (= lambda!212037 lambda!212028))))

(declare-fun bs!1100599 () Bool)

(assert (= bs!1100599 (and d!1498451 d!1498449)))

(assert (=> bs!1100599 (not (= lambda!212037 lambda!212034))))

(declare-fun bs!1100600 () Bool)

(assert (= bs!1100600 (and d!1498451 start!478140)))

(assert (=> bs!1100600 (not (= lambda!212037 lambda!211883))))

(declare-fun bs!1100601 () Bool)

(assert (= bs!1100601 (and d!1498451 d!1498209)))

(assert (=> bs!1100601 (not (= lambda!212037 lambda!211889))))

(declare-fun bs!1100602 () Bool)

(assert (= bs!1100602 (and d!1498451 d!1498277)))

(assert (=> bs!1100602 (not (= lambda!212037 lambda!211967))))

(declare-fun bs!1100603 () Bool)

(assert (= bs!1100603 (and d!1498451 d!1498267)))

(assert (=> bs!1100603 (not (= lambda!212037 lambda!211948))))

(declare-fun bs!1100604 () Bool)

(assert (= bs!1100604 (and d!1498451 d!1498281)))

(assert (=> bs!1100604 (not (= lambda!212037 lambda!211978))))

(declare-fun bs!1100605 () Bool)

(assert (= bs!1100605 (and d!1498451 d!1498377)))

(assert (=> bs!1100605 (not (= lambda!212037 lambda!212021))))

(declare-fun bs!1100606 () Bool)

(assert (= bs!1100606 (and d!1498451 d!1498409)))

(assert (=> bs!1100606 (not (= lambda!212037 lambda!212029))))

(declare-fun bs!1100607 () Bool)

(assert (= bs!1100607 (and d!1498451 d!1498385)))

(assert (=> bs!1100607 (not (= lambda!212037 lambda!212023))))

(assert (=> d!1498451 true))

(assert (=> d!1498451 (= (allKeysSameHashInMap!1836 lm!2023 hashF!1323) (forall!11443 (toList!5734 lm!2023) lambda!212037))))

(declare-fun bs!1100608 () Bool)

(assert (= bs!1100608 d!1498451))

(declare-fun m!5632327 () Bool)

(assert (=> bs!1100608 m!5632327))

(assert (=> b!4707379 d!1498451))

(declare-fun d!1498453 () Bool)

(assert (=> d!1498453 (= (head!10107 (toList!5734 lm!2023)) (h!58899 (toList!5734 lm!2023)))))

(assert (=> b!4707374 d!1498453))

(declare-fun d!1498455 () Bool)

(assert (=> d!1498455 (= (eq!1081 lt!1872578 lt!1872605) (= (content!9322 (toList!5733 lt!1872578)) (content!9322 (toList!5733 lt!1872605))))))

(declare-fun bs!1100609 () Bool)

(assert (= bs!1100609 d!1498455))

(assert (=> bs!1100609 m!5631351))

(assert (=> bs!1100609 m!5631353))

(assert (=> b!4707375 d!1498455))

(declare-fun d!1498457 () Bool)

(declare-fun e!2936587 () Bool)

(assert (=> d!1498457 e!2936587))

(declare-fun res!1988944 () Bool)

(assert (=> d!1498457 (=> (not res!1988944) (not e!2936587))))

(declare-fun lt!1873159 () ListMap!5097)

(assert (=> d!1498457 (= res!1988944 (contains!15922 lt!1873159 (_1!30335 (h!58898 oldBucket!34))))))

(declare-fun lt!1873160 () List!52723)

(assert (=> d!1498457 (= lt!1873159 (ListMap!5098 lt!1873160))))

(declare-fun lt!1873158 () Unit!127368)

(declare-fun lt!1873157 () Unit!127368)

(assert (=> d!1498457 (= lt!1873158 lt!1873157)))

(assert (=> d!1498457 (= (getValueByKey!1888 lt!1873160 (_1!30335 (h!58898 oldBucket!34))) (Some!12255 (_2!30335 (h!58898 oldBucket!34))))))

(assert (=> d!1498457 (= lt!1873157 (lemmaContainsTupThenGetReturnValue!1054 lt!1873160 (_1!30335 (h!58898 oldBucket!34)) (_2!30335 (h!58898 oldBucket!34))))))

(assert (=> d!1498457 (= lt!1873160 (insertNoDuplicatedKeys!562 (toList!5733 lt!1872601) (_1!30335 (h!58898 oldBucket!34)) (_2!30335 (h!58898 oldBucket!34))))))

(assert (=> d!1498457 (= (+!2206 lt!1872601 (h!58898 oldBucket!34)) lt!1873159)))

(declare-fun b!4707778 () Bool)

(declare-fun res!1988945 () Bool)

(assert (=> b!4707778 (=> (not res!1988945) (not e!2936587))))

(assert (=> b!4707778 (= res!1988945 (= (getValueByKey!1888 (toList!5733 lt!1873159) (_1!30335 (h!58898 oldBucket!34))) (Some!12255 (_2!30335 (h!58898 oldBucket!34)))))))

(declare-fun b!4707779 () Bool)

(assert (=> b!4707779 (= e!2936587 (contains!15924 (toList!5733 lt!1873159) (h!58898 oldBucket!34)))))

(assert (= (and d!1498457 res!1988944) b!4707778))

(assert (= (and b!4707778 res!1988945) b!4707779))

(declare-fun m!5632329 () Bool)

(assert (=> d!1498457 m!5632329))

(declare-fun m!5632331 () Bool)

(assert (=> d!1498457 m!5632331))

(declare-fun m!5632333 () Bool)

(assert (=> d!1498457 m!5632333))

(declare-fun m!5632335 () Bool)

(assert (=> d!1498457 m!5632335))

(declare-fun m!5632337 () Bool)

(assert (=> b!4707778 m!5632337))

(declare-fun m!5632339 () Bool)

(assert (=> b!4707779 m!5632339))

(assert (=> b!4707375 d!1498457))

(declare-fun d!1498459 () Bool)

(assert (=> d!1498459 (= (eq!1081 lt!1872597 (+!2206 lt!1872601 (h!58898 oldBucket!34))) (= (content!9322 (toList!5733 lt!1872597)) (content!9322 (toList!5733 (+!2206 lt!1872601 (h!58898 oldBucket!34))))))))

(declare-fun bs!1100610 () Bool)

(assert (= bs!1100610 d!1498459))

(declare-fun m!5632341 () Bool)

(assert (=> bs!1100610 m!5632341))

(declare-fun m!5632343 () Bool)

(assert (=> bs!1100610 m!5632343))

(assert (=> b!4707375 d!1498459))

(declare-fun d!1498461 () Bool)

(assert (=> d!1498461 (eq!1081 (+!2206 lt!1872570 (tuple2!54083 (_1!30335 (h!58898 oldBucket!34)) (_2!30335 (h!58898 oldBucket!34)))) (+!2206 lt!1872601 (tuple2!54083 (_1!30335 (h!58898 oldBucket!34)) (_2!30335 (h!58898 oldBucket!34)))))))

(declare-fun lt!1873163 () Unit!127368)

(declare-fun choose!33101 (ListMap!5097 ListMap!5097 K!13955 V!14201) Unit!127368)

(assert (=> d!1498461 (= lt!1873163 (choose!33101 lt!1872570 lt!1872601 (_1!30335 (h!58898 oldBucket!34)) (_2!30335 (h!58898 oldBucket!34))))))

(assert (=> d!1498461 (eq!1081 lt!1872570 lt!1872601)))

(assert (=> d!1498461 (= (lemmaAddToEqMapsPreservesEq!104 lt!1872570 lt!1872601 (_1!30335 (h!58898 oldBucket!34)) (_2!30335 (h!58898 oldBucket!34))) lt!1873163)))

(declare-fun bs!1100611 () Bool)

(assert (= bs!1100611 d!1498461))

(declare-fun m!5632345 () Bool)

(assert (=> bs!1100611 m!5632345))

(declare-fun m!5632347 () Bool)

(assert (=> bs!1100611 m!5632347))

(declare-fun m!5632349 () Bool)

(assert (=> bs!1100611 m!5632349))

(declare-fun m!5632351 () Bool)

(assert (=> bs!1100611 m!5632351))

(assert (=> bs!1100611 m!5632345))

(assert (=> bs!1100611 m!5632351))

(declare-fun m!5632353 () Bool)

(assert (=> bs!1100611 m!5632353))

(assert (=> b!4707375 d!1498461))

(declare-fun d!1498463 () Bool)

(assert (=> d!1498463 (= (eq!1081 lt!1872611 (+!2206 lt!1872584 lt!1872585)) (= (content!9322 (toList!5733 lt!1872611)) (content!9322 (toList!5733 (+!2206 lt!1872584 lt!1872585)))))))

(declare-fun bs!1100612 () Bool)

(assert (= bs!1100612 d!1498463))

(assert (=> bs!1100612 m!5631681))

(declare-fun m!5632355 () Bool)

(assert (=> bs!1100612 m!5632355))

(assert (=> b!4707393 d!1498463))

(declare-fun d!1498465 () Bool)

(declare-fun e!2936588 () Bool)

(assert (=> d!1498465 e!2936588))

(declare-fun res!1988946 () Bool)

(assert (=> d!1498465 (=> (not res!1988946) (not e!2936588))))

(declare-fun lt!1873166 () ListMap!5097)

(assert (=> d!1498465 (= res!1988946 (contains!15922 lt!1873166 (_1!30335 lt!1872585)))))

(declare-fun lt!1873167 () List!52723)

(assert (=> d!1498465 (= lt!1873166 (ListMap!5098 lt!1873167))))

(declare-fun lt!1873165 () Unit!127368)

(declare-fun lt!1873164 () Unit!127368)

(assert (=> d!1498465 (= lt!1873165 lt!1873164)))

(assert (=> d!1498465 (= (getValueByKey!1888 lt!1873167 (_1!30335 lt!1872585)) (Some!12255 (_2!30335 lt!1872585)))))

(assert (=> d!1498465 (= lt!1873164 (lemmaContainsTupThenGetReturnValue!1054 lt!1873167 (_1!30335 lt!1872585) (_2!30335 lt!1872585)))))

(assert (=> d!1498465 (= lt!1873167 (insertNoDuplicatedKeys!562 (toList!5733 lt!1872584) (_1!30335 lt!1872585) (_2!30335 lt!1872585)))))

(assert (=> d!1498465 (= (+!2206 lt!1872584 lt!1872585) lt!1873166)))

(declare-fun b!4707780 () Bool)

(declare-fun res!1988947 () Bool)

(assert (=> b!4707780 (=> (not res!1988947) (not e!2936588))))

(assert (=> b!4707780 (= res!1988947 (= (getValueByKey!1888 (toList!5733 lt!1873166) (_1!30335 lt!1872585)) (Some!12255 (_2!30335 lt!1872585))))))

(declare-fun b!4707781 () Bool)

(assert (=> b!4707781 (= e!2936588 (contains!15924 (toList!5733 lt!1873166) lt!1872585))))

(assert (= (and d!1498465 res!1988946) b!4707780))

(assert (= (and b!4707780 res!1988947) b!4707781))

(declare-fun m!5632357 () Bool)

(assert (=> d!1498465 m!5632357))

(declare-fun m!5632359 () Bool)

(assert (=> d!1498465 m!5632359))

(declare-fun m!5632361 () Bool)

(assert (=> d!1498465 m!5632361))

(declare-fun m!5632363 () Bool)

(assert (=> d!1498465 m!5632363))

(declare-fun m!5632365 () Bool)

(assert (=> b!4707780 m!5632365))

(declare-fun m!5632367 () Bool)

(assert (=> b!4707781 m!5632367))

(assert (=> b!4707393 d!1498465))

(declare-fun d!1498467 () Bool)

(declare-fun res!1988948 () Bool)

(declare-fun e!2936589 () Bool)

(assert (=> d!1498467 (=> res!1988948 e!2936589)))

(assert (=> d!1498467 (= res!1988948 ((_ is Nil!52600) (Cons!52600 lt!1872603 lt!1872609)))))

(assert (=> d!1498467 (= (forall!11443 (Cons!52600 lt!1872603 lt!1872609) lambda!211883) e!2936589)))

(declare-fun b!4707782 () Bool)

(declare-fun e!2936590 () Bool)

(assert (=> b!4707782 (= e!2936589 e!2936590)))

(declare-fun res!1988949 () Bool)

(assert (=> b!4707782 (=> (not res!1988949) (not e!2936590))))

(assert (=> b!4707782 (= res!1988949 (dynLambda!21767 lambda!211883 (h!58899 (Cons!52600 lt!1872603 lt!1872609))))))

(declare-fun b!4707783 () Bool)

(assert (=> b!4707783 (= e!2936590 (forall!11443 (t!359954 (Cons!52600 lt!1872603 lt!1872609)) lambda!211883))))

(assert (= (and d!1498467 (not res!1988948)) b!4707782))

(assert (= (and b!4707782 res!1988949) b!4707783))

(declare-fun b_lambda!177603 () Bool)

(assert (=> (not b_lambda!177603) (not b!4707782)))

(declare-fun m!5632369 () Bool)

(assert (=> b!4707782 m!5632369))

(declare-fun m!5632371 () Bool)

(assert (=> b!4707783 m!5632371))

(assert (=> b!4707372 d!1498467))

(declare-fun bs!1100613 () Bool)

(declare-fun d!1498469 () Bool)

(assert (= bs!1100613 (and d!1498469 d!1498359)))

(declare-fun lambda!212038 () Int)

(assert (=> bs!1100613 (= lambda!212038 lambda!212004)))

(declare-fun bs!1100614 () Bool)

(assert (= bs!1100614 (and d!1498469 d!1498329)))

(assert (=> bs!1100614 (= lambda!212038 lambda!211995)))

(declare-fun bs!1100615 () Bool)

(assert (= bs!1100615 (and d!1498469 d!1498393)))

(assert (=> bs!1100615 (= lambda!212038 lambda!212028)))

(declare-fun bs!1100616 () Bool)

(assert (= bs!1100616 (and d!1498469 d!1498449)))

(assert (=> bs!1100616 (= lambda!212038 lambda!212034)))

(declare-fun bs!1100617 () Bool)

(assert (= bs!1100617 (and d!1498469 d!1498451)))

(assert (=> bs!1100617 (not (= lambda!212038 lambda!212037))))

(declare-fun bs!1100618 () Bool)

(assert (= bs!1100618 (and d!1498469 start!478140)))

(assert (=> bs!1100618 (= lambda!212038 lambda!211883)))

(declare-fun bs!1100619 () Bool)

(assert (= bs!1100619 (and d!1498469 d!1498209)))

(assert (=> bs!1100619 (= lambda!212038 lambda!211889)))

(declare-fun bs!1100620 () Bool)

(assert (= bs!1100620 (and d!1498469 d!1498277)))

(assert (=> bs!1100620 (= lambda!212038 lambda!211967)))

(declare-fun bs!1100621 () Bool)

(assert (= bs!1100621 (and d!1498469 d!1498267)))

(assert (=> bs!1100621 (= lambda!212038 lambda!211948)))

(declare-fun bs!1100622 () Bool)

(assert (= bs!1100622 (and d!1498469 d!1498281)))

(assert (=> bs!1100622 (= lambda!212038 lambda!211978)))

(declare-fun bs!1100623 () Bool)

(assert (= bs!1100623 (and d!1498469 d!1498377)))

(assert (=> bs!1100623 (= lambda!212038 lambda!212021)))

(declare-fun bs!1100624 () Bool)

(assert (= bs!1100624 (and d!1498469 d!1498409)))

(assert (=> bs!1100624 (= lambda!212038 lambda!212029)))

(declare-fun bs!1100625 () Bool)

(assert (= bs!1100625 (and d!1498469 d!1498385)))

(assert (=> bs!1100625 (= lambda!212038 lambda!212023)))

(declare-fun lt!1873168 () ListMap!5097)

(assert (=> d!1498469 (invariantList!1464 (toList!5733 lt!1873168))))

(declare-fun e!2936591 () ListMap!5097)

(assert (=> d!1498469 (= lt!1873168 e!2936591)))

(declare-fun c!804536 () Bool)

(assert (=> d!1498469 (= c!804536 ((_ is Cons!52600) (Cons!52600 lt!1872610 lt!1872609)))))

(assert (=> d!1498469 (forall!11443 (Cons!52600 lt!1872610 lt!1872609) lambda!212038)))

(assert (=> d!1498469 (= (extractMap!1948 (Cons!52600 lt!1872610 lt!1872609)) lt!1873168)))

(declare-fun b!4707784 () Bool)

(assert (=> b!4707784 (= e!2936591 (addToMapMapFromBucket!1354 (_2!30336 (h!58899 (Cons!52600 lt!1872610 lt!1872609))) (extractMap!1948 (t!359954 (Cons!52600 lt!1872610 lt!1872609)))))))

(declare-fun b!4707785 () Bool)

(assert (=> b!4707785 (= e!2936591 (ListMap!5098 Nil!52599))))

(assert (= (and d!1498469 c!804536) b!4707784))

(assert (= (and d!1498469 (not c!804536)) b!4707785))

(declare-fun m!5632373 () Bool)

(assert (=> d!1498469 m!5632373))

(declare-fun m!5632375 () Bool)

(assert (=> d!1498469 m!5632375))

(declare-fun m!5632377 () Bool)

(assert (=> b!4707784 m!5632377))

(assert (=> b!4707784 m!5632377))

(declare-fun m!5632379 () Bool)

(assert (=> b!4707784 m!5632379))

(assert (=> b!4707372 d!1498469))

(declare-fun d!1498471 () Bool)

(assert (=> d!1498471 (= (tail!8791 (toList!5734 lm!2023)) (t!359954 (toList!5734 lm!2023)))))

(assert (=> b!4707372 d!1498471))

(declare-fun b!4707786 () Bool)

(declare-fun e!2936593 () List!52723)

(assert (=> b!4707786 (= e!2936593 (t!359953 lt!1872598))))

(declare-fun b!4707789 () Bool)

(declare-fun e!2936592 () List!52723)

(assert (=> b!4707789 (= e!2936592 Nil!52599)))

(declare-fun d!1498473 () Bool)

(declare-fun lt!1873169 () List!52723)

(assert (=> d!1498473 (not (containsKey!3229 lt!1873169 key!4653))))

(assert (=> d!1498473 (= lt!1873169 e!2936593)))

(declare-fun c!804537 () Bool)

(assert (=> d!1498473 (= c!804537 (and ((_ is Cons!52599) lt!1872598) (= (_1!30335 (h!58898 lt!1872598)) key!4653)))))

(assert (=> d!1498473 (noDuplicateKeys!1922 lt!1872598)))

(assert (=> d!1498473 (= (removePairForKey!1517 lt!1872598 key!4653) lt!1873169)))

(declare-fun b!4707788 () Bool)

(assert (=> b!4707788 (= e!2936592 (Cons!52599 (h!58898 lt!1872598) (removePairForKey!1517 (t!359953 lt!1872598) key!4653)))))

(declare-fun b!4707787 () Bool)

(assert (=> b!4707787 (= e!2936593 e!2936592)))

(declare-fun c!804538 () Bool)

(assert (=> b!4707787 (= c!804538 ((_ is Cons!52599) lt!1872598))))

(assert (= (and d!1498473 c!804537) b!4707786))

(assert (= (and d!1498473 (not c!804537)) b!4707787))

(assert (= (and b!4707787 c!804538) b!4707788))

(assert (= (and b!4707787 (not c!804538)) b!4707789))

(declare-fun m!5632381 () Bool)

(assert (=> d!1498473 m!5632381))

(assert (=> d!1498473 m!5631769))

(declare-fun m!5632383 () Bool)

(assert (=> b!4707788 m!5632383))

(assert (=> b!4707373 d!1498473))

(declare-fun d!1498475 () Bool)

(assert (=> d!1498475 (= (tail!8793 newBucket!218) (t!359953 newBucket!218))))

(assert (=> b!4707373 d!1498475))

(declare-fun d!1498477 () Bool)

(assert (=> d!1498477 (= (tail!8793 oldBucket!34) (t!359953 oldBucket!34))))

(assert (=> b!4707373 d!1498477))

(declare-fun d!1498479 () Bool)

(assert (=> d!1498479 (= (-!726 (+!2206 lt!1872573 (tuple2!54083 (_1!30335 (h!58898 oldBucket!34)) (_2!30335 (h!58898 oldBucket!34)))) key!4653) (+!2206 (-!726 lt!1872573 key!4653) (tuple2!54083 (_1!30335 (h!58898 oldBucket!34)) (_2!30335 (h!58898 oldBucket!34)))))))

(declare-fun lt!1873172 () Unit!127368)

(declare-fun choose!33102 (ListMap!5097 K!13955 V!14201 K!13955) Unit!127368)

(assert (=> d!1498479 (= lt!1873172 (choose!33102 lt!1872573 (_1!30335 (h!58898 oldBucket!34)) (_2!30335 (h!58898 oldBucket!34)) key!4653))))

(assert (=> d!1498479 (not (= (_1!30335 (h!58898 oldBucket!34)) key!4653))))

(assert (=> d!1498479 (= (addRemoveCommutativeForDiffKeys!127 lt!1872573 (_1!30335 (h!58898 oldBucket!34)) (_2!30335 (h!58898 oldBucket!34)) key!4653) lt!1873172)))

(declare-fun bs!1100626 () Bool)

(assert (= bs!1100626 d!1498479))

(assert (=> bs!1100626 m!5631237))

(declare-fun m!5632385 () Bool)

(assert (=> bs!1100626 m!5632385))

(declare-fun m!5632387 () Bool)

(assert (=> bs!1100626 m!5632387))

(assert (=> bs!1100626 m!5631237))

(declare-fun m!5632389 () Bool)

(assert (=> bs!1100626 m!5632389))

(assert (=> bs!1100626 m!5632389))

(declare-fun m!5632391 () Bool)

(assert (=> bs!1100626 m!5632391))

(assert (=> b!4707390 d!1498479))

(declare-fun d!1498481 () Bool)

(declare-fun e!2936594 () Bool)

(assert (=> d!1498481 e!2936594))

(declare-fun res!1988950 () Bool)

(assert (=> d!1498481 (=> (not res!1988950) (not e!2936594))))

(declare-fun lt!1873175 () ListMap!5097)

(assert (=> d!1498481 (= res!1988950 (contains!15922 lt!1873175 (_1!30335 (h!58898 oldBucket!34))))))

(declare-fun lt!1873176 () List!52723)

(assert (=> d!1498481 (= lt!1873175 (ListMap!5098 lt!1873176))))

(declare-fun lt!1873174 () Unit!127368)

(declare-fun lt!1873173 () Unit!127368)

(assert (=> d!1498481 (= lt!1873174 lt!1873173)))

(assert (=> d!1498481 (= (getValueByKey!1888 lt!1873176 (_1!30335 (h!58898 oldBucket!34))) (Some!12255 (_2!30335 (h!58898 oldBucket!34))))))

(assert (=> d!1498481 (= lt!1873173 (lemmaContainsTupThenGetReturnValue!1054 lt!1873176 (_1!30335 (h!58898 oldBucket!34)) (_2!30335 (h!58898 oldBucket!34))))))

(assert (=> d!1498481 (= lt!1873176 (insertNoDuplicatedKeys!562 (toList!5733 lt!1872570) (_1!30335 (h!58898 oldBucket!34)) (_2!30335 (h!58898 oldBucket!34))))))

(assert (=> d!1498481 (= (+!2206 lt!1872570 (h!58898 oldBucket!34)) lt!1873175)))

(declare-fun b!4707790 () Bool)

(declare-fun res!1988951 () Bool)

(assert (=> b!4707790 (=> (not res!1988951) (not e!2936594))))

(assert (=> b!4707790 (= res!1988951 (= (getValueByKey!1888 (toList!5733 lt!1873175) (_1!30335 (h!58898 oldBucket!34))) (Some!12255 (_2!30335 (h!58898 oldBucket!34)))))))

(declare-fun b!4707791 () Bool)

(assert (=> b!4707791 (= e!2936594 (contains!15924 (toList!5733 lt!1873175) (h!58898 oldBucket!34)))))

(assert (= (and d!1498481 res!1988950) b!4707790))

(assert (= (and b!4707790 res!1988951) b!4707791))

(declare-fun m!5632393 () Bool)

(assert (=> d!1498481 m!5632393))

(declare-fun m!5632395 () Bool)

(assert (=> d!1498481 m!5632395))

(declare-fun m!5632397 () Bool)

(assert (=> d!1498481 m!5632397))

(declare-fun m!5632399 () Bool)

(assert (=> d!1498481 m!5632399))

(declare-fun m!5632401 () Bool)

(assert (=> b!4707790 m!5632401))

(declare-fun m!5632403 () Bool)

(assert (=> b!4707791 m!5632403))

(assert (=> b!4707390 d!1498481))

(declare-fun d!1498483 () Bool)

(declare-fun e!2936595 () Bool)

(assert (=> d!1498483 e!2936595))

(declare-fun res!1988952 () Bool)

(assert (=> d!1498483 (=> (not res!1988952) (not e!2936595))))

(declare-fun lt!1873177 () ListMap!5097)

(assert (=> d!1498483 (= res!1988952 (not (contains!15922 lt!1873177 key!4653)))))

(assert (=> d!1498483 (= lt!1873177 (ListMap!5098 (removePresrvNoDuplicatedKeys!385 (toList!5733 (+!2206 lt!1872573 (h!58898 oldBucket!34))) key!4653)))))

(assert (=> d!1498483 (= (-!726 (+!2206 lt!1872573 (h!58898 oldBucket!34)) key!4653) lt!1873177)))

(declare-fun b!4707792 () Bool)

(assert (=> b!4707792 (= e!2936595 (= ((_ map and) (content!9323 (keys!18835 (+!2206 lt!1872573 (h!58898 oldBucket!34)))) ((_ map not) (store ((as const (Array K!13955 Bool)) false) key!4653 true))) (content!9323 (keys!18835 lt!1873177))))))

(assert (= (and d!1498483 res!1988952) b!4707792))

(declare-fun m!5632405 () Bool)

(assert (=> d!1498483 m!5632405))

(declare-fun m!5632407 () Bool)

(assert (=> d!1498483 m!5632407))

(declare-fun m!5632409 () Bool)

(assert (=> b!4707792 m!5632409))

(declare-fun m!5632411 () Bool)

(assert (=> b!4707792 m!5632411))

(assert (=> b!4707792 m!5632173))

(assert (=> b!4707792 m!5631125))

(declare-fun m!5632413 () Bool)

(assert (=> b!4707792 m!5632413))

(assert (=> b!4707792 m!5632413))

(declare-fun m!5632415 () Bool)

(assert (=> b!4707792 m!5632415))

(assert (=> b!4707792 m!5632409))

(assert (=> b!4707390 d!1498483))

(declare-fun d!1498485 () Bool)

(declare-fun e!2936596 () Bool)

(assert (=> d!1498485 e!2936596))

(declare-fun res!1988953 () Bool)

(assert (=> d!1498485 (=> (not res!1988953) (not e!2936596))))

(declare-fun lt!1873178 () ListMap!5097)

(assert (=> d!1498485 (= res!1988953 (not (contains!15922 lt!1873178 key!4653)))))

(assert (=> d!1498485 (= lt!1873178 (ListMap!5098 (removePresrvNoDuplicatedKeys!385 (toList!5733 lt!1872604) key!4653)))))

(assert (=> d!1498485 (= (-!726 lt!1872604 key!4653) lt!1873178)))

(declare-fun b!4707793 () Bool)

(assert (=> b!4707793 (= e!2936596 (= ((_ map and) (content!9323 (keys!18835 lt!1872604)) ((_ map not) (store ((as const (Array K!13955 Bool)) false) key!4653 true))) (content!9323 (keys!18835 lt!1873178))))))

(assert (= (and d!1498485 res!1988953) b!4707793))

(declare-fun m!5632417 () Bool)

(assert (=> d!1498485 m!5632417))

(declare-fun m!5632419 () Bool)

(assert (=> d!1498485 m!5632419))

(declare-fun m!5632421 () Bool)

(assert (=> b!4707793 m!5632421))

(declare-fun m!5632423 () Bool)

(assert (=> b!4707793 m!5632423))

(assert (=> b!4707793 m!5632173))

(declare-fun m!5632425 () Bool)

(assert (=> b!4707793 m!5632425))

(assert (=> b!4707793 m!5632425))

(declare-fun m!5632427 () Bool)

(assert (=> b!4707793 m!5632427))

(assert (=> b!4707793 m!5632421))

(assert (=> b!4707390 d!1498485))

(declare-fun d!1498487 () Bool)

(declare-fun e!2936597 () Bool)

(assert (=> d!1498487 e!2936597))

(declare-fun res!1988954 () Bool)

(assert (=> d!1498487 (=> (not res!1988954) (not e!2936597))))

(declare-fun lt!1873181 () ListMap!5097)

(assert (=> d!1498487 (= res!1988954 (contains!15922 lt!1873181 (_1!30335 (h!58898 oldBucket!34))))))

(declare-fun lt!1873182 () List!52723)

(assert (=> d!1498487 (= lt!1873181 (ListMap!5098 lt!1873182))))

(declare-fun lt!1873180 () Unit!127368)

(declare-fun lt!1873179 () Unit!127368)

(assert (=> d!1498487 (= lt!1873180 lt!1873179)))

(assert (=> d!1498487 (= (getValueByKey!1888 lt!1873182 (_1!30335 (h!58898 oldBucket!34))) (Some!12255 (_2!30335 (h!58898 oldBucket!34))))))

(assert (=> d!1498487 (= lt!1873179 (lemmaContainsTupThenGetReturnValue!1054 lt!1873182 (_1!30335 (h!58898 oldBucket!34)) (_2!30335 (h!58898 oldBucket!34))))))

(assert (=> d!1498487 (= lt!1873182 (insertNoDuplicatedKeys!562 (toList!5733 lt!1872573) (_1!30335 (h!58898 oldBucket!34)) (_2!30335 (h!58898 oldBucket!34))))))

(assert (=> d!1498487 (= (+!2206 lt!1872573 (h!58898 oldBucket!34)) lt!1873181)))

(declare-fun b!4707794 () Bool)

(declare-fun res!1988955 () Bool)

(assert (=> b!4707794 (=> (not res!1988955) (not e!2936597))))

(assert (=> b!4707794 (= res!1988955 (= (getValueByKey!1888 (toList!5733 lt!1873181) (_1!30335 (h!58898 oldBucket!34))) (Some!12255 (_2!30335 (h!58898 oldBucket!34)))))))

(declare-fun b!4707795 () Bool)

(assert (=> b!4707795 (= e!2936597 (contains!15924 (toList!5733 lt!1873181) (h!58898 oldBucket!34)))))

(assert (= (and d!1498487 res!1988954) b!4707794))

(assert (= (and b!4707794 res!1988955) b!4707795))

(declare-fun m!5632429 () Bool)

(assert (=> d!1498487 m!5632429))

(declare-fun m!5632431 () Bool)

(assert (=> d!1498487 m!5632431))

(declare-fun m!5632433 () Bool)

(assert (=> d!1498487 m!5632433))

(declare-fun m!5632435 () Bool)

(assert (=> d!1498487 m!5632435))

(declare-fun m!5632437 () Bool)

(assert (=> b!4707794 m!5632437))

(declare-fun m!5632439 () Bool)

(assert (=> b!4707795 m!5632439))

(assert (=> b!4707390 d!1498487))

(declare-fun d!1498489 () Bool)

(declare-fun hash!4238 (Hashable!6291 K!13955) (_ BitVec 64))

(assert (=> d!1498489 (= (hash!4234 hashF!1323 key!4653) (hash!4238 hashF!1323 key!4653))))

(declare-fun bs!1100627 () Bool)

(assert (= bs!1100627 d!1498489))

(declare-fun m!5632441 () Bool)

(assert (=> bs!1100627 m!5632441))

(assert (=> b!4707370 d!1498489))

(declare-fun bs!1100628 () Bool)

(declare-fun d!1498491 () Bool)

(assert (= bs!1100628 (and d!1498491 b!4707592)))

(declare-fun lambda!212039 () Int)

(assert (=> bs!1100628 (not (= lambda!212039 lambda!211979))))

(declare-fun bs!1100629 () Bool)

(assert (= bs!1100629 (and d!1498491 b!4707590)))

(assert (=> bs!1100629 (not (= lambda!212039 lambda!211983))))

(declare-fun bs!1100630 () Bool)

(assert (= bs!1100630 (and d!1498491 b!4707701)))

(assert (=> bs!1100630 (not (= lambda!212039 lambda!212007))))

(declare-fun bs!1100631 () Bool)

(assert (= bs!1100631 (and d!1498491 d!1498413)))

(assert (=> bs!1100631 (= lambda!212039 lambda!212032)))

(declare-fun bs!1100632 () Bool)

(assert (= bs!1100632 (and d!1498491 d!1498355)))

(assert (=> bs!1100632 (not (= lambda!212039 lambda!212002))))

(declare-fun bs!1100633 () Bool)

(assert (= bs!1100633 (and d!1498491 b!4707699)))

(assert (=> bs!1100633 (not (= lambda!212039 lambda!212009))))

(declare-fun bs!1100634 () Bool)

(assert (= bs!1100634 (and d!1498491 d!1498309)))

(assert (=> bs!1100634 (not (= lambda!212039 lambda!211985))))

(assert (=> bs!1100629 (not (= lambda!212039 lambda!211982))))

(declare-fun bs!1100635 () Bool)

(assert (= bs!1100635 (and d!1498491 b!4707531)))

(assert (=> bs!1100635 (not (= lambda!212039 lambda!211936))))

(declare-fun bs!1100636 () Bool)

(assert (= bs!1100636 (and d!1498491 b!4707605)))

(assert (=> bs!1100636 (not (= lambda!212039 lambda!211988))))

(declare-fun bs!1100637 () Bool)

(assert (= bs!1100637 (and d!1498491 b!4707685)))

(assert (=> bs!1100637 (not (= lambda!212039 lambda!212001))))

(declare-fun bs!1100638 () Bool)

(assert (= bs!1100638 (and d!1498491 b!4707529)))

(assert (=> bs!1100638 (not (= lambda!212039 lambda!211937))))

(declare-fun bs!1100639 () Bool)

(assert (= bs!1100639 (and d!1498491 d!1498365)))

(assert (=> bs!1100639 (not (= lambda!212039 lambda!212011))))

(assert (=> bs!1100633 (not (= lambda!212039 lambda!212010))))

(assert (=> bs!1100636 (not (= lambda!212039 lambda!211989))))

(declare-fun bs!1100640 () Bool)

(assert (= bs!1100640 (and d!1498491 d!1498219)))

(assert (=> bs!1100640 (not (= lambda!212039 lambda!211941))))

(declare-fun bs!1100641 () Bool)

(assert (= bs!1100641 (and d!1498491 b!4707607)))

(assert (=> bs!1100641 (not (= lambda!212039 lambda!211987))))

(assert (=> bs!1100637 (not (= lambda!212039 lambda!212000))))

(declare-fun bs!1100642 () Bool)

(assert (= bs!1100642 (and d!1498491 d!1498315)))

(assert (=> bs!1100642 (not (= lambda!212039 lambda!211992))))

(declare-fun bs!1100643 () Bool)

(assert (= bs!1100643 (and d!1498491 b!4707687)))

(assert (=> bs!1100643 (not (= lambda!212039 lambda!211999))))

(assert (=> bs!1100638 (not (= lambda!212039 lambda!211938))))

(assert (=> d!1498491 true))

(assert (=> d!1498491 true))

(assert (=> d!1498491 (= (allKeysSameHash!1748 newBucket!218 hash!405 hashF!1323) (forall!11445 newBucket!218 lambda!212039))))

(declare-fun bs!1100644 () Bool)

(assert (= bs!1100644 d!1498491))

(declare-fun m!5632443 () Bool)

(assert (=> bs!1100644 m!5632443))

(assert (=> b!4707392 d!1498491))

(declare-fun b!4707812 () Bool)

(declare-fun e!2936609 () Bool)

(declare-fun lt!1873185 () Option!12253)

(declare-fun get!17635 (Option!12253) tuple2!54082)

(assert (=> b!4707812 (= e!2936609 (contains!15924 lt!1872595 (get!17635 lt!1873185)))))

(declare-fun b!4707813 () Bool)

(declare-fun e!2936611 () Option!12253)

(assert (=> b!4707813 (= e!2936611 (getPair!526 (t!359953 lt!1872595) key!4653))))

(declare-fun b!4707814 () Bool)

(assert (=> b!4707814 (= e!2936611 None!12252)))

(declare-fun b!4707815 () Bool)

(declare-fun res!1988965 () Bool)

(assert (=> b!4707815 (=> (not res!1988965) (not e!2936609))))

(assert (=> b!4707815 (= res!1988965 (= (_1!30335 (get!17635 lt!1873185)) key!4653))))

(declare-fun b!4707817 () Bool)

(declare-fun e!2936608 () Option!12253)

(assert (=> b!4707817 (= e!2936608 e!2936611)))

(declare-fun c!804543 () Bool)

(assert (=> b!4707817 (= c!804543 ((_ is Cons!52599) lt!1872595))))

(declare-fun b!4707818 () Bool)

(declare-fun e!2936612 () Bool)

(assert (=> b!4707818 (= e!2936612 e!2936609)))

(declare-fun res!1988964 () Bool)

(assert (=> b!4707818 (=> (not res!1988964) (not e!2936609))))

(assert (=> b!4707818 (= res!1988964 (isDefined!9508 lt!1873185))))

(declare-fun b!4707819 () Bool)

(declare-fun e!2936610 () Bool)

(assert (=> b!4707819 (= e!2936610 (not (containsKey!3229 lt!1872595 key!4653)))))

(declare-fun b!4707816 () Bool)

(assert (=> b!4707816 (= e!2936608 (Some!12252 (h!58898 lt!1872595)))))

(declare-fun d!1498493 () Bool)

(assert (=> d!1498493 e!2936612))

(declare-fun res!1988967 () Bool)

(assert (=> d!1498493 (=> res!1988967 e!2936612)))

(assert (=> d!1498493 (= res!1988967 e!2936610)))

(declare-fun res!1988966 () Bool)

(assert (=> d!1498493 (=> (not res!1988966) (not e!2936610))))

(declare-fun isEmpty!29148 (Option!12253) Bool)

(assert (=> d!1498493 (= res!1988966 (isEmpty!29148 lt!1873185))))

(assert (=> d!1498493 (= lt!1873185 e!2936608)))

(declare-fun c!804544 () Bool)

(assert (=> d!1498493 (= c!804544 (and ((_ is Cons!52599) lt!1872595) (= (_1!30335 (h!58898 lt!1872595)) key!4653)))))

(assert (=> d!1498493 (noDuplicateKeys!1922 lt!1872595)))

(assert (=> d!1498493 (= (getPair!526 lt!1872595 key!4653) lt!1873185)))

(assert (= (and d!1498493 c!804544) b!4707816))

(assert (= (and d!1498493 (not c!804544)) b!4707817))

(assert (= (and b!4707817 c!804543) b!4707813))

(assert (= (and b!4707817 (not c!804543)) b!4707814))

(assert (= (and d!1498493 res!1988966) b!4707819))

(assert (= (and d!1498493 (not res!1988967)) b!4707818))

(assert (= (and b!4707818 res!1988964) b!4707815))

(assert (= (and b!4707815 res!1988965) b!4707812))

(declare-fun m!5632445 () Bool)

(assert (=> b!4707815 m!5632445))

(declare-fun m!5632447 () Bool)

(assert (=> b!4707813 m!5632447))

(declare-fun m!5632449 () Bool)

(assert (=> d!1498493 m!5632449))

(declare-fun m!5632451 () Bool)

(assert (=> d!1498493 m!5632451))

(assert (=> b!4707812 m!5632445))

(assert (=> b!4707812 m!5632445))

(declare-fun m!5632453 () Bool)

(assert (=> b!4707812 m!5632453))

(declare-fun m!5632455 () Bool)

(assert (=> b!4707819 m!5632455))

(declare-fun m!5632457 () Bool)

(assert (=> b!4707818 m!5632457))

(assert (=> b!4707371 d!1498493))

(declare-fun d!1498495 () Bool)

(declare-fun e!2936617 () Bool)

(assert (=> d!1498495 e!2936617))

(declare-fun res!1988970 () Bool)

(assert (=> d!1498495 (=> res!1988970 e!2936617)))

(declare-fun lt!1873195 () Bool)

(assert (=> d!1498495 (= res!1988970 (not lt!1873195))))

(declare-fun lt!1873196 () Bool)

(assert (=> d!1498495 (= lt!1873195 lt!1873196)))

(declare-fun lt!1873194 () Unit!127368)

(declare-fun e!2936618 () Unit!127368)

(assert (=> d!1498495 (= lt!1873194 e!2936618)))

(declare-fun c!804547 () Bool)

(assert (=> d!1498495 (= c!804547 lt!1873196)))

(declare-fun containsKey!3233 (List!52724 (_ BitVec 64)) Bool)

(assert (=> d!1498495 (= lt!1873196 (containsKey!3233 (toList!5734 lm!2023) lt!1872600))))

(assert (=> d!1498495 (= (contains!15921 lm!2023 lt!1872600) lt!1873195)))

(declare-fun b!4707826 () Bool)

(declare-fun lt!1873197 () Unit!127368)

(assert (=> b!4707826 (= e!2936618 lt!1873197)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1781 (List!52724 (_ BitVec 64)) Unit!127368)

(assert (=> b!4707826 (= lt!1873197 (lemmaContainsKeyImpliesGetValueByKeyDefined!1781 (toList!5734 lm!2023) lt!1872600))))

(declare-datatypes ((Option!12257 0))(
  ( (None!12256) (Some!12256 (v!46783 List!52723)) )
))
(declare-fun isDefined!9512 (Option!12257) Bool)

(declare-fun getValueByKey!1889 (List!52724 (_ BitVec 64)) Option!12257)

(assert (=> b!4707826 (isDefined!9512 (getValueByKey!1889 (toList!5734 lm!2023) lt!1872600))))

(declare-fun b!4707827 () Bool)

(declare-fun Unit!127489 () Unit!127368)

(assert (=> b!4707827 (= e!2936618 Unit!127489)))

(declare-fun b!4707828 () Bool)

(assert (=> b!4707828 (= e!2936617 (isDefined!9512 (getValueByKey!1889 (toList!5734 lm!2023) lt!1872600)))))

(assert (= (and d!1498495 c!804547) b!4707826))

(assert (= (and d!1498495 (not c!804547)) b!4707827))

(assert (= (and d!1498495 (not res!1988970)) b!4707828))

(declare-fun m!5632459 () Bool)

(assert (=> d!1498495 m!5632459))

(declare-fun m!5632461 () Bool)

(assert (=> b!4707826 m!5632461))

(declare-fun m!5632463 () Bool)

(assert (=> b!4707826 m!5632463))

(assert (=> b!4707826 m!5632463))

(declare-fun m!5632465 () Bool)

(assert (=> b!4707826 m!5632465))

(assert (=> b!4707828 m!5632463))

(assert (=> b!4707828 m!5632463))

(assert (=> b!4707828 m!5632465))

(assert (=> b!4707371 d!1498495))

(declare-fun d!1498497 () Bool)

(assert (=> d!1498497 (dynLambda!21767 lambda!211883 lt!1872582)))

(declare-fun lt!1873200 () Unit!127368)

(declare-fun choose!33103 (List!52724 Int tuple2!54084) Unit!127368)

(assert (=> d!1498497 (= lt!1873200 (choose!33103 (toList!5734 lm!2023) lambda!211883 lt!1872582))))

(declare-fun e!2936621 () Bool)

(assert (=> d!1498497 e!2936621))

(declare-fun res!1988973 () Bool)

(assert (=> d!1498497 (=> (not res!1988973) (not e!2936621))))

(assert (=> d!1498497 (= res!1988973 (forall!11443 (toList!5734 lm!2023) lambda!211883))))

(assert (=> d!1498497 (= (forallContained!3550 (toList!5734 lm!2023) lambda!211883 lt!1872582) lt!1873200)))

(declare-fun b!4707831 () Bool)

(assert (=> b!4707831 (= e!2936621 (contains!15920 (toList!5734 lm!2023) lt!1872582))))

(assert (= (and d!1498497 res!1988973) b!4707831))

(declare-fun b_lambda!177605 () Bool)

(assert (=> (not b_lambda!177605) (not d!1498497)))

(declare-fun m!5632467 () Bool)

(assert (=> d!1498497 m!5632467))

(declare-fun m!5632469 () Bool)

(assert (=> d!1498497 m!5632469))

(assert (=> d!1498497 m!5631225))

(assert (=> b!4707831 m!5631205))

(assert (=> b!4707371 d!1498497))

(declare-fun bs!1100645 () Bool)

(declare-fun d!1498499 () Bool)

(assert (= bs!1100645 (and d!1498499 d!1498359)))

(declare-fun lambda!212042 () Int)

(assert (=> bs!1100645 (= lambda!212042 lambda!212004)))

(declare-fun bs!1100646 () Bool)

(assert (= bs!1100646 (and d!1498499 d!1498329)))

(assert (=> bs!1100646 (= lambda!212042 lambda!211995)))

(declare-fun bs!1100647 () Bool)

(assert (= bs!1100647 (and d!1498499 d!1498393)))

(assert (=> bs!1100647 (= lambda!212042 lambda!212028)))

(declare-fun bs!1100648 () Bool)

(assert (= bs!1100648 (and d!1498499 d!1498449)))

(assert (=> bs!1100648 (= lambda!212042 lambda!212034)))

(declare-fun bs!1100649 () Bool)

(assert (= bs!1100649 (and d!1498499 d!1498451)))

(assert (=> bs!1100649 (not (= lambda!212042 lambda!212037))))

(declare-fun bs!1100650 () Bool)

(assert (= bs!1100650 (and d!1498499 start!478140)))

(assert (=> bs!1100650 (= lambda!212042 lambda!211883)))

(declare-fun bs!1100651 () Bool)

(assert (= bs!1100651 (and d!1498499 d!1498209)))

(assert (=> bs!1100651 (= lambda!212042 lambda!211889)))

(declare-fun bs!1100652 () Bool)

(assert (= bs!1100652 (and d!1498499 d!1498469)))

(assert (=> bs!1100652 (= lambda!212042 lambda!212038)))

(declare-fun bs!1100653 () Bool)

(assert (= bs!1100653 (and d!1498499 d!1498277)))

(assert (=> bs!1100653 (= lambda!212042 lambda!211967)))

(declare-fun bs!1100654 () Bool)

(assert (= bs!1100654 (and d!1498499 d!1498267)))

(assert (=> bs!1100654 (= lambda!212042 lambda!211948)))

(declare-fun bs!1100655 () Bool)

(assert (= bs!1100655 (and d!1498499 d!1498281)))

(assert (=> bs!1100655 (= lambda!212042 lambda!211978)))

(declare-fun bs!1100656 () Bool)

(assert (= bs!1100656 (and d!1498499 d!1498377)))

(assert (=> bs!1100656 (= lambda!212042 lambda!212021)))

(declare-fun bs!1100657 () Bool)

(assert (= bs!1100657 (and d!1498499 d!1498409)))

(assert (=> bs!1100657 (= lambda!212042 lambda!212029)))

(declare-fun bs!1100658 () Bool)

(assert (= bs!1100658 (and d!1498499 d!1498385)))

(assert (=> bs!1100658 (= lambda!212042 lambda!212023)))

(assert (=> d!1498499 (contains!15921 lm!2023 (hash!4234 hashF!1323 key!4653))))

(declare-fun lt!1873203 () Unit!127368)

(declare-fun choose!33104 (ListLongMap!4263 K!13955 Hashable!6291) Unit!127368)

(assert (=> d!1498499 (= lt!1873203 (choose!33104 lm!2023 key!4653 hashF!1323))))

(assert (=> d!1498499 (forall!11443 (toList!5734 lm!2023) lambda!212042)))

(assert (=> d!1498499 (= (lemmaInGenMapThenLongMapContainsHash!732 lm!2023 key!4653 hashF!1323) lt!1873203)))

(declare-fun bs!1100659 () Bool)

(assert (= bs!1100659 d!1498499))

(assert (=> bs!1100659 m!5631103))

(assert (=> bs!1100659 m!5631103))

(declare-fun m!5632471 () Bool)

(assert (=> bs!1100659 m!5632471))

(declare-fun m!5632473 () Bool)

(assert (=> bs!1100659 m!5632473))

(declare-fun m!5632475 () Bool)

(assert (=> bs!1100659 m!5632475))

(assert (=> b!4707371 d!1498499))

(declare-fun d!1498501 () Bool)

(assert (=> d!1498501 (contains!15920 (toList!5734 lm!2023) (tuple2!54085 lt!1872600 lt!1872595))))

(declare-fun lt!1873206 () Unit!127368)

(declare-fun choose!33105 (ListLongMap!4263 (_ BitVec 64) List!52723) Unit!127368)

(assert (=> d!1498501 (= lt!1873206 (choose!33105 lm!2023 lt!1872600 lt!1872595))))

(assert (=> d!1498501 (contains!15921 lm!2023 lt!1872600)))

(assert (=> d!1498501 (= (lemmaGetValueImpliesTupleContained!331 lm!2023 lt!1872600 lt!1872595) lt!1873206)))

(declare-fun bs!1100660 () Bool)

(assert (= bs!1100660 d!1498501))

(declare-fun m!5632477 () Bool)

(assert (=> bs!1100660 m!5632477))

(declare-fun m!5632479 () Bool)

(assert (=> bs!1100660 m!5632479))

(assert (=> bs!1100660 m!5631201))

(assert (=> b!4707371 d!1498501))

(declare-fun bs!1100661 () Bool)

(declare-fun d!1498503 () Bool)

(assert (= bs!1100661 (and d!1498503 d!1498499)))

(declare-fun lambda!212049 () Int)

(assert (=> bs!1100661 (= lambda!212049 lambda!212042)))

(declare-fun bs!1100662 () Bool)

(assert (= bs!1100662 (and d!1498503 d!1498359)))

(assert (=> bs!1100662 (= lambda!212049 lambda!212004)))

(declare-fun bs!1100663 () Bool)

(assert (= bs!1100663 (and d!1498503 d!1498329)))

(assert (=> bs!1100663 (= lambda!212049 lambda!211995)))

(declare-fun bs!1100664 () Bool)

(assert (= bs!1100664 (and d!1498503 d!1498393)))

(assert (=> bs!1100664 (= lambda!212049 lambda!212028)))

(declare-fun bs!1100665 () Bool)

(assert (= bs!1100665 (and d!1498503 d!1498449)))

(assert (=> bs!1100665 (= lambda!212049 lambda!212034)))

(declare-fun bs!1100666 () Bool)

(assert (= bs!1100666 (and d!1498503 d!1498451)))

(assert (=> bs!1100666 (not (= lambda!212049 lambda!212037))))

(declare-fun bs!1100667 () Bool)

(assert (= bs!1100667 (and d!1498503 start!478140)))

(assert (=> bs!1100667 (= lambda!212049 lambda!211883)))

(declare-fun bs!1100668 () Bool)

(assert (= bs!1100668 (and d!1498503 d!1498209)))

(assert (=> bs!1100668 (= lambda!212049 lambda!211889)))

(declare-fun bs!1100669 () Bool)

(assert (= bs!1100669 (and d!1498503 d!1498469)))

(assert (=> bs!1100669 (= lambda!212049 lambda!212038)))

(declare-fun bs!1100670 () Bool)

(assert (= bs!1100670 (and d!1498503 d!1498277)))

(assert (=> bs!1100670 (= lambda!212049 lambda!211967)))

(declare-fun bs!1100671 () Bool)

(assert (= bs!1100671 (and d!1498503 d!1498267)))

(assert (=> bs!1100671 (= lambda!212049 lambda!211948)))

(declare-fun bs!1100672 () Bool)

(assert (= bs!1100672 (and d!1498503 d!1498281)))

(assert (=> bs!1100672 (= lambda!212049 lambda!211978)))

(declare-fun bs!1100673 () Bool)

(assert (= bs!1100673 (and d!1498503 d!1498377)))

(assert (=> bs!1100673 (= lambda!212049 lambda!212021)))

(declare-fun bs!1100674 () Bool)

(assert (= bs!1100674 (and d!1498503 d!1498409)))

(assert (=> bs!1100674 (= lambda!212049 lambda!212029)))

(declare-fun bs!1100675 () Bool)

(assert (= bs!1100675 (and d!1498503 d!1498385)))

(assert (=> bs!1100675 (= lambda!212049 lambda!212023)))

(declare-fun b!4707844 () Bool)

(declare-fun lt!1873225 () (_ BitVec 64))

(declare-fun lt!1873229 () List!52723)

(declare-fun e!2936626 () Bool)

(assert (=> b!4707844 (= e!2936626 (= (getValueByKey!1889 (toList!5734 lm!2023) lt!1873225) (Some!12256 lt!1873229)))))

(declare-fun e!2936627 () Bool)

(assert (=> d!1498503 e!2936627))

(declare-fun res!1988982 () Bool)

(assert (=> d!1498503 (=> (not res!1988982) (not e!2936627))))

(assert (=> d!1498503 (= res!1988982 (forall!11443 (toList!5734 lm!2023) lambda!212049))))

(declare-fun lt!1873226 () Unit!127368)

(declare-fun choose!33106 (ListLongMap!4263 K!13955 Hashable!6291) Unit!127368)

(assert (=> d!1498503 (= lt!1873226 (choose!33106 lm!2023 key!4653 hashF!1323))))

(assert (=> d!1498503 (forall!11443 (toList!5734 lm!2023) lambda!212049)))

(assert (=> d!1498503 (= (lemmaInGenMapThenGetPairDefined!322 lm!2023 key!4653 hashF!1323) lt!1873226)))

(declare-fun b!4707843 () Bool)

(assert (=> b!4707843 (= e!2936627 (isDefined!9508 (getPair!526 (apply!12405 lm!2023 (hash!4234 hashF!1323 key!4653)) key!4653)))))

(declare-fun lt!1873228 () Unit!127368)

(assert (=> b!4707843 (= lt!1873228 (forallContained!3550 (toList!5734 lm!2023) lambda!212049 (tuple2!54085 (hash!4234 hashF!1323 key!4653) (apply!12405 lm!2023 (hash!4234 hashF!1323 key!4653)))))))

(declare-fun lt!1873224 () Unit!127368)

(declare-fun lt!1873230 () Unit!127368)

(assert (=> b!4707843 (= lt!1873224 lt!1873230)))

(assert (=> b!4707843 (contains!15920 (toList!5734 lm!2023) (tuple2!54085 lt!1873225 lt!1873229))))

(assert (=> b!4707843 (= lt!1873230 (lemmaGetValueImpliesTupleContained!331 lm!2023 lt!1873225 lt!1873229))))

(assert (=> b!4707843 e!2936626))

(declare-fun res!1988984 () Bool)

(assert (=> b!4707843 (=> (not res!1988984) (not e!2936626))))

(assert (=> b!4707843 (= res!1988984 (contains!15921 lm!2023 lt!1873225))))

(assert (=> b!4707843 (= lt!1873229 (apply!12405 lm!2023 (hash!4234 hashF!1323 key!4653)))))

(assert (=> b!4707843 (= lt!1873225 (hash!4234 hashF!1323 key!4653))))

(declare-fun lt!1873223 () Unit!127368)

(declare-fun lt!1873227 () Unit!127368)

(assert (=> b!4707843 (= lt!1873223 lt!1873227)))

(assert (=> b!4707843 (contains!15921 lm!2023 (hash!4234 hashF!1323 key!4653))))

(assert (=> b!4707843 (= lt!1873227 (lemmaInGenMapThenLongMapContainsHash!732 lm!2023 key!4653 hashF!1323))))

(declare-fun b!4707841 () Bool)

(declare-fun res!1988983 () Bool)

(assert (=> b!4707841 (=> (not res!1988983) (not e!2936627))))

(assert (=> b!4707841 (= res!1988983 (allKeysSameHashInMap!1836 lm!2023 hashF!1323))))

(declare-fun b!4707842 () Bool)

(declare-fun res!1988985 () Bool)

(assert (=> b!4707842 (=> (not res!1988985) (not e!2936627))))

(assert (=> b!4707842 (= res!1988985 (contains!15922 (extractMap!1948 (toList!5734 lm!2023)) key!4653))))

(assert (= (and d!1498503 res!1988982) b!4707841))

(assert (= (and b!4707841 res!1988983) b!4707842))

(assert (= (and b!4707842 res!1988985) b!4707843))

(assert (= (and b!4707843 res!1988984) b!4707844))

(assert (=> b!4707843 m!5631199))

(assert (=> b!4707843 m!5631103))

(assert (=> b!4707843 m!5632471))

(declare-fun m!5632481 () Bool)

(assert (=> b!4707843 m!5632481))

(declare-fun m!5632483 () Bool)

(assert (=> b!4707843 m!5632483))

(assert (=> b!4707843 m!5631103))

(declare-fun m!5632485 () Bool)

(assert (=> b!4707843 m!5632485))

(assert (=> b!4707843 m!5632485))

(declare-fun m!5632487 () Bool)

(assert (=> b!4707843 m!5632487))

(assert (=> b!4707843 m!5631103))

(assert (=> b!4707843 m!5632487))

(declare-fun m!5632489 () Bool)

(assert (=> b!4707843 m!5632489))

(declare-fun m!5632491 () Bool)

(assert (=> b!4707843 m!5632491))

(declare-fun m!5632493 () Bool)

(assert (=> b!4707843 m!5632493))

(declare-fun m!5632495 () Bool)

(assert (=> d!1498503 m!5632495))

(declare-fun m!5632497 () Bool)

(assert (=> d!1498503 m!5632497))

(assert (=> d!1498503 m!5632495))

(assert (=> b!4707841 m!5631109))

(assert (=> b!4707842 m!5631123))

(assert (=> b!4707842 m!5631123))

(declare-fun m!5632499 () Bool)

(assert (=> b!4707842 m!5632499))

(declare-fun m!5632501 () Bool)

(assert (=> b!4707844 m!5632501))

(assert (=> b!4707371 d!1498503))

(declare-fun d!1498505 () Bool)

(assert (=> d!1498505 (containsKey!3229 oldBucket!34 key!4653)))

(declare-fun lt!1873233 () Unit!127368)

(declare-fun choose!33107 (List!52723 K!13955 Hashable!6291) Unit!127368)

(assert (=> d!1498505 (= lt!1873233 (choose!33107 oldBucket!34 key!4653 hashF!1323))))

(assert (=> d!1498505 (noDuplicateKeys!1922 oldBucket!34)))

(assert (=> d!1498505 (= (lemmaGetPairDefinedThenContainsKey!274 oldBucket!34 key!4653 hashF!1323) lt!1873233)))

(declare-fun bs!1100676 () Bool)

(assert (= bs!1100676 d!1498505))

(assert (=> bs!1100676 m!5631203))

(declare-fun m!5632503 () Bool)

(assert (=> bs!1100676 m!5632503))

(assert (=> bs!1100676 m!5631119))

(assert (=> b!4707371 d!1498505))

(declare-fun d!1498507 () Bool)

(assert (=> d!1498507 (= (isDefined!9508 (getPair!526 lt!1872595 key!4653)) (not (isEmpty!29148 (getPair!526 lt!1872595 key!4653))))))

(declare-fun bs!1100677 () Bool)

(assert (= bs!1100677 d!1498507))

(assert (=> bs!1100677 m!5631185))

(declare-fun m!5632505 () Bool)

(assert (=> bs!1100677 m!5632505))

(assert (=> b!4707371 d!1498507))

(declare-fun d!1498509 () Bool)

(declare-fun res!1988990 () Bool)

(declare-fun e!2936632 () Bool)

(assert (=> d!1498509 (=> res!1988990 e!2936632)))

(assert (=> d!1498509 (= res!1988990 (and ((_ is Cons!52599) (t!359953 oldBucket!34)) (= (_1!30335 (h!58898 (t!359953 oldBucket!34))) key!4653)))))

(assert (=> d!1498509 (= (containsKey!3229 (t!359953 oldBucket!34) key!4653) e!2936632)))

(declare-fun b!4707849 () Bool)

(declare-fun e!2936633 () Bool)

(assert (=> b!4707849 (= e!2936632 e!2936633)))

(declare-fun res!1988991 () Bool)

(assert (=> b!4707849 (=> (not res!1988991) (not e!2936633))))

(assert (=> b!4707849 (= res!1988991 ((_ is Cons!52599) (t!359953 oldBucket!34)))))

(declare-fun b!4707850 () Bool)

(assert (=> b!4707850 (= e!2936633 (containsKey!3229 (t!359953 (t!359953 oldBucket!34)) key!4653))))

(assert (= (and d!1498509 (not res!1988990)) b!4707849))

(assert (= (and b!4707849 res!1988991) b!4707850))

(declare-fun m!5632507 () Bool)

(assert (=> b!4707850 m!5632507))

(assert (=> b!4707371 d!1498509))

(declare-fun d!1498511 () Bool)

(declare-fun res!1988992 () Bool)

(declare-fun e!2936634 () Bool)

(assert (=> d!1498511 (=> res!1988992 e!2936634)))

(assert (=> d!1498511 (= res!1988992 (and ((_ is Cons!52599) oldBucket!34) (= (_1!30335 (h!58898 oldBucket!34)) key!4653)))))

(assert (=> d!1498511 (= (containsKey!3229 oldBucket!34 key!4653) e!2936634)))

(declare-fun b!4707851 () Bool)

(declare-fun e!2936635 () Bool)

(assert (=> b!4707851 (= e!2936634 e!2936635)))

(declare-fun res!1988993 () Bool)

(assert (=> b!4707851 (=> (not res!1988993) (not e!2936635))))

(assert (=> b!4707851 (= res!1988993 ((_ is Cons!52599) oldBucket!34))))

(declare-fun b!4707852 () Bool)

(assert (=> b!4707852 (= e!2936635 (containsKey!3229 (t!359953 oldBucket!34) key!4653))))

(assert (= (and d!1498511 (not res!1988992)) b!4707851))

(assert (= (and b!4707851 res!1988993) b!4707852))

(assert (=> b!4707852 m!5631195))

(assert (=> b!4707371 d!1498511))

(declare-fun d!1498513 () Bool)

(declare-fun lt!1873236 () Bool)

(declare-fun content!9324 (List!52724) (InoxSet tuple2!54084))

(assert (=> d!1498513 (= lt!1873236 (select (content!9324 (toList!5734 lm!2023)) lt!1872582))))

(declare-fun e!2936640 () Bool)

(assert (=> d!1498513 (= lt!1873236 e!2936640)))

(declare-fun res!1988999 () Bool)

(assert (=> d!1498513 (=> (not res!1988999) (not e!2936640))))

(assert (=> d!1498513 (= res!1988999 ((_ is Cons!52600) (toList!5734 lm!2023)))))

(assert (=> d!1498513 (= (contains!15920 (toList!5734 lm!2023) lt!1872582) lt!1873236)))

(declare-fun b!4707857 () Bool)

(declare-fun e!2936641 () Bool)

(assert (=> b!4707857 (= e!2936640 e!2936641)))

(declare-fun res!1988998 () Bool)

(assert (=> b!4707857 (=> res!1988998 e!2936641)))

(assert (=> b!4707857 (= res!1988998 (= (h!58899 (toList!5734 lm!2023)) lt!1872582))))

(declare-fun b!4707858 () Bool)

(assert (=> b!4707858 (= e!2936641 (contains!15920 (t!359954 (toList!5734 lm!2023)) lt!1872582))))

(assert (= (and d!1498513 res!1988999) b!4707857))

(assert (= (and b!4707857 (not res!1988998)) b!4707858))

(declare-fun m!5632509 () Bool)

(assert (=> d!1498513 m!5632509))

(declare-fun m!5632511 () Bool)

(assert (=> d!1498513 m!5632511))

(declare-fun m!5632513 () Bool)

(assert (=> b!4707858 m!5632513))

(assert (=> b!4707371 d!1498513))

(declare-fun d!1498515 () Bool)

(declare-fun get!17636 (Option!12257) List!52723)

(assert (=> d!1498515 (= (apply!12405 lm!2023 lt!1872600) (get!17636 (getValueByKey!1889 (toList!5734 lm!2023) lt!1872600)))))

(declare-fun bs!1100678 () Bool)

(assert (= bs!1100678 d!1498515))

(assert (=> bs!1100678 m!5632463))

(assert (=> bs!1100678 m!5632463))

(declare-fun m!5632515 () Bool)

(assert (=> bs!1100678 m!5632515))

(assert (=> b!4707371 d!1498515))

(declare-fun b!4707863 () Bool)

(declare-fun e!2936644 () Bool)

(declare-fun tp!1347082 () Bool)

(assert (=> b!4707863 (= e!2936644 (and tp_is_empty!30981 tp_is_empty!30983 tp!1347082))))

(assert (=> b!4707369 (= tp!1347067 e!2936644)))

(assert (= (and b!4707369 ((_ is Cons!52599) (t!359953 oldBucket!34))) b!4707863))

(declare-fun b!4707868 () Bool)

(declare-fun e!2936647 () Bool)

(declare-fun tp!1347087 () Bool)

(declare-fun tp!1347088 () Bool)

(assert (=> b!4707868 (= e!2936647 (and tp!1347087 tp!1347088))))

(assert (=> b!4707391 (= tp!1347068 e!2936647)))

(assert (= (and b!4707391 ((_ is Cons!52600) (toList!5734 lm!2023))) b!4707868))

(declare-fun e!2936648 () Bool)

(declare-fun b!4707869 () Bool)

(declare-fun tp!1347089 () Bool)

(assert (=> b!4707869 (= e!2936648 (and tp_is_empty!30981 tp_is_empty!30983 tp!1347089))))

(assert (=> b!4707376 (= tp!1347069 e!2936648)))

(assert (= (and b!4707376 ((_ is Cons!52599) (t!359953 newBucket!218))) b!4707869))

(declare-fun b_lambda!177607 () Bool)

(assert (= b_lambda!177603 (or start!478140 b_lambda!177607)))

(declare-fun bs!1100679 () Bool)

(declare-fun d!1498517 () Bool)

(assert (= bs!1100679 (and d!1498517 start!478140)))

(assert (=> bs!1100679 (= (dynLambda!21767 lambda!211883 (h!58899 (Cons!52600 lt!1872603 lt!1872609))) (noDuplicateKeys!1922 (_2!30336 (h!58899 (Cons!52600 lt!1872603 lt!1872609)))))))

(declare-fun m!5632517 () Bool)

(assert (=> bs!1100679 m!5632517))

(assert (=> b!4707782 d!1498517))

(declare-fun b_lambda!177609 () Bool)

(assert (= b_lambda!177605 (or start!478140 b_lambda!177609)))

(declare-fun bs!1100680 () Bool)

(declare-fun d!1498519 () Bool)

(assert (= bs!1100680 (and d!1498519 start!478140)))

(assert (=> bs!1100680 (= (dynLambda!21767 lambda!211883 lt!1872582) (noDuplicateKeys!1922 (_2!30336 lt!1872582)))))

(declare-fun m!5632519 () Bool)

(assert (=> bs!1100680 m!5632519))

(assert (=> d!1498497 d!1498519))

(declare-fun b_lambda!177611 () Bool)

(assert (= b_lambda!177591 (or start!478140 b_lambda!177611)))

(declare-fun bs!1100681 () Bool)

(declare-fun d!1498521 () Bool)

(assert (= bs!1100681 (and d!1498521 start!478140)))

(assert (=> bs!1100681 (= (dynLambda!21767 lambda!211883 (h!58899 (toList!5734 lm!2023))) (noDuplicateKeys!1922 (_2!30336 (h!58899 (toList!5734 lm!2023)))))))

(assert (=> bs!1100681 m!5631557))

(assert (=> b!4707546 d!1498521))

(check-sat (not d!1498375) (not d!1498275) (not b!4707685) (not d!1498441) (not b_lambda!177609) (not d!1498501) (not bm!329110) (not d!1498491) (not b!4707869) (not d!1498333) (not d!1498387) (not b!4707620) (not bm!329124) (not b!4707723) (not d!1498415) (not b!4707764) (not b!4707842) (not b!4707591) (not b!4707863) (not b!4707605) (not d!1498499) (not d!1498269) (not bm!329135) (not b!4707718) (not b!4707788) (not b!4707593) (not d!1498331) (not b!4707734) (not b!4707852) (not b!4707778) (not b!4707547) (not d!1498487) (not bm!329137) (not b!4707726) (not b!4707793) (not d!1498307) (not b!4707779) (not b!4707819) (not d!1498301) (not b!4707683) (not d!1498479) (not b!4707590) (not b!4707529) (not bs!1100679) (not d!1498463) (not b!4707795) (not b!4707684) (not b!4707682) (not b!4707850) (not b!4707790) (not b!4707784) (not bm!329109) (not b!4707736) (not b!4707770) (not d!1498473) (not d!1498409) (not d!1498363) (not b!4707432) (not d!1498205) (not d!1498377) (not b!4707608) (not d!1498219) (not b!4707439) (not b!4707828) (not d!1498507) (not b!4707724) (not b!4707826) (not b!4707438) (not b!4707812) (not b!4707813) (not b!4707714) (not b!4707677) (not b!4707771) (not d!1498465) tp_is_empty!30983 (not d!1498405) (not b!4707700) (not b!4707532) (not d!1498493) (not b!4707868) (not d!1498449) (not d!1498489) (not b!4707606) (not b!4707619) (not d!1498323) (not b!4707686) (not b!4707858) (not bm!329122) (not b!4707676) (not d!1498505) (not bm!329123) (not d!1498513) (not b!4707831) (not d!1498413) (not b!4707772) (not b!4707697) (not d!1498457) (not bs!1100681) (not b!4707841) (not d!1498199) (not d!1498419) (not d!1498355) (not bm!329143) (not b!4707791) (not d!1498365) (not d!1498207) (not d!1498485) (not b!4707794) (not d!1498455) (not d!1498281) (not b!4707617) (not bm!329142) (not d!1498393) (not bs!1100680) (not d!1498315) (not b_lambda!177607) (not d!1498483) (not b!4707768) (not d!1498481) (not b!4707727) (not d!1498495) (not b!4707815) (not b!4707783) (not b!4707769) (not b_lambda!177611) (not d!1498469) (not d!1498503) (not d!1498417) (not b!4707699) (not bm!329138) (not d!1498423) (not bm!329144) (not bm!329152) (not b!4707719) (not b!4707781) (not b!4707560) (not b!4707680) (not bm!329111) (not d!1498273) (not d!1498385) (not b!4707564) (not b!4707843) (not b!4707530) (not b!4707540) (not d!1498267) (not b!4707774) (not d!1498439) (not b!4707780) (not d!1498303) (not d!1498461) (not d!1498459) (not b!4707698) (not b!4707702) (not bm!329126) (not b!4707681) (not bm!329125) (not b!4707580) (not d!1498515) (not b!4707818) (not d!1498401) (not d!1498371) (not d!1498329) (not b!4707844) (not d!1498359) (not d!1498497) (not b!4707695) (not b!4707688) (not b!4707765) tp_is_empty!30981 (not bm!329136) (not d!1498309) (not b!4707792) (not d!1498209) (not b!4707579) (not d!1498277) (not d!1498421) (not d!1498279) (not bm!329121) (not d!1498451))
(check-sat)
