; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!413660 () Bool)

(assert start!413660)

(declare-fun b!4306205 () Bool)

(declare-fun b_free!128419 () Bool)

(declare-fun b_next!129123 () Bool)

(assert (=> b!4306205 (= b_free!128419 (not b_next!129123))))

(declare-fun tp!1323370 () Bool)

(declare-fun b_and!339819 () Bool)

(assert (=> b!4306205 (= tp!1323370 b_and!339819)))

(declare-fun b!4306206 () Bool)

(declare-fun b_free!128421 () Bool)

(declare-fun b_next!129125 () Bool)

(assert (=> b!4306206 (= b_free!128421 (not b_next!129125))))

(declare-fun tp!1323374 () Bool)

(declare-fun b_and!339821 () Bool)

(assert (=> b!4306206 (= tp!1323374 b_and!339821)))

(declare-fun b!4306195 () Bool)

(declare-fun e!2677597 () Bool)

(declare-fun e!2677600 () Bool)

(assert (=> b!4306195 (= e!2677597 (not e!2677600))))

(declare-fun res!1765038 () Bool)

(assert (=> b!4306195 (=> res!1765038 e!2677600)))

(declare-datatypes ((V!9486 0))(
  ( (V!9487 (val!15685 Int)) )
))
(declare-datatypes ((K!9284 0))(
  ( (K!9285 (val!15686 Int)) )
))
(declare-datatypes ((tuple2!46352 0))(
  ( (tuple2!46353 (_1!26455 K!9284) (_2!26455 V!9486)) )
))
(declare-datatypes ((List!48233 0))(
  ( (Nil!48109) (Cons!48109 (h!53536 tuple2!46352) (t!355018 List!48233)) )
))
(declare-datatypes ((tuple2!46354 0))(
  ( (tuple2!46355 (_1!26456 (_ BitVec 64)) (_2!26456 List!48233)) )
))
(declare-datatypes ((List!48234 0))(
  ( (Nil!48110) (Cons!48110 (h!53537 tuple2!46354) (t!355019 List!48234)) )
))
(declare-datatypes ((ListLongMap!939 0))(
  ( (ListLongMap!940 (toList!2328 List!48234)) )
))
(declare-fun lt!1527033 () ListLongMap!939)

(declare-fun lambda!132490 () Int)

(declare-fun forall!8698 (List!48234 Int) Bool)

(assert (=> b!4306195 (= res!1765038 (not (forall!8698 (toList!2328 lt!1527033) lambda!132490)))))

(declare-fun e!2677595 () Bool)

(assert (=> b!4306195 e!2677595))

(declare-fun res!1765046 () Bool)

(assert (=> b!4306195 (=> (not res!1765046) (not e!2677595))))

(declare-fun lt!1527040 () ListLongMap!939)

(assert (=> b!4306195 (= res!1765046 (forall!8698 (toList!2328 lt!1527040) lambda!132490))))

(declare-fun lt!1527034 () List!48233)

(declare-fun lt!1527036 () (_ BitVec 64))

(declare-fun +!224 (ListLongMap!939 tuple2!46354) ListLongMap!939)

(assert (=> b!4306195 (= lt!1527040 (+!224 lt!1527033 (tuple2!46355 lt!1527036 lt!1527034)))))

(declare-datatypes ((Unit!67121 0))(
  ( (Unit!67122) )
))
(declare-fun lt!1527039 () Unit!67121)

(declare-datatypes ((array!16602 0))(
  ( (array!16603 (arr!7415 (Array (_ BitVec 32) (_ BitVec 64))) (size!35454 (_ BitVec 32))) )
))
(declare-datatypes ((Hashable!4531 0))(
  ( (HashableExt!4530 (__x!29870 Int)) )
))
(declare-datatypes ((array!16604 0))(
  ( (array!16605 (arr!7416 (Array (_ BitVec 32) List!48233)) (size!35455 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!9230 0))(
  ( (LongMapFixedSize!9231 (defaultEntry!5000 Int) (mask!13151 (_ BitVec 32)) (extraKeys!4864 (_ BitVec 32)) (zeroValue!4874 List!48233) (minValue!4874 List!48233) (_size!9273 (_ BitVec 32)) (_keys!4915 array!16602) (_values!4896 array!16604) (_vacant!4676 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!18269 0))(
  ( (Cell!18270 (v!42166 LongMapFixedSize!9230)) )
))
(declare-datatypes ((MutLongMap!4615 0))(
  ( (LongMap!4615 (underlying!9459 Cell!18269)) (MutLongMapExt!4614 (__x!29871 Int)) )
))
(declare-datatypes ((Cell!18271 0))(
  ( (Cell!18272 (v!42167 MutLongMap!4615)) )
))
(declare-datatypes ((MutableMap!4521 0))(
  ( (MutableMapExt!4520 (__x!29872 Int)) (HashMap!4521 (underlying!9460 Cell!18271) (hashF!6605 Hashable!4531) (_size!9274 (_ BitVec 32)) (defaultValue!4692 Int)) )
))
(declare-fun thiss!42308 () MutableMap!4521)

(declare-fun lemmaChangeOneBucketByAValidOnePreservesForallNoDuplicatesAndHash!128 (ListLongMap!939 (_ BitVec 64) List!48233 Hashable!4531) Unit!67121)

(assert (=> b!4306195 (= lt!1527039 (lemmaChangeOneBucketByAValidOnePreservesForallNoDuplicatesAndHash!128 lt!1527033 lt!1527036 lt!1527034 (hashF!6605 thiss!42308)))))

(declare-fun lt!1527029 () Unit!67121)

(declare-fun e!2677594 () Unit!67121)

(assert (=> b!4306195 (= lt!1527029 e!2677594)))

(declare-fun c!732116 () Bool)

(declare-fun lt!1527037 () List!48233)

(declare-fun isEmpty!28065 (List!48233) Bool)

(assert (=> b!4306195 (= c!732116 (not (isEmpty!28065 lt!1527037)))))

(declare-fun b!4306196 () Bool)

(declare-fun e!2677608 () Bool)

(declare-fun e!2677592 () Bool)

(assert (=> b!4306196 (= e!2677608 e!2677592)))

(declare-fun mapNonEmpty!20647 () Bool)

(declare-fun mapRes!20647 () Bool)

(declare-fun tp!1323373 () Bool)

(declare-fun tp!1323372 () Bool)

(assert (=> mapNonEmpty!20647 (= mapRes!20647 (and tp!1323373 tp!1323372))))

(declare-fun mapRest!20647 () (Array (_ BitVec 32) List!48233))

(declare-fun mapKey!20647 () (_ BitVec 32))

(declare-fun mapValue!20647 () List!48233)

(assert (=> mapNonEmpty!20647 (= (arr!7416 (_values!4896 (v!42166 (underlying!9459 (v!42167 (underlying!9460 thiss!42308)))))) (store mapRest!20647 mapKey!20647 mapValue!20647))))

(declare-fun b!4306197 () Bool)

(declare-fun Unit!67123 () Unit!67121)

(assert (=> b!4306197 (= e!2677594 Unit!67123)))

(declare-fun b!4306198 () Bool)

(declare-fun allKeysSameHashInMap!311 (ListLongMap!939 Hashable!4531) Bool)

(assert (=> b!4306198 (= e!2677595 (allKeysSameHashInMap!311 lt!1527040 (hashF!6605 thiss!42308)))))

(declare-fun b!4306199 () Bool)

(declare-fun e!2677604 () Bool)

(assert (=> b!4306199 (= e!2677600 e!2677604)))

(declare-fun res!1765044 () Bool)

(assert (=> b!4306199 (=> res!1765044 e!2677604)))

(declare-fun lt!1527031 () Bool)

(assert (=> b!4306199 (= res!1765044 (not lt!1527031))))

(declare-fun e!2677603 () Bool)

(assert (=> b!4306199 (= lt!1527031 e!2677603)))

(declare-fun res!1765040 () Bool)

(assert (=> b!4306199 (=> res!1765040 e!2677603)))

(declare-fun e!2677593 () Bool)

(assert (=> b!4306199 (= res!1765040 e!2677593)))

(declare-fun res!1765039 () Bool)

(assert (=> b!4306199 (=> (not res!1765039) (not e!2677593))))

(declare-fun lt!1527038 () Bool)

(assert (=> b!4306199 (= res!1765039 lt!1527038)))

(declare-fun contains!10050 (ListLongMap!939 (_ BitVec 64)) Bool)

(assert (=> b!4306199 (= lt!1527038 (contains!10050 lt!1527033 lt!1527036))))

(declare-fun res!1765035 () Bool)

(declare-fun e!2677602 () Bool)

(assert (=> start!413660 (=> (not res!1765035) (not e!2677602))))

(get-info :version)

(assert (=> start!413660 (= res!1765035 ((_ is HashMap!4521) thiss!42308))))

(assert (=> start!413660 e!2677602))

(declare-fun e!2677598 () Bool)

(assert (=> start!413660 e!2677598))

(declare-fun tp_is_empty!23581 () Bool)

(assert (=> start!413660 tp_is_empty!23581))

(declare-fun tp_is_empty!23583 () Bool)

(assert (=> start!413660 tp_is_empty!23583))

(declare-fun b!4306200 () Bool)

(declare-fun res!1765042 () Bool)

(assert (=> b!4306200 (=> res!1765042 e!2677600)))

(assert (=> b!4306200 (= res!1765042 (not (allKeysSameHashInMap!311 lt!1527033 (hashF!6605 thiss!42308))))))

(declare-fun b!4306201 () Bool)

(declare-fun res!1765041 () Bool)

(assert (=> b!4306201 (=> (not res!1765041) (not e!2677602))))

(declare-fun valid!3600 (MutableMap!4521) Bool)

(assert (=> b!4306201 (= res!1765041 (valid!3600 thiss!42308))))

(declare-fun b!4306202 () Bool)

(declare-fun e!2677601 () Bool)

(assert (=> b!4306202 (= e!2677601 e!2677608)))

(declare-fun b!4306203 () Bool)

(declare-fun e!2677605 () List!48233)

(declare-fun apply!10965 (MutLongMap!4615 (_ BitVec 64)) List!48233)

(assert (=> b!4306203 (= e!2677605 (apply!10965 (v!42167 (underlying!9460 thiss!42308)) lt!1527036))))

(declare-fun b!4306204 () Bool)

(declare-fun res!1765037 () Bool)

(assert (=> b!4306204 (=> res!1765037 e!2677604)))

(declare-fun noDuplicateKeys!192 (List!48233) Bool)

(assert (=> b!4306204 (= res!1765037 (not (noDuplicateKeys!192 lt!1527034)))))

(declare-fun tp!1323371 () Bool)

(declare-fun tp!1323369 () Bool)

(declare-fun e!2677606 () Bool)

(declare-fun array_inv!5319 (array!16602) Bool)

(declare-fun array_inv!5320 (array!16604) Bool)

(assert (=> b!4306205 (= e!2677592 (and tp!1323370 tp!1323371 tp!1323369 (array_inv!5319 (_keys!4915 (v!42166 (underlying!9459 (v!42167 (underlying!9460 thiss!42308)))))) (array_inv!5320 (_values!4896 (v!42166 (underlying!9459 (v!42167 (underlying!9460 thiss!42308)))))) e!2677606))))

(declare-fun e!2677599 () Bool)

(assert (=> b!4306206 (= e!2677598 (and e!2677599 tp!1323374))))

(declare-fun b!4306207 () Bool)

(declare-fun e!2677607 () Bool)

(assert (=> b!4306207 (= e!2677602 e!2677607)))

(declare-fun res!1765048 () Bool)

(assert (=> b!4306207 (=> (not res!1765048) (not e!2677607))))

(declare-fun key!2048 () K!9284)

(declare-fun contains!10051 (MutableMap!4521 K!9284) Bool)

(assert (=> b!4306207 (= res!1765048 (not (contains!10051 thiss!42308 key!2048)))))

(declare-fun map!10084 (MutLongMap!4615) ListLongMap!939)

(assert (=> b!4306207 (= lt!1527033 (map!10084 (v!42167 (underlying!9460 thiss!42308))))))

(declare-datatypes ((ListMap!1611 0))(
  ( (ListMap!1612 (toList!2329 List!48233)) )
))
(declare-fun lt!1527030 () ListMap!1611)

(declare-fun map!10085 (MutableMap!4521) ListMap!1611)

(assert (=> b!4306207 (= lt!1527030 (map!10085 thiss!42308))))

(declare-fun b!4306208 () Bool)

(declare-fun res!1765047 () Bool)

(assert (=> b!4306208 (=> res!1765047 e!2677604)))

(assert (=> b!4306208 (= res!1765047 (not (forall!8698 (toList!2328 lt!1527033) lambda!132490)))))

(declare-fun b!4306209 () Bool)

(declare-fun res!1765036 () Bool)

(assert (=> b!4306209 (=> res!1765036 e!2677600)))

(declare-fun contains!10052 (ListMap!1611 K!9284) Bool)

(declare-fun extractMap!305 (List!48234) ListMap!1611)

(assert (=> b!4306209 (= res!1765036 (contains!10052 (extractMap!305 (toList!2328 lt!1527033)) key!2048))))

(declare-fun b!4306210 () Bool)

(declare-fun tp!1323368 () Bool)

(assert (=> b!4306210 (= e!2677606 (and tp!1323368 mapRes!20647))))

(declare-fun condMapEmpty!20647 () Bool)

(declare-fun mapDefault!20647 () List!48233)

(assert (=> b!4306210 (= condMapEmpty!20647 (= (arr!7416 (_values!4896 (v!42166 (underlying!9459 (v!42167 (underlying!9460 thiss!42308)))))) ((as const (Array (_ BitVec 32) List!48233)) mapDefault!20647)))))

(declare-fun b!4306211 () Bool)

(declare-fun lt!1527035 () Unit!67121)

(assert (=> b!4306211 (= e!2677594 lt!1527035)))

(declare-fun lt!1527041 () Unit!67121)

(declare-fun lemmaInLongMapAllKeySameHashThenForTuple!152 (List!48234 (_ BitVec 64) List!48233 Hashable!4531) Unit!67121)

(assert (=> b!4306211 (= lt!1527041 (lemmaInLongMapAllKeySameHashThenForTuple!152 (toList!2328 lt!1527033) lt!1527036 lt!1527037 (hashF!6605 thiss!42308)))))

(declare-fun allKeysSameHash!162 (List!48233 (_ BitVec 64) Hashable!4531) Bool)

(assert (=> b!4306211 (allKeysSameHash!162 lt!1527037 lt!1527036 (hashF!6605 thiss!42308))))

(declare-fun lemmaRemovePairForKeyPreservesHash!146 (List!48233 K!9284 (_ BitVec 64) Hashable!4531) Unit!67121)

(assert (=> b!4306211 (= lt!1527035 (lemmaRemovePairForKeyPreservesHash!146 lt!1527037 key!2048 lt!1527036 (hashF!6605 thiss!42308)))))

(declare-fun removePairForKey!186 (List!48233 K!9284) List!48233)

(assert (=> b!4306211 (allKeysSameHash!162 (removePairForKey!186 lt!1527037 key!2048) lt!1527036 (hashF!6605 thiss!42308))))

(declare-fun b!4306212 () Bool)

(assert (=> b!4306212 (= e!2677605 Nil!48109)))

(declare-fun b!4306213 () Bool)

(declare-fun lt!1527032 () MutLongMap!4615)

(assert (=> b!4306213 (= e!2677599 (and e!2677601 ((_ is LongMap!4615) lt!1527032)))))

(assert (=> b!4306213 (= lt!1527032 (v!42167 (underlying!9460 thiss!42308)))))

(declare-fun b!4306214 () Bool)

(assert (=> b!4306214 (= e!2677604 lt!1527031)))

(declare-fun b!4306215 () Bool)

(assert (=> b!4306215 (= e!2677603 (and (not lt!1527038) (= lt!1527037 Nil!48109)))))

(declare-fun b!4306216 () Bool)

(assert (=> b!4306216 (= e!2677607 e!2677597)))

(declare-fun res!1765043 () Bool)

(assert (=> b!4306216 (=> (not res!1765043) (not e!2677597))))

(declare-datatypes ((tuple2!46356 0))(
  ( (tuple2!46357 (_1!26457 Bool) (_2!26457 MutLongMap!4615)) )
))
(declare-fun update!394 (MutLongMap!4615 (_ BitVec 64) List!48233) tuple2!46356)

(assert (=> b!4306216 (= res!1765043 (_1!26457 (update!394 (v!42167 (underlying!9460 thiss!42308)) lt!1527036 lt!1527034)))))

(declare-fun v!9179 () V!9486)

(assert (=> b!4306216 (= lt!1527034 (Cons!48109 (tuple2!46353 key!2048 v!9179) lt!1527037))))

(assert (=> b!4306216 (= lt!1527037 e!2677605)))

(declare-fun c!732115 () Bool)

(declare-fun contains!10053 (MutLongMap!4615 (_ BitVec 64)) Bool)

(assert (=> b!4306216 (= c!732115 (contains!10053 (v!42167 (underlying!9460 thiss!42308)) lt!1527036))))

(declare-fun hash!934 (Hashable!4531 K!9284) (_ BitVec 64))

(assert (=> b!4306216 (= lt!1527036 (hash!934 (hashF!6605 thiss!42308) key!2048))))

(declare-fun mapIsEmpty!20647 () Bool)

(assert (=> mapIsEmpty!20647 mapRes!20647))

(declare-fun b!4306217 () Bool)

(declare-fun apply!10966 (ListLongMap!939 (_ BitVec 64)) List!48233)

(assert (=> b!4306217 (= e!2677593 (= lt!1527037 (apply!10966 lt!1527033 lt!1527036)))))

(declare-fun b!4306218 () Bool)

(declare-fun res!1765045 () Bool)

(assert (=> b!4306218 (=> res!1765045 e!2677600)))

(assert (=> b!4306218 (= res!1765045 (not (allKeysSameHash!162 lt!1527034 lt!1527036 (hashF!6605 thiss!42308))))))

(assert (= (and start!413660 res!1765035) b!4306201))

(assert (= (and b!4306201 res!1765041) b!4306207))

(assert (= (and b!4306207 res!1765048) b!4306216))

(assert (= (and b!4306216 c!732115) b!4306203))

(assert (= (and b!4306216 (not c!732115)) b!4306212))

(assert (= (and b!4306216 res!1765043) b!4306195))

(assert (= (and b!4306195 c!732116) b!4306211))

(assert (= (and b!4306195 (not c!732116)) b!4306197))

(assert (= (and b!4306195 res!1765046) b!4306198))

(assert (= (and b!4306195 (not res!1765038)) b!4306200))

(assert (= (and b!4306200 (not res!1765042)) b!4306218))

(assert (= (and b!4306218 (not res!1765045)) b!4306209))

(assert (= (and b!4306209 (not res!1765036)) b!4306199))

(assert (= (and b!4306199 res!1765039) b!4306217))

(assert (= (and b!4306199 (not res!1765040)) b!4306215))

(assert (= (and b!4306199 (not res!1765044)) b!4306204))

(assert (= (and b!4306204 (not res!1765037)) b!4306208))

(assert (= (and b!4306208 (not res!1765047)) b!4306214))

(assert (= (and b!4306210 condMapEmpty!20647) mapIsEmpty!20647))

(assert (= (and b!4306210 (not condMapEmpty!20647)) mapNonEmpty!20647))

(assert (= b!4306205 b!4306210))

(assert (= b!4306196 b!4306205))

(assert (= b!4306202 b!4306196))

(assert (= (and b!4306213 ((_ is LongMap!4615) (v!42167 (underlying!9460 thiss!42308)))) b!4306202))

(assert (= b!4306206 b!4306213))

(assert (= (and start!413660 ((_ is HashMap!4521) thiss!42308)) b!4306206))

(declare-fun m!4898769 () Bool)

(assert (=> mapNonEmpty!20647 m!4898769))

(declare-fun m!4898771 () Bool)

(assert (=> b!4306207 m!4898771))

(declare-fun m!4898773 () Bool)

(assert (=> b!4306207 m!4898773))

(declare-fun m!4898775 () Bool)

(assert (=> b!4306207 m!4898775))

(declare-fun m!4898777 () Bool)

(assert (=> b!4306203 m!4898777))

(declare-fun m!4898779 () Bool)

(assert (=> b!4306200 m!4898779))

(declare-fun m!4898781 () Bool)

(assert (=> b!4306201 m!4898781))

(declare-fun m!4898783 () Bool)

(assert (=> b!4306217 m!4898783))

(declare-fun m!4898785 () Bool)

(assert (=> b!4306205 m!4898785))

(declare-fun m!4898787 () Bool)

(assert (=> b!4306205 m!4898787))

(declare-fun m!4898789 () Bool)

(assert (=> b!4306199 m!4898789))

(declare-fun m!4898791 () Bool)

(assert (=> b!4306208 m!4898791))

(declare-fun m!4898793 () Bool)

(assert (=> b!4306218 m!4898793))

(declare-fun m!4898795 () Bool)

(assert (=> b!4306204 m!4898795))

(declare-fun m!4898797 () Bool)

(assert (=> b!4306195 m!4898797))

(assert (=> b!4306195 m!4898791))

(declare-fun m!4898799 () Bool)

(assert (=> b!4306195 m!4898799))

(declare-fun m!4898801 () Bool)

(assert (=> b!4306195 m!4898801))

(declare-fun m!4898803 () Bool)

(assert (=> b!4306195 m!4898803))

(declare-fun m!4898805 () Bool)

(assert (=> b!4306198 m!4898805))

(declare-fun m!4898807 () Bool)

(assert (=> b!4306211 m!4898807))

(declare-fun m!4898809 () Bool)

(assert (=> b!4306211 m!4898809))

(assert (=> b!4306211 m!4898809))

(declare-fun m!4898811 () Bool)

(assert (=> b!4306211 m!4898811))

(declare-fun m!4898813 () Bool)

(assert (=> b!4306211 m!4898813))

(declare-fun m!4898815 () Bool)

(assert (=> b!4306211 m!4898815))

(declare-fun m!4898817 () Bool)

(assert (=> b!4306216 m!4898817))

(declare-fun m!4898819 () Bool)

(assert (=> b!4306216 m!4898819))

(declare-fun m!4898821 () Bool)

(assert (=> b!4306216 m!4898821))

(declare-fun m!4898823 () Bool)

(assert (=> b!4306209 m!4898823))

(assert (=> b!4306209 m!4898823))

(declare-fun m!4898825 () Bool)

(assert (=> b!4306209 m!4898825))

(check-sat b_and!339819 (not b!4306203) (not b!4306209) (not b!4306207) (not b_next!129125) (not b!4306205) (not b!4306204) (not b!4306199) (not b!4306216) (not b!4306210) tp_is_empty!23583 (not b_next!129123) (not b!4306200) tp_is_empty!23581 (not b!4306201) (not b!4306211) (not mapNonEmpty!20647) b_and!339821 (not b!4306198) (not b!4306218) (not b!4306208) (not b!4306217) (not b!4306195))
(check-sat b_and!339819 b_and!339821 (not b_next!129125) (not b_next!129123))
