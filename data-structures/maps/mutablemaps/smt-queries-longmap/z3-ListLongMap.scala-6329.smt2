; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!81570 () Bool)

(assert start!81570)

(declare-fun b!952577 () Bool)

(declare-fun b_free!18297 () Bool)

(declare-fun b_next!18297 () Bool)

(assert (=> b!952577 (= b_free!18297 (not b_next!18297))))

(declare-fun tp!63517 () Bool)

(declare-fun b_and!29797 () Bool)

(assert (=> b!952577 (= tp!63517 b_and!29797)))

(declare-fun b!952567 () Bool)

(declare-fun res!638224 () Bool)

(declare-fun e!536516 () Bool)

(assert (=> b!952567 (=> (not res!638224) (not e!536516))))

(declare-fun key!756 () (_ BitVec 64))

(declare-datatypes ((V!32705 0))(
  ( (V!32706 (val!10453 Int)) )
))
(declare-datatypes ((ValueCell!9921 0))(
  ( (ValueCellFull!9921 (v!13005 V!32705)) (EmptyCell!9921) )
))
(declare-datatypes ((array!57668 0))(
  ( (array!57669 (arr!27721 (Array (_ BitVec 32) ValueCell!9921)) (size!28201 (_ BitVec 32))) )
))
(declare-datatypes ((array!57670 0))(
  ( (array!57671 (arr!27722 (Array (_ BitVec 32) (_ BitVec 64))) (size!28202 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4992 0))(
  ( (LongMapFixedSize!4993 (defaultEntry!5829 Int) (mask!27676 (_ BitVec 32)) (extraKeys!5561 (_ BitVec 32)) (zeroValue!5665 V!32705) (minValue!5665 V!32705) (_size!2551 (_ BitVec 32)) (_keys!10781 array!57670) (_values!5852 array!57668) (_vacant!2551 (_ BitVec 32))) )
))
(declare-fun thiss!1141 () LongMapFixedSize!4992)

(get-info :version)

(declare-datatypes ((SeekEntryResult!9150 0))(
  ( (MissingZero!9150 (index!38970 (_ BitVec 32))) (Found!9150 (index!38971 (_ BitVec 32))) (Intermediate!9150 (undefined!9962 Bool) (index!38972 (_ BitVec 32)) (x!81939 (_ BitVec 32))) (Undefined!9150) (MissingVacant!9150 (index!38973 (_ BitVec 32))) )
))
(declare-fun seekEntry!0 ((_ BitVec 64) array!57670 (_ BitVec 32)) SeekEntryResult!9150)

(assert (=> b!952567 (= res!638224 (not ((_ is Found!9150) (seekEntry!0 key!756 (_keys!10781 thiss!1141) (mask!27676 thiss!1141)))))))

(declare-fun b!952568 () Bool)

(declare-fun res!638219 () Bool)

(assert (=> b!952568 (=> (not res!638219) (not e!536516))))

(declare-datatypes ((tuple2!13680 0))(
  ( (tuple2!13681 (_1!6850 (_ BitVec 64)) (_2!6850 V!32705)) )
))
(declare-datatypes ((List!19497 0))(
  ( (Nil!19494) (Cons!19493 (h!20655 tuple2!13680) (t!27862 List!19497)) )
))
(declare-datatypes ((ListLongMap!12391 0))(
  ( (ListLongMap!12392 (toList!6211 List!19497)) )
))
(declare-fun contains!5257 (ListLongMap!12391 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3396 (array!57670 array!57668 (_ BitVec 32) (_ BitVec 32) V!32705 V!32705 (_ BitVec 32) Int) ListLongMap!12391)

(assert (=> b!952568 (= res!638219 (contains!5257 (getCurrentListMap!3396 (_keys!10781 thiss!1141) (_values!5852 thiss!1141) (mask!27676 thiss!1141) (extraKeys!5561 thiss!1141) (zeroValue!5665 thiss!1141) (minValue!5665 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5829 thiss!1141)) key!756))))

(declare-fun mapIsEmpty!33148 () Bool)

(declare-fun mapRes!33148 () Bool)

(assert (=> mapIsEmpty!33148 mapRes!33148))

(declare-fun b!952570 () Bool)

(declare-fun e!536515 () Bool)

(declare-fun tp_is_empty!20805 () Bool)

(assert (=> b!952570 (= e!536515 tp_is_empty!20805)))

(declare-fun mapNonEmpty!33148 () Bool)

(declare-fun tp!63516 () Bool)

(declare-fun e!536510 () Bool)

(assert (=> mapNonEmpty!33148 (= mapRes!33148 (and tp!63516 e!536510))))

(declare-fun mapRest!33148 () (Array (_ BitVec 32) ValueCell!9921))

(declare-fun mapKey!33148 () (_ BitVec 32))

(declare-fun mapValue!33148 () ValueCell!9921)

(assert (=> mapNonEmpty!33148 (= (arr!27721 (_values!5852 thiss!1141)) (store mapRest!33148 mapKey!33148 mapValue!33148))))

(declare-fun b!952571 () Bool)

(declare-fun res!638220 () Bool)

(declare-fun e!536511 () Bool)

(assert (=> b!952571 (=> res!638220 e!536511)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!952571 (= res!638220 (not (validKeyInArray!0 key!756)))))

(declare-fun b!952572 () Bool)

(declare-fun e!536513 () Bool)

(assert (=> b!952572 (= e!536513 (and e!536515 mapRes!33148))))

(declare-fun condMapEmpty!33148 () Bool)

(declare-fun mapDefault!33148 () ValueCell!9921)

(assert (=> b!952572 (= condMapEmpty!33148 (= (arr!27721 (_values!5852 thiss!1141)) ((as const (Array (_ BitVec 32) ValueCell!9921)) mapDefault!33148)))))

(declare-fun b!952573 () Bool)

(declare-fun res!638225 () Bool)

(assert (=> b!952573 (=> (not res!638225) (not e!536516))))

(assert (=> b!952573 (= res!638225 (and (not (= key!756 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!756 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!952574 () Bool)

(assert (=> b!952574 (= e!536510 tp_is_empty!20805)))

(declare-fun b!952575 () Bool)

(declare-fun res!638218 () Bool)

(assert (=> b!952575 (=> res!638218 e!536511)))

(assert (=> b!952575 (= res!638218 (not (= (size!28202 (_keys!10781 thiss!1141)) (bvadd #b00000000000000000000000000000001 (mask!27676 thiss!1141)))))))

(declare-fun b!952576 () Bool)

(declare-fun res!638222 () Bool)

(assert (=> b!952576 (=> res!638222 e!536511)))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!57670 (_ BitVec 32)) Bool)

(assert (=> b!952576 (= res!638222 (not (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!10781 thiss!1141) (mask!27676 thiss!1141))))))

(declare-fun b!952569 () Bool)

(declare-fun lt!429256 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!57670 (_ BitVec 32)) SeekEntryResult!9150)

(assert (=> b!952569 (= e!536511 (= (seekEntryOrOpen!0 key!756 (_keys!10781 thiss!1141) (mask!27676 thiss!1141)) (Found!9150 lt!429256)))))

(declare-fun res!638223 () Bool)

(assert (=> start!81570 (=> (not res!638223) (not e!536516))))

(declare-fun valid!1869 (LongMapFixedSize!4992) Bool)

(assert (=> start!81570 (= res!638223 (valid!1869 thiss!1141))))

(assert (=> start!81570 e!536516))

(declare-fun e!536514 () Bool)

(assert (=> start!81570 e!536514))

(assert (=> start!81570 true))

(declare-fun array_inv!21458 (array!57670) Bool)

(declare-fun array_inv!21459 (array!57668) Bool)

(assert (=> b!952577 (= e!536514 (and tp!63517 tp_is_empty!20805 (array_inv!21458 (_keys!10781 thiss!1141)) (array_inv!21459 (_values!5852 thiss!1141)) e!536513))))

(declare-fun b!952578 () Bool)

(assert (=> b!952578 (= e!536516 (not e!536511))))

(declare-fun res!638221 () Bool)

(assert (=> b!952578 (=> res!638221 e!536511)))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!952578 (= res!638221 (not (validMask!0 (mask!27676 thiss!1141))))))

(assert (=> b!952578 (arrayForallSeekEntryOrOpenFound!0 lt!429256 (_keys!10781 thiss!1141) (mask!27676 thiss!1141))))

(declare-datatypes ((Unit!32046 0))(
  ( (Unit!32047) )
))
(declare-fun lt!429257 () Unit!32046)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!57670 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!32046)

(assert (=> b!952578 (= lt!429257 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (_keys!10781 thiss!1141) (mask!27676 thiss!1141) #b00000000000000000000000000000000 lt!429256))))

(declare-fun arrayScanForKey!0 (array!57670 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!952578 (= lt!429256 (arrayScanForKey!0 (_keys!10781 thiss!1141) key!756 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!57670 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!952578 (arrayContainsKey!0 (_keys!10781 thiss!1141) key!756 #b00000000000000000000000000000000)))

(declare-fun lt!429255 () Unit!32046)

(declare-fun lemmaKeyInListMapIsInArray!341 (array!57670 array!57668 (_ BitVec 32) (_ BitVec 32) V!32705 V!32705 (_ BitVec 64) Int) Unit!32046)

(assert (=> b!952578 (= lt!429255 (lemmaKeyInListMapIsInArray!341 (_keys!10781 thiss!1141) (_values!5852 thiss!1141) (mask!27676 thiss!1141) (extraKeys!5561 thiss!1141) (zeroValue!5665 thiss!1141) (minValue!5665 thiss!1141) key!756 (defaultEntry!5829 thiss!1141)))))

(assert (= (and start!81570 res!638223) b!952573))

(assert (= (and b!952573 res!638225) b!952567))

(assert (= (and b!952567 res!638224) b!952568))

(assert (= (and b!952568 res!638219) b!952578))

(assert (= (and b!952578 (not res!638221)) b!952575))

(assert (= (and b!952575 (not res!638218)) b!952576))

(assert (= (and b!952576 (not res!638222)) b!952571))

(assert (= (and b!952571 (not res!638220)) b!952569))

(assert (= (and b!952572 condMapEmpty!33148) mapIsEmpty!33148))

(assert (= (and b!952572 (not condMapEmpty!33148)) mapNonEmpty!33148))

(assert (= (and mapNonEmpty!33148 ((_ is ValueCellFull!9921) mapValue!33148)) b!952574))

(assert (= (and b!952572 ((_ is ValueCellFull!9921) mapDefault!33148)) b!952570))

(assert (= b!952577 b!952572))

(assert (= start!81570 b!952577))

(declare-fun m!884787 () Bool)

(assert (=> b!952567 m!884787))

(declare-fun m!884789 () Bool)

(assert (=> b!952577 m!884789))

(declare-fun m!884791 () Bool)

(assert (=> b!952577 m!884791))

(declare-fun m!884793 () Bool)

(assert (=> start!81570 m!884793))

(declare-fun m!884795 () Bool)

(assert (=> b!952568 m!884795))

(assert (=> b!952568 m!884795))

(declare-fun m!884797 () Bool)

(assert (=> b!952568 m!884797))

(declare-fun m!884799 () Bool)

(assert (=> b!952576 m!884799))

(declare-fun m!884801 () Bool)

(assert (=> b!952569 m!884801))

(declare-fun m!884803 () Bool)

(assert (=> b!952571 m!884803))

(declare-fun m!884805 () Bool)

(assert (=> mapNonEmpty!33148 m!884805))

(declare-fun m!884807 () Bool)

(assert (=> b!952578 m!884807))

(declare-fun m!884809 () Bool)

(assert (=> b!952578 m!884809))

(declare-fun m!884811 () Bool)

(assert (=> b!952578 m!884811))

(declare-fun m!884813 () Bool)

(assert (=> b!952578 m!884813))

(declare-fun m!884815 () Bool)

(assert (=> b!952578 m!884815))

(declare-fun m!884817 () Bool)

(assert (=> b!952578 m!884817))

(check-sat tp_is_empty!20805 (not b!952571) (not start!81570) (not b!952567) b_and!29797 (not b!952578) (not b!952576) (not b!952569) (not b!952568) (not b!952577) (not mapNonEmpty!33148) (not b_next!18297))
(check-sat b_and!29797 (not b_next!18297))
(get-model)

(declare-fun d!115483 () Bool)

(declare-fun res!638254 () Bool)

(declare-fun e!536542 () Bool)

(assert (=> d!115483 (=> res!638254 e!536542)))

(assert (=> d!115483 (= res!638254 (= (select (arr!27722 (_keys!10781 thiss!1141)) #b00000000000000000000000000000000) key!756))))

(assert (=> d!115483 (= (arrayContainsKey!0 (_keys!10781 thiss!1141) key!756 #b00000000000000000000000000000000) e!536542)))

(declare-fun b!952619 () Bool)

(declare-fun e!536543 () Bool)

(assert (=> b!952619 (= e!536542 e!536543)))

(declare-fun res!638255 () Bool)

(assert (=> b!952619 (=> (not res!638255) (not e!536543))))

(assert (=> b!952619 (= res!638255 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!28202 (_keys!10781 thiss!1141))))))

(declare-fun b!952620 () Bool)

(assert (=> b!952620 (= e!536543 (arrayContainsKey!0 (_keys!10781 thiss!1141) key!756 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!115483 (not res!638254)) b!952619))

(assert (= (and b!952619 res!638255) b!952620))

(declare-fun m!884851 () Bool)

(assert (=> d!115483 m!884851))

(declare-fun m!884853 () Bool)

(assert (=> b!952620 m!884853))

(assert (=> b!952578 d!115483))

(declare-fun d!115485 () Bool)

(declare-fun e!536546 () Bool)

(assert (=> d!115485 e!536546))

(declare-fun c!99605 () Bool)

(assert (=> d!115485 (= c!99605 (and (not (= key!756 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!756 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun lt!429269 () Unit!32046)

(declare-fun choose!1607 (array!57670 array!57668 (_ BitVec 32) (_ BitVec 32) V!32705 V!32705 (_ BitVec 64) Int) Unit!32046)

(assert (=> d!115485 (= lt!429269 (choose!1607 (_keys!10781 thiss!1141) (_values!5852 thiss!1141) (mask!27676 thiss!1141) (extraKeys!5561 thiss!1141) (zeroValue!5665 thiss!1141) (minValue!5665 thiss!1141) key!756 (defaultEntry!5829 thiss!1141)))))

(assert (=> d!115485 (validMask!0 (mask!27676 thiss!1141))))

(assert (=> d!115485 (= (lemmaKeyInListMapIsInArray!341 (_keys!10781 thiss!1141) (_values!5852 thiss!1141) (mask!27676 thiss!1141) (extraKeys!5561 thiss!1141) (zeroValue!5665 thiss!1141) (minValue!5665 thiss!1141) key!756 (defaultEntry!5829 thiss!1141)) lt!429269)))

(declare-fun b!952625 () Bool)

(assert (=> b!952625 (= e!536546 (arrayContainsKey!0 (_keys!10781 thiss!1141) key!756 #b00000000000000000000000000000000))))

(declare-fun b!952626 () Bool)

(assert (=> b!952626 (= e!536546 (ite (= key!756 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand (extraKeys!5561 thiss!1141) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!5561 thiss!1141) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (= (and d!115485 c!99605) b!952625))

(assert (= (and d!115485 (not c!99605)) b!952626))

(declare-fun m!884855 () Bool)

(assert (=> d!115485 m!884855))

(assert (=> d!115485 m!884813))

(assert (=> b!952625 m!884817))

(assert (=> b!952578 d!115485))

(declare-fun d!115487 () Bool)

(declare-fun lt!429272 () (_ BitVec 32))

(assert (=> d!115487 (and (or (bvslt lt!429272 #b00000000000000000000000000000000) (bvsge lt!429272 (size!28202 (_keys!10781 thiss!1141))) (and (bvsge lt!429272 #b00000000000000000000000000000000) (bvslt lt!429272 (size!28202 (_keys!10781 thiss!1141))))) (bvsge lt!429272 #b00000000000000000000000000000000) (bvslt lt!429272 (size!28202 (_keys!10781 thiss!1141))) (= (select (arr!27722 (_keys!10781 thiss!1141)) lt!429272) key!756))))

(declare-fun e!536549 () (_ BitVec 32))

(assert (=> d!115487 (= lt!429272 e!536549)))

(declare-fun c!99608 () Bool)

(assert (=> d!115487 (= c!99608 (= (select (arr!27722 (_keys!10781 thiss!1141)) #b00000000000000000000000000000000) key!756))))

(assert (=> d!115487 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!28202 (_keys!10781 thiss!1141))) (bvslt (size!28202 (_keys!10781 thiss!1141)) #b01111111111111111111111111111111))))

(assert (=> d!115487 (= (arrayScanForKey!0 (_keys!10781 thiss!1141) key!756 #b00000000000000000000000000000000) lt!429272)))

(declare-fun b!952631 () Bool)

(assert (=> b!952631 (= e!536549 #b00000000000000000000000000000000)))

(declare-fun b!952632 () Bool)

(assert (=> b!952632 (= e!536549 (arrayScanForKey!0 (_keys!10781 thiss!1141) key!756 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!115487 c!99608) b!952631))

(assert (= (and d!115487 (not c!99608)) b!952632))

(declare-fun m!884857 () Bool)

(assert (=> d!115487 m!884857))

(assert (=> d!115487 m!884851))

(declare-fun m!884859 () Bool)

(assert (=> b!952632 m!884859))

(assert (=> b!952578 d!115487))

(declare-fun d!115489 () Bool)

(assert (=> d!115489 (arrayForallSeekEntryOrOpenFound!0 lt!429256 (_keys!10781 thiss!1141) (mask!27676 thiss!1141))))

(declare-fun lt!429275 () Unit!32046)

(declare-fun choose!38 (array!57670 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!32046)

(assert (=> d!115489 (= lt!429275 (choose!38 (_keys!10781 thiss!1141) (mask!27676 thiss!1141) #b00000000000000000000000000000000 lt!429256))))

(assert (=> d!115489 (validMask!0 (mask!27676 thiss!1141))))

(assert (=> d!115489 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (_keys!10781 thiss!1141) (mask!27676 thiss!1141) #b00000000000000000000000000000000 lt!429256) lt!429275)))

(declare-fun bs!26759 () Bool)

(assert (= bs!26759 d!115489))

(assert (=> bs!26759 m!884807))

(declare-fun m!884861 () Bool)

(assert (=> bs!26759 m!884861))

(assert (=> bs!26759 m!884813))

(assert (=> b!952578 d!115489))

(declare-fun d!115491 () Bool)

(assert (=> d!115491 (= (validMask!0 (mask!27676 thiss!1141)) (and (or (= (mask!27676 thiss!1141) #b00000000000000000000000000000111) (= (mask!27676 thiss!1141) #b00000000000000000000000000001111) (= (mask!27676 thiss!1141) #b00000000000000000000000000011111) (= (mask!27676 thiss!1141) #b00000000000000000000000000111111) (= (mask!27676 thiss!1141) #b00000000000000000000000001111111) (= (mask!27676 thiss!1141) #b00000000000000000000000011111111) (= (mask!27676 thiss!1141) #b00000000000000000000000111111111) (= (mask!27676 thiss!1141) #b00000000000000000000001111111111) (= (mask!27676 thiss!1141) #b00000000000000000000011111111111) (= (mask!27676 thiss!1141) #b00000000000000000000111111111111) (= (mask!27676 thiss!1141) #b00000000000000000001111111111111) (= (mask!27676 thiss!1141) #b00000000000000000011111111111111) (= (mask!27676 thiss!1141) #b00000000000000000111111111111111) (= (mask!27676 thiss!1141) #b00000000000000001111111111111111) (= (mask!27676 thiss!1141) #b00000000000000011111111111111111) (= (mask!27676 thiss!1141) #b00000000000000111111111111111111) (= (mask!27676 thiss!1141) #b00000000000001111111111111111111) (= (mask!27676 thiss!1141) #b00000000000011111111111111111111) (= (mask!27676 thiss!1141) #b00000000000111111111111111111111) (= (mask!27676 thiss!1141) #b00000000001111111111111111111111) (= (mask!27676 thiss!1141) #b00000000011111111111111111111111) (= (mask!27676 thiss!1141) #b00000000111111111111111111111111) (= (mask!27676 thiss!1141) #b00000001111111111111111111111111) (= (mask!27676 thiss!1141) #b00000011111111111111111111111111) (= (mask!27676 thiss!1141) #b00000111111111111111111111111111) (= (mask!27676 thiss!1141) #b00001111111111111111111111111111) (= (mask!27676 thiss!1141) #b00011111111111111111111111111111) (= (mask!27676 thiss!1141) #b00111111111111111111111111111111)) (bvsle (mask!27676 thiss!1141) #b00111111111111111111111111111111)))))

(assert (=> b!952578 d!115491))

(declare-fun b!952641 () Bool)

(declare-fun e!536558 () Bool)

(declare-fun e!536556 () Bool)

(assert (=> b!952641 (= e!536558 e!536556)))

(declare-fun c!99611 () Bool)

(assert (=> b!952641 (= c!99611 (validKeyInArray!0 (select (arr!27722 (_keys!10781 thiss!1141)) lt!429256)))))

(declare-fun bm!41599 () Bool)

(declare-fun call!41602 () Bool)

(assert (=> bm!41599 (= call!41602 (arrayForallSeekEntryOrOpenFound!0 (bvadd lt!429256 #b00000000000000000000000000000001) (_keys!10781 thiss!1141) (mask!27676 thiss!1141)))))

(declare-fun d!115493 () Bool)

(declare-fun res!638260 () Bool)

(assert (=> d!115493 (=> res!638260 e!536558)))

(assert (=> d!115493 (= res!638260 (bvsge lt!429256 (size!28202 (_keys!10781 thiss!1141))))))

(assert (=> d!115493 (= (arrayForallSeekEntryOrOpenFound!0 lt!429256 (_keys!10781 thiss!1141) (mask!27676 thiss!1141)) e!536558)))

(declare-fun b!952642 () Bool)

(assert (=> b!952642 (= e!536556 call!41602)))

(declare-fun b!952643 () Bool)

(declare-fun e!536557 () Bool)

(assert (=> b!952643 (= e!536556 e!536557)))

(declare-fun lt!429283 () (_ BitVec 64))

(assert (=> b!952643 (= lt!429283 (select (arr!27722 (_keys!10781 thiss!1141)) lt!429256))))

(declare-fun lt!429284 () Unit!32046)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!57670 (_ BitVec 64) (_ BitVec 32)) Unit!32046)

(assert (=> b!952643 (= lt!429284 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!10781 thiss!1141) lt!429283 lt!429256))))

(assert (=> b!952643 (arrayContainsKey!0 (_keys!10781 thiss!1141) lt!429283 #b00000000000000000000000000000000)))

(declare-fun lt!429282 () Unit!32046)

(assert (=> b!952643 (= lt!429282 lt!429284)))

(declare-fun res!638261 () Bool)

(assert (=> b!952643 (= res!638261 (= (seekEntryOrOpen!0 (select (arr!27722 (_keys!10781 thiss!1141)) lt!429256) (_keys!10781 thiss!1141) (mask!27676 thiss!1141)) (Found!9150 lt!429256)))))

(assert (=> b!952643 (=> (not res!638261) (not e!536557))))

(declare-fun b!952644 () Bool)

(assert (=> b!952644 (= e!536557 call!41602)))

(assert (= (and d!115493 (not res!638260)) b!952641))

(assert (= (and b!952641 c!99611) b!952643))

(assert (= (and b!952641 (not c!99611)) b!952642))

(assert (= (and b!952643 res!638261) b!952644))

(assert (= (or b!952644 b!952642) bm!41599))

(declare-fun m!884863 () Bool)

(assert (=> b!952641 m!884863))

(assert (=> b!952641 m!884863))

(declare-fun m!884865 () Bool)

(assert (=> b!952641 m!884865))

(declare-fun m!884867 () Bool)

(assert (=> bm!41599 m!884867))

(assert (=> b!952643 m!884863))

(declare-fun m!884869 () Bool)

(assert (=> b!952643 m!884869))

(declare-fun m!884871 () Bool)

(assert (=> b!952643 m!884871))

(assert (=> b!952643 m!884863))

(declare-fun m!884873 () Bool)

(assert (=> b!952643 m!884873))

(assert (=> b!952578 d!115493))

(declare-fun d!115495 () Bool)

(declare-fun res!638268 () Bool)

(declare-fun e!536561 () Bool)

(assert (=> d!115495 (=> (not res!638268) (not e!536561))))

(declare-fun simpleValid!382 (LongMapFixedSize!4992) Bool)

(assert (=> d!115495 (= res!638268 (simpleValid!382 thiss!1141))))

(assert (=> d!115495 (= (valid!1869 thiss!1141) e!536561)))

(declare-fun b!952651 () Bool)

(declare-fun res!638269 () Bool)

(assert (=> b!952651 (=> (not res!638269) (not e!536561))))

(declare-fun arrayCountValidKeys!0 (array!57670 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!952651 (= res!638269 (= (arrayCountValidKeys!0 (_keys!10781 thiss!1141) #b00000000000000000000000000000000 (size!28202 (_keys!10781 thiss!1141))) (_size!2551 thiss!1141)))))

(declare-fun b!952652 () Bool)

(declare-fun res!638270 () Bool)

(assert (=> b!952652 (=> (not res!638270) (not e!536561))))

(assert (=> b!952652 (= res!638270 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!10781 thiss!1141) (mask!27676 thiss!1141)))))

(declare-fun b!952653 () Bool)

(declare-datatypes ((List!19499 0))(
  ( (Nil!19496) (Cons!19495 (h!20657 (_ BitVec 64)) (t!27866 List!19499)) )
))
(declare-fun arrayNoDuplicates!0 (array!57670 (_ BitVec 32) List!19499) Bool)

(assert (=> b!952653 (= e!536561 (arrayNoDuplicates!0 (_keys!10781 thiss!1141) #b00000000000000000000000000000000 Nil!19496))))

(assert (= (and d!115495 res!638268) b!952651))

(assert (= (and b!952651 res!638269) b!952652))

(assert (= (and b!952652 res!638270) b!952653))

(declare-fun m!884875 () Bool)

(assert (=> d!115495 m!884875))

(declare-fun m!884877 () Bool)

(assert (=> b!952651 m!884877))

(assert (=> b!952652 m!884799))

(declare-fun m!884879 () Bool)

(assert (=> b!952653 m!884879))

(assert (=> start!81570 d!115495))

(declare-fun d!115497 () Bool)

(declare-fun e!536567 () Bool)

(assert (=> d!115497 e!536567))

(declare-fun res!638273 () Bool)

(assert (=> d!115497 (=> res!638273 e!536567)))

(declare-fun lt!429294 () Bool)

(assert (=> d!115497 (= res!638273 (not lt!429294))))

(declare-fun lt!429295 () Bool)

(assert (=> d!115497 (= lt!429294 lt!429295)))

(declare-fun lt!429293 () Unit!32046)

(declare-fun e!536566 () Unit!32046)

(assert (=> d!115497 (= lt!429293 e!536566)))

(declare-fun c!99614 () Bool)

(assert (=> d!115497 (= c!99614 lt!429295)))

(declare-fun containsKey!474 (List!19497 (_ BitVec 64)) Bool)

(assert (=> d!115497 (= lt!429295 (containsKey!474 (toList!6211 (getCurrentListMap!3396 (_keys!10781 thiss!1141) (_values!5852 thiss!1141) (mask!27676 thiss!1141) (extraKeys!5561 thiss!1141) (zeroValue!5665 thiss!1141) (minValue!5665 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5829 thiss!1141))) key!756))))

(assert (=> d!115497 (= (contains!5257 (getCurrentListMap!3396 (_keys!10781 thiss!1141) (_values!5852 thiss!1141) (mask!27676 thiss!1141) (extraKeys!5561 thiss!1141) (zeroValue!5665 thiss!1141) (minValue!5665 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5829 thiss!1141)) key!756) lt!429294)))

(declare-fun b!952660 () Bool)

(declare-fun lt!429296 () Unit!32046)

(assert (=> b!952660 (= e!536566 lt!429296)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!369 (List!19497 (_ BitVec 64)) Unit!32046)

(assert (=> b!952660 (= lt!429296 (lemmaContainsKeyImpliesGetValueByKeyDefined!369 (toList!6211 (getCurrentListMap!3396 (_keys!10781 thiss!1141) (_values!5852 thiss!1141) (mask!27676 thiss!1141) (extraKeys!5561 thiss!1141) (zeroValue!5665 thiss!1141) (minValue!5665 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5829 thiss!1141))) key!756))))

(declare-datatypes ((Option!515 0))(
  ( (Some!514 (v!13007 V!32705)) (None!513) )
))
(declare-fun isDefined!379 (Option!515) Bool)

(declare-fun getValueByKey!509 (List!19497 (_ BitVec 64)) Option!515)

(assert (=> b!952660 (isDefined!379 (getValueByKey!509 (toList!6211 (getCurrentListMap!3396 (_keys!10781 thiss!1141) (_values!5852 thiss!1141) (mask!27676 thiss!1141) (extraKeys!5561 thiss!1141) (zeroValue!5665 thiss!1141) (minValue!5665 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5829 thiss!1141))) key!756))))

(declare-fun b!952661 () Bool)

(declare-fun Unit!32050 () Unit!32046)

(assert (=> b!952661 (= e!536566 Unit!32050)))

(declare-fun b!952662 () Bool)

(assert (=> b!952662 (= e!536567 (isDefined!379 (getValueByKey!509 (toList!6211 (getCurrentListMap!3396 (_keys!10781 thiss!1141) (_values!5852 thiss!1141) (mask!27676 thiss!1141) (extraKeys!5561 thiss!1141) (zeroValue!5665 thiss!1141) (minValue!5665 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5829 thiss!1141))) key!756)))))

(assert (= (and d!115497 c!99614) b!952660))

(assert (= (and d!115497 (not c!99614)) b!952661))

(assert (= (and d!115497 (not res!638273)) b!952662))

(declare-fun m!884881 () Bool)

(assert (=> d!115497 m!884881))

(declare-fun m!884883 () Bool)

(assert (=> b!952660 m!884883))

(declare-fun m!884885 () Bool)

(assert (=> b!952660 m!884885))

(assert (=> b!952660 m!884885))

(declare-fun m!884887 () Bool)

(assert (=> b!952660 m!884887))

(assert (=> b!952662 m!884885))

(assert (=> b!952662 m!884885))

(assert (=> b!952662 m!884887))

(assert (=> b!952568 d!115497))

(declare-fun b!952705 () Bool)

(declare-fun e!536599 () Bool)

(declare-fun lt!429353 () ListLongMap!12391)

(declare-fun apply!922 (ListLongMap!12391 (_ BitVec 64)) V!32705)

(assert (=> b!952705 (= e!536599 (= (apply!922 lt!429353 #b1000000000000000000000000000000000000000000000000000000000000000) (minValue!5665 thiss!1141)))))

(declare-fun b!952706 () Bool)

(declare-fun e!536600 () Bool)

(declare-fun e!536597 () Bool)

(assert (=> b!952706 (= e!536600 e!536597)))

(declare-fun c!99631 () Bool)

(assert (=> b!952706 (= c!99631 (not (= (bvand (extraKeys!5561 thiss!1141) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!952707 () Bool)

(declare-fun e!536601 () Bool)

(assert (=> b!952707 (= e!536601 (validKeyInArray!0 (select (arr!27722 (_keys!10781 thiss!1141)) #b00000000000000000000000000000000)))))

(declare-fun b!952708 () Bool)

(declare-fun e!536603 () ListLongMap!12391)

(declare-fun call!41622 () ListLongMap!12391)

(assert (=> b!952708 (= e!536603 call!41622)))

(declare-fun b!952709 () Bool)

(declare-fun c!99630 () Bool)

(assert (=> b!952709 (= c!99630 (and (not (= (bvand (extraKeys!5561 thiss!1141) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (extraKeys!5561 thiss!1141) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun e!536598 () ListLongMap!12391)

(assert (=> b!952709 (= e!536603 e!536598)))

(declare-fun b!952710 () Bool)

(declare-fun e!536594 () Unit!32046)

(declare-fun Unit!32051 () Unit!32046)

(assert (=> b!952710 (= e!536594 Unit!32051)))

(declare-fun b!952711 () Bool)

(declare-fun e!536602 () Bool)

(assert (=> b!952711 (= e!536602 (validKeyInArray!0 (select (arr!27722 (_keys!10781 thiss!1141)) #b00000000000000000000000000000000)))))

(declare-fun call!41623 () ListLongMap!12391)

(declare-fun call!41617 () ListLongMap!12391)

(declare-fun bm!41614 () Bool)

(declare-fun c!99628 () Bool)

(declare-fun c!99627 () Bool)

(declare-fun call!41621 () ListLongMap!12391)

(declare-fun call!41619 () ListLongMap!12391)

(declare-fun +!2836 (ListLongMap!12391 tuple2!13680) ListLongMap!12391)

(assert (=> bm!41614 (= call!41623 (+!2836 (ite c!99628 call!41621 (ite c!99627 call!41619 call!41617)) (ite (or c!99628 c!99627) (tuple2!13681 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!5665 thiss!1141)) (tuple2!13681 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5665 thiss!1141)))))))

(declare-fun b!952712 () Bool)

(assert (=> b!952712 (= e!536598 call!41617)))

(declare-fun b!952713 () Bool)

(declare-fun call!41620 () Bool)

(assert (=> b!952713 (= e!536597 (not call!41620))))

(declare-fun b!952714 () Bool)

(assert (=> b!952714 (= e!536598 call!41622)))

(declare-fun bm!41615 () Bool)

(assert (=> bm!41615 (= call!41622 call!41623)))

(declare-fun d!115499 () Bool)

(assert (=> d!115499 e!536600))

(declare-fun res!638299 () Bool)

(assert (=> d!115499 (=> (not res!638299) (not e!536600))))

(assert (=> d!115499 (= res!638299 (or (bvsge #b00000000000000000000000000000000 (size!28202 (_keys!10781 thiss!1141))) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!28202 (_keys!10781 thiss!1141))))))))

(declare-fun lt!429356 () ListLongMap!12391)

(assert (=> d!115499 (= lt!429353 lt!429356)))

(declare-fun lt!429360 () Unit!32046)

(assert (=> d!115499 (= lt!429360 e!536594)))

(declare-fun c!99629 () Bool)

(assert (=> d!115499 (= c!99629 e!536602)))

(declare-fun res!638296 () Bool)

(assert (=> d!115499 (=> (not res!638296) (not e!536602))))

(assert (=> d!115499 (= res!638296 (bvslt #b00000000000000000000000000000000 (size!28202 (_keys!10781 thiss!1141))))))

(declare-fun e!536595 () ListLongMap!12391)

(assert (=> d!115499 (= lt!429356 e!536595)))

(assert (=> d!115499 (= c!99628 (and (not (= (bvand (extraKeys!5561 thiss!1141) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!5561 thiss!1141) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!115499 (validMask!0 (mask!27676 thiss!1141))))

(assert (=> d!115499 (= (getCurrentListMap!3396 (_keys!10781 thiss!1141) (_values!5852 thiss!1141) (mask!27676 thiss!1141) (extraKeys!5561 thiss!1141) (zeroValue!5665 thiss!1141) (minValue!5665 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5829 thiss!1141)) lt!429353)))

(declare-fun b!952715 () Bool)

(declare-fun e!536604 () Bool)

(declare-fun e!536596 () Bool)

(assert (=> b!952715 (= e!536604 e!536596)))

(declare-fun res!638293 () Bool)

(declare-fun call!41618 () Bool)

(assert (=> b!952715 (= res!638293 call!41618)))

(assert (=> b!952715 (=> (not res!638293) (not e!536596))))

(declare-fun bm!41616 () Bool)

(assert (=> bm!41616 (= call!41619 call!41621)))

(declare-fun b!952716 () Bool)

(declare-fun res!638294 () Bool)

(assert (=> b!952716 (=> (not res!638294) (not e!536600))))

(assert (=> b!952716 (= res!638294 e!536604)))

(declare-fun c!99632 () Bool)

(assert (=> b!952716 (= c!99632 (not (= (bvand (extraKeys!5561 thiss!1141) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!952717 () Bool)

(declare-fun e!536606 () Bool)

(declare-fun get!14589 (ValueCell!9921 V!32705) V!32705)

(declare-fun dynLambda!1675 (Int (_ BitVec 64)) V!32705)

(assert (=> b!952717 (= e!536606 (= (apply!922 lt!429353 (select (arr!27722 (_keys!10781 thiss!1141)) #b00000000000000000000000000000000)) (get!14589 (select (arr!27721 (_values!5852 thiss!1141)) #b00000000000000000000000000000000) (dynLambda!1675 (defaultEntry!5829 thiss!1141) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!952717 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!28201 (_values!5852 thiss!1141))))))

(assert (=> b!952717 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!28202 (_keys!10781 thiss!1141))))))

(declare-fun b!952718 () Bool)

(assert (=> b!952718 (= e!536604 (not call!41618))))

(declare-fun b!952719 () Bool)

(declare-fun e!536605 () Bool)

(assert (=> b!952719 (= e!536605 e!536606)))

(declare-fun res!638292 () Bool)

(assert (=> b!952719 (=> (not res!638292) (not e!536606))))

(assert (=> b!952719 (= res!638292 (contains!5257 lt!429353 (select (arr!27722 (_keys!10781 thiss!1141)) #b00000000000000000000000000000000)))))

(assert (=> b!952719 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!28202 (_keys!10781 thiss!1141))))))

(declare-fun b!952720 () Bool)

(declare-fun lt!429357 () Unit!32046)

(assert (=> b!952720 (= e!536594 lt!429357)))

(declare-fun lt!429351 () ListLongMap!12391)

(declare-fun getCurrentListMapNoExtraKeys!3342 (array!57670 array!57668 (_ BitVec 32) (_ BitVec 32) V!32705 V!32705 (_ BitVec 32) Int) ListLongMap!12391)

(assert (=> b!952720 (= lt!429351 (getCurrentListMapNoExtraKeys!3342 (_keys!10781 thiss!1141) (_values!5852 thiss!1141) (mask!27676 thiss!1141) (extraKeys!5561 thiss!1141) (zeroValue!5665 thiss!1141) (minValue!5665 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5829 thiss!1141)))))

(declare-fun lt!429342 () (_ BitVec 64))

(assert (=> b!952720 (= lt!429342 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!429346 () (_ BitVec 64))

(assert (=> b!952720 (= lt!429346 (select (arr!27722 (_keys!10781 thiss!1141)) #b00000000000000000000000000000000))))

(declare-fun lt!429361 () Unit!32046)

(declare-fun addStillContains!592 (ListLongMap!12391 (_ BitVec 64) V!32705 (_ BitVec 64)) Unit!32046)

(assert (=> b!952720 (= lt!429361 (addStillContains!592 lt!429351 lt!429342 (zeroValue!5665 thiss!1141) lt!429346))))

(assert (=> b!952720 (contains!5257 (+!2836 lt!429351 (tuple2!13681 lt!429342 (zeroValue!5665 thiss!1141))) lt!429346)))

(declare-fun lt!429352 () Unit!32046)

(assert (=> b!952720 (= lt!429352 lt!429361)))

(declare-fun lt!429355 () ListLongMap!12391)

(assert (=> b!952720 (= lt!429355 (getCurrentListMapNoExtraKeys!3342 (_keys!10781 thiss!1141) (_values!5852 thiss!1141) (mask!27676 thiss!1141) (extraKeys!5561 thiss!1141) (zeroValue!5665 thiss!1141) (minValue!5665 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5829 thiss!1141)))))

(declare-fun lt!429359 () (_ BitVec 64))

(assert (=> b!952720 (= lt!429359 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!429345 () (_ BitVec 64))

(assert (=> b!952720 (= lt!429345 (select (arr!27722 (_keys!10781 thiss!1141)) #b00000000000000000000000000000000))))

(declare-fun lt!429354 () Unit!32046)

(declare-fun addApplyDifferent!466 (ListLongMap!12391 (_ BitVec 64) V!32705 (_ BitVec 64)) Unit!32046)

(assert (=> b!952720 (= lt!429354 (addApplyDifferent!466 lt!429355 lt!429359 (minValue!5665 thiss!1141) lt!429345))))

(assert (=> b!952720 (= (apply!922 (+!2836 lt!429355 (tuple2!13681 lt!429359 (minValue!5665 thiss!1141))) lt!429345) (apply!922 lt!429355 lt!429345))))

(declare-fun lt!429347 () Unit!32046)

(assert (=> b!952720 (= lt!429347 lt!429354)))

(declare-fun lt!429344 () ListLongMap!12391)

(assert (=> b!952720 (= lt!429344 (getCurrentListMapNoExtraKeys!3342 (_keys!10781 thiss!1141) (_values!5852 thiss!1141) (mask!27676 thiss!1141) (extraKeys!5561 thiss!1141) (zeroValue!5665 thiss!1141) (minValue!5665 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5829 thiss!1141)))))

(declare-fun lt!429348 () (_ BitVec 64))

(assert (=> b!952720 (= lt!429348 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!429343 () (_ BitVec 64))

(assert (=> b!952720 (= lt!429343 (select (arr!27722 (_keys!10781 thiss!1141)) #b00000000000000000000000000000000))))

(declare-fun lt!429358 () Unit!32046)

(assert (=> b!952720 (= lt!429358 (addApplyDifferent!466 lt!429344 lt!429348 (zeroValue!5665 thiss!1141) lt!429343))))

(assert (=> b!952720 (= (apply!922 (+!2836 lt!429344 (tuple2!13681 lt!429348 (zeroValue!5665 thiss!1141))) lt!429343) (apply!922 lt!429344 lt!429343))))

(declare-fun lt!429341 () Unit!32046)

(assert (=> b!952720 (= lt!429341 lt!429358)))

(declare-fun lt!429349 () ListLongMap!12391)

(assert (=> b!952720 (= lt!429349 (getCurrentListMapNoExtraKeys!3342 (_keys!10781 thiss!1141) (_values!5852 thiss!1141) (mask!27676 thiss!1141) (extraKeys!5561 thiss!1141) (zeroValue!5665 thiss!1141) (minValue!5665 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5829 thiss!1141)))))

(declare-fun lt!429362 () (_ BitVec 64))

(assert (=> b!952720 (= lt!429362 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!429350 () (_ BitVec 64))

(assert (=> b!952720 (= lt!429350 (select (arr!27722 (_keys!10781 thiss!1141)) #b00000000000000000000000000000000))))

(assert (=> b!952720 (= lt!429357 (addApplyDifferent!466 lt!429349 lt!429362 (minValue!5665 thiss!1141) lt!429350))))

(assert (=> b!952720 (= (apply!922 (+!2836 lt!429349 (tuple2!13681 lt!429362 (minValue!5665 thiss!1141))) lt!429350) (apply!922 lt!429349 lt!429350))))

(declare-fun b!952721 () Bool)

(assert (=> b!952721 (= e!536595 (+!2836 call!41623 (tuple2!13681 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5665 thiss!1141))))))

(declare-fun b!952722 () Bool)

(assert (=> b!952722 (= e!536595 e!536603)))

(assert (=> b!952722 (= c!99627 (and (not (= (bvand (extraKeys!5561 thiss!1141) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (extraKeys!5561 thiss!1141) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun bm!41617 () Bool)

(assert (=> bm!41617 (= call!41618 (contains!5257 lt!429353 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!41618 () Bool)

(assert (=> bm!41618 (= call!41617 call!41619)))

(declare-fun b!952723 () Bool)

(assert (=> b!952723 (= e!536596 (= (apply!922 lt!429353 #b0000000000000000000000000000000000000000000000000000000000000000) (zeroValue!5665 thiss!1141)))))

(declare-fun bm!41619 () Bool)

(assert (=> bm!41619 (= call!41620 (contains!5257 lt!429353 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!41620 () Bool)

(assert (=> bm!41620 (= call!41621 (getCurrentListMapNoExtraKeys!3342 (_keys!10781 thiss!1141) (_values!5852 thiss!1141) (mask!27676 thiss!1141) (extraKeys!5561 thiss!1141) (zeroValue!5665 thiss!1141) (minValue!5665 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5829 thiss!1141)))))

(declare-fun b!952724 () Bool)

(declare-fun res!638300 () Bool)

(assert (=> b!952724 (=> (not res!638300) (not e!536600))))

(assert (=> b!952724 (= res!638300 e!536605)))

(declare-fun res!638295 () Bool)

(assert (=> b!952724 (=> res!638295 e!536605)))

(assert (=> b!952724 (= res!638295 (not e!536601))))

(declare-fun res!638297 () Bool)

(assert (=> b!952724 (=> (not res!638297) (not e!536601))))

(assert (=> b!952724 (= res!638297 (bvslt #b00000000000000000000000000000000 (size!28202 (_keys!10781 thiss!1141))))))

(declare-fun b!952725 () Bool)

(assert (=> b!952725 (= e!536597 e!536599)))

(declare-fun res!638298 () Bool)

(assert (=> b!952725 (= res!638298 call!41620)))

(assert (=> b!952725 (=> (not res!638298) (not e!536599))))

(assert (= (and d!115499 c!99628) b!952721))

(assert (= (and d!115499 (not c!99628)) b!952722))

(assert (= (and b!952722 c!99627) b!952708))

(assert (= (and b!952722 (not c!99627)) b!952709))

(assert (= (and b!952709 c!99630) b!952714))

(assert (= (and b!952709 (not c!99630)) b!952712))

(assert (= (or b!952714 b!952712) bm!41618))

(assert (= (or b!952708 bm!41618) bm!41616))

(assert (= (or b!952708 b!952714) bm!41615))

(assert (= (or b!952721 bm!41616) bm!41620))

(assert (= (or b!952721 bm!41615) bm!41614))

(assert (= (and d!115499 res!638296) b!952711))

(assert (= (and d!115499 c!99629) b!952720))

(assert (= (and d!115499 (not c!99629)) b!952710))

(assert (= (and d!115499 res!638299) b!952724))

(assert (= (and b!952724 res!638297) b!952707))

(assert (= (and b!952724 (not res!638295)) b!952719))

(assert (= (and b!952719 res!638292) b!952717))

(assert (= (and b!952724 res!638300) b!952716))

(assert (= (and b!952716 c!99632) b!952715))

(assert (= (and b!952716 (not c!99632)) b!952718))

(assert (= (and b!952715 res!638293) b!952723))

(assert (= (or b!952715 b!952718) bm!41617))

(assert (= (and b!952716 res!638294) b!952706))

(assert (= (and b!952706 c!99631) b!952725))

(assert (= (and b!952706 (not c!99631)) b!952713))

(assert (= (and b!952725 res!638298) b!952705))

(assert (= (or b!952725 b!952713) bm!41619))

(declare-fun b_lambda!14449 () Bool)

(assert (=> (not b_lambda!14449) (not b!952717)))

(declare-fun t!27865 () Bool)

(declare-fun tb!6217 () Bool)

(assert (=> (and b!952577 (= (defaultEntry!5829 thiss!1141) (defaultEntry!5829 thiss!1141)) t!27865) tb!6217))

(declare-fun result!12357 () Bool)

(assert (=> tb!6217 (= result!12357 tp_is_empty!20805)))

(assert (=> b!952717 t!27865))

(declare-fun b_and!29801 () Bool)

(assert (= b_and!29797 (and (=> t!27865 result!12357) b_and!29801)))

(assert (=> b!952720 m!884851))

(declare-fun m!884889 () Bool)

(assert (=> b!952720 m!884889))

(declare-fun m!884891 () Bool)

(assert (=> b!952720 m!884891))

(declare-fun m!884893 () Bool)

(assert (=> b!952720 m!884893))

(declare-fun m!884895 () Bool)

(assert (=> b!952720 m!884895))

(assert (=> b!952720 m!884891))

(declare-fun m!884897 () Bool)

(assert (=> b!952720 m!884897))

(declare-fun m!884899 () Bool)

(assert (=> b!952720 m!884899))

(declare-fun m!884901 () Bool)

(assert (=> b!952720 m!884901))

(assert (=> b!952720 m!884901))

(declare-fun m!884903 () Bool)

(assert (=> b!952720 m!884903))

(declare-fun m!884905 () Bool)

(assert (=> b!952720 m!884905))

(declare-fun m!884907 () Bool)

(assert (=> b!952720 m!884907))

(declare-fun m!884909 () Bool)

(assert (=> b!952720 m!884909))

(declare-fun m!884911 () Bool)

(assert (=> b!952720 m!884911))

(declare-fun m!884913 () Bool)

(assert (=> b!952720 m!884913))

(declare-fun m!884915 () Bool)

(assert (=> b!952720 m!884915))

(declare-fun m!884917 () Bool)

(assert (=> b!952720 m!884917))

(assert (=> b!952720 m!884907))

(declare-fun m!884919 () Bool)

(assert (=> b!952720 m!884919))

(assert (=> b!952720 m!884897))

(declare-fun m!884921 () Bool)

(assert (=> b!952723 m!884921))

(declare-fun m!884923 () Bool)

(assert (=> bm!41617 m!884923))

(declare-fun m!884925 () Bool)

(assert (=> b!952717 m!884925))

(assert (=> b!952717 m!884851))

(declare-fun m!884927 () Bool)

(assert (=> b!952717 m!884927))

(assert (=> b!952717 m!884851))

(declare-fun m!884929 () Bool)

(assert (=> b!952717 m!884929))

(assert (=> b!952717 m!884925))

(assert (=> b!952717 m!884927))

(declare-fun m!884931 () Bool)

(assert (=> b!952717 m!884931))

(assert (=> b!952719 m!884851))

(assert (=> b!952719 m!884851))

(declare-fun m!884933 () Bool)

(assert (=> b!952719 m!884933))

(declare-fun m!884935 () Bool)

(assert (=> b!952721 m!884935))

(assert (=> b!952707 m!884851))

(assert (=> b!952707 m!884851))

(declare-fun m!884937 () Bool)

(assert (=> b!952707 m!884937))

(declare-fun m!884939 () Bool)

(assert (=> b!952705 m!884939))

(declare-fun m!884941 () Bool)

(assert (=> bm!41619 m!884941))

(assert (=> d!115499 m!884813))

(assert (=> bm!41620 m!884913))

(assert (=> b!952711 m!884851))

(assert (=> b!952711 m!884851))

(assert (=> b!952711 m!884937))

(declare-fun m!884943 () Bool)

(assert (=> bm!41614 m!884943))

(assert (=> b!952568 d!115499))

(declare-fun d!115501 () Bool)

(assert (=> d!115501 (= (array_inv!21458 (_keys!10781 thiss!1141)) (bvsge (size!28202 (_keys!10781 thiss!1141)) #b00000000000000000000000000000000))))

(assert (=> b!952577 d!115501))

(declare-fun d!115503 () Bool)

(assert (=> d!115503 (= (array_inv!21459 (_values!5852 thiss!1141)) (bvsge (size!28201 (_values!5852 thiss!1141)) #b00000000000000000000000000000000))))

(assert (=> b!952577 d!115503))

(declare-fun b!952740 () Bool)

(declare-fun c!99640 () Bool)

(declare-fun lt!429371 () (_ BitVec 64))

(assert (=> b!952740 (= c!99640 (= lt!429371 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!536614 () SeekEntryResult!9150)

(declare-fun e!536615 () SeekEntryResult!9150)

(assert (=> b!952740 (= e!536614 e!536615)))

(declare-fun b!952741 () Bool)

(declare-fun lt!429369 () SeekEntryResult!9150)

(assert (=> b!952741 (= e!536614 (Found!9150 (index!38972 lt!429369)))))

(declare-fun b!952742 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!57670 (_ BitVec 32)) SeekEntryResult!9150)

(assert (=> b!952742 (= e!536615 (seekKeyOrZeroReturnVacant!0 (x!81939 lt!429369) (index!38972 lt!429369) (index!38972 lt!429369) key!756 (_keys!10781 thiss!1141) (mask!27676 thiss!1141)))))

(declare-fun d!115505 () Bool)

(declare-fun lt!429370 () SeekEntryResult!9150)

(assert (=> d!115505 (and (or ((_ is Undefined!9150) lt!429370) (not ((_ is Found!9150) lt!429370)) (and (bvsge (index!38971 lt!429370) #b00000000000000000000000000000000) (bvslt (index!38971 lt!429370) (size!28202 (_keys!10781 thiss!1141))))) (or ((_ is Undefined!9150) lt!429370) ((_ is Found!9150) lt!429370) (not ((_ is MissingZero!9150) lt!429370)) (and (bvsge (index!38970 lt!429370) #b00000000000000000000000000000000) (bvslt (index!38970 lt!429370) (size!28202 (_keys!10781 thiss!1141))))) (or ((_ is Undefined!9150) lt!429370) ((_ is Found!9150) lt!429370) ((_ is MissingZero!9150) lt!429370) (not ((_ is MissingVacant!9150) lt!429370)) (and (bvsge (index!38973 lt!429370) #b00000000000000000000000000000000) (bvslt (index!38973 lt!429370) (size!28202 (_keys!10781 thiss!1141))))) (or ((_ is Undefined!9150) lt!429370) (ite ((_ is Found!9150) lt!429370) (= (select (arr!27722 (_keys!10781 thiss!1141)) (index!38971 lt!429370)) key!756) (ite ((_ is MissingZero!9150) lt!429370) (= (select (arr!27722 (_keys!10781 thiss!1141)) (index!38970 lt!429370)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!9150) lt!429370) (= (select (arr!27722 (_keys!10781 thiss!1141)) (index!38973 lt!429370)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!536613 () SeekEntryResult!9150)

(assert (=> d!115505 (= lt!429370 e!536613)))

(declare-fun c!99639 () Bool)

(assert (=> d!115505 (= c!99639 (and ((_ is Intermediate!9150) lt!429369) (undefined!9962 lt!429369)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!57670 (_ BitVec 32)) SeekEntryResult!9150)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!115505 (= lt!429369 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 key!756 (mask!27676 thiss!1141)) key!756 (_keys!10781 thiss!1141) (mask!27676 thiss!1141)))))

(assert (=> d!115505 (validMask!0 (mask!27676 thiss!1141))))

(assert (=> d!115505 (= (seekEntryOrOpen!0 key!756 (_keys!10781 thiss!1141) (mask!27676 thiss!1141)) lt!429370)))

(declare-fun b!952743 () Bool)

(assert (=> b!952743 (= e!536615 (MissingZero!9150 (index!38972 lt!429369)))))

(declare-fun b!952744 () Bool)

(assert (=> b!952744 (= e!536613 e!536614)))

(assert (=> b!952744 (= lt!429371 (select (arr!27722 (_keys!10781 thiss!1141)) (index!38972 lt!429369)))))

(declare-fun c!99641 () Bool)

(assert (=> b!952744 (= c!99641 (= lt!429371 key!756))))

(declare-fun b!952745 () Bool)

(assert (=> b!952745 (= e!536613 Undefined!9150)))

(assert (= (and d!115505 c!99639) b!952745))

(assert (= (and d!115505 (not c!99639)) b!952744))

(assert (= (and b!952744 c!99641) b!952741))

(assert (= (and b!952744 (not c!99641)) b!952740))

(assert (= (and b!952740 c!99640) b!952743))

(assert (= (and b!952740 (not c!99640)) b!952742))

(declare-fun m!884945 () Bool)

(assert (=> b!952742 m!884945))

(declare-fun m!884947 () Bool)

(assert (=> d!115505 m!884947))

(declare-fun m!884949 () Bool)

(assert (=> d!115505 m!884949))

(assert (=> d!115505 m!884947))

(declare-fun m!884951 () Bool)

(assert (=> d!115505 m!884951))

(declare-fun m!884953 () Bool)

(assert (=> d!115505 m!884953))

(declare-fun m!884955 () Bool)

(assert (=> d!115505 m!884955))

(assert (=> d!115505 m!884813))

(declare-fun m!884957 () Bool)

(assert (=> b!952744 m!884957))

(assert (=> b!952569 d!115505))

(declare-fun b!952758 () Bool)

(declare-fun e!536622 () SeekEntryResult!9150)

(declare-fun lt!429381 () SeekEntryResult!9150)

(assert (=> b!952758 (= e!536622 (Found!9150 (index!38972 lt!429381)))))

(declare-fun b!952759 () Bool)

(declare-fun e!536623 () SeekEntryResult!9150)

(assert (=> b!952759 (= e!536623 (MissingZero!9150 (index!38972 lt!429381)))))

(declare-fun b!952760 () Bool)

(declare-fun e!536624 () SeekEntryResult!9150)

(assert (=> b!952760 (= e!536624 e!536622)))

(declare-fun lt!429382 () (_ BitVec 64))

(assert (=> b!952760 (= lt!429382 (select (arr!27722 (_keys!10781 thiss!1141)) (index!38972 lt!429381)))))

(declare-fun c!99648 () Bool)

(assert (=> b!952760 (= c!99648 (= lt!429382 key!756))))

(declare-fun b!952762 () Bool)

(assert (=> b!952762 (= e!536624 Undefined!9150)))

(declare-fun b!952763 () Bool)

(declare-fun c!99649 () Bool)

(assert (=> b!952763 (= c!99649 (= lt!429382 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!952763 (= e!536622 e!536623)))

(declare-fun d!115507 () Bool)

(declare-fun lt!429380 () SeekEntryResult!9150)

(assert (=> d!115507 (and (or ((_ is MissingVacant!9150) lt!429380) (not ((_ is Found!9150) lt!429380)) (and (bvsge (index!38971 lt!429380) #b00000000000000000000000000000000) (bvslt (index!38971 lt!429380) (size!28202 (_keys!10781 thiss!1141))))) (not ((_ is MissingVacant!9150) lt!429380)) (or (not ((_ is Found!9150) lt!429380)) (= (select (arr!27722 (_keys!10781 thiss!1141)) (index!38971 lt!429380)) key!756)))))

(assert (=> d!115507 (= lt!429380 e!536624)))

(declare-fun c!99650 () Bool)

(assert (=> d!115507 (= c!99650 (and ((_ is Intermediate!9150) lt!429381) (undefined!9962 lt!429381)))))

(assert (=> d!115507 (= lt!429381 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 key!756 (mask!27676 thiss!1141)) key!756 (_keys!10781 thiss!1141) (mask!27676 thiss!1141)))))

(assert (=> d!115507 (validMask!0 (mask!27676 thiss!1141))))

(assert (=> d!115507 (= (seekEntry!0 key!756 (_keys!10781 thiss!1141) (mask!27676 thiss!1141)) lt!429380)))

(declare-fun b!952761 () Bool)

(declare-fun lt!429383 () SeekEntryResult!9150)

(assert (=> b!952761 (= e!536623 (ite ((_ is MissingVacant!9150) lt!429383) (MissingZero!9150 (index!38973 lt!429383)) lt!429383))))

(assert (=> b!952761 (= lt!429383 (seekKeyOrZeroReturnVacant!0 (x!81939 lt!429381) (index!38972 lt!429381) (index!38972 lt!429381) key!756 (_keys!10781 thiss!1141) (mask!27676 thiss!1141)))))

(assert (= (and d!115507 c!99650) b!952762))

(assert (= (and d!115507 (not c!99650)) b!952760))

(assert (= (and b!952760 c!99648) b!952758))

(assert (= (and b!952760 (not c!99648)) b!952763))

(assert (= (and b!952763 c!99649) b!952759))

(assert (= (and b!952763 (not c!99649)) b!952761))

(declare-fun m!884959 () Bool)

(assert (=> b!952760 m!884959))

(declare-fun m!884961 () Bool)

(assert (=> d!115507 m!884961))

(assert (=> d!115507 m!884947))

(assert (=> d!115507 m!884947))

(assert (=> d!115507 m!884951))

(assert (=> d!115507 m!884813))

(declare-fun m!884963 () Bool)

(assert (=> b!952761 m!884963))

(assert (=> b!952567 d!115507))

(declare-fun b!952764 () Bool)

(declare-fun e!536627 () Bool)

(declare-fun e!536625 () Bool)

(assert (=> b!952764 (= e!536627 e!536625)))

(declare-fun c!99651 () Bool)

(assert (=> b!952764 (= c!99651 (validKeyInArray!0 (select (arr!27722 (_keys!10781 thiss!1141)) #b00000000000000000000000000000000)))))

(declare-fun bm!41621 () Bool)

(declare-fun call!41624 () Bool)

(assert (=> bm!41621 (= call!41624 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (_keys!10781 thiss!1141) (mask!27676 thiss!1141)))))

(declare-fun d!115509 () Bool)

(declare-fun res!638301 () Bool)

(assert (=> d!115509 (=> res!638301 e!536627)))

(assert (=> d!115509 (= res!638301 (bvsge #b00000000000000000000000000000000 (size!28202 (_keys!10781 thiss!1141))))))

(assert (=> d!115509 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!10781 thiss!1141) (mask!27676 thiss!1141)) e!536627)))

(declare-fun b!952765 () Bool)

(assert (=> b!952765 (= e!536625 call!41624)))

(declare-fun b!952766 () Bool)

(declare-fun e!536626 () Bool)

(assert (=> b!952766 (= e!536625 e!536626)))

(declare-fun lt!429385 () (_ BitVec 64))

(assert (=> b!952766 (= lt!429385 (select (arr!27722 (_keys!10781 thiss!1141)) #b00000000000000000000000000000000))))

(declare-fun lt!429386 () Unit!32046)

(assert (=> b!952766 (= lt!429386 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!10781 thiss!1141) lt!429385 #b00000000000000000000000000000000))))

(assert (=> b!952766 (arrayContainsKey!0 (_keys!10781 thiss!1141) lt!429385 #b00000000000000000000000000000000)))

(declare-fun lt!429384 () Unit!32046)

(assert (=> b!952766 (= lt!429384 lt!429386)))

(declare-fun res!638302 () Bool)

(assert (=> b!952766 (= res!638302 (= (seekEntryOrOpen!0 (select (arr!27722 (_keys!10781 thiss!1141)) #b00000000000000000000000000000000) (_keys!10781 thiss!1141) (mask!27676 thiss!1141)) (Found!9150 #b00000000000000000000000000000000)))))

(assert (=> b!952766 (=> (not res!638302) (not e!536626))))

(declare-fun b!952767 () Bool)

(assert (=> b!952767 (= e!536626 call!41624)))

(assert (= (and d!115509 (not res!638301)) b!952764))

(assert (= (and b!952764 c!99651) b!952766))

(assert (= (and b!952764 (not c!99651)) b!952765))

(assert (= (and b!952766 res!638302) b!952767))

(assert (= (or b!952767 b!952765) bm!41621))

(assert (=> b!952764 m!884851))

(assert (=> b!952764 m!884851))

(assert (=> b!952764 m!884937))

(declare-fun m!884965 () Bool)

(assert (=> bm!41621 m!884965))

(assert (=> b!952766 m!884851))

(declare-fun m!884967 () Bool)

(assert (=> b!952766 m!884967))

(declare-fun m!884969 () Bool)

(assert (=> b!952766 m!884969))

(assert (=> b!952766 m!884851))

(declare-fun m!884971 () Bool)

(assert (=> b!952766 m!884971))

(assert (=> b!952576 d!115509))

(declare-fun d!115511 () Bool)

(assert (=> d!115511 (= (validKeyInArray!0 key!756) (and (not (= key!756 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!756 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!952571 d!115511))

(declare-fun b!952775 () Bool)

(declare-fun e!536632 () Bool)

(assert (=> b!952775 (= e!536632 tp_is_empty!20805)))

(declare-fun b!952774 () Bool)

(declare-fun e!536633 () Bool)

(assert (=> b!952774 (= e!536633 tp_is_empty!20805)))

(declare-fun mapNonEmpty!33154 () Bool)

(declare-fun mapRes!33154 () Bool)

(declare-fun tp!63526 () Bool)

(assert (=> mapNonEmpty!33154 (= mapRes!33154 (and tp!63526 e!536633))))

(declare-fun mapKey!33154 () (_ BitVec 32))

(declare-fun mapRest!33154 () (Array (_ BitVec 32) ValueCell!9921))

(declare-fun mapValue!33154 () ValueCell!9921)

(assert (=> mapNonEmpty!33154 (= mapRest!33148 (store mapRest!33154 mapKey!33154 mapValue!33154))))

(declare-fun mapIsEmpty!33154 () Bool)

(assert (=> mapIsEmpty!33154 mapRes!33154))

(declare-fun condMapEmpty!33154 () Bool)

(declare-fun mapDefault!33154 () ValueCell!9921)

(assert (=> mapNonEmpty!33148 (= condMapEmpty!33154 (= mapRest!33148 ((as const (Array (_ BitVec 32) ValueCell!9921)) mapDefault!33154)))))

(assert (=> mapNonEmpty!33148 (= tp!63516 (and e!536632 mapRes!33154))))

(assert (= (and mapNonEmpty!33148 condMapEmpty!33154) mapIsEmpty!33154))

(assert (= (and mapNonEmpty!33148 (not condMapEmpty!33154)) mapNonEmpty!33154))

(assert (= (and mapNonEmpty!33154 ((_ is ValueCellFull!9921) mapValue!33154)) b!952774))

(assert (= (and mapNonEmpty!33148 ((_ is ValueCellFull!9921) mapDefault!33154)) b!952775))

(declare-fun m!884973 () Bool)

(assert (=> mapNonEmpty!33154 m!884973))

(declare-fun b_lambda!14451 () Bool)

(assert (= b_lambda!14449 (or (and b!952577 b_free!18297) b_lambda!14451)))

(check-sat (not d!115499) (not d!115505) b_and!29801 (not b!952766) (not bm!41620) (not d!115507) (not d!115485) tp_is_empty!20805 (not b!952662) (not b!952625) (not mapNonEmpty!33154) (not d!115495) (not b!952742) (not b!952707) (not b!952705) (not b_next!18297) (not b!952723) (not b!952761) (not bm!41599) (not b!952632) (not b!952653) (not bm!41617) (not b!952719) (not b!952721) (not d!115489) (not b_lambda!14451) (not b!952641) (not b!952764) (not b!952711) (not d!115497) (not b!952717) (not b!952651) (not bm!41614) (not bm!41621) (not b!952620) (not bm!41619) (not b!952652) (not b!952643) (not b!952660) (not b!952720))
(check-sat b_and!29801 (not b_next!18297))
