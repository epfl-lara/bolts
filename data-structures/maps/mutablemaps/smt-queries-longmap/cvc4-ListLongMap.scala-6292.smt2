; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!80462 () Bool)

(assert start!80462)

(declare-fun b!944784 () Bool)

(declare-fun b_free!18077 () Bool)

(declare-fun b_next!18077 () Bool)

(assert (=> b!944784 (= b_free!18077 (not b_next!18077))))

(declare-fun tp!62742 () Bool)

(declare-fun b_and!29513 () Bool)

(assert (=> b!944784 (= tp!62742 b_and!29513)))

(declare-fun b!944773 () Bool)

(declare-fun res!634785 () Bool)

(declare-fun e!531339 () Bool)

(assert (=> b!944773 (=> res!634785 e!531339)))

(declare-fun key!756 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!944773 (= res!634785 (not (validKeyInArray!0 key!756)))))

(declare-fun b!944774 () Bool)

(declare-fun e!531336 () Bool)

(declare-fun tp_is_empty!20585 () Bool)

(assert (=> b!944774 (= e!531336 tp_is_empty!20585)))

(declare-fun res!634792 () Bool)

(declare-fun e!531337 () Bool)

(assert (=> start!80462 (=> (not res!634792) (not e!531337))))

(declare-datatypes ((V!32411 0))(
  ( (V!32412 (val!10343 Int)) )
))
(declare-datatypes ((ValueCell!9811 0))(
  ( (ValueCellFull!9811 (v!12875 V!32411)) (EmptyCell!9811) )
))
(declare-datatypes ((array!57160 0))(
  ( (array!57161 (arr!27501 (Array (_ BitVec 32) ValueCell!9811)) (size!27968 (_ BitVec 32))) )
))
(declare-datatypes ((array!57162 0))(
  ( (array!57163 (arr!27502 (Array (_ BitVec 32) (_ BitVec 64))) (size!27969 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4772 0))(
  ( (LongMapFixedSize!4773 (defaultEntry!5681 Int) (mask!27332 (_ BitVec 32)) (extraKeys!5413 (_ BitVec 32)) (zeroValue!5517 V!32411) (minValue!5517 V!32411) (_size!2441 (_ BitVec 32)) (_keys!10555 array!57162) (_values!5704 array!57160) (_vacant!2441 (_ BitVec 32))) )
))
(declare-fun thiss!1141 () LongMapFixedSize!4772)

(declare-fun valid!1800 (LongMapFixedSize!4772) Bool)

(assert (=> start!80462 (= res!634792 (valid!1800 thiss!1141))))

(assert (=> start!80462 e!531337))

(declare-fun e!531333 () Bool)

(assert (=> start!80462 e!531333))

(assert (=> start!80462 true))

(declare-fun b!944775 () Bool)

(declare-fun res!634786 () Bool)

(assert (=> b!944775 (=> (not res!634786) (not e!531337))))

(assert (=> b!944775 (= res!634786 (and (not (= key!756 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!756 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun mapIsEmpty!32703 () Bool)

(declare-fun mapRes!32703 () Bool)

(assert (=> mapIsEmpty!32703 mapRes!32703))

(declare-fun b!944776 () Bool)

(assert (=> b!944776 (= e!531339 true)))

(declare-datatypes ((SeekEntryResult!9071 0))(
  ( (MissingZero!9071 (index!38654 (_ BitVec 32))) (Found!9071 (index!38655 (_ BitVec 32))) (Intermediate!9071 (undefined!9883 Bool) (index!38656 (_ BitVec 32)) (x!81147 (_ BitVec 32))) (Undefined!9071) (MissingVacant!9071 (index!38657 (_ BitVec 32))) )
))
(declare-fun lt!425737 () SeekEntryResult!9071)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!57162 (_ BitVec 32)) SeekEntryResult!9071)

(assert (=> b!944776 (= lt!425737 (seekEntryOrOpen!0 key!756 (_keys!10555 thiss!1141) (mask!27332 thiss!1141)))))

(declare-fun mapNonEmpty!32703 () Bool)

(declare-fun tp!62741 () Bool)

(declare-fun e!531338 () Bool)

(assert (=> mapNonEmpty!32703 (= mapRes!32703 (and tp!62741 e!531338))))

(declare-fun mapRest!32703 () (Array (_ BitVec 32) ValueCell!9811))

(declare-fun mapKey!32703 () (_ BitVec 32))

(declare-fun mapValue!32703 () ValueCell!9811)

(assert (=> mapNonEmpty!32703 (= (arr!27501 (_values!5704 thiss!1141)) (store mapRest!32703 mapKey!32703 mapValue!32703))))

(declare-fun b!944777 () Bool)

(assert (=> b!944777 (= e!531337 (not e!531339))))

(declare-fun res!634788 () Bool)

(assert (=> b!944777 (=> res!634788 e!531339)))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!944777 (= res!634788 (not (validMask!0 (mask!27332 thiss!1141))))))

(declare-fun lt!425738 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!57162 (_ BitVec 32)) Bool)

(assert (=> b!944777 (arrayForallSeekEntryOrOpenFound!0 lt!425738 (_keys!10555 thiss!1141) (mask!27332 thiss!1141))))

(declare-datatypes ((Unit!31867 0))(
  ( (Unit!31868) )
))
(declare-fun lt!425735 () Unit!31867)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!57162 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!31867)

(assert (=> b!944777 (= lt!425735 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (_keys!10555 thiss!1141) (mask!27332 thiss!1141) #b00000000000000000000000000000000 lt!425738))))

(declare-fun arrayScanForKey!0 (array!57162 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!944777 (= lt!425738 (arrayScanForKey!0 (_keys!10555 thiss!1141) key!756 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!57162 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!944777 (arrayContainsKey!0 (_keys!10555 thiss!1141) key!756 #b00000000000000000000000000000000)))

(declare-fun lt!425736 () Unit!31867)

(declare-fun lemmaKeyInListMapIsInArray!317 (array!57162 array!57160 (_ BitVec 32) (_ BitVec 32) V!32411 V!32411 (_ BitVec 64) Int) Unit!31867)

(assert (=> b!944777 (= lt!425736 (lemmaKeyInListMapIsInArray!317 (_keys!10555 thiss!1141) (_values!5704 thiss!1141) (mask!27332 thiss!1141) (extraKeys!5413 thiss!1141) (zeroValue!5517 thiss!1141) (minValue!5517 thiss!1141) key!756 (defaultEntry!5681 thiss!1141)))))

(declare-fun b!944778 () Bool)

(declare-fun res!634787 () Bool)

(assert (=> b!944778 (=> (not res!634787) (not e!531337))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!57162 (_ BitVec 32)) SeekEntryResult!9071)

(assert (=> b!944778 (= res!634787 (not (is-Found!9071 (seekEntry!0 key!756 (_keys!10555 thiss!1141) (mask!27332 thiss!1141)))))))

(declare-fun b!944779 () Bool)

(declare-fun res!634791 () Bool)

(assert (=> b!944779 (=> res!634791 e!531339)))

(assert (=> b!944779 (= res!634791 (not (= (size!27969 (_keys!10555 thiss!1141)) (bvadd #b00000000000000000000000000000001 (mask!27332 thiss!1141)))))))

(declare-fun b!944780 () Bool)

(declare-fun e!531335 () Bool)

(assert (=> b!944780 (= e!531335 (and e!531336 mapRes!32703))))

(declare-fun condMapEmpty!32703 () Bool)

(declare-fun mapDefault!32703 () ValueCell!9811)

