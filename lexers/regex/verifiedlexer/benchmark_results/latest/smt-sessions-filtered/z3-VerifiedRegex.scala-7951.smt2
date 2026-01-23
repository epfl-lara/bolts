; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!413492 () Bool)

(assert start!413492)

(declare-fun b!4304399 () Bool)

(declare-fun b_free!128291 () Bool)

(declare-fun b_next!128995 () Bool)

(assert (=> b!4304399 (= b_free!128291 (not b_next!128995))))

(declare-fun tp!1322639 () Bool)

(declare-fun b_and!339687 () Bool)

(assert (=> b!4304399 (= tp!1322639 b_and!339687)))

(declare-fun b!4304406 () Bool)

(declare-fun b_free!128293 () Bool)

(declare-fun b_next!128997 () Bool)

(assert (=> b!4304406 (= b_free!128293 (not b_next!128997))))

(declare-fun tp!1322641 () Bool)

(declare-fun b_and!339689 () Bool)

(assert (=> b!4304406 (= tp!1322641 b_and!339689)))

(declare-fun b!4304395 () Bool)

(declare-fun e!2676197 () Bool)

(declare-fun tp!1322637 () Bool)

(declare-fun mapRes!20539 () Bool)

(assert (=> b!4304395 (= e!2676197 (and tp!1322637 mapRes!20539))))

(declare-fun condMapEmpty!20539 () Bool)

(declare-datatypes ((V!9406 0))(
  ( (V!9407 (val!15621 Int)) )
))
(declare-datatypes ((K!9204 0))(
  ( (K!9205 (val!15622 Int)) )
))
(declare-datatypes ((tuple2!46214 0))(
  ( (tuple2!46215 (_1!26386 K!9204) (_2!26386 V!9406)) )
))
(declare-datatypes ((List!48177 0))(
  ( (Nil!48053) (Cons!48053 (h!53479 tuple2!46214) (t!354958 List!48177)) )
))
(declare-datatypes ((array!16466 0))(
  ( (array!16467 (arr!7351 (Array (_ BitVec 32) (_ BitVec 64))) (size!35390 (_ BitVec 32))) )
))
(declare-datatypes ((Hashable!4499 0))(
  ( (HashableExt!4498 (__x!29774 Int)) )
))
(declare-datatypes ((array!16468 0))(
  ( (array!16469 (arr!7352 (Array (_ BitVec 32) List!48177)) (size!35391 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!9166 0))(
  ( (LongMapFixedSize!9167 (defaultEntry!4968 Int) (mask!13103 (_ BitVec 32)) (extraKeys!4832 (_ BitVec 32)) (zeroValue!4842 List!48177) (minValue!4842 List!48177) (_size!9209 (_ BitVec 32)) (_keys!4883 array!16466) (_values!4864 array!16468) (_vacant!4644 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!18141 0))(
  ( (Cell!18142 (v!42089 LongMapFixedSize!9166)) )
))
(declare-datatypes ((MutLongMap!4583 0))(
  ( (LongMap!4583 (underlying!9395 Cell!18141)) (MutLongMapExt!4582 (__x!29775 Int)) )
))
(declare-datatypes ((Cell!18143 0))(
  ( (Cell!18144 (v!42090 MutLongMap!4583)) )
))
(declare-datatypes ((MutableMap!4489 0))(
  ( (MutableMapExt!4488 (__x!29776 Int)) (HashMap!4489 (underlying!9396 Cell!18143) (hashF!6567 Hashable!4499) (_size!9210 (_ BitVec 32)) (defaultValue!4660 Int)) )
))
(declare-fun thiss!42308 () MutableMap!4489)

(declare-fun mapDefault!20539 () List!48177)

(assert (=> b!4304395 (= condMapEmpty!20539 (= (arr!7352 (_values!4864 (v!42089 (underlying!9395 (v!42090 (underlying!9396 thiss!42308)))))) ((as const (Array (_ BitVec 32) List!48177)) mapDefault!20539)))))

(declare-fun b!4304396 () Bool)

(declare-fun e!2676191 () Bool)

(declare-fun e!2676190 () Bool)

(declare-fun lt!1526039 () MutLongMap!4583)

(get-info :version)

(assert (=> b!4304396 (= e!2676191 (and e!2676190 ((_ is LongMap!4583) lt!1526039)))))

(assert (=> b!4304396 (= lt!1526039 (v!42090 (underlying!9396 thiss!42308)))))

(declare-fun b!4304397 () Bool)

(declare-fun e!2676198 () Bool)

(declare-fun lt!1526022 () MutableMap!4489)

(declare-fun valid!3568 (MutableMap!4489) Bool)

(assert (=> b!4304397 (= e!2676198 (not (valid!3568 lt!1526022)))))

(declare-fun e!2676194 () Bool)

(assert (=> b!4304397 e!2676194))

(declare-fun res!1764301 () Bool)

(assert (=> b!4304397 (=> (not res!1764301) (not e!2676194))))

(declare-datatypes ((tuple2!46216 0))(
  ( (tuple2!46217 (_1!26387 (_ BitVec 64)) (_2!26387 List!48177)) )
))
(declare-datatypes ((List!48178 0))(
  ( (Nil!48054) (Cons!48054 (h!53480 tuple2!46216) (t!354959 List!48178)) )
))
(declare-datatypes ((ListLongMap!893 0))(
  ( (ListLongMap!894 (toList!2284 List!48178)) )
))
(declare-fun lt!1526038 () ListLongMap!893)

(declare-fun lambda!132372 () Int)

(declare-fun forall!8681 (List!48178 Int) Bool)

(assert (=> b!4304397 (= res!1764301 (forall!8681 (toList!2284 lt!1526038) lambda!132372))))

(declare-datatypes ((tuple2!46218 0))(
  ( (tuple2!46219 (_1!26388 Bool) (_2!26388 MutLongMap!4583)) )
))
(declare-fun lt!1526027 () tuple2!46218)

(declare-fun map!10022 (MutLongMap!4583) ListLongMap!893)

(assert (=> b!4304397 (= lt!1526038 (map!10022 (_2!26388 lt!1526027)))))

(declare-datatypes ((ListMap!1569 0))(
  ( (ListMap!1570 (toList!2285 List!48177)) )
))
(declare-fun lt!1526029 () ListMap!1569)

(declare-fun key!2048 () K!9204)

(declare-fun lt!1526024 () ListMap!1569)

(declare-fun contains!9986 (ListMap!1569 K!9204) Bool)

(assert (=> b!4304397 (= (contains!9986 lt!1526029 key!2048) (contains!9986 lt!1526024 key!2048))))

(declare-datatypes ((Unit!67066 0))(
  ( (Unit!67067) )
))
(declare-fun lt!1526028 () Unit!67066)

(declare-fun lemmaEquivalentThenSameContains!48 (ListMap!1569 ListMap!1569 K!9204) Unit!67066)

(assert (=> b!4304397 (= lt!1526028 (lemmaEquivalentThenSameContains!48 lt!1526029 lt!1526024 key!2048))))

(declare-fun lt!1526025 () ListMap!1569)

(declare-fun lt!1526026 () tuple2!46214)

(declare-fun +!219 (ListMap!1569 tuple2!46214) ListMap!1569)

(assert (=> b!4304397 (= lt!1526024 (+!219 lt!1526025 lt!1526026))))

(declare-fun map!10023 (MutableMap!4489) ListMap!1569)

(assert (=> b!4304397 (= lt!1526029 (map!10023 lt!1526022))))

(declare-fun lt!1526036 () ListLongMap!893)

(declare-fun lt!1526037 () ListLongMap!893)

(declare-fun eq!121 (ListMap!1569 ListMap!1569) Bool)

(declare-fun extractMap!297 (List!48178) ListMap!1569)

(assert (=> b!4304397 (eq!121 (extractMap!297 (toList!2284 lt!1526036)) (+!219 (extractMap!297 (toList!2284 lt!1526037)) lt!1526026))))

(declare-fun lt!1526021 () Unit!67066)

(declare-fun lt!1526031 () (_ BitVec 64))

(declare-fun lt!1526033 () List!48177)

(declare-fun v!9179 () V!9406)

(declare-fun lemmaChangeOneBucketToUpdateAnExistingKeyUpdateThisKeyInGenMap!53 (ListLongMap!893 (_ BitVec 64) List!48177 K!9204 V!9406 Hashable!4499) Unit!67066)

(assert (=> b!4304397 (= lt!1526021 (lemmaChangeOneBucketToUpdateAnExistingKeyUpdateThisKeyInGenMap!53 lt!1526037 lt!1526031 lt!1526033 key!2048 v!9179 (hashF!6567 thiss!42308)))))

(declare-fun e!2676195 () Bool)

(assert (=> b!4304397 e!2676195))

(declare-fun res!1764298 () Bool)

(assert (=> b!4304397 (=> (not res!1764298) (not e!2676195))))

(assert (=> b!4304397 (= res!1764298 (forall!8681 (toList!2284 lt!1526036) lambda!132372))))

(declare-fun +!220 (ListLongMap!893 tuple2!46216) ListLongMap!893)

(assert (=> b!4304397 (= lt!1526036 (+!220 lt!1526037 (tuple2!46217 lt!1526031 lt!1526033)))))

(declare-fun lt!1526030 () Unit!67066)

(declare-fun lemmaChangeOneBucketByAValidOnePreservesForallNoDuplicatesAndHash!124 (ListLongMap!893 (_ BitVec 64) List!48177 Hashable!4499) Unit!67066)

(assert (=> b!4304397 (= lt!1526030 (lemmaChangeOneBucketByAValidOnePreservesForallNoDuplicatesAndHash!124 lt!1526037 lt!1526031 lt!1526033 (hashF!6567 thiss!42308)))))

(declare-fun e!2676188 () Bool)

(assert (=> b!4304397 e!2676188))

(declare-fun res!1764295 () Bool)

(assert (=> b!4304397 (=> (not res!1764295) (not e!2676188))))

(declare-fun lt!1526040 () List!48177)

(declare-fun noDuplicateKeys!184 (List!48177) Bool)

(assert (=> b!4304397 (= res!1764295 (noDuplicateKeys!184 lt!1526040))))

(declare-fun lt!1526035 () Unit!67066)

(declare-fun lt!1526032 () List!48177)

(declare-fun lemmaRemovePairForKeyPreservesNoDuplicateKeys!156 (List!48177 K!9204) Unit!67066)

(assert (=> b!4304397 (= lt!1526035 (lemmaRemovePairForKeyPreservesNoDuplicateKeys!156 lt!1526032 key!2048))))

(declare-fun allKeysSameHash!153 (List!48177 (_ BitVec 64) Hashable!4499) Bool)

(assert (=> b!4304397 (allKeysSameHash!153 lt!1526040 lt!1526031 (hashF!6567 thiss!42308))))

(declare-fun lt!1526034 () Unit!67066)

(declare-fun lemmaRemovePairForKeyPreservesHash!139 (List!48177 K!9204 (_ BitVec 64) Hashable!4499) Unit!67066)

(assert (=> b!4304397 (= lt!1526034 (lemmaRemovePairForKeyPreservesHash!139 lt!1526032 key!2048 lt!1526031 (hashF!6567 thiss!42308)))))

(assert (=> b!4304397 (allKeysSameHash!153 lt!1526032 lt!1526031 (hashF!6567 thiss!42308))))

(declare-fun lt!1526023 () Unit!67066)

(declare-fun lemmaInLongMapAllKeySameHashThenForTuple!144 (List!48178 (_ BitVec 64) List!48177 Hashable!4499) Unit!67066)

(assert (=> b!4304397 (= lt!1526023 (lemmaInLongMapAllKeySameHashThenForTuple!144 (toList!2284 lt!1526037) lt!1526031 lt!1526032 (hashF!6567 thiss!42308)))))

(declare-fun b!4304398 () Bool)

(declare-fun allKeysSameHashInMap!301 (ListLongMap!893 Hashable!4499) Bool)

(assert (=> b!4304398 (= e!2676194 (allKeysSameHashInMap!301 lt!1526038 (hashF!6567 thiss!42308)))))

(declare-fun tp!1322638 () Bool)

(declare-fun e!2676199 () Bool)

(declare-fun tp!1322640 () Bool)

(declare-fun array_inv!5275 (array!16466) Bool)

(declare-fun array_inv!5276 (array!16468) Bool)

(assert (=> b!4304399 (= e!2676199 (and tp!1322639 tp!1322640 tp!1322638 (array_inv!5275 (_keys!4883 (v!42089 (underlying!9395 (v!42090 (underlying!9396 thiss!42308)))))) (array_inv!5276 (_values!4864 (v!42089 (underlying!9395 (v!42090 (underlying!9396 thiss!42308)))))) e!2676197))))

(declare-fun b!4304400 () Bool)

(assert (=> b!4304400 (= e!2676195 (allKeysSameHashInMap!301 lt!1526036 (hashF!6567 thiss!42308)))))

(declare-fun mapNonEmpty!20539 () Bool)

(declare-fun tp!1322636 () Bool)

(declare-fun tp!1322642 () Bool)

(assert (=> mapNonEmpty!20539 (= mapRes!20539 (and tp!1322636 tp!1322642))))

(declare-fun mapRest!20539 () (Array (_ BitVec 32) List!48177))

(declare-fun mapKey!20539 () (_ BitVec 32))

(declare-fun mapValue!20539 () List!48177)

(assert (=> mapNonEmpty!20539 (= (arr!7352 (_values!4864 (v!42089 (underlying!9395 (v!42090 (underlying!9396 thiss!42308)))))) (store mapRest!20539 mapKey!20539 mapValue!20539))))

(declare-fun res!1764297 () Bool)

(declare-fun e!2676196 () Bool)

(assert (=> start!413492 (=> (not res!1764297) (not e!2676196))))

(assert (=> start!413492 (= res!1764297 ((_ is HashMap!4489) thiss!42308))))

(assert (=> start!413492 e!2676196))

(declare-fun e!2676193 () Bool)

(assert (=> start!413492 e!2676193))

(declare-fun tp_is_empty!23471 () Bool)

(assert (=> start!413492 tp_is_empty!23471))

(declare-fun tp_is_empty!23473 () Bool)

(assert (=> start!413492 tp_is_empty!23473))

(declare-fun b!4304401 () Bool)

(declare-fun e!2676200 () Bool)

(assert (=> b!4304401 (= e!2676200 e!2676199)))

(declare-fun b!4304402 () Bool)

(declare-fun res!1764302 () Bool)

(assert (=> b!4304402 (=> (not res!1764302) (not e!2676188))))

(declare-fun containsKey!278 (List!48177 K!9204) Bool)

(assert (=> b!4304402 (= res!1764302 (not (containsKey!278 lt!1526040 key!2048)))))

(declare-fun b!4304403 () Bool)

(assert (=> b!4304403 (= e!2676190 e!2676200)))

(declare-fun b!4304404 () Bool)

(declare-fun res!1764299 () Bool)

(assert (=> b!4304404 (=> (not res!1764299) (not e!2676196))))

(assert (=> b!4304404 (= res!1764299 (valid!3568 thiss!42308))))

(declare-fun mapIsEmpty!20539 () Bool)

(assert (=> mapIsEmpty!20539 mapRes!20539))

(declare-fun b!4304405 () Bool)

(declare-fun e!2676192 () Bool)

(assert (=> b!4304405 (= e!2676192 e!2676198)))

(declare-fun res!1764296 () Bool)

(assert (=> b!4304405 (=> (not res!1764296) (not e!2676198))))

(assert (=> b!4304405 (= res!1764296 (_1!26388 lt!1526027))))

(assert (=> b!4304405 (= lt!1526022 (HashMap!4489 (Cell!18144 (_2!26388 lt!1526027)) (hashF!6567 thiss!42308) (_size!9210 thiss!42308) (defaultValue!4660 thiss!42308)))))

(declare-fun update!380 (MutLongMap!4583 (_ BitVec 64) List!48177) tuple2!46218)

(assert (=> b!4304405 (= lt!1526027 (update!380 (v!42090 (underlying!9396 thiss!42308)) lt!1526031 lt!1526033))))

(assert (=> b!4304405 (= lt!1526033 (Cons!48053 lt!1526026 lt!1526040))))

(declare-fun removePairForKey!177 (List!48177 K!9204) List!48177)

(assert (=> b!4304405 (= lt!1526040 (removePairForKey!177 lt!1526032 key!2048))))

(assert (=> b!4304405 (= lt!1526026 (tuple2!46215 key!2048 v!9179))))

(declare-fun apply!10937 (MutLongMap!4583 (_ BitVec 64)) List!48177)

(assert (=> b!4304405 (= lt!1526032 (apply!10937 (v!42090 (underlying!9396 thiss!42308)) lt!1526031))))

(declare-fun hash!908 (Hashable!4499 K!9204) (_ BitVec 64))

(assert (=> b!4304405 (= lt!1526031 (hash!908 (hashF!6567 thiss!42308) key!2048))))

(assert (=> b!4304406 (= e!2676193 (and e!2676191 tp!1322641))))

(declare-fun b!4304407 () Bool)

(assert (=> b!4304407 (= e!2676188 (noDuplicateKeys!184 lt!1526033))))

(declare-fun b!4304408 () Bool)

(assert (=> b!4304408 (= e!2676196 e!2676192)))

(declare-fun res!1764300 () Bool)

(assert (=> b!4304408 (=> (not res!1764300) (not e!2676192))))

(declare-fun contains!9987 (MutableMap!4489 K!9204) Bool)

(assert (=> b!4304408 (= res!1764300 (contains!9987 thiss!42308 key!2048))))

(assert (=> b!4304408 (= lt!1526037 (map!10022 (v!42090 (underlying!9396 thiss!42308))))))

(assert (=> b!4304408 (= lt!1526025 (map!10023 thiss!42308))))

(assert (= (and start!413492 res!1764297) b!4304404))

(assert (= (and b!4304404 res!1764299) b!4304408))

(assert (= (and b!4304408 res!1764300) b!4304405))

(assert (= (and b!4304405 res!1764296) b!4304397))

(assert (= (and b!4304397 res!1764295) b!4304402))

(assert (= (and b!4304402 res!1764302) b!4304407))

(assert (= (and b!4304397 res!1764298) b!4304400))

(assert (= (and b!4304397 res!1764301) b!4304398))

(assert (= (and b!4304395 condMapEmpty!20539) mapIsEmpty!20539))

(assert (= (and b!4304395 (not condMapEmpty!20539)) mapNonEmpty!20539))

(assert (= b!4304399 b!4304395))

(assert (= b!4304401 b!4304399))

(assert (= b!4304403 b!4304401))

(assert (= (and b!4304396 ((_ is LongMap!4583) (v!42090 (underlying!9396 thiss!42308)))) b!4304403))

(assert (= b!4304406 b!4304396))

(assert (= (and start!413492 ((_ is HashMap!4489) thiss!42308)) b!4304406))

(declare-fun m!4897289 () Bool)

(assert (=> b!4304397 m!4897289))

(declare-fun m!4897291 () Bool)

(assert (=> b!4304397 m!4897291))

(declare-fun m!4897293 () Bool)

(assert (=> b!4304397 m!4897293))

(declare-fun m!4897295 () Bool)

(assert (=> b!4304397 m!4897295))

(declare-fun m!4897297 () Bool)

(assert (=> b!4304397 m!4897297))

(declare-fun m!4897299 () Bool)

(assert (=> b!4304397 m!4897299))

(declare-fun m!4897301 () Bool)

(assert (=> b!4304397 m!4897301))

(declare-fun m!4897303 () Bool)

(assert (=> b!4304397 m!4897303))

(declare-fun m!4897305 () Bool)

(assert (=> b!4304397 m!4897305))

(declare-fun m!4897307 () Bool)

(assert (=> b!4304397 m!4897307))

(assert (=> b!4304397 m!4897301))

(declare-fun m!4897309 () Bool)

(assert (=> b!4304397 m!4897309))

(assert (=> b!4304397 m!4897303))

(declare-fun m!4897311 () Bool)

(assert (=> b!4304397 m!4897311))

(assert (=> b!4304397 m!4897309))

(declare-fun m!4897313 () Bool)

(assert (=> b!4304397 m!4897313))

(declare-fun m!4897315 () Bool)

(assert (=> b!4304397 m!4897315))

(declare-fun m!4897317 () Bool)

(assert (=> b!4304397 m!4897317))

(declare-fun m!4897319 () Bool)

(assert (=> b!4304397 m!4897319))

(declare-fun m!4897321 () Bool)

(assert (=> b!4304397 m!4897321))

(declare-fun m!4897323 () Bool)

(assert (=> b!4304397 m!4897323))

(declare-fun m!4897325 () Bool)

(assert (=> b!4304397 m!4897325))

(declare-fun m!4897327 () Bool)

(assert (=> b!4304397 m!4897327))

(declare-fun m!4897329 () Bool)

(assert (=> b!4304397 m!4897329))

(declare-fun m!4897331 () Bool)

(assert (=> b!4304397 m!4897331))

(declare-fun m!4897333 () Bool)

(assert (=> b!4304400 m!4897333))

(declare-fun m!4897335 () Bool)

(assert (=> b!4304404 m!4897335))

(declare-fun m!4897337 () Bool)

(assert (=> b!4304402 m!4897337))

(declare-fun m!4897339 () Bool)

(assert (=> b!4304407 m!4897339))

(declare-fun m!4897341 () Bool)

(assert (=> mapNonEmpty!20539 m!4897341))

(declare-fun m!4897343 () Bool)

(assert (=> b!4304398 m!4897343))

(declare-fun m!4897345 () Bool)

(assert (=> b!4304408 m!4897345))

(declare-fun m!4897347 () Bool)

(assert (=> b!4304408 m!4897347))

(declare-fun m!4897349 () Bool)

(assert (=> b!4304408 m!4897349))

(declare-fun m!4897351 () Bool)

(assert (=> b!4304405 m!4897351))

(declare-fun m!4897353 () Bool)

(assert (=> b!4304405 m!4897353))

(declare-fun m!4897355 () Bool)

(assert (=> b!4304405 m!4897355))

(declare-fun m!4897357 () Bool)

(assert (=> b!4304405 m!4897357))

(declare-fun m!4897359 () Bool)

(assert (=> b!4304399 m!4897359))

(declare-fun m!4897361 () Bool)

(assert (=> b!4304399 m!4897361))

(check-sat (not b!4304404) (not b_next!128995) (not b_next!128997) b_and!339687 (not b!4304398) (not b!4304402) (not b!4304395) (not b!4304408) (not b!4304400) (not b!4304399) tp_is_empty!23471 b_and!339689 (not b!4304407) (not mapNonEmpty!20539) (not b!4304397) tp_is_empty!23473 (not b!4304405))
(check-sat b_and!339687 b_and!339689 (not b_next!128997) (not b_next!128995))
(get-model)

(declare-fun bs!604393 () Bool)

(declare-fun d!1267262 () Bool)

(assert (= bs!604393 (and d!1267262 b!4304397)))

(declare-fun lambda!132375 () Int)

(assert (=> bs!604393 (not (= lambda!132375 lambda!132372))))

(assert (=> d!1267262 true))

(assert (=> d!1267262 (= (allKeysSameHashInMap!301 lt!1526036 (hashF!6567 thiss!42308)) (forall!8681 (toList!2284 lt!1526036) lambda!132375))))

(declare-fun bs!604394 () Bool)

(assert (= bs!604394 d!1267262))

(declare-fun m!4897363 () Bool)

(assert (=> bs!604394 m!4897363))

(assert (=> b!4304400 d!1267262))

(declare-fun bs!604395 () Bool)

(declare-fun b!4304415 () Bool)

(assert (= bs!604395 (and b!4304415 b!4304397)))

(declare-fun lambda!132378 () Int)

(assert (=> bs!604395 (= lambda!132378 lambda!132372)))

(declare-fun bs!604396 () Bool)

(assert (= bs!604396 (and b!4304415 d!1267262)))

(assert (=> bs!604396 (not (= lambda!132378 lambda!132375))))

(declare-fun d!1267264 () Bool)

(declare-fun res!1764307 () Bool)

(declare-fun e!2676203 () Bool)

(assert (=> d!1267264 (=> (not res!1764307) (not e!2676203))))

(declare-fun valid!3569 (MutLongMap!4583) Bool)

(assert (=> d!1267264 (= res!1764307 (valid!3569 (v!42090 (underlying!9396 thiss!42308))))))

(assert (=> d!1267264 (= (valid!3568 thiss!42308) e!2676203)))

(declare-fun res!1764308 () Bool)

(assert (=> b!4304415 (=> (not res!1764308) (not e!2676203))))

(assert (=> b!4304415 (= res!1764308 (forall!8681 (toList!2284 (map!10022 (v!42090 (underlying!9396 thiss!42308)))) lambda!132378))))

(declare-fun b!4304416 () Bool)

(assert (=> b!4304416 (= e!2676203 (allKeysSameHashInMap!301 (map!10022 (v!42090 (underlying!9396 thiss!42308))) (hashF!6567 thiss!42308)))))

(assert (= (and d!1267264 res!1764307) b!4304415))

(assert (= (and b!4304415 res!1764308) b!4304416))

(declare-fun m!4897365 () Bool)

(assert (=> d!1267264 m!4897365))

(assert (=> b!4304415 m!4897347))

(declare-fun m!4897367 () Bool)

(assert (=> b!4304415 m!4897367))

(assert (=> b!4304416 m!4897347))

(assert (=> b!4304416 m!4897347))

(declare-fun m!4897369 () Bool)

(assert (=> b!4304416 m!4897369))

(assert (=> b!4304404 d!1267264))

(declare-fun bs!604397 () Bool)

(declare-fun b!4304439 () Bool)

(assert (= bs!604397 (and b!4304439 b!4304397)))

(declare-fun lambda!132381 () Int)

(assert (=> bs!604397 (= lambda!132381 lambda!132372)))

(declare-fun bs!604398 () Bool)

(assert (= bs!604398 (and b!4304439 d!1267262)))

(assert (=> bs!604398 (not (= lambda!132381 lambda!132375))))

(declare-fun bs!604399 () Bool)

(assert (= bs!604399 (and b!4304439 b!4304415)))

(assert (=> bs!604399 (= lambda!132381 lambda!132378)))

(declare-fun e!2676224 () Unit!67066)

(declare-fun lt!1526092 () (_ BitVec 64))

(declare-fun forallContained!1486 (List!48178 Int tuple2!46216) Unit!67066)

(assert (=> b!4304439 (= e!2676224 (forallContained!1486 (toList!2284 (map!10022 (v!42090 (underlying!9396 thiss!42308)))) lambda!132381 (tuple2!46217 lt!1526092 (apply!10937 (v!42090 (underlying!9396 thiss!42308)) lt!1526092))))))

(declare-fun c!731950 () Bool)

(declare-fun contains!9988 (List!48178 tuple2!46216) Bool)

(assert (=> b!4304439 (= c!731950 (not (contains!9988 (toList!2284 (map!10022 (v!42090 (underlying!9396 thiss!42308)))) (tuple2!46217 lt!1526092 (apply!10937 (v!42090 (underlying!9396 thiss!42308)) lt!1526092)))))))

(declare-fun lt!1526095 () Unit!67066)

(declare-fun e!2676221 () Unit!67066)

(assert (=> b!4304439 (= lt!1526095 e!2676221)))

(declare-fun b!4304440 () Bool)

(declare-fun e!2676220 () Bool)

(declare-fun call!296836 () Bool)

(assert (=> b!4304440 (= e!2676220 call!296836)))

(declare-fun d!1267266 () Bool)

(declare-fun lt!1526100 () Bool)

(assert (=> d!1267266 (= lt!1526100 (contains!9986 (map!10023 thiss!42308) key!2048))))

(declare-fun e!2676218 () Bool)

(assert (=> d!1267266 (= lt!1526100 e!2676218)))

(declare-fun res!1764317 () Bool)

(assert (=> d!1267266 (=> (not res!1764317) (not e!2676218))))

(declare-fun contains!9989 (MutLongMap!4583 (_ BitVec 64)) Bool)

(assert (=> d!1267266 (= res!1764317 (contains!9989 (v!42090 (underlying!9396 thiss!42308)) lt!1526092))))

(declare-fun lt!1526094 () Unit!67066)

(declare-fun e!2676222 () Unit!67066)

(assert (=> d!1267266 (= lt!1526094 e!2676222)))

(declare-fun c!731953 () Bool)

(assert (=> d!1267266 (= c!731953 (contains!9986 (extractMap!297 (toList!2284 (map!10022 (v!42090 (underlying!9396 thiss!42308))))) key!2048))))

(declare-fun lt!1526083 () Unit!67066)

(assert (=> d!1267266 (= lt!1526083 e!2676224)))

(declare-fun c!731952 () Bool)

(assert (=> d!1267266 (= c!731952 (contains!9989 (v!42090 (underlying!9396 thiss!42308)) lt!1526092))))

(assert (=> d!1267266 (= lt!1526092 (hash!908 (hashF!6567 thiss!42308) key!2048))))

(assert (=> d!1267266 (valid!3568 thiss!42308)))

(assert (=> d!1267266 (= (contains!9987 thiss!42308 key!2048) lt!1526100)))

(declare-fun b!4304441 () Bool)

(declare-fun Unit!67068 () Unit!67066)

(assert (=> b!4304441 (= e!2676221 Unit!67068)))

(declare-fun call!296841 () List!48177)

(declare-fun call!296838 () (_ BitVec 64))

(declare-fun call!296839 () ListLongMap!893)

(declare-fun lt!1526089 () ListLongMap!893)

(declare-fun bm!296831 () Bool)

(declare-fun apply!10938 (ListLongMap!893 (_ BitVec 64)) List!48177)

(assert (=> bm!296831 (= call!296841 (apply!10938 (ite c!731953 lt!1526089 call!296839) call!296838))))

(declare-fun bm!296832 () Bool)

(declare-datatypes ((Option!10192 0))(
  ( (None!10191) (Some!10191 (v!42095 tuple2!46214)) )
))
(declare-fun call!296837 () Option!10192)

(declare-fun getPair!119 (List!48177 K!9204) Option!10192)

(assert (=> bm!296832 (= call!296837 (getPair!119 call!296841 key!2048))))

(declare-fun b!4304442 () Bool)

(declare-fun Unit!67069 () Unit!67066)

(assert (=> b!4304442 (= e!2676224 Unit!67069)))

(declare-fun bm!296833 () Bool)

(assert (=> bm!296833 (= call!296838 (hash!908 (hashF!6567 thiss!42308) key!2048))))

(declare-fun b!4304443 () Bool)

(assert (=> b!4304443 false))

(declare-fun lt!1526093 () Unit!67066)

(declare-fun lt!1526090 () Unit!67066)

(assert (=> b!4304443 (= lt!1526093 lt!1526090)))

(declare-fun lt!1526091 () List!48178)

(declare-fun lt!1526088 () List!48177)

(assert (=> b!4304443 (contains!9988 lt!1526091 (tuple2!46217 lt!1526092 lt!1526088))))

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!130 (List!48178 (_ BitVec 64) List!48177) Unit!67066)

(assert (=> b!4304443 (= lt!1526090 (lemmaGetValueByKeyImpliesContainsTuple!130 lt!1526091 lt!1526092 lt!1526088))))

(assert (=> b!4304443 (= lt!1526088 (apply!10937 (v!42090 (underlying!9396 thiss!42308)) lt!1526092))))

(assert (=> b!4304443 (= lt!1526091 (toList!2284 (map!10022 (v!42090 (underlying!9396 thiss!42308)))))))

(declare-fun lt!1526085 () Unit!67066)

(declare-fun lt!1526099 () Unit!67066)

(assert (=> b!4304443 (= lt!1526085 lt!1526099)))

(declare-fun lt!1526086 () List!48178)

(declare-datatypes ((Option!10193 0))(
  ( (None!10192) (Some!10192 (v!42096 List!48177)) )
))
(declare-fun isDefined!7500 (Option!10193) Bool)

(declare-fun getValueByKey!232 (List!48178 (_ BitVec 64)) Option!10193)

(assert (=> b!4304443 (isDefined!7500 (getValueByKey!232 lt!1526086 lt!1526092))))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!158 (List!48178 (_ BitVec 64)) Unit!67066)

(assert (=> b!4304443 (= lt!1526099 (lemmaContainsKeyImpliesGetValueByKeyDefined!158 lt!1526086 lt!1526092))))

(assert (=> b!4304443 (= lt!1526086 (toList!2284 (map!10022 (v!42090 (underlying!9396 thiss!42308)))))))

(declare-fun lt!1526087 () Unit!67066)

(declare-fun lt!1526096 () Unit!67066)

(assert (=> b!4304443 (= lt!1526087 lt!1526096)))

(declare-fun lt!1526081 () List!48178)

(declare-fun containsKey!279 (List!48178 (_ BitVec 64)) Bool)

(assert (=> b!4304443 (containsKey!279 lt!1526081 lt!1526092)))

(declare-fun lemmaGetValueByKeyIsDefinedImpliesContainsKey!120 (List!48178 (_ BitVec 64)) Unit!67066)

(assert (=> b!4304443 (= lt!1526096 (lemmaGetValueByKeyIsDefinedImpliesContainsKey!120 lt!1526081 lt!1526092))))

(assert (=> b!4304443 (= lt!1526081 (toList!2284 (map!10022 (v!42090 (underlying!9396 thiss!42308)))))))

(declare-fun Unit!67070 () Unit!67066)

(assert (=> b!4304443 (= e!2676221 Unit!67070)))

(declare-fun b!4304444 () Bool)

(declare-fun isDefined!7501 (Option!10192) Bool)

(assert (=> b!4304444 (= e!2676218 (isDefined!7501 (getPair!119 (apply!10937 (v!42090 (underlying!9396 thiss!42308)) lt!1526092) key!2048)))))

(declare-fun b!4304445 () Bool)

(declare-fun e!2676219 () Unit!67066)

(assert (=> b!4304445 (= e!2676222 e!2676219)))

(declare-fun res!1764316 () Bool)

(declare-fun call!296840 () Bool)

(assert (=> b!4304445 (= res!1764316 call!296840)))

(declare-fun e!2676223 () Bool)

(assert (=> b!4304445 (=> (not res!1764316) (not e!2676223))))

(declare-fun c!731951 () Bool)

(assert (=> b!4304445 (= c!731951 e!2676223)))

(declare-fun b!4304446 () Bool)

(declare-fun lt!1526098 () Unit!67066)

(assert (=> b!4304446 (= e!2676222 lt!1526098)))

(assert (=> b!4304446 (= lt!1526089 call!296839)))

(declare-fun lemmaInGenericMapThenInLongMap!119 (ListLongMap!893 K!9204 Hashable!4499) Unit!67066)

(assert (=> b!4304446 (= lt!1526098 (lemmaInGenericMapThenInLongMap!119 lt!1526089 key!2048 (hashF!6567 thiss!42308)))))

(declare-fun res!1764315 () Bool)

(assert (=> b!4304446 (= res!1764315 call!296840)))

(assert (=> b!4304446 (=> (not res!1764315) (not e!2676220))))

(assert (=> b!4304446 e!2676220))

(declare-fun b!4304447 () Bool)

(assert (=> b!4304447 false))

(declare-fun lt!1526082 () Unit!67066)

(declare-fun lt!1526084 () Unit!67066)

(assert (=> b!4304447 (= lt!1526082 lt!1526084)))

(declare-fun lt!1526097 () ListLongMap!893)

(assert (=> b!4304447 (contains!9986 (extractMap!297 (toList!2284 lt!1526097)) key!2048)))

(declare-fun lemmaInLongMapThenInGenericMap!119 (ListLongMap!893 K!9204 Hashable!4499) Unit!67066)

(assert (=> b!4304447 (= lt!1526084 (lemmaInLongMapThenInGenericMap!119 lt!1526097 key!2048 (hashF!6567 thiss!42308)))))

(assert (=> b!4304447 (= lt!1526097 call!296839)))

(declare-fun Unit!67071 () Unit!67066)

(assert (=> b!4304447 (= e!2676219 Unit!67071)))

(declare-fun bm!296834 () Bool)

(assert (=> bm!296834 (= call!296836 (isDefined!7501 call!296837))))

(declare-fun bm!296835 () Bool)

(declare-fun contains!9990 (ListLongMap!893 (_ BitVec 64)) Bool)

(assert (=> bm!296835 (= call!296840 (contains!9990 (ite c!731953 lt!1526089 call!296839) call!296838))))

(declare-fun b!4304448 () Bool)

(declare-fun Unit!67072 () Unit!67066)

(assert (=> b!4304448 (= e!2676219 Unit!67072)))

(declare-fun bm!296836 () Bool)

(assert (=> bm!296836 (= call!296839 (map!10022 (v!42090 (underlying!9396 thiss!42308))))))

(declare-fun b!4304449 () Bool)

(assert (=> b!4304449 (= e!2676223 call!296836)))

(assert (= (and d!1267266 c!731952) b!4304439))

(assert (= (and d!1267266 (not c!731952)) b!4304442))

(assert (= (and b!4304439 c!731950) b!4304443))

(assert (= (and b!4304439 (not c!731950)) b!4304441))

(assert (= (and d!1267266 c!731953) b!4304446))

(assert (= (and d!1267266 (not c!731953)) b!4304445))

(assert (= (and b!4304446 res!1764315) b!4304440))

(assert (= (and b!4304445 res!1764316) b!4304449))

(assert (= (and b!4304445 c!731951) b!4304447))

(assert (= (and b!4304445 (not c!731951)) b!4304448))

(assert (= (or b!4304446 b!4304445 b!4304449 b!4304447) bm!296836))

(assert (= (or b!4304446 b!4304440 b!4304445 b!4304449) bm!296833))

(assert (= (or b!4304440 b!4304449) bm!296831))

(assert (= (or b!4304446 b!4304445) bm!296835))

(assert (= (or b!4304440 b!4304449) bm!296832))

(assert (= (or b!4304440 b!4304449) bm!296834))

(assert (= (and d!1267266 res!1764317) b!4304444))

(assert (=> bm!296833 m!4897357))

(assert (=> bm!296836 m!4897347))

(declare-fun m!4897371 () Bool)

(assert (=> b!4304447 m!4897371))

(assert (=> b!4304447 m!4897371))

(declare-fun m!4897373 () Bool)

(assert (=> b!4304447 m!4897373))

(declare-fun m!4897375 () Bool)

(assert (=> b!4304447 m!4897375))

(declare-fun m!4897377 () Bool)

(assert (=> b!4304443 m!4897377))

(assert (=> b!4304443 m!4897347))

(declare-fun m!4897379 () Bool)

(assert (=> b!4304443 m!4897379))

(declare-fun m!4897381 () Bool)

(assert (=> b!4304443 m!4897381))

(declare-fun m!4897383 () Bool)

(assert (=> b!4304443 m!4897383))

(declare-fun m!4897385 () Bool)

(assert (=> b!4304443 m!4897385))

(declare-fun m!4897387 () Bool)

(assert (=> b!4304443 m!4897387))

(assert (=> b!4304443 m!4897385))

(declare-fun m!4897389 () Bool)

(assert (=> b!4304443 m!4897389))

(declare-fun m!4897391 () Bool)

(assert (=> b!4304443 m!4897391))

(declare-fun m!4897393 () Bool)

(assert (=> b!4304446 m!4897393))

(declare-fun m!4897395 () Bool)

(assert (=> bm!296831 m!4897395))

(assert (=> b!4304444 m!4897377))

(assert (=> b!4304444 m!4897377))

(declare-fun m!4897397 () Bool)

(assert (=> b!4304444 m!4897397))

(assert (=> b!4304444 m!4897397))

(declare-fun m!4897399 () Bool)

(assert (=> b!4304444 m!4897399))

(assert (=> b!4304439 m!4897347))

(assert (=> b!4304439 m!4897377))

(declare-fun m!4897401 () Bool)

(assert (=> b!4304439 m!4897401))

(declare-fun m!4897403 () Bool)

(assert (=> b!4304439 m!4897403))

(declare-fun m!4897405 () Bool)

(assert (=> bm!296832 m!4897405))

(assert (=> d!1267266 m!4897349))

(assert (=> d!1267266 m!4897347))

(assert (=> d!1267266 m!4897335))

(declare-fun m!4897407 () Bool)

(assert (=> d!1267266 m!4897407))

(declare-fun m!4897409 () Bool)

(assert (=> d!1267266 m!4897409))

(assert (=> d!1267266 m!4897349))

(declare-fun m!4897411 () Bool)

(assert (=> d!1267266 m!4897411))

(assert (=> d!1267266 m!4897357))

(declare-fun m!4897413 () Bool)

(assert (=> d!1267266 m!4897413))

(assert (=> d!1267266 m!4897407))

(declare-fun m!4897415 () Bool)

(assert (=> bm!296835 m!4897415))

(declare-fun m!4897417 () Bool)

(assert (=> bm!296834 m!4897417))

(assert (=> b!4304408 d!1267266))

(declare-fun d!1267268 () Bool)

(declare-fun map!10024 (LongMapFixedSize!9166) ListLongMap!893)

(assert (=> d!1267268 (= (map!10022 (v!42090 (underlying!9396 thiss!42308))) (map!10024 (v!42089 (underlying!9395 (v!42090 (underlying!9396 thiss!42308))))))))

(declare-fun bs!604400 () Bool)

(assert (= bs!604400 d!1267268))

(declare-fun m!4897419 () Bool)

(assert (=> bs!604400 m!4897419))

(assert (=> b!4304408 d!1267268))

(declare-fun d!1267270 () Bool)

(declare-fun lt!1526103 () ListMap!1569)

(declare-fun invariantList!558 (List!48177) Bool)

(assert (=> d!1267270 (invariantList!558 (toList!2285 lt!1526103))))

(assert (=> d!1267270 (= lt!1526103 (extractMap!297 (toList!2284 (map!10022 (v!42090 (underlying!9396 thiss!42308))))))))

(assert (=> d!1267270 (valid!3568 thiss!42308)))

(assert (=> d!1267270 (= (map!10023 thiss!42308) lt!1526103)))

(declare-fun bs!604401 () Bool)

(assert (= bs!604401 d!1267270))

(declare-fun m!4897421 () Bool)

(assert (=> bs!604401 m!4897421))

(assert (=> bs!604401 m!4897347))

(assert (=> bs!604401 m!4897407))

(assert (=> bs!604401 m!4897335))

(assert (=> b!4304408 d!1267270))

(declare-fun d!1267272 () Bool)

(assert (=> d!1267272 (= (array_inv!5275 (_keys!4883 (v!42089 (underlying!9395 (v!42090 (underlying!9396 thiss!42308)))))) (bvsge (size!35390 (_keys!4883 (v!42089 (underlying!9395 (v!42090 (underlying!9396 thiss!42308)))))) #b00000000000000000000000000000000))))

(assert (=> b!4304399 d!1267272))

(declare-fun d!1267274 () Bool)

(assert (=> d!1267274 (= (array_inv!5276 (_values!4864 (v!42089 (underlying!9395 (v!42090 (underlying!9396 thiss!42308)))))) (bvsge (size!35391 (_values!4864 (v!42089 (underlying!9395 (v!42090 (underlying!9396 thiss!42308)))))) #b00000000000000000000000000000000))))

(assert (=> b!4304399 d!1267274))

(declare-fun d!1267276 () Bool)

(declare-fun res!1764322 () Bool)

(declare-fun e!2676229 () Bool)

(assert (=> d!1267276 (=> res!1764322 e!2676229)))

(assert (=> d!1267276 (= res!1764322 (not ((_ is Cons!48053) lt!1526033)))))

(assert (=> d!1267276 (= (noDuplicateKeys!184 lt!1526033) e!2676229)))

(declare-fun b!4304454 () Bool)

(declare-fun e!2676230 () Bool)

(assert (=> b!4304454 (= e!2676229 e!2676230)))

(declare-fun res!1764323 () Bool)

(assert (=> b!4304454 (=> (not res!1764323) (not e!2676230))))

(assert (=> b!4304454 (= res!1764323 (not (containsKey!278 (t!354958 lt!1526033) (_1!26386 (h!53479 lt!1526033)))))))

(declare-fun b!4304455 () Bool)

(assert (=> b!4304455 (= e!2676230 (noDuplicateKeys!184 (t!354958 lt!1526033)))))

(assert (= (and d!1267276 (not res!1764322)) b!4304454))

(assert (= (and b!4304454 res!1764323) b!4304455))

(declare-fun m!4897423 () Bool)

(assert (=> b!4304454 m!4897423))

(declare-fun m!4897425 () Bool)

(assert (=> b!4304455 m!4897425))

(assert (=> b!4304407 d!1267276))

(declare-fun bs!604402 () Bool)

(declare-fun d!1267278 () Bool)

(assert (= bs!604402 (and d!1267278 b!4304397)))

(declare-fun lambda!132382 () Int)

(assert (=> bs!604402 (not (= lambda!132382 lambda!132372))))

(declare-fun bs!604403 () Bool)

(assert (= bs!604403 (and d!1267278 d!1267262)))

(assert (=> bs!604403 (= lambda!132382 lambda!132375)))

(declare-fun bs!604404 () Bool)

(assert (= bs!604404 (and d!1267278 b!4304415)))

(assert (=> bs!604404 (not (= lambda!132382 lambda!132378))))

(declare-fun bs!604405 () Bool)

(assert (= bs!604405 (and d!1267278 b!4304439)))

(assert (=> bs!604405 (not (= lambda!132382 lambda!132381))))

(assert (=> d!1267278 true))

(assert (=> d!1267278 (= (allKeysSameHashInMap!301 lt!1526038 (hashF!6567 thiss!42308)) (forall!8681 (toList!2284 lt!1526038) lambda!132382))))

(declare-fun bs!604406 () Bool)

(assert (= bs!604406 d!1267278))

(declare-fun m!4897427 () Bool)

(assert (=> bs!604406 m!4897427))

(assert (=> b!4304398 d!1267278))

(declare-fun d!1267280 () Bool)

(declare-fun res!1764328 () Bool)

(declare-fun e!2676235 () Bool)

(assert (=> d!1267280 (=> res!1764328 e!2676235)))

(assert (=> d!1267280 (= res!1764328 (and ((_ is Cons!48053) lt!1526040) (= (_1!26386 (h!53479 lt!1526040)) key!2048)))))

(assert (=> d!1267280 (= (containsKey!278 lt!1526040 key!2048) e!2676235)))

(declare-fun b!4304460 () Bool)

(declare-fun e!2676236 () Bool)

(assert (=> b!4304460 (= e!2676235 e!2676236)))

(declare-fun res!1764329 () Bool)

(assert (=> b!4304460 (=> (not res!1764329) (not e!2676236))))

(assert (=> b!4304460 (= res!1764329 ((_ is Cons!48053) lt!1526040))))

(declare-fun b!4304461 () Bool)

(assert (=> b!4304461 (= e!2676236 (containsKey!278 (t!354958 lt!1526040) key!2048))))

(assert (= (and d!1267280 (not res!1764328)) b!4304460))

(assert (= (and b!4304460 res!1764329) b!4304461))

(declare-fun m!4897429 () Bool)

(assert (=> b!4304461 m!4897429))

(assert (=> b!4304402 d!1267280))

(declare-fun d!1267282 () Bool)

(assert (=> d!1267282 (= (contains!9986 lt!1526029 key!2048) (contains!9986 lt!1526024 key!2048))))

(declare-fun lt!1526106 () Unit!67066)

(declare-fun choose!26213 (ListMap!1569 ListMap!1569 K!9204) Unit!67066)

(assert (=> d!1267282 (= lt!1526106 (choose!26213 lt!1526029 lt!1526024 key!2048))))

(assert (=> d!1267282 (eq!121 lt!1526029 lt!1526024)))

(assert (=> d!1267282 (= (lemmaEquivalentThenSameContains!48 lt!1526029 lt!1526024 key!2048) lt!1526106)))

(declare-fun bs!604407 () Bool)

(assert (= bs!604407 d!1267282))

(assert (=> bs!604407 m!4897327))

(assert (=> bs!604407 m!4897315))

(declare-fun m!4897431 () Bool)

(assert (=> bs!604407 m!4897431))

(declare-fun m!4897433 () Bool)

(assert (=> bs!604407 m!4897433))

(assert (=> b!4304397 d!1267282))

(declare-fun d!1267284 () Bool)

(declare-fun res!1764330 () Bool)

(declare-fun e!2676237 () Bool)

(assert (=> d!1267284 (=> res!1764330 e!2676237)))

(assert (=> d!1267284 (= res!1764330 (not ((_ is Cons!48053) lt!1526040)))))

(assert (=> d!1267284 (= (noDuplicateKeys!184 lt!1526040) e!2676237)))

(declare-fun b!4304462 () Bool)

(declare-fun e!2676238 () Bool)

(assert (=> b!4304462 (= e!2676237 e!2676238)))

(declare-fun res!1764331 () Bool)

(assert (=> b!4304462 (=> (not res!1764331) (not e!2676238))))

(assert (=> b!4304462 (= res!1764331 (not (containsKey!278 (t!354958 lt!1526040) (_1!26386 (h!53479 lt!1526040)))))))

(declare-fun b!4304463 () Bool)

(assert (=> b!4304463 (= e!2676238 (noDuplicateKeys!184 (t!354958 lt!1526040)))))

(assert (= (and d!1267284 (not res!1764330)) b!4304462))

(assert (= (and b!4304462 res!1764331) b!4304463))

(declare-fun m!4897435 () Bool)

(assert (=> b!4304462 m!4897435))

(declare-fun m!4897437 () Bool)

(assert (=> b!4304463 m!4897437))

(assert (=> b!4304397 d!1267284))

(declare-fun d!1267286 () Bool)

(assert (=> d!1267286 (allKeysSameHash!153 (removePairForKey!177 lt!1526032 key!2048) lt!1526031 (hashF!6567 thiss!42308))))

(declare-fun lt!1526109 () Unit!67066)

(declare-fun choose!26214 (List!48177 K!9204 (_ BitVec 64) Hashable!4499) Unit!67066)

(assert (=> d!1267286 (= lt!1526109 (choose!26214 lt!1526032 key!2048 lt!1526031 (hashF!6567 thiss!42308)))))

(assert (=> d!1267286 (noDuplicateKeys!184 lt!1526032)))

(assert (=> d!1267286 (= (lemmaRemovePairForKeyPreservesHash!139 lt!1526032 key!2048 lt!1526031 (hashF!6567 thiss!42308)) lt!1526109)))

(declare-fun bs!604408 () Bool)

(assert (= bs!604408 d!1267286))

(assert (=> bs!604408 m!4897353))

(assert (=> bs!604408 m!4897353))

(declare-fun m!4897439 () Bool)

(assert (=> bs!604408 m!4897439))

(declare-fun m!4897441 () Bool)

(assert (=> bs!604408 m!4897441))

(declare-fun m!4897443 () Bool)

(assert (=> bs!604408 m!4897443))

(assert (=> b!4304397 d!1267286))

(declare-fun bs!604409 () Bool)

(declare-fun d!1267288 () Bool)

(assert (= bs!604409 (and d!1267288 d!1267262)))

(declare-fun lambda!132385 () Int)

(assert (=> bs!604409 (not (= lambda!132385 lambda!132375))))

(declare-fun bs!604410 () Bool)

(assert (= bs!604410 (and d!1267288 d!1267278)))

(assert (=> bs!604410 (not (= lambda!132385 lambda!132382))))

(declare-fun bs!604411 () Bool)

(assert (= bs!604411 (and d!1267288 b!4304415)))

(assert (=> bs!604411 (= lambda!132385 lambda!132378)))

(declare-fun bs!604412 () Bool)

(assert (= bs!604412 (and d!1267288 b!4304397)))

(assert (=> bs!604412 (= lambda!132385 lambda!132372)))

(declare-fun bs!604413 () Bool)

(assert (= bs!604413 (and d!1267288 b!4304439)))

(assert (=> bs!604413 (= lambda!132385 lambda!132381)))

(declare-fun lt!1526112 () ListMap!1569)

(assert (=> d!1267288 (invariantList!558 (toList!2285 lt!1526112))))

(declare-fun e!2676241 () ListMap!1569)

(assert (=> d!1267288 (= lt!1526112 e!2676241)))

(declare-fun c!731956 () Bool)

(assert (=> d!1267288 (= c!731956 ((_ is Cons!48054) (toList!2284 lt!1526036)))))

(assert (=> d!1267288 (forall!8681 (toList!2284 lt!1526036) lambda!132385)))

(assert (=> d!1267288 (= (extractMap!297 (toList!2284 lt!1526036)) lt!1526112)))

(declare-fun b!4304468 () Bool)

(declare-fun addToMapMapFromBucket!29 (List!48177 ListMap!1569) ListMap!1569)

(assert (=> b!4304468 (= e!2676241 (addToMapMapFromBucket!29 (_2!26387 (h!53480 (toList!2284 lt!1526036))) (extractMap!297 (t!354959 (toList!2284 lt!1526036)))))))

(declare-fun b!4304469 () Bool)

(assert (=> b!4304469 (= e!2676241 (ListMap!1570 Nil!48053))))

(assert (= (and d!1267288 c!731956) b!4304468))

(assert (= (and d!1267288 (not c!731956)) b!4304469))

(declare-fun m!4897445 () Bool)

(assert (=> d!1267288 m!4897445))

(declare-fun m!4897447 () Bool)

(assert (=> d!1267288 m!4897447))

(declare-fun m!4897449 () Bool)

(assert (=> b!4304468 m!4897449))

(assert (=> b!4304468 m!4897449))

(declare-fun m!4897451 () Bool)

(assert (=> b!4304468 m!4897451))

(assert (=> b!4304397 d!1267288))

(declare-fun d!1267290 () Bool)

(declare-fun e!2676244 () Bool)

(assert (=> d!1267290 e!2676244))

(declare-fun res!1764336 () Bool)

(assert (=> d!1267290 (=> (not res!1764336) (not e!2676244))))

(declare-fun lt!1526123 () ListMap!1569)

(assert (=> d!1267290 (= res!1764336 (contains!9986 lt!1526123 (_1!26386 lt!1526026)))))

(declare-fun lt!1526122 () List!48177)

(assert (=> d!1267290 (= lt!1526123 (ListMap!1570 lt!1526122))))

(declare-fun lt!1526124 () Unit!67066)

(declare-fun lt!1526121 () Unit!67066)

(assert (=> d!1267290 (= lt!1526124 lt!1526121)))

(declare-datatypes ((Option!10194 0))(
  ( (None!10193) (Some!10193 (v!42097 V!9406)) )
))
(declare-fun getValueByKey!233 (List!48177 K!9204) Option!10194)

(assert (=> d!1267290 (= (getValueByKey!233 lt!1526122 (_1!26386 lt!1526026)) (Some!10193 (_2!26386 lt!1526026)))))

(declare-fun lemmaContainsTupThenGetReturnValue!58 (List!48177 K!9204 V!9406) Unit!67066)

(assert (=> d!1267290 (= lt!1526121 (lemmaContainsTupThenGetReturnValue!58 lt!1526122 (_1!26386 lt!1526026) (_2!26386 lt!1526026)))))

(declare-fun insertNoDuplicatedKeys!37 (List!48177 K!9204 V!9406) List!48177)

(assert (=> d!1267290 (= lt!1526122 (insertNoDuplicatedKeys!37 (toList!2285 (extractMap!297 (toList!2284 lt!1526037))) (_1!26386 lt!1526026) (_2!26386 lt!1526026)))))

(assert (=> d!1267290 (= (+!219 (extractMap!297 (toList!2284 lt!1526037)) lt!1526026) lt!1526123)))

(declare-fun b!4304474 () Bool)

(declare-fun res!1764337 () Bool)

(assert (=> b!4304474 (=> (not res!1764337) (not e!2676244))))

(assert (=> b!4304474 (= res!1764337 (= (getValueByKey!233 (toList!2285 lt!1526123) (_1!26386 lt!1526026)) (Some!10193 (_2!26386 lt!1526026))))))

(declare-fun b!4304475 () Bool)

(declare-fun contains!9991 (List!48177 tuple2!46214) Bool)

(assert (=> b!4304475 (= e!2676244 (contains!9991 (toList!2285 lt!1526123) lt!1526026))))

(assert (= (and d!1267290 res!1764336) b!4304474))

(assert (= (and b!4304474 res!1764337) b!4304475))

(declare-fun m!4897453 () Bool)

(assert (=> d!1267290 m!4897453))

(declare-fun m!4897455 () Bool)

(assert (=> d!1267290 m!4897455))

(declare-fun m!4897457 () Bool)

(assert (=> d!1267290 m!4897457))

(declare-fun m!4897459 () Bool)

(assert (=> d!1267290 m!4897459))

(declare-fun m!4897461 () Bool)

(assert (=> b!4304474 m!4897461))

(declare-fun m!4897463 () Bool)

(assert (=> b!4304475 m!4897463))

(assert (=> b!4304397 d!1267290))

(declare-fun d!1267292 () Bool)

(declare-fun res!1764342 () Bool)

(declare-fun e!2676249 () Bool)

(assert (=> d!1267292 (=> res!1764342 e!2676249)))

(assert (=> d!1267292 (= res!1764342 ((_ is Nil!48054) (toList!2284 lt!1526038)))))

(assert (=> d!1267292 (= (forall!8681 (toList!2284 lt!1526038) lambda!132372) e!2676249)))

(declare-fun b!4304480 () Bool)

(declare-fun e!2676250 () Bool)

(assert (=> b!4304480 (= e!2676249 e!2676250)))

(declare-fun res!1764343 () Bool)

(assert (=> b!4304480 (=> (not res!1764343) (not e!2676250))))

(declare-fun dynLambda!20392 (Int tuple2!46216) Bool)

(assert (=> b!4304480 (= res!1764343 (dynLambda!20392 lambda!132372 (h!53480 (toList!2284 lt!1526038))))))

(declare-fun b!4304481 () Bool)

(assert (=> b!4304481 (= e!2676250 (forall!8681 (t!354959 (toList!2284 lt!1526038)) lambda!132372))))

(assert (= (and d!1267292 (not res!1764342)) b!4304480))

(assert (= (and b!4304480 res!1764343) b!4304481))

(declare-fun b_lambda!126491 () Bool)

(assert (=> (not b_lambda!126491) (not b!4304480)))

(declare-fun m!4897465 () Bool)

(assert (=> b!4304480 m!4897465))

(declare-fun m!4897467 () Bool)

(assert (=> b!4304481 m!4897467))

(assert (=> b!4304397 d!1267292))

(declare-fun bs!604414 () Bool)

(declare-fun d!1267294 () Bool)

(assert (= bs!604414 (and d!1267294 d!1267262)))

(declare-fun lambda!132386 () Int)

(assert (=> bs!604414 (not (= lambda!132386 lambda!132375))))

(declare-fun bs!604415 () Bool)

(assert (= bs!604415 (and d!1267294 d!1267278)))

(assert (=> bs!604415 (not (= lambda!132386 lambda!132382))))

(declare-fun bs!604416 () Bool)

(assert (= bs!604416 (and d!1267294 b!4304415)))

(assert (=> bs!604416 (= lambda!132386 lambda!132378)))

(declare-fun bs!604417 () Bool)

(assert (= bs!604417 (and d!1267294 b!4304397)))

(assert (=> bs!604417 (= lambda!132386 lambda!132372)))

(declare-fun bs!604418 () Bool)

(assert (= bs!604418 (and d!1267294 b!4304439)))

(assert (=> bs!604418 (= lambda!132386 lambda!132381)))

(declare-fun bs!604419 () Bool)

(assert (= bs!604419 (and d!1267294 d!1267288)))

(assert (=> bs!604419 (= lambda!132386 lambda!132385)))

(declare-fun lt!1526125 () ListMap!1569)

(assert (=> d!1267294 (invariantList!558 (toList!2285 lt!1526125))))

(declare-fun e!2676251 () ListMap!1569)

(assert (=> d!1267294 (= lt!1526125 e!2676251)))

(declare-fun c!731957 () Bool)

(assert (=> d!1267294 (= c!731957 ((_ is Cons!48054) (toList!2284 lt!1526037)))))

(assert (=> d!1267294 (forall!8681 (toList!2284 lt!1526037) lambda!132386)))

(assert (=> d!1267294 (= (extractMap!297 (toList!2284 lt!1526037)) lt!1526125)))

(declare-fun b!4304482 () Bool)

(assert (=> b!4304482 (= e!2676251 (addToMapMapFromBucket!29 (_2!26387 (h!53480 (toList!2284 lt!1526037))) (extractMap!297 (t!354959 (toList!2284 lt!1526037)))))))

(declare-fun b!4304483 () Bool)

(assert (=> b!4304483 (= e!2676251 (ListMap!1570 Nil!48053))))

(assert (= (and d!1267294 c!731957) b!4304482))

(assert (= (and d!1267294 (not c!731957)) b!4304483))

(declare-fun m!4897469 () Bool)

(assert (=> d!1267294 m!4897469))

(declare-fun m!4897471 () Bool)

(assert (=> d!1267294 m!4897471))

(declare-fun m!4897473 () Bool)

(assert (=> b!4304482 m!4897473))

(assert (=> b!4304482 m!4897473))

(declare-fun m!4897475 () Bool)

(assert (=> b!4304482 m!4897475))

(assert (=> b!4304397 d!1267294))

(declare-fun d!1267296 () Bool)

(declare-fun res!1764344 () Bool)

(declare-fun e!2676252 () Bool)

(assert (=> d!1267296 (=> res!1764344 e!2676252)))

(assert (=> d!1267296 (= res!1764344 ((_ is Nil!48054) (toList!2284 lt!1526036)))))

(assert (=> d!1267296 (= (forall!8681 (toList!2284 lt!1526036) lambda!132372) e!2676252)))

(declare-fun b!4304484 () Bool)

(declare-fun e!2676253 () Bool)

(assert (=> b!4304484 (= e!2676252 e!2676253)))

(declare-fun res!1764345 () Bool)

(assert (=> b!4304484 (=> (not res!1764345) (not e!2676253))))

(assert (=> b!4304484 (= res!1764345 (dynLambda!20392 lambda!132372 (h!53480 (toList!2284 lt!1526036))))))

(declare-fun b!4304485 () Bool)

(assert (=> b!4304485 (= e!2676253 (forall!8681 (t!354959 (toList!2284 lt!1526036)) lambda!132372))))

(assert (= (and d!1267296 (not res!1764344)) b!4304484))

(assert (= (and b!4304484 res!1764345) b!4304485))

(declare-fun b_lambda!126493 () Bool)

(assert (=> (not b_lambda!126493) (not b!4304484)))

(declare-fun m!4897477 () Bool)

(assert (=> b!4304484 m!4897477))

(declare-fun m!4897479 () Bool)

(assert (=> b!4304485 m!4897479))

(assert (=> b!4304397 d!1267296))

(declare-fun bs!604420 () Bool)

(declare-fun b!4304486 () Bool)

(assert (= bs!604420 (and b!4304486 d!1267294)))

(declare-fun lambda!132387 () Int)

(assert (=> bs!604420 (= lambda!132387 lambda!132386)))

(declare-fun bs!604421 () Bool)

(assert (= bs!604421 (and b!4304486 d!1267262)))

(assert (=> bs!604421 (not (= lambda!132387 lambda!132375))))

(declare-fun bs!604422 () Bool)

(assert (= bs!604422 (and b!4304486 d!1267278)))

(assert (=> bs!604422 (not (= lambda!132387 lambda!132382))))

(declare-fun bs!604423 () Bool)

(assert (= bs!604423 (and b!4304486 b!4304415)))

(assert (=> bs!604423 (= lambda!132387 lambda!132378)))

(declare-fun bs!604424 () Bool)

(assert (= bs!604424 (and b!4304486 b!4304397)))

(assert (=> bs!604424 (= lambda!132387 lambda!132372)))

(declare-fun bs!604425 () Bool)

(assert (= bs!604425 (and b!4304486 b!4304439)))

(assert (=> bs!604425 (= lambda!132387 lambda!132381)))

(declare-fun bs!604426 () Bool)

(assert (= bs!604426 (and b!4304486 d!1267288)))

(assert (=> bs!604426 (= lambda!132387 lambda!132385)))

(declare-fun d!1267298 () Bool)

(declare-fun res!1764346 () Bool)

(declare-fun e!2676254 () Bool)

(assert (=> d!1267298 (=> (not res!1764346) (not e!2676254))))

(assert (=> d!1267298 (= res!1764346 (valid!3569 (v!42090 (underlying!9396 lt!1526022))))))

(assert (=> d!1267298 (= (valid!3568 lt!1526022) e!2676254)))

(declare-fun res!1764347 () Bool)

(assert (=> b!4304486 (=> (not res!1764347) (not e!2676254))))

(assert (=> b!4304486 (= res!1764347 (forall!8681 (toList!2284 (map!10022 (v!42090 (underlying!9396 lt!1526022)))) lambda!132387))))

(declare-fun b!4304487 () Bool)

(assert (=> b!4304487 (= e!2676254 (allKeysSameHashInMap!301 (map!10022 (v!42090 (underlying!9396 lt!1526022))) (hashF!6567 lt!1526022)))))

(assert (= (and d!1267298 res!1764346) b!4304486))

(assert (= (and b!4304486 res!1764347) b!4304487))

(declare-fun m!4897481 () Bool)

(assert (=> d!1267298 m!4897481))

(declare-fun m!4897483 () Bool)

(assert (=> b!4304486 m!4897483))

(declare-fun m!4897485 () Bool)

(assert (=> b!4304486 m!4897485))

(assert (=> b!4304487 m!4897483))

(assert (=> b!4304487 m!4897483))

(declare-fun m!4897487 () Bool)

(assert (=> b!4304487 m!4897487))

(assert (=> b!4304397 d!1267298))

(declare-fun d!1267300 () Bool)

(declare-fun e!2676257 () Bool)

(assert (=> d!1267300 e!2676257))

(declare-fun res!1764353 () Bool)

(assert (=> d!1267300 (=> (not res!1764353) (not e!2676257))))

(declare-fun lt!1526137 () ListLongMap!893)

(assert (=> d!1267300 (= res!1764353 (contains!9990 lt!1526137 (_1!26387 (tuple2!46217 lt!1526031 lt!1526033))))))

(declare-fun lt!1526136 () List!48178)

(assert (=> d!1267300 (= lt!1526137 (ListLongMap!894 lt!1526136))))

(declare-fun lt!1526135 () Unit!67066)

(declare-fun lt!1526134 () Unit!67066)

(assert (=> d!1267300 (= lt!1526135 lt!1526134)))

(assert (=> d!1267300 (= (getValueByKey!232 lt!1526136 (_1!26387 (tuple2!46217 lt!1526031 lt!1526033))) (Some!10192 (_2!26387 (tuple2!46217 lt!1526031 lt!1526033))))))

(declare-fun lemmaContainsTupThenGetReturnValue!59 (List!48178 (_ BitVec 64) List!48177) Unit!67066)

(assert (=> d!1267300 (= lt!1526134 (lemmaContainsTupThenGetReturnValue!59 lt!1526136 (_1!26387 (tuple2!46217 lt!1526031 lt!1526033)) (_2!26387 (tuple2!46217 lt!1526031 lt!1526033))))))

(declare-fun insertStrictlySorted!30 (List!48178 (_ BitVec 64) List!48177) List!48178)

(assert (=> d!1267300 (= lt!1526136 (insertStrictlySorted!30 (toList!2284 lt!1526037) (_1!26387 (tuple2!46217 lt!1526031 lt!1526033)) (_2!26387 (tuple2!46217 lt!1526031 lt!1526033))))))

(assert (=> d!1267300 (= (+!220 lt!1526037 (tuple2!46217 lt!1526031 lt!1526033)) lt!1526137)))

(declare-fun b!4304492 () Bool)

(declare-fun res!1764352 () Bool)

(assert (=> b!4304492 (=> (not res!1764352) (not e!2676257))))

(assert (=> b!4304492 (= res!1764352 (= (getValueByKey!232 (toList!2284 lt!1526137) (_1!26387 (tuple2!46217 lt!1526031 lt!1526033))) (Some!10192 (_2!26387 (tuple2!46217 lt!1526031 lt!1526033)))))))

(declare-fun b!4304493 () Bool)

(assert (=> b!4304493 (= e!2676257 (contains!9988 (toList!2284 lt!1526137) (tuple2!46217 lt!1526031 lt!1526033)))))

(assert (= (and d!1267300 res!1764353) b!4304492))

(assert (= (and b!4304492 res!1764352) b!4304493))

(declare-fun m!4897489 () Bool)

(assert (=> d!1267300 m!4897489))

(declare-fun m!4897491 () Bool)

(assert (=> d!1267300 m!4897491))

(declare-fun m!4897493 () Bool)

(assert (=> d!1267300 m!4897493))

(declare-fun m!4897495 () Bool)

(assert (=> d!1267300 m!4897495))

(declare-fun m!4897497 () Bool)

(assert (=> b!4304492 m!4897497))

(declare-fun m!4897499 () Bool)

(assert (=> b!4304493 m!4897499))

(assert (=> b!4304397 d!1267300))

(declare-fun d!1267302 () Bool)

(declare-fun lt!1526138 () ListMap!1569)

(assert (=> d!1267302 (invariantList!558 (toList!2285 lt!1526138))))

(assert (=> d!1267302 (= lt!1526138 (extractMap!297 (toList!2284 (map!10022 (v!42090 (underlying!9396 lt!1526022))))))))

(assert (=> d!1267302 (valid!3568 lt!1526022)))

(assert (=> d!1267302 (= (map!10023 lt!1526022) lt!1526138)))

(declare-fun bs!604427 () Bool)

(assert (= bs!604427 d!1267302))

(declare-fun m!4897501 () Bool)

(assert (=> bs!604427 m!4897501))

(assert (=> bs!604427 m!4897483))

(declare-fun m!4897503 () Bool)

(assert (=> bs!604427 m!4897503))

(assert (=> bs!604427 m!4897331))

(assert (=> b!4304397 d!1267302))

(declare-fun bs!604428 () Bool)

(declare-fun d!1267304 () Bool)

(assert (= bs!604428 (and d!1267304 d!1267294)))

(declare-fun lambda!132390 () Int)

(assert (=> bs!604428 (not (= lambda!132390 lambda!132386))))

(declare-fun bs!604429 () Bool)

(assert (= bs!604429 (and d!1267304 d!1267262)))

(assert (=> bs!604429 (= lambda!132390 lambda!132375)))

(declare-fun bs!604430 () Bool)

(assert (= bs!604430 (and d!1267304 d!1267278)))

(assert (=> bs!604430 (= lambda!132390 lambda!132382)))

(declare-fun bs!604431 () Bool)

(assert (= bs!604431 (and d!1267304 b!4304486)))

(assert (=> bs!604431 (not (= lambda!132390 lambda!132387))))

(declare-fun bs!604432 () Bool)

(assert (= bs!604432 (and d!1267304 b!4304415)))

(assert (=> bs!604432 (not (= lambda!132390 lambda!132378))))

(declare-fun bs!604433 () Bool)

(assert (= bs!604433 (and d!1267304 b!4304397)))

(assert (=> bs!604433 (not (= lambda!132390 lambda!132372))))

(declare-fun bs!604434 () Bool)

(assert (= bs!604434 (and d!1267304 b!4304439)))

(assert (=> bs!604434 (not (= lambda!132390 lambda!132381))))

(declare-fun bs!604435 () Bool)

(assert (= bs!604435 (and d!1267304 d!1267288)))

(assert (=> bs!604435 (not (= lambda!132390 lambda!132385))))

(assert (=> d!1267304 true))

(assert (=> d!1267304 (allKeysSameHash!153 lt!1526032 lt!1526031 (hashF!6567 thiss!42308))))

(declare-fun lt!1526141 () Unit!67066)

(declare-fun choose!26215 (List!48178 (_ BitVec 64) List!48177 Hashable!4499) Unit!67066)

(assert (=> d!1267304 (= lt!1526141 (choose!26215 (toList!2284 lt!1526037) lt!1526031 lt!1526032 (hashF!6567 thiss!42308)))))

(assert (=> d!1267304 (forall!8681 (toList!2284 lt!1526037) lambda!132390)))

(assert (=> d!1267304 (= (lemmaInLongMapAllKeySameHashThenForTuple!144 (toList!2284 lt!1526037) lt!1526031 lt!1526032 (hashF!6567 thiss!42308)) lt!1526141)))

(declare-fun bs!604436 () Bool)

(assert (= bs!604436 d!1267304))

(assert (=> bs!604436 m!4897323))

(declare-fun m!4897505 () Bool)

(assert (=> bs!604436 m!4897505))

(declare-fun m!4897507 () Bool)

(assert (=> bs!604436 m!4897507))

(assert (=> b!4304397 d!1267304))

(declare-fun d!1267306 () Bool)

(assert (=> d!1267306 true))

(assert (=> d!1267306 true))

(declare-fun lambda!132393 () Int)

(declare-fun forall!8682 (List!48177 Int) Bool)

(assert (=> d!1267306 (= (allKeysSameHash!153 lt!1526040 lt!1526031 (hashF!6567 thiss!42308)) (forall!8682 lt!1526040 lambda!132393))))

(declare-fun bs!604437 () Bool)

(assert (= bs!604437 d!1267306))

(declare-fun m!4897509 () Bool)

(assert (=> bs!604437 m!4897509))

(assert (=> b!4304397 d!1267306))

(declare-fun d!1267308 () Bool)

(assert (=> d!1267308 (= (map!10022 (_2!26388 lt!1526027)) (map!10024 (v!42089 (underlying!9395 (_2!26388 lt!1526027)))))))

(declare-fun bs!604438 () Bool)

(assert (= bs!604438 d!1267308))

(declare-fun m!4897511 () Bool)

(assert (=> bs!604438 m!4897511))

(assert (=> b!4304397 d!1267308))

(declare-fun b!4304516 () Bool)

(declare-fun e!2676275 () Unit!67066)

(declare-fun Unit!67073 () Unit!67066)

(assert (=> b!4304516 (= e!2676275 Unit!67073)))

(declare-fun b!4304517 () Bool)

(declare-fun e!2676273 () Unit!67066)

(assert (=> b!4304517 (= e!2676273 e!2676275)))

(declare-fun c!731966 () Bool)

(declare-fun call!296844 () Bool)

(assert (=> b!4304517 (= c!731966 call!296844)))

(declare-fun b!4304518 () Bool)

(declare-fun e!2676272 () Bool)

(declare-datatypes ((List!48179 0))(
  ( (Nil!48055) (Cons!48055 (h!53482 K!9204) (t!354962 List!48179)) )
))
(declare-fun contains!9992 (List!48179 K!9204) Bool)

(declare-fun keys!15988 (ListMap!1569) List!48179)

(assert (=> b!4304518 (= e!2676272 (not (contains!9992 (keys!15988 lt!1526024) key!2048)))))

(declare-fun b!4304519 () Bool)

(declare-fun e!2676271 () Bool)

(declare-fun e!2676274 () Bool)

(assert (=> b!4304519 (= e!2676271 e!2676274)))

(declare-fun res!1764361 () Bool)

(assert (=> b!4304519 (=> (not res!1764361) (not e!2676274))))

(declare-fun isDefined!7502 (Option!10194) Bool)

(assert (=> b!4304519 (= res!1764361 (isDefined!7502 (getValueByKey!233 (toList!2285 lt!1526024) key!2048)))))

(declare-fun b!4304520 () Bool)

(assert (=> b!4304520 false))

(declare-fun lt!1526158 () Unit!67066)

(declare-fun lt!1526159 () Unit!67066)

(assert (=> b!4304520 (= lt!1526158 lt!1526159)))

(declare-fun containsKey!280 (List!48177 K!9204) Bool)

(assert (=> b!4304520 (containsKey!280 (toList!2285 lt!1526024) key!2048)))

(declare-fun lemmaInGetKeysListThenContainsKey!38 (List!48177 K!9204) Unit!67066)

(assert (=> b!4304520 (= lt!1526159 (lemmaInGetKeysListThenContainsKey!38 (toList!2285 lt!1526024) key!2048))))

(declare-fun Unit!67074 () Unit!67066)

(assert (=> b!4304520 (= e!2676275 Unit!67074)))

(declare-fun b!4304521 () Bool)

(declare-fun lt!1526162 () Unit!67066)

(assert (=> b!4304521 (= e!2676273 lt!1526162)))

(declare-fun lt!1526161 () Unit!67066)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!159 (List!48177 K!9204) Unit!67066)

(assert (=> b!4304521 (= lt!1526161 (lemmaContainsKeyImpliesGetValueByKeyDefined!159 (toList!2285 lt!1526024) key!2048))))

(assert (=> b!4304521 (isDefined!7502 (getValueByKey!233 (toList!2285 lt!1526024) key!2048))))

(declare-fun lt!1526160 () Unit!67066)

(assert (=> b!4304521 (= lt!1526160 lt!1526161)))

(declare-fun lemmaInListThenGetKeysListContains!38 (List!48177 K!9204) Unit!67066)

(assert (=> b!4304521 (= lt!1526162 (lemmaInListThenGetKeysListContains!38 (toList!2285 lt!1526024) key!2048))))

(assert (=> b!4304521 call!296844))

(declare-fun b!4304522 () Bool)

(declare-fun e!2676270 () List!48179)

(assert (=> b!4304522 (= e!2676270 (keys!15988 lt!1526024))))

(declare-fun bm!296839 () Bool)

(assert (=> bm!296839 (= call!296844 (contains!9992 e!2676270 key!2048))))

(declare-fun c!731964 () Bool)

(declare-fun c!731965 () Bool)

(assert (=> bm!296839 (= c!731964 c!731965)))

(declare-fun d!1267310 () Bool)

(assert (=> d!1267310 e!2676271))

(declare-fun res!1764362 () Bool)

(assert (=> d!1267310 (=> res!1764362 e!2676271)))

(assert (=> d!1267310 (= res!1764362 e!2676272)))

(declare-fun res!1764360 () Bool)

(assert (=> d!1267310 (=> (not res!1764360) (not e!2676272))))

(declare-fun lt!1526165 () Bool)

(assert (=> d!1267310 (= res!1764360 (not lt!1526165))))

(declare-fun lt!1526164 () Bool)

(assert (=> d!1267310 (= lt!1526165 lt!1526164)))

(declare-fun lt!1526163 () Unit!67066)

(assert (=> d!1267310 (= lt!1526163 e!2676273)))

(assert (=> d!1267310 (= c!731965 lt!1526164)))

(assert (=> d!1267310 (= lt!1526164 (containsKey!280 (toList!2285 lt!1526024) key!2048))))

(assert (=> d!1267310 (= (contains!9986 lt!1526024 key!2048) lt!1526165)))

(declare-fun b!4304523 () Bool)

(declare-fun getKeysList!41 (List!48177) List!48179)

(assert (=> b!4304523 (= e!2676270 (getKeysList!41 (toList!2285 lt!1526024)))))

(declare-fun b!4304524 () Bool)

(assert (=> b!4304524 (= e!2676274 (contains!9992 (keys!15988 lt!1526024) key!2048))))

(assert (= (and d!1267310 c!731965) b!4304521))

(assert (= (and d!1267310 (not c!731965)) b!4304517))

(assert (= (and b!4304517 c!731966) b!4304520))

(assert (= (and b!4304517 (not c!731966)) b!4304516))

(assert (= (or b!4304521 b!4304517) bm!296839))

(assert (= (and bm!296839 c!731964) b!4304523))

(assert (= (and bm!296839 (not c!731964)) b!4304522))

(assert (= (and d!1267310 res!1764360) b!4304518))

(assert (= (and d!1267310 (not res!1764362)) b!4304519))

(assert (= (and b!4304519 res!1764361) b!4304524))

(declare-fun m!4897513 () Bool)

(assert (=> b!4304520 m!4897513))

(declare-fun m!4897515 () Bool)

(assert (=> b!4304520 m!4897515))

(declare-fun m!4897517 () Bool)

(assert (=> b!4304523 m!4897517))

(declare-fun m!4897519 () Bool)

(assert (=> b!4304518 m!4897519))

(assert (=> b!4304518 m!4897519))

(declare-fun m!4897521 () Bool)

(assert (=> b!4304518 m!4897521))

(assert (=> d!1267310 m!4897513))

(declare-fun m!4897523 () Bool)

(assert (=> b!4304521 m!4897523))

(declare-fun m!4897525 () Bool)

(assert (=> b!4304521 m!4897525))

(assert (=> b!4304521 m!4897525))

(declare-fun m!4897527 () Bool)

(assert (=> b!4304521 m!4897527))

(declare-fun m!4897529 () Bool)

(assert (=> b!4304521 m!4897529))

(assert (=> b!4304519 m!4897525))

(assert (=> b!4304519 m!4897525))

(assert (=> b!4304519 m!4897527))

(assert (=> b!4304522 m!4897519))

(assert (=> b!4304524 m!4897519))

(assert (=> b!4304524 m!4897519))

(assert (=> b!4304524 m!4897521))

(declare-fun m!4897531 () Bool)

(assert (=> bm!296839 m!4897531))

(assert (=> b!4304397 d!1267310))

(declare-fun d!1267312 () Bool)

(assert (=> d!1267312 (noDuplicateKeys!184 (removePairForKey!177 lt!1526032 key!2048))))

(declare-fun lt!1526168 () Unit!67066)

(declare-fun choose!26216 (List!48177 K!9204) Unit!67066)

(assert (=> d!1267312 (= lt!1526168 (choose!26216 lt!1526032 key!2048))))

(assert (=> d!1267312 (noDuplicateKeys!184 lt!1526032)))

(assert (=> d!1267312 (= (lemmaRemovePairForKeyPreservesNoDuplicateKeys!156 lt!1526032 key!2048) lt!1526168)))

(declare-fun bs!604439 () Bool)

(assert (= bs!604439 d!1267312))

(assert (=> bs!604439 m!4897353))

(assert (=> bs!604439 m!4897353))

(declare-fun m!4897533 () Bool)

(assert (=> bs!604439 m!4897533))

(declare-fun m!4897535 () Bool)

(assert (=> bs!604439 m!4897535))

(assert (=> bs!604439 m!4897443))

(assert (=> b!4304397 d!1267312))

(declare-fun d!1267314 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!7546 (List!48177) (InoxSet tuple2!46214))

(assert (=> d!1267314 (= (eq!121 (extractMap!297 (toList!2284 lt!1526036)) (+!219 (extractMap!297 (toList!2284 lt!1526037)) lt!1526026)) (= (content!7546 (toList!2285 (extractMap!297 (toList!2284 lt!1526036)))) (content!7546 (toList!2285 (+!219 (extractMap!297 (toList!2284 lt!1526037)) lt!1526026)))))))

(declare-fun bs!604440 () Bool)

(assert (= bs!604440 d!1267314))

(declare-fun m!4897537 () Bool)

(assert (=> bs!604440 m!4897537))

(declare-fun m!4897539 () Bool)

(assert (=> bs!604440 m!4897539))

(assert (=> b!4304397 d!1267314))

(declare-fun bs!604441 () Bool)

(declare-fun d!1267316 () Bool)

(assert (= bs!604441 (and d!1267316 d!1267294)))

(declare-fun lambda!132398 () Int)

(assert (=> bs!604441 (= lambda!132398 lambda!132386)))

(declare-fun bs!604442 () Bool)

(assert (= bs!604442 (and d!1267316 d!1267262)))

(assert (=> bs!604442 (not (= lambda!132398 lambda!132375))))

(declare-fun bs!604443 () Bool)

(assert (= bs!604443 (and d!1267316 d!1267278)))

(assert (=> bs!604443 (not (= lambda!132398 lambda!132382))))

(declare-fun bs!604444 () Bool)

(assert (= bs!604444 (and d!1267316 b!4304486)))

(assert (=> bs!604444 (= lambda!132398 lambda!132387)))

(declare-fun bs!604445 () Bool)

(assert (= bs!604445 (and d!1267316 d!1267304)))

(assert (=> bs!604445 (not (= lambda!132398 lambda!132390))))

(declare-fun bs!604446 () Bool)

(assert (= bs!604446 (and d!1267316 b!4304415)))

(assert (=> bs!604446 (= lambda!132398 lambda!132378)))

(declare-fun bs!604447 () Bool)

(assert (= bs!604447 (and d!1267316 b!4304397)))

(assert (=> bs!604447 (= lambda!132398 lambda!132372)))

(declare-fun bs!604448 () Bool)

(assert (= bs!604448 (and d!1267316 b!4304439)))

(assert (=> bs!604448 (= lambda!132398 lambda!132381)))

(declare-fun bs!604449 () Bool)

(assert (= bs!604449 (and d!1267316 d!1267288)))

(assert (=> bs!604449 (= lambda!132398 lambda!132385)))

(declare-fun e!2676278 () Bool)

(assert (=> d!1267316 e!2676278))

(declare-fun res!1764365 () Bool)

(assert (=> d!1267316 (=> (not res!1764365) (not e!2676278))))

(declare-fun lt!1526174 () ListLongMap!893)

(assert (=> d!1267316 (= res!1764365 (forall!8681 (toList!2284 lt!1526174) lambda!132398))))

(assert (=> d!1267316 (= lt!1526174 (+!220 lt!1526037 (tuple2!46217 lt!1526031 lt!1526033)))))

(declare-fun lt!1526173 () Unit!67066)

(declare-fun choose!26217 (ListLongMap!893 (_ BitVec 64) List!48177 Hashable!4499) Unit!67066)

(assert (=> d!1267316 (= lt!1526173 (choose!26217 lt!1526037 lt!1526031 lt!1526033 (hashF!6567 thiss!42308)))))

(assert (=> d!1267316 (forall!8681 (toList!2284 lt!1526037) lambda!132398)))

(assert (=> d!1267316 (= (lemmaChangeOneBucketByAValidOnePreservesForallNoDuplicatesAndHash!124 lt!1526037 lt!1526031 lt!1526033 (hashF!6567 thiss!42308)) lt!1526173)))

(declare-fun b!4304527 () Bool)

(assert (=> b!4304527 (= e!2676278 (allKeysSameHashInMap!301 lt!1526174 (hashF!6567 thiss!42308)))))

(assert (= (and d!1267316 res!1764365) b!4304527))

(declare-fun m!4897541 () Bool)

(assert (=> d!1267316 m!4897541))

(assert (=> d!1267316 m!4897317))

(declare-fun m!4897543 () Bool)

(assert (=> d!1267316 m!4897543))

(declare-fun m!4897545 () Bool)

(assert (=> d!1267316 m!4897545))

(declare-fun m!4897547 () Bool)

(assert (=> b!4304527 m!4897547))

(assert (=> b!4304397 d!1267316))

(declare-fun bs!604450 () Bool)

(declare-fun d!1267318 () Bool)

(assert (= bs!604450 (and d!1267318 d!1267294)))

(declare-fun lambda!132401 () Int)

(assert (=> bs!604450 (= lambda!132401 lambda!132386)))

(declare-fun bs!604451 () Bool)

(assert (= bs!604451 (and d!1267318 d!1267262)))

(assert (=> bs!604451 (not (= lambda!132401 lambda!132375))))

(declare-fun bs!604452 () Bool)

(assert (= bs!604452 (and d!1267318 d!1267278)))

(assert (=> bs!604452 (not (= lambda!132401 lambda!132382))))

(declare-fun bs!604453 () Bool)

(assert (= bs!604453 (and d!1267318 b!4304486)))

(assert (=> bs!604453 (= lambda!132401 lambda!132387)))

(declare-fun bs!604454 () Bool)

(assert (= bs!604454 (and d!1267318 d!1267304)))

(assert (=> bs!604454 (not (= lambda!132401 lambda!132390))))

(declare-fun bs!604455 () Bool)

(assert (= bs!604455 (and d!1267318 b!4304415)))

(assert (=> bs!604455 (= lambda!132401 lambda!132378)))

(declare-fun bs!604456 () Bool)

(assert (= bs!604456 (and d!1267318 d!1267316)))

(assert (=> bs!604456 (= lambda!132401 lambda!132398)))

(declare-fun bs!604457 () Bool)

(assert (= bs!604457 (and d!1267318 b!4304397)))

(assert (=> bs!604457 (= lambda!132401 lambda!132372)))

(declare-fun bs!604458 () Bool)

(assert (= bs!604458 (and d!1267318 b!4304439)))

(assert (=> bs!604458 (= lambda!132401 lambda!132381)))

(declare-fun bs!604459 () Bool)

(assert (= bs!604459 (and d!1267318 d!1267288)))

(assert (=> bs!604459 (= lambda!132401 lambda!132385)))

(assert (=> d!1267318 (eq!121 (extractMap!297 (toList!2284 (+!220 lt!1526037 (tuple2!46217 lt!1526031 lt!1526033)))) (+!219 (extractMap!297 (toList!2284 lt!1526037)) (tuple2!46215 key!2048 v!9179)))))

(declare-fun lt!1526177 () Unit!67066)

(declare-fun choose!26218 (ListLongMap!893 (_ BitVec 64) List!48177 K!9204 V!9406 Hashable!4499) Unit!67066)

(assert (=> d!1267318 (= lt!1526177 (choose!26218 lt!1526037 lt!1526031 lt!1526033 key!2048 v!9179 (hashF!6567 thiss!42308)))))

(assert (=> d!1267318 (forall!8681 (toList!2284 lt!1526037) lambda!132401)))

(assert (=> d!1267318 (= (lemmaChangeOneBucketToUpdateAnExistingKeyUpdateThisKeyInGenMap!53 lt!1526037 lt!1526031 lt!1526033 key!2048 v!9179 (hashF!6567 thiss!42308)) lt!1526177)))

(declare-fun bs!604460 () Bool)

(assert (= bs!604460 d!1267318))

(assert (=> bs!604460 m!4897301))

(declare-fun m!4897549 () Bool)

(assert (=> bs!604460 m!4897549))

(declare-fun m!4897551 () Bool)

(assert (=> bs!604460 m!4897551))

(declare-fun m!4897553 () Bool)

(assert (=> bs!604460 m!4897553))

(assert (=> bs!604460 m!4897551))

(declare-fun m!4897555 () Bool)

(assert (=> bs!604460 m!4897555))

(declare-fun m!4897557 () Bool)

(assert (=> bs!604460 m!4897557))

(assert (=> bs!604460 m!4897301))

(assert (=> bs!604460 m!4897555))

(assert (=> bs!604460 m!4897317))

(assert (=> b!4304397 d!1267318))

(declare-fun b!4304528 () Bool)

(declare-fun e!2676284 () Unit!67066)

(declare-fun Unit!67075 () Unit!67066)

(assert (=> b!4304528 (= e!2676284 Unit!67075)))

(declare-fun b!4304529 () Bool)

(declare-fun e!2676282 () Unit!67066)

(assert (=> b!4304529 (= e!2676282 e!2676284)))

(declare-fun c!731969 () Bool)

(declare-fun call!296845 () Bool)

(assert (=> b!4304529 (= c!731969 call!296845)))

(declare-fun b!4304530 () Bool)

(declare-fun e!2676281 () Bool)

(assert (=> b!4304530 (= e!2676281 (not (contains!9992 (keys!15988 lt!1526029) key!2048)))))

(declare-fun b!4304531 () Bool)

(declare-fun e!2676280 () Bool)

(declare-fun e!2676283 () Bool)

(assert (=> b!4304531 (= e!2676280 e!2676283)))

(declare-fun res!1764367 () Bool)

(assert (=> b!4304531 (=> (not res!1764367) (not e!2676283))))

(assert (=> b!4304531 (= res!1764367 (isDefined!7502 (getValueByKey!233 (toList!2285 lt!1526029) key!2048)))))

(declare-fun b!4304532 () Bool)

(assert (=> b!4304532 false))

(declare-fun lt!1526178 () Unit!67066)

(declare-fun lt!1526179 () Unit!67066)

(assert (=> b!4304532 (= lt!1526178 lt!1526179)))

(assert (=> b!4304532 (containsKey!280 (toList!2285 lt!1526029) key!2048)))

(assert (=> b!4304532 (= lt!1526179 (lemmaInGetKeysListThenContainsKey!38 (toList!2285 lt!1526029) key!2048))))

(declare-fun Unit!67076 () Unit!67066)

(assert (=> b!4304532 (= e!2676284 Unit!67076)))

(declare-fun b!4304533 () Bool)

(declare-fun lt!1526182 () Unit!67066)

(assert (=> b!4304533 (= e!2676282 lt!1526182)))

(declare-fun lt!1526181 () Unit!67066)

(assert (=> b!4304533 (= lt!1526181 (lemmaContainsKeyImpliesGetValueByKeyDefined!159 (toList!2285 lt!1526029) key!2048))))

(assert (=> b!4304533 (isDefined!7502 (getValueByKey!233 (toList!2285 lt!1526029) key!2048))))

(declare-fun lt!1526180 () Unit!67066)

(assert (=> b!4304533 (= lt!1526180 lt!1526181)))

(assert (=> b!4304533 (= lt!1526182 (lemmaInListThenGetKeysListContains!38 (toList!2285 lt!1526029) key!2048))))

(assert (=> b!4304533 call!296845))

(declare-fun b!4304534 () Bool)

(declare-fun e!2676279 () List!48179)

(assert (=> b!4304534 (= e!2676279 (keys!15988 lt!1526029))))

(declare-fun bm!296840 () Bool)

(assert (=> bm!296840 (= call!296845 (contains!9992 e!2676279 key!2048))))

(declare-fun c!731967 () Bool)

(declare-fun c!731968 () Bool)

(assert (=> bm!296840 (= c!731967 c!731968)))

(declare-fun d!1267320 () Bool)

(assert (=> d!1267320 e!2676280))

(declare-fun res!1764368 () Bool)

(assert (=> d!1267320 (=> res!1764368 e!2676280)))

(assert (=> d!1267320 (= res!1764368 e!2676281)))

(declare-fun res!1764366 () Bool)

(assert (=> d!1267320 (=> (not res!1764366) (not e!2676281))))

(declare-fun lt!1526185 () Bool)

(assert (=> d!1267320 (= res!1764366 (not lt!1526185))))

(declare-fun lt!1526184 () Bool)

(assert (=> d!1267320 (= lt!1526185 lt!1526184)))

(declare-fun lt!1526183 () Unit!67066)

(assert (=> d!1267320 (= lt!1526183 e!2676282)))

(assert (=> d!1267320 (= c!731968 lt!1526184)))

(assert (=> d!1267320 (= lt!1526184 (containsKey!280 (toList!2285 lt!1526029) key!2048))))

(assert (=> d!1267320 (= (contains!9986 lt!1526029 key!2048) lt!1526185)))

(declare-fun b!4304535 () Bool)

(assert (=> b!4304535 (= e!2676279 (getKeysList!41 (toList!2285 lt!1526029)))))

(declare-fun b!4304536 () Bool)

(assert (=> b!4304536 (= e!2676283 (contains!9992 (keys!15988 lt!1526029) key!2048))))

(assert (= (and d!1267320 c!731968) b!4304533))

(assert (= (and d!1267320 (not c!731968)) b!4304529))

(assert (= (and b!4304529 c!731969) b!4304532))

(assert (= (and b!4304529 (not c!731969)) b!4304528))

(assert (= (or b!4304533 b!4304529) bm!296840))

(assert (= (and bm!296840 c!731967) b!4304535))

(assert (= (and bm!296840 (not c!731967)) b!4304534))

(assert (= (and d!1267320 res!1764366) b!4304530))

(assert (= (and d!1267320 (not res!1764368)) b!4304531))

(assert (= (and b!4304531 res!1764367) b!4304536))

(declare-fun m!4897559 () Bool)

(assert (=> b!4304532 m!4897559))

(declare-fun m!4897561 () Bool)

(assert (=> b!4304532 m!4897561))

(declare-fun m!4897563 () Bool)

(assert (=> b!4304535 m!4897563))

(declare-fun m!4897565 () Bool)

(assert (=> b!4304530 m!4897565))

(assert (=> b!4304530 m!4897565))

(declare-fun m!4897567 () Bool)

(assert (=> b!4304530 m!4897567))

(assert (=> d!1267320 m!4897559))

(declare-fun m!4897569 () Bool)

(assert (=> b!4304533 m!4897569))

(declare-fun m!4897571 () Bool)

(assert (=> b!4304533 m!4897571))

(assert (=> b!4304533 m!4897571))

(declare-fun m!4897573 () Bool)

(assert (=> b!4304533 m!4897573))

(declare-fun m!4897575 () Bool)

(assert (=> b!4304533 m!4897575))

(assert (=> b!4304531 m!4897571))

(assert (=> b!4304531 m!4897571))

(assert (=> b!4304531 m!4897573))

(assert (=> b!4304534 m!4897565))

(assert (=> b!4304536 m!4897565))

(assert (=> b!4304536 m!4897565))

(assert (=> b!4304536 m!4897567))

(declare-fun m!4897577 () Bool)

(assert (=> bm!296840 m!4897577))

(assert (=> b!4304397 d!1267320))

(declare-fun d!1267322 () Bool)

(declare-fun e!2676285 () Bool)

(assert (=> d!1267322 e!2676285))

(declare-fun res!1764369 () Bool)

(assert (=> d!1267322 (=> (not res!1764369) (not e!2676285))))

(declare-fun lt!1526188 () ListMap!1569)

(assert (=> d!1267322 (= res!1764369 (contains!9986 lt!1526188 (_1!26386 lt!1526026)))))

(declare-fun lt!1526187 () List!48177)

(assert (=> d!1267322 (= lt!1526188 (ListMap!1570 lt!1526187))))

(declare-fun lt!1526189 () Unit!67066)

(declare-fun lt!1526186 () Unit!67066)

(assert (=> d!1267322 (= lt!1526189 lt!1526186)))

(assert (=> d!1267322 (= (getValueByKey!233 lt!1526187 (_1!26386 lt!1526026)) (Some!10193 (_2!26386 lt!1526026)))))

(assert (=> d!1267322 (= lt!1526186 (lemmaContainsTupThenGetReturnValue!58 lt!1526187 (_1!26386 lt!1526026) (_2!26386 lt!1526026)))))

(assert (=> d!1267322 (= lt!1526187 (insertNoDuplicatedKeys!37 (toList!2285 lt!1526025) (_1!26386 lt!1526026) (_2!26386 lt!1526026)))))

(assert (=> d!1267322 (= (+!219 lt!1526025 lt!1526026) lt!1526188)))

(declare-fun b!4304537 () Bool)

(declare-fun res!1764370 () Bool)

(assert (=> b!4304537 (=> (not res!1764370) (not e!2676285))))

(assert (=> b!4304537 (= res!1764370 (= (getValueByKey!233 (toList!2285 lt!1526188) (_1!26386 lt!1526026)) (Some!10193 (_2!26386 lt!1526026))))))

(declare-fun b!4304538 () Bool)

(assert (=> b!4304538 (= e!2676285 (contains!9991 (toList!2285 lt!1526188) lt!1526026))))

(assert (= (and d!1267322 res!1764369) b!4304537))

(assert (= (and b!4304537 res!1764370) b!4304538))

(declare-fun m!4897579 () Bool)

(assert (=> d!1267322 m!4897579))

(declare-fun m!4897581 () Bool)

(assert (=> d!1267322 m!4897581))

(declare-fun m!4897583 () Bool)

(assert (=> d!1267322 m!4897583))

(declare-fun m!4897585 () Bool)

(assert (=> d!1267322 m!4897585))

(declare-fun m!4897587 () Bool)

(assert (=> b!4304537 m!4897587))

(declare-fun m!4897589 () Bool)

(assert (=> b!4304538 m!4897589))

(assert (=> b!4304397 d!1267322))

(declare-fun bs!604461 () Bool)

(declare-fun d!1267324 () Bool)

(assert (= bs!604461 (and d!1267324 d!1267306)))

(declare-fun lambda!132402 () Int)

(assert (=> bs!604461 (= lambda!132402 lambda!132393)))

(assert (=> d!1267324 true))

(assert (=> d!1267324 true))

(assert (=> d!1267324 (= (allKeysSameHash!153 lt!1526032 lt!1526031 (hashF!6567 thiss!42308)) (forall!8682 lt!1526032 lambda!132402))))

(declare-fun bs!604462 () Bool)

(assert (= bs!604462 d!1267324))

(declare-fun m!4897591 () Bool)

(assert (=> bs!604462 m!4897591))

(assert (=> b!4304397 d!1267324))

(declare-fun b!4304558 () Bool)

(declare-fun e!2676299 () tuple2!46218)

(declare-fun lt!1526200 () tuple2!46218)

(assert (=> b!4304558 (= e!2676299 (tuple2!46219 (_1!26388 lt!1526200) (_2!26388 lt!1526200)))))

(declare-fun repack!44 (MutLongMap!4583) tuple2!46218)

(assert (=> b!4304558 (= lt!1526200 (repack!44 (v!42090 (underlying!9396 thiss!42308))))))

(declare-fun bm!296845 () Bool)

(declare-fun call!296851 () ListLongMap!893)

(declare-fun lt!1526198 () tuple2!46218)

(assert (=> bm!296845 (= call!296851 (map!10022 (_2!26388 lt!1526198)))))

(declare-fun b!4304559 () Bool)

(declare-fun res!1764379 () Bool)

(declare-fun e!2676300 () Bool)

(assert (=> b!4304559 (=> (not res!1764379) (not e!2676300))))

(assert (=> b!4304559 (= res!1764379 (valid!3569 (_2!26388 lt!1526198)))))

(declare-fun b!4304560 () Bool)

(assert (=> b!4304560 (= e!2676299 (tuple2!46219 true (v!42090 (underlying!9396 thiss!42308))))))

(declare-fun b!4304561 () Bool)

(declare-fun e!2676298 () tuple2!46218)

(declare-datatypes ((tuple2!46220 0))(
  ( (tuple2!46221 (_1!26389 Bool) (_2!26389 LongMapFixedSize!9166)) )
))
(declare-fun lt!1526199 () tuple2!46220)

(assert (=> b!4304561 (= e!2676298 (tuple2!46219 (_1!26389 lt!1526199) (LongMap!4583 (Cell!18142 (_2!26389 lt!1526199)))))))

(declare-fun lt!1526201 () tuple2!46218)

(declare-fun update!381 (LongMapFixedSize!9166 (_ BitVec 64) List!48177) tuple2!46220)

(assert (=> b!4304561 (= lt!1526199 (update!381 (v!42089 (underlying!9395 (_2!26388 lt!1526201))) lt!1526031 lt!1526033))))

(declare-fun b!4304562 () Bool)

(assert (=> b!4304562 (= e!2676298 (tuple2!46219 false (_2!26388 lt!1526201)))))

(declare-fun e!2676297 () Bool)

(declare-fun b!4304563 () Bool)

(declare-fun call!296850 () ListLongMap!893)

(assert (=> b!4304563 (= e!2676297 (= call!296851 (+!220 call!296850 (tuple2!46217 lt!1526031 lt!1526033))))))

(declare-fun b!4304564 () Bool)

(declare-fun e!2676296 () Bool)

(assert (=> b!4304564 (= e!2676296 e!2676297)))

(declare-fun res!1764378 () Bool)

(assert (=> b!4304564 (= res!1764378 (contains!9990 call!296851 lt!1526031))))

(assert (=> b!4304564 (=> (not res!1764378) (not e!2676297))))

(declare-fun bm!296846 () Bool)

(assert (=> bm!296846 (= call!296850 (map!10022 (v!42090 (underlying!9396 thiss!42308))))))

(declare-fun b!4304565 () Bool)

(assert (=> b!4304565 (= e!2676300 e!2676296)))

(declare-fun c!731977 () Bool)

(assert (=> b!4304565 (= c!731977 (_1!26388 lt!1526198))))

(declare-fun d!1267326 () Bool)

(assert (=> d!1267326 e!2676300))

(declare-fun res!1764377 () Bool)

(assert (=> d!1267326 (=> (not res!1764377) (not e!2676300))))

(assert (=> d!1267326 (= res!1764377 ((_ is LongMap!4583) (_2!26388 lt!1526198)))))

(assert (=> d!1267326 (= lt!1526198 e!2676298)))

(declare-fun c!731976 () Bool)

(assert (=> d!1267326 (= c!731976 (_1!26388 lt!1526201))))

(assert (=> d!1267326 (= lt!1526201 e!2676299)))

(declare-fun c!731978 () Bool)

(declare-fun imbalanced!40 (MutLongMap!4583) Bool)

(assert (=> d!1267326 (= c!731978 (imbalanced!40 (v!42090 (underlying!9396 thiss!42308))))))

(assert (=> d!1267326 (valid!3569 (v!42090 (underlying!9396 thiss!42308)))))

(assert (=> d!1267326 (= (update!380 (v!42090 (underlying!9396 thiss!42308)) lt!1526031 lt!1526033) lt!1526198)))

(declare-fun b!4304557 () Bool)

(assert (=> b!4304557 (= e!2676296 (= call!296851 call!296850))))

(assert (= (and d!1267326 c!731978) b!4304558))

(assert (= (and d!1267326 (not c!731978)) b!4304560))

(assert (= (and d!1267326 c!731976) b!4304561))

(assert (= (and d!1267326 (not c!731976)) b!4304562))

(assert (= (and d!1267326 res!1764377) b!4304559))

(assert (= (and b!4304559 res!1764379) b!4304565))

(assert (= (and b!4304565 c!731977) b!4304564))

(assert (= (and b!4304565 (not c!731977)) b!4304557))

(assert (= (and b!4304564 res!1764378) b!4304563))

(assert (= (or b!4304564 b!4304563 b!4304557) bm!296845))

(assert (= (or b!4304563 b!4304557) bm!296846))

(declare-fun m!4897593 () Bool)

(assert (=> b!4304558 m!4897593))

(declare-fun m!4897595 () Bool)

(assert (=> b!4304563 m!4897595))

(declare-fun m!4897597 () Bool)

(assert (=> b!4304561 m!4897597))

(declare-fun m!4897599 () Bool)

(assert (=> d!1267326 m!4897599))

(assert (=> d!1267326 m!4897365))

(declare-fun m!4897601 () Bool)

(assert (=> b!4304564 m!4897601))

(assert (=> bm!296846 m!4897347))

(declare-fun m!4897603 () Bool)

(assert (=> bm!296845 m!4897603))

(declare-fun m!4897605 () Bool)

(assert (=> b!4304559 m!4897605))

(assert (=> b!4304405 d!1267326))

(declare-fun b!4304575 () Bool)

(declare-fun e!2676305 () List!48177)

(declare-fun e!2676306 () List!48177)

(assert (=> b!4304575 (= e!2676305 e!2676306)))

(declare-fun c!731984 () Bool)

(assert (=> b!4304575 (= c!731984 ((_ is Cons!48053) lt!1526032))))

(declare-fun b!4304577 () Bool)

(assert (=> b!4304577 (= e!2676306 Nil!48053)))

(declare-fun b!4304574 () Bool)

(assert (=> b!4304574 (= e!2676305 (t!354958 lt!1526032))))

(declare-fun d!1267328 () Bool)

(declare-fun lt!1526204 () List!48177)

(assert (=> d!1267328 (not (containsKey!278 lt!1526204 key!2048))))

(assert (=> d!1267328 (= lt!1526204 e!2676305)))

(declare-fun c!731983 () Bool)

(assert (=> d!1267328 (= c!731983 (and ((_ is Cons!48053) lt!1526032) (= (_1!26386 (h!53479 lt!1526032)) key!2048)))))

(assert (=> d!1267328 (noDuplicateKeys!184 lt!1526032)))

(assert (=> d!1267328 (= (removePairForKey!177 lt!1526032 key!2048) lt!1526204)))

(declare-fun b!4304576 () Bool)

(assert (=> b!4304576 (= e!2676306 (Cons!48053 (h!53479 lt!1526032) (removePairForKey!177 (t!354958 lt!1526032) key!2048)))))

(assert (= (and d!1267328 c!731983) b!4304574))

(assert (= (and d!1267328 (not c!731983)) b!4304575))

(assert (= (and b!4304575 c!731984) b!4304576))

(assert (= (and b!4304575 (not c!731984)) b!4304577))

(declare-fun m!4897607 () Bool)

(assert (=> d!1267328 m!4897607))

(assert (=> d!1267328 m!4897443))

(declare-fun m!4897609 () Bool)

(assert (=> b!4304576 m!4897609))

(assert (=> b!4304405 d!1267328))

(declare-fun d!1267330 () Bool)

(declare-fun e!2676309 () Bool)

(assert (=> d!1267330 e!2676309))

(declare-fun c!731987 () Bool)

(assert (=> d!1267330 (= c!731987 (contains!9989 (v!42090 (underlying!9396 thiss!42308)) lt!1526031))))

(declare-fun lt!1526207 () List!48177)

(declare-fun apply!10939 (LongMapFixedSize!9166 (_ BitVec 64)) List!48177)

(assert (=> d!1267330 (= lt!1526207 (apply!10939 (v!42089 (underlying!9395 (v!42090 (underlying!9396 thiss!42308)))) lt!1526031))))

(assert (=> d!1267330 (valid!3569 (v!42090 (underlying!9396 thiss!42308)))))

(assert (=> d!1267330 (= (apply!10937 (v!42090 (underlying!9396 thiss!42308)) lt!1526031) lt!1526207)))

(declare-fun b!4304582 () Bool)

(declare-fun get!15542 (Option!10193) List!48177)

(assert (=> b!4304582 (= e!2676309 (= lt!1526207 (get!15542 (getValueByKey!232 (toList!2284 (map!10022 (v!42090 (underlying!9396 thiss!42308)))) lt!1526031))))))

(declare-fun b!4304583 () Bool)

(declare-fun dynLambda!20393 (Int (_ BitVec 64)) List!48177)

(assert (=> b!4304583 (= e!2676309 (= lt!1526207 (dynLambda!20393 (defaultEntry!4968 (v!42089 (underlying!9395 (v!42090 (underlying!9396 thiss!42308))))) lt!1526031)))))

(assert (=> b!4304583 ((_ is LongMap!4583) (v!42090 (underlying!9396 thiss!42308)))))

(assert (= (and d!1267330 c!731987) b!4304582))

(assert (= (and d!1267330 (not c!731987)) b!4304583))

(declare-fun b_lambda!126495 () Bool)

(assert (=> (not b_lambda!126495) (not b!4304583)))

(declare-fun t!354961 () Bool)

(declare-fun tb!257267 () Bool)

(assert (=> (and b!4304399 (= (defaultEntry!4968 (v!42089 (underlying!9395 (v!42090 (underlying!9396 thiss!42308))))) (defaultEntry!4968 (v!42089 (underlying!9395 (v!42090 (underlying!9396 thiss!42308)))))) t!354961) tb!257267))

(assert (=> b!4304583 t!354961))

(declare-fun result!314608 () Bool)

(declare-fun b_and!339691 () Bool)

(assert (= b_and!339687 (and (=> t!354961 result!314608) b_and!339691)))

(declare-fun m!4897611 () Bool)

(assert (=> d!1267330 m!4897611))

(declare-fun m!4897613 () Bool)

(assert (=> d!1267330 m!4897613))

(assert (=> d!1267330 m!4897365))

(assert (=> b!4304582 m!4897347))

(declare-fun m!4897615 () Bool)

(assert (=> b!4304582 m!4897615))

(assert (=> b!4304582 m!4897615))

(declare-fun m!4897617 () Bool)

(assert (=> b!4304582 m!4897617))

(declare-fun m!4897619 () Bool)

(assert (=> b!4304583 m!4897619))

(assert (=> b!4304405 d!1267330))

(declare-fun d!1267332 () Bool)

(declare-fun hash!913 (Hashable!4499 K!9204) (_ BitVec 64))

(assert (=> d!1267332 (= (hash!908 (hashF!6567 thiss!42308) key!2048) (hash!913 (hashF!6567 thiss!42308) key!2048))))

(declare-fun bs!604463 () Bool)

(assert (= bs!604463 d!1267332))

(declare-fun m!4897621 () Bool)

(assert (=> bs!604463 m!4897621))

(assert (=> b!4304405 d!1267332))

(declare-fun tp!1322651 () Bool)

(declare-fun e!2676315 () Bool)

(declare-fun b!4304590 () Bool)

(assert (=> b!4304590 (= e!2676315 (and tp_is_empty!23473 tp_is_empty!23471 tp!1322651))))

(declare-fun e!2676314 () Bool)

(declare-fun tp!1322649 () Bool)

(declare-fun b!4304591 () Bool)

(assert (=> b!4304591 (= e!2676314 (and tp_is_empty!23473 tp_is_empty!23471 tp!1322649))))

(declare-fun mapIsEmpty!20542 () Bool)

(declare-fun mapRes!20542 () Bool)

(assert (=> mapIsEmpty!20542 mapRes!20542))

(declare-fun mapNonEmpty!20542 () Bool)

(declare-fun tp!1322650 () Bool)

(assert (=> mapNonEmpty!20542 (= mapRes!20542 (and tp!1322650 e!2676315))))

(declare-fun mapRest!20542 () (Array (_ BitVec 32) List!48177))

(declare-fun mapValue!20542 () List!48177)

(declare-fun mapKey!20542 () (_ BitVec 32))

(assert (=> mapNonEmpty!20542 (= mapRest!20539 (store mapRest!20542 mapKey!20542 mapValue!20542))))

(declare-fun condMapEmpty!20542 () Bool)

(declare-fun mapDefault!20542 () List!48177)

(assert (=> mapNonEmpty!20539 (= condMapEmpty!20542 (= mapRest!20539 ((as const (Array (_ BitVec 32) List!48177)) mapDefault!20542)))))

(assert (=> mapNonEmpty!20539 (= tp!1322636 (and e!2676314 mapRes!20542))))

(assert (= (and mapNonEmpty!20539 condMapEmpty!20542) mapIsEmpty!20542))

(assert (= (and mapNonEmpty!20539 (not condMapEmpty!20542)) mapNonEmpty!20542))

(assert (= (and mapNonEmpty!20542 ((_ is Cons!48053) mapValue!20542)) b!4304590))

(assert (= (and mapNonEmpty!20539 ((_ is Cons!48053) mapDefault!20542)) b!4304591))

(declare-fun m!4897623 () Bool)

(assert (=> mapNonEmpty!20542 m!4897623))

(declare-fun e!2676318 () Bool)

(declare-fun tp!1322654 () Bool)

(declare-fun b!4304596 () Bool)

(assert (=> b!4304596 (= e!2676318 (and tp_is_empty!23473 tp_is_empty!23471 tp!1322654))))

(assert (=> mapNonEmpty!20539 (= tp!1322642 e!2676318)))

(assert (= (and mapNonEmpty!20539 ((_ is Cons!48053) mapValue!20539)) b!4304596))

(declare-fun b!4304597 () Bool)

(declare-fun tp!1322655 () Bool)

(declare-fun e!2676319 () Bool)

(assert (=> b!4304597 (= e!2676319 (and tp_is_empty!23473 tp_is_empty!23471 tp!1322655))))

(assert (=> b!4304395 (= tp!1322637 e!2676319)))

(assert (= (and b!4304395 ((_ is Cons!48053) mapDefault!20539)) b!4304597))

(declare-fun e!2676320 () Bool)

(declare-fun b!4304598 () Bool)

(declare-fun tp!1322656 () Bool)

(assert (=> b!4304598 (= e!2676320 (and tp_is_empty!23473 tp_is_empty!23471 tp!1322656))))

(assert (=> b!4304399 (= tp!1322640 e!2676320)))

(assert (= (and b!4304399 ((_ is Cons!48053) (zeroValue!4842 (v!42089 (underlying!9395 (v!42090 (underlying!9396 thiss!42308))))))) b!4304598))

(declare-fun b!4304599 () Bool)

(declare-fun e!2676321 () Bool)

(declare-fun tp!1322657 () Bool)

(assert (=> b!4304599 (= e!2676321 (and tp_is_empty!23473 tp_is_empty!23471 tp!1322657))))

(assert (=> b!4304399 (= tp!1322638 e!2676321)))

(assert (= (and b!4304399 ((_ is Cons!48053) (minValue!4842 (v!42089 (underlying!9395 (v!42090 (underlying!9396 thiss!42308))))))) b!4304599))

(declare-fun b_lambda!126497 () Bool)

(assert (= b_lambda!126491 (or b!4304397 b_lambda!126497)))

(declare-fun bs!604464 () Bool)

(declare-fun d!1267334 () Bool)

(assert (= bs!604464 (and d!1267334 b!4304397)))

(assert (=> bs!604464 (= (dynLambda!20392 lambda!132372 (h!53480 (toList!2284 lt!1526038))) (noDuplicateKeys!184 (_2!26387 (h!53480 (toList!2284 lt!1526038)))))))

(declare-fun m!4897625 () Bool)

(assert (=> bs!604464 m!4897625))

(assert (=> b!4304480 d!1267334))

(declare-fun b_lambda!126499 () Bool)

(assert (= b_lambda!126493 (or b!4304397 b_lambda!126499)))

(declare-fun bs!604465 () Bool)

(declare-fun d!1267336 () Bool)

(assert (= bs!604465 (and d!1267336 b!4304397)))

(assert (=> bs!604465 (= (dynLambda!20392 lambda!132372 (h!53480 (toList!2284 lt!1526036))) (noDuplicateKeys!184 (_2!26387 (h!53480 (toList!2284 lt!1526036)))))))

(declare-fun m!4897627 () Bool)

(assert (=> bs!604465 m!4897627))

(assert (=> b!4304484 d!1267336))

(declare-fun b_lambda!126501 () Bool)

(assert (= b_lambda!126495 (or (and b!4304399 b_free!128291) b_lambda!126501)))

(check-sat (not bm!296846) (not bm!296835) (not d!1267320) (not d!1267322) (not bs!604464) (not b!4304535) (not b!4304537) (not b!4304523) (not b!4304486) (not b!4304475) (not d!1267270) (not d!1267288) (not bm!296831) (not d!1267304) (not b_next!128995) (not b!4304559) (not b_next!128997) (not b!4304444) (not b!4304520) (not d!1267318) tp_is_empty!23471 b_and!339689 (not b!4304439) (not d!1267290) (not b!4304564) (not bs!604465) (not tb!257267) (not b!4304485) (not d!1267316) (not d!1267306) (not b!4304527) (not b!4304468) (not b!4304561) (not b_lambda!126497) (not b!4304522) (not b!4304597) (not b!4304482) (not b!4304487) (not b!4304538) (not b!4304443) (not d!1267282) (not d!1267326) (not d!1267302) (not b!4304530) (not d!1267268) (not b!4304524) (not b!4304461) (not b!4304519) (not d!1267310) (not bm!296840) (not d!1267324) (not b!4304590) (not b!4304446) (not d!1267330) (not b!4304582) (not d!1267300) (not b!4304558) (not mapNonEmpty!20542) (not d!1267266) (not bm!296845) (not b!4304463) (not d!1267332) (not d!1267328) (not b!4304462) tp_is_empty!23473 (not b!4304576) (not b!4304415) (not b!4304493) (not b!4304481) (not d!1267262) (not d!1267314) (not d!1267312) (not d!1267298) (not bm!296833) (not bm!296832) (not b!4304599) (not bm!296839) (not bm!296834) (not b!4304474) (not b!4304455) (not d!1267308) (not b!4304518) (not b!4304533) (not b!4304492) (not b!4304416) b_and!339691 (not b!4304598) (not b!4304591) (not b!4304454) (not b!4304536) (not bm!296836) (not b!4304521) (not b!4304532) (not d!1267294) (not b_lambda!126501) (not b!4304563) (not b!4304447) (not d!1267264) (not b_lambda!126499) (not b!4304534) (not d!1267286) (not b!4304531) (not d!1267278) (not b!4304596))
(check-sat b_and!339691 b_and!339689 (not b_next!128997) (not b_next!128995))
