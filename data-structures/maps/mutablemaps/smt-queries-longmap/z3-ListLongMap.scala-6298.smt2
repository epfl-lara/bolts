; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!80568 () Bool)

(assert start!80568)

(declare-fun b!945517 () Bool)

(declare-fun b_free!18111 () Bool)

(declare-fun b_next!18111 () Bool)

(assert (=> b!945517 (= b_free!18111 (not b_next!18111))))

(declare-fun tp!62858 () Bool)

(declare-fun b_and!29551 () Bool)

(assert (=> b!945517 (= tp!62858 b_and!29551)))

(declare-fun b!945512 () Bool)

(declare-fun e!531892 () Bool)

(declare-fun tp_is_empty!20619 () Bool)

(assert (=> b!945512 (= e!531892 tp_is_empty!20619)))

(declare-fun b!945513 () Bool)

(declare-fun res!635071 () Bool)

(declare-fun e!531887 () Bool)

(assert (=> b!945513 (=> (not res!635071) (not e!531887))))

(declare-fun key!756 () (_ BitVec 64))

(assert (=> b!945513 (= res!635071 (and (not (= key!756 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!756 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun mapNonEmpty!32768 () Bool)

(declare-fun mapRes!32768 () Bool)

(declare-fun tp!62857 () Bool)

(declare-fun e!531889 () Bool)

(assert (=> mapNonEmpty!32768 (= mapRes!32768 (and tp!62857 e!531889))))

(declare-fun mapKey!32768 () (_ BitVec 32))

(declare-datatypes ((V!32457 0))(
  ( (V!32458 (val!10360 Int)) )
))
(declare-datatypes ((ValueCell!9828 0))(
  ( (ValueCellFull!9828 (v!12894 V!32457)) (EmptyCell!9828) )
))
(declare-fun mapRest!32768 () (Array (_ BitVec 32) ValueCell!9828))

(declare-fun mapValue!32768 () ValueCell!9828)

(declare-datatypes ((array!57236 0))(
  ( (array!57237 (arr!27535 (Array (_ BitVec 32) ValueCell!9828)) (size!28004 (_ BitVec 32))) )
))
(declare-datatypes ((array!57238 0))(
  ( (array!57239 (arr!27536 (Array (_ BitVec 32) (_ BitVec 64))) (size!28005 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4806 0))(
  ( (LongMapFixedSize!4807 (defaultEntry!5700 Int) (mask!27367 (_ BitVec 32)) (extraKeys!5432 (_ BitVec 32)) (zeroValue!5536 V!32457) (minValue!5536 V!32457) (_size!2458 (_ BitVec 32)) (_keys!10578 array!57238) (_values!5723 array!57236) (_vacant!2458 (_ BitVec 32))) )
))
(declare-fun thiss!1141 () LongMapFixedSize!4806)

(assert (=> mapNonEmpty!32768 (= (arr!27535 (_values!5723 thiss!1141)) (store mapRest!32768 mapKey!32768 mapValue!32768))))

(declare-fun res!635070 () Bool)

(assert (=> start!80568 (=> (not res!635070) (not e!531887))))

(declare-fun valid!1812 (LongMapFixedSize!4806) Bool)

(assert (=> start!80568 (= res!635070 (valid!1812 thiss!1141))))

(assert (=> start!80568 e!531887))

(declare-fun e!531890 () Bool)

(assert (=> start!80568 e!531890))

(assert (=> start!80568 true))

(declare-fun b!945514 () Bool)

(assert (=> b!945514 (= e!531889 tp_is_empty!20619)))

(declare-fun b!945515 () Bool)

(declare-fun e!531891 () Bool)

(assert (=> b!945515 (= e!531891 (and e!531892 mapRes!32768))))

(declare-fun condMapEmpty!32768 () Bool)

(declare-fun mapDefault!32768 () ValueCell!9828)

(assert (=> b!945515 (= condMapEmpty!32768 (= (arr!27535 (_values!5723 thiss!1141)) ((as const (Array (_ BitVec 32) ValueCell!9828)) mapDefault!32768)))))

(declare-fun b!945516 () Bool)

(declare-datatypes ((SeekEntryResult!9082 0))(
  ( (MissingZero!9082 (index!38698 (_ BitVec 32))) (Found!9082 (index!38699 (_ BitVec 32))) (Intermediate!9082 (undefined!9894 Bool) (index!38700 (_ BitVec 32)) (x!81254 (_ BitVec 32))) (Undefined!9082) (MissingVacant!9082 (index!38701 (_ BitVec 32))) )
))
(declare-fun lt!426017 () SeekEntryResult!9082)

(get-info :version)

(assert (=> b!945516 (= e!531887 (and ((_ is Found!9082) lt!426017) (bvsge (index!38699 lt!426017) #b00000000000000000000000000000000) (bvslt (index!38699 lt!426017) (size!28005 (_keys!10578 thiss!1141))) (bvsge (size!28005 (_keys!10578 thiss!1141)) #b01111111111111111111111111111111)))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!57238 (_ BitVec 32)) SeekEntryResult!9082)

(assert (=> b!945516 (= lt!426017 (seekEntry!0 key!756 (_keys!10578 thiss!1141) (mask!27367 thiss!1141)))))

(declare-fun array_inv!21338 (array!57238) Bool)

(declare-fun array_inv!21339 (array!57236) Bool)

(assert (=> b!945517 (= e!531890 (and tp!62858 tp_is_empty!20619 (array_inv!21338 (_keys!10578 thiss!1141)) (array_inv!21339 (_values!5723 thiss!1141)) e!531891))))

(declare-fun mapIsEmpty!32768 () Bool)

(assert (=> mapIsEmpty!32768 mapRes!32768))

(assert (= (and start!80568 res!635070) b!945513))

(assert (= (and b!945513 res!635071) b!945516))

(assert (= (and b!945515 condMapEmpty!32768) mapIsEmpty!32768))

(assert (= (and b!945515 (not condMapEmpty!32768)) mapNonEmpty!32768))

(assert (= (and mapNonEmpty!32768 ((_ is ValueCellFull!9828) mapValue!32768)) b!945514))

(assert (= (and b!945515 ((_ is ValueCellFull!9828) mapDefault!32768)) b!945512))

(assert (= b!945517 b!945515))

(assert (= start!80568 b!945517))

(declare-fun m!879337 () Bool)

(assert (=> mapNonEmpty!32768 m!879337))

(declare-fun m!879339 () Bool)

(assert (=> start!80568 m!879339))

(declare-fun m!879341 () Bool)

(assert (=> b!945516 m!879341))

(declare-fun m!879343 () Bool)

(assert (=> b!945517 m!879343))

(declare-fun m!879345 () Bool)

(assert (=> b!945517 m!879345))

(check-sat (not b_next!18111) (not mapNonEmpty!32768) b_and!29551 (not start!80568) (not b!945517) tp_is_empty!20619 (not b!945516))
(check-sat b_and!29551 (not b_next!18111))
(get-model)

(declare-fun d!114347 () Bool)

(declare-fun lt!426029 () SeekEntryResult!9082)

(assert (=> d!114347 (and (or ((_ is MissingVacant!9082) lt!426029) (not ((_ is Found!9082) lt!426029)) (and (bvsge (index!38699 lt!426029) #b00000000000000000000000000000000) (bvslt (index!38699 lt!426029) (size!28005 (_keys!10578 thiss!1141))))) (not ((_ is MissingVacant!9082) lt!426029)) (or (not ((_ is Found!9082) lt!426029)) (= (select (arr!27536 (_keys!10578 thiss!1141)) (index!38699 lt!426029)) key!756)))))

(declare-fun e!531917 () SeekEntryResult!9082)

(assert (=> d!114347 (= lt!426029 e!531917)))

(declare-fun c!98363 () Bool)

(declare-fun lt!426031 () SeekEntryResult!9082)

(assert (=> d!114347 (= c!98363 (and ((_ is Intermediate!9082) lt!426031) (undefined!9894 lt!426031)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!57238 (_ BitVec 32)) SeekEntryResult!9082)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!114347 (= lt!426031 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 key!756 (mask!27367 thiss!1141)) key!756 (_keys!10578 thiss!1141) (mask!27367 thiss!1141)))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> d!114347 (validMask!0 (mask!27367 thiss!1141))))

(assert (=> d!114347 (= (seekEntry!0 key!756 (_keys!10578 thiss!1141) (mask!27367 thiss!1141)) lt!426029)))

(declare-fun b!945548 () Bool)

(assert (=> b!945548 (= e!531917 Undefined!9082)))

(declare-fun b!945549 () Bool)

(declare-fun e!531919 () SeekEntryResult!9082)

(assert (=> b!945549 (= e!531919 (Found!9082 (index!38700 lt!426031)))))

(declare-fun b!945550 () Bool)

(declare-fun c!98365 () Bool)

(declare-fun lt!426032 () (_ BitVec 64))

(assert (=> b!945550 (= c!98365 (= lt!426032 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!531918 () SeekEntryResult!9082)

(assert (=> b!945550 (= e!531919 e!531918)))

(declare-fun b!945551 () Bool)

(declare-fun lt!426030 () SeekEntryResult!9082)

(assert (=> b!945551 (= e!531918 (ite ((_ is MissingVacant!9082) lt!426030) (MissingZero!9082 (index!38701 lt!426030)) lt!426030))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!57238 (_ BitVec 32)) SeekEntryResult!9082)

(assert (=> b!945551 (= lt!426030 (seekKeyOrZeroReturnVacant!0 (x!81254 lt!426031) (index!38700 lt!426031) (index!38700 lt!426031) key!756 (_keys!10578 thiss!1141) (mask!27367 thiss!1141)))))

(declare-fun b!945552 () Bool)

(assert (=> b!945552 (= e!531918 (MissingZero!9082 (index!38700 lt!426031)))))

(declare-fun b!945553 () Bool)

(assert (=> b!945553 (= e!531917 e!531919)))

(assert (=> b!945553 (= lt!426032 (select (arr!27536 (_keys!10578 thiss!1141)) (index!38700 lt!426031)))))

(declare-fun c!98364 () Bool)

(assert (=> b!945553 (= c!98364 (= lt!426032 key!756))))

(assert (= (and d!114347 c!98363) b!945548))

(assert (= (and d!114347 (not c!98363)) b!945553))

(assert (= (and b!945553 c!98364) b!945549))

(assert (= (and b!945553 (not c!98364)) b!945550))

(assert (= (and b!945550 c!98365) b!945552))

(assert (= (and b!945550 (not c!98365)) b!945551))

(declare-fun m!879357 () Bool)

(assert (=> d!114347 m!879357))

(declare-fun m!879359 () Bool)

(assert (=> d!114347 m!879359))

(assert (=> d!114347 m!879359))

(declare-fun m!879361 () Bool)

(assert (=> d!114347 m!879361))

(declare-fun m!879363 () Bool)

(assert (=> d!114347 m!879363))

(declare-fun m!879365 () Bool)

(assert (=> b!945551 m!879365))

(declare-fun m!879367 () Bool)

(assert (=> b!945553 m!879367))

(assert (=> b!945516 d!114347))

(declare-fun d!114349 () Bool)

(assert (=> d!114349 (= (array_inv!21338 (_keys!10578 thiss!1141)) (bvsge (size!28005 (_keys!10578 thiss!1141)) #b00000000000000000000000000000000))))

(assert (=> b!945517 d!114349))

(declare-fun d!114351 () Bool)

(assert (=> d!114351 (= (array_inv!21339 (_values!5723 thiss!1141)) (bvsge (size!28004 (_values!5723 thiss!1141)) #b00000000000000000000000000000000))))

(assert (=> b!945517 d!114351))

(declare-fun d!114353 () Bool)

(declare-fun res!635084 () Bool)

(declare-fun e!531922 () Bool)

(assert (=> d!114353 (=> (not res!635084) (not e!531922))))

(declare-fun simpleValid!352 (LongMapFixedSize!4806) Bool)

(assert (=> d!114353 (= res!635084 (simpleValid!352 thiss!1141))))

(assert (=> d!114353 (= (valid!1812 thiss!1141) e!531922)))

(declare-fun b!945560 () Bool)

(declare-fun res!635085 () Bool)

(assert (=> b!945560 (=> (not res!635085) (not e!531922))))

(declare-fun arrayCountValidKeys!0 (array!57238 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!945560 (= res!635085 (= (arrayCountValidKeys!0 (_keys!10578 thiss!1141) #b00000000000000000000000000000000 (size!28005 (_keys!10578 thiss!1141))) (_size!2458 thiss!1141)))))

(declare-fun b!945561 () Bool)

(declare-fun res!635086 () Bool)

(assert (=> b!945561 (=> (not res!635086) (not e!531922))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!57238 (_ BitVec 32)) Bool)

(assert (=> b!945561 (= res!635086 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!10578 thiss!1141) (mask!27367 thiss!1141)))))

(declare-fun b!945562 () Bool)

(declare-datatypes ((List!19422 0))(
  ( (Nil!19419) (Cons!19418 (h!20569 (_ BitVec 64)) (t!27751 List!19422)) )
))
(declare-fun arrayNoDuplicates!0 (array!57238 (_ BitVec 32) List!19422) Bool)

(assert (=> b!945562 (= e!531922 (arrayNoDuplicates!0 (_keys!10578 thiss!1141) #b00000000000000000000000000000000 Nil!19419))))

(assert (= (and d!114353 res!635084) b!945560))

(assert (= (and b!945560 res!635085) b!945561))

(assert (= (and b!945561 res!635086) b!945562))

(declare-fun m!879369 () Bool)

(assert (=> d!114353 m!879369))

(declare-fun m!879371 () Bool)

(assert (=> b!945560 m!879371))

(declare-fun m!879373 () Bool)

(assert (=> b!945561 m!879373))

(declare-fun m!879375 () Bool)

(assert (=> b!945562 m!879375))

(assert (=> start!80568 d!114353))

(declare-fun b!945569 () Bool)

(declare-fun e!531928 () Bool)

(assert (=> b!945569 (= e!531928 tp_is_empty!20619)))

(declare-fun mapNonEmpty!32774 () Bool)

(declare-fun mapRes!32774 () Bool)

(declare-fun tp!62867 () Bool)

(assert (=> mapNonEmpty!32774 (= mapRes!32774 (and tp!62867 e!531928))))

(declare-fun mapKey!32774 () (_ BitVec 32))

(declare-fun mapRest!32774 () (Array (_ BitVec 32) ValueCell!9828))

(declare-fun mapValue!32774 () ValueCell!9828)

(assert (=> mapNonEmpty!32774 (= mapRest!32768 (store mapRest!32774 mapKey!32774 mapValue!32774))))

(declare-fun condMapEmpty!32774 () Bool)

(declare-fun mapDefault!32774 () ValueCell!9828)

(assert (=> mapNonEmpty!32768 (= condMapEmpty!32774 (= mapRest!32768 ((as const (Array (_ BitVec 32) ValueCell!9828)) mapDefault!32774)))))

(declare-fun e!531927 () Bool)

(assert (=> mapNonEmpty!32768 (= tp!62857 (and e!531927 mapRes!32774))))

(declare-fun mapIsEmpty!32774 () Bool)

(assert (=> mapIsEmpty!32774 mapRes!32774))

(declare-fun b!945570 () Bool)

(assert (=> b!945570 (= e!531927 tp_is_empty!20619)))

(assert (= (and mapNonEmpty!32768 condMapEmpty!32774) mapIsEmpty!32774))

(assert (= (and mapNonEmpty!32768 (not condMapEmpty!32774)) mapNonEmpty!32774))

(assert (= (and mapNonEmpty!32774 ((_ is ValueCellFull!9828) mapValue!32774)) b!945569))

(assert (= (and mapNonEmpty!32768 ((_ is ValueCellFull!9828) mapDefault!32774)) b!945570))

(declare-fun m!879377 () Bool)

(assert (=> mapNonEmpty!32774 m!879377))

(check-sat (not b!945561) b_and!29551 tp_is_empty!20619 (not d!114353) (not mapNonEmpty!32774) (not b!945560) (not b!945551) (not b!945562) (not b_next!18111) (not d!114347))
(check-sat b_and!29551 (not b_next!18111))
(get-model)

(declare-fun b!945589 () Bool)

(declare-fun e!531942 () Bool)

(declare-fun lt!426038 () SeekEntryResult!9082)

(assert (=> b!945589 (= e!531942 (bvsge (x!81254 lt!426038) #b01111111111111111111111111111110))))

(declare-fun b!945590 () Bool)

(declare-fun e!531941 () SeekEntryResult!9082)

(declare-fun e!531939 () SeekEntryResult!9082)

(assert (=> b!945590 (= e!531941 e!531939)))

(declare-fun c!98372 () Bool)

(declare-fun lt!426037 () (_ BitVec 64))

(assert (=> b!945590 (= c!98372 (or (= lt!426037 key!756) (= (bvadd lt!426037 lt!426037) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!945592 () Bool)

(assert (=> b!945592 (= e!531939 (Intermediate!9082 false (toIndex!0 key!756 (mask!27367 thiss!1141)) #b00000000000000000000000000000000))))

(declare-fun b!945593 () Bool)

(assert (=> b!945593 (and (bvsge (index!38700 lt!426038) #b00000000000000000000000000000000) (bvslt (index!38700 lt!426038) (size!28005 (_keys!10578 thiss!1141))))))

(declare-fun res!635093 () Bool)

(assert (=> b!945593 (= res!635093 (= (select (arr!27536 (_keys!10578 thiss!1141)) (index!38700 lt!426038)) key!756))))

(declare-fun e!531943 () Bool)

(assert (=> b!945593 (=> res!635093 e!531943)))

(declare-fun e!531940 () Bool)

(assert (=> b!945593 (= e!531940 e!531943)))

(declare-fun b!945594 () Bool)

(assert (=> b!945594 (and (bvsge (index!38700 lt!426038) #b00000000000000000000000000000000) (bvslt (index!38700 lt!426038) (size!28005 (_keys!10578 thiss!1141))))))

(assert (=> b!945594 (= e!531943 (= (select (arr!27536 (_keys!10578 thiss!1141)) (index!38700 lt!426038)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!945595 () Bool)

(assert (=> b!945595 (= e!531941 (Intermediate!9082 true (toIndex!0 key!756 (mask!27367 thiss!1141)) #b00000000000000000000000000000000))))

(declare-fun b!945596 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!945596 (= e!531939 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 key!756 (mask!27367 thiss!1141)) #b00000000000000000000000000000000 (mask!27367 thiss!1141)) key!756 (_keys!10578 thiss!1141) (mask!27367 thiss!1141)))))

(declare-fun b!945597 () Bool)

(assert (=> b!945597 (and (bvsge (index!38700 lt!426038) #b00000000000000000000000000000000) (bvslt (index!38700 lt!426038) (size!28005 (_keys!10578 thiss!1141))))))

(declare-fun res!635095 () Bool)

(assert (=> b!945597 (= res!635095 (= (select (arr!27536 (_keys!10578 thiss!1141)) (index!38700 lt!426038)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!945597 (=> res!635095 e!531943)))

(declare-fun b!945591 () Bool)

(assert (=> b!945591 (= e!531942 e!531940)))

(declare-fun res!635094 () Bool)

(assert (=> b!945591 (= res!635094 (and ((_ is Intermediate!9082) lt!426038) (not (undefined!9894 lt!426038)) (bvslt (x!81254 lt!426038) #b01111111111111111111111111111110) (bvsge (x!81254 lt!426038) #b00000000000000000000000000000000) (bvsge (x!81254 lt!426038) #b00000000000000000000000000000000)))))

(assert (=> b!945591 (=> (not res!635094) (not e!531940))))

(declare-fun d!114355 () Bool)

(assert (=> d!114355 e!531942))

(declare-fun c!98374 () Bool)

(assert (=> d!114355 (= c!98374 (and ((_ is Intermediate!9082) lt!426038) (undefined!9894 lt!426038)))))

(assert (=> d!114355 (= lt!426038 e!531941)))

(declare-fun c!98373 () Bool)

(assert (=> d!114355 (= c!98373 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!114355 (= lt!426037 (select (arr!27536 (_keys!10578 thiss!1141)) (toIndex!0 key!756 (mask!27367 thiss!1141))))))

(assert (=> d!114355 (validMask!0 (mask!27367 thiss!1141))))

(assert (=> d!114355 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 key!756 (mask!27367 thiss!1141)) key!756 (_keys!10578 thiss!1141) (mask!27367 thiss!1141)) lt!426038)))

(assert (= (and d!114355 c!98373) b!945595))

(assert (= (and d!114355 (not c!98373)) b!945590))

(assert (= (and b!945590 c!98372) b!945592))

(assert (= (and b!945590 (not c!98372)) b!945596))

(assert (= (and d!114355 c!98374) b!945589))

(assert (= (and d!114355 (not c!98374)) b!945591))

(assert (= (and b!945591 res!635094) b!945593))

(assert (= (and b!945593 (not res!635093)) b!945597))

(assert (= (and b!945597 (not res!635095)) b!945594))

(assert (=> b!945596 m!879359))

(declare-fun m!879379 () Bool)

(assert (=> b!945596 m!879379))

(assert (=> b!945596 m!879379))

(declare-fun m!879381 () Bool)

(assert (=> b!945596 m!879381))

(declare-fun m!879383 () Bool)

(assert (=> b!945594 m!879383))

(assert (=> b!945597 m!879383))

(assert (=> b!945593 m!879383))

(assert (=> d!114355 m!879359))

(declare-fun m!879385 () Bool)

(assert (=> d!114355 m!879385))

(assert (=> d!114355 m!879363))

(assert (=> d!114347 d!114355))

(declare-fun d!114357 () Bool)

(declare-fun lt!426044 () (_ BitVec 32))

(declare-fun lt!426043 () (_ BitVec 32))

(assert (=> d!114357 (= lt!426044 (bvmul (bvxor lt!426043 (bvlshr lt!426043 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!114357 (= lt!426043 ((_ extract 31 0) (bvand (bvxor key!756 (bvlshr key!756 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!114357 (and (bvsge (mask!27367 thiss!1141) #b00000000000000000000000000000000) (let ((res!635096 (let ((h!20570 ((_ extract 31 0) (bvand (bvxor key!756 (bvlshr key!756 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!81271 (bvmul (bvxor h!20570 (bvlshr h!20570 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!81271 (bvlshr x!81271 #b00000000000000000000000000001101)) (mask!27367 thiss!1141)))))) (and (bvslt res!635096 (bvadd (mask!27367 thiss!1141) #b00000000000000000000000000000001)) (bvsge res!635096 #b00000000000000000000000000000000))))))

(assert (=> d!114357 (= (toIndex!0 key!756 (mask!27367 thiss!1141)) (bvand (bvxor lt!426044 (bvlshr lt!426044 #b00000000000000000000000000001101)) (mask!27367 thiss!1141)))))

(assert (=> d!114347 d!114357))

(declare-fun d!114359 () Bool)

(assert (=> d!114359 (= (validMask!0 (mask!27367 thiss!1141)) (and (or (= (mask!27367 thiss!1141) #b00000000000000000000000000000111) (= (mask!27367 thiss!1141) #b00000000000000000000000000001111) (= (mask!27367 thiss!1141) #b00000000000000000000000000011111) (= (mask!27367 thiss!1141) #b00000000000000000000000000111111) (= (mask!27367 thiss!1141) #b00000000000000000000000001111111) (= (mask!27367 thiss!1141) #b00000000000000000000000011111111) (= (mask!27367 thiss!1141) #b00000000000000000000000111111111) (= (mask!27367 thiss!1141) #b00000000000000000000001111111111) (= (mask!27367 thiss!1141) #b00000000000000000000011111111111) (= (mask!27367 thiss!1141) #b00000000000000000000111111111111) (= (mask!27367 thiss!1141) #b00000000000000000001111111111111) (= (mask!27367 thiss!1141) #b00000000000000000011111111111111) (= (mask!27367 thiss!1141) #b00000000000000000111111111111111) (= (mask!27367 thiss!1141) #b00000000000000001111111111111111) (= (mask!27367 thiss!1141) #b00000000000000011111111111111111) (= (mask!27367 thiss!1141) #b00000000000000111111111111111111) (= (mask!27367 thiss!1141) #b00000000000001111111111111111111) (= (mask!27367 thiss!1141) #b00000000000011111111111111111111) (= (mask!27367 thiss!1141) #b00000000000111111111111111111111) (= (mask!27367 thiss!1141) #b00000000001111111111111111111111) (= (mask!27367 thiss!1141) #b00000000011111111111111111111111) (= (mask!27367 thiss!1141) #b00000000111111111111111111111111) (= (mask!27367 thiss!1141) #b00000001111111111111111111111111) (= (mask!27367 thiss!1141) #b00000011111111111111111111111111) (= (mask!27367 thiss!1141) #b00000111111111111111111111111111) (= (mask!27367 thiss!1141) #b00001111111111111111111111111111) (= (mask!27367 thiss!1141) #b00011111111111111111111111111111) (= (mask!27367 thiss!1141) #b00111111111111111111111111111111)) (bvsle (mask!27367 thiss!1141) #b00111111111111111111111111111111)))))

(assert (=> d!114347 d!114359))

(declare-fun b!945606 () Bool)

(declare-fun e!531950 () Bool)

(declare-fun call!41061 () Bool)

(assert (=> b!945606 (= e!531950 call!41061)))

(declare-fun b!945607 () Bool)

(declare-fun e!531952 () Bool)

(assert (=> b!945607 (= e!531952 call!41061)))

(declare-fun b!945608 () Bool)

(declare-fun e!531951 () Bool)

(assert (=> b!945608 (= e!531951 e!531950)))

(declare-fun c!98377 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!945608 (= c!98377 (validKeyInArray!0 (select (arr!27536 (_keys!10578 thiss!1141)) #b00000000000000000000000000000000)))))

(declare-fun bm!41058 () Bool)

(assert (=> bm!41058 (= call!41061 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (_keys!10578 thiss!1141) (mask!27367 thiss!1141)))))

(declare-fun d!114361 () Bool)

(declare-fun res!635101 () Bool)

(assert (=> d!114361 (=> res!635101 e!531951)))

(assert (=> d!114361 (= res!635101 (bvsge #b00000000000000000000000000000000 (size!28005 (_keys!10578 thiss!1141))))))

(assert (=> d!114361 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!10578 thiss!1141) (mask!27367 thiss!1141)) e!531951)))

(declare-fun b!945609 () Bool)

(assert (=> b!945609 (= e!531950 e!531952)))

(declare-fun lt!426051 () (_ BitVec 64))

(assert (=> b!945609 (= lt!426051 (select (arr!27536 (_keys!10578 thiss!1141)) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!31889 0))(
  ( (Unit!31890) )
))
(declare-fun lt!426052 () Unit!31889)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!57238 (_ BitVec 64) (_ BitVec 32)) Unit!31889)

(assert (=> b!945609 (= lt!426052 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!10578 thiss!1141) lt!426051 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!57238 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!945609 (arrayContainsKey!0 (_keys!10578 thiss!1141) lt!426051 #b00000000000000000000000000000000)))

(declare-fun lt!426053 () Unit!31889)

(assert (=> b!945609 (= lt!426053 lt!426052)))

(declare-fun res!635102 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!57238 (_ BitVec 32)) SeekEntryResult!9082)

(assert (=> b!945609 (= res!635102 (= (seekEntryOrOpen!0 (select (arr!27536 (_keys!10578 thiss!1141)) #b00000000000000000000000000000000) (_keys!10578 thiss!1141) (mask!27367 thiss!1141)) (Found!9082 #b00000000000000000000000000000000)))))

(assert (=> b!945609 (=> (not res!635102) (not e!531952))))

(assert (= (and d!114361 (not res!635101)) b!945608))

(assert (= (and b!945608 c!98377) b!945609))

(assert (= (and b!945608 (not c!98377)) b!945606))

(assert (= (and b!945609 res!635102) b!945607))

(assert (= (or b!945607 b!945606) bm!41058))

(declare-fun m!879387 () Bool)

(assert (=> b!945608 m!879387))

(assert (=> b!945608 m!879387))

(declare-fun m!879389 () Bool)

(assert (=> b!945608 m!879389))

(declare-fun m!879391 () Bool)

(assert (=> bm!41058 m!879391))

(assert (=> b!945609 m!879387))

(declare-fun m!879393 () Bool)

(assert (=> b!945609 m!879393))

(declare-fun m!879395 () Bool)

(assert (=> b!945609 m!879395))

(assert (=> b!945609 m!879387))

(declare-fun m!879397 () Bool)

(assert (=> b!945609 m!879397))

(assert (=> b!945561 d!114361))

(declare-fun b!945620 () Bool)

(declare-fun e!531964 () Bool)

(declare-fun call!41064 () Bool)

(assert (=> b!945620 (= e!531964 call!41064)))

(declare-fun b!945621 () Bool)

(declare-fun e!531961 () Bool)

(assert (=> b!945621 (= e!531961 e!531964)))

(declare-fun c!98380 () Bool)

(assert (=> b!945621 (= c!98380 (validKeyInArray!0 (select (arr!27536 (_keys!10578 thiss!1141)) #b00000000000000000000000000000000)))))

(declare-fun d!114363 () Bool)

(declare-fun res!635111 () Bool)

(declare-fun e!531962 () Bool)

(assert (=> d!114363 (=> res!635111 e!531962)))

(assert (=> d!114363 (= res!635111 (bvsge #b00000000000000000000000000000000 (size!28005 (_keys!10578 thiss!1141))))))

(assert (=> d!114363 (= (arrayNoDuplicates!0 (_keys!10578 thiss!1141) #b00000000000000000000000000000000 Nil!19419) e!531962)))

(declare-fun b!945622 () Bool)

(assert (=> b!945622 (= e!531964 call!41064)))

(declare-fun b!945623 () Bool)

(assert (=> b!945623 (= e!531962 e!531961)))

(declare-fun res!635110 () Bool)

(assert (=> b!945623 (=> (not res!635110) (not e!531961))))

(declare-fun e!531963 () Bool)

(assert (=> b!945623 (= res!635110 (not e!531963))))

(declare-fun res!635109 () Bool)

(assert (=> b!945623 (=> (not res!635109) (not e!531963))))

(assert (=> b!945623 (= res!635109 (validKeyInArray!0 (select (arr!27536 (_keys!10578 thiss!1141)) #b00000000000000000000000000000000)))))

(declare-fun bm!41061 () Bool)

(assert (=> bm!41061 (= call!41064 (arrayNoDuplicates!0 (_keys!10578 thiss!1141) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!98380 (Cons!19418 (select (arr!27536 (_keys!10578 thiss!1141)) #b00000000000000000000000000000000) Nil!19419) Nil!19419)))))

(declare-fun b!945624 () Bool)

(declare-fun contains!5200 (List!19422 (_ BitVec 64)) Bool)

(assert (=> b!945624 (= e!531963 (contains!5200 Nil!19419 (select (arr!27536 (_keys!10578 thiss!1141)) #b00000000000000000000000000000000)))))

(assert (= (and d!114363 (not res!635111)) b!945623))

(assert (= (and b!945623 res!635109) b!945624))

(assert (= (and b!945623 res!635110) b!945621))

(assert (= (and b!945621 c!98380) b!945622))

(assert (= (and b!945621 (not c!98380)) b!945620))

(assert (= (or b!945622 b!945620) bm!41061))

(assert (=> b!945621 m!879387))

(assert (=> b!945621 m!879387))

(assert (=> b!945621 m!879389))

(assert (=> b!945623 m!879387))

(assert (=> b!945623 m!879387))

(assert (=> b!945623 m!879389))

(assert (=> bm!41061 m!879387))

(declare-fun m!879399 () Bool)

(assert (=> bm!41061 m!879399))

(assert (=> b!945624 m!879387))

(assert (=> b!945624 m!879387))

(declare-fun m!879401 () Bool)

(assert (=> b!945624 m!879401))

(assert (=> b!945562 d!114363))

(declare-fun b!945633 () Bool)

(declare-fun e!531969 () (_ BitVec 32))

(assert (=> b!945633 (= e!531969 #b00000000000000000000000000000000)))

(declare-fun d!114365 () Bool)

(declare-fun lt!426056 () (_ BitVec 32))

(assert (=> d!114365 (and (bvsge lt!426056 #b00000000000000000000000000000000) (bvsle lt!426056 (bvsub (size!28005 (_keys!10578 thiss!1141)) #b00000000000000000000000000000000)))))

(assert (=> d!114365 (= lt!426056 e!531969)))

(declare-fun c!98385 () Bool)

(assert (=> d!114365 (= c!98385 (bvsge #b00000000000000000000000000000000 (size!28005 (_keys!10578 thiss!1141))))))

(assert (=> d!114365 (and (bvsle #b00000000000000000000000000000000 (size!28005 (_keys!10578 thiss!1141))) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (size!28005 (_keys!10578 thiss!1141)) (size!28005 (_keys!10578 thiss!1141))))))

(assert (=> d!114365 (= (arrayCountValidKeys!0 (_keys!10578 thiss!1141) #b00000000000000000000000000000000 (size!28005 (_keys!10578 thiss!1141))) lt!426056)))

(declare-fun bm!41064 () Bool)

(declare-fun call!41067 () (_ BitVec 32))

(assert (=> bm!41064 (= call!41067 (arrayCountValidKeys!0 (_keys!10578 thiss!1141) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!28005 (_keys!10578 thiss!1141))))))

(declare-fun b!945634 () Bool)

(declare-fun e!531970 () (_ BitVec 32))

(assert (=> b!945634 (= e!531969 e!531970)))

(declare-fun c!98386 () Bool)

(assert (=> b!945634 (= c!98386 (validKeyInArray!0 (select (arr!27536 (_keys!10578 thiss!1141)) #b00000000000000000000000000000000)))))

(declare-fun b!945635 () Bool)

(assert (=> b!945635 (= e!531970 (bvadd #b00000000000000000000000000000001 call!41067))))

(declare-fun b!945636 () Bool)

(assert (=> b!945636 (= e!531970 call!41067)))

(assert (= (and d!114365 c!98385) b!945633))

(assert (= (and d!114365 (not c!98385)) b!945634))

(assert (= (and b!945634 c!98386) b!945635))

(assert (= (and b!945634 (not c!98386)) b!945636))

(assert (= (or b!945635 b!945636) bm!41064))

(declare-fun m!879403 () Bool)

(assert (=> bm!41064 m!879403))

(assert (=> b!945634 m!879387))

(assert (=> b!945634 m!879387))

(assert (=> b!945634 m!879389))

(assert (=> b!945560 d!114365))

(declare-fun b!945649 () Bool)

(declare-fun e!531979 () SeekEntryResult!9082)

(assert (=> b!945649 (= e!531979 Undefined!9082)))

(declare-fun e!531978 () SeekEntryResult!9082)

(declare-fun b!945650 () Bool)

(assert (=> b!945650 (= e!531978 (seekKeyOrZeroReturnVacant!0 (bvadd (x!81254 lt!426031) #b00000000000000000000000000000001) (nextIndex!0 (index!38700 lt!426031) (x!81254 lt!426031) (mask!27367 thiss!1141)) (index!38700 lt!426031) key!756 (_keys!10578 thiss!1141) (mask!27367 thiss!1141)))))

(declare-fun b!945651 () Bool)

(declare-fun e!531977 () SeekEntryResult!9082)

(assert (=> b!945651 (= e!531979 e!531977)))

(declare-fun c!98393 () Bool)

(declare-fun lt!426062 () (_ BitVec 64))

(assert (=> b!945651 (= c!98393 (= lt!426062 key!756))))

(declare-fun b!945652 () Bool)

(declare-fun c!98395 () Bool)

(assert (=> b!945652 (= c!98395 (= lt!426062 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!945652 (= e!531977 e!531978)))

(declare-fun d!114367 () Bool)

(declare-fun lt!426061 () SeekEntryResult!9082)

(assert (=> d!114367 (and (or ((_ is Undefined!9082) lt!426061) (not ((_ is Found!9082) lt!426061)) (and (bvsge (index!38699 lt!426061) #b00000000000000000000000000000000) (bvslt (index!38699 lt!426061) (size!28005 (_keys!10578 thiss!1141))))) (or ((_ is Undefined!9082) lt!426061) ((_ is Found!9082) lt!426061) (not ((_ is MissingVacant!9082) lt!426061)) (not (= (index!38701 lt!426061) (index!38700 lt!426031))) (and (bvsge (index!38701 lt!426061) #b00000000000000000000000000000000) (bvslt (index!38701 lt!426061) (size!28005 (_keys!10578 thiss!1141))))) (or ((_ is Undefined!9082) lt!426061) (ite ((_ is Found!9082) lt!426061) (= (select (arr!27536 (_keys!10578 thiss!1141)) (index!38699 lt!426061)) key!756) (and ((_ is MissingVacant!9082) lt!426061) (= (index!38701 lt!426061) (index!38700 lt!426031)) (= (select (arr!27536 (_keys!10578 thiss!1141)) (index!38701 lt!426061)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!114367 (= lt!426061 e!531979)))

(declare-fun c!98394 () Bool)

(assert (=> d!114367 (= c!98394 (bvsge (x!81254 lt!426031) #b01111111111111111111111111111110))))

(assert (=> d!114367 (= lt!426062 (select (arr!27536 (_keys!10578 thiss!1141)) (index!38700 lt!426031)))))

(assert (=> d!114367 (validMask!0 (mask!27367 thiss!1141))))

(assert (=> d!114367 (= (seekKeyOrZeroReturnVacant!0 (x!81254 lt!426031) (index!38700 lt!426031) (index!38700 lt!426031) key!756 (_keys!10578 thiss!1141) (mask!27367 thiss!1141)) lt!426061)))

(declare-fun b!945653 () Bool)

(assert (=> b!945653 (= e!531977 (Found!9082 (index!38700 lt!426031)))))

(declare-fun b!945654 () Bool)

(assert (=> b!945654 (= e!531978 (MissingVacant!9082 (index!38700 lt!426031)))))

(assert (= (and d!114367 c!98394) b!945649))

(assert (= (and d!114367 (not c!98394)) b!945651))

(assert (= (and b!945651 c!98393) b!945653))

(assert (= (and b!945651 (not c!98393)) b!945652))

(assert (= (and b!945652 c!98395) b!945654))

(assert (= (and b!945652 (not c!98395)) b!945650))

(declare-fun m!879405 () Bool)

(assert (=> b!945650 m!879405))

(assert (=> b!945650 m!879405))

(declare-fun m!879407 () Bool)

(assert (=> b!945650 m!879407))

(declare-fun m!879409 () Bool)

(assert (=> d!114367 m!879409))

(declare-fun m!879411 () Bool)

(assert (=> d!114367 m!879411))

(assert (=> d!114367 m!879367))

(assert (=> d!114367 m!879363))

(assert (=> b!945551 d!114367))

(declare-fun b!945666 () Bool)

(declare-fun e!531982 () Bool)

(assert (=> b!945666 (= e!531982 (and (bvsge (extraKeys!5432 thiss!1141) #b00000000000000000000000000000000) (bvsle (extraKeys!5432 thiss!1141) #b00000000000000000000000000000011) (bvsge (_vacant!2458 thiss!1141) #b00000000000000000000000000000000)))))

(declare-fun b!945664 () Bool)

(declare-fun res!635123 () Bool)

(assert (=> b!945664 (=> (not res!635123) (not e!531982))))

(declare-fun size!28008 (LongMapFixedSize!4806) (_ BitVec 32))

(assert (=> b!945664 (= res!635123 (bvsge (size!28008 thiss!1141) (_size!2458 thiss!1141)))))

(declare-fun b!945663 () Bool)

(declare-fun res!635121 () Bool)

(assert (=> b!945663 (=> (not res!635121) (not e!531982))))

(assert (=> b!945663 (= res!635121 (and (= (size!28004 (_values!5723 thiss!1141)) (bvadd (mask!27367 thiss!1141) #b00000000000000000000000000000001)) (= (size!28005 (_keys!10578 thiss!1141)) (size!28004 (_values!5723 thiss!1141))) (bvsge (_size!2458 thiss!1141) #b00000000000000000000000000000000) (bvsle (_size!2458 thiss!1141) (bvadd (mask!27367 thiss!1141) #b00000000000000000000000000000001))))))

(declare-fun d!114369 () Bool)

(declare-fun res!635120 () Bool)

(assert (=> d!114369 (=> (not res!635120) (not e!531982))))

(assert (=> d!114369 (= res!635120 (validMask!0 (mask!27367 thiss!1141)))))

(assert (=> d!114369 (= (simpleValid!352 thiss!1141) e!531982)))

(declare-fun b!945665 () Bool)

(declare-fun res!635122 () Bool)

(assert (=> b!945665 (=> (not res!635122) (not e!531982))))

(assert (=> b!945665 (= res!635122 (= (size!28008 thiss!1141) (bvadd (_size!2458 thiss!1141) (bvsdiv (bvadd (extraKeys!5432 thiss!1141) #b00000000000000000000000000000001) #b00000000000000000000000000000010))))))

(assert (= (and d!114369 res!635120) b!945663))

(assert (= (and b!945663 res!635121) b!945664))

(assert (= (and b!945664 res!635123) b!945665))

(assert (= (and b!945665 res!635122) b!945666))

(declare-fun m!879413 () Bool)

(assert (=> b!945664 m!879413))

(assert (=> d!114369 m!879363))

(assert (=> b!945665 m!879413))

(assert (=> d!114353 d!114369))

(declare-fun b!945667 () Bool)

(declare-fun e!531984 () Bool)

(assert (=> b!945667 (= e!531984 tp_is_empty!20619)))

(declare-fun mapNonEmpty!32775 () Bool)

(declare-fun mapRes!32775 () Bool)

(declare-fun tp!62868 () Bool)

(assert (=> mapNonEmpty!32775 (= mapRes!32775 (and tp!62868 e!531984))))

(declare-fun mapKey!32775 () (_ BitVec 32))

(declare-fun mapRest!32775 () (Array (_ BitVec 32) ValueCell!9828))

(declare-fun mapValue!32775 () ValueCell!9828)

(assert (=> mapNonEmpty!32775 (= mapRest!32774 (store mapRest!32775 mapKey!32775 mapValue!32775))))

(declare-fun condMapEmpty!32775 () Bool)

(declare-fun mapDefault!32775 () ValueCell!9828)

(assert (=> mapNonEmpty!32774 (= condMapEmpty!32775 (= mapRest!32774 ((as const (Array (_ BitVec 32) ValueCell!9828)) mapDefault!32775)))))

(declare-fun e!531983 () Bool)

(assert (=> mapNonEmpty!32774 (= tp!62867 (and e!531983 mapRes!32775))))

(declare-fun mapIsEmpty!32775 () Bool)

(assert (=> mapIsEmpty!32775 mapRes!32775))

(declare-fun b!945668 () Bool)

(assert (=> b!945668 (= e!531983 tp_is_empty!20619)))

(assert (= (and mapNonEmpty!32774 condMapEmpty!32775) mapIsEmpty!32775))

(assert (= (and mapNonEmpty!32774 (not condMapEmpty!32775)) mapNonEmpty!32775))

(assert (= (and mapNonEmpty!32775 ((_ is ValueCellFull!9828) mapValue!32775)) b!945667))

(assert (= (and mapNonEmpty!32774 ((_ is ValueCellFull!9828) mapDefault!32775)) b!945668))

(declare-fun m!879415 () Bool)

(assert (=> mapNonEmpty!32775 m!879415))

(check-sat (not b_next!18111) (not d!114369) b_and!29551 (not b!945609) (not d!114355) (not mapNonEmpty!32775) (not b!945624) (not b!945621) (not b!945664) (not b!945650) (not b!945634) (not b!945665) (not d!114367) (not bm!41058) tp_is_empty!20619 (not bm!41064) (not bm!41061) (not b!945623) (not b!945608) (not b!945596))
(check-sat b_and!29551 (not b_next!18111))
