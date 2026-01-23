; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!477124 () Bool)

(assert start!477124)

(declare-fun b!4702566 () Bool)

(declare-fun e!2933427 () Bool)

(declare-fun e!2933426 () Bool)

(assert (=> b!4702566 (= e!2933427 (not e!2933426))))

(declare-fun res!1985748 () Bool)

(assert (=> b!4702566 (=> res!1985748 e!2933426)))

(declare-datatypes ((K!13910 0))(
  ( (K!13911 (val!19399 Int)) )
))
(declare-datatypes ((V!14156 0))(
  ( (V!14157 (val!19400 Int)) )
))
(declare-datatypes ((tuple2!54010 0))(
  ( (tuple2!54011 (_1!30299 K!13910) (_2!30299 V!14156)) )
))
(declare-datatypes ((List!52673 0))(
  ( (Nil!52549) (Cons!52549 (h!58834 tuple2!54010) (t!359889 List!52673)) )
))
(declare-fun oldBucket!34 () List!52673)

(declare-fun key!4653 () K!13910)

(get-info :version)

(assert (=> b!4702566 (= res!1985748 (or (and ((_ is Cons!52549) oldBucket!34) (= (_1!30299 (h!58834 oldBucket!34)) key!4653)) (not ((_ is Cons!52549) oldBucket!34)) (= (_1!30299 (h!58834 oldBucket!34)) key!4653)))))

(declare-datatypes ((ListMap!5061 0))(
  ( (ListMap!5062 (toList!5697 List!52673)) )
))
(declare-fun lt!1866089 () ListMap!5061)

(declare-datatypes ((tuple2!54012 0))(
  ( (tuple2!54013 (_1!30300 (_ BitVec 64)) (_2!30300 List!52673)) )
))
(declare-datatypes ((List!52674 0))(
  ( (Nil!52550) (Cons!52550 (h!58835 tuple2!54012) (t!359890 List!52674)) )
))
(declare-datatypes ((ListLongMap!4227 0))(
  ( (ListLongMap!4228 (toList!5698 List!52674)) )
))
(declare-fun lm!2023 () ListLongMap!4227)

(declare-fun lt!1866071 () ListMap!5061)

(declare-fun addToMapMapFromBucket!1336 (List!52673 ListMap!5061) ListMap!5061)

(assert (=> b!4702566 (= lt!1866089 (addToMapMapFromBucket!1336 (_2!30300 (h!58835 (toList!5698 lm!2023))) lt!1866071))))

(declare-fun extractMap!1930 (List!52674) ListMap!5061)

(assert (=> b!4702566 (= lt!1866071 (extractMap!1930 (t!359890 (toList!5698 lm!2023))))))

(declare-fun tail!8737 (ListLongMap!4227) ListLongMap!4227)

(assert (=> b!4702566 (= (t!359890 (toList!5698 lm!2023)) (toList!5698 (tail!8737 lm!2023)))))

(declare-fun b!4702567 () Bool)

(declare-fun res!1985741 () Bool)

(declare-fun e!2933430 () Bool)

(assert (=> b!4702567 (=> res!1985741 e!2933430)))

(declare-fun lt!1866070 () ListMap!5061)

(declare-fun lt!1866078 () ListMap!5061)

(declare-fun lt!1866075 () tuple2!54010)

(declare-fun eq!1063 (ListMap!5061 ListMap!5061) Bool)

(declare-fun +!2188 (ListMap!5061 tuple2!54010) ListMap!5061)

(assert (=> b!4702567 (= res!1985741 (not (eq!1063 lt!1866078 (+!2188 lt!1866070 lt!1866075))))))

(declare-fun b!4702568 () Bool)

(declare-fun e!2933424 () Bool)

(assert (=> b!4702568 (= e!2933426 e!2933424)))

(declare-fun res!1985754 () Bool)

(assert (=> b!4702568 (=> res!1985754 e!2933424)))

(declare-fun containsKey!3183 (List!52673 K!13910) Bool)

(assert (=> b!4702568 (= res!1985754 (not (containsKey!3183 (t!359889 oldBucket!34) key!4653)))))

(assert (=> b!4702568 (containsKey!3183 oldBucket!34 key!4653)))

(declare-datatypes ((Unit!126492 0))(
  ( (Unit!126493) )
))
(declare-fun lt!1866091 () Unit!126492)

(declare-datatypes ((Hashable!6273 0))(
  ( (HashableExt!6272 (__x!31976 Int)) )
))
(declare-fun hashF!1323 () Hashable!6273)

(declare-fun lemmaGetPairDefinedThenContainsKey!256 (List!52673 K!13910 Hashable!6273) Unit!126492)

(assert (=> b!4702568 (= lt!1866091 (lemmaGetPairDefinedThenContainsKey!256 oldBucket!34 key!4653 hashF!1323))))

(declare-fun lt!1866067 () List!52673)

(declare-datatypes ((Option!12207 0))(
  ( (None!12206) (Some!12206 (v!46701 tuple2!54010)) )
))
(declare-fun isDefined!9462 (Option!12207) Bool)

(declare-fun getPair!508 (List!52673 K!13910) Option!12207)

(assert (=> b!4702568 (isDefined!9462 (getPair!508 lt!1866067 key!4653))))

(declare-fun lambda!210629 () Int)

(declare-fun lt!1866099 () Unit!126492)

(declare-fun lt!1866087 () tuple2!54012)

(declare-fun forallContained!3518 (List!52674 Int tuple2!54012) Unit!126492)

(assert (=> b!4702568 (= lt!1866099 (forallContained!3518 (toList!5698 lm!2023) lambda!210629 lt!1866087))))

(declare-fun contains!15838 (List!52674 tuple2!54012) Bool)

(assert (=> b!4702568 (contains!15838 (toList!5698 lm!2023) lt!1866087)))

(declare-fun lt!1866086 () (_ BitVec 64))

(assert (=> b!4702568 (= lt!1866087 (tuple2!54013 lt!1866086 lt!1866067))))

(declare-fun lt!1866084 () Unit!126492)

(declare-fun lemmaGetValueImpliesTupleContained!313 (ListLongMap!4227 (_ BitVec 64) List!52673) Unit!126492)

(assert (=> b!4702568 (= lt!1866084 (lemmaGetValueImpliesTupleContained!313 lm!2023 lt!1866086 lt!1866067))))

(declare-fun apply!12387 (ListLongMap!4227 (_ BitVec 64)) List!52673)

(assert (=> b!4702568 (= lt!1866067 (apply!12387 lm!2023 lt!1866086))))

(declare-fun contains!15839 (ListLongMap!4227 (_ BitVec 64)) Bool)

(assert (=> b!4702568 (contains!15839 lm!2023 lt!1866086)))

(declare-fun lt!1866095 () Unit!126492)

(declare-fun lemmaInGenMapThenLongMapContainsHash!714 (ListLongMap!4227 K!13910 Hashable!6273) Unit!126492)

(assert (=> b!4702568 (= lt!1866095 (lemmaInGenMapThenLongMapContainsHash!714 lm!2023 key!4653 hashF!1323))))

(declare-fun lt!1866065 () Unit!126492)

(declare-fun lemmaInGenMapThenGetPairDefined!304 (ListLongMap!4227 K!13910 Hashable!6273) Unit!126492)

(assert (=> b!4702568 (= lt!1866065 (lemmaInGenMapThenGetPairDefined!304 lm!2023 key!4653 hashF!1323))))

(declare-fun b!4702569 () Bool)

(declare-fun e!2933428 () Bool)

(declare-fun tp!1346765 () Bool)

(assert (=> b!4702569 (= e!2933428 tp!1346765)))

(declare-fun b!4702570 () Bool)

(declare-fun e!2933429 () Bool)

(declare-fun e!2933433 () Bool)

(assert (=> b!4702570 (= e!2933429 e!2933433)))

(declare-fun res!1985752 () Bool)

(assert (=> b!4702570 (=> (not res!1985752) (not e!2933433))))

(declare-fun contains!15840 (ListMap!5061 K!13910) Bool)

(assert (=> b!4702570 (= res!1985752 (contains!15840 lt!1866089 key!4653))))

(assert (=> b!4702570 (= lt!1866089 (extractMap!1930 (toList!5698 lm!2023)))))

(declare-fun b!4702571 () Bool)

(declare-fun res!1985746 () Bool)

(declare-fun e!2933422 () Bool)

(assert (=> b!4702571 (=> (not res!1985746) (not e!2933422))))

(declare-fun allKeysSameHashInMap!1818 (ListLongMap!4227 Hashable!6273) Bool)

(assert (=> b!4702571 (= res!1985746 (allKeysSameHashInMap!1818 lm!2023 hashF!1323))))

(declare-fun tp_is_empty!30911 () Bool)

(declare-fun tp_is_empty!30909 () Bool)

(declare-fun b!4702572 () Bool)

(declare-fun tp!1346767 () Bool)

(declare-fun e!2933421 () Bool)

(assert (=> b!4702572 (= e!2933421 (and tp_is_empty!30909 tp_is_empty!30911 tp!1346767))))

(declare-fun b!4702573 () Bool)

(declare-fun res!1985758 () Bool)

(declare-fun e!2933423 () Bool)

(assert (=> b!4702573 (=> res!1985758 e!2933423)))

(declare-fun lt!1866068 () List!52673)

(declare-fun removePairForKey!1499 (List!52673 K!13910) List!52673)

(assert (=> b!4702573 (= res!1985758 (not (= (removePairForKey!1499 (t!359889 oldBucket!34) key!4653) lt!1866068)))))

(declare-fun b!4702574 () Bool)

(declare-fun e!2933431 () Bool)

(declare-fun e!2933434 () Bool)

(assert (=> b!4702574 (= e!2933431 e!2933434)))

(declare-fun res!1985745 () Bool)

(assert (=> b!4702574 (=> res!1985745 e!2933434)))

(declare-fun lt!1866077 () ListMap!5061)

(declare-fun lt!1866083 () ListMap!5061)

(assert (=> b!4702574 (= res!1985745 (not (eq!1063 lt!1866077 (+!2188 lt!1866083 (h!58834 oldBucket!34)))))))

(declare-fun lt!1866064 () ListMap!5061)

(assert (=> b!4702574 (eq!1063 lt!1866064 (+!2188 lt!1866083 (h!58834 oldBucket!34)))))

(declare-fun lt!1866079 () Unit!126492)

(declare-fun lt!1866082 () ListMap!5061)

(declare-fun lemmaAddToEqMapsPreservesEq!86 (ListMap!5061 ListMap!5061 K!13910 V!14156) Unit!126492)

(assert (=> b!4702574 (= lt!1866079 (lemmaAddToEqMapsPreservesEq!86 lt!1866082 lt!1866083 (_1!30299 (h!58834 oldBucket!34)) (_2!30299 (h!58834 oldBucket!34))))))

(declare-fun res!1985742 () Bool)

(assert (=> start!477124 (=> (not res!1985742) (not e!2933429))))

(declare-fun forall!11411 (List!52674 Int) Bool)

(assert (=> start!477124 (= res!1985742 (forall!11411 (toList!5698 lm!2023) lambda!210629))))

(assert (=> start!477124 e!2933429))

(declare-fun inv!67784 (ListLongMap!4227) Bool)

(assert (=> start!477124 (and (inv!67784 lm!2023) e!2933428)))

(assert (=> start!477124 tp_is_empty!30909))

(declare-fun e!2933432 () Bool)

(assert (=> start!477124 e!2933432))

(assert (=> start!477124 true))

(assert (=> start!477124 e!2933421))

(declare-fun b!4702575 () Bool)

(assert (=> b!4702575 (= e!2933422 e!2933427)))

(declare-fun res!1985753 () Bool)

(assert (=> b!4702575 (=> (not res!1985753) (not e!2933427))))

(declare-fun lt!1866069 () tuple2!54012)

(declare-fun head!10071 (List!52674) tuple2!54012)

(assert (=> b!4702575 (= res!1985753 (= (head!10071 (toList!5698 lm!2023)) lt!1866069))))

(declare-fun hash!405 () (_ BitVec 64))

(assert (=> b!4702575 (= lt!1866069 (tuple2!54013 hash!405 oldBucket!34))))

(declare-fun b!4702576 () Bool)

(declare-fun res!1985749 () Bool)

(assert (=> b!4702576 (=> res!1985749 e!2933430)))

(assert (=> b!4702576 (= res!1985749 (not (= (h!58834 oldBucket!34) lt!1866075)))))

(declare-fun b!4702577 () Bool)

(declare-fun res!1985737 () Bool)

(assert (=> b!4702577 (=> res!1985737 e!2933431)))

(declare-fun lt!1866076 () ListMap!5061)

(assert (=> b!4702577 (= res!1985737 (not (eq!1063 lt!1866076 lt!1866078)))))

(declare-fun b!4702578 () Bool)

(declare-fun res!1985747 () Bool)

(assert (=> b!4702578 (=> (not res!1985747) (not e!2933429))))

(declare-fun noDuplicateKeys!1904 (List!52673) Bool)

(assert (=> b!4702578 (= res!1985747 (noDuplicateKeys!1904 oldBucket!34))))

(declare-fun b!4702579 () Bool)

(declare-fun res!1985738 () Bool)

(assert (=> b!4702579 (=> (not res!1985738) (not e!2933429))))

(declare-fun newBucket!218 () List!52673)

(assert (=> b!4702579 (= res!1985738 (noDuplicateKeys!1904 newBucket!218))))

(declare-fun b!4702580 () Bool)

(declare-fun e!2933425 () Bool)

(assert (=> b!4702580 (= e!2933430 e!2933425)))

(declare-fun res!1985743 () Bool)

(assert (=> b!4702580 (=> res!1985743 e!2933425)))

(assert (=> b!4702580 (= res!1985743 (not (eq!1063 lt!1866083 lt!1866082)))))

(declare-fun lt!1866074 () ListMap!5061)

(declare-fun -!708 (ListMap!5061 K!13910) ListMap!5061)

(assert (=> b!4702580 (= lt!1866082 (-!708 lt!1866074 key!4653))))

(declare-fun lt!1866081 () tuple2!54012)

(assert (=> b!4702580 (= lt!1866083 (extractMap!1930 (Cons!52550 lt!1866081 (t!359890 (toList!5698 lm!2023)))))))

(declare-fun lt!1866097 () List!52674)

(declare-fun lt!1866085 () tuple2!54012)

(assert (=> b!4702580 (eq!1063 (extractMap!1930 (Cons!52550 lt!1866081 lt!1866097)) (-!708 (extractMap!1930 (Cons!52550 lt!1866085 lt!1866097)) key!4653))))

(declare-fun lt!1866094 () List!52674)

(declare-fun tail!8738 (List!52674) List!52674)

(assert (=> b!4702580 (= lt!1866097 (tail!8738 lt!1866094))))

(assert (=> b!4702580 (= lt!1866081 (tuple2!54013 hash!405 lt!1866068))))

(declare-fun lt!1866073 () ListLongMap!4227)

(declare-fun lt!1866080 () Unit!126492)

(declare-fun lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMapOneHashIsHead!78 (ListLongMap!4227 (_ BitVec 64) List!52673 List!52673 K!13910 Hashable!6273) Unit!126492)

(assert (=> b!4702580 (= lt!1866080 (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMapOneHashIsHead!78 lt!1866073 hash!405 (t!359889 oldBucket!34) lt!1866068 key!4653 hashF!1323))))

(declare-fun b!4702581 () Bool)

(declare-fun res!1985740 () Bool)

(assert (=> b!4702581 (=> (not res!1985740) (not e!2933422))))

(declare-fun allKeysSameHash!1730 (List!52673 (_ BitVec 64) Hashable!6273) Bool)

(assert (=> b!4702581 (= res!1985740 (allKeysSameHash!1730 newBucket!218 hash!405 hashF!1323))))

(declare-fun b!4702582 () Bool)

(declare-fun res!1985755 () Bool)

(assert (=> b!4702582 (=> (not res!1985755) (not e!2933427))))

(assert (=> b!4702582 (= res!1985755 ((_ is Cons!52550) (toList!5698 lm!2023)))))

(declare-fun b!4702583 () Bool)

(declare-fun lt!1866100 () List!52674)

(assert (=> b!4702583 (= e!2933434 (forall!11411 lt!1866100 lambda!210629))))

(declare-fun lt!1866072 () ListMap!5061)

(assert (=> b!4702583 (eq!1063 lt!1866072 (-!708 lt!1866078 key!4653))))

(declare-fun lt!1866090 () Unit!126492)

(declare-fun lemmaRemovePreservesEq!90 (ListMap!5061 ListMap!5061 K!13910) Unit!126492)

(assert (=> b!4702583 (= lt!1866090 (lemmaRemovePreservesEq!90 lt!1866076 lt!1866078 key!4653))))

(declare-fun b!4702584 () Bool)

(assert (=> b!4702584 (= e!2933433 e!2933422)))

(declare-fun res!1985739 () Bool)

(assert (=> b!4702584 (=> (not res!1985739) (not e!2933422))))

(assert (=> b!4702584 (= res!1985739 (= lt!1866086 hash!405))))

(declare-fun hash!4188 (Hashable!6273 K!13910) (_ BitVec 64))

(assert (=> b!4702584 (= lt!1866086 (hash!4188 hashF!1323 key!4653))))

(declare-fun b!4702585 () Bool)

(assert (=> b!4702585 (= e!2933423 e!2933430)))

(declare-fun res!1985756 () Bool)

(assert (=> b!4702585 (=> res!1985756 e!2933430)))

(assert (=> b!4702585 (= res!1985756 (not (eq!1063 lt!1866078 (+!2188 lt!1866070 (h!58834 oldBucket!34)))))))

(declare-fun lt!1866088 () List!52673)

(assert (=> b!4702585 (= lt!1866070 (extractMap!1930 (Cons!52550 (tuple2!54013 hash!405 lt!1866088) (t!359890 (toList!5698 lm!2023)))))))

(assert (=> b!4702585 (= lt!1866078 (extractMap!1930 lt!1866100))))

(assert (=> b!4702585 (= lt!1866100 (Cons!52550 lt!1866069 (t!359890 (toList!5698 lm!2023))))))

(assert (=> b!4702585 (eq!1063 (addToMapMapFromBucket!1336 (Cons!52549 lt!1866075 lt!1866068) lt!1866071) (+!2188 (addToMapMapFromBucket!1336 lt!1866068 lt!1866071) lt!1866075))))

(declare-fun lt!1866096 () Unit!126492)

(declare-fun lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!312 (tuple2!54010 List!52673 ListMap!5061) Unit!126492)

(assert (=> b!4702585 (= lt!1866096 (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!312 lt!1866075 lt!1866068 lt!1866071))))

(declare-fun head!10072 (List!52673) tuple2!54010)

(assert (=> b!4702585 (= lt!1866075 (head!10072 newBucket!218))))

(declare-fun lt!1866093 () tuple2!54010)

(assert (=> b!4702585 (eq!1063 (addToMapMapFromBucket!1336 (Cons!52549 lt!1866093 lt!1866088) lt!1866071) (+!2188 (addToMapMapFromBucket!1336 lt!1866088 lt!1866071) lt!1866093))))

(declare-fun lt!1866063 () Unit!126492)

(assert (=> b!4702585 (= lt!1866063 (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!312 lt!1866093 lt!1866088 lt!1866071))))

(assert (=> b!4702585 (= lt!1866093 (head!10072 oldBucket!34))))

(assert (=> b!4702585 (contains!15840 lt!1866074 key!4653)))

(assert (=> b!4702585 (= lt!1866074 (extractMap!1930 lt!1866094))))

(declare-fun lt!1866098 () Unit!126492)

(declare-fun lemmaListContainsThenExtractedMapContains!496 (ListLongMap!4227 K!13910 Hashable!6273) Unit!126492)

(assert (=> b!4702585 (= lt!1866098 (lemmaListContainsThenExtractedMapContains!496 lt!1866073 key!4653 hashF!1323))))

(assert (=> b!4702585 (= lt!1866073 (ListLongMap!4228 lt!1866094))))

(assert (=> b!4702585 (= lt!1866094 (Cons!52550 lt!1866085 (t!359890 (toList!5698 lm!2023))))))

(assert (=> b!4702585 (= lt!1866085 (tuple2!54013 hash!405 (t!359889 oldBucket!34)))))

(declare-fun b!4702586 () Bool)

(declare-fun res!1985750 () Bool)

(assert (=> b!4702586 (=> res!1985750 e!2933431)))

(assert (=> b!4702586 (= res!1985750 (not (eq!1063 lt!1866072 lt!1866077)))))

(declare-fun b!4702587 () Bool)

(declare-fun res!1985757 () Bool)

(assert (=> b!4702587 (=> (not res!1985757) (not e!2933429))))

(assert (=> b!4702587 (= res!1985757 (allKeysSameHash!1730 oldBucket!34 hash!405 hashF!1323))))

(declare-fun b!4702588 () Bool)

(assert (=> b!4702588 (= e!2933424 e!2933423)))

(declare-fun res!1985759 () Bool)

(assert (=> b!4702588 (=> res!1985759 e!2933423)))

(assert (=> b!4702588 (= res!1985759 (not (= (removePairForKey!1499 lt!1866088 key!4653) lt!1866068)))))

(declare-fun tail!8739 (List!52673) List!52673)

(assert (=> b!4702588 (= lt!1866068 (tail!8739 newBucket!218))))

(assert (=> b!4702588 (= lt!1866088 (tail!8739 oldBucket!34))))

(declare-fun b!4702589 () Bool)

(declare-fun res!1985744 () Bool)

(assert (=> b!4702589 (=> (not res!1985744) (not e!2933429))))

(assert (=> b!4702589 (= res!1985744 (= (removePairForKey!1499 oldBucket!34 key!4653) newBucket!218))))

(declare-fun tp!1346766 () Bool)

(declare-fun b!4702590 () Bool)

(assert (=> b!4702590 (= e!2933432 (and tp_is_empty!30909 tp_is_empty!30911 tp!1346766))))

(declare-fun b!4702591 () Bool)

(assert (=> b!4702591 (= e!2933425 e!2933431)))

(declare-fun res!1985751 () Bool)

(assert (=> b!4702591 (=> res!1985751 e!2933431)))

(assert (=> b!4702591 (= res!1985751 (not (= lt!1866072 lt!1866077)))))

(assert (=> b!4702591 (= lt!1866077 (+!2188 lt!1866082 (h!58834 oldBucket!34)))))

(assert (=> b!4702591 (= lt!1866072 (-!708 lt!1866076 key!4653))))

(assert (=> b!4702591 (= lt!1866076 (+!2188 lt!1866074 (h!58834 oldBucket!34)))))

(declare-fun lt!1866092 () ListMap!5061)

(assert (=> b!4702591 (= lt!1866092 lt!1866064)))

(assert (=> b!4702591 (= lt!1866064 (+!2188 lt!1866082 (h!58834 oldBucket!34)))))

(assert (=> b!4702591 (= lt!1866092 (-!708 (+!2188 lt!1866074 (h!58834 oldBucket!34)) key!4653))))

(declare-fun lt!1866066 () Unit!126492)

(declare-fun addRemoveCommutativeForDiffKeys!109 (ListMap!5061 K!13910 V!14156 K!13910) Unit!126492)

(assert (=> b!4702591 (= lt!1866066 (addRemoveCommutativeForDiffKeys!109 lt!1866074 (_1!30299 (h!58834 oldBucket!34)) (_2!30299 (h!58834 oldBucket!34)) key!4653))))

(assert (= (and start!477124 res!1985742) b!4702578))

(assert (= (and b!4702578 res!1985747) b!4702579))

(assert (= (and b!4702579 res!1985738) b!4702589))

(assert (= (and b!4702589 res!1985744) b!4702587))

(assert (= (and b!4702587 res!1985757) b!4702570))

(assert (= (and b!4702570 res!1985752) b!4702584))

(assert (= (and b!4702584 res!1985739) b!4702581))

(assert (= (and b!4702581 res!1985740) b!4702571))

(assert (= (and b!4702571 res!1985746) b!4702575))

(assert (= (and b!4702575 res!1985753) b!4702582))

(assert (= (and b!4702582 res!1985755) b!4702566))

(assert (= (and b!4702566 (not res!1985748)) b!4702568))

(assert (= (and b!4702568 (not res!1985754)) b!4702588))

(assert (= (and b!4702588 (not res!1985759)) b!4702573))

(assert (= (and b!4702573 (not res!1985758)) b!4702585))

(assert (= (and b!4702585 (not res!1985756)) b!4702576))

(assert (= (and b!4702576 (not res!1985749)) b!4702567))

(assert (= (and b!4702567 (not res!1985741)) b!4702580))

(assert (= (and b!4702580 (not res!1985743)) b!4702591))

(assert (= (and b!4702591 (not res!1985751)) b!4702586))

(assert (= (and b!4702586 (not res!1985750)) b!4702577))

(assert (= (and b!4702577 (not res!1985737)) b!4702574))

(assert (= (and b!4702574 (not res!1985745)) b!4702583))

(assert (= start!477124 b!4702569))

(assert (= (and start!477124 ((_ is Cons!52549) oldBucket!34)) b!4702590))

(assert (= (and start!477124 ((_ is Cons!52549) newBucket!218)) b!4702572))

(declare-fun m!5619729 () Bool)

(assert (=> b!4702585 m!5619729))

(declare-fun m!5619731 () Bool)

(assert (=> b!4702585 m!5619731))

(declare-fun m!5619733 () Bool)

(assert (=> b!4702585 m!5619733))

(declare-fun m!5619735 () Bool)

(assert (=> b!4702585 m!5619735))

(declare-fun m!5619737 () Bool)

(assert (=> b!4702585 m!5619737))

(declare-fun m!5619739 () Bool)

(assert (=> b!4702585 m!5619739))

(declare-fun m!5619741 () Bool)

(assert (=> b!4702585 m!5619741))

(declare-fun m!5619743 () Bool)

(assert (=> b!4702585 m!5619743))

(declare-fun m!5619745 () Bool)

(assert (=> b!4702585 m!5619745))

(declare-fun m!5619747 () Bool)

(assert (=> b!4702585 m!5619747))

(declare-fun m!5619749 () Bool)

(assert (=> b!4702585 m!5619749))

(assert (=> b!4702585 m!5619731))

(declare-fun m!5619751 () Bool)

(assert (=> b!4702585 m!5619751))

(declare-fun m!5619753 () Bool)

(assert (=> b!4702585 m!5619753))

(assert (=> b!4702585 m!5619751))

(assert (=> b!4702585 m!5619733))

(assert (=> b!4702585 m!5619741))

(declare-fun m!5619755 () Bool)

(assert (=> b!4702585 m!5619755))

(assert (=> b!4702585 m!5619747))

(declare-fun m!5619757 () Bool)

(assert (=> b!4702585 m!5619757))

(declare-fun m!5619759 () Bool)

(assert (=> b!4702585 m!5619759))

(declare-fun m!5619761 () Bool)

(assert (=> b!4702585 m!5619761))

(assert (=> b!4702585 m!5619761))

(assert (=> b!4702585 m!5619757))

(declare-fun m!5619763 () Bool)

(assert (=> b!4702585 m!5619763))

(declare-fun m!5619765 () Bool)

(assert (=> b!4702585 m!5619765))

(declare-fun m!5619767 () Bool)

(assert (=> b!4702568 m!5619767))

(declare-fun m!5619769 () Bool)

(assert (=> b!4702568 m!5619769))

(declare-fun m!5619771 () Bool)

(assert (=> b!4702568 m!5619771))

(declare-fun m!5619773 () Bool)

(assert (=> b!4702568 m!5619773))

(declare-fun m!5619775 () Bool)

(assert (=> b!4702568 m!5619775))

(declare-fun m!5619777 () Bool)

(assert (=> b!4702568 m!5619777))

(declare-fun m!5619779 () Bool)

(assert (=> b!4702568 m!5619779))

(declare-fun m!5619781 () Bool)

(assert (=> b!4702568 m!5619781))

(declare-fun m!5619783 () Bool)

(assert (=> b!4702568 m!5619783))

(declare-fun m!5619785 () Bool)

(assert (=> b!4702568 m!5619785))

(assert (=> b!4702568 m!5619773))

(declare-fun m!5619787 () Bool)

(assert (=> b!4702568 m!5619787))

(declare-fun m!5619789 () Bool)

(assert (=> b!4702568 m!5619789))

(declare-fun m!5619791 () Bool)

(assert (=> b!4702578 m!5619791))

(declare-fun m!5619793 () Bool)

(assert (=> b!4702583 m!5619793))

(declare-fun m!5619795 () Bool)

(assert (=> b!4702583 m!5619795))

(assert (=> b!4702583 m!5619795))

(declare-fun m!5619797 () Bool)

(assert (=> b!4702583 m!5619797))

(declare-fun m!5619799 () Bool)

(assert (=> b!4702583 m!5619799))

(declare-fun m!5619801 () Bool)

(assert (=> b!4702586 m!5619801))

(declare-fun m!5619803 () Bool)

(assert (=> b!4702591 m!5619803))

(declare-fun m!5619805 () Bool)

(assert (=> b!4702591 m!5619805))

(declare-fun m!5619807 () Bool)

(assert (=> b!4702591 m!5619807))

(declare-fun m!5619809 () Bool)

(assert (=> b!4702591 m!5619809))

(assert (=> b!4702591 m!5619803))

(declare-fun m!5619811 () Bool)

(assert (=> b!4702591 m!5619811))

(declare-fun m!5619813 () Bool)

(assert (=> b!4702571 m!5619813))

(declare-fun m!5619815 () Bool)

(assert (=> b!4702580 m!5619815))

(declare-fun m!5619817 () Bool)

(assert (=> b!4702580 m!5619817))

(declare-fun m!5619819 () Bool)

(assert (=> b!4702580 m!5619819))

(assert (=> b!4702580 m!5619815))

(declare-fun m!5619821 () Bool)

(assert (=> b!4702580 m!5619821))

(declare-fun m!5619823 () Bool)

(assert (=> b!4702580 m!5619823))

(declare-fun m!5619825 () Bool)

(assert (=> b!4702580 m!5619825))

(declare-fun m!5619827 () Bool)

(assert (=> b!4702580 m!5619827))

(declare-fun m!5619829 () Bool)

(assert (=> b!4702580 m!5619829))

(assert (=> b!4702580 m!5619819))

(assert (=> b!4702580 m!5619821))

(declare-fun m!5619831 () Bool)

(assert (=> b!4702580 m!5619831))

(declare-fun m!5619833 () Bool)

(assert (=> b!4702587 m!5619833))

(declare-fun m!5619835 () Bool)

(assert (=> b!4702570 m!5619835))

(declare-fun m!5619837 () Bool)

(assert (=> b!4702570 m!5619837))

(declare-fun m!5619839 () Bool)

(assert (=> start!477124 m!5619839))

(declare-fun m!5619841 () Bool)

(assert (=> start!477124 m!5619841))

(declare-fun m!5619843 () Bool)

(assert (=> b!4702566 m!5619843))

(declare-fun m!5619845 () Bool)

(assert (=> b!4702566 m!5619845))

(declare-fun m!5619847 () Bool)

(assert (=> b!4702566 m!5619847))

(declare-fun m!5619849 () Bool)

(assert (=> b!4702581 m!5619849))

(declare-fun m!5619851 () Bool)

(assert (=> b!4702575 m!5619851))

(declare-fun m!5619853 () Bool)

(assert (=> b!4702584 m!5619853))

(declare-fun m!5619855 () Bool)

(assert (=> b!4702577 m!5619855))

(declare-fun m!5619857 () Bool)

(assert (=> b!4702589 m!5619857))

(declare-fun m!5619859 () Bool)

(assert (=> b!4702579 m!5619859))

(declare-fun m!5619861 () Bool)

(assert (=> b!4702573 m!5619861))

(declare-fun m!5619863 () Bool)

(assert (=> b!4702567 m!5619863))

(assert (=> b!4702567 m!5619863))

(declare-fun m!5619865 () Bool)

(assert (=> b!4702567 m!5619865))

(declare-fun m!5619867 () Bool)

(assert (=> b!4702588 m!5619867))

(declare-fun m!5619869 () Bool)

(assert (=> b!4702588 m!5619869))

(declare-fun m!5619871 () Bool)

(assert (=> b!4702588 m!5619871))

(declare-fun m!5619873 () Bool)

(assert (=> b!4702574 m!5619873))

(assert (=> b!4702574 m!5619873))

(declare-fun m!5619875 () Bool)

(assert (=> b!4702574 m!5619875))

(assert (=> b!4702574 m!5619873))

(declare-fun m!5619877 () Bool)

(assert (=> b!4702574 m!5619877))

(declare-fun m!5619879 () Bool)

(assert (=> b!4702574 m!5619879))

(check-sat (not b!4702577) (not b!4702580) (not b!4702581) (not b!4702590) tp_is_empty!30911 (not b!4702569) (not b!4702586) tp_is_empty!30909 (not b!4702574) (not b!4702571) (not b!4702583) (not b!4702575) (not b!4702588) (not b!4702570) (not b!4702584) (not b!4702567) (not b!4702579) (not b!4702591) (not start!477124) (not b!4702566) (not b!4702568) (not b!4702587) (not b!4702578) (not b!4702572) (not b!4702585) (not b!4702589) (not b!4702573))
(check-sat)
(get-model)

(declare-fun b!4702631 () Bool)

(declare-fun e!2933458 () List!52673)

(declare-fun e!2933457 () List!52673)

(assert (=> b!4702631 (= e!2933458 e!2933457)))

(declare-fun c!803783 () Bool)

(assert (=> b!4702631 (= c!803783 ((_ is Cons!52549) lt!1866088))))

(declare-fun b!4702632 () Bool)

(assert (=> b!4702632 (= e!2933457 (Cons!52549 (h!58834 lt!1866088) (removePairForKey!1499 (t!359889 lt!1866088) key!4653)))))

(declare-fun d!1495934 () Bool)

(declare-fun lt!1866126 () List!52673)

(assert (=> d!1495934 (not (containsKey!3183 lt!1866126 key!4653))))

(assert (=> d!1495934 (= lt!1866126 e!2933458)))

(declare-fun c!803782 () Bool)

(assert (=> d!1495934 (= c!803782 (and ((_ is Cons!52549) lt!1866088) (= (_1!30299 (h!58834 lt!1866088)) key!4653)))))

(assert (=> d!1495934 (noDuplicateKeys!1904 lt!1866088)))

(assert (=> d!1495934 (= (removePairForKey!1499 lt!1866088 key!4653) lt!1866126)))

(declare-fun b!4702630 () Bool)

(assert (=> b!4702630 (= e!2933458 (t!359889 lt!1866088))))

(declare-fun b!4702633 () Bool)

(assert (=> b!4702633 (= e!2933457 Nil!52549)))

(assert (= (and d!1495934 c!803782) b!4702630))

(assert (= (and d!1495934 (not c!803782)) b!4702631))

(assert (= (and b!4702631 c!803783) b!4702632))

(assert (= (and b!4702631 (not c!803783)) b!4702633))

(declare-fun m!5619941 () Bool)

(assert (=> b!4702632 m!5619941))

(declare-fun m!5619943 () Bool)

(assert (=> d!1495934 m!5619943))

(declare-fun m!5619945 () Bool)

(assert (=> d!1495934 m!5619945))

(assert (=> b!4702588 d!1495934))

(declare-fun d!1495944 () Bool)

(assert (=> d!1495944 (= (tail!8739 newBucket!218) (t!359889 newBucket!218))))

(assert (=> b!4702588 d!1495944))

(declare-fun d!1495950 () Bool)

(assert (=> d!1495950 (= (tail!8739 oldBucket!34) (t!359889 oldBucket!34))))

(assert (=> b!4702588 d!1495950))

(declare-fun d!1495954 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!9278 (List!52673) (InoxSet tuple2!54010))

(assert (=> d!1495954 (= (eq!1063 lt!1866076 lt!1866078) (= (content!9278 (toList!5697 lt!1866076)) (content!9278 (toList!5697 lt!1866078))))))

(declare-fun bs!1096362 () Bool)

(assert (= bs!1096362 d!1495954))

(declare-fun m!5619959 () Bool)

(assert (=> bs!1096362 m!5619959))

(declare-fun m!5619961 () Bool)

(assert (=> bs!1096362 m!5619961))

(assert (=> b!4702577 d!1495954))

(declare-fun b!4702697 () Bool)

(assert (=> b!4702697 true))

(declare-fun bs!1096402 () Bool)

(declare-fun b!4702699 () Bool)

(assert (= bs!1096402 (and b!4702699 b!4702697)))

(declare-fun lambda!210705 () Int)

(declare-fun lambda!210704 () Int)

(assert (=> bs!1096402 (= lambda!210705 lambda!210704)))

(assert (=> b!4702699 true))

(declare-fun lambda!210706 () Int)

(declare-fun lt!1866275 () ListMap!5061)

(assert (=> bs!1096402 (= (= lt!1866275 lt!1866071) (= lambda!210706 lambda!210704))))

(assert (=> b!4702699 (= (= lt!1866275 lt!1866071) (= lambda!210706 lambda!210705))))

(assert (=> b!4702699 true))

(declare-fun bs!1096406 () Bool)

(declare-fun d!1495960 () Bool)

(assert (= bs!1096406 (and d!1495960 b!4702697)))

(declare-fun lt!1866279 () ListMap!5061)

(declare-fun lambda!210708 () Int)

(assert (=> bs!1096406 (= (= lt!1866279 lt!1866071) (= lambda!210708 lambda!210704))))

(declare-fun bs!1096407 () Bool)

(assert (= bs!1096407 (and d!1495960 b!4702699)))

(assert (=> bs!1096407 (= (= lt!1866279 lt!1866071) (= lambda!210708 lambda!210705))))

(assert (=> bs!1096407 (= (= lt!1866279 lt!1866275) (= lambda!210708 lambda!210706))))

(assert (=> d!1495960 true))

(declare-fun b!4702695 () Bool)

(declare-fun res!1985806 () Bool)

(declare-fun e!2933495 () Bool)

(assert (=> b!4702695 (=> (not res!1985806) (not e!2933495))))

(declare-fun forall!11413 (List!52673 Int) Bool)

(assert (=> b!4702695 (= res!1985806 (forall!11413 (toList!5697 lt!1866071) lambda!210708))))

(declare-fun bm!328771 () Bool)

(declare-fun call!328777 () Unit!126492)

(declare-fun lemmaContainsAllItsOwnKeys!738 (ListMap!5061) Unit!126492)

(assert (=> bm!328771 (= call!328777 (lemmaContainsAllItsOwnKeys!738 lt!1866071))))

(declare-fun bm!328772 () Bool)

(declare-fun c!803795 () Bool)

(declare-fun call!328778 () Bool)

(declare-fun lt!1866269 () ListMap!5061)

(assert (=> bm!328772 (= call!328778 (forall!11413 (ite c!803795 (toList!5697 lt!1866071) (toList!5697 lt!1866269)) (ite c!803795 lambda!210704 lambda!210706)))))

(assert (=> d!1495960 e!2933495))

(declare-fun res!1985807 () Bool)

(assert (=> d!1495960 (=> (not res!1985807) (not e!2933495))))

(assert (=> d!1495960 (= res!1985807 (forall!11413 (_2!30300 (h!58835 (toList!5698 lm!2023))) lambda!210708))))

(declare-fun e!2933496 () ListMap!5061)

(assert (=> d!1495960 (= lt!1866279 e!2933496)))

(assert (=> d!1495960 (= c!803795 ((_ is Nil!52549) (_2!30300 (h!58835 (toList!5698 lm!2023)))))))

(assert (=> d!1495960 (noDuplicateKeys!1904 (_2!30300 (h!58835 (toList!5698 lm!2023))))))

(assert (=> d!1495960 (= (addToMapMapFromBucket!1336 (_2!30300 (h!58835 (toList!5698 lm!2023))) lt!1866071) lt!1866279)))

(declare-fun b!4702696 () Bool)

(declare-fun invariantList!1450 (List!52673) Bool)

(assert (=> b!4702696 (= e!2933495 (invariantList!1450 (toList!5697 lt!1866279)))))

(declare-fun call!328776 () Bool)

(declare-fun bm!328773 () Bool)

(assert (=> bm!328773 (= call!328776 (forall!11413 (ite c!803795 (toList!5697 lt!1866071) (_2!30300 (h!58835 (toList!5698 lm!2023)))) (ite c!803795 lambda!210704 lambda!210706)))))

(assert (=> b!4702697 (= e!2933496 lt!1866071)))

(declare-fun lt!1866281 () Unit!126492)

(assert (=> b!4702697 (= lt!1866281 call!328777)))

(assert (=> b!4702697 call!328778))

(declare-fun lt!1866273 () Unit!126492)

(assert (=> b!4702697 (= lt!1866273 lt!1866281)))

(assert (=> b!4702697 call!328776))

(declare-fun lt!1866270 () Unit!126492)

(declare-fun Unit!126505 () Unit!126492)

(assert (=> b!4702697 (= lt!1866270 Unit!126505)))

(declare-fun b!4702698 () Bool)

(declare-fun e!2933497 () Bool)

(assert (=> b!4702698 (= e!2933497 (forall!11413 (toList!5697 lt!1866071) lambda!210706))))

(assert (=> b!4702699 (= e!2933496 lt!1866275)))

(assert (=> b!4702699 (= lt!1866269 (+!2188 lt!1866071 (h!58834 (_2!30300 (h!58835 (toList!5698 lm!2023))))))))

(assert (=> b!4702699 (= lt!1866275 (addToMapMapFromBucket!1336 (t!359889 (_2!30300 (h!58835 (toList!5698 lm!2023)))) (+!2188 lt!1866071 (h!58834 (_2!30300 (h!58835 (toList!5698 lm!2023)))))))))

(declare-fun lt!1866285 () Unit!126492)

(assert (=> b!4702699 (= lt!1866285 call!328777)))

(assert (=> b!4702699 (forall!11413 (toList!5697 lt!1866071) lambda!210705)))

(declare-fun lt!1866266 () Unit!126492)

(assert (=> b!4702699 (= lt!1866266 lt!1866285)))

(assert (=> b!4702699 call!328778))

(declare-fun lt!1866278 () Unit!126492)

(declare-fun Unit!126506 () Unit!126492)

(assert (=> b!4702699 (= lt!1866278 Unit!126506)))

(assert (=> b!4702699 (forall!11413 (t!359889 (_2!30300 (h!58835 (toList!5698 lm!2023)))) lambda!210706)))

(declare-fun lt!1866277 () Unit!126492)

(declare-fun Unit!126507 () Unit!126492)

(assert (=> b!4702699 (= lt!1866277 Unit!126507)))

(declare-fun lt!1866280 () Unit!126492)

(declare-fun Unit!126508 () Unit!126492)

(assert (=> b!4702699 (= lt!1866280 Unit!126508)))

(declare-fun lt!1866286 () Unit!126492)

(declare-fun forallContained!3520 (List!52673 Int tuple2!54010) Unit!126492)

(assert (=> b!4702699 (= lt!1866286 (forallContained!3520 (toList!5697 lt!1866269) lambda!210706 (h!58834 (_2!30300 (h!58835 (toList!5698 lm!2023))))))))

(assert (=> b!4702699 (contains!15840 lt!1866269 (_1!30299 (h!58834 (_2!30300 (h!58835 (toList!5698 lm!2023))))))))

(declare-fun lt!1866276 () Unit!126492)

(declare-fun Unit!126509 () Unit!126492)

(assert (=> b!4702699 (= lt!1866276 Unit!126509)))

(assert (=> b!4702699 (contains!15840 lt!1866275 (_1!30299 (h!58834 (_2!30300 (h!58835 (toList!5698 lm!2023))))))))

(declare-fun lt!1866284 () Unit!126492)

(declare-fun Unit!126510 () Unit!126492)

(assert (=> b!4702699 (= lt!1866284 Unit!126510)))

(assert (=> b!4702699 (forall!11413 (_2!30300 (h!58835 (toList!5698 lm!2023))) lambda!210706)))

(declare-fun lt!1866271 () Unit!126492)

(declare-fun Unit!126511 () Unit!126492)

(assert (=> b!4702699 (= lt!1866271 Unit!126511)))

(assert (=> b!4702699 (forall!11413 (toList!5697 lt!1866269) lambda!210706)))

(declare-fun lt!1866283 () Unit!126492)

(declare-fun Unit!126512 () Unit!126492)

(assert (=> b!4702699 (= lt!1866283 Unit!126512)))

(declare-fun lt!1866282 () Unit!126492)

(declare-fun Unit!126513 () Unit!126492)

(assert (=> b!4702699 (= lt!1866282 Unit!126513)))

(declare-fun lt!1866272 () Unit!126492)

(declare-fun addForallContainsKeyThenBeforeAdding!737 (ListMap!5061 ListMap!5061 K!13910 V!14156) Unit!126492)

(assert (=> b!4702699 (= lt!1866272 (addForallContainsKeyThenBeforeAdding!737 lt!1866071 lt!1866275 (_1!30299 (h!58834 (_2!30300 (h!58835 (toList!5698 lm!2023))))) (_2!30299 (h!58834 (_2!30300 (h!58835 (toList!5698 lm!2023)))))))))

(assert (=> b!4702699 (forall!11413 (toList!5697 lt!1866071) lambda!210706)))

(declare-fun lt!1866267 () Unit!126492)

(assert (=> b!4702699 (= lt!1866267 lt!1866272)))

(assert (=> b!4702699 (forall!11413 (toList!5697 lt!1866071) lambda!210706)))

(declare-fun lt!1866274 () Unit!126492)

(declare-fun Unit!126514 () Unit!126492)

(assert (=> b!4702699 (= lt!1866274 Unit!126514)))

(declare-fun res!1985805 () Bool)

(assert (=> b!4702699 (= res!1985805 call!328776)))

(assert (=> b!4702699 (=> (not res!1985805) (not e!2933497))))

(assert (=> b!4702699 e!2933497))

(declare-fun lt!1866268 () Unit!126492)

(declare-fun Unit!126515 () Unit!126492)

(assert (=> b!4702699 (= lt!1866268 Unit!126515)))

(assert (= (and d!1495960 c!803795) b!4702697))

(assert (= (and d!1495960 (not c!803795)) b!4702699))

(assert (= (and b!4702699 res!1985805) b!4702698))

(assert (= (or b!4702697 b!4702699) bm!328771))

(assert (= (or b!4702697 b!4702699) bm!328773))

(assert (= (or b!4702697 b!4702699) bm!328772))

(assert (= (and d!1495960 res!1985807) b!4702695))

(assert (= (and b!4702695 res!1985806) b!4702696))

(declare-fun m!5620091 () Bool)

(assert (=> bm!328773 m!5620091))

(declare-fun m!5620093 () Bool)

(assert (=> bm!328772 m!5620093))

(declare-fun m!5620095 () Bool)

(assert (=> b!4702695 m!5620095))

(declare-fun m!5620097 () Bool)

(assert (=> b!4702699 m!5620097))

(declare-fun m!5620099 () Bool)

(assert (=> b!4702699 m!5620099))

(declare-fun m!5620101 () Bool)

(assert (=> b!4702699 m!5620101))

(declare-fun m!5620103 () Bool)

(assert (=> b!4702699 m!5620103))

(declare-fun m!5620105 () Bool)

(assert (=> b!4702699 m!5620105))

(declare-fun m!5620107 () Bool)

(assert (=> b!4702699 m!5620107))

(declare-fun m!5620109 () Bool)

(assert (=> b!4702699 m!5620109))

(declare-fun m!5620111 () Bool)

(assert (=> b!4702699 m!5620111))

(assert (=> b!4702699 m!5620097))

(declare-fun m!5620113 () Bool)

(assert (=> b!4702699 m!5620113))

(declare-fun m!5620115 () Bool)

(assert (=> b!4702699 m!5620115))

(assert (=> b!4702699 m!5620101))

(declare-fun m!5620117 () Bool)

(assert (=> b!4702699 m!5620117))

(assert (=> b!4702698 m!5620101))

(declare-fun m!5620119 () Bool)

(assert (=> d!1495960 m!5620119))

(declare-fun m!5620121 () Bool)

(assert (=> d!1495960 m!5620121))

(declare-fun m!5620123 () Bool)

(assert (=> bm!328771 m!5620123))

(declare-fun m!5620125 () Bool)

(assert (=> b!4702696 m!5620125))

(assert (=> b!4702566 d!1495960))

(declare-fun bs!1096430 () Bool)

(declare-fun d!1495992 () Bool)

(assert (= bs!1096430 (and d!1495992 start!477124)))

(declare-fun lambda!210716 () Int)

(assert (=> bs!1096430 (= lambda!210716 lambda!210629)))

(declare-fun lt!1866314 () ListMap!5061)

(assert (=> d!1495992 (invariantList!1450 (toList!5697 lt!1866314))))

(declare-fun e!2933504 () ListMap!5061)

(assert (=> d!1495992 (= lt!1866314 e!2933504)))

(declare-fun c!803800 () Bool)

(assert (=> d!1495992 (= c!803800 ((_ is Cons!52550) (t!359890 (toList!5698 lm!2023))))))

(assert (=> d!1495992 (forall!11411 (t!359890 (toList!5698 lm!2023)) lambda!210716)))

(assert (=> d!1495992 (= (extractMap!1930 (t!359890 (toList!5698 lm!2023))) lt!1866314)))

(declare-fun b!4702713 () Bool)

(assert (=> b!4702713 (= e!2933504 (addToMapMapFromBucket!1336 (_2!30300 (h!58835 (t!359890 (toList!5698 lm!2023)))) (extractMap!1930 (t!359890 (t!359890 (toList!5698 lm!2023))))))))

(declare-fun b!4702714 () Bool)

(assert (=> b!4702714 (= e!2933504 (ListMap!5062 Nil!52549))))

(assert (= (and d!1495992 c!803800) b!4702713))

(assert (= (and d!1495992 (not c!803800)) b!4702714))

(declare-fun m!5620135 () Bool)

(assert (=> d!1495992 m!5620135))

(declare-fun m!5620137 () Bool)

(assert (=> d!1495992 m!5620137))

(declare-fun m!5620139 () Bool)

(assert (=> b!4702713 m!5620139))

(assert (=> b!4702713 m!5620139))

(declare-fun m!5620141 () Bool)

(assert (=> b!4702713 m!5620141))

(assert (=> b!4702566 d!1495992))

(declare-fun d!1495996 () Bool)

(assert (=> d!1495996 (= (tail!8737 lm!2023) (ListLongMap!4228 (tail!8738 (toList!5698 lm!2023))))))

(declare-fun bs!1096431 () Bool)

(assert (= bs!1096431 d!1495996))

(declare-fun m!5620143 () Bool)

(assert (=> bs!1096431 m!5620143))

(assert (=> b!4702566 d!1495996))

(declare-fun bs!1096442 () Bool)

(declare-fun d!1495998 () Bool)

(assert (= bs!1096442 (and d!1495998 b!4702697)))

(declare-fun lambda!210721 () Int)

(assert (=> bs!1096442 (not (= lambda!210721 lambda!210704))))

(declare-fun bs!1096443 () Bool)

(assert (= bs!1096443 (and d!1495998 b!4702699)))

(assert (=> bs!1096443 (not (= lambda!210721 lambda!210705))))

(assert (=> bs!1096443 (not (= lambda!210721 lambda!210706))))

(declare-fun bs!1096444 () Bool)

(assert (= bs!1096444 (and d!1495998 d!1495960)))

(assert (=> bs!1096444 (not (= lambda!210721 lambda!210708))))

(assert (=> d!1495998 true))

(assert (=> d!1495998 true))

(assert (=> d!1495998 (= (allKeysSameHash!1730 oldBucket!34 hash!405 hashF!1323) (forall!11413 oldBucket!34 lambda!210721))))

(declare-fun bs!1096445 () Bool)

(assert (= bs!1096445 d!1495998))

(declare-fun m!5620145 () Bool)

(assert (=> bs!1096445 m!5620145))

(assert (=> b!4702587 d!1495998))

(declare-fun d!1496000 () Bool)

(declare-fun dynLambda!21753 (Int tuple2!54012) Bool)

(assert (=> d!1496000 (dynLambda!21753 lambda!210629 lt!1866087)))

(declare-fun lt!1866338 () Unit!126492)

(declare-fun choose!32935 (List!52674 Int tuple2!54012) Unit!126492)

(assert (=> d!1496000 (= lt!1866338 (choose!32935 (toList!5698 lm!2023) lambda!210629 lt!1866087))))

(declare-fun e!2933510 () Bool)

(assert (=> d!1496000 e!2933510))

(declare-fun res!1985816 () Bool)

(assert (=> d!1496000 (=> (not res!1985816) (not e!2933510))))

(assert (=> d!1496000 (= res!1985816 (forall!11411 (toList!5698 lm!2023) lambda!210629))))

(assert (=> d!1496000 (= (forallContained!3518 (toList!5698 lm!2023) lambda!210629 lt!1866087) lt!1866338)))

(declare-fun b!4702726 () Bool)

(assert (=> b!4702726 (= e!2933510 (contains!15838 (toList!5698 lm!2023) lt!1866087))))

(assert (= (and d!1496000 res!1985816) b!4702726))

(declare-fun b_lambda!177433 () Bool)

(assert (=> (not b_lambda!177433) (not d!1496000)))

(declare-fun m!5620181 () Bool)

(assert (=> d!1496000 m!5620181))

(declare-fun m!5620183 () Bool)

(assert (=> d!1496000 m!5620183))

(assert (=> d!1496000 m!5619839))

(assert (=> b!4702726 m!5619771))

(assert (=> b!4702568 d!1496000))

(declare-fun d!1496004 () Bool)

(declare-fun isEmpty!29133 (Option!12207) Bool)

(assert (=> d!1496004 (= (isDefined!9462 (getPair!508 lt!1866067 key!4653)) (not (isEmpty!29133 (getPair!508 lt!1866067 key!4653))))))

(declare-fun bs!1096465 () Bool)

(assert (= bs!1096465 d!1496004))

(assert (=> bs!1096465 m!5619773))

(declare-fun m!5620185 () Bool)

(assert (=> bs!1096465 m!5620185))

(assert (=> b!4702568 d!1496004))

(declare-fun b!4702745 () Bool)

(declare-fun e!2933525 () Bool)

(assert (=> b!4702745 (= e!2933525 (not (containsKey!3183 lt!1866067 key!4653)))))

(declare-fun b!4702746 () Bool)

(declare-fun res!1985829 () Bool)

(declare-fun e!2933526 () Bool)

(assert (=> b!4702746 (=> (not res!1985829) (not e!2933526))))

(declare-fun lt!1866345 () Option!12207)

(declare-fun get!17596 (Option!12207) tuple2!54010)

(assert (=> b!4702746 (= res!1985829 (= (_1!30299 (get!17596 lt!1866345)) key!4653))))

(declare-fun b!4702747 () Bool)

(declare-fun e!2933524 () Option!12207)

(assert (=> b!4702747 (= e!2933524 (Some!12206 (h!58834 lt!1866067)))))

(declare-fun b!4702748 () Bool)

(declare-fun contains!15842 (List!52673 tuple2!54010) Bool)

(assert (=> b!4702748 (= e!2933526 (contains!15842 lt!1866067 (get!17596 lt!1866345)))))

(declare-fun b!4702749 () Bool)

(declare-fun e!2933523 () Option!12207)

(assert (=> b!4702749 (= e!2933523 (getPair!508 (t!359889 lt!1866067) key!4653))))

(declare-fun b!4702750 () Bool)

(assert (=> b!4702750 (= e!2933524 e!2933523)))

(declare-fun c!803806 () Bool)

(assert (=> b!4702750 (= c!803806 ((_ is Cons!52549) lt!1866067))))

(declare-fun b!4702751 () Bool)

(declare-fun e!2933522 () Bool)

(assert (=> b!4702751 (= e!2933522 e!2933526)))

(declare-fun res!1985827 () Bool)

(assert (=> b!4702751 (=> (not res!1985827) (not e!2933526))))

(assert (=> b!4702751 (= res!1985827 (isDefined!9462 lt!1866345))))

(declare-fun d!1496006 () Bool)

(assert (=> d!1496006 e!2933522))

(declare-fun res!1985830 () Bool)

(assert (=> d!1496006 (=> res!1985830 e!2933522)))

(assert (=> d!1496006 (= res!1985830 e!2933525)))

(declare-fun res!1985828 () Bool)

(assert (=> d!1496006 (=> (not res!1985828) (not e!2933525))))

(assert (=> d!1496006 (= res!1985828 (isEmpty!29133 lt!1866345))))

(assert (=> d!1496006 (= lt!1866345 e!2933524)))

(declare-fun c!803807 () Bool)

(assert (=> d!1496006 (= c!803807 (and ((_ is Cons!52549) lt!1866067) (= (_1!30299 (h!58834 lt!1866067)) key!4653)))))

(assert (=> d!1496006 (noDuplicateKeys!1904 lt!1866067)))

(assert (=> d!1496006 (= (getPair!508 lt!1866067 key!4653) lt!1866345)))

(declare-fun b!4702752 () Bool)

(assert (=> b!4702752 (= e!2933523 None!12206)))

(assert (= (and d!1496006 c!803807) b!4702747))

(assert (= (and d!1496006 (not c!803807)) b!4702750))

(assert (= (and b!4702750 c!803806) b!4702749))

(assert (= (and b!4702750 (not c!803806)) b!4702752))

(assert (= (and d!1496006 res!1985828) b!4702745))

(assert (= (and d!1496006 (not res!1985830)) b!4702751))

(assert (= (and b!4702751 res!1985827) b!4702746))

(assert (= (and b!4702746 res!1985829) b!4702748))

(declare-fun m!5620237 () Bool)

(assert (=> b!4702748 m!5620237))

(assert (=> b!4702748 m!5620237))

(declare-fun m!5620239 () Bool)

(assert (=> b!4702748 m!5620239))

(declare-fun m!5620241 () Bool)

(assert (=> b!4702749 m!5620241))

(assert (=> b!4702746 m!5620237))

(declare-fun m!5620243 () Bool)

(assert (=> d!1496006 m!5620243))

(declare-fun m!5620245 () Bool)

(assert (=> d!1496006 m!5620245))

(declare-fun m!5620247 () Bool)

(assert (=> b!4702751 m!5620247))

(declare-fun m!5620249 () Bool)

(assert (=> b!4702745 m!5620249))

(assert (=> b!4702568 d!1496006))

(declare-fun d!1496016 () Bool)

(declare-fun lt!1866354 () Bool)

(declare-fun content!9280 (List!52674) (InoxSet tuple2!54012))

(assert (=> d!1496016 (= lt!1866354 (select (content!9280 (toList!5698 lm!2023)) lt!1866087))))

(declare-fun e!2933534 () Bool)

(assert (=> d!1496016 (= lt!1866354 e!2933534)))

(declare-fun res!1985837 () Bool)

(assert (=> d!1496016 (=> (not res!1985837) (not e!2933534))))

(assert (=> d!1496016 (= res!1985837 ((_ is Cons!52550) (toList!5698 lm!2023)))))

(assert (=> d!1496016 (= (contains!15838 (toList!5698 lm!2023) lt!1866087) lt!1866354)))

(declare-fun b!4702763 () Bool)

(declare-fun e!2933535 () Bool)

(assert (=> b!4702763 (= e!2933534 e!2933535)))

(declare-fun res!1985838 () Bool)

(assert (=> b!4702763 (=> res!1985838 e!2933535)))

(assert (=> b!4702763 (= res!1985838 (= (h!58835 (toList!5698 lm!2023)) lt!1866087))))

(declare-fun b!4702764 () Bool)

(assert (=> b!4702764 (= e!2933535 (contains!15838 (t!359890 (toList!5698 lm!2023)) lt!1866087))))

(assert (= (and d!1496016 res!1985837) b!4702763))

(assert (= (and b!4702763 (not res!1985838)) b!4702764))

(declare-fun m!5620279 () Bool)

(assert (=> d!1496016 m!5620279))

(declare-fun m!5620281 () Bool)

(assert (=> d!1496016 m!5620281))

(declare-fun m!5620283 () Bool)

(assert (=> b!4702764 m!5620283))

(assert (=> b!4702568 d!1496016))

(declare-fun bs!1096525 () Bool)

(declare-fun d!1496026 () Bool)

(assert (= bs!1096525 (and d!1496026 start!477124)))

(declare-fun lambda!210733 () Int)

(assert (=> bs!1096525 (= lambda!210733 lambda!210629)))

(declare-fun bs!1096526 () Bool)

(assert (= bs!1096526 (and d!1496026 d!1495992)))

(assert (=> bs!1096526 (= lambda!210733 lambda!210716)))

(assert (=> d!1496026 (contains!15839 lm!2023 (hash!4188 hashF!1323 key!4653))))

(declare-fun lt!1866378 () Unit!126492)

(declare-fun choose!32936 (ListLongMap!4227 K!13910 Hashable!6273) Unit!126492)

(assert (=> d!1496026 (= lt!1866378 (choose!32936 lm!2023 key!4653 hashF!1323))))

(assert (=> d!1496026 (forall!11411 (toList!5698 lm!2023) lambda!210733)))

(assert (=> d!1496026 (= (lemmaInGenMapThenLongMapContainsHash!714 lm!2023 key!4653 hashF!1323) lt!1866378)))

(declare-fun bs!1096527 () Bool)

(assert (= bs!1096527 d!1496026))

(assert (=> bs!1096527 m!5619853))

(assert (=> bs!1096527 m!5619853))

(declare-fun m!5620285 () Bool)

(assert (=> bs!1096527 m!5620285))

(declare-fun m!5620287 () Bool)

(assert (=> bs!1096527 m!5620287))

(declare-fun m!5620289 () Bool)

(assert (=> bs!1096527 m!5620289))

(assert (=> b!4702568 d!1496026))

(declare-fun bs!1096547 () Bool)

(declare-fun d!1496028 () Bool)

(assert (= bs!1096547 (and d!1496028 start!477124)))

(declare-fun lambda!210741 () Int)

(assert (=> bs!1096547 (= lambda!210741 lambda!210629)))

(declare-fun bs!1096548 () Bool)

(assert (= bs!1096548 (and d!1496028 d!1495992)))

(assert (=> bs!1096548 (= lambda!210741 lambda!210716)))

(declare-fun bs!1096549 () Bool)

(assert (= bs!1096549 (and d!1496028 d!1496026)))

(assert (=> bs!1096549 (= lambda!210741 lambda!210733)))

(declare-fun b!4702832 () Bool)

(declare-fun res!1985876 () Bool)

(declare-fun e!2933577 () Bool)

(assert (=> b!4702832 (=> (not res!1985876) (not e!2933577))))

(assert (=> b!4702832 (= res!1985876 (allKeysSameHashInMap!1818 lm!2023 hashF!1323))))

(assert (=> d!1496028 e!2933577))

(declare-fun res!1985874 () Bool)

(assert (=> d!1496028 (=> (not res!1985874) (not e!2933577))))

(assert (=> d!1496028 (= res!1985874 (forall!11411 (toList!5698 lm!2023) lambda!210741))))

(declare-fun lt!1866430 () Unit!126492)

(declare-fun choose!32937 (ListLongMap!4227 K!13910 Hashable!6273) Unit!126492)

(assert (=> d!1496028 (= lt!1866430 (choose!32937 lm!2023 key!4653 hashF!1323))))

(assert (=> d!1496028 (forall!11411 (toList!5698 lm!2023) lambda!210741)))

(assert (=> d!1496028 (= (lemmaInGenMapThenGetPairDefined!304 lm!2023 key!4653 hashF!1323) lt!1866430)))

(declare-fun b!4702834 () Bool)

(assert (=> b!4702834 (= e!2933577 (isDefined!9462 (getPair!508 (apply!12387 lm!2023 (hash!4188 hashF!1323 key!4653)) key!4653)))))

(declare-fun lt!1866435 () Unit!126492)

(assert (=> b!4702834 (= lt!1866435 (forallContained!3518 (toList!5698 lm!2023) lambda!210741 (tuple2!54013 (hash!4188 hashF!1323 key!4653) (apply!12387 lm!2023 (hash!4188 hashF!1323 key!4653)))))))

(declare-fun lt!1866437 () Unit!126492)

(declare-fun lt!1866431 () Unit!126492)

(assert (=> b!4702834 (= lt!1866437 lt!1866431)))

(declare-fun lt!1866433 () (_ BitVec 64))

(declare-fun lt!1866434 () List!52673)

(assert (=> b!4702834 (contains!15838 (toList!5698 lm!2023) (tuple2!54013 lt!1866433 lt!1866434))))

(assert (=> b!4702834 (= lt!1866431 (lemmaGetValueImpliesTupleContained!313 lm!2023 lt!1866433 lt!1866434))))

(declare-fun e!2933578 () Bool)

(assert (=> b!4702834 e!2933578))

(declare-fun res!1985875 () Bool)

(assert (=> b!4702834 (=> (not res!1985875) (not e!2933578))))

(assert (=> b!4702834 (= res!1985875 (contains!15839 lm!2023 lt!1866433))))

(assert (=> b!4702834 (= lt!1866434 (apply!12387 lm!2023 (hash!4188 hashF!1323 key!4653)))))

(assert (=> b!4702834 (= lt!1866433 (hash!4188 hashF!1323 key!4653))))

(declare-fun lt!1866436 () Unit!126492)

(declare-fun lt!1866432 () Unit!126492)

(assert (=> b!4702834 (= lt!1866436 lt!1866432)))

(assert (=> b!4702834 (contains!15839 lm!2023 (hash!4188 hashF!1323 key!4653))))

(assert (=> b!4702834 (= lt!1866432 (lemmaInGenMapThenLongMapContainsHash!714 lm!2023 key!4653 hashF!1323))))

(declare-fun b!4702833 () Bool)

(declare-fun res!1985873 () Bool)

(assert (=> b!4702833 (=> (not res!1985873) (not e!2933577))))

(assert (=> b!4702833 (= res!1985873 (contains!15840 (extractMap!1930 (toList!5698 lm!2023)) key!4653))))

(declare-fun b!4702835 () Bool)

(declare-datatypes ((Option!12209 0))(
  ( (None!12208) (Some!12208 (v!46707 List!52673)) )
))
(declare-fun getValueByKey!1859 (List!52674 (_ BitVec 64)) Option!12209)

(assert (=> b!4702835 (= e!2933578 (= (getValueByKey!1859 (toList!5698 lm!2023) lt!1866433) (Some!12208 lt!1866434)))))

(assert (= (and d!1496028 res!1985874) b!4702832))

(assert (= (and b!4702832 res!1985876) b!4702833))

(assert (= (and b!4702833 res!1985873) b!4702834))

(assert (= (and b!4702834 res!1985875) b!4702835))

(declare-fun m!5620381 () Bool)

(assert (=> b!4702834 m!5620381))

(declare-fun m!5620383 () Bool)

(assert (=> b!4702834 m!5620383))

(declare-fun m!5620385 () Bool)

(assert (=> b!4702834 m!5620385))

(assert (=> b!4702834 m!5620381))

(declare-fun m!5620387 () Bool)

(assert (=> b!4702834 m!5620387))

(declare-fun m!5620389 () Bool)

(assert (=> b!4702834 m!5620389))

(assert (=> b!4702834 m!5619853))

(assert (=> b!4702834 m!5620385))

(assert (=> b!4702834 m!5619853))

(assert (=> b!4702834 m!5620285))

(declare-fun m!5620391 () Bool)

(assert (=> b!4702834 m!5620391))

(assert (=> b!4702834 m!5619781))

(assert (=> b!4702834 m!5619853))

(declare-fun m!5620393 () Bool)

(assert (=> b!4702834 m!5620393))

(assert (=> b!4702833 m!5619837))

(assert (=> b!4702833 m!5619837))

(declare-fun m!5620395 () Bool)

(assert (=> b!4702833 m!5620395))

(declare-fun m!5620397 () Bool)

(assert (=> b!4702835 m!5620397))

(declare-fun m!5620399 () Bool)

(assert (=> d!1496028 m!5620399))

(declare-fun m!5620401 () Bool)

(assert (=> d!1496028 m!5620401))

(assert (=> d!1496028 m!5620399))

(assert (=> b!4702832 m!5619813))

(assert (=> b!4702568 d!1496028))

(declare-fun d!1496046 () Bool)

(declare-fun res!1985881 () Bool)

(declare-fun e!2933583 () Bool)

(assert (=> d!1496046 (=> res!1985881 e!2933583)))

(assert (=> d!1496046 (= res!1985881 (and ((_ is Cons!52549) oldBucket!34) (= (_1!30299 (h!58834 oldBucket!34)) key!4653)))))

(assert (=> d!1496046 (= (containsKey!3183 oldBucket!34 key!4653) e!2933583)))

(declare-fun b!4702840 () Bool)

(declare-fun e!2933584 () Bool)

(assert (=> b!4702840 (= e!2933583 e!2933584)))

(declare-fun res!1985882 () Bool)

(assert (=> b!4702840 (=> (not res!1985882) (not e!2933584))))

(assert (=> b!4702840 (= res!1985882 ((_ is Cons!52549) oldBucket!34))))

(declare-fun b!4702841 () Bool)

(assert (=> b!4702841 (= e!2933584 (containsKey!3183 (t!359889 oldBucket!34) key!4653))))

(assert (= (and d!1496046 (not res!1985881)) b!4702840))

(assert (= (and b!4702840 res!1985882) b!4702841))

(assert (=> b!4702841 m!5619785))

(assert (=> b!4702568 d!1496046))

(declare-fun d!1496050 () Bool)

(assert (=> d!1496050 (containsKey!3183 oldBucket!34 key!4653)))

(declare-fun lt!1866443 () Unit!126492)

(declare-fun choose!32939 (List!52673 K!13910 Hashable!6273) Unit!126492)

(assert (=> d!1496050 (= lt!1866443 (choose!32939 oldBucket!34 key!4653 hashF!1323))))

(assert (=> d!1496050 (noDuplicateKeys!1904 oldBucket!34)))

(assert (=> d!1496050 (= (lemmaGetPairDefinedThenContainsKey!256 oldBucket!34 key!4653 hashF!1323) lt!1866443)))

(declare-fun bs!1096559 () Bool)

(assert (= bs!1096559 d!1496050))

(assert (=> bs!1096559 m!5619787))

(declare-fun m!5620411 () Bool)

(assert (=> bs!1096559 m!5620411))

(assert (=> bs!1096559 m!5619791))

(assert (=> b!4702568 d!1496050))

(declare-fun d!1496054 () Bool)

(assert (=> d!1496054 (contains!15838 (toList!5698 lm!2023) (tuple2!54013 lt!1866086 lt!1866067))))

(declare-fun lt!1866446 () Unit!126492)

(declare-fun choose!32940 (ListLongMap!4227 (_ BitVec 64) List!52673) Unit!126492)

(assert (=> d!1496054 (= lt!1866446 (choose!32940 lm!2023 lt!1866086 lt!1866067))))

(assert (=> d!1496054 (contains!15839 lm!2023 lt!1866086)))

(assert (=> d!1496054 (= (lemmaGetValueImpliesTupleContained!313 lm!2023 lt!1866086 lt!1866067) lt!1866446)))

(declare-fun bs!1096560 () Bool)

(assert (= bs!1096560 d!1496054))

(declare-fun m!5620415 () Bool)

(assert (=> bs!1096560 m!5620415))

(declare-fun m!5620417 () Bool)

(assert (=> bs!1096560 m!5620417))

(assert (=> bs!1096560 m!5619789))

(assert (=> b!4702568 d!1496054))

(declare-fun d!1496058 () Bool)

(declare-fun get!17597 (Option!12209) List!52673)

(assert (=> d!1496058 (= (apply!12387 lm!2023 lt!1866086) (get!17597 (getValueByKey!1859 (toList!5698 lm!2023) lt!1866086)))))

(declare-fun bs!1096561 () Bool)

(assert (= bs!1096561 d!1496058))

(declare-fun m!5620419 () Bool)

(assert (=> bs!1096561 m!5620419))

(assert (=> bs!1096561 m!5620419))

(declare-fun m!5620421 () Bool)

(assert (=> bs!1096561 m!5620421))

(assert (=> b!4702568 d!1496058))

(declare-fun d!1496060 () Bool)

(declare-fun e!2933606 () Bool)

(assert (=> d!1496060 e!2933606))

(declare-fun res!1985899 () Bool)

(assert (=> d!1496060 (=> res!1985899 e!2933606)))

(declare-fun lt!1866470 () Bool)

(assert (=> d!1496060 (= res!1985899 (not lt!1866470))))

(declare-fun lt!1866473 () Bool)

(assert (=> d!1496060 (= lt!1866470 lt!1866473)))

(declare-fun lt!1866472 () Unit!126492)

(declare-fun e!2933607 () Unit!126492)

(assert (=> d!1496060 (= lt!1866472 e!2933607)))

(declare-fun c!803831 () Bool)

(assert (=> d!1496060 (= c!803831 lt!1866473)))

(declare-fun containsKey!3184 (List!52674 (_ BitVec 64)) Bool)

(assert (=> d!1496060 (= lt!1866473 (containsKey!3184 (toList!5698 lm!2023) lt!1866086))))

(assert (=> d!1496060 (= (contains!15839 lm!2023 lt!1866086) lt!1866470)))

(declare-fun b!4702869 () Bool)

(declare-fun lt!1866471 () Unit!126492)

(assert (=> b!4702869 (= e!2933607 lt!1866471)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1750 (List!52674 (_ BitVec 64)) Unit!126492)

(assert (=> b!4702869 (= lt!1866471 (lemmaContainsKeyImpliesGetValueByKeyDefined!1750 (toList!5698 lm!2023) lt!1866086))))

(declare-fun isDefined!9463 (Option!12209) Bool)

(assert (=> b!4702869 (isDefined!9463 (getValueByKey!1859 (toList!5698 lm!2023) lt!1866086))))

(declare-fun b!4702870 () Bool)

(declare-fun Unit!126527 () Unit!126492)

(assert (=> b!4702870 (= e!2933607 Unit!126527)))

(declare-fun b!4702871 () Bool)

(assert (=> b!4702871 (= e!2933606 (isDefined!9463 (getValueByKey!1859 (toList!5698 lm!2023) lt!1866086)))))

(assert (= (and d!1496060 c!803831) b!4702869))

(assert (= (and d!1496060 (not c!803831)) b!4702870))

(assert (= (and d!1496060 (not res!1985899)) b!4702871))

(declare-fun m!5620433 () Bool)

(assert (=> d!1496060 m!5620433))

(declare-fun m!5620435 () Bool)

(assert (=> b!4702869 m!5620435))

(assert (=> b!4702869 m!5620419))

(assert (=> b!4702869 m!5620419))

(declare-fun m!5620437 () Bool)

(assert (=> b!4702869 m!5620437))

(assert (=> b!4702871 m!5620419))

(assert (=> b!4702871 m!5620419))

(assert (=> b!4702871 m!5620437))

(assert (=> b!4702568 d!1496060))

(declare-fun d!1496068 () Bool)

(declare-fun res!1985900 () Bool)

(declare-fun e!2933608 () Bool)

(assert (=> d!1496068 (=> res!1985900 e!2933608)))

(assert (=> d!1496068 (= res!1985900 (and ((_ is Cons!52549) (t!359889 oldBucket!34)) (= (_1!30299 (h!58834 (t!359889 oldBucket!34))) key!4653)))))

(assert (=> d!1496068 (= (containsKey!3183 (t!359889 oldBucket!34) key!4653) e!2933608)))

(declare-fun b!4702872 () Bool)

(declare-fun e!2933609 () Bool)

(assert (=> b!4702872 (= e!2933608 e!2933609)))

(declare-fun res!1985901 () Bool)

(assert (=> b!4702872 (=> (not res!1985901) (not e!2933609))))

(assert (=> b!4702872 (= res!1985901 ((_ is Cons!52549) (t!359889 oldBucket!34)))))

(declare-fun b!4702873 () Bool)

(assert (=> b!4702873 (= e!2933609 (containsKey!3183 (t!359889 (t!359889 oldBucket!34)) key!4653))))

(assert (= (and d!1496068 (not res!1985900)) b!4702872))

(assert (= (and b!4702872 res!1985901) b!4702873))

(declare-fun m!5620439 () Bool)

(assert (=> b!4702873 m!5620439))

(assert (=> b!4702568 d!1496068))

(declare-fun b!4702875 () Bool)

(declare-fun e!2933611 () List!52673)

(declare-fun e!2933610 () List!52673)

(assert (=> b!4702875 (= e!2933611 e!2933610)))

(declare-fun c!803833 () Bool)

(assert (=> b!4702875 (= c!803833 ((_ is Cons!52549) oldBucket!34))))

(declare-fun b!4702876 () Bool)

(assert (=> b!4702876 (= e!2933610 (Cons!52549 (h!58834 oldBucket!34) (removePairForKey!1499 (t!359889 oldBucket!34) key!4653)))))

(declare-fun d!1496070 () Bool)

(declare-fun lt!1866474 () List!52673)

(assert (=> d!1496070 (not (containsKey!3183 lt!1866474 key!4653))))

(assert (=> d!1496070 (= lt!1866474 e!2933611)))

(declare-fun c!803832 () Bool)

(assert (=> d!1496070 (= c!803832 (and ((_ is Cons!52549) oldBucket!34) (= (_1!30299 (h!58834 oldBucket!34)) key!4653)))))

(assert (=> d!1496070 (noDuplicateKeys!1904 oldBucket!34)))

(assert (=> d!1496070 (= (removePairForKey!1499 oldBucket!34 key!4653) lt!1866474)))

(declare-fun b!4702874 () Bool)

(assert (=> b!4702874 (= e!2933611 (t!359889 oldBucket!34))))

(declare-fun b!4702877 () Bool)

(assert (=> b!4702877 (= e!2933610 Nil!52549)))

(assert (= (and d!1496070 c!803832) b!4702874))

(assert (= (and d!1496070 (not c!803832)) b!4702875))

(assert (= (and b!4702875 c!803833) b!4702876))

(assert (= (and b!4702875 (not c!803833)) b!4702877))

(assert (=> b!4702876 m!5619861))

(declare-fun m!5620441 () Bool)

(assert (=> d!1496070 m!5620441))

(assert (=> d!1496070 m!5619791))

(assert (=> b!4702589 d!1496070))

(declare-fun d!1496072 () Bool)

(declare-fun res!1985906 () Bool)

(declare-fun e!2933616 () Bool)

(assert (=> d!1496072 (=> res!1985906 e!2933616)))

(assert (=> d!1496072 (= res!1985906 (not ((_ is Cons!52549) oldBucket!34)))))

(assert (=> d!1496072 (= (noDuplicateKeys!1904 oldBucket!34) e!2933616)))

(declare-fun b!4702882 () Bool)

(declare-fun e!2933617 () Bool)

(assert (=> b!4702882 (= e!2933616 e!2933617)))

(declare-fun res!1985907 () Bool)

(assert (=> b!4702882 (=> (not res!1985907) (not e!2933617))))

(assert (=> b!4702882 (= res!1985907 (not (containsKey!3183 (t!359889 oldBucket!34) (_1!30299 (h!58834 oldBucket!34)))))))

(declare-fun b!4702883 () Bool)

(assert (=> b!4702883 (= e!2933617 (noDuplicateKeys!1904 (t!359889 oldBucket!34)))))

(assert (= (and d!1496072 (not res!1985906)) b!4702882))

(assert (= (and b!4702882 res!1985907) b!4702883))

(declare-fun m!5620443 () Bool)

(assert (=> b!4702882 m!5620443))

(declare-fun m!5620445 () Bool)

(assert (=> b!4702883 m!5620445))

(assert (=> b!4702578 d!1496072))

(declare-fun d!1496074 () Bool)

(assert (=> d!1496074 (= (eq!1063 lt!1866078 (+!2188 lt!1866070 lt!1866075)) (= (content!9278 (toList!5697 lt!1866078)) (content!9278 (toList!5697 (+!2188 lt!1866070 lt!1866075)))))))

(declare-fun bs!1096562 () Bool)

(assert (= bs!1096562 d!1496074))

(assert (=> bs!1096562 m!5619961))

(declare-fun m!5620447 () Bool)

(assert (=> bs!1096562 m!5620447))

(assert (=> b!4702567 d!1496074))

(declare-fun d!1496076 () Bool)

(declare-fun e!2933620 () Bool)

(assert (=> d!1496076 e!2933620))

(declare-fun res!1985912 () Bool)

(assert (=> d!1496076 (=> (not res!1985912) (not e!2933620))))

(declare-fun lt!1866485 () ListMap!5061)

(assert (=> d!1496076 (= res!1985912 (contains!15840 lt!1866485 (_1!30299 lt!1866075)))))

(declare-fun lt!1866484 () List!52673)

(assert (=> d!1496076 (= lt!1866485 (ListMap!5062 lt!1866484))))

(declare-fun lt!1866483 () Unit!126492)

(declare-fun lt!1866486 () Unit!126492)

(assert (=> d!1496076 (= lt!1866483 lt!1866486)))

(declare-datatypes ((Option!12210 0))(
  ( (None!12209) (Some!12209 (v!46708 V!14156)) )
))
(declare-fun getValueByKey!1860 (List!52673 K!13910) Option!12210)

(assert (=> d!1496076 (= (getValueByKey!1860 lt!1866484 (_1!30299 lt!1866075)) (Some!12209 (_2!30299 lt!1866075)))))

(declare-fun lemmaContainsTupThenGetReturnValue!1040 (List!52673 K!13910 V!14156) Unit!126492)

(assert (=> d!1496076 (= lt!1866486 (lemmaContainsTupThenGetReturnValue!1040 lt!1866484 (_1!30299 lt!1866075) (_2!30299 lt!1866075)))))

(declare-fun insertNoDuplicatedKeys!548 (List!52673 K!13910 V!14156) List!52673)

(assert (=> d!1496076 (= lt!1866484 (insertNoDuplicatedKeys!548 (toList!5697 lt!1866070) (_1!30299 lt!1866075) (_2!30299 lt!1866075)))))

(assert (=> d!1496076 (= (+!2188 lt!1866070 lt!1866075) lt!1866485)))

(declare-fun b!4702888 () Bool)

(declare-fun res!1985913 () Bool)

(assert (=> b!4702888 (=> (not res!1985913) (not e!2933620))))

(assert (=> b!4702888 (= res!1985913 (= (getValueByKey!1860 (toList!5697 lt!1866485) (_1!30299 lt!1866075)) (Some!12209 (_2!30299 lt!1866075))))))

(declare-fun b!4702889 () Bool)

(assert (=> b!4702889 (= e!2933620 (contains!15842 (toList!5697 lt!1866485) lt!1866075))))

(assert (= (and d!1496076 res!1985912) b!4702888))

(assert (= (and b!4702888 res!1985913) b!4702889))

(declare-fun m!5620449 () Bool)

(assert (=> d!1496076 m!5620449))

(declare-fun m!5620451 () Bool)

(assert (=> d!1496076 m!5620451))

(declare-fun m!5620453 () Bool)

(assert (=> d!1496076 m!5620453))

(declare-fun m!5620455 () Bool)

(assert (=> d!1496076 m!5620455))

(declare-fun m!5620457 () Bool)

(assert (=> b!4702888 m!5620457))

(declare-fun m!5620459 () Bool)

(assert (=> b!4702889 m!5620459))

(assert (=> b!4702567 d!1496076))

(declare-fun bs!1096563 () Bool)

(declare-fun d!1496078 () Bool)

(assert (= bs!1096563 (and d!1496078 start!477124)))

(declare-fun lambda!210747 () Int)

(assert (=> bs!1096563 (= lambda!210747 lambda!210629)))

(declare-fun bs!1096564 () Bool)

(assert (= bs!1096564 (and d!1496078 d!1495992)))

(assert (=> bs!1096564 (= lambda!210747 lambda!210716)))

(declare-fun bs!1096565 () Bool)

(assert (= bs!1096565 (and d!1496078 d!1496026)))

(assert (=> bs!1096565 (= lambda!210747 lambda!210733)))

(declare-fun bs!1096566 () Bool)

(assert (= bs!1096566 (and d!1496078 d!1496028)))

(assert (=> bs!1096566 (= lambda!210747 lambda!210741)))

(assert (=> d!1496078 (eq!1063 (extractMap!1930 (Cons!52550 (tuple2!54013 hash!405 lt!1866068) (tail!8738 (toList!5698 lt!1866073)))) (-!708 (extractMap!1930 (Cons!52550 (tuple2!54013 hash!405 (t!359889 oldBucket!34)) (tail!8738 (toList!5698 lt!1866073)))) key!4653))))

(declare-fun lt!1866489 () Unit!126492)

(declare-fun choose!32941 (ListLongMap!4227 (_ BitVec 64) List!52673 List!52673 K!13910 Hashable!6273) Unit!126492)

(assert (=> d!1496078 (= lt!1866489 (choose!32941 lt!1866073 hash!405 (t!359889 oldBucket!34) lt!1866068 key!4653 hashF!1323))))

(assert (=> d!1496078 (forall!11411 (toList!5698 lt!1866073) lambda!210747)))

(assert (=> d!1496078 (= (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMapOneHashIsHead!78 lt!1866073 hash!405 (t!359889 oldBucket!34) lt!1866068 key!4653 hashF!1323) lt!1866489)))

(declare-fun bs!1096567 () Bool)

(assert (= bs!1096567 d!1496078))

(declare-fun m!5620461 () Bool)

(assert (=> bs!1096567 m!5620461))

(declare-fun m!5620463 () Bool)

(assert (=> bs!1096567 m!5620463))

(declare-fun m!5620465 () Bool)

(assert (=> bs!1096567 m!5620465))

(declare-fun m!5620467 () Bool)

(assert (=> bs!1096567 m!5620467))

(assert (=> bs!1096567 m!5620463))

(declare-fun m!5620469 () Bool)

(assert (=> bs!1096567 m!5620469))

(declare-fun m!5620471 () Bool)

(assert (=> bs!1096567 m!5620471))

(assert (=> bs!1096567 m!5620461))

(assert (=> bs!1096567 m!5620465))

(declare-fun m!5620473 () Bool)

(assert (=> bs!1096567 m!5620473))

(assert (=> b!4702580 d!1496078))

(declare-fun d!1496080 () Bool)

(assert (=> d!1496080 (= (eq!1063 (extractMap!1930 (Cons!52550 lt!1866081 lt!1866097)) (-!708 (extractMap!1930 (Cons!52550 lt!1866085 lt!1866097)) key!4653)) (= (content!9278 (toList!5697 (extractMap!1930 (Cons!52550 lt!1866081 lt!1866097)))) (content!9278 (toList!5697 (-!708 (extractMap!1930 (Cons!52550 lt!1866085 lt!1866097)) key!4653)))))))

(declare-fun bs!1096568 () Bool)

(assert (= bs!1096568 d!1496080))

(declare-fun m!5620475 () Bool)

(assert (=> bs!1096568 m!5620475))

(declare-fun m!5620477 () Bool)

(assert (=> bs!1096568 m!5620477))

(assert (=> b!4702580 d!1496080))

(declare-fun d!1496082 () Bool)

(assert (=> d!1496082 (= (eq!1063 lt!1866083 lt!1866082) (= (content!9278 (toList!5697 lt!1866083)) (content!9278 (toList!5697 lt!1866082))))))

(declare-fun bs!1096569 () Bool)

(assert (= bs!1096569 d!1496082))

(declare-fun m!5620479 () Bool)

(assert (=> bs!1096569 m!5620479))

(declare-fun m!5620481 () Bool)

(assert (=> bs!1096569 m!5620481))

(assert (=> b!4702580 d!1496082))

(declare-fun d!1496084 () Bool)

(declare-fun e!2933629 () Bool)

(assert (=> d!1496084 e!2933629))

(declare-fun res!1985928 () Bool)

(assert (=> d!1496084 (=> (not res!1985928) (not e!2933629))))

(declare-fun lt!1866516 () ListMap!5061)

(assert (=> d!1496084 (= res!1985928 (not (contains!15840 lt!1866516 key!4653)))))

(declare-fun removePresrvNoDuplicatedKeys!371 (List!52673 K!13910) List!52673)

(assert (=> d!1496084 (= lt!1866516 (ListMap!5062 (removePresrvNoDuplicatedKeys!371 (toList!5697 lt!1866074) key!4653)))))

(assert (=> d!1496084 (= (-!708 lt!1866074 key!4653) lt!1866516)))

(declare-fun b!4702904 () Bool)

(declare-datatypes ((List!52676 0))(
  ( (Nil!52552) (Cons!52552 (h!58839 K!13910) (t!359894 List!52676)) )
))
(declare-fun content!9281 (List!52676) (InoxSet K!13910))

(declare-fun keys!18803 (ListMap!5061) List!52676)

(assert (=> b!4702904 (= e!2933629 (= ((_ map and) (content!9281 (keys!18803 lt!1866074)) ((_ map not) (store ((as const (Array K!13910 Bool)) false) key!4653 true))) (content!9281 (keys!18803 lt!1866516))))))

(assert (= (and d!1496084 res!1985928) b!4702904))

(declare-fun m!5620483 () Bool)

(assert (=> d!1496084 m!5620483))

(declare-fun m!5620485 () Bool)

(assert (=> d!1496084 m!5620485))

(declare-fun m!5620487 () Bool)

(assert (=> b!4702904 m!5620487))

(declare-fun m!5620489 () Bool)

(assert (=> b!4702904 m!5620489))

(assert (=> b!4702904 m!5620487))

(declare-fun m!5620491 () Bool)

(assert (=> b!4702904 m!5620491))

(declare-fun m!5620493 () Bool)

(assert (=> b!4702904 m!5620493))

(assert (=> b!4702904 m!5620493))

(declare-fun m!5620495 () Bool)

(assert (=> b!4702904 m!5620495))

(assert (=> b!4702580 d!1496084))

(declare-fun d!1496086 () Bool)

(declare-fun e!2933630 () Bool)

(assert (=> d!1496086 e!2933630))

(declare-fun res!1985929 () Bool)

(assert (=> d!1496086 (=> (not res!1985929) (not e!2933630))))

(declare-fun lt!1866517 () ListMap!5061)

(assert (=> d!1496086 (= res!1985929 (not (contains!15840 lt!1866517 key!4653)))))

(assert (=> d!1496086 (= lt!1866517 (ListMap!5062 (removePresrvNoDuplicatedKeys!371 (toList!5697 (extractMap!1930 (Cons!52550 lt!1866085 lt!1866097))) key!4653)))))

(assert (=> d!1496086 (= (-!708 (extractMap!1930 (Cons!52550 lt!1866085 lt!1866097)) key!4653) lt!1866517)))

(declare-fun b!4702905 () Bool)

(assert (=> b!4702905 (= e!2933630 (= ((_ map and) (content!9281 (keys!18803 (extractMap!1930 (Cons!52550 lt!1866085 lt!1866097)))) ((_ map not) (store ((as const (Array K!13910 Bool)) false) key!4653 true))) (content!9281 (keys!18803 lt!1866517))))))

(assert (= (and d!1496086 res!1985929) b!4702905))

(declare-fun m!5620497 () Bool)

(assert (=> d!1496086 m!5620497))

(declare-fun m!5620499 () Bool)

(assert (=> d!1496086 m!5620499))

(assert (=> b!4702905 m!5619815))

(declare-fun m!5620501 () Bool)

(assert (=> b!4702905 m!5620501))

(assert (=> b!4702905 m!5620489))

(assert (=> b!4702905 m!5620501))

(declare-fun m!5620503 () Bool)

(assert (=> b!4702905 m!5620503))

(declare-fun m!5620505 () Bool)

(assert (=> b!4702905 m!5620505))

(assert (=> b!4702905 m!5620505))

(declare-fun m!5620507 () Bool)

(assert (=> b!4702905 m!5620507))

(assert (=> b!4702580 d!1496086))

(declare-fun bs!1096578 () Bool)

(declare-fun d!1496088 () Bool)

(assert (= bs!1096578 (and d!1496088 d!1496078)))

(declare-fun lambda!210755 () Int)

(assert (=> bs!1096578 (= lambda!210755 lambda!210747)))

(declare-fun bs!1096579 () Bool)

(assert (= bs!1096579 (and d!1496088 start!477124)))

(assert (=> bs!1096579 (= lambda!210755 lambda!210629)))

(declare-fun bs!1096580 () Bool)

(assert (= bs!1096580 (and d!1496088 d!1496026)))

(assert (=> bs!1096580 (= lambda!210755 lambda!210733)))

(declare-fun bs!1096581 () Bool)

(assert (= bs!1096581 (and d!1496088 d!1496028)))

(assert (=> bs!1096581 (= lambda!210755 lambda!210741)))

(declare-fun bs!1096582 () Bool)

(assert (= bs!1096582 (and d!1496088 d!1495992)))

(assert (=> bs!1096582 (= lambda!210755 lambda!210716)))

(declare-fun lt!1866518 () ListMap!5061)

(assert (=> d!1496088 (invariantList!1450 (toList!5697 lt!1866518))))

(declare-fun e!2933631 () ListMap!5061)

(assert (=> d!1496088 (= lt!1866518 e!2933631)))

(declare-fun c!803834 () Bool)

(assert (=> d!1496088 (= c!803834 ((_ is Cons!52550) (Cons!52550 lt!1866081 (t!359890 (toList!5698 lm!2023)))))))

(assert (=> d!1496088 (forall!11411 (Cons!52550 lt!1866081 (t!359890 (toList!5698 lm!2023))) lambda!210755)))

(assert (=> d!1496088 (= (extractMap!1930 (Cons!52550 lt!1866081 (t!359890 (toList!5698 lm!2023)))) lt!1866518)))

(declare-fun b!4702906 () Bool)

(assert (=> b!4702906 (= e!2933631 (addToMapMapFromBucket!1336 (_2!30300 (h!58835 (Cons!52550 lt!1866081 (t!359890 (toList!5698 lm!2023))))) (extractMap!1930 (t!359890 (Cons!52550 lt!1866081 (t!359890 (toList!5698 lm!2023)))))))))

(declare-fun b!4702907 () Bool)

(assert (=> b!4702907 (= e!2933631 (ListMap!5062 Nil!52549))))

(assert (= (and d!1496088 c!803834) b!4702906))

(assert (= (and d!1496088 (not c!803834)) b!4702907))

(declare-fun m!5620523 () Bool)

(assert (=> d!1496088 m!5620523))

(declare-fun m!5620527 () Bool)

(assert (=> d!1496088 m!5620527))

(declare-fun m!5620531 () Bool)

(assert (=> b!4702906 m!5620531))

(assert (=> b!4702906 m!5620531))

(declare-fun m!5620537 () Bool)

(assert (=> b!4702906 m!5620537))

(assert (=> b!4702580 d!1496088))

(declare-fun bs!1096583 () Bool)

(declare-fun d!1496092 () Bool)

(assert (= bs!1096583 (and d!1496092 d!1496078)))

(declare-fun lambda!210756 () Int)

(assert (=> bs!1096583 (= lambda!210756 lambda!210747)))

(declare-fun bs!1096584 () Bool)

(assert (= bs!1096584 (and d!1496092 d!1496088)))

(assert (=> bs!1096584 (= lambda!210756 lambda!210755)))

(declare-fun bs!1096585 () Bool)

(assert (= bs!1096585 (and d!1496092 start!477124)))

(assert (=> bs!1096585 (= lambda!210756 lambda!210629)))

(declare-fun bs!1096586 () Bool)

(assert (= bs!1096586 (and d!1496092 d!1496026)))

(assert (=> bs!1096586 (= lambda!210756 lambda!210733)))

(declare-fun bs!1096587 () Bool)

(assert (= bs!1096587 (and d!1496092 d!1496028)))

(assert (=> bs!1096587 (= lambda!210756 lambda!210741)))

(declare-fun bs!1096588 () Bool)

(assert (= bs!1096588 (and d!1496092 d!1495992)))

(assert (=> bs!1096588 (= lambda!210756 lambda!210716)))

(declare-fun lt!1866519 () ListMap!5061)

(assert (=> d!1496092 (invariantList!1450 (toList!5697 lt!1866519))))

(declare-fun e!2933632 () ListMap!5061)

(assert (=> d!1496092 (= lt!1866519 e!2933632)))

(declare-fun c!803835 () Bool)

(assert (=> d!1496092 (= c!803835 ((_ is Cons!52550) (Cons!52550 lt!1866081 lt!1866097)))))

(assert (=> d!1496092 (forall!11411 (Cons!52550 lt!1866081 lt!1866097) lambda!210756)))

(assert (=> d!1496092 (= (extractMap!1930 (Cons!52550 lt!1866081 lt!1866097)) lt!1866519)))

(declare-fun b!4702908 () Bool)

(assert (=> b!4702908 (= e!2933632 (addToMapMapFromBucket!1336 (_2!30300 (h!58835 (Cons!52550 lt!1866081 lt!1866097))) (extractMap!1930 (t!359890 (Cons!52550 lt!1866081 lt!1866097)))))))

(declare-fun b!4702909 () Bool)

(assert (=> b!4702909 (= e!2933632 (ListMap!5062 Nil!52549))))

(assert (= (and d!1496092 c!803835) b!4702908))

(assert (= (and d!1496092 (not c!803835)) b!4702909))

(declare-fun m!5620539 () Bool)

(assert (=> d!1496092 m!5620539))

(declare-fun m!5620541 () Bool)

(assert (=> d!1496092 m!5620541))

(declare-fun m!5620543 () Bool)

(assert (=> b!4702908 m!5620543))

(assert (=> b!4702908 m!5620543))

(declare-fun m!5620545 () Bool)

(assert (=> b!4702908 m!5620545))

(assert (=> b!4702580 d!1496092))

(declare-fun d!1496094 () Bool)

(assert (=> d!1496094 (= (tail!8738 lt!1866094) (t!359890 lt!1866094))))

(assert (=> b!4702580 d!1496094))

(declare-fun bs!1096589 () Bool)

(declare-fun d!1496096 () Bool)

(assert (= bs!1096589 (and d!1496096 d!1496078)))

(declare-fun lambda!210757 () Int)

(assert (=> bs!1096589 (= lambda!210757 lambda!210747)))

(declare-fun bs!1096590 () Bool)

(assert (= bs!1096590 (and d!1496096 d!1496092)))

(assert (=> bs!1096590 (= lambda!210757 lambda!210756)))

(declare-fun bs!1096591 () Bool)

(assert (= bs!1096591 (and d!1496096 d!1496088)))

(assert (=> bs!1096591 (= lambda!210757 lambda!210755)))

(declare-fun bs!1096592 () Bool)

(assert (= bs!1096592 (and d!1496096 start!477124)))

(assert (=> bs!1096592 (= lambda!210757 lambda!210629)))

(declare-fun bs!1096593 () Bool)

(assert (= bs!1096593 (and d!1496096 d!1496026)))

(assert (=> bs!1096593 (= lambda!210757 lambda!210733)))

(declare-fun bs!1096594 () Bool)

(assert (= bs!1096594 (and d!1496096 d!1496028)))

(assert (=> bs!1096594 (= lambda!210757 lambda!210741)))

(declare-fun bs!1096595 () Bool)

(assert (= bs!1096595 (and d!1496096 d!1495992)))

(assert (=> bs!1096595 (= lambda!210757 lambda!210716)))

(declare-fun lt!1866522 () ListMap!5061)

(assert (=> d!1496096 (invariantList!1450 (toList!5697 lt!1866522))))

(declare-fun e!2933637 () ListMap!5061)

(assert (=> d!1496096 (= lt!1866522 e!2933637)))

(declare-fun c!803836 () Bool)

(assert (=> d!1496096 (= c!803836 ((_ is Cons!52550) (Cons!52550 lt!1866085 lt!1866097)))))

(assert (=> d!1496096 (forall!11411 (Cons!52550 lt!1866085 lt!1866097) lambda!210757)))

(assert (=> d!1496096 (= (extractMap!1930 (Cons!52550 lt!1866085 lt!1866097)) lt!1866522)))

(declare-fun b!4702914 () Bool)

(assert (=> b!4702914 (= e!2933637 (addToMapMapFromBucket!1336 (_2!30300 (h!58835 (Cons!52550 lt!1866085 lt!1866097))) (extractMap!1930 (t!359890 (Cons!52550 lt!1866085 lt!1866097)))))))

(declare-fun b!4702915 () Bool)

(assert (=> b!4702915 (= e!2933637 (ListMap!5062 Nil!52549))))

(assert (= (and d!1496096 c!803836) b!4702914))

(assert (= (and d!1496096 (not c!803836)) b!4702915))

(declare-fun m!5620547 () Bool)

(assert (=> d!1496096 m!5620547))

(declare-fun m!5620549 () Bool)

(assert (=> d!1496096 m!5620549))

(declare-fun m!5620551 () Bool)

(assert (=> b!4702914 m!5620551))

(assert (=> b!4702914 m!5620551))

(declare-fun m!5620557 () Bool)

(assert (=> b!4702914 m!5620557))

(assert (=> b!4702580 d!1496096))

(declare-fun d!1496098 () Bool)

(declare-fun res!1985940 () Bool)

(declare-fun e!2933644 () Bool)

(assert (=> d!1496098 (=> res!1985940 e!2933644)))

(assert (=> d!1496098 (= res!1985940 ((_ is Nil!52550) (toList!5698 lm!2023)))))

(assert (=> d!1496098 (= (forall!11411 (toList!5698 lm!2023) lambda!210629) e!2933644)))

(declare-fun b!4702922 () Bool)

(declare-fun e!2933645 () Bool)

(assert (=> b!4702922 (= e!2933644 e!2933645)))

(declare-fun res!1985941 () Bool)

(assert (=> b!4702922 (=> (not res!1985941) (not e!2933645))))

(assert (=> b!4702922 (= res!1985941 (dynLambda!21753 lambda!210629 (h!58835 (toList!5698 lm!2023))))))

(declare-fun b!4702923 () Bool)

(assert (=> b!4702923 (= e!2933645 (forall!11411 (t!359890 (toList!5698 lm!2023)) lambda!210629))))

(assert (= (and d!1496098 (not res!1985940)) b!4702922))

(assert (= (and b!4702922 res!1985941) b!4702923))

(declare-fun b_lambda!177437 () Bool)

(assert (=> (not b_lambda!177437) (not b!4702922)))

(declare-fun m!5620563 () Bool)

(assert (=> b!4702922 m!5620563))

(declare-fun m!5620565 () Bool)

(assert (=> b!4702923 m!5620565))

(assert (=> start!477124 d!1496098))

(declare-fun d!1496104 () Bool)

(declare-fun isStrictlySorted!689 (List!52674) Bool)

(assert (=> d!1496104 (= (inv!67784 lm!2023) (isStrictlySorted!689 (toList!5698 lm!2023)))))

(declare-fun bs!1096597 () Bool)

(assert (= bs!1096597 d!1496104))

(declare-fun m!5620579 () Bool)

(assert (=> bs!1096597 m!5620579))

(assert (=> start!477124 d!1496104))

(declare-fun d!1496106 () Bool)

(declare-fun res!1985945 () Bool)

(declare-fun e!2933652 () Bool)

(assert (=> d!1496106 (=> res!1985945 e!2933652)))

(assert (=> d!1496106 (= res!1985945 (not ((_ is Cons!52549) newBucket!218)))))

(assert (=> d!1496106 (= (noDuplicateKeys!1904 newBucket!218) e!2933652)))

(declare-fun b!4702933 () Bool)

(declare-fun e!2933653 () Bool)

(assert (=> b!4702933 (= e!2933652 e!2933653)))

(declare-fun res!1985946 () Bool)

(assert (=> b!4702933 (=> (not res!1985946) (not e!2933653))))

(assert (=> b!4702933 (= res!1985946 (not (containsKey!3183 (t!359889 newBucket!218) (_1!30299 (h!58834 newBucket!218)))))))

(declare-fun b!4702934 () Bool)

(assert (=> b!4702934 (= e!2933653 (noDuplicateKeys!1904 (t!359889 newBucket!218)))))

(assert (= (and d!1496106 (not res!1985945)) b!4702933))

(assert (= (and b!4702933 res!1985946) b!4702934))

(declare-fun m!5620589 () Bool)

(assert (=> b!4702933 m!5620589))

(declare-fun m!5620591 () Bool)

(assert (=> b!4702934 m!5620591))

(assert (=> b!4702579 d!1496106))

(declare-fun bs!1096601 () Bool)

(declare-fun d!1496110 () Bool)

(assert (= bs!1096601 (and d!1496110 b!4702697)))

(declare-fun lambda!210759 () Int)

(assert (=> bs!1096601 (not (= lambda!210759 lambda!210704))))

(declare-fun bs!1096604 () Bool)

(assert (= bs!1096604 (and d!1496110 d!1495998)))

(assert (=> bs!1096604 (= lambda!210759 lambda!210721)))

(declare-fun bs!1096606 () Bool)

(assert (= bs!1096606 (and d!1496110 b!4702699)))

(assert (=> bs!1096606 (not (= lambda!210759 lambda!210706))))

(declare-fun bs!1096608 () Bool)

(assert (= bs!1096608 (and d!1496110 d!1495960)))

(assert (=> bs!1096608 (not (= lambda!210759 lambda!210708))))

(assert (=> bs!1096606 (not (= lambda!210759 lambda!210705))))

(assert (=> d!1496110 true))

(assert (=> d!1496110 true))

(assert (=> d!1496110 (= (allKeysSameHash!1730 newBucket!218 hash!405 hashF!1323) (forall!11413 newBucket!218 lambda!210759))))

(declare-fun bs!1096611 () Bool)

(assert (= bs!1096611 d!1496110))

(declare-fun m!5620593 () Bool)

(assert (=> bs!1096611 m!5620593))

(assert (=> b!4702581 d!1496110))

(declare-fun b!4702958 () Bool)

(declare-fun e!2933674 () Unit!126492)

(declare-fun Unit!126550 () Unit!126492)

(assert (=> b!4702958 (= e!2933674 Unit!126550)))

(declare-fun bm!328789 () Bool)

(declare-fun call!328794 () Bool)

(declare-fun e!2933669 () List!52676)

(declare-fun contains!15843 (List!52676 K!13910) Bool)

(assert (=> bm!328789 (= call!328794 (contains!15843 e!2933669 key!4653))))

(declare-fun c!803848 () Bool)

(declare-fun c!803850 () Bool)

(assert (=> bm!328789 (= c!803848 c!803850)))

(declare-fun b!4702959 () Bool)

(assert (=> b!4702959 false))

(declare-fun lt!1866562 () Unit!126492)

(declare-fun lt!1866561 () Unit!126492)

(assert (=> b!4702959 (= lt!1866562 lt!1866561)))

(declare-fun containsKey!3185 (List!52673 K!13910) Bool)

(assert (=> b!4702959 (containsKey!3185 (toList!5697 lt!1866089) key!4653)))

(declare-fun lemmaInGetKeysListThenContainsKey!888 (List!52673 K!13910) Unit!126492)

(assert (=> b!4702959 (= lt!1866561 (lemmaInGetKeysListThenContainsKey!888 (toList!5697 lt!1866089) key!4653))))

(declare-fun Unit!126551 () Unit!126492)

(assert (=> b!4702959 (= e!2933674 Unit!126551)))

(declare-fun b!4702960 () Bool)

(declare-fun e!2933673 () Bool)

(declare-fun e!2933670 () Bool)

(assert (=> b!4702960 (= e!2933673 e!2933670)))

(declare-fun res!1985955 () Bool)

(assert (=> b!4702960 (=> (not res!1985955) (not e!2933670))))

(declare-fun isDefined!9464 (Option!12210) Bool)

(assert (=> b!4702960 (= res!1985955 (isDefined!9464 (getValueByKey!1860 (toList!5697 lt!1866089) key!4653)))))

(declare-fun b!4702961 () Bool)

(declare-fun e!2933672 () Unit!126492)

(assert (=> b!4702961 (= e!2933672 e!2933674)))

(declare-fun c!803849 () Bool)

(assert (=> b!4702961 (= c!803849 call!328794)))

(declare-fun b!4702962 () Bool)

(declare-fun getKeysList!889 (List!52673) List!52676)

(assert (=> b!4702962 (= e!2933669 (getKeysList!889 (toList!5697 lt!1866089)))))

(declare-fun b!4702963 () Bool)

(declare-fun e!2933671 () Bool)

(assert (=> b!4702963 (= e!2933671 (not (contains!15843 (keys!18803 lt!1866089) key!4653)))))

(declare-fun d!1496112 () Bool)

(assert (=> d!1496112 e!2933673))

(declare-fun res!1985954 () Bool)

(assert (=> d!1496112 (=> res!1985954 e!2933673)))

(assert (=> d!1496112 (= res!1985954 e!2933671)))

(declare-fun res!1985956 () Bool)

(assert (=> d!1496112 (=> (not res!1985956) (not e!2933671))))

(declare-fun lt!1866563 () Bool)

(assert (=> d!1496112 (= res!1985956 (not lt!1866563))))

(declare-fun lt!1866560 () Bool)

(assert (=> d!1496112 (= lt!1866563 lt!1866560)))

(declare-fun lt!1866557 () Unit!126492)

(assert (=> d!1496112 (= lt!1866557 e!2933672)))

(assert (=> d!1496112 (= c!803850 lt!1866560)))

(assert (=> d!1496112 (= lt!1866560 (containsKey!3185 (toList!5697 lt!1866089) key!4653))))

(assert (=> d!1496112 (= (contains!15840 lt!1866089 key!4653) lt!1866563)))

(declare-fun b!4702964 () Bool)

(declare-fun lt!1866559 () Unit!126492)

(assert (=> b!4702964 (= e!2933672 lt!1866559)))

(declare-fun lt!1866556 () Unit!126492)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1751 (List!52673 K!13910) Unit!126492)

(assert (=> b!4702964 (= lt!1866556 (lemmaContainsKeyImpliesGetValueByKeyDefined!1751 (toList!5697 lt!1866089) key!4653))))

(assert (=> b!4702964 (isDefined!9464 (getValueByKey!1860 (toList!5697 lt!1866089) key!4653))))

(declare-fun lt!1866558 () Unit!126492)

(assert (=> b!4702964 (= lt!1866558 lt!1866556)))

(declare-fun lemmaInListThenGetKeysListContains!884 (List!52673 K!13910) Unit!126492)

(assert (=> b!4702964 (= lt!1866559 (lemmaInListThenGetKeysListContains!884 (toList!5697 lt!1866089) key!4653))))

(assert (=> b!4702964 call!328794))

(declare-fun b!4702965 () Bool)

(assert (=> b!4702965 (= e!2933669 (keys!18803 lt!1866089))))

(declare-fun b!4702966 () Bool)

(assert (=> b!4702966 (= e!2933670 (contains!15843 (keys!18803 lt!1866089) key!4653))))

(assert (= (and d!1496112 c!803850) b!4702964))

(assert (= (and d!1496112 (not c!803850)) b!4702961))

(assert (= (and b!4702961 c!803849) b!4702959))

(assert (= (and b!4702961 (not c!803849)) b!4702958))

(assert (= (or b!4702964 b!4702961) bm!328789))

(assert (= (and bm!328789 c!803848) b!4702962))

(assert (= (and bm!328789 (not c!803848)) b!4702965))

(assert (= (and d!1496112 res!1985956) b!4702963))

(assert (= (and d!1496112 (not res!1985954)) b!4702960))

(assert (= (and b!4702960 res!1985955) b!4702966))

(declare-fun m!5620619 () Bool)

(assert (=> b!4702964 m!5620619))

(declare-fun m!5620621 () Bool)

(assert (=> b!4702964 m!5620621))

(assert (=> b!4702964 m!5620621))

(declare-fun m!5620623 () Bool)

(assert (=> b!4702964 m!5620623))

(declare-fun m!5620625 () Bool)

(assert (=> b!4702964 m!5620625))

(declare-fun m!5620627 () Bool)

(assert (=> b!4702962 m!5620627))

(assert (=> b!4702960 m!5620621))

(assert (=> b!4702960 m!5620621))

(assert (=> b!4702960 m!5620623))

(declare-fun m!5620629 () Bool)

(assert (=> b!4702963 m!5620629))

(assert (=> b!4702963 m!5620629))

(declare-fun m!5620631 () Bool)

(assert (=> b!4702963 m!5620631))

(assert (=> b!4702966 m!5620629))

(assert (=> b!4702966 m!5620629))

(assert (=> b!4702966 m!5620631))

(assert (=> b!4702965 m!5620629))

(declare-fun m!5620633 () Bool)

(assert (=> d!1496112 m!5620633))

(assert (=> b!4702959 m!5620633))

(declare-fun m!5620635 () Bool)

(assert (=> b!4702959 m!5620635))

(declare-fun m!5620637 () Bool)

(assert (=> bm!328789 m!5620637))

(assert (=> b!4702570 d!1496112))

(declare-fun bs!1096633 () Bool)

(declare-fun d!1496120 () Bool)

(assert (= bs!1096633 (and d!1496120 d!1496096)))

(declare-fun lambda!210764 () Int)

(assert (=> bs!1096633 (= lambda!210764 lambda!210757)))

(declare-fun bs!1096634 () Bool)

(assert (= bs!1096634 (and d!1496120 d!1496078)))

(assert (=> bs!1096634 (= lambda!210764 lambda!210747)))

(declare-fun bs!1096635 () Bool)

(assert (= bs!1096635 (and d!1496120 d!1496092)))

(assert (=> bs!1096635 (= lambda!210764 lambda!210756)))

(declare-fun bs!1096636 () Bool)

(assert (= bs!1096636 (and d!1496120 d!1496088)))

(assert (=> bs!1096636 (= lambda!210764 lambda!210755)))

(declare-fun bs!1096637 () Bool)

(assert (= bs!1096637 (and d!1496120 start!477124)))

(assert (=> bs!1096637 (= lambda!210764 lambda!210629)))

(declare-fun bs!1096638 () Bool)

(assert (= bs!1096638 (and d!1496120 d!1496026)))

(assert (=> bs!1096638 (= lambda!210764 lambda!210733)))

(declare-fun bs!1096639 () Bool)

(assert (= bs!1096639 (and d!1496120 d!1496028)))

(assert (=> bs!1096639 (= lambda!210764 lambda!210741)))

(declare-fun bs!1096640 () Bool)

(assert (= bs!1096640 (and d!1496120 d!1495992)))

(assert (=> bs!1096640 (= lambda!210764 lambda!210716)))

(declare-fun lt!1866565 () ListMap!5061)

(assert (=> d!1496120 (invariantList!1450 (toList!5697 lt!1866565))))

(declare-fun e!2933675 () ListMap!5061)

(assert (=> d!1496120 (= lt!1866565 e!2933675)))

(declare-fun c!803851 () Bool)

(assert (=> d!1496120 (= c!803851 ((_ is Cons!52550) (toList!5698 lm!2023)))))

(assert (=> d!1496120 (forall!11411 (toList!5698 lm!2023) lambda!210764)))

(assert (=> d!1496120 (= (extractMap!1930 (toList!5698 lm!2023)) lt!1866565)))

(declare-fun b!4702967 () Bool)

(assert (=> b!4702967 (= e!2933675 (addToMapMapFromBucket!1336 (_2!30300 (h!58835 (toList!5698 lm!2023))) (extractMap!1930 (t!359890 (toList!5698 lm!2023)))))))

(declare-fun b!4702968 () Bool)

(assert (=> b!4702968 (= e!2933675 (ListMap!5062 Nil!52549))))

(assert (= (and d!1496120 c!803851) b!4702967))

(assert (= (and d!1496120 (not c!803851)) b!4702968))

(declare-fun m!5620649 () Bool)

(assert (=> d!1496120 m!5620649))

(declare-fun m!5620651 () Bool)

(assert (=> d!1496120 m!5620651))

(assert (=> b!4702967 m!5619845))

(assert (=> b!4702967 m!5619845))

(declare-fun m!5620657 () Bool)

(assert (=> b!4702967 m!5620657))

(assert (=> b!4702570 d!1496120))

(declare-fun d!1496122 () Bool)

(declare-fun e!2933676 () Bool)

(assert (=> d!1496122 e!2933676))

(declare-fun res!1985957 () Bool)

(assert (=> d!1496122 (=> (not res!1985957) (not e!2933676))))

(declare-fun lt!1866568 () ListMap!5061)

(assert (=> d!1496122 (= res!1985957 (contains!15840 lt!1866568 (_1!30299 (h!58834 oldBucket!34))))))

(declare-fun lt!1866567 () List!52673)

(assert (=> d!1496122 (= lt!1866568 (ListMap!5062 lt!1866567))))

(declare-fun lt!1866566 () Unit!126492)

(declare-fun lt!1866569 () Unit!126492)

(assert (=> d!1496122 (= lt!1866566 lt!1866569)))

(assert (=> d!1496122 (= (getValueByKey!1860 lt!1866567 (_1!30299 (h!58834 oldBucket!34))) (Some!12209 (_2!30299 (h!58834 oldBucket!34))))))

(assert (=> d!1496122 (= lt!1866569 (lemmaContainsTupThenGetReturnValue!1040 lt!1866567 (_1!30299 (h!58834 oldBucket!34)) (_2!30299 (h!58834 oldBucket!34))))))

(assert (=> d!1496122 (= lt!1866567 (insertNoDuplicatedKeys!548 (toList!5697 lt!1866074) (_1!30299 (h!58834 oldBucket!34)) (_2!30299 (h!58834 oldBucket!34))))))

(assert (=> d!1496122 (= (+!2188 lt!1866074 (h!58834 oldBucket!34)) lt!1866568)))

(declare-fun b!4702969 () Bool)

(declare-fun res!1985958 () Bool)

(assert (=> b!4702969 (=> (not res!1985958) (not e!2933676))))

(assert (=> b!4702969 (= res!1985958 (= (getValueByKey!1860 (toList!5697 lt!1866568) (_1!30299 (h!58834 oldBucket!34))) (Some!12209 (_2!30299 (h!58834 oldBucket!34)))))))

(declare-fun b!4702970 () Bool)

(assert (=> b!4702970 (= e!2933676 (contains!15842 (toList!5697 lt!1866568) (h!58834 oldBucket!34)))))

(assert (= (and d!1496122 res!1985957) b!4702969))

(assert (= (and b!4702969 res!1985958) b!4702970))

(declare-fun m!5620663 () Bool)

(assert (=> d!1496122 m!5620663))

(declare-fun m!5620665 () Bool)

(assert (=> d!1496122 m!5620665))

(declare-fun m!5620667 () Bool)

(assert (=> d!1496122 m!5620667))

(declare-fun m!5620669 () Bool)

(assert (=> d!1496122 m!5620669))

(declare-fun m!5620671 () Bool)

(assert (=> b!4702969 m!5620671))

(declare-fun m!5620673 () Bool)

(assert (=> b!4702970 m!5620673))

(assert (=> b!4702591 d!1496122))

(declare-fun d!1496128 () Bool)

(declare-fun e!2933678 () Bool)

(assert (=> d!1496128 e!2933678))

(declare-fun res!1985959 () Bool)

(assert (=> d!1496128 (=> (not res!1985959) (not e!2933678))))

(declare-fun lt!1866571 () ListMap!5061)

(assert (=> d!1496128 (= res!1985959 (not (contains!15840 lt!1866571 key!4653)))))

(assert (=> d!1496128 (= lt!1866571 (ListMap!5062 (removePresrvNoDuplicatedKeys!371 (toList!5697 lt!1866076) key!4653)))))

(assert (=> d!1496128 (= (-!708 lt!1866076 key!4653) lt!1866571)))

(declare-fun b!4702973 () Bool)

(assert (=> b!4702973 (= e!2933678 (= ((_ map and) (content!9281 (keys!18803 lt!1866076)) ((_ map not) (store ((as const (Array K!13910 Bool)) false) key!4653 true))) (content!9281 (keys!18803 lt!1866571))))))

(assert (= (and d!1496128 res!1985959) b!4702973))

(declare-fun m!5620675 () Bool)

(assert (=> d!1496128 m!5620675))

(declare-fun m!5620677 () Bool)

(assert (=> d!1496128 m!5620677))

(declare-fun m!5620679 () Bool)

(assert (=> b!4702973 m!5620679))

(assert (=> b!4702973 m!5620489))

(assert (=> b!4702973 m!5620679))

(declare-fun m!5620681 () Bool)

(assert (=> b!4702973 m!5620681))

(declare-fun m!5620683 () Bool)

(assert (=> b!4702973 m!5620683))

(assert (=> b!4702973 m!5620683))

(declare-fun m!5620685 () Bool)

(assert (=> b!4702973 m!5620685))

(assert (=> b!4702591 d!1496128))

(declare-fun d!1496130 () Bool)

(declare-fun e!2933679 () Bool)

(assert (=> d!1496130 e!2933679))

(declare-fun res!1985960 () Bool)

(assert (=> d!1496130 (=> (not res!1985960) (not e!2933679))))

(declare-fun lt!1866572 () ListMap!5061)

(assert (=> d!1496130 (= res!1985960 (not (contains!15840 lt!1866572 key!4653)))))

(assert (=> d!1496130 (= lt!1866572 (ListMap!5062 (removePresrvNoDuplicatedKeys!371 (toList!5697 (+!2188 lt!1866074 (h!58834 oldBucket!34))) key!4653)))))

(assert (=> d!1496130 (= (-!708 (+!2188 lt!1866074 (h!58834 oldBucket!34)) key!4653) lt!1866572)))

(declare-fun b!4702974 () Bool)

(assert (=> b!4702974 (= e!2933679 (= ((_ map and) (content!9281 (keys!18803 (+!2188 lt!1866074 (h!58834 oldBucket!34)))) ((_ map not) (store ((as const (Array K!13910 Bool)) false) key!4653 true))) (content!9281 (keys!18803 lt!1866572))))))

(assert (= (and d!1496130 res!1985960) b!4702974))

(declare-fun m!5620687 () Bool)

(assert (=> d!1496130 m!5620687))

(declare-fun m!5620689 () Bool)

(assert (=> d!1496130 m!5620689))

(assert (=> b!4702974 m!5619803))

(declare-fun m!5620691 () Bool)

(assert (=> b!4702974 m!5620691))

(assert (=> b!4702974 m!5620489))

(assert (=> b!4702974 m!5620691))

(declare-fun m!5620693 () Bool)

(assert (=> b!4702974 m!5620693))

(declare-fun m!5620695 () Bool)

(assert (=> b!4702974 m!5620695))

(assert (=> b!4702974 m!5620695))

(declare-fun m!5620697 () Bool)

(assert (=> b!4702974 m!5620697))

(assert (=> b!4702591 d!1496130))

(declare-fun d!1496132 () Bool)

(assert (=> d!1496132 (= (-!708 (+!2188 lt!1866074 (tuple2!54011 (_1!30299 (h!58834 oldBucket!34)) (_2!30299 (h!58834 oldBucket!34)))) key!4653) (+!2188 (-!708 lt!1866074 key!4653) (tuple2!54011 (_1!30299 (h!58834 oldBucket!34)) (_2!30299 (h!58834 oldBucket!34)))))))

(declare-fun lt!1866579 () Unit!126492)

(declare-fun choose!32942 (ListMap!5061 K!13910 V!14156 K!13910) Unit!126492)

(assert (=> d!1496132 (= lt!1866579 (choose!32942 lt!1866074 (_1!30299 (h!58834 oldBucket!34)) (_2!30299 (h!58834 oldBucket!34)) key!4653))))

(assert (=> d!1496132 (not (= (_1!30299 (h!58834 oldBucket!34)) key!4653))))

(assert (=> d!1496132 (= (addRemoveCommutativeForDiffKeys!109 lt!1866074 (_1!30299 (h!58834 oldBucket!34)) (_2!30299 (h!58834 oldBucket!34)) key!4653) lt!1866579)))

(declare-fun bs!1096669 () Bool)

(assert (= bs!1096669 d!1496132))

(assert (=> bs!1096669 m!5619829))

(declare-fun m!5620755 () Bool)

(assert (=> bs!1096669 m!5620755))

(assert (=> bs!1096669 m!5619829))

(declare-fun m!5620757 () Bool)

(assert (=> bs!1096669 m!5620757))

(declare-fun m!5620759 () Bool)

(assert (=> bs!1096669 m!5620759))

(declare-fun m!5620761 () Bool)

(assert (=> bs!1096669 m!5620761))

(assert (=> bs!1096669 m!5620759))

(assert (=> b!4702591 d!1496132))

(declare-fun d!1496148 () Bool)

(declare-fun e!2933684 () Bool)

(assert (=> d!1496148 e!2933684))

(declare-fun res!1985964 () Bool)

(assert (=> d!1496148 (=> (not res!1985964) (not e!2933684))))

(declare-fun lt!1866582 () ListMap!5061)

(assert (=> d!1496148 (= res!1985964 (contains!15840 lt!1866582 (_1!30299 (h!58834 oldBucket!34))))))

(declare-fun lt!1866581 () List!52673)

(assert (=> d!1496148 (= lt!1866582 (ListMap!5062 lt!1866581))))

(declare-fun lt!1866580 () Unit!126492)

(declare-fun lt!1866583 () Unit!126492)

(assert (=> d!1496148 (= lt!1866580 lt!1866583)))

(assert (=> d!1496148 (= (getValueByKey!1860 lt!1866581 (_1!30299 (h!58834 oldBucket!34))) (Some!12209 (_2!30299 (h!58834 oldBucket!34))))))

(assert (=> d!1496148 (= lt!1866583 (lemmaContainsTupThenGetReturnValue!1040 lt!1866581 (_1!30299 (h!58834 oldBucket!34)) (_2!30299 (h!58834 oldBucket!34))))))

(assert (=> d!1496148 (= lt!1866581 (insertNoDuplicatedKeys!548 (toList!5697 lt!1866082) (_1!30299 (h!58834 oldBucket!34)) (_2!30299 (h!58834 oldBucket!34))))))

(assert (=> d!1496148 (= (+!2188 lt!1866082 (h!58834 oldBucket!34)) lt!1866582)))

(declare-fun b!4702980 () Bool)

(declare-fun res!1985965 () Bool)

(assert (=> b!4702980 (=> (not res!1985965) (not e!2933684))))

(assert (=> b!4702980 (= res!1985965 (= (getValueByKey!1860 (toList!5697 lt!1866582) (_1!30299 (h!58834 oldBucket!34))) (Some!12209 (_2!30299 (h!58834 oldBucket!34)))))))

(declare-fun b!4702981 () Bool)

(assert (=> b!4702981 (= e!2933684 (contains!15842 (toList!5697 lt!1866582) (h!58834 oldBucket!34)))))

(assert (= (and d!1496148 res!1985964) b!4702980))

(assert (= (and b!4702980 res!1985965) b!4702981))

(declare-fun m!5620763 () Bool)

(assert (=> d!1496148 m!5620763))

(declare-fun m!5620765 () Bool)

(assert (=> d!1496148 m!5620765))

(declare-fun m!5620767 () Bool)

(assert (=> d!1496148 m!5620767))

(declare-fun m!5620769 () Bool)

(assert (=> d!1496148 m!5620769))

(declare-fun m!5620771 () Bool)

(assert (=> b!4702980 m!5620771))

(declare-fun m!5620773 () Bool)

(assert (=> b!4702981 m!5620773))

(assert (=> b!4702591 d!1496148))

(declare-fun bs!1096670 () Bool)

(declare-fun d!1496150 () Bool)

(assert (= bs!1096670 (and d!1496150 d!1496096)))

(declare-fun lambda!210769 () Int)

(assert (=> bs!1096670 (not (= lambda!210769 lambda!210757))))

(declare-fun bs!1096671 () Bool)

(assert (= bs!1096671 (and d!1496150 d!1496078)))

(assert (=> bs!1096671 (not (= lambda!210769 lambda!210747))))

(declare-fun bs!1096672 () Bool)

(assert (= bs!1096672 (and d!1496150 d!1496092)))

(assert (=> bs!1096672 (not (= lambda!210769 lambda!210756))))

(declare-fun bs!1096673 () Bool)

(assert (= bs!1096673 (and d!1496150 d!1496088)))

(assert (=> bs!1096673 (not (= lambda!210769 lambda!210755))))

(declare-fun bs!1096674 () Bool)

(assert (= bs!1096674 (and d!1496150 start!477124)))

(assert (=> bs!1096674 (not (= lambda!210769 lambda!210629))))

(declare-fun bs!1096675 () Bool)

(assert (= bs!1096675 (and d!1496150 d!1496026)))

(assert (=> bs!1096675 (not (= lambda!210769 lambda!210733))))

(declare-fun bs!1096676 () Bool)

(assert (= bs!1096676 (and d!1496150 d!1496120)))

(assert (=> bs!1096676 (not (= lambda!210769 lambda!210764))))

(declare-fun bs!1096677 () Bool)

(assert (= bs!1096677 (and d!1496150 d!1496028)))

(assert (=> bs!1096677 (not (= lambda!210769 lambda!210741))))

(declare-fun bs!1096678 () Bool)

(assert (= bs!1096678 (and d!1496150 d!1495992)))

(assert (=> bs!1096678 (not (= lambda!210769 lambda!210716))))

(assert (=> d!1496150 true))

(assert (=> d!1496150 (= (allKeysSameHashInMap!1818 lm!2023 hashF!1323) (forall!11411 (toList!5698 lm!2023) lambda!210769))))

(declare-fun bs!1096679 () Bool)

(assert (= bs!1096679 d!1496150))

(declare-fun m!5620775 () Bool)

(assert (=> bs!1096679 m!5620775))

(assert (=> b!4702571 d!1496150))

(declare-fun d!1496152 () Bool)

(declare-fun hash!4192 (Hashable!6273 K!13910) (_ BitVec 64))

(assert (=> d!1496152 (= (hash!4188 hashF!1323 key!4653) (hash!4192 hashF!1323 key!4653))))

(declare-fun bs!1096681 () Bool)

(assert (= bs!1096681 d!1496152))

(declare-fun m!5620785 () Bool)

(assert (=> bs!1096681 m!5620785))

(assert (=> b!4702584 d!1496152))

(declare-fun b!4702987 () Bool)

(declare-fun e!2933687 () List!52673)

(declare-fun e!2933686 () List!52673)

(assert (=> b!4702987 (= e!2933687 e!2933686)))

(declare-fun c!803855 () Bool)

(assert (=> b!4702987 (= c!803855 ((_ is Cons!52549) (t!359889 oldBucket!34)))))

(declare-fun b!4702988 () Bool)

(assert (=> b!4702988 (= e!2933686 (Cons!52549 (h!58834 (t!359889 oldBucket!34)) (removePairForKey!1499 (t!359889 (t!359889 oldBucket!34)) key!4653)))))

(declare-fun d!1496156 () Bool)

(declare-fun lt!1866591 () List!52673)

(assert (=> d!1496156 (not (containsKey!3183 lt!1866591 key!4653))))

(assert (=> d!1496156 (= lt!1866591 e!2933687)))

(declare-fun c!803854 () Bool)

(assert (=> d!1496156 (= c!803854 (and ((_ is Cons!52549) (t!359889 oldBucket!34)) (= (_1!30299 (h!58834 (t!359889 oldBucket!34))) key!4653)))))

(assert (=> d!1496156 (noDuplicateKeys!1904 (t!359889 oldBucket!34))))

(assert (=> d!1496156 (= (removePairForKey!1499 (t!359889 oldBucket!34) key!4653) lt!1866591)))

(declare-fun b!4702986 () Bool)

(assert (=> b!4702986 (= e!2933687 (t!359889 (t!359889 oldBucket!34)))))

(declare-fun b!4702989 () Bool)

(assert (=> b!4702989 (= e!2933686 Nil!52549)))

(assert (= (and d!1496156 c!803854) b!4702986))

(assert (= (and d!1496156 (not c!803854)) b!4702987))

(assert (= (and b!4702987 c!803855) b!4702988))

(assert (= (and b!4702987 (not c!803855)) b!4702989))

(declare-fun m!5620799 () Bool)

(assert (=> b!4702988 m!5620799))

(declare-fun m!5620801 () Bool)

(assert (=> d!1496156 m!5620801))

(assert (=> d!1496156 m!5620445))

(assert (=> b!4702573 d!1496156))

(declare-fun d!1496160 () Bool)

(declare-fun res!1985970 () Bool)

(declare-fun e!2933689 () Bool)

(assert (=> d!1496160 (=> res!1985970 e!2933689)))

(assert (=> d!1496160 (= res!1985970 ((_ is Nil!52550) lt!1866100))))

(assert (=> d!1496160 (= (forall!11411 lt!1866100 lambda!210629) e!2933689)))

(declare-fun b!4702992 () Bool)

(declare-fun e!2933690 () Bool)

(assert (=> b!4702992 (= e!2933689 e!2933690)))

(declare-fun res!1985971 () Bool)

(assert (=> b!4702992 (=> (not res!1985971) (not e!2933690))))

(assert (=> b!4702992 (= res!1985971 (dynLambda!21753 lambda!210629 (h!58835 lt!1866100)))))

(declare-fun b!4702993 () Bool)

(assert (=> b!4702993 (= e!2933690 (forall!11411 (t!359890 lt!1866100) lambda!210629))))

(assert (= (and d!1496160 (not res!1985970)) b!4702992))

(assert (= (and b!4702992 res!1985971) b!4702993))

(declare-fun b_lambda!177439 () Bool)

(assert (=> (not b_lambda!177439) (not b!4702992)))

(declare-fun m!5620811 () Bool)

(assert (=> b!4702992 m!5620811))

(declare-fun m!5620815 () Bool)

(assert (=> b!4702993 m!5620815))

(assert (=> b!4702583 d!1496160))

(declare-fun d!1496162 () Bool)

(assert (=> d!1496162 (= (eq!1063 lt!1866072 (-!708 lt!1866078 key!4653)) (= (content!9278 (toList!5697 lt!1866072)) (content!9278 (toList!5697 (-!708 lt!1866078 key!4653)))))))

(declare-fun bs!1096682 () Bool)

(assert (= bs!1096682 d!1496162))

(declare-fun m!5620819 () Bool)

(assert (=> bs!1096682 m!5620819))

(declare-fun m!5620821 () Bool)

(assert (=> bs!1096682 m!5620821))

(assert (=> b!4702583 d!1496162))

(declare-fun d!1496164 () Bool)

(declare-fun e!2933691 () Bool)

(assert (=> d!1496164 e!2933691))

(declare-fun res!1985972 () Bool)

(assert (=> d!1496164 (=> (not res!1985972) (not e!2933691))))

(declare-fun lt!1866596 () ListMap!5061)

(assert (=> d!1496164 (= res!1985972 (not (contains!15840 lt!1866596 key!4653)))))

(assert (=> d!1496164 (= lt!1866596 (ListMap!5062 (removePresrvNoDuplicatedKeys!371 (toList!5697 lt!1866078) key!4653)))))

(assert (=> d!1496164 (= (-!708 lt!1866078 key!4653) lt!1866596)))

(declare-fun b!4702994 () Bool)

(assert (=> b!4702994 (= e!2933691 (= ((_ map and) (content!9281 (keys!18803 lt!1866078)) ((_ map not) (store ((as const (Array K!13910 Bool)) false) key!4653 true))) (content!9281 (keys!18803 lt!1866596))))))

(assert (= (and d!1496164 res!1985972) b!4702994))

(declare-fun m!5620823 () Bool)

(assert (=> d!1496164 m!5620823))

(declare-fun m!5620825 () Bool)

(assert (=> d!1496164 m!5620825))

(declare-fun m!5620827 () Bool)

(assert (=> b!4702994 m!5620827))

(assert (=> b!4702994 m!5620489))

(assert (=> b!4702994 m!5620827))

(declare-fun m!5620829 () Bool)

(assert (=> b!4702994 m!5620829))

(declare-fun m!5620831 () Bool)

(assert (=> b!4702994 m!5620831))

(assert (=> b!4702994 m!5620831))

(declare-fun m!5620833 () Bool)

(assert (=> b!4702994 m!5620833))

(assert (=> b!4702583 d!1496164))

(declare-fun d!1496166 () Bool)

(assert (=> d!1496166 (eq!1063 (-!708 lt!1866076 key!4653) (-!708 lt!1866078 key!4653))))

(declare-fun lt!1866599 () Unit!126492)

(declare-fun choose!32943 (ListMap!5061 ListMap!5061 K!13910) Unit!126492)

(assert (=> d!1496166 (= lt!1866599 (choose!32943 lt!1866076 lt!1866078 key!4653))))

(assert (=> d!1496166 (eq!1063 lt!1866076 lt!1866078)))

(assert (=> d!1496166 (= (lemmaRemovePreservesEq!90 lt!1866076 lt!1866078 key!4653) lt!1866599)))

(declare-fun bs!1096686 () Bool)

(assert (= bs!1096686 d!1496166))

(assert (=> bs!1096686 m!5619807))

(assert (=> bs!1096686 m!5619795))

(declare-fun m!5620839 () Bool)

(assert (=> bs!1096686 m!5620839))

(declare-fun m!5620841 () Bool)

(assert (=> bs!1096686 m!5620841))

(assert (=> bs!1096686 m!5619807))

(assert (=> bs!1096686 m!5619795))

(assert (=> bs!1096686 m!5619855))

(assert (=> b!4702583 d!1496166))

(declare-fun d!1496174 () Bool)

(assert (=> d!1496174 (eq!1063 (addToMapMapFromBucket!1336 (Cons!52549 lt!1866075 lt!1866068) lt!1866071) (+!2188 (addToMapMapFromBucket!1336 lt!1866068 lt!1866071) lt!1866075))))

(declare-fun lt!1866602 () Unit!126492)

(declare-fun choose!32944 (tuple2!54010 List!52673 ListMap!5061) Unit!126492)

(assert (=> d!1496174 (= lt!1866602 (choose!32944 lt!1866075 lt!1866068 lt!1866071))))

(assert (=> d!1496174 (noDuplicateKeys!1904 lt!1866068)))

(assert (=> d!1496174 (= (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!312 lt!1866075 lt!1866068 lt!1866071) lt!1866602)))

(declare-fun bs!1096687 () Bool)

(assert (= bs!1096687 d!1496174))

(assert (=> bs!1096687 m!5619761))

(declare-fun m!5620843 () Bool)

(assert (=> bs!1096687 m!5620843))

(assert (=> bs!1096687 m!5619747))

(assert (=> bs!1096687 m!5619747))

(assert (=> bs!1096687 m!5619757))

(assert (=> bs!1096687 m!5619759))

(declare-fun m!5620845 () Bool)

(assert (=> bs!1096687 m!5620845))

(assert (=> bs!1096687 m!5619761))

(assert (=> bs!1096687 m!5619757))

(assert (=> b!4702585 d!1496174))

(declare-fun d!1496176 () Bool)

(assert (=> d!1496176 (= (eq!1063 lt!1866078 (+!2188 lt!1866070 (h!58834 oldBucket!34))) (= (content!9278 (toList!5697 lt!1866078)) (content!9278 (toList!5697 (+!2188 lt!1866070 (h!58834 oldBucket!34))))))))

(declare-fun bs!1096688 () Bool)

(assert (= bs!1096688 d!1496176))

(assert (=> bs!1096688 m!5619961))

(declare-fun m!5620847 () Bool)

(assert (=> bs!1096688 m!5620847))

(assert (=> b!4702585 d!1496176))

(declare-fun d!1496178 () Bool)

(declare-fun e!2933699 () Bool)

(assert (=> d!1496178 e!2933699))

(declare-fun res!1985973 () Bool)

(assert (=> d!1496178 (=> (not res!1985973) (not e!2933699))))

(declare-fun lt!1866605 () ListMap!5061)

(assert (=> d!1496178 (= res!1985973 (contains!15840 lt!1866605 (_1!30299 lt!1866093)))))

(declare-fun lt!1866604 () List!52673)

(assert (=> d!1496178 (= lt!1866605 (ListMap!5062 lt!1866604))))

(declare-fun lt!1866603 () Unit!126492)

(declare-fun lt!1866606 () Unit!126492)

(assert (=> d!1496178 (= lt!1866603 lt!1866606)))

(assert (=> d!1496178 (= (getValueByKey!1860 lt!1866604 (_1!30299 lt!1866093)) (Some!12209 (_2!30299 lt!1866093)))))

(assert (=> d!1496178 (= lt!1866606 (lemmaContainsTupThenGetReturnValue!1040 lt!1866604 (_1!30299 lt!1866093) (_2!30299 lt!1866093)))))

(assert (=> d!1496178 (= lt!1866604 (insertNoDuplicatedKeys!548 (toList!5697 (addToMapMapFromBucket!1336 lt!1866088 lt!1866071)) (_1!30299 lt!1866093) (_2!30299 lt!1866093)))))

(assert (=> d!1496178 (= (+!2188 (addToMapMapFromBucket!1336 lt!1866088 lt!1866071) lt!1866093) lt!1866605)))

(declare-fun b!4703006 () Bool)

(declare-fun res!1985974 () Bool)

(assert (=> b!4703006 (=> (not res!1985974) (not e!2933699))))

(assert (=> b!4703006 (= res!1985974 (= (getValueByKey!1860 (toList!5697 lt!1866605) (_1!30299 lt!1866093)) (Some!12209 (_2!30299 lt!1866093))))))

(declare-fun b!4703007 () Bool)

(assert (=> b!4703007 (= e!2933699 (contains!15842 (toList!5697 lt!1866605) lt!1866093))))

(assert (= (and d!1496178 res!1985973) b!4703006))

(assert (= (and b!4703006 res!1985974) b!4703007))

(declare-fun m!5620849 () Bool)

(assert (=> d!1496178 m!5620849))

(declare-fun m!5620851 () Bool)

(assert (=> d!1496178 m!5620851))

(declare-fun m!5620853 () Bool)

(assert (=> d!1496178 m!5620853))

(declare-fun m!5620855 () Bool)

(assert (=> d!1496178 m!5620855))

(declare-fun m!5620857 () Bool)

(assert (=> b!4703006 m!5620857))

(declare-fun m!5620859 () Bool)

(assert (=> b!4703007 m!5620859))

(assert (=> b!4702585 d!1496178))

(declare-fun bs!1096689 () Bool)

(declare-fun b!4703010 () Bool)

(assert (= bs!1096689 (and b!4703010 b!4702697)))

(declare-fun lambda!210770 () Int)

(assert (=> bs!1096689 (= lambda!210770 lambda!210704)))

(declare-fun bs!1096690 () Bool)

(assert (= bs!1096690 (and b!4703010 d!1495998)))

(assert (=> bs!1096690 (not (= lambda!210770 lambda!210721))))

(declare-fun bs!1096691 () Bool)

(assert (= bs!1096691 (and b!4703010 b!4702699)))

(assert (=> bs!1096691 (= (= lt!1866071 lt!1866275) (= lambda!210770 lambda!210706))))

(declare-fun bs!1096692 () Bool)

(assert (= bs!1096692 (and b!4703010 d!1495960)))

(assert (=> bs!1096692 (= (= lt!1866071 lt!1866279) (= lambda!210770 lambda!210708))))

(declare-fun bs!1096693 () Bool)

(assert (= bs!1096693 (and b!4703010 d!1496110)))

(assert (=> bs!1096693 (not (= lambda!210770 lambda!210759))))

(assert (=> bs!1096691 (= lambda!210770 lambda!210705)))

(assert (=> b!4703010 true))

(declare-fun bs!1096694 () Bool)

(declare-fun b!4703012 () Bool)

(assert (= bs!1096694 (and b!4703012 b!4703010)))

(declare-fun lambda!210771 () Int)

(assert (=> bs!1096694 (= lambda!210771 lambda!210770)))

(declare-fun bs!1096695 () Bool)

(assert (= bs!1096695 (and b!4703012 b!4702697)))

(assert (=> bs!1096695 (= lambda!210771 lambda!210704)))

(declare-fun bs!1096696 () Bool)

(assert (= bs!1096696 (and b!4703012 d!1495998)))

(assert (=> bs!1096696 (not (= lambda!210771 lambda!210721))))

(declare-fun bs!1096697 () Bool)

(assert (= bs!1096697 (and b!4703012 b!4702699)))

(assert (=> bs!1096697 (= (= lt!1866071 lt!1866275) (= lambda!210771 lambda!210706))))

(declare-fun bs!1096698 () Bool)

(assert (= bs!1096698 (and b!4703012 d!1495960)))

(assert (=> bs!1096698 (= (= lt!1866071 lt!1866279) (= lambda!210771 lambda!210708))))

(declare-fun bs!1096699 () Bool)

(assert (= bs!1096699 (and b!4703012 d!1496110)))

(assert (=> bs!1096699 (not (= lambda!210771 lambda!210759))))

(assert (=> bs!1096697 (= lambda!210771 lambda!210705)))

(assert (=> b!4703012 true))

(declare-fun lambda!210772 () Int)

(declare-fun lt!1866616 () ListMap!5061)

(assert (=> bs!1096694 (= (= lt!1866616 lt!1866071) (= lambda!210772 lambda!210770))))

(assert (=> bs!1096695 (= (= lt!1866616 lt!1866071) (= lambda!210772 lambda!210704))))

(assert (=> bs!1096696 (not (= lambda!210772 lambda!210721))))

(assert (=> b!4703012 (= (= lt!1866616 lt!1866071) (= lambda!210772 lambda!210771))))

(assert (=> bs!1096697 (= (= lt!1866616 lt!1866275) (= lambda!210772 lambda!210706))))

(assert (=> bs!1096698 (= (= lt!1866616 lt!1866279) (= lambda!210772 lambda!210708))))

(assert (=> bs!1096699 (not (= lambda!210772 lambda!210759))))

(assert (=> bs!1096697 (= (= lt!1866616 lt!1866071) (= lambda!210772 lambda!210705))))

(assert (=> b!4703012 true))

(declare-fun bs!1096700 () Bool)

(declare-fun d!1496180 () Bool)

(assert (= bs!1096700 (and d!1496180 b!4703010)))

(declare-fun lt!1866620 () ListMap!5061)

(declare-fun lambda!210773 () Int)

(assert (=> bs!1096700 (= (= lt!1866620 lt!1866071) (= lambda!210773 lambda!210770))))

(declare-fun bs!1096701 () Bool)

(assert (= bs!1096701 (and d!1496180 b!4703012)))

(assert (=> bs!1096701 (= (= lt!1866620 lt!1866616) (= lambda!210773 lambda!210772))))

(declare-fun bs!1096702 () Bool)

(assert (= bs!1096702 (and d!1496180 b!4702697)))

(assert (=> bs!1096702 (= (= lt!1866620 lt!1866071) (= lambda!210773 lambda!210704))))

(declare-fun bs!1096703 () Bool)

(assert (= bs!1096703 (and d!1496180 d!1495998)))

(assert (=> bs!1096703 (not (= lambda!210773 lambda!210721))))

(assert (=> bs!1096701 (= (= lt!1866620 lt!1866071) (= lambda!210773 lambda!210771))))

(declare-fun bs!1096704 () Bool)

(assert (= bs!1096704 (and d!1496180 b!4702699)))

(assert (=> bs!1096704 (= (= lt!1866620 lt!1866275) (= lambda!210773 lambda!210706))))

(declare-fun bs!1096705 () Bool)

(assert (= bs!1096705 (and d!1496180 d!1495960)))

(assert (=> bs!1096705 (= (= lt!1866620 lt!1866279) (= lambda!210773 lambda!210708))))

(declare-fun bs!1096706 () Bool)

(assert (= bs!1096706 (and d!1496180 d!1496110)))

(assert (=> bs!1096706 (not (= lambda!210773 lambda!210759))))

(assert (=> bs!1096704 (= (= lt!1866620 lt!1866071) (= lambda!210773 lambda!210705))))

(assert (=> d!1496180 true))

(declare-fun b!4703008 () Bool)

(declare-fun res!1985976 () Bool)

(declare-fun e!2933700 () Bool)

(assert (=> b!4703008 (=> (not res!1985976) (not e!2933700))))

(assert (=> b!4703008 (= res!1985976 (forall!11413 (toList!5697 lt!1866071) lambda!210773))))

(declare-fun bm!328790 () Bool)

(declare-fun call!328796 () Unit!126492)

(assert (=> bm!328790 (= call!328796 (lemmaContainsAllItsOwnKeys!738 lt!1866071))))

(declare-fun c!803856 () Bool)

(declare-fun call!328797 () Bool)

(declare-fun bm!328791 () Bool)

(declare-fun lt!1866610 () ListMap!5061)

(assert (=> bm!328791 (= call!328797 (forall!11413 (ite c!803856 (toList!5697 lt!1866071) (toList!5697 lt!1866610)) (ite c!803856 lambda!210770 lambda!210772)))))

(assert (=> d!1496180 e!2933700))

(declare-fun res!1985977 () Bool)

(assert (=> d!1496180 (=> (not res!1985977) (not e!2933700))))

(assert (=> d!1496180 (= res!1985977 (forall!11413 lt!1866088 lambda!210773))))

(declare-fun e!2933701 () ListMap!5061)

(assert (=> d!1496180 (= lt!1866620 e!2933701)))

(assert (=> d!1496180 (= c!803856 ((_ is Nil!52549) lt!1866088))))

(assert (=> d!1496180 (noDuplicateKeys!1904 lt!1866088)))

(assert (=> d!1496180 (= (addToMapMapFromBucket!1336 lt!1866088 lt!1866071) lt!1866620)))

(declare-fun b!4703009 () Bool)

(assert (=> b!4703009 (= e!2933700 (invariantList!1450 (toList!5697 lt!1866620)))))

(declare-fun call!328795 () Bool)

(declare-fun bm!328792 () Bool)

(assert (=> bm!328792 (= call!328795 (forall!11413 (ite c!803856 (toList!5697 lt!1866071) lt!1866088) (ite c!803856 lambda!210770 lambda!210772)))))

(assert (=> b!4703010 (= e!2933701 lt!1866071)))

(declare-fun lt!1866622 () Unit!126492)

(assert (=> b!4703010 (= lt!1866622 call!328796)))

(assert (=> b!4703010 call!328797))

(declare-fun lt!1866614 () Unit!126492)

(assert (=> b!4703010 (= lt!1866614 lt!1866622)))

(assert (=> b!4703010 call!328795))

(declare-fun lt!1866611 () Unit!126492)

(declare-fun Unit!126565 () Unit!126492)

(assert (=> b!4703010 (= lt!1866611 Unit!126565)))

(declare-fun b!4703011 () Bool)

(declare-fun e!2933702 () Bool)

(assert (=> b!4703011 (= e!2933702 (forall!11413 (toList!5697 lt!1866071) lambda!210772))))

(assert (=> b!4703012 (= e!2933701 lt!1866616)))

(assert (=> b!4703012 (= lt!1866610 (+!2188 lt!1866071 (h!58834 lt!1866088)))))

(assert (=> b!4703012 (= lt!1866616 (addToMapMapFromBucket!1336 (t!359889 lt!1866088) (+!2188 lt!1866071 (h!58834 lt!1866088))))))

(declare-fun lt!1866626 () Unit!126492)

(assert (=> b!4703012 (= lt!1866626 call!328796)))

(assert (=> b!4703012 (forall!11413 (toList!5697 lt!1866071) lambda!210771)))

(declare-fun lt!1866607 () Unit!126492)

(assert (=> b!4703012 (= lt!1866607 lt!1866626)))

(assert (=> b!4703012 call!328797))

(declare-fun lt!1866619 () Unit!126492)

(declare-fun Unit!126566 () Unit!126492)

(assert (=> b!4703012 (= lt!1866619 Unit!126566)))

(assert (=> b!4703012 (forall!11413 (t!359889 lt!1866088) lambda!210772)))

(declare-fun lt!1866618 () Unit!126492)

(declare-fun Unit!126567 () Unit!126492)

(assert (=> b!4703012 (= lt!1866618 Unit!126567)))

(declare-fun lt!1866621 () Unit!126492)

(declare-fun Unit!126568 () Unit!126492)

(assert (=> b!4703012 (= lt!1866621 Unit!126568)))

(declare-fun lt!1866627 () Unit!126492)

(assert (=> b!4703012 (= lt!1866627 (forallContained!3520 (toList!5697 lt!1866610) lambda!210772 (h!58834 lt!1866088)))))

(assert (=> b!4703012 (contains!15840 lt!1866610 (_1!30299 (h!58834 lt!1866088)))))

(declare-fun lt!1866617 () Unit!126492)

(declare-fun Unit!126569 () Unit!126492)

(assert (=> b!4703012 (= lt!1866617 Unit!126569)))

(assert (=> b!4703012 (contains!15840 lt!1866616 (_1!30299 (h!58834 lt!1866088)))))

(declare-fun lt!1866625 () Unit!126492)

(declare-fun Unit!126570 () Unit!126492)

(assert (=> b!4703012 (= lt!1866625 Unit!126570)))

(assert (=> b!4703012 (forall!11413 lt!1866088 lambda!210772)))

(declare-fun lt!1866612 () Unit!126492)

(declare-fun Unit!126571 () Unit!126492)

(assert (=> b!4703012 (= lt!1866612 Unit!126571)))

(assert (=> b!4703012 (forall!11413 (toList!5697 lt!1866610) lambda!210772)))

(declare-fun lt!1866624 () Unit!126492)

(declare-fun Unit!126572 () Unit!126492)

(assert (=> b!4703012 (= lt!1866624 Unit!126572)))

(declare-fun lt!1866623 () Unit!126492)

(declare-fun Unit!126573 () Unit!126492)

(assert (=> b!4703012 (= lt!1866623 Unit!126573)))

(declare-fun lt!1866613 () Unit!126492)

(assert (=> b!4703012 (= lt!1866613 (addForallContainsKeyThenBeforeAdding!737 lt!1866071 lt!1866616 (_1!30299 (h!58834 lt!1866088)) (_2!30299 (h!58834 lt!1866088))))))

(assert (=> b!4703012 (forall!11413 (toList!5697 lt!1866071) lambda!210772)))

(declare-fun lt!1866608 () Unit!126492)

(assert (=> b!4703012 (= lt!1866608 lt!1866613)))

(assert (=> b!4703012 (forall!11413 (toList!5697 lt!1866071) lambda!210772)))

(declare-fun lt!1866615 () Unit!126492)

(declare-fun Unit!126574 () Unit!126492)

(assert (=> b!4703012 (= lt!1866615 Unit!126574)))

(declare-fun res!1985975 () Bool)

(assert (=> b!4703012 (= res!1985975 call!328795)))

(assert (=> b!4703012 (=> (not res!1985975) (not e!2933702))))

(assert (=> b!4703012 e!2933702))

(declare-fun lt!1866609 () Unit!126492)

(declare-fun Unit!126575 () Unit!126492)

(assert (=> b!4703012 (= lt!1866609 Unit!126575)))

(assert (= (and d!1496180 c!803856) b!4703010))

(assert (= (and d!1496180 (not c!803856)) b!4703012))

(assert (= (and b!4703012 res!1985975) b!4703011))

(assert (= (or b!4703010 b!4703012) bm!328790))

(assert (= (or b!4703010 b!4703012) bm!328792))

(assert (= (or b!4703010 b!4703012) bm!328791))

(assert (= (and d!1496180 res!1985977) b!4703008))

(assert (= (and b!4703008 res!1985976) b!4703009))

(declare-fun m!5620861 () Bool)

(assert (=> bm!328792 m!5620861))

(declare-fun m!5620863 () Bool)

(assert (=> bm!328791 m!5620863))

(declare-fun m!5620865 () Bool)

(assert (=> b!4703008 m!5620865))

(declare-fun m!5620867 () Bool)

(assert (=> b!4703012 m!5620867))

(declare-fun m!5620869 () Bool)

(assert (=> b!4703012 m!5620869))

(declare-fun m!5620871 () Bool)

(assert (=> b!4703012 m!5620871))

(declare-fun m!5620873 () Bool)

(assert (=> b!4703012 m!5620873))

(declare-fun m!5620875 () Bool)

(assert (=> b!4703012 m!5620875))

(declare-fun m!5620877 () Bool)

(assert (=> b!4703012 m!5620877))

(declare-fun m!5620879 () Bool)

(assert (=> b!4703012 m!5620879))

(declare-fun m!5620881 () Bool)

(assert (=> b!4703012 m!5620881))

(assert (=> b!4703012 m!5620867))

(declare-fun m!5620883 () Bool)

(assert (=> b!4703012 m!5620883))

(declare-fun m!5620885 () Bool)

(assert (=> b!4703012 m!5620885))

(assert (=> b!4703012 m!5620871))

(declare-fun m!5620887 () Bool)

(assert (=> b!4703012 m!5620887))

(assert (=> b!4703011 m!5620871))

(declare-fun m!5620889 () Bool)

(assert (=> d!1496180 m!5620889))

(assert (=> d!1496180 m!5619945))

(assert (=> bm!328790 m!5620123))

(declare-fun m!5620891 () Bool)

(assert (=> b!4703009 m!5620891))

(assert (=> b!4702585 d!1496180))

(declare-fun bs!1096707 () Bool)

(declare-fun d!1496182 () Bool)

(assert (= bs!1096707 (and d!1496182 d!1496096)))

(declare-fun lambda!210774 () Int)

(assert (=> bs!1096707 (= lambda!210774 lambda!210757)))

(declare-fun bs!1096708 () Bool)

(assert (= bs!1096708 (and d!1496182 d!1496078)))

(assert (=> bs!1096708 (= lambda!210774 lambda!210747)))

(declare-fun bs!1096709 () Bool)

(assert (= bs!1096709 (and d!1496182 d!1496092)))

(assert (=> bs!1096709 (= lambda!210774 lambda!210756)))

(declare-fun bs!1096710 () Bool)

(assert (= bs!1096710 (and d!1496182 d!1496088)))

(assert (=> bs!1096710 (= lambda!210774 lambda!210755)))

(declare-fun bs!1096711 () Bool)

(assert (= bs!1096711 (and d!1496182 start!477124)))

(assert (=> bs!1096711 (= lambda!210774 lambda!210629)))

(declare-fun bs!1096712 () Bool)

(assert (= bs!1096712 (and d!1496182 d!1496026)))

(assert (=> bs!1096712 (= lambda!210774 lambda!210733)))

(declare-fun bs!1096713 () Bool)

(assert (= bs!1096713 (and d!1496182 d!1496150)))

(assert (=> bs!1096713 (not (= lambda!210774 lambda!210769))))

(declare-fun bs!1096714 () Bool)

(assert (= bs!1096714 (and d!1496182 d!1496120)))

(assert (=> bs!1096714 (= lambda!210774 lambda!210764)))

(declare-fun bs!1096715 () Bool)

(assert (= bs!1096715 (and d!1496182 d!1496028)))

(assert (=> bs!1096715 (= lambda!210774 lambda!210741)))

(declare-fun bs!1096716 () Bool)

(assert (= bs!1096716 (and d!1496182 d!1495992)))

(assert (=> bs!1096716 (= lambda!210774 lambda!210716)))

(declare-fun lt!1866628 () ListMap!5061)

(assert (=> d!1496182 (invariantList!1450 (toList!5697 lt!1866628))))

(declare-fun e!2933703 () ListMap!5061)

(assert (=> d!1496182 (= lt!1866628 e!2933703)))

(declare-fun c!803857 () Bool)

(assert (=> d!1496182 (= c!803857 ((_ is Cons!52550) lt!1866100))))

(assert (=> d!1496182 (forall!11411 lt!1866100 lambda!210774)))

(assert (=> d!1496182 (= (extractMap!1930 lt!1866100) lt!1866628)))

(declare-fun b!4703013 () Bool)

(assert (=> b!4703013 (= e!2933703 (addToMapMapFromBucket!1336 (_2!30300 (h!58835 lt!1866100)) (extractMap!1930 (t!359890 lt!1866100))))))

(declare-fun b!4703014 () Bool)

(assert (=> b!4703014 (= e!2933703 (ListMap!5062 Nil!52549))))

(assert (= (and d!1496182 c!803857) b!4703013))

(assert (= (and d!1496182 (not c!803857)) b!4703014))

(declare-fun m!5620893 () Bool)

(assert (=> d!1496182 m!5620893))

(declare-fun m!5620895 () Bool)

(assert (=> d!1496182 m!5620895))

(declare-fun m!5620897 () Bool)

(assert (=> b!4703013 m!5620897))

(assert (=> b!4703013 m!5620897))

(declare-fun m!5620899 () Bool)

(assert (=> b!4703013 m!5620899))

(assert (=> b!4702585 d!1496182))

(declare-fun d!1496184 () Bool)

(assert (=> d!1496184 (= (head!10072 newBucket!218) (h!58834 newBucket!218))))

(assert (=> b!4702585 d!1496184))

(declare-fun bs!1096717 () Bool)

(declare-fun d!1496186 () Bool)

(assert (= bs!1096717 (and d!1496186 d!1496096)))

(declare-fun lambda!210775 () Int)

(assert (=> bs!1096717 (= lambda!210775 lambda!210757)))

(declare-fun bs!1096718 () Bool)

(assert (= bs!1096718 (and d!1496186 d!1496078)))

(assert (=> bs!1096718 (= lambda!210775 lambda!210747)))

(declare-fun bs!1096719 () Bool)

(assert (= bs!1096719 (and d!1496186 d!1496092)))

(assert (=> bs!1096719 (= lambda!210775 lambda!210756)))

(declare-fun bs!1096720 () Bool)

(assert (= bs!1096720 (and d!1496186 d!1496088)))

(assert (=> bs!1096720 (= lambda!210775 lambda!210755)))

(declare-fun bs!1096721 () Bool)

(assert (= bs!1096721 (and d!1496186 d!1496026)))

(assert (=> bs!1096721 (= lambda!210775 lambda!210733)))

(declare-fun bs!1096722 () Bool)

(assert (= bs!1096722 (and d!1496186 d!1496150)))

(assert (=> bs!1096722 (not (= lambda!210775 lambda!210769))))

(declare-fun bs!1096723 () Bool)

(assert (= bs!1096723 (and d!1496186 d!1496120)))

(assert (=> bs!1096723 (= lambda!210775 lambda!210764)))

(declare-fun bs!1096724 () Bool)

(assert (= bs!1096724 (and d!1496186 d!1496028)))

(assert (=> bs!1096724 (= lambda!210775 lambda!210741)))

(declare-fun bs!1096725 () Bool)

(assert (= bs!1096725 (and d!1496186 d!1495992)))

(assert (=> bs!1096725 (= lambda!210775 lambda!210716)))

(declare-fun bs!1096726 () Bool)

(assert (= bs!1096726 (and d!1496186 start!477124)))

(assert (=> bs!1096726 (= lambda!210775 lambda!210629)))

(declare-fun bs!1096727 () Bool)

(assert (= bs!1096727 (and d!1496186 d!1496182)))

(assert (=> bs!1096727 (= lambda!210775 lambda!210774)))

(declare-fun lt!1866629 () ListMap!5061)

(assert (=> d!1496186 (invariantList!1450 (toList!5697 lt!1866629))))

(declare-fun e!2933704 () ListMap!5061)

(assert (=> d!1496186 (= lt!1866629 e!2933704)))

(declare-fun c!803858 () Bool)

(assert (=> d!1496186 (= c!803858 ((_ is Cons!52550) lt!1866094))))

(assert (=> d!1496186 (forall!11411 lt!1866094 lambda!210775)))

(assert (=> d!1496186 (= (extractMap!1930 lt!1866094) lt!1866629)))

(declare-fun b!4703015 () Bool)

(assert (=> b!4703015 (= e!2933704 (addToMapMapFromBucket!1336 (_2!30300 (h!58835 lt!1866094)) (extractMap!1930 (t!359890 lt!1866094))))))

(declare-fun b!4703016 () Bool)

(assert (=> b!4703016 (= e!2933704 (ListMap!5062 Nil!52549))))

(assert (= (and d!1496186 c!803858) b!4703015))

(assert (= (and d!1496186 (not c!803858)) b!4703016))

(declare-fun m!5620901 () Bool)

(assert (=> d!1496186 m!5620901))

(declare-fun m!5620903 () Bool)

(assert (=> d!1496186 m!5620903))

(declare-fun m!5620905 () Bool)

(assert (=> b!4703015 m!5620905))

(assert (=> b!4703015 m!5620905))

(declare-fun m!5620907 () Bool)

(assert (=> b!4703015 m!5620907))

(assert (=> b!4702585 d!1496186))

(declare-fun d!1496188 () Bool)

(assert (=> d!1496188 (= (eq!1063 (addToMapMapFromBucket!1336 (Cons!52549 lt!1866093 lt!1866088) lt!1866071) (+!2188 (addToMapMapFromBucket!1336 lt!1866088 lt!1866071) lt!1866093)) (= (content!9278 (toList!5697 (addToMapMapFromBucket!1336 (Cons!52549 lt!1866093 lt!1866088) lt!1866071))) (content!9278 (toList!5697 (+!2188 (addToMapMapFromBucket!1336 lt!1866088 lt!1866071) lt!1866093)))))))

(declare-fun bs!1096728 () Bool)

(assert (= bs!1096728 d!1496188))

(declare-fun m!5620909 () Bool)

(assert (=> bs!1096728 m!5620909))

(declare-fun m!5620911 () Bool)

(assert (=> bs!1096728 m!5620911))

(assert (=> b!4702585 d!1496188))

(declare-fun bs!1096729 () Bool)

(declare-fun b!4703019 () Bool)

(assert (= bs!1096729 (and b!4703019 b!4703010)))

(declare-fun lambda!210776 () Int)

(assert (=> bs!1096729 (= lambda!210776 lambda!210770)))

(declare-fun bs!1096730 () Bool)

(assert (= bs!1096730 (and b!4703019 b!4703012)))

(assert (=> bs!1096730 (= (= lt!1866071 lt!1866616) (= lambda!210776 lambda!210772))))

(declare-fun bs!1096731 () Bool)

(assert (= bs!1096731 (and b!4703019 b!4702697)))

(assert (=> bs!1096731 (= lambda!210776 lambda!210704)))

(declare-fun bs!1096732 () Bool)

(assert (= bs!1096732 (and b!4703019 d!1495998)))

(assert (=> bs!1096732 (not (= lambda!210776 lambda!210721))))

(assert (=> bs!1096730 (= lambda!210776 lambda!210771)))

(declare-fun bs!1096733 () Bool)

(assert (= bs!1096733 (and b!4703019 b!4702699)))

(assert (=> bs!1096733 (= (= lt!1866071 lt!1866275) (= lambda!210776 lambda!210706))))

(declare-fun bs!1096734 () Bool)

(assert (= bs!1096734 (and b!4703019 d!1495960)))

(assert (=> bs!1096734 (= (= lt!1866071 lt!1866279) (= lambda!210776 lambda!210708))))

(declare-fun bs!1096735 () Bool)

(assert (= bs!1096735 (and b!4703019 d!1496110)))

(assert (=> bs!1096735 (not (= lambda!210776 lambda!210759))))

(declare-fun bs!1096736 () Bool)

(assert (= bs!1096736 (and b!4703019 d!1496180)))

(assert (=> bs!1096736 (= (= lt!1866071 lt!1866620) (= lambda!210776 lambda!210773))))

(assert (=> bs!1096733 (= lambda!210776 lambda!210705)))

(assert (=> b!4703019 true))

(declare-fun bs!1096737 () Bool)

(declare-fun b!4703021 () Bool)

(assert (= bs!1096737 (and b!4703021 b!4703010)))

(declare-fun lambda!210777 () Int)

(assert (=> bs!1096737 (= lambda!210777 lambda!210770)))

(declare-fun bs!1096738 () Bool)

(assert (= bs!1096738 (and b!4703021 b!4703012)))

(assert (=> bs!1096738 (= (= lt!1866071 lt!1866616) (= lambda!210777 lambda!210772))))

(declare-fun bs!1096739 () Bool)

(assert (= bs!1096739 (and b!4703021 b!4702697)))

(assert (=> bs!1096739 (= lambda!210777 lambda!210704)))

(declare-fun bs!1096740 () Bool)

(assert (= bs!1096740 (and b!4703021 d!1495998)))

(assert (=> bs!1096740 (not (= lambda!210777 lambda!210721))))

(assert (=> bs!1096738 (= lambda!210777 lambda!210771)))

(declare-fun bs!1096741 () Bool)

(assert (= bs!1096741 (and b!4703021 d!1495960)))

(assert (=> bs!1096741 (= (= lt!1866071 lt!1866279) (= lambda!210777 lambda!210708))))

(declare-fun bs!1096742 () Bool)

(assert (= bs!1096742 (and b!4703021 d!1496110)))

(assert (=> bs!1096742 (not (= lambda!210777 lambda!210759))))

(declare-fun bs!1096743 () Bool)

(assert (= bs!1096743 (and b!4703021 d!1496180)))

(assert (=> bs!1096743 (= (= lt!1866071 lt!1866620) (= lambda!210777 lambda!210773))))

(declare-fun bs!1096744 () Bool)

(assert (= bs!1096744 (and b!4703021 b!4702699)))

(assert (=> bs!1096744 (= lambda!210777 lambda!210705)))

(declare-fun bs!1096745 () Bool)

(assert (= bs!1096745 (and b!4703021 b!4703019)))

(assert (=> bs!1096745 (= lambda!210777 lambda!210776)))

(assert (=> bs!1096744 (= (= lt!1866071 lt!1866275) (= lambda!210777 lambda!210706))))

(assert (=> b!4703021 true))

(declare-fun lambda!210778 () Int)

(declare-fun lt!1866639 () ListMap!5061)

(assert (=> bs!1096737 (= (= lt!1866639 lt!1866071) (= lambda!210778 lambda!210770))))

(assert (=> bs!1096738 (= (= lt!1866639 lt!1866616) (= lambda!210778 lambda!210772))))

(assert (=> b!4703021 (= (= lt!1866639 lt!1866071) (= lambda!210778 lambda!210777))))

(assert (=> bs!1096739 (= (= lt!1866639 lt!1866071) (= lambda!210778 lambda!210704))))

(assert (=> bs!1096740 (not (= lambda!210778 lambda!210721))))

(assert (=> bs!1096738 (= (= lt!1866639 lt!1866071) (= lambda!210778 lambda!210771))))

(assert (=> bs!1096741 (= (= lt!1866639 lt!1866279) (= lambda!210778 lambda!210708))))

(assert (=> bs!1096742 (not (= lambda!210778 lambda!210759))))

(assert (=> bs!1096743 (= (= lt!1866639 lt!1866620) (= lambda!210778 lambda!210773))))

(assert (=> bs!1096744 (= (= lt!1866639 lt!1866071) (= lambda!210778 lambda!210705))))

(assert (=> bs!1096745 (= (= lt!1866639 lt!1866071) (= lambda!210778 lambda!210776))))

(assert (=> bs!1096744 (= (= lt!1866639 lt!1866275) (= lambda!210778 lambda!210706))))

(assert (=> b!4703021 true))

(declare-fun bs!1096746 () Bool)

(declare-fun d!1496190 () Bool)

(assert (= bs!1096746 (and d!1496190 b!4703010)))

(declare-fun lambda!210779 () Int)

(declare-fun lt!1866643 () ListMap!5061)

(assert (=> bs!1096746 (= (= lt!1866643 lt!1866071) (= lambda!210779 lambda!210770))))

(declare-fun bs!1096747 () Bool)

(assert (= bs!1096747 (and d!1496190 b!4703012)))

(assert (=> bs!1096747 (= (= lt!1866643 lt!1866616) (= lambda!210779 lambda!210772))))

(declare-fun bs!1096748 () Bool)

(assert (= bs!1096748 (and d!1496190 b!4703021)))

(assert (=> bs!1096748 (= (= lt!1866643 lt!1866071) (= lambda!210779 lambda!210777))))

(assert (=> bs!1096748 (= (= lt!1866643 lt!1866639) (= lambda!210779 lambda!210778))))

(declare-fun bs!1096749 () Bool)

(assert (= bs!1096749 (and d!1496190 b!4702697)))

(assert (=> bs!1096749 (= (= lt!1866643 lt!1866071) (= lambda!210779 lambda!210704))))

(declare-fun bs!1096750 () Bool)

(assert (= bs!1096750 (and d!1496190 d!1495998)))

(assert (=> bs!1096750 (not (= lambda!210779 lambda!210721))))

(assert (=> bs!1096747 (= (= lt!1866643 lt!1866071) (= lambda!210779 lambda!210771))))

(declare-fun bs!1096751 () Bool)

(assert (= bs!1096751 (and d!1496190 d!1495960)))

(assert (=> bs!1096751 (= (= lt!1866643 lt!1866279) (= lambda!210779 lambda!210708))))

(declare-fun bs!1096752 () Bool)

(assert (= bs!1096752 (and d!1496190 d!1496110)))

(assert (=> bs!1096752 (not (= lambda!210779 lambda!210759))))

(declare-fun bs!1096753 () Bool)

(assert (= bs!1096753 (and d!1496190 d!1496180)))

(assert (=> bs!1096753 (= (= lt!1866643 lt!1866620) (= lambda!210779 lambda!210773))))

(declare-fun bs!1096754 () Bool)

(assert (= bs!1096754 (and d!1496190 b!4702699)))

(assert (=> bs!1096754 (= (= lt!1866643 lt!1866071) (= lambda!210779 lambda!210705))))

(declare-fun bs!1096755 () Bool)

(assert (= bs!1096755 (and d!1496190 b!4703019)))

(assert (=> bs!1096755 (= (= lt!1866643 lt!1866071) (= lambda!210779 lambda!210776))))

(assert (=> bs!1096754 (= (= lt!1866643 lt!1866275) (= lambda!210779 lambda!210706))))

(assert (=> d!1496190 true))

(declare-fun b!4703017 () Bool)

(declare-fun res!1985979 () Bool)

(declare-fun e!2933705 () Bool)

(assert (=> b!4703017 (=> (not res!1985979) (not e!2933705))))

(assert (=> b!4703017 (= res!1985979 (forall!11413 (toList!5697 lt!1866071) lambda!210779))))

(declare-fun bm!328793 () Bool)

(declare-fun call!328799 () Unit!126492)

(assert (=> bm!328793 (= call!328799 (lemmaContainsAllItsOwnKeys!738 lt!1866071))))

(declare-fun call!328800 () Bool)

(declare-fun bm!328794 () Bool)

(declare-fun c!803859 () Bool)

(declare-fun lt!1866633 () ListMap!5061)

(assert (=> bm!328794 (= call!328800 (forall!11413 (ite c!803859 (toList!5697 lt!1866071) (toList!5697 lt!1866633)) (ite c!803859 lambda!210776 lambda!210778)))))

(assert (=> d!1496190 e!2933705))

(declare-fun res!1985980 () Bool)

(assert (=> d!1496190 (=> (not res!1985980) (not e!2933705))))

(assert (=> d!1496190 (= res!1985980 (forall!11413 lt!1866068 lambda!210779))))

(declare-fun e!2933706 () ListMap!5061)

(assert (=> d!1496190 (= lt!1866643 e!2933706)))

(assert (=> d!1496190 (= c!803859 ((_ is Nil!52549) lt!1866068))))

(assert (=> d!1496190 (noDuplicateKeys!1904 lt!1866068)))

(assert (=> d!1496190 (= (addToMapMapFromBucket!1336 lt!1866068 lt!1866071) lt!1866643)))

(declare-fun b!4703018 () Bool)

(assert (=> b!4703018 (= e!2933705 (invariantList!1450 (toList!5697 lt!1866643)))))

(declare-fun bm!328795 () Bool)

(declare-fun call!328798 () Bool)

(assert (=> bm!328795 (= call!328798 (forall!11413 (ite c!803859 (toList!5697 lt!1866071) lt!1866068) (ite c!803859 lambda!210776 lambda!210778)))))

(assert (=> b!4703019 (= e!2933706 lt!1866071)))

(declare-fun lt!1866645 () Unit!126492)

(assert (=> b!4703019 (= lt!1866645 call!328799)))

(assert (=> b!4703019 call!328800))

(declare-fun lt!1866637 () Unit!126492)

(assert (=> b!4703019 (= lt!1866637 lt!1866645)))

(assert (=> b!4703019 call!328798))

(declare-fun lt!1866634 () Unit!126492)

(declare-fun Unit!126577 () Unit!126492)

(assert (=> b!4703019 (= lt!1866634 Unit!126577)))

(declare-fun b!4703020 () Bool)

(declare-fun e!2933707 () Bool)

(assert (=> b!4703020 (= e!2933707 (forall!11413 (toList!5697 lt!1866071) lambda!210778))))

(assert (=> b!4703021 (= e!2933706 lt!1866639)))

(assert (=> b!4703021 (= lt!1866633 (+!2188 lt!1866071 (h!58834 lt!1866068)))))

(assert (=> b!4703021 (= lt!1866639 (addToMapMapFromBucket!1336 (t!359889 lt!1866068) (+!2188 lt!1866071 (h!58834 lt!1866068))))))

(declare-fun lt!1866649 () Unit!126492)

(assert (=> b!4703021 (= lt!1866649 call!328799)))

(assert (=> b!4703021 (forall!11413 (toList!5697 lt!1866071) lambda!210777)))

(declare-fun lt!1866630 () Unit!126492)

(assert (=> b!4703021 (= lt!1866630 lt!1866649)))

(assert (=> b!4703021 call!328800))

(declare-fun lt!1866642 () Unit!126492)

(declare-fun Unit!126578 () Unit!126492)

(assert (=> b!4703021 (= lt!1866642 Unit!126578)))

(assert (=> b!4703021 (forall!11413 (t!359889 lt!1866068) lambda!210778)))

(declare-fun lt!1866641 () Unit!126492)

(declare-fun Unit!126579 () Unit!126492)

(assert (=> b!4703021 (= lt!1866641 Unit!126579)))

(declare-fun lt!1866644 () Unit!126492)

(declare-fun Unit!126580 () Unit!126492)

(assert (=> b!4703021 (= lt!1866644 Unit!126580)))

(declare-fun lt!1866650 () Unit!126492)

(assert (=> b!4703021 (= lt!1866650 (forallContained!3520 (toList!5697 lt!1866633) lambda!210778 (h!58834 lt!1866068)))))

(assert (=> b!4703021 (contains!15840 lt!1866633 (_1!30299 (h!58834 lt!1866068)))))

(declare-fun lt!1866640 () Unit!126492)

(declare-fun Unit!126581 () Unit!126492)

(assert (=> b!4703021 (= lt!1866640 Unit!126581)))

(assert (=> b!4703021 (contains!15840 lt!1866639 (_1!30299 (h!58834 lt!1866068)))))

(declare-fun lt!1866648 () Unit!126492)

(declare-fun Unit!126582 () Unit!126492)

(assert (=> b!4703021 (= lt!1866648 Unit!126582)))

(assert (=> b!4703021 (forall!11413 lt!1866068 lambda!210778)))

(declare-fun lt!1866635 () Unit!126492)

(declare-fun Unit!126583 () Unit!126492)

(assert (=> b!4703021 (= lt!1866635 Unit!126583)))

(assert (=> b!4703021 (forall!11413 (toList!5697 lt!1866633) lambda!210778)))

(declare-fun lt!1866647 () Unit!126492)

(declare-fun Unit!126584 () Unit!126492)

(assert (=> b!4703021 (= lt!1866647 Unit!126584)))

(declare-fun lt!1866646 () Unit!126492)

(declare-fun Unit!126585 () Unit!126492)

(assert (=> b!4703021 (= lt!1866646 Unit!126585)))

(declare-fun lt!1866636 () Unit!126492)

(assert (=> b!4703021 (= lt!1866636 (addForallContainsKeyThenBeforeAdding!737 lt!1866071 lt!1866639 (_1!30299 (h!58834 lt!1866068)) (_2!30299 (h!58834 lt!1866068))))))

(assert (=> b!4703021 (forall!11413 (toList!5697 lt!1866071) lambda!210778)))

(declare-fun lt!1866631 () Unit!126492)

(assert (=> b!4703021 (= lt!1866631 lt!1866636)))

(assert (=> b!4703021 (forall!11413 (toList!5697 lt!1866071) lambda!210778)))

(declare-fun lt!1866638 () Unit!126492)

(declare-fun Unit!126586 () Unit!126492)

(assert (=> b!4703021 (= lt!1866638 Unit!126586)))

(declare-fun res!1985978 () Bool)

(assert (=> b!4703021 (= res!1985978 call!328798)))

(assert (=> b!4703021 (=> (not res!1985978) (not e!2933707))))

(assert (=> b!4703021 e!2933707))

(declare-fun lt!1866632 () Unit!126492)

(declare-fun Unit!126587 () Unit!126492)

(assert (=> b!4703021 (= lt!1866632 Unit!126587)))

(assert (= (and d!1496190 c!803859) b!4703019))

(assert (= (and d!1496190 (not c!803859)) b!4703021))

(assert (= (and b!4703021 res!1985978) b!4703020))

(assert (= (or b!4703019 b!4703021) bm!328793))

(assert (= (or b!4703019 b!4703021) bm!328795))

(assert (= (or b!4703019 b!4703021) bm!328794))

(assert (= (and d!1496190 res!1985980) b!4703017))

(assert (= (and b!4703017 res!1985979) b!4703018))

(declare-fun m!5620913 () Bool)

(assert (=> bm!328795 m!5620913))

(declare-fun m!5620915 () Bool)

(assert (=> bm!328794 m!5620915))

(declare-fun m!5620917 () Bool)

(assert (=> b!4703017 m!5620917))

(declare-fun m!5620919 () Bool)

(assert (=> b!4703021 m!5620919))

(declare-fun m!5620921 () Bool)

(assert (=> b!4703021 m!5620921))

(declare-fun m!5620923 () Bool)

(assert (=> b!4703021 m!5620923))

(declare-fun m!5620925 () Bool)

(assert (=> b!4703021 m!5620925))

(declare-fun m!5620927 () Bool)

(assert (=> b!4703021 m!5620927))

(declare-fun m!5620929 () Bool)

(assert (=> b!4703021 m!5620929))

(declare-fun m!5620931 () Bool)

(assert (=> b!4703021 m!5620931))

(declare-fun m!5620933 () Bool)

(assert (=> b!4703021 m!5620933))

(assert (=> b!4703021 m!5620919))

(declare-fun m!5620935 () Bool)

(assert (=> b!4703021 m!5620935))

(declare-fun m!5620937 () Bool)

(assert (=> b!4703021 m!5620937))

(assert (=> b!4703021 m!5620923))

(declare-fun m!5620939 () Bool)

(assert (=> b!4703021 m!5620939))

(assert (=> b!4703020 m!5620923))

(declare-fun m!5620941 () Bool)

(assert (=> d!1496190 m!5620941))

(assert (=> d!1496190 m!5620845))

(assert (=> bm!328793 m!5620123))

(declare-fun m!5620943 () Bool)

(assert (=> b!4703018 m!5620943))

(assert (=> b!4702585 d!1496190))

(declare-fun bs!1096756 () Bool)

(declare-fun d!1496192 () Bool)

(assert (= bs!1096756 (and d!1496192 d!1496096)))

(declare-fun lambda!210782 () Int)

(assert (=> bs!1096756 (= lambda!210782 lambda!210757)))

(declare-fun bs!1096757 () Bool)

(assert (= bs!1096757 (and d!1496192 d!1496078)))

(assert (=> bs!1096757 (= lambda!210782 lambda!210747)))

(declare-fun bs!1096758 () Bool)

(assert (= bs!1096758 (and d!1496192 d!1496092)))

(assert (=> bs!1096758 (= lambda!210782 lambda!210756)))

(declare-fun bs!1096759 () Bool)

(assert (= bs!1096759 (and d!1496192 d!1496186)))

(assert (=> bs!1096759 (= lambda!210782 lambda!210775)))

(declare-fun bs!1096760 () Bool)

(assert (= bs!1096760 (and d!1496192 d!1496088)))

(assert (=> bs!1096760 (= lambda!210782 lambda!210755)))

(declare-fun bs!1096761 () Bool)

(assert (= bs!1096761 (and d!1496192 d!1496026)))

(assert (=> bs!1096761 (= lambda!210782 lambda!210733)))

(declare-fun bs!1096762 () Bool)

(assert (= bs!1096762 (and d!1496192 d!1496150)))

(assert (=> bs!1096762 (not (= lambda!210782 lambda!210769))))

(declare-fun bs!1096763 () Bool)

(assert (= bs!1096763 (and d!1496192 d!1496120)))

(assert (=> bs!1096763 (= lambda!210782 lambda!210764)))

(declare-fun bs!1096764 () Bool)

(assert (= bs!1096764 (and d!1496192 d!1496028)))

(assert (=> bs!1096764 (= lambda!210782 lambda!210741)))

(declare-fun bs!1096765 () Bool)

(assert (= bs!1096765 (and d!1496192 d!1495992)))

(assert (=> bs!1096765 (= lambda!210782 lambda!210716)))

(declare-fun bs!1096766 () Bool)

(assert (= bs!1096766 (and d!1496192 start!477124)))

(assert (=> bs!1096766 (= lambda!210782 lambda!210629)))

(declare-fun bs!1096767 () Bool)

(assert (= bs!1096767 (and d!1496192 d!1496182)))

(assert (=> bs!1096767 (= lambda!210782 lambda!210774)))

(assert (=> d!1496192 (contains!15840 (extractMap!1930 (toList!5698 lt!1866073)) key!4653)))

(declare-fun lt!1866653 () Unit!126492)

(declare-fun choose!32950 (ListLongMap!4227 K!13910 Hashable!6273) Unit!126492)

(assert (=> d!1496192 (= lt!1866653 (choose!32950 lt!1866073 key!4653 hashF!1323))))

(assert (=> d!1496192 (forall!11411 (toList!5698 lt!1866073) lambda!210782)))

(assert (=> d!1496192 (= (lemmaListContainsThenExtractedMapContains!496 lt!1866073 key!4653 hashF!1323) lt!1866653)))

(declare-fun bs!1096768 () Bool)

(assert (= bs!1096768 d!1496192))

(declare-fun m!5620945 () Bool)

(assert (=> bs!1096768 m!5620945))

(assert (=> bs!1096768 m!5620945))

(declare-fun m!5620947 () Bool)

(assert (=> bs!1096768 m!5620947))

(declare-fun m!5620949 () Bool)

(assert (=> bs!1096768 m!5620949))

(declare-fun m!5620951 () Bool)

(assert (=> bs!1096768 m!5620951))

(assert (=> b!4702585 d!1496192))

(declare-fun d!1496194 () Bool)

(assert (=> d!1496194 (eq!1063 (addToMapMapFromBucket!1336 (Cons!52549 lt!1866093 lt!1866088) lt!1866071) (+!2188 (addToMapMapFromBucket!1336 lt!1866088 lt!1866071) lt!1866093))))

(declare-fun lt!1866654 () Unit!126492)

(assert (=> d!1496194 (= lt!1866654 (choose!32944 lt!1866093 lt!1866088 lt!1866071))))

(assert (=> d!1496194 (noDuplicateKeys!1904 lt!1866088)))

(assert (=> d!1496194 (= (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!312 lt!1866093 lt!1866088 lt!1866071) lt!1866654)))

(declare-fun bs!1096769 () Bool)

(assert (= bs!1096769 d!1496194))

(assert (=> bs!1096769 m!5619751))

(declare-fun m!5620953 () Bool)

(assert (=> bs!1096769 m!5620953))

(assert (=> bs!1096769 m!5619731))

(assert (=> bs!1096769 m!5619731))

(assert (=> bs!1096769 m!5619733))

(assert (=> bs!1096769 m!5619735))

(assert (=> bs!1096769 m!5619945))

(assert (=> bs!1096769 m!5619751))

(assert (=> bs!1096769 m!5619733))

(assert (=> b!4702585 d!1496194))

(declare-fun bs!1096770 () Bool)

(declare-fun b!4703024 () Bool)

(assert (= bs!1096770 (and b!4703024 b!4703010)))

(declare-fun lambda!210783 () Int)

(assert (=> bs!1096770 (= lambda!210783 lambda!210770)))

(declare-fun bs!1096771 () Bool)

(assert (= bs!1096771 (and b!4703024 b!4703012)))

(assert (=> bs!1096771 (= (= lt!1866071 lt!1866616) (= lambda!210783 lambda!210772))))

(declare-fun bs!1096772 () Bool)

(assert (= bs!1096772 (and b!4703024 b!4703021)))

(assert (=> bs!1096772 (= lambda!210783 lambda!210777)))

(assert (=> bs!1096772 (= (= lt!1866071 lt!1866639) (= lambda!210783 lambda!210778))))

(declare-fun bs!1096773 () Bool)

(assert (= bs!1096773 (and b!4703024 b!4702697)))

(assert (=> bs!1096773 (= lambda!210783 lambda!210704)))

(declare-fun bs!1096774 () Bool)

(assert (= bs!1096774 (and b!4703024 d!1495998)))

(assert (=> bs!1096774 (not (= lambda!210783 lambda!210721))))

(assert (=> bs!1096771 (= lambda!210783 lambda!210771)))

(declare-fun bs!1096775 () Bool)

(assert (= bs!1096775 (and b!4703024 d!1495960)))

(assert (=> bs!1096775 (= (= lt!1866071 lt!1866279) (= lambda!210783 lambda!210708))))

(declare-fun bs!1096776 () Bool)

(assert (= bs!1096776 (and b!4703024 d!1496110)))

(assert (=> bs!1096776 (not (= lambda!210783 lambda!210759))))

(declare-fun bs!1096777 () Bool)

(assert (= bs!1096777 (and b!4703024 d!1496180)))

(assert (=> bs!1096777 (= (= lt!1866071 lt!1866620) (= lambda!210783 lambda!210773))))

(declare-fun bs!1096778 () Bool)

(assert (= bs!1096778 (and b!4703024 b!4702699)))

(assert (=> bs!1096778 (= lambda!210783 lambda!210705)))

(declare-fun bs!1096779 () Bool)

(assert (= bs!1096779 (and b!4703024 d!1496190)))

(assert (=> bs!1096779 (= (= lt!1866071 lt!1866643) (= lambda!210783 lambda!210779))))

(declare-fun bs!1096780 () Bool)

(assert (= bs!1096780 (and b!4703024 b!4703019)))

(assert (=> bs!1096780 (= lambda!210783 lambda!210776)))

(assert (=> bs!1096778 (= (= lt!1866071 lt!1866275) (= lambda!210783 lambda!210706))))

(assert (=> b!4703024 true))

(declare-fun bs!1096781 () Bool)

(declare-fun b!4703026 () Bool)

(assert (= bs!1096781 (and b!4703026 b!4703010)))

(declare-fun lambda!210784 () Int)

(assert (=> bs!1096781 (= lambda!210784 lambda!210770)))

(declare-fun bs!1096782 () Bool)

(assert (= bs!1096782 (and b!4703026 b!4703012)))

(assert (=> bs!1096782 (= (= lt!1866071 lt!1866616) (= lambda!210784 lambda!210772))))

(declare-fun bs!1096783 () Bool)

(assert (= bs!1096783 (and b!4703026 b!4703021)))

(assert (=> bs!1096783 (= lambda!210784 lambda!210777)))

(assert (=> bs!1096783 (= (= lt!1866071 lt!1866639) (= lambda!210784 lambda!210778))))

(declare-fun bs!1096784 () Bool)

(assert (= bs!1096784 (and b!4703026 b!4702697)))

(assert (=> bs!1096784 (= lambda!210784 lambda!210704)))

(declare-fun bs!1096785 () Bool)

(assert (= bs!1096785 (and b!4703026 d!1495998)))

(assert (=> bs!1096785 (not (= lambda!210784 lambda!210721))))

(declare-fun bs!1096786 () Bool)

(assert (= bs!1096786 (and b!4703026 b!4703024)))

(assert (=> bs!1096786 (= lambda!210784 lambda!210783)))

(assert (=> bs!1096782 (= lambda!210784 lambda!210771)))

(declare-fun bs!1096787 () Bool)

(assert (= bs!1096787 (and b!4703026 d!1495960)))

(assert (=> bs!1096787 (= (= lt!1866071 lt!1866279) (= lambda!210784 lambda!210708))))

(declare-fun bs!1096788 () Bool)

(assert (= bs!1096788 (and b!4703026 d!1496110)))

(assert (=> bs!1096788 (not (= lambda!210784 lambda!210759))))

(declare-fun bs!1096789 () Bool)

(assert (= bs!1096789 (and b!4703026 d!1496180)))

(assert (=> bs!1096789 (= (= lt!1866071 lt!1866620) (= lambda!210784 lambda!210773))))

(declare-fun bs!1096790 () Bool)

(assert (= bs!1096790 (and b!4703026 b!4702699)))

(assert (=> bs!1096790 (= lambda!210784 lambda!210705)))

(declare-fun bs!1096791 () Bool)

(assert (= bs!1096791 (and b!4703026 d!1496190)))

(assert (=> bs!1096791 (= (= lt!1866071 lt!1866643) (= lambda!210784 lambda!210779))))

(declare-fun bs!1096792 () Bool)

(assert (= bs!1096792 (and b!4703026 b!4703019)))

(assert (=> bs!1096792 (= lambda!210784 lambda!210776)))

(assert (=> bs!1096790 (= (= lt!1866071 lt!1866275) (= lambda!210784 lambda!210706))))

(assert (=> b!4703026 true))

(declare-fun lambda!210785 () Int)

(declare-fun lt!1866664 () ListMap!5061)

(assert (=> bs!1096781 (= (= lt!1866664 lt!1866071) (= lambda!210785 lambda!210770))))

(assert (=> bs!1096782 (= (= lt!1866664 lt!1866616) (= lambda!210785 lambda!210772))))

(assert (=> bs!1096783 (= (= lt!1866664 lt!1866071) (= lambda!210785 lambda!210777))))

(assert (=> bs!1096783 (= (= lt!1866664 lt!1866639) (= lambda!210785 lambda!210778))))

(assert (=> bs!1096784 (= (= lt!1866664 lt!1866071) (= lambda!210785 lambda!210704))))

(assert (=> bs!1096785 (not (= lambda!210785 lambda!210721))))

(assert (=> bs!1096786 (= (= lt!1866664 lt!1866071) (= lambda!210785 lambda!210783))))

(assert (=> bs!1096782 (= (= lt!1866664 lt!1866071) (= lambda!210785 lambda!210771))))

(assert (=> bs!1096787 (= (= lt!1866664 lt!1866279) (= lambda!210785 lambda!210708))))

(assert (=> bs!1096789 (= (= lt!1866664 lt!1866620) (= lambda!210785 lambda!210773))))

(assert (=> bs!1096790 (= (= lt!1866664 lt!1866071) (= lambda!210785 lambda!210705))))

(assert (=> bs!1096791 (= (= lt!1866664 lt!1866643) (= lambda!210785 lambda!210779))))

(assert (=> bs!1096792 (= (= lt!1866664 lt!1866071) (= lambda!210785 lambda!210776))))

(assert (=> bs!1096790 (= (= lt!1866664 lt!1866275) (= lambda!210785 lambda!210706))))

(assert (=> b!4703026 (= (= lt!1866664 lt!1866071) (= lambda!210785 lambda!210784))))

(assert (=> bs!1096788 (not (= lambda!210785 lambda!210759))))

(assert (=> b!4703026 true))

(declare-fun bs!1096793 () Bool)

(declare-fun d!1496196 () Bool)

(assert (= bs!1096793 (and d!1496196 b!4703010)))

(declare-fun lt!1866668 () ListMap!5061)

(declare-fun lambda!210786 () Int)

(assert (=> bs!1096793 (= (= lt!1866668 lt!1866071) (= lambda!210786 lambda!210770))))

(declare-fun bs!1096794 () Bool)

(assert (= bs!1096794 (and d!1496196 b!4703012)))

(assert (=> bs!1096794 (= (= lt!1866668 lt!1866616) (= lambda!210786 lambda!210772))))

(declare-fun bs!1096795 () Bool)

(assert (= bs!1096795 (and d!1496196 b!4703021)))

(assert (=> bs!1096795 (= (= lt!1866668 lt!1866071) (= lambda!210786 lambda!210777))))

(assert (=> bs!1096795 (= (= lt!1866668 lt!1866639) (= lambda!210786 lambda!210778))))

(declare-fun bs!1096796 () Bool)

(assert (= bs!1096796 (and d!1496196 b!4703026)))

(assert (=> bs!1096796 (= (= lt!1866668 lt!1866664) (= lambda!210786 lambda!210785))))

(declare-fun bs!1096797 () Bool)

(assert (= bs!1096797 (and d!1496196 b!4702697)))

(assert (=> bs!1096797 (= (= lt!1866668 lt!1866071) (= lambda!210786 lambda!210704))))

(declare-fun bs!1096798 () Bool)

(assert (= bs!1096798 (and d!1496196 d!1495998)))

(assert (=> bs!1096798 (not (= lambda!210786 lambda!210721))))

(declare-fun bs!1096799 () Bool)

(assert (= bs!1096799 (and d!1496196 b!4703024)))

(assert (=> bs!1096799 (= (= lt!1866668 lt!1866071) (= lambda!210786 lambda!210783))))

(assert (=> bs!1096794 (= (= lt!1866668 lt!1866071) (= lambda!210786 lambda!210771))))

(declare-fun bs!1096800 () Bool)

(assert (= bs!1096800 (and d!1496196 d!1495960)))

(assert (=> bs!1096800 (= (= lt!1866668 lt!1866279) (= lambda!210786 lambda!210708))))

(declare-fun bs!1096801 () Bool)

(assert (= bs!1096801 (and d!1496196 d!1496180)))

(assert (=> bs!1096801 (= (= lt!1866668 lt!1866620) (= lambda!210786 lambda!210773))))

(declare-fun bs!1096802 () Bool)

(assert (= bs!1096802 (and d!1496196 b!4702699)))

(assert (=> bs!1096802 (= (= lt!1866668 lt!1866071) (= lambda!210786 lambda!210705))))

(declare-fun bs!1096803 () Bool)

(assert (= bs!1096803 (and d!1496196 d!1496190)))

(assert (=> bs!1096803 (= (= lt!1866668 lt!1866643) (= lambda!210786 lambda!210779))))

(declare-fun bs!1096804 () Bool)

(assert (= bs!1096804 (and d!1496196 b!4703019)))

(assert (=> bs!1096804 (= (= lt!1866668 lt!1866071) (= lambda!210786 lambda!210776))))

(assert (=> bs!1096802 (= (= lt!1866668 lt!1866275) (= lambda!210786 lambda!210706))))

(assert (=> bs!1096796 (= (= lt!1866668 lt!1866071) (= lambda!210786 lambda!210784))))

(declare-fun bs!1096805 () Bool)

(assert (= bs!1096805 (and d!1496196 d!1496110)))

(assert (=> bs!1096805 (not (= lambda!210786 lambda!210759))))

(assert (=> d!1496196 true))

(declare-fun b!4703022 () Bool)

(declare-fun res!1985982 () Bool)

(declare-fun e!2933708 () Bool)

(assert (=> b!4703022 (=> (not res!1985982) (not e!2933708))))

(assert (=> b!4703022 (= res!1985982 (forall!11413 (toList!5697 lt!1866071) lambda!210786))))

(declare-fun bm!328796 () Bool)

(declare-fun call!328802 () Unit!126492)

(assert (=> bm!328796 (= call!328802 (lemmaContainsAllItsOwnKeys!738 lt!1866071))))

(declare-fun call!328803 () Bool)

(declare-fun bm!328797 () Bool)

(declare-fun lt!1866658 () ListMap!5061)

(declare-fun c!803860 () Bool)

(assert (=> bm!328797 (= call!328803 (forall!11413 (ite c!803860 (toList!5697 lt!1866071) (toList!5697 lt!1866658)) (ite c!803860 lambda!210783 lambda!210785)))))

(assert (=> d!1496196 e!2933708))

(declare-fun res!1985983 () Bool)

(assert (=> d!1496196 (=> (not res!1985983) (not e!2933708))))

(assert (=> d!1496196 (= res!1985983 (forall!11413 (Cons!52549 lt!1866093 lt!1866088) lambda!210786))))

(declare-fun e!2933709 () ListMap!5061)

(assert (=> d!1496196 (= lt!1866668 e!2933709)))

(assert (=> d!1496196 (= c!803860 ((_ is Nil!52549) (Cons!52549 lt!1866093 lt!1866088)))))

(assert (=> d!1496196 (noDuplicateKeys!1904 (Cons!52549 lt!1866093 lt!1866088))))

(assert (=> d!1496196 (= (addToMapMapFromBucket!1336 (Cons!52549 lt!1866093 lt!1866088) lt!1866071) lt!1866668)))

(declare-fun b!4703023 () Bool)

(assert (=> b!4703023 (= e!2933708 (invariantList!1450 (toList!5697 lt!1866668)))))

(declare-fun bm!328798 () Bool)

(declare-fun call!328801 () Bool)

(assert (=> bm!328798 (= call!328801 (forall!11413 (ite c!803860 (toList!5697 lt!1866071) (Cons!52549 lt!1866093 lt!1866088)) (ite c!803860 lambda!210783 lambda!210785)))))

(assert (=> b!4703024 (= e!2933709 lt!1866071)))

(declare-fun lt!1866670 () Unit!126492)

(assert (=> b!4703024 (= lt!1866670 call!328802)))

(assert (=> b!4703024 call!328803))

(declare-fun lt!1866662 () Unit!126492)

(assert (=> b!4703024 (= lt!1866662 lt!1866670)))

(assert (=> b!4703024 call!328801))

(declare-fun lt!1866659 () Unit!126492)

(declare-fun Unit!126590 () Unit!126492)

(assert (=> b!4703024 (= lt!1866659 Unit!126590)))

(declare-fun b!4703025 () Bool)

(declare-fun e!2933710 () Bool)

(assert (=> b!4703025 (= e!2933710 (forall!11413 (toList!5697 lt!1866071) lambda!210785))))

(assert (=> b!4703026 (= e!2933709 lt!1866664)))

(assert (=> b!4703026 (= lt!1866658 (+!2188 lt!1866071 (h!58834 (Cons!52549 lt!1866093 lt!1866088))))))

(assert (=> b!4703026 (= lt!1866664 (addToMapMapFromBucket!1336 (t!359889 (Cons!52549 lt!1866093 lt!1866088)) (+!2188 lt!1866071 (h!58834 (Cons!52549 lt!1866093 lt!1866088)))))))

(declare-fun lt!1866674 () Unit!126492)

(assert (=> b!4703026 (= lt!1866674 call!328802)))

(assert (=> b!4703026 (forall!11413 (toList!5697 lt!1866071) lambda!210784)))

(declare-fun lt!1866655 () Unit!126492)

(assert (=> b!4703026 (= lt!1866655 lt!1866674)))

(assert (=> b!4703026 call!328803))

(declare-fun lt!1866667 () Unit!126492)

(declare-fun Unit!126591 () Unit!126492)

(assert (=> b!4703026 (= lt!1866667 Unit!126591)))

(assert (=> b!4703026 (forall!11413 (t!359889 (Cons!52549 lt!1866093 lt!1866088)) lambda!210785)))

(declare-fun lt!1866666 () Unit!126492)

(declare-fun Unit!126592 () Unit!126492)

(assert (=> b!4703026 (= lt!1866666 Unit!126592)))

(declare-fun lt!1866669 () Unit!126492)

(declare-fun Unit!126593 () Unit!126492)

(assert (=> b!4703026 (= lt!1866669 Unit!126593)))

(declare-fun lt!1866675 () Unit!126492)

(assert (=> b!4703026 (= lt!1866675 (forallContained!3520 (toList!5697 lt!1866658) lambda!210785 (h!58834 (Cons!52549 lt!1866093 lt!1866088))))))

(assert (=> b!4703026 (contains!15840 lt!1866658 (_1!30299 (h!58834 (Cons!52549 lt!1866093 lt!1866088))))))

(declare-fun lt!1866665 () Unit!126492)

(declare-fun Unit!126594 () Unit!126492)

(assert (=> b!4703026 (= lt!1866665 Unit!126594)))

(assert (=> b!4703026 (contains!15840 lt!1866664 (_1!30299 (h!58834 (Cons!52549 lt!1866093 lt!1866088))))))

(declare-fun lt!1866673 () Unit!126492)

(declare-fun Unit!126595 () Unit!126492)

(assert (=> b!4703026 (= lt!1866673 Unit!126595)))

(assert (=> b!4703026 (forall!11413 (Cons!52549 lt!1866093 lt!1866088) lambda!210785)))

(declare-fun lt!1866660 () Unit!126492)

(declare-fun Unit!126596 () Unit!126492)

(assert (=> b!4703026 (= lt!1866660 Unit!126596)))

(assert (=> b!4703026 (forall!11413 (toList!5697 lt!1866658) lambda!210785)))

(declare-fun lt!1866672 () Unit!126492)

(declare-fun Unit!126597 () Unit!126492)

(assert (=> b!4703026 (= lt!1866672 Unit!126597)))

(declare-fun lt!1866671 () Unit!126492)

(declare-fun Unit!126598 () Unit!126492)

(assert (=> b!4703026 (= lt!1866671 Unit!126598)))

(declare-fun lt!1866661 () Unit!126492)

(assert (=> b!4703026 (= lt!1866661 (addForallContainsKeyThenBeforeAdding!737 lt!1866071 lt!1866664 (_1!30299 (h!58834 (Cons!52549 lt!1866093 lt!1866088))) (_2!30299 (h!58834 (Cons!52549 lt!1866093 lt!1866088)))))))

(assert (=> b!4703026 (forall!11413 (toList!5697 lt!1866071) lambda!210785)))

(declare-fun lt!1866656 () Unit!126492)

(assert (=> b!4703026 (= lt!1866656 lt!1866661)))

(assert (=> b!4703026 (forall!11413 (toList!5697 lt!1866071) lambda!210785)))

(declare-fun lt!1866663 () Unit!126492)

(declare-fun Unit!126599 () Unit!126492)

(assert (=> b!4703026 (= lt!1866663 Unit!126599)))

(declare-fun res!1985981 () Bool)

(assert (=> b!4703026 (= res!1985981 call!328801)))

(assert (=> b!4703026 (=> (not res!1985981) (not e!2933710))))

(assert (=> b!4703026 e!2933710))

(declare-fun lt!1866657 () Unit!126492)

(declare-fun Unit!126600 () Unit!126492)

(assert (=> b!4703026 (= lt!1866657 Unit!126600)))

(assert (= (and d!1496196 c!803860) b!4703024))

(assert (= (and d!1496196 (not c!803860)) b!4703026))

(assert (= (and b!4703026 res!1985981) b!4703025))

(assert (= (or b!4703024 b!4703026) bm!328796))

(assert (= (or b!4703024 b!4703026) bm!328798))

(assert (= (or b!4703024 b!4703026) bm!328797))

(assert (= (and d!1496196 res!1985983) b!4703022))

(assert (= (and b!4703022 res!1985982) b!4703023))

(declare-fun m!5620955 () Bool)

(assert (=> bm!328798 m!5620955))

(declare-fun m!5620957 () Bool)

(assert (=> bm!328797 m!5620957))

(declare-fun m!5620959 () Bool)

(assert (=> b!4703022 m!5620959))

(declare-fun m!5620961 () Bool)

(assert (=> b!4703026 m!5620961))

(declare-fun m!5620963 () Bool)

(assert (=> b!4703026 m!5620963))

(declare-fun m!5620965 () Bool)

(assert (=> b!4703026 m!5620965))

(declare-fun m!5620967 () Bool)

(assert (=> b!4703026 m!5620967))

(declare-fun m!5620969 () Bool)

(assert (=> b!4703026 m!5620969))

(declare-fun m!5620971 () Bool)

(assert (=> b!4703026 m!5620971))

(declare-fun m!5620973 () Bool)

(assert (=> b!4703026 m!5620973))

(declare-fun m!5620975 () Bool)

(assert (=> b!4703026 m!5620975))

(assert (=> b!4703026 m!5620961))

(declare-fun m!5620977 () Bool)

(assert (=> b!4703026 m!5620977))

(declare-fun m!5620979 () Bool)

(assert (=> b!4703026 m!5620979))

(assert (=> b!4703026 m!5620965))

(declare-fun m!5620981 () Bool)

(assert (=> b!4703026 m!5620981))

(assert (=> b!4703025 m!5620965))

(declare-fun m!5620983 () Bool)

(assert (=> d!1496196 m!5620983))

(declare-fun m!5620985 () Bool)

(assert (=> d!1496196 m!5620985))

(assert (=> bm!328796 m!5620123))

(declare-fun m!5620987 () Bool)

(assert (=> b!4703023 m!5620987))

(assert (=> b!4702585 d!1496196))

(declare-fun d!1496198 () Bool)

(declare-fun e!2933711 () Bool)

(assert (=> d!1496198 e!2933711))

(declare-fun res!1985984 () Bool)

(assert (=> d!1496198 (=> (not res!1985984) (not e!2933711))))

(declare-fun lt!1866678 () ListMap!5061)

(assert (=> d!1496198 (= res!1985984 (contains!15840 lt!1866678 (_1!30299 (h!58834 oldBucket!34))))))

(declare-fun lt!1866677 () List!52673)

(assert (=> d!1496198 (= lt!1866678 (ListMap!5062 lt!1866677))))

(declare-fun lt!1866676 () Unit!126492)

(declare-fun lt!1866679 () Unit!126492)

(assert (=> d!1496198 (= lt!1866676 lt!1866679)))

(assert (=> d!1496198 (= (getValueByKey!1860 lt!1866677 (_1!30299 (h!58834 oldBucket!34))) (Some!12209 (_2!30299 (h!58834 oldBucket!34))))))

(assert (=> d!1496198 (= lt!1866679 (lemmaContainsTupThenGetReturnValue!1040 lt!1866677 (_1!30299 (h!58834 oldBucket!34)) (_2!30299 (h!58834 oldBucket!34))))))

(assert (=> d!1496198 (= lt!1866677 (insertNoDuplicatedKeys!548 (toList!5697 lt!1866070) (_1!30299 (h!58834 oldBucket!34)) (_2!30299 (h!58834 oldBucket!34))))))

(assert (=> d!1496198 (= (+!2188 lt!1866070 (h!58834 oldBucket!34)) lt!1866678)))

(declare-fun b!4703027 () Bool)

(declare-fun res!1985985 () Bool)

(assert (=> b!4703027 (=> (not res!1985985) (not e!2933711))))

(assert (=> b!4703027 (= res!1985985 (= (getValueByKey!1860 (toList!5697 lt!1866678) (_1!30299 (h!58834 oldBucket!34))) (Some!12209 (_2!30299 (h!58834 oldBucket!34)))))))

(declare-fun b!4703028 () Bool)

(assert (=> b!4703028 (= e!2933711 (contains!15842 (toList!5697 lt!1866678) (h!58834 oldBucket!34)))))

(assert (= (and d!1496198 res!1985984) b!4703027))

(assert (= (and b!4703027 res!1985985) b!4703028))

(declare-fun m!5620989 () Bool)

(assert (=> d!1496198 m!5620989))

(declare-fun m!5620991 () Bool)

(assert (=> d!1496198 m!5620991))

(declare-fun m!5620993 () Bool)

(assert (=> d!1496198 m!5620993))

(declare-fun m!5620995 () Bool)

(assert (=> d!1496198 m!5620995))

(declare-fun m!5620997 () Bool)

(assert (=> b!4703027 m!5620997))

(declare-fun m!5620999 () Bool)

(assert (=> b!4703028 m!5620999))

(assert (=> b!4702585 d!1496198))

(declare-fun d!1496200 () Bool)

(assert (=> d!1496200 (= (eq!1063 (addToMapMapFromBucket!1336 (Cons!52549 lt!1866075 lt!1866068) lt!1866071) (+!2188 (addToMapMapFromBucket!1336 lt!1866068 lt!1866071) lt!1866075)) (= (content!9278 (toList!5697 (addToMapMapFromBucket!1336 (Cons!52549 lt!1866075 lt!1866068) lt!1866071))) (content!9278 (toList!5697 (+!2188 (addToMapMapFromBucket!1336 lt!1866068 lt!1866071) lt!1866075)))))))

(declare-fun bs!1096806 () Bool)

(assert (= bs!1096806 d!1496200))

(declare-fun m!5621001 () Bool)

(assert (=> bs!1096806 m!5621001))

(declare-fun m!5621003 () Bool)

(assert (=> bs!1096806 m!5621003))

(assert (=> b!4702585 d!1496200))

(declare-fun bs!1096807 () Bool)

(declare-fun d!1496202 () Bool)

(assert (= bs!1096807 (and d!1496202 d!1496096)))

(declare-fun lambda!210787 () Int)

(assert (=> bs!1096807 (= lambda!210787 lambda!210757)))

(declare-fun bs!1096808 () Bool)

(assert (= bs!1096808 (and d!1496202 d!1496078)))

(assert (=> bs!1096808 (= lambda!210787 lambda!210747)))

(declare-fun bs!1096809 () Bool)

(assert (= bs!1096809 (and d!1496202 d!1496092)))

(assert (=> bs!1096809 (= lambda!210787 lambda!210756)))

(declare-fun bs!1096810 () Bool)

(assert (= bs!1096810 (and d!1496202 d!1496186)))

(assert (=> bs!1096810 (= lambda!210787 lambda!210775)))

(declare-fun bs!1096811 () Bool)

(assert (= bs!1096811 (and d!1496202 d!1496088)))

(assert (=> bs!1096811 (= lambda!210787 lambda!210755)))

(declare-fun bs!1096812 () Bool)

(assert (= bs!1096812 (and d!1496202 d!1496026)))

(assert (=> bs!1096812 (= lambda!210787 lambda!210733)))

(declare-fun bs!1096813 () Bool)

(assert (= bs!1096813 (and d!1496202 d!1496150)))

(assert (=> bs!1096813 (not (= lambda!210787 lambda!210769))))

(declare-fun bs!1096814 () Bool)

(assert (= bs!1096814 (and d!1496202 d!1496120)))

(assert (=> bs!1096814 (= lambda!210787 lambda!210764)))

(declare-fun bs!1096815 () Bool)

(assert (= bs!1096815 (and d!1496202 d!1496192)))

(assert (=> bs!1096815 (= lambda!210787 lambda!210782)))

(declare-fun bs!1096816 () Bool)

(assert (= bs!1096816 (and d!1496202 d!1496028)))

(assert (=> bs!1096816 (= lambda!210787 lambda!210741)))

(declare-fun bs!1096817 () Bool)

(assert (= bs!1096817 (and d!1496202 d!1495992)))

(assert (=> bs!1096817 (= lambda!210787 lambda!210716)))

(declare-fun bs!1096818 () Bool)

(assert (= bs!1096818 (and d!1496202 start!477124)))

(assert (=> bs!1096818 (= lambda!210787 lambda!210629)))

(declare-fun bs!1096819 () Bool)

(assert (= bs!1096819 (and d!1496202 d!1496182)))

(assert (=> bs!1096819 (= lambda!210787 lambda!210774)))

(declare-fun lt!1866680 () ListMap!5061)

(assert (=> d!1496202 (invariantList!1450 (toList!5697 lt!1866680))))

(declare-fun e!2933712 () ListMap!5061)

(assert (=> d!1496202 (= lt!1866680 e!2933712)))

(declare-fun c!803861 () Bool)

(assert (=> d!1496202 (= c!803861 ((_ is Cons!52550) (Cons!52550 (tuple2!54013 hash!405 lt!1866088) (t!359890 (toList!5698 lm!2023)))))))

(assert (=> d!1496202 (forall!11411 (Cons!52550 (tuple2!54013 hash!405 lt!1866088) (t!359890 (toList!5698 lm!2023))) lambda!210787)))

(assert (=> d!1496202 (= (extractMap!1930 (Cons!52550 (tuple2!54013 hash!405 lt!1866088) (t!359890 (toList!5698 lm!2023)))) lt!1866680)))

(declare-fun b!4703029 () Bool)

(assert (=> b!4703029 (= e!2933712 (addToMapMapFromBucket!1336 (_2!30300 (h!58835 (Cons!52550 (tuple2!54013 hash!405 lt!1866088) (t!359890 (toList!5698 lm!2023))))) (extractMap!1930 (t!359890 (Cons!52550 (tuple2!54013 hash!405 lt!1866088) (t!359890 (toList!5698 lm!2023)))))))))

(declare-fun b!4703030 () Bool)

(assert (=> b!4703030 (= e!2933712 (ListMap!5062 Nil!52549))))

(assert (= (and d!1496202 c!803861) b!4703029))

(assert (= (and d!1496202 (not c!803861)) b!4703030))

(declare-fun m!5621005 () Bool)

(assert (=> d!1496202 m!5621005))

(declare-fun m!5621007 () Bool)

(assert (=> d!1496202 m!5621007))

(declare-fun m!5621009 () Bool)

(assert (=> b!4703029 m!5621009))

(assert (=> b!4703029 m!5621009))

(declare-fun m!5621011 () Bool)

(assert (=> b!4703029 m!5621011))

(assert (=> b!4702585 d!1496202))

(declare-fun b!4703031 () Bool)

(declare-fun e!2933718 () Unit!126492)

(declare-fun Unit!126601 () Unit!126492)

(assert (=> b!4703031 (= e!2933718 Unit!126601)))

(declare-fun bm!328799 () Bool)

(declare-fun call!328804 () Bool)

(declare-fun e!2933713 () List!52676)

(assert (=> bm!328799 (= call!328804 (contains!15843 e!2933713 key!4653))))

(declare-fun c!803862 () Bool)

(declare-fun c!803864 () Bool)

(assert (=> bm!328799 (= c!803862 c!803864)))

(declare-fun b!4703032 () Bool)

(assert (=> b!4703032 false))

(declare-fun lt!1866687 () Unit!126492)

(declare-fun lt!1866686 () Unit!126492)

(assert (=> b!4703032 (= lt!1866687 lt!1866686)))

(assert (=> b!4703032 (containsKey!3185 (toList!5697 lt!1866074) key!4653)))

(assert (=> b!4703032 (= lt!1866686 (lemmaInGetKeysListThenContainsKey!888 (toList!5697 lt!1866074) key!4653))))

(declare-fun Unit!126602 () Unit!126492)

(assert (=> b!4703032 (= e!2933718 Unit!126602)))

(declare-fun b!4703033 () Bool)

(declare-fun e!2933717 () Bool)

(declare-fun e!2933714 () Bool)

(assert (=> b!4703033 (= e!2933717 e!2933714)))

(declare-fun res!1985987 () Bool)

(assert (=> b!4703033 (=> (not res!1985987) (not e!2933714))))

(assert (=> b!4703033 (= res!1985987 (isDefined!9464 (getValueByKey!1860 (toList!5697 lt!1866074) key!4653)))))

(declare-fun b!4703034 () Bool)

(declare-fun e!2933716 () Unit!126492)

(assert (=> b!4703034 (= e!2933716 e!2933718)))

(declare-fun c!803863 () Bool)

(assert (=> b!4703034 (= c!803863 call!328804)))

(declare-fun b!4703035 () Bool)

(assert (=> b!4703035 (= e!2933713 (getKeysList!889 (toList!5697 lt!1866074)))))

(declare-fun b!4703036 () Bool)

(declare-fun e!2933715 () Bool)

(assert (=> b!4703036 (= e!2933715 (not (contains!15843 (keys!18803 lt!1866074) key!4653)))))

(declare-fun d!1496204 () Bool)

(assert (=> d!1496204 e!2933717))

(declare-fun res!1985986 () Bool)

(assert (=> d!1496204 (=> res!1985986 e!2933717)))

(assert (=> d!1496204 (= res!1985986 e!2933715)))

(declare-fun res!1985988 () Bool)

(assert (=> d!1496204 (=> (not res!1985988) (not e!2933715))))

(declare-fun lt!1866688 () Bool)

(assert (=> d!1496204 (= res!1985988 (not lt!1866688))))

(declare-fun lt!1866685 () Bool)

(assert (=> d!1496204 (= lt!1866688 lt!1866685)))

(declare-fun lt!1866682 () Unit!126492)

(assert (=> d!1496204 (= lt!1866682 e!2933716)))

(assert (=> d!1496204 (= c!803864 lt!1866685)))

(assert (=> d!1496204 (= lt!1866685 (containsKey!3185 (toList!5697 lt!1866074) key!4653))))

(assert (=> d!1496204 (= (contains!15840 lt!1866074 key!4653) lt!1866688)))

(declare-fun b!4703037 () Bool)

(declare-fun lt!1866684 () Unit!126492)

(assert (=> b!4703037 (= e!2933716 lt!1866684)))

(declare-fun lt!1866681 () Unit!126492)

(assert (=> b!4703037 (= lt!1866681 (lemmaContainsKeyImpliesGetValueByKeyDefined!1751 (toList!5697 lt!1866074) key!4653))))

(assert (=> b!4703037 (isDefined!9464 (getValueByKey!1860 (toList!5697 lt!1866074) key!4653))))

(declare-fun lt!1866683 () Unit!126492)

(assert (=> b!4703037 (= lt!1866683 lt!1866681)))

(assert (=> b!4703037 (= lt!1866684 (lemmaInListThenGetKeysListContains!884 (toList!5697 lt!1866074) key!4653))))

(assert (=> b!4703037 call!328804))

(declare-fun b!4703038 () Bool)

(assert (=> b!4703038 (= e!2933713 (keys!18803 lt!1866074))))

(declare-fun b!4703039 () Bool)

(assert (=> b!4703039 (= e!2933714 (contains!15843 (keys!18803 lt!1866074) key!4653))))

(assert (= (and d!1496204 c!803864) b!4703037))

(assert (= (and d!1496204 (not c!803864)) b!4703034))

(assert (= (and b!4703034 c!803863) b!4703032))

(assert (= (and b!4703034 (not c!803863)) b!4703031))

(assert (= (or b!4703037 b!4703034) bm!328799))

(assert (= (and bm!328799 c!803862) b!4703035))

(assert (= (and bm!328799 (not c!803862)) b!4703038))

(assert (= (and d!1496204 res!1985988) b!4703036))

(assert (= (and d!1496204 (not res!1985986)) b!4703033))

(assert (= (and b!4703033 res!1985987) b!4703039))

(declare-fun m!5621013 () Bool)

(assert (=> b!4703037 m!5621013))

(declare-fun m!5621015 () Bool)

(assert (=> b!4703037 m!5621015))

(assert (=> b!4703037 m!5621015))

(declare-fun m!5621017 () Bool)

(assert (=> b!4703037 m!5621017))

(declare-fun m!5621019 () Bool)

(assert (=> b!4703037 m!5621019))

(declare-fun m!5621021 () Bool)

(assert (=> b!4703035 m!5621021))

(assert (=> b!4703033 m!5621015))

(assert (=> b!4703033 m!5621015))

(assert (=> b!4703033 m!5621017))

(assert (=> b!4703036 m!5620487))

(assert (=> b!4703036 m!5620487))

(declare-fun m!5621023 () Bool)

(assert (=> b!4703036 m!5621023))

(assert (=> b!4703039 m!5620487))

(assert (=> b!4703039 m!5620487))

(assert (=> b!4703039 m!5621023))

(assert (=> b!4703038 m!5620487))

(declare-fun m!5621025 () Bool)

(assert (=> d!1496204 m!5621025))

(assert (=> b!4703032 m!5621025))

(declare-fun m!5621027 () Bool)

(assert (=> b!4703032 m!5621027))

(declare-fun m!5621029 () Bool)

(assert (=> bm!328799 m!5621029))

(assert (=> b!4702585 d!1496204))

(declare-fun d!1496206 () Bool)

(assert (=> d!1496206 (= (head!10072 oldBucket!34) (h!58834 oldBucket!34))))

(assert (=> b!4702585 d!1496206))

(declare-fun d!1496208 () Bool)

(declare-fun e!2933719 () Bool)

(assert (=> d!1496208 e!2933719))

(declare-fun res!1985989 () Bool)

(assert (=> d!1496208 (=> (not res!1985989) (not e!2933719))))

(declare-fun lt!1866691 () ListMap!5061)

(assert (=> d!1496208 (= res!1985989 (contains!15840 lt!1866691 (_1!30299 lt!1866075)))))

(declare-fun lt!1866690 () List!52673)

(assert (=> d!1496208 (= lt!1866691 (ListMap!5062 lt!1866690))))

(declare-fun lt!1866689 () Unit!126492)

(declare-fun lt!1866692 () Unit!126492)

(assert (=> d!1496208 (= lt!1866689 lt!1866692)))

(assert (=> d!1496208 (= (getValueByKey!1860 lt!1866690 (_1!30299 lt!1866075)) (Some!12209 (_2!30299 lt!1866075)))))

(assert (=> d!1496208 (= lt!1866692 (lemmaContainsTupThenGetReturnValue!1040 lt!1866690 (_1!30299 lt!1866075) (_2!30299 lt!1866075)))))

(assert (=> d!1496208 (= lt!1866690 (insertNoDuplicatedKeys!548 (toList!5697 (addToMapMapFromBucket!1336 lt!1866068 lt!1866071)) (_1!30299 lt!1866075) (_2!30299 lt!1866075)))))

(assert (=> d!1496208 (= (+!2188 (addToMapMapFromBucket!1336 lt!1866068 lt!1866071) lt!1866075) lt!1866691)))

(declare-fun b!4703040 () Bool)

(declare-fun res!1985990 () Bool)

(assert (=> b!4703040 (=> (not res!1985990) (not e!2933719))))

(assert (=> b!4703040 (= res!1985990 (= (getValueByKey!1860 (toList!5697 lt!1866691) (_1!30299 lt!1866075)) (Some!12209 (_2!30299 lt!1866075))))))

(declare-fun b!4703041 () Bool)

(assert (=> b!4703041 (= e!2933719 (contains!15842 (toList!5697 lt!1866691) lt!1866075))))

(assert (= (and d!1496208 res!1985989) b!4703040))

(assert (= (and b!4703040 res!1985990) b!4703041))

(declare-fun m!5621031 () Bool)

(assert (=> d!1496208 m!5621031))

(declare-fun m!5621033 () Bool)

(assert (=> d!1496208 m!5621033))

(declare-fun m!5621035 () Bool)

(assert (=> d!1496208 m!5621035))

(declare-fun m!5621037 () Bool)

(assert (=> d!1496208 m!5621037))

(declare-fun m!5621039 () Bool)

(assert (=> b!4703040 m!5621039))

(declare-fun m!5621041 () Bool)

(assert (=> b!4703041 m!5621041))

(assert (=> b!4702585 d!1496208))

(declare-fun bs!1096820 () Bool)

(declare-fun b!4703044 () Bool)

(assert (= bs!1096820 (and b!4703044 b!4703010)))

(declare-fun lambda!210788 () Int)

(assert (=> bs!1096820 (= lambda!210788 lambda!210770)))

(declare-fun bs!1096821 () Bool)

(assert (= bs!1096821 (and b!4703044 b!4703012)))

(assert (=> bs!1096821 (= (= lt!1866071 lt!1866616) (= lambda!210788 lambda!210772))))

(declare-fun bs!1096822 () Bool)

(assert (= bs!1096822 (and b!4703044 b!4703021)))

(assert (=> bs!1096822 (= lambda!210788 lambda!210777)))

(assert (=> bs!1096822 (= (= lt!1866071 lt!1866639) (= lambda!210788 lambda!210778))))

(declare-fun bs!1096823 () Bool)

(assert (= bs!1096823 (and b!4703044 b!4703026)))

(assert (=> bs!1096823 (= (= lt!1866071 lt!1866664) (= lambda!210788 lambda!210785))))

(declare-fun bs!1096824 () Bool)

(assert (= bs!1096824 (and b!4703044 b!4702697)))

(assert (=> bs!1096824 (= lambda!210788 lambda!210704)))

(declare-fun bs!1096825 () Bool)

(assert (= bs!1096825 (and b!4703044 d!1495998)))

(assert (=> bs!1096825 (not (= lambda!210788 lambda!210721))))

(declare-fun bs!1096826 () Bool)

(assert (= bs!1096826 (and b!4703044 b!4703024)))

(assert (=> bs!1096826 (= lambda!210788 lambda!210783)))

(assert (=> bs!1096821 (= lambda!210788 lambda!210771)))

(declare-fun bs!1096827 () Bool)

(assert (= bs!1096827 (and b!4703044 d!1495960)))

(assert (=> bs!1096827 (= (= lt!1866071 lt!1866279) (= lambda!210788 lambda!210708))))

(declare-fun bs!1096828 () Bool)

(assert (= bs!1096828 (and b!4703044 d!1496180)))

(assert (=> bs!1096828 (= (= lt!1866071 lt!1866620) (= lambda!210788 lambda!210773))))

(declare-fun bs!1096829 () Bool)

(assert (= bs!1096829 (and b!4703044 b!4702699)))

(assert (=> bs!1096829 (= lambda!210788 lambda!210705)))

(declare-fun bs!1096830 () Bool)

(assert (= bs!1096830 (and b!4703044 d!1496190)))

(assert (=> bs!1096830 (= (= lt!1866071 lt!1866643) (= lambda!210788 lambda!210779))))

(declare-fun bs!1096831 () Bool)

(assert (= bs!1096831 (and b!4703044 b!4703019)))

(assert (=> bs!1096831 (= lambda!210788 lambda!210776)))

(assert (=> bs!1096829 (= (= lt!1866071 lt!1866275) (= lambda!210788 lambda!210706))))

(assert (=> bs!1096823 (= lambda!210788 lambda!210784)))

(declare-fun bs!1096832 () Bool)

(assert (= bs!1096832 (and b!4703044 d!1496110)))

(assert (=> bs!1096832 (not (= lambda!210788 lambda!210759))))

(declare-fun bs!1096833 () Bool)

(assert (= bs!1096833 (and b!4703044 d!1496196)))

(assert (=> bs!1096833 (= (= lt!1866071 lt!1866668) (= lambda!210788 lambda!210786))))

(assert (=> b!4703044 true))

(declare-fun bs!1096834 () Bool)

(declare-fun b!4703046 () Bool)

(assert (= bs!1096834 (and b!4703046 b!4703010)))

(declare-fun lambda!210789 () Int)

(assert (=> bs!1096834 (= lambda!210789 lambda!210770)))

(declare-fun bs!1096835 () Bool)

(assert (= bs!1096835 (and b!4703046 b!4703012)))

(assert (=> bs!1096835 (= (= lt!1866071 lt!1866616) (= lambda!210789 lambda!210772))))

(declare-fun bs!1096836 () Bool)

(assert (= bs!1096836 (and b!4703046 b!4703021)))

(assert (=> bs!1096836 (= lambda!210789 lambda!210777)))

(declare-fun bs!1096837 () Bool)

(assert (= bs!1096837 (and b!4703046 b!4703026)))

(assert (=> bs!1096837 (= (= lt!1866071 lt!1866664) (= lambda!210789 lambda!210785))))

(declare-fun bs!1096838 () Bool)

(assert (= bs!1096838 (and b!4703046 b!4702697)))

(assert (=> bs!1096838 (= lambda!210789 lambda!210704)))

(declare-fun bs!1096839 () Bool)

(assert (= bs!1096839 (and b!4703046 d!1495998)))

(assert (=> bs!1096839 (not (= lambda!210789 lambda!210721))))

(declare-fun bs!1096840 () Bool)

(assert (= bs!1096840 (and b!4703046 b!4703024)))

(assert (=> bs!1096840 (= lambda!210789 lambda!210783)))

(assert (=> bs!1096835 (= lambda!210789 lambda!210771)))

(declare-fun bs!1096841 () Bool)

(assert (= bs!1096841 (and b!4703046 d!1495960)))

(assert (=> bs!1096841 (= (= lt!1866071 lt!1866279) (= lambda!210789 lambda!210708))))

(declare-fun bs!1096842 () Bool)

(assert (= bs!1096842 (and b!4703046 d!1496180)))

(assert (=> bs!1096842 (= (= lt!1866071 lt!1866620) (= lambda!210789 lambda!210773))))

(declare-fun bs!1096843 () Bool)

(assert (= bs!1096843 (and b!4703046 b!4702699)))

(assert (=> bs!1096843 (= lambda!210789 lambda!210705)))

(declare-fun bs!1096844 () Bool)

(assert (= bs!1096844 (and b!4703046 d!1496190)))

(assert (=> bs!1096844 (= (= lt!1866071 lt!1866643) (= lambda!210789 lambda!210779))))

(assert (=> bs!1096836 (= (= lt!1866071 lt!1866639) (= lambda!210789 lambda!210778))))

(declare-fun bs!1096845 () Bool)

(assert (= bs!1096845 (and b!4703046 b!4703044)))

(assert (=> bs!1096845 (= lambda!210789 lambda!210788)))

(declare-fun bs!1096846 () Bool)

(assert (= bs!1096846 (and b!4703046 b!4703019)))

(assert (=> bs!1096846 (= lambda!210789 lambda!210776)))

(assert (=> bs!1096843 (= (= lt!1866071 lt!1866275) (= lambda!210789 lambda!210706))))

(assert (=> bs!1096837 (= lambda!210789 lambda!210784)))

(declare-fun bs!1096847 () Bool)

(assert (= bs!1096847 (and b!4703046 d!1496110)))

(assert (=> bs!1096847 (not (= lambda!210789 lambda!210759))))

(declare-fun bs!1096848 () Bool)

(assert (= bs!1096848 (and b!4703046 d!1496196)))

(assert (=> bs!1096848 (= (= lt!1866071 lt!1866668) (= lambda!210789 lambda!210786))))

(assert (=> b!4703046 true))

(declare-fun lambda!210790 () Int)

(declare-fun lt!1866702 () ListMap!5061)

(assert (=> bs!1096834 (= (= lt!1866702 lt!1866071) (= lambda!210790 lambda!210770))))

(assert (=> bs!1096835 (= (= lt!1866702 lt!1866616) (= lambda!210790 lambda!210772))))

(assert (=> bs!1096836 (= (= lt!1866702 lt!1866071) (= lambda!210790 lambda!210777))))

(assert (=> bs!1096837 (= (= lt!1866702 lt!1866664) (= lambda!210790 lambda!210785))))

(assert (=> b!4703046 (= (= lt!1866702 lt!1866071) (= lambda!210790 lambda!210789))))

(assert (=> bs!1096838 (= (= lt!1866702 lt!1866071) (= lambda!210790 lambda!210704))))

(assert (=> bs!1096839 (not (= lambda!210790 lambda!210721))))

(assert (=> bs!1096840 (= (= lt!1866702 lt!1866071) (= lambda!210790 lambda!210783))))

(assert (=> bs!1096835 (= (= lt!1866702 lt!1866071) (= lambda!210790 lambda!210771))))

(assert (=> bs!1096841 (= (= lt!1866702 lt!1866279) (= lambda!210790 lambda!210708))))

(assert (=> bs!1096842 (= (= lt!1866702 lt!1866620) (= lambda!210790 lambda!210773))))

(assert (=> bs!1096843 (= (= lt!1866702 lt!1866071) (= lambda!210790 lambda!210705))))

(assert (=> bs!1096844 (= (= lt!1866702 lt!1866643) (= lambda!210790 lambda!210779))))

(assert (=> bs!1096836 (= (= lt!1866702 lt!1866639) (= lambda!210790 lambda!210778))))

(assert (=> bs!1096845 (= (= lt!1866702 lt!1866071) (= lambda!210790 lambda!210788))))

(assert (=> bs!1096846 (= (= lt!1866702 lt!1866071) (= lambda!210790 lambda!210776))))

(assert (=> bs!1096843 (= (= lt!1866702 lt!1866275) (= lambda!210790 lambda!210706))))

(assert (=> bs!1096837 (= (= lt!1866702 lt!1866071) (= lambda!210790 lambda!210784))))

(assert (=> bs!1096847 (not (= lambda!210790 lambda!210759))))

(assert (=> bs!1096848 (= (= lt!1866702 lt!1866668) (= lambda!210790 lambda!210786))))

(assert (=> b!4703046 true))

(declare-fun bs!1096849 () Bool)

(declare-fun d!1496210 () Bool)

(assert (= bs!1096849 (and d!1496210 b!4703010)))

(declare-fun lambda!210791 () Int)

(declare-fun lt!1866706 () ListMap!5061)

(assert (=> bs!1096849 (= (= lt!1866706 lt!1866071) (= lambda!210791 lambda!210770))))

(declare-fun bs!1096850 () Bool)

(assert (= bs!1096850 (and d!1496210 b!4703012)))

(assert (=> bs!1096850 (= (= lt!1866706 lt!1866616) (= lambda!210791 lambda!210772))))

(declare-fun bs!1096851 () Bool)

(assert (= bs!1096851 (and d!1496210 b!4703021)))

(assert (=> bs!1096851 (= (= lt!1866706 lt!1866071) (= lambda!210791 lambda!210777))))

(declare-fun bs!1096852 () Bool)

(assert (= bs!1096852 (and d!1496210 b!4703026)))

(assert (=> bs!1096852 (= (= lt!1866706 lt!1866664) (= lambda!210791 lambda!210785))))

(declare-fun bs!1096853 () Bool)

(assert (= bs!1096853 (and d!1496210 b!4703046)))

(assert (=> bs!1096853 (= (= lt!1866706 lt!1866071) (= lambda!210791 lambda!210789))))

(declare-fun bs!1096854 () Bool)

(assert (= bs!1096854 (and d!1496210 b!4702697)))

(assert (=> bs!1096854 (= (= lt!1866706 lt!1866071) (= lambda!210791 lambda!210704))))

(declare-fun bs!1096855 () Bool)

(assert (= bs!1096855 (and d!1496210 d!1495998)))

(assert (=> bs!1096855 (not (= lambda!210791 lambda!210721))))

(declare-fun bs!1096856 () Bool)

(assert (= bs!1096856 (and d!1496210 b!4703024)))

(assert (=> bs!1096856 (= (= lt!1866706 lt!1866071) (= lambda!210791 lambda!210783))))

(assert (=> bs!1096850 (= (= lt!1866706 lt!1866071) (= lambda!210791 lambda!210771))))

(declare-fun bs!1096857 () Bool)

(assert (= bs!1096857 (and d!1496210 d!1495960)))

(assert (=> bs!1096857 (= (= lt!1866706 lt!1866279) (= lambda!210791 lambda!210708))))

(declare-fun bs!1096858 () Bool)

(assert (= bs!1096858 (and d!1496210 d!1496180)))

(assert (=> bs!1096858 (= (= lt!1866706 lt!1866620) (= lambda!210791 lambda!210773))))

(assert (=> bs!1096853 (= (= lt!1866706 lt!1866702) (= lambda!210791 lambda!210790))))

(declare-fun bs!1096859 () Bool)

(assert (= bs!1096859 (and d!1496210 b!4702699)))

(assert (=> bs!1096859 (= (= lt!1866706 lt!1866071) (= lambda!210791 lambda!210705))))

(declare-fun bs!1096860 () Bool)

(assert (= bs!1096860 (and d!1496210 d!1496190)))

(assert (=> bs!1096860 (= (= lt!1866706 lt!1866643) (= lambda!210791 lambda!210779))))

(assert (=> bs!1096851 (= (= lt!1866706 lt!1866639) (= lambda!210791 lambda!210778))))

(declare-fun bs!1096861 () Bool)

(assert (= bs!1096861 (and d!1496210 b!4703044)))

(assert (=> bs!1096861 (= (= lt!1866706 lt!1866071) (= lambda!210791 lambda!210788))))

(declare-fun bs!1096862 () Bool)

(assert (= bs!1096862 (and d!1496210 b!4703019)))

(assert (=> bs!1096862 (= (= lt!1866706 lt!1866071) (= lambda!210791 lambda!210776))))

(assert (=> bs!1096859 (= (= lt!1866706 lt!1866275) (= lambda!210791 lambda!210706))))

(assert (=> bs!1096852 (= (= lt!1866706 lt!1866071) (= lambda!210791 lambda!210784))))

(declare-fun bs!1096863 () Bool)

(assert (= bs!1096863 (and d!1496210 d!1496110)))

(assert (=> bs!1096863 (not (= lambda!210791 lambda!210759))))

(declare-fun bs!1096864 () Bool)

(assert (= bs!1096864 (and d!1496210 d!1496196)))

(assert (=> bs!1096864 (= (= lt!1866706 lt!1866668) (= lambda!210791 lambda!210786))))

(assert (=> d!1496210 true))

(declare-fun b!4703042 () Bool)

(declare-fun res!1985992 () Bool)

(declare-fun e!2933720 () Bool)

(assert (=> b!4703042 (=> (not res!1985992) (not e!2933720))))

(assert (=> b!4703042 (= res!1985992 (forall!11413 (toList!5697 lt!1866071) lambda!210791))))

(declare-fun bm!328800 () Bool)

(declare-fun call!328806 () Unit!126492)

(assert (=> bm!328800 (= call!328806 (lemmaContainsAllItsOwnKeys!738 lt!1866071))))

(declare-fun bm!328801 () Bool)

(declare-fun lt!1866696 () ListMap!5061)

(declare-fun c!803865 () Bool)

(declare-fun call!328807 () Bool)

(assert (=> bm!328801 (= call!328807 (forall!11413 (ite c!803865 (toList!5697 lt!1866071) (toList!5697 lt!1866696)) (ite c!803865 lambda!210788 lambda!210790)))))

(assert (=> d!1496210 e!2933720))

(declare-fun res!1985993 () Bool)

(assert (=> d!1496210 (=> (not res!1985993) (not e!2933720))))

(assert (=> d!1496210 (= res!1985993 (forall!11413 (Cons!52549 lt!1866075 lt!1866068) lambda!210791))))

(declare-fun e!2933721 () ListMap!5061)

(assert (=> d!1496210 (= lt!1866706 e!2933721)))

(assert (=> d!1496210 (= c!803865 ((_ is Nil!52549) (Cons!52549 lt!1866075 lt!1866068)))))

(assert (=> d!1496210 (noDuplicateKeys!1904 (Cons!52549 lt!1866075 lt!1866068))))

(assert (=> d!1496210 (= (addToMapMapFromBucket!1336 (Cons!52549 lt!1866075 lt!1866068) lt!1866071) lt!1866706)))

(declare-fun b!4703043 () Bool)

(assert (=> b!4703043 (= e!2933720 (invariantList!1450 (toList!5697 lt!1866706)))))

(declare-fun bm!328802 () Bool)

(declare-fun call!328805 () Bool)

(assert (=> bm!328802 (= call!328805 (forall!11413 (ite c!803865 (toList!5697 lt!1866071) (Cons!52549 lt!1866075 lt!1866068)) (ite c!803865 lambda!210788 lambda!210790)))))

(assert (=> b!4703044 (= e!2933721 lt!1866071)))

(declare-fun lt!1866708 () Unit!126492)

(assert (=> b!4703044 (= lt!1866708 call!328806)))

(assert (=> b!4703044 call!328807))

(declare-fun lt!1866700 () Unit!126492)

(assert (=> b!4703044 (= lt!1866700 lt!1866708)))

(assert (=> b!4703044 call!328805))

(declare-fun lt!1866697 () Unit!126492)

(declare-fun Unit!126603 () Unit!126492)

(assert (=> b!4703044 (= lt!1866697 Unit!126603)))

(declare-fun b!4703045 () Bool)

(declare-fun e!2933722 () Bool)

(assert (=> b!4703045 (= e!2933722 (forall!11413 (toList!5697 lt!1866071) lambda!210790))))

(assert (=> b!4703046 (= e!2933721 lt!1866702)))

(assert (=> b!4703046 (= lt!1866696 (+!2188 lt!1866071 (h!58834 (Cons!52549 lt!1866075 lt!1866068))))))

(assert (=> b!4703046 (= lt!1866702 (addToMapMapFromBucket!1336 (t!359889 (Cons!52549 lt!1866075 lt!1866068)) (+!2188 lt!1866071 (h!58834 (Cons!52549 lt!1866075 lt!1866068)))))))

(declare-fun lt!1866712 () Unit!126492)

(assert (=> b!4703046 (= lt!1866712 call!328806)))

(assert (=> b!4703046 (forall!11413 (toList!5697 lt!1866071) lambda!210789)))

(declare-fun lt!1866693 () Unit!126492)

(assert (=> b!4703046 (= lt!1866693 lt!1866712)))

(assert (=> b!4703046 call!328807))

(declare-fun lt!1866705 () Unit!126492)

(declare-fun Unit!126604 () Unit!126492)

(assert (=> b!4703046 (= lt!1866705 Unit!126604)))

(assert (=> b!4703046 (forall!11413 (t!359889 (Cons!52549 lt!1866075 lt!1866068)) lambda!210790)))

(declare-fun lt!1866704 () Unit!126492)

(declare-fun Unit!126605 () Unit!126492)

(assert (=> b!4703046 (= lt!1866704 Unit!126605)))

(declare-fun lt!1866707 () Unit!126492)

(declare-fun Unit!126606 () Unit!126492)

(assert (=> b!4703046 (= lt!1866707 Unit!126606)))

(declare-fun lt!1866713 () Unit!126492)

(assert (=> b!4703046 (= lt!1866713 (forallContained!3520 (toList!5697 lt!1866696) lambda!210790 (h!58834 (Cons!52549 lt!1866075 lt!1866068))))))

(assert (=> b!4703046 (contains!15840 lt!1866696 (_1!30299 (h!58834 (Cons!52549 lt!1866075 lt!1866068))))))

(declare-fun lt!1866703 () Unit!126492)

(declare-fun Unit!126607 () Unit!126492)

(assert (=> b!4703046 (= lt!1866703 Unit!126607)))

(assert (=> b!4703046 (contains!15840 lt!1866702 (_1!30299 (h!58834 (Cons!52549 lt!1866075 lt!1866068))))))

(declare-fun lt!1866711 () Unit!126492)

(declare-fun Unit!126608 () Unit!126492)

(assert (=> b!4703046 (= lt!1866711 Unit!126608)))

(assert (=> b!4703046 (forall!11413 (Cons!52549 lt!1866075 lt!1866068) lambda!210790)))

(declare-fun lt!1866698 () Unit!126492)

(declare-fun Unit!126609 () Unit!126492)

(assert (=> b!4703046 (= lt!1866698 Unit!126609)))

(assert (=> b!4703046 (forall!11413 (toList!5697 lt!1866696) lambda!210790)))

(declare-fun lt!1866710 () Unit!126492)

(declare-fun Unit!126610 () Unit!126492)

(assert (=> b!4703046 (= lt!1866710 Unit!126610)))

(declare-fun lt!1866709 () Unit!126492)

(declare-fun Unit!126611 () Unit!126492)

(assert (=> b!4703046 (= lt!1866709 Unit!126611)))

(declare-fun lt!1866699 () Unit!126492)

(assert (=> b!4703046 (= lt!1866699 (addForallContainsKeyThenBeforeAdding!737 lt!1866071 lt!1866702 (_1!30299 (h!58834 (Cons!52549 lt!1866075 lt!1866068))) (_2!30299 (h!58834 (Cons!52549 lt!1866075 lt!1866068)))))))

(assert (=> b!4703046 (forall!11413 (toList!5697 lt!1866071) lambda!210790)))

(declare-fun lt!1866694 () Unit!126492)

(assert (=> b!4703046 (= lt!1866694 lt!1866699)))

(assert (=> b!4703046 (forall!11413 (toList!5697 lt!1866071) lambda!210790)))

(declare-fun lt!1866701 () Unit!126492)

(declare-fun Unit!126612 () Unit!126492)

(assert (=> b!4703046 (= lt!1866701 Unit!126612)))

(declare-fun res!1985991 () Bool)

(assert (=> b!4703046 (= res!1985991 call!328805)))

(assert (=> b!4703046 (=> (not res!1985991) (not e!2933722))))

(assert (=> b!4703046 e!2933722))

(declare-fun lt!1866695 () Unit!126492)

(declare-fun Unit!126613 () Unit!126492)

(assert (=> b!4703046 (= lt!1866695 Unit!126613)))

(assert (= (and d!1496210 c!803865) b!4703044))

(assert (= (and d!1496210 (not c!803865)) b!4703046))

(assert (= (and b!4703046 res!1985991) b!4703045))

(assert (= (or b!4703044 b!4703046) bm!328800))

(assert (= (or b!4703044 b!4703046) bm!328802))

(assert (= (or b!4703044 b!4703046) bm!328801))

(assert (= (and d!1496210 res!1985993) b!4703042))

(assert (= (and b!4703042 res!1985992) b!4703043))

(declare-fun m!5621043 () Bool)

(assert (=> bm!328802 m!5621043))

(declare-fun m!5621045 () Bool)

(assert (=> bm!328801 m!5621045))

(declare-fun m!5621047 () Bool)

(assert (=> b!4703042 m!5621047))

(declare-fun m!5621049 () Bool)

(assert (=> b!4703046 m!5621049))

(declare-fun m!5621051 () Bool)

(assert (=> b!4703046 m!5621051))

(declare-fun m!5621053 () Bool)

(assert (=> b!4703046 m!5621053))

(declare-fun m!5621055 () Bool)

(assert (=> b!4703046 m!5621055))

(declare-fun m!5621057 () Bool)

(assert (=> b!4703046 m!5621057))

(declare-fun m!5621059 () Bool)

(assert (=> b!4703046 m!5621059))

(declare-fun m!5621061 () Bool)

(assert (=> b!4703046 m!5621061))

(declare-fun m!5621063 () Bool)

(assert (=> b!4703046 m!5621063))

(assert (=> b!4703046 m!5621049))

(declare-fun m!5621065 () Bool)

(assert (=> b!4703046 m!5621065))

(declare-fun m!5621067 () Bool)

(assert (=> b!4703046 m!5621067))

(assert (=> b!4703046 m!5621053))

(declare-fun m!5621069 () Bool)

(assert (=> b!4703046 m!5621069))

(assert (=> b!4703045 m!5621053))

(declare-fun m!5621071 () Bool)

(assert (=> d!1496210 m!5621071))

(declare-fun m!5621073 () Bool)

(assert (=> d!1496210 m!5621073))

(assert (=> bm!328800 m!5620123))

(declare-fun m!5621075 () Bool)

(assert (=> b!4703043 m!5621075))

(assert (=> b!4702585 d!1496210))

(declare-fun d!1496212 () Bool)

(assert (=> d!1496212 (= (eq!1063 lt!1866077 (+!2188 lt!1866083 (h!58834 oldBucket!34))) (= (content!9278 (toList!5697 lt!1866077)) (content!9278 (toList!5697 (+!2188 lt!1866083 (h!58834 oldBucket!34))))))))

(declare-fun bs!1096865 () Bool)

(assert (= bs!1096865 d!1496212))

(declare-fun m!5621077 () Bool)

(assert (=> bs!1096865 m!5621077))

(declare-fun m!5621079 () Bool)

(assert (=> bs!1096865 m!5621079))

(assert (=> b!4702574 d!1496212))

(declare-fun d!1496214 () Bool)

(declare-fun e!2933723 () Bool)

(assert (=> d!1496214 e!2933723))

(declare-fun res!1985994 () Bool)

(assert (=> d!1496214 (=> (not res!1985994) (not e!2933723))))

(declare-fun lt!1866716 () ListMap!5061)

(assert (=> d!1496214 (= res!1985994 (contains!15840 lt!1866716 (_1!30299 (h!58834 oldBucket!34))))))

(declare-fun lt!1866715 () List!52673)

(assert (=> d!1496214 (= lt!1866716 (ListMap!5062 lt!1866715))))

(declare-fun lt!1866714 () Unit!126492)

(declare-fun lt!1866717 () Unit!126492)

(assert (=> d!1496214 (= lt!1866714 lt!1866717)))

(assert (=> d!1496214 (= (getValueByKey!1860 lt!1866715 (_1!30299 (h!58834 oldBucket!34))) (Some!12209 (_2!30299 (h!58834 oldBucket!34))))))

(assert (=> d!1496214 (= lt!1866717 (lemmaContainsTupThenGetReturnValue!1040 lt!1866715 (_1!30299 (h!58834 oldBucket!34)) (_2!30299 (h!58834 oldBucket!34))))))

(assert (=> d!1496214 (= lt!1866715 (insertNoDuplicatedKeys!548 (toList!5697 lt!1866083) (_1!30299 (h!58834 oldBucket!34)) (_2!30299 (h!58834 oldBucket!34))))))

(assert (=> d!1496214 (= (+!2188 lt!1866083 (h!58834 oldBucket!34)) lt!1866716)))

(declare-fun b!4703047 () Bool)

(declare-fun res!1985995 () Bool)

(assert (=> b!4703047 (=> (not res!1985995) (not e!2933723))))

(assert (=> b!4703047 (= res!1985995 (= (getValueByKey!1860 (toList!5697 lt!1866716) (_1!30299 (h!58834 oldBucket!34))) (Some!12209 (_2!30299 (h!58834 oldBucket!34)))))))

(declare-fun b!4703048 () Bool)

(assert (=> b!4703048 (= e!2933723 (contains!15842 (toList!5697 lt!1866716) (h!58834 oldBucket!34)))))

(assert (= (and d!1496214 res!1985994) b!4703047))

(assert (= (and b!4703047 res!1985995) b!4703048))

(declare-fun m!5621081 () Bool)

(assert (=> d!1496214 m!5621081))

(declare-fun m!5621083 () Bool)

(assert (=> d!1496214 m!5621083))

(declare-fun m!5621085 () Bool)

(assert (=> d!1496214 m!5621085))

(declare-fun m!5621087 () Bool)

(assert (=> d!1496214 m!5621087))

(declare-fun m!5621089 () Bool)

(assert (=> b!4703047 m!5621089))

(declare-fun m!5621091 () Bool)

(assert (=> b!4703048 m!5621091))

(assert (=> b!4702574 d!1496214))

(declare-fun d!1496216 () Bool)

(assert (=> d!1496216 (= (eq!1063 lt!1866064 (+!2188 lt!1866083 (h!58834 oldBucket!34))) (= (content!9278 (toList!5697 lt!1866064)) (content!9278 (toList!5697 (+!2188 lt!1866083 (h!58834 oldBucket!34))))))))

(declare-fun bs!1096866 () Bool)

(assert (= bs!1096866 d!1496216))

(declare-fun m!5621093 () Bool)

(assert (=> bs!1096866 m!5621093))

(assert (=> bs!1096866 m!5621079))

(assert (=> b!4702574 d!1496216))

(declare-fun d!1496218 () Bool)

(assert (=> d!1496218 (eq!1063 (+!2188 lt!1866082 (tuple2!54011 (_1!30299 (h!58834 oldBucket!34)) (_2!30299 (h!58834 oldBucket!34)))) (+!2188 lt!1866083 (tuple2!54011 (_1!30299 (h!58834 oldBucket!34)) (_2!30299 (h!58834 oldBucket!34)))))))

(declare-fun lt!1866720 () Unit!126492)

(declare-fun choose!32953 (ListMap!5061 ListMap!5061 K!13910 V!14156) Unit!126492)

(assert (=> d!1496218 (= lt!1866720 (choose!32953 lt!1866082 lt!1866083 (_1!30299 (h!58834 oldBucket!34)) (_2!30299 (h!58834 oldBucket!34))))))

(assert (=> d!1496218 (eq!1063 lt!1866082 lt!1866083)))

(assert (=> d!1496218 (= (lemmaAddToEqMapsPreservesEq!86 lt!1866082 lt!1866083 (_1!30299 (h!58834 oldBucket!34)) (_2!30299 (h!58834 oldBucket!34))) lt!1866720)))

(declare-fun bs!1096867 () Bool)

(assert (= bs!1096867 d!1496218))

(declare-fun m!5621095 () Bool)

(assert (=> bs!1096867 m!5621095))

(declare-fun m!5621097 () Bool)

(assert (=> bs!1096867 m!5621097))

(declare-fun m!5621099 () Bool)

(assert (=> bs!1096867 m!5621099))

(assert (=> bs!1096867 m!5621099))

(assert (=> bs!1096867 m!5621095))

(declare-fun m!5621101 () Bool)

(assert (=> bs!1096867 m!5621101))

(declare-fun m!5621103 () Bool)

(assert (=> bs!1096867 m!5621103))

(assert (=> b!4702574 d!1496218))

(declare-fun d!1496220 () Bool)

(assert (=> d!1496220 (= (eq!1063 lt!1866072 lt!1866077) (= (content!9278 (toList!5697 lt!1866072)) (content!9278 (toList!5697 lt!1866077))))))

(declare-fun bs!1096868 () Bool)

(assert (= bs!1096868 d!1496220))

(assert (=> bs!1096868 m!5620819))

(assert (=> bs!1096868 m!5621077))

(assert (=> b!4702586 d!1496220))

(declare-fun d!1496222 () Bool)

(assert (=> d!1496222 (= (head!10071 (toList!5698 lm!2023)) (h!58835 (toList!5698 lm!2023)))))

(assert (=> b!4702575 d!1496222))

(declare-fun tp!1346780 () Bool)

(declare-fun e!2933726 () Bool)

(declare-fun b!4703053 () Bool)

(assert (=> b!4703053 (= e!2933726 (and tp_is_empty!30909 tp_is_empty!30911 tp!1346780))))

(assert (=> b!4702572 (= tp!1346767 e!2933726)))

(assert (= (and b!4702572 ((_ is Cons!52549) (t!359889 newBucket!218))) b!4703053))

(declare-fun b!4703058 () Bool)

(declare-fun e!2933729 () Bool)

(declare-fun tp!1346785 () Bool)

(declare-fun tp!1346786 () Bool)

(assert (=> b!4703058 (= e!2933729 (and tp!1346785 tp!1346786))))

(assert (=> b!4702569 (= tp!1346765 e!2933729)))

(assert (= (and b!4702569 ((_ is Cons!52550) (toList!5698 lm!2023))) b!4703058))

(declare-fun tp!1346787 () Bool)

(declare-fun e!2933730 () Bool)

(declare-fun b!4703059 () Bool)

(assert (=> b!4703059 (= e!2933730 (and tp_is_empty!30909 tp_is_empty!30911 tp!1346787))))

(assert (=> b!4702590 (= tp!1346766 e!2933730)))

(assert (= (and b!4702590 ((_ is Cons!52549) (t!359889 oldBucket!34))) b!4703059))

(declare-fun b_lambda!177447 () Bool)

(assert (= b_lambda!177439 (or start!477124 b_lambda!177447)))

(declare-fun bs!1096869 () Bool)

(declare-fun d!1496224 () Bool)

(assert (= bs!1096869 (and d!1496224 start!477124)))

(assert (=> bs!1096869 (= (dynLambda!21753 lambda!210629 (h!58835 lt!1866100)) (noDuplicateKeys!1904 (_2!30300 (h!58835 lt!1866100))))))

(declare-fun m!5621105 () Bool)

(assert (=> bs!1096869 m!5621105))

(assert (=> b!4702992 d!1496224))

(declare-fun b_lambda!177449 () Bool)

(assert (= b_lambda!177433 (or start!477124 b_lambda!177449)))

(declare-fun bs!1096870 () Bool)

(declare-fun d!1496226 () Bool)

(assert (= bs!1096870 (and d!1496226 start!477124)))

(assert (=> bs!1096870 (= (dynLambda!21753 lambda!210629 lt!1866087) (noDuplicateKeys!1904 (_2!30300 lt!1866087)))))

(declare-fun m!5621107 () Bool)

(assert (=> bs!1096870 m!5621107))

(assert (=> d!1496000 d!1496226))

(declare-fun b_lambda!177451 () Bool)

(assert (= b_lambda!177437 (or start!477124 b_lambda!177451)))

(declare-fun bs!1096871 () Bool)

(declare-fun d!1496228 () Bool)

(assert (= bs!1096871 (and d!1496228 start!477124)))

(assert (=> bs!1096871 (= (dynLambda!21753 lambda!210629 (h!58835 (toList!5698 lm!2023))) (noDuplicateKeys!1904 (_2!30300 (h!58835 (toList!5698 lm!2023)))))))

(assert (=> bs!1096871 m!5620121))

(assert (=> b!4702922 d!1496228))

(check-sat (not d!1496212) (not d!1496162) (not b!4703015) (not b!4702973) (not b!4702967) (not d!1496218) (not d!1496132) (not d!1496194) (not bs!1096870) (not bm!328792) (not bm!328801) (not b!4703018) (not b!4702923) (not b!4702834) (not b!4702965) (not b!4702981) (not b!4702882) (not b!4703059) (not d!1496050) (not d!1496028) (not b_lambda!177451) (not b!4703029) (not b!4703013) (not d!1496070) (not d!1496096) (not d!1495996) (not b!4703042) (not b!4702869) (not b!4703037) (not b!4703021) (not d!1496174) (not d!1496164) (not d!1496000) (not b!4703012) (not d!1496084) (not d!1496148) (not b!4702871) (not b!4702974) (not d!1496180) (not d!1496122) (not d!1496196) (not b!4702970) (not d!1495960) (not b!4702873) (not d!1496192) (not bm!328790) (not d!1496058) (not b!4703011) (not d!1496110) (not b!4703058) (not b!4703022) (not b!4702908) (not d!1496210) (not d!1496060) (not b!4703023) (not bm!328796) (not d!1496128) (not d!1496080) (not b!4703039) (not d!1496120) (not b!4703006) (not bm!328771) (not d!1496176) (not b!4702963) (not b!4702969) (not bm!328789) (not b!4702914) (not d!1496086) (not d!1496166) tp_is_empty!30911 (not b!4702748) (not b!4703040) (not d!1496104) (not d!1496150) (not b!4702876) (not d!1495934) (not d!1496054) (not b!4702764) (not b!4703045) (not b!4703033) (not b!4703041) (not bm!328773) (not bs!1096869) (not b!4702751) (not b!4702905) (not bm!328794) (not bm!328800) (not d!1496074) (not b!4702994) (not b!4702699) (not b!4702964) (not b!4703047) (not d!1496088) (not b!4702959) (not b!4702883) (not b!4703048) (not d!1495992) (not d!1496156) (not b!4702960) (not d!1496208) (not b!4703007) (not b!4703035) (not b!4702835) (not d!1495998) (not b!4702832) tp_is_empty!30909 (not d!1496076) (not b!4702746) (not b!4702993) (not d!1496092) (not d!1496186) (not d!1496082) (not b!4702745) (not b!4703046) (not d!1496214) (not d!1496200) (not bm!328793) (not bm!328798) (not d!1495954) (not bm!328797) (not d!1496204) (not b!4702726) (not b!4702966) (not b!4702889) (not d!1496220) (not d!1496130) (not bm!328799) (not b!4703032) (not b!4703038) (not b!4703053) (not b!4702632) (not bm!328772) (not b!4702695) (not b!4703008) (not b!4702841) (not b!4703026) (not b!4702980) (not d!1496190) (not b!4702906) (not b!4702934) (not b!4702962) (not d!1496178) (not b!4703025) (not b!4703043) (not b!4703028) (not d!1496198) (not d!1496026) (not b!4702888) (not d!1496112) (not b!4703027) (not d!1496188) (not d!1496016) (not d!1496078) (not d!1496216) (not d!1496202) (not d!1496004) (not b!4703020) (not d!1496006) (not bm!328802) (not b_lambda!177449) (not b!4702904) (not b!4702833) (not bm!328791) (not b!4703017) (not b_lambda!177447) (not b!4703009) (not bm!328795) (not b!4702749) (not d!1496152) (not b!4702713) (not bs!1096871) (not b!4702933) (not d!1496182) (not b!4702698) (not b!4702988) (not b!4702696) (not b!4703036))
(check-sat)
