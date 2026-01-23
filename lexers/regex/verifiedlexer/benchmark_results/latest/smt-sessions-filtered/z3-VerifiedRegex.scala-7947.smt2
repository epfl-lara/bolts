; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!413316 () Bool)

(assert start!413316)

(declare-fun b!4303494 () Bool)

(declare-fun b_free!128259 () Bool)

(declare-fun b_next!128963 () Bool)

(assert (=> b!4303494 (= b_free!128259 (not b_next!128963))))

(declare-fun tp!1322424 () Bool)

(declare-fun b_and!339649 () Bool)

(assert (=> b!4303494 (= tp!1322424 b_and!339649)))

(declare-fun b!4303500 () Bool)

(declare-fun b_free!128261 () Bool)

(declare-fun b_next!128965 () Bool)

(assert (=> b!4303500 (= b_free!128261 (not b_next!128965))))

(declare-fun tp!1322426 () Bool)

(declare-fun b_and!339651 () Bool)

(assert (=> b!4303500 (= tp!1322426 b_and!339651)))

(declare-fun b!4303488 () Bool)

(declare-fun e!2675522 () Bool)

(declare-datatypes ((V!9386 0))(
  ( (V!9387 (val!15605 Int)) )
))
(declare-datatypes ((K!9184 0))(
  ( (K!9185 (val!15606 Int)) )
))
(declare-datatypes ((tuple2!46166 0))(
  ( (tuple2!46167 (_1!26362 K!9184) (_2!26362 V!9386)) )
))
(declare-datatypes ((List!48159 0))(
  ( (Nil!48035) (Cons!48035 (h!53458 tuple2!46166) (t!354934 List!48159)) )
))
(declare-datatypes ((tuple2!46168 0))(
  ( (tuple2!46169 (_1!26363 (_ BitVec 64)) (_2!26363 List!48159)) )
))
(declare-datatypes ((List!48160 0))(
  ( (Nil!48036) (Cons!48036 (h!53459 tuple2!46168) (t!354935 List!48160)) )
))
(declare-datatypes ((ListLongMap!879 0))(
  ( (ListLongMap!880 (toList!2271 List!48160)) )
))
(declare-fun lt!1525076 () ListLongMap!879)

(declare-datatypes ((array!16428 0))(
  ( (array!16429 (arr!7335 (Array (_ BitVec 32) (_ BitVec 64))) (size!35374 (_ BitVec 32))) )
))
(declare-datatypes ((Hashable!4491 0))(
  ( (HashableExt!4490 (__x!29750 Int)) )
))
(declare-datatypes ((array!16430 0))(
  ( (array!16431 (arr!7336 (Array (_ BitVec 32) List!48159)) (size!35375 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!9150 0))(
  ( (LongMapFixedSize!9151 (defaultEntry!4960 Int) (mask!13091 (_ BitVec 32)) (extraKeys!4824 (_ BitVec 32)) (zeroValue!4834 List!48159) (minValue!4834 List!48159) (_size!9193 (_ BitVec 32)) (_keys!4875 array!16428) (_values!4856 array!16430) (_vacant!4636 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!18109 0))(
  ( (Cell!18110 (v!42052 LongMapFixedSize!9150)) )
))
(declare-datatypes ((MutLongMap!4575 0))(
  ( (LongMap!4575 (underlying!9379 Cell!18109)) (MutLongMapExt!4574 (__x!29751 Int)) )
))
(declare-datatypes ((Cell!18111 0))(
  ( (Cell!18112 (v!42053 MutLongMap!4575)) )
))
(declare-datatypes ((MutableMap!4481 0))(
  ( (MutableMapExt!4480 (__x!29752 Int)) (HashMap!4481 (underlying!9380 Cell!18111) (hashF!6541 Hashable!4491) (_size!9194 (_ BitVec 32)) (defaultValue!4652 Int)) )
))
(declare-fun thiss!42308 () MutableMap!4481)

(declare-fun allKeysSameHashInMap!295 (ListLongMap!879 Hashable!4491) Bool)

(assert (=> b!4303488 (= e!2675522 (allKeysSameHashInMap!295 lt!1525076 (hashF!6541 thiss!42308)))))

(declare-fun mapNonEmpty!20506 () Bool)

(declare-fun mapRes!20506 () Bool)

(declare-fun tp!1322423 () Bool)

(declare-fun tp!1322428 () Bool)

(assert (=> mapNonEmpty!20506 (= mapRes!20506 (and tp!1322423 tp!1322428))))

(declare-fun mapValue!20506 () List!48159)

(declare-fun mapRest!20506 () (Array (_ BitVec 32) List!48159))

(declare-fun mapKey!20506 () (_ BitVec 32))

(assert (=> mapNonEmpty!20506 (= (arr!7336 (_values!4856 (v!42052 (underlying!9379 (v!42053 (underlying!9380 thiss!42308)))))) (store mapRest!20506 mapKey!20506 mapValue!20506))))

(declare-fun b!4303489 () Bool)

(declare-fun e!2675524 () Bool)

(declare-fun tp!1322429 () Bool)

(assert (=> b!4303489 (= e!2675524 (and tp!1322429 mapRes!20506))))

(declare-fun condMapEmpty!20506 () Bool)

(declare-fun mapDefault!20506 () List!48159)

(assert (=> b!4303489 (= condMapEmpty!20506 (= (arr!7336 (_values!4856 (v!42052 (underlying!9379 (v!42053 (underlying!9380 thiss!42308)))))) ((as const (Array (_ BitVec 32) List!48159)) mapDefault!20506)))))

(declare-fun b!4303490 () Bool)

(declare-fun e!2675514 () Bool)

(declare-fun e!2675518 () Bool)

(assert (=> b!4303490 (= e!2675514 e!2675518)))

(declare-fun b!4303491 () Bool)

(declare-fun e!2675521 () Bool)

(declare-fun lt!1525080 () List!48159)

(declare-fun noDuplicateKeys!178 (List!48159) Bool)

(assert (=> b!4303491 (= e!2675521 (noDuplicateKeys!178 lt!1525080))))

(declare-fun b!4303492 () Bool)

(declare-fun e!2675523 () Bool)

(assert (=> b!4303492 (= e!2675518 e!2675523)))

(declare-fun b!4303493 () Bool)

(declare-fun e!2675517 () Bool)

(declare-fun e!2675516 () Bool)

(assert (=> b!4303493 (= e!2675517 (not e!2675516))))

(declare-fun res!1763880 () Bool)

(assert (=> b!4303493 (=> res!1763880 e!2675516)))

(declare-datatypes ((tuple2!46170 0))(
  ( (tuple2!46171 (_1!26364 Bool) (_2!26364 MutLongMap!4575)) )
))
(declare-fun lt!1525082 () tuple2!46170)

(get-info :version)

(assert (=> b!4303493 (= res!1763880 (not ((_ is LongMap!4575) (_2!26364 lt!1525082))))))

(declare-datatypes ((ListMap!1557 0))(
  ( (ListMap!1558 (toList!2272 List!48159)) )
))
(declare-fun lt!1525074 () ListMap!1557)

(declare-fun key!2048 () K!9184)

(declare-fun lt!1525072 () ListMap!1557)

(declare-fun contains!9960 (ListMap!1557 K!9184) Bool)

(assert (=> b!4303493 (= (contains!9960 lt!1525074 key!2048) (contains!9960 lt!1525072 key!2048))))

(declare-datatypes ((Unit!67029 0))(
  ( (Unit!67030) )
))
(declare-fun lt!1525086 () Unit!67029)

(declare-fun lemmaEquivalentThenSameContains!43 (ListMap!1557 ListMap!1557 K!9184) Unit!67029)

(assert (=> b!4303493 (= lt!1525086 (lemmaEquivalentThenSameContains!43 lt!1525074 lt!1525072 key!2048))))

(declare-fun lt!1525087 () ListMap!1557)

(declare-fun lt!1525089 () tuple2!46166)

(declare-fun +!209 (ListMap!1557 tuple2!46166) ListMap!1557)

(assert (=> b!4303493 (= lt!1525072 (+!209 lt!1525087 lt!1525089))))

(declare-fun map!10002 (MutableMap!4481) ListMap!1557)

(assert (=> b!4303493 (= lt!1525074 (map!10002 (HashMap!4481 (Cell!18112 (_2!26364 lt!1525082)) (hashF!6541 thiss!42308) (_size!9194 thiss!42308) (defaultValue!4652 thiss!42308))))))

(declare-fun lt!1525079 () ListLongMap!879)

(declare-fun eq!116 (ListMap!1557 ListMap!1557) Bool)

(declare-fun extractMap!292 (List!48160) ListMap!1557)

(assert (=> b!4303493 (eq!116 (extractMap!292 (toList!2271 lt!1525076)) (+!209 (extractMap!292 (toList!2271 lt!1525079)) lt!1525089))))

(declare-fun lt!1525073 () Unit!67029)

(declare-fun v!9179 () V!9386)

(declare-fun lt!1525083 () (_ BitVec 64))

(declare-fun lemmaChangeOneBucketToUpdateAnExistingKeyUpdateThisKeyInGenMap!48 (ListLongMap!879 (_ BitVec 64) List!48159 K!9184 V!9386 Hashable!4491) Unit!67029)

(assert (=> b!4303493 (= lt!1525073 (lemmaChangeOneBucketToUpdateAnExistingKeyUpdateThisKeyInGenMap!48 lt!1525079 lt!1525083 lt!1525080 key!2048 v!9179 (hashF!6541 thiss!42308)))))

(assert (=> b!4303493 e!2675522))

(declare-fun res!1763879 () Bool)

(assert (=> b!4303493 (=> (not res!1763879) (not e!2675522))))

(declare-fun lambda!132248 () Int)

(declare-fun forall!8672 (List!48160 Int) Bool)

(assert (=> b!4303493 (= res!1763879 (forall!8672 (toList!2271 lt!1525076) lambda!132248))))

(declare-fun +!210 (ListLongMap!879 tuple2!46168) ListLongMap!879)

(assert (=> b!4303493 (= lt!1525076 (+!210 lt!1525079 (tuple2!46169 lt!1525083 lt!1525080)))))

(declare-fun lt!1525084 () Unit!67029)

(declare-fun lemmaChangeOneBucketByAValidOnePreservesForallNoDuplicatesAndHash!119 (ListLongMap!879 (_ BitVec 64) List!48159 Hashable!4491) Unit!67029)

(assert (=> b!4303493 (= lt!1525084 (lemmaChangeOneBucketByAValidOnePreservesForallNoDuplicatesAndHash!119 lt!1525079 lt!1525083 lt!1525080 (hashF!6541 thiss!42308)))))

(assert (=> b!4303493 e!2675521))

(declare-fun res!1763874 () Bool)

(assert (=> b!4303493 (=> (not res!1763874) (not e!2675521))))

(declare-fun lt!1525078 () List!48159)

(assert (=> b!4303493 (= res!1763874 (noDuplicateKeys!178 lt!1525078))))

(declare-fun lt!1525081 () Unit!67029)

(declare-fun lt!1525077 () List!48159)

(declare-fun lemmaRemovePairForKeyPreservesNoDuplicateKeys!151 (List!48159 K!9184) Unit!67029)

(assert (=> b!4303493 (= lt!1525081 (lemmaRemovePairForKeyPreservesNoDuplicateKeys!151 lt!1525077 key!2048))))

(declare-fun allKeysSameHash!148 (List!48159 (_ BitVec 64) Hashable!4491) Bool)

(assert (=> b!4303493 (allKeysSameHash!148 lt!1525078 lt!1525083 (hashF!6541 thiss!42308))))

(declare-fun lt!1525088 () Unit!67029)

(declare-fun lemmaRemovePairForKeyPreservesHash!134 (List!48159 K!9184 (_ BitVec 64) Hashable!4491) Unit!67029)

(assert (=> b!4303493 (= lt!1525088 (lemmaRemovePairForKeyPreservesHash!134 lt!1525077 key!2048 lt!1525083 (hashF!6541 thiss!42308)))))

(assert (=> b!4303493 (allKeysSameHash!148 lt!1525077 lt!1525083 (hashF!6541 thiss!42308))))

(declare-fun lt!1525085 () Unit!67029)

(declare-fun lemmaInLongMapAllKeySameHashThenForTuple!139 (List!48160 (_ BitVec 64) List!48159 Hashable!4491) Unit!67029)

(assert (=> b!4303493 (= lt!1525085 (lemmaInLongMapAllKeySameHashThenForTuple!139 (toList!2271 lt!1525079) lt!1525083 lt!1525077 (hashF!6541 thiss!42308)))))

(declare-fun tp!1322425 () Bool)

(declare-fun tp!1322427 () Bool)

(declare-fun array_inv!5261 (array!16428) Bool)

(declare-fun array_inv!5262 (array!16430) Bool)

(assert (=> b!4303494 (= e!2675523 (and tp!1322424 tp!1322427 tp!1322425 (array_inv!5261 (_keys!4875 (v!42052 (underlying!9379 (v!42053 (underlying!9380 thiss!42308)))))) (array_inv!5262 (_values!4856 (v!42052 (underlying!9379 (v!42053 (underlying!9380 thiss!42308)))))) e!2675524))))

(declare-fun b!4303495 () Bool)

(declare-fun res!1763881 () Bool)

(declare-fun e!2675512 () Bool)

(assert (=> b!4303495 (=> (not res!1763881) (not e!2675512))))

(declare-fun valid!3558 (MutableMap!4481) Bool)

(assert (=> b!4303495 (= res!1763881 (valid!3558 thiss!42308))))

(declare-fun b!4303496 () Bool)

(declare-fun e!2675515 () Bool)

(declare-fun lt!1525075 () MutLongMap!4575)

(assert (=> b!4303496 (= e!2675515 (and e!2675514 ((_ is LongMap!4575) lt!1525075)))))

(assert (=> b!4303496 (= lt!1525075 (v!42053 (underlying!9380 thiss!42308)))))

(declare-fun res!1763875 () Bool)

(assert (=> start!413316 (=> (not res!1763875) (not e!2675512))))

(assert (=> start!413316 (= res!1763875 ((_ is HashMap!4481) thiss!42308))))

(assert (=> start!413316 e!2675512))

(declare-fun e!2675513 () Bool)

(assert (=> start!413316 e!2675513))

(declare-fun tp_is_empty!23439 () Bool)

(assert (=> start!413316 tp_is_empty!23439))

(declare-fun tp_is_empty!23441 () Bool)

(assert (=> start!413316 tp_is_empty!23441))

(declare-fun b!4303497 () Bool)

(declare-fun res!1763877 () Bool)

(assert (=> b!4303497 (=> (not res!1763877) (not e!2675521))))

(declare-fun containsKey!266 (List!48159 K!9184) Bool)

(assert (=> b!4303497 (= res!1763877 (not (containsKey!266 lt!1525078 key!2048)))))

(declare-fun b!4303498 () Bool)

(declare-fun e!2675520 () Bool)

(assert (=> b!4303498 (= e!2675512 e!2675520)))

(declare-fun res!1763876 () Bool)

(assert (=> b!4303498 (=> (not res!1763876) (not e!2675520))))

(declare-fun contains!9961 (MutableMap!4481 K!9184) Bool)

(assert (=> b!4303498 (= res!1763876 (contains!9961 thiss!42308 key!2048))))

(declare-fun map!10003 (MutLongMap!4575) ListLongMap!879)

(assert (=> b!4303498 (= lt!1525079 (map!10003 (v!42053 (underlying!9380 thiss!42308))))))

(assert (=> b!4303498 (= lt!1525087 (map!10002 thiss!42308))))

(declare-fun b!4303499 () Bool)

(assert (=> b!4303499 (= e!2675520 e!2675517)))

(declare-fun res!1763878 () Bool)

(assert (=> b!4303499 (=> (not res!1763878) (not e!2675517))))

(assert (=> b!4303499 (= res!1763878 (_1!26364 lt!1525082))))

(declare-fun update!371 (MutLongMap!4575 (_ BitVec 64) List!48159) tuple2!46170)

(assert (=> b!4303499 (= lt!1525082 (update!371 (v!42053 (underlying!9380 thiss!42308)) lt!1525083 lt!1525080))))

(assert (=> b!4303499 (= lt!1525080 (Cons!48035 lt!1525089 lt!1525078))))

(declare-fun removePairForKey!171 (List!48159 K!9184) List!48159)

(assert (=> b!4303499 (= lt!1525078 (removePairForKey!171 lt!1525077 key!2048))))

(assert (=> b!4303499 (= lt!1525089 (tuple2!46167 key!2048 v!9179))))

(declare-fun apply!10925 (MutLongMap!4575 (_ BitVec 64)) List!48159)

(assert (=> b!4303499 (= lt!1525077 (apply!10925 (v!42053 (underlying!9380 thiss!42308)) lt!1525083))))

(declare-fun hash!887 (Hashable!4491 K!9184) (_ BitVec 64))

(assert (=> b!4303499 (= lt!1525083 (hash!887 (hashF!6541 thiss!42308) key!2048))))

(declare-fun mapIsEmpty!20506 () Bool)

(assert (=> mapIsEmpty!20506 mapRes!20506))

(assert (=> b!4303500 (= e!2675513 (and e!2675515 tp!1322426))))

(declare-fun b!4303501 () Bool)

(declare-fun valid!3559 (MutLongMap!4575) Bool)

(assert (=> b!4303501 (= e!2675516 (valid!3559 (_2!26364 lt!1525082)))))

(assert (= (and start!413316 res!1763875) b!4303495))

(assert (= (and b!4303495 res!1763881) b!4303498))

(assert (= (and b!4303498 res!1763876) b!4303499))

(assert (= (and b!4303499 res!1763878) b!4303493))

(assert (= (and b!4303493 res!1763874) b!4303497))

(assert (= (and b!4303497 res!1763877) b!4303491))

(assert (= (and b!4303493 res!1763879) b!4303488))

(assert (= (and b!4303493 (not res!1763880)) b!4303501))

(assert (= (and b!4303489 condMapEmpty!20506) mapIsEmpty!20506))

(assert (= (and b!4303489 (not condMapEmpty!20506)) mapNonEmpty!20506))

(assert (= b!4303494 b!4303489))

(assert (= b!4303492 b!4303494))

(assert (= b!4303490 b!4303492))

(assert (= (and b!4303496 ((_ is LongMap!4575) (v!42053 (underlying!9380 thiss!42308)))) b!4303490))

(assert (= b!4303500 b!4303496))

(assert (= (and start!413316 ((_ is HashMap!4481) thiss!42308)) b!4303500))

(declare-fun m!4895943 () Bool)

(assert (=> b!4303499 m!4895943))

(declare-fun m!4895945 () Bool)

(assert (=> b!4303499 m!4895945))

(declare-fun m!4895947 () Bool)

(assert (=> b!4303499 m!4895947))

(declare-fun m!4895949 () Bool)

(assert (=> b!4303499 m!4895949))

(declare-fun m!4895951 () Bool)

(assert (=> b!4303495 m!4895951))

(declare-fun m!4895953 () Bool)

(assert (=> b!4303494 m!4895953))

(declare-fun m!4895955 () Bool)

(assert (=> b!4303494 m!4895955))

(declare-fun m!4895957 () Bool)

(assert (=> mapNonEmpty!20506 m!4895957))

(declare-fun m!4895959 () Bool)

(assert (=> b!4303488 m!4895959))

(declare-fun m!4895961 () Bool)

(assert (=> b!4303498 m!4895961))

(declare-fun m!4895963 () Bool)

(assert (=> b!4303498 m!4895963))

(declare-fun m!4895965 () Bool)

(assert (=> b!4303498 m!4895965))

(declare-fun m!4895967 () Bool)

(assert (=> b!4303501 m!4895967))

(declare-fun m!4895969 () Bool)

(assert (=> b!4303493 m!4895969))

(declare-fun m!4895971 () Bool)

(assert (=> b!4303493 m!4895971))

(declare-fun m!4895973 () Bool)

(assert (=> b!4303493 m!4895973))

(declare-fun m!4895975 () Bool)

(assert (=> b!4303493 m!4895975))

(declare-fun m!4895977 () Bool)

(assert (=> b!4303493 m!4895977))

(declare-fun m!4895979 () Bool)

(assert (=> b!4303493 m!4895979))

(declare-fun m!4895981 () Bool)

(assert (=> b!4303493 m!4895981))

(declare-fun m!4895983 () Bool)

(assert (=> b!4303493 m!4895983))

(declare-fun m!4895985 () Bool)

(assert (=> b!4303493 m!4895985))

(declare-fun m!4895987 () Bool)

(assert (=> b!4303493 m!4895987))

(declare-fun m!4895989 () Bool)

(assert (=> b!4303493 m!4895989))

(declare-fun m!4895991 () Bool)

(assert (=> b!4303493 m!4895991))

(declare-fun m!4895993 () Bool)

(assert (=> b!4303493 m!4895993))

(declare-fun m!4895995 () Bool)

(assert (=> b!4303493 m!4895995))

(declare-fun m!4895997 () Bool)

(assert (=> b!4303493 m!4895997))

(declare-fun m!4895999 () Bool)

(assert (=> b!4303493 m!4895999))

(declare-fun m!4896001 () Bool)

(assert (=> b!4303493 m!4896001))

(assert (=> b!4303493 m!4895995))

(assert (=> b!4303493 m!4895975))

(declare-fun m!4896003 () Bool)

(assert (=> b!4303493 m!4896003))

(declare-fun m!4896005 () Bool)

(assert (=> b!4303493 m!4896005))

(assert (=> b!4303493 m!4895973))

(declare-fun m!4896007 () Bool)

(assert (=> b!4303497 m!4896007))

(declare-fun m!4896009 () Bool)

(assert (=> b!4303491 m!4896009))

(check-sat (not b!4303493) (not b!4303498) b_and!339651 (not b!4303499) (not b!4303497) (not b!4303489) (not b!4303494) b_and!339649 (not b!4303488) (not b!4303495) (not mapNonEmpty!20506) tp_is_empty!23439 (not b_next!128963) (not b!4303491) (not b_next!128965) tp_is_empty!23441 (not b!4303501))
(check-sat b_and!339649 b_and!339651 (not b_next!128965) (not b_next!128963))
(get-model)

(declare-fun d!1267044 () Bool)

(declare-fun res!1763886 () Bool)

(declare-fun e!2675529 () Bool)

(assert (=> d!1267044 (=> res!1763886 e!2675529)))

(assert (=> d!1267044 (= res!1763886 (not ((_ is Cons!48035) lt!1525080)))))

(assert (=> d!1267044 (= (noDuplicateKeys!178 lt!1525080) e!2675529)))

(declare-fun b!4303506 () Bool)

(declare-fun e!2675530 () Bool)

(assert (=> b!4303506 (= e!2675529 e!2675530)))

(declare-fun res!1763887 () Bool)

(assert (=> b!4303506 (=> (not res!1763887) (not e!2675530))))

(assert (=> b!4303506 (= res!1763887 (not (containsKey!266 (t!354934 lt!1525080) (_1!26362 (h!53458 lt!1525080)))))))

(declare-fun b!4303507 () Bool)

(assert (=> b!4303507 (= e!2675530 (noDuplicateKeys!178 (t!354934 lt!1525080)))))

(assert (= (and d!1267044 (not res!1763886)) b!4303506))

(assert (= (and b!4303506 res!1763887) b!4303507))

(declare-fun m!4896011 () Bool)

(assert (=> b!4303506 m!4896011))

(declare-fun m!4896013 () Bool)

(assert (=> b!4303507 m!4896013))

(assert (=> b!4303491 d!1267044))

(declare-fun bs!604226 () Bool)

(declare-fun b!4303512 () Bool)

(assert (= bs!604226 (and b!4303512 b!4303493)))

(declare-fun lambda!132251 () Int)

(assert (=> bs!604226 (= lambda!132251 lambda!132248)))

(declare-fun d!1267046 () Bool)

(declare-fun res!1763892 () Bool)

(declare-fun e!2675533 () Bool)

(assert (=> d!1267046 (=> (not res!1763892) (not e!2675533))))

(assert (=> d!1267046 (= res!1763892 (valid!3559 (v!42053 (underlying!9380 thiss!42308))))))

(assert (=> d!1267046 (= (valid!3558 thiss!42308) e!2675533)))

(declare-fun res!1763893 () Bool)

(assert (=> b!4303512 (=> (not res!1763893) (not e!2675533))))

(assert (=> b!4303512 (= res!1763893 (forall!8672 (toList!2271 (map!10003 (v!42053 (underlying!9380 thiss!42308)))) lambda!132251))))

(declare-fun b!4303513 () Bool)

(assert (=> b!4303513 (= e!2675533 (allKeysSameHashInMap!295 (map!10003 (v!42053 (underlying!9380 thiss!42308))) (hashF!6541 thiss!42308)))))

(assert (= (and d!1267046 res!1763892) b!4303512))

(assert (= (and b!4303512 res!1763893) b!4303513))

(declare-fun m!4896015 () Bool)

(assert (=> d!1267046 m!4896015))

(assert (=> b!4303512 m!4895963))

(declare-fun m!4896017 () Bool)

(assert (=> b!4303512 m!4896017))

(assert (=> b!4303513 m!4895963))

(assert (=> b!4303513 m!4895963))

(declare-fun m!4896019 () Bool)

(assert (=> b!4303513 m!4896019))

(assert (=> b!4303495 d!1267046))

(declare-fun d!1267048 () Bool)

(assert (=> d!1267048 (= (array_inv!5261 (_keys!4875 (v!42052 (underlying!9379 (v!42053 (underlying!9380 thiss!42308)))))) (bvsge (size!35374 (_keys!4875 (v!42052 (underlying!9379 (v!42053 (underlying!9380 thiss!42308)))))) #b00000000000000000000000000000000))))

(assert (=> b!4303494 d!1267048))

(declare-fun d!1267050 () Bool)

(assert (=> d!1267050 (= (array_inv!5262 (_values!4856 (v!42052 (underlying!9379 (v!42053 (underlying!9380 thiss!42308)))))) (bvsge (size!35375 (_values!4856 (v!42052 (underlying!9379 (v!42053 (underlying!9380 thiss!42308)))))) #b00000000000000000000000000000000))))

(assert (=> b!4303494 d!1267050))

(declare-fun b!4303532 () Bool)

(declare-fun e!2675547 () Bool)

(declare-fun e!2675548 () Bool)

(assert (=> b!4303532 (= e!2675547 e!2675548)))

(declare-fun c!731810 () Bool)

(declare-fun lt!1525101 () tuple2!46170)

(assert (=> b!4303532 (= c!731810 (_1!26364 lt!1525101))))

(declare-fun b!4303533 () Bool)

(declare-fun e!2675546 () tuple2!46170)

(declare-fun lt!1525099 () tuple2!46170)

(assert (=> b!4303533 (= e!2675546 (tuple2!46171 false (_2!26364 lt!1525099)))))

(declare-fun b!4303534 () Bool)

(declare-datatypes ((tuple2!46172 0))(
  ( (tuple2!46173 (_1!26365 Bool) (_2!26365 LongMapFixedSize!9150)) )
))
(declare-fun lt!1525098 () tuple2!46172)

(assert (=> b!4303534 (= e!2675546 (tuple2!46171 (_1!26365 lt!1525098) (LongMap!4575 (Cell!18110 (_2!26365 lt!1525098)))))))

(declare-fun update!372 (LongMapFixedSize!9150 (_ BitVec 64) List!48159) tuple2!46172)

(assert (=> b!4303534 (= lt!1525098 (update!372 (v!42052 (underlying!9379 (_2!26364 lt!1525099))) lt!1525083 lt!1525080))))

(declare-fun bm!296739 () Bool)

(declare-fun call!296744 () ListLongMap!879)

(assert (=> bm!296739 (= call!296744 (map!10003 (v!42053 (underlying!9380 thiss!42308))))))

(declare-fun b!4303536 () Bool)

(declare-fun res!1763901 () Bool)

(assert (=> b!4303536 (=> (not res!1763901) (not e!2675547))))

(assert (=> b!4303536 (= res!1763901 (valid!3559 (_2!26364 lt!1525101)))))

(declare-fun b!4303537 () Bool)

(declare-fun e!2675544 () tuple2!46170)

(assert (=> b!4303537 (= e!2675544 (tuple2!46171 true (v!42053 (underlying!9380 thiss!42308))))))

(declare-fun b!4303538 () Bool)

(declare-fun e!2675545 () Bool)

(assert (=> b!4303538 (= e!2675548 e!2675545)))

(declare-fun res!1763902 () Bool)

(declare-fun call!296745 () ListLongMap!879)

(declare-fun contains!9962 (ListLongMap!879 (_ BitVec 64)) Bool)

(assert (=> b!4303538 (= res!1763902 (contains!9962 call!296745 lt!1525083))))

(assert (=> b!4303538 (=> (not res!1763902) (not e!2675545))))

(declare-fun bm!296740 () Bool)

(assert (=> bm!296740 (= call!296745 (map!10003 (_2!26364 lt!1525101)))))

(declare-fun d!1267052 () Bool)

(assert (=> d!1267052 e!2675547))

(declare-fun res!1763900 () Bool)

(assert (=> d!1267052 (=> (not res!1763900) (not e!2675547))))

(assert (=> d!1267052 (= res!1763900 ((_ is LongMap!4575) (_2!26364 lt!1525101)))))

(assert (=> d!1267052 (= lt!1525101 e!2675546)))

(declare-fun c!731812 () Bool)

(assert (=> d!1267052 (= c!731812 (_1!26364 lt!1525099))))

(assert (=> d!1267052 (= lt!1525099 e!2675544)))

(declare-fun c!731811 () Bool)

(declare-fun imbalanced!37 (MutLongMap!4575) Bool)

(assert (=> d!1267052 (= c!731811 (imbalanced!37 (v!42053 (underlying!9380 thiss!42308))))))

(assert (=> d!1267052 (valid!3559 (v!42053 (underlying!9380 thiss!42308)))))

(assert (=> d!1267052 (= (update!371 (v!42053 (underlying!9380 thiss!42308)) lt!1525083 lt!1525080) lt!1525101)))

(declare-fun b!4303535 () Bool)

(declare-fun lt!1525100 () tuple2!46170)

(assert (=> b!4303535 (= e!2675544 (tuple2!46171 (_1!26364 lt!1525100) (_2!26364 lt!1525100)))))

(declare-fun repack!41 (MutLongMap!4575) tuple2!46170)

(assert (=> b!4303535 (= lt!1525100 (repack!41 (v!42053 (underlying!9380 thiss!42308))))))

(declare-fun b!4303539 () Bool)

(assert (=> b!4303539 (= e!2675545 (= call!296745 (+!210 call!296744 (tuple2!46169 lt!1525083 lt!1525080))))))

(declare-fun b!4303540 () Bool)

(assert (=> b!4303540 (= e!2675548 (= call!296745 call!296744))))

(assert (= (and d!1267052 c!731811) b!4303535))

(assert (= (and d!1267052 (not c!731811)) b!4303537))

(assert (= (and d!1267052 c!731812) b!4303534))

(assert (= (and d!1267052 (not c!731812)) b!4303533))

(assert (= (and d!1267052 res!1763900) b!4303536))

(assert (= (and b!4303536 res!1763901) b!4303532))

(assert (= (and b!4303532 c!731810) b!4303538))

(assert (= (and b!4303532 (not c!731810)) b!4303540))

(assert (= (and b!4303538 res!1763902) b!4303539))

(assert (= (or b!4303539 b!4303540) bm!296739))

(assert (= (or b!4303538 b!4303539 b!4303540) bm!296740))

(declare-fun m!4896021 () Bool)

(assert (=> d!1267052 m!4896021))

(assert (=> d!1267052 m!4896015))

(declare-fun m!4896023 () Bool)

(assert (=> b!4303538 m!4896023))

(declare-fun m!4896025 () Bool)

(assert (=> bm!296740 m!4896025))

(declare-fun m!4896027 () Bool)

(assert (=> b!4303534 m!4896027))

(assert (=> bm!296739 m!4895963))

(declare-fun m!4896029 () Bool)

(assert (=> b!4303536 m!4896029))

(declare-fun m!4896031 () Bool)

(assert (=> b!4303539 m!4896031))

(declare-fun m!4896033 () Bool)

(assert (=> b!4303535 m!4896033))

(assert (=> b!4303499 d!1267052))

(declare-fun b!4303551 () Bool)

(declare-fun e!2675553 () List!48159)

(assert (=> b!4303551 (= e!2675553 (Cons!48035 (h!53458 lt!1525077) (removePairForKey!171 (t!354934 lt!1525077) key!2048)))))

(declare-fun b!4303549 () Bool)

(declare-fun e!2675554 () List!48159)

(assert (=> b!4303549 (= e!2675554 (t!354934 lt!1525077))))

(declare-fun b!4303552 () Bool)

(assert (=> b!4303552 (= e!2675553 Nil!48035)))

(declare-fun b!4303550 () Bool)

(assert (=> b!4303550 (= e!2675554 e!2675553)))

(declare-fun c!731817 () Bool)

(assert (=> b!4303550 (= c!731817 ((_ is Cons!48035) lt!1525077))))

(declare-fun d!1267054 () Bool)

(declare-fun lt!1525104 () List!48159)

(assert (=> d!1267054 (not (containsKey!266 lt!1525104 key!2048))))

(assert (=> d!1267054 (= lt!1525104 e!2675554)))

(declare-fun c!731818 () Bool)

(assert (=> d!1267054 (= c!731818 (and ((_ is Cons!48035) lt!1525077) (= (_1!26362 (h!53458 lt!1525077)) key!2048)))))

(assert (=> d!1267054 (noDuplicateKeys!178 lt!1525077)))

(assert (=> d!1267054 (= (removePairForKey!171 lt!1525077 key!2048) lt!1525104)))

(assert (= (and d!1267054 c!731818) b!4303549))

(assert (= (and d!1267054 (not c!731818)) b!4303550))

(assert (= (and b!4303550 c!731817) b!4303551))

(assert (= (and b!4303550 (not c!731817)) b!4303552))

(declare-fun m!4896035 () Bool)

(assert (=> b!4303551 m!4896035))

(declare-fun m!4896037 () Bool)

(assert (=> d!1267054 m!4896037))

(declare-fun m!4896039 () Bool)

(assert (=> d!1267054 m!4896039))

(assert (=> b!4303499 d!1267054))

(declare-fun d!1267056 () Bool)

(declare-fun e!2675557 () Bool)

(assert (=> d!1267056 e!2675557))

(declare-fun c!731821 () Bool)

(declare-fun contains!9963 (MutLongMap!4575 (_ BitVec 64)) Bool)

(assert (=> d!1267056 (= c!731821 (contains!9963 (v!42053 (underlying!9380 thiss!42308)) lt!1525083))))

(declare-fun lt!1525107 () List!48159)

(declare-fun apply!10926 (LongMapFixedSize!9150 (_ BitVec 64)) List!48159)

(assert (=> d!1267056 (= lt!1525107 (apply!10926 (v!42052 (underlying!9379 (v!42053 (underlying!9380 thiss!42308)))) lt!1525083))))

(assert (=> d!1267056 (valid!3559 (v!42053 (underlying!9380 thiss!42308)))))

(assert (=> d!1267056 (= (apply!10925 (v!42053 (underlying!9380 thiss!42308)) lt!1525083) lt!1525107)))

(declare-fun b!4303557 () Bool)

(declare-datatypes ((Option!10183 0))(
  ( (None!10182) (Some!10182 (v!42058 List!48159)) )
))
(declare-fun get!15535 (Option!10183) List!48159)

(declare-fun getValueByKey!226 (List!48160 (_ BitVec 64)) Option!10183)

(assert (=> b!4303557 (= e!2675557 (= lt!1525107 (get!15535 (getValueByKey!226 (toList!2271 (map!10003 (v!42053 (underlying!9380 thiss!42308)))) lt!1525083))))))

(declare-fun b!4303558 () Bool)

(declare-fun dynLambda!20386 (Int (_ BitVec 64)) List!48159)

(assert (=> b!4303558 (= e!2675557 (= lt!1525107 (dynLambda!20386 (defaultEntry!4960 (v!42052 (underlying!9379 (v!42053 (underlying!9380 thiss!42308))))) lt!1525083)))))

(assert (=> b!4303558 ((_ is LongMap!4575) (v!42053 (underlying!9380 thiss!42308)))))

(assert (= (and d!1267056 c!731821) b!4303557))

(assert (= (and d!1267056 (not c!731821)) b!4303558))

(declare-fun b_lambda!126459 () Bool)

(assert (=> (not b_lambda!126459) (not b!4303558)))

(declare-fun t!354937 () Bool)

(declare-fun tb!257261 () Bool)

(assert (=> (and b!4303494 (= (defaultEntry!4960 (v!42052 (underlying!9379 (v!42053 (underlying!9380 thiss!42308))))) (defaultEntry!4960 (v!42052 (underlying!9379 (v!42053 (underlying!9380 thiss!42308)))))) t!354937) tb!257261))

(assert (=> b!4303558 t!354937))

(declare-fun result!314590 () Bool)

(declare-fun b_and!339653 () Bool)

(assert (= b_and!339649 (and (=> t!354937 result!314590) b_and!339653)))

(declare-fun m!4896041 () Bool)

(assert (=> d!1267056 m!4896041))

(declare-fun m!4896043 () Bool)

(assert (=> d!1267056 m!4896043))

(assert (=> d!1267056 m!4896015))

(assert (=> b!4303557 m!4895963))

(declare-fun m!4896045 () Bool)

(assert (=> b!4303557 m!4896045))

(assert (=> b!4303557 m!4896045))

(declare-fun m!4896047 () Bool)

(assert (=> b!4303557 m!4896047))

(declare-fun m!4896049 () Bool)

(assert (=> b!4303558 m!4896049))

(assert (=> b!4303499 d!1267056))

(declare-fun d!1267058 () Bool)

(declare-fun hash!892 (Hashable!4491 K!9184) (_ BitVec 64))

(assert (=> d!1267058 (= (hash!887 (hashF!6541 thiss!42308) key!2048) (hash!892 (hashF!6541 thiss!42308) key!2048))))

(declare-fun bs!604227 () Bool)

(assert (= bs!604227 d!1267058))

(declare-fun m!4896051 () Bool)

(assert (=> bs!604227 m!4896051))

(assert (=> b!4303499 d!1267058))

(declare-fun bs!604228 () Bool)

(declare-fun d!1267060 () Bool)

(assert (= bs!604228 (and d!1267060 b!4303493)))

(declare-fun lambda!132256 () Int)

(assert (=> bs!604228 (= lambda!132256 lambda!132248)))

(declare-fun bs!604229 () Bool)

(assert (= bs!604229 (and d!1267060 b!4303512)))

(assert (=> bs!604229 (= lambda!132256 lambda!132251)))

(declare-fun e!2675560 () Bool)

(assert (=> d!1267060 e!2675560))

(declare-fun res!1763905 () Bool)

(assert (=> d!1267060 (=> (not res!1763905) (not e!2675560))))

(declare-fun lt!1525113 () ListLongMap!879)

(assert (=> d!1267060 (= res!1763905 (forall!8672 (toList!2271 lt!1525113) lambda!132256))))

(assert (=> d!1267060 (= lt!1525113 (+!210 lt!1525079 (tuple2!46169 lt!1525083 lt!1525080)))))

(declare-fun lt!1525112 () Unit!67029)

(declare-fun choose!26195 (ListLongMap!879 (_ BitVec 64) List!48159 Hashable!4491) Unit!67029)

(assert (=> d!1267060 (= lt!1525112 (choose!26195 lt!1525079 lt!1525083 lt!1525080 (hashF!6541 thiss!42308)))))

(assert (=> d!1267060 (forall!8672 (toList!2271 lt!1525079) lambda!132256)))

(assert (=> d!1267060 (= (lemmaChangeOneBucketByAValidOnePreservesForallNoDuplicatesAndHash!119 lt!1525079 lt!1525083 lt!1525080 (hashF!6541 thiss!42308)) lt!1525112)))

(declare-fun b!4303561 () Bool)

(assert (=> b!4303561 (= e!2675560 (allKeysSameHashInMap!295 lt!1525113 (hashF!6541 thiss!42308)))))

(assert (= (and d!1267060 res!1763905) b!4303561))

(declare-fun m!4896053 () Bool)

(assert (=> d!1267060 m!4896053))

(assert (=> d!1267060 m!4895989))

(declare-fun m!4896055 () Bool)

(assert (=> d!1267060 m!4896055))

(declare-fun m!4896057 () Bool)

(assert (=> d!1267060 m!4896057))

(declare-fun m!4896059 () Bool)

(assert (=> b!4303561 m!4896059))

(assert (=> b!4303493 d!1267060))

(declare-fun d!1267062 () Bool)

(declare-fun e!2675563 () Bool)

(assert (=> d!1267062 e!2675563))

(declare-fun res!1763910 () Bool)

(assert (=> d!1267062 (=> (not res!1763910) (not e!2675563))))

(declare-fun lt!1525124 () ListMap!1557)

(assert (=> d!1267062 (= res!1763910 (contains!9960 lt!1525124 (_1!26362 lt!1525089)))))

(declare-fun lt!1525125 () List!48159)

(assert (=> d!1267062 (= lt!1525124 (ListMap!1558 lt!1525125))))

(declare-fun lt!1525122 () Unit!67029)

(declare-fun lt!1525123 () Unit!67029)

(assert (=> d!1267062 (= lt!1525122 lt!1525123)))

(declare-datatypes ((Option!10184 0))(
  ( (None!10183) (Some!10183 (v!42059 V!9386)) )
))
(declare-fun getValueByKey!227 (List!48159 K!9184) Option!10184)

(assert (=> d!1267062 (= (getValueByKey!227 lt!1525125 (_1!26362 lt!1525089)) (Some!10183 (_2!26362 lt!1525089)))))

(declare-fun lemmaContainsTupThenGetReturnValue!52 (List!48159 K!9184 V!9386) Unit!67029)

(assert (=> d!1267062 (= lt!1525123 (lemmaContainsTupThenGetReturnValue!52 lt!1525125 (_1!26362 lt!1525089) (_2!26362 lt!1525089)))))

(declare-fun insertNoDuplicatedKeys!34 (List!48159 K!9184 V!9386) List!48159)

(assert (=> d!1267062 (= lt!1525125 (insertNoDuplicatedKeys!34 (toList!2272 lt!1525087) (_1!26362 lt!1525089) (_2!26362 lt!1525089)))))

(assert (=> d!1267062 (= (+!209 lt!1525087 lt!1525089) lt!1525124)))

(declare-fun b!4303566 () Bool)

(declare-fun res!1763911 () Bool)

(assert (=> b!4303566 (=> (not res!1763911) (not e!2675563))))

(assert (=> b!4303566 (= res!1763911 (= (getValueByKey!227 (toList!2272 lt!1525124) (_1!26362 lt!1525089)) (Some!10183 (_2!26362 lt!1525089))))))

(declare-fun b!4303567 () Bool)

(declare-fun contains!9964 (List!48159 tuple2!46166) Bool)

(assert (=> b!4303567 (= e!2675563 (contains!9964 (toList!2272 lt!1525124) lt!1525089))))

(assert (= (and d!1267062 res!1763910) b!4303566))

(assert (= (and b!4303566 res!1763911) b!4303567))

(declare-fun m!4896061 () Bool)

(assert (=> d!1267062 m!4896061))

(declare-fun m!4896063 () Bool)

(assert (=> d!1267062 m!4896063))

(declare-fun m!4896065 () Bool)

(assert (=> d!1267062 m!4896065))

(declare-fun m!4896067 () Bool)

(assert (=> d!1267062 m!4896067))

(declare-fun m!4896069 () Bool)

(assert (=> b!4303566 m!4896069))

(declare-fun m!4896071 () Bool)

(assert (=> b!4303567 m!4896071))

(assert (=> b!4303493 d!1267062))

(declare-fun d!1267064 () Bool)

(assert (=> d!1267064 true))

(assert (=> d!1267064 true))

(declare-fun lambda!132259 () Int)

(declare-fun forall!8673 (List!48159 Int) Bool)

(assert (=> d!1267064 (= (allKeysSameHash!148 lt!1525077 lt!1525083 (hashF!6541 thiss!42308)) (forall!8673 lt!1525077 lambda!132259))))

(declare-fun bs!604230 () Bool)

(assert (= bs!604230 d!1267064))

(declare-fun m!4896073 () Bool)

(assert (=> bs!604230 m!4896073))

(assert (=> b!4303493 d!1267064))

(declare-fun d!1267066 () Bool)

(declare-fun res!1763916 () Bool)

(declare-fun e!2675568 () Bool)

(assert (=> d!1267066 (=> res!1763916 e!2675568)))

(assert (=> d!1267066 (= res!1763916 ((_ is Nil!48036) (toList!2271 lt!1525076)))))

(assert (=> d!1267066 (= (forall!8672 (toList!2271 lt!1525076) lambda!132248) e!2675568)))

(declare-fun b!4303576 () Bool)

(declare-fun e!2675569 () Bool)

(assert (=> b!4303576 (= e!2675568 e!2675569)))

(declare-fun res!1763917 () Bool)

(assert (=> b!4303576 (=> (not res!1763917) (not e!2675569))))

(declare-fun dynLambda!20387 (Int tuple2!46168) Bool)

(assert (=> b!4303576 (= res!1763917 (dynLambda!20387 lambda!132248 (h!53459 (toList!2271 lt!1525076))))))

(declare-fun b!4303577 () Bool)

(assert (=> b!4303577 (= e!2675569 (forall!8672 (t!354935 (toList!2271 lt!1525076)) lambda!132248))))

(assert (= (and d!1267066 (not res!1763916)) b!4303576))

(assert (= (and b!4303576 res!1763917) b!4303577))

(declare-fun b_lambda!126461 () Bool)

(assert (=> (not b_lambda!126461) (not b!4303576)))

(declare-fun m!4896075 () Bool)

(assert (=> b!4303576 m!4896075))

(declare-fun m!4896077 () Bool)

(assert (=> b!4303577 m!4896077))

(assert (=> b!4303493 d!1267066))

(declare-fun d!1267068 () Bool)

(assert (=> d!1267068 (= (contains!9960 lt!1525074 key!2048) (contains!9960 lt!1525072 key!2048))))

(declare-fun lt!1525128 () Unit!67029)

(declare-fun choose!26196 (ListMap!1557 ListMap!1557 K!9184) Unit!67029)

(assert (=> d!1267068 (= lt!1525128 (choose!26196 lt!1525074 lt!1525072 key!2048))))

(assert (=> d!1267068 (eq!116 lt!1525074 lt!1525072)))

(assert (=> d!1267068 (= (lemmaEquivalentThenSameContains!43 lt!1525074 lt!1525072 key!2048) lt!1525128)))

(declare-fun bs!604231 () Bool)

(assert (= bs!604231 d!1267068))

(assert (=> bs!604231 m!4895999))

(assert (=> bs!604231 m!4895983))

(declare-fun m!4896079 () Bool)

(assert (=> bs!604231 m!4896079))

(declare-fun m!4896081 () Bool)

(assert (=> bs!604231 m!4896081))

(assert (=> b!4303493 d!1267068))

(declare-fun b!4303596 () Bool)

(declare-fun e!2675586 () Unit!67029)

(declare-fun Unit!67031 () Unit!67029)

(assert (=> b!4303596 (= e!2675586 Unit!67031)))

(declare-fun b!4303597 () Bool)

(assert (=> b!4303597 false))

(declare-fun lt!1525146 () Unit!67029)

(declare-fun lt!1525148 () Unit!67029)

(assert (=> b!4303597 (= lt!1525146 lt!1525148)))

(declare-fun containsKey!267 (List!48159 K!9184) Bool)

(assert (=> b!4303597 (containsKey!267 (toList!2272 lt!1525074) key!2048)))

(declare-fun lemmaInGetKeysListThenContainsKey!35 (List!48159 K!9184) Unit!67029)

(assert (=> b!4303597 (= lt!1525148 (lemmaInGetKeysListThenContainsKey!35 (toList!2272 lt!1525074) key!2048))))

(declare-fun Unit!67032 () Unit!67029)

(assert (=> b!4303597 (= e!2675586 Unit!67032)))

(declare-fun b!4303598 () Bool)

(declare-fun e!2675582 () Bool)

(declare-datatypes ((List!48161 0))(
  ( (Nil!48037) (Cons!48037 (h!53461 K!9184) (t!354938 List!48161)) )
))
(declare-fun contains!9965 (List!48161 K!9184) Bool)

(declare-fun keys!15977 (ListMap!1557) List!48161)

(assert (=> b!4303598 (= e!2675582 (contains!9965 (keys!15977 lt!1525074) key!2048))))

(declare-fun bm!296743 () Bool)

(declare-fun call!296748 () Bool)

(declare-fun e!2675583 () List!48161)

(assert (=> bm!296743 (= call!296748 (contains!9965 e!2675583 key!2048))))

(declare-fun c!731828 () Bool)

(declare-fun c!731830 () Bool)

(assert (=> bm!296743 (= c!731828 c!731830)))

(declare-fun b!4303599 () Bool)

(declare-fun e!2675587 () Bool)

(assert (=> b!4303599 (= e!2675587 e!2675582)))

(declare-fun res!1763924 () Bool)

(assert (=> b!4303599 (=> (not res!1763924) (not e!2675582))))

(declare-fun isDefined!7491 (Option!10184) Bool)

(assert (=> b!4303599 (= res!1763924 (isDefined!7491 (getValueByKey!227 (toList!2272 lt!1525074) key!2048)))))

(declare-fun b!4303600 () Bool)

(declare-fun getKeysList!38 (List!48159) List!48161)

(assert (=> b!4303600 (= e!2675583 (getKeysList!38 (toList!2272 lt!1525074)))))

(declare-fun b!4303601 () Bool)

(declare-fun e!2675584 () Bool)

(assert (=> b!4303601 (= e!2675584 (not (contains!9965 (keys!15977 lt!1525074) key!2048)))))

(declare-fun b!4303602 () Bool)

(declare-fun e!2675585 () Unit!67029)

(assert (=> b!4303602 (= e!2675585 e!2675586)))

(declare-fun c!731829 () Bool)

(assert (=> b!4303602 (= c!731829 call!296748)))

(declare-fun b!4303603 () Bool)

(declare-fun lt!1525150 () Unit!67029)

(assert (=> b!4303603 (= e!2675585 lt!1525150)))

(declare-fun lt!1525149 () Unit!67029)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!152 (List!48159 K!9184) Unit!67029)

(assert (=> b!4303603 (= lt!1525149 (lemmaContainsKeyImpliesGetValueByKeyDefined!152 (toList!2272 lt!1525074) key!2048))))

(assert (=> b!4303603 (isDefined!7491 (getValueByKey!227 (toList!2272 lt!1525074) key!2048))))

(declare-fun lt!1525151 () Unit!67029)

(assert (=> b!4303603 (= lt!1525151 lt!1525149)))

(declare-fun lemmaInListThenGetKeysListContains!35 (List!48159 K!9184) Unit!67029)

(assert (=> b!4303603 (= lt!1525150 (lemmaInListThenGetKeysListContains!35 (toList!2272 lt!1525074) key!2048))))

(assert (=> b!4303603 call!296748))

(declare-fun b!4303604 () Bool)

(assert (=> b!4303604 (= e!2675583 (keys!15977 lt!1525074))))

(declare-fun d!1267070 () Bool)

(assert (=> d!1267070 e!2675587))

(declare-fun res!1763925 () Bool)

(assert (=> d!1267070 (=> res!1763925 e!2675587)))

(assert (=> d!1267070 (= res!1763925 e!2675584)))

(declare-fun res!1763926 () Bool)

(assert (=> d!1267070 (=> (not res!1763926) (not e!2675584))))

(declare-fun lt!1525152 () Bool)

(assert (=> d!1267070 (= res!1763926 (not lt!1525152))))

(declare-fun lt!1525147 () Bool)

(assert (=> d!1267070 (= lt!1525152 lt!1525147)))

(declare-fun lt!1525145 () Unit!67029)

(assert (=> d!1267070 (= lt!1525145 e!2675585)))

(assert (=> d!1267070 (= c!731830 lt!1525147)))

(assert (=> d!1267070 (= lt!1525147 (containsKey!267 (toList!2272 lt!1525074) key!2048))))

(assert (=> d!1267070 (= (contains!9960 lt!1525074 key!2048) lt!1525152)))

(assert (= (and d!1267070 c!731830) b!4303603))

(assert (= (and d!1267070 (not c!731830)) b!4303602))

(assert (= (and b!4303602 c!731829) b!4303597))

(assert (= (and b!4303602 (not c!731829)) b!4303596))

(assert (= (or b!4303603 b!4303602) bm!296743))

(assert (= (and bm!296743 c!731828) b!4303600))

(assert (= (and bm!296743 (not c!731828)) b!4303604))

(assert (= (and d!1267070 res!1763926) b!4303601))

(assert (= (and d!1267070 (not res!1763925)) b!4303599))

(assert (= (and b!4303599 res!1763924) b!4303598))

(declare-fun m!4896083 () Bool)

(assert (=> b!4303601 m!4896083))

(assert (=> b!4303601 m!4896083))

(declare-fun m!4896085 () Bool)

(assert (=> b!4303601 m!4896085))

(assert (=> b!4303598 m!4896083))

(assert (=> b!4303598 m!4896083))

(assert (=> b!4303598 m!4896085))

(declare-fun m!4896087 () Bool)

(assert (=> bm!296743 m!4896087))

(declare-fun m!4896089 () Bool)

(assert (=> b!4303600 m!4896089))

(declare-fun m!4896091 () Bool)

(assert (=> d!1267070 m!4896091))

(declare-fun m!4896093 () Bool)

(assert (=> b!4303603 m!4896093))

(declare-fun m!4896095 () Bool)

(assert (=> b!4303603 m!4896095))

(assert (=> b!4303603 m!4896095))

(declare-fun m!4896097 () Bool)

(assert (=> b!4303603 m!4896097))

(declare-fun m!4896099 () Bool)

(assert (=> b!4303603 m!4896099))

(assert (=> b!4303604 m!4896083))

(assert (=> b!4303597 m!4896091))

(declare-fun m!4896101 () Bool)

(assert (=> b!4303597 m!4896101))

(assert (=> b!4303599 m!4896095))

(assert (=> b!4303599 m!4896095))

(assert (=> b!4303599 m!4896097))

(assert (=> b!4303493 d!1267070))

(declare-fun d!1267072 () Bool)

(declare-fun res!1763927 () Bool)

(declare-fun e!2675588 () Bool)

(assert (=> d!1267072 (=> res!1763927 e!2675588)))

(assert (=> d!1267072 (= res!1763927 (not ((_ is Cons!48035) lt!1525078)))))

(assert (=> d!1267072 (= (noDuplicateKeys!178 lt!1525078) e!2675588)))

(declare-fun b!4303605 () Bool)

(declare-fun e!2675589 () Bool)

(assert (=> b!4303605 (= e!2675588 e!2675589)))

(declare-fun res!1763928 () Bool)

(assert (=> b!4303605 (=> (not res!1763928) (not e!2675589))))

(assert (=> b!4303605 (= res!1763928 (not (containsKey!266 (t!354934 lt!1525078) (_1!26362 (h!53458 lt!1525078)))))))

(declare-fun b!4303606 () Bool)

(assert (=> b!4303606 (= e!2675589 (noDuplicateKeys!178 (t!354934 lt!1525078)))))

(assert (= (and d!1267072 (not res!1763927)) b!4303605))

(assert (= (and b!4303605 res!1763928) b!4303606))

(declare-fun m!4896103 () Bool)

(assert (=> b!4303605 m!4896103))

(declare-fun m!4896105 () Bool)

(assert (=> b!4303606 m!4896105))

(assert (=> b!4303493 d!1267072))

(declare-fun bs!604232 () Bool)

(declare-fun d!1267074 () Bool)

(assert (= bs!604232 (and d!1267074 d!1267064)))

(declare-fun lambda!132260 () Int)

(assert (=> bs!604232 (= lambda!132260 lambda!132259)))

(assert (=> d!1267074 true))

(assert (=> d!1267074 true))

(assert (=> d!1267074 (= (allKeysSameHash!148 lt!1525078 lt!1525083 (hashF!6541 thiss!42308)) (forall!8673 lt!1525078 lambda!132260))))

(declare-fun bs!604233 () Bool)

(assert (= bs!604233 d!1267074))

(declare-fun m!4896107 () Bool)

(assert (=> bs!604233 m!4896107))

(assert (=> b!4303493 d!1267074))

(declare-fun d!1267076 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!7543 (List!48159) (InoxSet tuple2!46166))

(assert (=> d!1267076 (= (eq!116 (extractMap!292 (toList!2271 lt!1525076)) (+!209 (extractMap!292 (toList!2271 lt!1525079)) lt!1525089)) (= (content!7543 (toList!2272 (extractMap!292 (toList!2271 lt!1525076)))) (content!7543 (toList!2272 (+!209 (extractMap!292 (toList!2271 lt!1525079)) lt!1525089)))))))

(declare-fun bs!604234 () Bool)

(assert (= bs!604234 d!1267076))

(declare-fun m!4896109 () Bool)

(assert (=> bs!604234 m!4896109))

(declare-fun m!4896111 () Bool)

(assert (=> bs!604234 m!4896111))

(assert (=> b!4303493 d!1267076))

(declare-fun d!1267078 () Bool)

(assert (=> d!1267078 (noDuplicateKeys!178 (removePairForKey!171 lt!1525077 key!2048))))

(declare-fun lt!1525155 () Unit!67029)

(declare-fun choose!26197 (List!48159 K!9184) Unit!67029)

(assert (=> d!1267078 (= lt!1525155 (choose!26197 lt!1525077 key!2048))))

(assert (=> d!1267078 (noDuplicateKeys!178 lt!1525077)))

(assert (=> d!1267078 (= (lemmaRemovePairForKeyPreservesNoDuplicateKeys!151 lt!1525077 key!2048) lt!1525155)))

(declare-fun bs!604235 () Bool)

(assert (= bs!604235 d!1267078))

(assert (=> bs!604235 m!4895945))

(assert (=> bs!604235 m!4895945))

(declare-fun m!4896113 () Bool)

(assert (=> bs!604235 m!4896113))

(declare-fun m!4896115 () Bool)

(assert (=> bs!604235 m!4896115))

(assert (=> bs!604235 m!4896039))

(assert (=> b!4303493 d!1267078))

(declare-fun bs!604236 () Bool)

(declare-fun d!1267080 () Bool)

(assert (= bs!604236 (and d!1267080 b!4303493)))

(declare-fun lambda!132263 () Int)

(assert (=> bs!604236 (= lambda!132263 lambda!132248)))

(declare-fun bs!604237 () Bool)

(assert (= bs!604237 (and d!1267080 b!4303512)))

(assert (=> bs!604237 (= lambda!132263 lambda!132251)))

(declare-fun bs!604238 () Bool)

(assert (= bs!604238 (and d!1267080 d!1267060)))

(assert (=> bs!604238 (= lambda!132263 lambda!132256)))

(assert (=> d!1267080 (eq!116 (extractMap!292 (toList!2271 (+!210 lt!1525079 (tuple2!46169 lt!1525083 lt!1525080)))) (+!209 (extractMap!292 (toList!2271 lt!1525079)) (tuple2!46167 key!2048 v!9179)))))

(declare-fun lt!1525158 () Unit!67029)

(declare-fun choose!26198 (ListLongMap!879 (_ BitVec 64) List!48159 K!9184 V!9386 Hashable!4491) Unit!67029)

(assert (=> d!1267080 (= lt!1525158 (choose!26198 lt!1525079 lt!1525083 lt!1525080 key!2048 v!9179 (hashF!6541 thiss!42308)))))

(assert (=> d!1267080 (forall!8672 (toList!2271 lt!1525079) lambda!132263)))

(assert (=> d!1267080 (= (lemmaChangeOneBucketToUpdateAnExistingKeyUpdateThisKeyInGenMap!48 lt!1525079 lt!1525083 lt!1525080 key!2048 v!9179 (hashF!6541 thiss!42308)) lt!1525158)))

(declare-fun bs!604239 () Bool)

(assert (= bs!604239 d!1267080))

(assert (=> bs!604239 m!4895989))

(assert (=> bs!604239 m!4895995))

(declare-fun m!4896117 () Bool)

(assert (=> bs!604239 m!4896117))

(declare-fun m!4896119 () Bool)

(assert (=> bs!604239 m!4896119))

(declare-fun m!4896121 () Bool)

(assert (=> bs!604239 m!4896121))

(assert (=> bs!604239 m!4895995))

(declare-fun m!4896123 () Bool)

(assert (=> bs!604239 m!4896123))

(assert (=> bs!604239 m!4896121))

(assert (=> bs!604239 m!4896117))

(declare-fun m!4896125 () Bool)

(assert (=> bs!604239 m!4896125))

(assert (=> b!4303493 d!1267080))

(declare-fun d!1267082 () Bool)

(declare-fun e!2675590 () Bool)

(assert (=> d!1267082 e!2675590))

(declare-fun res!1763929 () Bool)

(assert (=> d!1267082 (=> (not res!1763929) (not e!2675590))))

(declare-fun lt!1525161 () ListMap!1557)

(assert (=> d!1267082 (= res!1763929 (contains!9960 lt!1525161 (_1!26362 lt!1525089)))))

(declare-fun lt!1525162 () List!48159)

(assert (=> d!1267082 (= lt!1525161 (ListMap!1558 lt!1525162))))

(declare-fun lt!1525159 () Unit!67029)

(declare-fun lt!1525160 () Unit!67029)

(assert (=> d!1267082 (= lt!1525159 lt!1525160)))

(assert (=> d!1267082 (= (getValueByKey!227 lt!1525162 (_1!26362 lt!1525089)) (Some!10183 (_2!26362 lt!1525089)))))

(assert (=> d!1267082 (= lt!1525160 (lemmaContainsTupThenGetReturnValue!52 lt!1525162 (_1!26362 lt!1525089) (_2!26362 lt!1525089)))))

(assert (=> d!1267082 (= lt!1525162 (insertNoDuplicatedKeys!34 (toList!2272 (extractMap!292 (toList!2271 lt!1525079))) (_1!26362 lt!1525089) (_2!26362 lt!1525089)))))

(assert (=> d!1267082 (= (+!209 (extractMap!292 (toList!2271 lt!1525079)) lt!1525089) lt!1525161)))

(declare-fun b!4303607 () Bool)

(declare-fun res!1763930 () Bool)

(assert (=> b!4303607 (=> (not res!1763930) (not e!2675590))))

(assert (=> b!4303607 (= res!1763930 (= (getValueByKey!227 (toList!2272 lt!1525161) (_1!26362 lt!1525089)) (Some!10183 (_2!26362 lt!1525089))))))

(declare-fun b!4303608 () Bool)

(assert (=> b!4303608 (= e!2675590 (contains!9964 (toList!2272 lt!1525161) lt!1525089))))

(assert (= (and d!1267082 res!1763929) b!4303607))

(assert (= (and b!4303607 res!1763930) b!4303608))

(declare-fun m!4896127 () Bool)

(assert (=> d!1267082 m!4896127))

(declare-fun m!4896129 () Bool)

(assert (=> d!1267082 m!4896129))

(declare-fun m!4896131 () Bool)

(assert (=> d!1267082 m!4896131))

(declare-fun m!4896133 () Bool)

(assert (=> d!1267082 m!4896133))

(declare-fun m!4896135 () Bool)

(assert (=> b!4303607 m!4896135))

(declare-fun m!4896137 () Bool)

(assert (=> b!4303608 m!4896137))

(assert (=> b!4303493 d!1267082))

(declare-fun bs!604240 () Bool)

(declare-fun d!1267084 () Bool)

(assert (= bs!604240 (and d!1267084 b!4303493)))

(declare-fun lambda!132266 () Int)

(assert (=> bs!604240 (= lambda!132266 lambda!132248)))

(declare-fun bs!604241 () Bool)

(assert (= bs!604241 (and d!1267084 b!4303512)))

(assert (=> bs!604241 (= lambda!132266 lambda!132251)))

(declare-fun bs!604242 () Bool)

(assert (= bs!604242 (and d!1267084 d!1267060)))

(assert (=> bs!604242 (= lambda!132266 lambda!132256)))

(declare-fun bs!604243 () Bool)

(assert (= bs!604243 (and d!1267084 d!1267080)))

(assert (=> bs!604243 (= lambda!132266 lambda!132263)))

(declare-fun lt!1525165 () ListMap!1557)

(declare-fun invariantList!555 (List!48159) Bool)

(assert (=> d!1267084 (invariantList!555 (toList!2272 lt!1525165))))

(declare-fun e!2675593 () ListMap!1557)

(assert (=> d!1267084 (= lt!1525165 e!2675593)))

(declare-fun c!731833 () Bool)

(assert (=> d!1267084 (= c!731833 ((_ is Cons!48036) (toList!2271 lt!1525079)))))

(assert (=> d!1267084 (forall!8672 (toList!2271 lt!1525079) lambda!132266)))

(assert (=> d!1267084 (= (extractMap!292 (toList!2271 lt!1525079)) lt!1525165)))

(declare-fun b!4303613 () Bool)

(declare-fun addToMapMapFromBucket!26 (List!48159 ListMap!1557) ListMap!1557)

(assert (=> b!4303613 (= e!2675593 (addToMapMapFromBucket!26 (_2!26363 (h!53459 (toList!2271 lt!1525079))) (extractMap!292 (t!354935 (toList!2271 lt!1525079)))))))

(declare-fun b!4303614 () Bool)

(assert (=> b!4303614 (= e!2675593 (ListMap!1558 Nil!48035))))

(assert (= (and d!1267084 c!731833) b!4303613))

(assert (= (and d!1267084 (not c!731833)) b!4303614))

(declare-fun m!4896139 () Bool)

(assert (=> d!1267084 m!4896139))

(declare-fun m!4896141 () Bool)

(assert (=> d!1267084 m!4896141))

(declare-fun m!4896143 () Bool)

(assert (=> b!4303613 m!4896143))

(assert (=> b!4303613 m!4896143))

(declare-fun m!4896145 () Bool)

(assert (=> b!4303613 m!4896145))

(assert (=> b!4303493 d!1267084))

(declare-fun b!4303615 () Bool)

(declare-fun e!2675598 () Unit!67029)

(declare-fun Unit!67033 () Unit!67029)

(assert (=> b!4303615 (= e!2675598 Unit!67033)))

(declare-fun b!4303616 () Bool)

(assert (=> b!4303616 false))

(declare-fun lt!1525167 () Unit!67029)

(declare-fun lt!1525169 () Unit!67029)

(assert (=> b!4303616 (= lt!1525167 lt!1525169)))

(assert (=> b!4303616 (containsKey!267 (toList!2272 lt!1525072) key!2048)))

(assert (=> b!4303616 (= lt!1525169 (lemmaInGetKeysListThenContainsKey!35 (toList!2272 lt!1525072) key!2048))))

(declare-fun Unit!67034 () Unit!67029)

(assert (=> b!4303616 (= e!2675598 Unit!67034)))

(declare-fun b!4303617 () Bool)

(declare-fun e!2675594 () Bool)

(assert (=> b!4303617 (= e!2675594 (contains!9965 (keys!15977 lt!1525072) key!2048))))

(declare-fun bm!296744 () Bool)

(declare-fun call!296749 () Bool)

(declare-fun e!2675595 () List!48161)

(assert (=> bm!296744 (= call!296749 (contains!9965 e!2675595 key!2048))))

(declare-fun c!731834 () Bool)

(declare-fun c!731836 () Bool)

(assert (=> bm!296744 (= c!731834 c!731836)))

(declare-fun b!4303618 () Bool)

(declare-fun e!2675599 () Bool)

(assert (=> b!4303618 (= e!2675599 e!2675594)))

(declare-fun res!1763931 () Bool)

(assert (=> b!4303618 (=> (not res!1763931) (not e!2675594))))

(assert (=> b!4303618 (= res!1763931 (isDefined!7491 (getValueByKey!227 (toList!2272 lt!1525072) key!2048)))))

(declare-fun b!4303619 () Bool)

(assert (=> b!4303619 (= e!2675595 (getKeysList!38 (toList!2272 lt!1525072)))))

(declare-fun b!4303620 () Bool)

(declare-fun e!2675596 () Bool)

(assert (=> b!4303620 (= e!2675596 (not (contains!9965 (keys!15977 lt!1525072) key!2048)))))

(declare-fun b!4303621 () Bool)

(declare-fun e!2675597 () Unit!67029)

(assert (=> b!4303621 (= e!2675597 e!2675598)))

(declare-fun c!731835 () Bool)

(assert (=> b!4303621 (= c!731835 call!296749)))

(declare-fun b!4303622 () Bool)

(declare-fun lt!1525171 () Unit!67029)

(assert (=> b!4303622 (= e!2675597 lt!1525171)))

(declare-fun lt!1525170 () Unit!67029)

(assert (=> b!4303622 (= lt!1525170 (lemmaContainsKeyImpliesGetValueByKeyDefined!152 (toList!2272 lt!1525072) key!2048))))

(assert (=> b!4303622 (isDefined!7491 (getValueByKey!227 (toList!2272 lt!1525072) key!2048))))

(declare-fun lt!1525172 () Unit!67029)

(assert (=> b!4303622 (= lt!1525172 lt!1525170)))

(assert (=> b!4303622 (= lt!1525171 (lemmaInListThenGetKeysListContains!35 (toList!2272 lt!1525072) key!2048))))

(assert (=> b!4303622 call!296749))

(declare-fun b!4303623 () Bool)

(assert (=> b!4303623 (= e!2675595 (keys!15977 lt!1525072))))

(declare-fun d!1267086 () Bool)

(assert (=> d!1267086 e!2675599))

(declare-fun res!1763932 () Bool)

(assert (=> d!1267086 (=> res!1763932 e!2675599)))

(assert (=> d!1267086 (= res!1763932 e!2675596)))

(declare-fun res!1763933 () Bool)

(assert (=> d!1267086 (=> (not res!1763933) (not e!2675596))))

(declare-fun lt!1525173 () Bool)

(assert (=> d!1267086 (= res!1763933 (not lt!1525173))))

(declare-fun lt!1525168 () Bool)

(assert (=> d!1267086 (= lt!1525173 lt!1525168)))

(declare-fun lt!1525166 () Unit!67029)

(assert (=> d!1267086 (= lt!1525166 e!2675597)))

(assert (=> d!1267086 (= c!731836 lt!1525168)))

(assert (=> d!1267086 (= lt!1525168 (containsKey!267 (toList!2272 lt!1525072) key!2048))))

(assert (=> d!1267086 (= (contains!9960 lt!1525072 key!2048) lt!1525173)))

(assert (= (and d!1267086 c!731836) b!4303622))

(assert (= (and d!1267086 (not c!731836)) b!4303621))

(assert (= (and b!4303621 c!731835) b!4303616))

(assert (= (and b!4303621 (not c!731835)) b!4303615))

(assert (= (or b!4303622 b!4303621) bm!296744))

(assert (= (and bm!296744 c!731834) b!4303619))

(assert (= (and bm!296744 (not c!731834)) b!4303623))

(assert (= (and d!1267086 res!1763933) b!4303620))

(assert (= (and d!1267086 (not res!1763932)) b!4303618))

(assert (= (and b!4303618 res!1763931) b!4303617))

(declare-fun m!4896147 () Bool)

(assert (=> b!4303620 m!4896147))

(assert (=> b!4303620 m!4896147))

(declare-fun m!4896149 () Bool)

(assert (=> b!4303620 m!4896149))

(assert (=> b!4303617 m!4896147))

(assert (=> b!4303617 m!4896147))

(assert (=> b!4303617 m!4896149))

(declare-fun m!4896151 () Bool)

(assert (=> bm!296744 m!4896151))

(declare-fun m!4896153 () Bool)

(assert (=> b!4303619 m!4896153))

(declare-fun m!4896155 () Bool)

(assert (=> d!1267086 m!4896155))

(declare-fun m!4896157 () Bool)

(assert (=> b!4303622 m!4896157))

(declare-fun m!4896159 () Bool)

(assert (=> b!4303622 m!4896159))

(assert (=> b!4303622 m!4896159))

(declare-fun m!4896161 () Bool)

(assert (=> b!4303622 m!4896161))

(declare-fun m!4896163 () Bool)

(assert (=> b!4303622 m!4896163))

(assert (=> b!4303623 m!4896147))

(assert (=> b!4303616 m!4896155))

(declare-fun m!4896165 () Bool)

(assert (=> b!4303616 m!4896165))

(assert (=> b!4303618 m!4896159))

(assert (=> b!4303618 m!4896159))

(assert (=> b!4303618 m!4896161))

(assert (=> b!4303493 d!1267086))

(declare-fun d!1267088 () Bool)

(declare-fun lt!1525176 () ListMap!1557)

(assert (=> d!1267088 (invariantList!555 (toList!2272 lt!1525176))))

(assert (=> d!1267088 (= lt!1525176 (extractMap!292 (toList!2271 (map!10003 (v!42053 (underlying!9380 (HashMap!4481 (Cell!18112 (_2!26364 lt!1525082)) (hashF!6541 thiss!42308) (_size!9194 thiss!42308) (defaultValue!4652 thiss!42308))))))))))

(assert (=> d!1267088 (valid!3558 (HashMap!4481 (Cell!18112 (_2!26364 lt!1525082)) (hashF!6541 thiss!42308) (_size!9194 thiss!42308) (defaultValue!4652 thiss!42308)))))

(assert (=> d!1267088 (= (map!10002 (HashMap!4481 (Cell!18112 (_2!26364 lt!1525082)) (hashF!6541 thiss!42308) (_size!9194 thiss!42308) (defaultValue!4652 thiss!42308))) lt!1525176)))

(declare-fun bs!604244 () Bool)

(assert (= bs!604244 d!1267088))

(declare-fun m!4896167 () Bool)

(assert (=> bs!604244 m!4896167))

(declare-fun m!4896169 () Bool)

(assert (=> bs!604244 m!4896169))

(declare-fun m!4896171 () Bool)

(assert (=> bs!604244 m!4896171))

(declare-fun m!4896173 () Bool)

(assert (=> bs!604244 m!4896173))

(assert (=> b!4303493 d!1267088))

(declare-fun d!1267090 () Bool)

(declare-fun e!2675602 () Bool)

(assert (=> d!1267090 e!2675602))

(declare-fun res!1763939 () Bool)

(assert (=> d!1267090 (=> (not res!1763939) (not e!2675602))))

(declare-fun lt!1525186 () ListLongMap!879)

(assert (=> d!1267090 (= res!1763939 (contains!9962 lt!1525186 (_1!26363 (tuple2!46169 lt!1525083 lt!1525080))))))

(declare-fun lt!1525188 () List!48160)

(assert (=> d!1267090 (= lt!1525186 (ListLongMap!880 lt!1525188))))

(declare-fun lt!1525185 () Unit!67029)

(declare-fun lt!1525187 () Unit!67029)

(assert (=> d!1267090 (= lt!1525185 lt!1525187)))

(assert (=> d!1267090 (= (getValueByKey!226 lt!1525188 (_1!26363 (tuple2!46169 lt!1525083 lt!1525080))) (Some!10182 (_2!26363 (tuple2!46169 lt!1525083 lt!1525080))))))

(declare-fun lemmaContainsTupThenGetReturnValue!53 (List!48160 (_ BitVec 64) List!48159) Unit!67029)

(assert (=> d!1267090 (= lt!1525187 (lemmaContainsTupThenGetReturnValue!53 lt!1525188 (_1!26363 (tuple2!46169 lt!1525083 lt!1525080)) (_2!26363 (tuple2!46169 lt!1525083 lt!1525080))))))

(declare-fun insertStrictlySorted!27 (List!48160 (_ BitVec 64) List!48159) List!48160)

(assert (=> d!1267090 (= lt!1525188 (insertStrictlySorted!27 (toList!2271 lt!1525079) (_1!26363 (tuple2!46169 lt!1525083 lt!1525080)) (_2!26363 (tuple2!46169 lt!1525083 lt!1525080))))))

(assert (=> d!1267090 (= (+!210 lt!1525079 (tuple2!46169 lt!1525083 lt!1525080)) lt!1525186)))

(declare-fun b!4303628 () Bool)

(declare-fun res!1763938 () Bool)

(assert (=> b!4303628 (=> (not res!1763938) (not e!2675602))))

(assert (=> b!4303628 (= res!1763938 (= (getValueByKey!226 (toList!2271 lt!1525186) (_1!26363 (tuple2!46169 lt!1525083 lt!1525080))) (Some!10182 (_2!26363 (tuple2!46169 lt!1525083 lt!1525080)))))))

(declare-fun b!4303629 () Bool)

(declare-fun contains!9966 (List!48160 tuple2!46168) Bool)

(assert (=> b!4303629 (= e!2675602 (contains!9966 (toList!2271 lt!1525186) (tuple2!46169 lt!1525083 lt!1525080)))))

(assert (= (and d!1267090 res!1763939) b!4303628))

(assert (= (and b!4303628 res!1763938) b!4303629))

(declare-fun m!4896175 () Bool)

(assert (=> d!1267090 m!4896175))

(declare-fun m!4896177 () Bool)

(assert (=> d!1267090 m!4896177))

(declare-fun m!4896179 () Bool)

(assert (=> d!1267090 m!4896179))

(declare-fun m!4896181 () Bool)

(assert (=> d!1267090 m!4896181))

(declare-fun m!4896183 () Bool)

(assert (=> b!4303628 m!4896183))

(declare-fun m!4896185 () Bool)

(assert (=> b!4303629 m!4896185))

(assert (=> b!4303493 d!1267090))

(declare-fun bs!604245 () Bool)

(declare-fun d!1267092 () Bool)

(assert (= bs!604245 (and d!1267092 b!4303512)))

(declare-fun lambda!132267 () Int)

(assert (=> bs!604245 (= lambda!132267 lambda!132251)))

(declare-fun bs!604246 () Bool)

(assert (= bs!604246 (and d!1267092 b!4303493)))

(assert (=> bs!604246 (= lambda!132267 lambda!132248)))

(declare-fun bs!604247 () Bool)

(assert (= bs!604247 (and d!1267092 d!1267084)))

(assert (=> bs!604247 (= lambda!132267 lambda!132266)))

(declare-fun bs!604248 () Bool)

(assert (= bs!604248 (and d!1267092 d!1267060)))

(assert (=> bs!604248 (= lambda!132267 lambda!132256)))

(declare-fun bs!604249 () Bool)

(assert (= bs!604249 (and d!1267092 d!1267080)))

(assert (=> bs!604249 (= lambda!132267 lambda!132263)))

(declare-fun lt!1525189 () ListMap!1557)

(assert (=> d!1267092 (invariantList!555 (toList!2272 lt!1525189))))

(declare-fun e!2675603 () ListMap!1557)

(assert (=> d!1267092 (= lt!1525189 e!2675603)))

(declare-fun c!731837 () Bool)

(assert (=> d!1267092 (= c!731837 ((_ is Cons!48036) (toList!2271 lt!1525076)))))

(assert (=> d!1267092 (forall!8672 (toList!2271 lt!1525076) lambda!132267)))

(assert (=> d!1267092 (= (extractMap!292 (toList!2271 lt!1525076)) lt!1525189)))

(declare-fun b!4303630 () Bool)

(assert (=> b!4303630 (= e!2675603 (addToMapMapFromBucket!26 (_2!26363 (h!53459 (toList!2271 lt!1525076))) (extractMap!292 (t!354935 (toList!2271 lt!1525076)))))))

(declare-fun b!4303631 () Bool)

(assert (=> b!4303631 (= e!2675603 (ListMap!1558 Nil!48035))))

(assert (= (and d!1267092 c!731837) b!4303630))

(assert (= (and d!1267092 (not c!731837)) b!4303631))

(declare-fun m!4896187 () Bool)

(assert (=> d!1267092 m!4896187))

(declare-fun m!4896189 () Bool)

(assert (=> d!1267092 m!4896189))

(declare-fun m!4896191 () Bool)

(assert (=> b!4303630 m!4896191))

(assert (=> b!4303630 m!4896191))

(declare-fun m!4896193 () Bool)

(assert (=> b!4303630 m!4896193))

(assert (=> b!4303493 d!1267092))

(declare-fun bs!604250 () Bool)

(declare-fun d!1267094 () Bool)

(assert (= bs!604250 (and d!1267094 b!4303512)))

(declare-fun lambda!132270 () Int)

(assert (=> bs!604250 (not (= lambda!132270 lambda!132251))))

(declare-fun bs!604251 () Bool)

(assert (= bs!604251 (and d!1267094 b!4303493)))

(assert (=> bs!604251 (not (= lambda!132270 lambda!132248))))

(declare-fun bs!604252 () Bool)

(assert (= bs!604252 (and d!1267094 d!1267092)))

(assert (=> bs!604252 (not (= lambda!132270 lambda!132267))))

(declare-fun bs!604253 () Bool)

(assert (= bs!604253 (and d!1267094 d!1267084)))

(assert (=> bs!604253 (not (= lambda!132270 lambda!132266))))

(declare-fun bs!604254 () Bool)

(assert (= bs!604254 (and d!1267094 d!1267060)))

(assert (=> bs!604254 (not (= lambda!132270 lambda!132256))))

(declare-fun bs!604255 () Bool)

(assert (= bs!604255 (and d!1267094 d!1267080)))

(assert (=> bs!604255 (not (= lambda!132270 lambda!132263))))

(assert (=> d!1267094 true))

(assert (=> d!1267094 (allKeysSameHash!148 lt!1525077 lt!1525083 (hashF!6541 thiss!42308))))

(declare-fun lt!1525192 () Unit!67029)

(declare-fun choose!26199 (List!48160 (_ BitVec 64) List!48159 Hashable!4491) Unit!67029)

(assert (=> d!1267094 (= lt!1525192 (choose!26199 (toList!2271 lt!1525079) lt!1525083 lt!1525077 (hashF!6541 thiss!42308)))))

(assert (=> d!1267094 (forall!8672 (toList!2271 lt!1525079) lambda!132270)))

(assert (=> d!1267094 (= (lemmaInLongMapAllKeySameHashThenForTuple!139 (toList!2271 lt!1525079) lt!1525083 lt!1525077 (hashF!6541 thiss!42308)) lt!1525192)))

(declare-fun bs!604256 () Bool)

(assert (= bs!604256 d!1267094))

(assert (=> bs!604256 m!4895985))

(declare-fun m!4896195 () Bool)

(assert (=> bs!604256 m!4896195))

(declare-fun m!4896197 () Bool)

(assert (=> bs!604256 m!4896197))

(assert (=> b!4303493 d!1267094))

(declare-fun d!1267096 () Bool)

(assert (=> d!1267096 (allKeysSameHash!148 (removePairForKey!171 lt!1525077 key!2048) lt!1525083 (hashF!6541 thiss!42308))))

(declare-fun lt!1525195 () Unit!67029)

(declare-fun choose!26200 (List!48159 K!9184 (_ BitVec 64) Hashable!4491) Unit!67029)

(assert (=> d!1267096 (= lt!1525195 (choose!26200 lt!1525077 key!2048 lt!1525083 (hashF!6541 thiss!42308)))))

(assert (=> d!1267096 (noDuplicateKeys!178 lt!1525077)))

(assert (=> d!1267096 (= (lemmaRemovePairForKeyPreservesHash!134 lt!1525077 key!2048 lt!1525083 (hashF!6541 thiss!42308)) lt!1525195)))

(declare-fun bs!604257 () Bool)

(assert (= bs!604257 d!1267096))

(assert (=> bs!604257 m!4895945))

(assert (=> bs!604257 m!4895945))

(declare-fun m!4896199 () Bool)

(assert (=> bs!604257 m!4896199))

(declare-fun m!4896201 () Bool)

(assert (=> bs!604257 m!4896201))

(assert (=> bs!604257 m!4896039))

(assert (=> b!4303493 d!1267096))

(declare-fun bs!604258 () Bool)

(declare-fun b!4303662 () Bool)

(assert (= bs!604258 (and b!4303662 b!4303512)))

(declare-fun lambda!132273 () Int)

(assert (=> bs!604258 (= lambda!132273 lambda!132251)))

(declare-fun bs!604259 () Bool)

(assert (= bs!604259 (and b!4303662 d!1267094)))

(assert (=> bs!604259 (not (= lambda!132273 lambda!132270))))

(declare-fun bs!604260 () Bool)

(assert (= bs!604260 (and b!4303662 b!4303493)))

(assert (=> bs!604260 (= lambda!132273 lambda!132248)))

(declare-fun bs!604261 () Bool)

(assert (= bs!604261 (and b!4303662 d!1267092)))

(assert (=> bs!604261 (= lambda!132273 lambda!132267)))

(declare-fun bs!604262 () Bool)

(assert (= bs!604262 (and b!4303662 d!1267084)))

(assert (=> bs!604262 (= lambda!132273 lambda!132266)))

(declare-fun bs!604263 () Bool)

(assert (= bs!604263 (and b!4303662 d!1267060)))

(assert (=> bs!604263 (= lambda!132273 lambda!132256)))

(declare-fun bs!604264 () Bool)

(assert (= bs!604264 (and b!4303662 d!1267080)))

(assert (=> bs!604264 (= lambda!132273 lambda!132263)))

(declare-fun call!296766 () Bool)

(declare-fun c!731849 () Bool)

(declare-fun call!296763 () ListLongMap!879)

(declare-fun bm!296757 () Bool)

(declare-fun call!296762 () (_ BitVec 64))

(declare-fun lt!1525238 () ListLongMap!879)

(assert (=> bm!296757 (= call!296766 (contains!9962 (ite c!731849 lt!1525238 call!296763) call!296762))))

(declare-fun b!4303656 () Bool)

(declare-fun e!2675619 () Unit!67029)

(declare-fun Unit!67035 () Unit!67029)

(assert (=> b!4303656 (= e!2675619 Unit!67035)))

(declare-fun b!4303657 () Bool)

(declare-fun e!2675618 () Bool)

(declare-fun call!296765 () Bool)

(assert (=> b!4303657 (= e!2675618 call!296765)))

(declare-fun b!4303658 () Bool)

(declare-fun e!2675620 () Bool)

(assert (=> b!4303658 (= e!2675620 call!296765)))

(declare-fun lt!1525243 () (_ BitVec 64))

(declare-fun b!4303659 () Bool)

(declare-fun e!2675622 () Bool)

(declare-datatypes ((Option!10185 0))(
  ( (None!10184) (Some!10184 (v!42060 tuple2!46166)) )
))
(declare-fun isDefined!7492 (Option!10185) Bool)

(declare-fun getPair!116 (List!48159 K!9184) Option!10185)

(assert (=> b!4303659 (= e!2675622 (isDefined!7492 (getPair!116 (apply!10925 (v!42053 (underlying!9380 thiss!42308)) lt!1525243) key!2048)))))

(declare-fun b!4303660 () Bool)

(declare-fun e!2675624 () Unit!67029)

(declare-fun Unit!67036 () Unit!67029)

(assert (=> b!4303660 (= e!2675624 Unit!67036)))

(declare-fun b!4303661 () Bool)

(declare-fun e!2675621 () Unit!67029)

(declare-fun e!2675623 () Unit!67029)

(assert (=> b!4303661 (= e!2675621 e!2675623)))

(declare-fun res!1763947 () Bool)

(assert (=> b!4303661 (= res!1763947 call!296766)))

(assert (=> b!4303661 (=> (not res!1763947) (not e!2675620))))

(declare-fun c!731846 () Bool)

(assert (=> b!4303661 (= c!731846 e!2675620)))

(declare-fun forallContained!1483 (List!48160 Int tuple2!46168) Unit!67029)

(assert (=> b!4303662 (= e!2675624 (forallContained!1483 (toList!2271 (map!10003 (v!42053 (underlying!9380 thiss!42308)))) lambda!132273 (tuple2!46169 lt!1525243 (apply!10925 (v!42053 (underlying!9380 thiss!42308)) lt!1525243))))))

(declare-fun c!731847 () Bool)

(assert (=> b!4303662 (= c!731847 (not (contains!9966 (toList!2271 (map!10003 (v!42053 (underlying!9380 thiss!42308)))) (tuple2!46169 lt!1525243 (apply!10925 (v!42053 (underlying!9380 thiss!42308)) lt!1525243)))))))

(declare-fun lt!1525253 () Unit!67029)

(assert (=> b!4303662 (= lt!1525253 e!2675619)))

(declare-fun bm!296759 () Bool)

(assert (=> bm!296759 (= call!296763 (map!10003 (v!42053 (underlying!9380 thiss!42308))))))

(declare-fun d!1267098 () Bool)

(declare-fun lt!1525252 () Bool)

(assert (=> d!1267098 (= lt!1525252 (contains!9960 (map!10002 thiss!42308) key!2048))))

(assert (=> d!1267098 (= lt!1525252 e!2675622)))

(declare-fun res!1763948 () Bool)

(assert (=> d!1267098 (=> (not res!1763948) (not e!2675622))))

(assert (=> d!1267098 (= res!1763948 (contains!9963 (v!42053 (underlying!9380 thiss!42308)) lt!1525243))))

(declare-fun lt!1525236 () Unit!67029)

(assert (=> d!1267098 (= lt!1525236 e!2675621)))

(assert (=> d!1267098 (= c!731849 (contains!9960 (extractMap!292 (toList!2271 (map!10003 (v!42053 (underlying!9380 thiss!42308))))) key!2048))))

(declare-fun lt!1525249 () Unit!67029)

(assert (=> d!1267098 (= lt!1525249 e!2675624)))

(declare-fun c!731848 () Bool)

(assert (=> d!1267098 (= c!731848 (contains!9963 (v!42053 (underlying!9380 thiss!42308)) lt!1525243))))

(assert (=> d!1267098 (= lt!1525243 (hash!887 (hashF!6541 thiss!42308) key!2048))))

(assert (=> d!1267098 (valid!3558 thiss!42308)))

(assert (=> d!1267098 (= (contains!9961 thiss!42308 key!2048) lt!1525252)))

(declare-fun bm!296758 () Bool)

(assert (=> bm!296758 (= call!296762 (hash!887 (hashF!6541 thiss!42308) key!2048))))

(declare-fun b!4303663 () Bool)

(assert (=> b!4303663 false))

(declare-fun lt!1525248 () Unit!67029)

(declare-fun lt!1525237 () Unit!67029)

(assert (=> b!4303663 (= lt!1525248 lt!1525237)))

(declare-fun lt!1525255 () ListLongMap!879)

(assert (=> b!4303663 (contains!9960 (extractMap!292 (toList!2271 lt!1525255)) key!2048)))

(declare-fun lemmaInLongMapThenInGenericMap!116 (ListLongMap!879 K!9184 Hashable!4491) Unit!67029)

(assert (=> b!4303663 (= lt!1525237 (lemmaInLongMapThenInGenericMap!116 lt!1525255 key!2048 (hashF!6541 thiss!42308)))))

(assert (=> b!4303663 (= lt!1525255 call!296763)))

(declare-fun Unit!67037 () Unit!67029)

(assert (=> b!4303663 (= e!2675623 Unit!67037)))

(declare-fun b!4303664 () Bool)

(declare-fun Unit!67038 () Unit!67029)

(assert (=> b!4303664 (= e!2675623 Unit!67038)))

(declare-fun bm!296760 () Bool)

(declare-fun call!296764 () Option!10185)

(assert (=> bm!296760 (= call!296765 (isDefined!7492 call!296764))))

(declare-fun bm!296761 () Bool)

(declare-fun call!296767 () List!48159)

(declare-fun apply!10927 (ListLongMap!879 (_ BitVec 64)) List!48159)

(assert (=> bm!296761 (= call!296767 (apply!10927 (ite c!731849 lt!1525238 call!296763) call!296762))))

(declare-fun b!4303665 () Bool)

(assert (=> b!4303665 false))

(declare-fun lt!1525247 () Unit!67029)

(declare-fun lt!1525246 () Unit!67029)

(assert (=> b!4303665 (= lt!1525247 lt!1525246)))

(declare-fun lt!1525244 () List!48160)

(declare-fun lt!1525240 () List!48159)

(assert (=> b!4303665 (contains!9966 lt!1525244 (tuple2!46169 lt!1525243 lt!1525240))))

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!127 (List!48160 (_ BitVec 64) List!48159) Unit!67029)

(assert (=> b!4303665 (= lt!1525246 (lemmaGetValueByKeyImpliesContainsTuple!127 lt!1525244 lt!1525243 lt!1525240))))

(assert (=> b!4303665 (= lt!1525240 (apply!10925 (v!42053 (underlying!9380 thiss!42308)) lt!1525243))))

(assert (=> b!4303665 (= lt!1525244 (toList!2271 (map!10003 (v!42053 (underlying!9380 thiss!42308)))))))

(declare-fun lt!1525254 () Unit!67029)

(declare-fun lt!1525250 () Unit!67029)

(assert (=> b!4303665 (= lt!1525254 lt!1525250)))

(declare-fun lt!1525251 () List!48160)

(declare-fun isDefined!7493 (Option!10183) Bool)

(assert (=> b!4303665 (isDefined!7493 (getValueByKey!226 lt!1525251 lt!1525243))))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!153 (List!48160 (_ BitVec 64)) Unit!67029)

(assert (=> b!4303665 (= lt!1525250 (lemmaContainsKeyImpliesGetValueByKeyDefined!153 lt!1525251 lt!1525243))))

(assert (=> b!4303665 (= lt!1525251 (toList!2271 (map!10003 (v!42053 (underlying!9380 thiss!42308)))))))

(declare-fun lt!1525245 () Unit!67029)

(declare-fun lt!1525241 () Unit!67029)

(assert (=> b!4303665 (= lt!1525245 lt!1525241)))

(declare-fun lt!1525242 () List!48160)

(declare-fun containsKey!268 (List!48160 (_ BitVec 64)) Bool)

(assert (=> b!4303665 (containsKey!268 lt!1525242 lt!1525243)))

(declare-fun lemmaGetValueByKeyIsDefinedImpliesContainsKey!117 (List!48160 (_ BitVec 64)) Unit!67029)

(assert (=> b!4303665 (= lt!1525241 (lemmaGetValueByKeyIsDefinedImpliesContainsKey!117 lt!1525242 lt!1525243))))

(assert (=> b!4303665 (= lt!1525242 (toList!2271 (map!10003 (v!42053 (underlying!9380 thiss!42308)))))))

(declare-fun Unit!67039 () Unit!67029)

(assert (=> b!4303665 (= e!2675619 Unit!67039)))

(declare-fun b!4303666 () Bool)

(declare-fun lt!1525239 () Unit!67029)

(assert (=> b!4303666 (= e!2675621 lt!1525239)))

(assert (=> b!4303666 (= lt!1525238 call!296763)))

(declare-fun lemmaInGenericMapThenInLongMap!116 (ListLongMap!879 K!9184 Hashable!4491) Unit!67029)

(assert (=> b!4303666 (= lt!1525239 (lemmaInGenericMapThenInLongMap!116 lt!1525238 key!2048 (hashF!6541 thiss!42308)))))

(declare-fun res!1763946 () Bool)

(assert (=> b!4303666 (= res!1763946 call!296766)))

(assert (=> b!4303666 (=> (not res!1763946) (not e!2675618))))

(assert (=> b!4303666 e!2675618))

(declare-fun bm!296762 () Bool)

(assert (=> bm!296762 (= call!296764 (getPair!116 call!296767 key!2048))))

(assert (= (and d!1267098 c!731848) b!4303662))

(assert (= (and d!1267098 (not c!731848)) b!4303660))

(assert (= (and b!4303662 c!731847) b!4303665))

(assert (= (and b!4303662 (not c!731847)) b!4303656))

(assert (= (and d!1267098 c!731849) b!4303666))

(assert (= (and d!1267098 (not c!731849)) b!4303661))

(assert (= (and b!4303666 res!1763946) b!4303657))

(assert (= (and b!4303661 res!1763947) b!4303658))

(assert (= (and b!4303661 c!731846) b!4303663))

(assert (= (and b!4303661 (not c!731846)) b!4303664))

(assert (= (or b!4303666 b!4303657 b!4303661 b!4303658) bm!296758))

(assert (= (or b!4303666 b!4303661 b!4303658 b!4303663) bm!296759))

(assert (= (or b!4303666 b!4303661) bm!296757))

(assert (= (or b!4303657 b!4303658) bm!296761))

(assert (= (or b!4303657 b!4303658) bm!296762))

(assert (= (or b!4303657 b!4303658) bm!296760))

(assert (= (and d!1267098 res!1763948) b!4303659))

(assert (=> bm!296759 m!4895963))

(assert (=> d!1267098 m!4895965))

(declare-fun m!4896203 () Bool)

(assert (=> d!1267098 m!4896203))

(declare-fun m!4896205 () Bool)

(assert (=> d!1267098 m!4896205))

(declare-fun m!4896207 () Bool)

(assert (=> d!1267098 m!4896207))

(assert (=> d!1267098 m!4895951))

(assert (=> d!1267098 m!4896203))

(assert (=> d!1267098 m!4895963))

(assert (=> d!1267098 m!4895965))

(declare-fun m!4896209 () Bool)

(assert (=> d!1267098 m!4896209))

(assert (=> d!1267098 m!4895949))

(assert (=> b!4303662 m!4895963))

(declare-fun m!4896211 () Bool)

(assert (=> b!4303662 m!4896211))

(declare-fun m!4896213 () Bool)

(assert (=> b!4303662 m!4896213))

(declare-fun m!4896215 () Bool)

(assert (=> b!4303662 m!4896215))

(declare-fun m!4896217 () Bool)

(assert (=> bm!296761 m!4896217))

(assert (=> bm!296758 m!4895949))

(assert (=> b!4303659 m!4896211))

(assert (=> b!4303659 m!4896211))

(declare-fun m!4896219 () Bool)

(assert (=> b!4303659 m!4896219))

(assert (=> b!4303659 m!4896219))

(declare-fun m!4896221 () Bool)

(assert (=> b!4303659 m!4896221))

(declare-fun m!4896223 () Bool)

(assert (=> b!4303666 m!4896223))

(declare-fun m!4896225 () Bool)

(assert (=> b!4303663 m!4896225))

(assert (=> b!4303663 m!4896225))

(declare-fun m!4896227 () Bool)

(assert (=> b!4303663 m!4896227))

(declare-fun m!4896229 () Bool)

(assert (=> b!4303663 m!4896229))

(declare-fun m!4896231 () Bool)

(assert (=> bm!296760 m!4896231))

(declare-fun m!4896233 () Bool)

(assert (=> bm!296762 m!4896233))

(declare-fun m!4896235 () Bool)

(assert (=> bm!296757 m!4896235))

(declare-fun m!4896237 () Bool)

(assert (=> b!4303665 m!4896237))

(declare-fun m!4896239 () Bool)

(assert (=> b!4303665 m!4896239))

(declare-fun m!4896241 () Bool)

(assert (=> b!4303665 m!4896241))

(assert (=> b!4303665 m!4896211))

(declare-fun m!4896243 () Bool)

(assert (=> b!4303665 m!4896243))

(declare-fun m!4896245 () Bool)

(assert (=> b!4303665 m!4896245))

(assert (=> b!4303665 m!4895963))

(assert (=> b!4303665 m!4896239))

(declare-fun m!4896247 () Bool)

(assert (=> b!4303665 m!4896247))

(declare-fun m!4896249 () Bool)

(assert (=> b!4303665 m!4896249))

(assert (=> b!4303498 d!1267098))

(declare-fun d!1267100 () Bool)

(declare-fun map!10004 (LongMapFixedSize!9150) ListLongMap!879)

(assert (=> d!1267100 (= (map!10003 (v!42053 (underlying!9380 thiss!42308))) (map!10004 (v!42052 (underlying!9379 (v!42053 (underlying!9380 thiss!42308))))))))

(declare-fun bs!604265 () Bool)

(assert (= bs!604265 d!1267100))

(declare-fun m!4896251 () Bool)

(assert (=> bs!604265 m!4896251))

(assert (=> b!4303498 d!1267100))

(declare-fun d!1267102 () Bool)

(declare-fun lt!1525256 () ListMap!1557)

(assert (=> d!1267102 (invariantList!555 (toList!2272 lt!1525256))))

(assert (=> d!1267102 (= lt!1525256 (extractMap!292 (toList!2271 (map!10003 (v!42053 (underlying!9380 thiss!42308))))))))

(assert (=> d!1267102 (valid!3558 thiss!42308)))

(assert (=> d!1267102 (= (map!10002 thiss!42308) lt!1525256)))

(declare-fun bs!604266 () Bool)

(assert (= bs!604266 d!1267102))

(declare-fun m!4896253 () Bool)

(assert (=> bs!604266 m!4896253))

(assert (=> bs!604266 m!4895963))

(assert (=> bs!604266 m!4896203))

(assert (=> bs!604266 m!4895951))

(assert (=> b!4303498 d!1267102))

(declare-fun bs!604267 () Bool)

(declare-fun d!1267104 () Bool)

(assert (= bs!604267 (and d!1267104 b!4303512)))

(declare-fun lambda!132276 () Int)

(assert (=> bs!604267 (not (= lambda!132276 lambda!132251))))

(declare-fun bs!604268 () Bool)

(assert (= bs!604268 (and d!1267104 d!1267094)))

(assert (=> bs!604268 (= lambda!132276 lambda!132270)))

(declare-fun bs!604269 () Bool)

(assert (= bs!604269 (and d!1267104 b!4303493)))

(assert (=> bs!604269 (not (= lambda!132276 lambda!132248))))

(declare-fun bs!604270 () Bool)

(assert (= bs!604270 (and d!1267104 d!1267092)))

(assert (=> bs!604270 (not (= lambda!132276 lambda!132267))))

(declare-fun bs!604271 () Bool)

(assert (= bs!604271 (and d!1267104 b!4303662)))

(assert (=> bs!604271 (not (= lambda!132276 lambda!132273))))

(declare-fun bs!604272 () Bool)

(assert (= bs!604272 (and d!1267104 d!1267084)))

(assert (=> bs!604272 (not (= lambda!132276 lambda!132266))))

(declare-fun bs!604273 () Bool)

(assert (= bs!604273 (and d!1267104 d!1267060)))

(assert (=> bs!604273 (not (= lambda!132276 lambda!132256))))

(declare-fun bs!604274 () Bool)

(assert (= bs!604274 (and d!1267104 d!1267080)))

(assert (=> bs!604274 (not (= lambda!132276 lambda!132263))))

(assert (=> d!1267104 true))

(assert (=> d!1267104 (= (allKeysSameHashInMap!295 lt!1525076 (hashF!6541 thiss!42308)) (forall!8672 (toList!2271 lt!1525076) lambda!132276))))

(declare-fun bs!604275 () Bool)

(assert (= bs!604275 d!1267104))

(declare-fun m!4896255 () Bool)

(assert (=> bs!604275 m!4896255))

(assert (=> b!4303488 d!1267104))

(declare-fun d!1267106 () Bool)

(declare-fun res!1763953 () Bool)

(declare-fun e!2675629 () Bool)

(assert (=> d!1267106 (=> res!1763953 e!2675629)))

(assert (=> d!1267106 (= res!1763953 (and ((_ is Cons!48035) lt!1525078) (= (_1!26362 (h!53458 lt!1525078)) key!2048)))))

(assert (=> d!1267106 (= (containsKey!266 lt!1525078 key!2048) e!2675629)))

(declare-fun b!4303671 () Bool)

(declare-fun e!2675630 () Bool)

(assert (=> b!4303671 (= e!2675629 e!2675630)))

(declare-fun res!1763954 () Bool)

(assert (=> b!4303671 (=> (not res!1763954) (not e!2675630))))

(assert (=> b!4303671 (= res!1763954 ((_ is Cons!48035) lt!1525078))))

(declare-fun b!4303672 () Bool)

(assert (=> b!4303672 (= e!2675630 (containsKey!266 (t!354934 lt!1525078) key!2048))))

(assert (= (and d!1267106 (not res!1763953)) b!4303671))

(assert (= (and b!4303671 res!1763954) b!4303672))

(declare-fun m!4896257 () Bool)

(assert (=> b!4303672 m!4896257))

(assert (=> b!4303497 d!1267106))

(declare-fun d!1267108 () Bool)

(declare-fun valid!3560 (LongMapFixedSize!9150) Bool)

(assert (=> d!1267108 (= (valid!3559 (_2!26364 lt!1525082)) (valid!3560 (v!42052 (underlying!9379 (_2!26364 lt!1525082)))))))

(declare-fun bs!604276 () Bool)

(assert (= bs!604276 d!1267108))

(declare-fun m!4896259 () Bool)

(assert (=> bs!604276 m!4896259))

(assert (=> b!4303501 d!1267108))

(declare-fun tp!1322432 () Bool)

(declare-fun b!4303677 () Bool)

(declare-fun e!2675633 () Bool)

(assert (=> b!4303677 (= e!2675633 (and tp_is_empty!23441 tp_is_empty!23439 tp!1322432))))

(assert (=> b!4303489 (= tp!1322429 e!2675633)))

(assert (= (and b!4303489 ((_ is Cons!48035) mapDefault!20506)) b!4303677))

(declare-fun tp!1322433 () Bool)

(declare-fun b!4303678 () Bool)

(declare-fun e!2675634 () Bool)

(assert (=> b!4303678 (= e!2675634 (and tp_is_empty!23441 tp_is_empty!23439 tp!1322433))))

(assert (=> b!4303494 (= tp!1322427 e!2675634)))

(assert (= (and b!4303494 ((_ is Cons!48035) (zeroValue!4834 (v!42052 (underlying!9379 (v!42053 (underlying!9380 thiss!42308))))))) b!4303678))

(declare-fun b!4303679 () Bool)

(declare-fun tp!1322434 () Bool)

(declare-fun e!2675635 () Bool)

(assert (=> b!4303679 (= e!2675635 (and tp_is_empty!23441 tp_is_empty!23439 tp!1322434))))

(assert (=> b!4303494 (= tp!1322425 e!2675635)))

(assert (= (and b!4303494 ((_ is Cons!48035) (minValue!4834 (v!42052 (underlying!9379 (v!42053 (underlying!9380 thiss!42308))))))) b!4303679))

(declare-fun condMapEmpty!20509 () Bool)

(declare-fun mapDefault!20509 () List!48159)

(assert (=> mapNonEmpty!20506 (= condMapEmpty!20509 (= mapRest!20506 ((as const (Array (_ BitVec 32) List!48159)) mapDefault!20509)))))

(declare-fun e!2675640 () Bool)

(declare-fun mapRes!20509 () Bool)

(assert (=> mapNonEmpty!20506 (= tp!1322423 (and e!2675640 mapRes!20509))))

(declare-fun mapIsEmpty!20509 () Bool)

(assert (=> mapIsEmpty!20509 mapRes!20509))

(declare-fun tp!1322443 () Bool)

(declare-fun b!4303687 () Bool)

(assert (=> b!4303687 (= e!2675640 (and tp_is_empty!23441 tp_is_empty!23439 tp!1322443))))

(declare-fun mapNonEmpty!20509 () Bool)

(declare-fun tp!1322441 () Bool)

(declare-fun e!2675641 () Bool)

(assert (=> mapNonEmpty!20509 (= mapRes!20509 (and tp!1322441 e!2675641))))

(declare-fun mapKey!20509 () (_ BitVec 32))

(declare-fun mapRest!20509 () (Array (_ BitVec 32) List!48159))

(declare-fun mapValue!20509 () List!48159)

(assert (=> mapNonEmpty!20509 (= mapRest!20506 (store mapRest!20509 mapKey!20509 mapValue!20509))))

(declare-fun tp!1322442 () Bool)

(declare-fun b!4303686 () Bool)

(assert (=> b!4303686 (= e!2675641 (and tp_is_empty!23441 tp_is_empty!23439 tp!1322442))))

(assert (= (and mapNonEmpty!20506 condMapEmpty!20509) mapIsEmpty!20509))

(assert (= (and mapNonEmpty!20506 (not condMapEmpty!20509)) mapNonEmpty!20509))

(assert (= (and mapNonEmpty!20509 ((_ is Cons!48035) mapValue!20509)) b!4303686))

(assert (= (and mapNonEmpty!20506 ((_ is Cons!48035) mapDefault!20509)) b!4303687))

(declare-fun m!4896261 () Bool)

(assert (=> mapNonEmpty!20509 m!4896261))

(declare-fun tp!1322444 () Bool)

(declare-fun e!2675642 () Bool)

(declare-fun b!4303688 () Bool)

(assert (=> b!4303688 (= e!2675642 (and tp_is_empty!23441 tp_is_empty!23439 tp!1322444))))

(assert (=> mapNonEmpty!20506 (= tp!1322428 e!2675642)))

(assert (= (and mapNonEmpty!20506 ((_ is Cons!48035) mapValue!20506)) b!4303688))

(declare-fun b_lambda!126463 () Bool)

(assert (= b_lambda!126459 (or (and b!4303494 b_free!128259) b_lambda!126463)))

(declare-fun b_lambda!126465 () Bool)

(assert (= b_lambda!126461 (or b!4303493 b_lambda!126465)))

(declare-fun bs!604277 () Bool)

(declare-fun d!1267110 () Bool)

(assert (= bs!604277 (and d!1267110 b!4303493)))

(assert (=> bs!604277 (= (dynLambda!20387 lambda!132248 (h!53459 (toList!2271 lt!1525076))) (noDuplicateKeys!178 (_2!26363 (h!53459 (toList!2271 lt!1525076)))))))

(declare-fun m!4896263 () Bool)

(assert (=> bs!604277 m!4896263))

(assert (=> b!4303576 d!1267110))

(check-sat (not d!1267094) (not b!4303608) (not d!1267064) (not d!1267056) (not d!1267086) (not b_next!128963) (not b!4303666) (not b!4303534) (not d!1267100) (not b!4303687) (not bm!296761) (not d!1267092) (not b!4303663) (not d!1267098) (not d!1267108) (not b!4303622) (not d!1267080) (not d!1267102) (not d!1267084) (not d!1267060) (not d!1267046) (not b!4303598) (not b!4303629) (not d!1267088) b_and!339651 (not d!1267052) (not b!4303662) (not b!4303606) (not b_lambda!126465) (not b!4303605) (not tb!257261) (not b!4303628) (not d!1267090) (not b!4303617) (not b!4303551) (not b!4303678) (not bm!296739) (not b!4303506) (not b!4303679) (not mapNonEmpty!20509) (not b!4303507) (not bm!296744) (not b!4303688) (not b!4303672) (not d!1267076) (not b!4303601) (not b!4303603) (not d!1267104) (not b!4303538) (not b!4303567) (not b!4303665) (not bm!296758) (not b!4303577) (not b!4303535) (not d!1267078) (not d!1267062) (not d!1267082) (not bm!296740) (not bs!604277) (not b!4303566) (not b!4303599) (not bm!296762) (not b!4303557) (not b_next!128965) (not d!1267074) (not d!1267070) (not d!1267096) (not bm!296757) (not b!4303597) (not b!4303619) (not b!4303618) (not b!4303613) b_and!339653 tp_is_empty!23441 (not b!4303600) (not d!1267054) (not d!1267058) (not b!4303539) (not b!4303677) (not b!4303512) (not b!4303630) (not b!4303607) (not b!4303616) (not d!1267068) (not bm!296759) (not bm!296743) (not b!4303536) (not b!4303604) (not bm!296760) (not b!4303561) (not b!4303659) (not b!4303623) (not b!4303620) tp_is_empty!23439 (not b!4303513) (not b!4303686) (not b_lambda!126463))
(check-sat b_and!339653 b_and!339651 (not b_next!128965) (not b_next!128963))
