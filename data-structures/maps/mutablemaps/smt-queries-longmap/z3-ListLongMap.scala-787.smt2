; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!18762 () Bool)

(assert start!18762)

(declare-fun b!185254 () Bool)

(declare-fun b_free!4563 () Bool)

(declare-fun b_next!4563 () Bool)

(assert (=> b!185254 (= b_free!4563 (not b_next!4563))))

(declare-fun tp!16481 () Bool)

(declare-fun b_and!11179 () Bool)

(assert (=> b!185254 (= tp!16481 b_and!11179)))

(declare-fun b!185248 () Bool)

(declare-fun res!87644 () Bool)

(declare-fun e!121922 () Bool)

(assert (=> b!185248 (=> (not res!87644) (not e!121922))))

(declare-fun key!828 () (_ BitVec 64))

(assert (=> b!185248 (= res!87644 (not (= key!828 (bvneg key!828))))))

(declare-fun b!185249 () Bool)

(declare-fun res!87641 () Bool)

(declare-fun e!121918 () Bool)

(assert (=> b!185249 (=> (not res!87641) (not e!121918))))

(declare-datatypes ((V!5427 0))(
  ( (V!5428 (val!2212 Int)) )
))
(declare-datatypes ((ValueCell!1824 0))(
  ( (ValueCellFull!1824 (v!4117 V!5427)) (EmptyCell!1824) )
))
(declare-datatypes ((array!7874 0))(
  ( (array!7875 (arr!3718 (Array (_ BitVec 32) (_ BitVec 64))) (size!4034 (_ BitVec 32))) )
))
(declare-datatypes ((array!7876 0))(
  ( (array!7877 (arr!3719 (Array (_ BitVec 32) ValueCell!1824)) (size!4035 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2556 0))(
  ( (LongMapFixedSize!2557 (defaultEntry!3778 Int) (mask!8881 (_ BitVec 32)) (extraKeys!3515 (_ BitVec 32)) (zeroValue!3619 V!5427) (minValue!3619 V!5427) (_size!1327 (_ BitVec 32)) (_keys!5715 array!7874) (_values!3761 array!7876) (_vacant!1327 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!2556)

(declare-datatypes ((tuple2!3442 0))(
  ( (tuple2!3443 (_1!1731 (_ BitVec 64)) (_2!1731 V!5427)) )
))
(declare-datatypes ((List!2376 0))(
  ( (Nil!2373) (Cons!2372 (h!3005 tuple2!3442) (t!7264 List!2376)) )
))
(declare-datatypes ((ListLongMap!2373 0))(
  ( (ListLongMap!2374 (toList!1202 List!2376)) )
))
(declare-fun contains!1290 (ListLongMap!2373 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!845 (array!7874 array!7876 (_ BitVec 32) (_ BitVec 32) V!5427 V!5427 (_ BitVec 32) Int) ListLongMap!2373)

(assert (=> b!185249 (= res!87641 (not (contains!1290 (getCurrentListMap!845 (_keys!5715 thiss!1248) (_values!3761 thiss!1248) (mask!8881 thiss!1248) (extraKeys!3515 thiss!1248) (zeroValue!3619 thiss!1248) (minValue!3619 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3778 thiss!1248)) key!828)))))

(declare-fun mapNonEmpty!7458 () Bool)

(declare-fun mapRes!7458 () Bool)

(declare-fun tp!16482 () Bool)

(declare-fun e!121920 () Bool)

(assert (=> mapNonEmpty!7458 (= mapRes!7458 (and tp!16482 e!121920))))

(declare-fun mapRest!7458 () (Array (_ BitVec 32) ValueCell!1824))

(declare-fun mapKey!7458 () (_ BitVec 32))

(declare-fun mapValue!7458 () ValueCell!1824)

(assert (=> mapNonEmpty!7458 (= (arr!3719 (_values!3761 thiss!1248)) (store mapRest!7458 mapKey!7458 mapValue!7458))))

(declare-fun b!185250 () Bool)

(declare-datatypes ((List!2377 0))(
  ( (Nil!2374) (Cons!2373 (h!3006 (_ BitVec 64)) (t!7265 List!2377)) )
))
(declare-fun arrayNoDuplicates!0 (array!7874 (_ BitVec 32) List!2377) Bool)

(assert (=> b!185250 (= e!121918 (not (arrayNoDuplicates!0 (_keys!5715 thiss!1248) #b00000000000000000000000000000000 Nil!2374)))))

(declare-fun b!185251 () Bool)

(assert (=> b!185251 (= e!121922 e!121918)))

(declare-fun res!87639 () Bool)

(assert (=> b!185251 (=> (not res!87639) (not e!121918))))

(declare-datatypes ((SeekEntryResult!641 0))(
  ( (MissingZero!641 (index!4734 (_ BitVec 32))) (Found!641 (index!4735 (_ BitVec 32))) (Intermediate!641 (undefined!1453 Bool) (index!4736 (_ BitVec 32)) (x!20135 (_ BitVec 32))) (Undefined!641) (MissingVacant!641 (index!4737 (_ BitVec 32))) )
))
(declare-fun lt!91669 () SeekEntryResult!641)

(get-info :version)

(assert (=> b!185251 (= res!87639 (and (not ((_ is Undefined!641) lt!91669)) (not ((_ is MissingVacant!641) lt!91669)) (not ((_ is MissingZero!641) lt!91669)) ((_ is Found!641) lt!91669)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!7874 (_ BitVec 32)) SeekEntryResult!641)

(assert (=> b!185251 (= lt!91669 (seekEntryOrOpen!0 key!828 (_keys!5715 thiss!1248) (mask!8881 thiss!1248)))))

(declare-fun mapIsEmpty!7458 () Bool)

(assert (=> mapIsEmpty!7458 mapRes!7458))

(declare-fun b!185252 () Bool)

(declare-fun e!121921 () Bool)

(declare-fun tp_is_empty!4335 () Bool)

(assert (=> b!185252 (= e!121921 tp_is_empty!4335)))

(declare-fun b!185253 () Bool)

(declare-fun e!121919 () Bool)

(assert (=> b!185253 (= e!121919 (and e!121921 mapRes!7458))))

(declare-fun condMapEmpty!7458 () Bool)

(declare-fun mapDefault!7458 () ValueCell!1824)

(assert (=> b!185253 (= condMapEmpty!7458 (= (arr!3719 (_values!3761 thiss!1248)) ((as const (Array (_ BitVec 32) ValueCell!1824)) mapDefault!7458)))))

(declare-fun e!121923 () Bool)

(declare-fun array_inv!2395 (array!7874) Bool)

(declare-fun array_inv!2396 (array!7876) Bool)

(assert (=> b!185254 (= e!121923 (and tp!16481 tp_is_empty!4335 (array_inv!2395 (_keys!5715 thiss!1248)) (array_inv!2396 (_values!3761 thiss!1248)) e!121919))))

(declare-fun b!185255 () Bool)

(declare-fun res!87638 () Bool)

(assert (=> b!185255 (=> (not res!87638) (not e!121918))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!185255 (= res!87638 (validMask!0 (mask!8881 thiss!1248)))))

(declare-fun b!185256 () Bool)

(declare-fun res!87642 () Bool)

(assert (=> b!185256 (=> (not res!87642) (not e!121918))))

(assert (=> b!185256 (= res!87642 (and (= (size!4035 (_values!3761 thiss!1248)) (bvadd #b00000000000000000000000000000001 (mask!8881 thiss!1248))) (= (size!4034 (_keys!5715 thiss!1248)) (size!4035 (_values!3761 thiss!1248))) (bvsge (mask!8881 thiss!1248) #b00000000000000000000000000000000) (bvsge (extraKeys!3515 thiss!1248) #b00000000000000000000000000000000) (bvsle (extraKeys!3515 thiss!1248) #b00000000000000000000000000000011)))))

(declare-fun res!87643 () Bool)

(assert (=> start!18762 (=> (not res!87643) (not e!121922))))

(declare-fun valid!1046 (LongMapFixedSize!2556) Bool)

(assert (=> start!18762 (= res!87643 (valid!1046 thiss!1248))))

(assert (=> start!18762 e!121922))

(assert (=> start!18762 e!121923))

(assert (=> start!18762 true))

(declare-fun b!185257 () Bool)

(assert (=> b!185257 (= e!121920 tp_is_empty!4335)))

(declare-fun b!185258 () Bool)

(declare-fun res!87640 () Bool)

(assert (=> b!185258 (=> (not res!87640) (not e!121918))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!7874 (_ BitVec 32)) Bool)

(assert (=> b!185258 (= res!87640 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!5715 thiss!1248) (mask!8881 thiss!1248)))))

(assert (= (and start!18762 res!87643) b!185248))

(assert (= (and b!185248 res!87644) b!185251))

(assert (= (and b!185251 res!87639) b!185249))

(assert (= (and b!185249 res!87641) b!185255))

(assert (= (and b!185255 res!87638) b!185256))

(assert (= (and b!185256 res!87642) b!185258))

(assert (= (and b!185258 res!87640) b!185250))

(assert (= (and b!185253 condMapEmpty!7458) mapIsEmpty!7458))

(assert (= (and b!185253 (not condMapEmpty!7458)) mapNonEmpty!7458))

(assert (= (and mapNonEmpty!7458 ((_ is ValueCellFull!1824) mapValue!7458)) b!185257))

(assert (= (and b!185253 ((_ is ValueCellFull!1824) mapDefault!7458)) b!185252))

(assert (= b!185254 b!185253))

(assert (= start!18762 b!185254))

(declare-fun m!212541 () Bool)

(assert (=> b!185250 m!212541))

(declare-fun m!212543 () Bool)

(assert (=> b!185249 m!212543))

(assert (=> b!185249 m!212543))

(declare-fun m!212545 () Bool)

(assert (=> b!185249 m!212545))

(declare-fun m!212547 () Bool)

(assert (=> b!185254 m!212547))

(declare-fun m!212549 () Bool)

(assert (=> b!185254 m!212549))

(declare-fun m!212551 () Bool)

(assert (=> b!185255 m!212551))

(declare-fun m!212553 () Bool)

(assert (=> mapNonEmpty!7458 m!212553))

(declare-fun m!212555 () Bool)

(assert (=> b!185251 m!212555))

(declare-fun m!212557 () Bool)

(assert (=> start!18762 m!212557))

(declare-fun m!212559 () Bool)

(assert (=> b!185258 m!212559))

(check-sat (not start!18762) (not b!185249) (not b_next!4563) (not b!185258) (not b!185250) (not b!185251) (not b!185254) (not mapNonEmpty!7458) (not b!185255) b_and!11179 tp_is_empty!4335)
(check-sat b_and!11179 (not b_next!4563))
(get-model)

(declare-fun e!121951 () SeekEntryResult!641)

(declare-fun b!185304 () Bool)

(declare-fun lt!91679 () SeekEntryResult!641)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!7874 (_ BitVec 32)) SeekEntryResult!641)

(assert (=> b!185304 (= e!121951 (seekKeyOrZeroReturnVacant!0 (x!20135 lt!91679) (index!4736 lt!91679) (index!4736 lt!91679) key!828 (_keys!5715 thiss!1248) (mask!8881 thiss!1248)))))

(declare-fun b!185305 () Bool)

(declare-fun e!121953 () SeekEntryResult!641)

(declare-fun e!121952 () SeekEntryResult!641)

(assert (=> b!185305 (= e!121953 e!121952)))

(declare-fun lt!91681 () (_ BitVec 64))

(assert (=> b!185305 (= lt!91681 (select (arr!3718 (_keys!5715 thiss!1248)) (index!4736 lt!91679)))))

(declare-fun c!33240 () Bool)

(assert (=> b!185305 (= c!33240 (= lt!91681 key!828))))

(declare-fun b!185306 () Bool)

(assert (=> b!185306 (= e!121951 (MissingZero!641 (index!4736 lt!91679)))))

(declare-fun b!185307 () Bool)

(assert (=> b!185307 (= e!121952 (Found!641 (index!4736 lt!91679)))))

(declare-fun b!185308 () Bool)

(declare-fun c!33238 () Bool)

(assert (=> b!185308 (= c!33238 (= lt!91681 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!185308 (= e!121952 e!121951)))

(declare-fun d!55013 () Bool)

(declare-fun lt!91680 () SeekEntryResult!641)

(assert (=> d!55013 (and (or ((_ is Undefined!641) lt!91680) (not ((_ is Found!641) lt!91680)) (and (bvsge (index!4735 lt!91680) #b00000000000000000000000000000000) (bvslt (index!4735 lt!91680) (size!4034 (_keys!5715 thiss!1248))))) (or ((_ is Undefined!641) lt!91680) ((_ is Found!641) lt!91680) (not ((_ is MissingZero!641) lt!91680)) (and (bvsge (index!4734 lt!91680) #b00000000000000000000000000000000) (bvslt (index!4734 lt!91680) (size!4034 (_keys!5715 thiss!1248))))) (or ((_ is Undefined!641) lt!91680) ((_ is Found!641) lt!91680) ((_ is MissingZero!641) lt!91680) (not ((_ is MissingVacant!641) lt!91680)) (and (bvsge (index!4737 lt!91680) #b00000000000000000000000000000000) (bvslt (index!4737 lt!91680) (size!4034 (_keys!5715 thiss!1248))))) (or ((_ is Undefined!641) lt!91680) (ite ((_ is Found!641) lt!91680) (= (select (arr!3718 (_keys!5715 thiss!1248)) (index!4735 lt!91680)) key!828) (ite ((_ is MissingZero!641) lt!91680) (= (select (arr!3718 (_keys!5715 thiss!1248)) (index!4734 lt!91680)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!641) lt!91680) (= (select (arr!3718 (_keys!5715 thiss!1248)) (index!4737 lt!91680)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!55013 (= lt!91680 e!121953)))

(declare-fun c!33239 () Bool)

(assert (=> d!55013 (= c!33239 (and ((_ is Intermediate!641) lt!91679) (undefined!1453 lt!91679)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!7874 (_ BitVec 32)) SeekEntryResult!641)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!55013 (= lt!91679 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 key!828 (mask!8881 thiss!1248)) key!828 (_keys!5715 thiss!1248) (mask!8881 thiss!1248)))))

(assert (=> d!55013 (validMask!0 (mask!8881 thiss!1248))))

(assert (=> d!55013 (= (seekEntryOrOpen!0 key!828 (_keys!5715 thiss!1248) (mask!8881 thiss!1248)) lt!91680)))

(declare-fun b!185309 () Bool)

(assert (=> b!185309 (= e!121953 Undefined!641)))

(assert (= (and d!55013 c!33239) b!185309))

(assert (= (and d!55013 (not c!33239)) b!185305))

(assert (= (and b!185305 c!33240) b!185307))

(assert (= (and b!185305 (not c!33240)) b!185308))

(assert (= (and b!185308 c!33238) b!185306))

(assert (= (and b!185308 (not c!33238)) b!185304))

(declare-fun m!212581 () Bool)

(assert (=> b!185304 m!212581))

(declare-fun m!212583 () Bool)

(assert (=> b!185305 m!212583))

(declare-fun m!212585 () Bool)

(assert (=> d!55013 m!212585))

(declare-fun m!212587 () Bool)

(assert (=> d!55013 m!212587))

(declare-fun m!212589 () Bool)

(assert (=> d!55013 m!212589))

(assert (=> d!55013 m!212551))

(declare-fun m!212591 () Bool)

(assert (=> d!55013 m!212591))

(declare-fun m!212593 () Bool)

(assert (=> d!55013 m!212593))

(assert (=> d!55013 m!212587))

(assert (=> b!185251 d!55013))

(declare-fun d!55015 () Bool)

(assert (=> d!55015 (= (validMask!0 (mask!8881 thiss!1248)) (and (or (= (mask!8881 thiss!1248) #b00000000000000000000000000000111) (= (mask!8881 thiss!1248) #b00000000000000000000000000001111) (= (mask!8881 thiss!1248) #b00000000000000000000000000011111) (= (mask!8881 thiss!1248) #b00000000000000000000000000111111) (= (mask!8881 thiss!1248) #b00000000000000000000000001111111) (= (mask!8881 thiss!1248) #b00000000000000000000000011111111) (= (mask!8881 thiss!1248) #b00000000000000000000000111111111) (= (mask!8881 thiss!1248) #b00000000000000000000001111111111) (= (mask!8881 thiss!1248) #b00000000000000000000011111111111) (= (mask!8881 thiss!1248) #b00000000000000000000111111111111) (= (mask!8881 thiss!1248) #b00000000000000000001111111111111) (= (mask!8881 thiss!1248) #b00000000000000000011111111111111) (= (mask!8881 thiss!1248) #b00000000000000000111111111111111) (= (mask!8881 thiss!1248) #b00000000000000001111111111111111) (= (mask!8881 thiss!1248) #b00000000000000011111111111111111) (= (mask!8881 thiss!1248) #b00000000000000111111111111111111) (= (mask!8881 thiss!1248) #b00000000000001111111111111111111) (= (mask!8881 thiss!1248) #b00000000000011111111111111111111) (= (mask!8881 thiss!1248) #b00000000000111111111111111111111) (= (mask!8881 thiss!1248) #b00000000001111111111111111111111) (= (mask!8881 thiss!1248) #b00000000011111111111111111111111) (= (mask!8881 thiss!1248) #b00000000111111111111111111111111) (= (mask!8881 thiss!1248) #b00000001111111111111111111111111) (= (mask!8881 thiss!1248) #b00000011111111111111111111111111) (= (mask!8881 thiss!1248) #b00000111111111111111111111111111) (= (mask!8881 thiss!1248) #b00001111111111111111111111111111) (= (mask!8881 thiss!1248) #b00011111111111111111111111111111) (= (mask!8881 thiss!1248) #b00111111111111111111111111111111)) (bvsle (mask!8881 thiss!1248) #b00111111111111111111111111111111)))))

(assert (=> b!185255 d!55015))

(declare-fun d!55017 () Bool)

(assert (=> d!55017 (= (array_inv!2395 (_keys!5715 thiss!1248)) (bvsge (size!4034 (_keys!5715 thiss!1248)) #b00000000000000000000000000000000))))

(assert (=> b!185254 d!55017))

(declare-fun d!55019 () Bool)

(assert (=> d!55019 (= (array_inv!2396 (_values!3761 thiss!1248)) (bvsge (size!4035 (_values!3761 thiss!1248)) #b00000000000000000000000000000000))))

(assert (=> b!185254 d!55019))

(declare-fun d!55021 () Bool)

(declare-fun res!87672 () Bool)

(declare-fun e!121956 () Bool)

(assert (=> d!55021 (=> (not res!87672) (not e!121956))))

(declare-fun simpleValid!180 (LongMapFixedSize!2556) Bool)

(assert (=> d!55021 (= res!87672 (simpleValid!180 thiss!1248))))

(assert (=> d!55021 (= (valid!1046 thiss!1248) e!121956)))

(declare-fun b!185316 () Bool)

(declare-fun res!87673 () Bool)

(assert (=> b!185316 (=> (not res!87673) (not e!121956))))

(declare-fun arrayCountValidKeys!0 (array!7874 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!185316 (= res!87673 (= (arrayCountValidKeys!0 (_keys!5715 thiss!1248) #b00000000000000000000000000000000 (size!4034 (_keys!5715 thiss!1248))) (_size!1327 thiss!1248)))))

(declare-fun b!185317 () Bool)

(declare-fun res!87674 () Bool)

(assert (=> b!185317 (=> (not res!87674) (not e!121956))))

(assert (=> b!185317 (= res!87674 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!5715 thiss!1248) (mask!8881 thiss!1248)))))

(declare-fun b!185318 () Bool)

(assert (=> b!185318 (= e!121956 (arrayNoDuplicates!0 (_keys!5715 thiss!1248) #b00000000000000000000000000000000 Nil!2374))))

(assert (= (and d!55021 res!87672) b!185316))

(assert (= (and b!185316 res!87673) b!185317))

(assert (= (and b!185317 res!87674) b!185318))

(declare-fun m!212595 () Bool)

(assert (=> d!55021 m!212595))

(declare-fun m!212597 () Bool)

(assert (=> b!185316 m!212597))

(assert (=> b!185317 m!212559))

(assert (=> b!185318 m!212541))

(assert (=> start!18762 d!55021))

(declare-fun b!185329 () Bool)

(declare-fun e!121967 () Bool)

(declare-fun e!121968 () Bool)

(assert (=> b!185329 (= e!121967 e!121968)))

(declare-fun c!33243 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!185329 (= c!33243 (validKeyInArray!0 (select (arr!3718 (_keys!5715 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun bm!18683 () Bool)

(declare-fun call!18686 () Bool)

(assert (=> bm!18683 (= call!18686 (arrayNoDuplicates!0 (_keys!5715 thiss!1248) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!33243 (Cons!2373 (select (arr!3718 (_keys!5715 thiss!1248)) #b00000000000000000000000000000000) Nil!2374) Nil!2374)))))

(declare-fun b!185330 () Bool)

(assert (=> b!185330 (= e!121968 call!18686)))

(declare-fun b!185331 () Bool)

(declare-fun e!121966 () Bool)

(declare-fun contains!1292 (List!2377 (_ BitVec 64)) Bool)

(assert (=> b!185331 (= e!121966 (contains!1292 Nil!2374 (select (arr!3718 (_keys!5715 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun b!185332 () Bool)

(assert (=> b!185332 (= e!121968 call!18686)))

(declare-fun d!55023 () Bool)

(declare-fun res!87683 () Bool)

(declare-fun e!121965 () Bool)

(assert (=> d!55023 (=> res!87683 e!121965)))

(assert (=> d!55023 (= res!87683 (bvsge #b00000000000000000000000000000000 (size!4034 (_keys!5715 thiss!1248))))))

(assert (=> d!55023 (= (arrayNoDuplicates!0 (_keys!5715 thiss!1248) #b00000000000000000000000000000000 Nil!2374) e!121965)))

(declare-fun b!185333 () Bool)

(assert (=> b!185333 (= e!121965 e!121967)))

(declare-fun res!87681 () Bool)

(assert (=> b!185333 (=> (not res!87681) (not e!121967))))

(assert (=> b!185333 (= res!87681 (not e!121966))))

(declare-fun res!87682 () Bool)

(assert (=> b!185333 (=> (not res!87682) (not e!121966))))

(assert (=> b!185333 (= res!87682 (validKeyInArray!0 (select (arr!3718 (_keys!5715 thiss!1248)) #b00000000000000000000000000000000)))))

(assert (= (and d!55023 (not res!87683)) b!185333))

(assert (= (and b!185333 res!87682) b!185331))

(assert (= (and b!185333 res!87681) b!185329))

(assert (= (and b!185329 c!33243) b!185332))

(assert (= (and b!185329 (not c!33243)) b!185330))

(assert (= (or b!185332 b!185330) bm!18683))

(declare-fun m!212599 () Bool)

(assert (=> b!185329 m!212599))

(assert (=> b!185329 m!212599))

(declare-fun m!212601 () Bool)

(assert (=> b!185329 m!212601))

(assert (=> bm!18683 m!212599))

(declare-fun m!212603 () Bool)

(assert (=> bm!18683 m!212603))

(assert (=> b!185331 m!212599))

(assert (=> b!185331 m!212599))

(declare-fun m!212605 () Bool)

(assert (=> b!185331 m!212605))

(assert (=> b!185333 m!212599))

(assert (=> b!185333 m!212599))

(assert (=> b!185333 m!212601))

(assert (=> b!185250 d!55023))

(declare-fun d!55025 () Bool)

(declare-fun res!87689 () Bool)

(declare-fun e!121975 () Bool)

(assert (=> d!55025 (=> res!87689 e!121975)))

(assert (=> d!55025 (= res!87689 (bvsge #b00000000000000000000000000000000 (size!4034 (_keys!5715 thiss!1248))))))

(assert (=> d!55025 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!5715 thiss!1248) (mask!8881 thiss!1248)) e!121975)))

(declare-fun b!185342 () Bool)

(declare-fun e!121976 () Bool)

(assert (=> b!185342 (= e!121975 e!121976)))

(declare-fun c!33246 () Bool)

(assert (=> b!185342 (= c!33246 (validKeyInArray!0 (select (arr!3718 (_keys!5715 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun bm!18686 () Bool)

(declare-fun call!18689 () Bool)

(assert (=> bm!18686 (= call!18689 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (_keys!5715 thiss!1248) (mask!8881 thiss!1248)))))

(declare-fun b!185343 () Bool)

(declare-fun e!121977 () Bool)

(assert (=> b!185343 (= e!121976 e!121977)))

(declare-fun lt!91689 () (_ BitVec 64))

(assert (=> b!185343 (= lt!91689 (select (arr!3718 (_keys!5715 thiss!1248)) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!5585 0))(
  ( (Unit!5586) )
))
(declare-fun lt!91688 () Unit!5585)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!7874 (_ BitVec 64) (_ BitVec 32)) Unit!5585)

(assert (=> b!185343 (= lt!91688 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!5715 thiss!1248) lt!91689 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!7874 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!185343 (arrayContainsKey!0 (_keys!5715 thiss!1248) lt!91689 #b00000000000000000000000000000000)))

(declare-fun lt!91690 () Unit!5585)

(assert (=> b!185343 (= lt!91690 lt!91688)))

(declare-fun res!87688 () Bool)

(assert (=> b!185343 (= res!87688 (= (seekEntryOrOpen!0 (select (arr!3718 (_keys!5715 thiss!1248)) #b00000000000000000000000000000000) (_keys!5715 thiss!1248) (mask!8881 thiss!1248)) (Found!641 #b00000000000000000000000000000000)))))

(assert (=> b!185343 (=> (not res!87688) (not e!121977))))

(declare-fun b!185344 () Bool)

(assert (=> b!185344 (= e!121977 call!18689)))

(declare-fun b!185345 () Bool)

(assert (=> b!185345 (= e!121976 call!18689)))

(assert (= (and d!55025 (not res!87689)) b!185342))

(assert (= (and b!185342 c!33246) b!185343))

(assert (= (and b!185342 (not c!33246)) b!185345))

(assert (= (and b!185343 res!87688) b!185344))

(assert (= (or b!185344 b!185345) bm!18686))

(assert (=> b!185342 m!212599))

(assert (=> b!185342 m!212599))

(assert (=> b!185342 m!212601))

(declare-fun m!212607 () Bool)

(assert (=> bm!18686 m!212607))

(assert (=> b!185343 m!212599))

(declare-fun m!212609 () Bool)

(assert (=> b!185343 m!212609))

(declare-fun m!212611 () Bool)

(assert (=> b!185343 m!212611))

(assert (=> b!185343 m!212599))

(declare-fun m!212613 () Bool)

(assert (=> b!185343 m!212613))

(assert (=> b!185258 d!55025))

(declare-fun d!55027 () Bool)

(declare-fun e!121982 () Bool)

(assert (=> d!55027 e!121982))

(declare-fun res!87692 () Bool)

(assert (=> d!55027 (=> res!87692 e!121982)))

(declare-fun lt!91700 () Bool)

(assert (=> d!55027 (= res!87692 (not lt!91700))))

(declare-fun lt!91702 () Bool)

(assert (=> d!55027 (= lt!91700 lt!91702)))

(declare-fun lt!91699 () Unit!5585)

(declare-fun e!121983 () Unit!5585)

(assert (=> d!55027 (= lt!91699 e!121983)))

(declare-fun c!33249 () Bool)

(assert (=> d!55027 (= c!33249 lt!91702)))

(declare-fun containsKey!225 (List!2376 (_ BitVec 64)) Bool)

(assert (=> d!55027 (= lt!91702 (containsKey!225 (toList!1202 (getCurrentListMap!845 (_keys!5715 thiss!1248) (_values!3761 thiss!1248) (mask!8881 thiss!1248) (extraKeys!3515 thiss!1248) (zeroValue!3619 thiss!1248) (minValue!3619 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3778 thiss!1248))) key!828))))

(assert (=> d!55027 (= (contains!1290 (getCurrentListMap!845 (_keys!5715 thiss!1248) (_values!3761 thiss!1248) (mask!8881 thiss!1248) (extraKeys!3515 thiss!1248) (zeroValue!3619 thiss!1248) (minValue!3619 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3778 thiss!1248)) key!828) lt!91700)))

(declare-fun b!185352 () Bool)

(declare-fun lt!91701 () Unit!5585)

(assert (=> b!185352 (= e!121983 lt!91701)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!174 (List!2376 (_ BitVec 64)) Unit!5585)

(assert (=> b!185352 (= lt!91701 (lemmaContainsKeyImpliesGetValueByKeyDefined!174 (toList!1202 (getCurrentListMap!845 (_keys!5715 thiss!1248) (_values!3761 thiss!1248) (mask!8881 thiss!1248) (extraKeys!3515 thiss!1248) (zeroValue!3619 thiss!1248) (minValue!3619 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3778 thiss!1248))) key!828))))

(declare-datatypes ((Option!227 0))(
  ( (Some!226 (v!4119 V!5427)) (None!225) )
))
(declare-fun isDefined!175 (Option!227) Bool)

(declare-fun getValueByKey!221 (List!2376 (_ BitVec 64)) Option!227)

(assert (=> b!185352 (isDefined!175 (getValueByKey!221 (toList!1202 (getCurrentListMap!845 (_keys!5715 thiss!1248) (_values!3761 thiss!1248) (mask!8881 thiss!1248) (extraKeys!3515 thiss!1248) (zeroValue!3619 thiss!1248) (minValue!3619 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3778 thiss!1248))) key!828))))

(declare-fun b!185353 () Bool)

(declare-fun Unit!5587 () Unit!5585)

(assert (=> b!185353 (= e!121983 Unit!5587)))

(declare-fun b!185354 () Bool)

(assert (=> b!185354 (= e!121982 (isDefined!175 (getValueByKey!221 (toList!1202 (getCurrentListMap!845 (_keys!5715 thiss!1248) (_values!3761 thiss!1248) (mask!8881 thiss!1248) (extraKeys!3515 thiss!1248) (zeroValue!3619 thiss!1248) (minValue!3619 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3778 thiss!1248))) key!828)))))

(assert (= (and d!55027 c!33249) b!185352))

(assert (= (and d!55027 (not c!33249)) b!185353))

(assert (= (and d!55027 (not res!87692)) b!185354))

(declare-fun m!212615 () Bool)

(assert (=> d!55027 m!212615))

(declare-fun m!212617 () Bool)

(assert (=> b!185352 m!212617))

(declare-fun m!212619 () Bool)

(assert (=> b!185352 m!212619))

(assert (=> b!185352 m!212619))

(declare-fun m!212621 () Bool)

(assert (=> b!185352 m!212621))

(assert (=> b!185354 m!212619))

(assert (=> b!185354 m!212619))

(assert (=> b!185354 m!212621))

(assert (=> b!185249 d!55027))

(declare-fun b!185397 () Bool)

(declare-fun e!122011 () Bool)

(declare-fun lt!91753 () ListLongMap!2373)

(declare-fun apply!165 (ListLongMap!2373 (_ BitVec 64)) V!5427)

(assert (=> b!185397 (= e!122011 (= (apply!165 lt!91753 #b0000000000000000000000000000000000000000000000000000000000000000) (zeroValue!3619 thiss!1248)))))

(declare-fun b!185398 () Bool)

(declare-fun e!122020 () Bool)

(assert (=> b!185398 (= e!122020 e!122011)))

(declare-fun res!87714 () Bool)

(declare-fun call!18706 () Bool)

(assert (=> b!185398 (= res!87714 call!18706)))

(assert (=> b!185398 (=> (not res!87714) (not e!122011))))

(declare-fun b!185399 () Bool)

(declare-fun e!122017 () ListLongMap!2373)

(declare-fun call!18707 () ListLongMap!2373)

(declare-fun +!280 (ListLongMap!2373 tuple2!3442) ListLongMap!2373)

(assert (=> b!185399 (= e!122017 (+!280 call!18707 (tuple2!3443 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3619 thiss!1248))))))

(declare-fun b!185400 () Bool)

(declare-fun c!33262 () Bool)

(assert (=> b!185400 (= c!33262 (and (not (= (bvand (extraKeys!3515 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (extraKeys!3515 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun e!122016 () ListLongMap!2373)

(declare-fun e!122010 () ListLongMap!2373)

(assert (=> b!185400 (= e!122016 e!122010)))

(declare-fun bm!18701 () Bool)

(declare-fun call!18708 () ListLongMap!2373)

(declare-fun call!18704 () ListLongMap!2373)

(assert (=> bm!18701 (= call!18708 call!18704)))

(declare-fun b!185401 () Bool)

(declare-fun e!122015 () Unit!5585)

(declare-fun lt!91756 () Unit!5585)

(assert (=> b!185401 (= e!122015 lt!91756)))

(declare-fun lt!91747 () ListLongMap!2373)

(declare-fun getCurrentListMapNoExtraKeys!195 (array!7874 array!7876 (_ BitVec 32) (_ BitVec 32) V!5427 V!5427 (_ BitVec 32) Int) ListLongMap!2373)

(assert (=> b!185401 (= lt!91747 (getCurrentListMapNoExtraKeys!195 (_keys!5715 thiss!1248) (_values!3761 thiss!1248) (mask!8881 thiss!1248) (extraKeys!3515 thiss!1248) (zeroValue!3619 thiss!1248) (minValue!3619 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3778 thiss!1248)))))

(declare-fun lt!91762 () (_ BitVec 64))

(assert (=> b!185401 (= lt!91762 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!91759 () (_ BitVec 64))

(assert (=> b!185401 (= lt!91759 (select (arr!3718 (_keys!5715 thiss!1248)) #b00000000000000000000000000000000))))

(declare-fun lt!91754 () Unit!5585)

(declare-fun addStillContains!141 (ListLongMap!2373 (_ BitVec 64) V!5427 (_ BitVec 64)) Unit!5585)

(assert (=> b!185401 (= lt!91754 (addStillContains!141 lt!91747 lt!91762 (zeroValue!3619 thiss!1248) lt!91759))))

(assert (=> b!185401 (contains!1290 (+!280 lt!91747 (tuple2!3443 lt!91762 (zeroValue!3619 thiss!1248))) lt!91759)))

(declare-fun lt!91766 () Unit!5585)

(assert (=> b!185401 (= lt!91766 lt!91754)))

(declare-fun lt!91758 () ListLongMap!2373)

(assert (=> b!185401 (= lt!91758 (getCurrentListMapNoExtraKeys!195 (_keys!5715 thiss!1248) (_values!3761 thiss!1248) (mask!8881 thiss!1248) (extraKeys!3515 thiss!1248) (zeroValue!3619 thiss!1248) (minValue!3619 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3778 thiss!1248)))))

(declare-fun lt!91751 () (_ BitVec 64))

(assert (=> b!185401 (= lt!91751 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!91755 () (_ BitVec 64))

(assert (=> b!185401 (= lt!91755 (select (arr!3718 (_keys!5715 thiss!1248)) #b00000000000000000000000000000000))))

(declare-fun lt!91752 () Unit!5585)

(declare-fun addApplyDifferent!141 (ListLongMap!2373 (_ BitVec 64) V!5427 (_ BitVec 64)) Unit!5585)

(assert (=> b!185401 (= lt!91752 (addApplyDifferent!141 lt!91758 lt!91751 (minValue!3619 thiss!1248) lt!91755))))

(assert (=> b!185401 (= (apply!165 (+!280 lt!91758 (tuple2!3443 lt!91751 (minValue!3619 thiss!1248))) lt!91755) (apply!165 lt!91758 lt!91755))))

(declare-fun lt!91765 () Unit!5585)

(assert (=> b!185401 (= lt!91765 lt!91752)))

(declare-fun lt!91763 () ListLongMap!2373)

(assert (=> b!185401 (= lt!91763 (getCurrentListMapNoExtraKeys!195 (_keys!5715 thiss!1248) (_values!3761 thiss!1248) (mask!8881 thiss!1248) (extraKeys!3515 thiss!1248) (zeroValue!3619 thiss!1248) (minValue!3619 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3778 thiss!1248)))))

(declare-fun lt!91750 () (_ BitVec 64))

(assert (=> b!185401 (= lt!91750 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!91767 () (_ BitVec 64))

(assert (=> b!185401 (= lt!91767 (select (arr!3718 (_keys!5715 thiss!1248)) #b00000000000000000000000000000000))))

(declare-fun lt!91760 () Unit!5585)

(assert (=> b!185401 (= lt!91760 (addApplyDifferent!141 lt!91763 lt!91750 (zeroValue!3619 thiss!1248) lt!91767))))

(assert (=> b!185401 (= (apply!165 (+!280 lt!91763 (tuple2!3443 lt!91750 (zeroValue!3619 thiss!1248))) lt!91767) (apply!165 lt!91763 lt!91767))))

(declare-fun lt!91748 () Unit!5585)

(assert (=> b!185401 (= lt!91748 lt!91760)))

(declare-fun lt!91768 () ListLongMap!2373)

(assert (=> b!185401 (= lt!91768 (getCurrentListMapNoExtraKeys!195 (_keys!5715 thiss!1248) (_values!3761 thiss!1248) (mask!8881 thiss!1248) (extraKeys!3515 thiss!1248) (zeroValue!3619 thiss!1248) (minValue!3619 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3778 thiss!1248)))))

(declare-fun lt!91757 () (_ BitVec 64))

(assert (=> b!185401 (= lt!91757 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!91749 () (_ BitVec 64))

(assert (=> b!185401 (= lt!91749 (select (arr!3718 (_keys!5715 thiss!1248)) #b00000000000000000000000000000000))))

(assert (=> b!185401 (= lt!91756 (addApplyDifferent!141 lt!91768 lt!91757 (minValue!3619 thiss!1248) lt!91749))))

(assert (=> b!185401 (= (apply!165 (+!280 lt!91768 (tuple2!3443 lt!91757 (minValue!3619 thiss!1248))) lt!91749) (apply!165 lt!91768 lt!91749))))

(declare-fun b!185402 () Bool)

(declare-fun e!122018 () Bool)

(declare-fun e!122012 () Bool)

(assert (=> b!185402 (= e!122018 e!122012)))

(declare-fun res!87718 () Bool)

(declare-fun call!18709 () Bool)

(assert (=> b!185402 (= res!87718 call!18709)))

(assert (=> b!185402 (=> (not res!87718) (not e!122012))))

(declare-fun b!185403 () Bool)

(assert (=> b!185403 (= e!122017 e!122016)))

(declare-fun c!33267 () Bool)

(assert (=> b!185403 (= c!33267 (and (not (= (bvand (extraKeys!3515 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (extraKeys!3515 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun bm!18702 () Bool)

(declare-fun call!18710 () ListLongMap!2373)

(assert (=> bm!18702 (= call!18710 (getCurrentListMapNoExtraKeys!195 (_keys!5715 thiss!1248) (_values!3761 thiss!1248) (mask!8881 thiss!1248) (extraKeys!3515 thiss!1248) (zeroValue!3619 thiss!1248) (minValue!3619 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3778 thiss!1248)))))

(declare-fun bm!18703 () Bool)

(declare-fun call!18705 () ListLongMap!2373)

(assert (=> bm!18703 (= call!18705 call!18707)))

(declare-fun b!185404 () Bool)

(declare-fun e!122022 () Bool)

(assert (=> b!185404 (= e!122022 (validKeyInArray!0 (select (arr!3718 (_keys!5715 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun b!185405 () Bool)

(assert (=> b!185405 (= e!122010 call!18705)))

(declare-fun b!185406 () Bool)

(declare-fun e!122019 () Bool)

(assert (=> b!185406 (= e!122019 e!122018)))

(declare-fun c!33266 () Bool)

(assert (=> b!185406 (= c!33266 (not (= (bvand (extraKeys!3515 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!185407 () Bool)

(declare-fun e!122014 () Bool)

(declare-fun get!2139 (ValueCell!1824 V!5427) V!5427)

(declare-fun dynLambda!503 (Int (_ BitVec 64)) V!5427)

(assert (=> b!185407 (= e!122014 (= (apply!165 lt!91753 (select (arr!3718 (_keys!5715 thiss!1248)) #b00000000000000000000000000000000)) (get!2139 (select (arr!3719 (_values!3761 thiss!1248)) #b00000000000000000000000000000000) (dynLambda!503 (defaultEntry!3778 thiss!1248) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!185407 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!4035 (_values!3761 thiss!1248))))))

(assert (=> b!185407 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!4034 (_keys!5715 thiss!1248))))))

(declare-fun b!185408 () Bool)

(declare-fun res!87711 () Bool)

(assert (=> b!185408 (=> (not res!87711) (not e!122019))))

(declare-fun e!122021 () Bool)

(assert (=> b!185408 (= res!87711 e!122021)))

(declare-fun res!87712 () Bool)

(assert (=> b!185408 (=> res!87712 e!122021)))

(assert (=> b!185408 (= res!87712 (not e!122022))))

(declare-fun res!87717 () Bool)

(assert (=> b!185408 (=> (not res!87717) (not e!122022))))

(assert (=> b!185408 (= res!87717 (bvslt #b00000000000000000000000000000000 (size!4034 (_keys!5715 thiss!1248))))))

(declare-fun bm!18704 () Bool)

(assert (=> bm!18704 (= call!18706 (contains!1290 lt!91753 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!185409 () Bool)

(assert (=> b!185409 (= e!122010 call!18708)))

(declare-fun b!185410 () Bool)

(assert (=> b!185410 (= e!122012 (= (apply!165 lt!91753 #b1000000000000000000000000000000000000000000000000000000000000000) (minValue!3619 thiss!1248)))))

(declare-fun b!185411 () Bool)

(assert (=> b!185411 (= e!122016 call!18705)))

(declare-fun b!185412 () Bool)

(declare-fun Unit!5588 () Unit!5585)

(assert (=> b!185412 (= e!122015 Unit!5588)))

(declare-fun bm!18705 () Bool)

(assert (=> bm!18705 (= call!18704 call!18710)))

(declare-fun b!185413 () Bool)

(assert (=> b!185413 (= e!122018 (not call!18709))))

(declare-fun b!185414 () Bool)

(assert (=> b!185414 (= e!122021 e!122014)))

(declare-fun res!87715 () Bool)

(assert (=> b!185414 (=> (not res!87715) (not e!122014))))

(assert (=> b!185414 (= res!87715 (contains!1290 lt!91753 (select (arr!3718 (_keys!5715 thiss!1248)) #b00000000000000000000000000000000)))))

(assert (=> b!185414 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!4034 (_keys!5715 thiss!1248))))))

(declare-fun d!55029 () Bool)

(assert (=> d!55029 e!122019))

(declare-fun res!87713 () Bool)

(assert (=> d!55029 (=> (not res!87713) (not e!122019))))

(assert (=> d!55029 (= res!87713 (or (bvsge #b00000000000000000000000000000000 (size!4034 (_keys!5715 thiss!1248))) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!4034 (_keys!5715 thiss!1248))))))))

(declare-fun lt!91764 () ListLongMap!2373)

(assert (=> d!55029 (= lt!91753 lt!91764)))

(declare-fun lt!91761 () Unit!5585)

(assert (=> d!55029 (= lt!91761 e!122015)))

(declare-fun c!33263 () Bool)

(declare-fun e!122013 () Bool)

(assert (=> d!55029 (= c!33263 e!122013)))

(declare-fun res!87716 () Bool)

(assert (=> d!55029 (=> (not res!87716) (not e!122013))))

(assert (=> d!55029 (= res!87716 (bvslt #b00000000000000000000000000000000 (size!4034 (_keys!5715 thiss!1248))))))

(assert (=> d!55029 (= lt!91764 e!122017)))

(declare-fun c!33265 () Bool)

(assert (=> d!55029 (= c!33265 (and (not (= (bvand (extraKeys!3515 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!3515 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!55029 (validMask!0 (mask!8881 thiss!1248))))

(assert (=> d!55029 (= (getCurrentListMap!845 (_keys!5715 thiss!1248) (_values!3761 thiss!1248) (mask!8881 thiss!1248) (extraKeys!3515 thiss!1248) (zeroValue!3619 thiss!1248) (minValue!3619 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3778 thiss!1248)) lt!91753)))

(declare-fun bm!18706 () Bool)

(assert (=> bm!18706 (= call!18709 (contains!1290 lt!91753 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!185415 () Bool)

(assert (=> b!185415 (= e!122020 (not call!18706))))

(declare-fun bm!18707 () Bool)

(assert (=> bm!18707 (= call!18707 (+!280 (ite c!33265 call!18710 (ite c!33267 call!18704 call!18708)) (ite (or c!33265 c!33267) (tuple2!3443 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3619 thiss!1248)) (tuple2!3443 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3619 thiss!1248)))))))

(declare-fun b!185416 () Bool)

(assert (=> b!185416 (= e!122013 (validKeyInArray!0 (select (arr!3718 (_keys!5715 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun b!185417 () Bool)

(declare-fun res!87719 () Bool)

(assert (=> b!185417 (=> (not res!87719) (not e!122019))))

(assert (=> b!185417 (= res!87719 e!122020)))

(declare-fun c!33264 () Bool)

(assert (=> b!185417 (= c!33264 (not (= (bvand (extraKeys!3515 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (= (and d!55029 c!33265) b!185399))

(assert (= (and d!55029 (not c!33265)) b!185403))

(assert (= (and b!185403 c!33267) b!185411))

(assert (= (and b!185403 (not c!33267)) b!185400))

(assert (= (and b!185400 c!33262) b!185405))

(assert (= (and b!185400 (not c!33262)) b!185409))

(assert (= (or b!185405 b!185409) bm!18701))

(assert (= (or b!185411 bm!18701) bm!18705))

(assert (= (or b!185411 b!185405) bm!18703))

(assert (= (or b!185399 bm!18705) bm!18702))

(assert (= (or b!185399 bm!18703) bm!18707))

(assert (= (and d!55029 res!87716) b!185416))

(assert (= (and d!55029 c!33263) b!185401))

(assert (= (and d!55029 (not c!33263)) b!185412))

(assert (= (and d!55029 res!87713) b!185408))

(assert (= (and b!185408 res!87717) b!185404))

(assert (= (and b!185408 (not res!87712)) b!185414))

(assert (= (and b!185414 res!87715) b!185407))

(assert (= (and b!185408 res!87711) b!185417))

(assert (= (and b!185417 c!33264) b!185398))

(assert (= (and b!185417 (not c!33264)) b!185415))

(assert (= (and b!185398 res!87714) b!185397))

(assert (= (or b!185398 b!185415) bm!18704))

(assert (= (and b!185417 res!87719) b!185406))

(assert (= (and b!185406 c!33266) b!185402))

(assert (= (and b!185406 (not c!33266)) b!185413))

(assert (= (and b!185402 res!87718) b!185410))

(assert (= (or b!185402 b!185413) bm!18706))

(declare-fun b_lambda!7277 () Bool)

(assert (=> (not b_lambda!7277) (not b!185407)))

(declare-fun t!7269 () Bool)

(declare-fun tb!2849 () Bool)

(assert (=> (and b!185254 (= (defaultEntry!3778 thiss!1248) (defaultEntry!3778 thiss!1248)) t!7269) tb!2849))

(declare-fun result!4809 () Bool)

(assert (=> tb!2849 (= result!4809 tp_is_empty!4335)))

(assert (=> b!185407 t!7269))

(declare-fun b_and!11183 () Bool)

(assert (= b_and!11179 (and (=> t!7269 result!4809) b_and!11183)))

(declare-fun m!212623 () Bool)

(assert (=> bm!18704 m!212623))

(assert (=> b!185404 m!212599))

(assert (=> b!185404 m!212599))

(assert (=> b!185404 m!212601))

(declare-fun m!212625 () Bool)

(assert (=> b!185410 m!212625))

(assert (=> b!185407 m!212599))

(declare-fun m!212627 () Bool)

(assert (=> b!185407 m!212627))

(declare-fun m!212629 () Bool)

(assert (=> b!185407 m!212629))

(assert (=> b!185407 m!212629))

(assert (=> b!185407 m!212627))

(declare-fun m!212631 () Bool)

(assert (=> b!185407 m!212631))

(assert (=> b!185407 m!212599))

(declare-fun m!212633 () Bool)

(assert (=> b!185407 m!212633))

(declare-fun m!212635 () Bool)

(assert (=> bm!18702 m!212635))

(assert (=> b!185414 m!212599))

(assert (=> b!185414 m!212599))

(declare-fun m!212637 () Bool)

(assert (=> b!185414 m!212637))

(assert (=> d!55029 m!212551))

(assert (=> b!185416 m!212599))

(assert (=> b!185416 m!212599))

(assert (=> b!185416 m!212601))

(declare-fun m!212639 () Bool)

(assert (=> b!185397 m!212639))

(declare-fun m!212641 () Bool)

(assert (=> bm!18706 m!212641))

(declare-fun m!212643 () Bool)

(assert (=> bm!18707 m!212643))

(declare-fun m!212645 () Bool)

(assert (=> b!185399 m!212645))

(assert (=> b!185401 m!212599))

(declare-fun m!212647 () Bool)

(assert (=> b!185401 m!212647))

(declare-fun m!212649 () Bool)

(assert (=> b!185401 m!212649))

(declare-fun m!212651 () Bool)

(assert (=> b!185401 m!212651))

(declare-fun m!212653 () Bool)

(assert (=> b!185401 m!212653))

(assert (=> b!185401 m!212635))

(declare-fun m!212655 () Bool)

(assert (=> b!185401 m!212655))

(declare-fun m!212657 () Bool)

(assert (=> b!185401 m!212657))

(declare-fun m!212659 () Bool)

(assert (=> b!185401 m!212659))

(declare-fun m!212661 () Bool)

(assert (=> b!185401 m!212661))

(declare-fun m!212663 () Bool)

(assert (=> b!185401 m!212663))

(declare-fun m!212665 () Bool)

(assert (=> b!185401 m!212665))

(declare-fun m!212667 () Bool)

(assert (=> b!185401 m!212667))

(assert (=> b!185401 m!212667))

(declare-fun m!212669 () Bool)

(assert (=> b!185401 m!212669))

(assert (=> b!185401 m!212659))

(assert (=> b!185401 m!212663))

(declare-fun m!212671 () Bool)

(assert (=> b!185401 m!212671))

(declare-fun m!212673 () Bool)

(assert (=> b!185401 m!212673))

(assert (=> b!185401 m!212647))

(declare-fun m!212675 () Bool)

(assert (=> b!185401 m!212675))

(assert (=> b!185249 d!55029))

(declare-fun b!185427 () Bool)

(declare-fun e!122028 () Bool)

(assert (=> b!185427 (= e!122028 tp_is_empty!4335)))

(declare-fun mapNonEmpty!7464 () Bool)

(declare-fun mapRes!7464 () Bool)

(declare-fun tp!16491 () Bool)

(declare-fun e!122027 () Bool)

(assert (=> mapNonEmpty!7464 (= mapRes!7464 (and tp!16491 e!122027))))

(declare-fun mapRest!7464 () (Array (_ BitVec 32) ValueCell!1824))

(declare-fun mapKey!7464 () (_ BitVec 32))

(declare-fun mapValue!7464 () ValueCell!1824)

(assert (=> mapNonEmpty!7464 (= mapRest!7458 (store mapRest!7464 mapKey!7464 mapValue!7464))))

(declare-fun mapIsEmpty!7464 () Bool)

(assert (=> mapIsEmpty!7464 mapRes!7464))

(declare-fun condMapEmpty!7464 () Bool)

(declare-fun mapDefault!7464 () ValueCell!1824)

(assert (=> mapNonEmpty!7458 (= condMapEmpty!7464 (= mapRest!7458 ((as const (Array (_ BitVec 32) ValueCell!1824)) mapDefault!7464)))))

(assert (=> mapNonEmpty!7458 (= tp!16482 (and e!122028 mapRes!7464))))

(declare-fun b!185426 () Bool)

(assert (=> b!185426 (= e!122027 tp_is_empty!4335)))

(assert (= (and mapNonEmpty!7458 condMapEmpty!7464) mapIsEmpty!7464))

(assert (= (and mapNonEmpty!7458 (not condMapEmpty!7464)) mapNonEmpty!7464))

(assert (= (and mapNonEmpty!7464 ((_ is ValueCellFull!1824) mapValue!7464)) b!185426))

(assert (= (and mapNonEmpty!7458 ((_ is ValueCellFull!1824) mapDefault!7464)) b!185427))

(declare-fun m!212677 () Bool)

(assert (=> mapNonEmpty!7464 m!212677))

(declare-fun b_lambda!7279 () Bool)

(assert (= b_lambda!7277 (or (and b!185254 b_free!4563) b_lambda!7279)))

(check-sat (not bm!18686) (not mapNonEmpty!7464) (not b!185354) (not b!185333) (not b!185410) (not b!185316) (not d!55029) (not b!185407) (not b!185304) (not b_lambda!7279) (not b!185401) (not b!185317) tp_is_empty!4335 (not bm!18683) (not b!185331) (not b!185414) (not bm!18704) (not d!55021) (not b!185318) (not bm!18706) (not b!185397) (not b!185416) b_and!11183 (not b_next!4563) (not b!185399) (not d!55013) (not bm!18707) (not d!55027) (not b!185342) (not b!185343) (not b!185352) (not b!185329) (not bm!18702) (not b!185404))
(check-sat b_and!11183 (not b_next!4563))
