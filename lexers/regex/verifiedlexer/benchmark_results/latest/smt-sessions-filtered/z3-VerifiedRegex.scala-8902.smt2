; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!477268 () Bool)

(assert start!477268)

(declare-fun b!4703195 () Bool)

(declare-fun res!1986124 () Bool)

(declare-fun e!2933820 () Bool)

(assert (=> b!4703195 (=> (not res!1986124) (not e!2933820))))

(declare-datatypes ((K!13915 0))(
  ( (K!13916 (val!19403 Int)) )
))
(declare-datatypes ((V!14161 0))(
  ( (V!14162 (val!19404 Int)) )
))
(declare-datatypes ((tuple2!54018 0))(
  ( (tuple2!54019 (_1!30303 K!13915) (_2!30303 V!14161)) )
))
(declare-datatypes ((List!52679 0))(
  ( (Nil!52555) (Cons!52555 (h!58842 tuple2!54018) (t!359897 List!52679)) )
))
(declare-datatypes ((tuple2!54020 0))(
  ( (tuple2!54021 (_1!30304 (_ BitVec 64)) (_2!30304 List!52679)) )
))
(declare-datatypes ((List!52680 0))(
  ( (Nil!52556) (Cons!52556 (h!58843 tuple2!54020) (t!359898 List!52680)) )
))
(declare-datatypes ((ListLongMap!4231 0))(
  ( (ListLongMap!4232 (toList!5701 List!52680)) )
))
(declare-fun lm!2023 () ListLongMap!4231)

(get-info :version)

(assert (=> b!4703195 (= res!1986124 ((_ is Cons!52556) (toList!5701 lm!2023)))))

(declare-fun b!4703196 () Bool)

(declare-fun res!1986127 () Bool)

(declare-fun e!2933807 () Bool)

(assert (=> b!4703196 (=> (not res!1986127) (not e!2933807))))

(declare-fun key!4653 () K!13915)

(declare-fun oldBucket!34 () List!52679)

(declare-fun newBucket!218 () List!52679)

(declare-fun removePairForKey!1501 (List!52679 K!13915) List!52679)

(assert (=> b!4703196 (= res!1986127 (= (removePairForKey!1501 oldBucket!34 key!4653) newBucket!218))))

(declare-fun b!4703197 () Bool)

(declare-fun res!1986135 () Bool)

(assert (=> b!4703197 (=> (not res!1986135) (not e!2933807))))

(declare-fun noDuplicateKeys!1906 (List!52679) Bool)

(assert (=> b!4703197 (= res!1986135 (noDuplicateKeys!1906 newBucket!218))))

(declare-fun b!4703198 () Bool)

(declare-fun e!2933811 () Bool)

(assert (=> b!4703198 (= e!2933811 e!2933820)))

(declare-fun res!1986133 () Bool)

(assert (=> b!4703198 (=> (not res!1986133) (not e!2933820))))

(declare-fun lt!1866944 () tuple2!54020)

(declare-fun head!10075 (List!52680) tuple2!54020)

(assert (=> b!4703198 (= res!1986133 (= (head!10075 (toList!5701 lm!2023)) lt!1866944))))

(declare-fun hash!405 () (_ BitVec 64))

(assert (=> b!4703198 (= lt!1866944 (tuple2!54021 hash!405 oldBucket!34))))

(declare-fun b!4703199 () Bool)

(declare-fun e!2933814 () Bool)

(declare-fun e!2933813 () Bool)

(assert (=> b!4703199 (= e!2933814 e!2933813)))

(declare-fun res!1986123 () Bool)

(assert (=> b!4703199 (=> res!1986123 e!2933813)))

(declare-datatypes ((ListMap!5065 0))(
  ( (ListMap!5066 (toList!5702 List!52679)) )
))
(declare-fun lt!1866915 () ListMap!5065)

(declare-fun lt!1866911 () ListMap!5065)

(declare-fun eq!1065 (ListMap!5065 ListMap!5065) Bool)

(assert (=> b!4703199 (= res!1986123 (not (eq!1065 lt!1866915 lt!1866911)))))

(declare-fun lt!1866947 () ListMap!5065)

(declare-fun -!710 (ListMap!5065 K!13915) ListMap!5065)

(assert (=> b!4703199 (= lt!1866911 (-!710 lt!1866947 key!4653))))

(declare-fun lt!1866927 () tuple2!54020)

(declare-fun extractMap!1932 (List!52680) ListMap!5065)

(assert (=> b!4703199 (= lt!1866915 (extractMap!1932 (Cons!52556 lt!1866927 (t!359898 (toList!5701 lm!2023)))))))

(declare-fun lt!1866930 () tuple2!54020)

(declare-fun lt!1866933 () List!52680)

(assert (=> b!4703199 (eq!1065 (extractMap!1932 (Cons!52556 lt!1866927 lt!1866933)) (-!710 (extractMap!1932 (Cons!52556 lt!1866930 lt!1866933)) key!4653))))

(declare-fun lt!1866922 () List!52680)

(declare-fun tail!8743 (List!52680) List!52680)

(assert (=> b!4703199 (= lt!1866933 (tail!8743 lt!1866922))))

(declare-fun lt!1866935 () List!52679)

(assert (=> b!4703199 (= lt!1866927 (tuple2!54021 hash!405 lt!1866935))))

(declare-datatypes ((Hashable!6275 0))(
  ( (HashableExt!6274 (__x!31978 Int)) )
))
(declare-fun hashF!1323 () Hashable!6275)

(declare-fun lt!1866921 () ListLongMap!4231)

(declare-datatypes ((Unit!126616 0))(
  ( (Unit!126617) )
))
(declare-fun lt!1866913 () Unit!126616)

(declare-fun lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMapOneHashIsHead!80 (ListLongMap!4231 (_ BitVec 64) List!52679 List!52679 K!13915 Hashable!6275) Unit!126616)

(assert (=> b!4703199 (= lt!1866913 (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMapOneHashIsHead!80 lt!1866921 hash!405 (t!359897 oldBucket!34) lt!1866935 key!4653 hashF!1323))))

(declare-fun res!1986117 () Bool)

(assert (=> start!477268 (=> (not res!1986117) (not e!2933807))))

(declare-fun lambda!210801 () Int)

(declare-fun forall!11415 (List!52680 Int) Bool)

(assert (=> start!477268 (= res!1986117 (forall!11415 (toList!5701 lm!2023) lambda!210801))))

(assert (=> start!477268 e!2933807))

(declare-fun e!2933816 () Bool)

(declare-fun inv!67789 (ListLongMap!4231) Bool)

(assert (=> start!477268 (and (inv!67789 lm!2023) e!2933816)))

(declare-fun tp_is_empty!30917 () Bool)

(assert (=> start!477268 tp_is_empty!30917))

(declare-fun e!2933810 () Bool)

(assert (=> start!477268 e!2933810))

(assert (=> start!477268 true))

(declare-fun e!2933808 () Bool)

(assert (=> start!477268 e!2933808))

(declare-fun b!4703200 () Bool)

(declare-fun res!1986126 () Bool)

(assert (=> b!4703200 (=> res!1986126 e!2933814)))

(declare-fun lt!1866946 () ListMap!5065)

(declare-fun lt!1866914 () tuple2!54018)

(declare-fun lt!1866929 () ListMap!5065)

(declare-fun +!2190 (ListMap!5065 tuple2!54018) ListMap!5065)

(assert (=> b!4703200 (= res!1986126 (not (eq!1065 lt!1866946 (+!2190 lt!1866929 lt!1866914))))))

(declare-fun b!4703201 () Bool)

(declare-fun res!1986129 () Bool)

(assert (=> b!4703201 (=> (not res!1986129) (not e!2933807))))

(assert (=> b!4703201 (= res!1986129 (noDuplicateKeys!1906 oldBucket!34))))

(declare-fun b!4703202 () Bool)

(declare-fun e!2933817 () Bool)

(declare-fun e!2933818 () Bool)

(assert (=> b!4703202 (= e!2933817 e!2933818)))

(declare-fun res!1986118 () Bool)

(assert (=> b!4703202 (=> res!1986118 e!2933818)))

(declare-fun containsKey!3189 (List!52679 K!13915) Bool)

(assert (=> b!4703202 (= res!1986118 (not (containsKey!3189 (t!359897 oldBucket!34) key!4653)))))

(assert (=> b!4703202 (containsKey!3189 oldBucket!34 key!4653)))

(declare-fun lt!1866919 () Unit!126616)

(declare-fun lemmaGetPairDefinedThenContainsKey!258 (List!52679 K!13915 Hashable!6275) Unit!126616)

(assert (=> b!4703202 (= lt!1866919 (lemmaGetPairDefinedThenContainsKey!258 oldBucket!34 key!4653 hashF!1323))))

(declare-fun lt!1866943 () List!52679)

(declare-datatypes ((Option!12213 0))(
  ( (None!12212) (Some!12212 (v!46711 tuple2!54018)) )
))
(declare-fun isDefined!9468 (Option!12213) Bool)

(declare-fun getPair!510 (List!52679 K!13915) Option!12213)

(assert (=> b!4703202 (isDefined!9468 (getPair!510 lt!1866943 key!4653))))

(declare-fun lt!1866936 () tuple2!54020)

(declare-fun lt!1866938 () Unit!126616)

(declare-fun forallContained!3522 (List!52680 Int tuple2!54020) Unit!126616)

(assert (=> b!4703202 (= lt!1866938 (forallContained!3522 (toList!5701 lm!2023) lambda!210801 lt!1866936))))

(declare-fun contains!15848 (List!52680 tuple2!54020) Bool)

(assert (=> b!4703202 (contains!15848 (toList!5701 lm!2023) lt!1866936)))

(declare-fun lt!1866918 () (_ BitVec 64))

(assert (=> b!4703202 (= lt!1866936 (tuple2!54021 lt!1866918 lt!1866943))))

(declare-fun lt!1866939 () Unit!126616)

(declare-fun lemmaGetValueImpliesTupleContained!315 (ListLongMap!4231 (_ BitVec 64) List!52679) Unit!126616)

(assert (=> b!4703202 (= lt!1866939 (lemmaGetValueImpliesTupleContained!315 lm!2023 lt!1866918 lt!1866943))))

(declare-fun apply!12389 (ListLongMap!4231 (_ BitVec 64)) List!52679)

(assert (=> b!4703202 (= lt!1866943 (apply!12389 lm!2023 lt!1866918))))

(declare-fun contains!15849 (ListLongMap!4231 (_ BitVec 64)) Bool)

(assert (=> b!4703202 (contains!15849 lm!2023 lt!1866918)))

(declare-fun lt!1866948 () Unit!126616)

(declare-fun lemmaInGenMapThenLongMapContainsHash!716 (ListLongMap!4231 K!13915 Hashable!6275) Unit!126616)

(assert (=> b!4703202 (= lt!1866948 (lemmaInGenMapThenLongMapContainsHash!716 lm!2023 key!4653 hashF!1323))))

(declare-fun lt!1866945 () Unit!126616)

(declare-fun lemmaInGenMapThenGetPairDefined!306 (ListLongMap!4231 K!13915 Hashable!6275) Unit!126616)

(assert (=> b!4703202 (= lt!1866945 (lemmaInGenMapThenGetPairDefined!306 lm!2023 key!4653 hashF!1323))))

(declare-fun b!4703203 () Bool)

(declare-fun e!2933812 () Bool)

(declare-fun e!2933806 () Bool)

(assert (=> b!4703203 (= e!2933812 e!2933806)))

(declare-fun res!1986136 () Bool)

(assert (=> b!4703203 (=> res!1986136 e!2933806)))

(declare-fun lt!1866923 () ListMap!5065)

(declare-fun lt!1866928 () ListMap!5065)

(assert (=> b!4703203 (= res!1986136 (not (eq!1065 lt!1866923 lt!1866928)))))

(declare-fun lt!1866937 () ListMap!5065)

(assert (=> b!4703203 (eq!1065 lt!1866937 lt!1866928)))

(assert (=> b!4703203 (= lt!1866928 (-!710 lt!1866946 key!4653))))

(declare-fun lt!1866941 () ListMap!5065)

(declare-fun lt!1866934 () Unit!126616)

(declare-fun lemmaRemovePreservesEq!92 (ListMap!5065 ListMap!5065 K!13915) Unit!126616)

(assert (=> b!4703203 (= lt!1866934 (lemmaRemovePreservesEq!92 lt!1866941 lt!1866946 key!4653))))

(declare-fun b!4703204 () Bool)

(declare-fun res!1986130 () Bool)

(assert (=> b!4703204 (=> (not res!1986130) (not e!2933811))))

(declare-fun allKeysSameHash!1732 (List!52679 (_ BitVec 64) Hashable!6275) Bool)

(assert (=> b!4703204 (= res!1986130 (allKeysSameHash!1732 newBucket!218 hash!405 hashF!1323))))

(declare-fun b!4703205 () Bool)

(declare-fun e!2933819 () Bool)

(assert (=> b!4703205 (= e!2933813 e!2933819)))

(declare-fun res!1986122 () Bool)

(assert (=> b!4703205 (=> res!1986122 e!2933819)))

(assert (=> b!4703205 (= res!1986122 (not (= lt!1866937 lt!1866923)))))

(assert (=> b!4703205 (= lt!1866923 (+!2190 lt!1866911 (h!58842 oldBucket!34)))))

(assert (=> b!4703205 (= lt!1866937 (-!710 lt!1866941 key!4653))))

(assert (=> b!4703205 (= lt!1866941 (+!2190 lt!1866947 (h!58842 oldBucket!34)))))

(declare-fun lt!1866932 () ListMap!5065)

(declare-fun lt!1866916 () ListMap!5065)

(assert (=> b!4703205 (= lt!1866932 lt!1866916)))

(assert (=> b!4703205 (= lt!1866916 (+!2190 lt!1866911 (h!58842 oldBucket!34)))))

(assert (=> b!4703205 (= lt!1866932 (-!710 (+!2190 lt!1866947 (h!58842 oldBucket!34)) key!4653))))

(declare-fun lt!1866931 () Unit!126616)

(declare-fun addRemoveCommutativeForDiffKeys!111 (ListMap!5065 K!13915 V!14161 K!13915) Unit!126616)

(assert (=> b!4703205 (= lt!1866931 (addRemoveCommutativeForDiffKeys!111 lt!1866947 (_1!30303 (h!58842 oldBucket!34)) (_2!30303 (h!58842 oldBucket!34)) key!4653))))

(declare-fun tp!1346803 () Bool)

(declare-fun tp_is_empty!30919 () Bool)

(declare-fun b!4703206 () Bool)

(assert (=> b!4703206 (= e!2933808 (and tp_is_empty!30917 tp_is_empty!30919 tp!1346803))))

(declare-fun b!4703207 () Bool)

(declare-fun res!1986139 () Bool)

(assert (=> b!4703207 (=> (not res!1986139) (not e!2933807))))

(assert (=> b!4703207 (= res!1986139 (allKeysSameHash!1732 oldBucket!34 hash!405 hashF!1323))))

(declare-fun b!4703208 () Bool)

(declare-fun tp!1346804 () Bool)

(assert (=> b!4703208 (= e!2933816 tp!1346804)))

(declare-fun b!4703209 () Bool)

(declare-fun e!2933815 () Bool)

(assert (=> b!4703209 (= e!2933807 e!2933815)))

(declare-fun res!1986119 () Bool)

(assert (=> b!4703209 (=> (not res!1986119) (not e!2933815))))

(declare-fun lt!1866917 () ListMap!5065)

(declare-fun contains!15850 (ListMap!5065 K!13915) Bool)

(assert (=> b!4703209 (= res!1986119 (contains!15850 lt!1866917 key!4653))))

(assert (=> b!4703209 (= lt!1866917 (extractMap!1932 (toList!5701 lm!2023)))))

(declare-fun b!4703210 () Bool)

(assert (=> b!4703210 (= e!2933806 (not (= newBucket!218 Nil!52555)))))

(declare-fun b!4703211 () Bool)

(declare-fun e!2933809 () Bool)

(assert (=> b!4703211 (= e!2933818 e!2933809)))

(declare-fun res!1986121 () Bool)

(assert (=> b!4703211 (=> res!1986121 e!2933809)))

(declare-fun lt!1866942 () List!52679)

(assert (=> b!4703211 (= res!1986121 (not (= (removePairForKey!1501 lt!1866942 key!4653) lt!1866935)))))

(declare-fun tail!8744 (List!52679) List!52679)

(assert (=> b!4703211 (= lt!1866935 (tail!8744 newBucket!218))))

(assert (=> b!4703211 (= lt!1866942 (tail!8744 oldBucket!34))))

(declare-fun b!4703212 () Bool)

(declare-fun res!1986137 () Bool)

(assert (=> b!4703212 (=> (not res!1986137) (not e!2933811))))

(declare-fun allKeysSameHashInMap!1820 (ListLongMap!4231 Hashable!6275) Bool)

(assert (=> b!4703212 (= res!1986137 (allKeysSameHashInMap!1820 lm!2023 hashF!1323))))

(declare-fun b!4703213 () Bool)

(assert (=> b!4703213 (= e!2933820 (not e!2933817))))

(declare-fun res!1986134 () Bool)

(assert (=> b!4703213 (=> res!1986134 e!2933817)))

(assert (=> b!4703213 (= res!1986134 (or (and ((_ is Cons!52555) oldBucket!34) (= (_1!30303 (h!58842 oldBucket!34)) key!4653)) (not ((_ is Cons!52555) oldBucket!34)) (= (_1!30303 (h!58842 oldBucket!34)) key!4653)))))

(declare-fun lt!1866920 () ListMap!5065)

(declare-fun addToMapMapFromBucket!1338 (List!52679 ListMap!5065) ListMap!5065)

(assert (=> b!4703213 (= lt!1866917 (addToMapMapFromBucket!1338 (_2!30304 (h!58843 (toList!5701 lm!2023))) lt!1866920))))

(assert (=> b!4703213 (= lt!1866920 (extractMap!1932 (t!359898 (toList!5701 lm!2023))))))

(declare-fun tail!8745 (ListLongMap!4231) ListLongMap!4231)

(assert (=> b!4703213 (= (t!359898 (toList!5701 lm!2023)) (toList!5701 (tail!8745 lm!2023)))))

(declare-fun b!4703214 () Bool)

(declare-fun res!1986125 () Bool)

(assert (=> b!4703214 (=> res!1986125 e!2933819)))

(assert (=> b!4703214 (= res!1986125 (not (eq!1065 lt!1866941 lt!1866946)))))

(declare-fun b!4703215 () Bool)

(declare-fun res!1986132 () Bool)

(assert (=> b!4703215 (=> res!1986132 e!2933814)))

(assert (=> b!4703215 (= res!1986132 (not (= (h!58842 oldBucket!34) lt!1866914)))))

(declare-fun b!4703216 () Bool)

(assert (=> b!4703216 (= e!2933815 e!2933811)))

(declare-fun res!1986131 () Bool)

(assert (=> b!4703216 (=> (not res!1986131) (not e!2933811))))

(assert (=> b!4703216 (= res!1986131 (= lt!1866918 hash!405))))

(declare-fun hash!4194 (Hashable!6275 K!13915) (_ BitVec 64))

(assert (=> b!4703216 (= lt!1866918 (hash!4194 hashF!1323 key!4653))))

(declare-fun b!4703217 () Bool)

(declare-fun res!1986120 () Bool)

(assert (=> b!4703217 (=> res!1986120 e!2933809)))

(assert (=> b!4703217 (= res!1986120 (not (= (removePairForKey!1501 (t!359897 oldBucket!34) key!4653) lt!1866935)))))

(declare-fun b!4703218 () Bool)

(assert (=> b!4703218 (= e!2933819 e!2933812)))

(declare-fun res!1986138 () Bool)

(assert (=> b!4703218 (=> res!1986138 e!2933812)))

(assert (=> b!4703218 (= res!1986138 (not (eq!1065 lt!1866923 (+!2190 lt!1866915 (h!58842 oldBucket!34)))))))

(assert (=> b!4703218 (eq!1065 lt!1866916 (+!2190 lt!1866915 (h!58842 oldBucket!34)))))

(declare-fun lt!1866940 () Unit!126616)

(declare-fun lemmaAddToEqMapsPreservesEq!88 (ListMap!5065 ListMap!5065 K!13915 V!14161) Unit!126616)

(assert (=> b!4703218 (= lt!1866940 (lemmaAddToEqMapsPreservesEq!88 lt!1866911 lt!1866915 (_1!30303 (h!58842 oldBucket!34)) (_2!30303 (h!58842 oldBucket!34))))))

(declare-fun b!4703219 () Bool)

(declare-fun res!1986128 () Bool)

(assert (=> b!4703219 (=> res!1986128 e!2933819)))

(assert (=> b!4703219 (= res!1986128 (not (eq!1065 lt!1866937 lt!1866923)))))

(declare-fun b!4703220 () Bool)

(assert (=> b!4703220 (= e!2933809 e!2933814)))

(declare-fun res!1986116 () Bool)

(assert (=> b!4703220 (=> res!1986116 e!2933814)))

(assert (=> b!4703220 (= res!1986116 (not (eq!1065 lt!1866946 (+!2190 lt!1866929 (h!58842 oldBucket!34)))))))

(assert (=> b!4703220 (= lt!1866929 (extractMap!1932 (Cons!52556 (tuple2!54021 hash!405 lt!1866942) (t!359898 (toList!5701 lm!2023)))))))

(assert (=> b!4703220 (= lt!1866946 (extractMap!1932 (Cons!52556 lt!1866944 (t!359898 (toList!5701 lm!2023)))))))

(assert (=> b!4703220 (eq!1065 (addToMapMapFromBucket!1338 (Cons!52555 lt!1866914 lt!1866935) lt!1866920) (+!2190 (addToMapMapFromBucket!1338 lt!1866935 lt!1866920) lt!1866914))))

(declare-fun lt!1866912 () Unit!126616)

(declare-fun lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!314 (tuple2!54018 List!52679 ListMap!5065) Unit!126616)

(assert (=> b!4703220 (= lt!1866912 (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!314 lt!1866914 lt!1866935 lt!1866920))))

(declare-fun head!10076 (List!52679) tuple2!54018)

(assert (=> b!4703220 (= lt!1866914 (head!10076 newBucket!218))))

(declare-fun lt!1866924 () tuple2!54018)

(assert (=> b!4703220 (eq!1065 (addToMapMapFromBucket!1338 (Cons!52555 lt!1866924 lt!1866942) lt!1866920) (+!2190 (addToMapMapFromBucket!1338 lt!1866942 lt!1866920) lt!1866924))))

(declare-fun lt!1866925 () Unit!126616)

(assert (=> b!4703220 (= lt!1866925 (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!314 lt!1866924 lt!1866942 lt!1866920))))

(assert (=> b!4703220 (= lt!1866924 (head!10076 oldBucket!34))))

(assert (=> b!4703220 (contains!15850 lt!1866947 key!4653)))

(assert (=> b!4703220 (= lt!1866947 (extractMap!1932 lt!1866922))))

(declare-fun lt!1866926 () Unit!126616)

(declare-fun lemmaListContainsThenExtractedMapContains!498 (ListLongMap!4231 K!13915 Hashable!6275) Unit!126616)

(assert (=> b!4703220 (= lt!1866926 (lemmaListContainsThenExtractedMapContains!498 lt!1866921 key!4653 hashF!1323))))

(assert (=> b!4703220 (= lt!1866921 (ListLongMap!4232 lt!1866922))))

(assert (=> b!4703220 (= lt!1866922 (Cons!52556 lt!1866930 (t!359898 (toList!5701 lm!2023))))))

(assert (=> b!4703220 (= lt!1866930 (tuple2!54021 hash!405 (t!359897 oldBucket!34)))))

(declare-fun tp!1346805 () Bool)

(declare-fun b!4703221 () Bool)

(assert (=> b!4703221 (= e!2933810 (and tp_is_empty!30917 tp_is_empty!30919 tp!1346805))))

(assert (= (and start!477268 res!1986117) b!4703201))

(assert (= (and b!4703201 res!1986129) b!4703197))

(assert (= (and b!4703197 res!1986135) b!4703196))

(assert (= (and b!4703196 res!1986127) b!4703207))

(assert (= (and b!4703207 res!1986139) b!4703209))

(assert (= (and b!4703209 res!1986119) b!4703216))

(assert (= (and b!4703216 res!1986131) b!4703204))

(assert (= (and b!4703204 res!1986130) b!4703212))

(assert (= (and b!4703212 res!1986137) b!4703198))

(assert (= (and b!4703198 res!1986133) b!4703195))

(assert (= (and b!4703195 res!1986124) b!4703213))

(assert (= (and b!4703213 (not res!1986134)) b!4703202))

(assert (= (and b!4703202 (not res!1986118)) b!4703211))

(assert (= (and b!4703211 (not res!1986121)) b!4703217))

(assert (= (and b!4703217 (not res!1986120)) b!4703220))

(assert (= (and b!4703220 (not res!1986116)) b!4703215))

(assert (= (and b!4703215 (not res!1986132)) b!4703200))

(assert (= (and b!4703200 (not res!1986126)) b!4703199))

(assert (= (and b!4703199 (not res!1986123)) b!4703205))

(assert (= (and b!4703205 (not res!1986122)) b!4703219))

(assert (= (and b!4703219 (not res!1986128)) b!4703214))

(assert (= (and b!4703214 (not res!1986125)) b!4703218))

(assert (= (and b!4703218 (not res!1986138)) b!4703203))

(assert (= (and b!4703203 (not res!1986136)) b!4703210))

(assert (= start!477268 b!4703208))

(assert (= (and start!477268 ((_ is Cons!52555) oldBucket!34)) b!4703221))

(assert (= (and start!477268 ((_ is Cons!52555) newBucket!218)) b!4703206))

(declare-fun m!5621261 () Bool)

(assert (=> b!4703212 m!5621261))

(declare-fun m!5621263 () Bool)

(assert (=> b!4703197 m!5621263))

(declare-fun m!5621265 () Bool)

(assert (=> b!4703198 m!5621265))

(declare-fun m!5621267 () Bool)

(assert (=> b!4703205 m!5621267))

(declare-fun m!5621269 () Bool)

(assert (=> b!4703205 m!5621269))

(declare-fun m!5621271 () Bool)

(assert (=> b!4703205 m!5621271))

(assert (=> b!4703205 m!5621269))

(declare-fun m!5621273 () Bool)

(assert (=> b!4703205 m!5621273))

(declare-fun m!5621275 () Bool)

(assert (=> b!4703205 m!5621275))

(declare-fun m!5621277 () Bool)

(assert (=> b!4703209 m!5621277))

(declare-fun m!5621279 () Bool)

(assert (=> b!4703209 m!5621279))

(declare-fun m!5621281 () Bool)

(assert (=> b!4703204 m!5621281))

(declare-fun m!5621283 () Bool)

(assert (=> b!4703217 m!5621283))

(declare-fun m!5621285 () Bool)

(assert (=> b!4703196 m!5621285))

(declare-fun m!5621287 () Bool)

(assert (=> b!4703211 m!5621287))

(declare-fun m!5621289 () Bool)

(assert (=> b!4703211 m!5621289))

(declare-fun m!5621291 () Bool)

(assert (=> b!4703211 m!5621291))

(declare-fun m!5621293 () Bool)

(assert (=> b!4703207 m!5621293))

(declare-fun m!5621295 () Bool)

(assert (=> b!4703218 m!5621295))

(assert (=> b!4703218 m!5621295))

(declare-fun m!5621297 () Bool)

(assert (=> b!4703218 m!5621297))

(assert (=> b!4703218 m!5621295))

(declare-fun m!5621299 () Bool)

(assert (=> b!4703218 m!5621299))

(declare-fun m!5621301 () Bool)

(assert (=> b!4703218 m!5621301))

(declare-fun m!5621303 () Bool)

(assert (=> b!4703199 m!5621303))

(declare-fun m!5621305 () Bool)

(assert (=> b!4703199 m!5621305))

(declare-fun m!5621307 () Bool)

(assert (=> b!4703199 m!5621307))

(declare-fun m!5621309 () Bool)

(assert (=> b!4703199 m!5621309))

(declare-fun m!5621311 () Bool)

(assert (=> b!4703199 m!5621311))

(declare-fun m!5621313 () Bool)

(assert (=> b!4703199 m!5621313))

(declare-fun m!5621315 () Bool)

(assert (=> b!4703199 m!5621315))

(assert (=> b!4703199 m!5621315))

(assert (=> b!4703199 m!5621305))

(declare-fun m!5621317 () Bool)

(assert (=> b!4703199 m!5621317))

(assert (=> b!4703199 m!5621303))

(declare-fun m!5621319 () Bool)

(assert (=> b!4703199 m!5621319))

(declare-fun m!5621321 () Bool)

(assert (=> start!477268 m!5621321))

(declare-fun m!5621323 () Bool)

(assert (=> start!477268 m!5621323))

(declare-fun m!5621325 () Bool)

(assert (=> b!4703200 m!5621325))

(assert (=> b!4703200 m!5621325))

(declare-fun m!5621327 () Bool)

(assert (=> b!4703200 m!5621327))

(declare-fun m!5621329 () Bool)

(assert (=> b!4703201 m!5621329))

(declare-fun m!5621331 () Bool)

(assert (=> b!4703202 m!5621331))

(declare-fun m!5621333 () Bool)

(assert (=> b!4703202 m!5621333))

(declare-fun m!5621335 () Bool)

(assert (=> b!4703202 m!5621335))

(declare-fun m!5621337 () Bool)

(assert (=> b!4703202 m!5621337))

(declare-fun m!5621339 () Bool)

(assert (=> b!4703202 m!5621339))

(assert (=> b!4703202 m!5621333))

(declare-fun m!5621341 () Bool)

(assert (=> b!4703202 m!5621341))

(declare-fun m!5621343 () Bool)

(assert (=> b!4703202 m!5621343))

(declare-fun m!5621345 () Bool)

(assert (=> b!4703202 m!5621345))

(declare-fun m!5621347 () Bool)

(assert (=> b!4703202 m!5621347))

(declare-fun m!5621349 () Bool)

(assert (=> b!4703202 m!5621349))

(declare-fun m!5621351 () Bool)

(assert (=> b!4703202 m!5621351))

(declare-fun m!5621353 () Bool)

(assert (=> b!4703202 m!5621353))

(declare-fun m!5621355 () Bool)

(assert (=> b!4703203 m!5621355))

(declare-fun m!5621357 () Bool)

(assert (=> b!4703203 m!5621357))

(declare-fun m!5621359 () Bool)

(assert (=> b!4703203 m!5621359))

(declare-fun m!5621361 () Bool)

(assert (=> b!4703203 m!5621361))

(declare-fun m!5621363 () Bool)

(assert (=> b!4703214 m!5621363))

(declare-fun m!5621365 () Bool)

(assert (=> b!4703219 m!5621365))

(declare-fun m!5621367 () Bool)

(assert (=> b!4703213 m!5621367))

(declare-fun m!5621369 () Bool)

(assert (=> b!4703213 m!5621369))

(declare-fun m!5621371 () Bool)

(assert (=> b!4703213 m!5621371))

(declare-fun m!5621373 () Bool)

(assert (=> b!4703216 m!5621373))

(declare-fun m!5621375 () Bool)

(assert (=> b!4703220 m!5621375))

(declare-fun m!5621377 () Bool)

(assert (=> b!4703220 m!5621377))

(declare-fun m!5621379 () Bool)

(assert (=> b!4703220 m!5621379))

(declare-fun m!5621381 () Bool)

(assert (=> b!4703220 m!5621381))

(declare-fun m!5621383 () Bool)

(assert (=> b!4703220 m!5621383))

(declare-fun m!5621385 () Bool)

(assert (=> b!4703220 m!5621385))

(declare-fun m!5621387 () Bool)

(assert (=> b!4703220 m!5621387))

(assert (=> b!4703220 m!5621385))

(assert (=> b!4703220 m!5621381))

(declare-fun m!5621389 () Bool)

(assert (=> b!4703220 m!5621389))

(declare-fun m!5621391 () Bool)

(assert (=> b!4703220 m!5621391))

(declare-fun m!5621393 () Bool)

(assert (=> b!4703220 m!5621393))

(declare-fun m!5621395 () Bool)

(assert (=> b!4703220 m!5621395))

(declare-fun m!5621397 () Bool)

(assert (=> b!4703220 m!5621397))

(assert (=> b!4703220 m!5621395))

(declare-fun m!5621399 () Bool)

(assert (=> b!4703220 m!5621399))

(declare-fun m!5621401 () Bool)

(assert (=> b!4703220 m!5621401))

(declare-fun m!5621403 () Bool)

(assert (=> b!4703220 m!5621403))

(assert (=> b!4703220 m!5621401))

(declare-fun m!5621405 () Bool)

(assert (=> b!4703220 m!5621405))

(assert (=> b!4703220 m!5621403))

(declare-fun m!5621407 () Bool)

(assert (=> b!4703220 m!5621407))

(assert (=> b!4703220 m!5621399))

(assert (=> b!4703220 m!5621379))

(declare-fun m!5621409 () Bool)

(assert (=> b!4703220 m!5621409))

(declare-fun m!5621411 () Bool)

(assert (=> b!4703220 m!5621411))

(check-sat (not b!4703205) (not b!4703203) tp_is_empty!30917 (not b!4703204) (not b!4703218) (not b!4703216) (not b!4703198) (not b!4703209) (not b!4703206) (not start!477268) (not b!4703201) (not b!4703217) (not b!4703212) (not b!4703200) (not b!4703197) (not b!4703199) (not b!4703196) (not b!4703202) (not b!4703219) (not b!4703220) (not b!4703221) (not b!4703211) (not b!4703208) (not b!4703214) tp_is_empty!30919 (not b!4703207) (not b!4703213))
(check-sat)
(get-model)

(declare-fun bs!1096874 () Bool)

(declare-fun d!1496231 () Bool)

(assert (= bs!1096874 (and d!1496231 start!477268)))

(declare-fun lambda!210804 () Int)

(assert (=> bs!1096874 (not (= lambda!210804 lambda!210801))))

(assert (=> d!1496231 true))

(assert (=> d!1496231 (= (allKeysSameHashInMap!1820 lm!2023 hashF!1323) (forall!11415 (toList!5701 lm!2023) lambda!210804))))

(declare-fun bs!1096875 () Bool)

(assert (= bs!1096875 d!1496231))

(declare-fun m!5621413 () Bool)

(assert (=> bs!1096875 m!5621413))

(assert (=> b!4703212 d!1496231))

(declare-fun d!1496233 () Bool)

(declare-fun res!1986144 () Bool)

(declare-fun e!2933825 () Bool)

(assert (=> d!1496233 (=> res!1986144 e!2933825)))

(assert (=> d!1496233 (= res!1986144 (not ((_ is Cons!52555) oldBucket!34)))))

(assert (=> d!1496233 (= (noDuplicateKeys!1906 oldBucket!34) e!2933825)))

(declare-fun b!4703228 () Bool)

(declare-fun e!2933826 () Bool)

(assert (=> b!4703228 (= e!2933825 e!2933826)))

(declare-fun res!1986145 () Bool)

(assert (=> b!4703228 (=> (not res!1986145) (not e!2933826))))

(assert (=> b!4703228 (= res!1986145 (not (containsKey!3189 (t!359897 oldBucket!34) (_1!30303 (h!58842 oldBucket!34)))))))

(declare-fun b!4703229 () Bool)

(assert (=> b!4703229 (= e!2933826 (noDuplicateKeys!1906 (t!359897 oldBucket!34)))))

(assert (= (and d!1496233 (not res!1986144)) b!4703228))

(assert (= (and b!4703228 res!1986145) b!4703229))

(declare-fun m!5621415 () Bool)

(assert (=> b!4703228 m!5621415))

(declare-fun m!5621417 () Bool)

(assert (=> b!4703229 m!5621417))

(assert (=> b!4703201 d!1496233))

(declare-fun d!1496239 () Bool)

(declare-fun e!2933834 () Bool)

(assert (=> d!1496239 e!2933834))

(declare-fun res!1986151 () Bool)

(assert (=> d!1496239 (=> res!1986151 e!2933834)))

(declare-fun lt!1866963 () Bool)

(assert (=> d!1496239 (= res!1986151 (not lt!1866963))))

(declare-fun lt!1866965 () Bool)

(assert (=> d!1496239 (= lt!1866963 lt!1866965)))

(declare-fun lt!1866964 () Unit!126616)

(declare-fun e!2933835 () Unit!126616)

(assert (=> d!1496239 (= lt!1866964 e!2933835)))

(declare-fun c!803868 () Bool)

(assert (=> d!1496239 (= c!803868 lt!1866965)))

(declare-fun containsKey!3191 (List!52680 (_ BitVec 64)) Bool)

(assert (=> d!1496239 (= lt!1866965 (containsKey!3191 (toList!5701 lm!2023) lt!1866918))))

(assert (=> d!1496239 (= (contains!15849 lm!2023 lt!1866918) lt!1866963)))

(declare-fun b!4703239 () Bool)

(declare-fun lt!1866966 () Unit!126616)

(assert (=> b!4703239 (= e!2933835 lt!1866966)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1755 (List!52680 (_ BitVec 64)) Unit!126616)

(assert (=> b!4703239 (= lt!1866966 (lemmaContainsKeyImpliesGetValueByKeyDefined!1755 (toList!5701 lm!2023) lt!1866918))))

(declare-datatypes ((Option!12216 0))(
  ( (None!12215) (Some!12215 (v!46718 List!52679)) )
))
(declare-fun isDefined!9470 (Option!12216) Bool)

(declare-fun getValueByKey!1864 (List!52680 (_ BitVec 64)) Option!12216)

(assert (=> b!4703239 (isDefined!9470 (getValueByKey!1864 (toList!5701 lm!2023) lt!1866918))))

(declare-fun b!4703240 () Bool)

(declare-fun Unit!126619 () Unit!126616)

(assert (=> b!4703240 (= e!2933835 Unit!126619)))

(declare-fun b!4703241 () Bool)

(assert (=> b!4703241 (= e!2933834 (isDefined!9470 (getValueByKey!1864 (toList!5701 lm!2023) lt!1866918)))))

(assert (= (and d!1496239 c!803868) b!4703239))

(assert (= (and d!1496239 (not c!803868)) b!4703240))

(assert (= (and d!1496239 (not res!1986151)) b!4703241))

(declare-fun m!5621449 () Bool)

(assert (=> d!1496239 m!5621449))

(declare-fun m!5621451 () Bool)

(assert (=> b!4703239 m!5621451))

(declare-fun m!5621453 () Bool)

(assert (=> b!4703239 m!5621453))

(assert (=> b!4703239 m!5621453))

(declare-fun m!5621455 () Bool)

(assert (=> b!4703239 m!5621455))

(assert (=> b!4703241 m!5621453))

(assert (=> b!4703241 m!5621453))

(assert (=> b!4703241 m!5621455))

(assert (=> b!4703202 d!1496239))

(declare-fun bs!1096882 () Bool)

(declare-fun d!1496255 () Bool)

(assert (= bs!1096882 (and d!1496255 start!477268)))

(declare-fun lambda!210807 () Int)

(assert (=> bs!1096882 (= lambda!210807 lambda!210801)))

(declare-fun bs!1096883 () Bool)

(assert (= bs!1096883 (and d!1496255 d!1496231)))

(assert (=> bs!1096883 (not (= lambda!210807 lambda!210804))))

(assert (=> d!1496255 (contains!15849 lm!2023 (hash!4194 hashF!1323 key!4653))))

(declare-fun lt!1866981 () Unit!126616)

(declare-fun choose!32960 (ListLongMap!4231 K!13915 Hashable!6275) Unit!126616)

(assert (=> d!1496255 (= lt!1866981 (choose!32960 lm!2023 key!4653 hashF!1323))))

(assert (=> d!1496255 (forall!11415 (toList!5701 lm!2023) lambda!210807)))

(assert (=> d!1496255 (= (lemmaInGenMapThenLongMapContainsHash!716 lm!2023 key!4653 hashF!1323) lt!1866981)))

(declare-fun bs!1096884 () Bool)

(assert (= bs!1096884 d!1496255))

(assert (=> bs!1096884 m!5621373))

(assert (=> bs!1096884 m!5621373))

(declare-fun m!5621469 () Bool)

(assert (=> bs!1096884 m!5621469))

(declare-fun m!5621471 () Bool)

(assert (=> bs!1096884 m!5621471))

(declare-fun m!5621473 () Bool)

(assert (=> bs!1096884 m!5621473))

(assert (=> b!4703202 d!1496255))

(declare-fun d!1496259 () Bool)

(declare-fun get!17603 (Option!12216) List!52679)

(assert (=> d!1496259 (= (apply!12389 lm!2023 lt!1866918) (get!17603 (getValueByKey!1864 (toList!5701 lm!2023) lt!1866918)))))

(declare-fun bs!1096885 () Bool)

(assert (= bs!1096885 d!1496259))

(assert (=> bs!1096885 m!5621453))

(assert (=> bs!1096885 m!5621453))

(declare-fun m!5621479 () Bool)

(assert (=> bs!1096885 m!5621479))

(assert (=> b!4703202 d!1496259))

(declare-fun bs!1096899 () Bool)

(declare-fun d!1496263 () Bool)

(assert (= bs!1096899 (and d!1496263 start!477268)))

(declare-fun lambda!210830 () Int)

(assert (=> bs!1096899 (= lambda!210830 lambda!210801)))

(declare-fun bs!1096900 () Bool)

(assert (= bs!1096900 (and d!1496263 d!1496231)))

(assert (=> bs!1096900 (not (= lambda!210830 lambda!210804))))

(declare-fun bs!1096901 () Bool)

(assert (= bs!1096901 (and d!1496263 d!1496255)))

(assert (=> bs!1096901 (= lambda!210830 lambda!210807)))

(declare-fun b!4703346 () Bool)

(declare-fun lt!1867060 () (_ BitVec 64))

(declare-fun e!2933900 () Bool)

(declare-fun lt!1867059 () List!52679)

(assert (=> b!4703346 (= e!2933900 (= (getValueByKey!1864 (toList!5701 lm!2023) lt!1867060) (Some!12215 lt!1867059)))))

(declare-fun e!2933899 () Bool)

(declare-fun b!4703345 () Bool)

(assert (=> b!4703345 (= e!2933899 (isDefined!9468 (getPair!510 (apply!12389 lm!2023 (hash!4194 hashF!1323 key!4653)) key!4653)))))

(declare-fun lt!1867058 () Unit!126616)

(assert (=> b!4703345 (= lt!1867058 (forallContained!3522 (toList!5701 lm!2023) lambda!210830 (tuple2!54021 (hash!4194 hashF!1323 key!4653) (apply!12389 lm!2023 (hash!4194 hashF!1323 key!4653)))))))

(declare-fun lt!1867055 () Unit!126616)

(declare-fun lt!1867056 () Unit!126616)

(assert (=> b!4703345 (= lt!1867055 lt!1867056)))

(assert (=> b!4703345 (contains!15848 (toList!5701 lm!2023) (tuple2!54021 lt!1867060 lt!1867059))))

(assert (=> b!4703345 (= lt!1867056 (lemmaGetValueImpliesTupleContained!315 lm!2023 lt!1867060 lt!1867059))))

(assert (=> b!4703345 e!2933900))

(declare-fun res!1986217 () Bool)

(assert (=> b!4703345 (=> (not res!1986217) (not e!2933900))))

(assert (=> b!4703345 (= res!1986217 (contains!15849 lm!2023 lt!1867060))))

(assert (=> b!4703345 (= lt!1867059 (apply!12389 lm!2023 (hash!4194 hashF!1323 key!4653)))))

(assert (=> b!4703345 (= lt!1867060 (hash!4194 hashF!1323 key!4653))))

(declare-fun lt!1867062 () Unit!126616)

(declare-fun lt!1867057 () Unit!126616)

(assert (=> b!4703345 (= lt!1867062 lt!1867057)))

(assert (=> b!4703345 (contains!15849 lm!2023 (hash!4194 hashF!1323 key!4653))))

(assert (=> b!4703345 (= lt!1867057 (lemmaInGenMapThenLongMapContainsHash!716 lm!2023 key!4653 hashF!1323))))

(declare-fun b!4703344 () Bool)

(declare-fun res!1986216 () Bool)

(assert (=> b!4703344 (=> (not res!1986216) (not e!2933899))))

(assert (=> b!4703344 (= res!1986216 (contains!15850 (extractMap!1932 (toList!5701 lm!2023)) key!4653))))

(assert (=> d!1496263 e!2933899))

(declare-fun res!1986219 () Bool)

(assert (=> d!1496263 (=> (not res!1986219) (not e!2933899))))

(assert (=> d!1496263 (= res!1986219 (forall!11415 (toList!5701 lm!2023) lambda!210830))))

(declare-fun lt!1867061 () Unit!126616)

(declare-fun choose!32961 (ListLongMap!4231 K!13915 Hashable!6275) Unit!126616)

(assert (=> d!1496263 (= lt!1867061 (choose!32961 lm!2023 key!4653 hashF!1323))))

(assert (=> d!1496263 (forall!11415 (toList!5701 lm!2023) lambda!210830)))

(assert (=> d!1496263 (= (lemmaInGenMapThenGetPairDefined!306 lm!2023 key!4653 hashF!1323) lt!1867061)))

(declare-fun b!4703343 () Bool)

(declare-fun res!1986218 () Bool)

(assert (=> b!4703343 (=> (not res!1986218) (not e!2933899))))

(assert (=> b!4703343 (= res!1986218 (allKeysSameHashInMap!1820 lm!2023 hashF!1323))))

(assert (= (and d!1496263 res!1986219) b!4703343))

(assert (= (and b!4703343 res!1986218) b!4703344))

(assert (= (and b!4703344 res!1986216) b!4703345))

(assert (= (and b!4703345 res!1986217) b!4703346))

(assert (=> b!4703345 m!5621373))

(declare-fun m!5621561 () Bool)

(assert (=> b!4703345 m!5621561))

(declare-fun m!5621563 () Bool)

(assert (=> b!4703345 m!5621563))

(assert (=> b!4703345 m!5621373))

(declare-fun m!5621565 () Bool)

(assert (=> b!4703345 m!5621565))

(declare-fun m!5621567 () Bool)

(assert (=> b!4703345 m!5621567))

(assert (=> b!4703345 m!5621347))

(assert (=> b!4703345 m!5621373))

(assert (=> b!4703345 m!5621469))

(declare-fun m!5621569 () Bool)

(assert (=> b!4703345 m!5621569))

(declare-fun m!5621571 () Bool)

(assert (=> b!4703345 m!5621571))

(declare-fun m!5621573 () Bool)

(assert (=> b!4703345 m!5621573))

(assert (=> b!4703345 m!5621561))

(assert (=> b!4703345 m!5621569))

(assert (=> b!4703343 m!5621261))

(declare-fun m!5621575 () Bool)

(assert (=> b!4703346 m!5621575))

(assert (=> b!4703344 m!5621279))

(assert (=> b!4703344 m!5621279))

(declare-fun m!5621577 () Bool)

(assert (=> b!4703344 m!5621577))

(declare-fun m!5621579 () Bool)

(assert (=> d!1496263 m!5621579))

(declare-fun m!5621581 () Bool)

(assert (=> d!1496263 m!5621581))

(assert (=> d!1496263 m!5621579))

(assert (=> b!4703202 d!1496263))

(declare-fun d!1496295 () Bool)

(assert (=> d!1496295 (containsKey!3189 oldBucket!34 key!4653)))

(declare-fun lt!1867065 () Unit!126616)

(declare-fun choose!32962 (List!52679 K!13915 Hashable!6275) Unit!126616)

(assert (=> d!1496295 (= lt!1867065 (choose!32962 oldBucket!34 key!4653 hashF!1323))))

(assert (=> d!1496295 (noDuplicateKeys!1906 oldBucket!34)))

(assert (=> d!1496295 (= (lemmaGetPairDefinedThenContainsKey!258 oldBucket!34 key!4653 hashF!1323) lt!1867065)))

(declare-fun bs!1096902 () Bool)

(assert (= bs!1096902 d!1496295))

(assert (=> bs!1096902 m!5621343))

(declare-fun m!5621583 () Bool)

(assert (=> bs!1096902 m!5621583))

(assert (=> bs!1096902 m!5621329))

(assert (=> b!4703202 d!1496295))

(declare-fun d!1496297 () Bool)

(assert (=> d!1496297 (contains!15848 (toList!5701 lm!2023) (tuple2!54021 lt!1866918 lt!1866943))))

(declare-fun lt!1867068 () Unit!126616)

(declare-fun choose!32963 (ListLongMap!4231 (_ BitVec 64) List!52679) Unit!126616)

(assert (=> d!1496297 (= lt!1867068 (choose!32963 lm!2023 lt!1866918 lt!1866943))))

(assert (=> d!1496297 (contains!15849 lm!2023 lt!1866918)))

(assert (=> d!1496297 (= (lemmaGetValueImpliesTupleContained!315 lm!2023 lt!1866918 lt!1866943) lt!1867068)))

(declare-fun bs!1096903 () Bool)

(assert (= bs!1096903 d!1496297))

(declare-fun m!5621585 () Bool)

(assert (=> bs!1096903 m!5621585))

(declare-fun m!5621587 () Bool)

(assert (=> bs!1096903 m!5621587))

(assert (=> bs!1096903 m!5621345))

(assert (=> b!4703202 d!1496297))

(declare-fun d!1496299 () Bool)

(declare-fun res!1986224 () Bool)

(declare-fun e!2933905 () Bool)

(assert (=> d!1496299 (=> res!1986224 e!2933905)))

(assert (=> d!1496299 (= res!1986224 (and ((_ is Cons!52555) (t!359897 oldBucket!34)) (= (_1!30303 (h!58842 (t!359897 oldBucket!34))) key!4653)))))

(assert (=> d!1496299 (= (containsKey!3189 (t!359897 oldBucket!34) key!4653) e!2933905)))

(declare-fun b!4703352 () Bool)

(declare-fun e!2933906 () Bool)

(assert (=> b!4703352 (= e!2933905 e!2933906)))

(declare-fun res!1986225 () Bool)

(assert (=> b!4703352 (=> (not res!1986225) (not e!2933906))))

(assert (=> b!4703352 (= res!1986225 ((_ is Cons!52555) (t!359897 oldBucket!34)))))

(declare-fun b!4703353 () Bool)

(assert (=> b!4703353 (= e!2933906 (containsKey!3189 (t!359897 (t!359897 oldBucket!34)) key!4653))))

(assert (= (and d!1496299 (not res!1986224)) b!4703352))

(assert (= (and b!4703352 res!1986225) b!4703353))

(declare-fun m!5621589 () Bool)

(assert (=> b!4703353 m!5621589))

(assert (=> b!4703202 d!1496299))

(declare-fun b!4703371 () Bool)

(declare-fun e!2933918 () Option!12213)

(declare-fun e!2933919 () Option!12213)

(assert (=> b!4703371 (= e!2933918 e!2933919)))

(declare-fun c!803888 () Bool)

(assert (=> b!4703371 (= c!803888 ((_ is Cons!52555) lt!1866943))))

(declare-fun b!4703372 () Bool)

(declare-fun e!2933921 () Bool)

(declare-fun lt!1867071 () Option!12213)

(declare-fun contains!15852 (List!52679 tuple2!54018) Bool)

(declare-fun get!17604 (Option!12213) tuple2!54018)

(assert (=> b!4703372 (= e!2933921 (contains!15852 lt!1866943 (get!17604 lt!1867071)))))

(declare-fun b!4703373 () Bool)

(assert (=> b!4703373 (= e!2933919 (getPair!510 (t!359897 lt!1866943) key!4653))))

(declare-fun b!4703374 () Bool)

(assert (=> b!4703374 (= e!2933918 (Some!12212 (h!58842 lt!1866943)))))

(declare-fun b!4703375 () Bool)

(declare-fun e!2933920 () Bool)

(assert (=> b!4703375 (= e!2933920 (not (containsKey!3189 lt!1866943 key!4653)))))

(declare-fun b!4703376 () Bool)

(declare-fun res!1986236 () Bool)

(assert (=> b!4703376 (=> (not res!1986236) (not e!2933921))))

(assert (=> b!4703376 (= res!1986236 (= (_1!30303 (get!17604 lt!1867071)) key!4653))))

(declare-fun b!4703377 () Bool)

(assert (=> b!4703377 (= e!2933919 None!12212)))

(declare-fun d!1496301 () Bool)

(declare-fun e!2933917 () Bool)

(assert (=> d!1496301 e!2933917))

(declare-fun res!1986235 () Bool)

(assert (=> d!1496301 (=> res!1986235 e!2933917)))

(assert (=> d!1496301 (= res!1986235 e!2933920)))

(declare-fun res!1986237 () Bool)

(assert (=> d!1496301 (=> (not res!1986237) (not e!2933920))))

(declare-fun isEmpty!29136 (Option!12213) Bool)

(assert (=> d!1496301 (= res!1986237 (isEmpty!29136 lt!1867071))))

(assert (=> d!1496301 (= lt!1867071 e!2933918)))

(declare-fun c!803889 () Bool)

(assert (=> d!1496301 (= c!803889 (and ((_ is Cons!52555) lt!1866943) (= (_1!30303 (h!58842 lt!1866943)) key!4653)))))

(assert (=> d!1496301 (noDuplicateKeys!1906 lt!1866943)))

(assert (=> d!1496301 (= (getPair!510 lt!1866943 key!4653) lt!1867071)))

(declare-fun b!4703370 () Bool)

(assert (=> b!4703370 (= e!2933917 e!2933921)))

(declare-fun res!1986234 () Bool)

(assert (=> b!4703370 (=> (not res!1986234) (not e!2933921))))

(assert (=> b!4703370 (= res!1986234 (isDefined!9468 lt!1867071))))

(assert (= (and d!1496301 c!803889) b!4703374))

(assert (= (and d!1496301 (not c!803889)) b!4703371))

(assert (= (and b!4703371 c!803888) b!4703373))

(assert (= (and b!4703371 (not c!803888)) b!4703377))

(assert (= (and d!1496301 res!1986237) b!4703375))

(assert (= (and d!1496301 (not res!1986235)) b!4703370))

(assert (= (and b!4703370 res!1986234) b!4703376))

(assert (= (and b!4703376 res!1986236) b!4703372))

(declare-fun m!5621591 () Bool)

(assert (=> b!4703373 m!5621591))

(declare-fun m!5621593 () Bool)

(assert (=> b!4703372 m!5621593))

(assert (=> b!4703372 m!5621593))

(declare-fun m!5621595 () Bool)

(assert (=> b!4703372 m!5621595))

(declare-fun m!5621597 () Bool)

(assert (=> b!4703370 m!5621597))

(declare-fun m!5621599 () Bool)

(assert (=> d!1496301 m!5621599))

(declare-fun m!5621601 () Bool)

(assert (=> d!1496301 m!5621601))

(assert (=> b!4703376 m!5621593))

(declare-fun m!5621603 () Bool)

(assert (=> b!4703375 m!5621603))

(assert (=> b!4703202 d!1496301))

(declare-fun d!1496303 () Bool)

(declare-fun res!1986238 () Bool)

(declare-fun e!2933922 () Bool)

(assert (=> d!1496303 (=> res!1986238 e!2933922)))

(assert (=> d!1496303 (= res!1986238 (and ((_ is Cons!52555) oldBucket!34) (= (_1!30303 (h!58842 oldBucket!34)) key!4653)))))

(assert (=> d!1496303 (= (containsKey!3189 oldBucket!34 key!4653) e!2933922)))

(declare-fun b!4703378 () Bool)

(declare-fun e!2933923 () Bool)

(assert (=> b!4703378 (= e!2933922 e!2933923)))

(declare-fun res!1986239 () Bool)

(assert (=> b!4703378 (=> (not res!1986239) (not e!2933923))))

(assert (=> b!4703378 (= res!1986239 ((_ is Cons!52555) oldBucket!34))))

(declare-fun b!4703379 () Bool)

(assert (=> b!4703379 (= e!2933923 (containsKey!3189 (t!359897 oldBucket!34) key!4653))))

(assert (= (and d!1496303 (not res!1986238)) b!4703378))

(assert (= (and b!4703378 res!1986239) b!4703379))

(assert (=> b!4703379 m!5621353))

(assert (=> b!4703202 d!1496303))

(declare-fun d!1496305 () Bool)

(assert (=> d!1496305 (= (isDefined!9468 (getPair!510 lt!1866943 key!4653)) (not (isEmpty!29136 (getPair!510 lt!1866943 key!4653))))))

(declare-fun bs!1096904 () Bool)

(assert (= bs!1096904 d!1496305))

(assert (=> bs!1096904 m!5621333))

(declare-fun m!5621605 () Bool)

(assert (=> bs!1096904 m!5621605))

(assert (=> b!4703202 d!1496305))

(declare-fun d!1496307 () Bool)

(declare-fun lt!1867074 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!9286 (List!52680) (InoxSet tuple2!54020))

(assert (=> d!1496307 (= lt!1867074 (select (content!9286 (toList!5701 lm!2023)) lt!1866936))))

(declare-fun e!2933929 () Bool)

(assert (=> d!1496307 (= lt!1867074 e!2933929)))

(declare-fun res!1986245 () Bool)

(assert (=> d!1496307 (=> (not res!1986245) (not e!2933929))))

(assert (=> d!1496307 (= res!1986245 ((_ is Cons!52556) (toList!5701 lm!2023)))))

(assert (=> d!1496307 (= (contains!15848 (toList!5701 lm!2023) lt!1866936) lt!1867074)))

(declare-fun b!4703384 () Bool)

(declare-fun e!2933928 () Bool)

(assert (=> b!4703384 (= e!2933929 e!2933928)))

(declare-fun res!1986244 () Bool)

(assert (=> b!4703384 (=> res!1986244 e!2933928)))

(assert (=> b!4703384 (= res!1986244 (= (h!58843 (toList!5701 lm!2023)) lt!1866936))))

(declare-fun b!4703385 () Bool)

(assert (=> b!4703385 (= e!2933928 (contains!15848 (t!359898 (toList!5701 lm!2023)) lt!1866936))))

(assert (= (and d!1496307 res!1986245) b!4703384))

(assert (= (and b!4703384 (not res!1986244)) b!4703385))

(declare-fun m!5621607 () Bool)

(assert (=> d!1496307 m!5621607))

(declare-fun m!5621609 () Bool)

(assert (=> d!1496307 m!5621609))

(declare-fun m!5621611 () Bool)

(assert (=> b!4703385 m!5621611))

(assert (=> b!4703202 d!1496307))

(declare-fun d!1496309 () Bool)

(declare-fun dynLambda!21755 (Int tuple2!54020) Bool)

(assert (=> d!1496309 (dynLambda!21755 lambda!210801 lt!1866936)))

(declare-fun lt!1867077 () Unit!126616)

(declare-fun choose!32964 (List!52680 Int tuple2!54020) Unit!126616)

(assert (=> d!1496309 (= lt!1867077 (choose!32964 (toList!5701 lm!2023) lambda!210801 lt!1866936))))

(declare-fun e!2933932 () Bool)

(assert (=> d!1496309 e!2933932))

(declare-fun res!1986248 () Bool)

(assert (=> d!1496309 (=> (not res!1986248) (not e!2933932))))

(assert (=> d!1496309 (= res!1986248 (forall!11415 (toList!5701 lm!2023) lambda!210801))))

(assert (=> d!1496309 (= (forallContained!3522 (toList!5701 lm!2023) lambda!210801 lt!1866936) lt!1867077)))

(declare-fun b!4703388 () Bool)

(assert (=> b!4703388 (= e!2933932 (contains!15848 (toList!5701 lm!2023) lt!1866936))))

(assert (= (and d!1496309 res!1986248) b!4703388))

(declare-fun b_lambda!177455 () Bool)

(assert (=> (not b_lambda!177455) (not d!1496309)))

(declare-fun m!5621613 () Bool)

(assert (=> d!1496309 m!5621613))

(declare-fun m!5621615 () Bool)

(assert (=> d!1496309 m!5621615))

(assert (=> d!1496309 m!5621321))

(assert (=> b!4703388 m!5621349))

(assert (=> b!4703202 d!1496309))

(declare-fun d!1496311 () Bool)

(declare-fun content!9287 (List!52679) (InoxSet tuple2!54018))

(assert (=> d!1496311 (= (eq!1065 lt!1866946 (+!2190 lt!1866929 lt!1866914)) (= (content!9287 (toList!5702 lt!1866946)) (content!9287 (toList!5702 (+!2190 lt!1866929 lt!1866914)))))))

(declare-fun bs!1096905 () Bool)

(assert (= bs!1096905 d!1496311))

(declare-fun m!5621617 () Bool)

(assert (=> bs!1096905 m!5621617))

(declare-fun m!5621619 () Bool)

(assert (=> bs!1096905 m!5621619))

(assert (=> b!4703200 d!1496311))

(declare-fun d!1496313 () Bool)

(declare-fun e!2933935 () Bool)

(assert (=> d!1496313 e!2933935))

(declare-fun res!1986253 () Bool)

(assert (=> d!1496313 (=> (not res!1986253) (not e!2933935))))

(declare-fun lt!1867087 () ListMap!5065)

(assert (=> d!1496313 (= res!1986253 (contains!15850 lt!1867087 (_1!30303 lt!1866914)))))

(declare-fun lt!1867089 () List!52679)

(assert (=> d!1496313 (= lt!1867087 (ListMap!5066 lt!1867089))))

(declare-fun lt!1867088 () Unit!126616)

(declare-fun lt!1867086 () Unit!126616)

(assert (=> d!1496313 (= lt!1867088 lt!1867086)))

(declare-datatypes ((Option!12217 0))(
  ( (None!12216) (Some!12216 (v!46719 V!14161)) )
))
(declare-fun getValueByKey!1865 (List!52679 K!13915) Option!12217)

(assert (=> d!1496313 (= (getValueByKey!1865 lt!1867089 (_1!30303 lt!1866914)) (Some!12216 (_2!30303 lt!1866914)))))

(declare-fun lemmaContainsTupThenGetReturnValue!1042 (List!52679 K!13915 V!14161) Unit!126616)

(assert (=> d!1496313 (= lt!1867086 (lemmaContainsTupThenGetReturnValue!1042 lt!1867089 (_1!30303 lt!1866914) (_2!30303 lt!1866914)))))

(declare-fun insertNoDuplicatedKeys!550 (List!52679 K!13915 V!14161) List!52679)

(assert (=> d!1496313 (= lt!1867089 (insertNoDuplicatedKeys!550 (toList!5702 lt!1866929) (_1!30303 lt!1866914) (_2!30303 lt!1866914)))))

(assert (=> d!1496313 (= (+!2190 lt!1866929 lt!1866914) lt!1867087)))

(declare-fun b!4703393 () Bool)

(declare-fun res!1986254 () Bool)

(assert (=> b!4703393 (=> (not res!1986254) (not e!2933935))))

(assert (=> b!4703393 (= res!1986254 (= (getValueByKey!1865 (toList!5702 lt!1867087) (_1!30303 lt!1866914)) (Some!12216 (_2!30303 lt!1866914))))))

(declare-fun b!4703394 () Bool)

(assert (=> b!4703394 (= e!2933935 (contains!15852 (toList!5702 lt!1867087) lt!1866914))))

(assert (= (and d!1496313 res!1986253) b!4703393))

(assert (= (and b!4703393 res!1986254) b!4703394))

(declare-fun m!5621621 () Bool)

(assert (=> d!1496313 m!5621621))

(declare-fun m!5621623 () Bool)

(assert (=> d!1496313 m!5621623))

(declare-fun m!5621625 () Bool)

(assert (=> d!1496313 m!5621625))

(declare-fun m!5621627 () Bool)

(assert (=> d!1496313 m!5621627))

(declare-fun m!5621629 () Bool)

(assert (=> b!4703393 m!5621629))

(declare-fun m!5621631 () Bool)

(assert (=> b!4703394 m!5621631))

(assert (=> b!4703200 d!1496313))

(declare-fun b!4703403 () Bool)

(declare-fun e!2933940 () List!52679)

(assert (=> b!4703403 (= e!2933940 (t!359897 lt!1866942))))

(declare-fun b!4703406 () Bool)

(declare-fun e!2933941 () List!52679)

(assert (=> b!4703406 (= e!2933941 Nil!52555)))

(declare-fun b!4703405 () Bool)

(assert (=> b!4703405 (= e!2933941 (Cons!52555 (h!58842 lt!1866942) (removePairForKey!1501 (t!359897 lt!1866942) key!4653)))))

(declare-fun d!1496315 () Bool)

(declare-fun lt!1867092 () List!52679)

(assert (=> d!1496315 (not (containsKey!3189 lt!1867092 key!4653))))

(assert (=> d!1496315 (= lt!1867092 e!2933940)))

(declare-fun c!803895 () Bool)

(assert (=> d!1496315 (= c!803895 (and ((_ is Cons!52555) lt!1866942) (= (_1!30303 (h!58842 lt!1866942)) key!4653)))))

(assert (=> d!1496315 (noDuplicateKeys!1906 lt!1866942)))

(assert (=> d!1496315 (= (removePairForKey!1501 lt!1866942 key!4653) lt!1867092)))

(declare-fun b!4703404 () Bool)

(assert (=> b!4703404 (= e!2933940 e!2933941)))

(declare-fun c!803894 () Bool)

(assert (=> b!4703404 (= c!803894 ((_ is Cons!52555) lt!1866942))))

(assert (= (and d!1496315 c!803895) b!4703403))

(assert (= (and d!1496315 (not c!803895)) b!4703404))

(assert (= (and b!4703404 c!803894) b!4703405))

(assert (= (and b!4703404 (not c!803894)) b!4703406))

(declare-fun m!5621633 () Bool)

(assert (=> b!4703405 m!5621633))

(declare-fun m!5621635 () Bool)

(assert (=> d!1496315 m!5621635))

(declare-fun m!5621637 () Bool)

(assert (=> d!1496315 m!5621637))

(assert (=> b!4703211 d!1496315))

(declare-fun d!1496317 () Bool)

(assert (=> d!1496317 (= (tail!8744 newBucket!218) (t!359897 newBucket!218))))

(assert (=> b!4703211 d!1496317))

(declare-fun d!1496319 () Bool)

(assert (=> d!1496319 (= (tail!8744 oldBucket!34) (t!359897 oldBucket!34))))

(assert (=> b!4703211 d!1496319))

(declare-fun b!4703468 () Bool)

(assert (=> b!4703468 true))

(declare-fun bs!1096955 () Bool)

(declare-fun b!4703466 () Bool)

(assert (= bs!1096955 (and b!4703466 b!4703468)))

(declare-fun lambda!210902 () Int)

(declare-fun lambda!210901 () Int)

(assert (=> bs!1096955 (= lambda!210902 lambda!210901)))

(assert (=> b!4703466 true))

(declare-fun lt!1867232 () ListMap!5065)

(declare-fun lambda!210903 () Int)

(assert (=> bs!1096955 (= (= lt!1867232 lt!1866920) (= lambda!210903 lambda!210901))))

(assert (=> b!4703466 (= (= lt!1867232 lt!1866920) (= lambda!210903 lambda!210902))))

(assert (=> b!4703466 true))

(declare-fun bs!1096956 () Bool)

(declare-fun d!1496321 () Bool)

(assert (= bs!1096956 (and d!1496321 b!4703468)))

(declare-fun lambda!210904 () Int)

(declare-fun lt!1867233 () ListMap!5065)

(assert (=> bs!1096956 (= (= lt!1867233 lt!1866920) (= lambda!210904 lambda!210901))))

(declare-fun bs!1096957 () Bool)

(assert (= bs!1096957 (and d!1496321 b!4703466)))

(assert (=> bs!1096957 (= (= lt!1867233 lt!1866920) (= lambda!210904 lambda!210902))))

(assert (=> bs!1096957 (= (= lt!1867233 lt!1867232) (= lambda!210904 lambda!210903))))

(assert (=> d!1496321 true))

(declare-fun call!328825 () Bool)

(declare-fun c!803911 () Bool)

(declare-fun bm!328818 () Bool)

(declare-fun forall!11417 (List!52679 Int) Bool)

(assert (=> bm!328818 (= call!328825 (forall!11417 (ite c!803911 (toList!5702 lt!1866920) lt!1866942) (ite c!803911 lambda!210901 lambda!210903)))))

(declare-fun b!4703464 () Bool)

(declare-fun e!2933976 () Bool)

(declare-fun invariantList!1452 (List!52679) Bool)

(assert (=> b!4703464 (= e!2933976 (invariantList!1452 (toList!5702 lt!1867233)))))

(declare-fun e!2933975 () ListMap!5065)

(assert (=> b!4703466 (= e!2933975 lt!1867232)))

(declare-fun lt!1867231 () ListMap!5065)

(assert (=> b!4703466 (= lt!1867231 (+!2190 lt!1866920 (h!58842 lt!1866942)))))

(assert (=> b!4703466 (= lt!1867232 (addToMapMapFromBucket!1338 (t!359897 lt!1866942) (+!2190 lt!1866920 (h!58842 lt!1866942))))))

(declare-fun lt!1867237 () Unit!126616)

(declare-fun call!328824 () Unit!126616)

(assert (=> b!4703466 (= lt!1867237 call!328824)))

(declare-fun call!328823 () Bool)

(assert (=> b!4703466 call!328823))

(declare-fun lt!1867230 () Unit!126616)

(assert (=> b!4703466 (= lt!1867230 lt!1867237)))

(assert (=> b!4703466 (forall!11417 (toList!5702 lt!1867231) lambda!210903)))

(declare-fun lt!1867235 () Unit!126616)

(declare-fun Unit!126631 () Unit!126616)

(assert (=> b!4703466 (= lt!1867235 Unit!126631)))

(assert (=> b!4703466 (forall!11417 (t!359897 lt!1866942) lambda!210903)))

(declare-fun lt!1867228 () Unit!126616)

(declare-fun Unit!126632 () Unit!126616)

(assert (=> b!4703466 (= lt!1867228 Unit!126632)))

(declare-fun lt!1867234 () Unit!126616)

(declare-fun Unit!126633 () Unit!126616)

(assert (=> b!4703466 (= lt!1867234 Unit!126633)))

(declare-fun lt!1867226 () Unit!126616)

(declare-fun forallContained!3524 (List!52679 Int tuple2!54018) Unit!126616)

(assert (=> b!4703466 (= lt!1867226 (forallContained!3524 (toList!5702 lt!1867231) lambda!210903 (h!58842 lt!1866942)))))

(assert (=> b!4703466 (contains!15850 lt!1867231 (_1!30303 (h!58842 lt!1866942)))))

(declare-fun lt!1867238 () Unit!126616)

(declare-fun Unit!126634 () Unit!126616)

(assert (=> b!4703466 (= lt!1867238 Unit!126634)))

(assert (=> b!4703466 (contains!15850 lt!1867232 (_1!30303 (h!58842 lt!1866942)))))

(declare-fun lt!1867227 () Unit!126616)

(declare-fun Unit!126635 () Unit!126616)

(assert (=> b!4703466 (= lt!1867227 Unit!126635)))

(assert (=> b!4703466 (forall!11417 lt!1866942 lambda!210903)))

(declare-fun lt!1867241 () Unit!126616)

(declare-fun Unit!126636 () Unit!126616)

(assert (=> b!4703466 (= lt!1867241 Unit!126636)))

(assert (=> b!4703466 (forall!11417 (toList!5702 lt!1867231) lambda!210903)))

(declare-fun lt!1867229 () Unit!126616)

(declare-fun Unit!126637 () Unit!126616)

(assert (=> b!4703466 (= lt!1867229 Unit!126637)))

(declare-fun lt!1867243 () Unit!126616)

(declare-fun Unit!126638 () Unit!126616)

(assert (=> b!4703466 (= lt!1867243 Unit!126638)))

(declare-fun lt!1867239 () Unit!126616)

(declare-fun addForallContainsKeyThenBeforeAdding!739 (ListMap!5065 ListMap!5065 K!13915 V!14161) Unit!126616)

(assert (=> b!4703466 (= lt!1867239 (addForallContainsKeyThenBeforeAdding!739 lt!1866920 lt!1867232 (_1!30303 (h!58842 lt!1866942)) (_2!30303 (h!58842 lt!1866942))))))

(assert (=> b!4703466 (forall!11417 (toList!5702 lt!1866920) lambda!210903)))

(declare-fun lt!1867240 () Unit!126616)

(assert (=> b!4703466 (= lt!1867240 lt!1867239)))

(assert (=> b!4703466 (forall!11417 (toList!5702 lt!1866920) lambda!210903)))

(declare-fun lt!1867236 () Unit!126616)

(declare-fun Unit!126639 () Unit!126616)

(assert (=> b!4703466 (= lt!1867236 Unit!126639)))

(declare-fun res!1986281 () Bool)

(assert (=> b!4703466 (= res!1986281 call!328825)))

(declare-fun e!2933974 () Bool)

(assert (=> b!4703466 (=> (not res!1986281) (not e!2933974))))

(assert (=> b!4703466 e!2933974))

(declare-fun lt!1867246 () Unit!126616)

(declare-fun Unit!126640 () Unit!126616)

(assert (=> b!4703466 (= lt!1867246 Unit!126640)))

(declare-fun b!4703467 () Bool)

(assert (=> b!4703467 (= e!2933974 (forall!11417 (toList!5702 lt!1866920) lambda!210903))))

(declare-fun bm!328819 () Bool)

(assert (=> bm!328819 (= call!328823 (forall!11417 (toList!5702 lt!1866920) (ite c!803911 lambda!210901 lambda!210902)))))

(declare-fun bm!328820 () Bool)

(declare-fun lemmaContainsAllItsOwnKeys!740 (ListMap!5065) Unit!126616)

(assert (=> bm!328820 (= call!328824 (lemmaContainsAllItsOwnKeys!740 lt!1866920))))

(assert (=> b!4703468 (= e!2933975 lt!1866920)))

(declare-fun lt!1867244 () Unit!126616)

(assert (=> b!4703468 (= lt!1867244 call!328824)))

(assert (=> b!4703468 call!328825))

(declare-fun lt!1867245 () Unit!126616)

(assert (=> b!4703468 (= lt!1867245 lt!1867244)))

(assert (=> b!4703468 call!328823))

(declare-fun lt!1867242 () Unit!126616)

(declare-fun Unit!126641 () Unit!126616)

(assert (=> b!4703468 (= lt!1867242 Unit!126641)))

(declare-fun b!4703465 () Bool)

(declare-fun res!1986282 () Bool)

(assert (=> b!4703465 (=> (not res!1986282) (not e!2933976))))

(assert (=> b!4703465 (= res!1986282 (forall!11417 (toList!5702 lt!1866920) lambda!210904))))

(assert (=> d!1496321 e!2933976))

(declare-fun res!1986280 () Bool)

(assert (=> d!1496321 (=> (not res!1986280) (not e!2933976))))

(assert (=> d!1496321 (= res!1986280 (forall!11417 lt!1866942 lambda!210904))))

(assert (=> d!1496321 (= lt!1867233 e!2933975)))

(assert (=> d!1496321 (= c!803911 ((_ is Nil!52555) lt!1866942))))

(assert (=> d!1496321 (noDuplicateKeys!1906 lt!1866942)))

(assert (=> d!1496321 (= (addToMapMapFromBucket!1338 lt!1866942 lt!1866920) lt!1867233)))

(assert (= (and d!1496321 c!803911) b!4703468))

(assert (= (and d!1496321 (not c!803911)) b!4703466))

(assert (= (and b!4703466 res!1986281) b!4703467))

(assert (= (or b!4703468 b!4703466) bm!328820))

(assert (= (or b!4703468 b!4703466) bm!328819))

(assert (= (or b!4703468 b!4703466) bm!328818))

(assert (= (and d!1496321 res!1986280) b!4703465))

(assert (= (and b!4703465 res!1986282) b!4703464))

(declare-fun m!5621821 () Bool)

(assert (=> b!4703464 m!5621821))

(declare-fun m!5621823 () Bool)

(assert (=> bm!328820 m!5621823))

(declare-fun m!5621825 () Bool)

(assert (=> d!1496321 m!5621825))

(assert (=> d!1496321 m!5621637))

(declare-fun m!5621827 () Bool)

(assert (=> b!4703465 m!5621827))

(declare-fun m!5621829 () Bool)

(assert (=> bm!328818 m!5621829))

(declare-fun m!5621831 () Bool)

(assert (=> b!4703466 m!5621831))

(declare-fun m!5621833 () Bool)

(assert (=> b!4703466 m!5621833))

(declare-fun m!5621835 () Bool)

(assert (=> b!4703466 m!5621835))

(declare-fun m!5621837 () Bool)

(assert (=> b!4703466 m!5621837))

(assert (=> b!4703466 m!5621835))

(declare-fun m!5621839 () Bool)

(assert (=> b!4703466 m!5621839))

(declare-fun m!5621841 () Bool)

(assert (=> b!4703466 m!5621841))

(declare-fun m!5621843 () Bool)

(assert (=> b!4703466 m!5621843))

(declare-fun m!5621845 () Bool)

(assert (=> b!4703466 m!5621845))

(declare-fun m!5621847 () Bool)

(assert (=> b!4703466 m!5621847))

(assert (=> b!4703466 m!5621831))

(assert (=> b!4703466 m!5621845))

(declare-fun m!5621849 () Bool)

(assert (=> b!4703466 m!5621849))

(declare-fun m!5621851 () Bool)

(assert (=> bm!328819 m!5621851))

(assert (=> b!4703467 m!5621835))

(assert (=> b!4703220 d!1496321))

(declare-fun d!1496373 () Bool)

(declare-fun e!2934002 () Bool)

(assert (=> d!1496373 e!2934002))

(declare-fun res!1986297 () Bool)

(assert (=> d!1496373 (=> res!1986297 e!2934002)))

(declare-fun e!2933998 () Bool)

(assert (=> d!1496373 (= res!1986297 e!2933998)))

(declare-fun res!1986299 () Bool)

(assert (=> d!1496373 (=> (not res!1986299) (not e!2933998))))

(declare-fun lt!1867275 () Bool)

(assert (=> d!1496373 (= res!1986299 (not lt!1867275))))

(declare-fun lt!1867269 () Bool)

(assert (=> d!1496373 (= lt!1867275 lt!1867269)))

(declare-fun lt!1867268 () Unit!126616)

(declare-fun e!2933997 () Unit!126616)

(assert (=> d!1496373 (= lt!1867268 e!2933997)))

(declare-fun c!803919 () Bool)

(assert (=> d!1496373 (= c!803919 lt!1867269)))

(declare-fun containsKey!3192 (List!52679 K!13915) Bool)

(assert (=> d!1496373 (= lt!1867269 (containsKey!3192 (toList!5702 lt!1866947) key!4653))))

(assert (=> d!1496373 (= (contains!15850 lt!1866947 key!4653) lt!1867275)))

(declare-fun b!4703497 () Bool)

(declare-fun e!2933999 () Unit!126616)

(declare-fun Unit!126642 () Unit!126616)

(assert (=> b!4703497 (= e!2933999 Unit!126642)))

(declare-fun b!4703498 () Bool)

(declare-fun e!2934001 () Bool)

(assert (=> b!4703498 (= e!2934002 e!2934001)))

(declare-fun res!1986298 () Bool)

(assert (=> b!4703498 (=> (not res!1986298) (not e!2934001))))

(declare-fun isDefined!9471 (Option!12217) Bool)

(assert (=> b!4703498 (= res!1986298 (isDefined!9471 (getValueByKey!1865 (toList!5702 lt!1866947) key!4653)))))

(declare-fun b!4703499 () Bool)

(declare-datatypes ((List!52682 0))(
  ( (Nil!52558) (Cons!52558 (h!58847 K!13915) (t!359902 List!52682)) )
))
(declare-fun contains!15853 (List!52682 K!13915) Bool)

(declare-fun keys!18807 (ListMap!5065) List!52682)

(assert (=> b!4703499 (= e!2934001 (contains!15853 (keys!18807 lt!1866947) key!4653))))

(declare-fun b!4703500 () Bool)

(assert (=> b!4703500 false))

(declare-fun lt!1867272 () Unit!126616)

(declare-fun lt!1867274 () Unit!126616)

(assert (=> b!4703500 (= lt!1867272 lt!1867274)))

(assert (=> b!4703500 (containsKey!3192 (toList!5702 lt!1866947) key!4653)))

(declare-fun lemmaInGetKeysListThenContainsKey!890 (List!52679 K!13915) Unit!126616)

(assert (=> b!4703500 (= lt!1867274 (lemmaInGetKeysListThenContainsKey!890 (toList!5702 lt!1866947) key!4653))))

(declare-fun Unit!126643 () Unit!126616)

(assert (=> b!4703500 (= e!2933999 Unit!126643)))

(declare-fun b!4703501 () Bool)

(declare-fun lt!1867271 () Unit!126616)

(assert (=> b!4703501 (= e!2933997 lt!1867271)))

(declare-fun lt!1867273 () Unit!126616)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1756 (List!52679 K!13915) Unit!126616)

(assert (=> b!4703501 (= lt!1867273 (lemmaContainsKeyImpliesGetValueByKeyDefined!1756 (toList!5702 lt!1866947) key!4653))))

(assert (=> b!4703501 (isDefined!9471 (getValueByKey!1865 (toList!5702 lt!1866947) key!4653))))

(declare-fun lt!1867270 () Unit!126616)

(assert (=> b!4703501 (= lt!1867270 lt!1867273)))

(declare-fun lemmaInListThenGetKeysListContains!886 (List!52679 K!13915) Unit!126616)

(assert (=> b!4703501 (= lt!1867271 (lemmaInListThenGetKeysListContains!886 (toList!5702 lt!1866947) key!4653))))

(declare-fun call!328828 () Bool)

(assert (=> b!4703501 call!328828))

(declare-fun b!4703502 () Bool)

(assert (=> b!4703502 (= e!2933998 (not (contains!15853 (keys!18807 lt!1866947) key!4653)))))

(declare-fun bm!328823 () Bool)

(declare-fun e!2934000 () List!52682)

(assert (=> bm!328823 (= call!328828 (contains!15853 e!2934000 key!4653))))

(declare-fun c!803918 () Bool)

(assert (=> bm!328823 (= c!803918 c!803919)))

(declare-fun b!4703503 () Bool)

(assert (=> b!4703503 (= e!2934000 (keys!18807 lt!1866947))))

(declare-fun b!4703504 () Bool)

(assert (=> b!4703504 (= e!2933997 e!2933999)))

(declare-fun c!803920 () Bool)

(assert (=> b!4703504 (= c!803920 call!328828)))

(declare-fun b!4703505 () Bool)

(declare-fun getKeysList!891 (List!52679) List!52682)

(assert (=> b!4703505 (= e!2934000 (getKeysList!891 (toList!5702 lt!1866947)))))

(assert (= (and d!1496373 c!803919) b!4703501))

(assert (= (and d!1496373 (not c!803919)) b!4703504))

(assert (= (and b!4703504 c!803920) b!4703500))

(assert (= (and b!4703504 (not c!803920)) b!4703497))

(assert (= (or b!4703501 b!4703504) bm!328823))

(assert (= (and bm!328823 c!803918) b!4703505))

(assert (= (and bm!328823 (not c!803918)) b!4703503))

(assert (= (and d!1496373 res!1986299) b!4703502))

(assert (= (and d!1496373 (not res!1986297)) b!4703498))

(assert (= (and b!4703498 res!1986298) b!4703499))

(declare-fun m!5621891 () Bool)

(assert (=> b!4703505 m!5621891))

(declare-fun m!5621893 () Bool)

(assert (=> b!4703501 m!5621893))

(declare-fun m!5621895 () Bool)

(assert (=> b!4703501 m!5621895))

(assert (=> b!4703501 m!5621895))

(declare-fun m!5621897 () Bool)

(assert (=> b!4703501 m!5621897))

(declare-fun m!5621899 () Bool)

(assert (=> b!4703501 m!5621899))

(declare-fun m!5621901 () Bool)

(assert (=> b!4703503 m!5621901))

(assert (=> b!4703498 m!5621895))

(assert (=> b!4703498 m!5621895))

(assert (=> b!4703498 m!5621897))

(assert (=> b!4703499 m!5621901))

(assert (=> b!4703499 m!5621901))

(declare-fun m!5621903 () Bool)

(assert (=> b!4703499 m!5621903))

(declare-fun m!5621905 () Bool)

(assert (=> bm!328823 m!5621905))

(declare-fun m!5621907 () Bool)

(assert (=> d!1496373 m!5621907))

(assert (=> b!4703500 m!5621907))

(declare-fun m!5621909 () Bool)

(assert (=> b!4703500 m!5621909))

(assert (=> b!4703502 m!5621901))

(assert (=> b!4703502 m!5621901))

(assert (=> b!4703502 m!5621903))

(assert (=> b!4703220 d!1496373))

(declare-fun bs!1096999 () Bool)

(declare-fun d!1496385 () Bool)

(assert (= bs!1096999 (and d!1496385 start!477268)))

(declare-fun lambda!210915 () Int)

(assert (=> bs!1096999 (= lambda!210915 lambda!210801)))

(declare-fun bs!1097000 () Bool)

(assert (= bs!1097000 (and d!1496385 d!1496231)))

(assert (=> bs!1097000 (not (= lambda!210915 lambda!210804))))

(declare-fun bs!1097001 () Bool)

(assert (= bs!1097001 (and d!1496385 d!1496255)))

(assert (=> bs!1097001 (= lambda!210915 lambda!210807)))

(declare-fun bs!1097002 () Bool)

(assert (= bs!1097002 (and d!1496385 d!1496263)))

(assert (=> bs!1097002 (= lambda!210915 lambda!210830)))

(declare-fun lt!1867307 () ListMap!5065)

(assert (=> d!1496385 (invariantList!1452 (toList!5702 lt!1867307))))

(declare-fun e!2934010 () ListMap!5065)

(assert (=> d!1496385 (= lt!1867307 e!2934010)))

(declare-fun c!803925 () Bool)

(assert (=> d!1496385 (= c!803925 ((_ is Cons!52556) (Cons!52556 (tuple2!54021 hash!405 lt!1866942) (t!359898 (toList!5701 lm!2023)))))))

(assert (=> d!1496385 (forall!11415 (Cons!52556 (tuple2!54021 hash!405 lt!1866942) (t!359898 (toList!5701 lm!2023))) lambda!210915)))

(assert (=> d!1496385 (= (extractMap!1932 (Cons!52556 (tuple2!54021 hash!405 lt!1866942) (t!359898 (toList!5701 lm!2023)))) lt!1867307)))

(declare-fun b!4703519 () Bool)

(assert (=> b!4703519 (= e!2934010 (addToMapMapFromBucket!1338 (_2!30304 (h!58843 (Cons!52556 (tuple2!54021 hash!405 lt!1866942) (t!359898 (toList!5701 lm!2023))))) (extractMap!1932 (t!359898 (Cons!52556 (tuple2!54021 hash!405 lt!1866942) (t!359898 (toList!5701 lm!2023)))))))))

(declare-fun b!4703520 () Bool)

(assert (=> b!4703520 (= e!2934010 (ListMap!5066 Nil!52555))))

(assert (= (and d!1496385 c!803925) b!4703519))

(assert (= (and d!1496385 (not c!803925)) b!4703520))

(declare-fun m!5621977 () Bool)

(assert (=> d!1496385 m!5621977))

(declare-fun m!5621979 () Bool)

(assert (=> d!1496385 m!5621979))

(declare-fun m!5621981 () Bool)

(assert (=> b!4703519 m!5621981))

(assert (=> b!4703519 m!5621981))

(declare-fun m!5621983 () Bool)

(assert (=> b!4703519 m!5621983))

(assert (=> b!4703220 d!1496385))

(declare-fun d!1496399 () Bool)

(declare-fun e!2934014 () Bool)

(assert (=> d!1496399 e!2934014))

(declare-fun res!1986308 () Bool)

(assert (=> d!1496399 (=> (not res!1986308) (not e!2934014))))

(declare-fun lt!1867330 () ListMap!5065)

(assert (=> d!1496399 (= res!1986308 (contains!15850 lt!1867330 (_1!30303 lt!1866924)))))

(declare-fun lt!1867332 () List!52679)

(assert (=> d!1496399 (= lt!1867330 (ListMap!5066 lt!1867332))))

(declare-fun lt!1867331 () Unit!126616)

(declare-fun lt!1867329 () Unit!126616)

(assert (=> d!1496399 (= lt!1867331 lt!1867329)))

(assert (=> d!1496399 (= (getValueByKey!1865 lt!1867332 (_1!30303 lt!1866924)) (Some!12216 (_2!30303 lt!1866924)))))

(assert (=> d!1496399 (= lt!1867329 (lemmaContainsTupThenGetReturnValue!1042 lt!1867332 (_1!30303 lt!1866924) (_2!30303 lt!1866924)))))

(assert (=> d!1496399 (= lt!1867332 (insertNoDuplicatedKeys!550 (toList!5702 (addToMapMapFromBucket!1338 lt!1866942 lt!1866920)) (_1!30303 lt!1866924) (_2!30303 lt!1866924)))))

(assert (=> d!1496399 (= (+!2190 (addToMapMapFromBucket!1338 lt!1866942 lt!1866920) lt!1866924) lt!1867330)))

(declare-fun b!4703526 () Bool)

(declare-fun res!1986309 () Bool)

(assert (=> b!4703526 (=> (not res!1986309) (not e!2934014))))

(assert (=> b!4703526 (= res!1986309 (= (getValueByKey!1865 (toList!5702 lt!1867330) (_1!30303 lt!1866924)) (Some!12216 (_2!30303 lt!1866924))))))

(declare-fun b!4703527 () Bool)

(assert (=> b!4703527 (= e!2934014 (contains!15852 (toList!5702 lt!1867330) lt!1866924))))

(assert (= (and d!1496399 res!1986308) b!4703526))

(assert (= (and b!4703526 res!1986309) b!4703527))

(declare-fun m!5621985 () Bool)

(assert (=> d!1496399 m!5621985))

(declare-fun m!5621987 () Bool)

(assert (=> d!1496399 m!5621987))

(declare-fun m!5621989 () Bool)

(assert (=> d!1496399 m!5621989))

(declare-fun m!5621991 () Bool)

(assert (=> d!1496399 m!5621991))

(declare-fun m!5621993 () Bool)

(assert (=> b!4703526 m!5621993))

(declare-fun m!5621995 () Bool)

(assert (=> b!4703527 m!5621995))

(assert (=> b!4703220 d!1496399))

(declare-fun d!1496401 () Bool)

(assert (=> d!1496401 (= (eq!1065 (addToMapMapFromBucket!1338 (Cons!52555 lt!1866914 lt!1866935) lt!1866920) (+!2190 (addToMapMapFromBucket!1338 lt!1866935 lt!1866920) lt!1866914)) (= (content!9287 (toList!5702 (addToMapMapFromBucket!1338 (Cons!52555 lt!1866914 lt!1866935) lt!1866920))) (content!9287 (toList!5702 (+!2190 (addToMapMapFromBucket!1338 lt!1866935 lt!1866920) lt!1866914)))))))

(declare-fun bs!1097017 () Bool)

(assert (= bs!1097017 d!1496401))

(declare-fun m!5621997 () Bool)

(assert (=> bs!1097017 m!5621997))

(declare-fun m!5621999 () Bool)

(assert (=> bs!1097017 m!5621999))

(assert (=> b!4703220 d!1496401))

(declare-fun bs!1097021 () Bool)

(declare-fun b!4703532 () Bool)

(assert (= bs!1097021 (and b!4703532 b!4703468)))

(declare-fun lambda!210918 () Int)

(assert (=> bs!1097021 (= lambda!210918 lambda!210901)))

(declare-fun bs!1097022 () Bool)

(assert (= bs!1097022 (and b!4703532 b!4703466)))

(assert (=> bs!1097022 (= lambda!210918 lambda!210902)))

(assert (=> bs!1097022 (= (= lt!1866920 lt!1867232) (= lambda!210918 lambda!210903))))

(declare-fun bs!1097023 () Bool)

(assert (= bs!1097023 (and b!4703532 d!1496321)))

(assert (=> bs!1097023 (= (= lt!1866920 lt!1867233) (= lambda!210918 lambda!210904))))

(assert (=> b!4703532 true))

(declare-fun bs!1097024 () Bool)

(declare-fun b!4703530 () Bool)

(assert (= bs!1097024 (and b!4703530 b!4703532)))

(declare-fun lambda!210920 () Int)

(assert (=> bs!1097024 (= lambda!210920 lambda!210918)))

(declare-fun bs!1097025 () Bool)

(assert (= bs!1097025 (and b!4703530 d!1496321)))

(assert (=> bs!1097025 (= (= lt!1866920 lt!1867233) (= lambda!210920 lambda!210904))))

(declare-fun bs!1097026 () Bool)

(assert (= bs!1097026 (and b!4703530 b!4703466)))

(assert (=> bs!1097026 (= (= lt!1866920 lt!1867232) (= lambda!210920 lambda!210903))))

(assert (=> bs!1097026 (= lambda!210920 lambda!210902)))

(declare-fun bs!1097027 () Bool)

(assert (= bs!1097027 (and b!4703530 b!4703468)))

(assert (=> bs!1097027 (= lambda!210920 lambda!210901)))

(assert (=> b!4703530 true))

(declare-fun lambda!210921 () Int)

(declare-fun lt!1867339 () ListMap!5065)

(assert (=> bs!1097024 (= (= lt!1867339 lt!1866920) (= lambda!210921 lambda!210918))))

(assert (=> b!4703530 (= (= lt!1867339 lt!1866920) (= lambda!210921 lambda!210920))))

(assert (=> bs!1097025 (= (= lt!1867339 lt!1867233) (= lambda!210921 lambda!210904))))

(assert (=> bs!1097026 (= (= lt!1867339 lt!1867232) (= lambda!210921 lambda!210903))))

(assert (=> bs!1097026 (= (= lt!1867339 lt!1866920) (= lambda!210921 lambda!210902))))

(assert (=> bs!1097027 (= (= lt!1867339 lt!1866920) (= lambda!210921 lambda!210901))))

(assert (=> b!4703530 true))

(declare-fun bs!1097037 () Bool)

(declare-fun d!1496403 () Bool)

(assert (= bs!1097037 (and d!1496403 b!4703532)))

(declare-fun lambda!210923 () Int)

(declare-fun lt!1867340 () ListMap!5065)

(assert (=> bs!1097037 (= (= lt!1867340 lt!1866920) (= lambda!210923 lambda!210918))))

(declare-fun bs!1097039 () Bool)

(assert (= bs!1097039 (and d!1496403 b!4703530)))

(assert (=> bs!1097039 (= (= lt!1867340 lt!1866920) (= lambda!210923 lambda!210920))))

(assert (=> bs!1097039 (= (= lt!1867340 lt!1867339) (= lambda!210923 lambda!210921))))

(declare-fun bs!1097040 () Bool)

(assert (= bs!1097040 (and d!1496403 d!1496321)))

(assert (=> bs!1097040 (= (= lt!1867340 lt!1867233) (= lambda!210923 lambda!210904))))

(declare-fun bs!1097041 () Bool)

(assert (= bs!1097041 (and d!1496403 b!4703466)))

(assert (=> bs!1097041 (= (= lt!1867340 lt!1867232) (= lambda!210923 lambda!210903))))

(assert (=> bs!1097041 (= (= lt!1867340 lt!1866920) (= lambda!210923 lambda!210902))))

(declare-fun bs!1097042 () Bool)

(assert (= bs!1097042 (and d!1496403 b!4703468)))

(assert (=> bs!1097042 (= (= lt!1867340 lt!1866920) (= lambda!210923 lambda!210901))))

(assert (=> d!1496403 true))

(declare-fun bm!328830 () Bool)

(declare-fun call!328837 () Bool)

(declare-fun c!803927 () Bool)

(assert (=> bm!328830 (= call!328837 (forall!11417 (ite c!803927 (toList!5702 lt!1866920) (Cons!52555 lt!1866924 lt!1866942)) (ite c!803927 lambda!210918 lambda!210921)))))

(declare-fun b!4703528 () Bool)

(declare-fun e!2934017 () Bool)

(assert (=> b!4703528 (= e!2934017 (invariantList!1452 (toList!5702 lt!1867340)))))

(declare-fun e!2934016 () ListMap!5065)

(assert (=> b!4703530 (= e!2934016 lt!1867339)))

(declare-fun lt!1867338 () ListMap!5065)

(assert (=> b!4703530 (= lt!1867338 (+!2190 lt!1866920 (h!58842 (Cons!52555 lt!1866924 lt!1866942))))))

(assert (=> b!4703530 (= lt!1867339 (addToMapMapFromBucket!1338 (t!359897 (Cons!52555 lt!1866924 lt!1866942)) (+!2190 lt!1866920 (h!58842 (Cons!52555 lt!1866924 lt!1866942)))))))

(declare-fun lt!1867344 () Unit!126616)

(declare-fun call!328836 () Unit!126616)

(assert (=> b!4703530 (= lt!1867344 call!328836)))

(declare-fun call!328835 () Bool)

(assert (=> b!4703530 call!328835))

(declare-fun lt!1867337 () Unit!126616)

(assert (=> b!4703530 (= lt!1867337 lt!1867344)))

(assert (=> b!4703530 (forall!11417 (toList!5702 lt!1867338) lambda!210921)))

(declare-fun lt!1867342 () Unit!126616)

(declare-fun Unit!126644 () Unit!126616)

(assert (=> b!4703530 (= lt!1867342 Unit!126644)))

(assert (=> b!4703530 (forall!11417 (t!359897 (Cons!52555 lt!1866924 lt!1866942)) lambda!210921)))

(declare-fun lt!1867335 () Unit!126616)

(declare-fun Unit!126645 () Unit!126616)

(assert (=> b!4703530 (= lt!1867335 Unit!126645)))

(declare-fun lt!1867341 () Unit!126616)

(declare-fun Unit!126646 () Unit!126616)

(assert (=> b!4703530 (= lt!1867341 Unit!126646)))

(declare-fun lt!1867333 () Unit!126616)

(assert (=> b!4703530 (= lt!1867333 (forallContained!3524 (toList!5702 lt!1867338) lambda!210921 (h!58842 (Cons!52555 lt!1866924 lt!1866942))))))

(assert (=> b!4703530 (contains!15850 lt!1867338 (_1!30303 (h!58842 (Cons!52555 lt!1866924 lt!1866942))))))

(declare-fun lt!1867345 () Unit!126616)

(declare-fun Unit!126647 () Unit!126616)

(assert (=> b!4703530 (= lt!1867345 Unit!126647)))

(assert (=> b!4703530 (contains!15850 lt!1867339 (_1!30303 (h!58842 (Cons!52555 lt!1866924 lt!1866942))))))

(declare-fun lt!1867334 () Unit!126616)

(declare-fun Unit!126648 () Unit!126616)

(assert (=> b!4703530 (= lt!1867334 Unit!126648)))

(assert (=> b!4703530 (forall!11417 (Cons!52555 lt!1866924 lt!1866942) lambda!210921)))

(declare-fun lt!1867348 () Unit!126616)

(declare-fun Unit!126649 () Unit!126616)

(assert (=> b!4703530 (= lt!1867348 Unit!126649)))

(assert (=> b!4703530 (forall!11417 (toList!5702 lt!1867338) lambda!210921)))

(declare-fun lt!1867336 () Unit!126616)

(declare-fun Unit!126650 () Unit!126616)

(assert (=> b!4703530 (= lt!1867336 Unit!126650)))

(declare-fun lt!1867350 () Unit!126616)

(declare-fun Unit!126651 () Unit!126616)

(assert (=> b!4703530 (= lt!1867350 Unit!126651)))

(declare-fun lt!1867346 () Unit!126616)

(assert (=> b!4703530 (= lt!1867346 (addForallContainsKeyThenBeforeAdding!739 lt!1866920 lt!1867339 (_1!30303 (h!58842 (Cons!52555 lt!1866924 lt!1866942))) (_2!30303 (h!58842 (Cons!52555 lt!1866924 lt!1866942)))))))

(assert (=> b!4703530 (forall!11417 (toList!5702 lt!1866920) lambda!210921)))

(declare-fun lt!1867347 () Unit!126616)

(assert (=> b!4703530 (= lt!1867347 lt!1867346)))

(assert (=> b!4703530 (forall!11417 (toList!5702 lt!1866920) lambda!210921)))

(declare-fun lt!1867343 () Unit!126616)

(declare-fun Unit!126652 () Unit!126616)

(assert (=> b!4703530 (= lt!1867343 Unit!126652)))

(declare-fun res!1986311 () Bool)

(assert (=> b!4703530 (= res!1986311 call!328837)))

(declare-fun e!2934015 () Bool)

(assert (=> b!4703530 (=> (not res!1986311) (not e!2934015))))

(assert (=> b!4703530 e!2934015))

(declare-fun lt!1867353 () Unit!126616)

(declare-fun Unit!126653 () Unit!126616)

(assert (=> b!4703530 (= lt!1867353 Unit!126653)))

(declare-fun b!4703531 () Bool)

(assert (=> b!4703531 (= e!2934015 (forall!11417 (toList!5702 lt!1866920) lambda!210921))))

(declare-fun bm!328831 () Bool)

(assert (=> bm!328831 (= call!328835 (forall!11417 (toList!5702 lt!1866920) (ite c!803927 lambda!210918 lambda!210920)))))

(declare-fun bm!328832 () Bool)

(assert (=> bm!328832 (= call!328836 (lemmaContainsAllItsOwnKeys!740 lt!1866920))))

(assert (=> b!4703532 (= e!2934016 lt!1866920)))

(declare-fun lt!1867351 () Unit!126616)

(assert (=> b!4703532 (= lt!1867351 call!328836)))

(assert (=> b!4703532 call!328837))

(declare-fun lt!1867352 () Unit!126616)

(assert (=> b!4703532 (= lt!1867352 lt!1867351)))

(assert (=> b!4703532 call!328835))

(declare-fun lt!1867349 () Unit!126616)

(declare-fun Unit!126654 () Unit!126616)

(assert (=> b!4703532 (= lt!1867349 Unit!126654)))

(declare-fun b!4703529 () Bool)

(declare-fun res!1986312 () Bool)

(assert (=> b!4703529 (=> (not res!1986312) (not e!2934017))))

(assert (=> b!4703529 (= res!1986312 (forall!11417 (toList!5702 lt!1866920) lambda!210923))))

(assert (=> d!1496403 e!2934017))

(declare-fun res!1986310 () Bool)

(assert (=> d!1496403 (=> (not res!1986310) (not e!2934017))))

(assert (=> d!1496403 (= res!1986310 (forall!11417 (Cons!52555 lt!1866924 lt!1866942) lambda!210923))))

(assert (=> d!1496403 (= lt!1867340 e!2934016)))

(assert (=> d!1496403 (= c!803927 ((_ is Nil!52555) (Cons!52555 lt!1866924 lt!1866942)))))

(assert (=> d!1496403 (noDuplicateKeys!1906 (Cons!52555 lt!1866924 lt!1866942))))

(assert (=> d!1496403 (= (addToMapMapFromBucket!1338 (Cons!52555 lt!1866924 lt!1866942) lt!1866920) lt!1867340)))

(assert (= (and d!1496403 c!803927) b!4703532))

(assert (= (and d!1496403 (not c!803927)) b!4703530))

(assert (= (and b!4703530 res!1986311) b!4703531))

(assert (= (or b!4703532 b!4703530) bm!328832))

(assert (= (or b!4703532 b!4703530) bm!328831))

(assert (= (or b!4703532 b!4703530) bm!328830))

(assert (= (and d!1496403 res!1986310) b!4703529))

(assert (= (and b!4703529 res!1986312) b!4703528))

(declare-fun m!5622025 () Bool)

(assert (=> b!4703528 m!5622025))

(assert (=> bm!328832 m!5621823))

(declare-fun m!5622029 () Bool)

(assert (=> d!1496403 m!5622029))

(declare-fun m!5622033 () Bool)

(assert (=> d!1496403 m!5622033))

(declare-fun m!5622035 () Bool)

(assert (=> b!4703529 m!5622035))

(declare-fun m!5622041 () Bool)

(assert (=> bm!328830 m!5622041))

(declare-fun m!5622045 () Bool)

(assert (=> b!4703530 m!5622045))

(declare-fun m!5622047 () Bool)

(assert (=> b!4703530 m!5622047))

(declare-fun m!5622049 () Bool)

(assert (=> b!4703530 m!5622049))

(declare-fun m!5622051 () Bool)

(assert (=> b!4703530 m!5622051))

(assert (=> b!4703530 m!5622049))

(declare-fun m!5622053 () Bool)

(assert (=> b!4703530 m!5622053))

(declare-fun m!5622055 () Bool)

(assert (=> b!4703530 m!5622055))

(declare-fun m!5622057 () Bool)

(assert (=> b!4703530 m!5622057))

(declare-fun m!5622059 () Bool)

(assert (=> b!4703530 m!5622059))

(declare-fun m!5622061 () Bool)

(assert (=> b!4703530 m!5622061))

(assert (=> b!4703530 m!5622045))

(assert (=> b!4703530 m!5622059))

(declare-fun m!5622063 () Bool)

(assert (=> b!4703530 m!5622063))

(declare-fun m!5622065 () Bool)

(assert (=> bm!328831 m!5622065))

(assert (=> b!4703531 m!5622049))

(assert (=> b!4703220 d!1496403))

(declare-fun d!1496407 () Bool)

(assert (=> d!1496407 (= (head!10076 newBucket!218) (h!58842 newBucket!218))))

(assert (=> b!4703220 d!1496407))

(declare-fun d!1496409 () Bool)

(assert (=> d!1496409 (= (eq!1065 (addToMapMapFromBucket!1338 (Cons!52555 lt!1866924 lt!1866942) lt!1866920) (+!2190 (addToMapMapFromBucket!1338 lt!1866942 lt!1866920) lt!1866924)) (= (content!9287 (toList!5702 (addToMapMapFromBucket!1338 (Cons!52555 lt!1866924 lt!1866942) lt!1866920))) (content!9287 (toList!5702 (+!2190 (addToMapMapFromBucket!1338 lt!1866942 lt!1866920) lt!1866924)))))))

(declare-fun bs!1097043 () Bool)

(assert (= bs!1097043 d!1496409))

(declare-fun m!5622067 () Bool)

(assert (=> bs!1097043 m!5622067))

(declare-fun m!5622069 () Bool)

(assert (=> bs!1097043 m!5622069))

(assert (=> b!4703220 d!1496409))

(declare-fun d!1496411 () Bool)

(assert (=> d!1496411 (eq!1065 (addToMapMapFromBucket!1338 (Cons!52555 lt!1866914 lt!1866935) lt!1866920) (+!2190 (addToMapMapFromBucket!1338 lt!1866935 lt!1866920) lt!1866914))))

(declare-fun lt!1867363 () Unit!126616)

(declare-fun choose!32968 (tuple2!54018 List!52679 ListMap!5065) Unit!126616)

(assert (=> d!1496411 (= lt!1867363 (choose!32968 lt!1866914 lt!1866935 lt!1866920))))

(assert (=> d!1496411 (noDuplicateKeys!1906 lt!1866935)))

(assert (=> d!1496411 (= (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!314 lt!1866914 lt!1866935 lt!1866920) lt!1867363)))

(declare-fun bs!1097045 () Bool)

(assert (= bs!1097045 d!1496411))

(assert (=> bs!1097045 m!5621403))

(assert (=> bs!1097045 m!5621399))

(assert (=> bs!1097045 m!5621401))

(declare-fun m!5622087 () Bool)

(assert (=> bs!1097045 m!5622087))

(declare-fun m!5622089 () Bool)

(assert (=> bs!1097045 m!5622089))

(assert (=> bs!1097045 m!5621399))

(assert (=> bs!1097045 m!5621403))

(assert (=> bs!1097045 m!5621401))

(assert (=> bs!1097045 m!5621405))

(assert (=> b!4703220 d!1496411))

(declare-fun d!1496417 () Bool)

(assert (=> d!1496417 (= (eq!1065 lt!1866946 (+!2190 lt!1866929 (h!58842 oldBucket!34))) (= (content!9287 (toList!5702 lt!1866946)) (content!9287 (toList!5702 (+!2190 lt!1866929 (h!58842 oldBucket!34))))))))

(declare-fun bs!1097047 () Bool)

(assert (= bs!1097047 d!1496417))

(assert (=> bs!1097047 m!5621617))

(declare-fun m!5622093 () Bool)

(assert (=> bs!1097047 m!5622093))

(assert (=> b!4703220 d!1496417))

(declare-fun d!1496421 () Bool)

(assert (=> d!1496421 (eq!1065 (addToMapMapFromBucket!1338 (Cons!52555 lt!1866924 lt!1866942) lt!1866920) (+!2190 (addToMapMapFromBucket!1338 lt!1866942 lt!1866920) lt!1866924))))

(declare-fun lt!1867374 () Unit!126616)

(assert (=> d!1496421 (= lt!1867374 (choose!32968 lt!1866924 lt!1866942 lt!1866920))))

(assert (=> d!1496421 (noDuplicateKeys!1906 lt!1866942)))

(assert (=> d!1496421 (= (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!314 lt!1866924 lt!1866942 lt!1866920) lt!1867374)))

(declare-fun bs!1097048 () Bool)

(assert (= bs!1097048 d!1496421))

(assert (=> bs!1097048 m!5621379))

(assert (=> bs!1097048 m!5621385))

(assert (=> bs!1097048 m!5621381))

(assert (=> bs!1097048 m!5621637))

(declare-fun m!5622095 () Bool)

(assert (=> bs!1097048 m!5622095))

(assert (=> bs!1097048 m!5621385))

(assert (=> bs!1097048 m!5621379))

(assert (=> bs!1097048 m!5621381))

(assert (=> bs!1097048 m!5621383))

(assert (=> b!4703220 d!1496421))

(declare-fun d!1496423 () Bool)

(declare-fun e!2934022 () Bool)

(assert (=> d!1496423 e!2934022))

(declare-fun res!1986318 () Bool)

(assert (=> d!1496423 (=> (not res!1986318) (not e!2934022))))

(declare-fun lt!1867388 () ListMap!5065)

(assert (=> d!1496423 (= res!1986318 (contains!15850 lt!1867388 (_1!30303 (h!58842 oldBucket!34))))))

(declare-fun lt!1867390 () List!52679)

(assert (=> d!1496423 (= lt!1867388 (ListMap!5066 lt!1867390))))

(declare-fun lt!1867389 () Unit!126616)

(declare-fun lt!1867387 () Unit!126616)

(assert (=> d!1496423 (= lt!1867389 lt!1867387)))

(assert (=> d!1496423 (= (getValueByKey!1865 lt!1867390 (_1!30303 (h!58842 oldBucket!34))) (Some!12216 (_2!30303 (h!58842 oldBucket!34))))))

(assert (=> d!1496423 (= lt!1867387 (lemmaContainsTupThenGetReturnValue!1042 lt!1867390 (_1!30303 (h!58842 oldBucket!34)) (_2!30303 (h!58842 oldBucket!34))))))

(assert (=> d!1496423 (= lt!1867390 (insertNoDuplicatedKeys!550 (toList!5702 lt!1866929) (_1!30303 (h!58842 oldBucket!34)) (_2!30303 (h!58842 oldBucket!34))))))

(assert (=> d!1496423 (= (+!2190 lt!1866929 (h!58842 oldBucket!34)) lt!1867388)))

(declare-fun b!4703540 () Bool)

(declare-fun res!1986319 () Bool)

(assert (=> b!4703540 (=> (not res!1986319) (not e!2934022))))

(assert (=> b!4703540 (= res!1986319 (= (getValueByKey!1865 (toList!5702 lt!1867388) (_1!30303 (h!58842 oldBucket!34))) (Some!12216 (_2!30303 (h!58842 oldBucket!34)))))))

(declare-fun b!4703541 () Bool)

(assert (=> b!4703541 (= e!2934022 (contains!15852 (toList!5702 lt!1867388) (h!58842 oldBucket!34)))))

(assert (= (and d!1496423 res!1986318) b!4703540))

(assert (= (and b!4703540 res!1986319) b!4703541))

(declare-fun m!5622097 () Bool)

(assert (=> d!1496423 m!5622097))

(declare-fun m!5622099 () Bool)

(assert (=> d!1496423 m!5622099))

(declare-fun m!5622101 () Bool)

(assert (=> d!1496423 m!5622101))

(declare-fun m!5622103 () Bool)

(assert (=> d!1496423 m!5622103))

(declare-fun m!5622105 () Bool)

(assert (=> b!4703540 m!5622105))

(declare-fun m!5622107 () Bool)

(assert (=> b!4703541 m!5622107))

(assert (=> b!4703220 d!1496423))

(declare-fun bs!1097060 () Bool)

(declare-fun b!4703546 () Bool)

(assert (= bs!1097060 (and b!4703546 d!1496403)))

(declare-fun lambda!210925 () Int)

(assert (=> bs!1097060 (= (= lt!1866920 lt!1867340) (= lambda!210925 lambda!210923))))

(declare-fun bs!1097061 () Bool)

(assert (= bs!1097061 (and b!4703546 b!4703532)))

(assert (=> bs!1097061 (= lambda!210925 lambda!210918)))

(declare-fun bs!1097062 () Bool)

(assert (= bs!1097062 (and b!4703546 b!4703530)))

(assert (=> bs!1097062 (= lambda!210925 lambda!210920)))

(assert (=> bs!1097062 (= (= lt!1866920 lt!1867339) (= lambda!210925 lambda!210921))))

(declare-fun bs!1097064 () Bool)

(assert (= bs!1097064 (and b!4703546 d!1496321)))

(assert (=> bs!1097064 (= (= lt!1866920 lt!1867233) (= lambda!210925 lambda!210904))))

(declare-fun bs!1097067 () Bool)

(assert (= bs!1097067 (and b!4703546 b!4703466)))

(assert (=> bs!1097067 (= (= lt!1866920 lt!1867232) (= lambda!210925 lambda!210903))))

(assert (=> bs!1097067 (= lambda!210925 lambda!210902)))

(declare-fun bs!1097069 () Bool)

(assert (= bs!1097069 (and b!4703546 b!4703468)))

(assert (=> bs!1097069 (= lambda!210925 lambda!210901)))

(assert (=> b!4703546 true))

(declare-fun bs!1097075 () Bool)

(declare-fun b!4703544 () Bool)

(assert (= bs!1097075 (and b!4703544 d!1496403)))

(declare-fun lambda!210927 () Int)

(assert (=> bs!1097075 (= (= lt!1866920 lt!1867340) (= lambda!210927 lambda!210923))))

(declare-fun bs!1097077 () Bool)

(assert (= bs!1097077 (and b!4703544 b!4703532)))

(assert (=> bs!1097077 (= lambda!210927 lambda!210918)))

(declare-fun bs!1097079 () Bool)

(assert (= bs!1097079 (and b!4703544 b!4703530)))

(assert (=> bs!1097079 (= lambda!210927 lambda!210920)))

(assert (=> bs!1097079 (= (= lt!1866920 lt!1867339) (= lambda!210927 lambda!210921))))

(declare-fun bs!1097081 () Bool)

(assert (= bs!1097081 (and b!4703544 b!4703546)))

(assert (=> bs!1097081 (= lambda!210927 lambda!210925)))

(declare-fun bs!1097082 () Bool)

(assert (= bs!1097082 (and b!4703544 d!1496321)))

(assert (=> bs!1097082 (= (= lt!1866920 lt!1867233) (= lambda!210927 lambda!210904))))

(declare-fun bs!1097083 () Bool)

(assert (= bs!1097083 (and b!4703544 b!4703466)))

(assert (=> bs!1097083 (= (= lt!1866920 lt!1867232) (= lambda!210927 lambda!210903))))

(assert (=> bs!1097083 (= lambda!210927 lambda!210902)))

(declare-fun bs!1097084 () Bool)

(assert (= bs!1097084 (and b!4703544 b!4703468)))

(assert (=> bs!1097084 (= lambda!210927 lambda!210901)))

(assert (=> b!4703544 true))

(declare-fun lt!1867397 () ListMap!5065)

(declare-fun lambda!210929 () Int)

(assert (=> bs!1097075 (= (= lt!1867397 lt!1867340) (= lambda!210929 lambda!210923))))

(assert (=> bs!1097077 (= (= lt!1867397 lt!1866920) (= lambda!210929 lambda!210918))))

(assert (=> b!4703544 (= (= lt!1867397 lt!1866920) (= lambda!210929 lambda!210927))))

(assert (=> bs!1097079 (= (= lt!1867397 lt!1866920) (= lambda!210929 lambda!210920))))

(assert (=> bs!1097079 (= (= lt!1867397 lt!1867339) (= lambda!210929 lambda!210921))))

(assert (=> bs!1097081 (= (= lt!1867397 lt!1866920) (= lambda!210929 lambda!210925))))

(assert (=> bs!1097082 (= (= lt!1867397 lt!1867233) (= lambda!210929 lambda!210904))))

(assert (=> bs!1097083 (= (= lt!1867397 lt!1867232) (= lambda!210929 lambda!210903))))

(assert (=> bs!1097083 (= (= lt!1867397 lt!1866920) (= lambda!210929 lambda!210902))))

(assert (=> bs!1097084 (= (= lt!1867397 lt!1866920) (= lambda!210929 lambda!210901))))

(assert (=> b!4703544 true))

(declare-fun bs!1097085 () Bool)

(declare-fun d!1496425 () Bool)

(assert (= bs!1097085 (and d!1496425 d!1496403)))

(declare-fun lambda!210930 () Int)

(declare-fun lt!1867398 () ListMap!5065)

(assert (=> bs!1097085 (= (= lt!1867398 lt!1867340) (= lambda!210930 lambda!210923))))

(declare-fun bs!1097086 () Bool)

(assert (= bs!1097086 (and d!1496425 b!4703544)))

(assert (=> bs!1097086 (= (= lt!1867398 lt!1867397) (= lambda!210930 lambda!210929))))

(declare-fun bs!1097088 () Bool)

(assert (= bs!1097088 (and d!1496425 b!4703532)))

(assert (=> bs!1097088 (= (= lt!1867398 lt!1866920) (= lambda!210930 lambda!210918))))

(assert (=> bs!1097086 (= (= lt!1867398 lt!1866920) (= lambda!210930 lambda!210927))))

(declare-fun bs!1097091 () Bool)

(assert (= bs!1097091 (and d!1496425 b!4703530)))

(assert (=> bs!1097091 (= (= lt!1867398 lt!1866920) (= lambda!210930 lambda!210920))))

(assert (=> bs!1097091 (= (= lt!1867398 lt!1867339) (= lambda!210930 lambda!210921))))

(declare-fun bs!1097093 () Bool)

(assert (= bs!1097093 (and d!1496425 b!4703546)))

(assert (=> bs!1097093 (= (= lt!1867398 lt!1866920) (= lambda!210930 lambda!210925))))

(declare-fun bs!1097095 () Bool)

(assert (= bs!1097095 (and d!1496425 d!1496321)))

(assert (=> bs!1097095 (= (= lt!1867398 lt!1867233) (= lambda!210930 lambda!210904))))

(declare-fun bs!1097097 () Bool)

(assert (= bs!1097097 (and d!1496425 b!4703466)))

(assert (=> bs!1097097 (= (= lt!1867398 lt!1867232) (= lambda!210930 lambda!210903))))

(assert (=> bs!1097097 (= (= lt!1867398 lt!1866920) (= lambda!210930 lambda!210902))))

(declare-fun bs!1097099 () Bool)

(assert (= bs!1097099 (and d!1496425 b!4703468)))

(assert (=> bs!1097099 (= (= lt!1867398 lt!1866920) (= lambda!210930 lambda!210901))))

(assert (=> d!1496425 true))

(declare-fun c!803929 () Bool)

(declare-fun call!328843 () Bool)

(declare-fun bm!328836 () Bool)

(assert (=> bm!328836 (= call!328843 (forall!11417 (ite c!803929 (toList!5702 lt!1866920) lt!1866935) (ite c!803929 lambda!210925 lambda!210929)))))

(declare-fun b!4703542 () Bool)

(declare-fun e!2934025 () Bool)

(assert (=> b!4703542 (= e!2934025 (invariantList!1452 (toList!5702 lt!1867398)))))

(declare-fun e!2934024 () ListMap!5065)

(assert (=> b!4703544 (= e!2934024 lt!1867397)))

(declare-fun lt!1867396 () ListMap!5065)

(assert (=> b!4703544 (= lt!1867396 (+!2190 lt!1866920 (h!58842 lt!1866935)))))

(assert (=> b!4703544 (= lt!1867397 (addToMapMapFromBucket!1338 (t!359897 lt!1866935) (+!2190 lt!1866920 (h!58842 lt!1866935))))))

(declare-fun lt!1867402 () Unit!126616)

(declare-fun call!328842 () Unit!126616)

(assert (=> b!4703544 (= lt!1867402 call!328842)))

(declare-fun call!328841 () Bool)

(assert (=> b!4703544 call!328841))

(declare-fun lt!1867395 () Unit!126616)

(assert (=> b!4703544 (= lt!1867395 lt!1867402)))

(assert (=> b!4703544 (forall!11417 (toList!5702 lt!1867396) lambda!210929)))

(declare-fun lt!1867400 () Unit!126616)

(declare-fun Unit!126656 () Unit!126616)

(assert (=> b!4703544 (= lt!1867400 Unit!126656)))

(assert (=> b!4703544 (forall!11417 (t!359897 lt!1866935) lambda!210929)))

(declare-fun lt!1867393 () Unit!126616)

(declare-fun Unit!126657 () Unit!126616)

(assert (=> b!4703544 (= lt!1867393 Unit!126657)))

(declare-fun lt!1867399 () Unit!126616)

(declare-fun Unit!126658 () Unit!126616)

(assert (=> b!4703544 (= lt!1867399 Unit!126658)))

(declare-fun lt!1867391 () Unit!126616)

(assert (=> b!4703544 (= lt!1867391 (forallContained!3524 (toList!5702 lt!1867396) lambda!210929 (h!58842 lt!1866935)))))

(assert (=> b!4703544 (contains!15850 lt!1867396 (_1!30303 (h!58842 lt!1866935)))))

(declare-fun lt!1867403 () Unit!126616)

(declare-fun Unit!126659 () Unit!126616)

(assert (=> b!4703544 (= lt!1867403 Unit!126659)))

(assert (=> b!4703544 (contains!15850 lt!1867397 (_1!30303 (h!58842 lt!1866935)))))

(declare-fun lt!1867392 () Unit!126616)

(declare-fun Unit!126662 () Unit!126616)

(assert (=> b!4703544 (= lt!1867392 Unit!126662)))

(assert (=> b!4703544 (forall!11417 lt!1866935 lambda!210929)))

(declare-fun lt!1867406 () Unit!126616)

(declare-fun Unit!126664 () Unit!126616)

(assert (=> b!4703544 (= lt!1867406 Unit!126664)))

(assert (=> b!4703544 (forall!11417 (toList!5702 lt!1867396) lambda!210929)))

(declare-fun lt!1867394 () Unit!126616)

(declare-fun Unit!126665 () Unit!126616)

(assert (=> b!4703544 (= lt!1867394 Unit!126665)))

(declare-fun lt!1867408 () Unit!126616)

(declare-fun Unit!126667 () Unit!126616)

(assert (=> b!4703544 (= lt!1867408 Unit!126667)))

(declare-fun lt!1867404 () Unit!126616)

(assert (=> b!4703544 (= lt!1867404 (addForallContainsKeyThenBeforeAdding!739 lt!1866920 lt!1867397 (_1!30303 (h!58842 lt!1866935)) (_2!30303 (h!58842 lt!1866935))))))

(assert (=> b!4703544 (forall!11417 (toList!5702 lt!1866920) lambda!210929)))

(declare-fun lt!1867405 () Unit!126616)

(assert (=> b!4703544 (= lt!1867405 lt!1867404)))

(assert (=> b!4703544 (forall!11417 (toList!5702 lt!1866920) lambda!210929)))

(declare-fun lt!1867401 () Unit!126616)

(declare-fun Unit!126671 () Unit!126616)

(assert (=> b!4703544 (= lt!1867401 Unit!126671)))

(declare-fun res!1986321 () Bool)

(assert (=> b!4703544 (= res!1986321 call!328843)))

(declare-fun e!2934023 () Bool)

(assert (=> b!4703544 (=> (not res!1986321) (not e!2934023))))

(assert (=> b!4703544 e!2934023))

(declare-fun lt!1867411 () Unit!126616)

(declare-fun Unit!126673 () Unit!126616)

(assert (=> b!4703544 (= lt!1867411 Unit!126673)))

(declare-fun b!4703545 () Bool)

(assert (=> b!4703545 (= e!2934023 (forall!11417 (toList!5702 lt!1866920) lambda!210929))))

(declare-fun bm!328837 () Bool)

(assert (=> bm!328837 (= call!328841 (forall!11417 (toList!5702 lt!1866920) (ite c!803929 lambda!210925 lambda!210927)))))

(declare-fun bm!328838 () Bool)

(assert (=> bm!328838 (= call!328842 (lemmaContainsAllItsOwnKeys!740 lt!1866920))))

(assert (=> b!4703546 (= e!2934024 lt!1866920)))

(declare-fun lt!1867409 () Unit!126616)

(assert (=> b!4703546 (= lt!1867409 call!328842)))

(assert (=> b!4703546 call!328843))

(declare-fun lt!1867410 () Unit!126616)

(assert (=> b!4703546 (= lt!1867410 lt!1867409)))

(assert (=> b!4703546 call!328841))

(declare-fun lt!1867407 () Unit!126616)

(declare-fun Unit!126676 () Unit!126616)

(assert (=> b!4703546 (= lt!1867407 Unit!126676)))

(declare-fun b!4703543 () Bool)

(declare-fun res!1986322 () Bool)

(assert (=> b!4703543 (=> (not res!1986322) (not e!2934025))))

(assert (=> b!4703543 (= res!1986322 (forall!11417 (toList!5702 lt!1866920) lambda!210930))))

(assert (=> d!1496425 e!2934025))

(declare-fun res!1986320 () Bool)

(assert (=> d!1496425 (=> (not res!1986320) (not e!2934025))))

(assert (=> d!1496425 (= res!1986320 (forall!11417 lt!1866935 lambda!210930))))

(assert (=> d!1496425 (= lt!1867398 e!2934024)))

(assert (=> d!1496425 (= c!803929 ((_ is Nil!52555) lt!1866935))))

(assert (=> d!1496425 (noDuplicateKeys!1906 lt!1866935)))

(assert (=> d!1496425 (= (addToMapMapFromBucket!1338 lt!1866935 lt!1866920) lt!1867398)))

(assert (= (and d!1496425 c!803929) b!4703546))

(assert (= (and d!1496425 (not c!803929)) b!4703544))

(assert (= (and b!4703544 res!1986321) b!4703545))

(assert (= (or b!4703546 b!4703544) bm!328838))

(assert (= (or b!4703546 b!4703544) bm!328837))

(assert (= (or b!4703546 b!4703544) bm!328836))

(assert (= (and d!1496425 res!1986320) b!4703543))

(assert (= (and b!4703543 res!1986322) b!4703542))

(declare-fun m!5622109 () Bool)

(assert (=> b!4703542 m!5622109))

(assert (=> bm!328838 m!5621823))

(declare-fun m!5622111 () Bool)

(assert (=> d!1496425 m!5622111))

(assert (=> d!1496425 m!5622087))

(declare-fun m!5622113 () Bool)

(assert (=> b!4703543 m!5622113))

(declare-fun m!5622115 () Bool)

(assert (=> bm!328836 m!5622115))

(declare-fun m!5622117 () Bool)

(assert (=> b!4703544 m!5622117))

(declare-fun m!5622119 () Bool)

(assert (=> b!4703544 m!5622119))

(declare-fun m!5622121 () Bool)

(assert (=> b!4703544 m!5622121))

(declare-fun m!5622123 () Bool)

(assert (=> b!4703544 m!5622123))

(assert (=> b!4703544 m!5622121))

(declare-fun m!5622125 () Bool)

(assert (=> b!4703544 m!5622125))

(declare-fun m!5622127 () Bool)

(assert (=> b!4703544 m!5622127))

(declare-fun m!5622129 () Bool)

(assert (=> b!4703544 m!5622129))

(declare-fun m!5622131 () Bool)

(assert (=> b!4703544 m!5622131))

(declare-fun m!5622133 () Bool)

(assert (=> b!4703544 m!5622133))

(assert (=> b!4703544 m!5622117))

(assert (=> b!4703544 m!5622131))

(declare-fun m!5622135 () Bool)

(assert (=> b!4703544 m!5622135))

(declare-fun m!5622137 () Bool)

(assert (=> bm!328837 m!5622137))

(assert (=> b!4703545 m!5622121))

(assert (=> b!4703220 d!1496425))

(declare-fun bs!1097106 () Bool)

(declare-fun d!1496427 () Bool)

(assert (= bs!1097106 (and d!1496427 d!1496231)))

(declare-fun lambda!210934 () Int)

(assert (=> bs!1097106 (not (= lambda!210934 lambda!210804))))

(declare-fun bs!1097107 () Bool)

(assert (= bs!1097107 (and d!1496427 d!1496263)))

(assert (=> bs!1097107 (= lambda!210934 lambda!210830)))

(declare-fun bs!1097108 () Bool)

(assert (= bs!1097108 (and d!1496427 d!1496255)))

(assert (=> bs!1097108 (= lambda!210934 lambda!210807)))

(declare-fun bs!1097109 () Bool)

(assert (= bs!1097109 (and d!1496427 d!1496385)))

(assert (=> bs!1097109 (= lambda!210934 lambda!210915)))

(declare-fun bs!1097110 () Bool)

(assert (= bs!1097110 (and d!1496427 start!477268)))

(assert (=> bs!1097110 (= lambda!210934 lambda!210801)))

(assert (=> d!1496427 (contains!15850 (extractMap!1932 (toList!5701 lt!1866921)) key!4653)))

(declare-fun lt!1867414 () Unit!126616)

(declare-fun choose!32970 (ListLongMap!4231 K!13915 Hashable!6275) Unit!126616)

(assert (=> d!1496427 (= lt!1867414 (choose!32970 lt!1866921 key!4653 hashF!1323))))

(assert (=> d!1496427 (forall!11415 (toList!5701 lt!1866921) lambda!210934)))

(assert (=> d!1496427 (= (lemmaListContainsThenExtractedMapContains!498 lt!1866921 key!4653 hashF!1323) lt!1867414)))

(declare-fun bs!1097111 () Bool)

(assert (= bs!1097111 d!1496427))

(declare-fun m!5622171 () Bool)

(assert (=> bs!1097111 m!5622171))

(assert (=> bs!1097111 m!5622171))

(declare-fun m!5622173 () Bool)

(assert (=> bs!1097111 m!5622173))

(declare-fun m!5622175 () Bool)

(assert (=> bs!1097111 m!5622175))

(declare-fun m!5622177 () Bool)

(assert (=> bs!1097111 m!5622177))

(assert (=> b!4703220 d!1496427))

(declare-fun d!1496431 () Bool)

(declare-fun e!2934026 () Bool)

(assert (=> d!1496431 e!2934026))

(declare-fun res!1986323 () Bool)

(assert (=> d!1496431 (=> (not res!1986323) (not e!2934026))))

(declare-fun lt!1867416 () ListMap!5065)

(assert (=> d!1496431 (= res!1986323 (contains!15850 lt!1867416 (_1!30303 lt!1866914)))))

(declare-fun lt!1867418 () List!52679)

(assert (=> d!1496431 (= lt!1867416 (ListMap!5066 lt!1867418))))

(declare-fun lt!1867417 () Unit!126616)

(declare-fun lt!1867415 () Unit!126616)

(assert (=> d!1496431 (= lt!1867417 lt!1867415)))

(assert (=> d!1496431 (= (getValueByKey!1865 lt!1867418 (_1!30303 lt!1866914)) (Some!12216 (_2!30303 lt!1866914)))))

(assert (=> d!1496431 (= lt!1867415 (lemmaContainsTupThenGetReturnValue!1042 lt!1867418 (_1!30303 lt!1866914) (_2!30303 lt!1866914)))))

(assert (=> d!1496431 (= lt!1867418 (insertNoDuplicatedKeys!550 (toList!5702 (addToMapMapFromBucket!1338 lt!1866935 lt!1866920)) (_1!30303 lt!1866914) (_2!30303 lt!1866914)))))

(assert (=> d!1496431 (= (+!2190 (addToMapMapFromBucket!1338 lt!1866935 lt!1866920) lt!1866914) lt!1867416)))

(declare-fun b!4703547 () Bool)

(declare-fun res!1986324 () Bool)

(assert (=> b!4703547 (=> (not res!1986324) (not e!2934026))))

(assert (=> b!4703547 (= res!1986324 (= (getValueByKey!1865 (toList!5702 lt!1867416) (_1!30303 lt!1866914)) (Some!12216 (_2!30303 lt!1866914))))))

(declare-fun b!4703548 () Bool)

(assert (=> b!4703548 (= e!2934026 (contains!15852 (toList!5702 lt!1867416) lt!1866914))))

(assert (= (and d!1496431 res!1986323) b!4703547))

(assert (= (and b!4703547 res!1986324) b!4703548))

(declare-fun m!5622179 () Bool)

(assert (=> d!1496431 m!5622179))

(declare-fun m!5622181 () Bool)

(assert (=> d!1496431 m!5622181))

(declare-fun m!5622183 () Bool)

(assert (=> d!1496431 m!5622183))

(declare-fun m!5622185 () Bool)

(assert (=> d!1496431 m!5622185))

(declare-fun m!5622187 () Bool)

(assert (=> b!4703547 m!5622187))

(declare-fun m!5622189 () Bool)

(assert (=> b!4703548 m!5622189))

(assert (=> b!4703220 d!1496431))

(declare-fun bs!1097112 () Bool)

(declare-fun d!1496433 () Bool)

(assert (= bs!1097112 (and d!1496433 d!1496231)))

(declare-fun lambda!210935 () Int)

(assert (=> bs!1097112 (not (= lambda!210935 lambda!210804))))

(declare-fun bs!1097113 () Bool)

(assert (= bs!1097113 (and d!1496433 d!1496427)))

(assert (=> bs!1097113 (= lambda!210935 lambda!210934)))

(declare-fun bs!1097114 () Bool)

(assert (= bs!1097114 (and d!1496433 d!1496263)))

(assert (=> bs!1097114 (= lambda!210935 lambda!210830)))

(declare-fun bs!1097115 () Bool)

(assert (= bs!1097115 (and d!1496433 d!1496255)))

(assert (=> bs!1097115 (= lambda!210935 lambda!210807)))

(declare-fun bs!1097116 () Bool)

(assert (= bs!1097116 (and d!1496433 d!1496385)))

(assert (=> bs!1097116 (= lambda!210935 lambda!210915)))

(declare-fun bs!1097117 () Bool)

(assert (= bs!1097117 (and d!1496433 start!477268)))

(assert (=> bs!1097117 (= lambda!210935 lambda!210801)))

(declare-fun lt!1867419 () ListMap!5065)

(assert (=> d!1496433 (invariantList!1452 (toList!5702 lt!1867419))))

(declare-fun e!2934027 () ListMap!5065)

(assert (=> d!1496433 (= lt!1867419 e!2934027)))

(declare-fun c!803930 () Bool)

(assert (=> d!1496433 (= c!803930 ((_ is Cons!52556) lt!1866922))))

(assert (=> d!1496433 (forall!11415 lt!1866922 lambda!210935)))

(assert (=> d!1496433 (= (extractMap!1932 lt!1866922) lt!1867419)))

(declare-fun b!4703549 () Bool)

(assert (=> b!4703549 (= e!2934027 (addToMapMapFromBucket!1338 (_2!30304 (h!58843 lt!1866922)) (extractMap!1932 (t!359898 lt!1866922))))))

(declare-fun b!4703550 () Bool)

(assert (=> b!4703550 (= e!2934027 (ListMap!5066 Nil!52555))))

(assert (= (and d!1496433 c!803930) b!4703549))

(assert (= (and d!1496433 (not c!803930)) b!4703550))

(declare-fun m!5622191 () Bool)

(assert (=> d!1496433 m!5622191))

(declare-fun m!5622193 () Bool)

(assert (=> d!1496433 m!5622193))

(declare-fun m!5622195 () Bool)

(assert (=> b!4703549 m!5622195))

(assert (=> b!4703549 m!5622195))

(declare-fun m!5622197 () Bool)

(assert (=> b!4703549 m!5622197))

(assert (=> b!4703220 d!1496433))

(declare-fun bs!1097118 () Bool)

(declare-fun b!4703563 () Bool)

(assert (= bs!1097118 (and b!4703563 d!1496403)))

(declare-fun lambda!210936 () Int)

(assert (=> bs!1097118 (= (= lt!1866920 lt!1867340) (= lambda!210936 lambda!210923))))

(declare-fun bs!1097119 () Bool)

(assert (= bs!1097119 (and b!4703563 b!4703544)))

(assert (=> bs!1097119 (= (= lt!1866920 lt!1867397) (= lambda!210936 lambda!210929))))

(declare-fun bs!1097120 () Bool)

(assert (= bs!1097120 (and b!4703563 d!1496425)))

(assert (=> bs!1097120 (= (= lt!1866920 lt!1867398) (= lambda!210936 lambda!210930))))

(declare-fun bs!1097121 () Bool)

(assert (= bs!1097121 (and b!4703563 b!4703532)))

(assert (=> bs!1097121 (= lambda!210936 lambda!210918)))

(assert (=> bs!1097119 (= lambda!210936 lambda!210927)))

(declare-fun bs!1097122 () Bool)

(assert (= bs!1097122 (and b!4703563 b!4703530)))

(assert (=> bs!1097122 (= lambda!210936 lambda!210920)))

(assert (=> bs!1097122 (= (= lt!1866920 lt!1867339) (= lambda!210936 lambda!210921))))

(declare-fun bs!1097123 () Bool)

(assert (= bs!1097123 (and b!4703563 b!4703546)))

(assert (=> bs!1097123 (= lambda!210936 lambda!210925)))

(declare-fun bs!1097124 () Bool)

(assert (= bs!1097124 (and b!4703563 d!1496321)))

(assert (=> bs!1097124 (= (= lt!1866920 lt!1867233) (= lambda!210936 lambda!210904))))

(declare-fun bs!1097125 () Bool)

(assert (= bs!1097125 (and b!4703563 b!4703466)))

(assert (=> bs!1097125 (= (= lt!1866920 lt!1867232) (= lambda!210936 lambda!210903))))

(assert (=> bs!1097125 (= lambda!210936 lambda!210902)))

(declare-fun bs!1097126 () Bool)

(assert (= bs!1097126 (and b!4703563 b!4703468)))

(assert (=> bs!1097126 (= lambda!210936 lambda!210901)))

(assert (=> b!4703563 true))

(declare-fun bs!1097127 () Bool)

(declare-fun b!4703561 () Bool)

(assert (= bs!1097127 (and b!4703561 b!4703544)))

(declare-fun lambda!210937 () Int)

(assert (=> bs!1097127 (= (= lt!1866920 lt!1867397) (= lambda!210937 lambda!210929))))

(declare-fun bs!1097128 () Bool)

(assert (= bs!1097128 (and b!4703561 d!1496425)))

(assert (=> bs!1097128 (= (= lt!1866920 lt!1867398) (= lambda!210937 lambda!210930))))

(declare-fun bs!1097129 () Bool)

(assert (= bs!1097129 (and b!4703561 b!4703532)))

(assert (=> bs!1097129 (= lambda!210937 lambda!210918)))

(assert (=> bs!1097127 (= lambda!210937 lambda!210927)))

(declare-fun bs!1097130 () Bool)

(assert (= bs!1097130 (and b!4703561 b!4703530)))

(assert (=> bs!1097130 (= lambda!210937 lambda!210920)))

(assert (=> bs!1097130 (= (= lt!1866920 lt!1867339) (= lambda!210937 lambda!210921))))

(declare-fun bs!1097131 () Bool)

(assert (= bs!1097131 (and b!4703561 b!4703546)))

(assert (=> bs!1097131 (= lambda!210937 lambda!210925)))

(declare-fun bs!1097132 () Bool)

(assert (= bs!1097132 (and b!4703561 d!1496403)))

(assert (=> bs!1097132 (= (= lt!1866920 lt!1867340) (= lambda!210937 lambda!210923))))

(declare-fun bs!1097133 () Bool)

(assert (= bs!1097133 (and b!4703561 b!4703563)))

(assert (=> bs!1097133 (= lambda!210937 lambda!210936)))

(declare-fun bs!1097134 () Bool)

(assert (= bs!1097134 (and b!4703561 d!1496321)))

(assert (=> bs!1097134 (= (= lt!1866920 lt!1867233) (= lambda!210937 lambda!210904))))

(declare-fun bs!1097135 () Bool)

(assert (= bs!1097135 (and b!4703561 b!4703466)))

(assert (=> bs!1097135 (= (= lt!1866920 lt!1867232) (= lambda!210937 lambda!210903))))

(assert (=> bs!1097135 (= lambda!210937 lambda!210902)))

(declare-fun bs!1097136 () Bool)

(assert (= bs!1097136 (and b!4703561 b!4703468)))

(assert (=> bs!1097136 (= lambda!210937 lambda!210901)))

(assert (=> b!4703561 true))

(declare-fun lt!1867442 () ListMap!5065)

(declare-fun lambda!210938 () Int)

(assert (=> b!4703561 (= (= lt!1867442 lt!1866920) (= lambda!210938 lambda!210937))))

(assert (=> bs!1097127 (= (= lt!1867442 lt!1867397) (= lambda!210938 lambda!210929))))

(assert (=> bs!1097128 (= (= lt!1867442 lt!1867398) (= lambda!210938 lambda!210930))))

(assert (=> bs!1097129 (= (= lt!1867442 lt!1866920) (= lambda!210938 lambda!210918))))

(assert (=> bs!1097127 (= (= lt!1867442 lt!1866920) (= lambda!210938 lambda!210927))))

(assert (=> bs!1097130 (= (= lt!1867442 lt!1866920) (= lambda!210938 lambda!210920))))

(assert (=> bs!1097130 (= (= lt!1867442 lt!1867339) (= lambda!210938 lambda!210921))))

(assert (=> bs!1097131 (= (= lt!1867442 lt!1866920) (= lambda!210938 lambda!210925))))

(assert (=> bs!1097132 (= (= lt!1867442 lt!1867340) (= lambda!210938 lambda!210923))))

(assert (=> bs!1097133 (= (= lt!1867442 lt!1866920) (= lambda!210938 lambda!210936))))

(assert (=> bs!1097134 (= (= lt!1867442 lt!1867233) (= lambda!210938 lambda!210904))))

(assert (=> bs!1097135 (= (= lt!1867442 lt!1867232) (= lambda!210938 lambda!210903))))

(assert (=> bs!1097135 (= (= lt!1867442 lt!1866920) (= lambda!210938 lambda!210902))))

(assert (=> bs!1097136 (= (= lt!1867442 lt!1866920) (= lambda!210938 lambda!210901))))

(assert (=> b!4703561 true))

(declare-fun bs!1097137 () Bool)

(declare-fun d!1496435 () Bool)

(assert (= bs!1097137 (and d!1496435 b!4703561)))

(declare-fun lambda!210939 () Int)

(declare-fun lt!1867443 () ListMap!5065)

(assert (=> bs!1097137 (= (= lt!1867443 lt!1866920) (= lambda!210939 lambda!210937))))

(assert (=> bs!1097137 (= (= lt!1867443 lt!1867442) (= lambda!210939 lambda!210938))))

(declare-fun bs!1097138 () Bool)

(assert (= bs!1097138 (and d!1496435 b!4703544)))

(assert (=> bs!1097138 (= (= lt!1867443 lt!1867397) (= lambda!210939 lambda!210929))))

(declare-fun bs!1097139 () Bool)

(assert (= bs!1097139 (and d!1496435 d!1496425)))

(assert (=> bs!1097139 (= (= lt!1867443 lt!1867398) (= lambda!210939 lambda!210930))))

(declare-fun bs!1097140 () Bool)

(assert (= bs!1097140 (and d!1496435 b!4703532)))

(assert (=> bs!1097140 (= (= lt!1867443 lt!1866920) (= lambda!210939 lambda!210918))))

(assert (=> bs!1097138 (= (= lt!1867443 lt!1866920) (= lambda!210939 lambda!210927))))

(declare-fun bs!1097141 () Bool)

(assert (= bs!1097141 (and d!1496435 b!4703530)))

(assert (=> bs!1097141 (= (= lt!1867443 lt!1866920) (= lambda!210939 lambda!210920))))

(assert (=> bs!1097141 (= (= lt!1867443 lt!1867339) (= lambda!210939 lambda!210921))))

(declare-fun bs!1097142 () Bool)

(assert (= bs!1097142 (and d!1496435 b!4703546)))

(assert (=> bs!1097142 (= (= lt!1867443 lt!1866920) (= lambda!210939 lambda!210925))))

(declare-fun bs!1097143 () Bool)

(assert (= bs!1097143 (and d!1496435 d!1496403)))

(assert (=> bs!1097143 (= (= lt!1867443 lt!1867340) (= lambda!210939 lambda!210923))))

(declare-fun bs!1097144 () Bool)

(assert (= bs!1097144 (and d!1496435 b!4703563)))

(assert (=> bs!1097144 (= (= lt!1867443 lt!1866920) (= lambda!210939 lambda!210936))))

(declare-fun bs!1097145 () Bool)

(assert (= bs!1097145 (and d!1496435 d!1496321)))

(assert (=> bs!1097145 (= (= lt!1867443 lt!1867233) (= lambda!210939 lambda!210904))))

(declare-fun bs!1097146 () Bool)

(assert (= bs!1097146 (and d!1496435 b!4703466)))

(assert (=> bs!1097146 (= (= lt!1867443 lt!1867232) (= lambda!210939 lambda!210903))))

(assert (=> bs!1097146 (= (= lt!1867443 lt!1866920) (= lambda!210939 lambda!210902))))

(declare-fun bs!1097147 () Bool)

(assert (= bs!1097147 (and d!1496435 b!4703468)))

(assert (=> bs!1097147 (= (= lt!1867443 lt!1866920) (= lambda!210939 lambda!210901))))

(assert (=> d!1496435 true))

(declare-fun call!328848 () Bool)

(declare-fun c!803935 () Bool)

(declare-fun bm!328839 () Bool)

(assert (=> bm!328839 (= call!328848 (forall!11417 (ite c!803935 (toList!5702 lt!1866920) (Cons!52555 lt!1866914 lt!1866935)) (ite c!803935 lambda!210936 lambda!210938)))))

(declare-fun b!4703559 () Bool)

(declare-fun e!2934034 () Bool)

(assert (=> b!4703559 (= e!2934034 (invariantList!1452 (toList!5702 lt!1867443)))))

(declare-fun e!2934033 () ListMap!5065)

(assert (=> b!4703561 (= e!2934033 lt!1867442)))

(declare-fun lt!1867441 () ListMap!5065)

(assert (=> b!4703561 (= lt!1867441 (+!2190 lt!1866920 (h!58842 (Cons!52555 lt!1866914 lt!1866935))))))

(assert (=> b!4703561 (= lt!1867442 (addToMapMapFromBucket!1338 (t!359897 (Cons!52555 lt!1866914 lt!1866935)) (+!2190 lt!1866920 (h!58842 (Cons!52555 lt!1866914 lt!1866935)))))))

(declare-fun lt!1867447 () Unit!126616)

(declare-fun call!328847 () Unit!126616)

(assert (=> b!4703561 (= lt!1867447 call!328847)))

(declare-fun call!328846 () Bool)

(assert (=> b!4703561 call!328846))

(declare-fun lt!1867440 () Unit!126616)

(assert (=> b!4703561 (= lt!1867440 lt!1867447)))

(assert (=> b!4703561 (forall!11417 (toList!5702 lt!1867441) lambda!210938)))

(declare-fun lt!1867445 () Unit!126616)

(declare-fun Unit!126688 () Unit!126616)

(assert (=> b!4703561 (= lt!1867445 Unit!126688)))

(assert (=> b!4703561 (forall!11417 (t!359897 (Cons!52555 lt!1866914 lt!1866935)) lambda!210938)))

(declare-fun lt!1867438 () Unit!126616)

(declare-fun Unit!126689 () Unit!126616)

(assert (=> b!4703561 (= lt!1867438 Unit!126689)))

(declare-fun lt!1867444 () Unit!126616)

(declare-fun Unit!126690 () Unit!126616)

(assert (=> b!4703561 (= lt!1867444 Unit!126690)))

(declare-fun lt!1867436 () Unit!126616)

(assert (=> b!4703561 (= lt!1867436 (forallContained!3524 (toList!5702 lt!1867441) lambda!210938 (h!58842 (Cons!52555 lt!1866914 lt!1866935))))))

(assert (=> b!4703561 (contains!15850 lt!1867441 (_1!30303 (h!58842 (Cons!52555 lt!1866914 lt!1866935))))))

(declare-fun lt!1867448 () Unit!126616)

(declare-fun Unit!126691 () Unit!126616)

(assert (=> b!4703561 (= lt!1867448 Unit!126691)))

(assert (=> b!4703561 (contains!15850 lt!1867442 (_1!30303 (h!58842 (Cons!52555 lt!1866914 lt!1866935))))))

(declare-fun lt!1867437 () Unit!126616)

(declare-fun Unit!126692 () Unit!126616)

(assert (=> b!4703561 (= lt!1867437 Unit!126692)))

(assert (=> b!4703561 (forall!11417 (Cons!52555 lt!1866914 lt!1866935) lambda!210938)))

(declare-fun lt!1867451 () Unit!126616)

(declare-fun Unit!126693 () Unit!126616)

(assert (=> b!4703561 (= lt!1867451 Unit!126693)))

(assert (=> b!4703561 (forall!11417 (toList!5702 lt!1867441) lambda!210938)))

(declare-fun lt!1867439 () Unit!126616)

(declare-fun Unit!126694 () Unit!126616)

(assert (=> b!4703561 (= lt!1867439 Unit!126694)))

(declare-fun lt!1867453 () Unit!126616)

(declare-fun Unit!126695 () Unit!126616)

(assert (=> b!4703561 (= lt!1867453 Unit!126695)))

(declare-fun lt!1867449 () Unit!126616)

(assert (=> b!4703561 (= lt!1867449 (addForallContainsKeyThenBeforeAdding!739 lt!1866920 lt!1867442 (_1!30303 (h!58842 (Cons!52555 lt!1866914 lt!1866935))) (_2!30303 (h!58842 (Cons!52555 lt!1866914 lt!1866935)))))))

(assert (=> b!4703561 (forall!11417 (toList!5702 lt!1866920) lambda!210938)))

(declare-fun lt!1867450 () Unit!126616)

(assert (=> b!4703561 (= lt!1867450 lt!1867449)))

(assert (=> b!4703561 (forall!11417 (toList!5702 lt!1866920) lambda!210938)))

(declare-fun lt!1867446 () Unit!126616)

(declare-fun Unit!126696 () Unit!126616)

(assert (=> b!4703561 (= lt!1867446 Unit!126696)))

(declare-fun res!1986326 () Bool)

(assert (=> b!4703561 (= res!1986326 call!328848)))

(declare-fun e!2934032 () Bool)

(assert (=> b!4703561 (=> (not res!1986326) (not e!2934032))))

(assert (=> b!4703561 e!2934032))

(declare-fun lt!1867456 () Unit!126616)

(declare-fun Unit!126697 () Unit!126616)

(assert (=> b!4703561 (= lt!1867456 Unit!126697)))

(declare-fun b!4703562 () Bool)

(assert (=> b!4703562 (= e!2934032 (forall!11417 (toList!5702 lt!1866920) lambda!210938))))

(declare-fun bm!328840 () Bool)

(assert (=> bm!328840 (= call!328846 (forall!11417 (toList!5702 lt!1866920) (ite c!803935 lambda!210936 lambda!210937)))))

(declare-fun bm!328841 () Bool)

(assert (=> bm!328841 (= call!328847 (lemmaContainsAllItsOwnKeys!740 lt!1866920))))

(assert (=> b!4703563 (= e!2934033 lt!1866920)))

(declare-fun lt!1867454 () Unit!126616)

(assert (=> b!4703563 (= lt!1867454 call!328847)))

(assert (=> b!4703563 call!328848))

(declare-fun lt!1867455 () Unit!126616)

(assert (=> b!4703563 (= lt!1867455 lt!1867454)))

(assert (=> b!4703563 call!328846))

(declare-fun lt!1867452 () Unit!126616)

(declare-fun Unit!126698 () Unit!126616)

(assert (=> b!4703563 (= lt!1867452 Unit!126698)))

(declare-fun b!4703560 () Bool)

(declare-fun res!1986327 () Bool)

(assert (=> b!4703560 (=> (not res!1986327) (not e!2934034))))

(assert (=> b!4703560 (= res!1986327 (forall!11417 (toList!5702 lt!1866920) lambda!210939))))

(assert (=> d!1496435 e!2934034))

(declare-fun res!1986325 () Bool)

(assert (=> d!1496435 (=> (not res!1986325) (not e!2934034))))

(assert (=> d!1496435 (= res!1986325 (forall!11417 (Cons!52555 lt!1866914 lt!1866935) lambda!210939))))

(assert (=> d!1496435 (= lt!1867443 e!2934033)))

(assert (=> d!1496435 (= c!803935 ((_ is Nil!52555) (Cons!52555 lt!1866914 lt!1866935)))))

(assert (=> d!1496435 (noDuplicateKeys!1906 (Cons!52555 lt!1866914 lt!1866935))))

(assert (=> d!1496435 (= (addToMapMapFromBucket!1338 (Cons!52555 lt!1866914 lt!1866935) lt!1866920) lt!1867443)))

(assert (= (and d!1496435 c!803935) b!4703563))

(assert (= (and d!1496435 (not c!803935)) b!4703561))

(assert (= (and b!4703561 res!1986326) b!4703562))

(assert (= (or b!4703563 b!4703561) bm!328841))

(assert (= (or b!4703563 b!4703561) bm!328840))

(assert (= (or b!4703563 b!4703561) bm!328839))

(assert (= (and d!1496435 res!1986325) b!4703560))

(assert (= (and b!4703560 res!1986327) b!4703559))

(declare-fun m!5622229 () Bool)

(assert (=> b!4703559 m!5622229))

(assert (=> bm!328841 m!5621823))

(declare-fun m!5622231 () Bool)

(assert (=> d!1496435 m!5622231))

(declare-fun m!5622233 () Bool)

(assert (=> d!1496435 m!5622233))

(declare-fun m!5622235 () Bool)

(assert (=> b!4703560 m!5622235))

(declare-fun m!5622237 () Bool)

(assert (=> bm!328839 m!5622237))

(declare-fun m!5622239 () Bool)

(assert (=> b!4703561 m!5622239))

(declare-fun m!5622241 () Bool)

(assert (=> b!4703561 m!5622241))

(declare-fun m!5622243 () Bool)

(assert (=> b!4703561 m!5622243))

(declare-fun m!5622245 () Bool)

(assert (=> b!4703561 m!5622245))

(assert (=> b!4703561 m!5622243))

(declare-fun m!5622247 () Bool)

(assert (=> b!4703561 m!5622247))

(declare-fun m!5622249 () Bool)

(assert (=> b!4703561 m!5622249))

(declare-fun m!5622251 () Bool)

(assert (=> b!4703561 m!5622251))

(declare-fun m!5622255 () Bool)

(assert (=> b!4703561 m!5622255))

(declare-fun m!5622259 () Bool)

(assert (=> b!4703561 m!5622259))

(assert (=> b!4703561 m!5622239))

(assert (=> b!4703561 m!5622255))

(declare-fun m!5622263 () Bool)

(assert (=> b!4703561 m!5622263))

(declare-fun m!5622267 () Bool)

(assert (=> bm!328840 m!5622267))

(assert (=> b!4703562 m!5622243))

(assert (=> b!4703220 d!1496435))

(declare-fun bs!1097161 () Bool)

(declare-fun d!1496445 () Bool)

(assert (= bs!1097161 (and d!1496445 d!1496427)))

(declare-fun lambda!210942 () Int)

(assert (=> bs!1097161 (= lambda!210942 lambda!210934)))

(declare-fun bs!1097163 () Bool)

(assert (= bs!1097163 (and d!1496445 d!1496263)))

(assert (=> bs!1097163 (= lambda!210942 lambda!210830)))

(declare-fun bs!1097165 () Bool)

(assert (= bs!1097165 (and d!1496445 d!1496255)))

(assert (=> bs!1097165 (= lambda!210942 lambda!210807)))

(declare-fun bs!1097167 () Bool)

(assert (= bs!1097167 (and d!1496445 d!1496231)))

(assert (=> bs!1097167 (not (= lambda!210942 lambda!210804))))

(declare-fun bs!1097169 () Bool)

(assert (= bs!1097169 (and d!1496445 d!1496433)))

(assert (=> bs!1097169 (= lambda!210942 lambda!210935)))

(declare-fun bs!1097171 () Bool)

(assert (= bs!1097171 (and d!1496445 d!1496385)))

(assert (=> bs!1097171 (= lambda!210942 lambda!210915)))

(declare-fun bs!1097172 () Bool)

(assert (= bs!1097172 (and d!1496445 start!477268)))

(assert (=> bs!1097172 (= lambda!210942 lambda!210801)))

(declare-fun lt!1867471 () ListMap!5065)

(assert (=> d!1496445 (invariantList!1452 (toList!5702 lt!1867471))))

(declare-fun e!2934052 () ListMap!5065)

(assert (=> d!1496445 (= lt!1867471 e!2934052)))

(declare-fun c!803943 () Bool)

(assert (=> d!1496445 (= c!803943 ((_ is Cons!52556) (Cons!52556 lt!1866944 (t!359898 (toList!5701 lm!2023)))))))

(assert (=> d!1496445 (forall!11415 (Cons!52556 lt!1866944 (t!359898 (toList!5701 lm!2023))) lambda!210942)))

(assert (=> d!1496445 (= (extractMap!1932 (Cons!52556 lt!1866944 (t!359898 (toList!5701 lm!2023)))) lt!1867471)))

(declare-fun b!4703589 () Bool)

(assert (=> b!4703589 (= e!2934052 (addToMapMapFromBucket!1338 (_2!30304 (h!58843 (Cons!52556 lt!1866944 (t!359898 (toList!5701 lm!2023))))) (extractMap!1932 (t!359898 (Cons!52556 lt!1866944 (t!359898 (toList!5701 lm!2023)))))))))

(declare-fun b!4703590 () Bool)

(assert (=> b!4703590 (= e!2934052 (ListMap!5066 Nil!52555))))

(assert (= (and d!1496445 c!803943) b!4703589))

(assert (= (and d!1496445 (not c!803943)) b!4703590))

(declare-fun m!5622269 () Bool)

(assert (=> d!1496445 m!5622269))

(declare-fun m!5622271 () Bool)

(assert (=> d!1496445 m!5622271))

(declare-fun m!5622273 () Bool)

(assert (=> b!4703589 m!5622273))

(assert (=> b!4703589 m!5622273))

(declare-fun m!5622275 () Bool)

(assert (=> b!4703589 m!5622275))

(assert (=> b!4703220 d!1496445))

(declare-fun d!1496447 () Bool)

(assert (=> d!1496447 (= (head!10076 oldBucket!34) (h!58842 oldBucket!34))))

(assert (=> b!4703220 d!1496447))

(declare-fun d!1496449 () Bool)

(declare-fun e!2934058 () Bool)

(assert (=> d!1496449 e!2934058))

(declare-fun res!1986339 () Bool)

(assert (=> d!1496449 (=> res!1986339 e!2934058)))

(declare-fun e!2934054 () Bool)

(assert (=> d!1496449 (= res!1986339 e!2934054)))

(declare-fun res!1986341 () Bool)

(assert (=> d!1496449 (=> (not res!1986341) (not e!2934054))))

(declare-fun lt!1867479 () Bool)

(assert (=> d!1496449 (= res!1986341 (not lt!1867479))))

(declare-fun lt!1867473 () Bool)

(assert (=> d!1496449 (= lt!1867479 lt!1867473)))

(declare-fun lt!1867472 () Unit!126616)

(declare-fun e!2934053 () Unit!126616)

(assert (=> d!1496449 (= lt!1867472 e!2934053)))

(declare-fun c!803945 () Bool)

(assert (=> d!1496449 (= c!803945 lt!1867473)))

(assert (=> d!1496449 (= lt!1867473 (containsKey!3192 (toList!5702 lt!1866917) key!4653))))

(assert (=> d!1496449 (= (contains!15850 lt!1866917 key!4653) lt!1867479)))

(declare-fun b!4703591 () Bool)

(declare-fun e!2934055 () Unit!126616)

(declare-fun Unit!126699 () Unit!126616)

(assert (=> b!4703591 (= e!2934055 Unit!126699)))

(declare-fun b!4703592 () Bool)

(declare-fun e!2934057 () Bool)

(assert (=> b!4703592 (= e!2934058 e!2934057)))

(declare-fun res!1986340 () Bool)

(assert (=> b!4703592 (=> (not res!1986340) (not e!2934057))))

(assert (=> b!4703592 (= res!1986340 (isDefined!9471 (getValueByKey!1865 (toList!5702 lt!1866917) key!4653)))))

(declare-fun b!4703593 () Bool)

(assert (=> b!4703593 (= e!2934057 (contains!15853 (keys!18807 lt!1866917) key!4653))))

(declare-fun b!4703594 () Bool)

(assert (=> b!4703594 false))

(declare-fun lt!1867476 () Unit!126616)

(declare-fun lt!1867478 () Unit!126616)

(assert (=> b!4703594 (= lt!1867476 lt!1867478)))

(assert (=> b!4703594 (containsKey!3192 (toList!5702 lt!1866917) key!4653)))

(assert (=> b!4703594 (= lt!1867478 (lemmaInGetKeysListThenContainsKey!890 (toList!5702 lt!1866917) key!4653))))

(declare-fun Unit!126700 () Unit!126616)

(assert (=> b!4703594 (= e!2934055 Unit!126700)))

(declare-fun b!4703595 () Bool)

(declare-fun lt!1867475 () Unit!126616)

(assert (=> b!4703595 (= e!2934053 lt!1867475)))

(declare-fun lt!1867477 () Unit!126616)

(assert (=> b!4703595 (= lt!1867477 (lemmaContainsKeyImpliesGetValueByKeyDefined!1756 (toList!5702 lt!1866917) key!4653))))

(assert (=> b!4703595 (isDefined!9471 (getValueByKey!1865 (toList!5702 lt!1866917) key!4653))))

(declare-fun lt!1867474 () Unit!126616)

(assert (=> b!4703595 (= lt!1867474 lt!1867477)))

(assert (=> b!4703595 (= lt!1867475 (lemmaInListThenGetKeysListContains!886 (toList!5702 lt!1866917) key!4653))))

(declare-fun call!328850 () Bool)

(assert (=> b!4703595 call!328850))

(declare-fun b!4703596 () Bool)

(assert (=> b!4703596 (= e!2934054 (not (contains!15853 (keys!18807 lt!1866917) key!4653)))))

(declare-fun bm!328845 () Bool)

(declare-fun e!2934056 () List!52682)

(assert (=> bm!328845 (= call!328850 (contains!15853 e!2934056 key!4653))))

(declare-fun c!803944 () Bool)

(assert (=> bm!328845 (= c!803944 c!803945)))

(declare-fun b!4703597 () Bool)

(assert (=> b!4703597 (= e!2934056 (keys!18807 lt!1866917))))

(declare-fun b!4703598 () Bool)

(assert (=> b!4703598 (= e!2934053 e!2934055)))

(declare-fun c!803946 () Bool)

(assert (=> b!4703598 (= c!803946 call!328850)))

(declare-fun b!4703599 () Bool)

(assert (=> b!4703599 (= e!2934056 (getKeysList!891 (toList!5702 lt!1866917)))))

(assert (= (and d!1496449 c!803945) b!4703595))

(assert (= (and d!1496449 (not c!803945)) b!4703598))

(assert (= (and b!4703598 c!803946) b!4703594))

(assert (= (and b!4703598 (not c!803946)) b!4703591))

(assert (= (or b!4703595 b!4703598) bm!328845))

(assert (= (and bm!328845 c!803944) b!4703599))

(assert (= (and bm!328845 (not c!803944)) b!4703597))

(assert (= (and d!1496449 res!1986341) b!4703596))

(assert (= (and d!1496449 (not res!1986339)) b!4703592))

(assert (= (and b!4703592 res!1986340) b!4703593))

(declare-fun m!5622285 () Bool)

(assert (=> b!4703599 m!5622285))

(declare-fun m!5622287 () Bool)

(assert (=> b!4703595 m!5622287))

(declare-fun m!5622289 () Bool)

(assert (=> b!4703595 m!5622289))

(assert (=> b!4703595 m!5622289))

(declare-fun m!5622291 () Bool)

(assert (=> b!4703595 m!5622291))

(declare-fun m!5622293 () Bool)

(assert (=> b!4703595 m!5622293))

(declare-fun m!5622295 () Bool)

(assert (=> b!4703597 m!5622295))

(assert (=> b!4703592 m!5622289))

(assert (=> b!4703592 m!5622289))

(assert (=> b!4703592 m!5622291))

(assert (=> b!4703593 m!5622295))

(assert (=> b!4703593 m!5622295))

(declare-fun m!5622297 () Bool)

(assert (=> b!4703593 m!5622297))

(declare-fun m!5622299 () Bool)

(assert (=> bm!328845 m!5622299))

(declare-fun m!5622301 () Bool)

(assert (=> d!1496449 m!5622301))

(assert (=> b!4703594 m!5622301))

(declare-fun m!5622303 () Bool)

(assert (=> b!4703594 m!5622303))

(assert (=> b!4703596 m!5622295))

(assert (=> b!4703596 m!5622295))

(assert (=> b!4703596 m!5622297))

(assert (=> b!4703209 d!1496449))

(declare-fun bs!1097188 () Bool)

(declare-fun d!1496453 () Bool)

(assert (= bs!1097188 (and d!1496453 d!1496427)))

(declare-fun lambda!210944 () Int)

(assert (=> bs!1097188 (= lambda!210944 lambda!210934)))

(declare-fun bs!1097190 () Bool)

(assert (= bs!1097190 (and d!1496453 d!1496263)))

(assert (=> bs!1097190 (= lambda!210944 lambda!210830)))

(declare-fun bs!1097192 () Bool)

(assert (= bs!1097192 (and d!1496453 d!1496255)))

(assert (=> bs!1097192 (= lambda!210944 lambda!210807)))

(declare-fun bs!1097194 () Bool)

(assert (= bs!1097194 (and d!1496453 d!1496445)))

(assert (=> bs!1097194 (= lambda!210944 lambda!210942)))

(declare-fun bs!1097195 () Bool)

(assert (= bs!1097195 (and d!1496453 d!1496231)))

(assert (=> bs!1097195 (not (= lambda!210944 lambda!210804))))

(declare-fun bs!1097197 () Bool)

(assert (= bs!1097197 (and d!1496453 d!1496433)))

(assert (=> bs!1097197 (= lambda!210944 lambda!210935)))

(declare-fun bs!1097198 () Bool)

(assert (= bs!1097198 (and d!1496453 d!1496385)))

(assert (=> bs!1097198 (= lambda!210944 lambda!210915)))

(declare-fun bs!1097199 () Bool)

(assert (= bs!1097199 (and d!1496453 start!477268)))

(assert (=> bs!1097199 (= lambda!210944 lambda!210801)))

(declare-fun lt!1867501 () ListMap!5065)

(assert (=> d!1496453 (invariantList!1452 (toList!5702 lt!1867501))))

(declare-fun e!2934062 () ListMap!5065)

(assert (=> d!1496453 (= lt!1867501 e!2934062)))

(declare-fun c!803948 () Bool)

(assert (=> d!1496453 (= c!803948 ((_ is Cons!52556) (toList!5701 lm!2023)))))

(assert (=> d!1496453 (forall!11415 (toList!5701 lm!2023) lambda!210944)))

(assert (=> d!1496453 (= (extractMap!1932 (toList!5701 lm!2023)) lt!1867501)))

(declare-fun b!4703605 () Bool)

(assert (=> b!4703605 (= e!2934062 (addToMapMapFromBucket!1338 (_2!30304 (h!58843 (toList!5701 lm!2023))) (extractMap!1932 (t!359898 (toList!5701 lm!2023)))))))

(declare-fun b!4703606 () Bool)

(assert (=> b!4703606 (= e!2934062 (ListMap!5066 Nil!52555))))

(assert (= (and d!1496453 c!803948) b!4703605))

(assert (= (and d!1496453 (not c!803948)) b!4703606))

(declare-fun m!5622305 () Bool)

(assert (=> d!1496453 m!5622305))

(declare-fun m!5622307 () Bool)

(assert (=> d!1496453 m!5622307))

(assert (=> b!4703605 m!5621369))

(assert (=> b!4703605 m!5621369))

(declare-fun m!5622309 () Bool)

(assert (=> b!4703605 m!5622309))

(assert (=> b!4703209 d!1496453))

(declare-fun d!1496455 () Bool)

(assert (=> d!1496455 (= (eq!1065 (extractMap!1932 (Cons!52556 lt!1866927 lt!1866933)) (-!710 (extractMap!1932 (Cons!52556 lt!1866930 lt!1866933)) key!4653)) (= (content!9287 (toList!5702 (extractMap!1932 (Cons!52556 lt!1866927 lt!1866933)))) (content!9287 (toList!5702 (-!710 (extractMap!1932 (Cons!52556 lt!1866930 lt!1866933)) key!4653)))))))

(declare-fun bs!1097206 () Bool)

(assert (= bs!1097206 d!1496455))

(declare-fun m!5622311 () Bool)

(assert (=> bs!1097206 m!5622311))

(declare-fun m!5622313 () Bool)

(assert (=> bs!1097206 m!5622313))

(assert (=> b!4703199 d!1496455))

(declare-fun d!1496457 () Bool)

(assert (=> d!1496457 (= (tail!8743 lt!1866922) (t!359898 lt!1866922))))

(assert (=> b!4703199 d!1496457))

(declare-fun bs!1097216 () Bool)

(declare-fun d!1496459 () Bool)

(assert (= bs!1097216 (and d!1496459 d!1496453)))

(declare-fun lambda!210946 () Int)

(assert (=> bs!1097216 (= lambda!210946 lambda!210944)))

(declare-fun bs!1097217 () Bool)

(assert (= bs!1097217 (and d!1496459 d!1496427)))

(assert (=> bs!1097217 (= lambda!210946 lambda!210934)))

(declare-fun bs!1097218 () Bool)

(assert (= bs!1097218 (and d!1496459 d!1496263)))

(assert (=> bs!1097218 (= lambda!210946 lambda!210830)))

(declare-fun bs!1097219 () Bool)

(assert (= bs!1097219 (and d!1496459 d!1496255)))

(assert (=> bs!1097219 (= lambda!210946 lambda!210807)))

(declare-fun bs!1097220 () Bool)

(assert (= bs!1097220 (and d!1496459 d!1496445)))

(assert (=> bs!1097220 (= lambda!210946 lambda!210942)))

(declare-fun bs!1097221 () Bool)

(assert (= bs!1097221 (and d!1496459 d!1496231)))

(assert (=> bs!1097221 (not (= lambda!210946 lambda!210804))))

(declare-fun bs!1097222 () Bool)

(assert (= bs!1097222 (and d!1496459 d!1496433)))

(assert (=> bs!1097222 (= lambda!210946 lambda!210935)))

(declare-fun bs!1097223 () Bool)

(assert (= bs!1097223 (and d!1496459 d!1496385)))

(assert (=> bs!1097223 (= lambda!210946 lambda!210915)))

(declare-fun bs!1097224 () Bool)

(assert (= bs!1097224 (and d!1496459 start!477268)))

(assert (=> bs!1097224 (= lambda!210946 lambda!210801)))

(declare-fun lt!1867502 () ListMap!5065)

(assert (=> d!1496459 (invariantList!1452 (toList!5702 lt!1867502))))

(declare-fun e!2934063 () ListMap!5065)

(assert (=> d!1496459 (= lt!1867502 e!2934063)))

(declare-fun c!803949 () Bool)

(assert (=> d!1496459 (= c!803949 ((_ is Cons!52556) (Cons!52556 lt!1866927 lt!1866933)))))

(assert (=> d!1496459 (forall!11415 (Cons!52556 lt!1866927 lt!1866933) lambda!210946)))

(assert (=> d!1496459 (= (extractMap!1932 (Cons!52556 lt!1866927 lt!1866933)) lt!1867502)))

(declare-fun b!4703607 () Bool)

(assert (=> b!4703607 (= e!2934063 (addToMapMapFromBucket!1338 (_2!30304 (h!58843 (Cons!52556 lt!1866927 lt!1866933))) (extractMap!1932 (t!359898 (Cons!52556 lt!1866927 lt!1866933)))))))

(declare-fun b!4703608 () Bool)

(assert (=> b!4703608 (= e!2934063 (ListMap!5066 Nil!52555))))

(assert (= (and d!1496459 c!803949) b!4703607))

(assert (= (and d!1496459 (not c!803949)) b!4703608))

(declare-fun m!5622315 () Bool)

(assert (=> d!1496459 m!5622315))

(declare-fun m!5622317 () Bool)

(assert (=> d!1496459 m!5622317))

(declare-fun m!5622319 () Bool)

(assert (=> b!4703607 m!5622319))

(assert (=> b!4703607 m!5622319))

(declare-fun m!5622321 () Bool)

(assert (=> b!4703607 m!5622321))

(assert (=> b!4703199 d!1496459))

(declare-fun d!1496461 () Bool)

(assert (=> d!1496461 (= (eq!1065 lt!1866915 lt!1866911) (= (content!9287 (toList!5702 lt!1866915)) (content!9287 (toList!5702 lt!1866911))))))

(declare-fun bs!1097225 () Bool)

(assert (= bs!1097225 d!1496461))

(declare-fun m!5622323 () Bool)

(assert (=> bs!1097225 m!5622323))

(declare-fun m!5622325 () Bool)

(assert (=> bs!1097225 m!5622325))

(assert (=> b!4703199 d!1496461))

(declare-fun d!1496463 () Bool)

(declare-fun e!2934073 () Bool)

(assert (=> d!1496463 e!2934073))

(declare-fun res!1986350 () Bool)

(assert (=> d!1496463 (=> (not res!1986350) (not e!2934073))))

(declare-fun lt!1867514 () ListMap!5065)

(assert (=> d!1496463 (= res!1986350 (not (contains!15850 lt!1867514 key!4653)))))

(declare-fun removePresrvNoDuplicatedKeys!373 (List!52679 K!13915) List!52679)

(assert (=> d!1496463 (= lt!1867514 (ListMap!5066 (removePresrvNoDuplicatedKeys!373 (toList!5702 lt!1866947) key!4653)))))

(assert (=> d!1496463 (= (-!710 lt!1866947 key!4653) lt!1867514)))

(declare-fun b!4703622 () Bool)

(declare-fun content!9288 (List!52682) (InoxSet K!13915))

(assert (=> b!4703622 (= e!2934073 (= ((_ map and) (content!9288 (keys!18807 lt!1866947)) ((_ map not) (store ((as const (Array K!13915 Bool)) false) key!4653 true))) (content!9288 (keys!18807 lt!1867514))))))

(assert (= (and d!1496463 res!1986350) b!4703622))

(declare-fun m!5622385 () Bool)

(assert (=> d!1496463 m!5622385))

(declare-fun m!5622387 () Bool)

(assert (=> d!1496463 m!5622387))

(declare-fun m!5622389 () Bool)

(assert (=> b!4703622 m!5622389))

(assert (=> b!4703622 m!5621901))

(assert (=> b!4703622 m!5621901))

(declare-fun m!5622391 () Bool)

(assert (=> b!4703622 m!5622391))

(assert (=> b!4703622 m!5622389))

(declare-fun m!5622393 () Bool)

(assert (=> b!4703622 m!5622393))

(declare-fun m!5622395 () Bool)

(assert (=> b!4703622 m!5622395))

(assert (=> b!4703199 d!1496463))

(declare-fun bs!1097257 () Bool)

(declare-fun d!1496473 () Bool)

(assert (= bs!1097257 (and d!1496473 d!1496453)))

(declare-fun lambda!210950 () Int)

(assert (=> bs!1097257 (= lambda!210950 lambda!210944)))

(declare-fun bs!1097258 () Bool)

(assert (= bs!1097258 (and d!1496473 d!1496427)))

(assert (=> bs!1097258 (= lambda!210950 lambda!210934)))

(declare-fun bs!1097259 () Bool)

(assert (= bs!1097259 (and d!1496473 d!1496263)))

(assert (=> bs!1097259 (= lambda!210950 lambda!210830)))

(declare-fun bs!1097260 () Bool)

(assert (= bs!1097260 (and d!1496473 d!1496459)))

(assert (=> bs!1097260 (= lambda!210950 lambda!210946)))

(declare-fun bs!1097261 () Bool)

(assert (= bs!1097261 (and d!1496473 d!1496255)))

(assert (=> bs!1097261 (= lambda!210950 lambda!210807)))

(declare-fun bs!1097262 () Bool)

(assert (= bs!1097262 (and d!1496473 d!1496445)))

(assert (=> bs!1097262 (= lambda!210950 lambda!210942)))

(declare-fun bs!1097263 () Bool)

(assert (= bs!1097263 (and d!1496473 d!1496231)))

(assert (=> bs!1097263 (not (= lambda!210950 lambda!210804))))

(declare-fun bs!1097264 () Bool)

(assert (= bs!1097264 (and d!1496473 d!1496433)))

(assert (=> bs!1097264 (= lambda!210950 lambda!210935)))

(declare-fun bs!1097265 () Bool)

(assert (= bs!1097265 (and d!1496473 d!1496385)))

(assert (=> bs!1097265 (= lambda!210950 lambda!210915)))

(declare-fun bs!1097266 () Bool)

(assert (= bs!1097266 (and d!1496473 start!477268)))

(assert (=> bs!1097266 (= lambda!210950 lambda!210801)))

(declare-fun lt!1867515 () ListMap!5065)

(assert (=> d!1496473 (invariantList!1452 (toList!5702 lt!1867515))))

(declare-fun e!2934074 () ListMap!5065)

(assert (=> d!1496473 (= lt!1867515 e!2934074)))

(declare-fun c!803954 () Bool)

(assert (=> d!1496473 (= c!803954 ((_ is Cons!52556) (Cons!52556 lt!1866930 lt!1866933)))))

(assert (=> d!1496473 (forall!11415 (Cons!52556 lt!1866930 lt!1866933) lambda!210950)))

(assert (=> d!1496473 (= (extractMap!1932 (Cons!52556 lt!1866930 lt!1866933)) lt!1867515)))

(declare-fun b!4703623 () Bool)

(assert (=> b!4703623 (= e!2934074 (addToMapMapFromBucket!1338 (_2!30304 (h!58843 (Cons!52556 lt!1866930 lt!1866933))) (extractMap!1932 (t!359898 (Cons!52556 lt!1866930 lt!1866933)))))))

(declare-fun b!4703624 () Bool)

(assert (=> b!4703624 (= e!2934074 (ListMap!5066 Nil!52555))))

(assert (= (and d!1496473 c!803954) b!4703623))

(assert (= (and d!1496473 (not c!803954)) b!4703624))

(declare-fun m!5622403 () Bool)

(assert (=> d!1496473 m!5622403))

(declare-fun m!5622405 () Bool)

(assert (=> d!1496473 m!5622405))

(declare-fun m!5622407 () Bool)

(assert (=> b!4703623 m!5622407))

(assert (=> b!4703623 m!5622407))

(declare-fun m!5622409 () Bool)

(assert (=> b!4703623 m!5622409))

(assert (=> b!4703199 d!1496473))

(declare-fun bs!1097269 () Bool)

(declare-fun d!1496475 () Bool)

(assert (= bs!1097269 (and d!1496475 d!1496453)))

(declare-fun lambda!210953 () Int)

(assert (=> bs!1097269 (= lambda!210953 lambda!210944)))

(declare-fun bs!1097270 () Bool)

(assert (= bs!1097270 (and d!1496475 d!1496427)))

(assert (=> bs!1097270 (= lambda!210953 lambda!210934)))

(declare-fun bs!1097271 () Bool)

(assert (= bs!1097271 (and d!1496475 d!1496263)))

(assert (=> bs!1097271 (= lambda!210953 lambda!210830)))

(declare-fun bs!1097272 () Bool)

(assert (= bs!1097272 (and d!1496475 d!1496459)))

(assert (=> bs!1097272 (= lambda!210953 lambda!210946)))

(declare-fun bs!1097273 () Bool)

(assert (= bs!1097273 (and d!1496475 d!1496255)))

(assert (=> bs!1097273 (= lambda!210953 lambda!210807)))

(declare-fun bs!1097274 () Bool)

(assert (= bs!1097274 (and d!1496475 d!1496473)))

(assert (=> bs!1097274 (= lambda!210953 lambda!210950)))

(declare-fun bs!1097275 () Bool)

(assert (= bs!1097275 (and d!1496475 d!1496445)))

(assert (=> bs!1097275 (= lambda!210953 lambda!210942)))

(declare-fun bs!1097276 () Bool)

(assert (= bs!1097276 (and d!1496475 d!1496231)))

(assert (=> bs!1097276 (not (= lambda!210953 lambda!210804))))

(declare-fun bs!1097277 () Bool)

(assert (= bs!1097277 (and d!1496475 d!1496433)))

(assert (=> bs!1097277 (= lambda!210953 lambda!210935)))

(declare-fun bs!1097278 () Bool)

(assert (= bs!1097278 (and d!1496475 d!1496385)))

(assert (=> bs!1097278 (= lambda!210953 lambda!210915)))

(declare-fun bs!1097279 () Bool)

(assert (= bs!1097279 (and d!1496475 start!477268)))

(assert (=> bs!1097279 (= lambda!210953 lambda!210801)))

(assert (=> d!1496475 (eq!1065 (extractMap!1932 (Cons!52556 (tuple2!54021 hash!405 lt!1866935) (tail!8743 (toList!5701 lt!1866921)))) (-!710 (extractMap!1932 (Cons!52556 (tuple2!54021 hash!405 (t!359897 oldBucket!34)) (tail!8743 (toList!5701 lt!1866921)))) key!4653))))

(declare-fun lt!1867518 () Unit!126616)

(declare-fun choose!32972 (ListLongMap!4231 (_ BitVec 64) List!52679 List!52679 K!13915 Hashable!6275) Unit!126616)

(assert (=> d!1496475 (= lt!1867518 (choose!32972 lt!1866921 hash!405 (t!359897 oldBucket!34) lt!1866935 key!4653 hashF!1323))))

(assert (=> d!1496475 (forall!11415 (toList!5701 lt!1866921) lambda!210953)))

(assert (=> d!1496475 (= (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMapOneHashIsHead!80 lt!1866921 hash!405 (t!359897 oldBucket!34) lt!1866935 key!4653 hashF!1323) lt!1867518)))

(declare-fun bs!1097280 () Bool)

(assert (= bs!1097280 d!1496475))

(declare-fun m!5622413 () Bool)

(assert (=> bs!1097280 m!5622413))

(declare-fun m!5622415 () Bool)

(assert (=> bs!1097280 m!5622415))

(declare-fun m!5622417 () Bool)

(assert (=> bs!1097280 m!5622417))

(declare-fun m!5622419 () Bool)

(assert (=> bs!1097280 m!5622419))

(assert (=> bs!1097280 m!5622417))

(declare-fun m!5622421 () Bool)

(assert (=> bs!1097280 m!5622421))

(assert (=> bs!1097280 m!5622419))

(declare-fun m!5622423 () Bool)

(assert (=> bs!1097280 m!5622423))

(declare-fun m!5622425 () Bool)

(assert (=> bs!1097280 m!5622425))

(assert (=> bs!1097280 m!5622415))

(assert (=> b!4703199 d!1496475))

(declare-fun bs!1097281 () Bool)

(declare-fun d!1496481 () Bool)

(assert (= bs!1097281 (and d!1496481 d!1496453)))

(declare-fun lambda!210954 () Int)

(assert (=> bs!1097281 (= lambda!210954 lambda!210944)))

(declare-fun bs!1097282 () Bool)

(assert (= bs!1097282 (and d!1496481 d!1496475)))

(assert (=> bs!1097282 (= lambda!210954 lambda!210953)))

(declare-fun bs!1097283 () Bool)

(assert (= bs!1097283 (and d!1496481 d!1496427)))

(assert (=> bs!1097283 (= lambda!210954 lambda!210934)))

(declare-fun bs!1097284 () Bool)

(assert (= bs!1097284 (and d!1496481 d!1496263)))

(assert (=> bs!1097284 (= lambda!210954 lambda!210830)))

(declare-fun bs!1097285 () Bool)

(assert (= bs!1097285 (and d!1496481 d!1496459)))

(assert (=> bs!1097285 (= lambda!210954 lambda!210946)))

(declare-fun bs!1097286 () Bool)

(assert (= bs!1097286 (and d!1496481 d!1496255)))

(assert (=> bs!1097286 (= lambda!210954 lambda!210807)))

(declare-fun bs!1097287 () Bool)

(assert (= bs!1097287 (and d!1496481 d!1496473)))

(assert (=> bs!1097287 (= lambda!210954 lambda!210950)))

(declare-fun bs!1097288 () Bool)

(assert (= bs!1097288 (and d!1496481 d!1496445)))

(assert (=> bs!1097288 (= lambda!210954 lambda!210942)))

(declare-fun bs!1097289 () Bool)

(assert (= bs!1097289 (and d!1496481 d!1496231)))

(assert (=> bs!1097289 (not (= lambda!210954 lambda!210804))))

(declare-fun bs!1097290 () Bool)

(assert (= bs!1097290 (and d!1496481 d!1496433)))

(assert (=> bs!1097290 (= lambda!210954 lambda!210935)))

(declare-fun bs!1097291 () Bool)

(assert (= bs!1097291 (and d!1496481 d!1496385)))

(assert (=> bs!1097291 (= lambda!210954 lambda!210915)))

(declare-fun bs!1097292 () Bool)

(assert (= bs!1097292 (and d!1496481 start!477268)))

(assert (=> bs!1097292 (= lambda!210954 lambda!210801)))

(declare-fun lt!1867519 () ListMap!5065)

(assert (=> d!1496481 (invariantList!1452 (toList!5702 lt!1867519))))

(declare-fun e!2934082 () ListMap!5065)

(assert (=> d!1496481 (= lt!1867519 e!2934082)))

(declare-fun c!803955 () Bool)

(assert (=> d!1496481 (= c!803955 ((_ is Cons!52556) (Cons!52556 lt!1866927 (t!359898 (toList!5701 lm!2023)))))))

(assert (=> d!1496481 (forall!11415 (Cons!52556 lt!1866927 (t!359898 (toList!5701 lm!2023))) lambda!210954)))

(assert (=> d!1496481 (= (extractMap!1932 (Cons!52556 lt!1866927 (t!359898 (toList!5701 lm!2023)))) lt!1867519)))

(declare-fun b!4703636 () Bool)

(assert (=> b!4703636 (= e!2934082 (addToMapMapFromBucket!1338 (_2!30304 (h!58843 (Cons!52556 lt!1866927 (t!359898 (toList!5701 lm!2023))))) (extractMap!1932 (t!359898 (Cons!52556 lt!1866927 (t!359898 (toList!5701 lm!2023)))))))))

(declare-fun b!4703637 () Bool)

(assert (=> b!4703637 (= e!2934082 (ListMap!5066 Nil!52555))))

(assert (= (and d!1496481 c!803955) b!4703636))

(assert (= (and d!1496481 (not c!803955)) b!4703637))

(declare-fun m!5622427 () Bool)

(assert (=> d!1496481 m!5622427))

(declare-fun m!5622429 () Bool)

(assert (=> d!1496481 m!5622429))

(declare-fun m!5622431 () Bool)

(assert (=> b!4703636 m!5622431))

(assert (=> b!4703636 m!5622431))

(declare-fun m!5622433 () Bool)

(assert (=> b!4703636 m!5622433))

(assert (=> b!4703199 d!1496481))

(declare-fun d!1496483 () Bool)

(declare-fun e!2934083 () Bool)

(assert (=> d!1496483 e!2934083))

(declare-fun res!1986351 () Bool)

(assert (=> d!1496483 (=> (not res!1986351) (not e!2934083))))

(declare-fun lt!1867520 () ListMap!5065)

(assert (=> d!1496483 (= res!1986351 (not (contains!15850 lt!1867520 key!4653)))))

(assert (=> d!1496483 (= lt!1867520 (ListMap!5066 (removePresrvNoDuplicatedKeys!373 (toList!5702 (extractMap!1932 (Cons!52556 lt!1866930 lt!1866933))) key!4653)))))

(assert (=> d!1496483 (= (-!710 (extractMap!1932 (Cons!52556 lt!1866930 lt!1866933)) key!4653) lt!1867520)))

(declare-fun b!4703638 () Bool)

(assert (=> b!4703638 (= e!2934083 (= ((_ map and) (content!9288 (keys!18807 (extractMap!1932 (Cons!52556 lt!1866930 lt!1866933)))) ((_ map not) (store ((as const (Array K!13915 Bool)) false) key!4653 true))) (content!9288 (keys!18807 lt!1867520))))))

(assert (= (and d!1496483 res!1986351) b!4703638))

(declare-fun m!5622435 () Bool)

(assert (=> d!1496483 m!5622435))

(declare-fun m!5622437 () Bool)

(assert (=> d!1496483 m!5622437))

(declare-fun m!5622439 () Bool)

(assert (=> b!4703638 m!5622439))

(assert (=> b!4703638 m!5621315))

(declare-fun m!5622441 () Bool)

(assert (=> b!4703638 m!5622441))

(assert (=> b!4703638 m!5622441))

(declare-fun m!5622443 () Bool)

(assert (=> b!4703638 m!5622443))

(assert (=> b!4703638 m!5622439))

(declare-fun m!5622445 () Bool)

(assert (=> b!4703638 m!5622445))

(assert (=> b!4703638 m!5622395))

(assert (=> b!4703199 d!1496483))

(declare-fun d!1496485 () Bool)

(declare-fun res!1986352 () Bool)

(declare-fun e!2934084 () Bool)

(assert (=> d!1496485 (=> res!1986352 e!2934084)))

(assert (=> d!1496485 (= res!1986352 (not ((_ is Cons!52555) newBucket!218)))))

(assert (=> d!1496485 (= (noDuplicateKeys!1906 newBucket!218) e!2934084)))

(declare-fun b!4703639 () Bool)

(declare-fun e!2934085 () Bool)

(assert (=> b!4703639 (= e!2934084 e!2934085)))

(declare-fun res!1986353 () Bool)

(assert (=> b!4703639 (=> (not res!1986353) (not e!2934085))))

(assert (=> b!4703639 (= res!1986353 (not (containsKey!3189 (t!359897 newBucket!218) (_1!30303 (h!58842 newBucket!218)))))))

(declare-fun b!4703640 () Bool)

(assert (=> b!4703640 (= e!2934085 (noDuplicateKeys!1906 (t!359897 newBucket!218)))))

(assert (= (and d!1496485 (not res!1986352)) b!4703639))

(assert (= (and b!4703639 res!1986353) b!4703640))

(declare-fun m!5622447 () Bool)

(assert (=> b!4703639 m!5622447))

(declare-fun m!5622449 () Bool)

(assert (=> b!4703640 m!5622449))

(assert (=> b!4703197 d!1496485))

(declare-fun d!1496487 () Bool)

(assert (=> d!1496487 (= (head!10075 (toList!5701 lm!2023)) (h!58843 (toList!5701 lm!2023)))))

(assert (=> b!4703198 d!1496487))

(declare-fun d!1496489 () Bool)

(assert (=> d!1496489 (= (eq!1065 lt!1866937 lt!1866923) (= (content!9287 (toList!5702 lt!1866937)) (content!9287 (toList!5702 lt!1866923))))))

(declare-fun bs!1097293 () Bool)

(assert (= bs!1097293 d!1496489))

(declare-fun m!5622451 () Bool)

(assert (=> bs!1097293 m!5622451))

(declare-fun m!5622453 () Bool)

(assert (=> bs!1097293 m!5622453))

(assert (=> b!4703219 d!1496489))

(declare-fun b!4703641 () Bool)

(declare-fun e!2934086 () List!52679)

(assert (=> b!4703641 (= e!2934086 (t!359897 oldBucket!34))))

(declare-fun b!4703644 () Bool)

(declare-fun e!2934087 () List!52679)

(assert (=> b!4703644 (= e!2934087 Nil!52555)))

(declare-fun b!4703643 () Bool)

(assert (=> b!4703643 (= e!2934087 (Cons!52555 (h!58842 oldBucket!34) (removePairForKey!1501 (t!359897 oldBucket!34) key!4653)))))

(declare-fun d!1496491 () Bool)

(declare-fun lt!1867521 () List!52679)

(assert (=> d!1496491 (not (containsKey!3189 lt!1867521 key!4653))))

(assert (=> d!1496491 (= lt!1867521 e!2934086)))

(declare-fun c!803957 () Bool)

(assert (=> d!1496491 (= c!803957 (and ((_ is Cons!52555) oldBucket!34) (= (_1!30303 (h!58842 oldBucket!34)) key!4653)))))

(assert (=> d!1496491 (noDuplicateKeys!1906 oldBucket!34)))

(assert (=> d!1496491 (= (removePairForKey!1501 oldBucket!34 key!4653) lt!1867521)))

(declare-fun b!4703642 () Bool)

(assert (=> b!4703642 (= e!2934086 e!2934087)))

(declare-fun c!803956 () Bool)

(assert (=> b!4703642 (= c!803956 ((_ is Cons!52555) oldBucket!34))))

(assert (= (and d!1496491 c!803957) b!4703641))

(assert (= (and d!1496491 (not c!803957)) b!4703642))

(assert (= (and b!4703642 c!803956) b!4703643))

(assert (= (and b!4703642 (not c!803956)) b!4703644))

(assert (=> b!4703643 m!5621283))

(declare-fun m!5622455 () Bool)

(assert (=> d!1496491 m!5622455))

(assert (=> d!1496491 m!5621329))

(assert (=> b!4703196 d!1496491))

(declare-fun b!4703645 () Bool)

(declare-fun e!2934088 () List!52679)

(assert (=> b!4703645 (= e!2934088 (t!359897 (t!359897 oldBucket!34)))))

(declare-fun b!4703648 () Bool)

(declare-fun e!2934089 () List!52679)

(assert (=> b!4703648 (= e!2934089 Nil!52555)))

(declare-fun b!4703647 () Bool)

(assert (=> b!4703647 (= e!2934089 (Cons!52555 (h!58842 (t!359897 oldBucket!34)) (removePairForKey!1501 (t!359897 (t!359897 oldBucket!34)) key!4653)))))

(declare-fun d!1496493 () Bool)

(declare-fun lt!1867522 () List!52679)

(assert (=> d!1496493 (not (containsKey!3189 lt!1867522 key!4653))))

(assert (=> d!1496493 (= lt!1867522 e!2934088)))

(declare-fun c!803959 () Bool)

(assert (=> d!1496493 (= c!803959 (and ((_ is Cons!52555) (t!359897 oldBucket!34)) (= (_1!30303 (h!58842 (t!359897 oldBucket!34))) key!4653)))))

(assert (=> d!1496493 (noDuplicateKeys!1906 (t!359897 oldBucket!34))))

(assert (=> d!1496493 (= (removePairForKey!1501 (t!359897 oldBucket!34) key!4653) lt!1867522)))

(declare-fun b!4703646 () Bool)

(assert (=> b!4703646 (= e!2934088 e!2934089)))

(declare-fun c!803958 () Bool)

(assert (=> b!4703646 (= c!803958 ((_ is Cons!52555) (t!359897 oldBucket!34)))))

(assert (= (and d!1496493 c!803959) b!4703645))

(assert (= (and d!1496493 (not c!803959)) b!4703646))

(assert (= (and b!4703646 c!803958) b!4703647))

(assert (= (and b!4703646 (not c!803958)) b!4703648))

(declare-fun m!5622457 () Bool)

(assert (=> b!4703647 m!5622457))

(declare-fun m!5622459 () Bool)

(assert (=> d!1496493 m!5622459))

(assert (=> d!1496493 m!5621417))

(assert (=> b!4703217 d!1496493))

(declare-fun d!1496495 () Bool)

(assert (=> d!1496495 (= (eq!1065 lt!1866923 (+!2190 lt!1866915 (h!58842 oldBucket!34))) (= (content!9287 (toList!5702 lt!1866923)) (content!9287 (toList!5702 (+!2190 lt!1866915 (h!58842 oldBucket!34))))))))

(declare-fun bs!1097294 () Bool)

(assert (= bs!1097294 d!1496495))

(assert (=> bs!1097294 m!5622453))

(declare-fun m!5622461 () Bool)

(assert (=> bs!1097294 m!5622461))

(assert (=> b!4703218 d!1496495))

(declare-fun d!1496497 () Bool)

(declare-fun e!2934090 () Bool)

(assert (=> d!1496497 e!2934090))

(declare-fun res!1986354 () Bool)

(assert (=> d!1496497 (=> (not res!1986354) (not e!2934090))))

(declare-fun lt!1867524 () ListMap!5065)

(assert (=> d!1496497 (= res!1986354 (contains!15850 lt!1867524 (_1!30303 (h!58842 oldBucket!34))))))

(declare-fun lt!1867526 () List!52679)

(assert (=> d!1496497 (= lt!1867524 (ListMap!5066 lt!1867526))))

(declare-fun lt!1867525 () Unit!126616)

(declare-fun lt!1867523 () Unit!126616)

(assert (=> d!1496497 (= lt!1867525 lt!1867523)))

(assert (=> d!1496497 (= (getValueByKey!1865 lt!1867526 (_1!30303 (h!58842 oldBucket!34))) (Some!12216 (_2!30303 (h!58842 oldBucket!34))))))

(assert (=> d!1496497 (= lt!1867523 (lemmaContainsTupThenGetReturnValue!1042 lt!1867526 (_1!30303 (h!58842 oldBucket!34)) (_2!30303 (h!58842 oldBucket!34))))))

(assert (=> d!1496497 (= lt!1867526 (insertNoDuplicatedKeys!550 (toList!5702 lt!1866915) (_1!30303 (h!58842 oldBucket!34)) (_2!30303 (h!58842 oldBucket!34))))))

(assert (=> d!1496497 (= (+!2190 lt!1866915 (h!58842 oldBucket!34)) lt!1867524)))

(declare-fun b!4703649 () Bool)

(declare-fun res!1986355 () Bool)

(assert (=> b!4703649 (=> (not res!1986355) (not e!2934090))))

(assert (=> b!4703649 (= res!1986355 (= (getValueByKey!1865 (toList!5702 lt!1867524) (_1!30303 (h!58842 oldBucket!34))) (Some!12216 (_2!30303 (h!58842 oldBucket!34)))))))

(declare-fun b!4703650 () Bool)

(assert (=> b!4703650 (= e!2934090 (contains!15852 (toList!5702 lt!1867524) (h!58842 oldBucket!34)))))

(assert (= (and d!1496497 res!1986354) b!4703649))

(assert (= (and b!4703649 res!1986355) b!4703650))

(declare-fun m!5622463 () Bool)

(assert (=> d!1496497 m!5622463))

(declare-fun m!5622465 () Bool)

(assert (=> d!1496497 m!5622465))

(declare-fun m!5622467 () Bool)

(assert (=> d!1496497 m!5622467))

(declare-fun m!5622469 () Bool)

(assert (=> d!1496497 m!5622469))

(declare-fun m!5622471 () Bool)

(assert (=> b!4703649 m!5622471))

(declare-fun m!5622473 () Bool)

(assert (=> b!4703650 m!5622473))

(assert (=> b!4703218 d!1496497))

(declare-fun d!1496499 () Bool)

(assert (=> d!1496499 (= (eq!1065 lt!1866916 (+!2190 lt!1866915 (h!58842 oldBucket!34))) (= (content!9287 (toList!5702 lt!1866916)) (content!9287 (toList!5702 (+!2190 lt!1866915 (h!58842 oldBucket!34))))))))

(declare-fun bs!1097295 () Bool)

(assert (= bs!1097295 d!1496499))

(declare-fun m!5622475 () Bool)

(assert (=> bs!1097295 m!5622475))

(assert (=> bs!1097295 m!5622461))

(assert (=> b!4703218 d!1496499))

(declare-fun d!1496501 () Bool)

(assert (=> d!1496501 (eq!1065 (+!2190 lt!1866911 (tuple2!54019 (_1!30303 (h!58842 oldBucket!34)) (_2!30303 (h!58842 oldBucket!34)))) (+!2190 lt!1866915 (tuple2!54019 (_1!30303 (h!58842 oldBucket!34)) (_2!30303 (h!58842 oldBucket!34)))))))

(declare-fun lt!1867529 () Unit!126616)

(declare-fun choose!32973 (ListMap!5065 ListMap!5065 K!13915 V!14161) Unit!126616)

(assert (=> d!1496501 (= lt!1867529 (choose!32973 lt!1866911 lt!1866915 (_1!30303 (h!58842 oldBucket!34)) (_2!30303 (h!58842 oldBucket!34))))))

(assert (=> d!1496501 (eq!1065 lt!1866911 lt!1866915)))

(assert (=> d!1496501 (= (lemmaAddToEqMapsPreservesEq!88 lt!1866911 lt!1866915 (_1!30303 (h!58842 oldBucket!34)) (_2!30303 (h!58842 oldBucket!34))) lt!1867529)))

(declare-fun bs!1097296 () Bool)

(assert (= bs!1097296 d!1496501))

(declare-fun m!5622477 () Bool)

(assert (=> bs!1097296 m!5622477))

(declare-fun m!5622479 () Bool)

(assert (=> bs!1097296 m!5622479))

(assert (=> bs!1097296 m!5622477))

(declare-fun m!5622481 () Bool)

(assert (=> bs!1097296 m!5622481))

(declare-fun m!5622483 () Bool)

(assert (=> bs!1097296 m!5622483))

(declare-fun m!5622485 () Bool)

(assert (=> bs!1097296 m!5622485))

(assert (=> bs!1097296 m!5622479))

(assert (=> b!4703218 d!1496501))

(declare-fun bs!1097297 () Bool)

(declare-fun d!1496503 () Bool)

(assert (= bs!1097297 (and d!1496503 b!4703561)))

(declare-fun lambda!210957 () Int)

(assert (=> bs!1097297 (not (= lambda!210957 lambda!210937))))

(assert (=> bs!1097297 (not (= lambda!210957 lambda!210938))))

(declare-fun bs!1097298 () Bool)

(assert (= bs!1097298 (and d!1496503 b!4703544)))

(assert (=> bs!1097298 (not (= lambda!210957 lambda!210929))))

(declare-fun bs!1097299 () Bool)

(assert (= bs!1097299 (and d!1496503 d!1496425)))

(assert (=> bs!1097299 (not (= lambda!210957 lambda!210930))))

(declare-fun bs!1097300 () Bool)

(assert (= bs!1097300 (and d!1496503 b!4703532)))

(assert (=> bs!1097300 (not (= lambda!210957 lambda!210918))))

(declare-fun bs!1097301 () Bool)

(assert (= bs!1097301 (and d!1496503 b!4703530)))

(assert (=> bs!1097301 (not (= lambda!210957 lambda!210920))))

(assert (=> bs!1097301 (not (= lambda!210957 lambda!210921))))

(declare-fun bs!1097302 () Bool)

(assert (= bs!1097302 (and d!1496503 b!4703546)))

(assert (=> bs!1097302 (not (= lambda!210957 lambda!210925))))

(declare-fun bs!1097303 () Bool)

(assert (= bs!1097303 (and d!1496503 d!1496403)))

(assert (=> bs!1097303 (not (= lambda!210957 lambda!210923))))

(declare-fun bs!1097304 () Bool)

(assert (= bs!1097304 (and d!1496503 b!4703563)))

(assert (=> bs!1097304 (not (= lambda!210957 lambda!210936))))

(declare-fun bs!1097305 () Bool)

(assert (= bs!1097305 (and d!1496503 d!1496321)))

(assert (=> bs!1097305 (not (= lambda!210957 lambda!210904))))

(declare-fun bs!1097306 () Bool)

(assert (= bs!1097306 (and d!1496503 b!4703466)))

(assert (=> bs!1097306 (not (= lambda!210957 lambda!210903))))

(assert (=> bs!1097306 (not (= lambda!210957 lambda!210902))))

(declare-fun bs!1097307 () Bool)

(assert (= bs!1097307 (and d!1496503 b!4703468)))

(assert (=> bs!1097307 (not (= lambda!210957 lambda!210901))))

(declare-fun bs!1097308 () Bool)

(assert (= bs!1097308 (and d!1496503 d!1496435)))

(assert (=> bs!1097308 (not (= lambda!210957 lambda!210939))))

(assert (=> bs!1097298 (not (= lambda!210957 lambda!210927))))

(assert (=> d!1496503 true))

(assert (=> d!1496503 true))

(assert (=> d!1496503 (= (allKeysSameHash!1732 oldBucket!34 hash!405 hashF!1323) (forall!11417 oldBucket!34 lambda!210957))))

(declare-fun bs!1097309 () Bool)

(assert (= bs!1097309 d!1496503))

(declare-fun m!5622487 () Bool)

(assert (=> bs!1097309 m!5622487))

(assert (=> b!4703207 d!1496503))

(declare-fun d!1496505 () Bool)

(declare-fun hash!4198 (Hashable!6275 K!13915) (_ BitVec 64))

(assert (=> d!1496505 (= (hash!4194 hashF!1323 key!4653) (hash!4198 hashF!1323 key!4653))))

(declare-fun bs!1097310 () Bool)

(assert (= bs!1097310 d!1496505))

(declare-fun m!5622489 () Bool)

(assert (=> bs!1097310 m!5622489))

(assert (=> b!4703216 d!1496505))

(declare-fun d!1496507 () Bool)

(declare-fun e!2934091 () Bool)

(assert (=> d!1496507 e!2934091))

(declare-fun res!1986356 () Bool)

(assert (=> d!1496507 (=> (not res!1986356) (not e!2934091))))

(declare-fun lt!1867531 () ListMap!5065)

(assert (=> d!1496507 (= res!1986356 (contains!15850 lt!1867531 (_1!30303 (h!58842 oldBucket!34))))))

(declare-fun lt!1867533 () List!52679)

(assert (=> d!1496507 (= lt!1867531 (ListMap!5066 lt!1867533))))

(declare-fun lt!1867532 () Unit!126616)

(declare-fun lt!1867530 () Unit!126616)

(assert (=> d!1496507 (= lt!1867532 lt!1867530)))

(assert (=> d!1496507 (= (getValueByKey!1865 lt!1867533 (_1!30303 (h!58842 oldBucket!34))) (Some!12216 (_2!30303 (h!58842 oldBucket!34))))))

(assert (=> d!1496507 (= lt!1867530 (lemmaContainsTupThenGetReturnValue!1042 lt!1867533 (_1!30303 (h!58842 oldBucket!34)) (_2!30303 (h!58842 oldBucket!34))))))

(assert (=> d!1496507 (= lt!1867533 (insertNoDuplicatedKeys!550 (toList!5702 lt!1866947) (_1!30303 (h!58842 oldBucket!34)) (_2!30303 (h!58842 oldBucket!34))))))

(assert (=> d!1496507 (= (+!2190 lt!1866947 (h!58842 oldBucket!34)) lt!1867531)))

(declare-fun b!4703655 () Bool)

(declare-fun res!1986357 () Bool)

(assert (=> b!4703655 (=> (not res!1986357) (not e!2934091))))

(assert (=> b!4703655 (= res!1986357 (= (getValueByKey!1865 (toList!5702 lt!1867531) (_1!30303 (h!58842 oldBucket!34))) (Some!12216 (_2!30303 (h!58842 oldBucket!34)))))))

(declare-fun b!4703656 () Bool)

(assert (=> b!4703656 (= e!2934091 (contains!15852 (toList!5702 lt!1867531) (h!58842 oldBucket!34)))))

(assert (= (and d!1496507 res!1986356) b!4703655))

(assert (= (and b!4703655 res!1986357) b!4703656))

(declare-fun m!5622491 () Bool)

(assert (=> d!1496507 m!5622491))

(declare-fun m!5622493 () Bool)

(assert (=> d!1496507 m!5622493))

(declare-fun m!5622495 () Bool)

(assert (=> d!1496507 m!5622495))

(declare-fun m!5622497 () Bool)

(assert (=> d!1496507 m!5622497))

(declare-fun m!5622499 () Bool)

(assert (=> b!4703655 m!5622499))

(declare-fun m!5622501 () Bool)

(assert (=> b!4703656 m!5622501))

(assert (=> b!4703205 d!1496507))

(declare-fun d!1496509 () Bool)

(declare-fun e!2934092 () Bool)

(assert (=> d!1496509 e!2934092))

(declare-fun res!1986358 () Bool)

(assert (=> d!1496509 (=> (not res!1986358) (not e!2934092))))

(declare-fun lt!1867535 () ListMap!5065)

(assert (=> d!1496509 (= res!1986358 (contains!15850 lt!1867535 (_1!30303 (h!58842 oldBucket!34))))))

(declare-fun lt!1867537 () List!52679)

(assert (=> d!1496509 (= lt!1867535 (ListMap!5066 lt!1867537))))

(declare-fun lt!1867536 () Unit!126616)

(declare-fun lt!1867534 () Unit!126616)

(assert (=> d!1496509 (= lt!1867536 lt!1867534)))

(assert (=> d!1496509 (= (getValueByKey!1865 lt!1867537 (_1!30303 (h!58842 oldBucket!34))) (Some!12216 (_2!30303 (h!58842 oldBucket!34))))))

(assert (=> d!1496509 (= lt!1867534 (lemmaContainsTupThenGetReturnValue!1042 lt!1867537 (_1!30303 (h!58842 oldBucket!34)) (_2!30303 (h!58842 oldBucket!34))))))

(assert (=> d!1496509 (= lt!1867537 (insertNoDuplicatedKeys!550 (toList!5702 lt!1866911) (_1!30303 (h!58842 oldBucket!34)) (_2!30303 (h!58842 oldBucket!34))))))

(assert (=> d!1496509 (= (+!2190 lt!1866911 (h!58842 oldBucket!34)) lt!1867535)))

(declare-fun b!4703657 () Bool)

(declare-fun res!1986359 () Bool)

(assert (=> b!4703657 (=> (not res!1986359) (not e!2934092))))

(assert (=> b!4703657 (= res!1986359 (= (getValueByKey!1865 (toList!5702 lt!1867535) (_1!30303 (h!58842 oldBucket!34))) (Some!12216 (_2!30303 (h!58842 oldBucket!34)))))))

(declare-fun b!4703658 () Bool)

(assert (=> b!4703658 (= e!2934092 (contains!15852 (toList!5702 lt!1867535) (h!58842 oldBucket!34)))))

(assert (= (and d!1496509 res!1986358) b!4703657))

(assert (= (and b!4703657 res!1986359) b!4703658))

(declare-fun m!5622503 () Bool)

(assert (=> d!1496509 m!5622503))

(declare-fun m!5622505 () Bool)

(assert (=> d!1496509 m!5622505))

(declare-fun m!5622507 () Bool)

(assert (=> d!1496509 m!5622507))

(declare-fun m!5622509 () Bool)

(assert (=> d!1496509 m!5622509))

(declare-fun m!5622511 () Bool)

(assert (=> b!4703657 m!5622511))

(declare-fun m!5622513 () Bool)

(assert (=> b!4703658 m!5622513))

(assert (=> b!4703205 d!1496509))

(declare-fun d!1496511 () Bool)

(assert (=> d!1496511 (= (-!710 (+!2190 lt!1866947 (tuple2!54019 (_1!30303 (h!58842 oldBucket!34)) (_2!30303 (h!58842 oldBucket!34)))) key!4653) (+!2190 (-!710 lt!1866947 key!4653) (tuple2!54019 (_1!30303 (h!58842 oldBucket!34)) (_2!30303 (h!58842 oldBucket!34)))))))

(declare-fun lt!1867540 () Unit!126616)

(declare-fun choose!32974 (ListMap!5065 K!13915 V!14161 K!13915) Unit!126616)

(assert (=> d!1496511 (= lt!1867540 (choose!32974 lt!1866947 (_1!30303 (h!58842 oldBucket!34)) (_2!30303 (h!58842 oldBucket!34)) key!4653))))

(assert (=> d!1496511 (not (= (_1!30303 (h!58842 oldBucket!34)) key!4653))))

(assert (=> d!1496511 (= (addRemoveCommutativeForDiffKeys!111 lt!1866947 (_1!30303 (h!58842 oldBucket!34)) (_2!30303 (h!58842 oldBucket!34)) key!4653) lt!1867540)))

(declare-fun bs!1097311 () Bool)

(assert (= bs!1097311 d!1496511))

(declare-fun m!5622515 () Bool)

(assert (=> bs!1097311 m!5622515))

(declare-fun m!5622517 () Bool)

(assert (=> bs!1097311 m!5622517))

(assert (=> bs!1097311 m!5622515))

(declare-fun m!5622519 () Bool)

(assert (=> bs!1097311 m!5622519))

(assert (=> bs!1097311 m!5621309))

(declare-fun m!5622521 () Bool)

(assert (=> bs!1097311 m!5622521))

(assert (=> bs!1097311 m!5621309))

(assert (=> b!4703205 d!1496511))

(declare-fun d!1496513 () Bool)

(declare-fun e!2934093 () Bool)

(assert (=> d!1496513 e!2934093))

(declare-fun res!1986360 () Bool)

(assert (=> d!1496513 (=> (not res!1986360) (not e!2934093))))

(declare-fun lt!1867541 () ListMap!5065)

(assert (=> d!1496513 (= res!1986360 (not (contains!15850 lt!1867541 key!4653)))))

(assert (=> d!1496513 (= lt!1867541 (ListMap!5066 (removePresrvNoDuplicatedKeys!373 (toList!5702 (+!2190 lt!1866947 (h!58842 oldBucket!34))) key!4653)))))

(assert (=> d!1496513 (= (-!710 (+!2190 lt!1866947 (h!58842 oldBucket!34)) key!4653) lt!1867541)))

(declare-fun b!4703659 () Bool)

(assert (=> b!4703659 (= e!2934093 (= ((_ map and) (content!9288 (keys!18807 (+!2190 lt!1866947 (h!58842 oldBucket!34)))) ((_ map not) (store ((as const (Array K!13915 Bool)) false) key!4653 true))) (content!9288 (keys!18807 lt!1867541))))))

(assert (= (and d!1496513 res!1986360) b!4703659))

(declare-fun m!5622523 () Bool)

(assert (=> d!1496513 m!5622523))

(declare-fun m!5622525 () Bool)

(assert (=> d!1496513 m!5622525))

(declare-fun m!5622527 () Bool)

(assert (=> b!4703659 m!5622527))

(assert (=> b!4703659 m!5621269))

(declare-fun m!5622529 () Bool)

(assert (=> b!4703659 m!5622529))

(assert (=> b!4703659 m!5622529))

(declare-fun m!5622531 () Bool)

(assert (=> b!4703659 m!5622531))

(assert (=> b!4703659 m!5622527))

(declare-fun m!5622533 () Bool)

(assert (=> b!4703659 m!5622533))

(assert (=> b!4703659 m!5622395))

(assert (=> b!4703205 d!1496513))

(declare-fun d!1496515 () Bool)

(declare-fun e!2934094 () Bool)

(assert (=> d!1496515 e!2934094))

(declare-fun res!1986361 () Bool)

(assert (=> d!1496515 (=> (not res!1986361) (not e!2934094))))

(declare-fun lt!1867542 () ListMap!5065)

(assert (=> d!1496515 (= res!1986361 (not (contains!15850 lt!1867542 key!4653)))))

(assert (=> d!1496515 (= lt!1867542 (ListMap!5066 (removePresrvNoDuplicatedKeys!373 (toList!5702 lt!1866941) key!4653)))))

(assert (=> d!1496515 (= (-!710 lt!1866941 key!4653) lt!1867542)))

(declare-fun b!4703660 () Bool)

(assert (=> b!4703660 (= e!2934094 (= ((_ map and) (content!9288 (keys!18807 lt!1866941)) ((_ map not) (store ((as const (Array K!13915 Bool)) false) key!4653 true))) (content!9288 (keys!18807 lt!1867542))))))

(assert (= (and d!1496515 res!1986361) b!4703660))

(declare-fun m!5622535 () Bool)

(assert (=> d!1496515 m!5622535))

(declare-fun m!5622537 () Bool)

(assert (=> d!1496515 m!5622537))

(declare-fun m!5622539 () Bool)

(assert (=> b!4703660 m!5622539))

(declare-fun m!5622541 () Bool)

(assert (=> b!4703660 m!5622541))

(assert (=> b!4703660 m!5622541))

(declare-fun m!5622543 () Bool)

(assert (=> b!4703660 m!5622543))

(assert (=> b!4703660 m!5622539))

(declare-fun m!5622545 () Bool)

(assert (=> b!4703660 m!5622545))

(assert (=> b!4703660 m!5622395))

(assert (=> b!4703205 d!1496515))

(declare-fun bs!1097312 () Bool)

(declare-fun d!1496517 () Bool)

(assert (= bs!1097312 (and d!1496517 b!4703561)))

(declare-fun lambda!210958 () Int)

(assert (=> bs!1097312 (not (= lambda!210958 lambda!210937))))

(assert (=> bs!1097312 (not (= lambda!210958 lambda!210938))))

(declare-fun bs!1097313 () Bool)

(assert (= bs!1097313 (and d!1496517 b!4703544)))

(assert (=> bs!1097313 (not (= lambda!210958 lambda!210929))))

(declare-fun bs!1097314 () Bool)

(assert (= bs!1097314 (and d!1496517 d!1496425)))

(assert (=> bs!1097314 (not (= lambda!210958 lambda!210930))))

(declare-fun bs!1097315 () Bool)

(assert (= bs!1097315 (and d!1496517 b!4703532)))

(assert (=> bs!1097315 (not (= lambda!210958 lambda!210918))))

(declare-fun bs!1097316 () Bool)

(assert (= bs!1097316 (and d!1496517 b!4703530)))

(assert (=> bs!1097316 (not (= lambda!210958 lambda!210920))))

(assert (=> bs!1097316 (not (= lambda!210958 lambda!210921))))

(declare-fun bs!1097317 () Bool)

(assert (= bs!1097317 (and d!1496517 d!1496503)))

(assert (=> bs!1097317 (= lambda!210958 lambda!210957)))

(declare-fun bs!1097318 () Bool)

(assert (= bs!1097318 (and d!1496517 b!4703546)))

(assert (=> bs!1097318 (not (= lambda!210958 lambda!210925))))

(declare-fun bs!1097319 () Bool)

(assert (= bs!1097319 (and d!1496517 d!1496403)))

(assert (=> bs!1097319 (not (= lambda!210958 lambda!210923))))

(declare-fun bs!1097320 () Bool)

(assert (= bs!1097320 (and d!1496517 b!4703563)))

(assert (=> bs!1097320 (not (= lambda!210958 lambda!210936))))

(declare-fun bs!1097321 () Bool)

(assert (= bs!1097321 (and d!1496517 d!1496321)))

(assert (=> bs!1097321 (not (= lambda!210958 lambda!210904))))

(declare-fun bs!1097322 () Bool)

(assert (= bs!1097322 (and d!1496517 b!4703466)))

(assert (=> bs!1097322 (not (= lambda!210958 lambda!210903))))

(assert (=> bs!1097322 (not (= lambda!210958 lambda!210902))))

(declare-fun bs!1097323 () Bool)

(assert (= bs!1097323 (and d!1496517 b!4703468)))

(assert (=> bs!1097323 (not (= lambda!210958 lambda!210901))))

(declare-fun bs!1097324 () Bool)

(assert (= bs!1097324 (and d!1496517 d!1496435)))

(assert (=> bs!1097324 (not (= lambda!210958 lambda!210939))))

(assert (=> bs!1097313 (not (= lambda!210958 lambda!210927))))

(assert (=> d!1496517 true))

(assert (=> d!1496517 true))

(assert (=> d!1496517 (= (allKeysSameHash!1732 newBucket!218 hash!405 hashF!1323) (forall!11417 newBucket!218 lambda!210958))))

(declare-fun bs!1097325 () Bool)

(assert (= bs!1097325 d!1496517))

(declare-fun m!5622547 () Bool)

(assert (=> bs!1097325 m!5622547))

(assert (=> b!4703204 d!1496517))

(declare-fun d!1496519 () Bool)

(declare-fun res!1986366 () Bool)

(declare-fun e!2934099 () Bool)

(assert (=> d!1496519 (=> res!1986366 e!2934099)))

(assert (=> d!1496519 (= res!1986366 ((_ is Nil!52556) (toList!5701 lm!2023)))))

(assert (=> d!1496519 (= (forall!11415 (toList!5701 lm!2023) lambda!210801) e!2934099)))

(declare-fun b!4703665 () Bool)

(declare-fun e!2934100 () Bool)

(assert (=> b!4703665 (= e!2934099 e!2934100)))

(declare-fun res!1986367 () Bool)

(assert (=> b!4703665 (=> (not res!1986367) (not e!2934100))))

(assert (=> b!4703665 (= res!1986367 (dynLambda!21755 lambda!210801 (h!58843 (toList!5701 lm!2023))))))

(declare-fun b!4703666 () Bool)

(assert (=> b!4703666 (= e!2934100 (forall!11415 (t!359898 (toList!5701 lm!2023)) lambda!210801))))

(assert (= (and d!1496519 (not res!1986366)) b!4703665))

(assert (= (and b!4703665 res!1986367) b!4703666))

(declare-fun b_lambda!177463 () Bool)

(assert (=> (not b_lambda!177463) (not b!4703665)))

(declare-fun m!5622549 () Bool)

(assert (=> b!4703665 m!5622549))

(declare-fun m!5622551 () Bool)

(assert (=> b!4703666 m!5622551))

(assert (=> start!477268 d!1496519))

(declare-fun d!1496521 () Bool)

(declare-fun isStrictlySorted!691 (List!52680) Bool)

(assert (=> d!1496521 (= (inv!67789 lm!2023) (isStrictlySorted!691 (toList!5701 lm!2023)))))

(declare-fun bs!1097326 () Bool)

(assert (= bs!1097326 d!1496521))

(declare-fun m!5622553 () Bool)

(assert (=> bs!1097326 m!5622553))

(assert (=> start!477268 d!1496521))

(declare-fun bs!1097327 () Bool)

(declare-fun b!4703671 () Bool)

(assert (= bs!1097327 (and b!4703671 b!4703561)))

(declare-fun lambda!210959 () Int)

(assert (=> bs!1097327 (= lambda!210959 lambda!210937)))

(assert (=> bs!1097327 (= (= lt!1866920 lt!1867442) (= lambda!210959 lambda!210938))))

(declare-fun bs!1097328 () Bool)

(assert (= bs!1097328 (and b!4703671 b!4703544)))

(assert (=> bs!1097328 (= (= lt!1866920 lt!1867397) (= lambda!210959 lambda!210929))))

(declare-fun bs!1097329 () Bool)

(assert (= bs!1097329 (and b!4703671 d!1496517)))

(assert (=> bs!1097329 (not (= lambda!210959 lambda!210958))))

(declare-fun bs!1097330 () Bool)

(assert (= bs!1097330 (and b!4703671 d!1496425)))

(assert (=> bs!1097330 (= (= lt!1866920 lt!1867398) (= lambda!210959 lambda!210930))))

(declare-fun bs!1097331 () Bool)

(assert (= bs!1097331 (and b!4703671 b!4703532)))

(assert (=> bs!1097331 (= lambda!210959 lambda!210918)))

(declare-fun bs!1097332 () Bool)

(assert (= bs!1097332 (and b!4703671 b!4703530)))

(assert (=> bs!1097332 (= lambda!210959 lambda!210920)))

(assert (=> bs!1097332 (= (= lt!1866920 lt!1867339) (= lambda!210959 lambda!210921))))

(declare-fun bs!1097333 () Bool)

(assert (= bs!1097333 (and b!4703671 d!1496503)))

(assert (=> bs!1097333 (not (= lambda!210959 lambda!210957))))

(declare-fun bs!1097334 () Bool)

(assert (= bs!1097334 (and b!4703671 b!4703546)))

(assert (=> bs!1097334 (= lambda!210959 lambda!210925)))

(declare-fun bs!1097335 () Bool)

(assert (= bs!1097335 (and b!4703671 d!1496403)))

(assert (=> bs!1097335 (= (= lt!1866920 lt!1867340) (= lambda!210959 lambda!210923))))

(declare-fun bs!1097336 () Bool)

(assert (= bs!1097336 (and b!4703671 b!4703563)))

(assert (=> bs!1097336 (= lambda!210959 lambda!210936)))

(declare-fun bs!1097337 () Bool)

(assert (= bs!1097337 (and b!4703671 d!1496321)))

(assert (=> bs!1097337 (= (= lt!1866920 lt!1867233) (= lambda!210959 lambda!210904))))

(declare-fun bs!1097338 () Bool)

(assert (= bs!1097338 (and b!4703671 b!4703466)))

(assert (=> bs!1097338 (= (= lt!1866920 lt!1867232) (= lambda!210959 lambda!210903))))

(assert (=> bs!1097338 (= lambda!210959 lambda!210902)))

(declare-fun bs!1097339 () Bool)

(assert (= bs!1097339 (and b!4703671 b!4703468)))

(assert (=> bs!1097339 (= lambda!210959 lambda!210901)))

(declare-fun bs!1097340 () Bool)

(assert (= bs!1097340 (and b!4703671 d!1496435)))

(assert (=> bs!1097340 (= (= lt!1866920 lt!1867443) (= lambda!210959 lambda!210939))))

(assert (=> bs!1097328 (= lambda!210959 lambda!210927)))

(assert (=> b!4703671 true))

(declare-fun bs!1097341 () Bool)

(declare-fun b!4703669 () Bool)

(assert (= bs!1097341 (and b!4703669 b!4703561)))

(declare-fun lambda!210960 () Int)

(assert (=> bs!1097341 (= lambda!210960 lambda!210937)))

(assert (=> bs!1097341 (= (= lt!1866920 lt!1867442) (= lambda!210960 lambda!210938))))

(declare-fun bs!1097342 () Bool)

(assert (= bs!1097342 (and b!4703669 b!4703544)))

(assert (=> bs!1097342 (= (= lt!1866920 lt!1867397) (= lambda!210960 lambda!210929))))

(declare-fun bs!1097343 () Bool)

(assert (= bs!1097343 (and b!4703669 d!1496517)))

(assert (=> bs!1097343 (not (= lambda!210960 lambda!210958))))

(declare-fun bs!1097344 () Bool)

(assert (= bs!1097344 (and b!4703669 b!4703532)))

(assert (=> bs!1097344 (= lambda!210960 lambda!210918)))

(declare-fun bs!1097345 () Bool)

(assert (= bs!1097345 (and b!4703669 b!4703530)))

(assert (=> bs!1097345 (= lambda!210960 lambda!210920)))

(assert (=> bs!1097345 (= (= lt!1866920 lt!1867339) (= lambda!210960 lambda!210921))))

(declare-fun bs!1097346 () Bool)

(assert (= bs!1097346 (and b!4703669 d!1496503)))

(assert (=> bs!1097346 (not (= lambda!210960 lambda!210957))))

(declare-fun bs!1097347 () Bool)

(assert (= bs!1097347 (and b!4703669 b!4703546)))

(assert (=> bs!1097347 (= lambda!210960 lambda!210925)))

(declare-fun bs!1097348 () Bool)

(assert (= bs!1097348 (and b!4703669 d!1496403)))

(assert (=> bs!1097348 (= (= lt!1866920 lt!1867340) (= lambda!210960 lambda!210923))))

(declare-fun bs!1097349 () Bool)

(assert (= bs!1097349 (and b!4703669 b!4703563)))

(assert (=> bs!1097349 (= lambda!210960 lambda!210936)))

(declare-fun bs!1097350 () Bool)

(assert (= bs!1097350 (and b!4703669 d!1496321)))

(assert (=> bs!1097350 (= (= lt!1866920 lt!1867233) (= lambda!210960 lambda!210904))))

(declare-fun bs!1097351 () Bool)

(assert (= bs!1097351 (and b!4703669 b!4703466)))

(assert (=> bs!1097351 (= (= lt!1866920 lt!1867232) (= lambda!210960 lambda!210903))))

(declare-fun bs!1097352 () Bool)

(assert (= bs!1097352 (and b!4703669 b!4703671)))

(assert (=> bs!1097352 (= lambda!210960 lambda!210959)))

(declare-fun bs!1097353 () Bool)

(assert (= bs!1097353 (and b!4703669 d!1496425)))

(assert (=> bs!1097353 (= (= lt!1866920 lt!1867398) (= lambda!210960 lambda!210930))))

(assert (=> bs!1097351 (= lambda!210960 lambda!210902)))

(declare-fun bs!1097354 () Bool)

(assert (= bs!1097354 (and b!4703669 b!4703468)))

(assert (=> bs!1097354 (= lambda!210960 lambda!210901)))

(declare-fun bs!1097355 () Bool)

(assert (= bs!1097355 (and b!4703669 d!1496435)))

(assert (=> bs!1097355 (= (= lt!1866920 lt!1867443) (= lambda!210960 lambda!210939))))

(assert (=> bs!1097342 (= lambda!210960 lambda!210927)))

(assert (=> b!4703669 true))

(declare-fun lambda!210961 () Int)

(declare-fun lt!1867549 () ListMap!5065)

(assert (=> bs!1097341 (= (= lt!1867549 lt!1866920) (= lambda!210961 lambda!210937))))

(assert (=> bs!1097341 (= (= lt!1867549 lt!1867442) (= lambda!210961 lambda!210938))))

(assert (=> bs!1097342 (= (= lt!1867549 lt!1867397) (= lambda!210961 lambda!210929))))

(assert (=> bs!1097343 (not (= lambda!210961 lambda!210958))))

(assert (=> bs!1097344 (= (= lt!1867549 lt!1866920) (= lambda!210961 lambda!210918))))

(assert (=> bs!1097345 (= (= lt!1867549 lt!1866920) (= lambda!210961 lambda!210920))))

(assert (=> bs!1097346 (not (= lambda!210961 lambda!210957))))

(assert (=> bs!1097347 (= (= lt!1867549 lt!1866920) (= lambda!210961 lambda!210925))))

(assert (=> bs!1097348 (= (= lt!1867549 lt!1867340) (= lambda!210961 lambda!210923))))

(assert (=> bs!1097349 (= (= lt!1867549 lt!1866920) (= lambda!210961 lambda!210936))))

(assert (=> bs!1097350 (= (= lt!1867549 lt!1867233) (= lambda!210961 lambda!210904))))

(assert (=> bs!1097351 (= (= lt!1867549 lt!1867232) (= lambda!210961 lambda!210903))))

(assert (=> bs!1097352 (= (= lt!1867549 lt!1866920) (= lambda!210961 lambda!210959))))

(assert (=> bs!1097353 (= (= lt!1867549 lt!1867398) (= lambda!210961 lambda!210930))))

(assert (=> bs!1097351 (= (= lt!1867549 lt!1866920) (= lambda!210961 lambda!210902))))

(assert (=> bs!1097354 (= (= lt!1867549 lt!1866920) (= lambda!210961 lambda!210901))))

(assert (=> bs!1097355 (= (= lt!1867549 lt!1867443) (= lambda!210961 lambda!210939))))

(assert (=> bs!1097342 (= (= lt!1867549 lt!1866920) (= lambda!210961 lambda!210927))))

(assert (=> b!4703669 (= (= lt!1867549 lt!1866920) (= lambda!210961 lambda!210960))))

(assert (=> bs!1097345 (= (= lt!1867549 lt!1867339) (= lambda!210961 lambda!210921))))

(assert (=> b!4703669 true))

(declare-fun bs!1097356 () Bool)

(declare-fun d!1496523 () Bool)

(assert (= bs!1097356 (and d!1496523 b!4703561)))

(declare-fun lt!1867550 () ListMap!5065)

(declare-fun lambda!210962 () Int)

(assert (=> bs!1097356 (= (= lt!1867550 lt!1866920) (= lambda!210962 lambda!210937))))

(assert (=> bs!1097356 (= (= lt!1867550 lt!1867442) (= lambda!210962 lambda!210938))))

(declare-fun bs!1097357 () Bool)

(assert (= bs!1097357 (and d!1496523 b!4703544)))

(assert (=> bs!1097357 (= (= lt!1867550 lt!1867397) (= lambda!210962 lambda!210929))))

(declare-fun bs!1097358 () Bool)

(assert (= bs!1097358 (and d!1496523 d!1496517)))

(assert (=> bs!1097358 (not (= lambda!210962 lambda!210958))))

(declare-fun bs!1097359 () Bool)

(assert (= bs!1097359 (and d!1496523 b!4703669)))

(assert (=> bs!1097359 (= (= lt!1867550 lt!1867549) (= lambda!210962 lambda!210961))))

(declare-fun bs!1097360 () Bool)

(assert (= bs!1097360 (and d!1496523 b!4703532)))

(assert (=> bs!1097360 (= (= lt!1867550 lt!1866920) (= lambda!210962 lambda!210918))))

(declare-fun bs!1097361 () Bool)

(assert (= bs!1097361 (and d!1496523 b!4703530)))

(assert (=> bs!1097361 (= (= lt!1867550 lt!1866920) (= lambda!210962 lambda!210920))))

(declare-fun bs!1097362 () Bool)

(assert (= bs!1097362 (and d!1496523 d!1496503)))

(assert (=> bs!1097362 (not (= lambda!210962 lambda!210957))))

(declare-fun bs!1097363 () Bool)

(assert (= bs!1097363 (and d!1496523 b!4703546)))

(assert (=> bs!1097363 (= (= lt!1867550 lt!1866920) (= lambda!210962 lambda!210925))))

(declare-fun bs!1097364 () Bool)

(assert (= bs!1097364 (and d!1496523 d!1496403)))

(assert (=> bs!1097364 (= (= lt!1867550 lt!1867340) (= lambda!210962 lambda!210923))))

(declare-fun bs!1097365 () Bool)

(assert (= bs!1097365 (and d!1496523 b!4703563)))

(assert (=> bs!1097365 (= (= lt!1867550 lt!1866920) (= lambda!210962 lambda!210936))))

(declare-fun bs!1097366 () Bool)

(assert (= bs!1097366 (and d!1496523 d!1496321)))

(assert (=> bs!1097366 (= (= lt!1867550 lt!1867233) (= lambda!210962 lambda!210904))))

(declare-fun bs!1097367 () Bool)

(assert (= bs!1097367 (and d!1496523 b!4703466)))

(assert (=> bs!1097367 (= (= lt!1867550 lt!1867232) (= lambda!210962 lambda!210903))))

(declare-fun bs!1097368 () Bool)

(assert (= bs!1097368 (and d!1496523 b!4703671)))

(assert (=> bs!1097368 (= (= lt!1867550 lt!1866920) (= lambda!210962 lambda!210959))))

(declare-fun bs!1097369 () Bool)

(assert (= bs!1097369 (and d!1496523 d!1496425)))

(assert (=> bs!1097369 (= (= lt!1867550 lt!1867398) (= lambda!210962 lambda!210930))))

(assert (=> bs!1097367 (= (= lt!1867550 lt!1866920) (= lambda!210962 lambda!210902))))

(declare-fun bs!1097370 () Bool)

(assert (= bs!1097370 (and d!1496523 b!4703468)))

(assert (=> bs!1097370 (= (= lt!1867550 lt!1866920) (= lambda!210962 lambda!210901))))

(declare-fun bs!1097371 () Bool)

(assert (= bs!1097371 (and d!1496523 d!1496435)))

(assert (=> bs!1097371 (= (= lt!1867550 lt!1867443) (= lambda!210962 lambda!210939))))

(assert (=> bs!1097357 (= (= lt!1867550 lt!1866920) (= lambda!210962 lambda!210927))))

(assert (=> bs!1097359 (= (= lt!1867550 lt!1866920) (= lambda!210962 lambda!210960))))

(assert (=> bs!1097361 (= (= lt!1867550 lt!1867339) (= lambda!210962 lambda!210921))))

(assert (=> d!1496523 true))

(declare-fun c!803960 () Bool)

(declare-fun call!328857 () Bool)

(declare-fun bm!328850 () Bool)

(assert (=> bm!328850 (= call!328857 (forall!11417 (ite c!803960 (toList!5702 lt!1866920) (_2!30304 (h!58843 (toList!5701 lm!2023)))) (ite c!803960 lambda!210959 lambda!210961)))))

(declare-fun b!4703667 () Bool)

(declare-fun e!2934103 () Bool)

(assert (=> b!4703667 (= e!2934103 (invariantList!1452 (toList!5702 lt!1867550)))))

(declare-fun e!2934102 () ListMap!5065)

(assert (=> b!4703669 (= e!2934102 lt!1867549)))

(declare-fun lt!1867548 () ListMap!5065)

(assert (=> b!4703669 (= lt!1867548 (+!2190 lt!1866920 (h!58842 (_2!30304 (h!58843 (toList!5701 lm!2023))))))))

(assert (=> b!4703669 (= lt!1867549 (addToMapMapFromBucket!1338 (t!359897 (_2!30304 (h!58843 (toList!5701 lm!2023)))) (+!2190 lt!1866920 (h!58842 (_2!30304 (h!58843 (toList!5701 lm!2023)))))))))

(declare-fun lt!1867554 () Unit!126616)

(declare-fun call!328856 () Unit!126616)

(assert (=> b!4703669 (= lt!1867554 call!328856)))

(declare-fun call!328855 () Bool)

(assert (=> b!4703669 call!328855))

(declare-fun lt!1867547 () Unit!126616)

(assert (=> b!4703669 (= lt!1867547 lt!1867554)))

(assert (=> b!4703669 (forall!11417 (toList!5702 lt!1867548) lambda!210961)))

(declare-fun lt!1867552 () Unit!126616)

(declare-fun Unit!126727 () Unit!126616)

(assert (=> b!4703669 (= lt!1867552 Unit!126727)))

(assert (=> b!4703669 (forall!11417 (t!359897 (_2!30304 (h!58843 (toList!5701 lm!2023)))) lambda!210961)))

(declare-fun lt!1867545 () Unit!126616)

(declare-fun Unit!126728 () Unit!126616)

(assert (=> b!4703669 (= lt!1867545 Unit!126728)))

(declare-fun lt!1867551 () Unit!126616)

(declare-fun Unit!126729 () Unit!126616)

(assert (=> b!4703669 (= lt!1867551 Unit!126729)))

(declare-fun lt!1867543 () Unit!126616)

(assert (=> b!4703669 (= lt!1867543 (forallContained!3524 (toList!5702 lt!1867548) lambda!210961 (h!58842 (_2!30304 (h!58843 (toList!5701 lm!2023))))))))

(assert (=> b!4703669 (contains!15850 lt!1867548 (_1!30303 (h!58842 (_2!30304 (h!58843 (toList!5701 lm!2023))))))))

(declare-fun lt!1867555 () Unit!126616)

(declare-fun Unit!126730 () Unit!126616)

(assert (=> b!4703669 (= lt!1867555 Unit!126730)))

(assert (=> b!4703669 (contains!15850 lt!1867549 (_1!30303 (h!58842 (_2!30304 (h!58843 (toList!5701 lm!2023))))))))

(declare-fun lt!1867544 () Unit!126616)

(declare-fun Unit!126731 () Unit!126616)

(assert (=> b!4703669 (= lt!1867544 Unit!126731)))

(assert (=> b!4703669 (forall!11417 (_2!30304 (h!58843 (toList!5701 lm!2023))) lambda!210961)))

(declare-fun lt!1867558 () Unit!126616)

(declare-fun Unit!126732 () Unit!126616)

(assert (=> b!4703669 (= lt!1867558 Unit!126732)))

(assert (=> b!4703669 (forall!11417 (toList!5702 lt!1867548) lambda!210961)))

(declare-fun lt!1867546 () Unit!126616)

(declare-fun Unit!126733 () Unit!126616)

(assert (=> b!4703669 (= lt!1867546 Unit!126733)))

(declare-fun lt!1867560 () Unit!126616)

(declare-fun Unit!126734 () Unit!126616)

(assert (=> b!4703669 (= lt!1867560 Unit!126734)))

(declare-fun lt!1867556 () Unit!126616)

(assert (=> b!4703669 (= lt!1867556 (addForallContainsKeyThenBeforeAdding!739 lt!1866920 lt!1867549 (_1!30303 (h!58842 (_2!30304 (h!58843 (toList!5701 lm!2023))))) (_2!30303 (h!58842 (_2!30304 (h!58843 (toList!5701 lm!2023)))))))))

(assert (=> b!4703669 (forall!11417 (toList!5702 lt!1866920) lambda!210961)))

(declare-fun lt!1867557 () Unit!126616)

(assert (=> b!4703669 (= lt!1867557 lt!1867556)))

(assert (=> b!4703669 (forall!11417 (toList!5702 lt!1866920) lambda!210961)))

(declare-fun lt!1867553 () Unit!126616)

(declare-fun Unit!126735 () Unit!126616)

(assert (=> b!4703669 (= lt!1867553 Unit!126735)))

(declare-fun res!1986369 () Bool)

(assert (=> b!4703669 (= res!1986369 call!328857)))

(declare-fun e!2934101 () Bool)

(assert (=> b!4703669 (=> (not res!1986369) (not e!2934101))))

(assert (=> b!4703669 e!2934101))

(declare-fun lt!1867563 () Unit!126616)

(declare-fun Unit!126736 () Unit!126616)

(assert (=> b!4703669 (= lt!1867563 Unit!126736)))

(declare-fun b!4703670 () Bool)

(assert (=> b!4703670 (= e!2934101 (forall!11417 (toList!5702 lt!1866920) lambda!210961))))

(declare-fun bm!328851 () Bool)

(assert (=> bm!328851 (= call!328855 (forall!11417 (toList!5702 lt!1866920) (ite c!803960 lambda!210959 lambda!210960)))))

(declare-fun bm!328852 () Bool)

(assert (=> bm!328852 (= call!328856 (lemmaContainsAllItsOwnKeys!740 lt!1866920))))

(assert (=> b!4703671 (= e!2934102 lt!1866920)))

(declare-fun lt!1867561 () Unit!126616)

(assert (=> b!4703671 (= lt!1867561 call!328856)))

(assert (=> b!4703671 call!328857))

(declare-fun lt!1867562 () Unit!126616)

(assert (=> b!4703671 (= lt!1867562 lt!1867561)))

(assert (=> b!4703671 call!328855))

(declare-fun lt!1867559 () Unit!126616)

(declare-fun Unit!126737 () Unit!126616)

(assert (=> b!4703671 (= lt!1867559 Unit!126737)))

(declare-fun b!4703668 () Bool)

(declare-fun res!1986370 () Bool)

(assert (=> b!4703668 (=> (not res!1986370) (not e!2934103))))

(assert (=> b!4703668 (= res!1986370 (forall!11417 (toList!5702 lt!1866920) lambda!210962))))

(assert (=> d!1496523 e!2934103))

(declare-fun res!1986368 () Bool)

(assert (=> d!1496523 (=> (not res!1986368) (not e!2934103))))

(assert (=> d!1496523 (= res!1986368 (forall!11417 (_2!30304 (h!58843 (toList!5701 lm!2023))) lambda!210962))))

(assert (=> d!1496523 (= lt!1867550 e!2934102)))

(assert (=> d!1496523 (= c!803960 ((_ is Nil!52555) (_2!30304 (h!58843 (toList!5701 lm!2023)))))))

(assert (=> d!1496523 (noDuplicateKeys!1906 (_2!30304 (h!58843 (toList!5701 lm!2023))))))

(assert (=> d!1496523 (= (addToMapMapFromBucket!1338 (_2!30304 (h!58843 (toList!5701 lm!2023))) lt!1866920) lt!1867550)))

(assert (= (and d!1496523 c!803960) b!4703671))

(assert (= (and d!1496523 (not c!803960)) b!4703669))

(assert (= (and b!4703669 res!1986369) b!4703670))

(assert (= (or b!4703671 b!4703669) bm!328852))

(assert (= (or b!4703671 b!4703669) bm!328851))

(assert (= (or b!4703671 b!4703669) bm!328850))

(assert (= (and d!1496523 res!1986368) b!4703668))

(assert (= (and b!4703668 res!1986370) b!4703667))

(declare-fun m!5622555 () Bool)

(assert (=> b!4703667 m!5622555))

(assert (=> bm!328852 m!5621823))

(declare-fun m!5622557 () Bool)

(assert (=> d!1496523 m!5622557))

(declare-fun m!5622559 () Bool)

(assert (=> d!1496523 m!5622559))

(declare-fun m!5622561 () Bool)

(assert (=> b!4703668 m!5622561))

(declare-fun m!5622563 () Bool)

(assert (=> bm!328850 m!5622563))

(declare-fun m!5622565 () Bool)

(assert (=> b!4703669 m!5622565))

(declare-fun m!5622567 () Bool)

(assert (=> b!4703669 m!5622567))

(declare-fun m!5622569 () Bool)

(assert (=> b!4703669 m!5622569))

(declare-fun m!5622571 () Bool)

(assert (=> b!4703669 m!5622571))

(assert (=> b!4703669 m!5622569))

(declare-fun m!5622573 () Bool)

(assert (=> b!4703669 m!5622573))

(declare-fun m!5622575 () Bool)

(assert (=> b!4703669 m!5622575))

(declare-fun m!5622577 () Bool)

(assert (=> b!4703669 m!5622577))

(declare-fun m!5622579 () Bool)

(assert (=> b!4703669 m!5622579))

(declare-fun m!5622581 () Bool)

(assert (=> b!4703669 m!5622581))

(assert (=> b!4703669 m!5622565))

(assert (=> b!4703669 m!5622579))

(declare-fun m!5622583 () Bool)

(assert (=> b!4703669 m!5622583))

(declare-fun m!5622585 () Bool)

(assert (=> bm!328851 m!5622585))

(assert (=> b!4703670 m!5622569))

(assert (=> b!4703213 d!1496523))

(declare-fun bs!1097372 () Bool)

(declare-fun d!1496525 () Bool)

(assert (= bs!1097372 (and d!1496525 d!1496453)))

(declare-fun lambda!210963 () Int)

(assert (=> bs!1097372 (= lambda!210963 lambda!210944)))

(declare-fun bs!1097373 () Bool)

(assert (= bs!1097373 (and d!1496525 d!1496475)))

(assert (=> bs!1097373 (= lambda!210963 lambda!210953)))

(declare-fun bs!1097374 () Bool)

(assert (= bs!1097374 (and d!1496525 d!1496427)))

(assert (=> bs!1097374 (= lambda!210963 lambda!210934)))

(declare-fun bs!1097375 () Bool)

(assert (= bs!1097375 (and d!1496525 d!1496263)))

(assert (=> bs!1097375 (= lambda!210963 lambda!210830)))

(declare-fun bs!1097376 () Bool)

(assert (= bs!1097376 (and d!1496525 d!1496459)))

(assert (=> bs!1097376 (= lambda!210963 lambda!210946)))

(declare-fun bs!1097377 () Bool)

(assert (= bs!1097377 (and d!1496525 d!1496255)))

(assert (=> bs!1097377 (= lambda!210963 lambda!210807)))

(declare-fun bs!1097378 () Bool)

(assert (= bs!1097378 (and d!1496525 d!1496481)))

(assert (=> bs!1097378 (= lambda!210963 lambda!210954)))

(declare-fun bs!1097379 () Bool)

(assert (= bs!1097379 (and d!1496525 d!1496473)))

(assert (=> bs!1097379 (= lambda!210963 lambda!210950)))

(declare-fun bs!1097380 () Bool)

(assert (= bs!1097380 (and d!1496525 d!1496445)))

(assert (=> bs!1097380 (= lambda!210963 lambda!210942)))

(declare-fun bs!1097381 () Bool)

(assert (= bs!1097381 (and d!1496525 d!1496231)))

(assert (=> bs!1097381 (not (= lambda!210963 lambda!210804))))

(declare-fun bs!1097382 () Bool)

(assert (= bs!1097382 (and d!1496525 d!1496433)))

(assert (=> bs!1097382 (= lambda!210963 lambda!210935)))

(declare-fun bs!1097383 () Bool)

(assert (= bs!1097383 (and d!1496525 d!1496385)))

(assert (=> bs!1097383 (= lambda!210963 lambda!210915)))

(declare-fun bs!1097384 () Bool)

(assert (= bs!1097384 (and d!1496525 start!477268)))

(assert (=> bs!1097384 (= lambda!210963 lambda!210801)))

(declare-fun lt!1867564 () ListMap!5065)

(assert (=> d!1496525 (invariantList!1452 (toList!5702 lt!1867564))))

(declare-fun e!2934104 () ListMap!5065)

(assert (=> d!1496525 (= lt!1867564 e!2934104)))

(declare-fun c!803961 () Bool)

(assert (=> d!1496525 (= c!803961 ((_ is Cons!52556) (t!359898 (toList!5701 lm!2023))))))

(assert (=> d!1496525 (forall!11415 (t!359898 (toList!5701 lm!2023)) lambda!210963)))

(assert (=> d!1496525 (= (extractMap!1932 (t!359898 (toList!5701 lm!2023))) lt!1867564)))

(declare-fun b!4703672 () Bool)

(assert (=> b!4703672 (= e!2934104 (addToMapMapFromBucket!1338 (_2!30304 (h!58843 (t!359898 (toList!5701 lm!2023)))) (extractMap!1932 (t!359898 (t!359898 (toList!5701 lm!2023))))))))

(declare-fun b!4703673 () Bool)

(assert (=> b!4703673 (= e!2934104 (ListMap!5066 Nil!52555))))

(assert (= (and d!1496525 c!803961) b!4703672))

(assert (= (and d!1496525 (not c!803961)) b!4703673))

(declare-fun m!5622587 () Bool)

(assert (=> d!1496525 m!5622587))

(declare-fun m!5622589 () Bool)

(assert (=> d!1496525 m!5622589))

(declare-fun m!5622591 () Bool)

(assert (=> b!4703672 m!5622591))

(assert (=> b!4703672 m!5622591))

(declare-fun m!5622593 () Bool)

(assert (=> b!4703672 m!5622593))

(assert (=> b!4703213 d!1496525))

(declare-fun d!1496527 () Bool)

(assert (=> d!1496527 (= (tail!8745 lm!2023) (ListLongMap!4232 (tail!8743 (toList!5701 lm!2023))))))

(declare-fun bs!1097385 () Bool)

(assert (= bs!1097385 d!1496527))

(declare-fun m!5622595 () Bool)

(assert (=> bs!1097385 m!5622595))

(assert (=> b!4703213 d!1496527))

(declare-fun d!1496529 () Bool)

(assert (=> d!1496529 (= (eq!1065 lt!1866941 lt!1866946) (= (content!9287 (toList!5702 lt!1866941)) (content!9287 (toList!5702 lt!1866946))))))

(declare-fun bs!1097386 () Bool)

(assert (= bs!1097386 d!1496529))

(declare-fun m!5622597 () Bool)

(assert (=> bs!1097386 m!5622597))

(assert (=> bs!1097386 m!5621617))

(assert (=> b!4703214 d!1496529))

(declare-fun d!1496531 () Bool)

(assert (=> d!1496531 (= (eq!1065 lt!1866923 lt!1866928) (= (content!9287 (toList!5702 lt!1866923)) (content!9287 (toList!5702 lt!1866928))))))

(declare-fun bs!1097387 () Bool)

(assert (= bs!1097387 d!1496531))

(assert (=> bs!1097387 m!5622453))

(declare-fun m!5622599 () Bool)

(assert (=> bs!1097387 m!5622599))

(assert (=> b!4703203 d!1496531))

(declare-fun d!1496533 () Bool)

(assert (=> d!1496533 (= (eq!1065 lt!1866937 lt!1866928) (= (content!9287 (toList!5702 lt!1866937)) (content!9287 (toList!5702 lt!1866928))))))

(declare-fun bs!1097388 () Bool)

(assert (= bs!1097388 d!1496533))

(assert (=> bs!1097388 m!5622451))

(assert (=> bs!1097388 m!5622599))

(assert (=> b!4703203 d!1496533))

(declare-fun d!1496535 () Bool)

(declare-fun e!2934105 () Bool)

(assert (=> d!1496535 e!2934105))

(declare-fun res!1986371 () Bool)

(assert (=> d!1496535 (=> (not res!1986371) (not e!2934105))))

(declare-fun lt!1867565 () ListMap!5065)

(assert (=> d!1496535 (= res!1986371 (not (contains!15850 lt!1867565 key!4653)))))

(assert (=> d!1496535 (= lt!1867565 (ListMap!5066 (removePresrvNoDuplicatedKeys!373 (toList!5702 lt!1866946) key!4653)))))

(assert (=> d!1496535 (= (-!710 lt!1866946 key!4653) lt!1867565)))

(declare-fun b!4703674 () Bool)

(assert (=> b!4703674 (= e!2934105 (= ((_ map and) (content!9288 (keys!18807 lt!1866946)) ((_ map not) (store ((as const (Array K!13915 Bool)) false) key!4653 true))) (content!9288 (keys!18807 lt!1867565))))))

(assert (= (and d!1496535 res!1986371) b!4703674))

(declare-fun m!5622601 () Bool)

(assert (=> d!1496535 m!5622601))

(declare-fun m!5622603 () Bool)

(assert (=> d!1496535 m!5622603))

(declare-fun m!5622605 () Bool)

(assert (=> b!4703674 m!5622605))

(declare-fun m!5622607 () Bool)

(assert (=> b!4703674 m!5622607))

(assert (=> b!4703674 m!5622607))

(declare-fun m!5622609 () Bool)

(assert (=> b!4703674 m!5622609))

(assert (=> b!4703674 m!5622605))

(declare-fun m!5622611 () Bool)

(assert (=> b!4703674 m!5622611))

(assert (=> b!4703674 m!5622395))

(assert (=> b!4703203 d!1496535))

(declare-fun d!1496537 () Bool)

(assert (=> d!1496537 (eq!1065 (-!710 lt!1866941 key!4653) (-!710 lt!1866946 key!4653))))

(declare-fun lt!1867568 () Unit!126616)

(declare-fun choose!32975 (ListMap!5065 ListMap!5065 K!13915) Unit!126616)

(assert (=> d!1496537 (= lt!1867568 (choose!32975 lt!1866941 lt!1866946 key!4653))))

(assert (=> d!1496537 (eq!1065 lt!1866941 lt!1866946)))

(assert (=> d!1496537 (= (lemmaRemovePreservesEq!92 lt!1866941 lt!1866946 key!4653) lt!1867568)))

(declare-fun bs!1097389 () Bool)

(assert (= bs!1097389 d!1496537))

(assert (=> bs!1097389 m!5621363))

(assert (=> bs!1097389 m!5621359))

(assert (=> bs!1097389 m!5621273))

(assert (=> bs!1097389 m!5621359))

(declare-fun m!5622613 () Bool)

(assert (=> bs!1097389 m!5622613))

(assert (=> bs!1097389 m!5621273))

(declare-fun m!5622615 () Bool)

(assert (=> bs!1097389 m!5622615))

(assert (=> b!4703203 d!1496537))

(declare-fun e!2934108 () Bool)

(declare-fun b!4703679 () Bool)

(declare-fun tp!1346818 () Bool)

(assert (=> b!4703679 (= e!2934108 (and tp_is_empty!30917 tp_is_empty!30919 tp!1346818))))

(assert (=> b!4703221 (= tp!1346805 e!2934108)))

(assert (= (and b!4703221 ((_ is Cons!52555) (t!359897 oldBucket!34))) b!4703679))

(declare-fun b!4703680 () Bool)

(declare-fun tp!1346819 () Bool)

(declare-fun e!2934109 () Bool)

(assert (=> b!4703680 (= e!2934109 (and tp_is_empty!30917 tp_is_empty!30919 tp!1346819))))

(assert (=> b!4703206 (= tp!1346803 e!2934109)))

(assert (= (and b!4703206 ((_ is Cons!52555) (t!359897 newBucket!218))) b!4703680))

(declare-fun b!4703685 () Bool)

(declare-fun e!2934112 () Bool)

(declare-fun tp!1346824 () Bool)

(declare-fun tp!1346825 () Bool)

(assert (=> b!4703685 (= e!2934112 (and tp!1346824 tp!1346825))))

(assert (=> b!4703208 (= tp!1346804 e!2934112)))

(assert (= (and b!4703208 ((_ is Cons!52556) (toList!5701 lm!2023))) b!4703685))

(declare-fun b_lambda!177465 () Bool)

(assert (= b_lambda!177455 (or start!477268 b_lambda!177465)))

(declare-fun bs!1097390 () Bool)

(declare-fun d!1496539 () Bool)

(assert (= bs!1097390 (and d!1496539 start!477268)))

(assert (=> bs!1097390 (= (dynLambda!21755 lambda!210801 lt!1866936) (noDuplicateKeys!1906 (_2!30304 lt!1866936)))))

(declare-fun m!5622617 () Bool)

(assert (=> bs!1097390 m!5622617))

(assert (=> d!1496309 d!1496539))

(declare-fun b_lambda!177467 () Bool)

(assert (= b_lambda!177463 (or start!477268 b_lambda!177467)))

(declare-fun bs!1097391 () Bool)

(declare-fun d!1496541 () Bool)

(assert (= bs!1097391 (and d!1496541 start!477268)))

(assert (=> bs!1097391 (= (dynLambda!21755 lambda!210801 (h!58843 (toList!5701 lm!2023))) (noDuplicateKeys!1906 (_2!30304 (h!58843 (toList!5701 lm!2023)))))))

(assert (=> bs!1097391 m!5622559))

(assert (=> b!4703665 d!1496541))

(check-sat (not b!4703561) (not d!1496511) (not d!1496309) (not b!4703639) (not b!4703241) (not b!4703370) (not bm!328838) (not b!4703592) (not d!1496505) (not d!1496537) (not b!4703239) (not d!1496421) (not d!1496259) (not d!1496313) (not b!4703623) (not b!4703505) (not d!1496307) (not b!4703562) (not b!4703657) (not d!1496499) (not d!1496449) (not d!1496445) (not d!1496495) (not d!1496455) (not bm!328840) (not d!1496513) (not b!4703670) (not b!4703559) (not b!4703353) (not b!4703464) (not b!4703605) (not d!1496535) (not b!4703549) (not d!1496431) (not b!4703527) (not b!4703467) (not b!4703541) (not bs!1097390) (not bm!328839) (not b!4703655) (not bm!328831) (not d!1496321) (not bm!328832) (not b!4703498) (not d!1496523) (not b!4703393) (not b!4703540) (not d!1496385) (not d!1496403) (not b_lambda!177467) (not b!4703643) (not d!1496461) (not b!4703500) (not d!1496433) (not bm!328837) tp_is_empty!30917 (not d!1496399) (not b!4703669) (not d!1496533) (not d!1496529) (not d!1496509) (not b!4703674) (not b!4703394) (not bm!328830) (not b!4703405) (not d!1496315) (not d!1496427) (not bm!328836) (not bm!328845) (not b!4703680) (not bm!328823) (not b!4703528) (not d!1496459) (not d!1496411) (not d!1496507) (not b!4703668) (not d!1496373) (not b!4703385) (not d!1496517) (not bm!328850) (not b!4703660) (not b!4703650) (not b!4703636) (not d!1496515) (not b!4703679) (not b!4703519) (not b!4703344) (not bm!328852) (not b!4703672) (not d!1496231) (not d!1496521) (not d!1496497) (not d!1496463) (not b!4703501) (not bm!328851) (not b!4703607) (not b!4703531) (not b!4703379) (not b!4703465) (not b!4703589) (not b!4703597) (not b!4703372) (not d!1496483) (not d!1496493) (not b!4703542) (not d!1496525) (not d!1496263) (not bm!328819) (not d!1496409) (not b!4703666) (not b!4703659) (not d!1496489) (not b!4703503) (not b!4703594) (not b!4703529) (not b!4703656) (not d!1496503) (not b!4703345) (not bs!1097391) (not b!4703229) (not d!1496501) (not b!4703543) tp_is_empty!30919 (not bm!328841) (not b!4703388) (not d!1496305) (not b!4703526) (not b!4703499) (not d!1496311) (not d!1496295) (not d!1496425) (not b!4703548) (not b!4703685) (not d!1496435) (not b!4703547) (not d!1496453) (not d!1496401) (not b!4703343) (not d!1496527) (not b!4703466) (not b!4703622) (not b!4703658) (not b!4703228) (not d!1496297) (not b!4703593) (not d!1496301) (not d!1496481) (not b!4703640) (not b_lambda!177465) (not b!4703560) (not d!1496491) (not bm!328818) (not d!1496239) (not bm!328820) (not d!1496473) (not b!4703544) (not b!4703647) (not b!4703373) (not b!4703599) (not b!4703545) (not d!1496423) (not b!4703667) (not b!4703530) (not b!4703502) (not d!1496531) (not b!4703595) (not b!4703649) (not b!4703346) (not b!4703376) (not d!1496475) (not b!4703638) (not b!4703596) (not d!1496417) (not d!1496255) (not b!4703375))
(check-sat)
