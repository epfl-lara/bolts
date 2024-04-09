; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!1046 () Bool)

(assert start!1046)

(declare-fun b_free!375 () Bool)

(declare-fun b_next!375 () Bool)

(assert (=> start!1046 (= b_free!375 (not b_next!375))))

(declare-fun tp!1363 () Bool)

(declare-fun b_and!527 () Bool)

(assert (=> start!1046 (= tp!1363 b_and!527)))

(declare-fun b!9272 () Bool)

(declare-fun e!5297 () Bool)

(declare-fun tp_is_empty!453 () Bool)

(assert (=> b!9272 (= e!5297 tp_is_empty!453)))

(declare-fun b!9273 () Bool)

(declare-fun e!5300 () Bool)

(declare-fun mapRes!659 () Bool)

(assert (=> b!9273 (= e!5300 (and e!5297 mapRes!659))))

(declare-fun condMapEmpty!659 () Bool)

(declare-datatypes ((V!781 0))(
  ( (V!782 (val!232 Int)) )
))
(declare-datatypes ((ValueCell!210 0))(
  ( (ValueCellFull!210 (v!1326 V!781)) (EmptyCell!210) )
))
(declare-datatypes ((array!829 0))(
  ( (array!830 (arr!400 (Array (_ BitVec 32) ValueCell!210)) (size!462 (_ BitVec 32))) )
))
(declare-fun _values!1492 () array!829)

(declare-fun mapDefault!659 () ValueCell!210)

(assert (=> b!9273 (= condMapEmpty!659 (= (arr!400 _values!1492) ((as const (Array (_ BitVec 32) ValueCell!210)) mapDefault!659)))))

(declare-fun b!9274 () Bool)

(declare-fun e!5293 () Bool)

(declare-datatypes ((array!831 0))(
  ( (array!832 (arr!401 (Array (_ BitVec 32) (_ BitVec 64))) (size!463 (_ BitVec 32))) )
))
(declare-fun _keys!1806 () array!831)

(declare-fun k0!1278 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!831 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!9274 (= e!5293 (arrayContainsKey!0 _keys!1806 k0!1278 #b00000000000000000000000000000000))))

(declare-fun b!9275 () Bool)

(declare-fun res!8425 () Bool)

(declare-fun e!5298 () Bool)

(assert (=> b!9275 (=> (not res!8425) (not e!5298))))

(declare-fun defaultEntry!1495 () Int)

(declare-fun mask!2250 () (_ BitVec 32))

(declare-fun minValue!1434 () V!781)

(declare-fun extraKeys!1413 () (_ BitVec 32))

(declare-fun zeroValue!1434 () V!781)

(declare-datatypes ((tuple2!248 0))(
  ( (tuple2!249 (_1!124 (_ BitVec 64)) (_2!124 V!781)) )
))
(declare-datatypes ((List!274 0))(
  ( (Nil!271) (Cons!270 (h!836 tuple2!248) (t!2415 List!274)) )
))
(declare-datatypes ((ListLongMap!253 0))(
  ( (ListLongMap!254 (toList!142 List!274)) )
))
(declare-fun contains!119 (ListLongMap!253 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!101 (array!831 array!829 (_ BitVec 32) (_ BitVec 32) V!781 V!781 (_ BitVec 32) Int) ListLongMap!253)

(assert (=> b!9275 (= res!8425 (contains!119 (getCurrentListMap!101 _keys!1806 _values!1492 mask!2250 extraKeys!1413 zeroValue!1434 minValue!1434 #b00000000000000000000000000000000 defaultEntry!1495) k0!1278))))

(declare-fun mapIsEmpty!659 () Bool)

(assert (=> mapIsEmpty!659 mapRes!659))

(declare-fun b!9276 () Bool)

(declare-fun e!5295 () Bool)

(declare-fun e!5299 () Bool)

(assert (=> b!9276 (= e!5295 e!5299)))

(declare-fun res!8430 () Bool)

(assert (=> b!9276 (=> res!8430 e!5299)))

(assert (=> b!9276 (= res!8430 (not (= (size!463 _keys!1806) (bvadd #b00000000000000000000000000000001 mask!2250))))))

(declare-fun lt!2016 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!831 (_ BitVec 32)) Bool)

(assert (=> b!9276 (arrayForallSeekEntryOrOpenFound!0 lt!2016 _keys!1806 mask!2250)))

(declare-datatypes ((Unit!191 0))(
  ( (Unit!192) )
))
(declare-fun lt!2015 () Unit!191)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!831 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!191)

(assert (=> b!9276 (= lt!2015 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 _keys!1806 mask!2250 #b00000000000000000000000000000000 lt!2016))))

(declare-fun arrayScanForKey!0 (array!831 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!9276 (= lt!2016 (arrayScanForKey!0 _keys!1806 k0!1278 #b00000000000000000000000000000000))))

(declare-fun b!9277 () Bool)

(declare-fun res!8424 () Bool)

(assert (=> b!9277 (=> (not res!8424) (not e!5298))))

(assert (=> b!9277 (= res!8424 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1806 mask!2250))))

(declare-fun b!9278 () Bool)

(assert (=> b!9278 (= e!5293 (ite (= k0!1278 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand extraKeys!1413 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1413 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun res!8428 () Bool)

(assert (=> start!1046 (=> (not res!8428) (not e!5298))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!1046 (= res!8428 (validMask!0 mask!2250))))

(assert (=> start!1046 e!5298))

(assert (=> start!1046 tp!1363))

(assert (=> start!1046 true))

(declare-fun array_inv!289 (array!829) Bool)

(assert (=> start!1046 (and (array_inv!289 _values!1492) e!5300)))

(assert (=> start!1046 tp_is_empty!453))

(declare-fun array_inv!290 (array!831) Bool)

(assert (=> start!1046 (array_inv!290 _keys!1806)))

(declare-fun b!9279 () Bool)

(declare-fun e!5294 () Bool)

(assert (=> b!9279 (= e!5294 tp_is_empty!453)))

(declare-fun mapNonEmpty!659 () Bool)

(declare-fun tp!1364 () Bool)

(assert (=> mapNonEmpty!659 (= mapRes!659 (and tp!1364 e!5294))))

(declare-fun mapRest!659 () (Array (_ BitVec 32) ValueCell!210))

(declare-fun mapKey!659 () (_ BitVec 32))

(declare-fun mapValue!659 () ValueCell!210)

(assert (=> mapNonEmpty!659 (= (arr!400 _values!1492) (store mapRest!659 mapKey!659 mapValue!659))))

(declare-fun b!9280 () Bool)

(assert (=> b!9280 (= e!5298 (not e!5295))))

(declare-fun res!8431 () Bool)

(assert (=> b!9280 (=> res!8431 e!5295)))

(assert (=> b!9280 (= res!8431 (not (arrayContainsKey!0 _keys!1806 k0!1278 #b00000000000000000000000000000000)))))

(assert (=> b!9280 e!5293))

(declare-fun c!710 () Bool)

(assert (=> b!9280 (= c!710 (and (not (= k0!1278 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1278 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun lt!2014 () Unit!191)

(declare-fun lemmaKeyInListMapIsInArray!72 (array!831 array!829 (_ BitVec 32) (_ BitVec 32) V!781 V!781 (_ BitVec 64) Int) Unit!191)

(assert (=> b!9280 (= lt!2014 (lemmaKeyInListMapIsInArray!72 _keys!1806 _values!1492 mask!2250 extraKeys!1413 zeroValue!1434 minValue!1434 k0!1278 defaultEntry!1495))))

(declare-fun b!9281 () Bool)

(declare-fun res!8427 () Bool)

(assert (=> b!9281 (=> (not res!8427) (not e!5298))))

(declare-datatypes ((List!275 0))(
  ( (Nil!272) (Cons!271 (h!837 (_ BitVec 64)) (t!2416 List!275)) )
))
(declare-fun arrayNoDuplicates!0 (array!831 (_ BitVec 32) List!275) Bool)

(assert (=> b!9281 (= res!8427 (arrayNoDuplicates!0 _keys!1806 #b00000000000000000000000000000000 Nil!272))))

(declare-fun b!9282 () Bool)

(declare-datatypes ((SeekEntryResult!38 0))(
  ( (MissingZero!38 (index!2271 (_ BitVec 32))) (Found!38 (index!2272 (_ BitVec 32))) (Intermediate!38 (undefined!850 Bool) (index!2273 (_ BitVec 32)) (x!2782 (_ BitVec 32))) (Undefined!38) (MissingVacant!38 (index!2274 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!831 (_ BitVec 32)) SeekEntryResult!38)

(assert (=> b!9282 (= e!5299 (= (seekEntryOrOpen!0 k0!1278 _keys!1806 mask!2250) (Found!38 lt!2016)))))

(declare-fun b!9283 () Bool)

(declare-fun res!8429 () Bool)

(assert (=> b!9283 (=> (not res!8429) (not e!5298))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!9283 (= res!8429 (validKeyInArray!0 k0!1278))))

(declare-fun b!9284 () Bool)

(declare-fun res!8426 () Bool)

(assert (=> b!9284 (=> (not res!8426) (not e!5298))))

(assert (=> b!9284 (= res!8426 (and (= (size!462 _values!1492) (bvadd #b00000000000000000000000000000001 mask!2250)) (= (size!463 _keys!1806) (size!462 _values!1492)) (bvsge mask!2250 #b00000000000000000000000000000000) (bvsge extraKeys!1413 #b00000000000000000000000000000000) (bvsle extraKeys!1413 #b00000000000000000000000000000011)))))

(assert (= (and start!1046 res!8428) b!9284))

(assert (= (and b!9284 res!8426) b!9277))

(assert (= (and b!9277 res!8424) b!9281))

(assert (= (and b!9281 res!8427) b!9275))

(assert (= (and b!9275 res!8425) b!9283))

(assert (= (and b!9283 res!8429) b!9280))

(assert (= (and b!9280 c!710) b!9274))

(assert (= (and b!9280 (not c!710)) b!9278))

(assert (= (and b!9280 (not res!8431)) b!9276))

(assert (= (and b!9276 (not res!8430)) b!9282))

(assert (= (and b!9273 condMapEmpty!659) mapIsEmpty!659))

(assert (= (and b!9273 (not condMapEmpty!659)) mapNonEmpty!659))

(get-info :version)

(assert (= (and mapNonEmpty!659 ((_ is ValueCellFull!210) mapValue!659)) b!9279))

(assert (= (and b!9273 ((_ is ValueCellFull!210) mapDefault!659)) b!9272))

(assert (= start!1046 b!9273))

(declare-fun m!5803 () Bool)

(assert (=> mapNonEmpty!659 m!5803))

(declare-fun m!5805 () Bool)

(assert (=> b!9280 m!5805))

(declare-fun m!5807 () Bool)

(assert (=> b!9280 m!5807))

(declare-fun m!5809 () Bool)

(assert (=> b!9281 m!5809))

(declare-fun m!5811 () Bool)

(assert (=> b!9283 m!5811))

(declare-fun m!5813 () Bool)

(assert (=> start!1046 m!5813))

(declare-fun m!5815 () Bool)

(assert (=> start!1046 m!5815))

(declare-fun m!5817 () Bool)

(assert (=> start!1046 m!5817))

(assert (=> b!9274 m!5805))

(declare-fun m!5819 () Bool)

(assert (=> b!9276 m!5819))

(declare-fun m!5821 () Bool)

(assert (=> b!9276 m!5821))

(declare-fun m!5823 () Bool)

(assert (=> b!9276 m!5823))

(declare-fun m!5825 () Bool)

(assert (=> b!9277 m!5825))

(declare-fun m!5827 () Bool)

(assert (=> b!9282 m!5827))

(declare-fun m!5829 () Bool)

(assert (=> b!9275 m!5829))

(assert (=> b!9275 m!5829))

(declare-fun m!5831 () Bool)

(assert (=> b!9275 m!5831))

(check-sat (not b!9276) (not b!9277) (not b!9281) (not b!9282) (not b_next!375) (not start!1046) (not mapNonEmpty!659) (not b!9280) (not b!9274) (not b!9283) tp_is_empty!453 (not b!9275) b_and!527)
(check-sat b_and!527 (not b_next!375))
(get-model)

(declare-fun b!9336 () Bool)

(declare-fun c!720 () Bool)

(declare-fun lt!2034 () (_ BitVec 64))

(assert (=> b!9336 (= c!720 (= lt!2034 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!5331 () SeekEntryResult!38)

(declare-fun e!5332 () SeekEntryResult!38)

(assert (=> b!9336 (= e!5331 e!5332)))

(declare-fun b!9337 () Bool)

(declare-fun e!5333 () SeekEntryResult!38)

(assert (=> b!9337 (= e!5333 e!5331)))

(declare-fun lt!2032 () SeekEntryResult!38)

(assert (=> b!9337 (= lt!2034 (select (arr!401 _keys!1806) (index!2273 lt!2032)))))

(declare-fun c!721 () Bool)

(assert (=> b!9337 (= c!721 (= lt!2034 k0!1278))))

(declare-fun d!895 () Bool)

(declare-fun lt!2033 () SeekEntryResult!38)

(assert (=> d!895 (and (or ((_ is Undefined!38) lt!2033) (not ((_ is Found!38) lt!2033)) (and (bvsge (index!2272 lt!2033) #b00000000000000000000000000000000) (bvslt (index!2272 lt!2033) (size!463 _keys!1806)))) (or ((_ is Undefined!38) lt!2033) ((_ is Found!38) lt!2033) (not ((_ is MissingZero!38) lt!2033)) (and (bvsge (index!2271 lt!2033) #b00000000000000000000000000000000) (bvslt (index!2271 lt!2033) (size!463 _keys!1806)))) (or ((_ is Undefined!38) lt!2033) ((_ is Found!38) lt!2033) ((_ is MissingZero!38) lt!2033) (not ((_ is MissingVacant!38) lt!2033)) (and (bvsge (index!2274 lt!2033) #b00000000000000000000000000000000) (bvslt (index!2274 lt!2033) (size!463 _keys!1806)))) (or ((_ is Undefined!38) lt!2033) (ite ((_ is Found!38) lt!2033) (= (select (arr!401 _keys!1806) (index!2272 lt!2033)) k0!1278) (ite ((_ is MissingZero!38) lt!2033) (= (select (arr!401 _keys!1806) (index!2271 lt!2033)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!38) lt!2033) (= (select (arr!401 _keys!1806) (index!2274 lt!2033)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!895 (= lt!2033 e!5333)))

(declare-fun c!722 () Bool)

(assert (=> d!895 (= c!722 (and ((_ is Intermediate!38) lt!2032) (undefined!850 lt!2032)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!831 (_ BitVec 32)) SeekEntryResult!38)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!895 (= lt!2032 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!1278 mask!2250) k0!1278 _keys!1806 mask!2250))))

(assert (=> d!895 (validMask!0 mask!2250)))

(assert (=> d!895 (= (seekEntryOrOpen!0 k0!1278 _keys!1806 mask!2250) lt!2033)))

(declare-fun b!9338 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!831 (_ BitVec 32)) SeekEntryResult!38)

(assert (=> b!9338 (= e!5332 (seekKeyOrZeroReturnVacant!0 (x!2782 lt!2032) (index!2273 lt!2032) (index!2273 lt!2032) k0!1278 _keys!1806 mask!2250))))

(declare-fun b!9339 () Bool)

(assert (=> b!9339 (= e!5332 (MissingZero!38 (index!2273 lt!2032)))))

(declare-fun b!9340 () Bool)

(assert (=> b!9340 (= e!5333 Undefined!38)))

(declare-fun b!9341 () Bool)

(assert (=> b!9341 (= e!5331 (Found!38 (index!2273 lt!2032)))))

(assert (= (and d!895 c!722) b!9340))

(assert (= (and d!895 (not c!722)) b!9337))

(assert (= (and b!9337 c!721) b!9341))

(assert (= (and b!9337 (not c!721)) b!9336))

(assert (= (and b!9336 c!720) b!9339))

(assert (= (and b!9336 (not c!720)) b!9338))

(declare-fun m!5863 () Bool)

(assert (=> b!9337 m!5863))

(assert (=> d!895 m!5813))

(declare-fun m!5865 () Bool)

(assert (=> d!895 m!5865))

(assert (=> d!895 m!5865))

(declare-fun m!5867 () Bool)

(assert (=> d!895 m!5867))

(declare-fun m!5869 () Bool)

(assert (=> d!895 m!5869))

(declare-fun m!5871 () Bool)

(assert (=> d!895 m!5871))

(declare-fun m!5873 () Bool)

(assert (=> d!895 m!5873))

(declare-fun m!5875 () Bool)

(assert (=> b!9338 m!5875))

(assert (=> b!9282 d!895))

(declare-fun d!897 () Bool)

(assert (=> d!897 (= (validKeyInArray!0 k0!1278) (and (not (= k0!1278 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1278 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!9283 d!897))

(declare-fun d!899 () Bool)

(declare-fun res!8460 () Bool)

(declare-fun e!5338 () Bool)

(assert (=> d!899 (=> res!8460 e!5338)))

(assert (=> d!899 (= res!8460 (= (select (arr!401 _keys!1806) #b00000000000000000000000000000000) k0!1278))))

(assert (=> d!899 (= (arrayContainsKey!0 _keys!1806 k0!1278 #b00000000000000000000000000000000) e!5338)))

(declare-fun b!9346 () Bool)

(declare-fun e!5339 () Bool)

(assert (=> b!9346 (= e!5338 e!5339)))

(declare-fun res!8461 () Bool)

(assert (=> b!9346 (=> (not res!8461) (not e!5339))))

(assert (=> b!9346 (= res!8461 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!463 _keys!1806)))))

(declare-fun b!9347 () Bool)

(assert (=> b!9347 (= e!5339 (arrayContainsKey!0 _keys!1806 k0!1278 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!899 (not res!8460)) b!9346))

(assert (= (and b!9346 res!8461) b!9347))

(declare-fun m!5877 () Bool)

(assert (=> d!899 m!5877))

(declare-fun m!5879 () Bool)

(assert (=> b!9347 m!5879))

(assert (=> b!9274 d!899))

(declare-fun b!9358 () Bool)

(declare-fun e!5350 () Bool)

(declare-fun e!5349 () Bool)

(assert (=> b!9358 (= e!5350 e!5349)))

(declare-fun c!725 () Bool)

(assert (=> b!9358 (= c!725 (validKeyInArray!0 (select (arr!401 _keys!1806) #b00000000000000000000000000000000)))))

(declare-fun bm!236 () Bool)

(declare-fun call!239 () Bool)

(assert (=> bm!236 (= call!239 (arrayNoDuplicates!0 _keys!1806 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!725 (Cons!271 (select (arr!401 _keys!1806) #b00000000000000000000000000000000) Nil!272) Nil!272)))))

(declare-fun b!9359 () Bool)

(declare-fun e!5351 () Bool)

(declare-fun contains!121 (List!275 (_ BitVec 64)) Bool)

(assert (=> b!9359 (= e!5351 (contains!121 Nil!272 (select (arr!401 _keys!1806) #b00000000000000000000000000000000)))))

(declare-fun b!9360 () Bool)

(assert (=> b!9360 (= e!5349 call!239)))

(declare-fun b!9361 () Bool)

(declare-fun e!5348 () Bool)

(assert (=> b!9361 (= e!5348 e!5350)))

(declare-fun res!8468 () Bool)

(assert (=> b!9361 (=> (not res!8468) (not e!5350))))

(assert (=> b!9361 (= res!8468 (not e!5351))))

(declare-fun res!8469 () Bool)

(assert (=> b!9361 (=> (not res!8469) (not e!5351))))

(assert (=> b!9361 (= res!8469 (validKeyInArray!0 (select (arr!401 _keys!1806) #b00000000000000000000000000000000)))))

(declare-fun b!9362 () Bool)

(assert (=> b!9362 (= e!5349 call!239)))

(declare-fun d!901 () Bool)

(declare-fun res!8470 () Bool)

(assert (=> d!901 (=> res!8470 e!5348)))

(assert (=> d!901 (= res!8470 (bvsge #b00000000000000000000000000000000 (size!463 _keys!1806)))))

(assert (=> d!901 (= (arrayNoDuplicates!0 _keys!1806 #b00000000000000000000000000000000 Nil!272) e!5348)))

(assert (= (and d!901 (not res!8470)) b!9361))

(assert (= (and b!9361 res!8469) b!9359))

(assert (= (and b!9361 res!8468) b!9358))

(assert (= (and b!9358 c!725) b!9360))

(assert (= (and b!9358 (not c!725)) b!9362))

(assert (= (or b!9360 b!9362) bm!236))

(assert (=> b!9358 m!5877))

(assert (=> b!9358 m!5877))

(declare-fun m!5881 () Bool)

(assert (=> b!9358 m!5881))

(assert (=> bm!236 m!5877))

(declare-fun m!5883 () Bool)

(assert (=> bm!236 m!5883))

(assert (=> b!9359 m!5877))

(assert (=> b!9359 m!5877))

(declare-fun m!5885 () Bool)

(assert (=> b!9359 m!5885))

(assert (=> b!9361 m!5877))

(assert (=> b!9361 m!5877))

(assert (=> b!9361 m!5881))

(assert (=> b!9281 d!901))

(declare-fun d!903 () Bool)

(assert (=> d!903 (= (validMask!0 mask!2250) (and (or (= mask!2250 #b00000000000000000000000000000111) (= mask!2250 #b00000000000000000000000000001111) (= mask!2250 #b00000000000000000000000000011111) (= mask!2250 #b00000000000000000000000000111111) (= mask!2250 #b00000000000000000000000001111111) (= mask!2250 #b00000000000000000000000011111111) (= mask!2250 #b00000000000000000000000111111111) (= mask!2250 #b00000000000000000000001111111111) (= mask!2250 #b00000000000000000000011111111111) (= mask!2250 #b00000000000000000000111111111111) (= mask!2250 #b00000000000000000001111111111111) (= mask!2250 #b00000000000000000011111111111111) (= mask!2250 #b00000000000000000111111111111111) (= mask!2250 #b00000000000000001111111111111111) (= mask!2250 #b00000000000000011111111111111111) (= mask!2250 #b00000000000000111111111111111111) (= mask!2250 #b00000000000001111111111111111111) (= mask!2250 #b00000000000011111111111111111111) (= mask!2250 #b00000000000111111111111111111111) (= mask!2250 #b00000000001111111111111111111111) (= mask!2250 #b00000000011111111111111111111111) (= mask!2250 #b00000000111111111111111111111111) (= mask!2250 #b00000001111111111111111111111111) (= mask!2250 #b00000011111111111111111111111111) (= mask!2250 #b00000111111111111111111111111111) (= mask!2250 #b00001111111111111111111111111111) (= mask!2250 #b00011111111111111111111111111111) (= mask!2250 #b00111111111111111111111111111111)) (bvsle mask!2250 #b00111111111111111111111111111111)))))

(assert (=> start!1046 d!903))

(declare-fun d!905 () Bool)

(assert (=> d!905 (= (array_inv!289 _values!1492) (bvsge (size!462 _values!1492) #b00000000000000000000000000000000))))

(assert (=> start!1046 d!905))

(declare-fun d!907 () Bool)

(assert (=> d!907 (= (array_inv!290 _keys!1806) (bvsge (size!463 _keys!1806) #b00000000000000000000000000000000))))

(assert (=> start!1046 d!907))

(declare-fun b!9371 () Bool)

(declare-fun e!5358 () Bool)

(declare-fun e!5359 () Bool)

(assert (=> b!9371 (= e!5358 e!5359)))

(declare-fun lt!2042 () (_ BitVec 64))

(assert (=> b!9371 (= lt!2042 (select (arr!401 _keys!1806) #b00000000000000000000000000000000))))

(declare-fun lt!2041 () Unit!191)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!831 (_ BitVec 64) (_ BitVec 32)) Unit!191)

(assert (=> b!9371 (= lt!2041 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1806 lt!2042 #b00000000000000000000000000000000))))

(assert (=> b!9371 (arrayContainsKey!0 _keys!1806 lt!2042 #b00000000000000000000000000000000)))

(declare-fun lt!2043 () Unit!191)

(assert (=> b!9371 (= lt!2043 lt!2041)))

(declare-fun res!8475 () Bool)

(assert (=> b!9371 (= res!8475 (= (seekEntryOrOpen!0 (select (arr!401 _keys!1806) #b00000000000000000000000000000000) _keys!1806 mask!2250) (Found!38 #b00000000000000000000000000000000)))))

(assert (=> b!9371 (=> (not res!8475) (not e!5359))))

(declare-fun b!9372 () Bool)

(declare-fun call!242 () Bool)

(assert (=> b!9372 (= e!5358 call!242)))

(declare-fun b!9373 () Bool)

(declare-fun e!5360 () Bool)

(assert (=> b!9373 (= e!5360 e!5358)))

(declare-fun c!728 () Bool)

(assert (=> b!9373 (= c!728 (validKeyInArray!0 (select (arr!401 _keys!1806) #b00000000000000000000000000000000)))))

(declare-fun b!9374 () Bool)

(assert (=> b!9374 (= e!5359 call!242)))

(declare-fun bm!239 () Bool)

(assert (=> bm!239 (= call!242 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!1806 mask!2250))))

(declare-fun d!909 () Bool)

(declare-fun res!8476 () Bool)

(assert (=> d!909 (=> res!8476 e!5360)))

(assert (=> d!909 (= res!8476 (bvsge #b00000000000000000000000000000000 (size!463 _keys!1806)))))

(assert (=> d!909 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1806 mask!2250) e!5360)))

(assert (= (and d!909 (not res!8476)) b!9373))

(assert (= (and b!9373 c!728) b!9371))

(assert (= (and b!9373 (not c!728)) b!9372))

(assert (= (and b!9371 res!8475) b!9374))

(assert (= (or b!9374 b!9372) bm!239))

(assert (=> b!9371 m!5877))

(declare-fun m!5887 () Bool)

(assert (=> b!9371 m!5887))

(declare-fun m!5889 () Bool)

(assert (=> b!9371 m!5889))

(assert (=> b!9371 m!5877))

(declare-fun m!5891 () Bool)

(assert (=> b!9371 m!5891))

(assert (=> b!9373 m!5877))

(assert (=> b!9373 m!5877))

(assert (=> b!9373 m!5881))

(declare-fun m!5893 () Bool)

(assert (=> bm!239 m!5893))

(assert (=> b!9277 d!909))

(declare-fun b!9375 () Bool)

(declare-fun e!5361 () Bool)

(declare-fun e!5362 () Bool)

(assert (=> b!9375 (= e!5361 e!5362)))

(declare-fun lt!2045 () (_ BitVec 64))

(assert (=> b!9375 (= lt!2045 (select (arr!401 _keys!1806) lt!2016))))

(declare-fun lt!2044 () Unit!191)

(assert (=> b!9375 (= lt!2044 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1806 lt!2045 lt!2016))))

(assert (=> b!9375 (arrayContainsKey!0 _keys!1806 lt!2045 #b00000000000000000000000000000000)))

(declare-fun lt!2046 () Unit!191)

(assert (=> b!9375 (= lt!2046 lt!2044)))

(declare-fun res!8477 () Bool)

(assert (=> b!9375 (= res!8477 (= (seekEntryOrOpen!0 (select (arr!401 _keys!1806) lt!2016) _keys!1806 mask!2250) (Found!38 lt!2016)))))

(assert (=> b!9375 (=> (not res!8477) (not e!5362))))

(declare-fun b!9376 () Bool)

(declare-fun call!243 () Bool)

(assert (=> b!9376 (= e!5361 call!243)))

(declare-fun b!9377 () Bool)

(declare-fun e!5363 () Bool)

(assert (=> b!9377 (= e!5363 e!5361)))

(declare-fun c!729 () Bool)

(assert (=> b!9377 (= c!729 (validKeyInArray!0 (select (arr!401 _keys!1806) lt!2016)))))

(declare-fun b!9378 () Bool)

(assert (=> b!9378 (= e!5362 call!243)))

(declare-fun bm!240 () Bool)

(assert (=> bm!240 (= call!243 (arrayForallSeekEntryOrOpenFound!0 (bvadd lt!2016 #b00000000000000000000000000000001) _keys!1806 mask!2250))))

(declare-fun d!911 () Bool)

(declare-fun res!8478 () Bool)

(assert (=> d!911 (=> res!8478 e!5363)))

(assert (=> d!911 (= res!8478 (bvsge lt!2016 (size!463 _keys!1806)))))

(assert (=> d!911 (= (arrayForallSeekEntryOrOpenFound!0 lt!2016 _keys!1806 mask!2250) e!5363)))

(assert (= (and d!911 (not res!8478)) b!9377))

(assert (= (and b!9377 c!729) b!9375))

(assert (= (and b!9377 (not c!729)) b!9376))

(assert (= (and b!9375 res!8477) b!9378))

(assert (= (or b!9378 b!9376) bm!240))

(declare-fun m!5895 () Bool)

(assert (=> b!9375 m!5895))

(declare-fun m!5897 () Bool)

(assert (=> b!9375 m!5897))

(declare-fun m!5899 () Bool)

(assert (=> b!9375 m!5899))

(assert (=> b!9375 m!5895))

(declare-fun m!5901 () Bool)

(assert (=> b!9375 m!5901))

(assert (=> b!9377 m!5895))

(assert (=> b!9377 m!5895))

(declare-fun m!5903 () Bool)

(assert (=> b!9377 m!5903))

(declare-fun m!5905 () Bool)

(assert (=> bm!240 m!5905))

(assert (=> b!9276 d!911))

(declare-fun d!913 () Bool)

(assert (=> d!913 (arrayForallSeekEntryOrOpenFound!0 lt!2016 _keys!1806 mask!2250)))

(declare-fun lt!2049 () Unit!191)

(declare-fun choose!38 (array!831 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!191)

(assert (=> d!913 (= lt!2049 (choose!38 _keys!1806 mask!2250 #b00000000000000000000000000000000 lt!2016))))

(assert (=> d!913 (validMask!0 mask!2250)))

(assert (=> d!913 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 _keys!1806 mask!2250 #b00000000000000000000000000000000 lt!2016) lt!2049)))

(declare-fun bs!328 () Bool)

(assert (= bs!328 d!913))

(assert (=> bs!328 m!5819))

(declare-fun m!5907 () Bool)

(assert (=> bs!328 m!5907))

(assert (=> bs!328 m!5813))

(assert (=> b!9276 d!913))

(declare-fun d!915 () Bool)

(declare-fun lt!2052 () (_ BitVec 32))

(assert (=> d!915 (and (or (bvslt lt!2052 #b00000000000000000000000000000000) (bvsge lt!2052 (size!463 _keys!1806)) (and (bvsge lt!2052 #b00000000000000000000000000000000) (bvslt lt!2052 (size!463 _keys!1806)))) (bvsge lt!2052 #b00000000000000000000000000000000) (bvslt lt!2052 (size!463 _keys!1806)) (= (select (arr!401 _keys!1806) lt!2052) k0!1278))))

(declare-fun e!5366 () (_ BitVec 32))

(assert (=> d!915 (= lt!2052 e!5366)))

(declare-fun c!732 () Bool)

(assert (=> d!915 (= c!732 (= (select (arr!401 _keys!1806) #b00000000000000000000000000000000) k0!1278))))

(assert (=> d!915 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!463 _keys!1806)) (bvslt (size!463 _keys!1806) #b01111111111111111111111111111111))))

(assert (=> d!915 (= (arrayScanForKey!0 _keys!1806 k0!1278 #b00000000000000000000000000000000) lt!2052)))

(declare-fun b!9383 () Bool)

(assert (=> b!9383 (= e!5366 #b00000000000000000000000000000000)))

(declare-fun b!9384 () Bool)

(assert (=> b!9384 (= e!5366 (arrayScanForKey!0 _keys!1806 k0!1278 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!915 c!732) b!9383))

(assert (= (and d!915 (not c!732)) b!9384))

(declare-fun m!5909 () Bool)

(assert (=> d!915 m!5909))

(assert (=> d!915 m!5877))

(declare-fun m!5911 () Bool)

(assert (=> b!9384 m!5911))

(assert (=> b!9276 d!915))

(assert (=> b!9280 d!899))

(declare-fun d!917 () Bool)

(declare-fun e!5369 () Bool)

(assert (=> d!917 e!5369))

(declare-fun c!735 () Bool)

(assert (=> d!917 (= c!735 (and (not (= k0!1278 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1278 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun lt!2055 () Unit!191)

(declare-fun choose!142 (array!831 array!829 (_ BitVec 32) (_ BitVec 32) V!781 V!781 (_ BitVec 64) Int) Unit!191)

(assert (=> d!917 (= lt!2055 (choose!142 _keys!1806 _values!1492 mask!2250 extraKeys!1413 zeroValue!1434 minValue!1434 k0!1278 defaultEntry!1495))))

(assert (=> d!917 (validMask!0 mask!2250)))

(assert (=> d!917 (= (lemmaKeyInListMapIsInArray!72 _keys!1806 _values!1492 mask!2250 extraKeys!1413 zeroValue!1434 minValue!1434 k0!1278 defaultEntry!1495) lt!2055)))

(declare-fun b!9389 () Bool)

(assert (=> b!9389 (= e!5369 (arrayContainsKey!0 _keys!1806 k0!1278 #b00000000000000000000000000000000))))

(declare-fun b!9390 () Bool)

(assert (=> b!9390 (= e!5369 (ite (= k0!1278 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand extraKeys!1413 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1413 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (= (and d!917 c!735) b!9389))

(assert (= (and d!917 (not c!735)) b!9390))

(declare-fun m!5913 () Bool)

(assert (=> d!917 m!5913))

(assert (=> d!917 m!5813))

(assert (=> b!9389 m!5805))

(assert (=> b!9280 d!917))

(declare-fun d!919 () Bool)

(declare-fun e!5374 () Bool)

(assert (=> d!919 e!5374))

(declare-fun res!8481 () Bool)

(assert (=> d!919 (=> res!8481 e!5374)))

(declare-fun lt!2065 () Bool)

(assert (=> d!919 (= res!8481 (not lt!2065))))

(declare-fun lt!2066 () Bool)

(assert (=> d!919 (= lt!2065 lt!2066)))

(declare-fun lt!2067 () Unit!191)

(declare-fun e!5375 () Unit!191)

(assert (=> d!919 (= lt!2067 e!5375)))

(declare-fun c!738 () Bool)

(assert (=> d!919 (= c!738 lt!2066)))

(declare-fun containsKey!8 (List!274 (_ BitVec 64)) Bool)

(assert (=> d!919 (= lt!2066 (containsKey!8 (toList!142 (getCurrentListMap!101 _keys!1806 _values!1492 mask!2250 extraKeys!1413 zeroValue!1434 minValue!1434 #b00000000000000000000000000000000 defaultEntry!1495)) k0!1278))))

(assert (=> d!919 (= (contains!119 (getCurrentListMap!101 _keys!1806 _values!1492 mask!2250 extraKeys!1413 zeroValue!1434 minValue!1434 #b00000000000000000000000000000000 defaultEntry!1495) k0!1278) lt!2065)))

(declare-fun b!9397 () Bool)

(declare-fun lt!2064 () Unit!191)

(assert (=> b!9397 (= e!5375 lt!2064)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!8 (List!274 (_ BitVec 64)) Unit!191)

(assert (=> b!9397 (= lt!2064 (lemmaContainsKeyImpliesGetValueByKeyDefined!8 (toList!142 (getCurrentListMap!101 _keys!1806 _values!1492 mask!2250 extraKeys!1413 zeroValue!1434 minValue!1434 #b00000000000000000000000000000000 defaultEntry!1495)) k0!1278))))

(declare-datatypes ((Option!20 0))(
  ( (Some!19 (v!1328 V!781)) (None!18) )
))
(declare-fun isDefined!9 (Option!20) Bool)

(declare-fun getValueByKey!14 (List!274 (_ BitVec 64)) Option!20)

(assert (=> b!9397 (isDefined!9 (getValueByKey!14 (toList!142 (getCurrentListMap!101 _keys!1806 _values!1492 mask!2250 extraKeys!1413 zeroValue!1434 minValue!1434 #b00000000000000000000000000000000 defaultEntry!1495)) k0!1278))))

(declare-fun b!9398 () Bool)

(declare-fun Unit!193 () Unit!191)

(assert (=> b!9398 (= e!5375 Unit!193)))

(declare-fun b!9399 () Bool)

(assert (=> b!9399 (= e!5374 (isDefined!9 (getValueByKey!14 (toList!142 (getCurrentListMap!101 _keys!1806 _values!1492 mask!2250 extraKeys!1413 zeroValue!1434 minValue!1434 #b00000000000000000000000000000000 defaultEntry!1495)) k0!1278)))))

(assert (= (and d!919 c!738) b!9397))

(assert (= (and d!919 (not c!738)) b!9398))

(assert (= (and d!919 (not res!8481)) b!9399))

(declare-fun m!5915 () Bool)

(assert (=> d!919 m!5915))

(declare-fun m!5917 () Bool)

(assert (=> b!9397 m!5917))

(declare-fun m!5919 () Bool)

(assert (=> b!9397 m!5919))

(assert (=> b!9397 m!5919))

(declare-fun m!5921 () Bool)

(assert (=> b!9397 m!5921))

(assert (=> b!9399 m!5919))

(assert (=> b!9399 m!5919))

(assert (=> b!9399 m!5921))

(assert (=> b!9275 d!919))

(declare-fun b!9442 () Bool)

(declare-fun e!5411 () ListLongMap!253)

(declare-fun call!264 () ListLongMap!253)

(assert (=> b!9442 (= e!5411 call!264)))

(declare-fun b!9443 () Bool)

(declare-fun e!5404 () Bool)

(declare-fun e!5410 () Bool)

(assert (=> b!9443 (= e!5404 e!5410)))

(declare-fun res!8506 () Bool)

(declare-fun call!261 () Bool)

(assert (=> b!9443 (= res!8506 call!261)))

(assert (=> b!9443 (=> (not res!8506) (not e!5410))))

(declare-fun call!260 () ListLongMap!253)

(declare-fun bm!255 () Bool)

(declare-fun getCurrentListMapNoExtraKeys!8 (array!831 array!829 (_ BitVec 32) (_ BitVec 32) V!781 V!781 (_ BitVec 32) Int) ListLongMap!253)

(assert (=> bm!255 (= call!260 (getCurrentListMapNoExtraKeys!8 _keys!1806 _values!1492 mask!2250 extraKeys!1413 zeroValue!1434 minValue!1434 #b00000000000000000000000000000000 defaultEntry!1495))))

(declare-fun b!9444 () Bool)

(declare-fun res!8505 () Bool)

(declare-fun e!5406 () Bool)

(assert (=> b!9444 (=> (not res!8505) (not e!5406))))

(declare-fun e!5412 () Bool)

(assert (=> b!9444 (= res!8505 e!5412)))

(declare-fun res!8504 () Bool)

(assert (=> b!9444 (=> res!8504 e!5412)))

(declare-fun e!5407 () Bool)

(assert (=> b!9444 (= res!8504 (not e!5407))))

(declare-fun res!8501 () Bool)

(assert (=> b!9444 (=> (not res!8501) (not e!5407))))

(assert (=> b!9444 (= res!8501 (bvslt #b00000000000000000000000000000000 (size!463 _keys!1806)))))

(declare-fun d!921 () Bool)

(assert (=> d!921 e!5406))

(declare-fun res!8507 () Bool)

(assert (=> d!921 (=> (not res!8507) (not e!5406))))

(assert (=> d!921 (= res!8507 (or (bvsge #b00000000000000000000000000000000 (size!463 _keys!1806)) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!463 _keys!1806)))))))

(declare-fun lt!2115 () ListLongMap!253)

(declare-fun lt!2125 () ListLongMap!253)

(assert (=> d!921 (= lt!2115 lt!2125)))

(declare-fun lt!2128 () Unit!191)

(declare-fun e!5403 () Unit!191)

(assert (=> d!921 (= lt!2128 e!5403)))

(declare-fun c!755 () Bool)

(declare-fun e!5413 () Bool)

(assert (=> d!921 (= c!755 e!5413)))

(declare-fun res!8502 () Bool)

(assert (=> d!921 (=> (not res!8502) (not e!5413))))

(assert (=> d!921 (= res!8502 (bvslt #b00000000000000000000000000000000 (size!463 _keys!1806)))))

(declare-fun e!5408 () ListLongMap!253)

(assert (=> d!921 (= lt!2125 e!5408)))

(declare-fun c!756 () Bool)

(assert (=> d!921 (= c!756 (and (not (= (bvand extraKeys!1413 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1413 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!921 (validMask!0 mask!2250)))

(assert (=> d!921 (= (getCurrentListMap!101 _keys!1806 _values!1492 mask!2250 extraKeys!1413 zeroValue!1434 minValue!1434 #b00000000000000000000000000000000 defaultEntry!1495) lt!2115)))

(declare-fun b!9445 () Bool)

(assert (=> b!9445 (= e!5406 e!5404)))

(declare-fun c!754 () Bool)

(assert (=> b!9445 (= c!754 (not (= (bvand extraKeys!1413 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!9446 () Bool)

(declare-fun e!5409 () Bool)

(declare-fun call!258 () Bool)

(assert (=> b!9446 (= e!5409 (not call!258))))

(declare-fun b!9447 () Bool)

(declare-fun c!753 () Bool)

(assert (=> b!9447 (= c!753 (and (not (= (bvand extraKeys!1413 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!1413 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun e!5414 () ListLongMap!253)

(assert (=> b!9447 (= e!5411 e!5414)))

(declare-fun b!9448 () Bool)

(declare-fun e!5402 () Bool)

(assert (=> b!9448 (= e!5412 e!5402)))

(declare-fun res!8500 () Bool)

(assert (=> b!9448 (=> (not res!8500) (not e!5402))))

(assert (=> b!9448 (= res!8500 (contains!119 lt!2115 (select (arr!401 _keys!1806) #b00000000000000000000000000000000)))))

(assert (=> b!9448 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!463 _keys!1806)))))

(declare-fun b!9449 () Bool)

(declare-fun call!259 () ListLongMap!253)

(assert (=> b!9449 (= e!5414 call!259)))

(declare-fun b!9450 () Bool)

(declare-fun res!8503 () Bool)

(assert (=> b!9450 (=> (not res!8503) (not e!5406))))

(assert (=> b!9450 (= res!8503 e!5409)))

(declare-fun c!751 () Bool)

(assert (=> b!9450 (= c!751 (not (= (bvand extraKeys!1413 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!9451 () Bool)

(assert (=> b!9451 (= e!5414 call!264)))

(declare-fun b!9452 () Bool)

(declare-fun apply!24 (ListLongMap!253 (_ BitVec 64)) V!781)

(declare-fun get!176 (ValueCell!210 V!781) V!781)

(declare-fun dynLambda!46 (Int (_ BitVec 64)) V!781)

(assert (=> b!9452 (= e!5402 (= (apply!24 lt!2115 (select (arr!401 _keys!1806) #b00000000000000000000000000000000)) (get!176 (select (arr!400 _values!1492) #b00000000000000000000000000000000) (dynLambda!46 defaultEntry!1495 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!9452 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!462 _values!1492)))))

(assert (=> b!9452 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!463 _keys!1806)))))

(declare-fun bm!256 () Bool)

(assert (=> bm!256 (= call!261 (contains!119 lt!2115 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!9453 () Bool)

(assert (=> b!9453 (= e!5408 e!5411)))

(declare-fun c!752 () Bool)

(assert (=> b!9453 (= c!752 (and (not (= (bvand extraKeys!1413 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!1413 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!9454 () Bool)

(declare-fun Unit!194 () Unit!191)

(assert (=> b!9454 (= e!5403 Unit!194)))

(declare-fun b!9455 () Bool)

(declare-fun e!5405 () Bool)

(assert (=> b!9455 (= e!5409 e!5405)))

(declare-fun res!8508 () Bool)

(assert (=> b!9455 (= res!8508 call!258)))

(assert (=> b!9455 (=> (not res!8508) (not e!5405))))

(declare-fun b!9456 () Bool)

(declare-fun lt!2126 () Unit!191)

(assert (=> b!9456 (= e!5403 lt!2126)))

(declare-fun lt!2121 () ListLongMap!253)

(assert (=> b!9456 (= lt!2121 (getCurrentListMapNoExtraKeys!8 _keys!1806 _values!1492 mask!2250 extraKeys!1413 zeroValue!1434 minValue!1434 #b00000000000000000000000000000000 defaultEntry!1495))))

(declare-fun lt!2124 () (_ BitVec 64))

(assert (=> b!9456 (= lt!2124 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!2118 () (_ BitVec 64))

(assert (=> b!9456 (= lt!2118 (select (arr!401 _keys!1806) #b00000000000000000000000000000000))))

(declare-fun lt!2123 () Unit!191)

(declare-fun addStillContains!9 (ListLongMap!253 (_ BitVec 64) V!781 (_ BitVec 64)) Unit!191)

(assert (=> b!9456 (= lt!2123 (addStillContains!9 lt!2121 lt!2124 zeroValue!1434 lt!2118))))

(declare-fun +!11 (ListLongMap!253 tuple2!248) ListLongMap!253)

(assert (=> b!9456 (contains!119 (+!11 lt!2121 (tuple2!249 lt!2124 zeroValue!1434)) lt!2118)))

(declare-fun lt!2133 () Unit!191)

(assert (=> b!9456 (= lt!2133 lt!2123)))

(declare-fun lt!2120 () ListLongMap!253)

(assert (=> b!9456 (= lt!2120 (getCurrentListMapNoExtraKeys!8 _keys!1806 _values!1492 mask!2250 extraKeys!1413 zeroValue!1434 minValue!1434 #b00000000000000000000000000000000 defaultEntry!1495))))

(declare-fun lt!2127 () (_ BitVec 64))

(assert (=> b!9456 (= lt!2127 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!2116 () (_ BitVec 64))

(assert (=> b!9456 (= lt!2116 (select (arr!401 _keys!1806) #b00000000000000000000000000000000))))

(declare-fun lt!2131 () Unit!191)

(declare-fun addApplyDifferent!9 (ListLongMap!253 (_ BitVec 64) V!781 (_ BitVec 64)) Unit!191)

(assert (=> b!9456 (= lt!2131 (addApplyDifferent!9 lt!2120 lt!2127 minValue!1434 lt!2116))))

(assert (=> b!9456 (= (apply!24 (+!11 lt!2120 (tuple2!249 lt!2127 minValue!1434)) lt!2116) (apply!24 lt!2120 lt!2116))))

(declare-fun lt!2119 () Unit!191)

(assert (=> b!9456 (= lt!2119 lt!2131)))

(declare-fun lt!2117 () ListLongMap!253)

(assert (=> b!9456 (= lt!2117 (getCurrentListMapNoExtraKeys!8 _keys!1806 _values!1492 mask!2250 extraKeys!1413 zeroValue!1434 minValue!1434 #b00000000000000000000000000000000 defaultEntry!1495))))

(declare-fun lt!2130 () (_ BitVec 64))

(assert (=> b!9456 (= lt!2130 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!2122 () (_ BitVec 64))

(assert (=> b!9456 (= lt!2122 (select (arr!401 _keys!1806) #b00000000000000000000000000000000))))

(declare-fun lt!2129 () Unit!191)

(assert (=> b!9456 (= lt!2129 (addApplyDifferent!9 lt!2117 lt!2130 zeroValue!1434 lt!2122))))

(assert (=> b!9456 (= (apply!24 (+!11 lt!2117 (tuple2!249 lt!2130 zeroValue!1434)) lt!2122) (apply!24 lt!2117 lt!2122))))

(declare-fun lt!2113 () Unit!191)

(assert (=> b!9456 (= lt!2113 lt!2129)))

(declare-fun lt!2114 () ListLongMap!253)

(assert (=> b!9456 (= lt!2114 (getCurrentListMapNoExtraKeys!8 _keys!1806 _values!1492 mask!2250 extraKeys!1413 zeroValue!1434 minValue!1434 #b00000000000000000000000000000000 defaultEntry!1495))))

(declare-fun lt!2112 () (_ BitVec 64))

(assert (=> b!9456 (= lt!2112 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!2132 () (_ BitVec 64))

(assert (=> b!9456 (= lt!2132 (select (arr!401 _keys!1806) #b00000000000000000000000000000000))))

(assert (=> b!9456 (= lt!2126 (addApplyDifferent!9 lt!2114 lt!2112 minValue!1434 lt!2132))))

(assert (=> b!9456 (= (apply!24 (+!11 lt!2114 (tuple2!249 lt!2112 minValue!1434)) lt!2132) (apply!24 lt!2114 lt!2132))))

(declare-fun call!262 () ListLongMap!253)

(declare-fun bm!257 () Bool)

(declare-fun call!263 () ListLongMap!253)

(assert (=> bm!257 (= call!262 (+!11 (ite c!756 call!260 (ite c!752 call!263 call!259)) (ite (or c!756 c!752) (tuple2!249 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1434) (tuple2!249 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1434))))))

(declare-fun bm!258 () Bool)

(assert (=> bm!258 (= call!264 call!262)))

(declare-fun b!9457 () Bool)

(assert (=> b!9457 (= e!5407 (validKeyInArray!0 (select (arr!401 _keys!1806) #b00000000000000000000000000000000)))))

(declare-fun b!9458 () Bool)

(assert (=> b!9458 (= e!5408 (+!11 call!262 (tuple2!249 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1434)))))

(declare-fun b!9459 () Bool)

(assert (=> b!9459 (= e!5413 (validKeyInArray!0 (select (arr!401 _keys!1806) #b00000000000000000000000000000000)))))

(declare-fun bm!259 () Bool)

(assert (=> bm!259 (= call!258 (contains!119 lt!2115 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!9460 () Bool)

(assert (=> b!9460 (= e!5404 (not call!261))))

(declare-fun bm!260 () Bool)

(assert (=> bm!260 (= call!263 call!260)))

(declare-fun b!9461 () Bool)

(assert (=> b!9461 (= e!5405 (= (apply!24 lt!2115 #b0000000000000000000000000000000000000000000000000000000000000000) zeroValue!1434))))

(declare-fun b!9462 () Bool)

(assert (=> b!9462 (= e!5410 (= (apply!24 lt!2115 #b1000000000000000000000000000000000000000000000000000000000000000) minValue!1434))))

(declare-fun bm!261 () Bool)

(assert (=> bm!261 (= call!259 call!263)))

(assert (= (and d!921 c!756) b!9458))

(assert (= (and d!921 (not c!756)) b!9453))

(assert (= (and b!9453 c!752) b!9442))

(assert (= (and b!9453 (not c!752)) b!9447))

(assert (= (and b!9447 c!753) b!9451))

(assert (= (and b!9447 (not c!753)) b!9449))

(assert (= (or b!9451 b!9449) bm!261))

(assert (= (or b!9442 bm!261) bm!260))

(assert (= (or b!9442 b!9451) bm!258))

(assert (= (or b!9458 bm!260) bm!255))

(assert (= (or b!9458 bm!258) bm!257))

(assert (= (and d!921 res!8502) b!9459))

(assert (= (and d!921 c!755) b!9456))

(assert (= (and d!921 (not c!755)) b!9454))

(assert (= (and d!921 res!8507) b!9444))

(assert (= (and b!9444 res!8501) b!9457))

(assert (= (and b!9444 (not res!8504)) b!9448))

(assert (= (and b!9448 res!8500) b!9452))

(assert (= (and b!9444 res!8505) b!9450))

(assert (= (and b!9450 c!751) b!9455))

(assert (= (and b!9450 (not c!751)) b!9446))

(assert (= (and b!9455 res!8508) b!9461))

(assert (= (or b!9455 b!9446) bm!259))

(assert (= (and b!9450 res!8503) b!9445))

(assert (= (and b!9445 c!754) b!9443))

(assert (= (and b!9445 (not c!754)) b!9460))

(assert (= (and b!9443 res!8506) b!9462))

(assert (= (or b!9443 b!9460) bm!256))

(declare-fun b_lambda!347 () Bool)

(assert (=> (not b_lambda!347) (not b!9452)))

(declare-fun t!2419 () Bool)

(declare-fun tb!141 () Bool)

(assert (=> (and start!1046 (= defaultEntry!1495 defaultEntry!1495) t!2419) tb!141))

(declare-fun result!225 () Bool)

(assert (=> tb!141 (= result!225 tp_is_empty!453)))

(assert (=> b!9452 t!2419))

(declare-fun b_and!531 () Bool)

(assert (= b_and!527 (and (=> t!2419 result!225) b_and!531)))

(declare-fun m!5923 () Bool)

(assert (=> bm!256 m!5923))

(declare-fun m!5925 () Bool)

(assert (=> b!9458 m!5925))

(declare-fun m!5927 () Bool)

(assert (=> b!9461 m!5927))

(declare-fun m!5929 () Bool)

(assert (=> b!9462 m!5929))

(declare-fun m!5931 () Bool)

(assert (=> bm!259 m!5931))

(declare-fun m!5933 () Bool)

(assert (=> b!9456 m!5933))

(declare-fun m!5935 () Bool)

(assert (=> b!9456 m!5935))

(declare-fun m!5937 () Bool)

(assert (=> b!9456 m!5937))

(declare-fun m!5939 () Bool)

(assert (=> b!9456 m!5939))

(declare-fun m!5941 () Bool)

(assert (=> b!9456 m!5941))

(declare-fun m!5943 () Bool)

(assert (=> b!9456 m!5943))

(declare-fun m!5945 () Bool)

(assert (=> b!9456 m!5945))

(declare-fun m!5947 () Bool)

(assert (=> b!9456 m!5947))

(assert (=> b!9456 m!5943))

(declare-fun m!5949 () Bool)

(assert (=> b!9456 m!5949))

(declare-fun m!5951 () Bool)

(assert (=> b!9456 m!5951))

(assert (=> b!9456 m!5937))

(assert (=> b!9456 m!5941))

(declare-fun m!5953 () Bool)

(assert (=> b!9456 m!5953))

(declare-fun m!5955 () Bool)

(assert (=> b!9456 m!5955))

(declare-fun m!5957 () Bool)

(assert (=> b!9456 m!5957))

(declare-fun m!5959 () Bool)

(assert (=> b!9456 m!5959))

(assert (=> b!9456 m!5877))

(assert (=> b!9456 m!5955))

(declare-fun m!5961 () Bool)

(assert (=> b!9456 m!5961))

(declare-fun m!5963 () Bool)

(assert (=> b!9456 m!5963))

(assert (=> d!921 m!5813))

(declare-fun m!5965 () Bool)

(assert (=> bm!257 m!5965))

(declare-fun m!5967 () Bool)

(assert (=> b!9452 m!5967))

(assert (=> b!9452 m!5877))

(declare-fun m!5969 () Bool)

(assert (=> b!9452 m!5969))

(assert (=> b!9452 m!5877))

(declare-fun m!5971 () Bool)

(assert (=> b!9452 m!5971))

(assert (=> b!9452 m!5969))

(assert (=> b!9452 m!5967))

(declare-fun m!5973 () Bool)

(assert (=> b!9452 m!5973))

(assert (=> b!9457 m!5877))

(assert (=> b!9457 m!5877))

(assert (=> b!9457 m!5881))

(assert (=> bm!255 m!5945))

(assert (=> b!9459 m!5877))

(assert (=> b!9459 m!5877))

(assert (=> b!9459 m!5881))

(assert (=> b!9448 m!5877))

(assert (=> b!9448 m!5877))

(declare-fun m!5975 () Bool)

(assert (=> b!9448 m!5975))

(assert (=> b!9275 d!921))

(declare-fun condMapEmpty!665 () Bool)

(declare-fun mapDefault!665 () ValueCell!210)

(assert (=> mapNonEmpty!659 (= condMapEmpty!665 (= mapRest!659 ((as const (Array (_ BitVec 32) ValueCell!210)) mapDefault!665)))))

(declare-fun e!5420 () Bool)

(declare-fun mapRes!665 () Bool)

(assert (=> mapNonEmpty!659 (= tp!1364 (and e!5420 mapRes!665))))

(declare-fun mapIsEmpty!665 () Bool)

(assert (=> mapIsEmpty!665 mapRes!665))

(declare-fun mapNonEmpty!665 () Bool)

(declare-fun tp!1373 () Bool)

(declare-fun e!5419 () Bool)

(assert (=> mapNonEmpty!665 (= mapRes!665 (and tp!1373 e!5419))))

(declare-fun mapRest!665 () (Array (_ BitVec 32) ValueCell!210))

(declare-fun mapKey!665 () (_ BitVec 32))

(declare-fun mapValue!665 () ValueCell!210)

(assert (=> mapNonEmpty!665 (= mapRest!659 (store mapRest!665 mapKey!665 mapValue!665))))

(declare-fun b!9472 () Bool)

(assert (=> b!9472 (= e!5420 tp_is_empty!453)))

(declare-fun b!9471 () Bool)

(assert (=> b!9471 (= e!5419 tp_is_empty!453)))

(assert (= (and mapNonEmpty!659 condMapEmpty!665) mapIsEmpty!665))

(assert (= (and mapNonEmpty!659 (not condMapEmpty!665)) mapNonEmpty!665))

(assert (= (and mapNonEmpty!665 ((_ is ValueCellFull!210) mapValue!665)) b!9471))

(assert (= (and mapNonEmpty!659 ((_ is ValueCellFull!210) mapDefault!665)) b!9472))

(declare-fun m!5977 () Bool)

(assert (=> mapNonEmpty!665 m!5977))

(declare-fun b_lambda!349 () Bool)

(assert (= b_lambda!347 (or (and start!1046 b_free!375) b_lambda!349)))

(check-sat (not bm!259) (not b!9458) (not b!9359) (not b!9457) (not b!9338) b_and!531 (not d!895) (not b!9456) (not bm!256) (not b!9452) (not bm!257) (not b!9448) (not b!9358) (not b!9375) (not b_next!375) (not d!921) (not b!9461) (not b!9373) (not b!9371) (not b!9361) (not mapNonEmpty!665) (not d!919) (not b!9459) (not bm!240) (not b!9462) (not b!9397) (not b!9389) (not bm!255) (not d!913) (not b_lambda!349) (not b!9377) (not b!9347) (not bm!236) (not b!9384) (not d!917) (not bm!239) tp_is_empty!453 (not b!9399))
(check-sat b_and!531 (not b_next!375))
