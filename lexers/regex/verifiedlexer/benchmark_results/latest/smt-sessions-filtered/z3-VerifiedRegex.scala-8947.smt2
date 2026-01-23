; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!479912 () Bool)

(assert start!479912)

(declare-fun b!4717510 () Bool)

(declare-fun res!1995163 () Bool)

(declare-fun e!2942194 () Bool)

(assert (=> b!4717510 (=> (not res!1995163) (not e!2942194))))

(declare-datatypes ((K!14140 0))(
  ( (K!14141 (val!19583 Int)) )
))
(declare-datatypes ((V!14386 0))(
  ( (V!14387 (val!19584 Int)) )
))
(declare-datatypes ((tuple2!54378 0))(
  ( (tuple2!54379 (_1!30483 K!14140) (_2!30483 V!14386)) )
))
(declare-datatypes ((List!52903 0))(
  ( (Nil!52779) (Cons!52779 (h!59110 tuple2!54378) (t!360157 List!52903)) )
))
(declare-fun oldBucket!34 () List!52903)

(declare-fun noDuplicateKeys!1996 (List!52903) Bool)

(assert (=> b!4717510 (= res!1995163 (noDuplicateKeys!1996 oldBucket!34))))

(declare-fun b!4717511 () Bool)

(declare-fun res!1995173 () Bool)

(assert (=> b!4717511 (=> (not res!1995173) (not e!2942194))))

(declare-datatypes ((Hashable!6365 0))(
  ( (HashableExt!6364 (__x!32068 Int)) )
))
(declare-fun hashF!1323 () Hashable!6365)

(declare-fun hash!405 () (_ BitVec 64))

(declare-fun allKeysSameHash!1822 (List!52903 (_ BitVec 64) Hashable!6365) Bool)

(assert (=> b!4717511 (= res!1995173 (allKeysSameHash!1822 oldBucket!34 hash!405 hashF!1323))))

(declare-fun b!4717512 () Bool)

(declare-fun e!2942191 () Bool)

(declare-fun e!2942193 () Bool)

(assert (=> b!4717512 (= e!2942191 e!2942193)))

(declare-fun res!1995162 () Bool)

(assert (=> b!4717512 (=> res!1995162 e!2942193)))

(declare-datatypes ((ListMap!5245 0))(
  ( (ListMap!5246 (toList!5881 List!52903)) )
))
(declare-fun lt!1883192 () ListMap!5245)

(declare-fun lt!1883182 () ListMap!5245)

(declare-fun eq!1123 (ListMap!5245 ListMap!5245) Bool)

(declare-fun +!2256 (ListMap!5245 tuple2!54378) ListMap!5245)

(assert (=> b!4717512 (= res!1995162 (not (eq!1123 lt!1883192 (+!2256 lt!1883182 (h!59110 oldBucket!34)))))))

(declare-datatypes ((tuple2!54380 0))(
  ( (tuple2!54381 (_1!30484 (_ BitVec 64)) (_2!30484 List!52903)) )
))
(declare-datatypes ((List!52904 0))(
  ( (Nil!52780) (Cons!52780 (h!59111 tuple2!54380) (t!360158 List!52904)) )
))
(declare-datatypes ((ListLongMap!4411 0))(
  ( (ListLongMap!4412 (toList!5882 List!52904)) )
))
(declare-fun lm!2023 () ListLongMap!4411)

(declare-fun lt!1883176 () List!52903)

(declare-fun extractMap!2022 (List!52904) ListMap!5245)

(assert (=> b!4717512 (= lt!1883182 (extractMap!2022 (Cons!52780 (tuple2!54381 hash!405 lt!1883176) (t!360158 (toList!5882 lm!2023)))))))

(declare-fun lt!1883198 () tuple2!54380)

(assert (=> b!4717512 (= lt!1883192 (extractMap!2022 (Cons!52780 lt!1883198 (t!360158 (toList!5882 lm!2023)))))))

(declare-fun lt!1883169 () tuple2!54378)

(declare-fun lt!1883191 () List!52903)

(declare-fun lt!1883194 () ListMap!5245)

(declare-fun addToMapMapFromBucket!1426 (List!52903 ListMap!5245) ListMap!5245)

(assert (=> b!4717512 (eq!1123 (addToMapMapFromBucket!1426 (Cons!52779 lt!1883169 lt!1883191) lt!1883194) (+!2256 (addToMapMapFromBucket!1426 lt!1883191 lt!1883194) lt!1883169))))

(declare-datatypes ((Unit!128993 0))(
  ( (Unit!128994) )
))
(declare-fun lt!1883159 () Unit!128993)

(declare-fun lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!372 (tuple2!54378 List!52903 ListMap!5245) Unit!128993)

(assert (=> b!4717512 (= lt!1883159 (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!372 lt!1883169 lt!1883191 lt!1883194))))

(declare-fun newBucket!218 () List!52903)

(declare-fun head!10221 (List!52903) tuple2!54378)

(assert (=> b!4717512 (= lt!1883169 (head!10221 newBucket!218))))

(declare-fun lt!1883185 () tuple2!54378)

(assert (=> b!4717512 (eq!1123 (addToMapMapFromBucket!1426 (Cons!52779 lt!1883185 lt!1883176) lt!1883194) (+!2256 (addToMapMapFromBucket!1426 lt!1883176 lt!1883194) lt!1883185))))

(declare-fun lt!1883195 () Unit!128993)

(assert (=> b!4717512 (= lt!1883195 (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!372 lt!1883185 lt!1883176 lt!1883194))))

(assert (=> b!4717512 (= lt!1883185 (head!10221 oldBucket!34))))

(declare-fun lt!1883168 () ListMap!5245)

(declare-fun key!4653 () K!14140)

(declare-fun contains!16131 (ListMap!5245 K!14140) Bool)

(assert (=> b!4717512 (contains!16131 lt!1883168 key!4653)))

(declare-fun lt!1883188 () List!52904)

(assert (=> b!4717512 (= lt!1883168 (extractMap!2022 lt!1883188))))

(declare-fun lt!1883186 () Unit!128993)

(declare-fun lt!1883171 () ListLongMap!4411)

(declare-fun lemmaListContainsThenExtractedMapContains!542 (ListLongMap!4411 K!14140 Hashable!6365) Unit!128993)

(assert (=> b!4717512 (= lt!1883186 (lemmaListContainsThenExtractedMapContains!542 lt!1883171 key!4653 hashF!1323))))

(assert (=> b!4717512 (= lt!1883171 (ListLongMap!4412 lt!1883188))))

(declare-fun lt!1883172 () tuple2!54380)

(assert (=> b!4717512 (= lt!1883188 (Cons!52780 lt!1883172 (t!360158 (toList!5882 lm!2023))))))

(assert (=> b!4717512 (= lt!1883172 (tuple2!54381 hash!405 (t!360157 oldBucket!34)))))

(declare-fun b!4717513 () Bool)

(declare-fun e!2942189 () Bool)

(assert (=> b!4717513 (= e!2942193 e!2942189)))

(declare-fun res!1995176 () Bool)

(assert (=> b!4717513 (=> res!1995176 e!2942189)))

(declare-fun lt!1883175 () ListMap!5245)

(declare-fun lt!1883184 () ListMap!5245)

(assert (=> b!4717513 (= res!1995176 (not (eq!1123 lt!1883175 lt!1883184)))))

(declare-fun -!752 (ListMap!5245 K!14140) ListMap!5245)

(assert (=> b!4717513 (= lt!1883184 (-!752 lt!1883168 key!4653))))

(declare-fun lt!1883162 () tuple2!54380)

(assert (=> b!4717513 (= lt!1883175 (extractMap!2022 (Cons!52780 lt!1883162 (t!360158 (toList!5882 lm!2023)))))))

(declare-fun lt!1883166 () List!52904)

(assert (=> b!4717513 (eq!1123 (extractMap!2022 (Cons!52780 lt!1883162 lt!1883166)) (-!752 (extractMap!2022 (Cons!52780 lt!1883172 lt!1883166)) key!4653))))

(declare-fun tail!8962 (List!52904) List!52904)

(assert (=> b!4717513 (= lt!1883166 (tail!8962 lt!1883188))))

(assert (=> b!4717513 (= lt!1883162 (tuple2!54381 hash!405 lt!1883191))))

(declare-fun lt!1883181 () Unit!128993)

(declare-fun lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMapOneHashIsHead!114 (ListLongMap!4411 (_ BitVec 64) List!52903 List!52903 K!14140 Hashable!6365) Unit!128993)

(assert (=> b!4717513 (= lt!1883181 (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMapOneHashIsHead!114 lt!1883171 hash!405 (t!360157 oldBucket!34) lt!1883191 key!4653 hashF!1323))))

(declare-fun b!4717514 () Bool)

(declare-fun res!1995181 () Bool)

(declare-fun e!2942190 () Bool)

(assert (=> b!4717514 (=> res!1995181 e!2942190)))

(declare-fun lt!1883189 () ListMap!5245)

(declare-fun lt!1883179 () ListMap!5245)

(assert (=> b!4717514 (= res!1995181 (not (eq!1123 lt!1883189 lt!1883179)))))

(declare-fun tp_is_empty!31279 () Bool)

(declare-fun tp_is_empty!31277 () Bool)

(declare-fun tp!1348054 () Bool)

(declare-fun e!2942199 () Bool)

(declare-fun b!4717515 () Bool)

(assert (=> b!4717515 (= e!2942199 (and tp_is_empty!31277 tp_is_empty!31279 tp!1348054))))

(declare-fun b!4717516 () Bool)

(declare-fun res!1995161 () Bool)

(assert (=> b!4717516 (=> res!1995161 e!2942193)))

(assert (=> b!4717516 (= res!1995161 (not (eq!1123 lt!1883192 (+!2256 lt!1883182 lt!1883169))))))

(declare-fun b!4717517 () Bool)

(declare-fun res!1995169 () Bool)

(declare-fun e!2942197 () Bool)

(assert (=> b!4717517 (=> (not res!1995169) (not e!2942197))))

(declare-fun allKeysSameHashInMap!1910 (ListLongMap!4411 Hashable!6365) Bool)

(assert (=> b!4717517 (= res!1995169 (allKeysSameHashInMap!1910 lm!2023 hashF!1323))))

(declare-fun b!4717518 () Bool)

(declare-fun e!2942201 () Bool)

(assert (=> b!4717518 (= e!2942201 e!2942191)))

(declare-fun res!1995165 () Bool)

(assert (=> b!4717518 (=> res!1995165 e!2942191)))

(declare-fun removePairForKey!1591 (List!52903 K!14140) List!52903)

(assert (=> b!4717518 (= res!1995165 (not (= (removePairForKey!1591 lt!1883176 key!4653) lt!1883191)))))

(declare-fun tail!8963 (List!52903) List!52903)

(assert (=> b!4717518 (= lt!1883191 (tail!8963 newBucket!218))))

(assert (=> b!4717518 (= lt!1883176 (tail!8963 oldBucket!34))))

(declare-fun b!4717519 () Bool)

(declare-fun e!2942188 () Bool)

(declare-fun lt!1883163 () ListMap!5245)

(declare-fun lt!1883178 () ListMap!5245)

(assert (=> b!4717519 (= e!2942188 (eq!1123 lt!1883163 lt!1883178))))

(declare-fun b!4717520 () Bool)

(declare-fun res!1995171 () Bool)

(declare-fun e!2942187 () Bool)

(assert (=> b!4717520 (=> (not res!1995171) (not e!2942187))))

(get-info :version)

(assert (=> b!4717520 (= res!1995171 ((_ is Cons!52780) (toList!5882 lm!2023)))))

(declare-fun b!4717521 () Bool)

(declare-fun e!2942200 () Bool)

(assert (=> b!4717521 (= e!2942194 e!2942200)))

(declare-fun res!1995166 () Bool)

(assert (=> b!4717521 (=> (not res!1995166) (not e!2942200))))

(declare-fun lt!1883161 () ListMap!5245)

(assert (=> b!4717521 (= res!1995166 (contains!16131 lt!1883161 key!4653))))

(assert (=> b!4717521 (= lt!1883161 (extractMap!2022 (toList!5882 lm!2023)))))

(declare-fun b!4717522 () Bool)

(declare-fun e!2942198 () Bool)

(assert (=> b!4717522 (= e!2942198 e!2942201)))

(declare-fun res!1995180 () Bool)

(assert (=> b!4717522 (=> res!1995180 e!2942201)))

(declare-fun containsKey!3337 (List!52903 K!14140) Bool)

(assert (=> b!4717522 (= res!1995180 (not (containsKey!3337 (t!360157 oldBucket!34) key!4653)))))

(assert (=> b!4717522 (containsKey!3337 oldBucket!34 key!4653)))

(declare-fun lt!1883187 () Unit!128993)

(declare-fun lemmaGetPairDefinedThenContainsKey!310 (List!52903 K!14140 Hashable!6365) Unit!128993)

(assert (=> b!4717522 (= lt!1883187 (lemmaGetPairDefinedThenContainsKey!310 oldBucket!34 key!4653 hashF!1323))))

(declare-fun lt!1883193 () List!52903)

(declare-datatypes ((Option!12340 0))(
  ( (None!12339) (Some!12339 (v!46902 tuple2!54378)) )
))
(declare-fun isDefined!9594 (Option!12340) Bool)

(declare-fun getPair!562 (List!52903 K!14140) Option!12340)

(assert (=> b!4717522 (isDefined!9594 (getPair!562 lt!1883193 key!4653))))

(declare-fun lambda!214343 () Int)

(declare-fun lt!1883177 () Unit!128993)

(declare-fun lt!1883183 () tuple2!54380)

(declare-fun forallContained!3618 (List!52904 Int tuple2!54380) Unit!128993)

(assert (=> b!4717522 (= lt!1883177 (forallContained!3618 (toList!5882 lm!2023) lambda!214343 lt!1883183))))

(declare-fun contains!16132 (List!52904 tuple2!54380) Bool)

(assert (=> b!4717522 (contains!16132 (toList!5882 lm!2023) lt!1883183)))

(declare-fun lt!1883196 () (_ BitVec 64))

(assert (=> b!4717522 (= lt!1883183 (tuple2!54381 lt!1883196 lt!1883193))))

(declare-fun lt!1883190 () Unit!128993)

(declare-fun lemmaGetValueImpliesTupleContained!367 (ListLongMap!4411 (_ BitVec 64) List!52903) Unit!128993)

(assert (=> b!4717522 (= lt!1883190 (lemmaGetValueImpliesTupleContained!367 lm!2023 lt!1883196 lt!1883193))))

(declare-fun apply!12445 (ListLongMap!4411 (_ BitVec 64)) List!52903)

(assert (=> b!4717522 (= lt!1883193 (apply!12445 lm!2023 lt!1883196))))

(declare-fun contains!16133 (ListLongMap!4411 (_ BitVec 64)) Bool)

(assert (=> b!4717522 (contains!16133 lm!2023 lt!1883196)))

(declare-fun lt!1883167 () Unit!128993)

(declare-fun lemmaInGenMapThenLongMapContainsHash!768 (ListLongMap!4411 K!14140 Hashable!6365) Unit!128993)

(assert (=> b!4717522 (= lt!1883167 (lemmaInGenMapThenLongMapContainsHash!768 lm!2023 key!4653 hashF!1323))))

(declare-fun lt!1883174 () Unit!128993)

(declare-fun lemmaInGenMapThenGetPairDefined!358 (ListLongMap!4411 K!14140 Hashable!6365) Unit!128993)

(assert (=> b!4717522 (= lt!1883174 (lemmaInGenMapThenGetPairDefined!358 lm!2023 key!4653 hashF!1323))))

(declare-fun b!4717523 () Bool)

(declare-fun res!1995178 () Bool)

(assert (=> b!4717523 (=> res!1995178 e!2942190)))

(declare-fun lt!1883180 () ListMap!5245)

(assert (=> b!4717523 (= res!1995178 (not (eq!1123 lt!1883180 lt!1883192)))))

(declare-fun e!2942195 () Bool)

(declare-fun tp!1348055 () Bool)

(declare-fun b!4717524 () Bool)

(assert (=> b!4717524 (= e!2942195 (and tp_is_empty!31277 tp_is_empty!31279 tp!1348055))))

(declare-fun b!4717525 () Bool)

(assert (=> b!4717525 (= e!2942187 (not e!2942198))))

(declare-fun res!1995164 () Bool)

(assert (=> b!4717525 (=> res!1995164 e!2942198)))

(assert (=> b!4717525 (= res!1995164 (or (and ((_ is Cons!52779) oldBucket!34) (= (_1!30483 (h!59110 oldBucket!34)) key!4653)) (not ((_ is Cons!52779) oldBucket!34)) (= (_1!30483 (h!59110 oldBucket!34)) key!4653)))))

(assert (=> b!4717525 (= lt!1883161 (addToMapMapFromBucket!1426 (_2!30484 (h!59111 (toList!5882 lm!2023))) lt!1883194))))

(assert (=> b!4717525 (= lt!1883194 (extractMap!2022 (t!360158 (toList!5882 lm!2023))))))

(declare-fun tail!8964 (ListLongMap!4411) ListLongMap!4411)

(assert (=> b!4717525 (= (t!360158 (toList!5882 lm!2023)) (toList!5882 (tail!8964 lm!2023)))))

(declare-fun b!4717526 () Bool)

(declare-fun e!2942196 () Bool)

(declare-fun e!2942192 () Bool)

(assert (=> b!4717526 (= e!2942196 e!2942192)))

(declare-fun res!1995160 () Bool)

(assert (=> b!4717526 (=> res!1995160 e!2942192)))

(assert (=> b!4717526 (= res!1995160 (not (eq!1123 lt!1883179 lt!1883178)))))

(assert (=> b!4717526 (eq!1123 lt!1883189 lt!1883178)))

(assert (=> b!4717526 (= lt!1883178 (-!752 lt!1883192 key!4653))))

(declare-fun lt!1883197 () Unit!128993)

(declare-fun lemmaRemovePreservesEq!120 (ListMap!5245 ListMap!5245 K!14140) Unit!128993)

(assert (=> b!4717526 (= lt!1883197 (lemmaRemovePreservesEq!120 lt!1883180 lt!1883192 key!4653))))

(declare-fun b!4717527 () Bool)

(declare-fun res!1995172 () Bool)

(assert (=> b!4717527 (=> (not res!1995172) (not e!2942197))))

(assert (=> b!4717527 (= res!1995172 (allKeysSameHash!1822 newBucket!218 hash!405 hashF!1323))))

(declare-fun b!4717528 () Bool)

(assert (=> b!4717528 (= e!2942190 e!2942196)))

(declare-fun res!1995167 () Bool)

(assert (=> b!4717528 (=> res!1995167 e!2942196)))

(declare-fun lt!1883165 () ListMap!5245)

(assert (=> b!4717528 (= res!1995167 (not (eq!1123 lt!1883179 lt!1883165)))))

(assert (=> b!4717528 (= lt!1883165 (+!2256 lt!1883175 (h!59110 oldBucket!34)))))

(declare-fun lt!1883170 () ListMap!5245)

(assert (=> b!4717528 (eq!1123 lt!1883170 (+!2256 lt!1883175 (h!59110 oldBucket!34)))))

(declare-fun lt!1883160 () Unit!128993)

(declare-fun lemmaAddToEqMapsPreservesEq!114 (ListMap!5245 ListMap!5245 K!14140 V!14386) Unit!128993)

(assert (=> b!4717528 (= lt!1883160 (lemmaAddToEqMapsPreservesEq!114 lt!1883184 lt!1883175 (_1!30483 (h!59110 oldBucket!34)) (_2!30483 (h!59110 oldBucket!34))))))

(declare-fun b!4717529 () Bool)

(assert (=> b!4717529 (= e!2942200 e!2942197)))

(declare-fun res!1995179 () Bool)

(assert (=> b!4717529 (=> (not res!1995179) (not e!2942197))))

(assert (=> b!4717529 (= res!1995179 (= lt!1883196 hash!405))))

(declare-fun hash!4349 (Hashable!6365 K!14140) (_ BitVec 64))

(assert (=> b!4717529 (= lt!1883196 (hash!4349 hashF!1323 key!4653))))

(declare-fun b!4717530 () Bool)

(assert (=> b!4717530 (= e!2942197 e!2942187)))

(declare-fun res!1995158 () Bool)

(assert (=> b!4717530 (=> (not res!1995158) (not e!2942187))))

(declare-fun head!10222 (List!52904) tuple2!54380)

(assert (=> b!4717530 (= res!1995158 (= (head!10222 (toList!5882 lm!2023)) lt!1883198))))

(assert (=> b!4717530 (= lt!1883198 (tuple2!54381 hash!405 oldBucket!34))))

(declare-fun b!4717531 () Bool)

(declare-fun e!2942202 () Bool)

(declare-fun tp!1348053 () Bool)

(assert (=> b!4717531 (= e!2942202 tp!1348053)))

(declare-fun b!4717532 () Bool)

(declare-fun res!1995159 () Bool)

(assert (=> b!4717532 (=> (not res!1995159) (not e!2942194))))

(assert (=> b!4717532 (= res!1995159 (= (removePairForKey!1591 oldBucket!34 key!4653) newBucket!218))))

(declare-fun b!4717533 () Bool)

(assert (=> b!4717533 (= e!2942192 e!2942188)))

(declare-fun res!1995177 () Bool)

(assert (=> b!4717533 (=> res!1995177 e!2942188)))

(assert (=> b!4717533 (= res!1995177 (not (eq!1123 lt!1883165 lt!1883163)))))

(assert (=> b!4717533 (= lt!1883163 (extractMap!2022 (Cons!52780 (tuple2!54381 hash!405 newBucket!218) (t!360158 (toList!5882 lm!2023)))))))

(declare-fun res!1995157 () Bool)

(assert (=> start!479912 (=> (not res!1995157) (not e!2942194))))

(declare-fun forall!11549 (List!52904 Int) Bool)

(assert (=> start!479912 (= res!1995157 (forall!11549 (toList!5882 lm!2023) lambda!214343))))

(assert (=> start!479912 e!2942194))

(declare-fun inv!68014 (ListLongMap!4411) Bool)

(assert (=> start!479912 (and (inv!68014 lm!2023) e!2942202)))

(assert (=> start!479912 tp_is_empty!31277))

(assert (=> start!479912 e!2942199))

(assert (=> start!479912 true))

(assert (=> start!479912 e!2942195))

(declare-fun b!4717534 () Bool)

(declare-fun res!1995170 () Bool)

(assert (=> b!4717534 (=> (not res!1995170) (not e!2942194))))

(assert (=> b!4717534 (= res!1995170 (noDuplicateKeys!1996 newBucket!218))))

(declare-fun b!4717535 () Bool)

(declare-fun res!1995175 () Bool)

(assert (=> b!4717535 (=> res!1995175 e!2942191)))

(assert (=> b!4717535 (= res!1995175 (not (= (removePairForKey!1591 (t!360157 oldBucket!34) key!4653) lt!1883191)))))

(declare-fun b!4717536 () Bool)

(declare-fun res!1995168 () Bool)

(assert (=> b!4717536 (=> res!1995168 e!2942193)))

(assert (=> b!4717536 (= res!1995168 (not (= (h!59110 oldBucket!34) lt!1883169)))))

(declare-fun b!4717537 () Bool)

(assert (=> b!4717537 (= e!2942189 e!2942190)))

(declare-fun res!1995174 () Bool)

(assert (=> b!4717537 (=> res!1995174 e!2942190)))

(assert (=> b!4717537 (= res!1995174 (not (= lt!1883189 lt!1883179)))))

(assert (=> b!4717537 (= lt!1883179 (+!2256 lt!1883184 (h!59110 oldBucket!34)))))

(assert (=> b!4717537 (= lt!1883189 (-!752 lt!1883180 key!4653))))

(assert (=> b!4717537 (= lt!1883180 (+!2256 lt!1883168 (h!59110 oldBucket!34)))))

(declare-fun lt!1883164 () ListMap!5245)

(assert (=> b!4717537 (= lt!1883164 lt!1883170)))

(assert (=> b!4717537 (= lt!1883170 (+!2256 lt!1883184 (h!59110 oldBucket!34)))))

(assert (=> b!4717537 (= lt!1883164 (-!752 (+!2256 lt!1883168 (h!59110 oldBucket!34)) key!4653))))

(declare-fun lt!1883173 () Unit!128993)

(declare-fun addRemoveCommutativeForDiffKeys!143 (ListMap!5245 K!14140 V!14386 K!14140) Unit!128993)

(assert (=> b!4717537 (= lt!1883173 (addRemoveCommutativeForDiffKeys!143 lt!1883168 (_1!30483 (h!59110 oldBucket!34)) (_2!30483 (h!59110 oldBucket!34)) key!4653))))

(assert (= (and start!479912 res!1995157) b!4717510))

(assert (= (and b!4717510 res!1995163) b!4717534))

(assert (= (and b!4717534 res!1995170) b!4717532))

(assert (= (and b!4717532 res!1995159) b!4717511))

(assert (= (and b!4717511 res!1995173) b!4717521))

(assert (= (and b!4717521 res!1995166) b!4717529))

(assert (= (and b!4717529 res!1995179) b!4717527))

(assert (= (and b!4717527 res!1995172) b!4717517))

(assert (= (and b!4717517 res!1995169) b!4717530))

(assert (= (and b!4717530 res!1995158) b!4717520))

(assert (= (and b!4717520 res!1995171) b!4717525))

(assert (= (and b!4717525 (not res!1995164)) b!4717522))

(assert (= (and b!4717522 (not res!1995180)) b!4717518))

(assert (= (and b!4717518 (not res!1995165)) b!4717535))

(assert (= (and b!4717535 (not res!1995175)) b!4717512))

(assert (= (and b!4717512 (not res!1995162)) b!4717536))

(assert (= (and b!4717536 (not res!1995168)) b!4717516))

(assert (= (and b!4717516 (not res!1995161)) b!4717513))

(assert (= (and b!4717513 (not res!1995176)) b!4717537))

(assert (= (and b!4717537 (not res!1995174)) b!4717514))

(assert (= (and b!4717514 (not res!1995181)) b!4717523))

(assert (= (and b!4717523 (not res!1995178)) b!4717528))

(assert (= (and b!4717528 (not res!1995167)) b!4717526))

(assert (= (and b!4717526 (not res!1995160)) b!4717533))

(assert (= (and b!4717533 (not res!1995177)) b!4717519))

(assert (= start!479912 b!4717531))

(assert (= (and start!479912 ((_ is Cons!52779) oldBucket!34)) b!4717515))

(assert (= (and start!479912 ((_ is Cons!52779) newBucket!218)) b!4717524))

(declare-fun m!5648703 () Bool)

(assert (=> b!4717519 m!5648703))

(declare-fun m!5648705 () Bool)

(assert (=> b!4717530 m!5648705))

(declare-fun m!5648707 () Bool)

(assert (=> b!4717528 m!5648707))

(declare-fun m!5648709 () Bool)

(assert (=> b!4717528 m!5648709))

(assert (=> b!4717528 m!5648709))

(declare-fun m!5648711 () Bool)

(assert (=> b!4717528 m!5648711))

(declare-fun m!5648713 () Bool)

(assert (=> b!4717528 m!5648713))

(declare-fun m!5648715 () Bool)

(assert (=> b!4717529 m!5648715))

(declare-fun m!5648717 () Bool)

(assert (=> b!4717532 m!5648717))

(declare-fun m!5648719 () Bool)

(assert (=> b!4717510 m!5648719))

(declare-fun m!5648721 () Bool)

(assert (=> b!4717525 m!5648721))

(declare-fun m!5648723 () Bool)

(assert (=> b!4717525 m!5648723))

(declare-fun m!5648725 () Bool)

(assert (=> b!4717525 m!5648725))

(declare-fun m!5648727 () Bool)

(assert (=> start!479912 m!5648727))

(declare-fun m!5648729 () Bool)

(assert (=> start!479912 m!5648729))

(declare-fun m!5648731 () Bool)

(assert (=> b!4717533 m!5648731))

(declare-fun m!5648733 () Bool)

(assert (=> b!4717533 m!5648733))

(declare-fun m!5648735 () Bool)

(assert (=> b!4717513 m!5648735))

(assert (=> b!4717513 m!5648735))

(declare-fun m!5648737 () Bool)

(assert (=> b!4717513 m!5648737))

(declare-fun m!5648739 () Bool)

(assert (=> b!4717513 m!5648739))

(declare-fun m!5648741 () Bool)

(assert (=> b!4717513 m!5648741))

(assert (=> b!4717513 m!5648741))

(assert (=> b!4717513 m!5648737))

(declare-fun m!5648743 () Bool)

(assert (=> b!4717513 m!5648743))

(declare-fun m!5648745 () Bool)

(assert (=> b!4717513 m!5648745))

(declare-fun m!5648747 () Bool)

(assert (=> b!4717513 m!5648747))

(declare-fun m!5648749 () Bool)

(assert (=> b!4717513 m!5648749))

(declare-fun m!5648751 () Bool)

(assert (=> b!4717513 m!5648751))

(declare-fun m!5648753 () Bool)

(assert (=> b!4717534 m!5648753))

(declare-fun m!5648755 () Bool)

(assert (=> b!4717516 m!5648755))

(assert (=> b!4717516 m!5648755))

(declare-fun m!5648757 () Bool)

(assert (=> b!4717516 m!5648757))

(declare-fun m!5648759 () Bool)

(assert (=> b!4717514 m!5648759))

(declare-fun m!5648761 () Bool)

(assert (=> b!4717535 m!5648761))

(declare-fun m!5648763 () Bool)

(assert (=> b!4717511 m!5648763))

(declare-fun m!5648765 () Bool)

(assert (=> b!4717537 m!5648765))

(declare-fun m!5648767 () Bool)

(assert (=> b!4717537 m!5648767))

(declare-fun m!5648769 () Bool)

(assert (=> b!4717537 m!5648769))

(declare-fun m!5648771 () Bool)

(assert (=> b!4717537 m!5648771))

(declare-fun m!5648773 () Bool)

(assert (=> b!4717537 m!5648773))

(assert (=> b!4717537 m!5648765))

(declare-fun m!5648775 () Bool)

(assert (=> b!4717512 m!5648775))

(declare-fun m!5648777 () Bool)

(assert (=> b!4717512 m!5648777))

(declare-fun m!5648779 () Bool)

(assert (=> b!4717512 m!5648779))

(declare-fun m!5648781 () Bool)

(assert (=> b!4717512 m!5648781))

(declare-fun m!5648783 () Bool)

(assert (=> b!4717512 m!5648783))

(assert (=> b!4717512 m!5648781))

(declare-fun m!5648785 () Bool)

(assert (=> b!4717512 m!5648785))

(declare-fun m!5648787 () Bool)

(assert (=> b!4717512 m!5648787))

(declare-fun m!5648789 () Bool)

(assert (=> b!4717512 m!5648789))

(declare-fun m!5648791 () Bool)

(assert (=> b!4717512 m!5648791))

(declare-fun m!5648793 () Bool)

(assert (=> b!4717512 m!5648793))

(declare-fun m!5648795 () Bool)

(assert (=> b!4717512 m!5648795))

(declare-fun m!5648797 () Bool)

(assert (=> b!4717512 m!5648797))

(assert (=> b!4717512 m!5648791))

(declare-fun m!5648799 () Bool)

(assert (=> b!4717512 m!5648799))

(declare-fun m!5648801 () Bool)

(assert (=> b!4717512 m!5648801))

(declare-fun m!5648803 () Bool)

(assert (=> b!4717512 m!5648803))

(declare-fun m!5648805 () Bool)

(assert (=> b!4717512 m!5648805))

(assert (=> b!4717512 m!5648803))

(assert (=> b!4717512 m!5648783))

(declare-fun m!5648807 () Bool)

(assert (=> b!4717512 m!5648807))

(assert (=> b!4717512 m!5648789))

(declare-fun m!5648809 () Bool)

(assert (=> b!4717512 m!5648809))

(assert (=> b!4717512 m!5648797))

(assert (=> b!4717512 m!5648801))

(declare-fun m!5648811 () Bool)

(assert (=> b!4717512 m!5648811))

(declare-fun m!5648813 () Bool)

(assert (=> b!4717521 m!5648813))

(declare-fun m!5648815 () Bool)

(assert (=> b!4717521 m!5648815))

(declare-fun m!5648817 () Bool)

(assert (=> b!4717518 m!5648817))

(declare-fun m!5648819 () Bool)

(assert (=> b!4717518 m!5648819))

(declare-fun m!5648821 () Bool)

(assert (=> b!4717518 m!5648821))

(declare-fun m!5648823 () Bool)

(assert (=> b!4717517 m!5648823))

(declare-fun m!5648825 () Bool)

(assert (=> b!4717523 m!5648825))

(declare-fun m!5648827 () Bool)

(assert (=> b!4717522 m!5648827))

(declare-fun m!5648829 () Bool)

(assert (=> b!4717522 m!5648829))

(declare-fun m!5648831 () Bool)

(assert (=> b!4717522 m!5648831))

(declare-fun m!5648833 () Bool)

(assert (=> b!4717522 m!5648833))

(declare-fun m!5648835 () Bool)

(assert (=> b!4717522 m!5648835))

(declare-fun m!5648837 () Bool)

(assert (=> b!4717522 m!5648837))

(declare-fun m!5648839 () Bool)

(assert (=> b!4717522 m!5648839))

(declare-fun m!5648841 () Bool)

(assert (=> b!4717522 m!5648841))

(declare-fun m!5648843 () Bool)

(assert (=> b!4717522 m!5648843))

(assert (=> b!4717522 m!5648833))

(declare-fun m!5648845 () Bool)

(assert (=> b!4717522 m!5648845))

(declare-fun m!5648847 () Bool)

(assert (=> b!4717522 m!5648847))

(declare-fun m!5648849 () Bool)

(assert (=> b!4717522 m!5648849))

(declare-fun m!5648851 () Bool)

(assert (=> b!4717526 m!5648851))

(declare-fun m!5648853 () Bool)

(assert (=> b!4717526 m!5648853))

(declare-fun m!5648855 () Bool)

(assert (=> b!4717526 m!5648855))

(declare-fun m!5648857 () Bool)

(assert (=> b!4717526 m!5648857))

(declare-fun m!5648859 () Bool)

(assert (=> b!4717527 m!5648859))

(check-sat (not b!4717528) (not b!4717532) (not b!4717518) (not b!4717531) (not b!4717516) tp_is_empty!31279 (not b!4717515) (not b!4717512) (not start!479912) tp_is_empty!31277 (not b!4717527) (not b!4717530) (not b!4717514) (not b!4717523) (not b!4717521) (not b!4717524) (not b!4717511) (not b!4717513) (not b!4717522) (not b!4717529) (not b!4717534) (not b!4717517) (not b!4717526) (not b!4717535) (not b!4717537) (not b!4717519) (not b!4717525) (not b!4717533) (not b!4717510))
(check-sat)
(get-model)

(declare-fun d!1501228 () Bool)

(assert (=> d!1501228 true))

(assert (=> d!1501228 true))

(declare-fun lambda!214346 () Int)

(declare-fun forall!11551 (List!52903 Int) Bool)

(assert (=> d!1501228 (= (allKeysSameHash!1822 oldBucket!34 hash!405 hashF!1323) (forall!11551 oldBucket!34 lambda!214346))))

(declare-fun bs!1105568 () Bool)

(assert (= bs!1105568 d!1501228))

(declare-fun m!5648861 () Bool)

(assert (=> bs!1105568 m!5648861))

(assert (=> b!4717511 d!1501228))

(declare-fun b!4717551 () Bool)

(declare-fun e!2942207 () List!52903)

(declare-fun e!2942208 () List!52903)

(assert (=> b!4717551 (= e!2942207 e!2942208)))

(declare-fun c!805669 () Bool)

(assert (=> b!4717551 (= c!805669 ((_ is Cons!52779) oldBucket!34))))

(declare-fun d!1501230 () Bool)

(declare-fun lt!1883201 () List!52903)

(assert (=> d!1501230 (not (containsKey!3337 lt!1883201 key!4653))))

(assert (=> d!1501230 (= lt!1883201 e!2942207)))

(declare-fun c!805668 () Bool)

(assert (=> d!1501230 (= c!805668 (and ((_ is Cons!52779) oldBucket!34) (= (_1!30483 (h!59110 oldBucket!34)) key!4653)))))

(assert (=> d!1501230 (noDuplicateKeys!1996 oldBucket!34)))

(assert (=> d!1501230 (= (removePairForKey!1591 oldBucket!34 key!4653) lt!1883201)))

(declare-fun b!4717552 () Bool)

(assert (=> b!4717552 (= e!2942208 (Cons!52779 (h!59110 oldBucket!34) (removePairForKey!1591 (t!360157 oldBucket!34) key!4653)))))

(declare-fun b!4717553 () Bool)

(assert (=> b!4717553 (= e!2942208 Nil!52779)))

(declare-fun b!4717550 () Bool)

(assert (=> b!4717550 (= e!2942207 (t!360157 oldBucket!34))))

(assert (= (and d!1501230 c!805668) b!4717550))

(assert (= (and d!1501230 (not c!805668)) b!4717551))

(assert (= (and b!4717551 c!805669) b!4717552))

(assert (= (and b!4717551 (not c!805669)) b!4717553))

(declare-fun m!5648863 () Bool)

(assert (=> d!1501230 m!5648863))

(assert (=> d!1501230 m!5648719))

(assert (=> b!4717552 m!5648761))

(assert (=> b!4717532 d!1501230))

(declare-fun d!1501232 () Bool)

(declare-fun res!1995186 () Bool)

(declare-fun e!2942213 () Bool)

(assert (=> d!1501232 (=> res!1995186 e!2942213)))

(assert (=> d!1501232 (= res!1995186 (not ((_ is Cons!52779) newBucket!218)))))

(assert (=> d!1501232 (= (noDuplicateKeys!1996 newBucket!218) e!2942213)))

(declare-fun b!4717558 () Bool)

(declare-fun e!2942214 () Bool)

(assert (=> b!4717558 (= e!2942213 e!2942214)))

(declare-fun res!1995187 () Bool)

(assert (=> b!4717558 (=> (not res!1995187) (not e!2942214))))

(assert (=> b!4717558 (= res!1995187 (not (containsKey!3337 (t!360157 newBucket!218) (_1!30483 (h!59110 newBucket!218)))))))

(declare-fun b!4717559 () Bool)

(assert (=> b!4717559 (= e!2942214 (noDuplicateKeys!1996 (t!360157 newBucket!218)))))

(assert (= (and d!1501232 (not res!1995186)) b!4717558))

(assert (= (and b!4717558 res!1995187) b!4717559))

(declare-fun m!5648869 () Bool)

(assert (=> b!4717558 m!5648869))

(declare-fun m!5648871 () Bool)

(assert (=> b!4717559 m!5648871))

(assert (=> b!4717534 d!1501232))

(declare-fun b!4717600 () Bool)

(declare-fun e!2942236 () Unit!128993)

(declare-fun Unit!129008 () Unit!128993)

(assert (=> b!4717600 (= e!2942236 Unit!129008)))

(declare-fun b!4717601 () Bool)

(declare-fun e!2942237 () Bool)

(declare-datatypes ((List!52906 0))(
  ( (Nil!52782) (Cons!52782 (h!59115 K!14140) (t!360162 List!52906)) )
))
(declare-fun contains!16136 (List!52906 K!14140) Bool)

(declare-fun keys!18941 (ListMap!5245) List!52906)

(assert (=> b!4717601 (= e!2942237 (contains!16136 (keys!18941 lt!1883168) key!4653))))

(declare-fun b!4717603 () Bool)

(declare-fun e!2942241 () Bool)

(assert (=> b!4717603 (= e!2942241 (not (contains!16136 (keys!18941 lt!1883168) key!4653)))))

(declare-fun b!4717604 () Bool)

(declare-fun e!2942238 () Unit!128993)

(declare-fun lt!1883239 () Unit!128993)

(assert (=> b!4717604 (= e!2942238 lt!1883239)))

(declare-fun lt!1883238 () Unit!128993)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1829 (List!52903 K!14140) Unit!128993)

(assert (=> b!4717604 (= lt!1883238 (lemmaContainsKeyImpliesGetValueByKeyDefined!1829 (toList!5881 lt!1883168) key!4653))))

(declare-datatypes ((Option!12342 0))(
  ( (None!12341) (Some!12341 (v!46908 V!14386)) )
))
(declare-fun isDefined!9596 (Option!12342) Bool)

(declare-fun getValueByKey!1938 (List!52903 K!14140) Option!12342)

(assert (=> b!4717604 (isDefined!9596 (getValueByKey!1938 (toList!5881 lt!1883168) key!4653))))

(declare-fun lt!1883236 () Unit!128993)

(assert (=> b!4717604 (= lt!1883236 lt!1883238)))

(declare-fun lemmaInListThenGetKeysListContains!931 (List!52903 K!14140) Unit!128993)

(assert (=> b!4717604 (= lt!1883239 (lemmaInListThenGetKeysListContains!931 (toList!5881 lt!1883168) key!4653))))

(declare-fun call!329804 () Bool)

(assert (=> b!4717604 call!329804))

(declare-fun b!4717605 () Bool)

(assert (=> b!4717605 (= e!2942238 e!2942236)))

(declare-fun c!805682 () Bool)

(assert (=> b!4717605 (= c!805682 call!329804)))

(declare-fun b!4717606 () Bool)

(declare-fun e!2942240 () List!52906)

(assert (=> b!4717606 (= e!2942240 (keys!18941 lt!1883168))))

(declare-fun b!4717607 () Bool)

(assert (=> b!4717607 false))

(declare-fun lt!1883234 () Unit!128993)

(declare-fun lt!1883233 () Unit!128993)

(assert (=> b!4717607 (= lt!1883234 lt!1883233)))

(declare-fun containsKey!3339 (List!52903 K!14140) Bool)

(assert (=> b!4717607 (containsKey!3339 (toList!5881 lt!1883168) key!4653)))

(declare-fun lemmaInGetKeysListThenContainsKey!935 (List!52903 K!14140) Unit!128993)

(assert (=> b!4717607 (= lt!1883233 (lemmaInGetKeysListThenContainsKey!935 (toList!5881 lt!1883168) key!4653))))

(declare-fun Unit!129010 () Unit!128993)

(assert (=> b!4717607 (= e!2942236 Unit!129010)))

(declare-fun d!1501238 () Bool)

(declare-fun e!2942239 () Bool)

(assert (=> d!1501238 e!2942239))

(declare-fun res!1995201 () Bool)

(assert (=> d!1501238 (=> res!1995201 e!2942239)))

(assert (=> d!1501238 (= res!1995201 e!2942241)))

(declare-fun res!1995202 () Bool)

(assert (=> d!1501238 (=> (not res!1995202) (not e!2942241))))

(declare-fun lt!1883235 () Bool)

(assert (=> d!1501238 (= res!1995202 (not lt!1883235))))

(declare-fun lt!1883240 () Bool)

(assert (=> d!1501238 (= lt!1883235 lt!1883240)))

(declare-fun lt!1883237 () Unit!128993)

(assert (=> d!1501238 (= lt!1883237 e!2942238)))

(declare-fun c!805683 () Bool)

(assert (=> d!1501238 (= c!805683 lt!1883240)))

(assert (=> d!1501238 (= lt!1883240 (containsKey!3339 (toList!5881 lt!1883168) key!4653))))

(assert (=> d!1501238 (= (contains!16131 lt!1883168 key!4653) lt!1883235)))

(declare-fun b!4717602 () Bool)

(assert (=> b!4717602 (= e!2942239 e!2942237)))

(declare-fun res!1995200 () Bool)

(assert (=> b!4717602 (=> (not res!1995200) (not e!2942237))))

(assert (=> b!4717602 (= res!1995200 (isDefined!9596 (getValueByKey!1938 (toList!5881 lt!1883168) key!4653)))))

(declare-fun bm!329799 () Bool)

(assert (=> bm!329799 (= call!329804 (contains!16136 e!2942240 key!4653))))

(declare-fun c!805684 () Bool)

(assert (=> bm!329799 (= c!805684 c!805683)))

(declare-fun b!4717608 () Bool)

(declare-fun getKeysList!936 (List!52903) List!52906)

(assert (=> b!4717608 (= e!2942240 (getKeysList!936 (toList!5881 lt!1883168)))))

(assert (= (and d!1501238 c!805683) b!4717604))

(assert (= (and d!1501238 (not c!805683)) b!4717605))

(assert (= (and b!4717605 c!805682) b!4717607))

(assert (= (and b!4717605 (not c!805682)) b!4717600))

(assert (= (or b!4717604 b!4717605) bm!329799))

(assert (= (and bm!329799 c!805684) b!4717608))

(assert (= (and bm!329799 (not c!805684)) b!4717606))

(assert (= (and d!1501238 res!1995202) b!4717603))

(assert (= (and d!1501238 (not res!1995201)) b!4717602))

(assert (= (and b!4717602 res!1995200) b!4717601))

(declare-fun m!5648891 () Bool)

(assert (=> b!4717606 m!5648891))

(declare-fun m!5648893 () Bool)

(assert (=> b!4717602 m!5648893))

(assert (=> b!4717602 m!5648893))

(declare-fun m!5648895 () Bool)

(assert (=> b!4717602 m!5648895))

(declare-fun m!5648897 () Bool)

(assert (=> bm!329799 m!5648897))

(declare-fun m!5648899 () Bool)

(assert (=> b!4717608 m!5648899))

(declare-fun m!5648901 () Bool)

(assert (=> d!1501238 m!5648901))

(assert (=> b!4717603 m!5648891))

(assert (=> b!4717603 m!5648891))

(declare-fun m!5648903 () Bool)

(assert (=> b!4717603 m!5648903))

(declare-fun m!5648905 () Bool)

(assert (=> b!4717604 m!5648905))

(assert (=> b!4717604 m!5648893))

(assert (=> b!4717604 m!5648893))

(assert (=> b!4717604 m!5648895))

(declare-fun m!5648907 () Bool)

(assert (=> b!4717604 m!5648907))

(assert (=> b!4717607 m!5648901))

(declare-fun m!5648909 () Bool)

(assert (=> b!4717607 m!5648909))

(assert (=> b!4717601 m!5648891))

(assert (=> b!4717601 m!5648891))

(assert (=> b!4717601 m!5648903))

(assert (=> b!4717512 d!1501238))

(declare-fun d!1501248 () Bool)

(assert (=> d!1501248 (= (head!10221 oldBucket!34) (h!59110 oldBucket!34))))

(assert (=> b!4717512 d!1501248))

(declare-fun d!1501250 () Bool)

(declare-fun e!2942244 () Bool)

(assert (=> d!1501250 e!2942244))

(declare-fun res!1995208 () Bool)

(assert (=> d!1501250 (=> (not res!1995208) (not e!2942244))))

(declare-fun lt!1883250 () ListMap!5245)

(assert (=> d!1501250 (= res!1995208 (contains!16131 lt!1883250 (_1!30483 lt!1883169)))))

(declare-fun lt!1883249 () List!52903)

(assert (=> d!1501250 (= lt!1883250 (ListMap!5246 lt!1883249))))

(declare-fun lt!1883252 () Unit!128993)

(declare-fun lt!1883251 () Unit!128993)

(assert (=> d!1501250 (= lt!1883252 lt!1883251)))

(assert (=> d!1501250 (= (getValueByKey!1938 lt!1883249 (_1!30483 lt!1883169)) (Some!12341 (_2!30483 lt!1883169)))))

(declare-fun lemmaContainsTupThenGetReturnValue!1078 (List!52903 K!14140 V!14386) Unit!128993)

(assert (=> d!1501250 (= lt!1883251 (lemmaContainsTupThenGetReturnValue!1078 lt!1883249 (_1!30483 lt!1883169) (_2!30483 lt!1883169)))))

(declare-fun insertNoDuplicatedKeys!586 (List!52903 K!14140 V!14386) List!52903)

(assert (=> d!1501250 (= lt!1883249 (insertNoDuplicatedKeys!586 (toList!5881 (addToMapMapFromBucket!1426 lt!1883191 lt!1883194)) (_1!30483 lt!1883169) (_2!30483 lt!1883169)))))

(assert (=> d!1501250 (= (+!2256 (addToMapMapFromBucket!1426 lt!1883191 lt!1883194) lt!1883169) lt!1883250)))

(declare-fun b!4717613 () Bool)

(declare-fun res!1995207 () Bool)

(assert (=> b!4717613 (=> (not res!1995207) (not e!2942244))))

(assert (=> b!4717613 (= res!1995207 (= (getValueByKey!1938 (toList!5881 lt!1883250) (_1!30483 lt!1883169)) (Some!12341 (_2!30483 lt!1883169))))))

(declare-fun b!4717614 () Bool)

(declare-fun contains!16137 (List!52903 tuple2!54378) Bool)

(assert (=> b!4717614 (= e!2942244 (contains!16137 (toList!5881 lt!1883250) lt!1883169))))

(assert (= (and d!1501250 res!1995208) b!4717613))

(assert (= (and b!4717613 res!1995207) b!4717614))

(declare-fun m!5648911 () Bool)

(assert (=> d!1501250 m!5648911))

(declare-fun m!5648913 () Bool)

(assert (=> d!1501250 m!5648913))

(declare-fun m!5648915 () Bool)

(assert (=> d!1501250 m!5648915))

(declare-fun m!5648917 () Bool)

(assert (=> d!1501250 m!5648917))

(declare-fun m!5648919 () Bool)

(assert (=> b!4717613 m!5648919))

(declare-fun m!5648921 () Bool)

(assert (=> b!4717614 m!5648921))

(assert (=> b!4717512 d!1501250))

(declare-fun bs!1105572 () Bool)

(declare-fun d!1501252 () Bool)

(assert (= bs!1105572 (and d!1501252 start!479912)))

(declare-fun lambda!214352 () Int)

(assert (=> bs!1105572 (= lambda!214352 lambda!214343)))

(declare-fun lt!1883257 () ListMap!5245)

(declare-fun invariantList!1496 (List!52903) Bool)

(assert (=> d!1501252 (invariantList!1496 (toList!5881 lt!1883257))))

(declare-fun e!2942249 () ListMap!5245)

(assert (=> d!1501252 (= lt!1883257 e!2942249)))

(declare-fun c!805689 () Bool)

(assert (=> d!1501252 (= c!805689 ((_ is Cons!52780) lt!1883188))))

(assert (=> d!1501252 (forall!11549 lt!1883188 lambda!214352)))

(assert (=> d!1501252 (= (extractMap!2022 lt!1883188) lt!1883257)))

(declare-fun b!4717623 () Bool)

(assert (=> b!4717623 (= e!2942249 (addToMapMapFromBucket!1426 (_2!30484 (h!59111 lt!1883188)) (extractMap!2022 (t!360158 lt!1883188))))))

(declare-fun b!4717624 () Bool)

(assert (=> b!4717624 (= e!2942249 (ListMap!5246 Nil!52779))))

(assert (= (and d!1501252 c!805689) b!4717623))

(assert (= (and d!1501252 (not c!805689)) b!4717624))

(declare-fun m!5648923 () Bool)

(assert (=> d!1501252 m!5648923))

(declare-fun m!5648925 () Bool)

(assert (=> d!1501252 m!5648925))

(declare-fun m!5648927 () Bool)

(assert (=> b!4717623 m!5648927))

(assert (=> b!4717623 m!5648927))

(declare-fun m!5648929 () Bool)

(assert (=> b!4717623 m!5648929))

(assert (=> b!4717512 d!1501252))

(declare-fun bs!1105667 () Bool)

(declare-fun b!4717709 () Bool)

(assert (= bs!1105667 (and b!4717709 d!1501228)))

(declare-fun lambda!214433 () Int)

(assert (=> bs!1105667 (not (= lambda!214433 lambda!214346))))

(assert (=> b!4717709 true))

(declare-fun bs!1105668 () Bool)

(declare-fun b!4717708 () Bool)

(assert (= bs!1105668 (and b!4717708 d!1501228)))

(declare-fun lambda!214434 () Int)

(assert (=> bs!1105668 (not (= lambda!214434 lambda!214346))))

(declare-fun bs!1105669 () Bool)

(assert (= bs!1105669 (and b!4717708 b!4717709)))

(assert (=> bs!1105669 (= lambda!214434 lambda!214433)))

(assert (=> b!4717708 true))

(declare-fun lambda!214435 () Int)

(assert (=> bs!1105668 (not (= lambda!214435 lambda!214346))))

(declare-fun lt!1883474 () ListMap!5245)

(assert (=> bs!1105669 (= (= lt!1883474 lt!1883194) (= lambda!214435 lambda!214433))))

(assert (=> b!4717708 (= (= lt!1883474 lt!1883194) (= lambda!214435 lambda!214434))))

(assert (=> b!4717708 true))

(declare-fun bs!1105670 () Bool)

(declare-fun d!1501254 () Bool)

(assert (= bs!1105670 (and d!1501254 d!1501228)))

(declare-fun lambda!214438 () Int)

(assert (=> bs!1105670 (not (= lambda!214438 lambda!214346))))

(declare-fun bs!1105671 () Bool)

(assert (= bs!1105671 (and d!1501254 b!4717709)))

(declare-fun lt!1883488 () ListMap!5245)

(assert (=> bs!1105671 (= (= lt!1883488 lt!1883194) (= lambda!214438 lambda!214433))))

(declare-fun bs!1105672 () Bool)

(assert (= bs!1105672 (and d!1501254 b!4717708)))

(assert (=> bs!1105672 (= (= lt!1883488 lt!1883194) (= lambda!214438 lambda!214434))))

(assert (=> bs!1105672 (= (= lt!1883488 lt!1883474) (= lambda!214438 lambda!214435))))

(assert (=> d!1501254 true))

(declare-fun e!2942299 () Bool)

(assert (=> d!1501254 e!2942299))

(declare-fun res!1995248 () Bool)

(assert (=> d!1501254 (=> (not res!1995248) (not e!2942299))))

(assert (=> d!1501254 (= res!1995248 (forall!11551 (Cons!52779 lt!1883169 lt!1883191) lambda!214438))))

(declare-fun e!2942298 () ListMap!5245)

(assert (=> d!1501254 (= lt!1883488 e!2942298)))

(declare-fun c!805710 () Bool)

(assert (=> d!1501254 (= c!805710 ((_ is Nil!52779) (Cons!52779 lt!1883169 lt!1883191)))))

(assert (=> d!1501254 (noDuplicateKeys!1996 (Cons!52779 lt!1883169 lt!1883191))))

(assert (=> d!1501254 (= (addToMapMapFromBucket!1426 (Cons!52779 lt!1883169 lt!1883191) lt!1883194) lt!1883488)))

(declare-fun b!4717706 () Bool)

(declare-fun res!1995250 () Bool)

(assert (=> b!4717706 (=> (not res!1995250) (not e!2942299))))

(assert (=> b!4717706 (= res!1995250 (forall!11551 (toList!5881 lt!1883194) lambda!214438))))

(declare-fun b!4717707 () Bool)

(assert (=> b!4717707 (= e!2942299 (invariantList!1496 (toList!5881 lt!1883488)))))

(declare-fun call!329834 () Bool)

(declare-fun lt!1883486 () ListMap!5245)

(declare-fun bm!329827 () Bool)

(assert (=> bm!329827 (= call!329834 (forall!11551 (ite c!805710 (toList!5881 lt!1883194) (toList!5881 lt!1883486)) (ite c!805710 lambda!214433 lambda!214435)))))

(declare-fun bm!329828 () Bool)

(declare-fun call!329833 () Unit!128993)

(declare-fun lemmaContainsAllItsOwnKeys!784 (ListMap!5245) Unit!128993)

(assert (=> bm!329828 (= call!329833 (lemmaContainsAllItsOwnKeys!784 lt!1883194))))

(assert (=> b!4717708 (= e!2942298 lt!1883474)))

(assert (=> b!4717708 (= lt!1883486 (+!2256 lt!1883194 (h!59110 (Cons!52779 lt!1883169 lt!1883191))))))

(assert (=> b!4717708 (= lt!1883474 (addToMapMapFromBucket!1426 (t!360157 (Cons!52779 lt!1883169 lt!1883191)) (+!2256 lt!1883194 (h!59110 (Cons!52779 lt!1883169 lt!1883191)))))))

(declare-fun lt!1883481 () Unit!128993)

(assert (=> b!4717708 (= lt!1883481 call!329833)))

(assert (=> b!4717708 (forall!11551 (toList!5881 lt!1883194) lambda!214434)))

(declare-fun lt!1883487 () Unit!128993)

(assert (=> b!4717708 (= lt!1883487 lt!1883481)))

(assert (=> b!4717708 call!329834))

(declare-fun lt!1883473 () Unit!128993)

(declare-fun Unit!129021 () Unit!128993)

(assert (=> b!4717708 (= lt!1883473 Unit!129021)))

(assert (=> b!4717708 (forall!11551 (t!360157 (Cons!52779 lt!1883169 lt!1883191)) lambda!214435)))

(declare-fun lt!1883476 () Unit!128993)

(declare-fun Unit!129022 () Unit!128993)

(assert (=> b!4717708 (= lt!1883476 Unit!129022)))

(declare-fun lt!1883485 () Unit!128993)

(declare-fun Unit!129023 () Unit!128993)

(assert (=> b!4717708 (= lt!1883485 Unit!129023)))

(declare-fun lt!1883492 () Unit!128993)

(declare-fun forallContained!3620 (List!52903 Int tuple2!54378) Unit!128993)

(assert (=> b!4717708 (= lt!1883492 (forallContained!3620 (toList!5881 lt!1883486) lambda!214435 (h!59110 (Cons!52779 lt!1883169 lt!1883191))))))

(assert (=> b!4717708 (contains!16131 lt!1883486 (_1!30483 (h!59110 (Cons!52779 lt!1883169 lt!1883191))))))

(declare-fun lt!1883480 () Unit!128993)

(declare-fun Unit!129024 () Unit!128993)

(assert (=> b!4717708 (= lt!1883480 Unit!129024)))

(assert (=> b!4717708 (contains!16131 lt!1883474 (_1!30483 (h!59110 (Cons!52779 lt!1883169 lt!1883191))))))

(declare-fun lt!1883477 () Unit!128993)

(declare-fun Unit!129025 () Unit!128993)

(assert (=> b!4717708 (= lt!1883477 Unit!129025)))

(assert (=> b!4717708 (forall!11551 (Cons!52779 lt!1883169 lt!1883191) lambda!214435)))

(declare-fun lt!1883478 () Unit!128993)

(declare-fun Unit!129026 () Unit!128993)

(assert (=> b!4717708 (= lt!1883478 Unit!129026)))

(declare-fun call!329832 () Bool)

(assert (=> b!4717708 call!329832))

(declare-fun lt!1883490 () Unit!128993)

(declare-fun Unit!129027 () Unit!128993)

(assert (=> b!4717708 (= lt!1883490 Unit!129027)))

(declare-fun lt!1883489 () Unit!128993)

(declare-fun Unit!129028 () Unit!128993)

(assert (=> b!4717708 (= lt!1883489 Unit!129028)))

(declare-fun lt!1883475 () Unit!128993)

(declare-fun addForallContainsKeyThenBeforeAdding!783 (ListMap!5245 ListMap!5245 K!14140 V!14386) Unit!128993)

(assert (=> b!4717708 (= lt!1883475 (addForallContainsKeyThenBeforeAdding!783 lt!1883194 lt!1883474 (_1!30483 (h!59110 (Cons!52779 lt!1883169 lt!1883191))) (_2!30483 (h!59110 (Cons!52779 lt!1883169 lt!1883191)))))))

(assert (=> b!4717708 (forall!11551 (toList!5881 lt!1883194) lambda!214435)))

(declare-fun lt!1883472 () Unit!128993)

(assert (=> b!4717708 (= lt!1883472 lt!1883475)))

(assert (=> b!4717708 (forall!11551 (toList!5881 lt!1883194) lambda!214435)))

(declare-fun lt!1883491 () Unit!128993)

(declare-fun Unit!129029 () Unit!128993)

(assert (=> b!4717708 (= lt!1883491 Unit!129029)))

(declare-fun res!1995249 () Bool)

(assert (=> b!4717708 (= res!1995249 (forall!11551 (Cons!52779 lt!1883169 lt!1883191) lambda!214435))))

(declare-fun e!2942300 () Bool)

(assert (=> b!4717708 (=> (not res!1995249) (not e!2942300))))

(assert (=> b!4717708 e!2942300))

(declare-fun lt!1883482 () Unit!128993)

(declare-fun Unit!129030 () Unit!128993)

(assert (=> b!4717708 (= lt!1883482 Unit!129030)))

(declare-fun bm!329829 () Bool)

(assert (=> bm!329829 (= call!329832 (forall!11551 (ite c!805710 (toList!5881 lt!1883194) (toList!5881 lt!1883486)) (ite c!805710 lambda!214433 lambda!214435)))))

(assert (=> b!4717709 (= e!2942298 lt!1883194)))

(declare-fun lt!1883479 () Unit!128993)

(assert (=> b!4717709 (= lt!1883479 call!329833)))

(assert (=> b!4717709 call!329834))

(declare-fun lt!1883483 () Unit!128993)

(assert (=> b!4717709 (= lt!1883483 lt!1883479)))

(assert (=> b!4717709 call!329832))

(declare-fun lt!1883484 () Unit!128993)

(declare-fun Unit!129031 () Unit!128993)

(assert (=> b!4717709 (= lt!1883484 Unit!129031)))

(declare-fun b!4717710 () Bool)

(assert (=> b!4717710 (= e!2942300 (forall!11551 (toList!5881 lt!1883194) lambda!214435))))

(assert (= (and d!1501254 c!805710) b!4717709))

(assert (= (and d!1501254 (not c!805710)) b!4717708))

(assert (= (and b!4717708 res!1995249) b!4717710))

(assert (= (or b!4717709 b!4717708) bm!329828))

(assert (= (or b!4717709 b!4717708) bm!329827))

(assert (= (or b!4717709 b!4717708) bm!329829))

(assert (= (and d!1501254 res!1995248) b!4717706))

(assert (= (and b!4717706 res!1995250) b!4717707))

(declare-fun m!5649171 () Bool)

(assert (=> d!1501254 m!5649171))

(declare-fun m!5649173 () Bool)

(assert (=> d!1501254 m!5649173))

(declare-fun m!5649175 () Bool)

(assert (=> bm!329828 m!5649175))

(declare-fun m!5649177 () Bool)

(assert (=> b!4717710 m!5649177))

(declare-fun m!5649179 () Bool)

(assert (=> bm!329829 m!5649179))

(declare-fun m!5649181 () Bool)

(assert (=> b!4717708 m!5649181))

(declare-fun m!5649183 () Bool)

(assert (=> b!4717708 m!5649183))

(declare-fun m!5649185 () Bool)

(assert (=> b!4717708 m!5649185))

(declare-fun m!5649187 () Bool)

(assert (=> b!4717708 m!5649187))

(declare-fun m!5649189 () Bool)

(assert (=> b!4717708 m!5649189))

(assert (=> b!4717708 m!5649183))

(assert (=> b!4717708 m!5649177))

(declare-fun m!5649191 () Bool)

(assert (=> b!4717708 m!5649191))

(assert (=> b!4717708 m!5649189))

(declare-fun m!5649193 () Bool)

(assert (=> b!4717708 m!5649193))

(declare-fun m!5649195 () Bool)

(assert (=> b!4717708 m!5649195))

(declare-fun m!5649199 () Bool)

(assert (=> b!4717708 m!5649199))

(assert (=> b!4717708 m!5649177))

(assert (=> bm!329827 m!5649179))

(declare-fun m!5649203 () Bool)

(assert (=> b!4717707 m!5649203))

(declare-fun m!5649205 () Bool)

(assert (=> b!4717706 m!5649205))

(assert (=> b!4717512 d!1501254))

(declare-fun d!1501296 () Bool)

(assert (=> d!1501296 (= (head!10221 newBucket!218) (h!59110 newBucket!218))))

(assert (=> b!4717512 d!1501296))

(declare-fun bs!1105679 () Bool)

(declare-fun b!4717716 () Bool)

(assert (= bs!1105679 (and b!4717716 b!4717709)))

(declare-fun lambda!214440 () Int)

(assert (=> bs!1105679 (= lambda!214440 lambda!214433)))

(declare-fun bs!1105680 () Bool)

(assert (= bs!1105680 (and b!4717716 d!1501254)))

(assert (=> bs!1105680 (= (= lt!1883194 lt!1883488) (= lambda!214440 lambda!214438))))

(declare-fun bs!1105681 () Bool)

(assert (= bs!1105681 (and b!4717716 d!1501228)))

(assert (=> bs!1105681 (not (= lambda!214440 lambda!214346))))

(declare-fun bs!1105682 () Bool)

(assert (= bs!1105682 (and b!4717716 b!4717708)))

(assert (=> bs!1105682 (= lambda!214440 lambda!214434)))

(assert (=> bs!1105682 (= (= lt!1883194 lt!1883474) (= lambda!214440 lambda!214435))))

(assert (=> b!4717716 true))

(declare-fun bs!1105689 () Bool)

(declare-fun b!4717715 () Bool)

(assert (= bs!1105689 (and b!4717715 b!4717709)))

(declare-fun lambda!214442 () Int)

(assert (=> bs!1105689 (= lambda!214442 lambda!214433)))

(declare-fun bs!1105690 () Bool)

(assert (= bs!1105690 (and b!4717715 b!4717716)))

(assert (=> bs!1105690 (= lambda!214442 lambda!214440)))

(declare-fun bs!1105691 () Bool)

(assert (= bs!1105691 (and b!4717715 d!1501254)))

(assert (=> bs!1105691 (= (= lt!1883194 lt!1883488) (= lambda!214442 lambda!214438))))

(declare-fun bs!1105692 () Bool)

(assert (= bs!1105692 (and b!4717715 d!1501228)))

(assert (=> bs!1105692 (not (= lambda!214442 lambda!214346))))

(declare-fun bs!1105693 () Bool)

(assert (= bs!1105693 (and b!4717715 b!4717708)))

(assert (=> bs!1105693 (= lambda!214442 lambda!214434)))

(assert (=> bs!1105693 (= (= lt!1883194 lt!1883474) (= lambda!214442 lambda!214435))))

(assert (=> b!4717715 true))

(declare-fun lt!1883498 () ListMap!5245)

(declare-fun lambda!214443 () Int)

(assert (=> bs!1105689 (= (= lt!1883498 lt!1883194) (= lambda!214443 lambda!214433))))

(assert (=> b!4717715 (= (= lt!1883498 lt!1883194) (= lambda!214443 lambda!214442))))

(assert (=> bs!1105690 (= (= lt!1883498 lt!1883194) (= lambda!214443 lambda!214440))))

(assert (=> bs!1105691 (= (= lt!1883498 lt!1883488) (= lambda!214443 lambda!214438))))

(assert (=> bs!1105692 (not (= lambda!214443 lambda!214346))))

(assert (=> bs!1105693 (= (= lt!1883498 lt!1883194) (= lambda!214443 lambda!214434))))

(assert (=> bs!1105693 (= (= lt!1883498 lt!1883474) (= lambda!214443 lambda!214435))))

(assert (=> b!4717715 true))

(declare-fun bs!1105694 () Bool)

(declare-fun d!1501298 () Bool)

(assert (= bs!1105694 (and d!1501298 b!4717709)))

(declare-fun lt!1883512 () ListMap!5245)

(declare-fun lambda!214444 () Int)

(assert (=> bs!1105694 (= (= lt!1883512 lt!1883194) (= lambda!214444 lambda!214433))))

(declare-fun bs!1105695 () Bool)

(assert (= bs!1105695 (and d!1501298 b!4717716)))

(assert (=> bs!1105695 (= (= lt!1883512 lt!1883194) (= lambda!214444 lambda!214440))))

(declare-fun bs!1105696 () Bool)

(assert (= bs!1105696 (and d!1501298 d!1501254)))

(assert (=> bs!1105696 (= (= lt!1883512 lt!1883488) (= lambda!214444 lambda!214438))))

(declare-fun bs!1105697 () Bool)

(assert (= bs!1105697 (and d!1501298 d!1501228)))

(assert (=> bs!1105697 (not (= lambda!214444 lambda!214346))))

(declare-fun bs!1105698 () Bool)

(assert (= bs!1105698 (and d!1501298 b!4717708)))

(assert (=> bs!1105698 (= (= lt!1883512 lt!1883194) (= lambda!214444 lambda!214434))))

(assert (=> bs!1105698 (= (= lt!1883512 lt!1883474) (= lambda!214444 lambda!214435))))

(declare-fun bs!1105699 () Bool)

(assert (= bs!1105699 (and d!1501298 b!4717715)))

(assert (=> bs!1105699 (= (= lt!1883512 lt!1883194) (= lambda!214444 lambda!214442))))

(assert (=> bs!1105699 (= (= lt!1883512 lt!1883498) (= lambda!214444 lambda!214443))))

(assert (=> d!1501298 true))

(declare-fun e!2942302 () Bool)

(assert (=> d!1501298 e!2942302))

(declare-fun res!1995251 () Bool)

(assert (=> d!1501298 (=> (not res!1995251) (not e!2942302))))

(assert (=> d!1501298 (= res!1995251 (forall!11551 (Cons!52779 lt!1883185 lt!1883176) lambda!214444))))

(declare-fun e!2942301 () ListMap!5245)

(assert (=> d!1501298 (= lt!1883512 e!2942301)))

(declare-fun c!805711 () Bool)

(assert (=> d!1501298 (= c!805711 ((_ is Nil!52779) (Cons!52779 lt!1883185 lt!1883176)))))

(assert (=> d!1501298 (noDuplicateKeys!1996 (Cons!52779 lt!1883185 lt!1883176))))

(assert (=> d!1501298 (= (addToMapMapFromBucket!1426 (Cons!52779 lt!1883185 lt!1883176) lt!1883194) lt!1883512)))

(declare-fun b!4717713 () Bool)

(declare-fun res!1995253 () Bool)

(assert (=> b!4717713 (=> (not res!1995253) (not e!2942302))))

(assert (=> b!4717713 (= res!1995253 (forall!11551 (toList!5881 lt!1883194) lambda!214444))))

(declare-fun b!4717714 () Bool)

(assert (=> b!4717714 (= e!2942302 (invariantList!1496 (toList!5881 lt!1883512)))))

(declare-fun bm!329830 () Bool)

(declare-fun lt!1883510 () ListMap!5245)

(declare-fun call!329837 () Bool)

(assert (=> bm!329830 (= call!329837 (forall!11551 (ite c!805711 (toList!5881 lt!1883194) (toList!5881 lt!1883510)) (ite c!805711 lambda!214440 lambda!214443)))))

(declare-fun bm!329831 () Bool)

(declare-fun call!329836 () Unit!128993)

(assert (=> bm!329831 (= call!329836 (lemmaContainsAllItsOwnKeys!784 lt!1883194))))

(assert (=> b!4717715 (= e!2942301 lt!1883498)))

(assert (=> b!4717715 (= lt!1883510 (+!2256 lt!1883194 (h!59110 (Cons!52779 lt!1883185 lt!1883176))))))

(assert (=> b!4717715 (= lt!1883498 (addToMapMapFromBucket!1426 (t!360157 (Cons!52779 lt!1883185 lt!1883176)) (+!2256 lt!1883194 (h!59110 (Cons!52779 lt!1883185 lt!1883176)))))))

(declare-fun lt!1883505 () Unit!128993)

(assert (=> b!4717715 (= lt!1883505 call!329836)))

(assert (=> b!4717715 (forall!11551 (toList!5881 lt!1883194) lambda!214442)))

(declare-fun lt!1883511 () Unit!128993)

(assert (=> b!4717715 (= lt!1883511 lt!1883505)))

(assert (=> b!4717715 call!329837))

(declare-fun lt!1883497 () Unit!128993)

(declare-fun Unit!129035 () Unit!128993)

(assert (=> b!4717715 (= lt!1883497 Unit!129035)))

(assert (=> b!4717715 (forall!11551 (t!360157 (Cons!52779 lt!1883185 lt!1883176)) lambda!214443)))

(declare-fun lt!1883500 () Unit!128993)

(declare-fun Unit!129037 () Unit!128993)

(assert (=> b!4717715 (= lt!1883500 Unit!129037)))

(declare-fun lt!1883509 () Unit!128993)

(declare-fun Unit!129038 () Unit!128993)

(assert (=> b!4717715 (= lt!1883509 Unit!129038)))

(declare-fun lt!1883516 () Unit!128993)

(assert (=> b!4717715 (= lt!1883516 (forallContained!3620 (toList!5881 lt!1883510) lambda!214443 (h!59110 (Cons!52779 lt!1883185 lt!1883176))))))

(assert (=> b!4717715 (contains!16131 lt!1883510 (_1!30483 (h!59110 (Cons!52779 lt!1883185 lt!1883176))))))

(declare-fun lt!1883504 () Unit!128993)

(declare-fun Unit!129040 () Unit!128993)

(assert (=> b!4717715 (= lt!1883504 Unit!129040)))

(assert (=> b!4717715 (contains!16131 lt!1883498 (_1!30483 (h!59110 (Cons!52779 lt!1883185 lt!1883176))))))

(declare-fun lt!1883501 () Unit!128993)

(declare-fun Unit!129042 () Unit!128993)

(assert (=> b!4717715 (= lt!1883501 Unit!129042)))

(assert (=> b!4717715 (forall!11551 (Cons!52779 lt!1883185 lt!1883176) lambda!214443)))

(declare-fun lt!1883502 () Unit!128993)

(declare-fun Unit!129044 () Unit!128993)

(assert (=> b!4717715 (= lt!1883502 Unit!129044)))

(declare-fun call!329835 () Bool)

(assert (=> b!4717715 call!329835))

(declare-fun lt!1883514 () Unit!128993)

(declare-fun Unit!129047 () Unit!128993)

(assert (=> b!4717715 (= lt!1883514 Unit!129047)))

(declare-fun lt!1883513 () Unit!128993)

(declare-fun Unit!129048 () Unit!128993)

(assert (=> b!4717715 (= lt!1883513 Unit!129048)))

(declare-fun lt!1883499 () Unit!128993)

(assert (=> b!4717715 (= lt!1883499 (addForallContainsKeyThenBeforeAdding!783 lt!1883194 lt!1883498 (_1!30483 (h!59110 (Cons!52779 lt!1883185 lt!1883176))) (_2!30483 (h!59110 (Cons!52779 lt!1883185 lt!1883176)))))))

(assert (=> b!4717715 (forall!11551 (toList!5881 lt!1883194) lambda!214443)))

(declare-fun lt!1883496 () Unit!128993)

(assert (=> b!4717715 (= lt!1883496 lt!1883499)))

(assert (=> b!4717715 (forall!11551 (toList!5881 lt!1883194) lambda!214443)))

(declare-fun lt!1883515 () Unit!128993)

(declare-fun Unit!129050 () Unit!128993)

(assert (=> b!4717715 (= lt!1883515 Unit!129050)))

(declare-fun res!1995252 () Bool)

(assert (=> b!4717715 (= res!1995252 (forall!11551 (Cons!52779 lt!1883185 lt!1883176) lambda!214443))))

(declare-fun e!2942303 () Bool)

(assert (=> b!4717715 (=> (not res!1995252) (not e!2942303))))

(assert (=> b!4717715 e!2942303))

(declare-fun lt!1883506 () Unit!128993)

(declare-fun Unit!129052 () Unit!128993)

(assert (=> b!4717715 (= lt!1883506 Unit!129052)))

(declare-fun bm!329832 () Bool)

(assert (=> bm!329832 (= call!329835 (forall!11551 (ite c!805711 (toList!5881 lt!1883194) (toList!5881 lt!1883510)) (ite c!805711 lambda!214440 lambda!214443)))))

(assert (=> b!4717716 (= e!2942301 lt!1883194)))

(declare-fun lt!1883503 () Unit!128993)

(assert (=> b!4717716 (= lt!1883503 call!329836)))

(assert (=> b!4717716 call!329837))

(declare-fun lt!1883507 () Unit!128993)

(assert (=> b!4717716 (= lt!1883507 lt!1883503)))

(assert (=> b!4717716 call!329835))

(declare-fun lt!1883508 () Unit!128993)

(declare-fun Unit!129053 () Unit!128993)

(assert (=> b!4717716 (= lt!1883508 Unit!129053)))

(declare-fun b!4717717 () Bool)

(assert (=> b!4717717 (= e!2942303 (forall!11551 (toList!5881 lt!1883194) lambda!214443))))

(assert (= (and d!1501298 c!805711) b!4717716))

(assert (= (and d!1501298 (not c!805711)) b!4717715))

(assert (= (and b!4717715 res!1995252) b!4717717))

(assert (= (or b!4717716 b!4717715) bm!329831))

(assert (= (or b!4717716 b!4717715) bm!329830))

(assert (= (or b!4717716 b!4717715) bm!329832))

(assert (= (and d!1501298 res!1995251) b!4717713))

(assert (= (and b!4717713 res!1995253) b!4717714))

(declare-fun m!5649225 () Bool)

(assert (=> d!1501298 m!5649225))

(declare-fun m!5649227 () Bool)

(assert (=> d!1501298 m!5649227))

(assert (=> bm!329831 m!5649175))

(declare-fun m!5649229 () Bool)

(assert (=> b!4717717 m!5649229))

(declare-fun m!5649231 () Bool)

(assert (=> bm!329832 m!5649231))

(declare-fun m!5649233 () Bool)

(assert (=> b!4717715 m!5649233))

(declare-fun m!5649235 () Bool)

(assert (=> b!4717715 m!5649235))

(declare-fun m!5649237 () Bool)

(assert (=> b!4717715 m!5649237))

(declare-fun m!5649239 () Bool)

(assert (=> b!4717715 m!5649239))

(declare-fun m!5649241 () Bool)

(assert (=> b!4717715 m!5649241))

(assert (=> b!4717715 m!5649235))

(assert (=> b!4717715 m!5649229))

(declare-fun m!5649243 () Bool)

(assert (=> b!4717715 m!5649243))

(assert (=> b!4717715 m!5649241))

(declare-fun m!5649245 () Bool)

(assert (=> b!4717715 m!5649245))

(declare-fun m!5649247 () Bool)

(assert (=> b!4717715 m!5649247))

(declare-fun m!5649249 () Bool)

(assert (=> b!4717715 m!5649249))

(assert (=> b!4717715 m!5649229))

(assert (=> bm!329830 m!5649231))

(declare-fun m!5649251 () Bool)

(assert (=> b!4717714 m!5649251))

(declare-fun m!5649253 () Bool)

(assert (=> b!4717713 m!5649253))

(assert (=> b!4717512 d!1501298))

(declare-fun d!1501304 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!9377 (List!52903) (InoxSet tuple2!54378))

(assert (=> d!1501304 (= (eq!1123 (addToMapMapFromBucket!1426 (Cons!52779 lt!1883169 lt!1883191) lt!1883194) (+!2256 (addToMapMapFromBucket!1426 lt!1883191 lt!1883194) lt!1883169)) (= (content!9377 (toList!5881 (addToMapMapFromBucket!1426 (Cons!52779 lt!1883169 lt!1883191) lt!1883194))) (content!9377 (toList!5881 (+!2256 (addToMapMapFromBucket!1426 lt!1883191 lt!1883194) lt!1883169)))))))

(declare-fun bs!1105700 () Bool)

(assert (= bs!1105700 d!1501304))

(declare-fun m!5649255 () Bool)

(assert (=> bs!1105700 m!5649255))

(declare-fun m!5649257 () Bool)

(assert (=> bs!1105700 m!5649257))

(assert (=> b!4717512 d!1501304))

(declare-fun bs!1105701 () Bool)

(declare-fun d!1501306 () Bool)

(assert (= bs!1105701 (and d!1501306 start!479912)))

(declare-fun lambda!214445 () Int)

(assert (=> bs!1105701 (= lambda!214445 lambda!214343)))

(declare-fun bs!1105702 () Bool)

(assert (= bs!1105702 (and d!1501306 d!1501252)))

(assert (=> bs!1105702 (= lambda!214445 lambda!214352)))

(declare-fun lt!1883518 () ListMap!5245)

(assert (=> d!1501306 (invariantList!1496 (toList!5881 lt!1883518))))

(declare-fun e!2942305 () ListMap!5245)

(assert (=> d!1501306 (= lt!1883518 e!2942305)))

(declare-fun c!805713 () Bool)

(assert (=> d!1501306 (= c!805713 ((_ is Cons!52780) (Cons!52780 (tuple2!54381 hash!405 lt!1883176) (t!360158 (toList!5882 lm!2023)))))))

(assert (=> d!1501306 (forall!11549 (Cons!52780 (tuple2!54381 hash!405 lt!1883176) (t!360158 (toList!5882 lm!2023))) lambda!214445)))

(assert (=> d!1501306 (= (extractMap!2022 (Cons!52780 (tuple2!54381 hash!405 lt!1883176) (t!360158 (toList!5882 lm!2023)))) lt!1883518)))

(declare-fun b!4717720 () Bool)

(assert (=> b!4717720 (= e!2942305 (addToMapMapFromBucket!1426 (_2!30484 (h!59111 (Cons!52780 (tuple2!54381 hash!405 lt!1883176) (t!360158 (toList!5882 lm!2023))))) (extractMap!2022 (t!360158 (Cons!52780 (tuple2!54381 hash!405 lt!1883176) (t!360158 (toList!5882 lm!2023)))))))))

(declare-fun b!4717721 () Bool)

(assert (=> b!4717721 (= e!2942305 (ListMap!5246 Nil!52779))))

(assert (= (and d!1501306 c!805713) b!4717720))

(assert (= (and d!1501306 (not c!805713)) b!4717721))

(declare-fun m!5649259 () Bool)

(assert (=> d!1501306 m!5649259))

(declare-fun m!5649261 () Bool)

(assert (=> d!1501306 m!5649261))

(declare-fun m!5649263 () Bool)

(assert (=> b!4717720 m!5649263))

(assert (=> b!4717720 m!5649263))

(declare-fun m!5649265 () Bool)

(assert (=> b!4717720 m!5649265))

(assert (=> b!4717512 d!1501306))

(declare-fun bs!1105703 () Bool)

(declare-fun b!4717727 () Bool)

(assert (= bs!1105703 (and b!4717727 b!4717709)))

(declare-fun lambda!214446 () Int)

(assert (=> bs!1105703 (= lambda!214446 lambda!214433)))

(declare-fun bs!1105704 () Bool)

(assert (= bs!1105704 (and b!4717727 d!1501298)))

(assert (=> bs!1105704 (= (= lt!1883194 lt!1883512) (= lambda!214446 lambda!214444))))

(declare-fun bs!1105705 () Bool)

(assert (= bs!1105705 (and b!4717727 b!4717716)))

(assert (=> bs!1105705 (= lambda!214446 lambda!214440)))

(declare-fun bs!1105706 () Bool)

(assert (= bs!1105706 (and b!4717727 d!1501254)))

(assert (=> bs!1105706 (= (= lt!1883194 lt!1883488) (= lambda!214446 lambda!214438))))

(declare-fun bs!1105707 () Bool)

(assert (= bs!1105707 (and b!4717727 d!1501228)))

(assert (=> bs!1105707 (not (= lambda!214446 lambda!214346))))

(declare-fun bs!1105708 () Bool)

(assert (= bs!1105708 (and b!4717727 b!4717708)))

(assert (=> bs!1105708 (= lambda!214446 lambda!214434)))

(assert (=> bs!1105708 (= (= lt!1883194 lt!1883474) (= lambda!214446 lambda!214435))))

(declare-fun bs!1105709 () Bool)

(assert (= bs!1105709 (and b!4717727 b!4717715)))

(assert (=> bs!1105709 (= lambda!214446 lambda!214442)))

(assert (=> bs!1105709 (= (= lt!1883194 lt!1883498) (= lambda!214446 lambda!214443))))

(assert (=> b!4717727 true))

(declare-fun bs!1105710 () Bool)

(declare-fun b!4717726 () Bool)

(assert (= bs!1105710 (and b!4717726 b!4717709)))

(declare-fun lambda!214447 () Int)

(assert (=> bs!1105710 (= lambda!214447 lambda!214433)))

(declare-fun bs!1105711 () Bool)

(assert (= bs!1105711 (and b!4717726 b!4717727)))

(assert (=> bs!1105711 (= lambda!214447 lambda!214446)))

(declare-fun bs!1105712 () Bool)

(assert (= bs!1105712 (and b!4717726 d!1501298)))

(assert (=> bs!1105712 (= (= lt!1883194 lt!1883512) (= lambda!214447 lambda!214444))))

(declare-fun bs!1105713 () Bool)

(assert (= bs!1105713 (and b!4717726 b!4717716)))

(assert (=> bs!1105713 (= lambda!214447 lambda!214440)))

(declare-fun bs!1105715 () Bool)

(assert (= bs!1105715 (and b!4717726 d!1501254)))

(assert (=> bs!1105715 (= (= lt!1883194 lt!1883488) (= lambda!214447 lambda!214438))))

(declare-fun bs!1105716 () Bool)

(assert (= bs!1105716 (and b!4717726 d!1501228)))

(assert (=> bs!1105716 (not (= lambda!214447 lambda!214346))))

(declare-fun bs!1105717 () Bool)

(assert (= bs!1105717 (and b!4717726 b!4717708)))

(assert (=> bs!1105717 (= lambda!214447 lambda!214434)))

(assert (=> bs!1105717 (= (= lt!1883194 lt!1883474) (= lambda!214447 lambda!214435))))

(declare-fun bs!1105718 () Bool)

(assert (= bs!1105718 (and b!4717726 b!4717715)))

(assert (=> bs!1105718 (= lambda!214447 lambda!214442)))

(assert (=> bs!1105718 (= (= lt!1883194 lt!1883498) (= lambda!214447 lambda!214443))))

(assert (=> b!4717726 true))

(declare-fun lambda!214449 () Int)

(declare-fun lt!1883523 () ListMap!5245)

(assert (=> bs!1105710 (= (= lt!1883523 lt!1883194) (= lambda!214449 lambda!214433))))

(assert (=> bs!1105711 (= (= lt!1883523 lt!1883194) (= lambda!214449 lambda!214446))))

(assert (=> bs!1105712 (= (= lt!1883523 lt!1883512) (= lambda!214449 lambda!214444))))

(assert (=> b!4717726 (= (= lt!1883523 lt!1883194) (= lambda!214449 lambda!214447))))

(assert (=> bs!1105713 (= (= lt!1883523 lt!1883194) (= lambda!214449 lambda!214440))))

(assert (=> bs!1105715 (= (= lt!1883523 lt!1883488) (= lambda!214449 lambda!214438))))

(assert (=> bs!1105716 (not (= lambda!214449 lambda!214346))))

(assert (=> bs!1105717 (= (= lt!1883523 lt!1883194) (= lambda!214449 lambda!214434))))

(assert (=> bs!1105717 (= (= lt!1883523 lt!1883474) (= lambda!214449 lambda!214435))))

(assert (=> bs!1105718 (= (= lt!1883523 lt!1883194) (= lambda!214449 lambda!214442))))

(assert (=> bs!1105718 (= (= lt!1883523 lt!1883498) (= lambda!214449 lambda!214443))))

(assert (=> b!4717726 true))

(declare-fun bs!1105735 () Bool)

(declare-fun d!1501308 () Bool)

(assert (= bs!1105735 (and d!1501308 b!4717709)))

(declare-fun lambda!214451 () Int)

(declare-fun lt!1883537 () ListMap!5245)

(assert (=> bs!1105735 (= (= lt!1883537 lt!1883194) (= lambda!214451 lambda!214433))))

(declare-fun bs!1105736 () Bool)

(assert (= bs!1105736 (and d!1501308 b!4717727)))

(assert (=> bs!1105736 (= (= lt!1883537 lt!1883194) (= lambda!214451 lambda!214446))))

(declare-fun bs!1105737 () Bool)

(assert (= bs!1105737 (and d!1501308 d!1501298)))

(assert (=> bs!1105737 (= (= lt!1883537 lt!1883512) (= lambda!214451 lambda!214444))))

(declare-fun bs!1105738 () Bool)

(assert (= bs!1105738 (and d!1501308 b!4717726)))

(assert (=> bs!1105738 (= (= lt!1883537 lt!1883194) (= lambda!214451 lambda!214447))))

(declare-fun bs!1105739 () Bool)

(assert (= bs!1105739 (and d!1501308 b!4717716)))

(assert (=> bs!1105739 (= (= lt!1883537 lt!1883194) (= lambda!214451 lambda!214440))))

(declare-fun bs!1105740 () Bool)

(assert (= bs!1105740 (and d!1501308 d!1501254)))

(assert (=> bs!1105740 (= (= lt!1883537 lt!1883488) (= lambda!214451 lambda!214438))))

(declare-fun bs!1105741 () Bool)

(assert (= bs!1105741 (and d!1501308 b!4717708)))

(assert (=> bs!1105741 (= (= lt!1883537 lt!1883194) (= lambda!214451 lambda!214434))))

(assert (=> bs!1105741 (= (= lt!1883537 lt!1883474) (= lambda!214451 lambda!214435))))

(declare-fun bs!1105742 () Bool)

(assert (= bs!1105742 (and d!1501308 b!4717715)))

(assert (=> bs!1105742 (= (= lt!1883537 lt!1883194) (= lambda!214451 lambda!214442))))

(assert (=> bs!1105742 (= (= lt!1883537 lt!1883498) (= lambda!214451 lambda!214443))))

(declare-fun bs!1105743 () Bool)

(assert (= bs!1105743 (and d!1501308 d!1501228)))

(assert (=> bs!1105743 (not (= lambda!214451 lambda!214346))))

(assert (=> bs!1105738 (= (= lt!1883537 lt!1883523) (= lambda!214451 lambda!214449))))

(assert (=> d!1501308 true))

(declare-fun e!2942309 () Bool)

(assert (=> d!1501308 e!2942309))

(declare-fun res!1995256 () Bool)

(assert (=> d!1501308 (=> (not res!1995256) (not e!2942309))))

(assert (=> d!1501308 (= res!1995256 (forall!11551 lt!1883176 lambda!214451))))

(declare-fun e!2942308 () ListMap!5245)

(assert (=> d!1501308 (= lt!1883537 e!2942308)))

(declare-fun c!805714 () Bool)

(assert (=> d!1501308 (= c!805714 ((_ is Nil!52779) lt!1883176))))

(assert (=> d!1501308 (noDuplicateKeys!1996 lt!1883176)))

(assert (=> d!1501308 (= (addToMapMapFromBucket!1426 lt!1883176 lt!1883194) lt!1883537)))

(declare-fun b!4717724 () Bool)

(declare-fun res!1995258 () Bool)

(assert (=> b!4717724 (=> (not res!1995258) (not e!2942309))))

(assert (=> b!4717724 (= res!1995258 (forall!11551 (toList!5881 lt!1883194) lambda!214451))))

(declare-fun b!4717725 () Bool)

(assert (=> b!4717725 (= e!2942309 (invariantList!1496 (toList!5881 lt!1883537)))))

(declare-fun bm!329833 () Bool)

(declare-fun call!329840 () Bool)

(declare-fun lt!1883535 () ListMap!5245)

(assert (=> bm!329833 (= call!329840 (forall!11551 (ite c!805714 (toList!5881 lt!1883194) (toList!5881 lt!1883535)) (ite c!805714 lambda!214446 lambda!214449)))))

(declare-fun bm!329834 () Bool)

(declare-fun call!329839 () Unit!128993)

(assert (=> bm!329834 (= call!329839 (lemmaContainsAllItsOwnKeys!784 lt!1883194))))

(assert (=> b!4717726 (= e!2942308 lt!1883523)))

(assert (=> b!4717726 (= lt!1883535 (+!2256 lt!1883194 (h!59110 lt!1883176)))))

(assert (=> b!4717726 (= lt!1883523 (addToMapMapFromBucket!1426 (t!360157 lt!1883176) (+!2256 lt!1883194 (h!59110 lt!1883176))))))

(declare-fun lt!1883530 () Unit!128993)

(assert (=> b!4717726 (= lt!1883530 call!329839)))

(assert (=> b!4717726 (forall!11551 (toList!5881 lt!1883194) lambda!214447)))

(declare-fun lt!1883536 () Unit!128993)

(assert (=> b!4717726 (= lt!1883536 lt!1883530)))

(assert (=> b!4717726 call!329840))

(declare-fun lt!1883522 () Unit!128993)

(declare-fun Unit!129054 () Unit!128993)

(assert (=> b!4717726 (= lt!1883522 Unit!129054)))

(assert (=> b!4717726 (forall!11551 (t!360157 lt!1883176) lambda!214449)))

(declare-fun lt!1883525 () Unit!128993)

(declare-fun Unit!129055 () Unit!128993)

(assert (=> b!4717726 (= lt!1883525 Unit!129055)))

(declare-fun lt!1883534 () Unit!128993)

(declare-fun Unit!129056 () Unit!128993)

(assert (=> b!4717726 (= lt!1883534 Unit!129056)))

(declare-fun lt!1883541 () Unit!128993)

(assert (=> b!4717726 (= lt!1883541 (forallContained!3620 (toList!5881 lt!1883535) lambda!214449 (h!59110 lt!1883176)))))

(assert (=> b!4717726 (contains!16131 lt!1883535 (_1!30483 (h!59110 lt!1883176)))))

(declare-fun lt!1883529 () Unit!128993)

(declare-fun Unit!129057 () Unit!128993)

(assert (=> b!4717726 (= lt!1883529 Unit!129057)))

(assert (=> b!4717726 (contains!16131 lt!1883523 (_1!30483 (h!59110 lt!1883176)))))

(declare-fun lt!1883526 () Unit!128993)

(declare-fun Unit!129058 () Unit!128993)

(assert (=> b!4717726 (= lt!1883526 Unit!129058)))

(assert (=> b!4717726 (forall!11551 lt!1883176 lambda!214449)))

(declare-fun lt!1883527 () Unit!128993)

(declare-fun Unit!129059 () Unit!128993)

(assert (=> b!4717726 (= lt!1883527 Unit!129059)))

(declare-fun call!329838 () Bool)

(assert (=> b!4717726 call!329838))

(declare-fun lt!1883539 () Unit!128993)

(declare-fun Unit!129060 () Unit!128993)

(assert (=> b!4717726 (= lt!1883539 Unit!129060)))

(declare-fun lt!1883538 () Unit!128993)

(declare-fun Unit!129061 () Unit!128993)

(assert (=> b!4717726 (= lt!1883538 Unit!129061)))

(declare-fun lt!1883524 () Unit!128993)

(assert (=> b!4717726 (= lt!1883524 (addForallContainsKeyThenBeforeAdding!783 lt!1883194 lt!1883523 (_1!30483 (h!59110 lt!1883176)) (_2!30483 (h!59110 lt!1883176))))))

(assert (=> b!4717726 (forall!11551 (toList!5881 lt!1883194) lambda!214449)))

(declare-fun lt!1883521 () Unit!128993)

(assert (=> b!4717726 (= lt!1883521 lt!1883524)))

(assert (=> b!4717726 (forall!11551 (toList!5881 lt!1883194) lambda!214449)))

(declare-fun lt!1883540 () Unit!128993)

(declare-fun Unit!129062 () Unit!128993)

(assert (=> b!4717726 (= lt!1883540 Unit!129062)))

(declare-fun res!1995257 () Bool)

(assert (=> b!4717726 (= res!1995257 (forall!11551 lt!1883176 lambda!214449))))

(declare-fun e!2942310 () Bool)

(assert (=> b!4717726 (=> (not res!1995257) (not e!2942310))))

(assert (=> b!4717726 e!2942310))

(declare-fun lt!1883531 () Unit!128993)

(declare-fun Unit!129063 () Unit!128993)

(assert (=> b!4717726 (= lt!1883531 Unit!129063)))

(declare-fun bm!329835 () Bool)

(assert (=> bm!329835 (= call!329838 (forall!11551 (ite c!805714 (toList!5881 lt!1883194) (toList!5881 lt!1883535)) (ite c!805714 lambda!214446 lambda!214449)))))

(assert (=> b!4717727 (= e!2942308 lt!1883194)))

(declare-fun lt!1883528 () Unit!128993)

(assert (=> b!4717727 (= lt!1883528 call!329839)))

(assert (=> b!4717727 call!329840))

(declare-fun lt!1883532 () Unit!128993)

(assert (=> b!4717727 (= lt!1883532 lt!1883528)))

(assert (=> b!4717727 call!329838))

(declare-fun lt!1883533 () Unit!128993)

(declare-fun Unit!129064 () Unit!128993)

(assert (=> b!4717727 (= lt!1883533 Unit!129064)))

(declare-fun b!4717728 () Bool)

(assert (=> b!4717728 (= e!2942310 (forall!11551 (toList!5881 lt!1883194) lambda!214449))))

(assert (= (and d!1501308 c!805714) b!4717727))

(assert (= (and d!1501308 (not c!805714)) b!4717726))

(assert (= (and b!4717726 res!1995257) b!4717728))

(assert (= (or b!4717727 b!4717726) bm!329834))

(assert (= (or b!4717727 b!4717726) bm!329833))

(assert (= (or b!4717727 b!4717726) bm!329835))

(assert (= (and d!1501308 res!1995256) b!4717724))

(assert (= (and b!4717724 res!1995258) b!4717725))

(declare-fun m!5649317 () Bool)

(assert (=> d!1501308 m!5649317))

(declare-fun m!5649319 () Bool)

(assert (=> d!1501308 m!5649319))

(assert (=> bm!329834 m!5649175))

(declare-fun m!5649321 () Bool)

(assert (=> b!4717728 m!5649321))

(declare-fun m!5649323 () Bool)

(assert (=> bm!329835 m!5649323))

(declare-fun m!5649325 () Bool)

(assert (=> b!4717726 m!5649325))

(declare-fun m!5649327 () Bool)

(assert (=> b!4717726 m!5649327))

(declare-fun m!5649329 () Bool)

(assert (=> b!4717726 m!5649329))

(declare-fun m!5649331 () Bool)

(assert (=> b!4717726 m!5649331))

(declare-fun m!5649333 () Bool)

(assert (=> b!4717726 m!5649333))

(assert (=> b!4717726 m!5649327))

(assert (=> b!4717726 m!5649321))

(declare-fun m!5649335 () Bool)

(assert (=> b!4717726 m!5649335))

(assert (=> b!4717726 m!5649333))

(declare-fun m!5649337 () Bool)

(assert (=> b!4717726 m!5649337))

(declare-fun m!5649339 () Bool)

(assert (=> b!4717726 m!5649339))

(declare-fun m!5649341 () Bool)

(assert (=> b!4717726 m!5649341))

(assert (=> b!4717726 m!5649321))

(assert (=> bm!329833 m!5649323))

(declare-fun m!5649343 () Bool)

(assert (=> b!4717725 m!5649343))

(declare-fun m!5649345 () Bool)

(assert (=> b!4717724 m!5649345))

(assert (=> b!4717512 d!1501308))

(declare-fun d!1501324 () Bool)

(assert (=> d!1501324 (eq!1123 (addToMapMapFromBucket!1426 (Cons!52779 lt!1883169 lt!1883191) lt!1883194) (+!2256 (addToMapMapFromBucket!1426 lt!1883191 lt!1883194) lt!1883169))))

(declare-fun lt!1883557 () Unit!128993)

(declare-fun choose!33255 (tuple2!54378 List!52903 ListMap!5245) Unit!128993)

(assert (=> d!1501324 (= lt!1883557 (choose!33255 lt!1883169 lt!1883191 lt!1883194))))

(assert (=> d!1501324 (noDuplicateKeys!1996 lt!1883191)))

(assert (=> d!1501324 (= (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!372 lt!1883169 lt!1883191 lt!1883194) lt!1883557)))

(declare-fun bs!1105760 () Bool)

(assert (= bs!1105760 d!1501324))

(assert (=> bs!1105760 m!5648803))

(declare-fun m!5649383 () Bool)

(assert (=> bs!1105760 m!5649383))

(assert (=> bs!1105760 m!5648781))

(assert (=> bs!1105760 m!5648783))

(assert (=> bs!1105760 m!5648781))

(assert (=> bs!1105760 m!5648803))

(assert (=> bs!1105760 m!5648783))

(assert (=> bs!1105760 m!5648807))

(declare-fun m!5649385 () Bool)

(assert (=> bs!1105760 m!5649385))

(assert (=> b!4717512 d!1501324))

(declare-fun d!1501336 () Bool)

(declare-fun e!2942334 () Bool)

(assert (=> d!1501336 e!2942334))

(declare-fun res!1995277 () Bool)

(assert (=> d!1501336 (=> (not res!1995277) (not e!2942334))))

(declare-fun lt!1883559 () ListMap!5245)

(assert (=> d!1501336 (= res!1995277 (contains!16131 lt!1883559 (_1!30483 (h!59110 oldBucket!34))))))

(declare-fun lt!1883558 () List!52903)

(assert (=> d!1501336 (= lt!1883559 (ListMap!5246 lt!1883558))))

(declare-fun lt!1883561 () Unit!128993)

(declare-fun lt!1883560 () Unit!128993)

(assert (=> d!1501336 (= lt!1883561 lt!1883560)))

(assert (=> d!1501336 (= (getValueByKey!1938 lt!1883558 (_1!30483 (h!59110 oldBucket!34))) (Some!12341 (_2!30483 (h!59110 oldBucket!34))))))

(assert (=> d!1501336 (= lt!1883560 (lemmaContainsTupThenGetReturnValue!1078 lt!1883558 (_1!30483 (h!59110 oldBucket!34)) (_2!30483 (h!59110 oldBucket!34))))))

(assert (=> d!1501336 (= lt!1883558 (insertNoDuplicatedKeys!586 (toList!5881 lt!1883182) (_1!30483 (h!59110 oldBucket!34)) (_2!30483 (h!59110 oldBucket!34))))))

(assert (=> d!1501336 (= (+!2256 lt!1883182 (h!59110 oldBucket!34)) lt!1883559)))

(declare-fun b!4717760 () Bool)

(declare-fun res!1995276 () Bool)

(assert (=> b!4717760 (=> (not res!1995276) (not e!2942334))))

(assert (=> b!4717760 (= res!1995276 (= (getValueByKey!1938 (toList!5881 lt!1883559) (_1!30483 (h!59110 oldBucket!34))) (Some!12341 (_2!30483 (h!59110 oldBucket!34)))))))

(declare-fun b!4717761 () Bool)

(assert (=> b!4717761 (= e!2942334 (contains!16137 (toList!5881 lt!1883559) (h!59110 oldBucket!34)))))

(assert (= (and d!1501336 res!1995277) b!4717760))

(assert (= (and b!4717760 res!1995276) b!4717761))

(declare-fun m!5649389 () Bool)

(assert (=> d!1501336 m!5649389))

(declare-fun m!5649391 () Bool)

(assert (=> d!1501336 m!5649391))

(declare-fun m!5649393 () Bool)

(assert (=> d!1501336 m!5649393))

(declare-fun m!5649395 () Bool)

(assert (=> d!1501336 m!5649395))

(declare-fun m!5649397 () Bool)

(assert (=> b!4717760 m!5649397))

(declare-fun m!5649399 () Bool)

(assert (=> b!4717761 m!5649399))

(assert (=> b!4717512 d!1501336))

(declare-fun bs!1105775 () Bool)

(declare-fun b!4717765 () Bool)

(assert (= bs!1105775 (and b!4717765 d!1501308)))

(declare-fun lambda!214457 () Int)

(assert (=> bs!1105775 (= (= lt!1883194 lt!1883537) (= lambda!214457 lambda!214451))))

(declare-fun bs!1105778 () Bool)

(assert (= bs!1105778 (and b!4717765 b!4717709)))

(assert (=> bs!1105778 (= lambda!214457 lambda!214433)))

(declare-fun bs!1105779 () Bool)

(assert (= bs!1105779 (and b!4717765 b!4717727)))

(assert (=> bs!1105779 (= lambda!214457 lambda!214446)))

(declare-fun bs!1105781 () Bool)

(assert (= bs!1105781 (and b!4717765 d!1501298)))

(assert (=> bs!1105781 (= (= lt!1883194 lt!1883512) (= lambda!214457 lambda!214444))))

(declare-fun bs!1105782 () Bool)

(assert (= bs!1105782 (and b!4717765 b!4717726)))

(assert (=> bs!1105782 (= lambda!214457 lambda!214447)))

(declare-fun bs!1105784 () Bool)

(assert (= bs!1105784 (and b!4717765 b!4717716)))

(assert (=> bs!1105784 (= lambda!214457 lambda!214440)))

(declare-fun bs!1105786 () Bool)

(assert (= bs!1105786 (and b!4717765 d!1501254)))

(assert (=> bs!1105786 (= (= lt!1883194 lt!1883488) (= lambda!214457 lambda!214438))))

(declare-fun bs!1105787 () Bool)

(assert (= bs!1105787 (and b!4717765 b!4717708)))

(assert (=> bs!1105787 (= lambda!214457 lambda!214434)))

(assert (=> bs!1105787 (= (= lt!1883194 lt!1883474) (= lambda!214457 lambda!214435))))

(declare-fun bs!1105788 () Bool)

(assert (= bs!1105788 (and b!4717765 b!4717715)))

(assert (=> bs!1105788 (= lambda!214457 lambda!214442)))

(assert (=> bs!1105788 (= (= lt!1883194 lt!1883498) (= lambda!214457 lambda!214443))))

(declare-fun bs!1105790 () Bool)

(assert (= bs!1105790 (and b!4717765 d!1501228)))

(assert (=> bs!1105790 (not (= lambda!214457 lambda!214346))))

(assert (=> bs!1105782 (= (= lt!1883194 lt!1883523) (= lambda!214457 lambda!214449))))

(assert (=> b!4717765 true))

(declare-fun bs!1105791 () Bool)

(declare-fun b!4717764 () Bool)

(assert (= bs!1105791 (and b!4717764 d!1501308)))

(declare-fun lambda!214458 () Int)

(assert (=> bs!1105791 (= (= lt!1883194 lt!1883537) (= lambda!214458 lambda!214451))))

(declare-fun bs!1105792 () Bool)

(assert (= bs!1105792 (and b!4717764 b!4717709)))

(assert (=> bs!1105792 (= lambda!214458 lambda!214433)))

(declare-fun bs!1105793 () Bool)

(assert (= bs!1105793 (and b!4717764 b!4717727)))

(assert (=> bs!1105793 (= lambda!214458 lambda!214446)))

(declare-fun bs!1105794 () Bool)

(assert (= bs!1105794 (and b!4717764 d!1501298)))

(assert (=> bs!1105794 (= (= lt!1883194 lt!1883512) (= lambda!214458 lambda!214444))))

(declare-fun bs!1105795 () Bool)

(assert (= bs!1105795 (and b!4717764 b!4717726)))

(assert (=> bs!1105795 (= lambda!214458 lambda!214447)))

(declare-fun bs!1105796 () Bool)

(assert (= bs!1105796 (and b!4717764 b!4717716)))

(assert (=> bs!1105796 (= lambda!214458 lambda!214440)))

(declare-fun bs!1105797 () Bool)

(assert (= bs!1105797 (and b!4717764 b!4717765)))

(assert (=> bs!1105797 (= lambda!214458 lambda!214457)))

(declare-fun bs!1105798 () Bool)

(assert (= bs!1105798 (and b!4717764 d!1501254)))

(assert (=> bs!1105798 (= (= lt!1883194 lt!1883488) (= lambda!214458 lambda!214438))))

(declare-fun bs!1105799 () Bool)

(assert (= bs!1105799 (and b!4717764 b!4717708)))

(assert (=> bs!1105799 (= lambda!214458 lambda!214434)))

(assert (=> bs!1105799 (= (= lt!1883194 lt!1883474) (= lambda!214458 lambda!214435))))

(declare-fun bs!1105800 () Bool)

(assert (= bs!1105800 (and b!4717764 b!4717715)))

(assert (=> bs!1105800 (= lambda!214458 lambda!214442)))

(assert (=> bs!1105800 (= (= lt!1883194 lt!1883498) (= lambda!214458 lambda!214443))))

(declare-fun bs!1105801 () Bool)

(assert (= bs!1105801 (and b!4717764 d!1501228)))

(assert (=> bs!1105801 (not (= lambda!214458 lambda!214346))))

(assert (=> bs!1105795 (= (= lt!1883194 lt!1883523) (= lambda!214458 lambda!214449))))

(assert (=> b!4717764 true))

(declare-fun lambda!214459 () Int)

(declare-fun lt!1883564 () ListMap!5245)

(assert (=> bs!1105791 (= (= lt!1883564 lt!1883537) (= lambda!214459 lambda!214451))))

(assert (=> bs!1105792 (= (= lt!1883564 lt!1883194) (= lambda!214459 lambda!214433))))

(assert (=> bs!1105793 (= (= lt!1883564 lt!1883194) (= lambda!214459 lambda!214446))))

(assert (=> bs!1105794 (= (= lt!1883564 lt!1883512) (= lambda!214459 lambda!214444))))

(assert (=> bs!1105795 (= (= lt!1883564 lt!1883194) (= lambda!214459 lambda!214447))))

(assert (=> bs!1105796 (= (= lt!1883564 lt!1883194) (= lambda!214459 lambda!214440))))

(assert (=> bs!1105798 (= (= lt!1883564 lt!1883488) (= lambda!214459 lambda!214438))))

(assert (=> bs!1105799 (= (= lt!1883564 lt!1883194) (= lambda!214459 lambda!214434))))

(assert (=> bs!1105799 (= (= lt!1883564 lt!1883474) (= lambda!214459 lambda!214435))))

(assert (=> bs!1105800 (= (= lt!1883564 lt!1883194) (= lambda!214459 lambda!214442))))

(assert (=> bs!1105800 (= (= lt!1883564 lt!1883498) (= lambda!214459 lambda!214443))))

(assert (=> b!4717764 (= (= lt!1883564 lt!1883194) (= lambda!214459 lambda!214458))))

(assert (=> bs!1105797 (= (= lt!1883564 lt!1883194) (= lambda!214459 lambda!214457))))

(assert (=> bs!1105801 (not (= lambda!214459 lambda!214346))))

(assert (=> bs!1105795 (= (= lt!1883564 lt!1883523) (= lambda!214459 lambda!214449))))

(assert (=> b!4717764 true))

(declare-fun bs!1105802 () Bool)

(declare-fun d!1501340 () Bool)

(assert (= bs!1105802 (and d!1501340 d!1501308)))

(declare-fun lambda!214460 () Int)

(declare-fun lt!1883578 () ListMap!5245)

(assert (=> bs!1105802 (= (= lt!1883578 lt!1883537) (= lambda!214460 lambda!214451))))

(declare-fun bs!1105803 () Bool)

(assert (= bs!1105803 (and d!1501340 b!4717709)))

(assert (=> bs!1105803 (= (= lt!1883578 lt!1883194) (= lambda!214460 lambda!214433))))

(declare-fun bs!1105804 () Bool)

(assert (= bs!1105804 (and d!1501340 b!4717727)))

(assert (=> bs!1105804 (= (= lt!1883578 lt!1883194) (= lambda!214460 lambda!214446))))

(declare-fun bs!1105805 () Bool)

(assert (= bs!1105805 (and d!1501340 d!1501298)))

(assert (=> bs!1105805 (= (= lt!1883578 lt!1883512) (= lambda!214460 lambda!214444))))

(declare-fun bs!1105806 () Bool)

(assert (= bs!1105806 (and d!1501340 b!4717726)))

(assert (=> bs!1105806 (= (= lt!1883578 lt!1883194) (= lambda!214460 lambda!214447))))

(declare-fun bs!1105807 () Bool)

(assert (= bs!1105807 (and d!1501340 b!4717764)))

(assert (=> bs!1105807 (= (= lt!1883578 lt!1883564) (= lambda!214460 lambda!214459))))

(declare-fun bs!1105808 () Bool)

(assert (= bs!1105808 (and d!1501340 b!4717716)))

(assert (=> bs!1105808 (= (= lt!1883578 lt!1883194) (= lambda!214460 lambda!214440))))

(declare-fun bs!1105809 () Bool)

(assert (= bs!1105809 (and d!1501340 d!1501254)))

(assert (=> bs!1105809 (= (= lt!1883578 lt!1883488) (= lambda!214460 lambda!214438))))

(declare-fun bs!1105810 () Bool)

(assert (= bs!1105810 (and d!1501340 b!4717708)))

(assert (=> bs!1105810 (= (= lt!1883578 lt!1883194) (= lambda!214460 lambda!214434))))

(assert (=> bs!1105810 (= (= lt!1883578 lt!1883474) (= lambda!214460 lambda!214435))))

(declare-fun bs!1105811 () Bool)

(assert (= bs!1105811 (and d!1501340 b!4717715)))

(assert (=> bs!1105811 (= (= lt!1883578 lt!1883194) (= lambda!214460 lambda!214442))))

(assert (=> bs!1105811 (= (= lt!1883578 lt!1883498) (= lambda!214460 lambda!214443))))

(assert (=> bs!1105807 (= (= lt!1883578 lt!1883194) (= lambda!214460 lambda!214458))))

(declare-fun bs!1105812 () Bool)

(assert (= bs!1105812 (and d!1501340 b!4717765)))

(assert (=> bs!1105812 (= (= lt!1883578 lt!1883194) (= lambda!214460 lambda!214457))))

(declare-fun bs!1105813 () Bool)

(assert (= bs!1105813 (and d!1501340 d!1501228)))

(assert (=> bs!1105813 (not (= lambda!214460 lambda!214346))))

(assert (=> bs!1105806 (= (= lt!1883578 lt!1883523) (= lambda!214460 lambda!214449))))

(assert (=> d!1501340 true))

(declare-fun e!2942336 () Bool)

(assert (=> d!1501340 e!2942336))

(declare-fun res!1995278 () Bool)

(assert (=> d!1501340 (=> (not res!1995278) (not e!2942336))))

(assert (=> d!1501340 (= res!1995278 (forall!11551 lt!1883191 lambda!214460))))

(declare-fun e!2942335 () ListMap!5245)

(assert (=> d!1501340 (= lt!1883578 e!2942335)))

(declare-fun c!805721 () Bool)

(assert (=> d!1501340 (= c!805721 ((_ is Nil!52779) lt!1883191))))

(assert (=> d!1501340 (noDuplicateKeys!1996 lt!1883191)))

(assert (=> d!1501340 (= (addToMapMapFromBucket!1426 lt!1883191 lt!1883194) lt!1883578)))

(declare-fun b!4717762 () Bool)

(declare-fun res!1995280 () Bool)

(assert (=> b!4717762 (=> (not res!1995280) (not e!2942336))))

(assert (=> b!4717762 (= res!1995280 (forall!11551 (toList!5881 lt!1883194) lambda!214460))))

(declare-fun b!4717763 () Bool)

(assert (=> b!4717763 (= e!2942336 (invariantList!1496 (toList!5881 lt!1883578)))))

(declare-fun call!329844 () Bool)

(declare-fun lt!1883576 () ListMap!5245)

(declare-fun bm!329837 () Bool)

(assert (=> bm!329837 (= call!329844 (forall!11551 (ite c!805721 (toList!5881 lt!1883194) (toList!5881 lt!1883576)) (ite c!805721 lambda!214457 lambda!214459)))))

(declare-fun bm!329838 () Bool)

(declare-fun call!329843 () Unit!128993)

(assert (=> bm!329838 (= call!329843 (lemmaContainsAllItsOwnKeys!784 lt!1883194))))

(assert (=> b!4717764 (= e!2942335 lt!1883564)))

(assert (=> b!4717764 (= lt!1883576 (+!2256 lt!1883194 (h!59110 lt!1883191)))))

(assert (=> b!4717764 (= lt!1883564 (addToMapMapFromBucket!1426 (t!360157 lt!1883191) (+!2256 lt!1883194 (h!59110 lt!1883191))))))

(declare-fun lt!1883571 () Unit!128993)

(assert (=> b!4717764 (= lt!1883571 call!329843)))

(assert (=> b!4717764 (forall!11551 (toList!5881 lt!1883194) lambda!214458)))

(declare-fun lt!1883577 () Unit!128993)

(assert (=> b!4717764 (= lt!1883577 lt!1883571)))

(assert (=> b!4717764 call!329844))

(declare-fun lt!1883563 () Unit!128993)

(declare-fun Unit!129076 () Unit!128993)

(assert (=> b!4717764 (= lt!1883563 Unit!129076)))

(assert (=> b!4717764 (forall!11551 (t!360157 lt!1883191) lambda!214459)))

(declare-fun lt!1883566 () Unit!128993)

(declare-fun Unit!129077 () Unit!128993)

(assert (=> b!4717764 (= lt!1883566 Unit!129077)))

(declare-fun lt!1883575 () Unit!128993)

(declare-fun Unit!129078 () Unit!128993)

(assert (=> b!4717764 (= lt!1883575 Unit!129078)))

(declare-fun lt!1883582 () Unit!128993)

(assert (=> b!4717764 (= lt!1883582 (forallContained!3620 (toList!5881 lt!1883576) lambda!214459 (h!59110 lt!1883191)))))

(assert (=> b!4717764 (contains!16131 lt!1883576 (_1!30483 (h!59110 lt!1883191)))))

(declare-fun lt!1883570 () Unit!128993)

(declare-fun Unit!129079 () Unit!128993)

(assert (=> b!4717764 (= lt!1883570 Unit!129079)))

(assert (=> b!4717764 (contains!16131 lt!1883564 (_1!30483 (h!59110 lt!1883191)))))

(declare-fun lt!1883567 () Unit!128993)

(declare-fun Unit!129080 () Unit!128993)

(assert (=> b!4717764 (= lt!1883567 Unit!129080)))

(assert (=> b!4717764 (forall!11551 lt!1883191 lambda!214459)))

(declare-fun lt!1883568 () Unit!128993)

(declare-fun Unit!129081 () Unit!128993)

(assert (=> b!4717764 (= lt!1883568 Unit!129081)))

(declare-fun call!329842 () Bool)

(assert (=> b!4717764 call!329842))

(declare-fun lt!1883580 () Unit!128993)

(declare-fun Unit!129082 () Unit!128993)

(assert (=> b!4717764 (= lt!1883580 Unit!129082)))

(declare-fun lt!1883579 () Unit!128993)

(declare-fun Unit!129083 () Unit!128993)

(assert (=> b!4717764 (= lt!1883579 Unit!129083)))

(declare-fun lt!1883565 () Unit!128993)

(assert (=> b!4717764 (= lt!1883565 (addForallContainsKeyThenBeforeAdding!783 lt!1883194 lt!1883564 (_1!30483 (h!59110 lt!1883191)) (_2!30483 (h!59110 lt!1883191))))))

(assert (=> b!4717764 (forall!11551 (toList!5881 lt!1883194) lambda!214459)))

(declare-fun lt!1883562 () Unit!128993)

(assert (=> b!4717764 (= lt!1883562 lt!1883565)))

(assert (=> b!4717764 (forall!11551 (toList!5881 lt!1883194) lambda!214459)))

(declare-fun lt!1883581 () Unit!128993)

(declare-fun Unit!129084 () Unit!128993)

(assert (=> b!4717764 (= lt!1883581 Unit!129084)))

(declare-fun res!1995279 () Bool)

(assert (=> b!4717764 (= res!1995279 (forall!11551 lt!1883191 lambda!214459))))

(declare-fun e!2942337 () Bool)

(assert (=> b!4717764 (=> (not res!1995279) (not e!2942337))))

(assert (=> b!4717764 e!2942337))

(declare-fun lt!1883572 () Unit!128993)

(declare-fun Unit!129085 () Unit!128993)

(assert (=> b!4717764 (= lt!1883572 Unit!129085)))

(declare-fun bm!329839 () Bool)

(assert (=> bm!329839 (= call!329842 (forall!11551 (ite c!805721 (toList!5881 lt!1883194) (toList!5881 lt!1883576)) (ite c!805721 lambda!214457 lambda!214459)))))

(assert (=> b!4717765 (= e!2942335 lt!1883194)))

(declare-fun lt!1883569 () Unit!128993)

(assert (=> b!4717765 (= lt!1883569 call!329843)))

(assert (=> b!4717765 call!329844))

(declare-fun lt!1883573 () Unit!128993)

(assert (=> b!4717765 (= lt!1883573 lt!1883569)))

(assert (=> b!4717765 call!329842))

(declare-fun lt!1883574 () Unit!128993)

(declare-fun Unit!129086 () Unit!128993)

(assert (=> b!4717765 (= lt!1883574 Unit!129086)))

(declare-fun b!4717766 () Bool)

(assert (=> b!4717766 (= e!2942337 (forall!11551 (toList!5881 lt!1883194) lambda!214459))))

(assert (= (and d!1501340 c!805721) b!4717765))

(assert (= (and d!1501340 (not c!805721)) b!4717764))

(assert (= (and b!4717764 res!1995279) b!4717766))

(assert (= (or b!4717765 b!4717764) bm!329838))

(assert (= (or b!4717765 b!4717764) bm!329837))

(assert (= (or b!4717765 b!4717764) bm!329839))

(assert (= (and d!1501340 res!1995278) b!4717762))

(assert (= (and b!4717762 res!1995280) b!4717763))

(declare-fun m!5649407 () Bool)

(assert (=> d!1501340 m!5649407))

(assert (=> d!1501340 m!5649383))

(assert (=> bm!329838 m!5649175))

(declare-fun m!5649409 () Bool)

(assert (=> b!4717766 m!5649409))

(declare-fun m!5649411 () Bool)

(assert (=> bm!329839 m!5649411))

(declare-fun m!5649413 () Bool)

(assert (=> b!4717764 m!5649413))

(declare-fun m!5649415 () Bool)

(assert (=> b!4717764 m!5649415))

(declare-fun m!5649417 () Bool)

(assert (=> b!4717764 m!5649417))

(declare-fun m!5649419 () Bool)

(assert (=> b!4717764 m!5649419))

(declare-fun m!5649421 () Bool)

(assert (=> b!4717764 m!5649421))

(assert (=> b!4717764 m!5649415))

(assert (=> b!4717764 m!5649409))

(declare-fun m!5649423 () Bool)

(assert (=> b!4717764 m!5649423))

(assert (=> b!4717764 m!5649421))

(declare-fun m!5649425 () Bool)

(assert (=> b!4717764 m!5649425))

(declare-fun m!5649427 () Bool)

(assert (=> b!4717764 m!5649427))

(declare-fun m!5649429 () Bool)

(assert (=> b!4717764 m!5649429))

(assert (=> b!4717764 m!5649409))

(assert (=> bm!329837 m!5649411))

(declare-fun m!5649431 () Bool)

(assert (=> b!4717763 m!5649431))

(declare-fun m!5649433 () Bool)

(assert (=> b!4717762 m!5649433))

(assert (=> b!4717512 d!1501340))

(declare-fun bs!1105827 () Bool)

(declare-fun d!1501346 () Bool)

(assert (= bs!1105827 (and d!1501346 start!479912)))

(declare-fun lambda!214466 () Int)

(assert (=> bs!1105827 (= lambda!214466 lambda!214343)))

(declare-fun bs!1105828 () Bool)

(assert (= bs!1105828 (and d!1501346 d!1501252)))

(assert (=> bs!1105828 (= lambda!214466 lambda!214352)))

(declare-fun bs!1105829 () Bool)

(assert (= bs!1105829 (and d!1501346 d!1501306)))

(assert (=> bs!1105829 (= lambda!214466 lambda!214445)))

(assert (=> d!1501346 (contains!16131 (extractMap!2022 (toList!5882 lt!1883171)) key!4653)))

(declare-fun lt!1883603 () Unit!128993)

(declare-fun choose!33257 (ListLongMap!4411 K!14140 Hashable!6365) Unit!128993)

(assert (=> d!1501346 (= lt!1883603 (choose!33257 lt!1883171 key!4653 hashF!1323))))

(assert (=> d!1501346 (forall!11549 (toList!5882 lt!1883171) lambda!214466)))

(assert (=> d!1501346 (= (lemmaListContainsThenExtractedMapContains!542 lt!1883171 key!4653 hashF!1323) lt!1883603)))

(declare-fun bs!1105830 () Bool)

(assert (= bs!1105830 d!1501346))

(declare-fun m!5649451 () Bool)

(assert (=> bs!1105830 m!5649451))

(assert (=> bs!1105830 m!5649451))

(declare-fun m!5649453 () Bool)

(assert (=> bs!1105830 m!5649453))

(declare-fun m!5649455 () Bool)

(assert (=> bs!1105830 m!5649455))

(declare-fun m!5649457 () Bool)

(assert (=> bs!1105830 m!5649457))

(assert (=> b!4717512 d!1501346))

(declare-fun d!1501354 () Bool)

(assert (=> d!1501354 (= (eq!1123 (addToMapMapFromBucket!1426 (Cons!52779 lt!1883185 lt!1883176) lt!1883194) (+!2256 (addToMapMapFromBucket!1426 lt!1883176 lt!1883194) lt!1883185)) (= (content!9377 (toList!5881 (addToMapMapFromBucket!1426 (Cons!52779 lt!1883185 lt!1883176) lt!1883194))) (content!9377 (toList!5881 (+!2256 (addToMapMapFromBucket!1426 lt!1883176 lt!1883194) lt!1883185)))))))

(declare-fun bs!1105831 () Bool)

(assert (= bs!1105831 d!1501354))

(declare-fun m!5649459 () Bool)

(assert (=> bs!1105831 m!5649459))

(declare-fun m!5649461 () Bool)

(assert (=> bs!1105831 m!5649461))

(assert (=> b!4717512 d!1501354))

(declare-fun d!1501356 () Bool)

(declare-fun e!2942347 () Bool)

(assert (=> d!1501356 e!2942347))

(declare-fun res!1995288 () Bool)

(assert (=> d!1501356 (=> (not res!1995288) (not e!2942347))))

(declare-fun lt!1883605 () ListMap!5245)

(assert (=> d!1501356 (= res!1995288 (contains!16131 lt!1883605 (_1!30483 lt!1883185)))))

(declare-fun lt!1883604 () List!52903)

(assert (=> d!1501356 (= lt!1883605 (ListMap!5246 lt!1883604))))

(declare-fun lt!1883607 () Unit!128993)

(declare-fun lt!1883606 () Unit!128993)

(assert (=> d!1501356 (= lt!1883607 lt!1883606)))

(assert (=> d!1501356 (= (getValueByKey!1938 lt!1883604 (_1!30483 lt!1883185)) (Some!12341 (_2!30483 lt!1883185)))))

(assert (=> d!1501356 (= lt!1883606 (lemmaContainsTupThenGetReturnValue!1078 lt!1883604 (_1!30483 lt!1883185) (_2!30483 lt!1883185)))))

(assert (=> d!1501356 (= lt!1883604 (insertNoDuplicatedKeys!586 (toList!5881 (addToMapMapFromBucket!1426 lt!1883176 lt!1883194)) (_1!30483 lt!1883185) (_2!30483 lt!1883185)))))

(assert (=> d!1501356 (= (+!2256 (addToMapMapFromBucket!1426 lt!1883176 lt!1883194) lt!1883185) lt!1883605)))

(declare-fun b!4717779 () Bool)

(declare-fun res!1995287 () Bool)

(assert (=> b!4717779 (=> (not res!1995287) (not e!2942347))))

(assert (=> b!4717779 (= res!1995287 (= (getValueByKey!1938 (toList!5881 lt!1883605) (_1!30483 lt!1883185)) (Some!12341 (_2!30483 lt!1883185))))))

(declare-fun b!4717780 () Bool)

(assert (=> b!4717780 (= e!2942347 (contains!16137 (toList!5881 lt!1883605) lt!1883185))))

(assert (= (and d!1501356 res!1995288) b!4717779))

(assert (= (and b!4717779 res!1995287) b!4717780))

(declare-fun m!5649463 () Bool)

(assert (=> d!1501356 m!5649463))

(declare-fun m!5649465 () Bool)

(assert (=> d!1501356 m!5649465))

(declare-fun m!5649467 () Bool)

(assert (=> d!1501356 m!5649467))

(declare-fun m!5649469 () Bool)

(assert (=> d!1501356 m!5649469))

(declare-fun m!5649471 () Bool)

(assert (=> b!4717779 m!5649471))

(declare-fun m!5649473 () Bool)

(assert (=> b!4717780 m!5649473))

(assert (=> b!4717512 d!1501356))

(declare-fun d!1501358 () Bool)

(assert (=> d!1501358 (= (eq!1123 lt!1883192 (+!2256 lt!1883182 (h!59110 oldBucket!34))) (= (content!9377 (toList!5881 lt!1883192)) (content!9377 (toList!5881 (+!2256 lt!1883182 (h!59110 oldBucket!34))))))))

(declare-fun bs!1105832 () Bool)

(assert (= bs!1105832 d!1501358))

(declare-fun m!5649475 () Bool)

(assert (=> bs!1105832 m!5649475))

(declare-fun m!5649477 () Bool)

(assert (=> bs!1105832 m!5649477))

(assert (=> b!4717512 d!1501358))

(declare-fun bs!1105833 () Bool)

(declare-fun d!1501360 () Bool)

(assert (= bs!1105833 (and d!1501360 start!479912)))

(declare-fun lambda!214467 () Int)

(assert (=> bs!1105833 (= lambda!214467 lambda!214343)))

(declare-fun bs!1105834 () Bool)

(assert (= bs!1105834 (and d!1501360 d!1501252)))

(assert (=> bs!1105834 (= lambda!214467 lambda!214352)))

(declare-fun bs!1105835 () Bool)

(assert (= bs!1105835 (and d!1501360 d!1501306)))

(assert (=> bs!1105835 (= lambda!214467 lambda!214445)))

(declare-fun bs!1105836 () Bool)

(assert (= bs!1105836 (and d!1501360 d!1501346)))

(assert (=> bs!1105836 (= lambda!214467 lambda!214466)))

(declare-fun lt!1883608 () ListMap!5245)

(assert (=> d!1501360 (invariantList!1496 (toList!5881 lt!1883608))))

(declare-fun e!2942348 () ListMap!5245)

(assert (=> d!1501360 (= lt!1883608 e!2942348)))

(declare-fun c!805725 () Bool)

(assert (=> d!1501360 (= c!805725 ((_ is Cons!52780) (Cons!52780 lt!1883198 (t!360158 (toList!5882 lm!2023)))))))

(assert (=> d!1501360 (forall!11549 (Cons!52780 lt!1883198 (t!360158 (toList!5882 lm!2023))) lambda!214467)))

(assert (=> d!1501360 (= (extractMap!2022 (Cons!52780 lt!1883198 (t!360158 (toList!5882 lm!2023)))) lt!1883608)))

(declare-fun b!4717781 () Bool)

(assert (=> b!4717781 (= e!2942348 (addToMapMapFromBucket!1426 (_2!30484 (h!59111 (Cons!52780 lt!1883198 (t!360158 (toList!5882 lm!2023))))) (extractMap!2022 (t!360158 (Cons!52780 lt!1883198 (t!360158 (toList!5882 lm!2023)))))))))

(declare-fun b!4717782 () Bool)

(assert (=> b!4717782 (= e!2942348 (ListMap!5246 Nil!52779))))

(assert (= (and d!1501360 c!805725) b!4717781))

(assert (= (and d!1501360 (not c!805725)) b!4717782))

(declare-fun m!5649479 () Bool)

(assert (=> d!1501360 m!5649479))

(declare-fun m!5649481 () Bool)

(assert (=> d!1501360 m!5649481))

(declare-fun m!5649483 () Bool)

(assert (=> b!4717781 m!5649483))

(assert (=> b!4717781 m!5649483))

(declare-fun m!5649485 () Bool)

(assert (=> b!4717781 m!5649485))

(assert (=> b!4717512 d!1501360))

(declare-fun d!1501362 () Bool)

(assert (=> d!1501362 (eq!1123 (addToMapMapFromBucket!1426 (Cons!52779 lt!1883185 lt!1883176) lt!1883194) (+!2256 (addToMapMapFromBucket!1426 lt!1883176 lt!1883194) lt!1883185))))

(declare-fun lt!1883609 () Unit!128993)

(assert (=> d!1501362 (= lt!1883609 (choose!33255 lt!1883185 lt!1883176 lt!1883194))))

(assert (=> d!1501362 (noDuplicateKeys!1996 lt!1883176)))

(assert (=> d!1501362 (= (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!372 lt!1883185 lt!1883176 lt!1883194) lt!1883609)))

(declare-fun bs!1105837 () Bool)

(assert (= bs!1105837 d!1501362))

(assert (=> bs!1105837 m!5648797))

(assert (=> bs!1105837 m!5649319))

(assert (=> bs!1105837 m!5648789))

(assert (=> bs!1105837 m!5648791))

(assert (=> bs!1105837 m!5648789))

(assert (=> bs!1105837 m!5648797))

(assert (=> bs!1105837 m!5648791))

(assert (=> bs!1105837 m!5648799))

(declare-fun m!5649487 () Bool)

(assert (=> bs!1105837 m!5649487))

(assert (=> b!4717512 d!1501362))

(declare-fun d!1501364 () Bool)

(assert (=> d!1501364 (= (eq!1123 lt!1883165 lt!1883163) (= (content!9377 (toList!5881 lt!1883165)) (content!9377 (toList!5881 lt!1883163))))))

(declare-fun bs!1105838 () Bool)

(assert (= bs!1105838 d!1501364))

(declare-fun m!5649489 () Bool)

(assert (=> bs!1105838 m!5649489))

(declare-fun m!5649491 () Bool)

(assert (=> bs!1105838 m!5649491))

(assert (=> b!4717533 d!1501364))

(declare-fun bs!1105839 () Bool)

(declare-fun d!1501366 () Bool)

(assert (= bs!1105839 (and d!1501366 start!479912)))

(declare-fun lambda!214468 () Int)

(assert (=> bs!1105839 (= lambda!214468 lambda!214343)))

(declare-fun bs!1105840 () Bool)

(assert (= bs!1105840 (and d!1501366 d!1501360)))

(assert (=> bs!1105840 (= lambda!214468 lambda!214467)))

(declare-fun bs!1105841 () Bool)

(assert (= bs!1105841 (and d!1501366 d!1501346)))

(assert (=> bs!1105841 (= lambda!214468 lambda!214466)))

(declare-fun bs!1105842 () Bool)

(assert (= bs!1105842 (and d!1501366 d!1501306)))

(assert (=> bs!1105842 (= lambda!214468 lambda!214445)))

(declare-fun bs!1105843 () Bool)

(assert (= bs!1105843 (and d!1501366 d!1501252)))

(assert (=> bs!1105843 (= lambda!214468 lambda!214352)))

(declare-fun lt!1883610 () ListMap!5245)

(assert (=> d!1501366 (invariantList!1496 (toList!5881 lt!1883610))))

(declare-fun e!2942349 () ListMap!5245)

(assert (=> d!1501366 (= lt!1883610 e!2942349)))

(declare-fun c!805726 () Bool)

(assert (=> d!1501366 (= c!805726 ((_ is Cons!52780) (Cons!52780 (tuple2!54381 hash!405 newBucket!218) (t!360158 (toList!5882 lm!2023)))))))

(assert (=> d!1501366 (forall!11549 (Cons!52780 (tuple2!54381 hash!405 newBucket!218) (t!360158 (toList!5882 lm!2023))) lambda!214468)))

(assert (=> d!1501366 (= (extractMap!2022 (Cons!52780 (tuple2!54381 hash!405 newBucket!218) (t!360158 (toList!5882 lm!2023)))) lt!1883610)))

(declare-fun b!4717783 () Bool)

(assert (=> b!4717783 (= e!2942349 (addToMapMapFromBucket!1426 (_2!30484 (h!59111 (Cons!52780 (tuple2!54381 hash!405 newBucket!218) (t!360158 (toList!5882 lm!2023))))) (extractMap!2022 (t!360158 (Cons!52780 (tuple2!54381 hash!405 newBucket!218) (t!360158 (toList!5882 lm!2023)))))))))

(declare-fun b!4717784 () Bool)

(assert (=> b!4717784 (= e!2942349 (ListMap!5246 Nil!52779))))

(assert (= (and d!1501366 c!805726) b!4717783))

(assert (= (and d!1501366 (not c!805726)) b!4717784))

(declare-fun m!5649493 () Bool)

(assert (=> d!1501366 m!5649493))

(declare-fun m!5649495 () Bool)

(assert (=> d!1501366 m!5649495))

(declare-fun m!5649497 () Bool)

(assert (=> b!4717783 m!5649497))

(assert (=> b!4717783 m!5649497))

(declare-fun m!5649499 () Bool)

(assert (=> b!4717783 m!5649499))

(assert (=> b!4717533 d!1501366))

(declare-fun d!1501368 () Bool)

(assert (=> d!1501368 (= (head!10222 (toList!5882 lm!2023)) (h!59111 (toList!5882 lm!2023)))))

(assert (=> b!4717530 d!1501368))

(declare-fun d!1501370 () Bool)

(declare-fun hash!4353 (Hashable!6365 K!14140) (_ BitVec 64))

(assert (=> d!1501370 (= (hash!4349 hashF!1323 key!4653) (hash!4353 hashF!1323 key!4653))))

(declare-fun bs!1105844 () Bool)

(assert (= bs!1105844 d!1501370))

(declare-fun m!5649501 () Bool)

(assert (=> bs!1105844 m!5649501))

(assert (=> b!4717529 d!1501370))

(declare-fun d!1501372 () Bool)

(declare-fun res!1995289 () Bool)

(declare-fun e!2942350 () Bool)

(assert (=> d!1501372 (=> res!1995289 e!2942350)))

(assert (=> d!1501372 (= res!1995289 (not ((_ is Cons!52779) oldBucket!34)))))

(assert (=> d!1501372 (= (noDuplicateKeys!1996 oldBucket!34) e!2942350)))

(declare-fun b!4717785 () Bool)

(declare-fun e!2942351 () Bool)

(assert (=> b!4717785 (= e!2942350 e!2942351)))

(declare-fun res!1995290 () Bool)

(assert (=> b!4717785 (=> (not res!1995290) (not e!2942351))))

(assert (=> b!4717785 (= res!1995290 (not (containsKey!3337 (t!360157 oldBucket!34) (_1!30483 (h!59110 oldBucket!34)))))))

(declare-fun b!4717786 () Bool)

(assert (=> b!4717786 (= e!2942351 (noDuplicateKeys!1996 (t!360157 oldBucket!34)))))

(assert (= (and d!1501372 (not res!1995289)) b!4717785))

(assert (= (and b!4717785 res!1995290) b!4717786))

(declare-fun m!5649503 () Bool)

(assert (=> b!4717785 m!5649503))

(declare-fun m!5649505 () Bool)

(assert (=> b!4717786 m!5649505))

(assert (=> b!4717510 d!1501372))

(declare-fun d!1501374 () Bool)

(assert (=> d!1501374 (= (eq!1123 lt!1883192 (+!2256 lt!1883182 lt!1883169)) (= (content!9377 (toList!5881 lt!1883192)) (content!9377 (toList!5881 (+!2256 lt!1883182 lt!1883169)))))))

(declare-fun bs!1105845 () Bool)

(assert (= bs!1105845 d!1501374))

(assert (=> bs!1105845 m!5649475))

(declare-fun m!5649507 () Bool)

(assert (=> bs!1105845 m!5649507))

(assert (=> b!4717516 d!1501374))

(declare-fun d!1501376 () Bool)

(declare-fun e!2942352 () Bool)

(assert (=> d!1501376 e!2942352))

(declare-fun res!1995292 () Bool)

(assert (=> d!1501376 (=> (not res!1995292) (not e!2942352))))

(declare-fun lt!1883612 () ListMap!5245)

(assert (=> d!1501376 (= res!1995292 (contains!16131 lt!1883612 (_1!30483 lt!1883169)))))

(declare-fun lt!1883611 () List!52903)

(assert (=> d!1501376 (= lt!1883612 (ListMap!5246 lt!1883611))))

(declare-fun lt!1883614 () Unit!128993)

(declare-fun lt!1883613 () Unit!128993)

(assert (=> d!1501376 (= lt!1883614 lt!1883613)))

(assert (=> d!1501376 (= (getValueByKey!1938 lt!1883611 (_1!30483 lt!1883169)) (Some!12341 (_2!30483 lt!1883169)))))

(assert (=> d!1501376 (= lt!1883613 (lemmaContainsTupThenGetReturnValue!1078 lt!1883611 (_1!30483 lt!1883169) (_2!30483 lt!1883169)))))

(assert (=> d!1501376 (= lt!1883611 (insertNoDuplicatedKeys!586 (toList!5881 lt!1883182) (_1!30483 lt!1883169) (_2!30483 lt!1883169)))))

(assert (=> d!1501376 (= (+!2256 lt!1883182 lt!1883169) lt!1883612)))

(declare-fun b!4717787 () Bool)

(declare-fun res!1995291 () Bool)

(assert (=> b!4717787 (=> (not res!1995291) (not e!2942352))))

(assert (=> b!4717787 (= res!1995291 (= (getValueByKey!1938 (toList!5881 lt!1883612) (_1!30483 lt!1883169)) (Some!12341 (_2!30483 lt!1883169))))))

(declare-fun b!4717788 () Bool)

(assert (=> b!4717788 (= e!2942352 (contains!16137 (toList!5881 lt!1883612) lt!1883169))))

(assert (= (and d!1501376 res!1995292) b!4717787))

(assert (= (and b!4717787 res!1995291) b!4717788))

(declare-fun m!5649509 () Bool)

(assert (=> d!1501376 m!5649509))

(declare-fun m!5649511 () Bool)

(assert (=> d!1501376 m!5649511))

(declare-fun m!5649513 () Bool)

(assert (=> d!1501376 m!5649513))

(declare-fun m!5649515 () Bool)

(assert (=> d!1501376 m!5649515))

(declare-fun m!5649517 () Bool)

(assert (=> b!4717787 m!5649517))

(declare-fun m!5649519 () Bool)

(assert (=> b!4717788 m!5649519))

(assert (=> b!4717516 d!1501376))

(declare-fun d!1501378 () Bool)

(declare-fun e!2942355 () Bool)

(assert (=> d!1501378 e!2942355))

(declare-fun res!1995295 () Bool)

(assert (=> d!1501378 (=> (not res!1995295) (not e!2942355))))

(declare-fun lt!1883617 () ListMap!5245)

(assert (=> d!1501378 (= res!1995295 (not (contains!16131 lt!1883617 key!4653)))))

(declare-fun removePresrvNoDuplicatedKeys!399 (List!52903 K!14140) List!52903)

(assert (=> d!1501378 (= lt!1883617 (ListMap!5246 (removePresrvNoDuplicatedKeys!399 (toList!5881 lt!1883180) key!4653)))))

(assert (=> d!1501378 (= (-!752 lt!1883180 key!4653) lt!1883617)))

(declare-fun b!4717791 () Bool)

(declare-fun content!9379 (List!52906) (InoxSet K!14140))

(assert (=> b!4717791 (= e!2942355 (= ((_ map and) (content!9379 (keys!18941 lt!1883180)) ((_ map not) (store ((as const (Array K!14140 Bool)) false) key!4653 true))) (content!9379 (keys!18941 lt!1883617))))))

(assert (= (and d!1501378 res!1995295) b!4717791))

(declare-fun m!5649521 () Bool)

(assert (=> d!1501378 m!5649521))

(declare-fun m!5649523 () Bool)

(assert (=> d!1501378 m!5649523))

(declare-fun m!5649525 () Bool)

(assert (=> b!4717791 m!5649525))

(declare-fun m!5649527 () Bool)

(assert (=> b!4717791 m!5649527))

(declare-fun m!5649529 () Bool)

(assert (=> b!4717791 m!5649529))

(declare-fun m!5649531 () Bool)

(assert (=> b!4717791 m!5649531))

(assert (=> b!4717791 m!5649529))

(assert (=> b!4717791 m!5649525))

(declare-fun m!5649533 () Bool)

(assert (=> b!4717791 m!5649533))

(assert (=> b!4717537 d!1501378))

(declare-fun d!1501380 () Bool)

(declare-fun e!2942356 () Bool)

(assert (=> d!1501380 e!2942356))

(declare-fun res!1995297 () Bool)

(assert (=> d!1501380 (=> (not res!1995297) (not e!2942356))))

(declare-fun lt!1883619 () ListMap!5245)

(assert (=> d!1501380 (= res!1995297 (contains!16131 lt!1883619 (_1!30483 (h!59110 oldBucket!34))))))

(declare-fun lt!1883618 () List!52903)

(assert (=> d!1501380 (= lt!1883619 (ListMap!5246 lt!1883618))))

(declare-fun lt!1883621 () Unit!128993)

(declare-fun lt!1883620 () Unit!128993)

(assert (=> d!1501380 (= lt!1883621 lt!1883620)))

(assert (=> d!1501380 (= (getValueByKey!1938 lt!1883618 (_1!30483 (h!59110 oldBucket!34))) (Some!12341 (_2!30483 (h!59110 oldBucket!34))))))

(assert (=> d!1501380 (= lt!1883620 (lemmaContainsTupThenGetReturnValue!1078 lt!1883618 (_1!30483 (h!59110 oldBucket!34)) (_2!30483 (h!59110 oldBucket!34))))))

(assert (=> d!1501380 (= lt!1883618 (insertNoDuplicatedKeys!586 (toList!5881 lt!1883168) (_1!30483 (h!59110 oldBucket!34)) (_2!30483 (h!59110 oldBucket!34))))))

(assert (=> d!1501380 (= (+!2256 lt!1883168 (h!59110 oldBucket!34)) lt!1883619)))

(declare-fun b!4717792 () Bool)

(declare-fun res!1995296 () Bool)

(assert (=> b!4717792 (=> (not res!1995296) (not e!2942356))))

(assert (=> b!4717792 (= res!1995296 (= (getValueByKey!1938 (toList!5881 lt!1883619) (_1!30483 (h!59110 oldBucket!34))) (Some!12341 (_2!30483 (h!59110 oldBucket!34)))))))

(declare-fun b!4717793 () Bool)

(assert (=> b!4717793 (= e!2942356 (contains!16137 (toList!5881 lt!1883619) (h!59110 oldBucket!34)))))

(assert (= (and d!1501380 res!1995297) b!4717792))

(assert (= (and b!4717792 res!1995296) b!4717793))

(declare-fun m!5649535 () Bool)

(assert (=> d!1501380 m!5649535))

(declare-fun m!5649537 () Bool)

(assert (=> d!1501380 m!5649537))

(declare-fun m!5649539 () Bool)

(assert (=> d!1501380 m!5649539))

(declare-fun m!5649541 () Bool)

(assert (=> d!1501380 m!5649541))

(declare-fun m!5649543 () Bool)

(assert (=> b!4717792 m!5649543))

(declare-fun m!5649545 () Bool)

(assert (=> b!4717793 m!5649545))

(assert (=> b!4717537 d!1501380))

(declare-fun d!1501382 () Bool)

(assert (=> d!1501382 (= (-!752 (+!2256 lt!1883168 (tuple2!54379 (_1!30483 (h!59110 oldBucket!34)) (_2!30483 (h!59110 oldBucket!34)))) key!4653) (+!2256 (-!752 lt!1883168 key!4653) (tuple2!54379 (_1!30483 (h!59110 oldBucket!34)) (_2!30483 (h!59110 oldBucket!34)))))))

(declare-fun lt!1883624 () Unit!128993)

(declare-fun choose!33258 (ListMap!5245 K!14140 V!14386 K!14140) Unit!128993)

(assert (=> d!1501382 (= lt!1883624 (choose!33258 lt!1883168 (_1!30483 (h!59110 oldBucket!34)) (_2!30483 (h!59110 oldBucket!34)) key!4653))))

(assert (=> d!1501382 (not (= (_1!30483 (h!59110 oldBucket!34)) key!4653))))

(assert (=> d!1501382 (= (addRemoveCommutativeForDiffKeys!143 lt!1883168 (_1!30483 (h!59110 oldBucket!34)) (_2!30483 (h!59110 oldBucket!34)) key!4653) lt!1883624)))

(declare-fun bs!1105846 () Bool)

(assert (= bs!1105846 d!1501382))

(assert (=> bs!1105846 m!5648751))

(declare-fun m!5649547 () Bool)

(assert (=> bs!1105846 m!5649547))

(assert (=> bs!1105846 m!5648751))

(declare-fun m!5649549 () Bool)

(assert (=> bs!1105846 m!5649549))

(declare-fun m!5649551 () Bool)

(assert (=> bs!1105846 m!5649551))

(declare-fun m!5649553 () Bool)

(assert (=> bs!1105846 m!5649553))

(assert (=> bs!1105846 m!5649551))

(assert (=> b!4717537 d!1501382))

(declare-fun d!1501384 () Bool)

(declare-fun e!2942357 () Bool)

(assert (=> d!1501384 e!2942357))

(declare-fun res!1995299 () Bool)

(assert (=> d!1501384 (=> (not res!1995299) (not e!2942357))))

(declare-fun lt!1883626 () ListMap!5245)

(assert (=> d!1501384 (= res!1995299 (contains!16131 lt!1883626 (_1!30483 (h!59110 oldBucket!34))))))

(declare-fun lt!1883625 () List!52903)

(assert (=> d!1501384 (= lt!1883626 (ListMap!5246 lt!1883625))))

(declare-fun lt!1883628 () Unit!128993)

(declare-fun lt!1883627 () Unit!128993)

(assert (=> d!1501384 (= lt!1883628 lt!1883627)))

(assert (=> d!1501384 (= (getValueByKey!1938 lt!1883625 (_1!30483 (h!59110 oldBucket!34))) (Some!12341 (_2!30483 (h!59110 oldBucket!34))))))

(assert (=> d!1501384 (= lt!1883627 (lemmaContainsTupThenGetReturnValue!1078 lt!1883625 (_1!30483 (h!59110 oldBucket!34)) (_2!30483 (h!59110 oldBucket!34))))))

(assert (=> d!1501384 (= lt!1883625 (insertNoDuplicatedKeys!586 (toList!5881 lt!1883184) (_1!30483 (h!59110 oldBucket!34)) (_2!30483 (h!59110 oldBucket!34))))))

(assert (=> d!1501384 (= (+!2256 lt!1883184 (h!59110 oldBucket!34)) lt!1883626)))

(declare-fun b!4717794 () Bool)

(declare-fun res!1995298 () Bool)

(assert (=> b!4717794 (=> (not res!1995298) (not e!2942357))))

(assert (=> b!4717794 (= res!1995298 (= (getValueByKey!1938 (toList!5881 lt!1883626) (_1!30483 (h!59110 oldBucket!34))) (Some!12341 (_2!30483 (h!59110 oldBucket!34)))))))

(declare-fun b!4717795 () Bool)

(assert (=> b!4717795 (= e!2942357 (contains!16137 (toList!5881 lt!1883626) (h!59110 oldBucket!34)))))

(assert (= (and d!1501384 res!1995299) b!4717794))

(assert (= (and b!4717794 res!1995298) b!4717795))

(declare-fun m!5649555 () Bool)

(assert (=> d!1501384 m!5649555))

(declare-fun m!5649557 () Bool)

(assert (=> d!1501384 m!5649557))

(declare-fun m!5649559 () Bool)

(assert (=> d!1501384 m!5649559))

(declare-fun m!5649561 () Bool)

(assert (=> d!1501384 m!5649561))

(declare-fun m!5649563 () Bool)

(assert (=> b!4717794 m!5649563))

(declare-fun m!5649565 () Bool)

(assert (=> b!4717795 m!5649565))

(assert (=> b!4717537 d!1501384))

(declare-fun d!1501386 () Bool)

(declare-fun e!2942358 () Bool)

(assert (=> d!1501386 e!2942358))

(declare-fun res!1995300 () Bool)

(assert (=> d!1501386 (=> (not res!1995300) (not e!2942358))))

(declare-fun lt!1883629 () ListMap!5245)

(assert (=> d!1501386 (= res!1995300 (not (contains!16131 lt!1883629 key!4653)))))

(assert (=> d!1501386 (= lt!1883629 (ListMap!5246 (removePresrvNoDuplicatedKeys!399 (toList!5881 (+!2256 lt!1883168 (h!59110 oldBucket!34))) key!4653)))))

(assert (=> d!1501386 (= (-!752 (+!2256 lt!1883168 (h!59110 oldBucket!34)) key!4653) lt!1883629)))

(declare-fun b!4717796 () Bool)

(assert (=> b!4717796 (= e!2942358 (= ((_ map and) (content!9379 (keys!18941 (+!2256 lt!1883168 (h!59110 oldBucket!34)))) ((_ map not) (store ((as const (Array K!14140 Bool)) false) key!4653 true))) (content!9379 (keys!18941 lt!1883629))))))

(assert (= (and d!1501386 res!1995300) b!4717796))

(declare-fun m!5649567 () Bool)

(assert (=> d!1501386 m!5649567))

(declare-fun m!5649569 () Bool)

(assert (=> d!1501386 m!5649569))

(declare-fun m!5649571 () Bool)

(assert (=> b!4717796 m!5649571))

(assert (=> b!4717796 m!5649527))

(declare-fun m!5649573 () Bool)

(assert (=> b!4717796 m!5649573))

(declare-fun m!5649575 () Bool)

(assert (=> b!4717796 m!5649575))

(assert (=> b!4717796 m!5648765))

(assert (=> b!4717796 m!5649573))

(assert (=> b!4717796 m!5649571))

(declare-fun m!5649577 () Bool)

(assert (=> b!4717796 m!5649577))

(assert (=> b!4717537 d!1501386))

(declare-fun b!4717798 () Bool)

(declare-fun e!2942359 () List!52903)

(declare-fun e!2942360 () List!52903)

(assert (=> b!4717798 (= e!2942359 e!2942360)))

(declare-fun c!805728 () Bool)

(assert (=> b!4717798 (= c!805728 ((_ is Cons!52779) lt!1883176))))

(declare-fun d!1501388 () Bool)

(declare-fun lt!1883630 () List!52903)

(assert (=> d!1501388 (not (containsKey!3337 lt!1883630 key!4653))))

(assert (=> d!1501388 (= lt!1883630 e!2942359)))

(declare-fun c!805727 () Bool)

(assert (=> d!1501388 (= c!805727 (and ((_ is Cons!52779) lt!1883176) (= (_1!30483 (h!59110 lt!1883176)) key!4653)))))

(assert (=> d!1501388 (noDuplicateKeys!1996 lt!1883176)))

(assert (=> d!1501388 (= (removePairForKey!1591 lt!1883176 key!4653) lt!1883630)))

(declare-fun b!4717799 () Bool)

(assert (=> b!4717799 (= e!2942360 (Cons!52779 (h!59110 lt!1883176) (removePairForKey!1591 (t!360157 lt!1883176) key!4653)))))

(declare-fun b!4717800 () Bool)

(assert (=> b!4717800 (= e!2942360 Nil!52779)))

(declare-fun b!4717797 () Bool)

(assert (=> b!4717797 (= e!2942359 (t!360157 lt!1883176))))

(assert (= (and d!1501388 c!805727) b!4717797))

(assert (= (and d!1501388 (not c!805727)) b!4717798))

(assert (= (and b!4717798 c!805728) b!4717799))

(assert (= (and b!4717798 (not c!805728)) b!4717800))

(declare-fun m!5649579 () Bool)

(assert (=> d!1501388 m!5649579))

(assert (=> d!1501388 m!5649319))

(declare-fun m!5649581 () Bool)

(assert (=> b!4717799 m!5649581))

(assert (=> b!4717518 d!1501388))

(declare-fun d!1501390 () Bool)

(assert (=> d!1501390 (= (tail!8963 newBucket!218) (t!360157 newBucket!218))))

(assert (=> b!4717518 d!1501390))

(declare-fun d!1501392 () Bool)

(assert (=> d!1501392 (= (tail!8963 oldBucket!34) (t!360157 oldBucket!34))))

(assert (=> b!4717518 d!1501392))

(declare-fun bs!1105847 () Bool)

(declare-fun d!1501394 () Bool)

(assert (= bs!1105847 (and d!1501394 start!479912)))

(declare-fun lambda!214471 () Int)

(assert (=> bs!1105847 (not (= lambda!214471 lambda!214343))))

(declare-fun bs!1105848 () Bool)

(assert (= bs!1105848 (and d!1501394 d!1501366)))

(assert (=> bs!1105848 (not (= lambda!214471 lambda!214468))))

(declare-fun bs!1105849 () Bool)

(assert (= bs!1105849 (and d!1501394 d!1501360)))

(assert (=> bs!1105849 (not (= lambda!214471 lambda!214467))))

(declare-fun bs!1105850 () Bool)

(assert (= bs!1105850 (and d!1501394 d!1501346)))

(assert (=> bs!1105850 (not (= lambda!214471 lambda!214466))))

(declare-fun bs!1105851 () Bool)

(assert (= bs!1105851 (and d!1501394 d!1501306)))

(assert (=> bs!1105851 (not (= lambda!214471 lambda!214445))))

(declare-fun bs!1105852 () Bool)

(assert (= bs!1105852 (and d!1501394 d!1501252)))

(assert (=> bs!1105852 (not (= lambda!214471 lambda!214352))))

(assert (=> d!1501394 true))

(assert (=> d!1501394 (= (allKeysSameHashInMap!1910 lm!2023 hashF!1323) (forall!11549 (toList!5882 lm!2023) lambda!214471))))

(declare-fun bs!1105853 () Bool)

(assert (= bs!1105853 d!1501394))

(declare-fun m!5649583 () Bool)

(assert (=> bs!1105853 m!5649583))

(assert (=> b!4717517 d!1501394))

(declare-fun d!1501396 () Bool)

(assert (=> d!1501396 (= (eq!1123 lt!1883189 lt!1883179) (= (content!9377 (toList!5881 lt!1883189)) (content!9377 (toList!5881 lt!1883179))))))

(declare-fun bs!1105854 () Bool)

(assert (= bs!1105854 d!1501396))

(declare-fun m!5649585 () Bool)

(assert (=> bs!1105854 m!5649585))

(declare-fun m!5649587 () Bool)

(assert (=> bs!1105854 m!5649587))

(assert (=> b!4717514 d!1501396))

(declare-fun b!4717804 () Bool)

(declare-fun e!2942361 () List!52903)

(declare-fun e!2942362 () List!52903)

(assert (=> b!4717804 (= e!2942361 e!2942362)))

(declare-fun c!805730 () Bool)

(assert (=> b!4717804 (= c!805730 ((_ is Cons!52779) (t!360157 oldBucket!34)))))

(declare-fun d!1501398 () Bool)

(declare-fun lt!1883631 () List!52903)

(assert (=> d!1501398 (not (containsKey!3337 lt!1883631 key!4653))))

(assert (=> d!1501398 (= lt!1883631 e!2942361)))

(declare-fun c!805729 () Bool)

(assert (=> d!1501398 (= c!805729 (and ((_ is Cons!52779) (t!360157 oldBucket!34)) (= (_1!30483 (h!59110 (t!360157 oldBucket!34))) key!4653)))))

(assert (=> d!1501398 (noDuplicateKeys!1996 (t!360157 oldBucket!34))))

(assert (=> d!1501398 (= (removePairForKey!1591 (t!360157 oldBucket!34) key!4653) lt!1883631)))

(declare-fun b!4717805 () Bool)

(assert (=> b!4717805 (= e!2942362 (Cons!52779 (h!59110 (t!360157 oldBucket!34)) (removePairForKey!1591 (t!360157 (t!360157 oldBucket!34)) key!4653)))))

(declare-fun b!4717806 () Bool)

(assert (=> b!4717806 (= e!2942362 Nil!52779)))

(declare-fun b!4717803 () Bool)

(assert (=> b!4717803 (= e!2942361 (t!360157 (t!360157 oldBucket!34)))))

(assert (= (and d!1501398 c!805729) b!4717803))

(assert (= (and d!1501398 (not c!805729)) b!4717804))

(assert (= (and b!4717804 c!805730) b!4717805))

(assert (= (and b!4717804 (not c!805730)) b!4717806))

(declare-fun m!5649589 () Bool)

(assert (=> d!1501398 m!5649589))

(assert (=> d!1501398 m!5649505))

(declare-fun m!5649591 () Bool)

(assert (=> b!4717805 m!5649591))

(assert (=> b!4717535 d!1501398))

(declare-fun d!1501400 () Bool)

(declare-fun e!2942363 () Bool)

(assert (=> d!1501400 e!2942363))

(declare-fun res!1995301 () Bool)

(assert (=> d!1501400 (=> (not res!1995301) (not e!2942363))))

(declare-fun lt!1883632 () ListMap!5245)

(assert (=> d!1501400 (= res!1995301 (not (contains!16131 lt!1883632 key!4653)))))

(assert (=> d!1501400 (= lt!1883632 (ListMap!5246 (removePresrvNoDuplicatedKeys!399 (toList!5881 (extractMap!2022 (Cons!52780 lt!1883172 lt!1883166))) key!4653)))))

(assert (=> d!1501400 (= (-!752 (extractMap!2022 (Cons!52780 lt!1883172 lt!1883166)) key!4653) lt!1883632)))

(declare-fun b!4717807 () Bool)

(assert (=> b!4717807 (= e!2942363 (= ((_ map and) (content!9379 (keys!18941 (extractMap!2022 (Cons!52780 lt!1883172 lt!1883166)))) ((_ map not) (store ((as const (Array K!14140 Bool)) false) key!4653 true))) (content!9379 (keys!18941 lt!1883632))))))

(assert (= (and d!1501400 res!1995301) b!4717807))

(declare-fun m!5649593 () Bool)

(assert (=> d!1501400 m!5649593))

(declare-fun m!5649595 () Bool)

(assert (=> d!1501400 m!5649595))

(declare-fun m!5649597 () Bool)

(assert (=> b!4717807 m!5649597))

(assert (=> b!4717807 m!5649527))

(declare-fun m!5649599 () Bool)

(assert (=> b!4717807 m!5649599))

(declare-fun m!5649601 () Bool)

(assert (=> b!4717807 m!5649601))

(assert (=> b!4717807 m!5648735))

(assert (=> b!4717807 m!5649599))

(assert (=> b!4717807 m!5649597))

(declare-fun m!5649603 () Bool)

(assert (=> b!4717807 m!5649603))

(assert (=> b!4717513 d!1501400))

(declare-fun d!1501402 () Bool)

(assert (=> d!1501402 (= (tail!8962 lt!1883188) (t!360158 lt!1883188))))

(assert (=> b!4717513 d!1501402))

(declare-fun bs!1105855 () Bool)

(declare-fun d!1501404 () Bool)

(assert (= bs!1105855 (and d!1501404 start!479912)))

(declare-fun lambda!214476 () Int)

(assert (=> bs!1105855 (= lambda!214476 lambda!214343)))

(declare-fun bs!1105856 () Bool)

(assert (= bs!1105856 (and d!1501404 d!1501366)))

(assert (=> bs!1105856 (= lambda!214476 lambda!214468)))

(declare-fun bs!1105857 () Bool)

(assert (= bs!1105857 (and d!1501404 d!1501346)))

(assert (=> bs!1105857 (= lambda!214476 lambda!214466)))

(declare-fun bs!1105858 () Bool)

(assert (= bs!1105858 (and d!1501404 d!1501306)))

(assert (=> bs!1105858 (= lambda!214476 lambda!214445)))

(declare-fun bs!1105859 () Bool)

(assert (= bs!1105859 (and d!1501404 d!1501252)))

(assert (=> bs!1105859 (= lambda!214476 lambda!214352)))

(declare-fun bs!1105860 () Bool)

(assert (= bs!1105860 (and d!1501404 d!1501360)))

(assert (=> bs!1105860 (= lambda!214476 lambda!214467)))

(declare-fun bs!1105861 () Bool)

(assert (= bs!1105861 (and d!1501404 d!1501394)))

(assert (=> bs!1105861 (not (= lambda!214476 lambda!214471))))

(declare-fun lt!1883635 () ListMap!5245)

(assert (=> d!1501404 (invariantList!1496 (toList!5881 lt!1883635))))

(declare-fun e!2942366 () ListMap!5245)

(assert (=> d!1501404 (= lt!1883635 e!2942366)))

(declare-fun c!805731 () Bool)

(assert (=> d!1501404 (= c!805731 ((_ is Cons!52780) (Cons!52780 lt!1883162 (t!360158 (toList!5882 lm!2023)))))))

(assert (=> d!1501404 (forall!11549 (Cons!52780 lt!1883162 (t!360158 (toList!5882 lm!2023))) lambda!214476)))

(assert (=> d!1501404 (= (extractMap!2022 (Cons!52780 lt!1883162 (t!360158 (toList!5882 lm!2023)))) lt!1883635)))

(declare-fun b!4717808 () Bool)

(assert (=> b!4717808 (= e!2942366 (addToMapMapFromBucket!1426 (_2!30484 (h!59111 (Cons!52780 lt!1883162 (t!360158 (toList!5882 lm!2023))))) (extractMap!2022 (t!360158 (Cons!52780 lt!1883162 (t!360158 (toList!5882 lm!2023)))))))))

(declare-fun b!4717809 () Bool)

(assert (=> b!4717809 (= e!2942366 (ListMap!5246 Nil!52779))))

(assert (= (and d!1501404 c!805731) b!4717808))

(assert (= (and d!1501404 (not c!805731)) b!4717809))

(declare-fun m!5649605 () Bool)

(assert (=> d!1501404 m!5649605))

(declare-fun m!5649607 () Bool)

(assert (=> d!1501404 m!5649607))

(declare-fun m!5649609 () Bool)

(assert (=> b!4717808 m!5649609))

(assert (=> b!4717808 m!5649609))

(declare-fun m!5649611 () Bool)

(assert (=> b!4717808 m!5649611))

(assert (=> b!4717513 d!1501404))

(declare-fun d!1501406 () Bool)

(declare-fun e!2942369 () Bool)

(assert (=> d!1501406 e!2942369))

(declare-fun res!1995310 () Bool)

(assert (=> d!1501406 (=> (not res!1995310) (not e!2942369))))

(declare-fun lt!1883650 () ListMap!5245)

(assert (=> d!1501406 (= res!1995310 (not (contains!16131 lt!1883650 key!4653)))))

(assert (=> d!1501406 (= lt!1883650 (ListMap!5246 (removePresrvNoDuplicatedKeys!399 (toList!5881 lt!1883168) key!4653)))))

(assert (=> d!1501406 (= (-!752 lt!1883168 key!4653) lt!1883650)))

(declare-fun b!4717818 () Bool)

(assert (=> b!4717818 (= e!2942369 (= ((_ map and) (content!9379 (keys!18941 lt!1883168)) ((_ map not) (store ((as const (Array K!14140 Bool)) false) key!4653 true))) (content!9379 (keys!18941 lt!1883650))))))

(assert (= (and d!1501406 res!1995310) b!4717818))

(declare-fun m!5649613 () Bool)

(assert (=> d!1501406 m!5649613))

(declare-fun m!5649615 () Bool)

(assert (=> d!1501406 m!5649615))

(declare-fun m!5649617 () Bool)

(assert (=> b!4717818 m!5649617))

(assert (=> b!4717818 m!5649527))

(assert (=> b!4717818 m!5648891))

(declare-fun m!5649619 () Bool)

(assert (=> b!4717818 m!5649619))

(assert (=> b!4717818 m!5648891))

(assert (=> b!4717818 m!5649617))

(declare-fun m!5649621 () Bool)

(assert (=> b!4717818 m!5649621))

(assert (=> b!4717513 d!1501406))

(declare-fun bs!1105862 () Bool)

(declare-fun d!1501408 () Bool)

(assert (= bs!1105862 (and d!1501408 start!479912)))

(declare-fun lambda!214479 () Int)

(assert (=> bs!1105862 (= lambda!214479 lambda!214343)))

(declare-fun bs!1105863 () Bool)

(assert (= bs!1105863 (and d!1501408 d!1501366)))

(assert (=> bs!1105863 (= lambda!214479 lambda!214468)))

(declare-fun bs!1105864 () Bool)

(assert (= bs!1105864 (and d!1501408 d!1501404)))

(assert (=> bs!1105864 (= lambda!214479 lambda!214476)))

(declare-fun bs!1105865 () Bool)

(assert (= bs!1105865 (and d!1501408 d!1501346)))

(assert (=> bs!1105865 (= lambda!214479 lambda!214466)))

(declare-fun bs!1105866 () Bool)

(assert (= bs!1105866 (and d!1501408 d!1501306)))

(assert (=> bs!1105866 (= lambda!214479 lambda!214445)))

(declare-fun bs!1105867 () Bool)

(assert (= bs!1105867 (and d!1501408 d!1501252)))

(assert (=> bs!1105867 (= lambda!214479 lambda!214352)))

(declare-fun bs!1105868 () Bool)

(assert (= bs!1105868 (and d!1501408 d!1501360)))

(assert (=> bs!1105868 (= lambda!214479 lambda!214467)))

(declare-fun bs!1105869 () Bool)

(assert (= bs!1105869 (and d!1501408 d!1501394)))

(assert (=> bs!1105869 (not (= lambda!214479 lambda!214471))))

(declare-fun lt!1883651 () ListMap!5245)

(assert (=> d!1501408 (invariantList!1496 (toList!5881 lt!1883651))))

(declare-fun e!2942370 () ListMap!5245)

(assert (=> d!1501408 (= lt!1883651 e!2942370)))

(declare-fun c!805732 () Bool)

(assert (=> d!1501408 (= c!805732 ((_ is Cons!52780) (Cons!52780 lt!1883172 lt!1883166)))))

(assert (=> d!1501408 (forall!11549 (Cons!52780 lt!1883172 lt!1883166) lambda!214479)))

(assert (=> d!1501408 (= (extractMap!2022 (Cons!52780 lt!1883172 lt!1883166)) lt!1883651)))

(declare-fun b!4717819 () Bool)

(assert (=> b!4717819 (= e!2942370 (addToMapMapFromBucket!1426 (_2!30484 (h!59111 (Cons!52780 lt!1883172 lt!1883166))) (extractMap!2022 (t!360158 (Cons!52780 lt!1883172 lt!1883166)))))))

(declare-fun b!4717820 () Bool)

(assert (=> b!4717820 (= e!2942370 (ListMap!5246 Nil!52779))))

(assert (= (and d!1501408 c!805732) b!4717819))

(assert (= (and d!1501408 (not c!805732)) b!4717820))

(declare-fun m!5649623 () Bool)

(assert (=> d!1501408 m!5649623))

(declare-fun m!5649625 () Bool)

(assert (=> d!1501408 m!5649625))

(declare-fun m!5649627 () Bool)

(assert (=> b!4717819 m!5649627))

(assert (=> b!4717819 m!5649627))

(declare-fun m!5649629 () Bool)

(assert (=> b!4717819 m!5649629))

(assert (=> b!4717513 d!1501408))

(declare-fun bs!1105870 () Bool)

(declare-fun d!1501410 () Bool)

(assert (= bs!1105870 (and d!1501410 start!479912)))

(declare-fun lambda!214480 () Int)

(assert (=> bs!1105870 (= lambda!214480 lambda!214343)))

(declare-fun bs!1105871 () Bool)

(assert (= bs!1105871 (and d!1501410 d!1501366)))

(assert (=> bs!1105871 (= lambda!214480 lambda!214468)))

(declare-fun bs!1105872 () Bool)

(assert (= bs!1105872 (and d!1501410 d!1501346)))

(assert (=> bs!1105872 (= lambda!214480 lambda!214466)))

(declare-fun bs!1105873 () Bool)

(assert (= bs!1105873 (and d!1501410 d!1501306)))

(assert (=> bs!1105873 (= lambda!214480 lambda!214445)))

(declare-fun bs!1105874 () Bool)

(assert (= bs!1105874 (and d!1501410 d!1501252)))

(assert (=> bs!1105874 (= lambda!214480 lambda!214352)))

(declare-fun bs!1105875 () Bool)

(assert (= bs!1105875 (and d!1501410 d!1501360)))

(assert (=> bs!1105875 (= lambda!214480 lambda!214467)))

(declare-fun bs!1105876 () Bool)

(assert (= bs!1105876 (and d!1501410 d!1501394)))

(assert (=> bs!1105876 (not (= lambda!214480 lambda!214471))))

(declare-fun bs!1105877 () Bool)

(assert (= bs!1105877 (and d!1501410 d!1501408)))

(assert (=> bs!1105877 (= lambda!214480 lambda!214479)))

(declare-fun bs!1105878 () Bool)

(assert (= bs!1105878 (and d!1501410 d!1501404)))

(assert (=> bs!1105878 (= lambda!214480 lambda!214476)))

(declare-fun lt!1883652 () ListMap!5245)

(assert (=> d!1501410 (invariantList!1496 (toList!5881 lt!1883652))))

(declare-fun e!2942371 () ListMap!5245)

(assert (=> d!1501410 (= lt!1883652 e!2942371)))

(declare-fun c!805733 () Bool)

(assert (=> d!1501410 (= c!805733 ((_ is Cons!52780) (Cons!52780 lt!1883162 lt!1883166)))))

(assert (=> d!1501410 (forall!11549 (Cons!52780 lt!1883162 lt!1883166) lambda!214480)))

(assert (=> d!1501410 (= (extractMap!2022 (Cons!52780 lt!1883162 lt!1883166)) lt!1883652)))

(declare-fun b!4717821 () Bool)

(assert (=> b!4717821 (= e!2942371 (addToMapMapFromBucket!1426 (_2!30484 (h!59111 (Cons!52780 lt!1883162 lt!1883166))) (extractMap!2022 (t!360158 (Cons!52780 lt!1883162 lt!1883166)))))))

(declare-fun b!4717822 () Bool)

(assert (=> b!4717822 (= e!2942371 (ListMap!5246 Nil!52779))))

(assert (= (and d!1501410 c!805733) b!4717821))

(assert (= (and d!1501410 (not c!805733)) b!4717822))

(declare-fun m!5649631 () Bool)

(assert (=> d!1501410 m!5649631))

(declare-fun m!5649633 () Bool)

(assert (=> d!1501410 m!5649633))

(declare-fun m!5649635 () Bool)

(assert (=> b!4717821 m!5649635))

(assert (=> b!4717821 m!5649635))

(declare-fun m!5649637 () Bool)

(assert (=> b!4717821 m!5649637))

(assert (=> b!4717513 d!1501410))

(declare-fun bs!1105893 () Bool)

(declare-fun d!1501412 () Bool)

(assert (= bs!1105893 (and d!1501412 start!479912)))

(declare-fun lambda!214484 () Int)

(assert (=> bs!1105893 (= lambda!214484 lambda!214343)))

(declare-fun bs!1105894 () Bool)

(assert (= bs!1105894 (and d!1501412 d!1501366)))

(assert (=> bs!1105894 (= lambda!214484 lambda!214468)))

(declare-fun bs!1105895 () Bool)

(assert (= bs!1105895 (and d!1501412 d!1501410)))

(assert (=> bs!1105895 (= lambda!214484 lambda!214480)))

(declare-fun bs!1105896 () Bool)

(assert (= bs!1105896 (and d!1501412 d!1501346)))

(assert (=> bs!1105896 (= lambda!214484 lambda!214466)))

(declare-fun bs!1105897 () Bool)

(assert (= bs!1105897 (and d!1501412 d!1501306)))

(assert (=> bs!1105897 (= lambda!214484 lambda!214445)))

(declare-fun bs!1105898 () Bool)

(assert (= bs!1105898 (and d!1501412 d!1501252)))

(assert (=> bs!1105898 (= lambda!214484 lambda!214352)))

(declare-fun bs!1105899 () Bool)

(assert (= bs!1105899 (and d!1501412 d!1501360)))

(assert (=> bs!1105899 (= lambda!214484 lambda!214467)))

(declare-fun bs!1105900 () Bool)

(assert (= bs!1105900 (and d!1501412 d!1501394)))

(assert (=> bs!1105900 (not (= lambda!214484 lambda!214471))))

(declare-fun bs!1105901 () Bool)

(assert (= bs!1105901 (and d!1501412 d!1501408)))

(assert (=> bs!1105901 (= lambda!214484 lambda!214479)))

(declare-fun bs!1105902 () Bool)

(assert (= bs!1105902 (and d!1501412 d!1501404)))

(assert (=> bs!1105902 (= lambda!214484 lambda!214476)))

(assert (=> d!1501412 (eq!1123 (extractMap!2022 (Cons!52780 (tuple2!54381 hash!405 lt!1883191) (tail!8962 (toList!5882 lt!1883171)))) (-!752 (extractMap!2022 (Cons!52780 (tuple2!54381 hash!405 (t!360157 oldBucket!34)) (tail!8962 (toList!5882 lt!1883171)))) key!4653))))

(declare-fun lt!1883671 () Unit!128993)

(declare-fun choose!33264 (ListLongMap!4411 (_ BitVec 64) List!52903 List!52903 K!14140 Hashable!6365) Unit!128993)

(assert (=> d!1501412 (= lt!1883671 (choose!33264 lt!1883171 hash!405 (t!360157 oldBucket!34) lt!1883191 key!4653 hashF!1323))))

(assert (=> d!1501412 (forall!11549 (toList!5882 lt!1883171) lambda!214484)))

(assert (=> d!1501412 (= (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMapOneHashIsHead!114 lt!1883171 hash!405 (t!360157 oldBucket!34) lt!1883191 key!4653 hashF!1323) lt!1883671)))

(declare-fun bs!1105903 () Bool)

(assert (= bs!1105903 d!1501412))

(declare-fun m!5649669 () Bool)

(assert (=> bs!1105903 m!5649669))

(assert (=> bs!1105903 m!5649669))

(declare-fun m!5649671 () Bool)

(assert (=> bs!1105903 m!5649671))

(declare-fun m!5649673 () Bool)

(assert (=> bs!1105903 m!5649673))

(declare-fun m!5649675 () Bool)

(assert (=> bs!1105903 m!5649675))

(declare-fun m!5649677 () Bool)

(assert (=> bs!1105903 m!5649677))

(declare-fun m!5649679 () Bool)

(assert (=> bs!1105903 m!5649679))

(declare-fun m!5649681 () Bool)

(assert (=> bs!1105903 m!5649681))

(assert (=> bs!1105903 m!5649681))

(assert (=> bs!1105903 m!5649671))

(assert (=> b!4717513 d!1501412))

(declare-fun d!1501424 () Bool)

(assert (=> d!1501424 (= (eq!1123 lt!1883175 lt!1883184) (= (content!9377 (toList!5881 lt!1883175)) (content!9377 (toList!5881 lt!1883184))))))

(declare-fun bs!1105904 () Bool)

(assert (= bs!1105904 d!1501424))

(declare-fun m!5649683 () Bool)

(assert (=> bs!1105904 m!5649683))

(declare-fun m!5649685 () Bool)

(assert (=> bs!1105904 m!5649685))

(assert (=> b!4717513 d!1501424))

(declare-fun d!1501426 () Bool)

(assert (=> d!1501426 (= (eq!1123 (extractMap!2022 (Cons!52780 lt!1883162 lt!1883166)) (-!752 (extractMap!2022 (Cons!52780 lt!1883172 lt!1883166)) key!4653)) (= (content!9377 (toList!5881 (extractMap!2022 (Cons!52780 lt!1883162 lt!1883166)))) (content!9377 (toList!5881 (-!752 (extractMap!2022 (Cons!52780 lt!1883172 lt!1883166)) key!4653)))))))

(declare-fun bs!1105905 () Bool)

(assert (= bs!1105905 d!1501426))

(declare-fun m!5649687 () Bool)

(assert (=> bs!1105905 m!5649687))

(declare-fun m!5649689 () Bool)

(assert (=> bs!1105905 m!5649689))

(assert (=> b!4717513 d!1501426))

(declare-fun d!1501428 () Bool)

(declare-fun isEmpty!29167 (Option!12340) Bool)

(assert (=> d!1501428 (= (isDefined!9594 (getPair!562 lt!1883193 key!4653)) (not (isEmpty!29167 (getPair!562 lt!1883193 key!4653))))))

(declare-fun bs!1105906 () Bool)

(assert (= bs!1105906 d!1501428))

(assert (=> bs!1105906 m!5648833))

(declare-fun m!5649693 () Bool)

(assert (=> bs!1105906 m!5649693))

(assert (=> b!4717522 d!1501428))

(declare-fun d!1501430 () Bool)

(declare-fun lt!1883677 () Bool)

(declare-fun content!9380 (List!52904) (InoxSet tuple2!54380))

(assert (=> d!1501430 (= lt!1883677 (select (content!9380 (toList!5882 lm!2023)) lt!1883183))))

(declare-fun e!2942401 () Bool)

(assert (=> d!1501430 (= lt!1883677 e!2942401)))

(declare-fun res!1995340 () Bool)

(assert (=> d!1501430 (=> (not res!1995340) (not e!2942401))))

(assert (=> d!1501430 (= res!1995340 ((_ is Cons!52780) (toList!5882 lm!2023)))))

(assert (=> d!1501430 (= (contains!16132 (toList!5882 lm!2023) lt!1883183) lt!1883677)))

(declare-fun b!4717864 () Bool)

(declare-fun e!2942402 () Bool)

(assert (=> b!4717864 (= e!2942401 e!2942402)))

(declare-fun res!1995339 () Bool)

(assert (=> b!4717864 (=> res!1995339 e!2942402)))

(assert (=> b!4717864 (= res!1995339 (= (h!59111 (toList!5882 lm!2023)) lt!1883183))))

(declare-fun b!4717865 () Bool)

(assert (=> b!4717865 (= e!2942402 (contains!16132 (t!360158 (toList!5882 lm!2023)) lt!1883183))))

(assert (= (and d!1501430 res!1995340) b!4717864))

(assert (= (and b!4717864 (not res!1995339)) b!4717865))

(declare-fun m!5649709 () Bool)

(assert (=> d!1501430 m!5649709))

(declare-fun m!5649711 () Bool)

(assert (=> d!1501430 m!5649711))

(declare-fun m!5649713 () Bool)

(assert (=> b!4717865 m!5649713))

(assert (=> b!4717522 d!1501430))

(declare-fun b!4717891 () Bool)

(declare-fun res!1995360 () Bool)

(declare-fun e!2942423 () Bool)

(assert (=> b!4717891 (=> (not res!1995360) (not e!2942423))))

(declare-fun lt!1883686 () Option!12340)

(declare-fun get!17709 (Option!12340) tuple2!54378)

(assert (=> b!4717891 (= res!1995360 (= (_1!30483 (get!17709 lt!1883686)) key!4653))))

(declare-fun b!4717892 () Bool)

(declare-fun e!2942425 () Option!12340)

(assert (=> b!4717892 (= e!2942425 (Some!12339 (h!59110 lt!1883193)))))

(declare-fun b!4717893 () Bool)

(declare-fun e!2942421 () Bool)

(assert (=> b!4717893 (= e!2942421 e!2942423)))

(declare-fun res!1995359 () Bool)

(assert (=> b!4717893 (=> (not res!1995359) (not e!2942423))))

(assert (=> b!4717893 (= res!1995359 (isDefined!9594 lt!1883686))))

(declare-fun b!4717894 () Bool)

(declare-fun e!2942424 () Option!12340)

(assert (=> b!4717894 (= e!2942424 None!12339)))

(declare-fun d!1501436 () Bool)

(assert (=> d!1501436 e!2942421))

(declare-fun res!1995361 () Bool)

(assert (=> d!1501436 (=> res!1995361 e!2942421)))

(declare-fun e!2942422 () Bool)

(assert (=> d!1501436 (= res!1995361 e!2942422)))

(declare-fun res!1995358 () Bool)

(assert (=> d!1501436 (=> (not res!1995358) (not e!2942422))))

(assert (=> d!1501436 (= res!1995358 (isEmpty!29167 lt!1883686))))

(assert (=> d!1501436 (= lt!1883686 e!2942425)))

(declare-fun c!805745 () Bool)

(assert (=> d!1501436 (= c!805745 (and ((_ is Cons!52779) lt!1883193) (= (_1!30483 (h!59110 lt!1883193)) key!4653)))))

(assert (=> d!1501436 (noDuplicateKeys!1996 lt!1883193)))

(assert (=> d!1501436 (= (getPair!562 lt!1883193 key!4653) lt!1883686)))

(declare-fun b!4717895 () Bool)

(assert (=> b!4717895 (= e!2942425 e!2942424)))

(declare-fun c!805744 () Bool)

(assert (=> b!4717895 (= c!805744 ((_ is Cons!52779) lt!1883193))))

(declare-fun b!4717896 () Bool)

(assert (=> b!4717896 (= e!2942422 (not (containsKey!3337 lt!1883193 key!4653)))))

(declare-fun b!4717897 () Bool)

(assert (=> b!4717897 (= e!2942424 (getPair!562 (t!360157 lt!1883193) key!4653))))

(declare-fun b!4717898 () Bool)

(assert (=> b!4717898 (= e!2942423 (contains!16137 lt!1883193 (get!17709 lt!1883686)))))

(assert (= (and d!1501436 c!805745) b!4717892))

(assert (= (and d!1501436 (not c!805745)) b!4717895))

(assert (= (and b!4717895 c!805744) b!4717897))

(assert (= (and b!4717895 (not c!805744)) b!4717894))

(assert (= (and d!1501436 res!1995358) b!4717896))

(assert (= (and d!1501436 (not res!1995361)) b!4717893))

(assert (= (and b!4717893 res!1995359) b!4717891))

(assert (= (and b!4717891 res!1995360) b!4717898))

(declare-fun m!5649745 () Bool)

(assert (=> d!1501436 m!5649745))

(declare-fun m!5649747 () Bool)

(assert (=> d!1501436 m!5649747))

(declare-fun m!5649749 () Bool)

(assert (=> b!4717893 m!5649749))

(declare-fun m!5649751 () Bool)

(assert (=> b!4717891 m!5649751))

(assert (=> b!4717898 m!5649751))

(assert (=> b!4717898 m!5649751))

(declare-fun m!5649753 () Bool)

(assert (=> b!4717898 m!5649753))

(declare-fun m!5649755 () Bool)

(assert (=> b!4717896 m!5649755))

(declare-fun m!5649757 () Bool)

(assert (=> b!4717897 m!5649757))

(assert (=> b!4717522 d!1501436))

(declare-fun d!1501444 () Bool)

(declare-fun dynLambda!21799 (Int tuple2!54380) Bool)

(assert (=> d!1501444 (dynLambda!21799 lambda!214343 lt!1883183)))

(declare-fun lt!1883689 () Unit!128993)

(declare-fun choose!33265 (List!52904 Int tuple2!54380) Unit!128993)

(assert (=> d!1501444 (= lt!1883689 (choose!33265 (toList!5882 lm!2023) lambda!214343 lt!1883183))))

(declare-fun e!2942428 () Bool)

(assert (=> d!1501444 e!2942428))

(declare-fun res!1995364 () Bool)

(assert (=> d!1501444 (=> (not res!1995364) (not e!2942428))))

(assert (=> d!1501444 (= res!1995364 (forall!11549 (toList!5882 lm!2023) lambda!214343))))

(assert (=> d!1501444 (= (forallContained!3618 (toList!5882 lm!2023) lambda!214343 lt!1883183) lt!1883689)))

(declare-fun b!4717901 () Bool)

(assert (=> b!4717901 (= e!2942428 (contains!16132 (toList!5882 lm!2023) lt!1883183))))

(assert (= (and d!1501444 res!1995364) b!4717901))

(declare-fun b_lambda!177809 () Bool)

(assert (=> (not b_lambda!177809) (not d!1501444)))

(declare-fun m!5649759 () Bool)

(assert (=> d!1501444 m!5649759))

(declare-fun m!5649761 () Bool)

(assert (=> d!1501444 m!5649761))

(assert (=> d!1501444 m!5648727))

(assert (=> b!4717901 m!5648827))

(assert (=> b!4717522 d!1501444))

(declare-fun bs!1105923 () Bool)

(declare-fun d!1501446 () Bool)

(assert (= bs!1105923 (and d!1501446 start!479912)))

(declare-fun lambda!214488 () Int)

(assert (=> bs!1105923 (= lambda!214488 lambda!214343)))

(declare-fun bs!1105924 () Bool)

(assert (= bs!1105924 (and d!1501446 d!1501366)))

(assert (=> bs!1105924 (= lambda!214488 lambda!214468)))

(declare-fun bs!1105925 () Bool)

(assert (= bs!1105925 (and d!1501446 d!1501412)))

(assert (=> bs!1105925 (= lambda!214488 lambda!214484)))

(declare-fun bs!1105926 () Bool)

(assert (= bs!1105926 (and d!1501446 d!1501410)))

(assert (=> bs!1105926 (= lambda!214488 lambda!214480)))

(declare-fun bs!1105927 () Bool)

(assert (= bs!1105927 (and d!1501446 d!1501346)))

(assert (=> bs!1105927 (= lambda!214488 lambda!214466)))

(declare-fun bs!1105928 () Bool)

(assert (= bs!1105928 (and d!1501446 d!1501306)))

(assert (=> bs!1105928 (= lambda!214488 lambda!214445)))

(declare-fun bs!1105929 () Bool)

(assert (= bs!1105929 (and d!1501446 d!1501252)))

(assert (=> bs!1105929 (= lambda!214488 lambda!214352)))

(declare-fun bs!1105930 () Bool)

(assert (= bs!1105930 (and d!1501446 d!1501360)))

(assert (=> bs!1105930 (= lambda!214488 lambda!214467)))

(declare-fun bs!1105931 () Bool)

(assert (= bs!1105931 (and d!1501446 d!1501394)))

(assert (=> bs!1105931 (not (= lambda!214488 lambda!214471))))

(declare-fun bs!1105932 () Bool)

(assert (= bs!1105932 (and d!1501446 d!1501408)))

(assert (=> bs!1105932 (= lambda!214488 lambda!214479)))

(declare-fun bs!1105933 () Bool)

(assert (= bs!1105933 (and d!1501446 d!1501404)))

(assert (=> bs!1105933 (= lambda!214488 lambda!214476)))

(assert (=> d!1501446 (contains!16133 lm!2023 (hash!4349 hashF!1323 key!4653))))

(declare-fun lt!1883701 () Unit!128993)

(declare-fun choose!33266 (ListLongMap!4411 K!14140 Hashable!6365) Unit!128993)

(assert (=> d!1501446 (= lt!1883701 (choose!33266 lm!2023 key!4653 hashF!1323))))

(assert (=> d!1501446 (forall!11549 (toList!5882 lm!2023) lambda!214488)))

(assert (=> d!1501446 (= (lemmaInGenMapThenLongMapContainsHash!768 lm!2023 key!4653 hashF!1323) lt!1883701)))

(declare-fun bs!1105934 () Bool)

(assert (= bs!1105934 d!1501446))

(assert (=> bs!1105934 m!5648715))

(assert (=> bs!1105934 m!5648715))

(declare-fun m!5649811 () Bool)

(assert (=> bs!1105934 m!5649811))

(declare-fun m!5649813 () Bool)

(assert (=> bs!1105934 m!5649813))

(declare-fun m!5649815 () Bool)

(assert (=> bs!1105934 m!5649815))

(assert (=> b!4717522 d!1501446))

(declare-fun d!1501460 () Bool)

(assert (=> d!1501460 (contains!16132 (toList!5882 lm!2023) (tuple2!54381 lt!1883196 lt!1883193))))

(declare-fun lt!1883709 () Unit!128993)

(declare-fun choose!33268 (ListLongMap!4411 (_ BitVec 64) List!52903) Unit!128993)

(assert (=> d!1501460 (= lt!1883709 (choose!33268 lm!2023 lt!1883196 lt!1883193))))

(assert (=> d!1501460 (contains!16133 lm!2023 lt!1883196)))

(assert (=> d!1501460 (= (lemmaGetValueImpliesTupleContained!367 lm!2023 lt!1883196 lt!1883193) lt!1883709)))

(declare-fun bs!1105938 () Bool)

(assert (= bs!1105938 d!1501460))

(declare-fun m!5649837 () Bool)

(assert (=> bs!1105938 m!5649837))

(declare-fun m!5649839 () Bool)

(assert (=> bs!1105938 m!5649839))

(assert (=> bs!1105938 m!5648849))

(assert (=> b!4717522 d!1501460))

(declare-fun bs!1106006 () Bool)

(declare-fun d!1501474 () Bool)

(assert (= bs!1106006 (and d!1501474 start!479912)))

(declare-fun lambda!214500 () Int)

(assert (=> bs!1106006 (= lambda!214500 lambda!214343)))

(declare-fun bs!1106007 () Bool)

(assert (= bs!1106007 (and d!1501474 d!1501412)))

(assert (=> bs!1106007 (= lambda!214500 lambda!214484)))

(declare-fun bs!1106008 () Bool)

(assert (= bs!1106008 (and d!1501474 d!1501410)))

(assert (=> bs!1106008 (= lambda!214500 lambda!214480)))

(declare-fun bs!1106009 () Bool)

(assert (= bs!1106009 (and d!1501474 d!1501346)))

(assert (=> bs!1106009 (= lambda!214500 lambda!214466)))

(declare-fun bs!1106010 () Bool)

(assert (= bs!1106010 (and d!1501474 d!1501306)))

(assert (=> bs!1106010 (= lambda!214500 lambda!214445)))

(declare-fun bs!1106011 () Bool)

(assert (= bs!1106011 (and d!1501474 d!1501252)))

(assert (=> bs!1106011 (= lambda!214500 lambda!214352)))

(declare-fun bs!1106012 () Bool)

(assert (= bs!1106012 (and d!1501474 d!1501366)))

(assert (=> bs!1106012 (= lambda!214500 lambda!214468)))

(declare-fun bs!1106013 () Bool)

(assert (= bs!1106013 (and d!1501474 d!1501446)))

(assert (=> bs!1106013 (= lambda!214500 lambda!214488)))

(declare-fun bs!1106014 () Bool)

(assert (= bs!1106014 (and d!1501474 d!1501360)))

(assert (=> bs!1106014 (= lambda!214500 lambda!214467)))

(declare-fun bs!1106015 () Bool)

(assert (= bs!1106015 (and d!1501474 d!1501394)))

(assert (=> bs!1106015 (not (= lambda!214500 lambda!214471))))

(declare-fun bs!1106016 () Bool)

(assert (= bs!1106016 (and d!1501474 d!1501408)))

(assert (=> bs!1106016 (= lambda!214500 lambda!214479)))

(declare-fun bs!1106017 () Bool)

(assert (= bs!1106017 (and d!1501474 d!1501404)))

(assert (=> bs!1106017 (= lambda!214500 lambda!214476)))

(declare-fun b!4717949 () Bool)

(declare-fun e!2942456 () Bool)

(assert (=> b!4717949 (= e!2942456 (isDefined!9594 (getPair!562 (apply!12445 lm!2023 (hash!4349 hashF!1323 key!4653)) key!4653)))))

(declare-fun lt!1883763 () Unit!128993)

(assert (=> b!4717949 (= lt!1883763 (forallContained!3618 (toList!5882 lm!2023) lambda!214500 (tuple2!54381 (hash!4349 hashF!1323 key!4653) (apply!12445 lm!2023 (hash!4349 hashF!1323 key!4653)))))))

(declare-fun lt!1883757 () Unit!128993)

(declare-fun lt!1883758 () Unit!128993)

(assert (=> b!4717949 (= lt!1883757 lt!1883758)))

(declare-fun lt!1883759 () (_ BitVec 64))

(declare-fun lt!1883761 () List!52903)

(assert (=> b!4717949 (contains!16132 (toList!5882 lm!2023) (tuple2!54381 lt!1883759 lt!1883761))))

(assert (=> b!4717949 (= lt!1883758 (lemmaGetValueImpliesTupleContained!367 lm!2023 lt!1883759 lt!1883761))))

(declare-fun e!2942455 () Bool)

(assert (=> b!4717949 e!2942455))

(declare-fun res!1995384 () Bool)

(assert (=> b!4717949 (=> (not res!1995384) (not e!2942455))))

(assert (=> b!4717949 (= res!1995384 (contains!16133 lm!2023 lt!1883759))))

(assert (=> b!4717949 (= lt!1883761 (apply!12445 lm!2023 (hash!4349 hashF!1323 key!4653)))))

(assert (=> b!4717949 (= lt!1883759 (hash!4349 hashF!1323 key!4653))))

(declare-fun lt!1883760 () Unit!128993)

(declare-fun lt!1883762 () Unit!128993)

(assert (=> b!4717949 (= lt!1883760 lt!1883762)))

(assert (=> b!4717949 (contains!16133 lm!2023 (hash!4349 hashF!1323 key!4653))))

(assert (=> b!4717949 (= lt!1883762 (lemmaInGenMapThenLongMapContainsHash!768 lm!2023 key!4653 hashF!1323))))

(assert (=> d!1501474 e!2942456))

(declare-fun res!1995387 () Bool)

(assert (=> d!1501474 (=> (not res!1995387) (not e!2942456))))

(assert (=> d!1501474 (= res!1995387 (forall!11549 (toList!5882 lm!2023) lambda!214500))))

(declare-fun lt!1883756 () Unit!128993)

(declare-fun choose!33269 (ListLongMap!4411 K!14140 Hashable!6365) Unit!128993)

(assert (=> d!1501474 (= lt!1883756 (choose!33269 lm!2023 key!4653 hashF!1323))))

(assert (=> d!1501474 (forall!11549 (toList!5882 lm!2023) lambda!214500)))

(assert (=> d!1501474 (= (lemmaInGenMapThenGetPairDefined!358 lm!2023 key!4653 hashF!1323) lt!1883756)))

(declare-fun b!4717950 () Bool)

(declare-datatypes ((Option!12344 0))(
  ( (None!12343) (Some!12343 (v!46910 List!52903)) )
))
(declare-fun getValueByKey!1940 (List!52904 (_ BitVec 64)) Option!12344)

(assert (=> b!4717950 (= e!2942455 (= (getValueByKey!1940 (toList!5882 lm!2023) lt!1883759) (Some!12343 lt!1883761)))))

(declare-fun b!4717947 () Bool)

(declare-fun res!1995385 () Bool)

(assert (=> b!4717947 (=> (not res!1995385) (not e!2942456))))

(assert (=> b!4717947 (= res!1995385 (allKeysSameHashInMap!1910 lm!2023 hashF!1323))))

(declare-fun b!4717948 () Bool)

(declare-fun res!1995386 () Bool)

(assert (=> b!4717948 (=> (not res!1995386) (not e!2942456))))

(assert (=> b!4717948 (= res!1995386 (contains!16131 (extractMap!2022 (toList!5882 lm!2023)) key!4653))))

(assert (= (and d!1501474 res!1995387) b!4717947))

(assert (= (and b!4717947 res!1995385) b!4717948))

(assert (= (and b!4717948 res!1995386) b!4717949))

(assert (= (and b!4717949 res!1995384) b!4717950))

(declare-fun m!5649923 () Bool)

(assert (=> b!4717950 m!5649923))

(declare-fun m!5649925 () Bool)

(assert (=> d!1501474 m!5649925))

(declare-fun m!5649927 () Bool)

(assert (=> d!1501474 m!5649927))

(assert (=> d!1501474 m!5649925))

(assert (=> b!4717948 m!5648815))

(assert (=> b!4717948 m!5648815))

(declare-fun m!5649929 () Bool)

(assert (=> b!4717948 m!5649929))

(assert (=> b!4717949 m!5648715))

(assert (=> b!4717949 m!5648829))

(declare-fun m!5649931 () Bool)

(assert (=> b!4717949 m!5649931))

(declare-fun m!5649933 () Bool)

(assert (=> b!4717949 m!5649933))

(declare-fun m!5649935 () Bool)

(assert (=> b!4717949 m!5649935))

(declare-fun m!5649937 () Bool)

(assert (=> b!4717949 m!5649937))

(assert (=> b!4717949 m!5648715))

(assert (=> b!4717949 m!5649811))

(assert (=> b!4717949 m!5649935))

(declare-fun m!5649939 () Bool)

(assert (=> b!4717949 m!5649939))

(assert (=> b!4717949 m!5648715))

(assert (=> b!4717949 m!5649933))

(declare-fun m!5649941 () Bool)

(assert (=> b!4717949 m!5649941))

(declare-fun m!5649943 () Bool)

(assert (=> b!4717949 m!5649943))

(assert (=> b!4717947 m!5648823))

(assert (=> b!4717522 d!1501474))

(declare-fun d!1501502 () Bool)

(assert (=> d!1501502 (containsKey!3337 oldBucket!34 key!4653)))

(declare-fun lt!1883766 () Unit!128993)

(declare-fun choose!33270 (List!52903 K!14140 Hashable!6365) Unit!128993)

(assert (=> d!1501502 (= lt!1883766 (choose!33270 oldBucket!34 key!4653 hashF!1323))))

(assert (=> d!1501502 (noDuplicateKeys!1996 oldBucket!34)))

(assert (=> d!1501502 (= (lemmaGetPairDefinedThenContainsKey!310 oldBucket!34 key!4653 hashF!1323) lt!1883766)))

(declare-fun bs!1106018 () Bool)

(assert (= bs!1106018 d!1501502))

(assert (=> bs!1106018 m!5648843))

(declare-fun m!5649945 () Bool)

(assert (=> bs!1106018 m!5649945))

(assert (=> bs!1106018 m!5648719))

(assert (=> b!4717522 d!1501502))

(declare-fun d!1501504 () Bool)

(declare-fun res!1995392 () Bool)

(declare-fun e!2942461 () Bool)

(assert (=> d!1501504 (=> res!1995392 e!2942461)))

(assert (=> d!1501504 (= res!1995392 (and ((_ is Cons!52779) (t!360157 oldBucket!34)) (= (_1!30483 (h!59110 (t!360157 oldBucket!34))) key!4653)))))

(assert (=> d!1501504 (= (containsKey!3337 (t!360157 oldBucket!34) key!4653) e!2942461)))

(declare-fun b!4717955 () Bool)

(declare-fun e!2942462 () Bool)

(assert (=> b!4717955 (= e!2942461 e!2942462)))

(declare-fun res!1995393 () Bool)

(assert (=> b!4717955 (=> (not res!1995393) (not e!2942462))))

(assert (=> b!4717955 (= res!1995393 ((_ is Cons!52779) (t!360157 oldBucket!34)))))

(declare-fun b!4717956 () Bool)

(assert (=> b!4717956 (= e!2942462 (containsKey!3337 (t!360157 (t!360157 oldBucket!34)) key!4653))))

(assert (= (and d!1501504 (not res!1995392)) b!4717955))

(assert (= (and b!4717955 res!1995393) b!4717956))

(declare-fun m!5649947 () Bool)

(assert (=> b!4717956 m!5649947))

(assert (=> b!4717522 d!1501504))

(declare-fun d!1501506 () Bool)

(declare-fun res!1995394 () Bool)

(declare-fun e!2942463 () Bool)

(assert (=> d!1501506 (=> res!1995394 e!2942463)))

(assert (=> d!1501506 (= res!1995394 (and ((_ is Cons!52779) oldBucket!34) (= (_1!30483 (h!59110 oldBucket!34)) key!4653)))))

(assert (=> d!1501506 (= (containsKey!3337 oldBucket!34 key!4653) e!2942463)))

(declare-fun b!4717957 () Bool)

(declare-fun e!2942464 () Bool)

(assert (=> b!4717957 (= e!2942463 e!2942464)))

(declare-fun res!1995395 () Bool)

(assert (=> b!4717957 (=> (not res!1995395) (not e!2942464))))

(assert (=> b!4717957 (= res!1995395 ((_ is Cons!52779) oldBucket!34))))

(declare-fun b!4717958 () Bool)

(assert (=> b!4717958 (= e!2942464 (containsKey!3337 (t!360157 oldBucket!34) key!4653))))

(assert (= (and d!1501506 (not res!1995394)) b!4717957))

(assert (= (and b!4717957 res!1995395) b!4717958))

(assert (=> b!4717958 m!5648837))

(assert (=> b!4717522 d!1501506))

(declare-fun d!1501508 () Bool)

(declare-fun get!17711 (Option!12344) List!52903)

(assert (=> d!1501508 (= (apply!12445 lm!2023 lt!1883196) (get!17711 (getValueByKey!1940 (toList!5882 lm!2023) lt!1883196)))))

(declare-fun bs!1106019 () Bool)

(assert (= bs!1106019 d!1501508))

(declare-fun m!5649949 () Bool)

(assert (=> bs!1106019 m!5649949))

(assert (=> bs!1106019 m!5649949))

(declare-fun m!5649951 () Bool)

(assert (=> bs!1106019 m!5649951))

(assert (=> b!4717522 d!1501508))

(declare-fun d!1501510 () Bool)

(declare-fun e!2942470 () Bool)

(assert (=> d!1501510 e!2942470))

(declare-fun res!1995398 () Bool)

(assert (=> d!1501510 (=> res!1995398 e!2942470)))

(declare-fun lt!1883778 () Bool)

(assert (=> d!1501510 (= res!1995398 (not lt!1883778))))

(declare-fun lt!1883775 () Bool)

(assert (=> d!1501510 (= lt!1883778 lt!1883775)))

(declare-fun lt!1883776 () Unit!128993)

(declare-fun e!2942469 () Unit!128993)

(assert (=> d!1501510 (= lt!1883776 e!2942469)))

(declare-fun c!805755 () Bool)

(assert (=> d!1501510 (= c!805755 lt!1883775)))

(declare-fun containsKey!3341 (List!52904 (_ BitVec 64)) Bool)

(assert (=> d!1501510 (= lt!1883775 (containsKey!3341 (toList!5882 lm!2023) lt!1883196))))

(assert (=> d!1501510 (= (contains!16133 lm!2023 lt!1883196) lt!1883778)))

(declare-fun b!4717965 () Bool)

(declare-fun lt!1883777 () Unit!128993)

(assert (=> b!4717965 (= e!2942469 lt!1883777)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1831 (List!52904 (_ BitVec 64)) Unit!128993)

(assert (=> b!4717965 (= lt!1883777 (lemmaContainsKeyImpliesGetValueByKeyDefined!1831 (toList!5882 lm!2023) lt!1883196))))

(declare-fun isDefined!9598 (Option!12344) Bool)

(assert (=> b!4717965 (isDefined!9598 (getValueByKey!1940 (toList!5882 lm!2023) lt!1883196))))

(declare-fun b!4717966 () Bool)

(declare-fun Unit!129090 () Unit!128993)

(assert (=> b!4717966 (= e!2942469 Unit!129090)))

(declare-fun b!4717967 () Bool)

(assert (=> b!4717967 (= e!2942470 (isDefined!9598 (getValueByKey!1940 (toList!5882 lm!2023) lt!1883196)))))

(assert (= (and d!1501510 c!805755) b!4717965))

(assert (= (and d!1501510 (not c!805755)) b!4717966))

(assert (= (and d!1501510 (not res!1995398)) b!4717967))

(declare-fun m!5649953 () Bool)

(assert (=> d!1501510 m!5649953))

(declare-fun m!5649955 () Bool)

(assert (=> b!4717965 m!5649955))

(assert (=> b!4717965 m!5649949))

(assert (=> b!4717965 m!5649949))

(declare-fun m!5649957 () Bool)

(assert (=> b!4717965 m!5649957))

(assert (=> b!4717967 m!5649949))

(assert (=> b!4717967 m!5649949))

(assert (=> b!4717967 m!5649957))

(assert (=> b!4717522 d!1501510))

(declare-fun b!4717968 () Bool)

(declare-fun e!2942471 () Unit!128993)

(declare-fun Unit!129091 () Unit!128993)

(assert (=> b!4717968 (= e!2942471 Unit!129091)))

(declare-fun b!4717969 () Bool)

(declare-fun e!2942472 () Bool)

(assert (=> b!4717969 (= e!2942472 (contains!16136 (keys!18941 lt!1883161) key!4653))))

(declare-fun b!4717971 () Bool)

(declare-fun e!2942476 () Bool)

(assert (=> b!4717971 (= e!2942476 (not (contains!16136 (keys!18941 lt!1883161) key!4653)))))

(declare-fun b!4717972 () Bool)

(declare-fun e!2942473 () Unit!128993)

(declare-fun lt!1883785 () Unit!128993)

(assert (=> b!4717972 (= e!2942473 lt!1883785)))

(declare-fun lt!1883784 () Unit!128993)

(assert (=> b!4717972 (= lt!1883784 (lemmaContainsKeyImpliesGetValueByKeyDefined!1829 (toList!5881 lt!1883161) key!4653))))

(assert (=> b!4717972 (isDefined!9596 (getValueByKey!1938 (toList!5881 lt!1883161) key!4653))))

(declare-fun lt!1883782 () Unit!128993)

(assert (=> b!4717972 (= lt!1883782 lt!1883784)))

(assert (=> b!4717972 (= lt!1883785 (lemmaInListThenGetKeysListContains!931 (toList!5881 lt!1883161) key!4653))))

(declare-fun call!329848 () Bool)

(assert (=> b!4717972 call!329848))

(declare-fun b!4717973 () Bool)

(assert (=> b!4717973 (= e!2942473 e!2942471)))

(declare-fun c!805756 () Bool)

(assert (=> b!4717973 (= c!805756 call!329848)))

(declare-fun b!4717974 () Bool)

(declare-fun e!2942475 () List!52906)

(assert (=> b!4717974 (= e!2942475 (keys!18941 lt!1883161))))

(declare-fun b!4717975 () Bool)

(assert (=> b!4717975 false))

(declare-fun lt!1883780 () Unit!128993)

(declare-fun lt!1883779 () Unit!128993)

(assert (=> b!4717975 (= lt!1883780 lt!1883779)))

(assert (=> b!4717975 (containsKey!3339 (toList!5881 lt!1883161) key!4653)))

(assert (=> b!4717975 (= lt!1883779 (lemmaInGetKeysListThenContainsKey!935 (toList!5881 lt!1883161) key!4653))))

(declare-fun Unit!129092 () Unit!128993)

(assert (=> b!4717975 (= e!2942471 Unit!129092)))

(declare-fun d!1501512 () Bool)

(declare-fun e!2942474 () Bool)

(assert (=> d!1501512 e!2942474))

(declare-fun res!1995400 () Bool)

(assert (=> d!1501512 (=> res!1995400 e!2942474)))

(assert (=> d!1501512 (= res!1995400 e!2942476)))

(declare-fun res!1995401 () Bool)

(assert (=> d!1501512 (=> (not res!1995401) (not e!2942476))))

(declare-fun lt!1883781 () Bool)

(assert (=> d!1501512 (= res!1995401 (not lt!1883781))))

(declare-fun lt!1883786 () Bool)

(assert (=> d!1501512 (= lt!1883781 lt!1883786)))

(declare-fun lt!1883783 () Unit!128993)

(assert (=> d!1501512 (= lt!1883783 e!2942473)))

(declare-fun c!805757 () Bool)

(assert (=> d!1501512 (= c!805757 lt!1883786)))

(assert (=> d!1501512 (= lt!1883786 (containsKey!3339 (toList!5881 lt!1883161) key!4653))))

(assert (=> d!1501512 (= (contains!16131 lt!1883161 key!4653) lt!1883781)))

(declare-fun b!4717970 () Bool)

(assert (=> b!4717970 (= e!2942474 e!2942472)))

(declare-fun res!1995399 () Bool)

(assert (=> b!4717970 (=> (not res!1995399) (not e!2942472))))

(assert (=> b!4717970 (= res!1995399 (isDefined!9596 (getValueByKey!1938 (toList!5881 lt!1883161) key!4653)))))

(declare-fun bm!329843 () Bool)

(assert (=> bm!329843 (= call!329848 (contains!16136 e!2942475 key!4653))))

(declare-fun c!805758 () Bool)

(assert (=> bm!329843 (= c!805758 c!805757)))

(declare-fun b!4717976 () Bool)

(assert (=> b!4717976 (= e!2942475 (getKeysList!936 (toList!5881 lt!1883161)))))

(assert (= (and d!1501512 c!805757) b!4717972))

(assert (= (and d!1501512 (not c!805757)) b!4717973))

(assert (= (and b!4717973 c!805756) b!4717975))

(assert (= (and b!4717973 (not c!805756)) b!4717968))

(assert (= (or b!4717972 b!4717973) bm!329843))

(assert (= (and bm!329843 c!805758) b!4717976))

(assert (= (and bm!329843 (not c!805758)) b!4717974))

(assert (= (and d!1501512 res!1995401) b!4717971))

(assert (= (and d!1501512 (not res!1995400)) b!4717970))

(assert (= (and b!4717970 res!1995399) b!4717969))

(declare-fun m!5649959 () Bool)

(assert (=> b!4717974 m!5649959))

(declare-fun m!5649961 () Bool)

(assert (=> b!4717970 m!5649961))

(assert (=> b!4717970 m!5649961))

(declare-fun m!5649963 () Bool)

(assert (=> b!4717970 m!5649963))

(declare-fun m!5649965 () Bool)

(assert (=> bm!329843 m!5649965))

(declare-fun m!5649967 () Bool)

(assert (=> b!4717976 m!5649967))

(declare-fun m!5649969 () Bool)

(assert (=> d!1501512 m!5649969))

(assert (=> b!4717971 m!5649959))

(assert (=> b!4717971 m!5649959))

(declare-fun m!5649971 () Bool)

(assert (=> b!4717971 m!5649971))

(declare-fun m!5649973 () Bool)

(assert (=> b!4717972 m!5649973))

(assert (=> b!4717972 m!5649961))

(assert (=> b!4717972 m!5649961))

(assert (=> b!4717972 m!5649963))

(declare-fun m!5649975 () Bool)

(assert (=> b!4717972 m!5649975))

(assert (=> b!4717975 m!5649969))

(declare-fun m!5649977 () Bool)

(assert (=> b!4717975 m!5649977))

(assert (=> b!4717969 m!5649959))

(assert (=> b!4717969 m!5649959))

(assert (=> b!4717969 m!5649971))

(assert (=> b!4717521 d!1501512))

(declare-fun bs!1106020 () Bool)

(declare-fun d!1501514 () Bool)

(assert (= bs!1106020 (and d!1501514 start!479912)))

(declare-fun lambda!214501 () Int)

(assert (=> bs!1106020 (= lambda!214501 lambda!214343)))

(declare-fun bs!1106021 () Bool)

(assert (= bs!1106021 (and d!1501514 d!1501412)))

(assert (=> bs!1106021 (= lambda!214501 lambda!214484)))

(declare-fun bs!1106022 () Bool)

(assert (= bs!1106022 (and d!1501514 d!1501410)))

(assert (=> bs!1106022 (= lambda!214501 lambda!214480)))

(declare-fun bs!1106023 () Bool)

(assert (= bs!1106023 (and d!1501514 d!1501346)))

(assert (=> bs!1106023 (= lambda!214501 lambda!214466)))

(declare-fun bs!1106024 () Bool)

(assert (= bs!1106024 (and d!1501514 d!1501474)))

(assert (=> bs!1106024 (= lambda!214501 lambda!214500)))

(declare-fun bs!1106025 () Bool)

(assert (= bs!1106025 (and d!1501514 d!1501306)))

(assert (=> bs!1106025 (= lambda!214501 lambda!214445)))

(declare-fun bs!1106026 () Bool)

(assert (= bs!1106026 (and d!1501514 d!1501252)))

(assert (=> bs!1106026 (= lambda!214501 lambda!214352)))

(declare-fun bs!1106027 () Bool)

(assert (= bs!1106027 (and d!1501514 d!1501366)))

(assert (=> bs!1106027 (= lambda!214501 lambda!214468)))

(declare-fun bs!1106028 () Bool)

(assert (= bs!1106028 (and d!1501514 d!1501446)))

(assert (=> bs!1106028 (= lambda!214501 lambda!214488)))

(declare-fun bs!1106029 () Bool)

(assert (= bs!1106029 (and d!1501514 d!1501360)))

(assert (=> bs!1106029 (= lambda!214501 lambda!214467)))

(declare-fun bs!1106030 () Bool)

(assert (= bs!1106030 (and d!1501514 d!1501394)))

(assert (=> bs!1106030 (not (= lambda!214501 lambda!214471))))

(declare-fun bs!1106031 () Bool)

(assert (= bs!1106031 (and d!1501514 d!1501408)))

(assert (=> bs!1106031 (= lambda!214501 lambda!214479)))

(declare-fun bs!1106032 () Bool)

(assert (= bs!1106032 (and d!1501514 d!1501404)))

(assert (=> bs!1106032 (= lambda!214501 lambda!214476)))

(declare-fun lt!1883787 () ListMap!5245)

(assert (=> d!1501514 (invariantList!1496 (toList!5881 lt!1883787))))

(declare-fun e!2942477 () ListMap!5245)

(assert (=> d!1501514 (= lt!1883787 e!2942477)))

(declare-fun c!805759 () Bool)

(assert (=> d!1501514 (= c!805759 ((_ is Cons!52780) (toList!5882 lm!2023)))))

(assert (=> d!1501514 (forall!11549 (toList!5882 lm!2023) lambda!214501)))

(assert (=> d!1501514 (= (extractMap!2022 (toList!5882 lm!2023)) lt!1883787)))

(declare-fun b!4717977 () Bool)

(assert (=> b!4717977 (= e!2942477 (addToMapMapFromBucket!1426 (_2!30484 (h!59111 (toList!5882 lm!2023))) (extractMap!2022 (t!360158 (toList!5882 lm!2023)))))))

(declare-fun b!4717978 () Bool)

(assert (=> b!4717978 (= e!2942477 (ListMap!5246 Nil!52779))))

(assert (= (and d!1501514 c!805759) b!4717977))

(assert (= (and d!1501514 (not c!805759)) b!4717978))

(declare-fun m!5649979 () Bool)

(assert (=> d!1501514 m!5649979))

(declare-fun m!5649981 () Bool)

(assert (=> d!1501514 m!5649981))

(assert (=> b!4717977 m!5648723))

(assert (=> b!4717977 m!5648723))

(declare-fun m!5649983 () Bool)

(assert (=> b!4717977 m!5649983))

(assert (=> b!4717521 d!1501514))

(declare-fun d!1501516 () Bool)

(assert (=> d!1501516 (= (eq!1123 lt!1883180 lt!1883192) (= (content!9377 (toList!5881 lt!1883180)) (content!9377 (toList!5881 lt!1883192))))))

(declare-fun bs!1106033 () Bool)

(assert (= bs!1106033 d!1501516))

(declare-fun m!5649985 () Bool)

(assert (=> bs!1106033 m!5649985))

(assert (=> bs!1106033 m!5649475))

(assert (=> b!4717523 d!1501516))

(declare-fun d!1501518 () Bool)

(assert (=> d!1501518 (= (eq!1123 lt!1883163 lt!1883178) (= (content!9377 (toList!5881 lt!1883163)) (content!9377 (toList!5881 lt!1883178))))))

(declare-fun bs!1106034 () Bool)

(assert (= bs!1106034 d!1501518))

(assert (=> bs!1106034 m!5649491))

(declare-fun m!5649987 () Bool)

(assert (=> bs!1106034 m!5649987))

(assert (=> b!4717519 d!1501518))

(declare-fun bs!1106035 () Bool)

(declare-fun d!1501520 () Bool)

(assert (= bs!1106035 (and d!1501520 b!4717709)))

(declare-fun lambda!214502 () Int)

(assert (=> bs!1106035 (not (= lambda!214502 lambda!214433))))

(declare-fun bs!1106036 () Bool)

(assert (= bs!1106036 (and d!1501520 b!4717727)))

(assert (=> bs!1106036 (not (= lambda!214502 lambda!214446))))

(declare-fun bs!1106037 () Bool)

(assert (= bs!1106037 (and d!1501520 d!1501298)))

(assert (=> bs!1106037 (not (= lambda!214502 lambda!214444))))

(declare-fun bs!1106038 () Bool)

(assert (= bs!1106038 (and d!1501520 b!4717726)))

(assert (=> bs!1106038 (not (= lambda!214502 lambda!214447))))

(declare-fun bs!1106039 () Bool)

(assert (= bs!1106039 (and d!1501520 b!4717764)))

(assert (=> bs!1106039 (not (= lambda!214502 lambda!214459))))

(declare-fun bs!1106040 () Bool)

(assert (= bs!1106040 (and d!1501520 b!4717716)))

(assert (=> bs!1106040 (not (= lambda!214502 lambda!214440))))

(declare-fun bs!1106041 () Bool)

(assert (= bs!1106041 (and d!1501520 d!1501254)))

(assert (=> bs!1106041 (not (= lambda!214502 lambda!214438))))

(declare-fun bs!1106042 () Bool)

(assert (= bs!1106042 (and d!1501520 b!4717708)))

(assert (=> bs!1106042 (not (= lambda!214502 lambda!214434))))

(assert (=> bs!1106042 (not (= lambda!214502 lambda!214435))))

(declare-fun bs!1106043 () Bool)

(assert (= bs!1106043 (and d!1501520 d!1501340)))

(assert (=> bs!1106043 (not (= lambda!214502 lambda!214460))))

(declare-fun bs!1106044 () Bool)

(assert (= bs!1106044 (and d!1501520 d!1501308)))

(assert (=> bs!1106044 (not (= lambda!214502 lambda!214451))))

(declare-fun bs!1106045 () Bool)

(assert (= bs!1106045 (and d!1501520 b!4717715)))

(assert (=> bs!1106045 (not (= lambda!214502 lambda!214442))))

(assert (=> bs!1106045 (not (= lambda!214502 lambda!214443))))

(assert (=> bs!1106039 (not (= lambda!214502 lambda!214458))))

(declare-fun bs!1106046 () Bool)

(assert (= bs!1106046 (and d!1501520 b!4717765)))

(assert (=> bs!1106046 (not (= lambda!214502 lambda!214457))))

(declare-fun bs!1106047 () Bool)

(assert (= bs!1106047 (and d!1501520 d!1501228)))

(assert (=> bs!1106047 (= lambda!214502 lambda!214346)))

(assert (=> bs!1106038 (not (= lambda!214502 lambda!214449))))

(assert (=> d!1501520 true))

(assert (=> d!1501520 true))

(assert (=> d!1501520 (= (allKeysSameHash!1822 newBucket!218 hash!405 hashF!1323) (forall!11551 newBucket!218 lambda!214502))))

(declare-fun bs!1106048 () Bool)

(assert (= bs!1106048 d!1501520))

(declare-fun m!5649989 () Bool)

(assert (=> bs!1106048 m!5649989))

(assert (=> b!4717527 d!1501520))

(declare-fun d!1501522 () Bool)

(declare-fun res!1995406 () Bool)

(declare-fun e!2942482 () Bool)

(assert (=> d!1501522 (=> res!1995406 e!2942482)))

(assert (=> d!1501522 (= res!1995406 ((_ is Nil!52780) (toList!5882 lm!2023)))))

(assert (=> d!1501522 (= (forall!11549 (toList!5882 lm!2023) lambda!214343) e!2942482)))

(declare-fun b!4717983 () Bool)

(declare-fun e!2942483 () Bool)

(assert (=> b!4717983 (= e!2942482 e!2942483)))

(declare-fun res!1995407 () Bool)

(assert (=> b!4717983 (=> (not res!1995407) (not e!2942483))))

(assert (=> b!4717983 (= res!1995407 (dynLambda!21799 lambda!214343 (h!59111 (toList!5882 lm!2023))))))

(declare-fun b!4717984 () Bool)

(assert (=> b!4717984 (= e!2942483 (forall!11549 (t!360158 (toList!5882 lm!2023)) lambda!214343))))

(assert (= (and d!1501522 (not res!1995406)) b!4717983))

(assert (= (and b!4717983 res!1995407) b!4717984))

(declare-fun b_lambda!177815 () Bool)

(assert (=> (not b_lambda!177815) (not b!4717983)))

(declare-fun m!5649991 () Bool)

(assert (=> b!4717983 m!5649991))

(declare-fun m!5649993 () Bool)

(assert (=> b!4717984 m!5649993))

(assert (=> start!479912 d!1501522))

(declare-fun d!1501524 () Bool)

(declare-fun isStrictlySorted!735 (List!52904) Bool)

(assert (=> d!1501524 (= (inv!68014 lm!2023) (isStrictlySorted!735 (toList!5882 lm!2023)))))

(declare-fun bs!1106049 () Bool)

(assert (= bs!1106049 d!1501524))

(declare-fun m!5649995 () Bool)

(assert (=> bs!1106049 m!5649995))

(assert (=> start!479912 d!1501524))

(declare-fun d!1501526 () Bool)

(assert (=> d!1501526 (= (eq!1123 lt!1883179 lt!1883165) (= (content!9377 (toList!5881 lt!1883179)) (content!9377 (toList!5881 lt!1883165))))))

(declare-fun bs!1106050 () Bool)

(assert (= bs!1106050 d!1501526))

(assert (=> bs!1106050 m!5649587))

(assert (=> bs!1106050 m!5649489))

(assert (=> b!4717528 d!1501526))

(declare-fun d!1501528 () Bool)

(declare-fun e!2942484 () Bool)

(assert (=> d!1501528 e!2942484))

(declare-fun res!1995409 () Bool)

(assert (=> d!1501528 (=> (not res!1995409) (not e!2942484))))

(declare-fun lt!1883789 () ListMap!5245)

(assert (=> d!1501528 (= res!1995409 (contains!16131 lt!1883789 (_1!30483 (h!59110 oldBucket!34))))))

(declare-fun lt!1883788 () List!52903)

(assert (=> d!1501528 (= lt!1883789 (ListMap!5246 lt!1883788))))

(declare-fun lt!1883791 () Unit!128993)

(declare-fun lt!1883790 () Unit!128993)

(assert (=> d!1501528 (= lt!1883791 lt!1883790)))

(assert (=> d!1501528 (= (getValueByKey!1938 lt!1883788 (_1!30483 (h!59110 oldBucket!34))) (Some!12341 (_2!30483 (h!59110 oldBucket!34))))))

(assert (=> d!1501528 (= lt!1883790 (lemmaContainsTupThenGetReturnValue!1078 lt!1883788 (_1!30483 (h!59110 oldBucket!34)) (_2!30483 (h!59110 oldBucket!34))))))

(assert (=> d!1501528 (= lt!1883788 (insertNoDuplicatedKeys!586 (toList!5881 lt!1883175) (_1!30483 (h!59110 oldBucket!34)) (_2!30483 (h!59110 oldBucket!34))))))

(assert (=> d!1501528 (= (+!2256 lt!1883175 (h!59110 oldBucket!34)) lt!1883789)))

(declare-fun b!4717985 () Bool)

(declare-fun res!1995408 () Bool)

(assert (=> b!4717985 (=> (not res!1995408) (not e!2942484))))

(assert (=> b!4717985 (= res!1995408 (= (getValueByKey!1938 (toList!5881 lt!1883789) (_1!30483 (h!59110 oldBucket!34))) (Some!12341 (_2!30483 (h!59110 oldBucket!34)))))))

(declare-fun b!4717986 () Bool)

(assert (=> b!4717986 (= e!2942484 (contains!16137 (toList!5881 lt!1883789) (h!59110 oldBucket!34)))))

(assert (= (and d!1501528 res!1995409) b!4717985))

(assert (= (and b!4717985 res!1995408) b!4717986))

(declare-fun m!5649997 () Bool)

(assert (=> d!1501528 m!5649997))

(declare-fun m!5649999 () Bool)

(assert (=> d!1501528 m!5649999))

(declare-fun m!5650001 () Bool)

(assert (=> d!1501528 m!5650001))

(declare-fun m!5650003 () Bool)

(assert (=> d!1501528 m!5650003))

(declare-fun m!5650005 () Bool)

(assert (=> b!4717985 m!5650005))

(declare-fun m!5650007 () Bool)

(assert (=> b!4717986 m!5650007))

(assert (=> b!4717528 d!1501528))

(declare-fun d!1501530 () Bool)

(assert (=> d!1501530 (= (eq!1123 lt!1883170 (+!2256 lt!1883175 (h!59110 oldBucket!34))) (= (content!9377 (toList!5881 lt!1883170)) (content!9377 (toList!5881 (+!2256 lt!1883175 (h!59110 oldBucket!34))))))))

(declare-fun bs!1106051 () Bool)

(assert (= bs!1106051 d!1501530))

(declare-fun m!5650009 () Bool)

(assert (=> bs!1106051 m!5650009))

(declare-fun m!5650011 () Bool)

(assert (=> bs!1106051 m!5650011))

(assert (=> b!4717528 d!1501530))

(declare-fun d!1501532 () Bool)

(assert (=> d!1501532 (eq!1123 (+!2256 lt!1883184 (tuple2!54379 (_1!30483 (h!59110 oldBucket!34)) (_2!30483 (h!59110 oldBucket!34)))) (+!2256 lt!1883175 (tuple2!54379 (_1!30483 (h!59110 oldBucket!34)) (_2!30483 (h!59110 oldBucket!34)))))))

(declare-fun lt!1883794 () Unit!128993)

(declare-fun choose!33272 (ListMap!5245 ListMap!5245 K!14140 V!14386) Unit!128993)

(assert (=> d!1501532 (= lt!1883794 (choose!33272 lt!1883184 lt!1883175 (_1!30483 (h!59110 oldBucket!34)) (_2!30483 (h!59110 oldBucket!34))))))

(assert (=> d!1501532 (eq!1123 lt!1883184 lt!1883175)))

(assert (=> d!1501532 (= (lemmaAddToEqMapsPreservesEq!114 lt!1883184 lt!1883175 (_1!30483 (h!59110 oldBucket!34)) (_2!30483 (h!59110 oldBucket!34))) lt!1883794)))

(declare-fun bs!1106052 () Bool)

(assert (= bs!1106052 d!1501532))

(declare-fun m!5650013 () Bool)

(assert (=> bs!1106052 m!5650013))

(declare-fun m!5650015 () Bool)

(assert (=> bs!1106052 m!5650015))

(assert (=> bs!1106052 m!5650015))

(assert (=> bs!1106052 m!5650013))

(declare-fun m!5650017 () Bool)

(assert (=> bs!1106052 m!5650017))

(declare-fun m!5650019 () Bool)

(assert (=> bs!1106052 m!5650019))

(declare-fun m!5650021 () Bool)

(assert (=> bs!1106052 m!5650021))

(assert (=> b!4717528 d!1501532))

(declare-fun d!1501534 () Bool)

(assert (=> d!1501534 (= (eq!1123 lt!1883179 lt!1883178) (= (content!9377 (toList!5881 lt!1883179)) (content!9377 (toList!5881 lt!1883178))))))

(declare-fun bs!1106053 () Bool)

(assert (= bs!1106053 d!1501534))

(assert (=> bs!1106053 m!5649587))

(assert (=> bs!1106053 m!5649987))

(assert (=> b!4717526 d!1501534))

(declare-fun d!1501536 () Bool)

(assert (=> d!1501536 (= (eq!1123 lt!1883189 lt!1883178) (= (content!9377 (toList!5881 lt!1883189)) (content!9377 (toList!5881 lt!1883178))))))

(declare-fun bs!1106054 () Bool)

(assert (= bs!1106054 d!1501536))

(assert (=> bs!1106054 m!5649585))

(assert (=> bs!1106054 m!5649987))

(assert (=> b!4717526 d!1501536))

(declare-fun d!1501538 () Bool)

(declare-fun e!2942485 () Bool)

(assert (=> d!1501538 e!2942485))

(declare-fun res!1995410 () Bool)

(assert (=> d!1501538 (=> (not res!1995410) (not e!2942485))))

(declare-fun lt!1883795 () ListMap!5245)

(assert (=> d!1501538 (= res!1995410 (not (contains!16131 lt!1883795 key!4653)))))

(assert (=> d!1501538 (= lt!1883795 (ListMap!5246 (removePresrvNoDuplicatedKeys!399 (toList!5881 lt!1883192) key!4653)))))

(assert (=> d!1501538 (= (-!752 lt!1883192 key!4653) lt!1883795)))

(declare-fun b!4717987 () Bool)

(assert (=> b!4717987 (= e!2942485 (= ((_ map and) (content!9379 (keys!18941 lt!1883192)) ((_ map not) (store ((as const (Array K!14140 Bool)) false) key!4653 true))) (content!9379 (keys!18941 lt!1883795))))))

(assert (= (and d!1501538 res!1995410) b!4717987))

(declare-fun m!5650023 () Bool)

(assert (=> d!1501538 m!5650023))

(declare-fun m!5650025 () Bool)

(assert (=> d!1501538 m!5650025))

(declare-fun m!5650027 () Bool)

(assert (=> b!4717987 m!5650027))

(assert (=> b!4717987 m!5649527))

(declare-fun m!5650029 () Bool)

(assert (=> b!4717987 m!5650029))

(declare-fun m!5650031 () Bool)

(assert (=> b!4717987 m!5650031))

(assert (=> b!4717987 m!5650029))

(assert (=> b!4717987 m!5650027))

(declare-fun m!5650033 () Bool)

(assert (=> b!4717987 m!5650033))

(assert (=> b!4717526 d!1501538))

(declare-fun d!1501540 () Bool)

(assert (=> d!1501540 (eq!1123 (-!752 lt!1883180 key!4653) (-!752 lt!1883192 key!4653))))

(declare-fun lt!1883798 () Unit!128993)

(declare-fun choose!33273 (ListMap!5245 ListMap!5245 K!14140) Unit!128993)

(assert (=> d!1501540 (= lt!1883798 (choose!33273 lt!1883180 lt!1883192 key!4653))))

(assert (=> d!1501540 (eq!1123 lt!1883180 lt!1883192)))

(assert (=> d!1501540 (= (lemmaRemovePreservesEq!120 lt!1883180 lt!1883192 key!4653) lt!1883798)))

(declare-fun bs!1106055 () Bool)

(assert (= bs!1106055 d!1501540))

(assert (=> bs!1106055 m!5648855))

(assert (=> bs!1106055 m!5648771))

(assert (=> bs!1106055 m!5648855))

(declare-fun m!5650035 () Bool)

(assert (=> bs!1106055 m!5650035))

(assert (=> bs!1106055 m!5648771))

(declare-fun m!5650037 () Bool)

(assert (=> bs!1106055 m!5650037))

(assert (=> bs!1106055 m!5648825))

(assert (=> b!4717526 d!1501540))

(declare-fun bs!1106056 () Bool)

(declare-fun b!4717991 () Bool)

(assert (= bs!1106056 (and b!4717991 b!4717709)))

(declare-fun lambda!214503 () Int)

(assert (=> bs!1106056 (= lambda!214503 lambda!214433)))

(declare-fun bs!1106057 () Bool)

(assert (= bs!1106057 (and b!4717991 b!4717727)))

(assert (=> bs!1106057 (= lambda!214503 lambda!214446)))

(declare-fun bs!1106058 () Bool)

(assert (= bs!1106058 (and b!4717991 b!4717726)))

(assert (=> bs!1106058 (= lambda!214503 lambda!214447)))

(declare-fun bs!1106059 () Bool)

(assert (= bs!1106059 (and b!4717991 b!4717764)))

(assert (=> bs!1106059 (= (= lt!1883194 lt!1883564) (= lambda!214503 lambda!214459))))

(declare-fun bs!1106060 () Bool)

(assert (= bs!1106060 (and b!4717991 b!4717716)))

(assert (=> bs!1106060 (= lambda!214503 lambda!214440)))

(declare-fun bs!1106061 () Bool)

(assert (= bs!1106061 (and b!4717991 d!1501254)))

(assert (=> bs!1106061 (= (= lt!1883194 lt!1883488) (= lambda!214503 lambda!214438))))

(declare-fun bs!1106062 () Bool)

(assert (= bs!1106062 (and b!4717991 b!4717708)))

(assert (=> bs!1106062 (= lambda!214503 lambda!214434)))

(assert (=> bs!1106062 (= (= lt!1883194 lt!1883474) (= lambda!214503 lambda!214435))))

(declare-fun bs!1106063 () Bool)

(assert (= bs!1106063 (and b!4717991 d!1501340)))

(assert (=> bs!1106063 (= (= lt!1883194 lt!1883578) (= lambda!214503 lambda!214460))))

(declare-fun bs!1106064 () Bool)

(assert (= bs!1106064 (and b!4717991 d!1501308)))

(assert (=> bs!1106064 (= (= lt!1883194 lt!1883537) (= lambda!214503 lambda!214451))))

(declare-fun bs!1106065 () Bool)

(assert (= bs!1106065 (and b!4717991 d!1501520)))

(assert (=> bs!1106065 (not (= lambda!214503 lambda!214502))))

(declare-fun bs!1106066 () Bool)

(assert (= bs!1106066 (and b!4717991 d!1501298)))

(assert (=> bs!1106066 (= (= lt!1883194 lt!1883512) (= lambda!214503 lambda!214444))))

(declare-fun bs!1106067 () Bool)

(assert (= bs!1106067 (and b!4717991 b!4717715)))

(assert (=> bs!1106067 (= lambda!214503 lambda!214442)))

(assert (=> bs!1106067 (= (= lt!1883194 lt!1883498) (= lambda!214503 lambda!214443))))

(assert (=> bs!1106059 (= lambda!214503 lambda!214458)))

(declare-fun bs!1106068 () Bool)

(assert (= bs!1106068 (and b!4717991 b!4717765)))

(assert (=> bs!1106068 (= lambda!214503 lambda!214457)))

(declare-fun bs!1106069 () Bool)

(assert (= bs!1106069 (and b!4717991 d!1501228)))

(assert (=> bs!1106069 (not (= lambda!214503 lambda!214346))))

(assert (=> bs!1106058 (= (= lt!1883194 lt!1883523) (= lambda!214503 lambda!214449))))

(assert (=> b!4717991 true))

(declare-fun bs!1106070 () Bool)

(declare-fun b!4717990 () Bool)

(assert (= bs!1106070 (and b!4717990 b!4717709)))

(declare-fun lambda!214504 () Int)

(assert (=> bs!1106070 (= lambda!214504 lambda!214433)))

(declare-fun bs!1106071 () Bool)

(assert (= bs!1106071 (and b!4717990 b!4717727)))

(assert (=> bs!1106071 (= lambda!214504 lambda!214446)))

(declare-fun bs!1106072 () Bool)

(assert (= bs!1106072 (and b!4717990 b!4717726)))

(assert (=> bs!1106072 (= lambda!214504 lambda!214447)))

(declare-fun bs!1106073 () Bool)

(assert (= bs!1106073 (and b!4717990 b!4717764)))

(assert (=> bs!1106073 (= (= lt!1883194 lt!1883564) (= lambda!214504 lambda!214459))))

(declare-fun bs!1106074 () Bool)

(assert (= bs!1106074 (and b!4717990 b!4717716)))

(assert (=> bs!1106074 (= lambda!214504 lambda!214440)))

(declare-fun bs!1106075 () Bool)

(assert (= bs!1106075 (and b!4717990 d!1501254)))

(assert (=> bs!1106075 (= (= lt!1883194 lt!1883488) (= lambda!214504 lambda!214438))))

(declare-fun bs!1106076 () Bool)

(assert (= bs!1106076 (and b!4717990 b!4717708)))

(assert (=> bs!1106076 (= (= lt!1883194 lt!1883474) (= lambda!214504 lambda!214435))))

(declare-fun bs!1106077 () Bool)

(assert (= bs!1106077 (and b!4717990 d!1501340)))

(assert (=> bs!1106077 (= (= lt!1883194 lt!1883578) (= lambda!214504 lambda!214460))))

(declare-fun bs!1106078 () Bool)

(assert (= bs!1106078 (and b!4717990 d!1501308)))

(assert (=> bs!1106078 (= (= lt!1883194 lt!1883537) (= lambda!214504 lambda!214451))))

(declare-fun bs!1106079 () Bool)

(assert (= bs!1106079 (and b!4717990 d!1501520)))

(assert (=> bs!1106079 (not (= lambda!214504 lambda!214502))))

(declare-fun bs!1106080 () Bool)

(assert (= bs!1106080 (and b!4717990 d!1501298)))

(assert (=> bs!1106080 (= (= lt!1883194 lt!1883512) (= lambda!214504 lambda!214444))))

(declare-fun bs!1106081 () Bool)

(assert (= bs!1106081 (and b!4717990 b!4717715)))

(assert (=> bs!1106081 (= lambda!214504 lambda!214442)))

(assert (=> bs!1106081 (= (= lt!1883194 lt!1883498) (= lambda!214504 lambda!214443))))

(assert (=> bs!1106073 (= lambda!214504 lambda!214458)))

(declare-fun bs!1106082 () Bool)

(assert (= bs!1106082 (and b!4717990 b!4717765)))

(assert (=> bs!1106082 (= lambda!214504 lambda!214457)))

(declare-fun bs!1106083 () Bool)

(assert (= bs!1106083 (and b!4717990 d!1501228)))

(assert (=> bs!1106083 (not (= lambda!214504 lambda!214346))))

(assert (=> bs!1106072 (= (= lt!1883194 lt!1883523) (= lambda!214504 lambda!214449))))

(assert (=> bs!1106076 (= lambda!214504 lambda!214434)))

(declare-fun bs!1106084 () Bool)

(assert (= bs!1106084 (and b!4717990 b!4717991)))

(assert (=> bs!1106084 (= lambda!214504 lambda!214503)))

(assert (=> b!4717990 true))

(declare-fun lambda!214505 () Int)

(declare-fun lt!1883801 () ListMap!5245)

(assert (=> bs!1106070 (= (= lt!1883801 lt!1883194) (= lambda!214505 lambda!214433))))

(assert (=> bs!1106071 (= (= lt!1883801 lt!1883194) (= lambda!214505 lambda!214446))))

(assert (=> bs!1106072 (= (= lt!1883801 lt!1883194) (= lambda!214505 lambda!214447))))

(assert (=> bs!1106073 (= (= lt!1883801 lt!1883564) (= lambda!214505 lambda!214459))))

(assert (=> bs!1106074 (= (= lt!1883801 lt!1883194) (= lambda!214505 lambda!214440))))

(assert (=> bs!1106075 (= (= lt!1883801 lt!1883488) (= lambda!214505 lambda!214438))))

(assert (=> bs!1106077 (= (= lt!1883801 lt!1883578) (= lambda!214505 lambda!214460))))

(assert (=> bs!1106078 (= (= lt!1883801 lt!1883537) (= lambda!214505 lambda!214451))))

(assert (=> bs!1106079 (not (= lambda!214505 lambda!214502))))

(assert (=> bs!1106080 (= (= lt!1883801 lt!1883512) (= lambda!214505 lambda!214444))))

(assert (=> bs!1106081 (= (= lt!1883801 lt!1883194) (= lambda!214505 lambda!214442))))

(assert (=> bs!1106081 (= (= lt!1883801 lt!1883498) (= lambda!214505 lambda!214443))))

(assert (=> bs!1106073 (= (= lt!1883801 lt!1883194) (= lambda!214505 lambda!214458))))

(assert (=> bs!1106082 (= (= lt!1883801 lt!1883194) (= lambda!214505 lambda!214457))))

(assert (=> bs!1106083 (not (= lambda!214505 lambda!214346))))

(assert (=> bs!1106072 (= (= lt!1883801 lt!1883523) (= lambda!214505 lambda!214449))))

(assert (=> bs!1106076 (= (= lt!1883801 lt!1883194) (= lambda!214505 lambda!214434))))

(assert (=> bs!1106084 (= (= lt!1883801 lt!1883194) (= lambda!214505 lambda!214503))))

(assert (=> bs!1106076 (= (= lt!1883801 lt!1883474) (= lambda!214505 lambda!214435))))

(assert (=> b!4717990 (= (= lt!1883801 lt!1883194) (= lambda!214505 lambda!214504))))

(assert (=> b!4717990 true))

(declare-fun bs!1106085 () Bool)

(declare-fun d!1501542 () Bool)

(assert (= bs!1106085 (and d!1501542 b!4717709)))

(declare-fun lt!1883815 () ListMap!5245)

(declare-fun lambda!214506 () Int)

(assert (=> bs!1106085 (= (= lt!1883815 lt!1883194) (= lambda!214506 lambda!214433))))

(declare-fun bs!1106086 () Bool)

(assert (= bs!1106086 (and d!1501542 b!4717727)))

(assert (=> bs!1106086 (= (= lt!1883815 lt!1883194) (= lambda!214506 lambda!214446))))

(declare-fun bs!1106087 () Bool)

(assert (= bs!1106087 (and d!1501542 b!4717726)))

(assert (=> bs!1106087 (= (= lt!1883815 lt!1883194) (= lambda!214506 lambda!214447))))

(declare-fun bs!1106088 () Bool)

(assert (= bs!1106088 (and d!1501542 b!4717716)))

(assert (=> bs!1106088 (= (= lt!1883815 lt!1883194) (= lambda!214506 lambda!214440))))

(declare-fun bs!1106089 () Bool)

(assert (= bs!1106089 (and d!1501542 d!1501254)))

(assert (=> bs!1106089 (= (= lt!1883815 lt!1883488) (= lambda!214506 lambda!214438))))

(declare-fun bs!1106090 () Bool)

(assert (= bs!1106090 (and d!1501542 d!1501340)))

(assert (=> bs!1106090 (= (= lt!1883815 lt!1883578) (= lambda!214506 lambda!214460))))

(declare-fun bs!1106091 () Bool)

(assert (= bs!1106091 (and d!1501542 d!1501308)))

(assert (=> bs!1106091 (= (= lt!1883815 lt!1883537) (= lambda!214506 lambda!214451))))

(declare-fun bs!1106092 () Bool)

(assert (= bs!1106092 (and d!1501542 d!1501520)))

(assert (=> bs!1106092 (not (= lambda!214506 lambda!214502))))

(declare-fun bs!1106093 () Bool)

(assert (= bs!1106093 (and d!1501542 d!1501298)))

(assert (=> bs!1106093 (= (= lt!1883815 lt!1883512) (= lambda!214506 lambda!214444))))

(declare-fun bs!1106094 () Bool)

(assert (= bs!1106094 (and d!1501542 b!4717764)))

(assert (=> bs!1106094 (= (= lt!1883815 lt!1883564) (= lambda!214506 lambda!214459))))

(declare-fun bs!1106095 () Bool)

(assert (= bs!1106095 (and d!1501542 b!4717990)))

(assert (=> bs!1106095 (= (= lt!1883815 lt!1883801) (= lambda!214506 lambda!214505))))

(declare-fun bs!1106096 () Bool)

(assert (= bs!1106096 (and d!1501542 b!4717715)))

(assert (=> bs!1106096 (= (= lt!1883815 lt!1883194) (= lambda!214506 lambda!214442))))

(assert (=> bs!1106096 (= (= lt!1883815 lt!1883498) (= lambda!214506 lambda!214443))))

(assert (=> bs!1106094 (= (= lt!1883815 lt!1883194) (= lambda!214506 lambda!214458))))

(declare-fun bs!1106097 () Bool)

(assert (= bs!1106097 (and d!1501542 b!4717765)))

(assert (=> bs!1106097 (= (= lt!1883815 lt!1883194) (= lambda!214506 lambda!214457))))

(declare-fun bs!1106098 () Bool)

(assert (= bs!1106098 (and d!1501542 d!1501228)))

(assert (=> bs!1106098 (not (= lambda!214506 lambda!214346))))

(assert (=> bs!1106087 (= (= lt!1883815 lt!1883523) (= lambda!214506 lambda!214449))))

(declare-fun bs!1106099 () Bool)

(assert (= bs!1106099 (and d!1501542 b!4717708)))

(assert (=> bs!1106099 (= (= lt!1883815 lt!1883194) (= lambda!214506 lambda!214434))))

(declare-fun bs!1106100 () Bool)

(assert (= bs!1106100 (and d!1501542 b!4717991)))

(assert (=> bs!1106100 (= (= lt!1883815 lt!1883194) (= lambda!214506 lambda!214503))))

(assert (=> bs!1106099 (= (= lt!1883815 lt!1883474) (= lambda!214506 lambda!214435))))

(assert (=> bs!1106095 (= (= lt!1883815 lt!1883194) (= lambda!214506 lambda!214504))))

(assert (=> d!1501542 true))

(declare-fun e!2942487 () Bool)

(assert (=> d!1501542 e!2942487))

(declare-fun res!1995411 () Bool)

(assert (=> d!1501542 (=> (not res!1995411) (not e!2942487))))

(assert (=> d!1501542 (= res!1995411 (forall!11551 (_2!30484 (h!59111 (toList!5882 lm!2023))) lambda!214506))))

(declare-fun e!2942486 () ListMap!5245)

(assert (=> d!1501542 (= lt!1883815 e!2942486)))

(declare-fun c!805760 () Bool)

(assert (=> d!1501542 (= c!805760 ((_ is Nil!52779) (_2!30484 (h!59111 (toList!5882 lm!2023)))))))

(assert (=> d!1501542 (noDuplicateKeys!1996 (_2!30484 (h!59111 (toList!5882 lm!2023))))))

(assert (=> d!1501542 (= (addToMapMapFromBucket!1426 (_2!30484 (h!59111 (toList!5882 lm!2023))) lt!1883194) lt!1883815)))

(declare-fun b!4717988 () Bool)

(declare-fun res!1995413 () Bool)

(assert (=> b!4717988 (=> (not res!1995413) (not e!2942487))))

(assert (=> b!4717988 (= res!1995413 (forall!11551 (toList!5881 lt!1883194) lambda!214506))))

(declare-fun b!4717989 () Bool)

(assert (=> b!4717989 (= e!2942487 (invariantList!1496 (toList!5881 lt!1883815)))))

(declare-fun lt!1883813 () ListMap!5245)

(declare-fun bm!329844 () Bool)

(declare-fun call!329851 () Bool)

(assert (=> bm!329844 (= call!329851 (forall!11551 (ite c!805760 (toList!5881 lt!1883194) (toList!5881 lt!1883813)) (ite c!805760 lambda!214503 lambda!214505)))))

(declare-fun bm!329845 () Bool)

(declare-fun call!329850 () Unit!128993)

(assert (=> bm!329845 (= call!329850 (lemmaContainsAllItsOwnKeys!784 lt!1883194))))

(assert (=> b!4717990 (= e!2942486 lt!1883801)))

(assert (=> b!4717990 (= lt!1883813 (+!2256 lt!1883194 (h!59110 (_2!30484 (h!59111 (toList!5882 lm!2023))))))))

(assert (=> b!4717990 (= lt!1883801 (addToMapMapFromBucket!1426 (t!360157 (_2!30484 (h!59111 (toList!5882 lm!2023)))) (+!2256 lt!1883194 (h!59110 (_2!30484 (h!59111 (toList!5882 lm!2023)))))))))

(declare-fun lt!1883808 () Unit!128993)

(assert (=> b!4717990 (= lt!1883808 call!329850)))

(assert (=> b!4717990 (forall!11551 (toList!5881 lt!1883194) lambda!214504)))

(declare-fun lt!1883814 () Unit!128993)

(assert (=> b!4717990 (= lt!1883814 lt!1883808)))

(assert (=> b!4717990 call!329851))

(declare-fun lt!1883800 () Unit!128993)

(declare-fun Unit!129104 () Unit!128993)

(assert (=> b!4717990 (= lt!1883800 Unit!129104)))

(assert (=> b!4717990 (forall!11551 (t!360157 (_2!30484 (h!59111 (toList!5882 lm!2023)))) lambda!214505)))

(declare-fun lt!1883803 () Unit!128993)

(declare-fun Unit!129105 () Unit!128993)

(assert (=> b!4717990 (= lt!1883803 Unit!129105)))

(declare-fun lt!1883812 () Unit!128993)

(declare-fun Unit!129106 () Unit!128993)

(assert (=> b!4717990 (= lt!1883812 Unit!129106)))

(declare-fun lt!1883819 () Unit!128993)

(assert (=> b!4717990 (= lt!1883819 (forallContained!3620 (toList!5881 lt!1883813) lambda!214505 (h!59110 (_2!30484 (h!59111 (toList!5882 lm!2023))))))))

(assert (=> b!4717990 (contains!16131 lt!1883813 (_1!30483 (h!59110 (_2!30484 (h!59111 (toList!5882 lm!2023))))))))

(declare-fun lt!1883807 () Unit!128993)

(declare-fun Unit!129107 () Unit!128993)

(assert (=> b!4717990 (= lt!1883807 Unit!129107)))

(assert (=> b!4717990 (contains!16131 lt!1883801 (_1!30483 (h!59110 (_2!30484 (h!59111 (toList!5882 lm!2023))))))))

(declare-fun lt!1883804 () Unit!128993)

(declare-fun Unit!129108 () Unit!128993)

(assert (=> b!4717990 (= lt!1883804 Unit!129108)))

(assert (=> b!4717990 (forall!11551 (_2!30484 (h!59111 (toList!5882 lm!2023))) lambda!214505)))

(declare-fun lt!1883805 () Unit!128993)

(declare-fun Unit!129109 () Unit!128993)

(assert (=> b!4717990 (= lt!1883805 Unit!129109)))

(declare-fun call!329849 () Bool)

(assert (=> b!4717990 call!329849))

(declare-fun lt!1883817 () Unit!128993)

(declare-fun Unit!129110 () Unit!128993)

(assert (=> b!4717990 (= lt!1883817 Unit!129110)))

(declare-fun lt!1883816 () Unit!128993)

(declare-fun Unit!129111 () Unit!128993)

(assert (=> b!4717990 (= lt!1883816 Unit!129111)))

(declare-fun lt!1883802 () Unit!128993)

(assert (=> b!4717990 (= lt!1883802 (addForallContainsKeyThenBeforeAdding!783 lt!1883194 lt!1883801 (_1!30483 (h!59110 (_2!30484 (h!59111 (toList!5882 lm!2023))))) (_2!30483 (h!59110 (_2!30484 (h!59111 (toList!5882 lm!2023)))))))))

(assert (=> b!4717990 (forall!11551 (toList!5881 lt!1883194) lambda!214505)))

(declare-fun lt!1883799 () Unit!128993)

(assert (=> b!4717990 (= lt!1883799 lt!1883802)))

(assert (=> b!4717990 (forall!11551 (toList!5881 lt!1883194) lambda!214505)))

(declare-fun lt!1883818 () Unit!128993)

(declare-fun Unit!129112 () Unit!128993)

(assert (=> b!4717990 (= lt!1883818 Unit!129112)))

(declare-fun res!1995412 () Bool)

(assert (=> b!4717990 (= res!1995412 (forall!11551 (_2!30484 (h!59111 (toList!5882 lm!2023))) lambda!214505))))

(declare-fun e!2942488 () Bool)

(assert (=> b!4717990 (=> (not res!1995412) (not e!2942488))))

(assert (=> b!4717990 e!2942488))

(declare-fun lt!1883809 () Unit!128993)

(declare-fun Unit!129113 () Unit!128993)

(assert (=> b!4717990 (= lt!1883809 Unit!129113)))

(declare-fun bm!329846 () Bool)

(assert (=> bm!329846 (= call!329849 (forall!11551 (ite c!805760 (toList!5881 lt!1883194) (toList!5881 lt!1883813)) (ite c!805760 lambda!214503 lambda!214505)))))

(assert (=> b!4717991 (= e!2942486 lt!1883194)))

(declare-fun lt!1883806 () Unit!128993)

(assert (=> b!4717991 (= lt!1883806 call!329850)))

(assert (=> b!4717991 call!329851))

(declare-fun lt!1883810 () Unit!128993)

(assert (=> b!4717991 (= lt!1883810 lt!1883806)))

(assert (=> b!4717991 call!329849))

(declare-fun lt!1883811 () Unit!128993)

(declare-fun Unit!129114 () Unit!128993)

(assert (=> b!4717991 (= lt!1883811 Unit!129114)))

(declare-fun b!4717992 () Bool)

(assert (=> b!4717992 (= e!2942488 (forall!11551 (toList!5881 lt!1883194) lambda!214505))))

(assert (= (and d!1501542 c!805760) b!4717991))

(assert (= (and d!1501542 (not c!805760)) b!4717990))

(assert (= (and b!4717990 res!1995412) b!4717992))

(assert (= (or b!4717991 b!4717990) bm!329845))

(assert (= (or b!4717991 b!4717990) bm!329844))

(assert (= (or b!4717991 b!4717990) bm!329846))

(assert (= (and d!1501542 res!1995411) b!4717988))

(assert (= (and b!4717988 res!1995413) b!4717989))

(declare-fun m!5650039 () Bool)

(assert (=> d!1501542 m!5650039))

(declare-fun m!5650041 () Bool)

(assert (=> d!1501542 m!5650041))

(assert (=> bm!329845 m!5649175))

(declare-fun m!5650043 () Bool)

(assert (=> b!4717992 m!5650043))

(declare-fun m!5650045 () Bool)

(assert (=> bm!329846 m!5650045))

(declare-fun m!5650047 () Bool)

(assert (=> b!4717990 m!5650047))

(declare-fun m!5650049 () Bool)

(assert (=> b!4717990 m!5650049))

(declare-fun m!5650051 () Bool)

(assert (=> b!4717990 m!5650051))

(declare-fun m!5650053 () Bool)

(assert (=> b!4717990 m!5650053))

(declare-fun m!5650055 () Bool)

(assert (=> b!4717990 m!5650055))

(assert (=> b!4717990 m!5650049))

(assert (=> b!4717990 m!5650043))

(declare-fun m!5650057 () Bool)

(assert (=> b!4717990 m!5650057))

(assert (=> b!4717990 m!5650055))

(declare-fun m!5650059 () Bool)

(assert (=> b!4717990 m!5650059))

(declare-fun m!5650061 () Bool)

(assert (=> b!4717990 m!5650061))

(declare-fun m!5650063 () Bool)

(assert (=> b!4717990 m!5650063))

(assert (=> b!4717990 m!5650043))

(assert (=> bm!329844 m!5650045))

(declare-fun m!5650065 () Bool)

(assert (=> b!4717989 m!5650065))

(declare-fun m!5650067 () Bool)

(assert (=> b!4717988 m!5650067))

(assert (=> b!4717525 d!1501542))

(declare-fun bs!1106101 () Bool)

(declare-fun d!1501544 () Bool)

(assert (= bs!1106101 (and d!1501544 start!479912)))

(declare-fun lambda!214507 () Int)

(assert (=> bs!1106101 (= lambda!214507 lambda!214343)))

(declare-fun bs!1106102 () Bool)

(assert (= bs!1106102 (and d!1501544 d!1501412)))

(assert (=> bs!1106102 (= lambda!214507 lambda!214484)))

(declare-fun bs!1106103 () Bool)

(assert (= bs!1106103 (and d!1501544 d!1501410)))

(assert (=> bs!1106103 (= lambda!214507 lambda!214480)))

(declare-fun bs!1106104 () Bool)

(assert (= bs!1106104 (and d!1501544 d!1501346)))

(assert (=> bs!1106104 (= lambda!214507 lambda!214466)))

(declare-fun bs!1106105 () Bool)

(assert (= bs!1106105 (and d!1501544 d!1501474)))

(assert (=> bs!1106105 (= lambda!214507 lambda!214500)))

(declare-fun bs!1106106 () Bool)

(assert (= bs!1106106 (and d!1501544 d!1501514)))

(assert (=> bs!1106106 (= lambda!214507 lambda!214501)))

(declare-fun bs!1106107 () Bool)

(assert (= bs!1106107 (and d!1501544 d!1501306)))

(assert (=> bs!1106107 (= lambda!214507 lambda!214445)))

(declare-fun bs!1106108 () Bool)

(assert (= bs!1106108 (and d!1501544 d!1501252)))

(assert (=> bs!1106108 (= lambda!214507 lambda!214352)))

(declare-fun bs!1106109 () Bool)

(assert (= bs!1106109 (and d!1501544 d!1501366)))

(assert (=> bs!1106109 (= lambda!214507 lambda!214468)))

(declare-fun bs!1106110 () Bool)

(assert (= bs!1106110 (and d!1501544 d!1501446)))

(assert (=> bs!1106110 (= lambda!214507 lambda!214488)))

(declare-fun bs!1106111 () Bool)

(assert (= bs!1106111 (and d!1501544 d!1501360)))

(assert (=> bs!1106111 (= lambda!214507 lambda!214467)))

(declare-fun bs!1106112 () Bool)

(assert (= bs!1106112 (and d!1501544 d!1501394)))

(assert (=> bs!1106112 (not (= lambda!214507 lambda!214471))))

(declare-fun bs!1106113 () Bool)

(assert (= bs!1106113 (and d!1501544 d!1501408)))

(assert (=> bs!1106113 (= lambda!214507 lambda!214479)))

(declare-fun bs!1106114 () Bool)

(assert (= bs!1106114 (and d!1501544 d!1501404)))

(assert (=> bs!1106114 (= lambda!214507 lambda!214476)))

(declare-fun lt!1883820 () ListMap!5245)

(assert (=> d!1501544 (invariantList!1496 (toList!5881 lt!1883820))))

(declare-fun e!2942489 () ListMap!5245)

(assert (=> d!1501544 (= lt!1883820 e!2942489)))

(declare-fun c!805761 () Bool)

(assert (=> d!1501544 (= c!805761 ((_ is Cons!52780) (t!360158 (toList!5882 lm!2023))))))

(assert (=> d!1501544 (forall!11549 (t!360158 (toList!5882 lm!2023)) lambda!214507)))

(assert (=> d!1501544 (= (extractMap!2022 (t!360158 (toList!5882 lm!2023))) lt!1883820)))

(declare-fun b!4717993 () Bool)

(assert (=> b!4717993 (= e!2942489 (addToMapMapFromBucket!1426 (_2!30484 (h!59111 (t!360158 (toList!5882 lm!2023)))) (extractMap!2022 (t!360158 (t!360158 (toList!5882 lm!2023))))))))

(declare-fun b!4717994 () Bool)

(assert (=> b!4717994 (= e!2942489 (ListMap!5246 Nil!52779))))

(assert (= (and d!1501544 c!805761) b!4717993))

(assert (= (and d!1501544 (not c!805761)) b!4717994))

(declare-fun m!5650069 () Bool)

(assert (=> d!1501544 m!5650069))

(declare-fun m!5650071 () Bool)

(assert (=> d!1501544 m!5650071))

(declare-fun m!5650073 () Bool)

(assert (=> b!4717993 m!5650073))

(assert (=> b!4717993 m!5650073))

(declare-fun m!5650075 () Bool)

(assert (=> b!4717993 m!5650075))

(assert (=> b!4717525 d!1501544))

(declare-fun d!1501546 () Bool)

(assert (=> d!1501546 (= (tail!8964 lm!2023) (ListLongMap!4412 (tail!8962 (toList!5882 lm!2023))))))

(declare-fun bs!1106115 () Bool)

(assert (= bs!1106115 d!1501546))

(declare-fun m!5650077 () Bool)

(assert (=> bs!1106115 m!5650077))

(assert (=> b!4717525 d!1501546))

(declare-fun e!2942492 () Bool)

(declare-fun tp!1348068 () Bool)

(declare-fun b!4717999 () Bool)

(assert (=> b!4717999 (= e!2942492 (and tp_is_empty!31277 tp_is_empty!31279 tp!1348068))))

(assert (=> b!4717524 (= tp!1348055 e!2942492)))

(assert (= (and b!4717524 ((_ is Cons!52779) (t!360157 newBucket!218))) b!4717999))

(declare-fun b!4718004 () Bool)

(declare-fun e!2942495 () Bool)

(declare-fun tp!1348073 () Bool)

(declare-fun tp!1348074 () Bool)

(assert (=> b!4718004 (= e!2942495 (and tp!1348073 tp!1348074))))

(assert (=> b!4717531 (= tp!1348053 e!2942495)))

(assert (= (and b!4717531 ((_ is Cons!52780) (toList!5882 lm!2023))) b!4718004))

(declare-fun tp!1348075 () Bool)

(declare-fun e!2942496 () Bool)

(declare-fun b!4718005 () Bool)

(assert (=> b!4718005 (= e!2942496 (and tp_is_empty!31277 tp_is_empty!31279 tp!1348075))))

(assert (=> b!4717515 (= tp!1348054 e!2942496)))

(assert (= (and b!4717515 ((_ is Cons!52779) (t!360157 oldBucket!34))) b!4718005))

(declare-fun b_lambda!177817 () Bool)

(assert (= b_lambda!177809 (or start!479912 b_lambda!177817)))

(declare-fun bs!1106116 () Bool)

(declare-fun d!1501548 () Bool)

(assert (= bs!1106116 (and d!1501548 start!479912)))

(assert (=> bs!1106116 (= (dynLambda!21799 lambda!214343 lt!1883183) (noDuplicateKeys!1996 (_2!30484 lt!1883183)))))

(declare-fun m!5650079 () Bool)

(assert (=> bs!1106116 m!5650079))

(assert (=> d!1501444 d!1501548))

(declare-fun b_lambda!177819 () Bool)

(assert (= b_lambda!177815 (or start!479912 b_lambda!177819)))

(declare-fun bs!1106117 () Bool)

(declare-fun d!1501550 () Bool)

(assert (= bs!1106117 (and d!1501550 start!479912)))

(assert (=> bs!1106117 (= (dynLambda!21799 lambda!214343 (h!59111 (toList!5882 lm!2023))) (noDuplicateKeys!1996 (_2!30484 (h!59111 (toList!5882 lm!2023)))))))

(assert (=> bs!1106117 m!5650041))

(assert (=> b!4717983 d!1501550))

(check-sat (not d!1501512) (not b!4717726) (not b!4717796) (not d!1501370) (not d!1501396) (not b!4717714) (not b!4717791) (not b!4717967) (not b!4717559) (not d!1501384) (not d!1501228) (not d!1501428) (not b!4717793) (not b!4717986) (not b!4717720) (not b!4717794) (not b!4717606) (not bm!329844) (not b!4717805) (not d!1501360) (not d!1501376) (not bm!329843) (not b!4717604) (not b!4717965) (not bm!329833) (not b!4717558) (not d!1501388) (not b!4717713) (not bm!329834) (not b!4717603) (not b!4717993) (not b!4717819) (not b!4717985) (not d!1501252) (not b!4717975) (not b!4717623) (not b!4717799) (not d!1501526) (not d!1501426) (not b!4717865) (not d!1501540) (not d!1501304) (not b!4717602) (not d!1501238) (not b!4717807) (not d!1501378) (not d!1501362) (not d!1501386) (not d!1501446) (not d!1501410) (not b!4717614) tp_is_empty!31279 (not b!4717608) (not bm!329827) (not d!1501430) (not b!4717821) (not d!1501514) (not d!1501298) (not bs!1106117) (not b!4717601) (not d!1501538) (not b!4717762) (not bm!329828) (not bm!329845) (not d!1501400) (not b!4717607) (not d!1501254) (not d!1501394) (not d!1501532) (not d!1501404) (not d!1501308) (not b!4717976) (not d!1501524) (not d!1501516) (not d!1501520) (not b!4717552) (not d!1501398) (not b!4717710) (not b!4717948) (not b!4717990) tp_is_empty!31277 (not bm!329799) (not b!4717956) (not d!1501544) (not d!1501436) (not d!1501518) (not b!4717715) (not d!1501346) (not d!1501340) (not b!4717725) (not d!1501530) (not b!4717947) (not d!1501324) (not d!1501474) (not b!4717724) (not b!4717898) (not bm!329838) (not b!4717786) (not d!1501230) (not b!4717785) (not b!4717950) (not b!4717792) (not b!4717969) (not b!4717613) (not d!1501412) (not b_lambda!177819) (not b!4717717) (not b!4717706) (not b!4717787) (not b!4717763) (not b!4717949) (not b!4717708) (not d!1501542) (not bm!329832) (not b!4717707) (not b!4717728) (not b!4717992) (not d!1501406) (not b!4717987) (not b!4717795) (not b!4717788) (not b!4717783) (not b!4717984) (not d!1501502) (not bm!329835) (not bm!329829) (not bm!329839) (not d!1501366) (not d!1501250) (not d!1501354) (not b!4717781) (not d!1501424) (not b!4717760) (not b!4717897) (not d!1501356) (not d!1501380) (not d!1501374) (not d!1501444) (not d!1501536) (not bm!329837) (not d!1501534) (not b!4717974) (not d!1501306) (not b!4717970) (not d!1501460) (not b!4717818) (not d!1501510) (not d!1501408) (not b!4717891) (not d!1501358) (not b!4717901) (not b!4717958) (not b!4718005) (not b!4718004) (not bm!329831) (not b!4717972) (not b!4717780) (not b!4717977) (not d!1501546) (not d!1501528) (not b!4717999) (not bm!329846) (not bs!1106116) (not b_lambda!177817) (not d!1501508) (not bm!329830) (not b!4717988) (not d!1501336) (not b!4717893) (not d!1501364) (not b!4717761) (not b!4717989) (not b!4717764) (not b!4717766) (not b!4717779) (not d!1501382) (not b!4717808) (not b!4717971) (not b!4717896))
(check-sat)
