; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!18420 () Bool)

(assert start!18420)

(declare-fun b!182553 () Bool)

(declare-fun b_free!4503 () Bool)

(declare-fun b_next!4503 () Bool)

(assert (=> b!182553 (= b_free!4503 (not b_next!4503))))

(declare-fun tp!16271 () Bool)

(declare-fun b_and!11085 () Bool)

(assert (=> b!182553 (= tp!16271 b_and!11085)))

(declare-fun b!182544 () Bool)

(declare-fun e!120206 () Bool)

(declare-datatypes ((V!5347 0))(
  ( (V!5348 (val!2182 Int)) )
))
(declare-datatypes ((ValueCell!1794 0))(
  ( (ValueCellFull!1794 (v!4078 V!5347)) (EmptyCell!1794) )
))
(declare-datatypes ((array!7736 0))(
  ( (array!7737 (arr!3658 (Array (_ BitVec 32) (_ BitVec 64))) (size!3970 (_ BitVec 32))) )
))
(declare-datatypes ((array!7738 0))(
  ( (array!7739 (arr!3659 (Array (_ BitVec 32) ValueCell!1794)) (size!3971 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2496 0))(
  ( (LongMapFixedSize!2497 (defaultEntry!3735 Int) (mask!8781 (_ BitVec 32)) (extraKeys!3472 (_ BitVec 32)) (zeroValue!3576 V!5347) (minValue!3576 V!5347) (_size!1297 (_ BitVec 32)) (_keys!5648 array!7736) (_values!3718 array!7738) (_vacant!1297 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!2496)

(declare-datatypes ((List!2338 0))(
  ( (Nil!2335) (Cons!2334 (h!2963 (_ BitVec 64)) (t!7208 List!2338)) )
))
(declare-fun arrayNoDuplicates!0 (array!7736 (_ BitVec 32) List!2338) Bool)

(assert (=> b!182544 (= e!120206 (not (arrayNoDuplicates!0 (_keys!5648 thiss!1248) #b00000000000000000000000000000000 Nil!2335)))))

(declare-fun b!182545 () Bool)

(declare-fun res!86409 () Bool)

(declare-fun e!120211 () Bool)

(assert (=> b!182545 (=> (not res!86409) (not e!120211))))

(declare-fun key!828 () (_ BitVec 64))

(assert (=> b!182545 (= res!86409 (not (= key!828 (bvneg key!828))))))

(declare-fun mapIsEmpty!7337 () Bool)

(declare-fun mapRes!7337 () Bool)

(assert (=> mapIsEmpty!7337 mapRes!7337))

(declare-fun b!182546 () Bool)

(declare-fun res!86406 () Bool)

(assert (=> b!182546 (=> (not res!86406) (not e!120206))))

(assert (=> b!182546 (= res!86406 (and (= (size!3971 (_values!3718 thiss!1248)) (bvadd #b00000000000000000000000000000001 (mask!8781 thiss!1248))) (= (size!3970 (_keys!5648 thiss!1248)) (size!3971 (_values!3718 thiss!1248))) (bvsge (mask!8781 thiss!1248) #b00000000000000000000000000000000) (bvsge (extraKeys!3472 thiss!1248) #b00000000000000000000000000000000) (bvsle (extraKeys!3472 thiss!1248) #b00000000000000000000000000000011)))))

(declare-fun b!182547 () Bool)

(declare-fun e!120207 () Bool)

(declare-fun tp_is_empty!4275 () Bool)

(assert (=> b!182547 (= e!120207 tp_is_empty!4275)))

(declare-fun b!182548 () Bool)

(declare-fun res!86408 () Bool)

(assert (=> b!182548 (=> (not res!86408) (not e!120206))))

(declare-datatypes ((tuple2!3396 0))(
  ( (tuple2!3397 (_1!1708 (_ BitVec 64)) (_2!1708 V!5347)) )
))
(declare-datatypes ((List!2339 0))(
  ( (Nil!2336) (Cons!2335 (h!2964 tuple2!3396) (t!7209 List!2339)) )
))
(declare-datatypes ((ListLongMap!2327 0))(
  ( (ListLongMap!2328 (toList!1179 List!2339)) )
))
(declare-fun contains!1257 (ListLongMap!2327 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!822 (array!7736 array!7738 (_ BitVec 32) (_ BitVec 32) V!5347 V!5347 (_ BitVec 32) Int) ListLongMap!2327)

(assert (=> b!182548 (= res!86408 (contains!1257 (getCurrentListMap!822 (_keys!5648 thiss!1248) (_values!3718 thiss!1248) (mask!8781 thiss!1248) (extraKeys!3472 thiss!1248) (zeroValue!3576 thiss!1248) (minValue!3576 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3735 thiss!1248)) key!828))))

(declare-fun b!182549 () Bool)

(declare-fun res!86407 () Bool)

(assert (=> b!182549 (=> (not res!86407) (not e!120206))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!7736 (_ BitVec 32)) Bool)

(assert (=> b!182549 (= res!86407 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!5648 thiss!1248) (mask!8781 thiss!1248)))))

(declare-fun mapNonEmpty!7337 () Bool)

(declare-fun tp!16270 () Bool)

(assert (=> mapNonEmpty!7337 (= mapRes!7337 (and tp!16270 e!120207))))

(declare-fun mapKey!7337 () (_ BitVec 32))

(declare-fun mapRest!7337 () (Array (_ BitVec 32) ValueCell!1794))

(declare-fun mapValue!7337 () ValueCell!1794)

(assert (=> mapNonEmpty!7337 (= (arr!3659 (_values!3718 thiss!1248)) (store mapRest!7337 mapKey!7337 mapValue!7337))))

(declare-fun b!182550 () Bool)

(declare-fun e!120209 () Bool)

(assert (=> b!182550 (= e!120209 tp_is_empty!4275)))

(declare-fun res!86412 () Bool)

(assert (=> start!18420 (=> (not res!86412) (not e!120211))))

(declare-fun valid!1026 (LongMapFixedSize!2496) Bool)

(assert (=> start!18420 (= res!86412 (valid!1026 thiss!1248))))

(assert (=> start!18420 e!120211))

(declare-fun e!120210 () Bool)

(assert (=> start!18420 e!120210))

(assert (=> start!18420 true))

(declare-fun b!182551 () Bool)

(declare-fun e!120205 () Bool)

(assert (=> b!182551 (= e!120205 (and e!120209 mapRes!7337))))

(declare-fun condMapEmpty!7337 () Bool)

(declare-fun mapDefault!7337 () ValueCell!1794)

(assert (=> b!182551 (= condMapEmpty!7337 (= (arr!3659 (_values!3718 thiss!1248)) ((as const (Array (_ BitVec 32) ValueCell!1794)) mapDefault!7337)))))

(declare-fun b!182552 () Bool)

(declare-fun res!86410 () Bool)

(assert (=> b!182552 (=> (not res!86410) (not e!120206))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!182552 (= res!86410 (validMask!0 (mask!8781 thiss!1248)))))

(declare-fun array_inv!2351 (array!7736) Bool)

(declare-fun array_inv!2352 (array!7738) Bool)

(assert (=> b!182553 (= e!120210 (and tp!16271 tp_is_empty!4275 (array_inv!2351 (_keys!5648 thiss!1248)) (array_inv!2352 (_values!3718 thiss!1248)) e!120205))))

(declare-fun b!182554 () Bool)

(assert (=> b!182554 (= e!120211 e!120206)))

(declare-fun res!86411 () Bool)

(assert (=> b!182554 (=> (not res!86411) (not e!120206))))

(declare-datatypes ((SeekEntryResult!618 0))(
  ( (MissingZero!618 (index!4642 (_ BitVec 32))) (Found!618 (index!4643 (_ BitVec 32))) (Intermediate!618 (undefined!1430 Bool) (index!4644 (_ BitVec 32)) (x!19910 (_ BitVec 32))) (Undefined!618) (MissingVacant!618 (index!4645 (_ BitVec 32))) )
))
(declare-fun lt!90320 () SeekEntryResult!618)

(get-info :version)

(assert (=> b!182554 (= res!86411 (and (not ((_ is Undefined!618) lt!90320)) (not ((_ is MissingVacant!618) lt!90320)) (not ((_ is MissingZero!618) lt!90320)) ((_ is Found!618) lt!90320)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!7736 (_ BitVec 32)) SeekEntryResult!618)

(assert (=> b!182554 (= lt!90320 (seekEntryOrOpen!0 key!828 (_keys!5648 thiss!1248) (mask!8781 thiss!1248)))))

(assert (= (and start!18420 res!86412) b!182545))

(assert (= (and b!182545 res!86409) b!182554))

(assert (= (and b!182554 res!86411) b!182548))

(assert (= (and b!182548 res!86408) b!182552))

(assert (= (and b!182552 res!86410) b!182546))

(assert (= (and b!182546 res!86406) b!182549))

(assert (= (and b!182549 res!86407) b!182544))

(assert (= (and b!182551 condMapEmpty!7337) mapIsEmpty!7337))

(assert (= (and b!182551 (not condMapEmpty!7337)) mapNonEmpty!7337))

(assert (= (and mapNonEmpty!7337 ((_ is ValueCellFull!1794) mapValue!7337)) b!182547))

(assert (= (and b!182551 ((_ is ValueCellFull!1794) mapDefault!7337)) b!182550))

(assert (= b!182553 b!182551))

(assert (= start!18420 b!182553))

(declare-fun m!210309 () Bool)

(assert (=> b!182554 m!210309))

(declare-fun m!210311 () Bool)

(assert (=> b!182544 m!210311))

(declare-fun m!210313 () Bool)

(assert (=> b!182552 m!210313))

(declare-fun m!210315 () Bool)

(assert (=> start!18420 m!210315))

(declare-fun m!210317 () Bool)

(assert (=> b!182548 m!210317))

(assert (=> b!182548 m!210317))

(declare-fun m!210319 () Bool)

(assert (=> b!182548 m!210319))

(declare-fun m!210321 () Bool)

(assert (=> mapNonEmpty!7337 m!210321))

(declare-fun m!210323 () Bool)

(assert (=> b!182549 m!210323))

(declare-fun m!210325 () Bool)

(assert (=> b!182553 m!210325))

(declare-fun m!210327 () Bool)

(assert (=> b!182553 m!210327))

(check-sat (not start!18420) (not b!182553) (not b_next!4503) (not b!182548) tp_is_empty!4275 (not b!182549) (not b!182552) b_and!11085 (not b!182544) (not mapNonEmpty!7337) (not b!182554))
(check-sat b_and!11085 (not b_next!4503))
(get-model)

(declare-fun d!54559 () Bool)

(declare-fun res!86440 () Bool)

(declare-fun e!120235 () Bool)

(assert (=> d!54559 (=> (not res!86440) (not e!120235))))

(declare-fun simpleValid!171 (LongMapFixedSize!2496) Bool)

(assert (=> d!54559 (= res!86440 (simpleValid!171 thiss!1248))))

(assert (=> d!54559 (= (valid!1026 thiss!1248) e!120235)))

(declare-fun b!182594 () Bool)

(declare-fun res!86441 () Bool)

(assert (=> b!182594 (=> (not res!86441) (not e!120235))))

(declare-fun arrayCountValidKeys!0 (array!7736 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!182594 (= res!86441 (= (arrayCountValidKeys!0 (_keys!5648 thiss!1248) #b00000000000000000000000000000000 (size!3970 (_keys!5648 thiss!1248))) (_size!1297 thiss!1248)))))

(declare-fun b!182595 () Bool)

(declare-fun res!86442 () Bool)

(assert (=> b!182595 (=> (not res!86442) (not e!120235))))

(assert (=> b!182595 (= res!86442 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!5648 thiss!1248) (mask!8781 thiss!1248)))))

(declare-fun b!182596 () Bool)

(assert (=> b!182596 (= e!120235 (arrayNoDuplicates!0 (_keys!5648 thiss!1248) #b00000000000000000000000000000000 Nil!2335))))

(assert (= (and d!54559 res!86440) b!182594))

(assert (= (and b!182594 res!86441) b!182595))

(assert (= (and b!182595 res!86442) b!182596))

(declare-fun m!210349 () Bool)

(assert (=> d!54559 m!210349))

(declare-fun m!210351 () Bool)

(assert (=> b!182594 m!210351))

(assert (=> b!182595 m!210323))

(assert (=> b!182596 m!210311))

(assert (=> start!18420 d!54559))

(declare-fun b!182609 () Bool)

(declare-fun e!120243 () SeekEntryResult!618)

(declare-fun e!120244 () SeekEntryResult!618)

(assert (=> b!182609 (= e!120243 e!120244)))

(declare-fun lt!90332 () (_ BitVec 64))

(declare-fun lt!90330 () SeekEntryResult!618)

(assert (=> b!182609 (= lt!90332 (select (arr!3658 (_keys!5648 thiss!1248)) (index!4644 lt!90330)))))

(declare-fun c!32735 () Bool)

(assert (=> b!182609 (= c!32735 (= lt!90332 key!828))))

(declare-fun b!182610 () Bool)

(declare-fun c!32733 () Bool)

(assert (=> b!182610 (= c!32733 (= lt!90332 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!120242 () SeekEntryResult!618)

(assert (=> b!182610 (= e!120244 e!120242)))

(declare-fun b!182611 () Bool)

(assert (=> b!182611 (= e!120242 (MissingZero!618 (index!4644 lt!90330)))))

(declare-fun b!182612 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!7736 (_ BitVec 32)) SeekEntryResult!618)

(assert (=> b!182612 (= e!120242 (seekKeyOrZeroReturnVacant!0 (x!19910 lt!90330) (index!4644 lt!90330) (index!4644 lt!90330) key!828 (_keys!5648 thiss!1248) (mask!8781 thiss!1248)))))

(declare-fun b!182613 () Bool)

(assert (=> b!182613 (= e!120244 (Found!618 (index!4644 lt!90330)))))

(declare-fun b!182614 () Bool)

(assert (=> b!182614 (= e!120243 Undefined!618)))

(declare-fun d!54561 () Bool)

(declare-fun lt!90331 () SeekEntryResult!618)

(assert (=> d!54561 (and (or ((_ is Undefined!618) lt!90331) (not ((_ is Found!618) lt!90331)) (and (bvsge (index!4643 lt!90331) #b00000000000000000000000000000000) (bvslt (index!4643 lt!90331) (size!3970 (_keys!5648 thiss!1248))))) (or ((_ is Undefined!618) lt!90331) ((_ is Found!618) lt!90331) (not ((_ is MissingZero!618) lt!90331)) (and (bvsge (index!4642 lt!90331) #b00000000000000000000000000000000) (bvslt (index!4642 lt!90331) (size!3970 (_keys!5648 thiss!1248))))) (or ((_ is Undefined!618) lt!90331) ((_ is Found!618) lt!90331) ((_ is MissingZero!618) lt!90331) (not ((_ is MissingVacant!618) lt!90331)) (and (bvsge (index!4645 lt!90331) #b00000000000000000000000000000000) (bvslt (index!4645 lt!90331) (size!3970 (_keys!5648 thiss!1248))))) (or ((_ is Undefined!618) lt!90331) (ite ((_ is Found!618) lt!90331) (= (select (arr!3658 (_keys!5648 thiss!1248)) (index!4643 lt!90331)) key!828) (ite ((_ is MissingZero!618) lt!90331) (= (select (arr!3658 (_keys!5648 thiss!1248)) (index!4642 lt!90331)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!618) lt!90331) (= (select (arr!3658 (_keys!5648 thiss!1248)) (index!4645 lt!90331)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!54561 (= lt!90331 e!120243)))

(declare-fun c!32734 () Bool)

(assert (=> d!54561 (= c!32734 (and ((_ is Intermediate!618) lt!90330) (undefined!1430 lt!90330)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!7736 (_ BitVec 32)) SeekEntryResult!618)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!54561 (= lt!90330 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 key!828 (mask!8781 thiss!1248)) key!828 (_keys!5648 thiss!1248) (mask!8781 thiss!1248)))))

(assert (=> d!54561 (validMask!0 (mask!8781 thiss!1248))))

(assert (=> d!54561 (= (seekEntryOrOpen!0 key!828 (_keys!5648 thiss!1248) (mask!8781 thiss!1248)) lt!90331)))

(assert (= (and d!54561 c!32734) b!182614))

(assert (= (and d!54561 (not c!32734)) b!182609))

(assert (= (and b!182609 c!32735) b!182613))

(assert (= (and b!182609 (not c!32735)) b!182610))

(assert (= (and b!182610 c!32733) b!182611))

(assert (= (and b!182610 (not c!32733)) b!182612))

(declare-fun m!210353 () Bool)

(assert (=> b!182609 m!210353))

(declare-fun m!210355 () Bool)

(assert (=> b!182612 m!210355))

(declare-fun m!210357 () Bool)

(assert (=> d!54561 m!210357))

(assert (=> d!54561 m!210313))

(declare-fun m!210359 () Bool)

(assert (=> d!54561 m!210359))

(declare-fun m!210361 () Bool)

(assert (=> d!54561 m!210361))

(declare-fun m!210363 () Bool)

(assert (=> d!54561 m!210363))

(assert (=> d!54561 m!210359))

(declare-fun m!210365 () Bool)

(assert (=> d!54561 m!210365))

(assert (=> b!182554 d!54561))

(declare-fun d!54563 () Bool)

(declare-fun res!86449 () Bool)

(declare-fun e!120256 () Bool)

(assert (=> d!54563 (=> res!86449 e!120256)))

(assert (=> d!54563 (= res!86449 (bvsge #b00000000000000000000000000000000 (size!3970 (_keys!5648 thiss!1248))))))

(assert (=> d!54563 (= (arrayNoDuplicates!0 (_keys!5648 thiss!1248) #b00000000000000000000000000000000 Nil!2335) e!120256)))

(declare-fun bm!18431 () Bool)

(declare-fun call!18434 () Bool)

(declare-fun c!32738 () Bool)

(assert (=> bm!18431 (= call!18434 (arrayNoDuplicates!0 (_keys!5648 thiss!1248) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!32738 (Cons!2334 (select (arr!3658 (_keys!5648 thiss!1248)) #b00000000000000000000000000000000) Nil!2335) Nil!2335)))))

(declare-fun b!182625 () Bool)

(declare-fun e!120253 () Bool)

(assert (=> b!182625 (= e!120253 call!18434)))

(declare-fun b!182626 () Bool)

(declare-fun e!120254 () Bool)

(assert (=> b!182626 (= e!120256 e!120254)))

(declare-fun res!86450 () Bool)

(assert (=> b!182626 (=> (not res!86450) (not e!120254))))

(declare-fun e!120255 () Bool)

(assert (=> b!182626 (= res!86450 (not e!120255))))

(declare-fun res!86451 () Bool)

(assert (=> b!182626 (=> (not res!86451) (not e!120255))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!182626 (= res!86451 (validKeyInArray!0 (select (arr!3658 (_keys!5648 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun b!182627 () Bool)

(assert (=> b!182627 (= e!120254 e!120253)))

(assert (=> b!182627 (= c!32738 (validKeyInArray!0 (select (arr!3658 (_keys!5648 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun b!182628 () Bool)

(assert (=> b!182628 (= e!120253 call!18434)))

(declare-fun b!182629 () Bool)

(declare-fun contains!1259 (List!2338 (_ BitVec 64)) Bool)

(assert (=> b!182629 (= e!120255 (contains!1259 Nil!2335 (select (arr!3658 (_keys!5648 thiss!1248)) #b00000000000000000000000000000000)))))

(assert (= (and d!54563 (not res!86449)) b!182626))

(assert (= (and b!182626 res!86451) b!182629))

(assert (= (and b!182626 res!86450) b!182627))

(assert (= (and b!182627 c!32738) b!182628))

(assert (= (and b!182627 (not c!32738)) b!182625))

(assert (= (or b!182628 b!182625) bm!18431))

(declare-fun m!210367 () Bool)

(assert (=> bm!18431 m!210367))

(declare-fun m!210369 () Bool)

(assert (=> bm!18431 m!210369))

(assert (=> b!182626 m!210367))

(assert (=> b!182626 m!210367))

(declare-fun m!210371 () Bool)

(assert (=> b!182626 m!210371))

(assert (=> b!182627 m!210367))

(assert (=> b!182627 m!210367))

(assert (=> b!182627 m!210371))

(assert (=> b!182629 m!210367))

(assert (=> b!182629 m!210367))

(declare-fun m!210373 () Bool)

(assert (=> b!182629 m!210373))

(assert (=> b!182544 d!54563))

(declare-fun d!54565 () Bool)

(assert (=> d!54565 (= (array_inv!2351 (_keys!5648 thiss!1248)) (bvsge (size!3970 (_keys!5648 thiss!1248)) #b00000000000000000000000000000000))))

(assert (=> b!182553 d!54565))

(declare-fun d!54567 () Bool)

(assert (=> d!54567 (= (array_inv!2352 (_values!3718 thiss!1248)) (bvsge (size!3971 (_values!3718 thiss!1248)) #b00000000000000000000000000000000))))

(assert (=> b!182553 d!54567))

(declare-fun b!182638 () Bool)

(declare-fun e!120263 () Bool)

(declare-fun e!120264 () Bool)

(assert (=> b!182638 (= e!120263 e!120264)))

(declare-fun lt!90340 () (_ BitVec 64))

(assert (=> b!182638 (= lt!90340 (select (arr!3658 (_keys!5648 thiss!1248)) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!5533 0))(
  ( (Unit!5534) )
))
(declare-fun lt!90341 () Unit!5533)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!7736 (_ BitVec 64) (_ BitVec 32)) Unit!5533)

(assert (=> b!182638 (= lt!90341 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!5648 thiss!1248) lt!90340 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!7736 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!182638 (arrayContainsKey!0 (_keys!5648 thiss!1248) lt!90340 #b00000000000000000000000000000000)))

(declare-fun lt!90339 () Unit!5533)

(assert (=> b!182638 (= lt!90339 lt!90341)))

(declare-fun res!86457 () Bool)

(assert (=> b!182638 (= res!86457 (= (seekEntryOrOpen!0 (select (arr!3658 (_keys!5648 thiss!1248)) #b00000000000000000000000000000000) (_keys!5648 thiss!1248) (mask!8781 thiss!1248)) (Found!618 #b00000000000000000000000000000000)))))

(assert (=> b!182638 (=> (not res!86457) (not e!120264))))

(declare-fun b!182639 () Bool)

(declare-fun call!18437 () Bool)

(assert (=> b!182639 (= e!120263 call!18437)))

(declare-fun b!182640 () Bool)

(declare-fun e!120265 () Bool)

(assert (=> b!182640 (= e!120265 e!120263)))

(declare-fun c!32741 () Bool)

(assert (=> b!182640 (= c!32741 (validKeyInArray!0 (select (arr!3658 (_keys!5648 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun bm!18434 () Bool)

(assert (=> bm!18434 (= call!18437 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (_keys!5648 thiss!1248) (mask!8781 thiss!1248)))))

(declare-fun d!54569 () Bool)

(declare-fun res!86456 () Bool)

(assert (=> d!54569 (=> res!86456 e!120265)))

(assert (=> d!54569 (= res!86456 (bvsge #b00000000000000000000000000000000 (size!3970 (_keys!5648 thiss!1248))))))

(assert (=> d!54569 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!5648 thiss!1248) (mask!8781 thiss!1248)) e!120265)))

(declare-fun b!182641 () Bool)

(assert (=> b!182641 (= e!120264 call!18437)))

(assert (= (and d!54569 (not res!86456)) b!182640))

(assert (= (and b!182640 c!32741) b!182638))

(assert (= (and b!182640 (not c!32741)) b!182639))

(assert (= (and b!182638 res!86457) b!182641))

(assert (= (or b!182641 b!182639) bm!18434))

(assert (=> b!182638 m!210367))

(declare-fun m!210375 () Bool)

(assert (=> b!182638 m!210375))

(declare-fun m!210377 () Bool)

(assert (=> b!182638 m!210377))

(assert (=> b!182638 m!210367))

(declare-fun m!210379 () Bool)

(assert (=> b!182638 m!210379))

(assert (=> b!182640 m!210367))

(assert (=> b!182640 m!210367))

(assert (=> b!182640 m!210371))

(declare-fun m!210381 () Bool)

(assert (=> bm!18434 m!210381))

(assert (=> b!182549 d!54569))

(declare-fun d!54571 () Bool)

(assert (=> d!54571 (= (validMask!0 (mask!8781 thiss!1248)) (and (or (= (mask!8781 thiss!1248) #b00000000000000000000000000000111) (= (mask!8781 thiss!1248) #b00000000000000000000000000001111) (= (mask!8781 thiss!1248) #b00000000000000000000000000011111) (= (mask!8781 thiss!1248) #b00000000000000000000000000111111) (= (mask!8781 thiss!1248) #b00000000000000000000000001111111) (= (mask!8781 thiss!1248) #b00000000000000000000000011111111) (= (mask!8781 thiss!1248) #b00000000000000000000000111111111) (= (mask!8781 thiss!1248) #b00000000000000000000001111111111) (= (mask!8781 thiss!1248) #b00000000000000000000011111111111) (= (mask!8781 thiss!1248) #b00000000000000000000111111111111) (= (mask!8781 thiss!1248) #b00000000000000000001111111111111) (= (mask!8781 thiss!1248) #b00000000000000000011111111111111) (= (mask!8781 thiss!1248) #b00000000000000000111111111111111) (= (mask!8781 thiss!1248) #b00000000000000001111111111111111) (= (mask!8781 thiss!1248) #b00000000000000011111111111111111) (= (mask!8781 thiss!1248) #b00000000000000111111111111111111) (= (mask!8781 thiss!1248) #b00000000000001111111111111111111) (= (mask!8781 thiss!1248) #b00000000000011111111111111111111) (= (mask!8781 thiss!1248) #b00000000000111111111111111111111) (= (mask!8781 thiss!1248) #b00000000001111111111111111111111) (= (mask!8781 thiss!1248) #b00000000011111111111111111111111) (= (mask!8781 thiss!1248) #b00000000111111111111111111111111) (= (mask!8781 thiss!1248) #b00000001111111111111111111111111) (= (mask!8781 thiss!1248) #b00000011111111111111111111111111) (= (mask!8781 thiss!1248) #b00000111111111111111111111111111) (= (mask!8781 thiss!1248) #b00001111111111111111111111111111) (= (mask!8781 thiss!1248) #b00011111111111111111111111111111) (= (mask!8781 thiss!1248) #b00111111111111111111111111111111)) (bvsle (mask!8781 thiss!1248) #b00111111111111111111111111111111)))))

(assert (=> b!182552 d!54571))

(declare-fun d!54573 () Bool)

(declare-fun e!120270 () Bool)

(assert (=> d!54573 e!120270))

(declare-fun res!86460 () Bool)

(assert (=> d!54573 (=> res!86460 e!120270)))

(declare-fun lt!90351 () Bool)

(assert (=> d!54573 (= res!86460 (not lt!90351))))

(declare-fun lt!90352 () Bool)

(assert (=> d!54573 (= lt!90351 lt!90352)))

(declare-fun lt!90350 () Unit!5533)

(declare-fun e!120271 () Unit!5533)

(assert (=> d!54573 (= lt!90350 e!120271)))

(declare-fun c!32744 () Bool)

(assert (=> d!54573 (= c!32744 lt!90352)))

(declare-fun containsKey!216 (List!2339 (_ BitVec 64)) Bool)

(assert (=> d!54573 (= lt!90352 (containsKey!216 (toList!1179 (getCurrentListMap!822 (_keys!5648 thiss!1248) (_values!3718 thiss!1248) (mask!8781 thiss!1248) (extraKeys!3472 thiss!1248) (zeroValue!3576 thiss!1248) (minValue!3576 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3735 thiss!1248))) key!828))))

(assert (=> d!54573 (= (contains!1257 (getCurrentListMap!822 (_keys!5648 thiss!1248) (_values!3718 thiss!1248) (mask!8781 thiss!1248) (extraKeys!3472 thiss!1248) (zeroValue!3576 thiss!1248) (minValue!3576 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3735 thiss!1248)) key!828) lt!90351)))

(declare-fun b!182648 () Bool)

(declare-fun lt!90353 () Unit!5533)

(assert (=> b!182648 (= e!120271 lt!90353)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!165 (List!2339 (_ BitVec 64)) Unit!5533)

(assert (=> b!182648 (= lt!90353 (lemmaContainsKeyImpliesGetValueByKeyDefined!165 (toList!1179 (getCurrentListMap!822 (_keys!5648 thiss!1248) (_values!3718 thiss!1248) (mask!8781 thiss!1248) (extraKeys!3472 thiss!1248) (zeroValue!3576 thiss!1248) (minValue!3576 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3735 thiss!1248))) key!828))))

(declare-datatypes ((Option!218 0))(
  ( (Some!217 (v!4080 V!5347)) (None!216) )
))
(declare-fun isDefined!166 (Option!218) Bool)

(declare-fun getValueByKey!212 (List!2339 (_ BitVec 64)) Option!218)

(assert (=> b!182648 (isDefined!166 (getValueByKey!212 (toList!1179 (getCurrentListMap!822 (_keys!5648 thiss!1248) (_values!3718 thiss!1248) (mask!8781 thiss!1248) (extraKeys!3472 thiss!1248) (zeroValue!3576 thiss!1248) (minValue!3576 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3735 thiss!1248))) key!828))))

(declare-fun b!182649 () Bool)

(declare-fun Unit!5535 () Unit!5533)

(assert (=> b!182649 (= e!120271 Unit!5535)))

(declare-fun b!182650 () Bool)

(assert (=> b!182650 (= e!120270 (isDefined!166 (getValueByKey!212 (toList!1179 (getCurrentListMap!822 (_keys!5648 thiss!1248) (_values!3718 thiss!1248) (mask!8781 thiss!1248) (extraKeys!3472 thiss!1248) (zeroValue!3576 thiss!1248) (minValue!3576 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3735 thiss!1248))) key!828)))))

(assert (= (and d!54573 c!32744) b!182648))

(assert (= (and d!54573 (not c!32744)) b!182649))

(assert (= (and d!54573 (not res!86460)) b!182650))

(declare-fun m!210383 () Bool)

(assert (=> d!54573 m!210383))

(declare-fun m!210385 () Bool)

(assert (=> b!182648 m!210385))

(declare-fun m!210387 () Bool)

(assert (=> b!182648 m!210387))

(assert (=> b!182648 m!210387))

(declare-fun m!210389 () Bool)

(assert (=> b!182648 m!210389))

(assert (=> b!182650 m!210387))

(assert (=> b!182650 m!210387))

(assert (=> b!182650 m!210389))

(assert (=> b!182548 d!54573))

(declare-fun b!182693 () Bool)

(declare-fun e!120305 () Bool)

(declare-fun lt!90414 () ListLongMap!2327)

(declare-fun apply!156 (ListLongMap!2327 (_ BitVec 64)) V!5347)

(assert (=> b!182693 (= e!120305 (= (apply!156 lt!90414 #b1000000000000000000000000000000000000000000000000000000000000000) (minValue!3576 thiss!1248)))))

(declare-fun b!182694 () Bool)

(declare-fun e!120303 () ListLongMap!2327)

(declare-fun e!120307 () ListLongMap!2327)

(assert (=> b!182694 (= e!120303 e!120307)))

(declare-fun c!32761 () Bool)

(assert (=> b!182694 (= c!32761 (and (not (= (bvand (extraKeys!3472 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (extraKeys!3472 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!182695 () Bool)

(declare-fun e!120302 () Bool)

(assert (=> b!182695 (= e!120302 (validKeyInArray!0 (select (arr!3658 (_keys!5648 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun b!182696 () Bool)

(declare-fun e!120300 () Unit!5533)

(declare-fun lt!90411 () Unit!5533)

(assert (=> b!182696 (= e!120300 lt!90411)))

(declare-fun lt!90417 () ListLongMap!2327)

(declare-fun getCurrentListMapNoExtraKeys!186 (array!7736 array!7738 (_ BitVec 32) (_ BitVec 32) V!5347 V!5347 (_ BitVec 32) Int) ListLongMap!2327)

(assert (=> b!182696 (= lt!90417 (getCurrentListMapNoExtraKeys!186 (_keys!5648 thiss!1248) (_values!3718 thiss!1248) (mask!8781 thiss!1248) (extraKeys!3472 thiss!1248) (zeroValue!3576 thiss!1248) (minValue!3576 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3735 thiss!1248)))))

(declare-fun lt!90407 () (_ BitVec 64))

(assert (=> b!182696 (= lt!90407 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!90401 () (_ BitVec 64))

(assert (=> b!182696 (= lt!90401 (select (arr!3658 (_keys!5648 thiss!1248)) #b00000000000000000000000000000000))))

(declare-fun lt!90416 () Unit!5533)

(declare-fun addStillContains!132 (ListLongMap!2327 (_ BitVec 64) V!5347 (_ BitVec 64)) Unit!5533)

(assert (=> b!182696 (= lt!90416 (addStillContains!132 lt!90417 lt!90407 (zeroValue!3576 thiss!1248) lt!90401))))

(declare-fun +!271 (ListLongMap!2327 tuple2!3396) ListLongMap!2327)

(assert (=> b!182696 (contains!1257 (+!271 lt!90417 (tuple2!3397 lt!90407 (zeroValue!3576 thiss!1248))) lt!90401)))

(declare-fun lt!90402 () Unit!5533)

(assert (=> b!182696 (= lt!90402 lt!90416)))

(declare-fun lt!90409 () ListLongMap!2327)

(assert (=> b!182696 (= lt!90409 (getCurrentListMapNoExtraKeys!186 (_keys!5648 thiss!1248) (_values!3718 thiss!1248) (mask!8781 thiss!1248) (extraKeys!3472 thiss!1248) (zeroValue!3576 thiss!1248) (minValue!3576 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3735 thiss!1248)))))

(declare-fun lt!90404 () (_ BitVec 64))

(assert (=> b!182696 (= lt!90404 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!90408 () (_ BitVec 64))

(assert (=> b!182696 (= lt!90408 (select (arr!3658 (_keys!5648 thiss!1248)) #b00000000000000000000000000000000))))

(declare-fun lt!90418 () Unit!5533)

(declare-fun addApplyDifferent!132 (ListLongMap!2327 (_ BitVec 64) V!5347 (_ BitVec 64)) Unit!5533)

(assert (=> b!182696 (= lt!90418 (addApplyDifferent!132 lt!90409 lt!90404 (minValue!3576 thiss!1248) lt!90408))))

(assert (=> b!182696 (= (apply!156 (+!271 lt!90409 (tuple2!3397 lt!90404 (minValue!3576 thiss!1248))) lt!90408) (apply!156 lt!90409 lt!90408))))

(declare-fun lt!90403 () Unit!5533)

(assert (=> b!182696 (= lt!90403 lt!90418)))

(declare-fun lt!90405 () ListLongMap!2327)

(assert (=> b!182696 (= lt!90405 (getCurrentListMapNoExtraKeys!186 (_keys!5648 thiss!1248) (_values!3718 thiss!1248) (mask!8781 thiss!1248) (extraKeys!3472 thiss!1248) (zeroValue!3576 thiss!1248) (minValue!3576 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3735 thiss!1248)))))

(declare-fun lt!90412 () (_ BitVec 64))

(assert (=> b!182696 (= lt!90412 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!90398 () (_ BitVec 64))

(assert (=> b!182696 (= lt!90398 (select (arr!3658 (_keys!5648 thiss!1248)) #b00000000000000000000000000000000))))

(declare-fun lt!90399 () Unit!5533)

(assert (=> b!182696 (= lt!90399 (addApplyDifferent!132 lt!90405 lt!90412 (zeroValue!3576 thiss!1248) lt!90398))))

(assert (=> b!182696 (= (apply!156 (+!271 lt!90405 (tuple2!3397 lt!90412 (zeroValue!3576 thiss!1248))) lt!90398) (apply!156 lt!90405 lt!90398))))

(declare-fun lt!90400 () Unit!5533)

(assert (=> b!182696 (= lt!90400 lt!90399)))

(declare-fun lt!90406 () ListLongMap!2327)

(assert (=> b!182696 (= lt!90406 (getCurrentListMapNoExtraKeys!186 (_keys!5648 thiss!1248) (_values!3718 thiss!1248) (mask!8781 thiss!1248) (extraKeys!3472 thiss!1248) (zeroValue!3576 thiss!1248) (minValue!3576 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3735 thiss!1248)))))

(declare-fun lt!90415 () (_ BitVec 64))

(assert (=> b!182696 (= lt!90415 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!90410 () (_ BitVec 64))

(assert (=> b!182696 (= lt!90410 (select (arr!3658 (_keys!5648 thiss!1248)) #b00000000000000000000000000000000))))

(assert (=> b!182696 (= lt!90411 (addApplyDifferent!132 lt!90406 lt!90415 (minValue!3576 thiss!1248) lt!90410))))

(assert (=> b!182696 (= (apply!156 (+!271 lt!90406 (tuple2!3397 lt!90415 (minValue!3576 thiss!1248))) lt!90410) (apply!156 lt!90406 lt!90410))))

(declare-fun b!182697 () Bool)

(declare-fun e!120309 () Bool)

(assert (=> b!182697 (= e!120309 e!120305)))

(declare-fun res!86487 () Bool)

(declare-fun call!18453 () Bool)

(assert (=> b!182697 (= res!86487 call!18453)))

(assert (=> b!182697 (=> (not res!86487) (not e!120305))))

(declare-fun b!182698 () Bool)

(declare-fun e!120301 () Bool)

(declare-fun call!18458 () Bool)

(assert (=> b!182698 (= e!120301 (not call!18458))))

(declare-fun b!182699 () Bool)

(declare-fun e!120299 () Bool)

(assert (=> b!182699 (= e!120299 e!120309)))

(declare-fun c!32762 () Bool)

(assert (=> b!182699 (= c!32762 (not (= (bvand (extraKeys!3472 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!182700 () Bool)

(declare-fun res!86485 () Bool)

(assert (=> b!182700 (=> (not res!86485) (not e!120299))))

(assert (=> b!182700 (= res!86485 e!120301)))

(declare-fun c!32758 () Bool)

(assert (=> b!182700 (= c!32758 (not (= (bvand (extraKeys!3472 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!182701 () Bool)

(declare-fun e!120306 () Bool)

(assert (=> b!182701 (= e!120306 (= (apply!156 lt!90414 #b0000000000000000000000000000000000000000000000000000000000000000) (zeroValue!3576 thiss!1248)))))

(declare-fun b!182702 () Bool)

(assert (=> b!182702 (= e!120301 e!120306)))

(declare-fun res!86484 () Bool)

(assert (=> b!182702 (= res!86484 call!18458)))

(assert (=> b!182702 (=> (not res!86484) (not e!120306))))

(declare-fun b!182703 () Bool)

(declare-fun e!120298 () ListLongMap!2327)

(declare-fun call!18454 () ListLongMap!2327)

(assert (=> b!182703 (= e!120298 call!18454)))

(declare-fun b!182704 () Bool)

(declare-fun e!120308 () Bool)

(declare-fun e!120310 () Bool)

(assert (=> b!182704 (= e!120308 e!120310)))

(declare-fun res!86486 () Bool)

(assert (=> b!182704 (=> (not res!86486) (not e!120310))))

(assert (=> b!182704 (= res!86486 (contains!1257 lt!90414 (select (arr!3658 (_keys!5648 thiss!1248)) #b00000000000000000000000000000000)))))

(assert (=> b!182704 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!3970 (_keys!5648 thiss!1248))))))

(declare-fun b!182705 () Bool)

(declare-fun call!18452 () ListLongMap!2327)

(assert (=> b!182705 (= e!120303 (+!271 call!18452 (tuple2!3397 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3576 thiss!1248))))))

(declare-fun bm!18449 () Bool)

(declare-fun call!18455 () ListLongMap!2327)

(declare-fun call!18456 () ListLongMap!2327)

(assert (=> bm!18449 (= call!18455 call!18456)))

(declare-fun bm!18450 () Bool)

(declare-fun call!18457 () ListLongMap!2327)

(assert (=> bm!18450 (= call!18457 call!18455)))

(declare-fun d!54575 () Bool)

(assert (=> d!54575 e!120299))

(declare-fun res!86481 () Bool)

(assert (=> d!54575 (=> (not res!86481) (not e!120299))))

(assert (=> d!54575 (= res!86481 (or (bvsge #b00000000000000000000000000000000 (size!3970 (_keys!5648 thiss!1248))) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!3970 (_keys!5648 thiss!1248))))))))

(declare-fun lt!90413 () ListLongMap!2327)

(assert (=> d!54575 (= lt!90414 lt!90413)))

(declare-fun lt!90419 () Unit!5533)

(assert (=> d!54575 (= lt!90419 e!120300)))

(declare-fun c!32759 () Bool)

(declare-fun e!120304 () Bool)

(assert (=> d!54575 (= c!32759 e!120304)))

(declare-fun res!86479 () Bool)

(assert (=> d!54575 (=> (not res!86479) (not e!120304))))

(assert (=> d!54575 (= res!86479 (bvslt #b00000000000000000000000000000000 (size!3970 (_keys!5648 thiss!1248))))))

(assert (=> d!54575 (= lt!90413 e!120303)))

(declare-fun c!32757 () Bool)

(assert (=> d!54575 (= c!32757 (and (not (= (bvand (extraKeys!3472 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!3472 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!54575 (validMask!0 (mask!8781 thiss!1248))))

(assert (=> d!54575 (= (getCurrentListMap!822 (_keys!5648 thiss!1248) (_values!3718 thiss!1248) (mask!8781 thiss!1248) (extraKeys!3472 thiss!1248) (zeroValue!3576 thiss!1248) (minValue!3576 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3735 thiss!1248)) lt!90414)))

(declare-fun b!182706 () Bool)

(assert (=> b!182706 (= e!120307 call!18454)))

(declare-fun bm!18451 () Bool)

(assert (=> bm!18451 (= call!18452 (+!271 (ite c!32757 call!18456 (ite c!32761 call!18455 call!18457)) (ite (or c!32757 c!32761) (tuple2!3397 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3576 thiss!1248)) (tuple2!3397 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3576 thiss!1248)))))))

(declare-fun b!182707 () Bool)

(assert (=> b!182707 (= e!120304 (validKeyInArray!0 (select (arr!3658 (_keys!5648 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun b!182708 () Bool)

(declare-fun get!2098 (ValueCell!1794 V!5347) V!5347)

(declare-fun dynLambda!494 (Int (_ BitVec 64)) V!5347)

(assert (=> b!182708 (= e!120310 (= (apply!156 lt!90414 (select (arr!3658 (_keys!5648 thiss!1248)) #b00000000000000000000000000000000)) (get!2098 (select (arr!3659 (_values!3718 thiss!1248)) #b00000000000000000000000000000000) (dynLambda!494 (defaultEntry!3735 thiss!1248) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!182708 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!3971 (_values!3718 thiss!1248))))))

(assert (=> b!182708 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!3970 (_keys!5648 thiss!1248))))))

(declare-fun b!182709 () Bool)

(assert (=> b!182709 (= e!120298 call!18457)))

(declare-fun b!182710 () Bool)

(assert (=> b!182710 (= e!120309 (not call!18453))))

(declare-fun bm!18452 () Bool)

(assert (=> bm!18452 (= call!18454 call!18452)))

(declare-fun bm!18453 () Bool)

(assert (=> bm!18453 (= call!18458 (contains!1257 lt!90414 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!182711 () Bool)

(declare-fun c!32760 () Bool)

(assert (=> b!182711 (= c!32760 (and (not (= (bvand (extraKeys!3472 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (extraKeys!3472 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!182711 (= e!120307 e!120298)))

(declare-fun bm!18454 () Bool)

(assert (=> bm!18454 (= call!18456 (getCurrentListMapNoExtraKeys!186 (_keys!5648 thiss!1248) (_values!3718 thiss!1248) (mask!8781 thiss!1248) (extraKeys!3472 thiss!1248) (zeroValue!3576 thiss!1248) (minValue!3576 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3735 thiss!1248)))))

(declare-fun bm!18455 () Bool)

(assert (=> bm!18455 (= call!18453 (contains!1257 lt!90414 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!182712 () Bool)

(declare-fun Unit!5536 () Unit!5533)

(assert (=> b!182712 (= e!120300 Unit!5536)))

(declare-fun b!182713 () Bool)

(declare-fun res!86480 () Bool)

(assert (=> b!182713 (=> (not res!86480) (not e!120299))))

(assert (=> b!182713 (= res!86480 e!120308)))

(declare-fun res!86483 () Bool)

(assert (=> b!182713 (=> res!86483 e!120308)))

(assert (=> b!182713 (= res!86483 (not e!120302))))

(declare-fun res!86482 () Bool)

(assert (=> b!182713 (=> (not res!86482) (not e!120302))))

(assert (=> b!182713 (= res!86482 (bvslt #b00000000000000000000000000000000 (size!3970 (_keys!5648 thiss!1248))))))

(assert (= (and d!54575 c!32757) b!182705))

(assert (= (and d!54575 (not c!32757)) b!182694))

(assert (= (and b!182694 c!32761) b!182706))

(assert (= (and b!182694 (not c!32761)) b!182711))

(assert (= (and b!182711 c!32760) b!182703))

(assert (= (and b!182711 (not c!32760)) b!182709))

(assert (= (or b!182703 b!182709) bm!18450))

(assert (= (or b!182706 bm!18450) bm!18449))

(assert (= (or b!182706 b!182703) bm!18452))

(assert (= (or b!182705 bm!18449) bm!18454))

(assert (= (or b!182705 bm!18452) bm!18451))

(assert (= (and d!54575 res!86479) b!182707))

(assert (= (and d!54575 c!32759) b!182696))

(assert (= (and d!54575 (not c!32759)) b!182712))

(assert (= (and d!54575 res!86481) b!182713))

(assert (= (and b!182713 res!86482) b!182695))

(assert (= (and b!182713 (not res!86483)) b!182704))

(assert (= (and b!182704 res!86486) b!182708))

(assert (= (and b!182713 res!86480) b!182700))

(assert (= (and b!182700 c!32758) b!182702))

(assert (= (and b!182700 (not c!32758)) b!182698))

(assert (= (and b!182702 res!86484) b!182701))

(assert (= (or b!182702 b!182698) bm!18453))

(assert (= (and b!182700 res!86485) b!182699))

(assert (= (and b!182699 c!32762) b!182697))

(assert (= (and b!182699 (not c!32762)) b!182710))

(assert (= (and b!182697 res!86487) b!182693))

(assert (= (or b!182697 b!182710) bm!18455))

(declare-fun b_lambda!7209 () Bool)

(assert (=> (not b_lambda!7209) (not b!182708)))

(declare-fun t!7213 () Bool)

(declare-fun tb!2831 () Bool)

(assert (=> (and b!182553 (= (defaultEntry!3735 thiss!1248) (defaultEntry!3735 thiss!1248)) t!7213) tb!2831))

(declare-fun result!4755 () Bool)

(assert (=> tb!2831 (= result!4755 tp_is_empty!4275)))

(assert (=> b!182708 t!7213))

(declare-fun b_and!11089 () Bool)

(assert (= b_and!11085 (and (=> t!7213 result!4755) b_and!11089)))

(declare-fun m!210391 () Bool)

(assert (=> b!182701 m!210391))

(assert (=> b!182707 m!210367))

(assert (=> b!182707 m!210367))

(assert (=> b!182707 m!210371))

(declare-fun m!210393 () Bool)

(assert (=> b!182708 m!210393))

(assert (=> b!182708 m!210393))

(declare-fun m!210395 () Bool)

(assert (=> b!182708 m!210395))

(declare-fun m!210397 () Bool)

(assert (=> b!182708 m!210397))

(assert (=> b!182708 m!210367))

(assert (=> b!182708 m!210367))

(declare-fun m!210399 () Bool)

(assert (=> b!182708 m!210399))

(assert (=> b!182708 m!210395))

(assert (=> b!182704 m!210367))

(assert (=> b!182704 m!210367))

(declare-fun m!210401 () Bool)

(assert (=> b!182704 m!210401))

(assert (=> b!182695 m!210367))

(assert (=> b!182695 m!210367))

(assert (=> b!182695 m!210371))

(declare-fun m!210403 () Bool)

(assert (=> bm!18453 m!210403))

(declare-fun m!210405 () Bool)

(assert (=> b!182693 m!210405))

(declare-fun m!210407 () Bool)

(assert (=> bm!18455 m!210407))

(declare-fun m!210409 () Bool)

(assert (=> bm!18454 m!210409))

(declare-fun m!210411 () Bool)

(assert (=> b!182705 m!210411))

(declare-fun m!210413 () Bool)

(assert (=> bm!18451 m!210413))

(declare-fun m!210415 () Bool)

(assert (=> b!182696 m!210415))

(declare-fun m!210417 () Bool)

(assert (=> b!182696 m!210417))

(declare-fun m!210419 () Bool)

(assert (=> b!182696 m!210419))

(declare-fun m!210421 () Bool)

(assert (=> b!182696 m!210421))

(assert (=> b!182696 m!210409))

(declare-fun m!210423 () Bool)

(assert (=> b!182696 m!210423))

(declare-fun m!210425 () Bool)

(assert (=> b!182696 m!210425))

(assert (=> b!182696 m!210423))

(assert (=> b!182696 m!210419))

(declare-fun m!210427 () Bool)

(assert (=> b!182696 m!210427))

(declare-fun m!210429 () Bool)

(assert (=> b!182696 m!210429))

(declare-fun m!210431 () Bool)

(assert (=> b!182696 m!210431))

(assert (=> b!182696 m!210415))

(declare-fun m!210433 () Bool)

(assert (=> b!182696 m!210433))

(declare-fun m!210435 () Bool)

(assert (=> b!182696 m!210435))

(declare-fun m!210437 () Bool)

(assert (=> b!182696 m!210437))

(declare-fun m!210439 () Bool)

(assert (=> b!182696 m!210439))

(assert (=> b!182696 m!210367))

(declare-fun m!210441 () Bool)

(assert (=> b!182696 m!210441))

(assert (=> b!182696 m!210421))

(declare-fun m!210443 () Bool)

(assert (=> b!182696 m!210443))

(assert (=> d!54575 m!210313))

(assert (=> b!182548 d!54575))

(declare-fun b!182723 () Bool)

(declare-fun e!120316 () Bool)

(assert (=> b!182723 (= e!120316 tp_is_empty!4275)))

(declare-fun b!182722 () Bool)

(declare-fun e!120315 () Bool)

(assert (=> b!182722 (= e!120315 tp_is_empty!4275)))

(declare-fun mapIsEmpty!7343 () Bool)

(declare-fun mapRes!7343 () Bool)

(assert (=> mapIsEmpty!7343 mapRes!7343))

(declare-fun mapNonEmpty!7343 () Bool)

(declare-fun tp!16280 () Bool)

(assert (=> mapNonEmpty!7343 (= mapRes!7343 (and tp!16280 e!120315))))

(declare-fun mapKey!7343 () (_ BitVec 32))

(declare-fun mapValue!7343 () ValueCell!1794)

(declare-fun mapRest!7343 () (Array (_ BitVec 32) ValueCell!1794))

(assert (=> mapNonEmpty!7343 (= mapRest!7337 (store mapRest!7343 mapKey!7343 mapValue!7343))))

(declare-fun condMapEmpty!7343 () Bool)

(declare-fun mapDefault!7343 () ValueCell!1794)

(assert (=> mapNonEmpty!7337 (= condMapEmpty!7343 (= mapRest!7337 ((as const (Array (_ BitVec 32) ValueCell!1794)) mapDefault!7343)))))

(assert (=> mapNonEmpty!7337 (= tp!16270 (and e!120316 mapRes!7343))))

(assert (= (and mapNonEmpty!7337 condMapEmpty!7343) mapIsEmpty!7343))

(assert (= (and mapNonEmpty!7337 (not condMapEmpty!7343)) mapNonEmpty!7343))

(assert (= (and mapNonEmpty!7343 ((_ is ValueCellFull!1794) mapValue!7343)) b!182722))

(assert (= (and mapNonEmpty!7337 ((_ is ValueCellFull!1794) mapDefault!7343)) b!182723))

(declare-fun m!210445 () Bool)

(assert (=> mapNonEmpty!7343 m!210445))

(declare-fun b_lambda!7211 () Bool)

(assert (= b_lambda!7209 (or (and b!182553 b_free!4503) b_lambda!7211)))

(check-sat (not b!182650) (not b!182596) (not b!182696) (not b!182595) (not b!182640) (not b!182612) (not mapNonEmpty!7343) (not b_lambda!7211) tp_is_empty!4275 (not bm!18453) (not b!182708) (not b!182638) (not bm!18451) (not b!182707) (not b!182626) (not b!182629) (not b!182648) (not bm!18431) (not d!54575) (not b!182594) (not b_next!4503) (not b!182627) (not d!54561) (not bm!18434) (not b!182704) (not b!182705) (not d!54573) (not bm!18454) (not d!54559) (not b!182695) b_and!11089 (not b!182693) (not bm!18455) (not b!182701))
(check-sat b_and!11089 (not b_next!4503))
