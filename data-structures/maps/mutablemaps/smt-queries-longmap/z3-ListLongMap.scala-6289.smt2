; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!80442 () Bool)

(assert start!80442)

(declare-fun b!944423 () Bool)

(declare-fun b_free!18057 () Bool)

(declare-fun b_next!18057 () Bool)

(assert (=> b!944423 (= b_free!18057 (not b_next!18057))))

(declare-fun tp!62682 () Bool)

(declare-fun b_and!29493 () Bool)

(assert (=> b!944423 (= tp!62682 b_and!29493)))

(declare-fun mapIsEmpty!32673 () Bool)

(declare-fun mapRes!32673 () Bool)

(assert (=> mapIsEmpty!32673 mapRes!32673))

(declare-fun mapNonEmpty!32673 () Bool)

(declare-fun tp!62681 () Bool)

(declare-fun e!531123 () Bool)

(assert (=> mapNonEmpty!32673 (= mapRes!32673 (and tp!62681 e!531123))))

(declare-fun mapKey!32673 () (_ BitVec 32))

(declare-datatypes ((V!32385 0))(
  ( (V!32386 (val!10333 Int)) )
))
(declare-datatypes ((ValueCell!9801 0))(
  ( (ValueCellFull!9801 (v!12865 V!32385)) (EmptyCell!9801) )
))
(declare-datatypes ((array!57120 0))(
  ( (array!57121 (arr!27481 (Array (_ BitVec 32) ValueCell!9801)) (size!27948 (_ BitVec 32))) )
))
(declare-datatypes ((array!57122 0))(
  ( (array!57123 (arr!27482 (Array (_ BitVec 32) (_ BitVec 64))) (size!27949 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4752 0))(
  ( (LongMapFixedSize!4753 (defaultEntry!5671 Int) (mask!27316 (_ BitVec 32)) (extraKeys!5403 (_ BitVec 32)) (zeroValue!5507 V!32385) (minValue!5507 V!32385) (_size!2431 (_ BitVec 32)) (_keys!10545 array!57122) (_values!5694 array!57120) (_vacant!2431 (_ BitVec 32))) )
))
(declare-fun thiss!1141 () LongMapFixedSize!4752)

(declare-fun mapRest!32673 () (Array (_ BitVec 32) ValueCell!9801))

(declare-fun mapValue!32673 () ValueCell!9801)

(assert (=> mapNonEmpty!32673 (= (arr!27481 (_values!5694 thiss!1141)) (store mapRest!32673 mapKey!32673 mapValue!32673))))

(declare-fun b!944414 () Bool)

(declare-fun res!634550 () Bool)

(declare-fun e!531129 () Bool)

(assert (=> b!944414 (=> (not res!634550) (not e!531129))))

(declare-fun key!756 () (_ BitVec 64))

(declare-datatypes ((tuple2!13582 0))(
  ( (tuple2!13583 (_1!6801 (_ BitVec 64)) (_2!6801 V!32385)) )
))
(declare-datatypes ((List!19405 0))(
  ( (Nil!19402) (Cons!19401 (h!20552 tuple2!13582) (t!27730 List!19405)) )
))
(declare-datatypes ((ListLongMap!12293 0))(
  ( (ListLongMap!12294 (toList!6162 List!19405)) )
))
(declare-fun contains!5185 (ListLongMap!12293 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3350 (array!57122 array!57120 (_ BitVec 32) (_ BitVec 32) V!32385 V!32385 (_ BitVec 32) Int) ListLongMap!12293)

(assert (=> b!944414 (= res!634550 (contains!5185 (getCurrentListMap!3350 (_keys!10545 thiss!1141) (_values!5694 thiss!1141) (mask!27316 thiss!1141) (extraKeys!5403 thiss!1141) (zeroValue!5507 thiss!1141) (minValue!5507 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5671 thiss!1141)) key!756))))

(declare-fun b!944415 () Bool)

(declare-fun res!634545 () Bool)

(assert (=> b!944415 (=> (not res!634545) (not e!531129))))

(get-info :version)

(declare-datatypes ((SeekEntryResult!9061 0))(
  ( (MissingZero!9061 (index!38614 (_ BitVec 32))) (Found!9061 (index!38615 (_ BitVec 32))) (Intermediate!9061 (undefined!9873 Bool) (index!38616 (_ BitVec 32)) (x!81113 (_ BitVec 32))) (Undefined!9061) (MissingVacant!9061 (index!38617 (_ BitVec 32))) )
))
(declare-fun seekEntry!0 ((_ BitVec 64) array!57122 (_ BitVec 32)) SeekEntryResult!9061)

(assert (=> b!944415 (= res!634545 (not ((_ is Found!9061) (seekEntry!0 key!756 (_keys!10545 thiss!1141) (mask!27316 thiss!1141)))))))

(declare-fun b!944416 () Bool)

(declare-fun res!634546 () Bool)

(declare-fun e!531128 () Bool)

(assert (=> b!944416 (=> res!634546 e!531128)))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!57122 (_ BitVec 32)) Bool)

(assert (=> b!944416 (= res!634546 (not (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!10545 thiss!1141) (mask!27316 thiss!1141))))))

(declare-fun b!944417 () Bool)

(declare-fun res!634547 () Bool)

(assert (=> b!944417 (=> (not res!634547) (not e!531129))))

(assert (=> b!944417 (= res!634547 (and (not (= key!756 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!756 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!944418 () Bool)

(declare-fun tp_is_empty!20565 () Bool)

(assert (=> b!944418 (= e!531123 tp_is_empty!20565)))

(declare-fun b!944419 () Bool)

(declare-fun e!531125 () Bool)

(assert (=> b!944419 (= e!531125 tp_is_empty!20565)))

(declare-fun b!944420 () Bool)

(assert (=> b!944420 (= e!531129 (not e!531128))))

(declare-fun res!634552 () Bool)

(assert (=> b!944420 (=> res!634552 e!531128)))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!944420 (= res!634552 (not (validMask!0 (mask!27316 thiss!1141))))))

(declare-fun lt!425615 () (_ BitVec 32))

(assert (=> b!944420 (arrayForallSeekEntryOrOpenFound!0 lt!425615 (_keys!10545 thiss!1141) (mask!27316 thiss!1141))))

(declare-datatypes ((Unit!31851 0))(
  ( (Unit!31852) )
))
(declare-fun lt!425618 () Unit!31851)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!57122 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!31851)

(assert (=> b!944420 (= lt!425618 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (_keys!10545 thiss!1141) (mask!27316 thiss!1141) #b00000000000000000000000000000000 lt!425615))))

(declare-fun arrayScanForKey!0 (array!57122 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!944420 (= lt!425615 (arrayScanForKey!0 (_keys!10545 thiss!1141) key!756 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!57122 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!944420 (arrayContainsKey!0 (_keys!10545 thiss!1141) key!756 #b00000000000000000000000000000000)))

(declare-fun lt!425617 () Unit!31851)

(declare-fun lemmaKeyInListMapIsInArray!309 (array!57122 array!57120 (_ BitVec 32) (_ BitVec 32) V!32385 V!32385 (_ BitVec 64) Int) Unit!31851)

(assert (=> b!944420 (= lt!425617 (lemmaKeyInListMapIsInArray!309 (_keys!10545 thiss!1141) (_values!5694 thiss!1141) (mask!27316 thiss!1141) (extraKeys!5403 thiss!1141) (zeroValue!5507 thiss!1141) (minValue!5507 thiss!1141) key!756 (defaultEntry!5671 thiss!1141)))))

(declare-fun b!944421 () Bool)

(declare-fun e!531126 () Bool)

(assert (=> b!944421 (= e!531126 (and e!531125 mapRes!32673))))

(declare-fun condMapEmpty!32673 () Bool)

(declare-fun mapDefault!32673 () ValueCell!9801)

(assert (=> b!944421 (= condMapEmpty!32673 (= (arr!27481 (_values!5694 thiss!1141)) ((as const (Array (_ BitVec 32) ValueCell!9801)) mapDefault!32673)))))

(declare-fun b!944422 () Bool)

(declare-fun res!634548 () Bool)

(assert (=> b!944422 (=> res!634548 e!531128)))

(assert (=> b!944422 (= res!634548 (not (= (size!27949 (_keys!10545 thiss!1141)) (bvadd #b00000000000000000000000000000001 (mask!27316 thiss!1141)))))))

(declare-fun b!944413 () Bool)

(assert (=> b!944413 (= e!531128 true)))

(declare-fun lt!425616 () SeekEntryResult!9061)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!57122 (_ BitVec 32)) SeekEntryResult!9061)

(assert (=> b!944413 (= lt!425616 (seekEntryOrOpen!0 key!756 (_keys!10545 thiss!1141) (mask!27316 thiss!1141)))))

(declare-fun res!634551 () Bool)

(assert (=> start!80442 (=> (not res!634551) (not e!531129))))

(declare-fun valid!1793 (LongMapFixedSize!4752) Bool)

(assert (=> start!80442 (= res!634551 (valid!1793 thiss!1141))))

(assert (=> start!80442 e!531129))

(declare-fun e!531127 () Bool)

(assert (=> start!80442 e!531127))

(assert (=> start!80442 true))

(declare-fun array_inv!21296 (array!57122) Bool)

(declare-fun array_inv!21297 (array!57120) Bool)

(assert (=> b!944423 (= e!531127 (and tp!62682 tp_is_empty!20565 (array_inv!21296 (_keys!10545 thiss!1141)) (array_inv!21297 (_values!5694 thiss!1141)) e!531126))))

(declare-fun b!944424 () Bool)

(declare-fun res!634549 () Bool)

(assert (=> b!944424 (=> res!634549 e!531128)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!944424 (= res!634549 (not (validKeyInArray!0 key!756)))))

(assert (= (and start!80442 res!634551) b!944417))

(assert (= (and b!944417 res!634547) b!944415))

(assert (= (and b!944415 res!634545) b!944414))

(assert (= (and b!944414 res!634550) b!944420))

(assert (= (and b!944420 (not res!634552)) b!944422))

(assert (= (and b!944422 (not res!634548)) b!944416))

(assert (= (and b!944416 (not res!634546)) b!944424))

(assert (= (and b!944424 (not res!634549)) b!944413))

(assert (= (and b!944421 condMapEmpty!32673) mapIsEmpty!32673))

(assert (= (and b!944421 (not condMapEmpty!32673)) mapNonEmpty!32673))

(assert (= (and mapNonEmpty!32673 ((_ is ValueCellFull!9801) mapValue!32673)) b!944418))

(assert (= (and b!944421 ((_ is ValueCellFull!9801) mapDefault!32673)) b!944419))

(assert (= b!944423 b!944421))

(assert (= start!80442 b!944423))

(declare-fun m!878505 () Bool)

(assert (=> b!944424 m!878505))

(declare-fun m!878507 () Bool)

(assert (=> b!944423 m!878507))

(declare-fun m!878509 () Bool)

(assert (=> b!944423 m!878509))

(declare-fun m!878511 () Bool)

(assert (=> b!944413 m!878511))

(declare-fun m!878513 () Bool)

(assert (=> start!80442 m!878513))

(declare-fun m!878515 () Bool)

(assert (=> mapNonEmpty!32673 m!878515))

(declare-fun m!878517 () Bool)

(assert (=> b!944416 m!878517))

(declare-fun m!878519 () Bool)

(assert (=> b!944414 m!878519))

(assert (=> b!944414 m!878519))

(declare-fun m!878521 () Bool)

(assert (=> b!944414 m!878521))

(declare-fun m!878523 () Bool)

(assert (=> b!944415 m!878523))

(declare-fun m!878525 () Bool)

(assert (=> b!944420 m!878525))

(declare-fun m!878527 () Bool)

(assert (=> b!944420 m!878527))

(declare-fun m!878529 () Bool)

(assert (=> b!944420 m!878529))

(declare-fun m!878531 () Bool)

(assert (=> b!944420 m!878531))

(declare-fun m!878533 () Bool)

(assert (=> b!944420 m!878533))

(declare-fun m!878535 () Bool)

(assert (=> b!944420 m!878535))

(check-sat (not b!944424) (not start!80442) (not b!944414) (not b!944413) (not b!944416) (not mapNonEmpty!32673) (not b!944423) b_and!29493 tp_is_empty!20565 (not b!944420) (not b_next!18057) (not b!944415))
(check-sat b_and!29493 (not b_next!18057))
