; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!22938 () Bool)

(assert start!22938)

(declare-fun b!239209 () Bool)

(declare-fun b_free!6429 () Bool)

(declare-fun b_next!6429 () Bool)

(assert (=> b!239209 (= b_free!6429 (not b_next!6429))))

(declare-fun tp!22491 () Bool)

(declare-fun b_and!13413 () Bool)

(assert (=> b!239209 (= tp!22491 b_and!13413)))

(declare-fun b!239196 () Bool)

(declare-fun e!155320 () Bool)

(declare-fun e!155322 () Bool)

(assert (=> b!239196 (= e!155320 e!155322)))

(declare-fun res!117242 () Bool)

(assert (=> b!239196 (=> (not res!117242) (not e!155322))))

(declare-fun index!297 () (_ BitVec 32))

(declare-datatypes ((V!8035 0))(
  ( (V!8036 (val!3190 Int)) )
))
(declare-datatypes ((ValueCell!2802 0))(
  ( (ValueCellFull!2802 (v!5224 V!8035)) (EmptyCell!2802) )
))
(declare-datatypes ((array!11860 0))(
  ( (array!11861 (arr!5631 (Array (_ BitVec 32) ValueCell!2802)) (size!5972 (_ BitVec 32))) )
))
(declare-datatypes ((array!11862 0))(
  ( (array!11863 (arr!5632 (Array (_ BitVec 32) (_ BitVec 64))) (size!5973 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3504 0))(
  ( (LongMapFixedSize!3505 (defaultEntry!4437 Int) (mask!10481 (_ BitVec 32)) (extraKeys!4174 (_ BitVec 32)) (zeroValue!4278 V!8035) (minValue!4278 V!8035) (_size!1801 (_ BitVec 32)) (_keys!6539 array!11862) (_values!4420 array!11860) (_vacant!1801 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3504)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!239196 (= res!117242 (inRange!0 index!297 (mask!10481 thiss!1504)))))

(declare-datatypes ((Unit!7341 0))(
  ( (Unit!7342) )
))
(declare-fun lt!120773 () Unit!7341)

(declare-fun e!155314 () Unit!7341)

(assert (=> b!239196 (= lt!120773 e!155314)))

(declare-fun c!39864 () Bool)

(declare-fun key!932 () (_ BitVec 64))

(declare-datatypes ((tuple2!4698 0))(
  ( (tuple2!4699 (_1!2359 (_ BitVec 64)) (_2!2359 V!8035)) )
))
(declare-datatypes ((List!3613 0))(
  ( (Nil!3610) (Cons!3609 (h!4265 tuple2!4698) (t!8616 List!3613)) )
))
(declare-datatypes ((ListLongMap!3625 0))(
  ( (ListLongMap!3626 (toList!1828 List!3613)) )
))
(declare-fun contains!1710 (ListLongMap!3625 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1351 (array!11862 array!11860 (_ BitVec 32) (_ BitVec 32) V!8035 V!8035 (_ BitVec 32) Int) ListLongMap!3625)

(assert (=> b!239196 (= c!39864 (contains!1710 (getCurrentListMap!1351 (_keys!6539 thiss!1504) (_values!4420 thiss!1504) (mask!10481 thiss!1504) (extraKeys!4174 thiss!1504) (zeroValue!4278 thiss!1504) (minValue!4278 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4437 thiss!1504)) key!932))))

(declare-fun b!239197 () Bool)

(declare-fun Unit!7343 () Unit!7341)

(assert (=> b!239197 (= e!155314 Unit!7343)))

(declare-fun lt!120774 () Unit!7341)

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!325 (array!11862 array!11860 (_ BitVec 32) (_ BitVec 32) V!8035 V!8035 (_ BitVec 64) Int) Unit!7341)

(assert (=> b!239197 (= lt!120774 (lemmaInListMapThenSeekEntryOrOpenFindsIt!325 (_keys!6539 thiss!1504) (_values!4420 thiss!1504) (mask!10481 thiss!1504) (extraKeys!4174 thiss!1504) (zeroValue!4278 thiss!1504) (minValue!4278 thiss!1504) key!932 (defaultEntry!4437 thiss!1504)))))

(assert (=> b!239197 false))

(declare-fun b!239198 () Bool)

(declare-fun res!117244 () Bool)

(declare-datatypes ((SeekEntryResult!1040 0))(
  ( (MissingZero!1040 (index!6330 (_ BitVec 32))) (Found!1040 (index!6331 (_ BitVec 32))) (Intermediate!1040 (undefined!1852 Bool) (index!6332 (_ BitVec 32)) (x!24104 (_ BitVec 32))) (Undefined!1040) (MissingVacant!1040 (index!6333 (_ BitVec 32))) )
))
(declare-fun lt!120775 () SeekEntryResult!1040)

(assert (=> b!239198 (= res!117244 (= (select (arr!5632 (_keys!6539 thiss!1504)) (index!6333 lt!120775)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!155316 () Bool)

(assert (=> b!239198 (=> (not res!117244) (not e!155316))))

(declare-fun mapNonEmpty!10668 () Bool)

(declare-fun mapRes!10668 () Bool)

(declare-fun tp!22490 () Bool)

(declare-fun e!155323 () Bool)

(assert (=> mapNonEmpty!10668 (= mapRes!10668 (and tp!22490 e!155323))))

(declare-fun mapValue!10668 () ValueCell!2802)

(declare-fun mapKey!10668 () (_ BitVec 32))

(declare-fun mapRest!10668 () (Array (_ BitVec 32) ValueCell!2802))

(assert (=> mapNonEmpty!10668 (= (arr!5631 (_values!4420 thiss!1504)) (store mapRest!10668 mapKey!10668 mapValue!10668))))

(declare-fun b!239199 () Bool)

(declare-fun e!155319 () Bool)

(declare-fun tp_is_empty!6291 () Bool)

(assert (=> b!239199 (= e!155319 tp_is_empty!6291)))

(declare-fun b!239200 () Bool)

(assert (=> b!239200 (= e!155323 tp_is_empty!6291)))

(declare-fun b!239201 () Bool)

(declare-fun e!155313 () Bool)

(assert (=> b!239201 (= e!155313 (and e!155319 mapRes!10668))))

(declare-fun condMapEmpty!10668 () Bool)

(declare-fun mapDefault!10668 () ValueCell!2802)

(assert (=> b!239201 (= condMapEmpty!10668 (= (arr!5631 (_values!4420 thiss!1504)) ((as const (Array (_ BitVec 32) ValueCell!2802)) mapDefault!10668)))))

(declare-fun b!239202 () Bool)

(assert (=> b!239202 (= e!155322 (and (= (size!5972 (_values!4420 thiss!1504)) (bvadd #b00000000000000000000000000000001 (mask!10481 thiss!1504))) (= (size!5973 (_keys!6539 thiss!1504)) (size!5972 (_values!4420 thiss!1504))) (bvslt (mask!10481 thiss!1504) #b00000000000000000000000000000000)))))

(declare-fun c!39865 () Bool)

(declare-fun bm!22242 () Bool)

(declare-fun call!22245 () Bool)

(assert (=> bm!22242 (= call!22245 (inRange!0 (ite c!39865 (index!6330 lt!120775) (index!6333 lt!120775)) (mask!10481 thiss!1504)))))

(declare-fun b!239203 () Bool)

(declare-fun res!117248 () Bool)

(declare-fun e!155315 () Bool)

(assert (=> b!239203 (=> (not res!117248) (not e!155315))))

(assert (=> b!239203 (= res!117248 call!22245)))

(declare-fun e!155312 () Bool)

(assert (=> b!239203 (= e!155312 e!155315)))

(declare-fun b!239204 () Bool)

(declare-fun lt!120772 () Unit!7341)

(assert (=> b!239204 (= e!155314 lt!120772)))

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!339 (array!11862 array!11860 (_ BitVec 32) (_ BitVec 32) V!8035 V!8035 (_ BitVec 64) Int) Unit!7341)

(assert (=> b!239204 (= lt!120772 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!339 (_keys!6539 thiss!1504) (_values!4420 thiss!1504) (mask!10481 thiss!1504) (extraKeys!4174 thiss!1504) (zeroValue!4278 thiss!1504) (minValue!4278 thiss!1504) key!932 (defaultEntry!4437 thiss!1504)))))

(get-info :version)

(assert (=> b!239204 (= c!39865 ((_ is MissingZero!1040) lt!120775))))

(assert (=> b!239204 e!155312))

(declare-fun res!117249 () Bool)

(declare-fun e!155321 () Bool)

(assert (=> start!22938 (=> (not res!117249) (not e!155321))))

(declare-fun valid!1374 (LongMapFixedSize!3504) Bool)

(assert (=> start!22938 (= res!117249 (valid!1374 thiss!1504))))

(assert (=> start!22938 e!155321))

(declare-fun e!155324 () Bool)

(assert (=> start!22938 e!155324))

(assert (=> start!22938 true))

(declare-fun b!239205 () Bool)

(declare-fun c!39863 () Bool)

(assert (=> b!239205 (= c!39863 ((_ is MissingVacant!1040) lt!120775))))

(declare-fun e!155318 () Bool)

(assert (=> b!239205 (= e!155312 e!155318)))

(declare-fun bm!22243 () Bool)

(declare-fun call!22246 () Bool)

(declare-fun arrayContainsKey!0 (array!11862 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> bm!22243 (= call!22246 (arrayContainsKey!0 (_keys!6539 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun mapIsEmpty!10668 () Bool)

(assert (=> mapIsEmpty!10668 mapRes!10668))

(declare-fun b!239206 () Bool)

(declare-fun res!117243 () Bool)

(assert (=> b!239206 (=> (not res!117243) (not e!155315))))

(assert (=> b!239206 (= res!117243 (= (select (arr!5632 (_keys!6539 thiss!1504)) (index!6330 lt!120775)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!239207 () Bool)

(assert (=> b!239207 (= e!155315 (not call!22246))))

(declare-fun b!239208 () Bool)

(declare-fun res!117245 () Bool)

(assert (=> b!239208 (=> (not res!117245) (not e!155322))))

(assert (=> b!239208 (= res!117245 (arrayContainsKey!0 (_keys!6539 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun array_inv!3717 (array!11862) Bool)

(declare-fun array_inv!3718 (array!11860) Bool)

(assert (=> b!239209 (= e!155324 (and tp!22491 tp_is_empty!6291 (array_inv!3717 (_keys!6539 thiss!1504)) (array_inv!3718 (_values!4420 thiss!1504)) e!155313))))

(declare-fun b!239210 () Bool)

(declare-fun res!117247 () Bool)

(assert (=> b!239210 (=> (not res!117247) (not e!155321))))

(assert (=> b!239210 (= res!117247 (and (not (= key!932 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!932 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!239211 () Bool)

(assert (=> b!239211 (= e!155318 e!155316)))

(declare-fun res!117246 () Bool)

(assert (=> b!239211 (= res!117246 call!22245)))

(assert (=> b!239211 (=> (not res!117246) (not e!155316))))

(declare-fun b!239212 () Bool)

(assert (=> b!239212 (= e!155321 e!155320)))

(declare-fun res!117251 () Bool)

(assert (=> b!239212 (=> (not res!117251) (not e!155320))))

(assert (=> b!239212 (= res!117251 (or (= lt!120775 (MissingZero!1040 index!297)) (= lt!120775 (MissingVacant!1040 index!297))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!11862 (_ BitVec 32)) SeekEntryResult!1040)

(assert (=> b!239212 (= lt!120775 (seekEntryOrOpen!0 key!932 (_keys!6539 thiss!1504) (mask!10481 thiss!1504)))))

(declare-fun b!239213 () Bool)

(assert (=> b!239213 (= e!155316 (not call!22246))))

(declare-fun b!239214 () Bool)

(declare-fun res!117250 () Bool)

(assert (=> b!239214 (=> (not res!117250) (not e!155322))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!239214 (= res!117250 (validMask!0 (mask!10481 thiss!1504)))))

(declare-fun b!239215 () Bool)

(assert (=> b!239215 (= e!155318 ((_ is Undefined!1040) lt!120775))))

(assert (= (and start!22938 res!117249) b!239210))

(assert (= (and b!239210 res!117247) b!239212))

(assert (= (and b!239212 res!117251) b!239196))

(assert (= (and b!239196 c!39864) b!239197))

(assert (= (and b!239196 (not c!39864)) b!239204))

(assert (= (and b!239204 c!39865) b!239203))

(assert (= (and b!239204 (not c!39865)) b!239205))

(assert (= (and b!239203 res!117248) b!239206))

(assert (= (and b!239206 res!117243) b!239207))

(assert (= (and b!239205 c!39863) b!239211))

(assert (= (and b!239205 (not c!39863)) b!239215))

(assert (= (and b!239211 res!117246) b!239198))

(assert (= (and b!239198 res!117244) b!239213))

(assert (= (or b!239203 b!239211) bm!22242))

(assert (= (or b!239207 b!239213) bm!22243))

(assert (= (and b!239196 res!117242) b!239208))

(assert (= (and b!239208 res!117245) b!239214))

(assert (= (and b!239214 res!117250) b!239202))

(assert (= (and b!239201 condMapEmpty!10668) mapIsEmpty!10668))

(assert (= (and b!239201 (not condMapEmpty!10668)) mapNonEmpty!10668))

(assert (= (and mapNonEmpty!10668 ((_ is ValueCellFull!2802) mapValue!10668)) b!239200))

(assert (= (and b!239201 ((_ is ValueCellFull!2802) mapDefault!10668)) b!239199))

(assert (= b!239209 b!239201))

(assert (= start!22938 b!239209))

(declare-fun m!259387 () Bool)

(assert (=> b!239214 m!259387))

(declare-fun m!259389 () Bool)

(assert (=> b!239206 m!259389))

(declare-fun m!259391 () Bool)

(assert (=> b!239196 m!259391))

(declare-fun m!259393 () Bool)

(assert (=> b!239196 m!259393))

(assert (=> b!239196 m!259393))

(declare-fun m!259395 () Bool)

(assert (=> b!239196 m!259395))

(declare-fun m!259397 () Bool)

(assert (=> bm!22242 m!259397))

(declare-fun m!259399 () Bool)

(assert (=> mapNonEmpty!10668 m!259399))

(declare-fun m!259401 () Bool)

(assert (=> b!239197 m!259401))

(declare-fun m!259403 () Bool)

(assert (=> b!239208 m!259403))

(declare-fun m!259405 () Bool)

(assert (=> b!239204 m!259405))

(declare-fun m!259407 () Bool)

(assert (=> b!239209 m!259407))

(declare-fun m!259409 () Bool)

(assert (=> b!239209 m!259409))

(declare-fun m!259411 () Bool)

(assert (=> b!239198 m!259411))

(declare-fun m!259413 () Bool)

(assert (=> start!22938 m!259413))

(declare-fun m!259415 () Bool)

(assert (=> b!239212 m!259415))

(assert (=> bm!22243 m!259403))

(check-sat (not mapNonEmpty!10668) (not b!239208) b_and!13413 (not b!239197) (not b!239209) (not b!239204) (not start!22938) (not bm!22243) (not b_next!6429) (not bm!22242) (not b!239212) (not b!239196) tp_is_empty!6291 (not b!239214))
(check-sat b_and!13413 (not b_next!6429))
