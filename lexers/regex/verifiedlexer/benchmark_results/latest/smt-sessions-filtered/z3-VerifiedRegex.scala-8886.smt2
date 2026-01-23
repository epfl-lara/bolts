; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!475320 () Bool)

(assert start!475320)

(declare-fun b!4694304 () Bool)

(declare-fun res!1980764 () Bool)

(declare-fun e!2928439 () Bool)

(assert (=> b!4694304 (=> (not res!1980764) (not e!2928439))))

(declare-datatypes ((K!13835 0))(
  ( (K!13836 (val!19339 Int)) )
))
(declare-datatypes ((V!14081 0))(
  ( (V!14082 (val!19340 Int)) )
))
(declare-datatypes ((tuple2!53890 0))(
  ( (tuple2!53891 (_1!30239 K!13835) (_2!30239 V!14081)) )
))
(declare-datatypes ((List!52587 0))(
  ( (Nil!52463) (Cons!52463 (h!58722 tuple2!53890) (t!359777 List!52587)) )
))
(declare-fun oldBucket!34 () List!52587)

(declare-fun noDuplicateKeys!1874 (List!52587) Bool)

(assert (=> b!4694304 (= res!1980764 (noDuplicateKeys!1874 oldBucket!34))))

(declare-fun b!4694305 () Bool)

(declare-fun res!1980779 () Bool)

(declare-fun e!2928435 () Bool)

(assert (=> b!4694305 (=> res!1980779 e!2928435)))

(declare-fun lt!1855099 () tuple2!53890)

(assert (=> b!4694305 (= res!1980779 (not (= (h!58722 oldBucket!34) lt!1855099)))))

(declare-fun b!4694306 () Bool)

(declare-fun res!1980763 () Bool)

(declare-fun e!2928444 () Bool)

(assert (=> b!4694306 (=> (not res!1980763) (not e!2928444))))

(declare-datatypes ((tuple2!53892 0))(
  ( (tuple2!53893 (_1!30240 (_ BitVec 64)) (_2!30240 List!52587)) )
))
(declare-datatypes ((List!52588 0))(
  ( (Nil!52464) (Cons!52464 (h!58723 tuple2!53892) (t!359778 List!52588)) )
))
(declare-datatypes ((ListLongMap!4167 0))(
  ( (ListLongMap!4168 (toList!5637 List!52588)) )
))
(declare-fun lm!2023 () ListLongMap!4167)

(declare-datatypes ((Hashable!6243 0))(
  ( (HashableExt!6242 (__x!31946 Int)) )
))
(declare-fun hashF!1323 () Hashable!6243)

(declare-fun allKeysSameHashInMap!1788 (ListLongMap!4167 Hashable!6243) Bool)

(assert (=> b!4694306 (= res!1980763 (allKeysSameHashInMap!1788 lm!2023 hashF!1323))))

(declare-fun b!4694307 () Bool)

(declare-fun res!1980765 () Bool)

(assert (=> b!4694307 (=> (not res!1980765) (not e!2928444))))

(declare-fun hash!405 () (_ BitVec 64))

(declare-fun newBucket!218 () List!52587)

(declare-fun allKeysSameHash!1700 (List!52587 (_ BitVec 64) Hashable!6243) Bool)

(assert (=> b!4694307 (= res!1980765 (allKeysSameHash!1700 newBucket!218 hash!405 hashF!1323))))

(declare-fun b!4694308 () Bool)

(declare-fun e!2928437 () Bool)

(assert (=> b!4694308 (= e!2928435 e!2928437)))

(declare-fun res!1980761 () Bool)

(assert (=> b!4694308 (=> res!1980761 e!2928437)))

(declare-datatypes ((ListMap!5001 0))(
  ( (ListMap!5002 (toList!5638 List!52587)) )
))
(declare-fun lt!1855097 () ListMap!5001)

(declare-fun lt!1855094 () ListMap!5001)

(declare-fun eq!1033 (ListMap!5001 ListMap!5001) Bool)

(assert (=> b!4694308 (= res!1980761 (not (eq!1033 lt!1855097 lt!1855094)))))

(declare-fun lt!1855093 () ListMap!5001)

(declare-fun key!4653 () K!13835)

(declare-fun -!678 (ListMap!5001 K!13835) ListMap!5001)

(assert (=> b!4694308 (= lt!1855094 (-!678 lt!1855093 key!4653))))

(declare-fun lt!1855101 () tuple2!53892)

(declare-fun extractMap!1900 (List!52588) ListMap!5001)

(assert (=> b!4694308 (= lt!1855097 (extractMap!1900 (Cons!52464 lt!1855101 (t!359778 (toList!5637 lm!2023)))))))

(declare-fun lt!1855102 () List!52588)

(declare-fun lt!1855103 () tuple2!53892)

(assert (=> b!4694308 (eq!1033 (extractMap!1900 (Cons!52464 lt!1855101 lt!1855102)) (-!678 (extractMap!1900 (Cons!52464 lt!1855103 lt!1855102)) key!4653))))

(declare-fun lt!1855078 () List!52588)

(declare-fun tail!8647 (List!52588) List!52588)

(assert (=> b!4694308 (= lt!1855102 (tail!8647 lt!1855078))))

(declare-fun lt!1855091 () List!52587)

(assert (=> b!4694308 (= lt!1855101 (tuple2!53893 hash!405 lt!1855091))))

(declare-datatypes ((Unit!124905 0))(
  ( (Unit!124906) )
))
(declare-fun lt!1855075 () Unit!124905)

(declare-fun lt!1855076 () ListLongMap!4167)

(declare-fun lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMapOneHashIsHead!48 (ListLongMap!4167 (_ BitVec 64) List!52587 List!52587 K!13835 Hashable!6243) Unit!124905)

(assert (=> b!4694308 (= lt!1855075 (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMapOneHashIsHead!48 lt!1855076 hash!405 (t!359777 oldBucket!34) lt!1855091 key!4653 hashF!1323))))

(declare-fun b!4694309 () Bool)

(declare-fun tp!1346236 () Bool)

(declare-fun tp_is_empty!30791 () Bool)

(declare-fun tp_is_empty!30789 () Bool)

(declare-fun e!2928443 () Bool)

(assert (=> b!4694309 (= e!2928443 (and tp_is_empty!30789 tp_is_empty!30791 tp!1346236))))

(declare-fun b!4694310 () Bool)

(declare-fun e!2928436 () Bool)

(assert (=> b!4694310 (= e!2928439 e!2928436)))

(declare-fun res!1980777 () Bool)

(assert (=> b!4694310 (=> (not res!1980777) (not e!2928436))))

(declare-fun lt!1855085 () ListMap!5001)

(declare-fun contains!15696 (ListMap!5001 K!13835) Bool)

(assert (=> b!4694310 (= res!1980777 (contains!15696 lt!1855085 key!4653))))

(assert (=> b!4694310 (= lt!1855085 (extractMap!1900 (toList!5637 lm!2023)))))

(declare-fun b!4694311 () Bool)

(declare-fun e!2928441 () Bool)

(declare-fun tp!1346237 () Bool)

(assert (=> b!4694311 (= e!2928441 tp!1346237)))

(declare-fun b!4694312 () Bool)

(assert (=> b!4694312 (= e!2928436 e!2928444)))

(declare-fun res!1980772 () Bool)

(assert (=> b!4694312 (=> (not res!1980772) (not e!2928444))))

(declare-fun lt!1855086 () (_ BitVec 64))

(assert (=> b!4694312 (= res!1980772 (= lt!1855086 hash!405))))

(declare-fun hash!4107 (Hashable!6243 K!13835) (_ BitVec 64))

(assert (=> b!4694312 (= lt!1855086 (hash!4107 hashF!1323 key!4653))))

(declare-fun b!4694313 () Bool)

(declare-fun res!1980766 () Bool)

(assert (=> b!4694313 (=> (not res!1980766) (not e!2928439))))

(assert (=> b!4694313 (= res!1980766 (allKeysSameHash!1700 oldBucket!34 hash!405 hashF!1323))))

(declare-fun b!4694314 () Bool)

(declare-fun res!1980771 () Bool)

(assert (=> b!4694314 (=> (not res!1980771) (not e!2928439))))

(declare-fun removePairForKey!1469 (List!52587 K!13835) List!52587)

(assert (=> b!4694314 (= res!1980771 (= (removePairForKey!1469 oldBucket!34 key!4653) newBucket!218))))

(declare-fun b!4694315 () Bool)

(declare-fun e!2928445 () Bool)

(assert (=> b!4694315 (= e!2928445 e!2928435)))

(declare-fun res!1980770 () Bool)

(assert (=> b!4694315 (=> res!1980770 e!2928435)))

(declare-fun lt!1855090 () ListMap!5001)

(declare-fun lt!1855096 () ListMap!5001)

(declare-fun +!2158 (ListMap!5001 tuple2!53890) ListMap!5001)

(assert (=> b!4694315 (= res!1980770 (not (eq!1033 lt!1855090 (+!2158 lt!1855096 (h!58722 oldBucket!34)))))))

(declare-fun lt!1855088 () List!52587)

(assert (=> b!4694315 (= lt!1855096 (extractMap!1900 (Cons!52464 (tuple2!53893 hash!405 lt!1855088) (t!359778 (toList!5637 lm!2023)))))))

(declare-fun lt!1855087 () tuple2!53892)

(assert (=> b!4694315 (= lt!1855090 (extractMap!1900 (Cons!52464 lt!1855087 (t!359778 (toList!5637 lm!2023)))))))

(declare-fun lt!1855095 () ListMap!5001)

(declare-fun addToMapMapFromBucket!1306 (List!52587 ListMap!5001) ListMap!5001)

(assert (=> b!4694315 (eq!1033 (addToMapMapFromBucket!1306 (Cons!52463 lt!1855099 lt!1855091) lt!1855095) (+!2158 (addToMapMapFromBucket!1306 lt!1855091 lt!1855095) lt!1855099))))

(declare-fun lt!1855079 () Unit!124905)

(declare-fun lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!282 (tuple2!53890 List!52587 ListMap!5001) Unit!124905)

(assert (=> b!4694315 (= lt!1855079 (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!282 lt!1855099 lt!1855091 lt!1855095))))

(declare-fun head!10011 (List!52587) tuple2!53890)

(assert (=> b!4694315 (= lt!1855099 (head!10011 newBucket!218))))

(declare-fun lt!1855104 () tuple2!53890)

(assert (=> b!4694315 (eq!1033 (addToMapMapFromBucket!1306 (Cons!52463 lt!1855104 lt!1855088) lt!1855095) (+!2158 (addToMapMapFromBucket!1306 lt!1855088 lt!1855095) lt!1855104))))

(declare-fun lt!1855092 () Unit!124905)

(assert (=> b!4694315 (= lt!1855092 (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!282 lt!1855104 lt!1855088 lt!1855095))))

(assert (=> b!4694315 (= lt!1855104 (head!10011 oldBucket!34))))

(assert (=> b!4694315 (contains!15696 lt!1855093 key!4653)))

(assert (=> b!4694315 (= lt!1855093 (extractMap!1900 lt!1855078))))

(declare-fun lt!1855081 () Unit!124905)

(declare-fun lemmaListContainsThenExtractedMapContains!466 (ListLongMap!4167 K!13835 Hashable!6243) Unit!124905)

(assert (=> b!4694315 (= lt!1855081 (lemmaListContainsThenExtractedMapContains!466 lt!1855076 key!4653 hashF!1323))))

(assert (=> b!4694315 (= lt!1855076 (ListLongMap!4168 lt!1855078))))

(assert (=> b!4694315 (= lt!1855078 (Cons!52464 lt!1855103 (t!359778 (toList!5637 lm!2023))))))

(assert (=> b!4694315 (= lt!1855103 (tuple2!53893 hash!405 (t!359777 oldBucket!34)))))

(declare-fun b!4694316 () Bool)

(declare-fun res!1980773 () Bool)

(declare-fun e!2928438 () Bool)

(assert (=> b!4694316 (=> (not res!1980773) (not e!2928438))))

(get-info :version)

(assert (=> b!4694316 (= res!1980773 ((_ is Cons!52464) (toList!5637 lm!2023)))))

(declare-fun b!4694317 () Bool)

(declare-fun lambda!208329 () Int)

(declare-fun forall!11355 (List!52588 Int) Bool)

(assert (=> b!4694317 (= e!2928437 (forall!11355 lt!1855078 lambda!208329))))

(assert (=> b!4694317 (= (-!678 (+!2158 lt!1855093 (h!58722 oldBucket!34)) key!4653) (+!2158 lt!1855094 (h!58722 oldBucket!34)))))

(declare-fun lt!1855089 () Unit!124905)

(declare-fun addRemoveCommutativeForDiffKeys!79 (ListMap!5001 K!13835 V!14081 K!13835) Unit!124905)

(assert (=> b!4694317 (= lt!1855089 (addRemoveCommutativeForDiffKeys!79 lt!1855093 (_1!30239 (h!58722 oldBucket!34)) (_2!30239 (h!58722 oldBucket!34)) key!4653))))

(declare-fun tp!1346235 () Bool)

(declare-fun e!2928440 () Bool)

(declare-fun b!4694318 () Bool)

(assert (=> b!4694318 (= e!2928440 (and tp_is_empty!30789 tp_is_empty!30791 tp!1346235))))

(declare-fun b!4694319 () Bool)

(declare-fun e!2928446 () Bool)

(declare-fun e!2928442 () Bool)

(assert (=> b!4694319 (= e!2928446 e!2928442)))

(declare-fun res!1980778 () Bool)

(assert (=> b!4694319 (=> res!1980778 e!2928442)))

(declare-fun containsKey!3101 (List!52587 K!13835) Bool)

(assert (=> b!4694319 (= res!1980778 (not (containsKey!3101 (t!359777 oldBucket!34) key!4653)))))

(assert (=> b!4694319 (containsKey!3101 oldBucket!34 key!4653)))

(declare-fun lt!1855083 () Unit!124905)

(declare-fun lemmaGetPairDefinedThenContainsKey!226 (List!52587 K!13835 Hashable!6243) Unit!124905)

(assert (=> b!4694319 (= lt!1855083 (lemmaGetPairDefinedThenContainsKey!226 oldBucket!34 key!4653 hashF!1323))))

(declare-fun lt!1855084 () List!52587)

(declare-datatypes ((Option!12125 0))(
  ( (None!12124) (Some!12124 (v!46567 tuple2!53890)) )
))
(declare-fun isDefined!9380 (Option!12125) Bool)

(declare-fun getPair!478 (List!52587 K!13835) Option!12125)

(assert (=> b!4694319 (isDefined!9380 (getPair!478 lt!1855084 key!4653))))

(declare-fun lt!1855098 () Unit!124905)

(declare-fun lt!1855100 () tuple2!53892)

(declare-fun forallContained!3462 (List!52588 Int tuple2!53892) Unit!124905)

(assert (=> b!4694319 (= lt!1855098 (forallContained!3462 (toList!5637 lm!2023) lambda!208329 lt!1855100))))

(declare-fun contains!15697 (List!52588 tuple2!53892) Bool)

(assert (=> b!4694319 (contains!15697 (toList!5637 lm!2023) lt!1855100)))

(assert (=> b!4694319 (= lt!1855100 (tuple2!53893 lt!1855086 lt!1855084))))

(declare-fun lt!1855080 () Unit!124905)

(declare-fun lemmaGetValueImpliesTupleContained!283 (ListLongMap!4167 (_ BitVec 64) List!52587) Unit!124905)

(assert (=> b!4694319 (= lt!1855080 (lemmaGetValueImpliesTupleContained!283 lm!2023 lt!1855086 lt!1855084))))

(declare-fun apply!12357 (ListLongMap!4167 (_ BitVec 64)) List!52587)

(assert (=> b!4694319 (= lt!1855084 (apply!12357 lm!2023 lt!1855086))))

(declare-fun contains!15698 (ListLongMap!4167 (_ BitVec 64)) Bool)

(assert (=> b!4694319 (contains!15698 lm!2023 lt!1855086)))

(declare-fun lt!1855082 () Unit!124905)

(declare-fun lemmaInGenMapThenLongMapContainsHash!684 (ListLongMap!4167 K!13835 Hashable!6243) Unit!124905)

(assert (=> b!4694319 (= lt!1855082 (lemmaInGenMapThenLongMapContainsHash!684 lm!2023 key!4653 hashF!1323))))

(declare-fun lt!1855077 () Unit!124905)

(declare-fun lemmaInGenMapThenGetPairDefined!274 (ListLongMap!4167 K!13835 Hashable!6243) Unit!124905)

(assert (=> b!4694319 (= lt!1855077 (lemmaInGenMapThenGetPairDefined!274 lm!2023 key!4653 hashF!1323))))

(declare-fun res!1980769 () Bool)

(assert (=> start!475320 (=> (not res!1980769) (not e!2928439))))

(assert (=> start!475320 (= res!1980769 (forall!11355 (toList!5637 lm!2023) lambda!208329))))

(assert (=> start!475320 e!2928439))

(declare-fun inv!67709 (ListLongMap!4167) Bool)

(assert (=> start!475320 (and (inv!67709 lm!2023) e!2928441)))

(assert (=> start!475320 tp_is_empty!30789))

(assert (=> start!475320 e!2928440))

(assert (=> start!475320 true))

(assert (=> start!475320 e!2928443))

(declare-fun b!4694320 () Bool)

(assert (=> b!4694320 (= e!2928438 (not e!2928446))))

(declare-fun res!1980776 () Bool)

(assert (=> b!4694320 (=> res!1980776 e!2928446)))

(assert (=> b!4694320 (= res!1980776 (or (and ((_ is Cons!52463) oldBucket!34) (= (_1!30239 (h!58722 oldBucket!34)) key!4653)) (not ((_ is Cons!52463) oldBucket!34)) (= (_1!30239 (h!58722 oldBucket!34)) key!4653)))))

(assert (=> b!4694320 (= lt!1855085 (addToMapMapFromBucket!1306 (_2!30240 (h!58723 (toList!5637 lm!2023))) lt!1855095))))

(assert (=> b!4694320 (= lt!1855095 (extractMap!1900 (t!359778 (toList!5637 lm!2023))))))

(declare-fun tail!8648 (ListLongMap!4167) ListLongMap!4167)

(assert (=> b!4694320 (= (t!359778 (toList!5637 lm!2023)) (toList!5637 (tail!8648 lm!2023)))))

(declare-fun b!4694321 () Bool)

(declare-fun res!1980762 () Bool)

(assert (=> b!4694321 (=> (not res!1980762) (not e!2928439))))

(assert (=> b!4694321 (= res!1980762 (noDuplicateKeys!1874 newBucket!218))))

(declare-fun b!4694322 () Bool)

(assert (=> b!4694322 (= e!2928442 e!2928445)))

(declare-fun res!1980768 () Bool)

(assert (=> b!4694322 (=> res!1980768 e!2928445)))

(assert (=> b!4694322 (= res!1980768 (not (= (removePairForKey!1469 lt!1855088 key!4653) lt!1855091)))))

(declare-fun tail!8649 (List!52587) List!52587)

(assert (=> b!4694322 (= lt!1855091 (tail!8649 newBucket!218))))

(assert (=> b!4694322 (= lt!1855088 (tail!8649 oldBucket!34))))

(declare-fun b!4694323 () Bool)

(assert (=> b!4694323 (= e!2928444 e!2928438)))

(declare-fun res!1980767 () Bool)

(assert (=> b!4694323 (=> (not res!1980767) (not e!2928438))))

(declare-fun head!10012 (List!52588) tuple2!53892)

(assert (=> b!4694323 (= res!1980767 (= (head!10012 (toList!5637 lm!2023)) lt!1855087))))

(assert (=> b!4694323 (= lt!1855087 (tuple2!53893 hash!405 oldBucket!34))))

(declare-fun b!4694324 () Bool)

(declare-fun res!1980775 () Bool)

(assert (=> b!4694324 (=> res!1980775 e!2928445)))

(assert (=> b!4694324 (= res!1980775 (not (= (removePairForKey!1469 (t!359777 oldBucket!34) key!4653) lt!1855091)))))

(declare-fun b!4694325 () Bool)

(declare-fun res!1980774 () Bool)

(assert (=> b!4694325 (=> res!1980774 e!2928435)))

(assert (=> b!4694325 (= res!1980774 (not (eq!1033 lt!1855090 (+!2158 lt!1855096 lt!1855099))))))

(assert (= (and start!475320 res!1980769) b!4694304))

(assert (= (and b!4694304 res!1980764) b!4694321))

(assert (= (and b!4694321 res!1980762) b!4694314))

(assert (= (and b!4694314 res!1980771) b!4694313))

(assert (= (and b!4694313 res!1980766) b!4694310))

(assert (= (and b!4694310 res!1980777) b!4694312))

(assert (= (and b!4694312 res!1980772) b!4694307))

(assert (= (and b!4694307 res!1980765) b!4694306))

(assert (= (and b!4694306 res!1980763) b!4694323))

(assert (= (and b!4694323 res!1980767) b!4694316))

(assert (= (and b!4694316 res!1980773) b!4694320))

(assert (= (and b!4694320 (not res!1980776)) b!4694319))

(assert (= (and b!4694319 (not res!1980778)) b!4694322))

(assert (= (and b!4694322 (not res!1980768)) b!4694324))

(assert (= (and b!4694324 (not res!1980775)) b!4694315))

(assert (= (and b!4694315 (not res!1980770)) b!4694305))

(assert (= (and b!4694305 (not res!1980779)) b!4694325))

(assert (= (and b!4694325 (not res!1980774)) b!4694308))

(assert (= (and b!4694308 (not res!1980761)) b!4694317))

(assert (= start!475320 b!4694311))

(assert (= (and start!475320 ((_ is Cons!52463) oldBucket!34)) b!4694318))

(assert (= (and start!475320 ((_ is Cons!52463) newBucket!218)) b!4694309))

(declare-fun m!5600683 () Bool)

(assert (=> b!4694320 m!5600683))

(declare-fun m!5600685 () Bool)

(assert (=> b!4694320 m!5600685))

(declare-fun m!5600687 () Bool)

(assert (=> b!4694320 m!5600687))

(declare-fun m!5600689 () Bool)

(assert (=> b!4694315 m!5600689))

(declare-fun m!5600691 () Bool)

(assert (=> b!4694315 m!5600691))

(declare-fun m!5600693 () Bool)

(assert (=> b!4694315 m!5600693))

(declare-fun m!5600695 () Bool)

(assert (=> b!4694315 m!5600695))

(declare-fun m!5600697 () Bool)

(assert (=> b!4694315 m!5600697))

(declare-fun m!5600699 () Bool)

(assert (=> b!4694315 m!5600699))

(declare-fun m!5600701 () Bool)

(assert (=> b!4694315 m!5600701))

(declare-fun m!5600703 () Bool)

(assert (=> b!4694315 m!5600703))

(assert (=> b!4694315 m!5600703))

(declare-fun m!5600705 () Bool)

(assert (=> b!4694315 m!5600705))

(declare-fun m!5600707 () Bool)

(assert (=> b!4694315 m!5600707))

(assert (=> b!4694315 m!5600695))

(assert (=> b!4694315 m!5600705))

(declare-fun m!5600709 () Bool)

(assert (=> b!4694315 m!5600709))

(declare-fun m!5600711 () Bool)

(assert (=> b!4694315 m!5600711))

(declare-fun m!5600713 () Bool)

(assert (=> b!4694315 m!5600713))

(assert (=> b!4694315 m!5600689))

(declare-fun m!5600715 () Bool)

(assert (=> b!4694315 m!5600715))

(declare-fun m!5600717 () Bool)

(assert (=> b!4694315 m!5600717))

(declare-fun m!5600719 () Bool)

(assert (=> b!4694315 m!5600719))

(assert (=> b!4694315 m!5600697))

(declare-fun m!5600721 () Bool)

(assert (=> b!4694315 m!5600721))

(assert (=> b!4694315 m!5600713))

(assert (=> b!4694315 m!5600721))

(declare-fun m!5600723 () Bool)

(assert (=> b!4694315 m!5600723))

(declare-fun m!5600725 () Bool)

(assert (=> b!4694315 m!5600725))

(declare-fun m!5600727 () Bool)

(assert (=> b!4694312 m!5600727))

(declare-fun m!5600729 () Bool)

(assert (=> b!4694308 m!5600729))

(declare-fun m!5600731 () Bool)

(assert (=> b!4694308 m!5600731))

(declare-fun m!5600733 () Bool)

(assert (=> b!4694308 m!5600733))

(assert (=> b!4694308 m!5600731))

(declare-fun m!5600735 () Bool)

(assert (=> b!4694308 m!5600735))

(declare-fun m!5600737 () Bool)

(assert (=> b!4694308 m!5600737))

(assert (=> b!4694308 m!5600735))

(assert (=> b!4694308 m!5600733))

(declare-fun m!5600739 () Bool)

(assert (=> b!4694308 m!5600739))

(declare-fun m!5600741 () Bool)

(assert (=> b!4694308 m!5600741))

(declare-fun m!5600743 () Bool)

(assert (=> b!4694308 m!5600743))

(declare-fun m!5600745 () Bool)

(assert (=> b!4694308 m!5600745))

(declare-fun m!5600747 () Bool)

(assert (=> b!4694319 m!5600747))

(declare-fun m!5600749 () Bool)

(assert (=> b!4694319 m!5600749))

(declare-fun m!5600751 () Bool)

(assert (=> b!4694319 m!5600751))

(declare-fun m!5600753 () Bool)

(assert (=> b!4694319 m!5600753))

(declare-fun m!5600755 () Bool)

(assert (=> b!4694319 m!5600755))

(declare-fun m!5600757 () Bool)

(assert (=> b!4694319 m!5600757))

(declare-fun m!5600759 () Bool)

(assert (=> b!4694319 m!5600759))

(declare-fun m!5600761 () Bool)

(assert (=> b!4694319 m!5600761))

(declare-fun m!5600763 () Bool)

(assert (=> b!4694319 m!5600763))

(assert (=> b!4694319 m!5600761))

(declare-fun m!5600765 () Bool)

(assert (=> b!4694319 m!5600765))

(declare-fun m!5600767 () Bool)

(assert (=> b!4694319 m!5600767))

(declare-fun m!5600769 () Bool)

(assert (=> b!4694319 m!5600769))

(declare-fun m!5600771 () Bool)

(assert (=> b!4694322 m!5600771))

(declare-fun m!5600773 () Bool)

(assert (=> b!4694322 m!5600773))

(declare-fun m!5600775 () Bool)

(assert (=> b!4694322 m!5600775))

(declare-fun m!5600777 () Bool)

(assert (=> b!4694304 m!5600777))

(declare-fun m!5600779 () Bool)

(assert (=> b!4694313 m!5600779))

(declare-fun m!5600781 () Bool)

(assert (=> b!4694324 m!5600781))

(declare-fun m!5600783 () Bool)

(assert (=> b!4694317 m!5600783))

(declare-fun m!5600785 () Bool)

(assert (=> b!4694317 m!5600785))

(declare-fun m!5600787 () Bool)

(assert (=> b!4694317 m!5600787))

(assert (=> b!4694317 m!5600787))

(declare-fun m!5600789 () Bool)

(assert (=> b!4694317 m!5600789))

(declare-fun m!5600791 () Bool)

(assert (=> b!4694317 m!5600791))

(declare-fun m!5600793 () Bool)

(assert (=> b!4694306 m!5600793))

(declare-fun m!5600795 () Bool)

(assert (=> b!4694321 m!5600795))

(declare-fun m!5600797 () Bool)

(assert (=> b!4694310 m!5600797))

(declare-fun m!5600799 () Bool)

(assert (=> b!4694310 m!5600799))

(declare-fun m!5600801 () Bool)

(assert (=> b!4694314 m!5600801))

(declare-fun m!5600803 () Bool)

(assert (=> b!4694323 m!5600803))

(declare-fun m!5600805 () Bool)

(assert (=> b!4694307 m!5600805))

(declare-fun m!5600807 () Bool)

(assert (=> start!475320 m!5600807))

(declare-fun m!5600809 () Bool)

(assert (=> start!475320 m!5600809))

(declare-fun m!5600811 () Bool)

(assert (=> b!4694325 m!5600811))

(assert (=> b!4694325 m!5600811))

(declare-fun m!5600813 () Bool)

(assert (=> b!4694325 m!5600813))

(check-sat (not b!4694315) (not b!4694321) (not b!4694318) (not b!4694310) (not b!4694306) (not b!4694320) (not b!4694317) tp_is_empty!30789 (not b!4694322) (not b!4694304) (not start!475320) (not b!4694314) (not b!4694323) (not b!4694325) (not b!4694312) (not b!4694309) (not b!4694311) (not b!4694308) (not b!4694319) tp_is_empty!30791 (not b!4694313) (not b!4694307) (not b!4694324))
(check-sat)
(get-model)

(declare-fun d!1492117 () Bool)

(assert (=> d!1492117 (= (tail!8647 lt!1855078) (t!359778 lt!1855078))))

(assert (=> b!4694308 d!1492117))

(declare-fun bs!1089704 () Bool)

(declare-fun d!1492125 () Bool)

(assert (= bs!1089704 (and d!1492125 start!475320)))

(declare-fun lambda!208332 () Int)

(assert (=> bs!1089704 (= lambda!208332 lambda!208329)))

(declare-fun lt!1855132 () ListMap!5001)

(declare-fun invariantList!1424 (List!52587) Bool)

(assert (=> d!1492125 (invariantList!1424 (toList!5638 lt!1855132))))

(declare-fun e!2928470 () ListMap!5001)

(assert (=> d!1492125 (= lt!1855132 e!2928470)))

(declare-fun c!802530 () Bool)

(assert (=> d!1492125 (= c!802530 ((_ is Cons!52464) (Cons!52464 lt!1855101 (t!359778 (toList!5637 lm!2023)))))))

(assert (=> d!1492125 (forall!11355 (Cons!52464 lt!1855101 (t!359778 (toList!5637 lm!2023))) lambda!208332)))

(assert (=> d!1492125 (= (extractMap!1900 (Cons!52464 lt!1855101 (t!359778 (toList!5637 lm!2023)))) lt!1855132)))

(declare-fun b!4694361 () Bool)

(assert (=> b!4694361 (= e!2928470 (addToMapMapFromBucket!1306 (_2!30240 (h!58723 (Cons!52464 lt!1855101 (t!359778 (toList!5637 lm!2023))))) (extractMap!1900 (t!359778 (Cons!52464 lt!1855101 (t!359778 (toList!5637 lm!2023)))))))))

(declare-fun b!4694362 () Bool)

(assert (=> b!4694362 (= e!2928470 (ListMap!5002 Nil!52463))))

(assert (= (and d!1492125 c!802530) b!4694361))

(assert (= (and d!1492125 (not c!802530)) b!4694362))

(declare-fun m!5600877 () Bool)

(assert (=> d!1492125 m!5600877))

(declare-fun m!5600879 () Bool)

(assert (=> d!1492125 m!5600879))

(declare-fun m!5600881 () Bool)

(assert (=> b!4694361 m!5600881))

(assert (=> b!4694361 m!5600881))

(declare-fun m!5600883 () Bool)

(assert (=> b!4694361 m!5600883))

(assert (=> b!4694308 d!1492125))

(declare-fun d!1492141 () Bool)

(declare-fun e!2928473 () Bool)

(assert (=> d!1492141 e!2928473))

(declare-fun res!1980801 () Bool)

(assert (=> d!1492141 (=> (not res!1980801) (not e!2928473))))

(declare-fun lt!1855135 () ListMap!5001)

(assert (=> d!1492141 (= res!1980801 (not (contains!15696 lt!1855135 key!4653)))))

(declare-fun removePresrvNoDuplicatedKeys!345 (List!52587 K!13835) List!52587)

(assert (=> d!1492141 (= lt!1855135 (ListMap!5002 (removePresrvNoDuplicatedKeys!345 (toList!5638 lt!1855093) key!4653)))))

(assert (=> d!1492141 (= (-!678 lt!1855093 key!4653) lt!1855135)))

(declare-fun b!4694365 () Bool)

(declare-datatypes ((List!52590 0))(
  ( (Nil!52466) (Cons!52466 (h!58727 K!13835) (t!359782 List!52590)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!9201 (List!52590) (InoxSet K!13835))

(declare-fun keys!18747 (ListMap!5001) List!52590)

(assert (=> b!4694365 (= e!2928473 (= ((_ map and) (content!9201 (keys!18747 lt!1855093)) ((_ map not) (store ((as const (Array K!13835 Bool)) false) key!4653 true))) (content!9201 (keys!18747 lt!1855135))))))

(assert (= (and d!1492141 res!1980801) b!4694365))

(declare-fun m!5600885 () Bool)

(assert (=> d!1492141 m!5600885))

(declare-fun m!5600887 () Bool)

(assert (=> d!1492141 m!5600887))

(declare-fun m!5600889 () Bool)

(assert (=> b!4694365 m!5600889))

(declare-fun m!5600891 () Bool)

(assert (=> b!4694365 m!5600891))

(declare-fun m!5600893 () Bool)

(assert (=> b!4694365 m!5600893))

(declare-fun m!5600895 () Bool)

(assert (=> b!4694365 m!5600895))

(assert (=> b!4694365 m!5600891))

(declare-fun m!5600897 () Bool)

(assert (=> b!4694365 m!5600897))

(assert (=> b!4694365 m!5600893))

(assert (=> b!4694308 d!1492141))

(declare-fun bs!1089705 () Bool)

(declare-fun d!1492143 () Bool)

(assert (= bs!1089705 (and d!1492143 start!475320)))

(declare-fun lambda!208333 () Int)

(assert (=> bs!1089705 (= lambda!208333 lambda!208329)))

(declare-fun bs!1089706 () Bool)

(assert (= bs!1089706 (and d!1492143 d!1492125)))

(assert (=> bs!1089706 (= lambda!208333 lambda!208332)))

(declare-fun lt!1855136 () ListMap!5001)

(assert (=> d!1492143 (invariantList!1424 (toList!5638 lt!1855136))))

(declare-fun e!2928474 () ListMap!5001)

(assert (=> d!1492143 (= lt!1855136 e!2928474)))

(declare-fun c!802531 () Bool)

(assert (=> d!1492143 (= c!802531 ((_ is Cons!52464) (Cons!52464 lt!1855101 lt!1855102)))))

(assert (=> d!1492143 (forall!11355 (Cons!52464 lt!1855101 lt!1855102) lambda!208333)))

(assert (=> d!1492143 (= (extractMap!1900 (Cons!52464 lt!1855101 lt!1855102)) lt!1855136)))

(declare-fun b!4694366 () Bool)

(assert (=> b!4694366 (= e!2928474 (addToMapMapFromBucket!1306 (_2!30240 (h!58723 (Cons!52464 lt!1855101 lt!1855102))) (extractMap!1900 (t!359778 (Cons!52464 lt!1855101 lt!1855102)))))))

(declare-fun b!4694367 () Bool)

(assert (=> b!4694367 (= e!2928474 (ListMap!5002 Nil!52463))))

(assert (= (and d!1492143 c!802531) b!4694366))

(assert (= (and d!1492143 (not c!802531)) b!4694367))

(declare-fun m!5600899 () Bool)

(assert (=> d!1492143 m!5600899))

(declare-fun m!5600901 () Bool)

(assert (=> d!1492143 m!5600901))

(declare-fun m!5600903 () Bool)

(assert (=> b!4694366 m!5600903))

(assert (=> b!4694366 m!5600903))

(declare-fun m!5600905 () Bool)

(assert (=> b!4694366 m!5600905))

(assert (=> b!4694308 d!1492143))

(declare-fun d!1492145 () Bool)

(declare-fun content!9202 (List!52587) (InoxSet tuple2!53890))

(assert (=> d!1492145 (= (eq!1033 lt!1855097 lt!1855094) (= (content!9202 (toList!5638 lt!1855097)) (content!9202 (toList!5638 lt!1855094))))))

(declare-fun bs!1089707 () Bool)

(assert (= bs!1089707 d!1492145))

(declare-fun m!5600907 () Bool)

(assert (=> bs!1089707 m!5600907))

(declare-fun m!5600909 () Bool)

(assert (=> bs!1089707 m!5600909))

(assert (=> b!4694308 d!1492145))

(declare-fun bs!1089708 () Bool)

(declare-fun d!1492147 () Bool)

(assert (= bs!1089708 (and d!1492147 start!475320)))

(declare-fun lambda!208334 () Int)

(assert (=> bs!1089708 (= lambda!208334 lambda!208329)))

(declare-fun bs!1089709 () Bool)

(assert (= bs!1089709 (and d!1492147 d!1492125)))

(assert (=> bs!1089709 (= lambda!208334 lambda!208332)))

(declare-fun bs!1089710 () Bool)

(assert (= bs!1089710 (and d!1492147 d!1492143)))

(assert (=> bs!1089710 (= lambda!208334 lambda!208333)))

(declare-fun lt!1855137 () ListMap!5001)

(assert (=> d!1492147 (invariantList!1424 (toList!5638 lt!1855137))))

(declare-fun e!2928475 () ListMap!5001)

(assert (=> d!1492147 (= lt!1855137 e!2928475)))

(declare-fun c!802532 () Bool)

(assert (=> d!1492147 (= c!802532 ((_ is Cons!52464) (Cons!52464 lt!1855103 lt!1855102)))))

(assert (=> d!1492147 (forall!11355 (Cons!52464 lt!1855103 lt!1855102) lambda!208334)))

(assert (=> d!1492147 (= (extractMap!1900 (Cons!52464 lt!1855103 lt!1855102)) lt!1855137)))

(declare-fun b!4694368 () Bool)

(assert (=> b!4694368 (= e!2928475 (addToMapMapFromBucket!1306 (_2!30240 (h!58723 (Cons!52464 lt!1855103 lt!1855102))) (extractMap!1900 (t!359778 (Cons!52464 lt!1855103 lt!1855102)))))))

(declare-fun b!4694369 () Bool)

(assert (=> b!4694369 (= e!2928475 (ListMap!5002 Nil!52463))))

(assert (= (and d!1492147 c!802532) b!4694368))

(assert (= (and d!1492147 (not c!802532)) b!4694369))

(declare-fun m!5600911 () Bool)

(assert (=> d!1492147 m!5600911))

(declare-fun m!5600913 () Bool)

(assert (=> d!1492147 m!5600913))

(declare-fun m!5600915 () Bool)

(assert (=> b!4694368 m!5600915))

(assert (=> b!4694368 m!5600915))

(declare-fun m!5600917 () Bool)

(assert (=> b!4694368 m!5600917))

(assert (=> b!4694308 d!1492147))

(declare-fun bs!1089711 () Bool)

(declare-fun d!1492149 () Bool)

(assert (= bs!1089711 (and d!1492149 start!475320)))

(declare-fun lambda!208337 () Int)

(assert (=> bs!1089711 (= lambda!208337 lambda!208329)))

(declare-fun bs!1089712 () Bool)

(assert (= bs!1089712 (and d!1492149 d!1492125)))

(assert (=> bs!1089712 (= lambda!208337 lambda!208332)))

(declare-fun bs!1089713 () Bool)

(assert (= bs!1089713 (and d!1492149 d!1492143)))

(assert (=> bs!1089713 (= lambda!208337 lambda!208333)))

(declare-fun bs!1089714 () Bool)

(assert (= bs!1089714 (and d!1492149 d!1492147)))

(assert (=> bs!1089714 (= lambda!208337 lambda!208334)))

(assert (=> d!1492149 (eq!1033 (extractMap!1900 (Cons!52464 (tuple2!53893 hash!405 lt!1855091) (tail!8647 (toList!5637 lt!1855076)))) (-!678 (extractMap!1900 (Cons!52464 (tuple2!53893 hash!405 (t!359777 oldBucket!34)) (tail!8647 (toList!5637 lt!1855076)))) key!4653))))

(declare-fun lt!1855140 () Unit!124905)

(declare-fun choose!32686 (ListLongMap!4167 (_ BitVec 64) List!52587 List!52587 K!13835 Hashable!6243) Unit!124905)

(assert (=> d!1492149 (= lt!1855140 (choose!32686 lt!1855076 hash!405 (t!359777 oldBucket!34) lt!1855091 key!4653 hashF!1323))))

(assert (=> d!1492149 (forall!11355 (toList!5637 lt!1855076) lambda!208337)))

(assert (=> d!1492149 (= (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMapOneHashIsHead!48 lt!1855076 hash!405 (t!359777 oldBucket!34) lt!1855091 key!4653 hashF!1323) lt!1855140)))

(declare-fun bs!1089715 () Bool)

(assert (= bs!1089715 d!1492149))

(declare-fun m!5600919 () Bool)

(assert (=> bs!1089715 m!5600919))

(declare-fun m!5600921 () Bool)

(assert (=> bs!1089715 m!5600921))

(declare-fun m!5600923 () Bool)

(assert (=> bs!1089715 m!5600923))

(declare-fun m!5600925 () Bool)

(assert (=> bs!1089715 m!5600925))

(assert (=> bs!1089715 m!5600925))

(declare-fun m!5600927 () Bool)

(assert (=> bs!1089715 m!5600927))

(declare-fun m!5600929 () Bool)

(assert (=> bs!1089715 m!5600929))

(assert (=> bs!1089715 m!5600921))

(assert (=> bs!1089715 m!5600927))

(declare-fun m!5600931 () Bool)

(assert (=> bs!1089715 m!5600931))

(assert (=> b!4694308 d!1492149))

(declare-fun d!1492151 () Bool)

(assert (=> d!1492151 (= (eq!1033 (extractMap!1900 (Cons!52464 lt!1855101 lt!1855102)) (-!678 (extractMap!1900 (Cons!52464 lt!1855103 lt!1855102)) key!4653)) (= (content!9202 (toList!5638 (extractMap!1900 (Cons!52464 lt!1855101 lt!1855102)))) (content!9202 (toList!5638 (-!678 (extractMap!1900 (Cons!52464 lt!1855103 lt!1855102)) key!4653)))))))

(declare-fun bs!1089716 () Bool)

(assert (= bs!1089716 d!1492151))

(declare-fun m!5600933 () Bool)

(assert (=> bs!1089716 m!5600933))

(declare-fun m!5600935 () Bool)

(assert (=> bs!1089716 m!5600935))

(assert (=> b!4694308 d!1492151))

(declare-fun d!1492153 () Bool)

(declare-fun e!2928476 () Bool)

(assert (=> d!1492153 e!2928476))

(declare-fun res!1980802 () Bool)

(assert (=> d!1492153 (=> (not res!1980802) (not e!2928476))))

(declare-fun lt!1855141 () ListMap!5001)

(assert (=> d!1492153 (= res!1980802 (not (contains!15696 lt!1855141 key!4653)))))

(assert (=> d!1492153 (= lt!1855141 (ListMap!5002 (removePresrvNoDuplicatedKeys!345 (toList!5638 (extractMap!1900 (Cons!52464 lt!1855103 lt!1855102))) key!4653)))))

(assert (=> d!1492153 (= (-!678 (extractMap!1900 (Cons!52464 lt!1855103 lt!1855102)) key!4653) lt!1855141)))

(declare-fun b!4694370 () Bool)

(assert (=> b!4694370 (= e!2928476 (= ((_ map and) (content!9201 (keys!18747 (extractMap!1900 (Cons!52464 lt!1855103 lt!1855102)))) ((_ map not) (store ((as const (Array K!13835 Bool)) false) key!4653 true))) (content!9201 (keys!18747 lt!1855141))))))

(assert (= (and d!1492153 res!1980802) b!4694370))

(declare-fun m!5600937 () Bool)

(assert (=> d!1492153 m!5600937))

(declare-fun m!5600939 () Bool)

(assert (=> d!1492153 m!5600939))

(assert (=> b!4694370 m!5600889))

(declare-fun m!5600941 () Bool)

(assert (=> b!4694370 m!5600941))

(declare-fun m!5600943 () Bool)

(assert (=> b!4694370 m!5600943))

(declare-fun m!5600945 () Bool)

(assert (=> b!4694370 m!5600945))

(assert (=> b!4694370 m!5600941))

(declare-fun m!5600947 () Bool)

(assert (=> b!4694370 m!5600947))

(assert (=> b!4694370 m!5600731))

(assert (=> b!4694370 m!5600943))

(assert (=> b!4694308 d!1492153))

(declare-fun d!1492155 () Bool)

(declare-datatypes ((Option!12127 0))(
  ( (None!12126) (Some!12126 (v!46573 List!52587)) )
))
(declare-fun get!17529 (Option!12127) List!52587)

(declare-fun getValueByKey!1807 (List!52588 (_ BitVec 64)) Option!12127)

(assert (=> d!1492155 (= (apply!12357 lm!2023 lt!1855086) (get!17529 (getValueByKey!1807 (toList!5637 lm!2023) lt!1855086)))))

(declare-fun bs!1089717 () Bool)

(assert (= bs!1089717 d!1492155))

(declare-fun m!5600949 () Bool)

(assert (=> bs!1089717 m!5600949))

(assert (=> bs!1089717 m!5600949))

(declare-fun m!5600951 () Bool)

(assert (=> bs!1089717 m!5600951))

(assert (=> b!4694319 d!1492155))

(declare-fun d!1492157 () Bool)

(declare-fun e!2928486 () Bool)

(assert (=> d!1492157 e!2928486))

(declare-fun res!1980807 () Bool)

(assert (=> d!1492157 (=> res!1980807 e!2928486)))

(declare-fun lt!1855192 () Bool)

(assert (=> d!1492157 (= res!1980807 (not lt!1855192))))

(declare-fun lt!1855194 () Bool)

(assert (=> d!1492157 (= lt!1855192 lt!1855194)))

(declare-fun lt!1855195 () Unit!124905)

(declare-fun e!2928485 () Unit!124905)

(assert (=> d!1492157 (= lt!1855195 e!2928485)))

(declare-fun c!802537 () Bool)

(assert (=> d!1492157 (= c!802537 lt!1855194)))

(declare-fun containsKey!3102 (List!52588 (_ BitVec 64)) Bool)

(assert (=> d!1492157 (= lt!1855194 (containsKey!3102 (toList!5637 lm!2023) lt!1855086))))

(assert (=> d!1492157 (= (contains!15698 lm!2023 lt!1855086) lt!1855192)))

(declare-fun b!4694381 () Bool)

(declare-fun lt!1855193 () Unit!124905)

(assert (=> b!4694381 (= e!2928485 lt!1855193)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1698 (List!52588 (_ BitVec 64)) Unit!124905)

(assert (=> b!4694381 (= lt!1855193 (lemmaContainsKeyImpliesGetValueByKeyDefined!1698 (toList!5637 lm!2023) lt!1855086))))

(declare-fun isDefined!9382 (Option!12127) Bool)

(assert (=> b!4694381 (isDefined!9382 (getValueByKey!1807 (toList!5637 lm!2023) lt!1855086))))

(declare-fun b!4694382 () Bool)

(declare-fun Unit!124918 () Unit!124905)

(assert (=> b!4694382 (= e!2928485 Unit!124918)))

(declare-fun b!4694383 () Bool)

(assert (=> b!4694383 (= e!2928486 (isDefined!9382 (getValueByKey!1807 (toList!5637 lm!2023) lt!1855086)))))

(assert (= (and d!1492157 c!802537) b!4694381))

(assert (= (and d!1492157 (not c!802537)) b!4694382))

(assert (= (and d!1492157 (not res!1980807)) b!4694383))

(declare-fun m!5600953 () Bool)

(assert (=> d!1492157 m!5600953))

(declare-fun m!5600955 () Bool)

(assert (=> b!4694381 m!5600955))

(assert (=> b!4694381 m!5600949))

(assert (=> b!4694381 m!5600949))

(declare-fun m!5600957 () Bool)

(assert (=> b!4694381 m!5600957))

(assert (=> b!4694383 m!5600949))

(assert (=> b!4694383 m!5600949))

(assert (=> b!4694383 m!5600957))

(assert (=> b!4694319 d!1492157))

(declare-fun b!4694413 () Bool)

(declare-fun e!2928506 () Option!12125)

(declare-fun e!2928502 () Option!12125)

(assert (=> b!4694413 (= e!2928506 e!2928502)))

(declare-fun c!802544 () Bool)

(assert (=> b!4694413 (= c!802544 ((_ is Cons!52463) lt!1855084))))

(declare-fun b!4694414 () Bool)

(declare-fun e!2928505 () Bool)

(declare-fun e!2928503 () Bool)

(assert (=> b!4694414 (= e!2928505 e!2928503)))

(declare-fun res!1980824 () Bool)

(assert (=> b!4694414 (=> (not res!1980824) (not e!2928503))))

(declare-fun lt!1855219 () Option!12125)

(assert (=> b!4694414 (= res!1980824 (isDefined!9380 lt!1855219))))

(declare-fun b!4694415 () Bool)

(assert (=> b!4694415 (= e!2928506 (Some!12124 (h!58722 lt!1855084)))))

(declare-fun d!1492159 () Bool)

(assert (=> d!1492159 e!2928505))

(declare-fun res!1980826 () Bool)

(assert (=> d!1492159 (=> res!1980826 e!2928505)))

(declare-fun e!2928504 () Bool)

(assert (=> d!1492159 (= res!1980826 e!2928504)))

(declare-fun res!1980825 () Bool)

(assert (=> d!1492159 (=> (not res!1980825) (not e!2928504))))

(declare-fun isEmpty!29107 (Option!12125) Bool)

(assert (=> d!1492159 (= res!1980825 (isEmpty!29107 lt!1855219))))

(assert (=> d!1492159 (= lt!1855219 e!2928506)))

(declare-fun c!802543 () Bool)

(assert (=> d!1492159 (= c!802543 (and ((_ is Cons!52463) lt!1855084) (= (_1!30239 (h!58722 lt!1855084)) key!4653)))))

(assert (=> d!1492159 (noDuplicateKeys!1874 lt!1855084)))

(assert (=> d!1492159 (= (getPair!478 lt!1855084 key!4653) lt!1855219)))

(declare-fun b!4694416 () Bool)

(assert (=> b!4694416 (= e!2928502 None!12124)))

(declare-fun b!4694417 () Bool)

(assert (=> b!4694417 (= e!2928502 (getPair!478 (t!359777 lt!1855084) key!4653))))

(declare-fun b!4694418 () Bool)

(declare-fun res!1980823 () Bool)

(assert (=> b!4694418 (=> (not res!1980823) (not e!2928503))))

(declare-fun get!17530 (Option!12125) tuple2!53890)

(assert (=> b!4694418 (= res!1980823 (= (_1!30239 (get!17530 lt!1855219)) key!4653))))

(declare-fun b!4694419 () Bool)

(assert (=> b!4694419 (= e!2928504 (not (containsKey!3101 lt!1855084 key!4653)))))

(declare-fun b!4694420 () Bool)

(declare-fun contains!15701 (List!52587 tuple2!53890) Bool)

(assert (=> b!4694420 (= e!2928503 (contains!15701 lt!1855084 (get!17530 lt!1855219)))))

(assert (= (and d!1492159 c!802543) b!4694415))

(assert (= (and d!1492159 (not c!802543)) b!4694413))

(assert (= (and b!4694413 c!802544) b!4694417))

(assert (= (and b!4694413 (not c!802544)) b!4694416))

(assert (= (and d!1492159 res!1980825) b!4694419))

(assert (= (and d!1492159 (not res!1980826)) b!4694414))

(assert (= (and b!4694414 res!1980824) b!4694418))

(assert (= (and b!4694418 res!1980823) b!4694420))

(declare-fun m!5600959 () Bool)

(assert (=> b!4694414 m!5600959))

(declare-fun m!5600961 () Bool)

(assert (=> b!4694418 m!5600961))

(declare-fun m!5600963 () Bool)

(assert (=> b!4694417 m!5600963))

(declare-fun m!5600967 () Bool)

(assert (=> d!1492159 m!5600967))

(declare-fun m!5600971 () Bool)

(assert (=> d!1492159 m!5600971))

(assert (=> b!4694420 m!5600961))

(assert (=> b!4694420 m!5600961))

(declare-fun m!5600979 () Bool)

(assert (=> b!4694420 m!5600979))

(declare-fun m!5600983 () Bool)

(assert (=> b!4694419 m!5600983))

(assert (=> b!4694319 d!1492159))

(declare-fun bs!1089721 () Bool)

(declare-fun d!1492161 () Bool)

(assert (= bs!1089721 (and d!1492161 start!475320)))

(declare-fun lambda!208372 () Int)

(assert (=> bs!1089721 (= lambda!208372 lambda!208329)))

(declare-fun bs!1089722 () Bool)

(assert (= bs!1089722 (and d!1492161 d!1492143)))

(assert (=> bs!1089722 (= lambda!208372 lambda!208333)))

(declare-fun bs!1089723 () Bool)

(assert (= bs!1089723 (and d!1492161 d!1492147)))

(assert (=> bs!1089723 (= lambda!208372 lambda!208334)))

(declare-fun bs!1089724 () Bool)

(assert (= bs!1089724 (and d!1492161 d!1492149)))

(assert (=> bs!1089724 (= lambda!208372 lambda!208337)))

(declare-fun bs!1089725 () Bool)

(assert (= bs!1089725 (and d!1492161 d!1492125)))

(assert (=> bs!1089725 (= lambda!208372 lambda!208332)))

(assert (=> d!1492161 (contains!15698 lm!2023 (hash!4107 hashF!1323 key!4653))))

(declare-fun lt!1855222 () Unit!124905)

(declare-fun choose!32687 (ListLongMap!4167 K!13835 Hashable!6243) Unit!124905)

(assert (=> d!1492161 (= lt!1855222 (choose!32687 lm!2023 key!4653 hashF!1323))))

(assert (=> d!1492161 (forall!11355 (toList!5637 lm!2023) lambda!208372)))

(assert (=> d!1492161 (= (lemmaInGenMapThenLongMapContainsHash!684 lm!2023 key!4653 hashF!1323) lt!1855222)))

(declare-fun bs!1089726 () Bool)

(assert (= bs!1089726 d!1492161))

(assert (=> bs!1089726 m!5600727))

(assert (=> bs!1089726 m!5600727))

(declare-fun m!5601007 () Bool)

(assert (=> bs!1089726 m!5601007))

(declare-fun m!5601009 () Bool)

(assert (=> bs!1089726 m!5601009))

(declare-fun m!5601011 () Bool)

(assert (=> bs!1089726 m!5601011))

(assert (=> b!4694319 d!1492161))

(declare-fun d!1492165 () Bool)

(declare-fun dynLambda!21727 (Int tuple2!53892) Bool)

(assert (=> d!1492165 (dynLambda!21727 lambda!208329 lt!1855100)))

(declare-fun lt!1855228 () Unit!124905)

(declare-fun choose!32688 (List!52588 Int tuple2!53892) Unit!124905)

(assert (=> d!1492165 (= lt!1855228 (choose!32688 (toList!5637 lm!2023) lambda!208329 lt!1855100))))

(declare-fun e!2928512 () Bool)

(assert (=> d!1492165 e!2928512))

(declare-fun res!1980829 () Bool)

(assert (=> d!1492165 (=> (not res!1980829) (not e!2928512))))

(assert (=> d!1492165 (= res!1980829 (forall!11355 (toList!5637 lm!2023) lambda!208329))))

(assert (=> d!1492165 (= (forallContained!3462 (toList!5637 lm!2023) lambda!208329 lt!1855100) lt!1855228)))

(declare-fun b!4694429 () Bool)

(assert (=> b!4694429 (= e!2928512 (contains!15697 (toList!5637 lm!2023) lt!1855100))))

(assert (= (and d!1492165 res!1980829) b!4694429))

(declare-fun b_lambda!177137 () Bool)

(assert (=> (not b_lambda!177137) (not d!1492165)))

(declare-fun m!5601023 () Bool)

(assert (=> d!1492165 m!5601023))

(declare-fun m!5601025 () Bool)

(assert (=> d!1492165 m!5601025))

(assert (=> d!1492165 m!5600807))

(assert (=> b!4694429 m!5600769))

(assert (=> b!4694319 d!1492165))

(declare-fun bs!1089764 () Bool)

(declare-fun d!1492171 () Bool)

(assert (= bs!1089764 (and d!1492171 start!475320)))

(declare-fun lambda!208395 () Int)

(assert (=> bs!1089764 (= lambda!208395 lambda!208329)))

(declare-fun bs!1089765 () Bool)

(assert (= bs!1089765 (and d!1492171 d!1492143)))

(assert (=> bs!1089765 (= lambda!208395 lambda!208333)))

(declare-fun bs!1089766 () Bool)

(assert (= bs!1089766 (and d!1492171 d!1492147)))

(assert (=> bs!1089766 (= lambda!208395 lambda!208334)))

(declare-fun bs!1089767 () Bool)

(assert (= bs!1089767 (and d!1492171 d!1492149)))

(assert (=> bs!1089767 (= lambda!208395 lambda!208337)))

(declare-fun bs!1089768 () Bool)

(assert (= bs!1089768 (and d!1492171 d!1492161)))

(assert (=> bs!1089768 (= lambda!208395 lambda!208372)))

(declare-fun bs!1089769 () Bool)

(assert (= bs!1089769 (and d!1492171 d!1492125)))

(assert (=> bs!1089769 (= lambda!208395 lambda!208332)))

(declare-fun b!4694472 () Bool)

(declare-fun e!2928536 () Bool)

(assert (=> b!4694472 (= e!2928536 (isDefined!9380 (getPair!478 (apply!12357 lm!2023 (hash!4107 hashF!1323 key!4653)) key!4653)))))

(declare-fun lt!1855264 () Unit!124905)

(assert (=> b!4694472 (= lt!1855264 (forallContained!3462 (toList!5637 lm!2023) lambda!208395 (tuple2!53893 (hash!4107 hashF!1323 key!4653) (apply!12357 lm!2023 (hash!4107 hashF!1323 key!4653)))))))

(declare-fun lt!1855260 () Unit!124905)

(declare-fun lt!1855259 () Unit!124905)

(assert (=> b!4694472 (= lt!1855260 lt!1855259)))

(declare-fun lt!1855261 () (_ BitVec 64))

(declare-fun lt!1855266 () List!52587)

(assert (=> b!4694472 (contains!15697 (toList!5637 lm!2023) (tuple2!53893 lt!1855261 lt!1855266))))

(assert (=> b!4694472 (= lt!1855259 (lemmaGetValueImpliesTupleContained!283 lm!2023 lt!1855261 lt!1855266))))

(declare-fun e!2928535 () Bool)

(assert (=> b!4694472 e!2928535))

(declare-fun res!1980851 () Bool)

(assert (=> b!4694472 (=> (not res!1980851) (not e!2928535))))

(assert (=> b!4694472 (= res!1980851 (contains!15698 lm!2023 lt!1855261))))

(assert (=> b!4694472 (= lt!1855266 (apply!12357 lm!2023 (hash!4107 hashF!1323 key!4653)))))

(assert (=> b!4694472 (= lt!1855261 (hash!4107 hashF!1323 key!4653))))

(declare-fun lt!1855265 () Unit!124905)

(declare-fun lt!1855262 () Unit!124905)

(assert (=> b!4694472 (= lt!1855265 lt!1855262)))

(assert (=> b!4694472 (contains!15698 lm!2023 (hash!4107 hashF!1323 key!4653))))

(assert (=> b!4694472 (= lt!1855262 (lemmaInGenMapThenLongMapContainsHash!684 lm!2023 key!4653 hashF!1323))))

(declare-fun b!4694473 () Bool)

(assert (=> b!4694473 (= e!2928535 (= (getValueByKey!1807 (toList!5637 lm!2023) lt!1855261) (Some!12126 lt!1855266)))))

(assert (=> d!1492171 e!2928536))

(declare-fun res!1980850 () Bool)

(assert (=> d!1492171 (=> (not res!1980850) (not e!2928536))))

(assert (=> d!1492171 (= res!1980850 (forall!11355 (toList!5637 lm!2023) lambda!208395))))

(declare-fun lt!1855263 () Unit!124905)

(declare-fun choose!32690 (ListLongMap!4167 K!13835 Hashable!6243) Unit!124905)

(assert (=> d!1492171 (= lt!1855263 (choose!32690 lm!2023 key!4653 hashF!1323))))

(assert (=> d!1492171 (forall!11355 (toList!5637 lm!2023) lambda!208395)))

(assert (=> d!1492171 (= (lemmaInGenMapThenGetPairDefined!274 lm!2023 key!4653 hashF!1323) lt!1855263)))

(declare-fun b!4694471 () Bool)

(declare-fun res!1980853 () Bool)

(assert (=> b!4694471 (=> (not res!1980853) (not e!2928536))))

(assert (=> b!4694471 (= res!1980853 (contains!15696 (extractMap!1900 (toList!5637 lm!2023)) key!4653))))

(declare-fun b!4694470 () Bool)

(declare-fun res!1980852 () Bool)

(assert (=> b!4694470 (=> (not res!1980852) (not e!2928536))))

(assert (=> b!4694470 (= res!1980852 (allKeysSameHashInMap!1788 lm!2023 hashF!1323))))

(assert (= (and d!1492171 res!1980850) b!4694470))

(assert (= (and b!4694470 res!1980852) b!4694471))

(assert (= (and b!4694471 res!1980853) b!4694472))

(assert (= (and b!4694472 res!1980851) b!4694473))

(assert (=> b!4694470 m!5600793))

(declare-fun m!5601135 () Bool)

(assert (=> b!4694473 m!5601135))

(assert (=> b!4694471 m!5600799))

(assert (=> b!4694471 m!5600799))

(declare-fun m!5601137 () Bool)

(assert (=> b!4694471 m!5601137))

(assert (=> b!4694472 m!5600727))

(assert (=> b!4694472 m!5601007))

(assert (=> b!4694472 m!5600727))

(declare-fun m!5601139 () Bool)

(assert (=> b!4694472 m!5601139))

(assert (=> b!4694472 m!5601139))

(declare-fun m!5601141 () Bool)

(assert (=> b!4694472 m!5601141))

(assert (=> b!4694472 m!5601141))

(declare-fun m!5601143 () Bool)

(assert (=> b!4694472 m!5601143))

(assert (=> b!4694472 m!5600749))

(assert (=> b!4694472 m!5600727))

(declare-fun m!5601145 () Bool)

(assert (=> b!4694472 m!5601145))

(declare-fun m!5601147 () Bool)

(assert (=> b!4694472 m!5601147))

(declare-fun m!5601149 () Bool)

(assert (=> b!4694472 m!5601149))

(declare-fun m!5601151 () Bool)

(assert (=> b!4694472 m!5601151))

(declare-fun m!5601153 () Bool)

(assert (=> d!1492171 m!5601153))

(declare-fun m!5601155 () Bool)

(assert (=> d!1492171 m!5601155))

(assert (=> d!1492171 m!5601153))

(assert (=> b!4694319 d!1492171))

(declare-fun d!1492213 () Bool)

(assert (=> d!1492213 (containsKey!3101 oldBucket!34 key!4653)))

(declare-fun lt!1855285 () Unit!124905)

(declare-fun choose!32692 (List!52587 K!13835 Hashable!6243) Unit!124905)

(assert (=> d!1492213 (= lt!1855285 (choose!32692 oldBucket!34 key!4653 hashF!1323))))

(assert (=> d!1492213 (noDuplicateKeys!1874 oldBucket!34)))

(assert (=> d!1492213 (= (lemmaGetPairDefinedThenContainsKey!226 oldBucket!34 key!4653 hashF!1323) lt!1855285)))

(declare-fun bs!1089770 () Bool)

(assert (= bs!1089770 d!1492213))

(assert (=> bs!1089770 m!5600759))

(declare-fun m!5601157 () Bool)

(assert (=> bs!1089770 m!5601157))

(assert (=> bs!1089770 m!5600777))

(assert (=> b!4694319 d!1492213))

(declare-fun d!1492215 () Bool)

(declare-fun lt!1855288 () Bool)

(declare-fun content!9204 (List!52588) (InoxSet tuple2!53892))

(assert (=> d!1492215 (= lt!1855288 (select (content!9204 (toList!5637 lm!2023)) lt!1855100))))

(declare-fun e!2928554 () Bool)

(assert (=> d!1492215 (= lt!1855288 e!2928554)))

(declare-fun res!1980865 () Bool)

(assert (=> d!1492215 (=> (not res!1980865) (not e!2928554))))

(assert (=> d!1492215 (= res!1980865 ((_ is Cons!52464) (toList!5637 lm!2023)))))

(assert (=> d!1492215 (= (contains!15697 (toList!5637 lm!2023) lt!1855100) lt!1855288)))

(declare-fun b!4694496 () Bool)

(declare-fun e!2928553 () Bool)

(assert (=> b!4694496 (= e!2928554 e!2928553)))

(declare-fun res!1980864 () Bool)

(assert (=> b!4694496 (=> res!1980864 e!2928553)))

(assert (=> b!4694496 (= res!1980864 (= (h!58723 (toList!5637 lm!2023)) lt!1855100))))

(declare-fun b!4694497 () Bool)

(assert (=> b!4694497 (= e!2928553 (contains!15697 (t!359778 (toList!5637 lm!2023)) lt!1855100))))

(assert (= (and d!1492215 res!1980865) b!4694496))

(assert (= (and b!4694496 (not res!1980864)) b!4694497))

(declare-fun m!5601159 () Bool)

(assert (=> d!1492215 m!5601159))

(declare-fun m!5601161 () Bool)

(assert (=> d!1492215 m!5601161))

(declare-fun m!5601163 () Bool)

(assert (=> b!4694497 m!5601163))

(assert (=> b!4694319 d!1492215))

(declare-fun d!1492217 () Bool)

(declare-fun res!1980873 () Bool)

(declare-fun e!2928566 () Bool)

(assert (=> d!1492217 (=> res!1980873 e!2928566)))

(assert (=> d!1492217 (= res!1980873 (and ((_ is Cons!52463) oldBucket!34) (= (_1!30239 (h!58722 oldBucket!34)) key!4653)))))

(assert (=> d!1492217 (= (containsKey!3101 oldBucket!34 key!4653) e!2928566)))

(declare-fun b!4694513 () Bool)

(declare-fun e!2928567 () Bool)

(assert (=> b!4694513 (= e!2928566 e!2928567)))

(declare-fun res!1980874 () Bool)

(assert (=> b!4694513 (=> (not res!1980874) (not e!2928567))))

(assert (=> b!4694513 (= res!1980874 ((_ is Cons!52463) oldBucket!34))))

(declare-fun b!4694514 () Bool)

(assert (=> b!4694514 (= e!2928567 (containsKey!3101 (t!359777 oldBucket!34) key!4653))))

(assert (= (and d!1492217 (not res!1980873)) b!4694513))

(assert (= (and b!4694513 res!1980874) b!4694514))

(assert (=> b!4694514 m!5600755))

(assert (=> b!4694319 d!1492217))

(declare-fun d!1492221 () Bool)

(assert (=> d!1492221 (= (isDefined!9380 (getPair!478 lt!1855084 key!4653)) (not (isEmpty!29107 (getPair!478 lt!1855084 key!4653))))))

(declare-fun bs!1089778 () Bool)

(assert (= bs!1089778 d!1492221))

(assert (=> bs!1089778 m!5600761))

(declare-fun m!5601185 () Bool)

(assert (=> bs!1089778 m!5601185))

(assert (=> b!4694319 d!1492221))

(declare-fun d!1492223 () Bool)

(assert (=> d!1492223 (contains!15697 (toList!5637 lm!2023) (tuple2!53893 lt!1855086 lt!1855084))))

(declare-fun lt!1855302 () Unit!124905)

(declare-fun choose!32694 (ListLongMap!4167 (_ BitVec 64) List!52587) Unit!124905)

(assert (=> d!1492223 (= lt!1855302 (choose!32694 lm!2023 lt!1855086 lt!1855084))))

(assert (=> d!1492223 (contains!15698 lm!2023 lt!1855086)))

(assert (=> d!1492223 (= (lemmaGetValueImpliesTupleContained!283 lm!2023 lt!1855086 lt!1855084) lt!1855302)))

(declare-fun bs!1089779 () Bool)

(assert (= bs!1089779 d!1492223))

(declare-fun m!5601193 () Bool)

(assert (=> bs!1089779 m!5601193))

(declare-fun m!5601195 () Bool)

(assert (=> bs!1089779 m!5601195))

(assert (=> bs!1089779 m!5600753))

(assert (=> b!4694319 d!1492223))

(declare-fun d!1492227 () Bool)

(declare-fun res!1980881 () Bool)

(declare-fun e!2928574 () Bool)

(assert (=> d!1492227 (=> res!1980881 e!2928574)))

(assert (=> d!1492227 (= res!1980881 (and ((_ is Cons!52463) (t!359777 oldBucket!34)) (= (_1!30239 (h!58722 (t!359777 oldBucket!34))) key!4653)))))

(assert (=> d!1492227 (= (containsKey!3101 (t!359777 oldBucket!34) key!4653) e!2928574)))

(declare-fun b!4694522 () Bool)

(declare-fun e!2928575 () Bool)

(assert (=> b!4694522 (= e!2928574 e!2928575)))

(declare-fun res!1980882 () Bool)

(assert (=> b!4694522 (=> (not res!1980882) (not e!2928575))))

(assert (=> b!4694522 (= res!1980882 ((_ is Cons!52463) (t!359777 oldBucket!34)))))

(declare-fun b!4694523 () Bool)

(assert (=> b!4694523 (= e!2928575 (containsKey!3101 (t!359777 (t!359777 oldBucket!34)) key!4653))))

(assert (= (and d!1492227 (not res!1980881)) b!4694522))

(assert (= (and b!4694522 res!1980882) b!4694523))

(declare-fun m!5601201 () Bool)

(assert (=> b!4694523 m!5601201))

(assert (=> b!4694319 d!1492227))

(declare-fun d!1492229 () Bool)

(declare-fun e!2928576 () Bool)

(assert (=> d!1492229 e!2928576))

(declare-fun res!1980883 () Bool)

(assert (=> d!1492229 (=> (not res!1980883) (not e!2928576))))

(declare-fun lt!1855304 () ListMap!5001)

(assert (=> d!1492229 (= res!1980883 (not (contains!15696 lt!1855304 key!4653)))))

(assert (=> d!1492229 (= lt!1855304 (ListMap!5002 (removePresrvNoDuplicatedKeys!345 (toList!5638 (+!2158 lt!1855093 (h!58722 oldBucket!34))) key!4653)))))

(assert (=> d!1492229 (= (-!678 (+!2158 lt!1855093 (h!58722 oldBucket!34)) key!4653) lt!1855304)))

(declare-fun b!4694524 () Bool)

(assert (=> b!4694524 (= e!2928576 (= ((_ map and) (content!9201 (keys!18747 (+!2158 lt!1855093 (h!58722 oldBucket!34)))) ((_ map not) (store ((as const (Array K!13835 Bool)) false) key!4653 true))) (content!9201 (keys!18747 lt!1855304))))))

(assert (= (and d!1492229 res!1980883) b!4694524))

(declare-fun m!5601205 () Bool)

(assert (=> d!1492229 m!5601205))

(declare-fun m!5601207 () Bool)

(assert (=> d!1492229 m!5601207))

(assert (=> b!4694524 m!5600889))

(declare-fun m!5601209 () Bool)

(assert (=> b!4694524 m!5601209))

(declare-fun m!5601211 () Bool)

(assert (=> b!4694524 m!5601211))

(declare-fun m!5601213 () Bool)

(assert (=> b!4694524 m!5601213))

(assert (=> b!4694524 m!5601209))

(declare-fun m!5601215 () Bool)

(assert (=> b!4694524 m!5601215))

(assert (=> b!4694524 m!5600787))

(assert (=> b!4694524 m!5601211))

(assert (=> b!4694317 d!1492229))

(declare-fun d!1492233 () Bool)

(declare-fun e!2928582 () Bool)

(assert (=> d!1492233 e!2928582))

(declare-fun res!1980891 () Bool)

(assert (=> d!1492233 (=> (not res!1980891) (not e!2928582))))

(declare-fun lt!1855320 () ListMap!5001)

(assert (=> d!1492233 (= res!1980891 (contains!15696 lt!1855320 (_1!30239 (h!58722 oldBucket!34))))))

(declare-fun lt!1855321 () List!52587)

(assert (=> d!1492233 (= lt!1855320 (ListMap!5002 lt!1855321))))

(declare-fun lt!1855322 () Unit!124905)

(declare-fun lt!1855319 () Unit!124905)

(assert (=> d!1492233 (= lt!1855322 lt!1855319)))

(declare-datatypes ((Option!12129 0))(
  ( (None!12128) (Some!12128 (v!46575 V!14081)) )
))
(declare-fun getValueByKey!1809 (List!52587 K!13835) Option!12129)

(assert (=> d!1492233 (= (getValueByKey!1809 lt!1855321 (_1!30239 (h!58722 oldBucket!34))) (Some!12128 (_2!30239 (h!58722 oldBucket!34))))))

(declare-fun lemmaContainsTupThenGetReturnValue!1014 (List!52587 K!13835 V!14081) Unit!124905)

(assert (=> d!1492233 (= lt!1855319 (lemmaContainsTupThenGetReturnValue!1014 lt!1855321 (_1!30239 (h!58722 oldBucket!34)) (_2!30239 (h!58722 oldBucket!34))))))

(declare-fun insertNoDuplicatedKeys!522 (List!52587 K!13835 V!14081) List!52587)

(assert (=> d!1492233 (= lt!1855321 (insertNoDuplicatedKeys!522 (toList!5638 lt!1855094) (_1!30239 (h!58722 oldBucket!34)) (_2!30239 (h!58722 oldBucket!34))))))

(assert (=> d!1492233 (= (+!2158 lt!1855094 (h!58722 oldBucket!34)) lt!1855320)))

(declare-fun b!4694533 () Bool)

(declare-fun res!1980892 () Bool)

(assert (=> b!4694533 (=> (not res!1980892) (not e!2928582))))

(assert (=> b!4694533 (= res!1980892 (= (getValueByKey!1809 (toList!5638 lt!1855320) (_1!30239 (h!58722 oldBucket!34))) (Some!12128 (_2!30239 (h!58722 oldBucket!34)))))))

(declare-fun b!4694534 () Bool)

(assert (=> b!4694534 (= e!2928582 (contains!15701 (toList!5638 lt!1855320) (h!58722 oldBucket!34)))))

(assert (= (and d!1492233 res!1980891) b!4694533))

(assert (= (and b!4694533 res!1980892) b!4694534))

(declare-fun m!5601227 () Bool)

(assert (=> d!1492233 m!5601227))

(declare-fun m!5601229 () Bool)

(assert (=> d!1492233 m!5601229))

(declare-fun m!5601231 () Bool)

(assert (=> d!1492233 m!5601231))

(declare-fun m!5601233 () Bool)

(assert (=> d!1492233 m!5601233))

(declare-fun m!5601235 () Bool)

(assert (=> b!4694533 m!5601235))

(declare-fun m!5601237 () Bool)

(assert (=> b!4694534 m!5601237))

(assert (=> b!4694317 d!1492233))

(declare-fun d!1492241 () Bool)

(declare-fun e!2928583 () Bool)

(assert (=> d!1492241 e!2928583))

(declare-fun res!1980893 () Bool)

(assert (=> d!1492241 (=> (not res!1980893) (not e!2928583))))

(declare-fun lt!1855326 () ListMap!5001)

(assert (=> d!1492241 (= res!1980893 (contains!15696 lt!1855326 (_1!30239 (h!58722 oldBucket!34))))))

(declare-fun lt!1855327 () List!52587)

(assert (=> d!1492241 (= lt!1855326 (ListMap!5002 lt!1855327))))

(declare-fun lt!1855328 () Unit!124905)

(declare-fun lt!1855325 () Unit!124905)

(assert (=> d!1492241 (= lt!1855328 lt!1855325)))

(assert (=> d!1492241 (= (getValueByKey!1809 lt!1855327 (_1!30239 (h!58722 oldBucket!34))) (Some!12128 (_2!30239 (h!58722 oldBucket!34))))))

(assert (=> d!1492241 (= lt!1855325 (lemmaContainsTupThenGetReturnValue!1014 lt!1855327 (_1!30239 (h!58722 oldBucket!34)) (_2!30239 (h!58722 oldBucket!34))))))

(assert (=> d!1492241 (= lt!1855327 (insertNoDuplicatedKeys!522 (toList!5638 lt!1855093) (_1!30239 (h!58722 oldBucket!34)) (_2!30239 (h!58722 oldBucket!34))))))

(assert (=> d!1492241 (= (+!2158 lt!1855093 (h!58722 oldBucket!34)) lt!1855326)))

(declare-fun b!4694535 () Bool)

(declare-fun res!1980894 () Bool)

(assert (=> b!4694535 (=> (not res!1980894) (not e!2928583))))

(assert (=> b!4694535 (= res!1980894 (= (getValueByKey!1809 (toList!5638 lt!1855326) (_1!30239 (h!58722 oldBucket!34))) (Some!12128 (_2!30239 (h!58722 oldBucket!34)))))))

(declare-fun b!4694536 () Bool)

(assert (=> b!4694536 (= e!2928583 (contains!15701 (toList!5638 lt!1855326) (h!58722 oldBucket!34)))))

(assert (= (and d!1492241 res!1980893) b!4694535))

(assert (= (and b!4694535 res!1980894) b!4694536))

(declare-fun m!5601239 () Bool)

(assert (=> d!1492241 m!5601239))

(declare-fun m!5601241 () Bool)

(assert (=> d!1492241 m!5601241))

(declare-fun m!5601243 () Bool)

(assert (=> d!1492241 m!5601243))

(declare-fun m!5601245 () Bool)

(assert (=> d!1492241 m!5601245))

(declare-fun m!5601247 () Bool)

(assert (=> b!4694535 m!5601247))

(declare-fun m!5601249 () Bool)

(assert (=> b!4694536 m!5601249))

(assert (=> b!4694317 d!1492241))

(declare-fun d!1492243 () Bool)

(assert (=> d!1492243 (= (-!678 (+!2158 lt!1855093 (tuple2!53891 (_1!30239 (h!58722 oldBucket!34)) (_2!30239 (h!58722 oldBucket!34)))) key!4653) (+!2158 (-!678 lt!1855093 key!4653) (tuple2!53891 (_1!30239 (h!58722 oldBucket!34)) (_2!30239 (h!58722 oldBucket!34)))))))

(declare-fun lt!1855332 () Unit!124905)

(declare-fun choose!32697 (ListMap!5001 K!13835 V!14081 K!13835) Unit!124905)

(assert (=> d!1492243 (= lt!1855332 (choose!32697 lt!1855093 (_1!30239 (h!58722 oldBucket!34)) (_2!30239 (h!58722 oldBucket!34)) key!4653))))

(assert (=> d!1492243 (not (= (_1!30239 (h!58722 oldBucket!34)) key!4653))))

(assert (=> d!1492243 (= (addRemoveCommutativeForDiffKeys!79 lt!1855093 (_1!30239 (h!58722 oldBucket!34)) (_2!30239 (h!58722 oldBucket!34)) key!4653) lt!1855332)))

(declare-fun bs!1089791 () Bool)

(assert (= bs!1089791 d!1492243))

(declare-fun m!5601257 () Bool)

(assert (=> bs!1089791 m!5601257))

(declare-fun m!5601259 () Bool)

(assert (=> bs!1089791 m!5601259))

(assert (=> bs!1089791 m!5600745))

(declare-fun m!5601261 () Bool)

(assert (=> bs!1089791 m!5601261))

(assert (=> bs!1089791 m!5601257))

(assert (=> bs!1089791 m!5600745))

(declare-fun m!5601263 () Bool)

(assert (=> bs!1089791 m!5601263))

(assert (=> b!4694317 d!1492243))

(declare-fun d!1492247 () Bool)

(declare-fun res!1980899 () Bool)

(declare-fun e!2928588 () Bool)

(assert (=> d!1492247 (=> res!1980899 e!2928588)))

(assert (=> d!1492247 (= res!1980899 ((_ is Nil!52464) lt!1855078))))

(assert (=> d!1492247 (= (forall!11355 lt!1855078 lambda!208329) e!2928588)))

(declare-fun b!4694541 () Bool)

(declare-fun e!2928589 () Bool)

(assert (=> b!4694541 (= e!2928588 e!2928589)))

(declare-fun res!1980900 () Bool)

(assert (=> b!4694541 (=> (not res!1980900) (not e!2928589))))

(assert (=> b!4694541 (= res!1980900 (dynLambda!21727 lambda!208329 (h!58723 lt!1855078)))))

(declare-fun b!4694542 () Bool)

(assert (=> b!4694542 (= e!2928589 (forall!11355 (t!359778 lt!1855078) lambda!208329))))

(assert (= (and d!1492247 (not res!1980899)) b!4694541))

(assert (= (and b!4694541 res!1980900) b!4694542))

(declare-fun b_lambda!177141 () Bool)

(assert (=> (not b_lambda!177141) (not b!4694541)))

(declare-fun m!5601265 () Bool)

(assert (=> b!4694541 m!5601265))

(declare-fun m!5601267 () Bool)

(assert (=> b!4694542 m!5601267))

(assert (=> b!4694317 d!1492247))

(declare-fun d!1492249 () Bool)

(assert (=> d!1492249 true))

(assert (=> d!1492249 true))

(declare-fun lambda!208402 () Int)

(declare-fun forall!11357 (List!52587 Int) Bool)

(assert (=> d!1492249 (= (allKeysSameHash!1700 newBucket!218 hash!405 hashF!1323) (forall!11357 newBucket!218 lambda!208402))))

(declare-fun bs!1089792 () Bool)

(assert (= bs!1089792 d!1492249))

(declare-fun m!5601269 () Bool)

(assert (=> bs!1089792 m!5601269))

(assert (=> b!4694307 d!1492249))

(declare-fun bs!1089793 () Bool)

(declare-fun d!1492251 () Bool)

(assert (= bs!1089793 (and d!1492251 start!475320)))

(declare-fun lambda!208405 () Int)

(assert (=> bs!1089793 (not (= lambda!208405 lambda!208329))))

(declare-fun bs!1089794 () Bool)

(assert (= bs!1089794 (and d!1492251 d!1492143)))

(assert (=> bs!1089794 (not (= lambda!208405 lambda!208333))))

(declare-fun bs!1089795 () Bool)

(assert (= bs!1089795 (and d!1492251 d!1492147)))

(assert (=> bs!1089795 (not (= lambda!208405 lambda!208334))))

(declare-fun bs!1089796 () Bool)

(assert (= bs!1089796 (and d!1492251 d!1492171)))

(assert (=> bs!1089796 (not (= lambda!208405 lambda!208395))))

(declare-fun bs!1089797 () Bool)

(assert (= bs!1089797 (and d!1492251 d!1492149)))

(assert (=> bs!1089797 (not (= lambda!208405 lambda!208337))))

(declare-fun bs!1089798 () Bool)

(assert (= bs!1089798 (and d!1492251 d!1492161)))

(assert (=> bs!1089798 (not (= lambda!208405 lambda!208372))))

(declare-fun bs!1089799 () Bool)

(assert (= bs!1089799 (and d!1492251 d!1492125)))

(assert (=> bs!1089799 (not (= lambda!208405 lambda!208332))))

(assert (=> d!1492251 true))

(assert (=> d!1492251 (= (allKeysSameHashInMap!1788 lm!2023 hashF!1323) (forall!11355 (toList!5637 lm!2023) lambda!208405))))

(declare-fun bs!1089800 () Bool)

(assert (= bs!1089800 d!1492251))

(declare-fun m!5601271 () Bool)

(assert (=> bs!1089800 m!5601271))

(assert (=> b!4694306 d!1492251))

(declare-fun d!1492253 () Bool)

(assert (=> d!1492253 (= (eq!1033 lt!1855090 (+!2158 lt!1855096 lt!1855099)) (= (content!9202 (toList!5638 lt!1855090)) (content!9202 (toList!5638 (+!2158 lt!1855096 lt!1855099)))))))

(declare-fun bs!1089801 () Bool)

(assert (= bs!1089801 d!1492253))

(declare-fun m!5601273 () Bool)

(assert (=> bs!1089801 m!5601273))

(declare-fun m!5601275 () Bool)

(assert (=> bs!1089801 m!5601275))

(assert (=> b!4694325 d!1492253))

(declare-fun d!1492255 () Bool)

(declare-fun e!2928590 () Bool)

(assert (=> d!1492255 e!2928590))

(declare-fun res!1980901 () Bool)

(assert (=> d!1492255 (=> (not res!1980901) (not e!2928590))))

(declare-fun lt!1855334 () ListMap!5001)

(assert (=> d!1492255 (= res!1980901 (contains!15696 lt!1855334 (_1!30239 lt!1855099)))))

(declare-fun lt!1855335 () List!52587)

(assert (=> d!1492255 (= lt!1855334 (ListMap!5002 lt!1855335))))

(declare-fun lt!1855336 () Unit!124905)

(declare-fun lt!1855333 () Unit!124905)

(assert (=> d!1492255 (= lt!1855336 lt!1855333)))

(assert (=> d!1492255 (= (getValueByKey!1809 lt!1855335 (_1!30239 lt!1855099)) (Some!12128 (_2!30239 lt!1855099)))))

(assert (=> d!1492255 (= lt!1855333 (lemmaContainsTupThenGetReturnValue!1014 lt!1855335 (_1!30239 lt!1855099) (_2!30239 lt!1855099)))))

(assert (=> d!1492255 (= lt!1855335 (insertNoDuplicatedKeys!522 (toList!5638 lt!1855096) (_1!30239 lt!1855099) (_2!30239 lt!1855099)))))

(assert (=> d!1492255 (= (+!2158 lt!1855096 lt!1855099) lt!1855334)))

(declare-fun b!4694549 () Bool)

(declare-fun res!1980902 () Bool)

(assert (=> b!4694549 (=> (not res!1980902) (not e!2928590))))

(assert (=> b!4694549 (= res!1980902 (= (getValueByKey!1809 (toList!5638 lt!1855334) (_1!30239 lt!1855099)) (Some!12128 (_2!30239 lt!1855099))))))

(declare-fun b!4694550 () Bool)

(assert (=> b!4694550 (= e!2928590 (contains!15701 (toList!5638 lt!1855334) lt!1855099))))

(assert (= (and d!1492255 res!1980901) b!4694549))

(assert (= (and b!4694549 res!1980902) b!4694550))

(declare-fun m!5601277 () Bool)

(assert (=> d!1492255 m!5601277))

(declare-fun m!5601279 () Bool)

(assert (=> d!1492255 m!5601279))

(declare-fun m!5601281 () Bool)

(assert (=> d!1492255 m!5601281))

(declare-fun m!5601283 () Bool)

(assert (=> d!1492255 m!5601283))

(declare-fun m!5601285 () Bool)

(assert (=> b!4694549 m!5601285))

(declare-fun m!5601287 () Bool)

(assert (=> b!4694550 m!5601287))

(assert (=> b!4694325 d!1492255))

(declare-fun d!1492257 () Bool)

(declare-fun res!1980907 () Bool)

(declare-fun e!2928595 () Bool)

(assert (=> d!1492257 (=> res!1980907 e!2928595)))

(assert (=> d!1492257 (= res!1980907 (not ((_ is Cons!52463) oldBucket!34)))))

(assert (=> d!1492257 (= (noDuplicateKeys!1874 oldBucket!34) e!2928595)))

(declare-fun b!4694555 () Bool)

(declare-fun e!2928596 () Bool)

(assert (=> b!4694555 (= e!2928595 e!2928596)))

(declare-fun res!1980908 () Bool)

(assert (=> b!4694555 (=> (not res!1980908) (not e!2928596))))

(assert (=> b!4694555 (= res!1980908 (not (containsKey!3101 (t!359777 oldBucket!34) (_1!30239 (h!58722 oldBucket!34)))))))

(declare-fun b!4694556 () Bool)

(assert (=> b!4694556 (= e!2928596 (noDuplicateKeys!1874 (t!359777 oldBucket!34)))))

(assert (= (and d!1492257 (not res!1980907)) b!4694555))

(assert (= (and b!4694555 res!1980908) b!4694556))

(declare-fun m!5601289 () Bool)

(assert (=> b!4694555 m!5601289))

(declare-fun m!5601291 () Bool)

(assert (=> b!4694556 m!5601291))

(assert (=> b!4694304 d!1492257))

(declare-fun d!1492259 () Bool)

(assert (=> d!1492259 (= (eq!1033 (addToMapMapFromBucket!1306 (Cons!52463 lt!1855099 lt!1855091) lt!1855095) (+!2158 (addToMapMapFromBucket!1306 lt!1855091 lt!1855095) lt!1855099)) (= (content!9202 (toList!5638 (addToMapMapFromBucket!1306 (Cons!52463 lt!1855099 lt!1855091) lt!1855095))) (content!9202 (toList!5638 (+!2158 (addToMapMapFromBucket!1306 lt!1855091 lt!1855095) lt!1855099)))))))

(declare-fun bs!1089802 () Bool)

(assert (= bs!1089802 d!1492259))

(declare-fun m!5601293 () Bool)

(assert (=> bs!1089802 m!5601293))

(declare-fun m!5601295 () Bool)

(assert (=> bs!1089802 m!5601295))

(assert (=> b!4694315 d!1492259))

(declare-fun d!1492261 () Bool)

(declare-fun e!2928597 () Bool)

(assert (=> d!1492261 e!2928597))

(declare-fun res!1980909 () Bool)

(assert (=> d!1492261 (=> (not res!1980909) (not e!2928597))))

(declare-fun lt!1855338 () ListMap!5001)

(assert (=> d!1492261 (= res!1980909 (contains!15696 lt!1855338 (_1!30239 lt!1855099)))))

(declare-fun lt!1855339 () List!52587)

(assert (=> d!1492261 (= lt!1855338 (ListMap!5002 lt!1855339))))

(declare-fun lt!1855340 () Unit!124905)

(declare-fun lt!1855337 () Unit!124905)

(assert (=> d!1492261 (= lt!1855340 lt!1855337)))

(assert (=> d!1492261 (= (getValueByKey!1809 lt!1855339 (_1!30239 lt!1855099)) (Some!12128 (_2!30239 lt!1855099)))))

(assert (=> d!1492261 (= lt!1855337 (lemmaContainsTupThenGetReturnValue!1014 lt!1855339 (_1!30239 lt!1855099) (_2!30239 lt!1855099)))))

(assert (=> d!1492261 (= lt!1855339 (insertNoDuplicatedKeys!522 (toList!5638 (addToMapMapFromBucket!1306 lt!1855091 lt!1855095)) (_1!30239 lt!1855099) (_2!30239 lt!1855099)))))

(assert (=> d!1492261 (= (+!2158 (addToMapMapFromBucket!1306 lt!1855091 lt!1855095) lt!1855099) lt!1855338)))

(declare-fun b!4694557 () Bool)

(declare-fun res!1980910 () Bool)

(assert (=> b!4694557 (=> (not res!1980910) (not e!2928597))))

(assert (=> b!4694557 (= res!1980910 (= (getValueByKey!1809 (toList!5638 lt!1855338) (_1!30239 lt!1855099)) (Some!12128 (_2!30239 lt!1855099))))))

(declare-fun b!4694558 () Bool)

(assert (=> b!4694558 (= e!2928597 (contains!15701 (toList!5638 lt!1855338) lt!1855099))))

(assert (= (and d!1492261 res!1980909) b!4694557))

(assert (= (and b!4694557 res!1980910) b!4694558))

(declare-fun m!5601297 () Bool)

(assert (=> d!1492261 m!5601297))

(declare-fun m!5601299 () Bool)

(assert (=> d!1492261 m!5601299))

(declare-fun m!5601301 () Bool)

(assert (=> d!1492261 m!5601301))

(declare-fun m!5601303 () Bool)

(assert (=> d!1492261 m!5601303))

(declare-fun m!5601305 () Bool)

(assert (=> b!4694557 m!5601305))

(declare-fun m!5601307 () Bool)

(assert (=> b!4694558 m!5601307))

(assert (=> b!4694315 d!1492261))

(declare-fun d!1492263 () Bool)

(assert (=> d!1492263 (= (head!10011 oldBucket!34) (h!58722 oldBucket!34))))

(assert (=> b!4694315 d!1492263))

(declare-fun bs!1089979 () Bool)

(declare-fun b!4694664 () Bool)

(assert (= bs!1089979 (and b!4694664 d!1492249)))

(declare-fun lambda!208462 () Int)

(assert (=> bs!1089979 (not (= lambda!208462 lambda!208402))))

(assert (=> b!4694664 true))

(declare-fun bs!1089986 () Bool)

(declare-fun b!4694666 () Bool)

(assert (= bs!1089986 (and b!4694666 d!1492249)))

(declare-fun lambda!208464 () Int)

(assert (=> bs!1089986 (not (= lambda!208464 lambda!208402))))

(declare-fun bs!1089988 () Bool)

(assert (= bs!1089988 (and b!4694666 b!4694664)))

(assert (=> bs!1089988 (= lambda!208464 lambda!208462)))

(assert (=> b!4694666 true))

(declare-fun lambda!208465 () Int)

(assert (=> bs!1089986 (not (= lambda!208465 lambda!208402))))

(declare-fun lt!1855549 () ListMap!5001)

(assert (=> bs!1089988 (= (= lt!1855549 lt!1855095) (= lambda!208465 lambda!208462))))

(assert (=> b!4694666 (= (= lt!1855549 lt!1855095) (= lambda!208465 lambda!208464))))

(assert (=> b!4694666 true))

(declare-fun bs!1089995 () Bool)

(declare-fun d!1492265 () Bool)

(assert (= bs!1089995 (and d!1492265 d!1492249)))

(declare-fun lambda!208466 () Int)

(assert (=> bs!1089995 (not (= lambda!208466 lambda!208402))))

(declare-fun bs!1089996 () Bool)

(assert (= bs!1089996 (and d!1492265 b!4694664)))

(declare-fun lt!1855542 () ListMap!5001)

(assert (=> bs!1089996 (= (= lt!1855542 lt!1855095) (= lambda!208466 lambda!208462))))

(declare-fun bs!1089997 () Bool)

(assert (= bs!1089997 (and d!1492265 b!4694666)))

(assert (=> bs!1089997 (= (= lt!1855542 lt!1855095) (= lambda!208466 lambda!208464))))

(assert (=> bs!1089997 (= (= lt!1855542 lt!1855549) (= lambda!208466 lambda!208465))))

(assert (=> d!1492265 true))

(declare-fun b!4694663 () Bool)

(declare-fun res!1980973 () Bool)

(declare-fun e!2928663 () Bool)

(assert (=> b!4694663 (=> (not res!1980973) (not e!2928663))))

(assert (=> b!4694663 (= res!1980973 (forall!11357 (toList!5638 lt!1855095) lambda!208466))))

(declare-fun e!2928664 () ListMap!5001)

(assert (=> b!4694664 (= e!2928664 lt!1855095)))

(declare-fun lt!1855556 () Unit!124905)

(declare-fun call!328139 () Unit!124905)

(assert (=> b!4694664 (= lt!1855556 call!328139)))

(declare-fun call!328141 () Bool)

(assert (=> b!4694664 call!328141))

(declare-fun lt!1855547 () Unit!124905)

(assert (=> b!4694664 (= lt!1855547 lt!1855556)))

(declare-fun call!328140 () Bool)

(assert (=> b!4694664 call!328140))

(declare-fun lt!1855538 () Unit!124905)

(declare-fun Unit!124924 () Unit!124905)

(assert (=> b!4694664 (= lt!1855538 Unit!124924)))

(declare-fun bm!328134 () Bool)

(declare-fun lemmaContainsAllItsOwnKeys!712 (ListMap!5001) Unit!124905)

(assert (=> bm!328134 (= call!328139 (lemmaContainsAllItsOwnKeys!712 lt!1855095))))

(declare-fun b!4694665 () Bool)

(declare-fun e!2928665 () Bool)

(assert (=> b!4694665 (= e!2928665 (forall!11357 (toList!5638 lt!1855095) lambda!208465))))

(assert (=> b!4694666 (= e!2928664 lt!1855549)))

(declare-fun lt!1855540 () ListMap!5001)

(assert (=> b!4694666 (= lt!1855540 (+!2158 lt!1855095 (h!58722 lt!1855088)))))

(assert (=> b!4694666 (= lt!1855549 (addToMapMapFromBucket!1306 (t!359777 lt!1855088) (+!2158 lt!1855095 (h!58722 lt!1855088))))))

(declare-fun lt!1855545 () Unit!124905)

(assert (=> b!4694666 (= lt!1855545 call!328139)))

(assert (=> b!4694666 (forall!11357 (toList!5638 lt!1855095) lambda!208464)))

(declare-fun lt!1855546 () Unit!124905)

(assert (=> b!4694666 (= lt!1855546 lt!1855545)))

(assert (=> b!4694666 (forall!11357 (toList!5638 lt!1855540) lambda!208465)))

(declare-fun lt!1855554 () Unit!124905)

(declare-fun Unit!124925 () Unit!124905)

(assert (=> b!4694666 (= lt!1855554 Unit!124925)))

(assert (=> b!4694666 (forall!11357 (t!359777 lt!1855088) lambda!208465)))

(declare-fun lt!1855543 () Unit!124905)

(declare-fun Unit!124926 () Unit!124905)

(assert (=> b!4694666 (= lt!1855543 Unit!124926)))

(declare-fun lt!1855548 () Unit!124905)

(declare-fun Unit!124927 () Unit!124905)

(assert (=> b!4694666 (= lt!1855548 Unit!124927)))

(declare-fun lt!1855552 () Unit!124905)

(declare-fun forallContained!3464 (List!52587 Int tuple2!53890) Unit!124905)

(assert (=> b!4694666 (= lt!1855552 (forallContained!3464 (toList!5638 lt!1855540) lambda!208465 (h!58722 lt!1855088)))))

(assert (=> b!4694666 (contains!15696 lt!1855540 (_1!30239 (h!58722 lt!1855088)))))

(declare-fun lt!1855551 () Unit!124905)

(declare-fun Unit!124928 () Unit!124905)

(assert (=> b!4694666 (= lt!1855551 Unit!124928)))

(assert (=> b!4694666 (contains!15696 lt!1855549 (_1!30239 (h!58722 lt!1855088)))))

(declare-fun lt!1855557 () Unit!124905)

(declare-fun Unit!124929 () Unit!124905)

(assert (=> b!4694666 (= lt!1855557 Unit!124929)))

(assert (=> b!4694666 call!328141))

(declare-fun lt!1855555 () Unit!124905)

(declare-fun Unit!124930 () Unit!124905)

(assert (=> b!4694666 (= lt!1855555 Unit!124930)))

(assert (=> b!4694666 (forall!11357 (toList!5638 lt!1855540) lambda!208465)))

(declare-fun lt!1855558 () Unit!124905)

(declare-fun Unit!124931 () Unit!124905)

(assert (=> b!4694666 (= lt!1855558 Unit!124931)))

(declare-fun lt!1855553 () Unit!124905)

(declare-fun Unit!124932 () Unit!124905)

(assert (=> b!4694666 (= lt!1855553 Unit!124932)))

(declare-fun lt!1855550 () Unit!124905)

(declare-fun addForallContainsKeyThenBeforeAdding!711 (ListMap!5001 ListMap!5001 K!13835 V!14081) Unit!124905)

(assert (=> b!4694666 (= lt!1855550 (addForallContainsKeyThenBeforeAdding!711 lt!1855095 lt!1855549 (_1!30239 (h!58722 lt!1855088)) (_2!30239 (h!58722 lt!1855088))))))

(assert (=> b!4694666 (forall!11357 (toList!5638 lt!1855095) lambda!208465)))

(declare-fun lt!1855541 () Unit!124905)

(assert (=> b!4694666 (= lt!1855541 lt!1855550)))

(assert (=> b!4694666 call!328140))

(declare-fun lt!1855539 () Unit!124905)

(declare-fun Unit!124933 () Unit!124905)

(assert (=> b!4694666 (= lt!1855539 Unit!124933)))

(declare-fun res!1980975 () Bool)

(assert (=> b!4694666 (= res!1980975 (forall!11357 lt!1855088 lambda!208465))))

(assert (=> b!4694666 (=> (not res!1980975) (not e!2928665))))

(assert (=> b!4694666 e!2928665))

(declare-fun lt!1855544 () Unit!124905)

(declare-fun Unit!124934 () Unit!124905)

(assert (=> b!4694666 (= lt!1855544 Unit!124934)))

(declare-fun bm!328135 () Bool)

(declare-fun c!802586 () Bool)

(assert (=> bm!328135 (= call!328140 (forall!11357 (toList!5638 lt!1855095) (ite c!802586 lambda!208462 lambda!208465)))))

(declare-fun b!4694667 () Bool)

(assert (=> b!4694667 (= e!2928663 (invariantList!1424 (toList!5638 lt!1855542)))))

(declare-fun bm!328136 () Bool)

(assert (=> bm!328136 (= call!328141 (forall!11357 (ite c!802586 (toList!5638 lt!1855095) lt!1855088) (ite c!802586 lambda!208462 lambda!208465)))))

(assert (=> d!1492265 e!2928663))

(declare-fun res!1980974 () Bool)

(assert (=> d!1492265 (=> (not res!1980974) (not e!2928663))))

(assert (=> d!1492265 (= res!1980974 (forall!11357 lt!1855088 lambda!208466))))

(assert (=> d!1492265 (= lt!1855542 e!2928664)))

(assert (=> d!1492265 (= c!802586 ((_ is Nil!52463) lt!1855088))))

(assert (=> d!1492265 (noDuplicateKeys!1874 lt!1855088)))

(assert (=> d!1492265 (= (addToMapMapFromBucket!1306 lt!1855088 lt!1855095) lt!1855542)))

(assert (= (and d!1492265 c!802586) b!4694664))

(assert (= (and d!1492265 (not c!802586)) b!4694666))

(assert (= (and b!4694666 res!1980975) b!4694665))

(assert (= (or b!4694664 b!4694666) bm!328134))

(assert (= (or b!4694664 b!4694666) bm!328136))

(assert (= (or b!4694664 b!4694666) bm!328135))

(assert (= (and d!1492265 res!1980974) b!4694663))

(assert (= (and b!4694663 res!1980973) b!4694667))

(declare-fun m!5601589 () Bool)

(assert (=> b!4694665 m!5601589))

(declare-fun m!5601591 () Bool)

(assert (=> bm!328134 m!5601591))

(declare-fun m!5601593 () Bool)

(assert (=> bm!328135 m!5601593))

(declare-fun m!5601595 () Bool)

(assert (=> b!4694663 m!5601595))

(declare-fun m!5601597 () Bool)

(assert (=> b!4694667 m!5601597))

(declare-fun m!5601599 () Bool)

(assert (=> b!4694666 m!5601599))

(declare-fun m!5601601 () Bool)

(assert (=> b!4694666 m!5601601))

(declare-fun m!5601603 () Bool)

(assert (=> b!4694666 m!5601603))

(assert (=> b!4694666 m!5601601))

(declare-fun m!5601605 () Bool)

(assert (=> b!4694666 m!5601605))

(declare-fun m!5601607 () Bool)

(assert (=> b!4694666 m!5601607))

(assert (=> b!4694666 m!5601589))

(declare-fun m!5601609 () Bool)

(assert (=> b!4694666 m!5601609))

(declare-fun m!5601611 () Bool)

(assert (=> b!4694666 m!5601611))

(declare-fun m!5601613 () Bool)

(assert (=> b!4694666 m!5601613))

(declare-fun m!5601615 () Bool)

(assert (=> b!4694666 m!5601615))

(assert (=> b!4694666 m!5601605))

(declare-fun m!5601617 () Bool)

(assert (=> b!4694666 m!5601617))

(declare-fun m!5601619 () Bool)

(assert (=> bm!328136 m!5601619))

(declare-fun m!5601621 () Bool)

(assert (=> d!1492265 m!5601621))

(declare-fun m!5601623 () Bool)

(assert (=> d!1492265 m!5601623))

(assert (=> b!4694315 d!1492265))

(declare-fun bs!1090001 () Bool)

(declare-fun b!4694682 () Bool)

(assert (= bs!1090001 (and b!4694682 d!1492249)))

(declare-fun lambda!208467 () Int)

(assert (=> bs!1090001 (not (= lambda!208467 lambda!208402))))

(declare-fun bs!1090002 () Bool)

(assert (= bs!1090002 (and b!4694682 d!1492265)))

(assert (=> bs!1090002 (= (= lt!1855095 lt!1855542) (= lambda!208467 lambda!208466))))

(declare-fun bs!1090003 () Bool)

(assert (= bs!1090003 (and b!4694682 b!4694666)))

(assert (=> bs!1090003 (= (= lt!1855095 lt!1855549) (= lambda!208467 lambda!208465))))

(assert (=> bs!1090003 (= lambda!208467 lambda!208464)))

(declare-fun bs!1090004 () Bool)

(assert (= bs!1090004 (and b!4694682 b!4694664)))

(assert (=> bs!1090004 (= lambda!208467 lambda!208462)))

(assert (=> b!4694682 true))

(declare-fun bs!1090005 () Bool)

(declare-fun b!4694684 () Bool)

(assert (= bs!1090005 (and b!4694684 d!1492249)))

(declare-fun lambda!208468 () Int)

(assert (=> bs!1090005 (not (= lambda!208468 lambda!208402))))

(declare-fun bs!1090006 () Bool)

(assert (= bs!1090006 (and b!4694684 d!1492265)))

(assert (=> bs!1090006 (= (= lt!1855095 lt!1855542) (= lambda!208468 lambda!208466))))

(declare-fun bs!1090007 () Bool)

(assert (= bs!1090007 (and b!4694684 b!4694666)))

(assert (=> bs!1090007 (= (= lt!1855095 lt!1855549) (= lambda!208468 lambda!208465))))

(assert (=> bs!1090007 (= lambda!208468 lambda!208464)))

(declare-fun bs!1090008 () Bool)

(assert (= bs!1090008 (and b!4694684 b!4694664)))

(assert (=> bs!1090008 (= lambda!208468 lambda!208462)))

(declare-fun bs!1090009 () Bool)

(assert (= bs!1090009 (and b!4694684 b!4694682)))

(assert (=> bs!1090009 (= lambda!208468 lambda!208467)))

(assert (=> b!4694684 true))

(declare-fun lambda!208469 () Int)

(assert (=> bs!1090005 (not (= lambda!208469 lambda!208402))))

(declare-fun lt!1855571 () ListMap!5001)

(assert (=> bs!1090006 (= (= lt!1855571 lt!1855542) (= lambda!208469 lambda!208466))))

(assert (=> bs!1090007 (= (= lt!1855571 lt!1855549) (= lambda!208469 lambda!208465))))

(assert (=> bs!1090007 (= (= lt!1855571 lt!1855095) (= lambda!208469 lambda!208464))))

(assert (=> bs!1090008 (= (= lt!1855571 lt!1855095) (= lambda!208469 lambda!208462))))

(assert (=> bs!1090009 (= (= lt!1855571 lt!1855095) (= lambda!208469 lambda!208467))))

(assert (=> b!4694684 (= (= lt!1855571 lt!1855095) (= lambda!208469 lambda!208468))))

(assert (=> b!4694684 true))

(declare-fun bs!1090010 () Bool)

(declare-fun d!1492323 () Bool)

(assert (= bs!1090010 (and d!1492323 d!1492249)))

(declare-fun lambda!208470 () Int)

(assert (=> bs!1090010 (not (= lambda!208470 lambda!208402))))

(declare-fun bs!1090011 () Bool)

(assert (= bs!1090011 (and d!1492323 d!1492265)))

(declare-fun lt!1855564 () ListMap!5001)

(assert (=> bs!1090011 (= (= lt!1855564 lt!1855542) (= lambda!208470 lambda!208466))))

(declare-fun bs!1090012 () Bool)

(assert (= bs!1090012 (and d!1492323 b!4694666)))

(assert (=> bs!1090012 (= (= lt!1855564 lt!1855549) (= lambda!208470 lambda!208465))))

(assert (=> bs!1090012 (= (= lt!1855564 lt!1855095) (= lambda!208470 lambda!208464))))

(declare-fun bs!1090013 () Bool)

(assert (= bs!1090013 (and d!1492323 b!4694664)))

(assert (=> bs!1090013 (= (= lt!1855564 lt!1855095) (= lambda!208470 lambda!208462))))

(declare-fun bs!1090014 () Bool)

(assert (= bs!1090014 (and d!1492323 b!4694682)))

(assert (=> bs!1090014 (= (= lt!1855564 lt!1855095) (= lambda!208470 lambda!208467))))

(declare-fun bs!1090015 () Bool)

(assert (= bs!1090015 (and d!1492323 b!4694684)))

(assert (=> bs!1090015 (= (= lt!1855564 lt!1855571) (= lambda!208470 lambda!208469))))

(assert (=> bs!1090015 (= (= lt!1855564 lt!1855095) (= lambda!208470 lambda!208468))))

(assert (=> d!1492323 true))

(declare-fun b!4694681 () Bool)

(declare-fun res!1980976 () Bool)

(declare-fun e!2928673 () Bool)

(assert (=> b!4694681 (=> (not res!1980976) (not e!2928673))))

(assert (=> b!4694681 (= res!1980976 (forall!11357 (toList!5638 lt!1855095) lambda!208470))))

(declare-fun e!2928674 () ListMap!5001)

(assert (=> b!4694682 (= e!2928674 lt!1855095)))

(declare-fun lt!1855578 () Unit!124905)

(declare-fun call!328142 () Unit!124905)

(assert (=> b!4694682 (= lt!1855578 call!328142)))

(declare-fun call!328144 () Bool)

(assert (=> b!4694682 call!328144))

(declare-fun lt!1855569 () Unit!124905)

(assert (=> b!4694682 (= lt!1855569 lt!1855578)))

(declare-fun call!328143 () Bool)

(assert (=> b!4694682 call!328143))

(declare-fun lt!1855560 () Unit!124905)

(declare-fun Unit!124946 () Unit!124905)

(assert (=> b!4694682 (= lt!1855560 Unit!124946)))

(declare-fun bm!328137 () Bool)

(assert (=> bm!328137 (= call!328142 (lemmaContainsAllItsOwnKeys!712 lt!1855095))))

(declare-fun b!4694683 () Bool)

(declare-fun e!2928675 () Bool)

(assert (=> b!4694683 (= e!2928675 (forall!11357 (toList!5638 lt!1855095) lambda!208469))))

(assert (=> b!4694684 (= e!2928674 lt!1855571)))

(declare-fun lt!1855562 () ListMap!5001)

(assert (=> b!4694684 (= lt!1855562 (+!2158 lt!1855095 (h!58722 (Cons!52463 lt!1855099 lt!1855091))))))

(assert (=> b!4694684 (= lt!1855571 (addToMapMapFromBucket!1306 (t!359777 (Cons!52463 lt!1855099 lt!1855091)) (+!2158 lt!1855095 (h!58722 (Cons!52463 lt!1855099 lt!1855091)))))))

(declare-fun lt!1855567 () Unit!124905)

(assert (=> b!4694684 (= lt!1855567 call!328142)))

(assert (=> b!4694684 (forall!11357 (toList!5638 lt!1855095) lambda!208468)))

(declare-fun lt!1855568 () Unit!124905)

(assert (=> b!4694684 (= lt!1855568 lt!1855567)))

(assert (=> b!4694684 (forall!11357 (toList!5638 lt!1855562) lambda!208469)))

(declare-fun lt!1855576 () Unit!124905)

(declare-fun Unit!124947 () Unit!124905)

(assert (=> b!4694684 (= lt!1855576 Unit!124947)))

(assert (=> b!4694684 (forall!11357 (t!359777 (Cons!52463 lt!1855099 lt!1855091)) lambda!208469)))

(declare-fun lt!1855565 () Unit!124905)

(declare-fun Unit!124948 () Unit!124905)

(assert (=> b!4694684 (= lt!1855565 Unit!124948)))

(declare-fun lt!1855570 () Unit!124905)

(declare-fun Unit!124949 () Unit!124905)

(assert (=> b!4694684 (= lt!1855570 Unit!124949)))

(declare-fun lt!1855574 () Unit!124905)

(assert (=> b!4694684 (= lt!1855574 (forallContained!3464 (toList!5638 lt!1855562) lambda!208469 (h!58722 (Cons!52463 lt!1855099 lt!1855091))))))

(assert (=> b!4694684 (contains!15696 lt!1855562 (_1!30239 (h!58722 (Cons!52463 lt!1855099 lt!1855091))))))

(declare-fun lt!1855573 () Unit!124905)

(declare-fun Unit!124950 () Unit!124905)

(assert (=> b!4694684 (= lt!1855573 Unit!124950)))

(assert (=> b!4694684 (contains!15696 lt!1855571 (_1!30239 (h!58722 (Cons!52463 lt!1855099 lt!1855091))))))

(declare-fun lt!1855579 () Unit!124905)

(declare-fun Unit!124951 () Unit!124905)

(assert (=> b!4694684 (= lt!1855579 Unit!124951)))

(assert (=> b!4694684 call!328144))

(declare-fun lt!1855577 () Unit!124905)

(declare-fun Unit!124952 () Unit!124905)

(assert (=> b!4694684 (= lt!1855577 Unit!124952)))

(assert (=> b!4694684 (forall!11357 (toList!5638 lt!1855562) lambda!208469)))

(declare-fun lt!1855580 () Unit!124905)

(declare-fun Unit!124953 () Unit!124905)

(assert (=> b!4694684 (= lt!1855580 Unit!124953)))

(declare-fun lt!1855575 () Unit!124905)

(declare-fun Unit!124954 () Unit!124905)

(assert (=> b!4694684 (= lt!1855575 Unit!124954)))

(declare-fun lt!1855572 () Unit!124905)

(assert (=> b!4694684 (= lt!1855572 (addForallContainsKeyThenBeforeAdding!711 lt!1855095 lt!1855571 (_1!30239 (h!58722 (Cons!52463 lt!1855099 lt!1855091))) (_2!30239 (h!58722 (Cons!52463 lt!1855099 lt!1855091)))))))

(assert (=> b!4694684 (forall!11357 (toList!5638 lt!1855095) lambda!208469)))

(declare-fun lt!1855563 () Unit!124905)

(assert (=> b!4694684 (= lt!1855563 lt!1855572)))

(assert (=> b!4694684 call!328143))

(declare-fun lt!1855561 () Unit!124905)

(declare-fun Unit!124955 () Unit!124905)

(assert (=> b!4694684 (= lt!1855561 Unit!124955)))

(declare-fun res!1980978 () Bool)

(assert (=> b!4694684 (= res!1980978 (forall!11357 (Cons!52463 lt!1855099 lt!1855091) lambda!208469))))

(assert (=> b!4694684 (=> (not res!1980978) (not e!2928675))))

(assert (=> b!4694684 e!2928675))

(declare-fun lt!1855566 () Unit!124905)

(declare-fun Unit!124956 () Unit!124905)

(assert (=> b!4694684 (= lt!1855566 Unit!124956)))

(declare-fun bm!328138 () Bool)

(declare-fun c!802587 () Bool)

(assert (=> bm!328138 (= call!328143 (forall!11357 (toList!5638 lt!1855095) (ite c!802587 lambda!208467 lambda!208469)))))

(declare-fun b!4694685 () Bool)

(assert (=> b!4694685 (= e!2928673 (invariantList!1424 (toList!5638 lt!1855564)))))

(declare-fun bm!328139 () Bool)

(assert (=> bm!328139 (= call!328144 (forall!11357 (ite c!802587 (toList!5638 lt!1855095) (Cons!52463 lt!1855099 lt!1855091)) (ite c!802587 lambda!208467 lambda!208469)))))

(assert (=> d!1492323 e!2928673))

(declare-fun res!1980977 () Bool)

(assert (=> d!1492323 (=> (not res!1980977) (not e!2928673))))

(assert (=> d!1492323 (= res!1980977 (forall!11357 (Cons!52463 lt!1855099 lt!1855091) lambda!208470))))

(assert (=> d!1492323 (= lt!1855564 e!2928674)))

(assert (=> d!1492323 (= c!802587 ((_ is Nil!52463) (Cons!52463 lt!1855099 lt!1855091)))))

(assert (=> d!1492323 (noDuplicateKeys!1874 (Cons!52463 lt!1855099 lt!1855091))))

(assert (=> d!1492323 (= (addToMapMapFromBucket!1306 (Cons!52463 lt!1855099 lt!1855091) lt!1855095) lt!1855564)))

(assert (= (and d!1492323 c!802587) b!4694682))

(assert (= (and d!1492323 (not c!802587)) b!4694684))

(assert (= (and b!4694684 res!1980978) b!4694683))

(assert (= (or b!4694682 b!4694684) bm!328137))

(assert (= (or b!4694682 b!4694684) bm!328139))

(assert (= (or b!4694682 b!4694684) bm!328138))

(assert (= (and d!1492323 res!1980977) b!4694681))

(assert (= (and b!4694681 res!1980976) b!4694685))

(declare-fun m!5601625 () Bool)

(assert (=> b!4694683 m!5601625))

(assert (=> bm!328137 m!5601591))

(declare-fun m!5601627 () Bool)

(assert (=> bm!328138 m!5601627))

(declare-fun m!5601629 () Bool)

(assert (=> b!4694681 m!5601629))

(declare-fun m!5601631 () Bool)

(assert (=> b!4694685 m!5601631))

(declare-fun m!5601633 () Bool)

(assert (=> b!4694684 m!5601633))

(declare-fun m!5601635 () Bool)

(assert (=> b!4694684 m!5601635))

(declare-fun m!5601637 () Bool)

(assert (=> b!4694684 m!5601637))

(assert (=> b!4694684 m!5601635))

(declare-fun m!5601639 () Bool)

(assert (=> b!4694684 m!5601639))

(declare-fun m!5601641 () Bool)

(assert (=> b!4694684 m!5601641))

(assert (=> b!4694684 m!5601625))

(declare-fun m!5601643 () Bool)

(assert (=> b!4694684 m!5601643))

(declare-fun m!5601645 () Bool)

(assert (=> b!4694684 m!5601645))

(declare-fun m!5601647 () Bool)

(assert (=> b!4694684 m!5601647))

(declare-fun m!5601649 () Bool)

(assert (=> b!4694684 m!5601649))

(assert (=> b!4694684 m!5601639))

(declare-fun m!5601651 () Bool)

(assert (=> b!4694684 m!5601651))

(declare-fun m!5601653 () Bool)

(assert (=> bm!328139 m!5601653))

(declare-fun m!5601655 () Bool)

(assert (=> d!1492323 m!5601655))

(declare-fun m!5601657 () Bool)

(assert (=> d!1492323 m!5601657))

(assert (=> b!4694315 d!1492323))

(declare-fun d!1492325 () Bool)

(assert (=> d!1492325 (= (eq!1033 lt!1855090 (+!2158 lt!1855096 (h!58722 oldBucket!34))) (= (content!9202 (toList!5638 lt!1855090)) (content!9202 (toList!5638 (+!2158 lt!1855096 (h!58722 oldBucket!34))))))))

(declare-fun bs!1090016 () Bool)

(assert (= bs!1090016 d!1492325))

(assert (=> bs!1090016 m!5601273))

(declare-fun m!5601659 () Bool)

(assert (=> bs!1090016 m!5601659))

(assert (=> b!4694315 d!1492325))

(declare-fun d!1492327 () Bool)

(declare-fun e!2928676 () Bool)

(assert (=> d!1492327 e!2928676))

(declare-fun res!1980979 () Bool)

(assert (=> d!1492327 (=> (not res!1980979) (not e!2928676))))

(declare-fun lt!1855582 () ListMap!5001)

(assert (=> d!1492327 (= res!1980979 (contains!15696 lt!1855582 (_1!30239 (h!58722 oldBucket!34))))))

(declare-fun lt!1855583 () List!52587)

(assert (=> d!1492327 (= lt!1855582 (ListMap!5002 lt!1855583))))

(declare-fun lt!1855584 () Unit!124905)

(declare-fun lt!1855581 () Unit!124905)

(assert (=> d!1492327 (= lt!1855584 lt!1855581)))

(assert (=> d!1492327 (= (getValueByKey!1809 lt!1855583 (_1!30239 (h!58722 oldBucket!34))) (Some!12128 (_2!30239 (h!58722 oldBucket!34))))))

(assert (=> d!1492327 (= lt!1855581 (lemmaContainsTupThenGetReturnValue!1014 lt!1855583 (_1!30239 (h!58722 oldBucket!34)) (_2!30239 (h!58722 oldBucket!34))))))

(assert (=> d!1492327 (= lt!1855583 (insertNoDuplicatedKeys!522 (toList!5638 lt!1855096) (_1!30239 (h!58722 oldBucket!34)) (_2!30239 (h!58722 oldBucket!34))))))

(assert (=> d!1492327 (= (+!2158 lt!1855096 (h!58722 oldBucket!34)) lt!1855582)))

(declare-fun b!4694686 () Bool)

(declare-fun res!1980980 () Bool)

(assert (=> b!4694686 (=> (not res!1980980) (not e!2928676))))

(assert (=> b!4694686 (= res!1980980 (= (getValueByKey!1809 (toList!5638 lt!1855582) (_1!30239 (h!58722 oldBucket!34))) (Some!12128 (_2!30239 (h!58722 oldBucket!34)))))))

(declare-fun b!4694687 () Bool)

(assert (=> b!4694687 (= e!2928676 (contains!15701 (toList!5638 lt!1855582) (h!58722 oldBucket!34)))))

(assert (= (and d!1492327 res!1980979) b!4694686))

(assert (= (and b!4694686 res!1980980) b!4694687))

(declare-fun m!5601661 () Bool)

(assert (=> d!1492327 m!5601661))

(declare-fun m!5601663 () Bool)

(assert (=> d!1492327 m!5601663))

(declare-fun m!5601665 () Bool)

(assert (=> d!1492327 m!5601665))

(declare-fun m!5601667 () Bool)

(assert (=> d!1492327 m!5601667))

(declare-fun m!5601669 () Bool)

(assert (=> b!4694686 m!5601669))

(declare-fun m!5601671 () Bool)

(assert (=> b!4694687 m!5601671))

(assert (=> b!4694315 d!1492327))

(declare-fun d!1492329 () Bool)

(assert (=> d!1492329 (eq!1033 (addToMapMapFromBucket!1306 (Cons!52463 lt!1855104 lt!1855088) lt!1855095) (+!2158 (addToMapMapFromBucket!1306 lt!1855088 lt!1855095) lt!1855104))))

(declare-fun lt!1855587 () Unit!124905)

(declare-fun choose!32699 (tuple2!53890 List!52587 ListMap!5001) Unit!124905)

(assert (=> d!1492329 (= lt!1855587 (choose!32699 lt!1855104 lt!1855088 lt!1855095))))

(assert (=> d!1492329 (noDuplicateKeys!1874 lt!1855088)))

(assert (=> d!1492329 (= (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!282 lt!1855104 lt!1855088 lt!1855095) lt!1855587)))

(declare-fun bs!1090017 () Bool)

(assert (= bs!1090017 d!1492329))

(assert (=> bs!1090017 m!5600703))

(assert (=> bs!1090017 m!5600705))

(declare-fun m!5601673 () Bool)

(assert (=> bs!1090017 m!5601673))

(assert (=> bs!1090017 m!5600695))

(assert (=> bs!1090017 m!5600705))

(assert (=> bs!1090017 m!5600709))

(assert (=> bs!1090017 m!5601623))

(assert (=> bs!1090017 m!5600695))

(assert (=> bs!1090017 m!5600703))

(assert (=> b!4694315 d!1492329))

(declare-fun b!4694706 () Bool)

(declare-fun e!2928693 () Unit!124905)

(declare-fun e!2928691 () Unit!124905)

(assert (=> b!4694706 (= e!2928693 e!2928691)))

(declare-fun c!802596 () Bool)

(declare-fun call!328147 () Bool)

(assert (=> b!4694706 (= c!802596 call!328147)))

(declare-fun b!4694707 () Bool)

(declare-fun e!2928692 () Bool)

(declare-fun contains!15702 (List!52590 K!13835) Bool)

(assert (=> b!4694707 (= e!2928692 (contains!15702 (keys!18747 lt!1855093) key!4653))))

(declare-fun d!1492331 () Bool)

(declare-fun e!2928690 () Bool)

(assert (=> d!1492331 e!2928690))

(declare-fun res!1980989 () Bool)

(assert (=> d!1492331 (=> res!1980989 e!2928690)))

(declare-fun e!2928694 () Bool)

(assert (=> d!1492331 (= res!1980989 e!2928694)))

(declare-fun res!1980988 () Bool)

(assert (=> d!1492331 (=> (not res!1980988) (not e!2928694))))

(declare-fun lt!1855604 () Bool)

(assert (=> d!1492331 (= res!1980988 (not lt!1855604))))

(declare-fun lt!1855605 () Bool)

(assert (=> d!1492331 (= lt!1855604 lt!1855605)))

(declare-fun lt!1855608 () Unit!124905)

(assert (=> d!1492331 (= lt!1855608 e!2928693)))

(declare-fun c!802595 () Bool)

(assert (=> d!1492331 (= c!802595 lt!1855605)))

(declare-fun containsKey!3105 (List!52587 K!13835) Bool)

(assert (=> d!1492331 (= lt!1855605 (containsKey!3105 (toList!5638 lt!1855093) key!4653))))

(assert (=> d!1492331 (= (contains!15696 lt!1855093 key!4653) lt!1855604)))

(declare-fun b!4694708 () Bool)

(assert (=> b!4694708 (= e!2928690 e!2928692)))

(declare-fun res!1980987 () Bool)

(assert (=> b!4694708 (=> (not res!1980987) (not e!2928692))))

(declare-fun isDefined!9384 (Option!12129) Bool)

(assert (=> b!4694708 (= res!1980987 (isDefined!9384 (getValueByKey!1809 (toList!5638 lt!1855093) key!4653)))))

(declare-fun bm!328142 () Bool)

(declare-fun e!2928689 () List!52590)

(assert (=> bm!328142 (= call!328147 (contains!15702 e!2928689 key!4653))))

(declare-fun c!802594 () Bool)

(assert (=> bm!328142 (= c!802594 c!802595)))

(declare-fun b!4694709 () Bool)

(declare-fun getKeysList!864 (List!52587) List!52590)

(assert (=> b!4694709 (= e!2928689 (getKeysList!864 (toList!5638 lt!1855093)))))

(declare-fun b!4694710 () Bool)

(declare-fun Unit!124957 () Unit!124905)

(assert (=> b!4694710 (= e!2928691 Unit!124957)))

(declare-fun b!4694711 () Bool)

(assert (=> b!4694711 (= e!2928694 (not (contains!15702 (keys!18747 lt!1855093) key!4653)))))

(declare-fun b!4694712 () Bool)

(assert (=> b!4694712 false))

(declare-fun lt!1855606 () Unit!124905)

(declare-fun lt!1855611 () Unit!124905)

(assert (=> b!4694712 (= lt!1855606 lt!1855611)))

(assert (=> b!4694712 (containsKey!3105 (toList!5638 lt!1855093) key!4653)))

(declare-fun lemmaInGetKeysListThenContainsKey!863 (List!52587 K!13835) Unit!124905)

(assert (=> b!4694712 (= lt!1855611 (lemmaInGetKeysListThenContainsKey!863 (toList!5638 lt!1855093) key!4653))))

(declare-fun Unit!124958 () Unit!124905)

(assert (=> b!4694712 (= e!2928691 Unit!124958)))

(declare-fun b!4694713 () Bool)

(declare-fun lt!1855609 () Unit!124905)

(assert (=> b!4694713 (= e!2928693 lt!1855609)))

(declare-fun lt!1855607 () Unit!124905)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1701 (List!52587 K!13835) Unit!124905)

(assert (=> b!4694713 (= lt!1855607 (lemmaContainsKeyImpliesGetValueByKeyDefined!1701 (toList!5638 lt!1855093) key!4653))))

(assert (=> b!4694713 (isDefined!9384 (getValueByKey!1809 (toList!5638 lt!1855093) key!4653))))

(declare-fun lt!1855610 () Unit!124905)

(assert (=> b!4694713 (= lt!1855610 lt!1855607)))

(declare-fun lemmaInListThenGetKeysListContains!859 (List!52587 K!13835) Unit!124905)

(assert (=> b!4694713 (= lt!1855609 (lemmaInListThenGetKeysListContains!859 (toList!5638 lt!1855093) key!4653))))

(assert (=> b!4694713 call!328147))

(declare-fun b!4694714 () Bool)

(assert (=> b!4694714 (= e!2928689 (keys!18747 lt!1855093))))

(assert (= (and d!1492331 c!802595) b!4694713))

(assert (= (and d!1492331 (not c!802595)) b!4694706))

(assert (= (and b!4694706 c!802596) b!4694712))

(assert (= (and b!4694706 (not c!802596)) b!4694710))

(assert (= (or b!4694713 b!4694706) bm!328142))

(assert (= (and bm!328142 c!802594) b!4694709))

(assert (= (and bm!328142 (not c!802594)) b!4694714))

(assert (= (and d!1492331 res!1980988) b!4694711))

(assert (= (and d!1492331 (not res!1980989)) b!4694708))

(assert (= (and b!4694708 res!1980987) b!4694707))

(declare-fun m!5601675 () Bool)

(assert (=> d!1492331 m!5601675))

(assert (=> b!4694711 m!5600893))

(assert (=> b!4694711 m!5600893))

(declare-fun m!5601677 () Bool)

(assert (=> b!4694711 m!5601677))

(declare-fun m!5601679 () Bool)

(assert (=> b!4694713 m!5601679))

(declare-fun m!5601681 () Bool)

(assert (=> b!4694713 m!5601681))

(assert (=> b!4694713 m!5601681))

(declare-fun m!5601683 () Bool)

(assert (=> b!4694713 m!5601683))

(declare-fun m!5601685 () Bool)

(assert (=> b!4694713 m!5601685))

(declare-fun m!5601687 () Bool)

(assert (=> bm!328142 m!5601687))

(assert (=> b!4694708 m!5601681))

(assert (=> b!4694708 m!5601681))

(assert (=> b!4694708 m!5601683))

(assert (=> b!4694707 m!5600893))

(assert (=> b!4694707 m!5600893))

(assert (=> b!4694707 m!5601677))

(declare-fun m!5601689 () Bool)

(assert (=> b!4694709 m!5601689))

(assert (=> b!4694712 m!5601675))

(declare-fun m!5601691 () Bool)

(assert (=> b!4694712 m!5601691))

(assert (=> b!4694714 m!5600893))

(assert (=> b!4694315 d!1492331))

(declare-fun bs!1090018 () Bool)

(declare-fun b!4694716 () Bool)

(assert (= bs!1090018 (and b!4694716 d!1492249)))

(declare-fun lambda!208471 () Int)

(assert (=> bs!1090018 (not (= lambda!208471 lambda!208402))))

(declare-fun bs!1090019 () Bool)

(assert (= bs!1090019 (and b!4694716 d!1492265)))

(assert (=> bs!1090019 (= (= lt!1855095 lt!1855542) (= lambda!208471 lambda!208466))))

(declare-fun bs!1090020 () Bool)

(assert (= bs!1090020 (and b!4694716 b!4694666)))

(assert (=> bs!1090020 (= (= lt!1855095 lt!1855549) (= lambda!208471 lambda!208465))))

(declare-fun bs!1090021 () Bool)

(assert (= bs!1090021 (and b!4694716 b!4694664)))

(assert (=> bs!1090021 (= lambda!208471 lambda!208462)))

(declare-fun bs!1090022 () Bool)

(assert (= bs!1090022 (and b!4694716 b!4694682)))

(assert (=> bs!1090022 (= lambda!208471 lambda!208467)))

(declare-fun bs!1090023 () Bool)

(assert (= bs!1090023 (and b!4694716 b!4694684)))

(assert (=> bs!1090023 (= (= lt!1855095 lt!1855571) (= lambda!208471 lambda!208469))))

(assert (=> bs!1090023 (= lambda!208471 lambda!208468)))

(assert (=> bs!1090020 (= lambda!208471 lambda!208464)))

(declare-fun bs!1090024 () Bool)

(assert (= bs!1090024 (and b!4694716 d!1492323)))

(assert (=> bs!1090024 (= (= lt!1855095 lt!1855564) (= lambda!208471 lambda!208470))))

(assert (=> b!4694716 true))

(declare-fun bs!1090025 () Bool)

(declare-fun b!4694718 () Bool)

(assert (= bs!1090025 (and b!4694718 d!1492249)))

(declare-fun lambda!208472 () Int)

(assert (=> bs!1090025 (not (= lambda!208472 lambda!208402))))

(declare-fun bs!1090026 () Bool)

(assert (= bs!1090026 (and b!4694718 b!4694666)))

(assert (=> bs!1090026 (= (= lt!1855095 lt!1855549) (= lambda!208472 lambda!208465))))

(declare-fun bs!1090027 () Bool)

(assert (= bs!1090027 (and b!4694718 b!4694664)))

(assert (=> bs!1090027 (= lambda!208472 lambda!208462)))

(declare-fun bs!1090028 () Bool)

(assert (= bs!1090028 (and b!4694718 b!4694682)))

(assert (=> bs!1090028 (= lambda!208472 lambda!208467)))

(declare-fun bs!1090029 () Bool)

(assert (= bs!1090029 (and b!4694718 b!4694684)))

(assert (=> bs!1090029 (= (= lt!1855095 lt!1855571) (= lambda!208472 lambda!208469))))

(assert (=> bs!1090029 (= lambda!208472 lambda!208468)))

(declare-fun bs!1090030 () Bool)

(assert (= bs!1090030 (and b!4694718 b!4694716)))

(assert (=> bs!1090030 (= lambda!208472 lambda!208471)))

(declare-fun bs!1090031 () Bool)

(assert (= bs!1090031 (and b!4694718 d!1492265)))

(assert (=> bs!1090031 (= (= lt!1855095 lt!1855542) (= lambda!208472 lambda!208466))))

(assert (=> bs!1090026 (= lambda!208472 lambda!208464)))

(declare-fun bs!1090032 () Bool)

(assert (= bs!1090032 (and b!4694718 d!1492323)))

(assert (=> bs!1090032 (= (= lt!1855095 lt!1855564) (= lambda!208472 lambda!208470))))

(assert (=> b!4694718 true))

(declare-fun lambda!208473 () Int)

(assert (=> bs!1090025 (not (= lambda!208473 lambda!208402))))

(declare-fun lt!1855623 () ListMap!5001)

(assert (=> bs!1090026 (= (= lt!1855623 lt!1855549) (= lambda!208473 lambda!208465))))

(assert (=> bs!1090027 (= (= lt!1855623 lt!1855095) (= lambda!208473 lambda!208462))))

(assert (=> bs!1090028 (= (= lt!1855623 lt!1855095) (= lambda!208473 lambda!208467))))

(assert (=> b!4694718 (= (= lt!1855623 lt!1855095) (= lambda!208473 lambda!208472))))

(assert (=> bs!1090029 (= (= lt!1855623 lt!1855571) (= lambda!208473 lambda!208469))))

(assert (=> bs!1090029 (= (= lt!1855623 lt!1855095) (= lambda!208473 lambda!208468))))

(assert (=> bs!1090030 (= (= lt!1855623 lt!1855095) (= lambda!208473 lambda!208471))))

(assert (=> bs!1090031 (= (= lt!1855623 lt!1855542) (= lambda!208473 lambda!208466))))

(assert (=> bs!1090026 (= (= lt!1855623 lt!1855095) (= lambda!208473 lambda!208464))))

(assert (=> bs!1090032 (= (= lt!1855623 lt!1855564) (= lambda!208473 lambda!208470))))

(assert (=> b!4694718 true))

(declare-fun bs!1090033 () Bool)

(declare-fun d!1492333 () Bool)

(assert (= bs!1090033 (and d!1492333 d!1492249)))

(declare-fun lambda!208474 () Int)

(assert (=> bs!1090033 (not (= lambda!208474 lambda!208402))))

(declare-fun bs!1090034 () Bool)

(assert (= bs!1090034 (and d!1492333 b!4694718)))

(declare-fun lt!1855616 () ListMap!5001)

(assert (=> bs!1090034 (= (= lt!1855616 lt!1855623) (= lambda!208474 lambda!208473))))

(declare-fun bs!1090035 () Bool)

(assert (= bs!1090035 (and d!1492333 b!4694666)))

(assert (=> bs!1090035 (= (= lt!1855616 lt!1855549) (= lambda!208474 lambda!208465))))

(declare-fun bs!1090036 () Bool)

(assert (= bs!1090036 (and d!1492333 b!4694664)))

(assert (=> bs!1090036 (= (= lt!1855616 lt!1855095) (= lambda!208474 lambda!208462))))

(declare-fun bs!1090037 () Bool)

(assert (= bs!1090037 (and d!1492333 b!4694682)))

(assert (=> bs!1090037 (= (= lt!1855616 lt!1855095) (= lambda!208474 lambda!208467))))

(assert (=> bs!1090034 (= (= lt!1855616 lt!1855095) (= lambda!208474 lambda!208472))))

(declare-fun bs!1090038 () Bool)

(assert (= bs!1090038 (and d!1492333 b!4694684)))

(assert (=> bs!1090038 (= (= lt!1855616 lt!1855571) (= lambda!208474 lambda!208469))))

(assert (=> bs!1090038 (= (= lt!1855616 lt!1855095) (= lambda!208474 lambda!208468))))

(declare-fun bs!1090039 () Bool)

(assert (= bs!1090039 (and d!1492333 b!4694716)))

(assert (=> bs!1090039 (= (= lt!1855616 lt!1855095) (= lambda!208474 lambda!208471))))

(declare-fun bs!1090040 () Bool)

(assert (= bs!1090040 (and d!1492333 d!1492265)))

(assert (=> bs!1090040 (= (= lt!1855616 lt!1855542) (= lambda!208474 lambda!208466))))

(assert (=> bs!1090035 (= (= lt!1855616 lt!1855095) (= lambda!208474 lambda!208464))))

(declare-fun bs!1090041 () Bool)

(assert (= bs!1090041 (and d!1492333 d!1492323)))

(assert (=> bs!1090041 (= (= lt!1855616 lt!1855564) (= lambda!208474 lambda!208470))))

(assert (=> d!1492333 true))

(declare-fun b!4694715 () Bool)

(declare-fun res!1980990 () Bool)

(declare-fun e!2928695 () Bool)

(assert (=> b!4694715 (=> (not res!1980990) (not e!2928695))))

(assert (=> b!4694715 (= res!1980990 (forall!11357 (toList!5638 lt!1855095) lambda!208474))))

(declare-fun e!2928696 () ListMap!5001)

(assert (=> b!4694716 (= e!2928696 lt!1855095)))

(declare-fun lt!1855630 () Unit!124905)

(declare-fun call!328148 () Unit!124905)

(assert (=> b!4694716 (= lt!1855630 call!328148)))

(declare-fun call!328150 () Bool)

(assert (=> b!4694716 call!328150))

(declare-fun lt!1855621 () Unit!124905)

(assert (=> b!4694716 (= lt!1855621 lt!1855630)))

(declare-fun call!328149 () Bool)

(assert (=> b!4694716 call!328149))

(declare-fun lt!1855612 () Unit!124905)

(declare-fun Unit!124970 () Unit!124905)

(assert (=> b!4694716 (= lt!1855612 Unit!124970)))

(declare-fun bm!328143 () Bool)

(assert (=> bm!328143 (= call!328148 (lemmaContainsAllItsOwnKeys!712 lt!1855095))))

(declare-fun b!4694717 () Bool)

(declare-fun e!2928697 () Bool)

(assert (=> b!4694717 (= e!2928697 (forall!11357 (toList!5638 lt!1855095) lambda!208473))))

(assert (=> b!4694718 (= e!2928696 lt!1855623)))

(declare-fun lt!1855614 () ListMap!5001)

(assert (=> b!4694718 (= lt!1855614 (+!2158 lt!1855095 (h!58722 lt!1855091)))))

(assert (=> b!4694718 (= lt!1855623 (addToMapMapFromBucket!1306 (t!359777 lt!1855091) (+!2158 lt!1855095 (h!58722 lt!1855091))))))

(declare-fun lt!1855619 () Unit!124905)

(assert (=> b!4694718 (= lt!1855619 call!328148)))

(assert (=> b!4694718 (forall!11357 (toList!5638 lt!1855095) lambda!208472)))

(declare-fun lt!1855620 () Unit!124905)

(assert (=> b!4694718 (= lt!1855620 lt!1855619)))

(assert (=> b!4694718 (forall!11357 (toList!5638 lt!1855614) lambda!208473)))

(declare-fun lt!1855628 () Unit!124905)

(declare-fun Unit!124971 () Unit!124905)

(assert (=> b!4694718 (= lt!1855628 Unit!124971)))

(assert (=> b!4694718 (forall!11357 (t!359777 lt!1855091) lambda!208473)))

(declare-fun lt!1855617 () Unit!124905)

(declare-fun Unit!124972 () Unit!124905)

(assert (=> b!4694718 (= lt!1855617 Unit!124972)))

(declare-fun lt!1855622 () Unit!124905)

(declare-fun Unit!124973 () Unit!124905)

(assert (=> b!4694718 (= lt!1855622 Unit!124973)))

(declare-fun lt!1855626 () Unit!124905)

(assert (=> b!4694718 (= lt!1855626 (forallContained!3464 (toList!5638 lt!1855614) lambda!208473 (h!58722 lt!1855091)))))

(assert (=> b!4694718 (contains!15696 lt!1855614 (_1!30239 (h!58722 lt!1855091)))))

(declare-fun lt!1855625 () Unit!124905)

(declare-fun Unit!124974 () Unit!124905)

(assert (=> b!4694718 (= lt!1855625 Unit!124974)))

(assert (=> b!4694718 (contains!15696 lt!1855623 (_1!30239 (h!58722 lt!1855091)))))

(declare-fun lt!1855631 () Unit!124905)

(declare-fun Unit!124975 () Unit!124905)

(assert (=> b!4694718 (= lt!1855631 Unit!124975)))

(assert (=> b!4694718 call!328150))

(declare-fun lt!1855629 () Unit!124905)

(declare-fun Unit!124976 () Unit!124905)

(assert (=> b!4694718 (= lt!1855629 Unit!124976)))

(assert (=> b!4694718 (forall!11357 (toList!5638 lt!1855614) lambda!208473)))

(declare-fun lt!1855632 () Unit!124905)

(declare-fun Unit!124977 () Unit!124905)

(assert (=> b!4694718 (= lt!1855632 Unit!124977)))

(declare-fun lt!1855627 () Unit!124905)

(declare-fun Unit!124978 () Unit!124905)

(assert (=> b!4694718 (= lt!1855627 Unit!124978)))

(declare-fun lt!1855624 () Unit!124905)

(assert (=> b!4694718 (= lt!1855624 (addForallContainsKeyThenBeforeAdding!711 lt!1855095 lt!1855623 (_1!30239 (h!58722 lt!1855091)) (_2!30239 (h!58722 lt!1855091))))))

(assert (=> b!4694718 (forall!11357 (toList!5638 lt!1855095) lambda!208473)))

(declare-fun lt!1855615 () Unit!124905)

(assert (=> b!4694718 (= lt!1855615 lt!1855624)))

(assert (=> b!4694718 call!328149))

(declare-fun lt!1855613 () Unit!124905)

(declare-fun Unit!124979 () Unit!124905)

(assert (=> b!4694718 (= lt!1855613 Unit!124979)))

(declare-fun res!1980992 () Bool)

(assert (=> b!4694718 (= res!1980992 (forall!11357 lt!1855091 lambda!208473))))

(assert (=> b!4694718 (=> (not res!1980992) (not e!2928697))))

(assert (=> b!4694718 e!2928697))

(declare-fun lt!1855618 () Unit!124905)

(declare-fun Unit!124980 () Unit!124905)

(assert (=> b!4694718 (= lt!1855618 Unit!124980)))

(declare-fun bm!328144 () Bool)

(declare-fun c!802597 () Bool)

(assert (=> bm!328144 (= call!328149 (forall!11357 (toList!5638 lt!1855095) (ite c!802597 lambda!208471 lambda!208473)))))

(declare-fun b!4694719 () Bool)

(assert (=> b!4694719 (= e!2928695 (invariantList!1424 (toList!5638 lt!1855616)))))

(declare-fun bm!328145 () Bool)

(assert (=> bm!328145 (= call!328150 (forall!11357 (ite c!802597 (toList!5638 lt!1855095) lt!1855091) (ite c!802597 lambda!208471 lambda!208473)))))

(assert (=> d!1492333 e!2928695))

(declare-fun res!1980991 () Bool)

(assert (=> d!1492333 (=> (not res!1980991) (not e!2928695))))

(assert (=> d!1492333 (= res!1980991 (forall!11357 lt!1855091 lambda!208474))))

(assert (=> d!1492333 (= lt!1855616 e!2928696)))

(assert (=> d!1492333 (= c!802597 ((_ is Nil!52463) lt!1855091))))

(assert (=> d!1492333 (noDuplicateKeys!1874 lt!1855091)))

(assert (=> d!1492333 (= (addToMapMapFromBucket!1306 lt!1855091 lt!1855095) lt!1855616)))

(assert (= (and d!1492333 c!802597) b!4694716))

(assert (= (and d!1492333 (not c!802597)) b!4694718))

(assert (= (and b!4694718 res!1980992) b!4694717))

(assert (= (or b!4694716 b!4694718) bm!328143))

(assert (= (or b!4694716 b!4694718) bm!328145))

(assert (= (or b!4694716 b!4694718) bm!328144))

(assert (= (and d!1492333 res!1980991) b!4694715))

(assert (= (and b!4694715 res!1980990) b!4694719))

(declare-fun m!5601693 () Bool)

(assert (=> b!4694717 m!5601693))

(assert (=> bm!328143 m!5601591))

(declare-fun m!5601695 () Bool)

(assert (=> bm!328144 m!5601695))

(declare-fun m!5601697 () Bool)

(assert (=> b!4694715 m!5601697))

(declare-fun m!5601699 () Bool)

(assert (=> b!4694719 m!5601699))

(declare-fun m!5601701 () Bool)

(assert (=> b!4694718 m!5601701))

(declare-fun m!5601703 () Bool)

(assert (=> b!4694718 m!5601703))

(declare-fun m!5601705 () Bool)

(assert (=> b!4694718 m!5601705))

(assert (=> b!4694718 m!5601703))

(declare-fun m!5601707 () Bool)

(assert (=> b!4694718 m!5601707))

(declare-fun m!5601709 () Bool)

(assert (=> b!4694718 m!5601709))

(assert (=> b!4694718 m!5601693))

(declare-fun m!5601711 () Bool)

(assert (=> b!4694718 m!5601711))

(declare-fun m!5601713 () Bool)

(assert (=> b!4694718 m!5601713))

(declare-fun m!5601715 () Bool)

(assert (=> b!4694718 m!5601715))

(declare-fun m!5601717 () Bool)

(assert (=> b!4694718 m!5601717))

(assert (=> b!4694718 m!5601707))

(declare-fun m!5601719 () Bool)

(assert (=> b!4694718 m!5601719))

(declare-fun m!5601721 () Bool)

(assert (=> bm!328145 m!5601721))

(declare-fun m!5601723 () Bool)

(assert (=> d!1492333 m!5601723))

(declare-fun m!5601725 () Bool)

(assert (=> d!1492333 m!5601725))

(assert (=> b!4694315 d!1492333))

(declare-fun d!1492335 () Bool)

(assert (=> d!1492335 (eq!1033 (addToMapMapFromBucket!1306 (Cons!52463 lt!1855099 lt!1855091) lt!1855095) (+!2158 (addToMapMapFromBucket!1306 lt!1855091 lt!1855095) lt!1855099))))

(declare-fun lt!1855633 () Unit!124905)

(assert (=> d!1492335 (= lt!1855633 (choose!32699 lt!1855099 lt!1855091 lt!1855095))))

(assert (=> d!1492335 (noDuplicateKeys!1874 lt!1855091)))

(assert (=> d!1492335 (= (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!282 lt!1855099 lt!1855091 lt!1855095) lt!1855633)))

(declare-fun bs!1090042 () Bool)

(assert (= bs!1090042 d!1492335))

(assert (=> bs!1090042 m!5600697))

(assert (=> bs!1090042 m!5600721))

(declare-fun m!5601727 () Bool)

(assert (=> bs!1090042 m!5601727))

(assert (=> bs!1090042 m!5600713))

(assert (=> bs!1090042 m!5600721))

(assert (=> bs!1090042 m!5600723))

(assert (=> bs!1090042 m!5601725))

(assert (=> bs!1090042 m!5600713))

(assert (=> bs!1090042 m!5600697))

(assert (=> b!4694315 d!1492335))

(declare-fun bs!1090043 () Bool)

(declare-fun d!1492337 () Bool)

(assert (= bs!1090043 (and d!1492337 start!475320)))

(declare-fun lambda!208475 () Int)

(assert (=> bs!1090043 (= lambda!208475 lambda!208329)))

(declare-fun bs!1090044 () Bool)

(assert (= bs!1090044 (and d!1492337 d!1492143)))

(assert (=> bs!1090044 (= lambda!208475 lambda!208333)))

(declare-fun bs!1090045 () Bool)

(assert (= bs!1090045 (and d!1492337 d!1492251)))

(assert (=> bs!1090045 (not (= lambda!208475 lambda!208405))))

(declare-fun bs!1090046 () Bool)

(assert (= bs!1090046 (and d!1492337 d!1492147)))

(assert (=> bs!1090046 (= lambda!208475 lambda!208334)))

(declare-fun bs!1090047 () Bool)

(assert (= bs!1090047 (and d!1492337 d!1492171)))

(assert (=> bs!1090047 (= lambda!208475 lambda!208395)))

(declare-fun bs!1090048 () Bool)

(assert (= bs!1090048 (and d!1492337 d!1492149)))

(assert (=> bs!1090048 (= lambda!208475 lambda!208337)))

(declare-fun bs!1090049 () Bool)

(assert (= bs!1090049 (and d!1492337 d!1492161)))

(assert (=> bs!1090049 (= lambda!208475 lambda!208372)))

(declare-fun bs!1090050 () Bool)

(assert (= bs!1090050 (and d!1492337 d!1492125)))

(assert (=> bs!1090050 (= lambda!208475 lambda!208332)))

(declare-fun lt!1855634 () ListMap!5001)

(assert (=> d!1492337 (invariantList!1424 (toList!5638 lt!1855634))))

(declare-fun e!2928698 () ListMap!5001)

(assert (=> d!1492337 (= lt!1855634 e!2928698)))

(declare-fun c!802598 () Bool)

(assert (=> d!1492337 (= c!802598 ((_ is Cons!52464) lt!1855078))))

(assert (=> d!1492337 (forall!11355 lt!1855078 lambda!208475)))

(assert (=> d!1492337 (= (extractMap!1900 lt!1855078) lt!1855634)))

(declare-fun b!4694720 () Bool)

(assert (=> b!4694720 (= e!2928698 (addToMapMapFromBucket!1306 (_2!30240 (h!58723 lt!1855078)) (extractMap!1900 (t!359778 lt!1855078))))))

(declare-fun b!4694721 () Bool)

(assert (=> b!4694721 (= e!2928698 (ListMap!5002 Nil!52463))))

(assert (= (and d!1492337 c!802598) b!4694720))

(assert (= (and d!1492337 (not c!802598)) b!4694721))

(declare-fun m!5601729 () Bool)

(assert (=> d!1492337 m!5601729))

(declare-fun m!5601731 () Bool)

(assert (=> d!1492337 m!5601731))

(declare-fun m!5601733 () Bool)

(assert (=> b!4694720 m!5601733))

(assert (=> b!4694720 m!5601733))

(declare-fun m!5601735 () Bool)

(assert (=> b!4694720 m!5601735))

(assert (=> b!4694315 d!1492337))

(declare-fun bs!1090051 () Bool)

(declare-fun d!1492339 () Bool)

(assert (= bs!1090051 (and d!1492339 start!475320)))

(declare-fun lambda!208476 () Int)

(assert (=> bs!1090051 (= lambda!208476 lambda!208329)))

(declare-fun bs!1090052 () Bool)

(assert (= bs!1090052 (and d!1492339 d!1492143)))

(assert (=> bs!1090052 (= lambda!208476 lambda!208333)))

(declare-fun bs!1090053 () Bool)

(assert (= bs!1090053 (and d!1492339 d!1492337)))

(assert (=> bs!1090053 (= lambda!208476 lambda!208475)))

(declare-fun bs!1090054 () Bool)

(assert (= bs!1090054 (and d!1492339 d!1492251)))

(assert (=> bs!1090054 (not (= lambda!208476 lambda!208405))))

(declare-fun bs!1090055 () Bool)

(assert (= bs!1090055 (and d!1492339 d!1492147)))

(assert (=> bs!1090055 (= lambda!208476 lambda!208334)))

(declare-fun bs!1090056 () Bool)

(assert (= bs!1090056 (and d!1492339 d!1492171)))

(assert (=> bs!1090056 (= lambda!208476 lambda!208395)))

(declare-fun bs!1090057 () Bool)

(assert (= bs!1090057 (and d!1492339 d!1492149)))

(assert (=> bs!1090057 (= lambda!208476 lambda!208337)))

(declare-fun bs!1090058 () Bool)

(assert (= bs!1090058 (and d!1492339 d!1492161)))

(assert (=> bs!1090058 (= lambda!208476 lambda!208372)))

(declare-fun bs!1090059 () Bool)

(assert (= bs!1090059 (and d!1492339 d!1492125)))

(assert (=> bs!1090059 (= lambda!208476 lambda!208332)))

(declare-fun lt!1855635 () ListMap!5001)

(assert (=> d!1492339 (invariantList!1424 (toList!5638 lt!1855635))))

(declare-fun e!2928699 () ListMap!5001)

(assert (=> d!1492339 (= lt!1855635 e!2928699)))

(declare-fun c!802599 () Bool)

(assert (=> d!1492339 (= c!802599 ((_ is Cons!52464) (Cons!52464 (tuple2!53893 hash!405 lt!1855088) (t!359778 (toList!5637 lm!2023)))))))

(assert (=> d!1492339 (forall!11355 (Cons!52464 (tuple2!53893 hash!405 lt!1855088) (t!359778 (toList!5637 lm!2023))) lambda!208476)))

(assert (=> d!1492339 (= (extractMap!1900 (Cons!52464 (tuple2!53893 hash!405 lt!1855088) (t!359778 (toList!5637 lm!2023)))) lt!1855635)))

(declare-fun b!4694722 () Bool)

(assert (=> b!4694722 (= e!2928699 (addToMapMapFromBucket!1306 (_2!30240 (h!58723 (Cons!52464 (tuple2!53893 hash!405 lt!1855088) (t!359778 (toList!5637 lm!2023))))) (extractMap!1900 (t!359778 (Cons!52464 (tuple2!53893 hash!405 lt!1855088) (t!359778 (toList!5637 lm!2023)))))))))

(declare-fun b!4694723 () Bool)

(assert (=> b!4694723 (= e!2928699 (ListMap!5002 Nil!52463))))

(assert (= (and d!1492339 c!802599) b!4694722))

(assert (= (and d!1492339 (not c!802599)) b!4694723))

(declare-fun m!5601737 () Bool)

(assert (=> d!1492339 m!5601737))

(declare-fun m!5601739 () Bool)

(assert (=> d!1492339 m!5601739))

(declare-fun m!5601741 () Bool)

(assert (=> b!4694722 m!5601741))

(assert (=> b!4694722 m!5601741))

(declare-fun m!5601743 () Bool)

(assert (=> b!4694722 m!5601743))

(assert (=> b!4694315 d!1492339))

(declare-fun bs!1090060 () Bool)

(declare-fun d!1492341 () Bool)

(assert (= bs!1090060 (and d!1492341 start!475320)))

(declare-fun lambda!208477 () Int)

(assert (=> bs!1090060 (= lambda!208477 lambda!208329)))

(declare-fun bs!1090061 () Bool)

(assert (= bs!1090061 (and d!1492341 d!1492143)))

(assert (=> bs!1090061 (= lambda!208477 lambda!208333)))

(declare-fun bs!1090062 () Bool)

(assert (= bs!1090062 (and d!1492341 d!1492337)))

(assert (=> bs!1090062 (= lambda!208477 lambda!208475)))

(declare-fun bs!1090063 () Bool)

(assert (= bs!1090063 (and d!1492341 d!1492251)))

(assert (=> bs!1090063 (not (= lambda!208477 lambda!208405))))

(declare-fun bs!1090064 () Bool)

(assert (= bs!1090064 (and d!1492341 d!1492147)))

(assert (=> bs!1090064 (= lambda!208477 lambda!208334)))

(declare-fun bs!1090065 () Bool)

(assert (= bs!1090065 (and d!1492341 d!1492171)))

(assert (=> bs!1090065 (= lambda!208477 lambda!208395)))

(declare-fun bs!1090066 () Bool)

(assert (= bs!1090066 (and d!1492341 d!1492149)))

(assert (=> bs!1090066 (= lambda!208477 lambda!208337)))

(declare-fun bs!1090067 () Bool)

(assert (= bs!1090067 (and d!1492341 d!1492125)))

(assert (=> bs!1090067 (= lambda!208477 lambda!208332)))

(declare-fun bs!1090068 () Bool)

(assert (= bs!1090068 (and d!1492341 d!1492161)))

(assert (=> bs!1090068 (= lambda!208477 lambda!208372)))

(declare-fun bs!1090069 () Bool)

(assert (= bs!1090069 (and d!1492341 d!1492339)))

(assert (=> bs!1090069 (= lambda!208477 lambda!208476)))

(declare-fun lt!1855636 () ListMap!5001)

(assert (=> d!1492341 (invariantList!1424 (toList!5638 lt!1855636))))

(declare-fun e!2928700 () ListMap!5001)

(assert (=> d!1492341 (= lt!1855636 e!2928700)))

(declare-fun c!802600 () Bool)

(assert (=> d!1492341 (= c!802600 ((_ is Cons!52464) (Cons!52464 lt!1855087 (t!359778 (toList!5637 lm!2023)))))))

(assert (=> d!1492341 (forall!11355 (Cons!52464 lt!1855087 (t!359778 (toList!5637 lm!2023))) lambda!208477)))

(assert (=> d!1492341 (= (extractMap!1900 (Cons!52464 lt!1855087 (t!359778 (toList!5637 lm!2023)))) lt!1855636)))

(declare-fun b!4694724 () Bool)

(assert (=> b!4694724 (= e!2928700 (addToMapMapFromBucket!1306 (_2!30240 (h!58723 (Cons!52464 lt!1855087 (t!359778 (toList!5637 lm!2023))))) (extractMap!1900 (t!359778 (Cons!52464 lt!1855087 (t!359778 (toList!5637 lm!2023)))))))))

(declare-fun b!4694725 () Bool)

(assert (=> b!4694725 (= e!2928700 (ListMap!5002 Nil!52463))))

(assert (= (and d!1492341 c!802600) b!4694724))

(assert (= (and d!1492341 (not c!802600)) b!4694725))

(declare-fun m!5601745 () Bool)

(assert (=> d!1492341 m!5601745))

(declare-fun m!5601747 () Bool)

(assert (=> d!1492341 m!5601747))

(declare-fun m!5601749 () Bool)

(assert (=> b!4694724 m!5601749))

(assert (=> b!4694724 m!5601749))

(declare-fun m!5601751 () Bool)

(assert (=> b!4694724 m!5601751))

(assert (=> b!4694315 d!1492341))

(declare-fun d!1492343 () Bool)

(assert (=> d!1492343 (= (eq!1033 (addToMapMapFromBucket!1306 (Cons!52463 lt!1855104 lt!1855088) lt!1855095) (+!2158 (addToMapMapFromBucket!1306 lt!1855088 lt!1855095) lt!1855104)) (= (content!9202 (toList!5638 (addToMapMapFromBucket!1306 (Cons!52463 lt!1855104 lt!1855088) lt!1855095))) (content!9202 (toList!5638 (+!2158 (addToMapMapFromBucket!1306 lt!1855088 lt!1855095) lt!1855104)))))))

(declare-fun bs!1090070 () Bool)

(assert (= bs!1090070 d!1492343))

(declare-fun m!5601753 () Bool)

(assert (=> bs!1090070 m!5601753))

(declare-fun m!5601755 () Bool)

(assert (=> bs!1090070 m!5601755))

(assert (=> b!4694315 d!1492343))

(declare-fun bs!1090071 () Bool)

(declare-fun b!4694727 () Bool)

(assert (= bs!1090071 (and b!4694727 d!1492249)))

(declare-fun lambda!208478 () Int)

(assert (=> bs!1090071 (not (= lambda!208478 lambda!208402))))

(declare-fun bs!1090072 () Bool)

(assert (= bs!1090072 (and b!4694727 b!4694718)))

(assert (=> bs!1090072 (= (= lt!1855095 lt!1855623) (= lambda!208478 lambda!208473))))

(declare-fun bs!1090073 () Bool)

(assert (= bs!1090073 (and b!4694727 b!4694666)))

(assert (=> bs!1090073 (= (= lt!1855095 lt!1855549) (= lambda!208478 lambda!208465))))

(declare-fun bs!1090074 () Bool)

(assert (= bs!1090074 (and b!4694727 b!4694664)))

(assert (=> bs!1090074 (= lambda!208478 lambda!208462)))

(declare-fun bs!1090075 () Bool)

(assert (= bs!1090075 (and b!4694727 d!1492333)))

(assert (=> bs!1090075 (= (= lt!1855095 lt!1855616) (= lambda!208478 lambda!208474))))

(declare-fun bs!1090076 () Bool)

(assert (= bs!1090076 (and b!4694727 b!4694682)))

(assert (=> bs!1090076 (= lambda!208478 lambda!208467)))

(assert (=> bs!1090072 (= lambda!208478 lambda!208472)))

(declare-fun bs!1090077 () Bool)

(assert (= bs!1090077 (and b!4694727 b!4694684)))

(assert (=> bs!1090077 (= (= lt!1855095 lt!1855571) (= lambda!208478 lambda!208469))))

(assert (=> bs!1090077 (= lambda!208478 lambda!208468)))

(declare-fun bs!1090078 () Bool)

(assert (= bs!1090078 (and b!4694727 b!4694716)))

(assert (=> bs!1090078 (= lambda!208478 lambda!208471)))

(declare-fun bs!1090079 () Bool)

(assert (= bs!1090079 (and b!4694727 d!1492265)))

(assert (=> bs!1090079 (= (= lt!1855095 lt!1855542) (= lambda!208478 lambda!208466))))

(assert (=> bs!1090073 (= lambda!208478 lambda!208464)))

(declare-fun bs!1090080 () Bool)

(assert (= bs!1090080 (and b!4694727 d!1492323)))

(assert (=> bs!1090080 (= (= lt!1855095 lt!1855564) (= lambda!208478 lambda!208470))))

(assert (=> b!4694727 true))

(declare-fun bs!1090081 () Bool)

(declare-fun b!4694729 () Bool)

(assert (= bs!1090081 (and b!4694729 d!1492249)))

(declare-fun lambda!208479 () Int)

(assert (=> bs!1090081 (not (= lambda!208479 lambda!208402))))

(declare-fun bs!1090082 () Bool)

(assert (= bs!1090082 (and b!4694729 b!4694718)))

(assert (=> bs!1090082 (= (= lt!1855095 lt!1855623) (= lambda!208479 lambda!208473))))

(declare-fun bs!1090083 () Bool)

(assert (= bs!1090083 (and b!4694729 b!4694666)))

(assert (=> bs!1090083 (= (= lt!1855095 lt!1855549) (= lambda!208479 lambda!208465))))

(declare-fun bs!1090084 () Bool)

(assert (= bs!1090084 (and b!4694729 d!1492333)))

(assert (=> bs!1090084 (= (= lt!1855095 lt!1855616) (= lambda!208479 lambda!208474))))

(declare-fun bs!1090085 () Bool)

(assert (= bs!1090085 (and b!4694729 b!4694682)))

(assert (=> bs!1090085 (= lambda!208479 lambda!208467)))

(assert (=> bs!1090082 (= lambda!208479 lambda!208472)))

(declare-fun bs!1090086 () Bool)

(assert (= bs!1090086 (and b!4694729 b!4694684)))

(assert (=> bs!1090086 (= (= lt!1855095 lt!1855571) (= lambda!208479 lambda!208469))))

(assert (=> bs!1090086 (= lambda!208479 lambda!208468)))

(declare-fun bs!1090087 () Bool)

(assert (= bs!1090087 (and b!4694729 b!4694716)))

(assert (=> bs!1090087 (= lambda!208479 lambda!208471)))

(declare-fun bs!1090088 () Bool)

(assert (= bs!1090088 (and b!4694729 d!1492265)))

(assert (=> bs!1090088 (= (= lt!1855095 lt!1855542) (= lambda!208479 lambda!208466))))

(assert (=> bs!1090083 (= lambda!208479 lambda!208464)))

(declare-fun bs!1090089 () Bool)

(assert (= bs!1090089 (and b!4694729 d!1492323)))

(assert (=> bs!1090089 (= (= lt!1855095 lt!1855564) (= lambda!208479 lambda!208470))))

(declare-fun bs!1090090 () Bool)

(assert (= bs!1090090 (and b!4694729 b!4694664)))

(assert (=> bs!1090090 (= lambda!208479 lambda!208462)))

(declare-fun bs!1090091 () Bool)

(assert (= bs!1090091 (and b!4694729 b!4694727)))

(assert (=> bs!1090091 (= lambda!208479 lambda!208478)))

(assert (=> b!4694729 true))

(declare-fun lambda!208480 () Int)

(assert (=> bs!1090081 (not (= lambda!208480 lambda!208402))))

(declare-fun lt!1855648 () ListMap!5001)

(assert (=> bs!1090082 (= (= lt!1855648 lt!1855623) (= lambda!208480 lambda!208473))))

(assert (=> bs!1090083 (= (= lt!1855648 lt!1855549) (= lambda!208480 lambda!208465))))

(assert (=> bs!1090084 (= (= lt!1855648 lt!1855616) (= lambda!208480 lambda!208474))))

(assert (=> b!4694729 (= (= lt!1855648 lt!1855095) (= lambda!208480 lambda!208479))))

(assert (=> bs!1090085 (= (= lt!1855648 lt!1855095) (= lambda!208480 lambda!208467))))

(assert (=> bs!1090082 (= (= lt!1855648 lt!1855095) (= lambda!208480 lambda!208472))))

(assert (=> bs!1090086 (= (= lt!1855648 lt!1855571) (= lambda!208480 lambda!208469))))

(assert (=> bs!1090086 (= (= lt!1855648 lt!1855095) (= lambda!208480 lambda!208468))))

(assert (=> bs!1090087 (= (= lt!1855648 lt!1855095) (= lambda!208480 lambda!208471))))

(assert (=> bs!1090088 (= (= lt!1855648 lt!1855542) (= lambda!208480 lambda!208466))))

(assert (=> bs!1090083 (= (= lt!1855648 lt!1855095) (= lambda!208480 lambda!208464))))

(assert (=> bs!1090089 (= (= lt!1855648 lt!1855564) (= lambda!208480 lambda!208470))))

(assert (=> bs!1090090 (= (= lt!1855648 lt!1855095) (= lambda!208480 lambda!208462))))

(assert (=> bs!1090091 (= (= lt!1855648 lt!1855095) (= lambda!208480 lambda!208478))))

(assert (=> b!4694729 true))

(declare-fun bs!1090092 () Bool)

(declare-fun d!1492345 () Bool)

(assert (= bs!1090092 (and d!1492345 b!4694718)))

(declare-fun lt!1855641 () ListMap!5001)

(declare-fun lambda!208481 () Int)

(assert (=> bs!1090092 (= (= lt!1855641 lt!1855623) (= lambda!208481 lambda!208473))))

(declare-fun bs!1090093 () Bool)

(assert (= bs!1090093 (and d!1492345 b!4694666)))

(assert (=> bs!1090093 (= (= lt!1855641 lt!1855549) (= lambda!208481 lambda!208465))))

(declare-fun bs!1090094 () Bool)

(assert (= bs!1090094 (and d!1492345 d!1492333)))

(assert (=> bs!1090094 (= (= lt!1855641 lt!1855616) (= lambda!208481 lambda!208474))))

(declare-fun bs!1090095 () Bool)

(assert (= bs!1090095 (and d!1492345 b!4694729)))

(assert (=> bs!1090095 (= (= lt!1855641 lt!1855095) (= lambda!208481 lambda!208479))))

(declare-fun bs!1090096 () Bool)

(assert (= bs!1090096 (and d!1492345 b!4694682)))

(assert (=> bs!1090096 (= (= lt!1855641 lt!1855095) (= lambda!208481 lambda!208467))))

(assert (=> bs!1090092 (= (= lt!1855641 lt!1855095) (= lambda!208481 lambda!208472))))

(declare-fun bs!1090097 () Bool)

(assert (= bs!1090097 (and d!1492345 b!4694684)))

(assert (=> bs!1090097 (= (= lt!1855641 lt!1855571) (= lambda!208481 lambda!208469))))

(assert (=> bs!1090097 (= (= lt!1855641 lt!1855095) (= lambda!208481 lambda!208468))))

(assert (=> bs!1090095 (= (= lt!1855641 lt!1855648) (= lambda!208481 lambda!208480))))

(declare-fun bs!1090098 () Bool)

(assert (= bs!1090098 (and d!1492345 d!1492249)))

(assert (=> bs!1090098 (not (= lambda!208481 lambda!208402))))

(declare-fun bs!1090099 () Bool)

(assert (= bs!1090099 (and d!1492345 b!4694716)))

(assert (=> bs!1090099 (= (= lt!1855641 lt!1855095) (= lambda!208481 lambda!208471))))

(declare-fun bs!1090100 () Bool)

(assert (= bs!1090100 (and d!1492345 d!1492265)))

(assert (=> bs!1090100 (= (= lt!1855641 lt!1855542) (= lambda!208481 lambda!208466))))

(assert (=> bs!1090093 (= (= lt!1855641 lt!1855095) (= lambda!208481 lambda!208464))))

(declare-fun bs!1090101 () Bool)

(assert (= bs!1090101 (and d!1492345 d!1492323)))

(assert (=> bs!1090101 (= (= lt!1855641 lt!1855564) (= lambda!208481 lambda!208470))))

(declare-fun bs!1090102 () Bool)

(assert (= bs!1090102 (and d!1492345 b!4694664)))

(assert (=> bs!1090102 (= (= lt!1855641 lt!1855095) (= lambda!208481 lambda!208462))))

(declare-fun bs!1090103 () Bool)

(assert (= bs!1090103 (and d!1492345 b!4694727)))

(assert (=> bs!1090103 (= (= lt!1855641 lt!1855095) (= lambda!208481 lambda!208478))))

(assert (=> d!1492345 true))

(declare-fun b!4694726 () Bool)

(declare-fun res!1980993 () Bool)

(declare-fun e!2928701 () Bool)

(assert (=> b!4694726 (=> (not res!1980993) (not e!2928701))))

(assert (=> b!4694726 (= res!1980993 (forall!11357 (toList!5638 lt!1855095) lambda!208481))))

(declare-fun e!2928702 () ListMap!5001)

(assert (=> b!4694727 (= e!2928702 lt!1855095)))

(declare-fun lt!1855655 () Unit!124905)

(declare-fun call!328151 () Unit!124905)

(assert (=> b!4694727 (= lt!1855655 call!328151)))

(declare-fun call!328153 () Bool)

(assert (=> b!4694727 call!328153))

(declare-fun lt!1855646 () Unit!124905)

(assert (=> b!4694727 (= lt!1855646 lt!1855655)))

(declare-fun call!328152 () Bool)

(assert (=> b!4694727 call!328152))

(declare-fun lt!1855637 () Unit!124905)

(declare-fun Unit!124992 () Unit!124905)

(assert (=> b!4694727 (= lt!1855637 Unit!124992)))

(declare-fun bm!328146 () Bool)

(assert (=> bm!328146 (= call!328151 (lemmaContainsAllItsOwnKeys!712 lt!1855095))))

(declare-fun b!4694728 () Bool)

(declare-fun e!2928703 () Bool)

(assert (=> b!4694728 (= e!2928703 (forall!11357 (toList!5638 lt!1855095) lambda!208480))))

(assert (=> b!4694729 (= e!2928702 lt!1855648)))

(declare-fun lt!1855639 () ListMap!5001)

(assert (=> b!4694729 (= lt!1855639 (+!2158 lt!1855095 (h!58722 (Cons!52463 lt!1855104 lt!1855088))))))

(assert (=> b!4694729 (= lt!1855648 (addToMapMapFromBucket!1306 (t!359777 (Cons!52463 lt!1855104 lt!1855088)) (+!2158 lt!1855095 (h!58722 (Cons!52463 lt!1855104 lt!1855088)))))))

(declare-fun lt!1855644 () Unit!124905)

(assert (=> b!4694729 (= lt!1855644 call!328151)))

(assert (=> b!4694729 (forall!11357 (toList!5638 lt!1855095) lambda!208479)))

(declare-fun lt!1855645 () Unit!124905)

(assert (=> b!4694729 (= lt!1855645 lt!1855644)))

(assert (=> b!4694729 (forall!11357 (toList!5638 lt!1855639) lambda!208480)))

(declare-fun lt!1855653 () Unit!124905)

(declare-fun Unit!124993 () Unit!124905)

(assert (=> b!4694729 (= lt!1855653 Unit!124993)))

(assert (=> b!4694729 (forall!11357 (t!359777 (Cons!52463 lt!1855104 lt!1855088)) lambda!208480)))

(declare-fun lt!1855642 () Unit!124905)

(declare-fun Unit!124994 () Unit!124905)

(assert (=> b!4694729 (= lt!1855642 Unit!124994)))

(declare-fun lt!1855647 () Unit!124905)

(declare-fun Unit!124995 () Unit!124905)

(assert (=> b!4694729 (= lt!1855647 Unit!124995)))

(declare-fun lt!1855651 () Unit!124905)

(assert (=> b!4694729 (= lt!1855651 (forallContained!3464 (toList!5638 lt!1855639) lambda!208480 (h!58722 (Cons!52463 lt!1855104 lt!1855088))))))

(assert (=> b!4694729 (contains!15696 lt!1855639 (_1!30239 (h!58722 (Cons!52463 lt!1855104 lt!1855088))))))

(declare-fun lt!1855650 () Unit!124905)

(declare-fun Unit!124996 () Unit!124905)

(assert (=> b!4694729 (= lt!1855650 Unit!124996)))

(assert (=> b!4694729 (contains!15696 lt!1855648 (_1!30239 (h!58722 (Cons!52463 lt!1855104 lt!1855088))))))

(declare-fun lt!1855656 () Unit!124905)

(declare-fun Unit!124997 () Unit!124905)

(assert (=> b!4694729 (= lt!1855656 Unit!124997)))

(assert (=> b!4694729 call!328153))

(declare-fun lt!1855654 () Unit!124905)

(declare-fun Unit!124998 () Unit!124905)

(assert (=> b!4694729 (= lt!1855654 Unit!124998)))

(assert (=> b!4694729 (forall!11357 (toList!5638 lt!1855639) lambda!208480)))

(declare-fun lt!1855657 () Unit!124905)

(declare-fun Unit!124999 () Unit!124905)

(assert (=> b!4694729 (= lt!1855657 Unit!124999)))

(declare-fun lt!1855652 () Unit!124905)

(declare-fun Unit!125000 () Unit!124905)

(assert (=> b!4694729 (= lt!1855652 Unit!125000)))

(declare-fun lt!1855649 () Unit!124905)

(assert (=> b!4694729 (= lt!1855649 (addForallContainsKeyThenBeforeAdding!711 lt!1855095 lt!1855648 (_1!30239 (h!58722 (Cons!52463 lt!1855104 lt!1855088))) (_2!30239 (h!58722 (Cons!52463 lt!1855104 lt!1855088)))))))

(assert (=> b!4694729 (forall!11357 (toList!5638 lt!1855095) lambda!208480)))

(declare-fun lt!1855640 () Unit!124905)

(assert (=> b!4694729 (= lt!1855640 lt!1855649)))

(assert (=> b!4694729 call!328152))

(declare-fun lt!1855638 () Unit!124905)

(declare-fun Unit!125001 () Unit!124905)

(assert (=> b!4694729 (= lt!1855638 Unit!125001)))

(declare-fun res!1980995 () Bool)

(assert (=> b!4694729 (= res!1980995 (forall!11357 (Cons!52463 lt!1855104 lt!1855088) lambda!208480))))

(assert (=> b!4694729 (=> (not res!1980995) (not e!2928703))))

(assert (=> b!4694729 e!2928703))

(declare-fun lt!1855643 () Unit!124905)

(declare-fun Unit!125002 () Unit!124905)

(assert (=> b!4694729 (= lt!1855643 Unit!125002)))

(declare-fun bm!328147 () Bool)

(declare-fun c!802601 () Bool)

(assert (=> bm!328147 (= call!328152 (forall!11357 (toList!5638 lt!1855095) (ite c!802601 lambda!208478 lambda!208480)))))

(declare-fun b!4694730 () Bool)

(assert (=> b!4694730 (= e!2928701 (invariantList!1424 (toList!5638 lt!1855641)))))

(declare-fun bm!328148 () Bool)

(assert (=> bm!328148 (= call!328153 (forall!11357 (ite c!802601 (toList!5638 lt!1855095) (Cons!52463 lt!1855104 lt!1855088)) (ite c!802601 lambda!208478 lambda!208480)))))

(assert (=> d!1492345 e!2928701))

(declare-fun res!1980994 () Bool)

(assert (=> d!1492345 (=> (not res!1980994) (not e!2928701))))

(assert (=> d!1492345 (= res!1980994 (forall!11357 (Cons!52463 lt!1855104 lt!1855088) lambda!208481))))

(assert (=> d!1492345 (= lt!1855641 e!2928702)))

(assert (=> d!1492345 (= c!802601 ((_ is Nil!52463) (Cons!52463 lt!1855104 lt!1855088)))))

(assert (=> d!1492345 (noDuplicateKeys!1874 (Cons!52463 lt!1855104 lt!1855088))))

(assert (=> d!1492345 (= (addToMapMapFromBucket!1306 (Cons!52463 lt!1855104 lt!1855088) lt!1855095) lt!1855641)))

(assert (= (and d!1492345 c!802601) b!4694727))

(assert (= (and d!1492345 (not c!802601)) b!4694729))

(assert (= (and b!4694729 res!1980995) b!4694728))

(assert (= (or b!4694727 b!4694729) bm!328146))

(assert (= (or b!4694727 b!4694729) bm!328148))

(assert (= (or b!4694727 b!4694729) bm!328147))

(assert (= (and d!1492345 res!1980994) b!4694726))

(assert (= (and b!4694726 res!1980993) b!4694730))

(declare-fun m!5601757 () Bool)

(assert (=> b!4694728 m!5601757))

(assert (=> bm!328146 m!5601591))

(declare-fun m!5601759 () Bool)

(assert (=> bm!328147 m!5601759))

(declare-fun m!5601761 () Bool)

(assert (=> b!4694726 m!5601761))

(declare-fun m!5601763 () Bool)

(assert (=> b!4694730 m!5601763))

(declare-fun m!5601765 () Bool)

(assert (=> b!4694729 m!5601765))

(declare-fun m!5601767 () Bool)

(assert (=> b!4694729 m!5601767))

(declare-fun m!5601769 () Bool)

(assert (=> b!4694729 m!5601769))

(assert (=> b!4694729 m!5601767))

(declare-fun m!5601771 () Bool)

(assert (=> b!4694729 m!5601771))

(declare-fun m!5601773 () Bool)

(assert (=> b!4694729 m!5601773))

(assert (=> b!4694729 m!5601757))

(declare-fun m!5601775 () Bool)

(assert (=> b!4694729 m!5601775))

(declare-fun m!5601777 () Bool)

(assert (=> b!4694729 m!5601777))

(declare-fun m!5601779 () Bool)

(assert (=> b!4694729 m!5601779))

(declare-fun m!5601781 () Bool)

(assert (=> b!4694729 m!5601781))

(assert (=> b!4694729 m!5601771))

(declare-fun m!5601783 () Bool)

(assert (=> b!4694729 m!5601783))

(declare-fun m!5601785 () Bool)

(assert (=> bm!328148 m!5601785))

(declare-fun m!5601787 () Bool)

(assert (=> d!1492345 m!5601787))

(declare-fun m!5601789 () Bool)

(assert (=> d!1492345 m!5601789))

(assert (=> b!4694315 d!1492345))

(declare-fun d!1492347 () Bool)

(declare-fun e!2928704 () Bool)

(assert (=> d!1492347 e!2928704))

(declare-fun res!1980996 () Bool)

(assert (=> d!1492347 (=> (not res!1980996) (not e!2928704))))

(declare-fun lt!1855659 () ListMap!5001)

(assert (=> d!1492347 (= res!1980996 (contains!15696 lt!1855659 (_1!30239 lt!1855104)))))

(declare-fun lt!1855660 () List!52587)

(assert (=> d!1492347 (= lt!1855659 (ListMap!5002 lt!1855660))))

(declare-fun lt!1855661 () Unit!124905)

(declare-fun lt!1855658 () Unit!124905)

(assert (=> d!1492347 (= lt!1855661 lt!1855658)))

(assert (=> d!1492347 (= (getValueByKey!1809 lt!1855660 (_1!30239 lt!1855104)) (Some!12128 (_2!30239 lt!1855104)))))

(assert (=> d!1492347 (= lt!1855658 (lemmaContainsTupThenGetReturnValue!1014 lt!1855660 (_1!30239 lt!1855104) (_2!30239 lt!1855104)))))

(assert (=> d!1492347 (= lt!1855660 (insertNoDuplicatedKeys!522 (toList!5638 (addToMapMapFromBucket!1306 lt!1855088 lt!1855095)) (_1!30239 lt!1855104) (_2!30239 lt!1855104)))))

(assert (=> d!1492347 (= (+!2158 (addToMapMapFromBucket!1306 lt!1855088 lt!1855095) lt!1855104) lt!1855659)))

(declare-fun b!4694731 () Bool)

(declare-fun res!1980997 () Bool)

(assert (=> b!4694731 (=> (not res!1980997) (not e!2928704))))

(assert (=> b!4694731 (= res!1980997 (= (getValueByKey!1809 (toList!5638 lt!1855659) (_1!30239 lt!1855104)) (Some!12128 (_2!30239 lt!1855104))))))

(declare-fun b!4694732 () Bool)

(assert (=> b!4694732 (= e!2928704 (contains!15701 (toList!5638 lt!1855659) lt!1855104))))

(assert (= (and d!1492347 res!1980996) b!4694731))

(assert (= (and b!4694731 res!1980997) b!4694732))

(declare-fun m!5601791 () Bool)

(assert (=> d!1492347 m!5601791))

(declare-fun m!5601793 () Bool)

(assert (=> d!1492347 m!5601793))

(declare-fun m!5601795 () Bool)

(assert (=> d!1492347 m!5601795))

(declare-fun m!5601797 () Bool)

(assert (=> d!1492347 m!5601797))

(declare-fun m!5601799 () Bool)

(assert (=> b!4694731 m!5601799))

(declare-fun m!5601801 () Bool)

(assert (=> b!4694732 m!5601801))

(assert (=> b!4694315 d!1492347))

(declare-fun bs!1090104 () Bool)

(declare-fun d!1492349 () Bool)

(assert (= bs!1090104 (and d!1492349 start!475320)))

(declare-fun lambda!208484 () Int)

(assert (=> bs!1090104 (= lambda!208484 lambda!208329)))

(declare-fun bs!1090105 () Bool)

(assert (= bs!1090105 (and d!1492349 d!1492143)))

(assert (=> bs!1090105 (= lambda!208484 lambda!208333)))

(declare-fun bs!1090106 () Bool)

(assert (= bs!1090106 (and d!1492349 d!1492341)))

(assert (=> bs!1090106 (= lambda!208484 lambda!208477)))

(declare-fun bs!1090107 () Bool)

(assert (= bs!1090107 (and d!1492349 d!1492337)))

(assert (=> bs!1090107 (= lambda!208484 lambda!208475)))

(declare-fun bs!1090108 () Bool)

(assert (= bs!1090108 (and d!1492349 d!1492251)))

(assert (=> bs!1090108 (not (= lambda!208484 lambda!208405))))

(declare-fun bs!1090109 () Bool)

(assert (= bs!1090109 (and d!1492349 d!1492147)))

(assert (=> bs!1090109 (= lambda!208484 lambda!208334)))

(declare-fun bs!1090110 () Bool)

(assert (= bs!1090110 (and d!1492349 d!1492171)))

(assert (=> bs!1090110 (= lambda!208484 lambda!208395)))

(declare-fun bs!1090111 () Bool)

(assert (= bs!1090111 (and d!1492349 d!1492149)))

(assert (=> bs!1090111 (= lambda!208484 lambda!208337)))

(declare-fun bs!1090112 () Bool)

(assert (= bs!1090112 (and d!1492349 d!1492125)))

(assert (=> bs!1090112 (= lambda!208484 lambda!208332)))

(declare-fun bs!1090113 () Bool)

(assert (= bs!1090113 (and d!1492349 d!1492161)))

(assert (=> bs!1090113 (= lambda!208484 lambda!208372)))

(declare-fun bs!1090114 () Bool)

(assert (= bs!1090114 (and d!1492349 d!1492339)))

(assert (=> bs!1090114 (= lambda!208484 lambda!208476)))

(assert (=> d!1492349 (contains!15696 (extractMap!1900 (toList!5637 lt!1855076)) key!4653)))

(declare-fun lt!1855664 () Unit!124905)

(declare-fun choose!32700 (ListLongMap!4167 K!13835 Hashable!6243) Unit!124905)

(assert (=> d!1492349 (= lt!1855664 (choose!32700 lt!1855076 key!4653 hashF!1323))))

(assert (=> d!1492349 (forall!11355 (toList!5637 lt!1855076) lambda!208484)))

(assert (=> d!1492349 (= (lemmaListContainsThenExtractedMapContains!466 lt!1855076 key!4653 hashF!1323) lt!1855664)))

(declare-fun bs!1090115 () Bool)

(assert (= bs!1090115 d!1492349))

(declare-fun m!5601803 () Bool)

(assert (=> bs!1090115 m!5601803))

(assert (=> bs!1090115 m!5601803))

(declare-fun m!5601805 () Bool)

(assert (=> bs!1090115 m!5601805))

(declare-fun m!5601807 () Bool)

(assert (=> bs!1090115 m!5601807))

(declare-fun m!5601809 () Bool)

(assert (=> bs!1090115 m!5601809))

(assert (=> b!4694315 d!1492349))

(declare-fun d!1492351 () Bool)

(assert (=> d!1492351 (= (head!10011 newBucket!218) (h!58722 newBucket!218))))

(assert (=> b!4694315 d!1492351))

(declare-fun bs!1090116 () Bool)

(declare-fun d!1492353 () Bool)

(assert (= bs!1090116 (and d!1492353 b!4694718)))

(declare-fun lambda!208485 () Int)

(assert (=> bs!1090116 (not (= lambda!208485 lambda!208473))))

(declare-fun bs!1090117 () Bool)

(assert (= bs!1090117 (and d!1492353 b!4694666)))

(assert (=> bs!1090117 (not (= lambda!208485 lambda!208465))))

(declare-fun bs!1090118 () Bool)

(assert (= bs!1090118 (and d!1492353 d!1492345)))

(assert (=> bs!1090118 (not (= lambda!208485 lambda!208481))))

(declare-fun bs!1090119 () Bool)

(assert (= bs!1090119 (and d!1492353 d!1492333)))

(assert (=> bs!1090119 (not (= lambda!208485 lambda!208474))))

(declare-fun bs!1090120 () Bool)

(assert (= bs!1090120 (and d!1492353 b!4694729)))

(assert (=> bs!1090120 (not (= lambda!208485 lambda!208479))))

(declare-fun bs!1090121 () Bool)

(assert (= bs!1090121 (and d!1492353 b!4694682)))

(assert (=> bs!1090121 (not (= lambda!208485 lambda!208467))))

(assert (=> bs!1090116 (not (= lambda!208485 lambda!208472))))

(declare-fun bs!1090122 () Bool)

(assert (= bs!1090122 (and d!1492353 b!4694684)))

(assert (=> bs!1090122 (not (= lambda!208485 lambda!208469))))

(assert (=> bs!1090122 (not (= lambda!208485 lambda!208468))))

(assert (=> bs!1090120 (not (= lambda!208485 lambda!208480))))

(declare-fun bs!1090123 () Bool)

(assert (= bs!1090123 (and d!1492353 d!1492249)))

(assert (=> bs!1090123 (= lambda!208485 lambda!208402)))

(declare-fun bs!1090124 () Bool)

(assert (= bs!1090124 (and d!1492353 b!4694716)))

(assert (=> bs!1090124 (not (= lambda!208485 lambda!208471))))

(declare-fun bs!1090125 () Bool)

(assert (= bs!1090125 (and d!1492353 d!1492265)))

(assert (=> bs!1090125 (not (= lambda!208485 lambda!208466))))

(assert (=> bs!1090117 (not (= lambda!208485 lambda!208464))))

(declare-fun bs!1090126 () Bool)

(assert (= bs!1090126 (and d!1492353 d!1492323)))

(assert (=> bs!1090126 (not (= lambda!208485 lambda!208470))))

(declare-fun bs!1090127 () Bool)

(assert (= bs!1090127 (and d!1492353 b!4694664)))

(assert (=> bs!1090127 (not (= lambda!208485 lambda!208462))))

(declare-fun bs!1090128 () Bool)

(assert (= bs!1090128 (and d!1492353 b!4694727)))

(assert (=> bs!1090128 (not (= lambda!208485 lambda!208478))))

(assert (=> d!1492353 true))

(assert (=> d!1492353 true))

(assert (=> d!1492353 (= (allKeysSameHash!1700 oldBucket!34 hash!405 hashF!1323) (forall!11357 oldBucket!34 lambda!208485))))

(declare-fun bs!1090129 () Bool)

(assert (= bs!1090129 d!1492353))

(declare-fun m!5601811 () Bool)

(assert (=> bs!1090129 m!5601811))

(assert (=> b!4694313 d!1492353))

(declare-fun b!4694744 () Bool)

(declare-fun e!2928710 () List!52587)

(assert (=> b!4694744 (= e!2928710 Nil!52463)))

(declare-fun b!4694741 () Bool)

(declare-fun e!2928709 () List!52587)

(assert (=> b!4694741 (= e!2928709 (t!359777 (t!359777 oldBucket!34)))))

(declare-fun d!1492355 () Bool)

(declare-fun lt!1855667 () List!52587)

(assert (=> d!1492355 (not (containsKey!3101 lt!1855667 key!4653))))

(assert (=> d!1492355 (= lt!1855667 e!2928709)))

(declare-fun c!802607 () Bool)

(assert (=> d!1492355 (= c!802607 (and ((_ is Cons!52463) (t!359777 oldBucket!34)) (= (_1!30239 (h!58722 (t!359777 oldBucket!34))) key!4653)))))

(assert (=> d!1492355 (noDuplicateKeys!1874 (t!359777 oldBucket!34))))

(assert (=> d!1492355 (= (removePairForKey!1469 (t!359777 oldBucket!34) key!4653) lt!1855667)))

(declare-fun b!4694742 () Bool)

(assert (=> b!4694742 (= e!2928709 e!2928710)))

(declare-fun c!802606 () Bool)

(assert (=> b!4694742 (= c!802606 ((_ is Cons!52463) (t!359777 oldBucket!34)))))

(declare-fun b!4694743 () Bool)

(assert (=> b!4694743 (= e!2928710 (Cons!52463 (h!58722 (t!359777 oldBucket!34)) (removePairForKey!1469 (t!359777 (t!359777 oldBucket!34)) key!4653)))))

(assert (= (and d!1492355 c!802607) b!4694741))

(assert (= (and d!1492355 (not c!802607)) b!4694742))

(assert (= (and b!4694742 c!802606) b!4694743))

(assert (= (and b!4694742 (not c!802606)) b!4694744))

(declare-fun m!5601813 () Bool)

(assert (=> d!1492355 m!5601813))

(assert (=> d!1492355 m!5601291))

(declare-fun m!5601815 () Bool)

(assert (=> b!4694743 m!5601815))

(assert (=> b!4694324 d!1492355))

(declare-fun d!1492357 () Bool)

(declare-fun res!1980998 () Bool)

(declare-fun e!2928711 () Bool)

(assert (=> d!1492357 (=> res!1980998 e!2928711)))

(assert (=> d!1492357 (= res!1980998 ((_ is Nil!52464) (toList!5637 lm!2023)))))

(assert (=> d!1492357 (= (forall!11355 (toList!5637 lm!2023) lambda!208329) e!2928711)))

(declare-fun b!4694745 () Bool)

(declare-fun e!2928712 () Bool)

(assert (=> b!4694745 (= e!2928711 e!2928712)))

(declare-fun res!1980999 () Bool)

(assert (=> b!4694745 (=> (not res!1980999) (not e!2928712))))

(assert (=> b!4694745 (= res!1980999 (dynLambda!21727 lambda!208329 (h!58723 (toList!5637 lm!2023))))))

(declare-fun b!4694746 () Bool)

(assert (=> b!4694746 (= e!2928712 (forall!11355 (t!359778 (toList!5637 lm!2023)) lambda!208329))))

(assert (= (and d!1492357 (not res!1980998)) b!4694745))

(assert (= (and b!4694745 res!1980999) b!4694746))

(declare-fun b_lambda!177149 () Bool)

(assert (=> (not b_lambda!177149) (not b!4694745)))

(declare-fun m!5601817 () Bool)

(assert (=> b!4694745 m!5601817))

(declare-fun m!5601819 () Bool)

(assert (=> b!4694746 m!5601819))

(assert (=> start!475320 d!1492357))

(declare-fun d!1492359 () Bool)

(declare-fun isStrictlySorted!664 (List!52588) Bool)

(assert (=> d!1492359 (= (inv!67709 lm!2023) (isStrictlySorted!664 (toList!5637 lm!2023)))))

(declare-fun bs!1090130 () Bool)

(assert (= bs!1090130 d!1492359))

(declare-fun m!5601821 () Bool)

(assert (=> bs!1090130 m!5601821))

(assert (=> start!475320 d!1492359))

(declare-fun b!4694750 () Bool)

(declare-fun e!2928714 () List!52587)

(assert (=> b!4694750 (= e!2928714 Nil!52463)))

(declare-fun b!4694747 () Bool)

(declare-fun e!2928713 () List!52587)

(assert (=> b!4694747 (= e!2928713 (t!359777 oldBucket!34))))

(declare-fun d!1492361 () Bool)

(declare-fun lt!1855668 () List!52587)

(assert (=> d!1492361 (not (containsKey!3101 lt!1855668 key!4653))))

(assert (=> d!1492361 (= lt!1855668 e!2928713)))

(declare-fun c!802609 () Bool)

(assert (=> d!1492361 (= c!802609 (and ((_ is Cons!52463) oldBucket!34) (= (_1!30239 (h!58722 oldBucket!34)) key!4653)))))

(assert (=> d!1492361 (noDuplicateKeys!1874 oldBucket!34)))

(assert (=> d!1492361 (= (removePairForKey!1469 oldBucket!34 key!4653) lt!1855668)))

(declare-fun b!4694748 () Bool)

(assert (=> b!4694748 (= e!2928713 e!2928714)))

(declare-fun c!802608 () Bool)

(assert (=> b!4694748 (= c!802608 ((_ is Cons!52463) oldBucket!34))))

(declare-fun b!4694749 () Bool)

(assert (=> b!4694749 (= e!2928714 (Cons!52463 (h!58722 oldBucket!34) (removePairForKey!1469 (t!359777 oldBucket!34) key!4653)))))

(assert (= (and d!1492361 c!802609) b!4694747))

(assert (= (and d!1492361 (not c!802609)) b!4694748))

(assert (= (and b!4694748 c!802608) b!4694749))

(assert (= (and b!4694748 (not c!802608)) b!4694750))

(declare-fun m!5601823 () Bool)

(assert (=> d!1492361 m!5601823))

(assert (=> d!1492361 m!5600777))

(assert (=> b!4694749 m!5600781))

(assert (=> b!4694314 d!1492361))

(declare-fun d!1492363 () Bool)

(declare-fun hash!4111 (Hashable!6243 K!13835) (_ BitVec 64))

(assert (=> d!1492363 (= (hash!4107 hashF!1323 key!4653) (hash!4111 hashF!1323 key!4653))))

(declare-fun bs!1090131 () Bool)

(assert (= bs!1090131 d!1492363))

(declare-fun m!5601825 () Bool)

(assert (=> bs!1090131 m!5601825))

(assert (=> b!4694312 d!1492363))

(declare-fun d!1492365 () Bool)

(assert (=> d!1492365 (= (head!10012 (toList!5637 lm!2023)) (h!58723 (toList!5637 lm!2023)))))

(assert (=> b!4694323 d!1492365))

(declare-fun d!1492367 () Bool)

(declare-fun res!1981000 () Bool)

(declare-fun e!2928715 () Bool)

(assert (=> d!1492367 (=> res!1981000 e!2928715)))

(assert (=> d!1492367 (= res!1981000 (not ((_ is Cons!52463) newBucket!218)))))

(assert (=> d!1492367 (= (noDuplicateKeys!1874 newBucket!218) e!2928715)))

(declare-fun b!4694751 () Bool)

(declare-fun e!2928716 () Bool)

(assert (=> b!4694751 (= e!2928715 e!2928716)))

(declare-fun res!1981001 () Bool)

(assert (=> b!4694751 (=> (not res!1981001) (not e!2928716))))

(assert (=> b!4694751 (= res!1981001 (not (containsKey!3101 (t!359777 newBucket!218) (_1!30239 (h!58722 newBucket!218)))))))

(declare-fun b!4694752 () Bool)

(assert (=> b!4694752 (= e!2928716 (noDuplicateKeys!1874 (t!359777 newBucket!218)))))

(assert (= (and d!1492367 (not res!1981000)) b!4694751))

(assert (= (and b!4694751 res!1981001) b!4694752))

(declare-fun m!5601827 () Bool)

(assert (=> b!4694751 m!5601827))

(declare-fun m!5601829 () Bool)

(assert (=> b!4694752 m!5601829))

(assert (=> b!4694321 d!1492367))

(declare-fun b!4694756 () Bool)

(declare-fun e!2928718 () List!52587)

(assert (=> b!4694756 (= e!2928718 Nil!52463)))

(declare-fun b!4694753 () Bool)

(declare-fun e!2928717 () List!52587)

(assert (=> b!4694753 (= e!2928717 (t!359777 lt!1855088))))

(declare-fun d!1492369 () Bool)

(declare-fun lt!1855669 () List!52587)

(assert (=> d!1492369 (not (containsKey!3101 lt!1855669 key!4653))))

(assert (=> d!1492369 (= lt!1855669 e!2928717)))

(declare-fun c!802611 () Bool)

(assert (=> d!1492369 (= c!802611 (and ((_ is Cons!52463) lt!1855088) (= (_1!30239 (h!58722 lt!1855088)) key!4653)))))

(assert (=> d!1492369 (noDuplicateKeys!1874 lt!1855088)))

(assert (=> d!1492369 (= (removePairForKey!1469 lt!1855088 key!4653) lt!1855669)))

(declare-fun b!4694754 () Bool)

(assert (=> b!4694754 (= e!2928717 e!2928718)))

(declare-fun c!802610 () Bool)

(assert (=> b!4694754 (= c!802610 ((_ is Cons!52463) lt!1855088))))

(declare-fun b!4694755 () Bool)

(assert (=> b!4694755 (= e!2928718 (Cons!52463 (h!58722 lt!1855088) (removePairForKey!1469 (t!359777 lt!1855088) key!4653)))))

(assert (= (and d!1492369 c!802611) b!4694753))

(assert (= (and d!1492369 (not c!802611)) b!4694754))

(assert (= (and b!4694754 c!802610) b!4694755))

(assert (= (and b!4694754 (not c!802610)) b!4694756))

(declare-fun m!5601831 () Bool)

(assert (=> d!1492369 m!5601831))

(assert (=> d!1492369 m!5601623))

(declare-fun m!5601833 () Bool)

(assert (=> b!4694755 m!5601833))

(assert (=> b!4694322 d!1492369))

(declare-fun d!1492371 () Bool)

(assert (=> d!1492371 (= (tail!8649 newBucket!218) (t!359777 newBucket!218))))

(assert (=> b!4694322 d!1492371))

(declare-fun d!1492373 () Bool)

(assert (=> d!1492373 (= (tail!8649 oldBucket!34) (t!359777 oldBucket!34))))

(assert (=> b!4694322 d!1492373))

(declare-fun bs!1090132 () Bool)

(declare-fun b!4694758 () Bool)

(assert (= bs!1090132 (and b!4694758 b!4694718)))

(declare-fun lambda!208486 () Int)

(assert (=> bs!1090132 (= (= lt!1855095 lt!1855623) (= lambda!208486 lambda!208473))))

(declare-fun bs!1090133 () Bool)

(assert (= bs!1090133 (and b!4694758 b!4694666)))

(assert (=> bs!1090133 (= (= lt!1855095 lt!1855549) (= lambda!208486 lambda!208465))))

(declare-fun bs!1090134 () Bool)

(assert (= bs!1090134 (and b!4694758 d!1492345)))

(assert (=> bs!1090134 (= (= lt!1855095 lt!1855641) (= lambda!208486 lambda!208481))))

(declare-fun bs!1090135 () Bool)

(assert (= bs!1090135 (and b!4694758 d!1492333)))

(assert (=> bs!1090135 (= (= lt!1855095 lt!1855616) (= lambda!208486 lambda!208474))))

(declare-fun bs!1090136 () Bool)

(assert (= bs!1090136 (and b!4694758 b!4694682)))

(assert (=> bs!1090136 (= lambda!208486 lambda!208467)))

(assert (=> bs!1090132 (= lambda!208486 lambda!208472)))

(declare-fun bs!1090137 () Bool)

(assert (= bs!1090137 (and b!4694758 b!4694684)))

(assert (=> bs!1090137 (= (= lt!1855095 lt!1855571) (= lambda!208486 lambda!208469))))

(assert (=> bs!1090137 (= lambda!208486 lambda!208468)))

(declare-fun bs!1090138 () Bool)

(assert (= bs!1090138 (and b!4694758 b!4694729)))

(assert (=> bs!1090138 (= (= lt!1855095 lt!1855648) (= lambda!208486 lambda!208480))))

(declare-fun bs!1090139 () Bool)

(assert (= bs!1090139 (and b!4694758 d!1492249)))

(assert (=> bs!1090139 (not (= lambda!208486 lambda!208402))))

(declare-fun bs!1090140 () Bool)

(assert (= bs!1090140 (and b!4694758 b!4694716)))

(assert (=> bs!1090140 (= lambda!208486 lambda!208471)))

(declare-fun bs!1090141 () Bool)

(assert (= bs!1090141 (and b!4694758 d!1492265)))

(assert (=> bs!1090141 (= (= lt!1855095 lt!1855542) (= lambda!208486 lambda!208466))))

(assert (=> bs!1090133 (= lambda!208486 lambda!208464)))

(declare-fun bs!1090142 () Bool)

(assert (= bs!1090142 (and b!4694758 d!1492323)))

(assert (=> bs!1090142 (= (= lt!1855095 lt!1855564) (= lambda!208486 lambda!208470))))

(declare-fun bs!1090143 () Bool)

(assert (= bs!1090143 (and b!4694758 b!4694664)))

(assert (=> bs!1090143 (= lambda!208486 lambda!208462)))

(declare-fun bs!1090144 () Bool)

(assert (= bs!1090144 (and b!4694758 b!4694727)))

(assert (=> bs!1090144 (= lambda!208486 lambda!208478)))

(assert (=> bs!1090138 (= lambda!208486 lambda!208479)))

(declare-fun bs!1090145 () Bool)

(assert (= bs!1090145 (and b!4694758 d!1492353)))

(assert (=> bs!1090145 (not (= lambda!208486 lambda!208485))))

(assert (=> b!4694758 true))

(declare-fun bs!1090146 () Bool)

(declare-fun b!4694760 () Bool)

(assert (= bs!1090146 (and b!4694760 b!4694718)))

(declare-fun lambda!208487 () Int)

(assert (=> bs!1090146 (= (= lt!1855095 lt!1855623) (= lambda!208487 lambda!208473))))

(declare-fun bs!1090147 () Bool)

(assert (= bs!1090147 (and b!4694760 d!1492345)))

(assert (=> bs!1090147 (= (= lt!1855095 lt!1855641) (= lambda!208487 lambda!208481))))

(declare-fun bs!1090148 () Bool)

(assert (= bs!1090148 (and b!4694760 d!1492333)))

(assert (=> bs!1090148 (= (= lt!1855095 lt!1855616) (= lambda!208487 lambda!208474))))

(declare-fun bs!1090149 () Bool)

(assert (= bs!1090149 (and b!4694760 b!4694682)))

(assert (=> bs!1090149 (= lambda!208487 lambda!208467)))

(assert (=> bs!1090146 (= lambda!208487 lambda!208472)))

(declare-fun bs!1090150 () Bool)

(assert (= bs!1090150 (and b!4694760 b!4694684)))

(assert (=> bs!1090150 (= (= lt!1855095 lt!1855571) (= lambda!208487 lambda!208469))))

(assert (=> bs!1090150 (= lambda!208487 lambda!208468)))

(declare-fun bs!1090151 () Bool)

(assert (= bs!1090151 (and b!4694760 b!4694729)))

(assert (=> bs!1090151 (= (= lt!1855095 lt!1855648) (= lambda!208487 lambda!208480))))

(declare-fun bs!1090152 () Bool)

(assert (= bs!1090152 (and b!4694760 d!1492249)))

(assert (=> bs!1090152 (not (= lambda!208487 lambda!208402))))

(declare-fun bs!1090153 () Bool)

(assert (= bs!1090153 (and b!4694760 b!4694716)))

(assert (=> bs!1090153 (= lambda!208487 lambda!208471)))

(declare-fun bs!1090154 () Bool)

(assert (= bs!1090154 (and b!4694760 d!1492265)))

(assert (=> bs!1090154 (= (= lt!1855095 lt!1855542) (= lambda!208487 lambda!208466))))

(declare-fun bs!1090155 () Bool)

(assert (= bs!1090155 (and b!4694760 b!4694666)))

(assert (=> bs!1090155 (= (= lt!1855095 lt!1855549) (= lambda!208487 lambda!208465))))

(declare-fun bs!1090156 () Bool)

(assert (= bs!1090156 (and b!4694760 b!4694758)))

(assert (=> bs!1090156 (= lambda!208487 lambda!208486)))

(assert (=> bs!1090155 (= lambda!208487 lambda!208464)))

(declare-fun bs!1090157 () Bool)

(assert (= bs!1090157 (and b!4694760 d!1492323)))

(assert (=> bs!1090157 (= (= lt!1855095 lt!1855564) (= lambda!208487 lambda!208470))))

(declare-fun bs!1090158 () Bool)

(assert (= bs!1090158 (and b!4694760 b!4694664)))

(assert (=> bs!1090158 (= lambda!208487 lambda!208462)))

(declare-fun bs!1090159 () Bool)

(assert (= bs!1090159 (and b!4694760 b!4694727)))

(assert (=> bs!1090159 (= lambda!208487 lambda!208478)))

(assert (=> bs!1090151 (= lambda!208487 lambda!208479)))

(declare-fun bs!1090160 () Bool)

(assert (= bs!1090160 (and b!4694760 d!1492353)))

(assert (=> bs!1090160 (not (= lambda!208487 lambda!208485))))

(assert (=> b!4694760 true))

(declare-fun lambda!208488 () Int)

(declare-fun lt!1855681 () ListMap!5001)

(assert (=> bs!1090146 (= (= lt!1855681 lt!1855623) (= lambda!208488 lambda!208473))))

(assert (=> bs!1090147 (= (= lt!1855681 lt!1855641) (= lambda!208488 lambda!208481))))

(assert (=> bs!1090148 (= (= lt!1855681 lt!1855616) (= lambda!208488 lambda!208474))))

(assert (=> bs!1090149 (= (= lt!1855681 lt!1855095) (= lambda!208488 lambda!208467))))

(assert (=> bs!1090146 (= (= lt!1855681 lt!1855095) (= lambda!208488 lambda!208472))))

(assert (=> b!4694760 (= (= lt!1855681 lt!1855095) (= lambda!208488 lambda!208487))))

(assert (=> bs!1090150 (= (= lt!1855681 lt!1855571) (= lambda!208488 lambda!208469))))

(assert (=> bs!1090150 (= (= lt!1855681 lt!1855095) (= lambda!208488 lambda!208468))))

(assert (=> bs!1090151 (= (= lt!1855681 lt!1855648) (= lambda!208488 lambda!208480))))

(assert (=> bs!1090152 (not (= lambda!208488 lambda!208402))))

(assert (=> bs!1090153 (= (= lt!1855681 lt!1855095) (= lambda!208488 lambda!208471))))

(assert (=> bs!1090154 (= (= lt!1855681 lt!1855542) (= lambda!208488 lambda!208466))))

(assert (=> bs!1090155 (= (= lt!1855681 lt!1855549) (= lambda!208488 lambda!208465))))

(assert (=> bs!1090156 (= (= lt!1855681 lt!1855095) (= lambda!208488 lambda!208486))))

(assert (=> bs!1090155 (= (= lt!1855681 lt!1855095) (= lambda!208488 lambda!208464))))

(assert (=> bs!1090157 (= (= lt!1855681 lt!1855564) (= lambda!208488 lambda!208470))))

(assert (=> bs!1090158 (= (= lt!1855681 lt!1855095) (= lambda!208488 lambda!208462))))

(assert (=> bs!1090159 (= (= lt!1855681 lt!1855095) (= lambda!208488 lambda!208478))))

(assert (=> bs!1090151 (= (= lt!1855681 lt!1855095) (= lambda!208488 lambda!208479))))

(assert (=> bs!1090160 (not (= lambda!208488 lambda!208485))))

(assert (=> b!4694760 true))

(declare-fun bs!1090161 () Bool)

(declare-fun d!1492375 () Bool)

(assert (= bs!1090161 (and d!1492375 b!4694718)))

(declare-fun lt!1855674 () ListMap!5001)

(declare-fun lambda!208489 () Int)

(assert (=> bs!1090161 (= (= lt!1855674 lt!1855623) (= lambda!208489 lambda!208473))))

(declare-fun bs!1090162 () Bool)

(assert (= bs!1090162 (and d!1492375 d!1492345)))

(assert (=> bs!1090162 (= (= lt!1855674 lt!1855641) (= lambda!208489 lambda!208481))))

(declare-fun bs!1090163 () Bool)

(assert (= bs!1090163 (and d!1492375 d!1492333)))

(assert (=> bs!1090163 (= (= lt!1855674 lt!1855616) (= lambda!208489 lambda!208474))))

(declare-fun bs!1090164 () Bool)

(assert (= bs!1090164 (and d!1492375 b!4694682)))

(assert (=> bs!1090164 (= (= lt!1855674 lt!1855095) (= lambda!208489 lambda!208467))))

(declare-fun bs!1090165 () Bool)

(assert (= bs!1090165 (and d!1492375 b!4694760)))

(assert (=> bs!1090165 (= (= lt!1855674 lt!1855095) (= lambda!208489 lambda!208487))))

(declare-fun bs!1090166 () Bool)

(assert (= bs!1090166 (and d!1492375 b!4694684)))

(assert (=> bs!1090166 (= (= lt!1855674 lt!1855571) (= lambda!208489 lambda!208469))))

(assert (=> bs!1090166 (= (= lt!1855674 lt!1855095) (= lambda!208489 lambda!208468))))

(declare-fun bs!1090167 () Bool)

(assert (= bs!1090167 (and d!1492375 b!4694729)))

(assert (=> bs!1090167 (= (= lt!1855674 lt!1855648) (= lambda!208489 lambda!208480))))

(declare-fun bs!1090168 () Bool)

(assert (= bs!1090168 (and d!1492375 d!1492249)))

(assert (=> bs!1090168 (not (= lambda!208489 lambda!208402))))

(declare-fun bs!1090169 () Bool)

(assert (= bs!1090169 (and d!1492375 b!4694716)))

(assert (=> bs!1090169 (= (= lt!1855674 lt!1855095) (= lambda!208489 lambda!208471))))

(declare-fun bs!1090170 () Bool)

(assert (= bs!1090170 (and d!1492375 d!1492265)))

(assert (=> bs!1090170 (= (= lt!1855674 lt!1855542) (= lambda!208489 lambda!208466))))

(declare-fun bs!1090171 () Bool)

(assert (= bs!1090171 (and d!1492375 b!4694666)))

(assert (=> bs!1090171 (= (= lt!1855674 lt!1855549) (= lambda!208489 lambda!208465))))

(declare-fun bs!1090172 () Bool)

(assert (= bs!1090172 (and d!1492375 b!4694758)))

(assert (=> bs!1090172 (= (= lt!1855674 lt!1855095) (= lambda!208489 lambda!208486))))

(assert (=> bs!1090171 (= (= lt!1855674 lt!1855095) (= lambda!208489 lambda!208464))))

(declare-fun bs!1090173 () Bool)

(assert (= bs!1090173 (and d!1492375 d!1492323)))

(assert (=> bs!1090173 (= (= lt!1855674 lt!1855564) (= lambda!208489 lambda!208470))))

(declare-fun bs!1090174 () Bool)

(assert (= bs!1090174 (and d!1492375 b!4694664)))

(assert (=> bs!1090174 (= (= lt!1855674 lt!1855095) (= lambda!208489 lambda!208462))))

(declare-fun bs!1090175 () Bool)

(assert (= bs!1090175 (and d!1492375 b!4694727)))

(assert (=> bs!1090175 (= (= lt!1855674 lt!1855095) (= lambda!208489 lambda!208478))))

(assert (=> bs!1090167 (= (= lt!1855674 lt!1855095) (= lambda!208489 lambda!208479))))

(declare-fun bs!1090176 () Bool)

(assert (= bs!1090176 (and d!1492375 d!1492353)))

(assert (=> bs!1090176 (not (= lambda!208489 lambda!208485))))

(assert (=> bs!1090165 (= (= lt!1855674 lt!1855681) (= lambda!208489 lambda!208488))))

(assert (=> bs!1090161 (= (= lt!1855674 lt!1855095) (= lambda!208489 lambda!208472))))

(assert (=> d!1492375 true))

(declare-fun b!4694757 () Bool)

(declare-fun res!1981002 () Bool)

(declare-fun e!2928719 () Bool)

(assert (=> b!4694757 (=> (not res!1981002) (not e!2928719))))

(assert (=> b!4694757 (= res!1981002 (forall!11357 (toList!5638 lt!1855095) lambda!208489))))

(declare-fun e!2928720 () ListMap!5001)

(assert (=> b!4694758 (= e!2928720 lt!1855095)))

(declare-fun lt!1855688 () Unit!124905)

(declare-fun call!328154 () Unit!124905)

(assert (=> b!4694758 (= lt!1855688 call!328154)))

(declare-fun call!328156 () Bool)

(assert (=> b!4694758 call!328156))

(declare-fun lt!1855679 () Unit!124905)

(assert (=> b!4694758 (= lt!1855679 lt!1855688)))

(declare-fun call!328155 () Bool)

(assert (=> b!4694758 call!328155))

(declare-fun lt!1855670 () Unit!124905)

(declare-fun Unit!125014 () Unit!124905)

(assert (=> b!4694758 (= lt!1855670 Unit!125014)))

(declare-fun bm!328149 () Bool)

(assert (=> bm!328149 (= call!328154 (lemmaContainsAllItsOwnKeys!712 lt!1855095))))

(declare-fun b!4694759 () Bool)

(declare-fun e!2928721 () Bool)

(assert (=> b!4694759 (= e!2928721 (forall!11357 (toList!5638 lt!1855095) lambda!208488))))

(assert (=> b!4694760 (= e!2928720 lt!1855681)))

(declare-fun lt!1855672 () ListMap!5001)

(assert (=> b!4694760 (= lt!1855672 (+!2158 lt!1855095 (h!58722 (_2!30240 (h!58723 (toList!5637 lm!2023))))))))

(assert (=> b!4694760 (= lt!1855681 (addToMapMapFromBucket!1306 (t!359777 (_2!30240 (h!58723 (toList!5637 lm!2023)))) (+!2158 lt!1855095 (h!58722 (_2!30240 (h!58723 (toList!5637 lm!2023)))))))))

(declare-fun lt!1855677 () Unit!124905)

(assert (=> b!4694760 (= lt!1855677 call!328154)))

(assert (=> b!4694760 (forall!11357 (toList!5638 lt!1855095) lambda!208487)))

(declare-fun lt!1855678 () Unit!124905)

(assert (=> b!4694760 (= lt!1855678 lt!1855677)))

(assert (=> b!4694760 (forall!11357 (toList!5638 lt!1855672) lambda!208488)))

(declare-fun lt!1855686 () Unit!124905)

(declare-fun Unit!125015 () Unit!124905)

(assert (=> b!4694760 (= lt!1855686 Unit!125015)))

(assert (=> b!4694760 (forall!11357 (t!359777 (_2!30240 (h!58723 (toList!5637 lm!2023)))) lambda!208488)))

(declare-fun lt!1855675 () Unit!124905)

(declare-fun Unit!125016 () Unit!124905)

(assert (=> b!4694760 (= lt!1855675 Unit!125016)))

(declare-fun lt!1855680 () Unit!124905)

(declare-fun Unit!125017 () Unit!124905)

(assert (=> b!4694760 (= lt!1855680 Unit!125017)))

(declare-fun lt!1855684 () Unit!124905)

(assert (=> b!4694760 (= lt!1855684 (forallContained!3464 (toList!5638 lt!1855672) lambda!208488 (h!58722 (_2!30240 (h!58723 (toList!5637 lm!2023))))))))

(assert (=> b!4694760 (contains!15696 lt!1855672 (_1!30239 (h!58722 (_2!30240 (h!58723 (toList!5637 lm!2023))))))))

(declare-fun lt!1855683 () Unit!124905)

(declare-fun Unit!125018 () Unit!124905)

(assert (=> b!4694760 (= lt!1855683 Unit!125018)))

(assert (=> b!4694760 (contains!15696 lt!1855681 (_1!30239 (h!58722 (_2!30240 (h!58723 (toList!5637 lm!2023))))))))

(declare-fun lt!1855689 () Unit!124905)

(declare-fun Unit!125019 () Unit!124905)

(assert (=> b!4694760 (= lt!1855689 Unit!125019)))

(assert (=> b!4694760 call!328156))

(declare-fun lt!1855687 () Unit!124905)

(declare-fun Unit!125020 () Unit!124905)

(assert (=> b!4694760 (= lt!1855687 Unit!125020)))

(assert (=> b!4694760 (forall!11357 (toList!5638 lt!1855672) lambda!208488)))

(declare-fun lt!1855690 () Unit!124905)

(declare-fun Unit!125021 () Unit!124905)

(assert (=> b!4694760 (= lt!1855690 Unit!125021)))

(declare-fun lt!1855685 () Unit!124905)

(declare-fun Unit!125022 () Unit!124905)

(assert (=> b!4694760 (= lt!1855685 Unit!125022)))

(declare-fun lt!1855682 () Unit!124905)

(assert (=> b!4694760 (= lt!1855682 (addForallContainsKeyThenBeforeAdding!711 lt!1855095 lt!1855681 (_1!30239 (h!58722 (_2!30240 (h!58723 (toList!5637 lm!2023))))) (_2!30239 (h!58722 (_2!30240 (h!58723 (toList!5637 lm!2023)))))))))

(assert (=> b!4694760 (forall!11357 (toList!5638 lt!1855095) lambda!208488)))

(declare-fun lt!1855673 () Unit!124905)

(assert (=> b!4694760 (= lt!1855673 lt!1855682)))

(assert (=> b!4694760 call!328155))

(declare-fun lt!1855671 () Unit!124905)

(declare-fun Unit!125023 () Unit!124905)

(assert (=> b!4694760 (= lt!1855671 Unit!125023)))

(declare-fun res!1981004 () Bool)

(assert (=> b!4694760 (= res!1981004 (forall!11357 (_2!30240 (h!58723 (toList!5637 lm!2023))) lambda!208488))))

(assert (=> b!4694760 (=> (not res!1981004) (not e!2928721))))

(assert (=> b!4694760 e!2928721))

(declare-fun lt!1855676 () Unit!124905)

(declare-fun Unit!125024 () Unit!124905)

(assert (=> b!4694760 (= lt!1855676 Unit!125024)))

(declare-fun c!802612 () Bool)

(declare-fun bm!328150 () Bool)

(assert (=> bm!328150 (= call!328155 (forall!11357 (toList!5638 lt!1855095) (ite c!802612 lambda!208486 lambda!208488)))))

(declare-fun b!4694761 () Bool)

(assert (=> b!4694761 (= e!2928719 (invariantList!1424 (toList!5638 lt!1855674)))))

(declare-fun bm!328151 () Bool)

(assert (=> bm!328151 (= call!328156 (forall!11357 (ite c!802612 (toList!5638 lt!1855095) (_2!30240 (h!58723 (toList!5637 lm!2023)))) (ite c!802612 lambda!208486 lambda!208488)))))

(assert (=> d!1492375 e!2928719))

(declare-fun res!1981003 () Bool)

(assert (=> d!1492375 (=> (not res!1981003) (not e!2928719))))

(assert (=> d!1492375 (= res!1981003 (forall!11357 (_2!30240 (h!58723 (toList!5637 lm!2023))) lambda!208489))))

(assert (=> d!1492375 (= lt!1855674 e!2928720)))

(assert (=> d!1492375 (= c!802612 ((_ is Nil!52463) (_2!30240 (h!58723 (toList!5637 lm!2023)))))))

(assert (=> d!1492375 (noDuplicateKeys!1874 (_2!30240 (h!58723 (toList!5637 lm!2023))))))

(assert (=> d!1492375 (= (addToMapMapFromBucket!1306 (_2!30240 (h!58723 (toList!5637 lm!2023))) lt!1855095) lt!1855674)))

(assert (= (and d!1492375 c!802612) b!4694758))

(assert (= (and d!1492375 (not c!802612)) b!4694760))

(assert (= (and b!4694760 res!1981004) b!4694759))

(assert (= (or b!4694758 b!4694760) bm!328149))

(assert (= (or b!4694758 b!4694760) bm!328151))

(assert (= (or b!4694758 b!4694760) bm!328150))

(assert (= (and d!1492375 res!1981003) b!4694757))

(assert (= (and b!4694757 res!1981002) b!4694761))

(declare-fun m!5601835 () Bool)

(assert (=> b!4694759 m!5601835))

(assert (=> bm!328149 m!5601591))

(declare-fun m!5601837 () Bool)

(assert (=> bm!328150 m!5601837))

(declare-fun m!5601839 () Bool)

(assert (=> b!4694757 m!5601839))

(declare-fun m!5601841 () Bool)

(assert (=> b!4694761 m!5601841))

(declare-fun m!5601843 () Bool)

(assert (=> b!4694760 m!5601843))

(declare-fun m!5601845 () Bool)

(assert (=> b!4694760 m!5601845))

(declare-fun m!5601847 () Bool)

(assert (=> b!4694760 m!5601847))

(assert (=> b!4694760 m!5601845))

(declare-fun m!5601849 () Bool)

(assert (=> b!4694760 m!5601849))

(declare-fun m!5601851 () Bool)

(assert (=> b!4694760 m!5601851))

(assert (=> b!4694760 m!5601835))

(declare-fun m!5601853 () Bool)

(assert (=> b!4694760 m!5601853))

(declare-fun m!5601855 () Bool)

(assert (=> b!4694760 m!5601855))

(declare-fun m!5601857 () Bool)

(assert (=> b!4694760 m!5601857))

(declare-fun m!5601859 () Bool)

(assert (=> b!4694760 m!5601859))

(assert (=> b!4694760 m!5601849))

(declare-fun m!5601861 () Bool)

(assert (=> b!4694760 m!5601861))

(declare-fun m!5601863 () Bool)

(assert (=> bm!328151 m!5601863))

(declare-fun m!5601865 () Bool)

(assert (=> d!1492375 m!5601865))

(declare-fun m!5601867 () Bool)

(assert (=> d!1492375 m!5601867))

(assert (=> b!4694320 d!1492375))

(declare-fun bs!1090177 () Bool)

(declare-fun d!1492377 () Bool)

(assert (= bs!1090177 (and d!1492377 start!475320)))

(declare-fun lambda!208490 () Int)

(assert (=> bs!1090177 (= lambda!208490 lambda!208329)))

(declare-fun bs!1090178 () Bool)

(assert (= bs!1090178 (and d!1492377 d!1492349)))

(assert (=> bs!1090178 (= lambda!208490 lambda!208484)))

(declare-fun bs!1090179 () Bool)

(assert (= bs!1090179 (and d!1492377 d!1492143)))

(assert (=> bs!1090179 (= lambda!208490 lambda!208333)))

(declare-fun bs!1090180 () Bool)

(assert (= bs!1090180 (and d!1492377 d!1492341)))

(assert (=> bs!1090180 (= lambda!208490 lambda!208477)))

(declare-fun bs!1090181 () Bool)

(assert (= bs!1090181 (and d!1492377 d!1492337)))

(assert (=> bs!1090181 (= lambda!208490 lambda!208475)))

(declare-fun bs!1090182 () Bool)

(assert (= bs!1090182 (and d!1492377 d!1492251)))

(assert (=> bs!1090182 (not (= lambda!208490 lambda!208405))))

(declare-fun bs!1090183 () Bool)

(assert (= bs!1090183 (and d!1492377 d!1492147)))

(assert (=> bs!1090183 (= lambda!208490 lambda!208334)))

(declare-fun bs!1090184 () Bool)

(assert (= bs!1090184 (and d!1492377 d!1492171)))

(assert (=> bs!1090184 (= lambda!208490 lambda!208395)))

(declare-fun bs!1090185 () Bool)

(assert (= bs!1090185 (and d!1492377 d!1492149)))

(assert (=> bs!1090185 (= lambda!208490 lambda!208337)))

(declare-fun bs!1090186 () Bool)

(assert (= bs!1090186 (and d!1492377 d!1492125)))

(assert (=> bs!1090186 (= lambda!208490 lambda!208332)))

(declare-fun bs!1090187 () Bool)

(assert (= bs!1090187 (and d!1492377 d!1492161)))

(assert (=> bs!1090187 (= lambda!208490 lambda!208372)))

(declare-fun bs!1090188 () Bool)

(assert (= bs!1090188 (and d!1492377 d!1492339)))

(assert (=> bs!1090188 (= lambda!208490 lambda!208476)))

(declare-fun lt!1855691 () ListMap!5001)

(assert (=> d!1492377 (invariantList!1424 (toList!5638 lt!1855691))))

(declare-fun e!2928722 () ListMap!5001)

(assert (=> d!1492377 (= lt!1855691 e!2928722)))

(declare-fun c!802613 () Bool)

(assert (=> d!1492377 (= c!802613 ((_ is Cons!52464) (t!359778 (toList!5637 lm!2023))))))

(assert (=> d!1492377 (forall!11355 (t!359778 (toList!5637 lm!2023)) lambda!208490)))

(assert (=> d!1492377 (= (extractMap!1900 (t!359778 (toList!5637 lm!2023))) lt!1855691)))

(declare-fun b!4694762 () Bool)

(assert (=> b!4694762 (= e!2928722 (addToMapMapFromBucket!1306 (_2!30240 (h!58723 (t!359778 (toList!5637 lm!2023)))) (extractMap!1900 (t!359778 (t!359778 (toList!5637 lm!2023))))))))

(declare-fun b!4694763 () Bool)

(assert (=> b!4694763 (= e!2928722 (ListMap!5002 Nil!52463))))

(assert (= (and d!1492377 c!802613) b!4694762))

(assert (= (and d!1492377 (not c!802613)) b!4694763))

(declare-fun m!5601869 () Bool)

(assert (=> d!1492377 m!5601869))

(declare-fun m!5601871 () Bool)

(assert (=> d!1492377 m!5601871))

(declare-fun m!5601873 () Bool)

(assert (=> b!4694762 m!5601873))

(assert (=> b!4694762 m!5601873))

(declare-fun m!5601875 () Bool)

(assert (=> b!4694762 m!5601875))

(assert (=> b!4694320 d!1492377))

(declare-fun d!1492379 () Bool)

(assert (=> d!1492379 (= (tail!8648 lm!2023) (ListLongMap!4168 (tail!8647 (toList!5637 lm!2023))))))

(declare-fun bs!1090189 () Bool)

(assert (= bs!1090189 d!1492379))

(declare-fun m!5601877 () Bool)

(assert (=> bs!1090189 m!5601877))

(assert (=> b!4694320 d!1492379))

(declare-fun b!4694764 () Bool)

(declare-fun e!2928727 () Unit!124905)

(declare-fun e!2928725 () Unit!124905)

(assert (=> b!4694764 (= e!2928727 e!2928725)))

(declare-fun c!802616 () Bool)

(declare-fun call!328157 () Bool)

(assert (=> b!4694764 (= c!802616 call!328157)))

(declare-fun b!4694765 () Bool)

(declare-fun e!2928726 () Bool)

(assert (=> b!4694765 (= e!2928726 (contains!15702 (keys!18747 lt!1855085) key!4653))))

(declare-fun d!1492381 () Bool)

(declare-fun e!2928724 () Bool)

(assert (=> d!1492381 e!2928724))

(declare-fun res!1981007 () Bool)

(assert (=> d!1492381 (=> res!1981007 e!2928724)))

(declare-fun e!2928728 () Bool)

(assert (=> d!1492381 (= res!1981007 e!2928728)))

(declare-fun res!1981006 () Bool)

(assert (=> d!1492381 (=> (not res!1981006) (not e!2928728))))

(declare-fun lt!1855692 () Bool)

(assert (=> d!1492381 (= res!1981006 (not lt!1855692))))

(declare-fun lt!1855693 () Bool)

(assert (=> d!1492381 (= lt!1855692 lt!1855693)))

(declare-fun lt!1855696 () Unit!124905)

(assert (=> d!1492381 (= lt!1855696 e!2928727)))

(declare-fun c!802615 () Bool)

(assert (=> d!1492381 (= c!802615 lt!1855693)))

(assert (=> d!1492381 (= lt!1855693 (containsKey!3105 (toList!5638 lt!1855085) key!4653))))

(assert (=> d!1492381 (= (contains!15696 lt!1855085 key!4653) lt!1855692)))

(declare-fun b!4694766 () Bool)

(assert (=> b!4694766 (= e!2928724 e!2928726)))

(declare-fun res!1981005 () Bool)

(assert (=> b!4694766 (=> (not res!1981005) (not e!2928726))))

(assert (=> b!4694766 (= res!1981005 (isDefined!9384 (getValueByKey!1809 (toList!5638 lt!1855085) key!4653)))))

(declare-fun bm!328152 () Bool)

(declare-fun e!2928723 () List!52590)

(assert (=> bm!328152 (= call!328157 (contains!15702 e!2928723 key!4653))))

(declare-fun c!802614 () Bool)

(assert (=> bm!328152 (= c!802614 c!802615)))

(declare-fun b!4694767 () Bool)

(assert (=> b!4694767 (= e!2928723 (getKeysList!864 (toList!5638 lt!1855085)))))

(declare-fun b!4694768 () Bool)

(declare-fun Unit!125025 () Unit!124905)

(assert (=> b!4694768 (= e!2928725 Unit!125025)))

(declare-fun b!4694769 () Bool)

(assert (=> b!4694769 (= e!2928728 (not (contains!15702 (keys!18747 lt!1855085) key!4653)))))

(declare-fun b!4694770 () Bool)

(assert (=> b!4694770 false))

(declare-fun lt!1855694 () Unit!124905)

(declare-fun lt!1855699 () Unit!124905)

(assert (=> b!4694770 (= lt!1855694 lt!1855699)))

(assert (=> b!4694770 (containsKey!3105 (toList!5638 lt!1855085) key!4653)))

(assert (=> b!4694770 (= lt!1855699 (lemmaInGetKeysListThenContainsKey!863 (toList!5638 lt!1855085) key!4653))))

(declare-fun Unit!125026 () Unit!124905)

(assert (=> b!4694770 (= e!2928725 Unit!125026)))

(declare-fun b!4694771 () Bool)

(declare-fun lt!1855697 () Unit!124905)

(assert (=> b!4694771 (= e!2928727 lt!1855697)))

(declare-fun lt!1855695 () Unit!124905)

(assert (=> b!4694771 (= lt!1855695 (lemmaContainsKeyImpliesGetValueByKeyDefined!1701 (toList!5638 lt!1855085) key!4653))))

(assert (=> b!4694771 (isDefined!9384 (getValueByKey!1809 (toList!5638 lt!1855085) key!4653))))

(declare-fun lt!1855698 () Unit!124905)

(assert (=> b!4694771 (= lt!1855698 lt!1855695)))

(assert (=> b!4694771 (= lt!1855697 (lemmaInListThenGetKeysListContains!859 (toList!5638 lt!1855085) key!4653))))

(assert (=> b!4694771 call!328157))

(declare-fun b!4694772 () Bool)

(assert (=> b!4694772 (= e!2928723 (keys!18747 lt!1855085))))

(assert (= (and d!1492381 c!802615) b!4694771))

(assert (= (and d!1492381 (not c!802615)) b!4694764))

(assert (= (and b!4694764 c!802616) b!4694770))

(assert (= (and b!4694764 (not c!802616)) b!4694768))

(assert (= (or b!4694771 b!4694764) bm!328152))

(assert (= (and bm!328152 c!802614) b!4694767))

(assert (= (and bm!328152 (not c!802614)) b!4694772))

(assert (= (and d!1492381 res!1981006) b!4694769))

(assert (= (and d!1492381 (not res!1981007)) b!4694766))

(assert (= (and b!4694766 res!1981005) b!4694765))

(declare-fun m!5601879 () Bool)

(assert (=> d!1492381 m!5601879))

(declare-fun m!5601881 () Bool)

(assert (=> b!4694769 m!5601881))

(assert (=> b!4694769 m!5601881))

(declare-fun m!5601883 () Bool)

(assert (=> b!4694769 m!5601883))

(declare-fun m!5601885 () Bool)

(assert (=> b!4694771 m!5601885))

(declare-fun m!5601887 () Bool)

(assert (=> b!4694771 m!5601887))

(assert (=> b!4694771 m!5601887))

(declare-fun m!5601889 () Bool)

(assert (=> b!4694771 m!5601889))

(declare-fun m!5601891 () Bool)

(assert (=> b!4694771 m!5601891))

(declare-fun m!5601893 () Bool)

(assert (=> bm!328152 m!5601893))

(assert (=> b!4694766 m!5601887))

(assert (=> b!4694766 m!5601887))

(assert (=> b!4694766 m!5601889))

(assert (=> b!4694765 m!5601881))

(assert (=> b!4694765 m!5601881))

(assert (=> b!4694765 m!5601883))

(declare-fun m!5601895 () Bool)

(assert (=> b!4694767 m!5601895))

(assert (=> b!4694770 m!5601879))

(declare-fun m!5601897 () Bool)

(assert (=> b!4694770 m!5601897))

(assert (=> b!4694772 m!5601881))

(assert (=> b!4694310 d!1492381))

(declare-fun bs!1090190 () Bool)

(declare-fun d!1492383 () Bool)

(assert (= bs!1090190 (and d!1492383 start!475320)))

(declare-fun lambda!208491 () Int)

(assert (=> bs!1090190 (= lambda!208491 lambda!208329)))

(declare-fun bs!1090191 () Bool)

(assert (= bs!1090191 (and d!1492383 d!1492349)))

(assert (=> bs!1090191 (= lambda!208491 lambda!208484)))

(declare-fun bs!1090192 () Bool)

(assert (= bs!1090192 (and d!1492383 d!1492143)))

(assert (=> bs!1090192 (= lambda!208491 lambda!208333)))

(declare-fun bs!1090193 () Bool)

(assert (= bs!1090193 (and d!1492383 d!1492337)))

(assert (=> bs!1090193 (= lambda!208491 lambda!208475)))

(declare-fun bs!1090194 () Bool)

(assert (= bs!1090194 (and d!1492383 d!1492251)))

(assert (=> bs!1090194 (not (= lambda!208491 lambda!208405))))

(declare-fun bs!1090195 () Bool)

(assert (= bs!1090195 (and d!1492383 d!1492147)))

(assert (=> bs!1090195 (= lambda!208491 lambda!208334)))

(declare-fun bs!1090196 () Bool)

(assert (= bs!1090196 (and d!1492383 d!1492171)))

(assert (=> bs!1090196 (= lambda!208491 lambda!208395)))

(declare-fun bs!1090197 () Bool)

(assert (= bs!1090197 (and d!1492383 d!1492149)))

(assert (=> bs!1090197 (= lambda!208491 lambda!208337)))

(declare-fun bs!1090198 () Bool)

(assert (= bs!1090198 (and d!1492383 d!1492125)))

(assert (=> bs!1090198 (= lambda!208491 lambda!208332)))

(declare-fun bs!1090199 () Bool)

(assert (= bs!1090199 (and d!1492383 d!1492341)))

(assert (=> bs!1090199 (= lambda!208491 lambda!208477)))

(declare-fun bs!1090200 () Bool)

(assert (= bs!1090200 (and d!1492383 d!1492377)))

(assert (=> bs!1090200 (= lambda!208491 lambda!208490)))

(declare-fun bs!1090201 () Bool)

(assert (= bs!1090201 (and d!1492383 d!1492161)))

(assert (=> bs!1090201 (= lambda!208491 lambda!208372)))

(declare-fun bs!1090202 () Bool)

(assert (= bs!1090202 (and d!1492383 d!1492339)))

(assert (=> bs!1090202 (= lambda!208491 lambda!208476)))

(declare-fun lt!1855700 () ListMap!5001)

(assert (=> d!1492383 (invariantList!1424 (toList!5638 lt!1855700))))

(declare-fun e!2928729 () ListMap!5001)

(assert (=> d!1492383 (= lt!1855700 e!2928729)))

(declare-fun c!802617 () Bool)

(assert (=> d!1492383 (= c!802617 ((_ is Cons!52464) (toList!5637 lm!2023)))))

(assert (=> d!1492383 (forall!11355 (toList!5637 lm!2023) lambda!208491)))

(assert (=> d!1492383 (= (extractMap!1900 (toList!5637 lm!2023)) lt!1855700)))

(declare-fun b!4694773 () Bool)

(assert (=> b!4694773 (= e!2928729 (addToMapMapFromBucket!1306 (_2!30240 (h!58723 (toList!5637 lm!2023))) (extractMap!1900 (t!359778 (toList!5637 lm!2023)))))))

(declare-fun b!4694774 () Bool)

(assert (=> b!4694774 (= e!2928729 (ListMap!5002 Nil!52463))))

(assert (= (and d!1492383 c!802617) b!4694773))

(assert (= (and d!1492383 (not c!802617)) b!4694774))

(declare-fun m!5601899 () Bool)

(assert (=> d!1492383 m!5601899))

(declare-fun m!5601901 () Bool)

(assert (=> d!1492383 m!5601901))

(assert (=> b!4694773 m!5600685))

(assert (=> b!4694773 m!5600685))

(declare-fun m!5601903 () Bool)

(assert (=> b!4694773 m!5601903))

(assert (=> b!4694310 d!1492383))

(declare-fun b!4694779 () Bool)

(declare-fun e!2928732 () Bool)

(declare-fun tp!1346250 () Bool)

(assert (=> b!4694779 (= e!2928732 (and tp_is_empty!30789 tp_is_empty!30791 tp!1346250))))

(assert (=> b!4694318 (= tp!1346235 e!2928732)))

(assert (= (and b!4694318 ((_ is Cons!52463) (t!359777 oldBucket!34))) b!4694779))

(declare-fun b!4694784 () Bool)

(declare-fun e!2928735 () Bool)

(declare-fun tp!1346255 () Bool)

(declare-fun tp!1346256 () Bool)

(assert (=> b!4694784 (= e!2928735 (and tp!1346255 tp!1346256))))

(assert (=> b!4694311 (= tp!1346237 e!2928735)))

(assert (= (and b!4694311 ((_ is Cons!52464) (toList!5637 lm!2023))) b!4694784))

(declare-fun tp!1346257 () Bool)

(declare-fun e!2928736 () Bool)

(declare-fun b!4694785 () Bool)

(assert (=> b!4694785 (= e!2928736 (and tp_is_empty!30789 tp_is_empty!30791 tp!1346257))))

(assert (=> b!4694309 (= tp!1346236 e!2928736)))

(assert (= (and b!4694309 ((_ is Cons!52463) (t!359777 newBucket!218))) b!4694785))

(declare-fun b_lambda!177151 () Bool)

(assert (= b_lambda!177149 (or start!475320 b_lambda!177151)))

(declare-fun bs!1090203 () Bool)

(declare-fun d!1492385 () Bool)

(assert (= bs!1090203 (and d!1492385 start!475320)))

(assert (=> bs!1090203 (= (dynLambda!21727 lambda!208329 (h!58723 (toList!5637 lm!2023))) (noDuplicateKeys!1874 (_2!30240 (h!58723 (toList!5637 lm!2023)))))))

(assert (=> bs!1090203 m!5601867))

(assert (=> b!4694745 d!1492385))

(declare-fun b_lambda!177153 () Bool)

(assert (= b_lambda!177137 (or start!475320 b_lambda!177153)))

(declare-fun bs!1090204 () Bool)

(declare-fun d!1492387 () Bool)

(assert (= bs!1090204 (and d!1492387 start!475320)))

(assert (=> bs!1090204 (= (dynLambda!21727 lambda!208329 lt!1855100) (noDuplicateKeys!1874 (_2!30240 lt!1855100)))))

(declare-fun m!5601905 () Bool)

(assert (=> bs!1090204 m!5601905))

(assert (=> d!1492165 d!1492387))

(declare-fun b_lambda!177155 () Bool)

(assert (= b_lambda!177141 (or start!475320 b_lambda!177155)))

(declare-fun bs!1090205 () Bool)

(declare-fun d!1492389 () Bool)

(assert (= bs!1090205 (and d!1492389 start!475320)))

(assert (=> bs!1090205 (= (dynLambda!21727 lambda!208329 (h!58723 lt!1855078)) (noDuplicateKeys!1874 (_2!30240 (h!58723 lt!1855078))))))

(declare-fun m!5601907 () Bool)

(assert (=> bs!1090205 m!5601907))

(assert (=> b!4694541 d!1492389))

(check-sat (not d!1492153) (not b!4694729) (not bs!1090204) (not d!1492343) (not b!4694730) (not b!4694746) (not b!4694429) (not b!4694724) (not d!1492255) (not b!4694784) (not d!1492265) (not d!1492337) (not b!4694533) (not b!4694714) (not d!1492233) (not b!4694728) (not b!4694683) (not b!4694383) (not b!4694550) (not b!4694667) (not b!4694687) (not b!4694497) (not d!1492327) (not b!4694549) (not b!4694769) (not b!4694767) (not bm!328151) (not d!1492213) (not d!1492143) (not b!4694524) (not d!1492215) (not d!1492381) (not b!4694757) (not b!4694732) (not b!4694368) (not d!1492259) (not b!4694709) (not b!4694557) (not d!1492229) (not b!4694731) (not bm!328135) (not bm!328137) tp_is_empty!30791 (not d!1492369) (not d!1492361) (not bm!328136) (not d!1492221) (not d!1492331) (not d!1492125) (not b!4694766) (not b!4694536) (not bm!328134) (not d!1492377) (not bm!328138) (not d!1492323) (not d!1492253) (not bs!1090203) (not b!4694685) (not d!1492359) (not bm!328144) (not b!4694556) (not b!4694717) (not b!4694713) (not b!4694473) (not d!1492159) (not d!1492333) (not bm!328147) (not b!4694779) (not b!4694381) (not b!4694418) (not b!4694760) (not bs!1090205) (not b!4694751) (not d!1492155) (not d!1492335) (not b!4694663) (not d!1492345) (not d!1492375) (not b!4694666) (not d!1492349) (not b!4694361) tp_is_empty!30789 (not d!1492141) (not b!4694681) (not bm!328152) (not b!4694366) (not b!4694770) (not bm!328148) (not b!4694773) (not d!1492339) (not d!1492149) (not d!1492171) (not d!1492157) (not d!1492355) (not b!4694419) (not b!4694420) (not d!1492341) (not d!1492145) (not d!1492379) (not d!1492165) (not b!4694470) (not b!4694542) (not d!1492363) (not b!4694712) (not d!1492147) (not bm!328139) (not b!4694534) (not b!4694707) (not b_lambda!177155) (not d!1492347) (not d!1492251) (not d!1492161) (not b!4694370) (not b!4694471) (not b!4694762) (not b!4694755) (not bm!328146) (not b!4694555) (not b!4694523) (not b!4694752) (not b!4694715) (not b!4694759) (not b!4694743) (not b_lambda!177151) (not b!4694771) (not d!1492261) (not b!4694765) (not b!4694785) (not b!4694417) (not b!4694718) (not b!4694722) (not b!4694558) (not b!4694535) (not b!4694772) (not b!4694720) (not b!4694749) (not b!4694414) (not b!4694365) (not bm!328143) (not b!4694472) (not b!4694711) (not b!4694665) (not d!1492223) (not d!1492151) (not d!1492325) (not d!1492353) (not d!1492243) (not bm!328142) (not b!4694686) (not d!1492383) (not bm!328149) (not b!4694719) (not b!4694684) (not b!4694514) (not b_lambda!177153) (not d!1492329) (not b!4694708) (not bm!328150) (not b!4694726) (not bm!328145) (not d!1492241) (not d!1492249) (not b!4694761))
(check-sat)
