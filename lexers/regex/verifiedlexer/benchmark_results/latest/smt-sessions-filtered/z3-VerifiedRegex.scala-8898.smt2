; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!476836 () Bool)

(assert start!476836)

(declare-fun b!4701170 () Bool)

(declare-fun tp_is_empty!30885 () Bool)

(declare-fun tp_is_empty!30887 () Bool)

(declare-fun tp!1346671 () Bool)

(declare-fun e!2932596 () Bool)

(assert (=> b!4701170 (= e!2932596 (and tp_is_empty!30885 tp_is_empty!30887 tp!1346671))))

(declare-fun b!4701171 () Bool)

(declare-fun e!2932587 () Bool)

(declare-fun e!2932589 () Bool)

(assert (=> b!4701171 (= e!2932587 e!2932589)))

(declare-fun res!1984875 () Bool)

(assert (=> b!4701171 (=> res!1984875 e!2932589)))

(declare-datatypes ((K!13895 0))(
  ( (K!13896 (val!19387 Int)) )
))
(declare-datatypes ((V!14141 0))(
  ( (V!14142 (val!19388 Int)) )
))
(declare-datatypes ((tuple2!53986 0))(
  ( (tuple2!53987 (_1!30287 K!13895) (_2!30287 V!14141)) )
))
(declare-datatypes ((List!52657 0))(
  ( (Nil!52533) (Cons!52533 (h!58814 tuple2!53986) (t!359869 List!52657)) )
))
(declare-datatypes ((ListMap!5049 0))(
  ( (ListMap!5050 (toList!5685 List!52657)) )
))
(declare-fun lt!1864165 () ListMap!5049)

(declare-fun lt!1864179 () ListMap!5049)

(assert (=> b!4701171 (= res!1984875 (not (= lt!1864165 lt!1864179)))))

(declare-fun lt!1864173 () ListMap!5049)

(declare-fun oldBucket!34 () List!52657)

(declare-fun +!2182 (ListMap!5049 tuple2!53986) ListMap!5049)

(assert (=> b!4701171 (= lt!1864179 (+!2182 lt!1864173 (h!58814 oldBucket!34)))))

(declare-fun lt!1864189 () ListMap!5049)

(declare-fun key!4653 () K!13895)

(declare-fun -!702 (ListMap!5049 K!13895) ListMap!5049)

(assert (=> b!4701171 (= lt!1864165 (-!702 lt!1864189 key!4653))))

(declare-fun lt!1864194 () ListMap!5049)

(assert (=> b!4701171 (= lt!1864189 (+!2182 lt!1864194 (h!58814 oldBucket!34)))))

(declare-fun lt!1864196 () ListMap!5049)

(declare-fun lt!1864169 () ListMap!5049)

(assert (=> b!4701171 (= lt!1864196 lt!1864169)))

(assert (=> b!4701171 (= lt!1864169 (+!2182 lt!1864173 (h!58814 oldBucket!34)))))

(assert (=> b!4701171 (= lt!1864196 (-!702 (+!2182 lt!1864194 (h!58814 oldBucket!34)) key!4653))))

(declare-datatypes ((Unit!126240 0))(
  ( (Unit!126241) )
))
(declare-fun lt!1864174 () Unit!126240)

(declare-fun addRemoveCommutativeForDiffKeys!103 (ListMap!5049 K!13895 V!14141 K!13895) Unit!126240)

(assert (=> b!4701171 (= lt!1864174 (addRemoveCommutativeForDiffKeys!103 lt!1864194 (_1!30287 (h!58814 oldBucket!34)) (_2!30287 (h!58814 oldBucket!34)) key!4653))))

(declare-fun b!4701172 () Bool)

(declare-fun res!1984866 () Bool)

(declare-fun e!2932585 () Bool)

(assert (=> b!4701172 (=> res!1984866 e!2932585)))

(declare-fun lt!1864171 () tuple2!53986)

(assert (=> b!4701172 (= res!1984866 (not (= (h!58814 oldBucket!34) lt!1864171)))))

(declare-fun b!4701173 () Bool)

(declare-fun e!2932586 () Bool)

(declare-datatypes ((tuple2!53988 0))(
  ( (tuple2!53989 (_1!30288 (_ BitVec 64)) (_2!30288 List!52657)) )
))
(declare-datatypes ((List!52658 0))(
  ( (Nil!52534) (Cons!52534 (h!58815 tuple2!53988) (t!359870 List!52658)) )
))
(declare-fun lt!1864164 () List!52658)

(declare-fun lambda!210267 () Int)

(declare-fun forall!11401 (List!52658 Int) Bool)

(assert (=> b!4701173 (= e!2932586 (forall!11401 lt!1864164 lambda!210267))))

(declare-fun e!2932595 () Bool)

(declare-fun tp!1346672 () Bool)

(declare-fun b!4701174 () Bool)

(assert (=> b!4701174 (= e!2932595 (and tp_is_empty!30885 tp_is_empty!30887 tp!1346672))))

(declare-fun b!4701176 () Bool)

(declare-fun res!1984869 () Bool)

(assert (=> b!4701176 (=> res!1984869 e!2932585)))

(declare-fun lt!1864188 () ListMap!5049)

(declare-fun lt!1864181 () ListMap!5049)

(declare-fun eq!1057 (ListMap!5049 ListMap!5049) Bool)

(assert (=> b!4701176 (= res!1984869 (not (eq!1057 lt!1864188 (+!2182 lt!1864181 lt!1864171))))))

(declare-fun b!4701177 () Bool)

(declare-fun res!1984861 () Bool)

(declare-fun e!2932588 () Bool)

(assert (=> b!4701177 (=> (not res!1984861) (not e!2932588))))

(declare-fun hash!405 () (_ BitVec 64))

(declare-datatypes ((Hashable!6267 0))(
  ( (HashableExt!6266 (__x!31970 Int)) )
))
(declare-fun hashF!1323 () Hashable!6267)

(declare-fun newBucket!218 () List!52657)

(declare-fun allKeysSameHash!1724 (List!52657 (_ BitVec 64) Hashable!6267) Bool)

(assert (=> b!4701177 (= res!1984861 (allKeysSameHash!1724 newBucket!218 hash!405 hashF!1323))))

(declare-fun b!4701178 () Bool)

(declare-fun e!2932590 () Bool)

(declare-fun e!2932598 () Bool)

(assert (=> b!4701178 (= e!2932590 e!2932598)))

(declare-fun res!1984862 () Bool)

(assert (=> b!4701178 (=> res!1984862 e!2932598)))

(declare-fun containsKey!3169 (List!52657 K!13895) Bool)

(assert (=> b!4701178 (= res!1984862 (not (containsKey!3169 (t!359869 oldBucket!34) key!4653)))))

(assert (=> b!4701178 (containsKey!3169 oldBucket!34 key!4653)))

(declare-fun lt!1864170 () Unit!126240)

(declare-fun lemmaGetPairDefinedThenContainsKey!250 (List!52657 K!13895 Hashable!6267) Unit!126240)

(assert (=> b!4701178 (= lt!1864170 (lemmaGetPairDefinedThenContainsKey!250 oldBucket!34 key!4653 hashF!1323))))

(declare-fun lt!1864166 () List!52657)

(declare-datatypes ((Option!12193 0))(
  ( (None!12192) (Some!12192 (v!46679 tuple2!53986)) )
))
(declare-fun isDefined!9448 (Option!12193) Bool)

(declare-fun getPair!502 (List!52657 K!13895) Option!12193)

(assert (=> b!4701178 (isDefined!9448 (getPair!502 lt!1864166 key!4653))))

(declare-datatypes ((ListLongMap!4215 0))(
  ( (ListLongMap!4216 (toList!5686 List!52658)) )
))
(declare-fun lm!2023 () ListLongMap!4215)

(declare-fun lt!1864175 () tuple2!53988)

(declare-fun lt!1864180 () Unit!126240)

(declare-fun forallContained!3508 (List!52658 Int tuple2!53988) Unit!126240)

(assert (=> b!4701178 (= lt!1864180 (forallContained!3508 (toList!5686 lm!2023) lambda!210267 lt!1864175))))

(declare-fun contains!15812 (List!52658 tuple2!53988) Bool)

(assert (=> b!4701178 (contains!15812 (toList!5686 lm!2023) lt!1864175)))

(declare-fun lt!1864187 () (_ BitVec 64))

(assert (=> b!4701178 (= lt!1864175 (tuple2!53989 lt!1864187 lt!1864166))))

(declare-fun lt!1864163 () Unit!126240)

(declare-fun lemmaGetValueImpliesTupleContained!307 (ListLongMap!4215 (_ BitVec 64) List!52657) Unit!126240)

(assert (=> b!4701178 (= lt!1864163 (lemmaGetValueImpliesTupleContained!307 lm!2023 lt!1864187 lt!1864166))))

(declare-fun apply!12381 (ListLongMap!4215 (_ BitVec 64)) List!52657)

(assert (=> b!4701178 (= lt!1864166 (apply!12381 lm!2023 lt!1864187))))

(declare-fun contains!15813 (ListLongMap!4215 (_ BitVec 64)) Bool)

(assert (=> b!4701178 (contains!15813 lm!2023 lt!1864187)))

(declare-fun lt!1864172 () Unit!126240)

(declare-fun lemmaInGenMapThenLongMapContainsHash!708 (ListLongMap!4215 K!13895 Hashable!6267) Unit!126240)

(assert (=> b!4701178 (= lt!1864172 (lemmaInGenMapThenLongMapContainsHash!708 lm!2023 key!4653 hashF!1323))))

(declare-fun lt!1864191 () Unit!126240)

(declare-fun lemmaInGenMapThenGetPairDefined!298 (ListLongMap!4215 K!13895 Hashable!6267) Unit!126240)

(assert (=> b!4701178 (= lt!1864191 (lemmaInGenMapThenGetPairDefined!298 lm!2023 key!4653 hashF!1323))))

(declare-fun b!4701179 () Bool)

(declare-fun e!2932592 () Bool)

(declare-fun tp!1346673 () Bool)

(assert (=> b!4701179 (= e!2932592 tp!1346673)))

(declare-fun b!4701180 () Bool)

(declare-fun e!2932597 () Bool)

(assert (=> b!4701180 (= e!2932597 (not e!2932590))))

(declare-fun res!1984860 () Bool)

(assert (=> b!4701180 (=> res!1984860 e!2932590)))

(get-info :version)

(assert (=> b!4701180 (= res!1984860 (or (and ((_ is Cons!52533) oldBucket!34) (= (_1!30287 (h!58814 oldBucket!34)) key!4653)) (not ((_ is Cons!52533) oldBucket!34)) (= (_1!30287 (h!58814 oldBucket!34)) key!4653)))))

(declare-fun lt!1864190 () ListMap!5049)

(declare-fun lt!1864193 () ListMap!5049)

(declare-fun addToMapMapFromBucket!1330 (List!52657 ListMap!5049) ListMap!5049)

(assert (=> b!4701180 (= lt!1864190 (addToMapMapFromBucket!1330 (_2!30288 (h!58815 (toList!5686 lm!2023))) lt!1864193))))

(declare-fun extractMap!1924 (List!52658) ListMap!5049)

(assert (=> b!4701180 (= lt!1864193 (extractMap!1924 (t!359870 (toList!5686 lm!2023))))))

(declare-fun tail!8719 (ListLongMap!4215) ListLongMap!4215)

(assert (=> b!4701180 (= (t!359870 (toList!5686 lm!2023)) (toList!5686 (tail!8719 lm!2023)))))

(declare-fun b!4701181 () Bool)

(declare-fun e!2932591 () Bool)

(assert (=> b!4701181 (= e!2932598 e!2932591)))

(declare-fun res!1984880 () Bool)

(assert (=> b!4701181 (=> res!1984880 e!2932591)))

(declare-fun lt!1864183 () List!52657)

(declare-fun lt!1864192 () List!52657)

(declare-fun removePairForKey!1493 (List!52657 K!13895) List!52657)

(assert (=> b!4701181 (= res!1984880 (not (= (removePairForKey!1493 lt!1864183 key!4653) lt!1864192)))))

(declare-fun tail!8720 (List!52657) List!52657)

(assert (=> b!4701181 (= lt!1864192 (tail!8720 newBucket!218))))

(assert (=> b!4701181 (= lt!1864183 (tail!8720 oldBucket!34))))

(declare-fun b!4701182 () Bool)

(declare-fun res!1984872 () Bool)

(assert (=> b!4701182 (=> res!1984872 e!2932589)))

(assert (=> b!4701182 (= res!1984872 (not (eq!1057 lt!1864165 lt!1864179)))))

(declare-fun b!4701183 () Bool)

(assert (=> b!4701183 (= e!2932588 e!2932597)))

(declare-fun res!1984864 () Bool)

(assert (=> b!4701183 (=> (not res!1984864) (not e!2932597))))

(declare-fun lt!1864185 () tuple2!53988)

(declare-fun head!10059 (List!52658) tuple2!53988)

(assert (=> b!4701183 (= res!1984864 (= (head!10059 (toList!5686 lm!2023)) lt!1864185))))

(assert (=> b!4701183 (= lt!1864185 (tuple2!53989 hash!405 oldBucket!34))))

(declare-fun b!4701184 () Bool)

(declare-fun res!1984870 () Bool)

(assert (=> b!4701184 (=> res!1984870 e!2932591)))

(assert (=> b!4701184 (= res!1984870 (not (= (removePairForKey!1493 (t!359869 oldBucket!34) key!4653) lt!1864192)))))

(declare-fun b!4701185 () Bool)

(declare-fun res!1984879 () Bool)

(assert (=> b!4701185 (=> (not res!1984879) (not e!2932588))))

(declare-fun allKeysSameHashInMap!1812 (ListLongMap!4215 Hashable!6267) Bool)

(assert (=> b!4701185 (= res!1984879 (allKeysSameHashInMap!1812 lm!2023 hashF!1323))))

(declare-fun b!4701186 () Bool)

(declare-fun res!1984874 () Bool)

(declare-fun e!2932594 () Bool)

(assert (=> b!4701186 (=> (not res!1984874) (not e!2932594))))

(assert (=> b!4701186 (= res!1984874 (= (removePairForKey!1493 oldBucket!34 key!4653) newBucket!218))))

(declare-fun b!4701187 () Bool)

(declare-fun res!1984878 () Bool)

(assert (=> b!4701187 (=> res!1984878 e!2932589)))

(assert (=> b!4701187 (= res!1984878 (not (eq!1057 lt!1864189 lt!1864188)))))

(declare-fun b!4701175 () Bool)

(assert (=> b!4701175 (= e!2932589 e!2932586)))

(declare-fun res!1984876 () Bool)

(assert (=> b!4701175 (=> res!1984876 e!2932586)))

(declare-fun lt!1864162 () ListMap!5049)

(assert (=> b!4701175 (= res!1984876 (not (eq!1057 lt!1864179 (+!2182 lt!1864162 (h!58814 oldBucket!34)))))))

(assert (=> b!4701175 (eq!1057 lt!1864169 (+!2182 lt!1864162 (h!58814 oldBucket!34)))))

(declare-fun lt!1864182 () Unit!126240)

(declare-fun lemmaAddToEqMapsPreservesEq!80 (ListMap!5049 ListMap!5049 K!13895 V!14141) Unit!126240)

(assert (=> b!4701175 (= lt!1864182 (lemmaAddToEqMapsPreservesEq!80 lt!1864173 lt!1864162 (_1!30287 (h!58814 oldBucket!34)) (_2!30287 (h!58814 oldBucket!34))))))

(declare-fun res!1984873 () Bool)

(assert (=> start!476836 (=> (not res!1984873) (not e!2932594))))

(assert (=> start!476836 (= res!1984873 (forall!11401 (toList!5686 lm!2023) lambda!210267))))

(assert (=> start!476836 e!2932594))

(declare-fun inv!67769 (ListLongMap!4215) Bool)

(assert (=> start!476836 (and (inv!67769 lm!2023) e!2932592)))

(assert (=> start!476836 tp_is_empty!30885))

(assert (=> start!476836 e!2932596))

(assert (=> start!476836 true))

(assert (=> start!476836 e!2932595))

(declare-fun b!4701188 () Bool)

(declare-fun res!1984871 () Bool)

(assert (=> b!4701188 (=> (not res!1984871) (not e!2932594))))

(declare-fun noDuplicateKeys!1898 (List!52657) Bool)

(assert (=> b!4701188 (= res!1984871 (noDuplicateKeys!1898 newBucket!218))))

(declare-fun b!4701189 () Bool)

(declare-fun res!1984881 () Bool)

(assert (=> b!4701189 (=> (not res!1984881) (not e!2932594))))

(assert (=> b!4701189 (= res!1984881 (noDuplicateKeys!1898 oldBucket!34))))

(declare-fun b!4701190 () Bool)

(declare-fun res!1984863 () Bool)

(assert (=> b!4701190 (=> (not res!1984863) (not e!2932597))))

(assert (=> b!4701190 (= res!1984863 ((_ is Cons!52534) (toList!5686 lm!2023)))))

(declare-fun b!4701191 () Bool)

(declare-fun res!1984865 () Bool)

(assert (=> b!4701191 (=> (not res!1984865) (not e!2932594))))

(assert (=> b!4701191 (= res!1984865 (allKeysSameHash!1724 oldBucket!34 hash!405 hashF!1323))))

(declare-fun b!4701192 () Bool)

(declare-fun e!2932593 () Bool)

(assert (=> b!4701192 (= e!2932594 e!2932593)))

(declare-fun res!1984877 () Bool)

(assert (=> b!4701192 (=> (not res!1984877) (not e!2932593))))

(declare-fun contains!15814 (ListMap!5049 K!13895) Bool)

(assert (=> b!4701192 (= res!1984877 (contains!15814 lt!1864190 key!4653))))

(assert (=> b!4701192 (= lt!1864190 (extractMap!1924 (toList!5686 lm!2023)))))

(declare-fun b!4701193 () Bool)

(assert (=> b!4701193 (= e!2932585 e!2932587)))

(declare-fun res!1984859 () Bool)

(assert (=> b!4701193 (=> res!1984859 e!2932587)))

(assert (=> b!4701193 (= res!1984859 (not (eq!1057 lt!1864162 lt!1864173)))))

(assert (=> b!4701193 (= lt!1864173 (-!702 lt!1864194 key!4653))))

(declare-fun lt!1864168 () tuple2!53988)

(assert (=> b!4701193 (= lt!1864162 (extractMap!1924 (Cons!52534 lt!1864168 (t!359870 (toList!5686 lm!2023)))))))

(declare-fun lt!1864195 () List!52658)

(declare-fun lt!1864160 () tuple2!53988)

(assert (=> b!4701193 (eq!1057 (extractMap!1924 (Cons!52534 lt!1864168 lt!1864195)) (-!702 (extractMap!1924 (Cons!52534 lt!1864160 lt!1864195)) key!4653))))

(declare-fun lt!1864176 () List!52658)

(declare-fun tail!8721 (List!52658) List!52658)

(assert (=> b!4701193 (= lt!1864195 (tail!8721 lt!1864176))))

(assert (=> b!4701193 (= lt!1864168 (tuple2!53989 hash!405 lt!1864192))))

(declare-fun lt!1864178 () ListLongMap!4215)

(declare-fun lt!1864161 () Unit!126240)

(declare-fun lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMapOneHashIsHead!72 (ListLongMap!4215 (_ BitVec 64) List!52657 List!52657 K!13895 Hashable!6267) Unit!126240)

(assert (=> b!4701193 (= lt!1864161 (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMapOneHashIsHead!72 lt!1864178 hash!405 (t!359869 oldBucket!34) lt!1864192 key!4653 hashF!1323))))

(declare-fun b!4701194 () Bool)

(assert (=> b!4701194 (= e!2932593 e!2932588)))

(declare-fun res!1984867 () Bool)

(assert (=> b!4701194 (=> (not res!1984867) (not e!2932588))))

(assert (=> b!4701194 (= res!1984867 (= lt!1864187 hash!405))))

(declare-fun hash!4174 (Hashable!6267 K!13895) (_ BitVec 64))

(assert (=> b!4701194 (= lt!1864187 (hash!4174 hashF!1323 key!4653))))

(declare-fun b!4701195 () Bool)

(assert (=> b!4701195 (= e!2932591 e!2932585)))

(declare-fun res!1984868 () Bool)

(assert (=> b!4701195 (=> res!1984868 e!2932585)))

(assert (=> b!4701195 (= res!1984868 (not (eq!1057 lt!1864188 (+!2182 lt!1864181 (h!58814 oldBucket!34)))))))

(assert (=> b!4701195 (= lt!1864181 (extractMap!1924 (Cons!52534 (tuple2!53989 hash!405 lt!1864183) (t!359870 (toList!5686 lm!2023)))))))

(assert (=> b!4701195 (= lt!1864188 (extractMap!1924 lt!1864164))))

(assert (=> b!4701195 (= lt!1864164 (Cons!52534 lt!1864185 (t!359870 (toList!5686 lm!2023))))))

(assert (=> b!4701195 (eq!1057 (addToMapMapFromBucket!1330 (Cons!52533 lt!1864171 lt!1864192) lt!1864193) (+!2182 (addToMapMapFromBucket!1330 lt!1864192 lt!1864193) lt!1864171))))

(declare-fun lt!1864177 () Unit!126240)

(declare-fun lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!306 (tuple2!53986 List!52657 ListMap!5049) Unit!126240)

(assert (=> b!4701195 (= lt!1864177 (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!306 lt!1864171 lt!1864192 lt!1864193))))

(declare-fun head!10060 (List!52657) tuple2!53986)

(assert (=> b!4701195 (= lt!1864171 (head!10060 newBucket!218))))

(declare-fun lt!1864184 () tuple2!53986)

(assert (=> b!4701195 (eq!1057 (addToMapMapFromBucket!1330 (Cons!52533 lt!1864184 lt!1864183) lt!1864193) (+!2182 (addToMapMapFromBucket!1330 lt!1864183 lt!1864193) lt!1864184))))

(declare-fun lt!1864186 () Unit!126240)

(assert (=> b!4701195 (= lt!1864186 (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!306 lt!1864184 lt!1864183 lt!1864193))))

(assert (=> b!4701195 (= lt!1864184 (head!10060 oldBucket!34))))

(assert (=> b!4701195 (contains!15814 lt!1864194 key!4653)))

(assert (=> b!4701195 (= lt!1864194 (extractMap!1924 lt!1864176))))

(declare-fun lt!1864167 () Unit!126240)

(declare-fun lemmaListContainsThenExtractedMapContains!490 (ListLongMap!4215 K!13895 Hashable!6267) Unit!126240)

(assert (=> b!4701195 (= lt!1864167 (lemmaListContainsThenExtractedMapContains!490 lt!1864178 key!4653 hashF!1323))))

(assert (=> b!4701195 (= lt!1864178 (ListLongMap!4216 lt!1864176))))

(assert (=> b!4701195 (= lt!1864176 (Cons!52534 lt!1864160 (t!359870 (toList!5686 lm!2023))))))

(assert (=> b!4701195 (= lt!1864160 (tuple2!53989 hash!405 (t!359869 oldBucket!34)))))

(assert (= (and start!476836 res!1984873) b!4701189))

(assert (= (and b!4701189 res!1984881) b!4701188))

(assert (= (and b!4701188 res!1984871) b!4701186))

(assert (= (and b!4701186 res!1984874) b!4701191))

(assert (= (and b!4701191 res!1984865) b!4701192))

(assert (= (and b!4701192 res!1984877) b!4701194))

(assert (= (and b!4701194 res!1984867) b!4701177))

(assert (= (and b!4701177 res!1984861) b!4701185))

(assert (= (and b!4701185 res!1984879) b!4701183))

(assert (= (and b!4701183 res!1984864) b!4701190))

(assert (= (and b!4701190 res!1984863) b!4701180))

(assert (= (and b!4701180 (not res!1984860)) b!4701178))

(assert (= (and b!4701178 (not res!1984862)) b!4701181))

(assert (= (and b!4701181 (not res!1984880)) b!4701184))

(assert (= (and b!4701184 (not res!1984870)) b!4701195))

(assert (= (and b!4701195 (not res!1984868)) b!4701172))

(assert (= (and b!4701172 (not res!1984866)) b!4701176))

(assert (= (and b!4701176 (not res!1984869)) b!4701193))

(assert (= (and b!4701193 (not res!1984859)) b!4701171))

(assert (= (and b!4701171 (not res!1984875)) b!4701182))

(assert (= (and b!4701182 (not res!1984872)) b!4701187))

(assert (= (and b!4701187 (not res!1984878)) b!4701175))

(assert (= (and b!4701175 (not res!1984876)) b!4701173))

(assert (= start!476836 b!4701179))

(assert (= (and start!476836 ((_ is Cons!52533) oldBucket!34)) b!4701170))

(assert (= (and start!476836 ((_ is Cons!52533) newBucket!218)) b!4701174))

(declare-fun m!5616449 () Bool)

(assert (=> b!4701178 m!5616449))

(declare-fun m!5616451 () Bool)

(assert (=> b!4701178 m!5616451))

(declare-fun m!5616453 () Bool)

(assert (=> b!4701178 m!5616453))

(declare-fun m!5616455 () Bool)

(assert (=> b!4701178 m!5616455))

(declare-fun m!5616457 () Bool)

(assert (=> b!4701178 m!5616457))

(assert (=> b!4701178 m!5616449))

(declare-fun m!5616459 () Bool)

(assert (=> b!4701178 m!5616459))

(declare-fun m!5616461 () Bool)

(assert (=> b!4701178 m!5616461))

(declare-fun m!5616463 () Bool)

(assert (=> b!4701178 m!5616463))

(declare-fun m!5616465 () Bool)

(assert (=> b!4701178 m!5616465))

(declare-fun m!5616467 () Bool)

(assert (=> b!4701178 m!5616467))

(declare-fun m!5616469 () Bool)

(assert (=> b!4701178 m!5616469))

(declare-fun m!5616471 () Bool)

(assert (=> b!4701178 m!5616471))

(declare-fun m!5616473 () Bool)

(assert (=> start!476836 m!5616473))

(declare-fun m!5616475 () Bool)

(assert (=> start!476836 m!5616475))

(declare-fun m!5616477 () Bool)

(assert (=> b!4701177 m!5616477))

(declare-fun m!5616479 () Bool)

(assert (=> b!4701176 m!5616479))

(assert (=> b!4701176 m!5616479))

(declare-fun m!5616481 () Bool)

(assert (=> b!4701176 m!5616481))

(declare-fun m!5616483 () Bool)

(assert (=> b!4701186 m!5616483))

(declare-fun m!5616485 () Bool)

(assert (=> b!4701194 m!5616485))

(declare-fun m!5616487 () Bool)

(assert (=> b!4701181 m!5616487))

(declare-fun m!5616489 () Bool)

(assert (=> b!4701181 m!5616489))

(declare-fun m!5616491 () Bool)

(assert (=> b!4701181 m!5616491))

(declare-fun m!5616493 () Bool)

(assert (=> b!4701188 m!5616493))

(declare-fun m!5616495 () Bool)

(assert (=> b!4701191 m!5616495))

(declare-fun m!5616497 () Bool)

(assert (=> b!4701185 m!5616497))

(declare-fun m!5616499 () Bool)

(assert (=> b!4701182 m!5616499))

(declare-fun m!5616501 () Bool)

(assert (=> b!4701192 m!5616501))

(declare-fun m!5616503 () Bool)

(assert (=> b!4701192 m!5616503))

(declare-fun m!5616505 () Bool)

(assert (=> b!4701171 m!5616505))

(declare-fun m!5616507 () Bool)

(assert (=> b!4701171 m!5616507))

(declare-fun m!5616509 () Bool)

(assert (=> b!4701171 m!5616509))

(declare-fun m!5616511 () Bool)

(assert (=> b!4701171 m!5616511))

(assert (=> b!4701171 m!5616507))

(declare-fun m!5616513 () Bool)

(assert (=> b!4701171 m!5616513))

(declare-fun m!5616515 () Bool)

(assert (=> b!4701187 m!5616515))

(declare-fun m!5616517 () Bool)

(assert (=> b!4701173 m!5616517))

(declare-fun m!5616519 () Bool)

(assert (=> b!4701184 m!5616519))

(declare-fun m!5616521 () Bool)

(assert (=> b!4701180 m!5616521))

(declare-fun m!5616523 () Bool)

(assert (=> b!4701180 m!5616523))

(declare-fun m!5616525 () Bool)

(assert (=> b!4701180 m!5616525))

(declare-fun m!5616527 () Bool)

(assert (=> b!4701193 m!5616527))

(declare-fun m!5616529 () Bool)

(assert (=> b!4701193 m!5616529))

(declare-fun m!5616531 () Bool)

(assert (=> b!4701193 m!5616531))

(declare-fun m!5616533 () Bool)

(assert (=> b!4701193 m!5616533))

(declare-fun m!5616535 () Bool)

(assert (=> b!4701193 m!5616535))

(declare-fun m!5616537 () Bool)

(assert (=> b!4701193 m!5616537))

(assert (=> b!4701193 m!5616529))

(declare-fun m!5616539 () Bool)

(assert (=> b!4701193 m!5616539))

(declare-fun m!5616541 () Bool)

(assert (=> b!4701193 m!5616541))

(declare-fun m!5616543 () Bool)

(assert (=> b!4701193 m!5616543))

(assert (=> b!4701193 m!5616531))

(assert (=> b!4701193 m!5616543))

(declare-fun m!5616545 () Bool)

(assert (=> b!4701183 m!5616545))

(declare-fun m!5616547 () Bool)

(assert (=> b!4701195 m!5616547))

(declare-fun m!5616549 () Bool)

(assert (=> b!4701195 m!5616549))

(declare-fun m!5616551 () Bool)

(assert (=> b!4701195 m!5616551))

(declare-fun m!5616553 () Bool)

(assert (=> b!4701195 m!5616553))

(declare-fun m!5616555 () Bool)

(assert (=> b!4701195 m!5616555))

(declare-fun m!5616557 () Bool)

(assert (=> b!4701195 m!5616557))

(declare-fun m!5616559 () Bool)

(assert (=> b!4701195 m!5616559))

(declare-fun m!5616561 () Bool)

(assert (=> b!4701195 m!5616561))

(declare-fun m!5616563 () Bool)

(assert (=> b!4701195 m!5616563))

(assert (=> b!4701195 m!5616561))

(declare-fun m!5616565 () Bool)

(assert (=> b!4701195 m!5616565))

(declare-fun m!5616567 () Bool)

(assert (=> b!4701195 m!5616567))

(declare-fun m!5616569 () Bool)

(assert (=> b!4701195 m!5616569))

(declare-fun m!5616571 () Bool)

(assert (=> b!4701195 m!5616571))

(assert (=> b!4701195 m!5616555))

(assert (=> b!4701195 m!5616565))

(declare-fun m!5616573 () Bool)

(assert (=> b!4701195 m!5616573))

(assert (=> b!4701195 m!5616557))

(declare-fun m!5616575 () Bool)

(assert (=> b!4701195 m!5616575))

(declare-fun m!5616577 () Bool)

(assert (=> b!4701195 m!5616577))

(declare-fun m!5616579 () Bool)

(assert (=> b!4701195 m!5616579))

(declare-fun m!5616581 () Bool)

(assert (=> b!4701195 m!5616581))

(assert (=> b!4701195 m!5616549))

(declare-fun m!5616583 () Bool)

(assert (=> b!4701195 m!5616583))

(assert (=> b!4701195 m!5616563))

(assert (=> b!4701195 m!5616575))

(declare-fun m!5616585 () Bool)

(assert (=> b!4701189 m!5616585))

(declare-fun m!5616587 () Bool)

(assert (=> b!4701175 m!5616587))

(assert (=> b!4701175 m!5616587))

(declare-fun m!5616589 () Bool)

(assert (=> b!4701175 m!5616589))

(assert (=> b!4701175 m!5616587))

(declare-fun m!5616591 () Bool)

(assert (=> b!4701175 m!5616591))

(declare-fun m!5616593 () Bool)

(assert (=> b!4701175 m!5616593))

(check-sat (not b!4701192) (not b!4701195) (not b!4701176) (not b!4701174) (not b!4701184) (not b!4701189) (not b!4701182) (not b!4701180) (not b!4701188) (not b!4701191) (not b!4701173) tp_is_empty!30885 (not b!4701175) (not b!4701179) tp_is_empty!30887 (not b!4701186) (not b!4701171) (not b!4701177) (not b!4701183) (not start!476836) (not b!4701181) (not b!4701187) (not b!4701194) (not b!4701170) (not b!4701193) (not b!4701185) (not b!4701178))
(check-sat)
(get-model)

(declare-fun d!1495291 () Bool)

(declare-fun res!1984886 () Bool)

(declare-fun e!2932603 () Bool)

(assert (=> d!1495291 (=> res!1984886 e!2932603)))

(assert (=> d!1495291 (= res!1984886 ((_ is Nil!52534) lt!1864164))))

(assert (=> d!1495291 (= (forall!11401 lt!1864164 lambda!210267) e!2932603)))

(declare-fun b!4701200 () Bool)

(declare-fun e!2932604 () Bool)

(assert (=> b!4701200 (= e!2932603 e!2932604)))

(declare-fun res!1984887 () Bool)

(assert (=> b!4701200 (=> (not res!1984887) (not e!2932604))))

(declare-fun dynLambda!21748 (Int tuple2!53988) Bool)

(assert (=> b!4701200 (= res!1984887 (dynLambda!21748 lambda!210267 (h!58815 lt!1864164)))))

(declare-fun b!4701201 () Bool)

(assert (=> b!4701201 (= e!2932604 (forall!11401 (t!359870 lt!1864164) lambda!210267))))

(assert (= (and d!1495291 (not res!1984886)) b!4701200))

(assert (= (and b!4701200 res!1984887) b!4701201))

(declare-fun b_lambda!177381 () Bool)

(assert (=> (not b_lambda!177381) (not b!4701200)))

(declare-fun m!5616595 () Bool)

(assert (=> b!4701200 m!5616595))

(declare-fun m!5616597 () Bool)

(assert (=> b!4701201 m!5616597))

(assert (=> b!4701173 d!1495291))

(declare-fun d!1495293 () Bool)

(declare-fun hash!4177 (Hashable!6267 K!13895) (_ BitVec 64))

(assert (=> d!1495293 (= (hash!4174 hashF!1323 key!4653) (hash!4177 hashF!1323 key!4653))))

(declare-fun bs!1095316 () Bool)

(assert (= bs!1095316 d!1495293))

(declare-fun m!5616599 () Bool)

(assert (=> bs!1095316 m!5616599))

(assert (=> b!4701194 d!1495293))

(declare-fun d!1495295 () Bool)

(assert (=> d!1495295 (= (head!10059 (toList!5686 lm!2023)) (h!58815 (toList!5686 lm!2023)))))

(assert (=> b!4701183 d!1495295))

(declare-fun bs!1095317 () Bool)

(declare-fun d!1495297 () Bool)

(assert (= bs!1095317 (and d!1495297 start!476836)))

(declare-fun lambda!210270 () Int)

(assert (=> bs!1095317 (= lambda!210270 lambda!210267)))

(declare-fun lt!1864215 () ListMap!5049)

(declare-fun invariantList!1446 (List!52657) Bool)

(assert (=> d!1495297 (invariantList!1446 (toList!5685 lt!1864215))))

(declare-fun e!2932613 () ListMap!5049)

(assert (=> d!1495297 (= lt!1864215 e!2932613)))

(declare-fun c!803586 () Bool)

(assert (=> d!1495297 (= c!803586 ((_ is Cons!52534) (Cons!52534 lt!1864168 lt!1864195)))))

(assert (=> d!1495297 (forall!11401 (Cons!52534 lt!1864168 lt!1864195) lambda!210270)))

(assert (=> d!1495297 (= (extractMap!1924 (Cons!52534 lt!1864168 lt!1864195)) lt!1864215)))

(declare-fun b!4701218 () Bool)

(assert (=> b!4701218 (= e!2932613 (addToMapMapFromBucket!1330 (_2!30288 (h!58815 (Cons!52534 lt!1864168 lt!1864195))) (extractMap!1924 (t!359870 (Cons!52534 lt!1864168 lt!1864195)))))))

(declare-fun b!4701219 () Bool)

(assert (=> b!4701219 (= e!2932613 (ListMap!5050 Nil!52533))))

(assert (= (and d!1495297 c!803586) b!4701218))

(assert (= (and d!1495297 (not c!803586)) b!4701219))

(declare-fun m!5616601 () Bool)

(assert (=> d!1495297 m!5616601))

(declare-fun m!5616603 () Bool)

(assert (=> d!1495297 m!5616603))

(declare-fun m!5616605 () Bool)

(assert (=> b!4701218 m!5616605))

(assert (=> b!4701218 m!5616605))

(declare-fun m!5616607 () Bool)

(assert (=> b!4701218 m!5616607))

(assert (=> b!4701193 d!1495297))

(declare-fun bs!1095318 () Bool)

(declare-fun d!1495301 () Bool)

(assert (= bs!1095318 (and d!1495301 start!476836)))

(declare-fun lambda!210271 () Int)

(assert (=> bs!1095318 (= lambda!210271 lambda!210267)))

(declare-fun bs!1095319 () Bool)

(assert (= bs!1095319 (and d!1495301 d!1495297)))

(assert (=> bs!1095319 (= lambda!210271 lambda!210270)))

(declare-fun lt!1864216 () ListMap!5049)

(assert (=> d!1495301 (invariantList!1446 (toList!5685 lt!1864216))))

(declare-fun e!2932620 () ListMap!5049)

(assert (=> d!1495301 (= lt!1864216 e!2932620)))

(declare-fun c!803587 () Bool)

(assert (=> d!1495301 (= c!803587 ((_ is Cons!52534) (Cons!52534 lt!1864160 lt!1864195)))))

(assert (=> d!1495301 (forall!11401 (Cons!52534 lt!1864160 lt!1864195) lambda!210271)))

(assert (=> d!1495301 (= (extractMap!1924 (Cons!52534 lt!1864160 lt!1864195)) lt!1864216)))

(declare-fun b!4701226 () Bool)

(assert (=> b!4701226 (= e!2932620 (addToMapMapFromBucket!1330 (_2!30288 (h!58815 (Cons!52534 lt!1864160 lt!1864195))) (extractMap!1924 (t!359870 (Cons!52534 lt!1864160 lt!1864195)))))))

(declare-fun b!4701227 () Bool)

(assert (=> b!4701227 (= e!2932620 (ListMap!5050 Nil!52533))))

(assert (= (and d!1495301 c!803587) b!4701226))

(assert (= (and d!1495301 (not c!803587)) b!4701227))

(declare-fun m!5616609 () Bool)

(assert (=> d!1495301 m!5616609))

(declare-fun m!5616611 () Bool)

(assert (=> d!1495301 m!5616611))

(declare-fun m!5616613 () Bool)

(assert (=> b!4701226 m!5616613))

(assert (=> b!4701226 m!5616613))

(declare-fun m!5616615 () Bool)

(assert (=> b!4701226 m!5616615))

(assert (=> b!4701193 d!1495301))

(declare-fun bs!1095320 () Bool)

(declare-fun d!1495303 () Bool)

(assert (= bs!1095320 (and d!1495303 start!476836)))

(declare-fun lambda!210272 () Int)

(assert (=> bs!1095320 (= lambda!210272 lambda!210267)))

(declare-fun bs!1095321 () Bool)

(assert (= bs!1095321 (and d!1495303 d!1495297)))

(assert (=> bs!1095321 (= lambda!210272 lambda!210270)))

(declare-fun bs!1095322 () Bool)

(assert (= bs!1095322 (and d!1495303 d!1495301)))

(assert (=> bs!1095322 (= lambda!210272 lambda!210271)))

(declare-fun lt!1864225 () ListMap!5049)

(assert (=> d!1495303 (invariantList!1446 (toList!5685 lt!1864225))))

(declare-fun e!2932627 () ListMap!5049)

(assert (=> d!1495303 (= lt!1864225 e!2932627)))

(declare-fun c!803591 () Bool)

(assert (=> d!1495303 (= c!803591 ((_ is Cons!52534) (Cons!52534 lt!1864168 (t!359870 (toList!5686 lm!2023)))))))

(assert (=> d!1495303 (forall!11401 (Cons!52534 lt!1864168 (t!359870 (toList!5686 lm!2023))) lambda!210272)))

(assert (=> d!1495303 (= (extractMap!1924 (Cons!52534 lt!1864168 (t!359870 (toList!5686 lm!2023)))) lt!1864225)))

(declare-fun b!4701237 () Bool)

(assert (=> b!4701237 (= e!2932627 (addToMapMapFromBucket!1330 (_2!30288 (h!58815 (Cons!52534 lt!1864168 (t!359870 (toList!5686 lm!2023))))) (extractMap!1924 (t!359870 (Cons!52534 lt!1864168 (t!359870 (toList!5686 lm!2023)))))))))

(declare-fun b!4701238 () Bool)

(assert (=> b!4701238 (= e!2932627 (ListMap!5050 Nil!52533))))

(assert (= (and d!1495303 c!803591) b!4701237))

(assert (= (and d!1495303 (not c!803591)) b!4701238))

(declare-fun m!5616637 () Bool)

(assert (=> d!1495303 m!5616637))

(declare-fun m!5616639 () Bool)

(assert (=> d!1495303 m!5616639))

(declare-fun m!5616641 () Bool)

(assert (=> b!4701237 m!5616641))

(assert (=> b!4701237 m!5616641))

(declare-fun m!5616643 () Bool)

(assert (=> b!4701237 m!5616643))

(assert (=> b!4701193 d!1495303))

(declare-fun d!1495307 () Bool)

(declare-fun e!2932639 () Bool)

(assert (=> d!1495307 e!2932639))

(declare-fun res!1984905 () Bool)

(assert (=> d!1495307 (=> (not res!1984905) (not e!2932639))))

(declare-fun lt!1864231 () ListMap!5049)

(assert (=> d!1495307 (= res!1984905 (not (contains!15814 lt!1864231 key!4653)))))

(declare-fun removePresrvNoDuplicatedKeys!366 (List!52657 K!13895) List!52657)

(assert (=> d!1495307 (= lt!1864231 (ListMap!5050 (removePresrvNoDuplicatedKeys!366 (toList!5685 (extractMap!1924 (Cons!52534 lt!1864160 lt!1864195))) key!4653)))))

(assert (=> d!1495307 (= (-!702 (extractMap!1924 (Cons!52534 lt!1864160 lt!1864195)) key!4653) lt!1864231)))

(declare-fun b!4701253 () Bool)

(declare-datatypes ((List!52660 0))(
  ( (Nil!52536) (Cons!52536 (h!58819 K!13895) (t!359874 List!52660)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!9266 (List!52660) (InoxSet K!13895))

(declare-fun keys!18793 (ListMap!5049) List!52660)

(assert (=> b!4701253 (= e!2932639 (= ((_ map and) (content!9266 (keys!18793 (extractMap!1924 (Cons!52534 lt!1864160 lt!1864195)))) ((_ map not) (store ((as const (Array K!13895 Bool)) false) key!4653 true))) (content!9266 (keys!18793 lt!1864231))))))

(assert (= (and d!1495307 res!1984905) b!4701253))

(declare-fun m!5616659 () Bool)

(assert (=> d!1495307 m!5616659))

(declare-fun m!5616661 () Bool)

(assert (=> d!1495307 m!5616661))

(declare-fun m!5616663 () Bool)

(assert (=> b!4701253 m!5616663))

(declare-fun m!5616665 () Bool)

(assert (=> b!4701253 m!5616665))

(declare-fun m!5616667 () Bool)

(assert (=> b!4701253 m!5616667))

(assert (=> b!4701253 m!5616663))

(declare-fun m!5616669 () Bool)

(assert (=> b!4701253 m!5616669))

(assert (=> b!4701253 m!5616543))

(assert (=> b!4701253 m!5616665))

(declare-fun m!5616671 () Bool)

(assert (=> b!4701253 m!5616671))

(assert (=> b!4701193 d!1495307))

(declare-fun d!1495315 () Bool)

(assert (=> d!1495315 (= (tail!8721 lt!1864176) (t!359870 lt!1864176))))

(assert (=> b!4701193 d!1495315))

(declare-fun bs!1095330 () Bool)

(declare-fun d!1495317 () Bool)

(assert (= bs!1095330 (and d!1495317 start!476836)))

(declare-fun lambda!210281 () Int)

(assert (=> bs!1095330 (= lambda!210281 lambda!210267)))

(declare-fun bs!1095331 () Bool)

(assert (= bs!1095331 (and d!1495317 d!1495297)))

(assert (=> bs!1095331 (= lambda!210281 lambda!210270)))

(declare-fun bs!1095332 () Bool)

(assert (= bs!1095332 (and d!1495317 d!1495301)))

(assert (=> bs!1095332 (= lambda!210281 lambda!210271)))

(declare-fun bs!1095333 () Bool)

(assert (= bs!1095333 (and d!1495317 d!1495303)))

(assert (=> bs!1095333 (= lambda!210281 lambda!210272)))

(assert (=> d!1495317 (eq!1057 (extractMap!1924 (Cons!52534 (tuple2!53989 hash!405 lt!1864192) (tail!8721 (toList!5686 lt!1864178)))) (-!702 (extractMap!1924 (Cons!52534 (tuple2!53989 hash!405 (t!359869 oldBucket!34)) (tail!8721 (toList!5686 lt!1864178)))) key!4653))))

(declare-fun lt!1864256 () Unit!126240)

(declare-fun choose!32893 (ListLongMap!4215 (_ BitVec 64) List!52657 List!52657 K!13895 Hashable!6267) Unit!126240)

(assert (=> d!1495317 (= lt!1864256 (choose!32893 lt!1864178 hash!405 (t!359869 oldBucket!34) lt!1864192 key!4653 hashF!1323))))

(assert (=> d!1495317 (forall!11401 (toList!5686 lt!1864178) lambda!210281)))

(assert (=> d!1495317 (= (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMapOneHashIsHead!72 lt!1864178 hash!405 (t!359869 oldBucket!34) lt!1864192 key!4653 hashF!1323) lt!1864256)))

(declare-fun bs!1095334 () Bool)

(assert (= bs!1095334 d!1495317))

(declare-fun m!5616717 () Bool)

(assert (=> bs!1095334 m!5616717))

(declare-fun m!5616719 () Bool)

(assert (=> bs!1095334 m!5616719))

(declare-fun m!5616721 () Bool)

(assert (=> bs!1095334 m!5616721))

(assert (=> bs!1095334 m!5616719))

(declare-fun m!5616723 () Bool)

(assert (=> bs!1095334 m!5616723))

(declare-fun m!5616725 () Bool)

(assert (=> bs!1095334 m!5616725))

(assert (=> bs!1095334 m!5616723))

(declare-fun m!5616727 () Bool)

(assert (=> bs!1095334 m!5616727))

(declare-fun m!5616729 () Bool)

(assert (=> bs!1095334 m!5616729))

(assert (=> bs!1095334 m!5616725))

(assert (=> b!4701193 d!1495317))

(declare-fun d!1495329 () Bool)

(declare-fun e!2932644 () Bool)

(assert (=> d!1495329 e!2932644))

(declare-fun res!1984914 () Bool)

(assert (=> d!1495329 (=> (not res!1984914) (not e!2932644))))

(declare-fun lt!1864257 () ListMap!5049)

(assert (=> d!1495329 (= res!1984914 (not (contains!15814 lt!1864257 key!4653)))))

(assert (=> d!1495329 (= lt!1864257 (ListMap!5050 (removePresrvNoDuplicatedKeys!366 (toList!5685 lt!1864194) key!4653)))))

(assert (=> d!1495329 (= (-!702 lt!1864194 key!4653) lt!1864257)))

(declare-fun b!4701262 () Bool)

(assert (=> b!4701262 (= e!2932644 (= ((_ map and) (content!9266 (keys!18793 lt!1864194)) ((_ map not) (store ((as const (Array K!13895 Bool)) false) key!4653 true))) (content!9266 (keys!18793 lt!1864257))))))

(assert (= (and d!1495329 res!1984914) b!4701262))

(declare-fun m!5616731 () Bool)

(assert (=> d!1495329 m!5616731))

(declare-fun m!5616733 () Bool)

(assert (=> d!1495329 m!5616733))

(declare-fun m!5616735 () Bool)

(assert (=> b!4701262 m!5616735))

(declare-fun m!5616737 () Bool)

(assert (=> b!4701262 m!5616737))

(declare-fun m!5616739 () Bool)

(assert (=> b!4701262 m!5616739))

(assert (=> b!4701262 m!5616735))

(declare-fun m!5616741 () Bool)

(assert (=> b!4701262 m!5616741))

(assert (=> b!4701262 m!5616737))

(assert (=> b!4701262 m!5616671))

(assert (=> b!4701193 d!1495329))

(declare-fun d!1495331 () Bool)

(declare-fun content!9267 (List!52657) (InoxSet tuple2!53986))

(assert (=> d!1495331 (= (eq!1057 (extractMap!1924 (Cons!52534 lt!1864168 lt!1864195)) (-!702 (extractMap!1924 (Cons!52534 lt!1864160 lt!1864195)) key!4653)) (= (content!9267 (toList!5685 (extractMap!1924 (Cons!52534 lt!1864168 lt!1864195)))) (content!9267 (toList!5685 (-!702 (extractMap!1924 (Cons!52534 lt!1864160 lt!1864195)) key!4653)))))))

(declare-fun bs!1095335 () Bool)

(assert (= bs!1095335 d!1495331))

(declare-fun m!5616743 () Bool)

(assert (=> bs!1095335 m!5616743))

(declare-fun m!5616745 () Bool)

(assert (=> bs!1095335 m!5616745))

(assert (=> b!4701193 d!1495331))

(declare-fun d!1495333 () Bool)

(assert (=> d!1495333 (= (eq!1057 lt!1864162 lt!1864173) (= (content!9267 (toList!5685 lt!1864162)) (content!9267 (toList!5685 lt!1864173))))))

(declare-fun bs!1095336 () Bool)

(assert (= bs!1095336 d!1495333))

(declare-fun m!5616747 () Bool)

(assert (=> bs!1095336 m!5616747))

(declare-fun m!5616749 () Bool)

(assert (=> bs!1095336 m!5616749))

(assert (=> b!4701193 d!1495333))

(declare-fun d!1495335 () Bool)

(assert (=> d!1495335 (= (eq!1057 lt!1864165 lt!1864179) (= (content!9267 (toList!5685 lt!1864165)) (content!9267 (toList!5685 lt!1864179))))))

(declare-fun bs!1095337 () Bool)

(assert (= bs!1095337 d!1495335))

(declare-fun m!5616751 () Bool)

(assert (=> bs!1095337 m!5616751))

(declare-fun m!5616753 () Bool)

(assert (=> bs!1095337 m!5616753))

(assert (=> b!4701182 d!1495335))

(declare-fun d!1495337 () Bool)

(declare-fun res!1984915 () Bool)

(declare-fun e!2932645 () Bool)

(assert (=> d!1495337 (=> res!1984915 e!2932645)))

(assert (=> d!1495337 (= res!1984915 ((_ is Nil!52534) (toList!5686 lm!2023)))))

(assert (=> d!1495337 (= (forall!11401 (toList!5686 lm!2023) lambda!210267) e!2932645)))

(declare-fun b!4701263 () Bool)

(declare-fun e!2932646 () Bool)

(assert (=> b!4701263 (= e!2932645 e!2932646)))

(declare-fun res!1984916 () Bool)

(assert (=> b!4701263 (=> (not res!1984916) (not e!2932646))))

(assert (=> b!4701263 (= res!1984916 (dynLambda!21748 lambda!210267 (h!58815 (toList!5686 lm!2023))))))

(declare-fun b!4701264 () Bool)

(assert (=> b!4701264 (= e!2932646 (forall!11401 (t!359870 (toList!5686 lm!2023)) lambda!210267))))

(assert (= (and d!1495337 (not res!1984915)) b!4701263))

(assert (= (and b!4701263 res!1984916) b!4701264))

(declare-fun b_lambda!177383 () Bool)

(assert (=> (not b_lambda!177383) (not b!4701263)))

(declare-fun m!5616755 () Bool)

(assert (=> b!4701263 m!5616755))

(declare-fun m!5616757 () Bool)

(assert (=> b!4701264 m!5616757))

(assert (=> start!476836 d!1495337))

(declare-fun d!1495339 () Bool)

(declare-fun isStrictlySorted!684 (List!52658) Bool)

(assert (=> d!1495339 (= (inv!67769 lm!2023) (isStrictlySorted!684 (toList!5686 lm!2023)))))

(declare-fun bs!1095338 () Bool)

(assert (= bs!1095338 d!1495339))

(declare-fun m!5616759 () Bool)

(assert (=> bs!1095338 m!5616759))

(assert (=> start!476836 d!1495339))

(declare-fun d!1495341 () Bool)

(declare-fun e!2932647 () Bool)

(assert (=> d!1495341 e!2932647))

(declare-fun res!1984917 () Bool)

(assert (=> d!1495341 (=> (not res!1984917) (not e!2932647))))

(declare-fun lt!1864258 () ListMap!5049)

(assert (=> d!1495341 (= res!1984917 (not (contains!15814 lt!1864258 key!4653)))))

(assert (=> d!1495341 (= lt!1864258 (ListMap!5050 (removePresrvNoDuplicatedKeys!366 (toList!5685 (+!2182 lt!1864194 (h!58814 oldBucket!34))) key!4653)))))

(assert (=> d!1495341 (= (-!702 (+!2182 lt!1864194 (h!58814 oldBucket!34)) key!4653) lt!1864258)))

(declare-fun b!4701265 () Bool)

(assert (=> b!4701265 (= e!2932647 (= ((_ map and) (content!9266 (keys!18793 (+!2182 lt!1864194 (h!58814 oldBucket!34)))) ((_ map not) (store ((as const (Array K!13895 Bool)) false) key!4653 true))) (content!9266 (keys!18793 lt!1864258))))))

(assert (= (and d!1495341 res!1984917) b!4701265))

(declare-fun m!5616761 () Bool)

(assert (=> d!1495341 m!5616761))

(declare-fun m!5616763 () Bool)

(assert (=> d!1495341 m!5616763))

(declare-fun m!5616765 () Bool)

(assert (=> b!4701265 m!5616765))

(declare-fun m!5616767 () Bool)

(assert (=> b!4701265 m!5616767))

(declare-fun m!5616769 () Bool)

(assert (=> b!4701265 m!5616769))

(assert (=> b!4701265 m!5616765))

(declare-fun m!5616771 () Bool)

(assert (=> b!4701265 m!5616771))

(assert (=> b!4701265 m!5616507))

(assert (=> b!4701265 m!5616767))

(assert (=> b!4701265 m!5616671))

(assert (=> b!4701171 d!1495341))

(declare-fun d!1495343 () Bool)

(declare-fun e!2932648 () Bool)

(assert (=> d!1495343 e!2932648))

(declare-fun res!1984918 () Bool)

(assert (=> d!1495343 (=> (not res!1984918) (not e!2932648))))

(declare-fun lt!1864259 () ListMap!5049)

(assert (=> d!1495343 (= res!1984918 (not (contains!15814 lt!1864259 key!4653)))))

(assert (=> d!1495343 (= lt!1864259 (ListMap!5050 (removePresrvNoDuplicatedKeys!366 (toList!5685 lt!1864189) key!4653)))))

(assert (=> d!1495343 (= (-!702 lt!1864189 key!4653) lt!1864259)))

(declare-fun b!4701266 () Bool)

(assert (=> b!4701266 (= e!2932648 (= ((_ map and) (content!9266 (keys!18793 lt!1864189)) ((_ map not) (store ((as const (Array K!13895 Bool)) false) key!4653 true))) (content!9266 (keys!18793 lt!1864259))))))

(assert (= (and d!1495343 res!1984918) b!4701266))

(declare-fun m!5616773 () Bool)

(assert (=> d!1495343 m!5616773))

(declare-fun m!5616775 () Bool)

(assert (=> d!1495343 m!5616775))

(declare-fun m!5616777 () Bool)

(assert (=> b!4701266 m!5616777))

(declare-fun m!5616779 () Bool)

(assert (=> b!4701266 m!5616779))

(declare-fun m!5616781 () Bool)

(assert (=> b!4701266 m!5616781))

(assert (=> b!4701266 m!5616777))

(declare-fun m!5616783 () Bool)

(assert (=> b!4701266 m!5616783))

(assert (=> b!4701266 m!5616779))

(assert (=> b!4701266 m!5616671))

(assert (=> b!4701171 d!1495343))

(declare-fun d!1495345 () Bool)

(declare-fun e!2932651 () Bool)

(assert (=> d!1495345 e!2932651))

(declare-fun res!1984923 () Bool)

(assert (=> d!1495345 (=> (not res!1984923) (not e!2932651))))

(declare-fun lt!1864270 () ListMap!5049)

(assert (=> d!1495345 (= res!1984923 (contains!15814 lt!1864270 (_1!30287 (h!58814 oldBucket!34))))))

(declare-fun lt!1864271 () List!52657)

(assert (=> d!1495345 (= lt!1864270 (ListMap!5050 lt!1864271))))

(declare-fun lt!1864269 () Unit!126240)

(declare-fun lt!1864268 () Unit!126240)

(assert (=> d!1495345 (= lt!1864269 lt!1864268)))

(declare-datatypes ((Option!12195 0))(
  ( (None!12194) (Some!12194 (v!46685 V!14141)) )
))
(declare-fun getValueByKey!1851 (List!52657 K!13895) Option!12195)

(assert (=> d!1495345 (= (getValueByKey!1851 lt!1864271 (_1!30287 (h!58814 oldBucket!34))) (Some!12194 (_2!30287 (h!58814 oldBucket!34))))))

(declare-fun lemmaContainsTupThenGetReturnValue!1036 (List!52657 K!13895 V!14141) Unit!126240)

(assert (=> d!1495345 (= lt!1864268 (lemmaContainsTupThenGetReturnValue!1036 lt!1864271 (_1!30287 (h!58814 oldBucket!34)) (_2!30287 (h!58814 oldBucket!34))))))

(declare-fun insertNoDuplicatedKeys!544 (List!52657 K!13895 V!14141) List!52657)

(assert (=> d!1495345 (= lt!1864271 (insertNoDuplicatedKeys!544 (toList!5685 lt!1864173) (_1!30287 (h!58814 oldBucket!34)) (_2!30287 (h!58814 oldBucket!34))))))

(assert (=> d!1495345 (= (+!2182 lt!1864173 (h!58814 oldBucket!34)) lt!1864270)))

(declare-fun b!4701271 () Bool)

(declare-fun res!1984924 () Bool)

(assert (=> b!4701271 (=> (not res!1984924) (not e!2932651))))

(assert (=> b!4701271 (= res!1984924 (= (getValueByKey!1851 (toList!5685 lt!1864270) (_1!30287 (h!58814 oldBucket!34))) (Some!12194 (_2!30287 (h!58814 oldBucket!34)))))))

(declare-fun b!4701272 () Bool)

(declare-fun contains!15817 (List!52657 tuple2!53986) Bool)

(assert (=> b!4701272 (= e!2932651 (contains!15817 (toList!5685 lt!1864270) (h!58814 oldBucket!34)))))

(assert (= (and d!1495345 res!1984923) b!4701271))

(assert (= (and b!4701271 res!1984924) b!4701272))

(declare-fun m!5616785 () Bool)

(assert (=> d!1495345 m!5616785))

(declare-fun m!5616787 () Bool)

(assert (=> d!1495345 m!5616787))

(declare-fun m!5616789 () Bool)

(assert (=> d!1495345 m!5616789))

(declare-fun m!5616791 () Bool)

(assert (=> d!1495345 m!5616791))

(declare-fun m!5616793 () Bool)

(assert (=> b!4701271 m!5616793))

(declare-fun m!5616795 () Bool)

(assert (=> b!4701272 m!5616795))

(assert (=> b!4701171 d!1495345))

(declare-fun d!1495347 () Bool)

(assert (=> d!1495347 (= (-!702 (+!2182 lt!1864194 (tuple2!53987 (_1!30287 (h!58814 oldBucket!34)) (_2!30287 (h!58814 oldBucket!34)))) key!4653) (+!2182 (-!702 lt!1864194 key!4653) (tuple2!53987 (_1!30287 (h!58814 oldBucket!34)) (_2!30287 (h!58814 oldBucket!34)))))))

(declare-fun lt!1864274 () Unit!126240)

(declare-fun choose!32894 (ListMap!5049 K!13895 V!14141 K!13895) Unit!126240)

(assert (=> d!1495347 (= lt!1864274 (choose!32894 lt!1864194 (_1!30287 (h!58814 oldBucket!34)) (_2!30287 (h!58814 oldBucket!34)) key!4653))))

(assert (=> d!1495347 (not (= (_1!30287 (h!58814 oldBucket!34)) key!4653))))

(assert (=> d!1495347 (= (addRemoveCommutativeForDiffKeys!103 lt!1864194 (_1!30287 (h!58814 oldBucket!34)) (_2!30287 (h!58814 oldBucket!34)) key!4653) lt!1864274)))

(declare-fun bs!1095339 () Bool)

(assert (= bs!1095339 d!1495347))

(declare-fun m!5616797 () Bool)

(assert (=> bs!1095339 m!5616797))

(assert (=> bs!1095339 m!5616797))

(declare-fun m!5616799 () Bool)

(assert (=> bs!1095339 m!5616799))

(assert (=> bs!1095339 m!5616527))

(declare-fun m!5616801 () Bool)

(assert (=> bs!1095339 m!5616801))

(declare-fun m!5616803 () Bool)

(assert (=> bs!1095339 m!5616803))

(assert (=> bs!1095339 m!5616527))

(assert (=> b!4701171 d!1495347))

(declare-fun d!1495349 () Bool)

(declare-fun e!2932652 () Bool)

(assert (=> d!1495349 e!2932652))

(declare-fun res!1984925 () Bool)

(assert (=> d!1495349 (=> (not res!1984925) (not e!2932652))))

(declare-fun lt!1864277 () ListMap!5049)

(assert (=> d!1495349 (= res!1984925 (contains!15814 lt!1864277 (_1!30287 (h!58814 oldBucket!34))))))

(declare-fun lt!1864278 () List!52657)

(assert (=> d!1495349 (= lt!1864277 (ListMap!5050 lt!1864278))))

(declare-fun lt!1864276 () Unit!126240)

(declare-fun lt!1864275 () Unit!126240)

(assert (=> d!1495349 (= lt!1864276 lt!1864275)))

(assert (=> d!1495349 (= (getValueByKey!1851 lt!1864278 (_1!30287 (h!58814 oldBucket!34))) (Some!12194 (_2!30287 (h!58814 oldBucket!34))))))

(assert (=> d!1495349 (= lt!1864275 (lemmaContainsTupThenGetReturnValue!1036 lt!1864278 (_1!30287 (h!58814 oldBucket!34)) (_2!30287 (h!58814 oldBucket!34))))))

(assert (=> d!1495349 (= lt!1864278 (insertNoDuplicatedKeys!544 (toList!5685 lt!1864194) (_1!30287 (h!58814 oldBucket!34)) (_2!30287 (h!58814 oldBucket!34))))))

(assert (=> d!1495349 (= (+!2182 lt!1864194 (h!58814 oldBucket!34)) lt!1864277)))

(declare-fun b!4701273 () Bool)

(declare-fun res!1984926 () Bool)

(assert (=> b!4701273 (=> (not res!1984926) (not e!2932652))))

(assert (=> b!4701273 (= res!1984926 (= (getValueByKey!1851 (toList!5685 lt!1864277) (_1!30287 (h!58814 oldBucket!34))) (Some!12194 (_2!30287 (h!58814 oldBucket!34)))))))

(declare-fun b!4701274 () Bool)

(assert (=> b!4701274 (= e!2932652 (contains!15817 (toList!5685 lt!1864277) (h!58814 oldBucket!34)))))

(assert (= (and d!1495349 res!1984925) b!4701273))

(assert (= (and b!4701273 res!1984926) b!4701274))

(declare-fun m!5616805 () Bool)

(assert (=> d!1495349 m!5616805))

(declare-fun m!5616807 () Bool)

(assert (=> d!1495349 m!5616807))

(declare-fun m!5616809 () Bool)

(assert (=> d!1495349 m!5616809))

(declare-fun m!5616811 () Bool)

(assert (=> d!1495349 m!5616811))

(declare-fun m!5616813 () Bool)

(assert (=> b!4701273 m!5616813))

(declare-fun m!5616815 () Bool)

(assert (=> b!4701274 m!5616815))

(assert (=> b!4701171 d!1495349))

(declare-fun b!4701293 () Bool)

(declare-fun e!2932670 () Bool)

(declare-fun e!2932665 () Bool)

(assert (=> b!4701293 (= e!2932670 e!2932665)))

(declare-fun res!1984935 () Bool)

(assert (=> b!4701293 (=> (not res!1984935) (not e!2932665))))

(declare-fun isDefined!9450 (Option!12195) Bool)

(assert (=> b!4701293 (= res!1984935 (isDefined!9450 (getValueByKey!1851 (toList!5685 lt!1864190) key!4653)))))

(declare-fun b!4701294 () Bool)

(declare-fun e!2932669 () Bool)

(declare-fun contains!15818 (List!52660 K!13895) Bool)

(assert (=> b!4701294 (= e!2932669 (not (contains!15818 (keys!18793 lt!1864190) key!4653)))))

(declare-fun b!4701295 () Bool)

(declare-fun e!2932666 () Unit!126240)

(declare-fun e!2932667 () Unit!126240)

(assert (=> b!4701295 (= e!2932666 e!2932667)))

(declare-fun c!803601 () Bool)

(declare-fun call!328663 () Bool)

(assert (=> b!4701295 (= c!803601 call!328663)))

(declare-fun b!4701296 () Bool)

(declare-fun e!2932668 () List!52660)

(declare-fun getKeysList!886 (List!52657) List!52660)

(assert (=> b!4701296 (= e!2932668 (getKeysList!886 (toList!5685 lt!1864190)))))

(declare-fun b!4701297 () Bool)

(assert (=> b!4701297 (= e!2932668 (keys!18793 lt!1864190))))

(declare-fun d!1495351 () Bool)

(assert (=> d!1495351 e!2932670))

(declare-fun res!1984934 () Bool)

(assert (=> d!1495351 (=> res!1984934 e!2932670)))

(assert (=> d!1495351 (= res!1984934 e!2932669)))

(declare-fun res!1984933 () Bool)

(assert (=> d!1495351 (=> (not res!1984933) (not e!2932669))))

(declare-fun lt!1864295 () Bool)

(assert (=> d!1495351 (= res!1984933 (not lt!1864295))))

(declare-fun lt!1864296 () Bool)

(assert (=> d!1495351 (= lt!1864295 lt!1864296)))

(declare-fun lt!1864298 () Unit!126240)

(assert (=> d!1495351 (= lt!1864298 e!2932666)))

(declare-fun c!803603 () Bool)

(assert (=> d!1495351 (= c!803603 lt!1864296)))

(declare-fun containsKey!3171 (List!52657 K!13895) Bool)

(assert (=> d!1495351 (= lt!1864296 (containsKey!3171 (toList!5685 lt!1864190) key!4653))))

(assert (=> d!1495351 (= (contains!15814 lt!1864190 key!4653) lt!1864295)))

(declare-fun bm!328658 () Bool)

(assert (=> bm!328658 (= call!328663 (contains!15818 e!2932668 key!4653))))

(declare-fun c!803602 () Bool)

(assert (=> bm!328658 (= c!803602 c!803603)))

(declare-fun b!4701298 () Bool)

(declare-fun lt!1864300 () Unit!126240)

(assert (=> b!4701298 (= e!2932666 lt!1864300)))

(declare-fun lt!1864299 () Unit!126240)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1743 (List!52657 K!13895) Unit!126240)

(assert (=> b!4701298 (= lt!1864299 (lemmaContainsKeyImpliesGetValueByKeyDefined!1743 (toList!5685 lt!1864190) key!4653))))

(assert (=> b!4701298 (isDefined!9450 (getValueByKey!1851 (toList!5685 lt!1864190) key!4653))))

(declare-fun lt!1864302 () Unit!126240)

(assert (=> b!4701298 (= lt!1864302 lt!1864299)))

(declare-fun lemmaInListThenGetKeysListContains!881 (List!52657 K!13895) Unit!126240)

(assert (=> b!4701298 (= lt!1864300 (lemmaInListThenGetKeysListContains!881 (toList!5685 lt!1864190) key!4653))))

(assert (=> b!4701298 call!328663))

(declare-fun b!4701299 () Bool)

(assert (=> b!4701299 (= e!2932665 (contains!15818 (keys!18793 lt!1864190) key!4653))))

(declare-fun b!4701300 () Bool)

(declare-fun Unit!126265 () Unit!126240)

(assert (=> b!4701300 (= e!2932667 Unit!126265)))

(declare-fun b!4701301 () Bool)

(assert (=> b!4701301 false))

(declare-fun lt!1864297 () Unit!126240)

(declare-fun lt!1864301 () Unit!126240)

(assert (=> b!4701301 (= lt!1864297 lt!1864301)))

(assert (=> b!4701301 (containsKey!3171 (toList!5685 lt!1864190) key!4653)))

(declare-fun lemmaInGetKeysListThenContainsKey!885 (List!52657 K!13895) Unit!126240)

(assert (=> b!4701301 (= lt!1864301 (lemmaInGetKeysListThenContainsKey!885 (toList!5685 lt!1864190) key!4653))))

(declare-fun Unit!126267 () Unit!126240)

(assert (=> b!4701301 (= e!2932667 Unit!126267)))

(assert (= (and d!1495351 c!803603) b!4701298))

(assert (= (and d!1495351 (not c!803603)) b!4701295))

(assert (= (and b!4701295 c!803601) b!4701301))

(assert (= (and b!4701295 (not c!803601)) b!4701300))

(assert (= (or b!4701298 b!4701295) bm!328658))

(assert (= (and bm!328658 c!803602) b!4701296))

(assert (= (and bm!328658 (not c!803602)) b!4701297))

(assert (= (and d!1495351 res!1984933) b!4701294))

(assert (= (and d!1495351 (not res!1984934)) b!4701293))

(assert (= (and b!4701293 res!1984935) b!4701299))

(declare-fun m!5616817 () Bool)

(assert (=> b!4701296 m!5616817))

(declare-fun m!5616819 () Bool)

(assert (=> b!4701299 m!5616819))

(assert (=> b!4701299 m!5616819))

(declare-fun m!5616821 () Bool)

(assert (=> b!4701299 m!5616821))

(declare-fun m!5616823 () Bool)

(assert (=> d!1495351 m!5616823))

(assert (=> b!4701294 m!5616819))

(assert (=> b!4701294 m!5616819))

(assert (=> b!4701294 m!5616821))

(assert (=> b!4701301 m!5616823))

(declare-fun m!5616825 () Bool)

(assert (=> b!4701301 m!5616825))

(assert (=> b!4701297 m!5616819))

(declare-fun m!5616827 () Bool)

(assert (=> bm!328658 m!5616827))

(declare-fun m!5616829 () Bool)

(assert (=> b!4701293 m!5616829))

(assert (=> b!4701293 m!5616829))

(declare-fun m!5616831 () Bool)

(assert (=> b!4701293 m!5616831))

(declare-fun m!5616833 () Bool)

(assert (=> b!4701298 m!5616833))

(assert (=> b!4701298 m!5616829))

(assert (=> b!4701298 m!5616829))

(assert (=> b!4701298 m!5616831))

(declare-fun m!5616835 () Bool)

(assert (=> b!4701298 m!5616835))

(assert (=> b!4701192 d!1495351))

(declare-fun bs!1095340 () Bool)

(declare-fun d!1495353 () Bool)

(assert (= bs!1095340 (and d!1495353 d!1495297)))

(declare-fun lambda!210282 () Int)

(assert (=> bs!1095340 (= lambda!210282 lambda!210270)))

(declare-fun bs!1095341 () Bool)

(assert (= bs!1095341 (and d!1495353 d!1495317)))

(assert (=> bs!1095341 (= lambda!210282 lambda!210281)))

(declare-fun bs!1095342 () Bool)

(assert (= bs!1095342 (and d!1495353 d!1495301)))

(assert (=> bs!1095342 (= lambda!210282 lambda!210271)))

(declare-fun bs!1095343 () Bool)

(assert (= bs!1095343 (and d!1495353 d!1495303)))

(assert (=> bs!1095343 (= lambda!210282 lambda!210272)))

(declare-fun bs!1095344 () Bool)

(assert (= bs!1095344 (and d!1495353 start!476836)))

(assert (=> bs!1095344 (= lambda!210282 lambda!210267)))

(declare-fun lt!1864303 () ListMap!5049)

(assert (=> d!1495353 (invariantList!1446 (toList!5685 lt!1864303))))

(declare-fun e!2932671 () ListMap!5049)

(assert (=> d!1495353 (= lt!1864303 e!2932671)))

(declare-fun c!803604 () Bool)

(assert (=> d!1495353 (= c!803604 ((_ is Cons!52534) (toList!5686 lm!2023)))))

(assert (=> d!1495353 (forall!11401 (toList!5686 lm!2023) lambda!210282)))

(assert (=> d!1495353 (= (extractMap!1924 (toList!5686 lm!2023)) lt!1864303)))

(declare-fun b!4701302 () Bool)

(assert (=> b!4701302 (= e!2932671 (addToMapMapFromBucket!1330 (_2!30288 (h!58815 (toList!5686 lm!2023))) (extractMap!1924 (t!359870 (toList!5686 lm!2023)))))))

(declare-fun b!4701303 () Bool)

(assert (=> b!4701303 (= e!2932671 (ListMap!5050 Nil!52533))))

(assert (= (and d!1495353 c!803604) b!4701302))

(assert (= (and d!1495353 (not c!803604)) b!4701303))

(declare-fun m!5616837 () Bool)

(assert (=> d!1495353 m!5616837))

(declare-fun m!5616839 () Bool)

(assert (=> d!1495353 m!5616839))

(assert (=> b!4701302 m!5616523))

(assert (=> b!4701302 m!5616523))

(declare-fun m!5616841 () Bool)

(assert (=> b!4701302 m!5616841))

(assert (=> b!4701192 d!1495353))

(declare-fun d!1495355 () Bool)

(declare-fun lt!1864306 () List!52657)

(assert (=> d!1495355 (not (containsKey!3169 lt!1864306 key!4653))))

(declare-fun e!2932676 () List!52657)

(assert (=> d!1495355 (= lt!1864306 e!2932676)))

(declare-fun c!803609 () Bool)

(assert (=> d!1495355 (= c!803609 (and ((_ is Cons!52533) lt!1864183) (= (_1!30287 (h!58814 lt!1864183)) key!4653)))))

(assert (=> d!1495355 (noDuplicateKeys!1898 lt!1864183)))

(assert (=> d!1495355 (= (removePairForKey!1493 lt!1864183 key!4653) lt!1864306)))

(declare-fun b!4701315 () Bool)

(declare-fun e!2932677 () List!52657)

(assert (=> b!4701315 (= e!2932677 Nil!52533)))

(declare-fun b!4701312 () Bool)

(assert (=> b!4701312 (= e!2932676 (t!359869 lt!1864183))))

(declare-fun b!4701313 () Bool)

(assert (=> b!4701313 (= e!2932676 e!2932677)))

(declare-fun c!803610 () Bool)

(assert (=> b!4701313 (= c!803610 ((_ is Cons!52533) lt!1864183))))

(declare-fun b!4701314 () Bool)

(assert (=> b!4701314 (= e!2932677 (Cons!52533 (h!58814 lt!1864183) (removePairForKey!1493 (t!359869 lt!1864183) key!4653)))))

(assert (= (and d!1495355 c!803609) b!4701312))

(assert (= (and d!1495355 (not c!803609)) b!4701313))

(assert (= (and b!4701313 c!803610) b!4701314))

(assert (= (and b!4701313 (not c!803610)) b!4701315))

(declare-fun m!5616843 () Bool)

(assert (=> d!1495355 m!5616843))

(declare-fun m!5616845 () Bool)

(assert (=> d!1495355 m!5616845))

(declare-fun m!5616847 () Bool)

(assert (=> b!4701314 m!5616847))

(assert (=> b!4701181 d!1495355))

(declare-fun d!1495357 () Bool)

(assert (=> d!1495357 (= (tail!8720 newBucket!218) (t!359869 newBucket!218))))

(assert (=> b!4701181 d!1495357))

(declare-fun d!1495359 () Bool)

(assert (=> d!1495359 (= (tail!8720 oldBucket!34) (t!359869 oldBucket!34))))

(assert (=> b!4701181 d!1495359))

(declare-fun d!1495361 () Bool)

(assert (=> d!1495361 true))

(assert (=> d!1495361 true))

(declare-fun lambda!210285 () Int)

(declare-fun forall!11403 (List!52657 Int) Bool)

(assert (=> d!1495361 (= (allKeysSameHash!1724 oldBucket!34 hash!405 hashF!1323) (forall!11403 oldBucket!34 lambda!210285))))

(declare-fun bs!1095345 () Bool)

(assert (= bs!1095345 d!1495361))

(declare-fun m!5616849 () Bool)

(assert (=> bs!1095345 m!5616849))

(assert (=> b!4701191 d!1495361))

(declare-fun bs!1095452 () Bool)

(declare-fun b!4701444 () Bool)

(assert (= bs!1095452 (and b!4701444 d!1495361)))

(declare-fun lambda!210367 () Int)

(assert (=> bs!1095452 (not (= lambda!210367 lambda!210285))))

(assert (=> b!4701444 true))

(declare-fun bs!1095453 () Bool)

(declare-fun b!4701445 () Bool)

(assert (= bs!1095453 (and b!4701445 d!1495361)))

(declare-fun lambda!210368 () Int)

(assert (=> bs!1095453 (not (= lambda!210368 lambda!210285))))

(declare-fun bs!1095454 () Bool)

(assert (= bs!1095454 (and b!4701445 b!4701444)))

(assert (=> bs!1095454 (= lambda!210368 lambda!210367)))

(assert (=> b!4701445 true))

(declare-fun lambda!210369 () Int)

(assert (=> bs!1095453 (not (= lambda!210369 lambda!210285))))

(declare-fun lt!1864527 () ListMap!5049)

(assert (=> bs!1095454 (= (= lt!1864527 lt!1864193) (= lambda!210369 lambda!210367))))

(assert (=> b!4701445 (= (= lt!1864527 lt!1864193) (= lambda!210369 lambda!210368))))

(assert (=> b!4701445 true))

(declare-fun bs!1095455 () Bool)

(declare-fun d!1495363 () Bool)

(assert (= bs!1095455 (and d!1495363 d!1495361)))

(declare-fun lambda!210370 () Int)

(assert (=> bs!1095455 (not (= lambda!210370 lambda!210285))))

(declare-fun bs!1095456 () Bool)

(assert (= bs!1095456 (and d!1495363 b!4701444)))

(declare-fun lt!1864532 () ListMap!5049)

(assert (=> bs!1095456 (= (= lt!1864532 lt!1864193) (= lambda!210370 lambda!210367))))

(declare-fun bs!1095457 () Bool)

(assert (= bs!1095457 (and d!1495363 b!4701445)))

(assert (=> bs!1095457 (= (= lt!1864532 lt!1864193) (= lambda!210370 lambda!210368))))

(assert (=> bs!1095457 (= (= lt!1864532 lt!1864527) (= lambda!210370 lambda!210369))))

(assert (=> d!1495363 true))

(declare-fun b!4701443 () Bool)

(declare-fun e!2932755 () Bool)

(declare-fun call!328689 () Bool)

(assert (=> b!4701443 (= e!2932755 call!328689)))

(declare-fun bm!328684 () Bool)

(declare-fun call!328690 () Bool)

(declare-fun c!803637 () Bool)

(assert (=> bm!328684 (= call!328690 (forall!11403 (ite c!803637 (toList!5685 lt!1864193) (t!359869 (_2!30288 (h!58815 (toList!5686 lm!2023))))) (ite c!803637 lambda!210367 lambda!210369)))))

(declare-fun e!2932756 () ListMap!5049)

(assert (=> b!4701444 (= e!2932756 lt!1864193)))

(declare-fun lt!1864519 () Unit!126240)

(declare-fun call!328691 () Unit!126240)

(assert (=> b!4701444 (= lt!1864519 call!328691)))

(assert (=> b!4701444 call!328689))

(declare-fun lt!1864535 () Unit!126240)

(assert (=> b!4701444 (= lt!1864535 lt!1864519)))

(assert (=> b!4701444 call!328690))

(declare-fun lt!1864523 () Unit!126240)

(declare-fun Unit!126270 () Unit!126240)

(assert (=> b!4701444 (= lt!1864523 Unit!126270)))

(declare-fun b!4701446 () Bool)

(declare-fun e!2932757 () Bool)

(assert (=> b!4701446 (= e!2932757 (invariantList!1446 (toList!5685 lt!1864532)))))

(declare-fun bm!328685 () Bool)

(assert (=> bm!328685 (= call!328689 (forall!11403 (toList!5685 lt!1864193) (ite c!803637 lambda!210367 lambda!210369)))))

(declare-fun b!4701447 () Bool)

(declare-fun res!1985000 () Bool)

(assert (=> b!4701447 (=> (not res!1985000) (not e!2932757))))

(assert (=> b!4701447 (= res!1985000 (forall!11403 (toList!5685 lt!1864193) lambda!210370))))

(declare-fun bm!328686 () Bool)

(declare-fun lemmaContainsAllItsOwnKeys!734 (ListMap!5049) Unit!126240)

(assert (=> bm!328686 (= call!328691 (lemmaContainsAllItsOwnKeys!734 lt!1864193))))

(assert (=> d!1495363 e!2932757))

(declare-fun res!1985001 () Bool)

(assert (=> d!1495363 (=> (not res!1985001) (not e!2932757))))

(assert (=> d!1495363 (= res!1985001 (forall!11403 (_2!30288 (h!58815 (toList!5686 lm!2023))) lambda!210370))))

(assert (=> d!1495363 (= lt!1864532 e!2932756)))

(assert (=> d!1495363 (= c!803637 ((_ is Nil!52533) (_2!30288 (h!58815 (toList!5686 lm!2023)))))))

(assert (=> d!1495363 (noDuplicateKeys!1898 (_2!30288 (h!58815 (toList!5686 lm!2023))))))

(assert (=> d!1495363 (= (addToMapMapFromBucket!1330 (_2!30288 (h!58815 (toList!5686 lm!2023))) lt!1864193) lt!1864532)))

(assert (=> b!4701445 (= e!2932756 lt!1864527)))

(declare-fun lt!1864530 () ListMap!5049)

(assert (=> b!4701445 (= lt!1864530 (+!2182 lt!1864193 (h!58814 (_2!30288 (h!58815 (toList!5686 lm!2023))))))))

(assert (=> b!4701445 (= lt!1864527 (addToMapMapFromBucket!1330 (t!359869 (_2!30288 (h!58815 (toList!5686 lm!2023)))) (+!2182 lt!1864193 (h!58814 (_2!30288 (h!58815 (toList!5686 lm!2023)))))))))

(declare-fun lt!1864525 () Unit!126240)

(assert (=> b!4701445 (= lt!1864525 call!328691)))

(assert (=> b!4701445 (forall!11403 (toList!5685 lt!1864193) lambda!210368)))

(declare-fun lt!1864533 () Unit!126240)

(assert (=> b!4701445 (= lt!1864533 lt!1864525)))

(assert (=> b!4701445 (forall!11403 (toList!5685 lt!1864530) lambda!210369)))

(declare-fun lt!1864528 () Unit!126240)

(declare-fun Unit!126271 () Unit!126240)

(assert (=> b!4701445 (= lt!1864528 Unit!126271)))

(assert (=> b!4701445 call!328690))

(declare-fun lt!1864524 () Unit!126240)

(declare-fun Unit!126272 () Unit!126240)

(assert (=> b!4701445 (= lt!1864524 Unit!126272)))

(declare-fun lt!1864538 () Unit!126240)

(declare-fun Unit!126273 () Unit!126240)

(assert (=> b!4701445 (= lt!1864538 Unit!126273)))

(declare-fun lt!1864537 () Unit!126240)

(declare-fun forallContained!3510 (List!52657 Int tuple2!53986) Unit!126240)

(assert (=> b!4701445 (= lt!1864537 (forallContained!3510 (toList!5685 lt!1864530) lambda!210369 (h!58814 (_2!30288 (h!58815 (toList!5686 lm!2023))))))))

(assert (=> b!4701445 (contains!15814 lt!1864530 (_1!30287 (h!58814 (_2!30288 (h!58815 (toList!5686 lm!2023))))))))

(declare-fun lt!1864536 () Unit!126240)

(declare-fun Unit!126274 () Unit!126240)

(assert (=> b!4701445 (= lt!1864536 Unit!126274)))

(assert (=> b!4701445 (contains!15814 lt!1864527 (_1!30287 (h!58814 (_2!30288 (h!58815 (toList!5686 lm!2023))))))))

(declare-fun lt!1864526 () Unit!126240)

(declare-fun Unit!126275 () Unit!126240)

(assert (=> b!4701445 (= lt!1864526 Unit!126275)))

(assert (=> b!4701445 (forall!11403 (_2!30288 (h!58815 (toList!5686 lm!2023))) lambda!210369)))

(declare-fun lt!1864520 () Unit!126240)

(declare-fun Unit!126276 () Unit!126240)

(assert (=> b!4701445 (= lt!1864520 Unit!126276)))

(assert (=> b!4701445 (forall!11403 (toList!5685 lt!1864530) lambda!210369)))

(declare-fun lt!1864534 () Unit!126240)

(declare-fun Unit!126277 () Unit!126240)

(assert (=> b!4701445 (= lt!1864534 Unit!126277)))

(declare-fun lt!1864522 () Unit!126240)

(declare-fun Unit!126278 () Unit!126240)

(assert (=> b!4701445 (= lt!1864522 Unit!126278)))

(declare-fun lt!1864529 () Unit!126240)

(declare-fun addForallContainsKeyThenBeforeAdding!733 (ListMap!5049 ListMap!5049 K!13895 V!14141) Unit!126240)

(assert (=> b!4701445 (= lt!1864529 (addForallContainsKeyThenBeforeAdding!733 lt!1864193 lt!1864527 (_1!30287 (h!58814 (_2!30288 (h!58815 (toList!5686 lm!2023))))) (_2!30287 (h!58814 (_2!30288 (h!58815 (toList!5686 lm!2023)))))))))

(assert (=> b!4701445 (forall!11403 (toList!5685 lt!1864193) lambda!210369)))

(declare-fun lt!1864539 () Unit!126240)

(assert (=> b!4701445 (= lt!1864539 lt!1864529)))

(assert (=> b!4701445 (forall!11403 (toList!5685 lt!1864193) lambda!210369)))

(declare-fun lt!1864521 () Unit!126240)

(declare-fun Unit!126280 () Unit!126240)

(assert (=> b!4701445 (= lt!1864521 Unit!126280)))

(declare-fun res!1985002 () Bool)

(assert (=> b!4701445 (= res!1985002 (forall!11403 (_2!30288 (h!58815 (toList!5686 lm!2023))) lambda!210369))))

(assert (=> b!4701445 (=> (not res!1985002) (not e!2932755))))

(assert (=> b!4701445 e!2932755))

(declare-fun lt!1864531 () Unit!126240)

(declare-fun Unit!126283 () Unit!126240)

(assert (=> b!4701445 (= lt!1864531 Unit!126283)))

(assert (= (and d!1495363 c!803637) b!4701444))

(assert (= (and d!1495363 (not c!803637)) b!4701445))

(assert (= (and b!4701445 res!1985002) b!4701443))

(assert (= (or b!4701444 b!4701445) bm!328686))

(assert (= (or b!4701444 b!4701443) bm!328685))

(assert (= (or b!4701444 b!4701445) bm!328684))

(assert (= (and d!1495363 res!1985001) b!4701447))

(assert (= (and b!4701447 res!1985000) b!4701446))

(declare-fun m!5617125 () Bool)

(assert (=> bm!328685 m!5617125))

(declare-fun m!5617127 () Bool)

(assert (=> b!4701445 m!5617127))

(declare-fun m!5617129 () Bool)

(assert (=> b!4701445 m!5617129))

(declare-fun m!5617131 () Bool)

(assert (=> b!4701445 m!5617131))

(assert (=> b!4701445 m!5617131))

(declare-fun m!5617133 () Bool)

(assert (=> b!4701445 m!5617133))

(declare-fun m!5617135 () Bool)

(assert (=> b!4701445 m!5617135))

(declare-fun m!5617137 () Bool)

(assert (=> b!4701445 m!5617137))

(declare-fun m!5617139 () Bool)

(assert (=> b!4701445 m!5617139))

(declare-fun m!5617141 () Bool)

(assert (=> b!4701445 m!5617141))

(declare-fun m!5617143 () Bool)

(assert (=> b!4701445 m!5617143))

(assert (=> b!4701445 m!5617141))

(assert (=> b!4701445 m!5617137))

(assert (=> b!4701445 m!5617129))

(declare-fun m!5617145 () Bool)

(assert (=> b!4701445 m!5617145))

(declare-fun m!5617147 () Bool)

(assert (=> b!4701447 m!5617147))

(declare-fun m!5617149 () Bool)

(assert (=> bm!328686 m!5617149))

(declare-fun m!5617151 () Bool)

(assert (=> b!4701446 m!5617151))

(declare-fun m!5617153 () Bool)

(assert (=> bm!328684 m!5617153))

(declare-fun m!5617155 () Bool)

(assert (=> d!1495363 m!5617155))

(declare-fun m!5617157 () Bool)

(assert (=> d!1495363 m!5617157))

(assert (=> b!4701180 d!1495363))

(declare-fun bs!1095458 () Bool)

(declare-fun d!1495425 () Bool)

(assert (= bs!1095458 (and d!1495425 d!1495297)))

(declare-fun lambda!210371 () Int)

(assert (=> bs!1095458 (= lambda!210371 lambda!210270)))

(declare-fun bs!1095459 () Bool)

(assert (= bs!1095459 (and d!1495425 d!1495317)))

(assert (=> bs!1095459 (= lambda!210371 lambda!210281)))

(declare-fun bs!1095460 () Bool)

(assert (= bs!1095460 (and d!1495425 d!1495301)))

(assert (=> bs!1095460 (= lambda!210371 lambda!210271)))

(declare-fun bs!1095461 () Bool)

(assert (= bs!1095461 (and d!1495425 d!1495353)))

(assert (=> bs!1095461 (= lambda!210371 lambda!210282)))

(declare-fun bs!1095462 () Bool)

(assert (= bs!1095462 (and d!1495425 d!1495303)))

(assert (=> bs!1095462 (= lambda!210371 lambda!210272)))

(declare-fun bs!1095463 () Bool)

(assert (= bs!1095463 (and d!1495425 start!476836)))

(assert (=> bs!1095463 (= lambda!210371 lambda!210267)))

(declare-fun lt!1864540 () ListMap!5049)

(assert (=> d!1495425 (invariantList!1446 (toList!5685 lt!1864540))))

(declare-fun e!2932758 () ListMap!5049)

(assert (=> d!1495425 (= lt!1864540 e!2932758)))

(declare-fun c!803638 () Bool)

(assert (=> d!1495425 (= c!803638 ((_ is Cons!52534) (t!359870 (toList!5686 lm!2023))))))

(assert (=> d!1495425 (forall!11401 (t!359870 (toList!5686 lm!2023)) lambda!210371)))

(assert (=> d!1495425 (= (extractMap!1924 (t!359870 (toList!5686 lm!2023))) lt!1864540)))

(declare-fun b!4701450 () Bool)

(assert (=> b!4701450 (= e!2932758 (addToMapMapFromBucket!1330 (_2!30288 (h!58815 (t!359870 (toList!5686 lm!2023)))) (extractMap!1924 (t!359870 (t!359870 (toList!5686 lm!2023))))))))

(declare-fun b!4701451 () Bool)

(assert (=> b!4701451 (= e!2932758 (ListMap!5050 Nil!52533))))

(assert (= (and d!1495425 c!803638) b!4701450))

(assert (= (and d!1495425 (not c!803638)) b!4701451))

(declare-fun m!5617159 () Bool)

(assert (=> d!1495425 m!5617159))

(declare-fun m!5617161 () Bool)

(assert (=> d!1495425 m!5617161))

(declare-fun m!5617163 () Bool)

(assert (=> b!4701450 m!5617163))

(assert (=> b!4701450 m!5617163))

(declare-fun m!5617165 () Bool)

(assert (=> b!4701450 m!5617165))

(assert (=> b!4701180 d!1495425))

(declare-fun d!1495427 () Bool)

(assert (=> d!1495427 (= (tail!8719 lm!2023) (ListLongMap!4216 (tail!8721 (toList!5686 lm!2023))))))

(declare-fun bs!1095464 () Bool)

(assert (= bs!1095464 d!1495427))

(declare-fun m!5617167 () Bool)

(assert (=> bs!1095464 m!5617167))

(assert (=> b!4701180 d!1495427))

(declare-fun d!1495429 () Bool)

(declare-fun res!1985007 () Bool)

(declare-fun e!2932763 () Bool)

(assert (=> d!1495429 (=> res!1985007 e!2932763)))

(assert (=> d!1495429 (= res!1985007 (not ((_ is Cons!52533) oldBucket!34)))))

(assert (=> d!1495429 (= (noDuplicateKeys!1898 oldBucket!34) e!2932763)))

(declare-fun b!4701456 () Bool)

(declare-fun e!2932764 () Bool)

(assert (=> b!4701456 (= e!2932763 e!2932764)))

(declare-fun res!1985008 () Bool)

(assert (=> b!4701456 (=> (not res!1985008) (not e!2932764))))

(assert (=> b!4701456 (= res!1985008 (not (containsKey!3169 (t!359869 oldBucket!34) (_1!30287 (h!58814 oldBucket!34)))))))

(declare-fun b!4701457 () Bool)

(assert (=> b!4701457 (= e!2932764 (noDuplicateKeys!1898 (t!359869 oldBucket!34)))))

(assert (= (and d!1495429 (not res!1985007)) b!4701456))

(assert (= (and b!4701456 res!1985008) b!4701457))

(declare-fun m!5617169 () Bool)

(assert (=> b!4701456 m!5617169))

(declare-fun m!5617171 () Bool)

(assert (=> b!4701457 m!5617171))

(assert (=> b!4701189 d!1495429))

(declare-fun d!1495431 () Bool)

(assert (=> d!1495431 (dynLambda!21748 lambda!210267 lt!1864175)))

(declare-fun lt!1864543 () Unit!126240)

(declare-fun choose!32895 (List!52658 Int tuple2!53988) Unit!126240)

(assert (=> d!1495431 (= lt!1864543 (choose!32895 (toList!5686 lm!2023) lambda!210267 lt!1864175))))

(declare-fun e!2932767 () Bool)

(assert (=> d!1495431 e!2932767))

(declare-fun res!1985011 () Bool)

(assert (=> d!1495431 (=> (not res!1985011) (not e!2932767))))

(assert (=> d!1495431 (= res!1985011 (forall!11401 (toList!5686 lm!2023) lambda!210267))))

(assert (=> d!1495431 (= (forallContained!3508 (toList!5686 lm!2023) lambda!210267 lt!1864175) lt!1864543)))

(declare-fun b!4701460 () Bool)

(assert (=> b!4701460 (= e!2932767 (contains!15812 (toList!5686 lm!2023) lt!1864175))))

(assert (= (and d!1495431 res!1985011) b!4701460))

(declare-fun b_lambda!177389 () Bool)

(assert (=> (not b_lambda!177389) (not d!1495431)))

(declare-fun m!5617173 () Bool)

(assert (=> d!1495431 m!5617173))

(declare-fun m!5617175 () Bool)

(assert (=> d!1495431 m!5617175))

(assert (=> d!1495431 m!5616473))

(assert (=> b!4701460 m!5616469))

(assert (=> b!4701178 d!1495431))

(declare-fun d!1495433 () Bool)

(assert (=> d!1495433 (contains!15812 (toList!5686 lm!2023) (tuple2!53989 lt!1864187 lt!1864166))))

(declare-fun lt!1864546 () Unit!126240)

(declare-fun choose!32896 (ListLongMap!4215 (_ BitVec 64) List!52657) Unit!126240)

(assert (=> d!1495433 (= lt!1864546 (choose!32896 lm!2023 lt!1864187 lt!1864166))))

(assert (=> d!1495433 (contains!15813 lm!2023 lt!1864187)))

(assert (=> d!1495433 (= (lemmaGetValueImpliesTupleContained!307 lm!2023 lt!1864187 lt!1864166) lt!1864546)))

(declare-fun bs!1095465 () Bool)

(assert (= bs!1095465 d!1495433))

(declare-fun m!5617177 () Bool)

(assert (=> bs!1095465 m!5617177))

(declare-fun m!5617179 () Bool)

(assert (=> bs!1095465 m!5617179))

(assert (=> bs!1095465 m!5616461))

(assert (=> b!4701178 d!1495433))

(declare-fun bs!1095466 () Bool)

(declare-fun d!1495435 () Bool)

(assert (= bs!1095466 (and d!1495435 d!1495297)))

(declare-fun lambda!210374 () Int)

(assert (=> bs!1095466 (= lambda!210374 lambda!210270)))

(declare-fun bs!1095467 () Bool)

(assert (= bs!1095467 (and d!1495435 d!1495317)))

(assert (=> bs!1095467 (= lambda!210374 lambda!210281)))

(declare-fun bs!1095468 () Bool)

(assert (= bs!1095468 (and d!1495435 d!1495301)))

(assert (=> bs!1095468 (= lambda!210374 lambda!210271)))

(declare-fun bs!1095469 () Bool)

(assert (= bs!1095469 (and d!1495435 d!1495353)))

(assert (=> bs!1095469 (= lambda!210374 lambda!210282)))

(declare-fun bs!1095470 () Bool)

(assert (= bs!1095470 (and d!1495435 d!1495303)))

(assert (=> bs!1095470 (= lambda!210374 lambda!210272)))

(declare-fun bs!1095471 () Bool)

(assert (= bs!1095471 (and d!1495435 d!1495425)))

(assert (=> bs!1095471 (= lambda!210374 lambda!210371)))

(declare-fun bs!1095472 () Bool)

(assert (= bs!1095472 (and d!1495435 start!476836)))

(assert (=> bs!1095472 (= lambda!210374 lambda!210267)))

(assert (=> d!1495435 (contains!15813 lm!2023 (hash!4174 hashF!1323 key!4653))))

(declare-fun lt!1864549 () Unit!126240)

(declare-fun choose!32897 (ListLongMap!4215 K!13895 Hashable!6267) Unit!126240)

(assert (=> d!1495435 (= lt!1864549 (choose!32897 lm!2023 key!4653 hashF!1323))))

(assert (=> d!1495435 (forall!11401 (toList!5686 lm!2023) lambda!210374)))

(assert (=> d!1495435 (= (lemmaInGenMapThenLongMapContainsHash!708 lm!2023 key!4653 hashF!1323) lt!1864549)))

(declare-fun bs!1095473 () Bool)

(assert (= bs!1095473 d!1495435))

(assert (=> bs!1095473 m!5616485))

(assert (=> bs!1095473 m!5616485))

(declare-fun m!5617181 () Bool)

(assert (=> bs!1095473 m!5617181))

(declare-fun m!5617183 () Bool)

(assert (=> bs!1095473 m!5617183))

(declare-fun m!5617185 () Bool)

(assert (=> bs!1095473 m!5617185))

(assert (=> b!4701178 d!1495435))

(declare-fun bs!1095531 () Bool)

(declare-fun d!1495437 () Bool)

(assert (= bs!1095531 (and d!1495437 d!1495297)))

(declare-fun lambda!210393 () Int)

(assert (=> bs!1095531 (= lambda!210393 lambda!210270)))

(declare-fun bs!1095533 () Bool)

(assert (= bs!1095533 (and d!1495437 d!1495301)))

(assert (=> bs!1095533 (= lambda!210393 lambda!210271)))

(declare-fun bs!1095534 () Bool)

(assert (= bs!1095534 (and d!1495437 d!1495353)))

(assert (=> bs!1095534 (= lambda!210393 lambda!210282)))

(declare-fun bs!1095535 () Bool)

(assert (= bs!1095535 (and d!1495437 d!1495303)))

(assert (=> bs!1095535 (= lambda!210393 lambda!210272)))

(declare-fun bs!1095536 () Bool)

(assert (= bs!1095536 (and d!1495437 d!1495425)))

(assert (=> bs!1095536 (= lambda!210393 lambda!210371)))

(declare-fun bs!1095537 () Bool)

(assert (= bs!1095537 (and d!1495437 start!476836)))

(assert (=> bs!1095537 (= lambda!210393 lambda!210267)))

(declare-fun bs!1095538 () Bool)

(assert (= bs!1095538 (and d!1495437 d!1495317)))

(assert (=> bs!1095538 (= lambda!210393 lambda!210281)))

(declare-fun bs!1095539 () Bool)

(assert (= bs!1095539 (and d!1495437 d!1495435)))

(assert (=> bs!1095539 (= lambda!210393 lambda!210374)))

(declare-fun b!4701505 () Bool)

(declare-fun res!1985043 () Bool)

(declare-fun e!2932793 () Bool)

(assert (=> b!4701505 (=> (not res!1985043) (not e!2932793))))

(assert (=> b!4701505 (= res!1985043 (contains!15814 (extractMap!1924 (toList!5686 lm!2023)) key!4653))))

(declare-fun b!4701506 () Bool)

(assert (=> b!4701506 (= e!2932793 (isDefined!9448 (getPair!502 (apply!12381 lm!2023 (hash!4174 hashF!1323 key!4653)) key!4653)))))

(declare-fun lt!1864631 () Unit!126240)

(assert (=> b!4701506 (= lt!1864631 (forallContained!3508 (toList!5686 lm!2023) lambda!210393 (tuple2!53989 (hash!4174 hashF!1323 key!4653) (apply!12381 lm!2023 (hash!4174 hashF!1323 key!4653)))))))

(declare-fun lt!1864628 () Unit!126240)

(declare-fun lt!1864627 () Unit!126240)

(assert (=> b!4701506 (= lt!1864628 lt!1864627)))

(declare-fun lt!1864626 () (_ BitVec 64))

(declare-fun lt!1864629 () List!52657)

(assert (=> b!4701506 (contains!15812 (toList!5686 lm!2023) (tuple2!53989 lt!1864626 lt!1864629))))

(assert (=> b!4701506 (= lt!1864627 (lemmaGetValueImpliesTupleContained!307 lm!2023 lt!1864626 lt!1864629))))

(declare-fun e!2932792 () Bool)

(assert (=> b!4701506 e!2932792))

(declare-fun res!1985040 () Bool)

(assert (=> b!4701506 (=> (not res!1985040) (not e!2932792))))

(assert (=> b!4701506 (= res!1985040 (contains!15813 lm!2023 lt!1864626))))

(assert (=> b!4701506 (= lt!1864629 (apply!12381 lm!2023 (hash!4174 hashF!1323 key!4653)))))

(assert (=> b!4701506 (= lt!1864626 (hash!4174 hashF!1323 key!4653))))

(declare-fun lt!1864625 () Unit!126240)

(declare-fun lt!1864632 () Unit!126240)

(assert (=> b!4701506 (= lt!1864625 lt!1864632)))

(assert (=> b!4701506 (contains!15813 lm!2023 (hash!4174 hashF!1323 key!4653))))

(assert (=> b!4701506 (= lt!1864632 (lemmaInGenMapThenLongMapContainsHash!708 lm!2023 key!4653 hashF!1323))))

(assert (=> d!1495437 e!2932793))

(declare-fun res!1985041 () Bool)

(assert (=> d!1495437 (=> (not res!1985041) (not e!2932793))))

(assert (=> d!1495437 (= res!1985041 (forall!11401 (toList!5686 lm!2023) lambda!210393))))

(declare-fun lt!1864630 () Unit!126240)

(declare-fun choose!32898 (ListLongMap!4215 K!13895 Hashable!6267) Unit!126240)

(assert (=> d!1495437 (= lt!1864630 (choose!32898 lm!2023 key!4653 hashF!1323))))

(assert (=> d!1495437 (forall!11401 (toList!5686 lm!2023) lambda!210393)))

(assert (=> d!1495437 (= (lemmaInGenMapThenGetPairDefined!298 lm!2023 key!4653 hashF!1323) lt!1864630)))

(declare-fun b!4701507 () Bool)

(declare-datatypes ((Option!12196 0))(
  ( (None!12195) (Some!12195 (v!46686 List!52657)) )
))
(declare-fun getValueByKey!1852 (List!52658 (_ BitVec 64)) Option!12196)

(assert (=> b!4701507 (= e!2932792 (= (getValueByKey!1852 (toList!5686 lm!2023) lt!1864626) (Some!12195 lt!1864629)))))

(declare-fun b!4701504 () Bool)

(declare-fun res!1985042 () Bool)

(assert (=> b!4701504 (=> (not res!1985042) (not e!2932793))))

(assert (=> b!4701504 (= res!1985042 (allKeysSameHashInMap!1812 lm!2023 hashF!1323))))

(assert (= (and d!1495437 res!1985041) b!4701504))

(assert (= (and b!4701504 res!1985042) b!4701505))

(assert (= (and b!4701505 res!1985043) b!4701506))

(assert (= (and b!4701506 res!1985040) b!4701507))

(assert (=> b!4701505 m!5616503))

(assert (=> b!4701505 m!5616503))

(declare-fun m!5617271 () Bool)

(assert (=> b!4701505 m!5617271))

(assert (=> b!4701504 m!5616497))

(declare-fun m!5617273 () Bool)

(assert (=> d!1495437 m!5617273))

(declare-fun m!5617275 () Bool)

(assert (=> d!1495437 m!5617275))

(assert (=> d!1495437 m!5617273))

(declare-fun m!5617277 () Bool)

(assert (=> b!4701506 m!5617277))

(declare-fun m!5617279 () Bool)

(assert (=> b!4701506 m!5617279))

(declare-fun m!5617281 () Bool)

(assert (=> b!4701506 m!5617281))

(assert (=> b!4701506 m!5616455))

(declare-fun m!5617283 () Bool)

(assert (=> b!4701506 m!5617283))

(assert (=> b!4701506 m!5616485))

(assert (=> b!4701506 m!5617181))

(declare-fun m!5617285 () Bool)

(assert (=> b!4701506 m!5617285))

(assert (=> b!4701506 m!5617279))

(declare-fun m!5617289 () Bool)

(assert (=> b!4701506 m!5617289))

(assert (=> b!4701506 m!5616485))

(declare-fun m!5617291 () Bool)

(assert (=> b!4701506 m!5617291))

(assert (=> b!4701506 m!5616485))

(assert (=> b!4701506 m!5617285))

(declare-fun m!5617293 () Bool)

(assert (=> b!4701507 m!5617293))

(assert (=> b!4701178 d!1495437))

(declare-fun b!4701528 () Bool)

(declare-fun e!2932806 () Bool)

(declare-fun lt!1864636 () Option!12193)

(declare-fun get!17585 (Option!12193) tuple2!53986)

(assert (=> b!4701528 (= e!2932806 (contains!15817 lt!1864166 (get!17585 lt!1864636)))))

(declare-fun b!4701529 () Bool)

(declare-fun e!2932809 () Option!12193)

(assert (=> b!4701529 (= e!2932809 None!12192)))

(declare-fun b!4701530 () Bool)

(assert (=> b!4701530 (= e!2932809 (getPair!502 (t!359869 lt!1864166) key!4653))))

(declare-fun b!4701531 () Bool)

(declare-fun e!2932807 () Option!12193)

(assert (=> b!4701531 (= e!2932807 (Some!12192 (h!58814 lt!1864166)))))

(declare-fun b!4701532 () Bool)

(declare-fun e!2932810 () Bool)

(assert (=> b!4701532 (= e!2932810 e!2932806)))

(declare-fun res!1985053 () Bool)

(assert (=> b!4701532 (=> (not res!1985053) (not e!2932806))))

(assert (=> b!4701532 (= res!1985053 (isDefined!9448 lt!1864636))))

(declare-fun b!4701534 () Bool)

(declare-fun e!2932808 () Bool)

(assert (=> b!4701534 (= e!2932808 (not (containsKey!3169 lt!1864166 key!4653)))))

(declare-fun b!4701535 () Bool)

(assert (=> b!4701535 (= e!2932807 e!2932809)))

(declare-fun c!803652 () Bool)

(assert (=> b!4701535 (= c!803652 ((_ is Cons!52533) lt!1864166))))

(declare-fun d!1495461 () Bool)

(assert (=> d!1495461 e!2932810))

(declare-fun res!1985052 () Bool)

(assert (=> d!1495461 (=> res!1985052 e!2932810)))

(assert (=> d!1495461 (= res!1985052 e!2932808)))

(declare-fun res!1985055 () Bool)

(assert (=> d!1495461 (=> (not res!1985055) (not e!2932808))))

(declare-fun isEmpty!29129 (Option!12193) Bool)

(assert (=> d!1495461 (= res!1985055 (isEmpty!29129 lt!1864636))))

(assert (=> d!1495461 (= lt!1864636 e!2932807)))

(declare-fun c!803653 () Bool)

(assert (=> d!1495461 (= c!803653 (and ((_ is Cons!52533) lt!1864166) (= (_1!30287 (h!58814 lt!1864166)) key!4653)))))

(assert (=> d!1495461 (noDuplicateKeys!1898 lt!1864166)))

(assert (=> d!1495461 (= (getPair!502 lt!1864166 key!4653) lt!1864636)))

(declare-fun b!4701533 () Bool)

(declare-fun res!1985054 () Bool)

(assert (=> b!4701533 (=> (not res!1985054) (not e!2932806))))

(assert (=> b!4701533 (= res!1985054 (= (_1!30287 (get!17585 lt!1864636)) key!4653))))

(assert (= (and d!1495461 c!803653) b!4701531))

(assert (= (and d!1495461 (not c!803653)) b!4701535))

(assert (= (and b!4701535 c!803652) b!4701530))

(assert (= (and b!4701535 (not c!803652)) b!4701529))

(assert (= (and d!1495461 res!1985055) b!4701534))

(assert (= (and d!1495461 (not res!1985052)) b!4701532))

(assert (= (and b!4701532 res!1985053) b!4701533))

(assert (= (and b!4701533 res!1985054) b!4701528))

(declare-fun m!5617295 () Bool)

(assert (=> b!4701534 m!5617295))

(declare-fun m!5617297 () Bool)

(assert (=> b!4701532 m!5617297))

(declare-fun m!5617299 () Bool)

(assert (=> b!4701533 m!5617299))

(assert (=> b!4701528 m!5617299))

(assert (=> b!4701528 m!5617299))

(declare-fun m!5617301 () Bool)

(assert (=> b!4701528 m!5617301))

(declare-fun m!5617303 () Bool)

(assert (=> d!1495461 m!5617303))

(declare-fun m!5617305 () Bool)

(assert (=> d!1495461 m!5617305))

(declare-fun m!5617307 () Bool)

(assert (=> b!4701530 m!5617307))

(assert (=> b!4701178 d!1495461))

(declare-fun d!1495463 () Bool)

(assert (=> d!1495463 (containsKey!3169 oldBucket!34 key!4653)))

(declare-fun lt!1864642 () Unit!126240)

(declare-fun choose!32899 (List!52657 K!13895 Hashable!6267) Unit!126240)

(assert (=> d!1495463 (= lt!1864642 (choose!32899 oldBucket!34 key!4653 hashF!1323))))

(assert (=> d!1495463 (noDuplicateKeys!1898 oldBucket!34)))

(assert (=> d!1495463 (= (lemmaGetPairDefinedThenContainsKey!250 oldBucket!34 key!4653 hashF!1323) lt!1864642)))

(declare-fun bs!1095544 () Bool)

(assert (= bs!1095544 d!1495463))

(assert (=> bs!1095544 m!5616465))

(declare-fun m!5617317 () Bool)

(assert (=> bs!1095544 m!5617317))

(assert (=> bs!1095544 m!5616585))

(assert (=> b!4701178 d!1495463))

(declare-fun d!1495467 () Bool)

(declare-fun res!1985060 () Bool)

(declare-fun e!2932815 () Bool)

(assert (=> d!1495467 (=> res!1985060 e!2932815)))

(assert (=> d!1495467 (= res!1985060 (and ((_ is Cons!52533) (t!359869 oldBucket!34)) (= (_1!30287 (h!58814 (t!359869 oldBucket!34))) key!4653)))))

(assert (=> d!1495467 (= (containsKey!3169 (t!359869 oldBucket!34) key!4653) e!2932815)))

(declare-fun b!4701540 () Bool)

(declare-fun e!2932816 () Bool)

(assert (=> b!4701540 (= e!2932815 e!2932816)))

(declare-fun res!1985061 () Bool)

(assert (=> b!4701540 (=> (not res!1985061) (not e!2932816))))

(assert (=> b!4701540 (= res!1985061 ((_ is Cons!52533) (t!359869 oldBucket!34)))))

(declare-fun b!4701541 () Bool)

(assert (=> b!4701541 (= e!2932816 (containsKey!3169 (t!359869 (t!359869 oldBucket!34)) key!4653))))

(assert (= (and d!1495467 (not res!1985060)) b!4701540))

(assert (= (and b!4701540 res!1985061) b!4701541))

(declare-fun m!5617319 () Bool)

(assert (=> b!4701541 m!5617319))

(assert (=> b!4701178 d!1495467))

(declare-fun d!1495469 () Bool)

(declare-fun e!2932830 () Bool)

(assert (=> d!1495469 e!2932830))

(declare-fun res!1985074 () Bool)

(assert (=> d!1495469 (=> res!1985074 e!2932830)))

(declare-fun lt!1864663 () Bool)

(assert (=> d!1495469 (= res!1985074 (not lt!1864663))))

(declare-fun lt!1864665 () Bool)

(assert (=> d!1495469 (= lt!1864663 lt!1864665)))

(declare-fun lt!1864666 () Unit!126240)

(declare-fun e!2932829 () Unit!126240)

(assert (=> d!1495469 (= lt!1864666 e!2932829)))

(declare-fun c!803656 () Bool)

(assert (=> d!1495469 (= c!803656 lt!1864665)))

(declare-fun containsKey!3172 (List!52658 (_ BitVec 64)) Bool)

(assert (=> d!1495469 (= lt!1864665 (containsKey!3172 (toList!5686 lm!2023) lt!1864187))))

(assert (=> d!1495469 (= (contains!15813 lm!2023 lt!1864187) lt!1864663)))

(declare-fun b!4701558 () Bool)

(declare-fun lt!1864664 () Unit!126240)

(assert (=> b!4701558 (= e!2932829 lt!1864664)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1744 (List!52658 (_ BitVec 64)) Unit!126240)

(assert (=> b!4701558 (= lt!1864664 (lemmaContainsKeyImpliesGetValueByKeyDefined!1744 (toList!5686 lm!2023) lt!1864187))))

(declare-fun isDefined!9451 (Option!12196) Bool)

(assert (=> b!4701558 (isDefined!9451 (getValueByKey!1852 (toList!5686 lm!2023) lt!1864187))))

(declare-fun b!4701559 () Bool)

(declare-fun Unit!126303 () Unit!126240)

(assert (=> b!4701559 (= e!2932829 Unit!126303)))

(declare-fun b!4701560 () Bool)

(assert (=> b!4701560 (= e!2932830 (isDefined!9451 (getValueByKey!1852 (toList!5686 lm!2023) lt!1864187)))))

(assert (= (and d!1495469 c!803656) b!4701558))

(assert (= (and d!1495469 (not c!803656)) b!4701559))

(assert (= (and d!1495469 (not res!1985074)) b!4701560))

(declare-fun m!5617375 () Bool)

(assert (=> d!1495469 m!5617375))

(declare-fun m!5617377 () Bool)

(assert (=> b!4701558 m!5617377))

(declare-fun m!5617379 () Bool)

(assert (=> b!4701558 m!5617379))

(assert (=> b!4701558 m!5617379))

(declare-fun m!5617381 () Bool)

(assert (=> b!4701558 m!5617381))

(assert (=> b!4701560 m!5617379))

(assert (=> b!4701560 m!5617379))

(assert (=> b!4701560 m!5617381))

(assert (=> b!4701178 d!1495469))

(declare-fun d!1495481 () Bool)

(declare-fun res!1985075 () Bool)

(declare-fun e!2932831 () Bool)

(assert (=> d!1495481 (=> res!1985075 e!2932831)))

(assert (=> d!1495481 (= res!1985075 (and ((_ is Cons!52533) oldBucket!34) (= (_1!30287 (h!58814 oldBucket!34)) key!4653)))))

(assert (=> d!1495481 (= (containsKey!3169 oldBucket!34 key!4653) e!2932831)))

(declare-fun b!4701561 () Bool)

(declare-fun e!2932832 () Bool)

(assert (=> b!4701561 (= e!2932831 e!2932832)))

(declare-fun res!1985076 () Bool)

(assert (=> b!4701561 (=> (not res!1985076) (not e!2932832))))

(assert (=> b!4701561 (= res!1985076 ((_ is Cons!52533) oldBucket!34))))

(declare-fun b!4701562 () Bool)

(assert (=> b!4701562 (= e!2932832 (containsKey!3169 (t!359869 oldBucket!34) key!4653))))

(assert (= (and d!1495481 (not res!1985075)) b!4701561))

(assert (= (and b!4701561 res!1985076) b!4701562))

(assert (=> b!4701562 m!5616459))

(assert (=> b!4701178 d!1495481))

(declare-fun d!1495483 () Bool)

(assert (=> d!1495483 (= (isDefined!9448 (getPair!502 lt!1864166 key!4653)) (not (isEmpty!29129 (getPair!502 lt!1864166 key!4653))))))

(declare-fun bs!1095547 () Bool)

(assert (= bs!1095547 d!1495483))

(assert (=> bs!1095547 m!5616449))

(declare-fun m!5617389 () Bool)

(assert (=> bs!1095547 m!5617389))

(assert (=> b!4701178 d!1495483))

(declare-fun d!1495487 () Bool)

(declare-fun lt!1864669 () Bool)

(declare-fun content!9268 (List!52658) (InoxSet tuple2!53988))

(assert (=> d!1495487 (= lt!1864669 (select (content!9268 (toList!5686 lm!2023)) lt!1864175))))

(declare-fun e!2932837 () Bool)

(assert (=> d!1495487 (= lt!1864669 e!2932837)))

(declare-fun res!1985082 () Bool)

(assert (=> d!1495487 (=> (not res!1985082) (not e!2932837))))

(assert (=> d!1495487 (= res!1985082 ((_ is Cons!52534) (toList!5686 lm!2023)))))

(assert (=> d!1495487 (= (contains!15812 (toList!5686 lm!2023) lt!1864175) lt!1864669)))

(declare-fun b!4701567 () Bool)

(declare-fun e!2932838 () Bool)

(assert (=> b!4701567 (= e!2932837 e!2932838)))

(declare-fun res!1985081 () Bool)

(assert (=> b!4701567 (=> res!1985081 e!2932838)))

(assert (=> b!4701567 (= res!1985081 (= (h!58815 (toList!5686 lm!2023)) lt!1864175))))

(declare-fun b!4701568 () Bool)

(assert (=> b!4701568 (= e!2932838 (contains!15812 (t!359870 (toList!5686 lm!2023)) lt!1864175))))

(assert (= (and d!1495487 res!1985082) b!4701567))

(assert (= (and b!4701567 (not res!1985081)) b!4701568))

(declare-fun m!5617391 () Bool)

(assert (=> d!1495487 m!5617391))

(declare-fun m!5617393 () Bool)

(assert (=> d!1495487 m!5617393))

(declare-fun m!5617395 () Bool)

(assert (=> b!4701568 m!5617395))

(assert (=> b!4701178 d!1495487))

(declare-fun d!1495491 () Bool)

(declare-fun get!17586 (Option!12196) List!52657)

(assert (=> d!1495491 (= (apply!12381 lm!2023 lt!1864187) (get!17586 (getValueByKey!1852 (toList!5686 lm!2023) lt!1864187)))))

(declare-fun bs!1095548 () Bool)

(assert (= bs!1095548 d!1495491))

(assert (=> bs!1095548 m!5617379))

(assert (=> bs!1095548 m!5617379))

(declare-fun m!5617397 () Bool)

(assert (=> bs!1095548 m!5617397))

(assert (=> b!4701178 d!1495491))

(declare-fun d!1495493 () Bool)

(declare-fun res!1985083 () Bool)

(declare-fun e!2932839 () Bool)

(assert (=> d!1495493 (=> res!1985083 e!2932839)))

(assert (=> d!1495493 (= res!1985083 (not ((_ is Cons!52533) newBucket!218)))))

(assert (=> d!1495493 (= (noDuplicateKeys!1898 newBucket!218) e!2932839)))

(declare-fun b!4701569 () Bool)

(declare-fun e!2932840 () Bool)

(assert (=> b!4701569 (= e!2932839 e!2932840)))

(declare-fun res!1985084 () Bool)

(assert (=> b!4701569 (=> (not res!1985084) (not e!2932840))))

(assert (=> b!4701569 (= res!1985084 (not (containsKey!3169 (t!359869 newBucket!218) (_1!30287 (h!58814 newBucket!218)))))))

(declare-fun b!4701570 () Bool)

(assert (=> b!4701570 (= e!2932840 (noDuplicateKeys!1898 (t!359869 newBucket!218)))))

(assert (= (and d!1495493 (not res!1985083)) b!4701569))

(assert (= (and b!4701569 res!1985084) b!4701570))

(declare-fun m!5617399 () Bool)

(assert (=> b!4701569 m!5617399))

(declare-fun m!5617401 () Bool)

(assert (=> b!4701570 m!5617401))

(assert (=> b!4701188 d!1495493))

(declare-fun bs!1095549 () Bool)

(declare-fun d!1495495 () Bool)

(assert (= bs!1095549 (and d!1495495 d!1495361)))

(declare-fun lambda!210394 () Int)

(assert (=> bs!1095549 (= lambda!210394 lambda!210285)))

(declare-fun bs!1095550 () Bool)

(assert (= bs!1095550 (and d!1495495 d!1495363)))

(assert (=> bs!1095550 (not (= lambda!210394 lambda!210370))))

(declare-fun bs!1095551 () Bool)

(assert (= bs!1095551 (and d!1495495 b!4701445)))

(assert (=> bs!1095551 (not (= lambda!210394 lambda!210368))))

(declare-fun bs!1095552 () Bool)

(assert (= bs!1095552 (and d!1495495 b!4701444)))

(assert (=> bs!1095552 (not (= lambda!210394 lambda!210367))))

(assert (=> bs!1095551 (not (= lambda!210394 lambda!210369))))

(assert (=> d!1495495 true))

(assert (=> d!1495495 true))

(assert (=> d!1495495 (= (allKeysSameHash!1724 newBucket!218 hash!405 hashF!1323) (forall!11403 newBucket!218 lambda!210394))))

(declare-fun bs!1095553 () Bool)

(assert (= bs!1095553 d!1495495))

(declare-fun m!5617403 () Bool)

(assert (=> bs!1095553 m!5617403))

(assert (=> b!4701177 d!1495495))

(declare-fun d!1495497 () Bool)

(assert (=> d!1495497 (= (eq!1057 lt!1864189 lt!1864188) (= (content!9267 (toList!5685 lt!1864189)) (content!9267 (toList!5685 lt!1864188))))))

(declare-fun bs!1095554 () Bool)

(assert (= bs!1095554 d!1495497))

(declare-fun m!5617405 () Bool)

(assert (=> bs!1095554 m!5617405))

(declare-fun m!5617407 () Bool)

(assert (=> bs!1095554 m!5617407))

(assert (=> b!4701187 d!1495497))

(declare-fun d!1495499 () Bool)

(assert (=> d!1495499 (= (eq!1057 lt!1864188 (+!2182 lt!1864181 lt!1864171)) (= (content!9267 (toList!5685 lt!1864188)) (content!9267 (toList!5685 (+!2182 lt!1864181 lt!1864171)))))))

(declare-fun bs!1095555 () Bool)

(assert (= bs!1095555 d!1495499))

(assert (=> bs!1095555 m!5617407))

(declare-fun m!5617409 () Bool)

(assert (=> bs!1095555 m!5617409))

(assert (=> b!4701176 d!1495499))

(declare-fun d!1495501 () Bool)

(declare-fun e!2932841 () Bool)

(assert (=> d!1495501 e!2932841))

(declare-fun res!1985085 () Bool)

(assert (=> d!1495501 (=> (not res!1985085) (not e!2932841))))

(declare-fun lt!1864672 () ListMap!5049)

(assert (=> d!1495501 (= res!1985085 (contains!15814 lt!1864672 (_1!30287 lt!1864171)))))

(declare-fun lt!1864673 () List!52657)

(assert (=> d!1495501 (= lt!1864672 (ListMap!5050 lt!1864673))))

(declare-fun lt!1864671 () Unit!126240)

(declare-fun lt!1864670 () Unit!126240)

(assert (=> d!1495501 (= lt!1864671 lt!1864670)))

(assert (=> d!1495501 (= (getValueByKey!1851 lt!1864673 (_1!30287 lt!1864171)) (Some!12194 (_2!30287 lt!1864171)))))

(assert (=> d!1495501 (= lt!1864670 (lemmaContainsTupThenGetReturnValue!1036 lt!1864673 (_1!30287 lt!1864171) (_2!30287 lt!1864171)))))

(assert (=> d!1495501 (= lt!1864673 (insertNoDuplicatedKeys!544 (toList!5685 lt!1864181) (_1!30287 lt!1864171) (_2!30287 lt!1864171)))))

(assert (=> d!1495501 (= (+!2182 lt!1864181 lt!1864171) lt!1864672)))

(declare-fun b!4701571 () Bool)

(declare-fun res!1985086 () Bool)

(assert (=> b!4701571 (=> (not res!1985086) (not e!2932841))))

(assert (=> b!4701571 (= res!1985086 (= (getValueByKey!1851 (toList!5685 lt!1864672) (_1!30287 lt!1864171)) (Some!12194 (_2!30287 lt!1864171))))))

(declare-fun b!4701572 () Bool)

(assert (=> b!4701572 (= e!2932841 (contains!15817 (toList!5685 lt!1864672) lt!1864171))))

(assert (= (and d!1495501 res!1985085) b!4701571))

(assert (= (and b!4701571 res!1985086) b!4701572))

(declare-fun m!5617411 () Bool)

(assert (=> d!1495501 m!5617411))

(declare-fun m!5617413 () Bool)

(assert (=> d!1495501 m!5617413))

(declare-fun m!5617415 () Bool)

(assert (=> d!1495501 m!5617415))

(declare-fun m!5617417 () Bool)

(assert (=> d!1495501 m!5617417))

(declare-fun m!5617419 () Bool)

(assert (=> b!4701571 m!5617419))

(declare-fun m!5617421 () Bool)

(assert (=> b!4701572 m!5617421))

(assert (=> b!4701176 d!1495501))

(declare-fun d!1495503 () Bool)

(declare-fun lt!1864674 () List!52657)

(assert (=> d!1495503 (not (containsKey!3169 lt!1864674 key!4653))))

(declare-fun e!2932842 () List!52657)

(assert (=> d!1495503 (= lt!1864674 e!2932842)))

(declare-fun c!803657 () Bool)

(assert (=> d!1495503 (= c!803657 (and ((_ is Cons!52533) oldBucket!34) (= (_1!30287 (h!58814 oldBucket!34)) key!4653)))))

(assert (=> d!1495503 (noDuplicateKeys!1898 oldBucket!34)))

(assert (=> d!1495503 (= (removePairForKey!1493 oldBucket!34 key!4653) lt!1864674)))

(declare-fun b!4701576 () Bool)

(declare-fun e!2932843 () List!52657)

(assert (=> b!4701576 (= e!2932843 Nil!52533)))

(declare-fun b!4701573 () Bool)

(assert (=> b!4701573 (= e!2932842 (t!359869 oldBucket!34))))

(declare-fun b!4701574 () Bool)

(assert (=> b!4701574 (= e!2932842 e!2932843)))

(declare-fun c!803658 () Bool)

(assert (=> b!4701574 (= c!803658 ((_ is Cons!52533) oldBucket!34))))

(declare-fun b!4701575 () Bool)

(assert (=> b!4701575 (= e!2932843 (Cons!52533 (h!58814 oldBucket!34) (removePairForKey!1493 (t!359869 oldBucket!34) key!4653)))))

(assert (= (and d!1495503 c!803657) b!4701573))

(assert (= (and d!1495503 (not c!803657)) b!4701574))

(assert (= (and b!4701574 c!803658) b!4701575))

(assert (= (and b!4701574 (not c!803658)) b!4701576))

(declare-fun m!5617423 () Bool)

(assert (=> d!1495503 m!5617423))

(assert (=> d!1495503 m!5616585))

(assert (=> b!4701575 m!5616519))

(assert (=> b!4701186 d!1495503))

(declare-fun d!1495505 () Bool)

(assert (=> d!1495505 (= (eq!1057 lt!1864179 (+!2182 lt!1864162 (h!58814 oldBucket!34))) (= (content!9267 (toList!5685 lt!1864179)) (content!9267 (toList!5685 (+!2182 lt!1864162 (h!58814 oldBucket!34))))))))

(declare-fun bs!1095556 () Bool)

(assert (= bs!1095556 d!1495505))

(assert (=> bs!1095556 m!5616753))

(declare-fun m!5617425 () Bool)

(assert (=> bs!1095556 m!5617425))

(assert (=> b!4701175 d!1495505))

(declare-fun d!1495507 () Bool)

(declare-fun e!2932844 () Bool)

(assert (=> d!1495507 e!2932844))

(declare-fun res!1985087 () Bool)

(assert (=> d!1495507 (=> (not res!1985087) (not e!2932844))))

(declare-fun lt!1864677 () ListMap!5049)

(assert (=> d!1495507 (= res!1985087 (contains!15814 lt!1864677 (_1!30287 (h!58814 oldBucket!34))))))

(declare-fun lt!1864678 () List!52657)

(assert (=> d!1495507 (= lt!1864677 (ListMap!5050 lt!1864678))))

(declare-fun lt!1864676 () Unit!126240)

(declare-fun lt!1864675 () Unit!126240)

(assert (=> d!1495507 (= lt!1864676 lt!1864675)))

(assert (=> d!1495507 (= (getValueByKey!1851 lt!1864678 (_1!30287 (h!58814 oldBucket!34))) (Some!12194 (_2!30287 (h!58814 oldBucket!34))))))

(assert (=> d!1495507 (= lt!1864675 (lemmaContainsTupThenGetReturnValue!1036 lt!1864678 (_1!30287 (h!58814 oldBucket!34)) (_2!30287 (h!58814 oldBucket!34))))))

(assert (=> d!1495507 (= lt!1864678 (insertNoDuplicatedKeys!544 (toList!5685 lt!1864162) (_1!30287 (h!58814 oldBucket!34)) (_2!30287 (h!58814 oldBucket!34))))))

(assert (=> d!1495507 (= (+!2182 lt!1864162 (h!58814 oldBucket!34)) lt!1864677)))

(declare-fun b!4701577 () Bool)

(declare-fun res!1985088 () Bool)

(assert (=> b!4701577 (=> (not res!1985088) (not e!2932844))))

(assert (=> b!4701577 (= res!1985088 (= (getValueByKey!1851 (toList!5685 lt!1864677) (_1!30287 (h!58814 oldBucket!34))) (Some!12194 (_2!30287 (h!58814 oldBucket!34)))))))

(declare-fun b!4701578 () Bool)

(assert (=> b!4701578 (= e!2932844 (contains!15817 (toList!5685 lt!1864677) (h!58814 oldBucket!34)))))

(assert (= (and d!1495507 res!1985087) b!4701577))

(assert (= (and b!4701577 res!1985088) b!4701578))

(declare-fun m!5617427 () Bool)

(assert (=> d!1495507 m!5617427))

(declare-fun m!5617429 () Bool)

(assert (=> d!1495507 m!5617429))

(declare-fun m!5617431 () Bool)

(assert (=> d!1495507 m!5617431))

(declare-fun m!5617433 () Bool)

(assert (=> d!1495507 m!5617433))

(declare-fun m!5617435 () Bool)

(assert (=> b!4701577 m!5617435))

(declare-fun m!5617437 () Bool)

(assert (=> b!4701578 m!5617437))

(assert (=> b!4701175 d!1495507))

(declare-fun d!1495509 () Bool)

(assert (=> d!1495509 (= (eq!1057 lt!1864169 (+!2182 lt!1864162 (h!58814 oldBucket!34))) (= (content!9267 (toList!5685 lt!1864169)) (content!9267 (toList!5685 (+!2182 lt!1864162 (h!58814 oldBucket!34))))))))

(declare-fun bs!1095557 () Bool)

(assert (= bs!1095557 d!1495509))

(declare-fun m!5617439 () Bool)

(assert (=> bs!1095557 m!5617439))

(assert (=> bs!1095557 m!5617425))

(assert (=> b!4701175 d!1495509))

(declare-fun d!1495511 () Bool)

(assert (=> d!1495511 (eq!1057 (+!2182 lt!1864173 (tuple2!53987 (_1!30287 (h!58814 oldBucket!34)) (_2!30287 (h!58814 oldBucket!34)))) (+!2182 lt!1864162 (tuple2!53987 (_1!30287 (h!58814 oldBucket!34)) (_2!30287 (h!58814 oldBucket!34)))))))

(declare-fun lt!1864683 () Unit!126240)

(declare-fun choose!32901 (ListMap!5049 ListMap!5049 K!13895 V!14141) Unit!126240)

(assert (=> d!1495511 (= lt!1864683 (choose!32901 lt!1864173 lt!1864162 (_1!30287 (h!58814 oldBucket!34)) (_2!30287 (h!58814 oldBucket!34))))))

(assert (=> d!1495511 (eq!1057 lt!1864173 lt!1864162)))

(assert (=> d!1495511 (= (lemmaAddToEqMapsPreservesEq!80 lt!1864173 lt!1864162 (_1!30287 (h!58814 oldBucket!34)) (_2!30287 (h!58814 oldBucket!34))) lt!1864683)))

(declare-fun bs!1095558 () Bool)

(assert (= bs!1095558 d!1495511))

(declare-fun m!5617441 () Bool)

(assert (=> bs!1095558 m!5617441))

(declare-fun m!5617443 () Bool)

(assert (=> bs!1095558 m!5617443))

(declare-fun m!5617445 () Bool)

(assert (=> bs!1095558 m!5617445))

(declare-fun m!5617447 () Bool)

(assert (=> bs!1095558 m!5617447))

(assert (=> bs!1095558 m!5617445))

(assert (=> bs!1095558 m!5617441))

(declare-fun m!5617449 () Bool)

(assert (=> bs!1095558 m!5617449))

(assert (=> b!4701175 d!1495511))

(declare-fun bs!1095569 () Bool)

(declare-fun d!1495513 () Bool)

(assert (= bs!1095569 (and d!1495513 d!1495297)))

(declare-fun lambda!210400 () Int)

(assert (=> bs!1095569 (not (= lambda!210400 lambda!210270))))

(declare-fun bs!1095570 () Bool)

(assert (= bs!1095570 (and d!1495513 d!1495301)))

(assert (=> bs!1095570 (not (= lambda!210400 lambda!210271))))

(declare-fun bs!1095571 () Bool)

(assert (= bs!1095571 (and d!1495513 d!1495353)))

(assert (=> bs!1095571 (not (= lambda!210400 lambda!210282))))

(declare-fun bs!1095572 () Bool)

(assert (= bs!1095572 (and d!1495513 d!1495303)))

(assert (=> bs!1095572 (not (= lambda!210400 lambda!210272))))

(declare-fun bs!1095573 () Bool)

(assert (= bs!1095573 (and d!1495513 d!1495425)))

(assert (=> bs!1095573 (not (= lambda!210400 lambda!210371))))

(declare-fun bs!1095574 () Bool)

(assert (= bs!1095574 (and d!1495513 start!476836)))

(assert (=> bs!1095574 (not (= lambda!210400 lambda!210267))))

(declare-fun bs!1095575 () Bool)

(assert (= bs!1095575 (and d!1495513 d!1495437)))

(assert (=> bs!1095575 (not (= lambda!210400 lambda!210393))))

(declare-fun bs!1095577 () Bool)

(assert (= bs!1095577 (and d!1495513 d!1495317)))

(assert (=> bs!1095577 (not (= lambda!210400 lambda!210281))))

(declare-fun bs!1095578 () Bool)

(assert (= bs!1095578 (and d!1495513 d!1495435)))

(assert (=> bs!1095578 (not (= lambda!210400 lambda!210374))))

(assert (=> d!1495513 true))

(assert (=> d!1495513 (= (allKeysSameHashInMap!1812 lm!2023 hashF!1323) (forall!11401 (toList!5686 lm!2023) lambda!210400))))

(declare-fun bs!1095579 () Bool)

(assert (= bs!1095579 d!1495513))

(declare-fun m!5617469 () Bool)

(assert (=> bs!1095579 m!5617469))

(assert (=> b!4701185 d!1495513))

(declare-fun d!1495521 () Bool)

(assert (=> d!1495521 (= (eq!1057 (addToMapMapFromBucket!1330 (Cons!52533 lt!1864184 lt!1864183) lt!1864193) (+!2182 (addToMapMapFromBucket!1330 lt!1864183 lt!1864193) lt!1864184)) (= (content!9267 (toList!5685 (addToMapMapFromBucket!1330 (Cons!52533 lt!1864184 lt!1864183) lt!1864193))) (content!9267 (toList!5685 (+!2182 (addToMapMapFromBucket!1330 lt!1864183 lt!1864193) lt!1864184)))))))

(declare-fun bs!1095581 () Bool)

(assert (= bs!1095581 d!1495521))

(declare-fun m!5617471 () Bool)

(assert (=> bs!1095581 m!5617471))

(declare-fun m!5617473 () Bool)

(assert (=> bs!1095581 m!5617473))

(assert (=> b!4701195 d!1495521))

(declare-fun bs!1095585 () Bool)

(declare-fun d!1495523 () Bool)

(assert (= bs!1095585 (and d!1495523 d!1495297)))

(declare-fun lambda!210402 () Int)

(assert (=> bs!1095585 (= lambda!210402 lambda!210270)))

(declare-fun bs!1095588 () Bool)

(assert (= bs!1095588 (and d!1495523 d!1495301)))

(assert (=> bs!1095588 (= lambda!210402 lambda!210271)))

(declare-fun bs!1095591 () Bool)

(assert (= bs!1095591 (and d!1495523 d!1495353)))

(assert (=> bs!1095591 (= lambda!210402 lambda!210282)))

(declare-fun bs!1095594 () Bool)

(assert (= bs!1095594 (and d!1495523 d!1495303)))

(assert (=> bs!1095594 (= lambda!210402 lambda!210272)))

(declare-fun bs!1095595 () Bool)

(assert (= bs!1095595 (and d!1495523 d!1495425)))

(assert (=> bs!1095595 (= lambda!210402 lambda!210371)))

(declare-fun bs!1095596 () Bool)

(assert (= bs!1095596 (and d!1495523 start!476836)))

(assert (=> bs!1095596 (= lambda!210402 lambda!210267)))

(declare-fun bs!1095597 () Bool)

(assert (= bs!1095597 (and d!1495523 d!1495437)))

(assert (=> bs!1095597 (= lambda!210402 lambda!210393)))

(declare-fun bs!1095598 () Bool)

(assert (= bs!1095598 (and d!1495523 d!1495513)))

(assert (=> bs!1095598 (not (= lambda!210402 lambda!210400))))

(declare-fun bs!1095599 () Bool)

(assert (= bs!1095599 (and d!1495523 d!1495317)))

(assert (=> bs!1095599 (= lambda!210402 lambda!210281)))

(declare-fun bs!1095600 () Bool)

(assert (= bs!1095600 (and d!1495523 d!1495435)))

(assert (=> bs!1095600 (= lambda!210402 lambda!210374)))

(declare-fun lt!1864686 () ListMap!5049)

(assert (=> d!1495523 (invariantList!1446 (toList!5685 lt!1864686))))

(declare-fun e!2932846 () ListMap!5049)

(assert (=> d!1495523 (= lt!1864686 e!2932846)))

(declare-fun c!803660 () Bool)

(assert (=> d!1495523 (= c!803660 ((_ is Cons!52534) lt!1864176))))

(assert (=> d!1495523 (forall!11401 lt!1864176 lambda!210402)))

(assert (=> d!1495523 (= (extractMap!1924 lt!1864176) lt!1864686)))

(declare-fun b!4701583 () Bool)

(assert (=> b!4701583 (= e!2932846 (addToMapMapFromBucket!1330 (_2!30288 (h!58815 lt!1864176)) (extractMap!1924 (t!359870 lt!1864176))))))

(declare-fun b!4701584 () Bool)

(assert (=> b!4701584 (= e!2932846 (ListMap!5050 Nil!52533))))

(assert (= (and d!1495523 c!803660) b!4701583))

(assert (= (and d!1495523 (not c!803660)) b!4701584))

(declare-fun m!5617483 () Bool)

(assert (=> d!1495523 m!5617483))

(declare-fun m!5617485 () Bool)

(assert (=> d!1495523 m!5617485))

(declare-fun m!5617487 () Bool)

(assert (=> b!4701583 m!5617487))

(assert (=> b!4701583 m!5617487))

(declare-fun m!5617489 () Bool)

(assert (=> b!4701583 m!5617489))

(assert (=> b!4701195 d!1495523))

(declare-fun d!1495527 () Bool)

(assert (=> d!1495527 (eq!1057 (addToMapMapFromBucket!1330 (Cons!52533 lt!1864184 lt!1864183) lt!1864193) (+!2182 (addToMapMapFromBucket!1330 lt!1864183 lt!1864193) lt!1864184))))

(declare-fun lt!1864697 () Unit!126240)

(declare-fun choose!32905 (tuple2!53986 List!52657 ListMap!5049) Unit!126240)

(assert (=> d!1495527 (= lt!1864697 (choose!32905 lt!1864184 lt!1864183 lt!1864193))))

(assert (=> d!1495527 (noDuplicateKeys!1898 lt!1864183)))

(assert (=> d!1495527 (= (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!306 lt!1864184 lt!1864183 lt!1864193) lt!1864697)))

(declare-fun bs!1095651 () Bool)

(assert (= bs!1095651 d!1495527))

(declare-fun m!5617549 () Bool)

(assert (=> bs!1095651 m!5617549))

(assert (=> bs!1095651 m!5616555))

(assert (=> bs!1095651 m!5616561))

(assert (=> bs!1095651 m!5616565))

(assert (=> bs!1095651 m!5616567))

(assert (=> bs!1095651 m!5616561))

(assert (=> bs!1095651 m!5616845))

(assert (=> bs!1095651 m!5616555))

(assert (=> bs!1095651 m!5616565))

(assert (=> b!4701195 d!1495527))

(declare-fun d!1495549 () Bool)

(assert (=> d!1495549 (= (head!10060 oldBucket!34) (h!58814 oldBucket!34))))

(assert (=> b!4701195 d!1495549))

(declare-fun d!1495551 () Bool)

(assert (=> d!1495551 (eq!1057 (addToMapMapFromBucket!1330 (Cons!52533 lt!1864171 lt!1864192) lt!1864193) (+!2182 (addToMapMapFromBucket!1330 lt!1864192 lt!1864193) lt!1864171))))

(declare-fun lt!1864698 () Unit!126240)

(assert (=> d!1495551 (= lt!1864698 (choose!32905 lt!1864171 lt!1864192 lt!1864193))))

(assert (=> d!1495551 (noDuplicateKeys!1898 lt!1864192)))

(assert (=> d!1495551 (= (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!306 lt!1864171 lt!1864192 lt!1864193) lt!1864698)))

(declare-fun bs!1095658 () Bool)

(assert (= bs!1095658 d!1495551))

(declare-fun m!5617553 () Bool)

(assert (=> bs!1095658 m!5617553))

(assert (=> bs!1095658 m!5616563))

(assert (=> bs!1095658 m!5616557))

(assert (=> bs!1095658 m!5616575))

(assert (=> bs!1095658 m!5616577))

(assert (=> bs!1095658 m!5616557))

(declare-fun m!5617555 () Bool)

(assert (=> bs!1095658 m!5617555))

(assert (=> bs!1095658 m!5616563))

(assert (=> bs!1095658 m!5616575))

(assert (=> b!4701195 d!1495551))

(declare-fun d!1495553 () Bool)

(declare-fun e!2932856 () Bool)

(assert (=> d!1495553 e!2932856))

(declare-fun res!1985095 () Bool)

(assert (=> d!1495553 (=> (not res!1985095) (not e!2932856))))

(declare-fun lt!1864701 () ListMap!5049)

(assert (=> d!1495553 (= res!1985095 (contains!15814 lt!1864701 (_1!30287 (h!58814 oldBucket!34))))))

(declare-fun lt!1864702 () List!52657)

(assert (=> d!1495553 (= lt!1864701 (ListMap!5050 lt!1864702))))

(declare-fun lt!1864700 () Unit!126240)

(declare-fun lt!1864699 () Unit!126240)

(assert (=> d!1495553 (= lt!1864700 lt!1864699)))

(assert (=> d!1495553 (= (getValueByKey!1851 lt!1864702 (_1!30287 (h!58814 oldBucket!34))) (Some!12194 (_2!30287 (h!58814 oldBucket!34))))))

(assert (=> d!1495553 (= lt!1864699 (lemmaContainsTupThenGetReturnValue!1036 lt!1864702 (_1!30287 (h!58814 oldBucket!34)) (_2!30287 (h!58814 oldBucket!34))))))

(assert (=> d!1495553 (= lt!1864702 (insertNoDuplicatedKeys!544 (toList!5685 lt!1864181) (_1!30287 (h!58814 oldBucket!34)) (_2!30287 (h!58814 oldBucket!34))))))

(assert (=> d!1495553 (= (+!2182 lt!1864181 (h!58814 oldBucket!34)) lt!1864701)))

(declare-fun b!4701601 () Bool)

(declare-fun res!1985096 () Bool)

(assert (=> b!4701601 (=> (not res!1985096) (not e!2932856))))

(assert (=> b!4701601 (= res!1985096 (= (getValueByKey!1851 (toList!5685 lt!1864701) (_1!30287 (h!58814 oldBucket!34))) (Some!12194 (_2!30287 (h!58814 oldBucket!34)))))))

(declare-fun b!4701602 () Bool)

(assert (=> b!4701602 (= e!2932856 (contains!15817 (toList!5685 lt!1864701) (h!58814 oldBucket!34)))))

(assert (= (and d!1495553 res!1985095) b!4701601))

(assert (= (and b!4701601 res!1985096) b!4701602))

(declare-fun m!5617557 () Bool)

(assert (=> d!1495553 m!5617557))

(declare-fun m!5617559 () Bool)

(assert (=> d!1495553 m!5617559))

(declare-fun m!5617561 () Bool)

(assert (=> d!1495553 m!5617561))

(declare-fun m!5617563 () Bool)

(assert (=> d!1495553 m!5617563))

(declare-fun m!5617565 () Bool)

(assert (=> b!4701601 m!5617565))

(declare-fun m!5617567 () Bool)

(assert (=> b!4701602 m!5617567))

(assert (=> b!4701195 d!1495553))

(declare-fun bs!1095659 () Bool)

(declare-fun d!1495555 () Bool)

(assert (= bs!1095659 (and d!1495555 d!1495297)))

(declare-fun lambda!210409 () Int)

(assert (=> bs!1095659 (= lambda!210409 lambda!210270)))

(declare-fun bs!1095660 () Bool)

(assert (= bs!1095660 (and d!1495555 d!1495301)))

(assert (=> bs!1095660 (= lambda!210409 lambda!210271)))

(declare-fun bs!1095661 () Bool)

(assert (= bs!1095661 (and d!1495555 d!1495353)))

(assert (=> bs!1095661 (= lambda!210409 lambda!210282)))

(declare-fun bs!1095663 () Bool)

(assert (= bs!1095663 (and d!1495555 d!1495303)))

(assert (=> bs!1095663 (= lambda!210409 lambda!210272)))

(declare-fun bs!1095664 () Bool)

(assert (= bs!1095664 (and d!1495555 d!1495523)))

(assert (=> bs!1095664 (= lambda!210409 lambda!210402)))

(declare-fun bs!1095666 () Bool)

(assert (= bs!1095666 (and d!1495555 d!1495425)))

(assert (=> bs!1095666 (= lambda!210409 lambda!210371)))

(declare-fun bs!1095668 () Bool)

(assert (= bs!1095668 (and d!1495555 start!476836)))

(assert (=> bs!1095668 (= lambda!210409 lambda!210267)))

(declare-fun bs!1095669 () Bool)

(assert (= bs!1095669 (and d!1495555 d!1495437)))

(assert (=> bs!1095669 (= lambda!210409 lambda!210393)))

(declare-fun bs!1095670 () Bool)

(assert (= bs!1095670 (and d!1495555 d!1495513)))

(assert (=> bs!1095670 (not (= lambda!210409 lambda!210400))))

(declare-fun bs!1095671 () Bool)

(assert (= bs!1095671 (and d!1495555 d!1495317)))

(assert (=> bs!1095671 (= lambda!210409 lambda!210281)))

(declare-fun bs!1095672 () Bool)

(assert (= bs!1095672 (and d!1495555 d!1495435)))

(assert (=> bs!1095672 (= lambda!210409 lambda!210374)))

(declare-fun lt!1864703 () ListMap!5049)

(assert (=> d!1495555 (invariantList!1446 (toList!5685 lt!1864703))))

(declare-fun e!2932861 () ListMap!5049)

(assert (=> d!1495555 (= lt!1864703 e!2932861)))

(declare-fun c!803663 () Bool)

(assert (=> d!1495555 (= c!803663 ((_ is Cons!52534) (Cons!52534 (tuple2!53989 hash!405 lt!1864183) (t!359870 (toList!5686 lm!2023)))))))

(assert (=> d!1495555 (forall!11401 (Cons!52534 (tuple2!53989 hash!405 lt!1864183) (t!359870 (toList!5686 lm!2023))) lambda!210409)))

(assert (=> d!1495555 (= (extractMap!1924 (Cons!52534 (tuple2!53989 hash!405 lt!1864183) (t!359870 (toList!5686 lm!2023)))) lt!1864703)))

(declare-fun b!4701609 () Bool)

(assert (=> b!4701609 (= e!2932861 (addToMapMapFromBucket!1330 (_2!30288 (h!58815 (Cons!52534 (tuple2!53989 hash!405 lt!1864183) (t!359870 (toList!5686 lm!2023))))) (extractMap!1924 (t!359870 (Cons!52534 (tuple2!53989 hash!405 lt!1864183) (t!359870 (toList!5686 lm!2023)))))))))

(declare-fun b!4701610 () Bool)

(assert (=> b!4701610 (= e!2932861 (ListMap!5050 Nil!52533))))

(assert (= (and d!1495555 c!803663) b!4701609))

(assert (= (and d!1495555 (not c!803663)) b!4701610))

(declare-fun m!5617573 () Bool)

(assert (=> d!1495555 m!5617573))

(declare-fun m!5617575 () Bool)

(assert (=> d!1495555 m!5617575))

(declare-fun m!5617577 () Bool)

(assert (=> b!4701609 m!5617577))

(assert (=> b!4701609 m!5617577))

(declare-fun m!5617579 () Bool)

(assert (=> b!4701609 m!5617579))

(assert (=> b!4701195 d!1495555))

(declare-fun d!1495563 () Bool)

(declare-fun e!2932863 () Bool)

(assert (=> d!1495563 e!2932863))

(declare-fun res!1985097 () Bool)

(assert (=> d!1495563 (=> (not res!1985097) (not e!2932863))))

(declare-fun lt!1864706 () ListMap!5049)

(assert (=> d!1495563 (= res!1985097 (contains!15814 lt!1864706 (_1!30287 lt!1864171)))))

(declare-fun lt!1864707 () List!52657)

(assert (=> d!1495563 (= lt!1864706 (ListMap!5050 lt!1864707))))

(declare-fun lt!1864705 () Unit!126240)

(declare-fun lt!1864704 () Unit!126240)

(assert (=> d!1495563 (= lt!1864705 lt!1864704)))

(assert (=> d!1495563 (= (getValueByKey!1851 lt!1864707 (_1!30287 lt!1864171)) (Some!12194 (_2!30287 lt!1864171)))))

(assert (=> d!1495563 (= lt!1864704 (lemmaContainsTupThenGetReturnValue!1036 lt!1864707 (_1!30287 lt!1864171) (_2!30287 lt!1864171)))))

(assert (=> d!1495563 (= lt!1864707 (insertNoDuplicatedKeys!544 (toList!5685 (addToMapMapFromBucket!1330 lt!1864192 lt!1864193)) (_1!30287 lt!1864171) (_2!30287 lt!1864171)))))

(assert (=> d!1495563 (= (+!2182 (addToMapMapFromBucket!1330 lt!1864192 lt!1864193) lt!1864171) lt!1864706)))

(declare-fun b!4701612 () Bool)

(declare-fun res!1985098 () Bool)

(assert (=> b!4701612 (=> (not res!1985098) (not e!2932863))))

(assert (=> b!4701612 (= res!1985098 (= (getValueByKey!1851 (toList!5685 lt!1864706) (_1!30287 lt!1864171)) (Some!12194 (_2!30287 lt!1864171))))))

(declare-fun b!4701613 () Bool)

(assert (=> b!4701613 (= e!2932863 (contains!15817 (toList!5685 lt!1864706) lt!1864171))))

(assert (= (and d!1495563 res!1985097) b!4701612))

(assert (= (and b!4701612 res!1985098) b!4701613))

(declare-fun m!5617581 () Bool)

(assert (=> d!1495563 m!5617581))

(declare-fun m!5617583 () Bool)

(assert (=> d!1495563 m!5617583))

(declare-fun m!5617585 () Bool)

(assert (=> d!1495563 m!5617585))

(declare-fun m!5617587 () Bool)

(assert (=> d!1495563 m!5617587))

(declare-fun m!5617589 () Bool)

(assert (=> b!4701612 m!5617589))

(declare-fun m!5617591 () Bool)

(assert (=> b!4701613 m!5617591))

(assert (=> b!4701195 d!1495563))

(declare-fun bs!1095673 () Bool)

(declare-fun b!4701615 () Bool)

(assert (= bs!1095673 (and b!4701615 d!1495495)))

(declare-fun lambda!210410 () Int)

(assert (=> bs!1095673 (not (= lambda!210410 lambda!210394))))

(declare-fun bs!1095674 () Bool)

(assert (= bs!1095674 (and b!4701615 d!1495361)))

(assert (=> bs!1095674 (not (= lambda!210410 lambda!210285))))

(declare-fun bs!1095675 () Bool)

(assert (= bs!1095675 (and b!4701615 d!1495363)))

(assert (=> bs!1095675 (= (= lt!1864193 lt!1864532) (= lambda!210410 lambda!210370))))

(declare-fun bs!1095676 () Bool)

(assert (= bs!1095676 (and b!4701615 b!4701445)))

(assert (=> bs!1095676 (= lambda!210410 lambda!210368)))

(declare-fun bs!1095677 () Bool)

(assert (= bs!1095677 (and b!4701615 b!4701444)))

(assert (=> bs!1095677 (= lambda!210410 lambda!210367)))

(assert (=> bs!1095676 (= (= lt!1864193 lt!1864527) (= lambda!210410 lambda!210369))))

(assert (=> b!4701615 true))

(declare-fun bs!1095678 () Bool)

(declare-fun b!4701616 () Bool)

(assert (= bs!1095678 (and b!4701616 d!1495495)))

(declare-fun lambda!210411 () Int)

(assert (=> bs!1095678 (not (= lambda!210411 lambda!210394))))

(declare-fun bs!1095679 () Bool)

(assert (= bs!1095679 (and b!4701616 b!4701615)))

(assert (=> bs!1095679 (= lambda!210411 lambda!210410)))

(declare-fun bs!1095680 () Bool)

(assert (= bs!1095680 (and b!4701616 d!1495361)))

(assert (=> bs!1095680 (not (= lambda!210411 lambda!210285))))

(declare-fun bs!1095681 () Bool)

(assert (= bs!1095681 (and b!4701616 d!1495363)))

(assert (=> bs!1095681 (= (= lt!1864193 lt!1864532) (= lambda!210411 lambda!210370))))

(declare-fun bs!1095682 () Bool)

(assert (= bs!1095682 (and b!4701616 b!4701445)))

(assert (=> bs!1095682 (= lambda!210411 lambda!210368)))

(declare-fun bs!1095683 () Bool)

(assert (= bs!1095683 (and b!4701616 b!4701444)))

(assert (=> bs!1095683 (= lambda!210411 lambda!210367)))

(assert (=> bs!1095682 (= (= lt!1864193 lt!1864527) (= lambda!210411 lambda!210369))))

(assert (=> b!4701616 true))

(declare-fun lambda!210412 () Int)

(assert (=> bs!1095678 (not (= lambda!210412 lambda!210394))))

(declare-fun lt!1864716 () ListMap!5049)

(assert (=> bs!1095679 (= (= lt!1864716 lt!1864193) (= lambda!210412 lambda!210410))))

(assert (=> bs!1095680 (not (= lambda!210412 lambda!210285))))

(assert (=> bs!1095681 (= (= lt!1864716 lt!1864532) (= lambda!210412 lambda!210370))))

(assert (=> bs!1095682 (= (= lt!1864716 lt!1864193) (= lambda!210412 lambda!210368))))

(assert (=> b!4701616 (= (= lt!1864716 lt!1864193) (= lambda!210412 lambda!210411))))

(assert (=> bs!1095683 (= (= lt!1864716 lt!1864193) (= lambda!210412 lambda!210367))))

(assert (=> bs!1095682 (= (= lt!1864716 lt!1864527) (= lambda!210412 lambda!210369))))

(assert (=> b!4701616 true))

(declare-fun bs!1095684 () Bool)

(declare-fun d!1495565 () Bool)

(assert (= bs!1095684 (and d!1495565 d!1495495)))

(declare-fun lambda!210413 () Int)

(assert (=> bs!1095684 (not (= lambda!210413 lambda!210394))))

(declare-fun bs!1095685 () Bool)

(assert (= bs!1095685 (and d!1495565 b!4701615)))

(declare-fun lt!1864721 () ListMap!5049)

(assert (=> bs!1095685 (= (= lt!1864721 lt!1864193) (= lambda!210413 lambda!210410))))

(declare-fun bs!1095686 () Bool)

(assert (= bs!1095686 (and d!1495565 d!1495361)))

(assert (=> bs!1095686 (not (= lambda!210413 lambda!210285))))

(declare-fun bs!1095687 () Bool)

(assert (= bs!1095687 (and d!1495565 b!4701445)))

(assert (=> bs!1095687 (= (= lt!1864721 lt!1864193) (= lambda!210413 lambda!210368))))

(declare-fun bs!1095688 () Bool)

(assert (= bs!1095688 (and d!1495565 b!4701616)))

(assert (=> bs!1095688 (= (= lt!1864721 lt!1864193) (= lambda!210413 lambda!210411))))

(declare-fun bs!1095689 () Bool)

(assert (= bs!1095689 (and d!1495565 b!4701444)))

(assert (=> bs!1095689 (= (= lt!1864721 lt!1864193) (= lambda!210413 lambda!210367))))

(assert (=> bs!1095687 (= (= lt!1864721 lt!1864527) (= lambda!210413 lambda!210369))))

(assert (=> bs!1095688 (= (= lt!1864721 lt!1864716) (= lambda!210413 lambda!210412))))

(declare-fun bs!1095690 () Bool)

(assert (= bs!1095690 (and d!1495565 d!1495363)))

(assert (=> bs!1095690 (= (= lt!1864721 lt!1864532) (= lambda!210413 lambda!210370))))

(assert (=> d!1495565 true))

(declare-fun b!4701614 () Bool)

(declare-fun e!2932864 () Bool)

(declare-fun call!328695 () Bool)

(assert (=> b!4701614 (= e!2932864 call!328695)))

(declare-fun call!328696 () Bool)

(declare-fun c!803664 () Bool)

(declare-fun bm!328690 () Bool)

(assert (=> bm!328690 (= call!328696 (forall!11403 (ite c!803664 (toList!5685 lt!1864193) (t!359869 lt!1864192)) (ite c!803664 lambda!210410 lambda!210412)))))

(declare-fun e!2932865 () ListMap!5049)

(assert (=> b!4701615 (= e!2932865 lt!1864193)))

(declare-fun lt!1864708 () Unit!126240)

(declare-fun call!328697 () Unit!126240)

(assert (=> b!4701615 (= lt!1864708 call!328697)))

(assert (=> b!4701615 call!328695))

(declare-fun lt!1864724 () Unit!126240)

(assert (=> b!4701615 (= lt!1864724 lt!1864708)))

(assert (=> b!4701615 call!328696))

(declare-fun lt!1864712 () Unit!126240)

(declare-fun Unit!126305 () Unit!126240)

(assert (=> b!4701615 (= lt!1864712 Unit!126305)))

(declare-fun b!4701617 () Bool)

(declare-fun e!2932866 () Bool)

(assert (=> b!4701617 (= e!2932866 (invariantList!1446 (toList!5685 lt!1864721)))))

(declare-fun bm!328691 () Bool)

(assert (=> bm!328691 (= call!328695 (forall!11403 (toList!5685 lt!1864193) (ite c!803664 lambda!210410 lambda!210412)))))

(declare-fun b!4701618 () Bool)

(declare-fun res!1985099 () Bool)

(assert (=> b!4701618 (=> (not res!1985099) (not e!2932866))))

(assert (=> b!4701618 (= res!1985099 (forall!11403 (toList!5685 lt!1864193) lambda!210413))))

(declare-fun bm!328692 () Bool)

(assert (=> bm!328692 (= call!328697 (lemmaContainsAllItsOwnKeys!734 lt!1864193))))

(assert (=> d!1495565 e!2932866))

(declare-fun res!1985100 () Bool)

(assert (=> d!1495565 (=> (not res!1985100) (not e!2932866))))

(assert (=> d!1495565 (= res!1985100 (forall!11403 lt!1864192 lambda!210413))))

(assert (=> d!1495565 (= lt!1864721 e!2932865)))

(assert (=> d!1495565 (= c!803664 ((_ is Nil!52533) lt!1864192))))

(assert (=> d!1495565 (noDuplicateKeys!1898 lt!1864192)))

(assert (=> d!1495565 (= (addToMapMapFromBucket!1330 lt!1864192 lt!1864193) lt!1864721)))

(assert (=> b!4701616 (= e!2932865 lt!1864716)))

(declare-fun lt!1864719 () ListMap!5049)

(assert (=> b!4701616 (= lt!1864719 (+!2182 lt!1864193 (h!58814 lt!1864192)))))

(assert (=> b!4701616 (= lt!1864716 (addToMapMapFromBucket!1330 (t!359869 lt!1864192) (+!2182 lt!1864193 (h!58814 lt!1864192))))))

(declare-fun lt!1864714 () Unit!126240)

(assert (=> b!4701616 (= lt!1864714 call!328697)))

(assert (=> b!4701616 (forall!11403 (toList!5685 lt!1864193) lambda!210411)))

(declare-fun lt!1864722 () Unit!126240)

(assert (=> b!4701616 (= lt!1864722 lt!1864714)))

(assert (=> b!4701616 (forall!11403 (toList!5685 lt!1864719) lambda!210412)))

(declare-fun lt!1864717 () Unit!126240)

(declare-fun Unit!126306 () Unit!126240)

(assert (=> b!4701616 (= lt!1864717 Unit!126306)))

(assert (=> b!4701616 call!328696))

(declare-fun lt!1864713 () Unit!126240)

(declare-fun Unit!126307 () Unit!126240)

(assert (=> b!4701616 (= lt!1864713 Unit!126307)))

(declare-fun lt!1864727 () Unit!126240)

(declare-fun Unit!126308 () Unit!126240)

(assert (=> b!4701616 (= lt!1864727 Unit!126308)))

(declare-fun lt!1864726 () Unit!126240)

(assert (=> b!4701616 (= lt!1864726 (forallContained!3510 (toList!5685 lt!1864719) lambda!210412 (h!58814 lt!1864192)))))

(assert (=> b!4701616 (contains!15814 lt!1864719 (_1!30287 (h!58814 lt!1864192)))))

(declare-fun lt!1864725 () Unit!126240)

(declare-fun Unit!126309 () Unit!126240)

(assert (=> b!4701616 (= lt!1864725 Unit!126309)))

(assert (=> b!4701616 (contains!15814 lt!1864716 (_1!30287 (h!58814 lt!1864192)))))

(declare-fun lt!1864715 () Unit!126240)

(declare-fun Unit!126310 () Unit!126240)

(assert (=> b!4701616 (= lt!1864715 Unit!126310)))

(assert (=> b!4701616 (forall!11403 lt!1864192 lambda!210412)))

(declare-fun lt!1864709 () Unit!126240)

(declare-fun Unit!126311 () Unit!126240)

(assert (=> b!4701616 (= lt!1864709 Unit!126311)))

(assert (=> b!4701616 (forall!11403 (toList!5685 lt!1864719) lambda!210412)))

(declare-fun lt!1864723 () Unit!126240)

(declare-fun Unit!126312 () Unit!126240)

(assert (=> b!4701616 (= lt!1864723 Unit!126312)))

(declare-fun lt!1864711 () Unit!126240)

(declare-fun Unit!126313 () Unit!126240)

(assert (=> b!4701616 (= lt!1864711 Unit!126313)))

(declare-fun lt!1864718 () Unit!126240)

(assert (=> b!4701616 (= lt!1864718 (addForallContainsKeyThenBeforeAdding!733 lt!1864193 lt!1864716 (_1!30287 (h!58814 lt!1864192)) (_2!30287 (h!58814 lt!1864192))))))

(assert (=> b!4701616 (forall!11403 (toList!5685 lt!1864193) lambda!210412)))

(declare-fun lt!1864728 () Unit!126240)

(assert (=> b!4701616 (= lt!1864728 lt!1864718)))

(assert (=> b!4701616 (forall!11403 (toList!5685 lt!1864193) lambda!210412)))

(declare-fun lt!1864710 () Unit!126240)

(declare-fun Unit!126314 () Unit!126240)

(assert (=> b!4701616 (= lt!1864710 Unit!126314)))

(declare-fun res!1985101 () Bool)

(assert (=> b!4701616 (= res!1985101 (forall!11403 lt!1864192 lambda!210412))))

(assert (=> b!4701616 (=> (not res!1985101) (not e!2932864))))

(assert (=> b!4701616 e!2932864))

(declare-fun lt!1864720 () Unit!126240)

(declare-fun Unit!126315 () Unit!126240)

(assert (=> b!4701616 (= lt!1864720 Unit!126315)))

(assert (= (and d!1495565 c!803664) b!4701615))

(assert (= (and d!1495565 (not c!803664)) b!4701616))

(assert (= (and b!4701616 res!1985101) b!4701614))

(assert (= (or b!4701615 b!4701616) bm!328692))

(assert (= (or b!4701615 b!4701614) bm!328691))

(assert (= (or b!4701615 b!4701616) bm!328690))

(assert (= (and d!1495565 res!1985100) b!4701618))

(assert (= (and b!4701618 res!1985099) b!4701617))

(declare-fun m!5617593 () Bool)

(assert (=> bm!328691 m!5617593))

(declare-fun m!5617595 () Bool)

(assert (=> b!4701616 m!5617595))

(declare-fun m!5617597 () Bool)

(assert (=> b!4701616 m!5617597))

(declare-fun m!5617599 () Bool)

(assert (=> b!4701616 m!5617599))

(assert (=> b!4701616 m!5617599))

(declare-fun m!5617601 () Bool)

(assert (=> b!4701616 m!5617601))

(declare-fun m!5617603 () Bool)

(assert (=> b!4701616 m!5617603))

(declare-fun m!5617605 () Bool)

(assert (=> b!4701616 m!5617605))

(declare-fun m!5617607 () Bool)

(assert (=> b!4701616 m!5617607))

(declare-fun m!5617609 () Bool)

(assert (=> b!4701616 m!5617609))

(declare-fun m!5617611 () Bool)

(assert (=> b!4701616 m!5617611))

(assert (=> b!4701616 m!5617609))

(assert (=> b!4701616 m!5617605))

(assert (=> b!4701616 m!5617597))

(declare-fun m!5617613 () Bool)

(assert (=> b!4701616 m!5617613))

(declare-fun m!5617615 () Bool)

(assert (=> b!4701618 m!5617615))

(assert (=> bm!328692 m!5617149))

(declare-fun m!5617617 () Bool)

(assert (=> b!4701617 m!5617617))

(declare-fun m!5617619 () Bool)

(assert (=> bm!328690 m!5617619))

(declare-fun m!5617621 () Bool)

(assert (=> d!1495565 m!5617621))

(assert (=> d!1495565 m!5617555))

(assert (=> b!4701195 d!1495565))

(declare-fun bs!1095691 () Bool)

(declare-fun b!4701620 () Bool)

(assert (= bs!1095691 (and b!4701620 d!1495565)))

(declare-fun lambda!210414 () Int)

(assert (=> bs!1095691 (= (= lt!1864193 lt!1864721) (= lambda!210414 lambda!210413))))

(declare-fun bs!1095692 () Bool)

(assert (= bs!1095692 (and b!4701620 d!1495495)))

(assert (=> bs!1095692 (not (= lambda!210414 lambda!210394))))

(declare-fun bs!1095693 () Bool)

(assert (= bs!1095693 (and b!4701620 b!4701615)))

(assert (=> bs!1095693 (= lambda!210414 lambda!210410)))

(declare-fun bs!1095694 () Bool)

(assert (= bs!1095694 (and b!4701620 d!1495361)))

(assert (=> bs!1095694 (not (= lambda!210414 lambda!210285))))

(declare-fun bs!1095695 () Bool)

(assert (= bs!1095695 (and b!4701620 b!4701445)))

(assert (=> bs!1095695 (= lambda!210414 lambda!210368)))

(declare-fun bs!1095696 () Bool)

(assert (= bs!1095696 (and b!4701620 b!4701616)))

(assert (=> bs!1095696 (= lambda!210414 lambda!210411)))

(declare-fun bs!1095697 () Bool)

(assert (= bs!1095697 (and b!4701620 b!4701444)))

(assert (=> bs!1095697 (= lambda!210414 lambda!210367)))

(assert (=> bs!1095695 (= (= lt!1864193 lt!1864527) (= lambda!210414 lambda!210369))))

(assert (=> bs!1095696 (= (= lt!1864193 lt!1864716) (= lambda!210414 lambda!210412))))

(declare-fun bs!1095698 () Bool)

(assert (= bs!1095698 (and b!4701620 d!1495363)))

(assert (=> bs!1095698 (= (= lt!1864193 lt!1864532) (= lambda!210414 lambda!210370))))

(assert (=> b!4701620 true))

(declare-fun bs!1095699 () Bool)

(declare-fun b!4701621 () Bool)

(assert (= bs!1095699 (and b!4701621 d!1495565)))

(declare-fun lambda!210415 () Int)

(assert (=> bs!1095699 (= (= lt!1864193 lt!1864721) (= lambda!210415 lambda!210413))))

(declare-fun bs!1095700 () Bool)

(assert (= bs!1095700 (and b!4701621 d!1495495)))

(assert (=> bs!1095700 (not (= lambda!210415 lambda!210394))))

(declare-fun bs!1095701 () Bool)

(assert (= bs!1095701 (and b!4701621 b!4701615)))

(assert (=> bs!1095701 (= lambda!210415 lambda!210410)))

(declare-fun bs!1095702 () Bool)

(assert (= bs!1095702 (and b!4701621 d!1495361)))

(assert (=> bs!1095702 (not (= lambda!210415 lambda!210285))))

(declare-fun bs!1095703 () Bool)

(assert (= bs!1095703 (and b!4701621 b!4701445)))

(assert (=> bs!1095703 (= lambda!210415 lambda!210368)))

(declare-fun bs!1095704 () Bool)

(assert (= bs!1095704 (and b!4701621 b!4701616)))

(assert (=> bs!1095704 (= lambda!210415 lambda!210411)))

(declare-fun bs!1095705 () Bool)

(assert (= bs!1095705 (and b!4701621 b!4701444)))

(assert (=> bs!1095705 (= lambda!210415 lambda!210367)))

(assert (=> bs!1095703 (= (= lt!1864193 lt!1864527) (= lambda!210415 lambda!210369))))

(declare-fun bs!1095706 () Bool)

(assert (= bs!1095706 (and b!4701621 b!4701620)))

(assert (=> bs!1095706 (= lambda!210415 lambda!210414)))

(assert (=> bs!1095704 (= (= lt!1864193 lt!1864716) (= lambda!210415 lambda!210412))))

(declare-fun bs!1095707 () Bool)

(assert (= bs!1095707 (and b!4701621 d!1495363)))

(assert (=> bs!1095707 (= (= lt!1864193 lt!1864532) (= lambda!210415 lambda!210370))))

(assert (=> b!4701621 true))

(declare-fun lt!1864737 () ListMap!5049)

(declare-fun lambda!210416 () Int)

(assert (=> bs!1095699 (= (= lt!1864737 lt!1864721) (= lambda!210416 lambda!210413))))

(assert (=> bs!1095700 (not (= lambda!210416 lambda!210394))))

(assert (=> bs!1095701 (= (= lt!1864737 lt!1864193) (= lambda!210416 lambda!210410))))

(assert (=> bs!1095703 (= (= lt!1864737 lt!1864193) (= lambda!210416 lambda!210368))))

(assert (=> bs!1095704 (= (= lt!1864737 lt!1864193) (= lambda!210416 lambda!210411))))

(assert (=> b!4701621 (= (= lt!1864737 lt!1864193) (= lambda!210416 lambda!210415))))

(assert (=> bs!1095702 (not (= lambda!210416 lambda!210285))))

(assert (=> bs!1095705 (= (= lt!1864737 lt!1864193) (= lambda!210416 lambda!210367))))

(assert (=> bs!1095703 (= (= lt!1864737 lt!1864527) (= lambda!210416 lambda!210369))))

(assert (=> bs!1095706 (= (= lt!1864737 lt!1864193) (= lambda!210416 lambda!210414))))

(assert (=> bs!1095704 (= (= lt!1864737 lt!1864716) (= lambda!210416 lambda!210412))))

(assert (=> bs!1095707 (= (= lt!1864737 lt!1864532) (= lambda!210416 lambda!210370))))

(assert (=> b!4701621 true))

(declare-fun bs!1095708 () Bool)

(declare-fun d!1495567 () Bool)

(assert (= bs!1095708 (and d!1495567 d!1495565)))

(declare-fun lambda!210417 () Int)

(declare-fun lt!1864742 () ListMap!5049)

(assert (=> bs!1095708 (= (= lt!1864742 lt!1864721) (= lambda!210417 lambda!210413))))

(declare-fun bs!1095709 () Bool)

(assert (= bs!1095709 (and d!1495567 d!1495495)))

(assert (=> bs!1095709 (not (= lambda!210417 lambda!210394))))

(declare-fun bs!1095710 () Bool)

(assert (= bs!1095710 (and d!1495567 b!4701615)))

(assert (=> bs!1095710 (= (= lt!1864742 lt!1864193) (= lambda!210417 lambda!210410))))

(declare-fun bs!1095711 () Bool)

(assert (= bs!1095711 (and d!1495567 b!4701445)))

(assert (=> bs!1095711 (= (= lt!1864742 lt!1864193) (= lambda!210417 lambda!210368))))

(declare-fun bs!1095712 () Bool)

(assert (= bs!1095712 (and d!1495567 b!4701616)))

(assert (=> bs!1095712 (= (= lt!1864742 lt!1864193) (= lambda!210417 lambda!210411))))

(declare-fun bs!1095713 () Bool)

(assert (= bs!1095713 (and d!1495567 b!4701621)))

(assert (=> bs!1095713 (= (= lt!1864742 lt!1864193) (= lambda!210417 lambda!210415))))

(declare-fun bs!1095714 () Bool)

(assert (= bs!1095714 (and d!1495567 d!1495361)))

(assert (=> bs!1095714 (not (= lambda!210417 lambda!210285))))

(declare-fun bs!1095715 () Bool)

(assert (= bs!1095715 (and d!1495567 b!4701444)))

(assert (=> bs!1095715 (= (= lt!1864742 lt!1864193) (= lambda!210417 lambda!210367))))

(assert (=> bs!1095711 (= (= lt!1864742 lt!1864527) (= lambda!210417 lambda!210369))))

(declare-fun bs!1095716 () Bool)

(assert (= bs!1095716 (and d!1495567 b!4701620)))

(assert (=> bs!1095716 (= (= lt!1864742 lt!1864193) (= lambda!210417 lambda!210414))))

(assert (=> bs!1095712 (= (= lt!1864742 lt!1864716) (= lambda!210417 lambda!210412))))

(declare-fun bs!1095717 () Bool)

(assert (= bs!1095717 (and d!1495567 d!1495363)))

(assert (=> bs!1095717 (= (= lt!1864742 lt!1864532) (= lambda!210417 lambda!210370))))

(assert (=> bs!1095713 (= (= lt!1864742 lt!1864737) (= lambda!210417 lambda!210416))))

(assert (=> d!1495567 true))

(declare-fun b!4701619 () Bool)

(declare-fun e!2932867 () Bool)

(declare-fun call!328698 () Bool)

(assert (=> b!4701619 (= e!2932867 call!328698)))

(declare-fun bm!328693 () Bool)

(declare-fun call!328699 () Bool)

(declare-fun c!803665 () Bool)

(assert (=> bm!328693 (= call!328699 (forall!11403 (ite c!803665 (toList!5685 lt!1864193) (t!359869 (Cons!52533 lt!1864171 lt!1864192))) (ite c!803665 lambda!210414 lambda!210416)))))

(declare-fun e!2932868 () ListMap!5049)

(assert (=> b!4701620 (= e!2932868 lt!1864193)))

(declare-fun lt!1864729 () Unit!126240)

(declare-fun call!328700 () Unit!126240)

(assert (=> b!4701620 (= lt!1864729 call!328700)))

(assert (=> b!4701620 call!328698))

(declare-fun lt!1864745 () Unit!126240)

(assert (=> b!4701620 (= lt!1864745 lt!1864729)))

(assert (=> b!4701620 call!328699))

(declare-fun lt!1864733 () Unit!126240)

(declare-fun Unit!126327 () Unit!126240)

(assert (=> b!4701620 (= lt!1864733 Unit!126327)))

(declare-fun b!4701622 () Bool)

(declare-fun e!2932869 () Bool)

(assert (=> b!4701622 (= e!2932869 (invariantList!1446 (toList!5685 lt!1864742)))))

(declare-fun bm!328694 () Bool)

(assert (=> bm!328694 (= call!328698 (forall!11403 (toList!5685 lt!1864193) (ite c!803665 lambda!210414 lambda!210416)))))

(declare-fun b!4701623 () Bool)

(declare-fun res!1985102 () Bool)

(assert (=> b!4701623 (=> (not res!1985102) (not e!2932869))))

(assert (=> b!4701623 (= res!1985102 (forall!11403 (toList!5685 lt!1864193) lambda!210417))))

(declare-fun bm!328695 () Bool)

(assert (=> bm!328695 (= call!328700 (lemmaContainsAllItsOwnKeys!734 lt!1864193))))

(assert (=> d!1495567 e!2932869))

(declare-fun res!1985103 () Bool)

(assert (=> d!1495567 (=> (not res!1985103) (not e!2932869))))

(assert (=> d!1495567 (= res!1985103 (forall!11403 (Cons!52533 lt!1864171 lt!1864192) lambda!210417))))

(assert (=> d!1495567 (= lt!1864742 e!2932868)))

(assert (=> d!1495567 (= c!803665 ((_ is Nil!52533) (Cons!52533 lt!1864171 lt!1864192)))))

(assert (=> d!1495567 (noDuplicateKeys!1898 (Cons!52533 lt!1864171 lt!1864192))))

(assert (=> d!1495567 (= (addToMapMapFromBucket!1330 (Cons!52533 lt!1864171 lt!1864192) lt!1864193) lt!1864742)))

(assert (=> b!4701621 (= e!2932868 lt!1864737)))

(declare-fun lt!1864740 () ListMap!5049)

(assert (=> b!4701621 (= lt!1864740 (+!2182 lt!1864193 (h!58814 (Cons!52533 lt!1864171 lt!1864192))))))

(assert (=> b!4701621 (= lt!1864737 (addToMapMapFromBucket!1330 (t!359869 (Cons!52533 lt!1864171 lt!1864192)) (+!2182 lt!1864193 (h!58814 (Cons!52533 lt!1864171 lt!1864192)))))))

(declare-fun lt!1864735 () Unit!126240)

(assert (=> b!4701621 (= lt!1864735 call!328700)))

(assert (=> b!4701621 (forall!11403 (toList!5685 lt!1864193) lambda!210415)))

(declare-fun lt!1864743 () Unit!126240)

(assert (=> b!4701621 (= lt!1864743 lt!1864735)))

(assert (=> b!4701621 (forall!11403 (toList!5685 lt!1864740) lambda!210416)))

(declare-fun lt!1864738 () Unit!126240)

(declare-fun Unit!126328 () Unit!126240)

(assert (=> b!4701621 (= lt!1864738 Unit!126328)))

(assert (=> b!4701621 call!328699))

(declare-fun lt!1864734 () Unit!126240)

(declare-fun Unit!126329 () Unit!126240)

(assert (=> b!4701621 (= lt!1864734 Unit!126329)))

(declare-fun lt!1864748 () Unit!126240)

(declare-fun Unit!126330 () Unit!126240)

(assert (=> b!4701621 (= lt!1864748 Unit!126330)))

(declare-fun lt!1864747 () Unit!126240)

(assert (=> b!4701621 (= lt!1864747 (forallContained!3510 (toList!5685 lt!1864740) lambda!210416 (h!58814 (Cons!52533 lt!1864171 lt!1864192))))))

(assert (=> b!4701621 (contains!15814 lt!1864740 (_1!30287 (h!58814 (Cons!52533 lt!1864171 lt!1864192))))))

(declare-fun lt!1864746 () Unit!126240)

(declare-fun Unit!126331 () Unit!126240)

(assert (=> b!4701621 (= lt!1864746 Unit!126331)))

(assert (=> b!4701621 (contains!15814 lt!1864737 (_1!30287 (h!58814 (Cons!52533 lt!1864171 lt!1864192))))))

(declare-fun lt!1864736 () Unit!126240)

(declare-fun Unit!126332 () Unit!126240)

(assert (=> b!4701621 (= lt!1864736 Unit!126332)))

(assert (=> b!4701621 (forall!11403 (Cons!52533 lt!1864171 lt!1864192) lambda!210416)))

(declare-fun lt!1864730 () Unit!126240)

(declare-fun Unit!126333 () Unit!126240)

(assert (=> b!4701621 (= lt!1864730 Unit!126333)))

(assert (=> b!4701621 (forall!11403 (toList!5685 lt!1864740) lambda!210416)))

(declare-fun lt!1864744 () Unit!126240)

(declare-fun Unit!126334 () Unit!126240)

(assert (=> b!4701621 (= lt!1864744 Unit!126334)))

(declare-fun lt!1864732 () Unit!126240)

(declare-fun Unit!126335 () Unit!126240)

(assert (=> b!4701621 (= lt!1864732 Unit!126335)))

(declare-fun lt!1864739 () Unit!126240)

(assert (=> b!4701621 (= lt!1864739 (addForallContainsKeyThenBeforeAdding!733 lt!1864193 lt!1864737 (_1!30287 (h!58814 (Cons!52533 lt!1864171 lt!1864192))) (_2!30287 (h!58814 (Cons!52533 lt!1864171 lt!1864192)))))))

(assert (=> b!4701621 (forall!11403 (toList!5685 lt!1864193) lambda!210416)))

(declare-fun lt!1864749 () Unit!126240)

(assert (=> b!4701621 (= lt!1864749 lt!1864739)))

(assert (=> b!4701621 (forall!11403 (toList!5685 lt!1864193) lambda!210416)))

(declare-fun lt!1864731 () Unit!126240)

(declare-fun Unit!126336 () Unit!126240)

(assert (=> b!4701621 (= lt!1864731 Unit!126336)))

(declare-fun res!1985104 () Bool)

(assert (=> b!4701621 (= res!1985104 (forall!11403 (Cons!52533 lt!1864171 lt!1864192) lambda!210416))))

(assert (=> b!4701621 (=> (not res!1985104) (not e!2932867))))

(assert (=> b!4701621 e!2932867))

(declare-fun lt!1864741 () Unit!126240)

(declare-fun Unit!126337 () Unit!126240)

(assert (=> b!4701621 (= lt!1864741 Unit!126337)))

(assert (= (and d!1495567 c!803665) b!4701620))

(assert (= (and d!1495567 (not c!803665)) b!4701621))

(assert (= (and b!4701621 res!1985104) b!4701619))

(assert (= (or b!4701620 b!4701621) bm!328695))

(assert (= (or b!4701620 b!4701619) bm!328694))

(assert (= (or b!4701620 b!4701621) bm!328693))

(assert (= (and d!1495567 res!1985103) b!4701623))

(assert (= (and b!4701623 res!1985102) b!4701622))

(declare-fun m!5617623 () Bool)

(assert (=> bm!328694 m!5617623))

(declare-fun m!5617625 () Bool)

(assert (=> b!4701621 m!5617625))

(declare-fun m!5617627 () Bool)

(assert (=> b!4701621 m!5617627))

(declare-fun m!5617629 () Bool)

(assert (=> b!4701621 m!5617629))

(assert (=> b!4701621 m!5617629))

(declare-fun m!5617631 () Bool)

(assert (=> b!4701621 m!5617631))

(declare-fun m!5617633 () Bool)

(assert (=> b!4701621 m!5617633))

(declare-fun m!5617635 () Bool)

(assert (=> b!4701621 m!5617635))

(declare-fun m!5617637 () Bool)

(assert (=> b!4701621 m!5617637))

(declare-fun m!5617639 () Bool)

(assert (=> b!4701621 m!5617639))

(declare-fun m!5617641 () Bool)

(assert (=> b!4701621 m!5617641))

(assert (=> b!4701621 m!5617639))

(assert (=> b!4701621 m!5617635))

(assert (=> b!4701621 m!5617627))

(declare-fun m!5617643 () Bool)

(assert (=> b!4701621 m!5617643))

(declare-fun m!5617645 () Bool)

(assert (=> b!4701623 m!5617645))

(assert (=> bm!328695 m!5617149))

(declare-fun m!5617647 () Bool)

(assert (=> b!4701622 m!5617647))

(declare-fun m!5617649 () Bool)

(assert (=> bm!328693 m!5617649))

(declare-fun m!5617651 () Bool)

(assert (=> d!1495567 m!5617651))

(declare-fun m!5617653 () Bool)

(assert (=> d!1495567 m!5617653))

(assert (=> b!4701195 d!1495567))

(declare-fun bs!1095718 () Bool)

(declare-fun d!1495569 () Bool)

(assert (= bs!1095718 (and d!1495569 d!1495297)))

(declare-fun lambda!210420 () Int)

(assert (=> bs!1095718 (= lambda!210420 lambda!210270)))

(declare-fun bs!1095719 () Bool)

(assert (= bs!1095719 (and d!1495569 d!1495301)))

(assert (=> bs!1095719 (= lambda!210420 lambda!210271)))

(declare-fun bs!1095720 () Bool)

(assert (= bs!1095720 (and d!1495569 d!1495353)))

(assert (=> bs!1095720 (= lambda!210420 lambda!210282)))

(declare-fun bs!1095721 () Bool)

(assert (= bs!1095721 (and d!1495569 d!1495523)))

(assert (=> bs!1095721 (= lambda!210420 lambda!210402)))

(declare-fun bs!1095722 () Bool)

(assert (= bs!1095722 (and d!1495569 d!1495425)))

(assert (=> bs!1095722 (= lambda!210420 lambda!210371)))

(declare-fun bs!1095723 () Bool)

(assert (= bs!1095723 (and d!1495569 start!476836)))

(assert (=> bs!1095723 (= lambda!210420 lambda!210267)))

(declare-fun bs!1095724 () Bool)

(assert (= bs!1095724 (and d!1495569 d!1495437)))

(assert (=> bs!1095724 (= lambda!210420 lambda!210393)))

(declare-fun bs!1095725 () Bool)

(assert (= bs!1095725 (and d!1495569 d!1495513)))

(assert (=> bs!1095725 (not (= lambda!210420 lambda!210400))))

(declare-fun bs!1095726 () Bool)

(assert (= bs!1095726 (and d!1495569 d!1495317)))

(assert (=> bs!1095726 (= lambda!210420 lambda!210281)))

(declare-fun bs!1095727 () Bool)

(assert (= bs!1095727 (and d!1495569 d!1495435)))

(assert (=> bs!1095727 (= lambda!210420 lambda!210374)))

(declare-fun bs!1095728 () Bool)

(assert (= bs!1095728 (and d!1495569 d!1495303)))

(assert (=> bs!1095728 (= lambda!210420 lambda!210272)))

(declare-fun bs!1095729 () Bool)

(assert (= bs!1095729 (and d!1495569 d!1495555)))

(assert (=> bs!1095729 (= lambda!210420 lambda!210409)))

(assert (=> d!1495569 (contains!15814 (extractMap!1924 (toList!5686 lt!1864178)) key!4653)))

(declare-fun lt!1864752 () Unit!126240)

(declare-fun choose!32907 (ListLongMap!4215 K!13895 Hashable!6267) Unit!126240)

(assert (=> d!1495569 (= lt!1864752 (choose!32907 lt!1864178 key!4653 hashF!1323))))

(assert (=> d!1495569 (forall!11401 (toList!5686 lt!1864178) lambda!210420)))

(assert (=> d!1495569 (= (lemmaListContainsThenExtractedMapContains!490 lt!1864178 key!4653 hashF!1323) lt!1864752)))

(declare-fun bs!1095730 () Bool)

(assert (= bs!1095730 d!1495569))

(declare-fun m!5617655 () Bool)

(assert (=> bs!1095730 m!5617655))

(assert (=> bs!1095730 m!5617655))

(declare-fun m!5617657 () Bool)

(assert (=> bs!1095730 m!5617657))

(declare-fun m!5617659 () Bool)

(assert (=> bs!1095730 m!5617659))

(declare-fun m!5617661 () Bool)

(assert (=> bs!1095730 m!5617661))

(assert (=> b!4701195 d!1495569))

(declare-fun b!4701624 () Bool)

(declare-fun e!2932875 () Bool)

(declare-fun e!2932870 () Bool)

(assert (=> b!4701624 (= e!2932875 e!2932870)))

(declare-fun res!1985107 () Bool)

(assert (=> b!4701624 (=> (not res!1985107) (not e!2932870))))

(assert (=> b!4701624 (= res!1985107 (isDefined!9450 (getValueByKey!1851 (toList!5685 lt!1864194) key!4653)))))

(declare-fun b!4701625 () Bool)

(declare-fun e!2932874 () Bool)

(assert (=> b!4701625 (= e!2932874 (not (contains!15818 (keys!18793 lt!1864194) key!4653)))))

(declare-fun b!4701626 () Bool)

(declare-fun e!2932871 () Unit!126240)

(declare-fun e!2932872 () Unit!126240)

(assert (=> b!4701626 (= e!2932871 e!2932872)))

(declare-fun c!803666 () Bool)

(declare-fun call!328701 () Bool)

(assert (=> b!4701626 (= c!803666 call!328701)))

(declare-fun b!4701627 () Bool)

(declare-fun e!2932873 () List!52660)

(assert (=> b!4701627 (= e!2932873 (getKeysList!886 (toList!5685 lt!1864194)))))

(declare-fun b!4701628 () Bool)

(assert (=> b!4701628 (= e!2932873 (keys!18793 lt!1864194))))

(declare-fun d!1495571 () Bool)

(assert (=> d!1495571 e!2932875))

(declare-fun res!1985106 () Bool)

(assert (=> d!1495571 (=> res!1985106 e!2932875)))

(assert (=> d!1495571 (= res!1985106 e!2932874)))

(declare-fun res!1985105 () Bool)

(assert (=> d!1495571 (=> (not res!1985105) (not e!2932874))))

(declare-fun lt!1864753 () Bool)

(assert (=> d!1495571 (= res!1985105 (not lt!1864753))))

(declare-fun lt!1864754 () Bool)

(assert (=> d!1495571 (= lt!1864753 lt!1864754)))

(declare-fun lt!1864756 () Unit!126240)

(assert (=> d!1495571 (= lt!1864756 e!2932871)))

(declare-fun c!803668 () Bool)

(assert (=> d!1495571 (= c!803668 lt!1864754)))

(assert (=> d!1495571 (= lt!1864754 (containsKey!3171 (toList!5685 lt!1864194) key!4653))))

(assert (=> d!1495571 (= (contains!15814 lt!1864194 key!4653) lt!1864753)))

(declare-fun bm!328696 () Bool)

(assert (=> bm!328696 (= call!328701 (contains!15818 e!2932873 key!4653))))

(declare-fun c!803667 () Bool)

(assert (=> bm!328696 (= c!803667 c!803668)))

(declare-fun b!4701629 () Bool)

(declare-fun lt!1864758 () Unit!126240)

(assert (=> b!4701629 (= e!2932871 lt!1864758)))

(declare-fun lt!1864757 () Unit!126240)

(assert (=> b!4701629 (= lt!1864757 (lemmaContainsKeyImpliesGetValueByKeyDefined!1743 (toList!5685 lt!1864194) key!4653))))

(assert (=> b!4701629 (isDefined!9450 (getValueByKey!1851 (toList!5685 lt!1864194) key!4653))))

(declare-fun lt!1864760 () Unit!126240)

(assert (=> b!4701629 (= lt!1864760 lt!1864757)))

(assert (=> b!4701629 (= lt!1864758 (lemmaInListThenGetKeysListContains!881 (toList!5685 lt!1864194) key!4653))))

(assert (=> b!4701629 call!328701))

(declare-fun b!4701630 () Bool)

(assert (=> b!4701630 (= e!2932870 (contains!15818 (keys!18793 lt!1864194) key!4653))))

(declare-fun b!4701631 () Bool)

(declare-fun Unit!126338 () Unit!126240)

(assert (=> b!4701631 (= e!2932872 Unit!126338)))

(declare-fun b!4701632 () Bool)

(assert (=> b!4701632 false))

(declare-fun lt!1864755 () Unit!126240)

(declare-fun lt!1864759 () Unit!126240)

(assert (=> b!4701632 (= lt!1864755 lt!1864759)))

(assert (=> b!4701632 (containsKey!3171 (toList!5685 lt!1864194) key!4653)))

(assert (=> b!4701632 (= lt!1864759 (lemmaInGetKeysListThenContainsKey!885 (toList!5685 lt!1864194) key!4653))))

(declare-fun Unit!126339 () Unit!126240)

(assert (=> b!4701632 (= e!2932872 Unit!126339)))

(assert (= (and d!1495571 c!803668) b!4701629))

(assert (= (and d!1495571 (not c!803668)) b!4701626))

(assert (= (and b!4701626 c!803666) b!4701632))

(assert (= (and b!4701626 (not c!803666)) b!4701631))

(assert (= (or b!4701629 b!4701626) bm!328696))

(assert (= (and bm!328696 c!803667) b!4701627))

(assert (= (and bm!328696 (not c!803667)) b!4701628))

(assert (= (and d!1495571 res!1985105) b!4701625))

(assert (= (and d!1495571 (not res!1985106)) b!4701624))

(assert (= (and b!4701624 res!1985107) b!4701630))

(declare-fun m!5617663 () Bool)

(assert (=> b!4701627 m!5617663))

(assert (=> b!4701630 m!5616737))

(assert (=> b!4701630 m!5616737))

(declare-fun m!5617665 () Bool)

(assert (=> b!4701630 m!5617665))

(declare-fun m!5617667 () Bool)

(assert (=> d!1495571 m!5617667))

(assert (=> b!4701625 m!5616737))

(assert (=> b!4701625 m!5616737))

(assert (=> b!4701625 m!5617665))

(assert (=> b!4701632 m!5617667))

(declare-fun m!5617669 () Bool)

(assert (=> b!4701632 m!5617669))

(assert (=> b!4701628 m!5616737))

(declare-fun m!5617671 () Bool)

(assert (=> bm!328696 m!5617671))

(declare-fun m!5617673 () Bool)

(assert (=> b!4701624 m!5617673))

(assert (=> b!4701624 m!5617673))

(declare-fun m!5617675 () Bool)

(assert (=> b!4701624 m!5617675))

(declare-fun m!5617677 () Bool)

(assert (=> b!4701629 m!5617677))

(assert (=> b!4701629 m!5617673))

(assert (=> b!4701629 m!5617673))

(assert (=> b!4701629 m!5617675))

(declare-fun m!5617679 () Bool)

(assert (=> b!4701629 m!5617679))

(assert (=> b!4701195 d!1495571))

(declare-fun d!1495573 () Bool)

(assert (=> d!1495573 (= (eq!1057 lt!1864188 (+!2182 lt!1864181 (h!58814 oldBucket!34))) (= (content!9267 (toList!5685 lt!1864188)) (content!9267 (toList!5685 (+!2182 lt!1864181 (h!58814 oldBucket!34))))))))

(declare-fun bs!1095731 () Bool)

(assert (= bs!1095731 d!1495573))

(assert (=> bs!1095731 m!5617407))

(declare-fun m!5617681 () Bool)

(assert (=> bs!1095731 m!5617681))

(assert (=> b!4701195 d!1495573))

(declare-fun d!1495575 () Bool)

(declare-fun e!2932876 () Bool)

(assert (=> d!1495575 e!2932876))

(declare-fun res!1985108 () Bool)

(assert (=> d!1495575 (=> (not res!1985108) (not e!2932876))))

(declare-fun lt!1864763 () ListMap!5049)

(assert (=> d!1495575 (= res!1985108 (contains!15814 lt!1864763 (_1!30287 lt!1864184)))))

(declare-fun lt!1864764 () List!52657)

(assert (=> d!1495575 (= lt!1864763 (ListMap!5050 lt!1864764))))

(declare-fun lt!1864762 () Unit!126240)

(declare-fun lt!1864761 () Unit!126240)

(assert (=> d!1495575 (= lt!1864762 lt!1864761)))

(assert (=> d!1495575 (= (getValueByKey!1851 lt!1864764 (_1!30287 lt!1864184)) (Some!12194 (_2!30287 lt!1864184)))))

(assert (=> d!1495575 (= lt!1864761 (lemmaContainsTupThenGetReturnValue!1036 lt!1864764 (_1!30287 lt!1864184) (_2!30287 lt!1864184)))))

(assert (=> d!1495575 (= lt!1864764 (insertNoDuplicatedKeys!544 (toList!5685 (addToMapMapFromBucket!1330 lt!1864183 lt!1864193)) (_1!30287 lt!1864184) (_2!30287 lt!1864184)))))

(assert (=> d!1495575 (= (+!2182 (addToMapMapFromBucket!1330 lt!1864183 lt!1864193) lt!1864184) lt!1864763)))

(declare-fun b!4701633 () Bool)

(declare-fun res!1985109 () Bool)

(assert (=> b!4701633 (=> (not res!1985109) (not e!2932876))))

(assert (=> b!4701633 (= res!1985109 (= (getValueByKey!1851 (toList!5685 lt!1864763) (_1!30287 lt!1864184)) (Some!12194 (_2!30287 lt!1864184))))))

(declare-fun b!4701634 () Bool)

(assert (=> b!4701634 (= e!2932876 (contains!15817 (toList!5685 lt!1864763) lt!1864184))))

(assert (= (and d!1495575 res!1985108) b!4701633))

(assert (= (and b!4701633 res!1985109) b!4701634))

(declare-fun m!5617683 () Bool)

(assert (=> d!1495575 m!5617683))

(declare-fun m!5617685 () Bool)

(assert (=> d!1495575 m!5617685))

(declare-fun m!5617687 () Bool)

(assert (=> d!1495575 m!5617687))

(declare-fun m!5617689 () Bool)

(assert (=> d!1495575 m!5617689))

(declare-fun m!5617691 () Bool)

(assert (=> b!4701633 m!5617691))

(declare-fun m!5617693 () Bool)

(assert (=> b!4701634 m!5617693))

(assert (=> b!4701195 d!1495575))

(declare-fun d!1495577 () Bool)

(assert (=> d!1495577 (= (head!10060 newBucket!218) (h!58814 newBucket!218))))

(assert (=> b!4701195 d!1495577))

(declare-fun d!1495579 () Bool)

(assert (=> d!1495579 (= (eq!1057 (addToMapMapFromBucket!1330 (Cons!52533 lt!1864171 lt!1864192) lt!1864193) (+!2182 (addToMapMapFromBucket!1330 lt!1864192 lt!1864193) lt!1864171)) (= (content!9267 (toList!5685 (addToMapMapFromBucket!1330 (Cons!52533 lt!1864171 lt!1864192) lt!1864193))) (content!9267 (toList!5685 (+!2182 (addToMapMapFromBucket!1330 lt!1864192 lt!1864193) lt!1864171)))))))

(declare-fun bs!1095732 () Bool)

(assert (= bs!1095732 d!1495579))

(declare-fun m!5617695 () Bool)

(assert (=> bs!1095732 m!5617695))

(declare-fun m!5617697 () Bool)

(assert (=> bs!1095732 m!5617697))

(assert (=> b!4701195 d!1495579))

(declare-fun bs!1095733 () Bool)

(declare-fun d!1495581 () Bool)

(assert (= bs!1095733 (and d!1495581 d!1495297)))

(declare-fun lambda!210421 () Int)

(assert (=> bs!1095733 (= lambda!210421 lambda!210270)))

(declare-fun bs!1095734 () Bool)

(assert (= bs!1095734 (and d!1495581 d!1495301)))

(assert (=> bs!1095734 (= lambda!210421 lambda!210271)))

(declare-fun bs!1095735 () Bool)

(assert (= bs!1095735 (and d!1495581 d!1495353)))

(assert (=> bs!1095735 (= lambda!210421 lambda!210282)))

(declare-fun bs!1095736 () Bool)

(assert (= bs!1095736 (and d!1495581 d!1495523)))

(assert (=> bs!1095736 (= lambda!210421 lambda!210402)))

(declare-fun bs!1095737 () Bool)

(assert (= bs!1095737 (and d!1495581 d!1495425)))

(assert (=> bs!1095737 (= lambda!210421 lambda!210371)))

(declare-fun bs!1095738 () Bool)

(assert (= bs!1095738 (and d!1495581 start!476836)))

(assert (=> bs!1095738 (= lambda!210421 lambda!210267)))

(declare-fun bs!1095739 () Bool)

(assert (= bs!1095739 (and d!1495581 d!1495513)))

(assert (=> bs!1095739 (not (= lambda!210421 lambda!210400))))

(declare-fun bs!1095740 () Bool)

(assert (= bs!1095740 (and d!1495581 d!1495317)))

(assert (=> bs!1095740 (= lambda!210421 lambda!210281)))

(declare-fun bs!1095741 () Bool)

(assert (= bs!1095741 (and d!1495581 d!1495435)))

(assert (=> bs!1095741 (= lambda!210421 lambda!210374)))

(declare-fun bs!1095742 () Bool)

(assert (= bs!1095742 (and d!1495581 d!1495303)))

(assert (=> bs!1095742 (= lambda!210421 lambda!210272)))

(declare-fun bs!1095743 () Bool)

(assert (= bs!1095743 (and d!1495581 d!1495555)))

(assert (=> bs!1095743 (= lambda!210421 lambda!210409)))

(declare-fun bs!1095744 () Bool)

(assert (= bs!1095744 (and d!1495581 d!1495569)))

(assert (=> bs!1095744 (= lambda!210421 lambda!210420)))

(declare-fun bs!1095745 () Bool)

(assert (= bs!1095745 (and d!1495581 d!1495437)))

(assert (=> bs!1095745 (= lambda!210421 lambda!210393)))

(declare-fun lt!1864765 () ListMap!5049)

(assert (=> d!1495581 (invariantList!1446 (toList!5685 lt!1864765))))

(declare-fun e!2932877 () ListMap!5049)

(assert (=> d!1495581 (= lt!1864765 e!2932877)))

(declare-fun c!803669 () Bool)

(assert (=> d!1495581 (= c!803669 ((_ is Cons!52534) lt!1864164))))

(assert (=> d!1495581 (forall!11401 lt!1864164 lambda!210421)))

(assert (=> d!1495581 (= (extractMap!1924 lt!1864164) lt!1864765)))

(declare-fun b!4701635 () Bool)

(assert (=> b!4701635 (= e!2932877 (addToMapMapFromBucket!1330 (_2!30288 (h!58815 lt!1864164)) (extractMap!1924 (t!359870 lt!1864164))))))

(declare-fun b!4701636 () Bool)

(assert (=> b!4701636 (= e!2932877 (ListMap!5050 Nil!52533))))

(assert (= (and d!1495581 c!803669) b!4701635))

(assert (= (and d!1495581 (not c!803669)) b!4701636))

(declare-fun m!5617699 () Bool)

(assert (=> d!1495581 m!5617699))

(declare-fun m!5617701 () Bool)

(assert (=> d!1495581 m!5617701))

(declare-fun m!5617703 () Bool)

(assert (=> b!4701635 m!5617703))

(assert (=> b!4701635 m!5617703))

(declare-fun m!5617705 () Bool)

(assert (=> b!4701635 m!5617705))

(assert (=> b!4701195 d!1495581))

(declare-fun bs!1095746 () Bool)

(declare-fun b!4701638 () Bool)

(assert (= bs!1095746 (and b!4701638 d!1495565)))

(declare-fun lambda!210422 () Int)

(assert (=> bs!1095746 (= (= lt!1864193 lt!1864721) (= lambda!210422 lambda!210413))))

(declare-fun bs!1095747 () Bool)

(assert (= bs!1095747 (and b!4701638 d!1495495)))

(assert (=> bs!1095747 (not (= lambda!210422 lambda!210394))))

(declare-fun bs!1095748 () Bool)

(assert (= bs!1095748 (and b!4701638 b!4701615)))

(assert (=> bs!1095748 (= lambda!210422 lambda!210410)))

(declare-fun bs!1095749 () Bool)

(assert (= bs!1095749 (and b!4701638 b!4701445)))

(assert (=> bs!1095749 (= lambda!210422 lambda!210368)))

(declare-fun bs!1095750 () Bool)

(assert (= bs!1095750 (and b!4701638 b!4701616)))

(assert (=> bs!1095750 (= lambda!210422 lambda!210411)))

(declare-fun bs!1095751 () Bool)

(assert (= bs!1095751 (and b!4701638 d!1495567)))

(assert (=> bs!1095751 (= (= lt!1864193 lt!1864742) (= lambda!210422 lambda!210417))))

(declare-fun bs!1095752 () Bool)

(assert (= bs!1095752 (and b!4701638 b!4701621)))

(assert (=> bs!1095752 (= lambda!210422 lambda!210415)))

(declare-fun bs!1095753 () Bool)

(assert (= bs!1095753 (and b!4701638 d!1495361)))

(assert (=> bs!1095753 (not (= lambda!210422 lambda!210285))))

(declare-fun bs!1095754 () Bool)

(assert (= bs!1095754 (and b!4701638 b!4701444)))

(assert (=> bs!1095754 (= lambda!210422 lambda!210367)))

(assert (=> bs!1095749 (= (= lt!1864193 lt!1864527) (= lambda!210422 lambda!210369))))

(declare-fun bs!1095755 () Bool)

(assert (= bs!1095755 (and b!4701638 b!4701620)))

(assert (=> bs!1095755 (= lambda!210422 lambda!210414)))

(assert (=> bs!1095750 (= (= lt!1864193 lt!1864716) (= lambda!210422 lambda!210412))))

(declare-fun bs!1095756 () Bool)

(assert (= bs!1095756 (and b!4701638 d!1495363)))

(assert (=> bs!1095756 (= (= lt!1864193 lt!1864532) (= lambda!210422 lambda!210370))))

(assert (=> bs!1095752 (= (= lt!1864193 lt!1864737) (= lambda!210422 lambda!210416))))

(assert (=> b!4701638 true))

(declare-fun bs!1095757 () Bool)

(declare-fun b!4701639 () Bool)

(assert (= bs!1095757 (and b!4701639 d!1495565)))

(declare-fun lambda!210423 () Int)

(assert (=> bs!1095757 (= (= lt!1864193 lt!1864721) (= lambda!210423 lambda!210413))))

(declare-fun bs!1095758 () Bool)

(assert (= bs!1095758 (and b!4701639 b!4701638)))

(assert (=> bs!1095758 (= lambda!210423 lambda!210422)))

(declare-fun bs!1095759 () Bool)

(assert (= bs!1095759 (and b!4701639 d!1495495)))

(assert (=> bs!1095759 (not (= lambda!210423 lambda!210394))))

(declare-fun bs!1095760 () Bool)

(assert (= bs!1095760 (and b!4701639 b!4701615)))

(assert (=> bs!1095760 (= lambda!210423 lambda!210410)))

(declare-fun bs!1095761 () Bool)

(assert (= bs!1095761 (and b!4701639 b!4701445)))

(assert (=> bs!1095761 (= lambda!210423 lambda!210368)))

(declare-fun bs!1095762 () Bool)

(assert (= bs!1095762 (and b!4701639 b!4701616)))

(assert (=> bs!1095762 (= lambda!210423 lambda!210411)))

(declare-fun bs!1095763 () Bool)

(assert (= bs!1095763 (and b!4701639 d!1495567)))

(assert (=> bs!1095763 (= (= lt!1864193 lt!1864742) (= lambda!210423 lambda!210417))))

(declare-fun bs!1095764 () Bool)

(assert (= bs!1095764 (and b!4701639 b!4701621)))

(assert (=> bs!1095764 (= lambda!210423 lambda!210415)))

(declare-fun bs!1095765 () Bool)

(assert (= bs!1095765 (and b!4701639 d!1495361)))

(assert (=> bs!1095765 (not (= lambda!210423 lambda!210285))))

(declare-fun bs!1095766 () Bool)

(assert (= bs!1095766 (and b!4701639 b!4701444)))

(assert (=> bs!1095766 (= lambda!210423 lambda!210367)))

(assert (=> bs!1095761 (= (= lt!1864193 lt!1864527) (= lambda!210423 lambda!210369))))

(declare-fun bs!1095767 () Bool)

(assert (= bs!1095767 (and b!4701639 b!4701620)))

(assert (=> bs!1095767 (= lambda!210423 lambda!210414)))

(assert (=> bs!1095762 (= (= lt!1864193 lt!1864716) (= lambda!210423 lambda!210412))))

(declare-fun bs!1095768 () Bool)

(assert (= bs!1095768 (and b!4701639 d!1495363)))

(assert (=> bs!1095768 (= (= lt!1864193 lt!1864532) (= lambda!210423 lambda!210370))))

(assert (=> bs!1095764 (= (= lt!1864193 lt!1864737) (= lambda!210423 lambda!210416))))

(assert (=> b!4701639 true))

(declare-fun lambda!210424 () Int)

(declare-fun lt!1864774 () ListMap!5049)

(assert (=> bs!1095757 (= (= lt!1864774 lt!1864721) (= lambda!210424 lambda!210413))))

(assert (=> bs!1095758 (= (= lt!1864774 lt!1864193) (= lambda!210424 lambda!210422))))

(assert (=> bs!1095759 (not (= lambda!210424 lambda!210394))))

(assert (=> b!4701639 (= (= lt!1864774 lt!1864193) (= lambda!210424 lambda!210423))))

(assert (=> bs!1095760 (= (= lt!1864774 lt!1864193) (= lambda!210424 lambda!210410))))

(assert (=> bs!1095761 (= (= lt!1864774 lt!1864193) (= lambda!210424 lambda!210368))))

(assert (=> bs!1095762 (= (= lt!1864774 lt!1864193) (= lambda!210424 lambda!210411))))

(assert (=> bs!1095763 (= (= lt!1864774 lt!1864742) (= lambda!210424 lambda!210417))))

(assert (=> bs!1095764 (= (= lt!1864774 lt!1864193) (= lambda!210424 lambda!210415))))

(assert (=> bs!1095765 (not (= lambda!210424 lambda!210285))))

(assert (=> bs!1095766 (= (= lt!1864774 lt!1864193) (= lambda!210424 lambda!210367))))

(assert (=> bs!1095761 (= (= lt!1864774 lt!1864527) (= lambda!210424 lambda!210369))))

(assert (=> bs!1095767 (= (= lt!1864774 lt!1864193) (= lambda!210424 lambda!210414))))

(assert (=> bs!1095762 (= (= lt!1864774 lt!1864716) (= lambda!210424 lambda!210412))))

(assert (=> bs!1095768 (= (= lt!1864774 lt!1864532) (= lambda!210424 lambda!210370))))

(assert (=> bs!1095764 (= (= lt!1864774 lt!1864737) (= lambda!210424 lambda!210416))))

(assert (=> b!4701639 true))

(declare-fun bs!1095769 () Bool)

(declare-fun d!1495583 () Bool)

(assert (= bs!1095769 (and d!1495583 d!1495565)))

(declare-fun lt!1864779 () ListMap!5049)

(declare-fun lambda!210425 () Int)

(assert (=> bs!1095769 (= (= lt!1864779 lt!1864721) (= lambda!210425 lambda!210413))))

(declare-fun bs!1095770 () Bool)

(assert (= bs!1095770 (and d!1495583 b!4701638)))

(assert (=> bs!1095770 (= (= lt!1864779 lt!1864193) (= lambda!210425 lambda!210422))))

(declare-fun bs!1095771 () Bool)

(assert (= bs!1095771 (and d!1495583 b!4701639)))

(assert (=> bs!1095771 (= (= lt!1864779 lt!1864774) (= lambda!210425 lambda!210424))))

(declare-fun bs!1095772 () Bool)

(assert (= bs!1095772 (and d!1495583 d!1495495)))

(assert (=> bs!1095772 (not (= lambda!210425 lambda!210394))))

(assert (=> bs!1095771 (= (= lt!1864779 lt!1864193) (= lambda!210425 lambda!210423))))

(declare-fun bs!1095773 () Bool)

(assert (= bs!1095773 (and d!1495583 b!4701615)))

(assert (=> bs!1095773 (= (= lt!1864779 lt!1864193) (= lambda!210425 lambda!210410))))

(declare-fun bs!1095774 () Bool)

(assert (= bs!1095774 (and d!1495583 b!4701445)))

(assert (=> bs!1095774 (= (= lt!1864779 lt!1864193) (= lambda!210425 lambda!210368))))

(declare-fun bs!1095775 () Bool)

(assert (= bs!1095775 (and d!1495583 b!4701616)))

(assert (=> bs!1095775 (= (= lt!1864779 lt!1864193) (= lambda!210425 lambda!210411))))

(declare-fun bs!1095776 () Bool)

(assert (= bs!1095776 (and d!1495583 d!1495567)))

(assert (=> bs!1095776 (= (= lt!1864779 lt!1864742) (= lambda!210425 lambda!210417))))

(declare-fun bs!1095777 () Bool)

(assert (= bs!1095777 (and d!1495583 b!4701621)))

(assert (=> bs!1095777 (= (= lt!1864779 lt!1864193) (= lambda!210425 lambda!210415))))

(declare-fun bs!1095778 () Bool)

(assert (= bs!1095778 (and d!1495583 d!1495361)))

(assert (=> bs!1095778 (not (= lambda!210425 lambda!210285))))

(declare-fun bs!1095779 () Bool)

(assert (= bs!1095779 (and d!1495583 b!4701444)))

(assert (=> bs!1095779 (= (= lt!1864779 lt!1864193) (= lambda!210425 lambda!210367))))

(assert (=> bs!1095774 (= (= lt!1864779 lt!1864527) (= lambda!210425 lambda!210369))))

(declare-fun bs!1095780 () Bool)

(assert (= bs!1095780 (and d!1495583 b!4701620)))

(assert (=> bs!1095780 (= (= lt!1864779 lt!1864193) (= lambda!210425 lambda!210414))))

(assert (=> bs!1095775 (= (= lt!1864779 lt!1864716) (= lambda!210425 lambda!210412))))

(declare-fun bs!1095781 () Bool)

(assert (= bs!1095781 (and d!1495583 d!1495363)))

(assert (=> bs!1095781 (= (= lt!1864779 lt!1864532) (= lambda!210425 lambda!210370))))

(assert (=> bs!1095777 (= (= lt!1864779 lt!1864737) (= lambda!210425 lambda!210416))))

(assert (=> d!1495583 true))

(declare-fun b!4701637 () Bool)

(declare-fun e!2932878 () Bool)

(declare-fun call!328702 () Bool)

(assert (=> b!4701637 (= e!2932878 call!328702)))

(declare-fun c!803670 () Bool)

(declare-fun call!328703 () Bool)

(declare-fun bm!328697 () Bool)

(assert (=> bm!328697 (= call!328703 (forall!11403 (ite c!803670 (toList!5685 lt!1864193) (t!359869 (Cons!52533 lt!1864184 lt!1864183))) (ite c!803670 lambda!210422 lambda!210424)))))

(declare-fun e!2932879 () ListMap!5049)

(assert (=> b!4701638 (= e!2932879 lt!1864193)))

(declare-fun lt!1864766 () Unit!126240)

(declare-fun call!328704 () Unit!126240)

(assert (=> b!4701638 (= lt!1864766 call!328704)))

(assert (=> b!4701638 call!328702))

(declare-fun lt!1864782 () Unit!126240)

(assert (=> b!4701638 (= lt!1864782 lt!1864766)))

(assert (=> b!4701638 call!328703))

(declare-fun lt!1864770 () Unit!126240)

(declare-fun Unit!126340 () Unit!126240)

(assert (=> b!4701638 (= lt!1864770 Unit!126340)))

(declare-fun b!4701640 () Bool)

(declare-fun e!2932880 () Bool)

(assert (=> b!4701640 (= e!2932880 (invariantList!1446 (toList!5685 lt!1864779)))))

(declare-fun bm!328698 () Bool)

(assert (=> bm!328698 (= call!328702 (forall!11403 (toList!5685 lt!1864193) (ite c!803670 lambda!210422 lambda!210424)))))

(declare-fun b!4701641 () Bool)

(declare-fun res!1985110 () Bool)

(assert (=> b!4701641 (=> (not res!1985110) (not e!2932880))))

(assert (=> b!4701641 (= res!1985110 (forall!11403 (toList!5685 lt!1864193) lambda!210425))))

(declare-fun bm!328699 () Bool)

(assert (=> bm!328699 (= call!328704 (lemmaContainsAllItsOwnKeys!734 lt!1864193))))

(assert (=> d!1495583 e!2932880))

(declare-fun res!1985111 () Bool)

(assert (=> d!1495583 (=> (not res!1985111) (not e!2932880))))

(assert (=> d!1495583 (= res!1985111 (forall!11403 (Cons!52533 lt!1864184 lt!1864183) lambda!210425))))

(assert (=> d!1495583 (= lt!1864779 e!2932879)))

(assert (=> d!1495583 (= c!803670 ((_ is Nil!52533) (Cons!52533 lt!1864184 lt!1864183)))))

(assert (=> d!1495583 (noDuplicateKeys!1898 (Cons!52533 lt!1864184 lt!1864183))))

(assert (=> d!1495583 (= (addToMapMapFromBucket!1330 (Cons!52533 lt!1864184 lt!1864183) lt!1864193) lt!1864779)))

(assert (=> b!4701639 (= e!2932879 lt!1864774)))

(declare-fun lt!1864777 () ListMap!5049)

(assert (=> b!4701639 (= lt!1864777 (+!2182 lt!1864193 (h!58814 (Cons!52533 lt!1864184 lt!1864183))))))

(assert (=> b!4701639 (= lt!1864774 (addToMapMapFromBucket!1330 (t!359869 (Cons!52533 lt!1864184 lt!1864183)) (+!2182 lt!1864193 (h!58814 (Cons!52533 lt!1864184 lt!1864183)))))))

(declare-fun lt!1864772 () Unit!126240)

(assert (=> b!4701639 (= lt!1864772 call!328704)))

(assert (=> b!4701639 (forall!11403 (toList!5685 lt!1864193) lambda!210423)))

(declare-fun lt!1864780 () Unit!126240)

(assert (=> b!4701639 (= lt!1864780 lt!1864772)))

(assert (=> b!4701639 (forall!11403 (toList!5685 lt!1864777) lambda!210424)))

(declare-fun lt!1864775 () Unit!126240)

(declare-fun Unit!126341 () Unit!126240)

(assert (=> b!4701639 (= lt!1864775 Unit!126341)))

(assert (=> b!4701639 call!328703))

(declare-fun lt!1864771 () Unit!126240)

(declare-fun Unit!126342 () Unit!126240)

(assert (=> b!4701639 (= lt!1864771 Unit!126342)))

(declare-fun lt!1864785 () Unit!126240)

(declare-fun Unit!126343 () Unit!126240)

(assert (=> b!4701639 (= lt!1864785 Unit!126343)))

(declare-fun lt!1864784 () Unit!126240)

(assert (=> b!4701639 (= lt!1864784 (forallContained!3510 (toList!5685 lt!1864777) lambda!210424 (h!58814 (Cons!52533 lt!1864184 lt!1864183))))))

(assert (=> b!4701639 (contains!15814 lt!1864777 (_1!30287 (h!58814 (Cons!52533 lt!1864184 lt!1864183))))))

(declare-fun lt!1864783 () Unit!126240)

(declare-fun Unit!126344 () Unit!126240)

(assert (=> b!4701639 (= lt!1864783 Unit!126344)))

(assert (=> b!4701639 (contains!15814 lt!1864774 (_1!30287 (h!58814 (Cons!52533 lt!1864184 lt!1864183))))))

(declare-fun lt!1864773 () Unit!126240)

(declare-fun Unit!126345 () Unit!126240)

(assert (=> b!4701639 (= lt!1864773 Unit!126345)))

(assert (=> b!4701639 (forall!11403 (Cons!52533 lt!1864184 lt!1864183) lambda!210424)))

(declare-fun lt!1864767 () Unit!126240)

(declare-fun Unit!126346 () Unit!126240)

(assert (=> b!4701639 (= lt!1864767 Unit!126346)))

(assert (=> b!4701639 (forall!11403 (toList!5685 lt!1864777) lambda!210424)))

(declare-fun lt!1864781 () Unit!126240)

(declare-fun Unit!126347 () Unit!126240)

(assert (=> b!4701639 (= lt!1864781 Unit!126347)))

(declare-fun lt!1864769 () Unit!126240)

(declare-fun Unit!126348 () Unit!126240)

(assert (=> b!4701639 (= lt!1864769 Unit!126348)))

(declare-fun lt!1864776 () Unit!126240)

(assert (=> b!4701639 (= lt!1864776 (addForallContainsKeyThenBeforeAdding!733 lt!1864193 lt!1864774 (_1!30287 (h!58814 (Cons!52533 lt!1864184 lt!1864183))) (_2!30287 (h!58814 (Cons!52533 lt!1864184 lt!1864183)))))))

(assert (=> b!4701639 (forall!11403 (toList!5685 lt!1864193) lambda!210424)))

(declare-fun lt!1864786 () Unit!126240)

(assert (=> b!4701639 (= lt!1864786 lt!1864776)))

(assert (=> b!4701639 (forall!11403 (toList!5685 lt!1864193) lambda!210424)))

(declare-fun lt!1864768 () Unit!126240)

(declare-fun Unit!126349 () Unit!126240)

(assert (=> b!4701639 (= lt!1864768 Unit!126349)))

(declare-fun res!1985112 () Bool)

(assert (=> b!4701639 (= res!1985112 (forall!11403 (Cons!52533 lt!1864184 lt!1864183) lambda!210424))))

(assert (=> b!4701639 (=> (not res!1985112) (not e!2932878))))

(assert (=> b!4701639 e!2932878))

(declare-fun lt!1864778 () Unit!126240)

(declare-fun Unit!126350 () Unit!126240)

(assert (=> b!4701639 (= lt!1864778 Unit!126350)))

(assert (= (and d!1495583 c!803670) b!4701638))

(assert (= (and d!1495583 (not c!803670)) b!4701639))

(assert (= (and b!4701639 res!1985112) b!4701637))

(assert (= (or b!4701638 b!4701639) bm!328699))

(assert (= (or b!4701638 b!4701637) bm!328698))

(assert (= (or b!4701638 b!4701639) bm!328697))

(assert (= (and d!1495583 res!1985111) b!4701641))

(assert (= (and b!4701641 res!1985110) b!4701640))

(declare-fun m!5617707 () Bool)

(assert (=> bm!328698 m!5617707))

(declare-fun m!5617709 () Bool)

(assert (=> b!4701639 m!5617709))

(declare-fun m!5617711 () Bool)

(assert (=> b!4701639 m!5617711))

(declare-fun m!5617713 () Bool)

(assert (=> b!4701639 m!5617713))

(assert (=> b!4701639 m!5617713))

(declare-fun m!5617715 () Bool)

(assert (=> b!4701639 m!5617715))

(declare-fun m!5617717 () Bool)

(assert (=> b!4701639 m!5617717))

(declare-fun m!5617719 () Bool)

(assert (=> b!4701639 m!5617719))

(declare-fun m!5617721 () Bool)

(assert (=> b!4701639 m!5617721))

(declare-fun m!5617723 () Bool)

(assert (=> b!4701639 m!5617723))

(declare-fun m!5617725 () Bool)

(assert (=> b!4701639 m!5617725))

(assert (=> b!4701639 m!5617723))

(assert (=> b!4701639 m!5617719))

(assert (=> b!4701639 m!5617711))

(declare-fun m!5617727 () Bool)

(assert (=> b!4701639 m!5617727))

(declare-fun m!5617729 () Bool)

(assert (=> b!4701641 m!5617729))

(assert (=> bm!328699 m!5617149))

(declare-fun m!5617731 () Bool)

(assert (=> b!4701640 m!5617731))

(declare-fun m!5617733 () Bool)

(assert (=> bm!328697 m!5617733))

(declare-fun m!5617735 () Bool)

(assert (=> d!1495583 m!5617735))

(declare-fun m!5617737 () Bool)

(assert (=> d!1495583 m!5617737))

(assert (=> b!4701195 d!1495583))

(declare-fun bs!1095782 () Bool)

(declare-fun b!4701643 () Bool)

(assert (= bs!1095782 (and b!4701643 d!1495565)))

(declare-fun lambda!210426 () Int)

(assert (=> bs!1095782 (= (= lt!1864193 lt!1864721) (= lambda!210426 lambda!210413))))

(declare-fun bs!1095783 () Bool)

(assert (= bs!1095783 (and b!4701643 b!4701638)))

(assert (=> bs!1095783 (= lambda!210426 lambda!210422)))

(declare-fun bs!1095784 () Bool)

(assert (= bs!1095784 (and b!4701643 b!4701639)))

(assert (=> bs!1095784 (= (= lt!1864193 lt!1864774) (= lambda!210426 lambda!210424))))

(declare-fun bs!1095785 () Bool)

(assert (= bs!1095785 (and b!4701643 d!1495495)))

(assert (=> bs!1095785 (not (= lambda!210426 lambda!210394))))

(assert (=> bs!1095784 (= lambda!210426 lambda!210423)))

(declare-fun bs!1095786 () Bool)

(assert (= bs!1095786 (and b!4701643 b!4701615)))

(assert (=> bs!1095786 (= lambda!210426 lambda!210410)))

(declare-fun bs!1095787 () Bool)

(assert (= bs!1095787 (and b!4701643 b!4701445)))

(assert (=> bs!1095787 (= lambda!210426 lambda!210368)))

(declare-fun bs!1095788 () Bool)

(assert (= bs!1095788 (and b!4701643 b!4701616)))

(assert (=> bs!1095788 (= lambda!210426 lambda!210411)))

(declare-fun bs!1095789 () Bool)

(assert (= bs!1095789 (and b!4701643 d!1495567)))

(assert (=> bs!1095789 (= (= lt!1864193 lt!1864742) (= lambda!210426 lambda!210417))))

(declare-fun bs!1095790 () Bool)

(assert (= bs!1095790 (and b!4701643 d!1495583)))

(assert (=> bs!1095790 (= (= lt!1864193 lt!1864779) (= lambda!210426 lambda!210425))))

(declare-fun bs!1095791 () Bool)

(assert (= bs!1095791 (and b!4701643 b!4701621)))

(assert (=> bs!1095791 (= lambda!210426 lambda!210415)))

(declare-fun bs!1095792 () Bool)

(assert (= bs!1095792 (and b!4701643 d!1495361)))

(assert (=> bs!1095792 (not (= lambda!210426 lambda!210285))))

(declare-fun bs!1095793 () Bool)

(assert (= bs!1095793 (and b!4701643 b!4701444)))

(assert (=> bs!1095793 (= lambda!210426 lambda!210367)))

(assert (=> bs!1095787 (= (= lt!1864193 lt!1864527) (= lambda!210426 lambda!210369))))

(declare-fun bs!1095794 () Bool)

(assert (= bs!1095794 (and b!4701643 b!4701620)))

(assert (=> bs!1095794 (= lambda!210426 lambda!210414)))

(assert (=> bs!1095788 (= (= lt!1864193 lt!1864716) (= lambda!210426 lambda!210412))))

(declare-fun bs!1095795 () Bool)

(assert (= bs!1095795 (and b!4701643 d!1495363)))

(assert (=> bs!1095795 (= (= lt!1864193 lt!1864532) (= lambda!210426 lambda!210370))))

(assert (=> bs!1095791 (= (= lt!1864193 lt!1864737) (= lambda!210426 lambda!210416))))

(assert (=> b!4701643 true))

(declare-fun bs!1095796 () Bool)

(declare-fun b!4701644 () Bool)

(assert (= bs!1095796 (and b!4701644 d!1495565)))

(declare-fun lambda!210427 () Int)

(assert (=> bs!1095796 (= (= lt!1864193 lt!1864721) (= lambda!210427 lambda!210413))))

(declare-fun bs!1095797 () Bool)

(assert (= bs!1095797 (and b!4701644 b!4701638)))

(assert (=> bs!1095797 (= lambda!210427 lambda!210422)))

(declare-fun bs!1095798 () Bool)

(assert (= bs!1095798 (and b!4701644 b!4701639)))

(assert (=> bs!1095798 (= (= lt!1864193 lt!1864774) (= lambda!210427 lambda!210424))))

(declare-fun bs!1095799 () Bool)

(assert (= bs!1095799 (and b!4701644 d!1495495)))

(assert (=> bs!1095799 (not (= lambda!210427 lambda!210394))))

(assert (=> bs!1095798 (= lambda!210427 lambda!210423)))

(declare-fun bs!1095800 () Bool)

(assert (= bs!1095800 (and b!4701644 b!4701615)))

(assert (=> bs!1095800 (= lambda!210427 lambda!210410)))

(declare-fun bs!1095801 () Bool)

(assert (= bs!1095801 (and b!4701644 b!4701616)))

(assert (=> bs!1095801 (= lambda!210427 lambda!210411)))

(declare-fun bs!1095802 () Bool)

(assert (= bs!1095802 (and b!4701644 d!1495567)))

(assert (=> bs!1095802 (= (= lt!1864193 lt!1864742) (= lambda!210427 lambda!210417))))

(declare-fun bs!1095803 () Bool)

(assert (= bs!1095803 (and b!4701644 d!1495583)))

(assert (=> bs!1095803 (= (= lt!1864193 lt!1864779) (= lambda!210427 lambda!210425))))

(declare-fun bs!1095804 () Bool)

(assert (= bs!1095804 (and b!4701644 b!4701621)))

(assert (=> bs!1095804 (= lambda!210427 lambda!210415)))

(declare-fun bs!1095805 () Bool)

(assert (= bs!1095805 (and b!4701644 d!1495361)))

(assert (=> bs!1095805 (not (= lambda!210427 lambda!210285))))

(declare-fun bs!1095806 () Bool)

(assert (= bs!1095806 (and b!4701644 b!4701444)))

(assert (=> bs!1095806 (= lambda!210427 lambda!210367)))

(declare-fun bs!1095807 () Bool)

(assert (= bs!1095807 (and b!4701644 b!4701445)))

(assert (=> bs!1095807 (= (= lt!1864193 lt!1864527) (= lambda!210427 lambda!210369))))

(declare-fun bs!1095808 () Bool)

(assert (= bs!1095808 (and b!4701644 b!4701620)))

(assert (=> bs!1095808 (= lambda!210427 lambda!210414)))

(assert (=> bs!1095801 (= (= lt!1864193 lt!1864716) (= lambda!210427 lambda!210412))))

(declare-fun bs!1095809 () Bool)

(assert (= bs!1095809 (and b!4701644 d!1495363)))

(assert (=> bs!1095809 (= (= lt!1864193 lt!1864532) (= lambda!210427 lambda!210370))))

(assert (=> bs!1095804 (= (= lt!1864193 lt!1864737) (= lambda!210427 lambda!210416))))

(assert (=> bs!1095807 (= lambda!210427 lambda!210368)))

(declare-fun bs!1095810 () Bool)

(assert (= bs!1095810 (and b!4701644 b!4701643)))

(assert (=> bs!1095810 (= lambda!210427 lambda!210426)))

(assert (=> b!4701644 true))

(declare-fun lt!1864795 () ListMap!5049)

(declare-fun lambda!210428 () Int)

(assert (=> bs!1095796 (= (= lt!1864795 lt!1864721) (= lambda!210428 lambda!210413))))

(assert (=> bs!1095797 (= (= lt!1864795 lt!1864193) (= lambda!210428 lambda!210422))))

(assert (=> bs!1095798 (= (= lt!1864795 lt!1864774) (= lambda!210428 lambda!210424))))

(assert (=> bs!1095799 (not (= lambda!210428 lambda!210394))))

(assert (=> bs!1095798 (= (= lt!1864795 lt!1864193) (= lambda!210428 lambda!210423))))

(assert (=> bs!1095800 (= (= lt!1864795 lt!1864193) (= lambda!210428 lambda!210410))))

(assert (=> bs!1095801 (= (= lt!1864795 lt!1864193) (= lambda!210428 lambda!210411))))

(assert (=> bs!1095802 (= (= lt!1864795 lt!1864742) (= lambda!210428 lambda!210417))))

(assert (=> b!4701644 (= (= lt!1864795 lt!1864193) (= lambda!210428 lambda!210427))))

(assert (=> bs!1095803 (= (= lt!1864795 lt!1864779) (= lambda!210428 lambda!210425))))

(assert (=> bs!1095804 (= (= lt!1864795 lt!1864193) (= lambda!210428 lambda!210415))))

(assert (=> bs!1095805 (not (= lambda!210428 lambda!210285))))

(assert (=> bs!1095806 (= (= lt!1864795 lt!1864193) (= lambda!210428 lambda!210367))))

(assert (=> bs!1095807 (= (= lt!1864795 lt!1864527) (= lambda!210428 lambda!210369))))

(assert (=> bs!1095808 (= (= lt!1864795 lt!1864193) (= lambda!210428 lambda!210414))))

(assert (=> bs!1095801 (= (= lt!1864795 lt!1864716) (= lambda!210428 lambda!210412))))

(assert (=> bs!1095809 (= (= lt!1864795 lt!1864532) (= lambda!210428 lambda!210370))))

(assert (=> bs!1095804 (= (= lt!1864795 lt!1864737) (= lambda!210428 lambda!210416))))

(assert (=> bs!1095807 (= (= lt!1864795 lt!1864193) (= lambda!210428 lambda!210368))))

(assert (=> bs!1095810 (= (= lt!1864795 lt!1864193) (= lambda!210428 lambda!210426))))

(assert (=> b!4701644 true))

(declare-fun bs!1095811 () Bool)

(declare-fun d!1495585 () Bool)

(assert (= bs!1095811 (and d!1495585 b!4701638)))

(declare-fun lambda!210429 () Int)

(declare-fun lt!1864800 () ListMap!5049)

(assert (=> bs!1095811 (= (= lt!1864800 lt!1864193) (= lambda!210429 lambda!210422))))

(declare-fun bs!1095812 () Bool)

(assert (= bs!1095812 (and d!1495585 b!4701639)))

(assert (=> bs!1095812 (= (= lt!1864800 lt!1864774) (= lambda!210429 lambda!210424))))

(declare-fun bs!1095813 () Bool)

(assert (= bs!1095813 (and d!1495585 d!1495495)))

(assert (=> bs!1095813 (not (= lambda!210429 lambda!210394))))

(assert (=> bs!1095812 (= (= lt!1864800 lt!1864193) (= lambda!210429 lambda!210423))))

(declare-fun bs!1095814 () Bool)

(assert (= bs!1095814 (and d!1495585 b!4701615)))

(assert (=> bs!1095814 (= (= lt!1864800 lt!1864193) (= lambda!210429 lambda!210410))))

(declare-fun bs!1095815 () Bool)

(assert (= bs!1095815 (and d!1495585 b!4701616)))

(assert (=> bs!1095815 (= (= lt!1864800 lt!1864193) (= lambda!210429 lambda!210411))))

(declare-fun bs!1095816 () Bool)

(assert (= bs!1095816 (and d!1495585 d!1495567)))

(assert (=> bs!1095816 (= (= lt!1864800 lt!1864742) (= lambda!210429 lambda!210417))))

(declare-fun bs!1095817 () Bool)

(assert (= bs!1095817 (and d!1495585 b!4701644)))

(assert (=> bs!1095817 (= (= lt!1864800 lt!1864193) (= lambda!210429 lambda!210427))))

(declare-fun bs!1095818 () Bool)

(assert (= bs!1095818 (and d!1495585 d!1495583)))

(assert (=> bs!1095818 (= (= lt!1864800 lt!1864779) (= lambda!210429 lambda!210425))))

(assert (=> bs!1095817 (= (= lt!1864800 lt!1864795) (= lambda!210429 lambda!210428))))

(declare-fun bs!1095819 () Bool)

(assert (= bs!1095819 (and d!1495585 d!1495565)))

(assert (=> bs!1095819 (= (= lt!1864800 lt!1864721) (= lambda!210429 lambda!210413))))

(declare-fun bs!1095820 () Bool)

(assert (= bs!1095820 (and d!1495585 b!4701621)))

(assert (=> bs!1095820 (= (= lt!1864800 lt!1864193) (= lambda!210429 lambda!210415))))

(declare-fun bs!1095821 () Bool)

(assert (= bs!1095821 (and d!1495585 d!1495361)))

(assert (=> bs!1095821 (not (= lambda!210429 lambda!210285))))

(declare-fun bs!1095822 () Bool)

(assert (= bs!1095822 (and d!1495585 b!4701444)))

(assert (=> bs!1095822 (= (= lt!1864800 lt!1864193) (= lambda!210429 lambda!210367))))

(declare-fun bs!1095823 () Bool)

(assert (= bs!1095823 (and d!1495585 b!4701445)))

(assert (=> bs!1095823 (= (= lt!1864800 lt!1864527) (= lambda!210429 lambda!210369))))

(declare-fun bs!1095824 () Bool)

(assert (= bs!1095824 (and d!1495585 b!4701620)))

(assert (=> bs!1095824 (= (= lt!1864800 lt!1864193) (= lambda!210429 lambda!210414))))

(assert (=> bs!1095815 (= (= lt!1864800 lt!1864716) (= lambda!210429 lambda!210412))))

(declare-fun bs!1095825 () Bool)

(assert (= bs!1095825 (and d!1495585 d!1495363)))

(assert (=> bs!1095825 (= (= lt!1864800 lt!1864532) (= lambda!210429 lambda!210370))))

(assert (=> bs!1095820 (= (= lt!1864800 lt!1864737) (= lambda!210429 lambda!210416))))

(assert (=> bs!1095823 (= (= lt!1864800 lt!1864193) (= lambda!210429 lambda!210368))))

(declare-fun bs!1095826 () Bool)

(assert (= bs!1095826 (and d!1495585 b!4701643)))

(assert (=> bs!1095826 (= (= lt!1864800 lt!1864193) (= lambda!210429 lambda!210426))))

(assert (=> d!1495585 true))

(declare-fun b!4701642 () Bool)

(declare-fun e!2932881 () Bool)

(declare-fun call!328705 () Bool)

(assert (=> b!4701642 (= e!2932881 call!328705)))

(declare-fun bm!328700 () Bool)

(declare-fun call!328706 () Bool)

(declare-fun c!803671 () Bool)

(assert (=> bm!328700 (= call!328706 (forall!11403 (ite c!803671 (toList!5685 lt!1864193) (t!359869 lt!1864183)) (ite c!803671 lambda!210426 lambda!210428)))))

(declare-fun e!2932882 () ListMap!5049)

(assert (=> b!4701643 (= e!2932882 lt!1864193)))

(declare-fun lt!1864787 () Unit!126240)

(declare-fun call!328707 () Unit!126240)

(assert (=> b!4701643 (= lt!1864787 call!328707)))

(assert (=> b!4701643 call!328705))

(declare-fun lt!1864803 () Unit!126240)

(assert (=> b!4701643 (= lt!1864803 lt!1864787)))

(assert (=> b!4701643 call!328706))

(declare-fun lt!1864791 () Unit!126240)

(declare-fun Unit!126351 () Unit!126240)

(assert (=> b!4701643 (= lt!1864791 Unit!126351)))

(declare-fun b!4701645 () Bool)

(declare-fun e!2932883 () Bool)

(assert (=> b!4701645 (= e!2932883 (invariantList!1446 (toList!5685 lt!1864800)))))

(declare-fun bm!328701 () Bool)

(assert (=> bm!328701 (= call!328705 (forall!11403 (toList!5685 lt!1864193) (ite c!803671 lambda!210426 lambda!210428)))))

(declare-fun b!4701646 () Bool)

(declare-fun res!1985113 () Bool)

(assert (=> b!4701646 (=> (not res!1985113) (not e!2932883))))

(assert (=> b!4701646 (= res!1985113 (forall!11403 (toList!5685 lt!1864193) lambda!210429))))

(declare-fun bm!328702 () Bool)

(assert (=> bm!328702 (= call!328707 (lemmaContainsAllItsOwnKeys!734 lt!1864193))))

(assert (=> d!1495585 e!2932883))

(declare-fun res!1985114 () Bool)

(assert (=> d!1495585 (=> (not res!1985114) (not e!2932883))))

(assert (=> d!1495585 (= res!1985114 (forall!11403 lt!1864183 lambda!210429))))

(assert (=> d!1495585 (= lt!1864800 e!2932882)))

(assert (=> d!1495585 (= c!803671 ((_ is Nil!52533) lt!1864183))))

(assert (=> d!1495585 (noDuplicateKeys!1898 lt!1864183)))

(assert (=> d!1495585 (= (addToMapMapFromBucket!1330 lt!1864183 lt!1864193) lt!1864800)))

(assert (=> b!4701644 (= e!2932882 lt!1864795)))

(declare-fun lt!1864798 () ListMap!5049)

(assert (=> b!4701644 (= lt!1864798 (+!2182 lt!1864193 (h!58814 lt!1864183)))))

(assert (=> b!4701644 (= lt!1864795 (addToMapMapFromBucket!1330 (t!359869 lt!1864183) (+!2182 lt!1864193 (h!58814 lt!1864183))))))

(declare-fun lt!1864793 () Unit!126240)

(assert (=> b!4701644 (= lt!1864793 call!328707)))

(assert (=> b!4701644 (forall!11403 (toList!5685 lt!1864193) lambda!210427)))

(declare-fun lt!1864801 () Unit!126240)

(assert (=> b!4701644 (= lt!1864801 lt!1864793)))

(assert (=> b!4701644 (forall!11403 (toList!5685 lt!1864798) lambda!210428)))

(declare-fun lt!1864796 () Unit!126240)

(declare-fun Unit!126352 () Unit!126240)

(assert (=> b!4701644 (= lt!1864796 Unit!126352)))

(assert (=> b!4701644 call!328706))

(declare-fun lt!1864792 () Unit!126240)

(declare-fun Unit!126353 () Unit!126240)

(assert (=> b!4701644 (= lt!1864792 Unit!126353)))

(declare-fun lt!1864806 () Unit!126240)

(declare-fun Unit!126354 () Unit!126240)

(assert (=> b!4701644 (= lt!1864806 Unit!126354)))

(declare-fun lt!1864805 () Unit!126240)

(assert (=> b!4701644 (= lt!1864805 (forallContained!3510 (toList!5685 lt!1864798) lambda!210428 (h!58814 lt!1864183)))))

(assert (=> b!4701644 (contains!15814 lt!1864798 (_1!30287 (h!58814 lt!1864183)))))

(declare-fun lt!1864804 () Unit!126240)

(declare-fun Unit!126355 () Unit!126240)

(assert (=> b!4701644 (= lt!1864804 Unit!126355)))

(assert (=> b!4701644 (contains!15814 lt!1864795 (_1!30287 (h!58814 lt!1864183)))))

(declare-fun lt!1864794 () Unit!126240)

(declare-fun Unit!126356 () Unit!126240)

(assert (=> b!4701644 (= lt!1864794 Unit!126356)))

(assert (=> b!4701644 (forall!11403 lt!1864183 lambda!210428)))

(declare-fun lt!1864788 () Unit!126240)

(declare-fun Unit!126357 () Unit!126240)

(assert (=> b!4701644 (= lt!1864788 Unit!126357)))

(assert (=> b!4701644 (forall!11403 (toList!5685 lt!1864798) lambda!210428)))

(declare-fun lt!1864802 () Unit!126240)

(declare-fun Unit!126358 () Unit!126240)

(assert (=> b!4701644 (= lt!1864802 Unit!126358)))

(declare-fun lt!1864790 () Unit!126240)

(declare-fun Unit!126359 () Unit!126240)

(assert (=> b!4701644 (= lt!1864790 Unit!126359)))

(declare-fun lt!1864797 () Unit!126240)

(assert (=> b!4701644 (= lt!1864797 (addForallContainsKeyThenBeforeAdding!733 lt!1864193 lt!1864795 (_1!30287 (h!58814 lt!1864183)) (_2!30287 (h!58814 lt!1864183))))))

(assert (=> b!4701644 (forall!11403 (toList!5685 lt!1864193) lambda!210428)))

(declare-fun lt!1864807 () Unit!126240)

(assert (=> b!4701644 (= lt!1864807 lt!1864797)))

(assert (=> b!4701644 (forall!11403 (toList!5685 lt!1864193) lambda!210428)))

(declare-fun lt!1864789 () Unit!126240)

(declare-fun Unit!126360 () Unit!126240)

(assert (=> b!4701644 (= lt!1864789 Unit!126360)))

(declare-fun res!1985115 () Bool)

(assert (=> b!4701644 (= res!1985115 (forall!11403 lt!1864183 lambda!210428))))

(assert (=> b!4701644 (=> (not res!1985115) (not e!2932881))))

(assert (=> b!4701644 e!2932881))

(declare-fun lt!1864799 () Unit!126240)

(declare-fun Unit!126361 () Unit!126240)

(assert (=> b!4701644 (= lt!1864799 Unit!126361)))

(assert (= (and d!1495585 c!803671) b!4701643))

(assert (= (and d!1495585 (not c!803671)) b!4701644))

(assert (= (and b!4701644 res!1985115) b!4701642))

(assert (= (or b!4701643 b!4701644) bm!328702))

(assert (= (or b!4701643 b!4701642) bm!328701))

(assert (= (or b!4701643 b!4701644) bm!328700))

(assert (= (and d!1495585 res!1985114) b!4701646))

(assert (= (and b!4701646 res!1985113) b!4701645))

(declare-fun m!5617739 () Bool)

(assert (=> bm!328701 m!5617739))

(declare-fun m!5617741 () Bool)

(assert (=> b!4701644 m!5617741))

(declare-fun m!5617743 () Bool)

(assert (=> b!4701644 m!5617743))

(declare-fun m!5617745 () Bool)

(assert (=> b!4701644 m!5617745))

(assert (=> b!4701644 m!5617745))

(declare-fun m!5617747 () Bool)

(assert (=> b!4701644 m!5617747))

(declare-fun m!5617749 () Bool)

(assert (=> b!4701644 m!5617749))

(declare-fun m!5617751 () Bool)

(assert (=> b!4701644 m!5617751))

(declare-fun m!5617753 () Bool)

(assert (=> b!4701644 m!5617753))

(declare-fun m!5617755 () Bool)

(assert (=> b!4701644 m!5617755))

(declare-fun m!5617757 () Bool)

(assert (=> b!4701644 m!5617757))

(assert (=> b!4701644 m!5617755))

(assert (=> b!4701644 m!5617751))

(assert (=> b!4701644 m!5617743))

(declare-fun m!5617759 () Bool)

(assert (=> b!4701644 m!5617759))

(declare-fun m!5617761 () Bool)

(assert (=> b!4701646 m!5617761))

(assert (=> bm!328702 m!5617149))

(declare-fun m!5617763 () Bool)

(assert (=> b!4701645 m!5617763))

(declare-fun m!5617765 () Bool)

(assert (=> bm!328700 m!5617765))

(declare-fun m!5617767 () Bool)

(assert (=> d!1495585 m!5617767))

(assert (=> d!1495585 m!5616845))

(assert (=> b!4701195 d!1495585))

(declare-fun d!1495587 () Bool)

(declare-fun lt!1864808 () List!52657)

(assert (=> d!1495587 (not (containsKey!3169 lt!1864808 key!4653))))

(declare-fun e!2932884 () List!52657)

(assert (=> d!1495587 (= lt!1864808 e!2932884)))

(declare-fun c!803672 () Bool)

(assert (=> d!1495587 (= c!803672 (and ((_ is Cons!52533) (t!359869 oldBucket!34)) (= (_1!30287 (h!58814 (t!359869 oldBucket!34))) key!4653)))))

(assert (=> d!1495587 (noDuplicateKeys!1898 (t!359869 oldBucket!34))))

(assert (=> d!1495587 (= (removePairForKey!1493 (t!359869 oldBucket!34) key!4653) lt!1864808)))

(declare-fun b!4701650 () Bool)

(declare-fun e!2932885 () List!52657)

(assert (=> b!4701650 (= e!2932885 Nil!52533)))

(declare-fun b!4701647 () Bool)

(assert (=> b!4701647 (= e!2932884 (t!359869 (t!359869 oldBucket!34)))))

(declare-fun b!4701648 () Bool)

(assert (=> b!4701648 (= e!2932884 e!2932885)))

(declare-fun c!803673 () Bool)

(assert (=> b!4701648 (= c!803673 ((_ is Cons!52533) (t!359869 oldBucket!34)))))

(declare-fun b!4701649 () Bool)

(assert (=> b!4701649 (= e!2932885 (Cons!52533 (h!58814 (t!359869 oldBucket!34)) (removePairForKey!1493 (t!359869 (t!359869 oldBucket!34)) key!4653)))))

(assert (= (and d!1495587 c!803672) b!4701647))

(assert (= (and d!1495587 (not c!803672)) b!4701648))

(assert (= (and b!4701648 c!803673) b!4701649))

(assert (= (and b!4701648 (not c!803673)) b!4701650))

(declare-fun m!5617769 () Bool)

(assert (=> d!1495587 m!5617769))

(assert (=> d!1495587 m!5617171))

(declare-fun m!5617771 () Bool)

(assert (=> b!4701649 m!5617771))

(assert (=> b!4701184 d!1495587))

(declare-fun tp!1346686 () Bool)

(declare-fun e!2932888 () Bool)

(declare-fun b!4701655 () Bool)

(assert (=> b!4701655 (= e!2932888 (and tp_is_empty!30885 tp_is_empty!30887 tp!1346686))))

(assert (=> b!4701170 (= tp!1346671 e!2932888)))

(assert (= (and b!4701170 ((_ is Cons!52533) (t!359869 oldBucket!34))) b!4701655))

(declare-fun e!2932889 () Bool)

(declare-fun b!4701656 () Bool)

(declare-fun tp!1346687 () Bool)

(assert (=> b!4701656 (= e!2932889 (and tp_is_empty!30885 tp_is_empty!30887 tp!1346687))))

(assert (=> b!4701174 (= tp!1346672 e!2932889)))

(assert (= (and b!4701174 ((_ is Cons!52533) (t!359869 newBucket!218))) b!4701656))

(declare-fun b!4701661 () Bool)

(declare-fun e!2932892 () Bool)

(declare-fun tp!1346692 () Bool)

(declare-fun tp!1346693 () Bool)

(assert (=> b!4701661 (= e!2932892 (and tp!1346692 tp!1346693))))

(assert (=> b!4701179 (= tp!1346673 e!2932892)))

(assert (= (and b!4701179 ((_ is Cons!52534) (toList!5686 lm!2023))) b!4701661))

(declare-fun b_lambda!177399 () Bool)

(assert (= b_lambda!177389 (or start!476836 b_lambda!177399)))

(declare-fun bs!1095827 () Bool)

(declare-fun d!1495589 () Bool)

(assert (= bs!1095827 (and d!1495589 start!476836)))

(assert (=> bs!1095827 (= (dynLambda!21748 lambda!210267 lt!1864175) (noDuplicateKeys!1898 (_2!30288 lt!1864175)))))

(declare-fun m!5617773 () Bool)

(assert (=> bs!1095827 m!5617773))

(assert (=> d!1495431 d!1495589))

(declare-fun b_lambda!177401 () Bool)

(assert (= b_lambda!177381 (or start!476836 b_lambda!177401)))

(declare-fun bs!1095828 () Bool)

(declare-fun d!1495591 () Bool)

(assert (= bs!1095828 (and d!1495591 start!476836)))

(assert (=> bs!1095828 (= (dynLambda!21748 lambda!210267 (h!58815 lt!1864164)) (noDuplicateKeys!1898 (_2!30288 (h!58815 lt!1864164))))))

(declare-fun m!5617775 () Bool)

(assert (=> bs!1095828 m!5617775))

(assert (=> b!4701200 d!1495591))

(declare-fun b_lambda!177403 () Bool)

(assert (= b_lambda!177383 (or start!476836 b_lambda!177403)))

(declare-fun bs!1095829 () Bool)

(declare-fun d!1495593 () Bool)

(assert (= bs!1095829 (and d!1495593 start!476836)))

(assert (=> bs!1095829 (= (dynLambda!21748 lambda!210267 (h!58815 (toList!5686 lm!2023))) (noDuplicateKeys!1898 (_2!30288 (h!58815 (toList!5686 lm!2023)))))))

(assert (=> bs!1095829 m!5617157))

(assert (=> b!4701263 d!1495593))

(check-sat (not b!4701296) (not bm!328686) (not d!1495437) (not d!1495469) (not bm!328695) (not b!4701623) (not bs!1095828) (not b!4701628) (not b!4701297) (not b!4701541) (not b!4701655) (not b_lambda!177401) (not b!4701635) (not d!1495347) (not d!1495521) (not d!1495495) (not b!4701624) (not b!4701253) (not bm!328701) (not b!4701645) (not d!1495345) (not b!4701618) (not b!4701460) (not b!4701578) (not b!4701528) (not bm!328700) (not d!1495499) (not d!1495297) (not d!1495575) (not d!1495351) (not d!1495427) (not d!1495355) (not b!4701226) (not d!1495329) (not bm!328692) (not d!1495339) (not b!4701446) (not d!1495569) (not d!1495507) (not b!4701530) (not d!1495343) (not d!1495301) (not b!4701272) (not d!1495431) (not d!1495317) (not bm!328684) (not b!4701445) (not d!1495555) (not d!1495581) (not b!4701609) (not b!4701629) (not d!1495587) (not d!1495513) (not d!1495509) (not b!4701616) (not d!1495341) (not b!4701568) (not b!4701504) (not b!4701612) (not d!1495363) (not d!1495553) (not d!1495551) (not d!1495293) (not bm!328693) (not b!4701661) (not b!4701630) (not d!1495583) (not b!4701314) (not b!4701266) (not b!4701293) (not b!4701262) (not d!1495331) (not b!4701532) (not d!1495511) (not b!4701265) (not b!4701656) (not b_lambda!177403) (not d!1495501) (not b!4701633) (not bm!328691) (not bm!328690) (not b!4701201) (not d!1495353) (not d!1495303) (not b!4701571) (not b!4701622) (not b!4701533) (not b!4701577) (not b!4701625) (not b!4701617) (not b!4701562) (not b!4701560) (not d!1495567) (not b!4701507) (not b!4701450) (not b!4701218) (not b!4701294) (not b!4701299) (not d!1495563) (not b!4701558) (not b!4701646) (not b!4701601) (not b!4701301) (not d!1495461) (not bm!328699) (not bm!328685) (not b!4701569) (not b!4701570) (not b!4701641) tp_is_empty!30885 (not bm!328694) (not bm!328702) (not d!1495483) (not d!1495505) (not d!1495349) (not b!4701575) (not bm!328698) (not b!4701298) (not b!4701505) (not d!1495527) (not b!4701447) (not bm!328697) (not b!4701457) (not b!4701274) (not b!4701237) (not d!1495497) (not b!4701627) (not b!4701583) (not d!1495361) (not b_lambda!177399) (not b!4701264) tp_is_empty!30887 (not d!1495491) (not d!1495565) (not b!4701506) (not d!1495503) (not b!4701534) (not d!1495335) (not d!1495585) (not b!4701640) (not b!4701644) (not b!4701271) (not d!1495523) (not d!1495433) (not bs!1095827) (not b!4701273) (not d!1495571) (not d!1495487) (not b!4701621) (not b!4701602) (not d!1495435) (not b!4701456) (not b!4701639) (not b!4701649) (not d!1495579) (not d!1495425) (not b!4701613) (not d!1495463) (not d!1495573) (not bm!328658) (not b!4701572) (not d!1495333) (not b!4701632) (not bs!1095829) (not d!1495307) (not bm!328696) (not b!4701634) (not b!4701302))
(check-sat)
