; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!478136 () Bool)

(assert start!478136)

(declare-fun b!4707191 () Bool)

(declare-fun e!2936246 () Bool)

(declare-datatypes ((K!13950 0))(
  ( (K!13951 (val!19431 Int)) )
))
(declare-datatypes ((V!14196 0))(
  ( (V!14197 (val!19432 Int)) )
))
(declare-datatypes ((tuple2!54074 0))(
  ( (tuple2!54075 (_1!30331 K!13950) (_2!30331 V!14196)) )
))
(declare-datatypes ((List!52719 0))(
  ( (Nil!52595) (Cons!52595 (h!58894 tuple2!54074) (t!359949 List!52719)) )
))
(declare-datatypes ((tuple2!54076 0))(
  ( (tuple2!54077 (_1!30332 (_ BitVec 64)) (_2!30332 List!52719)) )
))
(declare-datatypes ((List!52720 0))(
  ( (Nil!52596) (Cons!52596 (h!58895 tuple2!54076) (t!359950 List!52720)) )
))
(declare-datatypes ((ListLongMap!4259 0))(
  ( (ListLongMap!4260 (toList!5729 List!52720)) )
))
(declare-fun lm!2023 () ListLongMap!4259)

(assert (=> b!4707191 (= e!2936246 (not (= (toList!5729 lm!2023) Nil!52596)))))

(declare-datatypes ((ListMap!5093 0))(
  ( (ListMap!5094 (toList!5730 List!52719)) )
))
(declare-fun lt!1872350 () ListMap!5093)

(declare-fun lt!1872324 () tuple2!54076)

(declare-fun extractMap!1946 (List!52720) ListMap!5093)

(declare-fun tail!8785 (List!52720) List!52720)

(assert (=> b!4707191 (= lt!1872350 (extractMap!1946 (Cons!52596 lt!1872324 (tail!8785 (toList!5729 lm!2023)))))))

(declare-fun b!4707192 () Bool)

(declare-fun e!2936239 () Bool)

(assert (=> b!4707192 (= e!2936239 e!2936246)))

(declare-fun res!1988603 () Bool)

(assert (=> b!4707192 (=> res!1988603 e!2936246)))

(declare-fun lt!1872346 () ListMap!5093)

(declare-fun lt!1872325 () ListMap!5093)

(declare-fun eq!1079 (ListMap!5093 ListMap!5093) Bool)

(assert (=> b!4707192 (= res!1988603 (not (eq!1079 lt!1872346 lt!1872325)))))

(assert (=> b!4707192 (= lt!1872325 (extractMap!1946 (Cons!52596 lt!1872324 (t!359950 (toList!5729 lm!2023)))))))

(declare-fun hash!405 () (_ BitVec 64))

(declare-fun newBucket!218 () List!52719)

(assert (=> b!4707192 (= lt!1872324 (tuple2!54077 hash!405 newBucket!218))))

(declare-fun b!4707193 () Bool)

(declare-fun e!2936249 () Bool)

(declare-fun e!2936237 () Bool)

(assert (=> b!4707193 (= e!2936249 e!2936237)))

(declare-fun res!1988590 () Bool)

(assert (=> b!4707193 (=> (not res!1988590) (not e!2936237))))

(declare-fun lt!1872328 () (_ BitVec 64))

(assert (=> b!4707193 (= res!1988590 (= lt!1872328 hash!405))))

(declare-datatypes ((Hashable!6289 0))(
  ( (HashableExt!6288 (__x!31992 Int)) )
))
(declare-fun hashF!1323 () Hashable!6289)

(declare-fun key!4653 () K!13950)

(declare-fun hash!4232 (Hashable!6289 K!13950) (_ BitVec 64))

(assert (=> b!4707193 (= lt!1872328 (hash!4232 hashF!1323 key!4653))))

(declare-fun b!4707194 () Bool)

(declare-fun e!2936238 () Bool)

(declare-fun e!2936252 () Bool)

(assert (=> b!4707194 (= e!2936238 (not e!2936252))))

(declare-fun res!1988586 () Bool)

(assert (=> b!4707194 (=> res!1988586 e!2936252)))

(declare-fun oldBucket!34 () List!52719)

(get-info :version)

(assert (=> b!4707194 (= res!1988586 (or (and ((_ is Cons!52595) oldBucket!34) (= (_1!30331 (h!58894 oldBucket!34)) key!4653)) (not ((_ is Cons!52595) oldBucket!34)) (= (_1!30331 (h!58894 oldBucket!34)) key!4653)))))

(declare-fun lt!1872318 () ListMap!5093)

(declare-fun lt!1872347 () ListMap!5093)

(declare-fun addToMapMapFromBucket!1352 (List!52719 ListMap!5093) ListMap!5093)

(assert (=> b!4707194 (= lt!1872318 (addToMapMapFromBucket!1352 (_2!30332 (h!58895 (toList!5729 lm!2023))) lt!1872347))))

(assert (=> b!4707194 (= lt!1872347 (extractMap!1946 (t!359950 (toList!5729 lm!2023))))))

(declare-fun tail!8786 (ListLongMap!4259) ListLongMap!4259)

(assert (=> b!4707194 (= (t!359950 (toList!5729 lm!2023)) (toList!5729 (tail!8786 lm!2023)))))

(declare-fun res!1988589 () Bool)

(declare-fun e!2936248 () Bool)

(assert (=> start!478136 (=> (not res!1988589) (not e!2936248))))

(declare-fun lambda!211869 () Int)

(declare-fun forall!11441 (List!52720 Int) Bool)

(assert (=> start!478136 (= res!1988589 (forall!11441 (toList!5729 lm!2023) lambda!211869))))

(assert (=> start!478136 e!2936248))

(declare-fun e!2936240 () Bool)

(declare-fun inv!67824 (ListLongMap!4259) Bool)

(assert (=> start!478136 (and (inv!67824 lm!2023) e!2936240)))

(declare-fun tp_is_empty!30973 () Bool)

(assert (=> start!478136 tp_is_empty!30973))

(declare-fun e!2936247 () Bool)

(assert (=> start!478136 e!2936247))

(assert (=> start!478136 true))

(declare-fun e!2936245 () Bool)

(assert (=> start!478136 e!2936245))

(declare-fun b!4707195 () Bool)

(declare-fun res!1988600 () Bool)

(assert (=> b!4707195 (=> (not res!1988600) (not e!2936248))))

(declare-fun allKeysSameHash!1746 (List!52719 (_ BitVec 64) Hashable!6289) Bool)

(assert (=> b!4707195 (= res!1988600 (allKeysSameHash!1746 oldBucket!34 hash!405 hashF!1323))))

(declare-fun b!4707196 () Bool)

(declare-fun res!1988593 () Bool)

(assert (=> b!4707196 (=> (not res!1988593) (not e!2936248))))

(declare-fun removePairForKey!1515 (List!52719 K!13950) List!52719)

(assert (=> b!4707196 (= res!1988593 (= (removePairForKey!1515 oldBucket!34 key!4653) newBucket!218))))

(declare-fun b!4707197 () Bool)

(declare-fun res!1988604 () Bool)

(assert (=> b!4707197 (=> (not res!1988604) (not e!2936248))))

(declare-fun noDuplicateKeys!1920 (List!52719) Bool)

(assert (=> b!4707197 (= res!1988604 (noDuplicateKeys!1920 newBucket!218))))

(declare-fun tp_is_empty!30975 () Bool)

(declare-fun b!4707198 () Bool)

(declare-fun tp!1347050 () Bool)

(assert (=> b!4707198 (= e!2936245 (and tp_is_empty!30973 tp_is_empty!30975 tp!1347050))))

(declare-fun b!4707199 () Bool)

(assert (=> b!4707199 (= e!2936237 e!2936238)))

(declare-fun res!1988601 () Bool)

(assert (=> b!4707199 (=> (not res!1988601) (not e!2936238))))

(declare-fun lt!1872341 () tuple2!54076)

(declare-fun head!10103 (List!52720) tuple2!54076)

(assert (=> b!4707199 (= res!1988601 (= (head!10103 (toList!5729 lm!2023)) lt!1872341))))

(assert (=> b!4707199 (= lt!1872341 (tuple2!54077 hash!405 oldBucket!34))))

(declare-fun b!4707200 () Bool)

(declare-fun res!1988595 () Bool)

(assert (=> b!4707200 (=> (not res!1988595) (not e!2936237))))

(assert (=> b!4707200 (= res!1988595 (allKeysSameHash!1746 newBucket!218 hash!405 hashF!1323))))

(declare-fun b!4707201 () Bool)

(declare-fun e!2936241 () Bool)

(declare-fun e!2936244 () Bool)

(assert (=> b!4707201 (= e!2936241 e!2936244)))

(declare-fun res!1988606 () Bool)

(assert (=> b!4707201 (=> res!1988606 e!2936244)))

(declare-fun lt!1872316 () ListMap!5093)

(declare-fun lt!1872314 () ListMap!5093)

(declare-fun +!2204 (ListMap!5093 tuple2!54074) ListMap!5093)

(assert (=> b!4707201 (= res!1988606 (not (eq!1079 lt!1872314 (+!2204 lt!1872316 (h!58894 oldBucket!34)))))))

(declare-fun lt!1872335 () List!52719)

(assert (=> b!4707201 (= lt!1872316 (extractMap!1946 (Cons!52596 (tuple2!54077 hash!405 lt!1872335) (t!359950 (toList!5729 lm!2023)))))))

(assert (=> b!4707201 (= lt!1872314 (extractMap!1946 (Cons!52596 lt!1872341 (t!359950 (toList!5729 lm!2023)))))))

(declare-fun lt!1872344 () tuple2!54074)

(declare-fun lt!1872329 () List!52719)

(assert (=> b!4707201 (eq!1079 (addToMapMapFromBucket!1352 (Cons!52595 lt!1872344 lt!1872329) lt!1872347) (+!2204 (addToMapMapFromBucket!1352 lt!1872329 lt!1872347) lt!1872344))))

(declare-datatypes ((Unit!127364 0))(
  ( (Unit!127365) )
))
(declare-fun lt!1872320 () Unit!127364)

(declare-fun lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!328 (tuple2!54074 List!52719 ListMap!5093) Unit!127364)

(assert (=> b!4707201 (= lt!1872320 (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!328 lt!1872344 lt!1872329 lt!1872347))))

(declare-fun head!10104 (List!52719) tuple2!54074)

(assert (=> b!4707201 (= lt!1872344 (head!10104 newBucket!218))))

(declare-fun lt!1872338 () tuple2!54074)

(assert (=> b!4707201 (eq!1079 (addToMapMapFromBucket!1352 (Cons!52595 lt!1872338 lt!1872335) lt!1872347) (+!2204 (addToMapMapFromBucket!1352 lt!1872335 lt!1872347) lt!1872338))))

(declare-fun lt!1872351 () Unit!127364)

(assert (=> b!4707201 (= lt!1872351 (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!328 lt!1872338 lt!1872335 lt!1872347))))

(assert (=> b!4707201 (= lt!1872338 (head!10104 oldBucket!34))))

(declare-fun lt!1872342 () ListMap!5093)

(declare-fun contains!15914 (ListMap!5093 K!13950) Bool)

(assert (=> b!4707201 (contains!15914 lt!1872342 key!4653)))

(declare-fun lt!1872353 () List!52720)

(assert (=> b!4707201 (= lt!1872342 (extractMap!1946 lt!1872353))))

(declare-fun lt!1872339 () Unit!127364)

(declare-fun lt!1872313 () ListLongMap!4259)

(declare-fun lemmaListContainsThenExtractedMapContains!512 (ListLongMap!4259 K!13950 Hashable!6289) Unit!127364)

(assert (=> b!4707201 (= lt!1872339 (lemmaListContainsThenExtractedMapContains!512 lt!1872313 key!4653 hashF!1323))))

(assert (=> b!4707201 (= lt!1872313 (ListLongMap!4260 lt!1872353))))

(declare-fun lt!1872331 () tuple2!54076)

(assert (=> b!4707201 (= lt!1872353 (Cons!52596 lt!1872331 (t!359950 (toList!5729 lm!2023))))))

(assert (=> b!4707201 (= lt!1872331 (tuple2!54077 hash!405 (t!359949 oldBucket!34)))))

(declare-fun b!4707202 () Bool)

(declare-fun e!2936250 () Bool)

(assert (=> b!4707202 (= e!2936252 e!2936250)))

(declare-fun res!1988585 () Bool)

(assert (=> b!4707202 (=> res!1988585 e!2936250)))

(declare-fun containsKey!3227 (List!52719 K!13950) Bool)

(assert (=> b!4707202 (= res!1988585 (not (containsKey!3227 (t!359949 oldBucket!34) key!4653)))))

(assert (=> b!4707202 (containsKey!3227 oldBucket!34 key!4653)))

(declare-fun lt!1872345 () Unit!127364)

(declare-fun lemmaGetPairDefinedThenContainsKey!272 (List!52719 K!13950 Hashable!6289) Unit!127364)

(assert (=> b!4707202 (= lt!1872345 (lemmaGetPairDefinedThenContainsKey!272 oldBucket!34 key!4653 hashF!1323))))

(declare-fun lt!1872354 () List!52719)

(declare-datatypes ((Option!12251 0))(
  ( (None!12250) (Some!12250 (v!46773 tuple2!54074)) )
))
(declare-fun isDefined!9506 (Option!12251) Bool)

(declare-fun getPair!524 (List!52719 K!13950) Option!12251)

(assert (=> b!4707202 (isDefined!9506 (getPair!524 lt!1872354 key!4653))))

(declare-fun lt!1872352 () tuple2!54076)

(declare-fun lt!1872323 () Unit!127364)

(declare-fun forallContained!3548 (List!52720 Int tuple2!54076) Unit!127364)

(assert (=> b!4707202 (= lt!1872323 (forallContained!3548 (toList!5729 lm!2023) lambda!211869 lt!1872352))))

(declare-fun contains!15915 (List!52720 tuple2!54076) Bool)

(assert (=> b!4707202 (contains!15915 (toList!5729 lm!2023) lt!1872352)))

(assert (=> b!4707202 (= lt!1872352 (tuple2!54077 lt!1872328 lt!1872354))))

(declare-fun lt!1872336 () Unit!127364)

(declare-fun lemmaGetValueImpliesTupleContained!329 (ListLongMap!4259 (_ BitVec 64) List!52719) Unit!127364)

(assert (=> b!4707202 (= lt!1872336 (lemmaGetValueImpliesTupleContained!329 lm!2023 lt!1872328 lt!1872354))))

(declare-fun apply!12403 (ListLongMap!4259 (_ BitVec 64)) List!52719)

(assert (=> b!4707202 (= lt!1872354 (apply!12403 lm!2023 lt!1872328))))

(declare-fun contains!15916 (ListLongMap!4259 (_ BitVec 64)) Bool)

(assert (=> b!4707202 (contains!15916 lm!2023 lt!1872328)))

(declare-fun lt!1872334 () Unit!127364)

(declare-fun lemmaInGenMapThenLongMapContainsHash!730 (ListLongMap!4259 K!13950 Hashable!6289) Unit!127364)

(assert (=> b!4707202 (= lt!1872334 (lemmaInGenMapThenLongMapContainsHash!730 lm!2023 key!4653 hashF!1323))))

(declare-fun lt!1872327 () Unit!127364)

(declare-fun lemmaInGenMapThenGetPairDefined!320 (ListLongMap!4259 K!13950 Hashable!6289) Unit!127364)

(assert (=> b!4707202 (= lt!1872327 (lemmaInGenMapThenGetPairDefined!320 lm!2023 key!4653 hashF!1323))))

(declare-fun b!4707203 () Bool)

(declare-fun res!1988587 () Bool)

(declare-fun e!2936243 () Bool)

(assert (=> b!4707203 (=> res!1988587 e!2936243)))

(declare-fun lt!1872322 () ListMap!5093)

(declare-fun lt!1872332 () ListMap!5093)

(assert (=> b!4707203 (= res!1988587 (not (eq!1079 lt!1872322 lt!1872332)))))

(declare-fun b!4707204 () Bool)

(declare-fun e!2936242 () Bool)

(assert (=> b!4707204 (= e!2936242 e!2936239)))

(declare-fun res!1988605 () Bool)

(assert (=> b!4707204 (=> res!1988605 e!2936239)))

(declare-fun lt!1872317 () ListMap!5093)

(assert (=> b!4707204 (= res!1988605 (not (eq!1079 lt!1872332 lt!1872317)))))

(assert (=> b!4707204 (eq!1079 lt!1872322 lt!1872317)))

(declare-fun -!724 (ListMap!5093 K!13950) ListMap!5093)

(assert (=> b!4707204 (= lt!1872317 (-!724 lt!1872314 key!4653))))

(declare-fun lt!1872349 () Unit!127364)

(declare-fun lt!1872319 () ListMap!5093)

(declare-fun lemmaRemovePreservesEq!106 (ListMap!5093 ListMap!5093 K!13950) Unit!127364)

(assert (=> b!4707204 (= lt!1872349 (lemmaRemovePreservesEq!106 lt!1872319 lt!1872314 key!4653))))

(declare-fun tp!1347049 () Bool)

(declare-fun b!4707205 () Bool)

(assert (=> b!4707205 (= e!2936247 (and tp_is_empty!30973 tp_is_empty!30975 tp!1347049))))

(declare-fun b!4707206 () Bool)

(declare-fun res!1988599 () Bool)

(assert (=> b!4707206 (=> res!1988599 e!2936243)))

(assert (=> b!4707206 (= res!1988599 (not (eq!1079 lt!1872319 lt!1872314)))))

(declare-fun b!4707207 () Bool)

(declare-fun tp!1347051 () Bool)

(assert (=> b!4707207 (= e!2936240 tp!1347051)))

(declare-fun b!4707208 () Bool)

(declare-fun e!2936251 () Bool)

(assert (=> b!4707208 (= e!2936244 e!2936251)))

(declare-fun res!1988582 () Bool)

(assert (=> b!4707208 (=> res!1988582 e!2936251)))

(declare-fun lt!1872343 () ListMap!5093)

(declare-fun lt!1872340 () ListMap!5093)

(assert (=> b!4707208 (= res!1988582 (not (eq!1079 lt!1872343 lt!1872340)))))

(assert (=> b!4707208 (= lt!1872340 (-!724 lt!1872342 key!4653))))

(declare-fun lt!1872330 () tuple2!54076)

(assert (=> b!4707208 (= lt!1872343 (extractMap!1946 (Cons!52596 lt!1872330 (t!359950 (toList!5729 lm!2023)))))))

(declare-fun lt!1872348 () List!52720)

(assert (=> b!4707208 (eq!1079 (extractMap!1946 (Cons!52596 lt!1872330 lt!1872348)) (-!724 (extractMap!1946 (Cons!52596 lt!1872331 lt!1872348)) key!4653))))

(assert (=> b!4707208 (= lt!1872348 (tail!8785 lt!1872353))))

(assert (=> b!4707208 (= lt!1872330 (tuple2!54077 hash!405 lt!1872329))))

(declare-fun lt!1872321 () Unit!127364)

(declare-fun lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMapOneHashIsHead!94 (ListLongMap!4259 (_ BitVec 64) List!52719 List!52719 K!13950 Hashable!6289) Unit!127364)

(assert (=> b!4707208 (= lt!1872321 (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMapOneHashIsHead!94 lt!1872313 hash!405 (t!359949 oldBucket!34) lt!1872329 key!4653 hashF!1323))))

(declare-fun b!4707209 () Bool)

(declare-fun res!1988594 () Bool)

(assert (=> b!4707209 (=> (not res!1988594) (not e!2936248))))

(assert (=> b!4707209 (= res!1988594 (noDuplicateKeys!1920 oldBucket!34))))

(declare-fun b!4707210 () Bool)

(declare-fun res!1988607 () Bool)

(assert (=> b!4707210 (=> (not res!1988607) (not e!2936238))))

(assert (=> b!4707210 (= res!1988607 ((_ is Cons!52596) (toList!5729 lm!2023)))))

(declare-fun b!4707211 () Bool)

(declare-fun res!1988597 () Bool)

(assert (=> b!4707211 (=> res!1988597 e!2936246)))

(assert (=> b!4707211 (= res!1988597 (not (eq!1079 lt!1872325 lt!1872317)))))

(declare-fun b!4707212 () Bool)

(assert (=> b!4707212 (= e!2936248 e!2936249)))

(declare-fun res!1988584 () Bool)

(assert (=> b!4707212 (=> (not res!1988584) (not e!2936249))))

(assert (=> b!4707212 (= res!1988584 (contains!15914 lt!1872318 key!4653))))

(assert (=> b!4707212 (= lt!1872318 (extractMap!1946 (toList!5729 lm!2023)))))

(declare-fun b!4707213 () Bool)

(declare-fun res!1988602 () Bool)

(assert (=> b!4707213 (=> (not res!1988602) (not e!2936237))))

(declare-fun allKeysSameHashInMap!1834 (ListLongMap!4259 Hashable!6289) Bool)

(assert (=> b!4707213 (= res!1988602 (allKeysSameHashInMap!1834 lm!2023 hashF!1323))))

(declare-fun b!4707214 () Bool)

(assert (=> b!4707214 (= e!2936243 e!2936242)))

(declare-fun res!1988596 () Bool)

(assert (=> b!4707214 (=> res!1988596 e!2936242)))

(assert (=> b!4707214 (= res!1988596 (not (eq!1079 lt!1872332 lt!1872346)))))

(assert (=> b!4707214 (= lt!1872346 (+!2204 lt!1872343 (h!58894 oldBucket!34)))))

(declare-fun lt!1872337 () ListMap!5093)

(assert (=> b!4707214 (eq!1079 lt!1872337 (+!2204 lt!1872343 (h!58894 oldBucket!34)))))

(declare-fun lt!1872326 () Unit!127364)

(declare-fun lemmaAddToEqMapsPreservesEq!102 (ListMap!5093 ListMap!5093 K!13950 V!14196) Unit!127364)

(assert (=> b!4707214 (= lt!1872326 (lemmaAddToEqMapsPreservesEq!102 lt!1872340 lt!1872343 (_1!30331 (h!58894 oldBucket!34)) (_2!30331 (h!58894 oldBucket!34))))))

(declare-fun b!4707215 () Bool)

(declare-fun res!1988591 () Bool)

(assert (=> b!4707215 (=> res!1988591 e!2936244)))

(assert (=> b!4707215 (= res!1988591 (not (eq!1079 lt!1872314 (+!2204 lt!1872316 lt!1872344))))))

(declare-fun b!4707216 () Bool)

(declare-fun res!1988592 () Bool)

(assert (=> b!4707216 (=> res!1988592 e!2936241)))

(assert (=> b!4707216 (= res!1988592 (not (= (removePairForKey!1515 (t!359949 oldBucket!34) key!4653) lt!1872329)))))

(declare-fun b!4707217 () Bool)

(declare-fun res!1988598 () Bool)

(assert (=> b!4707217 (=> res!1988598 e!2936244)))

(assert (=> b!4707217 (= res!1988598 (not (= (h!58894 oldBucket!34) lt!1872344)))))

(declare-fun b!4707218 () Bool)

(assert (=> b!4707218 (= e!2936250 e!2936241)))

(declare-fun res!1988583 () Bool)

(assert (=> b!4707218 (=> res!1988583 e!2936241)))

(assert (=> b!4707218 (= res!1988583 (not (= (removePairForKey!1515 lt!1872335 key!4653) lt!1872329)))))

(declare-fun tail!8787 (List!52719) List!52719)

(assert (=> b!4707218 (= lt!1872329 (tail!8787 newBucket!218))))

(assert (=> b!4707218 (= lt!1872335 (tail!8787 oldBucket!34))))

(declare-fun b!4707219 () Bool)

(assert (=> b!4707219 (= e!2936251 e!2936243)))

(declare-fun res!1988588 () Bool)

(assert (=> b!4707219 (=> res!1988588 e!2936243)))

(assert (=> b!4707219 (= res!1988588 (not (= lt!1872322 lt!1872332)))))

(assert (=> b!4707219 (= lt!1872332 (+!2204 lt!1872340 (h!58894 oldBucket!34)))))

(assert (=> b!4707219 (= lt!1872322 (-!724 lt!1872319 key!4653))))

(assert (=> b!4707219 (= lt!1872319 (+!2204 lt!1872342 (h!58894 oldBucket!34)))))

(declare-fun lt!1872333 () ListMap!5093)

(assert (=> b!4707219 (= lt!1872333 lt!1872337)))

(assert (=> b!4707219 (= lt!1872337 (+!2204 lt!1872340 (h!58894 oldBucket!34)))))

(assert (=> b!4707219 (= lt!1872333 (-!724 (+!2204 lt!1872342 (h!58894 oldBucket!34)) key!4653))))

(declare-fun lt!1872315 () Unit!127364)

(declare-fun addRemoveCommutativeForDiffKeys!125 (ListMap!5093 K!13950 V!14196 K!13950) Unit!127364)

(assert (=> b!4707219 (= lt!1872315 (addRemoveCommutativeForDiffKeys!125 lt!1872342 (_1!30331 (h!58894 oldBucket!34)) (_2!30331 (h!58894 oldBucket!34)) key!4653))))

(assert (= (and start!478136 res!1988589) b!4707209))

(assert (= (and b!4707209 res!1988594) b!4707197))

(assert (= (and b!4707197 res!1988604) b!4707196))

(assert (= (and b!4707196 res!1988593) b!4707195))

(assert (= (and b!4707195 res!1988600) b!4707212))

(assert (= (and b!4707212 res!1988584) b!4707193))

(assert (= (and b!4707193 res!1988590) b!4707200))

(assert (= (and b!4707200 res!1988595) b!4707213))

(assert (= (and b!4707213 res!1988602) b!4707199))

(assert (= (and b!4707199 res!1988601) b!4707210))

(assert (= (and b!4707210 res!1988607) b!4707194))

(assert (= (and b!4707194 (not res!1988586)) b!4707202))

(assert (= (and b!4707202 (not res!1988585)) b!4707218))

(assert (= (and b!4707218 (not res!1988583)) b!4707216))

(assert (= (and b!4707216 (not res!1988592)) b!4707201))

(assert (= (and b!4707201 (not res!1988606)) b!4707217))

(assert (= (and b!4707217 (not res!1988598)) b!4707215))

(assert (= (and b!4707215 (not res!1988591)) b!4707208))

(assert (= (and b!4707208 (not res!1988582)) b!4707219))

(assert (= (and b!4707219 (not res!1988588)) b!4707203))

(assert (= (and b!4707203 (not res!1988587)) b!4707206))

(assert (= (and b!4707206 (not res!1988599)) b!4707214))

(assert (= (and b!4707214 (not res!1988596)) b!4707204))

(assert (= (and b!4707204 (not res!1988605)) b!4707192))

(assert (= (and b!4707192 (not res!1988603)) b!4707211))

(assert (= (and b!4707211 (not res!1988597)) b!4707191))

(assert (= start!478136 b!4707207))

(assert (= (and start!478136 ((_ is Cons!52595) oldBucket!34)) b!4707205))

(assert (= (and start!478136 ((_ is Cons!52595) newBucket!218)) b!4707198))

(declare-fun m!5630777 () Bool)

(assert (=> b!4707201 m!5630777))

(declare-fun m!5630779 () Bool)

(assert (=> b!4707201 m!5630779))

(declare-fun m!5630781 () Bool)

(assert (=> b!4707201 m!5630781))

(declare-fun m!5630783 () Bool)

(assert (=> b!4707201 m!5630783))

(declare-fun m!5630785 () Bool)

(assert (=> b!4707201 m!5630785))

(assert (=> b!4707201 m!5630777))

(declare-fun m!5630787 () Bool)

(assert (=> b!4707201 m!5630787))

(declare-fun m!5630789 () Bool)

(assert (=> b!4707201 m!5630789))

(declare-fun m!5630791 () Bool)

(assert (=> b!4707201 m!5630791))

(declare-fun m!5630793 () Bool)

(assert (=> b!4707201 m!5630793))

(declare-fun m!5630795 () Bool)

(assert (=> b!4707201 m!5630795))

(assert (=> b!4707201 m!5630789))

(declare-fun m!5630797 () Bool)

(assert (=> b!4707201 m!5630797))

(declare-fun m!5630799 () Bool)

(assert (=> b!4707201 m!5630799))

(declare-fun m!5630801 () Bool)

(assert (=> b!4707201 m!5630801))

(declare-fun m!5630803 () Bool)

(assert (=> b!4707201 m!5630803))

(assert (=> b!4707201 m!5630801))

(assert (=> b!4707201 m!5630797))

(declare-fun m!5630805 () Bool)

(assert (=> b!4707201 m!5630805))

(assert (=> b!4707201 m!5630779))

(assert (=> b!4707201 m!5630783))

(declare-fun m!5630807 () Bool)

(assert (=> b!4707201 m!5630807))

(declare-fun m!5630809 () Bool)

(assert (=> b!4707201 m!5630809))

(assert (=> b!4707201 m!5630805))

(declare-fun m!5630811 () Bool)

(assert (=> b!4707201 m!5630811))

(declare-fun m!5630813 () Bool)

(assert (=> b!4707201 m!5630813))

(declare-fun m!5630815 () Bool)

(assert (=> start!478136 m!5630815))

(declare-fun m!5630817 () Bool)

(assert (=> start!478136 m!5630817))

(declare-fun m!5630819 () Bool)

(assert (=> b!4707192 m!5630819))

(declare-fun m!5630821 () Bool)

(assert (=> b!4707192 m!5630821))

(declare-fun m!5630823 () Bool)

(assert (=> b!4707214 m!5630823))

(declare-fun m!5630825 () Bool)

(assert (=> b!4707214 m!5630825))

(assert (=> b!4707214 m!5630825))

(declare-fun m!5630827 () Bool)

(assert (=> b!4707214 m!5630827))

(declare-fun m!5630829 () Bool)

(assert (=> b!4707214 m!5630829))

(declare-fun m!5630831 () Bool)

(assert (=> b!4707215 m!5630831))

(assert (=> b!4707215 m!5630831))

(declare-fun m!5630833 () Bool)

(assert (=> b!4707215 m!5630833))

(declare-fun m!5630835 () Bool)

(assert (=> b!4707219 m!5630835))

(declare-fun m!5630837 () Bool)

(assert (=> b!4707219 m!5630837))

(declare-fun m!5630839 () Bool)

(assert (=> b!4707219 m!5630839))

(assert (=> b!4707219 m!5630839))

(declare-fun m!5630841 () Bool)

(assert (=> b!4707219 m!5630841))

(declare-fun m!5630843 () Bool)

(assert (=> b!4707219 m!5630843))

(declare-fun m!5630845 () Bool)

(assert (=> b!4707218 m!5630845))

(declare-fun m!5630847 () Bool)

(assert (=> b!4707218 m!5630847))

(declare-fun m!5630849 () Bool)

(assert (=> b!4707218 m!5630849))

(declare-fun m!5630851 () Bool)

(assert (=> b!4707191 m!5630851))

(declare-fun m!5630853 () Bool)

(assert (=> b!4707191 m!5630853))

(declare-fun m!5630855 () Bool)

(assert (=> b!4707204 m!5630855))

(declare-fun m!5630857 () Bool)

(assert (=> b!4707204 m!5630857))

(declare-fun m!5630859 () Bool)

(assert (=> b!4707204 m!5630859))

(declare-fun m!5630861 () Bool)

(assert (=> b!4707204 m!5630861))

(declare-fun m!5630863 () Bool)

(assert (=> b!4707212 m!5630863))

(declare-fun m!5630865 () Bool)

(assert (=> b!4707212 m!5630865))

(declare-fun m!5630867 () Bool)

(assert (=> b!4707194 m!5630867))

(declare-fun m!5630869 () Bool)

(assert (=> b!4707194 m!5630869))

(declare-fun m!5630871 () Bool)

(assert (=> b!4707194 m!5630871))

(declare-fun m!5630873 () Bool)

(assert (=> b!4707200 m!5630873))

(declare-fun m!5630875 () Bool)

(assert (=> b!4707197 m!5630875))

(declare-fun m!5630877 () Bool)

(assert (=> b!4707208 m!5630877))

(declare-fun m!5630879 () Bool)

(assert (=> b!4707208 m!5630879))

(declare-fun m!5630881 () Bool)

(assert (=> b!4707208 m!5630881))

(declare-fun m!5630883 () Bool)

(assert (=> b!4707208 m!5630883))

(declare-fun m!5630885 () Bool)

(assert (=> b!4707208 m!5630885))

(declare-fun m!5630887 () Bool)

(assert (=> b!4707208 m!5630887))

(declare-fun m!5630889 () Bool)

(assert (=> b!4707208 m!5630889))

(assert (=> b!4707208 m!5630881))

(declare-fun m!5630891 () Bool)

(assert (=> b!4707208 m!5630891))

(declare-fun m!5630893 () Bool)

(assert (=> b!4707208 m!5630893))

(assert (=> b!4707208 m!5630877))

(assert (=> b!4707208 m!5630883))

(declare-fun m!5630895 () Bool)

(assert (=> b!4707211 m!5630895))

(declare-fun m!5630897 () Bool)

(assert (=> b!4707206 m!5630897))

(declare-fun m!5630899 () Bool)

(assert (=> b!4707193 m!5630899))

(declare-fun m!5630901 () Bool)

(assert (=> b!4707199 m!5630901))

(declare-fun m!5630903 () Bool)

(assert (=> b!4707216 m!5630903))

(declare-fun m!5630905 () Bool)

(assert (=> b!4707213 m!5630905))

(declare-fun m!5630907 () Bool)

(assert (=> b!4707196 m!5630907))

(declare-fun m!5630909 () Bool)

(assert (=> b!4707202 m!5630909))

(declare-fun m!5630911 () Bool)

(assert (=> b!4707202 m!5630911))

(declare-fun m!5630913 () Bool)

(assert (=> b!4707202 m!5630913))

(declare-fun m!5630915 () Bool)

(assert (=> b!4707202 m!5630915))

(declare-fun m!5630917 () Bool)

(assert (=> b!4707202 m!5630917))

(declare-fun m!5630919 () Bool)

(assert (=> b!4707202 m!5630919))

(declare-fun m!5630921 () Bool)

(assert (=> b!4707202 m!5630921))

(declare-fun m!5630923 () Bool)

(assert (=> b!4707202 m!5630923))

(declare-fun m!5630925 () Bool)

(assert (=> b!4707202 m!5630925))

(declare-fun m!5630927 () Bool)

(assert (=> b!4707202 m!5630927))

(declare-fun m!5630929 () Bool)

(assert (=> b!4707202 m!5630929))

(declare-fun m!5630931 () Bool)

(assert (=> b!4707202 m!5630931))

(assert (=> b!4707202 m!5630919))

(declare-fun m!5630933 () Bool)

(assert (=> b!4707209 m!5630933))

(declare-fun m!5630935 () Bool)

(assert (=> b!4707203 m!5630935))

(declare-fun m!5630937 () Bool)

(assert (=> b!4707195 m!5630937))

(check-sat (not b!4707208) (not b!4707200) (not b!4707204) (not start!478136) (not b!4707197) (not b!4707194) (not b!4707207) (not b!4707195) (not b!4707214) (not b!4707209) (not b!4707213) (not b!4707196) (not b!4707203) (not b!4707216) (not b!4707192) (not b!4707212) (not b!4707218) (not b!4707202) (not b!4707205) (not b!4707201) (not b!4707191) (not b!4707206) tp_is_empty!30973 (not b!4707193) (not b!4707219) tp_is_empty!30975 (not b!4707198) (not b!4707199) (not b!4707211) (not b!4707215))
(check-sat)
