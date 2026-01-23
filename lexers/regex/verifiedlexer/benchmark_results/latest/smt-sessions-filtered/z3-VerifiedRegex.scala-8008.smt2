; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!414844 () Bool)

(assert start!414844)

(declare-fun b!4314038 () Bool)

(declare-fun b_free!128747 () Bool)

(declare-fun b_next!129451 () Bool)

(assert (=> b!4314038 (= b_free!128747 (not b_next!129451))))

(declare-fun tp!1325456 () Bool)

(declare-fun b_and!340215 () Bool)

(assert (=> b!4314038 (= tp!1325456 b_and!340215)))

(declare-fun b!4314035 () Bool)

(declare-fun b_free!128749 () Bool)

(declare-fun b_next!129453 () Bool)

(assert (=> b!4314035 (= b_free!128749 (not b_next!129453))))

(declare-fun tp!1325454 () Bool)

(declare-fun b_and!340217 () Bool)

(assert (=> b!4314035 (= tp!1325454 b_and!340217)))

(declare-fun mapNonEmpty!20962 () Bool)

(declare-fun mapRes!20962 () Bool)

(declare-fun tp!1325451 () Bool)

(declare-fun tp!1325455 () Bool)

(assert (=> mapNonEmpty!20962 (= mapRes!20962 (and tp!1325451 tp!1325455))))

(declare-datatypes ((K!9489 0))(
  ( (K!9490 (val!15849 Int)) )
))
(declare-datatypes ((V!9691 0))(
  ( (V!9692 (val!15850 Int)) )
))
(declare-datatypes ((tuple2!46850 0))(
  ( (tuple2!46851 (_1!26707 K!9489) (_2!26707 V!9691)) )
))
(declare-datatypes ((List!48390 0))(
  ( (Nil!48266) (Cons!48266 (h!53713 tuple2!46850) (t!355225 List!48390)) )
))
(declare-fun mapValue!20962 () List!48390)

(declare-fun mapKey!20962 () (_ BitVec 32))

(declare-fun mapRest!20962 () (Array (_ BitVec 32) List!48390))

(declare-datatypes ((array!16974 0))(
  ( (array!16975 (arr!7579 (Array (_ BitVec 32) (_ BitVec 64))) (size!35618 (_ BitVec 32))) )
))
(declare-datatypes ((Hashable!4613 0))(
  ( (HashableExt!4612 (__x!30116 Int)) )
))
(declare-datatypes ((array!16976 0))(
  ( (array!16977 (arr!7580 (Array (_ BitVec 32) List!48390)) (size!35619 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!9394 0))(
  ( (LongMapFixedSize!9395 (defaultEntry!5082 Int) (mask!13274 (_ BitVec 32)) (extraKeys!4946 (_ BitVec 32)) (zeroValue!4956 List!48390) (minValue!4956 List!48390) (_size!9437 (_ BitVec 32)) (_keys!4997 array!16974) (_values!4978 array!16976) (_vacant!4758 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!18597 0))(
  ( (Cell!18598 (v!42497 LongMapFixedSize!9394)) )
))
(declare-datatypes ((MutLongMap!4697 0))(
  ( (LongMap!4697 (underlying!9623 Cell!18597)) (MutLongMapExt!4696 (__x!30117 Int)) )
))
(declare-datatypes ((Cell!18599 0))(
  ( (Cell!18600 (v!42498 MutLongMap!4697)) )
))
(declare-datatypes ((MutableMap!4603 0))(
  ( (MutableMapExt!4602 (__x!30118 Int)) (HashMap!4603 (underlying!9624 Cell!18599) (hashF!6789 Hashable!4613) (_size!9438 (_ BitVec 32)) (defaultValue!4774 Int)) )
))
(declare-fun thiss!42308 () MutableMap!4603)

(assert (=> mapNonEmpty!20962 (= (arr!7580 (_values!4978 (v!42497 (underlying!9623 (v!42498 (underlying!9624 thiss!42308)))))) (store mapRest!20962 mapKey!20962 mapValue!20962))))

(declare-fun e!2683381 () Bool)

(declare-fun e!2683379 () Bool)

(assert (=> b!4314035 (= e!2683381 (and e!2683379 tp!1325454))))

(declare-fun b!4314036 () Bool)

(declare-fun e!2683380 () Bool)

(declare-fun e!2683384 () Bool)

(assert (=> b!4314036 (= e!2683380 e!2683384)))

(declare-fun mapIsEmpty!20962 () Bool)

(assert (=> mapIsEmpty!20962 mapRes!20962))

(declare-fun b!4314037 () Bool)

(declare-fun e!2683376 () Bool)

(assert (=> b!4314037 (= e!2683376 e!2683380)))

(declare-fun e!2683372 () Bool)

(declare-fun tp!1325453 () Bool)

(declare-fun tp!1325450 () Bool)

(declare-fun array_inv!5447 (array!16974) Bool)

(declare-fun array_inv!5448 (array!16976) Bool)

(assert (=> b!4314038 (= e!2683384 (and tp!1325456 tp!1325453 tp!1325450 (array_inv!5447 (_keys!4997 (v!42497 (underlying!9623 (v!42498 (underlying!9624 thiss!42308)))))) (array_inv!5448 (_values!4978 (v!42497 (underlying!9623 (v!42498 (underlying!9624 thiss!42308)))))) e!2683372))))

(declare-fun b!4314039 () Bool)

(declare-fun res!1768169 () Bool)

(declare-fun e!2683375 () Bool)

(assert (=> b!4314039 (=> res!1768169 e!2683375)))

(declare-datatypes ((tuple2!46852 0))(
  ( (tuple2!46853 (_1!26708 (_ BitVec 64)) (_2!26708 List!48390)) )
))
(declare-datatypes ((List!48391 0))(
  ( (Nil!48267) (Cons!48267 (h!53714 tuple2!46852) (t!355226 List!48391)) )
))
(declare-datatypes ((ListLongMap!1077 0))(
  ( (ListLongMap!1078 (toList!2464 List!48391)) )
))
(declare-fun lt!1533620 () ListLongMap!1077)

(declare-fun allKeysSameHashInMap!358 (ListLongMap!1077 Hashable!4613) Bool)

(assert (=> b!4314039 (= res!1768169 (not (allKeysSameHashInMap!358 lt!1533620 (hashF!6789 thiss!42308))))))

(declare-fun b!4314040 () Bool)

(declare-fun e!2683382 () Bool)

(declare-fun lt!1533617 () ListLongMap!1077)

(assert (=> b!4314040 (= e!2683382 (allKeysSameHashInMap!358 lt!1533617 (hashF!6789 thiss!42308)))))

(declare-fun b!4314041 () Bool)

(declare-fun res!1768164 () Bool)

(assert (=> b!4314041 (=> res!1768164 e!2683375)))

(declare-fun lt!1533618 () (_ BitVec 64))

(declare-fun contains!10260 (ListLongMap!1077 (_ BitVec 64)) Bool)

(assert (=> b!4314041 (= res!1768164 (not (contains!10260 lt!1533620 lt!1533618)))))

(declare-fun res!1768160 () Bool)

(declare-fun e!2683378 () Bool)

(assert (=> start!414844 (=> (not res!1768160) (not e!2683378))))

(get-info :version)

(assert (=> start!414844 (= res!1768160 ((_ is HashMap!4603) thiss!42308))))

(assert (=> start!414844 e!2683378))

(assert (=> start!414844 e!2683381))

(declare-fun tp_is_empty!23893 () Bool)

(assert (=> start!414844 tp_is_empty!23893))

(declare-fun tp_is_empty!23895 () Bool)

(assert (=> start!414844 tp_is_empty!23895))

(declare-fun b!4314042 () Bool)

(declare-fun res!1768166 () Bool)

(assert (=> b!4314042 (=> res!1768166 e!2683375)))

(declare-fun key!2048 () K!9489)

(declare-datatypes ((ListMap!1745 0))(
  ( (ListMap!1746 (toList!2465 List!48390)) )
))
(declare-fun contains!10261 (ListMap!1745 K!9489) Bool)

(declare-fun extractMap!343 (List!48391) ListMap!1745)

(assert (=> b!4314042 (= res!1768166 (not (contains!10261 (extractMap!343 (toList!2464 lt!1533620)) key!2048)))))

(declare-fun b!4314043 () Bool)

(declare-fun res!1768165 () Bool)

(assert (=> b!4314043 (=> res!1768165 e!2683375)))

(declare-fun lt!1533628 () List!48390)

(declare-fun allKeysSameHash!211 (List!48390 (_ BitVec 64) Hashable!4613) Bool)

(assert (=> b!4314043 (= res!1768165 (not (allKeysSameHash!211 lt!1533628 lt!1533618 (hashF!6789 thiss!42308))))))

(declare-fun b!4314044 () Bool)

(declare-fun res!1768161 () Bool)

(assert (=> b!4314044 (=> (not res!1768161) (not e!2683378))))

(declare-fun valid!3695 (MutableMap!4603) Bool)

(assert (=> b!4314044 (= res!1768161 (valid!3695 thiss!42308))))

(declare-fun b!4314045 () Bool)

(declare-fun e!2683373 () Bool)

(declare-fun noDuplicateKeys!238 (List!48390) Bool)

(assert (=> b!4314045 (= e!2683373 (noDuplicateKeys!238 lt!1533628))))

(declare-fun b!4314046 () Bool)

(declare-fun e!2683383 () Bool)

(assert (=> b!4314046 (= e!2683378 e!2683383)))

(declare-fun res!1768159 () Bool)

(assert (=> b!4314046 (=> (not res!1768159) (not e!2683383))))

(declare-fun contains!10262 (MutableMap!4603 K!9489) Bool)

(assert (=> b!4314046 (= res!1768159 (contains!10262 thiss!42308 key!2048))))

(declare-fun map!10274 (MutLongMap!4697) ListLongMap!1077)

(assert (=> b!4314046 (= lt!1533620 (map!10274 (v!42498 (underlying!9624 thiss!42308))))))

(declare-fun lt!1533629 () ListMap!1745)

(declare-fun map!10275 (MutableMap!4603) ListMap!1745)

(assert (=> b!4314046 (= lt!1533629 (map!10275 thiss!42308))))

(declare-fun b!4314047 () Bool)

(declare-fun lt!1533619 () MutLongMap!4697)

(assert (=> b!4314047 (= e!2683379 (and e!2683376 ((_ is LongMap!4697) lt!1533619)))))

(assert (=> b!4314047 (= lt!1533619 (v!42498 (underlying!9624 thiss!42308)))))

(declare-fun b!4314048 () Bool)

(declare-fun tp!1325452 () Bool)

(assert (=> b!4314048 (= e!2683372 (and tp!1325452 mapRes!20962))))

(declare-fun condMapEmpty!20962 () Bool)

(declare-fun mapDefault!20962 () List!48390)

(assert (=> b!4314048 (= condMapEmpty!20962 (= (arr!7580 (_values!4978 (v!42497 (underlying!9623 (v!42498 (underlying!9624 thiss!42308)))))) ((as const (Array (_ BitVec 32) List!48390)) mapDefault!20962)))))

(declare-fun b!4314049 () Bool)

(declare-fun res!1768168 () Bool)

(assert (=> b!4314049 (=> (not res!1768168) (not e!2683373))))

(declare-fun lt!1533621 () List!48390)

(declare-fun containsKey!351 (List!48390 K!9489) Bool)

(assert (=> b!4314049 (= res!1768168 (not (containsKey!351 lt!1533621 key!2048)))))

(declare-fun b!4314050 () Bool)

(declare-fun e!2683377 () Bool)

(assert (=> b!4314050 (= e!2683377 (not e!2683375))))

(declare-fun res!1768163 () Bool)

(assert (=> b!4314050 (=> res!1768163 e!2683375)))

(declare-fun lambda!133257 () Int)

(declare-fun forall!8764 (List!48391 Int) Bool)

(assert (=> b!4314050 (= res!1768163 (not (forall!8764 (toList!2464 lt!1533620) lambda!133257)))))

(assert (=> b!4314050 e!2683382))

(declare-fun res!1768158 () Bool)

(assert (=> b!4314050 (=> (not res!1768158) (not e!2683382))))

(assert (=> b!4314050 (= res!1768158 (forall!8764 (toList!2464 lt!1533617) lambda!133257))))

(declare-fun +!288 (ListLongMap!1077 tuple2!46852) ListLongMap!1077)

(assert (=> b!4314050 (= lt!1533617 (+!288 lt!1533620 (tuple2!46853 lt!1533618 lt!1533628)))))

(declare-datatypes ((Unit!67452 0))(
  ( (Unit!67453) )
))
(declare-fun lt!1533626 () Unit!67452)

(declare-fun lemmaChangeOneBucketByAValidOnePreservesForallNoDuplicatesAndHash!160 (ListLongMap!1077 (_ BitVec 64) List!48390 Hashable!4613) Unit!67452)

(assert (=> b!4314050 (= lt!1533626 (lemmaChangeOneBucketByAValidOnePreservesForallNoDuplicatesAndHash!160 lt!1533620 lt!1533618 lt!1533628 (hashF!6789 thiss!42308)))))

(assert (=> b!4314050 e!2683373))

(declare-fun res!1768167 () Bool)

(assert (=> b!4314050 (=> (not res!1768167) (not e!2683373))))

(assert (=> b!4314050 (= res!1768167 (noDuplicateKeys!238 lt!1533621))))

(declare-fun lt!1533625 () Unit!67452)

(declare-fun lt!1533615 () List!48390)

(declare-fun lemmaRemovePairForKeyPreservesNoDuplicateKeys!186 (List!48390 K!9489) Unit!67452)

(assert (=> b!4314050 (= lt!1533625 (lemmaRemovePairForKeyPreservesNoDuplicateKeys!186 lt!1533615 key!2048))))

(assert (=> b!4314050 (allKeysSameHash!211 lt!1533621 lt!1533618 (hashF!6789 thiss!42308))))

(declare-fun lt!1533622 () Unit!67452)

(declare-fun lemmaRemovePairForKeyPreservesHash!191 (List!48390 K!9489 (_ BitVec 64) Hashable!4613) Unit!67452)

(assert (=> b!4314050 (= lt!1533622 (lemmaRemovePairForKeyPreservesHash!191 lt!1533615 key!2048 lt!1533618 (hashF!6789 thiss!42308)))))

(assert (=> b!4314050 (allKeysSameHash!211 lt!1533615 lt!1533618 (hashF!6789 thiss!42308))))

(declare-fun lt!1533623 () Unit!67452)

(declare-fun lemmaInLongMapAllKeySameHashThenForTuple!198 (List!48391 (_ BitVec 64) List!48390 Hashable!4613) Unit!67452)

(assert (=> b!4314050 (= lt!1533623 (lemmaInLongMapAllKeySameHashThenForTuple!198 (toList!2464 lt!1533620) lt!1533618 lt!1533615 (hashF!6789 thiss!42308)))))

(declare-fun b!4314051 () Bool)

(assert (=> b!4314051 (= e!2683383 e!2683377)))

(declare-fun res!1768162 () Bool)

(assert (=> b!4314051 (=> (not res!1768162) (not e!2683377))))

(declare-datatypes ((tuple2!46854 0))(
  ( (tuple2!46855 (_1!26709 Bool) (_2!26709 MutLongMap!4697)) )
))
(declare-fun update!473 (MutLongMap!4697 (_ BitVec 64) List!48390) tuple2!46854)

(assert (=> b!4314051 (= res!1768162 (_1!26709 (update!473 (v!42498 (underlying!9624 thiss!42308)) lt!1533618 lt!1533628)))))

(declare-fun v!9179 () V!9691)

(assert (=> b!4314051 (= lt!1533628 (Cons!48266 (tuple2!46851 key!2048 v!9179) lt!1533621))))

(declare-fun removePairForKey!237 (List!48390 K!9489) List!48390)

(assert (=> b!4314051 (= lt!1533621 (removePairForKey!237 lt!1533615 key!2048))))

(declare-fun apply!11064 (MutLongMap!4697 (_ BitVec 64)) List!48390)

(assert (=> b!4314051 (= lt!1533615 (apply!11064 (v!42498 (underlying!9624 thiss!42308)) lt!1533618))))

(declare-fun hash!1076 (Hashable!4613 K!9489) (_ BitVec 64))

(assert (=> b!4314051 (= lt!1533618 (hash!1076 (hashF!6789 thiss!42308) key!2048))))

(declare-fun lt!1533630 () List!48390)

(declare-fun b!4314052 () Bool)

(assert (=> b!4314052 (= e!2683375 (= lt!1533621 (removePairForKey!237 lt!1533630 key!2048)))))

(declare-fun lt!1533624 () Unit!67452)

(declare-fun lt!1533627 () tuple2!46852)

(declare-fun forallContained!1512 (List!48391 Int tuple2!46852) Unit!67452)

(assert (=> b!4314052 (= lt!1533624 (forallContained!1512 (toList!2464 lt!1533620) lambda!133257 lt!1533627))))

(declare-fun contains!10263 (List!48391 tuple2!46852) Bool)

(assert (=> b!4314052 (contains!10263 (toList!2464 lt!1533620) lt!1533627)))

(assert (=> b!4314052 (= lt!1533627 (tuple2!46853 lt!1533618 lt!1533630))))

(declare-fun lt!1533616 () Unit!67452)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!156 (List!48391 (_ BitVec 64) List!48390) Unit!67452)

(assert (=> b!4314052 (= lt!1533616 (lemmaGetValueByKeyImpliesContainsTuple!156 (toList!2464 lt!1533620) lt!1533618 lt!1533630))))

(declare-fun apply!11065 (ListLongMap!1077 (_ BitVec 64)) List!48390)

(assert (=> b!4314052 (= lt!1533630 (apply!11065 lt!1533620 lt!1533618))))

(assert (= (and start!414844 res!1768160) b!4314044))

(assert (= (and b!4314044 res!1768161) b!4314046))

(assert (= (and b!4314046 res!1768159) b!4314051))

(assert (= (and b!4314051 res!1768162) b!4314050))

(assert (= (and b!4314050 res!1768167) b!4314049))

(assert (= (and b!4314049 res!1768168) b!4314045))

(assert (= (and b!4314050 res!1768158) b!4314040))

(assert (= (and b!4314050 (not res!1768163)) b!4314039))

(assert (= (and b!4314039 (not res!1768169)) b!4314043))

(assert (= (and b!4314043 (not res!1768165)) b!4314042))

(assert (= (and b!4314042 (not res!1768166)) b!4314041))

(assert (= (and b!4314041 (not res!1768164)) b!4314052))

(assert (= (and b!4314048 condMapEmpty!20962) mapIsEmpty!20962))

(assert (= (and b!4314048 (not condMapEmpty!20962)) mapNonEmpty!20962))

(assert (= b!4314038 b!4314048))

(assert (= b!4314036 b!4314038))

(assert (= b!4314037 b!4314036))

(assert (= (and b!4314047 ((_ is LongMap!4697) (v!42498 (underlying!9624 thiss!42308)))) b!4314037))

(assert (= b!4314035 b!4314047))

(assert (= (and start!414844 ((_ is HashMap!4603) thiss!42308)) b!4314035))

(declare-fun m!4907199 () Bool)

(assert (=> b!4314043 m!4907199))

(declare-fun m!4907201 () Bool)

(assert (=> b!4314039 m!4907201))

(declare-fun m!4907203 () Bool)

(assert (=> b!4314049 m!4907203))

(declare-fun m!4907205 () Bool)

(assert (=> b!4314038 m!4907205))

(declare-fun m!4907207 () Bool)

(assert (=> b!4314038 m!4907207))

(declare-fun m!4907209 () Bool)

(assert (=> b!4314051 m!4907209))

(declare-fun m!4907211 () Bool)

(assert (=> b!4314051 m!4907211))

(declare-fun m!4907213 () Bool)

(assert (=> b!4314051 m!4907213))

(declare-fun m!4907215 () Bool)

(assert (=> b!4314051 m!4907215))

(declare-fun m!4907217 () Bool)

(assert (=> b!4314042 m!4907217))

(assert (=> b!4314042 m!4907217))

(declare-fun m!4907219 () Bool)

(assert (=> b!4314042 m!4907219))

(declare-fun m!4907221 () Bool)

(assert (=> mapNonEmpty!20962 m!4907221))

(declare-fun m!4907223 () Bool)

(assert (=> b!4314041 m!4907223))

(declare-fun m!4907225 () Bool)

(assert (=> b!4314050 m!4907225))

(declare-fun m!4907227 () Bool)

(assert (=> b!4314050 m!4907227))

(declare-fun m!4907229 () Bool)

(assert (=> b!4314050 m!4907229))

(declare-fun m!4907231 () Bool)

(assert (=> b!4314050 m!4907231))

(declare-fun m!4907233 () Bool)

(assert (=> b!4314050 m!4907233))

(declare-fun m!4907235 () Bool)

(assert (=> b!4314050 m!4907235))

(declare-fun m!4907237 () Bool)

(assert (=> b!4314050 m!4907237))

(declare-fun m!4907239 () Bool)

(assert (=> b!4314050 m!4907239))

(declare-fun m!4907241 () Bool)

(assert (=> b!4314050 m!4907241))

(declare-fun m!4907243 () Bool)

(assert (=> b!4314050 m!4907243))

(declare-fun m!4907245 () Bool)

(assert (=> b!4314040 m!4907245))

(declare-fun m!4907247 () Bool)

(assert (=> b!4314046 m!4907247))

(declare-fun m!4907249 () Bool)

(assert (=> b!4314046 m!4907249))

(declare-fun m!4907251 () Bool)

(assert (=> b!4314046 m!4907251))

(declare-fun m!4907253 () Bool)

(assert (=> b!4314045 m!4907253))

(declare-fun m!4907255 () Bool)

(assert (=> b!4314044 m!4907255))

(declare-fun m!4907257 () Bool)

(assert (=> b!4314052 m!4907257))

(declare-fun m!4907259 () Bool)

(assert (=> b!4314052 m!4907259))

(declare-fun m!4907261 () Bool)

(assert (=> b!4314052 m!4907261))

(declare-fun m!4907263 () Bool)

(assert (=> b!4314052 m!4907263))

(declare-fun m!4907265 () Bool)

(assert (=> b!4314052 m!4907265))

(check-sat (not b!4314048) (not b!4314038) (not mapNonEmpty!20962) (not b!4314045) (not b!4314051) (not b!4314049) b_and!340217 (not b!4314042) (not b_next!129453) b_and!340215 tp_is_empty!23893 (not b!4314052) (not b!4314040) (not b!4314043) tp_is_empty!23895 (not b!4314046) (not b!4314041) (not b!4314044) (not b!4314039) (not b_next!129451) (not b!4314050))
(check-sat b_and!340215 b_and!340217 (not b_next!129453) (not b_next!129451))
(get-model)

(declare-fun b!4314071 () Bool)

(declare-fun e!2683399 () tuple2!46854)

(assert (=> b!4314071 (= e!2683399 (tuple2!46855 true (v!42498 (underlying!9624 thiss!42308))))))

(declare-fun call!298432 () ListLongMap!1077)

(declare-fun e!2683397 () Bool)

(declare-fun call!298433 () ListLongMap!1077)

(declare-fun b!4314072 () Bool)

(assert (=> b!4314072 (= e!2683397 (= call!298433 (+!288 call!298432 (tuple2!46853 lt!1533618 lt!1533628))))))

(declare-fun b!4314073 () Bool)

(declare-fun res!1768178 () Bool)

(declare-fun e!2683395 () Bool)

(assert (=> b!4314073 (=> (not res!1768178) (not e!2683395))))

(declare-fun lt!1533641 () tuple2!46854)

(declare-fun valid!3696 (MutLongMap!4697) Bool)

(assert (=> b!4314073 (= res!1768178 (valid!3696 (_2!26709 lt!1533641)))))

(declare-fun bm!298427 () Bool)

(assert (=> bm!298427 (= call!298432 (map!10274 (v!42498 (underlying!9624 thiss!42308))))))

(declare-fun b!4314074 () Bool)

(declare-fun e!2683396 () Bool)

(assert (=> b!4314074 (= e!2683396 (= call!298433 call!298432))))

(declare-fun bm!298428 () Bool)

(assert (=> bm!298428 (= call!298433 (map!10274 (_2!26709 lt!1533641)))))

(declare-fun d!1268879 () Bool)

(assert (=> d!1268879 e!2683395))

(declare-fun res!1768177 () Bool)

(assert (=> d!1268879 (=> (not res!1768177) (not e!2683395))))

(assert (=> d!1268879 (= res!1768177 ((_ is LongMap!4697) (_2!26709 lt!1533641)))))

(declare-fun e!2683398 () tuple2!46854)

(assert (=> d!1268879 (= lt!1533641 e!2683398)))

(declare-fun c!733459 () Bool)

(declare-fun lt!1533639 () tuple2!46854)

(assert (=> d!1268879 (= c!733459 (_1!26709 lt!1533639))))

(assert (=> d!1268879 (= lt!1533639 e!2683399)))

(declare-fun c!733458 () Bool)

(declare-fun imbalanced!63 (MutLongMap!4697) Bool)

(assert (=> d!1268879 (= c!733458 (imbalanced!63 (v!42498 (underlying!9624 thiss!42308))))))

(assert (=> d!1268879 (valid!3696 (v!42498 (underlying!9624 thiss!42308)))))

(assert (=> d!1268879 (= (update!473 (v!42498 (underlying!9624 thiss!42308)) lt!1533618 lt!1533628) lt!1533641)))

(declare-fun b!4314075 () Bool)

(assert (=> b!4314075 (= e!2683396 e!2683397)))

(declare-fun res!1768176 () Bool)

(assert (=> b!4314075 (= res!1768176 (contains!10260 call!298433 lt!1533618))))

(assert (=> b!4314075 (=> (not res!1768176) (not e!2683397))))

(declare-fun b!4314076 () Bool)

(declare-datatypes ((tuple2!46856 0))(
  ( (tuple2!46857 (_1!26710 Bool) (_2!26710 LongMapFixedSize!9394)) )
))
(declare-fun lt!1533642 () tuple2!46856)

(assert (=> b!4314076 (= e!2683398 (tuple2!46855 (_1!26710 lt!1533642) (LongMap!4697 (Cell!18598 (_2!26710 lt!1533642)))))))

(declare-fun update!474 (LongMapFixedSize!9394 (_ BitVec 64) List!48390) tuple2!46856)

(assert (=> b!4314076 (= lt!1533642 (update!474 (v!42497 (underlying!9623 (_2!26709 lt!1533639))) lt!1533618 lt!1533628))))

(declare-fun b!4314077 () Bool)

(assert (=> b!4314077 (= e!2683395 e!2683396)))

(declare-fun c!733460 () Bool)

(assert (=> b!4314077 (= c!733460 (_1!26709 lt!1533641))))

(declare-fun b!4314078 () Bool)

(declare-fun lt!1533640 () tuple2!46854)

(assert (=> b!4314078 (= e!2683399 (tuple2!46855 (_1!26709 lt!1533640) (_2!26709 lt!1533640)))))

(declare-fun repack!67 (MutLongMap!4697) tuple2!46854)

(assert (=> b!4314078 (= lt!1533640 (repack!67 (v!42498 (underlying!9624 thiss!42308))))))

(declare-fun b!4314079 () Bool)

(assert (=> b!4314079 (= e!2683398 (tuple2!46855 false (_2!26709 lt!1533639)))))

(assert (= (and d!1268879 c!733458) b!4314078))

(assert (= (and d!1268879 (not c!733458)) b!4314071))

(assert (= (and d!1268879 c!733459) b!4314076))

(assert (= (and d!1268879 (not c!733459)) b!4314079))

(assert (= (and d!1268879 res!1768177) b!4314073))

(assert (= (and b!4314073 res!1768178) b!4314077))

(assert (= (and b!4314077 c!733460) b!4314075))

(assert (= (and b!4314077 (not c!733460)) b!4314074))

(assert (= (and b!4314075 res!1768176) b!4314072))

(assert (= (or b!4314075 b!4314072 b!4314074) bm!298428))

(assert (= (or b!4314072 b!4314074) bm!298427))

(declare-fun m!4907267 () Bool)

(assert (=> d!1268879 m!4907267))

(declare-fun m!4907269 () Bool)

(assert (=> d!1268879 m!4907269))

(assert (=> bm!298427 m!4907249))

(declare-fun m!4907271 () Bool)

(assert (=> b!4314075 m!4907271))

(declare-fun m!4907273 () Bool)

(assert (=> b!4314078 m!4907273))

(declare-fun m!4907275 () Bool)

(assert (=> b!4314072 m!4907275))

(declare-fun m!4907277 () Bool)

(assert (=> bm!298428 m!4907277))

(declare-fun m!4907279 () Bool)

(assert (=> b!4314073 m!4907279))

(declare-fun m!4907281 () Bool)

(assert (=> b!4314076 m!4907281))

(assert (=> b!4314051 d!1268879))

(declare-fun b!4314088 () Bool)

(declare-fun e!2683404 () List!48390)

(assert (=> b!4314088 (= e!2683404 (t!355225 lt!1533615))))

(declare-fun d!1268881 () Bool)

(declare-fun lt!1533645 () List!48390)

(assert (=> d!1268881 (not (containsKey!351 lt!1533645 key!2048))))

(assert (=> d!1268881 (= lt!1533645 e!2683404)))

(declare-fun c!733466 () Bool)

(assert (=> d!1268881 (= c!733466 (and ((_ is Cons!48266) lt!1533615) (= (_1!26707 (h!53713 lt!1533615)) key!2048)))))

(assert (=> d!1268881 (noDuplicateKeys!238 lt!1533615)))

(assert (=> d!1268881 (= (removePairForKey!237 lt!1533615 key!2048) lt!1533645)))

(declare-fun b!4314090 () Bool)

(declare-fun e!2683405 () List!48390)

(assert (=> b!4314090 (= e!2683405 (Cons!48266 (h!53713 lt!1533615) (removePairForKey!237 (t!355225 lt!1533615) key!2048)))))

(declare-fun b!4314091 () Bool)

(assert (=> b!4314091 (= e!2683405 Nil!48266)))

(declare-fun b!4314089 () Bool)

(assert (=> b!4314089 (= e!2683404 e!2683405)))

(declare-fun c!733465 () Bool)

(assert (=> b!4314089 (= c!733465 ((_ is Cons!48266) lt!1533615))))

(assert (= (and d!1268881 c!733466) b!4314088))

(assert (= (and d!1268881 (not c!733466)) b!4314089))

(assert (= (and b!4314089 c!733465) b!4314090))

(assert (= (and b!4314089 (not c!733465)) b!4314091))

(declare-fun m!4907283 () Bool)

(assert (=> d!1268881 m!4907283))

(declare-fun m!4907285 () Bool)

(assert (=> d!1268881 m!4907285))

(declare-fun m!4907287 () Bool)

(assert (=> b!4314090 m!4907287))

(assert (=> b!4314051 d!1268881))

(declare-fun d!1268883 () Bool)

(declare-fun e!2683408 () Bool)

(assert (=> d!1268883 e!2683408))

(declare-fun c!733469 () Bool)

(declare-fun contains!10264 (MutLongMap!4697 (_ BitVec 64)) Bool)

(assert (=> d!1268883 (= c!733469 (contains!10264 (v!42498 (underlying!9624 thiss!42308)) lt!1533618))))

(declare-fun lt!1533648 () List!48390)

(declare-fun apply!11066 (LongMapFixedSize!9394 (_ BitVec 64)) List!48390)

(assert (=> d!1268883 (= lt!1533648 (apply!11066 (v!42497 (underlying!9623 (v!42498 (underlying!9624 thiss!42308)))) lt!1533618))))

(assert (=> d!1268883 (valid!3696 (v!42498 (underlying!9624 thiss!42308)))))

(assert (=> d!1268883 (= (apply!11064 (v!42498 (underlying!9624 thiss!42308)) lt!1533618) lt!1533648)))

(declare-fun b!4314096 () Bool)

(declare-datatypes ((Option!10257 0))(
  ( (None!10256) (Some!10256 (v!42505 List!48390)) )
))
(declare-fun get!15626 (Option!10257) List!48390)

(declare-fun getValueByKey!271 (List!48391 (_ BitVec 64)) Option!10257)

(assert (=> b!4314096 (= e!2683408 (= lt!1533648 (get!15626 (getValueByKey!271 (toList!2464 (map!10274 (v!42498 (underlying!9624 thiss!42308)))) lt!1533618))))))

(declare-fun b!4314097 () Bool)

(declare-fun dynLambda!20460 (Int (_ BitVec 64)) List!48390)

(assert (=> b!4314097 (= e!2683408 (= lt!1533648 (dynLambda!20460 (defaultEntry!5082 (v!42497 (underlying!9623 (v!42498 (underlying!9624 thiss!42308))))) lt!1533618)))))

(assert (=> b!4314097 ((_ is LongMap!4697) (v!42498 (underlying!9624 thiss!42308)))))

(assert (= (and d!1268883 c!733469) b!4314096))

(assert (= (and d!1268883 (not c!733469)) b!4314097))

(declare-fun b_lambda!126843 () Bool)

(assert (=> (not b_lambda!126843) (not b!4314097)))

(declare-fun t!355228 () Bool)

(declare-fun tb!257321 () Bool)

(assert (=> (and b!4314038 (= (defaultEntry!5082 (v!42497 (underlying!9623 (v!42498 (underlying!9624 thiss!42308))))) (defaultEntry!5082 (v!42497 (underlying!9623 (v!42498 (underlying!9624 thiss!42308)))))) t!355228) tb!257321))

(assert (=> b!4314097 t!355228))

(declare-fun result!314766 () Bool)

(declare-fun b_and!340219 () Bool)

(assert (= b_and!340215 (and (=> t!355228 result!314766) b_and!340219)))

(declare-fun m!4907289 () Bool)

(assert (=> d!1268883 m!4907289))

(declare-fun m!4907291 () Bool)

(assert (=> d!1268883 m!4907291))

(assert (=> d!1268883 m!4907269))

(assert (=> b!4314096 m!4907249))

(declare-fun m!4907293 () Bool)

(assert (=> b!4314096 m!4907293))

(assert (=> b!4314096 m!4907293))

(declare-fun m!4907295 () Bool)

(assert (=> b!4314096 m!4907295))

(declare-fun m!4907297 () Bool)

(assert (=> b!4314097 m!4907297))

(assert (=> b!4314051 d!1268883))

(declare-fun d!1268885 () Bool)

(declare-fun hash!1080 (Hashable!4613 K!9489) (_ BitVec 64))

(assert (=> d!1268885 (= (hash!1076 (hashF!6789 thiss!42308) key!2048) (hash!1080 (hashF!6789 thiss!42308) key!2048))))

(declare-fun bs!605543 () Bool)

(assert (= bs!605543 d!1268885))

(declare-fun m!4907299 () Bool)

(assert (=> bs!605543 m!4907299))

(assert (=> b!4314051 d!1268885))

(declare-fun d!1268887 () Bool)

(declare-fun e!2683414 () Bool)

(assert (=> d!1268887 e!2683414))

(declare-fun res!1768181 () Bool)

(assert (=> d!1268887 (=> res!1768181 e!2683414)))

(declare-fun lt!1533660 () Bool)

(assert (=> d!1268887 (= res!1768181 (not lt!1533660))))

(declare-fun lt!1533659 () Bool)

(assert (=> d!1268887 (= lt!1533660 lt!1533659)))

(declare-fun lt!1533658 () Unit!67452)

(declare-fun e!2683413 () Unit!67452)

(assert (=> d!1268887 (= lt!1533658 e!2683413)))

(declare-fun c!733472 () Bool)

(assert (=> d!1268887 (= c!733472 lt!1533659)))

(declare-fun containsKey!352 (List!48391 (_ BitVec 64)) Bool)

(assert (=> d!1268887 (= lt!1533659 (containsKey!352 (toList!2464 lt!1533620) lt!1533618))))

(assert (=> d!1268887 (= (contains!10260 lt!1533620 lt!1533618) lt!1533660)))

(declare-fun b!4314104 () Bool)

(declare-fun lt!1533657 () Unit!67452)

(assert (=> b!4314104 (= e!2683413 lt!1533657)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!191 (List!48391 (_ BitVec 64)) Unit!67452)

(assert (=> b!4314104 (= lt!1533657 (lemmaContainsKeyImpliesGetValueByKeyDefined!191 (toList!2464 lt!1533620) lt!1533618))))

(declare-fun isDefined!7559 (Option!10257) Bool)

(assert (=> b!4314104 (isDefined!7559 (getValueByKey!271 (toList!2464 lt!1533620) lt!1533618))))

(declare-fun b!4314105 () Bool)

(declare-fun Unit!67454 () Unit!67452)

(assert (=> b!4314105 (= e!2683413 Unit!67454)))

(declare-fun b!4314106 () Bool)

(assert (=> b!4314106 (= e!2683414 (isDefined!7559 (getValueByKey!271 (toList!2464 lt!1533620) lt!1533618)))))

(assert (= (and d!1268887 c!733472) b!4314104))

(assert (= (and d!1268887 (not c!733472)) b!4314105))

(assert (= (and d!1268887 (not res!1768181)) b!4314106))

(declare-fun m!4907301 () Bool)

(assert (=> d!1268887 m!4907301))

(declare-fun m!4907303 () Bool)

(assert (=> b!4314104 m!4907303))

(declare-fun m!4907305 () Bool)

(assert (=> b!4314104 m!4907305))

(assert (=> b!4314104 m!4907305))

(declare-fun m!4907307 () Bool)

(assert (=> b!4314104 m!4907307))

(assert (=> b!4314106 m!4907305))

(assert (=> b!4314106 m!4907305))

(assert (=> b!4314106 m!4907307))

(assert (=> b!4314041 d!1268887))

(declare-fun b!4314107 () Bool)

(declare-fun e!2683415 () List!48390)

(assert (=> b!4314107 (= e!2683415 (t!355225 lt!1533630))))

(declare-fun d!1268889 () Bool)

(declare-fun lt!1533661 () List!48390)

(assert (=> d!1268889 (not (containsKey!351 lt!1533661 key!2048))))

(assert (=> d!1268889 (= lt!1533661 e!2683415)))

(declare-fun c!733474 () Bool)

(assert (=> d!1268889 (= c!733474 (and ((_ is Cons!48266) lt!1533630) (= (_1!26707 (h!53713 lt!1533630)) key!2048)))))

(assert (=> d!1268889 (noDuplicateKeys!238 lt!1533630)))

(assert (=> d!1268889 (= (removePairForKey!237 lt!1533630 key!2048) lt!1533661)))

(declare-fun b!4314109 () Bool)

(declare-fun e!2683416 () List!48390)

(assert (=> b!4314109 (= e!2683416 (Cons!48266 (h!53713 lt!1533630) (removePairForKey!237 (t!355225 lt!1533630) key!2048)))))

(declare-fun b!4314110 () Bool)

(assert (=> b!4314110 (= e!2683416 Nil!48266)))

(declare-fun b!4314108 () Bool)

(assert (=> b!4314108 (= e!2683415 e!2683416)))

(declare-fun c!733473 () Bool)

(assert (=> b!4314108 (= c!733473 ((_ is Cons!48266) lt!1533630))))

(assert (= (and d!1268889 c!733474) b!4314107))

(assert (= (and d!1268889 (not c!733474)) b!4314108))

(assert (= (and b!4314108 c!733473) b!4314109))

(assert (= (and b!4314108 (not c!733473)) b!4314110))

(declare-fun m!4907309 () Bool)

(assert (=> d!1268889 m!4907309))

(declare-fun m!4907311 () Bool)

(assert (=> d!1268889 m!4907311))

(declare-fun m!4907313 () Bool)

(assert (=> b!4314109 m!4907313))

(assert (=> b!4314052 d!1268889))

(declare-fun d!1268891 () Bool)

(assert (=> d!1268891 (contains!10263 (toList!2464 lt!1533620) (tuple2!46853 lt!1533618 lt!1533630))))

(declare-fun lt!1533664 () Unit!67452)

(declare-fun choose!26308 (List!48391 (_ BitVec 64) List!48390) Unit!67452)

(assert (=> d!1268891 (= lt!1533664 (choose!26308 (toList!2464 lt!1533620) lt!1533618 lt!1533630))))

(declare-fun e!2683419 () Bool)

(assert (=> d!1268891 e!2683419))

(declare-fun res!1768184 () Bool)

(assert (=> d!1268891 (=> (not res!1768184) (not e!2683419))))

(declare-fun isStrictlySorted!16 (List!48391) Bool)

(assert (=> d!1268891 (= res!1768184 (isStrictlySorted!16 (toList!2464 lt!1533620)))))

(assert (=> d!1268891 (= (lemmaGetValueByKeyImpliesContainsTuple!156 (toList!2464 lt!1533620) lt!1533618 lt!1533630) lt!1533664)))

(declare-fun b!4314113 () Bool)

(assert (=> b!4314113 (= e!2683419 (= (getValueByKey!271 (toList!2464 lt!1533620) lt!1533618) (Some!10256 lt!1533630)))))

(assert (= (and d!1268891 res!1768184) b!4314113))

(declare-fun m!4907315 () Bool)

(assert (=> d!1268891 m!4907315))

(declare-fun m!4907317 () Bool)

(assert (=> d!1268891 m!4907317))

(declare-fun m!4907319 () Bool)

(assert (=> d!1268891 m!4907319))

(assert (=> b!4314113 m!4907305))

(assert (=> b!4314052 d!1268891))

(declare-fun d!1268893 () Bool)

(declare-fun lt!1533667 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!7558 (List!48391) (InoxSet tuple2!46852))

(assert (=> d!1268893 (= lt!1533667 (select (content!7558 (toList!2464 lt!1533620)) lt!1533627))))

(declare-fun e!2683425 () Bool)

(assert (=> d!1268893 (= lt!1533667 e!2683425)))

(declare-fun res!1768189 () Bool)

(assert (=> d!1268893 (=> (not res!1768189) (not e!2683425))))

(assert (=> d!1268893 (= res!1768189 ((_ is Cons!48267) (toList!2464 lt!1533620)))))

(assert (=> d!1268893 (= (contains!10263 (toList!2464 lt!1533620) lt!1533627) lt!1533667)))

(declare-fun b!4314118 () Bool)

(declare-fun e!2683424 () Bool)

(assert (=> b!4314118 (= e!2683425 e!2683424)))

(declare-fun res!1768190 () Bool)

(assert (=> b!4314118 (=> res!1768190 e!2683424)))

(assert (=> b!4314118 (= res!1768190 (= (h!53714 (toList!2464 lt!1533620)) lt!1533627))))

(declare-fun b!4314119 () Bool)

(assert (=> b!4314119 (= e!2683424 (contains!10263 (t!355226 (toList!2464 lt!1533620)) lt!1533627))))

(assert (= (and d!1268893 res!1768189) b!4314118))

(assert (= (and b!4314118 (not res!1768190)) b!4314119))

(declare-fun m!4907321 () Bool)

(assert (=> d!1268893 m!4907321))

(declare-fun m!4907323 () Bool)

(assert (=> d!1268893 m!4907323))

(declare-fun m!4907325 () Bool)

(assert (=> b!4314119 m!4907325))

(assert (=> b!4314052 d!1268893))

(declare-fun d!1268895 () Bool)

(assert (=> d!1268895 (= (apply!11065 lt!1533620 lt!1533618) (get!15626 (getValueByKey!271 (toList!2464 lt!1533620) lt!1533618)))))

(declare-fun bs!605544 () Bool)

(assert (= bs!605544 d!1268895))

(assert (=> bs!605544 m!4907305))

(assert (=> bs!605544 m!4907305))

(declare-fun m!4907327 () Bool)

(assert (=> bs!605544 m!4907327))

(assert (=> b!4314052 d!1268895))

(declare-fun d!1268897 () Bool)

(declare-fun dynLambda!20461 (Int tuple2!46852) Bool)

(assert (=> d!1268897 (dynLambda!20461 lambda!133257 lt!1533627)))

(declare-fun lt!1533670 () Unit!67452)

(declare-fun choose!26309 (List!48391 Int tuple2!46852) Unit!67452)

(assert (=> d!1268897 (= lt!1533670 (choose!26309 (toList!2464 lt!1533620) lambda!133257 lt!1533627))))

(declare-fun e!2683428 () Bool)

(assert (=> d!1268897 e!2683428))

(declare-fun res!1768193 () Bool)

(assert (=> d!1268897 (=> (not res!1768193) (not e!2683428))))

(assert (=> d!1268897 (= res!1768193 (forall!8764 (toList!2464 lt!1533620) lambda!133257))))

(assert (=> d!1268897 (= (forallContained!1512 (toList!2464 lt!1533620) lambda!133257 lt!1533627) lt!1533670)))

(declare-fun b!4314122 () Bool)

(assert (=> b!4314122 (= e!2683428 (contains!10263 (toList!2464 lt!1533620) lt!1533627))))

(assert (= (and d!1268897 res!1768193) b!4314122))

(declare-fun b_lambda!126845 () Bool)

(assert (=> (not b_lambda!126845) (not d!1268897)))

(declare-fun m!4907329 () Bool)

(assert (=> d!1268897 m!4907329))

(declare-fun m!4907331 () Bool)

(assert (=> d!1268897 m!4907331))

(assert (=> d!1268897 m!4907239))

(assert (=> b!4314122 m!4907263))

(assert (=> b!4314052 d!1268897))

(declare-fun b!4314141 () Bool)

(declare-datatypes ((List!48392 0))(
  ( (Nil!48268) (Cons!48268 (h!53716 K!9489) (t!355229 List!48392)) )
))
(declare-fun e!2683444 () List!48392)

(declare-fun getKeysList!48 (List!48390) List!48392)

(assert (=> b!4314141 (= e!2683444 (getKeysList!48 (toList!2465 (extractMap!343 (toList!2464 lt!1533620)))))))

(declare-fun b!4314142 () Bool)

(declare-fun e!2683443 () Unit!67452)

(declare-fun lt!1533690 () Unit!67452)

(assert (=> b!4314142 (= e!2683443 lt!1533690)))

(declare-fun lt!1533689 () Unit!67452)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!192 (List!48390 K!9489) Unit!67452)

(assert (=> b!4314142 (= lt!1533689 (lemmaContainsKeyImpliesGetValueByKeyDefined!192 (toList!2465 (extractMap!343 (toList!2464 lt!1533620))) key!2048))))

(declare-datatypes ((Option!10258 0))(
  ( (None!10257) (Some!10257 (v!42506 V!9691)) )
))
(declare-fun isDefined!7560 (Option!10258) Bool)

(declare-fun getValueByKey!272 (List!48390 K!9489) Option!10258)

(assert (=> b!4314142 (isDefined!7560 (getValueByKey!272 (toList!2465 (extractMap!343 (toList!2464 lt!1533620))) key!2048))))

(declare-fun lt!1533694 () Unit!67452)

(assert (=> b!4314142 (= lt!1533694 lt!1533689)))

(declare-fun lemmaInListThenGetKeysListContains!45 (List!48390 K!9489) Unit!67452)

(assert (=> b!4314142 (= lt!1533690 (lemmaInListThenGetKeysListContains!45 (toList!2465 (extractMap!343 (toList!2464 lt!1533620))) key!2048))))

(declare-fun call!298436 () Bool)

(assert (=> b!4314142 call!298436))

(declare-fun b!4314143 () Bool)

(assert (=> b!4314143 false))

(declare-fun lt!1533692 () Unit!67452)

(declare-fun lt!1533688 () Unit!67452)

(assert (=> b!4314143 (= lt!1533692 lt!1533688)))

(declare-fun containsKey!353 (List!48390 K!9489) Bool)

(assert (=> b!4314143 (containsKey!353 (toList!2465 (extractMap!343 (toList!2464 lt!1533620))) key!2048)))

(declare-fun lemmaInGetKeysListThenContainsKey!45 (List!48390 K!9489) Unit!67452)

(assert (=> b!4314143 (= lt!1533688 (lemmaInGetKeysListThenContainsKey!45 (toList!2465 (extractMap!343 (toList!2464 lt!1533620))) key!2048))))

(declare-fun e!2683445 () Unit!67452)

(declare-fun Unit!67455 () Unit!67452)

(assert (=> b!4314143 (= e!2683445 Unit!67455)))

(declare-fun b!4314144 () Bool)

(declare-fun e!2683441 () Bool)

(declare-fun e!2683442 () Bool)

(assert (=> b!4314144 (= e!2683441 e!2683442)))

(declare-fun res!1768201 () Bool)

(assert (=> b!4314144 (=> (not res!1768201) (not e!2683442))))

(assert (=> b!4314144 (= res!1768201 (isDefined!7560 (getValueByKey!272 (toList!2465 (extractMap!343 (toList!2464 lt!1533620))) key!2048)))))

(declare-fun b!4314145 () Bool)

(assert (=> b!4314145 (= e!2683443 e!2683445)))

(declare-fun c!733481 () Bool)

(assert (=> b!4314145 (= c!733481 call!298436)))

(declare-fun b!4314146 () Bool)

(declare-fun keys!16109 (ListMap!1745) List!48392)

(assert (=> b!4314146 (= e!2683444 (keys!16109 (extractMap!343 (toList!2464 lt!1533620))))))

(declare-fun b!4314147 () Bool)

(declare-fun Unit!67456 () Unit!67452)

(assert (=> b!4314147 (= e!2683445 Unit!67456)))

(declare-fun b!4314148 () Bool)

(declare-fun contains!10265 (List!48392 K!9489) Bool)

(assert (=> b!4314148 (= e!2683442 (contains!10265 (keys!16109 (extractMap!343 (toList!2464 lt!1533620))) key!2048))))

(declare-fun b!4314149 () Bool)

(declare-fun e!2683446 () Bool)

(assert (=> b!4314149 (= e!2683446 (not (contains!10265 (keys!16109 (extractMap!343 (toList!2464 lt!1533620))) key!2048)))))

(declare-fun bm!298431 () Bool)

(assert (=> bm!298431 (= call!298436 (contains!10265 e!2683444 key!2048))))

(declare-fun c!733483 () Bool)

(declare-fun c!733482 () Bool)

(assert (=> bm!298431 (= c!733483 c!733482)))

(declare-fun d!1268899 () Bool)

(assert (=> d!1268899 e!2683441))

(declare-fun res!1768200 () Bool)

(assert (=> d!1268899 (=> res!1768200 e!2683441)))

(assert (=> d!1268899 (= res!1768200 e!2683446)))

(declare-fun res!1768202 () Bool)

(assert (=> d!1268899 (=> (not res!1768202) (not e!2683446))))

(declare-fun lt!1533687 () Bool)

(assert (=> d!1268899 (= res!1768202 (not lt!1533687))))

(declare-fun lt!1533693 () Bool)

(assert (=> d!1268899 (= lt!1533687 lt!1533693)))

(declare-fun lt!1533691 () Unit!67452)

(assert (=> d!1268899 (= lt!1533691 e!2683443)))

(assert (=> d!1268899 (= c!733482 lt!1533693)))

(assert (=> d!1268899 (= lt!1533693 (containsKey!353 (toList!2465 (extractMap!343 (toList!2464 lt!1533620))) key!2048))))

(assert (=> d!1268899 (= (contains!10261 (extractMap!343 (toList!2464 lt!1533620)) key!2048) lt!1533687)))

(assert (= (and d!1268899 c!733482) b!4314142))

(assert (= (and d!1268899 (not c!733482)) b!4314145))

(assert (= (and b!4314145 c!733481) b!4314143))

(assert (= (and b!4314145 (not c!733481)) b!4314147))

(assert (= (or b!4314142 b!4314145) bm!298431))

(assert (= (and bm!298431 c!733483) b!4314141))

(assert (= (and bm!298431 (not c!733483)) b!4314146))

(assert (= (and d!1268899 res!1768202) b!4314149))

(assert (= (and d!1268899 (not res!1768200)) b!4314144))

(assert (= (and b!4314144 res!1768201) b!4314148))

(assert (=> b!4314148 m!4907217))

(declare-fun m!4907333 () Bool)

(assert (=> b!4314148 m!4907333))

(assert (=> b!4314148 m!4907333))

(declare-fun m!4907335 () Bool)

(assert (=> b!4314148 m!4907335))

(assert (=> b!4314146 m!4907217))

(assert (=> b!4314146 m!4907333))

(declare-fun m!4907337 () Bool)

(assert (=> bm!298431 m!4907337))

(declare-fun m!4907339 () Bool)

(assert (=> b!4314144 m!4907339))

(assert (=> b!4314144 m!4907339))

(declare-fun m!4907341 () Bool)

(assert (=> b!4314144 m!4907341))

(assert (=> b!4314149 m!4907217))

(assert (=> b!4314149 m!4907333))

(assert (=> b!4314149 m!4907333))

(assert (=> b!4314149 m!4907335))

(declare-fun m!4907343 () Bool)

(assert (=> b!4314143 m!4907343))

(declare-fun m!4907345 () Bool)

(assert (=> b!4314143 m!4907345))

(assert (=> d!1268899 m!4907343))

(declare-fun m!4907347 () Bool)

(assert (=> b!4314142 m!4907347))

(assert (=> b!4314142 m!4907339))

(assert (=> b!4314142 m!4907339))

(assert (=> b!4314142 m!4907341))

(declare-fun m!4907349 () Bool)

(assert (=> b!4314142 m!4907349))

(declare-fun m!4907351 () Bool)

(assert (=> b!4314141 m!4907351))

(assert (=> b!4314042 d!1268899))

(declare-fun bs!605545 () Bool)

(declare-fun d!1268901 () Bool)

(assert (= bs!605545 (and d!1268901 b!4314050)))

(declare-fun lambda!133260 () Int)

(assert (=> bs!605545 (= lambda!133260 lambda!133257)))

(declare-fun lt!1533697 () ListMap!1745)

(declare-fun invariantList!584 (List!48390) Bool)

(assert (=> d!1268901 (invariantList!584 (toList!2465 lt!1533697))))

(declare-fun e!2683449 () ListMap!1745)

(assert (=> d!1268901 (= lt!1533697 e!2683449)))

(declare-fun c!733486 () Bool)

(assert (=> d!1268901 (= c!733486 ((_ is Cons!48267) (toList!2464 lt!1533620)))))

(assert (=> d!1268901 (forall!8764 (toList!2464 lt!1533620) lambda!133260)))

(assert (=> d!1268901 (= (extractMap!343 (toList!2464 lt!1533620)) lt!1533697)))

(declare-fun b!4314154 () Bool)

(declare-fun addToMapMapFromBucket!42 (List!48390 ListMap!1745) ListMap!1745)

(assert (=> b!4314154 (= e!2683449 (addToMapMapFromBucket!42 (_2!26708 (h!53714 (toList!2464 lt!1533620))) (extractMap!343 (t!355226 (toList!2464 lt!1533620)))))))

(declare-fun b!4314155 () Bool)

(assert (=> b!4314155 (= e!2683449 (ListMap!1746 Nil!48266))))

(assert (= (and d!1268901 c!733486) b!4314154))

(assert (= (and d!1268901 (not c!733486)) b!4314155))

(declare-fun m!4907353 () Bool)

(assert (=> d!1268901 m!4907353))

(declare-fun m!4907355 () Bool)

(assert (=> d!1268901 m!4907355))

(declare-fun m!4907357 () Bool)

(assert (=> b!4314154 m!4907357))

(assert (=> b!4314154 m!4907357))

(declare-fun m!4907359 () Bool)

(assert (=> b!4314154 m!4907359))

(assert (=> b!4314042 d!1268901))

(declare-fun d!1268903 () Bool)

(assert (=> d!1268903 true))

(assert (=> d!1268903 true))

(declare-fun lambda!133263 () Int)

(declare-fun forall!8765 (List!48390 Int) Bool)

(assert (=> d!1268903 (= (allKeysSameHash!211 lt!1533628 lt!1533618 (hashF!6789 thiss!42308)) (forall!8765 lt!1533628 lambda!133263))))

(declare-fun bs!605546 () Bool)

(assert (= bs!605546 d!1268903))

(declare-fun m!4907361 () Bool)

(assert (=> bs!605546 m!4907361))

(assert (=> b!4314043 d!1268903))

(declare-fun bs!605547 () Bool)

(declare-fun b!4314164 () Bool)

(assert (= bs!605547 (and b!4314164 b!4314050)))

(declare-fun lambda!133266 () Int)

(assert (=> bs!605547 (= lambda!133266 lambda!133257)))

(declare-fun bs!605548 () Bool)

(assert (= bs!605548 (and b!4314164 d!1268901)))

(assert (=> bs!605548 (= lambda!133266 lambda!133260)))

(declare-fun d!1268905 () Bool)

(declare-fun res!1768207 () Bool)

(declare-fun e!2683452 () Bool)

(assert (=> d!1268905 (=> (not res!1768207) (not e!2683452))))

(assert (=> d!1268905 (= res!1768207 (valid!3696 (v!42498 (underlying!9624 thiss!42308))))))

(assert (=> d!1268905 (= (valid!3695 thiss!42308) e!2683452)))

(declare-fun res!1768208 () Bool)

(assert (=> b!4314164 (=> (not res!1768208) (not e!2683452))))

(assert (=> b!4314164 (= res!1768208 (forall!8764 (toList!2464 (map!10274 (v!42498 (underlying!9624 thiss!42308)))) lambda!133266))))

(declare-fun b!4314165 () Bool)

(assert (=> b!4314165 (= e!2683452 (allKeysSameHashInMap!358 (map!10274 (v!42498 (underlying!9624 thiss!42308))) (hashF!6789 thiss!42308)))))

(assert (= (and d!1268905 res!1768207) b!4314164))

(assert (= (and b!4314164 res!1768208) b!4314165))

(assert (=> d!1268905 m!4907269))

(assert (=> b!4314164 m!4907249))

(declare-fun m!4907363 () Bool)

(assert (=> b!4314164 m!4907363))

(assert (=> b!4314165 m!4907249))

(assert (=> b!4314165 m!4907249))

(declare-fun m!4907365 () Bool)

(assert (=> b!4314165 m!4907365))

(assert (=> b!4314044 d!1268905))

(declare-fun d!1268907 () Bool)

(declare-fun res!1768213 () Bool)

(declare-fun e!2683457 () Bool)

(assert (=> d!1268907 (=> res!1768213 e!2683457)))

(assert (=> d!1268907 (= res!1768213 (not ((_ is Cons!48266) lt!1533628)))))

(assert (=> d!1268907 (= (noDuplicateKeys!238 lt!1533628) e!2683457)))

(declare-fun b!4314170 () Bool)

(declare-fun e!2683458 () Bool)

(assert (=> b!4314170 (= e!2683457 e!2683458)))

(declare-fun res!1768214 () Bool)

(assert (=> b!4314170 (=> (not res!1768214) (not e!2683458))))

(assert (=> b!4314170 (= res!1768214 (not (containsKey!351 (t!355225 lt!1533628) (_1!26707 (h!53713 lt!1533628)))))))

(declare-fun b!4314171 () Bool)

(assert (=> b!4314171 (= e!2683458 (noDuplicateKeys!238 (t!355225 lt!1533628)))))

(assert (= (and d!1268907 (not res!1768213)) b!4314170))

(assert (= (and b!4314170 res!1768214) b!4314171))

(declare-fun m!4907367 () Bool)

(assert (=> b!4314170 m!4907367))

(declare-fun m!4907369 () Bool)

(assert (=> b!4314171 m!4907369))

(assert (=> b!4314045 d!1268907))

(declare-fun bs!605549 () Bool)

(declare-fun b!4314204 () Bool)

(assert (= bs!605549 (and b!4314204 b!4314050)))

(declare-fun lambda!133269 () Int)

(assert (=> bs!605549 (= lambda!133269 lambda!133257)))

(declare-fun bs!605550 () Bool)

(assert (= bs!605550 (and b!4314204 d!1268901)))

(assert (=> bs!605550 (= lambda!133269 lambda!133260)))

(declare-fun bs!605551 () Bool)

(assert (= bs!605551 (and b!4314204 b!4314164)))

(assert (=> bs!605551 (= lambda!133269 lambda!133266)))

(declare-fun b!4314194 () Bool)

(declare-fun e!2683473 () Unit!67452)

(declare-fun lt!1533751 () Unit!67452)

(assert (=> b!4314194 (= e!2683473 lt!1533751)))

(declare-fun lt!1533744 () ListLongMap!1077)

(declare-fun call!298450 () ListLongMap!1077)

(assert (=> b!4314194 (= lt!1533744 call!298450)))

(declare-fun lemmaInGenericMapThenInLongMap!145 (ListLongMap!1077 K!9489 Hashable!4613) Unit!67452)

(assert (=> b!4314194 (= lt!1533751 (lemmaInGenericMapThenInLongMap!145 lt!1533744 key!2048 (hashF!6789 thiss!42308)))))

(declare-fun res!1768221 () Bool)

(declare-fun call!298454 () Bool)

(assert (=> b!4314194 (= res!1768221 call!298454)))

(declare-fun e!2683479 () Bool)

(assert (=> b!4314194 (=> (not res!1768221) (not e!2683479))))

(assert (=> b!4314194 e!2683479))

(declare-fun b!4314195 () Bool)

(declare-fun call!298452 () Bool)

(assert (=> b!4314195 (= e!2683479 call!298452)))

(declare-fun b!4314196 () Bool)

(declare-fun e!2683477 () Bool)

(assert (=> b!4314196 (= e!2683477 call!298452)))

(declare-fun d!1268909 () Bool)

(declare-fun lt!1533753 () Bool)

(assert (=> d!1268909 (= lt!1533753 (contains!10261 (map!10275 thiss!42308) key!2048))))

(declare-fun e!2683478 () Bool)

(assert (=> d!1268909 (= lt!1533753 e!2683478)))

(declare-fun res!1768223 () Bool)

(assert (=> d!1268909 (=> (not res!1768223) (not e!2683478))))

(declare-fun lt!1533743 () (_ BitVec 64))

(assert (=> d!1268909 (= res!1768223 (contains!10264 (v!42498 (underlying!9624 thiss!42308)) lt!1533743))))

(declare-fun lt!1533755 () Unit!67452)

(assert (=> d!1268909 (= lt!1533755 e!2683473)))

(declare-fun c!733497 () Bool)

(assert (=> d!1268909 (= c!733497 (contains!10261 (extractMap!343 (toList!2464 (map!10274 (v!42498 (underlying!9624 thiss!42308))))) key!2048))))

(declare-fun lt!1533745 () Unit!67452)

(declare-fun e!2683474 () Unit!67452)

(assert (=> d!1268909 (= lt!1533745 e!2683474)))

(declare-fun c!733498 () Bool)

(assert (=> d!1268909 (= c!733498 (contains!10264 (v!42498 (underlying!9624 thiss!42308)) lt!1533743))))

(assert (=> d!1268909 (= lt!1533743 (hash!1076 (hashF!6789 thiss!42308) key!2048))))

(assert (=> d!1268909 (valid!3695 thiss!42308)))

(assert (=> d!1268909 (= (contains!10262 thiss!42308 key!2048) lt!1533753)))

(declare-fun call!298449 () List!48390)

(declare-fun call!298453 () (_ BitVec 64))

(declare-fun bm!298444 () Bool)

(assert (=> bm!298444 (= call!298449 (apply!11065 (ite c!733497 lt!1533744 call!298450) call!298453))))

(declare-fun b!4314197 () Bool)

(assert (=> b!4314197 false))

(declare-fun lt!1533757 () Unit!67452)

(declare-fun lt!1533742 () Unit!67452)

(assert (=> b!4314197 (= lt!1533757 lt!1533742)))

(declare-fun lt!1533741 () ListLongMap!1077)

(assert (=> b!4314197 (contains!10261 (extractMap!343 (toList!2464 lt!1533741)) key!2048)))

(declare-fun lemmaInLongMapThenInGenericMap!145 (ListLongMap!1077 K!9489 Hashable!4613) Unit!67452)

(assert (=> b!4314197 (= lt!1533742 (lemmaInLongMapThenInGenericMap!145 lt!1533741 key!2048 (hashF!6789 thiss!42308)))))

(assert (=> b!4314197 (= lt!1533741 call!298450)))

(declare-fun e!2683475 () Unit!67452)

(declare-fun Unit!67457 () Unit!67452)

(assert (=> b!4314197 (= e!2683475 Unit!67457)))

(declare-fun b!4314198 () Bool)

(declare-datatypes ((Option!10259 0))(
  ( (None!10258) (Some!10258 (v!42507 tuple2!46850)) )
))
(declare-fun isDefined!7561 (Option!10259) Bool)

(declare-fun getPair!145 (List!48390 K!9489) Option!10259)

(assert (=> b!4314198 (= e!2683478 (isDefined!7561 (getPair!145 (apply!11064 (v!42498 (underlying!9624 thiss!42308)) lt!1533743) key!2048)))))

(declare-fun b!4314199 () Bool)

(assert (=> b!4314199 (= e!2683473 e!2683475)))

(declare-fun res!1768222 () Bool)

(assert (=> b!4314199 (= res!1768222 call!298454)))

(assert (=> b!4314199 (=> (not res!1768222) (not e!2683477))))

(declare-fun c!733495 () Bool)

(assert (=> b!4314199 (= c!733495 e!2683477)))

(declare-fun bm!298445 () Bool)

(assert (=> bm!298445 (= call!298450 (map!10274 (v!42498 (underlying!9624 thiss!42308))))))

(declare-fun bm!298446 () Bool)

(declare-fun call!298451 () Option!10259)

(assert (=> bm!298446 (= call!298451 (getPair!145 call!298449 key!2048))))

(declare-fun b!4314200 () Bool)

(declare-fun e!2683476 () Unit!67452)

(declare-fun Unit!67458 () Unit!67452)

(assert (=> b!4314200 (= e!2683476 Unit!67458)))

(declare-fun bm!298447 () Bool)

(assert (=> bm!298447 (= call!298454 (contains!10260 (ite c!733497 lt!1533744 call!298450) call!298453))))

(declare-fun b!4314201 () Bool)

(declare-fun Unit!67459 () Unit!67452)

(assert (=> b!4314201 (= e!2683474 Unit!67459)))

(declare-fun b!4314202 () Bool)

(assert (=> b!4314202 false))

(declare-fun lt!1533748 () Unit!67452)

(declare-fun lt!1533739 () Unit!67452)

(assert (=> b!4314202 (= lt!1533748 lt!1533739)))

(declare-fun lt!1533754 () List!48391)

(declare-fun lt!1533750 () List!48390)

(assert (=> b!4314202 (contains!10263 lt!1533754 (tuple2!46853 lt!1533743 lt!1533750))))

(assert (=> b!4314202 (= lt!1533739 (lemmaGetValueByKeyImpliesContainsTuple!156 lt!1533754 lt!1533743 lt!1533750))))

(assert (=> b!4314202 (= lt!1533750 (apply!11064 (v!42498 (underlying!9624 thiss!42308)) lt!1533743))))

(assert (=> b!4314202 (= lt!1533754 (toList!2464 (map!10274 (v!42498 (underlying!9624 thiss!42308)))))))

(declare-fun lt!1533740 () Unit!67452)

(declare-fun lt!1533756 () Unit!67452)

(assert (=> b!4314202 (= lt!1533740 lt!1533756)))

(declare-fun lt!1533749 () List!48391)

(assert (=> b!4314202 (isDefined!7559 (getValueByKey!271 lt!1533749 lt!1533743))))

(assert (=> b!4314202 (= lt!1533756 (lemmaContainsKeyImpliesGetValueByKeyDefined!191 lt!1533749 lt!1533743))))

(assert (=> b!4314202 (= lt!1533749 (toList!2464 (map!10274 (v!42498 (underlying!9624 thiss!42308)))))))

(declare-fun lt!1533738 () Unit!67452)

(declare-fun lt!1533752 () Unit!67452)

(assert (=> b!4314202 (= lt!1533738 lt!1533752)))

(declare-fun lt!1533746 () List!48391)

(assert (=> b!4314202 (containsKey!352 lt!1533746 lt!1533743)))

(declare-fun lemmaGetValueByKeyIsDefinedImpliesContainsKey!146 (List!48391 (_ BitVec 64)) Unit!67452)

(assert (=> b!4314202 (= lt!1533752 (lemmaGetValueByKeyIsDefinedImpliesContainsKey!146 lt!1533746 lt!1533743))))

(assert (=> b!4314202 (= lt!1533746 (toList!2464 (map!10274 (v!42498 (underlying!9624 thiss!42308)))))))

(declare-fun Unit!67460 () Unit!67452)

(assert (=> b!4314202 (= e!2683476 Unit!67460)))

(declare-fun bm!298448 () Bool)

(assert (=> bm!298448 (= call!298453 (hash!1076 (hashF!6789 thiss!42308) key!2048))))

(declare-fun bm!298449 () Bool)

(assert (=> bm!298449 (= call!298452 (isDefined!7561 call!298451))))

(declare-fun b!4314203 () Bool)

(declare-fun Unit!67461 () Unit!67452)

(assert (=> b!4314203 (= e!2683475 Unit!67461)))

(assert (=> b!4314204 (= e!2683474 (forallContained!1512 (toList!2464 (map!10274 (v!42498 (underlying!9624 thiss!42308)))) lambda!133269 (tuple2!46853 lt!1533743 (apply!11064 (v!42498 (underlying!9624 thiss!42308)) lt!1533743))))))

(declare-fun c!733496 () Bool)

(assert (=> b!4314204 (= c!733496 (not (contains!10263 (toList!2464 (map!10274 (v!42498 (underlying!9624 thiss!42308)))) (tuple2!46853 lt!1533743 (apply!11064 (v!42498 (underlying!9624 thiss!42308)) lt!1533743)))))))

(declare-fun lt!1533747 () Unit!67452)

(assert (=> b!4314204 (= lt!1533747 e!2683476)))

(assert (= (and d!1268909 c!733498) b!4314204))

(assert (= (and d!1268909 (not c!733498)) b!4314201))

(assert (= (and b!4314204 c!733496) b!4314202))

(assert (= (and b!4314204 (not c!733496)) b!4314200))

(assert (= (and d!1268909 c!733497) b!4314194))

(assert (= (and d!1268909 (not c!733497)) b!4314199))

(assert (= (and b!4314194 res!1768221) b!4314195))

(assert (= (and b!4314199 res!1768222) b!4314196))

(assert (= (and b!4314199 c!733495) b!4314197))

(assert (= (and b!4314199 (not c!733495)) b!4314203))

(assert (= (or b!4314194 b!4314199 b!4314196 b!4314197) bm!298445))

(assert (= (or b!4314194 b!4314195 b!4314199 b!4314196) bm!298448))

(assert (= (or b!4314195 b!4314196) bm!298444))

(assert (= (or b!4314194 b!4314199) bm!298447))

(assert (= (or b!4314195 b!4314196) bm!298446))

(assert (= (or b!4314195 b!4314196) bm!298449))

(assert (= (and d!1268909 res!1768223) b!4314198))

(declare-fun m!4907371 () Bool)

(assert (=> b!4314197 m!4907371))

(assert (=> b!4314197 m!4907371))

(declare-fun m!4907373 () Bool)

(assert (=> b!4314197 m!4907373))

(declare-fun m!4907375 () Bool)

(assert (=> b!4314197 m!4907375))

(assert (=> bm!298445 m!4907249))

(declare-fun m!4907377 () Bool)

(assert (=> bm!298446 m!4907377))

(assert (=> d!1268909 m!4907251))

(declare-fun m!4907379 () Bool)

(assert (=> d!1268909 m!4907379))

(assert (=> d!1268909 m!4907215))

(declare-fun m!4907381 () Bool)

(assert (=> d!1268909 m!4907381))

(declare-fun m!4907383 () Bool)

(assert (=> d!1268909 m!4907383))

(assert (=> d!1268909 m!4907255))

(declare-fun m!4907385 () Bool)

(assert (=> d!1268909 m!4907385))

(assert (=> d!1268909 m!4907251))

(assert (=> d!1268909 m!4907249))

(assert (=> d!1268909 m!4907381))

(declare-fun m!4907387 () Bool)

(assert (=> b!4314194 m!4907387))

(declare-fun m!4907389 () Bool)

(assert (=> b!4314198 m!4907389))

(assert (=> b!4314198 m!4907389))

(declare-fun m!4907391 () Bool)

(assert (=> b!4314198 m!4907391))

(assert (=> b!4314198 m!4907391))

(declare-fun m!4907393 () Bool)

(assert (=> b!4314198 m!4907393))

(declare-fun m!4907395 () Bool)

(assert (=> bm!298444 m!4907395))

(declare-fun m!4907397 () Bool)

(assert (=> bm!298447 m!4907397))

(assert (=> bm!298448 m!4907215))

(declare-fun m!4907399 () Bool)

(assert (=> bm!298449 m!4907399))

(declare-fun m!4907401 () Bool)

(assert (=> b!4314202 m!4907401))

(assert (=> b!4314202 m!4907389))

(declare-fun m!4907403 () Bool)

(assert (=> b!4314202 m!4907403))

(assert (=> b!4314202 m!4907249))

(declare-fun m!4907405 () Bool)

(assert (=> b!4314202 m!4907405))

(declare-fun m!4907407 () Bool)

(assert (=> b!4314202 m!4907407))

(declare-fun m!4907409 () Bool)

(assert (=> b!4314202 m!4907409))

(assert (=> b!4314202 m!4907405))

(declare-fun m!4907411 () Bool)

(assert (=> b!4314202 m!4907411))

(declare-fun m!4907413 () Bool)

(assert (=> b!4314202 m!4907413))

(assert (=> b!4314204 m!4907249))

(assert (=> b!4314204 m!4907389))

(declare-fun m!4907415 () Bool)

(assert (=> b!4314204 m!4907415))

(declare-fun m!4907417 () Bool)

(assert (=> b!4314204 m!4907417))

(assert (=> b!4314046 d!1268909))

(declare-fun d!1268911 () Bool)

(declare-fun map!10276 (LongMapFixedSize!9394) ListLongMap!1077)

(assert (=> d!1268911 (= (map!10274 (v!42498 (underlying!9624 thiss!42308))) (map!10276 (v!42497 (underlying!9623 (v!42498 (underlying!9624 thiss!42308))))))))

(declare-fun bs!605552 () Bool)

(assert (= bs!605552 d!1268911))

(declare-fun m!4907419 () Bool)

(assert (=> bs!605552 m!4907419))

(assert (=> b!4314046 d!1268911))

(declare-fun d!1268913 () Bool)

(declare-fun lt!1533760 () ListMap!1745)

(assert (=> d!1268913 (invariantList!584 (toList!2465 lt!1533760))))

(assert (=> d!1268913 (= lt!1533760 (extractMap!343 (toList!2464 (map!10274 (v!42498 (underlying!9624 thiss!42308))))))))

(assert (=> d!1268913 (valid!3695 thiss!42308)))

(assert (=> d!1268913 (= (map!10275 thiss!42308) lt!1533760)))

(declare-fun bs!605553 () Bool)

(assert (= bs!605553 d!1268913))

(declare-fun m!4907421 () Bool)

(assert (=> bs!605553 m!4907421))

(assert (=> bs!605553 m!4907249))

(assert (=> bs!605553 m!4907381))

(assert (=> bs!605553 m!4907255))

(assert (=> b!4314046 d!1268913))

(declare-fun d!1268915 () Bool)

(assert (=> d!1268915 (= (array_inv!5447 (_keys!4997 (v!42497 (underlying!9623 (v!42498 (underlying!9624 thiss!42308)))))) (bvsge (size!35618 (_keys!4997 (v!42497 (underlying!9623 (v!42498 (underlying!9624 thiss!42308)))))) #b00000000000000000000000000000000))))

(assert (=> b!4314038 d!1268915))

(declare-fun d!1268917 () Bool)

(assert (=> d!1268917 (= (array_inv!5448 (_values!4978 (v!42497 (underlying!9623 (v!42498 (underlying!9624 thiss!42308)))))) (bvsge (size!35619 (_values!4978 (v!42497 (underlying!9623 (v!42498 (underlying!9624 thiss!42308)))))) #b00000000000000000000000000000000))))

(assert (=> b!4314038 d!1268917))

(declare-fun d!1268919 () Bool)

(declare-fun res!1768228 () Bool)

(declare-fun e!2683484 () Bool)

(assert (=> d!1268919 (=> res!1768228 e!2683484)))

(assert (=> d!1268919 (= res!1768228 (and ((_ is Cons!48266) lt!1533621) (= (_1!26707 (h!53713 lt!1533621)) key!2048)))))

(assert (=> d!1268919 (= (containsKey!351 lt!1533621 key!2048) e!2683484)))

(declare-fun b!4314209 () Bool)

(declare-fun e!2683485 () Bool)

(assert (=> b!4314209 (= e!2683484 e!2683485)))

(declare-fun res!1768229 () Bool)

(assert (=> b!4314209 (=> (not res!1768229) (not e!2683485))))

(assert (=> b!4314209 (= res!1768229 ((_ is Cons!48266) lt!1533621))))

(declare-fun b!4314210 () Bool)

(assert (=> b!4314210 (= e!2683485 (containsKey!351 (t!355225 lt!1533621) key!2048))))

(assert (= (and d!1268919 (not res!1768228)) b!4314209))

(assert (= (and b!4314209 res!1768229) b!4314210))

(declare-fun m!4907423 () Bool)

(assert (=> b!4314210 m!4907423))

(assert (=> b!4314049 d!1268919))

(declare-fun bs!605554 () Bool)

(declare-fun d!1268921 () Bool)

(assert (= bs!605554 (and d!1268921 b!4314050)))

(declare-fun lambda!133272 () Int)

(assert (=> bs!605554 (not (= lambda!133272 lambda!133257))))

(declare-fun bs!605555 () Bool)

(assert (= bs!605555 (and d!1268921 d!1268901)))

(assert (=> bs!605555 (not (= lambda!133272 lambda!133260))))

(declare-fun bs!605556 () Bool)

(assert (= bs!605556 (and d!1268921 b!4314164)))

(assert (=> bs!605556 (not (= lambda!133272 lambda!133266))))

(declare-fun bs!605557 () Bool)

(assert (= bs!605557 (and d!1268921 b!4314204)))

(assert (=> bs!605557 (not (= lambda!133272 lambda!133269))))

(assert (=> d!1268921 true))

(assert (=> d!1268921 (= (allKeysSameHashInMap!358 lt!1533620 (hashF!6789 thiss!42308)) (forall!8764 (toList!2464 lt!1533620) lambda!133272))))

(declare-fun bs!605558 () Bool)

(assert (= bs!605558 d!1268921))

(declare-fun m!4907425 () Bool)

(assert (=> bs!605558 m!4907425))

(assert (=> b!4314039 d!1268921))

(declare-fun bs!605559 () Bool)

(declare-fun d!1268923 () Bool)

(assert (= bs!605559 (and d!1268923 d!1268921)))

(declare-fun lambda!133277 () Int)

(assert (=> bs!605559 (not (= lambda!133277 lambda!133272))))

(declare-fun bs!605560 () Bool)

(assert (= bs!605560 (and d!1268923 d!1268901)))

(assert (=> bs!605560 (= lambda!133277 lambda!133260)))

(declare-fun bs!605561 () Bool)

(assert (= bs!605561 (and d!1268923 b!4314164)))

(assert (=> bs!605561 (= lambda!133277 lambda!133266)))

(declare-fun bs!605562 () Bool)

(assert (= bs!605562 (and d!1268923 b!4314050)))

(assert (=> bs!605562 (= lambda!133277 lambda!133257)))

(declare-fun bs!605563 () Bool)

(assert (= bs!605563 (and d!1268923 b!4314204)))

(assert (=> bs!605563 (= lambda!133277 lambda!133269)))

(declare-fun e!2683488 () Bool)

(assert (=> d!1268923 e!2683488))

(declare-fun res!1768232 () Bool)

(assert (=> d!1268923 (=> (not res!1768232) (not e!2683488))))

(declare-fun lt!1533766 () ListLongMap!1077)

(assert (=> d!1268923 (= res!1768232 (forall!8764 (toList!2464 lt!1533766) lambda!133277))))

(assert (=> d!1268923 (= lt!1533766 (+!288 lt!1533620 (tuple2!46853 lt!1533618 lt!1533628)))))

(declare-fun lt!1533765 () Unit!67452)

(declare-fun choose!26310 (ListLongMap!1077 (_ BitVec 64) List!48390 Hashable!4613) Unit!67452)

(assert (=> d!1268923 (= lt!1533765 (choose!26310 lt!1533620 lt!1533618 lt!1533628 (hashF!6789 thiss!42308)))))

(assert (=> d!1268923 (forall!8764 (toList!2464 lt!1533620) lambda!133277)))

(assert (=> d!1268923 (= (lemmaChangeOneBucketByAValidOnePreservesForallNoDuplicatesAndHash!160 lt!1533620 lt!1533618 lt!1533628 (hashF!6789 thiss!42308)) lt!1533765)))

(declare-fun b!4314215 () Bool)

(assert (=> b!4314215 (= e!2683488 (allKeysSameHashInMap!358 lt!1533766 (hashF!6789 thiss!42308)))))

(assert (= (and d!1268923 res!1768232) b!4314215))

(declare-fun m!4907427 () Bool)

(assert (=> d!1268923 m!4907427))

(assert (=> d!1268923 m!4907237))

(declare-fun m!4907429 () Bool)

(assert (=> d!1268923 m!4907429))

(declare-fun m!4907431 () Bool)

(assert (=> d!1268923 m!4907431))

(declare-fun m!4907433 () Bool)

(assert (=> b!4314215 m!4907433))

(assert (=> b!4314050 d!1268923))

(declare-fun d!1268925 () Bool)

(assert (=> d!1268925 (noDuplicateKeys!238 (removePairForKey!237 lt!1533615 key!2048))))

(declare-fun lt!1533769 () Unit!67452)

(declare-fun choose!26311 (List!48390 K!9489) Unit!67452)

(assert (=> d!1268925 (= lt!1533769 (choose!26311 lt!1533615 key!2048))))

(assert (=> d!1268925 (noDuplicateKeys!238 lt!1533615)))

(assert (=> d!1268925 (= (lemmaRemovePairForKeyPreservesNoDuplicateKeys!186 lt!1533615 key!2048) lt!1533769)))

(declare-fun bs!605564 () Bool)

(assert (= bs!605564 d!1268925))

(assert (=> bs!605564 m!4907211))

(assert (=> bs!605564 m!4907211))

(declare-fun m!4907435 () Bool)

(assert (=> bs!605564 m!4907435))

(declare-fun m!4907437 () Bool)

(assert (=> bs!605564 m!4907437))

(assert (=> bs!605564 m!4907285))

(assert (=> b!4314050 d!1268925))

(declare-fun bs!605565 () Bool)

(declare-fun d!1268927 () Bool)

(assert (= bs!605565 (and d!1268927 d!1268921)))

(declare-fun lambda!133280 () Int)

(assert (=> bs!605565 (= lambda!133280 lambda!133272)))

(declare-fun bs!605566 () Bool)

(assert (= bs!605566 (and d!1268927 d!1268923)))

(assert (=> bs!605566 (not (= lambda!133280 lambda!133277))))

(declare-fun bs!605567 () Bool)

(assert (= bs!605567 (and d!1268927 d!1268901)))

(assert (=> bs!605567 (not (= lambda!133280 lambda!133260))))

(declare-fun bs!605568 () Bool)

(assert (= bs!605568 (and d!1268927 b!4314164)))

(assert (=> bs!605568 (not (= lambda!133280 lambda!133266))))

(declare-fun bs!605569 () Bool)

(assert (= bs!605569 (and d!1268927 b!4314050)))

(assert (=> bs!605569 (not (= lambda!133280 lambda!133257))))

(declare-fun bs!605570 () Bool)

(assert (= bs!605570 (and d!1268927 b!4314204)))

(assert (=> bs!605570 (not (= lambda!133280 lambda!133269))))

(assert (=> d!1268927 true))

(assert (=> d!1268927 (allKeysSameHash!211 lt!1533615 lt!1533618 (hashF!6789 thiss!42308))))

(declare-fun lt!1533772 () Unit!67452)

(declare-fun choose!26312 (List!48391 (_ BitVec 64) List!48390 Hashable!4613) Unit!67452)

(assert (=> d!1268927 (= lt!1533772 (choose!26312 (toList!2464 lt!1533620) lt!1533618 lt!1533615 (hashF!6789 thiss!42308)))))

(assert (=> d!1268927 (forall!8764 (toList!2464 lt!1533620) lambda!133280)))

(assert (=> d!1268927 (= (lemmaInLongMapAllKeySameHashThenForTuple!198 (toList!2464 lt!1533620) lt!1533618 lt!1533615 (hashF!6789 thiss!42308)) lt!1533772)))

(declare-fun bs!605571 () Bool)

(assert (= bs!605571 d!1268927))

(assert (=> bs!605571 m!4907225))

(declare-fun m!4907439 () Bool)

(assert (=> bs!605571 m!4907439))

(declare-fun m!4907441 () Bool)

(assert (=> bs!605571 m!4907441))

(assert (=> b!4314050 d!1268927))

(declare-fun bs!605572 () Bool)

(declare-fun d!1268929 () Bool)

(assert (= bs!605572 (and d!1268929 d!1268903)))

(declare-fun lambda!133281 () Int)

(assert (=> bs!605572 (= lambda!133281 lambda!133263)))

(assert (=> d!1268929 true))

(assert (=> d!1268929 true))

(assert (=> d!1268929 (= (allKeysSameHash!211 lt!1533621 lt!1533618 (hashF!6789 thiss!42308)) (forall!8765 lt!1533621 lambda!133281))))

(declare-fun bs!605573 () Bool)

(assert (= bs!605573 d!1268929))

(declare-fun m!4907443 () Bool)

(assert (=> bs!605573 m!4907443))

(assert (=> b!4314050 d!1268929))

(declare-fun d!1268931 () Bool)

(declare-fun res!1768237 () Bool)

(declare-fun e!2683493 () Bool)

(assert (=> d!1268931 (=> res!1768237 e!2683493)))

(assert (=> d!1268931 (= res!1768237 ((_ is Nil!48267) (toList!2464 lt!1533617)))))

(assert (=> d!1268931 (= (forall!8764 (toList!2464 lt!1533617) lambda!133257) e!2683493)))

(declare-fun b!4314220 () Bool)

(declare-fun e!2683494 () Bool)

(assert (=> b!4314220 (= e!2683493 e!2683494)))

(declare-fun res!1768238 () Bool)

(assert (=> b!4314220 (=> (not res!1768238) (not e!2683494))))

(assert (=> b!4314220 (= res!1768238 (dynLambda!20461 lambda!133257 (h!53714 (toList!2464 lt!1533617))))))

(declare-fun b!4314221 () Bool)

(assert (=> b!4314221 (= e!2683494 (forall!8764 (t!355226 (toList!2464 lt!1533617)) lambda!133257))))

(assert (= (and d!1268931 (not res!1768237)) b!4314220))

(assert (= (and b!4314220 res!1768238) b!4314221))

(declare-fun b_lambda!126847 () Bool)

(assert (=> (not b_lambda!126847) (not b!4314220)))

(declare-fun m!4907445 () Bool)

(assert (=> b!4314220 m!4907445))

(declare-fun m!4907447 () Bool)

(assert (=> b!4314221 m!4907447))

(assert (=> b!4314050 d!1268931))

(declare-fun bs!605574 () Bool)

(declare-fun d!1268933 () Bool)

(assert (= bs!605574 (and d!1268933 d!1268903)))

(declare-fun lambda!133282 () Int)

(assert (=> bs!605574 (= lambda!133282 lambda!133263)))

(declare-fun bs!605575 () Bool)

(assert (= bs!605575 (and d!1268933 d!1268929)))

(assert (=> bs!605575 (= lambda!133282 lambda!133281)))

(assert (=> d!1268933 true))

(assert (=> d!1268933 true))

(assert (=> d!1268933 (= (allKeysSameHash!211 lt!1533615 lt!1533618 (hashF!6789 thiss!42308)) (forall!8765 lt!1533615 lambda!133282))))

(declare-fun bs!605576 () Bool)

(assert (= bs!605576 d!1268933))

(declare-fun m!4907449 () Bool)

(assert (=> bs!605576 m!4907449))

(assert (=> b!4314050 d!1268933))

(declare-fun d!1268935 () Bool)

(assert (=> d!1268935 (allKeysSameHash!211 (removePairForKey!237 lt!1533615 key!2048) lt!1533618 (hashF!6789 thiss!42308))))

(declare-fun lt!1533775 () Unit!67452)

(declare-fun choose!26313 (List!48390 K!9489 (_ BitVec 64) Hashable!4613) Unit!67452)

(assert (=> d!1268935 (= lt!1533775 (choose!26313 lt!1533615 key!2048 lt!1533618 (hashF!6789 thiss!42308)))))

(assert (=> d!1268935 (noDuplicateKeys!238 lt!1533615)))

(assert (=> d!1268935 (= (lemmaRemovePairForKeyPreservesHash!191 lt!1533615 key!2048 lt!1533618 (hashF!6789 thiss!42308)) lt!1533775)))

(declare-fun bs!605577 () Bool)

(assert (= bs!605577 d!1268935))

(assert (=> bs!605577 m!4907211))

(assert (=> bs!605577 m!4907211))

(declare-fun m!4907451 () Bool)

(assert (=> bs!605577 m!4907451))

(declare-fun m!4907453 () Bool)

(assert (=> bs!605577 m!4907453))

(assert (=> bs!605577 m!4907285))

(assert (=> b!4314050 d!1268935))

(declare-fun d!1268937 () Bool)

(declare-fun e!2683497 () Bool)

(assert (=> d!1268937 e!2683497))

(declare-fun res!1768243 () Bool)

(assert (=> d!1268937 (=> (not res!1768243) (not e!2683497))))

(declare-fun lt!1533784 () ListLongMap!1077)

(assert (=> d!1268937 (= res!1768243 (contains!10260 lt!1533784 (_1!26708 (tuple2!46853 lt!1533618 lt!1533628))))))

(declare-fun lt!1533785 () List!48391)

(assert (=> d!1268937 (= lt!1533784 (ListLongMap!1078 lt!1533785))))

(declare-fun lt!1533786 () Unit!67452)

(declare-fun lt!1533787 () Unit!67452)

(assert (=> d!1268937 (= lt!1533786 lt!1533787)))

(assert (=> d!1268937 (= (getValueByKey!271 lt!1533785 (_1!26708 (tuple2!46853 lt!1533618 lt!1533628))) (Some!10256 (_2!26708 (tuple2!46853 lt!1533618 lt!1533628))))))

(declare-fun lemmaContainsTupThenGetReturnValue!81 (List!48391 (_ BitVec 64) List!48390) Unit!67452)

(assert (=> d!1268937 (= lt!1533787 (lemmaContainsTupThenGetReturnValue!81 lt!1533785 (_1!26708 (tuple2!46853 lt!1533618 lt!1533628)) (_2!26708 (tuple2!46853 lt!1533618 lt!1533628))))))

(declare-fun insertStrictlySorted!45 (List!48391 (_ BitVec 64) List!48390) List!48391)

(assert (=> d!1268937 (= lt!1533785 (insertStrictlySorted!45 (toList!2464 lt!1533620) (_1!26708 (tuple2!46853 lt!1533618 lt!1533628)) (_2!26708 (tuple2!46853 lt!1533618 lt!1533628))))))

(assert (=> d!1268937 (= (+!288 lt!1533620 (tuple2!46853 lt!1533618 lt!1533628)) lt!1533784)))

(declare-fun b!4314226 () Bool)

(declare-fun res!1768244 () Bool)

(assert (=> b!4314226 (=> (not res!1768244) (not e!2683497))))

(assert (=> b!4314226 (= res!1768244 (= (getValueByKey!271 (toList!2464 lt!1533784) (_1!26708 (tuple2!46853 lt!1533618 lt!1533628))) (Some!10256 (_2!26708 (tuple2!46853 lt!1533618 lt!1533628)))))))

(declare-fun b!4314227 () Bool)

(assert (=> b!4314227 (= e!2683497 (contains!10263 (toList!2464 lt!1533784) (tuple2!46853 lt!1533618 lt!1533628)))))

(assert (= (and d!1268937 res!1768243) b!4314226))

(assert (= (and b!4314226 res!1768244) b!4314227))

(declare-fun m!4907455 () Bool)

(assert (=> d!1268937 m!4907455))

(declare-fun m!4907457 () Bool)

(assert (=> d!1268937 m!4907457))

(declare-fun m!4907459 () Bool)

(assert (=> d!1268937 m!4907459))

(declare-fun m!4907461 () Bool)

(assert (=> d!1268937 m!4907461))

(declare-fun m!4907463 () Bool)

(assert (=> b!4314226 m!4907463))

(declare-fun m!4907465 () Bool)

(assert (=> b!4314227 m!4907465))

(assert (=> b!4314050 d!1268937))

(declare-fun d!1268939 () Bool)

(declare-fun res!1768245 () Bool)

(declare-fun e!2683498 () Bool)

(assert (=> d!1268939 (=> res!1768245 e!2683498)))

(assert (=> d!1268939 (= res!1768245 (not ((_ is Cons!48266) lt!1533621)))))

(assert (=> d!1268939 (= (noDuplicateKeys!238 lt!1533621) e!2683498)))

(declare-fun b!4314228 () Bool)

(declare-fun e!2683499 () Bool)

(assert (=> b!4314228 (= e!2683498 e!2683499)))

(declare-fun res!1768246 () Bool)

(assert (=> b!4314228 (=> (not res!1768246) (not e!2683499))))

(assert (=> b!4314228 (= res!1768246 (not (containsKey!351 (t!355225 lt!1533621) (_1!26707 (h!53713 lt!1533621)))))))

(declare-fun b!4314229 () Bool)

(assert (=> b!4314229 (= e!2683499 (noDuplicateKeys!238 (t!355225 lt!1533621)))))

(assert (= (and d!1268939 (not res!1768245)) b!4314228))

(assert (= (and b!4314228 res!1768246) b!4314229))

(declare-fun m!4907467 () Bool)

(assert (=> b!4314228 m!4907467))

(declare-fun m!4907469 () Bool)

(assert (=> b!4314229 m!4907469))

(assert (=> b!4314050 d!1268939))

(declare-fun d!1268941 () Bool)

(declare-fun res!1768247 () Bool)

(declare-fun e!2683500 () Bool)

(assert (=> d!1268941 (=> res!1768247 e!2683500)))

(assert (=> d!1268941 (= res!1768247 ((_ is Nil!48267) (toList!2464 lt!1533620)))))

(assert (=> d!1268941 (= (forall!8764 (toList!2464 lt!1533620) lambda!133257) e!2683500)))

(declare-fun b!4314230 () Bool)

(declare-fun e!2683501 () Bool)

(assert (=> b!4314230 (= e!2683500 e!2683501)))

(declare-fun res!1768248 () Bool)

(assert (=> b!4314230 (=> (not res!1768248) (not e!2683501))))

(assert (=> b!4314230 (= res!1768248 (dynLambda!20461 lambda!133257 (h!53714 (toList!2464 lt!1533620))))))

(declare-fun b!4314231 () Bool)

(assert (=> b!4314231 (= e!2683501 (forall!8764 (t!355226 (toList!2464 lt!1533620)) lambda!133257))))

(assert (= (and d!1268941 (not res!1768247)) b!4314230))

(assert (= (and b!4314230 res!1768248) b!4314231))

(declare-fun b_lambda!126849 () Bool)

(assert (=> (not b_lambda!126849) (not b!4314230)))

(declare-fun m!4907471 () Bool)

(assert (=> b!4314230 m!4907471))

(declare-fun m!4907473 () Bool)

(assert (=> b!4314231 m!4907473))

(assert (=> b!4314050 d!1268941))

(declare-fun bs!605578 () Bool)

(declare-fun d!1268943 () Bool)

(assert (= bs!605578 (and d!1268943 d!1268927)))

(declare-fun lambda!133283 () Int)

(assert (=> bs!605578 (= lambda!133283 lambda!133280)))

(declare-fun bs!605579 () Bool)

(assert (= bs!605579 (and d!1268943 d!1268921)))

(assert (=> bs!605579 (= lambda!133283 lambda!133272)))

(declare-fun bs!605580 () Bool)

(assert (= bs!605580 (and d!1268943 d!1268923)))

(assert (=> bs!605580 (not (= lambda!133283 lambda!133277))))

(declare-fun bs!605581 () Bool)

(assert (= bs!605581 (and d!1268943 d!1268901)))

(assert (=> bs!605581 (not (= lambda!133283 lambda!133260))))

(declare-fun bs!605582 () Bool)

(assert (= bs!605582 (and d!1268943 b!4314164)))

(assert (=> bs!605582 (not (= lambda!133283 lambda!133266))))

(declare-fun bs!605583 () Bool)

(assert (= bs!605583 (and d!1268943 b!4314050)))

(assert (=> bs!605583 (not (= lambda!133283 lambda!133257))))

(declare-fun bs!605584 () Bool)

(assert (= bs!605584 (and d!1268943 b!4314204)))

(assert (=> bs!605584 (not (= lambda!133283 lambda!133269))))

(assert (=> d!1268943 true))

(assert (=> d!1268943 (= (allKeysSameHashInMap!358 lt!1533617 (hashF!6789 thiss!42308)) (forall!8764 (toList!2464 lt!1533617) lambda!133283))))

(declare-fun bs!605585 () Bool)

(assert (= bs!605585 d!1268943))

(declare-fun m!4907475 () Bool)

(assert (=> bs!605585 m!4907475))

(assert (=> b!4314040 d!1268943))

(declare-fun e!2683504 () Bool)

(declare-fun b!4314236 () Bool)

(declare-fun tp!1325459 () Bool)

(assert (=> b!4314236 (= e!2683504 (and tp_is_empty!23893 tp_is_empty!23895 tp!1325459))))

(assert (=> b!4314048 (= tp!1325452 e!2683504)))

(assert (= (and b!4314048 ((_ is Cons!48266) mapDefault!20962)) b!4314236))

(declare-fun e!2683505 () Bool)

(declare-fun tp!1325460 () Bool)

(declare-fun b!4314237 () Bool)

(assert (=> b!4314237 (= e!2683505 (and tp_is_empty!23893 tp_is_empty!23895 tp!1325460))))

(assert (=> b!4314038 (= tp!1325453 e!2683505)))

(assert (= (and b!4314038 ((_ is Cons!48266) (zeroValue!4956 (v!42497 (underlying!9623 (v!42498 (underlying!9624 thiss!42308))))))) b!4314237))

(declare-fun tp!1325461 () Bool)

(declare-fun e!2683506 () Bool)

(declare-fun b!4314238 () Bool)

(assert (=> b!4314238 (= e!2683506 (and tp_is_empty!23893 tp_is_empty!23895 tp!1325461))))

(assert (=> b!4314038 (= tp!1325450 e!2683506)))

(assert (= (and b!4314038 ((_ is Cons!48266) (minValue!4956 (v!42497 (underlying!9623 (v!42498 (underlying!9624 thiss!42308))))))) b!4314238))

(declare-fun e!2683512 () Bool)

(declare-fun b!4314245 () Bool)

(declare-fun tp!1325469 () Bool)

(assert (=> b!4314245 (= e!2683512 (and tp_is_empty!23893 tp_is_empty!23895 tp!1325469))))

(declare-fun tp!1325468 () Bool)

(declare-fun e!2683511 () Bool)

(declare-fun b!4314246 () Bool)

(assert (=> b!4314246 (= e!2683511 (and tp_is_empty!23893 tp_is_empty!23895 tp!1325468))))

(declare-fun mapNonEmpty!20965 () Bool)

(declare-fun mapRes!20965 () Bool)

(declare-fun tp!1325470 () Bool)

(assert (=> mapNonEmpty!20965 (= mapRes!20965 (and tp!1325470 e!2683512))))

(declare-fun mapRest!20965 () (Array (_ BitVec 32) List!48390))

(declare-fun mapValue!20965 () List!48390)

(declare-fun mapKey!20965 () (_ BitVec 32))

(assert (=> mapNonEmpty!20965 (= mapRest!20962 (store mapRest!20965 mapKey!20965 mapValue!20965))))

(declare-fun condMapEmpty!20965 () Bool)

(declare-fun mapDefault!20965 () List!48390)

(assert (=> mapNonEmpty!20962 (= condMapEmpty!20965 (= mapRest!20962 ((as const (Array (_ BitVec 32) List!48390)) mapDefault!20965)))))

(assert (=> mapNonEmpty!20962 (= tp!1325451 (and e!2683511 mapRes!20965))))

(declare-fun mapIsEmpty!20965 () Bool)

(assert (=> mapIsEmpty!20965 mapRes!20965))

(assert (= (and mapNonEmpty!20962 condMapEmpty!20965) mapIsEmpty!20965))

(assert (= (and mapNonEmpty!20962 (not condMapEmpty!20965)) mapNonEmpty!20965))

(assert (= (and mapNonEmpty!20965 ((_ is Cons!48266) mapValue!20965)) b!4314245))

(assert (= (and mapNonEmpty!20962 ((_ is Cons!48266) mapDefault!20965)) b!4314246))

(declare-fun m!4907477 () Bool)

(assert (=> mapNonEmpty!20965 m!4907477))

(declare-fun e!2683513 () Bool)

(declare-fun b!4314247 () Bool)

(declare-fun tp!1325471 () Bool)

(assert (=> b!4314247 (= e!2683513 (and tp_is_empty!23893 tp_is_empty!23895 tp!1325471))))

(assert (=> mapNonEmpty!20962 (= tp!1325455 e!2683513)))

(assert (= (and mapNonEmpty!20962 ((_ is Cons!48266) mapValue!20962)) b!4314247))

(declare-fun b_lambda!126851 () Bool)

(assert (= b_lambda!126849 (or b!4314050 b_lambda!126851)))

(declare-fun bs!605586 () Bool)

(declare-fun d!1268945 () Bool)

(assert (= bs!605586 (and d!1268945 b!4314050)))

(assert (=> bs!605586 (= (dynLambda!20461 lambda!133257 (h!53714 (toList!2464 lt!1533620))) (noDuplicateKeys!238 (_2!26708 (h!53714 (toList!2464 lt!1533620)))))))

(declare-fun m!4907479 () Bool)

(assert (=> bs!605586 m!4907479))

(assert (=> b!4314230 d!1268945))

(declare-fun b_lambda!126853 () Bool)

(assert (= b_lambda!126845 (or b!4314050 b_lambda!126853)))

(declare-fun bs!605587 () Bool)

(declare-fun d!1268947 () Bool)

(assert (= bs!605587 (and d!1268947 b!4314050)))

(assert (=> bs!605587 (= (dynLambda!20461 lambda!133257 lt!1533627) (noDuplicateKeys!238 (_2!26708 lt!1533627)))))

(declare-fun m!4907481 () Bool)

(assert (=> bs!605587 m!4907481))

(assert (=> d!1268897 d!1268947))

(declare-fun b_lambda!126855 () Bool)

(assert (= b_lambda!126843 (or (and b!4314038 b_free!128747) b_lambda!126855)))

(declare-fun b_lambda!126857 () Bool)

(assert (= b_lambda!126847 (or b!4314050 b_lambda!126857)))

(declare-fun bs!605588 () Bool)

(declare-fun d!1268949 () Bool)

(assert (= bs!605588 (and d!1268949 b!4314050)))

(assert (=> bs!605588 (= (dynLambda!20461 lambda!133257 (h!53714 (toList!2464 lt!1533617))) (noDuplicateKeys!238 (_2!26708 (h!53714 (toList!2464 lt!1533617)))))))

(declare-fun m!4907483 () Bool)

(assert (=> bs!605588 m!4907483))

(assert (=> b!4314220 d!1268949))

(check-sat (not bm!298444) (not b_lambda!126857) (not b!4314122) (not b!4314148) (not d!1268937) (not b!4314227) (not b!4314226) (not d!1268901) (not b!4314146) (not b!4314149) (not d!1268935) (not bm!298431) (not b!4314113) tp_is_empty!23895 (not b!4314210) (not bm!298445) (not d!1268881) (not d!1268913) (not b!4314143) (not b_lambda!126851) (not b!4314096) (not b!4314072) b_and!340219 (not d!1268893) (not d!1268883) (not b!4314231) (not b!4314197) (not b!4314141) (not b!4314221) (not b!4314204) (not b!4314245) (not d!1268889) (not d!1268905) (not b!4314170) (not b!4314215) (not bm!298448) b_and!340217 (not tb!257321) (not b!4314247) (not b!4314075) (not bm!298447) (not b!4314109) (not d!1268921) (not bs!605586) (not bm!298449) (not d!1268923) (not d!1268879) (not b!4314104) (not b!4314090) (not b!4314078) (not b!4314237) (not b!4314119) (not d!1268929) (not b!4314238) (not bm!298446) (not d!1268927) (not d!1268943) (not bm!298427) (not d!1268903) (not b!4314165) (not b!4314236) (not d!1268899) (not b!4314076) (not d!1268887) (not b!4314198) (not bm!298428) (not d!1268911) (not b_next!129453) (not b!4314106) (not b!4314073) (not b!4314171) (not b!4314164) (not b!4314228) (not d!1268925) (not b!4314142) (not d!1268909) (not bs!605587) (not b_lambda!126853) tp_is_empty!23893 (not b!4314229) (not d!1268885) (not b_next!129451) (not d!1268891) (not d!1268897) (not bs!605588) (not d!1268895) (not b!4314202) (not b!4314246) (not b_lambda!126855) (not d!1268933) (not mapNonEmpty!20965) (not b!4314154) (not b!4314194) (not b!4314144))
(check-sat b_and!340219 b_and!340217 (not b_next!129453) (not b_next!129451))
