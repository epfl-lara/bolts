; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!80456 () Bool)

(assert start!80456)

(declare-fun b!944676 () Bool)

(declare-fun b_free!18071 () Bool)

(declare-fun b_next!18071 () Bool)

(assert (=> b!944676 (= b_free!18071 (not b_next!18071))))

(declare-fun tp!62724 () Bool)

(declare-fun b_and!29507 () Bool)

(assert (=> b!944676 (= tp!62724 b_and!29507)))

(declare-fun mapNonEmpty!32694 () Bool)

(declare-fun mapRes!32694 () Bool)

(declare-fun tp!62723 () Bool)

(declare-fun e!531274 () Bool)

(assert (=> mapNonEmpty!32694 (= mapRes!32694 (and tp!62723 e!531274))))

(declare-datatypes ((V!32403 0))(
  ( (V!32404 (val!10340 Int)) )
))
(declare-datatypes ((ValueCell!9808 0))(
  ( (ValueCellFull!9808 (v!12872 V!32403)) (EmptyCell!9808) )
))
(declare-fun mapRest!32694 () (Array (_ BitVec 32) ValueCell!9808))

(declare-fun mapValue!32694 () ValueCell!9808)

(declare-fun mapKey!32694 () (_ BitVec 32))

(declare-datatypes ((array!57148 0))(
  ( (array!57149 (arr!27495 (Array (_ BitVec 32) ValueCell!9808)) (size!27962 (_ BitVec 32))) )
))
(declare-datatypes ((array!57150 0))(
  ( (array!57151 (arr!27496 (Array (_ BitVec 32) (_ BitVec 64))) (size!27963 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4766 0))(
  ( (LongMapFixedSize!4767 (defaultEntry!5678 Int) (mask!27327 (_ BitVec 32)) (extraKeys!5410 (_ BitVec 32)) (zeroValue!5514 V!32403) (minValue!5514 V!32403) (_size!2438 (_ BitVec 32)) (_keys!10552 array!57150) (_values!5701 array!57148) (_vacant!2438 (_ BitVec 32))) )
))
(declare-fun thiss!1141 () LongMapFixedSize!4766)

(assert (=> mapNonEmpty!32694 (= (arr!27495 (_values!5701 thiss!1141)) (store mapRest!32694 mapKey!32694 mapValue!32694))))

(declare-fun mapIsEmpty!32694 () Bool)

(assert (=> mapIsEmpty!32694 mapRes!32694))

(declare-fun b!944665 () Bool)

(declare-fun tp_is_empty!20579 () Bool)

(assert (=> b!944665 (= e!531274 tp_is_empty!20579)))

(declare-fun b!944666 () Bool)

(declare-fun res!634715 () Bool)

(declare-fun e!531271 () Bool)

(assert (=> b!944666 (=> res!634715 e!531271)))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!57150 (_ BitVec 32)) Bool)

(assert (=> b!944666 (= res!634715 (not (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!10552 thiss!1141) (mask!27327 thiss!1141))))))

(declare-fun b!944667 () Bool)

(declare-fun res!634716 () Bool)

(declare-fun e!531270 () Bool)

(assert (=> b!944667 (=> (not res!634716) (not e!531270))))

(declare-fun key!756 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!9068 0))(
  ( (MissingZero!9068 (index!38642 (_ BitVec 32))) (Found!9068 (index!38643 (_ BitVec 32))) (Intermediate!9068 (undefined!9880 Bool) (index!38644 (_ BitVec 32)) (x!81136 (_ BitVec 32))) (Undefined!9068) (MissingVacant!9068 (index!38645 (_ BitVec 32))) )
))
(declare-fun seekEntry!0 ((_ BitVec 64) array!57150 (_ BitVec 32)) SeekEntryResult!9068)

(assert (=> b!944667 (= res!634716 (not (is-Found!9068 (seekEntry!0 key!756 (_keys!10552 thiss!1141) (mask!27327 thiss!1141)))))))

(declare-fun b!944668 () Bool)

(declare-fun res!634720 () Bool)

(assert (=> b!944668 (=> res!634720 e!531271)))

(assert (=> b!944668 (= res!634720 (not (= (size!27963 (_keys!10552 thiss!1141)) (bvadd #b00000000000000000000000000000001 (mask!27327 thiss!1141)))))))

(declare-fun b!944669 () Bool)

(declare-fun res!634718 () Bool)

(assert (=> b!944669 (=> res!634718 e!531271)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!944669 (= res!634718 (not (validKeyInArray!0 key!756)))))

(declare-fun b!944670 () Bool)

(declare-fun res!634717 () Bool)

(assert (=> b!944670 (=> (not res!634717) (not e!531270))))

(assert (=> b!944670 (= res!634717 (and (not (= key!756 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!756 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun res!634714 () Bool)

(assert (=> start!80456 (=> (not res!634714) (not e!531270))))

(declare-fun valid!1797 (LongMapFixedSize!4766) Bool)

(assert (=> start!80456 (= res!634714 (valid!1797 thiss!1141))))

(assert (=> start!80456 e!531270))

(declare-fun e!531273 () Bool)

(assert (=> start!80456 e!531273))

(assert (=> start!80456 true))

(declare-fun b!944671 () Bool)

(assert (=> b!944671 (= e!531270 (not e!531271))))

(declare-fun res!634713 () Bool)

(assert (=> b!944671 (=> res!634713 e!531271)))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!944671 (= res!634713 (not (validMask!0 (mask!27327 thiss!1141))))))

(declare-fun lt!425702 () (_ BitVec 32))

(assert (=> b!944671 (arrayForallSeekEntryOrOpenFound!0 lt!425702 (_keys!10552 thiss!1141) (mask!27327 thiss!1141))))

(declare-datatypes ((Unit!31861 0))(
  ( (Unit!31862) )
))
(declare-fun lt!425701 () Unit!31861)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!57150 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!31861)

(assert (=> b!944671 (= lt!425701 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (_keys!10552 thiss!1141) (mask!27327 thiss!1141) #b00000000000000000000000000000000 lt!425702))))

(declare-fun arrayScanForKey!0 (array!57150 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!944671 (= lt!425702 (arrayScanForKey!0 (_keys!10552 thiss!1141) key!756 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!57150 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!944671 (arrayContainsKey!0 (_keys!10552 thiss!1141) key!756 #b00000000000000000000000000000000)))

(declare-fun lt!425699 () Unit!31861)

(declare-fun lemmaKeyInListMapIsInArray!314 (array!57150 array!57148 (_ BitVec 32) (_ BitVec 32) V!32403 V!32403 (_ BitVec 64) Int) Unit!31861)

(assert (=> b!944671 (= lt!425699 (lemmaKeyInListMapIsInArray!314 (_keys!10552 thiss!1141) (_values!5701 thiss!1141) (mask!27327 thiss!1141) (extraKeys!5410 thiss!1141) (zeroValue!5514 thiss!1141) (minValue!5514 thiss!1141) key!756 (defaultEntry!5678 thiss!1141)))))

(declare-fun b!944672 () Bool)

(assert (=> b!944672 (= e!531271 true)))

(declare-fun lt!425700 () SeekEntryResult!9068)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!57150 (_ BitVec 32)) SeekEntryResult!9068)

(assert (=> b!944672 (= lt!425700 (seekEntryOrOpen!0 key!756 (_keys!10552 thiss!1141) (mask!27327 thiss!1141)))))

(declare-fun b!944673 () Bool)

(declare-fun e!531276 () Bool)

(declare-fun e!531275 () Bool)

(assert (=> b!944673 (= e!531276 (and e!531275 mapRes!32694))))

(declare-fun condMapEmpty!32694 () Bool)

(declare-fun mapDefault!32694 () ValueCell!9808)

