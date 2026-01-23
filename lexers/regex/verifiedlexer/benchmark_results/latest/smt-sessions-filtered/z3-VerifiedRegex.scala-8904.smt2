; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!477556 () Bool)

(assert start!477556)

(declare-fun b!4704451 () Bool)

(declare-fun e!2934587 () Bool)

(declare-fun e!2934574 () Bool)

(assert (=> b!4704451 (= e!2934587 e!2934574)))

(declare-fun res!1986874 () Bool)

(assert (=> b!4704451 (=> (not res!1986874) (not e!2934574))))

(declare-fun lt!1868635 () (_ BitVec 64))

(declare-fun hash!405 () (_ BitVec 64))

(assert (=> b!4704451 (= res!1986874 (= lt!1868635 hash!405))))

(declare-datatypes ((Hashable!6279 0))(
  ( (HashableExt!6278 (__x!31982 Int)) )
))
(declare-fun hashF!1323 () Hashable!6279)

(declare-datatypes ((K!13925 0))(
  ( (K!13926 (val!19411 Int)) )
))
(declare-fun key!4653 () K!13925)

(declare-fun hash!4206 (Hashable!6279 K!13925) (_ BitVec 64))

(assert (=> b!4704451 (= lt!1868635 (hash!4206 hashF!1323 key!4653))))

(declare-fun b!4704452 () Bool)

(declare-fun res!1986875 () Bool)

(declare-fun e!2934584 () Bool)

(assert (=> b!4704452 (=> res!1986875 e!2934584)))

(declare-datatypes ((V!14171 0))(
  ( (V!14172 (val!19412 Int)) )
))
(declare-datatypes ((tuple2!54034 0))(
  ( (tuple2!54035 (_1!30311 K!13925) (_2!30311 V!14171)) )
))
(declare-datatypes ((List!52691 0))(
  ( (Nil!52567) (Cons!52567 (h!58858 tuple2!54034) (t!359913 List!52691)) )
))
(declare-fun lt!1868646 () List!52691)

(declare-fun oldBucket!34 () List!52691)

(declare-fun removePairForKey!1505 (List!52691 K!13925) List!52691)

(assert (=> b!4704452 (= res!1986875 (not (= (removePairForKey!1505 (t!359913 oldBucket!34) key!4653) lt!1868646)))))

(declare-fun b!4704453 () Bool)

(declare-fun e!2934582 () Bool)

(assert (=> b!4704453 (= e!2934582 e!2934587)))

(declare-fun res!1986881 () Bool)

(assert (=> b!4704453 (=> (not res!1986881) (not e!2934587))))

(declare-datatypes ((ListMap!5073 0))(
  ( (ListMap!5074 (toList!5709 List!52691)) )
))
(declare-fun lt!1868615 () ListMap!5073)

(declare-fun contains!15868 (ListMap!5073 K!13925) Bool)

(assert (=> b!4704453 (= res!1986881 (contains!15868 lt!1868615 key!4653))))

(declare-datatypes ((tuple2!54036 0))(
  ( (tuple2!54037 (_1!30312 (_ BitVec 64)) (_2!30312 List!52691)) )
))
(declare-datatypes ((List!52692 0))(
  ( (Nil!52568) (Cons!52568 (h!58859 tuple2!54036) (t!359914 List!52692)) )
))
(declare-datatypes ((ListLongMap!4239 0))(
  ( (ListLongMap!4240 (toList!5710 List!52692)) )
))
(declare-fun lm!2023 () ListLongMap!4239)

(declare-fun extractMap!1936 (List!52692) ListMap!5073)

(assert (=> b!4704453 (= lt!1868615 (extractMap!1936 (toList!5710 lm!2023)))))

(declare-fun b!4704454 () Bool)

(declare-fun res!1986886 () Bool)

(declare-fun e!2934575 () Bool)

(assert (=> b!4704454 (=> (not res!1986886) (not e!2934575))))

(get-info :version)

(assert (=> b!4704454 (= res!1986886 ((_ is Cons!52568) (toList!5710 lm!2023)))))

(declare-fun b!4704455 () Bool)

(declare-fun e!2934583 () Bool)

(declare-fun e!2934586 () Bool)

(assert (=> b!4704455 (= e!2934583 e!2934586)))

(declare-fun res!1986892 () Bool)

(assert (=> b!4704455 (=> res!1986892 e!2934586)))

(declare-fun lt!1868628 () ListMap!5073)

(declare-fun lt!1868640 () ListMap!5073)

(assert (=> b!4704455 (= res!1986892 (not (= lt!1868628 lt!1868640)))))

(declare-fun lt!1868621 () ListMap!5073)

(declare-fun +!2194 (ListMap!5073 tuple2!54034) ListMap!5073)

(assert (=> b!4704455 (= lt!1868640 (+!2194 lt!1868621 (h!58858 oldBucket!34)))))

(declare-fun lt!1868624 () ListMap!5073)

(declare-fun -!714 (ListMap!5073 K!13925) ListMap!5073)

(assert (=> b!4704455 (= lt!1868628 (-!714 lt!1868624 key!4653))))

(declare-fun lt!1868629 () ListMap!5073)

(assert (=> b!4704455 (= lt!1868624 (+!2194 lt!1868629 (h!58858 oldBucket!34)))))

(declare-fun lt!1868625 () ListMap!5073)

(declare-fun lt!1868636 () ListMap!5073)

(assert (=> b!4704455 (= lt!1868625 lt!1868636)))

(assert (=> b!4704455 (= lt!1868636 (+!2194 lt!1868621 (h!58858 oldBucket!34)))))

(assert (=> b!4704455 (= lt!1868625 (-!714 (+!2194 lt!1868629 (h!58858 oldBucket!34)) key!4653))))

(declare-datatypes ((Unit!126864 0))(
  ( (Unit!126865) )
))
(declare-fun lt!1868650 () Unit!126864)

(declare-fun addRemoveCommutativeForDiffKeys!115 (ListMap!5073 K!13925 V!14171 K!13925) Unit!126864)

(assert (=> b!4704455 (= lt!1868650 (addRemoveCommutativeForDiffKeys!115 lt!1868629 (_1!30311 (h!58858 oldBucket!34)) (_2!30311 (h!58858 oldBucket!34)) key!4653))))

(declare-fun b!4704456 () Bool)

(assert (=> b!4704456 (= e!2934574 e!2934575)))

(declare-fun res!1986891 () Bool)

(assert (=> b!4704456 (=> (not res!1986891) (not e!2934575))))

(declare-fun lt!1868620 () tuple2!54036)

(declare-fun head!10083 (List!52692) tuple2!54036)

(assert (=> b!4704456 (= res!1986891 (= (head!10083 (toList!5710 lm!2023)) lt!1868620))))

(assert (=> b!4704456 (= lt!1868620 (tuple2!54037 hash!405 oldBucket!34))))

(declare-fun b!4704457 () Bool)

(declare-fun res!1986893 () Bool)

(assert (=> b!4704457 (=> (not res!1986893) (not e!2934574))))

(declare-fun allKeysSameHashInMap!1824 (ListLongMap!4239 Hashable!6279) Bool)

(assert (=> b!4704457 (= res!1986893 (allKeysSameHashInMap!1824 lm!2023 hashF!1323))))

(declare-fun b!4704458 () Bool)

(declare-fun res!1986880 () Bool)

(assert (=> b!4704458 (=> (not res!1986880) (not e!2934582))))

(declare-fun newBucket!218 () List!52691)

(assert (=> b!4704458 (= res!1986880 (= (removePairForKey!1505 oldBucket!34 key!4653) newBucket!218))))

(declare-fun b!4704459 () Bool)

(declare-fun e!2934579 () Bool)

(assert (=> b!4704459 (= e!2934575 (not e!2934579))))

(declare-fun res!1986883 () Bool)

(assert (=> b!4704459 (=> res!1986883 e!2934579)))

(assert (=> b!4704459 (= res!1986883 (or (and ((_ is Cons!52567) oldBucket!34) (= (_1!30311 (h!58858 oldBucket!34)) key!4653)) (not ((_ is Cons!52567) oldBucket!34)) (= (_1!30311 (h!58858 oldBucket!34)) key!4653)))))

(declare-fun lt!1868637 () ListMap!5073)

(declare-fun addToMapMapFromBucket!1342 (List!52691 ListMap!5073) ListMap!5073)

(assert (=> b!4704459 (= lt!1868615 (addToMapMapFromBucket!1342 (_2!30312 (h!58859 (toList!5710 lm!2023))) lt!1868637))))

(assert (=> b!4704459 (= lt!1868637 (extractMap!1936 (t!359914 (toList!5710 lm!2023))))))

(declare-fun tail!8755 (ListLongMap!4239) ListLongMap!4239)

(assert (=> b!4704459 (= (t!359914 (toList!5710 lm!2023)) (toList!5710 (tail!8755 lm!2023)))))

(declare-fun b!4704460 () Bool)

(declare-fun res!1986882 () Bool)

(assert (=> b!4704460 (=> res!1986882 e!2934586)))

(declare-fun eq!1069 (ListMap!5073 ListMap!5073) Bool)

(assert (=> b!4704460 (= res!1986882 (not (eq!1069 lt!1868628 lt!1868640)))))

(declare-fun b!4704461 () Bool)

(declare-fun e!2934580 () Bool)

(declare-fun e!2934585 () Bool)

(assert (=> b!4704461 (= e!2934580 e!2934585)))

(declare-fun res!1986887 () Bool)

(assert (=> b!4704461 (=> res!1986887 e!2934585)))

(declare-fun lt!1868642 () ListMap!5073)

(assert (=> b!4704461 (= res!1986887 (not (eq!1069 lt!1868640 lt!1868642)))))

(assert (=> b!4704461 (eq!1069 lt!1868628 lt!1868642)))

(declare-fun lt!1868631 () ListMap!5073)

(assert (=> b!4704461 (= lt!1868642 (-!714 lt!1868631 key!4653))))

(declare-fun lt!1868618 () Unit!126864)

(declare-fun lemmaRemovePreservesEq!96 (ListMap!5073 ListMap!5073 K!13925) Unit!126864)

(assert (=> b!4704461 (= lt!1868618 (lemmaRemovePreservesEq!96 lt!1868624 lt!1868631 key!4653))))

(declare-fun b!4704462 () Bool)

(declare-fun tp_is_empty!30935 () Bool)

(declare-fun e!2934588 () Bool)

(declare-fun tp_is_empty!30933 () Bool)

(declare-fun tp!1346879 () Bool)

(assert (=> b!4704462 (= e!2934588 (and tp_is_empty!30933 tp_is_empty!30935 tp!1346879))))

(declare-fun b!4704463 () Bool)

(declare-fun res!1986873 () Bool)

(assert (=> b!4704463 (=> (not res!1986873) (not e!2934582))))

(declare-fun noDuplicateKeys!1910 (List!52691) Bool)

(assert (=> b!4704463 (= res!1986873 (noDuplicateKeys!1910 oldBucket!34))))

(declare-fun e!2934578 () Bool)

(declare-fun tp!1346881 () Bool)

(declare-fun b!4704464 () Bool)

(assert (=> b!4704464 (= e!2934578 (and tp_is_empty!30933 tp_is_empty!30935 tp!1346881))))

(declare-fun b!4704465 () Bool)

(declare-fun e!2934577 () Bool)

(assert (=> b!4704465 (= e!2934577 e!2934584)))

(declare-fun res!1986872 () Bool)

(assert (=> b!4704465 (=> res!1986872 e!2934584)))

(declare-fun lt!1868641 () List!52691)

(assert (=> b!4704465 (= res!1986872 (not (= (removePairForKey!1505 lt!1868641 key!4653) lt!1868646)))))

(declare-fun tail!8756 (List!52691) List!52691)

(assert (=> b!4704465 (= lt!1868646 (tail!8756 newBucket!218))))

(assert (=> b!4704465 (= lt!1868641 (tail!8756 oldBucket!34))))

(declare-fun b!4704466 () Bool)

(declare-fun e!2934581 () Bool)

(assert (=> b!4704466 (= e!2934581 e!2934583)))

(declare-fun res!1986889 () Bool)

(assert (=> b!4704466 (=> res!1986889 e!2934583)))

(declare-fun lt!1868616 () ListMap!5073)

(assert (=> b!4704466 (= res!1986889 (not (eq!1069 lt!1868616 lt!1868621)))))

(assert (=> b!4704466 (= lt!1868621 (-!714 lt!1868629 key!4653))))

(declare-fun lt!1868639 () tuple2!54036)

(assert (=> b!4704466 (= lt!1868616 (extractMap!1936 (Cons!52568 lt!1868639 (t!359914 (toList!5710 lm!2023)))))))

(declare-fun lt!1868613 () tuple2!54036)

(declare-fun lt!1868634 () List!52692)

(assert (=> b!4704466 (eq!1069 (extractMap!1936 (Cons!52568 lt!1868639 lt!1868634)) (-!714 (extractMap!1936 (Cons!52568 lt!1868613 lt!1868634)) key!4653))))

(declare-fun lt!1868632 () List!52692)

(declare-fun tail!8757 (List!52692) List!52692)

(assert (=> b!4704466 (= lt!1868634 (tail!8757 lt!1868632))))

(assert (=> b!4704466 (= lt!1868639 (tuple2!54037 hash!405 lt!1868646))))

(declare-fun lt!1868645 () ListLongMap!4239)

(declare-fun lt!1868647 () Unit!126864)

(declare-fun lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMapOneHashIsHead!84 (ListLongMap!4239 (_ BitVec 64) List!52691 List!52691 K!13925 Hashable!6279) Unit!126864)

(assert (=> b!4704466 (= lt!1868647 (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMapOneHashIsHead!84 lt!1868645 hash!405 (t!359913 oldBucket!34) lt!1868646 key!4653 hashF!1323))))

(declare-fun b!4704467 () Bool)

(declare-fun res!1986888 () Bool)

(assert (=> b!4704467 (=> res!1986888 e!2934581)))

(declare-fun lt!1868623 () tuple2!54034)

(declare-fun lt!1868627 () ListMap!5073)

(assert (=> b!4704467 (= res!1986888 (not (eq!1069 lt!1868631 (+!2194 lt!1868627 lt!1868623))))))

(declare-fun res!1986894 () Bool)

(assert (=> start!477556 (=> (not res!1986894) (not e!2934582))))

(declare-fun lambda!211153 () Int)

(declare-fun forall!11423 (List!52692 Int) Bool)

(assert (=> start!477556 (= res!1986894 (forall!11423 (toList!5710 lm!2023) lambda!211153))))

(assert (=> start!477556 e!2934582))

(declare-fun e!2934576 () Bool)

(declare-fun inv!67799 (ListLongMap!4239) Bool)

(assert (=> start!477556 (and (inv!67799 lm!2023) e!2934576)))

(assert (=> start!477556 tp_is_empty!30933))

(assert (=> start!477556 e!2934588))

(assert (=> start!477556 true))

(assert (=> start!477556 e!2934578))

(declare-fun b!4704468 () Bool)

(assert (=> b!4704468 (= e!2934584 e!2934581)))

(declare-fun res!1986884 () Bool)

(assert (=> b!4704468 (=> res!1986884 e!2934581)))

(assert (=> b!4704468 (= res!1986884 (not (eq!1069 lt!1868631 (+!2194 lt!1868627 (h!58858 oldBucket!34)))))))

(assert (=> b!4704468 (= lt!1868627 (extractMap!1936 (Cons!52568 (tuple2!54037 hash!405 lt!1868641) (t!359914 (toList!5710 lm!2023)))))))

(assert (=> b!4704468 (= lt!1868631 (extractMap!1936 (Cons!52568 lt!1868620 (t!359914 (toList!5710 lm!2023)))))))

(assert (=> b!4704468 (eq!1069 (addToMapMapFromBucket!1342 (Cons!52567 lt!1868623 lt!1868646) lt!1868637) (+!2194 (addToMapMapFromBucket!1342 lt!1868646 lt!1868637) lt!1868623))))

(declare-fun lt!1868638 () Unit!126864)

(declare-fun lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!318 (tuple2!54034 List!52691 ListMap!5073) Unit!126864)

(assert (=> b!4704468 (= lt!1868638 (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!318 lt!1868623 lt!1868646 lt!1868637))))

(declare-fun head!10084 (List!52691) tuple2!54034)

(assert (=> b!4704468 (= lt!1868623 (head!10084 newBucket!218))))

(declare-fun lt!1868648 () tuple2!54034)

(assert (=> b!4704468 (eq!1069 (addToMapMapFromBucket!1342 (Cons!52567 lt!1868648 lt!1868641) lt!1868637) (+!2194 (addToMapMapFromBucket!1342 lt!1868641 lt!1868637) lt!1868648))))

(declare-fun lt!1868644 () Unit!126864)

(assert (=> b!4704468 (= lt!1868644 (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!318 lt!1868648 lt!1868641 lt!1868637))))

(assert (=> b!4704468 (= lt!1868648 (head!10084 oldBucket!34))))

(assert (=> b!4704468 (contains!15868 lt!1868629 key!4653)))

(assert (=> b!4704468 (= lt!1868629 (extractMap!1936 lt!1868632))))

(declare-fun lt!1868619 () Unit!126864)

(declare-fun lemmaListContainsThenExtractedMapContains!502 (ListLongMap!4239 K!13925 Hashable!6279) Unit!126864)

(assert (=> b!4704468 (= lt!1868619 (lemmaListContainsThenExtractedMapContains!502 lt!1868645 key!4653 hashF!1323))))

(assert (=> b!4704468 (= lt!1868645 (ListLongMap!4240 lt!1868632))))

(assert (=> b!4704468 (= lt!1868632 (Cons!52568 lt!1868613 (t!359914 (toList!5710 lm!2023))))))

(assert (=> b!4704468 (= lt!1868613 (tuple2!54037 hash!405 (t!359913 oldBucket!34)))))

(declare-fun b!4704469 () Bool)

(assert (=> b!4704469 (= e!2934586 e!2934580)))

(declare-fun res!1986895 () Bool)

(assert (=> b!4704469 (=> res!1986895 e!2934580)))

(assert (=> b!4704469 (= res!1986895 (not (eq!1069 lt!1868640 (+!2194 lt!1868616 (h!58858 oldBucket!34)))))))

(assert (=> b!4704469 (eq!1069 lt!1868636 (+!2194 lt!1868616 (h!58858 oldBucket!34)))))

(declare-fun lt!1868630 () Unit!126864)

(declare-fun lemmaAddToEqMapsPreservesEq!92 (ListMap!5073 ListMap!5073 K!13925 V!14171) Unit!126864)

(assert (=> b!4704469 (= lt!1868630 (lemmaAddToEqMapsPreservesEq!92 lt!1868621 lt!1868616 (_1!30311 (h!58858 oldBucket!34)) (_2!30311 (h!58858 oldBucket!34))))))

(declare-fun b!4704470 () Bool)

(declare-fun tp!1346880 () Bool)

(assert (=> b!4704470 (= e!2934576 tp!1346880)))

(declare-fun b!4704471 () Bool)

(declare-fun res!1986885 () Bool)

(assert (=> b!4704471 (=> (not res!1986885) (not e!2934582))))

(assert (=> b!4704471 (= res!1986885 (noDuplicateKeys!1910 newBucket!218))))

(declare-fun b!4704472 () Bool)

(declare-fun res!1986876 () Bool)

(assert (=> b!4704472 (=> res!1986876 e!2934581)))

(assert (=> b!4704472 (= res!1986876 (not (= (h!58858 oldBucket!34) lt!1868623)))))

(declare-fun b!4704473 () Bool)

(assert (=> b!4704473 (= e!2934579 e!2934577)))

(declare-fun res!1986879 () Bool)

(assert (=> b!4704473 (=> res!1986879 e!2934577)))

(declare-fun containsKey!3201 (List!52691 K!13925) Bool)

(assert (=> b!4704473 (= res!1986879 (not (containsKey!3201 (t!359913 oldBucket!34) key!4653)))))

(assert (=> b!4704473 (containsKey!3201 oldBucket!34 key!4653)))

(declare-fun lt!1868649 () Unit!126864)

(declare-fun lemmaGetPairDefinedThenContainsKey!262 (List!52691 K!13925 Hashable!6279) Unit!126864)

(assert (=> b!4704473 (= lt!1868649 (lemmaGetPairDefinedThenContainsKey!262 oldBucket!34 key!4653 hashF!1323))))

(declare-fun lt!1868633 () List!52691)

(declare-datatypes ((Option!12225 0))(
  ( (None!12224) (Some!12224 (v!46731 tuple2!54034)) )
))
(declare-fun isDefined!9480 (Option!12225) Bool)

(declare-fun getPair!514 (List!52691 K!13925) Option!12225)

(assert (=> b!4704473 (isDefined!9480 (getPair!514 lt!1868633 key!4653))))

(declare-fun lt!1868626 () tuple2!54036)

(declare-fun lt!1868622 () Unit!126864)

(declare-fun forallContained!3530 (List!52692 Int tuple2!54036) Unit!126864)

(assert (=> b!4704473 (= lt!1868622 (forallContained!3530 (toList!5710 lm!2023) lambda!211153 lt!1868626))))

(declare-fun contains!15869 (List!52692 tuple2!54036) Bool)

(assert (=> b!4704473 (contains!15869 (toList!5710 lm!2023) lt!1868626)))

(assert (=> b!4704473 (= lt!1868626 (tuple2!54037 lt!1868635 lt!1868633))))

(declare-fun lt!1868614 () Unit!126864)

(declare-fun lemmaGetValueImpliesTupleContained!319 (ListLongMap!4239 (_ BitVec 64) List!52691) Unit!126864)

(assert (=> b!4704473 (= lt!1868614 (lemmaGetValueImpliesTupleContained!319 lm!2023 lt!1868635 lt!1868633))))

(declare-fun apply!12393 (ListLongMap!4239 (_ BitVec 64)) List!52691)

(assert (=> b!4704473 (= lt!1868633 (apply!12393 lm!2023 lt!1868635))))

(declare-fun contains!15870 (ListLongMap!4239 (_ BitVec 64)) Bool)

(assert (=> b!4704473 (contains!15870 lm!2023 lt!1868635)))

(declare-fun lt!1868617 () Unit!126864)

(declare-fun lemmaInGenMapThenLongMapContainsHash!720 (ListLongMap!4239 K!13925 Hashable!6279) Unit!126864)

(assert (=> b!4704473 (= lt!1868617 (lemmaInGenMapThenLongMapContainsHash!720 lm!2023 key!4653 hashF!1323))))

(declare-fun lt!1868643 () Unit!126864)

(declare-fun lemmaInGenMapThenGetPairDefined!310 (ListLongMap!4239 K!13925 Hashable!6279) Unit!126864)

(assert (=> b!4704473 (= lt!1868643 (lemmaInGenMapThenGetPairDefined!310 lm!2023 key!4653 hashF!1323))))

(declare-fun b!4704474 () Bool)

(declare-fun res!1986877 () Bool)

(assert (=> b!4704474 (=> (not res!1986877) (not e!2934574))))

(declare-fun allKeysSameHash!1736 (List!52691 (_ BitVec 64) Hashable!6279) Bool)

(assert (=> b!4704474 (= res!1986877 (allKeysSameHash!1736 newBucket!218 hash!405 hashF!1323))))

(declare-fun b!4704475 () Bool)

(declare-fun res!1986878 () Bool)

(assert (=> b!4704475 (=> res!1986878 e!2934586)))

(assert (=> b!4704475 (= res!1986878 (not (eq!1069 lt!1868624 lt!1868631)))))

(declare-fun b!4704476 () Bool)

(declare-fun res!1986890 () Bool)

(assert (=> b!4704476 (=> (not res!1986890) (not e!2934582))))

(assert (=> b!4704476 (= res!1986890 (allKeysSameHash!1736 oldBucket!34 hash!405 hashF!1323))))

(declare-fun b!4704477 () Bool)

(assert (=> b!4704477 (= e!2934585 (forall!11423 (Cons!52568 (tuple2!54037 hash!405 newBucket!218) (t!359914 (toList!5710 lm!2023))) lambda!211153))))

(assert (= (and start!477556 res!1986894) b!4704463))

(assert (= (and b!4704463 res!1986873) b!4704471))

(assert (= (and b!4704471 res!1986885) b!4704458))

(assert (= (and b!4704458 res!1986880) b!4704476))

(assert (= (and b!4704476 res!1986890) b!4704453))

(assert (= (and b!4704453 res!1986881) b!4704451))

(assert (= (and b!4704451 res!1986874) b!4704474))

(assert (= (and b!4704474 res!1986877) b!4704457))

(assert (= (and b!4704457 res!1986893) b!4704456))

(assert (= (and b!4704456 res!1986891) b!4704454))

(assert (= (and b!4704454 res!1986886) b!4704459))

(assert (= (and b!4704459 (not res!1986883)) b!4704473))

(assert (= (and b!4704473 (not res!1986879)) b!4704465))

(assert (= (and b!4704465 (not res!1986872)) b!4704452))

(assert (= (and b!4704452 (not res!1986875)) b!4704468))

(assert (= (and b!4704468 (not res!1986884)) b!4704472))

(assert (= (and b!4704472 (not res!1986876)) b!4704467))

(assert (= (and b!4704467 (not res!1986888)) b!4704466))

(assert (= (and b!4704466 (not res!1986889)) b!4704455))

(assert (= (and b!4704455 (not res!1986892)) b!4704460))

(assert (= (and b!4704460 (not res!1986882)) b!4704475))

(assert (= (and b!4704475 (not res!1986878)) b!4704469))

(assert (= (and b!4704469 (not res!1986895)) b!4704461))

(assert (= (and b!4704461 (not res!1986887)) b!4704477))

(assert (= start!477556 b!4704470))

(assert (= (and start!477556 ((_ is Cons!52567) oldBucket!34)) b!4704462))

(assert (= (and start!477556 ((_ is Cons!52567) newBucket!218)) b!4704464))

(declare-fun m!5624289 () Bool)

(assert (=> b!4704458 m!5624289))

(declare-fun m!5624291 () Bool)

(assert (=> b!4704465 m!5624291))

(declare-fun m!5624293 () Bool)

(assert (=> b!4704465 m!5624293))

(declare-fun m!5624295 () Bool)

(assert (=> b!4704465 m!5624295))

(declare-fun m!5624297 () Bool)

(assert (=> b!4704469 m!5624297))

(assert (=> b!4704469 m!5624297))

(declare-fun m!5624299 () Bool)

(assert (=> b!4704469 m!5624299))

(assert (=> b!4704469 m!5624297))

(declare-fun m!5624301 () Bool)

(assert (=> b!4704469 m!5624301))

(declare-fun m!5624303 () Bool)

(assert (=> b!4704469 m!5624303))

(declare-fun m!5624305 () Bool)

(assert (=> b!4704473 m!5624305))

(declare-fun m!5624307 () Bool)

(assert (=> b!4704473 m!5624307))

(declare-fun m!5624309 () Bool)

(assert (=> b!4704473 m!5624309))

(declare-fun m!5624311 () Bool)

(assert (=> b!4704473 m!5624311))

(declare-fun m!5624313 () Bool)

(assert (=> b!4704473 m!5624313))

(declare-fun m!5624315 () Bool)

(assert (=> b!4704473 m!5624315))

(declare-fun m!5624317 () Bool)

(assert (=> b!4704473 m!5624317))

(declare-fun m!5624319 () Bool)

(assert (=> b!4704473 m!5624319))

(declare-fun m!5624321 () Bool)

(assert (=> b!4704473 m!5624321))

(assert (=> b!4704473 m!5624305))

(declare-fun m!5624323 () Bool)

(assert (=> b!4704473 m!5624323))

(declare-fun m!5624325 () Bool)

(assert (=> b!4704473 m!5624325))

(declare-fun m!5624327 () Bool)

(assert (=> b!4704473 m!5624327))

(declare-fun m!5624329 () Bool)

(assert (=> b!4704453 m!5624329))

(declare-fun m!5624331 () Bool)

(assert (=> b!4704453 m!5624331))

(declare-fun m!5624333 () Bool)

(assert (=> b!4704476 m!5624333))

(declare-fun m!5624335 () Bool)

(assert (=> b!4704461 m!5624335))

(declare-fun m!5624337 () Bool)

(assert (=> b!4704461 m!5624337))

(declare-fun m!5624339 () Bool)

(assert (=> b!4704461 m!5624339))

(declare-fun m!5624341 () Bool)

(assert (=> b!4704461 m!5624341))

(declare-fun m!5624343 () Bool)

(assert (=> b!4704460 m!5624343))

(declare-fun m!5624345 () Bool)

(assert (=> b!4704459 m!5624345))

(declare-fun m!5624347 () Bool)

(assert (=> b!4704459 m!5624347))

(declare-fun m!5624349 () Bool)

(assert (=> b!4704459 m!5624349))

(declare-fun m!5624351 () Bool)

(assert (=> start!477556 m!5624351))

(declare-fun m!5624353 () Bool)

(assert (=> start!477556 m!5624353))

(declare-fun m!5624355 () Bool)

(assert (=> b!4704468 m!5624355))

(declare-fun m!5624357 () Bool)

(assert (=> b!4704468 m!5624357))

(declare-fun m!5624359 () Bool)

(assert (=> b!4704468 m!5624359))

(assert (=> b!4704468 m!5624359))

(declare-fun m!5624361 () Bool)

(assert (=> b!4704468 m!5624361))

(declare-fun m!5624363 () Bool)

(assert (=> b!4704468 m!5624363))

(assert (=> b!4704468 m!5624355))

(declare-fun m!5624365 () Bool)

(assert (=> b!4704468 m!5624365))

(declare-fun m!5624367 () Bool)

(assert (=> b!4704468 m!5624367))

(assert (=> b!4704468 m!5624363))

(declare-fun m!5624369 () Bool)

(assert (=> b!4704468 m!5624369))

(declare-fun m!5624371 () Bool)

(assert (=> b!4704468 m!5624371))

(declare-fun m!5624373 () Bool)

(assert (=> b!4704468 m!5624373))

(declare-fun m!5624375 () Bool)

(assert (=> b!4704468 m!5624375))

(declare-fun m!5624377 () Bool)

(assert (=> b!4704468 m!5624377))

(declare-fun m!5624379 () Bool)

(assert (=> b!4704468 m!5624379))

(declare-fun m!5624381 () Bool)

(assert (=> b!4704468 m!5624381))

(declare-fun m!5624383 () Bool)

(assert (=> b!4704468 m!5624383))

(declare-fun m!5624385 () Bool)

(assert (=> b!4704468 m!5624385))

(assert (=> b!4704468 m!5624377))

(assert (=> b!4704468 m!5624361))

(declare-fun m!5624387 () Bool)

(assert (=> b!4704468 m!5624387))

(declare-fun m!5624389 () Bool)

(assert (=> b!4704468 m!5624389))

(assert (=> b!4704468 m!5624375))

(assert (=> b!4704468 m!5624369))

(declare-fun m!5624391 () Bool)

(assert (=> b!4704468 m!5624391))

(declare-fun m!5624393 () Bool)

(assert (=> b!4704463 m!5624393))

(declare-fun m!5624395 () Bool)

(assert (=> b!4704467 m!5624395))

(assert (=> b!4704467 m!5624395))

(declare-fun m!5624397 () Bool)

(assert (=> b!4704467 m!5624397))

(declare-fun m!5624399 () Bool)

(assert (=> b!4704455 m!5624399))

(declare-fun m!5624401 () Bool)

(assert (=> b!4704455 m!5624401))

(declare-fun m!5624403 () Bool)

(assert (=> b!4704455 m!5624403))

(declare-fun m!5624405 () Bool)

(assert (=> b!4704455 m!5624405))

(assert (=> b!4704455 m!5624401))

(declare-fun m!5624407 () Bool)

(assert (=> b!4704455 m!5624407))

(declare-fun m!5624409 () Bool)

(assert (=> b!4704477 m!5624409))

(declare-fun m!5624411 () Bool)

(assert (=> b!4704452 m!5624411))

(declare-fun m!5624413 () Bool)

(assert (=> b!4704456 m!5624413))

(declare-fun m!5624415 () Bool)

(assert (=> b!4704474 m!5624415))

(declare-fun m!5624417 () Bool)

(assert (=> b!4704466 m!5624417))

(declare-fun m!5624419 () Bool)

(assert (=> b!4704466 m!5624419))

(declare-fun m!5624421 () Bool)

(assert (=> b!4704466 m!5624421))

(declare-fun m!5624423 () Bool)

(assert (=> b!4704466 m!5624423))

(declare-fun m!5624425 () Bool)

(assert (=> b!4704466 m!5624425))

(declare-fun m!5624427 () Bool)

(assert (=> b!4704466 m!5624427))

(declare-fun m!5624429 () Bool)

(assert (=> b!4704466 m!5624429))

(assert (=> b!4704466 m!5624423))

(declare-fun m!5624431 () Bool)

(assert (=> b!4704466 m!5624431))

(assert (=> b!4704466 m!5624425))

(declare-fun m!5624433 () Bool)

(assert (=> b!4704466 m!5624433))

(assert (=> b!4704466 m!5624431))

(declare-fun m!5624435 () Bool)

(assert (=> b!4704471 m!5624435))

(declare-fun m!5624437 () Bool)

(assert (=> b!4704457 m!5624437))

(declare-fun m!5624439 () Bool)

(assert (=> b!4704451 m!5624439))

(declare-fun m!5624441 () Bool)

(assert (=> b!4704475 m!5624441))

(check-sat (not b!4704466) (not start!477556) (not b!4704471) (not b!4704470) (not b!4704475) (not b!4704456) (not b!4704453) (not b!4704452) (not b!4704460) (not b!4704474) (not b!4704451) (not b!4704469) (not b!4704455) tp_is_empty!30935 (not b!4704473) (not b!4704468) (not b!4704464) (not b!4704458) (not b!4704477) (not b!4704465) tp_is_empty!30933 (not b!4704463) (not b!4704459) (not b!4704467) (not b!4704461) (not b!4704476) (not b!4704457) (not b!4704462))
(check-sat)
(get-model)

(declare-fun d!1496865 () Bool)

(declare-fun res!1986900 () Bool)

(declare-fun e!2934593 () Bool)

(assert (=> d!1496865 (=> res!1986900 e!2934593)))

(assert (=> d!1496865 (= res!1986900 (not ((_ is Cons!52567) newBucket!218)))))

(assert (=> d!1496865 (= (noDuplicateKeys!1910 newBucket!218) e!2934593)))

(declare-fun b!4704482 () Bool)

(declare-fun e!2934594 () Bool)

(assert (=> b!4704482 (= e!2934593 e!2934594)))

(declare-fun res!1986901 () Bool)

(assert (=> b!4704482 (=> (not res!1986901) (not e!2934594))))

(assert (=> b!4704482 (= res!1986901 (not (containsKey!3201 (t!359913 newBucket!218) (_1!30311 (h!58858 newBucket!218)))))))

(declare-fun b!4704483 () Bool)

(assert (=> b!4704483 (= e!2934594 (noDuplicateKeys!1910 (t!359913 newBucket!218)))))

(assert (= (and d!1496865 (not res!1986900)) b!4704482))

(assert (= (and b!4704482 res!1986901) b!4704483))

(declare-fun m!5624443 () Bool)

(assert (=> b!4704482 m!5624443))

(declare-fun m!5624445 () Bool)

(assert (=> b!4704483 m!5624445))

(assert (=> b!4704471 d!1496865))

(declare-fun d!1496867 () Bool)

(declare-fun hash!4209 (Hashable!6279 K!13925) (_ BitVec 64))

(assert (=> d!1496867 (= (hash!4206 hashF!1323 key!4653) (hash!4209 hashF!1323 key!4653))))

(declare-fun bs!1097916 () Bool)

(assert (= bs!1097916 d!1496867))

(declare-fun m!5624447 () Bool)

(assert (=> bs!1097916 m!5624447))

(assert (=> b!4704451 d!1496867))

(declare-fun d!1496871 () Bool)

(declare-fun lt!1868653 () List!52691)

(assert (=> d!1496871 (not (containsKey!3201 lt!1868653 key!4653))))

(declare-fun e!2934606 () List!52691)

(assert (=> d!1496871 (= lt!1868653 e!2934606)))

(declare-fun c!804063 () Bool)

(assert (=> d!1496871 (= c!804063 (and ((_ is Cons!52567) (t!359913 oldBucket!34)) (= (_1!30311 (h!58858 (t!359913 oldBucket!34))) key!4653)))))

(assert (=> d!1496871 (noDuplicateKeys!1910 (t!359913 oldBucket!34))))

(assert (=> d!1496871 (= (removePairForKey!1505 (t!359913 oldBucket!34) key!4653) lt!1868653)))

(declare-fun b!4704500 () Bool)

(declare-fun e!2934605 () List!52691)

(assert (=> b!4704500 (= e!2934605 (Cons!52567 (h!58858 (t!359913 oldBucket!34)) (removePairForKey!1505 (t!359913 (t!359913 oldBucket!34)) key!4653)))))

(declare-fun b!4704499 () Bool)

(assert (=> b!4704499 (= e!2934606 e!2934605)))

(declare-fun c!804062 () Bool)

(assert (=> b!4704499 (= c!804062 ((_ is Cons!52567) (t!359913 oldBucket!34)))))

(declare-fun b!4704501 () Bool)

(assert (=> b!4704501 (= e!2934605 Nil!52567)))

(declare-fun b!4704498 () Bool)

(assert (=> b!4704498 (= e!2934606 (t!359913 (t!359913 oldBucket!34)))))

(assert (= (and d!1496871 c!804063) b!4704498))

(assert (= (and d!1496871 (not c!804063)) b!4704499))

(assert (= (and b!4704499 c!804062) b!4704500))

(assert (= (and b!4704499 (not c!804062)) b!4704501))

(declare-fun m!5624457 () Bool)

(assert (=> d!1496871 m!5624457))

(declare-fun m!5624459 () Bool)

(assert (=> d!1496871 m!5624459))

(declare-fun m!5624461 () Bool)

(assert (=> b!4704500 m!5624461))

(assert (=> b!4704452 d!1496871))

(declare-fun d!1496877 () Bool)

(declare-fun dynLambda!21759 (Int tuple2!54036) Bool)

(assert (=> d!1496877 (dynLambda!21759 lambda!211153 lt!1868626)))

(declare-fun lt!1868656 () Unit!126864)

(declare-fun choose!32998 (List!52692 Int tuple2!54036) Unit!126864)

(assert (=> d!1496877 (= lt!1868656 (choose!32998 (toList!5710 lm!2023) lambda!211153 lt!1868626))))

(declare-fun e!2934609 () Bool)

(assert (=> d!1496877 e!2934609))

(declare-fun res!1986910 () Bool)

(assert (=> d!1496877 (=> (not res!1986910) (not e!2934609))))

(assert (=> d!1496877 (= res!1986910 (forall!11423 (toList!5710 lm!2023) lambda!211153))))

(assert (=> d!1496877 (= (forallContained!3530 (toList!5710 lm!2023) lambda!211153 lt!1868626) lt!1868656)))

(declare-fun b!4704504 () Bool)

(assert (=> b!4704504 (= e!2934609 (contains!15869 (toList!5710 lm!2023) lt!1868626))))

(assert (= (and d!1496877 res!1986910) b!4704504))

(declare-fun b_lambda!177493 () Bool)

(assert (=> (not b_lambda!177493) (not d!1496877)))

(declare-fun m!5624463 () Bool)

(assert (=> d!1496877 m!5624463))

(declare-fun m!5624465 () Bool)

(assert (=> d!1496877 m!5624465))

(assert (=> d!1496877 m!5624351))

(assert (=> b!4704504 m!5624317))

(assert (=> b!4704473 d!1496877))

(declare-fun d!1496879 () Bool)

(declare-fun e!2934623 () Bool)

(assert (=> d!1496879 e!2934623))

(declare-fun res!1986922 () Bool)

(assert (=> d!1496879 (=> res!1986922 e!2934623)))

(declare-fun e!2934622 () Bool)

(assert (=> d!1496879 (= res!1986922 e!2934622)))

(declare-fun res!1986921 () Bool)

(assert (=> d!1496879 (=> (not res!1986921) (not e!2934622))))

(declare-fun lt!1868659 () Option!12225)

(declare-fun isEmpty!29139 (Option!12225) Bool)

(assert (=> d!1496879 (= res!1986921 (isEmpty!29139 lt!1868659))))

(declare-fun e!2934624 () Option!12225)

(assert (=> d!1496879 (= lt!1868659 e!2934624)))

(declare-fun c!804069 () Bool)

(assert (=> d!1496879 (= c!804069 (and ((_ is Cons!52567) lt!1868633) (= (_1!30311 (h!58858 lt!1868633)) key!4653)))))

(assert (=> d!1496879 (noDuplicateKeys!1910 lt!1868633)))

(assert (=> d!1496879 (= (getPair!514 lt!1868633 key!4653) lt!1868659)))

(declare-fun b!4704521 () Bool)

(assert (=> b!4704521 (= e!2934624 (Some!12224 (h!58858 lt!1868633)))))

(declare-fun b!4704522 () Bool)

(declare-fun e!2934620 () Option!12225)

(assert (=> b!4704522 (= e!2934620 (getPair!514 (t!359913 lt!1868633) key!4653))))

(declare-fun b!4704523 () Bool)

(assert (=> b!4704523 (= e!2934622 (not (containsKey!3201 lt!1868633 key!4653)))))

(declare-fun b!4704524 () Bool)

(assert (=> b!4704524 (= e!2934624 e!2934620)))

(declare-fun c!804068 () Bool)

(assert (=> b!4704524 (= c!804068 ((_ is Cons!52567) lt!1868633))))

(declare-fun b!4704525 () Bool)

(declare-fun res!1986919 () Bool)

(declare-fun e!2934621 () Bool)

(assert (=> b!4704525 (=> (not res!1986919) (not e!2934621))))

(declare-fun get!17611 (Option!12225) tuple2!54034)

(assert (=> b!4704525 (= res!1986919 (= (_1!30311 (get!17611 lt!1868659)) key!4653))))

(declare-fun b!4704526 () Bool)

(declare-fun contains!15872 (List!52691 tuple2!54034) Bool)

(assert (=> b!4704526 (= e!2934621 (contains!15872 lt!1868633 (get!17611 lt!1868659)))))

(declare-fun b!4704527 () Bool)

(assert (=> b!4704527 (= e!2934620 None!12224)))

(declare-fun b!4704528 () Bool)

(assert (=> b!4704528 (= e!2934623 e!2934621)))

(declare-fun res!1986920 () Bool)

(assert (=> b!4704528 (=> (not res!1986920) (not e!2934621))))

(assert (=> b!4704528 (= res!1986920 (isDefined!9480 lt!1868659))))

(assert (= (and d!1496879 c!804069) b!4704521))

(assert (= (and d!1496879 (not c!804069)) b!4704524))

(assert (= (and b!4704524 c!804068) b!4704522))

(assert (= (and b!4704524 (not c!804068)) b!4704527))

(assert (= (and d!1496879 res!1986921) b!4704523))

(assert (= (and d!1496879 (not res!1986922)) b!4704528))

(assert (= (and b!4704528 res!1986920) b!4704525))

(assert (= (and b!4704525 res!1986919) b!4704526))

(declare-fun m!5624467 () Bool)

(assert (=> b!4704526 m!5624467))

(assert (=> b!4704526 m!5624467))

(declare-fun m!5624469 () Bool)

(assert (=> b!4704526 m!5624469))

(declare-fun m!5624471 () Bool)

(assert (=> b!4704528 m!5624471))

(assert (=> b!4704525 m!5624467))

(declare-fun m!5624473 () Bool)

(assert (=> b!4704523 m!5624473))

(declare-fun m!5624475 () Bool)

(assert (=> d!1496879 m!5624475))

(declare-fun m!5624477 () Bool)

(assert (=> d!1496879 m!5624477))

(declare-fun m!5624479 () Bool)

(assert (=> b!4704522 m!5624479))

(assert (=> b!4704473 d!1496879))

(declare-fun d!1496881 () Bool)

(declare-datatypes ((Option!12227 0))(
  ( (None!12226) (Some!12226 (v!46737 List!52691)) )
))
(declare-fun get!17612 (Option!12227) List!52691)

(declare-fun getValueByKey!1871 (List!52692 (_ BitVec 64)) Option!12227)

(assert (=> d!1496881 (= (apply!12393 lm!2023 lt!1868635) (get!17612 (getValueByKey!1871 (toList!5710 lm!2023) lt!1868635)))))

(declare-fun bs!1097918 () Bool)

(assert (= bs!1097918 d!1496881))

(declare-fun m!5624481 () Bool)

(assert (=> bs!1097918 m!5624481))

(assert (=> bs!1097918 m!5624481))

(declare-fun m!5624483 () Bool)

(assert (=> bs!1097918 m!5624483))

(assert (=> b!4704473 d!1496881))

(declare-fun bs!1097919 () Bool)

(declare-fun d!1496883 () Bool)

(assert (= bs!1097919 (and d!1496883 start!477556)))

(declare-fun lambda!211156 () Int)

(assert (=> bs!1097919 (= lambda!211156 lambda!211153)))

(assert (=> d!1496883 (contains!15870 lm!2023 (hash!4206 hashF!1323 key!4653))))

(declare-fun lt!1868662 () Unit!126864)

(declare-fun choose!32999 (ListLongMap!4239 K!13925 Hashable!6279) Unit!126864)

(assert (=> d!1496883 (= lt!1868662 (choose!32999 lm!2023 key!4653 hashF!1323))))

(assert (=> d!1496883 (forall!11423 (toList!5710 lm!2023) lambda!211156)))

(assert (=> d!1496883 (= (lemmaInGenMapThenLongMapContainsHash!720 lm!2023 key!4653 hashF!1323) lt!1868662)))

(declare-fun bs!1097920 () Bool)

(assert (= bs!1097920 d!1496883))

(assert (=> bs!1097920 m!5624439))

(assert (=> bs!1097920 m!5624439))

(declare-fun m!5624485 () Bool)

(assert (=> bs!1097920 m!5624485))

(declare-fun m!5624487 () Bool)

(assert (=> bs!1097920 m!5624487))

(declare-fun m!5624489 () Bool)

(assert (=> bs!1097920 m!5624489))

(assert (=> b!4704473 d!1496883))

(declare-fun bs!1097925 () Bool)

(declare-fun d!1496885 () Bool)

(assert (= bs!1097925 (and d!1496885 start!477556)))

(declare-fun lambda!211198 () Int)

(assert (=> bs!1097925 (= lambda!211198 lambda!211153)))

(declare-fun bs!1097926 () Bool)

(assert (= bs!1097926 (and d!1496885 d!1496883)))

(assert (=> bs!1097926 (= lambda!211198 lambda!211156)))

(declare-fun e!2934642 () Bool)

(declare-fun b!4704562 () Bool)

(assert (=> b!4704562 (= e!2934642 (isDefined!9480 (getPair!514 (apply!12393 lm!2023 (hash!4206 hashF!1323 key!4653)) key!4653)))))

(declare-fun lt!1868748 () Unit!126864)

(assert (=> b!4704562 (= lt!1868748 (forallContained!3530 (toList!5710 lm!2023) lambda!211198 (tuple2!54037 (hash!4206 hashF!1323 key!4653) (apply!12393 lm!2023 (hash!4206 hashF!1323 key!4653)))))))

(declare-fun lt!1868750 () Unit!126864)

(declare-fun lt!1868747 () Unit!126864)

(assert (=> b!4704562 (= lt!1868750 lt!1868747)))

(declare-fun lt!1868751 () (_ BitVec 64))

(declare-fun lt!1868745 () List!52691)

(assert (=> b!4704562 (contains!15869 (toList!5710 lm!2023) (tuple2!54037 lt!1868751 lt!1868745))))

(assert (=> b!4704562 (= lt!1868747 (lemmaGetValueImpliesTupleContained!319 lm!2023 lt!1868751 lt!1868745))))

(declare-fun e!2934641 () Bool)

(assert (=> b!4704562 e!2934641))

(declare-fun res!1986943 () Bool)

(assert (=> b!4704562 (=> (not res!1986943) (not e!2934641))))

(assert (=> b!4704562 (= res!1986943 (contains!15870 lm!2023 lt!1868751))))

(assert (=> b!4704562 (= lt!1868745 (apply!12393 lm!2023 (hash!4206 hashF!1323 key!4653)))))

(assert (=> b!4704562 (= lt!1868751 (hash!4206 hashF!1323 key!4653))))

(declare-fun lt!1868752 () Unit!126864)

(declare-fun lt!1868749 () Unit!126864)

(assert (=> b!4704562 (= lt!1868752 lt!1868749)))

(assert (=> b!4704562 (contains!15870 lm!2023 (hash!4206 hashF!1323 key!4653))))

(assert (=> b!4704562 (= lt!1868749 (lemmaInGenMapThenLongMapContainsHash!720 lm!2023 key!4653 hashF!1323))))

(declare-fun b!4704561 () Bool)

(declare-fun res!1986942 () Bool)

(assert (=> b!4704561 (=> (not res!1986942) (not e!2934642))))

(assert (=> b!4704561 (= res!1986942 (contains!15868 (extractMap!1936 (toList!5710 lm!2023)) key!4653))))

(assert (=> d!1496885 e!2934642))

(declare-fun res!1986941 () Bool)

(assert (=> d!1496885 (=> (not res!1986941) (not e!2934642))))

(assert (=> d!1496885 (= res!1986941 (forall!11423 (toList!5710 lm!2023) lambda!211198))))

(declare-fun lt!1868746 () Unit!126864)

(declare-fun choose!33000 (ListLongMap!4239 K!13925 Hashable!6279) Unit!126864)

(assert (=> d!1496885 (= lt!1868746 (choose!33000 lm!2023 key!4653 hashF!1323))))

(assert (=> d!1496885 (forall!11423 (toList!5710 lm!2023) lambda!211198)))

(assert (=> d!1496885 (= (lemmaInGenMapThenGetPairDefined!310 lm!2023 key!4653 hashF!1323) lt!1868746)))

(declare-fun b!4704560 () Bool)

(declare-fun res!1986940 () Bool)

(assert (=> b!4704560 (=> (not res!1986940) (not e!2934642))))

(assert (=> b!4704560 (= res!1986940 (allKeysSameHashInMap!1824 lm!2023 hashF!1323))))

(declare-fun b!4704563 () Bool)

(assert (=> b!4704563 (= e!2934641 (= (getValueByKey!1871 (toList!5710 lm!2023) lt!1868751) (Some!12226 lt!1868745)))))

(assert (= (and d!1496885 res!1986941) b!4704560))

(assert (= (and b!4704560 res!1986940) b!4704561))

(assert (= (and b!4704561 res!1986942) b!4704562))

(assert (= (and b!4704562 res!1986943) b!4704563))

(assert (=> b!4704562 m!5624311))

(declare-fun m!5624533 () Bool)

(assert (=> b!4704562 m!5624533))

(assert (=> b!4704562 m!5624439))

(assert (=> b!4704562 m!5624485))

(declare-fun m!5624535 () Bool)

(assert (=> b!4704562 m!5624535))

(declare-fun m!5624537 () Bool)

(assert (=> b!4704562 m!5624537))

(declare-fun m!5624539 () Bool)

(assert (=> b!4704562 m!5624539))

(declare-fun m!5624541 () Bool)

(assert (=> b!4704562 m!5624541))

(declare-fun m!5624543 () Bool)

(assert (=> b!4704562 m!5624543))

(assert (=> b!4704562 m!5624439))

(declare-fun m!5624545 () Bool)

(assert (=> b!4704562 m!5624545))

(assert (=> b!4704562 m!5624539))

(assert (=> b!4704562 m!5624439))

(assert (=> b!4704562 m!5624545))

(declare-fun m!5624547 () Bool)

(assert (=> d!1496885 m!5624547))

(declare-fun m!5624549 () Bool)

(assert (=> d!1496885 m!5624549))

(assert (=> d!1496885 m!5624547))

(declare-fun m!5624551 () Bool)

(assert (=> b!4704563 m!5624551))

(assert (=> b!4704561 m!5624331))

(assert (=> b!4704561 m!5624331))

(declare-fun m!5624553 () Bool)

(assert (=> b!4704561 m!5624553))

(assert (=> b!4704560 m!5624437))

(assert (=> b!4704473 d!1496885))

(declare-fun d!1496893 () Bool)

(assert (=> d!1496893 (containsKey!3201 oldBucket!34 key!4653)))

(declare-fun lt!1868755 () Unit!126864)

(declare-fun choose!33002 (List!52691 K!13925 Hashable!6279) Unit!126864)

(assert (=> d!1496893 (= lt!1868755 (choose!33002 oldBucket!34 key!4653 hashF!1323))))

(assert (=> d!1496893 (noDuplicateKeys!1910 oldBucket!34)))

(assert (=> d!1496893 (= (lemmaGetPairDefinedThenContainsKey!262 oldBucket!34 key!4653 hashF!1323) lt!1868755)))

(declare-fun bs!1097928 () Bool)

(assert (= bs!1097928 d!1496893))

(assert (=> bs!1097928 m!5624321))

(declare-fun m!5624555 () Bool)

(assert (=> bs!1097928 m!5624555))

(assert (=> bs!1097928 m!5624393))

(assert (=> b!4704473 d!1496893))

(declare-fun d!1496895 () Bool)

(declare-fun res!1986948 () Bool)

(declare-fun e!2934647 () Bool)

(assert (=> d!1496895 (=> res!1986948 e!2934647)))

(assert (=> d!1496895 (= res!1986948 (and ((_ is Cons!52567) (t!359913 oldBucket!34)) (= (_1!30311 (h!58858 (t!359913 oldBucket!34))) key!4653)))))

(assert (=> d!1496895 (= (containsKey!3201 (t!359913 oldBucket!34) key!4653) e!2934647)))

(declare-fun b!4704568 () Bool)

(declare-fun e!2934648 () Bool)

(assert (=> b!4704568 (= e!2934647 e!2934648)))

(declare-fun res!1986949 () Bool)

(assert (=> b!4704568 (=> (not res!1986949) (not e!2934648))))

(assert (=> b!4704568 (= res!1986949 ((_ is Cons!52567) (t!359913 oldBucket!34)))))

(declare-fun b!4704569 () Bool)

(assert (=> b!4704569 (= e!2934648 (containsKey!3201 (t!359913 (t!359913 oldBucket!34)) key!4653))))

(assert (= (and d!1496895 (not res!1986948)) b!4704568))

(assert (= (and b!4704568 res!1986949) b!4704569))

(declare-fun m!5624557 () Bool)

(assert (=> b!4704569 m!5624557))

(assert (=> b!4704473 d!1496895))

(declare-fun d!1496897 () Bool)

(assert (=> d!1496897 (contains!15869 (toList!5710 lm!2023) (tuple2!54037 lt!1868635 lt!1868633))))

(declare-fun lt!1868758 () Unit!126864)

(declare-fun choose!33003 (ListLongMap!4239 (_ BitVec 64) List!52691) Unit!126864)

(assert (=> d!1496897 (= lt!1868758 (choose!33003 lm!2023 lt!1868635 lt!1868633))))

(assert (=> d!1496897 (contains!15870 lm!2023 lt!1868635)))

(assert (=> d!1496897 (= (lemmaGetValueImpliesTupleContained!319 lm!2023 lt!1868635 lt!1868633) lt!1868758)))

(declare-fun bs!1097929 () Bool)

(assert (= bs!1097929 d!1496897))

(declare-fun m!5624559 () Bool)

(assert (=> bs!1097929 m!5624559))

(declare-fun m!5624561 () Bool)

(assert (=> bs!1097929 m!5624561))

(assert (=> bs!1097929 m!5624327))

(assert (=> b!4704473 d!1496897))

(declare-fun d!1496899 () Bool)

(declare-fun res!1986950 () Bool)

(declare-fun e!2934649 () Bool)

(assert (=> d!1496899 (=> res!1986950 e!2934649)))

(assert (=> d!1496899 (= res!1986950 (and ((_ is Cons!52567) oldBucket!34) (= (_1!30311 (h!58858 oldBucket!34)) key!4653)))))

(assert (=> d!1496899 (= (containsKey!3201 oldBucket!34 key!4653) e!2934649)))

(declare-fun b!4704571 () Bool)

(declare-fun e!2934650 () Bool)

(assert (=> b!4704571 (= e!2934649 e!2934650)))

(declare-fun res!1986951 () Bool)

(assert (=> b!4704571 (=> (not res!1986951) (not e!2934650))))

(assert (=> b!4704571 (= res!1986951 ((_ is Cons!52567) oldBucket!34))))

(declare-fun b!4704572 () Bool)

(assert (=> b!4704572 (= e!2934650 (containsKey!3201 (t!359913 oldBucket!34) key!4653))))

(assert (= (and d!1496899 (not res!1986950)) b!4704571))

(assert (= (and b!4704571 res!1986951) b!4704572))

(assert (=> b!4704572 m!5624323))

(assert (=> b!4704473 d!1496899))

(declare-fun d!1496901 () Bool)

(declare-fun lt!1868761 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!9297 (List!52692) (InoxSet tuple2!54036))

(assert (=> d!1496901 (= lt!1868761 (select (content!9297 (toList!5710 lm!2023)) lt!1868626))))

(declare-fun e!2934655 () Bool)

(assert (=> d!1496901 (= lt!1868761 e!2934655)))

(declare-fun res!1986957 () Bool)

(assert (=> d!1496901 (=> (not res!1986957) (not e!2934655))))

(assert (=> d!1496901 (= res!1986957 ((_ is Cons!52568) (toList!5710 lm!2023)))))

(assert (=> d!1496901 (= (contains!15869 (toList!5710 lm!2023) lt!1868626) lt!1868761)))

(declare-fun b!4704577 () Bool)

(declare-fun e!2934656 () Bool)

(assert (=> b!4704577 (= e!2934655 e!2934656)))

(declare-fun res!1986956 () Bool)

(assert (=> b!4704577 (=> res!1986956 e!2934656)))

(assert (=> b!4704577 (= res!1986956 (= (h!58859 (toList!5710 lm!2023)) lt!1868626))))

(declare-fun b!4704578 () Bool)

(assert (=> b!4704578 (= e!2934656 (contains!15869 (t!359914 (toList!5710 lm!2023)) lt!1868626))))

(assert (= (and d!1496901 res!1986957) b!4704577))

(assert (= (and b!4704577 (not res!1986956)) b!4704578))

(declare-fun m!5624563 () Bool)

(assert (=> d!1496901 m!5624563))

(declare-fun m!5624565 () Bool)

(assert (=> d!1496901 m!5624565))

(declare-fun m!5624567 () Bool)

(assert (=> b!4704578 m!5624567))

(assert (=> b!4704473 d!1496901))

(declare-fun d!1496903 () Bool)

(declare-fun e!2934679 () Bool)

(assert (=> d!1496903 e!2934679))

(declare-fun res!1986969 () Bool)

(assert (=> d!1496903 (=> res!1986969 e!2934679)))

(declare-fun lt!1868797 () Bool)

(assert (=> d!1496903 (= res!1986969 (not lt!1868797))))

(declare-fun lt!1868796 () Bool)

(assert (=> d!1496903 (= lt!1868797 lt!1868796)))

(declare-fun lt!1868794 () Unit!126864)

(declare-fun e!2934680 () Unit!126864)

(assert (=> d!1496903 (= lt!1868794 e!2934680)))

(declare-fun c!804087 () Bool)

(assert (=> d!1496903 (= c!804087 lt!1868796)))

(declare-fun containsKey!3203 (List!52692 (_ BitVec 64)) Bool)

(assert (=> d!1496903 (= lt!1868796 (containsKey!3203 (toList!5710 lm!2023) lt!1868635))))

(assert (=> d!1496903 (= (contains!15870 lm!2023 lt!1868635) lt!1868797)))

(declare-fun b!4704612 () Bool)

(declare-fun lt!1868795 () Unit!126864)

(assert (=> b!4704612 (= e!2934680 lt!1868795)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1763 (List!52692 (_ BitVec 64)) Unit!126864)

(assert (=> b!4704612 (= lt!1868795 (lemmaContainsKeyImpliesGetValueByKeyDefined!1763 (toList!5710 lm!2023) lt!1868635))))

(declare-fun isDefined!9482 (Option!12227) Bool)

(assert (=> b!4704612 (isDefined!9482 (getValueByKey!1871 (toList!5710 lm!2023) lt!1868635))))

(declare-fun b!4704613 () Bool)

(declare-fun Unit!126879 () Unit!126864)

(assert (=> b!4704613 (= e!2934680 Unit!126879)))

(declare-fun b!4704614 () Bool)

(assert (=> b!4704614 (= e!2934679 (isDefined!9482 (getValueByKey!1871 (toList!5710 lm!2023) lt!1868635)))))

(assert (= (and d!1496903 c!804087) b!4704612))

(assert (= (and d!1496903 (not c!804087)) b!4704613))

(assert (= (and d!1496903 (not res!1986969)) b!4704614))

(declare-fun m!5624589 () Bool)

(assert (=> d!1496903 m!5624589))

(declare-fun m!5624591 () Bool)

(assert (=> b!4704612 m!5624591))

(assert (=> b!4704612 m!5624481))

(assert (=> b!4704612 m!5624481))

(declare-fun m!5624593 () Bool)

(assert (=> b!4704612 m!5624593))

(assert (=> b!4704614 m!5624481))

(assert (=> b!4704614 m!5624481))

(assert (=> b!4704614 m!5624593))

(assert (=> b!4704473 d!1496903))

(declare-fun d!1496907 () Bool)

(assert (=> d!1496907 (= (isDefined!9480 (getPair!514 lt!1868633 key!4653)) (not (isEmpty!29139 (getPair!514 lt!1868633 key!4653))))))

(declare-fun bs!1097932 () Bool)

(assert (= bs!1097932 d!1496907))

(assert (=> bs!1097932 m!5624305))

(declare-fun m!5624601 () Bool)

(assert (=> bs!1097932 m!5624601))

(assert (=> b!4704473 d!1496907))

(declare-fun d!1496911 () Bool)

(declare-fun content!9298 (List!52691) (InoxSet tuple2!54034))

(assert (=> d!1496911 (= (eq!1069 lt!1868624 lt!1868631) (= (content!9298 (toList!5709 lt!1868624)) (content!9298 (toList!5709 lt!1868631))))))

(declare-fun bs!1097933 () Bool)

(assert (= bs!1097933 d!1496911))

(declare-fun m!5624603 () Bool)

(assert (=> bs!1097933 m!5624603))

(declare-fun m!5624605 () Bool)

(assert (=> bs!1097933 m!5624605))

(assert (=> b!4704475 d!1496911))

(declare-fun d!1496913 () Bool)

(assert (=> d!1496913 true))

(assert (=> d!1496913 true))

(declare-fun lambda!211205 () Int)

(declare-fun forall!11425 (List!52691 Int) Bool)

(assert (=> d!1496913 (= (allKeysSameHash!1736 newBucket!218 hash!405 hashF!1323) (forall!11425 newBucket!218 lambda!211205))))

(declare-fun bs!1097938 () Bool)

(assert (= bs!1097938 d!1496913))

(declare-fun m!5624609 () Bool)

(assert (=> bs!1097938 m!5624609))

(assert (=> b!4704474 d!1496913))

(declare-fun b!4704669 () Bool)

(declare-fun e!2934712 () Bool)

(declare-datatypes ((List!52694 0))(
  ( (Nil!52570) (Cons!52570 (h!58863 K!13925) (t!359918 List!52694)) )
))
(declare-fun contains!15874 (List!52694 K!13925) Bool)

(declare-fun keys!18815 (ListMap!5073) List!52694)

(assert (=> b!4704669 (= e!2934712 (not (contains!15874 (keys!18815 lt!1868615) key!4653)))))

(declare-fun d!1496917 () Bool)

(declare-fun e!2934717 () Bool)

(assert (=> d!1496917 e!2934717))

(declare-fun res!1986986 () Bool)

(assert (=> d!1496917 (=> res!1986986 e!2934717)))

(assert (=> d!1496917 (= res!1986986 e!2934712)))

(declare-fun res!1986988 () Bool)

(assert (=> d!1496917 (=> (not res!1986988) (not e!2934712))))

(declare-fun lt!1868830 () Bool)

(assert (=> d!1496917 (= res!1986988 (not lt!1868830))))

(declare-fun lt!1868825 () Bool)

(assert (=> d!1496917 (= lt!1868830 lt!1868825)))

(declare-fun lt!1868827 () Unit!126864)

(declare-fun e!2934716 () Unit!126864)

(assert (=> d!1496917 (= lt!1868827 e!2934716)))

(declare-fun c!804105 () Bool)

(assert (=> d!1496917 (= c!804105 lt!1868825)))

(declare-fun containsKey!3204 (List!52691 K!13925) Bool)

(assert (=> d!1496917 (= lt!1868825 (containsKey!3204 (toList!5709 lt!1868615) key!4653))))

(assert (=> d!1496917 (= (contains!15868 lt!1868615 key!4653) lt!1868830)))

(declare-fun b!4704670 () Bool)

(declare-fun e!2934714 () Unit!126864)

(declare-fun Unit!126880 () Unit!126864)

(assert (=> b!4704670 (= e!2934714 Unit!126880)))

(declare-fun b!4704671 () Bool)

(declare-fun e!2934715 () Bool)

(assert (=> b!4704671 (= e!2934715 (contains!15874 (keys!18815 lt!1868615) key!4653))))

(declare-fun b!4704672 () Bool)

(assert (=> b!4704672 (= e!2934717 e!2934715)))

(declare-fun res!1986987 () Bool)

(assert (=> b!4704672 (=> (not res!1986987) (not e!2934715))))

(declare-datatypes ((Option!12228 0))(
  ( (None!12227) (Some!12227 (v!46738 V!14171)) )
))
(declare-fun isDefined!9483 (Option!12228) Bool)

(declare-fun getValueByKey!1872 (List!52691 K!13925) Option!12228)

(assert (=> b!4704672 (= res!1986987 (isDefined!9483 (getValueByKey!1872 (toList!5709 lt!1868615) key!4653)))))

(declare-fun b!4704673 () Bool)

(assert (=> b!4704673 false))

(declare-fun lt!1868826 () Unit!126864)

(declare-fun lt!1868828 () Unit!126864)

(assert (=> b!4704673 (= lt!1868826 lt!1868828)))

(assert (=> b!4704673 (containsKey!3204 (toList!5709 lt!1868615) key!4653)))

(declare-fun lemmaInGetKeysListThenContainsKey!895 (List!52691 K!13925) Unit!126864)

(assert (=> b!4704673 (= lt!1868828 (lemmaInGetKeysListThenContainsKey!895 (toList!5709 lt!1868615) key!4653))))

(declare-fun Unit!126881 () Unit!126864)

(assert (=> b!4704673 (= e!2934714 Unit!126881)))

(declare-fun b!4704674 () Bool)

(assert (=> b!4704674 (= e!2934716 e!2934714)))

(declare-fun c!804103 () Bool)

(declare-fun call!328922 () Bool)

(assert (=> b!4704674 (= c!804103 call!328922)))

(declare-fun b!4704675 () Bool)

(declare-fun lt!1868829 () Unit!126864)

(assert (=> b!4704675 (= e!2934716 lt!1868829)))

(declare-fun lt!1868824 () Unit!126864)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1764 (List!52691 K!13925) Unit!126864)

(assert (=> b!4704675 (= lt!1868824 (lemmaContainsKeyImpliesGetValueByKeyDefined!1764 (toList!5709 lt!1868615) key!4653))))

(assert (=> b!4704675 (isDefined!9483 (getValueByKey!1872 (toList!5709 lt!1868615) key!4653))))

(declare-fun lt!1868831 () Unit!126864)

(assert (=> b!4704675 (= lt!1868831 lt!1868824)))

(declare-fun lemmaInListThenGetKeysListContains!891 (List!52691 K!13925) Unit!126864)

(assert (=> b!4704675 (= lt!1868829 (lemmaInListThenGetKeysListContains!891 (toList!5709 lt!1868615) key!4653))))

(assert (=> b!4704675 call!328922))

(declare-fun bm!328917 () Bool)

(declare-fun e!2934713 () List!52694)

(assert (=> bm!328917 (= call!328922 (contains!15874 e!2934713 key!4653))))

(declare-fun c!804104 () Bool)

(assert (=> bm!328917 (= c!804104 c!804105)))

(declare-fun b!4704676 () Bool)

(declare-fun getKeysList!896 (List!52691) List!52694)

(assert (=> b!4704676 (= e!2934713 (getKeysList!896 (toList!5709 lt!1868615)))))

(declare-fun b!4704677 () Bool)

(assert (=> b!4704677 (= e!2934713 (keys!18815 lt!1868615))))

(assert (= (and d!1496917 c!804105) b!4704675))

(assert (= (and d!1496917 (not c!804105)) b!4704674))

(assert (= (and b!4704674 c!804103) b!4704673))

(assert (= (and b!4704674 (not c!804103)) b!4704670))

(assert (= (or b!4704675 b!4704674) bm!328917))

(assert (= (and bm!328917 c!804104) b!4704676))

(assert (= (and bm!328917 (not c!804104)) b!4704677))

(assert (= (and d!1496917 res!1986988) b!4704669))

(assert (= (and d!1496917 (not res!1986986)) b!4704672))

(assert (= (and b!4704672 res!1986987) b!4704671))

(declare-fun m!5624665 () Bool)

(assert (=> b!4704673 m!5624665))

(declare-fun m!5624667 () Bool)

(assert (=> b!4704673 m!5624667))

(declare-fun m!5624669 () Bool)

(assert (=> b!4704672 m!5624669))

(assert (=> b!4704672 m!5624669))

(declare-fun m!5624671 () Bool)

(assert (=> b!4704672 m!5624671))

(declare-fun m!5624673 () Bool)

(assert (=> b!4704677 m!5624673))

(assert (=> b!4704671 m!5624673))

(assert (=> b!4704671 m!5624673))

(declare-fun m!5624675 () Bool)

(assert (=> b!4704671 m!5624675))

(declare-fun m!5624677 () Bool)

(assert (=> b!4704676 m!5624677))

(declare-fun m!5624679 () Bool)

(assert (=> bm!328917 m!5624679))

(assert (=> d!1496917 m!5624665))

(declare-fun m!5624681 () Bool)

(assert (=> b!4704675 m!5624681))

(assert (=> b!4704675 m!5624669))

(assert (=> b!4704675 m!5624669))

(assert (=> b!4704675 m!5624671))

(declare-fun m!5624683 () Bool)

(assert (=> b!4704675 m!5624683))

(assert (=> b!4704669 m!5624673))

(assert (=> b!4704669 m!5624673))

(assert (=> b!4704669 m!5624675))

(assert (=> b!4704453 d!1496917))

(declare-fun bs!1097957 () Bool)

(declare-fun d!1496935 () Bool)

(assert (= bs!1097957 (and d!1496935 start!477556)))

(declare-fun lambda!211214 () Int)

(assert (=> bs!1097957 (= lambda!211214 lambda!211153)))

(declare-fun bs!1097958 () Bool)

(assert (= bs!1097958 (and d!1496935 d!1496883)))

(assert (=> bs!1097958 (= lambda!211214 lambda!211156)))

(declare-fun bs!1097959 () Bool)

(assert (= bs!1097959 (and d!1496935 d!1496885)))

(assert (=> bs!1097959 (= lambda!211214 lambda!211198)))

(declare-fun lt!1868837 () ListMap!5073)

(declare-fun invariantList!1456 (List!52691) Bool)

(assert (=> d!1496935 (invariantList!1456 (toList!5709 lt!1868837))))

(declare-fun e!2934720 () ListMap!5073)

(assert (=> d!1496935 (= lt!1868837 e!2934720)))

(declare-fun c!804108 () Bool)

(assert (=> d!1496935 (= c!804108 ((_ is Cons!52568) (toList!5710 lm!2023)))))

(assert (=> d!1496935 (forall!11423 (toList!5710 lm!2023) lambda!211214)))

(assert (=> d!1496935 (= (extractMap!1936 (toList!5710 lm!2023)) lt!1868837)))

(declare-fun b!4704682 () Bool)

(assert (=> b!4704682 (= e!2934720 (addToMapMapFromBucket!1342 (_2!30312 (h!58859 (toList!5710 lm!2023))) (extractMap!1936 (t!359914 (toList!5710 lm!2023)))))))

(declare-fun b!4704683 () Bool)

(assert (=> b!4704683 (= e!2934720 (ListMap!5074 Nil!52567))))

(assert (= (and d!1496935 c!804108) b!4704682))

(assert (= (and d!1496935 (not c!804108)) b!4704683))

(declare-fun m!5624693 () Bool)

(assert (=> d!1496935 m!5624693))

(declare-fun m!5624697 () Bool)

(assert (=> d!1496935 m!5624697))

(assert (=> b!4704682 m!5624347))

(assert (=> b!4704682 m!5624347))

(declare-fun m!5624699 () Bool)

(assert (=> b!4704682 m!5624699))

(assert (=> b!4704453 d!1496935))

(declare-fun d!1496937 () Bool)

(declare-fun lt!1868838 () List!52691)

(assert (=> d!1496937 (not (containsKey!3201 lt!1868838 key!4653))))

(declare-fun e!2934722 () List!52691)

(assert (=> d!1496937 (= lt!1868838 e!2934722)))

(declare-fun c!804110 () Bool)

(assert (=> d!1496937 (= c!804110 (and ((_ is Cons!52567) lt!1868641) (= (_1!30311 (h!58858 lt!1868641)) key!4653)))))

(assert (=> d!1496937 (noDuplicateKeys!1910 lt!1868641)))

(assert (=> d!1496937 (= (removePairForKey!1505 lt!1868641 key!4653) lt!1868838)))

(declare-fun b!4704686 () Bool)

(declare-fun e!2934721 () List!52691)

(assert (=> b!4704686 (= e!2934721 (Cons!52567 (h!58858 lt!1868641) (removePairForKey!1505 (t!359913 lt!1868641) key!4653)))))

(declare-fun b!4704685 () Bool)

(assert (=> b!4704685 (= e!2934722 e!2934721)))

(declare-fun c!804109 () Bool)

(assert (=> b!4704685 (= c!804109 ((_ is Cons!52567) lt!1868641))))

(declare-fun b!4704687 () Bool)

(assert (=> b!4704687 (= e!2934721 Nil!52567)))

(declare-fun b!4704684 () Bool)

(assert (=> b!4704684 (= e!2934722 (t!359913 lt!1868641))))

(assert (= (and d!1496937 c!804110) b!4704684))

(assert (= (and d!1496937 (not c!804110)) b!4704685))

(assert (= (and b!4704685 c!804109) b!4704686))

(assert (= (and b!4704685 (not c!804109)) b!4704687))

(declare-fun m!5624705 () Bool)

(assert (=> d!1496937 m!5624705))

(declare-fun m!5624709 () Bool)

(assert (=> d!1496937 m!5624709))

(declare-fun m!5624711 () Bool)

(assert (=> b!4704686 m!5624711))

(assert (=> b!4704465 d!1496937))

(declare-fun d!1496941 () Bool)

(assert (=> d!1496941 (= (tail!8756 newBucket!218) (t!359913 newBucket!218))))

(assert (=> b!4704465 d!1496941))

(declare-fun d!1496947 () Bool)

(assert (=> d!1496947 (= (tail!8756 oldBucket!34) (t!359913 oldBucket!34))))

(assert (=> b!4704465 d!1496947))

(declare-fun d!1496949 () Bool)

(assert (=> d!1496949 (= (eq!1069 lt!1868631 (+!2194 lt!1868627 lt!1868623)) (= (content!9298 (toList!5709 lt!1868631)) (content!9298 (toList!5709 (+!2194 lt!1868627 lt!1868623)))))))

(declare-fun bs!1097967 () Bool)

(assert (= bs!1097967 d!1496949))

(assert (=> bs!1097967 m!5624605))

(declare-fun m!5624719 () Bool)

(assert (=> bs!1097967 m!5624719))

(assert (=> b!4704467 d!1496949))

(declare-fun d!1496951 () Bool)

(declare-fun e!2934729 () Bool)

(assert (=> d!1496951 e!2934729))

(declare-fun res!1986998 () Bool)

(assert (=> d!1496951 (=> (not res!1986998) (not e!2934729))))

(declare-fun lt!1868860 () ListMap!5073)

(assert (=> d!1496951 (= res!1986998 (contains!15868 lt!1868860 (_1!30311 lt!1868623)))))

(declare-fun lt!1868857 () List!52691)

(assert (=> d!1496951 (= lt!1868860 (ListMap!5074 lt!1868857))))

(declare-fun lt!1868859 () Unit!126864)

(declare-fun lt!1868858 () Unit!126864)

(assert (=> d!1496951 (= lt!1868859 lt!1868858)))

(assert (=> d!1496951 (= (getValueByKey!1872 lt!1868857 (_1!30311 lt!1868623)) (Some!12227 (_2!30311 lt!1868623)))))

(declare-fun lemmaContainsTupThenGetReturnValue!1046 (List!52691 K!13925 V!14171) Unit!126864)

(assert (=> d!1496951 (= lt!1868858 (lemmaContainsTupThenGetReturnValue!1046 lt!1868857 (_1!30311 lt!1868623) (_2!30311 lt!1868623)))))

(declare-fun insertNoDuplicatedKeys!554 (List!52691 K!13925 V!14171) List!52691)

(assert (=> d!1496951 (= lt!1868857 (insertNoDuplicatedKeys!554 (toList!5709 lt!1868627) (_1!30311 lt!1868623) (_2!30311 lt!1868623)))))

(assert (=> d!1496951 (= (+!2194 lt!1868627 lt!1868623) lt!1868860)))

(declare-fun b!4704699 () Bool)

(declare-fun res!1986999 () Bool)

(assert (=> b!4704699 (=> (not res!1986999) (not e!2934729))))

(assert (=> b!4704699 (= res!1986999 (= (getValueByKey!1872 (toList!5709 lt!1868860) (_1!30311 lt!1868623)) (Some!12227 (_2!30311 lt!1868623))))))

(declare-fun b!4704700 () Bool)

(assert (=> b!4704700 (= e!2934729 (contains!15872 (toList!5709 lt!1868860) lt!1868623))))

(assert (= (and d!1496951 res!1986998) b!4704699))

(assert (= (and b!4704699 res!1986999) b!4704700))

(declare-fun m!5624741 () Bool)

(assert (=> d!1496951 m!5624741))

(declare-fun m!5624743 () Bool)

(assert (=> d!1496951 m!5624743))

(declare-fun m!5624745 () Bool)

(assert (=> d!1496951 m!5624745))

(declare-fun m!5624747 () Bool)

(assert (=> d!1496951 m!5624747))

(declare-fun m!5624749 () Bool)

(assert (=> b!4704699 m!5624749))

(declare-fun m!5624751 () Bool)

(assert (=> b!4704700 m!5624751))

(assert (=> b!4704467 d!1496951))

(declare-fun d!1496959 () Bool)

(declare-fun e!2934733 () Bool)

(assert (=> d!1496959 e!2934733))

(declare-fun res!1987004 () Bool)

(assert (=> d!1496959 (=> (not res!1987004) (not e!2934733))))

(declare-fun lt!1868867 () ListMap!5073)

(assert (=> d!1496959 (= res!1987004 (not (contains!15868 lt!1868867 key!4653)))))

(declare-fun removePresrvNoDuplicatedKeys!377 (List!52691 K!13925) List!52691)

(assert (=> d!1496959 (= lt!1868867 (ListMap!5074 (removePresrvNoDuplicatedKeys!377 (toList!5709 lt!1868629) key!4653)))))

(assert (=> d!1496959 (= (-!714 lt!1868629 key!4653) lt!1868867)))

(declare-fun b!4704705 () Bool)

(declare-fun content!9299 (List!52694) (InoxSet K!13925))

(assert (=> b!4704705 (= e!2934733 (= ((_ map and) (content!9299 (keys!18815 lt!1868629)) ((_ map not) (store ((as const (Array K!13925 Bool)) false) key!4653 true))) (content!9299 (keys!18815 lt!1868867))))))

(assert (= (and d!1496959 res!1987004) b!4704705))

(declare-fun m!5624765 () Bool)

(assert (=> d!1496959 m!5624765))

(declare-fun m!5624767 () Bool)

(assert (=> d!1496959 m!5624767))

(declare-fun m!5624769 () Bool)

(assert (=> b!4704705 m!5624769))

(declare-fun m!5624771 () Bool)

(assert (=> b!4704705 m!5624771))

(assert (=> b!4704705 m!5624769))

(declare-fun m!5624773 () Bool)

(assert (=> b!4704705 m!5624773))

(declare-fun m!5624775 () Bool)

(assert (=> b!4704705 m!5624775))

(declare-fun m!5624777 () Bool)

(assert (=> b!4704705 m!5624777))

(assert (=> b!4704705 m!5624775))

(assert (=> b!4704466 d!1496959))

(declare-fun bs!1097970 () Bool)

(declare-fun d!1496963 () Bool)

(assert (= bs!1097970 (and d!1496963 start!477556)))

(declare-fun lambda!211216 () Int)

(assert (=> bs!1097970 (= lambda!211216 lambda!211153)))

(declare-fun bs!1097971 () Bool)

(assert (= bs!1097971 (and d!1496963 d!1496883)))

(assert (=> bs!1097971 (= lambda!211216 lambda!211156)))

(declare-fun bs!1097972 () Bool)

(assert (= bs!1097972 (and d!1496963 d!1496885)))

(assert (=> bs!1097972 (= lambda!211216 lambda!211198)))

(declare-fun bs!1097973 () Bool)

(assert (= bs!1097973 (and d!1496963 d!1496935)))

(assert (=> bs!1097973 (= lambda!211216 lambda!211214)))

(declare-fun lt!1868868 () ListMap!5073)

(assert (=> d!1496963 (invariantList!1456 (toList!5709 lt!1868868))))

(declare-fun e!2934734 () ListMap!5073)

(assert (=> d!1496963 (= lt!1868868 e!2934734)))

(declare-fun c!804112 () Bool)

(assert (=> d!1496963 (= c!804112 ((_ is Cons!52568) (Cons!52568 lt!1868613 lt!1868634)))))

(assert (=> d!1496963 (forall!11423 (Cons!52568 lt!1868613 lt!1868634) lambda!211216)))

(assert (=> d!1496963 (= (extractMap!1936 (Cons!52568 lt!1868613 lt!1868634)) lt!1868868)))

(declare-fun b!4704706 () Bool)

(assert (=> b!4704706 (= e!2934734 (addToMapMapFromBucket!1342 (_2!30312 (h!58859 (Cons!52568 lt!1868613 lt!1868634))) (extractMap!1936 (t!359914 (Cons!52568 lt!1868613 lt!1868634)))))))

(declare-fun b!4704707 () Bool)

(assert (=> b!4704707 (= e!2934734 (ListMap!5074 Nil!52567))))

(assert (= (and d!1496963 c!804112) b!4704706))

(assert (= (and d!1496963 (not c!804112)) b!4704707))

(declare-fun m!5624779 () Bool)

(assert (=> d!1496963 m!5624779))

(declare-fun m!5624781 () Bool)

(assert (=> d!1496963 m!5624781))

(declare-fun m!5624783 () Bool)

(assert (=> b!4704706 m!5624783))

(assert (=> b!4704706 m!5624783))

(declare-fun m!5624785 () Bool)

(assert (=> b!4704706 m!5624785))

(assert (=> b!4704466 d!1496963))

(declare-fun d!1496965 () Bool)

(assert (=> d!1496965 (= (eq!1069 (extractMap!1936 (Cons!52568 lt!1868639 lt!1868634)) (-!714 (extractMap!1936 (Cons!52568 lt!1868613 lt!1868634)) key!4653)) (= (content!9298 (toList!5709 (extractMap!1936 (Cons!52568 lt!1868639 lt!1868634)))) (content!9298 (toList!5709 (-!714 (extractMap!1936 (Cons!52568 lt!1868613 lt!1868634)) key!4653)))))))

(declare-fun bs!1097974 () Bool)

(assert (= bs!1097974 d!1496965))

(declare-fun m!5624787 () Bool)

(assert (=> bs!1097974 m!5624787))

(declare-fun m!5624789 () Bool)

(assert (=> bs!1097974 m!5624789))

(assert (=> b!4704466 d!1496965))

(declare-fun bs!1097975 () Bool)

(declare-fun d!1496967 () Bool)

(assert (= bs!1097975 (and d!1496967 d!1496935)))

(declare-fun lambda!211217 () Int)

(assert (=> bs!1097975 (= lambda!211217 lambda!211214)))

(declare-fun bs!1097976 () Bool)

(assert (= bs!1097976 (and d!1496967 d!1496885)))

(assert (=> bs!1097976 (= lambda!211217 lambda!211198)))

(declare-fun bs!1097977 () Bool)

(assert (= bs!1097977 (and d!1496967 start!477556)))

(assert (=> bs!1097977 (= lambda!211217 lambda!211153)))

(declare-fun bs!1097978 () Bool)

(assert (= bs!1097978 (and d!1496967 d!1496883)))

(assert (=> bs!1097978 (= lambda!211217 lambda!211156)))

(declare-fun bs!1097979 () Bool)

(assert (= bs!1097979 (and d!1496967 d!1496963)))

(assert (=> bs!1097979 (= lambda!211217 lambda!211216)))

(declare-fun lt!1868869 () ListMap!5073)

(assert (=> d!1496967 (invariantList!1456 (toList!5709 lt!1868869))))

(declare-fun e!2934735 () ListMap!5073)

(assert (=> d!1496967 (= lt!1868869 e!2934735)))

(declare-fun c!804113 () Bool)

(assert (=> d!1496967 (= c!804113 ((_ is Cons!52568) (Cons!52568 lt!1868639 lt!1868634)))))

(assert (=> d!1496967 (forall!11423 (Cons!52568 lt!1868639 lt!1868634) lambda!211217)))

(assert (=> d!1496967 (= (extractMap!1936 (Cons!52568 lt!1868639 lt!1868634)) lt!1868869)))

(declare-fun b!4704708 () Bool)

(assert (=> b!4704708 (= e!2934735 (addToMapMapFromBucket!1342 (_2!30312 (h!58859 (Cons!52568 lt!1868639 lt!1868634))) (extractMap!1936 (t!359914 (Cons!52568 lt!1868639 lt!1868634)))))))

(declare-fun b!4704709 () Bool)

(assert (=> b!4704709 (= e!2934735 (ListMap!5074 Nil!52567))))

(assert (= (and d!1496967 c!804113) b!4704708))

(assert (= (and d!1496967 (not c!804113)) b!4704709))

(declare-fun m!5624791 () Bool)

(assert (=> d!1496967 m!5624791))

(declare-fun m!5624793 () Bool)

(assert (=> d!1496967 m!5624793))

(declare-fun m!5624795 () Bool)

(assert (=> b!4704708 m!5624795))

(assert (=> b!4704708 m!5624795))

(declare-fun m!5624797 () Bool)

(assert (=> b!4704708 m!5624797))

(assert (=> b!4704466 d!1496967))

(declare-fun bs!1097980 () Bool)

(declare-fun d!1496969 () Bool)

(assert (= bs!1097980 (and d!1496969 d!1496967)))

(declare-fun lambda!211218 () Int)

(assert (=> bs!1097980 (= lambda!211218 lambda!211217)))

(declare-fun bs!1097981 () Bool)

(assert (= bs!1097981 (and d!1496969 d!1496935)))

(assert (=> bs!1097981 (= lambda!211218 lambda!211214)))

(declare-fun bs!1097982 () Bool)

(assert (= bs!1097982 (and d!1496969 d!1496885)))

(assert (=> bs!1097982 (= lambda!211218 lambda!211198)))

(declare-fun bs!1097983 () Bool)

(assert (= bs!1097983 (and d!1496969 start!477556)))

(assert (=> bs!1097983 (= lambda!211218 lambda!211153)))

(declare-fun bs!1097984 () Bool)

(assert (= bs!1097984 (and d!1496969 d!1496883)))

(assert (=> bs!1097984 (= lambda!211218 lambda!211156)))

(declare-fun bs!1097985 () Bool)

(assert (= bs!1097985 (and d!1496969 d!1496963)))

(assert (=> bs!1097985 (= lambda!211218 lambda!211216)))

(declare-fun lt!1868870 () ListMap!5073)

(assert (=> d!1496969 (invariantList!1456 (toList!5709 lt!1868870))))

(declare-fun e!2934736 () ListMap!5073)

(assert (=> d!1496969 (= lt!1868870 e!2934736)))

(declare-fun c!804114 () Bool)

(assert (=> d!1496969 (= c!804114 ((_ is Cons!52568) (Cons!52568 lt!1868639 (t!359914 (toList!5710 lm!2023)))))))

(assert (=> d!1496969 (forall!11423 (Cons!52568 lt!1868639 (t!359914 (toList!5710 lm!2023))) lambda!211218)))

(assert (=> d!1496969 (= (extractMap!1936 (Cons!52568 lt!1868639 (t!359914 (toList!5710 lm!2023)))) lt!1868870)))

(declare-fun b!4704710 () Bool)

(assert (=> b!4704710 (= e!2934736 (addToMapMapFromBucket!1342 (_2!30312 (h!58859 (Cons!52568 lt!1868639 (t!359914 (toList!5710 lm!2023))))) (extractMap!1936 (t!359914 (Cons!52568 lt!1868639 (t!359914 (toList!5710 lm!2023)))))))))

(declare-fun b!4704711 () Bool)

(assert (=> b!4704711 (= e!2934736 (ListMap!5074 Nil!52567))))

(assert (= (and d!1496969 c!804114) b!4704710))

(assert (= (and d!1496969 (not c!804114)) b!4704711))

(declare-fun m!5624799 () Bool)

(assert (=> d!1496969 m!5624799))

(declare-fun m!5624801 () Bool)

(assert (=> d!1496969 m!5624801))

(declare-fun m!5624803 () Bool)

(assert (=> b!4704710 m!5624803))

(assert (=> b!4704710 m!5624803))

(declare-fun m!5624805 () Bool)

(assert (=> b!4704710 m!5624805))

(assert (=> b!4704466 d!1496969))

(declare-fun d!1496971 () Bool)

(declare-fun e!2934737 () Bool)

(assert (=> d!1496971 e!2934737))

(declare-fun res!1987005 () Bool)

(assert (=> d!1496971 (=> (not res!1987005) (not e!2934737))))

(declare-fun lt!1868874 () ListMap!5073)

(assert (=> d!1496971 (= res!1987005 (not (contains!15868 lt!1868874 key!4653)))))

(assert (=> d!1496971 (= lt!1868874 (ListMap!5074 (removePresrvNoDuplicatedKeys!377 (toList!5709 (extractMap!1936 (Cons!52568 lt!1868613 lt!1868634))) key!4653)))))

(assert (=> d!1496971 (= (-!714 (extractMap!1936 (Cons!52568 lt!1868613 lt!1868634)) key!4653) lt!1868874)))

(declare-fun b!4704712 () Bool)

(assert (=> b!4704712 (= e!2934737 (= ((_ map and) (content!9299 (keys!18815 (extractMap!1936 (Cons!52568 lt!1868613 lt!1868634)))) ((_ map not) (store ((as const (Array K!13925 Bool)) false) key!4653 true))) (content!9299 (keys!18815 lt!1868874))))))

(assert (= (and d!1496971 res!1987005) b!4704712))

(declare-fun m!5624815 () Bool)

(assert (=> d!1496971 m!5624815))

(declare-fun m!5624817 () Bool)

(assert (=> d!1496971 m!5624817))

(assert (=> b!4704712 m!5624423))

(declare-fun m!5624819 () Bool)

(assert (=> b!4704712 m!5624819))

(assert (=> b!4704712 m!5624771))

(assert (=> b!4704712 m!5624819))

(declare-fun m!5624821 () Bool)

(assert (=> b!4704712 m!5624821))

(declare-fun m!5624823 () Bool)

(assert (=> b!4704712 m!5624823))

(declare-fun m!5624825 () Bool)

(assert (=> b!4704712 m!5624825))

(assert (=> b!4704712 m!5624823))

(assert (=> b!4704466 d!1496971))

(declare-fun d!1496975 () Bool)

(assert (=> d!1496975 (= (tail!8757 lt!1868632) (t!359914 lt!1868632))))

(assert (=> b!4704466 d!1496975))

(declare-fun d!1496979 () Bool)

(assert (=> d!1496979 (= (eq!1069 lt!1868616 lt!1868621) (= (content!9298 (toList!5709 lt!1868616)) (content!9298 (toList!5709 lt!1868621))))))

(declare-fun bs!1097987 () Bool)

(assert (= bs!1097987 d!1496979))

(declare-fun m!5624841 () Bool)

(assert (=> bs!1097987 m!5624841))

(declare-fun m!5624847 () Bool)

(assert (=> bs!1097987 m!5624847))

(assert (=> b!4704466 d!1496979))

(declare-fun bs!1097995 () Bool)

(declare-fun d!1496981 () Bool)

(assert (= bs!1097995 (and d!1496981 d!1496967)))

(declare-fun lambda!211221 () Int)

(assert (=> bs!1097995 (= lambda!211221 lambda!211217)))

(declare-fun bs!1097996 () Bool)

(assert (= bs!1097996 (and d!1496981 d!1496935)))

(assert (=> bs!1097996 (= lambda!211221 lambda!211214)))

(declare-fun bs!1097997 () Bool)

(assert (= bs!1097997 (and d!1496981 d!1496969)))

(assert (=> bs!1097997 (= lambda!211221 lambda!211218)))

(declare-fun bs!1097998 () Bool)

(assert (= bs!1097998 (and d!1496981 d!1496885)))

(assert (=> bs!1097998 (= lambda!211221 lambda!211198)))

(declare-fun bs!1097999 () Bool)

(assert (= bs!1097999 (and d!1496981 start!477556)))

(assert (=> bs!1097999 (= lambda!211221 lambda!211153)))

(declare-fun bs!1098000 () Bool)

(assert (= bs!1098000 (and d!1496981 d!1496883)))

(assert (=> bs!1098000 (= lambda!211221 lambda!211156)))

(declare-fun bs!1098001 () Bool)

(assert (= bs!1098001 (and d!1496981 d!1496963)))

(assert (=> bs!1098001 (= lambda!211221 lambda!211216)))

(assert (=> d!1496981 (eq!1069 (extractMap!1936 (Cons!52568 (tuple2!54037 hash!405 lt!1868646) (tail!8757 (toList!5710 lt!1868645)))) (-!714 (extractMap!1936 (Cons!52568 (tuple2!54037 hash!405 (t!359913 oldBucket!34)) (tail!8757 (toList!5710 lt!1868645)))) key!4653))))

(declare-fun lt!1868892 () Unit!126864)

(declare-fun choose!33007 (ListLongMap!4239 (_ BitVec 64) List!52691 List!52691 K!13925 Hashable!6279) Unit!126864)

(assert (=> d!1496981 (= lt!1868892 (choose!33007 lt!1868645 hash!405 (t!359913 oldBucket!34) lt!1868646 key!4653 hashF!1323))))

(assert (=> d!1496981 (forall!11423 (toList!5710 lt!1868645) lambda!211221)))

(assert (=> d!1496981 (= (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMapOneHashIsHead!84 lt!1868645 hash!405 (t!359913 oldBucket!34) lt!1868646 key!4653 hashF!1323) lt!1868892)))

(declare-fun bs!1098002 () Bool)

(assert (= bs!1098002 d!1496981))

(declare-fun m!5624909 () Bool)

(assert (=> bs!1098002 m!5624909))

(declare-fun m!5624911 () Bool)

(assert (=> bs!1098002 m!5624911))

(declare-fun m!5624913 () Bool)

(assert (=> bs!1098002 m!5624913))

(declare-fun m!5624915 () Bool)

(assert (=> bs!1098002 m!5624915))

(declare-fun m!5624917 () Bool)

(assert (=> bs!1098002 m!5624917))

(assert (=> bs!1098002 m!5624913))

(assert (=> bs!1098002 m!5624917))

(declare-fun m!5624919 () Bool)

(assert (=> bs!1098002 m!5624919))

(declare-fun m!5624921 () Bool)

(assert (=> bs!1098002 m!5624921))

(assert (=> bs!1098002 m!5624911))

(assert (=> b!4704466 d!1496981))

(declare-fun d!1497013 () Bool)

(assert (=> d!1497013 (= (eq!1069 (addToMapMapFromBucket!1342 (Cons!52567 lt!1868648 lt!1868641) lt!1868637) (+!2194 (addToMapMapFromBucket!1342 lt!1868641 lt!1868637) lt!1868648)) (= (content!9298 (toList!5709 (addToMapMapFromBucket!1342 (Cons!52567 lt!1868648 lt!1868641) lt!1868637))) (content!9298 (toList!5709 (+!2194 (addToMapMapFromBucket!1342 lt!1868641 lt!1868637) lt!1868648)))))))

(declare-fun bs!1098003 () Bool)

(assert (= bs!1098003 d!1497013))

(declare-fun m!5624923 () Bool)

(assert (=> bs!1098003 m!5624923))

(declare-fun m!5624925 () Bool)

(assert (=> bs!1098003 m!5624925))

(assert (=> b!4704468 d!1497013))

(declare-fun b!4704729 () Bool)

(declare-fun e!2934748 () Bool)

(assert (=> b!4704729 (= e!2934748 (not (contains!15874 (keys!18815 lt!1868629) key!4653)))))

(declare-fun d!1497015 () Bool)

(declare-fun e!2934753 () Bool)

(assert (=> d!1497015 e!2934753))

(declare-fun res!1987014 () Bool)

(assert (=> d!1497015 (=> res!1987014 e!2934753)))

(assert (=> d!1497015 (= res!1987014 e!2934748)))

(declare-fun res!1987016 () Bool)

(assert (=> d!1497015 (=> (not res!1987016) (not e!2934748))))

(declare-fun lt!1868899 () Bool)

(assert (=> d!1497015 (= res!1987016 (not lt!1868899))))

(declare-fun lt!1868894 () Bool)

(assert (=> d!1497015 (= lt!1868899 lt!1868894)))

(declare-fun lt!1868896 () Unit!126864)

(declare-fun e!2934752 () Unit!126864)

(assert (=> d!1497015 (= lt!1868896 e!2934752)))

(declare-fun c!804121 () Bool)

(assert (=> d!1497015 (= c!804121 lt!1868894)))

(assert (=> d!1497015 (= lt!1868894 (containsKey!3204 (toList!5709 lt!1868629) key!4653))))

(assert (=> d!1497015 (= (contains!15868 lt!1868629 key!4653) lt!1868899)))

(declare-fun b!4704730 () Bool)

(declare-fun e!2934750 () Unit!126864)

(declare-fun Unit!126882 () Unit!126864)

(assert (=> b!4704730 (= e!2934750 Unit!126882)))

(declare-fun b!4704731 () Bool)

(declare-fun e!2934751 () Bool)

(assert (=> b!4704731 (= e!2934751 (contains!15874 (keys!18815 lt!1868629) key!4653))))

(declare-fun b!4704732 () Bool)

(assert (=> b!4704732 (= e!2934753 e!2934751)))

(declare-fun res!1987015 () Bool)

(assert (=> b!4704732 (=> (not res!1987015) (not e!2934751))))

(assert (=> b!4704732 (= res!1987015 (isDefined!9483 (getValueByKey!1872 (toList!5709 lt!1868629) key!4653)))))

(declare-fun b!4704733 () Bool)

(assert (=> b!4704733 false))

(declare-fun lt!1868895 () Unit!126864)

(declare-fun lt!1868897 () Unit!126864)

(assert (=> b!4704733 (= lt!1868895 lt!1868897)))

(assert (=> b!4704733 (containsKey!3204 (toList!5709 lt!1868629) key!4653)))

(assert (=> b!4704733 (= lt!1868897 (lemmaInGetKeysListThenContainsKey!895 (toList!5709 lt!1868629) key!4653))))

(declare-fun Unit!126883 () Unit!126864)

(assert (=> b!4704733 (= e!2934750 Unit!126883)))

(declare-fun b!4704734 () Bool)

(assert (=> b!4704734 (= e!2934752 e!2934750)))

(declare-fun c!804119 () Bool)

(declare-fun call!328923 () Bool)

(assert (=> b!4704734 (= c!804119 call!328923)))

(declare-fun b!4704735 () Bool)

(declare-fun lt!1868898 () Unit!126864)

(assert (=> b!4704735 (= e!2934752 lt!1868898)))

(declare-fun lt!1868893 () Unit!126864)

(assert (=> b!4704735 (= lt!1868893 (lemmaContainsKeyImpliesGetValueByKeyDefined!1764 (toList!5709 lt!1868629) key!4653))))

(assert (=> b!4704735 (isDefined!9483 (getValueByKey!1872 (toList!5709 lt!1868629) key!4653))))

(declare-fun lt!1868900 () Unit!126864)

(assert (=> b!4704735 (= lt!1868900 lt!1868893)))

(assert (=> b!4704735 (= lt!1868898 (lemmaInListThenGetKeysListContains!891 (toList!5709 lt!1868629) key!4653))))

(assert (=> b!4704735 call!328923))

(declare-fun bm!328918 () Bool)

(declare-fun e!2934749 () List!52694)

(assert (=> bm!328918 (= call!328923 (contains!15874 e!2934749 key!4653))))

(declare-fun c!804120 () Bool)

(assert (=> bm!328918 (= c!804120 c!804121)))

(declare-fun b!4704736 () Bool)

(assert (=> b!4704736 (= e!2934749 (getKeysList!896 (toList!5709 lt!1868629)))))

(declare-fun b!4704737 () Bool)

(assert (=> b!4704737 (= e!2934749 (keys!18815 lt!1868629))))

(assert (= (and d!1497015 c!804121) b!4704735))

(assert (= (and d!1497015 (not c!804121)) b!4704734))

(assert (= (and b!4704734 c!804119) b!4704733))

(assert (= (and b!4704734 (not c!804119)) b!4704730))

(assert (= (or b!4704735 b!4704734) bm!328918))

(assert (= (and bm!328918 c!804120) b!4704736))

(assert (= (and bm!328918 (not c!804120)) b!4704737))

(assert (= (and d!1497015 res!1987016) b!4704729))

(assert (= (and d!1497015 (not res!1987014)) b!4704732))

(assert (= (and b!4704732 res!1987015) b!4704731))

(declare-fun m!5624927 () Bool)

(assert (=> b!4704733 m!5624927))

(declare-fun m!5624929 () Bool)

(assert (=> b!4704733 m!5624929))

(declare-fun m!5624931 () Bool)

(assert (=> b!4704732 m!5624931))

(assert (=> b!4704732 m!5624931))

(declare-fun m!5624933 () Bool)

(assert (=> b!4704732 m!5624933))

(assert (=> b!4704737 m!5624769))

(assert (=> b!4704731 m!5624769))

(assert (=> b!4704731 m!5624769))

(declare-fun m!5624935 () Bool)

(assert (=> b!4704731 m!5624935))

(declare-fun m!5624937 () Bool)

(assert (=> b!4704736 m!5624937))

(declare-fun m!5624939 () Bool)

(assert (=> bm!328918 m!5624939))

(assert (=> d!1497015 m!5624927))

(declare-fun m!5624941 () Bool)

(assert (=> b!4704735 m!5624941))

(assert (=> b!4704735 m!5624931))

(assert (=> b!4704735 m!5624931))

(assert (=> b!4704735 m!5624933))

(declare-fun m!5624943 () Bool)

(assert (=> b!4704735 m!5624943))

(assert (=> b!4704729 m!5624769))

(assert (=> b!4704729 m!5624769))

(assert (=> b!4704729 m!5624935))

(assert (=> b!4704468 d!1497015))

(declare-fun d!1497017 () Bool)

(assert (=> d!1497017 (eq!1069 (addToMapMapFromBucket!1342 (Cons!52567 lt!1868648 lt!1868641) lt!1868637) (+!2194 (addToMapMapFromBucket!1342 lt!1868641 lt!1868637) lt!1868648))))

(declare-fun lt!1868932 () Unit!126864)

(declare-fun choose!33008 (tuple2!54034 List!52691 ListMap!5073) Unit!126864)

(assert (=> d!1497017 (= lt!1868932 (choose!33008 lt!1868648 lt!1868641 lt!1868637))))

(assert (=> d!1497017 (noDuplicateKeys!1910 lt!1868641)))

(assert (=> d!1497017 (= (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!318 lt!1868648 lt!1868641 lt!1868637) lt!1868932)))

(declare-fun bs!1098031 () Bool)

(assert (= bs!1098031 d!1497017))

(assert (=> bs!1098031 m!5624359))

(assert (=> bs!1098031 m!5624361))

(assert (=> bs!1098031 m!5624377))

(assert (=> bs!1098031 m!5624361))

(assert (=> bs!1098031 m!5624387))

(assert (=> bs!1098031 m!5624377))

(assert (=> bs!1098031 m!5624709))

(declare-fun m!5625001 () Bool)

(assert (=> bs!1098031 m!5625001))

(assert (=> bs!1098031 m!5624359))

(assert (=> b!4704468 d!1497017))

(declare-fun bs!1098201 () Bool)

(declare-fun b!4704836 () Bool)

(assert (= bs!1098201 (and b!4704836 d!1496913)))

(declare-fun lambda!211278 () Int)

(assert (=> bs!1098201 (not (= lambda!211278 lambda!211205))))

(assert (=> b!4704836 true))

(declare-fun bs!1098202 () Bool)

(declare-fun b!4704834 () Bool)

(assert (= bs!1098202 (and b!4704834 d!1496913)))

(declare-fun lambda!211279 () Int)

(assert (=> bs!1098202 (not (= lambda!211279 lambda!211205))))

(declare-fun bs!1098203 () Bool)

(assert (= bs!1098203 (and b!4704834 b!4704836)))

(assert (=> bs!1098203 (= lambda!211279 lambda!211278)))

(assert (=> b!4704834 true))

(declare-fun lambda!211280 () Int)

(assert (=> bs!1098202 (not (= lambda!211280 lambda!211205))))

(declare-fun lt!1869103 () ListMap!5073)

(assert (=> bs!1098203 (= (= lt!1869103 lt!1868637) (= lambda!211280 lambda!211278))))

(assert (=> b!4704834 (= (= lt!1869103 lt!1868637) (= lambda!211280 lambda!211279))))

(assert (=> b!4704834 true))

(declare-fun bs!1098204 () Bool)

(declare-fun d!1497027 () Bool)

(assert (= bs!1098204 (and d!1497027 d!1496913)))

(declare-fun lambda!211281 () Int)

(assert (=> bs!1098204 (not (= lambda!211281 lambda!211205))))

(declare-fun bs!1098205 () Bool)

(assert (= bs!1098205 (and d!1497027 b!4704836)))

(declare-fun lt!1869111 () ListMap!5073)

(assert (=> bs!1098205 (= (= lt!1869111 lt!1868637) (= lambda!211281 lambda!211278))))

(declare-fun bs!1098206 () Bool)

(assert (= bs!1098206 (and d!1497027 b!4704834)))

(assert (=> bs!1098206 (= (= lt!1869111 lt!1868637) (= lambda!211281 lambda!211279))))

(assert (=> bs!1098206 (= (= lt!1869111 lt!1869103) (= lambda!211281 lambda!211280))))

(assert (=> d!1497027 true))

(declare-fun b!4704833 () Bool)

(declare-fun e!2934812 () Bool)

(assert (=> b!4704833 (= e!2934812 (invariantList!1456 (toList!5709 lt!1869111)))))

(declare-fun bm!328938 () Bool)

(declare-fun call!328945 () Unit!126864)

(declare-fun lemmaContainsAllItsOwnKeys!744 (ListMap!5073) Unit!126864)

(assert (=> bm!328938 (= call!328945 (lemmaContainsAllItsOwnKeys!744 lt!1868637))))

(declare-fun e!2934814 () ListMap!5073)

(assert (=> b!4704834 (= e!2934814 lt!1869103)))

(declare-fun lt!1869099 () ListMap!5073)

(assert (=> b!4704834 (= lt!1869099 (+!2194 lt!1868637 (h!58858 (Cons!52567 lt!1868648 lt!1868641))))))

(assert (=> b!4704834 (= lt!1869103 (addToMapMapFromBucket!1342 (t!359913 (Cons!52567 lt!1868648 lt!1868641)) (+!2194 lt!1868637 (h!58858 (Cons!52567 lt!1868648 lt!1868641)))))))

(declare-fun lt!1869093 () Unit!126864)

(assert (=> b!4704834 (= lt!1869093 call!328945)))

(assert (=> b!4704834 (forall!11425 (toList!5709 lt!1868637) lambda!211279)))

(declare-fun lt!1869092 () Unit!126864)

(assert (=> b!4704834 (= lt!1869092 lt!1869093)))

(declare-fun call!328944 () Bool)

(assert (=> b!4704834 call!328944))

(declare-fun lt!1869095 () Unit!126864)

(declare-fun Unit!126895 () Unit!126864)

(assert (=> b!4704834 (= lt!1869095 Unit!126895)))

(declare-fun call!328943 () Bool)

(assert (=> b!4704834 call!328943))

(declare-fun lt!1869096 () Unit!126864)

(declare-fun Unit!126896 () Unit!126864)

(assert (=> b!4704834 (= lt!1869096 Unit!126896)))

(declare-fun lt!1869104 () Unit!126864)

(declare-fun Unit!126897 () Unit!126864)

(assert (=> b!4704834 (= lt!1869104 Unit!126897)))

(declare-fun lt!1869098 () Unit!126864)

(declare-fun forallContained!3532 (List!52691 Int tuple2!54034) Unit!126864)

(assert (=> b!4704834 (= lt!1869098 (forallContained!3532 (toList!5709 lt!1869099) lambda!211280 (h!58858 (Cons!52567 lt!1868648 lt!1868641))))))

(assert (=> b!4704834 (contains!15868 lt!1869099 (_1!30311 (h!58858 (Cons!52567 lt!1868648 lt!1868641))))))

(declare-fun lt!1869105 () Unit!126864)

(declare-fun Unit!126898 () Unit!126864)

(assert (=> b!4704834 (= lt!1869105 Unit!126898)))

(assert (=> b!4704834 (contains!15868 lt!1869103 (_1!30311 (h!58858 (Cons!52567 lt!1868648 lt!1868641))))))

(declare-fun lt!1869094 () Unit!126864)

(declare-fun Unit!126899 () Unit!126864)

(assert (=> b!4704834 (= lt!1869094 Unit!126899)))

(assert (=> b!4704834 (forall!11425 (Cons!52567 lt!1868648 lt!1868641) lambda!211280)))

(declare-fun lt!1869091 () Unit!126864)

(declare-fun Unit!126900 () Unit!126864)

(assert (=> b!4704834 (= lt!1869091 Unit!126900)))

(assert (=> b!4704834 (forall!11425 (toList!5709 lt!1869099) lambda!211280)))

(declare-fun lt!1869100 () Unit!126864)

(declare-fun Unit!126901 () Unit!126864)

(assert (=> b!4704834 (= lt!1869100 Unit!126901)))

(declare-fun lt!1869110 () Unit!126864)

(declare-fun Unit!126902 () Unit!126864)

(assert (=> b!4704834 (= lt!1869110 Unit!126902)))

(declare-fun lt!1869106 () Unit!126864)

(declare-fun addForallContainsKeyThenBeforeAdding!743 (ListMap!5073 ListMap!5073 K!13925 V!14171) Unit!126864)

(assert (=> b!4704834 (= lt!1869106 (addForallContainsKeyThenBeforeAdding!743 lt!1868637 lt!1869103 (_1!30311 (h!58858 (Cons!52567 lt!1868648 lt!1868641))) (_2!30311 (h!58858 (Cons!52567 lt!1868648 lt!1868641)))))))

(assert (=> b!4704834 (forall!11425 (toList!5709 lt!1868637) lambda!211280)))

(declare-fun lt!1869097 () Unit!126864)

(assert (=> b!4704834 (= lt!1869097 lt!1869106)))

(assert (=> b!4704834 (forall!11425 (toList!5709 lt!1868637) lambda!211280)))

(declare-fun lt!1869109 () Unit!126864)

(declare-fun Unit!126903 () Unit!126864)

(assert (=> b!4704834 (= lt!1869109 Unit!126903)))

(declare-fun res!1987067 () Bool)

(assert (=> b!4704834 (= res!1987067 (forall!11425 (Cons!52567 lt!1868648 lt!1868641) lambda!211280))))

(declare-fun e!2934813 () Bool)

(assert (=> b!4704834 (=> (not res!1987067) (not e!2934813))))

(assert (=> b!4704834 e!2934813))

(declare-fun lt!1869101 () Unit!126864)

(declare-fun Unit!126904 () Unit!126864)

(assert (=> b!4704834 (= lt!1869101 Unit!126904)))

(declare-fun b!4704835 () Bool)

(assert (=> b!4704835 (= e!2934813 (forall!11425 (toList!5709 lt!1868637) lambda!211280))))

(declare-fun bm!328939 () Bool)

(declare-fun c!804143 () Bool)

(assert (=> bm!328939 (= call!328943 (forall!11425 (ite c!804143 (toList!5709 lt!1868637) (t!359913 (Cons!52567 lt!1868648 lt!1868641))) (ite c!804143 lambda!211278 lambda!211280)))))

(declare-fun bm!328940 () Bool)

(assert (=> bm!328940 (= call!328944 (forall!11425 (ite c!804143 (toList!5709 lt!1868637) (toList!5709 lt!1869099)) (ite c!804143 lambda!211278 lambda!211280)))))

(declare-fun b!4704837 () Bool)

(declare-fun res!1987069 () Bool)

(assert (=> b!4704837 (=> (not res!1987069) (not e!2934812))))

(assert (=> b!4704837 (= res!1987069 (forall!11425 (toList!5709 lt!1868637) lambda!211281))))

(assert (=> b!4704836 (= e!2934814 lt!1868637)))

(declare-fun lt!1869102 () Unit!126864)

(assert (=> b!4704836 (= lt!1869102 call!328945)))

(assert (=> b!4704836 call!328944))

(declare-fun lt!1869108 () Unit!126864)

(assert (=> b!4704836 (= lt!1869108 lt!1869102)))

(assert (=> b!4704836 call!328943))

(declare-fun lt!1869107 () Unit!126864)

(declare-fun Unit!126905 () Unit!126864)

(assert (=> b!4704836 (= lt!1869107 Unit!126905)))

(assert (=> d!1497027 e!2934812))

(declare-fun res!1987068 () Bool)

(assert (=> d!1497027 (=> (not res!1987068) (not e!2934812))))

(assert (=> d!1497027 (= res!1987068 (forall!11425 (Cons!52567 lt!1868648 lt!1868641) lambda!211281))))

(assert (=> d!1497027 (= lt!1869111 e!2934814)))

(assert (=> d!1497027 (= c!804143 ((_ is Nil!52567) (Cons!52567 lt!1868648 lt!1868641)))))

(assert (=> d!1497027 (noDuplicateKeys!1910 (Cons!52567 lt!1868648 lt!1868641))))

(assert (=> d!1497027 (= (addToMapMapFromBucket!1342 (Cons!52567 lt!1868648 lt!1868641) lt!1868637) lt!1869111)))

(assert (= (and d!1497027 c!804143) b!4704836))

(assert (= (and d!1497027 (not c!804143)) b!4704834))

(assert (= (and b!4704834 res!1987067) b!4704835))

(assert (= (or b!4704836 b!4704834) bm!328938))

(assert (= (or b!4704836 b!4704834) bm!328940))

(assert (= (or b!4704836 b!4704834) bm!328939))

(assert (= (and d!1497027 res!1987068) b!4704837))

(assert (= (and b!4704837 res!1987069) b!4704833))

(declare-fun m!5625233 () Bool)

(assert (=> bm!328939 m!5625233))

(declare-fun m!5625235 () Bool)

(assert (=> d!1497027 m!5625235))

(declare-fun m!5625237 () Bool)

(assert (=> d!1497027 m!5625237))

(declare-fun m!5625239 () Bool)

(assert (=> b!4704837 m!5625239))

(declare-fun m!5625241 () Bool)

(assert (=> b!4704834 m!5625241))

(declare-fun m!5625243 () Bool)

(assert (=> b!4704834 m!5625243))

(declare-fun m!5625245 () Bool)

(assert (=> b!4704834 m!5625245))

(declare-fun m!5625247 () Bool)

(assert (=> b!4704834 m!5625247))

(declare-fun m!5625249 () Bool)

(assert (=> b!4704834 m!5625249))

(assert (=> b!4704834 m!5625243))

(declare-fun m!5625251 () Bool)

(assert (=> b!4704834 m!5625251))

(declare-fun m!5625253 () Bool)

(assert (=> b!4704834 m!5625253))

(declare-fun m!5625255 () Bool)

(assert (=> b!4704834 m!5625255))

(assert (=> b!4704834 m!5625247))

(assert (=> b!4704834 m!5625253))

(declare-fun m!5625257 () Bool)

(assert (=> b!4704834 m!5625257))

(declare-fun m!5625259 () Bool)

(assert (=> b!4704834 m!5625259))

(declare-fun m!5625261 () Bool)

(assert (=> bm!328940 m!5625261))

(declare-fun m!5625263 () Bool)

(assert (=> b!4704833 m!5625263))

(assert (=> b!4704835 m!5625247))

(declare-fun m!5625265 () Bool)

(assert (=> bm!328938 m!5625265))

(assert (=> b!4704468 d!1497027))

(declare-fun d!1497083 () Bool)

(assert (=> d!1497083 (= (eq!1069 (addToMapMapFromBucket!1342 (Cons!52567 lt!1868623 lt!1868646) lt!1868637) (+!2194 (addToMapMapFromBucket!1342 lt!1868646 lt!1868637) lt!1868623)) (= (content!9298 (toList!5709 (addToMapMapFromBucket!1342 (Cons!52567 lt!1868623 lt!1868646) lt!1868637))) (content!9298 (toList!5709 (+!2194 (addToMapMapFromBucket!1342 lt!1868646 lt!1868637) lt!1868623)))))))

(declare-fun bs!1098207 () Bool)

(assert (= bs!1098207 d!1497083))

(declare-fun m!5625267 () Bool)

(assert (=> bs!1098207 m!5625267))

(declare-fun m!5625269 () Bool)

(assert (=> bs!1098207 m!5625269))

(assert (=> b!4704468 d!1497083))

(declare-fun bs!1098208 () Bool)

(declare-fun b!4704843 () Bool)

(assert (= bs!1098208 (and b!4704843 d!1496913)))

(declare-fun lambda!211282 () Int)

(assert (=> bs!1098208 (not (= lambda!211282 lambda!211205))))

(declare-fun bs!1098209 () Bool)

(assert (= bs!1098209 (and b!4704843 d!1497027)))

(assert (=> bs!1098209 (= (= lt!1868637 lt!1869111) (= lambda!211282 lambda!211281))))

(declare-fun bs!1098210 () Bool)

(assert (= bs!1098210 (and b!4704843 b!4704834)))

(assert (=> bs!1098210 (= (= lt!1868637 lt!1869103) (= lambda!211282 lambda!211280))))

(declare-fun bs!1098211 () Bool)

(assert (= bs!1098211 (and b!4704843 b!4704836)))

(assert (=> bs!1098211 (= lambda!211282 lambda!211278)))

(assert (=> bs!1098210 (= lambda!211282 lambda!211279)))

(assert (=> b!4704843 true))

(declare-fun bs!1098212 () Bool)

(declare-fun b!4704841 () Bool)

(assert (= bs!1098212 (and b!4704841 d!1496913)))

(declare-fun lambda!211283 () Int)

(assert (=> bs!1098212 (not (= lambda!211283 lambda!211205))))

(declare-fun bs!1098213 () Bool)

(assert (= bs!1098213 (and b!4704841 d!1497027)))

(assert (=> bs!1098213 (= (= lt!1868637 lt!1869111) (= lambda!211283 lambda!211281))))

(declare-fun bs!1098214 () Bool)

(assert (= bs!1098214 (and b!4704841 b!4704834)))

(assert (=> bs!1098214 (= (= lt!1868637 lt!1869103) (= lambda!211283 lambda!211280))))

(declare-fun bs!1098215 () Bool)

(assert (= bs!1098215 (and b!4704841 b!4704843)))

(assert (=> bs!1098215 (= lambda!211283 lambda!211282)))

(declare-fun bs!1098216 () Bool)

(assert (= bs!1098216 (and b!4704841 b!4704836)))

(assert (=> bs!1098216 (= lambda!211283 lambda!211278)))

(assert (=> bs!1098214 (= lambda!211283 lambda!211279)))

(assert (=> b!4704841 true))

(declare-fun lambda!211284 () Int)

(assert (=> bs!1098212 (not (= lambda!211284 lambda!211205))))

(declare-fun lt!1869124 () ListMap!5073)

(assert (=> bs!1098213 (= (= lt!1869124 lt!1869111) (= lambda!211284 lambda!211281))))

(assert (=> bs!1098214 (= (= lt!1869124 lt!1869103) (= lambda!211284 lambda!211280))))

(assert (=> b!4704841 (= (= lt!1869124 lt!1868637) (= lambda!211284 lambda!211283))))

(assert (=> bs!1098215 (= (= lt!1869124 lt!1868637) (= lambda!211284 lambda!211282))))

(assert (=> bs!1098216 (= (= lt!1869124 lt!1868637) (= lambda!211284 lambda!211278))))

(assert (=> bs!1098214 (= (= lt!1869124 lt!1868637) (= lambda!211284 lambda!211279))))

(assert (=> b!4704841 true))

(declare-fun bs!1098217 () Bool)

(declare-fun d!1497085 () Bool)

(assert (= bs!1098217 (and d!1497085 b!4704841)))

(declare-fun lambda!211285 () Int)

(declare-fun lt!1869132 () ListMap!5073)

(assert (=> bs!1098217 (= (= lt!1869132 lt!1869124) (= lambda!211285 lambda!211284))))

(declare-fun bs!1098218 () Bool)

(assert (= bs!1098218 (and d!1497085 d!1496913)))

(assert (=> bs!1098218 (not (= lambda!211285 lambda!211205))))

(declare-fun bs!1098219 () Bool)

(assert (= bs!1098219 (and d!1497085 d!1497027)))

(assert (=> bs!1098219 (= (= lt!1869132 lt!1869111) (= lambda!211285 lambda!211281))))

(declare-fun bs!1098220 () Bool)

(assert (= bs!1098220 (and d!1497085 b!4704834)))

(assert (=> bs!1098220 (= (= lt!1869132 lt!1869103) (= lambda!211285 lambda!211280))))

(assert (=> bs!1098217 (= (= lt!1869132 lt!1868637) (= lambda!211285 lambda!211283))))

(declare-fun bs!1098221 () Bool)

(assert (= bs!1098221 (and d!1497085 b!4704843)))

(assert (=> bs!1098221 (= (= lt!1869132 lt!1868637) (= lambda!211285 lambda!211282))))

(declare-fun bs!1098222 () Bool)

(assert (= bs!1098222 (and d!1497085 b!4704836)))

(assert (=> bs!1098222 (= (= lt!1869132 lt!1868637) (= lambda!211285 lambda!211278))))

(assert (=> bs!1098220 (= (= lt!1869132 lt!1868637) (= lambda!211285 lambda!211279))))

(assert (=> d!1497085 true))

(declare-fun b!4704840 () Bool)

(declare-fun e!2934815 () Bool)

(assert (=> b!4704840 (= e!2934815 (invariantList!1456 (toList!5709 lt!1869132)))))

(declare-fun bm!328941 () Bool)

(declare-fun call!328948 () Unit!126864)

(assert (=> bm!328941 (= call!328948 (lemmaContainsAllItsOwnKeys!744 lt!1868637))))

(declare-fun e!2934817 () ListMap!5073)

(assert (=> b!4704841 (= e!2934817 lt!1869124)))

(declare-fun lt!1869120 () ListMap!5073)

(assert (=> b!4704841 (= lt!1869120 (+!2194 lt!1868637 (h!58858 (Cons!52567 lt!1868623 lt!1868646))))))

(assert (=> b!4704841 (= lt!1869124 (addToMapMapFromBucket!1342 (t!359913 (Cons!52567 lt!1868623 lt!1868646)) (+!2194 lt!1868637 (h!58858 (Cons!52567 lt!1868623 lt!1868646)))))))

(declare-fun lt!1869114 () Unit!126864)

(assert (=> b!4704841 (= lt!1869114 call!328948)))

(assert (=> b!4704841 (forall!11425 (toList!5709 lt!1868637) lambda!211283)))

(declare-fun lt!1869113 () Unit!126864)

(assert (=> b!4704841 (= lt!1869113 lt!1869114)))

(declare-fun call!328947 () Bool)

(assert (=> b!4704841 call!328947))

(declare-fun lt!1869116 () Unit!126864)

(declare-fun Unit!126917 () Unit!126864)

(assert (=> b!4704841 (= lt!1869116 Unit!126917)))

(declare-fun call!328946 () Bool)

(assert (=> b!4704841 call!328946))

(declare-fun lt!1869117 () Unit!126864)

(declare-fun Unit!126918 () Unit!126864)

(assert (=> b!4704841 (= lt!1869117 Unit!126918)))

(declare-fun lt!1869125 () Unit!126864)

(declare-fun Unit!126919 () Unit!126864)

(assert (=> b!4704841 (= lt!1869125 Unit!126919)))

(declare-fun lt!1869119 () Unit!126864)

(assert (=> b!4704841 (= lt!1869119 (forallContained!3532 (toList!5709 lt!1869120) lambda!211284 (h!58858 (Cons!52567 lt!1868623 lt!1868646))))))

(assert (=> b!4704841 (contains!15868 lt!1869120 (_1!30311 (h!58858 (Cons!52567 lt!1868623 lt!1868646))))))

(declare-fun lt!1869126 () Unit!126864)

(declare-fun Unit!126920 () Unit!126864)

(assert (=> b!4704841 (= lt!1869126 Unit!126920)))

(assert (=> b!4704841 (contains!15868 lt!1869124 (_1!30311 (h!58858 (Cons!52567 lt!1868623 lt!1868646))))))

(declare-fun lt!1869115 () Unit!126864)

(declare-fun Unit!126921 () Unit!126864)

(assert (=> b!4704841 (= lt!1869115 Unit!126921)))

(assert (=> b!4704841 (forall!11425 (Cons!52567 lt!1868623 lt!1868646) lambda!211284)))

(declare-fun lt!1869112 () Unit!126864)

(declare-fun Unit!126922 () Unit!126864)

(assert (=> b!4704841 (= lt!1869112 Unit!126922)))

(assert (=> b!4704841 (forall!11425 (toList!5709 lt!1869120) lambda!211284)))

(declare-fun lt!1869121 () Unit!126864)

(declare-fun Unit!126923 () Unit!126864)

(assert (=> b!4704841 (= lt!1869121 Unit!126923)))

(declare-fun lt!1869131 () Unit!126864)

(declare-fun Unit!126924 () Unit!126864)

(assert (=> b!4704841 (= lt!1869131 Unit!126924)))

(declare-fun lt!1869127 () Unit!126864)

(assert (=> b!4704841 (= lt!1869127 (addForallContainsKeyThenBeforeAdding!743 lt!1868637 lt!1869124 (_1!30311 (h!58858 (Cons!52567 lt!1868623 lt!1868646))) (_2!30311 (h!58858 (Cons!52567 lt!1868623 lt!1868646)))))))

(assert (=> b!4704841 (forall!11425 (toList!5709 lt!1868637) lambda!211284)))

(declare-fun lt!1869118 () Unit!126864)

(assert (=> b!4704841 (= lt!1869118 lt!1869127)))

(assert (=> b!4704841 (forall!11425 (toList!5709 lt!1868637) lambda!211284)))

(declare-fun lt!1869130 () Unit!126864)

(declare-fun Unit!126925 () Unit!126864)

(assert (=> b!4704841 (= lt!1869130 Unit!126925)))

(declare-fun res!1987070 () Bool)

(assert (=> b!4704841 (= res!1987070 (forall!11425 (Cons!52567 lt!1868623 lt!1868646) lambda!211284))))

(declare-fun e!2934816 () Bool)

(assert (=> b!4704841 (=> (not res!1987070) (not e!2934816))))

(assert (=> b!4704841 e!2934816))

(declare-fun lt!1869122 () Unit!126864)

(declare-fun Unit!126926 () Unit!126864)

(assert (=> b!4704841 (= lt!1869122 Unit!126926)))

(declare-fun b!4704842 () Bool)

(assert (=> b!4704842 (= e!2934816 (forall!11425 (toList!5709 lt!1868637) lambda!211284))))

(declare-fun bm!328942 () Bool)

(declare-fun c!804144 () Bool)

(assert (=> bm!328942 (= call!328946 (forall!11425 (ite c!804144 (toList!5709 lt!1868637) (t!359913 (Cons!52567 lt!1868623 lt!1868646))) (ite c!804144 lambda!211282 lambda!211284)))))

(declare-fun bm!328943 () Bool)

(assert (=> bm!328943 (= call!328947 (forall!11425 (ite c!804144 (toList!5709 lt!1868637) (toList!5709 lt!1869120)) (ite c!804144 lambda!211282 lambda!211284)))))

(declare-fun b!4704844 () Bool)

(declare-fun res!1987072 () Bool)

(assert (=> b!4704844 (=> (not res!1987072) (not e!2934815))))

(assert (=> b!4704844 (= res!1987072 (forall!11425 (toList!5709 lt!1868637) lambda!211285))))

(assert (=> b!4704843 (= e!2934817 lt!1868637)))

(declare-fun lt!1869123 () Unit!126864)

(assert (=> b!4704843 (= lt!1869123 call!328948)))

(assert (=> b!4704843 call!328947))

(declare-fun lt!1869129 () Unit!126864)

(assert (=> b!4704843 (= lt!1869129 lt!1869123)))

(assert (=> b!4704843 call!328946))

(declare-fun lt!1869128 () Unit!126864)

(declare-fun Unit!126927 () Unit!126864)

(assert (=> b!4704843 (= lt!1869128 Unit!126927)))

(assert (=> d!1497085 e!2934815))

(declare-fun res!1987071 () Bool)

(assert (=> d!1497085 (=> (not res!1987071) (not e!2934815))))

(assert (=> d!1497085 (= res!1987071 (forall!11425 (Cons!52567 lt!1868623 lt!1868646) lambda!211285))))

(assert (=> d!1497085 (= lt!1869132 e!2934817)))

(assert (=> d!1497085 (= c!804144 ((_ is Nil!52567) (Cons!52567 lt!1868623 lt!1868646)))))

(assert (=> d!1497085 (noDuplicateKeys!1910 (Cons!52567 lt!1868623 lt!1868646))))

(assert (=> d!1497085 (= (addToMapMapFromBucket!1342 (Cons!52567 lt!1868623 lt!1868646) lt!1868637) lt!1869132)))

(assert (= (and d!1497085 c!804144) b!4704843))

(assert (= (and d!1497085 (not c!804144)) b!4704841))

(assert (= (and b!4704841 res!1987070) b!4704842))

(assert (= (or b!4704843 b!4704841) bm!328941))

(assert (= (or b!4704843 b!4704841) bm!328943))

(assert (= (or b!4704843 b!4704841) bm!328942))

(assert (= (and d!1497085 res!1987071) b!4704844))

(assert (= (and b!4704844 res!1987072) b!4704840))

(declare-fun m!5625271 () Bool)

(assert (=> bm!328942 m!5625271))

(declare-fun m!5625273 () Bool)

(assert (=> d!1497085 m!5625273))

(declare-fun m!5625275 () Bool)

(assert (=> d!1497085 m!5625275))

(declare-fun m!5625277 () Bool)

(assert (=> b!4704844 m!5625277))

(declare-fun m!5625279 () Bool)

(assert (=> b!4704841 m!5625279))

(declare-fun m!5625281 () Bool)

(assert (=> b!4704841 m!5625281))

(declare-fun m!5625283 () Bool)

(assert (=> b!4704841 m!5625283))

(declare-fun m!5625285 () Bool)

(assert (=> b!4704841 m!5625285))

(declare-fun m!5625287 () Bool)

(assert (=> b!4704841 m!5625287))

(assert (=> b!4704841 m!5625281))

(declare-fun m!5625289 () Bool)

(assert (=> b!4704841 m!5625289))

(declare-fun m!5625291 () Bool)

(assert (=> b!4704841 m!5625291))

(declare-fun m!5625293 () Bool)

(assert (=> b!4704841 m!5625293))

(assert (=> b!4704841 m!5625285))

(assert (=> b!4704841 m!5625291))

(declare-fun m!5625295 () Bool)

(assert (=> b!4704841 m!5625295))

(declare-fun m!5625297 () Bool)

(assert (=> b!4704841 m!5625297))

(declare-fun m!5625299 () Bool)

(assert (=> bm!328943 m!5625299))

(declare-fun m!5625301 () Bool)

(assert (=> b!4704840 m!5625301))

(assert (=> b!4704842 m!5625285))

(assert (=> bm!328941 m!5625265))

(assert (=> b!4704468 d!1497085))

(declare-fun d!1497087 () Bool)

(assert (=> d!1497087 (eq!1069 (addToMapMapFromBucket!1342 (Cons!52567 lt!1868623 lt!1868646) lt!1868637) (+!2194 (addToMapMapFromBucket!1342 lt!1868646 lt!1868637) lt!1868623))))

(declare-fun lt!1869133 () Unit!126864)

(assert (=> d!1497087 (= lt!1869133 (choose!33008 lt!1868623 lt!1868646 lt!1868637))))

(assert (=> d!1497087 (noDuplicateKeys!1910 lt!1868646)))

(assert (=> d!1497087 (= (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!318 lt!1868623 lt!1868646 lt!1868637) lt!1869133)))

(declare-fun bs!1098223 () Bool)

(assert (= bs!1098223 d!1497087))

(assert (=> bs!1098223 m!5624375))

(assert (=> bs!1098223 m!5624369))

(assert (=> bs!1098223 m!5624363))

(assert (=> bs!1098223 m!5624369))

(assert (=> bs!1098223 m!5624371))

(assert (=> bs!1098223 m!5624363))

(declare-fun m!5625303 () Bool)

(assert (=> bs!1098223 m!5625303))

(declare-fun m!5625305 () Bool)

(assert (=> bs!1098223 m!5625305))

(assert (=> bs!1098223 m!5624375))

(assert (=> b!4704468 d!1497087))

(declare-fun d!1497089 () Bool)

(assert (=> d!1497089 (= (eq!1069 lt!1868631 (+!2194 lt!1868627 (h!58858 oldBucket!34))) (= (content!9298 (toList!5709 lt!1868631)) (content!9298 (toList!5709 (+!2194 lt!1868627 (h!58858 oldBucket!34))))))))

(declare-fun bs!1098224 () Bool)

(assert (= bs!1098224 d!1497089))

(assert (=> bs!1098224 m!5624605))

(declare-fun m!5625307 () Bool)

(assert (=> bs!1098224 m!5625307))

(assert (=> b!4704468 d!1497089))

(declare-fun d!1497091 () Bool)

(assert (=> d!1497091 (= (head!10084 oldBucket!34) (h!58858 oldBucket!34))))

(assert (=> b!4704468 d!1497091))

(declare-fun d!1497093 () Bool)

(declare-fun e!2934818 () Bool)

(assert (=> d!1497093 e!2934818))

(declare-fun res!1987073 () Bool)

(assert (=> d!1497093 (=> (not res!1987073) (not e!2934818))))

(declare-fun lt!1869137 () ListMap!5073)

(assert (=> d!1497093 (= res!1987073 (contains!15868 lt!1869137 (_1!30311 (h!58858 oldBucket!34))))))

(declare-fun lt!1869134 () List!52691)

(assert (=> d!1497093 (= lt!1869137 (ListMap!5074 lt!1869134))))

(declare-fun lt!1869136 () Unit!126864)

(declare-fun lt!1869135 () Unit!126864)

(assert (=> d!1497093 (= lt!1869136 lt!1869135)))

(assert (=> d!1497093 (= (getValueByKey!1872 lt!1869134 (_1!30311 (h!58858 oldBucket!34))) (Some!12227 (_2!30311 (h!58858 oldBucket!34))))))

(assert (=> d!1497093 (= lt!1869135 (lemmaContainsTupThenGetReturnValue!1046 lt!1869134 (_1!30311 (h!58858 oldBucket!34)) (_2!30311 (h!58858 oldBucket!34))))))

(assert (=> d!1497093 (= lt!1869134 (insertNoDuplicatedKeys!554 (toList!5709 lt!1868627) (_1!30311 (h!58858 oldBucket!34)) (_2!30311 (h!58858 oldBucket!34))))))

(assert (=> d!1497093 (= (+!2194 lt!1868627 (h!58858 oldBucket!34)) lt!1869137)))

(declare-fun b!4704845 () Bool)

(declare-fun res!1987074 () Bool)

(assert (=> b!4704845 (=> (not res!1987074) (not e!2934818))))

(assert (=> b!4704845 (= res!1987074 (= (getValueByKey!1872 (toList!5709 lt!1869137) (_1!30311 (h!58858 oldBucket!34))) (Some!12227 (_2!30311 (h!58858 oldBucket!34)))))))

(declare-fun b!4704846 () Bool)

(assert (=> b!4704846 (= e!2934818 (contains!15872 (toList!5709 lt!1869137) (h!58858 oldBucket!34)))))

(assert (= (and d!1497093 res!1987073) b!4704845))

(assert (= (and b!4704845 res!1987074) b!4704846))

(declare-fun m!5625309 () Bool)

(assert (=> d!1497093 m!5625309))

(declare-fun m!5625311 () Bool)

(assert (=> d!1497093 m!5625311))

(declare-fun m!5625313 () Bool)

(assert (=> d!1497093 m!5625313))

(declare-fun m!5625315 () Bool)

(assert (=> d!1497093 m!5625315))

(declare-fun m!5625317 () Bool)

(assert (=> b!4704845 m!5625317))

(declare-fun m!5625319 () Bool)

(assert (=> b!4704846 m!5625319))

(assert (=> b!4704468 d!1497093))

(declare-fun d!1497095 () Bool)

(declare-fun e!2934819 () Bool)

(assert (=> d!1497095 e!2934819))

(declare-fun res!1987075 () Bool)

(assert (=> d!1497095 (=> (not res!1987075) (not e!2934819))))

(declare-fun lt!1869141 () ListMap!5073)

(assert (=> d!1497095 (= res!1987075 (contains!15868 lt!1869141 (_1!30311 lt!1868648)))))

(declare-fun lt!1869138 () List!52691)

(assert (=> d!1497095 (= lt!1869141 (ListMap!5074 lt!1869138))))

(declare-fun lt!1869140 () Unit!126864)

(declare-fun lt!1869139 () Unit!126864)

(assert (=> d!1497095 (= lt!1869140 lt!1869139)))

(assert (=> d!1497095 (= (getValueByKey!1872 lt!1869138 (_1!30311 lt!1868648)) (Some!12227 (_2!30311 lt!1868648)))))

(assert (=> d!1497095 (= lt!1869139 (lemmaContainsTupThenGetReturnValue!1046 lt!1869138 (_1!30311 lt!1868648) (_2!30311 lt!1868648)))))

(assert (=> d!1497095 (= lt!1869138 (insertNoDuplicatedKeys!554 (toList!5709 (addToMapMapFromBucket!1342 lt!1868641 lt!1868637)) (_1!30311 lt!1868648) (_2!30311 lt!1868648)))))

(assert (=> d!1497095 (= (+!2194 (addToMapMapFromBucket!1342 lt!1868641 lt!1868637) lt!1868648) lt!1869141)))

(declare-fun b!4704847 () Bool)

(declare-fun res!1987076 () Bool)

(assert (=> b!4704847 (=> (not res!1987076) (not e!2934819))))

(assert (=> b!4704847 (= res!1987076 (= (getValueByKey!1872 (toList!5709 lt!1869141) (_1!30311 lt!1868648)) (Some!12227 (_2!30311 lt!1868648))))))

(declare-fun b!4704848 () Bool)

(assert (=> b!4704848 (= e!2934819 (contains!15872 (toList!5709 lt!1869141) lt!1868648))))

(assert (= (and d!1497095 res!1987075) b!4704847))

(assert (= (and b!4704847 res!1987076) b!4704848))

(declare-fun m!5625321 () Bool)

(assert (=> d!1497095 m!5625321))

(declare-fun m!5625323 () Bool)

(assert (=> d!1497095 m!5625323))

(declare-fun m!5625325 () Bool)

(assert (=> d!1497095 m!5625325))

(declare-fun m!5625327 () Bool)

(assert (=> d!1497095 m!5625327))

(declare-fun m!5625329 () Bool)

(assert (=> b!4704847 m!5625329))

(declare-fun m!5625331 () Bool)

(assert (=> b!4704848 m!5625331))

(assert (=> b!4704468 d!1497095))

(declare-fun bs!1098225 () Bool)

(declare-fun d!1497097 () Bool)

(assert (= bs!1098225 (and d!1497097 d!1496967)))

(declare-fun lambda!211286 () Int)

(assert (=> bs!1098225 (= lambda!211286 lambda!211217)))

(declare-fun bs!1098226 () Bool)

(assert (= bs!1098226 (and d!1497097 d!1496981)))

(assert (=> bs!1098226 (= lambda!211286 lambda!211221)))

(declare-fun bs!1098227 () Bool)

(assert (= bs!1098227 (and d!1497097 d!1496935)))

(assert (=> bs!1098227 (= lambda!211286 lambda!211214)))

(declare-fun bs!1098228 () Bool)

(assert (= bs!1098228 (and d!1497097 d!1496969)))

(assert (=> bs!1098228 (= lambda!211286 lambda!211218)))

(declare-fun bs!1098229 () Bool)

(assert (= bs!1098229 (and d!1497097 d!1496885)))

(assert (=> bs!1098229 (= lambda!211286 lambda!211198)))

(declare-fun bs!1098230 () Bool)

(assert (= bs!1098230 (and d!1497097 start!477556)))

(assert (=> bs!1098230 (= lambda!211286 lambda!211153)))

(declare-fun bs!1098231 () Bool)

(assert (= bs!1098231 (and d!1497097 d!1496883)))

(assert (=> bs!1098231 (= lambda!211286 lambda!211156)))

(declare-fun bs!1098232 () Bool)

(assert (= bs!1098232 (and d!1497097 d!1496963)))

(assert (=> bs!1098232 (= lambda!211286 lambda!211216)))

(declare-fun lt!1869142 () ListMap!5073)

(assert (=> d!1497097 (invariantList!1456 (toList!5709 lt!1869142))))

(declare-fun e!2934820 () ListMap!5073)

(assert (=> d!1497097 (= lt!1869142 e!2934820)))

(declare-fun c!804145 () Bool)

(assert (=> d!1497097 (= c!804145 ((_ is Cons!52568) (Cons!52568 (tuple2!54037 hash!405 lt!1868641) (t!359914 (toList!5710 lm!2023)))))))

(assert (=> d!1497097 (forall!11423 (Cons!52568 (tuple2!54037 hash!405 lt!1868641) (t!359914 (toList!5710 lm!2023))) lambda!211286)))

(assert (=> d!1497097 (= (extractMap!1936 (Cons!52568 (tuple2!54037 hash!405 lt!1868641) (t!359914 (toList!5710 lm!2023)))) lt!1869142)))

(declare-fun b!4704849 () Bool)

(assert (=> b!4704849 (= e!2934820 (addToMapMapFromBucket!1342 (_2!30312 (h!58859 (Cons!52568 (tuple2!54037 hash!405 lt!1868641) (t!359914 (toList!5710 lm!2023))))) (extractMap!1936 (t!359914 (Cons!52568 (tuple2!54037 hash!405 lt!1868641) (t!359914 (toList!5710 lm!2023)))))))))

(declare-fun b!4704850 () Bool)

(assert (=> b!4704850 (= e!2934820 (ListMap!5074 Nil!52567))))

(assert (= (and d!1497097 c!804145) b!4704849))

(assert (= (and d!1497097 (not c!804145)) b!4704850))

(declare-fun m!5625333 () Bool)

(assert (=> d!1497097 m!5625333))

(declare-fun m!5625335 () Bool)

(assert (=> d!1497097 m!5625335))

(declare-fun m!5625337 () Bool)

(assert (=> b!4704849 m!5625337))

(assert (=> b!4704849 m!5625337))

(declare-fun m!5625339 () Bool)

(assert (=> b!4704849 m!5625339))

(assert (=> b!4704468 d!1497097))

(declare-fun bs!1098233 () Bool)

(declare-fun d!1497099 () Bool)

(assert (= bs!1098233 (and d!1497099 d!1496967)))

(declare-fun lambda!211287 () Int)

(assert (=> bs!1098233 (= lambda!211287 lambda!211217)))

(declare-fun bs!1098234 () Bool)

(assert (= bs!1098234 (and d!1497099 d!1496981)))

(assert (=> bs!1098234 (= lambda!211287 lambda!211221)))

(declare-fun bs!1098235 () Bool)

(assert (= bs!1098235 (and d!1497099 d!1496935)))

(assert (=> bs!1098235 (= lambda!211287 lambda!211214)))

(declare-fun bs!1098236 () Bool)

(assert (= bs!1098236 (and d!1497099 d!1496969)))

(assert (=> bs!1098236 (= lambda!211287 lambda!211218)))

(declare-fun bs!1098237 () Bool)

(assert (= bs!1098237 (and d!1497099 d!1496885)))

(assert (=> bs!1098237 (= lambda!211287 lambda!211198)))

(declare-fun bs!1098238 () Bool)

(assert (= bs!1098238 (and d!1497099 start!477556)))

(assert (=> bs!1098238 (= lambda!211287 lambda!211153)))

(declare-fun bs!1098239 () Bool)

(assert (= bs!1098239 (and d!1497099 d!1497097)))

(assert (=> bs!1098239 (= lambda!211287 lambda!211286)))

(declare-fun bs!1098240 () Bool)

(assert (= bs!1098240 (and d!1497099 d!1496883)))

(assert (=> bs!1098240 (= lambda!211287 lambda!211156)))

(declare-fun bs!1098241 () Bool)

(assert (= bs!1098241 (and d!1497099 d!1496963)))

(assert (=> bs!1098241 (= lambda!211287 lambda!211216)))

(declare-fun lt!1869143 () ListMap!5073)

(assert (=> d!1497099 (invariantList!1456 (toList!5709 lt!1869143))))

(declare-fun e!2934821 () ListMap!5073)

(assert (=> d!1497099 (= lt!1869143 e!2934821)))

(declare-fun c!804146 () Bool)

(assert (=> d!1497099 (= c!804146 ((_ is Cons!52568) lt!1868632))))

(assert (=> d!1497099 (forall!11423 lt!1868632 lambda!211287)))

(assert (=> d!1497099 (= (extractMap!1936 lt!1868632) lt!1869143)))

(declare-fun b!4704851 () Bool)

(assert (=> b!4704851 (= e!2934821 (addToMapMapFromBucket!1342 (_2!30312 (h!58859 lt!1868632)) (extractMap!1936 (t!359914 lt!1868632))))))

(declare-fun b!4704852 () Bool)

(assert (=> b!4704852 (= e!2934821 (ListMap!5074 Nil!52567))))

(assert (= (and d!1497099 c!804146) b!4704851))

(assert (= (and d!1497099 (not c!804146)) b!4704852))

(declare-fun m!5625341 () Bool)

(assert (=> d!1497099 m!5625341))

(declare-fun m!5625343 () Bool)

(assert (=> d!1497099 m!5625343))

(declare-fun m!5625345 () Bool)

(assert (=> b!4704851 m!5625345))

(assert (=> b!4704851 m!5625345))

(declare-fun m!5625347 () Bool)

(assert (=> b!4704851 m!5625347))

(assert (=> b!4704468 d!1497099))

(declare-fun d!1497101 () Bool)

(assert (=> d!1497101 (= (head!10084 newBucket!218) (h!58858 newBucket!218))))

(assert (=> b!4704468 d!1497101))

(declare-fun bs!1098256 () Bool)

(declare-fun d!1497103 () Bool)

(assert (= bs!1098256 (and d!1497103 d!1496967)))

(declare-fun lambda!211297 () Int)

(assert (=> bs!1098256 (= lambda!211297 lambda!211217)))

(declare-fun bs!1098257 () Bool)

(assert (= bs!1098257 (and d!1497103 d!1496981)))

(assert (=> bs!1098257 (= lambda!211297 lambda!211221)))

(declare-fun bs!1098258 () Bool)

(assert (= bs!1098258 (and d!1497103 d!1497099)))

(assert (=> bs!1098258 (= lambda!211297 lambda!211287)))

(declare-fun bs!1098259 () Bool)

(assert (= bs!1098259 (and d!1497103 d!1496935)))

(assert (=> bs!1098259 (= lambda!211297 lambda!211214)))

(declare-fun bs!1098260 () Bool)

(assert (= bs!1098260 (and d!1497103 d!1496969)))

(assert (=> bs!1098260 (= lambda!211297 lambda!211218)))

(declare-fun bs!1098261 () Bool)

(assert (= bs!1098261 (and d!1497103 d!1496885)))

(assert (=> bs!1098261 (= lambda!211297 lambda!211198)))

(declare-fun bs!1098262 () Bool)

(assert (= bs!1098262 (and d!1497103 start!477556)))

(assert (=> bs!1098262 (= lambda!211297 lambda!211153)))

(declare-fun bs!1098263 () Bool)

(assert (= bs!1098263 (and d!1497103 d!1497097)))

(assert (=> bs!1098263 (= lambda!211297 lambda!211286)))

(declare-fun bs!1098264 () Bool)

(assert (= bs!1098264 (and d!1497103 d!1496883)))

(assert (=> bs!1098264 (= lambda!211297 lambda!211156)))

(declare-fun bs!1098265 () Bool)

(assert (= bs!1098265 (and d!1497103 d!1496963)))

(assert (=> bs!1098265 (= lambda!211297 lambda!211216)))

(assert (=> d!1497103 (contains!15868 (extractMap!1936 (toList!5710 lt!1868645)) key!4653)))

(declare-fun lt!1869173 () Unit!126864)

(declare-fun choose!33009 (ListLongMap!4239 K!13925 Hashable!6279) Unit!126864)

(assert (=> d!1497103 (= lt!1869173 (choose!33009 lt!1868645 key!4653 hashF!1323))))

(assert (=> d!1497103 (forall!11423 (toList!5710 lt!1868645) lambda!211297)))

(assert (=> d!1497103 (= (lemmaListContainsThenExtractedMapContains!502 lt!1868645 key!4653 hashF!1323) lt!1869173)))

(declare-fun bs!1098266 () Bool)

(assert (= bs!1098266 d!1497103))

(declare-fun m!5625373 () Bool)

(assert (=> bs!1098266 m!5625373))

(assert (=> bs!1098266 m!5625373))

(declare-fun m!5625375 () Bool)

(assert (=> bs!1098266 m!5625375))

(declare-fun m!5625377 () Bool)

(assert (=> bs!1098266 m!5625377))

(declare-fun m!5625379 () Bool)

(assert (=> bs!1098266 m!5625379))

(assert (=> b!4704468 d!1497103))

(declare-fun d!1497109 () Bool)

(declare-fun e!2934834 () Bool)

(assert (=> d!1497109 e!2934834))

(declare-fun res!1987095 () Bool)

(assert (=> d!1497109 (=> (not res!1987095) (not e!2934834))))

(declare-fun lt!1869177 () ListMap!5073)

(assert (=> d!1497109 (= res!1987095 (contains!15868 lt!1869177 (_1!30311 lt!1868623)))))

(declare-fun lt!1869174 () List!52691)

(assert (=> d!1497109 (= lt!1869177 (ListMap!5074 lt!1869174))))

(declare-fun lt!1869176 () Unit!126864)

(declare-fun lt!1869175 () Unit!126864)

(assert (=> d!1497109 (= lt!1869176 lt!1869175)))

(assert (=> d!1497109 (= (getValueByKey!1872 lt!1869174 (_1!30311 lt!1868623)) (Some!12227 (_2!30311 lt!1868623)))))

(assert (=> d!1497109 (= lt!1869175 (lemmaContainsTupThenGetReturnValue!1046 lt!1869174 (_1!30311 lt!1868623) (_2!30311 lt!1868623)))))

(assert (=> d!1497109 (= lt!1869174 (insertNoDuplicatedKeys!554 (toList!5709 (addToMapMapFromBucket!1342 lt!1868646 lt!1868637)) (_1!30311 lt!1868623) (_2!30311 lt!1868623)))))

(assert (=> d!1497109 (= (+!2194 (addToMapMapFromBucket!1342 lt!1868646 lt!1868637) lt!1868623) lt!1869177)))

(declare-fun b!4704871 () Bool)

(declare-fun res!1987096 () Bool)

(assert (=> b!4704871 (=> (not res!1987096) (not e!2934834))))

(assert (=> b!4704871 (= res!1987096 (= (getValueByKey!1872 (toList!5709 lt!1869177) (_1!30311 lt!1868623)) (Some!12227 (_2!30311 lt!1868623))))))

(declare-fun b!4704872 () Bool)

(assert (=> b!4704872 (= e!2934834 (contains!15872 (toList!5709 lt!1869177) lt!1868623))))

(assert (= (and d!1497109 res!1987095) b!4704871))

(assert (= (and b!4704871 res!1987096) b!4704872))

(declare-fun m!5625383 () Bool)

(assert (=> d!1497109 m!5625383))

(declare-fun m!5625385 () Bool)

(assert (=> d!1497109 m!5625385))

(declare-fun m!5625387 () Bool)

(assert (=> d!1497109 m!5625387))

(declare-fun m!5625389 () Bool)

(assert (=> d!1497109 m!5625389))

(declare-fun m!5625391 () Bool)

(assert (=> b!4704871 m!5625391))

(declare-fun m!5625393 () Bool)

(assert (=> b!4704872 m!5625393))

(assert (=> b!4704468 d!1497109))

(declare-fun bs!1098267 () Bool)

(declare-fun d!1497115 () Bool)

(assert (= bs!1098267 (and d!1497115 d!1496967)))

(declare-fun lambda!211298 () Int)

(assert (=> bs!1098267 (= lambda!211298 lambda!211217)))

(declare-fun bs!1098268 () Bool)

(assert (= bs!1098268 (and d!1497115 d!1496981)))

(assert (=> bs!1098268 (= lambda!211298 lambda!211221)))

(declare-fun bs!1098269 () Bool)

(assert (= bs!1098269 (and d!1497115 d!1497099)))

(assert (=> bs!1098269 (= lambda!211298 lambda!211287)))

(declare-fun bs!1098270 () Bool)

(assert (= bs!1098270 (and d!1497115 d!1496935)))

(assert (=> bs!1098270 (= lambda!211298 lambda!211214)))

(declare-fun bs!1098271 () Bool)

(assert (= bs!1098271 (and d!1497115 d!1496969)))

(assert (=> bs!1098271 (= lambda!211298 lambda!211218)))

(declare-fun bs!1098272 () Bool)

(assert (= bs!1098272 (and d!1497115 d!1497103)))

(assert (=> bs!1098272 (= lambda!211298 lambda!211297)))

(declare-fun bs!1098273 () Bool)

(assert (= bs!1098273 (and d!1497115 d!1496885)))

(assert (=> bs!1098273 (= lambda!211298 lambda!211198)))

(declare-fun bs!1098274 () Bool)

(assert (= bs!1098274 (and d!1497115 start!477556)))

(assert (=> bs!1098274 (= lambda!211298 lambda!211153)))

(declare-fun bs!1098275 () Bool)

(assert (= bs!1098275 (and d!1497115 d!1497097)))

(assert (=> bs!1098275 (= lambda!211298 lambda!211286)))

(declare-fun bs!1098276 () Bool)

(assert (= bs!1098276 (and d!1497115 d!1496883)))

(assert (=> bs!1098276 (= lambda!211298 lambda!211156)))

(declare-fun bs!1098277 () Bool)

(assert (= bs!1098277 (and d!1497115 d!1496963)))

(assert (=> bs!1098277 (= lambda!211298 lambda!211216)))

(declare-fun lt!1869178 () ListMap!5073)

(assert (=> d!1497115 (invariantList!1456 (toList!5709 lt!1869178))))

(declare-fun e!2934837 () ListMap!5073)

(assert (=> d!1497115 (= lt!1869178 e!2934837)))

(declare-fun c!804147 () Bool)

(assert (=> d!1497115 (= c!804147 ((_ is Cons!52568) (Cons!52568 lt!1868620 (t!359914 (toList!5710 lm!2023)))))))

(assert (=> d!1497115 (forall!11423 (Cons!52568 lt!1868620 (t!359914 (toList!5710 lm!2023))) lambda!211298)))

(assert (=> d!1497115 (= (extractMap!1936 (Cons!52568 lt!1868620 (t!359914 (toList!5710 lm!2023)))) lt!1869178)))

(declare-fun b!4704875 () Bool)

(assert (=> b!4704875 (= e!2934837 (addToMapMapFromBucket!1342 (_2!30312 (h!58859 (Cons!52568 lt!1868620 (t!359914 (toList!5710 lm!2023))))) (extractMap!1936 (t!359914 (Cons!52568 lt!1868620 (t!359914 (toList!5710 lm!2023)))))))))

(declare-fun b!4704876 () Bool)

(assert (=> b!4704876 (= e!2934837 (ListMap!5074 Nil!52567))))

(assert (= (and d!1497115 c!804147) b!4704875))

(assert (= (and d!1497115 (not c!804147)) b!4704876))

(declare-fun m!5625395 () Bool)

(assert (=> d!1497115 m!5625395))

(declare-fun m!5625397 () Bool)

(assert (=> d!1497115 m!5625397))

(declare-fun m!5625399 () Bool)

(assert (=> b!4704875 m!5625399))

(assert (=> b!4704875 m!5625399))

(declare-fun m!5625401 () Bool)

(assert (=> b!4704875 m!5625401))

(assert (=> b!4704468 d!1497115))

(declare-fun bs!1098278 () Bool)

(declare-fun b!4704882 () Bool)

(assert (= bs!1098278 (and b!4704882 b!4704841)))

(declare-fun lambda!211299 () Int)

(assert (=> bs!1098278 (= (= lt!1868637 lt!1869124) (= lambda!211299 lambda!211284))))

(declare-fun bs!1098279 () Bool)

(assert (= bs!1098279 (and b!4704882 d!1496913)))

(assert (=> bs!1098279 (not (= lambda!211299 lambda!211205))))

(declare-fun bs!1098280 () Bool)

(assert (= bs!1098280 (and b!4704882 d!1497027)))

(assert (=> bs!1098280 (= (= lt!1868637 lt!1869111) (= lambda!211299 lambda!211281))))

(declare-fun bs!1098281 () Bool)

(assert (= bs!1098281 (and b!4704882 b!4704834)))

(assert (=> bs!1098281 (= (= lt!1868637 lt!1869103) (= lambda!211299 lambda!211280))))

(assert (=> bs!1098278 (= lambda!211299 lambda!211283)))

(declare-fun bs!1098282 () Bool)

(assert (= bs!1098282 (and b!4704882 d!1497085)))

(assert (=> bs!1098282 (= (= lt!1868637 lt!1869132) (= lambda!211299 lambda!211285))))

(declare-fun bs!1098283 () Bool)

(assert (= bs!1098283 (and b!4704882 b!4704843)))

(assert (=> bs!1098283 (= lambda!211299 lambda!211282)))

(declare-fun bs!1098284 () Bool)

(assert (= bs!1098284 (and b!4704882 b!4704836)))

(assert (=> bs!1098284 (= lambda!211299 lambda!211278)))

(assert (=> bs!1098281 (= lambda!211299 lambda!211279)))

(assert (=> b!4704882 true))

(declare-fun bs!1098285 () Bool)

(declare-fun b!4704880 () Bool)

(assert (= bs!1098285 (and b!4704880 b!4704841)))

(declare-fun lambda!211300 () Int)

(assert (=> bs!1098285 (= (= lt!1868637 lt!1869124) (= lambda!211300 lambda!211284))))

(declare-fun bs!1098286 () Bool)

(assert (= bs!1098286 (and b!4704880 d!1496913)))

(assert (=> bs!1098286 (not (= lambda!211300 lambda!211205))))

(declare-fun bs!1098287 () Bool)

(assert (= bs!1098287 (and b!4704880 b!4704834)))

(assert (=> bs!1098287 (= (= lt!1868637 lt!1869103) (= lambda!211300 lambda!211280))))

(assert (=> bs!1098285 (= lambda!211300 lambda!211283)))

(declare-fun bs!1098288 () Bool)

(assert (= bs!1098288 (and b!4704880 d!1497085)))

(assert (=> bs!1098288 (= (= lt!1868637 lt!1869132) (= lambda!211300 lambda!211285))))

(declare-fun bs!1098289 () Bool)

(assert (= bs!1098289 (and b!4704880 b!4704843)))

(assert (=> bs!1098289 (= lambda!211300 lambda!211282)))

(declare-fun bs!1098290 () Bool)

(assert (= bs!1098290 (and b!4704880 b!4704836)))

(assert (=> bs!1098290 (= lambda!211300 lambda!211278)))

(assert (=> bs!1098287 (= lambda!211300 lambda!211279)))

(declare-fun bs!1098291 () Bool)

(assert (= bs!1098291 (and b!4704880 d!1497027)))

(assert (=> bs!1098291 (= (= lt!1868637 lt!1869111) (= lambda!211300 lambda!211281))))

(declare-fun bs!1098292 () Bool)

(assert (= bs!1098292 (and b!4704880 b!4704882)))

(assert (=> bs!1098292 (= lambda!211300 lambda!211299)))

(assert (=> b!4704880 true))

(declare-fun lambda!211301 () Int)

(declare-fun lt!1869193 () ListMap!5073)

(assert (=> bs!1098285 (= (= lt!1869193 lt!1869124) (= lambda!211301 lambda!211284))))

(assert (=> bs!1098286 (not (= lambda!211301 lambda!211205))))

(assert (=> b!4704880 (= (= lt!1869193 lt!1868637) (= lambda!211301 lambda!211300))))

(assert (=> bs!1098287 (= (= lt!1869193 lt!1869103) (= lambda!211301 lambda!211280))))

(assert (=> bs!1098285 (= (= lt!1869193 lt!1868637) (= lambda!211301 lambda!211283))))

(assert (=> bs!1098288 (= (= lt!1869193 lt!1869132) (= lambda!211301 lambda!211285))))

(assert (=> bs!1098289 (= (= lt!1869193 lt!1868637) (= lambda!211301 lambda!211282))))

(assert (=> bs!1098290 (= (= lt!1869193 lt!1868637) (= lambda!211301 lambda!211278))))

(assert (=> bs!1098287 (= (= lt!1869193 lt!1868637) (= lambda!211301 lambda!211279))))

(assert (=> bs!1098291 (= (= lt!1869193 lt!1869111) (= lambda!211301 lambda!211281))))

(assert (=> bs!1098292 (= (= lt!1869193 lt!1868637) (= lambda!211301 lambda!211299))))

(assert (=> b!4704880 true))

(declare-fun bs!1098296 () Bool)

(declare-fun d!1497117 () Bool)

(assert (= bs!1098296 (and d!1497117 b!4704841)))

(declare-fun lt!1869201 () ListMap!5073)

(declare-fun lambda!211302 () Int)

(assert (=> bs!1098296 (= (= lt!1869201 lt!1869124) (= lambda!211302 lambda!211284))))

(declare-fun bs!1098297 () Bool)

(assert (= bs!1098297 (and d!1497117 d!1496913)))

(assert (=> bs!1098297 (not (= lambda!211302 lambda!211205))))

(declare-fun bs!1098298 () Bool)

(assert (= bs!1098298 (and d!1497117 b!4704880)))

(assert (=> bs!1098298 (= (= lt!1869201 lt!1868637) (= lambda!211302 lambda!211300))))

(declare-fun bs!1098299 () Bool)

(assert (= bs!1098299 (and d!1497117 b!4704834)))

(assert (=> bs!1098299 (= (= lt!1869201 lt!1869103) (= lambda!211302 lambda!211280))))

(assert (=> bs!1098296 (= (= lt!1869201 lt!1868637) (= lambda!211302 lambda!211283))))

(declare-fun bs!1098300 () Bool)

(assert (= bs!1098300 (and d!1497117 d!1497085)))

(assert (=> bs!1098300 (= (= lt!1869201 lt!1869132) (= lambda!211302 lambda!211285))))

(declare-fun bs!1098301 () Bool)

(assert (= bs!1098301 (and d!1497117 b!4704836)))

(assert (=> bs!1098301 (= (= lt!1869201 lt!1868637) (= lambda!211302 lambda!211278))))

(assert (=> bs!1098299 (= (= lt!1869201 lt!1868637) (= lambda!211302 lambda!211279))))

(declare-fun bs!1098302 () Bool)

(assert (= bs!1098302 (and d!1497117 d!1497027)))

(assert (=> bs!1098302 (= (= lt!1869201 lt!1869111) (= lambda!211302 lambda!211281))))

(declare-fun bs!1098303 () Bool)

(assert (= bs!1098303 (and d!1497117 b!4704882)))

(assert (=> bs!1098303 (= (= lt!1869201 lt!1868637) (= lambda!211302 lambda!211299))))

(assert (=> bs!1098298 (= (= lt!1869201 lt!1869193) (= lambda!211302 lambda!211301))))

(declare-fun bs!1098304 () Bool)

(assert (= bs!1098304 (and d!1497117 b!4704843)))

(assert (=> bs!1098304 (= (= lt!1869201 lt!1868637) (= lambda!211302 lambda!211282))))

(assert (=> d!1497117 true))

(declare-fun b!4704879 () Bool)

(declare-fun e!2934840 () Bool)

(assert (=> b!4704879 (= e!2934840 (invariantList!1456 (toList!5709 lt!1869201)))))

(declare-fun bm!328944 () Bool)

(declare-fun call!328951 () Unit!126864)

(assert (=> bm!328944 (= call!328951 (lemmaContainsAllItsOwnKeys!744 lt!1868637))))

(declare-fun e!2934842 () ListMap!5073)

(assert (=> b!4704880 (= e!2934842 lt!1869193)))

(declare-fun lt!1869189 () ListMap!5073)

(assert (=> b!4704880 (= lt!1869189 (+!2194 lt!1868637 (h!58858 lt!1868641)))))

(assert (=> b!4704880 (= lt!1869193 (addToMapMapFromBucket!1342 (t!359913 lt!1868641) (+!2194 lt!1868637 (h!58858 lt!1868641))))))

(declare-fun lt!1869183 () Unit!126864)

(assert (=> b!4704880 (= lt!1869183 call!328951)))

(assert (=> b!4704880 (forall!11425 (toList!5709 lt!1868637) lambda!211300)))

(declare-fun lt!1869182 () Unit!126864)

(assert (=> b!4704880 (= lt!1869182 lt!1869183)))

(declare-fun call!328950 () Bool)

(assert (=> b!4704880 call!328950))

(declare-fun lt!1869185 () Unit!126864)

(declare-fun Unit!126939 () Unit!126864)

(assert (=> b!4704880 (= lt!1869185 Unit!126939)))

(declare-fun call!328949 () Bool)

(assert (=> b!4704880 call!328949))

(declare-fun lt!1869186 () Unit!126864)

(declare-fun Unit!126940 () Unit!126864)

(assert (=> b!4704880 (= lt!1869186 Unit!126940)))

(declare-fun lt!1869194 () Unit!126864)

(declare-fun Unit!126941 () Unit!126864)

(assert (=> b!4704880 (= lt!1869194 Unit!126941)))

(declare-fun lt!1869188 () Unit!126864)

(assert (=> b!4704880 (= lt!1869188 (forallContained!3532 (toList!5709 lt!1869189) lambda!211301 (h!58858 lt!1868641)))))

(assert (=> b!4704880 (contains!15868 lt!1869189 (_1!30311 (h!58858 lt!1868641)))))

(declare-fun lt!1869195 () Unit!126864)

(declare-fun Unit!126942 () Unit!126864)

(assert (=> b!4704880 (= lt!1869195 Unit!126942)))

(assert (=> b!4704880 (contains!15868 lt!1869193 (_1!30311 (h!58858 lt!1868641)))))

(declare-fun lt!1869184 () Unit!126864)

(declare-fun Unit!126943 () Unit!126864)

(assert (=> b!4704880 (= lt!1869184 Unit!126943)))

(assert (=> b!4704880 (forall!11425 lt!1868641 lambda!211301)))

(declare-fun lt!1869181 () Unit!126864)

(declare-fun Unit!126944 () Unit!126864)

(assert (=> b!4704880 (= lt!1869181 Unit!126944)))

(assert (=> b!4704880 (forall!11425 (toList!5709 lt!1869189) lambda!211301)))

(declare-fun lt!1869190 () Unit!126864)

(declare-fun Unit!126945 () Unit!126864)

(assert (=> b!4704880 (= lt!1869190 Unit!126945)))

(declare-fun lt!1869200 () Unit!126864)

(declare-fun Unit!126946 () Unit!126864)

(assert (=> b!4704880 (= lt!1869200 Unit!126946)))

(declare-fun lt!1869196 () Unit!126864)

(assert (=> b!4704880 (= lt!1869196 (addForallContainsKeyThenBeforeAdding!743 lt!1868637 lt!1869193 (_1!30311 (h!58858 lt!1868641)) (_2!30311 (h!58858 lt!1868641))))))

(assert (=> b!4704880 (forall!11425 (toList!5709 lt!1868637) lambda!211301)))

(declare-fun lt!1869187 () Unit!126864)

(assert (=> b!4704880 (= lt!1869187 lt!1869196)))

(assert (=> b!4704880 (forall!11425 (toList!5709 lt!1868637) lambda!211301)))

(declare-fun lt!1869199 () Unit!126864)

(declare-fun Unit!126947 () Unit!126864)

(assert (=> b!4704880 (= lt!1869199 Unit!126947)))

(declare-fun res!1987101 () Bool)

(assert (=> b!4704880 (= res!1987101 (forall!11425 lt!1868641 lambda!211301))))

(declare-fun e!2934841 () Bool)

(assert (=> b!4704880 (=> (not res!1987101) (not e!2934841))))

(assert (=> b!4704880 e!2934841))

(declare-fun lt!1869191 () Unit!126864)

(declare-fun Unit!126948 () Unit!126864)

(assert (=> b!4704880 (= lt!1869191 Unit!126948)))

(declare-fun b!4704881 () Bool)

(assert (=> b!4704881 (= e!2934841 (forall!11425 (toList!5709 lt!1868637) lambda!211301))))

(declare-fun bm!328945 () Bool)

(declare-fun c!804148 () Bool)

(assert (=> bm!328945 (= call!328949 (forall!11425 (ite c!804148 (toList!5709 lt!1868637) (t!359913 lt!1868641)) (ite c!804148 lambda!211299 lambda!211301)))))

(declare-fun bm!328946 () Bool)

(assert (=> bm!328946 (= call!328950 (forall!11425 (ite c!804148 (toList!5709 lt!1868637) (toList!5709 lt!1869189)) (ite c!804148 lambda!211299 lambda!211301)))))

(declare-fun b!4704883 () Bool)

(declare-fun res!1987103 () Bool)

(assert (=> b!4704883 (=> (not res!1987103) (not e!2934840))))

(assert (=> b!4704883 (= res!1987103 (forall!11425 (toList!5709 lt!1868637) lambda!211302))))

(assert (=> b!4704882 (= e!2934842 lt!1868637)))

(declare-fun lt!1869192 () Unit!126864)

(assert (=> b!4704882 (= lt!1869192 call!328951)))

(assert (=> b!4704882 call!328950))

(declare-fun lt!1869198 () Unit!126864)

(assert (=> b!4704882 (= lt!1869198 lt!1869192)))

(assert (=> b!4704882 call!328949))

(declare-fun lt!1869197 () Unit!126864)

(declare-fun Unit!126949 () Unit!126864)

(assert (=> b!4704882 (= lt!1869197 Unit!126949)))

(assert (=> d!1497117 e!2934840))

(declare-fun res!1987102 () Bool)

(assert (=> d!1497117 (=> (not res!1987102) (not e!2934840))))

(assert (=> d!1497117 (= res!1987102 (forall!11425 lt!1868641 lambda!211302))))

(assert (=> d!1497117 (= lt!1869201 e!2934842)))

(assert (=> d!1497117 (= c!804148 ((_ is Nil!52567) lt!1868641))))

(assert (=> d!1497117 (noDuplicateKeys!1910 lt!1868641)))

(assert (=> d!1497117 (= (addToMapMapFromBucket!1342 lt!1868641 lt!1868637) lt!1869201)))

(assert (= (and d!1497117 c!804148) b!4704882))

(assert (= (and d!1497117 (not c!804148)) b!4704880))

(assert (= (and b!4704880 res!1987101) b!4704881))

(assert (= (or b!4704882 b!4704880) bm!328944))

(assert (= (or b!4704882 b!4704880) bm!328946))

(assert (= (or b!4704882 b!4704880) bm!328945))

(assert (= (and d!1497117 res!1987102) b!4704883))

(assert (= (and b!4704883 res!1987103) b!4704879))

(declare-fun m!5625413 () Bool)

(assert (=> bm!328945 m!5625413))

(declare-fun m!5625415 () Bool)

(assert (=> d!1497117 m!5625415))

(assert (=> d!1497117 m!5624709))

(declare-fun m!5625417 () Bool)

(assert (=> b!4704883 m!5625417))

(declare-fun m!5625419 () Bool)

(assert (=> b!4704880 m!5625419))

(declare-fun m!5625421 () Bool)

(assert (=> b!4704880 m!5625421))

(declare-fun m!5625423 () Bool)

(assert (=> b!4704880 m!5625423))

(declare-fun m!5625425 () Bool)

(assert (=> b!4704880 m!5625425))

(declare-fun m!5625427 () Bool)

(assert (=> b!4704880 m!5625427))

(assert (=> b!4704880 m!5625421))

(declare-fun m!5625429 () Bool)

(assert (=> b!4704880 m!5625429))

(declare-fun m!5625431 () Bool)

(assert (=> b!4704880 m!5625431))

(declare-fun m!5625433 () Bool)

(assert (=> b!4704880 m!5625433))

(assert (=> b!4704880 m!5625425))

(assert (=> b!4704880 m!5625431))

(declare-fun m!5625435 () Bool)

(assert (=> b!4704880 m!5625435))

(declare-fun m!5625437 () Bool)

(assert (=> b!4704880 m!5625437))

(declare-fun m!5625439 () Bool)

(assert (=> bm!328946 m!5625439))

(declare-fun m!5625441 () Bool)

(assert (=> b!4704879 m!5625441))

(assert (=> b!4704881 m!5625425))

(assert (=> bm!328944 m!5625265))

(assert (=> b!4704468 d!1497117))

(declare-fun bs!1098305 () Bool)

(declare-fun b!4704901 () Bool)

(assert (= bs!1098305 (and b!4704901 b!4704841)))

(declare-fun lambda!211303 () Int)

(assert (=> bs!1098305 (= (= lt!1868637 lt!1869124) (= lambda!211303 lambda!211284))))

(declare-fun bs!1098306 () Bool)

(assert (= bs!1098306 (and b!4704901 d!1496913)))

(assert (=> bs!1098306 (not (= lambda!211303 lambda!211205))))

(declare-fun bs!1098307 () Bool)

(assert (= bs!1098307 (and b!4704901 b!4704880)))

(assert (=> bs!1098307 (= lambda!211303 lambda!211300)))

(declare-fun bs!1098308 () Bool)

(assert (= bs!1098308 (and b!4704901 b!4704834)))

(assert (=> bs!1098308 (= (= lt!1868637 lt!1869103) (= lambda!211303 lambda!211280))))

(assert (=> bs!1098305 (= lambda!211303 lambda!211283)))

(declare-fun bs!1098309 () Bool)

(assert (= bs!1098309 (and b!4704901 d!1497085)))

(assert (=> bs!1098309 (= (= lt!1868637 lt!1869132) (= lambda!211303 lambda!211285))))

(declare-fun bs!1098310 () Bool)

(assert (= bs!1098310 (and b!4704901 d!1497117)))

(assert (=> bs!1098310 (= (= lt!1868637 lt!1869201) (= lambda!211303 lambda!211302))))

(declare-fun bs!1098311 () Bool)

(assert (= bs!1098311 (and b!4704901 b!4704836)))

(assert (=> bs!1098311 (= lambda!211303 lambda!211278)))

(assert (=> bs!1098308 (= lambda!211303 lambda!211279)))

(declare-fun bs!1098312 () Bool)

(assert (= bs!1098312 (and b!4704901 d!1497027)))

(assert (=> bs!1098312 (= (= lt!1868637 lt!1869111) (= lambda!211303 lambda!211281))))

(declare-fun bs!1098313 () Bool)

(assert (= bs!1098313 (and b!4704901 b!4704882)))

(assert (=> bs!1098313 (= lambda!211303 lambda!211299)))

(assert (=> bs!1098307 (= (= lt!1868637 lt!1869193) (= lambda!211303 lambda!211301))))

(declare-fun bs!1098314 () Bool)

(assert (= bs!1098314 (and b!4704901 b!4704843)))

(assert (=> bs!1098314 (= lambda!211303 lambda!211282)))

(assert (=> b!4704901 true))

(declare-fun bs!1098315 () Bool)

(declare-fun b!4704899 () Bool)

(assert (= bs!1098315 (and b!4704899 b!4704841)))

(declare-fun lambda!211304 () Int)

(assert (=> bs!1098315 (= (= lt!1868637 lt!1869124) (= lambda!211304 lambda!211284))))

(declare-fun bs!1098316 () Bool)

(assert (= bs!1098316 (and b!4704899 d!1496913)))

(assert (=> bs!1098316 (not (= lambda!211304 lambda!211205))))

(declare-fun bs!1098317 () Bool)

(assert (= bs!1098317 (and b!4704899 b!4704880)))

(assert (=> bs!1098317 (= lambda!211304 lambda!211300)))

(declare-fun bs!1098318 () Bool)

(assert (= bs!1098318 (and b!4704899 b!4704901)))

(assert (=> bs!1098318 (= lambda!211304 lambda!211303)))

(declare-fun bs!1098319 () Bool)

(assert (= bs!1098319 (and b!4704899 b!4704834)))

(assert (=> bs!1098319 (= (= lt!1868637 lt!1869103) (= lambda!211304 lambda!211280))))

(assert (=> bs!1098315 (= lambda!211304 lambda!211283)))

(declare-fun bs!1098320 () Bool)

(assert (= bs!1098320 (and b!4704899 d!1497085)))

(assert (=> bs!1098320 (= (= lt!1868637 lt!1869132) (= lambda!211304 lambda!211285))))

(declare-fun bs!1098321 () Bool)

(assert (= bs!1098321 (and b!4704899 d!1497117)))

(assert (=> bs!1098321 (= (= lt!1868637 lt!1869201) (= lambda!211304 lambda!211302))))

(declare-fun bs!1098322 () Bool)

(assert (= bs!1098322 (and b!4704899 b!4704836)))

(assert (=> bs!1098322 (= lambda!211304 lambda!211278)))

(assert (=> bs!1098319 (= lambda!211304 lambda!211279)))

(declare-fun bs!1098323 () Bool)

(assert (= bs!1098323 (and b!4704899 d!1497027)))

(assert (=> bs!1098323 (= (= lt!1868637 lt!1869111) (= lambda!211304 lambda!211281))))

(declare-fun bs!1098324 () Bool)

(assert (= bs!1098324 (and b!4704899 b!4704882)))

(assert (=> bs!1098324 (= lambda!211304 lambda!211299)))

(assert (=> bs!1098317 (= (= lt!1868637 lt!1869193) (= lambda!211304 lambda!211301))))

(declare-fun bs!1098325 () Bool)

(assert (= bs!1098325 (and b!4704899 b!4704843)))

(assert (=> bs!1098325 (= lambda!211304 lambda!211282)))

(assert (=> b!4704899 true))

(declare-fun lt!1869215 () ListMap!5073)

(declare-fun lambda!211305 () Int)

(assert (=> bs!1098315 (= (= lt!1869215 lt!1869124) (= lambda!211305 lambda!211284))))

(assert (=> bs!1098316 (not (= lambda!211305 lambda!211205))))

(assert (=> bs!1098317 (= (= lt!1869215 lt!1868637) (= lambda!211305 lambda!211300))))

(assert (=> b!4704899 (= (= lt!1869215 lt!1868637) (= lambda!211305 lambda!211304))))

(assert (=> bs!1098318 (= (= lt!1869215 lt!1868637) (= lambda!211305 lambda!211303))))

(assert (=> bs!1098319 (= (= lt!1869215 lt!1869103) (= lambda!211305 lambda!211280))))

(assert (=> bs!1098315 (= (= lt!1869215 lt!1868637) (= lambda!211305 lambda!211283))))

(assert (=> bs!1098320 (= (= lt!1869215 lt!1869132) (= lambda!211305 lambda!211285))))

(assert (=> bs!1098321 (= (= lt!1869215 lt!1869201) (= lambda!211305 lambda!211302))))

(assert (=> bs!1098322 (= (= lt!1869215 lt!1868637) (= lambda!211305 lambda!211278))))

(assert (=> bs!1098319 (= (= lt!1869215 lt!1868637) (= lambda!211305 lambda!211279))))

(assert (=> bs!1098323 (= (= lt!1869215 lt!1869111) (= lambda!211305 lambda!211281))))

(assert (=> bs!1098324 (= (= lt!1869215 lt!1868637) (= lambda!211305 lambda!211299))))

(assert (=> bs!1098317 (= (= lt!1869215 lt!1869193) (= lambda!211305 lambda!211301))))

(assert (=> bs!1098325 (= (= lt!1869215 lt!1868637) (= lambda!211305 lambda!211282))))

(assert (=> b!4704899 true))

(declare-fun bs!1098326 () Bool)

(declare-fun d!1497127 () Bool)

(assert (= bs!1098326 (and d!1497127 b!4704841)))

(declare-fun lt!1869223 () ListMap!5073)

(declare-fun lambda!211306 () Int)

(assert (=> bs!1098326 (= (= lt!1869223 lt!1869124) (= lambda!211306 lambda!211284))))

(declare-fun bs!1098327 () Bool)

(assert (= bs!1098327 (and d!1497127 b!4704899)))

(assert (=> bs!1098327 (= (= lt!1869223 lt!1869215) (= lambda!211306 lambda!211305))))

(declare-fun bs!1098328 () Bool)

(assert (= bs!1098328 (and d!1497127 d!1496913)))

(assert (=> bs!1098328 (not (= lambda!211306 lambda!211205))))

(declare-fun bs!1098329 () Bool)

(assert (= bs!1098329 (and d!1497127 b!4704880)))

(assert (=> bs!1098329 (= (= lt!1869223 lt!1868637) (= lambda!211306 lambda!211300))))

(assert (=> bs!1098327 (= (= lt!1869223 lt!1868637) (= lambda!211306 lambda!211304))))

(declare-fun bs!1098330 () Bool)

(assert (= bs!1098330 (and d!1497127 b!4704901)))

(assert (=> bs!1098330 (= (= lt!1869223 lt!1868637) (= lambda!211306 lambda!211303))))

(declare-fun bs!1098331 () Bool)

(assert (= bs!1098331 (and d!1497127 b!4704834)))

(assert (=> bs!1098331 (= (= lt!1869223 lt!1869103) (= lambda!211306 lambda!211280))))

(assert (=> bs!1098326 (= (= lt!1869223 lt!1868637) (= lambda!211306 lambda!211283))))

(declare-fun bs!1098332 () Bool)

(assert (= bs!1098332 (and d!1497127 d!1497085)))

(assert (=> bs!1098332 (= (= lt!1869223 lt!1869132) (= lambda!211306 lambda!211285))))

(declare-fun bs!1098333 () Bool)

(assert (= bs!1098333 (and d!1497127 d!1497117)))

(assert (=> bs!1098333 (= (= lt!1869223 lt!1869201) (= lambda!211306 lambda!211302))))

(declare-fun bs!1098334 () Bool)

(assert (= bs!1098334 (and d!1497127 b!4704836)))

(assert (=> bs!1098334 (= (= lt!1869223 lt!1868637) (= lambda!211306 lambda!211278))))

(assert (=> bs!1098331 (= (= lt!1869223 lt!1868637) (= lambda!211306 lambda!211279))))

(declare-fun bs!1098335 () Bool)

(assert (= bs!1098335 (and d!1497127 d!1497027)))

(assert (=> bs!1098335 (= (= lt!1869223 lt!1869111) (= lambda!211306 lambda!211281))))

(declare-fun bs!1098336 () Bool)

(assert (= bs!1098336 (and d!1497127 b!4704882)))

(assert (=> bs!1098336 (= (= lt!1869223 lt!1868637) (= lambda!211306 lambda!211299))))

(assert (=> bs!1098329 (= (= lt!1869223 lt!1869193) (= lambda!211306 lambda!211301))))

(declare-fun bs!1098337 () Bool)

(assert (= bs!1098337 (and d!1497127 b!4704843)))

(assert (=> bs!1098337 (= (= lt!1869223 lt!1868637) (= lambda!211306 lambda!211282))))

(assert (=> d!1497127 true))

(declare-fun b!4704898 () Bool)

(declare-fun e!2934853 () Bool)

(assert (=> b!4704898 (= e!2934853 (invariantList!1456 (toList!5709 lt!1869223)))))

(declare-fun bm!328947 () Bool)

(declare-fun call!328954 () Unit!126864)

(assert (=> bm!328947 (= call!328954 (lemmaContainsAllItsOwnKeys!744 lt!1868637))))

(declare-fun e!2934855 () ListMap!5073)

(assert (=> b!4704899 (= e!2934855 lt!1869215)))

(declare-fun lt!1869211 () ListMap!5073)

(assert (=> b!4704899 (= lt!1869211 (+!2194 lt!1868637 (h!58858 lt!1868646)))))

(assert (=> b!4704899 (= lt!1869215 (addToMapMapFromBucket!1342 (t!359913 lt!1868646) (+!2194 lt!1868637 (h!58858 lt!1868646))))))

(declare-fun lt!1869205 () Unit!126864)

(assert (=> b!4704899 (= lt!1869205 call!328954)))

(assert (=> b!4704899 (forall!11425 (toList!5709 lt!1868637) lambda!211304)))

(declare-fun lt!1869204 () Unit!126864)

(assert (=> b!4704899 (= lt!1869204 lt!1869205)))

(declare-fun call!328953 () Bool)

(assert (=> b!4704899 call!328953))

(declare-fun lt!1869207 () Unit!126864)

(declare-fun Unit!126952 () Unit!126864)

(assert (=> b!4704899 (= lt!1869207 Unit!126952)))

(declare-fun call!328952 () Bool)

(assert (=> b!4704899 call!328952))

(declare-fun lt!1869208 () Unit!126864)

(declare-fun Unit!126953 () Unit!126864)

(assert (=> b!4704899 (= lt!1869208 Unit!126953)))

(declare-fun lt!1869216 () Unit!126864)

(declare-fun Unit!126954 () Unit!126864)

(assert (=> b!4704899 (= lt!1869216 Unit!126954)))

(declare-fun lt!1869210 () Unit!126864)

(assert (=> b!4704899 (= lt!1869210 (forallContained!3532 (toList!5709 lt!1869211) lambda!211305 (h!58858 lt!1868646)))))

(assert (=> b!4704899 (contains!15868 lt!1869211 (_1!30311 (h!58858 lt!1868646)))))

(declare-fun lt!1869217 () Unit!126864)

(declare-fun Unit!126955 () Unit!126864)

(assert (=> b!4704899 (= lt!1869217 Unit!126955)))

(assert (=> b!4704899 (contains!15868 lt!1869215 (_1!30311 (h!58858 lt!1868646)))))

(declare-fun lt!1869206 () Unit!126864)

(declare-fun Unit!126956 () Unit!126864)

(assert (=> b!4704899 (= lt!1869206 Unit!126956)))

(assert (=> b!4704899 (forall!11425 lt!1868646 lambda!211305)))

(declare-fun lt!1869203 () Unit!126864)

(declare-fun Unit!126957 () Unit!126864)

(assert (=> b!4704899 (= lt!1869203 Unit!126957)))

(assert (=> b!4704899 (forall!11425 (toList!5709 lt!1869211) lambda!211305)))

(declare-fun lt!1869212 () Unit!126864)

(declare-fun Unit!126958 () Unit!126864)

(assert (=> b!4704899 (= lt!1869212 Unit!126958)))

(declare-fun lt!1869222 () Unit!126864)

(declare-fun Unit!126959 () Unit!126864)

(assert (=> b!4704899 (= lt!1869222 Unit!126959)))

(declare-fun lt!1869218 () Unit!126864)

(assert (=> b!4704899 (= lt!1869218 (addForallContainsKeyThenBeforeAdding!743 lt!1868637 lt!1869215 (_1!30311 (h!58858 lt!1868646)) (_2!30311 (h!58858 lt!1868646))))))

(assert (=> b!4704899 (forall!11425 (toList!5709 lt!1868637) lambda!211305)))

(declare-fun lt!1869209 () Unit!126864)

(assert (=> b!4704899 (= lt!1869209 lt!1869218)))

(assert (=> b!4704899 (forall!11425 (toList!5709 lt!1868637) lambda!211305)))

(declare-fun lt!1869221 () Unit!126864)

(declare-fun Unit!126960 () Unit!126864)

(assert (=> b!4704899 (= lt!1869221 Unit!126960)))

(declare-fun res!1987107 () Bool)

(assert (=> b!4704899 (= res!1987107 (forall!11425 lt!1868646 lambda!211305))))

(declare-fun e!2934854 () Bool)

(assert (=> b!4704899 (=> (not res!1987107) (not e!2934854))))

(assert (=> b!4704899 e!2934854))

(declare-fun lt!1869213 () Unit!126864)

(declare-fun Unit!126961 () Unit!126864)

(assert (=> b!4704899 (= lt!1869213 Unit!126961)))

(declare-fun b!4704900 () Bool)

(assert (=> b!4704900 (= e!2934854 (forall!11425 (toList!5709 lt!1868637) lambda!211305))))

(declare-fun bm!328948 () Bool)

(declare-fun c!804149 () Bool)

(assert (=> bm!328948 (= call!328952 (forall!11425 (ite c!804149 (toList!5709 lt!1868637) (t!359913 lt!1868646)) (ite c!804149 lambda!211303 lambda!211305)))))

(declare-fun bm!328949 () Bool)

(assert (=> bm!328949 (= call!328953 (forall!11425 (ite c!804149 (toList!5709 lt!1868637) (toList!5709 lt!1869211)) (ite c!804149 lambda!211303 lambda!211305)))))

(declare-fun b!4704902 () Bool)

(declare-fun res!1987109 () Bool)

(assert (=> b!4704902 (=> (not res!1987109) (not e!2934853))))

(assert (=> b!4704902 (= res!1987109 (forall!11425 (toList!5709 lt!1868637) lambda!211306))))

(assert (=> b!4704901 (= e!2934855 lt!1868637)))

(declare-fun lt!1869214 () Unit!126864)

(assert (=> b!4704901 (= lt!1869214 call!328954)))

(assert (=> b!4704901 call!328953))

(declare-fun lt!1869220 () Unit!126864)

(assert (=> b!4704901 (= lt!1869220 lt!1869214)))

(assert (=> b!4704901 call!328952))

(declare-fun lt!1869219 () Unit!126864)

(declare-fun Unit!126962 () Unit!126864)

(assert (=> b!4704901 (= lt!1869219 Unit!126962)))

(assert (=> d!1497127 e!2934853))

(declare-fun res!1987108 () Bool)

(assert (=> d!1497127 (=> (not res!1987108) (not e!2934853))))

(assert (=> d!1497127 (= res!1987108 (forall!11425 lt!1868646 lambda!211306))))

(assert (=> d!1497127 (= lt!1869223 e!2934855)))

(assert (=> d!1497127 (= c!804149 ((_ is Nil!52567) lt!1868646))))

(assert (=> d!1497127 (noDuplicateKeys!1910 lt!1868646)))

(assert (=> d!1497127 (= (addToMapMapFromBucket!1342 lt!1868646 lt!1868637) lt!1869223)))

(assert (= (and d!1497127 c!804149) b!4704901))

(assert (= (and d!1497127 (not c!804149)) b!4704899))

(assert (= (and b!4704899 res!1987107) b!4704900))

(assert (= (or b!4704901 b!4704899) bm!328947))

(assert (= (or b!4704901 b!4704899) bm!328949))

(assert (= (or b!4704901 b!4704899) bm!328948))

(assert (= (and d!1497127 res!1987108) b!4704902))

(assert (= (and b!4704902 res!1987109) b!4704898))

(declare-fun m!5625443 () Bool)

(assert (=> bm!328948 m!5625443))

(declare-fun m!5625445 () Bool)

(assert (=> d!1497127 m!5625445))

(assert (=> d!1497127 m!5625303))

(declare-fun m!5625447 () Bool)

(assert (=> b!4704902 m!5625447))

(declare-fun m!5625449 () Bool)

(assert (=> b!4704899 m!5625449))

(declare-fun m!5625451 () Bool)

(assert (=> b!4704899 m!5625451))

(declare-fun m!5625453 () Bool)

(assert (=> b!4704899 m!5625453))

(declare-fun m!5625455 () Bool)

(assert (=> b!4704899 m!5625455))

(declare-fun m!5625457 () Bool)

(assert (=> b!4704899 m!5625457))

(assert (=> b!4704899 m!5625451))

(declare-fun m!5625459 () Bool)

(assert (=> b!4704899 m!5625459))

(declare-fun m!5625461 () Bool)

(assert (=> b!4704899 m!5625461))

(declare-fun m!5625463 () Bool)

(assert (=> b!4704899 m!5625463))

(assert (=> b!4704899 m!5625455))

(assert (=> b!4704899 m!5625461))

(declare-fun m!5625465 () Bool)

(assert (=> b!4704899 m!5625465))

(declare-fun m!5625467 () Bool)

(assert (=> b!4704899 m!5625467))

(declare-fun m!5625469 () Bool)

(assert (=> bm!328949 m!5625469))

(declare-fun m!5625471 () Bool)

(assert (=> b!4704898 m!5625471))

(assert (=> b!4704900 m!5625455))

(assert (=> bm!328947 m!5625265))

(assert (=> b!4704468 d!1497127))

(declare-fun d!1497129 () Bool)

(assert (=> d!1497129 (= (eq!1069 lt!1868640 (+!2194 lt!1868616 (h!58858 oldBucket!34))) (= (content!9298 (toList!5709 lt!1868640)) (content!9298 (toList!5709 (+!2194 lt!1868616 (h!58858 oldBucket!34))))))))

(declare-fun bs!1098338 () Bool)

(assert (= bs!1098338 d!1497129))

(declare-fun m!5625473 () Bool)

(assert (=> bs!1098338 m!5625473))

(declare-fun m!5625475 () Bool)

(assert (=> bs!1098338 m!5625475))

(assert (=> b!4704469 d!1497129))

(declare-fun d!1497131 () Bool)

(declare-fun e!2934856 () Bool)

(assert (=> d!1497131 e!2934856))

(declare-fun res!1987110 () Bool)

(assert (=> d!1497131 (=> (not res!1987110) (not e!2934856))))

(declare-fun lt!1869227 () ListMap!5073)

(assert (=> d!1497131 (= res!1987110 (contains!15868 lt!1869227 (_1!30311 (h!58858 oldBucket!34))))))

(declare-fun lt!1869224 () List!52691)

(assert (=> d!1497131 (= lt!1869227 (ListMap!5074 lt!1869224))))

(declare-fun lt!1869226 () Unit!126864)

(declare-fun lt!1869225 () Unit!126864)

(assert (=> d!1497131 (= lt!1869226 lt!1869225)))

(assert (=> d!1497131 (= (getValueByKey!1872 lt!1869224 (_1!30311 (h!58858 oldBucket!34))) (Some!12227 (_2!30311 (h!58858 oldBucket!34))))))

(assert (=> d!1497131 (= lt!1869225 (lemmaContainsTupThenGetReturnValue!1046 lt!1869224 (_1!30311 (h!58858 oldBucket!34)) (_2!30311 (h!58858 oldBucket!34))))))

(assert (=> d!1497131 (= lt!1869224 (insertNoDuplicatedKeys!554 (toList!5709 lt!1868616) (_1!30311 (h!58858 oldBucket!34)) (_2!30311 (h!58858 oldBucket!34))))))

(assert (=> d!1497131 (= (+!2194 lt!1868616 (h!58858 oldBucket!34)) lt!1869227)))

(declare-fun b!4704903 () Bool)

(declare-fun res!1987111 () Bool)

(assert (=> b!4704903 (=> (not res!1987111) (not e!2934856))))

(assert (=> b!4704903 (= res!1987111 (= (getValueByKey!1872 (toList!5709 lt!1869227) (_1!30311 (h!58858 oldBucket!34))) (Some!12227 (_2!30311 (h!58858 oldBucket!34)))))))

(declare-fun b!4704904 () Bool)

(assert (=> b!4704904 (= e!2934856 (contains!15872 (toList!5709 lt!1869227) (h!58858 oldBucket!34)))))

(assert (= (and d!1497131 res!1987110) b!4704903))

(assert (= (and b!4704903 res!1987111) b!4704904))

(declare-fun m!5625477 () Bool)

(assert (=> d!1497131 m!5625477))

(declare-fun m!5625479 () Bool)

(assert (=> d!1497131 m!5625479))

(declare-fun m!5625481 () Bool)

(assert (=> d!1497131 m!5625481))

(declare-fun m!5625483 () Bool)

(assert (=> d!1497131 m!5625483))

(declare-fun m!5625485 () Bool)

(assert (=> b!4704903 m!5625485))

(declare-fun m!5625487 () Bool)

(assert (=> b!4704904 m!5625487))

(assert (=> b!4704469 d!1497131))

(declare-fun d!1497133 () Bool)

(assert (=> d!1497133 (= (eq!1069 lt!1868636 (+!2194 lt!1868616 (h!58858 oldBucket!34))) (= (content!9298 (toList!5709 lt!1868636)) (content!9298 (toList!5709 (+!2194 lt!1868616 (h!58858 oldBucket!34))))))))

(declare-fun bs!1098339 () Bool)

(assert (= bs!1098339 d!1497133))

(declare-fun m!5625489 () Bool)

(assert (=> bs!1098339 m!5625489))

(assert (=> bs!1098339 m!5625475))

(assert (=> b!4704469 d!1497133))

(declare-fun d!1497135 () Bool)

(assert (=> d!1497135 (eq!1069 (+!2194 lt!1868621 (tuple2!54035 (_1!30311 (h!58858 oldBucket!34)) (_2!30311 (h!58858 oldBucket!34)))) (+!2194 lt!1868616 (tuple2!54035 (_1!30311 (h!58858 oldBucket!34)) (_2!30311 (h!58858 oldBucket!34)))))))

(declare-fun lt!1869230 () Unit!126864)

(declare-fun choose!33012 (ListMap!5073 ListMap!5073 K!13925 V!14171) Unit!126864)

(assert (=> d!1497135 (= lt!1869230 (choose!33012 lt!1868621 lt!1868616 (_1!30311 (h!58858 oldBucket!34)) (_2!30311 (h!58858 oldBucket!34))))))

(assert (=> d!1497135 (eq!1069 lt!1868621 lt!1868616)))

(assert (=> d!1497135 (= (lemmaAddToEqMapsPreservesEq!92 lt!1868621 lt!1868616 (_1!30311 (h!58858 oldBucket!34)) (_2!30311 (h!58858 oldBucket!34))) lt!1869230)))

(declare-fun bs!1098340 () Bool)

(assert (= bs!1098340 d!1497135))

(declare-fun m!5625491 () Bool)

(assert (=> bs!1098340 m!5625491))

(declare-fun m!5625493 () Bool)

(assert (=> bs!1098340 m!5625493))

(declare-fun m!5625495 () Bool)

(assert (=> bs!1098340 m!5625495))

(declare-fun m!5625497 () Bool)

(assert (=> bs!1098340 m!5625497))

(declare-fun m!5625499 () Bool)

(assert (=> bs!1098340 m!5625499))

(assert (=> bs!1098340 m!5625495))

(assert (=> bs!1098340 m!5625493))

(assert (=> b!4704469 d!1497135))

(declare-fun d!1497137 () Bool)

(assert (=> d!1497137 (= (eq!1069 lt!1868628 lt!1868640) (= (content!9298 (toList!5709 lt!1868628)) (content!9298 (toList!5709 lt!1868640))))))

(declare-fun bs!1098341 () Bool)

(assert (= bs!1098341 d!1497137))

(declare-fun m!5625501 () Bool)

(assert (=> bs!1098341 m!5625501))

(assert (=> bs!1098341 m!5625473))

(assert (=> b!4704460 d!1497137))

(declare-fun d!1497139 () Bool)

(assert (=> d!1497139 (= (eq!1069 lt!1868640 lt!1868642) (= (content!9298 (toList!5709 lt!1868640)) (content!9298 (toList!5709 lt!1868642))))))

(declare-fun bs!1098342 () Bool)

(assert (= bs!1098342 d!1497139))

(assert (=> bs!1098342 m!5625473))

(declare-fun m!5625503 () Bool)

(assert (=> bs!1098342 m!5625503))

(assert (=> b!4704461 d!1497139))

(declare-fun d!1497141 () Bool)

(assert (=> d!1497141 (= (eq!1069 lt!1868628 lt!1868642) (= (content!9298 (toList!5709 lt!1868628)) (content!9298 (toList!5709 lt!1868642))))))

(declare-fun bs!1098343 () Bool)

(assert (= bs!1098343 d!1497141))

(assert (=> bs!1098343 m!5625501))

(assert (=> bs!1098343 m!5625503))

(assert (=> b!4704461 d!1497141))

(declare-fun d!1497143 () Bool)

(declare-fun e!2934857 () Bool)

(assert (=> d!1497143 e!2934857))

(declare-fun res!1987112 () Bool)

(assert (=> d!1497143 (=> (not res!1987112) (not e!2934857))))

(declare-fun lt!1869231 () ListMap!5073)

(assert (=> d!1497143 (= res!1987112 (not (contains!15868 lt!1869231 key!4653)))))

(assert (=> d!1497143 (= lt!1869231 (ListMap!5074 (removePresrvNoDuplicatedKeys!377 (toList!5709 lt!1868631) key!4653)))))

(assert (=> d!1497143 (= (-!714 lt!1868631 key!4653) lt!1869231)))

(declare-fun b!4704905 () Bool)

(assert (=> b!4704905 (= e!2934857 (= ((_ map and) (content!9299 (keys!18815 lt!1868631)) ((_ map not) (store ((as const (Array K!13925 Bool)) false) key!4653 true))) (content!9299 (keys!18815 lt!1869231))))))

(assert (= (and d!1497143 res!1987112) b!4704905))

(declare-fun m!5625505 () Bool)

(assert (=> d!1497143 m!5625505))

(declare-fun m!5625507 () Bool)

(assert (=> d!1497143 m!5625507))

(declare-fun m!5625509 () Bool)

(assert (=> b!4704905 m!5625509))

(assert (=> b!4704905 m!5624771))

(assert (=> b!4704905 m!5625509))

(declare-fun m!5625511 () Bool)

(assert (=> b!4704905 m!5625511))

(declare-fun m!5625513 () Bool)

(assert (=> b!4704905 m!5625513))

(declare-fun m!5625515 () Bool)

(assert (=> b!4704905 m!5625515))

(assert (=> b!4704905 m!5625513))

(assert (=> b!4704461 d!1497143))

(declare-fun d!1497145 () Bool)

(assert (=> d!1497145 (eq!1069 (-!714 lt!1868624 key!4653) (-!714 lt!1868631 key!4653))))

(declare-fun lt!1869234 () Unit!126864)

(declare-fun choose!33013 (ListMap!5073 ListMap!5073 K!13925) Unit!126864)

(assert (=> d!1497145 (= lt!1869234 (choose!33013 lt!1868624 lt!1868631 key!4653))))

(assert (=> d!1497145 (eq!1069 lt!1868624 lt!1868631)))

(assert (=> d!1497145 (= (lemmaRemovePreservesEq!96 lt!1868624 lt!1868631 key!4653) lt!1869234)))

(declare-fun bs!1098344 () Bool)

(assert (= bs!1098344 d!1497145))

(assert (=> bs!1098344 m!5624405))

(assert (=> bs!1098344 m!5624441))

(declare-fun m!5625517 () Bool)

(assert (=> bs!1098344 m!5625517))

(assert (=> bs!1098344 m!5624339))

(assert (=> bs!1098344 m!5624405))

(assert (=> bs!1098344 m!5624339))

(declare-fun m!5625519 () Bool)

(assert (=> bs!1098344 m!5625519))

(assert (=> b!4704461 d!1497145))

(declare-fun d!1497147 () Bool)

(declare-fun res!1987113 () Bool)

(declare-fun e!2934858 () Bool)

(assert (=> d!1497147 (=> res!1987113 e!2934858)))

(assert (=> d!1497147 (= res!1987113 (not ((_ is Cons!52567) oldBucket!34)))))

(assert (=> d!1497147 (= (noDuplicateKeys!1910 oldBucket!34) e!2934858)))

(declare-fun b!4704906 () Bool)

(declare-fun e!2934859 () Bool)

(assert (=> b!4704906 (= e!2934858 e!2934859)))

(declare-fun res!1987114 () Bool)

(assert (=> b!4704906 (=> (not res!1987114) (not e!2934859))))

(assert (=> b!4704906 (= res!1987114 (not (containsKey!3201 (t!359913 oldBucket!34) (_1!30311 (h!58858 oldBucket!34)))))))

(declare-fun b!4704907 () Bool)

(assert (=> b!4704907 (= e!2934859 (noDuplicateKeys!1910 (t!359913 oldBucket!34)))))

(assert (= (and d!1497147 (not res!1987113)) b!4704906))

(assert (= (and b!4704906 res!1987114) b!4704907))

(declare-fun m!5625521 () Bool)

(assert (=> b!4704906 m!5625521))

(assert (=> b!4704907 m!5624459))

(assert (=> b!4704463 d!1497147))

(declare-fun bs!1098345 () Bool)

(declare-fun d!1497149 () Bool)

(assert (= bs!1098345 (and d!1497149 b!4704899)))

(declare-fun lambda!211307 () Int)

(assert (=> bs!1098345 (not (= lambda!211307 lambda!211305))))

(declare-fun bs!1098346 () Bool)

(assert (= bs!1098346 (and d!1497149 d!1496913)))

(assert (=> bs!1098346 (= lambda!211307 lambda!211205)))

(declare-fun bs!1098347 () Bool)

(assert (= bs!1098347 (and d!1497149 b!4704880)))

(assert (=> bs!1098347 (not (= lambda!211307 lambda!211300))))

(assert (=> bs!1098345 (not (= lambda!211307 lambda!211304))))

(declare-fun bs!1098348 () Bool)

(assert (= bs!1098348 (and d!1497149 b!4704901)))

(assert (=> bs!1098348 (not (= lambda!211307 lambda!211303))))

(declare-fun bs!1098349 () Bool)

(assert (= bs!1098349 (and d!1497149 b!4704834)))

(assert (=> bs!1098349 (not (= lambda!211307 lambda!211280))))

(declare-fun bs!1098350 () Bool)

(assert (= bs!1098350 (and d!1497149 b!4704841)))

(assert (=> bs!1098350 (not (= lambda!211307 lambda!211283))))

(declare-fun bs!1098351 () Bool)

(assert (= bs!1098351 (and d!1497149 d!1497085)))

(assert (=> bs!1098351 (not (= lambda!211307 lambda!211285))))

(declare-fun bs!1098352 () Bool)

(assert (= bs!1098352 (and d!1497149 d!1497117)))

(assert (=> bs!1098352 (not (= lambda!211307 lambda!211302))))

(declare-fun bs!1098353 () Bool)

(assert (= bs!1098353 (and d!1497149 d!1497127)))

(assert (=> bs!1098353 (not (= lambda!211307 lambda!211306))))

(assert (=> bs!1098350 (not (= lambda!211307 lambda!211284))))

(declare-fun bs!1098354 () Bool)

(assert (= bs!1098354 (and d!1497149 b!4704836)))

(assert (=> bs!1098354 (not (= lambda!211307 lambda!211278))))

(assert (=> bs!1098349 (not (= lambda!211307 lambda!211279))))

(declare-fun bs!1098355 () Bool)

(assert (= bs!1098355 (and d!1497149 d!1497027)))

(assert (=> bs!1098355 (not (= lambda!211307 lambda!211281))))

(declare-fun bs!1098356 () Bool)

(assert (= bs!1098356 (and d!1497149 b!4704882)))

(assert (=> bs!1098356 (not (= lambda!211307 lambda!211299))))

(assert (=> bs!1098347 (not (= lambda!211307 lambda!211301))))

(declare-fun bs!1098357 () Bool)

(assert (= bs!1098357 (and d!1497149 b!4704843)))

(assert (=> bs!1098357 (not (= lambda!211307 lambda!211282))))

(assert (=> d!1497149 true))

(assert (=> d!1497149 true))

(assert (=> d!1497149 (= (allKeysSameHash!1736 oldBucket!34 hash!405 hashF!1323) (forall!11425 oldBucket!34 lambda!211307))))

(declare-fun bs!1098358 () Bool)

(assert (= bs!1098358 d!1497149))

(declare-fun m!5625523 () Bool)

(assert (=> bs!1098358 m!5625523))

(assert (=> b!4704476 d!1497149))

(declare-fun d!1497151 () Bool)

(declare-fun e!2934860 () Bool)

(assert (=> d!1497151 e!2934860))

(declare-fun res!1987115 () Bool)

(assert (=> d!1497151 (=> (not res!1987115) (not e!2934860))))

(declare-fun lt!1869235 () ListMap!5073)

(assert (=> d!1497151 (= res!1987115 (not (contains!15868 lt!1869235 key!4653)))))

(assert (=> d!1497151 (= lt!1869235 (ListMap!5074 (removePresrvNoDuplicatedKeys!377 (toList!5709 lt!1868624) key!4653)))))

(assert (=> d!1497151 (= (-!714 lt!1868624 key!4653) lt!1869235)))

(declare-fun b!4704908 () Bool)

(assert (=> b!4704908 (= e!2934860 (= ((_ map and) (content!9299 (keys!18815 lt!1868624)) ((_ map not) (store ((as const (Array K!13925 Bool)) false) key!4653 true))) (content!9299 (keys!18815 lt!1869235))))))

(assert (= (and d!1497151 res!1987115) b!4704908))

(declare-fun m!5625525 () Bool)

(assert (=> d!1497151 m!5625525))

(declare-fun m!5625527 () Bool)

(assert (=> d!1497151 m!5625527))

(declare-fun m!5625529 () Bool)

(assert (=> b!4704908 m!5625529))

(assert (=> b!4704908 m!5624771))

(assert (=> b!4704908 m!5625529))

(declare-fun m!5625531 () Bool)

(assert (=> b!4704908 m!5625531))

(declare-fun m!5625533 () Bool)

(assert (=> b!4704908 m!5625533))

(declare-fun m!5625535 () Bool)

(assert (=> b!4704908 m!5625535))

(assert (=> b!4704908 m!5625533))

(assert (=> b!4704455 d!1497151))

(declare-fun d!1497153 () Bool)

(assert (=> d!1497153 (= (-!714 (+!2194 lt!1868629 (tuple2!54035 (_1!30311 (h!58858 oldBucket!34)) (_2!30311 (h!58858 oldBucket!34)))) key!4653) (+!2194 (-!714 lt!1868629 key!4653) (tuple2!54035 (_1!30311 (h!58858 oldBucket!34)) (_2!30311 (h!58858 oldBucket!34)))))))

(declare-fun lt!1869238 () Unit!126864)

(declare-fun choose!33014 (ListMap!5073 K!13925 V!14171 K!13925) Unit!126864)

(assert (=> d!1497153 (= lt!1869238 (choose!33014 lt!1868629 (_1!30311 (h!58858 oldBucket!34)) (_2!30311 (h!58858 oldBucket!34)) key!4653))))

(assert (=> d!1497153 (not (= (_1!30311 (h!58858 oldBucket!34)) key!4653))))

(assert (=> d!1497153 (= (addRemoveCommutativeForDiffKeys!115 lt!1868629 (_1!30311 (h!58858 oldBucket!34)) (_2!30311 (h!58858 oldBucket!34)) key!4653) lt!1869238)))

(declare-fun bs!1098359 () Bool)

(assert (= bs!1098359 d!1497153))

(declare-fun m!5625537 () Bool)

(assert (=> bs!1098359 m!5625537))

(declare-fun m!5625539 () Bool)

(assert (=> bs!1098359 m!5625539))

(assert (=> bs!1098359 m!5625537))

(assert (=> bs!1098359 m!5624429))

(declare-fun m!5625541 () Bool)

(assert (=> bs!1098359 m!5625541))

(assert (=> bs!1098359 m!5624429))

(declare-fun m!5625543 () Bool)

(assert (=> bs!1098359 m!5625543))

(assert (=> b!4704455 d!1497153))

(declare-fun d!1497155 () Bool)

(declare-fun e!2934861 () Bool)

(assert (=> d!1497155 e!2934861))

(declare-fun res!1987116 () Bool)

(assert (=> d!1497155 (=> (not res!1987116) (not e!2934861))))

(declare-fun lt!1869242 () ListMap!5073)

(assert (=> d!1497155 (= res!1987116 (contains!15868 lt!1869242 (_1!30311 (h!58858 oldBucket!34))))))

(declare-fun lt!1869239 () List!52691)

(assert (=> d!1497155 (= lt!1869242 (ListMap!5074 lt!1869239))))

(declare-fun lt!1869241 () Unit!126864)

(declare-fun lt!1869240 () Unit!126864)

(assert (=> d!1497155 (= lt!1869241 lt!1869240)))

(assert (=> d!1497155 (= (getValueByKey!1872 lt!1869239 (_1!30311 (h!58858 oldBucket!34))) (Some!12227 (_2!30311 (h!58858 oldBucket!34))))))

(assert (=> d!1497155 (= lt!1869240 (lemmaContainsTupThenGetReturnValue!1046 lt!1869239 (_1!30311 (h!58858 oldBucket!34)) (_2!30311 (h!58858 oldBucket!34))))))

(assert (=> d!1497155 (= lt!1869239 (insertNoDuplicatedKeys!554 (toList!5709 lt!1868629) (_1!30311 (h!58858 oldBucket!34)) (_2!30311 (h!58858 oldBucket!34))))))

(assert (=> d!1497155 (= (+!2194 lt!1868629 (h!58858 oldBucket!34)) lt!1869242)))

(declare-fun b!4704909 () Bool)

(declare-fun res!1987117 () Bool)

(assert (=> b!4704909 (=> (not res!1987117) (not e!2934861))))

(assert (=> b!4704909 (= res!1987117 (= (getValueByKey!1872 (toList!5709 lt!1869242) (_1!30311 (h!58858 oldBucket!34))) (Some!12227 (_2!30311 (h!58858 oldBucket!34)))))))

(declare-fun b!4704910 () Bool)

(assert (=> b!4704910 (= e!2934861 (contains!15872 (toList!5709 lt!1869242) (h!58858 oldBucket!34)))))

(assert (= (and d!1497155 res!1987116) b!4704909))

(assert (= (and b!4704909 res!1987117) b!4704910))

(declare-fun m!5625545 () Bool)

(assert (=> d!1497155 m!5625545))

(declare-fun m!5625547 () Bool)

(assert (=> d!1497155 m!5625547))

(declare-fun m!5625549 () Bool)

(assert (=> d!1497155 m!5625549))

(declare-fun m!5625551 () Bool)

(assert (=> d!1497155 m!5625551))

(declare-fun m!5625553 () Bool)

(assert (=> b!4704909 m!5625553))

(declare-fun m!5625555 () Bool)

(assert (=> b!4704910 m!5625555))

(assert (=> b!4704455 d!1497155))

(declare-fun d!1497157 () Bool)

(declare-fun e!2934862 () Bool)

(assert (=> d!1497157 e!2934862))

(declare-fun res!1987118 () Bool)

(assert (=> d!1497157 (=> (not res!1987118) (not e!2934862))))

(declare-fun lt!1869243 () ListMap!5073)

(assert (=> d!1497157 (= res!1987118 (not (contains!15868 lt!1869243 key!4653)))))

(assert (=> d!1497157 (= lt!1869243 (ListMap!5074 (removePresrvNoDuplicatedKeys!377 (toList!5709 (+!2194 lt!1868629 (h!58858 oldBucket!34))) key!4653)))))

(assert (=> d!1497157 (= (-!714 (+!2194 lt!1868629 (h!58858 oldBucket!34)) key!4653) lt!1869243)))

(declare-fun b!4704911 () Bool)

(assert (=> b!4704911 (= e!2934862 (= ((_ map and) (content!9299 (keys!18815 (+!2194 lt!1868629 (h!58858 oldBucket!34)))) ((_ map not) (store ((as const (Array K!13925 Bool)) false) key!4653 true))) (content!9299 (keys!18815 lt!1869243))))))

(assert (= (and d!1497157 res!1987118) b!4704911))

(declare-fun m!5625557 () Bool)

(assert (=> d!1497157 m!5625557))

(declare-fun m!5625559 () Bool)

(assert (=> d!1497157 m!5625559))

(assert (=> b!4704911 m!5624401))

(declare-fun m!5625561 () Bool)

(assert (=> b!4704911 m!5625561))

(assert (=> b!4704911 m!5624771))

(assert (=> b!4704911 m!5625561))

(declare-fun m!5625563 () Bool)

(assert (=> b!4704911 m!5625563))

(declare-fun m!5625565 () Bool)

(assert (=> b!4704911 m!5625565))

(declare-fun m!5625567 () Bool)

(assert (=> b!4704911 m!5625567))

(assert (=> b!4704911 m!5625565))

(assert (=> b!4704455 d!1497157))

(declare-fun d!1497159 () Bool)

(declare-fun e!2934863 () Bool)

(assert (=> d!1497159 e!2934863))

(declare-fun res!1987119 () Bool)

(assert (=> d!1497159 (=> (not res!1987119) (not e!2934863))))

(declare-fun lt!1869247 () ListMap!5073)

(assert (=> d!1497159 (= res!1987119 (contains!15868 lt!1869247 (_1!30311 (h!58858 oldBucket!34))))))

(declare-fun lt!1869244 () List!52691)

(assert (=> d!1497159 (= lt!1869247 (ListMap!5074 lt!1869244))))

(declare-fun lt!1869246 () Unit!126864)

(declare-fun lt!1869245 () Unit!126864)

(assert (=> d!1497159 (= lt!1869246 lt!1869245)))

(assert (=> d!1497159 (= (getValueByKey!1872 lt!1869244 (_1!30311 (h!58858 oldBucket!34))) (Some!12227 (_2!30311 (h!58858 oldBucket!34))))))

(assert (=> d!1497159 (= lt!1869245 (lemmaContainsTupThenGetReturnValue!1046 lt!1869244 (_1!30311 (h!58858 oldBucket!34)) (_2!30311 (h!58858 oldBucket!34))))))

(assert (=> d!1497159 (= lt!1869244 (insertNoDuplicatedKeys!554 (toList!5709 lt!1868621) (_1!30311 (h!58858 oldBucket!34)) (_2!30311 (h!58858 oldBucket!34))))))

(assert (=> d!1497159 (= (+!2194 lt!1868621 (h!58858 oldBucket!34)) lt!1869247)))

(declare-fun b!4704912 () Bool)

(declare-fun res!1987120 () Bool)

(assert (=> b!4704912 (=> (not res!1987120) (not e!2934863))))

(assert (=> b!4704912 (= res!1987120 (= (getValueByKey!1872 (toList!5709 lt!1869247) (_1!30311 (h!58858 oldBucket!34))) (Some!12227 (_2!30311 (h!58858 oldBucket!34)))))))

(declare-fun b!4704913 () Bool)

(assert (=> b!4704913 (= e!2934863 (contains!15872 (toList!5709 lt!1869247) (h!58858 oldBucket!34)))))

(assert (= (and d!1497159 res!1987119) b!4704912))

(assert (= (and b!4704912 res!1987120) b!4704913))

(declare-fun m!5625569 () Bool)

(assert (=> d!1497159 m!5625569))

(declare-fun m!5625571 () Bool)

(assert (=> d!1497159 m!5625571))

(declare-fun m!5625573 () Bool)

(assert (=> d!1497159 m!5625573))

(declare-fun m!5625575 () Bool)

(assert (=> d!1497159 m!5625575))

(declare-fun m!5625577 () Bool)

(assert (=> b!4704912 m!5625577))

(declare-fun m!5625579 () Bool)

(assert (=> b!4704913 m!5625579))

(assert (=> b!4704455 d!1497159))

(declare-fun d!1497161 () Bool)

(declare-fun res!1987125 () Bool)

(declare-fun e!2934868 () Bool)

(assert (=> d!1497161 (=> res!1987125 e!2934868)))

(assert (=> d!1497161 (= res!1987125 ((_ is Nil!52568) (toList!5710 lm!2023)))))

(assert (=> d!1497161 (= (forall!11423 (toList!5710 lm!2023) lambda!211153) e!2934868)))

(declare-fun b!4704918 () Bool)

(declare-fun e!2934869 () Bool)

(assert (=> b!4704918 (= e!2934868 e!2934869)))

(declare-fun res!1987126 () Bool)

(assert (=> b!4704918 (=> (not res!1987126) (not e!2934869))))

(assert (=> b!4704918 (= res!1987126 (dynLambda!21759 lambda!211153 (h!58859 (toList!5710 lm!2023))))))

(declare-fun b!4704919 () Bool)

(assert (=> b!4704919 (= e!2934869 (forall!11423 (t!359914 (toList!5710 lm!2023)) lambda!211153))))

(assert (= (and d!1497161 (not res!1987125)) b!4704918))

(assert (= (and b!4704918 res!1987126) b!4704919))

(declare-fun b_lambda!177507 () Bool)

(assert (=> (not b_lambda!177507) (not b!4704918)))

(declare-fun m!5625581 () Bool)

(assert (=> b!4704918 m!5625581))

(declare-fun m!5625583 () Bool)

(assert (=> b!4704919 m!5625583))

(assert (=> start!477556 d!1497161))

(declare-fun d!1497163 () Bool)

(declare-fun isStrictlySorted!695 (List!52692) Bool)

(assert (=> d!1497163 (= (inv!67799 lm!2023) (isStrictlySorted!695 (toList!5710 lm!2023)))))

(declare-fun bs!1098360 () Bool)

(assert (= bs!1098360 d!1497163))

(declare-fun m!5625585 () Bool)

(assert (=> bs!1098360 m!5625585))

(assert (=> start!477556 d!1497163))

(declare-fun d!1497165 () Bool)

(assert (=> d!1497165 (= (head!10083 (toList!5710 lm!2023)) (h!58859 (toList!5710 lm!2023)))))

(assert (=> b!4704456 d!1497165))

(declare-fun d!1497167 () Bool)

(declare-fun res!1987127 () Bool)

(declare-fun e!2934870 () Bool)

(assert (=> d!1497167 (=> res!1987127 e!2934870)))

(assert (=> d!1497167 (= res!1987127 ((_ is Nil!52568) (Cons!52568 (tuple2!54037 hash!405 newBucket!218) (t!359914 (toList!5710 lm!2023)))))))

(assert (=> d!1497167 (= (forall!11423 (Cons!52568 (tuple2!54037 hash!405 newBucket!218) (t!359914 (toList!5710 lm!2023))) lambda!211153) e!2934870)))

(declare-fun b!4704920 () Bool)

(declare-fun e!2934871 () Bool)

(assert (=> b!4704920 (= e!2934870 e!2934871)))

(declare-fun res!1987128 () Bool)

(assert (=> b!4704920 (=> (not res!1987128) (not e!2934871))))

(assert (=> b!4704920 (= res!1987128 (dynLambda!21759 lambda!211153 (h!58859 (Cons!52568 (tuple2!54037 hash!405 newBucket!218) (t!359914 (toList!5710 lm!2023))))))))

(declare-fun b!4704921 () Bool)

(assert (=> b!4704921 (= e!2934871 (forall!11423 (t!359914 (Cons!52568 (tuple2!54037 hash!405 newBucket!218) (t!359914 (toList!5710 lm!2023)))) lambda!211153))))

(assert (= (and d!1497167 (not res!1987127)) b!4704920))

(assert (= (and b!4704920 res!1987128) b!4704921))

(declare-fun b_lambda!177509 () Bool)

(assert (=> (not b_lambda!177509) (not b!4704920)))

(declare-fun m!5625587 () Bool)

(assert (=> b!4704920 m!5625587))

(declare-fun m!5625589 () Bool)

(assert (=> b!4704921 m!5625589))

(assert (=> b!4704477 d!1497167))

(declare-fun bs!1098361 () Bool)

(declare-fun d!1497169 () Bool)

(assert (= bs!1098361 (and d!1497169 d!1496967)))

(declare-fun lambda!211310 () Int)

(assert (=> bs!1098361 (not (= lambda!211310 lambda!211217))))

(declare-fun bs!1098362 () Bool)

(assert (= bs!1098362 (and d!1497169 d!1496981)))

(assert (=> bs!1098362 (not (= lambda!211310 lambda!211221))))

(declare-fun bs!1098363 () Bool)

(assert (= bs!1098363 (and d!1497169 d!1497099)))

(assert (=> bs!1098363 (not (= lambda!211310 lambda!211287))))

(declare-fun bs!1098364 () Bool)

(assert (= bs!1098364 (and d!1497169 d!1496935)))

(assert (=> bs!1098364 (not (= lambda!211310 lambda!211214))))

(declare-fun bs!1098365 () Bool)

(assert (= bs!1098365 (and d!1497169 d!1496969)))

(assert (=> bs!1098365 (not (= lambda!211310 lambda!211218))))

(declare-fun bs!1098366 () Bool)

(assert (= bs!1098366 (and d!1497169 d!1497103)))

(assert (=> bs!1098366 (not (= lambda!211310 lambda!211297))))

(declare-fun bs!1098367 () Bool)

(assert (= bs!1098367 (and d!1497169 d!1496885)))

(assert (=> bs!1098367 (not (= lambda!211310 lambda!211198))))

(declare-fun bs!1098368 () Bool)

(assert (= bs!1098368 (and d!1497169 start!477556)))

(assert (=> bs!1098368 (not (= lambda!211310 lambda!211153))))

(declare-fun bs!1098369 () Bool)

(assert (= bs!1098369 (and d!1497169 d!1497115)))

(assert (=> bs!1098369 (not (= lambda!211310 lambda!211298))))

(declare-fun bs!1098370 () Bool)

(assert (= bs!1098370 (and d!1497169 d!1497097)))

(assert (=> bs!1098370 (not (= lambda!211310 lambda!211286))))

(declare-fun bs!1098371 () Bool)

(assert (= bs!1098371 (and d!1497169 d!1496883)))

(assert (=> bs!1098371 (not (= lambda!211310 lambda!211156))))

(declare-fun bs!1098372 () Bool)

(assert (= bs!1098372 (and d!1497169 d!1496963)))

(assert (=> bs!1098372 (not (= lambda!211310 lambda!211216))))

(assert (=> d!1497169 true))

(assert (=> d!1497169 (= (allKeysSameHashInMap!1824 lm!2023 hashF!1323) (forall!11423 (toList!5710 lm!2023) lambda!211310))))

(declare-fun bs!1098373 () Bool)

(assert (= bs!1098373 d!1497169))

(declare-fun m!5625591 () Bool)

(assert (=> bs!1098373 m!5625591))

(assert (=> b!4704457 d!1497169))

(declare-fun bs!1098374 () Bool)

(declare-fun b!4704927 () Bool)

(assert (= bs!1098374 (and b!4704927 b!4704899)))

(declare-fun lambda!211311 () Int)

(assert (=> bs!1098374 (= (= lt!1868637 lt!1869215) (= lambda!211311 lambda!211305))))

(declare-fun bs!1098375 () Bool)

(assert (= bs!1098375 (and b!4704927 d!1496913)))

(assert (=> bs!1098375 (not (= lambda!211311 lambda!211205))))

(declare-fun bs!1098376 () Bool)

(assert (= bs!1098376 (and b!4704927 b!4704880)))

(assert (=> bs!1098376 (= lambda!211311 lambda!211300)))

(assert (=> bs!1098374 (= lambda!211311 lambda!211304)))

(declare-fun bs!1098377 () Bool)

(assert (= bs!1098377 (and b!4704927 b!4704901)))

(assert (=> bs!1098377 (= lambda!211311 lambda!211303)))

(declare-fun bs!1098378 () Bool)

(assert (= bs!1098378 (and b!4704927 b!4704834)))

(assert (=> bs!1098378 (= (= lt!1868637 lt!1869103) (= lambda!211311 lambda!211280))))

(declare-fun bs!1098379 () Bool)

(assert (= bs!1098379 (and b!4704927 b!4704841)))

(assert (=> bs!1098379 (= lambda!211311 lambda!211283)))

(declare-fun bs!1098380 () Bool)

(assert (= bs!1098380 (and b!4704927 d!1497085)))

(assert (=> bs!1098380 (= (= lt!1868637 lt!1869132) (= lambda!211311 lambda!211285))))

(declare-fun bs!1098381 () Bool)

(assert (= bs!1098381 (and b!4704927 d!1497117)))

(assert (=> bs!1098381 (= (= lt!1868637 lt!1869201) (= lambda!211311 lambda!211302))))

(declare-fun bs!1098382 () Bool)

(assert (= bs!1098382 (and b!4704927 d!1497127)))

(assert (=> bs!1098382 (= (= lt!1868637 lt!1869223) (= lambda!211311 lambda!211306))))

(assert (=> bs!1098379 (= (= lt!1868637 lt!1869124) (= lambda!211311 lambda!211284))))

(declare-fun bs!1098383 () Bool)

(assert (= bs!1098383 (and b!4704927 b!4704836)))

(assert (=> bs!1098383 (= lambda!211311 lambda!211278)))

(declare-fun bs!1098384 () Bool)

(assert (= bs!1098384 (and b!4704927 d!1497149)))

(assert (=> bs!1098384 (not (= lambda!211311 lambda!211307))))

(assert (=> bs!1098378 (= lambda!211311 lambda!211279)))

(declare-fun bs!1098385 () Bool)

(assert (= bs!1098385 (and b!4704927 d!1497027)))

(assert (=> bs!1098385 (= (= lt!1868637 lt!1869111) (= lambda!211311 lambda!211281))))

(declare-fun bs!1098386 () Bool)

(assert (= bs!1098386 (and b!4704927 b!4704882)))

(assert (=> bs!1098386 (= lambda!211311 lambda!211299)))

(assert (=> bs!1098376 (= (= lt!1868637 lt!1869193) (= lambda!211311 lambda!211301))))

(declare-fun bs!1098387 () Bool)

(assert (= bs!1098387 (and b!4704927 b!4704843)))

(assert (=> bs!1098387 (= lambda!211311 lambda!211282)))

(assert (=> b!4704927 true))

(declare-fun bs!1098388 () Bool)

(declare-fun b!4704925 () Bool)

(assert (= bs!1098388 (and b!4704925 b!4704899)))

(declare-fun lambda!211312 () Int)

(assert (=> bs!1098388 (= (= lt!1868637 lt!1869215) (= lambda!211312 lambda!211305))))

(declare-fun bs!1098389 () Bool)

(assert (= bs!1098389 (and b!4704925 d!1496913)))

(assert (=> bs!1098389 (not (= lambda!211312 lambda!211205))))

(declare-fun bs!1098390 () Bool)

(assert (= bs!1098390 (and b!4704925 b!4704880)))

(assert (=> bs!1098390 (= lambda!211312 lambda!211300)))

(assert (=> bs!1098388 (= lambda!211312 lambda!211304)))

(declare-fun bs!1098391 () Bool)

(assert (= bs!1098391 (and b!4704925 b!4704834)))

(assert (=> bs!1098391 (= (= lt!1868637 lt!1869103) (= lambda!211312 lambda!211280))))

(declare-fun bs!1098392 () Bool)

(assert (= bs!1098392 (and b!4704925 b!4704841)))

(assert (=> bs!1098392 (= lambda!211312 lambda!211283)))

(declare-fun bs!1098393 () Bool)

(assert (= bs!1098393 (and b!4704925 d!1497085)))

(assert (=> bs!1098393 (= (= lt!1868637 lt!1869132) (= lambda!211312 lambda!211285))))

(declare-fun bs!1098394 () Bool)

(assert (= bs!1098394 (and b!4704925 d!1497117)))

(assert (=> bs!1098394 (= (= lt!1868637 lt!1869201) (= lambda!211312 lambda!211302))))

(declare-fun bs!1098395 () Bool)

(assert (= bs!1098395 (and b!4704925 d!1497127)))

(assert (=> bs!1098395 (= (= lt!1868637 lt!1869223) (= lambda!211312 lambda!211306))))

(assert (=> bs!1098392 (= (= lt!1868637 lt!1869124) (= lambda!211312 lambda!211284))))

(declare-fun bs!1098396 () Bool)

(assert (= bs!1098396 (and b!4704925 b!4704836)))

(assert (=> bs!1098396 (= lambda!211312 lambda!211278)))

(declare-fun bs!1098397 () Bool)

(assert (= bs!1098397 (and b!4704925 d!1497149)))

(assert (=> bs!1098397 (not (= lambda!211312 lambda!211307))))

(assert (=> bs!1098391 (= lambda!211312 lambda!211279)))

(declare-fun bs!1098398 () Bool)

(assert (= bs!1098398 (and b!4704925 d!1497027)))

(assert (=> bs!1098398 (= (= lt!1868637 lt!1869111) (= lambda!211312 lambda!211281))))

(declare-fun bs!1098399 () Bool)

(assert (= bs!1098399 (and b!4704925 b!4704882)))

(assert (=> bs!1098399 (= lambda!211312 lambda!211299)))

(declare-fun bs!1098400 () Bool)

(assert (= bs!1098400 (and b!4704925 b!4704901)))

(assert (=> bs!1098400 (= lambda!211312 lambda!211303)))

(declare-fun bs!1098401 () Bool)

(assert (= bs!1098401 (and b!4704925 b!4704927)))

(assert (=> bs!1098401 (= lambda!211312 lambda!211311)))

(assert (=> bs!1098390 (= (= lt!1868637 lt!1869193) (= lambda!211312 lambda!211301))))

(declare-fun bs!1098402 () Bool)

(assert (= bs!1098402 (and b!4704925 b!4704843)))

(assert (=> bs!1098402 (= lambda!211312 lambda!211282)))

(assert (=> b!4704925 true))

(declare-fun lt!1869260 () ListMap!5073)

(declare-fun lambda!211313 () Int)

(assert (=> bs!1098388 (= (= lt!1869260 lt!1869215) (= lambda!211313 lambda!211305))))

(assert (=> bs!1098390 (= (= lt!1869260 lt!1868637) (= lambda!211313 lambda!211300))))

(assert (=> bs!1098388 (= (= lt!1869260 lt!1868637) (= lambda!211313 lambda!211304))))

(assert (=> bs!1098391 (= (= lt!1869260 lt!1869103) (= lambda!211313 lambda!211280))))

(assert (=> bs!1098392 (= (= lt!1869260 lt!1868637) (= lambda!211313 lambda!211283))))

(assert (=> bs!1098393 (= (= lt!1869260 lt!1869132) (= lambda!211313 lambda!211285))))

(assert (=> bs!1098394 (= (= lt!1869260 lt!1869201) (= lambda!211313 lambda!211302))))

(assert (=> bs!1098395 (= (= lt!1869260 lt!1869223) (= lambda!211313 lambda!211306))))

(assert (=> bs!1098392 (= (= lt!1869260 lt!1869124) (= lambda!211313 lambda!211284))))

(assert (=> bs!1098396 (= (= lt!1869260 lt!1868637) (= lambda!211313 lambda!211278))))

(assert (=> bs!1098397 (not (= lambda!211313 lambda!211307))))

(assert (=> bs!1098391 (= (= lt!1869260 lt!1868637) (= lambda!211313 lambda!211279))))

(assert (=> bs!1098389 (not (= lambda!211313 lambda!211205))))

(assert (=> b!4704925 (= (= lt!1869260 lt!1868637) (= lambda!211313 lambda!211312))))

(assert (=> bs!1098398 (= (= lt!1869260 lt!1869111) (= lambda!211313 lambda!211281))))

(assert (=> bs!1098399 (= (= lt!1869260 lt!1868637) (= lambda!211313 lambda!211299))))

(assert (=> bs!1098400 (= (= lt!1869260 lt!1868637) (= lambda!211313 lambda!211303))))

(assert (=> bs!1098401 (= (= lt!1869260 lt!1868637) (= lambda!211313 lambda!211311))))

(assert (=> bs!1098390 (= (= lt!1869260 lt!1869193) (= lambda!211313 lambda!211301))))

(assert (=> bs!1098402 (= (= lt!1869260 lt!1868637) (= lambda!211313 lambda!211282))))

(assert (=> b!4704925 true))

(declare-fun bs!1098403 () Bool)

(declare-fun d!1497171 () Bool)

(assert (= bs!1098403 (and d!1497171 b!4704899)))

(declare-fun lambda!211314 () Int)

(declare-fun lt!1869268 () ListMap!5073)

(assert (=> bs!1098403 (= (= lt!1869268 lt!1869215) (= lambda!211314 lambda!211305))))

(declare-fun bs!1098404 () Bool)

(assert (= bs!1098404 (and d!1497171 b!4704880)))

(assert (=> bs!1098404 (= (= lt!1869268 lt!1868637) (= lambda!211314 lambda!211300))))

(declare-fun bs!1098405 () Bool)

(assert (= bs!1098405 (and d!1497171 b!4704834)))

(assert (=> bs!1098405 (= (= lt!1869268 lt!1869103) (= lambda!211314 lambda!211280))))

(declare-fun bs!1098406 () Bool)

(assert (= bs!1098406 (and d!1497171 b!4704841)))

(assert (=> bs!1098406 (= (= lt!1869268 lt!1868637) (= lambda!211314 lambda!211283))))

(declare-fun bs!1098407 () Bool)

(assert (= bs!1098407 (and d!1497171 d!1497085)))

(assert (=> bs!1098407 (= (= lt!1869268 lt!1869132) (= lambda!211314 lambda!211285))))

(declare-fun bs!1098408 () Bool)

(assert (= bs!1098408 (and d!1497171 d!1497117)))

(assert (=> bs!1098408 (= (= lt!1869268 lt!1869201) (= lambda!211314 lambda!211302))))

(declare-fun bs!1098409 () Bool)

(assert (= bs!1098409 (and d!1497171 d!1497127)))

(assert (=> bs!1098409 (= (= lt!1869268 lt!1869223) (= lambda!211314 lambda!211306))))

(assert (=> bs!1098406 (= (= lt!1869268 lt!1869124) (= lambda!211314 lambda!211284))))

(declare-fun bs!1098410 () Bool)

(assert (= bs!1098410 (and d!1497171 b!4704836)))

(assert (=> bs!1098410 (= (= lt!1869268 lt!1868637) (= lambda!211314 lambda!211278))))

(declare-fun bs!1098411 () Bool)

(assert (= bs!1098411 (and d!1497171 d!1497149)))

(assert (=> bs!1098411 (not (= lambda!211314 lambda!211307))))

(assert (=> bs!1098405 (= (= lt!1869268 lt!1868637) (= lambda!211314 lambda!211279))))

(declare-fun bs!1098412 () Bool)

(assert (= bs!1098412 (and d!1497171 d!1496913)))

(assert (=> bs!1098412 (not (= lambda!211314 lambda!211205))))

(declare-fun bs!1098413 () Bool)

(assert (= bs!1098413 (and d!1497171 b!4704925)))

(assert (=> bs!1098413 (= (= lt!1869268 lt!1868637) (= lambda!211314 lambda!211312))))

(assert (=> bs!1098403 (= (= lt!1869268 lt!1868637) (= lambda!211314 lambda!211304))))

(assert (=> bs!1098413 (= (= lt!1869268 lt!1869260) (= lambda!211314 lambda!211313))))

(declare-fun bs!1098414 () Bool)

(assert (= bs!1098414 (and d!1497171 d!1497027)))

(assert (=> bs!1098414 (= (= lt!1869268 lt!1869111) (= lambda!211314 lambda!211281))))

(declare-fun bs!1098415 () Bool)

(assert (= bs!1098415 (and d!1497171 b!4704882)))

(assert (=> bs!1098415 (= (= lt!1869268 lt!1868637) (= lambda!211314 lambda!211299))))

(declare-fun bs!1098416 () Bool)

(assert (= bs!1098416 (and d!1497171 b!4704901)))

(assert (=> bs!1098416 (= (= lt!1869268 lt!1868637) (= lambda!211314 lambda!211303))))

(declare-fun bs!1098417 () Bool)

(assert (= bs!1098417 (and d!1497171 b!4704927)))

(assert (=> bs!1098417 (= (= lt!1869268 lt!1868637) (= lambda!211314 lambda!211311))))

(assert (=> bs!1098404 (= (= lt!1869268 lt!1869193) (= lambda!211314 lambda!211301))))

(declare-fun bs!1098418 () Bool)

(assert (= bs!1098418 (and d!1497171 b!4704843)))

(assert (=> bs!1098418 (= (= lt!1869268 lt!1868637) (= lambda!211314 lambda!211282))))

(assert (=> d!1497171 true))

(declare-fun b!4704924 () Bool)

(declare-fun e!2934872 () Bool)

(assert (=> b!4704924 (= e!2934872 (invariantList!1456 (toList!5709 lt!1869268)))))

(declare-fun bm!328950 () Bool)

(declare-fun call!328957 () Unit!126864)

(assert (=> bm!328950 (= call!328957 (lemmaContainsAllItsOwnKeys!744 lt!1868637))))

(declare-fun e!2934874 () ListMap!5073)

(assert (=> b!4704925 (= e!2934874 lt!1869260)))

(declare-fun lt!1869256 () ListMap!5073)

(assert (=> b!4704925 (= lt!1869256 (+!2194 lt!1868637 (h!58858 (_2!30312 (h!58859 (toList!5710 lm!2023))))))))

(assert (=> b!4704925 (= lt!1869260 (addToMapMapFromBucket!1342 (t!359913 (_2!30312 (h!58859 (toList!5710 lm!2023)))) (+!2194 lt!1868637 (h!58858 (_2!30312 (h!58859 (toList!5710 lm!2023)))))))))

(declare-fun lt!1869250 () Unit!126864)

(assert (=> b!4704925 (= lt!1869250 call!328957)))

(assert (=> b!4704925 (forall!11425 (toList!5709 lt!1868637) lambda!211312)))

(declare-fun lt!1869249 () Unit!126864)

(assert (=> b!4704925 (= lt!1869249 lt!1869250)))

(declare-fun call!328956 () Bool)

(assert (=> b!4704925 call!328956))

(declare-fun lt!1869252 () Unit!126864)

(declare-fun Unit!126975 () Unit!126864)

(assert (=> b!4704925 (= lt!1869252 Unit!126975)))

(declare-fun call!328955 () Bool)

(assert (=> b!4704925 call!328955))

(declare-fun lt!1869253 () Unit!126864)

(declare-fun Unit!126976 () Unit!126864)

(assert (=> b!4704925 (= lt!1869253 Unit!126976)))

(declare-fun lt!1869261 () Unit!126864)

(declare-fun Unit!126977 () Unit!126864)

(assert (=> b!4704925 (= lt!1869261 Unit!126977)))

(declare-fun lt!1869255 () Unit!126864)

(assert (=> b!4704925 (= lt!1869255 (forallContained!3532 (toList!5709 lt!1869256) lambda!211313 (h!58858 (_2!30312 (h!58859 (toList!5710 lm!2023))))))))

(assert (=> b!4704925 (contains!15868 lt!1869256 (_1!30311 (h!58858 (_2!30312 (h!58859 (toList!5710 lm!2023))))))))

(declare-fun lt!1869262 () Unit!126864)

(declare-fun Unit!126978 () Unit!126864)

(assert (=> b!4704925 (= lt!1869262 Unit!126978)))

(assert (=> b!4704925 (contains!15868 lt!1869260 (_1!30311 (h!58858 (_2!30312 (h!58859 (toList!5710 lm!2023))))))))

(declare-fun lt!1869251 () Unit!126864)

(declare-fun Unit!126979 () Unit!126864)

(assert (=> b!4704925 (= lt!1869251 Unit!126979)))

(assert (=> b!4704925 (forall!11425 (_2!30312 (h!58859 (toList!5710 lm!2023))) lambda!211313)))

(declare-fun lt!1869248 () Unit!126864)

(declare-fun Unit!126980 () Unit!126864)

(assert (=> b!4704925 (= lt!1869248 Unit!126980)))

(assert (=> b!4704925 (forall!11425 (toList!5709 lt!1869256) lambda!211313)))

(declare-fun lt!1869257 () Unit!126864)

(declare-fun Unit!126981 () Unit!126864)

(assert (=> b!4704925 (= lt!1869257 Unit!126981)))

(declare-fun lt!1869267 () Unit!126864)

(declare-fun Unit!126982 () Unit!126864)

(assert (=> b!4704925 (= lt!1869267 Unit!126982)))

(declare-fun lt!1869263 () Unit!126864)

(assert (=> b!4704925 (= lt!1869263 (addForallContainsKeyThenBeforeAdding!743 lt!1868637 lt!1869260 (_1!30311 (h!58858 (_2!30312 (h!58859 (toList!5710 lm!2023))))) (_2!30311 (h!58858 (_2!30312 (h!58859 (toList!5710 lm!2023)))))))))

(assert (=> b!4704925 (forall!11425 (toList!5709 lt!1868637) lambda!211313)))

(declare-fun lt!1869254 () Unit!126864)

(assert (=> b!4704925 (= lt!1869254 lt!1869263)))

(assert (=> b!4704925 (forall!11425 (toList!5709 lt!1868637) lambda!211313)))

(declare-fun lt!1869266 () Unit!126864)

(declare-fun Unit!126983 () Unit!126864)

(assert (=> b!4704925 (= lt!1869266 Unit!126983)))

(declare-fun res!1987129 () Bool)

(assert (=> b!4704925 (= res!1987129 (forall!11425 (_2!30312 (h!58859 (toList!5710 lm!2023))) lambda!211313))))

(declare-fun e!2934873 () Bool)

(assert (=> b!4704925 (=> (not res!1987129) (not e!2934873))))

(assert (=> b!4704925 e!2934873))

(declare-fun lt!1869258 () Unit!126864)

(declare-fun Unit!126984 () Unit!126864)

(assert (=> b!4704925 (= lt!1869258 Unit!126984)))

(declare-fun b!4704926 () Bool)

(assert (=> b!4704926 (= e!2934873 (forall!11425 (toList!5709 lt!1868637) lambda!211313))))

(declare-fun c!804150 () Bool)

(declare-fun bm!328951 () Bool)

(assert (=> bm!328951 (= call!328955 (forall!11425 (ite c!804150 (toList!5709 lt!1868637) (t!359913 (_2!30312 (h!58859 (toList!5710 lm!2023))))) (ite c!804150 lambda!211311 lambda!211313)))))

(declare-fun bm!328952 () Bool)

(assert (=> bm!328952 (= call!328956 (forall!11425 (ite c!804150 (toList!5709 lt!1868637) (toList!5709 lt!1869256)) (ite c!804150 lambda!211311 lambda!211313)))))

(declare-fun b!4704928 () Bool)

(declare-fun res!1987131 () Bool)

(assert (=> b!4704928 (=> (not res!1987131) (not e!2934872))))

(assert (=> b!4704928 (= res!1987131 (forall!11425 (toList!5709 lt!1868637) lambda!211314))))

(assert (=> b!4704927 (= e!2934874 lt!1868637)))

(declare-fun lt!1869259 () Unit!126864)

(assert (=> b!4704927 (= lt!1869259 call!328957)))

(assert (=> b!4704927 call!328956))

(declare-fun lt!1869265 () Unit!126864)

(assert (=> b!4704927 (= lt!1869265 lt!1869259)))

(assert (=> b!4704927 call!328955))

(declare-fun lt!1869264 () Unit!126864)

(declare-fun Unit!126985 () Unit!126864)

(assert (=> b!4704927 (= lt!1869264 Unit!126985)))

(assert (=> d!1497171 e!2934872))

(declare-fun res!1987130 () Bool)

(assert (=> d!1497171 (=> (not res!1987130) (not e!2934872))))

(assert (=> d!1497171 (= res!1987130 (forall!11425 (_2!30312 (h!58859 (toList!5710 lm!2023))) lambda!211314))))

(assert (=> d!1497171 (= lt!1869268 e!2934874)))

(assert (=> d!1497171 (= c!804150 ((_ is Nil!52567) (_2!30312 (h!58859 (toList!5710 lm!2023)))))))

(assert (=> d!1497171 (noDuplicateKeys!1910 (_2!30312 (h!58859 (toList!5710 lm!2023))))))

(assert (=> d!1497171 (= (addToMapMapFromBucket!1342 (_2!30312 (h!58859 (toList!5710 lm!2023))) lt!1868637) lt!1869268)))

(assert (= (and d!1497171 c!804150) b!4704927))

(assert (= (and d!1497171 (not c!804150)) b!4704925))

(assert (= (and b!4704925 res!1987129) b!4704926))

(assert (= (or b!4704927 b!4704925) bm!328950))

(assert (= (or b!4704927 b!4704925) bm!328952))

(assert (= (or b!4704927 b!4704925) bm!328951))

(assert (= (and d!1497171 res!1987130) b!4704928))

(assert (= (and b!4704928 res!1987131) b!4704924))

(declare-fun m!5625593 () Bool)

(assert (=> bm!328951 m!5625593))

(declare-fun m!5625595 () Bool)

(assert (=> d!1497171 m!5625595))

(declare-fun m!5625597 () Bool)

(assert (=> d!1497171 m!5625597))

(declare-fun m!5625599 () Bool)

(assert (=> b!4704928 m!5625599))

(declare-fun m!5625601 () Bool)

(assert (=> b!4704925 m!5625601))

(declare-fun m!5625603 () Bool)

(assert (=> b!4704925 m!5625603))

(declare-fun m!5625605 () Bool)

(assert (=> b!4704925 m!5625605))

(declare-fun m!5625607 () Bool)

(assert (=> b!4704925 m!5625607))

(declare-fun m!5625609 () Bool)

(assert (=> b!4704925 m!5625609))

(assert (=> b!4704925 m!5625603))

(declare-fun m!5625611 () Bool)

(assert (=> b!4704925 m!5625611))

(declare-fun m!5625613 () Bool)

(assert (=> b!4704925 m!5625613))

(declare-fun m!5625615 () Bool)

(assert (=> b!4704925 m!5625615))

(assert (=> b!4704925 m!5625607))

(assert (=> b!4704925 m!5625613))

(declare-fun m!5625617 () Bool)

(assert (=> b!4704925 m!5625617))

(declare-fun m!5625619 () Bool)

(assert (=> b!4704925 m!5625619))

(declare-fun m!5625621 () Bool)

(assert (=> bm!328952 m!5625621))

(declare-fun m!5625623 () Bool)

(assert (=> b!4704924 m!5625623))

(assert (=> b!4704926 m!5625607))

(assert (=> bm!328950 m!5625265))

(assert (=> b!4704459 d!1497171))

(declare-fun bs!1098419 () Bool)

(declare-fun d!1497173 () Bool)

(assert (= bs!1098419 (and d!1497173 d!1496967)))

(declare-fun lambda!211315 () Int)

(assert (=> bs!1098419 (= lambda!211315 lambda!211217)))

(declare-fun bs!1098420 () Bool)

(assert (= bs!1098420 (and d!1497173 d!1496981)))

(assert (=> bs!1098420 (= lambda!211315 lambda!211221)))

(declare-fun bs!1098421 () Bool)

(assert (= bs!1098421 (and d!1497173 d!1497099)))

(assert (=> bs!1098421 (= lambda!211315 lambda!211287)))

(declare-fun bs!1098422 () Bool)

(assert (= bs!1098422 (and d!1497173 d!1496935)))

(assert (=> bs!1098422 (= lambda!211315 lambda!211214)))

(declare-fun bs!1098423 () Bool)

(assert (= bs!1098423 (and d!1497173 d!1496969)))

(assert (=> bs!1098423 (= lambda!211315 lambda!211218)))

(declare-fun bs!1098424 () Bool)

(assert (= bs!1098424 (and d!1497173 d!1497103)))

(assert (=> bs!1098424 (= lambda!211315 lambda!211297)))

(declare-fun bs!1098425 () Bool)

(assert (= bs!1098425 (and d!1497173 d!1496885)))

(assert (=> bs!1098425 (= lambda!211315 lambda!211198)))

(declare-fun bs!1098426 () Bool)

(assert (= bs!1098426 (and d!1497173 start!477556)))

(assert (=> bs!1098426 (= lambda!211315 lambda!211153)))

(declare-fun bs!1098427 () Bool)

(assert (= bs!1098427 (and d!1497173 d!1497097)))

(assert (=> bs!1098427 (= lambda!211315 lambda!211286)))

(declare-fun bs!1098428 () Bool)

(assert (= bs!1098428 (and d!1497173 d!1496883)))

(assert (=> bs!1098428 (= lambda!211315 lambda!211156)))

(declare-fun bs!1098429 () Bool)

(assert (= bs!1098429 (and d!1497173 d!1496963)))

(assert (=> bs!1098429 (= lambda!211315 lambda!211216)))

(declare-fun bs!1098430 () Bool)

(assert (= bs!1098430 (and d!1497173 d!1497115)))

(assert (=> bs!1098430 (= lambda!211315 lambda!211298)))

(declare-fun bs!1098431 () Bool)

(assert (= bs!1098431 (and d!1497173 d!1497169)))

(assert (=> bs!1098431 (not (= lambda!211315 lambda!211310))))

(declare-fun lt!1869269 () ListMap!5073)

(assert (=> d!1497173 (invariantList!1456 (toList!5709 lt!1869269))))

(declare-fun e!2934875 () ListMap!5073)

(assert (=> d!1497173 (= lt!1869269 e!2934875)))

(declare-fun c!804151 () Bool)

(assert (=> d!1497173 (= c!804151 ((_ is Cons!52568) (t!359914 (toList!5710 lm!2023))))))

(assert (=> d!1497173 (forall!11423 (t!359914 (toList!5710 lm!2023)) lambda!211315)))

(assert (=> d!1497173 (= (extractMap!1936 (t!359914 (toList!5710 lm!2023))) lt!1869269)))

(declare-fun b!4704929 () Bool)

(assert (=> b!4704929 (= e!2934875 (addToMapMapFromBucket!1342 (_2!30312 (h!58859 (t!359914 (toList!5710 lm!2023)))) (extractMap!1936 (t!359914 (t!359914 (toList!5710 lm!2023))))))))

(declare-fun b!4704930 () Bool)

(assert (=> b!4704930 (= e!2934875 (ListMap!5074 Nil!52567))))

(assert (= (and d!1497173 c!804151) b!4704929))

(assert (= (and d!1497173 (not c!804151)) b!4704930))

(declare-fun m!5625625 () Bool)

(assert (=> d!1497173 m!5625625))

(declare-fun m!5625627 () Bool)

(assert (=> d!1497173 m!5625627))

(declare-fun m!5625629 () Bool)

(assert (=> b!4704929 m!5625629))

(assert (=> b!4704929 m!5625629))

(declare-fun m!5625631 () Bool)

(assert (=> b!4704929 m!5625631))

(assert (=> b!4704459 d!1497173))

(declare-fun d!1497175 () Bool)

(assert (=> d!1497175 (= (tail!8755 lm!2023) (ListLongMap!4240 (tail!8757 (toList!5710 lm!2023))))))

(declare-fun bs!1098432 () Bool)

(assert (= bs!1098432 d!1497175))

(declare-fun m!5625633 () Bool)

(assert (=> bs!1098432 m!5625633))

(assert (=> b!4704459 d!1497175))

(declare-fun d!1497177 () Bool)

(declare-fun lt!1869270 () List!52691)

(assert (=> d!1497177 (not (containsKey!3201 lt!1869270 key!4653))))

(declare-fun e!2934877 () List!52691)

(assert (=> d!1497177 (= lt!1869270 e!2934877)))

(declare-fun c!804153 () Bool)

(assert (=> d!1497177 (= c!804153 (and ((_ is Cons!52567) oldBucket!34) (= (_1!30311 (h!58858 oldBucket!34)) key!4653)))))

(assert (=> d!1497177 (noDuplicateKeys!1910 oldBucket!34)))

(assert (=> d!1497177 (= (removePairForKey!1505 oldBucket!34 key!4653) lt!1869270)))

(declare-fun b!4704933 () Bool)

(declare-fun e!2934876 () List!52691)

(assert (=> b!4704933 (= e!2934876 (Cons!52567 (h!58858 oldBucket!34) (removePairForKey!1505 (t!359913 oldBucket!34) key!4653)))))

(declare-fun b!4704932 () Bool)

(assert (=> b!4704932 (= e!2934877 e!2934876)))

(declare-fun c!804152 () Bool)

(assert (=> b!4704932 (= c!804152 ((_ is Cons!52567) oldBucket!34))))

(declare-fun b!4704934 () Bool)

(assert (=> b!4704934 (= e!2934876 Nil!52567)))

(declare-fun b!4704931 () Bool)

(assert (=> b!4704931 (= e!2934877 (t!359913 oldBucket!34))))

(assert (= (and d!1497177 c!804153) b!4704931))

(assert (= (and d!1497177 (not c!804153)) b!4704932))

(assert (= (and b!4704932 c!804152) b!4704933))

(assert (= (and b!4704932 (not c!804152)) b!4704934))

(declare-fun m!5625635 () Bool)

(assert (=> d!1497177 m!5625635))

(assert (=> d!1497177 m!5624393))

(assert (=> b!4704933 m!5624411))

(assert (=> b!4704458 d!1497177))

(declare-fun b!4704939 () Bool)

(declare-fun e!2934880 () Bool)

(declare-fun tp!1346896 () Bool)

(declare-fun tp!1346897 () Bool)

(assert (=> b!4704939 (= e!2934880 (and tp!1346896 tp!1346897))))

(assert (=> b!4704470 (= tp!1346880 e!2934880)))

(assert (= (and b!4704470 ((_ is Cons!52568) (toList!5710 lm!2023))) b!4704939))

(declare-fun e!2934883 () Bool)

(declare-fun tp!1346900 () Bool)

(declare-fun b!4704944 () Bool)

(assert (=> b!4704944 (= e!2934883 (and tp_is_empty!30933 tp_is_empty!30935 tp!1346900))))

(assert (=> b!4704462 (= tp!1346879 e!2934883)))

(assert (= (and b!4704462 ((_ is Cons!52567) (t!359913 oldBucket!34))) b!4704944))

(declare-fun tp!1346901 () Bool)

(declare-fun e!2934884 () Bool)

(declare-fun b!4704945 () Bool)

(assert (=> b!4704945 (= e!2934884 (and tp_is_empty!30933 tp_is_empty!30935 tp!1346901))))

(assert (=> b!4704464 (= tp!1346881 e!2934884)))

(assert (= (and b!4704464 ((_ is Cons!52567) (t!359913 newBucket!218))) b!4704945))

(declare-fun b_lambda!177511 () Bool)

(assert (= b_lambda!177509 (or start!477556 b_lambda!177511)))

(declare-fun bs!1098433 () Bool)

(declare-fun d!1497179 () Bool)

(assert (= bs!1098433 (and d!1497179 start!477556)))

(assert (=> bs!1098433 (= (dynLambda!21759 lambda!211153 (h!58859 (Cons!52568 (tuple2!54037 hash!405 newBucket!218) (t!359914 (toList!5710 lm!2023))))) (noDuplicateKeys!1910 (_2!30312 (h!58859 (Cons!52568 (tuple2!54037 hash!405 newBucket!218) (t!359914 (toList!5710 lm!2023)))))))))

(declare-fun m!5625637 () Bool)

(assert (=> bs!1098433 m!5625637))

(assert (=> b!4704920 d!1497179))

(declare-fun b_lambda!177513 () Bool)

(assert (= b_lambda!177507 (or start!477556 b_lambda!177513)))

(declare-fun bs!1098434 () Bool)

(declare-fun d!1497181 () Bool)

(assert (= bs!1098434 (and d!1497181 start!477556)))

(assert (=> bs!1098434 (= (dynLambda!21759 lambda!211153 (h!58859 (toList!5710 lm!2023))) (noDuplicateKeys!1910 (_2!30312 (h!58859 (toList!5710 lm!2023)))))))

(assert (=> bs!1098434 m!5625597))

(assert (=> b!4704918 d!1497181))

(declare-fun b_lambda!177515 () Bool)

(assert (= b_lambda!177493 (or start!477556 b_lambda!177515)))

(declare-fun bs!1098435 () Bool)

(declare-fun d!1497183 () Bool)

(assert (= bs!1098435 (and d!1497183 start!477556)))

(assert (=> bs!1098435 (= (dynLambda!21759 lambda!211153 lt!1868626) (noDuplicateKeys!1910 (_2!30312 lt!1868626)))))

(declare-fun m!5625639 () Bool)

(assert (=> bs!1098435 m!5625639))

(assert (=> d!1496877 d!1497183))

(check-sat (not d!1497177) (not b!4704729) (not d!1496877) (not b!4704912) (not b!4704712) (not bm!328950) (not d!1497133) (not bs!1098434) (not d!1496969) (not d!1496893) (not b!4704833) (not d!1497157) (not d!1497087) (not d!1496959) (not b!4704945) (not b!4704523) (not bm!328952) tp_is_empty!30935 (not d!1497013) (not bm!328938) (not b_lambda!177515) (not b!4704847) (not b!4704883) (not d!1497171) (not b!4704682) (not d!1497135) (not b!4704504) (not bm!328917) (not b!4704903) (not d!1496951) (not b!4704500) (not d!1496867) (not d!1496907) (not d!1497131) (not d!1497129) (not b!4704851) (not bm!328941) (not b!4704904) (not d!1497175) (not d!1496935) (not b!4704708) (not b!4704562) (not b!4704705) (not b!4704522) (not d!1497099) (not b!4704845) (not b!4704871) (not b!4704733) (not bm!328946) (not b!4704846) (not b!4704944) (not bm!328918) (not d!1496963) (not d!1496965) (not d!1497127) (not d!1496903) (not b!4704929) (not b!4704872) (not b!4704835) (not b!4704911) (not b!4704899) (not d!1497093) (not d!1497109) (not d!1497145) (not bm!328949) (not b!4704671) (not b!4704840) (not b!4704737) (not bm!328951) tp_is_empty!30933 (not d!1496881) (not b!4704669) (not d!1496967) (not bm!328948) (not b!4704919) (not b!4704933) (not b!4704921) (not b!4704926) (not d!1496901) (not d!1497173) (not b!4704736) (not d!1496917) (not d!1496949) (not d!1497095) (not b!4704578) (not d!1497149) (not b!4704561) (not b!4704902) (not bm!328943) (not b!4704844) (not b!4704842) (not b!4704710) (not b!4704925) (not d!1497143) (not b!4704700) (not d!1497163) (not d!1497085) (not d!1497159) (not bm!328945) (not d!1497097) (not b!4704880) (not b!4704731) (not b!4704939) (not d!1497151) (not b!4704569) (not d!1497141) (not b!4704848) (not d!1497027) (not b!4704908) (not bm!328944) (not b!4704528) (not b!4704525) (not bm!328939) (not d!1497017) (not b!4704837) (not d!1497169) (not b!4704905) (not d!1496897) (not b!4704677) (not b!4704875) (not b!4704913) (not b_lambda!177513) (not d!1496979) (not d!1497015) (not d!1497153) (not d!1497083) (not bm!328942) (not b!4704924) (not d!1497117) (not b!4704699) (not d!1497139) (not b!4704686) (not b!4704907) (not d!1497155) (not b!4704906) (not d!1496911) (not b!4704675) (not b!4704483) (not b!4704910) (not d!1497089) (not bs!1098433) (not b!4704849) (not bm!328940) (not d!1496871) (not b!4704735) (not b!4704572) (not d!1496971) (not d!1497103) (not d!1496885) (not b!4704612) (not b!4704560) (not d!1496937) (not b!4704676) (not b!4704898) (not b_lambda!177511) (not b!4704672) (not b!4704706) (not b!4704732) (not d!1496913) (not b!4704881) (not d!1496879) (not b!4704841) (not b!4704673) (not d!1497137) (not bm!328947) (not b!4704614) (not b!4704909) (not b!4704900) (not b!4704526) (not b!4704563) (not b!4704834) (not b!4704928) (not d!1496883) (not b!4704879) (not b!4704482) (not d!1496981) (not bs!1098435) (not d!1497115))
(check-sat)
