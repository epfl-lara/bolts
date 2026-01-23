; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!476000 () Bool)

(assert start!476000)

(declare-fun b!4697330 () Bool)

(declare-fun e!2930282 () Bool)

(declare-fun e!2930286 () Bool)

(assert (=> b!4697330 (= e!2930282 e!2930286)))

(declare-fun res!1982548 () Bool)

(assert (=> b!4697330 (=> (not res!1982548) (not e!2930286))))

(declare-datatypes ((K!13860 0))(
  ( (K!13861 (val!19359 Int)) )
))
(declare-datatypes ((V!14106 0))(
  ( (V!14107 (val!19360 Int)) )
))
(declare-datatypes ((tuple2!53930 0))(
  ( (tuple2!53931 (_1!30259 K!13860) (_2!30259 V!14106)) )
))
(declare-datatypes ((List!52617 0))(
  ( (Nil!52493) (Cons!52493 (h!58762 tuple2!53930) (t!359817 List!52617)) )
))
(declare-datatypes ((ListMap!5021 0))(
  ( (ListMap!5022 (toList!5657 List!52617)) )
))
(declare-fun lt!1859033 () ListMap!5021)

(declare-fun key!4653 () K!13860)

(declare-fun contains!15746 (ListMap!5021 K!13860) Bool)

(assert (=> b!4697330 (= res!1982548 (contains!15746 lt!1859033 key!4653))))

(declare-datatypes ((tuple2!53932 0))(
  ( (tuple2!53933 (_1!30260 (_ BitVec 64)) (_2!30260 List!52617)) )
))
(declare-datatypes ((List!52618 0))(
  ( (Nil!52494) (Cons!52494 (h!58763 tuple2!53932) (t!359818 List!52618)) )
))
(declare-datatypes ((ListLongMap!4187 0))(
  ( (ListLongMap!4188 (toList!5658 List!52618)) )
))
(declare-fun lm!2023 () ListLongMap!4187)

(declare-fun extractMap!1910 (List!52618) ListMap!5021)

(assert (=> b!4697330 (= lt!1859033 (extractMap!1910 (toList!5658 lm!2023)))))

(declare-fun e!2930287 () Bool)

(declare-fun tp!1346425 () Bool)

(declare-fun b!4697331 () Bool)

(declare-fun tp_is_empty!30829 () Bool)

(declare-fun tp_is_empty!30831 () Bool)

(assert (=> b!4697331 (= e!2930287 (and tp_is_empty!30829 tp_is_empty!30831 tp!1346425))))

(declare-fun b!4697332 () Bool)

(declare-fun res!1982550 () Bool)

(declare-fun e!2930285 () Bool)

(assert (=> b!4697332 (=> res!1982550 e!2930285)))

(declare-fun lt!1859041 () tuple2!53930)

(declare-fun lt!1859030 () ListMap!5021)

(declare-fun lt!1859036 () ListMap!5021)

(declare-fun eq!1043 (ListMap!5021 ListMap!5021) Bool)

(declare-fun +!2168 (ListMap!5021 tuple2!53930) ListMap!5021)

(assert (=> b!4697332 (= res!1982550 (not (eq!1043 lt!1859036 (+!2168 lt!1859030 lt!1859041))))))

(declare-fun b!4697333 () Bool)

(declare-fun res!1982547 () Bool)

(declare-fun e!2930279 () Bool)

(assert (=> b!4697333 (=> res!1982547 e!2930279)))

(declare-fun lt!1859035 () ListMap!5021)

(declare-fun lt!1859043 () ListMap!5021)

(assert (=> b!4697333 (= res!1982547 (not (eq!1043 lt!1859035 lt!1859043)))))

(declare-fun b!4697334 () Bool)

(declare-fun newBucket!218 () List!52617)

(assert (=> b!4697334 (= e!2930279 (not (= newBucket!218 Nil!52493)))))

(declare-fun b!4697335 () Bool)

(declare-fun e!2930277 () Bool)

(assert (=> b!4697335 (= e!2930277 e!2930285)))

(declare-fun res!1982549 () Bool)

(assert (=> b!4697335 (=> res!1982549 e!2930285)))

(declare-fun oldBucket!34 () List!52617)

(assert (=> b!4697335 (= res!1982549 (not (eq!1043 lt!1859036 (+!2168 lt!1859030 (h!58762 oldBucket!34)))))))

(declare-fun lt!1859042 () List!52617)

(declare-fun hash!405 () (_ BitVec 64))

(assert (=> b!4697335 (= lt!1859030 (extractMap!1910 (Cons!52494 (tuple2!53933 hash!405 lt!1859042) (t!359818 (toList!5658 lm!2023)))))))

(declare-fun lt!1859048 () tuple2!53932)

(assert (=> b!4697335 (= lt!1859036 (extractMap!1910 (Cons!52494 lt!1859048 (t!359818 (toList!5658 lm!2023)))))))

(declare-fun lt!1859022 () List!52617)

(declare-fun lt!1859024 () ListMap!5021)

(declare-fun addToMapMapFromBucket!1316 (List!52617 ListMap!5021) ListMap!5021)

(assert (=> b!4697335 (eq!1043 (addToMapMapFromBucket!1316 (Cons!52493 lt!1859041 lt!1859022) lt!1859024) (+!2168 (addToMapMapFromBucket!1316 lt!1859022 lt!1859024) lt!1859041))))

(declare-datatypes ((Unit!125525 0))(
  ( (Unit!125526) )
))
(declare-fun lt!1859047 () Unit!125525)

(declare-fun lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!292 (tuple2!53930 List!52617 ListMap!5021) Unit!125525)

(assert (=> b!4697335 (= lt!1859047 (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!292 lt!1859041 lt!1859022 lt!1859024))))

(declare-fun head!10031 (List!52617) tuple2!53930)

(assert (=> b!4697335 (= lt!1859041 (head!10031 newBucket!218))))

(declare-fun lt!1859020 () tuple2!53930)

(assert (=> b!4697335 (eq!1043 (addToMapMapFromBucket!1316 (Cons!52493 lt!1859020 lt!1859042) lt!1859024) (+!2168 (addToMapMapFromBucket!1316 lt!1859042 lt!1859024) lt!1859020))))

(declare-fun lt!1859032 () Unit!125525)

(assert (=> b!4697335 (= lt!1859032 (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!292 lt!1859020 lt!1859042 lt!1859024))))

(assert (=> b!4697335 (= lt!1859020 (head!10031 oldBucket!34))))

(declare-fun lt!1859029 () ListMap!5021)

(assert (=> b!4697335 (contains!15746 lt!1859029 key!4653)))

(declare-fun lt!1859023 () List!52618)

(assert (=> b!4697335 (= lt!1859029 (extractMap!1910 lt!1859023))))

(declare-datatypes ((Hashable!6253 0))(
  ( (HashableExt!6252 (__x!31956 Int)) )
))
(declare-fun hashF!1323 () Hashable!6253)

(declare-fun lt!1859028 () ListLongMap!4187)

(declare-fun lt!1859038 () Unit!125525)

(declare-fun lemmaListContainsThenExtractedMapContains!476 (ListLongMap!4187 K!13860 Hashable!6253) Unit!125525)

(assert (=> b!4697335 (= lt!1859038 (lemmaListContainsThenExtractedMapContains!476 lt!1859028 key!4653 hashF!1323))))

(assert (=> b!4697335 (= lt!1859028 (ListLongMap!4188 lt!1859023))))

(declare-fun lt!1859025 () tuple2!53932)

(assert (=> b!4697335 (= lt!1859023 (Cons!52494 lt!1859025 (t!359818 (toList!5658 lm!2023))))))

(assert (=> b!4697335 (= lt!1859025 (tuple2!53933 hash!405 (t!359817 oldBucket!34)))))

(declare-fun b!4697336 () Bool)

(declare-fun e!2930278 () Bool)

(declare-fun e!2930288 () Bool)

(assert (=> b!4697336 (= e!2930278 e!2930288)))

(declare-fun res!1982538 () Bool)

(assert (=> b!4697336 (=> res!1982538 e!2930288)))

(declare-fun containsKey!3131 (List!52617 K!13860) Bool)

(assert (=> b!4697336 (= res!1982538 (not (containsKey!3131 (t!359817 oldBucket!34) key!4653)))))

(assert (=> b!4697336 (containsKey!3131 oldBucket!34 key!4653)))

(declare-fun lt!1859027 () Unit!125525)

(declare-fun lemmaGetPairDefinedThenContainsKey!236 (List!52617 K!13860 Hashable!6253) Unit!125525)

(assert (=> b!4697336 (= lt!1859027 (lemmaGetPairDefinedThenContainsKey!236 oldBucket!34 key!4653 hashF!1323))))

(declare-fun lt!1859046 () List!52617)

(declare-datatypes ((Option!12155 0))(
  ( (None!12154) (Some!12154 (v!46617 tuple2!53930)) )
))
(declare-fun isDefined!9410 (Option!12155) Bool)

(declare-fun getPair!488 (List!52617 K!13860) Option!12155)

(assert (=> b!4697336 (isDefined!9410 (getPair!488 lt!1859046 key!4653))))

(declare-fun lt!1859031 () tuple2!53932)

(declare-fun lambda!209205 () Int)

(declare-fun lt!1859034 () Unit!125525)

(declare-fun forallContained!3482 (List!52618 Int tuple2!53932) Unit!125525)

(assert (=> b!4697336 (= lt!1859034 (forallContained!3482 (toList!5658 lm!2023) lambda!209205 lt!1859031))))

(declare-fun contains!15747 (List!52618 tuple2!53932) Bool)

(assert (=> b!4697336 (contains!15747 (toList!5658 lm!2023) lt!1859031)))

(declare-fun lt!1859040 () (_ BitVec 64))

(assert (=> b!4697336 (= lt!1859031 (tuple2!53933 lt!1859040 lt!1859046))))

(declare-fun lt!1859039 () Unit!125525)

(declare-fun lemmaGetValueImpliesTupleContained!293 (ListLongMap!4187 (_ BitVec 64) List!52617) Unit!125525)

(assert (=> b!4697336 (= lt!1859039 (lemmaGetValueImpliesTupleContained!293 lm!2023 lt!1859040 lt!1859046))))

(declare-fun apply!12367 (ListLongMap!4187 (_ BitVec 64)) List!52617)

(assert (=> b!4697336 (= lt!1859046 (apply!12367 lm!2023 lt!1859040))))

(declare-fun contains!15748 (ListLongMap!4187 (_ BitVec 64)) Bool)

(assert (=> b!4697336 (contains!15748 lm!2023 lt!1859040)))

(declare-fun lt!1859021 () Unit!125525)

(declare-fun lemmaInGenMapThenLongMapContainsHash!694 (ListLongMap!4187 K!13860 Hashable!6253) Unit!125525)

(assert (=> b!4697336 (= lt!1859021 (lemmaInGenMapThenLongMapContainsHash!694 lm!2023 key!4653 hashF!1323))))

(declare-fun lt!1859049 () Unit!125525)

(declare-fun lemmaInGenMapThenGetPairDefined!284 (ListLongMap!4187 K!13860 Hashable!6253) Unit!125525)

(assert (=> b!4697336 (= lt!1859049 (lemmaInGenMapThenGetPairDefined!284 lm!2023 key!4653 hashF!1323))))

(declare-fun b!4697337 () Bool)

(declare-fun res!1982539 () Bool)

(assert (=> b!4697337 (=> res!1982539 e!2930277)))

(declare-fun removePairForKey!1479 (List!52617 K!13860) List!52617)

(assert (=> b!4697337 (= res!1982539 (not (= (removePairForKey!1479 (t!359817 oldBucket!34) key!4653) lt!1859022)))))

(declare-fun b!4697338 () Bool)

(declare-fun res!1982556 () Bool)

(assert (=> b!4697338 (=> res!1982556 e!2930285)))

(assert (=> b!4697338 (= res!1982556 (not (= (h!58762 oldBucket!34) lt!1859041)))))

(declare-fun res!1982540 () Bool)

(assert (=> start!476000 (=> (not res!1982540) (not e!2930282))))

(declare-fun forall!11375 (List!52618 Int) Bool)

(assert (=> start!476000 (= res!1982540 (forall!11375 (toList!5658 lm!2023) lambda!209205))))

(assert (=> start!476000 e!2930282))

(declare-fun e!2930284 () Bool)

(declare-fun inv!67734 (ListLongMap!4187) Bool)

(assert (=> start!476000 (and (inv!67734 lm!2023) e!2930284)))

(assert (=> start!476000 tp_is_empty!30829))

(assert (=> start!476000 e!2930287))

(assert (=> start!476000 true))

(declare-fun e!2930283 () Bool)

(assert (=> start!476000 e!2930283))

(declare-fun b!4697329 () Bool)

(declare-fun tp!1346426 () Bool)

(assert (=> b!4697329 (= e!2930284 tp!1346426)))

(declare-fun b!4697339 () Bool)

(declare-fun tp!1346427 () Bool)

(assert (=> b!4697339 (= e!2930283 (and tp_is_empty!30829 tp_is_empty!30831 tp!1346427))))

(declare-fun b!4697340 () Bool)

(declare-fun e!2930276 () Bool)

(assert (=> b!4697340 (= e!2930276 e!2930279)))

(declare-fun res!1982553 () Bool)

(assert (=> b!4697340 (=> res!1982553 e!2930279)))

(assert (=> b!4697340 (= res!1982553 (not (= lt!1859035 lt!1859043)))))

(declare-fun lt!1859051 () ListMap!5021)

(assert (=> b!4697340 (= lt!1859043 (+!2168 lt!1859051 (h!58762 oldBucket!34)))))

(declare-fun lt!1859052 () ListMap!5021)

(declare-fun -!688 (ListMap!5021 K!13860) ListMap!5021)

(assert (=> b!4697340 (= lt!1859035 (-!688 lt!1859052 key!4653))))

(assert (=> b!4697340 (= lt!1859052 (+!2168 lt!1859029 (h!58762 oldBucket!34)))))

(assert (=> b!4697340 (= (-!688 (+!2168 lt!1859029 (h!58762 oldBucket!34)) key!4653) (+!2168 lt!1859051 (h!58762 oldBucket!34)))))

(declare-fun lt!1859050 () Unit!125525)

(declare-fun addRemoveCommutativeForDiffKeys!89 (ListMap!5021 K!13860 V!14106 K!13860) Unit!125525)

(assert (=> b!4697340 (= lt!1859050 (addRemoveCommutativeForDiffKeys!89 lt!1859029 (_1!30259 (h!58762 oldBucket!34)) (_2!30259 (h!58762 oldBucket!34)) key!4653))))

(declare-fun b!4697341 () Bool)

(declare-fun res!1982545 () Bool)

(declare-fun e!2930281 () Bool)

(assert (=> b!4697341 (=> (not res!1982545) (not e!2930281))))

(declare-fun allKeysSameHash!1710 (List!52617 (_ BitVec 64) Hashable!6253) Bool)

(assert (=> b!4697341 (= res!1982545 (allKeysSameHash!1710 newBucket!218 hash!405 hashF!1323))))

(declare-fun b!4697342 () Bool)

(declare-fun res!1982551 () Bool)

(assert (=> b!4697342 (=> res!1982551 e!2930279)))

(assert (=> b!4697342 (= res!1982551 (not (eq!1043 lt!1859052 lt!1859036)))))

(declare-fun b!4697343 () Bool)

(declare-fun res!1982537 () Bool)

(assert (=> b!4697343 (=> (not res!1982537) (not e!2930282))))

(assert (=> b!4697343 (= res!1982537 (allKeysSameHash!1710 oldBucket!34 hash!405 hashF!1323))))

(declare-fun b!4697344 () Bool)

(declare-fun res!1982546 () Bool)

(declare-fun e!2930280 () Bool)

(assert (=> b!4697344 (=> (not res!1982546) (not e!2930280))))

(get-info :version)

(assert (=> b!4697344 (= res!1982546 ((_ is Cons!52494) (toList!5658 lm!2023)))))

(declare-fun b!4697345 () Bool)

(declare-fun res!1982557 () Bool)

(assert (=> b!4697345 (=> (not res!1982557) (not e!2930281))))

(declare-fun allKeysSameHashInMap!1798 (ListLongMap!4187 Hashable!6253) Bool)

(assert (=> b!4697345 (= res!1982557 (allKeysSameHashInMap!1798 lm!2023 hashF!1323))))

(declare-fun b!4697346 () Bool)

(assert (=> b!4697346 (= e!2930288 e!2930277)))

(declare-fun res!1982544 () Bool)

(assert (=> b!4697346 (=> res!1982544 e!2930277)))

(assert (=> b!4697346 (= res!1982544 (not (= (removePairForKey!1479 lt!1859042 key!4653) lt!1859022)))))

(declare-fun tail!8677 (List!52617) List!52617)

(assert (=> b!4697346 (= lt!1859022 (tail!8677 newBucket!218))))

(assert (=> b!4697346 (= lt!1859042 (tail!8677 oldBucket!34))))

(declare-fun b!4697347 () Bool)

(assert (=> b!4697347 (= e!2930285 e!2930276)))

(declare-fun res!1982536 () Bool)

(assert (=> b!4697347 (=> res!1982536 e!2930276)))

(declare-fun lt!1859037 () ListMap!5021)

(assert (=> b!4697347 (= res!1982536 (not (eq!1043 lt!1859037 lt!1859051)))))

(assert (=> b!4697347 (= lt!1859051 (-!688 lt!1859029 key!4653))))

(declare-fun lt!1859044 () tuple2!53932)

(assert (=> b!4697347 (= lt!1859037 (extractMap!1910 (Cons!52494 lt!1859044 (t!359818 (toList!5658 lm!2023)))))))

(declare-fun lt!1859045 () List!52618)

(assert (=> b!4697347 (eq!1043 (extractMap!1910 (Cons!52494 lt!1859044 lt!1859045)) (-!688 (extractMap!1910 (Cons!52494 lt!1859025 lt!1859045)) key!4653))))

(declare-fun tail!8678 (List!52618) List!52618)

(assert (=> b!4697347 (= lt!1859045 (tail!8678 lt!1859023))))

(assert (=> b!4697347 (= lt!1859044 (tuple2!53933 hash!405 lt!1859022))))

(declare-fun lt!1859026 () Unit!125525)

(declare-fun lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMapOneHashIsHead!58 (ListLongMap!4187 (_ BitVec 64) List!52617 List!52617 K!13860 Hashable!6253) Unit!125525)

(assert (=> b!4697347 (= lt!1859026 (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMapOneHashIsHead!58 lt!1859028 hash!405 (t!359817 oldBucket!34) lt!1859022 key!4653 hashF!1323))))

(declare-fun b!4697348 () Bool)

(assert (=> b!4697348 (= e!2930286 e!2930281)))

(declare-fun res!1982552 () Bool)

(assert (=> b!4697348 (=> (not res!1982552) (not e!2930281))))

(assert (=> b!4697348 (= res!1982552 (= lt!1859040 hash!405))))

(declare-fun hash!4137 (Hashable!6253 K!13860) (_ BitVec 64))

(assert (=> b!4697348 (= lt!1859040 (hash!4137 hashF!1323 key!4653))))

(declare-fun b!4697349 () Bool)

(declare-fun res!1982542 () Bool)

(assert (=> b!4697349 (=> (not res!1982542) (not e!2930282))))

(assert (=> b!4697349 (= res!1982542 (= (removePairForKey!1479 oldBucket!34 key!4653) newBucket!218))))

(declare-fun b!4697350 () Bool)

(assert (=> b!4697350 (= e!2930280 (not e!2930278))))

(declare-fun res!1982541 () Bool)

(assert (=> b!4697350 (=> res!1982541 e!2930278)))

(assert (=> b!4697350 (= res!1982541 (or (and ((_ is Cons!52493) oldBucket!34) (= (_1!30259 (h!58762 oldBucket!34)) key!4653)) (not ((_ is Cons!52493) oldBucket!34)) (= (_1!30259 (h!58762 oldBucket!34)) key!4653)))))

(assert (=> b!4697350 (= lt!1859033 (addToMapMapFromBucket!1316 (_2!30260 (h!58763 (toList!5658 lm!2023))) lt!1859024))))

(assert (=> b!4697350 (= lt!1859024 (extractMap!1910 (t!359818 (toList!5658 lm!2023))))))

(declare-fun tail!8679 (ListLongMap!4187) ListLongMap!4187)

(assert (=> b!4697350 (= (t!359818 (toList!5658 lm!2023)) (toList!5658 (tail!8679 lm!2023)))))

(declare-fun b!4697351 () Bool)

(declare-fun res!1982555 () Bool)

(assert (=> b!4697351 (=> (not res!1982555) (not e!2930282))))

(declare-fun noDuplicateKeys!1884 (List!52617) Bool)

(assert (=> b!4697351 (= res!1982555 (noDuplicateKeys!1884 oldBucket!34))))

(declare-fun b!4697352 () Bool)

(assert (=> b!4697352 (= e!2930281 e!2930280)))

(declare-fun res!1982554 () Bool)

(assert (=> b!4697352 (=> (not res!1982554) (not e!2930280))))

(declare-fun head!10032 (List!52618) tuple2!53932)

(assert (=> b!4697352 (= res!1982554 (= (head!10032 (toList!5658 lm!2023)) lt!1859048))))

(assert (=> b!4697352 (= lt!1859048 (tuple2!53933 hash!405 oldBucket!34))))

(declare-fun b!4697353 () Bool)

(declare-fun res!1982543 () Bool)

(assert (=> b!4697353 (=> (not res!1982543) (not e!2930282))))

(assert (=> b!4697353 (= res!1982543 (noDuplicateKeys!1884 newBucket!218))))

(assert (= (and start!476000 res!1982540) b!4697351))

(assert (= (and b!4697351 res!1982555) b!4697353))

(assert (= (and b!4697353 res!1982543) b!4697349))

(assert (= (and b!4697349 res!1982542) b!4697343))

(assert (= (and b!4697343 res!1982537) b!4697330))

(assert (= (and b!4697330 res!1982548) b!4697348))

(assert (= (and b!4697348 res!1982552) b!4697341))

(assert (= (and b!4697341 res!1982545) b!4697345))

(assert (= (and b!4697345 res!1982557) b!4697352))

(assert (= (and b!4697352 res!1982554) b!4697344))

(assert (= (and b!4697344 res!1982546) b!4697350))

(assert (= (and b!4697350 (not res!1982541)) b!4697336))

(assert (= (and b!4697336 (not res!1982538)) b!4697346))

(assert (= (and b!4697346 (not res!1982544)) b!4697337))

(assert (= (and b!4697337 (not res!1982539)) b!4697335))

(assert (= (and b!4697335 (not res!1982549)) b!4697338))

(assert (= (and b!4697338 (not res!1982556)) b!4697332))

(assert (= (and b!4697332 (not res!1982550)) b!4697347))

(assert (= (and b!4697347 (not res!1982536)) b!4697340))

(assert (= (and b!4697340 (not res!1982553)) b!4697333))

(assert (= (and b!4697333 (not res!1982547)) b!4697342))

(assert (= (and b!4697342 (not res!1982551)) b!4697334))

(assert (= start!476000 b!4697329))

(assert (= (and start!476000 ((_ is Cons!52493) oldBucket!34)) b!4697331))

(assert (= (and start!476000 ((_ is Cons!52493) newBucket!218)) b!4697339))

(declare-fun m!5607539 () Bool)

(assert (=> b!4697341 m!5607539))

(declare-fun m!5607541 () Bool)

(assert (=> b!4697352 m!5607541))

(declare-fun m!5607543 () Bool)

(assert (=> b!4697351 m!5607543))

(declare-fun m!5607545 () Bool)

(assert (=> b!4697353 m!5607545))

(declare-fun m!5607547 () Bool)

(assert (=> b!4697347 m!5607547))

(declare-fun m!5607549 () Bool)

(assert (=> b!4697347 m!5607549))

(declare-fun m!5607551 () Bool)

(assert (=> b!4697347 m!5607551))

(declare-fun m!5607553 () Bool)

(assert (=> b!4697347 m!5607553))

(declare-fun m!5607555 () Bool)

(assert (=> b!4697347 m!5607555))

(assert (=> b!4697347 m!5607553))

(declare-fun m!5607557 () Bool)

(assert (=> b!4697347 m!5607557))

(declare-fun m!5607559 () Bool)

(assert (=> b!4697347 m!5607559))

(assert (=> b!4697347 m!5607555))

(assert (=> b!4697347 m!5607557))

(declare-fun m!5607561 () Bool)

(assert (=> b!4697347 m!5607561))

(declare-fun m!5607563 () Bool)

(assert (=> b!4697347 m!5607563))

(declare-fun m!5607565 () Bool)

(assert (=> b!4697349 m!5607565))

(declare-fun m!5607567 () Bool)

(assert (=> b!4697337 m!5607567))

(declare-fun m!5607569 () Bool)

(assert (=> b!4697335 m!5607569))

(declare-fun m!5607571 () Bool)

(assert (=> b!4697335 m!5607571))

(declare-fun m!5607573 () Bool)

(assert (=> b!4697335 m!5607573))

(declare-fun m!5607575 () Bool)

(assert (=> b!4697335 m!5607575))

(declare-fun m!5607577 () Bool)

(assert (=> b!4697335 m!5607577))

(assert (=> b!4697335 m!5607571))

(assert (=> b!4697335 m!5607569))

(declare-fun m!5607579 () Bool)

(assert (=> b!4697335 m!5607579))

(assert (=> b!4697335 m!5607579))

(declare-fun m!5607581 () Bool)

(assert (=> b!4697335 m!5607581))

(declare-fun m!5607583 () Bool)

(assert (=> b!4697335 m!5607583))

(declare-fun m!5607585 () Bool)

(assert (=> b!4697335 m!5607585))

(declare-fun m!5607587 () Bool)

(assert (=> b!4697335 m!5607587))

(declare-fun m!5607589 () Bool)

(assert (=> b!4697335 m!5607589))

(declare-fun m!5607591 () Bool)

(assert (=> b!4697335 m!5607591))

(assert (=> b!4697335 m!5607577))

(declare-fun m!5607593 () Bool)

(assert (=> b!4697335 m!5607593))

(declare-fun m!5607595 () Bool)

(assert (=> b!4697335 m!5607595))

(declare-fun m!5607597 () Bool)

(assert (=> b!4697335 m!5607597))

(assert (=> b!4697335 m!5607587))

(assert (=> b!4697335 m!5607581))

(declare-fun m!5607599 () Bool)

(assert (=> b!4697335 m!5607599))

(declare-fun m!5607601 () Bool)

(assert (=> b!4697335 m!5607601))

(assert (=> b!4697335 m!5607595))

(declare-fun m!5607603 () Bool)

(assert (=> b!4697335 m!5607603))

(declare-fun m!5607605 () Bool)

(assert (=> b!4697335 m!5607605))

(declare-fun m!5607607 () Bool)

(assert (=> b!4697348 m!5607607))

(declare-fun m!5607609 () Bool)

(assert (=> b!4697342 m!5607609))

(declare-fun m!5607611 () Bool)

(assert (=> b!4697345 m!5607611))

(declare-fun m!5607613 () Bool)

(assert (=> b!4697343 m!5607613))

(declare-fun m!5607615 () Bool)

(assert (=> b!4697350 m!5607615))

(declare-fun m!5607617 () Bool)

(assert (=> b!4697350 m!5607617))

(declare-fun m!5607619 () Bool)

(assert (=> b!4697350 m!5607619))

(declare-fun m!5607621 () Bool)

(assert (=> b!4697340 m!5607621))

(declare-fun m!5607623 () Bool)

(assert (=> b!4697340 m!5607623))

(declare-fun m!5607625 () Bool)

(assert (=> b!4697340 m!5607625))

(declare-fun m!5607627 () Bool)

(assert (=> b!4697340 m!5607627))

(declare-fun m!5607629 () Bool)

(assert (=> b!4697340 m!5607629))

(assert (=> b!4697340 m!5607625))

(declare-fun m!5607631 () Bool)

(assert (=> start!476000 m!5607631))

(declare-fun m!5607633 () Bool)

(assert (=> start!476000 m!5607633))

(declare-fun m!5607635 () Bool)

(assert (=> b!4697333 m!5607635))

(declare-fun m!5607637 () Bool)

(assert (=> b!4697336 m!5607637))

(declare-fun m!5607639 () Bool)

(assert (=> b!4697336 m!5607639))

(declare-fun m!5607641 () Bool)

(assert (=> b!4697336 m!5607641))

(declare-fun m!5607643 () Bool)

(assert (=> b!4697336 m!5607643))

(declare-fun m!5607645 () Bool)

(assert (=> b!4697336 m!5607645))

(assert (=> b!4697336 m!5607643))

(declare-fun m!5607647 () Bool)

(assert (=> b!4697336 m!5607647))

(declare-fun m!5607649 () Bool)

(assert (=> b!4697336 m!5607649))

(declare-fun m!5607651 () Bool)

(assert (=> b!4697336 m!5607651))

(declare-fun m!5607653 () Bool)

(assert (=> b!4697336 m!5607653))

(declare-fun m!5607655 () Bool)

(assert (=> b!4697336 m!5607655))

(declare-fun m!5607657 () Bool)

(assert (=> b!4697336 m!5607657))

(declare-fun m!5607659 () Bool)

(assert (=> b!4697336 m!5607659))

(declare-fun m!5607661 () Bool)

(assert (=> b!4697332 m!5607661))

(assert (=> b!4697332 m!5607661))

(declare-fun m!5607663 () Bool)

(assert (=> b!4697332 m!5607663))

(declare-fun m!5607665 () Bool)

(assert (=> b!4697346 m!5607665))

(declare-fun m!5607667 () Bool)

(assert (=> b!4697346 m!5607667))

(declare-fun m!5607669 () Bool)

(assert (=> b!4697346 m!5607669))

(declare-fun m!5607671 () Bool)

(assert (=> b!4697330 m!5607671))

(declare-fun m!5607673 () Bool)

(assert (=> b!4697330 m!5607673))

(check-sat (not b!4697329) (not b!4697345) (not b!4697343) (not b!4697349) (not b!4697332) (not b!4697351) (not start!476000) (not b!4697336) (not b!4697337) (not b!4697342) (not b!4697353) (not b!4697350) (not b!4697339) (not b!4697330) tp_is_empty!30829 tp_is_empty!30831 (not b!4697348) (not b!4697347) (not b!4697341) (not b!4697333) (not b!4697352) (not b!4697340) (not b!4697335) (not b!4697346) (not b!4697331))
(check-sat)
(get-model)

(declare-fun bs!1092240 () Bool)

(declare-fun d!1493520 () Bool)

(assert (= bs!1092240 (and d!1493520 start!476000)))

(declare-fun lambda!209208 () Int)

(assert (=> bs!1092240 (not (= lambda!209208 lambda!209205))))

(assert (=> d!1493520 true))

(assert (=> d!1493520 (= (allKeysSameHashInMap!1798 lm!2023 hashF!1323) (forall!11375 (toList!5658 lm!2023) lambda!209208))))

(declare-fun bs!1092241 () Bool)

(assert (= bs!1092241 d!1493520))

(declare-fun m!5607675 () Bool)

(assert (=> bs!1092241 m!5607675))

(assert (=> b!4697345 d!1493520))

(declare-fun b!4697364 () Bool)

(declare-fun e!2930294 () List!52617)

(assert (=> b!4697364 (= e!2930294 (t!359817 lt!1859042))))

(declare-fun d!1493522 () Bool)

(declare-fun lt!1859055 () List!52617)

(assert (=> d!1493522 (not (containsKey!3131 lt!1859055 key!4653))))

(assert (=> d!1493522 (= lt!1859055 e!2930294)))

(declare-fun c!803007 () Bool)

(assert (=> d!1493522 (= c!803007 (and ((_ is Cons!52493) lt!1859042) (= (_1!30259 (h!58762 lt!1859042)) key!4653)))))

(assert (=> d!1493522 (noDuplicateKeys!1884 lt!1859042)))

(assert (=> d!1493522 (= (removePairForKey!1479 lt!1859042 key!4653) lt!1859055)))

(declare-fun b!4697365 () Bool)

(declare-fun e!2930293 () List!52617)

(assert (=> b!4697365 (= e!2930294 e!2930293)))

(declare-fun c!803006 () Bool)

(assert (=> b!4697365 (= c!803006 ((_ is Cons!52493) lt!1859042))))

(declare-fun b!4697367 () Bool)

(assert (=> b!4697367 (= e!2930293 Nil!52493)))

(declare-fun b!4697366 () Bool)

(assert (=> b!4697366 (= e!2930293 (Cons!52493 (h!58762 lt!1859042) (removePairForKey!1479 (t!359817 lt!1859042) key!4653)))))

(assert (= (and d!1493522 c!803007) b!4697364))

(assert (= (and d!1493522 (not c!803007)) b!4697365))

(assert (= (and b!4697365 c!803006) b!4697366))

(assert (= (and b!4697365 (not c!803006)) b!4697367))

(declare-fun m!5607677 () Bool)

(assert (=> d!1493522 m!5607677))

(declare-fun m!5607679 () Bool)

(assert (=> d!1493522 m!5607679))

(declare-fun m!5607681 () Bool)

(assert (=> b!4697366 m!5607681))

(assert (=> b!4697346 d!1493522))

(declare-fun d!1493524 () Bool)

(assert (=> d!1493524 (= (tail!8677 newBucket!218) (t!359817 newBucket!218))))

(assert (=> b!4697346 d!1493524))

(declare-fun d!1493526 () Bool)

(assert (=> d!1493526 (= (tail!8677 oldBucket!34) (t!359817 oldBucket!34))))

(assert (=> b!4697346 d!1493526))

(declare-fun b!4697398 () Bool)

(assert (=> b!4697398 true))

(declare-fun bs!1092253 () Bool)

(declare-fun b!4697395 () Bool)

(assert (= bs!1092253 (and b!4697395 b!4697398)))

(declare-fun lambda!209248 () Int)

(declare-fun lambda!209247 () Int)

(assert (=> bs!1092253 (= lambda!209248 lambda!209247)))

(assert (=> b!4697395 true))

(declare-fun lambda!209250 () Int)

(declare-fun lt!1859120 () ListMap!5021)

(assert (=> bs!1092253 (= (= lt!1859120 lt!1859024) (= lambda!209250 lambda!209247))))

(assert (=> b!4697395 (= (= lt!1859120 lt!1859024) (= lambda!209250 lambda!209248))))

(assert (=> b!4697395 true))

(declare-fun bs!1092258 () Bool)

(declare-fun d!1493528 () Bool)

(assert (= bs!1092258 (and d!1493528 b!4697398)))

(declare-fun lt!1859117 () ListMap!5021)

(declare-fun lambda!209251 () Int)

(assert (=> bs!1092258 (= (= lt!1859117 lt!1859024) (= lambda!209251 lambda!209247))))

(declare-fun bs!1092259 () Bool)

(assert (= bs!1092259 (and d!1493528 b!4697395)))

(assert (=> bs!1092259 (= (= lt!1859117 lt!1859024) (= lambda!209251 lambda!209248))))

(assert (=> bs!1092259 (= (= lt!1859117 lt!1859120) (= lambda!209251 lambda!209250))))

(assert (=> d!1493528 true))

(declare-fun bm!328359 () Bool)

(declare-fun call!328364 () Bool)

(declare-fun c!803014 () Bool)

(declare-fun forall!11376 (List!52617 Int) Bool)

(assert (=> bm!328359 (= call!328364 (forall!11376 (toList!5657 lt!1859024) (ite c!803014 lambda!209247 lambda!209250)))))

(declare-fun call!328365 () Bool)

(declare-fun bm!328360 () Bool)

(assert (=> bm!328360 (= call!328365 (forall!11376 (ite c!803014 (toList!5657 lt!1859024) (t!359817 (Cons!52493 lt!1859020 lt!1859042))) (ite c!803014 lambda!209247 lambda!209250)))))

(declare-fun b!4697394 () Bool)

(declare-fun res!1982570 () Bool)

(declare-fun e!2930310 () Bool)

(assert (=> b!4697394 (=> (not res!1982570) (not e!2930310))))

(assert (=> b!4697394 (= res!1982570 (forall!11376 (toList!5657 lt!1859024) lambda!209251))))

(assert (=> d!1493528 e!2930310))

(declare-fun res!1982569 () Bool)

(assert (=> d!1493528 (=> (not res!1982569) (not e!2930310))))

(assert (=> d!1493528 (= res!1982569 (forall!11376 (Cons!52493 lt!1859020 lt!1859042) lambda!209251))))

(declare-fun e!2930309 () ListMap!5021)

(assert (=> d!1493528 (= lt!1859117 e!2930309)))

(assert (=> d!1493528 (= c!803014 ((_ is Nil!52493) (Cons!52493 lt!1859020 lt!1859042)))))

(assert (=> d!1493528 (noDuplicateKeys!1884 (Cons!52493 lt!1859020 lt!1859042))))

(assert (=> d!1493528 (= (addToMapMapFromBucket!1316 (Cons!52493 lt!1859020 lt!1859042) lt!1859024) lt!1859117)))

(assert (=> b!4697395 (= e!2930309 lt!1859120)))

(declare-fun lt!1859109 () ListMap!5021)

(assert (=> b!4697395 (= lt!1859109 (+!2168 lt!1859024 (h!58762 (Cons!52493 lt!1859020 lt!1859042))))))

(assert (=> b!4697395 (= lt!1859120 (addToMapMapFromBucket!1316 (t!359817 (Cons!52493 lt!1859020 lt!1859042)) (+!2168 lt!1859024 (h!58762 (Cons!52493 lt!1859020 lt!1859042)))))))

(declare-fun lt!1859122 () Unit!125525)

(declare-fun call!328366 () Unit!125525)

(assert (=> b!4697395 (= lt!1859122 call!328366)))

(assert (=> b!4697395 (forall!11376 (toList!5657 lt!1859024) lambda!209248)))

(declare-fun lt!1859116 () Unit!125525)

(assert (=> b!4697395 (= lt!1859116 lt!1859122)))

(assert (=> b!4697395 (forall!11376 (toList!5657 lt!1859109) lambda!209250)))

(declare-fun lt!1859114 () Unit!125525)

(declare-fun Unit!125527 () Unit!125525)

(assert (=> b!4697395 (= lt!1859114 Unit!125527)))

(assert (=> b!4697395 call!328365))

(declare-fun lt!1859123 () Unit!125525)

(declare-fun Unit!125528 () Unit!125525)

(assert (=> b!4697395 (= lt!1859123 Unit!125528)))

(declare-fun lt!1859129 () Unit!125525)

(declare-fun Unit!125529 () Unit!125525)

(assert (=> b!4697395 (= lt!1859129 Unit!125529)))

(declare-fun lt!1859124 () Unit!125525)

(declare-fun forallContained!3483 (List!52617 Int tuple2!53930) Unit!125525)

(assert (=> b!4697395 (= lt!1859124 (forallContained!3483 (toList!5657 lt!1859109) lambda!209250 (h!58762 (Cons!52493 lt!1859020 lt!1859042))))))

(assert (=> b!4697395 (contains!15746 lt!1859109 (_1!30259 (h!58762 (Cons!52493 lt!1859020 lt!1859042))))))

(declare-fun lt!1859119 () Unit!125525)

(declare-fun Unit!125530 () Unit!125525)

(assert (=> b!4697395 (= lt!1859119 Unit!125530)))

(assert (=> b!4697395 (contains!15746 lt!1859120 (_1!30259 (h!58762 (Cons!52493 lt!1859020 lt!1859042))))))

(declare-fun lt!1859112 () Unit!125525)

(declare-fun Unit!125531 () Unit!125525)

(assert (=> b!4697395 (= lt!1859112 Unit!125531)))

(assert (=> b!4697395 (forall!11376 (Cons!52493 lt!1859020 lt!1859042) lambda!209250)))

(declare-fun lt!1859113 () Unit!125525)

(declare-fun Unit!125532 () Unit!125525)

(assert (=> b!4697395 (= lt!1859113 Unit!125532)))

(assert (=> b!4697395 (forall!11376 (toList!5657 lt!1859109) lambda!209250)))

(declare-fun lt!1859127 () Unit!125525)

(declare-fun Unit!125533 () Unit!125525)

(assert (=> b!4697395 (= lt!1859127 Unit!125533)))

(declare-fun lt!1859126 () Unit!125525)

(declare-fun Unit!125534 () Unit!125525)

(assert (=> b!4697395 (= lt!1859126 Unit!125534)))

(declare-fun lt!1859110 () Unit!125525)

(declare-fun addForallContainsKeyThenBeforeAdding!720 (ListMap!5021 ListMap!5021 K!13860 V!14106) Unit!125525)

(assert (=> b!4697395 (= lt!1859110 (addForallContainsKeyThenBeforeAdding!720 lt!1859024 lt!1859120 (_1!30259 (h!58762 (Cons!52493 lt!1859020 lt!1859042))) (_2!30259 (h!58762 (Cons!52493 lt!1859020 lt!1859042)))))))

(assert (=> b!4697395 (forall!11376 (toList!5657 lt!1859024) lambda!209250)))

(declare-fun lt!1859125 () Unit!125525)

(assert (=> b!4697395 (= lt!1859125 lt!1859110)))

(assert (=> b!4697395 call!328364))

(declare-fun lt!1859111 () Unit!125525)

(declare-fun Unit!125535 () Unit!125525)

(assert (=> b!4697395 (= lt!1859111 Unit!125535)))

(declare-fun res!1982568 () Bool)

(assert (=> b!4697395 (= res!1982568 (forall!11376 (Cons!52493 lt!1859020 lt!1859042) lambda!209250))))

(declare-fun e!2930311 () Bool)

(assert (=> b!4697395 (=> (not res!1982568) (not e!2930311))))

(assert (=> b!4697395 e!2930311))

(declare-fun lt!1859115 () Unit!125525)

(declare-fun Unit!125536 () Unit!125525)

(assert (=> b!4697395 (= lt!1859115 Unit!125536)))

(declare-fun bm!328361 () Bool)

(declare-fun lemmaContainsAllItsOwnKeys!721 (ListMap!5021) Unit!125525)

(assert (=> bm!328361 (= call!328366 (lemmaContainsAllItsOwnKeys!721 lt!1859024))))

(declare-fun b!4697396 () Bool)

(declare-fun invariantList!1433 (List!52617) Bool)

(assert (=> b!4697396 (= e!2930310 (invariantList!1433 (toList!5657 lt!1859117)))))

(declare-fun b!4697397 () Bool)

(assert (=> b!4697397 (= e!2930311 (forall!11376 (toList!5657 lt!1859024) lambda!209250))))

(assert (=> b!4697398 (= e!2930309 lt!1859024)))

(declare-fun lt!1859128 () Unit!125525)

(assert (=> b!4697398 (= lt!1859128 call!328366)))

(assert (=> b!4697398 call!328364))

(declare-fun lt!1859121 () Unit!125525)

(assert (=> b!4697398 (= lt!1859121 lt!1859128)))

(assert (=> b!4697398 call!328365))

(declare-fun lt!1859118 () Unit!125525)

(declare-fun Unit!125537 () Unit!125525)

(assert (=> b!4697398 (= lt!1859118 Unit!125537)))

(assert (= (and d!1493528 c!803014) b!4697398))

(assert (= (and d!1493528 (not c!803014)) b!4697395))

(assert (= (and b!4697395 res!1982568) b!4697397))

(assert (= (or b!4697398 b!4697395) bm!328361))

(assert (= (or b!4697398 b!4697395) bm!328359))

(assert (= (or b!4697398 b!4697395) bm!328360))

(assert (= (and d!1493528 res!1982569) b!4697394))

(assert (= (and b!4697394 res!1982570) b!4697396))

(declare-fun m!5607761 () Bool)

(assert (=> bm!328360 m!5607761))

(declare-fun m!5607763 () Bool)

(assert (=> b!4697397 m!5607763))

(declare-fun m!5607765 () Bool)

(assert (=> b!4697395 m!5607765))

(declare-fun m!5607767 () Bool)

(assert (=> b!4697395 m!5607767))

(declare-fun m!5607769 () Bool)

(assert (=> b!4697395 m!5607769))

(declare-fun m!5607771 () Bool)

(assert (=> b!4697395 m!5607771))

(declare-fun m!5607773 () Bool)

(assert (=> b!4697395 m!5607773))

(declare-fun m!5607775 () Bool)

(assert (=> b!4697395 m!5607775))

(declare-fun m!5607777 () Bool)

(assert (=> b!4697395 m!5607777))

(assert (=> b!4697395 m!5607775))

(declare-fun m!5607779 () Bool)

(assert (=> b!4697395 m!5607779))

(assert (=> b!4697395 m!5607773))

(declare-fun m!5607781 () Bool)

(assert (=> b!4697395 m!5607781))

(assert (=> b!4697395 m!5607763))

(assert (=> b!4697395 m!5607777))

(declare-fun m!5607783 () Bool)

(assert (=> bm!328361 m!5607783))

(declare-fun m!5607785 () Bool)

(assert (=> b!4697396 m!5607785))

(declare-fun m!5607787 () Bool)

(assert (=> b!4697394 m!5607787))

(declare-fun m!5607789 () Bool)

(assert (=> bm!328359 m!5607789))

(declare-fun m!5607791 () Bool)

(assert (=> d!1493528 m!5607791))

(declare-fun m!5607793 () Bool)

(assert (=> d!1493528 m!5607793))

(assert (=> b!4697335 d!1493528))

(declare-fun bs!1092260 () Bool)

(declare-fun b!4697407 () Bool)

(assert (= bs!1092260 (and b!4697407 b!4697398)))

(declare-fun lambda!209252 () Int)

(assert (=> bs!1092260 (= lambda!209252 lambda!209247)))

(declare-fun bs!1092261 () Bool)

(assert (= bs!1092261 (and b!4697407 b!4697395)))

(assert (=> bs!1092261 (= lambda!209252 lambda!209248)))

(assert (=> bs!1092261 (= (= lt!1859024 lt!1859120) (= lambda!209252 lambda!209250))))

(declare-fun bs!1092262 () Bool)

(assert (= bs!1092262 (and b!4697407 d!1493528)))

(assert (=> bs!1092262 (= (= lt!1859024 lt!1859117) (= lambda!209252 lambda!209251))))

(assert (=> b!4697407 true))

(declare-fun bs!1092263 () Bool)

(declare-fun b!4697404 () Bool)

(assert (= bs!1092263 (and b!4697404 b!4697395)))

(declare-fun lambda!209253 () Int)

(assert (=> bs!1092263 (= (= lt!1859024 lt!1859120) (= lambda!209253 lambda!209250))))

(declare-fun bs!1092264 () Bool)

(assert (= bs!1092264 (and b!4697404 b!4697407)))

(assert (=> bs!1092264 (= lambda!209253 lambda!209252)))

(declare-fun bs!1092265 () Bool)

(assert (= bs!1092265 (and b!4697404 d!1493528)))

(assert (=> bs!1092265 (= (= lt!1859024 lt!1859117) (= lambda!209253 lambda!209251))))

(assert (=> bs!1092263 (= lambda!209253 lambda!209248)))

(declare-fun bs!1092266 () Bool)

(assert (= bs!1092266 (and b!4697404 b!4697398)))

(assert (=> bs!1092266 (= lambda!209253 lambda!209247)))

(assert (=> b!4697404 true))

(declare-fun lt!1859142 () ListMap!5021)

(declare-fun lambda!209254 () Int)

(assert (=> bs!1092263 (= (= lt!1859142 lt!1859120) (= lambda!209254 lambda!209250))))

(assert (=> b!4697404 (= (= lt!1859142 lt!1859024) (= lambda!209254 lambda!209253))))

(assert (=> bs!1092264 (= (= lt!1859142 lt!1859024) (= lambda!209254 lambda!209252))))

(assert (=> bs!1092265 (= (= lt!1859142 lt!1859117) (= lambda!209254 lambda!209251))))

(assert (=> bs!1092263 (= (= lt!1859142 lt!1859024) (= lambda!209254 lambda!209248))))

(assert (=> bs!1092266 (= (= lt!1859142 lt!1859024) (= lambda!209254 lambda!209247))))

(assert (=> b!4697404 true))

(declare-fun bs!1092267 () Bool)

(declare-fun d!1493554 () Bool)

(assert (= bs!1092267 (and d!1493554 b!4697395)))

(declare-fun lambda!209255 () Int)

(declare-fun lt!1859139 () ListMap!5021)

(assert (=> bs!1092267 (= (= lt!1859139 lt!1859120) (= lambda!209255 lambda!209250))))

(declare-fun bs!1092268 () Bool)

(assert (= bs!1092268 (and d!1493554 b!4697404)))

(assert (=> bs!1092268 (= (= lt!1859139 lt!1859024) (= lambda!209255 lambda!209253))))

(declare-fun bs!1092269 () Bool)

(assert (= bs!1092269 (and d!1493554 b!4697407)))

(assert (=> bs!1092269 (= (= lt!1859139 lt!1859024) (= lambda!209255 lambda!209252))))

(declare-fun bs!1092270 () Bool)

(assert (= bs!1092270 (and d!1493554 d!1493528)))

(assert (=> bs!1092270 (= (= lt!1859139 lt!1859117) (= lambda!209255 lambda!209251))))

(assert (=> bs!1092268 (= (= lt!1859139 lt!1859142) (= lambda!209255 lambda!209254))))

(assert (=> bs!1092267 (= (= lt!1859139 lt!1859024) (= lambda!209255 lambda!209248))))

(declare-fun bs!1092271 () Bool)

(assert (= bs!1092271 (and d!1493554 b!4697398)))

(assert (=> bs!1092271 (= (= lt!1859139 lt!1859024) (= lambda!209255 lambda!209247))))

(assert (=> d!1493554 true))

(declare-fun bm!328362 () Bool)

(declare-fun c!803016 () Bool)

(declare-fun call!328367 () Bool)

(assert (=> bm!328362 (= call!328367 (forall!11376 (toList!5657 lt!1859024) (ite c!803016 lambda!209252 lambda!209254)))))

(declare-fun bm!328363 () Bool)

(declare-fun call!328368 () Bool)

(assert (=> bm!328363 (= call!328368 (forall!11376 (ite c!803016 (toList!5657 lt!1859024) (t!359817 (Cons!52493 lt!1859041 lt!1859022))) (ite c!803016 lambda!209252 lambda!209254)))))

(declare-fun b!4697403 () Bool)

(declare-fun res!1982573 () Bool)

(declare-fun e!2930314 () Bool)

(assert (=> b!4697403 (=> (not res!1982573) (not e!2930314))))

(assert (=> b!4697403 (= res!1982573 (forall!11376 (toList!5657 lt!1859024) lambda!209255))))

(assert (=> d!1493554 e!2930314))

(declare-fun res!1982572 () Bool)

(assert (=> d!1493554 (=> (not res!1982572) (not e!2930314))))

(assert (=> d!1493554 (= res!1982572 (forall!11376 (Cons!52493 lt!1859041 lt!1859022) lambda!209255))))

(declare-fun e!2930313 () ListMap!5021)

(assert (=> d!1493554 (= lt!1859139 e!2930313)))

(assert (=> d!1493554 (= c!803016 ((_ is Nil!52493) (Cons!52493 lt!1859041 lt!1859022)))))

(assert (=> d!1493554 (noDuplicateKeys!1884 (Cons!52493 lt!1859041 lt!1859022))))

(assert (=> d!1493554 (= (addToMapMapFromBucket!1316 (Cons!52493 lt!1859041 lt!1859022) lt!1859024) lt!1859139)))

(assert (=> b!4697404 (= e!2930313 lt!1859142)))

(declare-fun lt!1859131 () ListMap!5021)

(assert (=> b!4697404 (= lt!1859131 (+!2168 lt!1859024 (h!58762 (Cons!52493 lt!1859041 lt!1859022))))))

(assert (=> b!4697404 (= lt!1859142 (addToMapMapFromBucket!1316 (t!359817 (Cons!52493 lt!1859041 lt!1859022)) (+!2168 lt!1859024 (h!58762 (Cons!52493 lt!1859041 lt!1859022)))))))

(declare-fun lt!1859144 () Unit!125525)

(declare-fun call!328369 () Unit!125525)

(assert (=> b!4697404 (= lt!1859144 call!328369)))

(assert (=> b!4697404 (forall!11376 (toList!5657 lt!1859024) lambda!209253)))

(declare-fun lt!1859138 () Unit!125525)

(assert (=> b!4697404 (= lt!1859138 lt!1859144)))

(assert (=> b!4697404 (forall!11376 (toList!5657 lt!1859131) lambda!209254)))

(declare-fun lt!1859136 () Unit!125525)

(declare-fun Unit!125538 () Unit!125525)

(assert (=> b!4697404 (= lt!1859136 Unit!125538)))

(assert (=> b!4697404 call!328368))

(declare-fun lt!1859145 () Unit!125525)

(declare-fun Unit!125539 () Unit!125525)

(assert (=> b!4697404 (= lt!1859145 Unit!125539)))

(declare-fun lt!1859151 () Unit!125525)

(declare-fun Unit!125540 () Unit!125525)

(assert (=> b!4697404 (= lt!1859151 Unit!125540)))

(declare-fun lt!1859146 () Unit!125525)

(assert (=> b!4697404 (= lt!1859146 (forallContained!3483 (toList!5657 lt!1859131) lambda!209254 (h!58762 (Cons!52493 lt!1859041 lt!1859022))))))

(assert (=> b!4697404 (contains!15746 lt!1859131 (_1!30259 (h!58762 (Cons!52493 lt!1859041 lt!1859022))))))

(declare-fun lt!1859141 () Unit!125525)

(declare-fun Unit!125541 () Unit!125525)

(assert (=> b!4697404 (= lt!1859141 Unit!125541)))

(assert (=> b!4697404 (contains!15746 lt!1859142 (_1!30259 (h!58762 (Cons!52493 lt!1859041 lt!1859022))))))

(declare-fun lt!1859134 () Unit!125525)

(declare-fun Unit!125542 () Unit!125525)

(assert (=> b!4697404 (= lt!1859134 Unit!125542)))

(assert (=> b!4697404 (forall!11376 (Cons!52493 lt!1859041 lt!1859022) lambda!209254)))

(declare-fun lt!1859135 () Unit!125525)

(declare-fun Unit!125543 () Unit!125525)

(assert (=> b!4697404 (= lt!1859135 Unit!125543)))

(assert (=> b!4697404 (forall!11376 (toList!5657 lt!1859131) lambda!209254)))

(declare-fun lt!1859149 () Unit!125525)

(declare-fun Unit!125544 () Unit!125525)

(assert (=> b!4697404 (= lt!1859149 Unit!125544)))

(declare-fun lt!1859148 () Unit!125525)

(declare-fun Unit!125545 () Unit!125525)

(assert (=> b!4697404 (= lt!1859148 Unit!125545)))

(declare-fun lt!1859132 () Unit!125525)

(assert (=> b!4697404 (= lt!1859132 (addForallContainsKeyThenBeforeAdding!720 lt!1859024 lt!1859142 (_1!30259 (h!58762 (Cons!52493 lt!1859041 lt!1859022))) (_2!30259 (h!58762 (Cons!52493 lt!1859041 lt!1859022)))))))

(assert (=> b!4697404 (forall!11376 (toList!5657 lt!1859024) lambda!209254)))

(declare-fun lt!1859147 () Unit!125525)

(assert (=> b!4697404 (= lt!1859147 lt!1859132)))

(assert (=> b!4697404 call!328367))

(declare-fun lt!1859133 () Unit!125525)

(declare-fun Unit!125546 () Unit!125525)

(assert (=> b!4697404 (= lt!1859133 Unit!125546)))

(declare-fun res!1982571 () Bool)

(assert (=> b!4697404 (= res!1982571 (forall!11376 (Cons!52493 lt!1859041 lt!1859022) lambda!209254))))

(declare-fun e!2930315 () Bool)

(assert (=> b!4697404 (=> (not res!1982571) (not e!2930315))))

(assert (=> b!4697404 e!2930315))

(declare-fun lt!1859137 () Unit!125525)

(declare-fun Unit!125547 () Unit!125525)

(assert (=> b!4697404 (= lt!1859137 Unit!125547)))

(declare-fun bm!328364 () Bool)

(assert (=> bm!328364 (= call!328369 (lemmaContainsAllItsOwnKeys!721 lt!1859024))))

(declare-fun b!4697405 () Bool)

(assert (=> b!4697405 (= e!2930314 (invariantList!1433 (toList!5657 lt!1859139)))))

(declare-fun b!4697406 () Bool)

(assert (=> b!4697406 (= e!2930315 (forall!11376 (toList!5657 lt!1859024) lambda!209254))))

(assert (=> b!4697407 (= e!2930313 lt!1859024)))

(declare-fun lt!1859150 () Unit!125525)

(assert (=> b!4697407 (= lt!1859150 call!328369)))

(assert (=> b!4697407 call!328367))

(declare-fun lt!1859143 () Unit!125525)

(assert (=> b!4697407 (= lt!1859143 lt!1859150)))

(assert (=> b!4697407 call!328368))

(declare-fun lt!1859140 () Unit!125525)

(declare-fun Unit!125548 () Unit!125525)

(assert (=> b!4697407 (= lt!1859140 Unit!125548)))

(assert (= (and d!1493554 c!803016) b!4697407))

(assert (= (and d!1493554 (not c!803016)) b!4697404))

(assert (= (and b!4697404 res!1982571) b!4697406))

(assert (= (or b!4697407 b!4697404) bm!328364))

(assert (= (or b!4697407 b!4697404) bm!328362))

(assert (= (or b!4697407 b!4697404) bm!328363))

(assert (= (and d!1493554 res!1982572) b!4697403))

(assert (= (and b!4697403 res!1982573) b!4697405))

(declare-fun m!5607795 () Bool)

(assert (=> bm!328363 m!5607795))

(declare-fun m!5607797 () Bool)

(assert (=> b!4697406 m!5607797))

(declare-fun m!5607799 () Bool)

(assert (=> b!4697404 m!5607799))

(declare-fun m!5607801 () Bool)

(assert (=> b!4697404 m!5607801))

(declare-fun m!5607803 () Bool)

(assert (=> b!4697404 m!5607803))

(declare-fun m!5607805 () Bool)

(assert (=> b!4697404 m!5607805))

(declare-fun m!5607807 () Bool)

(assert (=> b!4697404 m!5607807))

(declare-fun m!5607809 () Bool)

(assert (=> b!4697404 m!5607809))

(declare-fun m!5607811 () Bool)

(assert (=> b!4697404 m!5607811))

(assert (=> b!4697404 m!5607809))

(declare-fun m!5607813 () Bool)

(assert (=> b!4697404 m!5607813))

(assert (=> b!4697404 m!5607807))

(declare-fun m!5607815 () Bool)

(assert (=> b!4697404 m!5607815))

(assert (=> b!4697404 m!5607797))

(assert (=> b!4697404 m!5607811))

(assert (=> bm!328364 m!5607783))

(declare-fun m!5607817 () Bool)

(assert (=> b!4697405 m!5607817))

(declare-fun m!5607819 () Bool)

(assert (=> b!4697403 m!5607819))

(declare-fun m!5607821 () Bool)

(assert (=> bm!328362 m!5607821))

(declare-fun m!5607823 () Bool)

(assert (=> d!1493554 m!5607823))

(declare-fun m!5607825 () Bool)

(assert (=> d!1493554 m!5607825))

(assert (=> b!4697335 d!1493554))

(declare-fun b!4697455 () Bool)

(declare-fun e!2930347 () Unit!125525)

(declare-fun Unit!125549 () Unit!125525)

(assert (=> b!4697455 (= e!2930347 Unit!125549)))

(declare-fun b!4697456 () Bool)

(declare-fun e!2930348 () Bool)

(declare-datatypes ((List!52619 0))(
  ( (Nil!52495) (Cons!52495 (h!58766 K!13860) (t!359821 List!52619)) )
))
(declare-fun contains!15749 (List!52619 K!13860) Bool)

(declare-fun keys!18766 (ListMap!5021) List!52619)

(assert (=> b!4697456 (= e!2930348 (not (contains!15749 (keys!18766 lt!1859029) key!4653)))))

(declare-fun b!4697457 () Bool)

(declare-fun e!2930350 () Unit!125525)

(declare-fun lt!1859194 () Unit!125525)

(assert (=> b!4697457 (= e!2930350 lt!1859194)))

(declare-fun lt!1859193 () Unit!125525)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1718 (List!52617 K!13860) Unit!125525)

(assert (=> b!4697457 (= lt!1859193 (lemmaContainsKeyImpliesGetValueByKeyDefined!1718 (toList!5657 lt!1859029) key!4653))))

(declare-datatypes ((Option!12156 0))(
  ( (None!12155) (Some!12155 (v!46622 V!14106)) )
))
(declare-fun isDefined!9411 (Option!12156) Bool)

(declare-fun getValueByKey!1826 (List!52617 K!13860) Option!12156)

(assert (=> b!4697457 (isDefined!9411 (getValueByKey!1826 (toList!5657 lt!1859029) key!4653))))

(declare-fun lt!1859195 () Unit!125525)

(assert (=> b!4697457 (= lt!1859195 lt!1859193)))

(declare-fun lemmaInListThenGetKeysListContains!868 (List!52617 K!13860) Unit!125525)

(assert (=> b!4697457 (= lt!1859194 (lemmaInListThenGetKeysListContains!868 (toList!5657 lt!1859029) key!4653))))

(declare-fun call!328375 () Bool)

(assert (=> b!4697457 call!328375))

(declare-fun b!4697458 () Bool)

(declare-fun e!2930349 () Bool)

(assert (=> b!4697458 (= e!2930349 (contains!15749 (keys!18766 lt!1859029) key!4653))))

(declare-fun b!4697459 () Bool)

(declare-fun e!2930351 () List!52619)

(declare-fun getKeysList!873 (List!52617) List!52619)

(assert (=> b!4697459 (= e!2930351 (getKeysList!873 (toList!5657 lt!1859029)))))

(declare-fun b!4697460 () Bool)

(assert (=> b!4697460 false))

(declare-fun lt!1859196 () Unit!125525)

(declare-fun lt!1859198 () Unit!125525)

(assert (=> b!4697460 (= lt!1859196 lt!1859198)))

(declare-fun containsKey!3132 (List!52617 K!13860) Bool)

(assert (=> b!4697460 (containsKey!3132 (toList!5657 lt!1859029) key!4653)))

(declare-fun lemmaInGetKeysListThenContainsKey!872 (List!52617 K!13860) Unit!125525)

(assert (=> b!4697460 (= lt!1859198 (lemmaInGetKeysListThenContainsKey!872 (toList!5657 lt!1859029) key!4653))))

(declare-fun Unit!125550 () Unit!125525)

(assert (=> b!4697460 (= e!2930347 Unit!125550)))

(declare-fun b!4697461 () Bool)

(assert (=> b!4697461 (= e!2930350 e!2930347)))

(declare-fun c!803034 () Bool)

(assert (=> b!4697461 (= c!803034 call!328375)))

(declare-fun b!4697463 () Bool)

(declare-fun e!2930352 () Bool)

(assert (=> b!4697463 (= e!2930352 e!2930349)))

(declare-fun res!1982591 () Bool)

(assert (=> b!4697463 (=> (not res!1982591) (not e!2930349))))

(assert (=> b!4697463 (= res!1982591 (isDefined!9411 (getValueByKey!1826 (toList!5657 lt!1859029) key!4653)))))

(declare-fun bm!328370 () Bool)

(assert (=> bm!328370 (= call!328375 (contains!15749 e!2930351 key!4653))))

(declare-fun c!803035 () Bool)

(declare-fun c!803033 () Bool)

(assert (=> bm!328370 (= c!803035 c!803033)))

(declare-fun b!4697462 () Bool)

(assert (=> b!4697462 (= e!2930351 (keys!18766 lt!1859029))))

(declare-fun d!1493556 () Bool)

(assert (=> d!1493556 e!2930352))

(declare-fun res!1982590 () Bool)

(assert (=> d!1493556 (=> res!1982590 e!2930352)))

(assert (=> d!1493556 (= res!1982590 e!2930348)))

(declare-fun res!1982589 () Bool)

(assert (=> d!1493556 (=> (not res!1982589) (not e!2930348))))

(declare-fun lt!1859199 () Bool)

(assert (=> d!1493556 (= res!1982589 (not lt!1859199))))

(declare-fun lt!1859200 () Bool)

(assert (=> d!1493556 (= lt!1859199 lt!1859200)))

(declare-fun lt!1859197 () Unit!125525)

(assert (=> d!1493556 (= lt!1859197 e!2930350)))

(assert (=> d!1493556 (= c!803033 lt!1859200)))

(assert (=> d!1493556 (= lt!1859200 (containsKey!3132 (toList!5657 lt!1859029) key!4653))))

(assert (=> d!1493556 (= (contains!15746 lt!1859029 key!4653) lt!1859199)))

(assert (= (and d!1493556 c!803033) b!4697457))

(assert (= (and d!1493556 (not c!803033)) b!4697461))

(assert (= (and b!4697461 c!803034) b!4697460))

(assert (= (and b!4697461 (not c!803034)) b!4697455))

(assert (= (or b!4697457 b!4697461) bm!328370))

(assert (= (and bm!328370 c!803035) b!4697459))

(assert (= (and bm!328370 (not c!803035)) b!4697462))

(assert (= (and d!1493556 res!1982589) b!4697456))

(assert (= (and d!1493556 (not res!1982590)) b!4697463))

(assert (= (and b!4697463 res!1982591) b!4697458))

(declare-fun m!5607855 () Bool)

(assert (=> b!4697462 m!5607855))

(declare-fun m!5607857 () Bool)

(assert (=> b!4697460 m!5607857))

(declare-fun m!5607859 () Bool)

(assert (=> b!4697460 m!5607859))

(declare-fun m!5607861 () Bool)

(assert (=> b!4697459 m!5607861))

(declare-fun m!5607863 () Bool)

(assert (=> bm!328370 m!5607863))

(assert (=> b!4697458 m!5607855))

(assert (=> b!4697458 m!5607855))

(declare-fun m!5607865 () Bool)

(assert (=> b!4697458 m!5607865))

(assert (=> b!4697456 m!5607855))

(assert (=> b!4697456 m!5607855))

(assert (=> b!4697456 m!5607865))

(assert (=> d!1493556 m!5607857))

(declare-fun m!5607867 () Bool)

(assert (=> b!4697463 m!5607867))

(assert (=> b!4697463 m!5607867))

(declare-fun m!5607869 () Bool)

(assert (=> b!4697463 m!5607869))

(declare-fun m!5607871 () Bool)

(assert (=> b!4697457 m!5607871))

(assert (=> b!4697457 m!5607867))

(assert (=> b!4697457 m!5607867))

(assert (=> b!4697457 m!5607869))

(declare-fun m!5607873 () Bool)

(assert (=> b!4697457 m!5607873))

(assert (=> b!4697335 d!1493556))

(declare-fun d!1493564 () Bool)

(assert (=> d!1493564 (= (head!10031 newBucket!218) (h!58762 newBucket!218))))

(assert (=> b!4697335 d!1493564))

(declare-fun bs!1092278 () Bool)

(declare-fun b!4697472 () Bool)

(assert (= bs!1092278 (and b!4697472 b!4697395)))

(declare-fun lambda!209257 () Int)

(assert (=> bs!1092278 (= (= lt!1859024 lt!1859120) (= lambda!209257 lambda!209250))))

(declare-fun bs!1092279 () Bool)

(assert (= bs!1092279 (and b!4697472 b!4697404)))

(assert (=> bs!1092279 (= lambda!209257 lambda!209253)))

(declare-fun bs!1092280 () Bool)

(assert (= bs!1092280 (and b!4697472 d!1493554)))

(assert (=> bs!1092280 (= (= lt!1859024 lt!1859139) (= lambda!209257 lambda!209255))))

(declare-fun bs!1092281 () Bool)

(assert (= bs!1092281 (and b!4697472 b!4697407)))

(assert (=> bs!1092281 (= lambda!209257 lambda!209252)))

(declare-fun bs!1092282 () Bool)

(assert (= bs!1092282 (and b!4697472 d!1493528)))

(assert (=> bs!1092282 (= (= lt!1859024 lt!1859117) (= lambda!209257 lambda!209251))))

(assert (=> bs!1092279 (= (= lt!1859024 lt!1859142) (= lambda!209257 lambda!209254))))

(assert (=> bs!1092278 (= lambda!209257 lambda!209248)))

(declare-fun bs!1092283 () Bool)

(assert (= bs!1092283 (and b!4697472 b!4697398)))

(assert (=> bs!1092283 (= lambda!209257 lambda!209247)))

(assert (=> b!4697472 true))

(declare-fun bs!1092284 () Bool)

(declare-fun b!4697469 () Bool)

(assert (= bs!1092284 (and b!4697469 b!4697395)))

(declare-fun lambda!209258 () Int)

(assert (=> bs!1092284 (= (= lt!1859024 lt!1859120) (= lambda!209258 lambda!209250))))

(declare-fun bs!1092285 () Bool)

(assert (= bs!1092285 (and b!4697469 b!4697404)))

(assert (=> bs!1092285 (= lambda!209258 lambda!209253)))

(declare-fun bs!1092286 () Bool)

(assert (= bs!1092286 (and b!4697469 d!1493554)))

(assert (=> bs!1092286 (= (= lt!1859024 lt!1859139) (= lambda!209258 lambda!209255))))

(declare-fun bs!1092287 () Bool)

(assert (= bs!1092287 (and b!4697469 b!4697407)))

(assert (=> bs!1092287 (= lambda!209258 lambda!209252)))

(declare-fun bs!1092288 () Bool)

(assert (= bs!1092288 (and b!4697469 d!1493528)))

(assert (=> bs!1092288 (= (= lt!1859024 lt!1859117) (= lambda!209258 lambda!209251))))

(declare-fun bs!1092289 () Bool)

(assert (= bs!1092289 (and b!4697469 b!4697472)))

(assert (=> bs!1092289 (= lambda!209258 lambda!209257)))

(assert (=> bs!1092285 (= (= lt!1859024 lt!1859142) (= lambda!209258 lambda!209254))))

(assert (=> bs!1092284 (= lambda!209258 lambda!209248)))

(declare-fun bs!1092290 () Bool)

(assert (= bs!1092290 (and b!4697469 b!4697398)))

(assert (=> bs!1092290 (= lambda!209258 lambda!209247)))

(assert (=> b!4697469 true))

(declare-fun lambda!209259 () Int)

(declare-fun lt!1859220 () ListMap!5021)

(assert (=> bs!1092284 (= (= lt!1859220 lt!1859120) (= lambda!209259 lambda!209250))))

(assert (=> bs!1092285 (= (= lt!1859220 lt!1859024) (= lambda!209259 lambda!209253))))

(assert (=> b!4697469 (= (= lt!1859220 lt!1859024) (= lambda!209259 lambda!209258))))

(assert (=> bs!1092286 (= (= lt!1859220 lt!1859139) (= lambda!209259 lambda!209255))))

(assert (=> bs!1092287 (= (= lt!1859220 lt!1859024) (= lambda!209259 lambda!209252))))

(assert (=> bs!1092288 (= (= lt!1859220 lt!1859117) (= lambda!209259 lambda!209251))))

(assert (=> bs!1092289 (= (= lt!1859220 lt!1859024) (= lambda!209259 lambda!209257))))

(assert (=> bs!1092285 (= (= lt!1859220 lt!1859142) (= lambda!209259 lambda!209254))))

(assert (=> bs!1092284 (= (= lt!1859220 lt!1859024) (= lambda!209259 lambda!209248))))

(assert (=> bs!1092290 (= (= lt!1859220 lt!1859024) (= lambda!209259 lambda!209247))))

(assert (=> b!4697469 true))

(declare-fun bs!1092291 () Bool)

(declare-fun d!1493566 () Bool)

(assert (= bs!1092291 (and d!1493566 b!4697395)))

(declare-fun lt!1859217 () ListMap!5021)

(declare-fun lambda!209260 () Int)

(assert (=> bs!1092291 (= (= lt!1859217 lt!1859120) (= lambda!209260 lambda!209250))))

(declare-fun bs!1092292 () Bool)

(assert (= bs!1092292 (and d!1493566 b!4697404)))

(assert (=> bs!1092292 (= (= lt!1859217 lt!1859024) (= lambda!209260 lambda!209253))))

(declare-fun bs!1092293 () Bool)

(assert (= bs!1092293 (and d!1493566 d!1493554)))

(assert (=> bs!1092293 (= (= lt!1859217 lt!1859139) (= lambda!209260 lambda!209255))))

(declare-fun bs!1092294 () Bool)

(assert (= bs!1092294 (and d!1493566 b!4697407)))

(assert (=> bs!1092294 (= (= lt!1859217 lt!1859024) (= lambda!209260 lambda!209252))))

(declare-fun bs!1092295 () Bool)

(assert (= bs!1092295 (and d!1493566 d!1493528)))

(assert (=> bs!1092295 (= (= lt!1859217 lt!1859117) (= lambda!209260 lambda!209251))))

(declare-fun bs!1092296 () Bool)

(assert (= bs!1092296 (and d!1493566 b!4697472)))

(assert (=> bs!1092296 (= (= lt!1859217 lt!1859024) (= lambda!209260 lambda!209257))))

(assert (=> bs!1092292 (= (= lt!1859217 lt!1859142) (= lambda!209260 lambda!209254))))

(assert (=> bs!1092291 (= (= lt!1859217 lt!1859024) (= lambda!209260 lambda!209248))))

(declare-fun bs!1092297 () Bool)

(assert (= bs!1092297 (and d!1493566 b!4697398)))

(assert (=> bs!1092297 (= (= lt!1859217 lt!1859024) (= lambda!209260 lambda!209247))))

(declare-fun bs!1092298 () Bool)

(assert (= bs!1092298 (and d!1493566 b!4697469)))

(assert (=> bs!1092298 (= (= lt!1859217 lt!1859220) (= lambda!209260 lambda!209259))))

(assert (=> bs!1092298 (= (= lt!1859217 lt!1859024) (= lambda!209260 lambda!209258))))

(assert (=> d!1493566 true))

(declare-fun bm!328371 () Bool)

(declare-fun c!803036 () Bool)

(declare-fun call!328376 () Bool)

(assert (=> bm!328371 (= call!328376 (forall!11376 (toList!5657 lt!1859024) (ite c!803036 lambda!209257 lambda!209259)))))

(declare-fun bm!328372 () Bool)

(declare-fun call!328377 () Bool)

(assert (=> bm!328372 (= call!328377 (forall!11376 (ite c!803036 (toList!5657 lt!1859024) (t!359817 lt!1859022)) (ite c!803036 lambda!209257 lambda!209259)))))

(declare-fun b!4697468 () Bool)

(declare-fun res!1982598 () Bool)

(declare-fun e!2930356 () Bool)

(assert (=> b!4697468 (=> (not res!1982598) (not e!2930356))))

(assert (=> b!4697468 (= res!1982598 (forall!11376 (toList!5657 lt!1859024) lambda!209260))))

(assert (=> d!1493566 e!2930356))

(declare-fun res!1982597 () Bool)

(assert (=> d!1493566 (=> (not res!1982597) (not e!2930356))))

(assert (=> d!1493566 (= res!1982597 (forall!11376 lt!1859022 lambda!209260))))

(declare-fun e!2930355 () ListMap!5021)

(assert (=> d!1493566 (= lt!1859217 e!2930355)))

(assert (=> d!1493566 (= c!803036 ((_ is Nil!52493) lt!1859022))))

(assert (=> d!1493566 (noDuplicateKeys!1884 lt!1859022)))

(assert (=> d!1493566 (= (addToMapMapFromBucket!1316 lt!1859022 lt!1859024) lt!1859217)))

(assert (=> b!4697469 (= e!2930355 lt!1859220)))

(declare-fun lt!1859209 () ListMap!5021)

(assert (=> b!4697469 (= lt!1859209 (+!2168 lt!1859024 (h!58762 lt!1859022)))))

(assert (=> b!4697469 (= lt!1859220 (addToMapMapFromBucket!1316 (t!359817 lt!1859022) (+!2168 lt!1859024 (h!58762 lt!1859022))))))

(declare-fun lt!1859222 () Unit!125525)

(declare-fun call!328378 () Unit!125525)

(assert (=> b!4697469 (= lt!1859222 call!328378)))

(assert (=> b!4697469 (forall!11376 (toList!5657 lt!1859024) lambda!209258)))

(declare-fun lt!1859216 () Unit!125525)

(assert (=> b!4697469 (= lt!1859216 lt!1859222)))

(assert (=> b!4697469 (forall!11376 (toList!5657 lt!1859209) lambda!209259)))

(declare-fun lt!1859214 () Unit!125525)

(declare-fun Unit!125551 () Unit!125525)

(assert (=> b!4697469 (= lt!1859214 Unit!125551)))

(assert (=> b!4697469 call!328377))

(declare-fun lt!1859223 () Unit!125525)

(declare-fun Unit!125552 () Unit!125525)

(assert (=> b!4697469 (= lt!1859223 Unit!125552)))

(declare-fun lt!1859229 () Unit!125525)

(declare-fun Unit!125553 () Unit!125525)

(assert (=> b!4697469 (= lt!1859229 Unit!125553)))

(declare-fun lt!1859224 () Unit!125525)

(assert (=> b!4697469 (= lt!1859224 (forallContained!3483 (toList!5657 lt!1859209) lambda!209259 (h!58762 lt!1859022)))))

(assert (=> b!4697469 (contains!15746 lt!1859209 (_1!30259 (h!58762 lt!1859022)))))

(declare-fun lt!1859219 () Unit!125525)

(declare-fun Unit!125554 () Unit!125525)

(assert (=> b!4697469 (= lt!1859219 Unit!125554)))

(assert (=> b!4697469 (contains!15746 lt!1859220 (_1!30259 (h!58762 lt!1859022)))))

(declare-fun lt!1859212 () Unit!125525)

(declare-fun Unit!125555 () Unit!125525)

(assert (=> b!4697469 (= lt!1859212 Unit!125555)))

(assert (=> b!4697469 (forall!11376 lt!1859022 lambda!209259)))

(declare-fun lt!1859213 () Unit!125525)

(declare-fun Unit!125556 () Unit!125525)

(assert (=> b!4697469 (= lt!1859213 Unit!125556)))

(assert (=> b!4697469 (forall!11376 (toList!5657 lt!1859209) lambda!209259)))

(declare-fun lt!1859227 () Unit!125525)

(declare-fun Unit!125557 () Unit!125525)

(assert (=> b!4697469 (= lt!1859227 Unit!125557)))

(declare-fun lt!1859226 () Unit!125525)

(declare-fun Unit!125558 () Unit!125525)

(assert (=> b!4697469 (= lt!1859226 Unit!125558)))

(declare-fun lt!1859210 () Unit!125525)

(assert (=> b!4697469 (= lt!1859210 (addForallContainsKeyThenBeforeAdding!720 lt!1859024 lt!1859220 (_1!30259 (h!58762 lt!1859022)) (_2!30259 (h!58762 lt!1859022))))))

(assert (=> b!4697469 (forall!11376 (toList!5657 lt!1859024) lambda!209259)))

(declare-fun lt!1859225 () Unit!125525)

(assert (=> b!4697469 (= lt!1859225 lt!1859210)))

(assert (=> b!4697469 call!328376))

(declare-fun lt!1859211 () Unit!125525)

(declare-fun Unit!125559 () Unit!125525)

(assert (=> b!4697469 (= lt!1859211 Unit!125559)))

(declare-fun res!1982596 () Bool)

(assert (=> b!4697469 (= res!1982596 (forall!11376 lt!1859022 lambda!209259))))

(declare-fun e!2930357 () Bool)

(assert (=> b!4697469 (=> (not res!1982596) (not e!2930357))))

(assert (=> b!4697469 e!2930357))

(declare-fun lt!1859215 () Unit!125525)

(declare-fun Unit!125560 () Unit!125525)

(assert (=> b!4697469 (= lt!1859215 Unit!125560)))

(declare-fun bm!328373 () Bool)

(assert (=> bm!328373 (= call!328378 (lemmaContainsAllItsOwnKeys!721 lt!1859024))))

(declare-fun b!4697470 () Bool)

(assert (=> b!4697470 (= e!2930356 (invariantList!1433 (toList!5657 lt!1859217)))))

(declare-fun b!4697471 () Bool)

(assert (=> b!4697471 (= e!2930357 (forall!11376 (toList!5657 lt!1859024) lambda!209259))))

(assert (=> b!4697472 (= e!2930355 lt!1859024)))

(declare-fun lt!1859228 () Unit!125525)

(assert (=> b!4697472 (= lt!1859228 call!328378)))

(assert (=> b!4697472 call!328376))

(declare-fun lt!1859221 () Unit!125525)

(assert (=> b!4697472 (= lt!1859221 lt!1859228)))

(assert (=> b!4697472 call!328377))

(declare-fun lt!1859218 () Unit!125525)

(declare-fun Unit!125561 () Unit!125525)

(assert (=> b!4697472 (= lt!1859218 Unit!125561)))

(assert (= (and d!1493566 c!803036) b!4697472))

(assert (= (and d!1493566 (not c!803036)) b!4697469))

(assert (= (and b!4697469 res!1982596) b!4697471))

(assert (= (or b!4697472 b!4697469) bm!328373))

(assert (= (or b!4697472 b!4697469) bm!328371))

(assert (= (or b!4697472 b!4697469) bm!328372))

(assert (= (and d!1493566 res!1982597) b!4697468))

(assert (= (and b!4697468 res!1982598) b!4697470))

(declare-fun m!5607893 () Bool)

(assert (=> bm!328372 m!5607893))

(declare-fun m!5607895 () Bool)

(assert (=> b!4697471 m!5607895))

(declare-fun m!5607897 () Bool)

(assert (=> b!4697469 m!5607897))

(declare-fun m!5607899 () Bool)

(assert (=> b!4697469 m!5607899))

(declare-fun m!5607901 () Bool)

(assert (=> b!4697469 m!5607901))

(declare-fun m!5607903 () Bool)

(assert (=> b!4697469 m!5607903))

(declare-fun m!5607905 () Bool)

(assert (=> b!4697469 m!5607905))

(declare-fun m!5607907 () Bool)

(assert (=> b!4697469 m!5607907))

(declare-fun m!5607909 () Bool)

(assert (=> b!4697469 m!5607909))

(assert (=> b!4697469 m!5607907))

(declare-fun m!5607911 () Bool)

(assert (=> b!4697469 m!5607911))

(assert (=> b!4697469 m!5607905))

(declare-fun m!5607913 () Bool)

(assert (=> b!4697469 m!5607913))

(assert (=> b!4697469 m!5607895))

(assert (=> b!4697469 m!5607909))

(assert (=> bm!328373 m!5607783))

(declare-fun m!5607915 () Bool)

(assert (=> b!4697470 m!5607915))

(declare-fun m!5607917 () Bool)

(assert (=> b!4697468 m!5607917))

(declare-fun m!5607919 () Bool)

(assert (=> bm!328371 m!5607919))

(declare-fun m!5607921 () Bool)

(assert (=> d!1493566 m!5607921))

(declare-fun m!5607923 () Bool)

(assert (=> d!1493566 m!5607923))

(assert (=> b!4697335 d!1493566))

(declare-fun bs!1092299 () Bool)

(declare-fun d!1493576 () Bool)

(assert (= bs!1092299 (and d!1493576 start!476000)))

(declare-fun lambda!209263 () Int)

(assert (=> bs!1092299 (= lambda!209263 lambda!209205)))

(declare-fun bs!1092300 () Bool)

(assert (= bs!1092300 (and d!1493576 d!1493520)))

(assert (=> bs!1092300 (not (= lambda!209263 lambda!209208))))

(declare-fun lt!1859239 () ListMap!5021)

(assert (=> d!1493576 (invariantList!1433 (toList!5657 lt!1859239))))

(declare-fun e!2930367 () ListMap!5021)

(assert (=> d!1493576 (= lt!1859239 e!2930367)))

(declare-fun c!803045 () Bool)

(assert (=> d!1493576 (= c!803045 ((_ is Cons!52494) (Cons!52494 lt!1859048 (t!359818 (toList!5658 lm!2023)))))))

(assert (=> d!1493576 (forall!11375 (Cons!52494 lt!1859048 (t!359818 (toList!5658 lm!2023))) lambda!209263)))

(assert (=> d!1493576 (= (extractMap!1910 (Cons!52494 lt!1859048 (t!359818 (toList!5658 lm!2023)))) lt!1859239)))

(declare-fun b!4697491 () Bool)

(assert (=> b!4697491 (= e!2930367 (addToMapMapFromBucket!1316 (_2!30260 (h!58763 (Cons!52494 lt!1859048 (t!359818 (toList!5658 lm!2023))))) (extractMap!1910 (t!359818 (Cons!52494 lt!1859048 (t!359818 (toList!5658 lm!2023)))))))))

(declare-fun b!4697492 () Bool)

(assert (=> b!4697492 (= e!2930367 (ListMap!5022 Nil!52493))))

(assert (= (and d!1493576 c!803045) b!4697491))

(assert (= (and d!1493576 (not c!803045)) b!4697492))

(declare-fun m!5607925 () Bool)

(assert (=> d!1493576 m!5607925))

(declare-fun m!5607927 () Bool)

(assert (=> d!1493576 m!5607927))

(declare-fun m!5607929 () Bool)

(assert (=> b!4697491 m!5607929))

(assert (=> b!4697491 m!5607929))

(declare-fun m!5607931 () Bool)

(assert (=> b!4697491 m!5607931))

(assert (=> b!4697335 d!1493576))

(declare-fun d!1493578 () Bool)

(assert (=> d!1493578 (eq!1043 (addToMapMapFromBucket!1316 (Cons!52493 lt!1859041 lt!1859022) lt!1859024) (+!2168 (addToMapMapFromBucket!1316 lt!1859022 lt!1859024) lt!1859041))))

(declare-fun lt!1859242 () Unit!125525)

(declare-fun choose!32774 (tuple2!53930 List!52617 ListMap!5021) Unit!125525)

(assert (=> d!1493578 (= lt!1859242 (choose!32774 lt!1859041 lt!1859022 lt!1859024))))

(assert (=> d!1493578 (noDuplicateKeys!1884 lt!1859022)))

(assert (=> d!1493578 (= (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!292 lt!1859041 lt!1859022 lt!1859024) lt!1859242)))

(declare-fun bs!1092301 () Bool)

(assert (= bs!1092301 d!1493578))

(assert (=> bs!1092301 m!5607923))

(assert (=> bs!1092301 m!5607569))

(assert (=> bs!1092301 m!5607571))

(assert (=> bs!1092301 m!5607573))

(assert (=> bs!1092301 m!5607577))

(assert (=> bs!1092301 m!5607571))

(assert (=> bs!1092301 m!5607577))

(declare-fun m!5607933 () Bool)

(assert (=> bs!1092301 m!5607933))

(assert (=> bs!1092301 m!5607569))

(assert (=> b!4697335 d!1493578))

(declare-fun bs!1092302 () Bool)

(declare-fun b!4697497 () Bool)

(assert (= bs!1092302 (and b!4697497 b!4697395)))

(declare-fun lambda!209264 () Int)

(assert (=> bs!1092302 (= (= lt!1859024 lt!1859120) (= lambda!209264 lambda!209250))))

(declare-fun bs!1092303 () Bool)

(assert (= bs!1092303 (and b!4697497 b!4697404)))

(assert (=> bs!1092303 (= lambda!209264 lambda!209253)))

(declare-fun bs!1092304 () Bool)

(assert (= bs!1092304 (and b!4697497 d!1493554)))

(assert (=> bs!1092304 (= (= lt!1859024 lt!1859139) (= lambda!209264 lambda!209255))))

(declare-fun bs!1092305 () Bool)

(assert (= bs!1092305 (and b!4697497 b!4697407)))

(assert (=> bs!1092305 (= lambda!209264 lambda!209252)))

(declare-fun bs!1092306 () Bool)

(assert (= bs!1092306 (and b!4697497 d!1493528)))

(assert (=> bs!1092306 (= (= lt!1859024 lt!1859117) (= lambda!209264 lambda!209251))))

(declare-fun bs!1092307 () Bool)

(assert (= bs!1092307 (and b!4697497 b!4697472)))

(assert (=> bs!1092307 (= lambda!209264 lambda!209257)))

(assert (=> bs!1092303 (= (= lt!1859024 lt!1859142) (= lambda!209264 lambda!209254))))

(assert (=> bs!1092302 (= lambda!209264 lambda!209248)))

(declare-fun bs!1092308 () Bool)

(assert (= bs!1092308 (and b!4697497 b!4697469)))

(assert (=> bs!1092308 (= (= lt!1859024 lt!1859220) (= lambda!209264 lambda!209259))))

(assert (=> bs!1092308 (= lambda!209264 lambda!209258)))

(declare-fun bs!1092309 () Bool)

(assert (= bs!1092309 (and b!4697497 d!1493566)))

(assert (=> bs!1092309 (= (= lt!1859024 lt!1859217) (= lambda!209264 lambda!209260))))

(declare-fun bs!1092310 () Bool)

(assert (= bs!1092310 (and b!4697497 b!4697398)))

(assert (=> bs!1092310 (= lambda!209264 lambda!209247)))

(assert (=> b!4697497 true))

(declare-fun bs!1092311 () Bool)

(declare-fun b!4697494 () Bool)

(assert (= bs!1092311 (and b!4697494 b!4697497)))

(declare-fun lambda!209265 () Int)

(assert (=> bs!1092311 (= lambda!209265 lambda!209264)))

(declare-fun bs!1092312 () Bool)

(assert (= bs!1092312 (and b!4697494 b!4697395)))

(assert (=> bs!1092312 (= (= lt!1859024 lt!1859120) (= lambda!209265 lambda!209250))))

(declare-fun bs!1092313 () Bool)

(assert (= bs!1092313 (and b!4697494 b!4697404)))

(assert (=> bs!1092313 (= lambda!209265 lambda!209253)))

(declare-fun bs!1092314 () Bool)

(assert (= bs!1092314 (and b!4697494 d!1493554)))

(assert (=> bs!1092314 (= (= lt!1859024 lt!1859139) (= lambda!209265 lambda!209255))))

(declare-fun bs!1092315 () Bool)

(assert (= bs!1092315 (and b!4697494 b!4697407)))

(assert (=> bs!1092315 (= lambda!209265 lambda!209252)))

(declare-fun bs!1092316 () Bool)

(assert (= bs!1092316 (and b!4697494 d!1493528)))

(assert (=> bs!1092316 (= (= lt!1859024 lt!1859117) (= lambda!209265 lambda!209251))))

(declare-fun bs!1092317 () Bool)

(assert (= bs!1092317 (and b!4697494 b!4697472)))

(assert (=> bs!1092317 (= lambda!209265 lambda!209257)))

(assert (=> bs!1092313 (= (= lt!1859024 lt!1859142) (= lambda!209265 lambda!209254))))

(assert (=> bs!1092312 (= lambda!209265 lambda!209248)))

(declare-fun bs!1092318 () Bool)

(assert (= bs!1092318 (and b!4697494 b!4697469)))

(assert (=> bs!1092318 (= (= lt!1859024 lt!1859220) (= lambda!209265 lambda!209259))))

(assert (=> bs!1092318 (= lambda!209265 lambda!209258)))

(declare-fun bs!1092319 () Bool)

(assert (= bs!1092319 (and b!4697494 d!1493566)))

(assert (=> bs!1092319 (= (= lt!1859024 lt!1859217) (= lambda!209265 lambda!209260))))

(declare-fun bs!1092320 () Bool)

(assert (= bs!1092320 (and b!4697494 b!4697398)))

(assert (=> bs!1092320 (= lambda!209265 lambda!209247)))

(assert (=> b!4697494 true))

(declare-fun lambda!209266 () Int)

(declare-fun lt!1859254 () ListMap!5021)

(assert (=> bs!1092311 (= (= lt!1859254 lt!1859024) (= lambda!209266 lambda!209264))))

(assert (=> bs!1092312 (= (= lt!1859254 lt!1859120) (= lambda!209266 lambda!209250))))

(assert (=> bs!1092313 (= (= lt!1859254 lt!1859024) (= lambda!209266 lambda!209253))))

(assert (=> bs!1092314 (= (= lt!1859254 lt!1859139) (= lambda!209266 lambda!209255))))

(assert (=> bs!1092315 (= (= lt!1859254 lt!1859024) (= lambda!209266 lambda!209252))))

(assert (=> bs!1092317 (= (= lt!1859254 lt!1859024) (= lambda!209266 lambda!209257))))

(assert (=> bs!1092313 (= (= lt!1859254 lt!1859142) (= lambda!209266 lambda!209254))))

(assert (=> bs!1092312 (= (= lt!1859254 lt!1859024) (= lambda!209266 lambda!209248))))

(assert (=> bs!1092318 (= (= lt!1859254 lt!1859220) (= lambda!209266 lambda!209259))))

(assert (=> bs!1092318 (= (= lt!1859254 lt!1859024) (= lambda!209266 lambda!209258))))

(assert (=> bs!1092316 (= (= lt!1859254 lt!1859117) (= lambda!209266 lambda!209251))))

(assert (=> b!4697494 (= (= lt!1859254 lt!1859024) (= lambda!209266 lambda!209265))))

(assert (=> bs!1092319 (= (= lt!1859254 lt!1859217) (= lambda!209266 lambda!209260))))

(assert (=> bs!1092320 (= (= lt!1859254 lt!1859024) (= lambda!209266 lambda!209247))))

(assert (=> b!4697494 true))

(declare-fun bs!1092321 () Bool)

(declare-fun d!1493580 () Bool)

(assert (= bs!1092321 (and d!1493580 b!4697497)))

(declare-fun lambda!209267 () Int)

(declare-fun lt!1859251 () ListMap!5021)

(assert (=> bs!1092321 (= (= lt!1859251 lt!1859024) (= lambda!209267 lambda!209264))))

(declare-fun bs!1092322 () Bool)

(assert (= bs!1092322 (and d!1493580 b!4697395)))

(assert (=> bs!1092322 (= (= lt!1859251 lt!1859120) (= lambda!209267 lambda!209250))))

(declare-fun bs!1092323 () Bool)

(assert (= bs!1092323 (and d!1493580 b!4697404)))

(assert (=> bs!1092323 (= (= lt!1859251 lt!1859024) (= lambda!209267 lambda!209253))))

(declare-fun bs!1092324 () Bool)

(assert (= bs!1092324 (and d!1493580 d!1493554)))

(assert (=> bs!1092324 (= (= lt!1859251 lt!1859139) (= lambda!209267 lambda!209255))))

(declare-fun bs!1092325 () Bool)

(assert (= bs!1092325 (and d!1493580 b!4697407)))

(assert (=> bs!1092325 (= (= lt!1859251 lt!1859024) (= lambda!209267 lambda!209252))))

(declare-fun bs!1092326 () Bool)

(assert (= bs!1092326 (and d!1493580 b!4697472)))

(assert (=> bs!1092326 (= (= lt!1859251 lt!1859024) (= lambda!209267 lambda!209257))))

(assert (=> bs!1092323 (= (= lt!1859251 lt!1859142) (= lambda!209267 lambda!209254))))

(assert (=> bs!1092322 (= (= lt!1859251 lt!1859024) (= lambda!209267 lambda!209248))))

(declare-fun bs!1092327 () Bool)

(assert (= bs!1092327 (and d!1493580 b!4697494)))

(assert (=> bs!1092327 (= (= lt!1859251 lt!1859254) (= lambda!209267 lambda!209266))))

(declare-fun bs!1092328 () Bool)

(assert (= bs!1092328 (and d!1493580 b!4697469)))

(assert (=> bs!1092328 (= (= lt!1859251 lt!1859220) (= lambda!209267 lambda!209259))))

(assert (=> bs!1092328 (= (= lt!1859251 lt!1859024) (= lambda!209267 lambda!209258))))

(declare-fun bs!1092329 () Bool)

(assert (= bs!1092329 (and d!1493580 d!1493528)))

(assert (=> bs!1092329 (= (= lt!1859251 lt!1859117) (= lambda!209267 lambda!209251))))

(assert (=> bs!1092327 (= (= lt!1859251 lt!1859024) (= lambda!209267 lambda!209265))))

(declare-fun bs!1092330 () Bool)

(assert (= bs!1092330 (and d!1493580 d!1493566)))

(assert (=> bs!1092330 (= (= lt!1859251 lt!1859217) (= lambda!209267 lambda!209260))))

(declare-fun bs!1092331 () Bool)

(assert (= bs!1092331 (and d!1493580 b!4697398)))

(assert (=> bs!1092331 (= (= lt!1859251 lt!1859024) (= lambda!209267 lambda!209247))))

(assert (=> d!1493580 true))

(declare-fun c!803046 () Bool)

(declare-fun call!328379 () Bool)

(declare-fun bm!328374 () Bool)

(assert (=> bm!328374 (= call!328379 (forall!11376 (toList!5657 lt!1859024) (ite c!803046 lambda!209264 lambda!209266)))))

(declare-fun call!328380 () Bool)

(declare-fun bm!328375 () Bool)

(assert (=> bm!328375 (= call!328380 (forall!11376 (ite c!803046 (toList!5657 lt!1859024) (t!359817 lt!1859042)) (ite c!803046 lambda!209264 lambda!209266)))))

(declare-fun b!4697493 () Bool)

(declare-fun res!1982603 () Bool)

(declare-fun e!2930369 () Bool)

(assert (=> b!4697493 (=> (not res!1982603) (not e!2930369))))

(assert (=> b!4697493 (= res!1982603 (forall!11376 (toList!5657 lt!1859024) lambda!209267))))

(assert (=> d!1493580 e!2930369))

(declare-fun res!1982602 () Bool)

(assert (=> d!1493580 (=> (not res!1982602) (not e!2930369))))

(assert (=> d!1493580 (= res!1982602 (forall!11376 lt!1859042 lambda!209267))))

(declare-fun e!2930368 () ListMap!5021)

(assert (=> d!1493580 (= lt!1859251 e!2930368)))

(assert (=> d!1493580 (= c!803046 ((_ is Nil!52493) lt!1859042))))

(assert (=> d!1493580 (noDuplicateKeys!1884 lt!1859042)))

(assert (=> d!1493580 (= (addToMapMapFromBucket!1316 lt!1859042 lt!1859024) lt!1859251)))

(assert (=> b!4697494 (= e!2930368 lt!1859254)))

(declare-fun lt!1859243 () ListMap!5021)

(assert (=> b!4697494 (= lt!1859243 (+!2168 lt!1859024 (h!58762 lt!1859042)))))

(assert (=> b!4697494 (= lt!1859254 (addToMapMapFromBucket!1316 (t!359817 lt!1859042) (+!2168 lt!1859024 (h!58762 lt!1859042))))))

(declare-fun lt!1859256 () Unit!125525)

(declare-fun call!328381 () Unit!125525)

(assert (=> b!4697494 (= lt!1859256 call!328381)))

(assert (=> b!4697494 (forall!11376 (toList!5657 lt!1859024) lambda!209265)))

(declare-fun lt!1859250 () Unit!125525)

(assert (=> b!4697494 (= lt!1859250 lt!1859256)))

(assert (=> b!4697494 (forall!11376 (toList!5657 lt!1859243) lambda!209266)))

(declare-fun lt!1859248 () Unit!125525)

(declare-fun Unit!125562 () Unit!125525)

(assert (=> b!4697494 (= lt!1859248 Unit!125562)))

(assert (=> b!4697494 call!328380))

(declare-fun lt!1859257 () Unit!125525)

(declare-fun Unit!125563 () Unit!125525)

(assert (=> b!4697494 (= lt!1859257 Unit!125563)))

(declare-fun lt!1859263 () Unit!125525)

(declare-fun Unit!125564 () Unit!125525)

(assert (=> b!4697494 (= lt!1859263 Unit!125564)))

(declare-fun lt!1859258 () Unit!125525)

(assert (=> b!4697494 (= lt!1859258 (forallContained!3483 (toList!5657 lt!1859243) lambda!209266 (h!58762 lt!1859042)))))

(assert (=> b!4697494 (contains!15746 lt!1859243 (_1!30259 (h!58762 lt!1859042)))))

(declare-fun lt!1859253 () Unit!125525)

(declare-fun Unit!125565 () Unit!125525)

(assert (=> b!4697494 (= lt!1859253 Unit!125565)))

(assert (=> b!4697494 (contains!15746 lt!1859254 (_1!30259 (h!58762 lt!1859042)))))

(declare-fun lt!1859246 () Unit!125525)

(declare-fun Unit!125566 () Unit!125525)

(assert (=> b!4697494 (= lt!1859246 Unit!125566)))

(assert (=> b!4697494 (forall!11376 lt!1859042 lambda!209266)))

(declare-fun lt!1859247 () Unit!125525)

(declare-fun Unit!125567 () Unit!125525)

(assert (=> b!4697494 (= lt!1859247 Unit!125567)))

(assert (=> b!4697494 (forall!11376 (toList!5657 lt!1859243) lambda!209266)))

(declare-fun lt!1859261 () Unit!125525)

(declare-fun Unit!125568 () Unit!125525)

(assert (=> b!4697494 (= lt!1859261 Unit!125568)))

(declare-fun lt!1859260 () Unit!125525)

(declare-fun Unit!125569 () Unit!125525)

(assert (=> b!4697494 (= lt!1859260 Unit!125569)))

(declare-fun lt!1859244 () Unit!125525)

(assert (=> b!4697494 (= lt!1859244 (addForallContainsKeyThenBeforeAdding!720 lt!1859024 lt!1859254 (_1!30259 (h!58762 lt!1859042)) (_2!30259 (h!58762 lt!1859042))))))

(assert (=> b!4697494 (forall!11376 (toList!5657 lt!1859024) lambda!209266)))

(declare-fun lt!1859259 () Unit!125525)

(assert (=> b!4697494 (= lt!1859259 lt!1859244)))

(assert (=> b!4697494 call!328379))

(declare-fun lt!1859245 () Unit!125525)

(declare-fun Unit!125570 () Unit!125525)

(assert (=> b!4697494 (= lt!1859245 Unit!125570)))

(declare-fun res!1982601 () Bool)

(assert (=> b!4697494 (= res!1982601 (forall!11376 lt!1859042 lambda!209266))))

(declare-fun e!2930370 () Bool)

(assert (=> b!4697494 (=> (not res!1982601) (not e!2930370))))

(assert (=> b!4697494 e!2930370))

(declare-fun lt!1859249 () Unit!125525)

(declare-fun Unit!125571 () Unit!125525)

(assert (=> b!4697494 (= lt!1859249 Unit!125571)))

(declare-fun bm!328376 () Bool)

(assert (=> bm!328376 (= call!328381 (lemmaContainsAllItsOwnKeys!721 lt!1859024))))

(declare-fun b!4697495 () Bool)

(assert (=> b!4697495 (= e!2930369 (invariantList!1433 (toList!5657 lt!1859251)))))

(declare-fun b!4697496 () Bool)

(assert (=> b!4697496 (= e!2930370 (forall!11376 (toList!5657 lt!1859024) lambda!209266))))

(assert (=> b!4697497 (= e!2930368 lt!1859024)))

(declare-fun lt!1859262 () Unit!125525)

(assert (=> b!4697497 (= lt!1859262 call!328381)))

(assert (=> b!4697497 call!328379))

(declare-fun lt!1859255 () Unit!125525)

(assert (=> b!4697497 (= lt!1859255 lt!1859262)))

(assert (=> b!4697497 call!328380))

(declare-fun lt!1859252 () Unit!125525)

(declare-fun Unit!125572 () Unit!125525)

(assert (=> b!4697497 (= lt!1859252 Unit!125572)))

(assert (= (and d!1493580 c!803046) b!4697497))

(assert (= (and d!1493580 (not c!803046)) b!4697494))

(assert (= (and b!4697494 res!1982601) b!4697496))

(assert (= (or b!4697497 b!4697494) bm!328376))

(assert (= (or b!4697497 b!4697494) bm!328374))

(assert (= (or b!4697497 b!4697494) bm!328375))

(assert (= (and d!1493580 res!1982602) b!4697493))

(assert (= (and b!4697493 res!1982603) b!4697495))

(declare-fun m!5607935 () Bool)

(assert (=> bm!328375 m!5607935))

(declare-fun m!5607937 () Bool)

(assert (=> b!4697496 m!5607937))

(declare-fun m!5607939 () Bool)

(assert (=> b!4697494 m!5607939))

(declare-fun m!5607941 () Bool)

(assert (=> b!4697494 m!5607941))

(declare-fun m!5607943 () Bool)

(assert (=> b!4697494 m!5607943))

(declare-fun m!5607945 () Bool)

(assert (=> b!4697494 m!5607945))

(declare-fun m!5607947 () Bool)

(assert (=> b!4697494 m!5607947))

(declare-fun m!5607949 () Bool)

(assert (=> b!4697494 m!5607949))

(declare-fun m!5607951 () Bool)

(assert (=> b!4697494 m!5607951))

(assert (=> b!4697494 m!5607949))

(declare-fun m!5607953 () Bool)

(assert (=> b!4697494 m!5607953))

(assert (=> b!4697494 m!5607947))

(declare-fun m!5607955 () Bool)

(assert (=> b!4697494 m!5607955))

(assert (=> b!4697494 m!5607937))

(assert (=> b!4697494 m!5607951))

(assert (=> bm!328376 m!5607783))

(declare-fun m!5607957 () Bool)

(assert (=> b!4697495 m!5607957))

(declare-fun m!5607959 () Bool)

(assert (=> b!4697493 m!5607959))

(declare-fun m!5607961 () Bool)

(assert (=> bm!328374 m!5607961))

(declare-fun m!5607963 () Bool)

(assert (=> d!1493580 m!5607963))

(assert (=> d!1493580 m!5607679))

(assert (=> b!4697335 d!1493580))

(declare-fun d!1493582 () Bool)

(declare-fun e!2930373 () Bool)

(assert (=> d!1493582 e!2930373))

(declare-fun res!1982609 () Bool)

(assert (=> d!1493582 (=> (not res!1982609) (not e!2930373))))

(declare-fun lt!1859272 () ListMap!5021)

(assert (=> d!1493582 (= res!1982609 (contains!15746 lt!1859272 (_1!30259 lt!1859041)))))

(declare-fun lt!1859273 () List!52617)

(assert (=> d!1493582 (= lt!1859272 (ListMap!5022 lt!1859273))))

(declare-fun lt!1859275 () Unit!125525)

(declare-fun lt!1859274 () Unit!125525)

(assert (=> d!1493582 (= lt!1859275 lt!1859274)))

(assert (=> d!1493582 (= (getValueByKey!1826 lt!1859273 (_1!30259 lt!1859041)) (Some!12155 (_2!30259 lt!1859041)))))

(declare-fun lemmaContainsTupThenGetReturnValue!1023 (List!52617 K!13860 V!14106) Unit!125525)

(assert (=> d!1493582 (= lt!1859274 (lemmaContainsTupThenGetReturnValue!1023 lt!1859273 (_1!30259 lt!1859041) (_2!30259 lt!1859041)))))

(declare-fun insertNoDuplicatedKeys!531 (List!52617 K!13860 V!14106) List!52617)

(assert (=> d!1493582 (= lt!1859273 (insertNoDuplicatedKeys!531 (toList!5657 (addToMapMapFromBucket!1316 lt!1859022 lt!1859024)) (_1!30259 lt!1859041) (_2!30259 lt!1859041)))))

(assert (=> d!1493582 (= (+!2168 (addToMapMapFromBucket!1316 lt!1859022 lt!1859024) lt!1859041) lt!1859272)))

(declare-fun b!4697502 () Bool)

(declare-fun res!1982608 () Bool)

(assert (=> b!4697502 (=> (not res!1982608) (not e!2930373))))

(assert (=> b!4697502 (= res!1982608 (= (getValueByKey!1826 (toList!5657 lt!1859272) (_1!30259 lt!1859041)) (Some!12155 (_2!30259 lt!1859041))))))

(declare-fun b!4697503 () Bool)

(declare-fun contains!15751 (List!52617 tuple2!53930) Bool)

(assert (=> b!4697503 (= e!2930373 (contains!15751 (toList!5657 lt!1859272) lt!1859041))))

(assert (= (and d!1493582 res!1982609) b!4697502))

(assert (= (and b!4697502 res!1982608) b!4697503))

(declare-fun m!5607965 () Bool)

(assert (=> d!1493582 m!5607965))

(declare-fun m!5607967 () Bool)

(assert (=> d!1493582 m!5607967))

(declare-fun m!5607969 () Bool)

(assert (=> d!1493582 m!5607969))

(declare-fun m!5607971 () Bool)

(assert (=> d!1493582 m!5607971))

(declare-fun m!5607973 () Bool)

(assert (=> b!4697502 m!5607973))

(declare-fun m!5607975 () Bool)

(assert (=> b!4697503 m!5607975))

(assert (=> b!4697335 d!1493582))

(declare-fun d!1493584 () Bool)

(declare-fun e!2930374 () Bool)

(assert (=> d!1493584 e!2930374))

(declare-fun res!1982611 () Bool)

(assert (=> d!1493584 (=> (not res!1982611) (not e!2930374))))

(declare-fun lt!1859276 () ListMap!5021)

(assert (=> d!1493584 (= res!1982611 (contains!15746 lt!1859276 (_1!30259 (h!58762 oldBucket!34))))))

(declare-fun lt!1859277 () List!52617)

(assert (=> d!1493584 (= lt!1859276 (ListMap!5022 lt!1859277))))

(declare-fun lt!1859279 () Unit!125525)

(declare-fun lt!1859278 () Unit!125525)

(assert (=> d!1493584 (= lt!1859279 lt!1859278)))

(assert (=> d!1493584 (= (getValueByKey!1826 lt!1859277 (_1!30259 (h!58762 oldBucket!34))) (Some!12155 (_2!30259 (h!58762 oldBucket!34))))))

(assert (=> d!1493584 (= lt!1859278 (lemmaContainsTupThenGetReturnValue!1023 lt!1859277 (_1!30259 (h!58762 oldBucket!34)) (_2!30259 (h!58762 oldBucket!34))))))

(assert (=> d!1493584 (= lt!1859277 (insertNoDuplicatedKeys!531 (toList!5657 lt!1859030) (_1!30259 (h!58762 oldBucket!34)) (_2!30259 (h!58762 oldBucket!34))))))

(assert (=> d!1493584 (= (+!2168 lt!1859030 (h!58762 oldBucket!34)) lt!1859276)))

(declare-fun b!4697504 () Bool)

(declare-fun res!1982610 () Bool)

(assert (=> b!4697504 (=> (not res!1982610) (not e!2930374))))

(assert (=> b!4697504 (= res!1982610 (= (getValueByKey!1826 (toList!5657 lt!1859276) (_1!30259 (h!58762 oldBucket!34))) (Some!12155 (_2!30259 (h!58762 oldBucket!34)))))))

(declare-fun b!4697505 () Bool)

(assert (=> b!4697505 (= e!2930374 (contains!15751 (toList!5657 lt!1859276) (h!58762 oldBucket!34)))))

(assert (= (and d!1493584 res!1982611) b!4697504))

(assert (= (and b!4697504 res!1982610) b!4697505))

(declare-fun m!5607977 () Bool)

(assert (=> d!1493584 m!5607977))

(declare-fun m!5607979 () Bool)

(assert (=> d!1493584 m!5607979))

(declare-fun m!5607981 () Bool)

(assert (=> d!1493584 m!5607981))

(declare-fun m!5607983 () Bool)

(assert (=> d!1493584 m!5607983))

(declare-fun m!5607985 () Bool)

(assert (=> b!4697504 m!5607985))

(declare-fun m!5607987 () Bool)

(assert (=> b!4697505 m!5607987))

(assert (=> b!4697335 d!1493584))

(declare-fun d!1493586 () Bool)

(assert (=> d!1493586 (eq!1043 (addToMapMapFromBucket!1316 (Cons!52493 lt!1859020 lt!1859042) lt!1859024) (+!2168 (addToMapMapFromBucket!1316 lt!1859042 lt!1859024) lt!1859020))))

(declare-fun lt!1859280 () Unit!125525)

(assert (=> d!1493586 (= lt!1859280 (choose!32774 lt!1859020 lt!1859042 lt!1859024))))

(assert (=> d!1493586 (noDuplicateKeys!1884 lt!1859042)))

(assert (=> d!1493586 (= (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!292 lt!1859020 lt!1859042 lt!1859024) lt!1859280)))

(declare-fun bs!1092332 () Bool)

(assert (= bs!1092332 d!1493586))

(assert (=> bs!1092332 m!5607679))

(assert (=> bs!1092332 m!5607587))

(assert (=> bs!1092332 m!5607581))

(assert (=> bs!1092332 m!5607599))

(assert (=> bs!1092332 m!5607579))

(assert (=> bs!1092332 m!5607581))

(assert (=> bs!1092332 m!5607579))

(declare-fun m!5607989 () Bool)

(assert (=> bs!1092332 m!5607989))

(assert (=> bs!1092332 m!5607587))

(assert (=> b!4697335 d!1493586))

(declare-fun bs!1092333 () Bool)

(declare-fun d!1493588 () Bool)

(assert (= bs!1092333 (and d!1493588 start!476000)))

(declare-fun lambda!209268 () Int)

(assert (=> bs!1092333 (= lambda!209268 lambda!209205)))

(declare-fun bs!1092334 () Bool)

(assert (= bs!1092334 (and d!1493588 d!1493520)))

(assert (=> bs!1092334 (not (= lambda!209268 lambda!209208))))

(declare-fun bs!1092335 () Bool)

(assert (= bs!1092335 (and d!1493588 d!1493576)))

(assert (=> bs!1092335 (= lambda!209268 lambda!209263)))

(declare-fun lt!1859281 () ListMap!5021)

(assert (=> d!1493588 (invariantList!1433 (toList!5657 lt!1859281))))

(declare-fun e!2930375 () ListMap!5021)

(assert (=> d!1493588 (= lt!1859281 e!2930375)))

(declare-fun c!803047 () Bool)

(assert (=> d!1493588 (= c!803047 ((_ is Cons!52494) lt!1859023))))

(assert (=> d!1493588 (forall!11375 lt!1859023 lambda!209268)))

(assert (=> d!1493588 (= (extractMap!1910 lt!1859023) lt!1859281)))

(declare-fun b!4697506 () Bool)

(assert (=> b!4697506 (= e!2930375 (addToMapMapFromBucket!1316 (_2!30260 (h!58763 lt!1859023)) (extractMap!1910 (t!359818 lt!1859023))))))

(declare-fun b!4697507 () Bool)

(assert (=> b!4697507 (= e!2930375 (ListMap!5022 Nil!52493))))

(assert (= (and d!1493588 c!803047) b!4697506))

(assert (= (and d!1493588 (not c!803047)) b!4697507))

(declare-fun m!5607991 () Bool)

(assert (=> d!1493588 m!5607991))

(declare-fun m!5607993 () Bool)

(assert (=> d!1493588 m!5607993))

(declare-fun m!5607995 () Bool)

(assert (=> b!4697506 m!5607995))

(assert (=> b!4697506 m!5607995))

(declare-fun m!5607997 () Bool)

(assert (=> b!4697506 m!5607997))

(assert (=> b!4697335 d!1493588))

(declare-fun d!1493590 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!9231 (List!52617) (InoxSet tuple2!53930))

(assert (=> d!1493590 (= (eq!1043 lt!1859036 (+!2168 lt!1859030 (h!58762 oldBucket!34))) (= (content!9231 (toList!5657 lt!1859036)) (content!9231 (toList!5657 (+!2168 lt!1859030 (h!58762 oldBucket!34))))))))

(declare-fun bs!1092336 () Bool)

(assert (= bs!1092336 d!1493590))

(declare-fun m!5607999 () Bool)

(assert (=> bs!1092336 m!5607999))

(declare-fun m!5608001 () Bool)

(assert (=> bs!1092336 m!5608001))

(assert (=> b!4697335 d!1493590))

(declare-fun d!1493592 () Bool)

(assert (=> d!1493592 (= (head!10031 oldBucket!34) (h!58762 oldBucket!34))))

(assert (=> b!4697335 d!1493592))

(declare-fun d!1493594 () Bool)

(declare-fun e!2930376 () Bool)

(assert (=> d!1493594 e!2930376))

(declare-fun res!1982613 () Bool)

(assert (=> d!1493594 (=> (not res!1982613) (not e!2930376))))

(declare-fun lt!1859282 () ListMap!5021)

(assert (=> d!1493594 (= res!1982613 (contains!15746 lt!1859282 (_1!30259 lt!1859020)))))

(declare-fun lt!1859283 () List!52617)

(assert (=> d!1493594 (= lt!1859282 (ListMap!5022 lt!1859283))))

(declare-fun lt!1859285 () Unit!125525)

(declare-fun lt!1859284 () Unit!125525)

(assert (=> d!1493594 (= lt!1859285 lt!1859284)))

(assert (=> d!1493594 (= (getValueByKey!1826 lt!1859283 (_1!30259 lt!1859020)) (Some!12155 (_2!30259 lt!1859020)))))

(assert (=> d!1493594 (= lt!1859284 (lemmaContainsTupThenGetReturnValue!1023 lt!1859283 (_1!30259 lt!1859020) (_2!30259 lt!1859020)))))

(assert (=> d!1493594 (= lt!1859283 (insertNoDuplicatedKeys!531 (toList!5657 (addToMapMapFromBucket!1316 lt!1859042 lt!1859024)) (_1!30259 lt!1859020) (_2!30259 lt!1859020)))))

(assert (=> d!1493594 (= (+!2168 (addToMapMapFromBucket!1316 lt!1859042 lt!1859024) lt!1859020) lt!1859282)))

(declare-fun b!4697508 () Bool)

(declare-fun res!1982612 () Bool)

(assert (=> b!4697508 (=> (not res!1982612) (not e!2930376))))

(assert (=> b!4697508 (= res!1982612 (= (getValueByKey!1826 (toList!5657 lt!1859282) (_1!30259 lt!1859020)) (Some!12155 (_2!30259 lt!1859020))))))

(declare-fun b!4697509 () Bool)

(assert (=> b!4697509 (= e!2930376 (contains!15751 (toList!5657 lt!1859282) lt!1859020))))

(assert (= (and d!1493594 res!1982613) b!4697508))

(assert (= (and b!4697508 res!1982612) b!4697509))

(declare-fun m!5608003 () Bool)

(assert (=> d!1493594 m!5608003))

(declare-fun m!5608005 () Bool)

(assert (=> d!1493594 m!5608005))

(declare-fun m!5608007 () Bool)

(assert (=> d!1493594 m!5608007))

(declare-fun m!5608009 () Bool)

(assert (=> d!1493594 m!5608009))

(declare-fun m!5608011 () Bool)

(assert (=> b!4697508 m!5608011))

(declare-fun m!5608013 () Bool)

(assert (=> b!4697509 m!5608013))

(assert (=> b!4697335 d!1493594))

(declare-fun bs!1092337 () Bool)

(declare-fun d!1493596 () Bool)

(assert (= bs!1092337 (and d!1493596 start!476000)))

(declare-fun lambda!209271 () Int)

(assert (=> bs!1092337 (= lambda!209271 lambda!209205)))

(declare-fun bs!1092338 () Bool)

(assert (= bs!1092338 (and d!1493596 d!1493520)))

(assert (=> bs!1092338 (not (= lambda!209271 lambda!209208))))

(declare-fun bs!1092339 () Bool)

(assert (= bs!1092339 (and d!1493596 d!1493576)))

(assert (=> bs!1092339 (= lambda!209271 lambda!209263)))

(declare-fun bs!1092340 () Bool)

(assert (= bs!1092340 (and d!1493596 d!1493588)))

(assert (=> bs!1092340 (= lambda!209271 lambda!209268)))

(assert (=> d!1493596 (contains!15746 (extractMap!1910 (toList!5658 lt!1859028)) key!4653)))

(declare-fun lt!1859288 () Unit!125525)

(declare-fun choose!32776 (ListLongMap!4187 K!13860 Hashable!6253) Unit!125525)

(assert (=> d!1493596 (= lt!1859288 (choose!32776 lt!1859028 key!4653 hashF!1323))))

(assert (=> d!1493596 (forall!11375 (toList!5658 lt!1859028) lambda!209271)))

(assert (=> d!1493596 (= (lemmaListContainsThenExtractedMapContains!476 lt!1859028 key!4653 hashF!1323) lt!1859288)))

(declare-fun bs!1092341 () Bool)

(assert (= bs!1092341 d!1493596))

(declare-fun m!5608015 () Bool)

(assert (=> bs!1092341 m!5608015))

(assert (=> bs!1092341 m!5608015))

(declare-fun m!5608017 () Bool)

(assert (=> bs!1092341 m!5608017))

(declare-fun m!5608019 () Bool)

(assert (=> bs!1092341 m!5608019))

(declare-fun m!5608021 () Bool)

(assert (=> bs!1092341 m!5608021))

(assert (=> b!4697335 d!1493596))

(declare-fun bs!1092342 () Bool)

(declare-fun d!1493598 () Bool)

(assert (= bs!1092342 (and d!1493598 d!1493520)))

(declare-fun lambda!209272 () Int)

(assert (=> bs!1092342 (not (= lambda!209272 lambda!209208))))

(declare-fun bs!1092343 () Bool)

(assert (= bs!1092343 (and d!1493598 d!1493596)))

(assert (=> bs!1092343 (= lambda!209272 lambda!209271)))

(declare-fun bs!1092344 () Bool)

(assert (= bs!1092344 (and d!1493598 d!1493588)))

(assert (=> bs!1092344 (= lambda!209272 lambda!209268)))

(declare-fun bs!1092345 () Bool)

(assert (= bs!1092345 (and d!1493598 start!476000)))

(assert (=> bs!1092345 (= lambda!209272 lambda!209205)))

(declare-fun bs!1092346 () Bool)

(assert (= bs!1092346 (and d!1493598 d!1493576)))

(assert (=> bs!1092346 (= lambda!209272 lambda!209263)))

(declare-fun lt!1859289 () ListMap!5021)

(assert (=> d!1493598 (invariantList!1433 (toList!5657 lt!1859289))))

(declare-fun e!2930377 () ListMap!5021)

(assert (=> d!1493598 (= lt!1859289 e!2930377)))

(declare-fun c!803048 () Bool)

(assert (=> d!1493598 (= c!803048 ((_ is Cons!52494) (Cons!52494 (tuple2!53933 hash!405 lt!1859042) (t!359818 (toList!5658 lm!2023)))))))

(assert (=> d!1493598 (forall!11375 (Cons!52494 (tuple2!53933 hash!405 lt!1859042) (t!359818 (toList!5658 lm!2023))) lambda!209272)))

(assert (=> d!1493598 (= (extractMap!1910 (Cons!52494 (tuple2!53933 hash!405 lt!1859042) (t!359818 (toList!5658 lm!2023)))) lt!1859289)))

(declare-fun b!4697510 () Bool)

(assert (=> b!4697510 (= e!2930377 (addToMapMapFromBucket!1316 (_2!30260 (h!58763 (Cons!52494 (tuple2!53933 hash!405 lt!1859042) (t!359818 (toList!5658 lm!2023))))) (extractMap!1910 (t!359818 (Cons!52494 (tuple2!53933 hash!405 lt!1859042) (t!359818 (toList!5658 lm!2023)))))))))

(declare-fun b!4697511 () Bool)

(assert (=> b!4697511 (= e!2930377 (ListMap!5022 Nil!52493))))

(assert (= (and d!1493598 c!803048) b!4697510))

(assert (= (and d!1493598 (not c!803048)) b!4697511))

(declare-fun m!5608023 () Bool)

(assert (=> d!1493598 m!5608023))

(declare-fun m!5608025 () Bool)

(assert (=> d!1493598 m!5608025))

(declare-fun m!5608027 () Bool)

(assert (=> b!4697510 m!5608027))

(assert (=> b!4697510 m!5608027))

(declare-fun m!5608029 () Bool)

(assert (=> b!4697510 m!5608029))

(assert (=> b!4697335 d!1493598))

(declare-fun d!1493600 () Bool)

(assert (=> d!1493600 (= (eq!1043 (addToMapMapFromBucket!1316 (Cons!52493 lt!1859041 lt!1859022) lt!1859024) (+!2168 (addToMapMapFromBucket!1316 lt!1859022 lt!1859024) lt!1859041)) (= (content!9231 (toList!5657 (addToMapMapFromBucket!1316 (Cons!52493 lt!1859041 lt!1859022) lt!1859024))) (content!9231 (toList!5657 (+!2168 (addToMapMapFromBucket!1316 lt!1859022 lt!1859024) lt!1859041)))))))

(declare-fun bs!1092347 () Bool)

(assert (= bs!1092347 d!1493600))

(declare-fun m!5608031 () Bool)

(assert (=> bs!1092347 m!5608031))

(declare-fun m!5608033 () Bool)

(assert (=> bs!1092347 m!5608033))

(assert (=> b!4697335 d!1493600))

(declare-fun d!1493602 () Bool)

(assert (=> d!1493602 (= (eq!1043 (addToMapMapFromBucket!1316 (Cons!52493 lt!1859020 lt!1859042) lt!1859024) (+!2168 (addToMapMapFromBucket!1316 lt!1859042 lt!1859024) lt!1859020)) (= (content!9231 (toList!5657 (addToMapMapFromBucket!1316 (Cons!52493 lt!1859020 lt!1859042) lt!1859024))) (content!9231 (toList!5657 (+!2168 (addToMapMapFromBucket!1316 lt!1859042 lt!1859024) lt!1859020)))))))

(declare-fun bs!1092348 () Bool)

(assert (= bs!1092348 d!1493602))

(declare-fun m!5608035 () Bool)

(assert (=> bs!1092348 m!5608035))

(declare-fun m!5608037 () Bool)

(assert (=> bs!1092348 m!5608037))

(assert (=> b!4697335 d!1493602))

(declare-fun d!1493604 () Bool)

(declare-fun e!2930382 () Bool)

(assert (=> d!1493604 e!2930382))

(declare-fun res!1982616 () Bool)

(assert (=> d!1493604 (=> res!1982616 e!2930382)))

(declare-fun lt!1859298 () Bool)

(assert (=> d!1493604 (= res!1982616 (not lt!1859298))))

(declare-fun lt!1859300 () Bool)

(assert (=> d!1493604 (= lt!1859298 lt!1859300)))

(declare-fun lt!1859299 () Unit!125525)

(declare-fun e!2930383 () Unit!125525)

(assert (=> d!1493604 (= lt!1859299 e!2930383)))

(declare-fun c!803051 () Bool)

(assert (=> d!1493604 (= c!803051 lt!1859300)))

(declare-fun containsKey!3134 (List!52618 (_ BitVec 64)) Bool)

(assert (=> d!1493604 (= lt!1859300 (containsKey!3134 (toList!5658 lm!2023) lt!1859040))))

(assert (=> d!1493604 (= (contains!15748 lm!2023 lt!1859040) lt!1859298)))

(declare-fun b!4697518 () Bool)

(declare-fun lt!1859301 () Unit!125525)

(assert (=> b!4697518 (= e!2930383 lt!1859301)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1720 (List!52618 (_ BitVec 64)) Unit!125525)

(assert (=> b!4697518 (= lt!1859301 (lemmaContainsKeyImpliesGetValueByKeyDefined!1720 (toList!5658 lm!2023) lt!1859040))))

(declare-datatypes ((Option!12158 0))(
  ( (None!12157) (Some!12157 (v!46624 List!52617)) )
))
(declare-fun isDefined!9413 (Option!12158) Bool)

(declare-fun getValueByKey!1828 (List!52618 (_ BitVec 64)) Option!12158)

(assert (=> b!4697518 (isDefined!9413 (getValueByKey!1828 (toList!5658 lm!2023) lt!1859040))))

(declare-fun b!4697519 () Bool)

(declare-fun Unit!125575 () Unit!125525)

(assert (=> b!4697519 (= e!2930383 Unit!125575)))

(declare-fun b!4697520 () Bool)

(assert (=> b!4697520 (= e!2930382 (isDefined!9413 (getValueByKey!1828 (toList!5658 lm!2023) lt!1859040)))))

(assert (= (and d!1493604 c!803051) b!4697518))

(assert (= (and d!1493604 (not c!803051)) b!4697519))

(assert (= (and d!1493604 (not res!1982616)) b!4697520))

(declare-fun m!5608039 () Bool)

(assert (=> d!1493604 m!5608039))

(declare-fun m!5608041 () Bool)

(assert (=> b!4697518 m!5608041))

(declare-fun m!5608043 () Bool)

(assert (=> b!4697518 m!5608043))

(assert (=> b!4697518 m!5608043))

(declare-fun m!5608045 () Bool)

(assert (=> b!4697518 m!5608045))

(assert (=> b!4697520 m!5608043))

(assert (=> b!4697520 m!5608043))

(assert (=> b!4697520 m!5608045))

(assert (=> b!4697336 d!1493604))

(declare-fun d!1493606 () Bool)

(declare-fun dynLambda!21736 (Int tuple2!53932) Bool)

(assert (=> d!1493606 (dynLambda!21736 lambda!209205 lt!1859031)))

(declare-fun lt!1859304 () Unit!125525)

(declare-fun choose!32777 (List!52618 Int tuple2!53932) Unit!125525)

(assert (=> d!1493606 (= lt!1859304 (choose!32777 (toList!5658 lm!2023) lambda!209205 lt!1859031))))

(declare-fun e!2930386 () Bool)

(assert (=> d!1493606 e!2930386))

(declare-fun res!1982619 () Bool)

(assert (=> d!1493606 (=> (not res!1982619) (not e!2930386))))

(assert (=> d!1493606 (= res!1982619 (forall!11375 (toList!5658 lm!2023) lambda!209205))))

(assert (=> d!1493606 (= (forallContained!3482 (toList!5658 lm!2023) lambda!209205 lt!1859031) lt!1859304)))

(declare-fun b!4697523 () Bool)

(assert (=> b!4697523 (= e!2930386 (contains!15747 (toList!5658 lm!2023) lt!1859031))))

(assert (= (and d!1493606 res!1982619) b!4697523))

(declare-fun b_lambda!177253 () Bool)

(assert (=> (not b_lambda!177253) (not d!1493606)))

(declare-fun m!5608047 () Bool)

(assert (=> d!1493606 m!5608047))

(declare-fun m!5608049 () Bool)

(assert (=> d!1493606 m!5608049))

(assert (=> d!1493606 m!5607631))

(assert (=> b!4697523 m!5607645))

(assert (=> b!4697336 d!1493606))

(declare-fun d!1493608 () Bool)

(declare-fun get!17554 (Option!12158) List!52617)

(assert (=> d!1493608 (= (apply!12367 lm!2023 lt!1859040) (get!17554 (getValueByKey!1828 (toList!5658 lm!2023) lt!1859040)))))

(declare-fun bs!1092349 () Bool)

(assert (= bs!1092349 d!1493608))

(assert (=> bs!1092349 m!5608043))

(assert (=> bs!1092349 m!5608043))

(declare-fun m!5608051 () Bool)

(assert (=> bs!1092349 m!5608051))

(assert (=> b!4697336 d!1493608))

(declare-fun bs!1092364 () Bool)

(declare-fun d!1493610 () Bool)

(assert (= bs!1092364 (and d!1493610 d!1493520)))

(declare-fun lambda!209312 () Int)

(assert (=> bs!1092364 (not (= lambda!209312 lambda!209208))))

(declare-fun bs!1092365 () Bool)

(assert (= bs!1092365 (and d!1493610 d!1493598)))

(assert (=> bs!1092365 (= lambda!209312 lambda!209272)))

(declare-fun bs!1092366 () Bool)

(assert (= bs!1092366 (and d!1493610 d!1493596)))

(assert (=> bs!1092366 (= lambda!209312 lambda!209271)))

(declare-fun bs!1092367 () Bool)

(assert (= bs!1092367 (and d!1493610 d!1493588)))

(assert (=> bs!1092367 (= lambda!209312 lambda!209268)))

(declare-fun bs!1092368 () Bool)

(assert (= bs!1092368 (and d!1493610 start!476000)))

(assert (=> bs!1092368 (= lambda!209312 lambda!209205)))

(declare-fun bs!1092369 () Bool)

(assert (= bs!1092369 (and d!1493610 d!1493576)))

(assert (=> bs!1092369 (= lambda!209312 lambda!209263)))

(declare-fun b!4697551 () Bool)

(declare-fun res!1982640 () Bool)

(declare-fun e!2930402 () Bool)

(assert (=> b!4697551 (=> (not res!1982640) (not e!2930402))))

(assert (=> b!4697551 (= res!1982640 (allKeysSameHashInMap!1798 lm!2023 hashF!1323))))

(declare-fun e!2930401 () Bool)

(declare-fun lt!1859392 () List!52617)

(declare-fun b!4697554 () Bool)

(declare-fun lt!1859386 () (_ BitVec 64))

(assert (=> b!4697554 (= e!2930401 (= (getValueByKey!1828 (toList!5658 lm!2023) lt!1859386) (Some!12157 lt!1859392)))))

(declare-fun b!4697553 () Bool)

(assert (=> b!4697553 (= e!2930402 (isDefined!9410 (getPair!488 (apply!12367 lm!2023 (hash!4137 hashF!1323 key!4653)) key!4653)))))

(declare-fun lt!1859385 () Unit!125525)

(assert (=> b!4697553 (= lt!1859385 (forallContained!3482 (toList!5658 lm!2023) lambda!209312 (tuple2!53933 (hash!4137 hashF!1323 key!4653) (apply!12367 lm!2023 (hash!4137 hashF!1323 key!4653)))))))

(declare-fun lt!1859387 () Unit!125525)

(declare-fun lt!1859389 () Unit!125525)

(assert (=> b!4697553 (= lt!1859387 lt!1859389)))

(assert (=> b!4697553 (contains!15747 (toList!5658 lm!2023) (tuple2!53933 lt!1859386 lt!1859392))))

(assert (=> b!4697553 (= lt!1859389 (lemmaGetValueImpliesTupleContained!293 lm!2023 lt!1859386 lt!1859392))))

(assert (=> b!4697553 e!2930401))

(declare-fun res!1982638 () Bool)

(assert (=> b!4697553 (=> (not res!1982638) (not e!2930401))))

(assert (=> b!4697553 (= res!1982638 (contains!15748 lm!2023 lt!1859386))))

(assert (=> b!4697553 (= lt!1859392 (apply!12367 lm!2023 (hash!4137 hashF!1323 key!4653)))))

(assert (=> b!4697553 (= lt!1859386 (hash!4137 hashF!1323 key!4653))))

(declare-fun lt!1859391 () Unit!125525)

(declare-fun lt!1859388 () Unit!125525)

(assert (=> b!4697553 (= lt!1859391 lt!1859388)))

(assert (=> b!4697553 (contains!15748 lm!2023 (hash!4137 hashF!1323 key!4653))))

(assert (=> b!4697553 (= lt!1859388 (lemmaInGenMapThenLongMapContainsHash!694 lm!2023 key!4653 hashF!1323))))

(assert (=> d!1493610 e!2930402))

(declare-fun res!1982637 () Bool)

(assert (=> d!1493610 (=> (not res!1982637) (not e!2930402))))

(assert (=> d!1493610 (= res!1982637 (forall!11375 (toList!5658 lm!2023) lambda!209312))))

(declare-fun lt!1859390 () Unit!125525)

(declare-fun choose!32778 (ListLongMap!4187 K!13860 Hashable!6253) Unit!125525)

(assert (=> d!1493610 (= lt!1859390 (choose!32778 lm!2023 key!4653 hashF!1323))))

(assert (=> d!1493610 (forall!11375 (toList!5658 lm!2023) lambda!209312)))

(assert (=> d!1493610 (= (lemmaInGenMapThenGetPairDefined!284 lm!2023 key!4653 hashF!1323) lt!1859390)))

(declare-fun b!4697552 () Bool)

(declare-fun res!1982639 () Bool)

(assert (=> b!4697552 (=> (not res!1982639) (not e!2930402))))

(assert (=> b!4697552 (= res!1982639 (contains!15746 (extractMap!1910 (toList!5658 lm!2023)) key!4653))))

(assert (= (and d!1493610 res!1982637) b!4697551))

(assert (= (and b!4697551 res!1982640) b!4697552))

(assert (= (and b!4697552 res!1982639) b!4697553))

(assert (= (and b!4697553 res!1982638) b!4697554))

(declare-fun m!5608101 () Bool)

(assert (=> b!4697554 m!5608101))

(declare-fun m!5608103 () Bool)

(assert (=> d!1493610 m!5608103))

(declare-fun m!5608105 () Bool)

(assert (=> d!1493610 m!5608105))

(assert (=> d!1493610 m!5608103))

(assert (=> b!4697551 m!5607611))

(assert (=> b!4697552 m!5607673))

(assert (=> b!4697552 m!5607673))

(declare-fun m!5608107 () Bool)

(assert (=> b!4697552 m!5608107))

(declare-fun m!5608109 () Bool)

(assert (=> b!4697553 m!5608109))

(declare-fun m!5608111 () Bool)

(assert (=> b!4697553 m!5608111))

(assert (=> b!4697553 m!5607607))

(assert (=> b!4697553 m!5607639))

(assert (=> b!4697553 m!5607607))

(declare-fun m!5608113 () Bool)

(assert (=> b!4697553 m!5608113))

(declare-fun m!5608115 () Bool)

(assert (=> b!4697553 m!5608115))

(declare-fun m!5608119 () Bool)

(assert (=> b!4697553 m!5608119))

(declare-fun m!5608121 () Bool)

(assert (=> b!4697553 m!5608121))

(assert (=> b!4697553 m!5607607))

(declare-fun m!5608123 () Bool)

(assert (=> b!4697553 m!5608123))

(declare-fun m!5608125 () Bool)

(assert (=> b!4697553 m!5608125))

(assert (=> b!4697553 m!5608123))

(assert (=> b!4697553 m!5608119))

(assert (=> b!4697336 d!1493610))

(declare-fun d!1493622 () Bool)

(assert (=> d!1493622 (containsKey!3131 oldBucket!34 key!4653)))

(declare-fun lt!1859404 () Unit!125525)

(declare-fun choose!32779 (List!52617 K!13860 Hashable!6253) Unit!125525)

(assert (=> d!1493622 (= lt!1859404 (choose!32779 oldBucket!34 key!4653 hashF!1323))))

(assert (=> d!1493622 (noDuplicateKeys!1884 oldBucket!34)))

(assert (=> d!1493622 (= (lemmaGetPairDefinedThenContainsKey!236 oldBucket!34 key!4653 hashF!1323) lt!1859404)))

(declare-fun bs!1092378 () Bool)

(assert (= bs!1092378 d!1493622))

(assert (=> bs!1092378 m!5607659))

(declare-fun m!5608163 () Bool)

(assert (=> bs!1092378 m!5608163))

(assert (=> bs!1092378 m!5607543))

(assert (=> b!4697336 d!1493622))

(declare-fun b!4697579 () Bool)

(declare-fun e!2930419 () Bool)

(assert (=> b!4697579 (= e!2930419 (not (containsKey!3131 lt!1859046 key!4653)))))

(declare-fun b!4697580 () Bool)

(declare-fun e!2930416 () Option!12155)

(assert (=> b!4697580 (= e!2930416 None!12154)))

(declare-fun b!4697581 () Bool)

(declare-fun e!2930420 () Option!12155)

(assert (=> b!4697581 (= e!2930420 e!2930416)))

(declare-fun c!803060 () Bool)

(assert (=> b!4697581 (= c!803060 ((_ is Cons!52493) lt!1859046))))

(declare-fun b!4697582 () Bool)

(assert (=> b!4697582 (= e!2930420 (Some!12154 (h!58762 lt!1859046)))))

(declare-fun b!4697583 () Bool)

(assert (=> b!4697583 (= e!2930416 (getPair!488 (t!359817 lt!1859046) key!4653))))

(declare-fun d!1493632 () Bool)

(declare-fun e!2930418 () Bool)

(assert (=> d!1493632 e!2930418))

(declare-fun res!1982657 () Bool)

(assert (=> d!1493632 (=> res!1982657 e!2930418)))

(assert (=> d!1493632 (= res!1982657 e!2930419)))

(declare-fun res!1982654 () Bool)

(assert (=> d!1493632 (=> (not res!1982654) (not e!2930419))))

(declare-fun lt!1859407 () Option!12155)

(declare-fun isEmpty!29117 (Option!12155) Bool)

(assert (=> d!1493632 (= res!1982654 (isEmpty!29117 lt!1859407))))

(assert (=> d!1493632 (= lt!1859407 e!2930420)))

(declare-fun c!803061 () Bool)

(assert (=> d!1493632 (= c!803061 (and ((_ is Cons!52493) lt!1859046) (= (_1!30259 (h!58762 lt!1859046)) key!4653)))))

(assert (=> d!1493632 (noDuplicateKeys!1884 lt!1859046)))

(assert (=> d!1493632 (= (getPair!488 lt!1859046 key!4653) lt!1859407)))

(declare-fun b!4697578 () Bool)

(declare-fun res!1982656 () Bool)

(declare-fun e!2930417 () Bool)

(assert (=> b!4697578 (=> (not res!1982656) (not e!2930417))))

(declare-fun get!17555 (Option!12155) tuple2!53930)

(assert (=> b!4697578 (= res!1982656 (= (_1!30259 (get!17555 lt!1859407)) key!4653))))

(declare-fun b!4697584 () Bool)

(assert (=> b!4697584 (= e!2930417 (contains!15751 lt!1859046 (get!17555 lt!1859407)))))

(declare-fun b!4697585 () Bool)

(assert (=> b!4697585 (= e!2930418 e!2930417)))

(declare-fun res!1982655 () Bool)

(assert (=> b!4697585 (=> (not res!1982655) (not e!2930417))))

(assert (=> b!4697585 (= res!1982655 (isDefined!9410 lt!1859407))))

(assert (= (and d!1493632 c!803061) b!4697582))

(assert (= (and d!1493632 (not c!803061)) b!4697581))

(assert (= (and b!4697581 c!803060) b!4697583))

(assert (= (and b!4697581 (not c!803060)) b!4697580))

(assert (= (and d!1493632 res!1982654) b!4697579))

(assert (= (and d!1493632 (not res!1982657)) b!4697585))

(assert (= (and b!4697585 res!1982655) b!4697578))

(assert (= (and b!4697578 res!1982656) b!4697584))

(declare-fun m!5608165 () Bool)

(assert (=> b!4697579 m!5608165))

(declare-fun m!5608167 () Bool)

(assert (=> b!4697584 m!5608167))

(assert (=> b!4697584 m!5608167))

(declare-fun m!5608169 () Bool)

(assert (=> b!4697584 m!5608169))

(assert (=> b!4697578 m!5608167))

(declare-fun m!5608171 () Bool)

(assert (=> d!1493632 m!5608171))

(declare-fun m!5608173 () Bool)

(assert (=> d!1493632 m!5608173))

(declare-fun m!5608175 () Bool)

(assert (=> b!4697583 m!5608175))

(declare-fun m!5608177 () Bool)

(assert (=> b!4697585 m!5608177))

(assert (=> b!4697336 d!1493632))

(declare-fun d!1493634 () Bool)

(assert (=> d!1493634 (= (isDefined!9410 (getPair!488 lt!1859046 key!4653)) (not (isEmpty!29117 (getPair!488 lt!1859046 key!4653))))))

(declare-fun bs!1092379 () Bool)

(assert (= bs!1092379 d!1493634))

(assert (=> bs!1092379 m!5607643))

(declare-fun m!5608179 () Bool)

(assert (=> bs!1092379 m!5608179))

(assert (=> b!4697336 d!1493634))

(declare-fun bs!1092386 () Bool)

(declare-fun d!1493636 () Bool)

(assert (= bs!1092386 (and d!1493636 d!1493520)))

(declare-fun lambda!209319 () Int)

(assert (=> bs!1092386 (not (= lambda!209319 lambda!209208))))

(declare-fun bs!1092387 () Bool)

(assert (= bs!1092387 (and d!1493636 d!1493598)))

(assert (=> bs!1092387 (= lambda!209319 lambda!209272)))

(declare-fun bs!1092388 () Bool)

(assert (= bs!1092388 (and d!1493636 d!1493596)))

(assert (=> bs!1092388 (= lambda!209319 lambda!209271)))

(declare-fun bs!1092389 () Bool)

(assert (= bs!1092389 (and d!1493636 d!1493588)))

(assert (=> bs!1092389 (= lambda!209319 lambda!209268)))

(declare-fun bs!1092390 () Bool)

(assert (= bs!1092390 (and d!1493636 start!476000)))

(assert (=> bs!1092390 (= lambda!209319 lambda!209205)))

(declare-fun bs!1092391 () Bool)

(assert (= bs!1092391 (and d!1493636 d!1493576)))

(assert (=> bs!1092391 (= lambda!209319 lambda!209263)))

(declare-fun bs!1092392 () Bool)

(assert (= bs!1092392 (and d!1493636 d!1493610)))

(assert (=> bs!1092392 (= lambda!209319 lambda!209312)))

(assert (=> d!1493636 (contains!15748 lm!2023 (hash!4137 hashF!1323 key!4653))))

(declare-fun lt!1859415 () Unit!125525)

(declare-fun choose!32780 (ListLongMap!4187 K!13860 Hashable!6253) Unit!125525)

(assert (=> d!1493636 (= lt!1859415 (choose!32780 lm!2023 key!4653 hashF!1323))))

(assert (=> d!1493636 (forall!11375 (toList!5658 lm!2023) lambda!209319)))

(assert (=> d!1493636 (= (lemmaInGenMapThenLongMapContainsHash!694 lm!2023 key!4653 hashF!1323) lt!1859415)))

(declare-fun bs!1092393 () Bool)

(assert (= bs!1092393 d!1493636))

(assert (=> bs!1092393 m!5607607))

(assert (=> bs!1092393 m!5607607))

(assert (=> bs!1092393 m!5608113))

(declare-fun m!5608213 () Bool)

(assert (=> bs!1092393 m!5608213))

(declare-fun m!5608215 () Bool)

(assert (=> bs!1092393 m!5608215))

(assert (=> b!4697336 d!1493636))

(declare-fun d!1493648 () Bool)

(declare-fun lt!1859418 () Bool)

(declare-fun content!9232 (List!52618) (InoxSet tuple2!53932))

(assert (=> d!1493648 (= lt!1859418 (select (content!9232 (toList!5658 lm!2023)) lt!1859031))))

(declare-fun e!2930434 () Bool)

(assert (=> d!1493648 (= lt!1859418 e!2930434)))

(declare-fun res!1982670 () Bool)

(assert (=> d!1493648 (=> (not res!1982670) (not e!2930434))))

(assert (=> d!1493648 (= res!1982670 ((_ is Cons!52494) (toList!5658 lm!2023)))))

(assert (=> d!1493648 (= (contains!15747 (toList!5658 lm!2023) lt!1859031) lt!1859418)))

(declare-fun b!4697601 () Bool)

(declare-fun e!2930435 () Bool)

(assert (=> b!4697601 (= e!2930434 e!2930435)))

(declare-fun res!1982669 () Bool)

(assert (=> b!4697601 (=> res!1982669 e!2930435)))

(assert (=> b!4697601 (= res!1982669 (= (h!58763 (toList!5658 lm!2023)) lt!1859031))))

(declare-fun b!4697602 () Bool)

(assert (=> b!4697602 (= e!2930435 (contains!15747 (t!359818 (toList!5658 lm!2023)) lt!1859031))))

(assert (= (and d!1493648 res!1982670) b!4697601))

(assert (= (and b!4697601 (not res!1982669)) b!4697602))

(declare-fun m!5608219 () Bool)

(assert (=> d!1493648 m!5608219))

(declare-fun m!5608221 () Bool)

(assert (=> d!1493648 m!5608221))

(declare-fun m!5608223 () Bool)

(assert (=> b!4697602 m!5608223))

(assert (=> b!4697336 d!1493648))

(declare-fun d!1493652 () Bool)

(declare-fun res!1982675 () Bool)

(declare-fun e!2930440 () Bool)

(assert (=> d!1493652 (=> res!1982675 e!2930440)))

(assert (=> d!1493652 (= res!1982675 (and ((_ is Cons!52493) (t!359817 oldBucket!34)) (= (_1!30259 (h!58762 (t!359817 oldBucket!34))) key!4653)))))

(assert (=> d!1493652 (= (containsKey!3131 (t!359817 oldBucket!34) key!4653) e!2930440)))

(declare-fun b!4697608 () Bool)

(declare-fun e!2930441 () Bool)

(assert (=> b!4697608 (= e!2930440 e!2930441)))

(declare-fun res!1982676 () Bool)

(assert (=> b!4697608 (=> (not res!1982676) (not e!2930441))))

(assert (=> b!4697608 (= res!1982676 ((_ is Cons!52493) (t!359817 oldBucket!34)))))

(declare-fun b!4697609 () Bool)

(assert (=> b!4697609 (= e!2930441 (containsKey!3131 (t!359817 (t!359817 oldBucket!34)) key!4653))))

(assert (= (and d!1493652 (not res!1982675)) b!4697608))

(assert (= (and b!4697608 res!1982676) b!4697609))

(declare-fun m!5608229 () Bool)

(assert (=> b!4697609 m!5608229))

(assert (=> b!4697336 d!1493652))

(declare-fun d!1493656 () Bool)

(declare-fun res!1982677 () Bool)

(declare-fun e!2930442 () Bool)

(assert (=> d!1493656 (=> res!1982677 e!2930442)))

(assert (=> d!1493656 (= res!1982677 (and ((_ is Cons!52493) oldBucket!34) (= (_1!30259 (h!58762 oldBucket!34)) key!4653)))))

(assert (=> d!1493656 (= (containsKey!3131 oldBucket!34 key!4653) e!2930442)))

(declare-fun b!4697610 () Bool)

(declare-fun e!2930443 () Bool)

(assert (=> b!4697610 (= e!2930442 e!2930443)))

(declare-fun res!1982678 () Bool)

(assert (=> b!4697610 (=> (not res!1982678) (not e!2930443))))

(assert (=> b!4697610 (= res!1982678 ((_ is Cons!52493) oldBucket!34))))

(declare-fun b!4697611 () Bool)

(assert (=> b!4697611 (= e!2930443 (containsKey!3131 (t!359817 oldBucket!34) key!4653))))

(assert (= (and d!1493656 (not res!1982677)) b!4697610))

(assert (= (and b!4697610 res!1982678) b!4697611))

(assert (=> b!4697611 m!5607651))

(assert (=> b!4697336 d!1493656))

(declare-fun d!1493658 () Bool)

(assert (=> d!1493658 (contains!15747 (toList!5658 lm!2023) (tuple2!53933 lt!1859040 lt!1859046))))

(declare-fun lt!1859424 () Unit!125525)

(declare-fun choose!32781 (ListLongMap!4187 (_ BitVec 64) List!52617) Unit!125525)

(assert (=> d!1493658 (= lt!1859424 (choose!32781 lm!2023 lt!1859040 lt!1859046))))

(assert (=> d!1493658 (contains!15748 lm!2023 lt!1859040)))

(assert (=> d!1493658 (= (lemmaGetValueImpliesTupleContained!293 lm!2023 lt!1859040 lt!1859046) lt!1859424)))

(declare-fun bs!1092396 () Bool)

(assert (= bs!1092396 d!1493658))

(declare-fun m!5608231 () Bool)

(assert (=> bs!1092396 m!5608231))

(declare-fun m!5608233 () Bool)

(assert (=> bs!1092396 m!5608233))

(assert (=> bs!1092396 m!5607653))

(assert (=> b!4697336 d!1493658))

(declare-fun d!1493660 () Bool)

(assert (=> d!1493660 (= (eq!1043 (extractMap!1910 (Cons!52494 lt!1859044 lt!1859045)) (-!688 (extractMap!1910 (Cons!52494 lt!1859025 lt!1859045)) key!4653)) (= (content!9231 (toList!5657 (extractMap!1910 (Cons!52494 lt!1859044 lt!1859045)))) (content!9231 (toList!5657 (-!688 (extractMap!1910 (Cons!52494 lt!1859025 lt!1859045)) key!4653)))))))

(declare-fun bs!1092397 () Bool)

(assert (= bs!1092397 d!1493660))

(declare-fun m!5608235 () Bool)

(assert (=> bs!1092397 m!5608235))

(declare-fun m!5608237 () Bool)

(assert (=> bs!1092397 m!5608237))

(assert (=> b!4697347 d!1493660))

(declare-fun d!1493662 () Bool)

(assert (=> d!1493662 (= (eq!1043 lt!1859037 lt!1859051) (= (content!9231 (toList!5657 lt!1859037)) (content!9231 (toList!5657 lt!1859051))))))

(declare-fun bs!1092398 () Bool)

(assert (= bs!1092398 d!1493662))

(declare-fun m!5608239 () Bool)

(assert (=> bs!1092398 m!5608239))

(declare-fun m!5608241 () Bool)

(assert (=> bs!1092398 m!5608241))

(assert (=> b!4697347 d!1493662))

(declare-fun bs!1092399 () Bool)

(declare-fun d!1493664 () Bool)

(assert (= bs!1092399 (and d!1493664 d!1493520)))

(declare-fun lambda!209320 () Int)

(assert (=> bs!1092399 (not (= lambda!209320 lambda!209208))))

(declare-fun bs!1092400 () Bool)

(assert (= bs!1092400 (and d!1493664 d!1493598)))

(assert (=> bs!1092400 (= lambda!209320 lambda!209272)))

(declare-fun bs!1092401 () Bool)

(assert (= bs!1092401 (and d!1493664 d!1493596)))

(assert (=> bs!1092401 (= lambda!209320 lambda!209271)))

(declare-fun bs!1092402 () Bool)

(assert (= bs!1092402 (and d!1493664 start!476000)))

(assert (=> bs!1092402 (= lambda!209320 lambda!209205)))

(declare-fun bs!1092403 () Bool)

(assert (= bs!1092403 (and d!1493664 d!1493576)))

(assert (=> bs!1092403 (= lambda!209320 lambda!209263)))

(declare-fun bs!1092404 () Bool)

(assert (= bs!1092404 (and d!1493664 d!1493610)))

(assert (=> bs!1092404 (= lambda!209320 lambda!209312)))

(declare-fun bs!1092405 () Bool)

(assert (= bs!1092405 (and d!1493664 d!1493636)))

(assert (=> bs!1092405 (= lambda!209320 lambda!209319)))

(declare-fun bs!1092406 () Bool)

(assert (= bs!1092406 (and d!1493664 d!1493588)))

(assert (=> bs!1092406 (= lambda!209320 lambda!209268)))

(declare-fun lt!1859425 () ListMap!5021)

(assert (=> d!1493664 (invariantList!1433 (toList!5657 lt!1859425))))

(declare-fun e!2930444 () ListMap!5021)

(assert (=> d!1493664 (= lt!1859425 e!2930444)))

(declare-fun c!803064 () Bool)

(assert (=> d!1493664 (= c!803064 ((_ is Cons!52494) (Cons!52494 lt!1859044 lt!1859045)))))

(assert (=> d!1493664 (forall!11375 (Cons!52494 lt!1859044 lt!1859045) lambda!209320)))

(assert (=> d!1493664 (= (extractMap!1910 (Cons!52494 lt!1859044 lt!1859045)) lt!1859425)))

(declare-fun b!4697613 () Bool)

(assert (=> b!4697613 (= e!2930444 (addToMapMapFromBucket!1316 (_2!30260 (h!58763 (Cons!52494 lt!1859044 lt!1859045))) (extractMap!1910 (t!359818 (Cons!52494 lt!1859044 lt!1859045)))))))

(declare-fun b!4697614 () Bool)

(assert (=> b!4697614 (= e!2930444 (ListMap!5022 Nil!52493))))

(assert (= (and d!1493664 c!803064) b!4697613))

(assert (= (and d!1493664 (not c!803064)) b!4697614))

(declare-fun m!5608243 () Bool)

(assert (=> d!1493664 m!5608243))

(declare-fun m!5608245 () Bool)

(assert (=> d!1493664 m!5608245))

(declare-fun m!5608247 () Bool)

(assert (=> b!4697613 m!5608247))

(assert (=> b!4697613 m!5608247))

(declare-fun m!5608249 () Bool)

(assert (=> b!4697613 m!5608249))

(assert (=> b!4697347 d!1493664))

(declare-fun bs!1092407 () Bool)

(declare-fun d!1493666 () Bool)

(assert (= bs!1092407 (and d!1493666 d!1493520)))

(declare-fun lambda!209323 () Int)

(assert (=> bs!1092407 (not (= lambda!209323 lambda!209208))))

(declare-fun bs!1092408 () Bool)

(assert (= bs!1092408 (and d!1493666 d!1493598)))

(assert (=> bs!1092408 (= lambda!209323 lambda!209272)))

(declare-fun bs!1092409 () Bool)

(assert (= bs!1092409 (and d!1493666 d!1493596)))

(assert (=> bs!1092409 (= lambda!209323 lambda!209271)))

(declare-fun bs!1092410 () Bool)

(assert (= bs!1092410 (and d!1493666 d!1493664)))

(assert (=> bs!1092410 (= lambda!209323 lambda!209320)))

(declare-fun bs!1092411 () Bool)

(assert (= bs!1092411 (and d!1493666 start!476000)))

(assert (=> bs!1092411 (= lambda!209323 lambda!209205)))

(declare-fun bs!1092412 () Bool)

(assert (= bs!1092412 (and d!1493666 d!1493576)))

(assert (=> bs!1092412 (= lambda!209323 lambda!209263)))

(declare-fun bs!1092413 () Bool)

(assert (= bs!1092413 (and d!1493666 d!1493610)))

(assert (=> bs!1092413 (= lambda!209323 lambda!209312)))

(declare-fun bs!1092414 () Bool)

(assert (= bs!1092414 (and d!1493666 d!1493636)))

(assert (=> bs!1092414 (= lambda!209323 lambda!209319)))

(declare-fun bs!1092415 () Bool)

(assert (= bs!1092415 (and d!1493666 d!1493588)))

(assert (=> bs!1092415 (= lambda!209323 lambda!209268)))

(assert (=> d!1493666 (eq!1043 (extractMap!1910 (Cons!52494 (tuple2!53933 hash!405 lt!1859022) (tail!8678 (toList!5658 lt!1859028)))) (-!688 (extractMap!1910 (Cons!52494 (tuple2!53933 hash!405 (t!359817 oldBucket!34)) (tail!8678 (toList!5658 lt!1859028)))) key!4653))))

(declare-fun lt!1859428 () Unit!125525)

(declare-fun choose!32782 (ListLongMap!4187 (_ BitVec 64) List!52617 List!52617 K!13860 Hashable!6253) Unit!125525)

(assert (=> d!1493666 (= lt!1859428 (choose!32782 lt!1859028 hash!405 (t!359817 oldBucket!34) lt!1859022 key!4653 hashF!1323))))

(assert (=> d!1493666 (forall!11375 (toList!5658 lt!1859028) lambda!209323)))

(assert (=> d!1493666 (= (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMapOneHashIsHead!58 lt!1859028 hash!405 (t!359817 oldBucket!34) lt!1859022 key!4653 hashF!1323) lt!1859428)))

(declare-fun bs!1092416 () Bool)

(assert (= bs!1092416 d!1493666))

(declare-fun m!5608251 () Bool)

(assert (=> bs!1092416 m!5608251))

(declare-fun m!5608253 () Bool)

(assert (=> bs!1092416 m!5608253))

(declare-fun m!5608255 () Bool)

(assert (=> bs!1092416 m!5608255))

(declare-fun m!5608257 () Bool)

(assert (=> bs!1092416 m!5608257))

(declare-fun m!5608259 () Bool)

(assert (=> bs!1092416 m!5608259))

(assert (=> bs!1092416 m!5608255))

(declare-fun m!5608261 () Bool)

(assert (=> bs!1092416 m!5608261))

(assert (=> bs!1092416 m!5608253))

(assert (=> bs!1092416 m!5608257))

(declare-fun m!5608263 () Bool)

(assert (=> bs!1092416 m!5608263))

(assert (=> b!4697347 d!1493666))

(declare-fun bs!1092417 () Bool)

(declare-fun d!1493668 () Bool)

(assert (= bs!1092417 (and d!1493668 d!1493520)))

(declare-fun lambda!209324 () Int)

(assert (=> bs!1092417 (not (= lambda!209324 lambda!209208))))

(declare-fun bs!1092418 () Bool)

(assert (= bs!1092418 (and d!1493668 d!1493598)))

(assert (=> bs!1092418 (= lambda!209324 lambda!209272)))

(declare-fun bs!1092419 () Bool)

(assert (= bs!1092419 (and d!1493668 d!1493596)))

(assert (=> bs!1092419 (= lambda!209324 lambda!209271)))

(declare-fun bs!1092420 () Bool)

(assert (= bs!1092420 (and d!1493668 d!1493666)))

(assert (=> bs!1092420 (= lambda!209324 lambda!209323)))

(declare-fun bs!1092421 () Bool)

(assert (= bs!1092421 (and d!1493668 d!1493664)))

(assert (=> bs!1092421 (= lambda!209324 lambda!209320)))

(declare-fun bs!1092422 () Bool)

(assert (= bs!1092422 (and d!1493668 start!476000)))

(assert (=> bs!1092422 (= lambda!209324 lambda!209205)))

(declare-fun bs!1092423 () Bool)

(assert (= bs!1092423 (and d!1493668 d!1493576)))

(assert (=> bs!1092423 (= lambda!209324 lambda!209263)))

(declare-fun bs!1092424 () Bool)

(assert (= bs!1092424 (and d!1493668 d!1493610)))

(assert (=> bs!1092424 (= lambda!209324 lambda!209312)))

(declare-fun bs!1092425 () Bool)

(assert (= bs!1092425 (and d!1493668 d!1493636)))

(assert (=> bs!1092425 (= lambda!209324 lambda!209319)))

(declare-fun bs!1092426 () Bool)

(assert (= bs!1092426 (and d!1493668 d!1493588)))

(assert (=> bs!1092426 (= lambda!209324 lambda!209268)))

(declare-fun lt!1859429 () ListMap!5021)

(assert (=> d!1493668 (invariantList!1433 (toList!5657 lt!1859429))))

(declare-fun e!2930445 () ListMap!5021)

(assert (=> d!1493668 (= lt!1859429 e!2930445)))

(declare-fun c!803065 () Bool)

(assert (=> d!1493668 (= c!803065 ((_ is Cons!52494) (Cons!52494 lt!1859025 lt!1859045)))))

(assert (=> d!1493668 (forall!11375 (Cons!52494 lt!1859025 lt!1859045) lambda!209324)))

(assert (=> d!1493668 (= (extractMap!1910 (Cons!52494 lt!1859025 lt!1859045)) lt!1859429)))

(declare-fun b!4697615 () Bool)

(assert (=> b!4697615 (= e!2930445 (addToMapMapFromBucket!1316 (_2!30260 (h!58763 (Cons!52494 lt!1859025 lt!1859045))) (extractMap!1910 (t!359818 (Cons!52494 lt!1859025 lt!1859045)))))))

(declare-fun b!4697616 () Bool)

(assert (=> b!4697616 (= e!2930445 (ListMap!5022 Nil!52493))))

(assert (= (and d!1493668 c!803065) b!4697615))

(assert (= (and d!1493668 (not c!803065)) b!4697616))

(declare-fun m!5608265 () Bool)

(assert (=> d!1493668 m!5608265))

(declare-fun m!5608267 () Bool)

(assert (=> d!1493668 m!5608267))

(declare-fun m!5608269 () Bool)

(assert (=> b!4697615 m!5608269))

(assert (=> b!4697615 m!5608269))

(declare-fun m!5608271 () Bool)

(assert (=> b!4697615 m!5608271))

(assert (=> b!4697347 d!1493668))

(declare-fun bs!1092427 () Bool)

(declare-fun d!1493670 () Bool)

(assert (= bs!1092427 (and d!1493670 d!1493520)))

(declare-fun lambda!209325 () Int)

(assert (=> bs!1092427 (not (= lambda!209325 lambda!209208))))

(declare-fun bs!1092428 () Bool)

(assert (= bs!1092428 (and d!1493670 d!1493598)))

(assert (=> bs!1092428 (= lambda!209325 lambda!209272)))

(declare-fun bs!1092429 () Bool)

(assert (= bs!1092429 (and d!1493670 d!1493596)))

(assert (=> bs!1092429 (= lambda!209325 lambda!209271)))

(declare-fun bs!1092430 () Bool)

(assert (= bs!1092430 (and d!1493670 d!1493666)))

(assert (=> bs!1092430 (= lambda!209325 lambda!209323)))

(declare-fun bs!1092431 () Bool)

(assert (= bs!1092431 (and d!1493670 d!1493664)))

(assert (=> bs!1092431 (= lambda!209325 lambda!209320)))

(declare-fun bs!1092432 () Bool)

(assert (= bs!1092432 (and d!1493670 start!476000)))

(assert (=> bs!1092432 (= lambda!209325 lambda!209205)))

(declare-fun bs!1092433 () Bool)

(assert (= bs!1092433 (and d!1493670 d!1493576)))

(assert (=> bs!1092433 (= lambda!209325 lambda!209263)))

(declare-fun bs!1092434 () Bool)

(assert (= bs!1092434 (and d!1493670 d!1493668)))

(assert (=> bs!1092434 (= lambda!209325 lambda!209324)))

(declare-fun bs!1092435 () Bool)

(assert (= bs!1092435 (and d!1493670 d!1493610)))

(assert (=> bs!1092435 (= lambda!209325 lambda!209312)))

(declare-fun bs!1092436 () Bool)

(assert (= bs!1092436 (and d!1493670 d!1493636)))

(assert (=> bs!1092436 (= lambda!209325 lambda!209319)))

(declare-fun bs!1092437 () Bool)

(assert (= bs!1092437 (and d!1493670 d!1493588)))

(assert (=> bs!1092437 (= lambda!209325 lambda!209268)))

(declare-fun lt!1859430 () ListMap!5021)

(assert (=> d!1493670 (invariantList!1433 (toList!5657 lt!1859430))))

(declare-fun e!2930446 () ListMap!5021)

(assert (=> d!1493670 (= lt!1859430 e!2930446)))

(declare-fun c!803066 () Bool)

(assert (=> d!1493670 (= c!803066 ((_ is Cons!52494) (Cons!52494 lt!1859044 (t!359818 (toList!5658 lm!2023)))))))

(assert (=> d!1493670 (forall!11375 (Cons!52494 lt!1859044 (t!359818 (toList!5658 lm!2023))) lambda!209325)))

(assert (=> d!1493670 (= (extractMap!1910 (Cons!52494 lt!1859044 (t!359818 (toList!5658 lm!2023)))) lt!1859430)))

(declare-fun b!4697617 () Bool)

(assert (=> b!4697617 (= e!2930446 (addToMapMapFromBucket!1316 (_2!30260 (h!58763 (Cons!52494 lt!1859044 (t!359818 (toList!5658 lm!2023))))) (extractMap!1910 (t!359818 (Cons!52494 lt!1859044 (t!359818 (toList!5658 lm!2023)))))))))

(declare-fun b!4697618 () Bool)

(assert (=> b!4697618 (= e!2930446 (ListMap!5022 Nil!52493))))

(assert (= (and d!1493670 c!803066) b!4697617))

(assert (= (and d!1493670 (not c!803066)) b!4697618))

(declare-fun m!5608273 () Bool)

(assert (=> d!1493670 m!5608273))

(declare-fun m!5608275 () Bool)

(assert (=> d!1493670 m!5608275))

(declare-fun m!5608277 () Bool)

(assert (=> b!4697617 m!5608277))

(assert (=> b!4697617 m!5608277))

(declare-fun m!5608279 () Bool)

(assert (=> b!4697617 m!5608279))

(assert (=> b!4697347 d!1493670))

(declare-fun d!1493672 () Bool)

(declare-fun e!2930453 () Bool)

(assert (=> d!1493672 e!2930453))

(declare-fun res!1982689 () Bool)

(assert (=> d!1493672 (=> (not res!1982689) (not e!2930453))))

(declare-fun lt!1859449 () ListMap!5021)

(assert (=> d!1493672 (= res!1982689 (not (contains!15746 lt!1859449 key!4653)))))

(declare-fun removePresrvNoDuplicatedKeys!355 (List!52617 K!13860) List!52617)

(assert (=> d!1493672 (= lt!1859449 (ListMap!5022 (removePresrvNoDuplicatedKeys!355 (toList!5657 (extractMap!1910 (Cons!52494 lt!1859025 lt!1859045))) key!4653)))))

(assert (=> d!1493672 (= (-!688 (extractMap!1910 (Cons!52494 lt!1859025 lt!1859045)) key!4653) lt!1859449)))

(declare-fun b!4697629 () Bool)

(declare-fun content!9233 (List!52619) (InoxSet K!13860))

(assert (=> b!4697629 (= e!2930453 (= ((_ map and) (content!9233 (keys!18766 (extractMap!1910 (Cons!52494 lt!1859025 lt!1859045)))) ((_ map not) (store ((as const (Array K!13860 Bool)) false) key!4653 true))) (content!9233 (keys!18766 lt!1859449))))))

(assert (= (and d!1493672 res!1982689) b!4697629))

(declare-fun m!5608281 () Bool)

(assert (=> d!1493672 m!5608281))

(declare-fun m!5608283 () Bool)

(assert (=> d!1493672 m!5608283))

(declare-fun m!5608285 () Bool)

(assert (=> b!4697629 m!5608285))

(assert (=> b!4697629 m!5607555))

(declare-fun m!5608287 () Bool)

(assert (=> b!4697629 m!5608287))

(assert (=> b!4697629 m!5608285))

(declare-fun m!5608289 () Bool)

(assert (=> b!4697629 m!5608289))

(declare-fun m!5608291 () Bool)

(assert (=> b!4697629 m!5608291))

(assert (=> b!4697629 m!5608287))

(declare-fun m!5608293 () Bool)

(assert (=> b!4697629 m!5608293))

(assert (=> b!4697347 d!1493672))

(declare-fun d!1493674 () Bool)

(declare-fun e!2930454 () Bool)

(assert (=> d!1493674 e!2930454))

(declare-fun res!1982690 () Bool)

(assert (=> d!1493674 (=> (not res!1982690) (not e!2930454))))

(declare-fun lt!1859450 () ListMap!5021)

(assert (=> d!1493674 (= res!1982690 (not (contains!15746 lt!1859450 key!4653)))))

(assert (=> d!1493674 (= lt!1859450 (ListMap!5022 (removePresrvNoDuplicatedKeys!355 (toList!5657 lt!1859029) key!4653)))))

(assert (=> d!1493674 (= (-!688 lt!1859029 key!4653) lt!1859450)))

(declare-fun b!4697630 () Bool)

(assert (=> b!4697630 (= e!2930454 (= ((_ map and) (content!9233 (keys!18766 lt!1859029)) ((_ map not) (store ((as const (Array K!13860 Bool)) false) key!4653 true))) (content!9233 (keys!18766 lt!1859450))))))

(assert (= (and d!1493674 res!1982690) b!4697630))

(declare-fun m!5608295 () Bool)

(assert (=> d!1493674 m!5608295))

(declare-fun m!5608297 () Bool)

(assert (=> d!1493674 m!5608297))

(declare-fun m!5608299 () Bool)

(assert (=> b!4697630 m!5608299))

(assert (=> b!4697630 m!5607855))

(assert (=> b!4697630 m!5608299))

(declare-fun m!5608301 () Bool)

(assert (=> b!4697630 m!5608301))

(assert (=> b!4697630 m!5608291))

(assert (=> b!4697630 m!5607855))

(declare-fun m!5608303 () Bool)

(assert (=> b!4697630 m!5608303))

(assert (=> b!4697347 d!1493674))

(declare-fun d!1493676 () Bool)

(assert (=> d!1493676 (= (tail!8678 lt!1859023) (t!359818 lt!1859023))))

(assert (=> b!4697347 d!1493676))

(declare-fun d!1493678 () Bool)

(declare-fun hash!4140 (Hashable!6253 K!13860) (_ BitVec 64))

(assert (=> d!1493678 (= (hash!4137 hashF!1323 key!4653) (hash!4140 hashF!1323 key!4653))))

(declare-fun bs!1092438 () Bool)

(assert (= bs!1092438 d!1493678))

(declare-fun m!5608305 () Bool)

(assert (=> bs!1092438 m!5608305))

(assert (=> b!4697348 d!1493678))

(declare-fun b!4697635 () Bool)

(declare-fun e!2930458 () List!52617)

(assert (=> b!4697635 (= e!2930458 (t!359817 (t!359817 oldBucket!34)))))

(declare-fun d!1493680 () Bool)

(declare-fun lt!1859459 () List!52617)

(assert (=> d!1493680 (not (containsKey!3131 lt!1859459 key!4653))))

(assert (=> d!1493680 (= lt!1859459 e!2930458)))

(declare-fun c!803068 () Bool)

(assert (=> d!1493680 (= c!803068 (and ((_ is Cons!52493) (t!359817 oldBucket!34)) (= (_1!30259 (h!58762 (t!359817 oldBucket!34))) key!4653)))))

(assert (=> d!1493680 (noDuplicateKeys!1884 (t!359817 oldBucket!34))))

(assert (=> d!1493680 (= (removePairForKey!1479 (t!359817 oldBucket!34) key!4653) lt!1859459)))

(declare-fun b!4697636 () Bool)

(declare-fun e!2930457 () List!52617)

(assert (=> b!4697636 (= e!2930458 e!2930457)))

(declare-fun c!803067 () Bool)

(assert (=> b!4697636 (= c!803067 ((_ is Cons!52493) (t!359817 oldBucket!34)))))

(declare-fun b!4697638 () Bool)

(assert (=> b!4697638 (= e!2930457 Nil!52493)))

(declare-fun b!4697637 () Bool)

(assert (=> b!4697637 (= e!2930457 (Cons!52493 (h!58762 (t!359817 oldBucket!34)) (removePairForKey!1479 (t!359817 (t!359817 oldBucket!34)) key!4653)))))

(assert (= (and d!1493680 c!803068) b!4697635))

(assert (= (and d!1493680 (not c!803068)) b!4697636))

(assert (= (and b!4697636 c!803067) b!4697637))

(assert (= (and b!4697636 (not c!803067)) b!4697638))

(declare-fun m!5608307 () Bool)

(assert (=> d!1493680 m!5608307))

(declare-fun m!5608309 () Bool)

(assert (=> d!1493680 m!5608309))

(declare-fun m!5608311 () Bool)

(assert (=> b!4697637 m!5608311))

(assert (=> b!4697337 d!1493680))

(declare-fun d!1493682 () Bool)

(declare-fun res!1982699 () Bool)

(declare-fun e!2930463 () Bool)

(assert (=> d!1493682 (=> res!1982699 e!2930463)))

(assert (=> d!1493682 (= res!1982699 ((_ is Nil!52494) (toList!5658 lm!2023)))))

(assert (=> d!1493682 (= (forall!11375 (toList!5658 lm!2023) lambda!209205) e!2930463)))

(declare-fun b!4697643 () Bool)

(declare-fun e!2930464 () Bool)

(assert (=> b!4697643 (= e!2930463 e!2930464)))

(declare-fun res!1982700 () Bool)

(assert (=> b!4697643 (=> (not res!1982700) (not e!2930464))))

(assert (=> b!4697643 (= res!1982700 (dynLambda!21736 lambda!209205 (h!58763 (toList!5658 lm!2023))))))

(declare-fun b!4697644 () Bool)

(assert (=> b!4697644 (= e!2930464 (forall!11375 (t!359818 (toList!5658 lm!2023)) lambda!209205))))

(assert (= (and d!1493682 (not res!1982699)) b!4697643))

(assert (= (and b!4697643 res!1982700) b!4697644))

(declare-fun b_lambda!177255 () Bool)

(assert (=> (not b_lambda!177255) (not b!4697643)))

(declare-fun m!5608337 () Bool)

(assert (=> b!4697643 m!5608337))

(declare-fun m!5608339 () Bool)

(assert (=> b!4697644 m!5608339))

(assert (=> start!476000 d!1493682))

(declare-fun d!1493686 () Bool)

(declare-fun isStrictlySorted!673 (List!52618) Bool)

(assert (=> d!1493686 (= (inv!67734 lm!2023) (isStrictlySorted!673 (toList!5658 lm!2023)))))

(declare-fun bs!1092447 () Bool)

(assert (= bs!1092447 d!1493686))

(declare-fun m!5608341 () Bool)

(assert (=> bs!1092447 m!5608341))

(assert (=> start!476000 d!1493686))

(declare-fun b!4697645 () Bool)

(declare-fun e!2930466 () List!52617)

(assert (=> b!4697645 (= e!2930466 (t!359817 oldBucket!34))))

(declare-fun d!1493688 () Bool)

(declare-fun lt!1859460 () List!52617)

(assert (=> d!1493688 (not (containsKey!3131 lt!1859460 key!4653))))

(assert (=> d!1493688 (= lt!1859460 e!2930466)))

(declare-fun c!803070 () Bool)

(assert (=> d!1493688 (= c!803070 (and ((_ is Cons!52493) oldBucket!34) (= (_1!30259 (h!58762 oldBucket!34)) key!4653)))))

(assert (=> d!1493688 (noDuplicateKeys!1884 oldBucket!34)))

(assert (=> d!1493688 (= (removePairForKey!1479 oldBucket!34 key!4653) lt!1859460)))

(declare-fun b!4697646 () Bool)

(declare-fun e!2930465 () List!52617)

(assert (=> b!4697646 (= e!2930466 e!2930465)))

(declare-fun c!803069 () Bool)

(assert (=> b!4697646 (= c!803069 ((_ is Cons!52493) oldBucket!34))))

(declare-fun b!4697648 () Bool)

(assert (=> b!4697648 (= e!2930465 Nil!52493)))

(declare-fun b!4697647 () Bool)

(assert (=> b!4697647 (= e!2930465 (Cons!52493 (h!58762 oldBucket!34) (removePairForKey!1479 (t!359817 oldBucket!34) key!4653)))))

(assert (= (and d!1493688 c!803070) b!4697645))

(assert (= (and d!1493688 (not c!803070)) b!4697646))

(assert (= (and b!4697646 c!803069) b!4697647))

(assert (= (and b!4697646 (not c!803069)) b!4697648))

(declare-fun m!5608343 () Bool)

(assert (=> d!1493688 m!5608343))

(assert (=> d!1493688 m!5607543))

(assert (=> b!4697647 m!5607567))

(assert (=> b!4697349 d!1493688))

(declare-fun bs!1092448 () Bool)

(declare-fun b!4697657 () Bool)

(assert (= bs!1092448 (and b!4697657 b!4697497)))

(declare-fun lambda!209333 () Int)

(assert (=> bs!1092448 (= lambda!209333 lambda!209264)))

(declare-fun bs!1092449 () Bool)

(assert (= bs!1092449 (and b!4697657 b!4697395)))

(assert (=> bs!1092449 (= (= lt!1859024 lt!1859120) (= lambda!209333 lambda!209250))))

(declare-fun bs!1092450 () Bool)

(assert (= bs!1092450 (and b!4697657 b!4697404)))

(assert (=> bs!1092450 (= lambda!209333 lambda!209253)))

(declare-fun bs!1092451 () Bool)

(assert (= bs!1092451 (and b!4697657 d!1493580)))

(assert (=> bs!1092451 (= (= lt!1859024 lt!1859251) (= lambda!209333 lambda!209267))))

(declare-fun bs!1092452 () Bool)

(assert (= bs!1092452 (and b!4697657 d!1493554)))

(assert (=> bs!1092452 (= (= lt!1859024 lt!1859139) (= lambda!209333 lambda!209255))))

(declare-fun bs!1092453 () Bool)

(assert (= bs!1092453 (and b!4697657 b!4697407)))

(assert (=> bs!1092453 (= lambda!209333 lambda!209252)))

(declare-fun bs!1092454 () Bool)

(assert (= bs!1092454 (and b!4697657 b!4697472)))

(assert (=> bs!1092454 (= lambda!209333 lambda!209257)))

(assert (=> bs!1092450 (= (= lt!1859024 lt!1859142) (= lambda!209333 lambda!209254))))

(assert (=> bs!1092449 (= lambda!209333 lambda!209248)))

(declare-fun bs!1092455 () Bool)

(assert (= bs!1092455 (and b!4697657 b!4697494)))

(assert (=> bs!1092455 (= (= lt!1859024 lt!1859254) (= lambda!209333 lambda!209266))))

(declare-fun bs!1092456 () Bool)

(assert (= bs!1092456 (and b!4697657 b!4697469)))

(assert (=> bs!1092456 (= (= lt!1859024 lt!1859220) (= lambda!209333 lambda!209259))))

(assert (=> bs!1092456 (= lambda!209333 lambda!209258)))

(declare-fun bs!1092457 () Bool)

(assert (= bs!1092457 (and b!4697657 d!1493528)))

(assert (=> bs!1092457 (= (= lt!1859024 lt!1859117) (= lambda!209333 lambda!209251))))

(assert (=> bs!1092455 (= lambda!209333 lambda!209265)))

(declare-fun bs!1092458 () Bool)

(assert (= bs!1092458 (and b!4697657 d!1493566)))

(assert (=> bs!1092458 (= (= lt!1859024 lt!1859217) (= lambda!209333 lambda!209260))))

(declare-fun bs!1092459 () Bool)

(assert (= bs!1092459 (and b!4697657 b!4697398)))

(assert (=> bs!1092459 (= lambda!209333 lambda!209247)))

(assert (=> b!4697657 true))

(declare-fun bs!1092460 () Bool)

(declare-fun b!4697654 () Bool)

(assert (= bs!1092460 (and b!4697654 b!4697497)))

(declare-fun lambda!209334 () Int)

(assert (=> bs!1092460 (= lambda!209334 lambda!209264)))

(declare-fun bs!1092461 () Bool)

(assert (= bs!1092461 (and b!4697654 b!4697657)))

(assert (=> bs!1092461 (= lambda!209334 lambda!209333)))

(declare-fun bs!1092462 () Bool)

(assert (= bs!1092462 (and b!4697654 b!4697395)))

(assert (=> bs!1092462 (= (= lt!1859024 lt!1859120) (= lambda!209334 lambda!209250))))

(declare-fun bs!1092463 () Bool)

(assert (= bs!1092463 (and b!4697654 b!4697404)))

(assert (=> bs!1092463 (= lambda!209334 lambda!209253)))

(declare-fun bs!1092464 () Bool)

(assert (= bs!1092464 (and b!4697654 d!1493580)))

(assert (=> bs!1092464 (= (= lt!1859024 lt!1859251) (= lambda!209334 lambda!209267))))

(declare-fun bs!1092465 () Bool)

(assert (= bs!1092465 (and b!4697654 d!1493554)))

(assert (=> bs!1092465 (= (= lt!1859024 lt!1859139) (= lambda!209334 lambda!209255))))

(declare-fun bs!1092466 () Bool)

(assert (= bs!1092466 (and b!4697654 b!4697407)))

(assert (=> bs!1092466 (= lambda!209334 lambda!209252)))

(declare-fun bs!1092467 () Bool)

(assert (= bs!1092467 (and b!4697654 b!4697472)))

(assert (=> bs!1092467 (= lambda!209334 lambda!209257)))

(assert (=> bs!1092463 (= (= lt!1859024 lt!1859142) (= lambda!209334 lambda!209254))))

(assert (=> bs!1092462 (= lambda!209334 lambda!209248)))

(declare-fun bs!1092468 () Bool)

(assert (= bs!1092468 (and b!4697654 b!4697494)))

(assert (=> bs!1092468 (= (= lt!1859024 lt!1859254) (= lambda!209334 lambda!209266))))

(declare-fun bs!1092469 () Bool)

(assert (= bs!1092469 (and b!4697654 b!4697469)))

(assert (=> bs!1092469 (= (= lt!1859024 lt!1859220) (= lambda!209334 lambda!209259))))

(assert (=> bs!1092469 (= lambda!209334 lambda!209258)))

(declare-fun bs!1092470 () Bool)

(assert (= bs!1092470 (and b!4697654 d!1493528)))

(assert (=> bs!1092470 (= (= lt!1859024 lt!1859117) (= lambda!209334 lambda!209251))))

(assert (=> bs!1092468 (= lambda!209334 lambda!209265)))

(declare-fun bs!1092471 () Bool)

(assert (= bs!1092471 (and b!4697654 d!1493566)))

(assert (=> bs!1092471 (= (= lt!1859024 lt!1859217) (= lambda!209334 lambda!209260))))

(declare-fun bs!1092472 () Bool)

(assert (= bs!1092472 (and b!4697654 b!4697398)))

(assert (=> bs!1092472 (= lambda!209334 lambda!209247)))

(assert (=> b!4697654 true))

(declare-fun lt!1859472 () ListMap!5021)

(declare-fun lambda!209337 () Int)

(assert (=> bs!1092460 (= (= lt!1859472 lt!1859024) (= lambda!209337 lambda!209264))))

(assert (=> bs!1092461 (= (= lt!1859472 lt!1859024) (= lambda!209337 lambda!209333))))

(assert (=> bs!1092462 (= (= lt!1859472 lt!1859120) (= lambda!209337 lambda!209250))))

(assert (=> bs!1092463 (= (= lt!1859472 lt!1859024) (= lambda!209337 lambda!209253))))

(assert (=> b!4697654 (= (= lt!1859472 lt!1859024) (= lambda!209337 lambda!209334))))

(assert (=> bs!1092464 (= (= lt!1859472 lt!1859251) (= lambda!209337 lambda!209267))))

(assert (=> bs!1092465 (= (= lt!1859472 lt!1859139) (= lambda!209337 lambda!209255))))

(assert (=> bs!1092466 (= (= lt!1859472 lt!1859024) (= lambda!209337 lambda!209252))))

(assert (=> bs!1092467 (= (= lt!1859472 lt!1859024) (= lambda!209337 lambda!209257))))

(assert (=> bs!1092463 (= (= lt!1859472 lt!1859142) (= lambda!209337 lambda!209254))))

(assert (=> bs!1092462 (= (= lt!1859472 lt!1859024) (= lambda!209337 lambda!209248))))

(assert (=> bs!1092468 (= (= lt!1859472 lt!1859254) (= lambda!209337 lambda!209266))))

(assert (=> bs!1092469 (= (= lt!1859472 lt!1859220) (= lambda!209337 lambda!209259))))

(assert (=> bs!1092469 (= (= lt!1859472 lt!1859024) (= lambda!209337 lambda!209258))))

(assert (=> bs!1092470 (= (= lt!1859472 lt!1859117) (= lambda!209337 lambda!209251))))

(assert (=> bs!1092468 (= (= lt!1859472 lt!1859024) (= lambda!209337 lambda!209265))))

(assert (=> bs!1092471 (= (= lt!1859472 lt!1859217) (= lambda!209337 lambda!209260))))

(assert (=> bs!1092472 (= (= lt!1859472 lt!1859024) (= lambda!209337 lambda!209247))))

(assert (=> b!4697654 true))

(declare-fun bs!1092483 () Bool)

(declare-fun d!1493690 () Bool)

(assert (= bs!1092483 (and d!1493690 b!4697497)))

(declare-fun lambda!209339 () Int)

(declare-fun lt!1859469 () ListMap!5021)

(assert (=> bs!1092483 (= (= lt!1859469 lt!1859024) (= lambda!209339 lambda!209264))))

(declare-fun bs!1092484 () Bool)

(assert (= bs!1092484 (and d!1493690 b!4697657)))

(assert (=> bs!1092484 (= (= lt!1859469 lt!1859024) (= lambda!209339 lambda!209333))))

(declare-fun bs!1092485 () Bool)

(assert (= bs!1092485 (and d!1493690 b!4697395)))

(assert (=> bs!1092485 (= (= lt!1859469 lt!1859120) (= lambda!209339 lambda!209250))))

(declare-fun bs!1092486 () Bool)

(assert (= bs!1092486 (and d!1493690 b!4697404)))

(assert (=> bs!1092486 (= (= lt!1859469 lt!1859024) (= lambda!209339 lambda!209253))))

(declare-fun bs!1092487 () Bool)

(assert (= bs!1092487 (and d!1493690 b!4697654)))

(assert (=> bs!1092487 (= (= lt!1859469 lt!1859024) (= lambda!209339 lambda!209334))))

(declare-fun bs!1092488 () Bool)

(assert (= bs!1092488 (and d!1493690 d!1493580)))

(assert (=> bs!1092488 (= (= lt!1859469 lt!1859251) (= lambda!209339 lambda!209267))))

(declare-fun bs!1092489 () Bool)

(assert (= bs!1092489 (and d!1493690 d!1493554)))

(assert (=> bs!1092489 (= (= lt!1859469 lt!1859139) (= lambda!209339 lambda!209255))))

(declare-fun bs!1092490 () Bool)

(assert (= bs!1092490 (and d!1493690 b!4697407)))

(assert (=> bs!1092490 (= (= lt!1859469 lt!1859024) (= lambda!209339 lambda!209252))))

(declare-fun bs!1092491 () Bool)

(assert (= bs!1092491 (and d!1493690 b!4697472)))

(assert (=> bs!1092491 (= (= lt!1859469 lt!1859024) (= lambda!209339 lambda!209257))))

(assert (=> bs!1092486 (= (= lt!1859469 lt!1859142) (= lambda!209339 lambda!209254))))

(assert (=> bs!1092485 (= (= lt!1859469 lt!1859024) (= lambda!209339 lambda!209248))))

(declare-fun bs!1092492 () Bool)

(assert (= bs!1092492 (and d!1493690 b!4697494)))

(assert (=> bs!1092492 (= (= lt!1859469 lt!1859254) (= lambda!209339 lambda!209266))))

(assert (=> bs!1092487 (= (= lt!1859469 lt!1859472) (= lambda!209339 lambda!209337))))

(declare-fun bs!1092493 () Bool)

(assert (= bs!1092493 (and d!1493690 b!4697469)))

(assert (=> bs!1092493 (= (= lt!1859469 lt!1859220) (= lambda!209339 lambda!209259))))

(assert (=> bs!1092493 (= (= lt!1859469 lt!1859024) (= lambda!209339 lambda!209258))))

(declare-fun bs!1092494 () Bool)

(assert (= bs!1092494 (and d!1493690 d!1493528)))

(assert (=> bs!1092494 (= (= lt!1859469 lt!1859117) (= lambda!209339 lambda!209251))))

(assert (=> bs!1092492 (= (= lt!1859469 lt!1859024) (= lambda!209339 lambda!209265))))

(declare-fun bs!1092495 () Bool)

(assert (= bs!1092495 (and d!1493690 d!1493566)))

(assert (=> bs!1092495 (= (= lt!1859469 lt!1859217) (= lambda!209339 lambda!209260))))

(declare-fun bs!1092496 () Bool)

(assert (= bs!1092496 (and d!1493690 b!4697398)))

(assert (=> bs!1092496 (= (= lt!1859469 lt!1859024) (= lambda!209339 lambda!209247))))

(assert (=> d!1493690 true))

(declare-fun c!803071 () Bool)

(declare-fun bm!328386 () Bool)

(declare-fun call!328391 () Bool)

(assert (=> bm!328386 (= call!328391 (forall!11376 (toList!5657 lt!1859024) (ite c!803071 lambda!209333 lambda!209337)))))

(declare-fun call!328392 () Bool)

(declare-fun bm!328387 () Bool)

(assert (=> bm!328387 (= call!328392 (forall!11376 (ite c!803071 (toList!5657 lt!1859024) (t!359817 (_2!30260 (h!58763 (toList!5658 lm!2023))))) (ite c!803071 lambda!209333 lambda!209337)))))

(declare-fun b!4697653 () Bool)

(declare-fun res!1982707 () Bool)

(declare-fun e!2930472 () Bool)

(assert (=> b!4697653 (=> (not res!1982707) (not e!2930472))))

(assert (=> b!4697653 (= res!1982707 (forall!11376 (toList!5657 lt!1859024) lambda!209339))))

(assert (=> d!1493690 e!2930472))

(declare-fun res!1982706 () Bool)

(assert (=> d!1493690 (=> (not res!1982706) (not e!2930472))))

(assert (=> d!1493690 (= res!1982706 (forall!11376 (_2!30260 (h!58763 (toList!5658 lm!2023))) lambda!209339))))

(declare-fun e!2930471 () ListMap!5021)

(assert (=> d!1493690 (= lt!1859469 e!2930471)))

(assert (=> d!1493690 (= c!803071 ((_ is Nil!52493) (_2!30260 (h!58763 (toList!5658 lm!2023)))))))

(assert (=> d!1493690 (noDuplicateKeys!1884 (_2!30260 (h!58763 (toList!5658 lm!2023))))))

(assert (=> d!1493690 (= (addToMapMapFromBucket!1316 (_2!30260 (h!58763 (toList!5658 lm!2023))) lt!1859024) lt!1859469)))

(assert (=> b!4697654 (= e!2930471 lt!1859472)))

(declare-fun lt!1859461 () ListMap!5021)

(assert (=> b!4697654 (= lt!1859461 (+!2168 lt!1859024 (h!58762 (_2!30260 (h!58763 (toList!5658 lm!2023))))))))

(assert (=> b!4697654 (= lt!1859472 (addToMapMapFromBucket!1316 (t!359817 (_2!30260 (h!58763 (toList!5658 lm!2023)))) (+!2168 lt!1859024 (h!58762 (_2!30260 (h!58763 (toList!5658 lm!2023)))))))))

(declare-fun lt!1859474 () Unit!125525)

(declare-fun call!328393 () Unit!125525)

(assert (=> b!4697654 (= lt!1859474 call!328393)))

(assert (=> b!4697654 (forall!11376 (toList!5657 lt!1859024) lambda!209334)))

(declare-fun lt!1859468 () Unit!125525)

(assert (=> b!4697654 (= lt!1859468 lt!1859474)))

(assert (=> b!4697654 (forall!11376 (toList!5657 lt!1859461) lambda!209337)))

(declare-fun lt!1859466 () Unit!125525)

(declare-fun Unit!125587 () Unit!125525)

(assert (=> b!4697654 (= lt!1859466 Unit!125587)))

(assert (=> b!4697654 call!328392))

(declare-fun lt!1859475 () Unit!125525)

(declare-fun Unit!125588 () Unit!125525)

(assert (=> b!4697654 (= lt!1859475 Unit!125588)))

(declare-fun lt!1859481 () Unit!125525)

(declare-fun Unit!125589 () Unit!125525)

(assert (=> b!4697654 (= lt!1859481 Unit!125589)))

(declare-fun lt!1859476 () Unit!125525)

(assert (=> b!4697654 (= lt!1859476 (forallContained!3483 (toList!5657 lt!1859461) lambda!209337 (h!58762 (_2!30260 (h!58763 (toList!5658 lm!2023))))))))

(assert (=> b!4697654 (contains!15746 lt!1859461 (_1!30259 (h!58762 (_2!30260 (h!58763 (toList!5658 lm!2023))))))))

(declare-fun lt!1859471 () Unit!125525)

(declare-fun Unit!125590 () Unit!125525)

(assert (=> b!4697654 (= lt!1859471 Unit!125590)))

(assert (=> b!4697654 (contains!15746 lt!1859472 (_1!30259 (h!58762 (_2!30260 (h!58763 (toList!5658 lm!2023))))))))

(declare-fun lt!1859464 () Unit!125525)

(declare-fun Unit!125591 () Unit!125525)

(assert (=> b!4697654 (= lt!1859464 Unit!125591)))

(assert (=> b!4697654 (forall!11376 (_2!30260 (h!58763 (toList!5658 lm!2023))) lambda!209337)))

(declare-fun lt!1859465 () Unit!125525)

(declare-fun Unit!125592 () Unit!125525)

(assert (=> b!4697654 (= lt!1859465 Unit!125592)))

(assert (=> b!4697654 (forall!11376 (toList!5657 lt!1859461) lambda!209337)))

(declare-fun lt!1859479 () Unit!125525)

(declare-fun Unit!125593 () Unit!125525)

(assert (=> b!4697654 (= lt!1859479 Unit!125593)))

(declare-fun lt!1859478 () Unit!125525)

(declare-fun Unit!125594 () Unit!125525)

(assert (=> b!4697654 (= lt!1859478 Unit!125594)))

(declare-fun lt!1859462 () Unit!125525)

(assert (=> b!4697654 (= lt!1859462 (addForallContainsKeyThenBeforeAdding!720 lt!1859024 lt!1859472 (_1!30259 (h!58762 (_2!30260 (h!58763 (toList!5658 lm!2023))))) (_2!30259 (h!58762 (_2!30260 (h!58763 (toList!5658 lm!2023)))))))))

(assert (=> b!4697654 (forall!11376 (toList!5657 lt!1859024) lambda!209337)))

(declare-fun lt!1859477 () Unit!125525)

(assert (=> b!4697654 (= lt!1859477 lt!1859462)))

(assert (=> b!4697654 call!328391))

(declare-fun lt!1859463 () Unit!125525)

(declare-fun Unit!125595 () Unit!125525)

(assert (=> b!4697654 (= lt!1859463 Unit!125595)))

(declare-fun res!1982705 () Bool)

(assert (=> b!4697654 (= res!1982705 (forall!11376 (_2!30260 (h!58763 (toList!5658 lm!2023))) lambda!209337))))

(declare-fun e!2930473 () Bool)

(assert (=> b!4697654 (=> (not res!1982705) (not e!2930473))))

(assert (=> b!4697654 e!2930473))

(declare-fun lt!1859467 () Unit!125525)

(declare-fun Unit!125596 () Unit!125525)

(assert (=> b!4697654 (= lt!1859467 Unit!125596)))

(declare-fun bm!328388 () Bool)

(assert (=> bm!328388 (= call!328393 (lemmaContainsAllItsOwnKeys!721 lt!1859024))))

(declare-fun b!4697655 () Bool)

(assert (=> b!4697655 (= e!2930472 (invariantList!1433 (toList!5657 lt!1859469)))))

(declare-fun b!4697656 () Bool)

(assert (=> b!4697656 (= e!2930473 (forall!11376 (toList!5657 lt!1859024) lambda!209337))))

(assert (=> b!4697657 (= e!2930471 lt!1859024)))

(declare-fun lt!1859480 () Unit!125525)

(assert (=> b!4697657 (= lt!1859480 call!328393)))

(assert (=> b!4697657 call!328391))

(declare-fun lt!1859473 () Unit!125525)

(assert (=> b!4697657 (= lt!1859473 lt!1859480)))

(assert (=> b!4697657 call!328392))

(declare-fun lt!1859470 () Unit!125525)

(declare-fun Unit!125598 () Unit!125525)

(assert (=> b!4697657 (= lt!1859470 Unit!125598)))

(assert (= (and d!1493690 c!803071) b!4697657))

(assert (= (and d!1493690 (not c!803071)) b!4697654))

(assert (= (and b!4697654 res!1982705) b!4697656))

(assert (= (or b!4697657 b!4697654) bm!328388))

(assert (= (or b!4697657 b!4697654) bm!328386))

(assert (= (or b!4697657 b!4697654) bm!328387))

(assert (= (and d!1493690 res!1982706) b!4697653))

(assert (= (and b!4697653 res!1982707) b!4697655))

(declare-fun m!5608349 () Bool)

(assert (=> bm!328387 m!5608349))

(declare-fun m!5608351 () Bool)

(assert (=> b!4697656 m!5608351))

(declare-fun m!5608353 () Bool)

(assert (=> b!4697654 m!5608353))

(declare-fun m!5608355 () Bool)

(assert (=> b!4697654 m!5608355))

(declare-fun m!5608357 () Bool)

(assert (=> b!4697654 m!5608357))

(declare-fun m!5608359 () Bool)

(assert (=> b!4697654 m!5608359))

(declare-fun m!5608361 () Bool)

(assert (=> b!4697654 m!5608361))

(declare-fun m!5608363 () Bool)

(assert (=> b!4697654 m!5608363))

(declare-fun m!5608365 () Bool)

(assert (=> b!4697654 m!5608365))

(assert (=> b!4697654 m!5608363))

(declare-fun m!5608367 () Bool)

(assert (=> b!4697654 m!5608367))

(assert (=> b!4697654 m!5608361))

(declare-fun m!5608369 () Bool)

(assert (=> b!4697654 m!5608369))

(assert (=> b!4697654 m!5608351))

(assert (=> b!4697654 m!5608365))

(assert (=> bm!328388 m!5607783))

(declare-fun m!5608371 () Bool)

(assert (=> b!4697655 m!5608371))

(declare-fun m!5608373 () Bool)

(assert (=> b!4697653 m!5608373))

(declare-fun m!5608375 () Bool)

(assert (=> bm!328386 m!5608375))

(declare-fun m!5608377 () Bool)

(assert (=> d!1493690 m!5608377))

(declare-fun m!5608379 () Bool)

(assert (=> d!1493690 m!5608379))

(assert (=> b!4697350 d!1493690))

(declare-fun bs!1092497 () Bool)

(declare-fun d!1493696 () Bool)

(assert (= bs!1092497 (and d!1493696 d!1493520)))

(declare-fun lambda!209340 () Int)

(assert (=> bs!1092497 (not (= lambda!209340 lambda!209208))))

(declare-fun bs!1092498 () Bool)

(assert (= bs!1092498 (and d!1493696 d!1493598)))

(assert (=> bs!1092498 (= lambda!209340 lambda!209272)))

(declare-fun bs!1092499 () Bool)

(assert (= bs!1092499 (and d!1493696 d!1493596)))

(assert (=> bs!1092499 (= lambda!209340 lambda!209271)))

(declare-fun bs!1092500 () Bool)

(assert (= bs!1092500 (and d!1493696 d!1493666)))

(assert (=> bs!1092500 (= lambda!209340 lambda!209323)))

(declare-fun bs!1092501 () Bool)

(assert (= bs!1092501 (and d!1493696 d!1493664)))

(assert (=> bs!1092501 (= lambda!209340 lambda!209320)))

(declare-fun bs!1092502 () Bool)

(assert (= bs!1092502 (and d!1493696 start!476000)))

(assert (=> bs!1092502 (= lambda!209340 lambda!209205)))

(declare-fun bs!1092503 () Bool)

(assert (= bs!1092503 (and d!1493696 d!1493576)))

(assert (=> bs!1092503 (= lambda!209340 lambda!209263)))

(declare-fun bs!1092504 () Bool)

(assert (= bs!1092504 (and d!1493696 d!1493668)))

(assert (=> bs!1092504 (= lambda!209340 lambda!209324)))

(declare-fun bs!1092505 () Bool)

(assert (= bs!1092505 (and d!1493696 d!1493636)))

(assert (=> bs!1092505 (= lambda!209340 lambda!209319)))

(declare-fun bs!1092506 () Bool)

(assert (= bs!1092506 (and d!1493696 d!1493588)))

(assert (=> bs!1092506 (= lambda!209340 lambda!209268)))

(declare-fun bs!1092507 () Bool)

(assert (= bs!1092507 (and d!1493696 d!1493670)))

(assert (=> bs!1092507 (= lambda!209340 lambda!209325)))

(declare-fun bs!1092508 () Bool)

(assert (= bs!1092508 (and d!1493696 d!1493610)))

(assert (=> bs!1092508 (= lambda!209340 lambda!209312)))

(declare-fun lt!1859485 () ListMap!5021)

(assert (=> d!1493696 (invariantList!1433 (toList!5657 lt!1859485))))

(declare-fun e!2930476 () ListMap!5021)

(assert (=> d!1493696 (= lt!1859485 e!2930476)))

(declare-fun c!803072 () Bool)

(assert (=> d!1493696 (= c!803072 ((_ is Cons!52494) (t!359818 (toList!5658 lm!2023))))))

(assert (=> d!1493696 (forall!11375 (t!359818 (toList!5658 lm!2023)) lambda!209340)))

(assert (=> d!1493696 (= (extractMap!1910 (t!359818 (toList!5658 lm!2023))) lt!1859485)))

(declare-fun b!4697660 () Bool)

(assert (=> b!4697660 (= e!2930476 (addToMapMapFromBucket!1316 (_2!30260 (h!58763 (t!359818 (toList!5658 lm!2023)))) (extractMap!1910 (t!359818 (t!359818 (toList!5658 lm!2023))))))))

(declare-fun b!4697661 () Bool)

(assert (=> b!4697661 (= e!2930476 (ListMap!5022 Nil!52493))))

(assert (= (and d!1493696 c!803072) b!4697660))

(assert (= (and d!1493696 (not c!803072)) b!4697661))

(declare-fun m!5608381 () Bool)

(assert (=> d!1493696 m!5608381))

(declare-fun m!5608383 () Bool)

(assert (=> d!1493696 m!5608383))

(declare-fun m!5608385 () Bool)

(assert (=> b!4697660 m!5608385))

(assert (=> b!4697660 m!5608385))

(declare-fun m!5608387 () Bool)

(assert (=> b!4697660 m!5608387))

(assert (=> b!4697350 d!1493696))

(declare-fun d!1493698 () Bool)

(assert (=> d!1493698 (= (tail!8679 lm!2023) (ListLongMap!4188 (tail!8678 (toList!5658 lm!2023))))))

(declare-fun bs!1092509 () Bool)

(assert (= bs!1092509 d!1493698))

(declare-fun m!5608389 () Bool)

(assert (=> bs!1092509 m!5608389))

(assert (=> b!4697350 d!1493698))

(declare-fun d!1493700 () Bool)

(declare-fun e!2930483 () Bool)

(assert (=> d!1493700 e!2930483))

(declare-fun res!1982714 () Bool)

(assert (=> d!1493700 (=> (not res!1982714) (not e!2930483))))

(declare-fun lt!1859498 () ListMap!5021)

(assert (=> d!1493700 (= res!1982714 (contains!15746 lt!1859498 (_1!30259 (h!58762 oldBucket!34))))))

(declare-fun lt!1859499 () List!52617)

(assert (=> d!1493700 (= lt!1859498 (ListMap!5022 lt!1859499))))

(declare-fun lt!1859501 () Unit!125525)

(declare-fun lt!1859500 () Unit!125525)

(assert (=> d!1493700 (= lt!1859501 lt!1859500)))

(assert (=> d!1493700 (= (getValueByKey!1826 lt!1859499 (_1!30259 (h!58762 oldBucket!34))) (Some!12155 (_2!30259 (h!58762 oldBucket!34))))))

(assert (=> d!1493700 (= lt!1859500 (lemmaContainsTupThenGetReturnValue!1023 lt!1859499 (_1!30259 (h!58762 oldBucket!34)) (_2!30259 (h!58762 oldBucket!34))))))

(assert (=> d!1493700 (= lt!1859499 (insertNoDuplicatedKeys!531 (toList!5657 lt!1859051) (_1!30259 (h!58762 oldBucket!34)) (_2!30259 (h!58762 oldBucket!34))))))

(assert (=> d!1493700 (= (+!2168 lt!1859051 (h!58762 oldBucket!34)) lt!1859498)))

(declare-fun b!4697671 () Bool)

(declare-fun res!1982713 () Bool)

(assert (=> b!4697671 (=> (not res!1982713) (not e!2930483))))

(assert (=> b!4697671 (= res!1982713 (= (getValueByKey!1826 (toList!5657 lt!1859498) (_1!30259 (h!58762 oldBucket!34))) (Some!12155 (_2!30259 (h!58762 oldBucket!34)))))))

(declare-fun b!4697672 () Bool)

(assert (=> b!4697672 (= e!2930483 (contains!15751 (toList!5657 lt!1859498) (h!58762 oldBucket!34)))))

(assert (= (and d!1493700 res!1982714) b!4697671))

(assert (= (and b!4697671 res!1982713) b!4697672))

(declare-fun m!5608399 () Bool)

(assert (=> d!1493700 m!5608399))

(declare-fun m!5608401 () Bool)

(assert (=> d!1493700 m!5608401))

(declare-fun m!5608403 () Bool)

(assert (=> d!1493700 m!5608403))

(declare-fun m!5608405 () Bool)

(assert (=> d!1493700 m!5608405))

(declare-fun m!5608407 () Bool)

(assert (=> b!4697671 m!5608407))

(declare-fun m!5608409 () Bool)

(assert (=> b!4697672 m!5608409))

(assert (=> b!4697340 d!1493700))

(declare-fun d!1493704 () Bool)

(declare-fun e!2930484 () Bool)

(assert (=> d!1493704 e!2930484))

(declare-fun res!1982715 () Bool)

(assert (=> d!1493704 (=> (not res!1982715) (not e!2930484))))

(declare-fun lt!1859502 () ListMap!5021)

(assert (=> d!1493704 (= res!1982715 (not (contains!15746 lt!1859502 key!4653)))))

(assert (=> d!1493704 (= lt!1859502 (ListMap!5022 (removePresrvNoDuplicatedKeys!355 (toList!5657 lt!1859052) key!4653)))))

(assert (=> d!1493704 (= (-!688 lt!1859052 key!4653) lt!1859502)))

(declare-fun b!4697673 () Bool)

(assert (=> b!4697673 (= e!2930484 (= ((_ map and) (content!9233 (keys!18766 lt!1859052)) ((_ map not) (store ((as const (Array K!13860 Bool)) false) key!4653 true))) (content!9233 (keys!18766 lt!1859502))))))

(assert (= (and d!1493704 res!1982715) b!4697673))

(declare-fun m!5608411 () Bool)

(assert (=> d!1493704 m!5608411))

(declare-fun m!5608413 () Bool)

(assert (=> d!1493704 m!5608413))

(declare-fun m!5608415 () Bool)

(assert (=> b!4697673 m!5608415))

(declare-fun m!5608417 () Bool)

(assert (=> b!4697673 m!5608417))

(assert (=> b!4697673 m!5608415))

(declare-fun m!5608419 () Bool)

(assert (=> b!4697673 m!5608419))

(assert (=> b!4697673 m!5608291))

(assert (=> b!4697673 m!5608417))

(declare-fun m!5608421 () Bool)

(assert (=> b!4697673 m!5608421))

(assert (=> b!4697340 d!1493704))

(declare-fun d!1493706 () Bool)

(declare-fun e!2930485 () Bool)

(assert (=> d!1493706 e!2930485))

(declare-fun res!1982717 () Bool)

(assert (=> d!1493706 (=> (not res!1982717) (not e!2930485))))

(declare-fun lt!1859503 () ListMap!5021)

(assert (=> d!1493706 (= res!1982717 (contains!15746 lt!1859503 (_1!30259 (h!58762 oldBucket!34))))))

(declare-fun lt!1859504 () List!52617)

(assert (=> d!1493706 (= lt!1859503 (ListMap!5022 lt!1859504))))

(declare-fun lt!1859506 () Unit!125525)

(declare-fun lt!1859505 () Unit!125525)

(assert (=> d!1493706 (= lt!1859506 lt!1859505)))

(assert (=> d!1493706 (= (getValueByKey!1826 lt!1859504 (_1!30259 (h!58762 oldBucket!34))) (Some!12155 (_2!30259 (h!58762 oldBucket!34))))))

(assert (=> d!1493706 (= lt!1859505 (lemmaContainsTupThenGetReturnValue!1023 lt!1859504 (_1!30259 (h!58762 oldBucket!34)) (_2!30259 (h!58762 oldBucket!34))))))

(assert (=> d!1493706 (= lt!1859504 (insertNoDuplicatedKeys!531 (toList!5657 lt!1859029) (_1!30259 (h!58762 oldBucket!34)) (_2!30259 (h!58762 oldBucket!34))))))

(assert (=> d!1493706 (= (+!2168 lt!1859029 (h!58762 oldBucket!34)) lt!1859503)))

(declare-fun b!4697674 () Bool)

(declare-fun res!1982716 () Bool)

(assert (=> b!4697674 (=> (not res!1982716) (not e!2930485))))

(assert (=> b!4697674 (= res!1982716 (= (getValueByKey!1826 (toList!5657 lt!1859503) (_1!30259 (h!58762 oldBucket!34))) (Some!12155 (_2!30259 (h!58762 oldBucket!34)))))))

(declare-fun b!4697675 () Bool)

(assert (=> b!4697675 (= e!2930485 (contains!15751 (toList!5657 lt!1859503) (h!58762 oldBucket!34)))))

(assert (= (and d!1493706 res!1982717) b!4697674))

(assert (= (and b!4697674 res!1982716) b!4697675))

(declare-fun m!5608423 () Bool)

(assert (=> d!1493706 m!5608423))

(declare-fun m!5608425 () Bool)

(assert (=> d!1493706 m!5608425))

(declare-fun m!5608427 () Bool)

(assert (=> d!1493706 m!5608427))

(declare-fun m!5608429 () Bool)

(assert (=> d!1493706 m!5608429))

(declare-fun m!5608431 () Bool)

(assert (=> b!4697674 m!5608431))

(declare-fun m!5608433 () Bool)

(assert (=> b!4697675 m!5608433))

(assert (=> b!4697340 d!1493706))

(declare-fun d!1493708 () Bool)

(declare-fun e!2930486 () Bool)

(assert (=> d!1493708 e!2930486))

(declare-fun res!1982718 () Bool)

(assert (=> d!1493708 (=> (not res!1982718) (not e!2930486))))

(declare-fun lt!1859507 () ListMap!5021)

(assert (=> d!1493708 (= res!1982718 (not (contains!15746 lt!1859507 key!4653)))))

(assert (=> d!1493708 (= lt!1859507 (ListMap!5022 (removePresrvNoDuplicatedKeys!355 (toList!5657 (+!2168 lt!1859029 (h!58762 oldBucket!34))) key!4653)))))

(assert (=> d!1493708 (= (-!688 (+!2168 lt!1859029 (h!58762 oldBucket!34)) key!4653) lt!1859507)))

(declare-fun b!4697676 () Bool)

(assert (=> b!4697676 (= e!2930486 (= ((_ map and) (content!9233 (keys!18766 (+!2168 lt!1859029 (h!58762 oldBucket!34)))) ((_ map not) (store ((as const (Array K!13860 Bool)) false) key!4653 true))) (content!9233 (keys!18766 lt!1859507))))))

(assert (= (and d!1493708 res!1982718) b!4697676))

(declare-fun m!5608437 () Bool)

(assert (=> d!1493708 m!5608437))

(declare-fun m!5608439 () Bool)

(assert (=> d!1493708 m!5608439))

(declare-fun m!5608441 () Bool)

(assert (=> b!4697676 m!5608441))

(assert (=> b!4697676 m!5607625))

(declare-fun m!5608443 () Bool)

(assert (=> b!4697676 m!5608443))

(assert (=> b!4697676 m!5608441))

(declare-fun m!5608445 () Bool)

(assert (=> b!4697676 m!5608445))

(assert (=> b!4697676 m!5608291))

(assert (=> b!4697676 m!5608443))

(declare-fun m!5608447 () Bool)

(assert (=> b!4697676 m!5608447))

(assert (=> b!4697340 d!1493708))

(declare-fun d!1493712 () Bool)

(assert (=> d!1493712 (= (-!688 (+!2168 lt!1859029 (tuple2!53931 (_1!30259 (h!58762 oldBucket!34)) (_2!30259 (h!58762 oldBucket!34)))) key!4653) (+!2168 (-!688 lt!1859029 key!4653) (tuple2!53931 (_1!30259 (h!58762 oldBucket!34)) (_2!30259 (h!58762 oldBucket!34)))))))

(declare-fun lt!1859515 () Unit!125525)

(declare-fun choose!32789 (ListMap!5021 K!13860 V!14106 K!13860) Unit!125525)

(assert (=> d!1493712 (= lt!1859515 (choose!32789 lt!1859029 (_1!30259 (h!58762 oldBucket!34)) (_2!30259 (h!58762 oldBucket!34)) key!4653))))

(assert (=> d!1493712 (not (= (_1!30259 (h!58762 oldBucket!34)) key!4653))))

(assert (=> d!1493712 (= (addRemoveCommutativeForDiffKeys!89 lt!1859029 (_1!30259 (h!58762 oldBucket!34)) (_2!30259 (h!58762 oldBucket!34)) key!4653) lt!1859515)))

(declare-fun bs!1092511 () Bool)

(assert (= bs!1092511 d!1493712))

(declare-fun m!5608463 () Bool)

(assert (=> bs!1092511 m!5608463))

(declare-fun m!5608465 () Bool)

(assert (=> bs!1092511 m!5608465))

(assert (=> bs!1092511 m!5607563))

(assert (=> bs!1092511 m!5607563))

(declare-fun m!5608467 () Bool)

(assert (=> bs!1092511 m!5608467))

(assert (=> bs!1092511 m!5608463))

(declare-fun m!5608469 () Bool)

(assert (=> bs!1092511 m!5608469))

(assert (=> b!4697340 d!1493712))

(declare-fun b!4697703 () Bool)

(declare-fun e!2930504 () Unit!125525)

(declare-fun Unit!125599 () Unit!125525)

(assert (=> b!4697703 (= e!2930504 Unit!125599)))

(declare-fun b!4697704 () Bool)

(declare-fun e!2930505 () Bool)

(assert (=> b!4697704 (= e!2930505 (not (contains!15749 (keys!18766 lt!1859033) key!4653)))))

(declare-fun b!4697705 () Bool)

(declare-fun e!2930507 () Unit!125525)

(declare-fun lt!1859517 () Unit!125525)

(assert (=> b!4697705 (= e!2930507 lt!1859517)))

(declare-fun lt!1859516 () Unit!125525)

(assert (=> b!4697705 (= lt!1859516 (lemmaContainsKeyImpliesGetValueByKeyDefined!1718 (toList!5657 lt!1859033) key!4653))))

(assert (=> b!4697705 (isDefined!9411 (getValueByKey!1826 (toList!5657 lt!1859033) key!4653))))

(declare-fun lt!1859518 () Unit!125525)

(assert (=> b!4697705 (= lt!1859518 lt!1859516)))

(assert (=> b!4697705 (= lt!1859517 (lemmaInListThenGetKeysListContains!868 (toList!5657 lt!1859033) key!4653))))

(declare-fun call!328394 () Bool)

(assert (=> b!4697705 call!328394))

(declare-fun b!4697706 () Bool)

(declare-fun e!2930506 () Bool)

(assert (=> b!4697706 (= e!2930506 (contains!15749 (keys!18766 lt!1859033) key!4653))))

(declare-fun b!4697707 () Bool)

(declare-fun e!2930508 () List!52619)

(assert (=> b!4697707 (= e!2930508 (getKeysList!873 (toList!5657 lt!1859033)))))

(declare-fun b!4697708 () Bool)

(assert (=> b!4697708 false))

(declare-fun lt!1859519 () Unit!125525)

(declare-fun lt!1859521 () Unit!125525)

(assert (=> b!4697708 (= lt!1859519 lt!1859521)))

(assert (=> b!4697708 (containsKey!3132 (toList!5657 lt!1859033) key!4653)))

(assert (=> b!4697708 (= lt!1859521 (lemmaInGetKeysListThenContainsKey!872 (toList!5657 lt!1859033) key!4653))))

(declare-fun Unit!125600 () Unit!125525)

(assert (=> b!4697708 (= e!2930504 Unit!125600)))

(declare-fun b!4697709 () Bool)

(assert (=> b!4697709 (= e!2930507 e!2930504)))

(declare-fun c!803083 () Bool)

(assert (=> b!4697709 (= c!803083 call!328394)))

(declare-fun b!4697711 () Bool)

(declare-fun e!2930509 () Bool)

(assert (=> b!4697711 (= e!2930509 e!2930506)))

(declare-fun res!1982735 () Bool)

(assert (=> b!4697711 (=> (not res!1982735) (not e!2930506))))

(assert (=> b!4697711 (= res!1982735 (isDefined!9411 (getValueByKey!1826 (toList!5657 lt!1859033) key!4653)))))

(declare-fun bm!328389 () Bool)

(assert (=> bm!328389 (= call!328394 (contains!15749 e!2930508 key!4653))))

(declare-fun c!803084 () Bool)

(declare-fun c!803082 () Bool)

(assert (=> bm!328389 (= c!803084 c!803082)))

(declare-fun b!4697710 () Bool)

(assert (=> b!4697710 (= e!2930508 (keys!18766 lt!1859033))))

(declare-fun d!1493716 () Bool)

(assert (=> d!1493716 e!2930509))

(declare-fun res!1982734 () Bool)

(assert (=> d!1493716 (=> res!1982734 e!2930509)))

(assert (=> d!1493716 (= res!1982734 e!2930505)))

(declare-fun res!1982733 () Bool)

(assert (=> d!1493716 (=> (not res!1982733) (not e!2930505))))

(declare-fun lt!1859522 () Bool)

(assert (=> d!1493716 (= res!1982733 (not lt!1859522))))

(declare-fun lt!1859523 () Bool)

(assert (=> d!1493716 (= lt!1859522 lt!1859523)))

(declare-fun lt!1859520 () Unit!125525)

(assert (=> d!1493716 (= lt!1859520 e!2930507)))

(assert (=> d!1493716 (= c!803082 lt!1859523)))

(assert (=> d!1493716 (= lt!1859523 (containsKey!3132 (toList!5657 lt!1859033) key!4653))))

(assert (=> d!1493716 (= (contains!15746 lt!1859033 key!4653) lt!1859522)))

(assert (= (and d!1493716 c!803082) b!4697705))

(assert (= (and d!1493716 (not c!803082)) b!4697709))

(assert (= (and b!4697709 c!803083) b!4697708))

(assert (= (and b!4697709 (not c!803083)) b!4697703))

(assert (= (or b!4697705 b!4697709) bm!328389))

(assert (= (and bm!328389 c!803084) b!4697707))

(assert (= (and bm!328389 (not c!803084)) b!4697710))

(assert (= (and d!1493716 res!1982733) b!4697704))

(assert (= (and d!1493716 (not res!1982734)) b!4697711))

(assert (= (and b!4697711 res!1982735) b!4697706))

(declare-fun m!5608475 () Bool)

(assert (=> b!4697710 m!5608475))

(declare-fun m!5608477 () Bool)

(assert (=> b!4697708 m!5608477))

(declare-fun m!5608479 () Bool)

(assert (=> b!4697708 m!5608479))

(declare-fun m!5608481 () Bool)

(assert (=> b!4697707 m!5608481))

(declare-fun m!5608483 () Bool)

(assert (=> bm!328389 m!5608483))

(assert (=> b!4697706 m!5608475))

(assert (=> b!4697706 m!5608475))

(declare-fun m!5608485 () Bool)

(assert (=> b!4697706 m!5608485))

(assert (=> b!4697704 m!5608475))

(assert (=> b!4697704 m!5608475))

(assert (=> b!4697704 m!5608485))

(assert (=> d!1493716 m!5608477))

(declare-fun m!5608487 () Bool)

(assert (=> b!4697711 m!5608487))

(assert (=> b!4697711 m!5608487))

(declare-fun m!5608489 () Bool)

(assert (=> b!4697711 m!5608489))

(declare-fun m!5608491 () Bool)

(assert (=> b!4697705 m!5608491))

(assert (=> b!4697705 m!5608487))

(assert (=> b!4697705 m!5608487))

(assert (=> b!4697705 m!5608489))

(declare-fun m!5608493 () Bool)

(assert (=> b!4697705 m!5608493))

(assert (=> b!4697330 d!1493716))

(declare-fun bs!1092512 () Bool)

(declare-fun d!1493720 () Bool)

(assert (= bs!1092512 (and d!1493720 d!1493520)))

(declare-fun lambda!209341 () Int)

(assert (=> bs!1092512 (not (= lambda!209341 lambda!209208))))

(declare-fun bs!1092513 () Bool)

(assert (= bs!1092513 (and d!1493720 d!1493598)))

(assert (=> bs!1092513 (= lambda!209341 lambda!209272)))

(declare-fun bs!1092514 () Bool)

(assert (= bs!1092514 (and d!1493720 d!1493596)))

(assert (=> bs!1092514 (= lambda!209341 lambda!209271)))

(declare-fun bs!1092515 () Bool)

(assert (= bs!1092515 (and d!1493720 d!1493666)))

(assert (=> bs!1092515 (= lambda!209341 lambda!209323)))

(declare-fun bs!1092516 () Bool)

(assert (= bs!1092516 (and d!1493720 start!476000)))

(assert (=> bs!1092516 (= lambda!209341 lambda!209205)))

(declare-fun bs!1092517 () Bool)

(assert (= bs!1092517 (and d!1493720 d!1493576)))

(assert (=> bs!1092517 (= lambda!209341 lambda!209263)))

(declare-fun bs!1092518 () Bool)

(assert (= bs!1092518 (and d!1493720 d!1493668)))

(assert (=> bs!1092518 (= lambda!209341 lambda!209324)))

(declare-fun bs!1092519 () Bool)

(assert (= bs!1092519 (and d!1493720 d!1493636)))

(assert (=> bs!1092519 (= lambda!209341 lambda!209319)))

(declare-fun bs!1092520 () Bool)

(assert (= bs!1092520 (and d!1493720 d!1493588)))

(assert (=> bs!1092520 (= lambda!209341 lambda!209268)))

(declare-fun bs!1092521 () Bool)

(assert (= bs!1092521 (and d!1493720 d!1493696)))

(assert (=> bs!1092521 (= lambda!209341 lambda!209340)))

(declare-fun bs!1092522 () Bool)

(assert (= bs!1092522 (and d!1493720 d!1493664)))

(assert (=> bs!1092522 (= lambda!209341 lambda!209320)))

(declare-fun bs!1092524 () Bool)

(assert (= bs!1092524 (and d!1493720 d!1493670)))

(assert (=> bs!1092524 (= lambda!209341 lambda!209325)))

(declare-fun bs!1092525 () Bool)

(assert (= bs!1092525 (and d!1493720 d!1493610)))

(assert (=> bs!1092525 (= lambda!209341 lambda!209312)))

(declare-fun lt!1859525 () ListMap!5021)

(assert (=> d!1493720 (invariantList!1433 (toList!5657 lt!1859525))))

(declare-fun e!2930511 () ListMap!5021)

(assert (=> d!1493720 (= lt!1859525 e!2930511)))

(declare-fun c!803085 () Bool)

(assert (=> d!1493720 (= c!803085 ((_ is Cons!52494) (toList!5658 lm!2023)))))

(assert (=> d!1493720 (forall!11375 (toList!5658 lm!2023) lambda!209341)))

(assert (=> d!1493720 (= (extractMap!1910 (toList!5658 lm!2023)) lt!1859525)))

(declare-fun b!4697713 () Bool)

(assert (=> b!4697713 (= e!2930511 (addToMapMapFromBucket!1316 (_2!30260 (h!58763 (toList!5658 lm!2023))) (extractMap!1910 (t!359818 (toList!5658 lm!2023)))))))

(declare-fun b!4697714 () Bool)

(assert (=> b!4697714 (= e!2930511 (ListMap!5022 Nil!52493))))

(assert (= (and d!1493720 c!803085) b!4697713))

(assert (= (and d!1493720 (not c!803085)) b!4697714))

(declare-fun m!5608497 () Bool)

(assert (=> d!1493720 m!5608497))

(declare-fun m!5608499 () Bool)

(assert (=> d!1493720 m!5608499))

(assert (=> b!4697713 m!5607617))

(assert (=> b!4697713 m!5607617))

(declare-fun m!5608501 () Bool)

(assert (=> b!4697713 m!5608501))

(assert (=> b!4697330 d!1493720))

(declare-fun d!1493724 () Bool)

(declare-fun res!1982745 () Bool)

(declare-fun e!2930520 () Bool)

(assert (=> d!1493724 (=> res!1982745 e!2930520)))

(assert (=> d!1493724 (= res!1982745 (not ((_ is Cons!52493) oldBucket!34)))))

(assert (=> d!1493724 (= (noDuplicateKeys!1884 oldBucket!34) e!2930520)))

(declare-fun b!4697723 () Bool)

(declare-fun e!2930521 () Bool)

(assert (=> b!4697723 (= e!2930520 e!2930521)))

(declare-fun res!1982746 () Bool)

(assert (=> b!4697723 (=> (not res!1982746) (not e!2930521))))

(assert (=> b!4697723 (= res!1982746 (not (containsKey!3131 (t!359817 oldBucket!34) (_1!30259 (h!58762 oldBucket!34)))))))

(declare-fun b!4697724 () Bool)

(assert (=> b!4697724 (= e!2930521 (noDuplicateKeys!1884 (t!359817 oldBucket!34)))))

(assert (= (and d!1493724 (not res!1982745)) b!4697723))

(assert (= (and b!4697723 res!1982746) b!4697724))

(declare-fun m!5608503 () Bool)

(assert (=> b!4697723 m!5608503))

(assert (=> b!4697724 m!5608309))

(assert (=> b!4697351 d!1493724))

(declare-fun d!1493726 () Bool)

(assert (=> d!1493726 (= (head!10032 (toList!5658 lm!2023)) (h!58763 (toList!5658 lm!2023)))))

(assert (=> b!4697352 d!1493726))

(declare-fun bs!1092532 () Bool)

(declare-fun d!1493732 () Bool)

(assert (= bs!1092532 (and d!1493732 b!4697497)))

(declare-fun lambda!209345 () Int)

(assert (=> bs!1092532 (not (= lambda!209345 lambda!209264))))

(declare-fun bs!1092533 () Bool)

(assert (= bs!1092533 (and d!1493732 b!4697657)))

(assert (=> bs!1092533 (not (= lambda!209345 lambda!209333))))

(declare-fun bs!1092534 () Bool)

(assert (= bs!1092534 (and d!1493732 b!4697395)))

(assert (=> bs!1092534 (not (= lambda!209345 lambda!209250))))

(declare-fun bs!1092535 () Bool)

(assert (= bs!1092535 (and d!1493732 b!4697404)))

(assert (=> bs!1092535 (not (= lambda!209345 lambda!209253))))

(declare-fun bs!1092537 () Bool)

(assert (= bs!1092537 (and d!1493732 b!4697654)))

(assert (=> bs!1092537 (not (= lambda!209345 lambda!209334))))

(declare-fun bs!1092539 () Bool)

(assert (= bs!1092539 (and d!1493732 d!1493580)))

(assert (=> bs!1092539 (not (= lambda!209345 lambda!209267))))

(declare-fun bs!1092540 () Bool)

(assert (= bs!1092540 (and d!1493732 d!1493554)))

(assert (=> bs!1092540 (not (= lambda!209345 lambda!209255))))

(declare-fun bs!1092542 () Bool)

(assert (= bs!1092542 (and d!1493732 b!4697407)))

(assert (=> bs!1092542 (not (= lambda!209345 lambda!209252))))

(declare-fun bs!1092544 () Bool)

(assert (= bs!1092544 (and d!1493732 b!4697472)))

(assert (=> bs!1092544 (not (= lambda!209345 lambda!209257))))

(assert (=> bs!1092535 (not (= lambda!209345 lambda!209254))))

(assert (=> bs!1092534 (not (= lambda!209345 lambda!209248))))

(declare-fun bs!1092547 () Bool)

(assert (= bs!1092547 (and d!1493732 b!4697494)))

(assert (=> bs!1092547 (not (= lambda!209345 lambda!209266))))

(declare-fun bs!1092548 () Bool)

(assert (= bs!1092548 (and d!1493732 d!1493690)))

(assert (=> bs!1092548 (not (= lambda!209345 lambda!209339))))

(assert (=> bs!1092537 (not (= lambda!209345 lambda!209337))))

(declare-fun bs!1092549 () Bool)

(assert (= bs!1092549 (and d!1493732 b!4697469)))

(assert (=> bs!1092549 (not (= lambda!209345 lambda!209259))))

(assert (=> bs!1092549 (not (= lambda!209345 lambda!209258))))

(declare-fun bs!1092550 () Bool)

(assert (= bs!1092550 (and d!1493732 d!1493528)))

(assert (=> bs!1092550 (not (= lambda!209345 lambda!209251))))

(assert (=> bs!1092547 (not (= lambda!209345 lambda!209265))))

(declare-fun bs!1092551 () Bool)

(assert (= bs!1092551 (and d!1493732 d!1493566)))

(assert (=> bs!1092551 (not (= lambda!209345 lambda!209260))))

(declare-fun bs!1092552 () Bool)

(assert (= bs!1092552 (and d!1493732 b!4697398)))

(assert (=> bs!1092552 (not (= lambda!209345 lambda!209247))))

(assert (=> d!1493732 true))

(assert (=> d!1493732 true))

(assert (=> d!1493732 (= (allKeysSameHash!1710 newBucket!218 hash!405 hashF!1323) (forall!11376 newBucket!218 lambda!209345))))

(declare-fun bs!1092553 () Bool)

(assert (= bs!1092553 d!1493732))

(declare-fun m!5608529 () Bool)

(assert (=> bs!1092553 m!5608529))

(assert (=> b!4697341 d!1493732))

(declare-fun d!1493738 () Bool)

(assert (=> d!1493738 (= (eq!1043 lt!1859052 lt!1859036) (= (content!9231 (toList!5657 lt!1859052)) (content!9231 (toList!5657 lt!1859036))))))

(declare-fun bs!1092554 () Bool)

(assert (= bs!1092554 d!1493738))

(declare-fun m!5608531 () Bool)

(assert (=> bs!1092554 m!5608531))

(assert (=> bs!1092554 m!5607999))

(assert (=> b!4697342 d!1493738))

(declare-fun d!1493740 () Bool)

(assert (=> d!1493740 (= (eq!1043 lt!1859036 (+!2168 lt!1859030 lt!1859041)) (= (content!9231 (toList!5657 lt!1859036)) (content!9231 (toList!5657 (+!2168 lt!1859030 lt!1859041)))))))

(declare-fun bs!1092555 () Bool)

(assert (= bs!1092555 d!1493740))

(assert (=> bs!1092555 m!5607999))

(declare-fun m!5608533 () Bool)

(assert (=> bs!1092555 m!5608533))

(assert (=> b!4697332 d!1493740))

(declare-fun d!1493742 () Bool)

(declare-fun e!2930530 () Bool)

(assert (=> d!1493742 e!2930530))

(declare-fun res!1982757 () Bool)

(assert (=> d!1493742 (=> (not res!1982757) (not e!2930530))))

(declare-fun lt!1859557 () ListMap!5021)

(assert (=> d!1493742 (= res!1982757 (contains!15746 lt!1859557 (_1!30259 lt!1859041)))))

(declare-fun lt!1859558 () List!52617)

(assert (=> d!1493742 (= lt!1859557 (ListMap!5022 lt!1859558))))

(declare-fun lt!1859560 () Unit!125525)

(declare-fun lt!1859559 () Unit!125525)

(assert (=> d!1493742 (= lt!1859560 lt!1859559)))

(assert (=> d!1493742 (= (getValueByKey!1826 lt!1859558 (_1!30259 lt!1859041)) (Some!12155 (_2!30259 lt!1859041)))))

(assert (=> d!1493742 (= lt!1859559 (lemmaContainsTupThenGetReturnValue!1023 lt!1859558 (_1!30259 lt!1859041) (_2!30259 lt!1859041)))))

(assert (=> d!1493742 (= lt!1859558 (insertNoDuplicatedKeys!531 (toList!5657 lt!1859030) (_1!30259 lt!1859041) (_2!30259 lt!1859041)))))

(assert (=> d!1493742 (= (+!2168 lt!1859030 lt!1859041) lt!1859557)))

(declare-fun b!4697740 () Bool)

(declare-fun res!1982756 () Bool)

(assert (=> b!4697740 (=> (not res!1982756) (not e!2930530))))

(assert (=> b!4697740 (= res!1982756 (= (getValueByKey!1826 (toList!5657 lt!1859557) (_1!30259 lt!1859041)) (Some!12155 (_2!30259 lt!1859041))))))

(declare-fun b!4697741 () Bool)

(assert (=> b!4697741 (= e!2930530 (contains!15751 (toList!5657 lt!1859557) lt!1859041))))

(assert (= (and d!1493742 res!1982757) b!4697740))

(assert (= (and b!4697740 res!1982756) b!4697741))

(declare-fun m!5608535 () Bool)

(assert (=> d!1493742 m!5608535))

(declare-fun m!5608537 () Bool)

(assert (=> d!1493742 m!5608537))

(declare-fun m!5608539 () Bool)

(assert (=> d!1493742 m!5608539))

(declare-fun m!5608541 () Bool)

(assert (=> d!1493742 m!5608541))

(declare-fun m!5608543 () Bool)

(assert (=> b!4697740 m!5608543))

(declare-fun m!5608545 () Bool)

(assert (=> b!4697741 m!5608545))

(assert (=> b!4697332 d!1493742))

(declare-fun d!1493744 () Bool)

(declare-fun res!1982758 () Bool)

(declare-fun e!2930531 () Bool)

(assert (=> d!1493744 (=> res!1982758 e!2930531)))

(assert (=> d!1493744 (= res!1982758 (not ((_ is Cons!52493) newBucket!218)))))

(assert (=> d!1493744 (= (noDuplicateKeys!1884 newBucket!218) e!2930531)))

(declare-fun b!4697742 () Bool)

(declare-fun e!2930532 () Bool)

(assert (=> b!4697742 (= e!2930531 e!2930532)))

(declare-fun res!1982759 () Bool)

(assert (=> b!4697742 (=> (not res!1982759) (not e!2930532))))

(assert (=> b!4697742 (= res!1982759 (not (containsKey!3131 (t!359817 newBucket!218) (_1!30259 (h!58762 newBucket!218)))))))

(declare-fun b!4697743 () Bool)

(assert (=> b!4697743 (= e!2930532 (noDuplicateKeys!1884 (t!359817 newBucket!218)))))

(assert (= (and d!1493744 (not res!1982758)) b!4697742))

(assert (= (and b!4697742 res!1982759) b!4697743))

(declare-fun m!5608547 () Bool)

(assert (=> b!4697742 m!5608547))

(declare-fun m!5608549 () Bool)

(assert (=> b!4697743 m!5608549))

(assert (=> b!4697353 d!1493744))

(declare-fun bs!1092557 () Bool)

(declare-fun d!1493746 () Bool)

(assert (= bs!1092557 (and d!1493746 b!4697497)))

(declare-fun lambda!209348 () Int)

(assert (=> bs!1092557 (not (= lambda!209348 lambda!209264))))

(declare-fun bs!1092558 () Bool)

(assert (= bs!1092558 (and d!1493746 b!4697657)))

(assert (=> bs!1092558 (not (= lambda!209348 lambda!209333))))

(declare-fun bs!1092560 () Bool)

(assert (= bs!1092560 (and d!1493746 b!4697395)))

(assert (=> bs!1092560 (not (= lambda!209348 lambda!209250))))

(declare-fun bs!1092561 () Bool)

(assert (= bs!1092561 (and d!1493746 b!4697404)))

(assert (=> bs!1092561 (not (= lambda!209348 lambda!209253))))

(declare-fun bs!1092562 () Bool)

(assert (= bs!1092562 (and d!1493746 b!4697654)))

(assert (=> bs!1092562 (not (= lambda!209348 lambda!209334))))

(declare-fun bs!1092564 () Bool)

(assert (= bs!1092564 (and d!1493746 d!1493580)))

(assert (=> bs!1092564 (not (= lambda!209348 lambda!209267))))

(declare-fun bs!1092565 () Bool)

(assert (= bs!1092565 (and d!1493746 d!1493554)))

(assert (=> bs!1092565 (not (= lambda!209348 lambda!209255))))

(declare-fun bs!1092567 () Bool)

(assert (= bs!1092567 (and d!1493746 b!4697407)))

(assert (=> bs!1092567 (not (= lambda!209348 lambda!209252))))

(declare-fun bs!1092568 () Bool)

(assert (= bs!1092568 (and d!1493746 d!1493732)))

(assert (=> bs!1092568 (= lambda!209348 lambda!209345)))

(declare-fun bs!1092569 () Bool)

(assert (= bs!1092569 (and d!1493746 b!4697472)))

(assert (=> bs!1092569 (not (= lambda!209348 lambda!209257))))

(assert (=> bs!1092561 (not (= lambda!209348 lambda!209254))))

(assert (=> bs!1092560 (not (= lambda!209348 lambda!209248))))

(declare-fun bs!1092572 () Bool)

(assert (= bs!1092572 (and d!1493746 b!4697494)))

(assert (=> bs!1092572 (not (= lambda!209348 lambda!209266))))

(declare-fun bs!1092574 () Bool)

(assert (= bs!1092574 (and d!1493746 d!1493690)))

(assert (=> bs!1092574 (not (= lambda!209348 lambda!209339))))

(assert (=> bs!1092562 (not (= lambda!209348 lambda!209337))))

(declare-fun bs!1092575 () Bool)

(assert (= bs!1092575 (and d!1493746 b!4697469)))

(assert (=> bs!1092575 (not (= lambda!209348 lambda!209259))))

(assert (=> bs!1092575 (not (= lambda!209348 lambda!209258))))

(declare-fun bs!1092576 () Bool)

(assert (= bs!1092576 (and d!1493746 d!1493528)))

(assert (=> bs!1092576 (not (= lambda!209348 lambda!209251))))

(assert (=> bs!1092572 (not (= lambda!209348 lambda!209265))))

(declare-fun bs!1092577 () Bool)

(assert (= bs!1092577 (and d!1493746 d!1493566)))

(assert (=> bs!1092577 (not (= lambda!209348 lambda!209260))))

(declare-fun bs!1092578 () Bool)

(assert (= bs!1092578 (and d!1493746 b!4697398)))

(assert (=> bs!1092578 (not (= lambda!209348 lambda!209247))))

(assert (=> d!1493746 true))

(assert (=> d!1493746 true))

(assert (=> d!1493746 (= (allKeysSameHash!1710 oldBucket!34 hash!405 hashF!1323) (forall!11376 oldBucket!34 lambda!209348))))

(declare-fun bs!1092579 () Bool)

(assert (= bs!1092579 d!1493746))

(declare-fun m!5608551 () Bool)

(assert (=> bs!1092579 m!5608551))

(assert (=> b!4697343 d!1493746))

(declare-fun d!1493748 () Bool)

(assert (=> d!1493748 (= (eq!1043 lt!1859035 lt!1859043) (= (content!9231 (toList!5657 lt!1859035)) (content!9231 (toList!5657 lt!1859043))))))

(declare-fun bs!1092580 () Bool)

(assert (= bs!1092580 d!1493748))

(declare-fun m!5608553 () Bool)

(assert (=> bs!1092580 m!5608553))

(declare-fun m!5608555 () Bool)

(assert (=> bs!1092580 m!5608555))

(assert (=> b!4697333 d!1493748))

(declare-fun b!4697748 () Bool)

(declare-fun e!2930535 () Bool)

(declare-fun tp!1346432 () Bool)

(declare-fun tp!1346433 () Bool)

(assert (=> b!4697748 (= e!2930535 (and tp!1346432 tp!1346433))))

(assert (=> b!4697329 (= tp!1346426 e!2930535)))

(assert (= (and b!4697329 ((_ is Cons!52494) (toList!5658 lm!2023))) b!4697748))

(declare-fun tp!1346436 () Bool)

(declare-fun b!4697753 () Bool)

(declare-fun e!2930538 () Bool)

(assert (=> b!4697753 (= e!2930538 (and tp_is_empty!30829 tp_is_empty!30831 tp!1346436))))

(assert (=> b!4697331 (= tp!1346425 e!2930538)))

(assert (= (and b!4697331 ((_ is Cons!52493) (t!359817 oldBucket!34))) b!4697753))

(declare-fun e!2930539 () Bool)

(declare-fun b!4697754 () Bool)

(declare-fun tp!1346437 () Bool)

(assert (=> b!4697754 (= e!2930539 (and tp_is_empty!30829 tp_is_empty!30831 tp!1346437))))

(assert (=> b!4697339 (= tp!1346427 e!2930539)))

(assert (= (and b!4697339 ((_ is Cons!52493) (t!359817 newBucket!218))) b!4697754))

(declare-fun b_lambda!177259 () Bool)

(assert (= b_lambda!177253 (or start!476000 b_lambda!177259)))

(declare-fun bs!1092581 () Bool)

(declare-fun d!1493752 () Bool)

(assert (= bs!1092581 (and d!1493752 start!476000)))

(assert (=> bs!1092581 (= (dynLambda!21736 lambda!209205 lt!1859031) (noDuplicateKeys!1884 (_2!30260 lt!1859031)))))

(declare-fun m!5608589 () Bool)

(assert (=> bs!1092581 m!5608589))

(assert (=> d!1493606 d!1493752))

(declare-fun b_lambda!177261 () Bool)

(assert (= b_lambda!177255 (or start!476000 b_lambda!177261)))

(declare-fun bs!1092582 () Bool)

(declare-fun d!1493754 () Bool)

(assert (= bs!1092582 (and d!1493754 start!476000)))

(assert (=> bs!1092582 (= (dynLambda!21736 lambda!209205 (h!58763 (toList!5658 lm!2023))) (noDuplicateKeys!1884 (_2!30260 (h!58763 (toList!5658 lm!2023)))))))

(assert (=> bs!1092582 m!5608379))

(assert (=> b!4697643 d!1493754))

(check-sat (not d!1493578) (not d!1493662) (not d!1493622) (not b!4697676) (not d!1493556) (not b!4697460) (not d!1493584) (not d!1493636) (not b!4697673) (not d!1493716) (not b!4697704) (not b!4697366) (not d!1493746) (not b!4697462) (not d!1493700) (not d!1493600) (not b!4697471) (not b!4697723) (not b!4697630) (not bm!328373) (not b!4697740) (not d!1493668) (not d!1493698) (not d!1493606) (not d!1493566) (not bs!1092581) (not d!1493590) (not d!1493520) (not bm!328371) (not bm!328364) (not bm!328386) (not b!4697518) (not bs!1092582) (not b!4697496) (not b!4697579) (not bm!328389) (not d!1493704) (not bm!328376) (not d!1493666) (not b!4697583) (not d!1493748) (not d!1493738) (not bm!328359) (not b!4697503) (not b!4697653) (not d!1493696) (not b!4697660) (not d!1493742) (not d!1493712) (not b!4697656) (not b!4697463) (not b!4697654) (not b!4697713) (not d!1493586) (not d!1493596) (not b!4697615) (not b!4697404) (not d!1493720) (not bm!328372) (not b!4697395) (not d!1493594) (not b_lambda!177259) (not b!4697456) (not b!4697506) (not d!1493598) (not b!4697578) (not d!1493674) (not bm!328363) (not b!4697468) (not b!4697394) (not d!1493610) (not d!1493522) (not b_lambda!177261) tp_is_empty!30829 (not b!4697707) tp_is_empty!30831 (not d!1493740) (not b!4697509) (not b!4697495) (not bm!328374) (not b!4697671) (not b!4697585) (not bm!328388) (not bm!328375) (not b!4697494) (not b!4697397) (not d!1493658) (not b!4697553) (not b!4697637) (not b!4697609) (not b!4697457) (not d!1493528) (not b!4697674) (not b!4697754) (not b!4697748) (not bm!328370) (not d!1493670) (not b!4697741) (not b!4697491) (not d!1493690) (not d!1493576) (not b!4697708) (not d!1493732) (not d!1493680) (not b!4697470) (not b!4697584) (not b!4697644) (not b!4697743) (not b!4697405) (not d!1493708) (not b!4697523) (not b!4697406) (not d!1493632) (not b!4697672) (not d!1493688) (not bm!328362) (not d!1493660) (not b!4697459) (not b!4697710) (not b!4697724) (not d!1493580) (not b!4697551) (not b!4697613) (not b!4697493) (not d!1493686) (not b!4697508) (not bm!328360) (not d!1493604) (not b!4697505) (not b!4697504) (not b!4697469) (not d!1493648) (not d!1493706) (not b!4697520) (not b!4697554) (not b!4697705) (not d!1493664) (not b!4697711) (not b!4697629) (not b!4697706) (not b!4697510) (not b!4697753) (not b!4697655) (not d!1493672) (not d!1493554) (not d!1493608) (not b!4697742) (not d!1493582) (not b!4697675) (not bm!328361) (not b!4697396) (not b!4697602) (not b!4697458) (not bm!328387) (not d!1493602) (not b!4697617) (not d!1493634) (not d!1493588) (not b!4697502) (not d!1493678) (not b!4697403) (not b!4697647) (not b!4697552) (not b!4697611))
(check-sat)
