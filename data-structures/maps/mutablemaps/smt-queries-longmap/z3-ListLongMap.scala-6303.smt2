; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!80706 () Bool)

(assert start!80706)

(declare-fun b!946350 () Bool)

(declare-fun b_free!18141 () Bool)

(declare-fun b_next!18141 () Bool)

(assert (=> b!946350 (= b_free!18141 (not b_next!18141))))

(declare-fun tp!62965 () Bool)

(declare-fun b_and!29581 () Bool)

(assert (=> b!946350 (= tp!62965 b_and!29581)))

(declare-fun mapNonEmpty!32831 () Bool)

(declare-fun mapRes!32831 () Bool)

(declare-fun tp!62966 () Bool)

(declare-fun e!532514 () Bool)

(assert (=> mapNonEmpty!32831 (= mapRes!32831 (and tp!62966 e!532514))))

(declare-datatypes ((V!32497 0))(
  ( (V!32498 (val!10375 Int)) )
))
(declare-datatypes ((ValueCell!9843 0))(
  ( (ValueCellFull!9843 (v!12909 V!32497)) (EmptyCell!9843) )
))
(declare-datatypes ((array!57306 0))(
  ( (array!57307 (arr!27565 (Array (_ BitVec 32) ValueCell!9843)) (size!28037 (_ BitVec 32))) )
))
(declare-datatypes ((array!57308 0))(
  ( (array!57309 (arr!27566 (Array (_ BitVec 32) (_ BitVec 64))) (size!28038 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4836 0))(
  ( (LongMapFixedSize!4837 (defaultEntry!5715 Int) (mask!27413 (_ BitVec 32)) (extraKeys!5447 (_ BitVec 32)) (zeroValue!5551 V!32497) (minValue!5551 V!32497) (_size!2473 (_ BitVec 32)) (_keys!10607 array!57308) (_values!5738 array!57306) (_vacant!2473 (_ BitVec 32))) )
))
(declare-fun thiss!1141 () LongMapFixedSize!4836)

(declare-fun mapKey!32831 () (_ BitVec 32))

(declare-fun mapRest!32831 () (Array (_ BitVec 32) ValueCell!9843))

(declare-fun mapValue!32831 () ValueCell!9843)

(assert (=> mapNonEmpty!32831 (= (arr!27565 (_values!5738 thiss!1141)) (store mapRest!32831 mapKey!32831 mapValue!32831))))

(declare-fun b!946343 () Bool)

(declare-fun e!532508 () Bool)

(declare-fun e!532512 () Bool)

(assert (=> b!946343 (= e!532508 (and e!532512 mapRes!32831))))

(declare-fun condMapEmpty!32831 () Bool)

(declare-fun mapDefault!32831 () ValueCell!9843)

(assert (=> b!946343 (= condMapEmpty!32831 (= (arr!27565 (_values!5738 thiss!1141)) ((as const (Array (_ BitVec 32) ValueCell!9843)) mapDefault!32831)))))

(declare-fun b!946344 () Bool)

(declare-fun res!635409 () Bool)

(declare-fun e!532510 () Bool)

(assert (=> b!946344 (=> (not res!635409) (not e!532510))))

(declare-fun key!756 () (_ BitVec 64))

(assert (=> b!946344 (= res!635409 (and (not (= key!756 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!756 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun mapIsEmpty!32831 () Bool)

(assert (=> mapIsEmpty!32831 mapRes!32831))

(declare-fun b!946345 () Bool)

(declare-fun e!532509 () Bool)

(assert (=> b!946345 (= e!532509 (or (not (= (size!28037 (_values!5738 thiss!1141)) (bvadd #b00000000000000000000000000000001 (mask!27413 thiss!1141)))) (not (= (size!28038 (_keys!10607 thiss!1141)) (size!28037 (_values!5738 thiss!1141)))) (bvsge (mask!27413 thiss!1141) #b00000000000000000000000000000000)))))

(declare-fun res!635410 () Bool)

(assert (=> start!80706 (=> (not res!635410) (not e!532510))))

(declare-fun valid!1823 (LongMapFixedSize!4836) Bool)

(assert (=> start!80706 (= res!635410 (valid!1823 thiss!1141))))

(assert (=> start!80706 e!532510))

(declare-fun e!532511 () Bool)

(assert (=> start!80706 e!532511))

(assert (=> start!80706 true))

(declare-fun b!946346 () Bool)

(declare-fun tp_is_empty!20649 () Bool)

(assert (=> b!946346 (= e!532512 tp_is_empty!20649)))

(declare-fun b!946347 () Bool)

(declare-fun e!532513 () Bool)

(assert (=> b!946347 (= e!532510 e!532513)))

(declare-fun res!635411 () Bool)

(assert (=> b!946347 (=> (not res!635411) (not e!532513))))

(declare-datatypes ((SeekEntryResult!9092 0))(
  ( (MissingZero!9092 (index!38738 (_ BitVec 32))) (Found!9092 (index!38739 (_ BitVec 32))) (Intermediate!9092 (undefined!9904 Bool) (index!38740 (_ BitVec 32)) (x!81371 (_ BitVec 32))) (Undefined!9092) (MissingVacant!9092 (index!38741 (_ BitVec 32))) )
))
(declare-fun lt!426254 () SeekEntryResult!9092)

(get-info :version)

(assert (=> b!946347 (= res!635411 ((_ is Found!9092) lt!426254))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!57308 (_ BitVec 32)) SeekEntryResult!9092)

(assert (=> b!946347 (= lt!426254 (seekEntry!0 key!756 (_keys!10607 thiss!1141) (mask!27413 thiss!1141)))))

(declare-fun b!946348 () Bool)

(assert (=> b!946348 (= e!532514 tp_is_empty!20649)))

(declare-fun b!946349 () Bool)

(assert (=> b!946349 (= e!532513 (not e!532509))))

(declare-fun res!635408 () Bool)

(assert (=> b!946349 (=> res!635408 e!532509)))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!946349 (= res!635408 (not (validMask!0 (mask!27413 thiss!1141))))))

(declare-fun arrayContainsKey!0 (array!57308 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!946349 (arrayContainsKey!0 (_keys!10607 thiss!1141) key!756 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!31901 0))(
  ( (Unit!31902) )
))
(declare-fun lt!426253 () Unit!31901)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!57308 (_ BitVec 64) (_ BitVec 32)) Unit!31901)

(assert (=> b!946349 (= lt!426253 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!10607 thiss!1141) key!756 (index!38739 lt!426254)))))

(declare-fun array_inv!21352 (array!57308) Bool)

(declare-fun array_inv!21353 (array!57306) Bool)

(assert (=> b!946350 (= e!532511 (and tp!62965 tp_is_empty!20649 (array_inv!21352 (_keys!10607 thiss!1141)) (array_inv!21353 (_values!5738 thiss!1141)) e!532508))))

(assert (= (and start!80706 res!635410) b!946344))

(assert (= (and b!946344 res!635409) b!946347))

(assert (= (and b!946347 res!635411) b!946349))

(assert (= (and b!946349 (not res!635408)) b!946345))

(assert (= (and b!946343 condMapEmpty!32831) mapIsEmpty!32831))

(assert (= (and b!946343 (not condMapEmpty!32831)) mapNonEmpty!32831))

(assert (= (and mapNonEmpty!32831 ((_ is ValueCellFull!9843) mapValue!32831)) b!946348))

(assert (= (and b!946343 ((_ is ValueCellFull!9843) mapDefault!32831)) b!946346))

(assert (= b!946350 b!946343))

(assert (= start!80706 b!946350))

(declare-fun m!879797 () Bool)

(assert (=> b!946350 m!879797))

(declare-fun m!879799 () Bool)

(assert (=> b!946350 m!879799))

(declare-fun m!879801 () Bool)

(assert (=> mapNonEmpty!32831 m!879801))

(declare-fun m!879803 () Bool)

(assert (=> b!946349 m!879803))

(declare-fun m!879805 () Bool)

(assert (=> b!946349 m!879805))

(declare-fun m!879807 () Bool)

(assert (=> b!946349 m!879807))

(declare-fun m!879809 () Bool)

(assert (=> start!80706 m!879809))

(declare-fun m!879811 () Bool)

(assert (=> b!946347 m!879811))

(check-sat (not b!946349) b_and!29581 (not b!946350) (not mapNonEmpty!32831) (not start!80706) tp_is_empty!20649 (not b!946347) (not b_next!18141))
(check-sat b_and!29581 (not b_next!18141))
(get-model)

(declare-fun b!946387 () Bool)

(declare-fun c!98500 () Bool)

(declare-fun lt!426269 () (_ BitVec 64))

(assert (=> b!946387 (= c!98500 (= lt!426269 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!532545 () SeekEntryResult!9092)

(declare-fun e!532547 () SeekEntryResult!9092)

(assert (=> b!946387 (= e!532545 e!532547)))

(declare-fun d!114469 () Bool)

(declare-fun lt!426270 () SeekEntryResult!9092)

(assert (=> d!114469 (and (or ((_ is MissingVacant!9092) lt!426270) (not ((_ is Found!9092) lt!426270)) (and (bvsge (index!38739 lt!426270) #b00000000000000000000000000000000) (bvslt (index!38739 lt!426270) (size!28038 (_keys!10607 thiss!1141))))) (not ((_ is MissingVacant!9092) lt!426270)) (or (not ((_ is Found!9092) lt!426270)) (= (select (arr!27566 (_keys!10607 thiss!1141)) (index!38739 lt!426270)) key!756)))))

(declare-fun e!532546 () SeekEntryResult!9092)

(assert (=> d!114469 (= lt!426270 e!532546)))

(declare-fun c!98498 () Bool)

(declare-fun lt!426271 () SeekEntryResult!9092)

(assert (=> d!114469 (= c!98498 (and ((_ is Intermediate!9092) lt!426271) (undefined!9904 lt!426271)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!57308 (_ BitVec 32)) SeekEntryResult!9092)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!114469 (= lt!426271 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 key!756 (mask!27413 thiss!1141)) key!756 (_keys!10607 thiss!1141) (mask!27413 thiss!1141)))))

(assert (=> d!114469 (validMask!0 (mask!27413 thiss!1141))))

(assert (=> d!114469 (= (seekEntry!0 key!756 (_keys!10607 thiss!1141) (mask!27413 thiss!1141)) lt!426270)))

(declare-fun b!946388 () Bool)

(assert (=> b!946388 (= e!532546 Undefined!9092)))

(declare-fun b!946389 () Bool)

(assert (=> b!946389 (= e!532546 e!532545)))

(assert (=> b!946389 (= lt!426269 (select (arr!27566 (_keys!10607 thiss!1141)) (index!38740 lt!426271)))))

(declare-fun c!98499 () Bool)

(assert (=> b!946389 (= c!98499 (= lt!426269 key!756))))

(declare-fun b!946390 () Bool)

(declare-fun lt!426272 () SeekEntryResult!9092)

(assert (=> b!946390 (= e!532547 (ite ((_ is MissingVacant!9092) lt!426272) (MissingZero!9092 (index!38741 lt!426272)) lt!426272))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!57308 (_ BitVec 32)) SeekEntryResult!9092)

(assert (=> b!946390 (= lt!426272 (seekKeyOrZeroReturnVacant!0 (x!81371 lt!426271) (index!38740 lt!426271) (index!38740 lt!426271) key!756 (_keys!10607 thiss!1141) (mask!27413 thiss!1141)))))

(declare-fun b!946391 () Bool)

(assert (=> b!946391 (= e!532545 (Found!9092 (index!38740 lt!426271)))))

(declare-fun b!946392 () Bool)

(assert (=> b!946392 (= e!532547 (MissingZero!9092 (index!38740 lt!426271)))))

(assert (= (and d!114469 c!98498) b!946388))

(assert (= (and d!114469 (not c!98498)) b!946389))

(assert (= (and b!946389 c!98499) b!946391))

(assert (= (and b!946389 (not c!98499)) b!946387))

(assert (= (and b!946387 c!98500) b!946392))

(assert (= (and b!946387 (not c!98500)) b!946390))

(declare-fun m!879829 () Bool)

(assert (=> d!114469 m!879829))

(declare-fun m!879831 () Bool)

(assert (=> d!114469 m!879831))

(assert (=> d!114469 m!879831))

(declare-fun m!879833 () Bool)

(assert (=> d!114469 m!879833))

(assert (=> d!114469 m!879803))

(declare-fun m!879835 () Bool)

(assert (=> b!946389 m!879835))

(declare-fun m!879837 () Bool)

(assert (=> b!946390 m!879837))

(assert (=> b!946347 d!114469))

(declare-fun d!114471 () Bool)

(declare-fun res!635430 () Bool)

(declare-fun e!532550 () Bool)

(assert (=> d!114471 (=> (not res!635430) (not e!532550))))

(declare-fun simpleValid!357 (LongMapFixedSize!4836) Bool)

(assert (=> d!114471 (= res!635430 (simpleValid!357 thiss!1141))))

(assert (=> d!114471 (= (valid!1823 thiss!1141) e!532550)))

(declare-fun b!946399 () Bool)

(declare-fun res!635431 () Bool)

(assert (=> b!946399 (=> (not res!635431) (not e!532550))))

(declare-fun arrayCountValidKeys!0 (array!57308 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!946399 (= res!635431 (= (arrayCountValidKeys!0 (_keys!10607 thiss!1141) #b00000000000000000000000000000000 (size!28038 (_keys!10607 thiss!1141))) (_size!2473 thiss!1141)))))

(declare-fun b!946400 () Bool)

(declare-fun res!635432 () Bool)

(assert (=> b!946400 (=> (not res!635432) (not e!532550))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!57308 (_ BitVec 32)) Bool)

(assert (=> b!946400 (= res!635432 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!10607 thiss!1141) (mask!27413 thiss!1141)))))

(declare-fun b!946401 () Bool)

(declare-datatypes ((List!19427 0))(
  ( (Nil!19424) (Cons!19423 (h!20577 (_ BitVec 64)) (t!27756 List!19427)) )
))
(declare-fun arrayNoDuplicates!0 (array!57308 (_ BitVec 32) List!19427) Bool)

(assert (=> b!946401 (= e!532550 (arrayNoDuplicates!0 (_keys!10607 thiss!1141) #b00000000000000000000000000000000 Nil!19424))))

(assert (= (and d!114471 res!635430) b!946399))

(assert (= (and b!946399 res!635431) b!946400))

(assert (= (and b!946400 res!635432) b!946401))

(declare-fun m!879839 () Bool)

(assert (=> d!114471 m!879839))

(declare-fun m!879841 () Bool)

(assert (=> b!946399 m!879841))

(declare-fun m!879843 () Bool)

(assert (=> b!946400 m!879843))

(declare-fun m!879845 () Bool)

(assert (=> b!946401 m!879845))

(assert (=> start!80706 d!114471))

(declare-fun d!114473 () Bool)

(assert (=> d!114473 (= (validMask!0 (mask!27413 thiss!1141)) (and (or (= (mask!27413 thiss!1141) #b00000000000000000000000000000111) (= (mask!27413 thiss!1141) #b00000000000000000000000000001111) (= (mask!27413 thiss!1141) #b00000000000000000000000000011111) (= (mask!27413 thiss!1141) #b00000000000000000000000000111111) (= (mask!27413 thiss!1141) #b00000000000000000000000001111111) (= (mask!27413 thiss!1141) #b00000000000000000000000011111111) (= (mask!27413 thiss!1141) #b00000000000000000000000111111111) (= (mask!27413 thiss!1141) #b00000000000000000000001111111111) (= (mask!27413 thiss!1141) #b00000000000000000000011111111111) (= (mask!27413 thiss!1141) #b00000000000000000000111111111111) (= (mask!27413 thiss!1141) #b00000000000000000001111111111111) (= (mask!27413 thiss!1141) #b00000000000000000011111111111111) (= (mask!27413 thiss!1141) #b00000000000000000111111111111111) (= (mask!27413 thiss!1141) #b00000000000000001111111111111111) (= (mask!27413 thiss!1141) #b00000000000000011111111111111111) (= (mask!27413 thiss!1141) #b00000000000000111111111111111111) (= (mask!27413 thiss!1141) #b00000000000001111111111111111111) (= (mask!27413 thiss!1141) #b00000000000011111111111111111111) (= (mask!27413 thiss!1141) #b00000000000111111111111111111111) (= (mask!27413 thiss!1141) #b00000000001111111111111111111111) (= (mask!27413 thiss!1141) #b00000000011111111111111111111111) (= (mask!27413 thiss!1141) #b00000000111111111111111111111111) (= (mask!27413 thiss!1141) #b00000001111111111111111111111111) (= (mask!27413 thiss!1141) #b00000011111111111111111111111111) (= (mask!27413 thiss!1141) #b00000111111111111111111111111111) (= (mask!27413 thiss!1141) #b00001111111111111111111111111111) (= (mask!27413 thiss!1141) #b00011111111111111111111111111111) (= (mask!27413 thiss!1141) #b00111111111111111111111111111111)) (bvsle (mask!27413 thiss!1141) #b00111111111111111111111111111111)))))

(assert (=> b!946349 d!114473))

(declare-fun d!114475 () Bool)

(declare-fun res!635437 () Bool)

(declare-fun e!532555 () Bool)

(assert (=> d!114475 (=> res!635437 e!532555)))

(assert (=> d!114475 (= res!635437 (= (select (arr!27566 (_keys!10607 thiss!1141)) #b00000000000000000000000000000000) key!756))))

(assert (=> d!114475 (= (arrayContainsKey!0 (_keys!10607 thiss!1141) key!756 #b00000000000000000000000000000000) e!532555)))

(declare-fun b!946406 () Bool)

(declare-fun e!532556 () Bool)

(assert (=> b!946406 (= e!532555 e!532556)))

(declare-fun res!635438 () Bool)

(assert (=> b!946406 (=> (not res!635438) (not e!532556))))

(assert (=> b!946406 (= res!635438 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!28038 (_keys!10607 thiss!1141))))))

(declare-fun b!946407 () Bool)

(assert (=> b!946407 (= e!532556 (arrayContainsKey!0 (_keys!10607 thiss!1141) key!756 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!114475 (not res!635437)) b!946406))

(assert (= (and b!946406 res!635438) b!946407))

(declare-fun m!879847 () Bool)

(assert (=> d!114475 m!879847))

(declare-fun m!879849 () Bool)

(assert (=> b!946407 m!879849))

(assert (=> b!946349 d!114475))

(declare-fun d!114477 () Bool)

(assert (=> d!114477 (arrayContainsKey!0 (_keys!10607 thiss!1141) key!756 #b00000000000000000000000000000000)))

(declare-fun lt!426275 () Unit!31901)

(declare-fun choose!13 (array!57308 (_ BitVec 64) (_ BitVec 32)) Unit!31901)

(assert (=> d!114477 (= lt!426275 (choose!13 (_keys!10607 thiss!1141) key!756 (index!38739 lt!426254)))))

(assert (=> d!114477 (bvsge (index!38739 lt!426254) #b00000000000000000000000000000000)))

(assert (=> d!114477 (= (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!10607 thiss!1141) key!756 (index!38739 lt!426254)) lt!426275)))

(declare-fun bs!26598 () Bool)

(assert (= bs!26598 d!114477))

(assert (=> bs!26598 m!879805))

(declare-fun m!879851 () Bool)

(assert (=> bs!26598 m!879851))

(assert (=> b!946349 d!114477))

(declare-fun d!114479 () Bool)

(assert (=> d!114479 (= (array_inv!21352 (_keys!10607 thiss!1141)) (bvsge (size!28038 (_keys!10607 thiss!1141)) #b00000000000000000000000000000000))))

(assert (=> b!946350 d!114479))

(declare-fun d!114481 () Bool)

(assert (=> d!114481 (= (array_inv!21353 (_values!5738 thiss!1141)) (bvsge (size!28037 (_values!5738 thiss!1141)) #b00000000000000000000000000000000))))

(assert (=> b!946350 d!114481))

(declare-fun mapNonEmpty!32837 () Bool)

(declare-fun mapRes!32837 () Bool)

(declare-fun tp!62975 () Bool)

(declare-fun e!532562 () Bool)

(assert (=> mapNonEmpty!32837 (= mapRes!32837 (and tp!62975 e!532562))))

(declare-fun mapValue!32837 () ValueCell!9843)

(declare-fun mapKey!32837 () (_ BitVec 32))

(declare-fun mapRest!32837 () (Array (_ BitVec 32) ValueCell!9843))

(assert (=> mapNonEmpty!32837 (= mapRest!32831 (store mapRest!32837 mapKey!32837 mapValue!32837))))

(declare-fun b!946415 () Bool)

(declare-fun e!532561 () Bool)

(assert (=> b!946415 (= e!532561 tp_is_empty!20649)))

(declare-fun mapIsEmpty!32837 () Bool)

(assert (=> mapIsEmpty!32837 mapRes!32837))

(declare-fun condMapEmpty!32837 () Bool)

(declare-fun mapDefault!32837 () ValueCell!9843)

(assert (=> mapNonEmpty!32831 (= condMapEmpty!32837 (= mapRest!32831 ((as const (Array (_ BitVec 32) ValueCell!9843)) mapDefault!32837)))))

(assert (=> mapNonEmpty!32831 (= tp!62966 (and e!532561 mapRes!32837))))

(declare-fun b!946414 () Bool)

(assert (=> b!946414 (= e!532562 tp_is_empty!20649)))

(assert (= (and mapNonEmpty!32831 condMapEmpty!32837) mapIsEmpty!32837))

(assert (= (and mapNonEmpty!32831 (not condMapEmpty!32837)) mapNonEmpty!32837))

(assert (= (and mapNonEmpty!32837 ((_ is ValueCellFull!9843) mapValue!32837)) b!946414))

(assert (= (and mapNonEmpty!32831 ((_ is ValueCellFull!9843) mapDefault!32837)) b!946415))

(declare-fun m!879853 () Bool)

(assert (=> mapNonEmpty!32837 m!879853))

(check-sat (not b!946401) b_and!29581 (not d!114469) (not mapNonEmpty!32837) (not d!114471) (not b_next!18141) (not b!946399) tp_is_empty!20649 (not d!114477) (not b!946400) (not b!946407) (not b!946390))
(check-sat b_and!29581 (not b_next!18141))
