; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!474420 () Bool)

(assert start!474420)

(declare-fun b!4689897 () Bool)

(declare-fun res!1978124 () Bool)

(declare-fun e!2925846 () Bool)

(assert (=> b!4689897 (=> (not res!1978124) (not e!2925846))))

(declare-datatypes ((K!13785 0))(
  ( (K!13786 (val!19299 Int)) )
))
(declare-datatypes ((V!14031 0))(
  ( (V!14032 (val!19300 Int)) )
))
(declare-datatypes ((tuple2!53810 0))(
  ( (tuple2!53811 (_1!30199 K!13785) (_2!30199 V!14031)) )
))
(declare-datatypes ((List!52533 0))(
  ( (Nil!52409) (Cons!52409 (h!58654 tuple2!53810) (t!359709 List!52533)) )
))
(declare-datatypes ((tuple2!53812 0))(
  ( (tuple2!53813 (_1!30200 (_ BitVec 64)) (_2!30200 List!52533)) )
))
(declare-datatypes ((List!52534 0))(
  ( (Nil!52410) (Cons!52410 (h!58655 tuple2!53812) (t!359710 List!52534)) )
))
(declare-datatypes ((ListLongMap!4127 0))(
  ( (ListLongMap!4128 (toList!5597 List!52534)) )
))
(declare-fun lm!2023 () ListLongMap!4127)

(get-info :version)

(assert (=> b!4689897 (= res!1978124 ((_ is Cons!52410) (toList!5597 lm!2023)))))

(declare-fun b!4689898 () Bool)

(declare-fun e!2925843 () Bool)

(declare-fun e!2925847 () Bool)

(assert (=> b!4689898 (= e!2925843 e!2925847)))

(declare-fun res!1978128 () Bool)

(assert (=> b!4689898 (=> res!1978128 e!2925847)))

(declare-fun key!4653 () K!13785)

(declare-fun lt!1849664 () List!52533)

(declare-fun lt!1849669 () List!52533)

(declare-fun removePairForKey!1449 (List!52533 K!13785) List!52533)

(assert (=> b!4689898 (= res!1978128 (not (= (removePairForKey!1449 lt!1849669 key!4653) lt!1849664)))))

(declare-fun newBucket!218 () List!52533)

(declare-fun tail!8590 (List!52533) List!52533)

(assert (=> b!4689898 (= lt!1849664 (tail!8590 newBucket!218))))

(declare-fun oldBucket!34 () List!52533)

(assert (=> b!4689898 (= lt!1849669 (tail!8590 oldBucket!34))))

(declare-fun b!4689899 () Bool)

(declare-fun res!1978122 () Bool)

(declare-fun e!2925848 () Bool)

(assert (=> b!4689899 (=> (not res!1978122) (not e!2925848))))

(declare-fun hash!405 () (_ BitVec 64))

(declare-datatypes ((Hashable!6223 0))(
  ( (HashableExt!6222 (__x!31926 Int)) )
))
(declare-fun hashF!1323 () Hashable!6223)

(declare-fun allKeysSameHash!1680 (List!52533 (_ BitVec 64) Hashable!6223) Bool)

(assert (=> b!4689899 (= res!1978122 (allKeysSameHash!1680 newBucket!218 hash!405 hashF!1323))))

(declare-fun b!4689900 () Bool)

(declare-fun res!1978125 () Bool)

(declare-fun e!2925850 () Bool)

(assert (=> b!4689900 (=> (not res!1978125) (not e!2925850))))

(assert (=> b!4689900 (= res!1978125 (allKeysSameHash!1680 oldBucket!34 hash!405 hashF!1323))))

(declare-fun b!4689901 () Bool)

(assert (=> b!4689901 (= e!2925848 e!2925846)))

(declare-fun res!1978119 () Bool)

(assert (=> b!4689901 (=> (not res!1978119) (not e!2925846))))

(declare-fun lt!1849675 () tuple2!53812)

(declare-fun head!9971 (List!52534) tuple2!53812)

(assert (=> b!4689901 (= res!1978119 (= (head!9971 (toList!5597 lm!2023)) lt!1849675))))

(assert (=> b!4689901 (= lt!1849675 (tuple2!53813 hash!405 oldBucket!34))))

(declare-fun b!4689902 () Bool)

(declare-fun lt!1849663 () tuple2!53810)

(declare-fun e!2925851 () Bool)

(assert (=> b!4689902 (= e!2925851 (or (not (= (h!58654 oldBucket!34) lt!1849663)) (not (= newBucket!218 Nil!52409))))))

(declare-fun b!4689904 () Bool)

(assert (=> b!4689904 (= e!2925847 e!2925851)))

(declare-fun res!1978126 () Bool)

(assert (=> b!4689904 (=> res!1978126 e!2925851)))

(declare-datatypes ((ListMap!4961 0))(
  ( (ListMap!4962 (toList!5598 List!52533)) )
))
(declare-fun eq!1013 (ListMap!4961 ListMap!4961) Bool)

(declare-fun extractMap!1880 (List!52534) ListMap!4961)

(declare-fun +!2138 (ListMap!4961 tuple2!53810) ListMap!4961)

(assert (=> b!4689904 (= res!1978126 (not (eq!1013 (extractMap!1880 (Cons!52410 lt!1849675 (t!359710 (toList!5597 lm!2023)))) (+!2138 (extractMap!1880 (Cons!52410 (tuple2!53813 hash!405 lt!1849669) (t!359710 (toList!5597 lm!2023)))) (h!58654 oldBucket!34)))))))

(declare-fun lt!1849668 () ListMap!4961)

(declare-fun addToMapMapFromBucket!1286 (List!52533 ListMap!4961) ListMap!4961)

(assert (=> b!4689904 (eq!1013 (addToMapMapFromBucket!1286 (Cons!52409 lt!1849663 lt!1849664) lt!1849668) (+!2138 (addToMapMapFromBucket!1286 lt!1849664 lt!1849668) lt!1849663))))

(declare-datatypes ((Unit!124025 0))(
  ( (Unit!124026) )
))
(declare-fun lt!1849661 () Unit!124025)

(declare-fun lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!262 (tuple2!53810 List!52533 ListMap!4961) Unit!124025)

(assert (=> b!4689904 (= lt!1849661 (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!262 lt!1849663 lt!1849664 lt!1849668))))

(declare-fun head!9972 (List!52533) tuple2!53810)

(assert (=> b!4689904 (= lt!1849663 (head!9972 newBucket!218))))

(declare-fun lt!1849677 () tuple2!53810)

(assert (=> b!4689904 (eq!1013 (addToMapMapFromBucket!1286 (Cons!52409 lt!1849677 lt!1849669) lt!1849668) (+!2138 (addToMapMapFromBucket!1286 lt!1849669 lt!1849668) lt!1849677))))

(declare-fun lt!1849662 () Unit!124025)

(assert (=> b!4689904 (= lt!1849662 (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!262 lt!1849677 lt!1849669 lt!1849668))))

(assert (=> b!4689904 (= lt!1849677 (head!9972 oldBucket!34))))

(declare-fun lt!1849671 () List!52534)

(declare-fun contains!15608 (ListMap!4961 K!13785) Bool)

(assert (=> b!4689904 (contains!15608 (extractMap!1880 lt!1849671) key!4653)))

(declare-fun lt!1849670 () Unit!124025)

(declare-fun lemmaListContainsThenExtractedMapContains!446 (ListLongMap!4127 K!13785 Hashable!6223) Unit!124025)

(assert (=> b!4689904 (= lt!1849670 (lemmaListContainsThenExtractedMapContains!446 (ListLongMap!4128 lt!1849671) key!4653 hashF!1323))))

(assert (=> b!4689904 (= lt!1849671 (Cons!52410 (tuple2!53813 hash!405 (t!359709 oldBucket!34)) (t!359710 (toList!5597 lm!2023))))))

(declare-fun tp!1345915 () Bool)

(declare-fun b!4689905 () Bool)

(declare-fun tp_is_empty!30711 () Bool)

(declare-fun e!2925842 () Bool)

(declare-fun tp_is_empty!30709 () Bool)

(assert (=> b!4689905 (= e!2925842 (and tp_is_empty!30709 tp_is_empty!30711 tp!1345915))))

(declare-fun b!4689906 () Bool)

(declare-fun res!1978116 () Bool)

(assert (=> b!4689906 (=> (not res!1978116) (not e!2925850))))

(assert (=> b!4689906 (= res!1978116 (= (removePairForKey!1449 oldBucket!34 key!4653) newBucket!218))))

(declare-fun b!4689907 () Bool)

(declare-fun e!2925844 () Bool)

(declare-fun tp!1345917 () Bool)

(assert (=> b!4689907 (= e!2925844 tp!1345917)))

(declare-fun b!4689908 () Bool)

(declare-fun res!1978114 () Bool)

(assert (=> b!4689908 (=> res!1978114 e!2925847)))

(assert (=> b!4689908 (= res!1978114 (not (= (removePairForKey!1449 (t!359709 oldBucket!34) key!4653) lt!1849664)))))

(declare-fun tp!1345916 () Bool)

(declare-fun b!4689909 () Bool)

(declare-fun e!2925845 () Bool)

(assert (=> b!4689909 (= e!2925845 (and tp_is_empty!30709 tp_is_empty!30711 tp!1345916))))

(declare-fun b!4689910 () Bool)

(declare-fun res!1978115 () Bool)

(assert (=> b!4689910 (=> (not res!1978115) (not e!2925850))))

(declare-fun noDuplicateKeys!1854 (List!52533) Bool)

(assert (=> b!4689910 (= res!1978115 (noDuplicateKeys!1854 newBucket!218))))

(declare-fun b!4689911 () Bool)

(declare-fun res!1978129 () Bool)

(assert (=> b!4689911 (=> (not res!1978129) (not e!2925848))))

(declare-fun allKeysSameHashInMap!1768 (ListLongMap!4127 Hashable!6223) Bool)

(assert (=> b!4689911 (= res!1978129 (allKeysSameHashInMap!1768 lm!2023 hashF!1323))))

(declare-fun b!4689912 () Bool)

(declare-fun res!1978118 () Bool)

(assert (=> b!4689912 (=> (not res!1978118) (not e!2925850))))

(assert (=> b!4689912 (= res!1978118 (noDuplicateKeys!1854 oldBucket!34))))

(declare-fun b!4689913 () Bool)

(declare-fun e!2925849 () Bool)

(assert (=> b!4689913 (= e!2925846 (not e!2925849))))

(declare-fun res!1978121 () Bool)

(assert (=> b!4689913 (=> res!1978121 e!2925849)))

(assert (=> b!4689913 (= res!1978121 (or (and ((_ is Cons!52409) oldBucket!34) (= (_1!30199 (h!58654 oldBucket!34)) key!4653)) (not ((_ is Cons!52409) oldBucket!34)) (= (_1!30199 (h!58654 oldBucket!34)) key!4653)))))

(declare-fun lt!1849660 () ListMap!4961)

(assert (=> b!4689913 (= lt!1849660 (addToMapMapFromBucket!1286 (_2!30200 (h!58655 (toList!5597 lm!2023))) lt!1849668))))

(assert (=> b!4689913 (= lt!1849668 (extractMap!1880 (t!359710 (toList!5597 lm!2023))))))

(declare-fun tail!8591 (ListLongMap!4127) ListLongMap!4127)

(assert (=> b!4689913 (= (t!359710 (toList!5597 lm!2023)) (toList!5597 (tail!8591 lm!2023)))))

(declare-fun b!4689914 () Bool)

(declare-fun e!2925852 () Bool)

(assert (=> b!4689914 (= e!2925850 e!2925852)))

(declare-fun res!1978117 () Bool)

(assert (=> b!4689914 (=> (not res!1978117) (not e!2925852))))

(assert (=> b!4689914 (= res!1978117 (contains!15608 lt!1849660 key!4653))))

(assert (=> b!4689914 (= lt!1849660 (extractMap!1880 (toList!5597 lm!2023)))))

(declare-fun b!4689915 () Bool)

(assert (=> b!4689915 (= e!2925849 e!2925843)))

(declare-fun res!1978120 () Bool)

(assert (=> b!4689915 (=> res!1978120 e!2925843)))

(declare-fun containsKey!3053 (List!52533 K!13785) Bool)

(assert (=> b!4689915 (= res!1978120 (not (containsKey!3053 (t!359709 oldBucket!34) key!4653)))))

(assert (=> b!4689915 (containsKey!3053 oldBucket!34 key!4653)))

(declare-fun lt!1849676 () Unit!124025)

(declare-fun lemmaGetPairDefinedThenContainsKey!206 (List!52533 K!13785 Hashable!6223) Unit!124025)

(assert (=> b!4689915 (= lt!1849676 (lemmaGetPairDefinedThenContainsKey!206 oldBucket!34 key!4653 hashF!1323))))

(declare-fun lt!1849673 () List!52533)

(declare-datatypes ((Option!12077 0))(
  ( (None!12076) (Some!12076 (v!46491 tuple2!53810)) )
))
(declare-fun isDefined!9332 (Option!12077) Bool)

(declare-fun getPair!458 (List!52533 K!13785) Option!12077)

(assert (=> b!4689915 (isDefined!9332 (getPair!458 lt!1849673 key!4653))))

(declare-fun lt!1849674 () tuple2!53812)

(declare-fun lt!1849678 () Unit!124025)

(declare-fun lambda!207103 () Int)

(declare-fun forallContained!3428 (List!52534 Int tuple2!53812) Unit!124025)

(assert (=> b!4689915 (= lt!1849678 (forallContained!3428 (toList!5597 lm!2023) lambda!207103 lt!1849674))))

(declare-fun contains!15609 (List!52534 tuple2!53812) Bool)

(assert (=> b!4689915 (contains!15609 (toList!5597 lm!2023) lt!1849674)))

(declare-fun lt!1849666 () (_ BitVec 64))

(assert (=> b!4689915 (= lt!1849674 (tuple2!53813 lt!1849666 lt!1849673))))

(declare-fun lt!1849672 () Unit!124025)

(declare-fun lemmaGetValueImpliesTupleContained!263 (ListLongMap!4127 (_ BitVec 64) List!52533) Unit!124025)

(assert (=> b!4689915 (= lt!1849672 (lemmaGetValueImpliesTupleContained!263 lm!2023 lt!1849666 lt!1849673))))

(declare-fun apply!12337 (ListLongMap!4127 (_ BitVec 64)) List!52533)

(assert (=> b!4689915 (= lt!1849673 (apply!12337 lm!2023 lt!1849666))))

(declare-fun contains!15610 (ListLongMap!4127 (_ BitVec 64)) Bool)

(assert (=> b!4689915 (contains!15610 lm!2023 lt!1849666)))

(declare-fun lt!1849667 () Unit!124025)

(declare-fun lemmaInGenMapThenLongMapContainsHash!664 (ListLongMap!4127 K!13785 Hashable!6223) Unit!124025)

(assert (=> b!4689915 (= lt!1849667 (lemmaInGenMapThenLongMapContainsHash!664 lm!2023 key!4653 hashF!1323))))

(declare-fun lt!1849665 () Unit!124025)

(declare-fun lemmaInGenMapThenGetPairDefined!254 (ListLongMap!4127 K!13785 Hashable!6223) Unit!124025)

(assert (=> b!4689915 (= lt!1849665 (lemmaInGenMapThenGetPairDefined!254 lm!2023 key!4653 hashF!1323))))

(declare-fun res!1978123 () Bool)

(assert (=> start!474420 (=> (not res!1978123) (not e!2925850))))

(declare-fun forall!11321 (List!52534 Int) Bool)

(assert (=> start!474420 (= res!1978123 (forall!11321 (toList!5597 lm!2023) lambda!207103))))

(assert (=> start!474420 e!2925850))

(declare-fun inv!67659 (ListLongMap!4127) Bool)

(assert (=> start!474420 (and (inv!67659 lm!2023) e!2925844)))

(assert (=> start!474420 tp_is_empty!30709))

(assert (=> start!474420 e!2925842))

(assert (=> start!474420 true))

(assert (=> start!474420 e!2925845))

(declare-fun b!4689903 () Bool)

(assert (=> b!4689903 (= e!2925852 e!2925848)))

(declare-fun res!1978127 () Bool)

(assert (=> b!4689903 (=> (not res!1978127) (not e!2925848))))

(assert (=> b!4689903 (= res!1978127 (= lt!1849666 hash!405))))

(declare-fun hash!4065 (Hashable!6223 K!13785) (_ BitVec 64))

(assert (=> b!4689903 (= lt!1849666 (hash!4065 hashF!1323 key!4653))))

(assert (= (and start!474420 res!1978123) b!4689912))

(assert (= (and b!4689912 res!1978118) b!4689910))

(assert (= (and b!4689910 res!1978115) b!4689906))

(assert (= (and b!4689906 res!1978116) b!4689900))

(assert (= (and b!4689900 res!1978125) b!4689914))

(assert (= (and b!4689914 res!1978117) b!4689903))

(assert (= (and b!4689903 res!1978127) b!4689899))

(assert (= (and b!4689899 res!1978122) b!4689911))

(assert (= (and b!4689911 res!1978129) b!4689901))

(assert (= (and b!4689901 res!1978119) b!4689897))

(assert (= (and b!4689897 res!1978124) b!4689913))

(assert (= (and b!4689913 (not res!1978121)) b!4689915))

(assert (= (and b!4689915 (not res!1978120)) b!4689898))

(assert (= (and b!4689898 (not res!1978128)) b!4689908))

(assert (= (and b!4689908 (not res!1978114)) b!4689904))

(assert (= (and b!4689904 (not res!1978126)) b!4689902))

(assert (= start!474420 b!4689907))

(assert (= (and start!474420 ((_ is Cons!52409) oldBucket!34)) b!4689905))

(assert (= (and start!474420 ((_ is Cons!52409) newBucket!218)) b!4689909))

(declare-fun m!5591901 () Bool)

(assert (=> b!4689914 m!5591901))

(declare-fun m!5591903 () Bool)

(assert (=> b!4689914 m!5591903))

(declare-fun m!5591905 () Bool)

(assert (=> b!4689899 m!5591905))

(declare-fun m!5591907 () Bool)

(assert (=> b!4689904 m!5591907))

(declare-fun m!5591909 () Bool)

(assert (=> b!4689904 m!5591909))

(declare-fun m!5591911 () Bool)

(assert (=> b!4689904 m!5591911))

(assert (=> b!4689904 m!5591907))

(declare-fun m!5591913 () Bool)

(assert (=> b!4689904 m!5591913))

(declare-fun m!5591915 () Bool)

(assert (=> b!4689904 m!5591915))

(declare-fun m!5591917 () Bool)

(assert (=> b!4689904 m!5591917))

(declare-fun m!5591919 () Bool)

(assert (=> b!4689904 m!5591919))

(declare-fun m!5591921 () Bool)

(assert (=> b!4689904 m!5591921))

(declare-fun m!5591923 () Bool)

(assert (=> b!4689904 m!5591923))

(declare-fun m!5591925 () Bool)

(assert (=> b!4689904 m!5591925))

(declare-fun m!5591927 () Bool)

(assert (=> b!4689904 m!5591927))

(declare-fun m!5591929 () Bool)

(assert (=> b!4689904 m!5591929))

(declare-fun m!5591931 () Bool)

(assert (=> b!4689904 m!5591931))

(assert (=> b!4689904 m!5591913))

(declare-fun m!5591933 () Bool)

(assert (=> b!4689904 m!5591933))

(assert (=> b!4689904 m!5591925))

(assert (=> b!4689904 m!5591909))

(assert (=> b!4689904 m!5591915))

(declare-fun m!5591935 () Bool)

(assert (=> b!4689904 m!5591935))

(declare-fun m!5591937 () Bool)

(assert (=> b!4689904 m!5591937))

(assert (=> b!4689904 m!5591917))

(declare-fun m!5591939 () Bool)

(assert (=> b!4689904 m!5591939))

(assert (=> b!4689904 m!5591921))

(declare-fun m!5591941 () Bool)

(assert (=> b!4689904 m!5591941))

(assert (=> b!4689904 m!5591937))

(assert (=> b!4689904 m!5591935))

(assert (=> b!4689904 m!5591933))

(declare-fun m!5591943 () Bool)

(assert (=> b!4689904 m!5591943))

(declare-fun m!5591945 () Bool)

(assert (=> b!4689900 m!5591945))

(declare-fun m!5591947 () Bool)

(assert (=> b!4689912 m!5591947))

(declare-fun m!5591949 () Bool)

(assert (=> start!474420 m!5591949))

(declare-fun m!5591951 () Bool)

(assert (=> start!474420 m!5591951))

(declare-fun m!5591953 () Bool)

(assert (=> b!4689913 m!5591953))

(declare-fun m!5591955 () Bool)

(assert (=> b!4689913 m!5591955))

(declare-fun m!5591957 () Bool)

(assert (=> b!4689913 m!5591957))

(declare-fun m!5591959 () Bool)

(assert (=> b!4689898 m!5591959))

(declare-fun m!5591961 () Bool)

(assert (=> b!4689898 m!5591961))

(declare-fun m!5591963 () Bool)

(assert (=> b!4689898 m!5591963))

(declare-fun m!5591965 () Bool)

(assert (=> b!4689908 m!5591965))

(declare-fun m!5591967 () Bool)

(assert (=> b!4689910 m!5591967))

(declare-fun m!5591969 () Bool)

(assert (=> b!4689911 m!5591969))

(declare-fun m!5591971 () Bool)

(assert (=> b!4689901 m!5591971))

(declare-fun m!5591973 () Bool)

(assert (=> b!4689903 m!5591973))

(declare-fun m!5591975 () Bool)

(assert (=> b!4689906 m!5591975))

(declare-fun m!5591977 () Bool)

(assert (=> b!4689915 m!5591977))

(declare-fun m!5591979 () Bool)

(assert (=> b!4689915 m!5591979))

(declare-fun m!5591981 () Bool)

(assert (=> b!4689915 m!5591981))

(declare-fun m!5591983 () Bool)

(assert (=> b!4689915 m!5591983))

(declare-fun m!5591985 () Bool)

(assert (=> b!4689915 m!5591985))

(declare-fun m!5591987 () Bool)

(assert (=> b!4689915 m!5591987))

(declare-fun m!5591989 () Bool)

(assert (=> b!4689915 m!5591989))

(declare-fun m!5591991 () Bool)

(assert (=> b!4689915 m!5591991))

(declare-fun m!5591993 () Bool)

(assert (=> b!4689915 m!5591993))

(declare-fun m!5591995 () Bool)

(assert (=> b!4689915 m!5591995))

(assert (=> b!4689915 m!5591979))

(declare-fun m!5591997 () Bool)

(assert (=> b!4689915 m!5591997))

(declare-fun m!5591999 () Bool)

(assert (=> b!4689915 m!5591999))

(check-sat (not b!4689904) (not b!4689899) (not start!474420) tp_is_empty!30711 (not b!4689906) (not b!4689911) (not b!4689907) (not b!4689913) (not b!4689908) (not b!4689914) (not b!4689905) (not b!4689915) (not b!4689900) (not b!4689910) (not b!4689901) tp_is_empty!30709 (not b!4689909) (not b!4689898) (not b!4689912) (not b!4689903))
(check-sat)
(get-model)

(declare-fun d!1490457 () Bool)

(assert (=> d!1490457 true))

(assert (=> d!1490457 true))

(declare-fun lambda!207106 () Int)

(declare-fun forall!11323 (List!52533 Int) Bool)

(assert (=> d!1490457 (= (allKeysSameHash!1680 newBucket!218 hash!405 hashF!1323) (forall!11323 newBucket!218 lambda!207106))))

(declare-fun bs!1086528 () Bool)

(assert (= bs!1086528 d!1490457))

(declare-fun m!5592001 () Bool)

(assert (=> bs!1086528 m!5592001))

(assert (=> b!4689899 d!1490457))

(declare-fun d!1490459 () Bool)

(declare-fun res!1978134 () Bool)

(declare-fun e!2925857 () Bool)

(assert (=> d!1490459 (=> res!1978134 e!2925857)))

(assert (=> d!1490459 (= res!1978134 (not ((_ is Cons!52409) newBucket!218)))))

(assert (=> d!1490459 (= (noDuplicateKeys!1854 newBucket!218) e!2925857)))

(declare-fun b!4689924 () Bool)

(declare-fun e!2925858 () Bool)

(assert (=> b!4689924 (= e!2925857 e!2925858)))

(declare-fun res!1978135 () Bool)

(assert (=> b!4689924 (=> (not res!1978135) (not e!2925858))))

(assert (=> b!4689924 (= res!1978135 (not (containsKey!3053 (t!359709 newBucket!218) (_1!30199 (h!58654 newBucket!218)))))))

(declare-fun b!4689925 () Bool)

(assert (=> b!4689925 (= e!2925858 (noDuplicateKeys!1854 (t!359709 newBucket!218)))))

(assert (= (and d!1490459 (not res!1978134)) b!4689924))

(assert (= (and b!4689924 res!1978135) b!4689925))

(declare-fun m!5592003 () Bool)

(assert (=> b!4689924 m!5592003))

(declare-fun m!5592005 () Bool)

(assert (=> b!4689925 m!5592005))

(assert (=> b!4689910 d!1490459))

(declare-fun bs!1086529 () Bool)

(declare-fun d!1490461 () Bool)

(assert (= bs!1086529 (and d!1490461 d!1490457)))

(declare-fun lambda!207107 () Int)

(assert (=> bs!1086529 (= lambda!207107 lambda!207106)))

(assert (=> d!1490461 true))

(assert (=> d!1490461 true))

(assert (=> d!1490461 (= (allKeysSameHash!1680 oldBucket!34 hash!405 hashF!1323) (forall!11323 oldBucket!34 lambda!207107))))

(declare-fun bs!1086530 () Bool)

(assert (= bs!1086530 d!1490461))

(declare-fun m!5592007 () Bool)

(assert (=> bs!1086530 m!5592007))

(assert (=> b!4689900 d!1490461))

(declare-fun bs!1086531 () Bool)

(declare-fun d!1490463 () Bool)

(assert (= bs!1086531 (and d!1490463 start!474420)))

(declare-fun lambda!207110 () Int)

(assert (=> bs!1086531 (not (= lambda!207110 lambda!207103))))

(assert (=> d!1490463 true))

(assert (=> d!1490463 (= (allKeysSameHashInMap!1768 lm!2023 hashF!1323) (forall!11321 (toList!5597 lm!2023) lambda!207110))))

(declare-fun bs!1086532 () Bool)

(assert (= bs!1086532 d!1490463))

(declare-fun m!5592009 () Bool)

(assert (=> bs!1086532 m!5592009))

(assert (=> b!4689911 d!1490463))

(declare-fun d!1490465 () Bool)

(assert (=> d!1490465 (= (head!9971 (toList!5597 lm!2023)) (h!58655 (toList!5597 lm!2023)))))

(assert (=> b!4689901 d!1490465))

(declare-fun d!1490467 () Bool)

(declare-fun res!1978136 () Bool)

(declare-fun e!2925859 () Bool)

(assert (=> d!1490467 (=> res!1978136 e!2925859)))

(assert (=> d!1490467 (= res!1978136 (not ((_ is Cons!52409) oldBucket!34)))))

(assert (=> d!1490467 (= (noDuplicateKeys!1854 oldBucket!34) e!2925859)))

(declare-fun b!4689928 () Bool)

(declare-fun e!2925860 () Bool)

(assert (=> b!4689928 (= e!2925859 e!2925860)))

(declare-fun res!1978137 () Bool)

(assert (=> b!4689928 (=> (not res!1978137) (not e!2925860))))

(assert (=> b!4689928 (= res!1978137 (not (containsKey!3053 (t!359709 oldBucket!34) (_1!30199 (h!58654 oldBucket!34)))))))

(declare-fun b!4689929 () Bool)

(assert (=> b!4689929 (= e!2925860 (noDuplicateKeys!1854 (t!359709 oldBucket!34)))))

(assert (= (and d!1490467 (not res!1978136)) b!4689928))

(assert (= (and b!4689928 res!1978137) b!4689929))

(declare-fun m!5592011 () Bool)

(assert (=> b!4689928 m!5592011))

(declare-fun m!5592013 () Bool)

(assert (=> b!4689929 m!5592013))

(assert (=> b!4689912 d!1490467))

(declare-fun bs!1086584 () Bool)

(declare-fun b!4690014 () Bool)

(assert (= bs!1086584 (and b!4690014 d!1490457)))

(declare-fun lambda!207187 () Int)

(assert (=> bs!1086584 (not (= lambda!207187 lambda!207106))))

(declare-fun bs!1086585 () Bool)

(assert (= bs!1086585 (and b!4690014 d!1490461)))

(assert (=> bs!1086585 (not (= lambda!207187 lambda!207107))))

(assert (=> b!4690014 true))

(declare-fun bs!1086586 () Bool)

(declare-fun b!4690015 () Bool)

(assert (= bs!1086586 (and b!4690015 d!1490457)))

(declare-fun lambda!207188 () Int)

(assert (=> bs!1086586 (not (= lambda!207188 lambda!207106))))

(declare-fun bs!1086587 () Bool)

(assert (= bs!1086587 (and b!4690015 d!1490461)))

(assert (=> bs!1086587 (not (= lambda!207188 lambda!207107))))

(declare-fun bs!1086588 () Bool)

(assert (= bs!1086588 (and b!4690015 b!4690014)))

(assert (=> bs!1086588 (= lambda!207188 lambda!207187)))

(assert (=> b!4690015 true))

(declare-fun lambda!207189 () Int)

(assert (=> bs!1086586 (not (= lambda!207189 lambda!207106))))

(assert (=> bs!1086587 (not (= lambda!207189 lambda!207107))))

(declare-fun lt!1849866 () ListMap!4961)

(assert (=> bs!1086588 (= (= lt!1849866 lt!1849668) (= lambda!207189 lambda!207187))))

(assert (=> b!4690015 (= (= lt!1849866 lt!1849668) (= lambda!207189 lambda!207188))))

(assert (=> b!4690015 true))

(declare-fun bs!1086589 () Bool)

(declare-fun d!1490469 () Bool)

(assert (= bs!1086589 (and d!1490469 d!1490461)))

(declare-fun lambda!207190 () Int)

(assert (=> bs!1086589 (not (= lambda!207190 lambda!207107))))

(declare-fun bs!1086590 () Bool)

(assert (= bs!1086590 (and d!1490469 b!4690015)))

(declare-fun lt!1849874 () ListMap!4961)

(assert (=> bs!1086590 (= (= lt!1849874 lt!1849668) (= lambda!207190 lambda!207188))))

(declare-fun bs!1086591 () Bool)

(assert (= bs!1086591 (and d!1490469 b!4690014)))

(assert (=> bs!1086591 (= (= lt!1849874 lt!1849668) (= lambda!207190 lambda!207187))))

(declare-fun bs!1086592 () Bool)

(assert (= bs!1086592 (and d!1490469 d!1490457)))

(assert (=> bs!1086592 (not (= lambda!207190 lambda!207106))))

(assert (=> bs!1086590 (= (= lt!1849874 lt!1849866) (= lambda!207190 lambda!207189))))

(assert (=> d!1490469 true))

(declare-fun bm!327774 () Bool)

(declare-fun call!327781 () Unit!124025)

(declare-fun lemmaContainsAllItsOwnKeys!698 (ListMap!4961) Unit!124025)

(assert (=> bm!327774 (= call!327781 (lemmaContainsAllItsOwnKeys!698 lt!1849668))))

(declare-fun b!4690013 () Bool)

(declare-fun e!2925911 () Bool)

(assert (=> b!4690013 (= e!2925911 (forall!11323 (toList!5598 lt!1849668) lambda!207189))))

(declare-fun e!2925912 () ListMap!4961)

(assert (=> b!4690014 (= e!2925912 lt!1849668)))

(declare-fun lt!1849864 () Unit!124025)

(assert (=> b!4690014 (= lt!1849864 call!327781)))

(declare-fun call!327780 () Bool)

(assert (=> b!4690014 call!327780))

(declare-fun lt!1849862 () Unit!124025)

(assert (=> b!4690014 (= lt!1849862 lt!1849864)))

(declare-fun call!327779 () Bool)

(assert (=> b!4690014 call!327779))

(declare-fun lt!1849876 () Unit!124025)

(declare-fun Unit!124049 () Unit!124025)

(assert (=> b!4690014 (= lt!1849876 Unit!124049)))

(assert (=> b!4690015 (= e!2925912 lt!1849866)))

(declare-fun lt!1849870 () ListMap!4961)

(assert (=> b!4690015 (= lt!1849870 (+!2138 lt!1849668 (h!58654 (_2!30200 (h!58655 (toList!5597 lm!2023))))))))

(assert (=> b!4690015 (= lt!1849866 (addToMapMapFromBucket!1286 (t!359709 (_2!30200 (h!58655 (toList!5597 lm!2023)))) (+!2138 lt!1849668 (h!58654 (_2!30200 (h!58655 (toList!5597 lm!2023)))))))))

(declare-fun lt!1849871 () Unit!124025)

(assert (=> b!4690015 (= lt!1849871 call!327781)))

(assert (=> b!4690015 (forall!11323 (toList!5598 lt!1849668) lambda!207188)))

(declare-fun lt!1849865 () Unit!124025)

(assert (=> b!4690015 (= lt!1849865 lt!1849871)))

(assert (=> b!4690015 (forall!11323 (toList!5598 lt!1849870) lambda!207189)))

(declare-fun lt!1849863 () Unit!124025)

(declare-fun Unit!124050 () Unit!124025)

(assert (=> b!4690015 (= lt!1849863 Unit!124050)))

(assert (=> b!4690015 (forall!11323 (t!359709 (_2!30200 (h!58655 (toList!5597 lm!2023)))) lambda!207189)))

(declare-fun lt!1849858 () Unit!124025)

(declare-fun Unit!124051 () Unit!124025)

(assert (=> b!4690015 (= lt!1849858 Unit!124051)))

(declare-fun lt!1849859 () Unit!124025)

(declare-fun Unit!124052 () Unit!124025)

(assert (=> b!4690015 (= lt!1849859 Unit!124052)))

(declare-fun lt!1849861 () Unit!124025)

(declare-fun forallContained!3430 (List!52533 Int tuple2!53810) Unit!124025)

(assert (=> b!4690015 (= lt!1849861 (forallContained!3430 (toList!5598 lt!1849870) lambda!207189 (h!58654 (_2!30200 (h!58655 (toList!5597 lm!2023))))))))

(assert (=> b!4690015 (contains!15608 lt!1849870 (_1!30199 (h!58654 (_2!30200 (h!58655 (toList!5597 lm!2023))))))))

(declare-fun lt!1849872 () Unit!124025)

(declare-fun Unit!124053 () Unit!124025)

(assert (=> b!4690015 (= lt!1849872 Unit!124053)))

(assert (=> b!4690015 (contains!15608 lt!1849866 (_1!30199 (h!58654 (_2!30200 (h!58655 (toList!5597 lm!2023))))))))

(declare-fun lt!1849857 () Unit!124025)

(declare-fun Unit!124054 () Unit!124025)

(assert (=> b!4690015 (= lt!1849857 Unit!124054)))

(assert (=> b!4690015 (forall!11323 (_2!30200 (h!58655 (toList!5597 lm!2023))) lambda!207189)))

(declare-fun lt!1849868 () Unit!124025)

(declare-fun Unit!124055 () Unit!124025)

(assert (=> b!4690015 (= lt!1849868 Unit!124055)))

(assert (=> b!4690015 (forall!11323 (toList!5598 lt!1849870) lambda!207189)))

(declare-fun lt!1849875 () Unit!124025)

(declare-fun Unit!124056 () Unit!124025)

(assert (=> b!4690015 (= lt!1849875 Unit!124056)))

(declare-fun lt!1849869 () Unit!124025)

(declare-fun Unit!124057 () Unit!124025)

(assert (=> b!4690015 (= lt!1849869 Unit!124057)))

(declare-fun lt!1849873 () Unit!124025)

(declare-fun addForallContainsKeyThenBeforeAdding!697 (ListMap!4961 ListMap!4961 K!13785 V!14031) Unit!124025)

(assert (=> b!4690015 (= lt!1849873 (addForallContainsKeyThenBeforeAdding!697 lt!1849668 lt!1849866 (_1!30199 (h!58654 (_2!30200 (h!58655 (toList!5597 lm!2023))))) (_2!30199 (h!58654 (_2!30200 (h!58655 (toList!5597 lm!2023)))))))))

(assert (=> b!4690015 call!327779))

(declare-fun lt!1849877 () Unit!124025)

(assert (=> b!4690015 (= lt!1849877 lt!1849873)))

(assert (=> b!4690015 (forall!11323 (toList!5598 lt!1849668) lambda!207189)))

(declare-fun lt!1849860 () Unit!124025)

(declare-fun Unit!124058 () Unit!124025)

(assert (=> b!4690015 (= lt!1849860 Unit!124058)))

(declare-fun res!1978179 () Bool)

(assert (=> b!4690015 (= res!1978179 call!327780)))

(assert (=> b!4690015 (=> (not res!1978179) (not e!2925911))))

(assert (=> b!4690015 e!2925911))

(declare-fun lt!1849867 () Unit!124025)

(declare-fun Unit!124059 () Unit!124025)

(assert (=> b!4690015 (= lt!1849867 Unit!124059)))

(declare-fun c!801892 () Bool)

(declare-fun bm!327775 () Bool)

(assert (=> bm!327775 (= call!327780 (forall!11323 (ite c!801892 (toList!5598 lt!1849668) (_2!30200 (h!58655 (toList!5597 lm!2023)))) (ite c!801892 lambda!207187 lambda!207189)))))

(declare-fun bm!327776 () Bool)

(assert (=> bm!327776 (= call!327779 (forall!11323 (toList!5598 lt!1849668) (ite c!801892 lambda!207187 lambda!207189)))))

(declare-fun e!2925913 () Bool)

(assert (=> d!1490469 e!2925913))

(declare-fun res!1978181 () Bool)

(assert (=> d!1490469 (=> (not res!1978181) (not e!2925913))))

(assert (=> d!1490469 (= res!1978181 (forall!11323 (_2!30200 (h!58655 (toList!5597 lm!2023))) lambda!207190))))

(assert (=> d!1490469 (= lt!1849874 e!2925912)))

(assert (=> d!1490469 (= c!801892 ((_ is Nil!52409) (_2!30200 (h!58655 (toList!5597 lm!2023)))))))

(assert (=> d!1490469 (noDuplicateKeys!1854 (_2!30200 (h!58655 (toList!5597 lm!2023))))))

(assert (=> d!1490469 (= (addToMapMapFromBucket!1286 (_2!30200 (h!58655 (toList!5597 lm!2023))) lt!1849668) lt!1849874)))

(declare-fun b!4690016 () Bool)

(declare-fun invariantList!1410 (List!52533) Bool)

(assert (=> b!4690016 (= e!2925913 (invariantList!1410 (toList!5598 lt!1849874)))))

(declare-fun b!4690017 () Bool)

(declare-fun res!1978180 () Bool)

(assert (=> b!4690017 (=> (not res!1978180) (not e!2925913))))

(assert (=> b!4690017 (= res!1978180 (forall!11323 (toList!5598 lt!1849668) lambda!207190))))

(assert (= (and d!1490469 c!801892) b!4690014))

(assert (= (and d!1490469 (not c!801892)) b!4690015))

(assert (= (and b!4690015 res!1978179) b!4690013))

(assert (= (or b!4690014 b!4690015) bm!327774))

(assert (= (or b!4690014 b!4690015) bm!327775))

(assert (= (or b!4690014 b!4690015) bm!327776))

(assert (= (and d!1490469 res!1978181) b!4690017))

(assert (= (and b!4690017 res!1978180) b!4690016))

(declare-fun m!5592203 () Bool)

(assert (=> b!4690016 m!5592203))

(declare-fun m!5592205 () Bool)

(assert (=> b!4690017 m!5592205))

(declare-fun m!5592207 () Bool)

(assert (=> d!1490469 m!5592207))

(declare-fun m!5592209 () Bool)

(assert (=> d!1490469 m!5592209))

(declare-fun m!5592211 () Bool)

(assert (=> bm!327775 m!5592211))

(declare-fun m!5592213 () Bool)

(assert (=> bm!327776 m!5592213))

(declare-fun m!5592215 () Bool)

(assert (=> b!4690013 m!5592215))

(declare-fun m!5592217 () Bool)

(assert (=> bm!327774 m!5592217))

(declare-fun m!5592219 () Bool)

(assert (=> b!4690015 m!5592219))

(declare-fun m!5592221 () Bool)

(assert (=> b!4690015 m!5592221))

(declare-fun m!5592223 () Bool)

(assert (=> b!4690015 m!5592223))

(declare-fun m!5592225 () Bool)

(assert (=> b!4690015 m!5592225))

(declare-fun m!5592227 () Bool)

(assert (=> b!4690015 m!5592227))

(declare-fun m!5592229 () Bool)

(assert (=> b!4690015 m!5592229))

(assert (=> b!4690015 m!5592215))

(assert (=> b!4690015 m!5592221))

(declare-fun m!5592231 () Bool)

(assert (=> b!4690015 m!5592231))

(declare-fun m!5592233 () Bool)

(assert (=> b!4690015 m!5592233))

(declare-fun m!5592235 () Bool)

(assert (=> b!4690015 m!5592235))

(assert (=> b!4690015 m!5592225))

(declare-fun m!5592237 () Bool)

(assert (=> b!4690015 m!5592237))

(assert (=> b!4689913 d!1490469))

(declare-fun bs!1086595 () Bool)

(declare-fun d!1490515 () Bool)

(assert (= bs!1086595 (and d!1490515 start!474420)))

(declare-fun lambda!207193 () Int)

(assert (=> bs!1086595 (= lambda!207193 lambda!207103)))

(declare-fun bs!1086597 () Bool)

(assert (= bs!1086597 (and d!1490515 d!1490463)))

(assert (=> bs!1086597 (not (= lambda!207193 lambda!207110))))

(declare-fun lt!1849930 () ListMap!4961)

(assert (=> d!1490515 (invariantList!1410 (toList!5598 lt!1849930))))

(declare-fun e!2925938 () ListMap!4961)

(assert (=> d!1490515 (= lt!1849930 e!2925938)))

(declare-fun c!801905 () Bool)

(assert (=> d!1490515 (= c!801905 ((_ is Cons!52410) (t!359710 (toList!5597 lm!2023))))))

(assert (=> d!1490515 (forall!11321 (t!359710 (toList!5597 lm!2023)) lambda!207193)))

(assert (=> d!1490515 (= (extractMap!1880 (t!359710 (toList!5597 lm!2023))) lt!1849930)))

(declare-fun b!4690058 () Bool)

(assert (=> b!4690058 (= e!2925938 (addToMapMapFromBucket!1286 (_2!30200 (h!58655 (t!359710 (toList!5597 lm!2023)))) (extractMap!1880 (t!359710 (t!359710 (toList!5597 lm!2023))))))))

(declare-fun b!4690059 () Bool)

(assert (=> b!4690059 (= e!2925938 (ListMap!4962 Nil!52409))))

(assert (= (and d!1490515 c!801905) b!4690058))

(assert (= (and d!1490515 (not c!801905)) b!4690059))

(declare-fun m!5592277 () Bool)

(assert (=> d!1490515 m!5592277))

(declare-fun m!5592279 () Bool)

(assert (=> d!1490515 m!5592279))

(declare-fun m!5592281 () Bool)

(assert (=> b!4690058 m!5592281))

(assert (=> b!4690058 m!5592281))

(declare-fun m!5592283 () Bool)

(assert (=> b!4690058 m!5592283))

(assert (=> b!4689913 d!1490515))

(declare-fun d!1490525 () Bool)

(declare-fun tail!8592 (List!52534) List!52534)

(assert (=> d!1490525 (= (tail!8591 lm!2023) (ListLongMap!4128 (tail!8592 (toList!5597 lm!2023))))))

(declare-fun bs!1086608 () Bool)

(assert (= bs!1086608 d!1490525))

(declare-fun m!5592285 () Bool)

(assert (=> bs!1086608 m!5592285))

(assert (=> b!4689913 d!1490525))

(declare-fun d!1490527 () Bool)

(declare-fun hash!4066 (Hashable!6223 K!13785) (_ BitVec 64))

(assert (=> d!1490527 (= (hash!4065 hashF!1323 key!4653) (hash!4066 hashF!1323 key!4653))))

(declare-fun bs!1086615 () Bool)

(assert (= bs!1086615 d!1490527))

(declare-fun m!5592287 () Bool)

(assert (=> bs!1086615 m!5592287))

(assert (=> b!4689903 d!1490527))

(declare-fun bm!327788 () Bool)

(declare-fun call!327793 () Bool)

(declare-datatypes ((List!52535 0))(
  ( (Nil!52411) (Cons!52411 (h!58658 K!13785) (t!359713 List!52535)) )
))
(declare-fun e!2925959 () List!52535)

(declare-fun contains!15611 (List!52535 K!13785) Bool)

(assert (=> bm!327788 (= call!327793 (contains!15611 e!2925959 key!4653))))

(declare-fun c!801914 () Bool)

(declare-fun c!801913 () Bool)

(assert (=> bm!327788 (= c!801914 c!801913)))

(declare-fun b!4690091 () Bool)

(declare-fun e!2925956 () Unit!124025)

(declare-fun lt!1849969 () Unit!124025)

(assert (=> b!4690091 (= e!2925956 lt!1849969)))

(declare-fun lt!1849974 () Unit!124025)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1670 (List!52533 K!13785) Unit!124025)

(assert (=> b!4690091 (= lt!1849974 (lemmaContainsKeyImpliesGetValueByKeyDefined!1670 (toList!5598 lt!1849660) key!4653))))

(declare-datatypes ((Option!12078 0))(
  ( (None!12077) (Some!12077 (v!46496 V!14031)) )
))
(declare-fun isDefined!9333 (Option!12078) Bool)

(declare-fun getValueByKey!1778 (List!52533 K!13785) Option!12078)

(assert (=> b!4690091 (isDefined!9333 (getValueByKey!1778 (toList!5598 lt!1849660) key!4653))))

(declare-fun lt!1849968 () Unit!124025)

(assert (=> b!4690091 (= lt!1849968 lt!1849974)))

(declare-fun lemmaInListThenGetKeysListContains!844 (List!52533 K!13785) Unit!124025)

(assert (=> b!4690091 (= lt!1849969 (lemmaInListThenGetKeysListContains!844 (toList!5598 lt!1849660) key!4653))))

(assert (=> b!4690091 call!327793))

(declare-fun b!4690092 () Bool)

(declare-fun keys!18712 (ListMap!4961) List!52535)

(assert (=> b!4690092 (= e!2925959 (keys!18712 lt!1849660))))

(declare-fun b!4690093 () Bool)

(declare-fun e!2925961 () Unit!124025)

(declare-fun Unit!124071 () Unit!124025)

(assert (=> b!4690093 (= e!2925961 Unit!124071)))

(declare-fun d!1490529 () Bool)

(declare-fun e!2925960 () Bool)

(assert (=> d!1490529 e!2925960))

(declare-fun res!1978209 () Bool)

(assert (=> d!1490529 (=> res!1978209 e!2925960)))

(declare-fun e!2925958 () Bool)

(assert (=> d!1490529 (= res!1978209 e!2925958)))

(declare-fun res!1978207 () Bool)

(assert (=> d!1490529 (=> (not res!1978207) (not e!2925958))))

(declare-fun lt!1849970 () Bool)

(assert (=> d!1490529 (= res!1978207 (not lt!1849970))))

(declare-fun lt!1849972 () Bool)

(assert (=> d!1490529 (= lt!1849970 lt!1849972)))

(declare-fun lt!1849971 () Unit!124025)

(assert (=> d!1490529 (= lt!1849971 e!2925956)))

(assert (=> d!1490529 (= c!801913 lt!1849972)))

(declare-fun containsKey!3054 (List!52533 K!13785) Bool)

(assert (=> d!1490529 (= lt!1849972 (containsKey!3054 (toList!5598 lt!1849660) key!4653))))

(assert (=> d!1490529 (= (contains!15608 lt!1849660 key!4653) lt!1849970)))

(declare-fun b!4690094 () Bool)

(declare-fun getKeysList!849 (List!52533) List!52535)

(assert (=> b!4690094 (= e!2925959 (getKeysList!849 (toList!5598 lt!1849660)))))

(declare-fun b!4690095 () Bool)

(assert (=> b!4690095 false))

(declare-fun lt!1849973 () Unit!124025)

(declare-fun lt!1849975 () Unit!124025)

(assert (=> b!4690095 (= lt!1849973 lt!1849975)))

(assert (=> b!4690095 (containsKey!3054 (toList!5598 lt!1849660) key!4653)))

(declare-fun lemmaInGetKeysListThenContainsKey!848 (List!52533 K!13785) Unit!124025)

(assert (=> b!4690095 (= lt!1849975 (lemmaInGetKeysListThenContainsKey!848 (toList!5598 lt!1849660) key!4653))))

(declare-fun Unit!124072 () Unit!124025)

(assert (=> b!4690095 (= e!2925961 Unit!124072)))

(declare-fun b!4690096 () Bool)

(declare-fun e!2925957 () Bool)

(assert (=> b!4690096 (= e!2925960 e!2925957)))

(declare-fun res!1978208 () Bool)

(assert (=> b!4690096 (=> (not res!1978208) (not e!2925957))))

(assert (=> b!4690096 (= res!1978208 (isDefined!9333 (getValueByKey!1778 (toList!5598 lt!1849660) key!4653)))))

(declare-fun b!4690097 () Bool)

(assert (=> b!4690097 (= e!2925958 (not (contains!15611 (keys!18712 lt!1849660) key!4653)))))

(declare-fun b!4690098 () Bool)

(assert (=> b!4690098 (= e!2925956 e!2925961)))

(declare-fun c!801915 () Bool)

(assert (=> b!4690098 (= c!801915 call!327793)))

(declare-fun b!4690099 () Bool)

(assert (=> b!4690099 (= e!2925957 (contains!15611 (keys!18712 lt!1849660) key!4653))))

(assert (= (and d!1490529 c!801913) b!4690091))

(assert (= (and d!1490529 (not c!801913)) b!4690098))

(assert (= (and b!4690098 c!801915) b!4690095))

(assert (= (and b!4690098 (not c!801915)) b!4690093))

(assert (= (or b!4690091 b!4690098) bm!327788))

(assert (= (and bm!327788 c!801914) b!4690094))

(assert (= (and bm!327788 (not c!801914)) b!4690092))

(assert (= (and d!1490529 res!1978207) b!4690097))

(assert (= (and d!1490529 (not res!1978209)) b!4690096))

(assert (= (and b!4690096 res!1978208) b!4690099))

(declare-fun m!5592329 () Bool)

(assert (=> d!1490529 m!5592329))

(declare-fun m!5592331 () Bool)

(assert (=> b!4690099 m!5592331))

(assert (=> b!4690099 m!5592331))

(declare-fun m!5592333 () Bool)

(assert (=> b!4690099 m!5592333))

(assert (=> b!4690092 m!5592331))

(declare-fun m!5592335 () Bool)

(assert (=> b!4690091 m!5592335))

(declare-fun m!5592337 () Bool)

(assert (=> b!4690091 m!5592337))

(assert (=> b!4690091 m!5592337))

(declare-fun m!5592339 () Bool)

(assert (=> b!4690091 m!5592339))

(declare-fun m!5592341 () Bool)

(assert (=> b!4690091 m!5592341))

(assert (=> b!4690097 m!5592331))

(assert (=> b!4690097 m!5592331))

(assert (=> b!4690097 m!5592333))

(assert (=> b!4690096 m!5592337))

(assert (=> b!4690096 m!5592337))

(assert (=> b!4690096 m!5592339))

(assert (=> b!4690095 m!5592329))

(declare-fun m!5592343 () Bool)

(assert (=> b!4690095 m!5592343))

(declare-fun m!5592345 () Bool)

(assert (=> bm!327788 m!5592345))

(declare-fun m!5592347 () Bool)

(assert (=> b!4690094 m!5592347))

(assert (=> b!4689914 d!1490529))

(declare-fun bs!1086685 () Bool)

(declare-fun d!1490539 () Bool)

(assert (= bs!1086685 (and d!1490539 start!474420)))

(declare-fun lambda!207208 () Int)

(assert (=> bs!1086685 (= lambda!207208 lambda!207103)))

(declare-fun bs!1086687 () Bool)

(assert (= bs!1086687 (and d!1490539 d!1490463)))

(assert (=> bs!1086687 (not (= lambda!207208 lambda!207110))))

(declare-fun bs!1086688 () Bool)

(assert (= bs!1086688 (and d!1490539 d!1490515)))

(assert (=> bs!1086688 (= lambda!207208 lambda!207193)))

(declare-fun lt!1849976 () ListMap!4961)

(assert (=> d!1490539 (invariantList!1410 (toList!5598 lt!1849976))))

(declare-fun e!2925962 () ListMap!4961)

(assert (=> d!1490539 (= lt!1849976 e!2925962)))

(declare-fun c!801916 () Bool)

(assert (=> d!1490539 (= c!801916 ((_ is Cons!52410) (toList!5597 lm!2023)))))

(assert (=> d!1490539 (forall!11321 (toList!5597 lm!2023) lambda!207208)))

(assert (=> d!1490539 (= (extractMap!1880 (toList!5597 lm!2023)) lt!1849976)))

(declare-fun b!4690100 () Bool)

(assert (=> b!4690100 (= e!2925962 (addToMapMapFromBucket!1286 (_2!30200 (h!58655 (toList!5597 lm!2023))) (extractMap!1880 (t!359710 (toList!5597 lm!2023)))))))

(declare-fun b!4690101 () Bool)

(assert (=> b!4690101 (= e!2925962 (ListMap!4962 Nil!52409))))

(assert (= (and d!1490539 c!801916) b!4690100))

(assert (= (and d!1490539 (not c!801916)) b!4690101))

(declare-fun m!5592349 () Bool)

(assert (=> d!1490539 m!5592349))

(declare-fun m!5592351 () Bool)

(assert (=> d!1490539 m!5592351))

(assert (=> b!4690100 m!5591955))

(assert (=> b!4690100 m!5591955))

(declare-fun m!5592353 () Bool)

(assert (=> b!4690100 m!5592353))

(assert (=> b!4689914 d!1490539))

(declare-fun d!1490541 () Bool)

(declare-fun e!2925966 () Bool)

(assert (=> d!1490541 e!2925966))

(declare-fun res!1978214 () Bool)

(assert (=> d!1490541 (=> (not res!1978214) (not e!2925966))))

(declare-fun lt!1849987 () ListMap!4961)

(assert (=> d!1490541 (= res!1978214 (contains!15608 lt!1849987 (_1!30199 (h!58654 oldBucket!34))))))

(declare-fun lt!1849988 () List!52533)

(assert (=> d!1490541 (= lt!1849987 (ListMap!4962 lt!1849988))))

(declare-fun lt!1849986 () Unit!124025)

(declare-fun lt!1849989 () Unit!124025)

(assert (=> d!1490541 (= lt!1849986 lt!1849989)))

(assert (=> d!1490541 (= (getValueByKey!1778 lt!1849988 (_1!30199 (h!58654 oldBucket!34))) (Some!12077 (_2!30199 (h!58654 oldBucket!34))))))

(declare-fun lemmaContainsTupThenGetReturnValue!1000 (List!52533 K!13785 V!14031) Unit!124025)

(assert (=> d!1490541 (= lt!1849989 (lemmaContainsTupThenGetReturnValue!1000 lt!1849988 (_1!30199 (h!58654 oldBucket!34)) (_2!30199 (h!58654 oldBucket!34))))))

(declare-fun insertNoDuplicatedKeys!508 (List!52533 K!13785 V!14031) List!52533)

(assert (=> d!1490541 (= lt!1849988 (insertNoDuplicatedKeys!508 (toList!5598 (extractMap!1880 (Cons!52410 (tuple2!53813 hash!405 lt!1849669) (t!359710 (toList!5597 lm!2023))))) (_1!30199 (h!58654 oldBucket!34)) (_2!30199 (h!58654 oldBucket!34))))))

(assert (=> d!1490541 (= (+!2138 (extractMap!1880 (Cons!52410 (tuple2!53813 hash!405 lt!1849669) (t!359710 (toList!5597 lm!2023)))) (h!58654 oldBucket!34)) lt!1849987)))

(declare-fun b!4690108 () Bool)

(declare-fun res!1978215 () Bool)

(assert (=> b!4690108 (=> (not res!1978215) (not e!2925966))))

(assert (=> b!4690108 (= res!1978215 (= (getValueByKey!1778 (toList!5598 lt!1849987) (_1!30199 (h!58654 oldBucket!34))) (Some!12077 (_2!30199 (h!58654 oldBucket!34)))))))

(declare-fun b!4690109 () Bool)

(declare-fun contains!15613 (List!52533 tuple2!53810) Bool)

(assert (=> b!4690109 (= e!2925966 (contains!15613 (toList!5598 lt!1849987) (h!58654 oldBucket!34)))))

(assert (= (and d!1490541 res!1978214) b!4690108))

(assert (= (and b!4690108 res!1978215) b!4690109))

(declare-fun m!5592401 () Bool)

(assert (=> d!1490541 m!5592401))

(declare-fun m!5592403 () Bool)

(assert (=> d!1490541 m!5592403))

(declare-fun m!5592405 () Bool)

(assert (=> d!1490541 m!5592405))

(declare-fun m!5592407 () Bool)

(assert (=> d!1490541 m!5592407))

(declare-fun m!5592409 () Bool)

(assert (=> b!4690108 m!5592409))

(declare-fun m!5592411 () Bool)

(assert (=> b!4690109 m!5592411))

(assert (=> b!4689904 d!1490541))

(declare-fun d!1490551 () Bool)

(declare-fun e!2925967 () Bool)

(assert (=> d!1490551 e!2925967))

(declare-fun res!1978216 () Bool)

(assert (=> d!1490551 (=> (not res!1978216) (not e!2925967))))

(declare-fun lt!1849991 () ListMap!4961)

(assert (=> d!1490551 (= res!1978216 (contains!15608 lt!1849991 (_1!30199 lt!1849663)))))

(declare-fun lt!1849992 () List!52533)

(assert (=> d!1490551 (= lt!1849991 (ListMap!4962 lt!1849992))))

(declare-fun lt!1849990 () Unit!124025)

(declare-fun lt!1849993 () Unit!124025)

(assert (=> d!1490551 (= lt!1849990 lt!1849993)))

(assert (=> d!1490551 (= (getValueByKey!1778 lt!1849992 (_1!30199 lt!1849663)) (Some!12077 (_2!30199 lt!1849663)))))

(assert (=> d!1490551 (= lt!1849993 (lemmaContainsTupThenGetReturnValue!1000 lt!1849992 (_1!30199 lt!1849663) (_2!30199 lt!1849663)))))

(assert (=> d!1490551 (= lt!1849992 (insertNoDuplicatedKeys!508 (toList!5598 (addToMapMapFromBucket!1286 lt!1849664 lt!1849668)) (_1!30199 lt!1849663) (_2!30199 lt!1849663)))))

(assert (=> d!1490551 (= (+!2138 (addToMapMapFromBucket!1286 lt!1849664 lt!1849668) lt!1849663) lt!1849991)))

(declare-fun b!4690110 () Bool)

(declare-fun res!1978217 () Bool)

(assert (=> b!4690110 (=> (not res!1978217) (not e!2925967))))

(assert (=> b!4690110 (= res!1978217 (= (getValueByKey!1778 (toList!5598 lt!1849991) (_1!30199 lt!1849663)) (Some!12077 (_2!30199 lt!1849663))))))

(declare-fun b!4690111 () Bool)

(assert (=> b!4690111 (= e!2925967 (contains!15613 (toList!5598 lt!1849991) lt!1849663))))

(assert (= (and d!1490551 res!1978216) b!4690110))

(assert (= (and b!4690110 res!1978217) b!4690111))

(declare-fun m!5592413 () Bool)

(assert (=> d!1490551 m!5592413))

(declare-fun m!5592415 () Bool)

(assert (=> d!1490551 m!5592415))

(declare-fun m!5592417 () Bool)

(assert (=> d!1490551 m!5592417))

(declare-fun m!5592419 () Bool)

(assert (=> d!1490551 m!5592419))

(declare-fun m!5592421 () Bool)

(assert (=> b!4690110 m!5592421))

(declare-fun m!5592423 () Bool)

(assert (=> b!4690111 m!5592423))

(assert (=> b!4689904 d!1490551))

(declare-fun d!1490553 () Bool)

(assert (=> d!1490553 (= (head!9972 oldBucket!34) (h!58654 oldBucket!34))))

(assert (=> b!4689904 d!1490553))

(declare-fun d!1490555 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!9164 (List!52533) (InoxSet tuple2!53810))

(assert (=> d!1490555 (= (eq!1013 (addToMapMapFromBucket!1286 (Cons!52409 lt!1849677 lt!1849669) lt!1849668) (+!2138 (addToMapMapFromBucket!1286 lt!1849669 lt!1849668) lt!1849677)) (= (content!9164 (toList!5598 (addToMapMapFromBucket!1286 (Cons!52409 lt!1849677 lt!1849669) lt!1849668))) (content!9164 (toList!5598 (+!2138 (addToMapMapFromBucket!1286 lt!1849669 lt!1849668) lt!1849677)))))))

(declare-fun bs!1086717 () Bool)

(assert (= bs!1086717 d!1490555))

(declare-fun m!5592425 () Bool)

(assert (=> bs!1086717 m!5592425))

(declare-fun m!5592427 () Bool)

(assert (=> bs!1086717 m!5592427))

(assert (=> b!4689904 d!1490555))

(declare-fun d!1490557 () Bool)

(assert (=> d!1490557 (eq!1013 (addToMapMapFromBucket!1286 (Cons!52409 lt!1849677 lt!1849669) lt!1849668) (+!2138 (addToMapMapFromBucket!1286 lt!1849669 lt!1849668) lt!1849677))))

(declare-fun lt!1850014 () Unit!124025)

(declare-fun choose!32580 (tuple2!53810 List!52533 ListMap!4961) Unit!124025)

(assert (=> d!1490557 (= lt!1850014 (choose!32580 lt!1849677 lt!1849669 lt!1849668))))

(assert (=> d!1490557 (noDuplicateKeys!1854 lt!1849669)))

(assert (=> d!1490557 (= (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!262 lt!1849677 lt!1849669 lt!1849668) lt!1850014)))

(declare-fun bs!1086719 () Bool)

(assert (= bs!1086719 d!1490557))

(assert (=> bs!1086719 m!5591915))

(assert (=> bs!1086719 m!5591915))

(assert (=> bs!1086719 m!5591917))

(declare-fun m!5592449 () Bool)

(assert (=> bs!1086719 m!5592449))

(assert (=> bs!1086719 m!5591937))

(assert (=> bs!1086719 m!5591917))

(assert (=> bs!1086719 m!5591939))

(assert (=> bs!1086719 m!5591937))

(declare-fun m!5592451 () Bool)

(assert (=> bs!1086719 m!5592451))

(assert (=> b!4689904 d!1490557))

(declare-fun bs!1086720 () Bool)

(declare-fun d!1490567 () Bool)

(assert (= bs!1086720 (and d!1490567 start!474420)))

(declare-fun lambda!207211 () Int)

(assert (=> bs!1086720 (= lambda!207211 lambda!207103)))

(declare-fun bs!1086721 () Bool)

(assert (= bs!1086721 (and d!1490567 d!1490463)))

(assert (=> bs!1086721 (not (= lambda!207211 lambda!207110))))

(declare-fun bs!1086722 () Bool)

(assert (= bs!1086722 (and d!1490567 d!1490515)))

(assert (=> bs!1086722 (= lambda!207211 lambda!207193)))

(declare-fun bs!1086723 () Bool)

(assert (= bs!1086723 (and d!1490567 d!1490539)))

(assert (=> bs!1086723 (= lambda!207211 lambda!207208)))

(declare-fun lt!1850017 () ListMap!4961)

(assert (=> d!1490567 (invariantList!1410 (toList!5598 lt!1850017))))

(declare-fun e!2925983 () ListMap!4961)

(assert (=> d!1490567 (= lt!1850017 e!2925983)))

(declare-fun c!801921 () Bool)

(assert (=> d!1490567 (= c!801921 ((_ is Cons!52410) (Cons!52410 lt!1849675 (t!359710 (toList!5597 lm!2023)))))))

(assert (=> d!1490567 (forall!11321 (Cons!52410 lt!1849675 (t!359710 (toList!5597 lm!2023))) lambda!207211)))

(assert (=> d!1490567 (= (extractMap!1880 (Cons!52410 lt!1849675 (t!359710 (toList!5597 lm!2023)))) lt!1850017)))

(declare-fun b!4690131 () Bool)

(assert (=> b!4690131 (= e!2925983 (addToMapMapFromBucket!1286 (_2!30200 (h!58655 (Cons!52410 lt!1849675 (t!359710 (toList!5597 lm!2023))))) (extractMap!1880 (t!359710 (Cons!52410 lt!1849675 (t!359710 (toList!5597 lm!2023)))))))))

(declare-fun b!4690132 () Bool)

(assert (=> b!4690132 (= e!2925983 (ListMap!4962 Nil!52409))))

(assert (= (and d!1490567 c!801921) b!4690131))

(assert (= (and d!1490567 (not c!801921)) b!4690132))

(declare-fun m!5592457 () Bool)

(assert (=> d!1490567 m!5592457))

(declare-fun m!5592459 () Bool)

(assert (=> d!1490567 m!5592459))

(declare-fun m!5592461 () Bool)

(assert (=> b!4690131 m!5592461))

(assert (=> b!4690131 m!5592461))

(declare-fun m!5592463 () Bool)

(assert (=> b!4690131 m!5592463))

(assert (=> b!4689904 d!1490567))

(declare-fun bm!327789 () Bool)

(declare-fun call!327794 () Bool)

(declare-fun e!2925987 () List!52535)

(assert (=> bm!327789 (= call!327794 (contains!15611 e!2925987 key!4653))))

(declare-fun c!801923 () Bool)

(declare-fun c!801922 () Bool)

(assert (=> bm!327789 (= c!801923 c!801922)))

(declare-fun b!4690133 () Bool)

(declare-fun e!2925984 () Unit!124025)

(declare-fun lt!1850020 () Unit!124025)

(assert (=> b!4690133 (= e!2925984 lt!1850020)))

(declare-fun lt!1850025 () Unit!124025)

(assert (=> b!4690133 (= lt!1850025 (lemmaContainsKeyImpliesGetValueByKeyDefined!1670 (toList!5598 (extractMap!1880 lt!1849671)) key!4653))))

(assert (=> b!4690133 (isDefined!9333 (getValueByKey!1778 (toList!5598 (extractMap!1880 lt!1849671)) key!4653))))

(declare-fun lt!1850019 () Unit!124025)

(assert (=> b!4690133 (= lt!1850019 lt!1850025)))

(assert (=> b!4690133 (= lt!1850020 (lemmaInListThenGetKeysListContains!844 (toList!5598 (extractMap!1880 lt!1849671)) key!4653))))

(assert (=> b!4690133 call!327794))

(declare-fun b!4690134 () Bool)

(assert (=> b!4690134 (= e!2925987 (keys!18712 (extractMap!1880 lt!1849671)))))

(declare-fun b!4690135 () Bool)

(declare-fun e!2925989 () Unit!124025)

(declare-fun Unit!124075 () Unit!124025)

(assert (=> b!4690135 (= e!2925989 Unit!124075)))

(declare-fun d!1490571 () Bool)

(declare-fun e!2925988 () Bool)

(assert (=> d!1490571 e!2925988))

(declare-fun res!1978232 () Bool)

(assert (=> d!1490571 (=> res!1978232 e!2925988)))

(declare-fun e!2925986 () Bool)

(assert (=> d!1490571 (= res!1978232 e!2925986)))

(declare-fun res!1978230 () Bool)

(assert (=> d!1490571 (=> (not res!1978230) (not e!2925986))))

(declare-fun lt!1850021 () Bool)

(assert (=> d!1490571 (= res!1978230 (not lt!1850021))))

(declare-fun lt!1850023 () Bool)

(assert (=> d!1490571 (= lt!1850021 lt!1850023)))

(declare-fun lt!1850022 () Unit!124025)

(assert (=> d!1490571 (= lt!1850022 e!2925984)))

(assert (=> d!1490571 (= c!801922 lt!1850023)))

(assert (=> d!1490571 (= lt!1850023 (containsKey!3054 (toList!5598 (extractMap!1880 lt!1849671)) key!4653))))

(assert (=> d!1490571 (= (contains!15608 (extractMap!1880 lt!1849671) key!4653) lt!1850021)))

(declare-fun b!4690136 () Bool)

(assert (=> b!4690136 (= e!2925987 (getKeysList!849 (toList!5598 (extractMap!1880 lt!1849671))))))

(declare-fun b!4690137 () Bool)

(assert (=> b!4690137 false))

(declare-fun lt!1850024 () Unit!124025)

(declare-fun lt!1850026 () Unit!124025)

(assert (=> b!4690137 (= lt!1850024 lt!1850026)))

(assert (=> b!4690137 (containsKey!3054 (toList!5598 (extractMap!1880 lt!1849671)) key!4653)))

(assert (=> b!4690137 (= lt!1850026 (lemmaInGetKeysListThenContainsKey!848 (toList!5598 (extractMap!1880 lt!1849671)) key!4653))))

(declare-fun Unit!124076 () Unit!124025)

(assert (=> b!4690137 (= e!2925989 Unit!124076)))

(declare-fun b!4690138 () Bool)

(declare-fun e!2925985 () Bool)

(assert (=> b!4690138 (= e!2925988 e!2925985)))

(declare-fun res!1978231 () Bool)

(assert (=> b!4690138 (=> (not res!1978231) (not e!2925985))))

(assert (=> b!4690138 (= res!1978231 (isDefined!9333 (getValueByKey!1778 (toList!5598 (extractMap!1880 lt!1849671)) key!4653)))))

(declare-fun b!4690139 () Bool)

(assert (=> b!4690139 (= e!2925986 (not (contains!15611 (keys!18712 (extractMap!1880 lt!1849671)) key!4653)))))

(declare-fun b!4690140 () Bool)

(assert (=> b!4690140 (= e!2925984 e!2925989)))

(declare-fun c!801924 () Bool)

(assert (=> b!4690140 (= c!801924 call!327794)))

(declare-fun b!4690141 () Bool)

(assert (=> b!4690141 (= e!2925985 (contains!15611 (keys!18712 (extractMap!1880 lt!1849671)) key!4653))))

(assert (= (and d!1490571 c!801922) b!4690133))

(assert (= (and d!1490571 (not c!801922)) b!4690140))

(assert (= (and b!4690140 c!801924) b!4690137))

(assert (= (and b!4690140 (not c!801924)) b!4690135))

(assert (= (or b!4690133 b!4690140) bm!327789))

(assert (= (and bm!327789 c!801923) b!4690136))

(assert (= (and bm!327789 (not c!801923)) b!4690134))

(assert (= (and d!1490571 res!1978230) b!4690139))

(assert (= (and d!1490571 (not res!1978232)) b!4690138))

(assert (= (and b!4690138 res!1978231) b!4690141))

(declare-fun m!5592465 () Bool)

(assert (=> d!1490571 m!5592465))

(assert (=> b!4690141 m!5591921))

(declare-fun m!5592467 () Bool)

(assert (=> b!4690141 m!5592467))

(assert (=> b!4690141 m!5592467))

(declare-fun m!5592469 () Bool)

(assert (=> b!4690141 m!5592469))

(assert (=> b!4690134 m!5591921))

(assert (=> b!4690134 m!5592467))

(declare-fun m!5592471 () Bool)

(assert (=> b!4690133 m!5592471))

(declare-fun m!5592473 () Bool)

(assert (=> b!4690133 m!5592473))

(assert (=> b!4690133 m!5592473))

(declare-fun m!5592475 () Bool)

(assert (=> b!4690133 m!5592475))

(declare-fun m!5592477 () Bool)

(assert (=> b!4690133 m!5592477))

(assert (=> b!4690139 m!5591921))

(assert (=> b!4690139 m!5592467))

(assert (=> b!4690139 m!5592467))

(assert (=> b!4690139 m!5592469))

(assert (=> b!4690138 m!5592473))

(assert (=> b!4690138 m!5592473))

(assert (=> b!4690138 m!5592475))

(assert (=> b!4690137 m!5592465))

(declare-fun m!5592479 () Bool)

(assert (=> b!4690137 m!5592479))

(declare-fun m!5592481 () Bool)

(assert (=> bm!327789 m!5592481))

(declare-fun m!5592483 () Bool)

(assert (=> b!4690136 m!5592483))

(assert (=> b!4689904 d!1490571))

(declare-fun bs!1086725 () Bool)

(declare-fun d!1490573 () Bool)

(assert (= bs!1086725 (and d!1490573 d!1490567)))

(declare-fun lambda!207212 () Int)

(assert (=> bs!1086725 (= lambda!207212 lambda!207211)))

(declare-fun bs!1086726 () Bool)

(assert (= bs!1086726 (and d!1490573 d!1490463)))

(assert (=> bs!1086726 (not (= lambda!207212 lambda!207110))))

(declare-fun bs!1086727 () Bool)

(assert (= bs!1086727 (and d!1490573 d!1490515)))

(assert (=> bs!1086727 (= lambda!207212 lambda!207193)))

(declare-fun bs!1086728 () Bool)

(assert (= bs!1086728 (and d!1490573 start!474420)))

(assert (=> bs!1086728 (= lambda!207212 lambda!207103)))

(declare-fun bs!1086729 () Bool)

(assert (= bs!1086729 (and d!1490573 d!1490539)))

(assert (=> bs!1086729 (= lambda!207212 lambda!207208)))

(declare-fun lt!1850027 () ListMap!4961)

(assert (=> d!1490573 (invariantList!1410 (toList!5598 lt!1850027))))

(declare-fun e!2925990 () ListMap!4961)

(assert (=> d!1490573 (= lt!1850027 e!2925990)))

(declare-fun c!801925 () Bool)

(assert (=> d!1490573 (= c!801925 ((_ is Cons!52410) (Cons!52410 (tuple2!53813 hash!405 lt!1849669) (t!359710 (toList!5597 lm!2023)))))))

(assert (=> d!1490573 (forall!11321 (Cons!52410 (tuple2!53813 hash!405 lt!1849669) (t!359710 (toList!5597 lm!2023))) lambda!207212)))

(assert (=> d!1490573 (= (extractMap!1880 (Cons!52410 (tuple2!53813 hash!405 lt!1849669) (t!359710 (toList!5597 lm!2023)))) lt!1850027)))

(declare-fun b!4690142 () Bool)

(assert (=> b!4690142 (= e!2925990 (addToMapMapFromBucket!1286 (_2!30200 (h!58655 (Cons!52410 (tuple2!53813 hash!405 lt!1849669) (t!359710 (toList!5597 lm!2023))))) (extractMap!1880 (t!359710 (Cons!52410 (tuple2!53813 hash!405 lt!1849669) (t!359710 (toList!5597 lm!2023)))))))))

(declare-fun b!4690143 () Bool)

(assert (=> b!4690143 (= e!2925990 (ListMap!4962 Nil!52409))))

(assert (= (and d!1490573 c!801925) b!4690142))

(assert (= (and d!1490573 (not c!801925)) b!4690143))

(declare-fun m!5592485 () Bool)

(assert (=> d!1490573 m!5592485))

(declare-fun m!5592487 () Bool)

(assert (=> d!1490573 m!5592487))

(declare-fun m!5592489 () Bool)

(assert (=> b!4690142 m!5592489))

(assert (=> b!4690142 m!5592489))

(declare-fun m!5592491 () Bool)

(assert (=> b!4690142 m!5592491))

(assert (=> b!4689904 d!1490573))

(declare-fun bs!1086730 () Bool)

(declare-fun b!4690145 () Bool)

(assert (= bs!1086730 (and b!4690145 d!1490461)))

(declare-fun lambda!207215 () Int)

(assert (=> bs!1086730 (not (= lambda!207215 lambda!207107))))

(declare-fun bs!1086731 () Bool)

(assert (= bs!1086731 (and b!4690145 b!4690015)))

(assert (=> bs!1086731 (= lambda!207215 lambda!207188)))

(declare-fun bs!1086733 () Bool)

(assert (= bs!1086733 (and b!4690145 b!4690014)))

(assert (=> bs!1086733 (= lambda!207215 lambda!207187)))

(declare-fun bs!1086735 () Bool)

(assert (= bs!1086735 (and b!4690145 d!1490469)))

(assert (=> bs!1086735 (= (= lt!1849668 lt!1849874) (= lambda!207215 lambda!207190))))

(declare-fun bs!1086737 () Bool)

(assert (= bs!1086737 (and b!4690145 d!1490457)))

(assert (=> bs!1086737 (not (= lambda!207215 lambda!207106))))

(assert (=> bs!1086731 (= (= lt!1849668 lt!1849866) (= lambda!207215 lambda!207189))))

(assert (=> b!4690145 true))

(declare-fun bs!1086743 () Bool)

(declare-fun b!4690146 () Bool)

(assert (= bs!1086743 (and b!4690146 d!1490461)))

(declare-fun lambda!207217 () Int)

(assert (=> bs!1086743 (not (= lambda!207217 lambda!207107))))

(declare-fun bs!1086744 () Bool)

(assert (= bs!1086744 (and b!4690146 b!4690015)))

(assert (=> bs!1086744 (= lambda!207217 lambda!207188)))

(declare-fun bs!1086745 () Bool)

(assert (= bs!1086745 (and b!4690146 b!4690014)))

(assert (=> bs!1086745 (= lambda!207217 lambda!207187)))

(declare-fun bs!1086746 () Bool)

(assert (= bs!1086746 (and b!4690146 b!4690145)))

(assert (=> bs!1086746 (= lambda!207217 lambda!207215)))

(declare-fun bs!1086747 () Bool)

(assert (= bs!1086747 (and b!4690146 d!1490469)))

(assert (=> bs!1086747 (= (= lt!1849668 lt!1849874) (= lambda!207217 lambda!207190))))

(declare-fun bs!1086748 () Bool)

(assert (= bs!1086748 (and b!4690146 d!1490457)))

(assert (=> bs!1086748 (not (= lambda!207217 lambda!207106))))

(assert (=> bs!1086744 (= (= lt!1849668 lt!1849866) (= lambda!207217 lambda!207189))))

(assert (=> b!4690146 true))

(declare-fun lt!1850039 () ListMap!4961)

(declare-fun lambda!207218 () Int)

(assert (=> bs!1086744 (= (= lt!1850039 lt!1849668) (= lambda!207218 lambda!207188))))

(assert (=> bs!1086745 (= (= lt!1850039 lt!1849668) (= lambda!207218 lambda!207187))))

(assert (=> bs!1086746 (= (= lt!1850039 lt!1849668) (= lambda!207218 lambda!207215))))

(assert (=> bs!1086747 (= (= lt!1850039 lt!1849874) (= lambda!207218 lambda!207190))))

(assert (=> b!4690146 (= (= lt!1850039 lt!1849668) (= lambda!207218 lambda!207217))))

(assert (=> bs!1086743 (not (= lambda!207218 lambda!207107))))

(assert (=> bs!1086748 (not (= lambda!207218 lambda!207106))))

(assert (=> bs!1086744 (= (= lt!1850039 lt!1849866) (= lambda!207218 lambda!207189))))

(assert (=> b!4690146 true))

(declare-fun bs!1086749 () Bool)

(declare-fun d!1490575 () Bool)

(assert (= bs!1086749 (and d!1490575 b!4690014)))

(declare-fun lambda!207219 () Int)

(declare-fun lt!1850047 () ListMap!4961)

(assert (=> bs!1086749 (= (= lt!1850047 lt!1849668) (= lambda!207219 lambda!207187))))

(declare-fun bs!1086750 () Bool)

(assert (= bs!1086750 (and d!1490575 b!4690145)))

(assert (=> bs!1086750 (= (= lt!1850047 lt!1849668) (= lambda!207219 lambda!207215))))

(declare-fun bs!1086751 () Bool)

(assert (= bs!1086751 (and d!1490575 d!1490469)))

(assert (=> bs!1086751 (= (= lt!1850047 lt!1849874) (= lambda!207219 lambda!207190))))

(declare-fun bs!1086752 () Bool)

(assert (= bs!1086752 (and d!1490575 b!4690146)))

(assert (=> bs!1086752 (= (= lt!1850047 lt!1849668) (= lambda!207219 lambda!207217))))

(declare-fun bs!1086753 () Bool)

(assert (= bs!1086753 (and d!1490575 d!1490461)))

(assert (=> bs!1086753 (not (= lambda!207219 lambda!207107))))

(declare-fun bs!1086754 () Bool)

(assert (= bs!1086754 (and d!1490575 b!4690015)))

(assert (=> bs!1086754 (= (= lt!1850047 lt!1849668) (= lambda!207219 lambda!207188))))

(assert (=> bs!1086752 (= (= lt!1850047 lt!1850039) (= lambda!207219 lambda!207218))))

(declare-fun bs!1086755 () Bool)

(assert (= bs!1086755 (and d!1490575 d!1490457)))

(assert (=> bs!1086755 (not (= lambda!207219 lambda!207106))))

(assert (=> bs!1086754 (= (= lt!1850047 lt!1849866) (= lambda!207219 lambda!207189))))

(assert (=> d!1490575 true))

(declare-fun bm!327790 () Bool)

(declare-fun call!327797 () Unit!124025)

(assert (=> bm!327790 (= call!327797 (lemmaContainsAllItsOwnKeys!698 lt!1849668))))

(declare-fun b!4690144 () Bool)

(declare-fun e!2925991 () Bool)

(assert (=> b!4690144 (= e!2925991 (forall!11323 (toList!5598 lt!1849668) lambda!207218))))

(declare-fun e!2925992 () ListMap!4961)

(assert (=> b!4690145 (= e!2925992 lt!1849668)))

(declare-fun lt!1850037 () Unit!124025)

(assert (=> b!4690145 (= lt!1850037 call!327797)))

(declare-fun call!327796 () Bool)

(assert (=> b!4690145 call!327796))

(declare-fun lt!1850035 () Unit!124025)

(assert (=> b!4690145 (= lt!1850035 lt!1850037)))

(declare-fun call!327795 () Bool)

(assert (=> b!4690145 call!327795))

(declare-fun lt!1850049 () Unit!124025)

(declare-fun Unit!124077 () Unit!124025)

(assert (=> b!4690145 (= lt!1850049 Unit!124077)))

(assert (=> b!4690146 (= e!2925992 lt!1850039)))

(declare-fun lt!1850043 () ListMap!4961)

(assert (=> b!4690146 (= lt!1850043 (+!2138 lt!1849668 (h!58654 lt!1849669)))))

(assert (=> b!4690146 (= lt!1850039 (addToMapMapFromBucket!1286 (t!359709 lt!1849669) (+!2138 lt!1849668 (h!58654 lt!1849669))))))

(declare-fun lt!1850044 () Unit!124025)

(assert (=> b!4690146 (= lt!1850044 call!327797)))

(assert (=> b!4690146 (forall!11323 (toList!5598 lt!1849668) lambda!207217)))

(declare-fun lt!1850038 () Unit!124025)

(assert (=> b!4690146 (= lt!1850038 lt!1850044)))

(assert (=> b!4690146 (forall!11323 (toList!5598 lt!1850043) lambda!207218)))

(declare-fun lt!1850036 () Unit!124025)

(declare-fun Unit!124078 () Unit!124025)

(assert (=> b!4690146 (= lt!1850036 Unit!124078)))

(assert (=> b!4690146 (forall!11323 (t!359709 lt!1849669) lambda!207218)))

(declare-fun lt!1850031 () Unit!124025)

(declare-fun Unit!124079 () Unit!124025)

(assert (=> b!4690146 (= lt!1850031 Unit!124079)))

(declare-fun lt!1850032 () Unit!124025)

(declare-fun Unit!124080 () Unit!124025)

(assert (=> b!4690146 (= lt!1850032 Unit!124080)))

(declare-fun lt!1850034 () Unit!124025)

(assert (=> b!4690146 (= lt!1850034 (forallContained!3430 (toList!5598 lt!1850043) lambda!207218 (h!58654 lt!1849669)))))

(assert (=> b!4690146 (contains!15608 lt!1850043 (_1!30199 (h!58654 lt!1849669)))))

(declare-fun lt!1850045 () Unit!124025)

(declare-fun Unit!124081 () Unit!124025)

(assert (=> b!4690146 (= lt!1850045 Unit!124081)))

(assert (=> b!4690146 (contains!15608 lt!1850039 (_1!30199 (h!58654 lt!1849669)))))

(declare-fun lt!1850030 () Unit!124025)

(declare-fun Unit!124082 () Unit!124025)

(assert (=> b!4690146 (= lt!1850030 Unit!124082)))

(assert (=> b!4690146 (forall!11323 lt!1849669 lambda!207218)))

(declare-fun lt!1850041 () Unit!124025)

(declare-fun Unit!124083 () Unit!124025)

(assert (=> b!4690146 (= lt!1850041 Unit!124083)))

(assert (=> b!4690146 (forall!11323 (toList!5598 lt!1850043) lambda!207218)))

(declare-fun lt!1850048 () Unit!124025)

(declare-fun Unit!124084 () Unit!124025)

(assert (=> b!4690146 (= lt!1850048 Unit!124084)))

(declare-fun lt!1850042 () Unit!124025)

(declare-fun Unit!124085 () Unit!124025)

(assert (=> b!4690146 (= lt!1850042 Unit!124085)))

(declare-fun lt!1850046 () Unit!124025)

(assert (=> b!4690146 (= lt!1850046 (addForallContainsKeyThenBeforeAdding!697 lt!1849668 lt!1850039 (_1!30199 (h!58654 lt!1849669)) (_2!30199 (h!58654 lt!1849669))))))

(assert (=> b!4690146 call!327795))

(declare-fun lt!1850050 () Unit!124025)

(assert (=> b!4690146 (= lt!1850050 lt!1850046)))

(assert (=> b!4690146 (forall!11323 (toList!5598 lt!1849668) lambda!207218)))

(declare-fun lt!1850033 () Unit!124025)

(declare-fun Unit!124089 () Unit!124025)

(assert (=> b!4690146 (= lt!1850033 Unit!124089)))

(declare-fun res!1978233 () Bool)

(assert (=> b!4690146 (= res!1978233 call!327796)))

(assert (=> b!4690146 (=> (not res!1978233) (not e!2925991))))

(assert (=> b!4690146 e!2925991))

(declare-fun lt!1850040 () Unit!124025)

(declare-fun Unit!124091 () Unit!124025)

(assert (=> b!4690146 (= lt!1850040 Unit!124091)))

(declare-fun c!801926 () Bool)

(declare-fun bm!327791 () Bool)

(assert (=> bm!327791 (= call!327796 (forall!11323 (ite c!801926 (toList!5598 lt!1849668) lt!1849669) (ite c!801926 lambda!207215 lambda!207218)))))

(declare-fun bm!327792 () Bool)

(assert (=> bm!327792 (= call!327795 (forall!11323 (toList!5598 lt!1849668) (ite c!801926 lambda!207215 lambda!207218)))))

(declare-fun e!2925993 () Bool)

(assert (=> d!1490575 e!2925993))

(declare-fun res!1978235 () Bool)

(assert (=> d!1490575 (=> (not res!1978235) (not e!2925993))))

(assert (=> d!1490575 (= res!1978235 (forall!11323 lt!1849669 lambda!207219))))

(assert (=> d!1490575 (= lt!1850047 e!2925992)))

(assert (=> d!1490575 (= c!801926 ((_ is Nil!52409) lt!1849669))))

(assert (=> d!1490575 (noDuplicateKeys!1854 lt!1849669)))

(assert (=> d!1490575 (= (addToMapMapFromBucket!1286 lt!1849669 lt!1849668) lt!1850047)))

(declare-fun b!4690147 () Bool)

(assert (=> b!4690147 (= e!2925993 (invariantList!1410 (toList!5598 lt!1850047)))))

(declare-fun b!4690148 () Bool)

(declare-fun res!1978234 () Bool)

(assert (=> b!4690148 (=> (not res!1978234) (not e!2925993))))

(assert (=> b!4690148 (= res!1978234 (forall!11323 (toList!5598 lt!1849668) lambda!207219))))

(assert (= (and d!1490575 c!801926) b!4690145))

(assert (= (and d!1490575 (not c!801926)) b!4690146))

(assert (= (and b!4690146 res!1978233) b!4690144))

(assert (= (or b!4690145 b!4690146) bm!327790))

(assert (= (or b!4690145 b!4690146) bm!327791))

(assert (= (or b!4690145 b!4690146) bm!327792))

(assert (= (and d!1490575 res!1978235) b!4690148))

(assert (= (and b!4690148 res!1978234) b!4690147))

(declare-fun m!5592499 () Bool)

(assert (=> b!4690147 m!5592499))

(declare-fun m!5592501 () Bool)

(assert (=> b!4690148 m!5592501))

(declare-fun m!5592503 () Bool)

(assert (=> d!1490575 m!5592503))

(assert (=> d!1490575 m!5592451))

(declare-fun m!5592505 () Bool)

(assert (=> bm!327791 m!5592505))

(declare-fun m!5592507 () Bool)

(assert (=> bm!327792 m!5592507))

(declare-fun m!5592509 () Bool)

(assert (=> b!4690144 m!5592509))

(assert (=> bm!327790 m!5592217))

(declare-fun m!5592511 () Bool)

(assert (=> b!4690146 m!5592511))

(declare-fun m!5592513 () Bool)

(assert (=> b!4690146 m!5592513))

(declare-fun m!5592515 () Bool)

(assert (=> b!4690146 m!5592515))

(declare-fun m!5592517 () Bool)

(assert (=> b!4690146 m!5592517))

(declare-fun m!5592519 () Bool)

(assert (=> b!4690146 m!5592519))

(declare-fun m!5592521 () Bool)

(assert (=> b!4690146 m!5592521))

(assert (=> b!4690146 m!5592509))

(assert (=> b!4690146 m!5592513))

(declare-fun m!5592523 () Bool)

(assert (=> b!4690146 m!5592523))

(declare-fun m!5592525 () Bool)

(assert (=> b!4690146 m!5592525))

(declare-fun m!5592527 () Bool)

(assert (=> b!4690146 m!5592527))

(assert (=> b!4690146 m!5592517))

(declare-fun m!5592529 () Bool)

(assert (=> b!4690146 m!5592529))

(assert (=> b!4689904 d!1490575))

(declare-fun bs!1086756 () Bool)

(declare-fun d!1490579 () Bool)

(assert (= bs!1086756 (and d!1490579 d!1490567)))

(declare-fun lambda!207222 () Int)

(assert (=> bs!1086756 (= lambda!207222 lambda!207211)))

(declare-fun bs!1086757 () Bool)

(assert (= bs!1086757 (and d!1490579 d!1490463)))

(assert (=> bs!1086757 (not (= lambda!207222 lambda!207110))))

(declare-fun bs!1086758 () Bool)

(assert (= bs!1086758 (and d!1490579 d!1490515)))

(assert (=> bs!1086758 (= lambda!207222 lambda!207193)))

(declare-fun bs!1086759 () Bool)

(assert (= bs!1086759 (and d!1490579 d!1490573)))

(assert (=> bs!1086759 (= lambda!207222 lambda!207212)))

(declare-fun bs!1086760 () Bool)

(assert (= bs!1086760 (and d!1490579 start!474420)))

(assert (=> bs!1086760 (= lambda!207222 lambda!207103)))

(declare-fun bs!1086761 () Bool)

(assert (= bs!1086761 (and d!1490579 d!1490539)))

(assert (=> bs!1086761 (= lambda!207222 lambda!207208)))

(assert (=> d!1490579 (contains!15608 (extractMap!1880 (toList!5597 (ListLongMap!4128 lt!1849671))) key!4653)))

(declare-fun lt!1850054 () Unit!124025)

(declare-fun choose!32581 (ListLongMap!4127 K!13785 Hashable!6223) Unit!124025)

(assert (=> d!1490579 (= lt!1850054 (choose!32581 (ListLongMap!4128 lt!1849671) key!4653 hashF!1323))))

(assert (=> d!1490579 (forall!11321 (toList!5597 (ListLongMap!4128 lt!1849671)) lambda!207222)))

(assert (=> d!1490579 (= (lemmaListContainsThenExtractedMapContains!446 (ListLongMap!4128 lt!1849671) key!4653 hashF!1323) lt!1850054)))

(declare-fun bs!1086762 () Bool)

(assert (= bs!1086762 d!1490579))

(declare-fun m!5592531 () Bool)

(assert (=> bs!1086762 m!5592531))

(assert (=> bs!1086762 m!5592531))

(declare-fun m!5592533 () Bool)

(assert (=> bs!1086762 m!5592533))

(declare-fun m!5592535 () Bool)

(assert (=> bs!1086762 m!5592535))

(declare-fun m!5592537 () Bool)

(assert (=> bs!1086762 m!5592537))

(assert (=> b!4689904 d!1490579))

(declare-fun d!1490581 () Bool)

(assert (=> d!1490581 (= (eq!1013 (addToMapMapFromBucket!1286 (Cons!52409 lt!1849663 lt!1849664) lt!1849668) (+!2138 (addToMapMapFromBucket!1286 lt!1849664 lt!1849668) lt!1849663)) (= (content!9164 (toList!5598 (addToMapMapFromBucket!1286 (Cons!52409 lt!1849663 lt!1849664) lt!1849668))) (content!9164 (toList!5598 (+!2138 (addToMapMapFromBucket!1286 lt!1849664 lt!1849668) lt!1849663)))))))

(declare-fun bs!1086763 () Bool)

(assert (= bs!1086763 d!1490581))

(declare-fun m!5592539 () Bool)

(assert (=> bs!1086763 m!5592539))

(declare-fun m!5592541 () Bool)

(assert (=> bs!1086763 m!5592541))

(assert (=> b!4689904 d!1490581))

(declare-fun bs!1086764 () Bool)

(declare-fun b!4690150 () Bool)

(assert (= bs!1086764 (and b!4690150 b!4690014)))

(declare-fun lambda!207223 () Int)

(assert (=> bs!1086764 (= lambda!207223 lambda!207187)))

(declare-fun bs!1086765 () Bool)

(assert (= bs!1086765 (and b!4690150 b!4690145)))

(assert (=> bs!1086765 (= lambda!207223 lambda!207215)))

(declare-fun bs!1086766 () Bool)

(assert (= bs!1086766 (and b!4690150 d!1490469)))

(assert (=> bs!1086766 (= (= lt!1849668 lt!1849874) (= lambda!207223 lambda!207190))))

(declare-fun bs!1086767 () Bool)

(assert (= bs!1086767 (and b!4690150 d!1490575)))

(assert (=> bs!1086767 (= (= lt!1849668 lt!1850047) (= lambda!207223 lambda!207219))))

(declare-fun bs!1086768 () Bool)

(assert (= bs!1086768 (and b!4690150 b!4690146)))

(assert (=> bs!1086768 (= lambda!207223 lambda!207217)))

(declare-fun bs!1086769 () Bool)

(assert (= bs!1086769 (and b!4690150 d!1490461)))

(assert (=> bs!1086769 (not (= lambda!207223 lambda!207107))))

(declare-fun bs!1086770 () Bool)

(assert (= bs!1086770 (and b!4690150 b!4690015)))

(assert (=> bs!1086770 (= lambda!207223 lambda!207188)))

(assert (=> bs!1086768 (= (= lt!1849668 lt!1850039) (= lambda!207223 lambda!207218))))

(declare-fun bs!1086771 () Bool)

(assert (= bs!1086771 (and b!4690150 d!1490457)))

(assert (=> bs!1086771 (not (= lambda!207223 lambda!207106))))

(assert (=> bs!1086770 (= (= lt!1849668 lt!1849866) (= lambda!207223 lambda!207189))))

(assert (=> b!4690150 true))

(declare-fun bs!1086772 () Bool)

(declare-fun b!4690151 () Bool)

(assert (= bs!1086772 (and b!4690151 b!4690014)))

(declare-fun lambda!207224 () Int)

(assert (=> bs!1086772 (= lambda!207224 lambda!207187)))

(declare-fun bs!1086773 () Bool)

(assert (= bs!1086773 (and b!4690151 d!1490469)))

(assert (=> bs!1086773 (= (= lt!1849668 lt!1849874) (= lambda!207224 lambda!207190))))

(declare-fun bs!1086774 () Bool)

(assert (= bs!1086774 (and b!4690151 d!1490575)))

(assert (=> bs!1086774 (= (= lt!1849668 lt!1850047) (= lambda!207224 lambda!207219))))

(declare-fun bs!1086775 () Bool)

(assert (= bs!1086775 (and b!4690151 b!4690146)))

(assert (=> bs!1086775 (= lambda!207224 lambda!207217)))

(declare-fun bs!1086776 () Bool)

(assert (= bs!1086776 (and b!4690151 d!1490461)))

(assert (=> bs!1086776 (not (= lambda!207224 lambda!207107))))

(declare-fun bs!1086777 () Bool)

(assert (= bs!1086777 (and b!4690151 b!4690015)))

(assert (=> bs!1086777 (= lambda!207224 lambda!207188)))

(assert (=> bs!1086775 (= (= lt!1849668 lt!1850039) (= lambda!207224 lambda!207218))))

(declare-fun bs!1086778 () Bool)

(assert (= bs!1086778 (and b!4690151 b!4690150)))

(assert (=> bs!1086778 (= lambda!207224 lambda!207223)))

(declare-fun bs!1086779 () Bool)

(assert (= bs!1086779 (and b!4690151 b!4690145)))

(assert (=> bs!1086779 (= lambda!207224 lambda!207215)))

(declare-fun bs!1086780 () Bool)

(assert (= bs!1086780 (and b!4690151 d!1490457)))

(assert (=> bs!1086780 (not (= lambda!207224 lambda!207106))))

(assert (=> bs!1086777 (= (= lt!1849668 lt!1849866) (= lambda!207224 lambda!207189))))

(assert (=> b!4690151 true))

(declare-fun lambda!207225 () Int)

(declare-fun lt!1850064 () ListMap!4961)

(assert (=> b!4690151 (= (= lt!1850064 lt!1849668) (= lambda!207225 lambda!207224))))

(assert (=> bs!1086772 (= (= lt!1850064 lt!1849668) (= lambda!207225 lambda!207187))))

(assert (=> bs!1086773 (= (= lt!1850064 lt!1849874) (= lambda!207225 lambda!207190))))

(assert (=> bs!1086774 (= (= lt!1850064 lt!1850047) (= lambda!207225 lambda!207219))))

(assert (=> bs!1086775 (= (= lt!1850064 lt!1849668) (= lambda!207225 lambda!207217))))

(assert (=> bs!1086776 (not (= lambda!207225 lambda!207107))))

(assert (=> bs!1086777 (= (= lt!1850064 lt!1849668) (= lambda!207225 lambda!207188))))

(assert (=> bs!1086775 (= (= lt!1850064 lt!1850039) (= lambda!207225 lambda!207218))))

(assert (=> bs!1086778 (= (= lt!1850064 lt!1849668) (= lambda!207225 lambda!207223))))

(assert (=> bs!1086779 (= (= lt!1850064 lt!1849668) (= lambda!207225 lambda!207215))))

(assert (=> bs!1086780 (not (= lambda!207225 lambda!207106))))

(assert (=> bs!1086777 (= (= lt!1850064 lt!1849866) (= lambda!207225 lambda!207189))))

(assert (=> b!4690151 true))

(declare-fun bs!1086781 () Bool)

(declare-fun d!1490583 () Bool)

(assert (= bs!1086781 (and d!1490583 b!4690151)))

(declare-fun lt!1850072 () ListMap!4961)

(declare-fun lambda!207226 () Int)

(assert (=> bs!1086781 (= (= lt!1850072 lt!1850064) (= lambda!207226 lambda!207225))))

(assert (=> bs!1086781 (= (= lt!1850072 lt!1849668) (= lambda!207226 lambda!207224))))

(declare-fun bs!1086782 () Bool)

(assert (= bs!1086782 (and d!1490583 b!4690014)))

(assert (=> bs!1086782 (= (= lt!1850072 lt!1849668) (= lambda!207226 lambda!207187))))

(declare-fun bs!1086783 () Bool)

(assert (= bs!1086783 (and d!1490583 d!1490469)))

(assert (=> bs!1086783 (= (= lt!1850072 lt!1849874) (= lambda!207226 lambda!207190))))

(declare-fun bs!1086784 () Bool)

(assert (= bs!1086784 (and d!1490583 d!1490575)))

(assert (=> bs!1086784 (= (= lt!1850072 lt!1850047) (= lambda!207226 lambda!207219))))

(declare-fun bs!1086785 () Bool)

(assert (= bs!1086785 (and d!1490583 b!4690146)))

(assert (=> bs!1086785 (= (= lt!1850072 lt!1849668) (= lambda!207226 lambda!207217))))

(declare-fun bs!1086786 () Bool)

(assert (= bs!1086786 (and d!1490583 d!1490461)))

(assert (=> bs!1086786 (not (= lambda!207226 lambda!207107))))

(declare-fun bs!1086787 () Bool)

(assert (= bs!1086787 (and d!1490583 b!4690015)))

(assert (=> bs!1086787 (= (= lt!1850072 lt!1849668) (= lambda!207226 lambda!207188))))

(assert (=> bs!1086785 (= (= lt!1850072 lt!1850039) (= lambda!207226 lambda!207218))))

(declare-fun bs!1086788 () Bool)

(assert (= bs!1086788 (and d!1490583 b!4690150)))

(assert (=> bs!1086788 (= (= lt!1850072 lt!1849668) (= lambda!207226 lambda!207223))))

(declare-fun bs!1086789 () Bool)

(assert (= bs!1086789 (and d!1490583 b!4690145)))

(assert (=> bs!1086789 (= (= lt!1850072 lt!1849668) (= lambda!207226 lambda!207215))))

(declare-fun bs!1086790 () Bool)

(assert (= bs!1086790 (and d!1490583 d!1490457)))

(assert (=> bs!1086790 (not (= lambda!207226 lambda!207106))))

(assert (=> bs!1086787 (= (= lt!1850072 lt!1849866) (= lambda!207226 lambda!207189))))

(assert (=> d!1490583 true))

(declare-fun bm!327793 () Bool)

(declare-fun call!327800 () Unit!124025)

(assert (=> bm!327793 (= call!327800 (lemmaContainsAllItsOwnKeys!698 lt!1849668))))

(declare-fun b!4690149 () Bool)

(declare-fun e!2925994 () Bool)

(assert (=> b!4690149 (= e!2925994 (forall!11323 (toList!5598 lt!1849668) lambda!207225))))

(declare-fun e!2925995 () ListMap!4961)

(assert (=> b!4690150 (= e!2925995 lt!1849668)))

(declare-fun lt!1850062 () Unit!124025)

(assert (=> b!4690150 (= lt!1850062 call!327800)))

(declare-fun call!327799 () Bool)

(assert (=> b!4690150 call!327799))

(declare-fun lt!1850060 () Unit!124025)

(assert (=> b!4690150 (= lt!1850060 lt!1850062)))

(declare-fun call!327798 () Bool)

(assert (=> b!4690150 call!327798))

(declare-fun lt!1850074 () Unit!124025)

(declare-fun Unit!124099 () Unit!124025)

(assert (=> b!4690150 (= lt!1850074 Unit!124099)))

(assert (=> b!4690151 (= e!2925995 lt!1850064)))

(declare-fun lt!1850068 () ListMap!4961)

(assert (=> b!4690151 (= lt!1850068 (+!2138 lt!1849668 (h!58654 (Cons!52409 lt!1849677 lt!1849669))))))

(assert (=> b!4690151 (= lt!1850064 (addToMapMapFromBucket!1286 (t!359709 (Cons!52409 lt!1849677 lt!1849669)) (+!2138 lt!1849668 (h!58654 (Cons!52409 lt!1849677 lt!1849669)))))))

(declare-fun lt!1850069 () Unit!124025)

(assert (=> b!4690151 (= lt!1850069 call!327800)))

(assert (=> b!4690151 (forall!11323 (toList!5598 lt!1849668) lambda!207224)))

(declare-fun lt!1850063 () Unit!124025)

(assert (=> b!4690151 (= lt!1850063 lt!1850069)))

(assert (=> b!4690151 (forall!11323 (toList!5598 lt!1850068) lambda!207225)))

(declare-fun lt!1850061 () Unit!124025)

(declare-fun Unit!124100 () Unit!124025)

(assert (=> b!4690151 (= lt!1850061 Unit!124100)))

(assert (=> b!4690151 (forall!11323 (t!359709 (Cons!52409 lt!1849677 lt!1849669)) lambda!207225)))

(declare-fun lt!1850056 () Unit!124025)

(declare-fun Unit!124101 () Unit!124025)

(assert (=> b!4690151 (= lt!1850056 Unit!124101)))

(declare-fun lt!1850057 () Unit!124025)

(declare-fun Unit!124102 () Unit!124025)

(assert (=> b!4690151 (= lt!1850057 Unit!124102)))

(declare-fun lt!1850059 () Unit!124025)

(assert (=> b!4690151 (= lt!1850059 (forallContained!3430 (toList!5598 lt!1850068) lambda!207225 (h!58654 (Cons!52409 lt!1849677 lt!1849669))))))

(assert (=> b!4690151 (contains!15608 lt!1850068 (_1!30199 (h!58654 (Cons!52409 lt!1849677 lt!1849669))))))

(declare-fun lt!1850070 () Unit!124025)

(declare-fun Unit!124103 () Unit!124025)

(assert (=> b!4690151 (= lt!1850070 Unit!124103)))

(assert (=> b!4690151 (contains!15608 lt!1850064 (_1!30199 (h!58654 (Cons!52409 lt!1849677 lt!1849669))))))

(declare-fun lt!1850055 () Unit!124025)

(declare-fun Unit!124104 () Unit!124025)

(assert (=> b!4690151 (= lt!1850055 Unit!124104)))

(assert (=> b!4690151 (forall!11323 (Cons!52409 lt!1849677 lt!1849669) lambda!207225)))

(declare-fun lt!1850066 () Unit!124025)

(declare-fun Unit!124105 () Unit!124025)

(assert (=> b!4690151 (= lt!1850066 Unit!124105)))

(assert (=> b!4690151 (forall!11323 (toList!5598 lt!1850068) lambda!207225)))

(declare-fun lt!1850073 () Unit!124025)

(declare-fun Unit!124106 () Unit!124025)

(assert (=> b!4690151 (= lt!1850073 Unit!124106)))

(declare-fun lt!1850067 () Unit!124025)

(declare-fun Unit!124107 () Unit!124025)

(assert (=> b!4690151 (= lt!1850067 Unit!124107)))

(declare-fun lt!1850071 () Unit!124025)

(assert (=> b!4690151 (= lt!1850071 (addForallContainsKeyThenBeforeAdding!697 lt!1849668 lt!1850064 (_1!30199 (h!58654 (Cons!52409 lt!1849677 lt!1849669))) (_2!30199 (h!58654 (Cons!52409 lt!1849677 lt!1849669)))))))

(assert (=> b!4690151 call!327798))

(declare-fun lt!1850075 () Unit!124025)

(assert (=> b!4690151 (= lt!1850075 lt!1850071)))

(assert (=> b!4690151 (forall!11323 (toList!5598 lt!1849668) lambda!207225)))

(declare-fun lt!1850058 () Unit!124025)

(declare-fun Unit!124108 () Unit!124025)

(assert (=> b!4690151 (= lt!1850058 Unit!124108)))

(declare-fun res!1978236 () Bool)

(assert (=> b!4690151 (= res!1978236 call!327799)))

(assert (=> b!4690151 (=> (not res!1978236) (not e!2925994))))

(assert (=> b!4690151 e!2925994))

(declare-fun lt!1850065 () Unit!124025)

(declare-fun Unit!124109 () Unit!124025)

(assert (=> b!4690151 (= lt!1850065 Unit!124109)))

(declare-fun c!801927 () Bool)

(declare-fun bm!327794 () Bool)

(assert (=> bm!327794 (= call!327799 (forall!11323 (ite c!801927 (toList!5598 lt!1849668) (Cons!52409 lt!1849677 lt!1849669)) (ite c!801927 lambda!207223 lambda!207225)))))

(declare-fun bm!327795 () Bool)

(assert (=> bm!327795 (= call!327798 (forall!11323 (toList!5598 lt!1849668) (ite c!801927 lambda!207223 lambda!207225)))))

(declare-fun e!2925996 () Bool)

(assert (=> d!1490583 e!2925996))

(declare-fun res!1978238 () Bool)

(assert (=> d!1490583 (=> (not res!1978238) (not e!2925996))))

(assert (=> d!1490583 (= res!1978238 (forall!11323 (Cons!52409 lt!1849677 lt!1849669) lambda!207226))))

(assert (=> d!1490583 (= lt!1850072 e!2925995)))

(assert (=> d!1490583 (= c!801927 ((_ is Nil!52409) (Cons!52409 lt!1849677 lt!1849669)))))

(assert (=> d!1490583 (noDuplicateKeys!1854 (Cons!52409 lt!1849677 lt!1849669))))

(assert (=> d!1490583 (= (addToMapMapFromBucket!1286 (Cons!52409 lt!1849677 lt!1849669) lt!1849668) lt!1850072)))

(declare-fun b!4690152 () Bool)

(assert (=> b!4690152 (= e!2925996 (invariantList!1410 (toList!5598 lt!1850072)))))

(declare-fun b!4690153 () Bool)

(declare-fun res!1978237 () Bool)

(assert (=> b!4690153 (=> (not res!1978237) (not e!2925996))))

(assert (=> b!4690153 (= res!1978237 (forall!11323 (toList!5598 lt!1849668) lambda!207226))))

(assert (= (and d!1490583 c!801927) b!4690150))

(assert (= (and d!1490583 (not c!801927)) b!4690151))

(assert (= (and b!4690151 res!1978236) b!4690149))

(assert (= (or b!4690150 b!4690151) bm!327793))

(assert (= (or b!4690150 b!4690151) bm!327794))

(assert (= (or b!4690150 b!4690151) bm!327795))

(assert (= (and d!1490583 res!1978238) b!4690153))

(assert (= (and b!4690153 res!1978237) b!4690152))

(declare-fun m!5592543 () Bool)

(assert (=> b!4690152 m!5592543))

(declare-fun m!5592545 () Bool)

(assert (=> b!4690153 m!5592545))

(declare-fun m!5592547 () Bool)

(assert (=> d!1490583 m!5592547))

(declare-fun m!5592549 () Bool)

(assert (=> d!1490583 m!5592549))

(declare-fun m!5592551 () Bool)

(assert (=> bm!327794 m!5592551))

(declare-fun m!5592553 () Bool)

(assert (=> bm!327795 m!5592553))

(declare-fun m!5592555 () Bool)

(assert (=> b!4690149 m!5592555))

(assert (=> bm!327793 m!5592217))

(declare-fun m!5592557 () Bool)

(assert (=> b!4690151 m!5592557))

(declare-fun m!5592559 () Bool)

(assert (=> b!4690151 m!5592559))

(declare-fun m!5592561 () Bool)

(assert (=> b!4690151 m!5592561))

(declare-fun m!5592563 () Bool)

(assert (=> b!4690151 m!5592563))

(declare-fun m!5592565 () Bool)

(assert (=> b!4690151 m!5592565))

(declare-fun m!5592567 () Bool)

(assert (=> b!4690151 m!5592567))

(assert (=> b!4690151 m!5592555))

(assert (=> b!4690151 m!5592559))

(declare-fun m!5592569 () Bool)

(assert (=> b!4690151 m!5592569))

(declare-fun m!5592571 () Bool)

(assert (=> b!4690151 m!5592571))

(declare-fun m!5592573 () Bool)

(assert (=> b!4690151 m!5592573))

(assert (=> b!4690151 m!5592563))

(declare-fun m!5592575 () Bool)

(assert (=> b!4690151 m!5592575))

(assert (=> b!4689904 d!1490583))

(declare-fun d!1490585 () Bool)

(assert (=> d!1490585 (= (head!9972 newBucket!218) (h!58654 newBucket!218))))

(assert (=> b!4689904 d!1490585))

(declare-fun d!1490587 () Bool)

(declare-fun e!2925997 () Bool)

(assert (=> d!1490587 e!2925997))

(declare-fun res!1978239 () Bool)

(assert (=> d!1490587 (=> (not res!1978239) (not e!2925997))))

(declare-fun lt!1850077 () ListMap!4961)

(assert (=> d!1490587 (= res!1978239 (contains!15608 lt!1850077 (_1!30199 lt!1849677)))))

(declare-fun lt!1850078 () List!52533)

(assert (=> d!1490587 (= lt!1850077 (ListMap!4962 lt!1850078))))

(declare-fun lt!1850076 () Unit!124025)

(declare-fun lt!1850079 () Unit!124025)

(assert (=> d!1490587 (= lt!1850076 lt!1850079)))

(assert (=> d!1490587 (= (getValueByKey!1778 lt!1850078 (_1!30199 lt!1849677)) (Some!12077 (_2!30199 lt!1849677)))))

(assert (=> d!1490587 (= lt!1850079 (lemmaContainsTupThenGetReturnValue!1000 lt!1850078 (_1!30199 lt!1849677) (_2!30199 lt!1849677)))))

(assert (=> d!1490587 (= lt!1850078 (insertNoDuplicatedKeys!508 (toList!5598 (addToMapMapFromBucket!1286 lt!1849669 lt!1849668)) (_1!30199 lt!1849677) (_2!30199 lt!1849677)))))

(assert (=> d!1490587 (= (+!2138 (addToMapMapFromBucket!1286 lt!1849669 lt!1849668) lt!1849677) lt!1850077)))

(declare-fun b!4690154 () Bool)

(declare-fun res!1978240 () Bool)

(assert (=> b!4690154 (=> (not res!1978240) (not e!2925997))))

(assert (=> b!4690154 (= res!1978240 (= (getValueByKey!1778 (toList!5598 lt!1850077) (_1!30199 lt!1849677)) (Some!12077 (_2!30199 lt!1849677))))))

(declare-fun b!4690155 () Bool)

(assert (=> b!4690155 (= e!2925997 (contains!15613 (toList!5598 lt!1850077) lt!1849677))))

(assert (= (and d!1490587 res!1978239) b!4690154))

(assert (= (and b!4690154 res!1978240) b!4690155))

(declare-fun m!5592577 () Bool)

(assert (=> d!1490587 m!5592577))

(declare-fun m!5592579 () Bool)

(assert (=> d!1490587 m!5592579))

(declare-fun m!5592581 () Bool)

(assert (=> d!1490587 m!5592581))

(declare-fun m!5592583 () Bool)

(assert (=> d!1490587 m!5592583))

(declare-fun m!5592585 () Bool)

(assert (=> b!4690154 m!5592585))

(declare-fun m!5592587 () Bool)

(assert (=> b!4690155 m!5592587))

(assert (=> b!4689904 d!1490587))

(declare-fun d!1490589 () Bool)

(assert (=> d!1490589 (= (eq!1013 (extractMap!1880 (Cons!52410 lt!1849675 (t!359710 (toList!5597 lm!2023)))) (+!2138 (extractMap!1880 (Cons!52410 (tuple2!53813 hash!405 lt!1849669) (t!359710 (toList!5597 lm!2023)))) (h!58654 oldBucket!34))) (= (content!9164 (toList!5598 (extractMap!1880 (Cons!52410 lt!1849675 (t!359710 (toList!5597 lm!2023)))))) (content!9164 (toList!5598 (+!2138 (extractMap!1880 (Cons!52410 (tuple2!53813 hash!405 lt!1849669) (t!359710 (toList!5597 lm!2023)))) (h!58654 oldBucket!34))))))))

(declare-fun bs!1086791 () Bool)

(assert (= bs!1086791 d!1490589))

(declare-fun m!5592589 () Bool)

(assert (=> bs!1086791 m!5592589))

(declare-fun m!5592591 () Bool)

(assert (=> bs!1086791 m!5592591))

(assert (=> b!4689904 d!1490589))

(declare-fun bs!1086792 () Bool)

(declare-fun b!4690157 () Bool)

(assert (= bs!1086792 (and b!4690157 d!1490583)))

(declare-fun lambda!207227 () Int)

(assert (=> bs!1086792 (= (= lt!1849668 lt!1850072) (= lambda!207227 lambda!207226))))

(declare-fun bs!1086793 () Bool)

(assert (= bs!1086793 (and b!4690157 b!4690151)))

(assert (=> bs!1086793 (= (= lt!1849668 lt!1850064) (= lambda!207227 lambda!207225))))

(assert (=> bs!1086793 (= lambda!207227 lambda!207224)))

(declare-fun bs!1086794 () Bool)

(assert (= bs!1086794 (and b!4690157 b!4690014)))

(assert (=> bs!1086794 (= lambda!207227 lambda!207187)))

(declare-fun bs!1086795 () Bool)

(assert (= bs!1086795 (and b!4690157 d!1490469)))

(assert (=> bs!1086795 (= (= lt!1849668 lt!1849874) (= lambda!207227 lambda!207190))))

(declare-fun bs!1086796 () Bool)

(assert (= bs!1086796 (and b!4690157 d!1490575)))

(assert (=> bs!1086796 (= (= lt!1849668 lt!1850047) (= lambda!207227 lambda!207219))))

(declare-fun bs!1086797 () Bool)

(assert (= bs!1086797 (and b!4690157 b!4690146)))

(assert (=> bs!1086797 (= lambda!207227 lambda!207217)))

(declare-fun bs!1086798 () Bool)

(assert (= bs!1086798 (and b!4690157 d!1490461)))

(assert (=> bs!1086798 (not (= lambda!207227 lambda!207107))))

(declare-fun bs!1086799 () Bool)

(assert (= bs!1086799 (and b!4690157 b!4690015)))

(assert (=> bs!1086799 (= lambda!207227 lambda!207188)))

(assert (=> bs!1086797 (= (= lt!1849668 lt!1850039) (= lambda!207227 lambda!207218))))

(declare-fun bs!1086800 () Bool)

(assert (= bs!1086800 (and b!4690157 b!4690150)))

(assert (=> bs!1086800 (= lambda!207227 lambda!207223)))

(declare-fun bs!1086801 () Bool)

(assert (= bs!1086801 (and b!4690157 b!4690145)))

(assert (=> bs!1086801 (= lambda!207227 lambda!207215)))

(declare-fun bs!1086802 () Bool)

(assert (= bs!1086802 (and b!4690157 d!1490457)))

(assert (=> bs!1086802 (not (= lambda!207227 lambda!207106))))

(assert (=> bs!1086799 (= (= lt!1849668 lt!1849866) (= lambda!207227 lambda!207189))))

(assert (=> b!4690157 true))

(declare-fun bs!1086803 () Bool)

(declare-fun b!4690158 () Bool)

(assert (= bs!1086803 (and b!4690158 d!1490583)))

(declare-fun lambda!207228 () Int)

(assert (=> bs!1086803 (= (= lt!1849668 lt!1850072) (= lambda!207228 lambda!207226))))

(declare-fun bs!1086804 () Bool)

(assert (= bs!1086804 (and b!4690158 b!4690151)))

(assert (=> bs!1086804 (= (= lt!1849668 lt!1850064) (= lambda!207228 lambda!207225))))

(assert (=> bs!1086804 (= lambda!207228 lambda!207224)))

(declare-fun bs!1086805 () Bool)

(assert (= bs!1086805 (and b!4690158 b!4690014)))

(assert (=> bs!1086805 (= lambda!207228 lambda!207187)))

(declare-fun bs!1086806 () Bool)

(assert (= bs!1086806 (and b!4690158 d!1490469)))

(assert (=> bs!1086806 (= (= lt!1849668 lt!1849874) (= lambda!207228 lambda!207190))))

(declare-fun bs!1086807 () Bool)

(assert (= bs!1086807 (and b!4690158 d!1490575)))

(assert (=> bs!1086807 (= (= lt!1849668 lt!1850047) (= lambda!207228 lambda!207219))))

(declare-fun bs!1086808 () Bool)

(assert (= bs!1086808 (and b!4690158 b!4690157)))

(assert (=> bs!1086808 (= lambda!207228 lambda!207227)))

(declare-fun bs!1086809 () Bool)

(assert (= bs!1086809 (and b!4690158 b!4690146)))

(assert (=> bs!1086809 (= lambda!207228 lambda!207217)))

(declare-fun bs!1086810 () Bool)

(assert (= bs!1086810 (and b!4690158 d!1490461)))

(assert (=> bs!1086810 (not (= lambda!207228 lambda!207107))))

(declare-fun bs!1086811 () Bool)

(assert (= bs!1086811 (and b!4690158 b!4690015)))

(assert (=> bs!1086811 (= lambda!207228 lambda!207188)))

(assert (=> bs!1086809 (= (= lt!1849668 lt!1850039) (= lambda!207228 lambda!207218))))

(declare-fun bs!1086812 () Bool)

(assert (= bs!1086812 (and b!4690158 b!4690150)))

(assert (=> bs!1086812 (= lambda!207228 lambda!207223)))

(declare-fun bs!1086813 () Bool)

(assert (= bs!1086813 (and b!4690158 b!4690145)))

(assert (=> bs!1086813 (= lambda!207228 lambda!207215)))

(declare-fun bs!1086814 () Bool)

(assert (= bs!1086814 (and b!4690158 d!1490457)))

(assert (=> bs!1086814 (not (= lambda!207228 lambda!207106))))

(assert (=> bs!1086811 (= (= lt!1849668 lt!1849866) (= lambda!207228 lambda!207189))))

(assert (=> b!4690158 true))

(declare-fun lambda!207229 () Int)

(declare-fun lt!1850089 () ListMap!4961)

(assert (=> bs!1086803 (= (= lt!1850089 lt!1850072) (= lambda!207229 lambda!207226))))

(assert (=> bs!1086804 (= (= lt!1850089 lt!1850064) (= lambda!207229 lambda!207225))))

(assert (=> bs!1086804 (= (= lt!1850089 lt!1849668) (= lambda!207229 lambda!207224))))

(assert (=> bs!1086805 (= (= lt!1850089 lt!1849668) (= lambda!207229 lambda!207187))))

(assert (=> bs!1086807 (= (= lt!1850089 lt!1850047) (= lambda!207229 lambda!207219))))

(assert (=> bs!1086808 (= (= lt!1850089 lt!1849668) (= lambda!207229 lambda!207227))))

(assert (=> bs!1086809 (= (= lt!1850089 lt!1849668) (= lambda!207229 lambda!207217))))

(assert (=> bs!1086810 (not (= lambda!207229 lambda!207107))))

(assert (=> bs!1086811 (= (= lt!1850089 lt!1849668) (= lambda!207229 lambda!207188))))

(assert (=> bs!1086809 (= (= lt!1850089 lt!1850039) (= lambda!207229 lambda!207218))))

(assert (=> bs!1086812 (= (= lt!1850089 lt!1849668) (= lambda!207229 lambda!207223))))

(assert (=> bs!1086813 (= (= lt!1850089 lt!1849668) (= lambda!207229 lambda!207215))))

(assert (=> bs!1086806 (= (= lt!1850089 lt!1849874) (= lambda!207229 lambda!207190))))

(assert (=> b!4690158 (= (= lt!1850089 lt!1849668) (= lambda!207229 lambda!207228))))

(assert (=> bs!1086814 (not (= lambda!207229 lambda!207106))))

(assert (=> bs!1086811 (= (= lt!1850089 lt!1849866) (= lambda!207229 lambda!207189))))

(assert (=> b!4690158 true))

(declare-fun bs!1086815 () Bool)

(declare-fun d!1490591 () Bool)

(assert (= bs!1086815 (and d!1490591 d!1490583)))

(declare-fun lt!1850097 () ListMap!4961)

(declare-fun lambda!207234 () Int)

(assert (=> bs!1086815 (= (= lt!1850097 lt!1850072) (= lambda!207234 lambda!207226))))

(declare-fun bs!1086816 () Bool)

(assert (= bs!1086816 (and d!1490591 b!4690151)))

(assert (=> bs!1086816 (= (= lt!1850097 lt!1850064) (= lambda!207234 lambda!207225))))

(assert (=> bs!1086816 (= (= lt!1850097 lt!1849668) (= lambda!207234 lambda!207224))))

(declare-fun bs!1086817 () Bool)

(assert (= bs!1086817 (and d!1490591 b!4690014)))

(assert (=> bs!1086817 (= (= lt!1850097 lt!1849668) (= lambda!207234 lambda!207187))))

(declare-fun bs!1086818 () Bool)

(assert (= bs!1086818 (and d!1490591 d!1490575)))

(assert (=> bs!1086818 (= (= lt!1850097 lt!1850047) (= lambda!207234 lambda!207219))))

(declare-fun bs!1086819 () Bool)

(assert (= bs!1086819 (and d!1490591 b!4690157)))

(assert (=> bs!1086819 (= (= lt!1850097 lt!1849668) (= lambda!207234 lambda!207227))))

(declare-fun bs!1086820 () Bool)

(assert (= bs!1086820 (and d!1490591 b!4690158)))

(assert (=> bs!1086820 (= (= lt!1850097 lt!1850089) (= lambda!207234 lambda!207229))))

(declare-fun bs!1086821 () Bool)

(assert (= bs!1086821 (and d!1490591 b!4690146)))

(assert (=> bs!1086821 (= (= lt!1850097 lt!1849668) (= lambda!207234 lambda!207217))))

(declare-fun bs!1086822 () Bool)

(assert (= bs!1086822 (and d!1490591 d!1490461)))

(assert (=> bs!1086822 (not (= lambda!207234 lambda!207107))))

(declare-fun bs!1086823 () Bool)

(assert (= bs!1086823 (and d!1490591 b!4690015)))

(assert (=> bs!1086823 (= (= lt!1850097 lt!1849668) (= lambda!207234 lambda!207188))))

(assert (=> bs!1086821 (= (= lt!1850097 lt!1850039) (= lambda!207234 lambda!207218))))

(declare-fun bs!1086824 () Bool)

(assert (= bs!1086824 (and d!1490591 b!4690150)))

(assert (=> bs!1086824 (= (= lt!1850097 lt!1849668) (= lambda!207234 lambda!207223))))

(declare-fun bs!1086825 () Bool)

(assert (= bs!1086825 (and d!1490591 b!4690145)))

(assert (=> bs!1086825 (= (= lt!1850097 lt!1849668) (= lambda!207234 lambda!207215))))

(declare-fun bs!1086826 () Bool)

(assert (= bs!1086826 (and d!1490591 d!1490469)))

(assert (=> bs!1086826 (= (= lt!1850097 lt!1849874) (= lambda!207234 lambda!207190))))

(assert (=> bs!1086820 (= (= lt!1850097 lt!1849668) (= lambda!207234 lambda!207228))))

(declare-fun bs!1086827 () Bool)

(assert (= bs!1086827 (and d!1490591 d!1490457)))

(assert (=> bs!1086827 (not (= lambda!207234 lambda!207106))))

(assert (=> bs!1086823 (= (= lt!1850097 lt!1849866) (= lambda!207234 lambda!207189))))

(assert (=> d!1490591 true))

(declare-fun bm!327796 () Bool)

(declare-fun call!327803 () Unit!124025)

(assert (=> bm!327796 (= call!327803 (lemmaContainsAllItsOwnKeys!698 lt!1849668))))

(declare-fun b!4690156 () Bool)

(declare-fun e!2925998 () Bool)

(assert (=> b!4690156 (= e!2925998 (forall!11323 (toList!5598 lt!1849668) lambda!207229))))

(declare-fun e!2925999 () ListMap!4961)

(assert (=> b!4690157 (= e!2925999 lt!1849668)))

(declare-fun lt!1850087 () Unit!124025)

(assert (=> b!4690157 (= lt!1850087 call!327803)))

(declare-fun call!327802 () Bool)

(assert (=> b!4690157 call!327802))

(declare-fun lt!1850085 () Unit!124025)

(assert (=> b!4690157 (= lt!1850085 lt!1850087)))

(declare-fun call!327801 () Bool)

(assert (=> b!4690157 call!327801))

(declare-fun lt!1850099 () Unit!124025)

(declare-fun Unit!124121 () Unit!124025)

(assert (=> b!4690157 (= lt!1850099 Unit!124121)))

(assert (=> b!4690158 (= e!2925999 lt!1850089)))

(declare-fun lt!1850093 () ListMap!4961)

(assert (=> b!4690158 (= lt!1850093 (+!2138 lt!1849668 (h!58654 lt!1849664)))))

(assert (=> b!4690158 (= lt!1850089 (addToMapMapFromBucket!1286 (t!359709 lt!1849664) (+!2138 lt!1849668 (h!58654 lt!1849664))))))

(declare-fun lt!1850094 () Unit!124025)

(assert (=> b!4690158 (= lt!1850094 call!327803)))

(assert (=> b!4690158 (forall!11323 (toList!5598 lt!1849668) lambda!207228)))

(declare-fun lt!1850088 () Unit!124025)

(assert (=> b!4690158 (= lt!1850088 lt!1850094)))

(assert (=> b!4690158 (forall!11323 (toList!5598 lt!1850093) lambda!207229)))

(declare-fun lt!1850086 () Unit!124025)

(declare-fun Unit!124122 () Unit!124025)

(assert (=> b!4690158 (= lt!1850086 Unit!124122)))

(assert (=> b!4690158 (forall!11323 (t!359709 lt!1849664) lambda!207229)))

(declare-fun lt!1850081 () Unit!124025)

(declare-fun Unit!124123 () Unit!124025)

(assert (=> b!4690158 (= lt!1850081 Unit!124123)))

(declare-fun lt!1850082 () Unit!124025)

(declare-fun Unit!124124 () Unit!124025)

(assert (=> b!4690158 (= lt!1850082 Unit!124124)))

(declare-fun lt!1850084 () Unit!124025)

(assert (=> b!4690158 (= lt!1850084 (forallContained!3430 (toList!5598 lt!1850093) lambda!207229 (h!58654 lt!1849664)))))

(assert (=> b!4690158 (contains!15608 lt!1850093 (_1!30199 (h!58654 lt!1849664)))))

(declare-fun lt!1850095 () Unit!124025)

(declare-fun Unit!124125 () Unit!124025)

(assert (=> b!4690158 (= lt!1850095 Unit!124125)))

(assert (=> b!4690158 (contains!15608 lt!1850089 (_1!30199 (h!58654 lt!1849664)))))

(declare-fun lt!1850080 () Unit!124025)

(declare-fun Unit!124126 () Unit!124025)

(assert (=> b!4690158 (= lt!1850080 Unit!124126)))

(assert (=> b!4690158 (forall!11323 lt!1849664 lambda!207229)))

(declare-fun lt!1850091 () Unit!124025)

(declare-fun Unit!124127 () Unit!124025)

(assert (=> b!4690158 (= lt!1850091 Unit!124127)))

(assert (=> b!4690158 (forall!11323 (toList!5598 lt!1850093) lambda!207229)))

(declare-fun lt!1850098 () Unit!124025)

(declare-fun Unit!124128 () Unit!124025)

(assert (=> b!4690158 (= lt!1850098 Unit!124128)))

(declare-fun lt!1850092 () Unit!124025)

(declare-fun Unit!124129 () Unit!124025)

(assert (=> b!4690158 (= lt!1850092 Unit!124129)))

(declare-fun lt!1850096 () Unit!124025)

(assert (=> b!4690158 (= lt!1850096 (addForallContainsKeyThenBeforeAdding!697 lt!1849668 lt!1850089 (_1!30199 (h!58654 lt!1849664)) (_2!30199 (h!58654 lt!1849664))))))

(assert (=> b!4690158 call!327801))

(declare-fun lt!1850100 () Unit!124025)

(assert (=> b!4690158 (= lt!1850100 lt!1850096)))

(assert (=> b!4690158 (forall!11323 (toList!5598 lt!1849668) lambda!207229)))

(declare-fun lt!1850083 () Unit!124025)

(declare-fun Unit!124130 () Unit!124025)

(assert (=> b!4690158 (= lt!1850083 Unit!124130)))

(declare-fun res!1978241 () Bool)

(assert (=> b!4690158 (= res!1978241 call!327802)))

(assert (=> b!4690158 (=> (not res!1978241) (not e!2925998))))

(assert (=> b!4690158 e!2925998))

(declare-fun lt!1850090 () Unit!124025)

(declare-fun Unit!124131 () Unit!124025)

(assert (=> b!4690158 (= lt!1850090 Unit!124131)))

(declare-fun bm!327797 () Bool)

(declare-fun c!801928 () Bool)

(assert (=> bm!327797 (= call!327802 (forall!11323 (ite c!801928 (toList!5598 lt!1849668) lt!1849664) (ite c!801928 lambda!207227 lambda!207229)))))

(declare-fun bm!327798 () Bool)

(assert (=> bm!327798 (= call!327801 (forall!11323 (toList!5598 lt!1849668) (ite c!801928 lambda!207227 lambda!207229)))))

(declare-fun e!2926000 () Bool)

(assert (=> d!1490591 e!2926000))

(declare-fun res!1978243 () Bool)

(assert (=> d!1490591 (=> (not res!1978243) (not e!2926000))))

(assert (=> d!1490591 (= res!1978243 (forall!11323 lt!1849664 lambda!207234))))

(assert (=> d!1490591 (= lt!1850097 e!2925999)))

(assert (=> d!1490591 (= c!801928 ((_ is Nil!52409) lt!1849664))))

(assert (=> d!1490591 (noDuplicateKeys!1854 lt!1849664)))

(assert (=> d!1490591 (= (addToMapMapFromBucket!1286 lt!1849664 lt!1849668) lt!1850097)))

(declare-fun b!4690159 () Bool)

(assert (=> b!4690159 (= e!2926000 (invariantList!1410 (toList!5598 lt!1850097)))))

(declare-fun b!4690160 () Bool)

(declare-fun res!1978242 () Bool)

(assert (=> b!4690160 (=> (not res!1978242) (not e!2926000))))

(assert (=> b!4690160 (= res!1978242 (forall!11323 (toList!5598 lt!1849668) lambda!207234))))

(assert (= (and d!1490591 c!801928) b!4690157))

(assert (= (and d!1490591 (not c!801928)) b!4690158))

(assert (= (and b!4690158 res!1978241) b!4690156))

(assert (= (or b!4690157 b!4690158) bm!327796))

(assert (= (or b!4690157 b!4690158) bm!327797))

(assert (= (or b!4690157 b!4690158) bm!327798))

(assert (= (and d!1490591 res!1978243) b!4690160))

(assert (= (and b!4690160 res!1978242) b!4690159))

(declare-fun m!5592593 () Bool)

(assert (=> b!4690159 m!5592593))

(declare-fun m!5592595 () Bool)

(assert (=> b!4690160 m!5592595))

(declare-fun m!5592597 () Bool)

(assert (=> d!1490591 m!5592597))

(declare-fun m!5592599 () Bool)

(assert (=> d!1490591 m!5592599))

(declare-fun m!5592601 () Bool)

(assert (=> bm!327797 m!5592601))

(declare-fun m!5592603 () Bool)

(assert (=> bm!327798 m!5592603))

(declare-fun m!5592605 () Bool)

(assert (=> b!4690156 m!5592605))

(assert (=> bm!327796 m!5592217))

(declare-fun m!5592607 () Bool)

(assert (=> b!4690158 m!5592607))

(declare-fun m!5592609 () Bool)

(assert (=> b!4690158 m!5592609))

(declare-fun m!5592611 () Bool)

(assert (=> b!4690158 m!5592611))

(declare-fun m!5592613 () Bool)

(assert (=> b!4690158 m!5592613))

(declare-fun m!5592615 () Bool)

(assert (=> b!4690158 m!5592615))

(declare-fun m!5592617 () Bool)

(assert (=> b!4690158 m!5592617))

(assert (=> b!4690158 m!5592605))

(assert (=> b!4690158 m!5592609))

(declare-fun m!5592619 () Bool)

(assert (=> b!4690158 m!5592619))

(declare-fun m!5592621 () Bool)

(assert (=> b!4690158 m!5592621))

(declare-fun m!5592623 () Bool)

(assert (=> b!4690158 m!5592623))

(assert (=> b!4690158 m!5592613))

(declare-fun m!5592625 () Bool)

(assert (=> b!4690158 m!5592625))

(assert (=> b!4689904 d!1490591))

(declare-fun bs!1086828 () Bool)

(declare-fun d!1490593 () Bool)

(assert (= bs!1086828 (and d!1490593 d!1490579)))

(declare-fun lambda!207237 () Int)

(assert (=> bs!1086828 (= lambda!207237 lambda!207222)))

(declare-fun bs!1086829 () Bool)

(assert (= bs!1086829 (and d!1490593 d!1490567)))

(assert (=> bs!1086829 (= lambda!207237 lambda!207211)))

(declare-fun bs!1086830 () Bool)

(assert (= bs!1086830 (and d!1490593 d!1490463)))

(assert (=> bs!1086830 (not (= lambda!207237 lambda!207110))))

(declare-fun bs!1086831 () Bool)

(assert (= bs!1086831 (and d!1490593 d!1490515)))

(assert (=> bs!1086831 (= lambda!207237 lambda!207193)))

(declare-fun bs!1086832 () Bool)

(assert (= bs!1086832 (and d!1490593 d!1490573)))

(assert (=> bs!1086832 (= lambda!207237 lambda!207212)))

(declare-fun bs!1086833 () Bool)

(assert (= bs!1086833 (and d!1490593 start!474420)))

(assert (=> bs!1086833 (= lambda!207237 lambda!207103)))

(declare-fun bs!1086834 () Bool)

(assert (= bs!1086834 (and d!1490593 d!1490539)))

(assert (=> bs!1086834 (= lambda!207237 lambda!207208)))

(declare-fun lt!1850117 () ListMap!4961)

(assert (=> d!1490593 (invariantList!1410 (toList!5598 lt!1850117))))

(declare-fun e!2926005 () ListMap!4961)

(assert (=> d!1490593 (= lt!1850117 e!2926005)))

(declare-fun c!801929 () Bool)

(assert (=> d!1490593 (= c!801929 ((_ is Cons!52410) lt!1849671))))

(assert (=> d!1490593 (forall!11321 lt!1849671 lambda!207237)))

(assert (=> d!1490593 (= (extractMap!1880 lt!1849671) lt!1850117)))

(declare-fun b!4690169 () Bool)

(assert (=> b!4690169 (= e!2926005 (addToMapMapFromBucket!1286 (_2!30200 (h!58655 lt!1849671)) (extractMap!1880 (t!359710 lt!1849671))))))

(declare-fun b!4690170 () Bool)

(assert (=> b!4690170 (= e!2926005 (ListMap!4962 Nil!52409))))

(assert (= (and d!1490593 c!801929) b!4690169))

(assert (= (and d!1490593 (not c!801929)) b!4690170))

(declare-fun m!5592627 () Bool)

(assert (=> d!1490593 m!5592627))

(declare-fun m!5592629 () Bool)

(assert (=> d!1490593 m!5592629))

(declare-fun m!5592631 () Bool)

(assert (=> b!4690169 m!5592631))

(assert (=> b!4690169 m!5592631))

(declare-fun m!5592633 () Bool)

(assert (=> b!4690169 m!5592633))

(assert (=> b!4689904 d!1490593))

(declare-fun bs!1086835 () Bool)

(declare-fun b!4690172 () Bool)

(assert (= bs!1086835 (and b!4690172 d!1490583)))

(declare-fun lambda!207238 () Int)

(assert (=> bs!1086835 (= (= lt!1849668 lt!1850072) (= lambda!207238 lambda!207226))))

(declare-fun bs!1086836 () Bool)

(assert (= bs!1086836 (and b!4690172 b!4690151)))

(assert (=> bs!1086836 (= (= lt!1849668 lt!1850064) (= lambda!207238 lambda!207225))))

(assert (=> bs!1086836 (= lambda!207238 lambda!207224)))

(declare-fun bs!1086837 () Bool)

(assert (= bs!1086837 (and b!4690172 b!4690014)))

(assert (=> bs!1086837 (= lambda!207238 lambda!207187)))

(declare-fun bs!1086838 () Bool)

(assert (= bs!1086838 (and b!4690172 d!1490575)))

(assert (=> bs!1086838 (= (= lt!1849668 lt!1850047) (= lambda!207238 lambda!207219))))

(declare-fun bs!1086839 () Bool)

(assert (= bs!1086839 (and b!4690172 b!4690157)))

(assert (=> bs!1086839 (= lambda!207238 lambda!207227)))

(declare-fun bs!1086840 () Bool)

(assert (= bs!1086840 (and b!4690172 d!1490591)))

(assert (=> bs!1086840 (= (= lt!1849668 lt!1850097) (= lambda!207238 lambda!207234))))

(declare-fun bs!1086841 () Bool)

(assert (= bs!1086841 (and b!4690172 b!4690158)))

(assert (=> bs!1086841 (= (= lt!1849668 lt!1850089) (= lambda!207238 lambda!207229))))

(declare-fun bs!1086842 () Bool)

(assert (= bs!1086842 (and b!4690172 b!4690146)))

(assert (=> bs!1086842 (= lambda!207238 lambda!207217)))

(declare-fun bs!1086844 () Bool)

(assert (= bs!1086844 (and b!4690172 d!1490461)))

(assert (=> bs!1086844 (not (= lambda!207238 lambda!207107))))

(declare-fun bs!1086845 () Bool)

(assert (= bs!1086845 (and b!4690172 b!4690015)))

(assert (=> bs!1086845 (= lambda!207238 lambda!207188)))

(assert (=> bs!1086842 (= (= lt!1849668 lt!1850039) (= lambda!207238 lambda!207218))))

(declare-fun bs!1086848 () Bool)

(assert (= bs!1086848 (and b!4690172 b!4690150)))

(assert (=> bs!1086848 (= lambda!207238 lambda!207223)))

(declare-fun bs!1086850 () Bool)

(assert (= bs!1086850 (and b!4690172 b!4690145)))

(assert (=> bs!1086850 (= lambda!207238 lambda!207215)))

(declare-fun bs!1086852 () Bool)

(assert (= bs!1086852 (and b!4690172 d!1490469)))

(assert (=> bs!1086852 (= (= lt!1849668 lt!1849874) (= lambda!207238 lambda!207190))))

(assert (=> bs!1086841 (= lambda!207238 lambda!207228)))

(declare-fun bs!1086855 () Bool)

(assert (= bs!1086855 (and b!4690172 d!1490457)))

(assert (=> bs!1086855 (not (= lambda!207238 lambda!207106))))

(assert (=> bs!1086845 (= (= lt!1849668 lt!1849866) (= lambda!207238 lambda!207189))))

(assert (=> b!4690172 true))

(declare-fun bs!1086857 () Bool)

(declare-fun b!4690173 () Bool)

(assert (= bs!1086857 (and b!4690173 d!1490583)))

(declare-fun lambda!207240 () Int)

(assert (=> bs!1086857 (= (= lt!1849668 lt!1850072) (= lambda!207240 lambda!207226))))

(declare-fun bs!1086858 () Bool)

(assert (= bs!1086858 (and b!4690173 b!4690151)))

(assert (=> bs!1086858 (= (= lt!1849668 lt!1850064) (= lambda!207240 lambda!207225))))

(assert (=> bs!1086858 (= lambda!207240 lambda!207224)))

(declare-fun bs!1086859 () Bool)

(assert (= bs!1086859 (and b!4690173 b!4690014)))

(assert (=> bs!1086859 (= lambda!207240 lambda!207187)))

(declare-fun bs!1086860 () Bool)

(assert (= bs!1086860 (and b!4690173 d!1490575)))

(assert (=> bs!1086860 (= (= lt!1849668 lt!1850047) (= lambda!207240 lambda!207219))))

(declare-fun bs!1086861 () Bool)

(assert (= bs!1086861 (and b!4690173 b!4690157)))

(assert (=> bs!1086861 (= lambda!207240 lambda!207227)))

(declare-fun bs!1086862 () Bool)

(assert (= bs!1086862 (and b!4690173 b!4690172)))

(assert (=> bs!1086862 (= lambda!207240 lambda!207238)))

(declare-fun bs!1086863 () Bool)

(assert (= bs!1086863 (and b!4690173 d!1490591)))

(assert (=> bs!1086863 (= (= lt!1849668 lt!1850097) (= lambda!207240 lambda!207234))))

(declare-fun bs!1086864 () Bool)

(assert (= bs!1086864 (and b!4690173 b!4690158)))

(assert (=> bs!1086864 (= (= lt!1849668 lt!1850089) (= lambda!207240 lambda!207229))))

(declare-fun bs!1086865 () Bool)

(assert (= bs!1086865 (and b!4690173 b!4690146)))

(assert (=> bs!1086865 (= lambda!207240 lambda!207217)))

(declare-fun bs!1086866 () Bool)

(assert (= bs!1086866 (and b!4690173 d!1490461)))

(assert (=> bs!1086866 (not (= lambda!207240 lambda!207107))))

(declare-fun bs!1086867 () Bool)

(assert (= bs!1086867 (and b!4690173 b!4690015)))

(assert (=> bs!1086867 (= lambda!207240 lambda!207188)))

(assert (=> bs!1086865 (= (= lt!1849668 lt!1850039) (= lambda!207240 lambda!207218))))

(declare-fun bs!1086868 () Bool)

(assert (= bs!1086868 (and b!4690173 b!4690150)))

(assert (=> bs!1086868 (= lambda!207240 lambda!207223)))

(declare-fun bs!1086869 () Bool)

(assert (= bs!1086869 (and b!4690173 b!4690145)))

(assert (=> bs!1086869 (= lambda!207240 lambda!207215)))

(declare-fun bs!1086870 () Bool)

(assert (= bs!1086870 (and b!4690173 d!1490469)))

(assert (=> bs!1086870 (= (= lt!1849668 lt!1849874) (= lambda!207240 lambda!207190))))

(assert (=> bs!1086864 (= lambda!207240 lambda!207228)))

(declare-fun bs!1086871 () Bool)

(assert (= bs!1086871 (and b!4690173 d!1490457)))

(assert (=> bs!1086871 (not (= lambda!207240 lambda!207106))))

(assert (=> bs!1086867 (= (= lt!1849668 lt!1849866) (= lambda!207240 lambda!207189))))

(assert (=> b!4690173 true))

(declare-fun lambda!207241 () Int)

(declare-fun lt!1850127 () ListMap!4961)

(assert (=> bs!1086857 (= (= lt!1850127 lt!1850072) (= lambda!207241 lambda!207226))))

(assert (=> bs!1086858 (= (= lt!1850127 lt!1850064) (= lambda!207241 lambda!207225))))

(assert (=> bs!1086858 (= (= lt!1850127 lt!1849668) (= lambda!207241 lambda!207224))))

(assert (=> b!4690173 (= (= lt!1850127 lt!1849668) (= lambda!207241 lambda!207240))))

(assert (=> bs!1086859 (= (= lt!1850127 lt!1849668) (= lambda!207241 lambda!207187))))

(assert (=> bs!1086860 (= (= lt!1850127 lt!1850047) (= lambda!207241 lambda!207219))))

(assert (=> bs!1086861 (= (= lt!1850127 lt!1849668) (= lambda!207241 lambda!207227))))

(assert (=> bs!1086862 (= (= lt!1850127 lt!1849668) (= lambda!207241 lambda!207238))))

(assert (=> bs!1086863 (= (= lt!1850127 lt!1850097) (= lambda!207241 lambda!207234))))

(assert (=> bs!1086864 (= (= lt!1850127 lt!1850089) (= lambda!207241 lambda!207229))))

(assert (=> bs!1086865 (= (= lt!1850127 lt!1849668) (= lambda!207241 lambda!207217))))

(assert (=> bs!1086866 (not (= lambda!207241 lambda!207107))))

(assert (=> bs!1086867 (= (= lt!1850127 lt!1849668) (= lambda!207241 lambda!207188))))

(assert (=> bs!1086865 (= (= lt!1850127 lt!1850039) (= lambda!207241 lambda!207218))))

(assert (=> bs!1086868 (= (= lt!1850127 lt!1849668) (= lambda!207241 lambda!207223))))

(assert (=> bs!1086869 (= (= lt!1850127 lt!1849668) (= lambda!207241 lambda!207215))))

(assert (=> bs!1086870 (= (= lt!1850127 lt!1849874) (= lambda!207241 lambda!207190))))

(assert (=> bs!1086864 (= (= lt!1850127 lt!1849668) (= lambda!207241 lambda!207228))))

(assert (=> bs!1086871 (not (= lambda!207241 lambda!207106))))

(assert (=> bs!1086867 (= (= lt!1850127 lt!1849866) (= lambda!207241 lambda!207189))))

(assert (=> b!4690173 true))

(declare-fun bs!1086873 () Bool)

(declare-fun d!1490595 () Bool)

(assert (= bs!1086873 (and d!1490595 d!1490583)))

(declare-fun lt!1850135 () ListMap!4961)

(declare-fun lambda!207242 () Int)

(assert (=> bs!1086873 (= (= lt!1850135 lt!1850072) (= lambda!207242 lambda!207226))))

(declare-fun bs!1086874 () Bool)

(assert (= bs!1086874 (and d!1490595 b!4690151)))

(assert (=> bs!1086874 (= (= lt!1850135 lt!1850064) (= lambda!207242 lambda!207225))))

(assert (=> bs!1086874 (= (= lt!1850135 lt!1849668) (= lambda!207242 lambda!207224))))

(declare-fun bs!1086875 () Bool)

(assert (= bs!1086875 (and d!1490595 b!4690173)))

(assert (=> bs!1086875 (= (= lt!1850135 lt!1850127) (= lambda!207242 lambda!207241))))

(assert (=> bs!1086875 (= (= lt!1850135 lt!1849668) (= lambda!207242 lambda!207240))))

(declare-fun bs!1086876 () Bool)

(assert (= bs!1086876 (and d!1490595 b!4690014)))

(assert (=> bs!1086876 (= (= lt!1850135 lt!1849668) (= lambda!207242 lambda!207187))))

(declare-fun bs!1086877 () Bool)

(assert (= bs!1086877 (and d!1490595 d!1490575)))

(assert (=> bs!1086877 (= (= lt!1850135 lt!1850047) (= lambda!207242 lambda!207219))))

(declare-fun bs!1086878 () Bool)

(assert (= bs!1086878 (and d!1490595 b!4690157)))

(assert (=> bs!1086878 (= (= lt!1850135 lt!1849668) (= lambda!207242 lambda!207227))))

(declare-fun bs!1086879 () Bool)

(assert (= bs!1086879 (and d!1490595 b!4690172)))

(assert (=> bs!1086879 (= (= lt!1850135 lt!1849668) (= lambda!207242 lambda!207238))))

(declare-fun bs!1086880 () Bool)

(assert (= bs!1086880 (and d!1490595 d!1490591)))

(assert (=> bs!1086880 (= (= lt!1850135 lt!1850097) (= lambda!207242 lambda!207234))))

(declare-fun bs!1086881 () Bool)

(assert (= bs!1086881 (and d!1490595 b!4690158)))

(assert (=> bs!1086881 (= (= lt!1850135 lt!1850089) (= lambda!207242 lambda!207229))))

(declare-fun bs!1086882 () Bool)

(assert (= bs!1086882 (and d!1490595 b!4690146)))

(assert (=> bs!1086882 (= (= lt!1850135 lt!1849668) (= lambda!207242 lambda!207217))))

(declare-fun bs!1086883 () Bool)

(assert (= bs!1086883 (and d!1490595 d!1490461)))

(assert (=> bs!1086883 (not (= lambda!207242 lambda!207107))))

(declare-fun bs!1086884 () Bool)

(assert (= bs!1086884 (and d!1490595 b!4690015)))

(assert (=> bs!1086884 (= (= lt!1850135 lt!1849668) (= lambda!207242 lambda!207188))))

(assert (=> bs!1086882 (= (= lt!1850135 lt!1850039) (= lambda!207242 lambda!207218))))

(declare-fun bs!1086885 () Bool)

(assert (= bs!1086885 (and d!1490595 b!4690150)))

(assert (=> bs!1086885 (= (= lt!1850135 lt!1849668) (= lambda!207242 lambda!207223))))

(declare-fun bs!1086886 () Bool)

(assert (= bs!1086886 (and d!1490595 b!4690145)))

(assert (=> bs!1086886 (= (= lt!1850135 lt!1849668) (= lambda!207242 lambda!207215))))

(declare-fun bs!1086887 () Bool)

(assert (= bs!1086887 (and d!1490595 d!1490469)))

(assert (=> bs!1086887 (= (= lt!1850135 lt!1849874) (= lambda!207242 lambda!207190))))

(assert (=> bs!1086881 (= (= lt!1850135 lt!1849668) (= lambda!207242 lambda!207228))))

(declare-fun bs!1086888 () Bool)

(assert (= bs!1086888 (and d!1490595 d!1490457)))

(assert (=> bs!1086888 (not (= lambda!207242 lambda!207106))))

(assert (=> bs!1086884 (= (= lt!1850135 lt!1849866) (= lambda!207242 lambda!207189))))

(assert (=> d!1490595 true))

(declare-fun bm!327799 () Bool)

(declare-fun call!327806 () Unit!124025)

(assert (=> bm!327799 (= call!327806 (lemmaContainsAllItsOwnKeys!698 lt!1849668))))

(declare-fun b!4690171 () Bool)

(declare-fun e!2926006 () Bool)

(assert (=> b!4690171 (= e!2926006 (forall!11323 (toList!5598 lt!1849668) lambda!207241))))

(declare-fun e!2926007 () ListMap!4961)

(assert (=> b!4690172 (= e!2926007 lt!1849668)))

(declare-fun lt!1850125 () Unit!124025)

(assert (=> b!4690172 (= lt!1850125 call!327806)))

(declare-fun call!327805 () Bool)

(assert (=> b!4690172 call!327805))

(declare-fun lt!1850123 () Unit!124025)

(assert (=> b!4690172 (= lt!1850123 lt!1850125)))

(declare-fun call!327804 () Bool)

(assert (=> b!4690172 call!327804))

(declare-fun lt!1850137 () Unit!124025)

(declare-fun Unit!124133 () Unit!124025)

(assert (=> b!4690172 (= lt!1850137 Unit!124133)))

(assert (=> b!4690173 (= e!2926007 lt!1850127)))

(declare-fun lt!1850131 () ListMap!4961)

(assert (=> b!4690173 (= lt!1850131 (+!2138 lt!1849668 (h!58654 (Cons!52409 lt!1849663 lt!1849664))))))

(assert (=> b!4690173 (= lt!1850127 (addToMapMapFromBucket!1286 (t!359709 (Cons!52409 lt!1849663 lt!1849664)) (+!2138 lt!1849668 (h!58654 (Cons!52409 lt!1849663 lt!1849664)))))))

(declare-fun lt!1850132 () Unit!124025)

(assert (=> b!4690173 (= lt!1850132 call!327806)))

(assert (=> b!4690173 (forall!11323 (toList!5598 lt!1849668) lambda!207240)))

(declare-fun lt!1850126 () Unit!124025)

(assert (=> b!4690173 (= lt!1850126 lt!1850132)))

(assert (=> b!4690173 (forall!11323 (toList!5598 lt!1850131) lambda!207241)))

(declare-fun lt!1850124 () Unit!124025)

(declare-fun Unit!124134 () Unit!124025)

(assert (=> b!4690173 (= lt!1850124 Unit!124134)))

(assert (=> b!4690173 (forall!11323 (t!359709 (Cons!52409 lt!1849663 lt!1849664)) lambda!207241)))

(declare-fun lt!1850119 () Unit!124025)

(declare-fun Unit!124135 () Unit!124025)

(assert (=> b!4690173 (= lt!1850119 Unit!124135)))

(declare-fun lt!1850120 () Unit!124025)

(declare-fun Unit!124136 () Unit!124025)

(assert (=> b!4690173 (= lt!1850120 Unit!124136)))

(declare-fun lt!1850122 () Unit!124025)

(assert (=> b!4690173 (= lt!1850122 (forallContained!3430 (toList!5598 lt!1850131) lambda!207241 (h!58654 (Cons!52409 lt!1849663 lt!1849664))))))

(assert (=> b!4690173 (contains!15608 lt!1850131 (_1!30199 (h!58654 (Cons!52409 lt!1849663 lt!1849664))))))

(declare-fun lt!1850133 () Unit!124025)

(declare-fun Unit!124137 () Unit!124025)

(assert (=> b!4690173 (= lt!1850133 Unit!124137)))

(assert (=> b!4690173 (contains!15608 lt!1850127 (_1!30199 (h!58654 (Cons!52409 lt!1849663 lt!1849664))))))

(declare-fun lt!1850118 () Unit!124025)

(declare-fun Unit!124138 () Unit!124025)

(assert (=> b!4690173 (= lt!1850118 Unit!124138)))

(assert (=> b!4690173 (forall!11323 (Cons!52409 lt!1849663 lt!1849664) lambda!207241)))

(declare-fun lt!1850129 () Unit!124025)

(declare-fun Unit!124139 () Unit!124025)

(assert (=> b!4690173 (= lt!1850129 Unit!124139)))

(assert (=> b!4690173 (forall!11323 (toList!5598 lt!1850131) lambda!207241)))

(declare-fun lt!1850136 () Unit!124025)

(declare-fun Unit!124140 () Unit!124025)

(assert (=> b!4690173 (= lt!1850136 Unit!124140)))

(declare-fun lt!1850130 () Unit!124025)

(declare-fun Unit!124141 () Unit!124025)

(assert (=> b!4690173 (= lt!1850130 Unit!124141)))

(declare-fun lt!1850134 () Unit!124025)

(assert (=> b!4690173 (= lt!1850134 (addForallContainsKeyThenBeforeAdding!697 lt!1849668 lt!1850127 (_1!30199 (h!58654 (Cons!52409 lt!1849663 lt!1849664))) (_2!30199 (h!58654 (Cons!52409 lt!1849663 lt!1849664)))))))

(assert (=> b!4690173 call!327804))

(declare-fun lt!1850138 () Unit!124025)

(assert (=> b!4690173 (= lt!1850138 lt!1850134)))

(assert (=> b!4690173 (forall!11323 (toList!5598 lt!1849668) lambda!207241)))

(declare-fun lt!1850121 () Unit!124025)

(declare-fun Unit!124142 () Unit!124025)

(assert (=> b!4690173 (= lt!1850121 Unit!124142)))

(declare-fun res!1978252 () Bool)

(assert (=> b!4690173 (= res!1978252 call!327805)))

(assert (=> b!4690173 (=> (not res!1978252) (not e!2926006))))

(assert (=> b!4690173 e!2926006))

(declare-fun lt!1850128 () Unit!124025)

(declare-fun Unit!124143 () Unit!124025)

(assert (=> b!4690173 (= lt!1850128 Unit!124143)))

(declare-fun c!801930 () Bool)

(declare-fun bm!327800 () Bool)

(assert (=> bm!327800 (= call!327805 (forall!11323 (ite c!801930 (toList!5598 lt!1849668) (Cons!52409 lt!1849663 lt!1849664)) (ite c!801930 lambda!207238 lambda!207241)))))

(declare-fun bm!327801 () Bool)

(assert (=> bm!327801 (= call!327804 (forall!11323 (toList!5598 lt!1849668) (ite c!801930 lambda!207238 lambda!207241)))))

(declare-fun e!2926008 () Bool)

(assert (=> d!1490595 e!2926008))

(declare-fun res!1978254 () Bool)

(assert (=> d!1490595 (=> (not res!1978254) (not e!2926008))))

(assert (=> d!1490595 (= res!1978254 (forall!11323 (Cons!52409 lt!1849663 lt!1849664) lambda!207242))))

(assert (=> d!1490595 (= lt!1850135 e!2926007)))

(assert (=> d!1490595 (= c!801930 ((_ is Nil!52409) (Cons!52409 lt!1849663 lt!1849664)))))

(assert (=> d!1490595 (noDuplicateKeys!1854 (Cons!52409 lt!1849663 lt!1849664))))

(assert (=> d!1490595 (= (addToMapMapFromBucket!1286 (Cons!52409 lt!1849663 lt!1849664) lt!1849668) lt!1850135)))

(declare-fun b!4690174 () Bool)

(assert (=> b!4690174 (= e!2926008 (invariantList!1410 (toList!5598 lt!1850135)))))

(declare-fun b!4690175 () Bool)

(declare-fun res!1978253 () Bool)

(assert (=> b!4690175 (=> (not res!1978253) (not e!2926008))))

(assert (=> b!4690175 (= res!1978253 (forall!11323 (toList!5598 lt!1849668) lambda!207242))))

(assert (= (and d!1490595 c!801930) b!4690172))

(assert (= (and d!1490595 (not c!801930)) b!4690173))

(assert (= (and b!4690173 res!1978252) b!4690171))

(assert (= (or b!4690172 b!4690173) bm!327799))

(assert (= (or b!4690172 b!4690173) bm!327800))

(assert (= (or b!4690172 b!4690173) bm!327801))

(assert (= (and d!1490595 res!1978254) b!4690175))

(assert (= (and b!4690175 res!1978253) b!4690174))

(declare-fun m!5592661 () Bool)

(assert (=> b!4690174 m!5592661))

(declare-fun m!5592663 () Bool)

(assert (=> b!4690175 m!5592663))

(declare-fun m!5592665 () Bool)

(assert (=> d!1490595 m!5592665))

(declare-fun m!5592667 () Bool)

(assert (=> d!1490595 m!5592667))

(declare-fun m!5592669 () Bool)

(assert (=> bm!327800 m!5592669))

(declare-fun m!5592671 () Bool)

(assert (=> bm!327801 m!5592671))

(declare-fun m!5592673 () Bool)

(assert (=> b!4690171 m!5592673))

(assert (=> bm!327799 m!5592217))

(declare-fun m!5592675 () Bool)

(assert (=> b!4690173 m!5592675))

(declare-fun m!5592677 () Bool)

(assert (=> b!4690173 m!5592677))

(declare-fun m!5592679 () Bool)

(assert (=> b!4690173 m!5592679))

(declare-fun m!5592681 () Bool)

(assert (=> b!4690173 m!5592681))

(declare-fun m!5592683 () Bool)

(assert (=> b!4690173 m!5592683))

(declare-fun m!5592685 () Bool)

(assert (=> b!4690173 m!5592685))

(assert (=> b!4690173 m!5592673))

(assert (=> b!4690173 m!5592677))

(declare-fun m!5592687 () Bool)

(assert (=> b!4690173 m!5592687))

(declare-fun m!5592689 () Bool)

(assert (=> b!4690173 m!5592689))

(declare-fun m!5592691 () Bool)

(assert (=> b!4690173 m!5592691))

(assert (=> b!4690173 m!5592681))

(declare-fun m!5592693 () Bool)

(assert (=> b!4690173 m!5592693))

(assert (=> b!4689904 d!1490595))

(declare-fun d!1490605 () Bool)

(assert (=> d!1490605 (eq!1013 (addToMapMapFromBucket!1286 (Cons!52409 lt!1849663 lt!1849664) lt!1849668) (+!2138 (addToMapMapFromBucket!1286 lt!1849664 lt!1849668) lt!1849663))))

(declare-fun lt!1850150 () Unit!124025)

(assert (=> d!1490605 (= lt!1850150 (choose!32580 lt!1849663 lt!1849664 lt!1849668))))

(assert (=> d!1490605 (noDuplicateKeys!1854 lt!1849664)))

(assert (=> d!1490605 (= (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!262 lt!1849663 lt!1849664 lt!1849668) lt!1850150)))

(declare-fun bs!1086890 () Bool)

(assert (= bs!1086890 d!1490605))

(assert (=> bs!1086890 m!5591925))

(assert (=> bs!1086890 m!5591925))

(assert (=> bs!1086890 m!5591909))

(declare-fun m!5592695 () Bool)

(assert (=> bs!1086890 m!5592695))

(assert (=> bs!1086890 m!5591907))

(assert (=> bs!1086890 m!5591909))

(assert (=> bs!1086890 m!5591911))

(assert (=> bs!1086890 m!5591907))

(assert (=> bs!1086890 m!5592599))

(assert (=> b!4689904 d!1490605))

(declare-fun b!4690237 () Bool)

(declare-fun e!2926054 () Option!12077)

(declare-fun e!2926050 () Option!12077)

(assert (=> b!4690237 (= e!2926054 e!2926050)))

(declare-fun c!801944 () Bool)

(assert (=> b!4690237 (= c!801944 ((_ is Cons!52409) lt!1849673))))

(declare-fun b!4690238 () Bool)

(declare-fun res!1978292 () Bool)

(declare-fun e!2926053 () Bool)

(assert (=> b!4690238 (=> (not res!1978292) (not e!2926053))))

(declare-fun lt!1850164 () Option!12077)

(declare-fun get!17493 (Option!12077) tuple2!53810)

(assert (=> b!4690238 (= res!1978292 (= (_1!30199 (get!17493 lt!1850164)) key!4653))))

(declare-fun b!4690239 () Bool)

(assert (=> b!4690239 (= e!2926050 (getPair!458 (t!359709 lt!1849673) key!4653))))

(declare-fun b!4690241 () Bool)

(assert (=> b!4690241 (= e!2926050 None!12076)))

(declare-fun b!4690242 () Bool)

(declare-fun e!2926051 () Bool)

(assert (=> b!4690242 (= e!2926051 (not (containsKey!3053 lt!1849673 key!4653)))))

(declare-fun b!4690243 () Bool)

(assert (=> b!4690243 (= e!2926054 (Some!12076 (h!58654 lt!1849673)))))

(declare-fun b!4690244 () Bool)

(assert (=> b!4690244 (= e!2926053 (contains!15613 lt!1849673 (get!17493 lt!1850164)))))

(declare-fun d!1490607 () Bool)

(declare-fun e!2926052 () Bool)

(assert (=> d!1490607 e!2926052))

(declare-fun res!1978293 () Bool)

(assert (=> d!1490607 (=> res!1978293 e!2926052)))

(assert (=> d!1490607 (= res!1978293 e!2926051)))

(declare-fun res!1978290 () Bool)

(assert (=> d!1490607 (=> (not res!1978290) (not e!2926051))))

(declare-fun isEmpty!29094 (Option!12077) Bool)

(assert (=> d!1490607 (= res!1978290 (isEmpty!29094 lt!1850164))))

(assert (=> d!1490607 (= lt!1850164 e!2926054)))

(declare-fun c!801945 () Bool)

(assert (=> d!1490607 (= c!801945 (and ((_ is Cons!52409) lt!1849673) (= (_1!30199 (h!58654 lt!1849673)) key!4653)))))

(assert (=> d!1490607 (noDuplicateKeys!1854 lt!1849673)))

(assert (=> d!1490607 (= (getPair!458 lt!1849673 key!4653) lt!1850164)))

(declare-fun b!4690240 () Bool)

(assert (=> b!4690240 (= e!2926052 e!2926053)))

(declare-fun res!1978291 () Bool)

(assert (=> b!4690240 (=> (not res!1978291) (not e!2926053))))

(assert (=> b!4690240 (= res!1978291 (isDefined!9332 lt!1850164))))

(assert (= (and d!1490607 c!801945) b!4690243))

(assert (= (and d!1490607 (not c!801945)) b!4690237))

(assert (= (and b!4690237 c!801944) b!4690239))

(assert (= (and b!4690237 (not c!801944)) b!4690241))

(assert (= (and d!1490607 res!1978290) b!4690242))

(assert (= (and d!1490607 (not res!1978293)) b!4690240))

(assert (= (and b!4690240 res!1978291) b!4690238))

(assert (= (and b!4690238 res!1978292) b!4690244))

(declare-fun m!5592733 () Bool)

(assert (=> b!4690244 m!5592733))

(assert (=> b!4690244 m!5592733))

(declare-fun m!5592735 () Bool)

(assert (=> b!4690244 m!5592735))

(declare-fun m!5592737 () Bool)

(assert (=> d!1490607 m!5592737))

(declare-fun m!5592739 () Bool)

(assert (=> d!1490607 m!5592739))

(declare-fun m!5592741 () Bool)

(assert (=> b!4690240 m!5592741))

(assert (=> b!4690238 m!5592733))

(declare-fun m!5592743 () Bool)

(assert (=> b!4690239 m!5592743))

(declare-fun m!5592745 () Bool)

(assert (=> b!4690242 m!5592745))

(assert (=> b!4689915 d!1490607))

(declare-fun d!1490617 () Bool)

(declare-datatypes ((Option!12081 0))(
  ( (None!12080) (Some!12080 (v!46499 List!52533)) )
))
(declare-fun get!17494 (Option!12081) List!52533)

(declare-fun getValueByKey!1781 (List!52534 (_ BitVec 64)) Option!12081)

(assert (=> d!1490617 (= (apply!12337 lm!2023 lt!1849666) (get!17494 (getValueByKey!1781 (toList!5597 lm!2023) lt!1849666)))))

(declare-fun bs!1086900 () Bool)

(assert (= bs!1086900 d!1490617))

(declare-fun m!5592753 () Bool)

(assert (=> bs!1086900 m!5592753))

(assert (=> bs!1086900 m!5592753))

(declare-fun m!5592755 () Bool)

(assert (=> bs!1086900 m!5592755))

(assert (=> b!4689915 d!1490617))

(declare-fun d!1490621 () Bool)

(declare-fun lt!1850169 () Bool)

(declare-fun content!9166 (List!52534) (InoxSet tuple2!53812))

(assert (=> d!1490621 (= lt!1850169 (select (content!9166 (toList!5597 lm!2023)) lt!1849674))))

(declare-fun e!2926070 () Bool)

(assert (=> d!1490621 (= lt!1850169 e!2926070)))

(declare-fun res!1978298 () Bool)

(assert (=> d!1490621 (=> (not res!1978298) (not e!2926070))))

(assert (=> d!1490621 (= res!1978298 ((_ is Cons!52410) (toList!5597 lm!2023)))))

(assert (=> d!1490621 (= (contains!15609 (toList!5597 lm!2023) lt!1849674) lt!1850169)))

(declare-fun b!4690266 () Bool)

(declare-fun e!2926069 () Bool)

(assert (=> b!4690266 (= e!2926070 e!2926069)))

(declare-fun res!1978299 () Bool)

(assert (=> b!4690266 (=> res!1978299 e!2926069)))

(assert (=> b!4690266 (= res!1978299 (= (h!58655 (toList!5597 lm!2023)) lt!1849674))))

(declare-fun b!4690267 () Bool)

(assert (=> b!4690267 (= e!2926069 (contains!15609 (t!359710 (toList!5597 lm!2023)) lt!1849674))))

(assert (= (and d!1490621 res!1978298) b!4690266))

(assert (= (and b!4690266 (not res!1978299)) b!4690267))

(declare-fun m!5592765 () Bool)

(assert (=> d!1490621 m!5592765))

(declare-fun m!5592767 () Bool)

(assert (=> d!1490621 m!5592767))

(declare-fun m!5592769 () Bool)

(assert (=> b!4690267 m!5592769))

(assert (=> b!4689915 d!1490621))

(declare-fun bs!1086904 () Bool)

(declare-fun d!1490629 () Bool)

(assert (= bs!1086904 (and d!1490629 d!1490579)))

(declare-fun lambda!207246 () Int)

(assert (=> bs!1086904 (= lambda!207246 lambda!207222)))

(declare-fun bs!1086905 () Bool)

(assert (= bs!1086905 (and d!1490629 d!1490463)))

(assert (=> bs!1086905 (not (= lambda!207246 lambda!207110))))

(declare-fun bs!1086906 () Bool)

(assert (= bs!1086906 (and d!1490629 d!1490515)))

(assert (=> bs!1086906 (= lambda!207246 lambda!207193)))

(declare-fun bs!1086907 () Bool)

(assert (= bs!1086907 (and d!1490629 d!1490573)))

(assert (=> bs!1086907 (= lambda!207246 lambda!207212)))

(declare-fun bs!1086908 () Bool)

(assert (= bs!1086908 (and d!1490629 start!474420)))

(assert (=> bs!1086908 (= lambda!207246 lambda!207103)))

(declare-fun bs!1086909 () Bool)

(assert (= bs!1086909 (and d!1490629 d!1490539)))

(assert (=> bs!1086909 (= lambda!207246 lambda!207208)))

(declare-fun bs!1086910 () Bool)

(assert (= bs!1086910 (and d!1490629 d!1490593)))

(assert (=> bs!1086910 (= lambda!207246 lambda!207237)))

(declare-fun bs!1086911 () Bool)

(assert (= bs!1086911 (and d!1490629 d!1490567)))

(assert (=> bs!1086911 (= lambda!207246 lambda!207211)))

(assert (=> d!1490629 (contains!15610 lm!2023 (hash!4065 hashF!1323 key!4653))))

(declare-fun lt!1850172 () Unit!124025)

(declare-fun choose!32587 (ListLongMap!4127 K!13785 Hashable!6223) Unit!124025)

(assert (=> d!1490629 (= lt!1850172 (choose!32587 lm!2023 key!4653 hashF!1323))))

(assert (=> d!1490629 (forall!11321 (toList!5597 lm!2023) lambda!207246)))

(assert (=> d!1490629 (= (lemmaInGenMapThenLongMapContainsHash!664 lm!2023 key!4653 hashF!1323) lt!1850172)))

(declare-fun bs!1086912 () Bool)

(assert (= bs!1086912 d!1490629))

(assert (=> bs!1086912 m!5591973))

(assert (=> bs!1086912 m!5591973))

(declare-fun m!5592771 () Bool)

(assert (=> bs!1086912 m!5592771))

(declare-fun m!5592773 () Bool)

(assert (=> bs!1086912 m!5592773))

(declare-fun m!5592775 () Bool)

(assert (=> bs!1086912 m!5592775))

(assert (=> b!4689915 d!1490629))

(declare-fun bs!1086913 () Bool)

(declare-fun d!1490631 () Bool)

(assert (= bs!1086913 (and d!1490631 d!1490579)))

(declare-fun lambda!207253 () Int)

(assert (=> bs!1086913 (= lambda!207253 lambda!207222)))

(declare-fun bs!1086914 () Bool)

(assert (= bs!1086914 (and d!1490631 d!1490463)))

(assert (=> bs!1086914 (not (= lambda!207253 lambda!207110))))

(declare-fun bs!1086915 () Bool)

(assert (= bs!1086915 (and d!1490631 d!1490515)))

(assert (=> bs!1086915 (= lambda!207253 lambda!207193)))

(declare-fun bs!1086916 () Bool)

(assert (= bs!1086916 (and d!1490631 d!1490573)))

(assert (=> bs!1086916 (= lambda!207253 lambda!207212)))

(declare-fun bs!1086917 () Bool)

(assert (= bs!1086917 (and d!1490631 start!474420)))

(assert (=> bs!1086917 (= lambda!207253 lambda!207103)))

(declare-fun bs!1086918 () Bool)

(assert (= bs!1086918 (and d!1490631 d!1490629)))

(assert (=> bs!1086918 (= lambda!207253 lambda!207246)))

(declare-fun bs!1086919 () Bool)

(assert (= bs!1086919 (and d!1490631 d!1490539)))

(assert (=> bs!1086919 (= lambda!207253 lambda!207208)))

(declare-fun bs!1086920 () Bool)

(assert (= bs!1086920 (and d!1490631 d!1490593)))

(assert (=> bs!1086920 (= lambda!207253 lambda!207237)))

(declare-fun bs!1086921 () Bool)

(assert (= bs!1086921 (and d!1490631 d!1490567)))

(assert (=> bs!1086921 (= lambda!207253 lambda!207211)))

(declare-fun b!4690276 () Bool)

(declare-fun res!1978311 () Bool)

(declare-fun e!2926076 () Bool)

(assert (=> b!4690276 (=> (not res!1978311) (not e!2926076))))

(assert (=> b!4690276 (= res!1978311 (allKeysSameHashInMap!1768 lm!2023 hashF!1323))))

(declare-fun b!4690277 () Bool)

(declare-fun res!1978310 () Bool)

(assert (=> b!4690277 (=> (not res!1978310) (not e!2926076))))

(assert (=> b!4690277 (= res!1978310 (contains!15608 (extractMap!1880 (toList!5597 lm!2023)) key!4653))))

(assert (=> d!1490631 e!2926076))

(declare-fun res!1978308 () Bool)

(assert (=> d!1490631 (=> (not res!1978308) (not e!2926076))))

(assert (=> d!1490631 (= res!1978308 (forall!11321 (toList!5597 lm!2023) lambda!207253))))

(declare-fun lt!1850189 () Unit!124025)

(declare-fun choose!32588 (ListLongMap!4127 K!13785 Hashable!6223) Unit!124025)

(assert (=> d!1490631 (= lt!1850189 (choose!32588 lm!2023 key!4653 hashF!1323))))

(assert (=> d!1490631 (forall!11321 (toList!5597 lm!2023) lambda!207253)))

(assert (=> d!1490631 (= (lemmaInGenMapThenGetPairDefined!254 lm!2023 key!4653 hashF!1323) lt!1850189)))

(declare-fun e!2926075 () Bool)

(declare-fun lt!1850194 () (_ BitVec 64))

(declare-fun b!4690279 () Bool)

(declare-fun lt!1850192 () List!52533)

(assert (=> b!4690279 (= e!2926075 (= (getValueByKey!1781 (toList!5597 lm!2023) lt!1850194) (Some!12080 lt!1850192)))))

(declare-fun b!4690278 () Bool)

(assert (=> b!4690278 (= e!2926076 (isDefined!9332 (getPair!458 (apply!12337 lm!2023 (hash!4065 hashF!1323 key!4653)) key!4653)))))

(declare-fun lt!1850190 () Unit!124025)

(assert (=> b!4690278 (= lt!1850190 (forallContained!3428 (toList!5597 lm!2023) lambda!207253 (tuple2!53813 (hash!4065 hashF!1323 key!4653) (apply!12337 lm!2023 (hash!4065 hashF!1323 key!4653)))))))

(declare-fun lt!1850195 () Unit!124025)

(declare-fun lt!1850193 () Unit!124025)

(assert (=> b!4690278 (= lt!1850195 lt!1850193)))

(assert (=> b!4690278 (contains!15609 (toList!5597 lm!2023) (tuple2!53813 lt!1850194 lt!1850192))))

(assert (=> b!4690278 (= lt!1850193 (lemmaGetValueImpliesTupleContained!263 lm!2023 lt!1850194 lt!1850192))))

(assert (=> b!4690278 e!2926075))

(declare-fun res!1978309 () Bool)

(assert (=> b!4690278 (=> (not res!1978309) (not e!2926075))))

(assert (=> b!4690278 (= res!1978309 (contains!15610 lm!2023 lt!1850194))))

(assert (=> b!4690278 (= lt!1850192 (apply!12337 lm!2023 (hash!4065 hashF!1323 key!4653)))))

(assert (=> b!4690278 (= lt!1850194 (hash!4065 hashF!1323 key!4653))))

(declare-fun lt!1850196 () Unit!124025)

(declare-fun lt!1850191 () Unit!124025)

(assert (=> b!4690278 (= lt!1850196 lt!1850191)))

(assert (=> b!4690278 (contains!15610 lm!2023 (hash!4065 hashF!1323 key!4653))))

(assert (=> b!4690278 (= lt!1850191 (lemmaInGenMapThenLongMapContainsHash!664 lm!2023 key!4653 hashF!1323))))

(assert (= (and d!1490631 res!1978308) b!4690276))

(assert (= (and b!4690276 res!1978311) b!4690277))

(assert (= (and b!4690277 res!1978310) b!4690278))

(assert (= (and b!4690278 res!1978309) b!4690279))

(assert (=> b!4690276 m!5591969))

(declare-fun m!5592777 () Bool)

(assert (=> b!4690279 m!5592777))

(declare-fun m!5592779 () Bool)

(assert (=> d!1490631 m!5592779))

(declare-fun m!5592781 () Bool)

(assert (=> d!1490631 m!5592781))

(assert (=> d!1490631 m!5592779))

(declare-fun m!5592783 () Bool)

(assert (=> b!4690278 m!5592783))

(declare-fun m!5592785 () Bool)

(assert (=> b!4690278 m!5592785))

(declare-fun m!5592787 () Bool)

(assert (=> b!4690278 m!5592787))

(declare-fun m!5592789 () Bool)

(assert (=> b!4690278 m!5592789))

(assert (=> b!4690278 m!5591973))

(assert (=> b!4690278 m!5592771))

(declare-fun m!5592791 () Bool)

(assert (=> b!4690278 m!5592791))

(assert (=> b!4690278 m!5592787))

(declare-fun m!5592793 () Bool)

(assert (=> b!4690278 m!5592793))

(declare-fun m!5592795 () Bool)

(assert (=> b!4690278 m!5592795))

(assert (=> b!4690278 m!5591973))

(assert (=> b!4690278 m!5592791))

(assert (=> b!4690278 m!5591983))

(assert (=> b!4690278 m!5591973))

(assert (=> b!4690277 m!5591903))

(assert (=> b!4690277 m!5591903))

(declare-fun m!5592797 () Bool)

(assert (=> b!4690277 m!5592797))

(assert (=> b!4689915 d!1490631))

(declare-fun d!1490633 () Bool)

(assert (=> d!1490633 (containsKey!3053 oldBucket!34 key!4653)))

(declare-fun lt!1850199 () Unit!124025)

(declare-fun choose!32589 (List!52533 K!13785 Hashable!6223) Unit!124025)

(assert (=> d!1490633 (= lt!1850199 (choose!32589 oldBucket!34 key!4653 hashF!1323))))

(assert (=> d!1490633 (noDuplicateKeys!1854 oldBucket!34)))

(assert (=> d!1490633 (= (lemmaGetPairDefinedThenContainsKey!206 oldBucket!34 key!4653 hashF!1323) lt!1850199)))

(declare-fun bs!1086922 () Bool)

(assert (= bs!1086922 d!1490633))

(assert (=> bs!1086922 m!5591995))

(declare-fun m!5592799 () Bool)

(assert (=> bs!1086922 m!5592799))

(assert (=> bs!1086922 m!5591947))

(assert (=> b!4689915 d!1490633))

(declare-fun d!1490635 () Bool)

(declare-fun dynLambda!21713 (Int tuple2!53812) Bool)

(assert (=> d!1490635 (dynLambda!21713 lambda!207103 lt!1849674)))

(declare-fun lt!1850202 () Unit!124025)

(declare-fun choose!32590 (List!52534 Int tuple2!53812) Unit!124025)

(assert (=> d!1490635 (= lt!1850202 (choose!32590 (toList!5597 lm!2023) lambda!207103 lt!1849674))))

(declare-fun e!2926079 () Bool)

(assert (=> d!1490635 e!2926079))

(declare-fun res!1978314 () Bool)

(assert (=> d!1490635 (=> (not res!1978314) (not e!2926079))))

(assert (=> d!1490635 (= res!1978314 (forall!11321 (toList!5597 lm!2023) lambda!207103))))

(assert (=> d!1490635 (= (forallContained!3428 (toList!5597 lm!2023) lambda!207103 lt!1849674) lt!1850202)))

(declare-fun b!4690282 () Bool)

(assert (=> b!4690282 (= e!2926079 (contains!15609 (toList!5597 lm!2023) lt!1849674))))

(assert (= (and d!1490635 res!1978314) b!4690282))

(declare-fun b_lambda!176997 () Bool)

(assert (=> (not b_lambda!176997) (not d!1490635)))

(declare-fun m!5592801 () Bool)

(assert (=> d!1490635 m!5592801))

(declare-fun m!5592803 () Bool)

(assert (=> d!1490635 m!5592803))

(assert (=> d!1490635 m!5591949))

(assert (=> b!4690282 m!5591999))

(assert (=> b!4689915 d!1490635))

(declare-fun d!1490637 () Bool)

(declare-fun res!1978319 () Bool)

(declare-fun e!2926084 () Bool)

(assert (=> d!1490637 (=> res!1978319 e!2926084)))

(assert (=> d!1490637 (= res!1978319 (and ((_ is Cons!52409) (t!359709 oldBucket!34)) (= (_1!30199 (h!58654 (t!359709 oldBucket!34))) key!4653)))))

(assert (=> d!1490637 (= (containsKey!3053 (t!359709 oldBucket!34) key!4653) e!2926084)))

(declare-fun b!4690287 () Bool)

(declare-fun e!2926085 () Bool)

(assert (=> b!4690287 (= e!2926084 e!2926085)))

(declare-fun res!1978320 () Bool)

(assert (=> b!4690287 (=> (not res!1978320) (not e!2926085))))

(assert (=> b!4690287 (= res!1978320 ((_ is Cons!52409) (t!359709 oldBucket!34)))))

(declare-fun b!4690288 () Bool)

(assert (=> b!4690288 (= e!2926085 (containsKey!3053 (t!359709 (t!359709 oldBucket!34)) key!4653))))

(assert (= (and d!1490637 (not res!1978319)) b!4690287))

(assert (= (and b!4690287 res!1978320) b!4690288))

(declare-fun m!5592805 () Bool)

(assert (=> b!4690288 m!5592805))

(assert (=> b!4689915 d!1490637))

(declare-fun d!1490639 () Bool)

(assert (=> d!1490639 (contains!15609 (toList!5597 lm!2023) (tuple2!53813 lt!1849666 lt!1849673))))

(declare-fun lt!1850205 () Unit!124025)

(declare-fun choose!32591 (ListLongMap!4127 (_ BitVec 64) List!52533) Unit!124025)

(assert (=> d!1490639 (= lt!1850205 (choose!32591 lm!2023 lt!1849666 lt!1849673))))

(assert (=> d!1490639 (contains!15610 lm!2023 lt!1849666)))

(assert (=> d!1490639 (= (lemmaGetValueImpliesTupleContained!263 lm!2023 lt!1849666 lt!1849673) lt!1850205)))

(declare-fun bs!1086923 () Bool)

(assert (= bs!1086923 d!1490639))

(declare-fun m!5592807 () Bool)

(assert (=> bs!1086923 m!5592807))

(declare-fun m!5592809 () Bool)

(assert (=> bs!1086923 m!5592809))

(assert (=> bs!1086923 m!5591981))

(assert (=> b!4689915 d!1490639))

(declare-fun d!1490641 () Bool)

(declare-fun res!1978321 () Bool)

(declare-fun e!2926086 () Bool)

(assert (=> d!1490641 (=> res!1978321 e!2926086)))

(assert (=> d!1490641 (= res!1978321 (and ((_ is Cons!52409) oldBucket!34) (= (_1!30199 (h!58654 oldBucket!34)) key!4653)))))

(assert (=> d!1490641 (= (containsKey!3053 oldBucket!34 key!4653) e!2926086)))

(declare-fun b!4690290 () Bool)

(declare-fun e!2926087 () Bool)

(assert (=> b!4690290 (= e!2926086 e!2926087)))

(declare-fun res!1978322 () Bool)

(assert (=> b!4690290 (=> (not res!1978322) (not e!2926087))))

(assert (=> b!4690290 (= res!1978322 ((_ is Cons!52409) oldBucket!34))))

(declare-fun b!4690291 () Bool)

(assert (=> b!4690291 (= e!2926087 (containsKey!3053 (t!359709 oldBucket!34) key!4653))))

(assert (= (and d!1490641 (not res!1978321)) b!4690290))

(assert (= (and b!4690290 res!1978322) b!4690291))

(assert (=> b!4690291 m!5591989))

(assert (=> b!4689915 d!1490641))

(declare-fun d!1490643 () Bool)

(assert (=> d!1490643 (= (isDefined!9332 (getPair!458 lt!1849673 key!4653)) (not (isEmpty!29094 (getPair!458 lt!1849673 key!4653))))))

(declare-fun bs!1086924 () Bool)

(assert (= bs!1086924 d!1490643))

(assert (=> bs!1086924 m!5591979))

(declare-fun m!5592811 () Bool)

(assert (=> bs!1086924 m!5592811))

(assert (=> b!4689915 d!1490643))

(declare-fun d!1490645 () Bool)

(declare-fun e!2926092 () Bool)

(assert (=> d!1490645 e!2926092))

(declare-fun res!1978325 () Bool)

(assert (=> d!1490645 (=> res!1978325 e!2926092)))

(declare-fun lt!1850217 () Bool)

(assert (=> d!1490645 (= res!1978325 (not lt!1850217))))

(declare-fun lt!1850216 () Bool)

(assert (=> d!1490645 (= lt!1850217 lt!1850216)))

(declare-fun lt!1850214 () Unit!124025)

(declare-fun e!2926093 () Unit!124025)

(assert (=> d!1490645 (= lt!1850214 e!2926093)))

(declare-fun c!801951 () Bool)

(assert (=> d!1490645 (= c!801951 lt!1850216)))

(declare-fun containsKey!3057 (List!52534 (_ BitVec 64)) Bool)

(assert (=> d!1490645 (= lt!1850216 (containsKey!3057 (toList!5597 lm!2023) lt!1849666))))

(assert (=> d!1490645 (= (contains!15610 lm!2023 lt!1849666) lt!1850217)))

(declare-fun b!4690298 () Bool)

(declare-fun lt!1850215 () Unit!124025)

(assert (=> b!4690298 (= e!2926093 lt!1850215)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1673 (List!52534 (_ BitVec 64)) Unit!124025)

(assert (=> b!4690298 (= lt!1850215 (lemmaContainsKeyImpliesGetValueByKeyDefined!1673 (toList!5597 lm!2023) lt!1849666))))

(declare-fun isDefined!9336 (Option!12081) Bool)

(assert (=> b!4690298 (isDefined!9336 (getValueByKey!1781 (toList!5597 lm!2023) lt!1849666))))

(declare-fun b!4690299 () Bool)

(declare-fun Unit!124146 () Unit!124025)

(assert (=> b!4690299 (= e!2926093 Unit!124146)))

(declare-fun b!4690300 () Bool)

(assert (=> b!4690300 (= e!2926092 (isDefined!9336 (getValueByKey!1781 (toList!5597 lm!2023) lt!1849666)))))

(assert (= (and d!1490645 c!801951) b!4690298))

(assert (= (and d!1490645 (not c!801951)) b!4690299))

(assert (= (and d!1490645 (not res!1978325)) b!4690300))

(declare-fun m!5592813 () Bool)

(assert (=> d!1490645 m!5592813))

(declare-fun m!5592815 () Bool)

(assert (=> b!4690298 m!5592815))

(assert (=> b!4690298 m!5592753))

(assert (=> b!4690298 m!5592753))

(declare-fun m!5592817 () Bool)

(assert (=> b!4690298 m!5592817))

(assert (=> b!4690300 m!5592753))

(assert (=> b!4690300 m!5592753))

(assert (=> b!4690300 m!5592817))

(assert (=> b!4689915 d!1490645))

(declare-fun b!4690310 () Bool)

(declare-fun e!2926099 () List!52533)

(declare-fun e!2926098 () List!52533)

(assert (=> b!4690310 (= e!2926099 e!2926098)))

(declare-fun c!801956 () Bool)

(assert (=> b!4690310 (= c!801956 ((_ is Cons!52409) oldBucket!34))))

(declare-fun b!4690312 () Bool)

(assert (=> b!4690312 (= e!2926098 Nil!52409)))

(declare-fun d!1490647 () Bool)

(declare-fun lt!1850220 () List!52533)

(assert (=> d!1490647 (not (containsKey!3053 lt!1850220 key!4653))))

(assert (=> d!1490647 (= lt!1850220 e!2926099)))

(declare-fun c!801957 () Bool)

(assert (=> d!1490647 (= c!801957 (and ((_ is Cons!52409) oldBucket!34) (= (_1!30199 (h!58654 oldBucket!34)) key!4653)))))

(assert (=> d!1490647 (noDuplicateKeys!1854 oldBucket!34)))

(assert (=> d!1490647 (= (removePairForKey!1449 oldBucket!34 key!4653) lt!1850220)))

(declare-fun b!4690309 () Bool)

(assert (=> b!4690309 (= e!2926099 (t!359709 oldBucket!34))))

(declare-fun b!4690311 () Bool)

(assert (=> b!4690311 (= e!2926098 (Cons!52409 (h!58654 oldBucket!34) (removePairForKey!1449 (t!359709 oldBucket!34) key!4653)))))

(assert (= (and d!1490647 c!801957) b!4690309))

(assert (= (and d!1490647 (not c!801957)) b!4690310))

(assert (= (and b!4690310 c!801956) b!4690311))

(assert (= (and b!4690310 (not c!801956)) b!4690312))

(declare-fun m!5592819 () Bool)

(assert (=> d!1490647 m!5592819))

(assert (=> d!1490647 m!5591947))

(assert (=> b!4690311 m!5591965))

(assert (=> b!4689906 d!1490647))

(declare-fun b!4690314 () Bool)

(declare-fun e!2926101 () List!52533)

(declare-fun e!2926100 () List!52533)

(assert (=> b!4690314 (= e!2926101 e!2926100)))

(declare-fun c!801958 () Bool)

(assert (=> b!4690314 (= c!801958 ((_ is Cons!52409) (t!359709 oldBucket!34)))))

(declare-fun b!4690316 () Bool)

(assert (=> b!4690316 (= e!2926100 Nil!52409)))

(declare-fun d!1490649 () Bool)

(declare-fun lt!1850221 () List!52533)

(assert (=> d!1490649 (not (containsKey!3053 lt!1850221 key!4653))))

(assert (=> d!1490649 (= lt!1850221 e!2926101)))

(declare-fun c!801959 () Bool)

(assert (=> d!1490649 (= c!801959 (and ((_ is Cons!52409) (t!359709 oldBucket!34)) (= (_1!30199 (h!58654 (t!359709 oldBucket!34))) key!4653)))))

(assert (=> d!1490649 (noDuplicateKeys!1854 (t!359709 oldBucket!34))))

(assert (=> d!1490649 (= (removePairForKey!1449 (t!359709 oldBucket!34) key!4653) lt!1850221)))

(declare-fun b!4690313 () Bool)

(assert (=> b!4690313 (= e!2926101 (t!359709 (t!359709 oldBucket!34)))))

(declare-fun b!4690315 () Bool)

(assert (=> b!4690315 (= e!2926100 (Cons!52409 (h!58654 (t!359709 oldBucket!34)) (removePairForKey!1449 (t!359709 (t!359709 oldBucket!34)) key!4653)))))

(assert (= (and d!1490649 c!801959) b!4690313))

(assert (= (and d!1490649 (not c!801959)) b!4690314))

(assert (= (and b!4690314 c!801958) b!4690315))

(assert (= (and b!4690314 (not c!801958)) b!4690316))

(declare-fun m!5592821 () Bool)

(assert (=> d!1490649 m!5592821))

(assert (=> d!1490649 m!5592013))

(declare-fun m!5592823 () Bool)

(assert (=> b!4690315 m!5592823))

(assert (=> b!4689908 d!1490649))

(declare-fun d!1490651 () Bool)

(declare-fun res!1978330 () Bool)

(declare-fun e!2926106 () Bool)

(assert (=> d!1490651 (=> res!1978330 e!2926106)))

(assert (=> d!1490651 (= res!1978330 ((_ is Nil!52410) (toList!5597 lm!2023)))))

(assert (=> d!1490651 (= (forall!11321 (toList!5597 lm!2023) lambda!207103) e!2926106)))

(declare-fun b!4690321 () Bool)

(declare-fun e!2926107 () Bool)

(assert (=> b!4690321 (= e!2926106 e!2926107)))

(declare-fun res!1978331 () Bool)

(assert (=> b!4690321 (=> (not res!1978331) (not e!2926107))))

(assert (=> b!4690321 (= res!1978331 (dynLambda!21713 lambda!207103 (h!58655 (toList!5597 lm!2023))))))

(declare-fun b!4690322 () Bool)

(assert (=> b!4690322 (= e!2926107 (forall!11321 (t!359710 (toList!5597 lm!2023)) lambda!207103))))

(assert (= (and d!1490651 (not res!1978330)) b!4690321))

(assert (= (and b!4690321 res!1978331) b!4690322))

(declare-fun b_lambda!176999 () Bool)

(assert (=> (not b_lambda!176999) (not b!4690321)))

(declare-fun m!5592825 () Bool)

(assert (=> b!4690321 m!5592825))

(declare-fun m!5592827 () Bool)

(assert (=> b!4690322 m!5592827))

(assert (=> start!474420 d!1490651))

(declare-fun d!1490653 () Bool)

(declare-fun isStrictlySorted!650 (List!52534) Bool)

(assert (=> d!1490653 (= (inv!67659 lm!2023) (isStrictlySorted!650 (toList!5597 lm!2023)))))

(declare-fun bs!1086925 () Bool)

(assert (= bs!1086925 d!1490653))

(declare-fun m!5592829 () Bool)

(assert (=> bs!1086925 m!5592829))

(assert (=> start!474420 d!1490653))

(declare-fun b!4690324 () Bool)

(declare-fun e!2926109 () List!52533)

(declare-fun e!2926108 () List!52533)

(assert (=> b!4690324 (= e!2926109 e!2926108)))

(declare-fun c!801960 () Bool)

(assert (=> b!4690324 (= c!801960 ((_ is Cons!52409) lt!1849669))))

(declare-fun b!4690326 () Bool)

(assert (=> b!4690326 (= e!2926108 Nil!52409)))

(declare-fun d!1490655 () Bool)

(declare-fun lt!1850222 () List!52533)

(assert (=> d!1490655 (not (containsKey!3053 lt!1850222 key!4653))))

(assert (=> d!1490655 (= lt!1850222 e!2926109)))

(declare-fun c!801961 () Bool)

(assert (=> d!1490655 (= c!801961 (and ((_ is Cons!52409) lt!1849669) (= (_1!30199 (h!58654 lt!1849669)) key!4653)))))

(assert (=> d!1490655 (noDuplicateKeys!1854 lt!1849669)))

(assert (=> d!1490655 (= (removePairForKey!1449 lt!1849669 key!4653) lt!1850222)))

(declare-fun b!4690323 () Bool)

(assert (=> b!4690323 (= e!2926109 (t!359709 lt!1849669))))

(declare-fun b!4690325 () Bool)

(assert (=> b!4690325 (= e!2926108 (Cons!52409 (h!58654 lt!1849669) (removePairForKey!1449 (t!359709 lt!1849669) key!4653)))))

(assert (= (and d!1490655 c!801961) b!4690323))

(assert (= (and d!1490655 (not c!801961)) b!4690324))

(assert (= (and b!4690324 c!801960) b!4690325))

(assert (= (and b!4690324 (not c!801960)) b!4690326))

(declare-fun m!5592831 () Bool)

(assert (=> d!1490655 m!5592831))

(assert (=> d!1490655 m!5592451))

(declare-fun m!5592833 () Bool)

(assert (=> b!4690325 m!5592833))

(assert (=> b!4689898 d!1490655))

(declare-fun d!1490657 () Bool)

(assert (=> d!1490657 (= (tail!8590 newBucket!218) (t!359709 newBucket!218))))

(assert (=> b!4689898 d!1490657))

(declare-fun d!1490659 () Bool)

(assert (=> d!1490659 (= (tail!8590 oldBucket!34) (t!359709 oldBucket!34))))

(assert (=> b!4689898 d!1490659))

(declare-fun b!4690331 () Bool)

(declare-fun tp!1345930 () Bool)

(declare-fun e!2926112 () Bool)

(assert (=> b!4690331 (= e!2926112 (and tp_is_empty!30709 tp_is_empty!30711 tp!1345930))))

(assert (=> b!4689905 (= tp!1345915 e!2926112)))

(assert (= (and b!4689905 ((_ is Cons!52409) (t!359709 oldBucket!34))) b!4690331))

(declare-fun b!4690336 () Bool)

(declare-fun e!2926115 () Bool)

(declare-fun tp!1345935 () Bool)

(declare-fun tp!1345936 () Bool)

(assert (=> b!4690336 (= e!2926115 (and tp!1345935 tp!1345936))))

(assert (=> b!4689907 (= tp!1345917 e!2926115)))

(assert (= (and b!4689907 ((_ is Cons!52410) (toList!5597 lm!2023))) b!4690336))

(declare-fun e!2926116 () Bool)

(declare-fun b!4690337 () Bool)

(declare-fun tp!1345937 () Bool)

(assert (=> b!4690337 (= e!2926116 (and tp_is_empty!30709 tp_is_empty!30711 tp!1345937))))

(assert (=> b!4689909 (= tp!1345916 e!2926116)))

(assert (= (and b!4689909 ((_ is Cons!52409) (t!359709 newBucket!218))) b!4690337))

(declare-fun b_lambda!177001 () Bool)

(assert (= b_lambda!176999 (or start!474420 b_lambda!177001)))

(declare-fun bs!1086926 () Bool)

(declare-fun d!1490661 () Bool)

(assert (= bs!1086926 (and d!1490661 start!474420)))

(assert (=> bs!1086926 (= (dynLambda!21713 lambda!207103 (h!58655 (toList!5597 lm!2023))) (noDuplicateKeys!1854 (_2!30200 (h!58655 (toList!5597 lm!2023)))))))

(assert (=> bs!1086926 m!5592209))

(assert (=> b!4690321 d!1490661))

(declare-fun b_lambda!177003 () Bool)

(assert (= b_lambda!176997 (or start!474420 b_lambda!177003)))

(declare-fun bs!1086927 () Bool)

(declare-fun d!1490663 () Bool)

(assert (= bs!1086927 (and d!1490663 start!474420)))

(assert (=> bs!1086927 (= (dynLambda!21713 lambda!207103 lt!1849674) (noDuplicateKeys!1854 (_2!30200 lt!1849674)))))

(declare-fun m!5592835 () Bool)

(assert (=> bs!1086927 m!5592835))

(assert (=> d!1490635 d!1490663))

(check-sat (not b!4690276) (not b!4690159) (not b!4690279) (not b_lambda!177001) (not b!4690174) (not d!1490575) (not bm!327795) (not b!4690097) (not b!4690282) (not b!4690267) (not b!4690013) (not b!4690173) (not b!4690099) (not b!4690277) (not d!1490647) (not b!4690015) (not b!4690171) (not d!1490649) (not d!1490539) (not b!4690238) (not d!1490551) (not b!4690058) (not d!1490567) (not d!1490617) (not bm!327789) (not b_lambda!177003) (not d!1490525) (not b!4690148) (not d!1490589) (not d!1490643) (not d!1490631) (not d!1490621) (not bm!327794) (not bm!327798) (not b!4689925) (not d!1490555) (not b!4690151) (not b!4689924) (not b!4690141) tp_is_empty!30711 (not b!4690336) (not b!4690095) (not b!4690315) (not d!1490587) (not b!4690288) (not b!4690137) (not b!4690149) (not bm!327800) (not bm!327775) (not bm!327801) (not d!1490581) (not d!1490457) (not d!1490595) (not b!4690240) (not b!4690175) (not b!4690239) (not d!1490633) (not b!4690136) (not b!4690092) (not d!1490573) (not bm!327774) (not d!1490461) (not bm!327790) (not d!1490557) (not b!4690131) (not d!1490593) (not b!4690017) (not d!1490591) (not b!4690298) (not b!4689929) (not b!4690134) (not b!4690331) (not bm!327776) (not b!4690244) (not d!1490463) (not d!1490571) (not d!1490579) (not d!1490605) (not bm!327793) (not d!1490655) (not b!4690147) (not b!4690139) (not d!1490515) (not d!1490469) (not d!1490653) (not b!4690325) (not b!4690278) (not b!4690016) (not d!1490527) (not b!4690100) (not b!4690322) (not b!4690146) (not b!4690111) (not d!1490635) (not b!4690108) (not bm!327797) (not b!4690337) (not b!4690158) (not bm!327788) (not bs!1086926) (not b!4689928) (not b!4690144) (not b!4690152) (not b!4690142) (not b!4690153) (not b!4690109) (not b!4690169) (not d!1490583) (not b!4690156) (not bs!1086927) (not b!4690096) (not d!1490607) (not d!1490629) (not b!4690300) (not b!4690291) (not b!4690154) tp_is_empty!30709 (not bm!327791) (not d!1490639) (not b!4690091) (not d!1490529) (not b!4690110) (not d!1490541) (not b!4690311) (not bm!327796) (not b!4690155) (not d!1490645) (not b!4690094) (not bm!327792) (not b!4690242) (not b!4690160) (not bm!327799) (not b!4690133) (not b!4690138))
(check-sat)
