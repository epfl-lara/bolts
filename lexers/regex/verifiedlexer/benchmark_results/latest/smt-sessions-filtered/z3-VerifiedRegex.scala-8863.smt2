; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!473456 () Bool)

(assert start!473456)

(declare-fun b!4685188 () Bool)

(declare-fun res!1975333 () Bool)

(declare-fun e!2922996 () Bool)

(assert (=> b!4685188 (=> (not res!1975333) (not e!2922996))))

(declare-datatypes ((K!13720 0))(
  ( (K!13721 (val!19247 Int)) )
))
(declare-datatypes ((V!13966 0))(
  ( (V!13967 (val!19248 Int)) )
))
(declare-datatypes ((tuple2!53706 0))(
  ( (tuple2!53707 (_1!30147 K!13720) (_2!30147 V!13966)) )
))
(declare-datatypes ((List!52465 0))(
  ( (Nil!52341) (Cons!52341 (h!58570 tuple2!53706) (t!359627 List!52465)) )
))
(declare-fun oldBucket!34 () List!52465)

(declare-fun noDuplicateKeys!1828 (List!52465) Bool)

(assert (=> b!4685188 (= res!1975333 (noDuplicateKeys!1828 oldBucket!34))))

(declare-fun b!4685189 () Bool)

(declare-fun e!2922993 () Bool)

(declare-fun e!2922994 () Bool)

(assert (=> b!4685189 (= e!2922993 e!2922994)))

(declare-fun res!1975338 () Bool)

(assert (=> b!4685189 (=> (not res!1975338) (not e!2922994))))

(declare-fun lt!1844386 () (_ BitVec 64))

(declare-fun hash!405 () (_ BitVec 64))

(assert (=> b!4685189 (= res!1975338 (= lt!1844386 hash!405))))

(declare-datatypes ((Hashable!6197 0))(
  ( (HashableExt!6196 (__x!31900 Int)) )
))
(declare-fun hashF!1323 () Hashable!6197)

(declare-fun key!4653 () K!13720)

(declare-fun hash!4023 (Hashable!6197 K!13720) (_ BitVec 64))

(assert (=> b!4685189 (= lt!1844386 (hash!4023 hashF!1323 key!4653))))

(declare-fun b!4685190 () Bool)

(declare-fun res!1975336 () Bool)

(assert (=> b!4685190 (=> (not res!1975336) (not e!2922994))))

(declare-datatypes ((tuple2!53708 0))(
  ( (tuple2!53709 (_1!30148 (_ BitVec 64)) (_2!30148 List!52465)) )
))
(declare-datatypes ((List!52466 0))(
  ( (Nil!52342) (Cons!52342 (h!58571 tuple2!53708) (t!359628 List!52466)) )
))
(declare-datatypes ((ListLongMap!4075 0))(
  ( (ListLongMap!4076 (toList!5545 List!52466)) )
))
(declare-fun lm!2023 () ListLongMap!4075)

(get-info :version)

(assert (=> b!4685190 (= res!1975336 ((_ is Cons!52342) (toList!5545 lm!2023)))))

(declare-fun b!4685191 () Bool)

(declare-fun res!1975341 () Bool)

(assert (=> b!4685191 (=> (not res!1975341) (not e!2922996))))

(declare-fun allKeysSameHash!1654 (List!52465 (_ BitVec 64) Hashable!6197) Bool)

(assert (=> b!4685191 (= res!1975341 (allKeysSameHash!1654 oldBucket!34 hash!405 hashF!1323))))

(declare-fun tp_is_empty!30607 () Bool)

(declare-fun e!2922997 () Bool)

(declare-fun tp_is_empty!30605 () Bool)

(declare-fun tp!1345522 () Bool)

(declare-fun b!4685192 () Bool)

(assert (=> b!4685192 (= e!2922997 (and tp_is_empty!30605 tp_is_empty!30607 tp!1345522))))

(declare-fun b!4685193 () Bool)

(declare-fun res!1975345 () Bool)

(assert (=> b!4685193 (=> (not res!1975345) (not e!2922996))))

(declare-fun newBucket!218 () List!52465)

(assert (=> b!4685193 (= res!1975345 (noDuplicateKeys!1828 newBucket!218))))

(declare-fun b!4685194 () Bool)

(declare-fun res!1975342 () Bool)

(assert (=> b!4685194 (=> (not res!1975342) (not e!2922994))))

(declare-fun head!9922 (List!52466) tuple2!53708)

(assert (=> b!4685194 (= res!1975342 (= (head!9922 (toList!5545 lm!2023)) (tuple2!53709 hash!405 oldBucket!34)))))

(declare-fun b!4685195 () Bool)

(declare-fun e!2922998 () Bool)

(assert (=> b!4685195 (= e!2922994 (not e!2922998))))

(declare-fun res!1975344 () Bool)

(assert (=> b!4685195 (=> res!1975344 e!2922998)))

(assert (=> b!4685195 (= res!1975344 (or (and ((_ is Cons!52341) oldBucket!34) (= (_1!30147 (h!58570 oldBucket!34)) key!4653)) (not ((_ is Cons!52341) oldBucket!34)) (= (_1!30147 (h!58570 oldBucket!34)) key!4653)))))

(declare-fun e!2922992 () Bool)

(assert (=> b!4685195 e!2922992))

(declare-fun res!1975339 () Bool)

(assert (=> b!4685195 (=> (not res!1975339) (not e!2922992))))

(declare-fun tail!8522 (ListLongMap!4075) ListLongMap!4075)

(assert (=> b!4685195 (= res!1975339 (= (t!359628 (toList!5545 lm!2023)) (toList!5545 (tail!8522 lm!2023))))))

(declare-fun b!4685196 () Bool)

(declare-fun e!2922995 () Bool)

(declare-fun tp!1345521 () Bool)

(assert (=> b!4685196 (= e!2922995 tp!1345521)))

(declare-fun b!4685197 () Bool)

(declare-fun e!2922991 () Bool)

(assert (=> b!4685197 (= e!2922991 (not (= oldBucket!34 Nil!52341)))))

(declare-fun lt!1844385 () List!52466)

(declare-datatypes ((ListMap!4909 0))(
  ( (ListMap!4910 (toList!5546 List!52465)) )
))
(declare-fun contains!15498 (ListMap!4909 K!13720) Bool)

(declare-fun extractMap!1854 (List!52466) ListMap!4909)

(assert (=> b!4685197 (contains!15498 (extractMap!1854 lt!1844385) key!4653)))

(declare-datatypes ((Unit!123189 0))(
  ( (Unit!123190) )
))
(declare-fun lt!1844391 () Unit!123189)

(declare-fun lemmaListContainsThenExtractedMapContains!420 (ListLongMap!4075 K!13720 Hashable!6197) Unit!123189)

(assert (=> b!4685197 (= lt!1844391 (lemmaListContainsThenExtractedMapContains!420 (ListLongMap!4076 lt!1844385) key!4653 hashF!1323))))

(assert (=> b!4685197 (= lt!1844385 (Cons!52342 (tuple2!53709 hash!405 (t!359627 oldBucket!34)) (t!359628 (toList!5545 lm!2023))))))

(declare-fun res!1975334 () Bool)

(assert (=> start!473456 (=> (not res!1975334) (not e!2922996))))

(declare-fun lambda!205831 () Int)

(declare-fun forall!11279 (List!52466 Int) Bool)

(assert (=> start!473456 (= res!1975334 (forall!11279 (toList!5545 lm!2023) lambda!205831))))

(assert (=> start!473456 e!2922996))

(declare-fun inv!67594 (ListLongMap!4075) Bool)

(assert (=> start!473456 (and (inv!67594 lm!2023) e!2922995)))

(assert (=> start!473456 tp_is_empty!30605))

(declare-fun e!2922999 () Bool)

(assert (=> start!473456 e!2922999))

(assert (=> start!473456 true))

(assert (=> start!473456 e!2922997))

(declare-fun b!4685187 () Bool)

(declare-fun res!1975340 () Bool)

(assert (=> b!4685187 (=> res!1975340 e!2922991)))

(declare-fun lt!1844392 () List!52465)

(declare-fun removePairForKey!1423 (List!52465 K!13720) List!52465)

(assert (=> b!4685187 (= res!1975340 (not (= (removePairForKey!1423 (t!359627 oldBucket!34) key!4653) lt!1844392)))))

(declare-fun b!4685198 () Bool)

(declare-fun res!1975335 () Bool)

(assert (=> b!4685198 (=> (not res!1975335) (not e!2922996))))

(assert (=> b!4685198 (= res!1975335 (= (removePairForKey!1423 oldBucket!34 key!4653) newBucket!218))))

(declare-fun b!4685199 () Bool)

(declare-fun e!2923000 () Bool)

(assert (=> b!4685199 (= e!2922998 e!2923000)))

(declare-fun res!1975337 () Bool)

(assert (=> b!4685199 (=> res!1975337 e!2923000)))

(declare-fun containsKey!2995 (List!52465 K!13720) Bool)

(assert (=> b!4685199 (= res!1975337 (not (containsKey!2995 (t!359627 oldBucket!34) key!4653)))))

(assert (=> b!4685199 (containsKey!2995 oldBucket!34 key!4653)))

(declare-fun lt!1844387 () Unit!123189)

(declare-fun lemmaGetPairDefinedThenContainsKey!180 (List!52465 K!13720 Hashable!6197) Unit!123189)

(assert (=> b!4685199 (= lt!1844387 (lemmaGetPairDefinedThenContainsKey!180 oldBucket!34 key!4653 hashF!1323))))

(declare-fun lt!1844390 () List!52465)

(declare-datatypes ((Option!12019 0))(
  ( (None!12018) (Some!12018 (v!46401 tuple2!53706)) )
))
(declare-fun isDefined!9274 (Option!12019) Bool)

(declare-fun getPair!432 (List!52465 K!13720) Option!12019)

(assert (=> b!4685199 (isDefined!9274 (getPair!432 lt!1844390 key!4653))))

(declare-fun lt!1844394 () tuple2!53708)

(declare-fun lt!1844383 () Unit!123189)

(declare-fun forallContained!3386 (List!52466 Int tuple2!53708) Unit!123189)

(assert (=> b!4685199 (= lt!1844383 (forallContained!3386 (toList!5545 lm!2023) lambda!205831 lt!1844394))))

(declare-fun contains!15499 (List!52466 tuple2!53708) Bool)

(assert (=> b!4685199 (contains!15499 (toList!5545 lm!2023) lt!1844394)))

(assert (=> b!4685199 (= lt!1844394 (tuple2!53709 lt!1844386 lt!1844390))))

(declare-fun lt!1844388 () Unit!123189)

(declare-fun lemmaGetValueImpliesTupleContained!237 (ListLongMap!4075 (_ BitVec 64) List!52465) Unit!123189)

(assert (=> b!4685199 (= lt!1844388 (lemmaGetValueImpliesTupleContained!237 lm!2023 lt!1844386 lt!1844390))))

(declare-fun apply!12311 (ListLongMap!4075 (_ BitVec 64)) List!52465)

(assert (=> b!4685199 (= lt!1844390 (apply!12311 lm!2023 lt!1844386))))

(declare-fun contains!15500 (ListLongMap!4075 (_ BitVec 64)) Bool)

(assert (=> b!4685199 (contains!15500 lm!2023 lt!1844386)))

(declare-fun lt!1844389 () Unit!123189)

(declare-fun lemmaInGenMapThenLongMapContainsHash!638 (ListLongMap!4075 K!13720 Hashable!6197) Unit!123189)

(assert (=> b!4685199 (= lt!1844389 (lemmaInGenMapThenLongMapContainsHash!638 lm!2023 key!4653 hashF!1323))))

(declare-fun lt!1844393 () Unit!123189)

(declare-fun lemmaInGenMapThenGetPairDefined!228 (ListLongMap!4075 K!13720 Hashable!6197) Unit!123189)

(assert (=> b!4685199 (= lt!1844393 (lemmaInGenMapThenGetPairDefined!228 lm!2023 key!4653 hashF!1323))))

(declare-fun b!4685200 () Bool)

(assert (=> b!4685200 (= e!2922996 e!2922993)))

(declare-fun res!1975343 () Bool)

(assert (=> b!4685200 (=> (not res!1975343) (not e!2922993))))

(declare-fun lt!1844384 () ListMap!4909)

(assert (=> b!4685200 (= res!1975343 (contains!15498 lt!1844384 key!4653))))

(assert (=> b!4685200 (= lt!1844384 (extractMap!1854 (toList!5545 lm!2023)))))

(declare-fun b!4685201 () Bool)

(declare-fun addToMapMapFromBucket!1260 (List!52465 ListMap!4909) ListMap!4909)

(assert (=> b!4685201 (= e!2922992 (= lt!1844384 (addToMapMapFromBucket!1260 (_2!30148 (h!58571 (toList!5545 lm!2023))) (extractMap!1854 (t!359628 (toList!5545 lm!2023))))))))

(declare-fun b!4685202 () Bool)

(declare-fun res!1975332 () Bool)

(assert (=> b!4685202 (=> (not res!1975332) (not e!2922994))))

(declare-fun allKeysSameHashInMap!1742 (ListLongMap!4075 Hashable!6197) Bool)

(assert (=> b!4685202 (= res!1975332 (allKeysSameHashInMap!1742 lm!2023 hashF!1323))))

(declare-fun b!4685203 () Bool)

(declare-fun res!1975330 () Bool)

(assert (=> b!4685203 (=> (not res!1975330) (not e!2922994))))

(assert (=> b!4685203 (= res!1975330 (allKeysSameHash!1654 newBucket!218 hash!405 hashF!1323))))

(declare-fun tp!1345523 () Bool)

(declare-fun b!4685204 () Bool)

(assert (=> b!4685204 (= e!2922999 (and tp_is_empty!30605 tp_is_empty!30607 tp!1345523))))

(declare-fun b!4685205 () Bool)

(assert (=> b!4685205 (= e!2923000 e!2922991)))

(declare-fun res!1975331 () Bool)

(assert (=> b!4685205 (=> res!1975331 e!2922991)))

(declare-fun tail!8523 (List!52465) List!52465)

(assert (=> b!4685205 (= res!1975331 (not (= (removePairForKey!1423 (tail!8523 oldBucket!34) key!4653) lt!1844392)))))

(assert (=> b!4685205 (= lt!1844392 (tail!8523 newBucket!218))))

(assert (= (and start!473456 res!1975334) b!4685188))

(assert (= (and b!4685188 res!1975333) b!4685193))

(assert (= (and b!4685193 res!1975345) b!4685198))

(assert (= (and b!4685198 res!1975335) b!4685191))

(assert (= (and b!4685191 res!1975341) b!4685200))

(assert (= (and b!4685200 res!1975343) b!4685189))

(assert (= (and b!4685189 res!1975338) b!4685203))

(assert (= (and b!4685203 res!1975330) b!4685202))

(assert (= (and b!4685202 res!1975332) b!4685194))

(assert (= (and b!4685194 res!1975342) b!4685190))

(assert (= (and b!4685190 res!1975336) b!4685195))

(assert (= (and b!4685195 res!1975339) b!4685201))

(assert (= (and b!4685195 (not res!1975344)) b!4685199))

(assert (= (and b!4685199 (not res!1975337)) b!4685205))

(assert (= (and b!4685205 (not res!1975331)) b!4685187))

(assert (= (and b!4685187 (not res!1975340)) b!4685197))

(assert (= start!473456 b!4685196))

(assert (= (and start!473456 ((_ is Cons!52341) oldBucket!34)) b!4685204))

(assert (= (and start!473456 ((_ is Cons!52341) newBucket!218)) b!4685192))

(declare-fun m!5583913 () Bool)

(assert (=> b!4685195 m!5583913))

(declare-fun m!5583915 () Bool)

(assert (=> b!4685191 m!5583915))

(declare-fun m!5583917 () Bool)

(assert (=> b!4685202 m!5583917))

(declare-fun m!5583919 () Bool)

(assert (=> start!473456 m!5583919))

(declare-fun m!5583921 () Bool)

(assert (=> start!473456 m!5583921))

(declare-fun m!5583923 () Bool)

(assert (=> b!4685188 m!5583923))

(declare-fun m!5583925 () Bool)

(assert (=> b!4685199 m!5583925))

(declare-fun m!5583927 () Bool)

(assert (=> b!4685199 m!5583927))

(declare-fun m!5583929 () Bool)

(assert (=> b!4685199 m!5583929))

(declare-fun m!5583931 () Bool)

(assert (=> b!4685199 m!5583931))

(declare-fun m!5583933 () Bool)

(assert (=> b!4685199 m!5583933))

(declare-fun m!5583935 () Bool)

(assert (=> b!4685199 m!5583935))

(assert (=> b!4685199 m!5583931))

(declare-fun m!5583937 () Bool)

(assert (=> b!4685199 m!5583937))

(declare-fun m!5583939 () Bool)

(assert (=> b!4685199 m!5583939))

(declare-fun m!5583941 () Bool)

(assert (=> b!4685199 m!5583941))

(declare-fun m!5583943 () Bool)

(assert (=> b!4685199 m!5583943))

(declare-fun m!5583945 () Bool)

(assert (=> b!4685199 m!5583945))

(declare-fun m!5583947 () Bool)

(assert (=> b!4685199 m!5583947))

(declare-fun m!5583949 () Bool)

(assert (=> b!4685197 m!5583949))

(assert (=> b!4685197 m!5583949))

(declare-fun m!5583951 () Bool)

(assert (=> b!4685197 m!5583951))

(declare-fun m!5583953 () Bool)

(assert (=> b!4685197 m!5583953))

(declare-fun m!5583955 () Bool)

(assert (=> b!4685193 m!5583955))

(declare-fun m!5583957 () Bool)

(assert (=> b!4685201 m!5583957))

(assert (=> b!4685201 m!5583957))

(declare-fun m!5583959 () Bool)

(assert (=> b!4685201 m!5583959))

(declare-fun m!5583961 () Bool)

(assert (=> b!4685198 m!5583961))

(declare-fun m!5583963 () Bool)

(assert (=> b!4685187 m!5583963))

(declare-fun m!5583965 () Bool)

(assert (=> b!4685200 m!5583965))

(declare-fun m!5583967 () Bool)

(assert (=> b!4685200 m!5583967))

(declare-fun m!5583969 () Bool)

(assert (=> b!4685205 m!5583969))

(assert (=> b!4685205 m!5583969))

(declare-fun m!5583971 () Bool)

(assert (=> b!4685205 m!5583971))

(declare-fun m!5583973 () Bool)

(assert (=> b!4685205 m!5583973))

(declare-fun m!5583975 () Bool)

(assert (=> b!4685189 m!5583975))

(declare-fun m!5583977 () Bool)

(assert (=> b!4685203 m!5583977))

(declare-fun m!5583979 () Bool)

(assert (=> b!4685194 m!5583979))

(check-sat (not b!4685198) (not b!4685191) (not b!4685193) tp_is_empty!30607 (not b!4685196) (not b!4685189) (not b!4685192) (not b!4685188) (not b!4685187) (not b!4685204) (not b!4685194) tp_is_empty!30605 (not b!4685195) (not b!4685197) (not b!4685203) (not b!4685199) (not b!4685201) (not b!4685202) (not start!473456) (not b!4685205) (not b!4685200))
(check-sat)
