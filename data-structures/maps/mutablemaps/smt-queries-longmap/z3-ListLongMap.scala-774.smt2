; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!18286 () Bool)

(assert start!18286)

(declare-fun b!181556 () Bool)

(declare-fun b_free!4485 () Bool)

(declare-fun b_next!4485 () Bool)

(assert (=> b!181556 (= b_free!4485 (not b_next!4485))))

(declare-fun tp!16205 () Bool)

(declare-fun b_and!11053 () Bool)

(assert (=> b!181556 (= tp!16205 b_and!11053)))

(declare-fun res!85966 () Bool)

(declare-fun e!119591 () Bool)

(assert (=> start!18286 (=> (not res!85966) (not e!119591))))

(declare-datatypes ((V!5323 0))(
  ( (V!5324 (val!2173 Int)) )
))
(declare-datatypes ((ValueCell!1785 0))(
  ( (ValueCellFull!1785 (v!4066 V!5323)) (EmptyCell!1785) )
))
(declare-datatypes ((array!7694 0))(
  ( (array!7695 (arr!3640 (Array (_ BitVec 32) (_ BitVec 64))) (size!3950 (_ BitVec 32))) )
))
(declare-datatypes ((array!7696 0))(
  ( (array!7697 (arr!3641 (Array (_ BitVec 32) ValueCell!1785)) (size!3951 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2478 0))(
  ( (LongMapFixedSize!2479 (defaultEntry!3721 Int) (mask!8746 (_ BitVec 32)) (extraKeys!3458 (_ BitVec 32)) (zeroValue!3562 V!5323) (minValue!3562 V!5323) (_size!1288 (_ BitVec 32)) (_keys!5624 array!7694) (_values!3704 array!7696) (_vacant!1288 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!2478)

(declare-fun valid!1019 (LongMapFixedSize!2478) Bool)

(assert (=> start!18286 (= res!85966 (valid!1019 thiss!1248))))

(assert (=> start!18286 e!119591))

(declare-fun e!119592 () Bool)

(assert (=> start!18286 e!119592))

(assert (=> start!18286 true))

(declare-fun mapNonEmpty!7299 () Bool)

(declare-fun mapRes!7299 () Bool)

(declare-fun tp!16206 () Bool)

(declare-fun e!119589 () Bool)

(assert (=> mapNonEmpty!7299 (= mapRes!7299 (and tp!16206 e!119589))))

(declare-fun mapKey!7299 () (_ BitVec 32))

(declare-fun mapValue!7299 () ValueCell!1785)

(declare-fun mapRest!7299 () (Array (_ BitVec 32) ValueCell!1785))

(assert (=> mapNonEmpty!7299 (= (arr!3641 (_values!3704 thiss!1248)) (store mapRest!7299 mapKey!7299 mapValue!7299))))

(declare-fun b!181551 () Bool)

(declare-fun res!85964 () Bool)

(declare-fun e!119590 () Bool)

(assert (=> b!181551 (=> (not res!85964) (not e!119590))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!181551 (= res!85964 (validMask!0 (mask!8746 thiss!1248)))))

(declare-fun b!181552 () Bool)

(declare-fun tp_is_empty!4257 () Bool)

(assert (=> b!181552 (= e!119589 tp_is_empty!4257)))

(declare-fun b!181553 () Bool)

(assert (=> b!181553 (= e!119591 e!119590)))

(declare-fun res!85967 () Bool)

(assert (=> b!181553 (=> (not res!85967) (not e!119590))))

(declare-datatypes ((SeekEntryResult!612 0))(
  ( (MissingZero!612 (index!4618 (_ BitVec 32))) (Found!612 (index!4619 (_ BitVec 32))) (Intermediate!612 (undefined!1424 Bool) (index!4620 (_ BitVec 32)) (x!19834 (_ BitVec 32))) (Undefined!612) (MissingVacant!612 (index!4621 (_ BitVec 32))) )
))
(declare-fun lt!89803 () SeekEntryResult!612)

(get-info :version)

(assert (=> b!181553 (= res!85967 (and (not ((_ is Undefined!612) lt!89803)) (not ((_ is MissingVacant!612) lt!89803)) (not ((_ is MissingZero!612) lt!89803)) ((_ is Found!612) lt!89803)))))

(declare-fun key!828 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!7694 (_ BitVec 32)) SeekEntryResult!612)

(assert (=> b!181553 (= lt!89803 (seekEntryOrOpen!0 key!828 (_keys!5624 thiss!1248) (mask!8746 thiss!1248)))))

(declare-fun b!181554 () Bool)

(declare-fun e!119588 () Bool)

(declare-fun e!119587 () Bool)

(assert (=> b!181554 (= e!119588 (and e!119587 mapRes!7299))))

(declare-fun condMapEmpty!7299 () Bool)

(declare-fun mapDefault!7299 () ValueCell!1785)

(assert (=> b!181554 (= condMapEmpty!7299 (= (arr!3641 (_values!3704 thiss!1248)) ((as const (Array (_ BitVec 32) ValueCell!1785)) mapDefault!7299)))))

(declare-fun mapIsEmpty!7299 () Bool)

(assert (=> mapIsEmpty!7299 mapRes!7299))

(declare-fun b!181555 () Bool)

(assert (=> b!181555 (= e!119590 (and (= (size!3951 (_values!3704 thiss!1248)) (bvadd #b00000000000000000000000000000001 (mask!8746 thiss!1248))) (= (size!3950 (_keys!5624 thiss!1248)) (size!3951 (_values!3704 thiss!1248))) (bvsge (mask!8746 thiss!1248) #b00000000000000000000000000000000) (bvslt (extraKeys!3458 thiss!1248) #b00000000000000000000000000000000)))))

(declare-fun array_inv!2335 (array!7694) Bool)

(declare-fun array_inv!2336 (array!7696) Bool)

(assert (=> b!181556 (= e!119592 (and tp!16205 tp_is_empty!4257 (array_inv!2335 (_keys!5624 thiss!1248)) (array_inv!2336 (_values!3704 thiss!1248)) e!119588))))

(declare-fun b!181557 () Bool)

(assert (=> b!181557 (= e!119587 tp_is_empty!4257)))

(declare-fun b!181558 () Bool)

(declare-fun res!85963 () Bool)

(assert (=> b!181558 (=> (not res!85963) (not e!119590))))

(declare-datatypes ((tuple2!3386 0))(
  ( (tuple2!3387 (_1!1703 (_ BitVec 64)) (_2!1703 V!5323)) )
))
(declare-datatypes ((List!2330 0))(
  ( (Nil!2327) (Cons!2326 (h!2953 tuple2!3386) (t!7194 List!2330)) )
))
(declare-datatypes ((ListLongMap!2317 0))(
  ( (ListLongMap!2318 (toList!1174 List!2330)) )
))
(declare-fun contains!1248 (ListLongMap!2317 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!817 (array!7694 array!7696 (_ BitVec 32) (_ BitVec 32) V!5323 V!5323 (_ BitVec 32) Int) ListLongMap!2317)

(assert (=> b!181558 (= res!85963 (contains!1248 (getCurrentListMap!817 (_keys!5624 thiss!1248) (_values!3704 thiss!1248) (mask!8746 thiss!1248) (extraKeys!3458 thiss!1248) (zeroValue!3562 thiss!1248) (minValue!3562 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3721 thiss!1248)) key!828))))

(declare-fun b!181559 () Bool)

(declare-fun res!85965 () Bool)

(assert (=> b!181559 (=> (not res!85965) (not e!119591))))

(assert (=> b!181559 (= res!85965 (not (= key!828 (bvneg key!828))))))

(assert (= (and start!18286 res!85966) b!181559))

(assert (= (and b!181559 res!85965) b!181553))

(assert (= (and b!181553 res!85967) b!181558))

(assert (= (and b!181558 res!85963) b!181551))

(assert (= (and b!181551 res!85964) b!181555))

(assert (= (and b!181554 condMapEmpty!7299) mapIsEmpty!7299))

(assert (= (and b!181554 (not condMapEmpty!7299)) mapNonEmpty!7299))

(assert (= (and mapNonEmpty!7299 ((_ is ValueCellFull!1785) mapValue!7299)) b!181552))

(assert (= (and b!181554 ((_ is ValueCellFull!1785) mapDefault!7299)) b!181557))

(assert (= b!181556 b!181554))

(assert (= start!18286 b!181556))

(declare-fun m!209443 () Bool)

(assert (=> b!181551 m!209443))

(declare-fun m!209445 () Bool)

(assert (=> b!181558 m!209445))

(assert (=> b!181558 m!209445))

(declare-fun m!209447 () Bool)

(assert (=> b!181558 m!209447))

(declare-fun m!209449 () Bool)

(assert (=> start!18286 m!209449))

(declare-fun m!209451 () Bool)

(assert (=> mapNonEmpty!7299 m!209451))

(declare-fun m!209453 () Bool)

(assert (=> b!181556 m!209453))

(declare-fun m!209455 () Bool)

(assert (=> b!181556 m!209455))

(declare-fun m!209457 () Bool)

(assert (=> b!181553 m!209457))

(check-sat (not b!181556) (not b!181553) tp_is_empty!4257 (not b_next!4485) (not b!181551) (not b!181558) (not mapNonEmpty!7299) (not start!18286) b_and!11053)
(check-sat b_and!11053 (not b_next!4485))
(get-model)

(declare-fun d!54361 () Bool)

(assert (=> d!54361 (= (array_inv!2335 (_keys!5624 thiss!1248)) (bvsge (size!3950 (_keys!5624 thiss!1248)) #b00000000000000000000000000000000))))

(assert (=> b!181556 d!54361))

(declare-fun d!54363 () Bool)

(assert (=> d!54363 (= (array_inv!2336 (_values!3704 thiss!1248)) (bvsge (size!3951 (_values!3704 thiss!1248)) #b00000000000000000000000000000000))))

(assert (=> b!181556 d!54363))

(declare-fun d!54365 () Bool)

(assert (=> d!54365 (= (validMask!0 (mask!8746 thiss!1248)) (and (or (= (mask!8746 thiss!1248) #b00000000000000000000000000000111) (= (mask!8746 thiss!1248) #b00000000000000000000000000001111) (= (mask!8746 thiss!1248) #b00000000000000000000000000011111) (= (mask!8746 thiss!1248) #b00000000000000000000000000111111) (= (mask!8746 thiss!1248) #b00000000000000000000000001111111) (= (mask!8746 thiss!1248) #b00000000000000000000000011111111) (= (mask!8746 thiss!1248) #b00000000000000000000000111111111) (= (mask!8746 thiss!1248) #b00000000000000000000001111111111) (= (mask!8746 thiss!1248) #b00000000000000000000011111111111) (= (mask!8746 thiss!1248) #b00000000000000000000111111111111) (= (mask!8746 thiss!1248) #b00000000000000000001111111111111) (= (mask!8746 thiss!1248) #b00000000000000000011111111111111) (= (mask!8746 thiss!1248) #b00000000000000000111111111111111) (= (mask!8746 thiss!1248) #b00000000000000001111111111111111) (= (mask!8746 thiss!1248) #b00000000000000011111111111111111) (= (mask!8746 thiss!1248) #b00000000000000111111111111111111) (= (mask!8746 thiss!1248) #b00000000000001111111111111111111) (= (mask!8746 thiss!1248) #b00000000000011111111111111111111) (= (mask!8746 thiss!1248) #b00000000000111111111111111111111) (= (mask!8746 thiss!1248) #b00000000001111111111111111111111) (= (mask!8746 thiss!1248) #b00000000011111111111111111111111) (= (mask!8746 thiss!1248) #b00000000111111111111111111111111) (= (mask!8746 thiss!1248) #b00000001111111111111111111111111) (= (mask!8746 thiss!1248) #b00000011111111111111111111111111) (= (mask!8746 thiss!1248) #b00000111111111111111111111111111) (= (mask!8746 thiss!1248) #b00001111111111111111111111111111) (= (mask!8746 thiss!1248) #b00011111111111111111111111111111) (= (mask!8746 thiss!1248) #b00111111111111111111111111111111)) (bvsle (mask!8746 thiss!1248) #b00111111111111111111111111111111)))))

(assert (=> b!181551 d!54365))

(declare-fun d!54367 () Bool)

(declare-fun res!85989 () Bool)

(declare-fun e!119616 () Bool)

(assert (=> d!54367 (=> (not res!85989) (not e!119616))))

(declare-fun simpleValid!168 (LongMapFixedSize!2478) Bool)

(assert (=> d!54367 (= res!85989 (simpleValid!168 thiss!1248))))

(assert (=> d!54367 (= (valid!1019 thiss!1248) e!119616)))

(declare-fun b!181593 () Bool)

(declare-fun res!85990 () Bool)

(assert (=> b!181593 (=> (not res!85990) (not e!119616))))

(declare-fun arrayCountValidKeys!0 (array!7694 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!181593 (= res!85990 (= (arrayCountValidKeys!0 (_keys!5624 thiss!1248) #b00000000000000000000000000000000 (size!3950 (_keys!5624 thiss!1248))) (_size!1288 thiss!1248)))))

(declare-fun b!181594 () Bool)

(declare-fun res!85991 () Bool)

(assert (=> b!181594 (=> (not res!85991) (not e!119616))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!7694 (_ BitVec 32)) Bool)

(assert (=> b!181594 (= res!85991 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!5624 thiss!1248) (mask!8746 thiss!1248)))))

(declare-fun b!181595 () Bool)

(declare-datatypes ((List!2332 0))(
  ( (Nil!2329) (Cons!2328 (h!2955 (_ BitVec 64)) (t!7198 List!2332)) )
))
(declare-fun arrayNoDuplicates!0 (array!7694 (_ BitVec 32) List!2332) Bool)

(assert (=> b!181595 (= e!119616 (arrayNoDuplicates!0 (_keys!5624 thiss!1248) #b00000000000000000000000000000000 Nil!2329))))

(assert (= (and d!54367 res!85989) b!181593))

(assert (= (and b!181593 res!85990) b!181594))

(assert (= (and b!181594 res!85991) b!181595))

(declare-fun m!209475 () Bool)

(assert (=> d!54367 m!209475))

(declare-fun m!209477 () Bool)

(assert (=> b!181593 m!209477))

(declare-fun m!209479 () Bool)

(assert (=> b!181594 m!209479))

(declare-fun m!209481 () Bool)

(assert (=> b!181595 m!209481))

(assert (=> start!18286 d!54367))

(declare-fun b!181608 () Bool)

(declare-fun e!119623 () SeekEntryResult!612)

(declare-fun e!119624 () SeekEntryResult!612)

(assert (=> b!181608 (= e!119623 e!119624)))

(declare-fun lt!89813 () (_ BitVec 64))

(declare-fun lt!89815 () SeekEntryResult!612)

(assert (=> b!181608 (= lt!89813 (select (arr!3640 (_keys!5624 thiss!1248)) (index!4620 lt!89815)))))

(declare-fun c!32531 () Bool)

(assert (=> b!181608 (= c!32531 (= lt!89813 key!828))))

(declare-fun d!54369 () Bool)

(declare-fun lt!89814 () SeekEntryResult!612)

(assert (=> d!54369 (and (or ((_ is Undefined!612) lt!89814) (not ((_ is Found!612) lt!89814)) (and (bvsge (index!4619 lt!89814) #b00000000000000000000000000000000) (bvslt (index!4619 lt!89814) (size!3950 (_keys!5624 thiss!1248))))) (or ((_ is Undefined!612) lt!89814) ((_ is Found!612) lt!89814) (not ((_ is MissingZero!612) lt!89814)) (and (bvsge (index!4618 lt!89814) #b00000000000000000000000000000000) (bvslt (index!4618 lt!89814) (size!3950 (_keys!5624 thiss!1248))))) (or ((_ is Undefined!612) lt!89814) ((_ is Found!612) lt!89814) ((_ is MissingZero!612) lt!89814) (not ((_ is MissingVacant!612) lt!89814)) (and (bvsge (index!4621 lt!89814) #b00000000000000000000000000000000) (bvslt (index!4621 lt!89814) (size!3950 (_keys!5624 thiss!1248))))) (or ((_ is Undefined!612) lt!89814) (ite ((_ is Found!612) lt!89814) (= (select (arr!3640 (_keys!5624 thiss!1248)) (index!4619 lt!89814)) key!828) (ite ((_ is MissingZero!612) lt!89814) (= (select (arr!3640 (_keys!5624 thiss!1248)) (index!4618 lt!89814)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!612) lt!89814) (= (select (arr!3640 (_keys!5624 thiss!1248)) (index!4621 lt!89814)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!54369 (= lt!89814 e!119623)))

(declare-fun c!32532 () Bool)

(assert (=> d!54369 (= c!32532 (and ((_ is Intermediate!612) lt!89815) (undefined!1424 lt!89815)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!7694 (_ BitVec 32)) SeekEntryResult!612)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!54369 (= lt!89815 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 key!828 (mask!8746 thiss!1248)) key!828 (_keys!5624 thiss!1248) (mask!8746 thiss!1248)))))

(assert (=> d!54369 (validMask!0 (mask!8746 thiss!1248))))

(assert (=> d!54369 (= (seekEntryOrOpen!0 key!828 (_keys!5624 thiss!1248) (mask!8746 thiss!1248)) lt!89814)))

(declare-fun b!181609 () Bool)

(assert (=> b!181609 (= e!119623 Undefined!612)))

(declare-fun b!181610 () Bool)

(declare-fun c!32530 () Bool)

(assert (=> b!181610 (= c!32530 (= lt!89813 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!119625 () SeekEntryResult!612)

(assert (=> b!181610 (= e!119624 e!119625)))

(declare-fun b!181611 () Bool)

(assert (=> b!181611 (= e!119625 (MissingZero!612 (index!4620 lt!89815)))))

(declare-fun b!181612 () Bool)

(assert (=> b!181612 (= e!119624 (Found!612 (index!4620 lt!89815)))))

(declare-fun b!181613 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!7694 (_ BitVec 32)) SeekEntryResult!612)

(assert (=> b!181613 (= e!119625 (seekKeyOrZeroReturnVacant!0 (x!19834 lt!89815) (index!4620 lt!89815) (index!4620 lt!89815) key!828 (_keys!5624 thiss!1248) (mask!8746 thiss!1248)))))

(assert (= (and d!54369 c!32532) b!181609))

(assert (= (and d!54369 (not c!32532)) b!181608))

(assert (= (and b!181608 c!32531) b!181612))

(assert (= (and b!181608 (not c!32531)) b!181610))

(assert (= (and b!181610 c!32530) b!181611))

(assert (= (and b!181610 (not c!32530)) b!181613))

(declare-fun m!209483 () Bool)

(assert (=> b!181608 m!209483))

(declare-fun m!209485 () Bool)

(assert (=> d!54369 m!209485))

(declare-fun m!209487 () Bool)

(assert (=> d!54369 m!209487))

(declare-fun m!209489 () Bool)

(assert (=> d!54369 m!209489))

(declare-fun m!209491 () Bool)

(assert (=> d!54369 m!209491))

(assert (=> d!54369 m!209443))

(assert (=> d!54369 m!209491))

(declare-fun m!209493 () Bool)

(assert (=> d!54369 m!209493))

(declare-fun m!209495 () Bool)

(assert (=> b!181613 m!209495))

(assert (=> b!181553 d!54369))

(declare-fun d!54371 () Bool)

(declare-fun e!119631 () Bool)

(assert (=> d!54371 e!119631))

(declare-fun res!85994 () Bool)

(assert (=> d!54371 (=> res!85994 e!119631)))

(declare-fun lt!89825 () Bool)

(assert (=> d!54371 (= res!85994 (not lt!89825))))

(declare-fun lt!89827 () Bool)

(assert (=> d!54371 (= lt!89825 lt!89827)))

(declare-datatypes ((Unit!5513 0))(
  ( (Unit!5514) )
))
(declare-fun lt!89826 () Unit!5513)

(declare-fun e!119630 () Unit!5513)

(assert (=> d!54371 (= lt!89826 e!119630)))

(declare-fun c!32535 () Bool)

(assert (=> d!54371 (= c!32535 lt!89827)))

(declare-fun containsKey!213 (List!2330 (_ BitVec 64)) Bool)

(assert (=> d!54371 (= lt!89827 (containsKey!213 (toList!1174 (getCurrentListMap!817 (_keys!5624 thiss!1248) (_values!3704 thiss!1248) (mask!8746 thiss!1248) (extraKeys!3458 thiss!1248) (zeroValue!3562 thiss!1248) (minValue!3562 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3721 thiss!1248))) key!828))))

(assert (=> d!54371 (= (contains!1248 (getCurrentListMap!817 (_keys!5624 thiss!1248) (_values!3704 thiss!1248) (mask!8746 thiss!1248) (extraKeys!3458 thiss!1248) (zeroValue!3562 thiss!1248) (minValue!3562 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3721 thiss!1248)) key!828) lt!89825)))

(declare-fun b!181620 () Bool)

(declare-fun lt!89824 () Unit!5513)

(assert (=> b!181620 (= e!119630 lt!89824)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!162 (List!2330 (_ BitVec 64)) Unit!5513)

(assert (=> b!181620 (= lt!89824 (lemmaContainsKeyImpliesGetValueByKeyDefined!162 (toList!1174 (getCurrentListMap!817 (_keys!5624 thiss!1248) (_values!3704 thiss!1248) (mask!8746 thiss!1248) (extraKeys!3458 thiss!1248) (zeroValue!3562 thiss!1248) (minValue!3562 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3721 thiss!1248))) key!828))))

(declare-datatypes ((Option!215 0))(
  ( (Some!214 (v!4068 V!5323)) (None!213) )
))
(declare-fun isDefined!163 (Option!215) Bool)

(declare-fun getValueByKey!209 (List!2330 (_ BitVec 64)) Option!215)

(assert (=> b!181620 (isDefined!163 (getValueByKey!209 (toList!1174 (getCurrentListMap!817 (_keys!5624 thiss!1248) (_values!3704 thiss!1248) (mask!8746 thiss!1248) (extraKeys!3458 thiss!1248) (zeroValue!3562 thiss!1248) (minValue!3562 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3721 thiss!1248))) key!828))))

(declare-fun b!181621 () Bool)

(declare-fun Unit!5515 () Unit!5513)

(assert (=> b!181621 (= e!119630 Unit!5515)))

(declare-fun b!181622 () Bool)

(assert (=> b!181622 (= e!119631 (isDefined!163 (getValueByKey!209 (toList!1174 (getCurrentListMap!817 (_keys!5624 thiss!1248) (_values!3704 thiss!1248) (mask!8746 thiss!1248) (extraKeys!3458 thiss!1248) (zeroValue!3562 thiss!1248) (minValue!3562 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3721 thiss!1248))) key!828)))))

(assert (= (and d!54371 c!32535) b!181620))

(assert (= (and d!54371 (not c!32535)) b!181621))

(assert (= (and d!54371 (not res!85994)) b!181622))

(declare-fun m!209497 () Bool)

(assert (=> d!54371 m!209497))

(declare-fun m!209499 () Bool)

(assert (=> b!181620 m!209499))

(declare-fun m!209501 () Bool)

(assert (=> b!181620 m!209501))

(assert (=> b!181620 m!209501))

(declare-fun m!209503 () Bool)

(assert (=> b!181620 m!209503))

(assert (=> b!181622 m!209501))

(assert (=> b!181622 m!209501))

(assert (=> b!181622 m!209503))

(assert (=> b!181558 d!54371))

(declare-fun b!181665 () Bool)

(declare-fun e!119662 () Bool)

(declare-fun call!18356 () Bool)

(assert (=> b!181665 (= e!119662 (not call!18356))))

(declare-fun b!181666 () Bool)

(declare-fun res!86021 () Bool)

(declare-fun e!119660 () Bool)

(assert (=> b!181666 (=> (not res!86021) (not e!119660))))

(assert (=> b!181666 (= res!86021 e!119662)))

(declare-fun c!32548 () Bool)

(assert (=> b!181666 (= c!32548 (not (= (bvand (extraKeys!3458 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!181667 () Bool)

(declare-fun c!32550 () Bool)

(assert (=> b!181667 (= c!32550 (and (not (= (bvand (extraKeys!3458 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (extraKeys!3458 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun e!119670 () ListLongMap!2317)

(declare-fun e!119659 () ListLongMap!2317)

(assert (=> b!181667 (= e!119670 e!119659)))

(declare-fun b!181668 () Bool)

(declare-fun e!119658 () Bool)

(declare-fun lt!89890 () ListLongMap!2317)

(declare-fun apply!153 (ListLongMap!2317 (_ BitVec 64)) V!5323)

(declare-fun get!2083 (ValueCell!1785 V!5323) V!5323)

(declare-fun dynLambda!491 (Int (_ BitVec 64)) V!5323)

(assert (=> b!181668 (= e!119658 (= (apply!153 lt!89890 (select (arr!3640 (_keys!5624 thiss!1248)) #b00000000000000000000000000000000)) (get!2083 (select (arr!3641 (_values!3704 thiss!1248)) #b00000000000000000000000000000000) (dynLambda!491 (defaultEntry!3721 thiss!1248) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!181668 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!3951 (_values!3704 thiss!1248))))))

(assert (=> b!181668 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!3950 (_keys!5624 thiss!1248))))))

(declare-fun bm!18353 () Bool)

(assert (=> bm!18353 (= call!18356 (contains!1248 lt!89890 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!181669 () Bool)

(declare-fun e!119667 () Bool)

(assert (=> b!181669 (= e!119667 e!119658)))

(declare-fun res!86017 () Bool)

(assert (=> b!181669 (=> (not res!86017) (not e!119658))))

(assert (=> b!181669 (= res!86017 (contains!1248 lt!89890 (select (arr!3640 (_keys!5624 thiss!1248)) #b00000000000000000000000000000000)))))

(assert (=> b!181669 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!3950 (_keys!5624 thiss!1248))))))

(declare-fun b!181670 () Bool)

(declare-fun e!119669 () ListLongMap!2317)

(declare-fun call!18360 () ListLongMap!2317)

(declare-fun +!268 (ListLongMap!2317 tuple2!3386) ListLongMap!2317)

(assert (=> b!181670 (= e!119669 (+!268 call!18360 (tuple2!3387 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3562 thiss!1248))))))

(declare-fun bm!18354 () Bool)

(declare-fun call!18358 () Bool)

(assert (=> bm!18354 (= call!18358 (contains!1248 lt!89890 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!181671 () Bool)

(declare-fun e!119664 () Unit!5513)

(declare-fun Unit!5516 () Unit!5513)

(assert (=> b!181671 (= e!119664 Unit!5516)))

(declare-fun bm!18355 () Bool)

(declare-fun call!18361 () ListLongMap!2317)

(declare-fun call!18362 () ListLongMap!2317)

(assert (=> bm!18355 (= call!18361 call!18362)))

(declare-fun b!181672 () Bool)

(declare-fun e!119663 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!181672 (= e!119663 (validKeyInArray!0 (select (arr!3640 (_keys!5624 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun bm!18356 () Bool)

(declare-fun call!18359 () ListLongMap!2317)

(assert (=> bm!18356 (= call!18359 call!18361)))

(declare-fun b!181674 () Bool)

(assert (=> b!181674 (= e!119669 e!119670)))

(declare-fun c!32551 () Bool)

(assert (=> b!181674 (= c!32551 (and (not (= (bvand (extraKeys!3458 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (extraKeys!3458 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!181675 () Bool)

(declare-fun e!119668 () Bool)

(assert (=> b!181675 (= e!119660 e!119668)))

(declare-fun c!32552 () Bool)

(assert (=> b!181675 (= c!32552 (not (= (bvand (extraKeys!3458 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!181676 () Bool)

(declare-fun e!119666 () Bool)

(assert (=> b!181676 (= e!119666 (validKeyInArray!0 (select (arr!3640 (_keys!5624 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun b!181677 () Bool)

(assert (=> b!181677 (= e!119668 (not call!18358))))

(declare-fun b!181678 () Bool)

(declare-fun call!18357 () ListLongMap!2317)

(assert (=> b!181678 (= e!119659 call!18357)))

(declare-fun b!181679 () Bool)

(declare-fun e!119665 () Bool)

(assert (=> b!181679 (= e!119665 (= (apply!153 lt!89890 #b0000000000000000000000000000000000000000000000000000000000000000) (zeroValue!3562 thiss!1248)))))

(declare-fun b!181680 () Bool)

(assert (=> b!181680 (= e!119670 call!18357)))

(declare-fun b!181681 () Bool)

(assert (=> b!181681 (= e!119659 call!18359)))

(declare-fun bm!18357 () Bool)

(assert (=> bm!18357 (= call!18357 call!18360)))

(declare-fun c!32553 () Bool)

(declare-fun bm!18358 () Bool)

(assert (=> bm!18358 (= call!18360 (+!268 (ite c!32553 call!18362 (ite c!32551 call!18361 call!18359)) (ite (or c!32553 c!32551) (tuple2!3387 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3562 thiss!1248)) (tuple2!3387 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3562 thiss!1248)))))))

(declare-fun b!181682 () Bool)

(declare-fun res!86018 () Bool)

(assert (=> b!181682 (=> (not res!86018) (not e!119660))))

(assert (=> b!181682 (= res!86018 e!119667)))

(declare-fun res!86016 () Bool)

(assert (=> b!181682 (=> res!86016 e!119667)))

(assert (=> b!181682 (= res!86016 (not e!119663))))

(declare-fun res!86019 () Bool)

(assert (=> b!181682 (=> (not res!86019) (not e!119663))))

(assert (=> b!181682 (= res!86019 (bvslt #b00000000000000000000000000000000 (size!3950 (_keys!5624 thiss!1248))))))

(declare-fun b!181683 () Bool)

(declare-fun lt!89877 () Unit!5513)

(assert (=> b!181683 (= e!119664 lt!89877)))

(declare-fun lt!89887 () ListLongMap!2317)

(declare-fun getCurrentListMapNoExtraKeys!183 (array!7694 array!7696 (_ BitVec 32) (_ BitVec 32) V!5323 V!5323 (_ BitVec 32) Int) ListLongMap!2317)

(assert (=> b!181683 (= lt!89887 (getCurrentListMapNoExtraKeys!183 (_keys!5624 thiss!1248) (_values!3704 thiss!1248) (mask!8746 thiss!1248) (extraKeys!3458 thiss!1248) (zeroValue!3562 thiss!1248) (minValue!3562 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3721 thiss!1248)))))

(declare-fun lt!89872 () (_ BitVec 64))

(assert (=> b!181683 (= lt!89872 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!89882 () (_ BitVec 64))

(assert (=> b!181683 (= lt!89882 (select (arr!3640 (_keys!5624 thiss!1248)) #b00000000000000000000000000000000))))

(declare-fun lt!89878 () Unit!5513)

(declare-fun addStillContains!129 (ListLongMap!2317 (_ BitVec 64) V!5323 (_ BitVec 64)) Unit!5513)

(assert (=> b!181683 (= lt!89878 (addStillContains!129 lt!89887 lt!89872 (zeroValue!3562 thiss!1248) lt!89882))))

(assert (=> b!181683 (contains!1248 (+!268 lt!89887 (tuple2!3387 lt!89872 (zeroValue!3562 thiss!1248))) lt!89882)))

(declare-fun lt!89884 () Unit!5513)

(assert (=> b!181683 (= lt!89884 lt!89878)))

(declare-fun lt!89885 () ListLongMap!2317)

(assert (=> b!181683 (= lt!89885 (getCurrentListMapNoExtraKeys!183 (_keys!5624 thiss!1248) (_values!3704 thiss!1248) (mask!8746 thiss!1248) (extraKeys!3458 thiss!1248) (zeroValue!3562 thiss!1248) (minValue!3562 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3721 thiss!1248)))))

(declare-fun lt!89876 () (_ BitVec 64))

(assert (=> b!181683 (= lt!89876 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!89874 () (_ BitVec 64))

(assert (=> b!181683 (= lt!89874 (select (arr!3640 (_keys!5624 thiss!1248)) #b00000000000000000000000000000000))))

(declare-fun lt!89879 () Unit!5513)

(declare-fun addApplyDifferent!129 (ListLongMap!2317 (_ BitVec 64) V!5323 (_ BitVec 64)) Unit!5513)

(assert (=> b!181683 (= lt!89879 (addApplyDifferent!129 lt!89885 lt!89876 (minValue!3562 thiss!1248) lt!89874))))

(assert (=> b!181683 (= (apply!153 (+!268 lt!89885 (tuple2!3387 lt!89876 (minValue!3562 thiss!1248))) lt!89874) (apply!153 lt!89885 lt!89874))))

(declare-fun lt!89883 () Unit!5513)

(assert (=> b!181683 (= lt!89883 lt!89879)))

(declare-fun lt!89873 () ListLongMap!2317)

(assert (=> b!181683 (= lt!89873 (getCurrentListMapNoExtraKeys!183 (_keys!5624 thiss!1248) (_values!3704 thiss!1248) (mask!8746 thiss!1248) (extraKeys!3458 thiss!1248) (zeroValue!3562 thiss!1248) (minValue!3562 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3721 thiss!1248)))))

(declare-fun lt!89893 () (_ BitVec 64))

(assert (=> b!181683 (= lt!89893 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!89891 () (_ BitVec 64))

(assert (=> b!181683 (= lt!89891 (select (arr!3640 (_keys!5624 thiss!1248)) #b00000000000000000000000000000000))))

(declare-fun lt!89875 () Unit!5513)

(assert (=> b!181683 (= lt!89875 (addApplyDifferent!129 lt!89873 lt!89893 (zeroValue!3562 thiss!1248) lt!89891))))

(assert (=> b!181683 (= (apply!153 (+!268 lt!89873 (tuple2!3387 lt!89893 (zeroValue!3562 thiss!1248))) lt!89891) (apply!153 lt!89873 lt!89891))))

(declare-fun lt!89880 () Unit!5513)

(assert (=> b!181683 (= lt!89880 lt!89875)))

(declare-fun lt!89888 () ListLongMap!2317)

(assert (=> b!181683 (= lt!89888 (getCurrentListMapNoExtraKeys!183 (_keys!5624 thiss!1248) (_values!3704 thiss!1248) (mask!8746 thiss!1248) (extraKeys!3458 thiss!1248) (zeroValue!3562 thiss!1248) (minValue!3562 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3721 thiss!1248)))))

(declare-fun lt!89881 () (_ BitVec 64))

(assert (=> b!181683 (= lt!89881 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!89892 () (_ BitVec 64))

(assert (=> b!181683 (= lt!89892 (select (arr!3640 (_keys!5624 thiss!1248)) #b00000000000000000000000000000000))))

(assert (=> b!181683 (= lt!89877 (addApplyDifferent!129 lt!89888 lt!89881 (minValue!3562 thiss!1248) lt!89892))))

(assert (=> b!181683 (= (apply!153 (+!268 lt!89888 (tuple2!3387 lt!89881 (minValue!3562 thiss!1248))) lt!89892) (apply!153 lt!89888 lt!89892))))

(declare-fun b!181684 () Bool)

(declare-fun e!119661 () Bool)

(assert (=> b!181684 (= e!119668 e!119661)))

(declare-fun res!86014 () Bool)

(assert (=> b!181684 (= res!86014 call!18358)))

(assert (=> b!181684 (=> (not res!86014) (not e!119661))))

(declare-fun bm!18359 () Bool)

(assert (=> bm!18359 (= call!18362 (getCurrentListMapNoExtraKeys!183 (_keys!5624 thiss!1248) (_values!3704 thiss!1248) (mask!8746 thiss!1248) (extraKeys!3458 thiss!1248) (zeroValue!3562 thiss!1248) (minValue!3562 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3721 thiss!1248)))))

(declare-fun b!181685 () Bool)

(assert (=> b!181685 (= e!119662 e!119665)))

(declare-fun res!86020 () Bool)

(assert (=> b!181685 (= res!86020 call!18356)))

(assert (=> b!181685 (=> (not res!86020) (not e!119665))))

(declare-fun b!181673 () Bool)

(assert (=> b!181673 (= e!119661 (= (apply!153 lt!89890 #b1000000000000000000000000000000000000000000000000000000000000000) (minValue!3562 thiss!1248)))))

(declare-fun d!54373 () Bool)

(assert (=> d!54373 e!119660))

(declare-fun res!86015 () Bool)

(assert (=> d!54373 (=> (not res!86015) (not e!119660))))

(assert (=> d!54373 (= res!86015 (or (bvsge #b00000000000000000000000000000000 (size!3950 (_keys!5624 thiss!1248))) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!3950 (_keys!5624 thiss!1248))))))))

(declare-fun lt!89889 () ListLongMap!2317)

(assert (=> d!54373 (= lt!89890 lt!89889)))

(declare-fun lt!89886 () Unit!5513)

(assert (=> d!54373 (= lt!89886 e!119664)))

(declare-fun c!32549 () Bool)

(assert (=> d!54373 (= c!32549 e!119666)))

(declare-fun res!86013 () Bool)

(assert (=> d!54373 (=> (not res!86013) (not e!119666))))

(assert (=> d!54373 (= res!86013 (bvslt #b00000000000000000000000000000000 (size!3950 (_keys!5624 thiss!1248))))))

(assert (=> d!54373 (= lt!89889 e!119669)))

(assert (=> d!54373 (= c!32553 (and (not (= (bvand (extraKeys!3458 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!3458 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!54373 (validMask!0 (mask!8746 thiss!1248))))

(assert (=> d!54373 (= (getCurrentListMap!817 (_keys!5624 thiss!1248) (_values!3704 thiss!1248) (mask!8746 thiss!1248) (extraKeys!3458 thiss!1248) (zeroValue!3562 thiss!1248) (minValue!3562 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3721 thiss!1248)) lt!89890)))

(assert (= (and d!54373 c!32553) b!181670))

(assert (= (and d!54373 (not c!32553)) b!181674))

(assert (= (and b!181674 c!32551) b!181680))

(assert (= (and b!181674 (not c!32551)) b!181667))

(assert (= (and b!181667 c!32550) b!181678))

(assert (= (and b!181667 (not c!32550)) b!181681))

(assert (= (or b!181678 b!181681) bm!18356))

(assert (= (or b!181680 bm!18356) bm!18355))

(assert (= (or b!181680 b!181678) bm!18357))

(assert (= (or b!181670 bm!18355) bm!18359))

(assert (= (or b!181670 bm!18357) bm!18358))

(assert (= (and d!54373 res!86013) b!181676))

(assert (= (and d!54373 c!32549) b!181683))

(assert (= (and d!54373 (not c!32549)) b!181671))

(assert (= (and d!54373 res!86015) b!181682))

(assert (= (and b!181682 res!86019) b!181672))

(assert (= (and b!181682 (not res!86016)) b!181669))

(assert (= (and b!181669 res!86017) b!181668))

(assert (= (and b!181682 res!86018) b!181666))

(assert (= (and b!181666 c!32548) b!181685))

(assert (= (and b!181666 (not c!32548)) b!181665))

(assert (= (and b!181685 res!86020) b!181679))

(assert (= (or b!181685 b!181665) bm!18353))

(assert (= (and b!181666 res!86021) b!181675))

(assert (= (and b!181675 c!32552) b!181684))

(assert (= (and b!181675 (not c!32552)) b!181677))

(assert (= (and b!181684 res!86014) b!181673))

(assert (= (or b!181684 b!181677) bm!18354))

(declare-fun b_lambda!7181 () Bool)

(assert (=> (not b_lambda!7181) (not b!181668)))

(declare-fun t!7197 () Bool)

(declare-fun tb!2825 () Bool)

(assert (=> (and b!181556 (= (defaultEntry!3721 thiss!1248) (defaultEntry!3721 thiss!1248)) t!7197) tb!2825))

(declare-fun result!4737 () Bool)

(assert (=> tb!2825 (= result!4737 tp_is_empty!4257)))

(assert (=> b!181668 t!7197))

(declare-fun b_and!11057 () Bool)

(assert (= b_and!11053 (and (=> t!7197 result!4737) b_and!11057)))

(declare-fun m!209505 () Bool)

(assert (=> b!181679 m!209505))

(declare-fun m!209507 () Bool)

(assert (=> bm!18359 m!209507))

(declare-fun m!209509 () Bool)

(assert (=> b!181673 m!209509))

(declare-fun m!209511 () Bool)

(assert (=> b!181672 m!209511))

(assert (=> b!181672 m!209511))

(declare-fun m!209513 () Bool)

(assert (=> b!181672 m!209513))

(declare-fun m!209515 () Bool)

(assert (=> b!181670 m!209515))

(declare-fun m!209517 () Bool)

(assert (=> bm!18353 m!209517))

(assert (=> d!54373 m!209443))

(declare-fun m!209519 () Bool)

(assert (=> b!181683 m!209519))

(declare-fun m!209521 () Bool)

(assert (=> b!181683 m!209521))

(declare-fun m!209523 () Bool)

(assert (=> b!181683 m!209523))

(declare-fun m!209525 () Bool)

(assert (=> b!181683 m!209525))

(assert (=> b!181683 m!209519))

(declare-fun m!209527 () Bool)

(assert (=> b!181683 m!209527))

(declare-fun m!209529 () Bool)

(assert (=> b!181683 m!209529))

(declare-fun m!209531 () Bool)

(assert (=> b!181683 m!209531))

(declare-fun m!209533 () Bool)

(assert (=> b!181683 m!209533))

(declare-fun m!209535 () Bool)

(assert (=> b!181683 m!209535))

(declare-fun m!209537 () Bool)

(assert (=> b!181683 m!209537))

(declare-fun m!209539 () Bool)

(assert (=> b!181683 m!209539))

(assert (=> b!181683 m!209537))

(assert (=> b!181683 m!209529))

(declare-fun m!209541 () Bool)

(assert (=> b!181683 m!209541))

(declare-fun m!209543 () Bool)

(assert (=> b!181683 m!209543))

(declare-fun m!209545 () Bool)

(assert (=> b!181683 m!209545))

(assert (=> b!181683 m!209507))

(assert (=> b!181683 m!209523))

(declare-fun m!209547 () Bool)

(assert (=> b!181683 m!209547))

(assert (=> b!181683 m!209511))

(declare-fun m!209549 () Bool)

(assert (=> b!181668 m!209549))

(declare-fun m!209551 () Bool)

(assert (=> b!181668 m!209551))

(assert (=> b!181668 m!209549))

(assert (=> b!181668 m!209551))

(declare-fun m!209553 () Bool)

(assert (=> b!181668 m!209553))

(assert (=> b!181668 m!209511))

(assert (=> b!181668 m!209511))

(declare-fun m!209555 () Bool)

(assert (=> b!181668 m!209555))

(declare-fun m!209557 () Bool)

(assert (=> bm!18358 m!209557))

(assert (=> b!181676 m!209511))

(assert (=> b!181676 m!209511))

(assert (=> b!181676 m!209513))

(declare-fun m!209559 () Bool)

(assert (=> bm!18354 m!209559))

(assert (=> b!181669 m!209511))

(assert (=> b!181669 m!209511))

(declare-fun m!209561 () Bool)

(assert (=> b!181669 m!209561))

(assert (=> b!181558 d!54373))

(declare-fun b!181694 () Bool)

(declare-fun e!119675 () Bool)

(assert (=> b!181694 (= e!119675 tp_is_empty!4257)))

(declare-fun condMapEmpty!7305 () Bool)

(declare-fun mapDefault!7305 () ValueCell!1785)

(assert (=> mapNonEmpty!7299 (= condMapEmpty!7305 (= mapRest!7299 ((as const (Array (_ BitVec 32) ValueCell!1785)) mapDefault!7305)))))

(declare-fun e!119676 () Bool)

(declare-fun mapRes!7305 () Bool)

(assert (=> mapNonEmpty!7299 (= tp!16206 (and e!119676 mapRes!7305))))

(declare-fun b!181695 () Bool)

(assert (=> b!181695 (= e!119676 tp_is_empty!4257)))

(declare-fun mapNonEmpty!7305 () Bool)

(declare-fun tp!16215 () Bool)

(assert (=> mapNonEmpty!7305 (= mapRes!7305 (and tp!16215 e!119675))))

(declare-fun mapValue!7305 () ValueCell!1785)

(declare-fun mapKey!7305 () (_ BitVec 32))

(declare-fun mapRest!7305 () (Array (_ BitVec 32) ValueCell!1785))

(assert (=> mapNonEmpty!7305 (= mapRest!7299 (store mapRest!7305 mapKey!7305 mapValue!7305))))

(declare-fun mapIsEmpty!7305 () Bool)

(assert (=> mapIsEmpty!7305 mapRes!7305))

(assert (= (and mapNonEmpty!7299 condMapEmpty!7305) mapIsEmpty!7305))

(assert (= (and mapNonEmpty!7299 (not condMapEmpty!7305)) mapNonEmpty!7305))

(assert (= (and mapNonEmpty!7305 ((_ is ValueCellFull!1785) mapValue!7305)) b!181694))

(assert (= (and mapNonEmpty!7299 ((_ is ValueCellFull!1785) mapDefault!7305)) b!181695))

(declare-fun m!209563 () Bool)

(assert (=> mapNonEmpty!7305 m!209563))

(declare-fun b_lambda!7183 () Bool)

(assert (= b_lambda!7181 (or (and b!181556 b_free!4485) b_lambda!7183)))

(check-sat (not b!181620) (not d!54369) (not b!181670) (not d!54371) (not b!181673) (not b_next!4485) (not b!181622) (not b!181668) (not bm!18354) (not bm!18359) (not mapNonEmpty!7305) (not b!181594) (not b!181679) (not b!181669) tp_is_empty!4257 (not b!181613) (not b_lambda!7183) (not b!181672) (not bm!18353) (not b!181683) (not b!181595) (not bm!18358) (not b!181593) (not d!54373) (not d!54367) b_and!11057 (not b!181676))
(check-sat b_and!11057 (not b_next!4485))
(get-model)

(declare-fun b!181720 () Bool)

(assert (=> b!181720 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!3950 (_keys!5624 thiss!1248))))))

(assert (=> b!181720 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!3951 (_values!3704 thiss!1248))))))

(declare-fun e!119691 () Bool)

(declare-fun lt!89908 () ListLongMap!2317)

(assert (=> b!181720 (= e!119691 (= (apply!153 lt!89908 (select (arr!3640 (_keys!5624 thiss!1248)) #b00000000000000000000000000000000)) (get!2083 (select (arr!3641 (_values!3704 thiss!1248)) #b00000000000000000000000000000000) (dynLambda!491 (defaultEntry!3721 thiss!1248) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!181721 () Bool)

(declare-fun e!119692 () Bool)

(assert (=> b!181721 (= e!119692 e!119691)))

(assert (=> b!181721 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!3950 (_keys!5624 thiss!1248))))))

(declare-fun res!86033 () Bool)

(assert (=> b!181721 (= res!86033 (contains!1248 lt!89908 (select (arr!3640 (_keys!5624 thiss!1248)) #b00000000000000000000000000000000)))))

(assert (=> b!181721 (=> (not res!86033) (not e!119691))))

(declare-fun b!181722 () Bool)

(declare-fun e!119695 () Bool)

(assert (=> b!181722 (= e!119695 (= lt!89908 (getCurrentListMapNoExtraKeys!183 (_keys!5624 thiss!1248) (_values!3704 thiss!1248) (mask!8746 thiss!1248) (extraKeys!3458 thiss!1248) (zeroValue!3562 thiss!1248) (minValue!3562 thiss!1248) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (defaultEntry!3721 thiss!1248))))))

(declare-fun d!54375 () Bool)

(declare-fun e!119697 () Bool)

(assert (=> d!54375 e!119697))

(declare-fun res!86032 () Bool)

(assert (=> d!54375 (=> (not res!86032) (not e!119697))))

(assert (=> d!54375 (= res!86032 (not (contains!1248 lt!89908 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun e!119694 () ListLongMap!2317)

(assert (=> d!54375 (= lt!89908 e!119694)))

(declare-fun c!32563 () Bool)

(assert (=> d!54375 (= c!32563 (bvsge #b00000000000000000000000000000000 (size!3950 (_keys!5624 thiss!1248))))))

(assert (=> d!54375 (validMask!0 (mask!8746 thiss!1248))))

(assert (=> d!54375 (= (getCurrentListMapNoExtraKeys!183 (_keys!5624 thiss!1248) (_values!3704 thiss!1248) (mask!8746 thiss!1248) (extraKeys!3458 thiss!1248) (zeroValue!3562 thiss!1248) (minValue!3562 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3721 thiss!1248)) lt!89908)))

(declare-fun b!181723 () Bool)

(declare-fun res!86031 () Bool)

(assert (=> b!181723 (=> (not res!86031) (not e!119697))))

(assert (=> b!181723 (= res!86031 (not (contains!1248 lt!89908 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!181724 () Bool)

(declare-fun isEmpty!464 (ListLongMap!2317) Bool)

(assert (=> b!181724 (= e!119695 (isEmpty!464 lt!89908))))

(declare-fun b!181725 () Bool)

(declare-fun lt!89910 () Unit!5513)

(declare-fun lt!89912 () Unit!5513)

(assert (=> b!181725 (= lt!89910 lt!89912)))

(declare-fun lt!89909 () (_ BitVec 64))

(declare-fun lt!89913 () ListLongMap!2317)

(declare-fun lt!89911 () (_ BitVec 64))

(declare-fun lt!89914 () V!5323)

(assert (=> b!181725 (not (contains!1248 (+!268 lt!89913 (tuple2!3387 lt!89909 lt!89914)) lt!89911))))

(declare-fun addStillNotContains!85 (ListLongMap!2317 (_ BitVec 64) V!5323 (_ BitVec 64)) Unit!5513)

(assert (=> b!181725 (= lt!89912 (addStillNotContains!85 lt!89913 lt!89909 lt!89914 lt!89911))))

(assert (=> b!181725 (= lt!89911 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!181725 (= lt!89914 (get!2083 (select (arr!3641 (_values!3704 thiss!1248)) #b00000000000000000000000000000000) (dynLambda!491 (defaultEntry!3721 thiss!1248) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!181725 (= lt!89909 (select (arr!3640 (_keys!5624 thiss!1248)) #b00000000000000000000000000000000))))

(declare-fun call!18365 () ListLongMap!2317)

(assert (=> b!181725 (= lt!89913 call!18365)))

(declare-fun e!119696 () ListLongMap!2317)

(assert (=> b!181725 (= e!119696 (+!268 call!18365 (tuple2!3387 (select (arr!3640 (_keys!5624 thiss!1248)) #b00000000000000000000000000000000) (get!2083 (select (arr!3641 (_values!3704 thiss!1248)) #b00000000000000000000000000000000) (dynLambda!491 (defaultEntry!3721 thiss!1248) #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!181726 () Bool)

(declare-fun e!119693 () Bool)

(assert (=> b!181726 (= e!119693 (validKeyInArray!0 (select (arr!3640 (_keys!5624 thiss!1248)) #b00000000000000000000000000000000)))))

(assert (=> b!181726 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(declare-fun b!181727 () Bool)

(assert (=> b!181727 (= e!119697 e!119692)))

(declare-fun c!32565 () Bool)

(assert (=> b!181727 (= c!32565 e!119693)))

(declare-fun res!86030 () Bool)

(assert (=> b!181727 (=> (not res!86030) (not e!119693))))

(assert (=> b!181727 (= res!86030 (bvslt #b00000000000000000000000000000000 (size!3950 (_keys!5624 thiss!1248))))))

(declare-fun bm!18362 () Bool)

(assert (=> bm!18362 (= call!18365 (getCurrentListMapNoExtraKeys!183 (_keys!5624 thiss!1248) (_values!3704 thiss!1248) (mask!8746 thiss!1248) (extraKeys!3458 thiss!1248) (zeroValue!3562 thiss!1248) (minValue!3562 thiss!1248) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (defaultEntry!3721 thiss!1248)))))

(declare-fun b!181728 () Bool)

(assert (=> b!181728 (= e!119696 call!18365)))

(declare-fun b!181729 () Bool)

(assert (=> b!181729 (= e!119692 e!119695)))

(declare-fun c!32564 () Bool)

(assert (=> b!181729 (= c!32564 (bvslt #b00000000000000000000000000000000 (size!3950 (_keys!5624 thiss!1248))))))

(declare-fun b!181730 () Bool)

(assert (=> b!181730 (= e!119694 e!119696)))

(declare-fun c!32562 () Bool)

(assert (=> b!181730 (= c!32562 (validKeyInArray!0 (select (arr!3640 (_keys!5624 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun b!181731 () Bool)

(assert (=> b!181731 (= e!119694 (ListLongMap!2318 Nil!2327))))

(assert (= (and d!54375 c!32563) b!181731))

(assert (= (and d!54375 (not c!32563)) b!181730))

(assert (= (and b!181730 c!32562) b!181725))

(assert (= (and b!181730 (not c!32562)) b!181728))

(assert (= (or b!181725 b!181728) bm!18362))

(assert (= (and d!54375 res!86032) b!181723))

(assert (= (and b!181723 res!86031) b!181727))

(assert (= (and b!181727 res!86030) b!181726))

(assert (= (and b!181727 c!32565) b!181721))

(assert (= (and b!181727 (not c!32565)) b!181729))

(assert (= (and b!181721 res!86033) b!181720))

(assert (= (and b!181729 c!32564) b!181722))

(assert (= (and b!181729 (not c!32564)) b!181724))

(declare-fun b_lambda!7185 () Bool)

(assert (=> (not b_lambda!7185) (not b!181720)))

(assert (=> b!181720 t!7197))

(declare-fun b_and!11059 () Bool)

(assert (= b_and!11057 (and (=> t!7197 result!4737) b_and!11059)))

(declare-fun b_lambda!7187 () Bool)

(assert (=> (not b_lambda!7187) (not b!181725)))

(assert (=> b!181725 t!7197))

(declare-fun b_and!11061 () Bool)

(assert (= b_and!11059 (and (=> t!7197 result!4737) b_and!11061)))

(assert (=> b!181721 m!209511))

(assert (=> b!181721 m!209511))

(declare-fun m!209565 () Bool)

(assert (=> b!181721 m!209565))

(declare-fun m!209567 () Bool)

(assert (=> b!181724 m!209567))

(declare-fun m!209569 () Bool)

(assert (=> b!181722 m!209569))

(assert (=> b!181726 m!209511))

(assert (=> b!181726 m!209511))

(assert (=> b!181726 m!209513))

(declare-fun m!209571 () Bool)

(assert (=> d!54375 m!209571))

(assert (=> d!54375 m!209443))

(assert (=> b!181730 m!209511))

(assert (=> b!181730 m!209511))

(assert (=> b!181730 m!209513))

(assert (=> b!181720 m!209549))

(assert (=> b!181720 m!209551))

(assert (=> b!181720 m!209553))

(assert (=> b!181720 m!209551))

(assert (=> b!181720 m!209511))

(declare-fun m!209573 () Bool)

(assert (=> b!181720 m!209573))

(assert (=> b!181720 m!209511))

(assert (=> b!181720 m!209549))

(declare-fun m!209575 () Bool)

(assert (=> b!181723 m!209575))

(assert (=> bm!18362 m!209569))

(declare-fun m!209577 () Bool)

(assert (=> b!181725 m!209577))

(assert (=> b!181725 m!209549))

(assert (=> b!181725 m!209551))

(assert (=> b!181725 m!209553))

(assert (=> b!181725 m!209551))

(declare-fun m!209579 () Bool)

(assert (=> b!181725 m!209579))

(assert (=> b!181725 m!209579))

(declare-fun m!209581 () Bool)

(assert (=> b!181725 m!209581))

(assert (=> b!181725 m!209511))

(declare-fun m!209583 () Bool)

(assert (=> b!181725 m!209583))

(assert (=> b!181725 m!209549))

(assert (=> b!181683 d!54375))

(declare-fun d!54377 () Bool)

(declare-fun get!2084 (Option!215) V!5323)

(assert (=> d!54377 (= (apply!153 (+!268 lt!89873 (tuple2!3387 lt!89893 (zeroValue!3562 thiss!1248))) lt!89891) (get!2084 (getValueByKey!209 (toList!1174 (+!268 lt!89873 (tuple2!3387 lt!89893 (zeroValue!3562 thiss!1248)))) lt!89891)))))

(declare-fun bs!7412 () Bool)

(assert (= bs!7412 d!54377))

(declare-fun m!209585 () Bool)

(assert (=> bs!7412 m!209585))

(assert (=> bs!7412 m!209585))

(declare-fun m!209587 () Bool)

(assert (=> bs!7412 m!209587))

(assert (=> b!181683 d!54377))

(declare-fun d!54379 () Bool)

(assert (=> d!54379 (= (apply!153 (+!268 lt!89888 (tuple2!3387 lt!89881 (minValue!3562 thiss!1248))) lt!89892) (get!2084 (getValueByKey!209 (toList!1174 (+!268 lt!89888 (tuple2!3387 lt!89881 (minValue!3562 thiss!1248)))) lt!89892)))))

(declare-fun bs!7413 () Bool)

(assert (= bs!7413 d!54379))

(declare-fun m!209589 () Bool)

(assert (=> bs!7413 m!209589))

(assert (=> bs!7413 m!209589))

(declare-fun m!209591 () Bool)

(assert (=> bs!7413 m!209591))

(assert (=> b!181683 d!54379))

(declare-fun d!54381 () Bool)

(assert (=> d!54381 (= (apply!153 lt!89873 lt!89891) (get!2084 (getValueByKey!209 (toList!1174 lt!89873) lt!89891)))))

(declare-fun bs!7414 () Bool)

(assert (= bs!7414 d!54381))

(declare-fun m!209593 () Bool)

(assert (=> bs!7414 m!209593))

(assert (=> bs!7414 m!209593))

(declare-fun m!209595 () Bool)

(assert (=> bs!7414 m!209595))

(assert (=> b!181683 d!54381))

(declare-fun d!54383 () Bool)

(declare-fun e!119700 () Bool)

(assert (=> d!54383 e!119700))

(declare-fun res!86038 () Bool)

(assert (=> d!54383 (=> (not res!86038) (not e!119700))))

(declare-fun lt!89926 () ListLongMap!2317)

(assert (=> d!54383 (= res!86038 (contains!1248 lt!89926 (_1!1703 (tuple2!3387 lt!89872 (zeroValue!3562 thiss!1248)))))))

(declare-fun lt!89925 () List!2330)

(assert (=> d!54383 (= lt!89926 (ListLongMap!2318 lt!89925))))

(declare-fun lt!89924 () Unit!5513)

(declare-fun lt!89923 () Unit!5513)

(assert (=> d!54383 (= lt!89924 lt!89923)))

(assert (=> d!54383 (= (getValueByKey!209 lt!89925 (_1!1703 (tuple2!3387 lt!89872 (zeroValue!3562 thiss!1248)))) (Some!214 (_2!1703 (tuple2!3387 lt!89872 (zeroValue!3562 thiss!1248)))))))

(declare-fun lemmaContainsTupThenGetReturnValue!112 (List!2330 (_ BitVec 64) V!5323) Unit!5513)

(assert (=> d!54383 (= lt!89923 (lemmaContainsTupThenGetReturnValue!112 lt!89925 (_1!1703 (tuple2!3387 lt!89872 (zeroValue!3562 thiss!1248))) (_2!1703 (tuple2!3387 lt!89872 (zeroValue!3562 thiss!1248)))))))

(declare-fun insertStrictlySorted!114 (List!2330 (_ BitVec 64) V!5323) List!2330)

(assert (=> d!54383 (= lt!89925 (insertStrictlySorted!114 (toList!1174 lt!89887) (_1!1703 (tuple2!3387 lt!89872 (zeroValue!3562 thiss!1248))) (_2!1703 (tuple2!3387 lt!89872 (zeroValue!3562 thiss!1248)))))))

(assert (=> d!54383 (= (+!268 lt!89887 (tuple2!3387 lt!89872 (zeroValue!3562 thiss!1248))) lt!89926)))

(declare-fun b!181736 () Bool)

(declare-fun res!86039 () Bool)

(assert (=> b!181736 (=> (not res!86039) (not e!119700))))

(assert (=> b!181736 (= res!86039 (= (getValueByKey!209 (toList!1174 lt!89926) (_1!1703 (tuple2!3387 lt!89872 (zeroValue!3562 thiss!1248)))) (Some!214 (_2!1703 (tuple2!3387 lt!89872 (zeroValue!3562 thiss!1248))))))))

(declare-fun b!181737 () Bool)

(declare-fun contains!1250 (List!2330 tuple2!3386) Bool)

(assert (=> b!181737 (= e!119700 (contains!1250 (toList!1174 lt!89926) (tuple2!3387 lt!89872 (zeroValue!3562 thiss!1248))))))

(assert (= (and d!54383 res!86038) b!181736))

(assert (= (and b!181736 res!86039) b!181737))

(declare-fun m!209597 () Bool)

(assert (=> d!54383 m!209597))

(declare-fun m!209599 () Bool)

(assert (=> d!54383 m!209599))

(declare-fun m!209601 () Bool)

(assert (=> d!54383 m!209601))

(declare-fun m!209603 () Bool)

(assert (=> d!54383 m!209603))

(declare-fun m!209605 () Bool)

(assert (=> b!181736 m!209605))

(declare-fun m!209607 () Bool)

(assert (=> b!181737 m!209607))

(assert (=> b!181683 d!54383))

(declare-fun d!54385 () Bool)

(assert (=> d!54385 (= (apply!153 lt!89888 lt!89892) (get!2084 (getValueByKey!209 (toList!1174 lt!89888) lt!89892)))))

(declare-fun bs!7415 () Bool)

(assert (= bs!7415 d!54385))

(declare-fun m!209609 () Bool)

(assert (=> bs!7415 m!209609))

(assert (=> bs!7415 m!209609))

(declare-fun m!209611 () Bool)

(assert (=> bs!7415 m!209611))

(assert (=> b!181683 d!54385))

(declare-fun d!54387 () Bool)

(declare-fun e!119701 () Bool)

(assert (=> d!54387 e!119701))

(declare-fun res!86040 () Bool)

(assert (=> d!54387 (=> (not res!86040) (not e!119701))))

(declare-fun lt!89930 () ListLongMap!2317)

(assert (=> d!54387 (= res!86040 (contains!1248 lt!89930 (_1!1703 (tuple2!3387 lt!89881 (minValue!3562 thiss!1248)))))))

(declare-fun lt!89929 () List!2330)

(assert (=> d!54387 (= lt!89930 (ListLongMap!2318 lt!89929))))

(declare-fun lt!89928 () Unit!5513)

(declare-fun lt!89927 () Unit!5513)

(assert (=> d!54387 (= lt!89928 lt!89927)))

(assert (=> d!54387 (= (getValueByKey!209 lt!89929 (_1!1703 (tuple2!3387 lt!89881 (minValue!3562 thiss!1248)))) (Some!214 (_2!1703 (tuple2!3387 lt!89881 (minValue!3562 thiss!1248)))))))

(assert (=> d!54387 (= lt!89927 (lemmaContainsTupThenGetReturnValue!112 lt!89929 (_1!1703 (tuple2!3387 lt!89881 (minValue!3562 thiss!1248))) (_2!1703 (tuple2!3387 lt!89881 (minValue!3562 thiss!1248)))))))

(assert (=> d!54387 (= lt!89929 (insertStrictlySorted!114 (toList!1174 lt!89888) (_1!1703 (tuple2!3387 lt!89881 (minValue!3562 thiss!1248))) (_2!1703 (tuple2!3387 lt!89881 (minValue!3562 thiss!1248)))))))

(assert (=> d!54387 (= (+!268 lt!89888 (tuple2!3387 lt!89881 (minValue!3562 thiss!1248))) lt!89930)))

(declare-fun b!181738 () Bool)

(declare-fun res!86041 () Bool)

(assert (=> b!181738 (=> (not res!86041) (not e!119701))))

(assert (=> b!181738 (= res!86041 (= (getValueByKey!209 (toList!1174 lt!89930) (_1!1703 (tuple2!3387 lt!89881 (minValue!3562 thiss!1248)))) (Some!214 (_2!1703 (tuple2!3387 lt!89881 (minValue!3562 thiss!1248))))))))

(declare-fun b!181739 () Bool)

(assert (=> b!181739 (= e!119701 (contains!1250 (toList!1174 lt!89930) (tuple2!3387 lt!89881 (minValue!3562 thiss!1248))))))

(assert (= (and d!54387 res!86040) b!181738))

(assert (= (and b!181738 res!86041) b!181739))

(declare-fun m!209613 () Bool)

(assert (=> d!54387 m!209613))

(declare-fun m!209615 () Bool)

(assert (=> d!54387 m!209615))

(declare-fun m!209617 () Bool)

(assert (=> d!54387 m!209617))

(declare-fun m!209619 () Bool)

(assert (=> d!54387 m!209619))

(declare-fun m!209621 () Bool)

(assert (=> b!181738 m!209621))

(declare-fun m!209623 () Bool)

(assert (=> b!181739 m!209623))

(assert (=> b!181683 d!54387))

(declare-fun d!54389 () Bool)

(assert (=> d!54389 (= (apply!153 (+!268 lt!89885 (tuple2!3387 lt!89876 (minValue!3562 thiss!1248))) lt!89874) (get!2084 (getValueByKey!209 (toList!1174 (+!268 lt!89885 (tuple2!3387 lt!89876 (minValue!3562 thiss!1248)))) lt!89874)))))

(declare-fun bs!7416 () Bool)

(assert (= bs!7416 d!54389))

(declare-fun m!209625 () Bool)

(assert (=> bs!7416 m!209625))

(assert (=> bs!7416 m!209625))

(declare-fun m!209627 () Bool)

(assert (=> bs!7416 m!209627))

(assert (=> b!181683 d!54389))

(declare-fun d!54391 () Bool)

(declare-fun e!119702 () Bool)

(assert (=> d!54391 e!119702))

(declare-fun res!86042 () Bool)

(assert (=> d!54391 (=> (not res!86042) (not e!119702))))

(declare-fun lt!89934 () ListLongMap!2317)

(assert (=> d!54391 (= res!86042 (contains!1248 lt!89934 (_1!1703 (tuple2!3387 lt!89876 (minValue!3562 thiss!1248)))))))

(declare-fun lt!89933 () List!2330)

(assert (=> d!54391 (= lt!89934 (ListLongMap!2318 lt!89933))))

(declare-fun lt!89932 () Unit!5513)

(declare-fun lt!89931 () Unit!5513)

(assert (=> d!54391 (= lt!89932 lt!89931)))

(assert (=> d!54391 (= (getValueByKey!209 lt!89933 (_1!1703 (tuple2!3387 lt!89876 (minValue!3562 thiss!1248)))) (Some!214 (_2!1703 (tuple2!3387 lt!89876 (minValue!3562 thiss!1248)))))))

(assert (=> d!54391 (= lt!89931 (lemmaContainsTupThenGetReturnValue!112 lt!89933 (_1!1703 (tuple2!3387 lt!89876 (minValue!3562 thiss!1248))) (_2!1703 (tuple2!3387 lt!89876 (minValue!3562 thiss!1248)))))))

(assert (=> d!54391 (= lt!89933 (insertStrictlySorted!114 (toList!1174 lt!89885) (_1!1703 (tuple2!3387 lt!89876 (minValue!3562 thiss!1248))) (_2!1703 (tuple2!3387 lt!89876 (minValue!3562 thiss!1248)))))))

(assert (=> d!54391 (= (+!268 lt!89885 (tuple2!3387 lt!89876 (minValue!3562 thiss!1248))) lt!89934)))

(declare-fun b!181740 () Bool)

(declare-fun res!86043 () Bool)

(assert (=> b!181740 (=> (not res!86043) (not e!119702))))

(assert (=> b!181740 (= res!86043 (= (getValueByKey!209 (toList!1174 lt!89934) (_1!1703 (tuple2!3387 lt!89876 (minValue!3562 thiss!1248)))) (Some!214 (_2!1703 (tuple2!3387 lt!89876 (minValue!3562 thiss!1248))))))))

(declare-fun b!181741 () Bool)

(assert (=> b!181741 (= e!119702 (contains!1250 (toList!1174 lt!89934) (tuple2!3387 lt!89876 (minValue!3562 thiss!1248))))))

(assert (= (and d!54391 res!86042) b!181740))

(assert (= (and b!181740 res!86043) b!181741))

(declare-fun m!209629 () Bool)

(assert (=> d!54391 m!209629))

(declare-fun m!209631 () Bool)

(assert (=> d!54391 m!209631))

(declare-fun m!209633 () Bool)

(assert (=> d!54391 m!209633))

(declare-fun m!209635 () Bool)

(assert (=> d!54391 m!209635))

(declare-fun m!209637 () Bool)

(assert (=> b!181740 m!209637))

(declare-fun m!209639 () Bool)

(assert (=> b!181741 m!209639))

(assert (=> b!181683 d!54391))

(declare-fun d!54393 () Bool)

(assert (=> d!54393 (= (apply!153 (+!268 lt!89873 (tuple2!3387 lt!89893 (zeroValue!3562 thiss!1248))) lt!89891) (apply!153 lt!89873 lt!89891))))

(declare-fun lt!89937 () Unit!5513)

(declare-fun choose!972 (ListLongMap!2317 (_ BitVec 64) V!5323 (_ BitVec 64)) Unit!5513)

(assert (=> d!54393 (= lt!89937 (choose!972 lt!89873 lt!89893 (zeroValue!3562 thiss!1248) lt!89891))))

(declare-fun e!119705 () Bool)

(assert (=> d!54393 e!119705))

(declare-fun res!86046 () Bool)

(assert (=> d!54393 (=> (not res!86046) (not e!119705))))

(assert (=> d!54393 (= res!86046 (contains!1248 lt!89873 lt!89891))))

(assert (=> d!54393 (= (addApplyDifferent!129 lt!89873 lt!89893 (zeroValue!3562 thiss!1248) lt!89891) lt!89937)))

(declare-fun b!181745 () Bool)

(assert (=> b!181745 (= e!119705 (not (= lt!89891 lt!89893)))))

(assert (= (and d!54393 res!86046) b!181745))

(assert (=> d!54393 m!209543))

(declare-fun m!209641 () Bool)

(assert (=> d!54393 m!209641))

(assert (=> d!54393 m!209537))

(assert (=> d!54393 m!209537))

(assert (=> d!54393 m!209539))

(declare-fun m!209643 () Bool)

(assert (=> d!54393 m!209643))

(assert (=> b!181683 d!54393))

(declare-fun d!54395 () Bool)

(assert (=> d!54395 (contains!1248 (+!268 lt!89887 (tuple2!3387 lt!89872 (zeroValue!3562 thiss!1248))) lt!89882)))

(declare-fun lt!89940 () Unit!5513)

(declare-fun choose!973 (ListLongMap!2317 (_ BitVec 64) V!5323 (_ BitVec 64)) Unit!5513)

(assert (=> d!54395 (= lt!89940 (choose!973 lt!89887 lt!89872 (zeroValue!3562 thiss!1248) lt!89882))))

(assert (=> d!54395 (contains!1248 lt!89887 lt!89882)))

(assert (=> d!54395 (= (addStillContains!129 lt!89887 lt!89872 (zeroValue!3562 thiss!1248) lt!89882) lt!89940)))

(declare-fun bs!7417 () Bool)

(assert (= bs!7417 d!54395))

(assert (=> bs!7417 m!209519))

(assert (=> bs!7417 m!209519))

(assert (=> bs!7417 m!209521))

(declare-fun m!209645 () Bool)

(assert (=> bs!7417 m!209645))

(declare-fun m!209647 () Bool)

(assert (=> bs!7417 m!209647))

(assert (=> b!181683 d!54395))

(declare-fun d!54397 () Bool)

(assert (=> d!54397 (= (apply!153 lt!89885 lt!89874) (get!2084 (getValueByKey!209 (toList!1174 lt!89885) lt!89874)))))

(declare-fun bs!7418 () Bool)

(assert (= bs!7418 d!54397))

(declare-fun m!209649 () Bool)

(assert (=> bs!7418 m!209649))

(assert (=> bs!7418 m!209649))

(declare-fun m!209651 () Bool)

(assert (=> bs!7418 m!209651))

(assert (=> b!181683 d!54397))

(declare-fun d!54399 () Bool)

(assert (=> d!54399 (= (apply!153 (+!268 lt!89885 (tuple2!3387 lt!89876 (minValue!3562 thiss!1248))) lt!89874) (apply!153 lt!89885 lt!89874))))

(declare-fun lt!89941 () Unit!5513)

(assert (=> d!54399 (= lt!89941 (choose!972 lt!89885 lt!89876 (minValue!3562 thiss!1248) lt!89874))))

(declare-fun e!119706 () Bool)

(assert (=> d!54399 e!119706))

(declare-fun res!86047 () Bool)

(assert (=> d!54399 (=> (not res!86047) (not e!119706))))

(assert (=> d!54399 (= res!86047 (contains!1248 lt!89885 lt!89874))))

(assert (=> d!54399 (= (addApplyDifferent!129 lt!89885 lt!89876 (minValue!3562 thiss!1248) lt!89874) lt!89941)))

(declare-fun b!181747 () Bool)

(assert (=> b!181747 (= e!119706 (not (= lt!89874 lt!89876)))))

(assert (= (and d!54399 res!86047) b!181747))

(assert (=> d!54399 m!209545))

(declare-fun m!209653 () Bool)

(assert (=> d!54399 m!209653))

(assert (=> d!54399 m!209523))

(assert (=> d!54399 m!209523))

(assert (=> d!54399 m!209525))

(declare-fun m!209655 () Bool)

(assert (=> d!54399 m!209655))

(assert (=> b!181683 d!54399))

(declare-fun d!54401 () Bool)

(assert (=> d!54401 (= (apply!153 (+!268 lt!89888 (tuple2!3387 lt!89881 (minValue!3562 thiss!1248))) lt!89892) (apply!153 lt!89888 lt!89892))))

(declare-fun lt!89942 () Unit!5513)

(assert (=> d!54401 (= lt!89942 (choose!972 lt!89888 lt!89881 (minValue!3562 thiss!1248) lt!89892))))

(declare-fun e!119707 () Bool)

(assert (=> d!54401 e!119707))

(declare-fun res!86048 () Bool)

(assert (=> d!54401 (=> (not res!86048) (not e!119707))))

(assert (=> d!54401 (= res!86048 (contains!1248 lt!89888 lt!89892))))

(assert (=> d!54401 (= (addApplyDifferent!129 lt!89888 lt!89881 (minValue!3562 thiss!1248) lt!89892) lt!89942)))

(declare-fun b!181748 () Bool)

(assert (=> b!181748 (= e!119707 (not (= lt!89892 lt!89881)))))

(assert (= (and d!54401 res!86048) b!181748))

(assert (=> d!54401 m!209527))

(declare-fun m!209657 () Bool)

(assert (=> d!54401 m!209657))

(assert (=> d!54401 m!209529))

(assert (=> d!54401 m!209529))

(assert (=> d!54401 m!209541))

(declare-fun m!209659 () Bool)

(assert (=> d!54401 m!209659))

(assert (=> b!181683 d!54401))

(declare-fun d!54403 () Bool)

(declare-fun e!119709 () Bool)

(assert (=> d!54403 e!119709))

(declare-fun res!86049 () Bool)

(assert (=> d!54403 (=> res!86049 e!119709)))

(declare-fun lt!89944 () Bool)

(assert (=> d!54403 (= res!86049 (not lt!89944))))

(declare-fun lt!89946 () Bool)

(assert (=> d!54403 (= lt!89944 lt!89946)))

(declare-fun lt!89945 () Unit!5513)

(declare-fun e!119708 () Unit!5513)

(assert (=> d!54403 (= lt!89945 e!119708)))

(declare-fun c!32566 () Bool)

(assert (=> d!54403 (= c!32566 lt!89946)))

(assert (=> d!54403 (= lt!89946 (containsKey!213 (toList!1174 (+!268 lt!89887 (tuple2!3387 lt!89872 (zeroValue!3562 thiss!1248)))) lt!89882))))

(assert (=> d!54403 (= (contains!1248 (+!268 lt!89887 (tuple2!3387 lt!89872 (zeroValue!3562 thiss!1248))) lt!89882) lt!89944)))

(declare-fun b!181749 () Bool)

(declare-fun lt!89943 () Unit!5513)

(assert (=> b!181749 (= e!119708 lt!89943)))

(assert (=> b!181749 (= lt!89943 (lemmaContainsKeyImpliesGetValueByKeyDefined!162 (toList!1174 (+!268 lt!89887 (tuple2!3387 lt!89872 (zeroValue!3562 thiss!1248)))) lt!89882))))

(assert (=> b!181749 (isDefined!163 (getValueByKey!209 (toList!1174 (+!268 lt!89887 (tuple2!3387 lt!89872 (zeroValue!3562 thiss!1248)))) lt!89882))))

(declare-fun b!181750 () Bool)

(declare-fun Unit!5517 () Unit!5513)

(assert (=> b!181750 (= e!119708 Unit!5517)))

(declare-fun b!181751 () Bool)

(assert (=> b!181751 (= e!119709 (isDefined!163 (getValueByKey!209 (toList!1174 (+!268 lt!89887 (tuple2!3387 lt!89872 (zeroValue!3562 thiss!1248)))) lt!89882)))))

(assert (= (and d!54403 c!32566) b!181749))

(assert (= (and d!54403 (not c!32566)) b!181750))

(assert (= (and d!54403 (not res!86049)) b!181751))

(declare-fun m!209661 () Bool)

(assert (=> d!54403 m!209661))

(declare-fun m!209663 () Bool)

(assert (=> b!181749 m!209663))

(declare-fun m!209665 () Bool)

(assert (=> b!181749 m!209665))

(assert (=> b!181749 m!209665))

(declare-fun m!209667 () Bool)

(assert (=> b!181749 m!209667))

(assert (=> b!181751 m!209665))

(assert (=> b!181751 m!209665))

(assert (=> b!181751 m!209667))

(assert (=> b!181683 d!54403))

(declare-fun d!54405 () Bool)

(declare-fun e!119710 () Bool)

(assert (=> d!54405 e!119710))

(declare-fun res!86050 () Bool)

(assert (=> d!54405 (=> (not res!86050) (not e!119710))))

(declare-fun lt!89950 () ListLongMap!2317)

(assert (=> d!54405 (= res!86050 (contains!1248 lt!89950 (_1!1703 (tuple2!3387 lt!89893 (zeroValue!3562 thiss!1248)))))))

(declare-fun lt!89949 () List!2330)

(assert (=> d!54405 (= lt!89950 (ListLongMap!2318 lt!89949))))

(declare-fun lt!89948 () Unit!5513)

(declare-fun lt!89947 () Unit!5513)

(assert (=> d!54405 (= lt!89948 lt!89947)))

(assert (=> d!54405 (= (getValueByKey!209 lt!89949 (_1!1703 (tuple2!3387 lt!89893 (zeroValue!3562 thiss!1248)))) (Some!214 (_2!1703 (tuple2!3387 lt!89893 (zeroValue!3562 thiss!1248)))))))

(assert (=> d!54405 (= lt!89947 (lemmaContainsTupThenGetReturnValue!112 lt!89949 (_1!1703 (tuple2!3387 lt!89893 (zeroValue!3562 thiss!1248))) (_2!1703 (tuple2!3387 lt!89893 (zeroValue!3562 thiss!1248)))))))

(assert (=> d!54405 (= lt!89949 (insertStrictlySorted!114 (toList!1174 lt!89873) (_1!1703 (tuple2!3387 lt!89893 (zeroValue!3562 thiss!1248))) (_2!1703 (tuple2!3387 lt!89893 (zeroValue!3562 thiss!1248)))))))

(assert (=> d!54405 (= (+!268 lt!89873 (tuple2!3387 lt!89893 (zeroValue!3562 thiss!1248))) lt!89950)))

(declare-fun b!181752 () Bool)

(declare-fun res!86051 () Bool)

(assert (=> b!181752 (=> (not res!86051) (not e!119710))))

(assert (=> b!181752 (= res!86051 (= (getValueByKey!209 (toList!1174 lt!89950) (_1!1703 (tuple2!3387 lt!89893 (zeroValue!3562 thiss!1248)))) (Some!214 (_2!1703 (tuple2!3387 lt!89893 (zeroValue!3562 thiss!1248))))))))

(declare-fun b!181753 () Bool)

(assert (=> b!181753 (= e!119710 (contains!1250 (toList!1174 lt!89950) (tuple2!3387 lt!89893 (zeroValue!3562 thiss!1248))))))

(assert (= (and d!54405 res!86050) b!181752))

(assert (= (and b!181752 res!86051) b!181753))

(declare-fun m!209669 () Bool)

(assert (=> d!54405 m!209669))

(declare-fun m!209671 () Bool)

(assert (=> d!54405 m!209671))

(declare-fun m!209673 () Bool)

(assert (=> d!54405 m!209673))

(declare-fun m!209675 () Bool)

(assert (=> d!54405 m!209675))

(declare-fun m!209677 () Bool)

(assert (=> b!181752 m!209677))

(declare-fun m!209679 () Bool)

(assert (=> b!181753 m!209679))

(assert (=> b!181683 d!54405))

(declare-fun d!54407 () Bool)

(assert (=> d!54407 (= (apply!153 lt!89890 (select (arr!3640 (_keys!5624 thiss!1248)) #b00000000000000000000000000000000)) (get!2084 (getValueByKey!209 (toList!1174 lt!89890) (select (arr!3640 (_keys!5624 thiss!1248)) #b00000000000000000000000000000000))))))

(declare-fun bs!7419 () Bool)

(assert (= bs!7419 d!54407))

(assert (=> bs!7419 m!209511))

(declare-fun m!209681 () Bool)

(assert (=> bs!7419 m!209681))

(assert (=> bs!7419 m!209681))

(declare-fun m!209683 () Bool)

(assert (=> bs!7419 m!209683))

(assert (=> b!181668 d!54407))

(declare-fun d!54409 () Bool)

(declare-fun c!32569 () Bool)

(assert (=> d!54409 (= c!32569 ((_ is ValueCellFull!1785) (select (arr!3641 (_values!3704 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun e!119713 () V!5323)

(assert (=> d!54409 (= (get!2083 (select (arr!3641 (_values!3704 thiss!1248)) #b00000000000000000000000000000000) (dynLambda!491 (defaultEntry!3721 thiss!1248) #b0000000000000000000000000000000000000000000000000000000000000000)) e!119713)))

(declare-fun b!181758 () Bool)

(declare-fun get!2085 (ValueCell!1785 V!5323) V!5323)

(assert (=> b!181758 (= e!119713 (get!2085 (select (arr!3641 (_values!3704 thiss!1248)) #b00000000000000000000000000000000) (dynLambda!491 (defaultEntry!3721 thiss!1248) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!181759 () Bool)

(declare-fun get!2086 (ValueCell!1785 V!5323) V!5323)

(assert (=> b!181759 (= e!119713 (get!2086 (select (arr!3641 (_values!3704 thiss!1248)) #b00000000000000000000000000000000) (dynLambda!491 (defaultEntry!3721 thiss!1248) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!54409 c!32569) b!181758))

(assert (= (and d!54409 (not c!32569)) b!181759))

(assert (=> b!181758 m!209549))

(assert (=> b!181758 m!209551))

(declare-fun m!209685 () Bool)

(assert (=> b!181758 m!209685))

(assert (=> b!181759 m!209549))

(assert (=> b!181759 m!209551))

(declare-fun m!209687 () Bool)

(assert (=> b!181759 m!209687))

(assert (=> b!181668 d!54409))

(declare-fun d!54411 () Bool)

(declare-fun res!86056 () Bool)

(declare-fun e!119718 () Bool)

(assert (=> d!54411 (=> res!86056 e!119718)))

(assert (=> d!54411 (= res!86056 (and ((_ is Cons!2326) (toList!1174 (getCurrentListMap!817 (_keys!5624 thiss!1248) (_values!3704 thiss!1248) (mask!8746 thiss!1248) (extraKeys!3458 thiss!1248) (zeroValue!3562 thiss!1248) (minValue!3562 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3721 thiss!1248)))) (= (_1!1703 (h!2953 (toList!1174 (getCurrentListMap!817 (_keys!5624 thiss!1248) (_values!3704 thiss!1248) (mask!8746 thiss!1248) (extraKeys!3458 thiss!1248) (zeroValue!3562 thiss!1248) (minValue!3562 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3721 thiss!1248))))) key!828)))))

(assert (=> d!54411 (= (containsKey!213 (toList!1174 (getCurrentListMap!817 (_keys!5624 thiss!1248) (_values!3704 thiss!1248) (mask!8746 thiss!1248) (extraKeys!3458 thiss!1248) (zeroValue!3562 thiss!1248) (minValue!3562 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3721 thiss!1248))) key!828) e!119718)))

(declare-fun b!181764 () Bool)

(declare-fun e!119719 () Bool)

(assert (=> b!181764 (= e!119718 e!119719)))

(declare-fun res!86057 () Bool)

(assert (=> b!181764 (=> (not res!86057) (not e!119719))))

(assert (=> b!181764 (= res!86057 (and (or (not ((_ is Cons!2326) (toList!1174 (getCurrentListMap!817 (_keys!5624 thiss!1248) (_values!3704 thiss!1248) (mask!8746 thiss!1248) (extraKeys!3458 thiss!1248) (zeroValue!3562 thiss!1248) (minValue!3562 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3721 thiss!1248))))) (bvsle (_1!1703 (h!2953 (toList!1174 (getCurrentListMap!817 (_keys!5624 thiss!1248) (_values!3704 thiss!1248) (mask!8746 thiss!1248) (extraKeys!3458 thiss!1248) (zeroValue!3562 thiss!1248) (minValue!3562 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3721 thiss!1248))))) key!828)) ((_ is Cons!2326) (toList!1174 (getCurrentListMap!817 (_keys!5624 thiss!1248) (_values!3704 thiss!1248) (mask!8746 thiss!1248) (extraKeys!3458 thiss!1248) (zeroValue!3562 thiss!1248) (minValue!3562 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3721 thiss!1248)))) (bvslt (_1!1703 (h!2953 (toList!1174 (getCurrentListMap!817 (_keys!5624 thiss!1248) (_values!3704 thiss!1248) (mask!8746 thiss!1248) (extraKeys!3458 thiss!1248) (zeroValue!3562 thiss!1248) (minValue!3562 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3721 thiss!1248))))) key!828)))))

(declare-fun b!181765 () Bool)

(assert (=> b!181765 (= e!119719 (containsKey!213 (t!7194 (toList!1174 (getCurrentListMap!817 (_keys!5624 thiss!1248) (_values!3704 thiss!1248) (mask!8746 thiss!1248) (extraKeys!3458 thiss!1248) (zeroValue!3562 thiss!1248) (minValue!3562 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3721 thiss!1248)))) key!828))))

(assert (= (and d!54411 (not res!86056)) b!181764))

(assert (= (and b!181764 res!86057) b!181765))

(declare-fun m!209689 () Bool)

(assert (=> b!181765 m!209689))

(assert (=> d!54371 d!54411))

(declare-fun d!54413 () Bool)

(declare-fun e!119721 () Bool)

(assert (=> d!54413 e!119721))

(declare-fun res!86058 () Bool)

(assert (=> d!54413 (=> res!86058 e!119721)))

(declare-fun lt!89952 () Bool)

(assert (=> d!54413 (= res!86058 (not lt!89952))))

(declare-fun lt!89954 () Bool)

(assert (=> d!54413 (= lt!89952 lt!89954)))

(declare-fun lt!89953 () Unit!5513)

(declare-fun e!119720 () Unit!5513)

(assert (=> d!54413 (= lt!89953 e!119720)))

(declare-fun c!32570 () Bool)

(assert (=> d!54413 (= c!32570 lt!89954)))

(assert (=> d!54413 (= lt!89954 (containsKey!213 (toList!1174 lt!89890) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!54413 (= (contains!1248 lt!89890 #b0000000000000000000000000000000000000000000000000000000000000000) lt!89952)))

(declare-fun b!181766 () Bool)

(declare-fun lt!89951 () Unit!5513)

(assert (=> b!181766 (= e!119720 lt!89951)))

(assert (=> b!181766 (= lt!89951 (lemmaContainsKeyImpliesGetValueByKeyDefined!162 (toList!1174 lt!89890) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!181766 (isDefined!163 (getValueByKey!209 (toList!1174 lt!89890) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!181767 () Bool)

(declare-fun Unit!5518 () Unit!5513)

(assert (=> b!181767 (= e!119720 Unit!5518)))

(declare-fun b!181768 () Bool)

(assert (=> b!181768 (= e!119721 (isDefined!163 (getValueByKey!209 (toList!1174 lt!89890) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!54413 c!32570) b!181766))

(assert (= (and d!54413 (not c!32570)) b!181767))

(assert (= (and d!54413 (not res!86058)) b!181768))

(declare-fun m!209691 () Bool)

(assert (=> d!54413 m!209691))

(declare-fun m!209693 () Bool)

(assert (=> b!181766 m!209693))

(declare-fun m!209695 () Bool)

(assert (=> b!181766 m!209695))

(assert (=> b!181766 m!209695))

(declare-fun m!209697 () Bool)

(assert (=> b!181766 m!209697))

(assert (=> b!181768 m!209695))

(assert (=> b!181768 m!209695))

(assert (=> b!181768 m!209697))

(assert (=> bm!18353 d!54413))

(assert (=> bm!18359 d!54375))

(declare-fun d!54415 () Bool)

(assert (=> d!54415 (= (validKeyInArray!0 (select (arr!3640 (_keys!5624 thiss!1248)) #b00000000000000000000000000000000)) (and (not (= (select (arr!3640 (_keys!5624 thiss!1248)) #b00000000000000000000000000000000) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!3640 (_keys!5624 thiss!1248)) #b00000000000000000000000000000000) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!181676 d!54415))

(declare-fun d!54417 () Bool)

(declare-fun e!119722 () Bool)

(assert (=> d!54417 e!119722))

(declare-fun res!86059 () Bool)

(assert (=> d!54417 (=> (not res!86059) (not e!119722))))

(declare-fun lt!89958 () ListLongMap!2317)

(assert (=> d!54417 (= res!86059 (contains!1248 lt!89958 (_1!1703 (ite (or c!32553 c!32551) (tuple2!3387 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3562 thiss!1248)) (tuple2!3387 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3562 thiss!1248))))))))

(declare-fun lt!89957 () List!2330)

(assert (=> d!54417 (= lt!89958 (ListLongMap!2318 lt!89957))))

(declare-fun lt!89956 () Unit!5513)

(declare-fun lt!89955 () Unit!5513)

(assert (=> d!54417 (= lt!89956 lt!89955)))

(assert (=> d!54417 (= (getValueByKey!209 lt!89957 (_1!1703 (ite (or c!32553 c!32551) (tuple2!3387 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3562 thiss!1248)) (tuple2!3387 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3562 thiss!1248))))) (Some!214 (_2!1703 (ite (or c!32553 c!32551) (tuple2!3387 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3562 thiss!1248)) (tuple2!3387 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3562 thiss!1248))))))))

(assert (=> d!54417 (= lt!89955 (lemmaContainsTupThenGetReturnValue!112 lt!89957 (_1!1703 (ite (or c!32553 c!32551) (tuple2!3387 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3562 thiss!1248)) (tuple2!3387 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3562 thiss!1248)))) (_2!1703 (ite (or c!32553 c!32551) (tuple2!3387 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3562 thiss!1248)) (tuple2!3387 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3562 thiss!1248))))))))

(assert (=> d!54417 (= lt!89957 (insertStrictlySorted!114 (toList!1174 (ite c!32553 call!18362 (ite c!32551 call!18361 call!18359))) (_1!1703 (ite (or c!32553 c!32551) (tuple2!3387 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3562 thiss!1248)) (tuple2!3387 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3562 thiss!1248)))) (_2!1703 (ite (or c!32553 c!32551) (tuple2!3387 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3562 thiss!1248)) (tuple2!3387 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3562 thiss!1248))))))))

(assert (=> d!54417 (= (+!268 (ite c!32553 call!18362 (ite c!32551 call!18361 call!18359)) (ite (or c!32553 c!32551) (tuple2!3387 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3562 thiss!1248)) (tuple2!3387 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3562 thiss!1248)))) lt!89958)))

(declare-fun b!181769 () Bool)

(declare-fun res!86060 () Bool)

(assert (=> b!181769 (=> (not res!86060) (not e!119722))))

(assert (=> b!181769 (= res!86060 (= (getValueByKey!209 (toList!1174 lt!89958) (_1!1703 (ite (or c!32553 c!32551) (tuple2!3387 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3562 thiss!1248)) (tuple2!3387 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3562 thiss!1248))))) (Some!214 (_2!1703 (ite (or c!32553 c!32551) (tuple2!3387 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3562 thiss!1248)) (tuple2!3387 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3562 thiss!1248)))))))))

(declare-fun b!181770 () Bool)

(assert (=> b!181770 (= e!119722 (contains!1250 (toList!1174 lt!89958) (ite (or c!32553 c!32551) (tuple2!3387 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3562 thiss!1248)) (tuple2!3387 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3562 thiss!1248)))))))

(assert (= (and d!54417 res!86059) b!181769))

(assert (= (and b!181769 res!86060) b!181770))

(declare-fun m!209699 () Bool)

(assert (=> d!54417 m!209699))

(declare-fun m!209701 () Bool)

(assert (=> d!54417 m!209701))

(declare-fun m!209703 () Bool)

(assert (=> d!54417 m!209703))

(declare-fun m!209705 () Bool)

(assert (=> d!54417 m!209705))

(declare-fun m!209707 () Bool)

(assert (=> b!181769 m!209707))

(declare-fun m!209709 () Bool)

(assert (=> b!181770 m!209709))

(assert (=> bm!18358 d!54417))

(declare-fun d!54419 () Bool)

(assert (=> d!54419 (= (apply!153 lt!89890 #b1000000000000000000000000000000000000000000000000000000000000000) (get!2084 (getValueByKey!209 (toList!1174 lt!89890) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bs!7420 () Bool)

(assert (= bs!7420 d!54419))

(declare-fun m!209711 () Bool)

(assert (=> bs!7420 m!209711))

(assert (=> bs!7420 m!209711))

(declare-fun m!209713 () Bool)

(assert (=> bs!7420 m!209713))

(assert (=> b!181673 d!54419))

(declare-fun d!54421 () Bool)

(declare-fun isEmpty!465 (Option!215) Bool)

(assert (=> d!54421 (= (isDefined!163 (getValueByKey!209 (toList!1174 (getCurrentListMap!817 (_keys!5624 thiss!1248) (_values!3704 thiss!1248) (mask!8746 thiss!1248) (extraKeys!3458 thiss!1248) (zeroValue!3562 thiss!1248) (minValue!3562 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3721 thiss!1248))) key!828)) (not (isEmpty!465 (getValueByKey!209 (toList!1174 (getCurrentListMap!817 (_keys!5624 thiss!1248) (_values!3704 thiss!1248) (mask!8746 thiss!1248) (extraKeys!3458 thiss!1248) (zeroValue!3562 thiss!1248) (minValue!3562 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3721 thiss!1248))) key!828))))))

(declare-fun bs!7421 () Bool)

(assert (= bs!7421 d!54421))

(assert (=> bs!7421 m!209501))

(declare-fun m!209715 () Bool)

(assert (=> bs!7421 m!209715))

(assert (=> b!181622 d!54421))

(declare-fun d!54423 () Bool)

(declare-fun c!32575 () Bool)

(assert (=> d!54423 (= c!32575 (and ((_ is Cons!2326) (toList!1174 (getCurrentListMap!817 (_keys!5624 thiss!1248) (_values!3704 thiss!1248) (mask!8746 thiss!1248) (extraKeys!3458 thiss!1248) (zeroValue!3562 thiss!1248) (minValue!3562 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3721 thiss!1248)))) (= (_1!1703 (h!2953 (toList!1174 (getCurrentListMap!817 (_keys!5624 thiss!1248) (_values!3704 thiss!1248) (mask!8746 thiss!1248) (extraKeys!3458 thiss!1248) (zeroValue!3562 thiss!1248) (minValue!3562 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3721 thiss!1248))))) key!828)))))

(declare-fun e!119727 () Option!215)

(assert (=> d!54423 (= (getValueByKey!209 (toList!1174 (getCurrentListMap!817 (_keys!5624 thiss!1248) (_values!3704 thiss!1248) (mask!8746 thiss!1248) (extraKeys!3458 thiss!1248) (zeroValue!3562 thiss!1248) (minValue!3562 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3721 thiss!1248))) key!828) e!119727)))

(declare-fun b!181782 () Bool)

(declare-fun e!119728 () Option!215)

(assert (=> b!181782 (= e!119728 None!213)))

(declare-fun b!181779 () Bool)

(assert (=> b!181779 (= e!119727 (Some!214 (_2!1703 (h!2953 (toList!1174 (getCurrentListMap!817 (_keys!5624 thiss!1248) (_values!3704 thiss!1248) (mask!8746 thiss!1248) (extraKeys!3458 thiss!1248) (zeroValue!3562 thiss!1248) (minValue!3562 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3721 thiss!1248)))))))))

(declare-fun b!181780 () Bool)

(assert (=> b!181780 (= e!119727 e!119728)))

(declare-fun c!32576 () Bool)

(assert (=> b!181780 (= c!32576 (and ((_ is Cons!2326) (toList!1174 (getCurrentListMap!817 (_keys!5624 thiss!1248) (_values!3704 thiss!1248) (mask!8746 thiss!1248) (extraKeys!3458 thiss!1248) (zeroValue!3562 thiss!1248) (minValue!3562 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3721 thiss!1248)))) (not (= (_1!1703 (h!2953 (toList!1174 (getCurrentListMap!817 (_keys!5624 thiss!1248) (_values!3704 thiss!1248) (mask!8746 thiss!1248) (extraKeys!3458 thiss!1248) (zeroValue!3562 thiss!1248) (minValue!3562 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3721 thiss!1248))))) key!828))))))

(declare-fun b!181781 () Bool)

(assert (=> b!181781 (= e!119728 (getValueByKey!209 (t!7194 (toList!1174 (getCurrentListMap!817 (_keys!5624 thiss!1248) (_values!3704 thiss!1248) (mask!8746 thiss!1248) (extraKeys!3458 thiss!1248) (zeroValue!3562 thiss!1248) (minValue!3562 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3721 thiss!1248)))) key!828))))

(assert (= (and d!54423 c!32575) b!181779))

(assert (= (and d!54423 (not c!32575)) b!181780))

(assert (= (and b!181780 c!32576) b!181781))

(assert (= (and b!181780 (not c!32576)) b!181782))

(declare-fun m!209717 () Bool)

(assert (=> b!181781 m!209717))

(assert (=> b!181622 d!54423))

(declare-fun d!54425 () Bool)

(declare-fun e!119742 () Bool)

(assert (=> d!54425 e!119742))

(declare-fun c!32583 () Bool)

(declare-fun lt!89964 () SeekEntryResult!612)

(assert (=> d!54425 (= c!32583 (and ((_ is Intermediate!612) lt!89964) (undefined!1424 lt!89964)))))

(declare-fun e!119743 () SeekEntryResult!612)

(assert (=> d!54425 (= lt!89964 e!119743)))

(declare-fun c!32585 () Bool)

(assert (=> d!54425 (= c!32585 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!89963 () (_ BitVec 64))

(assert (=> d!54425 (= lt!89963 (select (arr!3640 (_keys!5624 thiss!1248)) (toIndex!0 key!828 (mask!8746 thiss!1248))))))

(assert (=> d!54425 (validMask!0 (mask!8746 thiss!1248))))

(assert (=> d!54425 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 key!828 (mask!8746 thiss!1248)) key!828 (_keys!5624 thiss!1248) (mask!8746 thiss!1248)) lt!89964)))

(declare-fun b!181801 () Bool)

(declare-fun e!119741 () SeekEntryResult!612)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!181801 (= e!119741 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 key!828 (mask!8746 thiss!1248)) #b00000000000000000000000000000000 (mask!8746 thiss!1248)) key!828 (_keys!5624 thiss!1248) (mask!8746 thiss!1248)))))

(declare-fun b!181802 () Bool)

(assert (=> b!181802 (and (bvsge (index!4620 lt!89964) #b00000000000000000000000000000000) (bvslt (index!4620 lt!89964) (size!3950 (_keys!5624 thiss!1248))))))

(declare-fun res!86068 () Bool)

(assert (=> b!181802 (= res!86068 (= (select (arr!3640 (_keys!5624 thiss!1248)) (index!4620 lt!89964)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!119739 () Bool)

(assert (=> b!181802 (=> res!86068 e!119739)))

(declare-fun b!181803 () Bool)

(declare-fun e!119740 () Bool)

(assert (=> b!181803 (= e!119742 e!119740)))

(declare-fun res!86069 () Bool)

(assert (=> b!181803 (= res!86069 (and ((_ is Intermediate!612) lt!89964) (not (undefined!1424 lt!89964)) (bvslt (x!19834 lt!89964) #b01111111111111111111111111111110) (bvsge (x!19834 lt!89964) #b00000000000000000000000000000000) (bvsge (x!19834 lt!89964) #b00000000000000000000000000000000)))))

(assert (=> b!181803 (=> (not res!86069) (not e!119740))))

(declare-fun b!181804 () Bool)

(assert (=> b!181804 (= e!119741 (Intermediate!612 false (toIndex!0 key!828 (mask!8746 thiss!1248)) #b00000000000000000000000000000000))))

(declare-fun b!181805 () Bool)

(assert (=> b!181805 (and (bvsge (index!4620 lt!89964) #b00000000000000000000000000000000) (bvslt (index!4620 lt!89964) (size!3950 (_keys!5624 thiss!1248))))))

(assert (=> b!181805 (= e!119739 (= (select (arr!3640 (_keys!5624 thiss!1248)) (index!4620 lt!89964)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!181806 () Bool)

(assert (=> b!181806 (= e!119743 e!119741)))

(declare-fun c!32584 () Bool)

(assert (=> b!181806 (= c!32584 (or (= lt!89963 key!828) (= (bvadd lt!89963 lt!89963) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!181807 () Bool)

(assert (=> b!181807 (and (bvsge (index!4620 lt!89964) #b00000000000000000000000000000000) (bvslt (index!4620 lt!89964) (size!3950 (_keys!5624 thiss!1248))))))

(declare-fun res!86067 () Bool)

(assert (=> b!181807 (= res!86067 (= (select (arr!3640 (_keys!5624 thiss!1248)) (index!4620 lt!89964)) key!828))))

(assert (=> b!181807 (=> res!86067 e!119739)))

(assert (=> b!181807 (= e!119740 e!119739)))

(declare-fun b!181808 () Bool)

(assert (=> b!181808 (= e!119743 (Intermediate!612 true (toIndex!0 key!828 (mask!8746 thiss!1248)) #b00000000000000000000000000000000))))

(declare-fun b!181809 () Bool)

(assert (=> b!181809 (= e!119742 (bvsge (x!19834 lt!89964) #b01111111111111111111111111111110))))

(assert (= (and d!54425 c!32585) b!181808))

(assert (= (and d!54425 (not c!32585)) b!181806))

(assert (= (and b!181806 c!32584) b!181804))

(assert (= (and b!181806 (not c!32584)) b!181801))

(assert (= (and d!54425 c!32583) b!181809))

(assert (= (and d!54425 (not c!32583)) b!181803))

(assert (= (and b!181803 res!86069) b!181807))

(assert (= (and b!181807 (not res!86067)) b!181802))

(assert (= (and b!181802 (not res!86068)) b!181805))

(assert (=> b!181801 m!209491))

(declare-fun m!209719 () Bool)

(assert (=> b!181801 m!209719))

(assert (=> b!181801 m!209719))

(declare-fun m!209721 () Bool)

(assert (=> b!181801 m!209721))

(declare-fun m!209723 () Bool)

(assert (=> b!181807 m!209723))

(assert (=> d!54425 m!209491))

(declare-fun m!209725 () Bool)

(assert (=> d!54425 m!209725))

(assert (=> d!54425 m!209443))

(assert (=> b!181802 m!209723))

(assert (=> b!181805 m!209723))

(assert (=> d!54369 d!54425))

(declare-fun d!54427 () Bool)

(declare-fun lt!89970 () (_ BitVec 32))

(declare-fun lt!89969 () (_ BitVec 32))

(assert (=> d!54427 (= lt!89970 (bvmul (bvxor lt!89969 (bvlshr lt!89969 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!54427 (= lt!89969 ((_ extract 31 0) (bvand (bvxor key!828 (bvlshr key!828 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!54427 (and (bvsge (mask!8746 thiss!1248) #b00000000000000000000000000000000) (let ((res!86070 (let ((h!2956 ((_ extract 31 0) (bvand (bvxor key!828 (bvlshr key!828 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!19851 (bvmul (bvxor h!2956 (bvlshr h!2956 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!19851 (bvlshr x!19851 #b00000000000000000000000000001101)) (mask!8746 thiss!1248)))))) (and (bvslt res!86070 (bvadd (mask!8746 thiss!1248) #b00000000000000000000000000000001)) (bvsge res!86070 #b00000000000000000000000000000000))))))

(assert (=> d!54427 (= (toIndex!0 key!828 (mask!8746 thiss!1248)) (bvand (bvxor lt!89970 (bvlshr lt!89970 #b00000000000000000000000000001101)) (mask!8746 thiss!1248)))))

(assert (=> d!54369 d!54427))

(assert (=> d!54369 d!54365))

(declare-fun b!181822 () Bool)

(declare-fun e!119750 () SeekEntryResult!612)

(assert (=> b!181822 (= e!119750 (seekKeyOrZeroReturnVacant!0 (bvadd (x!19834 lt!89815) #b00000000000000000000000000000001) (nextIndex!0 (index!4620 lt!89815) (x!19834 lt!89815) (mask!8746 thiss!1248)) (index!4620 lt!89815) key!828 (_keys!5624 thiss!1248) (mask!8746 thiss!1248)))))

(declare-fun b!181823 () Bool)

(declare-fun e!119752 () SeekEntryResult!612)

(assert (=> b!181823 (= e!119752 (Found!612 (index!4620 lt!89815)))))

(declare-fun b!181824 () Bool)

(assert (=> b!181824 (= e!119750 (MissingVacant!612 (index!4620 lt!89815)))))

(declare-fun b!181825 () Bool)

(declare-fun e!119751 () SeekEntryResult!612)

(assert (=> b!181825 (= e!119751 e!119752)))

(declare-fun c!32592 () Bool)

(declare-fun lt!89975 () (_ BitVec 64))

(assert (=> b!181825 (= c!32592 (= lt!89975 key!828))))

(declare-fun b!181826 () Bool)

(assert (=> b!181826 (= e!119751 Undefined!612)))

(declare-fun b!181827 () Bool)

(declare-fun c!32593 () Bool)

(assert (=> b!181827 (= c!32593 (= lt!89975 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!181827 (= e!119752 e!119750)))

(declare-fun d!54429 () Bool)

(declare-fun lt!89976 () SeekEntryResult!612)

(assert (=> d!54429 (and (or ((_ is Undefined!612) lt!89976) (not ((_ is Found!612) lt!89976)) (and (bvsge (index!4619 lt!89976) #b00000000000000000000000000000000) (bvslt (index!4619 lt!89976) (size!3950 (_keys!5624 thiss!1248))))) (or ((_ is Undefined!612) lt!89976) ((_ is Found!612) lt!89976) (not ((_ is MissingVacant!612) lt!89976)) (not (= (index!4621 lt!89976) (index!4620 lt!89815))) (and (bvsge (index!4621 lt!89976) #b00000000000000000000000000000000) (bvslt (index!4621 lt!89976) (size!3950 (_keys!5624 thiss!1248))))) (or ((_ is Undefined!612) lt!89976) (ite ((_ is Found!612) lt!89976) (= (select (arr!3640 (_keys!5624 thiss!1248)) (index!4619 lt!89976)) key!828) (and ((_ is MissingVacant!612) lt!89976) (= (index!4621 lt!89976) (index!4620 lt!89815)) (= (select (arr!3640 (_keys!5624 thiss!1248)) (index!4621 lt!89976)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!54429 (= lt!89976 e!119751)))

(declare-fun c!32594 () Bool)

(assert (=> d!54429 (= c!32594 (bvsge (x!19834 lt!89815) #b01111111111111111111111111111110))))

(assert (=> d!54429 (= lt!89975 (select (arr!3640 (_keys!5624 thiss!1248)) (index!4620 lt!89815)))))

(assert (=> d!54429 (validMask!0 (mask!8746 thiss!1248))))

(assert (=> d!54429 (= (seekKeyOrZeroReturnVacant!0 (x!19834 lt!89815) (index!4620 lt!89815) (index!4620 lt!89815) key!828 (_keys!5624 thiss!1248) (mask!8746 thiss!1248)) lt!89976)))

(assert (= (and d!54429 c!32594) b!181826))

(assert (= (and d!54429 (not c!32594)) b!181825))

(assert (= (and b!181825 c!32592) b!181823))

(assert (= (and b!181825 (not c!32592)) b!181827))

(assert (= (and b!181827 c!32593) b!181824))

(assert (= (and b!181827 (not c!32593)) b!181822))

(declare-fun m!209727 () Bool)

(assert (=> b!181822 m!209727))

(assert (=> b!181822 m!209727))

(declare-fun m!209729 () Bool)

(assert (=> b!181822 m!209729))

(declare-fun m!209731 () Bool)

(assert (=> d!54429 m!209731))

(declare-fun m!209733 () Bool)

(assert (=> d!54429 m!209733))

(assert (=> d!54429 m!209483))

(assert (=> d!54429 m!209443))

(assert (=> b!181613 d!54429))

(declare-fun b!181836 () Bool)

(declare-fun e!119760 () Bool)

(declare-fun call!18368 () Bool)

(assert (=> b!181836 (= e!119760 call!18368)))

(declare-fun b!181837 () Bool)

(declare-fun e!119761 () Bool)

(declare-fun e!119759 () Bool)

(assert (=> b!181837 (= e!119761 e!119759)))

(declare-fun c!32597 () Bool)

(assert (=> b!181837 (= c!32597 (validKeyInArray!0 (select (arr!3640 (_keys!5624 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun d!54431 () Bool)

(declare-fun res!86075 () Bool)

(assert (=> d!54431 (=> res!86075 e!119761)))

(assert (=> d!54431 (= res!86075 (bvsge #b00000000000000000000000000000000 (size!3950 (_keys!5624 thiss!1248))))))

(assert (=> d!54431 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!5624 thiss!1248) (mask!8746 thiss!1248)) e!119761)))

(declare-fun b!181838 () Bool)

(assert (=> b!181838 (= e!119759 call!18368)))

(declare-fun b!181839 () Bool)

(assert (=> b!181839 (= e!119759 e!119760)))

(declare-fun lt!89984 () (_ BitVec 64))

(assert (=> b!181839 (= lt!89984 (select (arr!3640 (_keys!5624 thiss!1248)) #b00000000000000000000000000000000))))

(declare-fun lt!89985 () Unit!5513)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!7694 (_ BitVec 64) (_ BitVec 32)) Unit!5513)

(assert (=> b!181839 (= lt!89985 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!5624 thiss!1248) lt!89984 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!7694 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!181839 (arrayContainsKey!0 (_keys!5624 thiss!1248) lt!89984 #b00000000000000000000000000000000)))

(declare-fun lt!89983 () Unit!5513)

(assert (=> b!181839 (= lt!89983 lt!89985)))

(declare-fun res!86076 () Bool)

(assert (=> b!181839 (= res!86076 (= (seekEntryOrOpen!0 (select (arr!3640 (_keys!5624 thiss!1248)) #b00000000000000000000000000000000) (_keys!5624 thiss!1248) (mask!8746 thiss!1248)) (Found!612 #b00000000000000000000000000000000)))))

(assert (=> b!181839 (=> (not res!86076) (not e!119760))))

(declare-fun bm!18365 () Bool)

(assert (=> bm!18365 (= call!18368 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (_keys!5624 thiss!1248) (mask!8746 thiss!1248)))))

(assert (= (and d!54431 (not res!86075)) b!181837))

(assert (= (and b!181837 c!32597) b!181839))

(assert (= (and b!181837 (not c!32597)) b!181838))

(assert (= (and b!181839 res!86076) b!181836))

(assert (= (or b!181836 b!181838) bm!18365))

(assert (=> b!181837 m!209511))

(assert (=> b!181837 m!209511))

(assert (=> b!181837 m!209513))

(assert (=> b!181839 m!209511))

(declare-fun m!209735 () Bool)

(assert (=> b!181839 m!209735))

(declare-fun m!209737 () Bool)

(assert (=> b!181839 m!209737))

(assert (=> b!181839 m!209511))

(declare-fun m!209739 () Bool)

(assert (=> b!181839 m!209739))

(declare-fun m!209741 () Bool)

(assert (=> bm!18365 m!209741))

(assert (=> b!181594 d!54431))

(declare-fun b!181850 () Bool)

(declare-fun e!119771 () Bool)

(declare-fun call!18371 () Bool)

(assert (=> b!181850 (= e!119771 call!18371)))

(declare-fun b!181851 () Bool)

(declare-fun e!119770 () Bool)

(assert (=> b!181851 (= e!119770 e!119771)))

(declare-fun c!32600 () Bool)

(assert (=> b!181851 (= c!32600 (validKeyInArray!0 (select (arr!3640 (_keys!5624 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun b!181852 () Bool)

(declare-fun e!119772 () Bool)

(assert (=> b!181852 (= e!119772 e!119770)))

(declare-fun res!86084 () Bool)

(assert (=> b!181852 (=> (not res!86084) (not e!119770))))

(declare-fun e!119773 () Bool)

(assert (=> b!181852 (= res!86084 (not e!119773))))

(declare-fun res!86083 () Bool)

(assert (=> b!181852 (=> (not res!86083) (not e!119773))))

(assert (=> b!181852 (= res!86083 (validKeyInArray!0 (select (arr!3640 (_keys!5624 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun b!181853 () Bool)

(declare-fun contains!1251 (List!2332 (_ BitVec 64)) Bool)

(assert (=> b!181853 (= e!119773 (contains!1251 Nil!2329 (select (arr!3640 (_keys!5624 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun d!54433 () Bool)

(declare-fun res!86085 () Bool)

(assert (=> d!54433 (=> res!86085 e!119772)))

(assert (=> d!54433 (= res!86085 (bvsge #b00000000000000000000000000000000 (size!3950 (_keys!5624 thiss!1248))))))

(assert (=> d!54433 (= (arrayNoDuplicates!0 (_keys!5624 thiss!1248) #b00000000000000000000000000000000 Nil!2329) e!119772)))

(declare-fun b!181854 () Bool)

(assert (=> b!181854 (= e!119771 call!18371)))

(declare-fun bm!18368 () Bool)

(assert (=> bm!18368 (= call!18371 (arrayNoDuplicates!0 (_keys!5624 thiss!1248) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!32600 (Cons!2328 (select (arr!3640 (_keys!5624 thiss!1248)) #b00000000000000000000000000000000) Nil!2329) Nil!2329)))))

(assert (= (and d!54433 (not res!86085)) b!181852))

(assert (= (and b!181852 res!86083) b!181853))

(assert (= (and b!181852 res!86084) b!181851))

(assert (= (and b!181851 c!32600) b!181854))

(assert (= (and b!181851 (not c!32600)) b!181850))

(assert (= (or b!181854 b!181850) bm!18368))

(assert (=> b!181851 m!209511))

(assert (=> b!181851 m!209511))

(assert (=> b!181851 m!209513))

(assert (=> b!181852 m!209511))

(assert (=> b!181852 m!209511))

(assert (=> b!181852 m!209513))

(assert (=> b!181853 m!209511))

(assert (=> b!181853 m!209511))

(declare-fun m!209743 () Bool)

(assert (=> b!181853 m!209743))

(assert (=> bm!18368 m!209511))

(declare-fun m!209745 () Bool)

(assert (=> bm!18368 m!209745))

(assert (=> b!181595 d!54433))

(assert (=> b!181672 d!54415))

(declare-fun d!54435 () Bool)

(declare-fun e!119775 () Bool)

(assert (=> d!54435 e!119775))

(declare-fun res!86086 () Bool)

(assert (=> d!54435 (=> res!86086 e!119775)))

(declare-fun lt!89987 () Bool)

(assert (=> d!54435 (= res!86086 (not lt!89987))))

(declare-fun lt!89989 () Bool)

(assert (=> d!54435 (= lt!89987 lt!89989)))

(declare-fun lt!89988 () Unit!5513)

(declare-fun e!119774 () Unit!5513)

(assert (=> d!54435 (= lt!89988 e!119774)))

(declare-fun c!32601 () Bool)

(assert (=> d!54435 (= c!32601 lt!89989)))

(assert (=> d!54435 (= lt!89989 (containsKey!213 (toList!1174 lt!89890) (select (arr!3640 (_keys!5624 thiss!1248)) #b00000000000000000000000000000000)))))

(assert (=> d!54435 (= (contains!1248 lt!89890 (select (arr!3640 (_keys!5624 thiss!1248)) #b00000000000000000000000000000000)) lt!89987)))

(declare-fun b!181855 () Bool)

(declare-fun lt!89986 () Unit!5513)

(assert (=> b!181855 (= e!119774 lt!89986)))

(assert (=> b!181855 (= lt!89986 (lemmaContainsKeyImpliesGetValueByKeyDefined!162 (toList!1174 lt!89890) (select (arr!3640 (_keys!5624 thiss!1248)) #b00000000000000000000000000000000)))))

(assert (=> b!181855 (isDefined!163 (getValueByKey!209 (toList!1174 lt!89890) (select (arr!3640 (_keys!5624 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun b!181856 () Bool)

(declare-fun Unit!5519 () Unit!5513)

(assert (=> b!181856 (= e!119774 Unit!5519)))

(declare-fun b!181857 () Bool)

(assert (=> b!181857 (= e!119775 (isDefined!163 (getValueByKey!209 (toList!1174 lt!89890) (select (arr!3640 (_keys!5624 thiss!1248)) #b00000000000000000000000000000000))))))

(assert (= (and d!54435 c!32601) b!181855))

(assert (= (and d!54435 (not c!32601)) b!181856))

(assert (= (and d!54435 (not res!86086)) b!181857))

(assert (=> d!54435 m!209511))

(declare-fun m!209747 () Bool)

(assert (=> d!54435 m!209747))

(assert (=> b!181855 m!209511))

(declare-fun m!209749 () Bool)

(assert (=> b!181855 m!209749))

(assert (=> b!181855 m!209511))

(assert (=> b!181855 m!209681))

(assert (=> b!181855 m!209681))

(declare-fun m!209751 () Bool)

(assert (=> b!181855 m!209751))

(assert (=> b!181857 m!209511))

(assert (=> b!181857 m!209681))

(assert (=> b!181857 m!209681))

(assert (=> b!181857 m!209751))

(assert (=> b!181669 d!54435))

(declare-fun d!54437 () Bool)

(declare-fun e!119776 () Bool)

(assert (=> d!54437 e!119776))

(declare-fun res!86087 () Bool)

(assert (=> d!54437 (=> (not res!86087) (not e!119776))))

(declare-fun lt!89993 () ListLongMap!2317)

(assert (=> d!54437 (= res!86087 (contains!1248 lt!89993 (_1!1703 (tuple2!3387 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3562 thiss!1248)))))))

(declare-fun lt!89992 () List!2330)

(assert (=> d!54437 (= lt!89993 (ListLongMap!2318 lt!89992))))

(declare-fun lt!89991 () Unit!5513)

(declare-fun lt!89990 () Unit!5513)

(assert (=> d!54437 (= lt!89991 lt!89990)))

(assert (=> d!54437 (= (getValueByKey!209 lt!89992 (_1!1703 (tuple2!3387 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3562 thiss!1248)))) (Some!214 (_2!1703 (tuple2!3387 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3562 thiss!1248)))))))

(assert (=> d!54437 (= lt!89990 (lemmaContainsTupThenGetReturnValue!112 lt!89992 (_1!1703 (tuple2!3387 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3562 thiss!1248))) (_2!1703 (tuple2!3387 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3562 thiss!1248)))))))

(assert (=> d!54437 (= lt!89992 (insertStrictlySorted!114 (toList!1174 call!18360) (_1!1703 (tuple2!3387 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3562 thiss!1248))) (_2!1703 (tuple2!3387 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3562 thiss!1248)))))))

(assert (=> d!54437 (= (+!268 call!18360 (tuple2!3387 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3562 thiss!1248))) lt!89993)))

(declare-fun b!181858 () Bool)

(declare-fun res!86088 () Bool)

(assert (=> b!181858 (=> (not res!86088) (not e!119776))))

(assert (=> b!181858 (= res!86088 (= (getValueByKey!209 (toList!1174 lt!89993) (_1!1703 (tuple2!3387 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3562 thiss!1248)))) (Some!214 (_2!1703 (tuple2!3387 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3562 thiss!1248))))))))

(declare-fun b!181859 () Bool)

(assert (=> b!181859 (= e!119776 (contains!1250 (toList!1174 lt!89993) (tuple2!3387 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3562 thiss!1248))))))

(assert (= (and d!54437 res!86087) b!181858))

(assert (= (and b!181858 res!86088) b!181859))

(declare-fun m!209753 () Bool)

(assert (=> d!54437 m!209753))

(declare-fun m!209755 () Bool)

(assert (=> d!54437 m!209755))

(declare-fun m!209757 () Bool)

(assert (=> d!54437 m!209757))

(declare-fun m!209759 () Bool)

(assert (=> d!54437 m!209759))

(declare-fun m!209761 () Bool)

(assert (=> b!181858 m!209761))

(declare-fun m!209763 () Bool)

(assert (=> b!181859 m!209763))

(assert (=> b!181670 d!54437))

(declare-fun d!54439 () Bool)

(assert (=> d!54439 (isDefined!163 (getValueByKey!209 (toList!1174 (getCurrentListMap!817 (_keys!5624 thiss!1248) (_values!3704 thiss!1248) (mask!8746 thiss!1248) (extraKeys!3458 thiss!1248) (zeroValue!3562 thiss!1248) (minValue!3562 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3721 thiss!1248))) key!828))))

(declare-fun lt!89996 () Unit!5513)

(declare-fun choose!974 (List!2330 (_ BitVec 64)) Unit!5513)

(assert (=> d!54439 (= lt!89996 (choose!974 (toList!1174 (getCurrentListMap!817 (_keys!5624 thiss!1248) (_values!3704 thiss!1248) (mask!8746 thiss!1248) (extraKeys!3458 thiss!1248) (zeroValue!3562 thiss!1248) (minValue!3562 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3721 thiss!1248))) key!828))))

(declare-fun e!119779 () Bool)

(assert (=> d!54439 e!119779))

(declare-fun res!86091 () Bool)

(assert (=> d!54439 (=> (not res!86091) (not e!119779))))

(declare-fun isStrictlySorted!338 (List!2330) Bool)

(assert (=> d!54439 (= res!86091 (isStrictlySorted!338 (toList!1174 (getCurrentListMap!817 (_keys!5624 thiss!1248) (_values!3704 thiss!1248) (mask!8746 thiss!1248) (extraKeys!3458 thiss!1248) (zeroValue!3562 thiss!1248) (minValue!3562 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3721 thiss!1248)))))))

(assert (=> d!54439 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!162 (toList!1174 (getCurrentListMap!817 (_keys!5624 thiss!1248) (_values!3704 thiss!1248) (mask!8746 thiss!1248) (extraKeys!3458 thiss!1248) (zeroValue!3562 thiss!1248) (minValue!3562 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3721 thiss!1248))) key!828) lt!89996)))

(declare-fun b!181862 () Bool)

(assert (=> b!181862 (= e!119779 (containsKey!213 (toList!1174 (getCurrentListMap!817 (_keys!5624 thiss!1248) (_values!3704 thiss!1248) (mask!8746 thiss!1248) (extraKeys!3458 thiss!1248) (zeroValue!3562 thiss!1248) (minValue!3562 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3721 thiss!1248))) key!828))))

(assert (= (and d!54439 res!86091) b!181862))

(assert (=> d!54439 m!209501))

(assert (=> d!54439 m!209501))

(assert (=> d!54439 m!209503))

(declare-fun m!209765 () Bool)

(assert (=> d!54439 m!209765))

(declare-fun m!209767 () Bool)

(assert (=> d!54439 m!209767))

(assert (=> b!181862 m!209497))

(assert (=> b!181620 d!54439))

(assert (=> b!181620 d!54421))

(assert (=> b!181620 d!54423))

(declare-fun b!181872 () Bool)

(declare-fun res!86103 () Bool)

(declare-fun e!119782 () Bool)

(assert (=> b!181872 (=> (not res!86103) (not e!119782))))

(declare-fun size!3954 (LongMapFixedSize!2478) (_ BitVec 32))

(assert (=> b!181872 (= res!86103 (bvsge (size!3954 thiss!1248) (_size!1288 thiss!1248)))))

(declare-fun b!181871 () Bool)

(declare-fun res!86100 () Bool)

(assert (=> b!181871 (=> (not res!86100) (not e!119782))))

(assert (=> b!181871 (= res!86100 (and (= (size!3951 (_values!3704 thiss!1248)) (bvadd (mask!8746 thiss!1248) #b00000000000000000000000000000001)) (= (size!3950 (_keys!5624 thiss!1248)) (size!3951 (_values!3704 thiss!1248))) (bvsge (_size!1288 thiss!1248) #b00000000000000000000000000000000) (bvsle (_size!1288 thiss!1248) (bvadd (mask!8746 thiss!1248) #b00000000000000000000000000000001))))))

(declare-fun d!54441 () Bool)

(declare-fun res!86102 () Bool)

(assert (=> d!54441 (=> (not res!86102) (not e!119782))))

(assert (=> d!54441 (= res!86102 (validMask!0 (mask!8746 thiss!1248)))))

(assert (=> d!54441 (= (simpleValid!168 thiss!1248) e!119782)))

(declare-fun b!181873 () Bool)

(declare-fun res!86101 () Bool)

(assert (=> b!181873 (=> (not res!86101) (not e!119782))))

(assert (=> b!181873 (= res!86101 (= (size!3954 thiss!1248) (bvadd (_size!1288 thiss!1248) (bvsdiv (bvadd (extraKeys!3458 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000010))))))

(declare-fun b!181874 () Bool)

(assert (=> b!181874 (= e!119782 (and (bvsge (extraKeys!3458 thiss!1248) #b00000000000000000000000000000000) (bvsle (extraKeys!3458 thiss!1248) #b00000000000000000000000000000011) (bvsge (_vacant!1288 thiss!1248) #b00000000000000000000000000000000)))))

(assert (= (and d!54441 res!86102) b!181871))

(assert (= (and b!181871 res!86100) b!181872))

(assert (= (and b!181872 res!86103) b!181873))

(assert (= (and b!181873 res!86101) b!181874))

(declare-fun m!209769 () Bool)

(assert (=> b!181872 m!209769))

(assert (=> d!54441 m!209443))

(assert (=> b!181873 m!209769))

(assert (=> d!54367 d!54441))

(declare-fun d!54443 () Bool)

(assert (=> d!54443 (= (apply!153 lt!89890 #b0000000000000000000000000000000000000000000000000000000000000000) (get!2084 (getValueByKey!209 (toList!1174 lt!89890) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bs!7422 () Bool)

(assert (= bs!7422 d!54443))

(assert (=> bs!7422 m!209695))

(assert (=> bs!7422 m!209695))

(declare-fun m!209771 () Bool)

(assert (=> bs!7422 m!209771))

(assert (=> b!181679 d!54443))

(assert (=> d!54373 d!54365))

(declare-fun d!54445 () Bool)

(declare-fun lt!89999 () (_ BitVec 32))

(assert (=> d!54445 (and (bvsge lt!89999 #b00000000000000000000000000000000) (bvsle lt!89999 (bvsub (size!3950 (_keys!5624 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun e!119788 () (_ BitVec 32))

(assert (=> d!54445 (= lt!89999 e!119788)))

(declare-fun c!32606 () Bool)

(assert (=> d!54445 (= c!32606 (bvsge #b00000000000000000000000000000000 (size!3950 (_keys!5624 thiss!1248))))))

(assert (=> d!54445 (and (bvsle #b00000000000000000000000000000000 (size!3950 (_keys!5624 thiss!1248))) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (size!3950 (_keys!5624 thiss!1248)) (size!3950 (_keys!5624 thiss!1248))))))

(assert (=> d!54445 (= (arrayCountValidKeys!0 (_keys!5624 thiss!1248) #b00000000000000000000000000000000 (size!3950 (_keys!5624 thiss!1248))) lt!89999)))

(declare-fun b!181883 () Bool)

(declare-fun e!119787 () (_ BitVec 32))

(declare-fun call!18374 () (_ BitVec 32))

(assert (=> b!181883 (= e!119787 call!18374)))

(declare-fun b!181884 () Bool)

(assert (=> b!181884 (= e!119788 #b00000000000000000000000000000000)))

(declare-fun b!181885 () Bool)

(assert (=> b!181885 (= e!119788 e!119787)))

(declare-fun c!32607 () Bool)

(assert (=> b!181885 (= c!32607 (validKeyInArray!0 (select (arr!3640 (_keys!5624 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun b!181886 () Bool)

(assert (=> b!181886 (= e!119787 (bvadd #b00000000000000000000000000000001 call!18374))))

(declare-fun bm!18371 () Bool)

(assert (=> bm!18371 (= call!18374 (arrayCountValidKeys!0 (_keys!5624 thiss!1248) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!3950 (_keys!5624 thiss!1248))))))

(assert (= (and d!54445 c!32606) b!181884))

(assert (= (and d!54445 (not c!32606)) b!181885))

(assert (= (and b!181885 c!32607) b!181886))

(assert (= (and b!181885 (not c!32607)) b!181883))

(assert (= (or b!181886 b!181883) bm!18371))

(assert (=> b!181885 m!209511))

(assert (=> b!181885 m!209511))

(assert (=> b!181885 m!209513))

(declare-fun m!209773 () Bool)

(assert (=> bm!18371 m!209773))

(assert (=> b!181593 d!54445))

(declare-fun d!54447 () Bool)

(declare-fun e!119790 () Bool)

(assert (=> d!54447 e!119790))

(declare-fun res!86104 () Bool)

(assert (=> d!54447 (=> res!86104 e!119790)))

(declare-fun lt!90001 () Bool)

(assert (=> d!54447 (= res!86104 (not lt!90001))))

(declare-fun lt!90003 () Bool)

(assert (=> d!54447 (= lt!90001 lt!90003)))

(declare-fun lt!90002 () Unit!5513)

(declare-fun e!119789 () Unit!5513)

(assert (=> d!54447 (= lt!90002 e!119789)))

(declare-fun c!32608 () Bool)

(assert (=> d!54447 (= c!32608 lt!90003)))

(assert (=> d!54447 (= lt!90003 (containsKey!213 (toList!1174 lt!89890) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!54447 (= (contains!1248 lt!89890 #b1000000000000000000000000000000000000000000000000000000000000000) lt!90001)))

(declare-fun b!181887 () Bool)

(declare-fun lt!90000 () Unit!5513)

(assert (=> b!181887 (= e!119789 lt!90000)))

(assert (=> b!181887 (= lt!90000 (lemmaContainsKeyImpliesGetValueByKeyDefined!162 (toList!1174 lt!89890) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!181887 (isDefined!163 (getValueByKey!209 (toList!1174 lt!89890) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!181888 () Bool)

(declare-fun Unit!5520 () Unit!5513)

(assert (=> b!181888 (= e!119789 Unit!5520)))

(declare-fun b!181889 () Bool)

(assert (=> b!181889 (= e!119790 (isDefined!163 (getValueByKey!209 (toList!1174 lt!89890) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!54447 c!32608) b!181887))

(assert (= (and d!54447 (not c!32608)) b!181888))

(assert (= (and d!54447 (not res!86104)) b!181889))

(declare-fun m!209775 () Bool)

(assert (=> d!54447 m!209775))

(declare-fun m!209777 () Bool)

(assert (=> b!181887 m!209777))

(assert (=> b!181887 m!209711))

(assert (=> b!181887 m!209711))

(declare-fun m!209779 () Bool)

(assert (=> b!181887 m!209779))

(assert (=> b!181889 m!209711))

(assert (=> b!181889 m!209711))

(assert (=> b!181889 m!209779))

(assert (=> bm!18354 d!54447))

(declare-fun b!181890 () Bool)

(declare-fun e!119791 () Bool)

(assert (=> b!181890 (= e!119791 tp_is_empty!4257)))

(declare-fun condMapEmpty!7306 () Bool)

(declare-fun mapDefault!7306 () ValueCell!1785)

(assert (=> mapNonEmpty!7305 (= condMapEmpty!7306 (= mapRest!7305 ((as const (Array (_ BitVec 32) ValueCell!1785)) mapDefault!7306)))))

(declare-fun e!119792 () Bool)

(declare-fun mapRes!7306 () Bool)

(assert (=> mapNonEmpty!7305 (= tp!16215 (and e!119792 mapRes!7306))))

(declare-fun b!181891 () Bool)

(assert (=> b!181891 (= e!119792 tp_is_empty!4257)))

(declare-fun mapNonEmpty!7306 () Bool)

(declare-fun tp!16216 () Bool)

(assert (=> mapNonEmpty!7306 (= mapRes!7306 (and tp!16216 e!119791))))

(declare-fun mapKey!7306 () (_ BitVec 32))

(declare-fun mapRest!7306 () (Array (_ BitVec 32) ValueCell!1785))

(declare-fun mapValue!7306 () ValueCell!1785)

(assert (=> mapNonEmpty!7306 (= mapRest!7305 (store mapRest!7306 mapKey!7306 mapValue!7306))))

(declare-fun mapIsEmpty!7306 () Bool)

(assert (=> mapIsEmpty!7306 mapRes!7306))

(assert (= (and mapNonEmpty!7305 condMapEmpty!7306) mapIsEmpty!7306))

(assert (= (and mapNonEmpty!7305 (not condMapEmpty!7306)) mapNonEmpty!7306))

(assert (= (and mapNonEmpty!7306 ((_ is ValueCellFull!1785) mapValue!7306)) b!181890))

(assert (= (and mapNonEmpty!7305 ((_ is ValueCellFull!1785) mapDefault!7306)) b!181891))

(declare-fun m!209781 () Bool)

(assert (=> mapNonEmpty!7306 m!209781))

(declare-fun b_lambda!7189 () Bool)

(assert (= b_lambda!7187 (or (and b!181556 b_free!4485) b_lambda!7189)))

(declare-fun b_lambda!7191 () Bool)

(assert (= b_lambda!7185 (or (and b!181556 b_free!4485) b_lambda!7191)))

(check-sat (not b!181839) (not d!54429) (not bm!18365) (not d!54435) (not b!181873) (not d!54405) (not d!54421) (not d!54377) (not d!54395) (not d!54417) (not d!54439) (not b!181738) (not bm!18371) (not d!54441) (not d!54375) (not b!181752) (not b!181889) (not b!181768) (not b_lambda!7191) (not b!181721) (not mapNonEmpty!7306) (not b!181766) (not b!181853) (not d!54437) (not b!181887) (not d!54391) (not b!181837) (not b!181885) (not d!54403) (not d!54387) (not b!181855) b_and!11061 (not d!54447) (not b!181781) (not d!54389) (not d!54425) (not b!181736) (not b!181872) (not b!181722) (not b!181822) (not b_lambda!7189) (not d!54381) (not d!54407) tp_is_empty!4257 (not d!54385) (not b!181769) (not b!181740) (not d!54443) (not d!54413) (not bm!18368) (not b!181730) (not d!54383) (not d!54401) (not b!181851) (not bm!18362) (not b!181720) (not b!181857) (not b!181737) (not b!181739) (not b!181749) (not b!181801) (not b_lambda!7183) (not b!181759) (not b_next!4485) (not d!54419) (not b!181724) (not b!181852) (not b!181770) (not d!54393) (not b!181725) (not b!181751) (not b!181758) (not b!181726) (not b!181723) (not b!181765) (not b!181753) (not d!54399) (not d!54397) (not d!54379) (not b!181862) (not b!181858) (not b!181859) (not b!181741))
(check-sat b_and!11061 (not b_next!4485))
