; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!423124 () Bool)

(assert start!423124)

(declare-fun b!4364263 () Bool)

(declare-fun e!2716175 () Bool)

(declare-fun tp!1330510 () Bool)

(assert (=> b!4364263 (= e!2716175 tp!1330510)))

(declare-fun b!4364264 () Bool)

(declare-fun e!2716166 () Bool)

(declare-fun e!2716173 () Bool)

(assert (=> b!4364264 (= e!2716166 e!2716173)))

(declare-fun res!1794893 () Bool)

(assert (=> b!4364264 (=> res!1794893 e!2716173)))

(declare-datatypes ((V!10616 0))(
  ( (V!10617 (val!16567 Int)) )
))
(declare-datatypes ((K!10370 0))(
  ( (K!10371 (val!16568 Int)) )
))
(declare-datatypes ((tuple2!48454 0))(
  ( (tuple2!48455 (_1!27521 K!10370) (_2!27521 V!10616)) )
))
(declare-datatypes ((List!49137 0))(
  ( (Nil!49013) (Cons!49013 (h!54582 tuple2!48454) (t!356057 List!49137)) )
))
(declare-datatypes ((tuple2!48456 0))(
  ( (tuple2!48457 (_1!27522 (_ BitVec 64)) (_2!27522 List!49137)) )
))
(declare-datatypes ((List!49138 0))(
  ( (Nil!49014) (Cons!49014 (h!54583 tuple2!48456) (t!356058 List!49138)) )
))
(declare-datatypes ((ListLongMap!1675 0))(
  ( (ListLongMap!1676 (toList!3025 List!49138)) )
))
(declare-fun lm!1707 () ListLongMap!1675)

(declare-fun hash!377 () (_ BitVec 64))

(get-info :version)

(assert (=> b!4364264 (= res!1794893 (or (and ((_ is Cons!49014) (toList!3025 lm!1707)) (= (_1!27522 (h!54583 (toList!3025 lm!1707))) hash!377)) (not ((_ is Cons!49014) (toList!3025 lm!1707))) (= (_1!27522 (h!54583 (toList!3025 lm!1707))) hash!377)))))

(declare-fun e!2716168 () Bool)

(assert (=> b!4364264 e!2716168))

(declare-fun res!1794902 () Bool)

(assert (=> b!4364264 (=> (not res!1794902) (not e!2716168))))

(declare-fun lt!1576965 () ListLongMap!1675)

(declare-fun lambda!142249 () Int)

(declare-fun forall!9176 (List!49138 Int) Bool)

(assert (=> b!4364264 (= res!1794902 (forall!9176 (toList!3025 lt!1576965) lambda!142249))))

(declare-fun lt!1576980 () tuple2!48456)

(declare-fun +!699 (ListLongMap!1675 tuple2!48456) ListLongMap!1675)

(assert (=> b!4364264 (= lt!1576965 (+!699 lm!1707 lt!1576980))))

(declare-fun newBucket!200 () List!49137)

(assert (=> b!4364264 (= lt!1576980 (tuple2!48457 hash!377 newBucket!200))))

(declare-datatypes ((Unit!72869 0))(
  ( (Unit!72870) )
))
(declare-fun lt!1576963 () Unit!72869)

(declare-fun addValidProp!175 (ListLongMap!1675 Int (_ BitVec 64) List!49137) Unit!72869)

(assert (=> b!4364264 (= lt!1576963 (addValidProp!175 lm!1707 lambda!142249 hash!377 newBucket!200))))

(assert (=> b!4364264 (forall!9176 (toList!3025 lm!1707) lambda!142249)))

(declare-fun b!4364265 () Bool)

(declare-fun res!1794896 () Bool)

(assert (=> b!4364265 (=> res!1794896 e!2716166)))

(declare-fun noDuplicateKeys!521 (List!49137) Bool)

(assert (=> b!4364265 (= res!1794896 (not (noDuplicateKeys!521 newBucket!200)))))

(declare-fun b!4364266 () Bool)

(declare-fun res!1794900 () Bool)

(declare-fun e!2716170 () Bool)

(assert (=> b!4364266 (=> (not res!1794900) (not e!2716170))))

(declare-datatypes ((Hashable!4913 0))(
  ( (HashableExt!4912 (__x!30616 Int)) )
))
(declare-fun hashF!1247 () Hashable!4913)

(declare-fun key!3918 () K!10370)

(declare-fun hash!1655 (Hashable!4913 K!10370) (_ BitVec 64))

(assert (=> b!4364266 (= res!1794900 (= (hash!1655 hashF!1247 key!3918) hash!377))))

(declare-fun b!4364267 () Bool)

(declare-fun res!1794898 () Bool)

(assert (=> b!4364267 (=> (not res!1794898) (not e!2716170))))

(declare-fun allKeysSameHash!479 (List!49137 (_ BitVec 64) Hashable!4913) Bool)

(assert (=> b!4364267 (= res!1794898 (allKeysSameHash!479 newBucket!200 hash!377 hashF!1247))))

(declare-fun res!1794895 () Bool)

(assert (=> start!423124 (=> (not res!1794895) (not e!2716170))))

(assert (=> start!423124 (= res!1794895 (forall!9176 (toList!3025 lm!1707) lambda!142249))))

(assert (=> start!423124 e!2716170))

(declare-fun e!2716169 () Bool)

(assert (=> start!423124 e!2716169))

(assert (=> start!423124 true))

(declare-fun inv!64556 (ListLongMap!1675) Bool)

(assert (=> start!423124 (and (inv!64556 lm!1707) e!2716175)))

(declare-fun tp_is_empty!25321 () Bool)

(assert (=> start!423124 tp_is_empty!25321))

(declare-fun tp_is_empty!25323 () Bool)

(assert (=> start!423124 tp_is_empty!25323))

(declare-fun b!4364268 () Bool)

(declare-fun e!2716176 () Bool)

(assert (=> b!4364268 (= e!2716173 e!2716176)))

(declare-fun res!1794892 () Bool)

(assert (=> b!4364268 (=> res!1794892 e!2716176)))

(declare-datatypes ((ListMap!2269 0))(
  ( (ListMap!2270 (toList!3026 List!49137)) )
))
(declare-fun lt!1576961 () ListMap!2269)

(declare-fun lt!1576962 () ListMap!2269)

(declare-fun eq!291 (ListMap!2269 ListMap!2269) Bool)

(assert (=> b!4364268 (= res!1794892 (not (eq!291 lt!1576961 lt!1576962)))))

(declare-fun lt!1576968 () ListMap!2269)

(declare-fun lt!1576984 () ListMap!2269)

(assert (=> b!4364268 (eq!291 lt!1576968 lt!1576984)))

(declare-fun lt!1576967 () tuple2!48454)

(declare-fun +!700 (ListMap!2269 tuple2!48454) ListMap!2269)

(assert (=> b!4364268 (= lt!1576984 (+!700 lt!1576961 lt!1576967))))

(declare-fun lt!1576973 () ListMap!2269)

(declare-fun addToMapMapFromBucket!217 (List!49137 ListMap!2269) ListMap!2269)

(assert (=> b!4364268 (= lt!1576968 (addToMapMapFromBucket!217 (_2!27522 (h!54583 (toList!3025 lm!1707))) lt!1576973))))

(declare-fun lt!1576974 () ListMap!2269)

(declare-fun lt!1576972 () Unit!72869)

(declare-fun newValue!99 () V!10616)

(declare-fun lemmaAddToMapFromBucketPlusKeyValueIsCommutative!100 (ListMap!2269 K!10370 V!10616 List!49137) Unit!72869)

(assert (=> b!4364268 (= lt!1576972 (lemmaAddToMapFromBucketPlusKeyValueIsCommutative!100 lt!1576974 key!3918 newValue!99 (_2!27522 (h!54583 (toList!3025 lm!1707)))))))

(assert (=> b!4364268 (= lt!1576962 lt!1576961)))

(assert (=> b!4364268 (= lt!1576961 (addToMapMapFromBucket!217 (_2!27522 (h!54583 (toList!3025 lm!1707))) lt!1576974))))

(declare-fun e!2716167 () Bool)

(assert (=> b!4364268 e!2716167))

(declare-fun res!1794903 () Bool)

(assert (=> b!4364268 (=> (not res!1794903) (not e!2716167))))

(declare-fun lt!1576977 () ListMap!2269)

(assert (=> b!4364268 (= res!1794903 (eq!291 lt!1576977 lt!1576973))))

(assert (=> b!4364268 (= lt!1576973 (+!700 lt!1576974 lt!1576967))))

(declare-fun lt!1576975 () ListLongMap!1675)

(declare-fun extractMap!580 (List!49138) ListMap!2269)

(assert (=> b!4364268 (= lt!1576977 (extractMap!580 (toList!3025 (+!699 lt!1576975 lt!1576980))))))

(declare-fun lt!1576983 () Unit!72869)

(declare-fun lemmaChangeOneBucketToUpdateAnExistingKeyUpdateThisKeyInGenMap!125 (ListLongMap!1675 (_ BitVec 64) List!49137 K!10370 V!10616 Hashable!4913) Unit!72869)

(assert (=> b!4364268 (= lt!1576983 (lemmaChangeOneBucketToUpdateAnExistingKeyUpdateThisKeyInGenMap!125 lt!1576975 hash!377 newBucket!200 key!3918 newValue!99 hashF!1247))))

(declare-fun contains!11267 (ListMap!2269 K!10370) Bool)

(assert (=> b!4364268 (contains!11267 lt!1576974 key!3918)))

(assert (=> b!4364268 (= lt!1576974 (extractMap!580 (toList!3025 lt!1576975)))))

(declare-fun tail!7046 (ListLongMap!1675) ListLongMap!1675)

(assert (=> b!4364268 (= lt!1576975 (tail!7046 lm!1707))))

(declare-fun lt!1576969 () ListMap!2269)

(assert (=> b!4364268 (contains!11267 lt!1576969 key!3918)))

(declare-fun lt!1576979 () Unit!72869)

(declare-fun lemmaAddToMapContainsAndNotInListThenInAcc!64 (List!49137 K!10370 V!10616 ListMap!2269) Unit!72869)

(assert (=> b!4364268 (= lt!1576979 (lemmaAddToMapContainsAndNotInListThenInAcc!64 (_2!27522 (h!54583 (toList!3025 lm!1707))) key!3918 newValue!99 lt!1576969))))

(assert (=> b!4364268 (= lt!1576969 (extractMap!580 (t!356058 (toList!3025 lm!1707))))))

(declare-fun e!2716174 () Bool)

(assert (=> b!4364268 e!2716174))

(declare-fun res!1794897 () Bool)

(assert (=> b!4364268 (=> (not res!1794897) (not e!2716174))))

(declare-fun containsKey!758 (List!49137 K!10370) Bool)

(declare-fun apply!11373 (ListLongMap!1675 (_ BitVec 64)) List!49137)

(assert (=> b!4364268 (= res!1794897 (not (containsKey!758 (apply!11373 lm!1707 (_1!27522 (h!54583 (toList!3025 lm!1707)))) key!3918)))))

(declare-fun lt!1576971 () Unit!72869)

(declare-fun lemmaNotSameHashThenCannotContainKey!68 (ListLongMap!1675 K!10370 (_ BitVec 64) Hashable!4913) Unit!72869)

(assert (=> b!4364268 (= lt!1576971 (lemmaNotSameHashThenCannotContainKey!68 lm!1707 key!3918 (_1!27522 (h!54583 (toList!3025 lm!1707))) hashF!1247))))

(declare-fun b!4364269 () Bool)

(declare-fun res!1794901 () Bool)

(assert (=> b!4364269 (=> (not res!1794901) (not e!2716170))))

(declare-fun allKeysSameHashInMap!625 (ListLongMap!1675 Hashable!4913) Bool)

(assert (=> b!4364269 (= res!1794901 (allKeysSameHashInMap!625 lm!1707 hashF!1247))))

(declare-fun b!4364270 () Bool)

(assert (=> b!4364270 (= e!2716174 (not (containsKey!758 (_2!27522 (h!54583 (toList!3025 lm!1707))) key!3918)))))

(declare-fun b!4364271 () Bool)

(declare-fun e!2716172 () Bool)

(assert (=> b!4364271 (= e!2716172 (not e!2716166))))

(declare-fun res!1794890 () Bool)

(assert (=> b!4364271 (=> res!1794890 e!2716166)))

(declare-fun lt!1576970 () List!49137)

(declare-fun removePairForKey!491 (List!49137 K!10370) List!49137)

(assert (=> b!4364271 (= res!1794890 (not (= newBucket!200 (Cons!49013 lt!1576967 (removePairForKey!491 lt!1576970 key!3918)))))))

(assert (=> b!4364271 (= lt!1576967 (tuple2!48455 key!3918 newValue!99))))

(declare-fun lt!1576976 () tuple2!48456)

(declare-fun lt!1576978 () Unit!72869)

(declare-fun forallContained!1817 (List!49138 Int tuple2!48456) Unit!72869)

(assert (=> b!4364271 (= lt!1576978 (forallContained!1817 (toList!3025 lm!1707) lambda!142249 lt!1576976))))

(declare-fun contains!11268 (List!49138 tuple2!48456) Bool)

(assert (=> b!4364271 (contains!11268 (toList!3025 lm!1707) lt!1576976)))

(assert (=> b!4364271 (= lt!1576976 (tuple2!48457 hash!377 lt!1576970))))

(declare-fun lt!1576964 () Unit!72869)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!368 (List!49138 (_ BitVec 64) List!49137) Unit!72869)

(assert (=> b!4364271 (= lt!1576964 (lemmaGetValueByKeyImpliesContainsTuple!368 (toList!3025 lm!1707) hash!377 lt!1576970))))

(assert (=> b!4364271 (= lt!1576970 (apply!11373 lm!1707 hash!377))))

(declare-fun b!4364272 () Bool)

(declare-fun res!1794894 () Bool)

(assert (=> b!4364272 (=> (not res!1794894) (not e!2716172))))

(declare-fun contains!11269 (ListLongMap!1675 (_ BitVec 64)) Bool)

(assert (=> b!4364272 (= res!1794894 (contains!11269 lm!1707 hash!377))))

(declare-fun b!4364273 () Bool)

(declare-fun head!9098 (ListLongMap!1675) tuple2!48456)

(assert (=> b!4364273 (= e!2716167 (not (= (head!9098 lm!1707) lt!1576980)))))

(declare-fun b!4364274 () Bool)

(declare-fun e!2716171 () Bool)

(assert (=> b!4364274 (= e!2716176 e!2716171)))

(declare-fun res!1794891 () Bool)

(assert (=> b!4364274 (=> res!1794891 e!2716171)))

(declare-fun lt!1576982 () ListMap!2269)

(assert (=> b!4364274 (= res!1794891 (not (eq!291 (extractMap!580 (toList!3025 lt!1576965)) lt!1576982)))))

(assert (=> b!4364274 (eq!291 lt!1576968 (addToMapMapFromBucket!217 (_2!27522 (h!54583 (toList!3025 lm!1707))) lt!1576977))))

(declare-fun lt!1576966 () Unit!72869)

(declare-fun lemmaAddToMapFromBucketPreservesEquivalence!6 (ListMap!2269 ListMap!2269 List!49137) Unit!72869)

(assert (=> b!4364274 (= lt!1576966 (lemmaAddToMapFromBucketPreservesEquivalence!6 lt!1576973 lt!1576977 (_2!27522 (h!54583 (toList!3025 lm!1707)))))))

(assert (=> b!4364274 (eq!291 lt!1576982 lt!1576984)))

(assert (=> b!4364274 (= lt!1576982 (+!700 lt!1576962 lt!1576967))))

(declare-fun lt!1576981 () Unit!72869)

(declare-fun lemmaAddToEqMapsPreservesEq!14 (ListMap!2269 ListMap!2269 K!10370 V!10616) Unit!72869)

(assert (=> b!4364274 (= lt!1576981 (lemmaAddToEqMapsPreservesEq!14 lt!1576962 lt!1576961 key!3918 newValue!99))))

(declare-fun b!4364275 () Bool)

(declare-fun tp!1330509 () Bool)

(assert (=> b!4364275 (= e!2716169 (and tp_is_empty!25321 tp_is_empty!25323 tp!1330509))))

(declare-fun b!4364276 () Bool)

(assert (=> b!4364276 (= e!2716171 (forall!9176 (toList!3025 lt!1576965) lambda!142249))))

(declare-fun b!4364277 () Bool)

(assert (=> b!4364277 (= e!2716170 e!2716172)))

(declare-fun res!1794899 () Bool)

(assert (=> b!4364277 (=> (not res!1794899) (not e!2716172))))

(assert (=> b!4364277 (= res!1794899 (contains!11267 lt!1576962 key!3918))))

(assert (=> b!4364277 (= lt!1576962 (extractMap!580 (toList!3025 lm!1707)))))

(declare-fun b!4364278 () Bool)

(assert (=> b!4364278 (= e!2716168 (forall!9176 (toList!3025 lt!1576965) lambda!142249))))

(assert (= (and start!423124 res!1794895) b!4364269))

(assert (= (and b!4364269 res!1794901) b!4364266))

(assert (= (and b!4364266 res!1794900) b!4364267))

(assert (= (and b!4364267 res!1794898) b!4364277))

(assert (= (and b!4364277 res!1794899) b!4364272))

(assert (= (and b!4364272 res!1794894) b!4364271))

(assert (= (and b!4364271 (not res!1794890)) b!4364265))

(assert (= (and b!4364265 (not res!1794896)) b!4364264))

(assert (= (and b!4364264 res!1794902) b!4364278))

(assert (= (and b!4364264 (not res!1794893)) b!4364268))

(assert (= (and b!4364268 res!1794897) b!4364270))

(assert (= (and b!4364268 res!1794903) b!4364273))

(assert (= (and b!4364268 (not res!1794892)) b!4364274))

(assert (= (and b!4364274 (not res!1794891)) b!4364276))

(assert (= (and start!423124 ((_ is Cons!49013) newBucket!200)) b!4364275))

(assert (= start!423124 b!4364263))

(declare-fun m!4985909 () Bool)

(assert (=> b!4364278 m!4985909))

(assert (=> b!4364264 m!4985909))

(declare-fun m!4985911 () Bool)

(assert (=> b!4364264 m!4985911))

(declare-fun m!4985913 () Bool)

(assert (=> b!4364264 m!4985913))

(declare-fun m!4985915 () Bool)

(assert (=> b!4364264 m!4985915))

(declare-fun m!4985917 () Bool)

(assert (=> b!4364269 m!4985917))

(declare-fun m!4985919 () Bool)

(assert (=> b!4364277 m!4985919))

(declare-fun m!4985921 () Bool)

(assert (=> b!4364277 m!4985921))

(assert (=> start!423124 m!4985915))

(declare-fun m!4985923 () Bool)

(assert (=> start!423124 m!4985923))

(declare-fun m!4985925 () Bool)

(assert (=> b!4364273 m!4985925))

(declare-fun m!4985927 () Bool)

(assert (=> b!4364266 m!4985927))

(declare-fun m!4985929 () Bool)

(assert (=> b!4364267 m!4985929))

(declare-fun m!4985931 () Bool)

(assert (=> b!4364268 m!4985931))

(declare-fun m!4985933 () Bool)

(assert (=> b!4364268 m!4985933))

(declare-fun m!4985935 () Bool)

(assert (=> b!4364268 m!4985935))

(declare-fun m!4985937 () Bool)

(assert (=> b!4364268 m!4985937))

(declare-fun m!4985939 () Bool)

(assert (=> b!4364268 m!4985939))

(declare-fun m!4985941 () Bool)

(assert (=> b!4364268 m!4985941))

(declare-fun m!4985943 () Bool)

(assert (=> b!4364268 m!4985943))

(declare-fun m!4985945 () Bool)

(assert (=> b!4364268 m!4985945))

(declare-fun m!4985947 () Bool)

(assert (=> b!4364268 m!4985947))

(declare-fun m!4985949 () Bool)

(assert (=> b!4364268 m!4985949))

(declare-fun m!4985951 () Bool)

(assert (=> b!4364268 m!4985951))

(declare-fun m!4985953 () Bool)

(assert (=> b!4364268 m!4985953))

(declare-fun m!4985955 () Bool)

(assert (=> b!4364268 m!4985955))

(declare-fun m!4985957 () Bool)

(assert (=> b!4364268 m!4985957))

(declare-fun m!4985959 () Bool)

(assert (=> b!4364268 m!4985959))

(declare-fun m!4985961 () Bool)

(assert (=> b!4364268 m!4985961))

(declare-fun m!4985963 () Bool)

(assert (=> b!4364268 m!4985963))

(assert (=> b!4364268 m!4985963))

(declare-fun m!4985965 () Bool)

(assert (=> b!4364268 m!4985965))

(declare-fun m!4985967 () Bool)

(assert (=> b!4364268 m!4985967))

(declare-fun m!4985969 () Bool)

(assert (=> b!4364268 m!4985969))

(declare-fun m!4985971 () Bool)

(assert (=> b!4364265 m!4985971))

(declare-fun m!4985973 () Bool)

(assert (=> b!4364271 m!4985973))

(declare-fun m!4985975 () Bool)

(assert (=> b!4364271 m!4985975))

(declare-fun m!4985977 () Bool)

(assert (=> b!4364271 m!4985977))

(declare-fun m!4985979 () Bool)

(assert (=> b!4364271 m!4985979))

(declare-fun m!4985981 () Bool)

(assert (=> b!4364271 m!4985981))

(assert (=> b!4364276 m!4985909))

(declare-fun m!4985983 () Bool)

(assert (=> b!4364274 m!4985983))

(declare-fun m!4985985 () Bool)

(assert (=> b!4364274 m!4985985))

(declare-fun m!4985987 () Bool)

(assert (=> b!4364274 m!4985987))

(declare-fun m!4985989 () Bool)

(assert (=> b!4364274 m!4985989))

(declare-fun m!4985991 () Bool)

(assert (=> b!4364274 m!4985991))

(declare-fun m!4985993 () Bool)

(assert (=> b!4364274 m!4985993))

(declare-fun m!4985995 () Bool)

(assert (=> b!4364274 m!4985995))

(assert (=> b!4364274 m!4985985))

(declare-fun m!4985997 () Bool)

(assert (=> b!4364274 m!4985997))

(assert (=> b!4364274 m!4985993))

(declare-fun m!4985999 () Bool)

(assert (=> b!4364272 m!4985999))

(declare-fun m!4986001 () Bool)

(assert (=> b!4364270 m!4986001))

(check-sat tp_is_empty!25321 (not b!4364263) tp_is_empty!25323 (not b!4364273) (not b!4364274) (not b!4364270) (not b!4364268) (not b!4364265) (not b!4364267) (not b!4364275) (not b!4364278) (not b!4364266) (not b!4364272) (not b!4364277) (not b!4364269) (not b!4364271) (not b!4364264) (not start!423124) (not b!4364276))
(check-sat)
