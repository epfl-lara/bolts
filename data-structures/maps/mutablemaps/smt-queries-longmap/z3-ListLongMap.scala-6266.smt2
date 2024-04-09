; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!80150 () Bool)

(assert start!80150)

(declare-fun b!941521 () Bool)

(declare-fun b_free!17919 () Bool)

(declare-fun b_next!17919 () Bool)

(assert (=> b!941521 (= b_free!17919 (not b_next!17919))))

(declare-fun tp!62243 () Bool)

(declare-fun b_and!29349 () Bool)

(assert (=> b!941521 (= tp!62243 b_and!29349)))

(declare-fun b!941517 () Bool)

(declare-fun e!529362 () Bool)

(declare-datatypes ((V!32201 0))(
  ( (V!32202 (val!10264 Int)) )
))
(declare-datatypes ((ValueCell!9732 0))(
  ( (ValueCellFull!9732 (v!12795 V!32201)) (EmptyCell!9732) )
))
(declare-datatypes ((array!56830 0))(
  ( (array!56831 (arr!27343 (Array (_ BitVec 32) ValueCell!9732)) (size!27807 (_ BitVec 32))) )
))
(declare-datatypes ((array!56832 0))(
  ( (array!56833 (arr!27344 (Array (_ BitVec 32) (_ BitVec 64))) (size!27808 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4614 0))(
  ( (LongMapFixedSize!4615 (defaultEntry!5598 Int) (mask!27168 (_ BitVec 32)) (extraKeys!5330 (_ BitVec 32)) (zeroValue!5434 V!32201) (minValue!5434 V!32201) (_size!2362 (_ BitVec 32)) (_keys!10453 array!56832) (_values!5621 array!56830) (_vacant!2362 (_ BitVec 32))) )
))
(declare-fun thiss!1141 () LongMapFixedSize!4614)

(assert (=> b!941517 (= e!529362 (and (= (size!27807 (_values!5621 thiss!1141)) (bvadd #b00000000000000000000000000000001 (mask!27168 thiss!1141))) (= (size!27808 (_keys!10453 thiss!1141)) (size!27807 (_values!5621 thiss!1141))) (bvslt (mask!27168 thiss!1141) #b00000000000000000000000000000000)))))

(declare-fun b!941518 () Bool)

(declare-fun e!529361 () Bool)

(declare-fun tp_is_empty!20427 () Bool)

(assert (=> b!941518 (= e!529361 tp_is_empty!20427)))

(declare-fun mapIsEmpty!32442 () Bool)

(declare-fun mapRes!32442 () Bool)

(assert (=> mapIsEmpty!32442 mapRes!32442))

(declare-fun res!632980 () Bool)

(assert (=> start!80150 (=> (not res!632980) (not e!529362))))

(declare-fun valid!1747 (LongMapFixedSize!4614) Bool)

(assert (=> start!80150 (= res!632980 (valid!1747 thiss!1141))))

(assert (=> start!80150 e!529362))

(declare-fun e!529359 () Bool)

(assert (=> start!80150 e!529359))

(assert (=> start!80150 true))

(declare-fun b!941519 () Bool)

(declare-fun res!632983 () Bool)

(assert (=> b!941519 (=> (not res!632983) (not e!529362))))

(declare-fun key!756 () (_ BitVec 64))

(assert (=> b!941519 (= res!632983 (and (not (= key!756 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!756 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!941520 () Bool)

(declare-fun res!632982 () Bool)

(assert (=> b!941520 (=> (not res!632982) (not e!529362))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!941520 (= res!632982 (validMask!0 (mask!27168 thiss!1141)))))

(declare-fun e!529363 () Bool)

(declare-fun array_inv!21202 (array!56832) Bool)

(declare-fun array_inv!21203 (array!56830) Bool)

(assert (=> b!941521 (= e!529359 (and tp!62243 tp_is_empty!20427 (array_inv!21202 (_keys!10453 thiss!1141)) (array_inv!21203 (_values!5621 thiss!1141)) e!529363))))

(declare-fun b!941522 () Bool)

(declare-fun e!529358 () Bool)

(assert (=> b!941522 (= e!529363 (and e!529358 mapRes!32442))))

(declare-fun condMapEmpty!32442 () Bool)

(declare-fun mapDefault!32442 () ValueCell!9732)

(assert (=> b!941522 (= condMapEmpty!32442 (= (arr!27343 (_values!5621 thiss!1141)) ((as const (Array (_ BitVec 32) ValueCell!9732)) mapDefault!32442)))))

(declare-fun b!941523 () Bool)

(assert (=> b!941523 (= e!529358 tp_is_empty!20427)))

(declare-fun b!941524 () Bool)

(declare-fun res!632981 () Bool)

(assert (=> b!941524 (=> (not res!632981) (not e!529362))))

(get-info :version)

(declare-datatypes ((SeekEntryResult!9015 0))(
  ( (MissingZero!9015 (index!38430 (_ BitVec 32))) (Found!9015 (index!38431 (_ BitVec 32))) (Intermediate!9015 (undefined!9827 Bool) (index!38432 (_ BitVec 32)) (x!80799 (_ BitVec 32))) (Undefined!9015) (MissingVacant!9015 (index!38433 (_ BitVec 32))) )
))
(declare-fun seekEntry!0 ((_ BitVec 64) array!56832 (_ BitVec 32)) SeekEntryResult!9015)

(assert (=> b!941524 (= res!632981 (not ((_ is Found!9015) (seekEntry!0 key!756 (_keys!10453 thiss!1141) (mask!27168 thiss!1141)))))))

(declare-fun mapNonEmpty!32442 () Bool)

(declare-fun tp!62244 () Bool)

(assert (=> mapNonEmpty!32442 (= mapRes!32442 (and tp!62244 e!529361))))

(declare-fun mapRest!32442 () (Array (_ BitVec 32) ValueCell!9732))

(declare-fun mapValue!32442 () ValueCell!9732)

(declare-fun mapKey!32442 () (_ BitVec 32))

(assert (=> mapNonEmpty!32442 (= (arr!27343 (_values!5621 thiss!1141)) (store mapRest!32442 mapKey!32442 mapValue!32442))))

(assert (= (and start!80150 res!632980) b!941519))

(assert (= (and b!941519 res!632983) b!941524))

(assert (= (and b!941524 res!632981) b!941520))

(assert (= (and b!941520 res!632982) b!941517))

(assert (= (and b!941522 condMapEmpty!32442) mapIsEmpty!32442))

(assert (= (and b!941522 (not condMapEmpty!32442)) mapNonEmpty!32442))

(assert (= (and mapNonEmpty!32442 ((_ is ValueCellFull!9732) mapValue!32442)) b!941518))

(assert (= (and b!941522 ((_ is ValueCellFull!9732) mapDefault!32442)) b!941523))

(assert (= b!941521 b!941522))

(assert (= start!80150 b!941521))

(declare-fun m!876591 () Bool)

(assert (=> b!941520 m!876591))

(declare-fun m!876593 () Bool)

(assert (=> b!941524 m!876593))

(declare-fun m!876595 () Bool)

(assert (=> mapNonEmpty!32442 m!876595))

(declare-fun m!876597 () Bool)

(assert (=> start!80150 m!876597))

(declare-fun m!876599 () Bool)

(assert (=> b!941521 m!876599))

(declare-fun m!876601 () Bool)

(assert (=> b!941521 m!876601))

(check-sat tp_is_empty!20427 (not mapNonEmpty!32442) (not start!80150) (not b_next!17919) b_and!29349 (not b!941524) (not b!941521) (not b!941520))
(check-sat b_and!29349 (not b_next!17919))
(get-model)

(declare-fun d!114017 () Bool)

(assert (=> d!114017 (= (array_inv!21202 (_keys!10453 thiss!1141)) (bvsge (size!27808 (_keys!10453 thiss!1141)) #b00000000000000000000000000000000))))

(assert (=> b!941521 d!114017))

(declare-fun d!114019 () Bool)

(assert (=> d!114019 (= (array_inv!21203 (_values!5621 thiss!1141)) (bvsge (size!27807 (_values!5621 thiss!1141)) #b00000000000000000000000000000000))))

(assert (=> b!941521 d!114019))

(declare-fun d!114021 () Bool)

(assert (=> d!114021 (= (validMask!0 (mask!27168 thiss!1141)) (and (or (= (mask!27168 thiss!1141) #b00000000000000000000000000000111) (= (mask!27168 thiss!1141) #b00000000000000000000000000001111) (= (mask!27168 thiss!1141) #b00000000000000000000000000011111) (= (mask!27168 thiss!1141) #b00000000000000000000000000111111) (= (mask!27168 thiss!1141) #b00000000000000000000000001111111) (= (mask!27168 thiss!1141) #b00000000000000000000000011111111) (= (mask!27168 thiss!1141) #b00000000000000000000000111111111) (= (mask!27168 thiss!1141) #b00000000000000000000001111111111) (= (mask!27168 thiss!1141) #b00000000000000000000011111111111) (= (mask!27168 thiss!1141) #b00000000000000000000111111111111) (= (mask!27168 thiss!1141) #b00000000000000000001111111111111) (= (mask!27168 thiss!1141) #b00000000000000000011111111111111) (= (mask!27168 thiss!1141) #b00000000000000000111111111111111) (= (mask!27168 thiss!1141) #b00000000000000001111111111111111) (= (mask!27168 thiss!1141) #b00000000000000011111111111111111) (= (mask!27168 thiss!1141) #b00000000000000111111111111111111) (= (mask!27168 thiss!1141) #b00000000000001111111111111111111) (= (mask!27168 thiss!1141) #b00000000000011111111111111111111) (= (mask!27168 thiss!1141) #b00000000000111111111111111111111) (= (mask!27168 thiss!1141) #b00000000001111111111111111111111) (= (mask!27168 thiss!1141) #b00000000011111111111111111111111) (= (mask!27168 thiss!1141) #b00000000111111111111111111111111) (= (mask!27168 thiss!1141) #b00000001111111111111111111111111) (= (mask!27168 thiss!1141) #b00000011111111111111111111111111) (= (mask!27168 thiss!1141) #b00000111111111111111111111111111) (= (mask!27168 thiss!1141) #b00001111111111111111111111111111) (= (mask!27168 thiss!1141) #b00011111111111111111111111111111) (= (mask!27168 thiss!1141) #b00111111111111111111111111111111)) (bvsle (mask!27168 thiss!1141) #b00111111111111111111111111111111)))))

(assert (=> b!941520 d!114021))

(declare-fun d!114023 () Bool)

(declare-fun res!633002 () Bool)

(declare-fun e!529384 () Bool)

(assert (=> d!114023 (=> (not res!633002) (not e!529384))))

(declare-fun simpleValid!341 (LongMapFixedSize!4614) Bool)

(assert (=> d!114023 (= res!633002 (simpleValid!341 thiss!1141))))

(assert (=> d!114023 (= (valid!1747 thiss!1141) e!529384)))

(declare-fun b!941555 () Bool)

(declare-fun res!633003 () Bool)

(assert (=> b!941555 (=> (not res!633003) (not e!529384))))

(declare-fun arrayCountValidKeys!0 (array!56832 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!941555 (= res!633003 (= (arrayCountValidKeys!0 (_keys!10453 thiss!1141) #b00000000000000000000000000000000 (size!27808 (_keys!10453 thiss!1141))) (_size!2362 thiss!1141)))))

(declare-fun b!941556 () Bool)

(declare-fun res!633004 () Bool)

(assert (=> b!941556 (=> (not res!633004) (not e!529384))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!56832 (_ BitVec 32)) Bool)

(assert (=> b!941556 (= res!633004 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!10453 thiss!1141) (mask!27168 thiss!1141)))))

(declare-fun b!941557 () Bool)

(declare-datatypes ((List!19342 0))(
  ( (Nil!19339) (Cons!19338 (h!20486 (_ BitVec 64)) (t!27665 List!19342)) )
))
(declare-fun arrayNoDuplicates!0 (array!56832 (_ BitVec 32) List!19342) Bool)

(assert (=> b!941557 (= e!529384 (arrayNoDuplicates!0 (_keys!10453 thiss!1141) #b00000000000000000000000000000000 Nil!19339))))

(assert (= (and d!114023 res!633002) b!941555))

(assert (= (and b!941555 res!633003) b!941556))

(assert (= (and b!941556 res!633004) b!941557))

(declare-fun m!876615 () Bool)

(assert (=> d!114023 m!876615))

(declare-fun m!876617 () Bool)

(assert (=> b!941555 m!876617))

(declare-fun m!876619 () Bool)

(assert (=> b!941556 m!876619))

(declare-fun m!876621 () Bool)

(assert (=> b!941557 m!876621))

(assert (=> start!80150 d!114023))

(declare-fun b!941570 () Bool)

(declare-fun e!529391 () SeekEntryResult!9015)

(declare-fun e!529392 () SeekEntryResult!9015)

(assert (=> b!941570 (= e!529391 e!529392)))

(declare-fun lt!424971 () (_ BitVec 64))

(declare-fun lt!424973 () SeekEntryResult!9015)

(assert (=> b!941570 (= lt!424971 (select (arr!27344 (_keys!10453 thiss!1141)) (index!38432 lt!424973)))))

(declare-fun c!98040 () Bool)

(assert (=> b!941570 (= c!98040 (= lt!424971 key!756))))

(declare-fun b!941571 () Bool)

(declare-fun e!529393 () SeekEntryResult!9015)

(declare-fun lt!424974 () SeekEntryResult!9015)

(assert (=> b!941571 (= e!529393 (ite ((_ is MissingVacant!9015) lt!424974) (MissingZero!9015 (index!38433 lt!424974)) lt!424974))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!56832 (_ BitVec 32)) SeekEntryResult!9015)

(assert (=> b!941571 (= lt!424974 (seekKeyOrZeroReturnVacant!0 (x!80799 lt!424973) (index!38432 lt!424973) (index!38432 lt!424973) key!756 (_keys!10453 thiss!1141) (mask!27168 thiss!1141)))))

(declare-fun b!941572 () Bool)

(assert (=> b!941572 (= e!529391 Undefined!9015)))

(declare-fun b!941573 () Bool)

(declare-fun c!98038 () Bool)

(assert (=> b!941573 (= c!98038 (= lt!424971 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!941573 (= e!529392 e!529393)))

(declare-fun d!114025 () Bool)

(declare-fun lt!424972 () SeekEntryResult!9015)

(assert (=> d!114025 (and (or ((_ is MissingVacant!9015) lt!424972) (not ((_ is Found!9015) lt!424972)) (and (bvsge (index!38431 lt!424972) #b00000000000000000000000000000000) (bvslt (index!38431 lt!424972) (size!27808 (_keys!10453 thiss!1141))))) (not ((_ is MissingVacant!9015) lt!424972)) (or (not ((_ is Found!9015) lt!424972)) (= (select (arr!27344 (_keys!10453 thiss!1141)) (index!38431 lt!424972)) key!756)))))

(assert (=> d!114025 (= lt!424972 e!529391)))

(declare-fun c!98039 () Bool)

(assert (=> d!114025 (= c!98039 (and ((_ is Intermediate!9015) lt!424973) (undefined!9827 lt!424973)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!56832 (_ BitVec 32)) SeekEntryResult!9015)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!114025 (= lt!424973 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 key!756 (mask!27168 thiss!1141)) key!756 (_keys!10453 thiss!1141) (mask!27168 thiss!1141)))))

(assert (=> d!114025 (validMask!0 (mask!27168 thiss!1141))))

(assert (=> d!114025 (= (seekEntry!0 key!756 (_keys!10453 thiss!1141) (mask!27168 thiss!1141)) lt!424972)))

(declare-fun b!941574 () Bool)

(assert (=> b!941574 (= e!529392 (Found!9015 (index!38432 lt!424973)))))

(declare-fun b!941575 () Bool)

(assert (=> b!941575 (= e!529393 (MissingZero!9015 (index!38432 lt!424973)))))

(assert (= (and d!114025 c!98039) b!941572))

(assert (= (and d!114025 (not c!98039)) b!941570))

(assert (= (and b!941570 c!98040) b!941574))

(assert (= (and b!941570 (not c!98040)) b!941573))

(assert (= (and b!941573 c!98038) b!941575))

(assert (= (and b!941573 (not c!98038)) b!941571))

(declare-fun m!876623 () Bool)

(assert (=> b!941570 m!876623))

(declare-fun m!876625 () Bool)

(assert (=> b!941571 m!876625))

(declare-fun m!876627 () Bool)

(assert (=> d!114025 m!876627))

(declare-fun m!876629 () Bool)

(assert (=> d!114025 m!876629))

(assert (=> d!114025 m!876629))

(declare-fun m!876631 () Bool)

(assert (=> d!114025 m!876631))

(assert (=> d!114025 m!876591))

(assert (=> b!941524 d!114025))

(declare-fun mapNonEmpty!32448 () Bool)

(declare-fun mapRes!32448 () Bool)

(declare-fun tp!62253 () Bool)

(declare-fun e!529399 () Bool)

(assert (=> mapNonEmpty!32448 (= mapRes!32448 (and tp!62253 e!529399))))

(declare-fun mapValue!32448 () ValueCell!9732)

(declare-fun mapRest!32448 () (Array (_ BitVec 32) ValueCell!9732))

(declare-fun mapKey!32448 () (_ BitVec 32))

(assert (=> mapNonEmpty!32448 (= mapRest!32442 (store mapRest!32448 mapKey!32448 mapValue!32448))))

(declare-fun b!941583 () Bool)

(declare-fun e!529398 () Bool)

(assert (=> b!941583 (= e!529398 tp_is_empty!20427)))

(declare-fun b!941582 () Bool)

(assert (=> b!941582 (= e!529399 tp_is_empty!20427)))

(declare-fun condMapEmpty!32448 () Bool)

(declare-fun mapDefault!32448 () ValueCell!9732)

(assert (=> mapNonEmpty!32442 (= condMapEmpty!32448 (= mapRest!32442 ((as const (Array (_ BitVec 32) ValueCell!9732)) mapDefault!32448)))))

(assert (=> mapNonEmpty!32442 (= tp!62244 (and e!529398 mapRes!32448))))

(declare-fun mapIsEmpty!32448 () Bool)

(assert (=> mapIsEmpty!32448 mapRes!32448))

(assert (= (and mapNonEmpty!32442 condMapEmpty!32448) mapIsEmpty!32448))

(assert (= (and mapNonEmpty!32442 (not condMapEmpty!32448)) mapNonEmpty!32448))

(assert (= (and mapNonEmpty!32448 ((_ is ValueCellFull!9732) mapValue!32448)) b!941582))

(assert (= (and mapNonEmpty!32442 ((_ is ValueCellFull!9732) mapDefault!32448)) b!941583))

(declare-fun m!876633 () Bool)

(assert (=> mapNonEmpty!32448 m!876633))

(check-sat tp_is_empty!20427 (not mapNonEmpty!32448) (not d!114025) (not b_next!17919) (not b!941571) b_and!29349 (not b!941556) (not b!941555) (not d!114023) (not b!941557))
(check-sat b_and!29349 (not b_next!17919))
