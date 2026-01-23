; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!461508 () Bool)

(assert start!461508)

(declare-fun b!4614073 () Bool)

(declare-fun tp_is_empty!29021 () Bool)

(declare-fun tp_is_empty!29023 () Bool)

(declare-fun e!2878096 () Bool)

(declare-fun tp!1341487 () Bool)

(assert (=> b!4614073 (= e!2878096 (and tp_is_empty!29021 tp_is_empty!29023 tp!1341487))))

(declare-fun b!4614074 () Bool)

(declare-fun e!2878094 () Bool)

(declare-fun e!2878092 () Bool)

(assert (=> b!4614074 (= e!2878094 e!2878092)))

(declare-fun res!1932806 () Bool)

(assert (=> b!4614074 (=> res!1932806 e!2878092)))

(declare-datatypes ((K!12730 0))(
  ( (K!12731 (val!18455 Int)) )
))
(declare-datatypes ((V!12976 0))(
  ( (V!12977 (val!18456 Int)) )
))
(declare-datatypes ((tuple2!52174 0))(
  ( (tuple2!52175 (_1!29381 K!12730) (_2!29381 V!12976)) )
))
(declare-datatypes ((List!51467 0))(
  ( (Nil!51343) (Cons!51343 (h!57349 tuple2!52174) (t!358465 List!51467)) )
))
(declare-datatypes ((ListMap!4133 0))(
  ( (ListMap!4134 (toList!4829 List!51467)) )
))
(declare-fun lt!1769213 () ListMap!4133)

(declare-fun oldBucket!40 () List!51467)

(declare-fun eq!775 (ListMap!4133 ListMap!4133) Bool)

(declare-fun addToMapMapFromBucket!893 (List!51467 ListMap!4133) ListMap!4133)

(assert (=> b!4614074 (= res!1932806 (not (eq!775 lt!1769213 (addToMapMapFromBucket!893 oldBucket!40 (ListMap!4134 Nil!51343)))))))

(declare-fun lt!1769216 () ListMap!4133)

(declare-fun +!1817 (ListMap!4133 tuple2!52174) ListMap!4133)

(assert (=> b!4614074 (= lt!1769213 (+!1817 lt!1769216 (h!57349 oldBucket!40)))))

(declare-fun lt!1769206 () tuple2!52174)

(declare-fun lt!1769210 () List!51467)

(assert (=> b!4614074 (eq!775 (addToMapMapFromBucket!893 (Cons!51343 lt!1769206 lt!1769210) (ListMap!4134 Nil!51343)) (+!1817 lt!1769216 lt!1769206))))

(declare-datatypes ((Unit!109756 0))(
  ( (Unit!109757) )
))
(declare-fun lt!1769215 () Unit!109756)

(declare-fun lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!26 (tuple2!52174 List!51467 ListMap!4133) Unit!109756)

(assert (=> b!4614074 (= lt!1769215 (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!26 lt!1769206 lt!1769210 (ListMap!4134 Nil!51343)))))

(declare-fun head!9592 (List!51467) tuple2!52174)

(assert (=> b!4614074 (= lt!1769206 (head!9592 oldBucket!40))))

(declare-fun b!4614075 () Bool)

(declare-fun e!2878088 () Bool)

(assert (=> b!4614075 (= e!2878092 e!2878088)))

(declare-fun res!1932795 () Bool)

(assert (=> b!4614075 (=> res!1932795 e!2878088)))

(declare-fun key!4968 () K!12730)

(declare-fun contains!14310 (ListMap!4133 K!12730) Bool)

(assert (=> b!4614075 (= res!1932795 (contains!14310 lt!1769216 key!4968))))

(declare-fun lt!1769214 () ListMap!4133)

(assert (=> b!4614075 (not (contains!14310 lt!1769214 key!4968))))

(declare-fun lt!1769209 () Unit!109756)

(declare-datatypes ((Hashable!5829 0))(
  ( (HashableExt!5828 (__x!31532 Int)) )
))
(declare-fun hashF!1389 () Hashable!5829)

(declare-datatypes ((tuple2!52176 0))(
  ( (tuple2!52177 (_1!29382 (_ BitVec 64)) (_2!29382 List!51467)) )
))
(declare-datatypes ((List!51468 0))(
  ( (Nil!51344) (Cons!51344 (h!57350 tuple2!52176) (t!358466 List!51468)) )
))
(declare-fun lt!1769212 () List!51468)

(declare-datatypes ((ListLongMap!3419 0))(
  ( (ListLongMap!3420 (toList!4830 List!51468)) )
))
(declare-fun lemmaNotInItsHashBucketThenNotInMap!346 (ListLongMap!3419 K!12730 Hashable!5829) Unit!109756)

(assert (=> b!4614075 (= lt!1769209 (lemmaNotInItsHashBucketThenNotInMap!346 (ListLongMap!3420 lt!1769212) key!4968 hashF!1389))))

(declare-fun b!4614076 () Bool)

(declare-fun res!1932799 () Bool)

(declare-fun e!2878090 () Bool)

(assert (=> b!4614076 (=> (not res!1932799) (not e!2878090))))

(declare-fun newBucket!224 () List!51467)

(declare-fun noDuplicateKeys!1432 (List!51467) Bool)

(assert (=> b!4614076 (= res!1932799 (noDuplicateKeys!1432 newBucket!224))))

(declare-fun b!4614077 () Bool)

(declare-fun res!1932793 () Bool)

(assert (=> b!4614077 (=> (not res!1932793) (not e!2878090))))

(declare-fun removePairForKey!1055 (List!51467 K!12730) List!51467)

(assert (=> b!4614077 (= res!1932793 (= (removePairForKey!1055 oldBucket!40 key!4968) newBucket!224))))

(declare-fun b!4614078 () Bool)

(declare-fun e!2878093 () Bool)

(assert (=> b!4614078 (= e!2878090 e!2878093)))

(declare-fun res!1932797 () Bool)

(assert (=> b!4614078 (=> (not res!1932797) (not e!2878093))))

(declare-fun lt!1769217 () ListMap!4133)

(assert (=> b!4614078 (= res!1932797 (contains!14310 lt!1769217 key!4968))))

(declare-fun hash!414 () (_ BitVec 64))

(declare-fun extractMap!1488 (List!51468) ListMap!4133)

(assert (=> b!4614078 (= lt!1769217 (extractMap!1488 (Cons!51344 (tuple2!52177 hash!414 oldBucket!40) Nil!51344)))))

(declare-fun b!4614079 () Bool)

(declare-fun res!1932801 () Bool)

(assert (=> b!4614079 (=> res!1932801 e!2878092)))

(declare-fun containsKey!2306 (List!51467 K!12730) Bool)

(assert (=> b!4614079 (= res!1932801 (containsKey!2306 lt!1769210 key!4968))))

(declare-fun b!4614080 () Bool)

(declare-fun e!2878095 () Bool)

(assert (=> b!4614080 (= e!2878095 e!2878094)))

(declare-fun res!1932802 () Bool)

(assert (=> b!4614080 (=> res!1932802 e!2878094)))

(assert (=> b!4614080 (= res!1932802 (not (= lt!1769216 (addToMapMapFromBucket!893 newBucket!224 (ListMap!4134 Nil!51343)))))))

(assert (=> b!4614080 (= lt!1769216 (addToMapMapFromBucket!893 lt!1769210 (ListMap!4134 Nil!51343)))))

(declare-fun b!4614082 () Bool)

(declare-fun e!2878091 () Bool)

(assert (=> b!4614082 (= e!2878093 (not e!2878091))))

(declare-fun res!1932800 () Bool)

(assert (=> b!4614082 (=> res!1932800 e!2878091)))

(get-info :version)

(assert (=> b!4614082 (= res!1932800 (or (not ((_ is Cons!51343) oldBucket!40)) (not (= (_1!29381 (h!57349 oldBucket!40)) key!4968))))))

(declare-fun e!2878089 () Bool)

(assert (=> b!4614082 e!2878089))

(declare-fun res!1932798 () Bool)

(assert (=> b!4614082 (=> (not res!1932798) (not e!2878089))))

(declare-fun lt!1769211 () ListMap!4133)

(assert (=> b!4614082 (= res!1932798 (= lt!1769217 (addToMapMapFromBucket!893 oldBucket!40 lt!1769211)))))

(assert (=> b!4614082 (= lt!1769211 (extractMap!1488 Nil!51344))))

(assert (=> b!4614082 true))

(declare-fun b!4614083 () Bool)

(assert (=> b!4614083 (= e!2878088 true)))

(declare-fun lt!1769208 () ListMap!4133)

(declare-fun -!522 (ListMap!4133 K!12730) ListMap!4133)

(assert (=> b!4614083 (= lt!1769208 (-!522 lt!1769213 key!4968))))

(assert (=> b!4614083 (= (-!522 (+!1817 lt!1769216 (tuple2!52175 key!4968 (_2!29381 (h!57349 oldBucket!40)))) key!4968) lt!1769216)))

(declare-fun lt!1769207 () Unit!109756)

(declare-fun addThenRemoveForNewKeyIsSame!5 (ListMap!4133 K!12730 V!12976) Unit!109756)

(assert (=> b!4614083 (= lt!1769207 (addThenRemoveForNewKeyIsSame!5 lt!1769216 key!4968 (_2!29381 (h!57349 oldBucket!40))))))

(declare-fun b!4614084 () Bool)

(declare-fun res!1932803 () Bool)

(assert (=> b!4614084 (=> (not res!1932803) (not e!2878093))))

(declare-fun hash!3379 (Hashable!5829 K!12730) (_ BitVec 64))

(assert (=> b!4614084 (= res!1932803 (= (hash!3379 hashF!1389 key!4968) hash!414))))

(declare-fun b!4614085 () Bool)

(declare-fun res!1932804 () Bool)

(assert (=> b!4614085 (=> (not res!1932804) (not e!2878090))))

(declare-fun allKeysSameHash!1286 (List!51467 (_ BitVec 64) Hashable!5829) Bool)

(assert (=> b!4614085 (= res!1932804 (allKeysSameHash!1286 oldBucket!40 hash!414 hashF!1389))))

(declare-fun b!4614086 () Bool)

(declare-fun res!1932794 () Bool)

(assert (=> b!4614086 (=> (not res!1932794) (not e!2878093))))

(assert (=> b!4614086 (= res!1932794 (allKeysSameHash!1286 newBucket!224 hash!414 hashF!1389))))

(declare-fun b!4614087 () Bool)

(declare-fun e!2878086 () Bool)

(assert (=> b!4614087 (= e!2878091 e!2878086)))

(declare-fun res!1932805 () Bool)

(assert (=> b!4614087 (=> res!1932805 e!2878086)))

(assert (=> b!4614087 (= res!1932805 (not (= lt!1769210 newBucket!224)))))

(declare-fun tail!8079 (List!51467) List!51467)

(assert (=> b!4614087 (= lt!1769210 (tail!8079 oldBucket!40))))

(declare-fun b!4614088 () Bool)

(declare-fun e!2878087 () Bool)

(declare-fun tp!1341486 () Bool)

(assert (=> b!4614088 (= e!2878087 (and tp_is_empty!29021 tp_is_empty!29023 tp!1341486))))

(declare-fun b!4614081 () Bool)

(assert (=> b!4614081 (= e!2878089 (= lt!1769211 (ListMap!4134 Nil!51343)))))

(declare-fun res!1932796 () Bool)

(assert (=> start!461508 (=> (not res!1932796) (not e!2878090))))

(assert (=> start!461508 (= res!1932796 (noDuplicateKeys!1432 oldBucket!40))))

(assert (=> start!461508 e!2878090))

(assert (=> start!461508 true))

(assert (=> start!461508 e!2878087))

(assert (=> start!461508 tp_is_empty!29021))

(assert (=> start!461508 e!2878096))

(declare-fun b!4614089 () Bool)

(assert (=> b!4614089 (= e!2878086 e!2878095)))

(declare-fun res!1932808 () Bool)

(assert (=> b!4614089 (=> res!1932808 e!2878095)))

(assert (=> b!4614089 (= res!1932808 (not (= lt!1769214 (extractMap!1488 (Cons!51344 (tuple2!52177 hash!414 newBucket!224) Nil!51344)))))))

(assert (=> b!4614089 (= lt!1769214 (extractMap!1488 lt!1769212))))

(assert (=> b!4614089 (= lt!1769212 (Cons!51344 (tuple2!52177 hash!414 lt!1769210) Nil!51344))))

(declare-fun b!4614090 () Bool)

(declare-fun res!1932807 () Bool)

(assert (=> b!4614090 (=> res!1932807 e!2878092)))

(assert (=> b!4614090 (= res!1932807 (not (= lt!1769216 lt!1769214)))))

(assert (= (and start!461508 res!1932796) b!4614076))

(assert (= (and b!4614076 res!1932799) b!4614077))

(assert (= (and b!4614077 res!1932793) b!4614085))

(assert (= (and b!4614085 res!1932804) b!4614078))

(assert (= (and b!4614078 res!1932797) b!4614084))

(assert (= (and b!4614084 res!1932803) b!4614086))

(assert (= (and b!4614086 res!1932794) b!4614082))

(assert (= (and b!4614082 res!1932798) b!4614081))

(assert (= (and b!4614082 (not res!1932800)) b!4614087))

(assert (= (and b!4614087 (not res!1932805)) b!4614089))

(assert (= (and b!4614089 (not res!1932808)) b!4614080))

(assert (= (and b!4614080 (not res!1932802)) b!4614074))

(assert (= (and b!4614074 (not res!1932806)) b!4614079))

(assert (= (and b!4614079 (not res!1932801)) b!4614090))

(assert (= (and b!4614090 (not res!1932807)) b!4614075))

(assert (= (and b!4614075 (not res!1932795)) b!4614083))

(assert (= (and start!461508 ((_ is Cons!51343) oldBucket!40)) b!4614088))

(assert (= (and start!461508 ((_ is Cons!51343) newBucket!224)) b!4614073))

(declare-fun m!5446081 () Bool)

(assert (=> b!4614084 m!5446081))

(declare-fun m!5446083 () Bool)

(assert (=> b!4614086 m!5446083))

(declare-fun m!5446085 () Bool)

(assert (=> b!4614087 m!5446085))

(declare-fun m!5446087 () Bool)

(assert (=> b!4614075 m!5446087))

(declare-fun m!5446089 () Bool)

(assert (=> b!4614075 m!5446089))

(declare-fun m!5446091 () Bool)

(assert (=> b!4614075 m!5446091))

(declare-fun m!5446093 () Bool)

(assert (=> b!4614077 m!5446093))

(declare-fun m!5446095 () Bool)

(assert (=> b!4614085 m!5446095))

(declare-fun m!5446097 () Bool)

(assert (=> b!4614079 m!5446097))

(declare-fun m!5446099 () Bool)

(assert (=> start!461508 m!5446099))

(declare-fun m!5446101 () Bool)

(assert (=> b!4614089 m!5446101))

(declare-fun m!5446103 () Bool)

(assert (=> b!4614089 m!5446103))

(declare-fun m!5446105 () Bool)

(assert (=> b!4614076 m!5446105))

(declare-fun m!5446107 () Bool)

(assert (=> b!4614078 m!5446107))

(declare-fun m!5446109 () Bool)

(assert (=> b!4614078 m!5446109))

(declare-fun m!5446111 () Bool)

(assert (=> b!4614083 m!5446111))

(declare-fun m!5446113 () Bool)

(assert (=> b!4614083 m!5446113))

(assert (=> b!4614083 m!5446113))

(declare-fun m!5446115 () Bool)

(assert (=> b!4614083 m!5446115))

(declare-fun m!5446117 () Bool)

(assert (=> b!4614083 m!5446117))

(declare-fun m!5446119 () Bool)

(assert (=> b!4614080 m!5446119))

(declare-fun m!5446121 () Bool)

(assert (=> b!4614080 m!5446121))

(declare-fun m!5446123 () Bool)

(assert (=> b!4614082 m!5446123))

(declare-fun m!5446125 () Bool)

(assert (=> b!4614082 m!5446125))

(declare-fun m!5446127 () Bool)

(assert (=> b!4614074 m!5446127))

(declare-fun m!5446129 () Bool)

(assert (=> b!4614074 m!5446129))

(declare-fun m!5446131 () Bool)

(assert (=> b!4614074 m!5446131))

(declare-fun m!5446133 () Bool)

(assert (=> b!4614074 m!5446133))

(declare-fun m!5446135 () Bool)

(assert (=> b!4614074 m!5446135))

(assert (=> b!4614074 m!5446127))

(declare-fun m!5446137 () Bool)

(assert (=> b!4614074 m!5446137))

(declare-fun m!5446139 () Bool)

(assert (=> b!4614074 m!5446139))

(assert (=> b!4614074 m!5446135))

(assert (=> b!4614074 m!5446129))

(declare-fun m!5446141 () Bool)

(assert (=> b!4614074 m!5446141))

(check-sat (not b!4614088) (not b!4614073) (not b!4614077) (not b!4614085) tp_is_empty!29021 (not b!4614087) (not b!4614082) (not b!4614079) (not start!461508) tp_is_empty!29023 (not b!4614076) (not b!4614074) (not b!4614075) (not b!4614089) (not b!4614086) (not b!4614083) (not b!4614084) (not b!4614080) (not b!4614078))
(check-sat)
