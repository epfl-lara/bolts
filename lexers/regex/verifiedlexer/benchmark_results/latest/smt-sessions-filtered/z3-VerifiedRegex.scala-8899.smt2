; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!476976 () Bool)

(assert start!476976)

(declare-fun b!4701787 () Bool)

(declare-fun res!1985239 () Bool)

(declare-fun e!2932967 () Bool)

(assert (=> b!4701787 (=> (not res!1985239) (not e!2932967))))

(declare-datatypes ((K!13900 0))(
  ( (K!13901 (val!19391 Int)) )
))
(declare-datatypes ((V!14146 0))(
  ( (V!14147 (val!19392 Int)) )
))
(declare-datatypes ((tuple2!53994 0))(
  ( (tuple2!53995 (_1!30291 K!13900) (_2!30291 V!14146)) )
))
(declare-datatypes ((List!52663 0))(
  ( (Nil!52539) (Cons!52539 (h!58822 tuple2!53994) (t!359877 List!52663)) )
))
(declare-datatypes ((tuple2!53996 0))(
  ( (tuple2!53997 (_1!30292 (_ BitVec 64)) (_2!30292 List!52663)) )
))
(declare-datatypes ((List!52664 0))(
  ( (Nil!52540) (Cons!52540 (h!58823 tuple2!53996) (t!359878 List!52664)) )
))
(declare-datatypes ((ListLongMap!4219 0))(
  ( (ListLongMap!4220 (toList!5689 List!52664)) )
))
(declare-fun lm!2023 () ListLongMap!4219)

(get-info :version)

(assert (=> b!4701787 (= res!1985239 ((_ is Cons!52540) (toList!5689 lm!2023)))))

(declare-fun b!4701788 () Bool)

(declare-fun e!2932966 () Bool)

(declare-fun e!2932958 () Bool)

(assert (=> b!4701788 (= e!2932966 e!2932958)))

(declare-fun res!1985241 () Bool)

(assert (=> b!4701788 (=> res!1985241 e!2932958)))

(declare-datatypes ((ListMap!5053 0))(
  ( (ListMap!5054 (toList!5690 List!52663)) )
))
(declare-fun lt!1865004 () ListMap!5053)

(declare-fun lt!1865009 () ListMap!5053)

(assert (=> b!4701788 (= res!1985241 (not (= lt!1865004 lt!1865009)))))

(declare-fun lt!1865001 () ListMap!5053)

(declare-fun oldBucket!34 () List!52663)

(declare-fun +!2184 (ListMap!5053 tuple2!53994) ListMap!5053)

(assert (=> b!4701788 (= lt!1865009 (+!2184 lt!1865001 (h!58822 oldBucket!34)))))

(declare-fun lt!1865008 () ListMap!5053)

(declare-fun key!4653 () K!13900)

(declare-fun -!704 (ListMap!5053 K!13900) ListMap!5053)

(assert (=> b!4701788 (= lt!1865004 (-!704 lt!1865008 key!4653))))

(declare-fun lt!1865024 () ListMap!5053)

(assert (=> b!4701788 (= lt!1865008 (+!2184 lt!1865024 (h!58822 oldBucket!34)))))

(declare-fun lt!1865011 () ListMap!5053)

(declare-fun lt!1865006 () ListMap!5053)

(assert (=> b!4701788 (= lt!1865011 lt!1865006)))

(assert (=> b!4701788 (= lt!1865006 (+!2184 lt!1865001 (h!58822 oldBucket!34)))))

(assert (=> b!4701788 (= lt!1865011 (-!704 (+!2184 lt!1865024 (h!58822 oldBucket!34)) key!4653))))

(declare-datatypes ((Unit!126364 0))(
  ( (Unit!126365) )
))
(declare-fun lt!1865028 () Unit!126364)

(declare-fun addRemoveCommutativeForDiffKeys!105 (ListMap!5053 K!13900 V!14146 K!13900) Unit!126364)

(assert (=> b!4701788 (= lt!1865028 (addRemoveCommutativeForDiffKeys!105 lt!1865024 (_1!30291 (h!58822 oldBucket!34)) (_2!30291 (h!58822 oldBucket!34)) key!4653))))

(declare-fun b!4701789 () Bool)

(declare-fun res!1985235 () Bool)

(declare-fun e!2932969 () Bool)

(assert (=> b!4701789 (=> (not res!1985235) (not e!2932969))))

(declare-fun noDuplicateKeys!1900 (List!52663) Bool)

(assert (=> b!4701789 (= res!1985235 (noDuplicateKeys!1900 oldBucket!34))))

(declare-fun b!4701790 () Bool)

(declare-fun e!2932961 () Bool)

(assert (=> b!4701790 (= e!2932961 e!2932966)))

(declare-fun res!1985227 () Bool)

(assert (=> b!4701790 (=> res!1985227 e!2932966)))

(declare-fun lt!1865002 () ListMap!5053)

(declare-fun eq!1059 (ListMap!5053 ListMap!5053) Bool)

(assert (=> b!4701790 (= res!1985227 (not (eq!1059 lt!1865002 lt!1865001)))))

(assert (=> b!4701790 (= lt!1865001 (-!704 lt!1865024 key!4653))))

(declare-fun lt!1865010 () tuple2!53996)

(declare-fun extractMap!1926 (List!52664) ListMap!5053)

(assert (=> b!4701790 (= lt!1865002 (extractMap!1926 (Cons!52540 lt!1865010 (t!359878 (toList!5689 lm!2023)))))))

(declare-fun lt!1865000 () List!52664)

(declare-fun lt!1864999 () tuple2!53996)

(assert (=> b!4701790 (eq!1059 (extractMap!1926 (Cons!52540 lt!1865010 lt!1865000)) (-!704 (extractMap!1926 (Cons!52540 lt!1864999 lt!1865000)) key!4653))))

(declare-fun lt!1865020 () List!52664)

(declare-fun tail!8725 (List!52664) List!52664)

(assert (=> b!4701790 (= lt!1865000 (tail!8725 lt!1865020))))

(declare-fun hash!405 () (_ BitVec 64))

(declare-fun lt!1865015 () List!52663)

(assert (=> b!4701790 (= lt!1865010 (tuple2!53997 hash!405 lt!1865015))))

(declare-fun lt!1865030 () Unit!126364)

(declare-fun lt!1864996 () ListLongMap!4219)

(declare-datatypes ((Hashable!6269 0))(
  ( (HashableExt!6268 (__x!31972 Int)) )
))
(declare-fun hashF!1323 () Hashable!6269)

(declare-fun lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMapOneHashIsHead!74 (ListLongMap!4219 (_ BitVec 64) List!52663 List!52663 K!13900 Hashable!6269) Unit!126364)

(assert (=> b!4701790 (= lt!1865030 (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMapOneHashIsHead!74 lt!1864996 hash!405 (t!359877 oldBucket!34) lt!1865015 key!4653 hashF!1323))))

(declare-fun b!4701791 () Bool)

(declare-fun e!2932968 () Bool)

(assert (=> b!4701791 (= e!2932969 e!2932968)))

(declare-fun res!1985229 () Bool)

(assert (=> b!4701791 (=> (not res!1985229) (not e!2932968))))

(declare-fun lt!1865017 () ListMap!5053)

(declare-fun contains!15822 (ListMap!5053 K!13900) Bool)

(assert (=> b!4701791 (= res!1985229 (contains!15822 lt!1865017 key!4653))))

(assert (=> b!4701791 (= lt!1865017 (extractMap!1926 (toList!5689 lm!2023)))))

(declare-fun tp!1346711 () Bool)

(declare-fun tp_is_empty!30893 () Bool)

(declare-fun b!4701792 () Bool)

(declare-fun e!2932963 () Bool)

(declare-fun tp_is_empty!30895 () Bool)

(assert (=> b!4701792 (= e!2932963 (and tp_is_empty!30893 tp_is_empty!30895 tp!1346711))))

(declare-fun b!4701793 () Bool)

(declare-fun res!1985238 () Bool)

(assert (=> b!4701793 (=> res!1985238 e!2932958)))

(declare-fun lt!1865005 () ListMap!5053)

(assert (=> b!4701793 (= res!1985238 (not (eq!1059 lt!1865008 lt!1865005)))))

(declare-fun b!4701794 () Bool)

(declare-fun res!1985236 () Bool)

(assert (=> b!4701794 (=> res!1985236 e!2932961)))

(declare-fun lt!1865007 () tuple2!53994)

(declare-fun lt!1865013 () ListMap!5053)

(assert (=> b!4701794 (= res!1985236 (not (eq!1059 lt!1865005 (+!2184 lt!1865013 lt!1865007))))))

(declare-fun b!4701796 () Bool)

(declare-fun e!2932959 () Bool)

(assert (=> b!4701796 (= e!2932968 e!2932959)))

(declare-fun res!1985237 () Bool)

(assert (=> b!4701796 (=> (not res!1985237) (not e!2932959))))

(declare-fun lt!1865021 () (_ BitVec 64))

(assert (=> b!4701796 (= res!1985237 (= lt!1865021 hash!405))))

(declare-fun hash!4180 (Hashable!6269 K!13900) (_ BitVec 64))

(assert (=> b!4701796 (= lt!1865021 (hash!4180 hashF!1323 key!4653))))

(declare-fun b!4701797 () Bool)

(assert (=> b!4701797 (= e!2932958 true)))

(declare-fun lt!1864997 () Bool)

(assert (=> b!4701797 (= lt!1864997 (eq!1059 lt!1865009 (+!2184 lt!1865002 (h!58822 oldBucket!34))))))

(assert (=> b!4701797 (eq!1059 lt!1865006 (+!2184 lt!1865002 (h!58822 oldBucket!34)))))

(declare-fun lt!1865025 () Unit!126364)

(declare-fun lemmaAddToEqMapsPreservesEq!82 (ListMap!5053 ListMap!5053 K!13900 V!14146) Unit!126364)

(assert (=> b!4701797 (= lt!1865025 (lemmaAddToEqMapsPreservesEq!82 lt!1865001 lt!1865002 (_1!30291 (h!58822 oldBucket!34)) (_2!30291 (h!58822 oldBucket!34))))))

(declare-fun b!4701798 () Bool)

(declare-fun e!2932960 () Bool)

(declare-fun e!2932965 () Bool)

(assert (=> b!4701798 (= e!2932960 e!2932965)))

(declare-fun res!1985242 () Bool)

(assert (=> b!4701798 (=> res!1985242 e!2932965)))

(declare-fun lt!1865023 () List!52663)

(declare-fun removePairForKey!1495 (List!52663 K!13900) List!52663)

(assert (=> b!4701798 (= res!1985242 (not (= (removePairForKey!1495 lt!1865023 key!4653) lt!1865015)))))

(declare-fun newBucket!218 () List!52663)

(declare-fun tail!8726 (List!52663) List!52663)

(assert (=> b!4701798 (= lt!1865015 (tail!8726 newBucket!218))))

(assert (=> b!4701798 (= lt!1865023 (tail!8726 oldBucket!34))))

(declare-fun b!4701799 () Bool)

(declare-fun res!1985246 () Bool)

(assert (=> b!4701799 (=> (not res!1985246) (not e!2932959))))

(declare-fun allKeysSameHash!1726 (List!52663 (_ BitVec 64) Hashable!6269) Bool)

(assert (=> b!4701799 (= res!1985246 (allKeysSameHash!1726 newBucket!218 hash!405 hashF!1323))))

(declare-fun b!4701800 () Bool)

(declare-fun res!1985226 () Bool)

(assert (=> b!4701800 (=> (not res!1985226) (not e!2932959))))

(declare-fun allKeysSameHashInMap!1814 (ListLongMap!4219 Hashable!6269) Bool)

(assert (=> b!4701800 (= res!1985226 (allKeysSameHashInMap!1814 lm!2023 hashF!1323))))

(declare-fun b!4701801 () Bool)

(declare-fun res!1985230 () Bool)

(assert (=> b!4701801 (=> (not res!1985230) (not e!2932969))))

(assert (=> b!4701801 (= res!1985230 (= (removePairForKey!1495 oldBucket!34 key!4653) newBucket!218))))

(declare-fun b!4701802 () Bool)

(assert (=> b!4701802 (= e!2932959 e!2932967)))

(declare-fun res!1985234 () Bool)

(assert (=> b!4701802 (=> (not res!1985234) (not e!2932967))))

(declare-fun lt!1865019 () tuple2!53996)

(declare-fun head!10063 (List!52664) tuple2!53996)

(assert (=> b!4701802 (= res!1985234 (= (head!10063 (toList!5689 lm!2023)) lt!1865019))))

(assert (=> b!4701802 (= lt!1865019 (tuple2!53997 hash!405 oldBucket!34))))

(declare-fun b!4701803 () Bool)

(declare-fun e!2932970 () Bool)

(assert (=> b!4701803 (= e!2932967 (not e!2932970))))

(declare-fun res!1985232 () Bool)

(assert (=> b!4701803 (=> res!1985232 e!2932970)))

(assert (=> b!4701803 (= res!1985232 (or (and ((_ is Cons!52539) oldBucket!34) (= (_1!30291 (h!58822 oldBucket!34)) key!4653)) (not ((_ is Cons!52539) oldBucket!34)) (= (_1!30291 (h!58822 oldBucket!34)) key!4653)))))

(declare-fun lt!1865022 () ListMap!5053)

(declare-fun addToMapMapFromBucket!1332 (List!52663 ListMap!5053) ListMap!5053)

(assert (=> b!4701803 (= lt!1865017 (addToMapMapFromBucket!1332 (_2!30292 (h!58823 (toList!5689 lm!2023))) lt!1865022))))

(assert (=> b!4701803 (= lt!1865022 (extractMap!1926 (t!359878 (toList!5689 lm!2023))))))

(declare-fun tail!8727 (ListLongMap!4219) ListLongMap!4219)

(assert (=> b!4701803 (= (t!359878 (toList!5689 lm!2023)) (toList!5689 (tail!8727 lm!2023)))))

(declare-fun b!4701804 () Bool)

(declare-fun res!1985228 () Bool)

(assert (=> b!4701804 (=> (not res!1985228) (not e!2932969))))

(assert (=> b!4701804 (= res!1985228 (allKeysSameHash!1726 oldBucket!34 hash!405 hashF!1323))))

(declare-fun b!4701805 () Bool)

(declare-fun res!1985245 () Bool)

(assert (=> b!4701805 (=> res!1985245 e!2932961)))

(assert (=> b!4701805 (= res!1985245 (not (= (h!58822 oldBucket!34) lt!1865007)))))

(declare-fun b!4701806 () Bool)

(assert (=> b!4701806 (= e!2932970 e!2932960)))

(declare-fun res!1985247 () Bool)

(assert (=> b!4701806 (=> res!1985247 e!2932960)))

(declare-fun containsKey!3175 (List!52663 K!13900) Bool)

(assert (=> b!4701806 (= res!1985247 (not (containsKey!3175 (t!359877 oldBucket!34) key!4653)))))

(assert (=> b!4701806 (containsKey!3175 oldBucket!34 key!4653)))

(declare-fun lt!1865016 () Unit!126364)

(declare-fun lemmaGetPairDefinedThenContainsKey!252 (List!52663 K!13900 Hashable!6269) Unit!126364)

(assert (=> b!4701806 (= lt!1865016 (lemmaGetPairDefinedThenContainsKey!252 oldBucket!34 key!4653 hashF!1323))))

(declare-fun lt!1865018 () List!52663)

(declare-datatypes ((Option!12199 0))(
  ( (None!12198) (Some!12198 (v!46689 tuple2!53994)) )
))
(declare-fun isDefined!9454 (Option!12199) Bool)

(declare-fun getPair!504 (List!52663 K!13900) Option!12199)

(assert (=> b!4701806 (isDefined!9454 (getPair!504 lt!1865018 key!4653))))

(declare-fun lambda!210439 () Int)

(declare-fun lt!1864998 () tuple2!53996)

(declare-fun lt!1865012 () Unit!126364)

(declare-fun forallContained!3512 (List!52664 Int tuple2!53996) Unit!126364)

(assert (=> b!4701806 (= lt!1865012 (forallContained!3512 (toList!5689 lm!2023) lambda!210439 lt!1864998))))

(declare-fun contains!15823 (List!52664 tuple2!53996) Bool)

(assert (=> b!4701806 (contains!15823 (toList!5689 lm!2023) lt!1864998)))

(assert (=> b!4701806 (= lt!1864998 (tuple2!53997 lt!1865021 lt!1865018))))

(declare-fun lt!1864994 () Unit!126364)

(declare-fun lemmaGetValueImpliesTupleContained!309 (ListLongMap!4219 (_ BitVec 64) List!52663) Unit!126364)

(assert (=> b!4701806 (= lt!1864994 (lemmaGetValueImpliesTupleContained!309 lm!2023 lt!1865021 lt!1865018))))

(declare-fun apply!12383 (ListLongMap!4219 (_ BitVec 64)) List!52663)

(assert (=> b!4701806 (= lt!1865018 (apply!12383 lm!2023 lt!1865021))))

(declare-fun contains!15824 (ListLongMap!4219 (_ BitVec 64)) Bool)

(assert (=> b!4701806 (contains!15824 lm!2023 lt!1865021)))

(declare-fun lt!1864995 () Unit!126364)

(declare-fun lemmaInGenMapThenLongMapContainsHash!710 (ListLongMap!4219 K!13900 Hashable!6269) Unit!126364)

(assert (=> b!4701806 (= lt!1864995 (lemmaInGenMapThenLongMapContainsHash!710 lm!2023 key!4653 hashF!1323))))

(declare-fun lt!1865003 () Unit!126364)

(declare-fun lemmaInGenMapThenGetPairDefined!300 (ListLongMap!4219 K!13900 Hashable!6269) Unit!126364)

(assert (=> b!4701806 (= lt!1865003 (lemmaInGenMapThenGetPairDefined!300 lm!2023 key!4653 hashF!1323))))

(declare-fun b!4701807 () Bool)

(declare-fun res!1985244 () Bool)

(assert (=> b!4701807 (=> (not res!1985244) (not e!2932969))))

(assert (=> b!4701807 (= res!1985244 (noDuplicateKeys!1900 newBucket!218))))

(declare-fun b!4701808 () Bool)

(declare-fun e!2932962 () Bool)

(declare-fun tp!1346709 () Bool)

(assert (=> b!4701808 (= e!2932962 tp!1346709)))

(declare-fun b!4701809 () Bool)

(declare-fun res!1985231 () Bool)

(assert (=> b!4701809 (=> res!1985231 e!2932965)))

(assert (=> b!4701809 (= res!1985231 (not (= (removePairForKey!1495 (t!359877 oldBucket!34) key!4653) lt!1865015)))))

(declare-fun b!4701810 () Bool)

(assert (=> b!4701810 (= e!2932965 e!2932961)))

(declare-fun res!1985233 () Bool)

(assert (=> b!4701810 (=> res!1985233 e!2932961)))

(assert (=> b!4701810 (= res!1985233 (not (eq!1059 lt!1865005 (+!2184 lt!1865013 (h!58822 oldBucket!34)))))))

(assert (=> b!4701810 (= lt!1865013 (extractMap!1926 (Cons!52540 (tuple2!53997 hash!405 lt!1865023) (t!359878 (toList!5689 lm!2023)))))))

(assert (=> b!4701810 (= lt!1865005 (extractMap!1926 (Cons!52540 lt!1865019 (t!359878 (toList!5689 lm!2023)))))))

(assert (=> b!4701810 (eq!1059 (addToMapMapFromBucket!1332 (Cons!52539 lt!1865007 lt!1865015) lt!1865022) (+!2184 (addToMapMapFromBucket!1332 lt!1865015 lt!1865022) lt!1865007))))

(declare-fun lt!1865027 () Unit!126364)

(declare-fun lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!308 (tuple2!53994 List!52663 ListMap!5053) Unit!126364)

(assert (=> b!4701810 (= lt!1865027 (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!308 lt!1865007 lt!1865015 lt!1865022))))

(declare-fun head!10064 (List!52663) tuple2!53994)

(assert (=> b!4701810 (= lt!1865007 (head!10064 newBucket!218))))

(declare-fun lt!1865026 () tuple2!53994)

(assert (=> b!4701810 (eq!1059 (addToMapMapFromBucket!1332 (Cons!52539 lt!1865026 lt!1865023) lt!1865022) (+!2184 (addToMapMapFromBucket!1332 lt!1865023 lt!1865022) lt!1865026))))

(declare-fun lt!1865029 () Unit!126364)

(assert (=> b!4701810 (= lt!1865029 (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!308 lt!1865026 lt!1865023 lt!1865022))))

(assert (=> b!4701810 (= lt!1865026 (head!10064 oldBucket!34))))

(assert (=> b!4701810 (contains!15822 lt!1865024 key!4653)))

(assert (=> b!4701810 (= lt!1865024 (extractMap!1926 lt!1865020))))

(declare-fun lt!1865014 () Unit!126364)

(declare-fun lemmaListContainsThenExtractedMapContains!492 (ListLongMap!4219 K!13900 Hashable!6269) Unit!126364)

(assert (=> b!4701810 (= lt!1865014 (lemmaListContainsThenExtractedMapContains!492 lt!1864996 key!4653 hashF!1323))))

(assert (=> b!4701810 (= lt!1864996 (ListLongMap!4220 lt!1865020))))

(assert (=> b!4701810 (= lt!1865020 (Cons!52540 lt!1864999 (t!359878 (toList!5689 lm!2023))))))

(assert (=> b!4701810 (= lt!1864999 (tuple2!53997 hash!405 (t!359877 oldBucket!34)))))

(declare-fun b!4701811 () Bool)

(declare-fun res!1985243 () Bool)

(assert (=> b!4701811 (=> res!1985243 e!2932958)))

(assert (=> b!4701811 (= res!1985243 (not (eq!1059 lt!1865004 lt!1865009)))))

(declare-fun res!1985240 () Bool)

(assert (=> start!476976 (=> (not res!1985240) (not e!2932969))))

(declare-fun forall!11405 (List!52664 Int) Bool)

(assert (=> start!476976 (= res!1985240 (forall!11405 (toList!5689 lm!2023) lambda!210439))))

(assert (=> start!476976 e!2932969))

(declare-fun inv!67774 (ListLongMap!4219) Bool)

(assert (=> start!476976 (and (inv!67774 lm!2023) e!2932962)))

(assert (=> start!476976 tp_is_empty!30893))

(declare-fun e!2932964 () Bool)

(assert (=> start!476976 e!2932964))

(assert (=> start!476976 true))

(assert (=> start!476976 e!2932963))

(declare-fun b!4701795 () Bool)

(declare-fun tp!1346710 () Bool)

(assert (=> b!4701795 (= e!2932964 (and tp_is_empty!30893 tp_is_empty!30895 tp!1346710))))

(assert (= (and start!476976 res!1985240) b!4701789))

(assert (= (and b!4701789 res!1985235) b!4701807))

(assert (= (and b!4701807 res!1985244) b!4701801))

(assert (= (and b!4701801 res!1985230) b!4701804))

(assert (= (and b!4701804 res!1985228) b!4701791))

(assert (= (and b!4701791 res!1985229) b!4701796))

(assert (= (and b!4701796 res!1985237) b!4701799))

(assert (= (and b!4701799 res!1985246) b!4701800))

(assert (= (and b!4701800 res!1985226) b!4701802))

(assert (= (and b!4701802 res!1985234) b!4701787))

(assert (= (and b!4701787 res!1985239) b!4701803))

(assert (= (and b!4701803 (not res!1985232)) b!4701806))

(assert (= (and b!4701806 (not res!1985247)) b!4701798))

(assert (= (and b!4701798 (not res!1985242)) b!4701809))

(assert (= (and b!4701809 (not res!1985231)) b!4701810))

(assert (= (and b!4701810 (not res!1985233)) b!4701805))

(assert (= (and b!4701805 (not res!1985245)) b!4701794))

(assert (= (and b!4701794 (not res!1985236)) b!4701790))

(assert (= (and b!4701790 (not res!1985227)) b!4701788))

(assert (= (and b!4701788 (not res!1985241)) b!4701811))

(assert (= (and b!4701811 (not res!1985243)) b!4701793))

(assert (= (and b!4701793 (not res!1985238)) b!4701797))

(assert (= start!476976 b!4701808))

(assert (= (and start!476976 ((_ is Cons!52539) oldBucket!34)) b!4701795))

(assert (= (and start!476976 ((_ is Cons!52539) newBucket!218)) b!4701792))

(declare-fun m!5617921 () Bool)

(assert (=> b!4701807 m!5617921))

(declare-fun m!5617923 () Bool)

(assert (=> b!4701796 m!5617923))

(declare-fun m!5617925 () Bool)

(assert (=> b!4701788 m!5617925))

(declare-fun m!5617927 () Bool)

(assert (=> b!4701788 m!5617927))

(declare-fun m!5617929 () Bool)

(assert (=> b!4701788 m!5617929))

(declare-fun m!5617931 () Bool)

(assert (=> b!4701788 m!5617931))

(assert (=> b!4701788 m!5617927))

(declare-fun m!5617933 () Bool)

(assert (=> b!4701788 m!5617933))

(declare-fun m!5617935 () Bool)

(assert (=> b!4701802 m!5617935))

(declare-fun m!5617937 () Bool)

(assert (=> b!4701797 m!5617937))

(assert (=> b!4701797 m!5617937))

(declare-fun m!5617939 () Bool)

(assert (=> b!4701797 m!5617939))

(assert (=> b!4701797 m!5617937))

(declare-fun m!5617941 () Bool)

(assert (=> b!4701797 m!5617941))

(declare-fun m!5617943 () Bool)

(assert (=> b!4701797 m!5617943))

(declare-fun m!5617945 () Bool)

(assert (=> b!4701804 m!5617945))

(declare-fun m!5617947 () Bool)

(assert (=> b!4701793 m!5617947))

(declare-fun m!5617949 () Bool)

(assert (=> b!4701794 m!5617949))

(assert (=> b!4701794 m!5617949))

(declare-fun m!5617951 () Bool)

(assert (=> b!4701794 m!5617951))

(declare-fun m!5617953 () Bool)

(assert (=> b!4701803 m!5617953))

(declare-fun m!5617955 () Bool)

(assert (=> b!4701803 m!5617955))

(declare-fun m!5617957 () Bool)

(assert (=> b!4701803 m!5617957))

(declare-fun m!5617959 () Bool)

(assert (=> b!4701798 m!5617959))

(declare-fun m!5617961 () Bool)

(assert (=> b!4701798 m!5617961))

(declare-fun m!5617963 () Bool)

(assert (=> b!4701798 m!5617963))

(declare-fun m!5617965 () Bool)

(assert (=> b!4701800 m!5617965))

(declare-fun m!5617967 () Bool)

(assert (=> b!4701801 m!5617967))

(declare-fun m!5617969 () Bool)

(assert (=> b!4701789 m!5617969))

(declare-fun m!5617971 () Bool)

(assert (=> start!476976 m!5617971))

(declare-fun m!5617973 () Bool)

(assert (=> start!476976 m!5617973))

(declare-fun m!5617975 () Bool)

(assert (=> b!4701791 m!5617975))

(declare-fun m!5617977 () Bool)

(assert (=> b!4701791 m!5617977))

(declare-fun m!5617979 () Bool)

(assert (=> b!4701811 m!5617979))

(declare-fun m!5617981 () Bool)

(assert (=> b!4701810 m!5617981))

(declare-fun m!5617983 () Bool)

(assert (=> b!4701810 m!5617983))

(declare-fun m!5617985 () Bool)

(assert (=> b!4701810 m!5617985))

(declare-fun m!5617987 () Bool)

(assert (=> b!4701810 m!5617987))

(declare-fun m!5617989 () Bool)

(assert (=> b!4701810 m!5617989))

(declare-fun m!5617991 () Bool)

(assert (=> b!4701810 m!5617991))

(declare-fun m!5617993 () Bool)

(assert (=> b!4701810 m!5617993))

(declare-fun m!5617995 () Bool)

(assert (=> b!4701810 m!5617995))

(declare-fun m!5617997 () Bool)

(assert (=> b!4701810 m!5617997))

(assert (=> b!4701810 m!5617991))

(assert (=> b!4701810 m!5617997))

(assert (=> b!4701810 m!5617989))

(declare-fun m!5617999 () Bool)

(assert (=> b!4701810 m!5617999))

(declare-fun m!5618001 () Bool)

(assert (=> b!4701810 m!5618001))

(assert (=> b!4701810 m!5617985))

(declare-fun m!5618003 () Bool)

(assert (=> b!4701810 m!5618003))

(assert (=> b!4701810 m!5617981))

(declare-fun m!5618005 () Bool)

(assert (=> b!4701810 m!5618005))

(declare-fun m!5618007 () Bool)

(assert (=> b!4701810 m!5618007))

(declare-fun m!5618009 () Bool)

(assert (=> b!4701810 m!5618009))

(declare-fun m!5618011 () Bool)

(assert (=> b!4701810 m!5618011))

(declare-fun m!5618013 () Bool)

(assert (=> b!4701810 m!5618013))

(declare-fun m!5618015 () Bool)

(assert (=> b!4701810 m!5618015))

(assert (=> b!4701810 m!5618009))

(assert (=> b!4701810 m!5617983))

(declare-fun m!5618017 () Bool)

(assert (=> b!4701810 m!5618017))

(declare-fun m!5618019 () Bool)

(assert (=> b!4701806 m!5618019))

(declare-fun m!5618021 () Bool)

(assert (=> b!4701806 m!5618021))

(declare-fun m!5618023 () Bool)

(assert (=> b!4701806 m!5618023))

(declare-fun m!5618025 () Bool)

(assert (=> b!4701806 m!5618025))

(declare-fun m!5618027 () Bool)

(assert (=> b!4701806 m!5618027))

(declare-fun m!5618029 () Bool)

(assert (=> b!4701806 m!5618029))

(declare-fun m!5618031 () Bool)

(assert (=> b!4701806 m!5618031))

(declare-fun m!5618033 () Bool)

(assert (=> b!4701806 m!5618033))

(declare-fun m!5618035 () Bool)

(assert (=> b!4701806 m!5618035))

(declare-fun m!5618037 () Bool)

(assert (=> b!4701806 m!5618037))

(declare-fun m!5618039 () Bool)

(assert (=> b!4701806 m!5618039))

(declare-fun m!5618041 () Bool)

(assert (=> b!4701806 m!5618041))

(assert (=> b!4701806 m!5618025))

(declare-fun m!5618043 () Bool)

(assert (=> b!4701799 m!5618043))

(declare-fun m!5618045 () Bool)

(assert (=> b!4701809 m!5618045))

(declare-fun m!5618047 () Bool)

(assert (=> b!4701790 m!5618047))

(declare-fun m!5618049 () Bool)

(assert (=> b!4701790 m!5618049))

(declare-fun m!5618051 () Bool)

(assert (=> b!4701790 m!5618051))

(declare-fun m!5618053 () Bool)

(assert (=> b!4701790 m!5618053))

(declare-fun m!5618055 () Bool)

(assert (=> b!4701790 m!5618055))

(declare-fun m!5618057 () Bool)

(assert (=> b!4701790 m!5618057))

(declare-fun m!5618059 () Bool)

(assert (=> b!4701790 m!5618059))

(declare-fun m!5618061 () Bool)

(assert (=> b!4701790 m!5618061))

(assert (=> b!4701790 m!5618061))

(assert (=> b!4701790 m!5618057))

(declare-fun m!5618063 () Bool)

(assert (=> b!4701790 m!5618063))

(assert (=> b!4701790 m!5618055))

(check-sat (not b!4701811) (not b!4701810) (not b!4701804) (not b!4701807) (not b!4701792) (not b!4701803) (not b!4701790) (not b!4701791) tp_is_empty!30895 (not b!4701796) (not b!4701808) (not b!4701789) (not b!4701801) (not b!4701798) (not b!4701795) (not b!4701809) (not b!4701794) tp_is_empty!30893 (not b!4701788) (not start!476976) (not b!4701797) (not b!4701799) (not b!4701806) (not b!4701793) (not b!4701800) (not b!4701802))
(check-sat)
