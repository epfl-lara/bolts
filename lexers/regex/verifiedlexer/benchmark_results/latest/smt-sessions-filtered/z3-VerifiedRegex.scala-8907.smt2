; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!477988 () Bool)

(assert start!477988)

(declare-fun b!4706371 () Bool)

(declare-fun res!1988041 () Bool)

(declare-fun e!2935754 () Bool)

(assert (=> b!4706371 (=> (not res!1988041) (not e!2935754))))

(declare-datatypes ((K!13940 0))(
  ( (K!13941 (val!19423 Int)) )
))
(declare-datatypes ((V!14186 0))(
  ( (V!14187 (val!19424 Int)) )
))
(declare-datatypes ((tuple2!54058 0))(
  ( (tuple2!54059 (_1!30323 K!13940) (_2!30323 V!14186)) )
))
(declare-datatypes ((List!52709 0))(
  ( (Nil!52585) (Cons!52585 (h!58882 tuple2!54058) (t!359937 List!52709)) )
))
(declare-fun newBucket!218 () List!52709)

(declare-fun noDuplicateKeys!1916 (List!52709) Bool)

(assert (=> b!4706371 (= res!1988041 (noDuplicateKeys!1916 newBucket!218))))

(declare-fun b!4706372 () Bool)

(declare-fun res!1988043 () Bool)

(declare-fun e!2935761 () Bool)

(assert (=> b!4706372 (=> res!1988043 e!2935761)))

(declare-datatypes ((ListMap!5085 0))(
  ( (ListMap!5086 (toList!5721 List!52709)) )
))
(declare-fun lt!1871222 () ListMap!5085)

(declare-fun lt!1871221 () ListMap!5085)

(declare-fun eq!1075 (ListMap!5085 ListMap!5085) Bool)

(assert (=> b!4706372 (= res!1988043 (not (eq!1075 lt!1871222 lt!1871221)))))

(declare-fun b!4706373 () Bool)

(declare-fun e!2935747 () Bool)

(declare-fun e!2935757 () Bool)

(assert (=> b!4706373 (= e!2935747 e!2935757)))

(declare-fun res!1988055 () Bool)

(assert (=> b!4706373 (=> res!1988055 e!2935757)))

(declare-fun oldBucket!34 () List!52709)

(declare-fun key!4653 () K!13940)

(declare-fun containsKey!3219 (List!52709 K!13940) Bool)

(assert (=> b!4706373 (= res!1988055 (not (containsKey!3219 (t!359937 oldBucket!34) key!4653)))))

(assert (=> b!4706373 (containsKey!3219 oldBucket!34 key!4653)))

(declare-datatypes ((Unit!127236 0))(
  ( (Unit!127237) )
))
(declare-fun lt!1871229 () Unit!127236)

(declare-datatypes ((Hashable!6285 0))(
  ( (HashableExt!6284 (__x!31988 Int)) )
))
(declare-fun hashF!1323 () Hashable!6285)

(declare-fun lemmaGetPairDefinedThenContainsKey!268 (List!52709 K!13940 Hashable!6285) Unit!127236)

(assert (=> b!4706373 (= lt!1871229 (lemmaGetPairDefinedThenContainsKey!268 oldBucket!34 key!4653 hashF!1323))))

(declare-fun lt!1871210 () List!52709)

(declare-datatypes ((Option!12243 0))(
  ( (None!12242) (Some!12242 (v!46761 tuple2!54058)) )
))
(declare-fun isDefined!9498 (Option!12243) Bool)

(declare-fun getPair!520 (List!52709 K!13940) Option!12243)

(assert (=> b!4706373 (isDefined!9498 (getPair!520 lt!1871210 key!4653))))

(declare-datatypes ((tuple2!54060 0))(
  ( (tuple2!54061 (_1!30324 (_ BitVec 64)) (_2!30324 List!52709)) )
))
(declare-datatypes ((List!52710 0))(
  ( (Nil!52586) (Cons!52586 (h!58883 tuple2!54060) (t!359938 List!52710)) )
))
(declare-datatypes ((ListLongMap!4251 0))(
  ( (ListLongMap!4252 (toList!5722 List!52710)) )
))
(declare-fun lm!2023 () ListLongMap!4251)

(declare-fun lt!1871197 () Unit!127236)

(declare-fun lambda!211681 () Int)

(declare-fun lt!1871204 () tuple2!54060)

(declare-fun forallContained!3542 (List!52710 Int tuple2!54060) Unit!127236)

(assert (=> b!4706373 (= lt!1871197 (forallContained!3542 (toList!5722 lm!2023) lambda!211681 lt!1871204))))

(declare-fun contains!15898 (List!52710 tuple2!54060) Bool)

(assert (=> b!4706373 (contains!15898 (toList!5722 lm!2023) lt!1871204)))

(declare-fun lt!1871219 () (_ BitVec 64))

(assert (=> b!4706373 (= lt!1871204 (tuple2!54061 lt!1871219 lt!1871210))))

(declare-fun lt!1871230 () Unit!127236)

(declare-fun lemmaGetValueImpliesTupleContained!325 (ListLongMap!4251 (_ BitVec 64) List!52709) Unit!127236)

(assert (=> b!4706373 (= lt!1871230 (lemmaGetValueImpliesTupleContained!325 lm!2023 lt!1871219 lt!1871210))))

(declare-fun apply!12399 (ListLongMap!4251 (_ BitVec 64)) List!52709)

(assert (=> b!4706373 (= lt!1871210 (apply!12399 lm!2023 lt!1871219))))

(declare-fun contains!15899 (ListLongMap!4251 (_ BitVec 64)) Bool)

(assert (=> b!4706373 (contains!15899 lm!2023 lt!1871219)))

(declare-fun lt!1871215 () Unit!127236)

(declare-fun lemmaInGenMapThenLongMapContainsHash!726 (ListLongMap!4251 K!13940 Hashable!6285) Unit!127236)

(assert (=> b!4706373 (= lt!1871215 (lemmaInGenMapThenLongMapContainsHash!726 lm!2023 key!4653 hashF!1323))))

(declare-fun lt!1871216 () Unit!127236)

(declare-fun lemmaInGenMapThenGetPairDefined!316 (ListLongMap!4251 K!13940 Hashable!6285) Unit!127236)

(assert (=> b!4706373 (= lt!1871216 (lemmaInGenMapThenGetPairDefined!316 lm!2023 key!4653 hashF!1323))))

(declare-fun b!4706374 () Bool)

(declare-fun res!1988057 () Bool)

(declare-fun e!2935756 () Bool)

(assert (=> b!4706374 (=> (not res!1988057) (not e!2935756))))

(get-info :version)

(assert (=> b!4706374 (= res!1988057 ((_ is Cons!52586) (toList!5722 lm!2023)))))

(declare-fun b!4706375 () Bool)

(declare-fun e!2935759 () Bool)

(assert (=> b!4706375 (= e!2935754 e!2935759)))

(declare-fun res!1988049 () Bool)

(assert (=> b!4706375 (=> (not res!1988049) (not e!2935759))))

(declare-fun lt!1871228 () ListMap!5085)

(declare-fun contains!15900 (ListMap!5085 K!13940) Bool)

(assert (=> b!4706375 (= res!1988049 (contains!15900 lt!1871228 key!4653))))

(declare-fun extractMap!1942 (List!52710) ListMap!5085)

(assert (=> b!4706375 (= lt!1871228 (extractMap!1942 (toList!5722 lm!2023)))))

(declare-fun b!4706376 () Bool)

(declare-fun e!2935748 () Bool)

(declare-fun e!2935755 () Bool)

(assert (=> b!4706376 (= e!2935748 e!2935755)))

(declare-fun res!1988048 () Bool)

(assert (=> b!4706376 (=> res!1988048 e!2935755)))

(declare-fun lt!1871226 () ListMap!5085)

(declare-fun lt!1871200 () ListMap!5085)

(declare-fun +!2200 (ListMap!5085 tuple2!54058) ListMap!5085)

(assert (=> b!4706376 (= res!1988048 (not (eq!1075 lt!1871200 (+!2200 lt!1871226 (h!58882 oldBucket!34)))))))

(declare-fun lt!1871227 () List!52709)

(declare-fun hash!405 () (_ BitVec 64))

(assert (=> b!4706376 (= lt!1871226 (extractMap!1942 (Cons!52586 (tuple2!54061 hash!405 lt!1871227) (t!359938 (toList!5722 lm!2023)))))))

(declare-fun lt!1871224 () tuple2!54060)

(assert (=> b!4706376 (= lt!1871200 (extractMap!1942 (Cons!52586 lt!1871224 (t!359938 (toList!5722 lm!2023)))))))

(declare-fun lt!1871208 () tuple2!54058)

(declare-fun lt!1871199 () List!52709)

(declare-fun lt!1871212 () ListMap!5085)

(declare-fun addToMapMapFromBucket!1348 (List!52709 ListMap!5085) ListMap!5085)

(assert (=> b!4706376 (eq!1075 (addToMapMapFromBucket!1348 (Cons!52585 lt!1871208 lt!1871199) lt!1871212) (+!2200 (addToMapMapFromBucket!1348 lt!1871199 lt!1871212) lt!1871208))))

(declare-fun lt!1871231 () Unit!127236)

(declare-fun lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!324 (tuple2!54058 List!52709 ListMap!5085) Unit!127236)

(assert (=> b!4706376 (= lt!1871231 (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!324 lt!1871208 lt!1871199 lt!1871212))))

(declare-fun head!10095 (List!52709) tuple2!54058)

(assert (=> b!4706376 (= lt!1871208 (head!10095 newBucket!218))))

(declare-fun lt!1871206 () tuple2!54058)

(assert (=> b!4706376 (eq!1075 (addToMapMapFromBucket!1348 (Cons!52585 lt!1871206 lt!1871227) lt!1871212) (+!2200 (addToMapMapFromBucket!1348 lt!1871227 lt!1871212) lt!1871206))))

(declare-fun lt!1871198 () Unit!127236)

(assert (=> b!4706376 (= lt!1871198 (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!324 lt!1871206 lt!1871227 lt!1871212))))

(assert (=> b!4706376 (= lt!1871206 (head!10095 oldBucket!34))))

(declare-fun lt!1871217 () ListMap!5085)

(assert (=> b!4706376 (contains!15900 lt!1871217 key!4653)))

(declare-fun lt!1871225 () List!52710)

(assert (=> b!4706376 (= lt!1871217 (extractMap!1942 lt!1871225))))

(declare-fun lt!1871220 () ListLongMap!4251)

(declare-fun lt!1871207 () Unit!127236)

(declare-fun lemmaListContainsThenExtractedMapContains!508 (ListLongMap!4251 K!13940 Hashable!6285) Unit!127236)

(assert (=> b!4706376 (= lt!1871207 (lemmaListContainsThenExtractedMapContains!508 lt!1871220 key!4653 hashF!1323))))

(assert (=> b!4706376 (= lt!1871220 (ListLongMap!4252 lt!1871225))))

(declare-fun lt!1871201 () tuple2!54060)

(assert (=> b!4706376 (= lt!1871225 (Cons!52586 lt!1871201 (t!359938 (toList!5722 lm!2023))))))

(assert (=> b!4706376 (= lt!1871201 (tuple2!54061 hash!405 (t!359937 oldBucket!34)))))

(declare-fun b!4706377 () Bool)

(assert (=> b!4706377 (= e!2935756 (not e!2935747))))

(declare-fun res!1988051 () Bool)

(assert (=> b!4706377 (=> res!1988051 e!2935747)))

(assert (=> b!4706377 (= res!1988051 (or (and ((_ is Cons!52585) oldBucket!34) (= (_1!30323 (h!58882 oldBucket!34)) key!4653)) (not ((_ is Cons!52585) oldBucket!34)) (= (_1!30323 (h!58882 oldBucket!34)) key!4653)))))

(assert (=> b!4706377 (= lt!1871228 (addToMapMapFromBucket!1348 (_2!30324 (h!58883 (toList!5722 lm!2023))) lt!1871212))))

(assert (=> b!4706377 (= lt!1871212 (extractMap!1942 (t!359938 (toList!5722 lm!2023))))))

(declare-fun tail!8773 (ListLongMap!4251) ListLongMap!4251)

(assert (=> b!4706377 (= (t!359938 (toList!5722 lm!2023)) (toList!5722 (tail!8773 lm!2023)))))

(declare-fun b!4706378 () Bool)

(declare-fun res!1988042 () Bool)

(assert (=> b!4706378 (=> res!1988042 e!2935755)))

(assert (=> b!4706378 (= res!1988042 (not (= (h!58882 oldBucket!34) lt!1871208)))))

(declare-fun b!4706379 () Bool)

(declare-fun e!2935750 () Bool)

(assert (=> b!4706379 (= e!2935750 e!2935756)))

(declare-fun res!1988047 () Bool)

(assert (=> b!4706379 (=> (not res!1988047) (not e!2935756))))

(declare-fun head!10096 (List!52710) tuple2!54060)

(assert (=> b!4706379 (= res!1988047 (= (head!10096 (toList!5722 lm!2023)) lt!1871224))))

(assert (=> b!4706379 (= lt!1871224 (tuple2!54061 hash!405 oldBucket!34))))

(declare-fun b!4706380 () Bool)

(declare-fun e!2935751 () Bool)

(declare-fun e!2935753 () Bool)

(assert (=> b!4706380 (= e!2935751 e!2935753)))

(declare-fun res!1988054 () Bool)

(assert (=> b!4706380 (=> res!1988054 e!2935753)))

(declare-fun lt!1871233 () ListMap!5085)

(declare-fun lt!1871218 () ListMap!5085)

(assert (=> b!4706380 (= res!1988054 (not (= lt!1871233 lt!1871218)))))

(declare-fun lt!1871209 () ListMap!5085)

(assert (=> b!4706380 (= lt!1871218 (+!2200 lt!1871209 (h!58882 oldBucket!34)))))

(declare-fun lt!1871211 () ListMap!5085)

(declare-fun -!720 (ListMap!5085 K!13940) ListMap!5085)

(assert (=> b!4706380 (= lt!1871233 (-!720 lt!1871211 key!4653))))

(assert (=> b!4706380 (= lt!1871211 (+!2200 lt!1871217 (h!58882 oldBucket!34)))))

(declare-fun lt!1871202 () ListMap!5085)

(declare-fun lt!1871214 () ListMap!5085)

(assert (=> b!4706380 (= lt!1871202 lt!1871214)))

(assert (=> b!4706380 (= lt!1871214 (+!2200 lt!1871209 (h!58882 oldBucket!34)))))

(assert (=> b!4706380 (= lt!1871202 (-!720 (+!2200 lt!1871217 (h!58882 oldBucket!34)) key!4653))))

(declare-fun lt!1871223 () Unit!127236)

(declare-fun addRemoveCommutativeForDiffKeys!121 (ListMap!5085 K!13940 V!14186 K!13940) Unit!127236)

(assert (=> b!4706380 (= lt!1871223 (addRemoveCommutativeForDiffKeys!121 lt!1871217 (_1!30323 (h!58882 oldBucket!34)) (_2!30323 (h!58882 oldBucket!34)) key!4653))))

(declare-fun b!4706382 () Bool)

(assert (=> b!4706382 (= e!2935761 (not (= (toList!5722 lm!2023) Nil!52586)))))

(declare-fun b!4706383 () Bool)

(declare-fun res!1988038 () Bool)

(assert (=> b!4706383 (=> res!1988038 e!2935755)))

(assert (=> b!4706383 (= res!1988038 (not (eq!1075 lt!1871200 (+!2200 lt!1871226 lt!1871208))))))

(declare-fun b!4706384 () Bool)

(declare-fun res!1988040 () Bool)

(assert (=> b!4706384 (=> res!1988040 e!2935748)))

(declare-fun removePairForKey!1511 (List!52709 K!13940) List!52709)

(assert (=> b!4706384 (= res!1988040 (not (= (removePairForKey!1511 (t!359937 oldBucket!34) key!4653) lt!1871199)))))

(declare-fun b!4706385 () Bool)

(declare-fun res!1988058 () Bool)

(assert (=> b!4706385 (=> (not res!1988058) (not e!2935754))))

(assert (=> b!4706385 (= res!1988058 (= (removePairForKey!1511 oldBucket!34 key!4653) newBucket!218))))

(declare-fun e!2935758 () Bool)

(declare-fun tp_is_empty!30957 () Bool)

(declare-fun tp!1346994 () Bool)

(declare-fun b!4706386 () Bool)

(declare-fun tp_is_empty!30959 () Bool)

(assert (=> b!4706386 (= e!2935758 (and tp_is_empty!30957 tp_is_empty!30959 tp!1346994))))

(declare-fun b!4706387 () Bool)

(declare-fun res!1988059 () Bool)

(assert (=> b!4706387 (=> (not res!1988059) (not e!2935750))))

(declare-fun allKeysSameHashInMap!1830 (ListLongMap!4251 Hashable!6285) Bool)

(assert (=> b!4706387 (= res!1988059 (allKeysSameHashInMap!1830 lm!2023 hashF!1323))))

(declare-fun b!4706388 () Bool)

(declare-fun res!1988035 () Bool)

(assert (=> b!4706388 (=> (not res!1988035) (not e!2935754))))

(declare-fun allKeysSameHash!1742 (List!52709 (_ BitVec 64) Hashable!6285) Bool)

(assert (=> b!4706388 (= res!1988035 (allKeysSameHash!1742 oldBucket!34 hash!405 hashF!1323))))

(declare-fun tp!1346995 () Bool)

(declare-fun e!2935749 () Bool)

(declare-fun b!4706389 () Bool)

(assert (=> b!4706389 (= e!2935749 (and tp_is_empty!30957 tp_is_empty!30959 tp!1346995))))

(declare-fun b!4706390 () Bool)

(declare-fun res!1988036 () Bool)

(assert (=> b!4706390 (=> (not res!1988036) (not e!2935754))))

(assert (=> b!4706390 (= res!1988036 (noDuplicateKeys!1916 oldBucket!34))))

(declare-fun b!4706391 () Bool)

(assert (=> b!4706391 (= e!2935757 e!2935748)))

(declare-fun res!1988044 () Bool)

(assert (=> b!4706391 (=> res!1988044 e!2935748)))

(assert (=> b!4706391 (= res!1988044 (not (= (removePairForKey!1511 lt!1871227 key!4653) lt!1871199)))))

(declare-fun tail!8774 (List!52709) List!52709)

(assert (=> b!4706391 (= lt!1871199 (tail!8774 newBucket!218))))

(assert (=> b!4706391 (= lt!1871227 (tail!8774 oldBucket!34))))

(declare-fun b!4706392 () Bool)

(declare-fun res!1988039 () Bool)

(assert (=> b!4706392 (=> (not res!1988039) (not e!2935750))))

(assert (=> b!4706392 (= res!1988039 (allKeysSameHash!1742 newBucket!218 hash!405 hashF!1323))))

(declare-fun res!1988050 () Bool)

(assert (=> start!477988 (=> (not res!1988050) (not e!2935754))))

(declare-fun forall!11435 (List!52710 Int) Bool)

(assert (=> start!477988 (= res!1988050 (forall!11435 (toList!5722 lm!2023) lambda!211681))))

(assert (=> start!477988 e!2935754))

(declare-fun e!2935760 () Bool)

(declare-fun inv!67814 (ListLongMap!4251) Bool)

(assert (=> start!477988 (and (inv!67814 lm!2023) e!2935760)))

(assert (=> start!477988 tp_is_empty!30957))

(assert (=> start!477988 e!2935749))

(assert (=> start!477988 true))

(assert (=> start!477988 e!2935758))

(declare-fun b!4706381 () Bool)

(assert (=> b!4706381 (= e!2935755 e!2935751)))

(declare-fun res!1988034 () Bool)

(assert (=> b!4706381 (=> res!1988034 e!2935751)))

(declare-fun lt!1871234 () ListMap!5085)

(assert (=> b!4706381 (= res!1988034 (not (eq!1075 lt!1871234 lt!1871209)))))

(assert (=> b!4706381 (= lt!1871209 (-!720 lt!1871217 key!4653))))

(declare-fun lt!1871213 () tuple2!54060)

(assert (=> b!4706381 (= lt!1871234 (extractMap!1942 (Cons!52586 lt!1871213 (t!359938 (toList!5722 lm!2023)))))))

(declare-fun lt!1871205 () List!52710)

(assert (=> b!4706381 (eq!1075 (extractMap!1942 (Cons!52586 lt!1871213 lt!1871205)) (-!720 (extractMap!1942 (Cons!52586 lt!1871201 lt!1871205)) key!4653))))

(declare-fun tail!8775 (List!52710) List!52710)

(assert (=> b!4706381 (= lt!1871205 (tail!8775 lt!1871225))))

(assert (=> b!4706381 (= lt!1871213 (tuple2!54061 hash!405 lt!1871199))))

(declare-fun lt!1871196 () Unit!127236)

(declare-fun lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMapOneHashIsHead!90 (ListLongMap!4251 (_ BitVec 64) List!52709 List!52709 K!13940 Hashable!6285) Unit!127236)

(assert (=> b!4706381 (= lt!1871196 (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMapOneHashIsHead!90 lt!1871220 hash!405 (t!359937 oldBucket!34) lt!1871199 key!4653 hashF!1323))))

(declare-fun b!4706393 () Bool)

(declare-fun res!1988056 () Bool)

(assert (=> b!4706393 (=> res!1988056 e!2935753)))

(assert (=> b!4706393 (= res!1988056 (not (eq!1075 lt!1871211 lt!1871200)))))

(declare-fun b!4706394 () Bool)

(declare-fun e!2935752 () Bool)

(assert (=> b!4706394 (= e!2935752 e!2935761)))

(declare-fun res!1988052 () Bool)

(assert (=> b!4706394 (=> res!1988052 e!2935761)))

(declare-fun lt!1871232 () ListMap!5085)

(assert (=> b!4706394 (= res!1988052 (not (eq!1075 lt!1871232 lt!1871222)))))

(assert (=> b!4706394 (= lt!1871222 (extractMap!1942 (Cons!52586 (tuple2!54061 hash!405 newBucket!218) (t!359938 (toList!5722 lm!2023)))))))

(declare-fun b!4706395 () Bool)

(declare-fun tp!1346993 () Bool)

(assert (=> b!4706395 (= e!2935760 tp!1346993)))

(declare-fun b!4706396 () Bool)

(assert (=> b!4706396 (= e!2935759 e!2935750)))

(declare-fun res!1988053 () Bool)

(assert (=> b!4706396 (=> (not res!1988053) (not e!2935750))))

(assert (=> b!4706396 (= res!1988053 (= lt!1871219 hash!405))))

(declare-fun hash!4224 (Hashable!6285 K!13940) (_ BitVec 64))

(assert (=> b!4706396 (= lt!1871219 (hash!4224 hashF!1323 key!4653))))

(declare-fun b!4706397 () Bool)

(declare-fun res!1988037 () Bool)

(assert (=> b!4706397 (=> res!1988037 e!2935753)))

(assert (=> b!4706397 (= res!1988037 (not (eq!1075 lt!1871233 lt!1871218)))))

(declare-fun b!4706398 () Bool)

(declare-fun e!2935762 () Bool)

(assert (=> b!4706398 (= e!2935762 e!2935752)))

(declare-fun res!1988045 () Bool)

(assert (=> b!4706398 (=> res!1988045 e!2935752)))

(assert (=> b!4706398 (= res!1988045 (not (eq!1075 lt!1871218 lt!1871221)))))

(assert (=> b!4706398 (eq!1075 lt!1871233 lt!1871221)))

(assert (=> b!4706398 (= lt!1871221 (-!720 lt!1871200 key!4653))))

(declare-fun lt!1871203 () Unit!127236)

(declare-fun lemmaRemovePreservesEq!102 (ListMap!5085 ListMap!5085 K!13940) Unit!127236)

(assert (=> b!4706398 (= lt!1871203 (lemmaRemovePreservesEq!102 lt!1871211 lt!1871200 key!4653))))

(declare-fun b!4706399 () Bool)

(assert (=> b!4706399 (= e!2935753 e!2935762)))

(declare-fun res!1988046 () Bool)

(assert (=> b!4706399 (=> res!1988046 e!2935762)))

(assert (=> b!4706399 (= res!1988046 (not (eq!1075 lt!1871218 lt!1871232)))))

(assert (=> b!4706399 (= lt!1871232 (+!2200 lt!1871234 (h!58882 oldBucket!34)))))

(assert (=> b!4706399 (eq!1075 lt!1871214 (+!2200 lt!1871234 (h!58882 oldBucket!34)))))

(declare-fun lt!1871195 () Unit!127236)

(declare-fun lemmaAddToEqMapsPreservesEq!98 (ListMap!5085 ListMap!5085 K!13940 V!14186) Unit!127236)

(assert (=> b!4706399 (= lt!1871195 (lemmaAddToEqMapsPreservesEq!98 lt!1871209 lt!1871234 (_1!30323 (h!58882 oldBucket!34)) (_2!30323 (h!58882 oldBucket!34))))))

(assert (= (and start!477988 res!1988050) b!4706390))

(assert (= (and b!4706390 res!1988036) b!4706371))

(assert (= (and b!4706371 res!1988041) b!4706385))

(assert (= (and b!4706385 res!1988058) b!4706388))

(assert (= (and b!4706388 res!1988035) b!4706375))

(assert (= (and b!4706375 res!1988049) b!4706396))

(assert (= (and b!4706396 res!1988053) b!4706392))

(assert (= (and b!4706392 res!1988039) b!4706387))

(assert (= (and b!4706387 res!1988059) b!4706379))

(assert (= (and b!4706379 res!1988047) b!4706374))

(assert (= (and b!4706374 res!1988057) b!4706377))

(assert (= (and b!4706377 (not res!1988051)) b!4706373))

(assert (= (and b!4706373 (not res!1988055)) b!4706391))

(assert (= (and b!4706391 (not res!1988044)) b!4706384))

(assert (= (and b!4706384 (not res!1988040)) b!4706376))

(assert (= (and b!4706376 (not res!1988048)) b!4706378))

(assert (= (and b!4706378 (not res!1988042)) b!4706383))

(assert (= (and b!4706383 (not res!1988038)) b!4706381))

(assert (= (and b!4706381 (not res!1988034)) b!4706380))

(assert (= (and b!4706380 (not res!1988054)) b!4706397))

(assert (= (and b!4706397 (not res!1988037)) b!4706393))

(assert (= (and b!4706393 (not res!1988056)) b!4706399))

(assert (= (and b!4706399 (not res!1988046)) b!4706398))

(assert (= (and b!4706398 (not res!1988045)) b!4706394))

(assert (= (and b!4706394 (not res!1988052)) b!4706372))

(assert (= (and b!4706372 (not res!1988043)) b!4706382))

(assert (= start!477988 b!4706395))

(assert (= (and start!477988 ((_ is Cons!52585) oldBucket!34)) b!4706389))

(assert (= (and start!477988 ((_ is Cons!52585) newBucket!218)) b!4706386))

(declare-fun m!5628905 () Bool)

(assert (=> b!4706375 m!5628905))

(declare-fun m!5628907 () Bool)

(assert (=> b!4706375 m!5628907))

(declare-fun m!5628909 () Bool)

(assert (=> b!4706377 m!5628909))

(declare-fun m!5628911 () Bool)

(assert (=> b!4706377 m!5628911))

(declare-fun m!5628913 () Bool)

(assert (=> b!4706377 m!5628913))

(declare-fun m!5628915 () Bool)

(assert (=> b!4706371 m!5628915))

(declare-fun m!5628917 () Bool)

(assert (=> b!4706391 m!5628917))

(declare-fun m!5628919 () Bool)

(assert (=> b!4706391 m!5628919))

(declare-fun m!5628921 () Bool)

(assert (=> b!4706391 m!5628921))

(declare-fun m!5628923 () Bool)

(assert (=> b!4706385 m!5628923))

(declare-fun m!5628925 () Bool)

(assert (=> b!4706396 m!5628925))

(declare-fun m!5628927 () Bool)

(assert (=> b!4706376 m!5628927))

(declare-fun m!5628929 () Bool)

(assert (=> b!4706376 m!5628929))

(declare-fun m!5628931 () Bool)

(assert (=> b!4706376 m!5628931))

(declare-fun m!5628933 () Bool)

(assert (=> b!4706376 m!5628933))

(declare-fun m!5628935 () Bool)

(assert (=> b!4706376 m!5628935))

(declare-fun m!5628937 () Bool)

(assert (=> b!4706376 m!5628937))

(declare-fun m!5628939 () Bool)

(assert (=> b!4706376 m!5628939))

(declare-fun m!5628941 () Bool)

(assert (=> b!4706376 m!5628941))

(declare-fun m!5628943 () Bool)

(assert (=> b!4706376 m!5628943))

(declare-fun m!5628945 () Bool)

(assert (=> b!4706376 m!5628945))

(assert (=> b!4706376 m!5628929))

(declare-fun m!5628947 () Bool)

(assert (=> b!4706376 m!5628947))

(assert (=> b!4706376 m!5628935))

(declare-fun m!5628949 () Bool)

(assert (=> b!4706376 m!5628949))

(declare-fun m!5628951 () Bool)

(assert (=> b!4706376 m!5628951))

(declare-fun m!5628953 () Bool)

(assert (=> b!4706376 m!5628953))

(assert (=> b!4706376 m!5628953))

(declare-fun m!5628955 () Bool)

(assert (=> b!4706376 m!5628955))

(declare-fun m!5628957 () Bool)

(assert (=> b!4706376 m!5628957))

(assert (=> b!4706376 m!5628945))

(assert (=> b!4706376 m!5628955))

(declare-fun m!5628959 () Bool)

(assert (=> b!4706376 m!5628959))

(assert (=> b!4706376 m!5628949))

(assert (=> b!4706376 m!5628937))

(declare-fun m!5628961 () Bool)

(assert (=> b!4706376 m!5628961))

(declare-fun m!5628963 () Bool)

(assert (=> b!4706376 m!5628963))

(declare-fun m!5628965 () Bool)

(assert (=> b!4706390 m!5628965))

(declare-fun m!5628967 () Bool)

(assert (=> b!4706380 m!5628967))

(declare-fun m!5628969 () Bool)

(assert (=> b!4706380 m!5628969))

(assert (=> b!4706380 m!5628969))

(declare-fun m!5628971 () Bool)

(assert (=> b!4706380 m!5628971))

(declare-fun m!5628973 () Bool)

(assert (=> b!4706380 m!5628973))

(declare-fun m!5628975 () Bool)

(assert (=> b!4706380 m!5628975))

(declare-fun m!5628977 () Bool)

(assert (=> b!4706392 m!5628977))

(declare-fun m!5628979 () Bool)

(assert (=> b!4706394 m!5628979))

(declare-fun m!5628981 () Bool)

(assert (=> b!4706394 m!5628981))

(declare-fun m!5628983 () Bool)

(assert (=> start!477988 m!5628983))

(declare-fun m!5628985 () Bool)

(assert (=> start!477988 m!5628985))

(declare-fun m!5628987 () Bool)

(assert (=> b!4706384 m!5628987))

(declare-fun m!5628989 () Bool)

(assert (=> b!4706388 m!5628989))

(declare-fun m!5628991 () Bool)

(assert (=> b!4706399 m!5628991))

(declare-fun m!5628993 () Bool)

(assert (=> b!4706399 m!5628993))

(assert (=> b!4706399 m!5628993))

(declare-fun m!5628995 () Bool)

(assert (=> b!4706399 m!5628995))

(declare-fun m!5628997 () Bool)

(assert (=> b!4706399 m!5628997))

(declare-fun m!5628999 () Bool)

(assert (=> b!4706381 m!5628999))

(declare-fun m!5629001 () Bool)

(assert (=> b!4706381 m!5629001))

(declare-fun m!5629003 () Bool)

(assert (=> b!4706381 m!5629003))

(declare-fun m!5629005 () Bool)

(assert (=> b!4706381 m!5629005))

(declare-fun m!5629007 () Bool)

(assert (=> b!4706381 m!5629007))

(declare-fun m!5629009 () Bool)

(assert (=> b!4706381 m!5629009))

(assert (=> b!4706381 m!5629001))

(assert (=> b!4706381 m!5629009))

(declare-fun m!5629011 () Bool)

(assert (=> b!4706381 m!5629011))

(assert (=> b!4706381 m!5629007))

(declare-fun m!5629013 () Bool)

(assert (=> b!4706381 m!5629013))

(declare-fun m!5629015 () Bool)

(assert (=> b!4706381 m!5629015))

(declare-fun m!5629017 () Bool)

(assert (=> b!4706372 m!5629017))

(declare-fun m!5629019 () Bool)

(assert (=> b!4706383 m!5629019))

(assert (=> b!4706383 m!5629019))

(declare-fun m!5629021 () Bool)

(assert (=> b!4706383 m!5629021))

(declare-fun m!5629023 () Bool)

(assert (=> b!4706398 m!5629023))

(declare-fun m!5629025 () Bool)

(assert (=> b!4706398 m!5629025))

(declare-fun m!5629027 () Bool)

(assert (=> b!4706398 m!5629027))

(declare-fun m!5629029 () Bool)

(assert (=> b!4706398 m!5629029))

(declare-fun m!5629031 () Bool)

(assert (=> b!4706373 m!5629031))

(declare-fun m!5629033 () Bool)

(assert (=> b!4706373 m!5629033))

(declare-fun m!5629035 () Bool)

(assert (=> b!4706373 m!5629035))

(declare-fun m!5629037 () Bool)

(assert (=> b!4706373 m!5629037))

(declare-fun m!5629039 () Bool)

(assert (=> b!4706373 m!5629039))

(declare-fun m!5629041 () Bool)

(assert (=> b!4706373 m!5629041))

(declare-fun m!5629043 () Bool)

(assert (=> b!4706373 m!5629043))

(declare-fun m!5629045 () Bool)

(assert (=> b!4706373 m!5629045))

(declare-fun m!5629047 () Bool)

(assert (=> b!4706373 m!5629047))

(declare-fun m!5629049 () Bool)

(assert (=> b!4706373 m!5629049))

(declare-fun m!5629051 () Bool)

(assert (=> b!4706373 m!5629051))

(assert (=> b!4706373 m!5629037))

(declare-fun m!5629053 () Bool)

(assert (=> b!4706373 m!5629053))

(declare-fun m!5629055 () Bool)

(assert (=> b!4706393 m!5629055))

(declare-fun m!5629057 () Bool)

(assert (=> b!4706397 m!5629057))

(declare-fun m!5629059 () Bool)

(assert (=> b!4706387 m!5629059))

(declare-fun m!5629061 () Bool)

(assert (=> b!4706379 m!5629061))

(check-sat (not b!4706380) (not b!4706387) (not b!4706384) (not b!4706396) (not b!4706391) (not b!4706393) (not b!4706389) (not b!4706394) (not b!4706383) tp_is_empty!30959 (not b!4706385) (not b!4706397) (not b!4706376) (not b!4706375) (not b!4706399) (not b!4706371) (not b!4706388) (not b!4706377) (not b!4706381) (not b!4706373) (not b!4706398) (not b!4706390) (not b!4706395) (not b!4706372) tp_is_empty!30957 (not b!4706386) (not b!4706379) (not start!477988) (not b!4706392))
(check-sat)
