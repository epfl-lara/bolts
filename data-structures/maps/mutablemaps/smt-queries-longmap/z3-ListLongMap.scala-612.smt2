; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!15946 () Bool)

(assert start!15946)

(declare-fun b!158356 () Bool)

(declare-fun b_free!3483 () Bool)

(declare-fun b_next!3483 () Bool)

(assert (=> b!158356 (= b_free!3483 (not b_next!3483))))

(declare-fun tp!13002 () Bool)

(declare-fun b_and!9915 () Bool)

(assert (=> b!158356 (= tp!13002 b_and!9915)))

(declare-fun b!158354 () Bool)

(declare-fun e!103722 () Bool)

(declare-fun tp_is_empty!3285 () Bool)

(assert (=> b!158354 (= e!103722 tp_is_empty!3285)))

(declare-fun mapIsEmpty!5598 () Bool)

(declare-fun mapRes!5598 () Bool)

(assert (=> mapIsEmpty!5598 mapRes!5598))

(declare-fun b!158355 () Bool)

(declare-fun e!103723 () Bool)

(declare-datatypes ((V!4027 0))(
  ( (V!4028 (val!1687 Int)) )
))
(declare-datatypes ((ValueCell!1299 0))(
  ( (ValueCellFull!1299 (v!3548 V!4027)) (EmptyCell!1299) )
))
(declare-datatypes ((array!5638 0))(
  ( (array!5639 (arr!2668 (Array (_ BitVec 32) (_ BitVec 64))) (size!2950 (_ BitVec 32))) )
))
(declare-datatypes ((array!5640 0))(
  ( (array!5641 (arr!2669 (Array (_ BitVec 32) ValueCell!1299)) (size!2951 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1506 0))(
  ( (LongMapFixedSize!1507 (defaultEntry!3195 Int) (mask!7710 (_ BitVec 32)) (extraKeys!2936 (_ BitVec 32)) (zeroValue!3038 V!4027) (minValue!3038 V!4027) (_size!802 (_ BitVec 32)) (_keys!4982 array!5638) (_values!3178 array!5640) (_vacant!802 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!1506)

(assert (=> b!158355 (= e!103723 (and (= (size!2951 (_values!3178 thiss!1248)) (bvadd #b00000000000000000000000000000001 (mask!7710 thiss!1248))) (= (size!2950 (_keys!4982 thiss!1248)) (size!2951 (_values!3178 thiss!1248))) (bvsge (mask!7710 thiss!1248) #b00000000000000000000000000000000) (bvslt (extraKeys!2936 thiss!1248) #b00000000000000000000000000000000)))))

(declare-fun mapNonEmpty!5598 () Bool)

(declare-fun tp!13001 () Bool)

(assert (=> mapNonEmpty!5598 (= mapRes!5598 (and tp!13001 e!103722))))

(declare-fun mapValue!5598 () ValueCell!1299)

(declare-fun mapRest!5598 () (Array (_ BitVec 32) ValueCell!1299))

(declare-fun mapKey!5598 () (_ BitVec 32))

(assert (=> mapNonEmpty!5598 (= (arr!2669 (_values!3178 thiss!1248)) (store mapRest!5598 mapKey!5598 mapValue!5598))))

(declare-fun e!103726 () Bool)

(declare-fun e!103725 () Bool)

(declare-fun array_inv!1689 (array!5638) Bool)

(declare-fun array_inv!1690 (array!5640) Bool)

(assert (=> b!158356 (= e!103726 (and tp!13002 tp_is_empty!3285 (array_inv!1689 (_keys!4982 thiss!1248)) (array_inv!1690 (_values!3178 thiss!1248)) e!103725))))

(declare-fun b!158357 () Bool)

(declare-fun res!74811 () Bool)

(assert (=> b!158357 (=> (not res!74811) (not e!103723))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!158357 (= res!74811 (validMask!0 (mask!7710 thiss!1248)))))

(declare-fun res!74809 () Bool)

(assert (=> start!15946 (=> (not res!74809) (not e!103723))))

(declare-fun valid!707 (LongMapFixedSize!1506) Bool)

(assert (=> start!15946 (= res!74809 (valid!707 thiss!1248))))

(assert (=> start!15946 e!103723))

(assert (=> start!15946 e!103726))

(assert (=> start!15946 true))

(declare-fun b!158358 () Bool)

(declare-fun e!103721 () Bool)

(assert (=> b!158358 (= e!103725 (and e!103721 mapRes!5598))))

(declare-fun condMapEmpty!5598 () Bool)

(declare-fun mapDefault!5598 () ValueCell!1299)

(assert (=> b!158358 (= condMapEmpty!5598 (= (arr!2669 (_values!3178 thiss!1248)) ((as const (Array (_ BitVec 32) ValueCell!1299)) mapDefault!5598)))))

(declare-fun b!158359 () Bool)

(assert (=> b!158359 (= e!103721 tp_is_empty!3285)))

(declare-fun b!158360 () Bool)

(declare-fun res!74810 () Bool)

(assert (=> b!158360 (=> (not res!74810) (not e!103723))))

(declare-fun key!828 () (_ BitVec 64))

(get-info :version)

(declare-datatypes ((SeekEntryResult!309 0))(
  ( (MissingZero!309 (index!3404 (_ BitVec 32))) (Found!309 (index!3405 (_ BitVec 32))) (Intermediate!309 (undefined!1121 Bool) (index!3406 (_ BitVec 32)) (x!17491 (_ BitVec 32))) (Undefined!309) (MissingVacant!309 (index!3407 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!5638 (_ BitVec 32)) SeekEntryResult!309)

(assert (=> b!158360 (= res!74810 ((_ is Undefined!309) (seekEntryOrOpen!0 key!828 (_keys!4982 thiss!1248) (mask!7710 thiss!1248))))))

(declare-fun b!158361 () Bool)

(declare-fun res!74808 () Bool)

(assert (=> b!158361 (=> (not res!74808) (not e!103723))))

(assert (=> b!158361 (= res!74808 (not (= key!828 (bvneg key!828))))))

(assert (= (and start!15946 res!74809) b!158361))

(assert (= (and b!158361 res!74808) b!158360))

(assert (= (and b!158360 res!74810) b!158357))

(assert (= (and b!158357 res!74811) b!158355))

(assert (= (and b!158358 condMapEmpty!5598) mapIsEmpty!5598))

(assert (= (and b!158358 (not condMapEmpty!5598)) mapNonEmpty!5598))

(assert (= (and mapNonEmpty!5598 ((_ is ValueCellFull!1299) mapValue!5598)) b!158354))

(assert (= (and b!158358 ((_ is ValueCellFull!1299) mapDefault!5598)) b!158359))

(assert (= b!158356 b!158358))

(assert (= start!15946 b!158356))

(declare-fun m!191127 () Bool)

(assert (=> start!15946 m!191127))

(declare-fun m!191129 () Bool)

(assert (=> mapNonEmpty!5598 m!191129))

(declare-fun m!191131 () Bool)

(assert (=> b!158356 m!191131))

(declare-fun m!191133 () Bool)

(assert (=> b!158356 m!191133))

(declare-fun m!191135 () Bool)

(assert (=> b!158360 m!191135))

(declare-fun m!191137 () Bool)

(assert (=> b!158357 m!191137))

(check-sat b_and!9915 (not start!15946) (not mapNonEmpty!5598) (not b!158356) (not b_next!3483) (not b!158357) tp_is_empty!3285 (not b!158360))
(check-sat b_and!9915 (not b_next!3483))
(get-model)

(declare-fun d!51089 () Bool)

(assert (=> d!51089 (= (array_inv!1689 (_keys!4982 thiss!1248)) (bvsge (size!2950 (_keys!4982 thiss!1248)) #b00000000000000000000000000000000))))

(assert (=> b!158356 d!51089))

(declare-fun d!51091 () Bool)

(assert (=> d!51091 (= (array_inv!1690 (_values!3178 thiss!1248)) (bvsge (size!2951 (_values!3178 thiss!1248)) #b00000000000000000000000000000000))))

(assert (=> b!158356 d!51091))

(declare-fun d!51093 () Bool)

(assert (=> d!51093 (= (validMask!0 (mask!7710 thiss!1248)) (and (or (= (mask!7710 thiss!1248) #b00000000000000000000000000000111) (= (mask!7710 thiss!1248) #b00000000000000000000000000001111) (= (mask!7710 thiss!1248) #b00000000000000000000000000011111) (= (mask!7710 thiss!1248) #b00000000000000000000000000111111) (= (mask!7710 thiss!1248) #b00000000000000000000000001111111) (= (mask!7710 thiss!1248) #b00000000000000000000000011111111) (= (mask!7710 thiss!1248) #b00000000000000000000000111111111) (= (mask!7710 thiss!1248) #b00000000000000000000001111111111) (= (mask!7710 thiss!1248) #b00000000000000000000011111111111) (= (mask!7710 thiss!1248) #b00000000000000000000111111111111) (= (mask!7710 thiss!1248) #b00000000000000000001111111111111) (= (mask!7710 thiss!1248) #b00000000000000000011111111111111) (= (mask!7710 thiss!1248) #b00000000000000000111111111111111) (= (mask!7710 thiss!1248) #b00000000000000001111111111111111) (= (mask!7710 thiss!1248) #b00000000000000011111111111111111) (= (mask!7710 thiss!1248) #b00000000000000111111111111111111) (= (mask!7710 thiss!1248) #b00000000000001111111111111111111) (= (mask!7710 thiss!1248) #b00000000000011111111111111111111) (= (mask!7710 thiss!1248) #b00000000000111111111111111111111) (= (mask!7710 thiss!1248) #b00000000001111111111111111111111) (= (mask!7710 thiss!1248) #b00000000011111111111111111111111) (= (mask!7710 thiss!1248) #b00000000111111111111111111111111) (= (mask!7710 thiss!1248) #b00000001111111111111111111111111) (= (mask!7710 thiss!1248) #b00000011111111111111111111111111) (= (mask!7710 thiss!1248) #b00000111111111111111111111111111) (= (mask!7710 thiss!1248) #b00001111111111111111111111111111) (= (mask!7710 thiss!1248) #b00011111111111111111111111111111) (= (mask!7710 thiss!1248) #b00111111111111111111111111111111)) (bvsle (mask!7710 thiss!1248) #b00111111111111111111111111111111)))))

(assert (=> b!158357 d!51093))

(declare-fun b!158399 () Bool)

(declare-fun e!103752 () SeekEntryResult!309)

(assert (=> b!158399 (= e!103752 Undefined!309)))

(declare-fun lt!81873 () SeekEntryResult!309)

(declare-fun b!158400 () Bool)

(declare-fun e!103751 () SeekEntryResult!309)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!5638 (_ BitVec 32)) SeekEntryResult!309)

(assert (=> b!158400 (= e!103751 (seekKeyOrZeroReturnVacant!0 (x!17491 lt!81873) (index!3406 lt!81873) (index!3406 lt!81873) key!828 (_keys!4982 thiss!1248) (mask!7710 thiss!1248)))))

(declare-fun b!158401 () Bool)

(declare-fun e!103753 () SeekEntryResult!309)

(assert (=> b!158401 (= e!103752 e!103753)))

(declare-fun lt!81875 () (_ BitVec 64))

(assert (=> b!158401 (= lt!81875 (select (arr!2668 (_keys!4982 thiss!1248)) (index!3406 lt!81873)))))

(declare-fun c!29801 () Bool)

(assert (=> b!158401 (= c!29801 (= lt!81875 key!828))))

(declare-fun b!158402 () Bool)

(declare-fun c!29800 () Bool)

(assert (=> b!158402 (= c!29800 (= lt!81875 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!158402 (= e!103753 e!103751)))

(declare-fun b!158403 () Bool)

(assert (=> b!158403 (= e!103753 (Found!309 (index!3406 lt!81873)))))

(declare-fun b!158398 () Bool)

(assert (=> b!158398 (= e!103751 (MissingZero!309 (index!3406 lt!81873)))))

(declare-fun d!51095 () Bool)

(declare-fun lt!81874 () SeekEntryResult!309)

(assert (=> d!51095 (and (or ((_ is Undefined!309) lt!81874) (not ((_ is Found!309) lt!81874)) (and (bvsge (index!3405 lt!81874) #b00000000000000000000000000000000) (bvslt (index!3405 lt!81874) (size!2950 (_keys!4982 thiss!1248))))) (or ((_ is Undefined!309) lt!81874) ((_ is Found!309) lt!81874) (not ((_ is MissingZero!309) lt!81874)) (and (bvsge (index!3404 lt!81874) #b00000000000000000000000000000000) (bvslt (index!3404 lt!81874) (size!2950 (_keys!4982 thiss!1248))))) (or ((_ is Undefined!309) lt!81874) ((_ is Found!309) lt!81874) ((_ is MissingZero!309) lt!81874) (not ((_ is MissingVacant!309) lt!81874)) (and (bvsge (index!3407 lt!81874) #b00000000000000000000000000000000) (bvslt (index!3407 lt!81874) (size!2950 (_keys!4982 thiss!1248))))) (or ((_ is Undefined!309) lt!81874) (ite ((_ is Found!309) lt!81874) (= (select (arr!2668 (_keys!4982 thiss!1248)) (index!3405 lt!81874)) key!828) (ite ((_ is MissingZero!309) lt!81874) (= (select (arr!2668 (_keys!4982 thiss!1248)) (index!3404 lt!81874)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!309) lt!81874) (= (select (arr!2668 (_keys!4982 thiss!1248)) (index!3407 lt!81874)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!51095 (= lt!81874 e!103752)))

(declare-fun c!29802 () Bool)

(assert (=> d!51095 (= c!29802 (and ((_ is Intermediate!309) lt!81873) (undefined!1121 lt!81873)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!5638 (_ BitVec 32)) SeekEntryResult!309)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!51095 (= lt!81873 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 key!828 (mask!7710 thiss!1248)) key!828 (_keys!4982 thiss!1248) (mask!7710 thiss!1248)))))

(assert (=> d!51095 (validMask!0 (mask!7710 thiss!1248))))

(assert (=> d!51095 (= (seekEntryOrOpen!0 key!828 (_keys!4982 thiss!1248) (mask!7710 thiss!1248)) lt!81874)))

(assert (= (and d!51095 c!29802) b!158399))

(assert (= (and d!51095 (not c!29802)) b!158401))

(assert (= (and b!158401 c!29801) b!158403))

(assert (= (and b!158401 (not c!29801)) b!158402))

(assert (= (and b!158402 c!29800) b!158398))

(assert (= (and b!158402 (not c!29800)) b!158400))

(declare-fun m!191151 () Bool)

(assert (=> b!158400 m!191151))

(declare-fun m!191153 () Bool)

(assert (=> b!158401 m!191153))

(declare-fun m!191155 () Bool)

(assert (=> d!51095 m!191155))

(declare-fun m!191157 () Bool)

(assert (=> d!51095 m!191157))

(assert (=> d!51095 m!191155))

(declare-fun m!191159 () Bool)

(assert (=> d!51095 m!191159))

(assert (=> d!51095 m!191137))

(declare-fun m!191161 () Bool)

(assert (=> d!51095 m!191161))

(declare-fun m!191163 () Bool)

(assert (=> d!51095 m!191163))

(assert (=> b!158360 d!51095))

(declare-fun d!51097 () Bool)

(declare-fun res!74830 () Bool)

(declare-fun e!103756 () Bool)

(assert (=> d!51097 (=> (not res!74830) (not e!103756))))

(declare-fun simpleValid!112 (LongMapFixedSize!1506) Bool)

(assert (=> d!51097 (= res!74830 (simpleValid!112 thiss!1248))))

(assert (=> d!51097 (= (valid!707 thiss!1248) e!103756)))

(declare-fun b!158410 () Bool)

(declare-fun res!74831 () Bool)

(assert (=> b!158410 (=> (not res!74831) (not e!103756))))

(declare-fun arrayCountValidKeys!0 (array!5638 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!158410 (= res!74831 (= (arrayCountValidKeys!0 (_keys!4982 thiss!1248) #b00000000000000000000000000000000 (size!2950 (_keys!4982 thiss!1248))) (_size!802 thiss!1248)))))

(declare-fun b!158411 () Bool)

(declare-fun res!74832 () Bool)

(assert (=> b!158411 (=> (not res!74832) (not e!103756))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!5638 (_ BitVec 32)) Bool)

(assert (=> b!158411 (= res!74832 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!4982 thiss!1248) (mask!7710 thiss!1248)))))

(declare-fun b!158412 () Bool)

(declare-datatypes ((List!1904 0))(
  ( (Nil!1901) (Cons!1900 (h!2511 (_ BitVec 64)) (t!6714 List!1904)) )
))
(declare-fun arrayNoDuplicates!0 (array!5638 (_ BitVec 32) List!1904) Bool)

(assert (=> b!158412 (= e!103756 (arrayNoDuplicates!0 (_keys!4982 thiss!1248) #b00000000000000000000000000000000 Nil!1901))))

(assert (= (and d!51097 res!74830) b!158410))

(assert (= (and b!158410 res!74831) b!158411))

(assert (= (and b!158411 res!74832) b!158412))

(declare-fun m!191165 () Bool)

(assert (=> d!51097 m!191165))

(declare-fun m!191167 () Bool)

(assert (=> b!158410 m!191167))

(declare-fun m!191169 () Bool)

(assert (=> b!158411 m!191169))

(declare-fun m!191171 () Bool)

(assert (=> b!158412 m!191171))

(assert (=> start!15946 d!51097))

(declare-fun condMapEmpty!5604 () Bool)

(declare-fun mapDefault!5604 () ValueCell!1299)

(assert (=> mapNonEmpty!5598 (= condMapEmpty!5604 (= mapRest!5598 ((as const (Array (_ BitVec 32) ValueCell!1299)) mapDefault!5604)))))

(declare-fun e!103761 () Bool)

(declare-fun mapRes!5604 () Bool)

(assert (=> mapNonEmpty!5598 (= tp!13001 (and e!103761 mapRes!5604))))

(declare-fun mapNonEmpty!5604 () Bool)

(declare-fun tp!13011 () Bool)

(declare-fun e!103762 () Bool)

(assert (=> mapNonEmpty!5604 (= mapRes!5604 (and tp!13011 e!103762))))

(declare-fun mapKey!5604 () (_ BitVec 32))

(declare-fun mapValue!5604 () ValueCell!1299)

(declare-fun mapRest!5604 () (Array (_ BitVec 32) ValueCell!1299))

(assert (=> mapNonEmpty!5604 (= mapRest!5598 (store mapRest!5604 mapKey!5604 mapValue!5604))))

(declare-fun mapIsEmpty!5604 () Bool)

(assert (=> mapIsEmpty!5604 mapRes!5604))

(declare-fun b!158419 () Bool)

(assert (=> b!158419 (= e!103762 tp_is_empty!3285)))

(declare-fun b!158420 () Bool)

(assert (=> b!158420 (= e!103761 tp_is_empty!3285)))

(assert (= (and mapNonEmpty!5598 condMapEmpty!5604) mapIsEmpty!5604))

(assert (= (and mapNonEmpty!5598 (not condMapEmpty!5604)) mapNonEmpty!5604))

(assert (= (and mapNonEmpty!5604 ((_ is ValueCellFull!1299) mapValue!5604)) b!158419))

(assert (= (and mapNonEmpty!5598 ((_ is ValueCellFull!1299) mapDefault!5604)) b!158420))

(declare-fun m!191173 () Bool)

(assert (=> mapNonEmpty!5604 m!191173))

(check-sat (not b!158412) (not b_next!3483) b_and!9915 tp_is_empty!3285 (not d!51097) (not b!158400) (not b!158410) (not mapNonEmpty!5604) (not b!158411) (not d!51095))
(check-sat b_and!9915 (not b_next!3483))
(get-model)

(declare-fun b!158439 () Bool)

(declare-fun e!103774 () Bool)

(declare-fun e!103773 () Bool)

(assert (=> b!158439 (= e!103774 e!103773)))

(declare-fun res!74840 () Bool)

(declare-fun lt!81880 () SeekEntryResult!309)

(assert (=> b!158439 (= res!74840 (and ((_ is Intermediate!309) lt!81880) (not (undefined!1121 lt!81880)) (bvslt (x!17491 lt!81880) #b01111111111111111111111111111110) (bvsge (x!17491 lt!81880) #b00000000000000000000000000000000) (bvsge (x!17491 lt!81880) #b00000000000000000000000000000000)))))

(assert (=> b!158439 (=> (not res!74840) (not e!103773))))

(declare-fun d!51099 () Bool)

(assert (=> d!51099 e!103774))

(declare-fun c!29810 () Bool)

(assert (=> d!51099 (= c!29810 (and ((_ is Intermediate!309) lt!81880) (undefined!1121 lt!81880)))))

(declare-fun e!103775 () SeekEntryResult!309)

(assert (=> d!51099 (= lt!81880 e!103775)))

(declare-fun c!29811 () Bool)

(assert (=> d!51099 (= c!29811 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!81881 () (_ BitVec 64))

(assert (=> d!51099 (= lt!81881 (select (arr!2668 (_keys!4982 thiss!1248)) (toIndex!0 key!828 (mask!7710 thiss!1248))))))

(assert (=> d!51099 (validMask!0 (mask!7710 thiss!1248))))

(assert (=> d!51099 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 key!828 (mask!7710 thiss!1248)) key!828 (_keys!4982 thiss!1248) (mask!7710 thiss!1248)) lt!81880)))

(declare-fun b!158440 () Bool)

(declare-fun e!103777 () SeekEntryResult!309)

(assert (=> b!158440 (= e!103777 (Intermediate!309 false (toIndex!0 key!828 (mask!7710 thiss!1248)) #b00000000000000000000000000000000))))

(declare-fun b!158441 () Bool)

(assert (=> b!158441 (and (bvsge (index!3406 lt!81880) #b00000000000000000000000000000000) (bvslt (index!3406 lt!81880) (size!2950 (_keys!4982 thiss!1248))))))

(declare-fun e!103776 () Bool)

(assert (=> b!158441 (= e!103776 (= (select (arr!2668 (_keys!4982 thiss!1248)) (index!3406 lt!81880)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!158442 () Bool)

(assert (=> b!158442 (= e!103774 (bvsge (x!17491 lt!81880) #b01111111111111111111111111111110))))

(declare-fun b!158443 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!158443 (= e!103777 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 key!828 (mask!7710 thiss!1248)) #b00000000000000000000000000000000 (mask!7710 thiss!1248)) key!828 (_keys!4982 thiss!1248) (mask!7710 thiss!1248)))))

(declare-fun b!158444 () Bool)

(assert (=> b!158444 (and (bvsge (index!3406 lt!81880) #b00000000000000000000000000000000) (bvslt (index!3406 lt!81880) (size!2950 (_keys!4982 thiss!1248))))))

(declare-fun res!74839 () Bool)

(assert (=> b!158444 (= res!74839 (= (select (arr!2668 (_keys!4982 thiss!1248)) (index!3406 lt!81880)) key!828))))

(assert (=> b!158444 (=> res!74839 e!103776)))

(assert (=> b!158444 (= e!103773 e!103776)))

(declare-fun b!158445 () Bool)

(assert (=> b!158445 (= e!103775 (Intermediate!309 true (toIndex!0 key!828 (mask!7710 thiss!1248)) #b00000000000000000000000000000000))))

(declare-fun b!158446 () Bool)

(assert (=> b!158446 (and (bvsge (index!3406 lt!81880) #b00000000000000000000000000000000) (bvslt (index!3406 lt!81880) (size!2950 (_keys!4982 thiss!1248))))))

(declare-fun res!74841 () Bool)

(assert (=> b!158446 (= res!74841 (= (select (arr!2668 (_keys!4982 thiss!1248)) (index!3406 lt!81880)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!158446 (=> res!74841 e!103776)))

(declare-fun b!158447 () Bool)

(assert (=> b!158447 (= e!103775 e!103777)))

(declare-fun c!29809 () Bool)

(assert (=> b!158447 (= c!29809 (or (= lt!81881 key!828) (= (bvadd lt!81881 lt!81881) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!51099 c!29811) b!158445))

(assert (= (and d!51099 (not c!29811)) b!158447))

(assert (= (and b!158447 c!29809) b!158440))

(assert (= (and b!158447 (not c!29809)) b!158443))

(assert (= (and d!51099 c!29810) b!158442))

(assert (= (and d!51099 (not c!29810)) b!158439))

(assert (= (and b!158439 res!74840) b!158444))

(assert (= (and b!158444 (not res!74839)) b!158446))

(assert (= (and b!158446 (not res!74841)) b!158441))

(declare-fun m!191175 () Bool)

(assert (=> b!158444 m!191175))

(assert (=> b!158441 m!191175))

(assert (=> d!51099 m!191155))

(declare-fun m!191177 () Bool)

(assert (=> d!51099 m!191177))

(assert (=> d!51099 m!191137))

(assert (=> b!158446 m!191175))

(assert (=> b!158443 m!191155))

(declare-fun m!191179 () Bool)

(assert (=> b!158443 m!191179))

(assert (=> b!158443 m!191179))

(declare-fun m!191181 () Bool)

(assert (=> b!158443 m!191181))

(assert (=> d!51095 d!51099))

(declare-fun d!51101 () Bool)

(declare-fun lt!81887 () (_ BitVec 32))

(declare-fun lt!81886 () (_ BitVec 32))

(assert (=> d!51101 (= lt!81887 (bvmul (bvxor lt!81886 (bvlshr lt!81886 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!51101 (= lt!81886 ((_ extract 31 0) (bvand (bvxor key!828 (bvlshr key!828 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!51101 (and (bvsge (mask!7710 thiss!1248) #b00000000000000000000000000000000) (let ((res!74842 (let ((h!2512 ((_ extract 31 0) (bvand (bvxor key!828 (bvlshr key!828 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!17507 (bvmul (bvxor h!2512 (bvlshr h!2512 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!17507 (bvlshr x!17507 #b00000000000000000000000000001101)) (mask!7710 thiss!1248)))))) (and (bvslt res!74842 (bvadd (mask!7710 thiss!1248) #b00000000000000000000000000000001)) (bvsge res!74842 #b00000000000000000000000000000000))))))

(assert (=> d!51101 (= (toIndex!0 key!828 (mask!7710 thiss!1248)) (bvand (bvxor lt!81887 (bvlshr lt!81887 #b00000000000000000000000000001101)) (mask!7710 thiss!1248)))))

(assert (=> d!51095 d!51101))

(assert (=> d!51095 d!51093))

(declare-fun b!158456 () Bool)

(declare-fun res!74853 () Bool)

(declare-fun e!103780 () Bool)

(assert (=> b!158456 (=> (not res!74853) (not e!103780))))

(assert (=> b!158456 (= res!74853 (and (= (size!2951 (_values!3178 thiss!1248)) (bvadd (mask!7710 thiss!1248) #b00000000000000000000000000000001)) (= (size!2950 (_keys!4982 thiss!1248)) (size!2951 (_values!3178 thiss!1248))) (bvsge (_size!802 thiss!1248) #b00000000000000000000000000000000) (bvsle (_size!802 thiss!1248) (bvadd (mask!7710 thiss!1248) #b00000000000000000000000000000001))))))

(declare-fun b!158457 () Bool)

(declare-fun res!74854 () Bool)

(assert (=> b!158457 (=> (not res!74854) (not e!103780))))

(declare-fun size!2954 (LongMapFixedSize!1506) (_ BitVec 32))

(assert (=> b!158457 (= res!74854 (bvsge (size!2954 thiss!1248) (_size!802 thiss!1248)))))

(declare-fun d!51103 () Bool)

(declare-fun res!74851 () Bool)

(assert (=> d!51103 (=> (not res!74851) (not e!103780))))

(assert (=> d!51103 (= res!74851 (validMask!0 (mask!7710 thiss!1248)))))

(assert (=> d!51103 (= (simpleValid!112 thiss!1248) e!103780)))

(declare-fun b!158459 () Bool)

(assert (=> b!158459 (= e!103780 (and (bvsge (extraKeys!2936 thiss!1248) #b00000000000000000000000000000000) (bvsle (extraKeys!2936 thiss!1248) #b00000000000000000000000000000011) (bvsge (_vacant!802 thiss!1248) #b00000000000000000000000000000000)))))

(declare-fun b!158458 () Bool)

(declare-fun res!74852 () Bool)

(assert (=> b!158458 (=> (not res!74852) (not e!103780))))

(assert (=> b!158458 (= res!74852 (= (size!2954 thiss!1248) (bvadd (_size!802 thiss!1248) (bvsdiv (bvadd (extraKeys!2936 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000010))))))

(assert (= (and d!51103 res!74851) b!158456))

(assert (= (and b!158456 res!74853) b!158457))

(assert (= (and b!158457 res!74854) b!158458))

(assert (= (and b!158458 res!74852) b!158459))

(declare-fun m!191183 () Bool)

(assert (=> b!158457 m!191183))

(assert (=> d!51103 m!191137))

(assert (=> b!158458 m!191183))

(assert (=> d!51097 d!51103))

(declare-fun b!158468 () Bool)

(declare-fun e!103787 () Bool)

(declare-fun e!103788 () Bool)

(assert (=> b!158468 (= e!103787 e!103788)))

(declare-fun c!29814 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!158468 (= c!29814 (validKeyInArray!0 (select (arr!2668 (_keys!4982 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun b!158469 () Bool)

(declare-fun e!103789 () Bool)

(declare-fun call!17252 () Bool)

(assert (=> b!158469 (= e!103789 call!17252)))

(declare-fun d!51105 () Bool)

(declare-fun res!74859 () Bool)

(assert (=> d!51105 (=> res!74859 e!103787)))

(assert (=> d!51105 (= res!74859 (bvsge #b00000000000000000000000000000000 (size!2950 (_keys!4982 thiss!1248))))))

(assert (=> d!51105 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!4982 thiss!1248) (mask!7710 thiss!1248)) e!103787)))

(declare-fun bm!17249 () Bool)

(assert (=> bm!17249 (= call!17252 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (_keys!4982 thiss!1248) (mask!7710 thiss!1248)))))

(declare-fun b!158470 () Bool)

(assert (=> b!158470 (= e!103788 call!17252)))

(declare-fun b!158471 () Bool)

(assert (=> b!158471 (= e!103788 e!103789)))

(declare-fun lt!81896 () (_ BitVec 64))

(assert (=> b!158471 (= lt!81896 (select (arr!2668 (_keys!4982 thiss!1248)) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!4984 0))(
  ( (Unit!4985) )
))
(declare-fun lt!81895 () Unit!4984)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!5638 (_ BitVec 64) (_ BitVec 32)) Unit!4984)

(assert (=> b!158471 (= lt!81895 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!4982 thiss!1248) lt!81896 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!5638 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!158471 (arrayContainsKey!0 (_keys!4982 thiss!1248) lt!81896 #b00000000000000000000000000000000)))

(declare-fun lt!81894 () Unit!4984)

(assert (=> b!158471 (= lt!81894 lt!81895)))

(declare-fun res!74860 () Bool)

(assert (=> b!158471 (= res!74860 (= (seekEntryOrOpen!0 (select (arr!2668 (_keys!4982 thiss!1248)) #b00000000000000000000000000000000) (_keys!4982 thiss!1248) (mask!7710 thiss!1248)) (Found!309 #b00000000000000000000000000000000)))))

(assert (=> b!158471 (=> (not res!74860) (not e!103789))))

(assert (= (and d!51105 (not res!74859)) b!158468))

(assert (= (and b!158468 c!29814) b!158471))

(assert (= (and b!158468 (not c!29814)) b!158470))

(assert (= (and b!158471 res!74860) b!158469))

(assert (= (or b!158469 b!158470) bm!17249))

(declare-fun m!191185 () Bool)

(assert (=> b!158468 m!191185))

(assert (=> b!158468 m!191185))

(declare-fun m!191187 () Bool)

(assert (=> b!158468 m!191187))

(declare-fun m!191189 () Bool)

(assert (=> bm!17249 m!191189))

(assert (=> b!158471 m!191185))

(declare-fun m!191191 () Bool)

(assert (=> b!158471 m!191191))

(declare-fun m!191193 () Bool)

(assert (=> b!158471 m!191193))

(assert (=> b!158471 m!191185))

(declare-fun m!191195 () Bool)

(assert (=> b!158471 m!191195))

(assert (=> b!158411 d!51105))

(declare-fun d!51107 () Bool)

(declare-fun lt!81899 () (_ BitVec 32))

(assert (=> d!51107 (and (bvsge lt!81899 #b00000000000000000000000000000000) (bvsle lt!81899 (bvsub (size!2950 (_keys!4982 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun e!103794 () (_ BitVec 32))

(assert (=> d!51107 (= lt!81899 e!103794)))

(declare-fun c!29820 () Bool)

(assert (=> d!51107 (= c!29820 (bvsge #b00000000000000000000000000000000 (size!2950 (_keys!4982 thiss!1248))))))

(assert (=> d!51107 (and (bvsle #b00000000000000000000000000000000 (size!2950 (_keys!4982 thiss!1248))) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (size!2950 (_keys!4982 thiss!1248)) (size!2950 (_keys!4982 thiss!1248))))))

(assert (=> d!51107 (= (arrayCountValidKeys!0 (_keys!4982 thiss!1248) #b00000000000000000000000000000000 (size!2950 (_keys!4982 thiss!1248))) lt!81899)))

(declare-fun bm!17252 () Bool)

(declare-fun call!17255 () (_ BitVec 32))

(assert (=> bm!17252 (= call!17255 (arrayCountValidKeys!0 (_keys!4982 thiss!1248) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!2950 (_keys!4982 thiss!1248))))))

(declare-fun b!158480 () Bool)

(declare-fun e!103795 () (_ BitVec 32))

(assert (=> b!158480 (= e!103795 call!17255)))

(declare-fun b!158481 () Bool)

(assert (=> b!158481 (= e!103794 e!103795)))

(declare-fun c!29819 () Bool)

(assert (=> b!158481 (= c!29819 (validKeyInArray!0 (select (arr!2668 (_keys!4982 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun b!158482 () Bool)

(assert (=> b!158482 (= e!103795 (bvadd #b00000000000000000000000000000001 call!17255))))

(declare-fun b!158483 () Bool)

(assert (=> b!158483 (= e!103794 #b00000000000000000000000000000000)))

(assert (= (and d!51107 c!29820) b!158483))

(assert (= (and d!51107 (not c!29820)) b!158481))

(assert (= (and b!158481 c!29819) b!158482))

(assert (= (and b!158481 (not c!29819)) b!158480))

(assert (= (or b!158482 b!158480) bm!17252))

(declare-fun m!191197 () Bool)

(assert (=> bm!17252 m!191197))

(assert (=> b!158481 m!191185))

(assert (=> b!158481 m!191185))

(assert (=> b!158481 m!191187))

(assert (=> b!158410 d!51107))

(declare-fun b!158494 () Bool)

(declare-fun e!103806 () Bool)

(declare-fun call!17258 () Bool)

(assert (=> b!158494 (= e!103806 call!17258)))

(declare-fun b!158495 () Bool)

(declare-fun e!103805 () Bool)

(declare-fun e!103807 () Bool)

(assert (=> b!158495 (= e!103805 e!103807)))

(declare-fun res!74867 () Bool)

(assert (=> b!158495 (=> (not res!74867) (not e!103807))))

(declare-fun e!103804 () Bool)

(assert (=> b!158495 (= res!74867 (not e!103804))))

(declare-fun res!74869 () Bool)

(assert (=> b!158495 (=> (not res!74869) (not e!103804))))

(assert (=> b!158495 (= res!74869 (validKeyInArray!0 (select (arr!2668 (_keys!4982 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun b!158496 () Bool)

(declare-fun contains!975 (List!1904 (_ BitVec 64)) Bool)

(assert (=> b!158496 (= e!103804 (contains!975 Nil!1901 (select (arr!2668 (_keys!4982 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun d!51109 () Bool)

(declare-fun res!74868 () Bool)

(assert (=> d!51109 (=> res!74868 e!103805)))

(assert (=> d!51109 (= res!74868 (bvsge #b00000000000000000000000000000000 (size!2950 (_keys!4982 thiss!1248))))))

(assert (=> d!51109 (= (arrayNoDuplicates!0 (_keys!4982 thiss!1248) #b00000000000000000000000000000000 Nil!1901) e!103805)))

(declare-fun b!158497 () Bool)

(assert (=> b!158497 (= e!103806 call!17258)))

(declare-fun bm!17255 () Bool)

(declare-fun c!29823 () Bool)

(assert (=> bm!17255 (= call!17258 (arrayNoDuplicates!0 (_keys!4982 thiss!1248) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!29823 (Cons!1900 (select (arr!2668 (_keys!4982 thiss!1248)) #b00000000000000000000000000000000) Nil!1901) Nil!1901)))))

(declare-fun b!158498 () Bool)

(assert (=> b!158498 (= e!103807 e!103806)))

(assert (=> b!158498 (= c!29823 (validKeyInArray!0 (select (arr!2668 (_keys!4982 thiss!1248)) #b00000000000000000000000000000000)))))

(assert (= (and d!51109 (not res!74868)) b!158495))

(assert (= (and b!158495 res!74869) b!158496))

(assert (= (and b!158495 res!74867) b!158498))

(assert (= (and b!158498 c!29823) b!158494))

(assert (= (and b!158498 (not c!29823)) b!158497))

(assert (= (or b!158494 b!158497) bm!17255))

(assert (=> b!158495 m!191185))

(assert (=> b!158495 m!191185))

(assert (=> b!158495 m!191187))

(assert (=> b!158496 m!191185))

(assert (=> b!158496 m!191185))

(declare-fun m!191199 () Bool)

(assert (=> b!158496 m!191199))

(assert (=> bm!17255 m!191185))

(declare-fun m!191201 () Bool)

(assert (=> bm!17255 m!191201))

(assert (=> b!158498 m!191185))

(assert (=> b!158498 m!191185))

(assert (=> b!158498 m!191187))

(assert (=> b!158412 d!51109))

(declare-fun b!158511 () Bool)

(declare-fun c!29831 () Bool)

(declare-fun lt!81904 () (_ BitVec 64))

(assert (=> b!158511 (= c!29831 (= lt!81904 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!103814 () SeekEntryResult!309)

(declare-fun e!103816 () SeekEntryResult!309)

(assert (=> b!158511 (= e!103814 e!103816)))

(declare-fun b!158512 () Bool)

(declare-fun e!103815 () SeekEntryResult!309)

(assert (=> b!158512 (= e!103815 Undefined!309)))

(declare-fun b!158513 () Bool)

(assert (=> b!158513 (= e!103816 (MissingVacant!309 (index!3406 lt!81873)))))

(declare-fun d!51111 () Bool)

(declare-fun lt!81905 () SeekEntryResult!309)

(assert (=> d!51111 (and (or ((_ is Undefined!309) lt!81905) (not ((_ is Found!309) lt!81905)) (and (bvsge (index!3405 lt!81905) #b00000000000000000000000000000000) (bvslt (index!3405 lt!81905) (size!2950 (_keys!4982 thiss!1248))))) (or ((_ is Undefined!309) lt!81905) ((_ is Found!309) lt!81905) (not ((_ is MissingVacant!309) lt!81905)) (not (= (index!3407 lt!81905) (index!3406 lt!81873))) (and (bvsge (index!3407 lt!81905) #b00000000000000000000000000000000) (bvslt (index!3407 lt!81905) (size!2950 (_keys!4982 thiss!1248))))) (or ((_ is Undefined!309) lt!81905) (ite ((_ is Found!309) lt!81905) (= (select (arr!2668 (_keys!4982 thiss!1248)) (index!3405 lt!81905)) key!828) (and ((_ is MissingVacant!309) lt!81905) (= (index!3407 lt!81905) (index!3406 lt!81873)) (= (select (arr!2668 (_keys!4982 thiss!1248)) (index!3407 lt!81905)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!51111 (= lt!81905 e!103815)))

(declare-fun c!29832 () Bool)

(assert (=> d!51111 (= c!29832 (bvsge (x!17491 lt!81873) #b01111111111111111111111111111110))))

(assert (=> d!51111 (= lt!81904 (select (arr!2668 (_keys!4982 thiss!1248)) (index!3406 lt!81873)))))

(assert (=> d!51111 (validMask!0 (mask!7710 thiss!1248))))

(assert (=> d!51111 (= (seekKeyOrZeroReturnVacant!0 (x!17491 lt!81873) (index!3406 lt!81873) (index!3406 lt!81873) key!828 (_keys!4982 thiss!1248) (mask!7710 thiss!1248)) lt!81905)))

(declare-fun b!158514 () Bool)

(assert (=> b!158514 (= e!103814 (Found!309 (index!3406 lt!81873)))))

(declare-fun b!158515 () Bool)

(assert (=> b!158515 (= e!103815 e!103814)))

(declare-fun c!29830 () Bool)

(assert (=> b!158515 (= c!29830 (= lt!81904 key!828))))

(declare-fun b!158516 () Bool)

(assert (=> b!158516 (= e!103816 (seekKeyOrZeroReturnVacant!0 (bvadd (x!17491 lt!81873) #b00000000000000000000000000000001) (nextIndex!0 (index!3406 lt!81873) (x!17491 lt!81873) (mask!7710 thiss!1248)) (index!3406 lt!81873) key!828 (_keys!4982 thiss!1248) (mask!7710 thiss!1248)))))

(assert (= (and d!51111 c!29832) b!158512))

(assert (= (and d!51111 (not c!29832)) b!158515))

(assert (= (and b!158515 c!29830) b!158514))

(assert (= (and b!158515 (not c!29830)) b!158511))

(assert (= (and b!158511 c!29831) b!158513))

(assert (= (and b!158511 (not c!29831)) b!158516))

(declare-fun m!191203 () Bool)

(assert (=> d!51111 m!191203))

(declare-fun m!191205 () Bool)

(assert (=> d!51111 m!191205))

(assert (=> d!51111 m!191153))

(assert (=> d!51111 m!191137))

(declare-fun m!191207 () Bool)

(assert (=> b!158516 m!191207))

(assert (=> b!158516 m!191207))

(declare-fun m!191209 () Bool)

(assert (=> b!158516 m!191209))

(assert (=> b!158400 d!51111))

(declare-fun condMapEmpty!5605 () Bool)

(declare-fun mapDefault!5605 () ValueCell!1299)

(assert (=> mapNonEmpty!5604 (= condMapEmpty!5605 (= mapRest!5604 ((as const (Array (_ BitVec 32) ValueCell!1299)) mapDefault!5605)))))

(declare-fun e!103817 () Bool)

(declare-fun mapRes!5605 () Bool)

(assert (=> mapNonEmpty!5604 (= tp!13011 (and e!103817 mapRes!5605))))

(declare-fun mapNonEmpty!5605 () Bool)

(declare-fun tp!13012 () Bool)

(declare-fun e!103818 () Bool)

(assert (=> mapNonEmpty!5605 (= mapRes!5605 (and tp!13012 e!103818))))

(declare-fun mapValue!5605 () ValueCell!1299)

(declare-fun mapKey!5605 () (_ BitVec 32))

(declare-fun mapRest!5605 () (Array (_ BitVec 32) ValueCell!1299))

(assert (=> mapNonEmpty!5605 (= mapRest!5604 (store mapRest!5605 mapKey!5605 mapValue!5605))))

(declare-fun mapIsEmpty!5605 () Bool)

(assert (=> mapIsEmpty!5605 mapRes!5605))

(declare-fun b!158517 () Bool)

(assert (=> b!158517 (= e!103818 tp_is_empty!3285)))

(declare-fun b!158518 () Bool)

(assert (=> b!158518 (= e!103817 tp_is_empty!3285)))

(assert (= (and mapNonEmpty!5604 condMapEmpty!5605) mapIsEmpty!5605))

(assert (= (and mapNonEmpty!5604 (not condMapEmpty!5605)) mapNonEmpty!5605))

(assert (= (and mapNonEmpty!5605 ((_ is ValueCellFull!1299) mapValue!5605)) b!158517))

(assert (= (and mapNonEmpty!5604 ((_ is ValueCellFull!1299) mapDefault!5605)) b!158518))

(declare-fun m!191211 () Bool)

(assert (=> mapNonEmpty!5605 m!191211))

(check-sat (not b!158496) (not b!158458) b_and!9915 (not d!51099) (not b!158495) (not b!158471) (not bm!17255) (not b!158498) (not b!158443) (not b!158481) (not b_next!3483) (not b!158457) (not d!51103) (not bm!17252) (not d!51111) (not bm!17249) tp_is_empty!3285 (not b!158468) (not mapNonEmpty!5605) (not b!158516))
(check-sat b_and!9915 (not b_next!3483))
