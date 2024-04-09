; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!80436 () Bool)

(assert start!80436)

(declare-fun b!944309 () Bool)

(declare-fun b_free!18051 () Bool)

(declare-fun b_next!18051 () Bool)

(assert (=> b!944309 (= b_free!18051 (not b_next!18051))))

(declare-fun tp!62664 () Bool)

(declare-fun b_and!29487 () Bool)

(assert (=> b!944309 (= tp!62664 b_and!29487)))

(declare-fun b!944305 () Bool)

(declare-fun e!531065 () Bool)

(declare-fun e!531066 () Bool)

(declare-fun mapRes!32664 () Bool)

(assert (=> b!944305 (= e!531065 (and e!531066 mapRes!32664))))

(declare-fun condMapEmpty!32664 () Bool)

(declare-datatypes ((V!32377 0))(
  ( (V!32378 (val!10330 Int)) )
))
(declare-datatypes ((ValueCell!9798 0))(
  ( (ValueCellFull!9798 (v!12862 V!32377)) (EmptyCell!9798) )
))
(declare-datatypes ((array!57108 0))(
  ( (array!57109 (arr!27475 (Array (_ BitVec 32) ValueCell!9798)) (size!27942 (_ BitVec 32))) )
))
(declare-datatypes ((array!57110 0))(
  ( (array!57111 (arr!27476 (Array (_ BitVec 32) (_ BitVec 64))) (size!27943 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4746 0))(
  ( (LongMapFixedSize!4747 (defaultEntry!5668 Int) (mask!27311 (_ BitVec 32)) (extraKeys!5400 (_ BitVec 32)) (zeroValue!5504 V!32377) (minValue!5504 V!32377) (_size!2428 (_ BitVec 32)) (_keys!10542 array!57110) (_values!5691 array!57108) (_vacant!2428 (_ BitVec 32))) )
))
(declare-fun thiss!1141 () LongMapFixedSize!4746)

(declare-fun mapDefault!32664 () ValueCell!9798)

(assert (=> b!944305 (= condMapEmpty!32664 (= (arr!27475 (_values!5691 thiss!1141)) ((as const (Array (_ BitVec 32) ValueCell!9798)) mapDefault!32664)))))

(declare-fun mapNonEmpty!32664 () Bool)

(declare-fun tp!62663 () Bool)

(declare-fun e!531063 () Bool)

(assert (=> mapNonEmpty!32664 (= mapRes!32664 (and tp!62663 e!531063))))

(declare-fun mapKey!32664 () (_ BitVec 32))

(declare-fun mapRest!32664 () (Array (_ BitVec 32) ValueCell!9798))

(declare-fun mapValue!32664 () ValueCell!9798)

(assert (=> mapNonEmpty!32664 (= (arr!27475 (_values!5691 thiss!1141)) (store mapRest!32664 mapKey!32664 mapValue!32664))))

(declare-fun b!944306 () Bool)

(declare-fun res!634473 () Bool)

(declare-fun e!531060 () Bool)

(assert (=> b!944306 (=> (not res!634473) (not e!531060))))

(declare-fun key!756 () (_ BitVec 64))

(declare-datatypes ((tuple2!13578 0))(
  ( (tuple2!13579 (_1!6799 (_ BitVec 64)) (_2!6799 V!32377)) )
))
(declare-datatypes ((List!19403 0))(
  ( (Nil!19400) (Cons!19399 (h!20550 tuple2!13578) (t!27728 List!19403)) )
))
(declare-datatypes ((ListLongMap!12289 0))(
  ( (ListLongMap!12290 (toList!6160 List!19403)) )
))
(declare-fun contains!5183 (ListLongMap!12289 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3348 (array!57110 array!57108 (_ BitVec 32) (_ BitVec 32) V!32377 V!32377 (_ BitVec 32) Int) ListLongMap!12289)

(assert (=> b!944306 (= res!634473 (contains!5183 (getCurrentListMap!3348 (_keys!10542 thiss!1141) (_values!5691 thiss!1141) (mask!27311 thiss!1141) (extraKeys!5400 thiss!1141) (zeroValue!5504 thiss!1141) (minValue!5504 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5668 thiss!1141)) key!756))))

(declare-fun b!944307 () Bool)

(declare-fun res!634478 () Bool)

(assert (=> b!944307 (=> (not res!634478) (not e!531060))))

(assert (=> b!944307 (= res!634478 (and (not (= key!756 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!756 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!944308 () Bool)

(declare-fun e!531062 () Bool)

(assert (=> b!944308 (= e!531062 true)))

(declare-datatypes ((SeekEntryResult!9059 0))(
  ( (MissingZero!9059 (index!38606 (_ BitVec 32))) (Found!9059 (index!38607 (_ BitVec 32))) (Intermediate!9059 (undefined!9871 Bool) (index!38608 (_ BitVec 32)) (x!81103 (_ BitVec 32))) (Undefined!9059) (MissingVacant!9059 (index!38609 (_ BitVec 32))) )
))
(declare-fun lt!425579 () SeekEntryResult!9059)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!57110 (_ BitVec 32)) SeekEntryResult!9059)

(assert (=> b!944308 (= lt!425579 (seekEntryOrOpen!0 key!756 (_keys!10542 thiss!1141) (mask!27311 thiss!1141)))))

(declare-fun tp_is_empty!20559 () Bool)

(declare-fun e!531064 () Bool)

(declare-fun array_inv!21292 (array!57110) Bool)

(declare-fun array_inv!21293 (array!57108) Bool)

(assert (=> b!944309 (= e!531064 (and tp!62664 tp_is_empty!20559 (array_inv!21292 (_keys!10542 thiss!1141)) (array_inv!21293 (_values!5691 thiss!1141)) e!531065))))

(declare-fun b!944310 () Bool)

(declare-fun res!634479 () Bool)

(assert (=> b!944310 (=> res!634479 e!531062)))

(assert (=> b!944310 (= res!634479 (not (= (size!27943 (_keys!10542 thiss!1141)) (bvadd #b00000000000000000000000000000001 (mask!27311 thiss!1141)))))))

(declare-fun mapIsEmpty!32664 () Bool)

(assert (=> mapIsEmpty!32664 mapRes!32664))

(declare-fun b!944311 () Bool)

(assert (=> b!944311 (= e!531066 tp_is_empty!20559)))

(declare-fun b!944312 () Bool)

(assert (=> b!944312 (= e!531060 (not e!531062))))

(declare-fun res!634477 () Bool)

(assert (=> b!944312 (=> res!634477 e!531062)))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!944312 (= res!634477 (not (validMask!0 (mask!27311 thiss!1141))))))

(declare-fun lt!425580 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!57110 (_ BitVec 32)) Bool)

(assert (=> b!944312 (arrayForallSeekEntryOrOpenFound!0 lt!425580 (_keys!10542 thiss!1141) (mask!27311 thiss!1141))))

(declare-datatypes ((Unit!31847 0))(
  ( (Unit!31848) )
))
(declare-fun lt!425582 () Unit!31847)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!57110 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!31847)

(assert (=> b!944312 (= lt!425582 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (_keys!10542 thiss!1141) (mask!27311 thiss!1141) #b00000000000000000000000000000000 lt!425580))))

(declare-fun arrayScanForKey!0 (array!57110 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!944312 (= lt!425580 (arrayScanForKey!0 (_keys!10542 thiss!1141) key!756 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!57110 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!944312 (arrayContainsKey!0 (_keys!10542 thiss!1141) key!756 #b00000000000000000000000000000000)))

(declare-fun lt!425581 () Unit!31847)

(declare-fun lemmaKeyInListMapIsInArray!307 (array!57110 array!57108 (_ BitVec 32) (_ BitVec 32) V!32377 V!32377 (_ BitVec 64) Int) Unit!31847)

(assert (=> b!944312 (= lt!425581 (lemmaKeyInListMapIsInArray!307 (_keys!10542 thiss!1141) (_values!5691 thiss!1141) (mask!27311 thiss!1141) (extraKeys!5400 thiss!1141) (zeroValue!5504 thiss!1141) (minValue!5504 thiss!1141) key!756 (defaultEntry!5668 thiss!1141)))))

(declare-fun res!634480 () Bool)

(assert (=> start!80436 (=> (not res!634480) (not e!531060))))

(declare-fun valid!1791 (LongMapFixedSize!4746) Bool)

(assert (=> start!80436 (= res!634480 (valid!1791 thiss!1141))))

(assert (=> start!80436 e!531060))

(assert (=> start!80436 e!531064))

(assert (=> start!80436 true))

(declare-fun b!944313 () Bool)

(assert (=> b!944313 (= e!531063 tp_is_empty!20559)))

(declare-fun b!944314 () Bool)

(declare-fun res!634474 () Bool)

(assert (=> b!944314 (=> (not res!634474) (not e!531060))))

(get-info :version)

(declare-fun seekEntry!0 ((_ BitVec 64) array!57110 (_ BitVec 32)) SeekEntryResult!9059)

(assert (=> b!944314 (= res!634474 (not ((_ is Found!9059) (seekEntry!0 key!756 (_keys!10542 thiss!1141) (mask!27311 thiss!1141)))))))

(declare-fun b!944315 () Bool)

(declare-fun res!634475 () Bool)

(assert (=> b!944315 (=> res!634475 e!531062)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!944315 (= res!634475 (not (validKeyInArray!0 key!756)))))

(declare-fun b!944316 () Bool)

(declare-fun res!634476 () Bool)

(assert (=> b!944316 (=> res!634476 e!531062)))

(assert (=> b!944316 (= res!634476 (not (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!10542 thiss!1141) (mask!27311 thiss!1141))))))

(assert (= (and start!80436 res!634480) b!944307))

(assert (= (and b!944307 res!634478) b!944314))

(assert (= (and b!944314 res!634474) b!944306))

(assert (= (and b!944306 res!634473) b!944312))

(assert (= (and b!944312 (not res!634477)) b!944310))

(assert (= (and b!944310 (not res!634479)) b!944316))

(assert (= (and b!944316 (not res!634476)) b!944315))

(assert (= (and b!944315 (not res!634475)) b!944308))

(assert (= (and b!944305 condMapEmpty!32664) mapIsEmpty!32664))

(assert (= (and b!944305 (not condMapEmpty!32664)) mapNonEmpty!32664))

(assert (= (and mapNonEmpty!32664 ((_ is ValueCellFull!9798) mapValue!32664)) b!944313))

(assert (= (and b!944305 ((_ is ValueCellFull!9798) mapDefault!32664)) b!944311))

(assert (= b!944309 b!944305))

(assert (= start!80436 b!944309))

(declare-fun m!878409 () Bool)

(assert (=> b!944315 m!878409))

(declare-fun m!878411 () Bool)

(assert (=> start!80436 m!878411))

(declare-fun m!878413 () Bool)

(assert (=> b!944312 m!878413))

(declare-fun m!878415 () Bool)

(assert (=> b!944312 m!878415))

(declare-fun m!878417 () Bool)

(assert (=> b!944312 m!878417))

(declare-fun m!878419 () Bool)

(assert (=> b!944312 m!878419))

(declare-fun m!878421 () Bool)

(assert (=> b!944312 m!878421))

(declare-fun m!878423 () Bool)

(assert (=> b!944312 m!878423))

(declare-fun m!878425 () Bool)

(assert (=> b!944309 m!878425))

(declare-fun m!878427 () Bool)

(assert (=> b!944309 m!878427))

(declare-fun m!878429 () Bool)

(assert (=> b!944306 m!878429))

(assert (=> b!944306 m!878429))

(declare-fun m!878431 () Bool)

(assert (=> b!944306 m!878431))

(declare-fun m!878433 () Bool)

(assert (=> b!944314 m!878433))

(declare-fun m!878435 () Bool)

(assert (=> b!944316 m!878435))

(declare-fun m!878437 () Bool)

(assert (=> b!944308 m!878437))

(declare-fun m!878439 () Bool)

(assert (=> mapNonEmpty!32664 m!878439))

(check-sat (not b_next!18051) (not mapNonEmpty!32664) (not b!944308) (not b!944315) tp_is_empty!20559 (not b!944312) (not b!944306) (not b!944314) b_and!29487 (not b!944309) (not b!944316) (not start!80436))
(check-sat b_and!29487 (not b_next!18051))
