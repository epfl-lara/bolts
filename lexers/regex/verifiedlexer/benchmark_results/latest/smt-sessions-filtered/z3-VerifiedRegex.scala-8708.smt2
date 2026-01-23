; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!464116 () Bool)

(assert start!464116)

(declare-fun b!4627962 () Bool)

(declare-fun res!1941169 () Bool)

(declare-fun e!2886916 () Bool)

(assert (=> b!4627962 (=> res!1941169 e!2886916)))

(declare-datatypes ((K!12945 0))(
  ( (K!12946 (val!18627 Int)) )
))
(declare-datatypes ((V!13191 0))(
  ( (V!13192 (val!18628 Int)) )
))
(declare-datatypes ((tuple2!52518 0))(
  ( (tuple2!52519 (_1!29553 K!12945) (_2!29553 V!13191)) )
))
(declare-datatypes ((List!51692 0))(
  ( (Nil!51568) (Cons!51568 (h!57628 tuple2!52518) (t!358734 List!51692)) )
))
(declare-fun oldBucket!40 () List!51692)

(declare-fun key!4968 () K!12945)

(declare-fun lt!1786873 () List!51692)

(declare-fun removePairForKey!1141 (List!51692 K!12945) List!51692)

(assert (=> b!4627962 (= res!1941169 (not (= (removePairForKey!1141 (t!358734 oldBucket!40) key!4968) lt!1786873)))))

(declare-fun b!4627963 () Bool)

(declare-fun e!2886920 () Bool)

(declare-fun e!2886915 () Bool)

(assert (=> b!4627963 (= e!2886920 e!2886915)))

(declare-fun res!1941158 () Bool)

(assert (=> b!4627963 (=> res!1941158 e!2886915)))

(declare-fun lt!1786872 () tuple2!52518)

(declare-datatypes ((ListMap!4305 0))(
  ( (ListMap!4306 (toList!5001 List!51692)) )
))
(declare-fun lt!1786870 () ListMap!4305)

(declare-fun lt!1786860 () ListMap!4305)

(declare-fun eq!833 (ListMap!4305 ListMap!4305) Bool)

(declare-fun +!1884 (ListMap!4305 tuple2!52518) ListMap!4305)

(assert (=> b!4627963 (= res!1941158 (not (eq!833 lt!1786870 (+!1884 lt!1786860 lt!1786872))))))

(declare-fun hash!414 () (_ BitVec 64))

(declare-datatypes ((tuple2!52520 0))(
  ( (tuple2!52521 (_1!29554 (_ BitVec 64)) (_2!29554 List!51692)) )
))
(declare-datatypes ((List!51693 0))(
  ( (Nil!51569) (Cons!51569 (h!57629 tuple2!52520) (t!358735 List!51693)) )
))
(declare-fun extractMap!1574 (List!51693) ListMap!4305)

(assert (=> b!4627963 (= lt!1786860 (extractMap!1574 (Cons!51569 (tuple2!52521 hash!414 lt!1786873) Nil!51569)))))

(declare-fun newBucket!224 () List!51692)

(assert (=> b!4627963 (= lt!1786870 (extractMap!1574 (Cons!51569 (tuple2!52521 hash!414 newBucket!224) Nil!51569)))))

(declare-fun b!4627964 () Bool)

(declare-fun e!2886910 () Bool)

(assert (=> b!4627964 (= e!2886915 e!2886910)))

(declare-fun res!1941160 () Bool)

(assert (=> b!4627964 (=> res!1941160 e!2886910)))

(declare-fun lt!1786867 () ListMap!4305)

(declare-fun lt!1786883 () ListMap!4305)

(assert (=> b!4627964 (= res!1941160 (not (= lt!1786883 (+!1884 lt!1786867 (h!57628 oldBucket!40)))))))

(declare-fun lt!1786877 () ListMap!4305)

(declare-fun -!558 (ListMap!4305 K!12945) ListMap!4305)

(assert (=> b!4627964 (= lt!1786883 (-!558 lt!1786877 key!4968))))

(declare-fun lt!1786880 () ListMap!4305)

(assert (=> b!4627964 (= lt!1786877 (+!1884 lt!1786880 (h!57628 oldBucket!40)))))

(assert (=> b!4627964 (= (-!558 (+!1884 lt!1786880 (h!57628 oldBucket!40)) key!4968) (+!1884 lt!1786867 (h!57628 oldBucket!40)))))

(declare-datatypes ((Unit!112636 0))(
  ( (Unit!112637) )
))
(declare-fun lt!1786875 () Unit!112636)

(declare-fun addRemoveCommutativeForDiffKeys!13 (ListMap!4305 K!12945 V!13191 K!12945) Unit!112636)

(assert (=> b!4627964 (= lt!1786875 (addRemoveCommutativeForDiffKeys!13 lt!1786880 (_1!29553 (h!57628 oldBucket!40)) (_2!29553 (h!57628 oldBucket!40)) key!4968))))

(assert (=> b!4627964 (eq!833 lt!1786860 lt!1786867)))

(assert (=> b!4627964 (= lt!1786867 (-!558 lt!1786880 key!4968))))

(declare-datatypes ((Hashable!5915 0))(
  ( (HashableExt!5914 (__x!31618 Int)) )
))
(declare-fun hashF!1389 () Hashable!5915)

(declare-fun lt!1786882 () Unit!112636)

(declare-fun lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMapOneHash!120 ((_ BitVec 64) List!51692 List!51692 K!12945 Hashable!5915) Unit!112636)

(assert (=> b!4627964 (= lt!1786882 (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMapOneHash!120 hash!414 (t!358734 oldBucket!40) lt!1786873 key!4968 hashF!1389))))

(declare-fun b!4627965 () Bool)

(assert (=> b!4627965 (= e!2886916 e!2886920)))

(declare-fun res!1941161 () Bool)

(assert (=> b!4627965 (=> res!1941161 e!2886920)))

(declare-fun lt!1786871 () List!51692)

(declare-fun lt!1786878 () ListMap!4305)

(assert (=> b!4627965 (= res!1941161 (not (eq!833 lt!1786878 (+!1884 (extractMap!1574 (Cons!51569 (tuple2!52521 hash!414 lt!1786871) Nil!51569)) (h!57628 oldBucket!40)))))))

(declare-fun addToMapMapFromBucket!979 (List!51692 ListMap!4305) ListMap!4305)

(assert (=> b!4627965 (eq!833 (addToMapMapFromBucket!979 (Cons!51568 lt!1786872 lt!1786873) (ListMap!4306 Nil!51568)) (+!1884 (addToMapMapFromBucket!979 lt!1786873 (ListMap!4306 Nil!51568)) lt!1786872))))

(declare-fun lt!1786863 () Unit!112636)

(declare-fun lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!84 (tuple2!52518 List!51692 ListMap!4305) Unit!112636)

(assert (=> b!4627965 (= lt!1786863 (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!84 lt!1786872 lt!1786873 (ListMap!4306 Nil!51568)))))

(declare-fun head!9652 (List!51692) tuple2!52518)

(assert (=> b!4627965 (= lt!1786872 (head!9652 newBucket!224))))

(declare-fun lt!1786868 () tuple2!52518)

(assert (=> b!4627965 (eq!833 (addToMapMapFromBucket!979 (Cons!51568 lt!1786868 lt!1786871) (ListMap!4306 Nil!51568)) (+!1884 (addToMapMapFromBucket!979 lt!1786871 (ListMap!4306 Nil!51568)) lt!1786868))))

(declare-fun lt!1786869 () Unit!112636)

(assert (=> b!4627965 (= lt!1786869 (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!84 lt!1786868 lt!1786871 (ListMap!4306 Nil!51568)))))

(assert (=> b!4627965 (= lt!1786868 (head!9652 oldBucket!40))))

(declare-fun contains!14633 (ListMap!4305 K!12945) Bool)

(assert (=> b!4627965 (contains!14633 lt!1786880 key!4968)))

(declare-fun lt!1786874 () List!51693)

(assert (=> b!4627965 (= lt!1786880 (extractMap!1574 lt!1786874))))

(declare-fun lt!1786879 () Unit!112636)

(declare-datatypes ((ListLongMap!3591 0))(
  ( (ListLongMap!3592 (toList!5002 List!51693)) )
))
(declare-fun lemmaListContainsThenExtractedMapContains!336 (ListLongMap!3591 K!12945 Hashable!5915) Unit!112636)

(assert (=> b!4627965 (= lt!1786879 (lemmaListContainsThenExtractedMapContains!336 (ListLongMap!3592 lt!1786874) key!4968 hashF!1389))))

(assert (=> b!4627965 (= lt!1786874 (Cons!51569 (tuple2!52521 hash!414 (t!358734 oldBucket!40)) Nil!51569))))

(declare-fun b!4627966 () Bool)

(declare-fun lambda!192768 () Int)

(declare-fun forall!10842 (List!51693 Int) Bool)

(assert (=> b!4627966 (= e!2886910 (forall!10842 lt!1786874 lambda!192768))))

(assert (=> b!4627966 (eq!833 lt!1786883 (-!558 lt!1786878 key!4968))))

(declare-fun lt!1786857 () Unit!112636)

(declare-fun lemmaRemovePreservesEq!14 (ListMap!4305 ListMap!4305 K!12945) Unit!112636)

(assert (=> b!4627966 (= lt!1786857 (lemmaRemovePreservesEq!14 lt!1786877 lt!1786878 key!4968))))

(declare-fun b!4627968 () Bool)

(declare-fun res!1941162 () Bool)

(declare-fun e!2886918 () Bool)

(assert (=> b!4627968 (=> (not res!1941162) (not e!2886918))))

(declare-fun allKeysSameHash!1372 (List!51692 (_ BitVec 64) Hashable!5915) Bool)

(assert (=> b!4627968 (= res!1941162 (allKeysSameHash!1372 newBucket!224 hash!414 hashF!1389))))

(declare-fun b!4627969 () Bool)

(declare-fun res!1941166 () Bool)

(declare-fun e!2886912 () Bool)

(assert (=> b!4627969 (=> (not res!1941166) (not e!2886912))))

(declare-fun noDuplicateKeys!1518 (List!51692) Bool)

(assert (=> b!4627969 (= res!1941166 (noDuplicateKeys!1518 newBucket!224))))

(declare-fun b!4627970 () Bool)

(declare-fun e!2886914 () Bool)

(assert (=> b!4627970 (= e!2886918 (not e!2886914))))

(declare-fun res!1941165 () Bool)

(assert (=> b!4627970 (=> res!1941165 e!2886914)))

(get-info :version)

(assert (=> b!4627970 (= res!1941165 (or (and ((_ is Cons!51568) oldBucket!40) (= (_1!29553 (h!57628 oldBucket!40)) key!4968)) (not ((_ is Cons!51568) oldBucket!40)) (= (_1!29553 (h!57628 oldBucket!40)) key!4968)))))

(declare-fun e!2886913 () Bool)

(assert (=> b!4627970 e!2886913))

(declare-fun res!1941163 () Bool)

(assert (=> b!4627970 (=> (not res!1941163) (not e!2886913))))

(declare-fun lt!1786866 () ListMap!4305)

(assert (=> b!4627970 (= res!1941163 (= lt!1786878 (addToMapMapFromBucket!979 oldBucket!40 lt!1786866)))))

(assert (=> b!4627970 (= lt!1786866 (extractMap!1574 Nil!51569))))

(assert (=> b!4627970 true))

(declare-fun b!4627971 () Bool)

(declare-fun tp_is_empty!29367 () Bool)

(declare-fun tp_is_empty!29365 () Bool)

(declare-fun tp!1342219 () Bool)

(declare-fun e!2886917 () Bool)

(assert (=> b!4627971 (= e!2886917 (and tp_is_empty!29365 tp_is_empty!29367 tp!1342219))))

(declare-fun b!4627972 () Bool)

(declare-fun e!2886911 () Bool)

(assert (=> b!4627972 (= e!2886911 e!2886916)))

(declare-fun res!1941168 () Bool)

(assert (=> b!4627972 (=> res!1941168 e!2886916)))

(assert (=> b!4627972 (= res!1941168 (not (= (removePairForKey!1141 lt!1786871 key!4968) lt!1786873)))))

(declare-fun tail!8153 (List!51692) List!51692)

(assert (=> b!4627972 (= lt!1786873 (tail!8153 newBucket!224))))

(assert (=> b!4627972 (= lt!1786871 (tail!8153 oldBucket!40))))

(declare-fun b!4627973 () Bool)

(declare-fun res!1941167 () Bool)

(assert (=> b!4627973 (=> (not res!1941167) (not e!2886912))))

(assert (=> b!4627973 (= res!1941167 (= (removePairForKey!1141 oldBucket!40 key!4968) newBucket!224))))

(declare-fun b!4627974 () Bool)

(declare-fun res!1941171 () Bool)

(assert (=> b!4627974 (=> (not res!1941171) (not e!2886912))))

(assert (=> b!4627974 (= res!1941171 (allKeysSameHash!1372 oldBucket!40 hash!414 hashF!1389))))

(declare-fun b!4627967 () Bool)

(assert (=> b!4627967 (= e!2886913 (= lt!1786866 (ListMap!4306 Nil!51568)))))

(declare-fun res!1941172 () Bool)

(assert (=> start!464116 (=> (not res!1941172) (not e!2886912))))

(assert (=> start!464116 (= res!1941172 (noDuplicateKeys!1518 oldBucket!40))))

(assert (=> start!464116 e!2886912))

(assert (=> start!464116 true))

(declare-fun e!2886919 () Bool)

(assert (=> start!464116 e!2886919))

(assert (=> start!464116 tp_is_empty!29365))

(assert (=> start!464116 e!2886917))

(declare-fun b!4627975 () Bool)

(declare-fun e!2886909 () Bool)

(assert (=> b!4627975 (= e!2886912 e!2886909)))

(declare-fun res!1941159 () Bool)

(assert (=> b!4627975 (=> (not res!1941159) (not e!2886909))))

(assert (=> b!4627975 (= res!1941159 (contains!14633 lt!1786878 key!4968))))

(declare-fun lt!1786855 () List!51693)

(assert (=> b!4627975 (= lt!1786878 (extractMap!1574 lt!1786855))))

(assert (=> b!4627975 (= lt!1786855 (Cons!51569 (tuple2!52521 hash!414 oldBucket!40) Nil!51569))))

(declare-fun tp!1342218 () Bool)

(declare-fun b!4627976 () Bool)

(assert (=> b!4627976 (= e!2886919 (and tp_is_empty!29365 tp_is_empty!29367 tp!1342218))))

(declare-fun b!4627977 () Bool)

(assert (=> b!4627977 (= e!2886909 e!2886918)))

(declare-fun res!1941170 () Bool)

(assert (=> b!4627977 (=> (not res!1941170) (not e!2886918))))

(declare-fun lt!1786856 () (_ BitVec 64))

(assert (=> b!4627977 (= res!1941170 (= lt!1786856 hash!414))))

(declare-fun hash!3531 (Hashable!5915 K!12945) (_ BitVec 64))

(assert (=> b!4627977 (= lt!1786856 (hash!3531 hashF!1389 key!4968))))

(declare-fun b!4627978 () Bool)

(assert (=> b!4627978 (= e!2886914 e!2886911)))

(declare-fun res!1941164 () Bool)

(assert (=> b!4627978 (=> res!1941164 e!2886911)))

(declare-fun containsKey!2478 (List!51692 K!12945) Bool)

(assert (=> b!4627978 (= res!1941164 (not (containsKey!2478 (t!358734 oldBucket!40) key!4968)))))

(assert (=> b!4627978 (containsKey!2478 oldBucket!40 key!4968)))

(declare-fun lt!1786865 () Unit!112636)

(declare-fun lemmaGetPairDefinedThenContainsKey!64 (List!51692 K!12945 Hashable!5915) Unit!112636)

(assert (=> b!4627978 (= lt!1786865 (lemmaGetPairDefinedThenContainsKey!64 oldBucket!40 key!4968 hashF!1389))))

(declare-fun lt!1786858 () List!51692)

(declare-datatypes ((Option!11620 0))(
  ( (None!11619) (Some!11619 (v!45765 tuple2!52518)) )
))
(declare-fun isDefined!8885 (Option!11620) Bool)

(declare-fun getPair!310 (List!51692 K!12945) Option!11620)

(assert (=> b!4627978 (isDefined!8885 (getPair!310 lt!1786858 key!4968))))

(declare-fun lt!1786862 () Unit!112636)

(declare-fun lt!1786861 () tuple2!52520)

(declare-fun forallContained!3072 (List!51693 Int tuple2!52520) Unit!112636)

(assert (=> b!4627978 (= lt!1786862 (forallContained!3072 lt!1786855 lambda!192768 lt!1786861))))

(declare-fun contains!14634 (List!51693 tuple2!52520) Bool)

(assert (=> b!4627978 (contains!14634 lt!1786855 lt!1786861)))

(assert (=> b!4627978 (= lt!1786861 (tuple2!52521 lt!1786856 lt!1786858))))

(declare-fun lt!1786876 () ListLongMap!3591)

(declare-fun lt!1786864 () Unit!112636)

(declare-fun lemmaGetValueImpliesTupleContained!115 (ListLongMap!3591 (_ BitVec 64) List!51692) Unit!112636)

(assert (=> b!4627978 (= lt!1786864 (lemmaGetValueImpliesTupleContained!115 lt!1786876 lt!1786856 lt!1786858))))

(declare-fun apply!12183 (ListLongMap!3591 (_ BitVec 64)) List!51692)

(assert (=> b!4627978 (= lt!1786858 (apply!12183 lt!1786876 lt!1786856))))

(declare-fun contains!14635 (ListLongMap!3591 (_ BitVec 64)) Bool)

(assert (=> b!4627978 (contains!14635 lt!1786876 lt!1786856)))

(declare-fun lt!1786881 () Unit!112636)

(declare-fun lemmaInGenMapThenLongMapContainsHash!516 (ListLongMap!3591 K!12945 Hashable!5915) Unit!112636)

(assert (=> b!4627978 (= lt!1786881 (lemmaInGenMapThenLongMapContainsHash!516 lt!1786876 key!4968 hashF!1389))))

(declare-fun lt!1786859 () Unit!112636)

(declare-fun lemmaInGenMapThenGetPairDefined!106 (ListLongMap!3591 K!12945 Hashable!5915) Unit!112636)

(assert (=> b!4627978 (= lt!1786859 (lemmaInGenMapThenGetPairDefined!106 lt!1786876 key!4968 hashF!1389))))

(assert (=> b!4627978 (= lt!1786876 (ListLongMap!3592 lt!1786855))))

(assert (= (and start!464116 res!1941172) b!4627969))

(assert (= (and b!4627969 res!1941166) b!4627973))

(assert (= (and b!4627973 res!1941167) b!4627974))

(assert (= (and b!4627974 res!1941171) b!4627975))

(assert (= (and b!4627975 res!1941159) b!4627977))

(assert (= (and b!4627977 res!1941170) b!4627968))

(assert (= (and b!4627968 res!1941162) b!4627970))

(assert (= (and b!4627970 res!1941163) b!4627967))

(assert (= (and b!4627970 (not res!1941165)) b!4627978))

(assert (= (and b!4627978 (not res!1941164)) b!4627972))

(assert (= (and b!4627972 (not res!1941168)) b!4627962))

(assert (= (and b!4627962 (not res!1941169)) b!4627965))

(assert (= (and b!4627965 (not res!1941161)) b!4627963))

(assert (= (and b!4627963 (not res!1941158)) b!4627964))

(assert (= (and b!4627964 (not res!1941160)) b!4627966))

(assert (= (and start!464116 ((_ is Cons!51568) oldBucket!40)) b!4627976))

(assert (= (and start!464116 ((_ is Cons!51568) newBucket!224)) b!4627971))

(declare-fun m!5472875 () Bool)

(assert (=> b!4627972 m!5472875))

(declare-fun m!5472877 () Bool)

(assert (=> b!4627972 m!5472877))

(declare-fun m!5472879 () Bool)

(assert (=> b!4627972 m!5472879))

(declare-fun m!5472881 () Bool)

(assert (=> b!4627963 m!5472881))

(assert (=> b!4627963 m!5472881))

(declare-fun m!5472883 () Bool)

(assert (=> b!4627963 m!5472883))

(declare-fun m!5472885 () Bool)

(assert (=> b!4627963 m!5472885))

(declare-fun m!5472887 () Bool)

(assert (=> b!4627963 m!5472887))

(declare-fun m!5472889 () Bool)

(assert (=> b!4627969 m!5472889))

(declare-fun m!5472891 () Bool)

(assert (=> b!4627977 m!5472891))

(declare-fun m!5472893 () Bool)

(assert (=> start!464116 m!5472893))

(declare-fun m!5472895 () Bool)

(assert (=> b!4627964 m!5472895))

(declare-fun m!5472897 () Bool)

(assert (=> b!4627964 m!5472897))

(declare-fun m!5472899 () Bool)

(assert (=> b!4627964 m!5472899))

(declare-fun m!5472901 () Bool)

(assert (=> b!4627964 m!5472901))

(declare-fun m!5472903 () Bool)

(assert (=> b!4627964 m!5472903))

(declare-fun m!5472905 () Bool)

(assert (=> b!4627964 m!5472905))

(assert (=> b!4627964 m!5472903))

(declare-fun m!5472907 () Bool)

(assert (=> b!4627964 m!5472907))

(declare-fun m!5472909 () Bool)

(assert (=> b!4627964 m!5472909))

(declare-fun m!5472911 () Bool)

(assert (=> b!4627973 m!5472911))

(declare-fun m!5472913 () Bool)

(assert (=> b!4627975 m!5472913))

(declare-fun m!5472915 () Bool)

(assert (=> b!4627975 m!5472915))

(declare-fun m!5472917 () Bool)

(assert (=> b!4627968 m!5472917))

(declare-fun m!5472919 () Bool)

(assert (=> b!4627974 m!5472919))

(declare-fun m!5472921 () Bool)

(assert (=> b!4627965 m!5472921))

(declare-fun m!5472923 () Bool)

(assert (=> b!4627965 m!5472923))

(declare-fun m!5472925 () Bool)

(assert (=> b!4627965 m!5472925))

(assert (=> b!4627965 m!5472925))

(declare-fun m!5472927 () Bool)

(assert (=> b!4627965 m!5472927))

(declare-fun m!5472929 () Bool)

(assert (=> b!4627965 m!5472929))

(assert (=> b!4627965 m!5472921))

(declare-fun m!5472931 () Bool)

(assert (=> b!4627965 m!5472931))

(declare-fun m!5472933 () Bool)

(assert (=> b!4627965 m!5472933))

(declare-fun m!5472935 () Bool)

(assert (=> b!4627965 m!5472935))

(declare-fun m!5472937 () Bool)

(assert (=> b!4627965 m!5472937))

(declare-fun m!5472939 () Bool)

(assert (=> b!4627965 m!5472939))

(declare-fun m!5472941 () Bool)

(assert (=> b!4627965 m!5472941))

(declare-fun m!5472943 () Bool)

(assert (=> b!4627965 m!5472943))

(assert (=> b!4627965 m!5472927))

(assert (=> b!4627965 m!5472937))

(declare-fun m!5472945 () Bool)

(assert (=> b!4627965 m!5472945))

(declare-fun m!5472947 () Bool)

(assert (=> b!4627965 m!5472947))

(declare-fun m!5472949 () Bool)

(assert (=> b!4627965 m!5472949))

(assert (=> b!4627965 m!5472923))

(assert (=> b!4627965 m!5472945))

(assert (=> b!4627965 m!5472931))

(declare-fun m!5472951 () Bool)

(assert (=> b!4627965 m!5472951))

(declare-fun m!5472953 () Bool)

(assert (=> b!4627965 m!5472953))

(assert (=> b!4627965 m!5472943))

(declare-fun m!5472955 () Bool)

(assert (=> b!4627965 m!5472955))

(declare-fun m!5472957 () Bool)

(assert (=> b!4627970 m!5472957))

(declare-fun m!5472959 () Bool)

(assert (=> b!4627970 m!5472959))

(declare-fun m!5472961 () Bool)

(assert (=> b!4627978 m!5472961))

(declare-fun m!5472963 () Bool)

(assert (=> b!4627978 m!5472963))

(declare-fun m!5472965 () Bool)

(assert (=> b!4627978 m!5472965))

(assert (=> b!4627978 m!5472963))

(declare-fun m!5472967 () Bool)

(assert (=> b!4627978 m!5472967))

(declare-fun m!5472969 () Bool)

(assert (=> b!4627978 m!5472969))

(declare-fun m!5472971 () Bool)

(assert (=> b!4627978 m!5472971))

(declare-fun m!5472973 () Bool)

(assert (=> b!4627978 m!5472973))

(declare-fun m!5472975 () Bool)

(assert (=> b!4627978 m!5472975))

(declare-fun m!5472977 () Bool)

(assert (=> b!4627978 m!5472977))

(declare-fun m!5472979 () Bool)

(assert (=> b!4627978 m!5472979))

(declare-fun m!5472981 () Bool)

(assert (=> b!4627978 m!5472981))

(declare-fun m!5472983 () Bool)

(assert (=> b!4627978 m!5472983))

(declare-fun m!5472985 () Bool)

(assert (=> b!4627966 m!5472985))

(declare-fun m!5472987 () Bool)

(assert (=> b!4627966 m!5472987))

(assert (=> b!4627966 m!5472987))

(declare-fun m!5472989 () Bool)

(assert (=> b!4627966 m!5472989))

(declare-fun m!5472991 () Bool)

(assert (=> b!4627966 m!5472991))

(declare-fun m!5472993 () Bool)

(assert (=> b!4627962 m!5472993))

(check-sat (not b!4627966) (not b!4627970) (not b!4627962) (not b!4627974) (not b!4627978) (not b!4627972) (not b!4627963) tp_is_empty!29367 (not b!4627968) (not b!4627976) (not b!4627971) (not start!464116) tp_is_empty!29365 (not b!4627973) (not b!4627977) (not b!4627964) (not b!4627975) (not b!4627965) (not b!4627969))
(check-sat)
(get-model)

(declare-fun bs!1025149 () Bool)

(declare-fun d!1458051 () Bool)

(assert (= bs!1025149 (and d!1458051 b!4627978)))

(declare-fun lambda!192774 () Int)

(assert (=> bs!1025149 (= lambda!192774 lambda!192768)))

(assert (=> d!1458051 (contains!14635 lt!1786876 (hash!3531 hashF!1389 key!4968))))

(declare-fun lt!1786910 () Unit!112636)

(declare-fun choose!31395 (ListLongMap!3591 K!12945 Hashable!5915) Unit!112636)

(assert (=> d!1458051 (= lt!1786910 (choose!31395 lt!1786876 key!4968 hashF!1389))))

(assert (=> d!1458051 (forall!10842 (toList!5002 lt!1786876) lambda!192774)))

(assert (=> d!1458051 (= (lemmaInGenMapThenLongMapContainsHash!516 lt!1786876 key!4968 hashF!1389) lt!1786910)))

(declare-fun bs!1025150 () Bool)

(assert (= bs!1025150 d!1458051))

(assert (=> bs!1025150 m!5472891))

(assert (=> bs!1025150 m!5472891))

(declare-fun m!5473037 () Bool)

(assert (=> bs!1025150 m!5473037))

(declare-fun m!5473039 () Bool)

(assert (=> bs!1025150 m!5473039))

(declare-fun m!5473041 () Bool)

(assert (=> bs!1025150 m!5473041))

(assert (=> b!4627978 d!1458051))

(declare-fun bs!1025165 () Bool)

(declare-fun d!1458053 () Bool)

(assert (= bs!1025165 (and d!1458053 b!4627978)))

(declare-fun lambda!192795 () Int)

(assert (=> bs!1025165 (= lambda!192795 lambda!192768)))

(declare-fun bs!1025166 () Bool)

(assert (= bs!1025166 (and d!1458053 d!1458051)))

(assert (=> bs!1025166 (= lambda!192795 lambda!192774)))

(declare-fun b!4628109 () Bool)

(declare-fun e!2887004 () Bool)

(assert (=> b!4628109 (= e!2887004 (isDefined!8885 (getPair!310 (apply!12183 lt!1786876 (hash!3531 hashF!1389 key!4968)) key!4968)))))

(declare-fun lt!1787005 () Unit!112636)

(assert (=> b!4628109 (= lt!1787005 (forallContained!3072 (toList!5002 lt!1786876) lambda!192795 (tuple2!52521 (hash!3531 hashF!1389 key!4968) (apply!12183 lt!1786876 (hash!3531 hashF!1389 key!4968)))))))

(declare-fun lt!1787008 () Unit!112636)

(declare-fun lt!1787004 () Unit!112636)

(assert (=> b!4628109 (= lt!1787008 lt!1787004)))

(declare-fun lt!1787007 () (_ BitVec 64))

(declare-fun lt!1787001 () List!51692)

(assert (=> b!4628109 (contains!14634 (toList!5002 lt!1786876) (tuple2!52521 lt!1787007 lt!1787001))))

(assert (=> b!4628109 (= lt!1787004 (lemmaGetValueImpliesTupleContained!115 lt!1786876 lt!1787007 lt!1787001))))

(declare-fun e!2887003 () Bool)

(assert (=> b!4628109 e!2887003))

(declare-fun res!1941247 () Bool)

(assert (=> b!4628109 (=> (not res!1941247) (not e!2887003))))

(assert (=> b!4628109 (= res!1941247 (contains!14635 lt!1786876 lt!1787007))))

(assert (=> b!4628109 (= lt!1787001 (apply!12183 lt!1786876 (hash!3531 hashF!1389 key!4968)))))

(assert (=> b!4628109 (= lt!1787007 (hash!3531 hashF!1389 key!4968))))

(declare-fun lt!1787006 () Unit!112636)

(declare-fun lt!1787003 () Unit!112636)

(assert (=> b!4628109 (= lt!1787006 lt!1787003)))

(assert (=> b!4628109 (contains!14635 lt!1786876 (hash!3531 hashF!1389 key!4968))))

(assert (=> b!4628109 (= lt!1787003 (lemmaInGenMapThenLongMapContainsHash!516 lt!1786876 key!4968 hashF!1389))))

(declare-fun b!4628110 () Bool)

(declare-datatypes ((Option!11623 0))(
  ( (None!11622) (Some!11622 (v!45772 List!51692)) )
))
(declare-fun getValueByKey!1471 (List!51693 (_ BitVec 64)) Option!11623)

(assert (=> b!4628110 (= e!2887003 (= (getValueByKey!1471 (toList!5002 lt!1786876) lt!1787007) (Some!11622 lt!1787001)))))

(declare-fun b!4628107 () Bool)

(declare-fun res!1941248 () Bool)

(assert (=> b!4628107 (=> (not res!1941248) (not e!2887004))))

(declare-fun allKeysSameHashInMap!1540 (ListLongMap!3591 Hashable!5915) Bool)

(assert (=> b!4628107 (= res!1941248 (allKeysSameHashInMap!1540 lt!1786876 hashF!1389))))

(declare-fun b!4628108 () Bool)

(declare-fun res!1941249 () Bool)

(assert (=> b!4628108 (=> (not res!1941249) (not e!2887004))))

(assert (=> b!4628108 (= res!1941249 (contains!14633 (extractMap!1574 (toList!5002 lt!1786876)) key!4968))))

(assert (=> d!1458053 e!2887004))

(declare-fun res!1941246 () Bool)

(assert (=> d!1458053 (=> (not res!1941246) (not e!2887004))))

(assert (=> d!1458053 (= res!1941246 (forall!10842 (toList!5002 lt!1786876) lambda!192795))))

(declare-fun lt!1787002 () Unit!112636)

(declare-fun choose!31396 (ListLongMap!3591 K!12945 Hashable!5915) Unit!112636)

(assert (=> d!1458053 (= lt!1787002 (choose!31396 lt!1786876 key!4968 hashF!1389))))

(assert (=> d!1458053 (forall!10842 (toList!5002 lt!1786876) lambda!192795)))

(assert (=> d!1458053 (= (lemmaInGenMapThenGetPairDefined!106 lt!1786876 key!4968 hashF!1389) lt!1787002)))

(assert (= (and d!1458053 res!1941246) b!4628107))

(assert (= (and b!4628107 res!1941248) b!4628108))

(assert (= (and b!4628108 res!1941249) b!4628109))

(assert (= (and b!4628109 res!1941247) b!4628110))

(declare-fun m!5473165 () Bool)

(assert (=> d!1458053 m!5473165))

(declare-fun m!5473167 () Bool)

(assert (=> d!1458053 m!5473167))

(assert (=> d!1458053 m!5473165))

(declare-fun m!5473169 () Bool)

(assert (=> b!4628107 m!5473169))

(declare-fun m!5473171 () Bool)

(assert (=> b!4628110 m!5473171))

(assert (=> b!4628109 m!5472891))

(declare-fun m!5473173 () Bool)

(assert (=> b!4628109 m!5473173))

(declare-fun m!5473175 () Bool)

(assert (=> b!4628109 m!5473175))

(assert (=> b!4628109 m!5472891))

(declare-fun m!5473177 () Bool)

(assert (=> b!4628109 m!5473177))

(assert (=> b!4628109 m!5473177))

(declare-fun m!5473179 () Bool)

(assert (=> b!4628109 m!5473179))

(assert (=> b!4628109 m!5472965))

(declare-fun m!5473181 () Bool)

(assert (=> b!4628109 m!5473181))

(assert (=> b!4628109 m!5472891))

(assert (=> b!4628109 m!5473037))

(assert (=> b!4628109 m!5473179))

(declare-fun m!5473183 () Bool)

(assert (=> b!4628109 m!5473183))

(declare-fun m!5473185 () Bool)

(assert (=> b!4628109 m!5473185))

(declare-fun m!5473187 () Bool)

(assert (=> b!4628108 m!5473187))

(assert (=> b!4628108 m!5473187))

(declare-fun m!5473189 () Bool)

(assert (=> b!4628108 m!5473189))

(assert (=> b!4627978 d!1458053))

(declare-fun d!1458091 () Bool)

(declare-fun lt!1787019 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!8827 (List!51693) (InoxSet tuple2!52520))

(assert (=> d!1458091 (= lt!1787019 (select (content!8827 lt!1786855) lt!1786861))))

(declare-fun e!2887016 () Bool)

(assert (=> d!1458091 (= lt!1787019 e!2887016)))

(declare-fun res!1941257 () Bool)

(assert (=> d!1458091 (=> (not res!1941257) (not e!2887016))))

(assert (=> d!1458091 (= res!1941257 ((_ is Cons!51569) lt!1786855))))

(assert (=> d!1458091 (= (contains!14634 lt!1786855 lt!1786861) lt!1787019)))

(declare-fun b!4628124 () Bool)

(declare-fun e!2887015 () Bool)

(assert (=> b!4628124 (= e!2887016 e!2887015)))

(declare-fun res!1941258 () Bool)

(assert (=> b!4628124 (=> res!1941258 e!2887015)))

(assert (=> b!4628124 (= res!1941258 (= (h!57629 lt!1786855) lt!1786861))))

(declare-fun b!4628125 () Bool)

(assert (=> b!4628125 (= e!2887015 (contains!14634 (t!358735 lt!1786855) lt!1786861))))

(assert (= (and d!1458091 res!1941257) b!4628124))

(assert (= (and b!4628124 (not res!1941258)) b!4628125))

(declare-fun m!5473191 () Bool)

(assert (=> d!1458091 m!5473191))

(declare-fun m!5473193 () Bool)

(assert (=> d!1458091 m!5473193))

(declare-fun m!5473195 () Bool)

(assert (=> b!4628125 m!5473195))

(assert (=> b!4627978 d!1458091))

(declare-fun d!1458093 () Bool)

(assert (=> d!1458093 (containsKey!2478 oldBucket!40 key!4968)))

(declare-fun lt!1787022 () Unit!112636)

(declare-fun choose!31397 (List!51692 K!12945 Hashable!5915) Unit!112636)

(assert (=> d!1458093 (= lt!1787022 (choose!31397 oldBucket!40 key!4968 hashF!1389))))

(assert (=> d!1458093 (noDuplicateKeys!1518 oldBucket!40)))

(assert (=> d!1458093 (= (lemmaGetPairDefinedThenContainsKey!64 oldBucket!40 key!4968 hashF!1389) lt!1787022)))

(declare-fun bs!1025167 () Bool)

(assert (= bs!1025167 d!1458093))

(assert (=> bs!1025167 m!5472981))

(declare-fun m!5473197 () Bool)

(assert (=> bs!1025167 m!5473197))

(assert (=> bs!1025167 m!5472893))

(assert (=> b!4627978 d!1458093))

(declare-fun d!1458095 () Bool)

(assert (=> d!1458095 (contains!14634 (toList!5002 lt!1786876) (tuple2!52521 lt!1786856 lt!1786858))))

(declare-fun lt!1787025 () Unit!112636)

(declare-fun choose!31398 (ListLongMap!3591 (_ BitVec 64) List!51692) Unit!112636)

(assert (=> d!1458095 (= lt!1787025 (choose!31398 lt!1786876 lt!1786856 lt!1786858))))

(assert (=> d!1458095 (contains!14635 lt!1786876 lt!1786856)))

(assert (=> d!1458095 (= (lemmaGetValueImpliesTupleContained!115 lt!1786876 lt!1786856 lt!1786858) lt!1787025)))

(declare-fun bs!1025168 () Bool)

(assert (= bs!1025168 d!1458095))

(declare-fun m!5473199 () Bool)

(assert (=> bs!1025168 m!5473199))

(declare-fun m!5473201 () Bool)

(assert (=> bs!1025168 m!5473201))

(assert (=> bs!1025168 m!5472975))

(assert (=> b!4627978 d!1458095))

(declare-fun d!1458097 () Bool)

(declare-fun res!1941263 () Bool)

(declare-fun e!2887021 () Bool)

(assert (=> d!1458097 (=> res!1941263 e!2887021)))

(assert (=> d!1458097 (= res!1941263 (and ((_ is Cons!51568) (t!358734 oldBucket!40)) (= (_1!29553 (h!57628 (t!358734 oldBucket!40))) key!4968)))))

(assert (=> d!1458097 (= (containsKey!2478 (t!358734 oldBucket!40) key!4968) e!2887021)))

(declare-fun b!4628131 () Bool)

(declare-fun e!2887022 () Bool)

(assert (=> b!4628131 (= e!2887021 e!2887022)))

(declare-fun res!1941264 () Bool)

(assert (=> b!4628131 (=> (not res!1941264) (not e!2887022))))

(assert (=> b!4628131 (= res!1941264 ((_ is Cons!51568) (t!358734 oldBucket!40)))))

(declare-fun b!4628132 () Bool)

(assert (=> b!4628132 (= e!2887022 (containsKey!2478 (t!358734 (t!358734 oldBucket!40)) key!4968))))

(assert (= (and d!1458097 (not res!1941263)) b!4628131))

(assert (= (and b!4628131 res!1941264) b!4628132))

(declare-fun m!5473203 () Bool)

(assert (=> b!4628132 m!5473203))

(assert (=> b!4627978 d!1458097))

(declare-fun d!1458099 () Bool)

(declare-fun get!17103 (Option!11623) List!51692)

(assert (=> d!1458099 (= (apply!12183 lt!1786876 lt!1786856) (get!17103 (getValueByKey!1471 (toList!5002 lt!1786876) lt!1786856)))))

(declare-fun bs!1025169 () Bool)

(assert (= bs!1025169 d!1458099))

(declare-fun m!5473205 () Bool)

(assert (=> bs!1025169 m!5473205))

(assert (=> bs!1025169 m!5473205))

(declare-fun m!5473207 () Bool)

(assert (=> bs!1025169 m!5473207))

(assert (=> b!4627978 d!1458099))

(declare-fun d!1458101 () Bool)

(declare-fun e!2887027 () Bool)

(assert (=> d!1458101 e!2887027))

(declare-fun res!1941267 () Bool)

(assert (=> d!1458101 (=> res!1941267 e!2887027)))

(declare-fun lt!1787035 () Bool)

(assert (=> d!1458101 (= res!1941267 (not lt!1787035))))

(declare-fun lt!1787034 () Bool)

(assert (=> d!1458101 (= lt!1787035 lt!1787034)))

(declare-fun lt!1787036 () Unit!112636)

(declare-fun e!2887028 () Unit!112636)

(assert (=> d!1458101 (= lt!1787036 e!2887028)))

(declare-fun c!792193 () Bool)

(assert (=> d!1458101 (= c!792193 lt!1787034)))

(declare-fun containsKey!2481 (List!51693 (_ BitVec 64)) Bool)

(assert (=> d!1458101 (= lt!1787034 (containsKey!2481 (toList!5002 lt!1786876) lt!1786856))))

(assert (=> d!1458101 (= (contains!14635 lt!1786876 lt!1786856) lt!1787035)))

(declare-fun b!4628139 () Bool)

(declare-fun lt!1787037 () Unit!112636)

(assert (=> b!4628139 (= e!2887028 lt!1787037)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1373 (List!51693 (_ BitVec 64)) Unit!112636)

(assert (=> b!4628139 (= lt!1787037 (lemmaContainsKeyImpliesGetValueByKeyDefined!1373 (toList!5002 lt!1786876) lt!1786856))))

(declare-fun isDefined!8888 (Option!11623) Bool)

(assert (=> b!4628139 (isDefined!8888 (getValueByKey!1471 (toList!5002 lt!1786876) lt!1786856))))

(declare-fun b!4628140 () Bool)

(declare-fun Unit!112663 () Unit!112636)

(assert (=> b!4628140 (= e!2887028 Unit!112663)))

(declare-fun b!4628141 () Bool)

(assert (=> b!4628141 (= e!2887027 (isDefined!8888 (getValueByKey!1471 (toList!5002 lt!1786876) lt!1786856)))))

(assert (= (and d!1458101 c!792193) b!4628139))

(assert (= (and d!1458101 (not c!792193)) b!4628140))

(assert (= (and d!1458101 (not res!1941267)) b!4628141))

(declare-fun m!5473209 () Bool)

(assert (=> d!1458101 m!5473209))

(declare-fun m!5473211 () Bool)

(assert (=> b!4628139 m!5473211))

(assert (=> b!4628139 m!5473205))

(assert (=> b!4628139 m!5473205))

(declare-fun m!5473213 () Bool)

(assert (=> b!4628139 m!5473213))

(assert (=> b!4628141 m!5473205))

(assert (=> b!4628141 m!5473205))

(assert (=> b!4628141 m!5473213))

(assert (=> b!4627978 d!1458101))

(declare-fun d!1458103 () Bool)

(declare-fun isEmpty!28940 (Option!11620) Bool)

(assert (=> d!1458103 (= (isDefined!8885 (getPair!310 lt!1786858 key!4968)) (not (isEmpty!28940 (getPair!310 lt!1786858 key!4968))))))

(declare-fun bs!1025170 () Bool)

(assert (= bs!1025170 d!1458103))

(assert (=> bs!1025170 m!5472963))

(declare-fun m!5473215 () Bool)

(assert (=> bs!1025170 m!5473215))

(assert (=> b!4627978 d!1458103))

(declare-fun b!4628158 () Bool)

(declare-fun e!2887039 () Option!11620)

(declare-fun e!2887042 () Option!11620)

(assert (=> b!4628158 (= e!2887039 e!2887042)))

(declare-fun c!792199 () Bool)

(assert (=> b!4628158 (= c!792199 ((_ is Cons!51568) lt!1786858))))

(declare-fun d!1458105 () Bool)

(declare-fun e!2887040 () Bool)

(assert (=> d!1458105 e!2887040))

(declare-fun res!1941279 () Bool)

(assert (=> d!1458105 (=> res!1941279 e!2887040)))

(declare-fun e!2887041 () Bool)

(assert (=> d!1458105 (= res!1941279 e!2887041)))

(declare-fun res!1941277 () Bool)

(assert (=> d!1458105 (=> (not res!1941277) (not e!2887041))))

(declare-fun lt!1787040 () Option!11620)

(assert (=> d!1458105 (= res!1941277 (isEmpty!28940 lt!1787040))))

(assert (=> d!1458105 (= lt!1787040 e!2887039)))

(declare-fun c!792198 () Bool)

(assert (=> d!1458105 (= c!792198 (and ((_ is Cons!51568) lt!1786858) (= (_1!29553 (h!57628 lt!1786858)) key!4968)))))

(assert (=> d!1458105 (noDuplicateKeys!1518 lt!1786858)))

(assert (=> d!1458105 (= (getPair!310 lt!1786858 key!4968) lt!1787040)))

(declare-fun b!4628159 () Bool)

(assert (=> b!4628159 (= e!2887041 (not (containsKey!2478 lt!1786858 key!4968)))))

(declare-fun b!4628160 () Bool)

(assert (=> b!4628160 (= e!2887042 (getPair!310 (t!358734 lt!1786858) key!4968))))

(declare-fun b!4628161 () Bool)

(assert (=> b!4628161 (= e!2887042 None!11619)))

(declare-fun b!4628162 () Bool)

(declare-fun e!2887043 () Bool)

(declare-fun contains!14638 (List!51692 tuple2!52518) Bool)

(declare-fun get!17104 (Option!11620) tuple2!52518)

(assert (=> b!4628162 (= e!2887043 (contains!14638 lt!1786858 (get!17104 lt!1787040)))))

(declare-fun b!4628163 () Bool)

(assert (=> b!4628163 (= e!2887040 e!2887043)))

(declare-fun res!1941276 () Bool)

(assert (=> b!4628163 (=> (not res!1941276) (not e!2887043))))

(assert (=> b!4628163 (= res!1941276 (isDefined!8885 lt!1787040))))

(declare-fun b!4628164 () Bool)

(declare-fun res!1941278 () Bool)

(assert (=> b!4628164 (=> (not res!1941278) (not e!2887043))))

(assert (=> b!4628164 (= res!1941278 (= (_1!29553 (get!17104 lt!1787040)) key!4968))))

(declare-fun b!4628165 () Bool)

(assert (=> b!4628165 (= e!2887039 (Some!11619 (h!57628 lt!1786858)))))

(assert (= (and d!1458105 c!792198) b!4628165))

(assert (= (and d!1458105 (not c!792198)) b!4628158))

(assert (= (and b!4628158 c!792199) b!4628160))

(assert (= (and b!4628158 (not c!792199)) b!4628161))

(assert (= (and d!1458105 res!1941277) b!4628159))

(assert (= (and d!1458105 (not res!1941279)) b!4628163))

(assert (= (and b!4628163 res!1941276) b!4628164))

(assert (= (and b!4628164 res!1941278) b!4628162))

(declare-fun m!5473217 () Bool)

(assert (=> b!4628160 m!5473217))

(declare-fun m!5473219 () Bool)

(assert (=> b!4628159 m!5473219))

(declare-fun m!5473221 () Bool)

(assert (=> d!1458105 m!5473221))

(declare-fun m!5473223 () Bool)

(assert (=> d!1458105 m!5473223))

(declare-fun m!5473225 () Bool)

(assert (=> b!4628164 m!5473225))

(declare-fun m!5473227 () Bool)

(assert (=> b!4628163 m!5473227))

(assert (=> b!4628162 m!5473225))

(assert (=> b!4628162 m!5473225))

(declare-fun m!5473229 () Bool)

(assert (=> b!4628162 m!5473229))

(assert (=> b!4627978 d!1458105))

(declare-fun d!1458107 () Bool)

(declare-fun res!1941280 () Bool)

(declare-fun e!2887044 () Bool)

(assert (=> d!1458107 (=> res!1941280 e!2887044)))

(assert (=> d!1458107 (= res!1941280 (and ((_ is Cons!51568) oldBucket!40) (= (_1!29553 (h!57628 oldBucket!40)) key!4968)))))

(assert (=> d!1458107 (= (containsKey!2478 oldBucket!40 key!4968) e!2887044)))

(declare-fun b!4628166 () Bool)

(declare-fun e!2887045 () Bool)

(assert (=> b!4628166 (= e!2887044 e!2887045)))

(declare-fun res!1941281 () Bool)

(assert (=> b!4628166 (=> (not res!1941281) (not e!2887045))))

(assert (=> b!4628166 (= res!1941281 ((_ is Cons!51568) oldBucket!40))))

(declare-fun b!4628167 () Bool)

(assert (=> b!4628167 (= e!2887045 (containsKey!2478 (t!358734 oldBucket!40) key!4968))))

(assert (= (and d!1458107 (not res!1941280)) b!4628166))

(assert (= (and b!4628166 res!1941281) b!4628167))

(assert (=> b!4628167 m!5472973))

(assert (=> b!4627978 d!1458107))

(declare-fun d!1458109 () Bool)

(declare-fun dynLambda!21508 (Int tuple2!52520) Bool)

(assert (=> d!1458109 (dynLambda!21508 lambda!192768 lt!1786861)))

(declare-fun lt!1787043 () Unit!112636)

(declare-fun choose!31399 (List!51693 Int tuple2!52520) Unit!112636)

(assert (=> d!1458109 (= lt!1787043 (choose!31399 lt!1786855 lambda!192768 lt!1786861))))

(declare-fun e!2887048 () Bool)

(assert (=> d!1458109 e!2887048))

(declare-fun res!1941284 () Bool)

(assert (=> d!1458109 (=> (not res!1941284) (not e!2887048))))

(assert (=> d!1458109 (= res!1941284 (forall!10842 lt!1786855 lambda!192768))))

(assert (=> d!1458109 (= (forallContained!3072 lt!1786855 lambda!192768 lt!1786861) lt!1787043)))

(declare-fun b!4628170 () Bool)

(assert (=> b!4628170 (= e!2887048 (contains!14634 lt!1786855 lt!1786861))))

(assert (= (and d!1458109 res!1941284) b!4628170))

(declare-fun b_lambda!170809 () Bool)

(assert (=> (not b_lambda!170809) (not d!1458109)))

(declare-fun m!5473231 () Bool)

(assert (=> d!1458109 m!5473231))

(declare-fun m!5473233 () Bool)

(assert (=> d!1458109 m!5473233))

(declare-fun m!5473235 () Bool)

(assert (=> d!1458109 m!5473235))

(assert (=> b!4628170 m!5472979))

(assert (=> b!4627978 d!1458109))

(declare-fun d!1458111 () Bool)

(assert (=> d!1458111 true))

(assert (=> d!1458111 true))

(declare-fun lambda!192798 () Int)

(declare-fun forall!10844 (List!51692 Int) Bool)

(assert (=> d!1458111 (= (allKeysSameHash!1372 newBucket!224 hash!414 hashF!1389) (forall!10844 newBucket!224 lambda!192798))))

(declare-fun bs!1025171 () Bool)

(assert (= bs!1025171 d!1458111))

(declare-fun m!5473237 () Bool)

(assert (=> bs!1025171 m!5473237))

(assert (=> b!4627968 d!1458111))

(declare-fun d!1458113 () Bool)

(declare-fun hash!3534 (Hashable!5915 K!12945) (_ BitVec 64))

(assert (=> d!1458113 (= (hash!3531 hashF!1389 key!4968) (hash!3534 hashF!1389 key!4968))))

(declare-fun bs!1025172 () Bool)

(assert (= bs!1025172 d!1458113))

(declare-fun m!5473239 () Bool)

(assert (=> bs!1025172 m!5473239))

(assert (=> b!4627977 d!1458113))

(declare-fun d!1458115 () Bool)

(declare-fun res!1941289 () Bool)

(declare-fun e!2887053 () Bool)

(assert (=> d!1458115 (=> res!1941289 e!2887053)))

(assert (=> d!1458115 (= res!1941289 ((_ is Nil!51569) lt!1786874))))

(assert (=> d!1458115 (= (forall!10842 lt!1786874 lambda!192768) e!2887053)))

(declare-fun b!4628179 () Bool)

(declare-fun e!2887054 () Bool)

(assert (=> b!4628179 (= e!2887053 e!2887054)))

(declare-fun res!1941290 () Bool)

(assert (=> b!4628179 (=> (not res!1941290) (not e!2887054))))

(assert (=> b!4628179 (= res!1941290 (dynLambda!21508 lambda!192768 (h!57629 lt!1786874)))))

(declare-fun b!4628180 () Bool)

(assert (=> b!4628180 (= e!2887054 (forall!10842 (t!358735 lt!1786874) lambda!192768))))

(assert (= (and d!1458115 (not res!1941289)) b!4628179))

(assert (= (and b!4628179 res!1941290) b!4628180))

(declare-fun b_lambda!170811 () Bool)

(assert (=> (not b_lambda!170811) (not b!4628179)))

(declare-fun m!5473241 () Bool)

(assert (=> b!4628179 m!5473241))

(declare-fun m!5473243 () Bool)

(assert (=> b!4628180 m!5473243))

(assert (=> b!4627966 d!1458115))

(declare-fun d!1458117 () Bool)

(declare-fun content!8828 (List!51692) (InoxSet tuple2!52518))

(assert (=> d!1458117 (= (eq!833 lt!1786883 (-!558 lt!1786878 key!4968)) (= (content!8828 (toList!5001 lt!1786883)) (content!8828 (toList!5001 (-!558 lt!1786878 key!4968)))))))

(declare-fun bs!1025173 () Bool)

(assert (= bs!1025173 d!1458117))

(declare-fun m!5473245 () Bool)

(assert (=> bs!1025173 m!5473245))

(declare-fun m!5473247 () Bool)

(assert (=> bs!1025173 m!5473247))

(assert (=> b!4627966 d!1458117))

(declare-fun d!1458119 () Bool)

(declare-fun e!2887057 () Bool)

(assert (=> d!1458119 e!2887057))

(declare-fun res!1941293 () Bool)

(assert (=> d!1458119 (=> (not res!1941293) (not e!2887057))))

(declare-fun lt!1787046 () ListMap!4305)

(assert (=> d!1458119 (= res!1941293 (not (contains!14633 lt!1787046 key!4968)))))

(declare-fun removePresrvNoDuplicatedKeys!263 (List!51692 K!12945) List!51692)

(assert (=> d!1458119 (= lt!1787046 (ListMap!4306 (removePresrvNoDuplicatedKeys!263 (toList!5001 lt!1786878) key!4968)))))

(assert (=> d!1458119 (= (-!558 lt!1786878 key!4968) lt!1787046)))

(declare-fun b!4628183 () Bool)

(declare-datatypes ((List!51695 0))(
  ( (Nil!51571) (Cons!51571 (h!57633 K!12945) (t!358739 List!51695)) )
))
(declare-fun content!8829 (List!51695) (InoxSet K!12945))

(declare-fun keys!18176 (ListMap!4305) List!51695)

(assert (=> b!4628183 (= e!2887057 (= ((_ map and) (content!8829 (keys!18176 lt!1786878)) ((_ map not) (store ((as const (Array K!12945 Bool)) false) key!4968 true))) (content!8829 (keys!18176 lt!1787046))))))

(assert (= (and d!1458119 res!1941293) b!4628183))

(declare-fun m!5473249 () Bool)

(assert (=> d!1458119 m!5473249))

(declare-fun m!5473251 () Bool)

(assert (=> d!1458119 m!5473251))

(declare-fun m!5473253 () Bool)

(assert (=> b!4628183 m!5473253))

(declare-fun m!5473255 () Bool)

(assert (=> b!4628183 m!5473255))

(declare-fun m!5473257 () Bool)

(assert (=> b!4628183 m!5473257))

(declare-fun m!5473259 () Bool)

(assert (=> b!4628183 m!5473259))

(declare-fun m!5473261 () Bool)

(assert (=> b!4628183 m!5473261))

(assert (=> b!4628183 m!5473255))

(assert (=> b!4628183 m!5473259))

(assert (=> b!4627966 d!1458119))

(declare-fun d!1458121 () Bool)

(assert (=> d!1458121 (eq!833 (-!558 lt!1786877 key!4968) (-!558 lt!1786878 key!4968))))

(declare-fun lt!1787049 () Unit!112636)

(declare-fun choose!31400 (ListMap!4305 ListMap!4305 K!12945) Unit!112636)

(assert (=> d!1458121 (= lt!1787049 (choose!31400 lt!1786877 lt!1786878 key!4968))))

(assert (=> d!1458121 (eq!833 lt!1786877 lt!1786878)))

(assert (=> d!1458121 (= (lemmaRemovePreservesEq!14 lt!1786877 lt!1786878 key!4968) lt!1787049)))

(declare-fun bs!1025174 () Bool)

(assert (= bs!1025174 d!1458121))

(assert (=> bs!1025174 m!5472895))

(assert (=> bs!1025174 m!5472895))

(assert (=> bs!1025174 m!5472987))

(declare-fun m!5473263 () Bool)

(assert (=> bs!1025174 m!5473263))

(assert (=> bs!1025174 m!5472987))

(declare-fun m!5473265 () Bool)

(assert (=> bs!1025174 m!5473265))

(declare-fun m!5473267 () Bool)

(assert (=> bs!1025174 m!5473267))

(assert (=> b!4627966 d!1458121))

(declare-fun bs!1025288 () Bool)

(declare-fun b!4628260 () Bool)

(assert (= bs!1025288 (and b!4628260 d!1458111)))

(declare-fun lambda!192876 () Int)

(assert (=> bs!1025288 (not (= lambda!192876 lambda!192798))))

(assert (=> b!4628260 true))

(declare-fun bs!1025295 () Bool)

(declare-fun b!4628262 () Bool)

(assert (= bs!1025295 (and b!4628262 d!1458111)))

(declare-fun lambda!192878 () Int)

(assert (=> bs!1025295 (not (= lambda!192878 lambda!192798))))

(declare-fun bs!1025297 () Bool)

(assert (= bs!1025297 (and b!4628262 b!4628260)))

(assert (=> bs!1025297 (= lambda!192878 lambda!192876)))

(assert (=> b!4628262 true))

(declare-fun lambda!192879 () Int)

(assert (=> bs!1025295 (not (= lambda!192879 lambda!192798))))

(declare-fun lt!1787264 () ListMap!4305)

(assert (=> bs!1025297 (= (= lt!1787264 lt!1786866) (= lambda!192879 lambda!192876))))

(assert (=> b!4628262 (= (= lt!1787264 lt!1786866) (= lambda!192879 lambda!192878))))

(assert (=> b!4628262 true))

(declare-fun bs!1025306 () Bool)

(declare-fun d!1458123 () Bool)

(assert (= bs!1025306 (and d!1458123 d!1458111)))

(declare-fun lambda!192881 () Int)

(assert (=> bs!1025306 (not (= lambda!192881 lambda!192798))))

(declare-fun bs!1025307 () Bool)

(assert (= bs!1025307 (and d!1458123 b!4628260)))

(declare-fun lt!1787261 () ListMap!4305)

(assert (=> bs!1025307 (= (= lt!1787261 lt!1786866) (= lambda!192881 lambda!192876))))

(declare-fun bs!1025308 () Bool)

(assert (= bs!1025308 (and d!1458123 b!4628262)))

(assert (=> bs!1025308 (= (= lt!1787261 lt!1786866) (= lambda!192881 lambda!192878))))

(assert (=> bs!1025308 (= (= lt!1787261 lt!1787264) (= lambda!192881 lambda!192879))))

(assert (=> d!1458123 true))

(declare-fun b!4628258 () Bool)

(declare-fun e!2887106 () Bool)

(declare-fun invariantList!1214 (List!51692) Bool)

(assert (=> b!4628258 (= e!2887106 (invariantList!1214 (toList!5001 lt!1787261)))))

(declare-fun call!322880 () Bool)

(declare-fun c!792212 () Bool)

(declare-fun bm!322875 () Bool)

(assert (=> bm!322875 (= call!322880 (forall!10844 (ite c!792212 (toList!5001 lt!1786866) oldBucket!40) (ite c!792212 lambda!192876 lambda!192879)))))

(declare-fun bm!322876 () Bool)

(declare-fun call!322881 () Unit!112636)

(declare-fun lemmaContainsAllItsOwnKeys!516 (ListMap!4305) Unit!112636)

(assert (=> bm!322876 (= call!322881 (lemmaContainsAllItsOwnKeys!516 lt!1786866))))

(declare-fun e!2887107 () ListMap!4305)

(assert (=> b!4628260 (= e!2887107 lt!1786866)))

(declare-fun lt!1787274 () Unit!112636)

(assert (=> b!4628260 (= lt!1787274 call!322881)))

(assert (=> b!4628260 call!322880))

(declare-fun lt!1787263 () Unit!112636)

(assert (=> b!4628260 (= lt!1787263 lt!1787274)))

(declare-fun call!322882 () Bool)

(assert (=> b!4628260 call!322882))

(declare-fun lt!1787279 () Unit!112636)

(declare-fun Unit!112672 () Unit!112636)

(assert (=> b!4628260 (= lt!1787279 Unit!112672)))

(declare-fun bm!322877 () Bool)

(assert (=> bm!322877 (= call!322882 (forall!10844 (ite c!792212 (toList!5001 lt!1786866) (t!358734 oldBucket!40)) (ite c!792212 lambda!192876 lambda!192879)))))

(declare-fun b!4628261 () Bool)

(declare-fun e!2887105 () Bool)

(assert (=> b!4628261 (= e!2887105 (forall!10844 (toList!5001 lt!1786866) lambda!192879))))

(assert (=> b!4628262 (= e!2887107 lt!1787264)))

(declare-fun lt!1787262 () ListMap!4305)

(assert (=> b!4628262 (= lt!1787262 (+!1884 lt!1786866 (h!57628 oldBucket!40)))))

(assert (=> b!4628262 (= lt!1787264 (addToMapMapFromBucket!979 (t!358734 oldBucket!40) (+!1884 lt!1786866 (h!57628 oldBucket!40))))))

(declare-fun lt!1787273 () Unit!112636)

(assert (=> b!4628262 (= lt!1787273 call!322881)))

(assert (=> b!4628262 (forall!10844 (toList!5001 lt!1786866) lambda!192878)))

(declare-fun lt!1787280 () Unit!112636)

(assert (=> b!4628262 (= lt!1787280 lt!1787273)))

(assert (=> b!4628262 (forall!10844 (toList!5001 lt!1787262) lambda!192879)))

(declare-fun lt!1787277 () Unit!112636)

(declare-fun Unit!112675 () Unit!112636)

(assert (=> b!4628262 (= lt!1787277 Unit!112675)))

(assert (=> b!4628262 call!322882))

(declare-fun lt!1787272 () Unit!112636)

(declare-fun Unit!112676 () Unit!112636)

(assert (=> b!4628262 (= lt!1787272 Unit!112676)))

(declare-fun lt!1787268 () Unit!112636)

(declare-fun Unit!112677 () Unit!112636)

(assert (=> b!4628262 (= lt!1787268 Unit!112677)))

(declare-fun lt!1787260 () Unit!112636)

(declare-fun forallContained!3074 (List!51692 Int tuple2!52518) Unit!112636)

(assert (=> b!4628262 (= lt!1787260 (forallContained!3074 (toList!5001 lt!1787262) lambda!192879 (h!57628 oldBucket!40)))))

(assert (=> b!4628262 (contains!14633 lt!1787262 (_1!29553 (h!57628 oldBucket!40)))))

(declare-fun lt!1787266 () Unit!112636)

(declare-fun Unit!112679 () Unit!112636)

(assert (=> b!4628262 (= lt!1787266 Unit!112679)))

(assert (=> b!4628262 (contains!14633 lt!1787264 (_1!29553 (h!57628 oldBucket!40)))))

(declare-fun lt!1787269 () Unit!112636)

(declare-fun Unit!112680 () Unit!112636)

(assert (=> b!4628262 (= lt!1787269 Unit!112680)))

(assert (=> b!4628262 (forall!10844 oldBucket!40 lambda!192879)))

(declare-fun lt!1787271 () Unit!112636)

(declare-fun Unit!112681 () Unit!112636)

(assert (=> b!4628262 (= lt!1787271 Unit!112681)))

(assert (=> b!4628262 (forall!10844 (toList!5001 lt!1787262) lambda!192879)))

(declare-fun lt!1787270 () Unit!112636)

(declare-fun Unit!112682 () Unit!112636)

(assert (=> b!4628262 (= lt!1787270 Unit!112682)))

(declare-fun lt!1787265 () Unit!112636)

(declare-fun Unit!112683 () Unit!112636)

(assert (=> b!4628262 (= lt!1787265 Unit!112683)))

(declare-fun lt!1787267 () Unit!112636)

(declare-fun addForallContainsKeyThenBeforeAdding!515 (ListMap!4305 ListMap!4305 K!12945 V!13191) Unit!112636)

(assert (=> b!4628262 (= lt!1787267 (addForallContainsKeyThenBeforeAdding!515 lt!1786866 lt!1787264 (_1!29553 (h!57628 oldBucket!40)) (_2!29553 (h!57628 oldBucket!40))))))

(assert (=> b!4628262 (forall!10844 (toList!5001 lt!1786866) lambda!192879)))

(declare-fun lt!1787278 () Unit!112636)

(assert (=> b!4628262 (= lt!1787278 lt!1787267)))

(assert (=> b!4628262 (forall!10844 (toList!5001 lt!1786866) lambda!192879)))

(declare-fun lt!1787276 () Unit!112636)

(declare-fun Unit!112684 () Unit!112636)

(assert (=> b!4628262 (= lt!1787276 Unit!112684)))

(declare-fun res!1941344 () Bool)

(assert (=> b!4628262 (= res!1941344 call!322880)))

(assert (=> b!4628262 (=> (not res!1941344) (not e!2887105))))

(assert (=> b!4628262 e!2887105))

(declare-fun lt!1787275 () Unit!112636)

(declare-fun Unit!112685 () Unit!112636)

(assert (=> b!4628262 (= lt!1787275 Unit!112685)))

(assert (=> d!1458123 e!2887106))

(declare-fun res!1941343 () Bool)

(assert (=> d!1458123 (=> (not res!1941343) (not e!2887106))))

(assert (=> d!1458123 (= res!1941343 (forall!10844 oldBucket!40 lambda!192881))))

(assert (=> d!1458123 (= lt!1787261 e!2887107)))

(assert (=> d!1458123 (= c!792212 ((_ is Nil!51568) oldBucket!40))))

(assert (=> d!1458123 (noDuplicateKeys!1518 oldBucket!40)))

(assert (=> d!1458123 (= (addToMapMapFromBucket!979 oldBucket!40 lt!1786866) lt!1787261)))

(declare-fun b!4628259 () Bool)

(declare-fun res!1941342 () Bool)

(assert (=> b!4628259 (=> (not res!1941342) (not e!2887106))))

(assert (=> b!4628259 (= res!1941342 (forall!10844 (toList!5001 lt!1786866) lambda!192881))))

(assert (= (and d!1458123 c!792212) b!4628260))

(assert (= (and d!1458123 (not c!792212)) b!4628262))

(assert (= (and b!4628262 res!1941344) b!4628261))

(assert (= (or b!4628260 b!4628262) bm!322876))

(assert (= (or b!4628260 b!4628262) bm!322875))

(assert (= (or b!4628260 b!4628262) bm!322877))

(assert (= (and d!1458123 res!1941343) b!4628259))

(assert (= (and b!4628259 res!1941342) b!4628258))

(declare-fun m!5473597 () Bool)

(assert (=> bm!322877 m!5473597))

(declare-fun m!5473599 () Bool)

(assert (=> bm!322876 m!5473599))

(declare-fun m!5473601 () Bool)

(assert (=> d!1458123 m!5473601))

(assert (=> d!1458123 m!5472893))

(declare-fun m!5473603 () Bool)

(assert (=> b!4628258 m!5473603))

(declare-fun m!5473605 () Bool)

(assert (=> bm!322875 m!5473605))

(declare-fun m!5473607 () Bool)

(assert (=> b!4628262 m!5473607))

(declare-fun m!5473609 () Bool)

(assert (=> b!4628262 m!5473609))

(declare-fun m!5473611 () Bool)

(assert (=> b!4628262 m!5473611))

(declare-fun m!5473613 () Bool)

(assert (=> b!4628262 m!5473613))

(declare-fun m!5473615 () Bool)

(assert (=> b!4628262 m!5473615))

(declare-fun m!5473617 () Bool)

(assert (=> b!4628262 m!5473617))

(assert (=> b!4628262 m!5473609))

(declare-fun m!5473619 () Bool)

(assert (=> b!4628262 m!5473619))

(assert (=> b!4628262 m!5473617))

(declare-fun m!5473621 () Bool)

(assert (=> b!4628262 m!5473621))

(declare-fun m!5473623 () Bool)

(assert (=> b!4628262 m!5473623))

(assert (=> b!4628262 m!5473613))

(declare-fun m!5473625 () Bool)

(assert (=> b!4628262 m!5473625))

(declare-fun m!5473627 () Bool)

(assert (=> b!4628259 m!5473627))

(assert (=> b!4628261 m!5473613))

(assert (=> b!4627970 d!1458123))

(declare-fun bs!1025365 () Bool)

(declare-fun d!1458189 () Bool)

(assert (= bs!1025365 (and d!1458189 b!4627978)))

(declare-fun lambda!192889 () Int)

(assert (=> bs!1025365 (= lambda!192889 lambda!192768)))

(declare-fun bs!1025366 () Bool)

(assert (= bs!1025366 (and d!1458189 d!1458051)))

(assert (=> bs!1025366 (= lambda!192889 lambda!192774)))

(declare-fun bs!1025367 () Bool)

(assert (= bs!1025367 (and d!1458189 d!1458053)))

(assert (=> bs!1025367 (= lambda!192889 lambda!192795)))

(declare-fun lt!1787309 () ListMap!4305)

(assert (=> d!1458189 (invariantList!1214 (toList!5001 lt!1787309))))

(declare-fun e!2887124 () ListMap!4305)

(assert (=> d!1458189 (= lt!1787309 e!2887124)))

(declare-fun c!792223 () Bool)

(assert (=> d!1458189 (= c!792223 ((_ is Cons!51569) Nil!51569))))

(assert (=> d!1458189 (forall!10842 Nil!51569 lambda!192889)))

(assert (=> d!1458189 (= (extractMap!1574 Nil!51569) lt!1787309)))

(declare-fun b!4628294 () Bool)

(assert (=> b!4628294 (= e!2887124 (addToMapMapFromBucket!979 (_2!29554 (h!57629 Nil!51569)) (extractMap!1574 (t!358735 Nil!51569))))))

(declare-fun b!4628295 () Bool)

(assert (=> b!4628295 (= e!2887124 (ListMap!4306 Nil!51568))))

(assert (= (and d!1458189 c!792223) b!4628294))

(assert (= (and d!1458189 (not c!792223)) b!4628295))

(declare-fun m!5473673 () Bool)

(assert (=> d!1458189 m!5473673))

(declare-fun m!5473675 () Bool)

(assert (=> d!1458189 m!5473675))

(declare-fun m!5473677 () Bool)

(assert (=> b!4628294 m!5473677))

(assert (=> b!4628294 m!5473677))

(declare-fun m!5473679 () Bool)

(assert (=> b!4628294 m!5473679))

(assert (=> b!4627970 d!1458189))

(declare-fun d!1458197 () Bool)

(declare-fun res!1941352 () Bool)

(declare-fun e!2887129 () Bool)

(assert (=> d!1458197 (=> res!1941352 e!2887129)))

(assert (=> d!1458197 (= res!1941352 (not ((_ is Cons!51568) newBucket!224)))))

(assert (=> d!1458197 (= (noDuplicateKeys!1518 newBucket!224) e!2887129)))

(declare-fun b!4628300 () Bool)

(declare-fun e!2887130 () Bool)

(assert (=> b!4628300 (= e!2887129 e!2887130)))

(declare-fun res!1941353 () Bool)

(assert (=> b!4628300 (=> (not res!1941353) (not e!2887130))))

(assert (=> b!4628300 (= res!1941353 (not (containsKey!2478 (t!358734 newBucket!224) (_1!29553 (h!57628 newBucket!224)))))))

(declare-fun b!4628301 () Bool)

(assert (=> b!4628301 (= e!2887130 (noDuplicateKeys!1518 (t!358734 newBucket!224)))))

(assert (= (and d!1458197 (not res!1941352)) b!4628300))

(assert (= (and b!4628300 res!1941353) b!4628301))

(declare-fun m!5473681 () Bool)

(assert (=> b!4628300 m!5473681))

(declare-fun m!5473683 () Bool)

(assert (=> b!4628301 m!5473683))

(assert (=> b!4627969 d!1458197))

(declare-fun b!4628310 () Bool)

(declare-fun e!2887136 () List!51692)

(assert (=> b!4628310 (= e!2887136 (t!358734 oldBucket!40))))

(declare-fun b!4628311 () Bool)

(declare-fun e!2887135 () List!51692)

(assert (=> b!4628311 (= e!2887136 e!2887135)))

(declare-fun c!792228 () Bool)

(assert (=> b!4628311 (= c!792228 ((_ is Cons!51568) oldBucket!40))))

(declare-fun b!4628312 () Bool)

(assert (=> b!4628312 (= e!2887135 (Cons!51568 (h!57628 oldBucket!40) (removePairForKey!1141 (t!358734 oldBucket!40) key!4968)))))

(declare-fun b!4628313 () Bool)

(assert (=> b!4628313 (= e!2887135 Nil!51568)))

(declare-fun d!1458199 () Bool)

(declare-fun lt!1787312 () List!51692)

(assert (=> d!1458199 (not (containsKey!2478 lt!1787312 key!4968))))

(assert (=> d!1458199 (= lt!1787312 e!2887136)))

(declare-fun c!792229 () Bool)

(assert (=> d!1458199 (= c!792229 (and ((_ is Cons!51568) oldBucket!40) (= (_1!29553 (h!57628 oldBucket!40)) key!4968)))))

(assert (=> d!1458199 (noDuplicateKeys!1518 oldBucket!40)))

(assert (=> d!1458199 (= (removePairForKey!1141 oldBucket!40 key!4968) lt!1787312)))

(assert (= (and d!1458199 c!792229) b!4628310))

(assert (= (and d!1458199 (not c!792229)) b!4628311))

(assert (= (and b!4628311 c!792228) b!4628312))

(assert (= (and b!4628311 (not c!792228)) b!4628313))

(assert (=> b!4628312 m!5472993))

(declare-fun m!5473685 () Bool)

(assert (=> d!1458199 m!5473685))

(assert (=> d!1458199 m!5472893))

(assert (=> b!4627973 d!1458199))

(declare-fun b!4628314 () Bool)

(declare-fun e!2887138 () List!51692)

(assert (=> b!4628314 (= e!2887138 (t!358734 (t!358734 oldBucket!40)))))

(declare-fun b!4628315 () Bool)

(declare-fun e!2887137 () List!51692)

(assert (=> b!4628315 (= e!2887138 e!2887137)))

(declare-fun c!792230 () Bool)

(assert (=> b!4628315 (= c!792230 ((_ is Cons!51568) (t!358734 oldBucket!40)))))

(declare-fun b!4628316 () Bool)

(assert (=> b!4628316 (= e!2887137 (Cons!51568 (h!57628 (t!358734 oldBucket!40)) (removePairForKey!1141 (t!358734 (t!358734 oldBucket!40)) key!4968)))))

(declare-fun b!4628317 () Bool)

(assert (=> b!4628317 (= e!2887137 Nil!51568)))

(declare-fun d!1458201 () Bool)

(declare-fun lt!1787313 () List!51692)

(assert (=> d!1458201 (not (containsKey!2478 lt!1787313 key!4968))))

(assert (=> d!1458201 (= lt!1787313 e!2887138)))

(declare-fun c!792231 () Bool)

(assert (=> d!1458201 (= c!792231 (and ((_ is Cons!51568) (t!358734 oldBucket!40)) (= (_1!29553 (h!57628 (t!358734 oldBucket!40))) key!4968)))))

(assert (=> d!1458201 (noDuplicateKeys!1518 (t!358734 oldBucket!40))))

(assert (=> d!1458201 (= (removePairForKey!1141 (t!358734 oldBucket!40) key!4968) lt!1787313)))

(assert (= (and d!1458201 c!792231) b!4628314))

(assert (= (and d!1458201 (not c!792231)) b!4628315))

(assert (= (and b!4628315 c!792230) b!4628316))

(assert (= (and b!4628315 (not c!792230)) b!4628317))

(declare-fun m!5473687 () Bool)

(assert (=> b!4628316 m!5473687))

(declare-fun m!5473689 () Bool)

(assert (=> d!1458201 m!5473689))

(declare-fun m!5473691 () Bool)

(assert (=> d!1458201 m!5473691))

(assert (=> b!4627962 d!1458201))

(declare-fun d!1458203 () Bool)

(assert (=> d!1458203 (= (eq!833 lt!1786870 (+!1884 lt!1786860 lt!1786872)) (= (content!8828 (toList!5001 lt!1786870)) (content!8828 (toList!5001 (+!1884 lt!1786860 lt!1786872)))))))

(declare-fun bs!1025368 () Bool)

(assert (= bs!1025368 d!1458203))

(declare-fun m!5473693 () Bool)

(assert (=> bs!1025368 m!5473693))

(declare-fun m!5473695 () Bool)

(assert (=> bs!1025368 m!5473695))

(assert (=> b!4627963 d!1458203))

(declare-fun d!1458205 () Bool)

(declare-fun e!2887141 () Bool)

(assert (=> d!1458205 e!2887141))

(declare-fun res!1941359 () Bool)

(assert (=> d!1458205 (=> (not res!1941359) (not e!2887141))))

(declare-fun lt!1787323 () ListMap!4305)

(assert (=> d!1458205 (= res!1941359 (contains!14633 lt!1787323 (_1!29553 lt!1786872)))))

(declare-fun lt!1787324 () List!51692)

(assert (=> d!1458205 (= lt!1787323 (ListMap!4306 lt!1787324))))

(declare-fun lt!1787322 () Unit!112636)

(declare-fun lt!1787325 () Unit!112636)

(assert (=> d!1458205 (= lt!1787322 lt!1787325)))

(declare-datatypes ((Option!11624 0))(
  ( (None!11623) (Some!11623 (v!45773 V!13191)) )
))
(declare-fun getValueByKey!1472 (List!51692 K!12945) Option!11624)

(assert (=> d!1458205 (= (getValueByKey!1472 lt!1787324 (_1!29553 lt!1786872)) (Some!11623 (_2!29553 lt!1786872)))))

(declare-fun lemmaContainsTupThenGetReturnValue!858 (List!51692 K!12945 V!13191) Unit!112636)

(assert (=> d!1458205 (= lt!1787325 (lemmaContainsTupThenGetReturnValue!858 lt!1787324 (_1!29553 lt!1786872) (_2!29553 lt!1786872)))))

(declare-fun insertNoDuplicatedKeys!366 (List!51692 K!12945 V!13191) List!51692)

(assert (=> d!1458205 (= lt!1787324 (insertNoDuplicatedKeys!366 (toList!5001 lt!1786860) (_1!29553 lt!1786872) (_2!29553 lt!1786872)))))

(assert (=> d!1458205 (= (+!1884 lt!1786860 lt!1786872) lt!1787323)))

(declare-fun b!4628322 () Bool)

(declare-fun res!1941358 () Bool)

(assert (=> b!4628322 (=> (not res!1941358) (not e!2887141))))

(assert (=> b!4628322 (= res!1941358 (= (getValueByKey!1472 (toList!5001 lt!1787323) (_1!29553 lt!1786872)) (Some!11623 (_2!29553 lt!1786872))))))

(declare-fun b!4628323 () Bool)

(assert (=> b!4628323 (= e!2887141 (contains!14638 (toList!5001 lt!1787323) lt!1786872))))

(assert (= (and d!1458205 res!1941359) b!4628322))

(assert (= (and b!4628322 res!1941358) b!4628323))

(declare-fun m!5473697 () Bool)

(assert (=> d!1458205 m!5473697))

(declare-fun m!5473699 () Bool)

(assert (=> d!1458205 m!5473699))

(declare-fun m!5473701 () Bool)

(assert (=> d!1458205 m!5473701))

(declare-fun m!5473703 () Bool)

(assert (=> d!1458205 m!5473703))

(declare-fun m!5473705 () Bool)

(assert (=> b!4628322 m!5473705))

(declare-fun m!5473707 () Bool)

(assert (=> b!4628323 m!5473707))

(assert (=> b!4627963 d!1458205))

(declare-fun bs!1025369 () Bool)

(declare-fun d!1458207 () Bool)

(assert (= bs!1025369 (and d!1458207 b!4627978)))

(declare-fun lambda!192890 () Int)

(assert (=> bs!1025369 (= lambda!192890 lambda!192768)))

(declare-fun bs!1025370 () Bool)

(assert (= bs!1025370 (and d!1458207 d!1458051)))

(assert (=> bs!1025370 (= lambda!192890 lambda!192774)))

(declare-fun bs!1025371 () Bool)

(assert (= bs!1025371 (and d!1458207 d!1458053)))

(assert (=> bs!1025371 (= lambda!192890 lambda!192795)))

(declare-fun bs!1025372 () Bool)

(assert (= bs!1025372 (and d!1458207 d!1458189)))

(assert (=> bs!1025372 (= lambda!192890 lambda!192889)))

(declare-fun lt!1787326 () ListMap!4305)

(assert (=> d!1458207 (invariantList!1214 (toList!5001 lt!1787326))))

(declare-fun e!2887142 () ListMap!4305)

(assert (=> d!1458207 (= lt!1787326 e!2887142)))

(declare-fun c!792232 () Bool)

(assert (=> d!1458207 (= c!792232 ((_ is Cons!51569) (Cons!51569 (tuple2!52521 hash!414 lt!1786873) Nil!51569)))))

(assert (=> d!1458207 (forall!10842 (Cons!51569 (tuple2!52521 hash!414 lt!1786873) Nil!51569) lambda!192890)))

(assert (=> d!1458207 (= (extractMap!1574 (Cons!51569 (tuple2!52521 hash!414 lt!1786873) Nil!51569)) lt!1787326)))

(declare-fun b!4628324 () Bool)

(assert (=> b!4628324 (= e!2887142 (addToMapMapFromBucket!979 (_2!29554 (h!57629 (Cons!51569 (tuple2!52521 hash!414 lt!1786873) Nil!51569))) (extractMap!1574 (t!358735 (Cons!51569 (tuple2!52521 hash!414 lt!1786873) Nil!51569)))))))

(declare-fun b!4628325 () Bool)

(assert (=> b!4628325 (= e!2887142 (ListMap!4306 Nil!51568))))

(assert (= (and d!1458207 c!792232) b!4628324))

(assert (= (and d!1458207 (not c!792232)) b!4628325))

(declare-fun m!5473709 () Bool)

(assert (=> d!1458207 m!5473709))

(declare-fun m!5473711 () Bool)

(assert (=> d!1458207 m!5473711))

(declare-fun m!5473713 () Bool)

(assert (=> b!4628324 m!5473713))

(assert (=> b!4628324 m!5473713))

(declare-fun m!5473715 () Bool)

(assert (=> b!4628324 m!5473715))

(assert (=> b!4627963 d!1458207))

(declare-fun bs!1025373 () Bool)

(declare-fun d!1458209 () Bool)

(assert (= bs!1025373 (and d!1458209 d!1458051)))

(declare-fun lambda!192891 () Int)

(assert (=> bs!1025373 (= lambda!192891 lambda!192774)))

(declare-fun bs!1025374 () Bool)

(assert (= bs!1025374 (and d!1458209 d!1458207)))

(assert (=> bs!1025374 (= lambda!192891 lambda!192890)))

(declare-fun bs!1025375 () Bool)

(assert (= bs!1025375 (and d!1458209 b!4627978)))

(assert (=> bs!1025375 (= lambda!192891 lambda!192768)))

(declare-fun bs!1025376 () Bool)

(assert (= bs!1025376 (and d!1458209 d!1458053)))

(assert (=> bs!1025376 (= lambda!192891 lambda!192795)))

(declare-fun bs!1025377 () Bool)

(assert (= bs!1025377 (and d!1458209 d!1458189)))

(assert (=> bs!1025377 (= lambda!192891 lambda!192889)))

(declare-fun lt!1787327 () ListMap!4305)

(assert (=> d!1458209 (invariantList!1214 (toList!5001 lt!1787327))))

(declare-fun e!2887143 () ListMap!4305)

(assert (=> d!1458209 (= lt!1787327 e!2887143)))

(declare-fun c!792233 () Bool)

(assert (=> d!1458209 (= c!792233 ((_ is Cons!51569) (Cons!51569 (tuple2!52521 hash!414 newBucket!224) Nil!51569)))))

(assert (=> d!1458209 (forall!10842 (Cons!51569 (tuple2!52521 hash!414 newBucket!224) Nil!51569) lambda!192891)))

(assert (=> d!1458209 (= (extractMap!1574 (Cons!51569 (tuple2!52521 hash!414 newBucket!224) Nil!51569)) lt!1787327)))

(declare-fun b!4628326 () Bool)

(assert (=> b!4628326 (= e!2887143 (addToMapMapFromBucket!979 (_2!29554 (h!57629 (Cons!51569 (tuple2!52521 hash!414 newBucket!224) Nil!51569))) (extractMap!1574 (t!358735 (Cons!51569 (tuple2!52521 hash!414 newBucket!224) Nil!51569)))))))

(declare-fun b!4628327 () Bool)

(assert (=> b!4628327 (= e!2887143 (ListMap!4306 Nil!51568))))

(assert (= (and d!1458209 c!792233) b!4628326))

(assert (= (and d!1458209 (not c!792233)) b!4628327))

(declare-fun m!5473717 () Bool)

(assert (=> d!1458209 m!5473717))

(declare-fun m!5473719 () Bool)

(assert (=> d!1458209 m!5473719))

(declare-fun m!5473721 () Bool)

(assert (=> b!4628326 m!5473721))

(assert (=> b!4628326 m!5473721))

(declare-fun m!5473723 () Bool)

(assert (=> b!4628326 m!5473723))

(assert (=> b!4627963 d!1458209))

(declare-fun b!4628328 () Bool)

(declare-fun e!2887145 () List!51692)

(assert (=> b!4628328 (= e!2887145 (t!358734 lt!1786871))))

(declare-fun b!4628329 () Bool)

(declare-fun e!2887144 () List!51692)

(assert (=> b!4628329 (= e!2887145 e!2887144)))

(declare-fun c!792234 () Bool)

(assert (=> b!4628329 (= c!792234 ((_ is Cons!51568) lt!1786871))))

(declare-fun b!4628330 () Bool)

(assert (=> b!4628330 (= e!2887144 (Cons!51568 (h!57628 lt!1786871) (removePairForKey!1141 (t!358734 lt!1786871) key!4968)))))

(declare-fun b!4628331 () Bool)

(assert (=> b!4628331 (= e!2887144 Nil!51568)))

(declare-fun d!1458211 () Bool)

(declare-fun lt!1787328 () List!51692)

(assert (=> d!1458211 (not (containsKey!2478 lt!1787328 key!4968))))

(assert (=> d!1458211 (= lt!1787328 e!2887145)))

(declare-fun c!792235 () Bool)

(assert (=> d!1458211 (= c!792235 (and ((_ is Cons!51568) lt!1786871) (= (_1!29553 (h!57628 lt!1786871)) key!4968)))))

(assert (=> d!1458211 (noDuplicateKeys!1518 lt!1786871)))

(assert (=> d!1458211 (= (removePairForKey!1141 lt!1786871 key!4968) lt!1787328)))

(assert (= (and d!1458211 c!792235) b!4628328))

(assert (= (and d!1458211 (not c!792235)) b!4628329))

(assert (= (and b!4628329 c!792234) b!4628330))

(assert (= (and b!4628329 (not c!792234)) b!4628331))

(declare-fun m!5473725 () Bool)

(assert (=> b!4628330 m!5473725))

(declare-fun m!5473727 () Bool)

(assert (=> d!1458211 m!5473727))

(declare-fun m!5473729 () Bool)

(assert (=> d!1458211 m!5473729))

(assert (=> b!4627972 d!1458211))

(declare-fun d!1458213 () Bool)

(assert (=> d!1458213 (= (tail!8153 newBucket!224) (t!358734 newBucket!224))))

(assert (=> b!4627972 d!1458213))

(declare-fun d!1458215 () Bool)

(assert (=> d!1458215 (= (tail!8153 oldBucket!40) (t!358734 oldBucket!40))))

(assert (=> b!4627972 d!1458215))

(declare-fun bs!1025378 () Bool)

(declare-fun d!1458217 () Bool)

(assert (= bs!1025378 (and d!1458217 d!1458051)))

(declare-fun lambda!192894 () Int)

(assert (=> bs!1025378 (= lambda!192894 lambda!192774)))

(declare-fun bs!1025379 () Bool)

(assert (= bs!1025379 (and d!1458217 d!1458207)))

(assert (=> bs!1025379 (= lambda!192894 lambda!192890)))

(declare-fun bs!1025380 () Bool)

(assert (= bs!1025380 (and d!1458217 d!1458209)))

(assert (=> bs!1025380 (= lambda!192894 lambda!192891)))

(declare-fun bs!1025381 () Bool)

(assert (= bs!1025381 (and d!1458217 b!4627978)))

(assert (=> bs!1025381 (= lambda!192894 lambda!192768)))

(declare-fun bs!1025382 () Bool)

(assert (= bs!1025382 (and d!1458217 d!1458053)))

(assert (=> bs!1025382 (= lambda!192894 lambda!192795)))

(declare-fun bs!1025383 () Bool)

(assert (= bs!1025383 (and d!1458217 d!1458189)))

(assert (=> bs!1025383 (= lambda!192894 lambda!192889)))

(assert (=> d!1458217 (contains!14633 (extractMap!1574 (toList!5002 (ListLongMap!3592 lt!1786874))) key!4968)))

(declare-fun lt!1787331 () Unit!112636)

(declare-fun choose!31402 (ListLongMap!3591 K!12945 Hashable!5915) Unit!112636)

(assert (=> d!1458217 (= lt!1787331 (choose!31402 (ListLongMap!3592 lt!1786874) key!4968 hashF!1389))))

(assert (=> d!1458217 (forall!10842 (toList!5002 (ListLongMap!3592 lt!1786874)) lambda!192894)))

(assert (=> d!1458217 (= (lemmaListContainsThenExtractedMapContains!336 (ListLongMap!3592 lt!1786874) key!4968 hashF!1389) lt!1787331)))

(declare-fun bs!1025384 () Bool)

(assert (= bs!1025384 d!1458217))

(declare-fun m!5473731 () Bool)

(assert (=> bs!1025384 m!5473731))

(assert (=> bs!1025384 m!5473731))

(declare-fun m!5473733 () Bool)

(assert (=> bs!1025384 m!5473733))

(declare-fun m!5473735 () Bool)

(assert (=> bs!1025384 m!5473735))

(declare-fun m!5473737 () Bool)

(assert (=> bs!1025384 m!5473737))

(assert (=> b!4627965 d!1458217))

(declare-fun d!1458219 () Bool)

(declare-fun e!2887146 () Bool)

(assert (=> d!1458219 e!2887146))

(declare-fun res!1941361 () Bool)

(assert (=> d!1458219 (=> (not res!1941361) (not e!2887146))))

(declare-fun lt!1787333 () ListMap!4305)

(assert (=> d!1458219 (= res!1941361 (contains!14633 lt!1787333 (_1!29553 lt!1786868)))))

(declare-fun lt!1787334 () List!51692)

(assert (=> d!1458219 (= lt!1787333 (ListMap!4306 lt!1787334))))

(declare-fun lt!1787332 () Unit!112636)

(declare-fun lt!1787335 () Unit!112636)

(assert (=> d!1458219 (= lt!1787332 lt!1787335)))

(assert (=> d!1458219 (= (getValueByKey!1472 lt!1787334 (_1!29553 lt!1786868)) (Some!11623 (_2!29553 lt!1786868)))))

(assert (=> d!1458219 (= lt!1787335 (lemmaContainsTupThenGetReturnValue!858 lt!1787334 (_1!29553 lt!1786868) (_2!29553 lt!1786868)))))

(assert (=> d!1458219 (= lt!1787334 (insertNoDuplicatedKeys!366 (toList!5001 (addToMapMapFromBucket!979 lt!1786871 (ListMap!4306 Nil!51568))) (_1!29553 lt!1786868) (_2!29553 lt!1786868)))))

(assert (=> d!1458219 (= (+!1884 (addToMapMapFromBucket!979 lt!1786871 (ListMap!4306 Nil!51568)) lt!1786868) lt!1787333)))

(declare-fun b!4628332 () Bool)

(declare-fun res!1941360 () Bool)

(assert (=> b!4628332 (=> (not res!1941360) (not e!2887146))))

(assert (=> b!4628332 (= res!1941360 (= (getValueByKey!1472 (toList!5001 lt!1787333) (_1!29553 lt!1786868)) (Some!11623 (_2!29553 lt!1786868))))))

(declare-fun b!4628333 () Bool)

(assert (=> b!4628333 (= e!2887146 (contains!14638 (toList!5001 lt!1787333) lt!1786868))))

(assert (= (and d!1458219 res!1941361) b!4628332))

(assert (= (and b!4628332 res!1941360) b!4628333))

(declare-fun m!5473739 () Bool)

(assert (=> d!1458219 m!5473739))

(declare-fun m!5473741 () Bool)

(assert (=> d!1458219 m!5473741))

(declare-fun m!5473743 () Bool)

(assert (=> d!1458219 m!5473743))

(declare-fun m!5473745 () Bool)

(assert (=> d!1458219 m!5473745))

(declare-fun m!5473747 () Bool)

(assert (=> b!4628332 m!5473747))

(declare-fun m!5473749 () Bool)

(assert (=> b!4628333 m!5473749))

(assert (=> b!4627965 d!1458219))

(declare-fun bs!1025385 () Bool)

(declare-fun d!1458221 () Bool)

(assert (= bs!1025385 (and d!1458221 d!1458051)))

(declare-fun lambda!192895 () Int)

(assert (=> bs!1025385 (= lambda!192895 lambda!192774)))

(declare-fun bs!1025386 () Bool)

(assert (= bs!1025386 (and d!1458221 d!1458207)))

(assert (=> bs!1025386 (= lambda!192895 lambda!192890)))

(declare-fun bs!1025387 () Bool)

(assert (= bs!1025387 (and d!1458221 d!1458209)))

(assert (=> bs!1025387 (= lambda!192895 lambda!192891)))

(declare-fun bs!1025388 () Bool)

(assert (= bs!1025388 (and d!1458221 b!4627978)))

(assert (=> bs!1025388 (= lambda!192895 lambda!192768)))

(declare-fun bs!1025389 () Bool)

(assert (= bs!1025389 (and d!1458221 d!1458189)))

(assert (=> bs!1025389 (= lambda!192895 lambda!192889)))

(declare-fun bs!1025390 () Bool)

(assert (= bs!1025390 (and d!1458221 d!1458217)))

(assert (=> bs!1025390 (= lambda!192895 lambda!192894)))

(declare-fun bs!1025391 () Bool)

(assert (= bs!1025391 (and d!1458221 d!1458053)))

(assert (=> bs!1025391 (= lambda!192895 lambda!192795)))

(declare-fun lt!1787336 () ListMap!4305)

(assert (=> d!1458221 (invariantList!1214 (toList!5001 lt!1787336))))

(declare-fun e!2887147 () ListMap!4305)

(assert (=> d!1458221 (= lt!1787336 e!2887147)))

(declare-fun c!792236 () Bool)

(assert (=> d!1458221 (= c!792236 ((_ is Cons!51569) lt!1786874))))

(assert (=> d!1458221 (forall!10842 lt!1786874 lambda!192895)))

(assert (=> d!1458221 (= (extractMap!1574 lt!1786874) lt!1787336)))

(declare-fun b!4628334 () Bool)

(assert (=> b!4628334 (= e!2887147 (addToMapMapFromBucket!979 (_2!29554 (h!57629 lt!1786874)) (extractMap!1574 (t!358735 lt!1786874))))))

(declare-fun b!4628335 () Bool)

(assert (=> b!4628335 (= e!2887147 (ListMap!4306 Nil!51568))))

(assert (= (and d!1458221 c!792236) b!4628334))

(assert (= (and d!1458221 (not c!792236)) b!4628335))

(declare-fun m!5473751 () Bool)

(assert (=> d!1458221 m!5473751))

(declare-fun m!5473753 () Bool)

(assert (=> d!1458221 m!5473753))

(declare-fun m!5473755 () Bool)

(assert (=> b!4628334 m!5473755))

(assert (=> b!4628334 m!5473755))

(declare-fun m!5473757 () Bool)

(assert (=> b!4628334 m!5473757))

(assert (=> b!4627965 d!1458221))

(declare-fun d!1458223 () Bool)

(assert (=> d!1458223 (= (head!9652 oldBucket!40) (h!57628 oldBucket!40))))

(assert (=> b!4627965 d!1458223))

(declare-fun bs!1025392 () Bool)

(declare-fun d!1458225 () Bool)

(assert (= bs!1025392 (and d!1458225 d!1458221)))

(declare-fun lambda!192896 () Int)

(assert (=> bs!1025392 (= lambda!192896 lambda!192895)))

(declare-fun bs!1025393 () Bool)

(assert (= bs!1025393 (and d!1458225 d!1458051)))

(assert (=> bs!1025393 (= lambda!192896 lambda!192774)))

(declare-fun bs!1025394 () Bool)

(assert (= bs!1025394 (and d!1458225 d!1458207)))

(assert (=> bs!1025394 (= lambda!192896 lambda!192890)))

(declare-fun bs!1025395 () Bool)

(assert (= bs!1025395 (and d!1458225 d!1458209)))

(assert (=> bs!1025395 (= lambda!192896 lambda!192891)))

(declare-fun bs!1025396 () Bool)

(assert (= bs!1025396 (and d!1458225 b!4627978)))

(assert (=> bs!1025396 (= lambda!192896 lambda!192768)))

(declare-fun bs!1025397 () Bool)

(assert (= bs!1025397 (and d!1458225 d!1458189)))

(assert (=> bs!1025397 (= lambda!192896 lambda!192889)))

(declare-fun bs!1025398 () Bool)

(assert (= bs!1025398 (and d!1458225 d!1458217)))

(assert (=> bs!1025398 (= lambda!192896 lambda!192894)))

(declare-fun bs!1025399 () Bool)

(assert (= bs!1025399 (and d!1458225 d!1458053)))

(assert (=> bs!1025399 (= lambda!192896 lambda!192795)))

(declare-fun lt!1787337 () ListMap!4305)

(assert (=> d!1458225 (invariantList!1214 (toList!5001 lt!1787337))))

(declare-fun e!2887148 () ListMap!4305)

(assert (=> d!1458225 (= lt!1787337 e!2887148)))

(declare-fun c!792237 () Bool)

(assert (=> d!1458225 (= c!792237 ((_ is Cons!51569) (Cons!51569 (tuple2!52521 hash!414 lt!1786871) Nil!51569)))))

(assert (=> d!1458225 (forall!10842 (Cons!51569 (tuple2!52521 hash!414 lt!1786871) Nil!51569) lambda!192896)))

(assert (=> d!1458225 (= (extractMap!1574 (Cons!51569 (tuple2!52521 hash!414 lt!1786871) Nil!51569)) lt!1787337)))

(declare-fun b!4628336 () Bool)

(assert (=> b!4628336 (= e!2887148 (addToMapMapFromBucket!979 (_2!29554 (h!57629 (Cons!51569 (tuple2!52521 hash!414 lt!1786871) Nil!51569))) (extractMap!1574 (t!358735 (Cons!51569 (tuple2!52521 hash!414 lt!1786871) Nil!51569)))))))

(declare-fun b!4628337 () Bool)

(assert (=> b!4628337 (= e!2887148 (ListMap!4306 Nil!51568))))

(assert (= (and d!1458225 c!792237) b!4628336))

(assert (= (and d!1458225 (not c!792237)) b!4628337))

(declare-fun m!5473759 () Bool)

(assert (=> d!1458225 m!5473759))

(declare-fun m!5473761 () Bool)

(assert (=> d!1458225 m!5473761))

(declare-fun m!5473763 () Bool)

(assert (=> b!4628336 m!5473763))

(assert (=> b!4628336 m!5473763))

(declare-fun m!5473765 () Bool)

(assert (=> b!4628336 m!5473765))

(assert (=> b!4627965 d!1458225))

(declare-fun d!1458227 () Bool)

(assert (=> d!1458227 (eq!833 (addToMapMapFromBucket!979 (Cons!51568 lt!1786872 lt!1786873) (ListMap!4306 Nil!51568)) (+!1884 (addToMapMapFromBucket!979 lt!1786873 (ListMap!4306 Nil!51568)) lt!1786872))))

(declare-fun lt!1787340 () Unit!112636)

(declare-fun choose!31403 (tuple2!52518 List!51692 ListMap!4305) Unit!112636)

(assert (=> d!1458227 (= lt!1787340 (choose!31403 lt!1786872 lt!1786873 (ListMap!4306 Nil!51568)))))

(assert (=> d!1458227 (noDuplicateKeys!1518 lt!1786873)))

(assert (=> d!1458227 (= (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!84 lt!1786872 lt!1786873 (ListMap!4306 Nil!51568)) lt!1787340)))

(declare-fun bs!1025400 () Bool)

(assert (= bs!1025400 d!1458227))

(declare-fun m!5473767 () Bool)

(assert (=> bs!1025400 m!5473767))

(assert (=> bs!1025400 m!5472937))

(assert (=> bs!1025400 m!5472945))

(assert (=> bs!1025400 m!5472947))

(declare-fun m!5473769 () Bool)

(assert (=> bs!1025400 m!5473769))

(assert (=> bs!1025400 m!5472923))

(assert (=> bs!1025400 m!5472923))

(assert (=> bs!1025400 m!5472945))

(assert (=> bs!1025400 m!5472937))

(assert (=> b!4627965 d!1458227))

(declare-fun d!1458229 () Bool)

(assert (=> d!1458229 (= (eq!833 lt!1786878 (+!1884 (extractMap!1574 (Cons!51569 (tuple2!52521 hash!414 lt!1786871) Nil!51569)) (h!57628 oldBucket!40))) (= (content!8828 (toList!5001 lt!1786878)) (content!8828 (toList!5001 (+!1884 (extractMap!1574 (Cons!51569 (tuple2!52521 hash!414 lt!1786871) Nil!51569)) (h!57628 oldBucket!40))))))))

(declare-fun bs!1025401 () Bool)

(assert (= bs!1025401 d!1458229))

(declare-fun m!5473771 () Bool)

(assert (=> bs!1025401 m!5473771))

(declare-fun m!5473773 () Bool)

(assert (=> bs!1025401 m!5473773))

(assert (=> b!4627965 d!1458229))

(declare-fun d!1458231 () Bool)

(declare-fun e!2887149 () Bool)

(assert (=> d!1458231 e!2887149))

(declare-fun res!1941363 () Bool)

(assert (=> d!1458231 (=> (not res!1941363) (not e!2887149))))

(declare-fun lt!1787342 () ListMap!4305)

(assert (=> d!1458231 (= res!1941363 (contains!14633 lt!1787342 (_1!29553 lt!1786872)))))

(declare-fun lt!1787343 () List!51692)

(assert (=> d!1458231 (= lt!1787342 (ListMap!4306 lt!1787343))))

(declare-fun lt!1787341 () Unit!112636)

(declare-fun lt!1787344 () Unit!112636)

(assert (=> d!1458231 (= lt!1787341 lt!1787344)))

(assert (=> d!1458231 (= (getValueByKey!1472 lt!1787343 (_1!29553 lt!1786872)) (Some!11623 (_2!29553 lt!1786872)))))

(assert (=> d!1458231 (= lt!1787344 (lemmaContainsTupThenGetReturnValue!858 lt!1787343 (_1!29553 lt!1786872) (_2!29553 lt!1786872)))))

(assert (=> d!1458231 (= lt!1787343 (insertNoDuplicatedKeys!366 (toList!5001 (addToMapMapFromBucket!979 lt!1786873 (ListMap!4306 Nil!51568))) (_1!29553 lt!1786872) (_2!29553 lt!1786872)))))

(assert (=> d!1458231 (= (+!1884 (addToMapMapFromBucket!979 lt!1786873 (ListMap!4306 Nil!51568)) lt!1786872) lt!1787342)))

(declare-fun b!4628338 () Bool)

(declare-fun res!1941362 () Bool)

(assert (=> b!4628338 (=> (not res!1941362) (not e!2887149))))

(assert (=> b!4628338 (= res!1941362 (= (getValueByKey!1472 (toList!5001 lt!1787342) (_1!29553 lt!1786872)) (Some!11623 (_2!29553 lt!1786872))))))

(declare-fun b!4628339 () Bool)

(assert (=> b!4628339 (= e!2887149 (contains!14638 (toList!5001 lt!1787342) lt!1786872))))

(assert (= (and d!1458231 res!1941363) b!4628338))

(assert (= (and b!4628338 res!1941362) b!4628339))

(declare-fun m!5473775 () Bool)

(assert (=> d!1458231 m!5473775))

(declare-fun m!5473777 () Bool)

(assert (=> d!1458231 m!5473777))

(declare-fun m!5473779 () Bool)

(assert (=> d!1458231 m!5473779))

(declare-fun m!5473781 () Bool)

(assert (=> d!1458231 m!5473781))

(declare-fun m!5473783 () Bool)

(assert (=> b!4628338 m!5473783))

(declare-fun m!5473785 () Bool)

(assert (=> b!4628339 m!5473785))

(assert (=> b!4627965 d!1458231))

(declare-fun d!1458233 () Bool)

(assert (=> d!1458233 (= (eq!833 (addToMapMapFromBucket!979 (Cons!51568 lt!1786872 lt!1786873) (ListMap!4306 Nil!51568)) (+!1884 (addToMapMapFromBucket!979 lt!1786873 (ListMap!4306 Nil!51568)) lt!1786872)) (= (content!8828 (toList!5001 (addToMapMapFromBucket!979 (Cons!51568 lt!1786872 lt!1786873) (ListMap!4306 Nil!51568)))) (content!8828 (toList!5001 (+!1884 (addToMapMapFromBucket!979 lt!1786873 (ListMap!4306 Nil!51568)) lt!1786872)))))))

(declare-fun bs!1025402 () Bool)

(assert (= bs!1025402 d!1458233))

(declare-fun m!5473787 () Bool)

(assert (=> bs!1025402 m!5473787))

(declare-fun m!5473789 () Bool)

(assert (=> bs!1025402 m!5473789))

(assert (=> b!4627965 d!1458233))

(declare-fun bs!1025403 () Bool)

(declare-fun b!4628342 () Bool)

(assert (= bs!1025403 (and b!4628342 b!4628260)))

(declare-fun lambda!192897 () Int)

(assert (=> bs!1025403 (= (= (ListMap!4306 Nil!51568) lt!1786866) (= lambda!192897 lambda!192876))))

(declare-fun bs!1025404 () Bool)

(assert (= bs!1025404 (and b!4628342 b!4628262)))

(assert (=> bs!1025404 (= (= (ListMap!4306 Nil!51568) lt!1786866) (= lambda!192897 lambda!192878))))

(declare-fun bs!1025405 () Bool)

(assert (= bs!1025405 (and b!4628342 d!1458111)))

(assert (=> bs!1025405 (not (= lambda!192897 lambda!192798))))

(declare-fun bs!1025406 () Bool)

(assert (= bs!1025406 (and b!4628342 d!1458123)))

(assert (=> bs!1025406 (= (= (ListMap!4306 Nil!51568) lt!1787261) (= lambda!192897 lambda!192881))))

(assert (=> bs!1025404 (= (= (ListMap!4306 Nil!51568) lt!1787264) (= lambda!192897 lambda!192879))))

(assert (=> b!4628342 true))

(declare-fun bs!1025407 () Bool)

(declare-fun b!4628344 () Bool)

(assert (= bs!1025407 (and b!4628344 b!4628260)))

(declare-fun lambda!192898 () Int)

(assert (=> bs!1025407 (= (= (ListMap!4306 Nil!51568) lt!1786866) (= lambda!192898 lambda!192876))))

(declare-fun bs!1025408 () Bool)

(assert (= bs!1025408 (and b!4628344 b!4628262)))

(assert (=> bs!1025408 (= (= (ListMap!4306 Nil!51568) lt!1786866) (= lambda!192898 lambda!192878))))

(declare-fun bs!1025409 () Bool)

(assert (= bs!1025409 (and b!4628344 b!4628342)))

(assert (=> bs!1025409 (= lambda!192898 lambda!192897)))

(declare-fun bs!1025410 () Bool)

(assert (= bs!1025410 (and b!4628344 d!1458111)))

(assert (=> bs!1025410 (not (= lambda!192898 lambda!192798))))

(declare-fun bs!1025411 () Bool)

(assert (= bs!1025411 (and b!4628344 d!1458123)))

(assert (=> bs!1025411 (= (= (ListMap!4306 Nil!51568) lt!1787261) (= lambda!192898 lambda!192881))))

(assert (=> bs!1025408 (= (= (ListMap!4306 Nil!51568) lt!1787264) (= lambda!192898 lambda!192879))))

(assert (=> b!4628344 true))

(declare-fun lt!1787349 () ListMap!4305)

(declare-fun lambda!192899 () Int)

(assert (=> bs!1025407 (= (= lt!1787349 lt!1786866) (= lambda!192899 lambda!192876))))

(assert (=> b!4628344 (= (= lt!1787349 (ListMap!4306 Nil!51568)) (= lambda!192899 lambda!192898))))

(assert (=> bs!1025408 (= (= lt!1787349 lt!1786866) (= lambda!192899 lambda!192878))))

(assert (=> bs!1025409 (= (= lt!1787349 (ListMap!4306 Nil!51568)) (= lambda!192899 lambda!192897))))

(assert (=> bs!1025410 (not (= lambda!192899 lambda!192798))))

(assert (=> bs!1025411 (= (= lt!1787349 lt!1787261) (= lambda!192899 lambda!192881))))

(assert (=> bs!1025408 (= (= lt!1787349 lt!1787264) (= lambda!192899 lambda!192879))))

(assert (=> b!4628344 true))

(declare-fun bs!1025412 () Bool)

(declare-fun d!1458235 () Bool)

(assert (= bs!1025412 (and d!1458235 b!4628260)))

(declare-fun lt!1787346 () ListMap!4305)

(declare-fun lambda!192900 () Int)

(assert (=> bs!1025412 (= (= lt!1787346 lt!1786866) (= lambda!192900 lambda!192876))))

(declare-fun bs!1025413 () Bool)

(assert (= bs!1025413 (and d!1458235 b!4628344)))

(assert (=> bs!1025413 (= (= lt!1787346 (ListMap!4306 Nil!51568)) (= lambda!192900 lambda!192898))))

(declare-fun bs!1025414 () Bool)

(assert (= bs!1025414 (and d!1458235 b!4628262)))

(assert (=> bs!1025414 (= (= lt!1787346 lt!1786866) (= lambda!192900 lambda!192878))))

(declare-fun bs!1025415 () Bool)

(assert (= bs!1025415 (and d!1458235 b!4628342)))

(assert (=> bs!1025415 (= (= lt!1787346 (ListMap!4306 Nil!51568)) (= lambda!192900 lambda!192897))))

(declare-fun bs!1025416 () Bool)

(assert (= bs!1025416 (and d!1458235 d!1458111)))

(assert (=> bs!1025416 (not (= lambda!192900 lambda!192798))))

(declare-fun bs!1025417 () Bool)

(assert (= bs!1025417 (and d!1458235 d!1458123)))

(assert (=> bs!1025417 (= (= lt!1787346 lt!1787261) (= lambda!192900 lambda!192881))))

(assert (=> bs!1025414 (= (= lt!1787346 lt!1787264) (= lambda!192900 lambda!192879))))

(assert (=> bs!1025413 (= (= lt!1787346 lt!1787349) (= lambda!192900 lambda!192899))))

(assert (=> d!1458235 true))

(declare-fun b!4628340 () Bool)

(declare-fun e!2887151 () Bool)

(assert (=> b!4628340 (= e!2887151 (invariantList!1214 (toList!5001 lt!1787346)))))

(declare-fun c!792238 () Bool)

(declare-fun call!322886 () Bool)

(declare-fun bm!322881 () Bool)

(assert (=> bm!322881 (= call!322886 (forall!10844 (ite c!792238 (toList!5001 (ListMap!4306 Nil!51568)) (Cons!51568 lt!1786872 lt!1786873)) (ite c!792238 lambda!192897 lambda!192899)))))

(declare-fun bm!322882 () Bool)

(declare-fun call!322887 () Unit!112636)

(assert (=> bm!322882 (= call!322887 (lemmaContainsAllItsOwnKeys!516 (ListMap!4306 Nil!51568)))))

(declare-fun e!2887152 () ListMap!4305)

(assert (=> b!4628342 (= e!2887152 (ListMap!4306 Nil!51568))))

(declare-fun lt!1787359 () Unit!112636)

(assert (=> b!4628342 (= lt!1787359 call!322887)))

(assert (=> b!4628342 call!322886))

(declare-fun lt!1787348 () Unit!112636)

(assert (=> b!4628342 (= lt!1787348 lt!1787359)))

(declare-fun call!322888 () Bool)

(assert (=> b!4628342 call!322888))

(declare-fun lt!1787364 () Unit!112636)

(declare-fun Unit!112699 () Unit!112636)

(assert (=> b!4628342 (= lt!1787364 Unit!112699)))

(declare-fun bm!322883 () Bool)

(assert (=> bm!322883 (= call!322888 (forall!10844 (ite c!792238 (toList!5001 (ListMap!4306 Nil!51568)) (t!358734 (Cons!51568 lt!1786872 lt!1786873))) (ite c!792238 lambda!192897 lambda!192899)))))

(declare-fun b!4628343 () Bool)

(declare-fun e!2887150 () Bool)

(assert (=> b!4628343 (= e!2887150 (forall!10844 (toList!5001 (ListMap!4306 Nil!51568)) lambda!192899))))

(assert (=> b!4628344 (= e!2887152 lt!1787349)))

(declare-fun lt!1787347 () ListMap!4305)

(assert (=> b!4628344 (= lt!1787347 (+!1884 (ListMap!4306 Nil!51568) (h!57628 (Cons!51568 lt!1786872 lt!1786873))))))

(assert (=> b!4628344 (= lt!1787349 (addToMapMapFromBucket!979 (t!358734 (Cons!51568 lt!1786872 lt!1786873)) (+!1884 (ListMap!4306 Nil!51568) (h!57628 (Cons!51568 lt!1786872 lt!1786873)))))))

(declare-fun lt!1787358 () Unit!112636)

(assert (=> b!4628344 (= lt!1787358 call!322887)))

(assert (=> b!4628344 (forall!10844 (toList!5001 (ListMap!4306 Nil!51568)) lambda!192898)))

(declare-fun lt!1787365 () Unit!112636)

(assert (=> b!4628344 (= lt!1787365 lt!1787358)))

(assert (=> b!4628344 (forall!10844 (toList!5001 lt!1787347) lambda!192899)))

(declare-fun lt!1787362 () Unit!112636)

(declare-fun Unit!112700 () Unit!112636)

(assert (=> b!4628344 (= lt!1787362 Unit!112700)))

(assert (=> b!4628344 call!322888))

(declare-fun lt!1787357 () Unit!112636)

(declare-fun Unit!112701 () Unit!112636)

(assert (=> b!4628344 (= lt!1787357 Unit!112701)))

(declare-fun lt!1787353 () Unit!112636)

(declare-fun Unit!112702 () Unit!112636)

(assert (=> b!4628344 (= lt!1787353 Unit!112702)))

(declare-fun lt!1787345 () Unit!112636)

(assert (=> b!4628344 (= lt!1787345 (forallContained!3074 (toList!5001 lt!1787347) lambda!192899 (h!57628 (Cons!51568 lt!1786872 lt!1786873))))))

(assert (=> b!4628344 (contains!14633 lt!1787347 (_1!29553 (h!57628 (Cons!51568 lt!1786872 lt!1786873))))))

(declare-fun lt!1787351 () Unit!112636)

(declare-fun Unit!112703 () Unit!112636)

(assert (=> b!4628344 (= lt!1787351 Unit!112703)))

(assert (=> b!4628344 (contains!14633 lt!1787349 (_1!29553 (h!57628 (Cons!51568 lt!1786872 lt!1786873))))))

(declare-fun lt!1787354 () Unit!112636)

(declare-fun Unit!112704 () Unit!112636)

(assert (=> b!4628344 (= lt!1787354 Unit!112704)))

(assert (=> b!4628344 (forall!10844 (Cons!51568 lt!1786872 lt!1786873) lambda!192899)))

(declare-fun lt!1787356 () Unit!112636)

(declare-fun Unit!112705 () Unit!112636)

(assert (=> b!4628344 (= lt!1787356 Unit!112705)))

(assert (=> b!4628344 (forall!10844 (toList!5001 lt!1787347) lambda!192899)))

(declare-fun lt!1787355 () Unit!112636)

(declare-fun Unit!112706 () Unit!112636)

(assert (=> b!4628344 (= lt!1787355 Unit!112706)))

(declare-fun lt!1787350 () Unit!112636)

(declare-fun Unit!112707 () Unit!112636)

(assert (=> b!4628344 (= lt!1787350 Unit!112707)))

(declare-fun lt!1787352 () Unit!112636)

(assert (=> b!4628344 (= lt!1787352 (addForallContainsKeyThenBeforeAdding!515 (ListMap!4306 Nil!51568) lt!1787349 (_1!29553 (h!57628 (Cons!51568 lt!1786872 lt!1786873))) (_2!29553 (h!57628 (Cons!51568 lt!1786872 lt!1786873)))))))

(assert (=> b!4628344 (forall!10844 (toList!5001 (ListMap!4306 Nil!51568)) lambda!192899)))

(declare-fun lt!1787363 () Unit!112636)

(assert (=> b!4628344 (= lt!1787363 lt!1787352)))

(assert (=> b!4628344 (forall!10844 (toList!5001 (ListMap!4306 Nil!51568)) lambda!192899)))

(declare-fun lt!1787361 () Unit!112636)

(declare-fun Unit!112708 () Unit!112636)

(assert (=> b!4628344 (= lt!1787361 Unit!112708)))

(declare-fun res!1941366 () Bool)

(assert (=> b!4628344 (= res!1941366 call!322886)))

(assert (=> b!4628344 (=> (not res!1941366) (not e!2887150))))

(assert (=> b!4628344 e!2887150))

(declare-fun lt!1787360 () Unit!112636)

(declare-fun Unit!112709 () Unit!112636)

(assert (=> b!4628344 (= lt!1787360 Unit!112709)))

(assert (=> d!1458235 e!2887151))

(declare-fun res!1941365 () Bool)

(assert (=> d!1458235 (=> (not res!1941365) (not e!2887151))))

(assert (=> d!1458235 (= res!1941365 (forall!10844 (Cons!51568 lt!1786872 lt!1786873) lambda!192900))))

(assert (=> d!1458235 (= lt!1787346 e!2887152)))

(assert (=> d!1458235 (= c!792238 ((_ is Nil!51568) (Cons!51568 lt!1786872 lt!1786873)))))

(assert (=> d!1458235 (noDuplicateKeys!1518 (Cons!51568 lt!1786872 lt!1786873))))

(assert (=> d!1458235 (= (addToMapMapFromBucket!979 (Cons!51568 lt!1786872 lt!1786873) (ListMap!4306 Nil!51568)) lt!1787346)))

(declare-fun b!4628341 () Bool)

(declare-fun res!1941364 () Bool)

(assert (=> b!4628341 (=> (not res!1941364) (not e!2887151))))

(assert (=> b!4628341 (= res!1941364 (forall!10844 (toList!5001 (ListMap!4306 Nil!51568)) lambda!192900))))

(assert (= (and d!1458235 c!792238) b!4628342))

(assert (= (and d!1458235 (not c!792238)) b!4628344))

(assert (= (and b!4628344 res!1941366) b!4628343))

(assert (= (or b!4628342 b!4628344) bm!322882))

(assert (= (or b!4628342 b!4628344) bm!322881))

(assert (= (or b!4628342 b!4628344) bm!322883))

(assert (= (and d!1458235 res!1941365) b!4628341))

(assert (= (and b!4628341 res!1941364) b!4628340))

(declare-fun m!5473791 () Bool)

(assert (=> bm!322883 m!5473791))

(declare-fun m!5473793 () Bool)

(assert (=> bm!322882 m!5473793))

(declare-fun m!5473795 () Bool)

(assert (=> d!1458235 m!5473795))

(declare-fun m!5473797 () Bool)

(assert (=> d!1458235 m!5473797))

(declare-fun m!5473799 () Bool)

(assert (=> b!4628340 m!5473799))

(declare-fun m!5473801 () Bool)

(assert (=> bm!322881 m!5473801))

(declare-fun m!5473803 () Bool)

(assert (=> b!4628344 m!5473803))

(declare-fun m!5473805 () Bool)

(assert (=> b!4628344 m!5473805))

(declare-fun m!5473807 () Bool)

(assert (=> b!4628344 m!5473807))

(declare-fun m!5473809 () Bool)

(assert (=> b!4628344 m!5473809))

(declare-fun m!5473811 () Bool)

(assert (=> b!4628344 m!5473811))

(declare-fun m!5473813 () Bool)

(assert (=> b!4628344 m!5473813))

(assert (=> b!4628344 m!5473805))

(declare-fun m!5473815 () Bool)

(assert (=> b!4628344 m!5473815))

(assert (=> b!4628344 m!5473813))

(declare-fun m!5473817 () Bool)

(assert (=> b!4628344 m!5473817))

(declare-fun m!5473819 () Bool)

(assert (=> b!4628344 m!5473819))

(assert (=> b!4628344 m!5473809))

(declare-fun m!5473821 () Bool)

(assert (=> b!4628344 m!5473821))

(declare-fun m!5473823 () Bool)

(assert (=> b!4628341 m!5473823))

(assert (=> b!4628343 m!5473809))

(assert (=> b!4627965 d!1458235))

(declare-fun d!1458237 () Bool)

(assert (=> d!1458237 (eq!833 (addToMapMapFromBucket!979 (Cons!51568 lt!1786868 lt!1786871) (ListMap!4306 Nil!51568)) (+!1884 (addToMapMapFromBucket!979 lt!1786871 (ListMap!4306 Nil!51568)) lt!1786868))))

(declare-fun lt!1787366 () Unit!112636)

(assert (=> d!1458237 (= lt!1787366 (choose!31403 lt!1786868 lt!1786871 (ListMap!4306 Nil!51568)))))

(assert (=> d!1458237 (noDuplicateKeys!1518 lt!1786871)))

(assert (=> d!1458237 (= (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!84 lt!1786868 lt!1786871 (ListMap!4306 Nil!51568)) lt!1787366)))

(declare-fun bs!1025418 () Bool)

(assert (= bs!1025418 d!1458237))

(assert (=> bs!1025418 m!5473729))

(assert (=> bs!1025418 m!5472925))

(assert (=> bs!1025418 m!5472927))

(assert (=> bs!1025418 m!5472929))

(declare-fun m!5473825 () Bool)

(assert (=> bs!1025418 m!5473825))

(assert (=> bs!1025418 m!5472943))

(assert (=> bs!1025418 m!5472943))

(assert (=> bs!1025418 m!5472927))

(assert (=> bs!1025418 m!5472925))

(assert (=> b!4627965 d!1458237))

(declare-fun d!1458239 () Bool)

(declare-fun e!2887153 () Bool)

(assert (=> d!1458239 e!2887153))

(declare-fun res!1941368 () Bool)

(assert (=> d!1458239 (=> (not res!1941368) (not e!2887153))))

(declare-fun lt!1787368 () ListMap!4305)

(assert (=> d!1458239 (= res!1941368 (contains!14633 lt!1787368 (_1!29553 (h!57628 oldBucket!40))))))

(declare-fun lt!1787369 () List!51692)

(assert (=> d!1458239 (= lt!1787368 (ListMap!4306 lt!1787369))))

(declare-fun lt!1787367 () Unit!112636)

(declare-fun lt!1787370 () Unit!112636)

(assert (=> d!1458239 (= lt!1787367 lt!1787370)))

(assert (=> d!1458239 (= (getValueByKey!1472 lt!1787369 (_1!29553 (h!57628 oldBucket!40))) (Some!11623 (_2!29553 (h!57628 oldBucket!40))))))

(assert (=> d!1458239 (= lt!1787370 (lemmaContainsTupThenGetReturnValue!858 lt!1787369 (_1!29553 (h!57628 oldBucket!40)) (_2!29553 (h!57628 oldBucket!40))))))

(assert (=> d!1458239 (= lt!1787369 (insertNoDuplicatedKeys!366 (toList!5001 (extractMap!1574 (Cons!51569 (tuple2!52521 hash!414 lt!1786871) Nil!51569))) (_1!29553 (h!57628 oldBucket!40)) (_2!29553 (h!57628 oldBucket!40))))))

(assert (=> d!1458239 (= (+!1884 (extractMap!1574 (Cons!51569 (tuple2!52521 hash!414 lt!1786871) Nil!51569)) (h!57628 oldBucket!40)) lt!1787368)))

(declare-fun b!4628345 () Bool)

(declare-fun res!1941367 () Bool)

(assert (=> b!4628345 (=> (not res!1941367) (not e!2887153))))

(assert (=> b!4628345 (= res!1941367 (= (getValueByKey!1472 (toList!5001 lt!1787368) (_1!29553 (h!57628 oldBucket!40))) (Some!11623 (_2!29553 (h!57628 oldBucket!40)))))))

(declare-fun b!4628346 () Bool)

(assert (=> b!4628346 (= e!2887153 (contains!14638 (toList!5001 lt!1787368) (h!57628 oldBucket!40)))))

(assert (= (and d!1458239 res!1941368) b!4628345))

(assert (= (and b!4628345 res!1941367) b!4628346))

(declare-fun m!5473827 () Bool)

(assert (=> d!1458239 m!5473827))

(declare-fun m!5473829 () Bool)

(assert (=> d!1458239 m!5473829))

(declare-fun m!5473831 () Bool)

(assert (=> d!1458239 m!5473831))

(declare-fun m!5473833 () Bool)

(assert (=> d!1458239 m!5473833))

(declare-fun m!5473835 () Bool)

(assert (=> b!4628345 m!5473835))

(declare-fun m!5473837 () Bool)

(assert (=> b!4628346 m!5473837))

(assert (=> b!4627965 d!1458239))

(declare-fun bs!1025419 () Bool)

(declare-fun b!4628349 () Bool)

(assert (= bs!1025419 (and b!4628349 b!4628260)))

(declare-fun lambda!192901 () Int)

(assert (=> bs!1025419 (= (= (ListMap!4306 Nil!51568) lt!1786866) (= lambda!192901 lambda!192876))))

(declare-fun bs!1025420 () Bool)

(assert (= bs!1025420 (and b!4628349 b!4628262)))

(assert (=> bs!1025420 (= (= (ListMap!4306 Nil!51568) lt!1786866) (= lambda!192901 lambda!192878))))

(declare-fun bs!1025421 () Bool)

(assert (= bs!1025421 (and b!4628349 b!4628342)))

(assert (=> bs!1025421 (= lambda!192901 lambda!192897)))

(declare-fun bs!1025422 () Bool)

(assert (= bs!1025422 (and b!4628349 d!1458111)))

(assert (=> bs!1025422 (not (= lambda!192901 lambda!192798))))

(declare-fun bs!1025423 () Bool)

(assert (= bs!1025423 (and b!4628349 d!1458123)))

(assert (=> bs!1025423 (= (= (ListMap!4306 Nil!51568) lt!1787261) (= lambda!192901 lambda!192881))))

(assert (=> bs!1025420 (= (= (ListMap!4306 Nil!51568) lt!1787264) (= lambda!192901 lambda!192879))))

(declare-fun bs!1025424 () Bool)

(assert (= bs!1025424 (and b!4628349 b!4628344)))

(assert (=> bs!1025424 (= (= (ListMap!4306 Nil!51568) lt!1787349) (= lambda!192901 lambda!192899))))

(declare-fun bs!1025425 () Bool)

(assert (= bs!1025425 (and b!4628349 d!1458235)))

(assert (=> bs!1025425 (= (= (ListMap!4306 Nil!51568) lt!1787346) (= lambda!192901 lambda!192900))))

(assert (=> bs!1025424 (= lambda!192901 lambda!192898)))

(assert (=> b!4628349 true))

(declare-fun bs!1025426 () Bool)

(declare-fun b!4628351 () Bool)

(assert (= bs!1025426 (and b!4628351 b!4628349)))

(declare-fun lambda!192902 () Int)

(assert (=> bs!1025426 (= lambda!192902 lambda!192901)))

(declare-fun bs!1025427 () Bool)

(assert (= bs!1025427 (and b!4628351 b!4628260)))

(assert (=> bs!1025427 (= (= (ListMap!4306 Nil!51568) lt!1786866) (= lambda!192902 lambda!192876))))

(declare-fun bs!1025428 () Bool)

(assert (= bs!1025428 (and b!4628351 b!4628262)))

(assert (=> bs!1025428 (= (= (ListMap!4306 Nil!51568) lt!1786866) (= lambda!192902 lambda!192878))))

(declare-fun bs!1025429 () Bool)

(assert (= bs!1025429 (and b!4628351 b!4628342)))

(assert (=> bs!1025429 (= lambda!192902 lambda!192897)))

(declare-fun bs!1025430 () Bool)

(assert (= bs!1025430 (and b!4628351 d!1458111)))

(assert (=> bs!1025430 (not (= lambda!192902 lambda!192798))))

(declare-fun bs!1025431 () Bool)

(assert (= bs!1025431 (and b!4628351 d!1458123)))

(assert (=> bs!1025431 (= (= (ListMap!4306 Nil!51568) lt!1787261) (= lambda!192902 lambda!192881))))

(assert (=> bs!1025428 (= (= (ListMap!4306 Nil!51568) lt!1787264) (= lambda!192902 lambda!192879))))

(declare-fun bs!1025432 () Bool)

(assert (= bs!1025432 (and b!4628351 b!4628344)))

(assert (=> bs!1025432 (= (= (ListMap!4306 Nil!51568) lt!1787349) (= lambda!192902 lambda!192899))))

(declare-fun bs!1025433 () Bool)

(assert (= bs!1025433 (and b!4628351 d!1458235)))

(assert (=> bs!1025433 (= (= (ListMap!4306 Nil!51568) lt!1787346) (= lambda!192902 lambda!192900))))

(assert (=> bs!1025432 (= lambda!192902 lambda!192898)))

(assert (=> b!4628351 true))

(declare-fun lt!1787375 () ListMap!4305)

(declare-fun lambda!192903 () Int)

(assert (=> bs!1025426 (= (= lt!1787375 (ListMap!4306 Nil!51568)) (= lambda!192903 lambda!192901))))

(assert (=> b!4628351 (= (= lt!1787375 (ListMap!4306 Nil!51568)) (= lambda!192903 lambda!192902))))

(assert (=> bs!1025427 (= (= lt!1787375 lt!1786866) (= lambda!192903 lambda!192876))))

(assert (=> bs!1025428 (= (= lt!1787375 lt!1786866) (= lambda!192903 lambda!192878))))

(assert (=> bs!1025429 (= (= lt!1787375 (ListMap!4306 Nil!51568)) (= lambda!192903 lambda!192897))))

(assert (=> bs!1025430 (not (= lambda!192903 lambda!192798))))

(assert (=> bs!1025431 (= (= lt!1787375 lt!1787261) (= lambda!192903 lambda!192881))))

(assert (=> bs!1025428 (= (= lt!1787375 lt!1787264) (= lambda!192903 lambda!192879))))

(assert (=> bs!1025432 (= (= lt!1787375 lt!1787349) (= lambda!192903 lambda!192899))))

(assert (=> bs!1025433 (= (= lt!1787375 lt!1787346) (= lambda!192903 lambda!192900))))

(assert (=> bs!1025432 (= (= lt!1787375 (ListMap!4306 Nil!51568)) (= lambda!192903 lambda!192898))))

(assert (=> b!4628351 true))

(declare-fun bs!1025434 () Bool)

(declare-fun d!1458241 () Bool)

(assert (= bs!1025434 (and d!1458241 b!4628349)))

(declare-fun lt!1787372 () ListMap!4305)

(declare-fun lambda!192904 () Int)

(assert (=> bs!1025434 (= (= lt!1787372 (ListMap!4306 Nil!51568)) (= lambda!192904 lambda!192901))))

(declare-fun bs!1025435 () Bool)

(assert (= bs!1025435 (and d!1458241 b!4628351)))

(assert (=> bs!1025435 (= (= lt!1787372 (ListMap!4306 Nil!51568)) (= lambda!192904 lambda!192902))))

(declare-fun bs!1025436 () Bool)

(assert (= bs!1025436 (and d!1458241 b!4628260)))

(assert (=> bs!1025436 (= (= lt!1787372 lt!1786866) (= lambda!192904 lambda!192876))))

(assert (=> bs!1025435 (= (= lt!1787372 lt!1787375) (= lambda!192904 lambda!192903))))

(declare-fun bs!1025437 () Bool)

(assert (= bs!1025437 (and d!1458241 b!4628262)))

(assert (=> bs!1025437 (= (= lt!1787372 lt!1786866) (= lambda!192904 lambda!192878))))

(declare-fun bs!1025438 () Bool)

(assert (= bs!1025438 (and d!1458241 b!4628342)))

(assert (=> bs!1025438 (= (= lt!1787372 (ListMap!4306 Nil!51568)) (= lambda!192904 lambda!192897))))

(declare-fun bs!1025439 () Bool)

(assert (= bs!1025439 (and d!1458241 d!1458111)))

(assert (=> bs!1025439 (not (= lambda!192904 lambda!192798))))

(declare-fun bs!1025440 () Bool)

(assert (= bs!1025440 (and d!1458241 d!1458123)))

(assert (=> bs!1025440 (= (= lt!1787372 lt!1787261) (= lambda!192904 lambda!192881))))

(assert (=> bs!1025437 (= (= lt!1787372 lt!1787264) (= lambda!192904 lambda!192879))))

(declare-fun bs!1025441 () Bool)

(assert (= bs!1025441 (and d!1458241 b!4628344)))

(assert (=> bs!1025441 (= (= lt!1787372 lt!1787349) (= lambda!192904 lambda!192899))))

(declare-fun bs!1025442 () Bool)

(assert (= bs!1025442 (and d!1458241 d!1458235)))

(assert (=> bs!1025442 (= (= lt!1787372 lt!1787346) (= lambda!192904 lambda!192900))))

(assert (=> bs!1025441 (= (= lt!1787372 (ListMap!4306 Nil!51568)) (= lambda!192904 lambda!192898))))

(assert (=> d!1458241 true))

(declare-fun b!4628347 () Bool)

(declare-fun e!2887155 () Bool)

(assert (=> b!4628347 (= e!2887155 (invariantList!1214 (toList!5001 lt!1787372)))))

(declare-fun bm!322884 () Bool)

(declare-fun call!322889 () Bool)

(declare-fun c!792239 () Bool)

(assert (=> bm!322884 (= call!322889 (forall!10844 (ite c!792239 (toList!5001 (ListMap!4306 Nil!51568)) (Cons!51568 lt!1786868 lt!1786871)) (ite c!792239 lambda!192901 lambda!192903)))))

(declare-fun bm!322885 () Bool)

(declare-fun call!322890 () Unit!112636)

(assert (=> bm!322885 (= call!322890 (lemmaContainsAllItsOwnKeys!516 (ListMap!4306 Nil!51568)))))

(declare-fun e!2887156 () ListMap!4305)

(assert (=> b!4628349 (= e!2887156 (ListMap!4306 Nil!51568))))

(declare-fun lt!1787385 () Unit!112636)

(assert (=> b!4628349 (= lt!1787385 call!322890)))

(assert (=> b!4628349 call!322889))

(declare-fun lt!1787374 () Unit!112636)

(assert (=> b!4628349 (= lt!1787374 lt!1787385)))

(declare-fun call!322891 () Bool)

(assert (=> b!4628349 call!322891))

(declare-fun lt!1787390 () Unit!112636)

(declare-fun Unit!112710 () Unit!112636)

(assert (=> b!4628349 (= lt!1787390 Unit!112710)))

(declare-fun bm!322886 () Bool)

(assert (=> bm!322886 (= call!322891 (forall!10844 (ite c!792239 (toList!5001 (ListMap!4306 Nil!51568)) (t!358734 (Cons!51568 lt!1786868 lt!1786871))) (ite c!792239 lambda!192901 lambda!192903)))))

(declare-fun b!4628350 () Bool)

(declare-fun e!2887154 () Bool)

(assert (=> b!4628350 (= e!2887154 (forall!10844 (toList!5001 (ListMap!4306 Nil!51568)) lambda!192903))))

(assert (=> b!4628351 (= e!2887156 lt!1787375)))

(declare-fun lt!1787373 () ListMap!4305)

(assert (=> b!4628351 (= lt!1787373 (+!1884 (ListMap!4306 Nil!51568) (h!57628 (Cons!51568 lt!1786868 lt!1786871))))))

(assert (=> b!4628351 (= lt!1787375 (addToMapMapFromBucket!979 (t!358734 (Cons!51568 lt!1786868 lt!1786871)) (+!1884 (ListMap!4306 Nil!51568) (h!57628 (Cons!51568 lt!1786868 lt!1786871)))))))

(declare-fun lt!1787384 () Unit!112636)

(assert (=> b!4628351 (= lt!1787384 call!322890)))

(assert (=> b!4628351 (forall!10844 (toList!5001 (ListMap!4306 Nil!51568)) lambda!192902)))

(declare-fun lt!1787391 () Unit!112636)

(assert (=> b!4628351 (= lt!1787391 lt!1787384)))

(assert (=> b!4628351 (forall!10844 (toList!5001 lt!1787373) lambda!192903)))

(declare-fun lt!1787388 () Unit!112636)

(declare-fun Unit!112711 () Unit!112636)

(assert (=> b!4628351 (= lt!1787388 Unit!112711)))

(assert (=> b!4628351 call!322891))

(declare-fun lt!1787383 () Unit!112636)

(declare-fun Unit!112712 () Unit!112636)

(assert (=> b!4628351 (= lt!1787383 Unit!112712)))

(declare-fun lt!1787379 () Unit!112636)

(declare-fun Unit!112713 () Unit!112636)

(assert (=> b!4628351 (= lt!1787379 Unit!112713)))

(declare-fun lt!1787371 () Unit!112636)

(assert (=> b!4628351 (= lt!1787371 (forallContained!3074 (toList!5001 lt!1787373) lambda!192903 (h!57628 (Cons!51568 lt!1786868 lt!1786871))))))

(assert (=> b!4628351 (contains!14633 lt!1787373 (_1!29553 (h!57628 (Cons!51568 lt!1786868 lt!1786871))))))

(declare-fun lt!1787377 () Unit!112636)

(declare-fun Unit!112714 () Unit!112636)

(assert (=> b!4628351 (= lt!1787377 Unit!112714)))

(assert (=> b!4628351 (contains!14633 lt!1787375 (_1!29553 (h!57628 (Cons!51568 lt!1786868 lt!1786871))))))

(declare-fun lt!1787380 () Unit!112636)

(declare-fun Unit!112715 () Unit!112636)

(assert (=> b!4628351 (= lt!1787380 Unit!112715)))

(assert (=> b!4628351 (forall!10844 (Cons!51568 lt!1786868 lt!1786871) lambda!192903)))

(declare-fun lt!1787382 () Unit!112636)

(declare-fun Unit!112716 () Unit!112636)

(assert (=> b!4628351 (= lt!1787382 Unit!112716)))

(assert (=> b!4628351 (forall!10844 (toList!5001 lt!1787373) lambda!192903)))

(declare-fun lt!1787381 () Unit!112636)

(declare-fun Unit!112717 () Unit!112636)

(assert (=> b!4628351 (= lt!1787381 Unit!112717)))

(declare-fun lt!1787376 () Unit!112636)

(declare-fun Unit!112718 () Unit!112636)

(assert (=> b!4628351 (= lt!1787376 Unit!112718)))

(declare-fun lt!1787378 () Unit!112636)

(assert (=> b!4628351 (= lt!1787378 (addForallContainsKeyThenBeforeAdding!515 (ListMap!4306 Nil!51568) lt!1787375 (_1!29553 (h!57628 (Cons!51568 lt!1786868 lt!1786871))) (_2!29553 (h!57628 (Cons!51568 lt!1786868 lt!1786871)))))))

(assert (=> b!4628351 (forall!10844 (toList!5001 (ListMap!4306 Nil!51568)) lambda!192903)))

(declare-fun lt!1787389 () Unit!112636)

(assert (=> b!4628351 (= lt!1787389 lt!1787378)))

(assert (=> b!4628351 (forall!10844 (toList!5001 (ListMap!4306 Nil!51568)) lambda!192903)))

(declare-fun lt!1787387 () Unit!112636)

(declare-fun Unit!112719 () Unit!112636)

(assert (=> b!4628351 (= lt!1787387 Unit!112719)))

(declare-fun res!1941371 () Bool)

(assert (=> b!4628351 (= res!1941371 call!322889)))

(assert (=> b!4628351 (=> (not res!1941371) (not e!2887154))))

(assert (=> b!4628351 e!2887154))

(declare-fun lt!1787386 () Unit!112636)

(declare-fun Unit!112720 () Unit!112636)

(assert (=> b!4628351 (= lt!1787386 Unit!112720)))

(assert (=> d!1458241 e!2887155))

(declare-fun res!1941370 () Bool)

(assert (=> d!1458241 (=> (not res!1941370) (not e!2887155))))

(assert (=> d!1458241 (= res!1941370 (forall!10844 (Cons!51568 lt!1786868 lt!1786871) lambda!192904))))

(assert (=> d!1458241 (= lt!1787372 e!2887156)))

(assert (=> d!1458241 (= c!792239 ((_ is Nil!51568) (Cons!51568 lt!1786868 lt!1786871)))))

(assert (=> d!1458241 (noDuplicateKeys!1518 (Cons!51568 lt!1786868 lt!1786871))))

(assert (=> d!1458241 (= (addToMapMapFromBucket!979 (Cons!51568 lt!1786868 lt!1786871) (ListMap!4306 Nil!51568)) lt!1787372)))

(declare-fun b!4628348 () Bool)

(declare-fun res!1941369 () Bool)

(assert (=> b!4628348 (=> (not res!1941369) (not e!2887155))))

(assert (=> b!4628348 (= res!1941369 (forall!10844 (toList!5001 (ListMap!4306 Nil!51568)) lambda!192904))))

(assert (= (and d!1458241 c!792239) b!4628349))

(assert (= (and d!1458241 (not c!792239)) b!4628351))

(assert (= (and b!4628351 res!1941371) b!4628350))

(assert (= (or b!4628349 b!4628351) bm!322885))

(assert (= (or b!4628349 b!4628351) bm!322884))

(assert (= (or b!4628349 b!4628351) bm!322886))

(assert (= (and d!1458241 res!1941370) b!4628348))

(assert (= (and b!4628348 res!1941369) b!4628347))

(declare-fun m!5473839 () Bool)

(assert (=> bm!322886 m!5473839))

(assert (=> bm!322885 m!5473793))

(declare-fun m!5473841 () Bool)

(assert (=> d!1458241 m!5473841))

(declare-fun m!5473843 () Bool)

(assert (=> d!1458241 m!5473843))

(declare-fun m!5473845 () Bool)

(assert (=> b!4628347 m!5473845))

(declare-fun m!5473847 () Bool)

(assert (=> bm!322884 m!5473847))

(declare-fun m!5473849 () Bool)

(assert (=> b!4628351 m!5473849))

(declare-fun m!5473851 () Bool)

(assert (=> b!4628351 m!5473851))

(declare-fun m!5473853 () Bool)

(assert (=> b!4628351 m!5473853))

(declare-fun m!5473855 () Bool)

(assert (=> b!4628351 m!5473855))

(declare-fun m!5473857 () Bool)

(assert (=> b!4628351 m!5473857))

(declare-fun m!5473859 () Bool)

(assert (=> b!4628351 m!5473859))

(assert (=> b!4628351 m!5473851))

(declare-fun m!5473861 () Bool)

(assert (=> b!4628351 m!5473861))

(assert (=> b!4628351 m!5473859))

(declare-fun m!5473863 () Bool)

(assert (=> b!4628351 m!5473863))

(declare-fun m!5473865 () Bool)

(assert (=> b!4628351 m!5473865))

(assert (=> b!4628351 m!5473855))

(declare-fun m!5473867 () Bool)

(assert (=> b!4628351 m!5473867))

(declare-fun m!5473869 () Bool)

(assert (=> b!4628348 m!5473869))

(assert (=> b!4628350 m!5473855))

(assert (=> b!4627965 d!1458241))

(declare-fun d!1458243 () Bool)

(assert (=> d!1458243 (= (head!9652 newBucket!224) (h!57628 newBucket!224))))

(assert (=> b!4627965 d!1458243))

(declare-fun d!1458245 () Bool)

(assert (=> d!1458245 (= (eq!833 (addToMapMapFromBucket!979 (Cons!51568 lt!1786868 lt!1786871) (ListMap!4306 Nil!51568)) (+!1884 (addToMapMapFromBucket!979 lt!1786871 (ListMap!4306 Nil!51568)) lt!1786868)) (= (content!8828 (toList!5001 (addToMapMapFromBucket!979 (Cons!51568 lt!1786868 lt!1786871) (ListMap!4306 Nil!51568)))) (content!8828 (toList!5001 (+!1884 (addToMapMapFromBucket!979 lt!1786871 (ListMap!4306 Nil!51568)) lt!1786868)))))))

(declare-fun bs!1025443 () Bool)

(assert (= bs!1025443 d!1458245))

(declare-fun m!5473871 () Bool)

(assert (=> bs!1025443 m!5473871))

(declare-fun m!5473873 () Bool)

(assert (=> bs!1025443 m!5473873))

(assert (=> b!4627965 d!1458245))

(declare-fun bs!1025444 () Bool)

(declare-fun b!4628354 () Bool)

(assert (= bs!1025444 (and b!4628354 b!4628349)))

(declare-fun lambda!192905 () Int)

(assert (=> bs!1025444 (= lambda!192905 lambda!192901)))

(declare-fun bs!1025445 () Bool)

(assert (= bs!1025445 (and b!4628354 b!4628351)))

(assert (=> bs!1025445 (= lambda!192905 lambda!192902)))

(declare-fun bs!1025446 () Bool)

(assert (= bs!1025446 (and b!4628354 b!4628260)))

(assert (=> bs!1025446 (= (= (ListMap!4306 Nil!51568) lt!1786866) (= lambda!192905 lambda!192876))))

(assert (=> bs!1025445 (= (= (ListMap!4306 Nil!51568) lt!1787375) (= lambda!192905 lambda!192903))))

(declare-fun bs!1025447 () Bool)

(assert (= bs!1025447 (and b!4628354 b!4628262)))

(assert (=> bs!1025447 (= (= (ListMap!4306 Nil!51568) lt!1786866) (= lambda!192905 lambda!192878))))

(declare-fun bs!1025448 () Bool)

(assert (= bs!1025448 (and b!4628354 b!4628342)))

(assert (=> bs!1025448 (= lambda!192905 lambda!192897)))

(declare-fun bs!1025449 () Bool)

(assert (= bs!1025449 (and b!4628354 d!1458111)))

(assert (=> bs!1025449 (not (= lambda!192905 lambda!192798))))

(declare-fun bs!1025450 () Bool)

(assert (= bs!1025450 (and b!4628354 d!1458123)))

(assert (=> bs!1025450 (= (= (ListMap!4306 Nil!51568) lt!1787261) (= lambda!192905 lambda!192881))))

(declare-fun bs!1025451 () Bool)

(assert (= bs!1025451 (and b!4628354 b!4628344)))

(assert (=> bs!1025451 (= (= (ListMap!4306 Nil!51568) lt!1787349) (= lambda!192905 lambda!192899))))

(declare-fun bs!1025452 () Bool)

(assert (= bs!1025452 (and b!4628354 d!1458235)))

(assert (=> bs!1025452 (= (= (ListMap!4306 Nil!51568) lt!1787346) (= lambda!192905 lambda!192900))))

(assert (=> bs!1025451 (= lambda!192905 lambda!192898)))

(assert (=> bs!1025447 (= (= (ListMap!4306 Nil!51568) lt!1787264) (= lambda!192905 lambda!192879))))

(declare-fun bs!1025453 () Bool)

(assert (= bs!1025453 (and b!4628354 d!1458241)))

(assert (=> bs!1025453 (= (= (ListMap!4306 Nil!51568) lt!1787372) (= lambda!192905 lambda!192904))))

(assert (=> b!4628354 true))

(declare-fun bs!1025454 () Bool)

(declare-fun b!4628356 () Bool)

(assert (= bs!1025454 (and b!4628356 b!4628349)))

(declare-fun lambda!192906 () Int)

(assert (=> bs!1025454 (= lambda!192906 lambda!192901)))

(declare-fun bs!1025455 () Bool)

(assert (= bs!1025455 (and b!4628356 b!4628351)))

(assert (=> bs!1025455 (= lambda!192906 lambda!192902)))

(declare-fun bs!1025456 () Bool)

(assert (= bs!1025456 (and b!4628356 b!4628260)))

(assert (=> bs!1025456 (= (= (ListMap!4306 Nil!51568) lt!1786866) (= lambda!192906 lambda!192876))))

(assert (=> bs!1025455 (= (= (ListMap!4306 Nil!51568) lt!1787375) (= lambda!192906 lambda!192903))))

(declare-fun bs!1025457 () Bool)

(assert (= bs!1025457 (and b!4628356 b!4628262)))

(assert (=> bs!1025457 (= (= (ListMap!4306 Nil!51568) lt!1786866) (= lambda!192906 lambda!192878))))

(declare-fun bs!1025458 () Bool)

(assert (= bs!1025458 (and b!4628356 b!4628342)))

(assert (=> bs!1025458 (= lambda!192906 lambda!192897)))

(declare-fun bs!1025459 () Bool)

(assert (= bs!1025459 (and b!4628356 d!1458111)))

(assert (=> bs!1025459 (not (= lambda!192906 lambda!192798))))

(declare-fun bs!1025460 () Bool)

(assert (= bs!1025460 (and b!4628356 d!1458123)))

(assert (=> bs!1025460 (= (= (ListMap!4306 Nil!51568) lt!1787261) (= lambda!192906 lambda!192881))))

(declare-fun bs!1025461 () Bool)

(assert (= bs!1025461 (and b!4628356 b!4628344)))

(assert (=> bs!1025461 (= (= (ListMap!4306 Nil!51568) lt!1787349) (= lambda!192906 lambda!192899))))

(declare-fun bs!1025462 () Bool)

(assert (= bs!1025462 (and b!4628356 b!4628354)))

(assert (=> bs!1025462 (= lambda!192906 lambda!192905)))

(declare-fun bs!1025463 () Bool)

(assert (= bs!1025463 (and b!4628356 d!1458235)))

(assert (=> bs!1025463 (= (= (ListMap!4306 Nil!51568) lt!1787346) (= lambda!192906 lambda!192900))))

(assert (=> bs!1025461 (= lambda!192906 lambda!192898)))

(assert (=> bs!1025457 (= (= (ListMap!4306 Nil!51568) lt!1787264) (= lambda!192906 lambda!192879))))

(declare-fun bs!1025464 () Bool)

(assert (= bs!1025464 (and b!4628356 d!1458241)))

(assert (=> bs!1025464 (= (= (ListMap!4306 Nil!51568) lt!1787372) (= lambda!192906 lambda!192904))))

(assert (=> b!4628356 true))

(declare-fun lt!1787396 () ListMap!4305)

(declare-fun lambda!192907 () Int)

(assert (=> bs!1025454 (= (= lt!1787396 (ListMap!4306 Nil!51568)) (= lambda!192907 lambda!192901))))

(assert (=> bs!1025455 (= (= lt!1787396 (ListMap!4306 Nil!51568)) (= lambda!192907 lambda!192902))))

(assert (=> bs!1025455 (= (= lt!1787396 lt!1787375) (= lambda!192907 lambda!192903))))

(assert (=> bs!1025457 (= (= lt!1787396 lt!1786866) (= lambda!192907 lambda!192878))))

(assert (=> bs!1025458 (= (= lt!1787396 (ListMap!4306 Nil!51568)) (= lambda!192907 lambda!192897))))

(assert (=> bs!1025459 (not (= lambda!192907 lambda!192798))))

(assert (=> bs!1025460 (= (= lt!1787396 lt!1787261) (= lambda!192907 lambda!192881))))

(assert (=> bs!1025461 (= (= lt!1787396 lt!1787349) (= lambda!192907 lambda!192899))))

(assert (=> bs!1025456 (= (= lt!1787396 lt!1786866) (= lambda!192907 lambda!192876))))

(assert (=> b!4628356 (= (= lt!1787396 (ListMap!4306 Nil!51568)) (= lambda!192907 lambda!192906))))

(assert (=> bs!1025462 (= (= lt!1787396 (ListMap!4306 Nil!51568)) (= lambda!192907 lambda!192905))))

(assert (=> bs!1025463 (= (= lt!1787396 lt!1787346) (= lambda!192907 lambda!192900))))

(assert (=> bs!1025461 (= (= lt!1787396 (ListMap!4306 Nil!51568)) (= lambda!192907 lambda!192898))))

(assert (=> bs!1025457 (= (= lt!1787396 lt!1787264) (= lambda!192907 lambda!192879))))

(assert (=> bs!1025464 (= (= lt!1787396 lt!1787372) (= lambda!192907 lambda!192904))))

(assert (=> b!4628356 true))

(declare-fun bs!1025465 () Bool)

(declare-fun d!1458247 () Bool)

(assert (= bs!1025465 (and d!1458247 b!4628349)))

(declare-fun lt!1787393 () ListMap!4305)

(declare-fun lambda!192908 () Int)

(assert (=> bs!1025465 (= (= lt!1787393 (ListMap!4306 Nil!51568)) (= lambda!192908 lambda!192901))))

(declare-fun bs!1025466 () Bool)

(assert (= bs!1025466 (and d!1458247 b!4628351)))

(assert (=> bs!1025466 (= (= lt!1787393 (ListMap!4306 Nil!51568)) (= lambda!192908 lambda!192902))))

(assert (=> bs!1025466 (= (= lt!1787393 lt!1787375) (= lambda!192908 lambda!192903))))

(declare-fun bs!1025467 () Bool)

(assert (= bs!1025467 (and d!1458247 b!4628262)))

(assert (=> bs!1025467 (= (= lt!1787393 lt!1786866) (= lambda!192908 lambda!192878))))

(declare-fun bs!1025468 () Bool)

(assert (= bs!1025468 (and d!1458247 b!4628342)))

(assert (=> bs!1025468 (= (= lt!1787393 (ListMap!4306 Nil!51568)) (= lambda!192908 lambda!192897))))

(declare-fun bs!1025469 () Bool)

(assert (= bs!1025469 (and d!1458247 d!1458123)))

(assert (=> bs!1025469 (= (= lt!1787393 lt!1787261) (= lambda!192908 lambda!192881))))

(declare-fun bs!1025470 () Bool)

(assert (= bs!1025470 (and d!1458247 b!4628344)))

(assert (=> bs!1025470 (= (= lt!1787393 lt!1787349) (= lambda!192908 lambda!192899))))

(declare-fun bs!1025471 () Bool)

(assert (= bs!1025471 (and d!1458247 b!4628260)))

(assert (=> bs!1025471 (= (= lt!1787393 lt!1786866) (= lambda!192908 lambda!192876))))

(declare-fun bs!1025472 () Bool)

(assert (= bs!1025472 (and d!1458247 b!4628356)))

(assert (=> bs!1025472 (= (= lt!1787393 (ListMap!4306 Nil!51568)) (= lambda!192908 lambda!192906))))

(declare-fun bs!1025473 () Bool)

(assert (= bs!1025473 (and d!1458247 b!4628354)))

(assert (=> bs!1025473 (= (= lt!1787393 (ListMap!4306 Nil!51568)) (= lambda!192908 lambda!192905))))

(declare-fun bs!1025474 () Bool)

(assert (= bs!1025474 (and d!1458247 d!1458235)))

(assert (=> bs!1025474 (= (= lt!1787393 lt!1787346) (= lambda!192908 lambda!192900))))

(assert (=> bs!1025470 (= (= lt!1787393 (ListMap!4306 Nil!51568)) (= lambda!192908 lambda!192898))))

(assert (=> bs!1025472 (= (= lt!1787393 lt!1787396) (= lambda!192908 lambda!192907))))

(declare-fun bs!1025475 () Bool)

(assert (= bs!1025475 (and d!1458247 d!1458111)))

(assert (=> bs!1025475 (not (= lambda!192908 lambda!192798))))

(assert (=> bs!1025467 (= (= lt!1787393 lt!1787264) (= lambda!192908 lambda!192879))))

(declare-fun bs!1025476 () Bool)

(assert (= bs!1025476 (and d!1458247 d!1458241)))

(assert (=> bs!1025476 (= (= lt!1787393 lt!1787372) (= lambda!192908 lambda!192904))))

(assert (=> d!1458247 true))

(declare-fun b!4628352 () Bool)

(declare-fun e!2887158 () Bool)

(assert (=> b!4628352 (= e!2887158 (invariantList!1214 (toList!5001 lt!1787393)))))

(declare-fun bm!322887 () Bool)

(declare-fun call!322892 () Bool)

(declare-fun c!792240 () Bool)

(assert (=> bm!322887 (= call!322892 (forall!10844 (ite c!792240 (toList!5001 (ListMap!4306 Nil!51568)) lt!1786871) (ite c!792240 lambda!192905 lambda!192907)))))

(declare-fun bm!322888 () Bool)

(declare-fun call!322893 () Unit!112636)

(assert (=> bm!322888 (= call!322893 (lemmaContainsAllItsOwnKeys!516 (ListMap!4306 Nil!51568)))))

(declare-fun e!2887159 () ListMap!4305)

(assert (=> b!4628354 (= e!2887159 (ListMap!4306 Nil!51568))))

(declare-fun lt!1787406 () Unit!112636)

(assert (=> b!4628354 (= lt!1787406 call!322893)))

(assert (=> b!4628354 call!322892))

(declare-fun lt!1787395 () Unit!112636)

(assert (=> b!4628354 (= lt!1787395 lt!1787406)))

(declare-fun call!322894 () Bool)

(assert (=> b!4628354 call!322894))

(declare-fun lt!1787411 () Unit!112636)

(declare-fun Unit!112721 () Unit!112636)

(assert (=> b!4628354 (= lt!1787411 Unit!112721)))

(declare-fun bm!322889 () Bool)

(assert (=> bm!322889 (= call!322894 (forall!10844 (ite c!792240 (toList!5001 (ListMap!4306 Nil!51568)) (t!358734 lt!1786871)) (ite c!792240 lambda!192905 lambda!192907)))))

(declare-fun b!4628355 () Bool)

(declare-fun e!2887157 () Bool)

(assert (=> b!4628355 (= e!2887157 (forall!10844 (toList!5001 (ListMap!4306 Nil!51568)) lambda!192907))))

(assert (=> b!4628356 (= e!2887159 lt!1787396)))

(declare-fun lt!1787394 () ListMap!4305)

(assert (=> b!4628356 (= lt!1787394 (+!1884 (ListMap!4306 Nil!51568) (h!57628 lt!1786871)))))

(assert (=> b!4628356 (= lt!1787396 (addToMapMapFromBucket!979 (t!358734 lt!1786871) (+!1884 (ListMap!4306 Nil!51568) (h!57628 lt!1786871))))))

(declare-fun lt!1787405 () Unit!112636)

(assert (=> b!4628356 (= lt!1787405 call!322893)))

(assert (=> b!4628356 (forall!10844 (toList!5001 (ListMap!4306 Nil!51568)) lambda!192906)))

(declare-fun lt!1787412 () Unit!112636)

(assert (=> b!4628356 (= lt!1787412 lt!1787405)))

(assert (=> b!4628356 (forall!10844 (toList!5001 lt!1787394) lambda!192907)))

(declare-fun lt!1787409 () Unit!112636)

(declare-fun Unit!112722 () Unit!112636)

(assert (=> b!4628356 (= lt!1787409 Unit!112722)))

(assert (=> b!4628356 call!322894))

(declare-fun lt!1787404 () Unit!112636)

(declare-fun Unit!112723 () Unit!112636)

(assert (=> b!4628356 (= lt!1787404 Unit!112723)))

(declare-fun lt!1787400 () Unit!112636)

(declare-fun Unit!112724 () Unit!112636)

(assert (=> b!4628356 (= lt!1787400 Unit!112724)))

(declare-fun lt!1787392 () Unit!112636)

(assert (=> b!4628356 (= lt!1787392 (forallContained!3074 (toList!5001 lt!1787394) lambda!192907 (h!57628 lt!1786871)))))

(assert (=> b!4628356 (contains!14633 lt!1787394 (_1!29553 (h!57628 lt!1786871)))))

(declare-fun lt!1787398 () Unit!112636)

(declare-fun Unit!112725 () Unit!112636)

(assert (=> b!4628356 (= lt!1787398 Unit!112725)))

(assert (=> b!4628356 (contains!14633 lt!1787396 (_1!29553 (h!57628 lt!1786871)))))

(declare-fun lt!1787401 () Unit!112636)

(declare-fun Unit!112726 () Unit!112636)

(assert (=> b!4628356 (= lt!1787401 Unit!112726)))

(assert (=> b!4628356 (forall!10844 lt!1786871 lambda!192907)))

(declare-fun lt!1787403 () Unit!112636)

(declare-fun Unit!112727 () Unit!112636)

(assert (=> b!4628356 (= lt!1787403 Unit!112727)))

(assert (=> b!4628356 (forall!10844 (toList!5001 lt!1787394) lambda!192907)))

(declare-fun lt!1787402 () Unit!112636)

(declare-fun Unit!112728 () Unit!112636)

(assert (=> b!4628356 (= lt!1787402 Unit!112728)))

(declare-fun lt!1787397 () Unit!112636)

(declare-fun Unit!112729 () Unit!112636)

(assert (=> b!4628356 (= lt!1787397 Unit!112729)))

(declare-fun lt!1787399 () Unit!112636)

(assert (=> b!4628356 (= lt!1787399 (addForallContainsKeyThenBeforeAdding!515 (ListMap!4306 Nil!51568) lt!1787396 (_1!29553 (h!57628 lt!1786871)) (_2!29553 (h!57628 lt!1786871))))))

(assert (=> b!4628356 (forall!10844 (toList!5001 (ListMap!4306 Nil!51568)) lambda!192907)))

(declare-fun lt!1787410 () Unit!112636)

(assert (=> b!4628356 (= lt!1787410 lt!1787399)))

(assert (=> b!4628356 (forall!10844 (toList!5001 (ListMap!4306 Nil!51568)) lambda!192907)))

(declare-fun lt!1787408 () Unit!112636)

(declare-fun Unit!112730 () Unit!112636)

(assert (=> b!4628356 (= lt!1787408 Unit!112730)))

(declare-fun res!1941374 () Bool)

(assert (=> b!4628356 (= res!1941374 call!322892)))

(assert (=> b!4628356 (=> (not res!1941374) (not e!2887157))))

(assert (=> b!4628356 e!2887157))

(declare-fun lt!1787407 () Unit!112636)

(declare-fun Unit!112731 () Unit!112636)

(assert (=> b!4628356 (= lt!1787407 Unit!112731)))

(assert (=> d!1458247 e!2887158))

(declare-fun res!1941373 () Bool)

(assert (=> d!1458247 (=> (not res!1941373) (not e!2887158))))

(assert (=> d!1458247 (= res!1941373 (forall!10844 lt!1786871 lambda!192908))))

(assert (=> d!1458247 (= lt!1787393 e!2887159)))

(assert (=> d!1458247 (= c!792240 ((_ is Nil!51568) lt!1786871))))

(assert (=> d!1458247 (noDuplicateKeys!1518 lt!1786871)))

(assert (=> d!1458247 (= (addToMapMapFromBucket!979 lt!1786871 (ListMap!4306 Nil!51568)) lt!1787393)))

(declare-fun b!4628353 () Bool)

(declare-fun res!1941372 () Bool)

(assert (=> b!4628353 (=> (not res!1941372) (not e!2887158))))

(assert (=> b!4628353 (= res!1941372 (forall!10844 (toList!5001 (ListMap!4306 Nil!51568)) lambda!192908))))

(assert (= (and d!1458247 c!792240) b!4628354))

(assert (= (and d!1458247 (not c!792240)) b!4628356))

(assert (= (and b!4628356 res!1941374) b!4628355))

(assert (= (or b!4628354 b!4628356) bm!322888))

(assert (= (or b!4628354 b!4628356) bm!322887))

(assert (= (or b!4628354 b!4628356) bm!322889))

(assert (= (and d!1458247 res!1941373) b!4628353))

(assert (= (and b!4628353 res!1941372) b!4628352))

(declare-fun m!5473875 () Bool)

(assert (=> bm!322889 m!5473875))

(assert (=> bm!322888 m!5473793))

(declare-fun m!5473877 () Bool)

(assert (=> d!1458247 m!5473877))

(assert (=> d!1458247 m!5473729))

(declare-fun m!5473879 () Bool)

(assert (=> b!4628352 m!5473879))

(declare-fun m!5473881 () Bool)

(assert (=> bm!322887 m!5473881))

(declare-fun m!5473883 () Bool)

(assert (=> b!4628356 m!5473883))

(declare-fun m!5473885 () Bool)

(assert (=> b!4628356 m!5473885))

(declare-fun m!5473887 () Bool)

(assert (=> b!4628356 m!5473887))

(declare-fun m!5473889 () Bool)

(assert (=> b!4628356 m!5473889))

(declare-fun m!5473891 () Bool)

(assert (=> b!4628356 m!5473891))

(declare-fun m!5473893 () Bool)

(assert (=> b!4628356 m!5473893))

(assert (=> b!4628356 m!5473885))

(declare-fun m!5473895 () Bool)

(assert (=> b!4628356 m!5473895))

(assert (=> b!4628356 m!5473893))

(declare-fun m!5473897 () Bool)

(assert (=> b!4628356 m!5473897))

(declare-fun m!5473899 () Bool)

(assert (=> b!4628356 m!5473899))

(assert (=> b!4628356 m!5473889))

(declare-fun m!5473901 () Bool)

(assert (=> b!4628356 m!5473901))

(declare-fun m!5473903 () Bool)

(assert (=> b!4628353 m!5473903))

(assert (=> b!4628355 m!5473889))

(assert (=> b!4627965 d!1458247))

(declare-fun b!4628375 () Bool)

(declare-fun e!2887175 () Bool)

(declare-fun contains!14639 (List!51695 K!12945) Bool)

(assert (=> b!4628375 (= e!2887175 (contains!14639 (keys!18176 lt!1786880) key!4968))))

(declare-fun b!4628376 () Bool)

(declare-fun e!2887176 () List!51695)

(assert (=> b!4628376 (= e!2887176 (keys!18176 lt!1786880))))

(declare-fun bm!322892 () Bool)

(declare-fun call!322897 () Bool)

(assert (=> bm!322892 (= call!322897 (contains!14639 e!2887176 key!4968))))

(declare-fun c!792247 () Bool)

(declare-fun c!792249 () Bool)

(assert (=> bm!322892 (= c!792247 c!792249)))

(declare-fun b!4628377 () Bool)

(declare-fun e!2887177 () Bool)

(assert (=> b!4628377 (= e!2887177 (not (contains!14639 (keys!18176 lt!1786880) key!4968)))))

(declare-fun b!4628378 () Bool)

(declare-fun e!2887174 () Bool)

(assert (=> b!4628378 (= e!2887174 e!2887175)))

(declare-fun res!1941381 () Bool)

(assert (=> b!4628378 (=> (not res!1941381) (not e!2887175))))

(declare-fun isDefined!8889 (Option!11624) Bool)

(assert (=> b!4628378 (= res!1941381 (isDefined!8889 (getValueByKey!1472 (toList!5001 lt!1786880) key!4968)))))

(declare-fun b!4628379 () Bool)

(assert (=> b!4628379 false))

(declare-fun lt!1787430 () Unit!112636)

(declare-fun lt!1787435 () Unit!112636)

(assert (=> b!4628379 (= lt!1787430 lt!1787435)))

(declare-fun containsKey!2482 (List!51692 K!12945) Bool)

(assert (=> b!4628379 (containsKey!2482 (toList!5001 lt!1786880) key!4968)))

(declare-fun lemmaInGetKeysListThenContainsKey!664 (List!51692 K!12945) Unit!112636)

(assert (=> b!4628379 (= lt!1787435 (lemmaInGetKeysListThenContainsKey!664 (toList!5001 lt!1786880) key!4968))))

(declare-fun e!2887172 () Unit!112636)

(declare-fun Unit!112743 () Unit!112636)

(assert (=> b!4628379 (= e!2887172 Unit!112743)))

(declare-fun d!1458249 () Bool)

(assert (=> d!1458249 e!2887174))

(declare-fun res!1941382 () Bool)

(assert (=> d!1458249 (=> res!1941382 e!2887174)))

(assert (=> d!1458249 (= res!1941382 e!2887177)))

(declare-fun res!1941383 () Bool)

(assert (=> d!1458249 (=> (not res!1941383) (not e!2887177))))

(declare-fun lt!1787433 () Bool)

(assert (=> d!1458249 (= res!1941383 (not lt!1787433))))

(declare-fun lt!1787429 () Bool)

(assert (=> d!1458249 (= lt!1787433 lt!1787429)))

(declare-fun lt!1787432 () Unit!112636)

(declare-fun e!2887173 () Unit!112636)

(assert (=> d!1458249 (= lt!1787432 e!2887173)))

(assert (=> d!1458249 (= c!792249 lt!1787429)))

(assert (=> d!1458249 (= lt!1787429 (containsKey!2482 (toList!5001 lt!1786880) key!4968))))

(assert (=> d!1458249 (= (contains!14633 lt!1786880 key!4968) lt!1787433)))

(declare-fun b!4628380 () Bool)

(declare-fun lt!1787434 () Unit!112636)

(assert (=> b!4628380 (= e!2887173 lt!1787434)))

(declare-fun lt!1787436 () Unit!112636)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1374 (List!51692 K!12945) Unit!112636)

(assert (=> b!4628380 (= lt!1787436 (lemmaContainsKeyImpliesGetValueByKeyDefined!1374 (toList!5001 lt!1786880) key!4968))))

(assert (=> b!4628380 (isDefined!8889 (getValueByKey!1472 (toList!5001 lt!1786880) key!4968))))

(declare-fun lt!1787431 () Unit!112636)

(assert (=> b!4628380 (= lt!1787431 lt!1787436)))

(declare-fun lemmaInListThenGetKeysListContains!660 (List!51692 K!12945) Unit!112636)

(assert (=> b!4628380 (= lt!1787434 (lemmaInListThenGetKeysListContains!660 (toList!5001 lt!1786880) key!4968))))

(assert (=> b!4628380 call!322897))

(declare-fun b!4628381 () Bool)

(assert (=> b!4628381 (= e!2887173 e!2887172)))

(declare-fun c!792248 () Bool)

(assert (=> b!4628381 (= c!792248 call!322897)))

(declare-fun b!4628382 () Bool)

(declare-fun Unit!112744 () Unit!112636)

(assert (=> b!4628382 (= e!2887172 Unit!112744)))

(declare-fun b!4628383 () Bool)

(declare-fun getKeysList!665 (List!51692) List!51695)

(assert (=> b!4628383 (= e!2887176 (getKeysList!665 (toList!5001 lt!1786880)))))

(assert (= (and d!1458249 c!792249) b!4628380))

(assert (= (and d!1458249 (not c!792249)) b!4628381))

(assert (= (and b!4628381 c!792248) b!4628379))

(assert (= (and b!4628381 (not c!792248)) b!4628382))

(assert (= (or b!4628380 b!4628381) bm!322892))

(assert (= (and bm!322892 c!792247) b!4628383))

(assert (= (and bm!322892 (not c!792247)) b!4628376))

(assert (= (and d!1458249 res!1941383) b!4628377))

(assert (= (and d!1458249 (not res!1941382)) b!4628378))

(assert (= (and b!4628378 res!1941381) b!4628375))

(declare-fun m!5473905 () Bool)

(assert (=> b!4628375 m!5473905))

(assert (=> b!4628375 m!5473905))

(declare-fun m!5473907 () Bool)

(assert (=> b!4628375 m!5473907))

(assert (=> b!4628377 m!5473905))

(assert (=> b!4628377 m!5473905))

(assert (=> b!4628377 m!5473907))

(declare-fun m!5473909 () Bool)

(assert (=> b!4628379 m!5473909))

(declare-fun m!5473911 () Bool)

(assert (=> b!4628379 m!5473911))

(declare-fun m!5473913 () Bool)

(assert (=> b!4628378 m!5473913))

(assert (=> b!4628378 m!5473913))

(declare-fun m!5473915 () Bool)

(assert (=> b!4628378 m!5473915))

(declare-fun m!5473917 () Bool)

(assert (=> b!4628383 m!5473917))

(assert (=> d!1458249 m!5473909))

(declare-fun m!5473919 () Bool)

(assert (=> bm!322892 m!5473919))

(assert (=> b!4628376 m!5473905))

(declare-fun m!5473921 () Bool)

(assert (=> b!4628380 m!5473921))

(assert (=> b!4628380 m!5473913))

(assert (=> b!4628380 m!5473913))

(assert (=> b!4628380 m!5473915))

(declare-fun m!5473923 () Bool)

(assert (=> b!4628380 m!5473923))

(assert (=> b!4627965 d!1458249))

(declare-fun bs!1025477 () Bool)

(declare-fun b!4628386 () Bool)

(assert (= bs!1025477 (and b!4628386 b!4628349)))

(declare-fun lambda!192909 () Int)

(assert (=> bs!1025477 (= lambda!192909 lambda!192901)))

(declare-fun bs!1025478 () Bool)

(assert (= bs!1025478 (and b!4628386 b!4628351)))

(assert (=> bs!1025478 (= lambda!192909 lambda!192902)))

(declare-fun bs!1025479 () Bool)

(assert (= bs!1025479 (and b!4628386 d!1458247)))

(assert (=> bs!1025479 (= (= (ListMap!4306 Nil!51568) lt!1787393) (= lambda!192909 lambda!192908))))

(assert (=> bs!1025478 (= (= (ListMap!4306 Nil!51568) lt!1787375) (= lambda!192909 lambda!192903))))

(declare-fun bs!1025480 () Bool)

(assert (= bs!1025480 (and b!4628386 b!4628262)))

(assert (=> bs!1025480 (= (= (ListMap!4306 Nil!51568) lt!1786866) (= lambda!192909 lambda!192878))))

(declare-fun bs!1025481 () Bool)

(assert (= bs!1025481 (and b!4628386 b!4628342)))

(assert (=> bs!1025481 (= lambda!192909 lambda!192897)))

(declare-fun bs!1025482 () Bool)

(assert (= bs!1025482 (and b!4628386 d!1458123)))

(assert (=> bs!1025482 (= (= (ListMap!4306 Nil!51568) lt!1787261) (= lambda!192909 lambda!192881))))

(declare-fun bs!1025483 () Bool)

(assert (= bs!1025483 (and b!4628386 b!4628344)))

(assert (=> bs!1025483 (= (= (ListMap!4306 Nil!51568) lt!1787349) (= lambda!192909 lambda!192899))))

(declare-fun bs!1025484 () Bool)

(assert (= bs!1025484 (and b!4628386 b!4628260)))

(assert (=> bs!1025484 (= (= (ListMap!4306 Nil!51568) lt!1786866) (= lambda!192909 lambda!192876))))

(declare-fun bs!1025485 () Bool)

(assert (= bs!1025485 (and b!4628386 b!4628356)))

(assert (=> bs!1025485 (= lambda!192909 lambda!192906)))

(declare-fun bs!1025486 () Bool)

(assert (= bs!1025486 (and b!4628386 b!4628354)))

(assert (=> bs!1025486 (= lambda!192909 lambda!192905)))

(declare-fun bs!1025487 () Bool)

(assert (= bs!1025487 (and b!4628386 d!1458235)))

(assert (=> bs!1025487 (= (= (ListMap!4306 Nil!51568) lt!1787346) (= lambda!192909 lambda!192900))))

(assert (=> bs!1025483 (= lambda!192909 lambda!192898)))

(assert (=> bs!1025485 (= (= (ListMap!4306 Nil!51568) lt!1787396) (= lambda!192909 lambda!192907))))

(declare-fun bs!1025488 () Bool)

(assert (= bs!1025488 (and b!4628386 d!1458111)))

(assert (=> bs!1025488 (not (= lambda!192909 lambda!192798))))

(assert (=> bs!1025480 (= (= (ListMap!4306 Nil!51568) lt!1787264) (= lambda!192909 lambda!192879))))

(declare-fun bs!1025489 () Bool)

(assert (= bs!1025489 (and b!4628386 d!1458241)))

(assert (=> bs!1025489 (= (= (ListMap!4306 Nil!51568) lt!1787372) (= lambda!192909 lambda!192904))))

(assert (=> b!4628386 true))

(declare-fun bs!1025490 () Bool)

(declare-fun b!4628388 () Bool)

(assert (= bs!1025490 (and b!4628388 b!4628349)))

(declare-fun lambda!192910 () Int)

(assert (=> bs!1025490 (= lambda!192910 lambda!192901)))

(declare-fun bs!1025491 () Bool)

(assert (= bs!1025491 (and b!4628388 b!4628351)))

(assert (=> bs!1025491 (= lambda!192910 lambda!192902)))

(declare-fun bs!1025492 () Bool)

(assert (= bs!1025492 (and b!4628388 d!1458247)))

(assert (=> bs!1025492 (= (= (ListMap!4306 Nil!51568) lt!1787393) (= lambda!192910 lambda!192908))))

(assert (=> bs!1025491 (= (= (ListMap!4306 Nil!51568) lt!1787375) (= lambda!192910 lambda!192903))))

(declare-fun bs!1025493 () Bool)

(assert (= bs!1025493 (and b!4628388 b!4628262)))

(assert (=> bs!1025493 (= (= (ListMap!4306 Nil!51568) lt!1786866) (= lambda!192910 lambda!192878))))

(declare-fun bs!1025494 () Bool)

(assert (= bs!1025494 (and b!4628388 b!4628386)))

(assert (=> bs!1025494 (= lambda!192910 lambda!192909)))

(declare-fun bs!1025495 () Bool)

(assert (= bs!1025495 (and b!4628388 b!4628342)))

(assert (=> bs!1025495 (= lambda!192910 lambda!192897)))

(declare-fun bs!1025496 () Bool)

(assert (= bs!1025496 (and b!4628388 d!1458123)))

(assert (=> bs!1025496 (= (= (ListMap!4306 Nil!51568) lt!1787261) (= lambda!192910 lambda!192881))))

(declare-fun bs!1025497 () Bool)

(assert (= bs!1025497 (and b!4628388 b!4628344)))

(assert (=> bs!1025497 (= (= (ListMap!4306 Nil!51568) lt!1787349) (= lambda!192910 lambda!192899))))

(declare-fun bs!1025498 () Bool)

(assert (= bs!1025498 (and b!4628388 b!4628260)))

(assert (=> bs!1025498 (= (= (ListMap!4306 Nil!51568) lt!1786866) (= lambda!192910 lambda!192876))))

(declare-fun bs!1025499 () Bool)

(assert (= bs!1025499 (and b!4628388 b!4628356)))

(assert (=> bs!1025499 (= lambda!192910 lambda!192906)))

(declare-fun bs!1025500 () Bool)

(assert (= bs!1025500 (and b!4628388 b!4628354)))

(assert (=> bs!1025500 (= lambda!192910 lambda!192905)))

(declare-fun bs!1025501 () Bool)

(assert (= bs!1025501 (and b!4628388 d!1458235)))

(assert (=> bs!1025501 (= (= (ListMap!4306 Nil!51568) lt!1787346) (= lambda!192910 lambda!192900))))

(assert (=> bs!1025497 (= lambda!192910 lambda!192898)))

(assert (=> bs!1025499 (= (= (ListMap!4306 Nil!51568) lt!1787396) (= lambda!192910 lambda!192907))))

(declare-fun bs!1025502 () Bool)

(assert (= bs!1025502 (and b!4628388 d!1458111)))

(assert (=> bs!1025502 (not (= lambda!192910 lambda!192798))))

(assert (=> bs!1025493 (= (= (ListMap!4306 Nil!51568) lt!1787264) (= lambda!192910 lambda!192879))))

(declare-fun bs!1025503 () Bool)

(assert (= bs!1025503 (and b!4628388 d!1458241)))

(assert (=> bs!1025503 (= (= (ListMap!4306 Nil!51568) lt!1787372) (= lambda!192910 lambda!192904))))

(assert (=> b!4628388 true))

(declare-fun lt!1787441 () ListMap!4305)

(declare-fun lambda!192911 () Int)

(assert (=> bs!1025490 (= (= lt!1787441 (ListMap!4306 Nil!51568)) (= lambda!192911 lambda!192901))))

(assert (=> bs!1025491 (= (= lt!1787441 (ListMap!4306 Nil!51568)) (= lambda!192911 lambda!192902))))

(assert (=> bs!1025492 (= (= lt!1787441 lt!1787393) (= lambda!192911 lambda!192908))))

(assert (=> bs!1025491 (= (= lt!1787441 lt!1787375) (= lambda!192911 lambda!192903))))

(assert (=> bs!1025493 (= (= lt!1787441 lt!1786866) (= lambda!192911 lambda!192878))))

(assert (=> bs!1025494 (= (= lt!1787441 (ListMap!4306 Nil!51568)) (= lambda!192911 lambda!192909))))

(assert (=> bs!1025495 (= (= lt!1787441 (ListMap!4306 Nil!51568)) (= lambda!192911 lambda!192897))))

(assert (=> bs!1025496 (= (= lt!1787441 lt!1787261) (= lambda!192911 lambda!192881))))

(assert (=> bs!1025497 (= (= lt!1787441 lt!1787349) (= lambda!192911 lambda!192899))))

(assert (=> bs!1025498 (= (= lt!1787441 lt!1786866) (= lambda!192911 lambda!192876))))

(assert (=> bs!1025499 (= (= lt!1787441 (ListMap!4306 Nil!51568)) (= lambda!192911 lambda!192906))))

(assert (=> bs!1025500 (= (= lt!1787441 (ListMap!4306 Nil!51568)) (= lambda!192911 lambda!192905))))

(assert (=> bs!1025501 (= (= lt!1787441 lt!1787346) (= lambda!192911 lambda!192900))))

(assert (=> bs!1025497 (= (= lt!1787441 (ListMap!4306 Nil!51568)) (= lambda!192911 lambda!192898))))

(assert (=> b!4628388 (= (= lt!1787441 (ListMap!4306 Nil!51568)) (= lambda!192911 lambda!192910))))

(assert (=> bs!1025499 (= (= lt!1787441 lt!1787396) (= lambda!192911 lambda!192907))))

(assert (=> bs!1025502 (not (= lambda!192911 lambda!192798))))

(assert (=> bs!1025493 (= (= lt!1787441 lt!1787264) (= lambda!192911 lambda!192879))))

(assert (=> bs!1025503 (= (= lt!1787441 lt!1787372) (= lambda!192911 lambda!192904))))

(assert (=> b!4628388 true))

(declare-fun bs!1025504 () Bool)

(declare-fun d!1458251 () Bool)

(assert (= bs!1025504 (and d!1458251 b!4628349)))

(declare-fun lt!1787438 () ListMap!4305)

(declare-fun lambda!192912 () Int)

(assert (=> bs!1025504 (= (= lt!1787438 (ListMap!4306 Nil!51568)) (= lambda!192912 lambda!192901))))

(declare-fun bs!1025505 () Bool)

(assert (= bs!1025505 (and d!1458251 b!4628351)))

(assert (=> bs!1025505 (= (= lt!1787438 (ListMap!4306 Nil!51568)) (= lambda!192912 lambda!192902))))

(assert (=> bs!1025505 (= (= lt!1787438 lt!1787375) (= lambda!192912 lambda!192903))))

(declare-fun bs!1025506 () Bool)

(assert (= bs!1025506 (and d!1458251 b!4628262)))

(assert (=> bs!1025506 (= (= lt!1787438 lt!1786866) (= lambda!192912 lambda!192878))))

(declare-fun bs!1025507 () Bool)

(assert (= bs!1025507 (and d!1458251 b!4628386)))

(assert (=> bs!1025507 (= (= lt!1787438 (ListMap!4306 Nil!51568)) (= lambda!192912 lambda!192909))))

(declare-fun bs!1025508 () Bool)

(assert (= bs!1025508 (and d!1458251 b!4628342)))

(assert (=> bs!1025508 (= (= lt!1787438 (ListMap!4306 Nil!51568)) (= lambda!192912 lambda!192897))))

(declare-fun bs!1025509 () Bool)

(assert (= bs!1025509 (and d!1458251 d!1458123)))

(assert (=> bs!1025509 (= (= lt!1787438 lt!1787261) (= lambda!192912 lambda!192881))))

(declare-fun bs!1025510 () Bool)

(assert (= bs!1025510 (and d!1458251 b!4628344)))

(assert (=> bs!1025510 (= (= lt!1787438 lt!1787349) (= lambda!192912 lambda!192899))))

(declare-fun bs!1025511 () Bool)

(assert (= bs!1025511 (and d!1458251 b!4628388)))

(assert (=> bs!1025511 (= (= lt!1787438 lt!1787441) (= lambda!192912 lambda!192911))))

(declare-fun bs!1025512 () Bool)

(assert (= bs!1025512 (and d!1458251 d!1458247)))

(assert (=> bs!1025512 (= (= lt!1787438 lt!1787393) (= lambda!192912 lambda!192908))))

(declare-fun bs!1025513 () Bool)

(assert (= bs!1025513 (and d!1458251 b!4628260)))

(assert (=> bs!1025513 (= (= lt!1787438 lt!1786866) (= lambda!192912 lambda!192876))))

(declare-fun bs!1025514 () Bool)

(assert (= bs!1025514 (and d!1458251 b!4628356)))

(assert (=> bs!1025514 (= (= lt!1787438 (ListMap!4306 Nil!51568)) (= lambda!192912 lambda!192906))))

(declare-fun bs!1025515 () Bool)

(assert (= bs!1025515 (and d!1458251 b!4628354)))

(assert (=> bs!1025515 (= (= lt!1787438 (ListMap!4306 Nil!51568)) (= lambda!192912 lambda!192905))))

(declare-fun bs!1025516 () Bool)

(assert (= bs!1025516 (and d!1458251 d!1458235)))

(assert (=> bs!1025516 (= (= lt!1787438 lt!1787346) (= lambda!192912 lambda!192900))))

(assert (=> bs!1025510 (= (= lt!1787438 (ListMap!4306 Nil!51568)) (= lambda!192912 lambda!192898))))

(assert (=> bs!1025511 (= (= lt!1787438 (ListMap!4306 Nil!51568)) (= lambda!192912 lambda!192910))))

(assert (=> bs!1025514 (= (= lt!1787438 lt!1787396) (= lambda!192912 lambda!192907))))

(declare-fun bs!1025517 () Bool)

(assert (= bs!1025517 (and d!1458251 d!1458111)))

(assert (=> bs!1025517 (not (= lambda!192912 lambda!192798))))

(assert (=> bs!1025506 (= (= lt!1787438 lt!1787264) (= lambda!192912 lambda!192879))))

(declare-fun bs!1025518 () Bool)

(assert (= bs!1025518 (and d!1458251 d!1458241)))

(assert (=> bs!1025518 (= (= lt!1787438 lt!1787372) (= lambda!192912 lambda!192904))))

(assert (=> d!1458251 true))

(declare-fun b!4628384 () Bool)

(declare-fun e!2887179 () Bool)

(assert (=> b!4628384 (= e!2887179 (invariantList!1214 (toList!5001 lt!1787438)))))

(declare-fun bm!322893 () Bool)

(declare-fun call!322898 () Bool)

(declare-fun c!792250 () Bool)

(assert (=> bm!322893 (= call!322898 (forall!10844 (ite c!792250 (toList!5001 (ListMap!4306 Nil!51568)) lt!1786873) (ite c!792250 lambda!192909 lambda!192911)))))

(declare-fun bm!322894 () Bool)

(declare-fun call!322899 () Unit!112636)

(assert (=> bm!322894 (= call!322899 (lemmaContainsAllItsOwnKeys!516 (ListMap!4306 Nil!51568)))))

(declare-fun e!2887180 () ListMap!4305)

(assert (=> b!4628386 (= e!2887180 (ListMap!4306 Nil!51568))))

(declare-fun lt!1787451 () Unit!112636)

(assert (=> b!4628386 (= lt!1787451 call!322899)))

(assert (=> b!4628386 call!322898))

(declare-fun lt!1787440 () Unit!112636)

(assert (=> b!4628386 (= lt!1787440 lt!1787451)))

(declare-fun call!322900 () Bool)

(assert (=> b!4628386 call!322900))

(declare-fun lt!1787456 () Unit!112636)

(declare-fun Unit!112745 () Unit!112636)

(assert (=> b!4628386 (= lt!1787456 Unit!112745)))

(declare-fun bm!322895 () Bool)

(assert (=> bm!322895 (= call!322900 (forall!10844 (ite c!792250 (toList!5001 (ListMap!4306 Nil!51568)) (t!358734 lt!1786873)) (ite c!792250 lambda!192909 lambda!192911)))))

(declare-fun b!4628387 () Bool)

(declare-fun e!2887178 () Bool)

(assert (=> b!4628387 (= e!2887178 (forall!10844 (toList!5001 (ListMap!4306 Nil!51568)) lambda!192911))))

(assert (=> b!4628388 (= e!2887180 lt!1787441)))

(declare-fun lt!1787439 () ListMap!4305)

(assert (=> b!4628388 (= lt!1787439 (+!1884 (ListMap!4306 Nil!51568) (h!57628 lt!1786873)))))

(assert (=> b!4628388 (= lt!1787441 (addToMapMapFromBucket!979 (t!358734 lt!1786873) (+!1884 (ListMap!4306 Nil!51568) (h!57628 lt!1786873))))))

(declare-fun lt!1787450 () Unit!112636)

(assert (=> b!4628388 (= lt!1787450 call!322899)))

(assert (=> b!4628388 (forall!10844 (toList!5001 (ListMap!4306 Nil!51568)) lambda!192910)))

(declare-fun lt!1787457 () Unit!112636)

(assert (=> b!4628388 (= lt!1787457 lt!1787450)))

(assert (=> b!4628388 (forall!10844 (toList!5001 lt!1787439) lambda!192911)))

(declare-fun lt!1787454 () Unit!112636)

(declare-fun Unit!112746 () Unit!112636)

(assert (=> b!4628388 (= lt!1787454 Unit!112746)))

(assert (=> b!4628388 call!322900))

(declare-fun lt!1787449 () Unit!112636)

(declare-fun Unit!112747 () Unit!112636)

(assert (=> b!4628388 (= lt!1787449 Unit!112747)))

(declare-fun lt!1787445 () Unit!112636)

(declare-fun Unit!112748 () Unit!112636)

(assert (=> b!4628388 (= lt!1787445 Unit!112748)))

(declare-fun lt!1787437 () Unit!112636)

(assert (=> b!4628388 (= lt!1787437 (forallContained!3074 (toList!5001 lt!1787439) lambda!192911 (h!57628 lt!1786873)))))

(assert (=> b!4628388 (contains!14633 lt!1787439 (_1!29553 (h!57628 lt!1786873)))))

(declare-fun lt!1787443 () Unit!112636)

(declare-fun Unit!112749 () Unit!112636)

(assert (=> b!4628388 (= lt!1787443 Unit!112749)))

(assert (=> b!4628388 (contains!14633 lt!1787441 (_1!29553 (h!57628 lt!1786873)))))

(declare-fun lt!1787446 () Unit!112636)

(declare-fun Unit!112750 () Unit!112636)

(assert (=> b!4628388 (= lt!1787446 Unit!112750)))

(assert (=> b!4628388 (forall!10844 lt!1786873 lambda!192911)))

(declare-fun lt!1787448 () Unit!112636)

(declare-fun Unit!112751 () Unit!112636)

(assert (=> b!4628388 (= lt!1787448 Unit!112751)))

(assert (=> b!4628388 (forall!10844 (toList!5001 lt!1787439) lambda!192911)))

(declare-fun lt!1787447 () Unit!112636)

(declare-fun Unit!112752 () Unit!112636)

(assert (=> b!4628388 (= lt!1787447 Unit!112752)))

(declare-fun lt!1787442 () Unit!112636)

(declare-fun Unit!112753 () Unit!112636)

(assert (=> b!4628388 (= lt!1787442 Unit!112753)))

(declare-fun lt!1787444 () Unit!112636)

(assert (=> b!4628388 (= lt!1787444 (addForallContainsKeyThenBeforeAdding!515 (ListMap!4306 Nil!51568) lt!1787441 (_1!29553 (h!57628 lt!1786873)) (_2!29553 (h!57628 lt!1786873))))))

(assert (=> b!4628388 (forall!10844 (toList!5001 (ListMap!4306 Nil!51568)) lambda!192911)))

(declare-fun lt!1787455 () Unit!112636)

(assert (=> b!4628388 (= lt!1787455 lt!1787444)))

(assert (=> b!4628388 (forall!10844 (toList!5001 (ListMap!4306 Nil!51568)) lambda!192911)))

(declare-fun lt!1787453 () Unit!112636)

(declare-fun Unit!112754 () Unit!112636)

(assert (=> b!4628388 (= lt!1787453 Unit!112754)))

(declare-fun res!1941386 () Bool)

(assert (=> b!4628388 (= res!1941386 call!322898)))

(assert (=> b!4628388 (=> (not res!1941386) (not e!2887178))))

(assert (=> b!4628388 e!2887178))

(declare-fun lt!1787452 () Unit!112636)

(declare-fun Unit!112755 () Unit!112636)

(assert (=> b!4628388 (= lt!1787452 Unit!112755)))

(assert (=> d!1458251 e!2887179))

(declare-fun res!1941385 () Bool)

(assert (=> d!1458251 (=> (not res!1941385) (not e!2887179))))

(assert (=> d!1458251 (= res!1941385 (forall!10844 lt!1786873 lambda!192912))))

(assert (=> d!1458251 (= lt!1787438 e!2887180)))

(assert (=> d!1458251 (= c!792250 ((_ is Nil!51568) lt!1786873))))

(assert (=> d!1458251 (noDuplicateKeys!1518 lt!1786873)))

(assert (=> d!1458251 (= (addToMapMapFromBucket!979 lt!1786873 (ListMap!4306 Nil!51568)) lt!1787438)))

(declare-fun b!4628385 () Bool)

(declare-fun res!1941384 () Bool)

(assert (=> b!4628385 (=> (not res!1941384) (not e!2887179))))

(assert (=> b!4628385 (= res!1941384 (forall!10844 (toList!5001 (ListMap!4306 Nil!51568)) lambda!192912))))

(assert (= (and d!1458251 c!792250) b!4628386))

(assert (= (and d!1458251 (not c!792250)) b!4628388))

(assert (= (and b!4628388 res!1941386) b!4628387))

(assert (= (or b!4628386 b!4628388) bm!322894))

(assert (= (or b!4628386 b!4628388) bm!322893))

(assert (= (or b!4628386 b!4628388) bm!322895))

(assert (= (and d!1458251 res!1941385) b!4628385))

(assert (= (and b!4628385 res!1941384) b!4628384))

(declare-fun m!5473925 () Bool)

(assert (=> bm!322895 m!5473925))

(assert (=> bm!322894 m!5473793))

(declare-fun m!5473927 () Bool)

(assert (=> d!1458251 m!5473927))

(assert (=> d!1458251 m!5473767))

(declare-fun m!5473929 () Bool)

(assert (=> b!4628384 m!5473929))

(declare-fun m!5473931 () Bool)

(assert (=> bm!322893 m!5473931))

(declare-fun m!5473933 () Bool)

(assert (=> b!4628388 m!5473933))

(declare-fun m!5473935 () Bool)

(assert (=> b!4628388 m!5473935))

(declare-fun m!5473937 () Bool)

(assert (=> b!4628388 m!5473937))

(declare-fun m!5473939 () Bool)

(assert (=> b!4628388 m!5473939))

(declare-fun m!5473941 () Bool)

(assert (=> b!4628388 m!5473941))

(declare-fun m!5473943 () Bool)

(assert (=> b!4628388 m!5473943))

(assert (=> b!4628388 m!5473935))

(declare-fun m!5473945 () Bool)

(assert (=> b!4628388 m!5473945))

(assert (=> b!4628388 m!5473943))

(declare-fun m!5473947 () Bool)

(assert (=> b!4628388 m!5473947))

(declare-fun m!5473949 () Bool)

(assert (=> b!4628388 m!5473949))

(assert (=> b!4628388 m!5473939))

(declare-fun m!5473951 () Bool)

(assert (=> b!4628388 m!5473951))

(declare-fun m!5473953 () Bool)

(assert (=> b!4628385 m!5473953))

(assert (=> b!4628387 m!5473939))

(assert (=> b!4627965 d!1458251))

(declare-fun d!1458253 () Bool)

(declare-fun res!1941387 () Bool)

(declare-fun e!2887181 () Bool)

(assert (=> d!1458253 (=> res!1941387 e!2887181)))

(assert (=> d!1458253 (= res!1941387 (not ((_ is Cons!51568) oldBucket!40)))))

(assert (=> d!1458253 (= (noDuplicateKeys!1518 oldBucket!40) e!2887181)))

(declare-fun b!4628389 () Bool)

(declare-fun e!2887182 () Bool)

(assert (=> b!4628389 (= e!2887181 e!2887182)))

(declare-fun res!1941388 () Bool)

(assert (=> b!4628389 (=> (not res!1941388) (not e!2887182))))

(assert (=> b!4628389 (= res!1941388 (not (containsKey!2478 (t!358734 oldBucket!40) (_1!29553 (h!57628 oldBucket!40)))))))

(declare-fun b!4628390 () Bool)

(assert (=> b!4628390 (= e!2887182 (noDuplicateKeys!1518 (t!358734 oldBucket!40)))))

(assert (= (and d!1458253 (not res!1941387)) b!4628389))

(assert (= (and b!4628389 res!1941388) b!4628390))

(declare-fun m!5473955 () Bool)

(assert (=> b!4628389 m!5473955))

(assert (=> b!4628390 m!5473691))

(assert (=> start!464116 d!1458253))

(declare-fun bs!1025519 () Bool)

(declare-fun d!1458255 () Bool)

(assert (= bs!1025519 (and d!1458255 b!4628349)))

(declare-fun lambda!192913 () Int)

(assert (=> bs!1025519 (not (= lambda!192913 lambda!192901))))

(declare-fun bs!1025520 () Bool)

(assert (= bs!1025520 (and d!1458255 b!4628351)))

(assert (=> bs!1025520 (not (= lambda!192913 lambda!192902))))

(assert (=> bs!1025520 (not (= lambda!192913 lambda!192903))))

(declare-fun bs!1025521 () Bool)

(assert (= bs!1025521 (and d!1458255 b!4628262)))

(assert (=> bs!1025521 (not (= lambda!192913 lambda!192878))))

(declare-fun bs!1025522 () Bool)

(assert (= bs!1025522 (and d!1458255 b!4628386)))

(assert (=> bs!1025522 (not (= lambda!192913 lambda!192909))))

(declare-fun bs!1025523 () Bool)

(assert (= bs!1025523 (and d!1458255 b!4628342)))

(assert (=> bs!1025523 (not (= lambda!192913 lambda!192897))))

(declare-fun bs!1025524 () Bool)

(assert (= bs!1025524 (and d!1458255 b!4628344)))

(assert (=> bs!1025524 (not (= lambda!192913 lambda!192899))))

(declare-fun bs!1025525 () Bool)

(assert (= bs!1025525 (and d!1458255 b!4628388)))

(assert (=> bs!1025525 (not (= lambda!192913 lambda!192911))))

(declare-fun bs!1025526 () Bool)

(assert (= bs!1025526 (and d!1458255 d!1458247)))

(assert (=> bs!1025526 (not (= lambda!192913 lambda!192908))))

(declare-fun bs!1025527 () Bool)

(assert (= bs!1025527 (and d!1458255 b!4628260)))

(assert (=> bs!1025527 (not (= lambda!192913 lambda!192876))))

(declare-fun bs!1025528 () Bool)

(assert (= bs!1025528 (and d!1458255 b!4628356)))

(assert (=> bs!1025528 (not (= lambda!192913 lambda!192906))))

(declare-fun bs!1025529 () Bool)

(assert (= bs!1025529 (and d!1458255 b!4628354)))

(assert (=> bs!1025529 (not (= lambda!192913 lambda!192905))))

(declare-fun bs!1025530 () Bool)

(assert (= bs!1025530 (and d!1458255 d!1458235)))

(assert (=> bs!1025530 (not (= lambda!192913 lambda!192900))))

(assert (=> bs!1025524 (not (= lambda!192913 lambda!192898))))

(assert (=> bs!1025525 (not (= lambda!192913 lambda!192910))))

(assert (=> bs!1025528 (not (= lambda!192913 lambda!192907))))

(declare-fun bs!1025531 () Bool)

(assert (= bs!1025531 (and d!1458255 d!1458111)))

(assert (=> bs!1025531 (= lambda!192913 lambda!192798)))

(declare-fun bs!1025532 () Bool)

(assert (= bs!1025532 (and d!1458255 d!1458123)))

(assert (=> bs!1025532 (not (= lambda!192913 lambda!192881))))

(declare-fun bs!1025533 () Bool)

(assert (= bs!1025533 (and d!1458255 d!1458251)))

(assert (=> bs!1025533 (not (= lambda!192913 lambda!192912))))

(assert (=> bs!1025521 (not (= lambda!192913 lambda!192879))))

(declare-fun bs!1025534 () Bool)

(assert (= bs!1025534 (and d!1458255 d!1458241)))

(assert (=> bs!1025534 (not (= lambda!192913 lambda!192904))))

(assert (=> d!1458255 true))

(assert (=> d!1458255 true))

(assert (=> d!1458255 (= (allKeysSameHash!1372 oldBucket!40 hash!414 hashF!1389) (forall!10844 oldBucket!40 lambda!192913))))

(declare-fun bs!1025535 () Bool)

(assert (= bs!1025535 d!1458255))

(declare-fun m!5473957 () Bool)

(assert (=> bs!1025535 m!5473957))

(assert (=> b!4627974 d!1458255))

(declare-fun b!4628391 () Bool)

(declare-fun e!2887186 () Bool)

(assert (=> b!4628391 (= e!2887186 (contains!14639 (keys!18176 lt!1786878) key!4968))))

(declare-fun b!4628392 () Bool)

(declare-fun e!2887187 () List!51695)

(assert (=> b!4628392 (= e!2887187 (keys!18176 lt!1786878))))

(declare-fun bm!322896 () Bool)

(declare-fun call!322901 () Bool)

(assert (=> bm!322896 (= call!322901 (contains!14639 e!2887187 key!4968))))

(declare-fun c!792251 () Bool)

(declare-fun c!792253 () Bool)

(assert (=> bm!322896 (= c!792251 c!792253)))

(declare-fun b!4628393 () Bool)

(declare-fun e!2887188 () Bool)

(assert (=> b!4628393 (= e!2887188 (not (contains!14639 (keys!18176 lt!1786878) key!4968)))))

(declare-fun b!4628394 () Bool)

(declare-fun e!2887185 () Bool)

(assert (=> b!4628394 (= e!2887185 e!2887186)))

(declare-fun res!1941389 () Bool)

(assert (=> b!4628394 (=> (not res!1941389) (not e!2887186))))

(assert (=> b!4628394 (= res!1941389 (isDefined!8889 (getValueByKey!1472 (toList!5001 lt!1786878) key!4968)))))

(declare-fun b!4628395 () Bool)

(assert (=> b!4628395 false))

(declare-fun lt!1787459 () Unit!112636)

(declare-fun lt!1787464 () Unit!112636)

(assert (=> b!4628395 (= lt!1787459 lt!1787464)))

(assert (=> b!4628395 (containsKey!2482 (toList!5001 lt!1786878) key!4968)))

(assert (=> b!4628395 (= lt!1787464 (lemmaInGetKeysListThenContainsKey!664 (toList!5001 lt!1786878) key!4968))))

(declare-fun e!2887183 () Unit!112636)

(declare-fun Unit!112756 () Unit!112636)

(assert (=> b!4628395 (= e!2887183 Unit!112756)))

(declare-fun d!1458257 () Bool)

(assert (=> d!1458257 e!2887185))

(declare-fun res!1941390 () Bool)

(assert (=> d!1458257 (=> res!1941390 e!2887185)))

(assert (=> d!1458257 (= res!1941390 e!2887188)))

(declare-fun res!1941391 () Bool)

(assert (=> d!1458257 (=> (not res!1941391) (not e!2887188))))

(declare-fun lt!1787462 () Bool)

(assert (=> d!1458257 (= res!1941391 (not lt!1787462))))

(declare-fun lt!1787458 () Bool)

(assert (=> d!1458257 (= lt!1787462 lt!1787458)))

(declare-fun lt!1787461 () Unit!112636)

(declare-fun e!2887184 () Unit!112636)

(assert (=> d!1458257 (= lt!1787461 e!2887184)))

(assert (=> d!1458257 (= c!792253 lt!1787458)))

(assert (=> d!1458257 (= lt!1787458 (containsKey!2482 (toList!5001 lt!1786878) key!4968))))

(assert (=> d!1458257 (= (contains!14633 lt!1786878 key!4968) lt!1787462)))

(declare-fun b!4628396 () Bool)

(declare-fun lt!1787463 () Unit!112636)

(assert (=> b!4628396 (= e!2887184 lt!1787463)))

(declare-fun lt!1787465 () Unit!112636)

(assert (=> b!4628396 (= lt!1787465 (lemmaContainsKeyImpliesGetValueByKeyDefined!1374 (toList!5001 lt!1786878) key!4968))))

(assert (=> b!4628396 (isDefined!8889 (getValueByKey!1472 (toList!5001 lt!1786878) key!4968))))

(declare-fun lt!1787460 () Unit!112636)

(assert (=> b!4628396 (= lt!1787460 lt!1787465)))

(assert (=> b!4628396 (= lt!1787463 (lemmaInListThenGetKeysListContains!660 (toList!5001 lt!1786878) key!4968))))

(assert (=> b!4628396 call!322901))

(declare-fun b!4628397 () Bool)

(assert (=> b!4628397 (= e!2887184 e!2887183)))

(declare-fun c!792252 () Bool)

(assert (=> b!4628397 (= c!792252 call!322901)))

(declare-fun b!4628398 () Bool)

(declare-fun Unit!112757 () Unit!112636)

(assert (=> b!4628398 (= e!2887183 Unit!112757)))

(declare-fun b!4628399 () Bool)

(assert (=> b!4628399 (= e!2887187 (getKeysList!665 (toList!5001 lt!1786878)))))

(assert (= (and d!1458257 c!792253) b!4628396))

(assert (= (and d!1458257 (not c!792253)) b!4628397))

(assert (= (and b!4628397 c!792252) b!4628395))

(assert (= (and b!4628397 (not c!792252)) b!4628398))

(assert (= (or b!4628396 b!4628397) bm!322896))

(assert (= (and bm!322896 c!792251) b!4628399))

(assert (= (and bm!322896 (not c!792251)) b!4628392))

(assert (= (and d!1458257 res!1941391) b!4628393))

(assert (= (and d!1458257 (not res!1941390)) b!4628394))

(assert (= (and b!4628394 res!1941389) b!4628391))

(assert (=> b!4628391 m!5473259))

(assert (=> b!4628391 m!5473259))

(declare-fun m!5473959 () Bool)

(assert (=> b!4628391 m!5473959))

(assert (=> b!4628393 m!5473259))

(assert (=> b!4628393 m!5473259))

(assert (=> b!4628393 m!5473959))

(declare-fun m!5473961 () Bool)

(assert (=> b!4628395 m!5473961))

(declare-fun m!5473963 () Bool)

(assert (=> b!4628395 m!5473963))

(declare-fun m!5473965 () Bool)

(assert (=> b!4628394 m!5473965))

(assert (=> b!4628394 m!5473965))

(declare-fun m!5473967 () Bool)

(assert (=> b!4628394 m!5473967))

(declare-fun m!5473969 () Bool)

(assert (=> b!4628399 m!5473969))

(assert (=> d!1458257 m!5473961))

(declare-fun m!5473971 () Bool)

(assert (=> bm!322896 m!5473971))

(assert (=> b!4628392 m!5473259))

(declare-fun m!5473973 () Bool)

(assert (=> b!4628396 m!5473973))

(assert (=> b!4628396 m!5473965))

(assert (=> b!4628396 m!5473965))

(assert (=> b!4628396 m!5473967))

(declare-fun m!5473975 () Bool)

(assert (=> b!4628396 m!5473975))

(assert (=> b!4627975 d!1458257))

(declare-fun bs!1025536 () Bool)

(declare-fun d!1458259 () Bool)

(assert (= bs!1025536 (and d!1458259 d!1458221)))

(declare-fun lambda!192914 () Int)

(assert (=> bs!1025536 (= lambda!192914 lambda!192895)))

(declare-fun bs!1025537 () Bool)

(assert (= bs!1025537 (and d!1458259 d!1458051)))

(assert (=> bs!1025537 (= lambda!192914 lambda!192774)))

(declare-fun bs!1025538 () Bool)

(assert (= bs!1025538 (and d!1458259 d!1458207)))

(assert (=> bs!1025538 (= lambda!192914 lambda!192890)))

(declare-fun bs!1025539 () Bool)

(assert (= bs!1025539 (and d!1458259 d!1458209)))

(assert (=> bs!1025539 (= lambda!192914 lambda!192891)))

(declare-fun bs!1025540 () Bool)

(assert (= bs!1025540 (and d!1458259 d!1458225)))

(assert (=> bs!1025540 (= lambda!192914 lambda!192896)))

(declare-fun bs!1025541 () Bool)

(assert (= bs!1025541 (and d!1458259 b!4627978)))

(assert (=> bs!1025541 (= lambda!192914 lambda!192768)))

(declare-fun bs!1025542 () Bool)

(assert (= bs!1025542 (and d!1458259 d!1458189)))

(assert (=> bs!1025542 (= lambda!192914 lambda!192889)))

(declare-fun bs!1025543 () Bool)

(assert (= bs!1025543 (and d!1458259 d!1458217)))

(assert (=> bs!1025543 (= lambda!192914 lambda!192894)))

(declare-fun bs!1025544 () Bool)

(assert (= bs!1025544 (and d!1458259 d!1458053)))

(assert (=> bs!1025544 (= lambda!192914 lambda!192795)))

(declare-fun lt!1787466 () ListMap!4305)

(assert (=> d!1458259 (invariantList!1214 (toList!5001 lt!1787466))))

(declare-fun e!2887189 () ListMap!4305)

(assert (=> d!1458259 (= lt!1787466 e!2887189)))

(declare-fun c!792254 () Bool)

(assert (=> d!1458259 (= c!792254 ((_ is Cons!51569) lt!1786855))))

(assert (=> d!1458259 (forall!10842 lt!1786855 lambda!192914)))

(assert (=> d!1458259 (= (extractMap!1574 lt!1786855) lt!1787466)))

(declare-fun b!4628400 () Bool)

(assert (=> b!4628400 (= e!2887189 (addToMapMapFromBucket!979 (_2!29554 (h!57629 lt!1786855)) (extractMap!1574 (t!358735 lt!1786855))))))

(declare-fun b!4628401 () Bool)

(assert (=> b!4628401 (= e!2887189 (ListMap!4306 Nil!51568))))

(assert (= (and d!1458259 c!792254) b!4628400))

(assert (= (and d!1458259 (not c!792254)) b!4628401))

(declare-fun m!5473977 () Bool)

(assert (=> d!1458259 m!5473977))

(declare-fun m!5473979 () Bool)

(assert (=> d!1458259 m!5473979))

(declare-fun m!5473981 () Bool)

(assert (=> b!4628400 m!5473981))

(assert (=> b!4628400 m!5473981))

(declare-fun m!5473983 () Bool)

(assert (=> b!4628400 m!5473983))

(assert (=> b!4627975 d!1458259))

(declare-fun d!1458261 () Bool)

(declare-fun e!2887190 () Bool)

(assert (=> d!1458261 e!2887190))

(declare-fun res!1941392 () Bool)

(assert (=> d!1458261 (=> (not res!1941392) (not e!2887190))))

(declare-fun lt!1787467 () ListMap!4305)

(assert (=> d!1458261 (= res!1941392 (not (contains!14633 lt!1787467 key!4968)))))

(assert (=> d!1458261 (= lt!1787467 (ListMap!4306 (removePresrvNoDuplicatedKeys!263 (toList!5001 lt!1786877) key!4968)))))

(assert (=> d!1458261 (= (-!558 lt!1786877 key!4968) lt!1787467)))

(declare-fun b!4628402 () Bool)

(assert (=> b!4628402 (= e!2887190 (= ((_ map and) (content!8829 (keys!18176 lt!1786877)) ((_ map not) (store ((as const (Array K!12945 Bool)) false) key!4968 true))) (content!8829 (keys!18176 lt!1787467))))))

(assert (= (and d!1458261 res!1941392) b!4628402))

(declare-fun m!5473985 () Bool)

(assert (=> d!1458261 m!5473985))

(declare-fun m!5473987 () Bool)

(assert (=> d!1458261 m!5473987))

(assert (=> b!4628402 m!5473253))

(declare-fun m!5473989 () Bool)

(assert (=> b!4628402 m!5473989))

(declare-fun m!5473991 () Bool)

(assert (=> b!4628402 m!5473991))

(declare-fun m!5473993 () Bool)

(assert (=> b!4628402 m!5473993))

(declare-fun m!5473995 () Bool)

(assert (=> b!4628402 m!5473995))

(assert (=> b!4628402 m!5473989))

(assert (=> b!4628402 m!5473993))

(assert (=> b!4627964 d!1458261))

(declare-fun d!1458263 () Bool)

(assert (=> d!1458263 (eq!833 (extractMap!1574 (Cons!51569 (tuple2!52521 hash!414 lt!1786873) Nil!51569)) (-!558 (extractMap!1574 (Cons!51569 (tuple2!52521 hash!414 (t!358734 oldBucket!40)) Nil!51569)) key!4968))))

(declare-fun lt!1787470 () Unit!112636)

(declare-fun choose!31406 ((_ BitVec 64) List!51692 List!51692 K!12945 Hashable!5915) Unit!112636)

(assert (=> d!1458263 (= lt!1787470 (choose!31406 hash!414 (t!358734 oldBucket!40) lt!1786873 key!4968 hashF!1389))))

(assert (=> d!1458263 (noDuplicateKeys!1518 (t!358734 oldBucket!40))))

(assert (=> d!1458263 (= (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMapOneHash!120 hash!414 (t!358734 oldBucket!40) lt!1786873 key!4968 hashF!1389) lt!1787470)))

(declare-fun bs!1025545 () Bool)

(assert (= bs!1025545 d!1458263))

(declare-fun m!5473997 () Bool)

(assert (=> bs!1025545 m!5473997))

(declare-fun m!5473999 () Bool)

(assert (=> bs!1025545 m!5473999))

(assert (=> bs!1025545 m!5473691))

(assert (=> bs!1025545 m!5472885))

(assert (=> bs!1025545 m!5473999))

(declare-fun m!5474001 () Bool)

(assert (=> bs!1025545 m!5474001))

(assert (=> bs!1025545 m!5472885))

(assert (=> bs!1025545 m!5474001))

(declare-fun m!5474003 () Bool)

(assert (=> bs!1025545 m!5474003))

(assert (=> b!4627964 d!1458263))

(declare-fun d!1458265 () Bool)

(declare-fun e!2887191 () Bool)

(assert (=> d!1458265 e!2887191))

(declare-fun res!1941393 () Bool)

(assert (=> d!1458265 (=> (not res!1941393) (not e!2887191))))

(declare-fun lt!1787471 () ListMap!4305)

(assert (=> d!1458265 (= res!1941393 (not (contains!14633 lt!1787471 key!4968)))))

(assert (=> d!1458265 (= lt!1787471 (ListMap!4306 (removePresrvNoDuplicatedKeys!263 (toList!5001 (+!1884 lt!1786880 (h!57628 oldBucket!40))) key!4968)))))

(assert (=> d!1458265 (= (-!558 (+!1884 lt!1786880 (h!57628 oldBucket!40)) key!4968) lt!1787471)))

(declare-fun b!4628403 () Bool)

(assert (=> b!4628403 (= e!2887191 (= ((_ map and) (content!8829 (keys!18176 (+!1884 lt!1786880 (h!57628 oldBucket!40)))) ((_ map not) (store ((as const (Array K!12945 Bool)) false) key!4968 true))) (content!8829 (keys!18176 lt!1787471))))))

(assert (= (and d!1458265 res!1941393) b!4628403))

(declare-fun m!5474005 () Bool)

(assert (=> d!1458265 m!5474005))

(declare-fun m!5474007 () Bool)

(assert (=> d!1458265 m!5474007))

(assert (=> b!4628403 m!5473253))

(declare-fun m!5474009 () Bool)

(assert (=> b!4628403 m!5474009))

(declare-fun m!5474011 () Bool)

(assert (=> b!4628403 m!5474011))

(declare-fun m!5474013 () Bool)

(assert (=> b!4628403 m!5474013))

(declare-fun m!5474015 () Bool)

(assert (=> b!4628403 m!5474015))

(assert (=> b!4628403 m!5474009))

(assert (=> b!4628403 m!5472903))

(assert (=> b!4628403 m!5474013))

(assert (=> b!4627964 d!1458265))

(declare-fun d!1458267 () Bool)

(declare-fun e!2887192 () Bool)

(assert (=> d!1458267 e!2887192))

(declare-fun res!1941395 () Bool)

(assert (=> d!1458267 (=> (not res!1941395) (not e!2887192))))

(declare-fun lt!1787473 () ListMap!4305)

(assert (=> d!1458267 (= res!1941395 (contains!14633 lt!1787473 (_1!29553 (h!57628 oldBucket!40))))))

(declare-fun lt!1787474 () List!51692)

(assert (=> d!1458267 (= lt!1787473 (ListMap!4306 lt!1787474))))

(declare-fun lt!1787472 () Unit!112636)

(declare-fun lt!1787475 () Unit!112636)

(assert (=> d!1458267 (= lt!1787472 lt!1787475)))

(assert (=> d!1458267 (= (getValueByKey!1472 lt!1787474 (_1!29553 (h!57628 oldBucket!40))) (Some!11623 (_2!29553 (h!57628 oldBucket!40))))))

(assert (=> d!1458267 (= lt!1787475 (lemmaContainsTupThenGetReturnValue!858 lt!1787474 (_1!29553 (h!57628 oldBucket!40)) (_2!29553 (h!57628 oldBucket!40))))))

(assert (=> d!1458267 (= lt!1787474 (insertNoDuplicatedKeys!366 (toList!5001 lt!1786880) (_1!29553 (h!57628 oldBucket!40)) (_2!29553 (h!57628 oldBucket!40))))))

(assert (=> d!1458267 (= (+!1884 lt!1786880 (h!57628 oldBucket!40)) lt!1787473)))

(declare-fun b!4628404 () Bool)

(declare-fun res!1941394 () Bool)

(assert (=> b!4628404 (=> (not res!1941394) (not e!2887192))))

(assert (=> b!4628404 (= res!1941394 (= (getValueByKey!1472 (toList!5001 lt!1787473) (_1!29553 (h!57628 oldBucket!40))) (Some!11623 (_2!29553 (h!57628 oldBucket!40)))))))

(declare-fun b!4628405 () Bool)

(assert (=> b!4628405 (= e!2887192 (contains!14638 (toList!5001 lt!1787473) (h!57628 oldBucket!40)))))

(assert (= (and d!1458267 res!1941395) b!4628404))

(assert (= (and b!4628404 res!1941394) b!4628405))

(declare-fun m!5474017 () Bool)

(assert (=> d!1458267 m!5474017))

(declare-fun m!5474019 () Bool)

(assert (=> d!1458267 m!5474019))

(declare-fun m!5474021 () Bool)

(assert (=> d!1458267 m!5474021))

(declare-fun m!5474023 () Bool)

(assert (=> d!1458267 m!5474023))

(declare-fun m!5474025 () Bool)

(assert (=> b!4628404 m!5474025))

(declare-fun m!5474027 () Bool)

(assert (=> b!4628405 m!5474027))

(assert (=> b!4627964 d!1458267))

(declare-fun d!1458269 () Bool)

(assert (=> d!1458269 (= (-!558 (+!1884 lt!1786880 (tuple2!52519 (_1!29553 (h!57628 oldBucket!40)) (_2!29553 (h!57628 oldBucket!40)))) key!4968) (+!1884 (-!558 lt!1786880 key!4968) (tuple2!52519 (_1!29553 (h!57628 oldBucket!40)) (_2!29553 (h!57628 oldBucket!40)))))))

(declare-fun lt!1787478 () Unit!112636)

(declare-fun choose!31407 (ListMap!4305 K!12945 V!13191 K!12945) Unit!112636)

(assert (=> d!1458269 (= lt!1787478 (choose!31407 lt!1786880 (_1!29553 (h!57628 oldBucket!40)) (_2!29553 (h!57628 oldBucket!40)) key!4968))))

(assert (=> d!1458269 (not (= (_1!29553 (h!57628 oldBucket!40)) key!4968))))

(assert (=> d!1458269 (= (addRemoveCommutativeForDiffKeys!13 lt!1786880 (_1!29553 (h!57628 oldBucket!40)) (_2!29553 (h!57628 oldBucket!40)) key!4968) lt!1787478)))

(declare-fun bs!1025546 () Bool)

(assert (= bs!1025546 d!1458269))

(assert (=> bs!1025546 m!5472909))

(declare-fun m!5474029 () Bool)

(assert (=> bs!1025546 m!5474029))

(declare-fun m!5474031 () Bool)

(assert (=> bs!1025546 m!5474031))

(declare-fun m!5474033 () Bool)

(assert (=> bs!1025546 m!5474033))

(declare-fun m!5474035 () Bool)

(assert (=> bs!1025546 m!5474035))

(assert (=> bs!1025546 m!5474033))

(assert (=> bs!1025546 m!5472909))

(assert (=> b!4627964 d!1458269))

(declare-fun d!1458271 () Bool)

(declare-fun e!2887193 () Bool)

(assert (=> d!1458271 e!2887193))

(declare-fun res!1941397 () Bool)

(assert (=> d!1458271 (=> (not res!1941397) (not e!2887193))))

(declare-fun lt!1787480 () ListMap!4305)

(assert (=> d!1458271 (= res!1941397 (contains!14633 lt!1787480 (_1!29553 (h!57628 oldBucket!40))))))

(declare-fun lt!1787481 () List!51692)

(assert (=> d!1458271 (= lt!1787480 (ListMap!4306 lt!1787481))))

(declare-fun lt!1787479 () Unit!112636)

(declare-fun lt!1787482 () Unit!112636)

(assert (=> d!1458271 (= lt!1787479 lt!1787482)))

(assert (=> d!1458271 (= (getValueByKey!1472 lt!1787481 (_1!29553 (h!57628 oldBucket!40))) (Some!11623 (_2!29553 (h!57628 oldBucket!40))))))

(assert (=> d!1458271 (= lt!1787482 (lemmaContainsTupThenGetReturnValue!858 lt!1787481 (_1!29553 (h!57628 oldBucket!40)) (_2!29553 (h!57628 oldBucket!40))))))

(assert (=> d!1458271 (= lt!1787481 (insertNoDuplicatedKeys!366 (toList!5001 lt!1786867) (_1!29553 (h!57628 oldBucket!40)) (_2!29553 (h!57628 oldBucket!40))))))

(assert (=> d!1458271 (= (+!1884 lt!1786867 (h!57628 oldBucket!40)) lt!1787480)))

(declare-fun b!4628406 () Bool)

(declare-fun res!1941396 () Bool)

(assert (=> b!4628406 (=> (not res!1941396) (not e!2887193))))

(assert (=> b!4628406 (= res!1941396 (= (getValueByKey!1472 (toList!5001 lt!1787480) (_1!29553 (h!57628 oldBucket!40))) (Some!11623 (_2!29553 (h!57628 oldBucket!40)))))))

(declare-fun b!4628407 () Bool)

(assert (=> b!4628407 (= e!2887193 (contains!14638 (toList!5001 lt!1787480) (h!57628 oldBucket!40)))))

(assert (= (and d!1458271 res!1941397) b!4628406))

(assert (= (and b!4628406 res!1941396) b!4628407))

(declare-fun m!5474037 () Bool)

(assert (=> d!1458271 m!5474037))

(declare-fun m!5474039 () Bool)

(assert (=> d!1458271 m!5474039))

(declare-fun m!5474041 () Bool)

(assert (=> d!1458271 m!5474041))

(declare-fun m!5474043 () Bool)

(assert (=> d!1458271 m!5474043))

(declare-fun m!5474045 () Bool)

(assert (=> b!4628406 m!5474045))

(declare-fun m!5474047 () Bool)

(assert (=> b!4628407 m!5474047))

(assert (=> b!4627964 d!1458271))

(declare-fun d!1458273 () Bool)

(assert (=> d!1458273 (= (eq!833 lt!1786860 lt!1786867) (= (content!8828 (toList!5001 lt!1786860)) (content!8828 (toList!5001 lt!1786867))))))

(declare-fun bs!1025547 () Bool)

(assert (= bs!1025547 d!1458273))

(declare-fun m!5474049 () Bool)

(assert (=> bs!1025547 m!5474049))

(declare-fun m!5474051 () Bool)

(assert (=> bs!1025547 m!5474051))

(assert (=> b!4627964 d!1458273))

(declare-fun d!1458275 () Bool)

(declare-fun e!2887194 () Bool)

(assert (=> d!1458275 e!2887194))

(declare-fun res!1941398 () Bool)

(assert (=> d!1458275 (=> (not res!1941398) (not e!2887194))))

(declare-fun lt!1787483 () ListMap!4305)

(assert (=> d!1458275 (= res!1941398 (not (contains!14633 lt!1787483 key!4968)))))

(assert (=> d!1458275 (= lt!1787483 (ListMap!4306 (removePresrvNoDuplicatedKeys!263 (toList!5001 lt!1786880) key!4968)))))

(assert (=> d!1458275 (= (-!558 lt!1786880 key!4968) lt!1787483)))

(declare-fun b!4628408 () Bool)

(assert (=> b!4628408 (= e!2887194 (= ((_ map and) (content!8829 (keys!18176 lt!1786880)) ((_ map not) (store ((as const (Array K!12945 Bool)) false) key!4968 true))) (content!8829 (keys!18176 lt!1787483))))))

(assert (= (and d!1458275 res!1941398) b!4628408))

(declare-fun m!5474053 () Bool)

(assert (=> d!1458275 m!5474053))

(declare-fun m!5474055 () Bool)

(assert (=> d!1458275 m!5474055))

(assert (=> b!4628408 m!5473253))

(declare-fun m!5474057 () Bool)

(assert (=> b!4628408 m!5474057))

(declare-fun m!5474059 () Bool)

(assert (=> b!4628408 m!5474059))

(assert (=> b!4628408 m!5473905))

(declare-fun m!5474061 () Bool)

(assert (=> b!4628408 m!5474061))

(assert (=> b!4628408 m!5474057))

(assert (=> b!4628408 m!5473905))

(assert (=> b!4627964 d!1458275))

(declare-fun b!4628413 () Bool)

(declare-fun tp!1342226 () Bool)

(declare-fun e!2887197 () Bool)

(assert (=> b!4628413 (= e!2887197 (and tp_is_empty!29365 tp_is_empty!29367 tp!1342226))))

(assert (=> b!4627971 (= tp!1342219 e!2887197)))

(assert (= (and b!4627971 ((_ is Cons!51568) (t!358734 newBucket!224))) b!4628413))

(declare-fun tp!1342227 () Bool)

(declare-fun b!4628414 () Bool)

(declare-fun e!2887198 () Bool)

(assert (=> b!4628414 (= e!2887198 (and tp_is_empty!29365 tp_is_empty!29367 tp!1342227))))

(assert (=> b!4627976 (= tp!1342218 e!2887198)))

(assert (= (and b!4627976 ((_ is Cons!51568) (t!358734 oldBucket!40))) b!4628414))

(declare-fun b_lambda!170817 () Bool)

(assert (= b_lambda!170811 (or b!4627978 b_lambda!170817)))

(declare-fun bs!1025548 () Bool)

(declare-fun d!1458277 () Bool)

(assert (= bs!1025548 (and d!1458277 b!4627978)))

(assert (=> bs!1025548 (= (dynLambda!21508 lambda!192768 (h!57629 lt!1786874)) (noDuplicateKeys!1518 (_2!29554 (h!57629 lt!1786874))))))

(declare-fun m!5474063 () Bool)

(assert (=> bs!1025548 m!5474063))

(assert (=> b!4628179 d!1458277))

(declare-fun b_lambda!170819 () Bool)

(assert (= b_lambda!170809 (or b!4627978 b_lambda!170819)))

(declare-fun bs!1025549 () Bool)

(declare-fun d!1458279 () Bool)

(assert (= bs!1025549 (and d!1458279 b!4627978)))

(assert (=> bs!1025549 (= (dynLambda!21508 lambda!192768 lt!1786861) (noDuplicateKeys!1518 (_2!29554 lt!1786861)))))

(declare-fun m!5474065 () Bool)

(assert (=> bs!1025549 m!5474065))

(assert (=> d!1458109 d!1458279))

(check-sat (not bm!322877) (not d!1458275) (not d!1458269) (not b!4628330) (not b!4628356) (not b!4628301) (not d!1458207) (not d!1458267) (not b!4628334) (not b!4628162) (not b!4628164) (not d!1458121) (not d!1458103) (not d!1458053) (not b!4628379) (not b!4628125) (not b!4628336) (not bm!322886) (not d!1458231) (not b!4628180) (not d!1458251) (not b!4628167) (not b!4628132) (not bm!322881) (not d!1458273) (not bm!322884) (not b!4628375) (not b!4628294) (not b!4628338) (not d!1458117) (not b!4628395) (not b!4628413) (not d!1458227) (not d!1458111) (not d!1458259) (not b!4628389) (not b!4628380) (not b!4628159) (not b!4628348) (not b!4628403) (not d!1458235) (not d!1458261) (not b!4628400) (not b!4628408) (not d!1458095) (not d!1458211) (not b!4628110) (not d!1458123) (not b!4628163) (not b!4628414) (not b!4628394) (not bm!322896) (not b!4628344) (not b!4628259) (not d!1458093) (not d!1458209) (not b!4628160) (not bm!322887) (not bm!322892) (not d!1458091) (not bm!322885) (not d!1458099) (not b!4628385) (not d!1458263) (not b!4628333) (not d!1458249) (not d!1458105) (not b!4628323) (not bm!322883) (not bm!322895) (not d!1458221) (not b!4628170) (not b!4628404) (not d!1458225) (not b!4628183) (not b!4628353) (not d!1458217) tp_is_empty!29367 (not d!1458237) (not b!4628324) (not b!4628109) (not d!1458113) (not b!4628343) (not bm!322894) (not d!1458247) (not b!4628396) (not b!4628387) (not d!1458255) (not d!1458233) (not bm!322888) (not b!4628402) (not b!4628258) (not d!1458189) (not b!4628141) (not bs!1025549) (not d!1458203) (not b!4628383) (not d!1458239) (not d!1458271) (not b!4628391) (not b!4628378) (not d!1458051) (not b!4628108) (not d!1458109) (not b!4628340) (not b_lambda!170819) (not bm!322889) (not bm!322882) (not bm!322876) (not b!4628350) (not b!4628261) (not b!4628388) (not b!4628377) (not b!4628393) (not b!4628339) (not b_lambda!170817) (not b!4628326) (not d!1458199) (not bm!322893) (not b!4628406) (not d!1458119) (not d!1458205) (not d!1458229) (not d!1458245) (not b!4628332) (not bm!322875) (not d!1458241) (not d!1458219) (not b!4628346) (not d!1458201) (not d!1458101) (not b!4628405) (not b!4628322) (not b!4628390) (not d!1458257) (not b!4628312) (not b!4628300) (not b!4628341) (not b!4628351) (not b!4628107) (not b!4628355) (not b!4628392) (not b!4628347) (not b!4628399) tp_is_empty!29365 (not b!4628376) (not b!4628384) (not bs!1025548) (not b!4628316) (not b!4628352) (not b!4628345) (not b!4628407) (not b!4628139) (not b!4628262) (not d!1458265))
(check-sat)
