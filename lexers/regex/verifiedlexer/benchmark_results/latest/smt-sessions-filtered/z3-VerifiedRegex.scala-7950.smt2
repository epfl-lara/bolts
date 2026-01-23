; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!413488 () Bool)

(assert start!413488)

(declare-fun b!4304318 () Bool)

(declare-fun b_free!128283 () Bool)

(declare-fun b_next!128987 () Bool)

(assert (=> b!4304318 (= b_free!128283 (not b_next!128987))))

(declare-fun tp!1322600 () Bool)

(declare-fun b_and!339679 () Bool)

(assert (=> b!4304318 (= tp!1322600 b_and!339679)))

(declare-fun b!4304313 () Bool)

(declare-fun b_free!128285 () Bool)

(declare-fun b_next!128989 () Bool)

(assert (=> b!4304313 (= b_free!128285 (not b_next!128989))))

(declare-fun tp!1322597 () Bool)

(declare-fun b_and!339681 () Bool)

(assert (=> b!4304313 (= tp!1322597 b_and!339681)))

(declare-fun b!4304311 () Bool)

(declare-fun e!2676112 () Bool)

(declare-fun e!2676121 () Bool)

(assert (=> b!4304311 (= e!2676112 e!2676121)))

(declare-fun b!4304312 () Bool)

(declare-fun e!2676113 () Bool)

(declare-fun tp!1322599 () Bool)

(declare-fun mapRes!20533 () Bool)

(assert (=> b!4304312 (= e!2676113 (and tp!1322599 mapRes!20533))))

(declare-fun condMapEmpty!20533 () Bool)

(declare-datatypes ((V!9401 0))(
  ( (V!9402 (val!15617 Int)) )
))
(declare-datatypes ((K!9199 0))(
  ( (K!9200 (val!15618 Int)) )
))
(declare-datatypes ((tuple2!46204 0))(
  ( (tuple2!46205 (_1!26381 K!9199) (_2!26381 V!9401)) )
))
(declare-datatypes ((List!48173 0))(
  ( (Nil!48049) (Cons!48049 (h!53475 tuple2!46204) (t!354954 List!48173)) )
))
(declare-datatypes ((array!16458 0))(
  ( (array!16459 (arr!7347 (Array (_ BitVec 32) (_ BitVec 64))) (size!35386 (_ BitVec 32))) )
))
(declare-datatypes ((Hashable!4497 0))(
  ( (HashableExt!4496 (__x!29768 Int)) )
))
(declare-datatypes ((array!16460 0))(
  ( (array!16461 (arr!7348 (Array (_ BitVec 32) List!48173)) (size!35387 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!9162 0))(
  ( (LongMapFixedSize!9163 (defaultEntry!4966 Int) (mask!13100 (_ BitVec 32)) (extraKeys!4830 (_ BitVec 32)) (zeroValue!4840 List!48173) (minValue!4840 List!48173) (_size!9205 (_ BitVec 32)) (_keys!4881 array!16458) (_values!4862 array!16460) (_vacant!4642 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!18133 0))(
  ( (Cell!18134 (v!42085 LongMapFixedSize!9162)) )
))
(declare-datatypes ((MutLongMap!4581 0))(
  ( (LongMap!4581 (underlying!9391 Cell!18133)) (MutLongMapExt!4580 (__x!29769 Int)) )
))
(declare-datatypes ((Cell!18135 0))(
  ( (Cell!18136 (v!42086 MutLongMap!4581)) )
))
(declare-datatypes ((MutableMap!4487 0))(
  ( (MutableMapExt!4486 (__x!29770 Int)) (HashMap!4487 (underlying!9392 Cell!18135) (hashF!6565 Hashable!4497) (_size!9206 (_ BitVec 32)) (defaultValue!4658 Int)) )
))
(declare-fun thiss!42308 () MutableMap!4487)

(declare-fun mapDefault!20533 () List!48173)

(assert (=> b!4304312 (= condMapEmpty!20533 (= (arr!7348 (_values!4862 (v!42085 (underlying!9391 (v!42086 (underlying!9392 thiss!42308)))))) ((as const (Array (_ BitVec 32) List!48173)) mapDefault!20533)))))

(declare-fun e!2676111 () Bool)

(declare-fun e!2676117 () Bool)

(assert (=> b!4304313 (= e!2676111 (and e!2676117 tp!1322597))))

(declare-fun res!1764251 () Bool)

(declare-fun e!2676116 () Bool)

(assert (=> start!413488 (=> (not res!1764251) (not e!2676116))))

(get-info :version)

(assert (=> start!413488 (= res!1764251 ((_ is HashMap!4487) thiss!42308))))

(assert (=> start!413488 e!2676116))

(assert (=> start!413488 e!2676111))

(declare-fun tp_is_empty!23463 () Bool)

(assert (=> start!413488 tp_is_empty!23463))

(declare-fun tp_is_empty!23465 () Bool)

(assert (=> start!413488 tp_is_empty!23465))

(declare-fun b!4304314 () Bool)

(declare-fun e!2676114 () Bool)

(assert (=> b!4304314 (= e!2676114 e!2676112)))

(declare-fun b!4304315 () Bool)

(declare-fun e!2676110 () Bool)

(assert (=> b!4304315 (= e!2676116 e!2676110)))

(declare-fun res!1764254 () Bool)

(assert (=> b!4304315 (=> (not res!1764254) (not e!2676110))))

(declare-fun key!2048 () K!9199)

(declare-fun contains!9983 (MutableMap!4487 K!9199) Bool)

(assert (=> b!4304315 (= res!1764254 (contains!9983 thiss!42308 key!2048))))

(declare-datatypes ((tuple2!46206 0))(
  ( (tuple2!46207 (_1!26382 (_ BitVec 64)) (_2!26382 List!48173)) )
))
(declare-datatypes ((List!48174 0))(
  ( (Nil!48050) (Cons!48050 (h!53476 tuple2!46206) (t!354955 List!48174)) )
))
(declare-datatypes ((ListLongMap!889 0))(
  ( (ListLongMap!890 (toList!2280 List!48174)) )
))
(declare-fun lt!1525910 () ListLongMap!889)

(declare-fun map!10017 (MutLongMap!4581) ListLongMap!889)

(assert (=> b!4304315 (= lt!1525910 (map!10017 (v!42086 (underlying!9392 thiss!42308))))))

(declare-datatypes ((ListMap!1565 0))(
  ( (ListMap!1566 (toList!2281 List!48173)) )
))
(declare-fun lt!1525918 () ListMap!1565)

(declare-fun map!10018 (MutableMap!4487) ListMap!1565)

(assert (=> b!4304315 (= lt!1525918 (map!10018 thiss!42308))))

(declare-fun b!4304316 () Bool)

(declare-fun res!1764253 () Bool)

(assert (=> b!4304316 (=> (not res!1764253) (not e!2676116))))

(declare-fun valid!3567 (MutableMap!4487) Bool)

(assert (=> b!4304316 (= res!1764253 (valid!3567 thiss!42308))))

(declare-fun mapIsEmpty!20533 () Bool)

(assert (=> mapIsEmpty!20533 mapRes!20533))

(declare-fun b!4304317 () Bool)

(declare-fun res!1764248 () Bool)

(declare-fun e!2676122 () Bool)

(assert (=> b!4304317 (=> (not res!1764248) (not e!2676122))))

(declare-fun lt!1525916 () List!48173)

(declare-fun containsKey!276 (List!48173 K!9199) Bool)

(assert (=> b!4304317 (= res!1764248 (not (containsKey!276 lt!1525916 key!2048)))))

(declare-fun tp!1322596 () Bool)

(declare-fun tp!1322598 () Bool)

(declare-fun array_inv!5271 (array!16458) Bool)

(declare-fun array_inv!5272 (array!16460) Bool)

(assert (=> b!4304318 (= e!2676121 (and tp!1322600 tp!1322596 tp!1322598 (array_inv!5271 (_keys!4881 (v!42085 (underlying!9391 (v!42086 (underlying!9392 thiss!42308)))))) (array_inv!5272 (_values!4862 (v!42085 (underlying!9391 (v!42086 (underlying!9392 thiss!42308)))))) e!2676113))))

(declare-fun b!4304319 () Bool)

(declare-fun e!2676120 () Bool)

(declare-fun lt!1525902 () ListLongMap!889)

(declare-fun allKeysSameHashInMap!300 (ListLongMap!889 Hashable!4497) Bool)

(assert (=> b!4304319 (= e!2676120 (allKeysSameHashInMap!300 lt!1525902 (hashF!6565 thiss!42308)))))

(declare-fun b!4304320 () Bool)

(declare-fun e!2676119 () Bool)

(declare-fun lt!1525903 () ListLongMap!889)

(assert (=> b!4304320 (= e!2676119 (allKeysSameHashInMap!300 lt!1525903 (hashF!6565 thiss!42308)))))

(declare-fun b!4304321 () Bool)

(declare-fun lt!1525911 () List!48173)

(declare-fun noDuplicateKeys!182 (List!48173) Bool)

(assert (=> b!4304321 (= e!2676122 (noDuplicateKeys!182 lt!1525911))))

(declare-fun b!4304322 () Bool)

(declare-fun e!2676115 () Bool)

(assert (=> b!4304322 (= e!2676110 e!2676115)))

(declare-fun res!1764252 () Bool)

(assert (=> b!4304322 (=> (not res!1764252) (not e!2676115))))

(declare-datatypes ((tuple2!46208 0))(
  ( (tuple2!46209 (_1!26383 Bool) (_2!26383 MutLongMap!4581)) )
))
(declare-fun lt!1525919 () tuple2!46208)

(assert (=> b!4304322 (= res!1764252 (_1!26383 lt!1525919))))

(declare-fun lt!1525912 () (_ BitVec 64))

(declare-fun update!379 (MutLongMap!4581 (_ BitVec 64) List!48173) tuple2!46208)

(assert (=> b!4304322 (= lt!1525919 (update!379 (v!42086 (underlying!9392 thiss!42308)) lt!1525912 lt!1525911))))

(declare-fun lt!1525904 () tuple2!46204)

(assert (=> b!4304322 (= lt!1525911 (Cons!48049 lt!1525904 lt!1525916))))

(declare-fun lt!1525915 () List!48173)

(declare-fun removePairForKey!176 (List!48173 K!9199) List!48173)

(assert (=> b!4304322 (= lt!1525916 (removePairForKey!176 lt!1525915 key!2048))))

(declare-fun v!9179 () V!9401)

(assert (=> b!4304322 (= lt!1525904 (tuple2!46205 key!2048 v!9179))))

(declare-fun apply!10936 (MutLongMap!4581 (_ BitVec 64)) List!48173)

(assert (=> b!4304322 (= lt!1525915 (apply!10936 (v!42086 (underlying!9392 thiss!42308)) lt!1525912))))

(declare-fun hash!907 (Hashable!4497 K!9199) (_ BitVec 64))

(assert (=> b!4304322 (= lt!1525912 (hash!907 (hashF!6565 thiss!42308) key!2048))))

(declare-fun b!4304323 () Bool)

(declare-fun lt!1525913 () MutLongMap!4581)

(assert (=> b!4304323 (= e!2676117 (and e!2676114 ((_ is LongMap!4581) lt!1525913)))))

(assert (=> b!4304323 (= lt!1525913 (v!42086 (underlying!9392 thiss!42308)))))

(declare-fun b!4304324 () Bool)

(assert (=> b!4304324 (= e!2676115 (not true))))

(assert (=> b!4304324 e!2676119))

(declare-fun res!1764250 () Bool)

(assert (=> b!4304324 (=> (not res!1764250) (not e!2676119))))

(declare-fun lambda!132362 () Int)

(declare-fun forall!8680 (List!48174 Int) Bool)

(assert (=> b!4304324 (= res!1764250 (forall!8680 (toList!2280 lt!1525903) lambda!132362))))

(assert (=> b!4304324 (= lt!1525903 (map!10017 (_2!26383 lt!1525919)))))

(declare-fun lt!1525909 () ListMap!1565)

(declare-fun lt!1525908 () ListMap!1565)

(declare-fun contains!9984 (ListMap!1565 K!9199) Bool)

(assert (=> b!4304324 (= (contains!9984 lt!1525909 key!2048) (contains!9984 lt!1525908 key!2048))))

(declare-datatypes ((Unit!67064 0))(
  ( (Unit!67065) )
))
(declare-fun lt!1525914 () Unit!67064)

(declare-fun lemmaEquivalentThenSameContains!47 (ListMap!1565 ListMap!1565 K!9199) Unit!67064)

(assert (=> b!4304324 (= lt!1525914 (lemmaEquivalentThenSameContains!47 lt!1525909 lt!1525908 key!2048))))

(declare-fun +!217 (ListMap!1565 tuple2!46204) ListMap!1565)

(assert (=> b!4304324 (= lt!1525908 (+!217 lt!1525918 lt!1525904))))

(assert (=> b!4304324 (= lt!1525909 (map!10018 (HashMap!4487 (Cell!18136 (_2!26383 lt!1525919)) (hashF!6565 thiss!42308) (_size!9206 thiss!42308) (defaultValue!4658 thiss!42308))))))

(declare-fun eq!120 (ListMap!1565 ListMap!1565) Bool)

(declare-fun extractMap!296 (List!48174) ListMap!1565)

(assert (=> b!4304324 (eq!120 (extractMap!296 (toList!2280 lt!1525902)) (+!217 (extractMap!296 (toList!2280 lt!1525910)) lt!1525904))))

(declare-fun lt!1525906 () Unit!67064)

(declare-fun lemmaChangeOneBucketToUpdateAnExistingKeyUpdateThisKeyInGenMap!52 (ListLongMap!889 (_ BitVec 64) List!48173 K!9199 V!9401 Hashable!4497) Unit!67064)

(assert (=> b!4304324 (= lt!1525906 (lemmaChangeOneBucketToUpdateAnExistingKeyUpdateThisKeyInGenMap!52 lt!1525910 lt!1525912 lt!1525911 key!2048 v!9179 (hashF!6565 thiss!42308)))))

(assert (=> b!4304324 e!2676120))

(declare-fun res!1764249 () Bool)

(assert (=> b!4304324 (=> (not res!1764249) (not e!2676120))))

(assert (=> b!4304324 (= res!1764249 (forall!8680 (toList!2280 lt!1525902) lambda!132362))))

(declare-fun +!218 (ListLongMap!889 tuple2!46206) ListLongMap!889)

(assert (=> b!4304324 (= lt!1525902 (+!218 lt!1525910 (tuple2!46207 lt!1525912 lt!1525911)))))

(declare-fun lt!1525905 () Unit!67064)

(declare-fun lemmaChangeOneBucketByAValidOnePreservesForallNoDuplicatesAndHash!123 (ListLongMap!889 (_ BitVec 64) List!48173 Hashable!4497) Unit!67064)

(assert (=> b!4304324 (= lt!1525905 (lemmaChangeOneBucketByAValidOnePreservesForallNoDuplicatesAndHash!123 lt!1525910 lt!1525912 lt!1525911 (hashF!6565 thiss!42308)))))

(assert (=> b!4304324 e!2676122))

(declare-fun res!1764247 () Bool)

(assert (=> b!4304324 (=> (not res!1764247) (not e!2676122))))

(assert (=> b!4304324 (= res!1764247 (noDuplicateKeys!182 lt!1525916))))

(declare-fun lt!1525907 () Unit!67064)

(declare-fun lemmaRemovePairForKeyPreservesNoDuplicateKeys!155 (List!48173 K!9199) Unit!67064)

(assert (=> b!4304324 (= lt!1525907 (lemmaRemovePairForKeyPreservesNoDuplicateKeys!155 lt!1525915 key!2048))))

(declare-fun allKeysSameHash!152 (List!48173 (_ BitVec 64) Hashable!4497) Bool)

(assert (=> b!4304324 (allKeysSameHash!152 lt!1525916 lt!1525912 (hashF!6565 thiss!42308))))

(declare-fun lt!1525920 () Unit!67064)

(declare-fun lemmaRemovePairForKeyPreservesHash!138 (List!48173 K!9199 (_ BitVec 64) Hashable!4497) Unit!67064)

(assert (=> b!4304324 (= lt!1525920 (lemmaRemovePairForKeyPreservesHash!138 lt!1525915 key!2048 lt!1525912 (hashF!6565 thiss!42308)))))

(assert (=> b!4304324 (allKeysSameHash!152 lt!1525915 lt!1525912 (hashF!6565 thiss!42308))))

(declare-fun lt!1525917 () Unit!67064)

(declare-fun lemmaInLongMapAllKeySameHashThenForTuple!143 (List!48174 (_ BitVec 64) List!48173 Hashable!4497) Unit!67064)

(assert (=> b!4304324 (= lt!1525917 (lemmaInLongMapAllKeySameHashThenForTuple!143 (toList!2280 lt!1525910) lt!1525912 lt!1525915 (hashF!6565 thiss!42308)))))

(declare-fun mapNonEmpty!20533 () Bool)

(declare-fun tp!1322595 () Bool)

(declare-fun tp!1322594 () Bool)

(assert (=> mapNonEmpty!20533 (= mapRes!20533 (and tp!1322595 tp!1322594))))

(declare-fun mapRest!20533 () (Array (_ BitVec 32) List!48173))

(declare-fun mapKey!20533 () (_ BitVec 32))

(declare-fun mapValue!20533 () List!48173)

(assert (=> mapNonEmpty!20533 (= (arr!7348 (_values!4862 (v!42085 (underlying!9391 (v!42086 (underlying!9392 thiss!42308)))))) (store mapRest!20533 mapKey!20533 mapValue!20533))))

(assert (= (and start!413488 res!1764251) b!4304316))

(assert (= (and b!4304316 res!1764253) b!4304315))

(assert (= (and b!4304315 res!1764254) b!4304322))

(assert (= (and b!4304322 res!1764252) b!4304324))

(assert (= (and b!4304324 res!1764247) b!4304317))

(assert (= (and b!4304317 res!1764248) b!4304321))

(assert (= (and b!4304324 res!1764249) b!4304319))

(assert (= (and b!4304324 res!1764250) b!4304320))

(assert (= (and b!4304312 condMapEmpty!20533) mapIsEmpty!20533))

(assert (= (and b!4304312 (not condMapEmpty!20533)) mapNonEmpty!20533))

(assert (= b!4304318 b!4304312))

(assert (= b!4304311 b!4304318))

(assert (= b!4304314 b!4304311))

(assert (= (and b!4304323 ((_ is LongMap!4581) (v!42086 (underlying!9392 thiss!42308)))) b!4304314))

(assert (= b!4304313 b!4304323))

(assert (= (and start!413488 ((_ is HashMap!4487) thiss!42308)) b!4304313))

(declare-fun m!4897143 () Bool)

(assert (=> b!4304321 m!4897143))

(declare-fun m!4897145 () Bool)

(assert (=> b!4304315 m!4897145))

(declare-fun m!4897147 () Bool)

(assert (=> b!4304315 m!4897147))

(declare-fun m!4897149 () Bool)

(assert (=> b!4304315 m!4897149))

(declare-fun m!4897151 () Bool)

(assert (=> b!4304320 m!4897151))

(declare-fun m!4897153 () Bool)

(assert (=> b!4304322 m!4897153))

(declare-fun m!4897155 () Bool)

(assert (=> b!4304322 m!4897155))

(declare-fun m!4897157 () Bool)

(assert (=> b!4304322 m!4897157))

(declare-fun m!4897159 () Bool)

(assert (=> b!4304322 m!4897159))

(declare-fun m!4897161 () Bool)

(assert (=> b!4304318 m!4897161))

(declare-fun m!4897163 () Bool)

(assert (=> b!4304318 m!4897163))

(declare-fun m!4897165 () Bool)

(assert (=> b!4304324 m!4897165))

(declare-fun m!4897167 () Bool)

(assert (=> b!4304324 m!4897167))

(declare-fun m!4897169 () Bool)

(assert (=> b!4304324 m!4897169))

(declare-fun m!4897171 () Bool)

(assert (=> b!4304324 m!4897171))

(declare-fun m!4897173 () Bool)

(assert (=> b!4304324 m!4897173))

(declare-fun m!4897175 () Bool)

(assert (=> b!4304324 m!4897175))

(assert (=> b!4304324 m!4897165))

(declare-fun m!4897177 () Bool)

(assert (=> b!4304324 m!4897177))

(declare-fun m!4897179 () Bool)

(assert (=> b!4304324 m!4897179))

(declare-fun m!4897181 () Bool)

(assert (=> b!4304324 m!4897181))

(declare-fun m!4897183 () Bool)

(assert (=> b!4304324 m!4897183))

(declare-fun m!4897185 () Bool)

(assert (=> b!4304324 m!4897185))

(declare-fun m!4897187 () Bool)

(assert (=> b!4304324 m!4897187))

(declare-fun m!4897189 () Bool)

(assert (=> b!4304324 m!4897189))

(declare-fun m!4897191 () Bool)

(assert (=> b!4304324 m!4897191))

(declare-fun m!4897193 () Bool)

(assert (=> b!4304324 m!4897193))

(declare-fun m!4897195 () Bool)

(assert (=> b!4304324 m!4897195))

(declare-fun m!4897197 () Bool)

(assert (=> b!4304324 m!4897197))

(declare-fun m!4897199 () Bool)

(assert (=> b!4304324 m!4897199))

(declare-fun m!4897201 () Bool)

(assert (=> b!4304324 m!4897201))

(assert (=> b!4304324 m!4897201))

(assert (=> b!4304324 m!4897167))

(declare-fun m!4897203 () Bool)

(assert (=> b!4304324 m!4897203))

(declare-fun m!4897205 () Bool)

(assert (=> b!4304324 m!4897205))

(declare-fun m!4897207 () Bool)

(assert (=> b!4304317 m!4897207))

(declare-fun m!4897209 () Bool)

(assert (=> b!4304316 m!4897209))

(declare-fun m!4897211 () Bool)

(assert (=> b!4304319 m!4897211))

(declare-fun m!4897213 () Bool)

(assert (=> mapNonEmpty!20533 m!4897213))

(check-sat tp_is_empty!23463 (not b!4304316) (not b!4304312) b_and!339679 b_and!339681 (not b!4304317) (not b!4304315) (not b!4304318) tp_is_empty!23465 (not b!4304320) (not b!4304319) (not b!4304322) (not mapNonEmpty!20533) (not b_next!128989) (not b!4304321) (not b_next!128987) (not b!4304324))
(check-sat b_and!339679 b_and!339681 (not b_next!128989) (not b_next!128987))
