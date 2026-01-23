; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!476136 () Bool)

(assert start!476136)

(declare-fun b!4697937 () Bool)

(declare-fun res!1982900 () Bool)

(declare-fun e!2930646 () Bool)

(assert (=> b!4697937 (=> (not res!1982900) (not e!2930646))))

(declare-datatypes ((Hashable!6255 0))(
  ( (HashableExt!6254 (__x!31958 Int)) )
))
(declare-fun hashF!1323 () Hashable!6255)

(declare-datatypes ((K!13865 0))(
  ( (K!13866 (val!19363 Int)) )
))
(declare-datatypes ((V!14111 0))(
  ( (V!14112 (val!19364 Int)) )
))
(declare-datatypes ((tuple2!53938 0))(
  ( (tuple2!53939 (_1!30263 K!13865) (_2!30263 V!14111)) )
))
(declare-datatypes ((List!52623 0))(
  ( (Nil!52499) (Cons!52499 (h!58770 tuple2!53938) (t!359825 List!52623)) )
))
(declare-fun oldBucket!34 () List!52623)

(declare-fun hash!405 () (_ BitVec 64))

(declare-fun allKeysSameHash!1712 (List!52623 (_ BitVec 64) Hashable!6255) Bool)

(assert (=> b!4697937 (= res!1982900 (allKeysSameHash!1712 oldBucket!34 hash!405 hashF!1323))))

(declare-fun res!1982910 () Bool)

(assert (=> start!476136 (=> (not res!1982910) (not e!2930646))))

(declare-datatypes ((tuple2!53940 0))(
  ( (tuple2!53941 (_1!30264 (_ BitVec 64)) (_2!30264 List!52623)) )
))
(declare-datatypes ((List!52624 0))(
  ( (Nil!52500) (Cons!52500 (h!58771 tuple2!53940) (t!359826 List!52624)) )
))
(declare-datatypes ((ListLongMap!4191 0))(
  ( (ListLongMap!4192 (toList!5661 List!52624)) )
))
(declare-fun lm!2023 () ListLongMap!4191)

(declare-fun lambda!209381 () Int)

(declare-fun forall!11379 (List!52624 Int) Bool)

(assert (=> start!476136 (= res!1982910 (forall!11379 (toList!5661 lm!2023) lambda!209381))))

(assert (=> start!476136 e!2930646))

(declare-fun e!2930647 () Bool)

(declare-fun inv!67739 (ListLongMap!4191) Bool)

(assert (=> start!476136 (and (inv!67739 lm!2023) e!2930647)))

(declare-fun tp_is_empty!30837 () Bool)

(assert (=> start!476136 tp_is_empty!30837))

(declare-fun e!2930650 () Bool)

(assert (=> start!476136 e!2930650))

(assert (=> start!476136 true))

(declare-fun e!2930642 () Bool)

(assert (=> start!476136 e!2930642))

(declare-fun b!4697938 () Bool)

(declare-fun tp_is_empty!30839 () Bool)

(declare-fun tp!1346464 () Bool)

(assert (=> b!4697938 (= e!2930650 (and tp_is_empty!30837 tp_is_empty!30839 tp!1346464))))

(declare-fun b!4697939 () Bool)

(declare-fun res!1982903 () Bool)

(declare-fun e!2930651 () Bool)

(assert (=> b!4697939 (=> (not res!1982903) (not e!2930651))))

(get-info :version)

(assert (=> b!4697939 (= res!1982903 ((_ is Cons!52500) (toList!5661 lm!2023)))))

(declare-fun b!4697940 () Bool)

(declare-fun res!1982907 () Bool)

(declare-fun e!2930648 () Bool)

(assert (=> b!4697940 (=> res!1982907 e!2930648)))

(declare-datatypes ((ListMap!5025 0))(
  ( (ListMap!5026 (toList!5662 List!52623)) )
))
(declare-fun lt!1859833 () ListMap!5025)

(declare-fun lt!1859835 () ListMap!5025)

(declare-fun eq!1045 (ListMap!5025 ListMap!5025) Bool)

(assert (=> b!4697940 (= res!1982907 (not (eq!1045 lt!1859833 lt!1859835)))))

(declare-fun b!4697941 () Bool)

(declare-fun res!1982896 () Bool)

(assert (=> b!4697941 (=> (not res!1982896) (not e!2930646))))

(declare-fun key!4653 () K!13865)

(declare-fun newBucket!218 () List!52623)

(declare-fun removePairForKey!1481 (List!52623 K!13865) List!52623)

(assert (=> b!4697941 (= res!1982896 (= (removePairForKey!1481 oldBucket!34 key!4653) newBucket!218))))

(declare-fun b!4697942 () Bool)

(declare-fun e!2930645 () Bool)

(assert (=> b!4697942 (= e!2930645 e!2930648)))

(declare-fun res!1982911 () Bool)

(assert (=> b!4697942 (=> res!1982911 e!2930648)))

(declare-fun lt!1859845 () ListMap!5025)

(declare-fun lt!1859844 () ListMap!5025)

(assert (=> b!4697942 (= res!1982911 (not (= lt!1859845 lt!1859844)))))

(declare-fun lt!1859822 () ListMap!5025)

(declare-fun +!2170 (ListMap!5025 tuple2!53938) ListMap!5025)

(assert (=> b!4697942 (= lt!1859844 (+!2170 lt!1859822 (h!58770 oldBucket!34)))))

(declare-fun -!690 (ListMap!5025 K!13865) ListMap!5025)

(assert (=> b!4697942 (= lt!1859845 (-!690 lt!1859833 key!4653))))

(declare-fun lt!1859827 () ListMap!5025)

(assert (=> b!4697942 (= lt!1859833 (+!2170 lt!1859827 (h!58770 oldBucket!34)))))

(assert (=> b!4697942 (= (-!690 (+!2170 lt!1859827 (h!58770 oldBucket!34)) key!4653) (+!2170 lt!1859822 (h!58770 oldBucket!34)))))

(declare-datatypes ((Unit!125616 0))(
  ( (Unit!125617) )
))
(declare-fun lt!1859849 () Unit!125616)

(declare-fun addRemoveCommutativeForDiffKeys!91 (ListMap!5025 K!13865 V!14111 K!13865) Unit!125616)

(assert (=> b!4697942 (= lt!1859849 (addRemoveCommutativeForDiffKeys!91 lt!1859827 (_1!30263 (h!58770 oldBucket!34)) (_2!30263 (h!58770 oldBucket!34)) key!4653))))

(declare-fun b!4697943 () Bool)

(declare-fun res!1982902 () Bool)

(declare-fun e!2930649 () Bool)

(assert (=> b!4697943 (=> (not res!1982902) (not e!2930649))))

(declare-fun allKeysSameHashInMap!1800 (ListLongMap!4191 Hashable!6255) Bool)

(assert (=> b!4697943 (= res!1982902 (allKeysSameHashInMap!1800 lm!2023 hashF!1323))))

(declare-fun b!4697944 () Bool)

(declare-fun tp!1346463 () Bool)

(assert (=> b!4697944 (= e!2930642 (and tp_is_empty!30837 tp_is_empty!30839 tp!1346463))))

(declare-fun b!4697945 () Bool)

(declare-fun e!2930652 () Bool)

(assert (=> b!4697945 (= e!2930651 (not e!2930652))))

(declare-fun res!1982898 () Bool)

(assert (=> b!4697945 (=> res!1982898 e!2930652)))

(assert (=> b!4697945 (= res!1982898 (or (and ((_ is Cons!52499) oldBucket!34) (= (_1!30263 (h!58770 oldBucket!34)) key!4653)) (not ((_ is Cons!52499) oldBucket!34)) (= (_1!30263 (h!58770 oldBucket!34)) key!4653)))))

(declare-fun lt!1859823 () ListMap!5025)

(declare-fun lt!1859824 () ListMap!5025)

(declare-fun addToMapMapFromBucket!1318 (List!52623 ListMap!5025) ListMap!5025)

(assert (=> b!4697945 (= lt!1859823 (addToMapMapFromBucket!1318 (_2!30264 (h!58771 (toList!5661 lm!2023))) lt!1859824))))

(declare-fun extractMap!1912 (List!52624) ListMap!5025)

(assert (=> b!4697945 (= lt!1859824 (extractMap!1912 (t!359826 (toList!5661 lm!2023))))))

(declare-fun tail!8683 (ListLongMap!4191) ListLongMap!4191)

(assert (=> b!4697945 (= (t!359826 (toList!5661 lm!2023)) (toList!5661 (tail!8683 lm!2023)))))

(declare-fun b!4697946 () Bool)

(declare-fun e!2930653 () Bool)

(assert (=> b!4697946 (= e!2930652 e!2930653)))

(declare-fun res!1982915 () Bool)

(assert (=> b!4697946 (=> res!1982915 e!2930653)))

(declare-fun containsKey!3137 (List!52623 K!13865) Bool)

(assert (=> b!4697946 (= res!1982915 (not (containsKey!3137 (t!359825 oldBucket!34) key!4653)))))

(assert (=> b!4697946 (containsKey!3137 oldBucket!34 key!4653)))

(declare-fun lt!1859825 () Unit!125616)

(declare-fun lemmaGetPairDefinedThenContainsKey!238 (List!52623 K!13865 Hashable!6255) Unit!125616)

(assert (=> b!4697946 (= lt!1859825 (lemmaGetPairDefinedThenContainsKey!238 oldBucket!34 key!4653 hashF!1323))))

(declare-fun lt!1859848 () List!52623)

(declare-datatypes ((Option!12161 0))(
  ( (None!12160) (Some!12160 (v!46627 tuple2!53938)) )
))
(declare-fun isDefined!9416 (Option!12161) Bool)

(declare-fun getPair!490 (List!52623 K!13865) Option!12161)

(assert (=> b!4697946 (isDefined!9416 (getPair!490 lt!1859848 key!4653))))

(declare-fun lt!1859851 () Unit!125616)

(declare-fun lt!1859830 () tuple2!53940)

(declare-fun forallContained!3486 (List!52624 Int tuple2!53940) Unit!125616)

(assert (=> b!4697946 (= lt!1859851 (forallContained!3486 (toList!5661 lm!2023) lambda!209381 lt!1859830))))

(declare-fun contains!15756 (List!52624 tuple2!53940) Bool)

(assert (=> b!4697946 (contains!15756 (toList!5661 lm!2023) lt!1859830)))

(declare-fun lt!1859837 () (_ BitVec 64))

(assert (=> b!4697946 (= lt!1859830 (tuple2!53941 lt!1859837 lt!1859848))))

(declare-fun lt!1859842 () Unit!125616)

(declare-fun lemmaGetValueImpliesTupleContained!295 (ListLongMap!4191 (_ BitVec 64) List!52623) Unit!125616)

(assert (=> b!4697946 (= lt!1859842 (lemmaGetValueImpliesTupleContained!295 lm!2023 lt!1859837 lt!1859848))))

(declare-fun apply!12369 (ListLongMap!4191 (_ BitVec 64)) List!52623)

(assert (=> b!4697946 (= lt!1859848 (apply!12369 lm!2023 lt!1859837))))

(declare-fun contains!15757 (ListLongMap!4191 (_ BitVec 64)) Bool)

(assert (=> b!4697946 (contains!15757 lm!2023 lt!1859837)))

(declare-fun lt!1859843 () Unit!125616)

(declare-fun lemmaInGenMapThenLongMapContainsHash!696 (ListLongMap!4191 K!13865 Hashable!6255) Unit!125616)

(assert (=> b!4697946 (= lt!1859843 (lemmaInGenMapThenLongMapContainsHash!696 lm!2023 key!4653 hashF!1323))))

(declare-fun lt!1859839 () Unit!125616)

(declare-fun lemmaInGenMapThenGetPairDefined!286 (ListLongMap!4191 K!13865 Hashable!6255) Unit!125616)

(assert (=> b!4697946 (= lt!1859839 (lemmaInGenMapThenGetPairDefined!286 lm!2023 key!4653 hashF!1323))))

(declare-fun b!4697947 () Bool)

(declare-fun res!1982897 () Bool)

(declare-fun e!2930644 () Bool)

(assert (=> b!4697947 (=> res!1982897 e!2930644)))

(declare-fun lt!1859850 () List!52623)

(assert (=> b!4697947 (= res!1982897 (not (= (removePairForKey!1481 (t!359825 oldBucket!34) key!4653) lt!1859850)))))

(declare-fun b!4697948 () Bool)

(declare-fun lt!1859854 () List!52624)

(assert (=> b!4697948 (= e!2930648 (forall!11379 lt!1859854 lambda!209381))))

(declare-fun b!4697949 () Bool)

(declare-fun res!1982912 () Bool)

(declare-fun e!2930643 () Bool)

(assert (=> b!4697949 (=> res!1982912 e!2930643)))

(declare-fun lt!1859821 () tuple2!53938)

(assert (=> b!4697949 (= res!1982912 (not (= (h!58770 oldBucket!34) lt!1859821)))))

(declare-fun b!4697950 () Bool)

(declare-fun tp!1346465 () Bool)

(assert (=> b!4697950 (= e!2930647 tp!1346465)))

(declare-fun b!4697951 () Bool)

(declare-fun e!2930654 () Bool)

(assert (=> b!4697951 (= e!2930646 e!2930654)))

(declare-fun res!1982904 () Bool)

(assert (=> b!4697951 (=> (not res!1982904) (not e!2930654))))

(declare-fun contains!15758 (ListMap!5025 K!13865) Bool)

(assert (=> b!4697951 (= res!1982904 (contains!15758 lt!1859823 key!4653))))

(assert (=> b!4697951 (= lt!1859823 (extractMap!1912 (toList!5661 lm!2023)))))

(declare-fun b!4697952 () Bool)

(assert (=> b!4697952 (= e!2930649 e!2930651)))

(declare-fun res!1982899 () Bool)

(assert (=> b!4697952 (=> (not res!1982899) (not e!2930651))))

(declare-fun lt!1859846 () tuple2!53940)

(declare-fun head!10035 (List!52624) tuple2!53940)

(assert (=> b!4697952 (= res!1982899 (= (head!10035 (toList!5661 lm!2023)) lt!1859846))))

(assert (=> b!4697952 (= lt!1859846 (tuple2!53941 hash!405 oldBucket!34))))

(declare-fun b!4697953 () Bool)

(declare-fun res!1982908 () Bool)

(assert (=> b!4697953 (=> res!1982908 e!2930648)))

(assert (=> b!4697953 (= res!1982908 (not (eq!1045 lt!1859845 lt!1859844)))))

(declare-fun b!4697954 () Bool)

(assert (=> b!4697954 (= e!2930643 e!2930645)))

(declare-fun res!1982913 () Bool)

(assert (=> b!4697954 (=> res!1982913 e!2930645)))

(declare-fun lt!1859826 () ListMap!5025)

(assert (=> b!4697954 (= res!1982913 (not (eq!1045 lt!1859826 lt!1859822)))))

(assert (=> b!4697954 (= lt!1859822 (-!690 lt!1859827 key!4653))))

(assert (=> b!4697954 (= lt!1859826 (extractMap!1912 lt!1859854))))

(declare-fun lt!1859831 () tuple2!53940)

(assert (=> b!4697954 (= lt!1859854 (Cons!52500 lt!1859831 (t!359826 (toList!5661 lm!2023))))))

(declare-fun lt!1859841 () tuple2!53940)

(declare-fun lt!1859834 () List!52624)

(assert (=> b!4697954 (eq!1045 (extractMap!1912 (Cons!52500 lt!1859831 lt!1859834)) (-!690 (extractMap!1912 (Cons!52500 lt!1859841 lt!1859834)) key!4653))))

(declare-fun lt!1859829 () List!52624)

(declare-fun tail!8684 (List!52624) List!52624)

(assert (=> b!4697954 (= lt!1859834 (tail!8684 lt!1859829))))

(assert (=> b!4697954 (= lt!1859831 (tuple2!53941 hash!405 lt!1859850))))

(declare-fun lt!1859853 () ListLongMap!4191)

(declare-fun lt!1859840 () Unit!125616)

(declare-fun lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMapOneHashIsHead!60 (ListLongMap!4191 (_ BitVec 64) List!52623 List!52623 K!13865 Hashable!6255) Unit!125616)

(assert (=> b!4697954 (= lt!1859840 (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMapOneHashIsHead!60 lt!1859853 hash!405 (t!359825 oldBucket!34) lt!1859850 key!4653 hashF!1323))))

(declare-fun b!4697955 () Bool)

(assert (=> b!4697955 (= e!2930654 e!2930649)))

(declare-fun res!1982895 () Bool)

(assert (=> b!4697955 (=> (not res!1982895) (not e!2930649))))

(assert (=> b!4697955 (= res!1982895 (= lt!1859837 hash!405))))

(declare-fun hash!4142 (Hashable!6255 K!13865) (_ BitVec 64))

(assert (=> b!4697955 (= lt!1859837 (hash!4142 hashF!1323 key!4653))))

(declare-fun b!4697956 () Bool)

(declare-fun res!1982914 () Bool)

(assert (=> b!4697956 (=> (not res!1982914) (not e!2930646))))

(declare-fun noDuplicateKeys!1886 (List!52623) Bool)

(assert (=> b!4697956 (= res!1982914 (noDuplicateKeys!1886 newBucket!218))))

(declare-fun b!4697957 () Bool)

(declare-fun res!1982894 () Bool)

(assert (=> b!4697957 (=> (not res!1982894) (not e!2930646))))

(assert (=> b!4697957 (= res!1982894 (noDuplicateKeys!1886 oldBucket!34))))

(declare-fun b!4697958 () Bool)

(assert (=> b!4697958 (= e!2930644 e!2930643)))

(declare-fun res!1982905 () Bool)

(assert (=> b!4697958 (=> res!1982905 e!2930643)))

(declare-fun lt!1859852 () ListMap!5025)

(assert (=> b!4697958 (= res!1982905 (not (eq!1045 lt!1859835 (+!2170 lt!1859852 (h!58770 oldBucket!34)))))))

(declare-fun lt!1859828 () List!52623)

(assert (=> b!4697958 (= lt!1859852 (extractMap!1912 (Cons!52500 (tuple2!53941 hash!405 lt!1859828) (t!359826 (toList!5661 lm!2023)))))))

(assert (=> b!4697958 (= lt!1859835 (extractMap!1912 (Cons!52500 lt!1859846 (t!359826 (toList!5661 lm!2023)))))))

(assert (=> b!4697958 (eq!1045 (addToMapMapFromBucket!1318 (Cons!52499 lt!1859821 lt!1859850) lt!1859824) (+!2170 (addToMapMapFromBucket!1318 lt!1859850 lt!1859824) lt!1859821))))

(declare-fun lt!1859838 () Unit!125616)

(declare-fun lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!294 (tuple2!53938 List!52623 ListMap!5025) Unit!125616)

(assert (=> b!4697958 (= lt!1859838 (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!294 lt!1859821 lt!1859850 lt!1859824))))

(declare-fun head!10036 (List!52623) tuple2!53938)

(assert (=> b!4697958 (= lt!1859821 (head!10036 newBucket!218))))

(declare-fun lt!1859832 () tuple2!53938)

(assert (=> b!4697958 (eq!1045 (addToMapMapFromBucket!1318 (Cons!52499 lt!1859832 lt!1859828) lt!1859824) (+!2170 (addToMapMapFromBucket!1318 lt!1859828 lt!1859824) lt!1859832))))

(declare-fun lt!1859847 () Unit!125616)

(assert (=> b!4697958 (= lt!1859847 (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!294 lt!1859832 lt!1859828 lt!1859824))))

(assert (=> b!4697958 (= lt!1859832 (head!10036 oldBucket!34))))

(assert (=> b!4697958 (contains!15758 lt!1859827 key!4653)))

(assert (=> b!4697958 (= lt!1859827 (extractMap!1912 lt!1859829))))

(declare-fun lt!1859836 () Unit!125616)

(declare-fun lemmaListContainsThenExtractedMapContains!478 (ListLongMap!4191 K!13865 Hashable!6255) Unit!125616)

(assert (=> b!4697958 (= lt!1859836 (lemmaListContainsThenExtractedMapContains!478 lt!1859853 key!4653 hashF!1323))))

(assert (=> b!4697958 (= lt!1859853 (ListLongMap!4192 lt!1859829))))

(assert (=> b!4697958 (= lt!1859829 (Cons!52500 lt!1859841 (t!359826 (toList!5661 lm!2023))))))

(assert (=> b!4697958 (= lt!1859841 (tuple2!53941 hash!405 (t!359825 oldBucket!34)))))

(declare-fun b!4697959 () Bool)

(assert (=> b!4697959 (= e!2930653 e!2930644)))

(declare-fun res!1982909 () Bool)

(assert (=> b!4697959 (=> res!1982909 e!2930644)))

(assert (=> b!4697959 (= res!1982909 (not (= (removePairForKey!1481 lt!1859828 key!4653) lt!1859850)))))

(declare-fun tail!8685 (List!52623) List!52623)

(assert (=> b!4697959 (= lt!1859850 (tail!8685 newBucket!218))))

(assert (=> b!4697959 (= lt!1859828 (tail!8685 oldBucket!34))))

(declare-fun b!4697960 () Bool)

(declare-fun res!1982901 () Bool)

(assert (=> b!4697960 (=> res!1982901 e!2930643)))

(assert (=> b!4697960 (= res!1982901 (not (eq!1045 lt!1859835 (+!2170 lt!1859852 lt!1859821))))))

(declare-fun b!4697961 () Bool)

(declare-fun res!1982906 () Bool)

(assert (=> b!4697961 (=> (not res!1982906) (not e!2930649))))

(assert (=> b!4697961 (= res!1982906 (allKeysSameHash!1712 newBucket!218 hash!405 hashF!1323))))

(assert (= (and start!476136 res!1982910) b!4697957))

(assert (= (and b!4697957 res!1982894) b!4697956))

(assert (= (and b!4697956 res!1982914) b!4697941))

(assert (= (and b!4697941 res!1982896) b!4697937))

(assert (= (and b!4697937 res!1982900) b!4697951))

(assert (= (and b!4697951 res!1982904) b!4697955))

(assert (= (and b!4697955 res!1982895) b!4697961))

(assert (= (and b!4697961 res!1982906) b!4697943))

(assert (= (and b!4697943 res!1982902) b!4697952))

(assert (= (and b!4697952 res!1982899) b!4697939))

(assert (= (and b!4697939 res!1982903) b!4697945))

(assert (= (and b!4697945 (not res!1982898)) b!4697946))

(assert (= (and b!4697946 (not res!1982915)) b!4697959))

(assert (= (and b!4697959 (not res!1982909)) b!4697947))

(assert (= (and b!4697947 (not res!1982897)) b!4697958))

(assert (= (and b!4697958 (not res!1982905)) b!4697949))

(assert (= (and b!4697949 (not res!1982912)) b!4697960))

(assert (= (and b!4697960 (not res!1982901)) b!4697954))

(assert (= (and b!4697954 (not res!1982913)) b!4697942))

(assert (= (and b!4697942 (not res!1982911)) b!4697953))

(assert (= (and b!4697953 (not res!1982908)) b!4697940))

(assert (= (and b!4697940 (not res!1982907)) b!4697948))

(assert (= start!476136 b!4697950))

(assert (= (and start!476136 ((_ is Cons!52499) oldBucket!34)) b!4697938))

(assert (= (and start!476136 ((_ is Cons!52499) newBucket!218)) b!4697944))

(declare-fun m!5608921 () Bool)

(assert (=> b!4697953 m!5608921))

(declare-fun m!5608923 () Bool)

(assert (=> b!4697945 m!5608923))

(declare-fun m!5608925 () Bool)

(assert (=> b!4697945 m!5608925))

(declare-fun m!5608927 () Bool)

(assert (=> b!4697945 m!5608927))

(declare-fun m!5608929 () Bool)

(assert (=> b!4697946 m!5608929))

(declare-fun m!5608931 () Bool)

(assert (=> b!4697946 m!5608931))

(declare-fun m!5608933 () Bool)

(assert (=> b!4697946 m!5608933))

(declare-fun m!5608935 () Bool)

(assert (=> b!4697946 m!5608935))

(declare-fun m!5608937 () Bool)

(assert (=> b!4697946 m!5608937))

(declare-fun m!5608939 () Bool)

(assert (=> b!4697946 m!5608939))

(declare-fun m!5608941 () Bool)

(assert (=> b!4697946 m!5608941))

(declare-fun m!5608943 () Bool)

(assert (=> b!4697946 m!5608943))

(assert (=> b!4697946 m!5608929))

(declare-fun m!5608945 () Bool)

(assert (=> b!4697946 m!5608945))

(declare-fun m!5608947 () Bool)

(assert (=> b!4697946 m!5608947))

(declare-fun m!5608949 () Bool)

(assert (=> b!4697946 m!5608949))

(declare-fun m!5608951 () Bool)

(assert (=> b!4697946 m!5608951))

(declare-fun m!5608953 () Bool)

(assert (=> b!4697952 m!5608953))

(declare-fun m!5608955 () Bool)

(assert (=> b!4697957 m!5608955))

(declare-fun m!5608957 () Bool)

(assert (=> b!4697947 m!5608957))

(declare-fun m!5608959 () Bool)

(assert (=> b!4697961 m!5608959))

(declare-fun m!5608961 () Bool)

(assert (=> b!4697940 m!5608961))

(declare-fun m!5608963 () Bool)

(assert (=> b!4697943 m!5608963))

(declare-fun m!5608965 () Bool)

(assert (=> b!4697942 m!5608965))

(declare-fun m!5608967 () Bool)

(assert (=> b!4697942 m!5608967))

(assert (=> b!4697942 m!5608965))

(declare-fun m!5608969 () Bool)

(assert (=> b!4697942 m!5608969))

(declare-fun m!5608971 () Bool)

(assert (=> b!4697942 m!5608971))

(declare-fun m!5608973 () Bool)

(assert (=> b!4697942 m!5608973))

(declare-fun m!5608975 () Bool)

(assert (=> b!4697954 m!5608975))

(declare-fun m!5608977 () Bool)

(assert (=> b!4697954 m!5608977))

(declare-fun m!5608979 () Bool)

(assert (=> b!4697954 m!5608979))

(declare-fun m!5608981 () Bool)

(assert (=> b!4697954 m!5608981))

(declare-fun m!5608983 () Bool)

(assert (=> b!4697954 m!5608983))

(assert (=> b!4697954 m!5608981))

(declare-fun m!5608985 () Bool)

(assert (=> b!4697954 m!5608985))

(assert (=> b!4697954 m!5608983))

(assert (=> b!4697954 m!5608979))

(declare-fun m!5608987 () Bool)

(assert (=> b!4697954 m!5608987))

(declare-fun m!5608989 () Bool)

(assert (=> b!4697954 m!5608989))

(declare-fun m!5608991 () Bool)

(assert (=> b!4697954 m!5608991))

(declare-fun m!5608993 () Bool)

(assert (=> b!4697956 m!5608993))

(declare-fun m!5608995 () Bool)

(assert (=> b!4697958 m!5608995))

(declare-fun m!5608997 () Bool)

(assert (=> b!4697958 m!5608997))

(declare-fun m!5608999 () Bool)

(assert (=> b!4697958 m!5608999))

(declare-fun m!5609001 () Bool)

(assert (=> b!4697958 m!5609001))

(declare-fun m!5609003 () Bool)

(assert (=> b!4697958 m!5609003))

(declare-fun m!5609005 () Bool)

(assert (=> b!4697958 m!5609005))

(declare-fun m!5609007 () Bool)

(assert (=> b!4697958 m!5609007))

(declare-fun m!5609009 () Bool)

(assert (=> b!4697958 m!5609009))

(declare-fun m!5609011 () Bool)

(assert (=> b!4697958 m!5609011))

(declare-fun m!5609013 () Bool)

(assert (=> b!4697958 m!5609013))

(assert (=> b!4697958 m!5609003))

(declare-fun m!5609015 () Bool)

(assert (=> b!4697958 m!5609015))

(declare-fun m!5609017 () Bool)

(assert (=> b!4697958 m!5609017))

(declare-fun m!5609019 () Bool)

(assert (=> b!4697958 m!5609019))

(assert (=> b!4697958 m!5608997))

(declare-fun m!5609021 () Bool)

(assert (=> b!4697958 m!5609021))

(declare-fun m!5609023 () Bool)

(assert (=> b!4697958 m!5609023))

(declare-fun m!5609025 () Bool)

(assert (=> b!4697958 m!5609025))

(assert (=> b!4697958 m!5608999))

(assert (=> b!4697958 m!5609021))

(assert (=> b!4697958 m!5609001))

(assert (=> b!4697958 m!5609005))

(declare-fun m!5609027 () Bool)

(assert (=> b!4697958 m!5609027))

(declare-fun m!5609029 () Bool)

(assert (=> b!4697958 m!5609029))

(assert (=> b!4697958 m!5609013))

(declare-fun m!5609031 () Bool)

(assert (=> b!4697958 m!5609031))

(declare-fun m!5609033 () Bool)

(assert (=> start!476136 m!5609033))

(declare-fun m!5609035 () Bool)

(assert (=> start!476136 m!5609035))

(declare-fun m!5609037 () Bool)

(assert (=> b!4697960 m!5609037))

(assert (=> b!4697960 m!5609037))

(declare-fun m!5609039 () Bool)

(assert (=> b!4697960 m!5609039))

(declare-fun m!5609041 () Bool)

(assert (=> b!4697937 m!5609041))

(declare-fun m!5609043 () Bool)

(assert (=> b!4697955 m!5609043))

(declare-fun m!5609045 () Bool)

(assert (=> b!4697941 m!5609045))

(declare-fun m!5609047 () Bool)

(assert (=> b!4697959 m!5609047))

(declare-fun m!5609049 () Bool)

(assert (=> b!4697959 m!5609049))

(declare-fun m!5609051 () Bool)

(assert (=> b!4697959 m!5609051))

(declare-fun m!5609053 () Bool)

(assert (=> b!4697948 m!5609053))

(declare-fun m!5609055 () Bool)

(assert (=> b!4697951 m!5609055))

(declare-fun m!5609057 () Bool)

(assert (=> b!4697951 m!5609057))

(check-sat (not b!4697953) (not b!4697958) (not b!4697940) (not b!4697960) (not b!4697956) (not b!4697961) (not b!4697937) (not b!4697946) (not start!476136) (not b!4697948) tp_is_empty!30839 tp_is_empty!30837 (not b!4697952) (not b!4697954) (not b!4697938) (not b!4697959) (not b!4697951) (not b!4697941) (not b!4697944) (not b!4697942) (not b!4697945) (not b!4697943) (not b!4697957) (not b!4697947) (not b!4697955) (not b!4697950))
(check-sat)
(get-model)

(declare-fun bs!1092748 () Bool)

(declare-fun d!1493801 () Bool)

(assert (= bs!1092748 (and d!1493801 start!476136)))

(declare-fun lambda!209384 () Int)

(assert (=> bs!1092748 (not (= lambda!209384 lambda!209381))))

(assert (=> d!1493801 true))

(assert (=> d!1493801 (= (allKeysSameHashInMap!1800 lm!2023 hashF!1323) (forall!11379 (toList!5661 lm!2023) lambda!209384))))

(declare-fun bs!1092749 () Bool)

(assert (= bs!1092749 d!1493801))

(declare-fun m!5609059 () Bool)

(assert (=> bs!1092749 m!5609059))

(assert (=> b!4697943 d!1493801))

(declare-fun d!1493803 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!9237 (List!52623) (InoxSet tuple2!53938))

(assert (=> d!1493803 (= (eq!1045 (extractMap!1912 (Cons!52500 lt!1859831 lt!1859834)) (-!690 (extractMap!1912 (Cons!52500 lt!1859841 lt!1859834)) key!4653)) (= (content!9237 (toList!5662 (extractMap!1912 (Cons!52500 lt!1859831 lt!1859834)))) (content!9237 (toList!5662 (-!690 (extractMap!1912 (Cons!52500 lt!1859841 lt!1859834)) key!4653)))))))

(declare-fun bs!1092750 () Bool)

(assert (= bs!1092750 d!1493803))

(declare-fun m!5609061 () Bool)

(assert (=> bs!1092750 m!5609061))

(declare-fun m!5609063 () Bool)

(assert (=> bs!1092750 m!5609063))

(assert (=> b!4697954 d!1493803))

(declare-fun bs!1092758 () Bool)

(declare-fun d!1493805 () Bool)

(assert (= bs!1092758 (and d!1493805 start!476136)))

(declare-fun lambda!209396 () Int)

(assert (=> bs!1092758 (= lambda!209396 lambda!209381)))

(declare-fun bs!1092759 () Bool)

(assert (= bs!1092759 (and d!1493805 d!1493801)))

(assert (=> bs!1092759 (not (= lambda!209396 lambda!209384))))

(declare-fun lt!1859860 () ListMap!5025)

(declare-fun invariantList!1436 (List!52623) Bool)

(assert (=> d!1493805 (invariantList!1436 (toList!5662 lt!1859860))))

(declare-fun e!2930666 () ListMap!5025)

(assert (=> d!1493805 (= lt!1859860 e!2930666)))

(declare-fun c!803103 () Bool)

(assert (=> d!1493805 (= c!803103 ((_ is Cons!52500) (Cons!52500 lt!1859841 lt!1859834)))))

(assert (=> d!1493805 (forall!11379 (Cons!52500 lt!1859841 lt!1859834) lambda!209396)))

(assert (=> d!1493805 (= (extractMap!1912 (Cons!52500 lt!1859841 lt!1859834)) lt!1859860)))

(declare-fun b!4697986 () Bool)

(assert (=> b!4697986 (= e!2930666 (addToMapMapFromBucket!1318 (_2!30264 (h!58771 (Cons!52500 lt!1859841 lt!1859834))) (extractMap!1912 (t!359826 (Cons!52500 lt!1859841 lt!1859834)))))))

(declare-fun b!4697987 () Bool)

(assert (=> b!4697987 (= e!2930666 (ListMap!5026 Nil!52499))))

(assert (= (and d!1493805 c!803103) b!4697986))

(assert (= (and d!1493805 (not c!803103)) b!4697987))

(declare-fun m!5609089 () Bool)

(assert (=> d!1493805 m!5609089))

(declare-fun m!5609091 () Bool)

(assert (=> d!1493805 m!5609091))

(declare-fun m!5609093 () Bool)

(assert (=> b!4697986 m!5609093))

(assert (=> b!4697986 m!5609093))

(declare-fun m!5609095 () Bool)

(assert (=> b!4697986 m!5609095))

(assert (=> b!4697954 d!1493805))

(declare-fun d!1493823 () Bool)

(assert (=> d!1493823 (= (tail!8684 lt!1859829) (t!359826 lt!1859829))))

(assert (=> b!4697954 d!1493823))

(declare-fun bs!1092760 () Bool)

(declare-fun d!1493825 () Bool)

(assert (= bs!1092760 (and d!1493825 start!476136)))

(declare-fun lambda!209397 () Int)

(assert (=> bs!1092760 (= lambda!209397 lambda!209381)))

(declare-fun bs!1092761 () Bool)

(assert (= bs!1092761 (and d!1493825 d!1493801)))

(assert (=> bs!1092761 (not (= lambda!209397 lambda!209384))))

(declare-fun bs!1092762 () Bool)

(assert (= bs!1092762 (and d!1493825 d!1493805)))

(assert (=> bs!1092762 (= lambda!209397 lambda!209396)))

(declare-fun lt!1859861 () ListMap!5025)

(assert (=> d!1493825 (invariantList!1436 (toList!5662 lt!1859861))))

(declare-fun e!2930667 () ListMap!5025)

(assert (=> d!1493825 (= lt!1859861 e!2930667)))

(declare-fun c!803104 () Bool)

(assert (=> d!1493825 (= c!803104 ((_ is Cons!52500) lt!1859854))))

(assert (=> d!1493825 (forall!11379 lt!1859854 lambda!209397)))

(assert (=> d!1493825 (= (extractMap!1912 lt!1859854) lt!1859861)))

(declare-fun b!4697988 () Bool)

(assert (=> b!4697988 (= e!2930667 (addToMapMapFromBucket!1318 (_2!30264 (h!58771 lt!1859854)) (extractMap!1912 (t!359826 lt!1859854))))))

(declare-fun b!4697989 () Bool)

(assert (=> b!4697989 (= e!2930667 (ListMap!5026 Nil!52499))))

(assert (= (and d!1493825 c!803104) b!4697988))

(assert (= (and d!1493825 (not c!803104)) b!4697989))

(declare-fun m!5609097 () Bool)

(assert (=> d!1493825 m!5609097))

(declare-fun m!5609099 () Bool)

(assert (=> d!1493825 m!5609099))

(declare-fun m!5609101 () Bool)

(assert (=> b!4697988 m!5609101))

(assert (=> b!4697988 m!5609101))

(declare-fun m!5609103 () Bool)

(assert (=> b!4697988 m!5609103))

(assert (=> b!4697954 d!1493825))

(declare-fun d!1493827 () Bool)

(assert (=> d!1493827 (= (eq!1045 lt!1859826 lt!1859822) (= (content!9237 (toList!5662 lt!1859826)) (content!9237 (toList!5662 lt!1859822))))))

(declare-fun bs!1092763 () Bool)

(assert (= bs!1092763 d!1493827))

(declare-fun m!5609105 () Bool)

(assert (=> bs!1092763 m!5609105))

(declare-fun m!5609107 () Bool)

(assert (=> bs!1092763 m!5609107))

(assert (=> b!4697954 d!1493827))

(declare-fun bs!1092764 () Bool)

(declare-fun d!1493829 () Bool)

(assert (= bs!1092764 (and d!1493829 start!476136)))

(declare-fun lambda!209398 () Int)

(assert (=> bs!1092764 (= lambda!209398 lambda!209381)))

(declare-fun bs!1092765 () Bool)

(assert (= bs!1092765 (and d!1493829 d!1493801)))

(assert (=> bs!1092765 (not (= lambda!209398 lambda!209384))))

(declare-fun bs!1092767 () Bool)

(assert (= bs!1092767 (and d!1493829 d!1493805)))

(assert (=> bs!1092767 (= lambda!209398 lambda!209396)))

(declare-fun bs!1092768 () Bool)

(assert (= bs!1092768 (and d!1493829 d!1493825)))

(assert (=> bs!1092768 (= lambda!209398 lambda!209397)))

(declare-fun lt!1859865 () ListMap!5025)

(assert (=> d!1493829 (invariantList!1436 (toList!5662 lt!1859865))))

(declare-fun e!2930671 () ListMap!5025)

(assert (=> d!1493829 (= lt!1859865 e!2930671)))

(declare-fun c!803105 () Bool)

(assert (=> d!1493829 (= c!803105 ((_ is Cons!52500) (Cons!52500 lt!1859831 lt!1859834)))))

(assert (=> d!1493829 (forall!11379 (Cons!52500 lt!1859831 lt!1859834) lambda!209398)))

(assert (=> d!1493829 (= (extractMap!1912 (Cons!52500 lt!1859831 lt!1859834)) lt!1859865)))

(declare-fun b!4697993 () Bool)

(assert (=> b!4697993 (= e!2930671 (addToMapMapFromBucket!1318 (_2!30264 (h!58771 (Cons!52500 lt!1859831 lt!1859834))) (extractMap!1912 (t!359826 (Cons!52500 lt!1859831 lt!1859834)))))))

(declare-fun b!4697994 () Bool)

(assert (=> b!4697994 (= e!2930671 (ListMap!5026 Nil!52499))))

(assert (= (and d!1493829 c!803105) b!4697993))

(assert (= (and d!1493829 (not c!803105)) b!4697994))

(declare-fun m!5609139 () Bool)

(assert (=> d!1493829 m!5609139))

(declare-fun m!5609141 () Bool)

(assert (=> d!1493829 m!5609141))

(declare-fun m!5609143 () Bool)

(assert (=> b!4697993 m!5609143))

(assert (=> b!4697993 m!5609143))

(declare-fun m!5609145 () Bool)

(assert (=> b!4697993 m!5609145))

(assert (=> b!4697954 d!1493829))

(declare-fun bs!1092788 () Bool)

(declare-fun d!1493839 () Bool)

(assert (= bs!1092788 (and d!1493839 d!1493801)))

(declare-fun lambda!209407 () Int)

(assert (=> bs!1092788 (not (= lambda!209407 lambda!209384))))

(declare-fun bs!1092789 () Bool)

(assert (= bs!1092789 (and d!1493839 d!1493829)))

(assert (=> bs!1092789 (= lambda!209407 lambda!209398)))

(declare-fun bs!1092790 () Bool)

(assert (= bs!1092790 (and d!1493839 d!1493805)))

(assert (=> bs!1092790 (= lambda!209407 lambda!209396)))

(declare-fun bs!1092791 () Bool)

(assert (= bs!1092791 (and d!1493839 start!476136)))

(assert (=> bs!1092791 (= lambda!209407 lambda!209381)))

(declare-fun bs!1092792 () Bool)

(assert (= bs!1092792 (and d!1493839 d!1493825)))

(assert (=> bs!1092792 (= lambda!209407 lambda!209397)))

(assert (=> d!1493839 (eq!1045 (extractMap!1912 (Cons!52500 (tuple2!53941 hash!405 lt!1859850) (tail!8684 (toList!5661 lt!1859853)))) (-!690 (extractMap!1912 (Cons!52500 (tuple2!53941 hash!405 (t!359825 oldBucket!34)) (tail!8684 (toList!5661 lt!1859853)))) key!4653))))

(declare-fun lt!1859878 () Unit!125616)

(declare-fun choose!32794 (ListLongMap!4191 (_ BitVec 64) List!52623 List!52623 K!13865 Hashable!6255) Unit!125616)

(assert (=> d!1493839 (= lt!1859878 (choose!32794 lt!1859853 hash!405 (t!359825 oldBucket!34) lt!1859850 key!4653 hashF!1323))))

(assert (=> d!1493839 (forall!11379 (toList!5661 lt!1859853) lambda!209407)))

(assert (=> d!1493839 (= (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMapOneHashIsHead!60 lt!1859853 hash!405 (t!359825 oldBucket!34) lt!1859850 key!4653 hashF!1323) lt!1859878)))

(declare-fun bs!1092793 () Bool)

(assert (= bs!1092793 d!1493839))

(declare-fun m!5609195 () Bool)

(assert (=> bs!1092793 m!5609195))

(declare-fun m!5609197 () Bool)

(assert (=> bs!1092793 m!5609197))

(declare-fun m!5609199 () Bool)

(assert (=> bs!1092793 m!5609199))

(declare-fun m!5609201 () Bool)

(assert (=> bs!1092793 m!5609201))

(assert (=> bs!1092793 m!5609197))

(declare-fun m!5609203 () Bool)

(assert (=> bs!1092793 m!5609203))

(assert (=> bs!1092793 m!5609203))

(assert (=> bs!1092793 m!5609199))

(declare-fun m!5609205 () Bool)

(assert (=> bs!1092793 m!5609205))

(declare-fun m!5609207 () Bool)

(assert (=> bs!1092793 m!5609207))

(assert (=> b!4697954 d!1493839))

(declare-fun d!1493853 () Bool)

(declare-fun e!2930709 () Bool)

(assert (=> d!1493853 e!2930709))

(declare-fun res!1982943 () Bool)

(assert (=> d!1493853 (=> (not res!1982943) (not e!2930709))))

(declare-fun lt!1859909 () ListMap!5025)

(assert (=> d!1493853 (= res!1982943 (not (contains!15758 lt!1859909 key!4653)))))

(declare-fun removePresrvNoDuplicatedKeys!357 (List!52623 K!13865) List!52623)

(assert (=> d!1493853 (= lt!1859909 (ListMap!5026 (removePresrvNoDuplicatedKeys!357 (toList!5662 lt!1859827) key!4653)))))

(assert (=> d!1493853 (= (-!690 lt!1859827 key!4653) lt!1859909)))

(declare-fun b!4698051 () Bool)

(declare-datatypes ((List!52626 0))(
  ( (Nil!52502) (Cons!52502 (h!58775 K!13865) (t!359830 List!52626)) )
))
(declare-fun content!9238 (List!52626) (InoxSet K!13865))

(declare-fun keys!18771 (ListMap!5025) List!52626)

(assert (=> b!4698051 (= e!2930709 (= ((_ map and) (content!9238 (keys!18771 lt!1859827)) ((_ map not) (store ((as const (Array K!13865 Bool)) false) key!4653 true))) (content!9238 (keys!18771 lt!1859909))))))

(assert (= (and d!1493853 res!1982943) b!4698051))

(declare-fun m!5609239 () Bool)

(assert (=> d!1493853 m!5609239))

(declare-fun m!5609241 () Bool)

(assert (=> d!1493853 m!5609241))

(declare-fun m!5609243 () Bool)

(assert (=> b!4698051 m!5609243))

(declare-fun m!5609245 () Bool)

(assert (=> b!4698051 m!5609245))

(declare-fun m!5609247 () Bool)

(assert (=> b!4698051 m!5609247))

(declare-fun m!5609249 () Bool)

(assert (=> b!4698051 m!5609249))

(assert (=> b!4698051 m!5609249))

(declare-fun m!5609251 () Bool)

(assert (=> b!4698051 m!5609251))

(assert (=> b!4698051 m!5609243))

(assert (=> b!4697954 d!1493853))

(declare-fun d!1493865 () Bool)

(declare-fun e!2930710 () Bool)

(assert (=> d!1493865 e!2930710))

(declare-fun res!1982944 () Bool)

(assert (=> d!1493865 (=> (not res!1982944) (not e!2930710))))

(declare-fun lt!1859910 () ListMap!5025)

(assert (=> d!1493865 (= res!1982944 (not (contains!15758 lt!1859910 key!4653)))))

(assert (=> d!1493865 (= lt!1859910 (ListMap!5026 (removePresrvNoDuplicatedKeys!357 (toList!5662 (extractMap!1912 (Cons!52500 lt!1859841 lt!1859834))) key!4653)))))

(assert (=> d!1493865 (= (-!690 (extractMap!1912 (Cons!52500 lt!1859841 lt!1859834)) key!4653) lt!1859910)))

(declare-fun b!4698052 () Bool)

(assert (=> b!4698052 (= e!2930710 (= ((_ map and) (content!9238 (keys!18771 (extractMap!1912 (Cons!52500 lt!1859841 lt!1859834)))) ((_ map not) (store ((as const (Array K!13865 Bool)) false) key!4653 true))) (content!9238 (keys!18771 lt!1859910))))))

(assert (= (and d!1493865 res!1982944) b!4698052))

(declare-fun m!5609253 () Bool)

(assert (=> d!1493865 m!5609253))

(declare-fun m!5609255 () Bool)

(assert (=> d!1493865 m!5609255))

(declare-fun m!5609257 () Bool)

(assert (=> b!4698052 m!5609257))

(declare-fun m!5609259 () Bool)

(assert (=> b!4698052 m!5609259))

(assert (=> b!4698052 m!5609247))

(assert (=> b!4698052 m!5608979))

(declare-fun m!5609261 () Bool)

(assert (=> b!4698052 m!5609261))

(assert (=> b!4698052 m!5609261))

(declare-fun m!5609263 () Bool)

(assert (=> b!4698052 m!5609263))

(assert (=> b!4698052 m!5609257))

(assert (=> b!4697954 d!1493865))

(declare-fun d!1493867 () Bool)

(declare-fun e!2930711 () Bool)

(assert (=> d!1493867 e!2930711))

(declare-fun res!1982945 () Bool)

(assert (=> d!1493867 (=> (not res!1982945) (not e!2930711))))

(declare-fun lt!1859911 () ListMap!5025)

(assert (=> d!1493867 (= res!1982945 (not (contains!15758 lt!1859911 key!4653)))))

(assert (=> d!1493867 (= lt!1859911 (ListMap!5026 (removePresrvNoDuplicatedKeys!357 (toList!5662 lt!1859833) key!4653)))))

(assert (=> d!1493867 (= (-!690 lt!1859833 key!4653) lt!1859911)))

(declare-fun b!4698053 () Bool)

(assert (=> b!4698053 (= e!2930711 (= ((_ map and) (content!9238 (keys!18771 lt!1859833)) ((_ map not) (store ((as const (Array K!13865 Bool)) false) key!4653 true))) (content!9238 (keys!18771 lt!1859911))))))

(assert (= (and d!1493867 res!1982945) b!4698053))

(declare-fun m!5609265 () Bool)

(assert (=> d!1493867 m!5609265))

(declare-fun m!5609267 () Bool)

(assert (=> d!1493867 m!5609267))

(declare-fun m!5609269 () Bool)

(assert (=> b!4698053 m!5609269))

(declare-fun m!5609271 () Bool)

(assert (=> b!4698053 m!5609271))

(assert (=> b!4698053 m!5609247))

(declare-fun m!5609273 () Bool)

(assert (=> b!4698053 m!5609273))

(assert (=> b!4698053 m!5609273))

(declare-fun m!5609275 () Bool)

(assert (=> b!4698053 m!5609275))

(assert (=> b!4698053 m!5609269))

(assert (=> b!4697942 d!1493867))

(declare-fun d!1493869 () Bool)

(assert (=> d!1493869 (= (-!690 (+!2170 lt!1859827 (tuple2!53939 (_1!30263 (h!58770 oldBucket!34)) (_2!30263 (h!58770 oldBucket!34)))) key!4653) (+!2170 (-!690 lt!1859827 key!4653) (tuple2!53939 (_1!30263 (h!58770 oldBucket!34)) (_2!30263 (h!58770 oldBucket!34)))))))

(declare-fun lt!1859914 () Unit!125616)

(declare-fun choose!32795 (ListMap!5025 K!13865 V!14111 K!13865) Unit!125616)

(assert (=> d!1493869 (= lt!1859914 (choose!32795 lt!1859827 (_1!30263 (h!58770 oldBucket!34)) (_2!30263 (h!58770 oldBucket!34)) key!4653))))

(assert (=> d!1493869 (not (= (_1!30263 (h!58770 oldBucket!34)) key!4653))))

(assert (=> d!1493869 (= (addRemoveCommutativeForDiffKeys!91 lt!1859827 (_1!30263 (h!58770 oldBucket!34)) (_2!30263 (h!58770 oldBucket!34)) key!4653) lt!1859914)))

(declare-fun bs!1092802 () Bool)

(assert (= bs!1092802 d!1493869))

(declare-fun m!5609277 () Bool)

(assert (=> bs!1092802 m!5609277))

(declare-fun m!5609279 () Bool)

(assert (=> bs!1092802 m!5609279))

(assert (=> bs!1092802 m!5608991))

(assert (=> bs!1092802 m!5608991))

(declare-fun m!5609281 () Bool)

(assert (=> bs!1092802 m!5609281))

(declare-fun m!5609283 () Bool)

(assert (=> bs!1092802 m!5609283))

(assert (=> bs!1092802 m!5609277))

(assert (=> b!4697942 d!1493869))

(declare-fun d!1493871 () Bool)

(declare-fun e!2930712 () Bool)

(assert (=> d!1493871 e!2930712))

(declare-fun res!1982946 () Bool)

(assert (=> d!1493871 (=> (not res!1982946) (not e!2930712))))

(declare-fun lt!1859915 () ListMap!5025)

(assert (=> d!1493871 (= res!1982946 (not (contains!15758 lt!1859915 key!4653)))))

(assert (=> d!1493871 (= lt!1859915 (ListMap!5026 (removePresrvNoDuplicatedKeys!357 (toList!5662 (+!2170 lt!1859827 (h!58770 oldBucket!34))) key!4653)))))

(assert (=> d!1493871 (= (-!690 (+!2170 lt!1859827 (h!58770 oldBucket!34)) key!4653) lt!1859915)))

(declare-fun b!4698054 () Bool)

(assert (=> b!4698054 (= e!2930712 (= ((_ map and) (content!9238 (keys!18771 (+!2170 lt!1859827 (h!58770 oldBucket!34)))) ((_ map not) (store ((as const (Array K!13865 Bool)) false) key!4653 true))) (content!9238 (keys!18771 lt!1859915))))))

(assert (= (and d!1493871 res!1982946) b!4698054))

(declare-fun m!5609285 () Bool)

(assert (=> d!1493871 m!5609285))

(declare-fun m!5609287 () Bool)

(assert (=> d!1493871 m!5609287))

(declare-fun m!5609289 () Bool)

(assert (=> b!4698054 m!5609289))

(declare-fun m!5609291 () Bool)

(assert (=> b!4698054 m!5609291))

(assert (=> b!4698054 m!5609247))

(assert (=> b!4698054 m!5608965))

(declare-fun m!5609293 () Bool)

(assert (=> b!4698054 m!5609293))

(assert (=> b!4698054 m!5609293))

(declare-fun m!5609295 () Bool)

(assert (=> b!4698054 m!5609295))

(assert (=> b!4698054 m!5609289))

(assert (=> b!4697942 d!1493871))

(declare-fun d!1493873 () Bool)

(declare-fun e!2930715 () Bool)

(assert (=> d!1493873 e!2930715))

(declare-fun res!1982951 () Bool)

(assert (=> d!1493873 (=> (not res!1982951) (not e!2930715))))

(declare-fun lt!1859927 () ListMap!5025)

(assert (=> d!1493873 (= res!1982951 (contains!15758 lt!1859927 (_1!30263 (h!58770 oldBucket!34))))))

(declare-fun lt!1859926 () List!52623)

(assert (=> d!1493873 (= lt!1859927 (ListMap!5026 lt!1859926))))

(declare-fun lt!1859924 () Unit!125616)

(declare-fun lt!1859925 () Unit!125616)

(assert (=> d!1493873 (= lt!1859924 lt!1859925)))

(declare-datatypes ((Option!12163 0))(
  ( (None!12162) (Some!12162 (v!46633 V!14111)) )
))
(declare-fun getValueByKey!1831 (List!52623 K!13865) Option!12163)

(assert (=> d!1493873 (= (getValueByKey!1831 lt!1859926 (_1!30263 (h!58770 oldBucket!34))) (Some!12162 (_2!30263 (h!58770 oldBucket!34))))))

(declare-fun lemmaContainsTupThenGetReturnValue!1026 (List!52623 K!13865 V!14111) Unit!125616)

(assert (=> d!1493873 (= lt!1859925 (lemmaContainsTupThenGetReturnValue!1026 lt!1859926 (_1!30263 (h!58770 oldBucket!34)) (_2!30263 (h!58770 oldBucket!34))))))

(declare-fun insertNoDuplicatedKeys!534 (List!52623 K!13865 V!14111) List!52623)

(assert (=> d!1493873 (= lt!1859926 (insertNoDuplicatedKeys!534 (toList!5662 lt!1859827) (_1!30263 (h!58770 oldBucket!34)) (_2!30263 (h!58770 oldBucket!34))))))

(assert (=> d!1493873 (= (+!2170 lt!1859827 (h!58770 oldBucket!34)) lt!1859927)))

(declare-fun b!4698059 () Bool)

(declare-fun res!1982952 () Bool)

(assert (=> b!4698059 (=> (not res!1982952) (not e!2930715))))

(assert (=> b!4698059 (= res!1982952 (= (getValueByKey!1831 (toList!5662 lt!1859927) (_1!30263 (h!58770 oldBucket!34))) (Some!12162 (_2!30263 (h!58770 oldBucket!34)))))))

(declare-fun b!4698060 () Bool)

(declare-fun contains!15761 (List!52623 tuple2!53938) Bool)

(assert (=> b!4698060 (= e!2930715 (contains!15761 (toList!5662 lt!1859927) (h!58770 oldBucket!34)))))

(assert (= (and d!1493873 res!1982951) b!4698059))

(assert (= (and b!4698059 res!1982952) b!4698060))

(declare-fun m!5609297 () Bool)

(assert (=> d!1493873 m!5609297))

(declare-fun m!5609299 () Bool)

(assert (=> d!1493873 m!5609299))

(declare-fun m!5609301 () Bool)

(assert (=> d!1493873 m!5609301))

(declare-fun m!5609303 () Bool)

(assert (=> d!1493873 m!5609303))

(declare-fun m!5609305 () Bool)

(assert (=> b!4698059 m!5609305))

(declare-fun m!5609307 () Bool)

(assert (=> b!4698060 m!5609307))

(assert (=> b!4697942 d!1493873))

(declare-fun d!1493875 () Bool)

(declare-fun e!2930716 () Bool)

(assert (=> d!1493875 e!2930716))

(declare-fun res!1982953 () Bool)

(assert (=> d!1493875 (=> (not res!1982953) (not e!2930716))))

(declare-fun lt!1859931 () ListMap!5025)

(assert (=> d!1493875 (= res!1982953 (contains!15758 lt!1859931 (_1!30263 (h!58770 oldBucket!34))))))

(declare-fun lt!1859930 () List!52623)

(assert (=> d!1493875 (= lt!1859931 (ListMap!5026 lt!1859930))))

(declare-fun lt!1859928 () Unit!125616)

(declare-fun lt!1859929 () Unit!125616)

(assert (=> d!1493875 (= lt!1859928 lt!1859929)))

(assert (=> d!1493875 (= (getValueByKey!1831 lt!1859930 (_1!30263 (h!58770 oldBucket!34))) (Some!12162 (_2!30263 (h!58770 oldBucket!34))))))

(assert (=> d!1493875 (= lt!1859929 (lemmaContainsTupThenGetReturnValue!1026 lt!1859930 (_1!30263 (h!58770 oldBucket!34)) (_2!30263 (h!58770 oldBucket!34))))))

(assert (=> d!1493875 (= lt!1859930 (insertNoDuplicatedKeys!534 (toList!5662 lt!1859822) (_1!30263 (h!58770 oldBucket!34)) (_2!30263 (h!58770 oldBucket!34))))))

(assert (=> d!1493875 (= (+!2170 lt!1859822 (h!58770 oldBucket!34)) lt!1859931)))

(declare-fun b!4698061 () Bool)

(declare-fun res!1982954 () Bool)

(assert (=> b!4698061 (=> (not res!1982954) (not e!2930716))))

(assert (=> b!4698061 (= res!1982954 (= (getValueByKey!1831 (toList!5662 lt!1859931) (_1!30263 (h!58770 oldBucket!34))) (Some!12162 (_2!30263 (h!58770 oldBucket!34)))))))

(declare-fun b!4698062 () Bool)

(assert (=> b!4698062 (= e!2930716 (contains!15761 (toList!5662 lt!1859931) (h!58770 oldBucket!34)))))

(assert (= (and d!1493875 res!1982953) b!4698061))

(assert (= (and b!4698061 res!1982954) b!4698062))

(declare-fun m!5609309 () Bool)

(assert (=> d!1493875 m!5609309))

(declare-fun m!5609311 () Bool)

(assert (=> d!1493875 m!5609311))

(declare-fun m!5609313 () Bool)

(assert (=> d!1493875 m!5609313))

(declare-fun m!5609315 () Bool)

(assert (=> d!1493875 m!5609315))

(declare-fun m!5609317 () Bool)

(assert (=> b!4698061 m!5609317))

(declare-fun m!5609319 () Bool)

(assert (=> b!4698062 m!5609319))

(assert (=> b!4697942 d!1493875))

(declare-fun d!1493877 () Bool)

(assert (=> d!1493877 (= (eq!1045 lt!1859845 lt!1859844) (= (content!9237 (toList!5662 lt!1859845)) (content!9237 (toList!5662 lt!1859844))))))

(declare-fun bs!1092803 () Bool)

(assert (= bs!1092803 d!1493877))

(declare-fun m!5609321 () Bool)

(assert (=> bs!1092803 m!5609321))

(declare-fun m!5609323 () Bool)

(assert (=> bs!1092803 m!5609323))

(assert (=> b!4697953 d!1493877))

(declare-fun b!4698081 () Bool)

(declare-fun e!2930734 () Bool)

(declare-fun e!2930729 () Bool)

(assert (=> b!4698081 (= e!2930734 e!2930729)))

(declare-fun res!1982963 () Bool)

(assert (=> b!4698081 (=> (not res!1982963) (not e!2930729))))

(declare-fun isDefined!9418 (Option!12163) Bool)

(assert (=> b!4698081 (= res!1982963 (isDefined!9418 (getValueByKey!1831 (toList!5662 lt!1859823) key!4653)))))

(declare-fun b!4698082 () Bool)

(declare-fun e!2930731 () Unit!125616)

(declare-fun e!2930732 () Unit!125616)

(assert (=> b!4698082 (= e!2930731 e!2930732)))

(declare-fun c!803133 () Bool)

(declare-fun call!328413 () Bool)

(assert (=> b!4698082 (= c!803133 call!328413)))

(declare-fun b!4698083 () Bool)

(declare-fun lt!1859955 () Unit!125616)

(assert (=> b!4698083 (= e!2930731 lt!1859955)))

(declare-fun lt!1859949 () Unit!125616)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1723 (List!52623 K!13865) Unit!125616)

(assert (=> b!4698083 (= lt!1859949 (lemmaContainsKeyImpliesGetValueByKeyDefined!1723 (toList!5662 lt!1859823) key!4653))))

(assert (=> b!4698083 (isDefined!9418 (getValueByKey!1831 (toList!5662 lt!1859823) key!4653))))

(declare-fun lt!1859954 () Unit!125616)

(assert (=> b!4698083 (= lt!1859954 lt!1859949)))

(declare-fun lemmaInListThenGetKeysListContains!871 (List!52623 K!13865) Unit!125616)

(assert (=> b!4698083 (= lt!1859955 (lemmaInListThenGetKeysListContains!871 (toList!5662 lt!1859823) key!4653))))

(assert (=> b!4698083 call!328413))

(declare-fun b!4698084 () Bool)

(declare-fun contains!15762 (List!52626 K!13865) Bool)

(assert (=> b!4698084 (= e!2930729 (contains!15762 (keys!18771 lt!1859823) key!4653))))

(declare-fun bm!328408 () Bool)

(declare-fun e!2930730 () List!52626)

(assert (=> bm!328408 (= call!328413 (contains!15762 e!2930730 key!4653))))

(declare-fun c!803131 () Bool)

(declare-fun c!803132 () Bool)

(assert (=> bm!328408 (= c!803131 c!803132)))

(declare-fun d!1493879 () Bool)

(assert (=> d!1493879 e!2930734))

(declare-fun res!1982962 () Bool)

(assert (=> d!1493879 (=> res!1982962 e!2930734)))

(declare-fun e!2930733 () Bool)

(assert (=> d!1493879 (= res!1982962 e!2930733)))

(declare-fun res!1982961 () Bool)

(assert (=> d!1493879 (=> (not res!1982961) (not e!2930733))))

(declare-fun lt!1859952 () Bool)

(assert (=> d!1493879 (= res!1982961 (not lt!1859952))))

(declare-fun lt!1859951 () Bool)

(assert (=> d!1493879 (= lt!1859952 lt!1859951)))

(declare-fun lt!1859948 () Unit!125616)

(assert (=> d!1493879 (= lt!1859948 e!2930731)))

(assert (=> d!1493879 (= c!803132 lt!1859951)))

(declare-fun containsKey!3139 (List!52623 K!13865) Bool)

(assert (=> d!1493879 (= lt!1859951 (containsKey!3139 (toList!5662 lt!1859823) key!4653))))

(assert (=> d!1493879 (= (contains!15758 lt!1859823 key!4653) lt!1859952)))

(declare-fun b!4698085 () Bool)

(declare-fun Unit!125632 () Unit!125616)

(assert (=> b!4698085 (= e!2930732 Unit!125632)))

(declare-fun b!4698086 () Bool)

(assert (=> b!4698086 false))

(declare-fun lt!1859953 () Unit!125616)

(declare-fun lt!1859950 () Unit!125616)

(assert (=> b!4698086 (= lt!1859953 lt!1859950)))

(assert (=> b!4698086 (containsKey!3139 (toList!5662 lt!1859823) key!4653)))

(declare-fun lemmaInGetKeysListThenContainsKey!875 (List!52623 K!13865) Unit!125616)

(assert (=> b!4698086 (= lt!1859950 (lemmaInGetKeysListThenContainsKey!875 (toList!5662 lt!1859823) key!4653))))

(declare-fun Unit!125633 () Unit!125616)

(assert (=> b!4698086 (= e!2930732 Unit!125633)))

(declare-fun b!4698087 () Bool)

(assert (=> b!4698087 (= e!2930733 (not (contains!15762 (keys!18771 lt!1859823) key!4653)))))

(declare-fun b!4698088 () Bool)

(assert (=> b!4698088 (= e!2930730 (keys!18771 lt!1859823))))

(declare-fun b!4698089 () Bool)

(declare-fun getKeysList!876 (List!52623) List!52626)

(assert (=> b!4698089 (= e!2930730 (getKeysList!876 (toList!5662 lt!1859823)))))

(assert (= (and d!1493879 c!803132) b!4698083))

(assert (= (and d!1493879 (not c!803132)) b!4698082))

(assert (= (and b!4698082 c!803133) b!4698086))

(assert (= (and b!4698082 (not c!803133)) b!4698085))

(assert (= (or b!4698083 b!4698082) bm!328408))

(assert (= (and bm!328408 c!803131) b!4698089))

(assert (= (and bm!328408 (not c!803131)) b!4698088))

(assert (= (and d!1493879 res!1982961) b!4698087))

(assert (= (and d!1493879 (not res!1982962)) b!4698081))

(assert (= (and b!4698081 res!1982963) b!4698084))

(declare-fun m!5609325 () Bool)

(assert (=> b!4698081 m!5609325))

(assert (=> b!4698081 m!5609325))

(declare-fun m!5609327 () Bool)

(assert (=> b!4698081 m!5609327))

(declare-fun m!5609329 () Bool)

(assert (=> b!4698086 m!5609329))

(declare-fun m!5609331 () Bool)

(assert (=> b!4698086 m!5609331))

(declare-fun m!5609333 () Bool)

(assert (=> b!4698083 m!5609333))

(assert (=> b!4698083 m!5609325))

(assert (=> b!4698083 m!5609325))

(assert (=> b!4698083 m!5609327))

(declare-fun m!5609335 () Bool)

(assert (=> b!4698083 m!5609335))

(declare-fun m!5609337 () Bool)

(assert (=> b!4698084 m!5609337))

(assert (=> b!4698084 m!5609337))

(declare-fun m!5609339 () Bool)

(assert (=> b!4698084 m!5609339))

(assert (=> d!1493879 m!5609329))

(assert (=> b!4698088 m!5609337))

(declare-fun m!5609341 () Bool)

(assert (=> bm!328408 m!5609341))

(declare-fun m!5609343 () Bool)

(assert (=> b!4698089 m!5609343))

(assert (=> b!4698087 m!5609337))

(assert (=> b!4698087 m!5609337))

(assert (=> b!4698087 m!5609339))

(assert (=> b!4697951 d!1493879))

(declare-fun bs!1092804 () Bool)

(declare-fun d!1493881 () Bool)

(assert (= bs!1092804 (and d!1493881 d!1493801)))

(declare-fun lambda!209409 () Int)

(assert (=> bs!1092804 (not (= lambda!209409 lambda!209384))))

(declare-fun bs!1092805 () Bool)

(assert (= bs!1092805 (and d!1493881 d!1493829)))

(assert (=> bs!1092805 (= lambda!209409 lambda!209398)))

(declare-fun bs!1092806 () Bool)

(assert (= bs!1092806 (and d!1493881 d!1493805)))

(assert (=> bs!1092806 (= lambda!209409 lambda!209396)))

(declare-fun bs!1092807 () Bool)

(assert (= bs!1092807 (and d!1493881 start!476136)))

(assert (=> bs!1092807 (= lambda!209409 lambda!209381)))

(declare-fun bs!1092808 () Bool)

(assert (= bs!1092808 (and d!1493881 d!1493825)))

(assert (=> bs!1092808 (= lambda!209409 lambda!209397)))

(declare-fun bs!1092809 () Bool)

(assert (= bs!1092809 (and d!1493881 d!1493839)))

(assert (=> bs!1092809 (= lambda!209409 lambda!209407)))

(declare-fun lt!1859956 () ListMap!5025)

(assert (=> d!1493881 (invariantList!1436 (toList!5662 lt!1859956))))

(declare-fun e!2930735 () ListMap!5025)

(assert (=> d!1493881 (= lt!1859956 e!2930735)))

(declare-fun c!803134 () Bool)

(assert (=> d!1493881 (= c!803134 ((_ is Cons!52500) (toList!5661 lm!2023)))))

(assert (=> d!1493881 (forall!11379 (toList!5661 lm!2023) lambda!209409)))

(assert (=> d!1493881 (= (extractMap!1912 (toList!5661 lm!2023)) lt!1859956)))

(declare-fun b!4698090 () Bool)

(assert (=> b!4698090 (= e!2930735 (addToMapMapFromBucket!1318 (_2!30264 (h!58771 (toList!5661 lm!2023))) (extractMap!1912 (t!359826 (toList!5661 lm!2023)))))))

(declare-fun b!4698091 () Bool)

(assert (=> b!4698091 (= e!2930735 (ListMap!5026 Nil!52499))))

(assert (= (and d!1493881 c!803134) b!4698090))

(assert (= (and d!1493881 (not c!803134)) b!4698091))

(declare-fun m!5609345 () Bool)

(assert (=> d!1493881 m!5609345))

(declare-fun m!5609347 () Bool)

(assert (=> d!1493881 m!5609347))

(assert (=> b!4698090 m!5608925))

(assert (=> b!4698090 m!5608925))

(declare-fun m!5609349 () Bool)

(assert (=> b!4698090 m!5609349))

(assert (=> b!4697951 d!1493881))

(declare-fun d!1493883 () Bool)

(declare-fun lt!1859959 () List!52623)

(assert (=> d!1493883 (not (containsKey!3137 lt!1859959 key!4653))))

(declare-fun e!2930741 () List!52623)

(assert (=> d!1493883 (= lt!1859959 e!2930741)))

(declare-fun c!803139 () Bool)

(assert (=> d!1493883 (= c!803139 (and ((_ is Cons!52499) oldBucket!34) (= (_1!30263 (h!58770 oldBucket!34)) key!4653)))))

(assert (=> d!1493883 (noDuplicateKeys!1886 oldBucket!34)))

(assert (=> d!1493883 (= (removePairForKey!1481 oldBucket!34 key!4653) lt!1859959)))

(declare-fun b!4698103 () Bool)

(declare-fun e!2930740 () List!52623)

(assert (=> b!4698103 (= e!2930740 Nil!52499)))

(declare-fun b!4698100 () Bool)

(assert (=> b!4698100 (= e!2930741 (t!359825 oldBucket!34))))

(declare-fun b!4698102 () Bool)

(assert (=> b!4698102 (= e!2930740 (Cons!52499 (h!58770 oldBucket!34) (removePairForKey!1481 (t!359825 oldBucket!34) key!4653)))))

(declare-fun b!4698101 () Bool)

(assert (=> b!4698101 (= e!2930741 e!2930740)))

(declare-fun c!803140 () Bool)

(assert (=> b!4698101 (= c!803140 ((_ is Cons!52499) oldBucket!34))))

(assert (= (and d!1493883 c!803139) b!4698100))

(assert (= (and d!1493883 (not c!803139)) b!4698101))

(assert (= (and b!4698101 c!803140) b!4698102))

(assert (= (and b!4698101 (not c!803140)) b!4698103))

(declare-fun m!5609351 () Bool)

(assert (=> d!1493883 m!5609351))

(assert (=> d!1493883 m!5608955))

(assert (=> b!4698102 m!5608957))

(assert (=> b!4697941 d!1493883))

(declare-fun d!1493885 () Bool)

(assert (=> d!1493885 (= (head!10035 (toList!5661 lm!2023)) (h!58771 (toList!5661 lm!2023)))))

(assert (=> b!4697952 d!1493885))

(declare-fun d!1493887 () Bool)

(assert (=> d!1493887 true))

(assert (=> d!1493887 true))

(declare-fun lambda!209412 () Int)

(declare-fun forall!11381 (List!52623 Int) Bool)

(assert (=> d!1493887 (= (allKeysSameHash!1712 newBucket!218 hash!405 hashF!1323) (forall!11381 newBucket!218 lambda!209412))))

(declare-fun bs!1092810 () Bool)

(assert (= bs!1092810 d!1493887))

(declare-fun m!5609353 () Bool)

(assert (=> bs!1092810 m!5609353))

(assert (=> b!4697961 d!1493887))

(declare-fun d!1493889 () Bool)

(assert (=> d!1493889 (= (eq!1045 lt!1859833 lt!1859835) (= (content!9237 (toList!5662 lt!1859833)) (content!9237 (toList!5662 lt!1859835))))))

(declare-fun bs!1092811 () Bool)

(assert (= bs!1092811 d!1493889))

(declare-fun m!5609355 () Bool)

(assert (=> bs!1092811 m!5609355))

(declare-fun m!5609357 () Bool)

(assert (=> bs!1092811 m!5609357))

(assert (=> b!4697940 d!1493889))

(declare-fun d!1493891 () Bool)

(declare-fun lt!1859960 () List!52623)

(assert (=> d!1493891 (not (containsKey!3137 lt!1859960 key!4653))))

(declare-fun e!2930743 () List!52623)

(assert (=> d!1493891 (= lt!1859960 e!2930743)))

(declare-fun c!803141 () Bool)

(assert (=> d!1493891 (= c!803141 (and ((_ is Cons!52499) lt!1859828) (= (_1!30263 (h!58770 lt!1859828)) key!4653)))))

(assert (=> d!1493891 (noDuplicateKeys!1886 lt!1859828)))

(assert (=> d!1493891 (= (removePairForKey!1481 lt!1859828 key!4653) lt!1859960)))

(declare-fun b!4698111 () Bool)

(declare-fun e!2930742 () List!52623)

(assert (=> b!4698111 (= e!2930742 Nil!52499)))

(declare-fun b!4698108 () Bool)

(assert (=> b!4698108 (= e!2930743 (t!359825 lt!1859828))))

(declare-fun b!4698110 () Bool)

(assert (=> b!4698110 (= e!2930742 (Cons!52499 (h!58770 lt!1859828) (removePairForKey!1481 (t!359825 lt!1859828) key!4653)))))

(declare-fun b!4698109 () Bool)

(assert (=> b!4698109 (= e!2930743 e!2930742)))

(declare-fun c!803142 () Bool)

(assert (=> b!4698109 (= c!803142 ((_ is Cons!52499) lt!1859828))))

(assert (= (and d!1493891 c!803141) b!4698108))

(assert (= (and d!1493891 (not c!803141)) b!4698109))

(assert (= (and b!4698109 c!803142) b!4698110))

(assert (= (and b!4698109 (not c!803142)) b!4698111))

(declare-fun m!5609359 () Bool)

(assert (=> d!1493891 m!5609359))

(declare-fun m!5609361 () Bool)

(assert (=> d!1493891 m!5609361))

(declare-fun m!5609363 () Bool)

(assert (=> b!4698110 m!5609363))

(assert (=> b!4697959 d!1493891))

(declare-fun d!1493893 () Bool)

(assert (=> d!1493893 (= (tail!8685 newBucket!218) (t!359825 newBucket!218))))

(assert (=> b!4697959 d!1493893))

(declare-fun d!1493895 () Bool)

(assert (=> d!1493895 (= (tail!8685 oldBucket!34) (t!359825 oldBucket!34))))

(assert (=> b!4697959 d!1493895))

(declare-fun d!1493897 () Bool)

(declare-fun res!1982968 () Bool)

(declare-fun e!2930750 () Bool)

(assert (=> d!1493897 (=> res!1982968 e!2930750)))

(assert (=> d!1493897 (= res!1982968 ((_ is Nil!52500) (toList!5661 lm!2023)))))

(assert (=> d!1493897 (= (forall!11379 (toList!5661 lm!2023) lambda!209381) e!2930750)))

(declare-fun b!4698120 () Bool)

(declare-fun e!2930751 () Bool)

(assert (=> b!4698120 (= e!2930750 e!2930751)))

(declare-fun res!1982969 () Bool)

(assert (=> b!4698120 (=> (not res!1982969) (not e!2930751))))

(declare-fun dynLambda!21739 (Int tuple2!53940) Bool)

(assert (=> b!4698120 (= res!1982969 (dynLambda!21739 lambda!209381 (h!58771 (toList!5661 lm!2023))))))

(declare-fun b!4698121 () Bool)

(assert (=> b!4698121 (= e!2930751 (forall!11379 (t!359826 (toList!5661 lm!2023)) lambda!209381))))

(assert (= (and d!1493897 (not res!1982968)) b!4698120))

(assert (= (and b!4698120 res!1982969) b!4698121))

(declare-fun b_lambda!177271 () Bool)

(assert (=> (not b_lambda!177271) (not b!4698120)))

(declare-fun m!5609365 () Bool)

(assert (=> b!4698120 m!5609365))

(declare-fun m!5609367 () Bool)

(assert (=> b!4698121 m!5609367))

(assert (=> start!476136 d!1493897))

(declare-fun d!1493899 () Bool)

(declare-fun isStrictlySorted!674 (List!52624) Bool)

(assert (=> d!1493899 (= (inv!67739 lm!2023) (isStrictlySorted!674 (toList!5661 lm!2023)))))

(declare-fun bs!1092812 () Bool)

(assert (= bs!1092812 d!1493899))

(declare-fun m!5609369 () Bool)

(assert (=> bs!1092812 m!5609369))

(assert (=> start!476136 d!1493899))

(declare-fun d!1493901 () Bool)

(assert (=> d!1493901 (= (eq!1045 lt!1859835 (+!2170 lt!1859852 lt!1859821)) (= (content!9237 (toList!5662 lt!1859835)) (content!9237 (toList!5662 (+!2170 lt!1859852 lt!1859821)))))))

(declare-fun bs!1092813 () Bool)

(assert (= bs!1092813 d!1493901))

(assert (=> bs!1092813 m!5609357))

(declare-fun m!5609371 () Bool)

(assert (=> bs!1092813 m!5609371))

(assert (=> b!4697960 d!1493901))

(declare-fun d!1493903 () Bool)

(declare-fun e!2930752 () Bool)

(assert (=> d!1493903 e!2930752))

(declare-fun res!1982970 () Bool)

(assert (=> d!1493903 (=> (not res!1982970) (not e!2930752))))

(declare-fun lt!1859982 () ListMap!5025)

(assert (=> d!1493903 (= res!1982970 (contains!15758 lt!1859982 (_1!30263 lt!1859821)))))

(declare-fun lt!1859981 () List!52623)

(assert (=> d!1493903 (= lt!1859982 (ListMap!5026 lt!1859981))))

(declare-fun lt!1859979 () Unit!125616)

(declare-fun lt!1859980 () Unit!125616)

(assert (=> d!1493903 (= lt!1859979 lt!1859980)))

(assert (=> d!1493903 (= (getValueByKey!1831 lt!1859981 (_1!30263 lt!1859821)) (Some!12162 (_2!30263 lt!1859821)))))

(assert (=> d!1493903 (= lt!1859980 (lemmaContainsTupThenGetReturnValue!1026 lt!1859981 (_1!30263 lt!1859821) (_2!30263 lt!1859821)))))

(assert (=> d!1493903 (= lt!1859981 (insertNoDuplicatedKeys!534 (toList!5662 lt!1859852) (_1!30263 lt!1859821) (_2!30263 lt!1859821)))))

(assert (=> d!1493903 (= (+!2170 lt!1859852 lt!1859821) lt!1859982)))

(declare-fun b!4698122 () Bool)

(declare-fun res!1982971 () Bool)

(assert (=> b!4698122 (=> (not res!1982971) (not e!2930752))))

(assert (=> b!4698122 (= res!1982971 (= (getValueByKey!1831 (toList!5662 lt!1859982) (_1!30263 lt!1859821)) (Some!12162 (_2!30263 lt!1859821))))))

(declare-fun b!4698123 () Bool)

(assert (=> b!4698123 (= e!2930752 (contains!15761 (toList!5662 lt!1859982) lt!1859821))))

(assert (= (and d!1493903 res!1982970) b!4698122))

(assert (= (and b!4698122 res!1982971) b!4698123))

(declare-fun m!5609373 () Bool)

(assert (=> d!1493903 m!5609373))

(declare-fun m!5609375 () Bool)

(assert (=> d!1493903 m!5609375))

(declare-fun m!5609377 () Bool)

(assert (=> d!1493903 m!5609377))

(declare-fun m!5609379 () Bool)

(assert (=> d!1493903 m!5609379))

(declare-fun m!5609381 () Bool)

(assert (=> b!4698122 m!5609381))

(declare-fun m!5609383 () Bool)

(assert (=> b!4698123 m!5609383))

(assert (=> b!4697960 d!1493903))

(declare-fun d!1493905 () Bool)

(declare-fun lt!1859985 () List!52623)

(assert (=> d!1493905 (not (containsKey!3137 lt!1859985 key!4653))))

(declare-fun e!2930754 () List!52623)

(assert (=> d!1493905 (= lt!1859985 e!2930754)))

(declare-fun c!803145 () Bool)

(assert (=> d!1493905 (= c!803145 (and ((_ is Cons!52499) (t!359825 oldBucket!34)) (= (_1!30263 (h!58770 (t!359825 oldBucket!34))) key!4653)))))

(assert (=> d!1493905 (noDuplicateKeys!1886 (t!359825 oldBucket!34))))

(assert (=> d!1493905 (= (removePairForKey!1481 (t!359825 oldBucket!34) key!4653) lt!1859985)))

(declare-fun b!4698127 () Bool)

(declare-fun e!2930753 () List!52623)

(assert (=> b!4698127 (= e!2930753 Nil!52499)))

(declare-fun b!4698124 () Bool)

(assert (=> b!4698124 (= e!2930754 (t!359825 (t!359825 oldBucket!34)))))

(declare-fun b!4698126 () Bool)

(assert (=> b!4698126 (= e!2930753 (Cons!52499 (h!58770 (t!359825 oldBucket!34)) (removePairForKey!1481 (t!359825 (t!359825 oldBucket!34)) key!4653)))))

(declare-fun b!4698125 () Bool)

(assert (=> b!4698125 (= e!2930754 e!2930753)))

(declare-fun c!803146 () Bool)

(assert (=> b!4698125 (= c!803146 ((_ is Cons!52499) (t!359825 oldBucket!34)))))

(assert (= (and d!1493905 c!803145) b!4698124))

(assert (= (and d!1493905 (not c!803145)) b!4698125))

(assert (= (and b!4698125 c!803146) b!4698126))

(assert (= (and b!4698125 (not c!803146)) b!4698127))

(declare-fun m!5609385 () Bool)

(assert (=> d!1493905 m!5609385))

(declare-fun m!5609387 () Bool)

(assert (=> d!1493905 m!5609387))

(declare-fun m!5609389 () Bool)

(assert (=> b!4698126 m!5609389))

(assert (=> b!4697947 d!1493905))

(declare-fun bs!1092814 () Bool)

(declare-fun d!1493907 () Bool)

(assert (= bs!1092814 (and d!1493907 d!1493801)))

(declare-fun lambda!209423 () Int)

(assert (=> bs!1092814 (not (= lambda!209423 lambda!209384))))

(declare-fun bs!1092815 () Bool)

(assert (= bs!1092815 (and d!1493907 d!1493829)))

(assert (=> bs!1092815 (= lambda!209423 lambda!209398)))

(declare-fun bs!1092816 () Bool)

(assert (= bs!1092816 (and d!1493907 d!1493805)))

(assert (=> bs!1092816 (= lambda!209423 lambda!209396)))

(declare-fun bs!1092817 () Bool)

(assert (= bs!1092817 (and d!1493907 start!476136)))

(assert (=> bs!1092817 (= lambda!209423 lambda!209381)))

(declare-fun bs!1092818 () Bool)

(assert (= bs!1092818 (and d!1493907 d!1493825)))

(assert (=> bs!1092818 (= lambda!209423 lambda!209397)))

(declare-fun bs!1092819 () Bool)

(assert (= bs!1092819 (and d!1493907 d!1493839)))

(assert (=> bs!1092819 (= lambda!209423 lambda!209407)))

(declare-fun bs!1092820 () Bool)

(assert (= bs!1092820 (and d!1493907 d!1493881)))

(assert (=> bs!1092820 (= lambda!209423 lambda!209409)))

(declare-fun lt!1859988 () ListMap!5025)

(assert (=> d!1493907 (invariantList!1436 (toList!5662 lt!1859988))))

(declare-fun e!2930755 () ListMap!5025)

(assert (=> d!1493907 (= lt!1859988 e!2930755)))

(declare-fun c!803147 () Bool)

(assert (=> d!1493907 (= c!803147 ((_ is Cons!52500) lt!1859829))))

(assert (=> d!1493907 (forall!11379 lt!1859829 lambda!209423)))

(assert (=> d!1493907 (= (extractMap!1912 lt!1859829) lt!1859988)))

(declare-fun b!4698128 () Bool)

(assert (=> b!4698128 (= e!2930755 (addToMapMapFromBucket!1318 (_2!30264 (h!58771 lt!1859829)) (extractMap!1912 (t!359826 lt!1859829))))))

(declare-fun b!4698129 () Bool)

(assert (=> b!4698129 (= e!2930755 (ListMap!5026 Nil!52499))))

(assert (= (and d!1493907 c!803147) b!4698128))

(assert (= (and d!1493907 (not c!803147)) b!4698129))

(declare-fun m!5609391 () Bool)

(assert (=> d!1493907 m!5609391))

(declare-fun m!5609393 () Bool)

(assert (=> d!1493907 m!5609393))

(declare-fun m!5609395 () Bool)

(assert (=> b!4698128 m!5609395))

(assert (=> b!4698128 m!5609395))

(declare-fun m!5609397 () Bool)

(assert (=> b!4698128 m!5609397))

(assert (=> b!4697958 d!1493907))

(declare-fun d!1493909 () Bool)

(assert (=> d!1493909 (eq!1045 (addToMapMapFromBucket!1318 (Cons!52499 lt!1859821 lt!1859850) lt!1859824) (+!2170 (addToMapMapFromBucket!1318 lt!1859850 lt!1859824) lt!1859821))))

(declare-fun lt!1860011 () Unit!125616)

(declare-fun choose!32797 (tuple2!53938 List!52623 ListMap!5025) Unit!125616)

(assert (=> d!1493909 (= lt!1860011 (choose!32797 lt!1859821 lt!1859850 lt!1859824))))

(assert (=> d!1493909 (noDuplicateKeys!1886 lt!1859850)))

(assert (=> d!1493909 (= (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!294 lt!1859821 lt!1859850 lt!1859824) lt!1860011)))

(declare-fun bs!1092821 () Bool)

(assert (= bs!1092821 d!1493909))

(assert (=> bs!1092821 m!5609001))

(assert (=> bs!1092821 m!5609005))

(assert (=> bs!1092821 m!5609001))

(declare-fun m!5609399 () Bool)

(assert (=> bs!1092821 m!5609399))

(assert (=> bs!1092821 m!5609003))

(assert (=> bs!1092821 m!5609005))

(assert (=> bs!1092821 m!5609007))

(declare-fun m!5609401 () Bool)

(assert (=> bs!1092821 m!5609401))

(assert (=> bs!1092821 m!5609003))

(assert (=> b!4697958 d!1493909))

(declare-fun bs!1092836 () Bool)

(declare-fun d!1493911 () Bool)

(assert (= bs!1092836 (and d!1493911 d!1493801)))

(declare-fun lambda!209449 () Int)

(assert (=> bs!1092836 (not (= lambda!209449 lambda!209384))))

(declare-fun bs!1092837 () Bool)

(assert (= bs!1092837 (and d!1493911 d!1493829)))

(assert (=> bs!1092837 (= lambda!209449 lambda!209398)))

(declare-fun bs!1092838 () Bool)

(assert (= bs!1092838 (and d!1493911 d!1493805)))

(assert (=> bs!1092838 (= lambda!209449 lambda!209396)))

(declare-fun bs!1092839 () Bool)

(assert (= bs!1092839 (and d!1493911 start!476136)))

(assert (=> bs!1092839 (= lambda!209449 lambda!209381)))

(declare-fun bs!1092840 () Bool)

(assert (= bs!1092840 (and d!1493911 d!1493825)))

(assert (=> bs!1092840 (= lambda!209449 lambda!209397)))

(declare-fun bs!1092841 () Bool)

(assert (= bs!1092841 (and d!1493911 d!1493907)))

(assert (=> bs!1092841 (= lambda!209449 lambda!209423)))

(declare-fun bs!1092842 () Bool)

(assert (= bs!1092842 (and d!1493911 d!1493839)))

(assert (=> bs!1092842 (= lambda!209449 lambda!209407)))

(declare-fun bs!1092843 () Bool)

(assert (= bs!1092843 (and d!1493911 d!1493881)))

(assert (=> bs!1092843 (= lambda!209449 lambda!209409)))

(assert (=> d!1493911 (contains!15758 (extractMap!1912 (toList!5661 lt!1859853)) key!4653)))

(declare-fun lt!1860036 () Unit!125616)

(declare-fun choose!32798 (ListLongMap!4191 K!13865 Hashable!6255) Unit!125616)

(assert (=> d!1493911 (= lt!1860036 (choose!32798 lt!1859853 key!4653 hashF!1323))))

(assert (=> d!1493911 (forall!11379 (toList!5661 lt!1859853) lambda!209449)))

(assert (=> d!1493911 (= (lemmaListContainsThenExtractedMapContains!478 lt!1859853 key!4653 hashF!1323) lt!1860036)))

(declare-fun bs!1092844 () Bool)

(assert (= bs!1092844 d!1493911))

(declare-fun m!5609447 () Bool)

(assert (=> bs!1092844 m!5609447))

(assert (=> bs!1092844 m!5609447))

(declare-fun m!5609449 () Bool)

(assert (=> bs!1092844 m!5609449))

(declare-fun m!5609451 () Bool)

(assert (=> bs!1092844 m!5609451))

(declare-fun m!5609453 () Bool)

(assert (=> bs!1092844 m!5609453))

(assert (=> b!4697958 d!1493911))

(declare-fun d!1493917 () Bool)

(assert (=> d!1493917 (= (head!10036 oldBucket!34) (h!58770 oldBucket!34))))

(assert (=> b!4697958 d!1493917))

(declare-fun d!1493919 () Bool)

(assert (=> d!1493919 (eq!1045 (addToMapMapFromBucket!1318 (Cons!52499 lt!1859832 lt!1859828) lt!1859824) (+!2170 (addToMapMapFromBucket!1318 lt!1859828 lt!1859824) lt!1859832))))

(declare-fun lt!1860037 () Unit!125616)

(assert (=> d!1493919 (= lt!1860037 (choose!32797 lt!1859832 lt!1859828 lt!1859824))))

(assert (=> d!1493919 (noDuplicateKeys!1886 lt!1859828)))

(assert (=> d!1493919 (= (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!294 lt!1859832 lt!1859828 lt!1859824) lt!1860037)))

(declare-fun bs!1092845 () Bool)

(assert (= bs!1092845 d!1493919))

(assert (=> bs!1092845 m!5608999))

(assert (=> bs!1092845 m!5609021))

(assert (=> bs!1092845 m!5608999))

(assert (=> bs!1092845 m!5609361))

(assert (=> bs!1092845 m!5608997))

(assert (=> bs!1092845 m!5609021))

(assert (=> bs!1092845 m!5609023))

(declare-fun m!5609455 () Bool)

(assert (=> bs!1092845 m!5609455))

(assert (=> bs!1092845 m!5608997))

(assert (=> b!4697958 d!1493919))

(declare-fun d!1493921 () Bool)

(assert (=> d!1493921 (= (head!10036 newBucket!218) (h!58770 newBucket!218))))

(assert (=> b!4697958 d!1493921))

(declare-fun bs!1093013 () Bool)

(declare-fun b!4698238 () Bool)

(assert (= bs!1093013 (and b!4698238 d!1493887)))

(declare-fun lambda!209502 () Int)

(assert (=> bs!1093013 (not (= lambda!209502 lambda!209412))))

(assert (=> b!4698238 true))

(declare-fun bs!1093014 () Bool)

(declare-fun b!4698241 () Bool)

(assert (= bs!1093014 (and b!4698241 d!1493887)))

(declare-fun lambda!209503 () Int)

(assert (=> bs!1093014 (not (= lambda!209503 lambda!209412))))

(declare-fun bs!1093015 () Bool)

(assert (= bs!1093015 (and b!4698241 b!4698238)))

(assert (=> bs!1093015 (= lambda!209503 lambda!209502)))

(assert (=> b!4698241 true))

(declare-fun lambda!209504 () Int)

(assert (=> bs!1093014 (not (= lambda!209504 lambda!209412))))

(declare-fun lt!1860221 () ListMap!5025)

(assert (=> bs!1093015 (= (= lt!1860221 lt!1859824) (= lambda!209504 lambda!209502))))

(assert (=> b!4698241 (= (= lt!1860221 lt!1859824) (= lambda!209504 lambda!209503))))

(assert (=> b!4698241 true))

(declare-fun bs!1093016 () Bool)

(declare-fun d!1493923 () Bool)

(assert (= bs!1093016 (and d!1493923 d!1493887)))

(declare-fun lambda!209505 () Int)

(assert (=> bs!1093016 (not (= lambda!209505 lambda!209412))))

(declare-fun bs!1093017 () Bool)

(assert (= bs!1093017 (and d!1493923 b!4698238)))

(declare-fun lt!1860213 () ListMap!5025)

(assert (=> bs!1093017 (= (= lt!1860213 lt!1859824) (= lambda!209505 lambda!209502))))

(declare-fun bs!1093018 () Bool)

(assert (= bs!1093018 (and d!1493923 b!4698241)))

(assert (=> bs!1093018 (= (= lt!1860213 lt!1859824) (= lambda!209505 lambda!209503))))

(assert (=> bs!1093018 (= (= lt!1860213 lt!1860221) (= lambda!209505 lambda!209504))))

(assert (=> d!1493923 true))

(declare-fun bm!328437 () Bool)

(declare-fun c!803171 () Bool)

(declare-fun call!328443 () Bool)

(assert (=> bm!328437 (= call!328443 (forall!11381 (ite c!803171 (toList!5662 lt!1859824) (Cons!52499 lt!1859821 lt!1859850)) (ite c!803171 lambda!209502 lambda!209504)))))

(declare-fun e!2930822 () ListMap!5025)

(assert (=> b!4698238 (= e!2930822 lt!1859824)))

(declare-fun lt!1860224 () Unit!125616)

(declare-fun call!328444 () Unit!125616)

(assert (=> b!4698238 (= lt!1860224 call!328444)))

(assert (=> b!4698238 call!328443))

(declare-fun lt!1860232 () Unit!125616)

(assert (=> b!4698238 (= lt!1860232 lt!1860224)))

(declare-fun call!328442 () Bool)

(assert (=> b!4698238 call!328442))

(declare-fun lt!1860231 () Unit!125616)

(declare-fun Unit!125653 () Unit!125616)

(assert (=> b!4698238 (= lt!1860231 Unit!125653)))

(declare-fun e!2930821 () Bool)

(assert (=> d!1493923 e!2930821))

(declare-fun res!1983032 () Bool)

(assert (=> d!1493923 (=> (not res!1983032) (not e!2930821))))

(assert (=> d!1493923 (= res!1983032 (forall!11381 (Cons!52499 lt!1859821 lt!1859850) lambda!209505))))

(assert (=> d!1493923 (= lt!1860213 e!2930822)))

(assert (=> d!1493923 (= c!803171 ((_ is Nil!52499) (Cons!52499 lt!1859821 lt!1859850)))))

(assert (=> d!1493923 (noDuplicateKeys!1886 (Cons!52499 lt!1859821 lt!1859850))))

(assert (=> d!1493923 (= (addToMapMapFromBucket!1318 (Cons!52499 lt!1859821 lt!1859850) lt!1859824) lt!1860213)))

(declare-fun b!4698239 () Bool)

(assert (=> b!4698239 (= e!2930821 (invariantList!1436 (toList!5662 lt!1860213)))))

(declare-fun b!4698240 () Bool)

(declare-fun res!1983033 () Bool)

(assert (=> b!4698240 (=> (not res!1983033) (not e!2930821))))

(assert (=> b!4698240 (= res!1983033 (forall!11381 (toList!5662 lt!1859824) lambda!209505))))

(assert (=> b!4698241 (= e!2930822 lt!1860221)))

(declare-fun lt!1860212 () ListMap!5025)

(assert (=> b!4698241 (= lt!1860212 (+!2170 lt!1859824 (h!58770 (Cons!52499 lt!1859821 lt!1859850))))))

(assert (=> b!4698241 (= lt!1860221 (addToMapMapFromBucket!1318 (t!359825 (Cons!52499 lt!1859821 lt!1859850)) (+!2170 lt!1859824 (h!58770 (Cons!52499 lt!1859821 lt!1859850)))))))

(declare-fun lt!1860223 () Unit!125616)

(assert (=> b!4698241 (= lt!1860223 call!328444)))

(assert (=> b!4698241 (forall!11381 (toList!5662 lt!1859824) lambda!209503)))

(declare-fun lt!1860219 () Unit!125616)

(assert (=> b!4698241 (= lt!1860219 lt!1860223)))

(assert (=> b!4698241 (forall!11381 (toList!5662 lt!1860212) lambda!209504)))

(declare-fun lt!1860229 () Unit!125616)

(declare-fun Unit!125656 () Unit!125616)

(assert (=> b!4698241 (= lt!1860229 Unit!125656)))

(assert (=> b!4698241 (forall!11381 (t!359825 (Cons!52499 lt!1859821 lt!1859850)) lambda!209504)))

(declare-fun lt!1860225 () Unit!125616)

(declare-fun Unit!125657 () Unit!125616)

(assert (=> b!4698241 (= lt!1860225 Unit!125657)))

(declare-fun lt!1860227 () Unit!125616)

(declare-fun Unit!125658 () Unit!125616)

(assert (=> b!4698241 (= lt!1860227 Unit!125658)))

(declare-fun lt!1860218 () Unit!125616)

(declare-fun forallContained!3488 (List!52623 Int tuple2!53938) Unit!125616)

(assert (=> b!4698241 (= lt!1860218 (forallContained!3488 (toList!5662 lt!1860212) lambda!209504 (h!58770 (Cons!52499 lt!1859821 lt!1859850))))))

(assert (=> b!4698241 (contains!15758 lt!1860212 (_1!30263 (h!58770 (Cons!52499 lt!1859821 lt!1859850))))))

(declare-fun lt!1860217 () Unit!125616)

(declare-fun Unit!125659 () Unit!125616)

(assert (=> b!4698241 (= lt!1860217 Unit!125659)))

(assert (=> b!4698241 (contains!15758 lt!1860221 (_1!30263 (h!58770 (Cons!52499 lt!1859821 lt!1859850))))))

(declare-fun lt!1860220 () Unit!125616)

(declare-fun Unit!125660 () Unit!125616)

(assert (=> b!4698241 (= lt!1860220 Unit!125660)))

(assert (=> b!4698241 (forall!11381 (Cons!52499 lt!1859821 lt!1859850) lambda!209504)))

(declare-fun lt!1860222 () Unit!125616)

(declare-fun Unit!125661 () Unit!125616)

(assert (=> b!4698241 (= lt!1860222 Unit!125661)))

(assert (=> b!4698241 (forall!11381 (toList!5662 lt!1860212) lambda!209504)))

(declare-fun lt!1860230 () Unit!125616)

(declare-fun Unit!125662 () Unit!125616)

(assert (=> b!4698241 (= lt!1860230 Unit!125662)))

(declare-fun lt!1860216 () Unit!125616)

(declare-fun Unit!125663 () Unit!125616)

(assert (=> b!4698241 (= lt!1860216 Unit!125663)))

(declare-fun lt!1860226 () Unit!125616)

(declare-fun addForallContainsKeyThenBeforeAdding!723 (ListMap!5025 ListMap!5025 K!13865 V!14111) Unit!125616)

(assert (=> b!4698241 (= lt!1860226 (addForallContainsKeyThenBeforeAdding!723 lt!1859824 lt!1860221 (_1!30263 (h!58770 (Cons!52499 lt!1859821 lt!1859850))) (_2!30263 (h!58770 (Cons!52499 lt!1859821 lt!1859850)))))))

(assert (=> b!4698241 (forall!11381 (toList!5662 lt!1859824) lambda!209504)))

(declare-fun lt!1860214 () Unit!125616)

(assert (=> b!4698241 (= lt!1860214 lt!1860226)))

(assert (=> b!4698241 (forall!11381 (toList!5662 lt!1859824) lambda!209504)))

(declare-fun lt!1860228 () Unit!125616)

(declare-fun Unit!125664 () Unit!125616)

(assert (=> b!4698241 (= lt!1860228 Unit!125664)))

(declare-fun res!1983031 () Bool)

(assert (=> b!4698241 (= res!1983031 call!328443)))

(declare-fun e!2930823 () Bool)

(assert (=> b!4698241 (=> (not res!1983031) (not e!2930823))))

(assert (=> b!4698241 e!2930823))

(declare-fun lt!1860215 () Unit!125616)

(declare-fun Unit!125665 () Unit!125616)

(assert (=> b!4698241 (= lt!1860215 Unit!125665)))

(declare-fun bm!328438 () Bool)

(declare-fun lemmaContainsAllItsOwnKeys!724 (ListMap!5025) Unit!125616)

(assert (=> bm!328438 (= call!328444 (lemmaContainsAllItsOwnKeys!724 lt!1859824))))

(declare-fun b!4698242 () Bool)

(assert (=> b!4698242 (= e!2930823 call!328442)))

(declare-fun bm!328439 () Bool)

(assert (=> bm!328439 (= call!328442 (forall!11381 (toList!5662 lt!1859824) (ite c!803171 lambda!209502 lambda!209504)))))

(assert (= (and d!1493923 c!803171) b!4698238))

(assert (= (and d!1493923 (not c!803171)) b!4698241))

(assert (= (and b!4698241 res!1983031) b!4698242))

(assert (= (or b!4698238 b!4698241) bm!328438))

(assert (= (or b!4698238 b!4698241) bm!328437))

(assert (= (or b!4698238 b!4698242) bm!328439))

(assert (= (and d!1493923 res!1983032) b!4698240))

(assert (= (and b!4698240 res!1983033) b!4698239))

(declare-fun m!5609733 () Bool)

(assert (=> bm!328439 m!5609733))

(declare-fun m!5609735 () Bool)

(assert (=> b!4698239 m!5609735))

(declare-fun m!5609737 () Bool)

(assert (=> bm!328437 m!5609737))

(declare-fun m!5609739 () Bool)

(assert (=> bm!328438 m!5609739))

(declare-fun m!5609741 () Bool)

(assert (=> b!4698241 m!5609741))

(declare-fun m!5609743 () Bool)

(assert (=> b!4698241 m!5609743))

(declare-fun m!5609745 () Bool)

(assert (=> b!4698241 m!5609745))

(declare-fun m!5609747 () Bool)

(assert (=> b!4698241 m!5609747))

(declare-fun m!5609749 () Bool)

(assert (=> b!4698241 m!5609749))

(declare-fun m!5609751 () Bool)

(assert (=> b!4698241 m!5609751))

(declare-fun m!5609753 () Bool)

(assert (=> b!4698241 m!5609753))

(assert (=> b!4698241 m!5609749))

(declare-fun m!5609755 () Bool)

(assert (=> b!4698241 m!5609755))

(assert (=> b!4698241 m!5609743))

(declare-fun m!5609757 () Bool)

(assert (=> b!4698241 m!5609757))

(declare-fun m!5609759 () Bool)

(assert (=> b!4698241 m!5609759))

(assert (=> b!4698241 m!5609759))

(declare-fun m!5609761 () Bool)

(assert (=> b!4698241 m!5609761))

(declare-fun m!5609763 () Bool)

(assert (=> b!4698240 m!5609763))

(declare-fun m!5609765 () Bool)

(assert (=> d!1493923 m!5609765))

(declare-fun m!5609767 () Bool)

(assert (=> d!1493923 m!5609767))

(assert (=> b!4697958 d!1493923))

(declare-fun d!1493983 () Bool)

(declare-fun e!2930824 () Bool)

(assert (=> d!1493983 e!2930824))

(declare-fun res!1983034 () Bool)

(assert (=> d!1493983 (=> (not res!1983034) (not e!2930824))))

(declare-fun lt!1860236 () ListMap!5025)

(assert (=> d!1493983 (= res!1983034 (contains!15758 lt!1860236 (_1!30263 lt!1859821)))))

(declare-fun lt!1860235 () List!52623)

(assert (=> d!1493983 (= lt!1860236 (ListMap!5026 lt!1860235))))

(declare-fun lt!1860233 () Unit!125616)

(declare-fun lt!1860234 () Unit!125616)

(assert (=> d!1493983 (= lt!1860233 lt!1860234)))

(assert (=> d!1493983 (= (getValueByKey!1831 lt!1860235 (_1!30263 lt!1859821)) (Some!12162 (_2!30263 lt!1859821)))))

(assert (=> d!1493983 (= lt!1860234 (lemmaContainsTupThenGetReturnValue!1026 lt!1860235 (_1!30263 lt!1859821) (_2!30263 lt!1859821)))))

(assert (=> d!1493983 (= lt!1860235 (insertNoDuplicatedKeys!534 (toList!5662 (addToMapMapFromBucket!1318 lt!1859850 lt!1859824)) (_1!30263 lt!1859821) (_2!30263 lt!1859821)))))

(assert (=> d!1493983 (= (+!2170 (addToMapMapFromBucket!1318 lt!1859850 lt!1859824) lt!1859821) lt!1860236)))

(declare-fun b!4698245 () Bool)

(declare-fun res!1983035 () Bool)

(assert (=> b!4698245 (=> (not res!1983035) (not e!2930824))))

(assert (=> b!4698245 (= res!1983035 (= (getValueByKey!1831 (toList!5662 lt!1860236) (_1!30263 lt!1859821)) (Some!12162 (_2!30263 lt!1859821))))))

(declare-fun b!4698246 () Bool)

(assert (=> b!4698246 (= e!2930824 (contains!15761 (toList!5662 lt!1860236) lt!1859821))))

(assert (= (and d!1493983 res!1983034) b!4698245))

(assert (= (and b!4698245 res!1983035) b!4698246))

(declare-fun m!5609769 () Bool)

(assert (=> d!1493983 m!5609769))

(declare-fun m!5609771 () Bool)

(assert (=> d!1493983 m!5609771))

(declare-fun m!5609773 () Bool)

(assert (=> d!1493983 m!5609773))

(declare-fun m!5609775 () Bool)

(assert (=> d!1493983 m!5609775))

(declare-fun m!5609777 () Bool)

(assert (=> b!4698245 m!5609777))

(declare-fun m!5609779 () Bool)

(assert (=> b!4698246 m!5609779))

(assert (=> b!4697958 d!1493983))

(declare-fun bs!1093019 () Bool)

(declare-fun d!1493985 () Bool)

(assert (= bs!1093019 (and d!1493985 d!1493801)))

(declare-fun lambda!209506 () Int)

(assert (=> bs!1093019 (not (= lambda!209506 lambda!209384))))

(declare-fun bs!1093020 () Bool)

(assert (= bs!1093020 (and d!1493985 d!1493829)))

(assert (=> bs!1093020 (= lambda!209506 lambda!209398)))

(declare-fun bs!1093021 () Bool)

(assert (= bs!1093021 (and d!1493985 d!1493911)))

(assert (=> bs!1093021 (= lambda!209506 lambda!209449)))

(declare-fun bs!1093022 () Bool)

(assert (= bs!1093022 (and d!1493985 d!1493805)))

(assert (=> bs!1093022 (= lambda!209506 lambda!209396)))

(declare-fun bs!1093023 () Bool)

(assert (= bs!1093023 (and d!1493985 start!476136)))

(assert (=> bs!1093023 (= lambda!209506 lambda!209381)))

(declare-fun bs!1093024 () Bool)

(assert (= bs!1093024 (and d!1493985 d!1493825)))

(assert (=> bs!1093024 (= lambda!209506 lambda!209397)))

(declare-fun bs!1093025 () Bool)

(assert (= bs!1093025 (and d!1493985 d!1493907)))

(assert (=> bs!1093025 (= lambda!209506 lambda!209423)))

(declare-fun bs!1093026 () Bool)

(assert (= bs!1093026 (and d!1493985 d!1493839)))

(assert (=> bs!1093026 (= lambda!209506 lambda!209407)))

(declare-fun bs!1093027 () Bool)

(assert (= bs!1093027 (and d!1493985 d!1493881)))

(assert (=> bs!1093027 (= lambda!209506 lambda!209409)))

(declare-fun lt!1860237 () ListMap!5025)

(assert (=> d!1493985 (invariantList!1436 (toList!5662 lt!1860237))))

(declare-fun e!2930825 () ListMap!5025)

(assert (=> d!1493985 (= lt!1860237 e!2930825)))

(declare-fun c!803172 () Bool)

(assert (=> d!1493985 (= c!803172 ((_ is Cons!52500) (Cons!52500 (tuple2!53941 hash!405 lt!1859828) (t!359826 (toList!5661 lm!2023)))))))

(assert (=> d!1493985 (forall!11379 (Cons!52500 (tuple2!53941 hash!405 lt!1859828) (t!359826 (toList!5661 lm!2023))) lambda!209506)))

(assert (=> d!1493985 (= (extractMap!1912 (Cons!52500 (tuple2!53941 hash!405 lt!1859828) (t!359826 (toList!5661 lm!2023)))) lt!1860237)))

(declare-fun b!4698247 () Bool)

(assert (=> b!4698247 (= e!2930825 (addToMapMapFromBucket!1318 (_2!30264 (h!58771 (Cons!52500 (tuple2!53941 hash!405 lt!1859828) (t!359826 (toList!5661 lm!2023))))) (extractMap!1912 (t!359826 (Cons!52500 (tuple2!53941 hash!405 lt!1859828) (t!359826 (toList!5661 lm!2023)))))))))

(declare-fun b!4698248 () Bool)

(assert (=> b!4698248 (= e!2930825 (ListMap!5026 Nil!52499))))

(assert (= (and d!1493985 c!803172) b!4698247))

(assert (= (and d!1493985 (not c!803172)) b!4698248))

(declare-fun m!5609781 () Bool)

(assert (=> d!1493985 m!5609781))

(declare-fun m!5609783 () Bool)

(assert (=> d!1493985 m!5609783))

(declare-fun m!5609785 () Bool)

(assert (=> b!4698247 m!5609785))

(assert (=> b!4698247 m!5609785))

(declare-fun m!5609787 () Bool)

(assert (=> b!4698247 m!5609787))

(assert (=> b!4697958 d!1493985))

(declare-fun d!1493987 () Bool)

(declare-fun e!2930826 () Bool)

(assert (=> d!1493987 e!2930826))

(declare-fun res!1983036 () Bool)

(assert (=> d!1493987 (=> (not res!1983036) (not e!2930826))))

(declare-fun lt!1860241 () ListMap!5025)

(assert (=> d!1493987 (= res!1983036 (contains!15758 lt!1860241 (_1!30263 lt!1859832)))))

(declare-fun lt!1860240 () List!52623)

(assert (=> d!1493987 (= lt!1860241 (ListMap!5026 lt!1860240))))

(declare-fun lt!1860238 () Unit!125616)

(declare-fun lt!1860239 () Unit!125616)

(assert (=> d!1493987 (= lt!1860238 lt!1860239)))

(assert (=> d!1493987 (= (getValueByKey!1831 lt!1860240 (_1!30263 lt!1859832)) (Some!12162 (_2!30263 lt!1859832)))))

(assert (=> d!1493987 (= lt!1860239 (lemmaContainsTupThenGetReturnValue!1026 lt!1860240 (_1!30263 lt!1859832) (_2!30263 lt!1859832)))))

(assert (=> d!1493987 (= lt!1860240 (insertNoDuplicatedKeys!534 (toList!5662 (addToMapMapFromBucket!1318 lt!1859828 lt!1859824)) (_1!30263 lt!1859832) (_2!30263 lt!1859832)))))

(assert (=> d!1493987 (= (+!2170 (addToMapMapFromBucket!1318 lt!1859828 lt!1859824) lt!1859832) lt!1860241)))

(declare-fun b!4698249 () Bool)

(declare-fun res!1983037 () Bool)

(assert (=> b!4698249 (=> (not res!1983037) (not e!2930826))))

(assert (=> b!4698249 (= res!1983037 (= (getValueByKey!1831 (toList!5662 lt!1860241) (_1!30263 lt!1859832)) (Some!12162 (_2!30263 lt!1859832))))))

(declare-fun b!4698250 () Bool)

(assert (=> b!4698250 (= e!2930826 (contains!15761 (toList!5662 lt!1860241) lt!1859832))))

(assert (= (and d!1493987 res!1983036) b!4698249))

(assert (= (and b!4698249 res!1983037) b!4698250))

(declare-fun m!5609789 () Bool)

(assert (=> d!1493987 m!5609789))

(declare-fun m!5609791 () Bool)

(assert (=> d!1493987 m!5609791))

(declare-fun m!5609793 () Bool)

(assert (=> d!1493987 m!5609793))

(declare-fun m!5609795 () Bool)

(assert (=> d!1493987 m!5609795))

(declare-fun m!5609797 () Bool)

(assert (=> b!4698249 m!5609797))

(declare-fun m!5609799 () Bool)

(assert (=> b!4698250 m!5609799))

(assert (=> b!4697958 d!1493987))

(declare-fun d!1493989 () Bool)

(assert (=> d!1493989 (= (eq!1045 lt!1859835 (+!2170 lt!1859852 (h!58770 oldBucket!34))) (= (content!9237 (toList!5662 lt!1859835)) (content!9237 (toList!5662 (+!2170 lt!1859852 (h!58770 oldBucket!34))))))))

(declare-fun bs!1093028 () Bool)

(assert (= bs!1093028 d!1493989))

(assert (=> bs!1093028 m!5609357))

(declare-fun m!5609801 () Bool)

(assert (=> bs!1093028 m!5609801))

(assert (=> b!4697958 d!1493989))

(declare-fun bs!1093029 () Bool)

(declare-fun d!1493991 () Bool)

(assert (= bs!1093029 (and d!1493991 d!1493801)))

(declare-fun lambda!209507 () Int)

(assert (=> bs!1093029 (not (= lambda!209507 lambda!209384))))

(declare-fun bs!1093030 () Bool)

(assert (= bs!1093030 (and d!1493991 d!1493829)))

(assert (=> bs!1093030 (= lambda!209507 lambda!209398)))

(declare-fun bs!1093031 () Bool)

(assert (= bs!1093031 (and d!1493991 d!1493911)))

(assert (=> bs!1093031 (= lambda!209507 lambda!209449)))

(declare-fun bs!1093032 () Bool)

(assert (= bs!1093032 (and d!1493991 d!1493805)))

(assert (=> bs!1093032 (= lambda!209507 lambda!209396)))

(declare-fun bs!1093033 () Bool)

(assert (= bs!1093033 (and d!1493991 start!476136)))

(assert (=> bs!1093033 (= lambda!209507 lambda!209381)))

(declare-fun bs!1093034 () Bool)

(assert (= bs!1093034 (and d!1493991 d!1493825)))

(assert (=> bs!1093034 (= lambda!209507 lambda!209397)))

(declare-fun bs!1093035 () Bool)

(assert (= bs!1093035 (and d!1493991 d!1493907)))

(assert (=> bs!1093035 (= lambda!209507 lambda!209423)))

(declare-fun bs!1093036 () Bool)

(assert (= bs!1093036 (and d!1493991 d!1493839)))

(assert (=> bs!1093036 (= lambda!209507 lambda!209407)))

(declare-fun bs!1093037 () Bool)

(assert (= bs!1093037 (and d!1493991 d!1493881)))

(assert (=> bs!1093037 (= lambda!209507 lambda!209409)))

(declare-fun bs!1093038 () Bool)

(assert (= bs!1093038 (and d!1493991 d!1493985)))

(assert (=> bs!1093038 (= lambda!209507 lambda!209506)))

(declare-fun lt!1860242 () ListMap!5025)

(assert (=> d!1493991 (invariantList!1436 (toList!5662 lt!1860242))))

(declare-fun e!2930827 () ListMap!5025)

(assert (=> d!1493991 (= lt!1860242 e!2930827)))

(declare-fun c!803173 () Bool)

(assert (=> d!1493991 (= c!803173 ((_ is Cons!52500) (Cons!52500 lt!1859846 (t!359826 (toList!5661 lm!2023)))))))

(assert (=> d!1493991 (forall!11379 (Cons!52500 lt!1859846 (t!359826 (toList!5661 lm!2023))) lambda!209507)))

(assert (=> d!1493991 (= (extractMap!1912 (Cons!52500 lt!1859846 (t!359826 (toList!5661 lm!2023)))) lt!1860242)))

(declare-fun b!4698251 () Bool)

(assert (=> b!4698251 (= e!2930827 (addToMapMapFromBucket!1318 (_2!30264 (h!58771 (Cons!52500 lt!1859846 (t!359826 (toList!5661 lm!2023))))) (extractMap!1912 (t!359826 (Cons!52500 lt!1859846 (t!359826 (toList!5661 lm!2023)))))))))

(declare-fun b!4698252 () Bool)

(assert (=> b!4698252 (= e!2930827 (ListMap!5026 Nil!52499))))

(assert (= (and d!1493991 c!803173) b!4698251))

(assert (= (and d!1493991 (not c!803173)) b!4698252))

(declare-fun m!5609803 () Bool)

(assert (=> d!1493991 m!5609803))

(declare-fun m!5609805 () Bool)

(assert (=> d!1493991 m!5609805))

(declare-fun m!5609807 () Bool)

(assert (=> b!4698251 m!5609807))

(assert (=> b!4698251 m!5609807))

(declare-fun m!5609809 () Bool)

(assert (=> b!4698251 m!5609809))

(assert (=> b!4697958 d!1493991))

(declare-fun b!4698253 () Bool)

(declare-fun e!2930833 () Bool)

(declare-fun e!2930828 () Bool)

(assert (=> b!4698253 (= e!2930833 e!2930828)))

(declare-fun res!1983040 () Bool)

(assert (=> b!4698253 (=> (not res!1983040) (not e!2930828))))

(assert (=> b!4698253 (= res!1983040 (isDefined!9418 (getValueByKey!1831 (toList!5662 lt!1859827) key!4653)))))

(declare-fun b!4698254 () Bool)

(declare-fun e!2930830 () Unit!125616)

(declare-fun e!2930831 () Unit!125616)

(assert (=> b!4698254 (= e!2930830 e!2930831)))

(declare-fun c!803176 () Bool)

(declare-fun call!328445 () Bool)

(assert (=> b!4698254 (= c!803176 call!328445)))

(declare-fun b!4698255 () Bool)

(declare-fun lt!1860250 () Unit!125616)

(assert (=> b!4698255 (= e!2930830 lt!1860250)))

(declare-fun lt!1860244 () Unit!125616)

(assert (=> b!4698255 (= lt!1860244 (lemmaContainsKeyImpliesGetValueByKeyDefined!1723 (toList!5662 lt!1859827) key!4653))))

(assert (=> b!4698255 (isDefined!9418 (getValueByKey!1831 (toList!5662 lt!1859827) key!4653))))

(declare-fun lt!1860249 () Unit!125616)

(assert (=> b!4698255 (= lt!1860249 lt!1860244)))

(assert (=> b!4698255 (= lt!1860250 (lemmaInListThenGetKeysListContains!871 (toList!5662 lt!1859827) key!4653))))

(assert (=> b!4698255 call!328445))

(declare-fun b!4698256 () Bool)

(assert (=> b!4698256 (= e!2930828 (contains!15762 (keys!18771 lt!1859827) key!4653))))

(declare-fun bm!328440 () Bool)

(declare-fun e!2930829 () List!52626)

(assert (=> bm!328440 (= call!328445 (contains!15762 e!2930829 key!4653))))

(declare-fun c!803174 () Bool)

(declare-fun c!803175 () Bool)

(assert (=> bm!328440 (= c!803174 c!803175)))

(declare-fun d!1493993 () Bool)

(assert (=> d!1493993 e!2930833))

(declare-fun res!1983039 () Bool)

(assert (=> d!1493993 (=> res!1983039 e!2930833)))

(declare-fun e!2930832 () Bool)

(assert (=> d!1493993 (= res!1983039 e!2930832)))

(declare-fun res!1983038 () Bool)

(assert (=> d!1493993 (=> (not res!1983038) (not e!2930832))))

(declare-fun lt!1860247 () Bool)

(assert (=> d!1493993 (= res!1983038 (not lt!1860247))))

(declare-fun lt!1860246 () Bool)

(assert (=> d!1493993 (= lt!1860247 lt!1860246)))

(declare-fun lt!1860243 () Unit!125616)

(assert (=> d!1493993 (= lt!1860243 e!2930830)))

(assert (=> d!1493993 (= c!803175 lt!1860246)))

(assert (=> d!1493993 (= lt!1860246 (containsKey!3139 (toList!5662 lt!1859827) key!4653))))

(assert (=> d!1493993 (= (contains!15758 lt!1859827 key!4653) lt!1860247)))

(declare-fun b!4698257 () Bool)

(declare-fun Unit!125677 () Unit!125616)

(assert (=> b!4698257 (= e!2930831 Unit!125677)))

(declare-fun b!4698258 () Bool)

(assert (=> b!4698258 false))

(declare-fun lt!1860248 () Unit!125616)

(declare-fun lt!1860245 () Unit!125616)

(assert (=> b!4698258 (= lt!1860248 lt!1860245)))

(assert (=> b!4698258 (containsKey!3139 (toList!5662 lt!1859827) key!4653)))

(assert (=> b!4698258 (= lt!1860245 (lemmaInGetKeysListThenContainsKey!875 (toList!5662 lt!1859827) key!4653))))

(declare-fun Unit!125678 () Unit!125616)

(assert (=> b!4698258 (= e!2930831 Unit!125678)))

(declare-fun b!4698259 () Bool)

(assert (=> b!4698259 (= e!2930832 (not (contains!15762 (keys!18771 lt!1859827) key!4653)))))

(declare-fun b!4698260 () Bool)

(assert (=> b!4698260 (= e!2930829 (keys!18771 lt!1859827))))

(declare-fun b!4698261 () Bool)

(assert (=> b!4698261 (= e!2930829 (getKeysList!876 (toList!5662 lt!1859827)))))

(assert (= (and d!1493993 c!803175) b!4698255))

(assert (= (and d!1493993 (not c!803175)) b!4698254))

(assert (= (and b!4698254 c!803176) b!4698258))

(assert (= (and b!4698254 (not c!803176)) b!4698257))

(assert (= (or b!4698255 b!4698254) bm!328440))

(assert (= (and bm!328440 c!803174) b!4698261))

(assert (= (and bm!328440 (not c!803174)) b!4698260))

(assert (= (and d!1493993 res!1983038) b!4698259))

(assert (= (and d!1493993 (not res!1983039)) b!4698253))

(assert (= (and b!4698253 res!1983040) b!4698256))

(declare-fun m!5609811 () Bool)

(assert (=> b!4698253 m!5609811))

(assert (=> b!4698253 m!5609811))

(declare-fun m!5609813 () Bool)

(assert (=> b!4698253 m!5609813))

(declare-fun m!5609815 () Bool)

(assert (=> b!4698258 m!5609815))

(declare-fun m!5609817 () Bool)

(assert (=> b!4698258 m!5609817))

(declare-fun m!5609819 () Bool)

(assert (=> b!4698255 m!5609819))

(assert (=> b!4698255 m!5609811))

(assert (=> b!4698255 m!5609811))

(assert (=> b!4698255 m!5609813))

(declare-fun m!5609821 () Bool)

(assert (=> b!4698255 m!5609821))

(assert (=> b!4698256 m!5609249))

(assert (=> b!4698256 m!5609249))

(declare-fun m!5609823 () Bool)

(assert (=> b!4698256 m!5609823))

(assert (=> d!1493993 m!5609815))

(assert (=> b!4698260 m!5609249))

(declare-fun m!5609825 () Bool)

(assert (=> bm!328440 m!5609825))

(declare-fun m!5609827 () Bool)

(assert (=> b!4698261 m!5609827))

(assert (=> b!4698259 m!5609249))

(assert (=> b!4698259 m!5609249))

(assert (=> b!4698259 m!5609823))

(assert (=> b!4697958 d!1493993))

(declare-fun bs!1093039 () Bool)

(declare-fun b!4698262 () Bool)

(assert (= bs!1093039 (and b!4698262 b!4698241)))

(declare-fun lambda!209510 () Int)

(assert (=> bs!1093039 (= lambda!209510 lambda!209503)))

(declare-fun bs!1093040 () Bool)

(assert (= bs!1093040 (and b!4698262 d!1493887)))

(assert (=> bs!1093040 (not (= lambda!209510 lambda!209412))))

(declare-fun bs!1093041 () Bool)

(assert (= bs!1093041 (and b!4698262 b!4698238)))

(assert (=> bs!1093041 (= lambda!209510 lambda!209502)))

(declare-fun bs!1093042 () Bool)

(assert (= bs!1093042 (and b!4698262 d!1493923)))

(assert (=> bs!1093042 (= (= lt!1859824 lt!1860213) (= lambda!209510 lambda!209505))))

(assert (=> bs!1093039 (= (= lt!1859824 lt!1860221) (= lambda!209510 lambda!209504))))

(assert (=> b!4698262 true))

(declare-fun bs!1093043 () Bool)

(declare-fun b!4698265 () Bool)

(assert (= bs!1093043 (and b!4698265 b!4698241)))

(declare-fun lambda!209513 () Int)

(assert (=> bs!1093043 (= lambda!209513 lambda!209503)))

(declare-fun bs!1093044 () Bool)

(assert (= bs!1093044 (and b!4698265 d!1493887)))

(assert (=> bs!1093044 (not (= lambda!209513 lambda!209412))))

(declare-fun bs!1093045 () Bool)

(assert (= bs!1093045 (and b!4698265 b!4698238)))

(assert (=> bs!1093045 (= lambda!209513 lambda!209502)))

(declare-fun bs!1093046 () Bool)

(assert (= bs!1093046 (and b!4698265 d!1493923)))

(assert (=> bs!1093046 (= (= lt!1859824 lt!1860213) (= lambda!209513 lambda!209505))))

(assert (=> bs!1093043 (= (= lt!1859824 lt!1860221) (= lambda!209513 lambda!209504))))

(declare-fun bs!1093047 () Bool)

(assert (= bs!1093047 (and b!4698265 b!4698262)))

(assert (=> bs!1093047 (= lambda!209513 lambda!209510)))

(assert (=> b!4698265 true))

(declare-fun lambda!209514 () Int)

(declare-fun lt!1860260 () ListMap!5025)

(assert (=> bs!1093043 (= (= lt!1860260 lt!1859824) (= lambda!209514 lambda!209503))))

(assert (=> bs!1093044 (not (= lambda!209514 lambda!209412))))

(assert (=> bs!1093045 (= (= lt!1860260 lt!1859824) (= lambda!209514 lambda!209502))))

(assert (=> bs!1093043 (= (= lt!1860260 lt!1860221) (= lambda!209514 lambda!209504))))

(assert (=> bs!1093047 (= (= lt!1860260 lt!1859824) (= lambda!209514 lambda!209510))))

(assert (=> b!4698265 (= (= lt!1860260 lt!1859824) (= lambda!209514 lambda!209513))))

(assert (=> bs!1093046 (= (= lt!1860260 lt!1860213) (= lambda!209514 lambda!209505))))

(assert (=> b!4698265 true))

(declare-fun bs!1093048 () Bool)

(declare-fun d!1493995 () Bool)

(assert (= bs!1093048 (and d!1493995 b!4698241)))

(declare-fun lt!1860252 () ListMap!5025)

(declare-fun lambda!209517 () Int)

(assert (=> bs!1093048 (= (= lt!1860252 lt!1859824) (= lambda!209517 lambda!209503))))

(declare-fun bs!1093049 () Bool)

(assert (= bs!1093049 (and d!1493995 d!1493887)))

(assert (=> bs!1093049 (not (= lambda!209517 lambda!209412))))

(declare-fun bs!1093050 () Bool)

(assert (= bs!1093050 (and d!1493995 b!4698238)))

(assert (=> bs!1093050 (= (= lt!1860252 lt!1859824) (= lambda!209517 lambda!209502))))

(declare-fun bs!1093051 () Bool)

(assert (= bs!1093051 (and d!1493995 b!4698265)))

(assert (=> bs!1093051 (= (= lt!1860252 lt!1860260) (= lambda!209517 lambda!209514))))

(assert (=> bs!1093048 (= (= lt!1860252 lt!1860221) (= lambda!209517 lambda!209504))))

(declare-fun bs!1093052 () Bool)

(assert (= bs!1093052 (and d!1493995 b!4698262)))

(assert (=> bs!1093052 (= (= lt!1860252 lt!1859824) (= lambda!209517 lambda!209510))))

(assert (=> bs!1093051 (= (= lt!1860252 lt!1859824) (= lambda!209517 lambda!209513))))

(declare-fun bs!1093053 () Bool)

(assert (= bs!1093053 (and d!1493995 d!1493923)))

(assert (=> bs!1093053 (= (= lt!1860252 lt!1860213) (= lambda!209517 lambda!209505))))

(assert (=> d!1493995 true))

(declare-fun call!328447 () Bool)

(declare-fun bm!328441 () Bool)

(declare-fun c!803177 () Bool)

(assert (=> bm!328441 (= call!328447 (forall!11381 (ite c!803177 (toList!5662 lt!1859824) lt!1859850) (ite c!803177 lambda!209510 lambda!209514)))))

(declare-fun e!2930835 () ListMap!5025)

(assert (=> b!4698262 (= e!2930835 lt!1859824)))

(declare-fun lt!1860263 () Unit!125616)

(declare-fun call!328448 () Unit!125616)

(assert (=> b!4698262 (= lt!1860263 call!328448)))

(assert (=> b!4698262 call!328447))

(declare-fun lt!1860271 () Unit!125616)

(assert (=> b!4698262 (= lt!1860271 lt!1860263)))

(declare-fun call!328446 () Bool)

(assert (=> b!4698262 call!328446))

(declare-fun lt!1860270 () Unit!125616)

(declare-fun Unit!125679 () Unit!125616)

(assert (=> b!4698262 (= lt!1860270 Unit!125679)))

(declare-fun e!2930834 () Bool)

(assert (=> d!1493995 e!2930834))

(declare-fun res!1983042 () Bool)

(assert (=> d!1493995 (=> (not res!1983042) (not e!2930834))))

(assert (=> d!1493995 (= res!1983042 (forall!11381 lt!1859850 lambda!209517))))

(assert (=> d!1493995 (= lt!1860252 e!2930835)))

(assert (=> d!1493995 (= c!803177 ((_ is Nil!52499) lt!1859850))))

(assert (=> d!1493995 (noDuplicateKeys!1886 lt!1859850)))

(assert (=> d!1493995 (= (addToMapMapFromBucket!1318 lt!1859850 lt!1859824) lt!1860252)))

(declare-fun b!4698263 () Bool)

(assert (=> b!4698263 (= e!2930834 (invariantList!1436 (toList!5662 lt!1860252)))))

(declare-fun b!4698264 () Bool)

(declare-fun res!1983043 () Bool)

(assert (=> b!4698264 (=> (not res!1983043) (not e!2930834))))

(assert (=> b!4698264 (= res!1983043 (forall!11381 (toList!5662 lt!1859824) lambda!209517))))

(assert (=> b!4698265 (= e!2930835 lt!1860260)))

(declare-fun lt!1860251 () ListMap!5025)

(assert (=> b!4698265 (= lt!1860251 (+!2170 lt!1859824 (h!58770 lt!1859850)))))

(assert (=> b!4698265 (= lt!1860260 (addToMapMapFromBucket!1318 (t!359825 lt!1859850) (+!2170 lt!1859824 (h!58770 lt!1859850))))))

(declare-fun lt!1860262 () Unit!125616)

(assert (=> b!4698265 (= lt!1860262 call!328448)))

(assert (=> b!4698265 (forall!11381 (toList!5662 lt!1859824) lambda!209513)))

(declare-fun lt!1860258 () Unit!125616)

(assert (=> b!4698265 (= lt!1860258 lt!1860262)))

(assert (=> b!4698265 (forall!11381 (toList!5662 lt!1860251) lambda!209514)))

(declare-fun lt!1860268 () Unit!125616)

(declare-fun Unit!125680 () Unit!125616)

(assert (=> b!4698265 (= lt!1860268 Unit!125680)))

(assert (=> b!4698265 (forall!11381 (t!359825 lt!1859850) lambda!209514)))

(declare-fun lt!1860264 () Unit!125616)

(declare-fun Unit!125681 () Unit!125616)

(assert (=> b!4698265 (= lt!1860264 Unit!125681)))

(declare-fun lt!1860266 () Unit!125616)

(declare-fun Unit!125682 () Unit!125616)

(assert (=> b!4698265 (= lt!1860266 Unit!125682)))

(declare-fun lt!1860257 () Unit!125616)

(assert (=> b!4698265 (= lt!1860257 (forallContained!3488 (toList!5662 lt!1860251) lambda!209514 (h!58770 lt!1859850)))))

(assert (=> b!4698265 (contains!15758 lt!1860251 (_1!30263 (h!58770 lt!1859850)))))

(declare-fun lt!1860256 () Unit!125616)

(declare-fun Unit!125683 () Unit!125616)

(assert (=> b!4698265 (= lt!1860256 Unit!125683)))

(assert (=> b!4698265 (contains!15758 lt!1860260 (_1!30263 (h!58770 lt!1859850)))))

(declare-fun lt!1860259 () Unit!125616)

(declare-fun Unit!125684 () Unit!125616)

(assert (=> b!4698265 (= lt!1860259 Unit!125684)))

(assert (=> b!4698265 (forall!11381 lt!1859850 lambda!209514)))

(declare-fun lt!1860261 () Unit!125616)

(declare-fun Unit!125685 () Unit!125616)

(assert (=> b!4698265 (= lt!1860261 Unit!125685)))

(assert (=> b!4698265 (forall!11381 (toList!5662 lt!1860251) lambda!209514)))

(declare-fun lt!1860269 () Unit!125616)

(declare-fun Unit!125686 () Unit!125616)

(assert (=> b!4698265 (= lt!1860269 Unit!125686)))

(declare-fun lt!1860255 () Unit!125616)

(declare-fun Unit!125687 () Unit!125616)

(assert (=> b!4698265 (= lt!1860255 Unit!125687)))

(declare-fun lt!1860265 () Unit!125616)

(assert (=> b!4698265 (= lt!1860265 (addForallContainsKeyThenBeforeAdding!723 lt!1859824 lt!1860260 (_1!30263 (h!58770 lt!1859850)) (_2!30263 (h!58770 lt!1859850))))))

(assert (=> b!4698265 (forall!11381 (toList!5662 lt!1859824) lambda!209514)))

(declare-fun lt!1860253 () Unit!125616)

(assert (=> b!4698265 (= lt!1860253 lt!1860265)))

(assert (=> b!4698265 (forall!11381 (toList!5662 lt!1859824) lambda!209514)))

(declare-fun lt!1860267 () Unit!125616)

(declare-fun Unit!125688 () Unit!125616)

(assert (=> b!4698265 (= lt!1860267 Unit!125688)))

(declare-fun res!1983041 () Bool)

(assert (=> b!4698265 (= res!1983041 call!328447)))

(declare-fun e!2930836 () Bool)

(assert (=> b!4698265 (=> (not res!1983041) (not e!2930836))))

(assert (=> b!4698265 e!2930836))

(declare-fun lt!1860254 () Unit!125616)

(declare-fun Unit!125689 () Unit!125616)

(assert (=> b!4698265 (= lt!1860254 Unit!125689)))

(declare-fun bm!328442 () Bool)

(assert (=> bm!328442 (= call!328448 (lemmaContainsAllItsOwnKeys!724 lt!1859824))))

(declare-fun b!4698266 () Bool)

(assert (=> b!4698266 (= e!2930836 call!328446)))

(declare-fun bm!328443 () Bool)

(assert (=> bm!328443 (= call!328446 (forall!11381 (toList!5662 lt!1859824) (ite c!803177 lambda!209510 lambda!209514)))))

(assert (= (and d!1493995 c!803177) b!4698262))

(assert (= (and d!1493995 (not c!803177)) b!4698265))

(assert (= (and b!4698265 res!1983041) b!4698266))

(assert (= (or b!4698262 b!4698265) bm!328442))

(assert (= (or b!4698262 b!4698265) bm!328441))

(assert (= (or b!4698262 b!4698266) bm!328443))

(assert (= (and d!1493995 res!1983042) b!4698264))

(assert (= (and b!4698264 res!1983043) b!4698263))

(declare-fun m!5609829 () Bool)

(assert (=> bm!328443 m!5609829))

(declare-fun m!5609831 () Bool)

(assert (=> b!4698263 m!5609831))

(declare-fun m!5609833 () Bool)

(assert (=> bm!328441 m!5609833))

(assert (=> bm!328442 m!5609739))

(declare-fun m!5609835 () Bool)

(assert (=> b!4698265 m!5609835))

(declare-fun m!5609837 () Bool)

(assert (=> b!4698265 m!5609837))

(declare-fun m!5609839 () Bool)

(assert (=> b!4698265 m!5609839))

(declare-fun m!5609841 () Bool)

(assert (=> b!4698265 m!5609841))

(declare-fun m!5609843 () Bool)

(assert (=> b!4698265 m!5609843))

(declare-fun m!5609845 () Bool)

(assert (=> b!4698265 m!5609845))

(declare-fun m!5609847 () Bool)

(assert (=> b!4698265 m!5609847))

(assert (=> b!4698265 m!5609843))

(declare-fun m!5609849 () Bool)

(assert (=> b!4698265 m!5609849))

(assert (=> b!4698265 m!5609837))

(declare-fun m!5609851 () Bool)

(assert (=> b!4698265 m!5609851))

(declare-fun m!5609853 () Bool)

(assert (=> b!4698265 m!5609853))

(assert (=> b!4698265 m!5609853))

(declare-fun m!5609855 () Bool)

(assert (=> b!4698265 m!5609855))

(declare-fun m!5609857 () Bool)

(assert (=> b!4698264 m!5609857))

(declare-fun m!5609859 () Bool)

(assert (=> d!1493995 m!5609859))

(assert (=> d!1493995 m!5609399))

(assert (=> b!4697958 d!1493995))

(declare-fun d!1493997 () Bool)

(assert (=> d!1493997 (= (eq!1045 (addToMapMapFromBucket!1318 (Cons!52499 lt!1859821 lt!1859850) lt!1859824) (+!2170 (addToMapMapFromBucket!1318 lt!1859850 lt!1859824) lt!1859821)) (= (content!9237 (toList!5662 (addToMapMapFromBucket!1318 (Cons!52499 lt!1859821 lt!1859850) lt!1859824))) (content!9237 (toList!5662 (+!2170 (addToMapMapFromBucket!1318 lt!1859850 lt!1859824) lt!1859821)))))))

(declare-fun bs!1093054 () Bool)

(assert (= bs!1093054 d!1493997))

(declare-fun m!5609861 () Bool)

(assert (=> bs!1093054 m!5609861))

(declare-fun m!5609863 () Bool)

(assert (=> bs!1093054 m!5609863))

(assert (=> b!4697958 d!1493997))

(declare-fun d!1493999 () Bool)

(declare-fun e!2930841 () Bool)

(assert (=> d!1493999 e!2930841))

(declare-fun res!1983052 () Bool)

(assert (=> d!1493999 (=> (not res!1983052) (not e!2930841))))

(declare-fun lt!1860295 () ListMap!5025)

(assert (=> d!1493999 (= res!1983052 (contains!15758 lt!1860295 (_1!30263 (h!58770 oldBucket!34))))))

(declare-fun lt!1860293 () List!52623)

(assert (=> d!1493999 (= lt!1860295 (ListMap!5026 lt!1860293))))

(declare-fun lt!1860291 () Unit!125616)

(declare-fun lt!1860292 () Unit!125616)

(assert (=> d!1493999 (= lt!1860291 lt!1860292)))

(assert (=> d!1493999 (= (getValueByKey!1831 lt!1860293 (_1!30263 (h!58770 oldBucket!34))) (Some!12162 (_2!30263 (h!58770 oldBucket!34))))))

(assert (=> d!1493999 (= lt!1860292 (lemmaContainsTupThenGetReturnValue!1026 lt!1860293 (_1!30263 (h!58770 oldBucket!34)) (_2!30263 (h!58770 oldBucket!34))))))

(assert (=> d!1493999 (= lt!1860293 (insertNoDuplicatedKeys!534 (toList!5662 lt!1859852) (_1!30263 (h!58770 oldBucket!34)) (_2!30263 (h!58770 oldBucket!34))))))

(assert (=> d!1493999 (= (+!2170 lt!1859852 (h!58770 oldBucket!34)) lt!1860295)))

(declare-fun b!4698275 () Bool)

(declare-fun res!1983055 () Bool)

(assert (=> b!4698275 (=> (not res!1983055) (not e!2930841))))

(assert (=> b!4698275 (= res!1983055 (= (getValueByKey!1831 (toList!5662 lt!1860295) (_1!30263 (h!58770 oldBucket!34))) (Some!12162 (_2!30263 (h!58770 oldBucket!34)))))))

(declare-fun b!4698276 () Bool)

(assert (=> b!4698276 (= e!2930841 (contains!15761 (toList!5662 lt!1860295) (h!58770 oldBucket!34)))))

(assert (= (and d!1493999 res!1983052) b!4698275))

(assert (= (and b!4698275 res!1983055) b!4698276))

(declare-fun m!5609865 () Bool)

(assert (=> d!1493999 m!5609865))

(declare-fun m!5609867 () Bool)

(assert (=> d!1493999 m!5609867))

(declare-fun m!5609869 () Bool)

(assert (=> d!1493999 m!5609869))

(declare-fun m!5609871 () Bool)

(assert (=> d!1493999 m!5609871))

(declare-fun m!5609873 () Bool)

(assert (=> b!4698275 m!5609873))

(declare-fun m!5609875 () Bool)

(assert (=> b!4698276 m!5609875))

(assert (=> b!4697958 d!1493999))

(declare-fun bs!1093063 () Bool)

(declare-fun b!4698281 () Bool)

(assert (= bs!1093063 (and b!4698281 d!1493887)))

(declare-fun lambda!209519 () Int)

(assert (=> bs!1093063 (not (= lambda!209519 lambda!209412))))

(declare-fun bs!1093065 () Bool)

(assert (= bs!1093065 (and b!4698281 b!4698238)))

(assert (=> bs!1093065 (= lambda!209519 lambda!209502)))

(declare-fun bs!1093067 () Bool)

(assert (= bs!1093067 (and b!4698281 b!4698265)))

(assert (=> bs!1093067 (= (= lt!1859824 lt!1860260) (= lambda!209519 lambda!209514))))

(declare-fun bs!1093069 () Bool)

(assert (= bs!1093069 (and b!4698281 b!4698241)))

(assert (=> bs!1093069 (= (= lt!1859824 lt!1860221) (= lambda!209519 lambda!209504))))

(declare-fun bs!1093071 () Bool)

(assert (= bs!1093071 (and b!4698281 b!4698262)))

(assert (=> bs!1093071 (= lambda!209519 lambda!209510)))

(declare-fun bs!1093073 () Bool)

(assert (= bs!1093073 (and b!4698281 d!1493995)))

(assert (=> bs!1093073 (= (= lt!1859824 lt!1860252) (= lambda!209519 lambda!209517))))

(assert (=> bs!1093069 (= lambda!209519 lambda!209503)))

(assert (=> bs!1093067 (= lambda!209519 lambda!209513)))

(declare-fun bs!1093074 () Bool)

(assert (= bs!1093074 (and b!4698281 d!1493923)))

(assert (=> bs!1093074 (= (= lt!1859824 lt!1860213) (= lambda!209519 lambda!209505))))

(assert (=> b!4698281 true))

(declare-fun bs!1093075 () Bool)

(declare-fun b!4698284 () Bool)

(assert (= bs!1093075 (and b!4698284 d!1493887)))

(declare-fun lambda!209520 () Int)

(assert (=> bs!1093075 (not (= lambda!209520 lambda!209412))))

(declare-fun bs!1093076 () Bool)

(assert (= bs!1093076 (and b!4698284 b!4698238)))

(assert (=> bs!1093076 (= lambda!209520 lambda!209502)))

(declare-fun bs!1093077 () Bool)

(assert (= bs!1093077 (and b!4698284 b!4698265)))

(assert (=> bs!1093077 (= (= lt!1859824 lt!1860260) (= lambda!209520 lambda!209514))))

(declare-fun bs!1093078 () Bool)

(assert (= bs!1093078 (and b!4698284 b!4698241)))

(assert (=> bs!1093078 (= (= lt!1859824 lt!1860221) (= lambda!209520 lambda!209504))))

(declare-fun bs!1093079 () Bool)

(assert (= bs!1093079 (and b!4698284 b!4698281)))

(assert (=> bs!1093079 (= lambda!209520 lambda!209519)))

(declare-fun bs!1093080 () Bool)

(assert (= bs!1093080 (and b!4698284 b!4698262)))

(assert (=> bs!1093080 (= lambda!209520 lambda!209510)))

(declare-fun bs!1093081 () Bool)

(assert (= bs!1093081 (and b!4698284 d!1493995)))

(assert (=> bs!1093081 (= (= lt!1859824 lt!1860252) (= lambda!209520 lambda!209517))))

(assert (=> bs!1093078 (= lambda!209520 lambda!209503)))

(assert (=> bs!1093077 (= lambda!209520 lambda!209513)))

(declare-fun bs!1093082 () Bool)

(assert (= bs!1093082 (and b!4698284 d!1493923)))

(assert (=> bs!1093082 (= (= lt!1859824 lt!1860213) (= lambda!209520 lambda!209505))))

(assert (=> b!4698284 true))

(declare-fun lambda!209521 () Int)

(assert (=> bs!1093075 (not (= lambda!209521 lambda!209412))))

(declare-fun lt!1860309 () ListMap!5025)

(assert (=> bs!1093076 (= (= lt!1860309 lt!1859824) (= lambda!209521 lambda!209502))))

(assert (=> bs!1093077 (= (= lt!1860309 lt!1860260) (= lambda!209521 lambda!209514))))

(assert (=> b!4698284 (= (= lt!1860309 lt!1859824) (= lambda!209521 lambda!209520))))

(assert (=> bs!1093078 (= (= lt!1860309 lt!1860221) (= lambda!209521 lambda!209504))))

(assert (=> bs!1093079 (= (= lt!1860309 lt!1859824) (= lambda!209521 lambda!209519))))

(assert (=> bs!1093080 (= (= lt!1860309 lt!1859824) (= lambda!209521 lambda!209510))))

(assert (=> bs!1093081 (= (= lt!1860309 lt!1860252) (= lambda!209521 lambda!209517))))

(assert (=> bs!1093078 (= (= lt!1860309 lt!1859824) (= lambda!209521 lambda!209503))))

(assert (=> bs!1093077 (= (= lt!1860309 lt!1859824) (= lambda!209521 lambda!209513))))

(assert (=> bs!1093082 (= (= lt!1860309 lt!1860213) (= lambda!209521 lambda!209505))))

(assert (=> b!4698284 true))

(declare-fun bs!1093083 () Bool)

(declare-fun d!1494001 () Bool)

(assert (= bs!1093083 (and d!1494001 d!1493887)))

(declare-fun lambda!209522 () Int)

(assert (=> bs!1093083 (not (= lambda!209522 lambda!209412))))

(declare-fun bs!1093084 () Bool)

(assert (= bs!1093084 (and d!1494001 b!4698238)))

(declare-fun lt!1860301 () ListMap!5025)

(assert (=> bs!1093084 (= (= lt!1860301 lt!1859824) (= lambda!209522 lambda!209502))))

(declare-fun bs!1093085 () Bool)

(assert (= bs!1093085 (and d!1494001 b!4698265)))

(assert (=> bs!1093085 (= (= lt!1860301 lt!1860260) (= lambda!209522 lambda!209514))))

(declare-fun bs!1093086 () Bool)

(assert (= bs!1093086 (and d!1494001 b!4698284)))

(assert (=> bs!1093086 (= (= lt!1860301 lt!1859824) (= lambda!209522 lambda!209520))))

(declare-fun bs!1093087 () Bool)

(assert (= bs!1093087 (and d!1494001 b!4698241)))

(assert (=> bs!1093087 (= (= lt!1860301 lt!1860221) (= lambda!209522 lambda!209504))))

(declare-fun bs!1093088 () Bool)

(assert (= bs!1093088 (and d!1494001 b!4698281)))

(assert (=> bs!1093088 (= (= lt!1860301 lt!1859824) (= lambda!209522 lambda!209519))))

(declare-fun bs!1093089 () Bool)

(assert (= bs!1093089 (and d!1494001 b!4698262)))

(assert (=> bs!1093089 (= (= lt!1860301 lt!1859824) (= lambda!209522 lambda!209510))))

(assert (=> bs!1093086 (= (= lt!1860301 lt!1860309) (= lambda!209522 lambda!209521))))

(declare-fun bs!1093090 () Bool)

(assert (= bs!1093090 (and d!1494001 d!1493995)))

(assert (=> bs!1093090 (= (= lt!1860301 lt!1860252) (= lambda!209522 lambda!209517))))

(assert (=> bs!1093087 (= (= lt!1860301 lt!1859824) (= lambda!209522 lambda!209503))))

(assert (=> bs!1093085 (= (= lt!1860301 lt!1859824) (= lambda!209522 lambda!209513))))

(declare-fun bs!1093091 () Bool)

(assert (= bs!1093091 (and d!1494001 d!1493923)))

(assert (=> bs!1093091 (= (= lt!1860301 lt!1860213) (= lambda!209522 lambda!209505))))

(assert (=> d!1494001 true))

(declare-fun bm!328444 () Bool)

(declare-fun call!328450 () Bool)

(declare-fun c!803178 () Bool)

(assert (=> bm!328444 (= call!328450 (forall!11381 (ite c!803178 (toList!5662 lt!1859824) lt!1859828) (ite c!803178 lambda!209519 lambda!209521)))))

(declare-fun e!2930845 () ListMap!5025)

(assert (=> b!4698281 (= e!2930845 lt!1859824)))

(declare-fun lt!1860312 () Unit!125616)

(declare-fun call!328451 () Unit!125616)

(assert (=> b!4698281 (= lt!1860312 call!328451)))

(assert (=> b!4698281 call!328450))

(declare-fun lt!1860320 () Unit!125616)

(assert (=> b!4698281 (= lt!1860320 lt!1860312)))

(declare-fun call!328449 () Bool)

(assert (=> b!4698281 call!328449))

(declare-fun lt!1860319 () Unit!125616)

(declare-fun Unit!125701 () Unit!125616)

(assert (=> b!4698281 (= lt!1860319 Unit!125701)))

(declare-fun e!2930844 () Bool)

(assert (=> d!1494001 e!2930844))

(declare-fun res!1983059 () Bool)

(assert (=> d!1494001 (=> (not res!1983059) (not e!2930844))))

(assert (=> d!1494001 (= res!1983059 (forall!11381 lt!1859828 lambda!209522))))

(assert (=> d!1494001 (= lt!1860301 e!2930845)))

(assert (=> d!1494001 (= c!803178 ((_ is Nil!52499) lt!1859828))))

(assert (=> d!1494001 (noDuplicateKeys!1886 lt!1859828)))

(assert (=> d!1494001 (= (addToMapMapFromBucket!1318 lt!1859828 lt!1859824) lt!1860301)))

(declare-fun b!4698282 () Bool)

(assert (=> b!4698282 (= e!2930844 (invariantList!1436 (toList!5662 lt!1860301)))))

(declare-fun b!4698283 () Bool)

(declare-fun res!1983060 () Bool)

(assert (=> b!4698283 (=> (not res!1983060) (not e!2930844))))

(assert (=> b!4698283 (= res!1983060 (forall!11381 (toList!5662 lt!1859824) lambda!209522))))

(assert (=> b!4698284 (= e!2930845 lt!1860309)))

(declare-fun lt!1860300 () ListMap!5025)

(assert (=> b!4698284 (= lt!1860300 (+!2170 lt!1859824 (h!58770 lt!1859828)))))

(assert (=> b!4698284 (= lt!1860309 (addToMapMapFromBucket!1318 (t!359825 lt!1859828) (+!2170 lt!1859824 (h!58770 lt!1859828))))))

(declare-fun lt!1860311 () Unit!125616)

(assert (=> b!4698284 (= lt!1860311 call!328451)))

(assert (=> b!4698284 (forall!11381 (toList!5662 lt!1859824) lambda!209520)))

(declare-fun lt!1860307 () Unit!125616)

(assert (=> b!4698284 (= lt!1860307 lt!1860311)))

(assert (=> b!4698284 (forall!11381 (toList!5662 lt!1860300) lambda!209521)))

(declare-fun lt!1860317 () Unit!125616)

(declare-fun Unit!125702 () Unit!125616)

(assert (=> b!4698284 (= lt!1860317 Unit!125702)))

(assert (=> b!4698284 (forall!11381 (t!359825 lt!1859828) lambda!209521)))

(declare-fun lt!1860313 () Unit!125616)

(declare-fun Unit!125703 () Unit!125616)

(assert (=> b!4698284 (= lt!1860313 Unit!125703)))

(declare-fun lt!1860315 () Unit!125616)

(declare-fun Unit!125704 () Unit!125616)

(assert (=> b!4698284 (= lt!1860315 Unit!125704)))

(declare-fun lt!1860306 () Unit!125616)

(assert (=> b!4698284 (= lt!1860306 (forallContained!3488 (toList!5662 lt!1860300) lambda!209521 (h!58770 lt!1859828)))))

(assert (=> b!4698284 (contains!15758 lt!1860300 (_1!30263 (h!58770 lt!1859828)))))

(declare-fun lt!1860305 () Unit!125616)

(declare-fun Unit!125705 () Unit!125616)

(assert (=> b!4698284 (= lt!1860305 Unit!125705)))

(assert (=> b!4698284 (contains!15758 lt!1860309 (_1!30263 (h!58770 lt!1859828)))))

(declare-fun lt!1860308 () Unit!125616)

(declare-fun Unit!125706 () Unit!125616)

(assert (=> b!4698284 (= lt!1860308 Unit!125706)))

(assert (=> b!4698284 (forall!11381 lt!1859828 lambda!209521)))

(declare-fun lt!1860310 () Unit!125616)

(declare-fun Unit!125707 () Unit!125616)

(assert (=> b!4698284 (= lt!1860310 Unit!125707)))

(assert (=> b!4698284 (forall!11381 (toList!5662 lt!1860300) lambda!209521)))

(declare-fun lt!1860318 () Unit!125616)

(declare-fun Unit!125708 () Unit!125616)

(assert (=> b!4698284 (= lt!1860318 Unit!125708)))

(declare-fun lt!1860304 () Unit!125616)

(declare-fun Unit!125709 () Unit!125616)

(assert (=> b!4698284 (= lt!1860304 Unit!125709)))

(declare-fun lt!1860314 () Unit!125616)

(assert (=> b!4698284 (= lt!1860314 (addForallContainsKeyThenBeforeAdding!723 lt!1859824 lt!1860309 (_1!30263 (h!58770 lt!1859828)) (_2!30263 (h!58770 lt!1859828))))))

(assert (=> b!4698284 (forall!11381 (toList!5662 lt!1859824) lambda!209521)))

(declare-fun lt!1860302 () Unit!125616)

(assert (=> b!4698284 (= lt!1860302 lt!1860314)))

(assert (=> b!4698284 (forall!11381 (toList!5662 lt!1859824) lambda!209521)))

(declare-fun lt!1860316 () Unit!125616)

(declare-fun Unit!125711 () Unit!125616)

(assert (=> b!4698284 (= lt!1860316 Unit!125711)))

(declare-fun res!1983058 () Bool)

(assert (=> b!4698284 (= res!1983058 call!328450)))

(declare-fun e!2930846 () Bool)

(assert (=> b!4698284 (=> (not res!1983058) (not e!2930846))))

(assert (=> b!4698284 e!2930846))

(declare-fun lt!1860303 () Unit!125616)

(declare-fun Unit!125712 () Unit!125616)

(assert (=> b!4698284 (= lt!1860303 Unit!125712)))

(declare-fun bm!328445 () Bool)

(assert (=> bm!328445 (= call!328451 (lemmaContainsAllItsOwnKeys!724 lt!1859824))))

(declare-fun b!4698285 () Bool)

(assert (=> b!4698285 (= e!2930846 call!328449)))

(declare-fun bm!328446 () Bool)

(assert (=> bm!328446 (= call!328449 (forall!11381 (toList!5662 lt!1859824) (ite c!803178 lambda!209519 lambda!209521)))))

(assert (= (and d!1494001 c!803178) b!4698281))

(assert (= (and d!1494001 (not c!803178)) b!4698284))

(assert (= (and b!4698284 res!1983058) b!4698285))

(assert (= (or b!4698281 b!4698284) bm!328445))

(assert (= (or b!4698281 b!4698284) bm!328444))

(assert (= (or b!4698281 b!4698285) bm!328446))

(assert (= (and d!1494001 res!1983059) b!4698283))

(assert (= (and b!4698283 res!1983060) b!4698282))

(declare-fun m!5609899 () Bool)

(assert (=> bm!328446 m!5609899))

(declare-fun m!5609901 () Bool)

(assert (=> b!4698282 m!5609901))

(declare-fun m!5609903 () Bool)

(assert (=> bm!328444 m!5609903))

(assert (=> bm!328445 m!5609739))

(declare-fun m!5609905 () Bool)

(assert (=> b!4698284 m!5609905))

(declare-fun m!5609907 () Bool)

(assert (=> b!4698284 m!5609907))

(declare-fun m!5609909 () Bool)

(assert (=> b!4698284 m!5609909))

(declare-fun m!5609911 () Bool)

(assert (=> b!4698284 m!5609911))

(declare-fun m!5609913 () Bool)

(assert (=> b!4698284 m!5609913))

(declare-fun m!5609915 () Bool)

(assert (=> b!4698284 m!5609915))

(declare-fun m!5609917 () Bool)

(assert (=> b!4698284 m!5609917))

(assert (=> b!4698284 m!5609913))

(declare-fun m!5609919 () Bool)

(assert (=> b!4698284 m!5609919))

(assert (=> b!4698284 m!5609907))

(declare-fun m!5609921 () Bool)

(assert (=> b!4698284 m!5609921))

(declare-fun m!5609923 () Bool)

(assert (=> b!4698284 m!5609923))

(assert (=> b!4698284 m!5609923))

(declare-fun m!5609925 () Bool)

(assert (=> b!4698284 m!5609925))

(declare-fun m!5609927 () Bool)

(assert (=> b!4698283 m!5609927))

(declare-fun m!5609929 () Bool)

(assert (=> d!1494001 m!5609929))

(assert (=> d!1494001 m!5609361))

(assert (=> b!4697958 d!1494001))

(declare-fun d!1494005 () Bool)

(assert (=> d!1494005 (= (eq!1045 (addToMapMapFromBucket!1318 (Cons!52499 lt!1859832 lt!1859828) lt!1859824) (+!2170 (addToMapMapFromBucket!1318 lt!1859828 lt!1859824) lt!1859832)) (= (content!9237 (toList!5662 (addToMapMapFromBucket!1318 (Cons!52499 lt!1859832 lt!1859828) lt!1859824))) (content!9237 (toList!5662 (+!2170 (addToMapMapFromBucket!1318 lt!1859828 lt!1859824) lt!1859832)))))))

(declare-fun bs!1093092 () Bool)

(assert (= bs!1093092 d!1494005))

(declare-fun m!5609931 () Bool)

(assert (=> bs!1093092 m!5609931))

(declare-fun m!5609933 () Bool)

(assert (=> bs!1093092 m!5609933))

(assert (=> b!4697958 d!1494005))

(declare-fun bs!1093093 () Bool)

(declare-fun b!4698290 () Bool)

(assert (= bs!1093093 (and b!4698290 d!1493887)))

(declare-fun lambda!209523 () Int)

(assert (=> bs!1093093 (not (= lambda!209523 lambda!209412))))

(declare-fun bs!1093094 () Bool)

(assert (= bs!1093094 (and b!4698290 b!4698238)))

(assert (=> bs!1093094 (= lambda!209523 lambda!209502)))

(declare-fun bs!1093095 () Bool)

(assert (= bs!1093095 (and b!4698290 b!4698265)))

(assert (=> bs!1093095 (= (= lt!1859824 lt!1860260) (= lambda!209523 lambda!209514))))

(declare-fun bs!1093096 () Bool)

(assert (= bs!1093096 (and b!4698290 b!4698284)))

(assert (=> bs!1093096 (= lambda!209523 lambda!209520)))

(declare-fun bs!1093097 () Bool)

(assert (= bs!1093097 (and b!4698290 b!4698241)))

(assert (=> bs!1093097 (= (= lt!1859824 lt!1860221) (= lambda!209523 lambda!209504))))

(declare-fun bs!1093098 () Bool)

(assert (= bs!1093098 (and b!4698290 d!1494001)))

(assert (=> bs!1093098 (= (= lt!1859824 lt!1860301) (= lambda!209523 lambda!209522))))

(declare-fun bs!1093099 () Bool)

(assert (= bs!1093099 (and b!4698290 b!4698281)))

(assert (=> bs!1093099 (= lambda!209523 lambda!209519)))

(declare-fun bs!1093100 () Bool)

(assert (= bs!1093100 (and b!4698290 b!4698262)))

(assert (=> bs!1093100 (= lambda!209523 lambda!209510)))

(assert (=> bs!1093096 (= (= lt!1859824 lt!1860309) (= lambda!209523 lambda!209521))))

(declare-fun bs!1093101 () Bool)

(assert (= bs!1093101 (and b!4698290 d!1493995)))

(assert (=> bs!1093101 (= (= lt!1859824 lt!1860252) (= lambda!209523 lambda!209517))))

(assert (=> bs!1093097 (= lambda!209523 lambda!209503)))

(assert (=> bs!1093095 (= lambda!209523 lambda!209513)))

(declare-fun bs!1093102 () Bool)

(assert (= bs!1093102 (and b!4698290 d!1493923)))

(assert (=> bs!1093102 (= (= lt!1859824 lt!1860213) (= lambda!209523 lambda!209505))))

(assert (=> b!4698290 true))

(declare-fun bs!1093103 () Bool)

(declare-fun b!4698293 () Bool)

(assert (= bs!1093103 (and b!4698293 d!1493887)))

(declare-fun lambda!209524 () Int)

(assert (=> bs!1093103 (not (= lambda!209524 lambda!209412))))

(declare-fun bs!1093104 () Bool)

(assert (= bs!1093104 (and b!4698293 b!4698238)))

(assert (=> bs!1093104 (= lambda!209524 lambda!209502)))

(declare-fun bs!1093105 () Bool)

(assert (= bs!1093105 (and b!4698293 b!4698265)))

(assert (=> bs!1093105 (= (= lt!1859824 lt!1860260) (= lambda!209524 lambda!209514))))

(declare-fun bs!1093106 () Bool)

(assert (= bs!1093106 (and b!4698293 b!4698284)))

(assert (=> bs!1093106 (= lambda!209524 lambda!209520)))

(declare-fun bs!1093107 () Bool)

(assert (= bs!1093107 (and b!4698293 d!1494001)))

(assert (=> bs!1093107 (= (= lt!1859824 lt!1860301) (= lambda!209524 lambda!209522))))

(declare-fun bs!1093108 () Bool)

(assert (= bs!1093108 (and b!4698293 b!4698281)))

(assert (=> bs!1093108 (= lambda!209524 lambda!209519)))

(declare-fun bs!1093109 () Bool)

(assert (= bs!1093109 (and b!4698293 b!4698262)))

(assert (=> bs!1093109 (= lambda!209524 lambda!209510)))

(assert (=> bs!1093106 (= (= lt!1859824 lt!1860309) (= lambda!209524 lambda!209521))))

(declare-fun bs!1093110 () Bool)

(assert (= bs!1093110 (and b!4698293 d!1493995)))

(assert (=> bs!1093110 (= (= lt!1859824 lt!1860252) (= lambda!209524 lambda!209517))))

(declare-fun bs!1093111 () Bool)

(assert (= bs!1093111 (and b!4698293 b!4698241)))

(assert (=> bs!1093111 (= lambda!209524 lambda!209503)))

(assert (=> bs!1093105 (= lambda!209524 lambda!209513)))

(declare-fun bs!1093112 () Bool)

(assert (= bs!1093112 (and b!4698293 d!1493923)))

(assert (=> bs!1093112 (= (= lt!1859824 lt!1860213) (= lambda!209524 lambda!209505))))

(assert (=> bs!1093111 (= (= lt!1859824 lt!1860221) (= lambda!209524 lambda!209504))))

(declare-fun bs!1093113 () Bool)

(assert (= bs!1093113 (and b!4698293 b!4698290)))

(assert (=> bs!1093113 (= lambda!209524 lambda!209523)))

(assert (=> b!4698293 true))

(declare-fun lambda!209525 () Int)

(assert (=> bs!1093103 (not (= lambda!209525 lambda!209412))))

(declare-fun lt!1860338 () ListMap!5025)

(assert (=> bs!1093104 (= (= lt!1860338 lt!1859824) (= lambda!209525 lambda!209502))))

(assert (=> bs!1093105 (= (= lt!1860338 lt!1860260) (= lambda!209525 lambda!209514))))

(assert (=> bs!1093106 (= (= lt!1860338 lt!1859824) (= lambda!209525 lambda!209520))))

(assert (=> bs!1093107 (= (= lt!1860338 lt!1860301) (= lambda!209525 lambda!209522))))

(assert (=> bs!1093108 (= (= lt!1860338 lt!1859824) (= lambda!209525 lambda!209519))))

(assert (=> bs!1093109 (= (= lt!1860338 lt!1859824) (= lambda!209525 lambda!209510))))

(assert (=> b!4698293 (= (= lt!1860338 lt!1859824) (= lambda!209525 lambda!209524))))

(assert (=> bs!1093106 (= (= lt!1860338 lt!1860309) (= lambda!209525 lambda!209521))))

(assert (=> bs!1093110 (= (= lt!1860338 lt!1860252) (= lambda!209525 lambda!209517))))

(assert (=> bs!1093111 (= (= lt!1860338 lt!1859824) (= lambda!209525 lambda!209503))))

(assert (=> bs!1093105 (= (= lt!1860338 lt!1859824) (= lambda!209525 lambda!209513))))

(assert (=> bs!1093112 (= (= lt!1860338 lt!1860213) (= lambda!209525 lambda!209505))))

(assert (=> bs!1093111 (= (= lt!1860338 lt!1860221) (= lambda!209525 lambda!209504))))

(assert (=> bs!1093113 (= (= lt!1860338 lt!1859824) (= lambda!209525 lambda!209523))))

(assert (=> b!4698293 true))

(declare-fun bs!1093115 () Bool)

(declare-fun d!1494007 () Bool)

(assert (= bs!1093115 (and d!1494007 d!1493887)))

(declare-fun lambda!209526 () Int)

(assert (=> bs!1093115 (not (= lambda!209526 lambda!209412))))

(declare-fun bs!1093116 () Bool)

(assert (= bs!1093116 (and d!1494007 b!4698238)))

(declare-fun lt!1860330 () ListMap!5025)

(assert (=> bs!1093116 (= (= lt!1860330 lt!1859824) (= lambda!209526 lambda!209502))))

(declare-fun bs!1093117 () Bool)

(assert (= bs!1093117 (and d!1494007 b!4698265)))

(assert (=> bs!1093117 (= (= lt!1860330 lt!1860260) (= lambda!209526 lambda!209514))))

(declare-fun bs!1093118 () Bool)

(assert (= bs!1093118 (and d!1494007 b!4698284)))

(assert (=> bs!1093118 (= (= lt!1860330 lt!1859824) (= lambda!209526 lambda!209520))))

(declare-fun bs!1093119 () Bool)

(assert (= bs!1093119 (and d!1494007 d!1494001)))

(assert (=> bs!1093119 (= (= lt!1860330 lt!1860301) (= lambda!209526 lambda!209522))))

(declare-fun bs!1093120 () Bool)

(assert (= bs!1093120 (and d!1494007 b!4698281)))

(assert (=> bs!1093120 (= (= lt!1860330 lt!1859824) (= lambda!209526 lambda!209519))))

(declare-fun bs!1093121 () Bool)

(assert (= bs!1093121 (and d!1494007 b!4698262)))

(assert (=> bs!1093121 (= (= lt!1860330 lt!1859824) (= lambda!209526 lambda!209510))))

(declare-fun bs!1093122 () Bool)

(assert (= bs!1093122 (and d!1494007 b!4698293)))

(assert (=> bs!1093122 (= (= lt!1860330 lt!1859824) (= lambda!209526 lambda!209524))))

(declare-fun bs!1093123 () Bool)

(assert (= bs!1093123 (and d!1494007 d!1493995)))

(assert (=> bs!1093123 (= (= lt!1860330 lt!1860252) (= lambda!209526 lambda!209517))))

(declare-fun bs!1093124 () Bool)

(assert (= bs!1093124 (and d!1494007 b!4698241)))

(assert (=> bs!1093124 (= (= lt!1860330 lt!1859824) (= lambda!209526 lambda!209503))))

(assert (=> bs!1093117 (= (= lt!1860330 lt!1859824) (= lambda!209526 lambda!209513))))

(declare-fun bs!1093125 () Bool)

(assert (= bs!1093125 (and d!1494007 d!1493923)))

(assert (=> bs!1093125 (= (= lt!1860330 lt!1860213) (= lambda!209526 lambda!209505))))

(assert (=> bs!1093124 (= (= lt!1860330 lt!1860221) (= lambda!209526 lambda!209504))))

(declare-fun bs!1093126 () Bool)

(assert (= bs!1093126 (and d!1494007 b!4698290)))

(assert (=> bs!1093126 (= (= lt!1860330 lt!1859824) (= lambda!209526 lambda!209523))))

(assert (=> bs!1093122 (= (= lt!1860330 lt!1860338) (= lambda!209526 lambda!209525))))

(assert (=> bs!1093118 (= (= lt!1860330 lt!1860309) (= lambda!209526 lambda!209521))))

(assert (=> d!1494007 true))

(declare-fun call!328453 () Bool)

(declare-fun c!803181 () Bool)

(declare-fun bm!328447 () Bool)

(assert (=> bm!328447 (= call!328453 (forall!11381 (ite c!803181 (toList!5662 lt!1859824) (Cons!52499 lt!1859832 lt!1859828)) (ite c!803181 lambda!209523 lambda!209525)))))

(declare-fun e!2930850 () ListMap!5025)

(assert (=> b!4698290 (= e!2930850 lt!1859824)))

(declare-fun lt!1860341 () Unit!125616)

(declare-fun call!328454 () Unit!125616)

(assert (=> b!4698290 (= lt!1860341 call!328454)))

(assert (=> b!4698290 call!328453))

(declare-fun lt!1860349 () Unit!125616)

(assert (=> b!4698290 (= lt!1860349 lt!1860341)))

(declare-fun call!328452 () Bool)

(assert (=> b!4698290 call!328452))

(declare-fun lt!1860348 () Unit!125616)

(declare-fun Unit!125714 () Unit!125616)

(assert (=> b!4698290 (= lt!1860348 Unit!125714)))

(declare-fun e!2930849 () Bool)

(assert (=> d!1494007 e!2930849))

(declare-fun res!1983062 () Bool)

(assert (=> d!1494007 (=> (not res!1983062) (not e!2930849))))

(assert (=> d!1494007 (= res!1983062 (forall!11381 (Cons!52499 lt!1859832 lt!1859828) lambda!209526))))

(assert (=> d!1494007 (= lt!1860330 e!2930850)))

(assert (=> d!1494007 (= c!803181 ((_ is Nil!52499) (Cons!52499 lt!1859832 lt!1859828)))))

(assert (=> d!1494007 (noDuplicateKeys!1886 (Cons!52499 lt!1859832 lt!1859828))))

(assert (=> d!1494007 (= (addToMapMapFromBucket!1318 (Cons!52499 lt!1859832 lt!1859828) lt!1859824) lt!1860330)))

(declare-fun b!4698291 () Bool)

(assert (=> b!4698291 (= e!2930849 (invariantList!1436 (toList!5662 lt!1860330)))))

(declare-fun b!4698292 () Bool)

(declare-fun res!1983063 () Bool)

(assert (=> b!4698292 (=> (not res!1983063) (not e!2930849))))

(assert (=> b!4698292 (= res!1983063 (forall!11381 (toList!5662 lt!1859824) lambda!209526))))

(assert (=> b!4698293 (= e!2930850 lt!1860338)))

(declare-fun lt!1860329 () ListMap!5025)

(assert (=> b!4698293 (= lt!1860329 (+!2170 lt!1859824 (h!58770 (Cons!52499 lt!1859832 lt!1859828))))))

(assert (=> b!4698293 (= lt!1860338 (addToMapMapFromBucket!1318 (t!359825 (Cons!52499 lt!1859832 lt!1859828)) (+!2170 lt!1859824 (h!58770 (Cons!52499 lt!1859832 lt!1859828)))))))

(declare-fun lt!1860340 () Unit!125616)

(assert (=> b!4698293 (= lt!1860340 call!328454)))

(assert (=> b!4698293 (forall!11381 (toList!5662 lt!1859824) lambda!209524)))

(declare-fun lt!1860336 () Unit!125616)

(assert (=> b!4698293 (= lt!1860336 lt!1860340)))

(assert (=> b!4698293 (forall!11381 (toList!5662 lt!1860329) lambda!209525)))

(declare-fun lt!1860346 () Unit!125616)

(declare-fun Unit!125715 () Unit!125616)

(assert (=> b!4698293 (= lt!1860346 Unit!125715)))

(assert (=> b!4698293 (forall!11381 (t!359825 (Cons!52499 lt!1859832 lt!1859828)) lambda!209525)))

(declare-fun lt!1860342 () Unit!125616)

(declare-fun Unit!125716 () Unit!125616)

(assert (=> b!4698293 (= lt!1860342 Unit!125716)))

(declare-fun lt!1860344 () Unit!125616)

(declare-fun Unit!125717 () Unit!125616)

(assert (=> b!4698293 (= lt!1860344 Unit!125717)))

(declare-fun lt!1860335 () Unit!125616)

(assert (=> b!4698293 (= lt!1860335 (forallContained!3488 (toList!5662 lt!1860329) lambda!209525 (h!58770 (Cons!52499 lt!1859832 lt!1859828))))))

(assert (=> b!4698293 (contains!15758 lt!1860329 (_1!30263 (h!58770 (Cons!52499 lt!1859832 lt!1859828))))))

(declare-fun lt!1860334 () Unit!125616)

(declare-fun Unit!125718 () Unit!125616)

(assert (=> b!4698293 (= lt!1860334 Unit!125718)))

(assert (=> b!4698293 (contains!15758 lt!1860338 (_1!30263 (h!58770 (Cons!52499 lt!1859832 lt!1859828))))))

(declare-fun lt!1860337 () Unit!125616)

(declare-fun Unit!125719 () Unit!125616)

(assert (=> b!4698293 (= lt!1860337 Unit!125719)))

(assert (=> b!4698293 (forall!11381 (Cons!52499 lt!1859832 lt!1859828) lambda!209525)))

(declare-fun lt!1860339 () Unit!125616)

(declare-fun Unit!125720 () Unit!125616)

(assert (=> b!4698293 (= lt!1860339 Unit!125720)))

(assert (=> b!4698293 (forall!11381 (toList!5662 lt!1860329) lambda!209525)))

(declare-fun lt!1860347 () Unit!125616)

(declare-fun Unit!125721 () Unit!125616)

(assert (=> b!4698293 (= lt!1860347 Unit!125721)))

(declare-fun lt!1860333 () Unit!125616)

(declare-fun Unit!125722 () Unit!125616)

(assert (=> b!4698293 (= lt!1860333 Unit!125722)))

(declare-fun lt!1860343 () Unit!125616)

(assert (=> b!4698293 (= lt!1860343 (addForallContainsKeyThenBeforeAdding!723 lt!1859824 lt!1860338 (_1!30263 (h!58770 (Cons!52499 lt!1859832 lt!1859828))) (_2!30263 (h!58770 (Cons!52499 lt!1859832 lt!1859828)))))))

(assert (=> b!4698293 (forall!11381 (toList!5662 lt!1859824) lambda!209525)))

(declare-fun lt!1860331 () Unit!125616)

(assert (=> b!4698293 (= lt!1860331 lt!1860343)))

(assert (=> b!4698293 (forall!11381 (toList!5662 lt!1859824) lambda!209525)))

(declare-fun lt!1860345 () Unit!125616)

(declare-fun Unit!125723 () Unit!125616)

(assert (=> b!4698293 (= lt!1860345 Unit!125723)))

(declare-fun res!1983061 () Bool)

(assert (=> b!4698293 (= res!1983061 call!328453)))

(declare-fun e!2930851 () Bool)

(assert (=> b!4698293 (=> (not res!1983061) (not e!2930851))))

(assert (=> b!4698293 e!2930851))

(declare-fun lt!1860332 () Unit!125616)

(declare-fun Unit!125724 () Unit!125616)

(assert (=> b!4698293 (= lt!1860332 Unit!125724)))

(declare-fun bm!328448 () Bool)

(assert (=> bm!328448 (= call!328454 (lemmaContainsAllItsOwnKeys!724 lt!1859824))))

(declare-fun b!4698294 () Bool)

(assert (=> b!4698294 (= e!2930851 call!328452)))

(declare-fun bm!328449 () Bool)

(assert (=> bm!328449 (= call!328452 (forall!11381 (toList!5662 lt!1859824) (ite c!803181 lambda!209523 lambda!209525)))))

(assert (= (and d!1494007 c!803181) b!4698290))

(assert (= (and d!1494007 (not c!803181)) b!4698293))

(assert (= (and b!4698293 res!1983061) b!4698294))

(assert (= (or b!4698290 b!4698293) bm!328448))

(assert (= (or b!4698290 b!4698293) bm!328447))

(assert (= (or b!4698290 b!4698294) bm!328449))

(assert (= (and d!1494007 res!1983062) b!4698292))

(assert (= (and b!4698292 res!1983063) b!4698291))

(declare-fun m!5609945 () Bool)

(assert (=> bm!328449 m!5609945))

(declare-fun m!5609947 () Bool)

(assert (=> b!4698291 m!5609947))

(declare-fun m!5609949 () Bool)

(assert (=> bm!328447 m!5609949))

(assert (=> bm!328448 m!5609739))

(declare-fun m!5609951 () Bool)

(assert (=> b!4698293 m!5609951))

(declare-fun m!5609953 () Bool)

(assert (=> b!4698293 m!5609953))

(declare-fun m!5609955 () Bool)

(assert (=> b!4698293 m!5609955))

(declare-fun m!5609957 () Bool)

(assert (=> b!4698293 m!5609957))

(declare-fun m!5609959 () Bool)

(assert (=> b!4698293 m!5609959))

(declare-fun m!5609961 () Bool)

(assert (=> b!4698293 m!5609961))

(declare-fun m!5609963 () Bool)

(assert (=> b!4698293 m!5609963))

(assert (=> b!4698293 m!5609959))

(declare-fun m!5609965 () Bool)

(assert (=> b!4698293 m!5609965))

(assert (=> b!4698293 m!5609953))

(declare-fun m!5609967 () Bool)

(assert (=> b!4698293 m!5609967))

(declare-fun m!5609969 () Bool)

(assert (=> b!4698293 m!5609969))

(assert (=> b!4698293 m!5609969))

(declare-fun m!5609971 () Bool)

(assert (=> b!4698293 m!5609971))

(declare-fun m!5609973 () Bool)

(assert (=> b!4698292 m!5609973))

(declare-fun m!5609975 () Bool)

(assert (=> d!1494007 m!5609975))

(declare-fun m!5609977 () Bool)

(assert (=> d!1494007 m!5609977))

(assert (=> b!4697958 d!1494007))

(declare-fun bs!1093127 () Bool)

(declare-fun d!1494017 () Bool)

(assert (= bs!1093127 (and d!1494017 d!1493887)))

(declare-fun lambda!209527 () Int)

(assert (=> bs!1093127 (= lambda!209527 lambda!209412)))

(declare-fun bs!1093128 () Bool)

(assert (= bs!1093128 (and d!1494017 b!4698238)))

(assert (=> bs!1093128 (not (= lambda!209527 lambda!209502))))

(declare-fun bs!1093129 () Bool)

(assert (= bs!1093129 (and d!1494017 b!4698265)))

(assert (=> bs!1093129 (not (= lambda!209527 lambda!209514))))

(declare-fun bs!1093130 () Bool)

(assert (= bs!1093130 (and d!1494017 b!4698284)))

(assert (=> bs!1093130 (not (= lambda!209527 lambda!209520))))

(declare-fun bs!1093131 () Bool)

(assert (= bs!1093131 (and d!1494017 d!1494001)))

(assert (=> bs!1093131 (not (= lambda!209527 lambda!209522))))

(declare-fun bs!1093132 () Bool)

(assert (= bs!1093132 (and d!1494017 b!4698281)))

(assert (=> bs!1093132 (not (= lambda!209527 lambda!209519))))

(declare-fun bs!1093133 () Bool)

(assert (= bs!1093133 (and d!1494017 b!4698262)))

(assert (=> bs!1093133 (not (= lambda!209527 lambda!209510))))

(declare-fun bs!1093134 () Bool)

(assert (= bs!1093134 (and d!1494017 d!1494007)))

(assert (=> bs!1093134 (not (= lambda!209527 lambda!209526))))

(declare-fun bs!1093135 () Bool)

(assert (= bs!1093135 (and d!1494017 b!4698293)))

(assert (=> bs!1093135 (not (= lambda!209527 lambda!209524))))

(declare-fun bs!1093136 () Bool)

(assert (= bs!1093136 (and d!1494017 d!1493995)))

(assert (=> bs!1093136 (not (= lambda!209527 lambda!209517))))

(declare-fun bs!1093137 () Bool)

(assert (= bs!1093137 (and d!1494017 b!4698241)))

(assert (=> bs!1093137 (not (= lambda!209527 lambda!209503))))

(assert (=> bs!1093129 (not (= lambda!209527 lambda!209513))))

(declare-fun bs!1093138 () Bool)

(assert (= bs!1093138 (and d!1494017 d!1493923)))

(assert (=> bs!1093138 (not (= lambda!209527 lambda!209505))))

(assert (=> bs!1093137 (not (= lambda!209527 lambda!209504))))

(declare-fun bs!1093139 () Bool)

(assert (= bs!1093139 (and d!1494017 b!4698290)))

(assert (=> bs!1093139 (not (= lambda!209527 lambda!209523))))

(assert (=> bs!1093135 (not (= lambda!209527 lambda!209525))))

(assert (=> bs!1093130 (not (= lambda!209527 lambda!209521))))

(assert (=> d!1494017 true))

(assert (=> d!1494017 true))

(assert (=> d!1494017 (= (allKeysSameHash!1712 oldBucket!34 hash!405 hashF!1323) (forall!11381 oldBucket!34 lambda!209527))))

(declare-fun bs!1093140 () Bool)

(assert (= bs!1093140 d!1494017))

(declare-fun m!5609993 () Bool)

(assert (=> bs!1093140 m!5609993))

(assert (=> b!4697937 d!1494017))

(declare-fun d!1494021 () Bool)

(declare-fun res!1983082 () Bool)

(declare-fun e!2930871 () Bool)

(assert (=> d!1494021 (=> res!1983082 e!2930871)))

(assert (=> d!1494021 (= res!1983082 ((_ is Nil!52500) lt!1859854))))

(assert (=> d!1494021 (= (forall!11379 lt!1859854 lambda!209381) e!2930871)))

(declare-fun b!4698315 () Bool)

(declare-fun e!2930872 () Bool)

(assert (=> b!4698315 (= e!2930871 e!2930872)))

(declare-fun res!1983083 () Bool)

(assert (=> b!4698315 (=> (not res!1983083) (not e!2930872))))

(assert (=> b!4698315 (= res!1983083 (dynLambda!21739 lambda!209381 (h!58771 lt!1859854)))))

(declare-fun b!4698316 () Bool)

(assert (=> b!4698316 (= e!2930872 (forall!11379 (t!359826 lt!1859854) lambda!209381))))

(assert (= (and d!1494021 (not res!1983082)) b!4698315))

(assert (= (and b!4698315 res!1983083) b!4698316))

(declare-fun b_lambda!177277 () Bool)

(assert (=> (not b_lambda!177277) (not b!4698315)))

(declare-fun m!5609999 () Bool)

(assert (=> b!4698315 m!5609999))

(declare-fun m!5610001 () Bool)

(assert (=> b!4698316 m!5610001))

(assert (=> b!4697948 d!1494021))

(declare-fun d!1494025 () Bool)

(declare-fun e!2930877 () Bool)

(assert (=> d!1494025 e!2930877))

(declare-fun res!1983086 () Bool)

(assert (=> d!1494025 (=> res!1983086 e!2930877)))

(declare-fun lt!1860371 () Bool)

(assert (=> d!1494025 (= res!1983086 (not lt!1860371))))

(declare-fun lt!1860369 () Bool)

(assert (=> d!1494025 (= lt!1860371 lt!1860369)))

(declare-fun lt!1860372 () Unit!125616)

(declare-fun e!2930878 () Unit!125616)

(assert (=> d!1494025 (= lt!1860372 e!2930878)))

(declare-fun c!803185 () Bool)

(assert (=> d!1494025 (= c!803185 lt!1860369)))

(declare-fun containsKey!3140 (List!52624 (_ BitVec 64)) Bool)

(assert (=> d!1494025 (= lt!1860369 (containsKey!3140 (toList!5661 lm!2023) lt!1859837))))

(assert (=> d!1494025 (= (contains!15757 lm!2023 lt!1859837) lt!1860371)))

(declare-fun b!4698323 () Bool)

(declare-fun lt!1860370 () Unit!125616)

(assert (=> b!4698323 (= e!2930878 lt!1860370)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1724 (List!52624 (_ BitVec 64)) Unit!125616)

(assert (=> b!4698323 (= lt!1860370 (lemmaContainsKeyImpliesGetValueByKeyDefined!1724 (toList!5661 lm!2023) lt!1859837))))

(declare-datatypes ((Option!12165 0))(
  ( (None!12164) (Some!12164 (v!46635 List!52623)) )
))
(declare-fun isDefined!9419 (Option!12165) Bool)

(declare-fun getValueByKey!1833 (List!52624 (_ BitVec 64)) Option!12165)

(assert (=> b!4698323 (isDefined!9419 (getValueByKey!1833 (toList!5661 lm!2023) lt!1859837))))

(declare-fun b!4698324 () Bool)

(declare-fun Unit!125725 () Unit!125616)

(assert (=> b!4698324 (= e!2930878 Unit!125725)))

(declare-fun b!4698325 () Bool)

(assert (=> b!4698325 (= e!2930877 (isDefined!9419 (getValueByKey!1833 (toList!5661 lm!2023) lt!1859837)))))

(assert (= (and d!1494025 c!803185) b!4698323))

(assert (= (and d!1494025 (not c!803185)) b!4698324))

(assert (= (and d!1494025 (not res!1983086)) b!4698325))

(declare-fun m!5610003 () Bool)

(assert (=> d!1494025 m!5610003))

(declare-fun m!5610005 () Bool)

(assert (=> b!4698323 m!5610005))

(declare-fun m!5610007 () Bool)

(assert (=> b!4698323 m!5610007))

(assert (=> b!4698323 m!5610007))

(declare-fun m!5610009 () Bool)

(assert (=> b!4698323 m!5610009))

(assert (=> b!4698325 m!5610007))

(assert (=> b!4698325 m!5610007))

(assert (=> b!4698325 m!5610009))

(assert (=> b!4697946 d!1494025))

(declare-fun d!1494027 () Bool)

(declare-fun lt!1860383 () Bool)

(declare-fun content!9239 (List!52624) (InoxSet tuple2!53940))

(assert (=> d!1494027 (= lt!1860383 (select (content!9239 (toList!5661 lm!2023)) lt!1859830))))

(declare-fun e!2930886 () Bool)

(assert (=> d!1494027 (= lt!1860383 e!2930886)))

(declare-fun res!1983094 () Bool)

(assert (=> d!1494027 (=> (not res!1983094) (not e!2930886))))

(assert (=> d!1494027 (= res!1983094 ((_ is Cons!52500) (toList!5661 lm!2023)))))

(assert (=> d!1494027 (= (contains!15756 (toList!5661 lm!2023) lt!1859830) lt!1860383)))

(declare-fun b!4698333 () Bool)

(declare-fun e!2930885 () Bool)

(assert (=> b!4698333 (= e!2930886 e!2930885)))

(declare-fun res!1983095 () Bool)

(assert (=> b!4698333 (=> res!1983095 e!2930885)))

(assert (=> b!4698333 (= res!1983095 (= (h!58771 (toList!5661 lm!2023)) lt!1859830))))

(declare-fun b!4698334 () Bool)

(assert (=> b!4698334 (= e!2930885 (contains!15756 (t!359826 (toList!5661 lm!2023)) lt!1859830))))

(assert (= (and d!1494027 res!1983094) b!4698333))

(assert (= (and b!4698333 (not res!1983095)) b!4698334))

(declare-fun m!5610041 () Bool)

(assert (=> d!1494027 m!5610041))

(declare-fun m!5610045 () Bool)

(assert (=> d!1494027 m!5610045))

(declare-fun m!5610047 () Bool)

(assert (=> b!4698334 m!5610047))

(assert (=> b!4697946 d!1494027))

(declare-fun d!1494035 () Bool)

(assert (=> d!1494035 (contains!15756 (toList!5661 lm!2023) (tuple2!53941 lt!1859837 lt!1859848))))

(declare-fun lt!1860390 () Unit!125616)

(declare-fun choose!32802 (ListLongMap!4191 (_ BitVec 64) List!52623) Unit!125616)

(assert (=> d!1494035 (= lt!1860390 (choose!32802 lm!2023 lt!1859837 lt!1859848))))

(assert (=> d!1494035 (contains!15757 lm!2023 lt!1859837)))

(assert (=> d!1494035 (= (lemmaGetValueImpliesTupleContained!295 lm!2023 lt!1859837 lt!1859848) lt!1860390)))

(declare-fun bs!1093158 () Bool)

(assert (= bs!1093158 d!1494035))

(declare-fun m!5610065 () Bool)

(assert (=> bs!1093158 m!5610065))

(declare-fun m!5610067 () Bool)

(assert (=> bs!1093158 m!5610067))

(assert (=> bs!1093158 m!5608941))

(assert (=> b!4697946 d!1494035))

(declare-fun d!1494043 () Bool)

(assert (=> d!1494043 (containsKey!3137 oldBucket!34 key!4653)))

(declare-fun lt!1860397 () Unit!125616)

(declare-fun choose!32804 (List!52623 K!13865 Hashable!6255) Unit!125616)

(assert (=> d!1494043 (= lt!1860397 (choose!32804 oldBucket!34 key!4653 hashF!1323))))

(assert (=> d!1494043 (noDuplicateKeys!1886 oldBucket!34)))

(assert (=> d!1494043 (= (lemmaGetPairDefinedThenContainsKey!238 oldBucket!34 key!4653 hashF!1323) lt!1860397)))

(declare-fun bs!1093163 () Bool)

(assert (= bs!1093163 d!1494043))

(assert (=> bs!1093163 m!5608943))

(declare-fun m!5610085 () Bool)

(assert (=> bs!1093163 m!5610085))

(assert (=> bs!1093163 m!5608955))

(assert (=> b!4697946 d!1494043))

(declare-fun d!1494049 () Bool)

(declare-fun res!1983104 () Bool)

(declare-fun e!2930900 () Bool)

(assert (=> d!1494049 (=> res!1983104 e!2930900)))

(assert (=> d!1494049 (= res!1983104 (and ((_ is Cons!52499) (t!359825 oldBucket!34)) (= (_1!30263 (h!58770 (t!359825 oldBucket!34))) key!4653)))))

(assert (=> d!1494049 (= (containsKey!3137 (t!359825 oldBucket!34) key!4653) e!2930900)))

(declare-fun b!4698355 () Bool)

(declare-fun e!2930901 () Bool)

(assert (=> b!4698355 (= e!2930900 e!2930901)))

(declare-fun res!1983105 () Bool)

(assert (=> b!4698355 (=> (not res!1983105) (not e!2930901))))

(assert (=> b!4698355 (= res!1983105 ((_ is Cons!52499) (t!359825 oldBucket!34)))))

(declare-fun b!4698356 () Bool)

(assert (=> b!4698356 (= e!2930901 (containsKey!3137 (t!359825 (t!359825 oldBucket!34)) key!4653))))

(assert (= (and d!1494049 (not res!1983104)) b!4698355))

(assert (= (and b!4698355 res!1983105) b!4698356))

(declare-fun m!5610091 () Bool)

(assert (=> b!4698356 m!5610091))

(assert (=> b!4697946 d!1494049))

(declare-fun d!1494057 () Bool)

(assert (=> d!1494057 (dynLambda!21739 lambda!209381 lt!1859830)))

(declare-fun lt!1860400 () Unit!125616)

(declare-fun choose!32805 (List!52624 Int tuple2!53940) Unit!125616)

(assert (=> d!1494057 (= lt!1860400 (choose!32805 (toList!5661 lm!2023) lambda!209381 lt!1859830))))

(declare-fun e!2930904 () Bool)

(assert (=> d!1494057 e!2930904))

(declare-fun res!1983108 () Bool)

(assert (=> d!1494057 (=> (not res!1983108) (not e!2930904))))

(assert (=> d!1494057 (= res!1983108 (forall!11379 (toList!5661 lm!2023) lambda!209381))))

(assert (=> d!1494057 (= (forallContained!3486 (toList!5661 lm!2023) lambda!209381 lt!1859830) lt!1860400)))

(declare-fun b!4698359 () Bool)

(assert (=> b!4698359 (= e!2930904 (contains!15756 (toList!5661 lm!2023) lt!1859830))))

(assert (= (and d!1494057 res!1983108) b!4698359))

(declare-fun b_lambda!177285 () Bool)

(assert (=> (not b_lambda!177285) (not d!1494057)))

(declare-fun m!5610093 () Bool)

(assert (=> d!1494057 m!5610093))

(declare-fun m!5610095 () Bool)

(assert (=> d!1494057 m!5610095))

(assert (=> d!1494057 m!5609033))

(assert (=> b!4698359 m!5608951))

(assert (=> b!4697946 d!1494057))

(declare-fun d!1494059 () Bool)

(declare-fun res!1983109 () Bool)

(declare-fun e!2930905 () Bool)

(assert (=> d!1494059 (=> res!1983109 e!2930905)))

(assert (=> d!1494059 (= res!1983109 (and ((_ is Cons!52499) oldBucket!34) (= (_1!30263 (h!58770 oldBucket!34)) key!4653)))))

(assert (=> d!1494059 (= (containsKey!3137 oldBucket!34 key!4653) e!2930905)))

(declare-fun b!4698360 () Bool)

(declare-fun e!2930906 () Bool)

(assert (=> b!4698360 (= e!2930905 e!2930906)))

(declare-fun res!1983110 () Bool)

(assert (=> b!4698360 (=> (not res!1983110) (not e!2930906))))

(assert (=> b!4698360 (= res!1983110 ((_ is Cons!52499) oldBucket!34))))

(declare-fun b!4698361 () Bool)

(assert (=> b!4698361 (= e!2930906 (containsKey!3137 (t!359825 oldBucket!34) key!4653))))

(assert (= (and d!1494059 (not res!1983109)) b!4698360))

(assert (= (and b!4698360 res!1983110) b!4698361))

(assert (=> b!4698361 m!5608937))

(assert (=> b!4697946 d!1494059))

(declare-fun b!4698378 () Bool)

(declare-fun e!2930918 () Bool)

(declare-fun lt!1860403 () Option!12161)

(declare-fun get!17561 (Option!12161) tuple2!53938)

(assert (=> b!4698378 (= e!2930918 (contains!15761 lt!1859848 (get!17561 lt!1860403)))))

(declare-fun b!4698379 () Bool)

(declare-fun e!2930917 () Option!12161)

(assert (=> b!4698379 (= e!2930917 None!12160)))

(declare-fun b!4698380 () Bool)

(declare-fun res!1983122 () Bool)

(assert (=> b!4698380 (=> (not res!1983122) (not e!2930918))))

(assert (=> b!4698380 (= res!1983122 (= (_1!30263 (get!17561 lt!1860403)) key!4653))))

(declare-fun b!4698381 () Bool)

(declare-fun e!2930919 () Bool)

(assert (=> b!4698381 (= e!2930919 e!2930918)))

(declare-fun res!1983119 () Bool)

(assert (=> b!4698381 (=> (not res!1983119) (not e!2930918))))

(assert (=> b!4698381 (= res!1983119 (isDefined!9416 lt!1860403))))

(declare-fun b!4698382 () Bool)

(assert (=> b!4698382 (= e!2930917 (getPair!490 (t!359825 lt!1859848) key!4653))))

(declare-fun b!4698383 () Bool)

(declare-fun e!2930921 () Bool)

(assert (=> b!4698383 (= e!2930921 (not (containsKey!3137 lt!1859848 key!4653)))))

(declare-fun b!4698384 () Bool)

(declare-fun e!2930920 () Option!12161)

(assert (=> b!4698384 (= e!2930920 e!2930917)))

(declare-fun c!803190 () Bool)

(assert (=> b!4698384 (= c!803190 ((_ is Cons!52499) lt!1859848))))

(declare-fun d!1494061 () Bool)

(assert (=> d!1494061 e!2930919))

(declare-fun res!1983120 () Bool)

(assert (=> d!1494061 (=> res!1983120 e!2930919)))

(assert (=> d!1494061 (= res!1983120 e!2930921)))

(declare-fun res!1983121 () Bool)

(assert (=> d!1494061 (=> (not res!1983121) (not e!2930921))))

(declare-fun isEmpty!29120 (Option!12161) Bool)

(assert (=> d!1494061 (= res!1983121 (isEmpty!29120 lt!1860403))))

(assert (=> d!1494061 (= lt!1860403 e!2930920)))

(declare-fun c!803191 () Bool)

(assert (=> d!1494061 (= c!803191 (and ((_ is Cons!52499) lt!1859848) (= (_1!30263 (h!58770 lt!1859848)) key!4653)))))

(assert (=> d!1494061 (noDuplicateKeys!1886 lt!1859848)))

(assert (=> d!1494061 (= (getPair!490 lt!1859848 key!4653) lt!1860403)))

(declare-fun b!4698385 () Bool)

(assert (=> b!4698385 (= e!2930920 (Some!12160 (h!58770 lt!1859848)))))

(assert (= (and d!1494061 c!803191) b!4698385))

(assert (= (and d!1494061 (not c!803191)) b!4698384))

(assert (= (and b!4698384 c!803190) b!4698382))

(assert (= (and b!4698384 (not c!803190)) b!4698379))

(assert (= (and d!1494061 res!1983121) b!4698383))

(assert (= (and d!1494061 (not res!1983120)) b!4698381))

(assert (= (and b!4698381 res!1983119) b!4698380))

(assert (= (and b!4698380 res!1983122) b!4698378))

(declare-fun m!5610097 () Bool)

(assert (=> b!4698380 m!5610097))

(declare-fun m!5610099 () Bool)

(assert (=> b!4698381 m!5610099))

(declare-fun m!5610101 () Bool)

(assert (=> b!4698383 m!5610101))

(assert (=> b!4698378 m!5610097))

(assert (=> b!4698378 m!5610097))

(declare-fun m!5610103 () Bool)

(assert (=> b!4698378 m!5610103))

(declare-fun m!5610105 () Bool)

(assert (=> d!1494061 m!5610105))

(declare-fun m!5610107 () Bool)

(assert (=> d!1494061 m!5610107))

(declare-fun m!5610109 () Bool)

(assert (=> b!4698382 m!5610109))

(assert (=> b!4697946 d!1494061))

(declare-fun bs!1093167 () Bool)

(declare-fun d!1494063 () Bool)

(assert (= bs!1093167 (and d!1494063 d!1493801)))

(declare-fun lambda!209531 () Int)

(assert (=> bs!1093167 (not (= lambda!209531 lambda!209384))))

(declare-fun bs!1093168 () Bool)

(assert (= bs!1093168 (and d!1494063 d!1493829)))

(assert (=> bs!1093168 (= lambda!209531 lambda!209398)))

(declare-fun bs!1093169 () Bool)

(assert (= bs!1093169 (and d!1494063 d!1493991)))

(assert (=> bs!1093169 (= lambda!209531 lambda!209507)))

(declare-fun bs!1093170 () Bool)

(assert (= bs!1093170 (and d!1494063 d!1493911)))

(assert (=> bs!1093170 (= lambda!209531 lambda!209449)))

(declare-fun bs!1093171 () Bool)

(assert (= bs!1093171 (and d!1494063 d!1493805)))

(assert (=> bs!1093171 (= lambda!209531 lambda!209396)))

(declare-fun bs!1093172 () Bool)

(assert (= bs!1093172 (and d!1494063 start!476136)))

(assert (=> bs!1093172 (= lambda!209531 lambda!209381)))

(declare-fun bs!1093173 () Bool)

(assert (= bs!1093173 (and d!1494063 d!1493825)))

(assert (=> bs!1093173 (= lambda!209531 lambda!209397)))

(declare-fun bs!1093174 () Bool)

(assert (= bs!1093174 (and d!1494063 d!1493907)))

(assert (=> bs!1093174 (= lambda!209531 lambda!209423)))

(declare-fun bs!1093175 () Bool)

(assert (= bs!1093175 (and d!1494063 d!1493839)))

(assert (=> bs!1093175 (= lambda!209531 lambda!209407)))

(declare-fun bs!1093176 () Bool)

(assert (= bs!1093176 (and d!1494063 d!1493881)))

(assert (=> bs!1093176 (= lambda!209531 lambda!209409)))

(declare-fun bs!1093177 () Bool)

(assert (= bs!1093177 (and d!1494063 d!1493985)))

(assert (=> bs!1093177 (= lambda!209531 lambda!209506)))

(assert (=> d!1494063 (contains!15757 lm!2023 (hash!4142 hashF!1323 key!4653))))

(declare-fun lt!1860406 () Unit!125616)

(declare-fun choose!32807 (ListLongMap!4191 K!13865 Hashable!6255) Unit!125616)

(assert (=> d!1494063 (= lt!1860406 (choose!32807 lm!2023 key!4653 hashF!1323))))

(assert (=> d!1494063 (forall!11379 (toList!5661 lm!2023) lambda!209531)))

(assert (=> d!1494063 (= (lemmaInGenMapThenLongMapContainsHash!696 lm!2023 key!4653 hashF!1323) lt!1860406)))

(declare-fun bs!1093178 () Bool)

(assert (= bs!1093178 d!1494063))

(assert (=> bs!1093178 m!5609043))

(assert (=> bs!1093178 m!5609043))

(declare-fun m!5610111 () Bool)

(assert (=> bs!1093178 m!5610111))

(declare-fun m!5610113 () Bool)

(assert (=> bs!1093178 m!5610113))

(declare-fun m!5610115 () Bool)

(assert (=> bs!1093178 m!5610115))

(assert (=> b!4697946 d!1494063))

(declare-fun d!1494065 () Bool)

(assert (=> d!1494065 (= (isDefined!9416 (getPair!490 lt!1859848 key!4653)) (not (isEmpty!29120 (getPair!490 lt!1859848 key!4653))))))

(declare-fun bs!1093179 () Bool)

(assert (= bs!1093179 d!1494065))

(assert (=> bs!1093179 m!5608929))

(declare-fun m!5610117 () Bool)

(assert (=> bs!1093179 m!5610117))

(assert (=> b!4697946 d!1494065))

(declare-fun d!1494067 () Bool)

(declare-fun get!17562 (Option!12165) List!52623)

(assert (=> d!1494067 (= (apply!12369 lm!2023 lt!1859837) (get!17562 (getValueByKey!1833 (toList!5661 lm!2023) lt!1859837)))))

(declare-fun bs!1093180 () Bool)

(assert (= bs!1093180 d!1494067))

(assert (=> bs!1093180 m!5610007))

(assert (=> bs!1093180 m!5610007))

(declare-fun m!5610119 () Bool)

(assert (=> bs!1093180 m!5610119))

(assert (=> b!4697946 d!1494067))

(declare-fun bs!1093181 () Bool)

(declare-fun d!1494069 () Bool)

(assert (= bs!1093181 (and d!1494069 d!1493801)))

(declare-fun lambda!209538 () Int)

(assert (=> bs!1093181 (not (= lambda!209538 lambda!209384))))

(declare-fun bs!1093182 () Bool)

(assert (= bs!1093182 (and d!1494069 d!1493829)))

(assert (=> bs!1093182 (= lambda!209538 lambda!209398)))

(declare-fun bs!1093183 () Bool)

(assert (= bs!1093183 (and d!1494069 d!1493991)))

(assert (=> bs!1093183 (= lambda!209538 lambda!209507)))

(declare-fun bs!1093184 () Bool)

(assert (= bs!1093184 (and d!1494069 d!1493911)))

(assert (=> bs!1093184 (= lambda!209538 lambda!209449)))

(declare-fun bs!1093185 () Bool)

(assert (= bs!1093185 (and d!1494069 d!1493805)))

(assert (=> bs!1093185 (= lambda!209538 lambda!209396)))

(declare-fun bs!1093186 () Bool)

(assert (= bs!1093186 (and d!1494069 start!476136)))

(assert (=> bs!1093186 (= lambda!209538 lambda!209381)))

(declare-fun bs!1093187 () Bool)

(assert (= bs!1093187 (and d!1494069 d!1493825)))

(assert (=> bs!1093187 (= lambda!209538 lambda!209397)))

(declare-fun bs!1093188 () Bool)

(assert (= bs!1093188 (and d!1494069 d!1494063)))

(assert (=> bs!1093188 (= lambda!209538 lambda!209531)))

(declare-fun bs!1093189 () Bool)

(assert (= bs!1093189 (and d!1494069 d!1493907)))

(assert (=> bs!1093189 (= lambda!209538 lambda!209423)))

(declare-fun bs!1093190 () Bool)

(assert (= bs!1093190 (and d!1494069 d!1493839)))

(assert (=> bs!1093190 (= lambda!209538 lambda!209407)))

(declare-fun bs!1093191 () Bool)

(assert (= bs!1093191 (and d!1494069 d!1493881)))

(assert (=> bs!1093191 (= lambda!209538 lambda!209409)))

(declare-fun bs!1093192 () Bool)

(assert (= bs!1093192 (and d!1494069 d!1493985)))

(assert (=> bs!1093192 (= lambda!209538 lambda!209506)))

(declare-fun b!4698395 () Bool)

(declare-fun res!1983132 () Bool)

(declare-fun e!2930926 () Bool)

(assert (=> b!4698395 (=> (not res!1983132) (not e!2930926))))

(assert (=> b!4698395 (= res!1983132 (contains!15758 (extractMap!1912 (toList!5661 lm!2023)) key!4653))))

(declare-fun b!4698396 () Bool)

(assert (=> b!4698396 (= e!2930926 (isDefined!9416 (getPair!490 (apply!12369 lm!2023 (hash!4142 hashF!1323 key!4653)) key!4653)))))

(declare-fun lt!1860429 () Unit!125616)

(assert (=> b!4698396 (= lt!1860429 (forallContained!3486 (toList!5661 lm!2023) lambda!209538 (tuple2!53941 (hash!4142 hashF!1323 key!4653) (apply!12369 lm!2023 (hash!4142 hashF!1323 key!4653)))))))

(declare-fun lt!1860423 () Unit!125616)

(declare-fun lt!1860425 () Unit!125616)

(assert (=> b!4698396 (= lt!1860423 lt!1860425)))

(declare-fun lt!1860428 () (_ BitVec 64))

(declare-fun lt!1860427 () List!52623)

(assert (=> b!4698396 (contains!15756 (toList!5661 lm!2023) (tuple2!53941 lt!1860428 lt!1860427))))

(assert (=> b!4698396 (= lt!1860425 (lemmaGetValueImpliesTupleContained!295 lm!2023 lt!1860428 lt!1860427))))

(declare-fun e!2930927 () Bool)

(assert (=> b!4698396 e!2930927))

(declare-fun res!1983131 () Bool)

(assert (=> b!4698396 (=> (not res!1983131) (not e!2930927))))

(assert (=> b!4698396 (= res!1983131 (contains!15757 lm!2023 lt!1860428))))

(assert (=> b!4698396 (= lt!1860427 (apply!12369 lm!2023 (hash!4142 hashF!1323 key!4653)))))

(assert (=> b!4698396 (= lt!1860428 (hash!4142 hashF!1323 key!4653))))

(declare-fun lt!1860430 () Unit!125616)

(declare-fun lt!1860424 () Unit!125616)

(assert (=> b!4698396 (= lt!1860430 lt!1860424)))

(assert (=> b!4698396 (contains!15757 lm!2023 (hash!4142 hashF!1323 key!4653))))

(assert (=> b!4698396 (= lt!1860424 (lemmaInGenMapThenLongMapContainsHash!696 lm!2023 key!4653 hashF!1323))))

(assert (=> d!1494069 e!2930926))

(declare-fun res!1983133 () Bool)

(assert (=> d!1494069 (=> (not res!1983133) (not e!2930926))))

(assert (=> d!1494069 (= res!1983133 (forall!11379 (toList!5661 lm!2023) lambda!209538))))

(declare-fun lt!1860426 () Unit!125616)

(declare-fun choose!32809 (ListLongMap!4191 K!13865 Hashable!6255) Unit!125616)

(assert (=> d!1494069 (= lt!1860426 (choose!32809 lm!2023 key!4653 hashF!1323))))

(assert (=> d!1494069 (forall!11379 (toList!5661 lm!2023) lambda!209538)))

(assert (=> d!1494069 (= (lemmaInGenMapThenGetPairDefined!286 lm!2023 key!4653 hashF!1323) lt!1860426)))

(declare-fun b!4698397 () Bool)

(assert (=> b!4698397 (= e!2930927 (= (getValueByKey!1833 (toList!5661 lm!2023) lt!1860428) (Some!12164 lt!1860427)))))

(declare-fun b!4698394 () Bool)

(declare-fun res!1983134 () Bool)

(assert (=> b!4698394 (=> (not res!1983134) (not e!2930926))))

(assert (=> b!4698394 (= res!1983134 (allKeysSameHashInMap!1800 lm!2023 hashF!1323))))

(assert (= (and d!1494069 res!1983133) b!4698394))

(assert (= (and b!4698394 res!1983134) b!4698395))

(assert (= (and b!4698395 res!1983132) b!4698396))

(assert (= (and b!4698396 res!1983131) b!4698397))

(declare-fun m!5610121 () Bool)

(assert (=> d!1494069 m!5610121))

(declare-fun m!5610123 () Bool)

(assert (=> d!1494069 m!5610123))

(assert (=> d!1494069 m!5610121))

(assert (=> b!4698394 m!5608963))

(declare-fun m!5610125 () Bool)

(assert (=> b!4698397 m!5610125))

(declare-fun m!5610127 () Bool)

(assert (=> b!4698396 m!5610127))

(assert (=> b!4698396 m!5609043))

(declare-fun m!5610129 () Bool)

(assert (=> b!4698396 m!5610129))

(assert (=> b!4698396 m!5608933))

(assert (=> b!4698396 m!5609043))

(declare-fun m!5610131 () Bool)

(assert (=> b!4698396 m!5610131))

(assert (=> b!4698396 m!5609043))

(assert (=> b!4698396 m!5610111))

(declare-fun m!5610133 () Bool)

(assert (=> b!4698396 m!5610133))

(declare-fun m!5610135 () Bool)

(assert (=> b!4698396 m!5610135))

(declare-fun m!5610137 () Bool)

(assert (=> b!4698396 m!5610137))

(declare-fun m!5610139 () Bool)

(assert (=> b!4698396 m!5610139))

(assert (=> b!4698396 m!5610129))

(assert (=> b!4698396 m!5610137))

(assert (=> b!4698395 m!5609057))

(assert (=> b!4698395 m!5609057))

(declare-fun m!5610141 () Bool)

(assert (=> b!4698395 m!5610141))

(assert (=> b!4697946 d!1494069))

(declare-fun d!1494071 () Bool)

(declare-fun res!1983139 () Bool)

(declare-fun e!2930932 () Bool)

(assert (=> d!1494071 (=> res!1983139 e!2930932)))

(assert (=> d!1494071 (= res!1983139 (not ((_ is Cons!52499) oldBucket!34)))))

(assert (=> d!1494071 (= (noDuplicateKeys!1886 oldBucket!34) e!2930932)))

(declare-fun b!4698402 () Bool)

(declare-fun e!2930933 () Bool)

(assert (=> b!4698402 (= e!2930932 e!2930933)))

(declare-fun res!1983140 () Bool)

(assert (=> b!4698402 (=> (not res!1983140) (not e!2930933))))

(assert (=> b!4698402 (= res!1983140 (not (containsKey!3137 (t!359825 oldBucket!34) (_1!30263 (h!58770 oldBucket!34)))))))

(declare-fun b!4698403 () Bool)

(assert (=> b!4698403 (= e!2930933 (noDuplicateKeys!1886 (t!359825 oldBucket!34)))))

(assert (= (and d!1494071 (not res!1983139)) b!4698402))

(assert (= (and b!4698402 res!1983140) b!4698403))

(declare-fun m!5610143 () Bool)

(assert (=> b!4698402 m!5610143))

(assert (=> b!4698403 m!5609387))

(assert (=> b!4697957 d!1494071))

(declare-fun d!1494073 () Bool)

(declare-fun hash!4145 (Hashable!6255 K!13865) (_ BitVec 64))

(assert (=> d!1494073 (= (hash!4142 hashF!1323 key!4653) (hash!4145 hashF!1323 key!4653))))

(declare-fun bs!1093193 () Bool)

(assert (= bs!1093193 d!1494073))

(declare-fun m!5610145 () Bool)

(assert (=> bs!1093193 m!5610145))

(assert (=> b!4697955 d!1494073))

(declare-fun bs!1093194 () Bool)

(declare-fun b!4698404 () Bool)

(assert (= bs!1093194 (and b!4698404 d!1493887)))

(declare-fun lambda!209539 () Int)

(assert (=> bs!1093194 (not (= lambda!209539 lambda!209412))))

(declare-fun bs!1093195 () Bool)

(assert (= bs!1093195 (and b!4698404 b!4698238)))

(assert (=> bs!1093195 (= lambda!209539 lambda!209502)))

(declare-fun bs!1093196 () Bool)

(assert (= bs!1093196 (and b!4698404 b!4698265)))

(assert (=> bs!1093196 (= (= lt!1859824 lt!1860260) (= lambda!209539 lambda!209514))))

(declare-fun bs!1093197 () Bool)

(assert (= bs!1093197 (and b!4698404 b!4698284)))

(assert (=> bs!1093197 (= lambda!209539 lambda!209520)))

(declare-fun bs!1093198 () Bool)

(assert (= bs!1093198 (and b!4698404 d!1494001)))

(assert (=> bs!1093198 (= (= lt!1859824 lt!1860301) (= lambda!209539 lambda!209522))))

(declare-fun bs!1093199 () Bool)

(assert (= bs!1093199 (and b!4698404 b!4698262)))

(assert (=> bs!1093199 (= lambda!209539 lambda!209510)))

(declare-fun bs!1093200 () Bool)

(assert (= bs!1093200 (and b!4698404 d!1494007)))

(assert (=> bs!1093200 (= (= lt!1859824 lt!1860330) (= lambda!209539 lambda!209526))))

(declare-fun bs!1093201 () Bool)

(assert (= bs!1093201 (and b!4698404 b!4698293)))

(assert (=> bs!1093201 (= lambda!209539 lambda!209524)))

(declare-fun bs!1093202 () Bool)

(assert (= bs!1093202 (and b!4698404 d!1493995)))

(assert (=> bs!1093202 (= (= lt!1859824 lt!1860252) (= lambda!209539 lambda!209517))))

(declare-fun bs!1093203 () Bool)

(assert (= bs!1093203 (and b!4698404 b!4698241)))

(assert (=> bs!1093203 (= lambda!209539 lambda!209503)))

(assert (=> bs!1093196 (= lambda!209539 lambda!209513)))

(declare-fun bs!1093204 () Bool)

(assert (= bs!1093204 (and b!4698404 d!1493923)))

(assert (=> bs!1093204 (= (= lt!1859824 lt!1860213) (= lambda!209539 lambda!209505))))

(assert (=> bs!1093203 (= (= lt!1859824 lt!1860221) (= lambda!209539 lambda!209504))))

(declare-fun bs!1093205 () Bool)

(assert (= bs!1093205 (and b!4698404 b!4698290)))

(assert (=> bs!1093205 (= lambda!209539 lambda!209523)))

(declare-fun bs!1093206 () Bool)

(assert (= bs!1093206 (and b!4698404 d!1494017)))

(assert (=> bs!1093206 (not (= lambda!209539 lambda!209527))))

(declare-fun bs!1093207 () Bool)

(assert (= bs!1093207 (and b!4698404 b!4698281)))

(assert (=> bs!1093207 (= lambda!209539 lambda!209519)))

(assert (=> bs!1093201 (= (= lt!1859824 lt!1860338) (= lambda!209539 lambda!209525))))

(assert (=> bs!1093197 (= (= lt!1859824 lt!1860309) (= lambda!209539 lambda!209521))))

(assert (=> b!4698404 true))

(declare-fun bs!1093208 () Bool)

(declare-fun b!4698407 () Bool)

(assert (= bs!1093208 (and b!4698407 d!1493887)))

(declare-fun lambda!209540 () Int)

(assert (=> bs!1093208 (not (= lambda!209540 lambda!209412))))

(declare-fun bs!1093209 () Bool)

(assert (= bs!1093209 (and b!4698407 b!4698238)))

(assert (=> bs!1093209 (= lambda!209540 lambda!209502)))

(declare-fun bs!1093210 () Bool)

(assert (= bs!1093210 (and b!4698407 b!4698265)))

(assert (=> bs!1093210 (= (= lt!1859824 lt!1860260) (= lambda!209540 lambda!209514))))

(declare-fun bs!1093211 () Bool)

(assert (= bs!1093211 (and b!4698407 b!4698284)))

(assert (=> bs!1093211 (= lambda!209540 lambda!209520)))

(declare-fun bs!1093212 () Bool)

(assert (= bs!1093212 (and b!4698407 d!1494001)))

(assert (=> bs!1093212 (= (= lt!1859824 lt!1860301) (= lambda!209540 lambda!209522))))

(declare-fun bs!1093213 () Bool)

(assert (= bs!1093213 (and b!4698407 b!4698262)))

(assert (=> bs!1093213 (= lambda!209540 lambda!209510)))

(declare-fun bs!1093214 () Bool)

(assert (= bs!1093214 (and b!4698407 d!1494007)))

(assert (=> bs!1093214 (= (= lt!1859824 lt!1860330) (= lambda!209540 lambda!209526))))

(declare-fun bs!1093215 () Bool)

(assert (= bs!1093215 (and b!4698407 b!4698293)))

(assert (=> bs!1093215 (= lambda!209540 lambda!209524)))

(declare-fun bs!1093216 () Bool)

(assert (= bs!1093216 (and b!4698407 b!4698404)))

(assert (=> bs!1093216 (= lambda!209540 lambda!209539)))

(declare-fun bs!1093217 () Bool)

(assert (= bs!1093217 (and b!4698407 d!1493995)))

(assert (=> bs!1093217 (= (= lt!1859824 lt!1860252) (= lambda!209540 lambda!209517))))

(declare-fun bs!1093218 () Bool)

(assert (= bs!1093218 (and b!4698407 b!4698241)))

(assert (=> bs!1093218 (= lambda!209540 lambda!209503)))

(assert (=> bs!1093210 (= lambda!209540 lambda!209513)))

(declare-fun bs!1093219 () Bool)

(assert (= bs!1093219 (and b!4698407 d!1493923)))

(assert (=> bs!1093219 (= (= lt!1859824 lt!1860213) (= lambda!209540 lambda!209505))))

(assert (=> bs!1093218 (= (= lt!1859824 lt!1860221) (= lambda!209540 lambda!209504))))

(declare-fun bs!1093220 () Bool)

(assert (= bs!1093220 (and b!4698407 b!4698290)))

(assert (=> bs!1093220 (= lambda!209540 lambda!209523)))

(declare-fun bs!1093221 () Bool)

(assert (= bs!1093221 (and b!4698407 d!1494017)))

(assert (=> bs!1093221 (not (= lambda!209540 lambda!209527))))

(declare-fun bs!1093222 () Bool)

(assert (= bs!1093222 (and b!4698407 b!4698281)))

(assert (=> bs!1093222 (= lambda!209540 lambda!209519)))

(assert (=> bs!1093215 (= (= lt!1859824 lt!1860338) (= lambda!209540 lambda!209525))))

(assert (=> bs!1093211 (= (= lt!1859824 lt!1860309) (= lambda!209540 lambda!209521))))

(assert (=> b!4698407 true))

(declare-fun lambda!209541 () Int)

(declare-fun lt!1860440 () ListMap!5025)

(assert (=> bs!1093209 (= (= lt!1860440 lt!1859824) (= lambda!209541 lambda!209502))))

(assert (=> bs!1093210 (= (= lt!1860440 lt!1860260) (= lambda!209541 lambda!209514))))

(assert (=> bs!1093211 (= (= lt!1860440 lt!1859824) (= lambda!209541 lambda!209520))))

(assert (=> bs!1093212 (= (= lt!1860440 lt!1860301) (= lambda!209541 lambda!209522))))

(assert (=> bs!1093213 (= (= lt!1860440 lt!1859824) (= lambda!209541 lambda!209510))))

(assert (=> bs!1093214 (= (= lt!1860440 lt!1860330) (= lambda!209541 lambda!209526))))

(assert (=> bs!1093215 (= (= lt!1860440 lt!1859824) (= lambda!209541 lambda!209524))))

(assert (=> bs!1093216 (= (= lt!1860440 lt!1859824) (= lambda!209541 lambda!209539))))

(assert (=> bs!1093217 (= (= lt!1860440 lt!1860252) (= lambda!209541 lambda!209517))))

(assert (=> bs!1093218 (= (= lt!1860440 lt!1859824) (= lambda!209541 lambda!209503))))

(assert (=> bs!1093208 (not (= lambda!209541 lambda!209412))))

(assert (=> b!4698407 (= (= lt!1860440 lt!1859824) (= lambda!209541 lambda!209540))))

(assert (=> bs!1093210 (= (= lt!1860440 lt!1859824) (= lambda!209541 lambda!209513))))

(assert (=> bs!1093219 (= (= lt!1860440 lt!1860213) (= lambda!209541 lambda!209505))))

(assert (=> bs!1093218 (= (= lt!1860440 lt!1860221) (= lambda!209541 lambda!209504))))

(assert (=> bs!1093220 (= (= lt!1860440 lt!1859824) (= lambda!209541 lambda!209523))))

(assert (=> bs!1093221 (not (= lambda!209541 lambda!209527))))

(assert (=> bs!1093222 (= (= lt!1860440 lt!1859824) (= lambda!209541 lambda!209519))))

(assert (=> bs!1093215 (= (= lt!1860440 lt!1860338) (= lambda!209541 lambda!209525))))

(assert (=> bs!1093211 (= (= lt!1860440 lt!1860309) (= lambda!209541 lambda!209521))))

(assert (=> b!4698407 true))

(declare-fun bs!1093223 () Bool)

(declare-fun d!1494075 () Bool)

(assert (= bs!1093223 (and d!1494075 b!4698238)))

(declare-fun lambda!209542 () Int)

(declare-fun lt!1860432 () ListMap!5025)

(assert (=> bs!1093223 (= (= lt!1860432 lt!1859824) (= lambda!209542 lambda!209502))))

(declare-fun bs!1093224 () Bool)

(assert (= bs!1093224 (and d!1494075 b!4698265)))

(assert (=> bs!1093224 (= (= lt!1860432 lt!1860260) (= lambda!209542 lambda!209514))))

(declare-fun bs!1093225 () Bool)

(assert (= bs!1093225 (and d!1494075 b!4698284)))

(assert (=> bs!1093225 (= (= lt!1860432 lt!1859824) (= lambda!209542 lambda!209520))))

(declare-fun bs!1093226 () Bool)

(assert (= bs!1093226 (and d!1494075 d!1494001)))

(assert (=> bs!1093226 (= (= lt!1860432 lt!1860301) (= lambda!209542 lambda!209522))))

(declare-fun bs!1093227 () Bool)

(assert (= bs!1093227 (and d!1494075 b!4698407)))

(assert (=> bs!1093227 (= (= lt!1860432 lt!1860440) (= lambda!209542 lambda!209541))))

(declare-fun bs!1093228 () Bool)

(assert (= bs!1093228 (and d!1494075 b!4698262)))

(assert (=> bs!1093228 (= (= lt!1860432 lt!1859824) (= lambda!209542 lambda!209510))))

(declare-fun bs!1093229 () Bool)

(assert (= bs!1093229 (and d!1494075 d!1494007)))

(assert (=> bs!1093229 (= (= lt!1860432 lt!1860330) (= lambda!209542 lambda!209526))))

(declare-fun bs!1093230 () Bool)

(assert (= bs!1093230 (and d!1494075 b!4698293)))

(assert (=> bs!1093230 (= (= lt!1860432 lt!1859824) (= lambda!209542 lambda!209524))))

(declare-fun bs!1093231 () Bool)

(assert (= bs!1093231 (and d!1494075 b!4698404)))

(assert (=> bs!1093231 (= (= lt!1860432 lt!1859824) (= lambda!209542 lambda!209539))))

(declare-fun bs!1093232 () Bool)

(assert (= bs!1093232 (and d!1494075 d!1493995)))

(assert (=> bs!1093232 (= (= lt!1860432 lt!1860252) (= lambda!209542 lambda!209517))))

(declare-fun bs!1093233 () Bool)

(assert (= bs!1093233 (and d!1494075 b!4698241)))

(assert (=> bs!1093233 (= (= lt!1860432 lt!1859824) (= lambda!209542 lambda!209503))))

(declare-fun bs!1093234 () Bool)

(assert (= bs!1093234 (and d!1494075 d!1493887)))

(assert (=> bs!1093234 (not (= lambda!209542 lambda!209412))))

(assert (=> bs!1093227 (= (= lt!1860432 lt!1859824) (= lambda!209542 lambda!209540))))

(assert (=> bs!1093224 (= (= lt!1860432 lt!1859824) (= lambda!209542 lambda!209513))))

(declare-fun bs!1093235 () Bool)

(assert (= bs!1093235 (and d!1494075 d!1493923)))

(assert (=> bs!1093235 (= (= lt!1860432 lt!1860213) (= lambda!209542 lambda!209505))))

(assert (=> bs!1093233 (= (= lt!1860432 lt!1860221) (= lambda!209542 lambda!209504))))

(declare-fun bs!1093236 () Bool)

(assert (= bs!1093236 (and d!1494075 b!4698290)))

(assert (=> bs!1093236 (= (= lt!1860432 lt!1859824) (= lambda!209542 lambda!209523))))

(declare-fun bs!1093237 () Bool)

(assert (= bs!1093237 (and d!1494075 d!1494017)))

(assert (=> bs!1093237 (not (= lambda!209542 lambda!209527))))

(declare-fun bs!1093238 () Bool)

(assert (= bs!1093238 (and d!1494075 b!4698281)))

(assert (=> bs!1093238 (= (= lt!1860432 lt!1859824) (= lambda!209542 lambda!209519))))

(assert (=> bs!1093230 (= (= lt!1860432 lt!1860338) (= lambda!209542 lambda!209525))))

(assert (=> bs!1093225 (= (= lt!1860432 lt!1860309) (= lambda!209542 lambda!209521))))

(assert (=> d!1494075 true))

(declare-fun call!328456 () Bool)

(declare-fun bm!328450 () Bool)

(declare-fun c!803192 () Bool)

(assert (=> bm!328450 (= call!328456 (forall!11381 (ite c!803192 (toList!5662 lt!1859824) (_2!30264 (h!58771 (toList!5661 lm!2023)))) (ite c!803192 lambda!209539 lambda!209541)))))

(declare-fun e!2930935 () ListMap!5025)

(assert (=> b!4698404 (= e!2930935 lt!1859824)))

(declare-fun lt!1860443 () Unit!125616)

(declare-fun call!328457 () Unit!125616)

(assert (=> b!4698404 (= lt!1860443 call!328457)))

(assert (=> b!4698404 call!328456))

(declare-fun lt!1860451 () Unit!125616)

(assert (=> b!4698404 (= lt!1860451 lt!1860443)))

(declare-fun call!328455 () Bool)

(assert (=> b!4698404 call!328455))

(declare-fun lt!1860450 () Unit!125616)

(declare-fun Unit!125727 () Unit!125616)

(assert (=> b!4698404 (= lt!1860450 Unit!125727)))

(declare-fun e!2930934 () Bool)

(assert (=> d!1494075 e!2930934))

(declare-fun res!1983142 () Bool)

(assert (=> d!1494075 (=> (not res!1983142) (not e!2930934))))

(assert (=> d!1494075 (= res!1983142 (forall!11381 (_2!30264 (h!58771 (toList!5661 lm!2023))) lambda!209542))))

(assert (=> d!1494075 (= lt!1860432 e!2930935)))

(assert (=> d!1494075 (= c!803192 ((_ is Nil!52499) (_2!30264 (h!58771 (toList!5661 lm!2023)))))))

(assert (=> d!1494075 (noDuplicateKeys!1886 (_2!30264 (h!58771 (toList!5661 lm!2023))))))

(assert (=> d!1494075 (= (addToMapMapFromBucket!1318 (_2!30264 (h!58771 (toList!5661 lm!2023))) lt!1859824) lt!1860432)))

(declare-fun b!4698405 () Bool)

(assert (=> b!4698405 (= e!2930934 (invariantList!1436 (toList!5662 lt!1860432)))))

(declare-fun b!4698406 () Bool)

(declare-fun res!1983143 () Bool)

(assert (=> b!4698406 (=> (not res!1983143) (not e!2930934))))

(assert (=> b!4698406 (= res!1983143 (forall!11381 (toList!5662 lt!1859824) lambda!209542))))

(assert (=> b!4698407 (= e!2930935 lt!1860440)))

(declare-fun lt!1860431 () ListMap!5025)

(assert (=> b!4698407 (= lt!1860431 (+!2170 lt!1859824 (h!58770 (_2!30264 (h!58771 (toList!5661 lm!2023))))))))

(assert (=> b!4698407 (= lt!1860440 (addToMapMapFromBucket!1318 (t!359825 (_2!30264 (h!58771 (toList!5661 lm!2023)))) (+!2170 lt!1859824 (h!58770 (_2!30264 (h!58771 (toList!5661 lm!2023)))))))))

(declare-fun lt!1860442 () Unit!125616)

(assert (=> b!4698407 (= lt!1860442 call!328457)))

(assert (=> b!4698407 (forall!11381 (toList!5662 lt!1859824) lambda!209540)))

(declare-fun lt!1860438 () Unit!125616)

(assert (=> b!4698407 (= lt!1860438 lt!1860442)))

(assert (=> b!4698407 (forall!11381 (toList!5662 lt!1860431) lambda!209541)))

(declare-fun lt!1860448 () Unit!125616)

(declare-fun Unit!125728 () Unit!125616)

(assert (=> b!4698407 (= lt!1860448 Unit!125728)))

(assert (=> b!4698407 (forall!11381 (t!359825 (_2!30264 (h!58771 (toList!5661 lm!2023)))) lambda!209541)))

(declare-fun lt!1860444 () Unit!125616)

(declare-fun Unit!125729 () Unit!125616)

(assert (=> b!4698407 (= lt!1860444 Unit!125729)))

(declare-fun lt!1860446 () Unit!125616)

(declare-fun Unit!125730 () Unit!125616)

(assert (=> b!4698407 (= lt!1860446 Unit!125730)))

(declare-fun lt!1860437 () Unit!125616)

(assert (=> b!4698407 (= lt!1860437 (forallContained!3488 (toList!5662 lt!1860431) lambda!209541 (h!58770 (_2!30264 (h!58771 (toList!5661 lm!2023))))))))

(assert (=> b!4698407 (contains!15758 lt!1860431 (_1!30263 (h!58770 (_2!30264 (h!58771 (toList!5661 lm!2023))))))))

(declare-fun lt!1860436 () Unit!125616)

(declare-fun Unit!125731 () Unit!125616)

(assert (=> b!4698407 (= lt!1860436 Unit!125731)))

(assert (=> b!4698407 (contains!15758 lt!1860440 (_1!30263 (h!58770 (_2!30264 (h!58771 (toList!5661 lm!2023))))))))

(declare-fun lt!1860439 () Unit!125616)

(declare-fun Unit!125732 () Unit!125616)

(assert (=> b!4698407 (= lt!1860439 Unit!125732)))

(assert (=> b!4698407 (forall!11381 (_2!30264 (h!58771 (toList!5661 lm!2023))) lambda!209541)))

(declare-fun lt!1860441 () Unit!125616)

(declare-fun Unit!125733 () Unit!125616)

(assert (=> b!4698407 (= lt!1860441 Unit!125733)))

(assert (=> b!4698407 (forall!11381 (toList!5662 lt!1860431) lambda!209541)))

(declare-fun lt!1860449 () Unit!125616)

(declare-fun Unit!125734 () Unit!125616)

(assert (=> b!4698407 (= lt!1860449 Unit!125734)))

(declare-fun lt!1860435 () Unit!125616)

(declare-fun Unit!125735 () Unit!125616)

(assert (=> b!4698407 (= lt!1860435 Unit!125735)))

(declare-fun lt!1860445 () Unit!125616)

(assert (=> b!4698407 (= lt!1860445 (addForallContainsKeyThenBeforeAdding!723 lt!1859824 lt!1860440 (_1!30263 (h!58770 (_2!30264 (h!58771 (toList!5661 lm!2023))))) (_2!30263 (h!58770 (_2!30264 (h!58771 (toList!5661 lm!2023)))))))))

(assert (=> b!4698407 (forall!11381 (toList!5662 lt!1859824) lambda!209541)))

(declare-fun lt!1860433 () Unit!125616)

(assert (=> b!4698407 (= lt!1860433 lt!1860445)))

(assert (=> b!4698407 (forall!11381 (toList!5662 lt!1859824) lambda!209541)))

(declare-fun lt!1860447 () Unit!125616)

(declare-fun Unit!125736 () Unit!125616)

(assert (=> b!4698407 (= lt!1860447 Unit!125736)))

(declare-fun res!1983141 () Bool)

(assert (=> b!4698407 (= res!1983141 call!328456)))

(declare-fun e!2930936 () Bool)

(assert (=> b!4698407 (=> (not res!1983141) (not e!2930936))))

(assert (=> b!4698407 e!2930936))

(declare-fun lt!1860434 () Unit!125616)

(declare-fun Unit!125737 () Unit!125616)

(assert (=> b!4698407 (= lt!1860434 Unit!125737)))

(declare-fun bm!328451 () Bool)

(assert (=> bm!328451 (= call!328457 (lemmaContainsAllItsOwnKeys!724 lt!1859824))))

(declare-fun b!4698408 () Bool)

(assert (=> b!4698408 (= e!2930936 call!328455)))

(declare-fun bm!328452 () Bool)

(assert (=> bm!328452 (= call!328455 (forall!11381 (toList!5662 lt!1859824) (ite c!803192 lambda!209539 lambda!209541)))))

(assert (= (and d!1494075 c!803192) b!4698404))

(assert (= (and d!1494075 (not c!803192)) b!4698407))

(assert (= (and b!4698407 res!1983141) b!4698408))

(assert (= (or b!4698404 b!4698407) bm!328451))

(assert (= (or b!4698404 b!4698407) bm!328450))

(assert (= (or b!4698404 b!4698408) bm!328452))

(assert (= (and d!1494075 res!1983142) b!4698406))

(assert (= (and b!4698406 res!1983143) b!4698405))

(declare-fun m!5610147 () Bool)

(assert (=> bm!328452 m!5610147))

(declare-fun m!5610149 () Bool)

(assert (=> b!4698405 m!5610149))

(declare-fun m!5610151 () Bool)

(assert (=> bm!328450 m!5610151))

(assert (=> bm!328451 m!5609739))

(declare-fun m!5610153 () Bool)

(assert (=> b!4698407 m!5610153))

(declare-fun m!5610155 () Bool)

(assert (=> b!4698407 m!5610155))

(declare-fun m!5610157 () Bool)

(assert (=> b!4698407 m!5610157))

(declare-fun m!5610159 () Bool)

(assert (=> b!4698407 m!5610159))

(declare-fun m!5610161 () Bool)

(assert (=> b!4698407 m!5610161))

(declare-fun m!5610163 () Bool)

(assert (=> b!4698407 m!5610163))

(declare-fun m!5610165 () Bool)

(assert (=> b!4698407 m!5610165))

(assert (=> b!4698407 m!5610161))

(declare-fun m!5610167 () Bool)

(assert (=> b!4698407 m!5610167))

(assert (=> b!4698407 m!5610155))

(declare-fun m!5610169 () Bool)

(assert (=> b!4698407 m!5610169))

(declare-fun m!5610171 () Bool)

(assert (=> b!4698407 m!5610171))

(assert (=> b!4698407 m!5610171))

(declare-fun m!5610173 () Bool)

(assert (=> b!4698407 m!5610173))

(declare-fun m!5610175 () Bool)

(assert (=> b!4698406 m!5610175))

(declare-fun m!5610177 () Bool)

(assert (=> d!1494075 m!5610177))

(declare-fun m!5610179 () Bool)

(assert (=> d!1494075 m!5610179))

(assert (=> b!4697945 d!1494075))

(declare-fun bs!1093239 () Bool)

(declare-fun d!1494077 () Bool)

(assert (= bs!1093239 (and d!1494077 d!1493801)))

(declare-fun lambda!209543 () Int)

(assert (=> bs!1093239 (not (= lambda!209543 lambda!209384))))

(declare-fun bs!1093240 () Bool)

(assert (= bs!1093240 (and d!1494077 d!1493829)))

(assert (=> bs!1093240 (= lambda!209543 lambda!209398)))

(declare-fun bs!1093241 () Bool)

(assert (= bs!1093241 (and d!1494077 d!1493991)))

(assert (=> bs!1093241 (= lambda!209543 lambda!209507)))

(declare-fun bs!1093242 () Bool)

(assert (= bs!1093242 (and d!1494077 d!1493911)))

(assert (=> bs!1093242 (= lambda!209543 lambda!209449)))

(declare-fun bs!1093243 () Bool)

(assert (= bs!1093243 (and d!1494077 d!1493805)))

(assert (=> bs!1093243 (= lambda!209543 lambda!209396)))

(declare-fun bs!1093244 () Bool)

(assert (= bs!1093244 (and d!1494077 start!476136)))

(assert (=> bs!1093244 (= lambda!209543 lambda!209381)))

(declare-fun bs!1093245 () Bool)

(assert (= bs!1093245 (and d!1494077 d!1493825)))

(assert (=> bs!1093245 (= lambda!209543 lambda!209397)))

(declare-fun bs!1093246 () Bool)

(assert (= bs!1093246 (and d!1494077 d!1494063)))

(assert (=> bs!1093246 (= lambda!209543 lambda!209531)))

(declare-fun bs!1093247 () Bool)

(assert (= bs!1093247 (and d!1494077 d!1493907)))

(assert (=> bs!1093247 (= lambda!209543 lambda!209423)))

(declare-fun bs!1093248 () Bool)

(assert (= bs!1093248 (and d!1494077 d!1494069)))

(assert (=> bs!1093248 (= lambda!209543 lambda!209538)))

(declare-fun bs!1093249 () Bool)

(assert (= bs!1093249 (and d!1494077 d!1493839)))

(assert (=> bs!1093249 (= lambda!209543 lambda!209407)))

(declare-fun bs!1093250 () Bool)

(assert (= bs!1093250 (and d!1494077 d!1493881)))

(assert (=> bs!1093250 (= lambda!209543 lambda!209409)))

(declare-fun bs!1093251 () Bool)

(assert (= bs!1093251 (and d!1494077 d!1493985)))

(assert (=> bs!1093251 (= lambda!209543 lambda!209506)))

(declare-fun lt!1860452 () ListMap!5025)

(assert (=> d!1494077 (invariantList!1436 (toList!5662 lt!1860452))))

(declare-fun e!2930937 () ListMap!5025)

(assert (=> d!1494077 (= lt!1860452 e!2930937)))

(declare-fun c!803193 () Bool)

(assert (=> d!1494077 (= c!803193 ((_ is Cons!52500) (t!359826 (toList!5661 lm!2023))))))

(assert (=> d!1494077 (forall!11379 (t!359826 (toList!5661 lm!2023)) lambda!209543)))

(assert (=> d!1494077 (= (extractMap!1912 (t!359826 (toList!5661 lm!2023))) lt!1860452)))

(declare-fun b!4698409 () Bool)

(assert (=> b!4698409 (= e!2930937 (addToMapMapFromBucket!1318 (_2!30264 (h!58771 (t!359826 (toList!5661 lm!2023)))) (extractMap!1912 (t!359826 (t!359826 (toList!5661 lm!2023))))))))

(declare-fun b!4698410 () Bool)

(assert (=> b!4698410 (= e!2930937 (ListMap!5026 Nil!52499))))

(assert (= (and d!1494077 c!803193) b!4698409))

(assert (= (and d!1494077 (not c!803193)) b!4698410))

(declare-fun m!5610181 () Bool)

(assert (=> d!1494077 m!5610181))

(declare-fun m!5610183 () Bool)

(assert (=> d!1494077 m!5610183))

(declare-fun m!5610185 () Bool)

(assert (=> b!4698409 m!5610185))

(assert (=> b!4698409 m!5610185))

(declare-fun m!5610187 () Bool)

(assert (=> b!4698409 m!5610187))

(assert (=> b!4697945 d!1494077))

(declare-fun d!1494079 () Bool)

(assert (=> d!1494079 (= (tail!8683 lm!2023) (ListLongMap!4192 (tail!8684 (toList!5661 lm!2023))))))

(declare-fun bs!1093252 () Bool)

(assert (= bs!1093252 d!1494079))

(declare-fun m!5610189 () Bool)

(assert (=> bs!1093252 m!5610189))

(assert (=> b!4697945 d!1494079))

(declare-fun d!1494081 () Bool)

(declare-fun res!1983144 () Bool)

(declare-fun e!2930938 () Bool)

(assert (=> d!1494081 (=> res!1983144 e!2930938)))

(assert (=> d!1494081 (= res!1983144 (not ((_ is Cons!52499) newBucket!218)))))

(assert (=> d!1494081 (= (noDuplicateKeys!1886 newBucket!218) e!2930938)))

(declare-fun b!4698411 () Bool)

(declare-fun e!2930939 () Bool)

(assert (=> b!4698411 (= e!2930938 e!2930939)))

(declare-fun res!1983145 () Bool)

(assert (=> b!4698411 (=> (not res!1983145) (not e!2930939))))

(assert (=> b!4698411 (= res!1983145 (not (containsKey!3137 (t!359825 newBucket!218) (_1!30263 (h!58770 newBucket!218)))))))

(declare-fun b!4698412 () Bool)

(assert (=> b!4698412 (= e!2930939 (noDuplicateKeys!1886 (t!359825 newBucket!218)))))

(assert (= (and d!1494081 (not res!1983144)) b!4698411))

(assert (= (and b!4698411 res!1983145) b!4698412))

(declare-fun m!5610191 () Bool)

(assert (=> b!4698411 m!5610191))

(declare-fun m!5610193 () Bool)

(assert (=> b!4698412 m!5610193))

(assert (=> b!4697956 d!1494081))

(declare-fun b!4698417 () Bool)

(declare-fun e!2930942 () Bool)

(declare-fun tp!1346478 () Bool)

(assert (=> b!4698417 (= e!2930942 (and tp_is_empty!30837 tp_is_empty!30839 tp!1346478))))

(assert (=> b!4697938 (= tp!1346464 e!2930942)))

(assert (= (and b!4697938 ((_ is Cons!52499) (t!359825 oldBucket!34))) b!4698417))

(declare-fun e!2930943 () Bool)

(declare-fun b!4698418 () Bool)

(declare-fun tp!1346479 () Bool)

(assert (=> b!4698418 (= e!2930943 (and tp_is_empty!30837 tp_is_empty!30839 tp!1346479))))

(assert (=> b!4697944 (= tp!1346463 e!2930943)))

(assert (= (and b!4697944 ((_ is Cons!52499) (t!359825 newBucket!218))) b!4698418))

(declare-fun b!4698423 () Bool)

(declare-fun e!2930946 () Bool)

(declare-fun tp!1346484 () Bool)

(declare-fun tp!1346485 () Bool)

(assert (=> b!4698423 (= e!2930946 (and tp!1346484 tp!1346485))))

(assert (=> b!4697950 (= tp!1346465 e!2930946)))

(assert (= (and b!4697950 ((_ is Cons!52500) (toList!5661 lm!2023))) b!4698423))

(declare-fun b_lambda!177287 () Bool)

(assert (= b_lambda!177285 (or start!476136 b_lambda!177287)))

(declare-fun bs!1093253 () Bool)

(declare-fun d!1494083 () Bool)

(assert (= bs!1093253 (and d!1494083 start!476136)))

(assert (=> bs!1093253 (= (dynLambda!21739 lambda!209381 lt!1859830) (noDuplicateKeys!1886 (_2!30264 lt!1859830)))))

(declare-fun m!5610195 () Bool)

(assert (=> bs!1093253 m!5610195))

(assert (=> d!1494057 d!1494083))

(declare-fun b_lambda!177289 () Bool)

(assert (= b_lambda!177271 (or start!476136 b_lambda!177289)))

(declare-fun bs!1093254 () Bool)

(declare-fun d!1494085 () Bool)

(assert (= bs!1093254 (and d!1494085 start!476136)))

(assert (=> bs!1093254 (= (dynLambda!21739 lambda!209381 (h!58771 (toList!5661 lm!2023))) (noDuplicateKeys!1886 (_2!30264 (h!58771 (toList!5661 lm!2023)))))))

(assert (=> bs!1093254 m!5610179))

(assert (=> b!4698120 d!1494085))

(declare-fun b_lambda!177291 () Bool)

(assert (= b_lambda!177277 (or start!476136 b_lambda!177291)))

(declare-fun bs!1093255 () Bool)

(declare-fun d!1494087 () Bool)

(assert (= bs!1093255 (and d!1494087 start!476136)))

(assert (=> bs!1093255 (= (dynLambda!21739 lambda!209381 (h!58771 lt!1859854)) (noDuplicateKeys!1886 (_2!30264 (h!58771 lt!1859854))))))

(declare-fun m!5610197 () Bool)

(assert (=> bs!1093255 m!5610197))

(assert (=> b!4698315 d!1494087))

(check-sat (not b!4698062) (not bs!1093253) (not b!4698122) (not d!1494035) (not b!4698128) (not d!1494075) (not d!1493911) (not d!1494061) (not d!1493905) (not b!4698239) (not b!4698265) (not d!1493873) (not d!1493879) (not d!1493887) (not bm!328408) (not bm!328448) (not b!4698381) (not b_lambda!177289) (not d!1493805) (not b!4698406) (not b!4697993) (not b!4698059) (not b!4698258) (not b!4698412) (not d!1493985) (not b!4698083) (not b!4698250) (not b!4698411) (not b!4698051) (not d!1493991) (not d!1493875) (not b!4698361) (not bm!328450) (not bs!1093254) (not b!4698395) (not b!4698245) (not bm!328444) (not d!1494073) (not b!4698282) (not d!1493803) (not d!1493865) (not b!4698397) (not b!4698293) (not b!4698088) (not d!1493827) (not b!4698054) (not bm!328443) (not b!4698255) (not d!1494043) (not d!1493829) (not d!1493999) (not d!1493877) (not b!4698380) (not bm!328447) (not b!4698249) (not bm!328440) (not bm!328441) (not b!4698061) (not bm!328442) (not b!4698402) (not d!1494007) (not b!4698246) (not b!4698251) (not b!4698053) (not b!4698417) (not b!4698123) (not d!1493871) (not b!4698110) (not b!4698256) (not b!4698418) (not d!1493923) (not b!4698423) (not d!1493901) (not b!4698325) (not b!4698334) (not d!1493825) (not d!1493987) (not b!4698121) (not b!4698356) (not d!1493983) (not d!1494069) (not b!4698253) (not b_lambda!177287) (not b!4698383) (not d!1494005) (not d!1494057) (not b!4698084) (not bm!328438) (not b!4698247) (not d!1493867) (not b!4698394) (not b!4698275) (not d!1493881) (not d!1493853) (not d!1493993) (not bm!328446) (not b!4698240) (not b!4698283) (not b!4697986) (not b!4698407) (not b!4698260) (not d!1493801) (not b!4698405) (not b!4698052) (not b!4698316) (not b!4698382) tp_is_empty!30839 (not b!4698081) (not d!1493903) (not b!4698276) (not b!4698291) (not d!1493891) (not b!4698409) (not bm!328451) (not bm!328452) (not d!1494063) (not d!1494001) (not d!1493889) (not b!4698060) (not d!1493997) (not b!4698284) (not b!4698089) (not d!1493989) (not b!4698102) (not b!4698126) (not bm!328439) (not b!4698087) (not b!4698241) (not d!1493909) (not b!4698090) (not d!1493995) tp_is_empty!30837 (not d!1494077) (not bs!1093255) (not b!4698263) (not d!1494067) (not b!4698259) (not b!4698264) (not d!1494027) (not b!4698396) (not bm!328445) (not d!1493883) (not bm!328437) (not b!4698292) (not b!4698359) (not d!1494079) (not d!1493907) (not bm!328449) (not d!1493869) (not d!1493899) (not b!4698086) (not b_lambda!177291) (not d!1494065) (not b!4697988) (not d!1493839) (not b!4698261) (not d!1493919) (not b!4698378) (not d!1494017) (not b!4698403) (not b!4698323) (not d!1494025))
(check-sat)
