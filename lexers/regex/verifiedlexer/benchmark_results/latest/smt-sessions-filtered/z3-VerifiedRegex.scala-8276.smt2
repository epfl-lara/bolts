; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!429918 () Bool)

(assert start!429918)

(declare-fun b!4415029 () Bool)

(declare-fun res!1823319 () Bool)

(declare-fun e!2749263 () Bool)

(assert (=> b!4415029 (=> (not res!1823319) (not e!2749263))))

(declare-datatypes ((K!10785 0))(
  ( (K!10786 (val!16899 Int)) )
))
(declare-fun key!3717 () K!10785)

(declare-datatypes ((Hashable!5079 0))(
  ( (HashableExt!5078 (__x!30782 Int)) )
))
(declare-fun hashF!1220 () Hashable!5079)

(declare-fun hash!366 () (_ BitVec 64))

(declare-fun hash!1996 (Hashable!5079 K!10785) (_ BitVec 64))

(assert (=> b!4415029 (= res!1823319 (= (hash!1996 hashF!1220 key!3717) hash!366))))

(declare-fun e!2749267 () Bool)

(declare-datatypes ((V!11031 0))(
  ( (V!11032 (val!16900 Int)) )
))
(declare-fun newValue!93 () V!11031)

(declare-datatypes ((tuple2!49118 0))(
  ( (tuple2!49119 (_1!27853 K!10785) (_2!27853 V!11031)) )
))
(declare-datatypes ((List!49551 0))(
  ( (Nil!49427) (Cons!49427 (h!55084 tuple2!49118) (t!356489 List!49551)) )
))
(declare-datatypes ((tuple2!49120 0))(
  ( (tuple2!49121 (_1!27854 (_ BitVec 64)) (_2!27854 List!49551)) )
))
(declare-datatypes ((List!49552 0))(
  ( (Nil!49428) (Cons!49428 (h!55085 tuple2!49120) (t!356490 List!49552)) )
))
(declare-datatypes ((ListLongMap!2007 0))(
  ( (ListLongMap!2008 (toList!3357 List!49552)) )
))
(declare-fun lm!1616 () ListLongMap!2007)

(declare-fun newBucket!194 () List!49551)

(declare-fun b!4415030 () Bool)

(declare-fun apply!11537 (ListLongMap!2007 (_ BitVec 64)) List!49551)

(assert (=> b!4415030 (= e!2749267 (= newBucket!194 (Cons!49427 (tuple2!49119 key!3717 newValue!93) (apply!11537 lm!1616 hash!366))))))

(declare-fun b!4415031 () Bool)

(declare-fun res!1823320 () Bool)

(assert (=> b!4415031 (=> (not res!1823320) (not e!2749263))))

(declare-fun allKeysSameHashInMap!791 (ListLongMap!2007 Hashable!5079) Bool)

(assert (=> b!4415031 (= res!1823320 (allKeysSameHashInMap!791 lm!1616 hashF!1220))))

(declare-fun b!4415033 () Bool)

(declare-fun res!1823321 () Bool)

(assert (=> b!4415033 (=> (not res!1823321) (not e!2749263))))

(declare-datatypes ((ListMap!2601 0))(
  ( (ListMap!2602 (toList!3358 List!49551)) )
))
(declare-fun contains!11877 (ListMap!2601 K!10785) Bool)

(declare-fun extractMap!746 (List!49552) ListMap!2601)

(assert (=> b!4415033 (= res!1823321 (not (contains!11877 (extractMap!746 (toList!3357 lm!1616)) key!3717)))))

(declare-fun b!4415034 () Bool)

(declare-fun res!1823313 () Bool)

(declare-fun e!2749266 () Bool)

(assert (=> b!4415034 (=> (not res!1823313) (not e!2749266))))

(declare-fun lambda!151686 () Int)

(declare-fun forall!9464 (List!49552 Int) Bool)

(assert (=> b!4415034 (= res!1823313 (forall!9464 (toList!3357 lm!1616) lambda!151686))))

(declare-fun b!4415035 () Bool)

(declare-fun e!2749269 () Bool)

(declare-fun e!2749264 () Bool)

(assert (=> b!4415035 (= e!2749269 e!2749264)))

(declare-fun res!1823311 () Bool)

(assert (=> b!4415035 (=> res!1823311 e!2749264)))

(declare-fun lt!1616900 () ListMap!2601)

(declare-fun lt!1616901 () ListMap!2601)

(assert (=> b!4415035 (= res!1823311 (not (= lt!1616900 lt!1616901)))))

(declare-fun lt!1616905 () ListMap!2601)

(declare-fun addToMapMapFromBucket!339 (List!49551 ListMap!2601) ListMap!2601)

(assert (=> b!4415035 (= lt!1616901 (addToMapMapFromBucket!339 newBucket!194 lt!1616905))))

(declare-fun lt!1616897 () ListLongMap!2007)

(assert (=> b!4415035 (= lt!1616900 (extractMap!746 (toList!3357 lt!1616897)))))

(assert (=> b!4415035 (= lt!1616905 (extractMap!746 (t!356490 (toList!3357 lm!1616))))))

(declare-fun b!4415036 () Bool)

(declare-fun res!1823306 () Bool)

(assert (=> b!4415036 (=> res!1823306 e!2749269)))

(declare-fun lt!1616896 () Bool)

(get-info :version)

(assert (=> b!4415036 (= res!1823306 (or (not ((_ is Cons!49428) (toList!3357 lm!1616))) (not (= (_1!27854 (h!55085 (toList!3357 lm!1616))) hash!366)) lt!1616896))))

(declare-fun b!4415037 () Bool)

(assert (=> b!4415037 (= e!2749266 (not e!2749269))))

(declare-fun res!1823315 () Bool)

(assert (=> b!4415037 (=> res!1823315 e!2749269)))

(assert (=> b!4415037 (= res!1823315 (not (forall!9464 (toList!3357 lt!1616897) lambda!151686)))))

(assert (=> b!4415037 (forall!9464 (toList!3357 lt!1616897) lambda!151686)))

(declare-fun lt!1616899 () tuple2!49120)

(declare-fun +!970 (ListLongMap!2007 tuple2!49120) ListLongMap!2007)

(assert (=> b!4415037 (= lt!1616897 (+!970 lm!1616 lt!1616899))))

(assert (=> b!4415037 (= lt!1616899 (tuple2!49121 hash!366 newBucket!194))))

(declare-datatypes ((Unit!80739 0))(
  ( (Unit!80740) )
))
(declare-fun lt!1616903 () Unit!80739)

(declare-fun addValidProp!329 (ListLongMap!2007 Int (_ BitVec 64) List!49551) Unit!80739)

(assert (=> b!4415037 (= lt!1616903 (addValidProp!329 lm!1616 lambda!151686 hash!366 newBucket!194))))

(declare-fun tp!1332517 () Bool)

(declare-fun e!2749270 () Bool)

(declare-fun tp_is_empty!25987 () Bool)

(declare-fun b!4415038 () Bool)

(declare-fun tp_is_empty!25985 () Bool)

(assert (=> b!4415038 (= e!2749270 (and tp_is_empty!25987 tp_is_empty!25985 tp!1332517))))

(declare-fun b!4415039 () Bool)

(declare-fun res!1823312 () Bool)

(assert (=> b!4415039 (=> (not res!1823312) (not e!2749266))))

(declare-fun noDuplicateKeys!685 (List!49551) Bool)

(assert (=> b!4415039 (= res!1823312 (noDuplicateKeys!685 newBucket!194))))

(declare-fun b!4415040 () Bool)

(declare-fun e!2749268 () Bool)

(assert (=> b!4415040 (= e!2749268 true)))

(declare-fun lt!1616894 () tuple2!49118)

(declare-fun lt!1616902 () List!49551)

(declare-fun lt!1616898 () ListMap!2601)

(declare-fun eq!361 (ListMap!2601 ListMap!2601) Bool)

(declare-fun +!971 (ListMap!2601 tuple2!49118) ListMap!2601)

(assert (=> b!4415040 (eq!361 lt!1616898 (+!971 (addToMapMapFromBucket!339 lt!1616902 lt!1616905) lt!1616894))))

(declare-fun lt!1616904 () Unit!80739)

(declare-fun lemmaAddToMapFromBucketPlusKeyValueIsCommutative!156 (ListMap!2601 K!10785 V!11031 List!49551) Unit!80739)

(assert (=> b!4415040 (= lt!1616904 (lemmaAddToMapFromBucketPlusKeyValueIsCommutative!156 lt!1616905 key!3717 newValue!93 lt!1616902))))

(declare-fun b!4415041 () Bool)

(declare-fun lt!1616895 () Bool)

(declare-fun e!2749265 () Bool)

(assert (=> b!4415041 (= e!2749265 (and (not lt!1616895) (= newBucket!194 (Cons!49427 (tuple2!49119 key!3717 newValue!93) Nil!49427))))))

(declare-fun b!4415042 () Bool)

(declare-fun e!2749262 () Bool)

(declare-fun tp!1332518 () Bool)

(assert (=> b!4415042 (= e!2749262 tp!1332518)))

(declare-fun b!4415043 () Bool)

(declare-fun e!2749261 () Bool)

(assert (=> b!4415043 (= e!2749264 e!2749261)))

(declare-fun res!1823316 () Bool)

(assert (=> b!4415043 (=> res!1823316 e!2749261)))

(assert (=> b!4415043 (= res!1823316 (not (= newBucket!194 (Cons!49427 lt!1616894 lt!1616902))))))

(assert (=> b!4415043 (= lt!1616902 (apply!11537 lm!1616 hash!366))))

(assert (=> b!4415043 (= lt!1616894 (tuple2!49119 key!3717 newValue!93))))

(declare-fun b!4415044 () Bool)

(assert (=> b!4415044 (= e!2749261 e!2749268)))

(declare-fun res!1823307 () Bool)

(assert (=> b!4415044 (=> res!1823307 e!2749268)))

(assert (=> b!4415044 (= res!1823307 (not (= lt!1616901 lt!1616898)))))

(assert (=> b!4415044 (= lt!1616898 (addToMapMapFromBucket!339 lt!1616902 (+!971 lt!1616905 lt!1616894)))))

(declare-fun b!4415045 () Bool)

(declare-fun res!1823308 () Bool)

(assert (=> b!4415045 (=> (not res!1823308) (not e!2749263))))

(declare-fun allKeysSameHash!645 (List!49551 (_ BitVec 64) Hashable!5079) Bool)

(assert (=> b!4415045 (= res!1823308 (allKeysSameHash!645 newBucket!194 hash!366 hashF!1220))))

(declare-fun b!4415032 () Bool)

(assert (=> b!4415032 (= e!2749263 e!2749266)))

(declare-fun res!1823310 () Bool)

(assert (=> b!4415032 (=> (not res!1823310) (not e!2749266))))

(assert (=> b!4415032 (= res!1823310 e!2749265)))

(declare-fun res!1823305 () Bool)

(assert (=> b!4415032 (=> res!1823305 e!2749265)))

(assert (=> b!4415032 (= res!1823305 e!2749267)))

(declare-fun res!1823318 () Bool)

(assert (=> b!4415032 (=> (not res!1823318) (not e!2749267))))

(assert (=> b!4415032 (= res!1823318 (not lt!1616896))))

(assert (=> b!4415032 (= lt!1616896 (not lt!1616895))))

(declare-fun contains!11878 (ListLongMap!2007 (_ BitVec 64)) Bool)

(assert (=> b!4415032 (= lt!1616895 (contains!11878 lm!1616 hash!366))))

(declare-fun res!1823314 () Bool)

(assert (=> start!429918 (=> (not res!1823314) (not e!2749263))))

(assert (=> start!429918 (= res!1823314 (forall!9464 (toList!3357 lm!1616) lambda!151686))))

(assert (=> start!429918 e!2749263))

(assert (=> start!429918 tp_is_empty!25985))

(assert (=> start!429918 tp_is_empty!25987))

(assert (=> start!429918 e!2749270))

(declare-fun inv!64971 (ListLongMap!2007) Bool)

(assert (=> start!429918 (and (inv!64971 lm!1616) e!2749262)))

(assert (=> start!429918 true))

(declare-fun b!4415046 () Bool)

(declare-fun res!1823309 () Bool)

(assert (=> b!4415046 (=> res!1823309 e!2749269)))

(declare-fun tail!7173 (List!49552) List!49552)

(assert (=> b!4415046 (= res!1823309 (not (= (tail!7173 (toList!3357 lt!1616897)) (t!356490 (toList!3357 lm!1616)))))))

(declare-fun b!4415047 () Bool)

(declare-fun res!1823317 () Bool)

(assert (=> b!4415047 (=> res!1823317 e!2749269)))

(declare-fun head!9164 (List!49552) tuple2!49120)

(assert (=> b!4415047 (= res!1823317 (not (= (head!9164 (toList!3357 lt!1616897)) lt!1616899)))))

(assert (= (and start!429918 res!1823314) b!4415031))

(assert (= (and b!4415031 res!1823320) b!4415029))

(assert (= (and b!4415029 res!1823319) b!4415045))

(assert (= (and b!4415045 res!1823308) b!4415033))

(assert (= (and b!4415033 res!1823321) b!4415032))

(assert (= (and b!4415032 res!1823318) b!4415030))

(assert (= (and b!4415032 (not res!1823305)) b!4415041))

(assert (= (and b!4415032 res!1823310) b!4415039))

(assert (= (and b!4415039 res!1823312) b!4415034))

(assert (= (and b!4415034 res!1823313) b!4415037))

(assert (= (and b!4415037 (not res!1823315)) b!4415036))

(assert (= (and b!4415036 (not res!1823306)) b!4415047))

(assert (= (and b!4415047 (not res!1823317)) b!4415046))

(assert (= (and b!4415046 (not res!1823309)) b!4415035))

(assert (= (and b!4415035 (not res!1823311)) b!4415043))

(assert (= (and b!4415043 (not res!1823316)) b!4415044))

(assert (= (and b!4415044 (not res!1823307)) b!4415040))

(assert (= (and start!429918 ((_ is Cons!49427) newBucket!194)) b!4415038))

(assert (= start!429918 b!4415042))

(declare-fun m!5090921 () Bool)

(assert (=> b!4415032 m!5090921))

(declare-fun m!5090923 () Bool)

(assert (=> b!4415040 m!5090923))

(assert (=> b!4415040 m!5090923))

(declare-fun m!5090925 () Bool)

(assert (=> b!4415040 m!5090925))

(assert (=> b!4415040 m!5090925))

(declare-fun m!5090927 () Bool)

(assert (=> b!4415040 m!5090927))

(declare-fun m!5090929 () Bool)

(assert (=> b!4415040 m!5090929))

(declare-fun m!5090931 () Bool)

(assert (=> b!4415030 m!5090931))

(assert (=> b!4415043 m!5090931))

(declare-fun m!5090933 () Bool)

(assert (=> b!4415045 m!5090933))

(declare-fun m!5090935 () Bool)

(assert (=> b!4415037 m!5090935))

(assert (=> b!4415037 m!5090935))

(declare-fun m!5090937 () Bool)

(assert (=> b!4415037 m!5090937))

(declare-fun m!5090939 () Bool)

(assert (=> b!4415037 m!5090939))

(declare-fun m!5090941 () Bool)

(assert (=> start!429918 m!5090941))

(declare-fun m!5090943 () Bool)

(assert (=> start!429918 m!5090943))

(declare-fun m!5090945 () Bool)

(assert (=> b!4415033 m!5090945))

(assert (=> b!4415033 m!5090945))

(declare-fun m!5090947 () Bool)

(assert (=> b!4415033 m!5090947))

(declare-fun m!5090949 () Bool)

(assert (=> b!4415046 m!5090949))

(declare-fun m!5090951 () Bool)

(assert (=> b!4415035 m!5090951))

(declare-fun m!5090953 () Bool)

(assert (=> b!4415035 m!5090953))

(declare-fun m!5090955 () Bool)

(assert (=> b!4415035 m!5090955))

(declare-fun m!5090957 () Bool)

(assert (=> b!4415029 m!5090957))

(assert (=> b!4415034 m!5090941))

(declare-fun m!5090959 () Bool)

(assert (=> b!4415039 m!5090959))

(declare-fun m!5090961 () Bool)

(assert (=> b!4415031 m!5090961))

(declare-fun m!5090963 () Bool)

(assert (=> b!4415044 m!5090963))

(assert (=> b!4415044 m!5090963))

(declare-fun m!5090965 () Bool)

(assert (=> b!4415044 m!5090965))

(declare-fun m!5090967 () Bool)

(assert (=> b!4415047 m!5090967))

(check-sat (not b!4415042) (not b!4415030) (not b!4415038) (not b!4415043) (not start!429918) tp_is_empty!25987 (not b!4415039) (not b!4415032) tp_is_empty!25985 (not b!4415031) (not b!4415044) (not b!4415035) (not b!4415034) (not b!4415029) (not b!4415045) (not b!4415037) (not b!4415033) (not b!4415047) (not b!4415046) (not b!4415040))
(check-sat)
