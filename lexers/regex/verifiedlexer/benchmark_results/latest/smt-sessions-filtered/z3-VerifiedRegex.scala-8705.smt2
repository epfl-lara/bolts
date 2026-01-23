; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!463876 () Bool)

(assert start!463876)

(declare-fun b!4626788 () Bool)

(declare-fun res!1940450 () Bool)

(declare-fun e!2886142 () Bool)

(assert (=> b!4626788 (=> res!1940450 e!2886142)))

(declare-datatypes ((K!12930 0))(
  ( (K!12931 (val!18615 Int)) )
))
(declare-datatypes ((V!13176 0))(
  ( (V!13177 (val!18616 Int)) )
))
(declare-datatypes ((tuple2!52494 0))(
  ( (tuple2!52495 (_1!29541 K!12930) (_2!29541 V!13176)) )
))
(declare-datatypes ((List!51676 0))(
  ( (Nil!51552) (Cons!51552 (h!57608 tuple2!52494) (t!358714 List!51676)) )
))
(declare-fun oldBucket!40 () List!51676)

(declare-fun key!4968 () K!12930)

(declare-fun lt!1785153 () List!51676)

(declare-fun removePairForKey!1135 (List!51676 K!12930) List!51676)

(assert (=> b!4626788 (= res!1940450 (not (= (removePairForKey!1135 (t!358714 oldBucket!40) key!4968) lt!1785153)))))

(declare-fun b!4626789 () Bool)

(declare-fun e!2886149 () Bool)

(declare-datatypes ((tuple2!52496 0))(
  ( (tuple2!52497 (_1!29542 (_ BitVec 64)) (_2!29542 List!51676)) )
))
(declare-datatypes ((List!51677 0))(
  ( (Nil!51553) (Cons!51553 (h!57609 tuple2!52496) (t!358715 List!51677)) )
))
(declare-fun lt!1785173 () List!51677)

(declare-fun lambda!192450 () Int)

(declare-fun forall!10834 (List!51677 Int) Bool)

(assert (=> b!4626789 (= e!2886149 (forall!10834 lt!1785173 lambda!192450))))

(declare-fun b!4626790 () Bool)

(declare-fun e!2886145 () Bool)

(declare-datatypes ((ListMap!4293 0))(
  ( (ListMap!4294 (toList!4989 List!51676)) )
))
(declare-fun lt!1785165 () ListMap!4293)

(assert (=> b!4626790 (= e!2886145 (= lt!1785165 (ListMap!4294 Nil!51552)))))

(declare-fun b!4626791 () Bool)

(declare-fun e!2886146 () Bool)

(assert (=> b!4626791 (= e!2886146 e!2886149)))

(declare-fun res!1940445 () Bool)

(assert (=> b!4626791 (=> res!1940445 e!2886149)))

(declare-fun lt!1785167 () ListMap!4293)

(declare-fun lt!1785158 () ListMap!4293)

(declare-fun -!552 (ListMap!4293 K!12930) ListMap!4293)

(declare-fun +!1878 (ListMap!4293 tuple2!52494) ListMap!4293)

(assert (=> b!4626791 (= res!1940445 (not (= (-!552 (+!1878 lt!1785158 (h!57608 oldBucket!40)) key!4968) (+!1878 lt!1785167 (h!57608 oldBucket!40)))))))

(assert (=> b!4626791 (= (-!552 (+!1878 lt!1785158 (h!57608 oldBucket!40)) key!4968) (+!1878 lt!1785167 (h!57608 oldBucket!40)))))

(declare-datatypes ((Unit!112384 0))(
  ( (Unit!112385) )
))
(declare-fun lt!1785159 () Unit!112384)

(declare-fun addRemoveCommutativeForDiffKeys!7 (ListMap!4293 K!12930 V!13176 K!12930) Unit!112384)

(assert (=> b!4626791 (= lt!1785159 (addRemoveCommutativeForDiffKeys!7 lt!1785158 (_1!29541 (h!57608 oldBucket!40)) (_2!29541 (h!57608 oldBucket!40)) key!4968))))

(declare-fun lt!1785154 () ListMap!4293)

(declare-fun eq!827 (ListMap!4293 ListMap!4293) Bool)

(assert (=> b!4626791 (eq!827 lt!1785154 lt!1785167)))

(assert (=> b!4626791 (= lt!1785167 (-!552 lt!1785158 key!4968))))

(declare-datatypes ((Hashable!5909 0))(
  ( (HashableExt!5908 (__x!31612 Int)) )
))
(declare-fun hashF!1389 () Hashable!5909)

(declare-fun hash!414 () (_ BitVec 64))

(declare-fun lt!1785168 () Unit!112384)

(declare-fun lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMapOneHash!114 ((_ BitVec 64) List!51676 List!51676 K!12930 Hashable!5909) Unit!112384)

(assert (=> b!4626791 (= lt!1785168 (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMapOneHash!114 hash!414 (t!358714 oldBucket!40) lt!1785153 key!4968 hashF!1389))))

(declare-fun b!4626792 () Bool)

(declare-fun e!2886150 () Bool)

(declare-fun e!2886141 () Bool)

(assert (=> b!4626792 (= e!2886150 e!2886141)))

(declare-fun res!1940454 () Bool)

(assert (=> b!4626792 (=> res!1940454 e!2886141)))

(declare-fun containsKey!2464 (List!51676 K!12930) Bool)

(assert (=> b!4626792 (= res!1940454 (not (containsKey!2464 (t!358714 oldBucket!40) key!4968)))))

(assert (=> b!4626792 (containsKey!2464 oldBucket!40 key!4968)))

(declare-fun lt!1785170 () Unit!112384)

(declare-fun lemmaGetPairDefinedThenContainsKey!58 (List!51676 K!12930 Hashable!5909) Unit!112384)

(assert (=> b!4626792 (= lt!1785170 (lemmaGetPairDefinedThenContainsKey!58 oldBucket!40 key!4968 hashF!1389))))

(declare-fun lt!1785162 () List!51676)

(declare-datatypes ((Option!11606 0))(
  ( (None!11605) (Some!11605 (v!45743 tuple2!52494)) )
))
(declare-fun isDefined!8871 (Option!11606) Bool)

(declare-fun getPair!304 (List!51676 K!12930) Option!11606)

(assert (=> b!4626792 (isDefined!8871 (getPair!304 lt!1785162 key!4968))))

(declare-fun lt!1785163 () tuple2!52496)

(declare-fun lt!1785177 () Unit!112384)

(declare-fun forallContained!3062 (List!51677 Int tuple2!52496) Unit!112384)

(assert (=> b!4626792 (= lt!1785177 (forallContained!3062 lt!1785173 lambda!192450 lt!1785163))))

(declare-fun contains!14607 (List!51677 tuple2!52496) Bool)

(assert (=> b!4626792 (contains!14607 lt!1785173 lt!1785163)))

(declare-fun lt!1785155 () (_ BitVec 64))

(assert (=> b!4626792 (= lt!1785163 (tuple2!52497 lt!1785155 lt!1785162))))

(declare-datatypes ((ListLongMap!3579 0))(
  ( (ListLongMap!3580 (toList!4990 List!51677)) )
))
(declare-fun lt!1785152 () ListLongMap!3579)

(declare-fun lt!1785176 () Unit!112384)

(declare-fun lemmaGetValueImpliesTupleContained!109 (ListLongMap!3579 (_ BitVec 64) List!51676) Unit!112384)

(assert (=> b!4626792 (= lt!1785176 (lemmaGetValueImpliesTupleContained!109 lt!1785152 lt!1785155 lt!1785162))))

(declare-fun apply!12177 (ListLongMap!3579 (_ BitVec 64)) List!51676)

(assert (=> b!4626792 (= lt!1785162 (apply!12177 lt!1785152 lt!1785155))))

(declare-fun contains!14608 (ListLongMap!3579 (_ BitVec 64)) Bool)

(assert (=> b!4626792 (contains!14608 lt!1785152 lt!1785155)))

(declare-fun lt!1785160 () Unit!112384)

(declare-fun lemmaInGenMapThenLongMapContainsHash!510 (ListLongMap!3579 K!12930 Hashable!5909) Unit!112384)

(assert (=> b!4626792 (= lt!1785160 (lemmaInGenMapThenLongMapContainsHash!510 lt!1785152 key!4968 hashF!1389))))

(declare-fun lt!1785157 () Unit!112384)

(declare-fun lemmaInGenMapThenGetPairDefined!100 (ListLongMap!3579 K!12930 Hashable!5909) Unit!112384)

(assert (=> b!4626792 (= lt!1785157 (lemmaInGenMapThenGetPairDefined!100 lt!1785152 key!4968 hashF!1389))))

(assert (=> b!4626792 (= lt!1785152 (ListLongMap!3580 lt!1785173))))

(declare-fun b!4626793 () Bool)

(declare-fun res!1940447 () Bool)

(declare-fun e!2886148 () Bool)

(assert (=> b!4626793 (=> (not res!1940447) (not e!2886148))))

(declare-fun newBucket!224 () List!51676)

(declare-fun allKeysSameHash!1366 (List!51676 (_ BitVec 64) Hashable!5909) Bool)

(assert (=> b!4626793 (= res!1940447 (allKeysSameHash!1366 newBucket!224 hash!414 hashF!1389))))

(declare-fun b!4626794 () Bool)

(declare-fun res!1940448 () Bool)

(declare-fun e!2886147 () Bool)

(assert (=> b!4626794 (=> (not res!1940448) (not e!2886147))))

(assert (=> b!4626794 (= res!1940448 (= (removePairForKey!1135 oldBucket!40 key!4968) newBucket!224))))

(declare-fun b!4626795 () Bool)

(assert (=> b!4626795 (= e!2886141 e!2886142)))

(declare-fun res!1940441 () Bool)

(assert (=> b!4626795 (=> res!1940441 e!2886142)))

(declare-fun lt!1785174 () List!51676)

(assert (=> b!4626795 (= res!1940441 (not (= (removePairForKey!1135 lt!1785174 key!4968) lt!1785153)))))

(declare-fun tail!8147 (List!51676) List!51676)

(assert (=> b!4626795 (= lt!1785153 (tail!8147 newBucket!224))))

(assert (=> b!4626795 (= lt!1785174 (tail!8147 oldBucket!40))))

(declare-fun b!4626797 () Bool)

(declare-fun tp!1342166 () Bool)

(declare-fun e!2886144 () Bool)

(declare-fun tp_is_empty!29343 () Bool)

(declare-fun tp_is_empty!29341 () Bool)

(assert (=> b!4626797 (= e!2886144 (and tp_is_empty!29341 tp_is_empty!29343 tp!1342166))))

(declare-fun b!4626798 () Bool)

(declare-fun e!2886151 () Bool)

(assert (=> b!4626798 (= e!2886147 e!2886151)))

(declare-fun res!1940442 () Bool)

(assert (=> b!4626798 (=> (not res!1940442) (not e!2886151))))

(declare-fun lt!1785161 () ListMap!4293)

(declare-fun contains!14609 (ListMap!4293 K!12930) Bool)

(assert (=> b!4626798 (= res!1940442 (contains!14609 lt!1785161 key!4968))))

(declare-fun extractMap!1568 (List!51677) ListMap!4293)

(assert (=> b!4626798 (= lt!1785161 (extractMap!1568 lt!1785173))))

(assert (=> b!4626798 (= lt!1785173 (Cons!51553 (tuple2!52497 hash!414 oldBucket!40) Nil!51553))))

(declare-fun b!4626799 () Bool)

(assert (=> b!4626799 (= e!2886151 e!2886148)))

(declare-fun res!1940449 () Bool)

(assert (=> b!4626799 (=> (not res!1940449) (not e!2886148))))

(assert (=> b!4626799 (= res!1940449 (= lt!1785155 hash!414))))

(declare-fun hash!3517 (Hashable!5909 K!12930) (_ BitVec 64))

(assert (=> b!4626799 (= lt!1785155 (hash!3517 hashF!1389 key!4968))))

(declare-fun b!4626800 () Bool)

(declare-fun e!2886143 () Bool)

(assert (=> b!4626800 (= e!2886143 e!2886146)))

(declare-fun res!1940453 () Bool)

(assert (=> b!4626800 (=> res!1940453 e!2886146)))

(declare-fun lt!1785171 () ListMap!4293)

(declare-fun lt!1785166 () tuple2!52494)

(assert (=> b!4626800 (= res!1940453 (not (eq!827 lt!1785171 (+!1878 lt!1785154 lt!1785166))))))

(assert (=> b!4626800 (= lt!1785154 (extractMap!1568 (Cons!51553 (tuple2!52497 hash!414 lt!1785153) Nil!51553)))))

(assert (=> b!4626800 (= lt!1785171 (extractMap!1568 (Cons!51553 (tuple2!52497 hash!414 newBucket!224) Nil!51553)))))

(declare-fun b!4626796 () Bool)

(declare-fun res!1940446 () Bool)

(assert (=> b!4626796 (=> (not res!1940446) (not e!2886147))))

(declare-fun noDuplicateKeys!1512 (List!51676) Bool)

(assert (=> b!4626796 (= res!1940446 (noDuplicateKeys!1512 newBucket!224))))

(declare-fun res!1940452 () Bool)

(assert (=> start!463876 (=> (not res!1940452) (not e!2886147))))

(assert (=> start!463876 (= res!1940452 (noDuplicateKeys!1512 oldBucket!40))))

(assert (=> start!463876 e!2886147))

(assert (=> start!463876 true))

(declare-fun e!2886152 () Bool)

(assert (=> start!463876 e!2886152))

(assert (=> start!463876 tp_is_empty!29341))

(assert (=> start!463876 e!2886144))

(declare-fun b!4626801 () Bool)

(declare-fun res!1940440 () Bool)

(assert (=> b!4626801 (=> (not res!1940440) (not e!2886147))))

(assert (=> b!4626801 (= res!1940440 (allKeysSameHash!1366 oldBucket!40 hash!414 hashF!1389))))

(declare-fun tp!1342167 () Bool)

(declare-fun b!4626802 () Bool)

(assert (=> b!4626802 (= e!2886152 (and tp_is_empty!29341 tp_is_empty!29343 tp!1342167))))

(declare-fun b!4626803 () Bool)

(assert (=> b!4626803 (= e!2886148 (not e!2886150))))

(declare-fun res!1940451 () Bool)

(assert (=> b!4626803 (=> res!1940451 e!2886150)))

(get-info :version)

(assert (=> b!4626803 (= res!1940451 (or (and ((_ is Cons!51552) oldBucket!40) (= (_1!29541 (h!57608 oldBucket!40)) key!4968)) (not ((_ is Cons!51552) oldBucket!40)) (= (_1!29541 (h!57608 oldBucket!40)) key!4968)))))

(assert (=> b!4626803 e!2886145))

(declare-fun res!1940444 () Bool)

(assert (=> b!4626803 (=> (not res!1940444) (not e!2886145))))

(declare-fun addToMapMapFromBucket!973 (List!51676 ListMap!4293) ListMap!4293)

(assert (=> b!4626803 (= res!1940444 (= lt!1785161 (addToMapMapFromBucket!973 oldBucket!40 lt!1785165)))))

(assert (=> b!4626803 (= lt!1785165 (extractMap!1568 Nil!51553))))

(assert (=> b!4626803 true))

(declare-fun b!4626804 () Bool)

(assert (=> b!4626804 (= e!2886142 e!2886143)))

(declare-fun res!1940443 () Bool)

(assert (=> b!4626804 (=> res!1940443 e!2886143)))

(assert (=> b!4626804 (= res!1940443 (not (eq!827 lt!1785161 (+!1878 (extractMap!1568 (Cons!51553 (tuple2!52497 hash!414 lt!1785174) Nil!51553)) (h!57608 oldBucket!40)))))))

(assert (=> b!4626804 (eq!827 (addToMapMapFromBucket!973 (Cons!51552 lt!1785166 lt!1785153) (ListMap!4294 Nil!51552)) (+!1878 (addToMapMapFromBucket!973 lt!1785153 (ListMap!4294 Nil!51552)) lt!1785166))))

(declare-fun lt!1785175 () Unit!112384)

(declare-fun lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!78 (tuple2!52494 List!51676 ListMap!4293) Unit!112384)

(assert (=> b!4626804 (= lt!1785175 (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!78 lt!1785166 lt!1785153 (ListMap!4294 Nil!51552)))))

(declare-fun head!9646 (List!51676) tuple2!52494)

(assert (=> b!4626804 (= lt!1785166 (head!9646 newBucket!224))))

(declare-fun lt!1785172 () tuple2!52494)

(assert (=> b!4626804 (eq!827 (addToMapMapFromBucket!973 (Cons!51552 lt!1785172 lt!1785174) (ListMap!4294 Nil!51552)) (+!1878 (addToMapMapFromBucket!973 lt!1785174 (ListMap!4294 Nil!51552)) lt!1785172))))

(declare-fun lt!1785156 () Unit!112384)

(assert (=> b!4626804 (= lt!1785156 (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!78 lt!1785172 lt!1785174 (ListMap!4294 Nil!51552)))))

(assert (=> b!4626804 (= lt!1785172 (head!9646 oldBucket!40))))

(assert (=> b!4626804 (contains!14609 lt!1785158 key!4968)))

(declare-fun lt!1785164 () List!51677)

(assert (=> b!4626804 (= lt!1785158 (extractMap!1568 lt!1785164))))

(declare-fun lt!1785169 () Unit!112384)

(declare-fun lemmaListContainsThenExtractedMapContains!330 (ListLongMap!3579 K!12930 Hashable!5909) Unit!112384)

(assert (=> b!4626804 (= lt!1785169 (lemmaListContainsThenExtractedMapContains!330 (ListLongMap!3580 lt!1785164) key!4968 hashF!1389))))

(assert (=> b!4626804 (= lt!1785164 (Cons!51553 (tuple2!52497 hash!414 (t!358714 oldBucket!40)) Nil!51553))))

(assert (= (and start!463876 res!1940452) b!4626796))

(assert (= (and b!4626796 res!1940446) b!4626794))

(assert (= (and b!4626794 res!1940448) b!4626801))

(assert (= (and b!4626801 res!1940440) b!4626798))

(assert (= (and b!4626798 res!1940442) b!4626799))

(assert (= (and b!4626799 res!1940449) b!4626793))

(assert (= (and b!4626793 res!1940447) b!4626803))

(assert (= (and b!4626803 res!1940444) b!4626790))

(assert (= (and b!4626803 (not res!1940451)) b!4626792))

(assert (= (and b!4626792 (not res!1940454)) b!4626795))

(assert (= (and b!4626795 (not res!1940441)) b!4626788))

(assert (= (and b!4626788 (not res!1940450)) b!4626804))

(assert (= (and b!4626804 (not res!1940443)) b!4626800))

(assert (= (and b!4626800 (not res!1940453)) b!4626791))

(assert (= (and b!4626791 (not res!1940445)) b!4626789))

(assert (= (and start!463876 ((_ is Cons!51552) oldBucket!40)) b!4626802))

(assert (= (and start!463876 ((_ is Cons!51552) newBucket!224)) b!4626797))

(declare-fun m!5470103 () Bool)

(assert (=> b!4626800 m!5470103))

(assert (=> b!4626800 m!5470103))

(declare-fun m!5470105 () Bool)

(assert (=> b!4626800 m!5470105))

(declare-fun m!5470107 () Bool)

(assert (=> b!4626800 m!5470107))

(declare-fun m!5470109 () Bool)

(assert (=> b!4626800 m!5470109))

(declare-fun m!5470111 () Bool)

(assert (=> b!4626795 m!5470111))

(declare-fun m!5470113 () Bool)

(assert (=> b!4626795 m!5470113))

(declare-fun m!5470115 () Bool)

(assert (=> b!4626795 m!5470115))

(declare-fun m!5470117 () Bool)

(assert (=> b!4626792 m!5470117))

(declare-fun m!5470119 () Bool)

(assert (=> b!4626792 m!5470119))

(declare-fun m!5470121 () Bool)

(assert (=> b!4626792 m!5470121))

(declare-fun m!5470123 () Bool)

(assert (=> b!4626792 m!5470123))

(declare-fun m!5470125 () Bool)

(assert (=> b!4626792 m!5470125))

(assert (=> b!4626792 m!5470123))

(declare-fun m!5470127 () Bool)

(assert (=> b!4626792 m!5470127))

(declare-fun m!5470129 () Bool)

(assert (=> b!4626792 m!5470129))

(declare-fun m!5470131 () Bool)

(assert (=> b!4626792 m!5470131))

(declare-fun m!5470133 () Bool)

(assert (=> b!4626792 m!5470133))

(declare-fun m!5470135 () Bool)

(assert (=> b!4626792 m!5470135))

(declare-fun m!5470137 () Bool)

(assert (=> b!4626792 m!5470137))

(declare-fun m!5470139 () Bool)

(assert (=> b!4626792 m!5470139))

(declare-fun m!5470141 () Bool)

(assert (=> start!463876 m!5470141))

(declare-fun m!5470143 () Bool)

(assert (=> b!4626794 m!5470143))

(declare-fun m!5470145 () Bool)

(assert (=> b!4626798 m!5470145))

(declare-fun m!5470147 () Bool)

(assert (=> b!4626798 m!5470147))

(declare-fun m!5470149 () Bool)

(assert (=> b!4626791 m!5470149))

(declare-fun m!5470151 () Bool)

(assert (=> b!4626791 m!5470151))

(declare-fun m!5470153 () Bool)

(assert (=> b!4626791 m!5470153))

(assert (=> b!4626791 m!5470149))

(declare-fun m!5470155 () Bool)

(assert (=> b!4626791 m!5470155))

(declare-fun m!5470157 () Bool)

(assert (=> b!4626791 m!5470157))

(declare-fun m!5470159 () Bool)

(assert (=> b!4626791 m!5470159))

(declare-fun m!5470161 () Bool)

(assert (=> b!4626791 m!5470161))

(declare-fun m!5470163 () Bool)

(assert (=> b!4626789 m!5470163))

(declare-fun m!5470165 () Bool)

(assert (=> b!4626804 m!5470165))

(declare-fun m!5470167 () Bool)

(assert (=> b!4626804 m!5470167))

(declare-fun m!5470169 () Bool)

(assert (=> b!4626804 m!5470169))

(declare-fun m!5470171 () Bool)

(assert (=> b!4626804 m!5470171))

(declare-fun m!5470173 () Bool)

(assert (=> b!4626804 m!5470173))

(assert (=> b!4626804 m!5470167))

(declare-fun m!5470175 () Bool)

(assert (=> b!4626804 m!5470175))

(declare-fun m!5470177 () Bool)

(assert (=> b!4626804 m!5470177))

(declare-fun m!5470179 () Bool)

(assert (=> b!4626804 m!5470179))

(declare-fun m!5470181 () Bool)

(assert (=> b!4626804 m!5470181))

(assert (=> b!4626804 m!5470165))

(declare-fun m!5470183 () Bool)

(assert (=> b!4626804 m!5470183))

(assert (=> b!4626804 m!5470169))

(declare-fun m!5470185 () Bool)

(assert (=> b!4626804 m!5470185))

(declare-fun m!5470187 () Bool)

(assert (=> b!4626804 m!5470187))

(declare-fun m!5470189 () Bool)

(assert (=> b!4626804 m!5470189))

(declare-fun m!5470191 () Bool)

(assert (=> b!4626804 m!5470191))

(assert (=> b!4626804 m!5470171))

(declare-fun m!5470193 () Bool)

(assert (=> b!4626804 m!5470193))

(assert (=> b!4626804 m!5470191))

(assert (=> b!4626804 m!5470193))

(assert (=> b!4626804 m!5470179))

(assert (=> b!4626804 m!5470177))

(declare-fun m!5470195 () Bool)

(assert (=> b!4626804 m!5470195))

(declare-fun m!5470197 () Bool)

(assert (=> b!4626804 m!5470197))

(declare-fun m!5470199 () Bool)

(assert (=> b!4626804 m!5470199))

(declare-fun m!5470201 () Bool)

(assert (=> b!4626803 m!5470201))

(declare-fun m!5470203 () Bool)

(assert (=> b!4626803 m!5470203))

(declare-fun m!5470205 () Bool)

(assert (=> b!4626793 m!5470205))

(declare-fun m!5470207 () Bool)

(assert (=> b!4626799 m!5470207))

(declare-fun m!5470209 () Bool)

(assert (=> b!4626788 m!5470209))

(declare-fun m!5470211 () Bool)

(assert (=> b!4626796 m!5470211))

(declare-fun m!5470213 () Bool)

(assert (=> b!4626801 m!5470213))

(check-sat (not b!4626793) (not b!4626792) (not b!4626803) (not b!4626800) (not b!4626801) (not b!4626797) (not b!4626794) (not start!463876) (not b!4626791) (not b!4626798) tp_is_empty!29341 (not b!4626789) (not b!4626799) (not b!4626788) (not b!4626796) (not b!4626802) (not b!4626804) (not b!4626795) tp_is_empty!29343)
(check-sat)
(get-model)

(declare-fun d!1457554 () Bool)

(declare-fun hash!3520 (Hashable!5909 K!12930) (_ BitVec 64))

(assert (=> d!1457554 (= (hash!3517 hashF!1389 key!4968) (hash!3520 hashF!1389 key!4968))))

(declare-fun bs!1024331 () Bool)

(assert (= bs!1024331 d!1457554))

(declare-fun m!5470223 () Bool)

(assert (=> bs!1024331 m!5470223))

(assert (=> b!4626799 d!1457554))

(declare-fun d!1457558 () Bool)

(declare-fun res!1940459 () Bool)

(declare-fun e!2886163 () Bool)

(assert (=> d!1457558 (=> res!1940459 e!2886163)))

(assert (=> d!1457558 (= res!1940459 (not ((_ is Cons!51552) oldBucket!40)))))

(assert (=> d!1457558 (= (noDuplicateKeys!1512 oldBucket!40) e!2886163)))

(declare-fun b!4626825 () Bool)

(declare-fun e!2886164 () Bool)

(assert (=> b!4626825 (= e!2886163 e!2886164)))

(declare-fun res!1940460 () Bool)

(assert (=> b!4626825 (=> (not res!1940460) (not e!2886164))))

(assert (=> b!4626825 (= res!1940460 (not (containsKey!2464 (t!358714 oldBucket!40) (_1!29541 (h!57608 oldBucket!40)))))))

(declare-fun b!4626826 () Bool)

(assert (=> b!4626826 (= e!2886164 (noDuplicateKeys!1512 (t!358714 oldBucket!40)))))

(assert (= (and d!1457558 (not res!1940459)) b!4626825))

(assert (= (and b!4626825 res!1940460) b!4626826))

(declare-fun m!5470225 () Bool)

(assert (=> b!4626825 m!5470225))

(declare-fun m!5470227 () Bool)

(assert (=> b!4626826 m!5470227))

(assert (=> start!463876 d!1457558))

(declare-fun b!4626836 () Bool)

(declare-fun e!2886170 () List!51676)

(declare-fun e!2886169 () List!51676)

(assert (=> b!4626836 (= e!2886170 e!2886169)))

(declare-fun c!791989 () Bool)

(assert (=> b!4626836 (= c!791989 ((_ is Cons!51552) (t!358714 oldBucket!40)))))

(declare-fun b!4626835 () Bool)

(assert (=> b!4626835 (= e!2886170 (t!358714 (t!358714 oldBucket!40)))))

(declare-fun b!4626838 () Bool)

(assert (=> b!4626838 (= e!2886169 Nil!51552)))

(declare-fun b!4626837 () Bool)

(assert (=> b!4626837 (= e!2886169 (Cons!51552 (h!57608 (t!358714 oldBucket!40)) (removePairForKey!1135 (t!358714 (t!358714 oldBucket!40)) key!4968)))))

(declare-fun d!1457560 () Bool)

(declare-fun lt!1785183 () List!51676)

(assert (=> d!1457560 (not (containsKey!2464 lt!1785183 key!4968))))

(assert (=> d!1457560 (= lt!1785183 e!2886170)))

(declare-fun c!791990 () Bool)

(assert (=> d!1457560 (= c!791990 (and ((_ is Cons!51552) (t!358714 oldBucket!40)) (= (_1!29541 (h!57608 (t!358714 oldBucket!40))) key!4968)))))

(assert (=> d!1457560 (noDuplicateKeys!1512 (t!358714 oldBucket!40))))

(assert (=> d!1457560 (= (removePairForKey!1135 (t!358714 oldBucket!40) key!4968) lt!1785183)))

(assert (= (and d!1457560 c!791990) b!4626835))

(assert (= (and d!1457560 (not c!791990)) b!4626836))

(assert (= (and b!4626836 c!791989) b!4626837))

(assert (= (and b!4626836 (not c!791989)) b!4626838))

(declare-fun m!5470229 () Bool)

(assert (=> b!4626837 m!5470229))

(declare-fun m!5470231 () Bool)

(assert (=> d!1457560 m!5470231))

(assert (=> d!1457560 m!5470227))

(assert (=> b!4626788 d!1457560))

(declare-fun b!4626857 () Bool)

(declare-fun e!2886188 () Bool)

(declare-datatypes ((List!51678 0))(
  ( (Nil!51554) (Cons!51554 (h!57612 K!12930) (t!358718 List!51678)) )
))
(declare-fun contains!14611 (List!51678 K!12930) Bool)

(declare-fun keys!18165 (ListMap!4293) List!51678)

(assert (=> b!4626857 (= e!2886188 (not (contains!14611 (keys!18165 lt!1785161) key!4968)))))

(declare-fun b!4626858 () Bool)

(declare-fun e!2886184 () List!51678)

(declare-fun getKeysList!660 (List!51676) List!51678)

(assert (=> b!4626858 (= e!2886184 (getKeysList!660 (toList!4989 lt!1785161)))))

(declare-fun d!1457562 () Bool)

(declare-fun e!2886185 () Bool)

(assert (=> d!1457562 e!2886185))

(declare-fun res!1940469 () Bool)

(assert (=> d!1457562 (=> res!1940469 e!2886185)))

(assert (=> d!1457562 (= res!1940469 e!2886188)))

(declare-fun res!1940468 () Bool)

(assert (=> d!1457562 (=> (not res!1940468) (not e!2886188))))

(declare-fun lt!1785207 () Bool)

(assert (=> d!1457562 (= res!1940468 (not lt!1785207))))

(declare-fun lt!1785201 () Bool)

(assert (=> d!1457562 (= lt!1785207 lt!1785201)))

(declare-fun lt!1785203 () Unit!112384)

(declare-fun e!2886183 () Unit!112384)

(assert (=> d!1457562 (= lt!1785203 e!2886183)))

(declare-fun c!791997 () Bool)

(assert (=> d!1457562 (= c!791997 lt!1785201)))

(declare-fun containsKey!2465 (List!51676 K!12930) Bool)

(assert (=> d!1457562 (= lt!1785201 (containsKey!2465 (toList!4989 lt!1785161) key!4968))))

(assert (=> d!1457562 (= (contains!14609 lt!1785161 key!4968) lt!1785207)))

(declare-fun bm!322749 () Bool)

(declare-fun call!322754 () Bool)

(assert (=> bm!322749 (= call!322754 (contains!14611 e!2886184 key!4968))))

(declare-fun c!791998 () Bool)

(assert (=> bm!322749 (= c!791998 c!791997)))

(declare-fun b!4626859 () Bool)

(declare-fun lt!1785204 () Unit!112384)

(assert (=> b!4626859 (= e!2886183 lt!1785204)))

(declare-fun lt!1785200 () Unit!112384)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1363 (List!51676 K!12930) Unit!112384)

(assert (=> b!4626859 (= lt!1785200 (lemmaContainsKeyImpliesGetValueByKeyDefined!1363 (toList!4989 lt!1785161) key!4968))))

(declare-datatypes ((Option!11608 0))(
  ( (None!11607) (Some!11607 (v!45749 V!13176)) )
))
(declare-fun isDefined!8872 (Option!11608) Bool)

(declare-fun getValueByKey!1462 (List!51676 K!12930) Option!11608)

(assert (=> b!4626859 (isDefined!8872 (getValueByKey!1462 (toList!4989 lt!1785161) key!4968))))

(declare-fun lt!1785205 () Unit!112384)

(assert (=> b!4626859 (= lt!1785205 lt!1785200)))

(declare-fun lemmaInListThenGetKeysListContains!655 (List!51676 K!12930) Unit!112384)

(assert (=> b!4626859 (= lt!1785204 (lemmaInListThenGetKeysListContains!655 (toList!4989 lt!1785161) key!4968))))

(assert (=> b!4626859 call!322754))

(declare-fun b!4626860 () Bool)

(assert (=> b!4626860 false))

(declare-fun lt!1785202 () Unit!112384)

(declare-fun lt!1785206 () Unit!112384)

(assert (=> b!4626860 (= lt!1785202 lt!1785206)))

(assert (=> b!4626860 (containsKey!2465 (toList!4989 lt!1785161) key!4968)))

(declare-fun lemmaInGetKeysListThenContainsKey!659 (List!51676 K!12930) Unit!112384)

(assert (=> b!4626860 (= lt!1785206 (lemmaInGetKeysListThenContainsKey!659 (toList!4989 lt!1785161) key!4968))))

(declare-fun e!2886186 () Unit!112384)

(declare-fun Unit!112408 () Unit!112384)

(assert (=> b!4626860 (= e!2886186 Unit!112408)))

(declare-fun b!4626861 () Bool)

(declare-fun Unit!112409 () Unit!112384)

(assert (=> b!4626861 (= e!2886186 Unit!112409)))

(declare-fun b!4626862 () Bool)

(assert (=> b!4626862 (= e!2886184 (keys!18165 lt!1785161))))

(declare-fun b!4626863 () Bool)

(declare-fun e!2886187 () Bool)

(assert (=> b!4626863 (= e!2886185 e!2886187)))

(declare-fun res!1940467 () Bool)

(assert (=> b!4626863 (=> (not res!1940467) (not e!2886187))))

(assert (=> b!4626863 (= res!1940467 (isDefined!8872 (getValueByKey!1462 (toList!4989 lt!1785161) key!4968)))))

(declare-fun b!4626864 () Bool)

(assert (=> b!4626864 (= e!2886187 (contains!14611 (keys!18165 lt!1785161) key!4968))))

(declare-fun b!4626865 () Bool)

(assert (=> b!4626865 (= e!2886183 e!2886186)))

(declare-fun c!791999 () Bool)

(assert (=> b!4626865 (= c!791999 call!322754)))

(assert (= (and d!1457562 c!791997) b!4626859))

(assert (= (and d!1457562 (not c!791997)) b!4626865))

(assert (= (and b!4626865 c!791999) b!4626860))

(assert (= (and b!4626865 (not c!791999)) b!4626861))

(assert (= (or b!4626859 b!4626865) bm!322749))

(assert (= (and bm!322749 c!791998) b!4626858))

(assert (= (and bm!322749 (not c!791998)) b!4626862))

(assert (= (and d!1457562 res!1940468) b!4626857))

(assert (= (and d!1457562 (not res!1940469)) b!4626863))

(assert (= (and b!4626863 res!1940467) b!4626864))

(declare-fun m!5470233 () Bool)

(assert (=> b!4626863 m!5470233))

(assert (=> b!4626863 m!5470233))

(declare-fun m!5470235 () Bool)

(assert (=> b!4626863 m!5470235))

(declare-fun m!5470237 () Bool)

(assert (=> b!4626860 m!5470237))

(declare-fun m!5470239 () Bool)

(assert (=> b!4626860 m!5470239))

(declare-fun m!5470241 () Bool)

(assert (=> b!4626858 m!5470241))

(declare-fun m!5470243 () Bool)

(assert (=> b!4626859 m!5470243))

(assert (=> b!4626859 m!5470233))

(assert (=> b!4626859 m!5470233))

(assert (=> b!4626859 m!5470235))

(declare-fun m!5470245 () Bool)

(assert (=> b!4626859 m!5470245))

(assert (=> d!1457562 m!5470237))

(declare-fun m!5470247 () Bool)

(assert (=> bm!322749 m!5470247))

(declare-fun m!5470249 () Bool)

(assert (=> b!4626857 m!5470249))

(assert (=> b!4626857 m!5470249))

(declare-fun m!5470251 () Bool)

(assert (=> b!4626857 m!5470251))

(assert (=> b!4626862 m!5470249))

(assert (=> b!4626864 m!5470249))

(assert (=> b!4626864 m!5470249))

(assert (=> b!4626864 m!5470251))

(assert (=> b!4626798 d!1457562))

(declare-fun bs!1024332 () Bool)

(declare-fun d!1457564 () Bool)

(assert (= bs!1024332 (and d!1457564 b!4626792)))

(declare-fun lambda!192470 () Int)

(assert (=> bs!1024332 (= lambda!192470 lambda!192450)))

(declare-fun lt!1785240 () ListMap!4293)

(declare-fun invariantList!1210 (List!51676) Bool)

(assert (=> d!1457564 (invariantList!1210 (toList!4989 lt!1785240))))

(declare-fun e!2886193 () ListMap!4293)

(assert (=> d!1457564 (= lt!1785240 e!2886193)))

(declare-fun c!792004 () Bool)

(assert (=> d!1457564 (= c!792004 ((_ is Cons!51553) lt!1785173))))

(assert (=> d!1457564 (forall!10834 lt!1785173 lambda!192470)))

(assert (=> d!1457564 (= (extractMap!1568 lt!1785173) lt!1785240)))

(declare-fun b!4626874 () Bool)

(assert (=> b!4626874 (= e!2886193 (addToMapMapFromBucket!973 (_2!29542 (h!57609 lt!1785173)) (extractMap!1568 (t!358715 lt!1785173))))))

(declare-fun b!4626875 () Bool)

(assert (=> b!4626875 (= e!2886193 (ListMap!4294 Nil!51552))))

(assert (= (and d!1457564 c!792004) b!4626874))

(assert (= (and d!1457564 (not c!792004)) b!4626875))

(declare-fun m!5470253 () Bool)

(assert (=> d!1457564 m!5470253))

(declare-fun m!5470255 () Bool)

(assert (=> d!1457564 m!5470255))

(declare-fun m!5470257 () Bool)

(assert (=> b!4626874 m!5470257))

(assert (=> b!4626874 m!5470257))

(declare-fun m!5470259 () Bool)

(assert (=> b!4626874 m!5470259))

(assert (=> b!4626798 d!1457564))

(declare-fun d!1457566 () Bool)

(declare-fun res!1940470 () Bool)

(declare-fun e!2886194 () Bool)

(assert (=> d!1457566 (=> res!1940470 e!2886194)))

(assert (=> d!1457566 (= res!1940470 (not ((_ is Cons!51552) newBucket!224)))))

(assert (=> d!1457566 (= (noDuplicateKeys!1512 newBucket!224) e!2886194)))

(declare-fun b!4626876 () Bool)

(declare-fun e!2886195 () Bool)

(assert (=> b!4626876 (= e!2886194 e!2886195)))

(declare-fun res!1940471 () Bool)

(assert (=> b!4626876 (=> (not res!1940471) (not e!2886195))))

(assert (=> b!4626876 (= res!1940471 (not (containsKey!2464 (t!358714 newBucket!224) (_1!29541 (h!57608 newBucket!224)))))))

(declare-fun b!4626877 () Bool)

(assert (=> b!4626877 (= e!2886195 (noDuplicateKeys!1512 (t!358714 newBucket!224)))))

(assert (= (and d!1457566 (not res!1940470)) b!4626876))

(assert (= (and b!4626876 res!1940471) b!4626877))

(declare-fun m!5470261 () Bool)

(assert (=> b!4626876 m!5470261))

(declare-fun m!5470263 () Bool)

(assert (=> b!4626877 m!5470263))

(assert (=> b!4626796 d!1457566))

(declare-fun b!4626879 () Bool)

(declare-fun e!2886197 () List!51676)

(declare-fun e!2886196 () List!51676)

(assert (=> b!4626879 (= e!2886197 e!2886196)))

(declare-fun c!792005 () Bool)

(assert (=> b!4626879 (= c!792005 ((_ is Cons!51552) lt!1785174))))

(declare-fun b!4626878 () Bool)

(assert (=> b!4626878 (= e!2886197 (t!358714 lt!1785174))))

(declare-fun b!4626881 () Bool)

(assert (=> b!4626881 (= e!2886196 Nil!51552)))

(declare-fun b!4626880 () Bool)

(assert (=> b!4626880 (= e!2886196 (Cons!51552 (h!57608 lt!1785174) (removePairForKey!1135 (t!358714 lt!1785174) key!4968)))))

(declare-fun d!1457568 () Bool)

(declare-fun lt!1785251 () List!51676)

(assert (=> d!1457568 (not (containsKey!2464 lt!1785251 key!4968))))

(assert (=> d!1457568 (= lt!1785251 e!2886197)))

(declare-fun c!792006 () Bool)

(assert (=> d!1457568 (= c!792006 (and ((_ is Cons!51552) lt!1785174) (= (_1!29541 (h!57608 lt!1785174)) key!4968)))))

(assert (=> d!1457568 (noDuplicateKeys!1512 lt!1785174)))

(assert (=> d!1457568 (= (removePairForKey!1135 lt!1785174 key!4968) lt!1785251)))

(assert (= (and d!1457568 c!792006) b!4626878))

(assert (= (and d!1457568 (not c!792006)) b!4626879))

(assert (= (and b!4626879 c!792005) b!4626880))

(assert (= (and b!4626879 (not c!792005)) b!4626881))

(declare-fun m!5470265 () Bool)

(assert (=> b!4626880 m!5470265))

(declare-fun m!5470267 () Bool)

(assert (=> d!1457568 m!5470267))

(declare-fun m!5470269 () Bool)

(assert (=> d!1457568 m!5470269))

(assert (=> b!4626795 d!1457568))

(declare-fun d!1457570 () Bool)

(assert (=> d!1457570 (= (tail!8147 newBucket!224) (t!358714 newBucket!224))))

(assert (=> b!4626795 d!1457570))

(declare-fun d!1457572 () Bool)

(assert (=> d!1457572 (= (tail!8147 oldBucket!40) (t!358714 oldBucket!40))))

(assert (=> b!4626795 d!1457572))

(declare-fun b!4626885 () Bool)

(declare-fun e!2886201 () List!51676)

(declare-fun e!2886200 () List!51676)

(assert (=> b!4626885 (= e!2886201 e!2886200)))

(declare-fun c!792007 () Bool)

(assert (=> b!4626885 (= c!792007 ((_ is Cons!51552) oldBucket!40))))

(declare-fun b!4626884 () Bool)

(assert (=> b!4626884 (= e!2886201 (t!358714 oldBucket!40))))

(declare-fun b!4626887 () Bool)

(assert (=> b!4626887 (= e!2886200 Nil!51552)))

(declare-fun b!4626886 () Bool)

(assert (=> b!4626886 (= e!2886200 (Cons!51552 (h!57608 oldBucket!40) (removePairForKey!1135 (t!358714 oldBucket!40) key!4968)))))

(declare-fun d!1457574 () Bool)

(declare-fun lt!1785254 () List!51676)

(assert (=> d!1457574 (not (containsKey!2464 lt!1785254 key!4968))))

(assert (=> d!1457574 (= lt!1785254 e!2886201)))

(declare-fun c!792008 () Bool)

(assert (=> d!1457574 (= c!792008 (and ((_ is Cons!51552) oldBucket!40) (= (_1!29541 (h!57608 oldBucket!40)) key!4968)))))

(assert (=> d!1457574 (noDuplicateKeys!1512 oldBucket!40)))

(assert (=> d!1457574 (= (removePairForKey!1135 oldBucket!40 key!4968) lt!1785254)))

(assert (= (and d!1457574 c!792008) b!4626884))

(assert (= (and d!1457574 (not c!792008)) b!4626885))

(assert (= (and b!4626885 c!792007) b!4626886))

(assert (= (and b!4626885 (not c!792007)) b!4626887))

(assert (=> b!4626886 m!5470209))

(declare-fun m!5470271 () Bool)

(assert (=> d!1457574 m!5470271))

(assert (=> d!1457574 m!5470141))

(assert (=> b!4626794 d!1457574))

(declare-fun d!1457576 () Bool)

(assert (=> d!1457576 (eq!827 (addToMapMapFromBucket!973 (Cons!51552 lt!1785166 lt!1785153) (ListMap!4294 Nil!51552)) (+!1878 (addToMapMapFromBucket!973 lt!1785153 (ListMap!4294 Nil!51552)) lt!1785166))))

(declare-fun lt!1785278 () Unit!112384)

(declare-fun choose!31350 (tuple2!52494 List!51676 ListMap!4293) Unit!112384)

(assert (=> d!1457576 (= lt!1785278 (choose!31350 lt!1785166 lt!1785153 (ListMap!4294 Nil!51552)))))

(assert (=> d!1457576 (noDuplicateKeys!1512 lt!1785153)))

(assert (=> d!1457576 (= (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!78 lt!1785166 lt!1785153 (ListMap!4294 Nil!51552)) lt!1785278)))

(declare-fun bs!1024339 () Bool)

(assert (= bs!1024339 d!1457576))

(assert (=> bs!1024339 m!5470191))

(declare-fun m!5470305 () Bool)

(assert (=> bs!1024339 m!5470305))

(assert (=> bs!1024339 m!5470191))

(assert (=> bs!1024339 m!5470171))

(assert (=> bs!1024339 m!5470169))

(assert (=> bs!1024339 m!5470171))

(assert (=> bs!1024339 m!5470173))

(assert (=> bs!1024339 m!5470169))

(declare-fun m!5470307 () Bool)

(assert (=> bs!1024339 m!5470307))

(assert (=> b!4626804 d!1457576))

(declare-fun b!4626899 () Bool)

(declare-fun e!2886212 () Bool)

(assert (=> b!4626899 (= e!2886212 (not (contains!14611 (keys!18165 lt!1785158) key!4968)))))

(declare-fun b!4626900 () Bool)

(declare-fun e!2886208 () List!51678)

(assert (=> b!4626900 (= e!2886208 (getKeysList!660 (toList!4989 lt!1785158)))))

(declare-fun d!1457580 () Bool)

(declare-fun e!2886209 () Bool)

(assert (=> d!1457580 e!2886209))

(declare-fun res!1940483 () Bool)

(assert (=> d!1457580 (=> res!1940483 e!2886209)))

(assert (=> d!1457580 (= res!1940483 e!2886212)))

(declare-fun res!1940482 () Bool)

(assert (=> d!1457580 (=> (not res!1940482) (not e!2886212))))

(declare-fun lt!1785286 () Bool)

(assert (=> d!1457580 (= res!1940482 (not lt!1785286))))

(declare-fun lt!1785280 () Bool)

(assert (=> d!1457580 (= lt!1785286 lt!1785280)))

(declare-fun lt!1785282 () Unit!112384)

(declare-fun e!2886207 () Unit!112384)

(assert (=> d!1457580 (= lt!1785282 e!2886207)))

(declare-fun c!792010 () Bool)

(assert (=> d!1457580 (= c!792010 lt!1785280)))

(assert (=> d!1457580 (= lt!1785280 (containsKey!2465 (toList!4989 lt!1785158) key!4968))))

(assert (=> d!1457580 (= (contains!14609 lt!1785158 key!4968) lt!1785286)))

(declare-fun bm!322759 () Bool)

(declare-fun call!322764 () Bool)

(assert (=> bm!322759 (= call!322764 (contains!14611 e!2886208 key!4968))))

(declare-fun c!792011 () Bool)

(assert (=> bm!322759 (= c!792011 c!792010)))

(declare-fun b!4626901 () Bool)

(declare-fun lt!1785283 () Unit!112384)

(assert (=> b!4626901 (= e!2886207 lt!1785283)))

(declare-fun lt!1785279 () Unit!112384)

(assert (=> b!4626901 (= lt!1785279 (lemmaContainsKeyImpliesGetValueByKeyDefined!1363 (toList!4989 lt!1785158) key!4968))))

(assert (=> b!4626901 (isDefined!8872 (getValueByKey!1462 (toList!4989 lt!1785158) key!4968))))

(declare-fun lt!1785284 () Unit!112384)

(assert (=> b!4626901 (= lt!1785284 lt!1785279)))

(assert (=> b!4626901 (= lt!1785283 (lemmaInListThenGetKeysListContains!655 (toList!4989 lt!1785158) key!4968))))

(assert (=> b!4626901 call!322764))

(declare-fun b!4626902 () Bool)

(assert (=> b!4626902 false))

(declare-fun lt!1785281 () Unit!112384)

(declare-fun lt!1785285 () Unit!112384)

(assert (=> b!4626902 (= lt!1785281 lt!1785285)))

(assert (=> b!4626902 (containsKey!2465 (toList!4989 lt!1785158) key!4968)))

(assert (=> b!4626902 (= lt!1785285 (lemmaInGetKeysListThenContainsKey!659 (toList!4989 lt!1785158) key!4968))))

(declare-fun e!2886210 () Unit!112384)

(declare-fun Unit!112421 () Unit!112384)

(assert (=> b!4626902 (= e!2886210 Unit!112421)))

(declare-fun b!4626903 () Bool)

(declare-fun Unit!112422 () Unit!112384)

(assert (=> b!4626903 (= e!2886210 Unit!112422)))

(declare-fun b!4626904 () Bool)

(assert (=> b!4626904 (= e!2886208 (keys!18165 lt!1785158))))

(declare-fun b!4626905 () Bool)

(declare-fun e!2886211 () Bool)

(assert (=> b!4626905 (= e!2886209 e!2886211)))

(declare-fun res!1940481 () Bool)

(assert (=> b!4626905 (=> (not res!1940481) (not e!2886211))))

(assert (=> b!4626905 (= res!1940481 (isDefined!8872 (getValueByKey!1462 (toList!4989 lt!1785158) key!4968)))))

(declare-fun b!4626906 () Bool)

(assert (=> b!4626906 (= e!2886211 (contains!14611 (keys!18165 lt!1785158) key!4968))))

(declare-fun b!4626907 () Bool)

(assert (=> b!4626907 (= e!2886207 e!2886210)))

(declare-fun c!792012 () Bool)

(assert (=> b!4626907 (= c!792012 call!322764)))

(assert (= (and d!1457580 c!792010) b!4626901))

(assert (= (and d!1457580 (not c!792010)) b!4626907))

(assert (= (and b!4626907 c!792012) b!4626902))

(assert (= (and b!4626907 (not c!792012)) b!4626903))

(assert (= (or b!4626901 b!4626907) bm!322759))

(assert (= (and bm!322759 c!792011) b!4626900))

(assert (= (and bm!322759 (not c!792011)) b!4626904))

(assert (= (and d!1457580 res!1940482) b!4626899))

(assert (= (and d!1457580 (not res!1940483)) b!4626905))

(assert (= (and b!4626905 res!1940481) b!4626906))

(declare-fun m!5470309 () Bool)

(assert (=> b!4626905 m!5470309))

(assert (=> b!4626905 m!5470309))

(declare-fun m!5470311 () Bool)

(assert (=> b!4626905 m!5470311))

(declare-fun m!5470313 () Bool)

(assert (=> b!4626902 m!5470313))

(declare-fun m!5470315 () Bool)

(assert (=> b!4626902 m!5470315))

(declare-fun m!5470317 () Bool)

(assert (=> b!4626900 m!5470317))

(declare-fun m!5470319 () Bool)

(assert (=> b!4626901 m!5470319))

(assert (=> b!4626901 m!5470309))

(assert (=> b!4626901 m!5470309))

(assert (=> b!4626901 m!5470311))

(declare-fun m!5470321 () Bool)

(assert (=> b!4626901 m!5470321))

(assert (=> d!1457580 m!5470313))

(declare-fun m!5470323 () Bool)

(assert (=> bm!322759 m!5470323))

(declare-fun m!5470325 () Bool)

(assert (=> b!4626899 m!5470325))

(assert (=> b!4626899 m!5470325))

(declare-fun m!5470327 () Bool)

(assert (=> b!4626899 m!5470327))

(assert (=> b!4626904 m!5470325))

(assert (=> b!4626906 m!5470325))

(assert (=> b!4626906 m!5470325))

(assert (=> b!4626906 m!5470327))

(assert (=> b!4626804 d!1457580))

(declare-fun d!1457582 () Bool)

(assert (=> d!1457582 (= (head!9646 oldBucket!40) (h!57608 oldBucket!40))))

(assert (=> b!4626804 d!1457582))

(declare-fun bs!1024340 () Bool)

(declare-fun d!1457584 () Bool)

(assert (= bs!1024340 (and d!1457584 b!4626792)))

(declare-fun lambda!192491 () Int)

(assert (=> bs!1024340 (= lambda!192491 lambda!192450)))

(declare-fun bs!1024341 () Bool)

(assert (= bs!1024341 (and d!1457584 d!1457564)))

(assert (=> bs!1024341 (= lambda!192491 lambda!192470)))

(declare-fun lt!1785289 () ListMap!4293)

(assert (=> d!1457584 (invariantList!1210 (toList!4989 lt!1785289))))

(declare-fun e!2886215 () ListMap!4293)

(assert (=> d!1457584 (= lt!1785289 e!2886215)))

(declare-fun c!792015 () Bool)

(assert (=> d!1457584 (= c!792015 ((_ is Cons!51553) lt!1785164))))

(assert (=> d!1457584 (forall!10834 lt!1785164 lambda!192491)))

(assert (=> d!1457584 (= (extractMap!1568 lt!1785164) lt!1785289)))

(declare-fun b!4626912 () Bool)

(assert (=> b!4626912 (= e!2886215 (addToMapMapFromBucket!973 (_2!29542 (h!57609 lt!1785164)) (extractMap!1568 (t!358715 lt!1785164))))))

(declare-fun b!4626913 () Bool)

(assert (=> b!4626913 (= e!2886215 (ListMap!4294 Nil!51552))))

(assert (= (and d!1457584 c!792015) b!4626912))

(assert (= (and d!1457584 (not c!792015)) b!4626913))

(declare-fun m!5470329 () Bool)

(assert (=> d!1457584 m!5470329))

(declare-fun m!5470333 () Bool)

(assert (=> d!1457584 m!5470333))

(declare-fun m!5470337 () Bool)

(assert (=> b!4626912 m!5470337))

(assert (=> b!4626912 m!5470337))

(declare-fun m!5470343 () Bool)

(assert (=> b!4626912 m!5470343))

(assert (=> b!4626804 d!1457584))

(declare-fun d!1457588 () Bool)

(declare-fun e!2886236 () Bool)

(assert (=> d!1457588 e!2886236))

(declare-fun res!1940507 () Bool)

(assert (=> d!1457588 (=> (not res!1940507) (not e!2886236))))

(declare-fun lt!1785316 () ListMap!4293)

(assert (=> d!1457588 (= res!1940507 (contains!14609 lt!1785316 (_1!29541 (h!57608 oldBucket!40))))))

(declare-fun lt!1785314 () List!51676)

(assert (=> d!1457588 (= lt!1785316 (ListMap!4294 lt!1785314))))

(declare-fun lt!1785315 () Unit!112384)

(declare-fun lt!1785313 () Unit!112384)

(assert (=> d!1457588 (= lt!1785315 lt!1785313)))

(assert (=> d!1457588 (= (getValueByKey!1462 lt!1785314 (_1!29541 (h!57608 oldBucket!40))) (Some!11607 (_2!29541 (h!57608 oldBucket!40))))))

(declare-fun lemmaContainsTupThenGetReturnValue!854 (List!51676 K!12930 V!13176) Unit!112384)

(assert (=> d!1457588 (= lt!1785313 (lemmaContainsTupThenGetReturnValue!854 lt!1785314 (_1!29541 (h!57608 oldBucket!40)) (_2!29541 (h!57608 oldBucket!40))))))

(declare-fun insertNoDuplicatedKeys!362 (List!51676 K!12930 V!13176) List!51676)

(assert (=> d!1457588 (= lt!1785314 (insertNoDuplicatedKeys!362 (toList!4989 (extractMap!1568 (Cons!51553 (tuple2!52497 hash!414 lt!1785174) Nil!51553))) (_1!29541 (h!57608 oldBucket!40)) (_2!29541 (h!57608 oldBucket!40))))))

(assert (=> d!1457588 (= (+!1878 (extractMap!1568 (Cons!51553 (tuple2!52497 hash!414 lt!1785174) Nil!51553)) (h!57608 oldBucket!40)) lt!1785316)))

(declare-fun b!4626942 () Bool)

(declare-fun res!1940506 () Bool)

(assert (=> b!4626942 (=> (not res!1940506) (not e!2886236))))

(assert (=> b!4626942 (= res!1940506 (= (getValueByKey!1462 (toList!4989 lt!1785316) (_1!29541 (h!57608 oldBucket!40))) (Some!11607 (_2!29541 (h!57608 oldBucket!40)))))))

(declare-fun b!4626943 () Bool)

(declare-fun contains!14612 (List!51676 tuple2!52494) Bool)

(assert (=> b!4626943 (= e!2886236 (contains!14612 (toList!4989 lt!1785316) (h!57608 oldBucket!40)))))

(assert (= (and d!1457588 res!1940507) b!4626942))

(assert (= (and b!4626942 res!1940506) b!4626943))

(declare-fun m!5470389 () Bool)

(assert (=> d!1457588 m!5470389))

(declare-fun m!5470391 () Bool)

(assert (=> d!1457588 m!5470391))

(declare-fun m!5470393 () Bool)

(assert (=> d!1457588 m!5470393))

(declare-fun m!5470395 () Bool)

(assert (=> d!1457588 m!5470395))

(declare-fun m!5470397 () Bool)

(assert (=> b!4626942 m!5470397))

(declare-fun m!5470399 () Bool)

(assert (=> b!4626943 m!5470399))

(assert (=> b!4626804 d!1457588))

(declare-fun d!1457608 () Bool)

(assert (=> d!1457608 (= (head!9646 newBucket!224) (h!57608 newBucket!224))))

(assert (=> b!4626804 d!1457608))

(declare-fun b!4627021 () Bool)

(assert (=> b!4627021 true))

(declare-fun bs!1024504 () Bool)

(declare-fun b!4627023 () Bool)

(assert (= bs!1024504 (and b!4627023 b!4627021)))

(declare-fun lambda!192546 () Int)

(declare-fun lambda!192545 () Int)

(assert (=> bs!1024504 (= lambda!192546 lambda!192545)))

(assert (=> b!4627023 true))

(declare-fun lt!1785523 () ListMap!4293)

(declare-fun lambda!192547 () Int)

(assert (=> bs!1024504 (= (= lt!1785523 (ListMap!4294 Nil!51552)) (= lambda!192547 lambda!192545))))

(assert (=> b!4627023 (= (= lt!1785523 (ListMap!4294 Nil!51552)) (= lambda!192547 lambda!192546))))

(assert (=> b!4627023 true))

(declare-fun bs!1024506 () Bool)

(declare-fun d!1457610 () Bool)

(assert (= bs!1024506 (and d!1457610 b!4627021)))

(declare-fun lt!1785513 () ListMap!4293)

(declare-fun lambda!192548 () Int)

(assert (=> bs!1024506 (= (= lt!1785513 (ListMap!4294 Nil!51552)) (= lambda!192548 lambda!192545))))

(declare-fun bs!1024507 () Bool)

(assert (= bs!1024507 (and d!1457610 b!4627023)))

(assert (=> bs!1024507 (= (= lt!1785513 (ListMap!4294 Nil!51552)) (= lambda!192548 lambda!192546))))

(assert (=> bs!1024507 (= (= lt!1785513 lt!1785523) (= lambda!192548 lambda!192547))))

(assert (=> d!1457610 true))

(declare-fun e!2886285 () Bool)

(assert (=> d!1457610 e!2886285))

(declare-fun res!1940547 () Bool)

(assert (=> d!1457610 (=> (not res!1940547) (not e!2886285))))

(declare-fun forall!10836 (List!51676 Int) Bool)

(assert (=> d!1457610 (= res!1940547 (forall!10836 lt!1785153 lambda!192548))))

(declare-fun e!2886286 () ListMap!4293)

(assert (=> d!1457610 (= lt!1785513 e!2886286)))

(declare-fun c!792038 () Bool)

(assert (=> d!1457610 (= c!792038 ((_ is Nil!51552) lt!1785153))))

(assert (=> d!1457610 (noDuplicateKeys!1512 lt!1785153)))

(assert (=> d!1457610 (= (addToMapMapFromBucket!973 lt!1785153 (ListMap!4294 Nil!51552)) lt!1785513)))

(declare-fun call!322786 () Bool)

(declare-fun bm!322781 () Bool)

(assert (=> bm!322781 (= call!322786 (forall!10836 (toList!4989 (ListMap!4294 Nil!51552)) (ite c!792038 lambda!192545 lambda!192547)))))

(assert (=> b!4627021 (= e!2886286 (ListMap!4294 Nil!51552))))

(declare-fun lt!1785520 () Unit!112384)

(declare-fun call!322788 () Unit!112384)

(assert (=> b!4627021 (= lt!1785520 call!322788)))

(declare-fun call!322787 () Bool)

(assert (=> b!4627021 call!322787))

(declare-fun lt!1785522 () Unit!112384)

(assert (=> b!4627021 (= lt!1785522 lt!1785520)))

(assert (=> b!4627021 call!322786))

(declare-fun lt!1785507 () Unit!112384)

(declare-fun Unit!112423 () Unit!112384)

(assert (=> b!4627021 (= lt!1785507 Unit!112423)))

(declare-fun b!4627022 () Bool)

(declare-fun res!1940548 () Bool)

(assert (=> b!4627022 (=> (not res!1940548) (not e!2886285))))

(assert (=> b!4627022 (= res!1940548 (forall!10836 (toList!4989 (ListMap!4294 Nil!51552)) lambda!192548))))

(assert (=> b!4627023 (= e!2886286 lt!1785523)))

(declare-fun lt!1785514 () ListMap!4293)

(assert (=> b!4627023 (= lt!1785514 (+!1878 (ListMap!4294 Nil!51552) (h!57608 lt!1785153)))))

(assert (=> b!4627023 (= lt!1785523 (addToMapMapFromBucket!973 (t!358714 lt!1785153) (+!1878 (ListMap!4294 Nil!51552) (h!57608 lt!1785153))))))

(declare-fun lt!1785516 () Unit!112384)

(assert (=> b!4627023 (= lt!1785516 call!322788)))

(assert (=> b!4627023 (forall!10836 (toList!4989 (ListMap!4294 Nil!51552)) lambda!192546)))

(declare-fun lt!1785511 () Unit!112384)

(assert (=> b!4627023 (= lt!1785511 lt!1785516)))

(assert (=> b!4627023 (forall!10836 (toList!4989 lt!1785514) lambda!192547)))

(declare-fun lt!1785504 () Unit!112384)

(declare-fun Unit!112424 () Unit!112384)

(assert (=> b!4627023 (= lt!1785504 Unit!112424)))

(assert (=> b!4627023 (forall!10836 (t!358714 lt!1785153) lambda!192547)))

(declare-fun lt!1785517 () Unit!112384)

(declare-fun Unit!112425 () Unit!112384)

(assert (=> b!4627023 (= lt!1785517 Unit!112425)))

(declare-fun lt!1785505 () Unit!112384)

(declare-fun Unit!112426 () Unit!112384)

(assert (=> b!4627023 (= lt!1785505 Unit!112426)))

(declare-fun lt!1785506 () Unit!112384)

(declare-fun forallContained!3064 (List!51676 Int tuple2!52494) Unit!112384)

(assert (=> b!4627023 (= lt!1785506 (forallContained!3064 (toList!4989 lt!1785514) lambda!192547 (h!57608 lt!1785153)))))

(assert (=> b!4627023 (contains!14609 lt!1785514 (_1!29541 (h!57608 lt!1785153)))))

(declare-fun lt!1785512 () Unit!112384)

(declare-fun Unit!112427 () Unit!112384)

(assert (=> b!4627023 (= lt!1785512 Unit!112427)))

(assert (=> b!4627023 (contains!14609 lt!1785523 (_1!29541 (h!57608 lt!1785153)))))

(declare-fun lt!1785519 () Unit!112384)

(declare-fun Unit!112429 () Unit!112384)

(assert (=> b!4627023 (= lt!1785519 Unit!112429)))

(assert (=> b!4627023 (forall!10836 lt!1785153 lambda!192547)))

(declare-fun lt!1785521 () Unit!112384)

(declare-fun Unit!112431 () Unit!112384)

(assert (=> b!4627023 (= lt!1785521 Unit!112431)))

(assert (=> b!4627023 (forall!10836 (toList!4989 lt!1785514) lambda!192547)))

(declare-fun lt!1785503 () Unit!112384)

(declare-fun Unit!112433 () Unit!112384)

(assert (=> b!4627023 (= lt!1785503 Unit!112433)))

(declare-fun lt!1785509 () Unit!112384)

(declare-fun Unit!112434 () Unit!112384)

(assert (=> b!4627023 (= lt!1785509 Unit!112434)))

(declare-fun lt!1785510 () Unit!112384)

(declare-fun addForallContainsKeyThenBeforeAdding!511 (ListMap!4293 ListMap!4293 K!12930 V!13176) Unit!112384)

(assert (=> b!4627023 (= lt!1785510 (addForallContainsKeyThenBeforeAdding!511 (ListMap!4294 Nil!51552) lt!1785523 (_1!29541 (h!57608 lt!1785153)) (_2!29541 (h!57608 lt!1785153))))))

(assert (=> b!4627023 (forall!10836 (toList!4989 (ListMap!4294 Nil!51552)) lambda!192547)))

(declare-fun lt!1785518 () Unit!112384)

(assert (=> b!4627023 (= lt!1785518 lt!1785510)))

(assert (=> b!4627023 call!322787))

(declare-fun lt!1785515 () Unit!112384)

(declare-fun Unit!112438 () Unit!112384)

(assert (=> b!4627023 (= lt!1785515 Unit!112438)))

(declare-fun res!1940549 () Bool)

(assert (=> b!4627023 (= res!1940549 (forall!10836 lt!1785153 lambda!192547))))

(declare-fun e!2886287 () Bool)

(assert (=> b!4627023 (=> (not res!1940549) (not e!2886287))))

(assert (=> b!4627023 e!2886287))

(declare-fun lt!1785508 () Unit!112384)

(declare-fun Unit!112441 () Unit!112384)

(assert (=> b!4627023 (= lt!1785508 Unit!112441)))

(declare-fun b!4627024 () Bool)

(assert (=> b!4627024 (= e!2886287 call!322786)))

(declare-fun bm!322782 () Bool)

(assert (=> bm!322782 (= call!322787 (forall!10836 (toList!4989 (ListMap!4294 Nil!51552)) (ite c!792038 lambda!192545 lambda!192547)))))

(declare-fun bm!322783 () Bool)

(declare-fun lemmaContainsAllItsOwnKeys!512 (ListMap!4293) Unit!112384)

(assert (=> bm!322783 (= call!322788 (lemmaContainsAllItsOwnKeys!512 (ListMap!4294 Nil!51552)))))

(declare-fun b!4627025 () Bool)

(assert (=> b!4627025 (= e!2886285 (invariantList!1210 (toList!4989 lt!1785513)))))

(assert (= (and d!1457610 c!792038) b!4627021))

(assert (= (and d!1457610 (not c!792038)) b!4627023))

(assert (= (and b!4627023 res!1940549) b!4627024))

(assert (= (or b!4627021 b!4627023) bm!322783))

(assert (= (or b!4627021 b!4627024) bm!322781))

(assert (= (or b!4627021 b!4627023) bm!322782))

(assert (= (and d!1457610 res!1940547) b!4627022))

(assert (= (and b!4627022 res!1940548) b!4627025))

(declare-fun m!5470703 () Bool)

(assert (=> b!4627023 m!5470703))

(assert (=> b!4627023 m!5470703))

(declare-fun m!5470705 () Bool)

(assert (=> b!4627023 m!5470705))

(declare-fun m!5470707 () Bool)

(assert (=> b!4627023 m!5470707))

(declare-fun m!5470709 () Bool)

(assert (=> b!4627023 m!5470709))

(declare-fun m!5470711 () Bool)

(assert (=> b!4627023 m!5470711))

(declare-fun m!5470713 () Bool)

(assert (=> b!4627023 m!5470713))

(declare-fun m!5470715 () Bool)

(assert (=> b!4627023 m!5470715))

(declare-fun m!5470717 () Bool)

(assert (=> b!4627023 m!5470717))

(declare-fun m!5470719 () Bool)

(assert (=> b!4627023 m!5470719))

(declare-fun m!5470721 () Bool)

(assert (=> b!4627023 m!5470721))

(declare-fun m!5470723 () Bool)

(assert (=> b!4627023 m!5470723))

(assert (=> b!4627023 m!5470713))

(assert (=> b!4627023 m!5470707))

(declare-fun m!5470725 () Bool)

(assert (=> bm!322781 m!5470725))

(declare-fun m!5470727 () Bool)

(assert (=> b!4627022 m!5470727))

(assert (=> bm!322782 m!5470725))

(declare-fun m!5470729 () Bool)

(assert (=> bm!322783 m!5470729))

(declare-fun m!5470731 () Bool)

(assert (=> b!4627025 m!5470731))

(declare-fun m!5470733 () Bool)

(assert (=> d!1457610 m!5470733))

(assert (=> d!1457610 m!5470305))

(assert (=> b!4626804 d!1457610))

(declare-fun bs!1024508 () Bool)

(declare-fun d!1457670 () Bool)

(assert (= bs!1024508 (and d!1457670 b!4626792)))

(declare-fun lambda!192549 () Int)

(assert (=> bs!1024508 (= lambda!192549 lambda!192450)))

(declare-fun bs!1024509 () Bool)

(assert (= bs!1024509 (and d!1457670 d!1457564)))

(assert (=> bs!1024509 (= lambda!192549 lambda!192470)))

(declare-fun bs!1024510 () Bool)

(assert (= bs!1024510 (and d!1457670 d!1457584)))

(assert (=> bs!1024510 (= lambda!192549 lambda!192491)))

(declare-fun lt!1785531 () ListMap!4293)

(assert (=> d!1457670 (invariantList!1210 (toList!4989 lt!1785531))))

(declare-fun e!2886293 () ListMap!4293)

(assert (=> d!1457670 (= lt!1785531 e!2886293)))

(declare-fun c!792041 () Bool)

(assert (=> d!1457670 (= c!792041 ((_ is Cons!51553) (Cons!51553 (tuple2!52497 hash!414 lt!1785174) Nil!51553)))))

(assert (=> d!1457670 (forall!10834 (Cons!51553 (tuple2!52497 hash!414 lt!1785174) Nil!51553) lambda!192549)))

(assert (=> d!1457670 (= (extractMap!1568 (Cons!51553 (tuple2!52497 hash!414 lt!1785174) Nil!51553)) lt!1785531)))

(declare-fun b!4627037 () Bool)

(assert (=> b!4627037 (= e!2886293 (addToMapMapFromBucket!973 (_2!29542 (h!57609 (Cons!51553 (tuple2!52497 hash!414 lt!1785174) Nil!51553))) (extractMap!1568 (t!358715 (Cons!51553 (tuple2!52497 hash!414 lt!1785174) Nil!51553)))))))

(declare-fun b!4627038 () Bool)

(assert (=> b!4627038 (= e!2886293 (ListMap!4294 Nil!51552))))

(assert (= (and d!1457670 c!792041) b!4627037))

(assert (= (and d!1457670 (not c!792041)) b!4627038))

(declare-fun m!5470739 () Bool)

(assert (=> d!1457670 m!5470739))

(declare-fun m!5470741 () Bool)

(assert (=> d!1457670 m!5470741))

(declare-fun m!5470743 () Bool)

(assert (=> b!4627037 m!5470743))

(assert (=> b!4627037 m!5470743))

(declare-fun m!5470745 () Bool)

(assert (=> b!4627037 m!5470745))

(assert (=> b!4626804 d!1457670))

(declare-fun d!1457674 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!8813 (List!51676) (InoxSet tuple2!52494))

(assert (=> d!1457674 (= (eq!827 (addToMapMapFromBucket!973 (Cons!51552 lt!1785172 lt!1785174) (ListMap!4294 Nil!51552)) (+!1878 (addToMapMapFromBucket!973 lt!1785174 (ListMap!4294 Nil!51552)) lt!1785172)) (= (content!8813 (toList!4989 (addToMapMapFromBucket!973 (Cons!51552 lt!1785172 lt!1785174) (ListMap!4294 Nil!51552)))) (content!8813 (toList!4989 (+!1878 (addToMapMapFromBucket!973 lt!1785174 (ListMap!4294 Nil!51552)) lt!1785172)))))))

(declare-fun bs!1024512 () Bool)

(assert (= bs!1024512 d!1457674))

(declare-fun m!5470747 () Bool)

(assert (=> bs!1024512 m!5470747))

(declare-fun m!5470749 () Bool)

(assert (=> bs!1024512 m!5470749))

(assert (=> b!4626804 d!1457674))

(declare-fun d!1457676 () Bool)

(declare-fun e!2886296 () Bool)

(assert (=> d!1457676 e!2886296))

(declare-fun res!1940557 () Bool)

(assert (=> d!1457676 (=> (not res!1940557) (not e!2886296))))

(declare-fun lt!1785538 () ListMap!4293)

(assert (=> d!1457676 (= res!1940557 (contains!14609 lt!1785538 (_1!29541 lt!1785166)))))

(declare-fun lt!1785536 () List!51676)

(assert (=> d!1457676 (= lt!1785538 (ListMap!4294 lt!1785536))))

(declare-fun lt!1785537 () Unit!112384)

(declare-fun lt!1785535 () Unit!112384)

(assert (=> d!1457676 (= lt!1785537 lt!1785535)))

(assert (=> d!1457676 (= (getValueByKey!1462 lt!1785536 (_1!29541 lt!1785166)) (Some!11607 (_2!29541 lt!1785166)))))

(assert (=> d!1457676 (= lt!1785535 (lemmaContainsTupThenGetReturnValue!854 lt!1785536 (_1!29541 lt!1785166) (_2!29541 lt!1785166)))))

(assert (=> d!1457676 (= lt!1785536 (insertNoDuplicatedKeys!362 (toList!4989 (addToMapMapFromBucket!973 lt!1785153 (ListMap!4294 Nil!51552))) (_1!29541 lt!1785166) (_2!29541 lt!1785166)))))

(assert (=> d!1457676 (= (+!1878 (addToMapMapFromBucket!973 lt!1785153 (ListMap!4294 Nil!51552)) lt!1785166) lt!1785538)))

(declare-fun b!4627041 () Bool)

(declare-fun res!1940556 () Bool)

(assert (=> b!4627041 (=> (not res!1940556) (not e!2886296))))

(assert (=> b!4627041 (= res!1940556 (= (getValueByKey!1462 (toList!4989 lt!1785538) (_1!29541 lt!1785166)) (Some!11607 (_2!29541 lt!1785166))))))

(declare-fun b!4627042 () Bool)

(assert (=> b!4627042 (= e!2886296 (contains!14612 (toList!4989 lt!1785538) lt!1785166))))

(assert (= (and d!1457676 res!1940557) b!4627041))

(assert (= (and b!4627041 res!1940556) b!4627042))

(declare-fun m!5470751 () Bool)

(assert (=> d!1457676 m!5470751))

(declare-fun m!5470753 () Bool)

(assert (=> d!1457676 m!5470753))

(declare-fun m!5470755 () Bool)

(assert (=> d!1457676 m!5470755))

(declare-fun m!5470757 () Bool)

(assert (=> d!1457676 m!5470757))

(declare-fun m!5470759 () Bool)

(assert (=> b!4627041 m!5470759))

(declare-fun m!5470761 () Bool)

(assert (=> b!4627042 m!5470761))

(assert (=> b!4626804 d!1457676))

(declare-fun bs!1024513 () Bool)

(declare-fun b!4627044 () Bool)

(assert (= bs!1024513 (and b!4627044 b!4627021)))

(declare-fun lambda!192550 () Int)

(assert (=> bs!1024513 (= lambda!192550 lambda!192545)))

(declare-fun bs!1024514 () Bool)

(assert (= bs!1024514 (and b!4627044 b!4627023)))

(assert (=> bs!1024514 (= lambda!192550 lambda!192546)))

(assert (=> bs!1024514 (= (= (ListMap!4294 Nil!51552) lt!1785523) (= lambda!192550 lambda!192547))))

(declare-fun bs!1024515 () Bool)

(assert (= bs!1024515 (and b!4627044 d!1457610)))

(assert (=> bs!1024515 (= (= (ListMap!4294 Nil!51552) lt!1785513) (= lambda!192550 lambda!192548))))

(assert (=> b!4627044 true))

(declare-fun bs!1024516 () Bool)

(declare-fun b!4627046 () Bool)

(assert (= bs!1024516 (and b!4627046 d!1457610)))

(declare-fun lambda!192551 () Int)

(assert (=> bs!1024516 (= (= (ListMap!4294 Nil!51552) lt!1785513) (= lambda!192551 lambda!192548))))

(declare-fun bs!1024517 () Bool)

(assert (= bs!1024517 (and b!4627046 b!4627021)))

(assert (=> bs!1024517 (= lambda!192551 lambda!192545)))

(declare-fun bs!1024518 () Bool)

(assert (= bs!1024518 (and b!4627046 b!4627023)))

(assert (=> bs!1024518 (= lambda!192551 lambda!192546)))

(assert (=> bs!1024518 (= (= (ListMap!4294 Nil!51552) lt!1785523) (= lambda!192551 lambda!192547))))

(declare-fun bs!1024519 () Bool)

(assert (= bs!1024519 (and b!4627046 b!4627044)))

(assert (=> bs!1024519 (= lambda!192551 lambda!192550)))

(assert (=> b!4627046 true))

(declare-fun lt!1785560 () ListMap!4293)

(declare-fun lambda!192552 () Int)

(assert (=> b!4627046 (= (= lt!1785560 (ListMap!4294 Nil!51552)) (= lambda!192552 lambda!192551))))

(assert (=> bs!1024516 (= (= lt!1785560 lt!1785513) (= lambda!192552 lambda!192548))))

(assert (=> bs!1024517 (= (= lt!1785560 (ListMap!4294 Nil!51552)) (= lambda!192552 lambda!192545))))

(assert (=> bs!1024518 (= (= lt!1785560 (ListMap!4294 Nil!51552)) (= lambda!192552 lambda!192546))))

(assert (=> bs!1024518 (= (= lt!1785560 lt!1785523) (= lambda!192552 lambda!192547))))

(assert (=> bs!1024519 (= (= lt!1785560 (ListMap!4294 Nil!51552)) (= lambda!192552 lambda!192550))))

(assert (=> b!4627046 true))

(declare-fun bs!1024521 () Bool)

(declare-fun d!1457678 () Bool)

(assert (= bs!1024521 (and d!1457678 b!4627046)))

(declare-fun lt!1785550 () ListMap!4293)

(declare-fun lambda!192553 () Int)

(assert (=> bs!1024521 (= (= lt!1785550 (ListMap!4294 Nil!51552)) (= lambda!192553 lambda!192551))))

(declare-fun bs!1024522 () Bool)

(assert (= bs!1024522 (and d!1457678 b!4627021)))

(assert (=> bs!1024522 (= (= lt!1785550 (ListMap!4294 Nil!51552)) (= lambda!192553 lambda!192545))))

(declare-fun bs!1024523 () Bool)

(assert (= bs!1024523 (and d!1457678 b!4627023)))

(assert (=> bs!1024523 (= (= lt!1785550 (ListMap!4294 Nil!51552)) (= lambda!192553 lambda!192546))))

(assert (=> bs!1024523 (= (= lt!1785550 lt!1785523) (= lambda!192553 lambda!192547))))

(declare-fun bs!1024524 () Bool)

(assert (= bs!1024524 (and d!1457678 b!4627044)))

(assert (=> bs!1024524 (= (= lt!1785550 (ListMap!4294 Nil!51552)) (= lambda!192553 lambda!192550))))

(declare-fun bs!1024525 () Bool)

(assert (= bs!1024525 (and d!1457678 d!1457610)))

(assert (=> bs!1024525 (= (= lt!1785550 lt!1785513) (= lambda!192553 lambda!192548))))

(assert (=> bs!1024521 (= (= lt!1785550 lt!1785560) (= lambda!192553 lambda!192552))))

(assert (=> d!1457678 true))

(declare-fun e!2886298 () Bool)

(assert (=> d!1457678 e!2886298))

(declare-fun res!1940559 () Bool)

(assert (=> d!1457678 (=> (not res!1940559) (not e!2886298))))

(assert (=> d!1457678 (= res!1940559 (forall!10836 lt!1785174 lambda!192553))))

(declare-fun e!2886299 () ListMap!4293)

(assert (=> d!1457678 (= lt!1785550 e!2886299)))

(declare-fun c!792042 () Bool)

(assert (=> d!1457678 (= c!792042 ((_ is Nil!51552) lt!1785174))))

(assert (=> d!1457678 (noDuplicateKeys!1512 lt!1785174)))

(assert (=> d!1457678 (= (addToMapMapFromBucket!973 lt!1785174 (ListMap!4294 Nil!51552)) lt!1785550)))

(declare-fun call!322789 () Bool)

(declare-fun bm!322784 () Bool)

(assert (=> bm!322784 (= call!322789 (forall!10836 (toList!4989 (ListMap!4294 Nil!51552)) (ite c!792042 lambda!192550 lambda!192552)))))

(assert (=> b!4627044 (= e!2886299 (ListMap!4294 Nil!51552))))

(declare-fun lt!1785557 () Unit!112384)

(declare-fun call!322791 () Unit!112384)

(assert (=> b!4627044 (= lt!1785557 call!322791)))

(declare-fun call!322790 () Bool)

(assert (=> b!4627044 call!322790))

(declare-fun lt!1785559 () Unit!112384)

(assert (=> b!4627044 (= lt!1785559 lt!1785557)))

(assert (=> b!4627044 call!322789))

(declare-fun lt!1785544 () Unit!112384)

(declare-fun Unit!112445 () Unit!112384)

(assert (=> b!4627044 (= lt!1785544 Unit!112445)))

(declare-fun b!4627045 () Bool)

(declare-fun res!1940560 () Bool)

(assert (=> b!4627045 (=> (not res!1940560) (not e!2886298))))

(assert (=> b!4627045 (= res!1940560 (forall!10836 (toList!4989 (ListMap!4294 Nil!51552)) lambda!192553))))

(assert (=> b!4627046 (= e!2886299 lt!1785560)))

(declare-fun lt!1785551 () ListMap!4293)

(assert (=> b!4627046 (= lt!1785551 (+!1878 (ListMap!4294 Nil!51552) (h!57608 lt!1785174)))))

(assert (=> b!4627046 (= lt!1785560 (addToMapMapFromBucket!973 (t!358714 lt!1785174) (+!1878 (ListMap!4294 Nil!51552) (h!57608 lt!1785174))))))

(declare-fun lt!1785553 () Unit!112384)

(assert (=> b!4627046 (= lt!1785553 call!322791)))

(assert (=> b!4627046 (forall!10836 (toList!4989 (ListMap!4294 Nil!51552)) lambda!192551)))

(declare-fun lt!1785548 () Unit!112384)

(assert (=> b!4627046 (= lt!1785548 lt!1785553)))

(assert (=> b!4627046 (forall!10836 (toList!4989 lt!1785551) lambda!192552)))

(declare-fun lt!1785541 () Unit!112384)

(declare-fun Unit!112446 () Unit!112384)

(assert (=> b!4627046 (= lt!1785541 Unit!112446)))

(assert (=> b!4627046 (forall!10836 (t!358714 lt!1785174) lambda!192552)))

(declare-fun lt!1785554 () Unit!112384)

(declare-fun Unit!112447 () Unit!112384)

(assert (=> b!4627046 (= lt!1785554 Unit!112447)))

(declare-fun lt!1785542 () Unit!112384)

(declare-fun Unit!112448 () Unit!112384)

(assert (=> b!4627046 (= lt!1785542 Unit!112448)))

(declare-fun lt!1785543 () Unit!112384)

(assert (=> b!4627046 (= lt!1785543 (forallContained!3064 (toList!4989 lt!1785551) lambda!192552 (h!57608 lt!1785174)))))

(assert (=> b!4627046 (contains!14609 lt!1785551 (_1!29541 (h!57608 lt!1785174)))))

(declare-fun lt!1785549 () Unit!112384)

(declare-fun Unit!112449 () Unit!112384)

(assert (=> b!4627046 (= lt!1785549 Unit!112449)))

(assert (=> b!4627046 (contains!14609 lt!1785560 (_1!29541 (h!57608 lt!1785174)))))

(declare-fun lt!1785556 () Unit!112384)

(declare-fun Unit!112450 () Unit!112384)

(assert (=> b!4627046 (= lt!1785556 Unit!112450)))

(assert (=> b!4627046 (forall!10836 lt!1785174 lambda!192552)))

(declare-fun lt!1785558 () Unit!112384)

(declare-fun Unit!112451 () Unit!112384)

(assert (=> b!4627046 (= lt!1785558 Unit!112451)))

(assert (=> b!4627046 (forall!10836 (toList!4989 lt!1785551) lambda!192552)))

(declare-fun lt!1785540 () Unit!112384)

(declare-fun Unit!112452 () Unit!112384)

(assert (=> b!4627046 (= lt!1785540 Unit!112452)))

(declare-fun lt!1785546 () Unit!112384)

(declare-fun Unit!112453 () Unit!112384)

(assert (=> b!4627046 (= lt!1785546 Unit!112453)))

(declare-fun lt!1785547 () Unit!112384)

(assert (=> b!4627046 (= lt!1785547 (addForallContainsKeyThenBeforeAdding!511 (ListMap!4294 Nil!51552) lt!1785560 (_1!29541 (h!57608 lt!1785174)) (_2!29541 (h!57608 lt!1785174))))))

(assert (=> b!4627046 (forall!10836 (toList!4989 (ListMap!4294 Nil!51552)) lambda!192552)))

(declare-fun lt!1785555 () Unit!112384)

(assert (=> b!4627046 (= lt!1785555 lt!1785547)))

(assert (=> b!4627046 call!322790))

(declare-fun lt!1785552 () Unit!112384)

(declare-fun Unit!112454 () Unit!112384)

(assert (=> b!4627046 (= lt!1785552 Unit!112454)))

(declare-fun res!1940561 () Bool)

(assert (=> b!4627046 (= res!1940561 (forall!10836 lt!1785174 lambda!192552))))

(declare-fun e!2886300 () Bool)

(assert (=> b!4627046 (=> (not res!1940561) (not e!2886300))))

(assert (=> b!4627046 e!2886300))

(declare-fun lt!1785545 () Unit!112384)

(declare-fun Unit!112455 () Unit!112384)

(assert (=> b!4627046 (= lt!1785545 Unit!112455)))

(declare-fun b!4627047 () Bool)

(assert (=> b!4627047 (= e!2886300 call!322789)))

(declare-fun bm!322785 () Bool)

(assert (=> bm!322785 (= call!322790 (forall!10836 (toList!4989 (ListMap!4294 Nil!51552)) (ite c!792042 lambda!192550 lambda!192552)))))

(declare-fun bm!322786 () Bool)

(assert (=> bm!322786 (= call!322791 (lemmaContainsAllItsOwnKeys!512 (ListMap!4294 Nil!51552)))))

(declare-fun b!4627048 () Bool)

(assert (=> b!4627048 (= e!2886298 (invariantList!1210 (toList!4989 lt!1785550)))))

(assert (= (and d!1457678 c!792042) b!4627044))

(assert (= (and d!1457678 (not c!792042)) b!4627046))

(assert (= (and b!4627046 res!1940561) b!4627047))

(assert (= (or b!4627044 b!4627046) bm!322786))

(assert (= (or b!4627044 b!4627047) bm!322784))

(assert (= (or b!4627044 b!4627046) bm!322785))

(assert (= (and d!1457678 res!1940559) b!4627045))

(assert (= (and b!4627045 res!1940560) b!4627048))

(declare-fun m!5470769 () Bool)

(assert (=> b!4627046 m!5470769))

(assert (=> b!4627046 m!5470769))

(declare-fun m!5470771 () Bool)

(assert (=> b!4627046 m!5470771))

(declare-fun m!5470773 () Bool)

(assert (=> b!4627046 m!5470773))

(declare-fun m!5470775 () Bool)

(assert (=> b!4627046 m!5470775))

(declare-fun m!5470777 () Bool)

(assert (=> b!4627046 m!5470777))

(declare-fun m!5470779 () Bool)

(assert (=> b!4627046 m!5470779))

(declare-fun m!5470781 () Bool)

(assert (=> b!4627046 m!5470781))

(declare-fun m!5470783 () Bool)

(assert (=> b!4627046 m!5470783))

(declare-fun m!5470785 () Bool)

(assert (=> b!4627046 m!5470785))

(declare-fun m!5470787 () Bool)

(assert (=> b!4627046 m!5470787))

(declare-fun m!5470789 () Bool)

(assert (=> b!4627046 m!5470789))

(assert (=> b!4627046 m!5470779))

(assert (=> b!4627046 m!5470773))

(declare-fun m!5470791 () Bool)

(assert (=> bm!322784 m!5470791))

(declare-fun m!5470793 () Bool)

(assert (=> b!4627045 m!5470793))

(assert (=> bm!322785 m!5470791))

(assert (=> bm!322786 m!5470729))

(declare-fun m!5470795 () Bool)

(assert (=> b!4627048 m!5470795))

(declare-fun m!5470797 () Bool)

(assert (=> d!1457678 m!5470797))

(assert (=> d!1457678 m!5470269))

(assert (=> b!4626804 d!1457678))

(declare-fun bs!1024526 () Bool)

(declare-fun b!4627049 () Bool)

(assert (= bs!1024526 (and b!4627049 b!4627046)))

(declare-fun lambda!192554 () Int)

(assert (=> bs!1024526 (= lambda!192554 lambda!192551)))

(declare-fun bs!1024527 () Bool)

(assert (= bs!1024527 (and b!4627049 b!4627021)))

(assert (=> bs!1024527 (= lambda!192554 lambda!192545)))

(declare-fun bs!1024528 () Bool)

(assert (= bs!1024528 (and b!4627049 b!4627023)))

(assert (=> bs!1024528 (= lambda!192554 lambda!192546)))

(declare-fun bs!1024529 () Bool)

(assert (= bs!1024529 (and b!4627049 d!1457678)))

(assert (=> bs!1024529 (= (= (ListMap!4294 Nil!51552) lt!1785550) (= lambda!192554 lambda!192553))))

(assert (=> bs!1024528 (= (= (ListMap!4294 Nil!51552) lt!1785523) (= lambda!192554 lambda!192547))))

(declare-fun bs!1024530 () Bool)

(assert (= bs!1024530 (and b!4627049 b!4627044)))

(assert (=> bs!1024530 (= lambda!192554 lambda!192550)))

(declare-fun bs!1024531 () Bool)

(assert (= bs!1024531 (and b!4627049 d!1457610)))

(assert (=> bs!1024531 (= (= (ListMap!4294 Nil!51552) lt!1785513) (= lambda!192554 lambda!192548))))

(assert (=> bs!1024526 (= (= (ListMap!4294 Nil!51552) lt!1785560) (= lambda!192554 lambda!192552))))

(assert (=> b!4627049 true))

(declare-fun bs!1024532 () Bool)

(declare-fun b!4627051 () Bool)

(assert (= bs!1024532 (and b!4627051 b!4627046)))

(declare-fun lambda!192555 () Int)

(assert (=> bs!1024532 (= lambda!192555 lambda!192551)))

(declare-fun bs!1024533 () Bool)

(assert (= bs!1024533 (and b!4627051 b!4627049)))

(assert (=> bs!1024533 (= lambda!192555 lambda!192554)))

(declare-fun bs!1024534 () Bool)

(assert (= bs!1024534 (and b!4627051 b!4627021)))

(assert (=> bs!1024534 (= lambda!192555 lambda!192545)))

(declare-fun bs!1024535 () Bool)

(assert (= bs!1024535 (and b!4627051 b!4627023)))

(assert (=> bs!1024535 (= lambda!192555 lambda!192546)))

(declare-fun bs!1024536 () Bool)

(assert (= bs!1024536 (and b!4627051 d!1457678)))

(assert (=> bs!1024536 (= (= (ListMap!4294 Nil!51552) lt!1785550) (= lambda!192555 lambda!192553))))

(assert (=> bs!1024535 (= (= (ListMap!4294 Nil!51552) lt!1785523) (= lambda!192555 lambda!192547))))

(declare-fun bs!1024537 () Bool)

(assert (= bs!1024537 (and b!4627051 b!4627044)))

(assert (=> bs!1024537 (= lambda!192555 lambda!192550)))

(declare-fun bs!1024538 () Bool)

(assert (= bs!1024538 (and b!4627051 d!1457610)))

(assert (=> bs!1024538 (= (= (ListMap!4294 Nil!51552) lt!1785513) (= lambda!192555 lambda!192548))))

(assert (=> bs!1024532 (= (= (ListMap!4294 Nil!51552) lt!1785560) (= lambda!192555 lambda!192552))))

(assert (=> b!4627051 true))

(declare-fun lt!1785584 () ListMap!4293)

(declare-fun lambda!192556 () Int)

(assert (=> bs!1024532 (= (= lt!1785584 (ListMap!4294 Nil!51552)) (= lambda!192556 lambda!192551))))

(assert (=> bs!1024533 (= (= lt!1785584 (ListMap!4294 Nil!51552)) (= lambda!192556 lambda!192554))))

(assert (=> bs!1024534 (= (= lt!1785584 (ListMap!4294 Nil!51552)) (= lambda!192556 lambda!192545))))

(assert (=> bs!1024536 (= (= lt!1785584 lt!1785550) (= lambda!192556 lambda!192553))))

(assert (=> bs!1024535 (= (= lt!1785584 lt!1785523) (= lambda!192556 lambda!192547))))

(assert (=> bs!1024537 (= (= lt!1785584 (ListMap!4294 Nil!51552)) (= lambda!192556 lambda!192550))))

(assert (=> bs!1024538 (= (= lt!1785584 lt!1785513) (= lambda!192556 lambda!192548))))

(assert (=> bs!1024532 (= (= lt!1785584 lt!1785560) (= lambda!192556 lambda!192552))))

(assert (=> bs!1024535 (= (= lt!1785584 (ListMap!4294 Nil!51552)) (= lambda!192556 lambda!192546))))

(assert (=> b!4627051 (= (= lt!1785584 (ListMap!4294 Nil!51552)) (= lambda!192556 lambda!192555))))

(assert (=> b!4627051 true))

(declare-fun bs!1024539 () Bool)

(declare-fun d!1457684 () Bool)

(assert (= bs!1024539 (and d!1457684 b!4627046)))

(declare-fun lt!1785574 () ListMap!4293)

(declare-fun lambda!192557 () Int)

(assert (=> bs!1024539 (= (= lt!1785574 (ListMap!4294 Nil!51552)) (= lambda!192557 lambda!192551))))

(declare-fun bs!1024540 () Bool)

(assert (= bs!1024540 (and d!1457684 b!4627049)))

(assert (=> bs!1024540 (= (= lt!1785574 (ListMap!4294 Nil!51552)) (= lambda!192557 lambda!192554))))

(declare-fun bs!1024541 () Bool)

(assert (= bs!1024541 (and d!1457684 b!4627051)))

(assert (=> bs!1024541 (= (= lt!1785574 lt!1785584) (= lambda!192557 lambda!192556))))

(declare-fun bs!1024542 () Bool)

(assert (= bs!1024542 (and d!1457684 b!4627021)))

(assert (=> bs!1024542 (= (= lt!1785574 (ListMap!4294 Nil!51552)) (= lambda!192557 lambda!192545))))

(declare-fun bs!1024543 () Bool)

(assert (= bs!1024543 (and d!1457684 d!1457678)))

(assert (=> bs!1024543 (= (= lt!1785574 lt!1785550) (= lambda!192557 lambda!192553))))

(declare-fun bs!1024544 () Bool)

(assert (= bs!1024544 (and d!1457684 b!4627023)))

(assert (=> bs!1024544 (= (= lt!1785574 lt!1785523) (= lambda!192557 lambda!192547))))

(declare-fun bs!1024545 () Bool)

(assert (= bs!1024545 (and d!1457684 b!4627044)))

(assert (=> bs!1024545 (= (= lt!1785574 (ListMap!4294 Nil!51552)) (= lambda!192557 lambda!192550))))

(declare-fun bs!1024546 () Bool)

(assert (= bs!1024546 (and d!1457684 d!1457610)))

(assert (=> bs!1024546 (= (= lt!1785574 lt!1785513) (= lambda!192557 lambda!192548))))

(assert (=> bs!1024539 (= (= lt!1785574 lt!1785560) (= lambda!192557 lambda!192552))))

(assert (=> bs!1024544 (= (= lt!1785574 (ListMap!4294 Nil!51552)) (= lambda!192557 lambda!192546))))

(assert (=> bs!1024541 (= (= lt!1785574 (ListMap!4294 Nil!51552)) (= lambda!192557 lambda!192555))))

(assert (=> d!1457684 true))

(declare-fun e!2886301 () Bool)

(assert (=> d!1457684 e!2886301))

(declare-fun res!1940562 () Bool)

(assert (=> d!1457684 (=> (not res!1940562) (not e!2886301))))

(assert (=> d!1457684 (= res!1940562 (forall!10836 (Cons!51552 lt!1785172 lt!1785174) lambda!192557))))

(declare-fun e!2886302 () ListMap!4293)

(assert (=> d!1457684 (= lt!1785574 e!2886302)))

(declare-fun c!792043 () Bool)

(assert (=> d!1457684 (= c!792043 ((_ is Nil!51552) (Cons!51552 lt!1785172 lt!1785174)))))

(assert (=> d!1457684 (noDuplicateKeys!1512 (Cons!51552 lt!1785172 lt!1785174))))

(assert (=> d!1457684 (= (addToMapMapFromBucket!973 (Cons!51552 lt!1785172 lt!1785174) (ListMap!4294 Nil!51552)) lt!1785574)))

(declare-fun bm!322787 () Bool)

(declare-fun call!322792 () Bool)

(assert (=> bm!322787 (= call!322792 (forall!10836 (toList!4989 (ListMap!4294 Nil!51552)) (ite c!792043 lambda!192554 lambda!192556)))))

(assert (=> b!4627049 (= e!2886302 (ListMap!4294 Nil!51552))))

(declare-fun lt!1785581 () Unit!112384)

(declare-fun call!322794 () Unit!112384)

(assert (=> b!4627049 (= lt!1785581 call!322794)))

(declare-fun call!322793 () Bool)

(assert (=> b!4627049 call!322793))

(declare-fun lt!1785583 () Unit!112384)

(assert (=> b!4627049 (= lt!1785583 lt!1785581)))

(assert (=> b!4627049 call!322792))

(declare-fun lt!1785568 () Unit!112384)

(declare-fun Unit!112456 () Unit!112384)

(assert (=> b!4627049 (= lt!1785568 Unit!112456)))

(declare-fun b!4627050 () Bool)

(declare-fun res!1940563 () Bool)

(assert (=> b!4627050 (=> (not res!1940563) (not e!2886301))))

(assert (=> b!4627050 (= res!1940563 (forall!10836 (toList!4989 (ListMap!4294 Nil!51552)) lambda!192557))))

(assert (=> b!4627051 (= e!2886302 lt!1785584)))

(declare-fun lt!1785575 () ListMap!4293)

(assert (=> b!4627051 (= lt!1785575 (+!1878 (ListMap!4294 Nil!51552) (h!57608 (Cons!51552 lt!1785172 lt!1785174))))))

(assert (=> b!4627051 (= lt!1785584 (addToMapMapFromBucket!973 (t!358714 (Cons!51552 lt!1785172 lt!1785174)) (+!1878 (ListMap!4294 Nil!51552) (h!57608 (Cons!51552 lt!1785172 lt!1785174)))))))

(declare-fun lt!1785577 () Unit!112384)

(assert (=> b!4627051 (= lt!1785577 call!322794)))

(assert (=> b!4627051 (forall!10836 (toList!4989 (ListMap!4294 Nil!51552)) lambda!192555)))

(declare-fun lt!1785572 () Unit!112384)

(assert (=> b!4627051 (= lt!1785572 lt!1785577)))

(assert (=> b!4627051 (forall!10836 (toList!4989 lt!1785575) lambda!192556)))

(declare-fun lt!1785565 () Unit!112384)

(declare-fun Unit!112457 () Unit!112384)

(assert (=> b!4627051 (= lt!1785565 Unit!112457)))

(assert (=> b!4627051 (forall!10836 (t!358714 (Cons!51552 lt!1785172 lt!1785174)) lambda!192556)))

(declare-fun lt!1785578 () Unit!112384)

(declare-fun Unit!112458 () Unit!112384)

(assert (=> b!4627051 (= lt!1785578 Unit!112458)))

(declare-fun lt!1785566 () Unit!112384)

(declare-fun Unit!112459 () Unit!112384)

(assert (=> b!4627051 (= lt!1785566 Unit!112459)))

(declare-fun lt!1785567 () Unit!112384)

(assert (=> b!4627051 (= lt!1785567 (forallContained!3064 (toList!4989 lt!1785575) lambda!192556 (h!57608 (Cons!51552 lt!1785172 lt!1785174))))))

(assert (=> b!4627051 (contains!14609 lt!1785575 (_1!29541 (h!57608 (Cons!51552 lt!1785172 lt!1785174))))))

(declare-fun lt!1785573 () Unit!112384)

(declare-fun Unit!112461 () Unit!112384)

(assert (=> b!4627051 (= lt!1785573 Unit!112461)))

(assert (=> b!4627051 (contains!14609 lt!1785584 (_1!29541 (h!57608 (Cons!51552 lt!1785172 lt!1785174))))))

(declare-fun lt!1785580 () Unit!112384)

(declare-fun Unit!112463 () Unit!112384)

(assert (=> b!4627051 (= lt!1785580 Unit!112463)))

(assert (=> b!4627051 (forall!10836 (Cons!51552 lt!1785172 lt!1785174) lambda!192556)))

(declare-fun lt!1785582 () Unit!112384)

(declare-fun Unit!112465 () Unit!112384)

(assert (=> b!4627051 (= lt!1785582 Unit!112465)))

(assert (=> b!4627051 (forall!10836 (toList!4989 lt!1785575) lambda!192556)))

(declare-fun lt!1785564 () Unit!112384)

(declare-fun Unit!112466 () Unit!112384)

(assert (=> b!4627051 (= lt!1785564 Unit!112466)))

(declare-fun lt!1785570 () Unit!112384)

(declare-fun Unit!112468 () Unit!112384)

(assert (=> b!4627051 (= lt!1785570 Unit!112468)))

(declare-fun lt!1785571 () Unit!112384)

(assert (=> b!4627051 (= lt!1785571 (addForallContainsKeyThenBeforeAdding!511 (ListMap!4294 Nil!51552) lt!1785584 (_1!29541 (h!57608 (Cons!51552 lt!1785172 lt!1785174))) (_2!29541 (h!57608 (Cons!51552 lt!1785172 lt!1785174)))))))

(assert (=> b!4627051 (forall!10836 (toList!4989 (ListMap!4294 Nil!51552)) lambda!192556)))

(declare-fun lt!1785579 () Unit!112384)

(assert (=> b!4627051 (= lt!1785579 lt!1785571)))

(assert (=> b!4627051 call!322793))

(declare-fun lt!1785576 () Unit!112384)

(declare-fun Unit!112471 () Unit!112384)

(assert (=> b!4627051 (= lt!1785576 Unit!112471)))

(declare-fun res!1940564 () Bool)

(assert (=> b!4627051 (= res!1940564 (forall!10836 (Cons!51552 lt!1785172 lt!1785174) lambda!192556))))

(declare-fun e!2886303 () Bool)

(assert (=> b!4627051 (=> (not res!1940564) (not e!2886303))))

(assert (=> b!4627051 e!2886303))

(declare-fun lt!1785569 () Unit!112384)

(declare-fun Unit!112474 () Unit!112384)

(assert (=> b!4627051 (= lt!1785569 Unit!112474)))

(declare-fun b!4627052 () Bool)

(assert (=> b!4627052 (= e!2886303 call!322792)))

(declare-fun bm!322788 () Bool)

(assert (=> bm!322788 (= call!322793 (forall!10836 (toList!4989 (ListMap!4294 Nil!51552)) (ite c!792043 lambda!192554 lambda!192556)))))

(declare-fun bm!322789 () Bool)

(assert (=> bm!322789 (= call!322794 (lemmaContainsAllItsOwnKeys!512 (ListMap!4294 Nil!51552)))))

(declare-fun b!4627053 () Bool)

(assert (=> b!4627053 (= e!2886301 (invariantList!1210 (toList!4989 lt!1785574)))))

(assert (= (and d!1457684 c!792043) b!4627049))

(assert (= (and d!1457684 (not c!792043)) b!4627051))

(assert (= (and b!4627051 res!1940564) b!4627052))

(assert (= (or b!4627049 b!4627051) bm!322789))

(assert (= (or b!4627049 b!4627052) bm!322787))

(assert (= (or b!4627049 b!4627051) bm!322788))

(assert (= (and d!1457684 res!1940562) b!4627050))

(assert (= (and b!4627050 res!1940563) b!4627053))

(declare-fun m!5470799 () Bool)

(assert (=> b!4627051 m!5470799))

(assert (=> b!4627051 m!5470799))

(declare-fun m!5470801 () Bool)

(assert (=> b!4627051 m!5470801))

(declare-fun m!5470803 () Bool)

(assert (=> b!4627051 m!5470803))

(declare-fun m!5470805 () Bool)

(assert (=> b!4627051 m!5470805))

(declare-fun m!5470807 () Bool)

(assert (=> b!4627051 m!5470807))

(declare-fun m!5470809 () Bool)

(assert (=> b!4627051 m!5470809))

(declare-fun m!5470811 () Bool)

(assert (=> b!4627051 m!5470811))

(declare-fun m!5470813 () Bool)

(assert (=> b!4627051 m!5470813))

(declare-fun m!5470815 () Bool)

(assert (=> b!4627051 m!5470815))

(declare-fun m!5470817 () Bool)

(assert (=> b!4627051 m!5470817))

(declare-fun m!5470819 () Bool)

(assert (=> b!4627051 m!5470819))

(assert (=> b!4627051 m!5470809))

(assert (=> b!4627051 m!5470803))

(declare-fun m!5470821 () Bool)

(assert (=> bm!322787 m!5470821))

(declare-fun m!5470823 () Bool)

(assert (=> b!4627050 m!5470823))

(assert (=> bm!322788 m!5470821))

(assert (=> bm!322789 m!5470729))

(declare-fun m!5470825 () Bool)

(assert (=> b!4627053 m!5470825))

(declare-fun m!5470827 () Bool)

(assert (=> d!1457684 m!5470827))

(declare-fun m!5470829 () Bool)

(assert (=> d!1457684 m!5470829))

(assert (=> b!4626804 d!1457684))

(declare-fun bs!1024547 () Bool)

(declare-fun d!1457686 () Bool)

(assert (= bs!1024547 (and d!1457686 b!4626792)))

(declare-fun lambda!192560 () Int)

(assert (=> bs!1024547 (= lambda!192560 lambda!192450)))

(declare-fun bs!1024548 () Bool)

(assert (= bs!1024548 (and d!1457686 d!1457564)))

(assert (=> bs!1024548 (= lambda!192560 lambda!192470)))

(declare-fun bs!1024549 () Bool)

(assert (= bs!1024549 (and d!1457686 d!1457584)))

(assert (=> bs!1024549 (= lambda!192560 lambda!192491)))

(declare-fun bs!1024550 () Bool)

(assert (= bs!1024550 (and d!1457686 d!1457670)))

(assert (=> bs!1024550 (= lambda!192560 lambda!192549)))

(assert (=> d!1457686 (contains!14609 (extractMap!1568 (toList!4990 (ListLongMap!3580 lt!1785164))) key!4968)))

(declare-fun lt!1785587 () Unit!112384)

(declare-fun choose!31353 (ListLongMap!3579 K!12930 Hashable!5909) Unit!112384)

(assert (=> d!1457686 (= lt!1785587 (choose!31353 (ListLongMap!3580 lt!1785164) key!4968 hashF!1389))))

(assert (=> d!1457686 (forall!10834 (toList!4990 (ListLongMap!3580 lt!1785164)) lambda!192560)))

(assert (=> d!1457686 (= (lemmaListContainsThenExtractedMapContains!330 (ListLongMap!3580 lt!1785164) key!4968 hashF!1389) lt!1785587)))

(declare-fun bs!1024551 () Bool)

(assert (= bs!1024551 d!1457686))

(declare-fun m!5470831 () Bool)

(assert (=> bs!1024551 m!5470831))

(assert (=> bs!1024551 m!5470831))

(declare-fun m!5470833 () Bool)

(assert (=> bs!1024551 m!5470833))

(declare-fun m!5470835 () Bool)

(assert (=> bs!1024551 m!5470835))

(declare-fun m!5470837 () Bool)

(assert (=> bs!1024551 m!5470837))

(assert (=> b!4626804 d!1457686))

(declare-fun bs!1024552 () Bool)

(declare-fun b!4627054 () Bool)

(assert (= bs!1024552 (and b!4627054 b!4627046)))

(declare-fun lambda!192561 () Int)

(assert (=> bs!1024552 (= lambda!192561 lambda!192551)))

(declare-fun bs!1024553 () Bool)

(assert (= bs!1024553 (and b!4627054 b!4627049)))

(assert (=> bs!1024553 (= lambda!192561 lambda!192554)))

(declare-fun bs!1024554 () Bool)

(assert (= bs!1024554 (and b!4627054 b!4627051)))

(assert (=> bs!1024554 (= (= (ListMap!4294 Nil!51552) lt!1785584) (= lambda!192561 lambda!192556))))

(declare-fun bs!1024555 () Bool)

(assert (= bs!1024555 (and b!4627054 b!4627021)))

(assert (=> bs!1024555 (= lambda!192561 lambda!192545)))

(declare-fun bs!1024556 () Bool)

(assert (= bs!1024556 (and b!4627054 d!1457678)))

(assert (=> bs!1024556 (= (= (ListMap!4294 Nil!51552) lt!1785550) (= lambda!192561 lambda!192553))))

(declare-fun bs!1024557 () Bool)

(assert (= bs!1024557 (and b!4627054 b!4627023)))

(assert (=> bs!1024557 (= (= (ListMap!4294 Nil!51552) lt!1785523) (= lambda!192561 lambda!192547))))

(declare-fun bs!1024558 () Bool)

(assert (= bs!1024558 (and b!4627054 b!4627044)))

(assert (=> bs!1024558 (= lambda!192561 lambda!192550)))

(declare-fun bs!1024559 () Bool)

(assert (= bs!1024559 (and b!4627054 d!1457684)))

(assert (=> bs!1024559 (= (= (ListMap!4294 Nil!51552) lt!1785574) (= lambda!192561 lambda!192557))))

(declare-fun bs!1024560 () Bool)

(assert (= bs!1024560 (and b!4627054 d!1457610)))

(assert (=> bs!1024560 (= (= (ListMap!4294 Nil!51552) lt!1785513) (= lambda!192561 lambda!192548))))

(assert (=> bs!1024552 (= (= (ListMap!4294 Nil!51552) lt!1785560) (= lambda!192561 lambda!192552))))

(assert (=> bs!1024557 (= lambda!192561 lambda!192546)))

(assert (=> bs!1024554 (= lambda!192561 lambda!192555)))

(assert (=> b!4627054 true))

(declare-fun bs!1024561 () Bool)

(declare-fun b!4627056 () Bool)

(assert (= bs!1024561 (and b!4627056 b!4627046)))

(declare-fun lambda!192562 () Int)

(assert (=> bs!1024561 (= lambda!192562 lambda!192551)))

(declare-fun bs!1024562 () Bool)

(assert (= bs!1024562 (and b!4627056 b!4627049)))

(assert (=> bs!1024562 (= lambda!192562 lambda!192554)))

(declare-fun bs!1024563 () Bool)

(assert (= bs!1024563 (and b!4627056 b!4627051)))

(assert (=> bs!1024563 (= (= (ListMap!4294 Nil!51552) lt!1785584) (= lambda!192562 lambda!192556))))

(declare-fun bs!1024564 () Bool)

(assert (= bs!1024564 (and b!4627056 b!4627021)))

(assert (=> bs!1024564 (= lambda!192562 lambda!192545)))

(declare-fun bs!1024565 () Bool)

(assert (= bs!1024565 (and b!4627056 d!1457678)))

(assert (=> bs!1024565 (= (= (ListMap!4294 Nil!51552) lt!1785550) (= lambda!192562 lambda!192553))))

(declare-fun bs!1024566 () Bool)

(assert (= bs!1024566 (and b!4627056 b!4627023)))

(assert (=> bs!1024566 (= (= (ListMap!4294 Nil!51552) lt!1785523) (= lambda!192562 lambda!192547))))

(declare-fun bs!1024567 () Bool)

(assert (= bs!1024567 (and b!4627056 b!4627044)))

(assert (=> bs!1024567 (= lambda!192562 lambda!192550)))

(declare-fun bs!1024568 () Bool)

(assert (= bs!1024568 (and b!4627056 d!1457684)))

(assert (=> bs!1024568 (= (= (ListMap!4294 Nil!51552) lt!1785574) (= lambda!192562 lambda!192557))))

(declare-fun bs!1024569 () Bool)

(assert (= bs!1024569 (and b!4627056 b!4627054)))

(assert (=> bs!1024569 (= lambda!192562 lambda!192561)))

(declare-fun bs!1024570 () Bool)

(assert (= bs!1024570 (and b!4627056 d!1457610)))

(assert (=> bs!1024570 (= (= (ListMap!4294 Nil!51552) lt!1785513) (= lambda!192562 lambda!192548))))

(assert (=> bs!1024561 (= (= (ListMap!4294 Nil!51552) lt!1785560) (= lambda!192562 lambda!192552))))

(assert (=> bs!1024566 (= lambda!192562 lambda!192546)))

(assert (=> bs!1024563 (= lambda!192562 lambda!192555)))

(assert (=> b!4627056 true))

(declare-fun lt!1785608 () ListMap!4293)

(declare-fun lambda!192563 () Int)

(assert (=> bs!1024561 (= (= lt!1785608 (ListMap!4294 Nil!51552)) (= lambda!192563 lambda!192551))))

(assert (=> bs!1024562 (= (= lt!1785608 (ListMap!4294 Nil!51552)) (= lambda!192563 lambda!192554))))

(assert (=> b!4627056 (= (= lt!1785608 (ListMap!4294 Nil!51552)) (= lambda!192563 lambda!192562))))

(assert (=> bs!1024563 (= (= lt!1785608 lt!1785584) (= lambda!192563 lambda!192556))))

(assert (=> bs!1024564 (= (= lt!1785608 (ListMap!4294 Nil!51552)) (= lambda!192563 lambda!192545))))

(assert (=> bs!1024565 (= (= lt!1785608 lt!1785550) (= lambda!192563 lambda!192553))))

(assert (=> bs!1024566 (= (= lt!1785608 lt!1785523) (= lambda!192563 lambda!192547))))

(assert (=> bs!1024567 (= (= lt!1785608 (ListMap!4294 Nil!51552)) (= lambda!192563 lambda!192550))))

(assert (=> bs!1024568 (= (= lt!1785608 lt!1785574) (= lambda!192563 lambda!192557))))

(assert (=> bs!1024569 (= (= lt!1785608 (ListMap!4294 Nil!51552)) (= lambda!192563 lambda!192561))))

(assert (=> bs!1024570 (= (= lt!1785608 lt!1785513) (= lambda!192563 lambda!192548))))

(assert (=> bs!1024561 (= (= lt!1785608 lt!1785560) (= lambda!192563 lambda!192552))))

(assert (=> bs!1024566 (= (= lt!1785608 (ListMap!4294 Nil!51552)) (= lambda!192563 lambda!192546))))

(assert (=> bs!1024563 (= (= lt!1785608 (ListMap!4294 Nil!51552)) (= lambda!192563 lambda!192555))))

(assert (=> b!4627056 true))

(declare-fun bs!1024571 () Bool)

(declare-fun d!1457688 () Bool)

(assert (= bs!1024571 (and d!1457688 b!4627046)))

(declare-fun lt!1785598 () ListMap!4293)

(declare-fun lambda!192564 () Int)

(assert (=> bs!1024571 (= (= lt!1785598 (ListMap!4294 Nil!51552)) (= lambda!192564 lambda!192551))))

(declare-fun bs!1024572 () Bool)

(assert (= bs!1024572 (and d!1457688 b!4627049)))

(assert (=> bs!1024572 (= (= lt!1785598 (ListMap!4294 Nil!51552)) (= lambda!192564 lambda!192554))))

(declare-fun bs!1024573 () Bool)

(assert (= bs!1024573 (and d!1457688 b!4627056)))

(assert (=> bs!1024573 (= (= lt!1785598 (ListMap!4294 Nil!51552)) (= lambda!192564 lambda!192562))))

(declare-fun bs!1024574 () Bool)

(assert (= bs!1024574 (and d!1457688 b!4627051)))

(assert (=> bs!1024574 (= (= lt!1785598 lt!1785584) (= lambda!192564 lambda!192556))))

(declare-fun bs!1024575 () Bool)

(assert (= bs!1024575 (and d!1457688 b!4627021)))

(assert (=> bs!1024575 (= (= lt!1785598 (ListMap!4294 Nil!51552)) (= lambda!192564 lambda!192545))))

(assert (=> bs!1024573 (= (= lt!1785598 lt!1785608) (= lambda!192564 lambda!192563))))

(declare-fun bs!1024576 () Bool)

(assert (= bs!1024576 (and d!1457688 d!1457678)))

(assert (=> bs!1024576 (= (= lt!1785598 lt!1785550) (= lambda!192564 lambda!192553))))

(declare-fun bs!1024577 () Bool)

(assert (= bs!1024577 (and d!1457688 b!4627023)))

(assert (=> bs!1024577 (= (= lt!1785598 lt!1785523) (= lambda!192564 lambda!192547))))

(declare-fun bs!1024578 () Bool)

(assert (= bs!1024578 (and d!1457688 b!4627044)))

(assert (=> bs!1024578 (= (= lt!1785598 (ListMap!4294 Nil!51552)) (= lambda!192564 lambda!192550))))

(declare-fun bs!1024579 () Bool)

(assert (= bs!1024579 (and d!1457688 d!1457684)))

(assert (=> bs!1024579 (= (= lt!1785598 lt!1785574) (= lambda!192564 lambda!192557))))

(declare-fun bs!1024580 () Bool)

(assert (= bs!1024580 (and d!1457688 b!4627054)))

(assert (=> bs!1024580 (= (= lt!1785598 (ListMap!4294 Nil!51552)) (= lambda!192564 lambda!192561))))

(declare-fun bs!1024581 () Bool)

(assert (= bs!1024581 (and d!1457688 d!1457610)))

(assert (=> bs!1024581 (= (= lt!1785598 lt!1785513) (= lambda!192564 lambda!192548))))

(assert (=> bs!1024571 (= (= lt!1785598 lt!1785560) (= lambda!192564 lambda!192552))))

(assert (=> bs!1024577 (= (= lt!1785598 (ListMap!4294 Nil!51552)) (= lambda!192564 lambda!192546))))

(assert (=> bs!1024574 (= (= lt!1785598 (ListMap!4294 Nil!51552)) (= lambda!192564 lambda!192555))))

(assert (=> d!1457688 true))

(declare-fun e!2886304 () Bool)

(assert (=> d!1457688 e!2886304))

(declare-fun res!1940565 () Bool)

(assert (=> d!1457688 (=> (not res!1940565) (not e!2886304))))

(assert (=> d!1457688 (= res!1940565 (forall!10836 (Cons!51552 lt!1785166 lt!1785153) lambda!192564))))

(declare-fun e!2886305 () ListMap!4293)

(assert (=> d!1457688 (= lt!1785598 e!2886305)))

(declare-fun c!792044 () Bool)

(assert (=> d!1457688 (= c!792044 ((_ is Nil!51552) (Cons!51552 lt!1785166 lt!1785153)))))

(assert (=> d!1457688 (noDuplicateKeys!1512 (Cons!51552 lt!1785166 lt!1785153))))

(assert (=> d!1457688 (= (addToMapMapFromBucket!973 (Cons!51552 lt!1785166 lt!1785153) (ListMap!4294 Nil!51552)) lt!1785598)))

(declare-fun bm!322790 () Bool)

(declare-fun call!322795 () Bool)

(assert (=> bm!322790 (= call!322795 (forall!10836 (toList!4989 (ListMap!4294 Nil!51552)) (ite c!792044 lambda!192561 lambda!192563)))))

(assert (=> b!4627054 (= e!2886305 (ListMap!4294 Nil!51552))))

(declare-fun lt!1785605 () Unit!112384)

(declare-fun call!322797 () Unit!112384)

(assert (=> b!4627054 (= lt!1785605 call!322797)))

(declare-fun call!322796 () Bool)

(assert (=> b!4627054 call!322796))

(declare-fun lt!1785607 () Unit!112384)

(assert (=> b!4627054 (= lt!1785607 lt!1785605)))

(assert (=> b!4627054 call!322795))

(declare-fun lt!1785592 () Unit!112384)

(declare-fun Unit!112480 () Unit!112384)

(assert (=> b!4627054 (= lt!1785592 Unit!112480)))

(declare-fun b!4627055 () Bool)

(declare-fun res!1940566 () Bool)

(assert (=> b!4627055 (=> (not res!1940566) (not e!2886304))))

(assert (=> b!4627055 (= res!1940566 (forall!10836 (toList!4989 (ListMap!4294 Nil!51552)) lambda!192564))))

(assert (=> b!4627056 (= e!2886305 lt!1785608)))

(declare-fun lt!1785599 () ListMap!4293)

(assert (=> b!4627056 (= lt!1785599 (+!1878 (ListMap!4294 Nil!51552) (h!57608 (Cons!51552 lt!1785166 lt!1785153))))))

(assert (=> b!4627056 (= lt!1785608 (addToMapMapFromBucket!973 (t!358714 (Cons!51552 lt!1785166 lt!1785153)) (+!1878 (ListMap!4294 Nil!51552) (h!57608 (Cons!51552 lt!1785166 lt!1785153)))))))

(declare-fun lt!1785601 () Unit!112384)

(assert (=> b!4627056 (= lt!1785601 call!322797)))

(assert (=> b!4627056 (forall!10836 (toList!4989 (ListMap!4294 Nil!51552)) lambda!192562)))

(declare-fun lt!1785596 () Unit!112384)

(assert (=> b!4627056 (= lt!1785596 lt!1785601)))

(assert (=> b!4627056 (forall!10836 (toList!4989 lt!1785599) lambda!192563)))

(declare-fun lt!1785589 () Unit!112384)

(declare-fun Unit!112481 () Unit!112384)

(assert (=> b!4627056 (= lt!1785589 Unit!112481)))

(assert (=> b!4627056 (forall!10836 (t!358714 (Cons!51552 lt!1785166 lt!1785153)) lambda!192563)))

(declare-fun lt!1785602 () Unit!112384)

(declare-fun Unit!112482 () Unit!112384)

(assert (=> b!4627056 (= lt!1785602 Unit!112482)))

(declare-fun lt!1785590 () Unit!112384)

(declare-fun Unit!112483 () Unit!112384)

(assert (=> b!4627056 (= lt!1785590 Unit!112483)))

(declare-fun lt!1785591 () Unit!112384)

(assert (=> b!4627056 (= lt!1785591 (forallContained!3064 (toList!4989 lt!1785599) lambda!192563 (h!57608 (Cons!51552 lt!1785166 lt!1785153))))))

(assert (=> b!4627056 (contains!14609 lt!1785599 (_1!29541 (h!57608 (Cons!51552 lt!1785166 lt!1785153))))))

(declare-fun lt!1785597 () Unit!112384)

(declare-fun Unit!112484 () Unit!112384)

(assert (=> b!4627056 (= lt!1785597 Unit!112484)))

(assert (=> b!4627056 (contains!14609 lt!1785608 (_1!29541 (h!57608 (Cons!51552 lt!1785166 lt!1785153))))))

(declare-fun lt!1785604 () Unit!112384)

(declare-fun Unit!112485 () Unit!112384)

(assert (=> b!4627056 (= lt!1785604 Unit!112485)))

(assert (=> b!4627056 (forall!10836 (Cons!51552 lt!1785166 lt!1785153) lambda!192563)))

(declare-fun lt!1785606 () Unit!112384)

(declare-fun Unit!112486 () Unit!112384)

(assert (=> b!4627056 (= lt!1785606 Unit!112486)))

(assert (=> b!4627056 (forall!10836 (toList!4989 lt!1785599) lambda!192563)))

(declare-fun lt!1785588 () Unit!112384)

(declare-fun Unit!112487 () Unit!112384)

(assert (=> b!4627056 (= lt!1785588 Unit!112487)))

(declare-fun lt!1785594 () Unit!112384)

(declare-fun Unit!112488 () Unit!112384)

(assert (=> b!4627056 (= lt!1785594 Unit!112488)))

(declare-fun lt!1785595 () Unit!112384)

(assert (=> b!4627056 (= lt!1785595 (addForallContainsKeyThenBeforeAdding!511 (ListMap!4294 Nil!51552) lt!1785608 (_1!29541 (h!57608 (Cons!51552 lt!1785166 lt!1785153))) (_2!29541 (h!57608 (Cons!51552 lt!1785166 lt!1785153)))))))

(assert (=> b!4627056 (forall!10836 (toList!4989 (ListMap!4294 Nil!51552)) lambda!192563)))

(declare-fun lt!1785603 () Unit!112384)

(assert (=> b!4627056 (= lt!1785603 lt!1785595)))

(assert (=> b!4627056 call!322796))

(declare-fun lt!1785600 () Unit!112384)

(declare-fun Unit!112489 () Unit!112384)

(assert (=> b!4627056 (= lt!1785600 Unit!112489)))

(declare-fun res!1940567 () Bool)

(assert (=> b!4627056 (= res!1940567 (forall!10836 (Cons!51552 lt!1785166 lt!1785153) lambda!192563))))

(declare-fun e!2886306 () Bool)

(assert (=> b!4627056 (=> (not res!1940567) (not e!2886306))))

(assert (=> b!4627056 e!2886306))

(declare-fun lt!1785593 () Unit!112384)

(declare-fun Unit!112490 () Unit!112384)

(assert (=> b!4627056 (= lt!1785593 Unit!112490)))

(declare-fun b!4627057 () Bool)

(assert (=> b!4627057 (= e!2886306 call!322795)))

(declare-fun bm!322791 () Bool)

(assert (=> bm!322791 (= call!322796 (forall!10836 (toList!4989 (ListMap!4294 Nil!51552)) (ite c!792044 lambda!192561 lambda!192563)))))

(declare-fun bm!322792 () Bool)

(assert (=> bm!322792 (= call!322797 (lemmaContainsAllItsOwnKeys!512 (ListMap!4294 Nil!51552)))))

(declare-fun b!4627058 () Bool)

(assert (=> b!4627058 (= e!2886304 (invariantList!1210 (toList!4989 lt!1785598)))))

(assert (= (and d!1457688 c!792044) b!4627054))

(assert (= (and d!1457688 (not c!792044)) b!4627056))

(assert (= (and b!4627056 res!1940567) b!4627057))

(assert (= (or b!4627054 b!4627056) bm!322792))

(assert (= (or b!4627054 b!4627057) bm!322790))

(assert (= (or b!4627054 b!4627056) bm!322791))

(assert (= (and d!1457688 res!1940565) b!4627055))

(assert (= (and b!4627055 res!1940566) b!4627058))

(declare-fun m!5470839 () Bool)

(assert (=> b!4627056 m!5470839))

(assert (=> b!4627056 m!5470839))

(declare-fun m!5470841 () Bool)

(assert (=> b!4627056 m!5470841))

(declare-fun m!5470843 () Bool)

(assert (=> b!4627056 m!5470843))

(declare-fun m!5470845 () Bool)

(assert (=> b!4627056 m!5470845))

(declare-fun m!5470847 () Bool)

(assert (=> b!4627056 m!5470847))

(declare-fun m!5470849 () Bool)

(assert (=> b!4627056 m!5470849))

(declare-fun m!5470851 () Bool)

(assert (=> b!4627056 m!5470851))

(declare-fun m!5470853 () Bool)

(assert (=> b!4627056 m!5470853))

(declare-fun m!5470855 () Bool)

(assert (=> b!4627056 m!5470855))

(declare-fun m!5470857 () Bool)

(assert (=> b!4627056 m!5470857))

(declare-fun m!5470859 () Bool)

(assert (=> b!4627056 m!5470859))

(assert (=> b!4627056 m!5470849))

(assert (=> b!4627056 m!5470843))

(declare-fun m!5470861 () Bool)

(assert (=> bm!322790 m!5470861))

(declare-fun m!5470863 () Bool)

(assert (=> b!4627055 m!5470863))

(assert (=> bm!322791 m!5470861))

(assert (=> bm!322792 m!5470729))

(declare-fun m!5470865 () Bool)

(assert (=> b!4627058 m!5470865))

(declare-fun m!5470867 () Bool)

(assert (=> d!1457688 m!5470867))

(declare-fun m!5470869 () Bool)

(assert (=> d!1457688 m!5470869))

(assert (=> b!4626804 d!1457688))

(declare-fun d!1457690 () Bool)

(assert (=> d!1457690 (= (eq!827 lt!1785161 (+!1878 (extractMap!1568 (Cons!51553 (tuple2!52497 hash!414 lt!1785174) Nil!51553)) (h!57608 oldBucket!40))) (= (content!8813 (toList!4989 lt!1785161)) (content!8813 (toList!4989 (+!1878 (extractMap!1568 (Cons!51553 (tuple2!52497 hash!414 lt!1785174) Nil!51553)) (h!57608 oldBucket!40))))))))

(declare-fun bs!1024582 () Bool)

(assert (= bs!1024582 d!1457690))

(declare-fun m!5470871 () Bool)

(assert (=> bs!1024582 m!5470871))

(declare-fun m!5470873 () Bool)

(assert (=> bs!1024582 m!5470873))

(assert (=> b!4626804 d!1457690))

(declare-fun d!1457692 () Bool)

(assert (=> d!1457692 (= (eq!827 (addToMapMapFromBucket!973 (Cons!51552 lt!1785166 lt!1785153) (ListMap!4294 Nil!51552)) (+!1878 (addToMapMapFromBucket!973 lt!1785153 (ListMap!4294 Nil!51552)) lt!1785166)) (= (content!8813 (toList!4989 (addToMapMapFromBucket!973 (Cons!51552 lt!1785166 lt!1785153) (ListMap!4294 Nil!51552)))) (content!8813 (toList!4989 (+!1878 (addToMapMapFromBucket!973 lt!1785153 (ListMap!4294 Nil!51552)) lt!1785166)))))))

(declare-fun bs!1024583 () Bool)

(assert (= bs!1024583 d!1457692))

(declare-fun m!5470875 () Bool)

(assert (=> bs!1024583 m!5470875))

(declare-fun m!5470877 () Bool)

(assert (=> bs!1024583 m!5470877))

(assert (=> b!4626804 d!1457692))

(declare-fun d!1457694 () Bool)

(declare-fun e!2886307 () Bool)

(assert (=> d!1457694 e!2886307))

(declare-fun res!1940569 () Bool)

(assert (=> d!1457694 (=> (not res!1940569) (not e!2886307))))

(declare-fun lt!1785612 () ListMap!4293)

(assert (=> d!1457694 (= res!1940569 (contains!14609 lt!1785612 (_1!29541 lt!1785172)))))

(declare-fun lt!1785610 () List!51676)

(assert (=> d!1457694 (= lt!1785612 (ListMap!4294 lt!1785610))))

(declare-fun lt!1785611 () Unit!112384)

(declare-fun lt!1785609 () Unit!112384)

(assert (=> d!1457694 (= lt!1785611 lt!1785609)))

(assert (=> d!1457694 (= (getValueByKey!1462 lt!1785610 (_1!29541 lt!1785172)) (Some!11607 (_2!29541 lt!1785172)))))

(assert (=> d!1457694 (= lt!1785609 (lemmaContainsTupThenGetReturnValue!854 lt!1785610 (_1!29541 lt!1785172) (_2!29541 lt!1785172)))))

(assert (=> d!1457694 (= lt!1785610 (insertNoDuplicatedKeys!362 (toList!4989 (addToMapMapFromBucket!973 lt!1785174 (ListMap!4294 Nil!51552))) (_1!29541 lt!1785172) (_2!29541 lt!1785172)))))

(assert (=> d!1457694 (= (+!1878 (addToMapMapFromBucket!973 lt!1785174 (ListMap!4294 Nil!51552)) lt!1785172) lt!1785612)))

(declare-fun b!4627059 () Bool)

(declare-fun res!1940568 () Bool)

(assert (=> b!4627059 (=> (not res!1940568) (not e!2886307))))

(assert (=> b!4627059 (= res!1940568 (= (getValueByKey!1462 (toList!4989 lt!1785612) (_1!29541 lt!1785172)) (Some!11607 (_2!29541 lt!1785172))))))

(declare-fun b!4627060 () Bool)

(assert (=> b!4627060 (= e!2886307 (contains!14612 (toList!4989 lt!1785612) lt!1785172))))

(assert (= (and d!1457694 res!1940569) b!4627059))

(assert (= (and b!4627059 res!1940568) b!4627060))

(declare-fun m!5470879 () Bool)

(assert (=> d!1457694 m!5470879))

(declare-fun m!5470881 () Bool)

(assert (=> d!1457694 m!5470881))

(declare-fun m!5470883 () Bool)

(assert (=> d!1457694 m!5470883))

(declare-fun m!5470885 () Bool)

(assert (=> d!1457694 m!5470885))

(declare-fun m!5470887 () Bool)

(assert (=> b!4627059 m!5470887))

(declare-fun m!5470889 () Bool)

(assert (=> b!4627060 m!5470889))

(assert (=> b!4626804 d!1457694))

(declare-fun d!1457696 () Bool)

(assert (=> d!1457696 (eq!827 (addToMapMapFromBucket!973 (Cons!51552 lt!1785172 lt!1785174) (ListMap!4294 Nil!51552)) (+!1878 (addToMapMapFromBucket!973 lt!1785174 (ListMap!4294 Nil!51552)) lt!1785172))))

(declare-fun lt!1785613 () Unit!112384)

(assert (=> d!1457696 (= lt!1785613 (choose!31350 lt!1785172 lt!1785174 (ListMap!4294 Nil!51552)))))

(assert (=> d!1457696 (noDuplicateKeys!1512 lt!1785174)))

(assert (=> d!1457696 (= (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!78 lt!1785172 lt!1785174 (ListMap!4294 Nil!51552)) lt!1785613)))

(declare-fun bs!1024584 () Bool)

(assert (= bs!1024584 d!1457696))

(assert (=> bs!1024584 m!5470193))

(assert (=> bs!1024584 m!5470269))

(assert (=> bs!1024584 m!5470193))

(assert (=> bs!1024584 m!5470179))

(assert (=> bs!1024584 m!5470177))

(assert (=> bs!1024584 m!5470179))

(assert (=> bs!1024584 m!5470181))

(assert (=> bs!1024584 m!5470177))

(declare-fun m!5470891 () Bool)

(assert (=> bs!1024584 m!5470891))

(assert (=> b!4626804 d!1457696))

(declare-fun bs!1024585 () Bool)

(declare-fun d!1457698 () Bool)

(assert (= bs!1024585 (and d!1457698 b!4627046)))

(declare-fun lambda!192573 () Int)

(assert (=> bs!1024585 (not (= lambda!192573 lambda!192551))))

(declare-fun bs!1024586 () Bool)

(assert (= bs!1024586 (and d!1457698 b!4627049)))

(assert (=> bs!1024586 (not (= lambda!192573 lambda!192554))))

(declare-fun bs!1024587 () Bool)

(assert (= bs!1024587 (and d!1457698 b!4627056)))

(assert (=> bs!1024587 (not (= lambda!192573 lambda!192562))))

(declare-fun bs!1024588 () Bool)

(assert (= bs!1024588 (and d!1457698 b!4627051)))

(assert (=> bs!1024588 (not (= lambda!192573 lambda!192556))))

(declare-fun bs!1024589 () Bool)

(assert (= bs!1024589 (and d!1457698 b!4627021)))

(assert (=> bs!1024589 (not (= lambda!192573 lambda!192545))))

(assert (=> bs!1024587 (not (= lambda!192573 lambda!192563))))

(declare-fun bs!1024590 () Bool)

(assert (= bs!1024590 (and d!1457698 d!1457678)))

(assert (=> bs!1024590 (not (= lambda!192573 lambda!192553))))

(declare-fun bs!1024591 () Bool)

(assert (= bs!1024591 (and d!1457698 d!1457688)))

(assert (=> bs!1024591 (not (= lambda!192573 lambda!192564))))

(declare-fun bs!1024592 () Bool)

(assert (= bs!1024592 (and d!1457698 b!4627023)))

(assert (=> bs!1024592 (not (= lambda!192573 lambda!192547))))

(declare-fun bs!1024593 () Bool)

(assert (= bs!1024593 (and d!1457698 b!4627044)))

(assert (=> bs!1024593 (not (= lambda!192573 lambda!192550))))

(declare-fun bs!1024594 () Bool)

(assert (= bs!1024594 (and d!1457698 d!1457684)))

(assert (=> bs!1024594 (not (= lambda!192573 lambda!192557))))

(declare-fun bs!1024595 () Bool)

(assert (= bs!1024595 (and d!1457698 b!4627054)))

(assert (=> bs!1024595 (not (= lambda!192573 lambda!192561))))

(declare-fun bs!1024596 () Bool)

(assert (= bs!1024596 (and d!1457698 d!1457610)))

(assert (=> bs!1024596 (not (= lambda!192573 lambda!192548))))

(assert (=> bs!1024585 (not (= lambda!192573 lambda!192552))))

(assert (=> bs!1024592 (not (= lambda!192573 lambda!192546))))

(assert (=> bs!1024588 (not (= lambda!192573 lambda!192555))))

(assert (=> d!1457698 true))

(assert (=> d!1457698 true))

(assert (=> d!1457698 (= (allKeysSameHash!1366 newBucket!224 hash!414 hashF!1389) (forall!10836 newBucket!224 lambda!192573))))

(declare-fun bs!1024597 () Bool)

(assert (= bs!1024597 d!1457698))

(declare-fun m!5470893 () Bool)

(assert (=> bs!1024597 m!5470893))

(assert (=> b!4626793 d!1457698))

(declare-fun bs!1024598 () Bool)

(declare-fun b!4627073 () Bool)

(assert (= bs!1024598 (and b!4627073 b!4627046)))

(declare-fun lambda!192574 () Int)

(assert (=> bs!1024598 (= (= lt!1785165 (ListMap!4294 Nil!51552)) (= lambda!192574 lambda!192551))))

(declare-fun bs!1024599 () Bool)

(assert (= bs!1024599 (and b!4627073 b!4627049)))

(assert (=> bs!1024599 (= (= lt!1785165 (ListMap!4294 Nil!51552)) (= lambda!192574 lambda!192554))))

(declare-fun bs!1024600 () Bool)

(assert (= bs!1024600 (and b!4627073 b!4627056)))

(assert (=> bs!1024600 (= (= lt!1785165 (ListMap!4294 Nil!51552)) (= lambda!192574 lambda!192562))))

(declare-fun bs!1024601 () Bool)

(assert (= bs!1024601 (and b!4627073 d!1457698)))

(assert (=> bs!1024601 (not (= lambda!192574 lambda!192573))))

(declare-fun bs!1024602 () Bool)

(assert (= bs!1024602 (and b!4627073 b!4627051)))

(assert (=> bs!1024602 (= (= lt!1785165 lt!1785584) (= lambda!192574 lambda!192556))))

(declare-fun bs!1024603 () Bool)

(assert (= bs!1024603 (and b!4627073 b!4627021)))

(assert (=> bs!1024603 (= (= lt!1785165 (ListMap!4294 Nil!51552)) (= lambda!192574 lambda!192545))))

(assert (=> bs!1024600 (= (= lt!1785165 lt!1785608) (= lambda!192574 lambda!192563))))

(declare-fun bs!1024604 () Bool)

(assert (= bs!1024604 (and b!4627073 d!1457678)))

(assert (=> bs!1024604 (= (= lt!1785165 lt!1785550) (= lambda!192574 lambda!192553))))

(declare-fun bs!1024605 () Bool)

(assert (= bs!1024605 (and b!4627073 d!1457688)))

(assert (=> bs!1024605 (= (= lt!1785165 lt!1785598) (= lambda!192574 lambda!192564))))

(declare-fun bs!1024606 () Bool)

(assert (= bs!1024606 (and b!4627073 b!4627023)))

(assert (=> bs!1024606 (= (= lt!1785165 lt!1785523) (= lambda!192574 lambda!192547))))

(declare-fun bs!1024607 () Bool)

(assert (= bs!1024607 (and b!4627073 b!4627044)))

(assert (=> bs!1024607 (= (= lt!1785165 (ListMap!4294 Nil!51552)) (= lambda!192574 lambda!192550))))

(declare-fun bs!1024608 () Bool)

(assert (= bs!1024608 (and b!4627073 d!1457684)))

(assert (=> bs!1024608 (= (= lt!1785165 lt!1785574) (= lambda!192574 lambda!192557))))

(declare-fun bs!1024609 () Bool)

(assert (= bs!1024609 (and b!4627073 b!4627054)))

(assert (=> bs!1024609 (= (= lt!1785165 (ListMap!4294 Nil!51552)) (= lambda!192574 lambda!192561))))

(declare-fun bs!1024610 () Bool)

(assert (= bs!1024610 (and b!4627073 d!1457610)))

(assert (=> bs!1024610 (= (= lt!1785165 lt!1785513) (= lambda!192574 lambda!192548))))

(assert (=> bs!1024598 (= (= lt!1785165 lt!1785560) (= lambda!192574 lambda!192552))))

(assert (=> bs!1024606 (= (= lt!1785165 (ListMap!4294 Nil!51552)) (= lambda!192574 lambda!192546))))

(assert (=> bs!1024602 (= (= lt!1785165 (ListMap!4294 Nil!51552)) (= lambda!192574 lambda!192555))))

(assert (=> b!4627073 true))

(declare-fun bs!1024611 () Bool)

(declare-fun b!4627075 () Bool)

(assert (= bs!1024611 (and b!4627075 b!4627046)))

(declare-fun lambda!192575 () Int)

(assert (=> bs!1024611 (= (= lt!1785165 (ListMap!4294 Nil!51552)) (= lambda!192575 lambda!192551))))

(declare-fun bs!1024612 () Bool)

(assert (= bs!1024612 (and b!4627075 b!4627049)))

(assert (=> bs!1024612 (= (= lt!1785165 (ListMap!4294 Nil!51552)) (= lambda!192575 lambda!192554))))

(declare-fun bs!1024613 () Bool)

(assert (= bs!1024613 (and b!4627075 b!4627056)))

(assert (=> bs!1024613 (= (= lt!1785165 (ListMap!4294 Nil!51552)) (= lambda!192575 lambda!192562))))

(declare-fun bs!1024614 () Bool)

(assert (= bs!1024614 (and b!4627075 d!1457698)))

(assert (=> bs!1024614 (not (= lambda!192575 lambda!192573))))

(declare-fun bs!1024615 () Bool)

(assert (= bs!1024615 (and b!4627075 b!4627073)))

(assert (=> bs!1024615 (= lambda!192575 lambda!192574)))

(declare-fun bs!1024616 () Bool)

(assert (= bs!1024616 (and b!4627075 b!4627051)))

(assert (=> bs!1024616 (= (= lt!1785165 lt!1785584) (= lambda!192575 lambda!192556))))

(declare-fun bs!1024617 () Bool)

(assert (= bs!1024617 (and b!4627075 b!4627021)))

(assert (=> bs!1024617 (= (= lt!1785165 (ListMap!4294 Nil!51552)) (= lambda!192575 lambda!192545))))

(assert (=> bs!1024613 (= (= lt!1785165 lt!1785608) (= lambda!192575 lambda!192563))))

(declare-fun bs!1024619 () Bool)

(assert (= bs!1024619 (and b!4627075 d!1457678)))

(assert (=> bs!1024619 (= (= lt!1785165 lt!1785550) (= lambda!192575 lambda!192553))))

(declare-fun bs!1024621 () Bool)

(assert (= bs!1024621 (and b!4627075 d!1457688)))

(assert (=> bs!1024621 (= (= lt!1785165 lt!1785598) (= lambda!192575 lambda!192564))))

(declare-fun bs!1024623 () Bool)

(assert (= bs!1024623 (and b!4627075 b!4627023)))

(assert (=> bs!1024623 (= (= lt!1785165 lt!1785523) (= lambda!192575 lambda!192547))))

(declare-fun bs!1024625 () Bool)

(assert (= bs!1024625 (and b!4627075 b!4627044)))

(assert (=> bs!1024625 (= (= lt!1785165 (ListMap!4294 Nil!51552)) (= lambda!192575 lambda!192550))))

(declare-fun bs!1024627 () Bool)

(assert (= bs!1024627 (and b!4627075 d!1457684)))

(assert (=> bs!1024627 (= (= lt!1785165 lt!1785574) (= lambda!192575 lambda!192557))))

(declare-fun bs!1024629 () Bool)

(assert (= bs!1024629 (and b!4627075 b!4627054)))

(assert (=> bs!1024629 (= (= lt!1785165 (ListMap!4294 Nil!51552)) (= lambda!192575 lambda!192561))))

(declare-fun bs!1024631 () Bool)

(assert (= bs!1024631 (and b!4627075 d!1457610)))

(assert (=> bs!1024631 (= (= lt!1785165 lt!1785513) (= lambda!192575 lambda!192548))))

(assert (=> bs!1024611 (= (= lt!1785165 lt!1785560) (= lambda!192575 lambda!192552))))

(assert (=> bs!1024623 (= (= lt!1785165 (ListMap!4294 Nil!51552)) (= lambda!192575 lambda!192546))))

(assert (=> bs!1024616 (= (= lt!1785165 (ListMap!4294 Nil!51552)) (= lambda!192575 lambda!192555))))

(assert (=> b!4627075 true))

(declare-fun lt!1785650 () ListMap!4293)

(declare-fun lambda!192577 () Int)

(assert (=> bs!1024611 (= (= lt!1785650 (ListMap!4294 Nil!51552)) (= lambda!192577 lambda!192551))))

(assert (=> bs!1024612 (= (= lt!1785650 (ListMap!4294 Nil!51552)) (= lambda!192577 lambda!192554))))

(assert (=> bs!1024613 (= (= lt!1785650 (ListMap!4294 Nil!51552)) (= lambda!192577 lambda!192562))))

(assert (=> bs!1024614 (not (= lambda!192577 lambda!192573))))

(assert (=> bs!1024615 (= (= lt!1785650 lt!1785165) (= lambda!192577 lambda!192574))))

(assert (=> bs!1024616 (= (= lt!1785650 lt!1785584) (= lambda!192577 lambda!192556))))

(assert (=> bs!1024617 (= (= lt!1785650 (ListMap!4294 Nil!51552)) (= lambda!192577 lambda!192545))))

(assert (=> bs!1024613 (= (= lt!1785650 lt!1785608) (= lambda!192577 lambda!192563))))

(assert (=> bs!1024619 (= (= lt!1785650 lt!1785550) (= lambda!192577 lambda!192553))))

(assert (=> bs!1024621 (= (= lt!1785650 lt!1785598) (= lambda!192577 lambda!192564))))

(assert (=> bs!1024625 (= (= lt!1785650 (ListMap!4294 Nil!51552)) (= lambda!192577 lambda!192550))))

(assert (=> bs!1024627 (= (= lt!1785650 lt!1785574) (= lambda!192577 lambda!192557))))

(assert (=> bs!1024629 (= (= lt!1785650 (ListMap!4294 Nil!51552)) (= lambda!192577 lambda!192561))))

(assert (=> bs!1024631 (= (= lt!1785650 lt!1785513) (= lambda!192577 lambda!192548))))

(assert (=> bs!1024611 (= (= lt!1785650 lt!1785560) (= lambda!192577 lambda!192552))))

(assert (=> bs!1024623 (= (= lt!1785650 (ListMap!4294 Nil!51552)) (= lambda!192577 lambda!192546))))

(assert (=> bs!1024616 (= (= lt!1785650 (ListMap!4294 Nil!51552)) (= lambda!192577 lambda!192555))))

(assert (=> bs!1024623 (= (= lt!1785650 lt!1785523) (= lambda!192577 lambda!192547))))

(assert (=> b!4627075 (= (= lt!1785650 lt!1785165) (= lambda!192577 lambda!192575))))

(assert (=> b!4627075 true))

(declare-fun bs!1024633 () Bool)

(declare-fun d!1457700 () Bool)

(assert (= bs!1024633 (and d!1457700 b!4627046)))

(declare-fun lt!1785640 () ListMap!4293)

(declare-fun lambda!192578 () Int)

(assert (=> bs!1024633 (= (= lt!1785640 (ListMap!4294 Nil!51552)) (= lambda!192578 lambda!192551))))

(declare-fun bs!1024634 () Bool)

(assert (= bs!1024634 (and d!1457700 b!4627049)))

(assert (=> bs!1024634 (= (= lt!1785640 (ListMap!4294 Nil!51552)) (= lambda!192578 lambda!192554))))

(declare-fun bs!1024635 () Bool)

(assert (= bs!1024635 (and d!1457700 b!4627056)))

(assert (=> bs!1024635 (= (= lt!1785640 (ListMap!4294 Nil!51552)) (= lambda!192578 lambda!192562))))

(declare-fun bs!1024636 () Bool)

(assert (= bs!1024636 (and d!1457700 d!1457698)))

(assert (=> bs!1024636 (not (= lambda!192578 lambda!192573))))

(declare-fun bs!1024637 () Bool)

(assert (= bs!1024637 (and d!1457700 b!4627075)))

(assert (=> bs!1024637 (= (= lt!1785640 lt!1785650) (= lambda!192578 lambda!192577))))

(declare-fun bs!1024638 () Bool)

(assert (= bs!1024638 (and d!1457700 b!4627073)))

(assert (=> bs!1024638 (= (= lt!1785640 lt!1785165) (= lambda!192578 lambda!192574))))

(declare-fun bs!1024639 () Bool)

(assert (= bs!1024639 (and d!1457700 b!4627051)))

(assert (=> bs!1024639 (= (= lt!1785640 lt!1785584) (= lambda!192578 lambda!192556))))

(declare-fun bs!1024640 () Bool)

(assert (= bs!1024640 (and d!1457700 b!4627021)))

(assert (=> bs!1024640 (= (= lt!1785640 (ListMap!4294 Nil!51552)) (= lambda!192578 lambda!192545))))

(assert (=> bs!1024635 (= (= lt!1785640 lt!1785608) (= lambda!192578 lambda!192563))))

(declare-fun bs!1024641 () Bool)

(assert (= bs!1024641 (and d!1457700 d!1457678)))

(assert (=> bs!1024641 (= (= lt!1785640 lt!1785550) (= lambda!192578 lambda!192553))))

(declare-fun bs!1024642 () Bool)

(assert (= bs!1024642 (and d!1457700 d!1457688)))

(assert (=> bs!1024642 (= (= lt!1785640 lt!1785598) (= lambda!192578 lambda!192564))))

(declare-fun bs!1024643 () Bool)

(assert (= bs!1024643 (and d!1457700 b!4627044)))

(assert (=> bs!1024643 (= (= lt!1785640 (ListMap!4294 Nil!51552)) (= lambda!192578 lambda!192550))))

(declare-fun bs!1024644 () Bool)

(assert (= bs!1024644 (and d!1457700 d!1457684)))

(assert (=> bs!1024644 (= (= lt!1785640 lt!1785574) (= lambda!192578 lambda!192557))))

(declare-fun bs!1024645 () Bool)

(assert (= bs!1024645 (and d!1457700 b!4627054)))

(assert (=> bs!1024645 (= (= lt!1785640 (ListMap!4294 Nil!51552)) (= lambda!192578 lambda!192561))))

(declare-fun bs!1024646 () Bool)

(assert (= bs!1024646 (and d!1457700 d!1457610)))

(assert (=> bs!1024646 (= (= lt!1785640 lt!1785513) (= lambda!192578 lambda!192548))))

(assert (=> bs!1024633 (= (= lt!1785640 lt!1785560) (= lambda!192578 lambda!192552))))

(declare-fun bs!1024647 () Bool)

(assert (= bs!1024647 (and d!1457700 b!4627023)))

(assert (=> bs!1024647 (= (= lt!1785640 (ListMap!4294 Nil!51552)) (= lambda!192578 lambda!192546))))

(assert (=> bs!1024639 (= (= lt!1785640 (ListMap!4294 Nil!51552)) (= lambda!192578 lambda!192555))))

(assert (=> bs!1024647 (= (= lt!1785640 lt!1785523) (= lambda!192578 lambda!192547))))

(assert (=> bs!1024637 (= (= lt!1785640 lt!1785165) (= lambda!192578 lambda!192575))))

(assert (=> d!1457700 true))

(declare-fun e!2886312 () Bool)

(assert (=> d!1457700 e!2886312))

(declare-fun res!1940578 () Bool)

(assert (=> d!1457700 (=> (not res!1940578) (not e!2886312))))

(assert (=> d!1457700 (= res!1940578 (forall!10836 oldBucket!40 lambda!192578))))

(declare-fun e!2886313 () ListMap!4293)

(assert (=> d!1457700 (= lt!1785640 e!2886313)))

(declare-fun c!792045 () Bool)

(assert (=> d!1457700 (= c!792045 ((_ is Nil!51552) oldBucket!40))))

(assert (=> d!1457700 (noDuplicateKeys!1512 oldBucket!40)))

(assert (=> d!1457700 (= (addToMapMapFromBucket!973 oldBucket!40 lt!1785165) lt!1785640)))

(declare-fun call!322798 () Bool)

(declare-fun bm!322793 () Bool)

(assert (=> bm!322793 (= call!322798 (forall!10836 (toList!4989 lt!1785165) (ite c!792045 lambda!192574 lambda!192577)))))

(assert (=> b!4627073 (= e!2886313 lt!1785165)))

(declare-fun lt!1785647 () Unit!112384)

(declare-fun call!322800 () Unit!112384)

(assert (=> b!4627073 (= lt!1785647 call!322800)))

(declare-fun call!322799 () Bool)

(assert (=> b!4627073 call!322799))

(declare-fun lt!1785649 () Unit!112384)

(assert (=> b!4627073 (= lt!1785649 lt!1785647)))

(assert (=> b!4627073 call!322798))

(declare-fun lt!1785634 () Unit!112384)

(declare-fun Unit!112491 () Unit!112384)

(assert (=> b!4627073 (= lt!1785634 Unit!112491)))

(declare-fun b!4627074 () Bool)

(declare-fun res!1940579 () Bool)

(assert (=> b!4627074 (=> (not res!1940579) (not e!2886312))))

(assert (=> b!4627074 (= res!1940579 (forall!10836 (toList!4989 lt!1785165) lambda!192578))))

(assert (=> b!4627075 (= e!2886313 lt!1785650)))

(declare-fun lt!1785641 () ListMap!4293)

(assert (=> b!4627075 (= lt!1785641 (+!1878 lt!1785165 (h!57608 oldBucket!40)))))

(assert (=> b!4627075 (= lt!1785650 (addToMapMapFromBucket!973 (t!358714 oldBucket!40) (+!1878 lt!1785165 (h!57608 oldBucket!40))))))

(declare-fun lt!1785643 () Unit!112384)

(assert (=> b!4627075 (= lt!1785643 call!322800)))

(assert (=> b!4627075 (forall!10836 (toList!4989 lt!1785165) lambda!192575)))

(declare-fun lt!1785638 () Unit!112384)

(assert (=> b!4627075 (= lt!1785638 lt!1785643)))

(assert (=> b!4627075 (forall!10836 (toList!4989 lt!1785641) lambda!192577)))

(declare-fun lt!1785631 () Unit!112384)

(declare-fun Unit!112492 () Unit!112384)

(assert (=> b!4627075 (= lt!1785631 Unit!112492)))

(assert (=> b!4627075 (forall!10836 (t!358714 oldBucket!40) lambda!192577)))

(declare-fun lt!1785644 () Unit!112384)

(declare-fun Unit!112493 () Unit!112384)

(assert (=> b!4627075 (= lt!1785644 Unit!112493)))

(declare-fun lt!1785632 () Unit!112384)

(declare-fun Unit!112494 () Unit!112384)

(assert (=> b!4627075 (= lt!1785632 Unit!112494)))

(declare-fun lt!1785633 () Unit!112384)

(assert (=> b!4627075 (= lt!1785633 (forallContained!3064 (toList!4989 lt!1785641) lambda!192577 (h!57608 oldBucket!40)))))

(assert (=> b!4627075 (contains!14609 lt!1785641 (_1!29541 (h!57608 oldBucket!40)))))

(declare-fun lt!1785639 () Unit!112384)

(declare-fun Unit!112495 () Unit!112384)

(assert (=> b!4627075 (= lt!1785639 Unit!112495)))

(assert (=> b!4627075 (contains!14609 lt!1785650 (_1!29541 (h!57608 oldBucket!40)))))

(declare-fun lt!1785646 () Unit!112384)

(declare-fun Unit!112496 () Unit!112384)

(assert (=> b!4627075 (= lt!1785646 Unit!112496)))

(assert (=> b!4627075 (forall!10836 oldBucket!40 lambda!192577)))

(declare-fun lt!1785648 () Unit!112384)

(declare-fun Unit!112497 () Unit!112384)

(assert (=> b!4627075 (= lt!1785648 Unit!112497)))

(assert (=> b!4627075 (forall!10836 (toList!4989 lt!1785641) lambda!192577)))

(declare-fun lt!1785630 () Unit!112384)

(declare-fun Unit!112498 () Unit!112384)

(assert (=> b!4627075 (= lt!1785630 Unit!112498)))

(declare-fun lt!1785636 () Unit!112384)

(declare-fun Unit!112499 () Unit!112384)

(assert (=> b!4627075 (= lt!1785636 Unit!112499)))

(declare-fun lt!1785637 () Unit!112384)

(assert (=> b!4627075 (= lt!1785637 (addForallContainsKeyThenBeforeAdding!511 lt!1785165 lt!1785650 (_1!29541 (h!57608 oldBucket!40)) (_2!29541 (h!57608 oldBucket!40))))))

(assert (=> b!4627075 (forall!10836 (toList!4989 lt!1785165) lambda!192577)))

(declare-fun lt!1785645 () Unit!112384)

(assert (=> b!4627075 (= lt!1785645 lt!1785637)))

(assert (=> b!4627075 call!322799))

(declare-fun lt!1785642 () Unit!112384)

(declare-fun Unit!112500 () Unit!112384)

(assert (=> b!4627075 (= lt!1785642 Unit!112500)))

(declare-fun res!1940580 () Bool)

(assert (=> b!4627075 (= res!1940580 (forall!10836 oldBucket!40 lambda!192577))))

(declare-fun e!2886314 () Bool)

(assert (=> b!4627075 (=> (not res!1940580) (not e!2886314))))

(assert (=> b!4627075 e!2886314))

(declare-fun lt!1785635 () Unit!112384)

(declare-fun Unit!112501 () Unit!112384)

(assert (=> b!4627075 (= lt!1785635 Unit!112501)))

(declare-fun b!4627076 () Bool)

(assert (=> b!4627076 (= e!2886314 call!322798)))

(declare-fun bm!322794 () Bool)

(assert (=> bm!322794 (= call!322799 (forall!10836 (toList!4989 lt!1785165) (ite c!792045 lambda!192574 lambda!192577)))))

(declare-fun bm!322795 () Bool)

(assert (=> bm!322795 (= call!322800 (lemmaContainsAllItsOwnKeys!512 lt!1785165))))

(declare-fun b!4627077 () Bool)

(assert (=> b!4627077 (= e!2886312 (invariantList!1210 (toList!4989 lt!1785640)))))

(assert (= (and d!1457700 c!792045) b!4627073))

(assert (= (and d!1457700 (not c!792045)) b!4627075))

(assert (= (and b!4627075 res!1940580) b!4627076))

(assert (= (or b!4627073 b!4627075) bm!322795))

(assert (= (or b!4627073 b!4627076) bm!322793))

(assert (= (or b!4627073 b!4627075) bm!322794))

(assert (= (and d!1457700 res!1940578) b!4627074))

(assert (= (and b!4627074 res!1940579) b!4627077))

(declare-fun m!5470925 () Bool)

(assert (=> b!4627075 m!5470925))

(assert (=> b!4627075 m!5470925))

(declare-fun m!5470927 () Bool)

(assert (=> b!4627075 m!5470927))

(declare-fun m!5470929 () Bool)

(assert (=> b!4627075 m!5470929))

(declare-fun m!5470931 () Bool)

(assert (=> b!4627075 m!5470931))

(declare-fun m!5470933 () Bool)

(assert (=> b!4627075 m!5470933))

(declare-fun m!5470935 () Bool)

(assert (=> b!4627075 m!5470935))

(declare-fun m!5470937 () Bool)

(assert (=> b!4627075 m!5470937))

(declare-fun m!5470939 () Bool)

(assert (=> b!4627075 m!5470939))

(declare-fun m!5470941 () Bool)

(assert (=> b!4627075 m!5470941))

(declare-fun m!5470943 () Bool)

(assert (=> b!4627075 m!5470943))

(declare-fun m!5470945 () Bool)

(assert (=> b!4627075 m!5470945))

(assert (=> b!4627075 m!5470935))

(assert (=> b!4627075 m!5470929))

(declare-fun m!5470947 () Bool)

(assert (=> bm!322793 m!5470947))

(declare-fun m!5470949 () Bool)

(assert (=> b!4627074 m!5470949))

(assert (=> bm!322794 m!5470947))

(declare-fun m!5470951 () Bool)

(assert (=> bm!322795 m!5470951))

(declare-fun m!5470953 () Bool)

(assert (=> b!4627077 m!5470953))

(declare-fun m!5470955 () Bool)

(assert (=> d!1457700 m!5470955))

(assert (=> d!1457700 m!5470141))

(assert (=> b!4626803 d!1457700))

(declare-fun bs!1024648 () Bool)

(declare-fun d!1457706 () Bool)

(assert (= bs!1024648 (and d!1457706 b!4626792)))

(declare-fun lambda!192581 () Int)

(assert (=> bs!1024648 (= lambda!192581 lambda!192450)))

(declare-fun bs!1024649 () Bool)

(assert (= bs!1024649 (and d!1457706 d!1457670)))

(assert (=> bs!1024649 (= lambda!192581 lambda!192549)))

(declare-fun bs!1024650 () Bool)

(assert (= bs!1024650 (and d!1457706 d!1457584)))

(assert (=> bs!1024650 (= lambda!192581 lambda!192491)))

(declare-fun bs!1024652 () Bool)

(assert (= bs!1024652 (and d!1457706 d!1457564)))

(assert (=> bs!1024652 (= lambda!192581 lambda!192470)))

(declare-fun bs!1024654 () Bool)

(assert (= bs!1024654 (and d!1457706 d!1457686)))

(assert (=> bs!1024654 (= lambda!192581 lambda!192560)))

(declare-fun lt!1785661 () ListMap!4293)

(assert (=> d!1457706 (invariantList!1210 (toList!4989 lt!1785661))))

(declare-fun e!2886317 () ListMap!4293)

(assert (=> d!1457706 (= lt!1785661 e!2886317)))

(declare-fun c!792046 () Bool)

(assert (=> d!1457706 (= c!792046 ((_ is Cons!51553) Nil!51553))))

(assert (=> d!1457706 (forall!10834 Nil!51553 lambda!192581)))

(assert (=> d!1457706 (= (extractMap!1568 Nil!51553) lt!1785661)))

(declare-fun b!4627082 () Bool)

(assert (=> b!4627082 (= e!2886317 (addToMapMapFromBucket!973 (_2!29542 (h!57609 Nil!51553)) (extractMap!1568 (t!358715 Nil!51553))))))

(declare-fun b!4627083 () Bool)

(assert (=> b!4627083 (= e!2886317 (ListMap!4294 Nil!51552))))

(assert (= (and d!1457706 c!792046) b!4627082))

(assert (= (and d!1457706 (not c!792046)) b!4627083))

(declare-fun m!5470957 () Bool)

(assert (=> d!1457706 m!5470957))

(declare-fun m!5470959 () Bool)

(assert (=> d!1457706 m!5470959))

(declare-fun m!5470961 () Bool)

(assert (=> b!4627082 m!5470961))

(assert (=> b!4627082 m!5470961))

(declare-fun m!5470963 () Bool)

(assert (=> b!4627082 m!5470963))

(assert (=> b!4626803 d!1457706))

(declare-fun d!1457708 () Bool)

(declare-fun dynLambda!21504 (Int tuple2!52496) Bool)

(assert (=> d!1457708 (dynLambda!21504 lambda!192450 lt!1785163)))

(declare-fun lt!1785667 () Unit!112384)

(declare-fun choose!31360 (List!51677 Int tuple2!52496) Unit!112384)

(assert (=> d!1457708 (= lt!1785667 (choose!31360 lt!1785173 lambda!192450 lt!1785163))))

(declare-fun e!2886324 () Bool)

(assert (=> d!1457708 e!2886324))

(declare-fun res!1940591 () Bool)

(assert (=> d!1457708 (=> (not res!1940591) (not e!2886324))))

(assert (=> d!1457708 (= res!1940591 (forall!10834 lt!1785173 lambda!192450))))

(assert (=> d!1457708 (= (forallContained!3062 lt!1785173 lambda!192450 lt!1785163) lt!1785667)))

(declare-fun b!4627090 () Bool)

(assert (=> b!4627090 (= e!2886324 (contains!14607 lt!1785173 lt!1785163))))

(assert (= (and d!1457708 res!1940591) b!4627090))

(declare-fun b_lambda!170777 () Bool)

(assert (=> (not b_lambda!170777) (not d!1457708)))

(declare-fun m!5470969 () Bool)

(assert (=> d!1457708 m!5470969))

(declare-fun m!5470971 () Bool)

(assert (=> d!1457708 m!5470971))

(assert (=> d!1457708 m!5470163))

(assert (=> b!4627090 m!5470119))

(assert (=> b!4626792 d!1457708))

(declare-fun b!4627118 () Bool)

(declare-fun e!2886347 () Option!11606)

(assert (=> b!4627118 (= e!2886347 (Some!11605 (h!57608 lt!1785162)))))

(declare-fun b!4627120 () Bool)

(declare-fun e!2886343 () Option!11606)

(assert (=> b!4627120 (= e!2886343 (getPair!304 (t!358714 lt!1785162) key!4968))))

(declare-fun b!4627121 () Bool)

(assert (=> b!4627121 (= e!2886343 None!11605)))

(declare-fun b!4627122 () Bool)

(declare-fun res!1940608 () Bool)

(declare-fun e!2886346 () Bool)

(assert (=> b!4627122 (=> (not res!1940608) (not e!2886346))))

(declare-fun lt!1785683 () Option!11606)

(declare-fun get!17090 (Option!11606) tuple2!52494)

(assert (=> b!4627122 (= res!1940608 (= (_1!29541 (get!17090 lt!1785683)) key!4968))))

(declare-fun b!4627123 () Bool)

(assert (=> b!4627123 (= e!2886346 (contains!14612 lt!1785162 (get!17090 lt!1785683)))))

(declare-fun b!4627119 () Bool)

(assert (=> b!4627119 (= e!2886347 e!2886343)))

(declare-fun c!792055 () Bool)

(assert (=> b!4627119 (= c!792055 ((_ is Cons!51552) lt!1785162))))

(declare-fun d!1457712 () Bool)

(declare-fun e!2886344 () Bool)

(assert (=> d!1457712 e!2886344))

(declare-fun res!1940605 () Bool)

(assert (=> d!1457712 (=> res!1940605 e!2886344)))

(declare-fun e!2886345 () Bool)

(assert (=> d!1457712 (= res!1940605 e!2886345)))

(declare-fun res!1940606 () Bool)

(assert (=> d!1457712 (=> (not res!1940606) (not e!2886345))))

(declare-fun isEmpty!28936 (Option!11606) Bool)

(assert (=> d!1457712 (= res!1940606 (isEmpty!28936 lt!1785683))))

(assert (=> d!1457712 (= lt!1785683 e!2886347)))

(declare-fun c!792054 () Bool)

(assert (=> d!1457712 (= c!792054 (and ((_ is Cons!51552) lt!1785162) (= (_1!29541 (h!57608 lt!1785162)) key!4968)))))

(assert (=> d!1457712 (noDuplicateKeys!1512 lt!1785162)))

(assert (=> d!1457712 (= (getPair!304 lt!1785162 key!4968) lt!1785683)))

(declare-fun b!4627124 () Bool)

(assert (=> b!4627124 (= e!2886344 e!2886346)))

(declare-fun res!1940607 () Bool)

(assert (=> b!4627124 (=> (not res!1940607) (not e!2886346))))

(assert (=> b!4627124 (= res!1940607 (isDefined!8871 lt!1785683))))

(declare-fun b!4627125 () Bool)

(assert (=> b!4627125 (= e!2886345 (not (containsKey!2464 lt!1785162 key!4968)))))

(assert (= (and d!1457712 c!792054) b!4627118))

(assert (= (and d!1457712 (not c!792054)) b!4627119))

(assert (= (and b!4627119 c!792055) b!4627120))

(assert (= (and b!4627119 (not c!792055)) b!4627121))

(assert (= (and d!1457712 res!1940606) b!4627125))

(assert (= (and d!1457712 (not res!1940605)) b!4627124))

(assert (= (and b!4627124 res!1940607) b!4627122))

(assert (= (and b!4627122 res!1940608) b!4627123))

(declare-fun m!5470987 () Bool)

(assert (=> b!4627125 m!5470987))

(declare-fun m!5470989 () Bool)

(assert (=> b!4627123 m!5470989))

(assert (=> b!4627123 m!5470989))

(declare-fun m!5470991 () Bool)

(assert (=> b!4627123 m!5470991))

(assert (=> b!4627122 m!5470989))

(declare-fun m!5470993 () Bool)

(assert (=> b!4627120 m!5470993))

(declare-fun m!5470995 () Bool)

(assert (=> b!4627124 m!5470995))

(declare-fun m!5470997 () Bool)

(assert (=> d!1457712 m!5470997))

(declare-fun m!5470999 () Bool)

(assert (=> d!1457712 m!5470999))

(assert (=> b!4626792 d!1457712))

(declare-fun d!1457718 () Bool)

(assert (=> d!1457718 (containsKey!2464 oldBucket!40 key!4968)))

(declare-fun lt!1785686 () Unit!112384)

(declare-fun choose!31362 (List!51676 K!12930 Hashable!5909) Unit!112384)

(assert (=> d!1457718 (= lt!1785686 (choose!31362 oldBucket!40 key!4968 hashF!1389))))

(assert (=> d!1457718 (noDuplicateKeys!1512 oldBucket!40)))

(assert (=> d!1457718 (= (lemmaGetPairDefinedThenContainsKey!58 oldBucket!40 key!4968 hashF!1389) lt!1785686)))

(declare-fun bs!1024662 () Bool)

(assert (= bs!1024662 d!1457718))

(assert (=> bs!1024662 m!5470127))

(declare-fun m!5471003 () Bool)

(assert (=> bs!1024662 m!5471003))

(assert (=> bs!1024662 m!5470141))

(assert (=> b!4626792 d!1457718))

(declare-fun d!1457724 () Bool)

(declare-fun res!1940621 () Bool)

(declare-fun e!2886360 () Bool)

(assert (=> d!1457724 (=> res!1940621 e!2886360)))

(assert (=> d!1457724 (= res!1940621 (and ((_ is Cons!51552) (t!358714 oldBucket!40)) (= (_1!29541 (h!57608 (t!358714 oldBucket!40))) key!4968)))))

(assert (=> d!1457724 (= (containsKey!2464 (t!358714 oldBucket!40) key!4968) e!2886360)))

(declare-fun b!4627138 () Bool)

(declare-fun e!2886361 () Bool)

(assert (=> b!4627138 (= e!2886360 e!2886361)))

(declare-fun res!1940622 () Bool)

(assert (=> b!4627138 (=> (not res!1940622) (not e!2886361))))

(assert (=> b!4627138 (= res!1940622 ((_ is Cons!51552) (t!358714 oldBucket!40)))))

(declare-fun b!4627139 () Bool)

(assert (=> b!4627139 (= e!2886361 (containsKey!2464 (t!358714 (t!358714 oldBucket!40)) key!4968))))

(assert (= (and d!1457724 (not res!1940621)) b!4627138))

(assert (= (and b!4627138 res!1940622) b!4627139))

(declare-fun m!5471005 () Bool)

(assert (=> b!4627139 m!5471005))

(assert (=> b!4626792 d!1457724))

(declare-fun d!1457726 () Bool)

(assert (=> d!1457726 (contains!14607 (toList!4990 lt!1785152) (tuple2!52497 lt!1785155 lt!1785162))))

(declare-fun lt!1785691 () Unit!112384)

(declare-fun choose!31363 (ListLongMap!3579 (_ BitVec 64) List!51676) Unit!112384)

(assert (=> d!1457726 (= lt!1785691 (choose!31363 lt!1785152 lt!1785155 lt!1785162))))

(assert (=> d!1457726 (contains!14608 lt!1785152 lt!1785155)))

(assert (=> d!1457726 (= (lemmaGetValueImpliesTupleContained!109 lt!1785152 lt!1785155 lt!1785162) lt!1785691)))

(declare-fun bs!1024663 () Bool)

(assert (= bs!1024663 d!1457726))

(declare-fun m!5471007 () Bool)

(assert (=> bs!1024663 m!5471007))

(declare-fun m!5471009 () Bool)

(assert (=> bs!1024663 m!5471009))

(assert (=> bs!1024663 m!5470129))

(assert (=> b!4626792 d!1457726))

(declare-fun bs!1024665 () Bool)

(declare-fun d!1457728 () Bool)

(assert (= bs!1024665 (and d!1457728 b!4626792)))

(declare-fun lambda!192585 () Int)

(assert (=> bs!1024665 (= lambda!192585 lambda!192450)))

(declare-fun bs!1024666 () Bool)

(assert (= bs!1024666 (and d!1457728 d!1457670)))

(assert (=> bs!1024666 (= lambda!192585 lambda!192549)))

(declare-fun bs!1024667 () Bool)

(assert (= bs!1024667 (and d!1457728 d!1457584)))

(assert (=> bs!1024667 (= lambda!192585 lambda!192491)))

(declare-fun bs!1024668 () Bool)

(assert (= bs!1024668 (and d!1457728 d!1457706)))

(assert (=> bs!1024668 (= lambda!192585 lambda!192581)))

(declare-fun bs!1024669 () Bool)

(assert (= bs!1024669 (and d!1457728 d!1457564)))

(assert (=> bs!1024669 (= lambda!192585 lambda!192470)))

(declare-fun bs!1024670 () Bool)

(assert (= bs!1024670 (and d!1457728 d!1457686)))

(assert (=> bs!1024670 (= lambda!192585 lambda!192560)))

(assert (=> d!1457728 (contains!14608 lt!1785152 (hash!3517 hashF!1389 key!4968))))

(declare-fun lt!1785703 () Unit!112384)

(declare-fun choose!31364 (ListLongMap!3579 K!12930 Hashable!5909) Unit!112384)

(assert (=> d!1457728 (= lt!1785703 (choose!31364 lt!1785152 key!4968 hashF!1389))))

(assert (=> d!1457728 (forall!10834 (toList!4990 lt!1785152) lambda!192585)))

(assert (=> d!1457728 (= (lemmaInGenMapThenLongMapContainsHash!510 lt!1785152 key!4968 hashF!1389) lt!1785703)))

(declare-fun bs!1024671 () Bool)

(assert (= bs!1024671 d!1457728))

(assert (=> bs!1024671 m!5470207))

(assert (=> bs!1024671 m!5470207))

(declare-fun m!5471047 () Bool)

(assert (=> bs!1024671 m!5471047))

(declare-fun m!5471049 () Bool)

(assert (=> bs!1024671 m!5471049))

(declare-fun m!5471051 () Bool)

(assert (=> bs!1024671 m!5471051))

(assert (=> b!4626792 d!1457728))

(declare-fun d!1457736 () Bool)

(declare-fun res!1940638 () Bool)

(declare-fun e!2886384 () Bool)

(assert (=> d!1457736 (=> res!1940638 e!2886384)))

(assert (=> d!1457736 (= res!1940638 (and ((_ is Cons!51552) oldBucket!40) (= (_1!29541 (h!57608 oldBucket!40)) key!4968)))))

(assert (=> d!1457736 (= (containsKey!2464 oldBucket!40 key!4968) e!2886384)))

(declare-fun b!4627176 () Bool)

(declare-fun e!2886385 () Bool)

(assert (=> b!4627176 (= e!2886384 e!2886385)))

(declare-fun res!1940639 () Bool)

(assert (=> b!4627176 (=> (not res!1940639) (not e!2886385))))

(assert (=> b!4627176 (= res!1940639 ((_ is Cons!51552) oldBucket!40))))

(declare-fun b!4627177 () Bool)

(assert (=> b!4627177 (= e!2886385 (containsKey!2464 (t!358714 oldBucket!40) key!4968))))

(assert (= (and d!1457736 (not res!1940638)) b!4627176))

(assert (= (and b!4627176 res!1940639) b!4627177))

(assert (=> b!4627177 m!5470133))

(assert (=> b!4626792 d!1457736))

(declare-fun d!1457738 () Bool)

(declare-fun e!2886394 () Bool)

(assert (=> d!1457738 e!2886394))

(declare-fun res!1940642 () Bool)

(assert (=> d!1457738 (=> res!1940642 e!2886394)))

(declare-fun lt!1785714 () Bool)

(assert (=> d!1457738 (= res!1940642 (not lt!1785714))))

(declare-fun lt!1785715 () Bool)

(assert (=> d!1457738 (= lt!1785714 lt!1785715)))

(declare-fun lt!1785713 () Unit!112384)

(declare-fun e!2886395 () Unit!112384)

(assert (=> d!1457738 (= lt!1785713 e!2886395)))

(declare-fun c!792068 () Bool)

(assert (=> d!1457738 (= c!792068 lt!1785715)))

(declare-fun containsKey!2468 (List!51677 (_ BitVec 64)) Bool)

(assert (=> d!1457738 (= lt!1785715 (containsKey!2468 (toList!4990 lt!1785152) lt!1785155))))

(assert (=> d!1457738 (= (contains!14608 lt!1785152 lt!1785155) lt!1785714)))

(declare-fun b!4627190 () Bool)

(declare-fun lt!1785716 () Unit!112384)

(assert (=> b!4627190 (= e!2886395 lt!1785716)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1366 (List!51677 (_ BitVec 64)) Unit!112384)

(assert (=> b!4627190 (= lt!1785716 (lemmaContainsKeyImpliesGetValueByKeyDefined!1366 (toList!4990 lt!1785152) lt!1785155))))

(declare-datatypes ((Option!11610 0))(
  ( (None!11609) (Some!11609 (v!45751 List!51676)) )
))
(declare-fun isDefined!8875 (Option!11610) Bool)

(declare-fun getValueByKey!1464 (List!51677 (_ BitVec 64)) Option!11610)

(assert (=> b!4627190 (isDefined!8875 (getValueByKey!1464 (toList!4990 lt!1785152) lt!1785155))))

(declare-fun b!4627191 () Bool)

(declare-fun Unit!112503 () Unit!112384)

(assert (=> b!4627191 (= e!2886395 Unit!112503)))

(declare-fun b!4627192 () Bool)

(assert (=> b!4627192 (= e!2886394 (isDefined!8875 (getValueByKey!1464 (toList!4990 lt!1785152) lt!1785155)))))

(assert (= (and d!1457738 c!792068) b!4627190))

(assert (= (and d!1457738 (not c!792068)) b!4627191))

(assert (= (and d!1457738 (not res!1940642)) b!4627192))

(declare-fun m!5471065 () Bool)

(assert (=> d!1457738 m!5471065))

(declare-fun m!5471067 () Bool)

(assert (=> b!4627190 m!5471067))

(declare-fun m!5471069 () Bool)

(assert (=> b!4627190 m!5471069))

(assert (=> b!4627190 m!5471069))

(declare-fun m!5471071 () Bool)

(assert (=> b!4627190 m!5471071))

(assert (=> b!4627192 m!5471069))

(assert (=> b!4627192 m!5471069))

(assert (=> b!4627192 m!5471071))

(assert (=> b!4626792 d!1457738))

(declare-fun d!1457744 () Bool)

(assert (=> d!1457744 (= (isDefined!8871 (getPair!304 lt!1785162 key!4968)) (not (isEmpty!28936 (getPair!304 lt!1785162 key!4968))))))

(declare-fun bs!1024683 () Bool)

(assert (= bs!1024683 d!1457744))

(assert (=> bs!1024683 m!5470123))

(declare-fun m!5471073 () Bool)

(assert (=> bs!1024683 m!5471073))

(assert (=> b!4626792 d!1457744))

(declare-fun d!1457746 () Bool)

(declare-fun get!17093 (Option!11610) List!51676)

(assert (=> d!1457746 (= (apply!12177 lt!1785152 lt!1785155) (get!17093 (getValueByKey!1464 (toList!4990 lt!1785152) lt!1785155)))))

(declare-fun bs!1024684 () Bool)

(assert (= bs!1024684 d!1457746))

(assert (=> bs!1024684 m!5471069))

(assert (=> bs!1024684 m!5471069))

(declare-fun m!5471075 () Bool)

(assert (=> bs!1024684 m!5471075))

(assert (=> b!4626792 d!1457746))

(declare-fun bs!1024685 () Bool)

(declare-fun d!1457748 () Bool)

(assert (= bs!1024685 (and d!1457748 b!4626792)))

(declare-fun lambda!192593 () Int)

(assert (=> bs!1024685 (= lambda!192593 lambda!192450)))

(declare-fun bs!1024686 () Bool)

(assert (= bs!1024686 (and d!1457748 d!1457728)))

(assert (=> bs!1024686 (= lambda!192593 lambda!192585)))

(declare-fun bs!1024687 () Bool)

(assert (= bs!1024687 (and d!1457748 d!1457670)))

(assert (=> bs!1024687 (= lambda!192593 lambda!192549)))

(declare-fun bs!1024688 () Bool)

(assert (= bs!1024688 (and d!1457748 d!1457584)))

(assert (=> bs!1024688 (= lambda!192593 lambda!192491)))

(declare-fun bs!1024689 () Bool)

(assert (= bs!1024689 (and d!1457748 d!1457706)))

(assert (=> bs!1024689 (= lambda!192593 lambda!192581)))

(declare-fun bs!1024690 () Bool)

(assert (= bs!1024690 (and d!1457748 d!1457564)))

(assert (=> bs!1024690 (= lambda!192593 lambda!192470)))

(declare-fun bs!1024691 () Bool)

(assert (= bs!1024691 (and d!1457748 d!1457686)))

(assert (=> bs!1024691 (= lambda!192593 lambda!192560)))

(declare-fun b!4627201 () Bool)

(declare-fun res!1940654 () Bool)

(declare-fun e!2886401 () Bool)

(assert (=> b!4627201 (=> (not res!1940654) (not e!2886401))))

(declare-fun allKeysSameHashInMap!1536 (ListLongMap!3579 Hashable!5909) Bool)

(assert (=> b!4627201 (= res!1940654 (allKeysSameHashInMap!1536 lt!1785152 hashF!1389))))

(assert (=> d!1457748 e!2886401))

(declare-fun res!1940651 () Bool)

(assert (=> d!1457748 (=> (not res!1940651) (not e!2886401))))

(assert (=> d!1457748 (= res!1940651 (forall!10834 (toList!4990 lt!1785152) lambda!192593))))

(declare-fun lt!1785737 () Unit!112384)

(declare-fun choose!31365 (ListLongMap!3579 K!12930 Hashable!5909) Unit!112384)

(assert (=> d!1457748 (= lt!1785737 (choose!31365 lt!1785152 key!4968 hashF!1389))))

(assert (=> d!1457748 (forall!10834 (toList!4990 lt!1785152) lambda!192593)))

(assert (=> d!1457748 (= (lemmaInGenMapThenGetPairDefined!100 lt!1785152 key!4968 hashF!1389) lt!1785737)))

(declare-fun b!4627204 () Bool)

(declare-fun lt!1785734 () List!51676)

(declare-fun e!2886400 () Bool)

(declare-fun lt!1785740 () (_ BitVec 64))

(assert (=> b!4627204 (= e!2886400 (= (getValueByKey!1464 (toList!4990 lt!1785152) lt!1785740) (Some!11609 lt!1785734)))))

(declare-fun b!4627203 () Bool)

(assert (=> b!4627203 (= e!2886401 (isDefined!8871 (getPair!304 (apply!12177 lt!1785152 (hash!3517 hashF!1389 key!4968)) key!4968)))))

(declare-fun lt!1785736 () Unit!112384)

(assert (=> b!4627203 (= lt!1785736 (forallContained!3062 (toList!4990 lt!1785152) lambda!192593 (tuple2!52497 (hash!3517 hashF!1389 key!4968) (apply!12177 lt!1785152 (hash!3517 hashF!1389 key!4968)))))))

(declare-fun lt!1785735 () Unit!112384)

(declare-fun lt!1785733 () Unit!112384)

(assert (=> b!4627203 (= lt!1785735 lt!1785733)))

(assert (=> b!4627203 (contains!14607 (toList!4990 lt!1785152) (tuple2!52497 lt!1785740 lt!1785734))))

(assert (=> b!4627203 (= lt!1785733 (lemmaGetValueImpliesTupleContained!109 lt!1785152 lt!1785740 lt!1785734))))

(assert (=> b!4627203 e!2886400))

(declare-fun res!1940652 () Bool)

(assert (=> b!4627203 (=> (not res!1940652) (not e!2886400))))

(assert (=> b!4627203 (= res!1940652 (contains!14608 lt!1785152 lt!1785740))))

(assert (=> b!4627203 (= lt!1785734 (apply!12177 lt!1785152 (hash!3517 hashF!1389 key!4968)))))

(assert (=> b!4627203 (= lt!1785740 (hash!3517 hashF!1389 key!4968))))

(declare-fun lt!1785738 () Unit!112384)

(declare-fun lt!1785739 () Unit!112384)

(assert (=> b!4627203 (= lt!1785738 lt!1785739)))

(assert (=> b!4627203 (contains!14608 lt!1785152 (hash!3517 hashF!1389 key!4968))))

(assert (=> b!4627203 (= lt!1785739 (lemmaInGenMapThenLongMapContainsHash!510 lt!1785152 key!4968 hashF!1389))))

(declare-fun b!4627202 () Bool)

(declare-fun res!1940653 () Bool)

(assert (=> b!4627202 (=> (not res!1940653) (not e!2886401))))

(assert (=> b!4627202 (= res!1940653 (contains!14609 (extractMap!1568 (toList!4990 lt!1785152)) key!4968))))

(assert (= (and d!1457748 res!1940651) b!4627201))

(assert (= (and b!4627201 res!1940654) b!4627202))

(assert (= (and b!4627202 res!1940653) b!4627203))

(assert (= (and b!4627203 res!1940652) b!4627204))

(declare-fun m!5471077 () Bool)

(assert (=> d!1457748 m!5471077))

(declare-fun m!5471079 () Bool)

(assert (=> d!1457748 m!5471079))

(assert (=> d!1457748 m!5471077))

(declare-fun m!5471081 () Bool)

(assert (=> b!4627201 m!5471081))

(declare-fun m!5471083 () Bool)

(assert (=> b!4627203 m!5471083))

(declare-fun m!5471085 () Bool)

(assert (=> b!4627203 m!5471085))

(declare-fun m!5471087 () Bool)

(assert (=> b!4627203 m!5471087))

(declare-fun m!5471089 () Bool)

(assert (=> b!4627203 m!5471089))

(declare-fun m!5471091 () Bool)

(assert (=> b!4627203 m!5471091))

(declare-fun m!5471093 () Bool)

(assert (=> b!4627203 m!5471093))

(declare-fun m!5471095 () Bool)

(assert (=> b!4627203 m!5471095))

(assert (=> b!4627203 m!5471087))

(assert (=> b!4627203 m!5470207))

(assert (=> b!4627203 m!5470207))

(assert (=> b!4627203 m!5471047))

(assert (=> b!4627203 m!5470139))

(assert (=> b!4627203 m!5470207))

(assert (=> b!4627203 m!5471095))

(declare-fun m!5471097 () Bool)

(assert (=> b!4627202 m!5471097))

(assert (=> b!4627202 m!5471097))

(declare-fun m!5471099 () Bool)

(assert (=> b!4627202 m!5471099))

(declare-fun m!5471101 () Bool)

(assert (=> b!4627204 m!5471101))

(assert (=> b!4626792 d!1457748))

(declare-fun d!1457750 () Bool)

(declare-fun lt!1785743 () Bool)

(declare-fun content!8816 (List!51677) (InoxSet tuple2!52496))

(assert (=> d!1457750 (= lt!1785743 (select (content!8816 lt!1785173) lt!1785163))))

(declare-fun e!2886407 () Bool)

(assert (=> d!1457750 (= lt!1785743 e!2886407)))

(declare-fun res!1940660 () Bool)

(assert (=> d!1457750 (=> (not res!1940660) (not e!2886407))))

(assert (=> d!1457750 (= res!1940660 ((_ is Cons!51553) lt!1785173))))

(assert (=> d!1457750 (= (contains!14607 lt!1785173 lt!1785163) lt!1785743)))

(declare-fun b!4627209 () Bool)

(declare-fun e!2886406 () Bool)

(assert (=> b!4627209 (= e!2886407 e!2886406)))

(declare-fun res!1940659 () Bool)

(assert (=> b!4627209 (=> res!1940659 e!2886406)))

(assert (=> b!4627209 (= res!1940659 (= (h!57609 lt!1785173) lt!1785163))))

(declare-fun b!4627210 () Bool)

(assert (=> b!4627210 (= e!2886406 (contains!14607 (t!358715 lt!1785173) lt!1785163))))

(assert (= (and d!1457750 res!1940660) b!4627209))

(assert (= (and b!4627209 (not res!1940659)) b!4627210))

(declare-fun m!5471103 () Bool)

(assert (=> d!1457750 m!5471103))

(declare-fun m!5471105 () Bool)

(assert (=> d!1457750 m!5471105))

(declare-fun m!5471107 () Bool)

(assert (=> b!4627210 m!5471107))

(assert (=> b!4626792 d!1457750))

(declare-fun d!1457752 () Bool)

(declare-fun e!2886410 () Bool)

(assert (=> d!1457752 e!2886410))

(declare-fun res!1940663 () Bool)

(assert (=> d!1457752 (=> (not res!1940663) (not e!2886410))))

(declare-fun lt!1785746 () ListMap!4293)

(assert (=> d!1457752 (= res!1940663 (not (contains!14609 lt!1785746 key!4968)))))

(declare-fun removePresrvNoDuplicatedKeys!259 (List!51676 K!12930) List!51676)

(assert (=> d!1457752 (= lt!1785746 (ListMap!4294 (removePresrvNoDuplicatedKeys!259 (toList!4989 lt!1785158) key!4968)))))

(assert (=> d!1457752 (= (-!552 lt!1785158 key!4968) lt!1785746)))

(declare-fun b!4627213 () Bool)

(declare-fun content!8817 (List!51678) (InoxSet K!12930))

(assert (=> b!4627213 (= e!2886410 (= ((_ map and) (content!8817 (keys!18165 lt!1785158)) ((_ map not) (store ((as const (Array K!12930 Bool)) false) key!4968 true))) (content!8817 (keys!18165 lt!1785746))))))

(assert (= (and d!1457752 res!1940663) b!4627213))

(declare-fun m!5471109 () Bool)

(assert (=> d!1457752 m!5471109))

(declare-fun m!5471111 () Bool)

(assert (=> d!1457752 m!5471111))

(declare-fun m!5471113 () Bool)

(assert (=> b!4627213 m!5471113))

(assert (=> b!4627213 m!5470325))

(declare-fun m!5471115 () Bool)

(assert (=> b!4627213 m!5471115))

(assert (=> b!4627213 m!5471113))

(declare-fun m!5471117 () Bool)

(assert (=> b!4627213 m!5471117))

(assert (=> b!4627213 m!5470325))

(declare-fun m!5471119 () Bool)

(assert (=> b!4627213 m!5471119))

(assert (=> b!4626791 d!1457752))

(declare-fun d!1457754 () Bool)

(declare-fun e!2886411 () Bool)

(assert (=> d!1457754 e!2886411))

(declare-fun res!1940665 () Bool)

(assert (=> d!1457754 (=> (not res!1940665) (not e!2886411))))

(declare-fun lt!1785750 () ListMap!4293)

(assert (=> d!1457754 (= res!1940665 (contains!14609 lt!1785750 (_1!29541 (h!57608 oldBucket!40))))))

(declare-fun lt!1785748 () List!51676)

(assert (=> d!1457754 (= lt!1785750 (ListMap!4294 lt!1785748))))

(declare-fun lt!1785749 () Unit!112384)

(declare-fun lt!1785747 () Unit!112384)

(assert (=> d!1457754 (= lt!1785749 lt!1785747)))

(assert (=> d!1457754 (= (getValueByKey!1462 lt!1785748 (_1!29541 (h!57608 oldBucket!40))) (Some!11607 (_2!29541 (h!57608 oldBucket!40))))))

(assert (=> d!1457754 (= lt!1785747 (lemmaContainsTupThenGetReturnValue!854 lt!1785748 (_1!29541 (h!57608 oldBucket!40)) (_2!29541 (h!57608 oldBucket!40))))))

(assert (=> d!1457754 (= lt!1785748 (insertNoDuplicatedKeys!362 (toList!4989 lt!1785158) (_1!29541 (h!57608 oldBucket!40)) (_2!29541 (h!57608 oldBucket!40))))))

(assert (=> d!1457754 (= (+!1878 lt!1785158 (h!57608 oldBucket!40)) lt!1785750)))

(declare-fun b!4627214 () Bool)

(declare-fun res!1940664 () Bool)

(assert (=> b!4627214 (=> (not res!1940664) (not e!2886411))))

(assert (=> b!4627214 (= res!1940664 (= (getValueByKey!1462 (toList!4989 lt!1785750) (_1!29541 (h!57608 oldBucket!40))) (Some!11607 (_2!29541 (h!57608 oldBucket!40)))))))

(declare-fun b!4627215 () Bool)

(assert (=> b!4627215 (= e!2886411 (contains!14612 (toList!4989 lt!1785750) (h!57608 oldBucket!40)))))

(assert (= (and d!1457754 res!1940665) b!4627214))

(assert (= (and b!4627214 res!1940664) b!4627215))

(declare-fun m!5471121 () Bool)

(assert (=> d!1457754 m!5471121))

(declare-fun m!5471123 () Bool)

(assert (=> d!1457754 m!5471123))

(declare-fun m!5471125 () Bool)

(assert (=> d!1457754 m!5471125))

(declare-fun m!5471127 () Bool)

(assert (=> d!1457754 m!5471127))

(declare-fun m!5471129 () Bool)

(assert (=> b!4627214 m!5471129))

(declare-fun m!5471131 () Bool)

(assert (=> b!4627215 m!5471131))

(assert (=> b!4626791 d!1457754))

(declare-fun d!1457756 () Bool)

(declare-fun e!2886412 () Bool)

(assert (=> d!1457756 e!2886412))

(declare-fun res!1940666 () Bool)

(assert (=> d!1457756 (=> (not res!1940666) (not e!2886412))))

(declare-fun lt!1785751 () ListMap!4293)

(assert (=> d!1457756 (= res!1940666 (not (contains!14609 lt!1785751 key!4968)))))

(assert (=> d!1457756 (= lt!1785751 (ListMap!4294 (removePresrvNoDuplicatedKeys!259 (toList!4989 (+!1878 lt!1785158 (h!57608 oldBucket!40))) key!4968)))))

(assert (=> d!1457756 (= (-!552 (+!1878 lt!1785158 (h!57608 oldBucket!40)) key!4968) lt!1785751)))

(declare-fun b!4627216 () Bool)

(assert (=> b!4627216 (= e!2886412 (= ((_ map and) (content!8817 (keys!18165 (+!1878 lt!1785158 (h!57608 oldBucket!40)))) ((_ map not) (store ((as const (Array K!12930 Bool)) false) key!4968 true))) (content!8817 (keys!18165 lt!1785751))))))

(assert (= (and d!1457756 res!1940666) b!4627216))

(declare-fun m!5471133 () Bool)

(assert (=> d!1457756 m!5471133))

(declare-fun m!5471135 () Bool)

(assert (=> d!1457756 m!5471135))

(declare-fun m!5471137 () Bool)

(assert (=> b!4627216 m!5471137))

(declare-fun m!5471139 () Bool)

(assert (=> b!4627216 m!5471139))

(declare-fun m!5471141 () Bool)

(assert (=> b!4627216 m!5471141))

(assert (=> b!4627216 m!5471137))

(declare-fun m!5471143 () Bool)

(assert (=> b!4627216 m!5471143))

(assert (=> b!4627216 m!5470149))

(assert (=> b!4627216 m!5471139))

(assert (=> b!4627216 m!5471119))

(assert (=> b!4626791 d!1457756))

(declare-fun d!1457758 () Bool)

(assert (=> d!1457758 (= (-!552 (+!1878 lt!1785158 (tuple2!52495 (_1!29541 (h!57608 oldBucket!40)) (_2!29541 (h!57608 oldBucket!40)))) key!4968) (+!1878 (-!552 lt!1785158 key!4968) (tuple2!52495 (_1!29541 (h!57608 oldBucket!40)) (_2!29541 (h!57608 oldBucket!40)))))))

(declare-fun lt!1785754 () Unit!112384)

(declare-fun choose!31366 (ListMap!4293 K!12930 V!13176 K!12930) Unit!112384)

(assert (=> d!1457758 (= lt!1785754 (choose!31366 lt!1785158 (_1!29541 (h!57608 oldBucket!40)) (_2!29541 (h!57608 oldBucket!40)) key!4968))))

(assert (=> d!1457758 (not (= (_1!29541 (h!57608 oldBucket!40)) key!4968))))

(assert (=> d!1457758 (= (addRemoveCommutativeForDiffKeys!7 lt!1785158 (_1!29541 (h!57608 oldBucket!40)) (_2!29541 (h!57608 oldBucket!40)) key!4968) lt!1785754)))

(declare-fun bs!1024692 () Bool)

(assert (= bs!1024692 d!1457758))

(declare-fun m!5471145 () Bool)

(assert (=> bs!1024692 m!5471145))

(declare-fun m!5471147 () Bool)

(assert (=> bs!1024692 m!5471147))

(assert (=> bs!1024692 m!5471147))

(declare-fun m!5471149 () Bool)

(assert (=> bs!1024692 m!5471149))

(assert (=> bs!1024692 m!5470153))

(assert (=> bs!1024692 m!5470153))

(declare-fun m!5471151 () Bool)

(assert (=> bs!1024692 m!5471151))

(assert (=> b!4626791 d!1457758))

(declare-fun d!1457760 () Bool)

(assert (=> d!1457760 (eq!827 (extractMap!1568 (Cons!51553 (tuple2!52497 hash!414 lt!1785153) Nil!51553)) (-!552 (extractMap!1568 (Cons!51553 (tuple2!52497 hash!414 (t!358714 oldBucket!40)) Nil!51553)) key!4968))))

(declare-fun lt!1785757 () Unit!112384)

(declare-fun choose!31367 ((_ BitVec 64) List!51676 List!51676 K!12930 Hashable!5909) Unit!112384)

(assert (=> d!1457760 (= lt!1785757 (choose!31367 hash!414 (t!358714 oldBucket!40) lt!1785153 key!4968 hashF!1389))))

(assert (=> d!1457760 (noDuplicateKeys!1512 (t!358714 oldBucket!40))))

(assert (=> d!1457760 (= (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMapOneHash!114 hash!414 (t!358714 oldBucket!40) lt!1785153 key!4968 hashF!1389) lt!1785757)))

(declare-fun bs!1024693 () Bool)

(assert (= bs!1024693 d!1457760))

(assert (=> bs!1024693 m!5470107))

(declare-fun m!5471153 () Bool)

(assert (=> bs!1024693 m!5471153))

(declare-fun m!5471155 () Bool)

(assert (=> bs!1024693 m!5471155))

(assert (=> bs!1024693 m!5470107))

(assert (=> bs!1024693 m!5470227))

(declare-fun m!5471157 () Bool)

(assert (=> bs!1024693 m!5471157))

(assert (=> bs!1024693 m!5471157))

(assert (=> bs!1024693 m!5471153))

(declare-fun m!5471159 () Bool)

(assert (=> bs!1024693 m!5471159))

(assert (=> b!4626791 d!1457760))

(declare-fun d!1457762 () Bool)

(declare-fun e!2886413 () Bool)

(assert (=> d!1457762 e!2886413))

(declare-fun res!1940668 () Bool)

(assert (=> d!1457762 (=> (not res!1940668) (not e!2886413))))

(declare-fun lt!1785761 () ListMap!4293)

(assert (=> d!1457762 (= res!1940668 (contains!14609 lt!1785761 (_1!29541 (h!57608 oldBucket!40))))))

(declare-fun lt!1785759 () List!51676)

(assert (=> d!1457762 (= lt!1785761 (ListMap!4294 lt!1785759))))

(declare-fun lt!1785760 () Unit!112384)

(declare-fun lt!1785758 () Unit!112384)

(assert (=> d!1457762 (= lt!1785760 lt!1785758)))

(assert (=> d!1457762 (= (getValueByKey!1462 lt!1785759 (_1!29541 (h!57608 oldBucket!40))) (Some!11607 (_2!29541 (h!57608 oldBucket!40))))))

(assert (=> d!1457762 (= lt!1785758 (lemmaContainsTupThenGetReturnValue!854 lt!1785759 (_1!29541 (h!57608 oldBucket!40)) (_2!29541 (h!57608 oldBucket!40))))))

(assert (=> d!1457762 (= lt!1785759 (insertNoDuplicatedKeys!362 (toList!4989 lt!1785167) (_1!29541 (h!57608 oldBucket!40)) (_2!29541 (h!57608 oldBucket!40))))))

(assert (=> d!1457762 (= (+!1878 lt!1785167 (h!57608 oldBucket!40)) lt!1785761)))

(declare-fun b!4627217 () Bool)

(declare-fun res!1940667 () Bool)

(assert (=> b!4627217 (=> (not res!1940667) (not e!2886413))))

(assert (=> b!4627217 (= res!1940667 (= (getValueByKey!1462 (toList!4989 lt!1785761) (_1!29541 (h!57608 oldBucket!40))) (Some!11607 (_2!29541 (h!57608 oldBucket!40)))))))

(declare-fun b!4627218 () Bool)

(assert (=> b!4627218 (= e!2886413 (contains!14612 (toList!4989 lt!1785761) (h!57608 oldBucket!40)))))

(assert (= (and d!1457762 res!1940668) b!4627217))

(assert (= (and b!4627217 res!1940667) b!4627218))

(declare-fun m!5471161 () Bool)

(assert (=> d!1457762 m!5471161))

(declare-fun m!5471163 () Bool)

(assert (=> d!1457762 m!5471163))

(declare-fun m!5471165 () Bool)

(assert (=> d!1457762 m!5471165))

(declare-fun m!5471167 () Bool)

(assert (=> d!1457762 m!5471167))

(declare-fun m!5471169 () Bool)

(assert (=> b!4627217 m!5471169))

(declare-fun m!5471171 () Bool)

(assert (=> b!4627218 m!5471171))

(assert (=> b!4626791 d!1457762))

(declare-fun d!1457764 () Bool)

(assert (=> d!1457764 (= (eq!827 lt!1785154 lt!1785167) (= (content!8813 (toList!4989 lt!1785154)) (content!8813 (toList!4989 lt!1785167))))))

(declare-fun bs!1024694 () Bool)

(assert (= bs!1024694 d!1457764))

(declare-fun m!5471173 () Bool)

(assert (=> bs!1024694 m!5471173))

(declare-fun m!5471175 () Bool)

(assert (=> bs!1024694 m!5471175))

(assert (=> b!4626791 d!1457764))

(declare-fun bs!1024695 () Bool)

(declare-fun d!1457766 () Bool)

(assert (= bs!1024695 (and d!1457766 b!4627046)))

(declare-fun lambda!192594 () Int)

(assert (=> bs!1024695 (not (= lambda!192594 lambda!192551))))

(declare-fun bs!1024696 () Bool)

(assert (= bs!1024696 (and d!1457766 b!4627049)))

(assert (=> bs!1024696 (not (= lambda!192594 lambda!192554))))

(declare-fun bs!1024697 () Bool)

(assert (= bs!1024697 (and d!1457766 b!4627056)))

(assert (=> bs!1024697 (not (= lambda!192594 lambda!192562))))

(declare-fun bs!1024698 () Bool)

(assert (= bs!1024698 (and d!1457766 d!1457698)))

(assert (=> bs!1024698 (= lambda!192594 lambda!192573)))

(declare-fun bs!1024699 () Bool)

(assert (= bs!1024699 (and d!1457766 b!4627075)))

(assert (=> bs!1024699 (not (= lambda!192594 lambda!192577))))

(declare-fun bs!1024700 () Bool)

(assert (= bs!1024700 (and d!1457766 b!4627073)))

(assert (=> bs!1024700 (not (= lambda!192594 lambda!192574))))

(declare-fun bs!1024701 () Bool)

(assert (= bs!1024701 (and d!1457766 b!4627051)))

(assert (=> bs!1024701 (not (= lambda!192594 lambda!192556))))

(declare-fun bs!1024702 () Bool)

(assert (= bs!1024702 (and d!1457766 b!4627021)))

(assert (=> bs!1024702 (not (= lambda!192594 lambda!192545))))

(assert (=> bs!1024697 (not (= lambda!192594 lambda!192563))))

(declare-fun bs!1024703 () Bool)

(assert (= bs!1024703 (and d!1457766 d!1457700)))

(assert (=> bs!1024703 (not (= lambda!192594 lambda!192578))))

(declare-fun bs!1024704 () Bool)

(assert (= bs!1024704 (and d!1457766 d!1457678)))

(assert (=> bs!1024704 (not (= lambda!192594 lambda!192553))))

(declare-fun bs!1024705 () Bool)

(assert (= bs!1024705 (and d!1457766 d!1457688)))

(assert (=> bs!1024705 (not (= lambda!192594 lambda!192564))))

(declare-fun bs!1024706 () Bool)

(assert (= bs!1024706 (and d!1457766 b!4627044)))

(assert (=> bs!1024706 (not (= lambda!192594 lambda!192550))))

(declare-fun bs!1024707 () Bool)

(assert (= bs!1024707 (and d!1457766 d!1457684)))

(assert (=> bs!1024707 (not (= lambda!192594 lambda!192557))))

(declare-fun bs!1024708 () Bool)

(assert (= bs!1024708 (and d!1457766 b!4627054)))

(assert (=> bs!1024708 (not (= lambda!192594 lambda!192561))))

(declare-fun bs!1024709 () Bool)

(assert (= bs!1024709 (and d!1457766 d!1457610)))

(assert (=> bs!1024709 (not (= lambda!192594 lambda!192548))))

(assert (=> bs!1024695 (not (= lambda!192594 lambda!192552))))

(declare-fun bs!1024710 () Bool)

(assert (= bs!1024710 (and d!1457766 b!4627023)))

(assert (=> bs!1024710 (not (= lambda!192594 lambda!192546))))

(assert (=> bs!1024701 (not (= lambda!192594 lambda!192555))))

(assert (=> bs!1024710 (not (= lambda!192594 lambda!192547))))

(assert (=> bs!1024699 (not (= lambda!192594 lambda!192575))))

(assert (=> d!1457766 true))

(assert (=> d!1457766 true))

(assert (=> d!1457766 (= (allKeysSameHash!1366 oldBucket!40 hash!414 hashF!1389) (forall!10836 oldBucket!40 lambda!192594))))

(declare-fun bs!1024711 () Bool)

(assert (= bs!1024711 d!1457766))

(declare-fun m!5471177 () Bool)

(assert (=> bs!1024711 m!5471177))

(assert (=> b!4626801 d!1457766))

(declare-fun d!1457768 () Bool)

(assert (=> d!1457768 (= (eq!827 lt!1785171 (+!1878 lt!1785154 lt!1785166)) (= (content!8813 (toList!4989 lt!1785171)) (content!8813 (toList!4989 (+!1878 lt!1785154 lt!1785166)))))))

(declare-fun bs!1024712 () Bool)

(assert (= bs!1024712 d!1457768))

(declare-fun m!5471179 () Bool)

(assert (=> bs!1024712 m!5471179))

(declare-fun m!5471181 () Bool)

(assert (=> bs!1024712 m!5471181))

(assert (=> b!4626800 d!1457768))

(declare-fun d!1457770 () Bool)

(declare-fun e!2886414 () Bool)

(assert (=> d!1457770 e!2886414))

(declare-fun res!1940670 () Bool)

(assert (=> d!1457770 (=> (not res!1940670) (not e!2886414))))

(declare-fun lt!1785765 () ListMap!4293)

(assert (=> d!1457770 (= res!1940670 (contains!14609 lt!1785765 (_1!29541 lt!1785166)))))

(declare-fun lt!1785763 () List!51676)

(assert (=> d!1457770 (= lt!1785765 (ListMap!4294 lt!1785763))))

(declare-fun lt!1785764 () Unit!112384)

(declare-fun lt!1785762 () Unit!112384)

(assert (=> d!1457770 (= lt!1785764 lt!1785762)))

(assert (=> d!1457770 (= (getValueByKey!1462 lt!1785763 (_1!29541 lt!1785166)) (Some!11607 (_2!29541 lt!1785166)))))

(assert (=> d!1457770 (= lt!1785762 (lemmaContainsTupThenGetReturnValue!854 lt!1785763 (_1!29541 lt!1785166) (_2!29541 lt!1785166)))))

(assert (=> d!1457770 (= lt!1785763 (insertNoDuplicatedKeys!362 (toList!4989 lt!1785154) (_1!29541 lt!1785166) (_2!29541 lt!1785166)))))

(assert (=> d!1457770 (= (+!1878 lt!1785154 lt!1785166) lt!1785765)))

(declare-fun b!4627219 () Bool)

(declare-fun res!1940669 () Bool)

(assert (=> b!4627219 (=> (not res!1940669) (not e!2886414))))

(assert (=> b!4627219 (= res!1940669 (= (getValueByKey!1462 (toList!4989 lt!1785765) (_1!29541 lt!1785166)) (Some!11607 (_2!29541 lt!1785166))))))

(declare-fun b!4627220 () Bool)

(assert (=> b!4627220 (= e!2886414 (contains!14612 (toList!4989 lt!1785765) lt!1785166))))

(assert (= (and d!1457770 res!1940670) b!4627219))

(assert (= (and b!4627219 res!1940669) b!4627220))

(declare-fun m!5471183 () Bool)

(assert (=> d!1457770 m!5471183))

(declare-fun m!5471185 () Bool)

(assert (=> d!1457770 m!5471185))

(declare-fun m!5471187 () Bool)

(assert (=> d!1457770 m!5471187))

(declare-fun m!5471189 () Bool)

(assert (=> d!1457770 m!5471189))

(declare-fun m!5471191 () Bool)

(assert (=> b!4627219 m!5471191))

(declare-fun m!5471193 () Bool)

(assert (=> b!4627220 m!5471193))

(assert (=> b!4626800 d!1457770))

(declare-fun bs!1024713 () Bool)

(declare-fun d!1457772 () Bool)

(assert (= bs!1024713 (and d!1457772 b!4626792)))

(declare-fun lambda!192595 () Int)

(assert (=> bs!1024713 (= lambda!192595 lambda!192450)))

(declare-fun bs!1024714 () Bool)

(assert (= bs!1024714 (and d!1457772 d!1457748)))

(assert (=> bs!1024714 (= lambda!192595 lambda!192593)))

(declare-fun bs!1024715 () Bool)

(assert (= bs!1024715 (and d!1457772 d!1457728)))

(assert (=> bs!1024715 (= lambda!192595 lambda!192585)))

(declare-fun bs!1024716 () Bool)

(assert (= bs!1024716 (and d!1457772 d!1457670)))

(assert (=> bs!1024716 (= lambda!192595 lambda!192549)))

(declare-fun bs!1024717 () Bool)

(assert (= bs!1024717 (and d!1457772 d!1457584)))

(assert (=> bs!1024717 (= lambda!192595 lambda!192491)))

(declare-fun bs!1024718 () Bool)

(assert (= bs!1024718 (and d!1457772 d!1457706)))

(assert (=> bs!1024718 (= lambda!192595 lambda!192581)))

(declare-fun bs!1024719 () Bool)

(assert (= bs!1024719 (and d!1457772 d!1457564)))

(assert (=> bs!1024719 (= lambda!192595 lambda!192470)))

(declare-fun bs!1024720 () Bool)

(assert (= bs!1024720 (and d!1457772 d!1457686)))

(assert (=> bs!1024720 (= lambda!192595 lambda!192560)))

(declare-fun lt!1785766 () ListMap!4293)

(assert (=> d!1457772 (invariantList!1210 (toList!4989 lt!1785766))))

(declare-fun e!2886415 () ListMap!4293)

(assert (=> d!1457772 (= lt!1785766 e!2886415)))

(declare-fun c!792069 () Bool)

(assert (=> d!1457772 (= c!792069 ((_ is Cons!51553) (Cons!51553 (tuple2!52497 hash!414 lt!1785153) Nil!51553)))))

(assert (=> d!1457772 (forall!10834 (Cons!51553 (tuple2!52497 hash!414 lt!1785153) Nil!51553) lambda!192595)))

(assert (=> d!1457772 (= (extractMap!1568 (Cons!51553 (tuple2!52497 hash!414 lt!1785153) Nil!51553)) lt!1785766)))

(declare-fun b!4627221 () Bool)

(assert (=> b!4627221 (= e!2886415 (addToMapMapFromBucket!973 (_2!29542 (h!57609 (Cons!51553 (tuple2!52497 hash!414 lt!1785153) Nil!51553))) (extractMap!1568 (t!358715 (Cons!51553 (tuple2!52497 hash!414 lt!1785153) Nil!51553)))))))

(declare-fun b!4627222 () Bool)

(assert (=> b!4627222 (= e!2886415 (ListMap!4294 Nil!51552))))

(assert (= (and d!1457772 c!792069) b!4627221))

(assert (= (and d!1457772 (not c!792069)) b!4627222))

(declare-fun m!5471195 () Bool)

(assert (=> d!1457772 m!5471195))

(declare-fun m!5471197 () Bool)

(assert (=> d!1457772 m!5471197))

(declare-fun m!5471199 () Bool)

(assert (=> b!4627221 m!5471199))

(assert (=> b!4627221 m!5471199))

(declare-fun m!5471201 () Bool)

(assert (=> b!4627221 m!5471201))

(assert (=> b!4626800 d!1457772))

(declare-fun bs!1024721 () Bool)

(declare-fun d!1457774 () Bool)

(assert (= bs!1024721 (and d!1457774 b!4626792)))

(declare-fun lambda!192596 () Int)

(assert (=> bs!1024721 (= lambda!192596 lambda!192450)))

(declare-fun bs!1024722 () Bool)

(assert (= bs!1024722 (and d!1457774 d!1457748)))

(assert (=> bs!1024722 (= lambda!192596 lambda!192593)))

(declare-fun bs!1024723 () Bool)

(assert (= bs!1024723 (and d!1457774 d!1457728)))

(assert (=> bs!1024723 (= lambda!192596 lambda!192585)))

(declare-fun bs!1024724 () Bool)

(assert (= bs!1024724 (and d!1457774 d!1457772)))

(assert (=> bs!1024724 (= lambda!192596 lambda!192595)))

(declare-fun bs!1024725 () Bool)

(assert (= bs!1024725 (and d!1457774 d!1457670)))

(assert (=> bs!1024725 (= lambda!192596 lambda!192549)))

(declare-fun bs!1024726 () Bool)

(assert (= bs!1024726 (and d!1457774 d!1457584)))

(assert (=> bs!1024726 (= lambda!192596 lambda!192491)))

(declare-fun bs!1024727 () Bool)

(assert (= bs!1024727 (and d!1457774 d!1457706)))

(assert (=> bs!1024727 (= lambda!192596 lambda!192581)))

(declare-fun bs!1024728 () Bool)

(assert (= bs!1024728 (and d!1457774 d!1457564)))

(assert (=> bs!1024728 (= lambda!192596 lambda!192470)))

(declare-fun bs!1024729 () Bool)

(assert (= bs!1024729 (and d!1457774 d!1457686)))

(assert (=> bs!1024729 (= lambda!192596 lambda!192560)))

(declare-fun lt!1785767 () ListMap!4293)

(assert (=> d!1457774 (invariantList!1210 (toList!4989 lt!1785767))))

(declare-fun e!2886416 () ListMap!4293)

(assert (=> d!1457774 (= lt!1785767 e!2886416)))

(declare-fun c!792070 () Bool)

(assert (=> d!1457774 (= c!792070 ((_ is Cons!51553) (Cons!51553 (tuple2!52497 hash!414 newBucket!224) Nil!51553)))))

(assert (=> d!1457774 (forall!10834 (Cons!51553 (tuple2!52497 hash!414 newBucket!224) Nil!51553) lambda!192596)))

(assert (=> d!1457774 (= (extractMap!1568 (Cons!51553 (tuple2!52497 hash!414 newBucket!224) Nil!51553)) lt!1785767)))

(declare-fun b!4627223 () Bool)

(assert (=> b!4627223 (= e!2886416 (addToMapMapFromBucket!973 (_2!29542 (h!57609 (Cons!51553 (tuple2!52497 hash!414 newBucket!224) Nil!51553))) (extractMap!1568 (t!358715 (Cons!51553 (tuple2!52497 hash!414 newBucket!224) Nil!51553)))))))

(declare-fun b!4627224 () Bool)

(assert (=> b!4627224 (= e!2886416 (ListMap!4294 Nil!51552))))

(assert (= (and d!1457774 c!792070) b!4627223))

(assert (= (and d!1457774 (not c!792070)) b!4627224))

(declare-fun m!5471203 () Bool)

(assert (=> d!1457774 m!5471203))

(declare-fun m!5471205 () Bool)

(assert (=> d!1457774 m!5471205))

(declare-fun m!5471207 () Bool)

(assert (=> b!4627223 m!5471207))

(assert (=> b!4627223 m!5471207))

(declare-fun m!5471209 () Bool)

(assert (=> b!4627223 m!5471209))

(assert (=> b!4626800 d!1457774))

(declare-fun d!1457776 () Bool)

(declare-fun res!1940675 () Bool)

(declare-fun e!2886421 () Bool)

(assert (=> d!1457776 (=> res!1940675 e!2886421)))

(assert (=> d!1457776 (= res!1940675 ((_ is Nil!51553) lt!1785173))))

(assert (=> d!1457776 (= (forall!10834 lt!1785173 lambda!192450) e!2886421)))

(declare-fun b!4627229 () Bool)

(declare-fun e!2886422 () Bool)

(assert (=> b!4627229 (= e!2886421 e!2886422)))

(declare-fun res!1940676 () Bool)

(assert (=> b!4627229 (=> (not res!1940676) (not e!2886422))))

(assert (=> b!4627229 (= res!1940676 (dynLambda!21504 lambda!192450 (h!57609 lt!1785173)))))

(declare-fun b!4627230 () Bool)

(assert (=> b!4627230 (= e!2886422 (forall!10834 (t!358715 lt!1785173) lambda!192450))))

(assert (= (and d!1457776 (not res!1940675)) b!4627229))

(assert (= (and b!4627229 res!1940676) b!4627230))

(declare-fun b_lambda!170783 () Bool)

(assert (=> (not b_lambda!170783) (not b!4627229)))

(declare-fun m!5471211 () Bool)

(assert (=> b!4627229 m!5471211))

(declare-fun m!5471213 () Bool)

(assert (=> b!4627230 m!5471213))

(assert (=> b!4626789 d!1457776))

(declare-fun b!4627235 () Bool)

(declare-fun e!2886425 () Bool)

(declare-fun tp!1342174 () Bool)

(assert (=> b!4627235 (= e!2886425 (and tp_is_empty!29341 tp_is_empty!29343 tp!1342174))))

(assert (=> b!4626797 (= tp!1342166 e!2886425)))

(assert (= (and b!4626797 ((_ is Cons!51552) (t!358714 newBucket!224))) b!4627235))

(declare-fun b!4627236 () Bool)

(declare-fun e!2886426 () Bool)

(declare-fun tp!1342175 () Bool)

(assert (=> b!4627236 (= e!2886426 (and tp_is_empty!29341 tp_is_empty!29343 tp!1342175))))

(assert (=> b!4626802 (= tp!1342167 e!2886426)))

(assert (= (and b!4626802 ((_ is Cons!51552) (t!358714 oldBucket!40))) b!4627236))

(declare-fun b_lambda!170785 () Bool)

(assert (= b_lambda!170783 (or b!4626792 b_lambda!170785)))

(declare-fun bs!1024730 () Bool)

(declare-fun d!1457778 () Bool)

(assert (= bs!1024730 (and d!1457778 b!4626792)))

(assert (=> bs!1024730 (= (dynLambda!21504 lambda!192450 (h!57609 lt!1785173)) (noDuplicateKeys!1512 (_2!29542 (h!57609 lt!1785173))))))

(declare-fun m!5471215 () Bool)

(assert (=> bs!1024730 m!5471215))

(assert (=> b!4627229 d!1457778))

(declare-fun b_lambda!170787 () Bool)

(assert (= b_lambda!170777 (or b!4626792 b_lambda!170787)))

(declare-fun bs!1024731 () Bool)

(declare-fun d!1457780 () Bool)

(assert (= bs!1024731 (and d!1457780 b!4626792)))

(assert (=> bs!1024731 (= (dynLambda!21504 lambda!192450 lt!1785163) (noDuplicateKeys!1512 (_2!29542 lt!1785163)))))

(declare-fun m!5471217 () Bool)

(assert (=> bs!1024731 m!5471217))

(assert (=> d!1457708 d!1457780))

(check-sat (not b!4627204) (not b!4627203) (not d!1457728) (not d!1457712) (not b!4627025) (not d!1457678) (not bm!322785) (not b!4627220) (not b!4626863) (not b!4627023) (not b!4626877) (not b!4627053) (not d!1457768) (not d!1457698) (not b!4626899) (not b!4627213) (not b!4627075) (not b!4627230) (not b!4626912) (not b!4627042) (not d!1457568) (not bm!322749) (not b!4627218) (not b!4627050) (not b!4626826) (not b!4627190) (not b!4627210) (not d!1457750) (not d!1457748) (not b!4627236) (not b_lambda!170787) (not b_lambda!170785) (not b!4627045) (not d!1457754) (not b!4626902) (not d!1457692) (not b!4627120) (not bm!322782) (not b!4626901) (not b!4627123) (not bm!322781) (not d!1457772) (not d!1457764) (not b!4627223) (not b!4627022) (not d!1457670) (not b!4627122) (not b!4627074) (not d!1457686) (not b!4626904) (not d!1457584) (not d!1457752) (not b!4626886) (not d!1457694) (not b!4627055) (not d!1457690) (not b!4626900) (not b!4627139) (not b!4627058) (not b!4627192) (not d!1457758) (not d!1457580) (not d!1457760) (not d!1457610) (not bm!322794) (not bm!322793) (not bm!322795) (not b!4627177) (not b!4626862) (not b!4627041) (not d!1457756) (not b!4627077) (not b!4627048) (not d!1457688) (not b!4627217) (not b!4627235) (not b!4627214) (not b!4627090) (not d!1457696) (not bm!322784) (not b!4627124) (not bm!322792) (not b!4626864) (not bm!322786) (not b!4627221) (not d!1457674) (not b!4626876) (not bm!322783) (not d!1457708) (not b!4626874) (not b!4627037) (not b!4627215) (not b!4627125) (not d!1457762) (not bm!322759) (not d!1457744) (not bm!322791) (not b!4626906) (not d!1457588) (not b!4626825) (not b!4627046) (not b!4627059) (not bs!1024731) (not bm!322789) (not bm!322790) (not b!4627082) (not d!1457706) (not bs!1024730) (not b!4626942) (not b!4627219) (not d!1457770) (not d!1457700) (not bm!322787) (not d!1457562) (not b!4627056) (not b!4626859) (not d!1457554) (not b!4626857) (not d!1457738) (not d!1457560) (not d!1457684) (not d!1457766) tp_is_empty!29343 (not d!1457564) (not b!4627051) (not d!1457774) (not b!4626858) (not bm!322788) (not d!1457676) (not b!4626837) (not d!1457726) tp_is_empty!29341 (not b!4627060) (not d!1457746) (not b!4626860) (not b!4627216) (not b!4626880) (not b!4627201) (not b!4626905) (not d!1457718) (not b!4626943) (not d!1457576) (not b!4627202) (not d!1457574))
(check-sat)
