; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!479480 () Bool)

(assert start!479480)

(declare-fun b!4715060 () Bool)

(declare-fun e!2940735 () Bool)

(declare-fun e!2940737 () Bool)

(assert (=> b!4715060 (= e!2940735 e!2940737)))

(declare-fun res!1993541 () Bool)

(assert (=> b!4715060 (=> res!1993541 e!2940737)))

(declare-datatypes ((K!14105 0))(
  ( (K!14106 (val!19555 Int)) )
))
(declare-datatypes ((V!14351 0))(
  ( (V!14352 (val!19556 Int)) )
))
(declare-datatypes ((tuple2!54322 0))(
  ( (tuple2!54323 (_1!30455 K!14105) (_2!30455 V!14351)) )
))
(declare-datatypes ((List!52869 0))(
  ( (Nil!52745) (Cons!52745 (h!59070 tuple2!54322) (t!360117 List!52869)) )
))
(declare-fun lt!1879833 () List!52869)

(declare-fun key!4653 () K!14105)

(declare-fun lt!1879823 () List!52869)

(declare-fun removePairForKey!1577 (List!52869 K!14105) List!52869)

(assert (=> b!4715060 (= res!1993541 (not (= (removePairForKey!1577 lt!1879823 key!4653) lt!1879833)))))

(declare-fun newBucket!218 () List!52869)

(declare-fun tail!8920 (List!52869) List!52869)

(assert (=> b!4715060 (= lt!1879833 (tail!8920 newBucket!218))))

(declare-fun oldBucket!34 () List!52869)

(assert (=> b!4715060 (= lt!1879823 (tail!8920 oldBucket!34))))

(declare-fun b!4715061 () Bool)

(declare-fun res!1993542 () Bool)

(declare-fun e!2940746 () Bool)

(assert (=> b!4715061 (=> (not res!1993542) (not e!2940746))))

(declare-fun hash!405 () (_ BitVec 64))

(declare-datatypes ((Hashable!6351 0))(
  ( (HashableExt!6350 (__x!32054 Int)) )
))
(declare-fun hashF!1323 () Hashable!6351)

(declare-fun allKeysSameHash!1808 (List!52869 (_ BitVec 64) Hashable!6351) Bool)

(assert (=> b!4715061 (= res!1993542 (allKeysSameHash!1808 newBucket!218 hash!405 hashF!1323))))

(declare-fun b!4715062 () Bool)

(declare-fun res!1993536 () Bool)

(assert (=> b!4715062 (=> res!1993536 e!2940737)))

(assert (=> b!4715062 (= res!1993536 (not (= (removePairForKey!1577 (t!360117 oldBucket!34) key!4653) lt!1879833)))))

(declare-fun b!4715064 () Bool)

(declare-fun e!2940742 () Bool)

(declare-fun tp!1347869 () Bool)

(assert (=> b!4715064 (= e!2940742 tp!1347869)))

(declare-fun e!2940740 () Bool)

(declare-datatypes ((ListMap!5217 0))(
  ( (ListMap!5218 (toList!5853 List!52869)) )
))
(declare-fun lt!1879843 () ListMap!5217)

(declare-fun b!4715065 () Bool)

(declare-fun lt!1879837 () ListMap!5217)

(declare-fun -!738 (ListMap!5217 K!14105) ListMap!5217)

(declare-fun +!2242 (ListMap!5217 tuple2!54322) ListMap!5217)

(assert (=> b!4715065 (= e!2940740 (= (-!738 (+!2242 lt!1879837 (h!59070 oldBucket!34)) key!4653) (+!2242 lt!1879843 (h!59070 oldBucket!34))))))

(assert (=> b!4715065 (= (-!738 (+!2242 lt!1879837 (h!59070 oldBucket!34)) key!4653) (+!2242 lt!1879843 (h!59070 oldBucket!34)))))

(declare-datatypes ((Unit!128605 0))(
  ( (Unit!128606) )
))
(declare-fun lt!1879849 () Unit!128605)

(declare-fun addRemoveCommutativeForDiffKeys!129 (ListMap!5217 K!14105 V!14351 K!14105) Unit!128605)

(assert (=> b!4715065 (= lt!1879849 (addRemoveCommutativeForDiffKeys!129 lt!1879837 (_1!30455 (h!59070 oldBucket!34)) (_2!30455 (h!59070 oldBucket!34)) key!4653))))

(declare-fun b!4715066 () Bool)

(declare-fun e!2940744 () Bool)

(assert (=> b!4715066 (= e!2940744 e!2940735)))

(declare-fun res!1993549 () Bool)

(assert (=> b!4715066 (=> res!1993549 e!2940735)))

(declare-fun containsKey!3311 (List!52869 K!14105) Bool)

(assert (=> b!4715066 (= res!1993549 (not (containsKey!3311 (t!360117 oldBucket!34) key!4653)))))

(assert (=> b!4715066 (containsKey!3311 oldBucket!34 key!4653)))

(declare-fun lt!1879847 () Unit!128605)

(declare-fun lemmaGetPairDefinedThenContainsKey!296 (List!52869 K!14105 Hashable!6351) Unit!128605)

(assert (=> b!4715066 (= lt!1879847 (lemmaGetPairDefinedThenContainsKey!296 oldBucket!34 key!4653 hashF!1323))))

(declare-fun lt!1879834 () List!52869)

(declare-datatypes ((Option!12314 0))(
  ( (None!12313) (Some!12313 (v!46864 tuple2!54322)) )
))
(declare-fun isDefined!9568 (Option!12314) Bool)

(declare-fun getPair!548 (List!52869 K!14105) Option!12314)

(assert (=> b!4715066 (isDefined!9568 (getPair!548 lt!1879834 key!4653))))

(declare-datatypes ((tuple2!54324 0))(
  ( (tuple2!54325 (_1!30456 (_ BitVec 64)) (_2!30456 List!52869)) )
))
(declare-datatypes ((List!52870 0))(
  ( (Nil!52746) (Cons!52746 (h!59071 tuple2!54324) (t!360118 List!52870)) )
))
(declare-datatypes ((ListLongMap!4383 0))(
  ( (ListLongMap!4384 (toList!5854 List!52870)) )
))
(declare-fun lm!2023 () ListLongMap!4383)

(declare-fun lt!1879824 () tuple2!54324)

(declare-fun lt!1879840 () Unit!128605)

(declare-fun lambda!213785 () Int)

(declare-fun forallContained!3598 (List!52870 Int tuple2!54324) Unit!128605)

(assert (=> b!4715066 (= lt!1879840 (forallContained!3598 (toList!5854 lm!2023) lambda!213785 lt!1879824))))

(declare-fun contains!16077 (List!52870 tuple2!54324) Bool)

(assert (=> b!4715066 (contains!16077 (toList!5854 lm!2023) lt!1879824)))

(declare-fun lt!1879845 () (_ BitVec 64))

(assert (=> b!4715066 (= lt!1879824 (tuple2!54325 lt!1879845 lt!1879834))))

(declare-fun lt!1879827 () Unit!128605)

(declare-fun lemmaGetValueImpliesTupleContained!353 (ListLongMap!4383 (_ BitVec 64) List!52869) Unit!128605)

(assert (=> b!4715066 (= lt!1879827 (lemmaGetValueImpliesTupleContained!353 lm!2023 lt!1879845 lt!1879834))))

(declare-fun apply!12431 (ListLongMap!4383 (_ BitVec 64)) List!52869)

(assert (=> b!4715066 (= lt!1879834 (apply!12431 lm!2023 lt!1879845))))

(declare-fun contains!16078 (ListLongMap!4383 (_ BitVec 64)) Bool)

(assert (=> b!4715066 (contains!16078 lm!2023 lt!1879845)))

(declare-fun lt!1879841 () Unit!128605)

(declare-fun lemmaInGenMapThenLongMapContainsHash!754 (ListLongMap!4383 K!14105 Hashable!6351) Unit!128605)

(assert (=> b!4715066 (= lt!1879841 (lemmaInGenMapThenLongMapContainsHash!754 lm!2023 key!4653 hashF!1323))))

(declare-fun lt!1879852 () Unit!128605)

(declare-fun lemmaInGenMapThenGetPairDefined!344 (ListLongMap!4383 K!14105 Hashable!6351) Unit!128605)

(assert (=> b!4715066 (= lt!1879852 (lemmaInGenMapThenGetPairDefined!344 lm!2023 key!4653 hashF!1323))))

(declare-fun b!4715067 () Bool)

(declare-fun res!1993533 () Bool)

(declare-fun e!2940743 () Bool)

(assert (=> b!4715067 (=> (not res!1993533) (not e!2940743))))

(declare-fun noDuplicateKeys!1982 (List!52869) Bool)

(assert (=> b!4715067 (= res!1993533 (noDuplicateKeys!1982 newBucket!218))))

(declare-fun b!4715068 () Bool)

(declare-fun e!2940745 () Bool)

(assert (=> b!4715068 (= e!2940743 e!2940745)))

(declare-fun res!1993538 () Bool)

(assert (=> b!4715068 (=> (not res!1993538) (not e!2940745))))

(declare-fun lt!1879850 () ListMap!5217)

(declare-fun contains!16079 (ListMap!5217 K!14105) Bool)

(assert (=> b!4715068 (= res!1993538 (contains!16079 lt!1879850 key!4653))))

(declare-fun extractMap!2008 (List!52870) ListMap!5217)

(assert (=> b!4715068 (= lt!1879850 (extractMap!2008 (toList!5854 lm!2023)))))

(declare-fun b!4715069 () Bool)

(declare-fun res!1993548 () Bool)

(declare-fun e!2940736 () Bool)

(assert (=> b!4715069 (=> res!1993548 e!2940736)))

(declare-fun lt!1879839 () tuple2!54322)

(assert (=> b!4715069 (= res!1993548 (not (= (h!59070 oldBucket!34) lt!1879839)))))

(declare-fun tp_is_empty!31221 () Bool)

(declare-fun b!4715070 () Bool)

(declare-fun tp!1347867 () Bool)

(declare-fun tp_is_empty!31223 () Bool)

(declare-fun e!2940738 () Bool)

(assert (=> b!4715070 (= e!2940738 (and tp_is_empty!31221 tp_is_empty!31223 tp!1347867))))

(declare-fun tp!1347868 () Bool)

(declare-fun e!2940741 () Bool)

(declare-fun b!4715071 () Bool)

(assert (=> b!4715071 (= e!2940741 (and tp_is_empty!31221 tp_is_empty!31223 tp!1347868))))

(declare-fun b!4715072 () Bool)

(declare-fun res!1993547 () Bool)

(assert (=> b!4715072 (=> (not res!1993547) (not e!2940743))))

(assert (=> b!4715072 (= res!1993547 (allKeysSameHash!1808 oldBucket!34 hash!405 hashF!1323))))

(declare-fun b!4715073 () Bool)

(declare-fun res!1993551 () Bool)

(assert (=> b!4715073 (=> (not res!1993551) (not e!2940743))))

(assert (=> b!4715073 (= res!1993551 (noDuplicateKeys!1982 oldBucket!34))))

(declare-fun b!4715074 () Bool)

(declare-fun e!2940739 () Bool)

(assert (=> b!4715074 (= e!2940746 e!2940739)))

(declare-fun res!1993537 () Bool)

(assert (=> b!4715074 (=> (not res!1993537) (not e!2940739))))

(declare-fun lt!1879828 () tuple2!54324)

(declare-fun head!10193 (List!52870) tuple2!54324)

(assert (=> b!4715074 (= res!1993537 (= (head!10193 (toList!5854 lm!2023)) lt!1879828))))

(assert (=> b!4715074 (= lt!1879828 (tuple2!54325 hash!405 oldBucket!34))))

(declare-fun b!4715075 () Bool)

(declare-fun res!1993545 () Bool)

(assert (=> b!4715075 (=> (not res!1993545) (not e!2940739))))

(get-info :version)

(assert (=> b!4715075 (= res!1993545 ((_ is Cons!52746) (toList!5854 lm!2023)))))

(declare-fun b!4715063 () Bool)

(assert (=> b!4715063 (= e!2940736 e!2940740)))

(declare-fun res!1993546 () Bool)

(assert (=> b!4715063 (=> res!1993546 e!2940740)))

(declare-fun lt!1879835 () ListMap!5217)

(declare-fun eq!1109 (ListMap!5217 ListMap!5217) Bool)

(assert (=> b!4715063 (= res!1993546 (not (eq!1109 lt!1879835 lt!1879843)))))

(assert (=> b!4715063 (= lt!1879843 (-!738 lt!1879837 key!4653))))

(declare-fun lt!1879851 () tuple2!54324)

(assert (=> b!4715063 (= lt!1879835 (extractMap!2008 (Cons!52746 lt!1879851 (t!360118 (toList!5854 lm!2023)))))))

(declare-fun lt!1879831 () tuple2!54324)

(declare-fun lt!1879832 () List!52870)

(assert (=> b!4715063 (eq!1109 (extractMap!2008 (Cons!52746 lt!1879851 lt!1879832)) (-!738 (extractMap!2008 (Cons!52746 lt!1879831 lt!1879832)) key!4653))))

(declare-fun lt!1879836 () List!52870)

(declare-fun tail!8921 (List!52870) List!52870)

(assert (=> b!4715063 (= lt!1879832 (tail!8921 lt!1879836))))

(assert (=> b!4715063 (= lt!1879851 (tuple2!54325 hash!405 lt!1879833))))

(declare-fun lt!1879846 () ListLongMap!4383)

(declare-fun lt!1879838 () Unit!128605)

(declare-fun lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMapOneHashIsHead!100 (ListLongMap!4383 (_ BitVec 64) List!52869 List!52869 K!14105 Hashable!6351) Unit!128605)

(assert (=> b!4715063 (= lt!1879838 (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMapOneHashIsHead!100 lt!1879846 hash!405 (t!360117 oldBucket!34) lt!1879833 key!4653 hashF!1323))))

(declare-fun res!1993534 () Bool)

(assert (=> start!479480 (=> (not res!1993534) (not e!2940743))))

(declare-fun forall!11529 (List!52870 Int) Bool)

(assert (=> start!479480 (= res!1993534 (forall!11529 (toList!5854 lm!2023) lambda!213785))))

(assert (=> start!479480 e!2940743))

(declare-fun inv!67979 (ListLongMap!4383) Bool)

(assert (=> start!479480 (and (inv!67979 lm!2023) e!2940742)))

(assert (=> start!479480 tp_is_empty!31221))

(assert (=> start!479480 e!2940741))

(assert (=> start!479480 true))

(assert (=> start!479480 e!2940738))

(declare-fun b!4715076 () Bool)

(assert (=> b!4715076 (= e!2940737 e!2940736)))

(declare-fun res!1993544 () Bool)

(assert (=> b!4715076 (=> res!1993544 e!2940736)))

(declare-fun lt!1879829 () ListMap!5217)

(declare-fun lt!1879830 () ListMap!5217)

(assert (=> b!4715076 (= res!1993544 (not (eq!1109 lt!1879830 (+!2242 lt!1879829 (h!59070 oldBucket!34)))))))

(assert (=> b!4715076 (= lt!1879829 (extractMap!2008 (Cons!52746 (tuple2!54325 hash!405 lt!1879823) (t!360118 (toList!5854 lm!2023)))))))

(assert (=> b!4715076 (= lt!1879830 (extractMap!2008 (Cons!52746 lt!1879828 (t!360118 (toList!5854 lm!2023)))))))

(declare-fun lt!1879825 () ListMap!5217)

(declare-fun addToMapMapFromBucket!1412 (List!52869 ListMap!5217) ListMap!5217)

(assert (=> b!4715076 (eq!1109 (addToMapMapFromBucket!1412 (Cons!52745 lt!1879839 lt!1879833) lt!1879825) (+!2242 (addToMapMapFromBucket!1412 lt!1879833 lt!1879825) lt!1879839))))

(declare-fun lt!1879844 () Unit!128605)

(declare-fun lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!358 (tuple2!54322 List!52869 ListMap!5217) Unit!128605)

(assert (=> b!4715076 (= lt!1879844 (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!358 lt!1879839 lt!1879833 lt!1879825))))

(declare-fun head!10194 (List!52869) tuple2!54322)

(assert (=> b!4715076 (= lt!1879839 (head!10194 newBucket!218))))

(declare-fun lt!1879842 () tuple2!54322)

(assert (=> b!4715076 (eq!1109 (addToMapMapFromBucket!1412 (Cons!52745 lt!1879842 lt!1879823) lt!1879825) (+!2242 (addToMapMapFromBucket!1412 lt!1879823 lt!1879825) lt!1879842))))

(declare-fun lt!1879826 () Unit!128605)

(assert (=> b!4715076 (= lt!1879826 (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!358 lt!1879842 lt!1879823 lt!1879825))))

(assert (=> b!4715076 (= lt!1879842 (head!10194 oldBucket!34))))

(assert (=> b!4715076 (contains!16079 lt!1879837 key!4653)))

(assert (=> b!4715076 (= lt!1879837 (extractMap!2008 lt!1879836))))

(declare-fun lt!1879848 () Unit!128605)

(declare-fun lemmaListContainsThenExtractedMapContains!528 (ListLongMap!4383 K!14105 Hashable!6351) Unit!128605)

(assert (=> b!4715076 (= lt!1879848 (lemmaListContainsThenExtractedMapContains!528 lt!1879846 key!4653 hashF!1323))))

(assert (=> b!4715076 (= lt!1879846 (ListLongMap!4384 lt!1879836))))

(assert (=> b!4715076 (= lt!1879836 (Cons!52746 lt!1879831 (t!360118 (toList!5854 lm!2023))))))

(assert (=> b!4715076 (= lt!1879831 (tuple2!54325 hash!405 (t!360117 oldBucket!34)))))

(declare-fun b!4715077 () Bool)

(assert (=> b!4715077 (= e!2940745 e!2940746)))

(declare-fun res!1993550 () Bool)

(assert (=> b!4715077 (=> (not res!1993550) (not e!2940746))))

(assert (=> b!4715077 (= res!1993550 (= lt!1879845 hash!405))))

(declare-fun hash!4324 (Hashable!6351 K!14105) (_ BitVec 64))

(assert (=> b!4715077 (= lt!1879845 (hash!4324 hashF!1323 key!4653))))

(declare-fun b!4715078 () Bool)

(declare-fun res!1993543 () Bool)

(assert (=> b!4715078 (=> res!1993543 e!2940736)))

(assert (=> b!4715078 (= res!1993543 (not (eq!1109 lt!1879830 (+!2242 lt!1879829 lt!1879839))))))

(declare-fun b!4715079 () Bool)

(declare-fun res!1993540 () Bool)

(assert (=> b!4715079 (=> (not res!1993540) (not e!2940743))))

(assert (=> b!4715079 (= res!1993540 (= (removePairForKey!1577 oldBucket!34 key!4653) newBucket!218))))

(declare-fun b!4715080 () Bool)

(declare-fun res!1993539 () Bool)

(assert (=> b!4715080 (=> (not res!1993539) (not e!2940746))))

(declare-fun allKeysSameHashInMap!1896 (ListLongMap!4383 Hashable!6351) Bool)

(assert (=> b!4715080 (= res!1993539 (allKeysSameHashInMap!1896 lm!2023 hashF!1323))))

(declare-fun b!4715081 () Bool)

(assert (=> b!4715081 (= e!2940739 (not e!2940744))))

(declare-fun res!1993535 () Bool)

(assert (=> b!4715081 (=> res!1993535 e!2940744)))

(assert (=> b!4715081 (= res!1993535 (or (and ((_ is Cons!52745) oldBucket!34) (= (_1!30455 (h!59070 oldBucket!34)) key!4653)) (not ((_ is Cons!52745) oldBucket!34)) (= (_1!30455 (h!59070 oldBucket!34)) key!4653)))))

(assert (=> b!4715081 (= lt!1879850 (addToMapMapFromBucket!1412 (_2!30456 (h!59071 (toList!5854 lm!2023))) lt!1879825))))

(assert (=> b!4715081 (= lt!1879825 (extractMap!2008 (t!360118 (toList!5854 lm!2023))))))

(declare-fun tail!8922 (ListLongMap!4383) ListLongMap!4383)

(assert (=> b!4715081 (= (t!360118 (toList!5854 lm!2023)) (toList!5854 (tail!8922 lm!2023)))))

(assert (= (and start!479480 res!1993534) b!4715073))

(assert (= (and b!4715073 res!1993551) b!4715067))

(assert (= (and b!4715067 res!1993533) b!4715079))

(assert (= (and b!4715079 res!1993540) b!4715072))

(assert (= (and b!4715072 res!1993547) b!4715068))

(assert (= (and b!4715068 res!1993538) b!4715077))

(assert (= (and b!4715077 res!1993550) b!4715061))

(assert (= (and b!4715061 res!1993542) b!4715080))

(assert (= (and b!4715080 res!1993539) b!4715074))

(assert (= (and b!4715074 res!1993537) b!4715075))

(assert (= (and b!4715075 res!1993545) b!4715081))

(assert (= (and b!4715081 (not res!1993535)) b!4715066))

(assert (= (and b!4715066 (not res!1993549)) b!4715060))

(assert (= (and b!4715060 (not res!1993541)) b!4715062))

(assert (= (and b!4715062 (not res!1993536)) b!4715076))

(assert (= (and b!4715076 (not res!1993544)) b!4715069))

(assert (= (and b!4715069 (not res!1993548)) b!4715078))

(assert (= (and b!4715078 (not res!1993543)) b!4715063))

(assert (= (and b!4715063 (not res!1993546)) b!4715065))

(assert (= start!479480 b!4715064))

(assert (= (and start!479480 ((_ is Cons!52745) oldBucket!34)) b!4715071))

(assert (= (and start!479480 ((_ is Cons!52745) newBucket!218)) b!4715070))

(declare-fun m!5643237 () Bool)

(assert (=> b!4715060 m!5643237))

(declare-fun m!5643239 () Bool)

(assert (=> b!4715060 m!5643239))

(declare-fun m!5643241 () Bool)

(assert (=> b!4715060 m!5643241))

(declare-fun m!5643243 () Bool)

(assert (=> b!4715078 m!5643243))

(assert (=> b!4715078 m!5643243))

(declare-fun m!5643245 () Bool)

(assert (=> b!4715078 m!5643245))

(declare-fun m!5643247 () Bool)

(assert (=> b!4715062 m!5643247))

(declare-fun m!5643249 () Bool)

(assert (=> b!4715068 m!5643249))

(declare-fun m!5643251 () Bool)

(assert (=> b!4715068 m!5643251))

(declare-fun m!5643253 () Bool)

(assert (=> b!4715076 m!5643253))

(declare-fun m!5643255 () Bool)

(assert (=> b!4715076 m!5643255))

(declare-fun m!5643257 () Bool)

(assert (=> b!4715076 m!5643257))

(declare-fun m!5643259 () Bool)

(assert (=> b!4715076 m!5643259))

(declare-fun m!5643261 () Bool)

(assert (=> b!4715076 m!5643261))

(declare-fun m!5643263 () Bool)

(assert (=> b!4715076 m!5643263))

(declare-fun m!5643265 () Bool)

(assert (=> b!4715076 m!5643265))

(declare-fun m!5643267 () Bool)

(assert (=> b!4715076 m!5643267))

(declare-fun m!5643269 () Bool)

(assert (=> b!4715076 m!5643269))

(declare-fun m!5643271 () Bool)

(assert (=> b!4715076 m!5643271))

(declare-fun m!5643273 () Bool)

(assert (=> b!4715076 m!5643273))

(assert (=> b!4715076 m!5643253))

(declare-fun m!5643275 () Bool)

(assert (=> b!4715076 m!5643275))

(declare-fun m!5643277 () Bool)

(assert (=> b!4715076 m!5643277))

(assert (=> b!4715076 m!5643259))

(declare-fun m!5643279 () Bool)

(assert (=> b!4715076 m!5643279))

(declare-fun m!5643281 () Bool)

(assert (=> b!4715076 m!5643281))

(declare-fun m!5643283 () Bool)

(assert (=> b!4715076 m!5643283))

(declare-fun m!5643285 () Bool)

(assert (=> b!4715076 m!5643285))

(assert (=> b!4715076 m!5643279))

(declare-fun m!5643287 () Bool)

(assert (=> b!4715076 m!5643287))

(assert (=> b!4715076 m!5643285))

(declare-fun m!5643289 () Bool)

(assert (=> b!4715076 m!5643289))

(assert (=> b!4715076 m!5643265))

(assert (=> b!4715076 m!5643271))

(assert (=> b!4715076 m!5643269))

(declare-fun m!5643291 () Bool)

(assert (=> b!4715073 m!5643291))

(declare-fun m!5643293 () Bool)

(assert (=> b!4715079 m!5643293))

(declare-fun m!5643295 () Bool)

(assert (=> b!4715063 m!5643295))

(declare-fun m!5643297 () Bool)

(assert (=> b!4715063 m!5643297))

(declare-fun m!5643299 () Bool)

(assert (=> b!4715063 m!5643299))

(assert (=> b!4715063 m!5643299))

(declare-fun m!5643301 () Bool)

(assert (=> b!4715063 m!5643301))

(declare-fun m!5643303 () Bool)

(assert (=> b!4715063 m!5643303))

(declare-fun m!5643305 () Bool)

(assert (=> b!4715063 m!5643305))

(declare-fun m!5643307 () Bool)

(assert (=> b!4715063 m!5643307))

(declare-fun m!5643309 () Bool)

(assert (=> b!4715063 m!5643309))

(assert (=> b!4715063 m!5643305))

(assert (=> b!4715063 m!5643301))

(declare-fun m!5643311 () Bool)

(assert (=> b!4715063 m!5643311))

(declare-fun m!5643313 () Bool)

(assert (=> b!4715066 m!5643313))

(declare-fun m!5643315 () Bool)

(assert (=> b!4715066 m!5643315))

(declare-fun m!5643317 () Bool)

(assert (=> b!4715066 m!5643317))

(declare-fun m!5643319 () Bool)

(assert (=> b!4715066 m!5643319))

(declare-fun m!5643321 () Bool)

(assert (=> b!4715066 m!5643321))

(declare-fun m!5643323 () Bool)

(assert (=> b!4715066 m!5643323))

(declare-fun m!5643325 () Bool)

(assert (=> b!4715066 m!5643325))

(declare-fun m!5643327 () Bool)

(assert (=> b!4715066 m!5643327))

(declare-fun m!5643329 () Bool)

(assert (=> b!4715066 m!5643329))

(assert (=> b!4715066 m!5643321))

(declare-fun m!5643331 () Bool)

(assert (=> b!4715066 m!5643331))

(declare-fun m!5643333 () Bool)

(assert (=> b!4715066 m!5643333))

(declare-fun m!5643335 () Bool)

(assert (=> b!4715066 m!5643335))

(declare-fun m!5643337 () Bool)

(assert (=> b!4715080 m!5643337))

(declare-fun m!5643339 () Bool)

(assert (=> b!4715074 m!5643339))

(declare-fun m!5643341 () Bool)

(assert (=> b!4715065 m!5643341))

(assert (=> b!4715065 m!5643341))

(declare-fun m!5643343 () Bool)

(assert (=> b!4715065 m!5643343))

(declare-fun m!5643345 () Bool)

(assert (=> b!4715065 m!5643345))

(declare-fun m!5643347 () Bool)

(assert (=> b!4715065 m!5643347))

(declare-fun m!5643349 () Bool)

(assert (=> b!4715061 m!5643349))

(declare-fun m!5643351 () Bool)

(assert (=> start!479480 m!5643351))

(declare-fun m!5643353 () Bool)

(assert (=> start!479480 m!5643353))

(declare-fun m!5643355 () Bool)

(assert (=> b!4715072 m!5643355))

(declare-fun m!5643357 () Bool)

(assert (=> b!4715081 m!5643357))

(declare-fun m!5643359 () Bool)

(assert (=> b!4715081 m!5643359))

(declare-fun m!5643361 () Bool)

(assert (=> b!4715081 m!5643361))

(declare-fun m!5643363 () Bool)

(assert (=> b!4715077 m!5643363))

(declare-fun m!5643365 () Bool)

(assert (=> b!4715067 m!5643365))

(check-sat (not b!4715070) (not b!4715081) (not start!479480) (not b!4715074) (not b!4715065) (not b!4715064) tp_is_empty!31223 (not b!4715062) (not b!4715068) (not b!4715071) (not b!4715060) (not b!4715063) tp_is_empty!31221 (not b!4715080) (not b!4715072) (not b!4715076) (not b!4715061) (not b!4715073) (not b!4715066) (not b!4715078) (not b!4715077) (not b!4715079) (not b!4715067))
(check-sat)
