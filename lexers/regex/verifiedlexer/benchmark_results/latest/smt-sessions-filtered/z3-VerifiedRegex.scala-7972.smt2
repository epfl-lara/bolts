; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!413868 () Bool)

(assert start!413868)

(declare-fun b!4307227 () Bool)

(declare-fun b_free!128459 () Bool)

(declare-fun b_next!129163 () Bool)

(assert (=> b!4307227 (= b_free!128459 (not b_next!129163))))

(declare-fun tp!1323639 () Bool)

(declare-fun b_and!339867 () Bool)

(assert (=> b!4307227 (= tp!1323639 b_and!339867)))

(declare-fun b!4307235 () Bool)

(declare-fun b_free!128461 () Bool)

(declare-fun b_next!129165 () Bool)

(assert (=> b!4307235 (= b_free!128461 (not b_next!129165))))

(declare-fun tp!1323641 () Bool)

(declare-fun b_and!339869 () Bool)

(assert (=> b!4307235 (= tp!1323641 b_and!339869)))

(declare-fun e!2678346 () Bool)

(declare-fun tp!1323638 () Bool)

(declare-fun e!2678340 () Bool)

(declare-fun tp!1323642 () Bool)

(declare-datatypes ((V!9511 0))(
  ( (V!9512 (val!15705 Int)) )
))
(declare-datatypes ((K!9309 0))(
  ( (K!9310 (val!15706 Int)) )
))
(declare-datatypes ((tuple2!46412 0))(
  ( (tuple2!46413 (_1!26485 K!9309) (_2!26485 V!9511)) )
))
(declare-datatypes ((List!48251 0))(
  ( (Nil!48127) (Cons!48127 (h!53558 tuple2!46412) (t!355044 List!48251)) )
))
(declare-datatypes ((array!16650 0))(
  ( (array!16651 (arr!7435 (Array (_ BitVec 32) (_ BitVec 64))) (size!35474 (_ BitVec 32))) )
))
(declare-datatypes ((Hashable!4541 0))(
  ( (HashableExt!4540 (__x!29900 Int)) )
))
(declare-datatypes ((array!16652 0))(
  ( (array!16653 (arr!7436 (Array (_ BitVec 32) List!48251)) (size!35475 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!9250 0))(
  ( (LongMapFixedSize!9251 (defaultEntry!5010 Int) (mask!13166 (_ BitVec 32)) (extraKeys!4874 (_ BitVec 32)) (zeroValue!4884 List!48251) (minValue!4884 List!48251) (_size!9293 (_ BitVec 32)) (_keys!4925 array!16650) (_values!4906 array!16652) (_vacant!4686 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!18309 0))(
  ( (Cell!18310 (v!42214 LongMapFixedSize!9250)) )
))
(declare-datatypes ((MutLongMap!4625 0))(
  ( (LongMap!4625 (underlying!9479 Cell!18309)) (MutLongMapExt!4624 (__x!29901 Int)) )
))
(declare-datatypes ((Cell!18311 0))(
  ( (Cell!18312 (v!42215 MutLongMap!4625)) )
))
(declare-datatypes ((MutableMap!4531 0))(
  ( (MutableMapExt!4530 (__x!29902 Int)) (HashMap!4531 (underlying!9480 Cell!18311) (hashF!6639 Hashable!4541) (_size!9294 (_ BitVec 32)) (defaultValue!4702 Int)) )
))
(declare-fun thiss!42308 () MutableMap!4531)

(declare-fun array_inv!5331 (array!16650) Bool)

(declare-fun array_inv!5332 (array!16652) Bool)

(assert (=> b!4307227 (= e!2678340 (and tp!1323639 tp!1323642 tp!1323638 (array_inv!5331 (_keys!4925 (v!42214 (underlying!9479 (v!42215 (underlying!9480 thiss!42308)))))) (array_inv!5332 (_values!4906 (v!42214 (underlying!9479 (v!42215 (underlying!9480 thiss!42308)))))) e!2678346))))

(declare-fun b!4307228 () Bool)

(declare-fun e!2678342 () Bool)

(declare-datatypes ((tuple2!46414 0))(
  ( (tuple2!46415 (_1!26486 (_ BitVec 64)) (_2!26486 List!48251)) )
))
(declare-datatypes ((List!48252 0))(
  ( (Nil!48128) (Cons!48128 (h!53559 tuple2!46414) (t!355045 List!48252)) )
))
(declare-datatypes ((ListLongMap!955 0))(
  ( (ListLongMap!956 (toList!2343 List!48252)) )
))
(declare-fun lt!1527973 () ListLongMap!955)

(declare-fun allKeysSameHashInMap!318 (ListLongMap!955 Hashable!4541) Bool)

(assert (=> b!4307228 (= e!2678342 (allKeysSameHashInMap!318 lt!1527973 (hashF!6639 thiss!42308)))))

(declare-fun res!1765410 () Bool)

(declare-fun e!2678343 () Bool)

(assert (=> start!413868 (=> (not res!1765410) (not e!2678343))))

(get-info :version)

(assert (=> start!413868 (= res!1765410 ((_ is HashMap!4531) thiss!42308))))

(assert (=> start!413868 e!2678343))

(declare-fun e!2678348 () Bool)

(assert (=> start!413868 e!2678348))

(declare-fun tp_is_empty!23621 () Bool)

(assert (=> start!413868 tp_is_empty!23621))

(declare-fun tp_is_empty!23623 () Bool)

(assert (=> start!413868 tp_is_empty!23623))

(declare-fun mapIsEmpty!20689 () Bool)

(declare-fun mapRes!20689 () Bool)

(assert (=> mapIsEmpty!20689 mapRes!20689))

(declare-fun b!4307229 () Bool)

(declare-fun e!2678345 () Bool)

(declare-fun e!2678347 () Bool)

(assert (=> b!4307229 (= e!2678345 e!2678347)))

(declare-fun res!1765409 () Bool)

(assert (=> b!4307229 (=> (not res!1765409) (not e!2678347))))

(declare-datatypes ((tuple2!46416 0))(
  ( (tuple2!46417 (_1!26487 Bool) (_2!26487 MutLongMap!4625)) )
))
(declare-fun lt!1527972 () tuple2!46416)

(assert (=> b!4307229 (= res!1765409 (_1!26487 lt!1527972))))

(declare-fun lt!1527974 () (_ BitVec 64))

(declare-fun lt!1527967 () List!48251)

(declare-fun update!406 (MutLongMap!4625 (_ BitVec 64) List!48251) tuple2!46416)

(assert (=> b!4307229 (= lt!1527972 (update!406 (v!42215 (underlying!9480 thiss!42308)) lt!1527974 lt!1527967))))

(declare-fun lt!1527971 () tuple2!46412)

(declare-fun lt!1527968 () List!48251)

(assert (=> b!4307229 (= lt!1527967 (Cons!48127 lt!1527971 lt!1527968))))

(declare-fun key!2048 () K!9309)

(declare-fun v!9179 () V!9511)

(assert (=> b!4307229 (= lt!1527971 (tuple2!46413 key!2048 v!9179))))

(declare-fun e!2678341 () List!48251)

(assert (=> b!4307229 (= lt!1527968 e!2678341)))

(declare-fun c!732312 () Bool)

(declare-fun contains!10086 (MutLongMap!4625 (_ BitVec 64)) Bool)

(assert (=> b!4307229 (= c!732312 (contains!10086 (v!42215 (underlying!9480 thiss!42308)) lt!1527974))))

(declare-fun hash!962 (Hashable!4541 K!9309) (_ BitVec 64))

(assert (=> b!4307229 (= lt!1527974 (hash!962 (hashF!6639 thiss!42308) key!2048))))

(declare-fun b!4307230 () Bool)

(declare-fun apply!10980 (MutLongMap!4625 (_ BitVec 64)) List!48251)

(assert (=> b!4307230 (= e!2678341 (apply!10980 (v!42215 (underlying!9480 thiss!42308)) lt!1527974))))

(declare-fun b!4307231 () Bool)

(assert (=> b!4307231 (= e!2678347 (not true))))

(declare-fun e!2678338 () Bool)

(assert (=> b!4307231 e!2678338))

(declare-fun res!1765408 () Bool)

(assert (=> b!4307231 (=> (not res!1765408) (not e!2678338))))

(declare-fun lt!1527961 () ListLongMap!955)

(declare-fun lambda!132644 () Int)

(declare-fun forall!8709 (List!48252 Int) Bool)

(assert (=> b!4307231 (= res!1765408 (forall!8709 (toList!2343 lt!1527961) lambda!132644))))

(declare-fun map!10105 (MutLongMap!4625) ListLongMap!955)

(assert (=> b!4307231 (= lt!1527961 (map!10105 (_2!26487 lt!1527972)))))

(declare-fun lt!1527965 () ListLongMap!955)

(declare-datatypes ((ListMap!1625 0))(
  ( (ListMap!1626 (toList!2344 List!48251)) )
))
(declare-fun eq!128 (ListMap!1625 ListMap!1625) Bool)

(declare-fun extractMap!312 (List!48252) ListMap!1625)

(declare-fun +!237 (ListMap!1625 tuple2!46412) ListMap!1625)

(assert (=> b!4307231 (eq!128 (extractMap!312 (toList!2343 lt!1527973)) (+!237 (extractMap!312 (toList!2343 lt!1527965)) lt!1527971))))

(declare-datatypes ((Unit!67164 0))(
  ( (Unit!67165) )
))
(declare-fun lt!1527970 () Unit!67164)

(declare-fun lemmaChangeOneBucketToUpdateANewKeyUpdateThisKeyInGenMap!46 (ListLongMap!955 (_ BitVec 64) List!48251 K!9309 V!9511 Hashable!4541) Unit!67164)

(assert (=> b!4307231 (= lt!1527970 (lemmaChangeOneBucketToUpdateANewKeyUpdateThisKeyInGenMap!46 lt!1527965 lt!1527974 lt!1527967 key!2048 v!9179 (hashF!6639 thiss!42308)))))

(assert (=> b!4307231 e!2678342))

(declare-fun res!1765412 () Bool)

(assert (=> b!4307231 (=> (not res!1765412) (not e!2678342))))

(assert (=> b!4307231 (= res!1765412 (forall!8709 (toList!2343 lt!1527973) lambda!132644))))

(declare-fun +!238 (ListLongMap!955 tuple2!46414) ListLongMap!955)

(assert (=> b!4307231 (= lt!1527973 (+!238 lt!1527965 (tuple2!46415 lt!1527974 lt!1527967)))))

(declare-fun lt!1527975 () Unit!67164)

(declare-fun lemmaChangeOneBucketByAValidOnePreservesForallNoDuplicatesAndHash!135 (ListLongMap!955 (_ BitVec 64) List!48251 Hashable!4541) Unit!67164)

(assert (=> b!4307231 (= lt!1527975 (lemmaChangeOneBucketByAValidOnePreservesForallNoDuplicatesAndHash!135 lt!1527965 lt!1527974 lt!1527967 (hashF!6639 thiss!42308)))))

(declare-fun lt!1527969 () Unit!67164)

(declare-fun e!2678335 () Unit!67164)

(assert (=> b!4307231 (= lt!1527969 e!2678335)))

(declare-fun c!732311 () Bool)

(declare-fun isEmpty!28072 (List!48251) Bool)

(assert (=> b!4307231 (= c!732311 (not (isEmpty!28072 lt!1527968)))))

(declare-fun b!4307232 () Bool)

(declare-fun lt!1527964 () Unit!67164)

(assert (=> b!4307232 (= e!2678335 lt!1527964)))

(declare-fun lt!1527966 () Unit!67164)

(declare-fun lemmaInLongMapAllKeySameHashThenForTuple!158 (List!48252 (_ BitVec 64) List!48251 Hashable!4541) Unit!67164)

(assert (=> b!4307232 (= lt!1527966 (lemmaInLongMapAllKeySameHashThenForTuple!158 (toList!2343 lt!1527965) lt!1527974 lt!1527968 (hashF!6639 thiss!42308)))))

(declare-fun allKeysSameHash!168 (List!48251 (_ BitVec 64) Hashable!4541) Bool)

(assert (=> b!4307232 (allKeysSameHash!168 lt!1527968 lt!1527974 (hashF!6639 thiss!42308))))

(declare-fun lemmaRemovePairForKeyPreservesHash!152 (List!48251 K!9309 (_ BitVec 64) Hashable!4541) Unit!67164)

(assert (=> b!4307232 (= lt!1527964 (lemmaRemovePairForKeyPreservesHash!152 lt!1527968 key!2048 lt!1527974 (hashF!6639 thiss!42308)))))

(declare-fun removePairForKey!192 (List!48251 K!9309) List!48251)

(assert (=> b!4307232 (allKeysSameHash!168 (removePairForKey!192 lt!1527968 key!2048) lt!1527974 (hashF!6639 thiss!42308))))

(declare-fun b!4307233 () Bool)

(assert (=> b!4307233 (= e!2678343 e!2678345)))

(declare-fun res!1765411 () Bool)

(assert (=> b!4307233 (=> (not res!1765411) (not e!2678345))))

(declare-fun contains!10087 (MutableMap!4531 K!9309) Bool)

(assert (=> b!4307233 (= res!1765411 (not (contains!10087 thiss!42308 key!2048)))))

(assert (=> b!4307233 (= lt!1527965 (map!10105 (v!42215 (underlying!9480 thiss!42308))))))

(declare-fun lt!1527963 () ListMap!1625)

(declare-fun map!10106 (MutableMap!4531) ListMap!1625)

(assert (=> b!4307233 (= lt!1527963 (map!10106 thiss!42308))))

(declare-fun b!4307234 () Bool)

(declare-fun tp!1323640 () Bool)

(assert (=> b!4307234 (= e!2678346 (and tp!1323640 mapRes!20689))))

(declare-fun condMapEmpty!20689 () Bool)

(declare-fun mapDefault!20689 () List!48251)

(assert (=> b!4307234 (= condMapEmpty!20689 (= (arr!7436 (_values!4906 (v!42214 (underlying!9479 (v!42215 (underlying!9480 thiss!42308)))))) ((as const (Array (_ BitVec 32) List!48251)) mapDefault!20689)))))

(declare-fun mapNonEmpty!20689 () Bool)

(declare-fun tp!1323643 () Bool)

(declare-fun tp!1323644 () Bool)

(assert (=> mapNonEmpty!20689 (= mapRes!20689 (and tp!1323643 tp!1323644))))

(declare-fun mapKey!20689 () (_ BitVec 32))

(declare-fun mapRest!20689 () (Array (_ BitVec 32) List!48251))

(declare-fun mapValue!20689 () List!48251)

(assert (=> mapNonEmpty!20689 (= (arr!7436 (_values!4906 (v!42214 (underlying!9479 (v!42215 (underlying!9480 thiss!42308)))))) (store mapRest!20689 mapKey!20689 mapValue!20689))))

(declare-fun e!2678344 () Bool)

(assert (=> b!4307235 (= e!2678348 (and e!2678344 tp!1323641))))

(declare-fun b!4307236 () Bool)

(declare-fun e!2678339 () Bool)

(assert (=> b!4307236 (= e!2678339 e!2678340)))

(declare-fun b!4307237 () Bool)

(assert (=> b!4307237 (= e!2678341 Nil!48127)))

(declare-fun b!4307238 () Bool)

(declare-fun e!2678337 () Bool)

(declare-fun lt!1527962 () MutLongMap!4625)

(assert (=> b!4307238 (= e!2678344 (and e!2678337 ((_ is LongMap!4625) lt!1527962)))))

(assert (=> b!4307238 (= lt!1527962 (v!42215 (underlying!9480 thiss!42308)))))

(declare-fun b!4307239 () Bool)

(assert (=> b!4307239 (= e!2678337 e!2678339)))

(declare-fun b!4307240 () Bool)

(declare-fun res!1765407 () Bool)

(assert (=> b!4307240 (=> (not res!1765407) (not e!2678343))))

(declare-fun valid!3615 (MutableMap!4531) Bool)

(assert (=> b!4307240 (= res!1765407 (valid!3615 thiss!42308))))

(declare-fun b!4307241 () Bool)

(declare-fun Unit!67166 () Unit!67164)

(assert (=> b!4307241 (= e!2678335 Unit!67166)))

(declare-fun b!4307242 () Bool)

(assert (=> b!4307242 (= e!2678338 (allKeysSameHashInMap!318 lt!1527961 (hashF!6639 thiss!42308)))))

(assert (= (and start!413868 res!1765410) b!4307240))

(assert (= (and b!4307240 res!1765407) b!4307233))

(assert (= (and b!4307233 res!1765411) b!4307229))

(assert (= (and b!4307229 c!732312) b!4307230))

(assert (= (and b!4307229 (not c!732312)) b!4307237))

(assert (= (and b!4307229 res!1765409) b!4307231))

(assert (= (and b!4307231 c!732311) b!4307232))

(assert (= (and b!4307231 (not c!732311)) b!4307241))

(assert (= (and b!4307231 res!1765412) b!4307228))

(assert (= (and b!4307231 res!1765408) b!4307242))

(assert (= (and b!4307234 condMapEmpty!20689) mapIsEmpty!20689))

(assert (= (and b!4307234 (not condMapEmpty!20689)) mapNonEmpty!20689))

(assert (= b!4307227 b!4307234))

(assert (= b!4307236 b!4307227))

(assert (= b!4307239 b!4307236))

(assert (= (and b!4307238 ((_ is LongMap!4625) (v!42215 (underlying!9480 thiss!42308)))) b!4307239))

(assert (= b!4307235 b!4307238))

(assert (= (and start!413868 ((_ is HashMap!4531) thiss!42308)) b!4307235))

(declare-fun m!4900041 () Bool)

(assert (=> b!4307227 m!4900041))

(declare-fun m!4900043 () Bool)

(assert (=> b!4307227 m!4900043))

(declare-fun m!4900045 () Bool)

(assert (=> b!4307240 m!4900045))

(declare-fun m!4900047 () Bool)

(assert (=> b!4307231 m!4900047))

(declare-fun m!4900049 () Bool)

(assert (=> b!4307231 m!4900049))

(declare-fun m!4900051 () Bool)

(assert (=> b!4307231 m!4900051))

(assert (=> b!4307231 m!4900049))

(declare-fun m!4900053 () Bool)

(assert (=> b!4307231 m!4900053))

(declare-fun m!4900055 () Bool)

(assert (=> b!4307231 m!4900055))

(declare-fun m!4900057 () Bool)

(assert (=> b!4307231 m!4900057))

(declare-fun m!4900059 () Bool)

(assert (=> b!4307231 m!4900059))

(declare-fun m!4900061 () Bool)

(assert (=> b!4307231 m!4900061))

(declare-fun m!4900063 () Bool)

(assert (=> b!4307231 m!4900063))

(declare-fun m!4900065 () Bool)

(assert (=> b!4307231 m!4900065))

(declare-fun m!4900067 () Bool)

(assert (=> b!4307231 m!4900067))

(assert (=> b!4307231 m!4900047))

(assert (=> b!4307231 m!4900051))

(declare-fun m!4900069 () Bool)

(assert (=> b!4307229 m!4900069))

(declare-fun m!4900071 () Bool)

(assert (=> b!4307229 m!4900071))

(declare-fun m!4900073 () Bool)

(assert (=> b!4307229 m!4900073))

(declare-fun m!4900075 () Bool)

(assert (=> b!4307228 m!4900075))

(declare-fun m!4900077 () Bool)

(assert (=> b!4307230 m!4900077))

(declare-fun m!4900079 () Bool)

(assert (=> b!4307233 m!4900079))

(declare-fun m!4900081 () Bool)

(assert (=> b!4307233 m!4900081))

(declare-fun m!4900083 () Bool)

(assert (=> b!4307233 m!4900083))

(declare-fun m!4900085 () Bool)

(assert (=> b!4307242 m!4900085))

(declare-fun m!4900087 () Bool)

(assert (=> mapNonEmpty!20689 m!4900087))

(declare-fun m!4900089 () Bool)

(assert (=> b!4307232 m!4900089))

(declare-fun m!4900091 () Bool)

(assert (=> b!4307232 m!4900091))

(declare-fun m!4900093 () Bool)

(assert (=> b!4307232 m!4900093))

(declare-fun m!4900095 () Bool)

(assert (=> b!4307232 m!4900095))

(declare-fun m!4900097 () Bool)

(assert (=> b!4307232 m!4900097))

(assert (=> b!4307232 m!4900091))

(check-sat b_and!339869 (not b!4307229) b_and!339867 tp_is_empty!23621 (not mapNonEmpty!20689) (not b!4307240) (not b!4307232) (not b_next!129165) (not b_next!129163) (not b!4307234) (not b!4307242) (not b!4307230) (not b!4307228) (not b!4307231) (not b!4307233) tp_is_empty!23623 (not b!4307227))
(check-sat b_and!339867 b_and!339869 (not b_next!129165) (not b_next!129163))
