; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!80464 () Bool)

(assert start!80464)

(declare-fun b!944810 () Bool)

(declare-fun b_free!18079 () Bool)

(declare-fun b_next!18079 () Bool)

(assert (=> b!944810 (= b_free!18079 (not b_next!18079))))

(declare-fun tp!62747 () Bool)

(declare-fun b_and!29515 () Bool)

(assert (=> b!944810 (= tp!62747 b_and!29515)))

(declare-fun mapIsEmpty!32706 () Bool)

(declare-fun mapRes!32706 () Bool)

(assert (=> mapIsEmpty!32706 mapRes!32706))

(declare-fun b!944803 () Bool)

(declare-fun res!634800 () Bool)

(declare-fun e!531358 () Bool)

(assert (=> b!944803 (=> (not res!634800) (not e!531358))))

(declare-fun key!756 () (_ BitVec 64))

(declare-datatypes ((V!32415 0))(
  ( (V!32416 (val!10344 Int)) )
))
(declare-datatypes ((ValueCell!9812 0))(
  ( (ValueCellFull!9812 (v!12876 V!32415)) (EmptyCell!9812) )
))
(declare-datatypes ((array!57164 0))(
  ( (array!57165 (arr!27503 (Array (_ BitVec 32) ValueCell!9812)) (size!27970 (_ BitVec 32))) )
))
(declare-datatypes ((array!57166 0))(
  ( (array!57167 (arr!27504 (Array (_ BitVec 32) (_ BitVec 64))) (size!27971 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4774 0))(
  ( (LongMapFixedSize!4775 (defaultEntry!5682 Int) (mask!27335 (_ BitVec 32)) (extraKeys!5414 (_ BitVec 32)) (zeroValue!5518 V!32415) (minValue!5518 V!32415) (_size!2442 (_ BitVec 32)) (_keys!10556 array!57166) (_values!5705 array!57164) (_vacant!2442 (_ BitVec 32))) )
))
(declare-fun thiss!1141 () LongMapFixedSize!4774)

(declare-datatypes ((SeekEntryResult!9072 0))(
  ( (MissingZero!9072 (index!38658 (_ BitVec 32))) (Found!9072 (index!38659 (_ BitVec 32))) (Intermediate!9072 (undefined!9884 Bool) (index!38660 (_ BitVec 32)) (x!81156 (_ BitVec 32))) (Undefined!9072) (MissingVacant!9072 (index!38661 (_ BitVec 32))) )
))
(declare-fun seekEntry!0 ((_ BitVec 64) array!57166 (_ BitVec 32)) SeekEntryResult!9072)

(assert (=> b!944803 (= res!634800 (not (is-Found!9072 (seekEntry!0 key!756 (_keys!10556 thiss!1141) (mask!27335 thiss!1141)))))))

(declare-fun b!944804 () Bool)

(declare-fun e!531354 () Bool)

(declare-fun tp_is_empty!20587 () Bool)

(assert (=> b!944804 (= e!531354 tp_is_empty!20587)))

(declare-fun b!944805 () Bool)

(declare-fun e!531360 () Bool)

(assert (=> b!944805 (= e!531360 tp_is_empty!20587)))

(declare-fun b!944806 () Bool)

(assert (=> b!944806 (= e!531358 false)))

(declare-datatypes ((Unit!31869 0))(
  ( (Unit!31870) )
))
(declare-fun lt!425751 () Unit!31869)

(declare-fun e!531355 () Unit!31869)

(assert (=> b!944806 (= lt!425751 e!531355)))

(declare-fun c!98254 () Bool)

(declare-datatypes ((tuple2!13594 0))(
  ( (tuple2!13595 (_1!6807 (_ BitVec 64)) (_2!6807 V!32415)) )
))
(declare-datatypes ((List!19411 0))(
  ( (Nil!19408) (Cons!19407 (h!20558 tuple2!13594) (t!27736 List!19411)) )
))
(declare-datatypes ((ListLongMap!12305 0))(
  ( (ListLongMap!12306 (toList!6168 List!19411)) )
))
(declare-fun contains!5191 (ListLongMap!12305 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3356 (array!57166 array!57164 (_ BitVec 32) (_ BitVec 32) V!32415 V!32415 (_ BitVec 32) Int) ListLongMap!12305)

(assert (=> b!944806 (= c!98254 (contains!5191 (getCurrentListMap!3356 (_keys!10556 thiss!1141) (_values!5705 thiss!1141) (mask!27335 thiss!1141) (extraKeys!5414 thiss!1141) (zeroValue!5518 thiss!1141) (minValue!5518 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5682 thiss!1141)) key!756))))

(declare-fun b!944807 () Bool)

(declare-fun res!634801 () Bool)

(assert (=> b!944807 (=> (not res!634801) (not e!531358))))

(assert (=> b!944807 (= res!634801 (and (not (= key!756 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!756 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!944808 () Bool)

(declare-fun Unit!31871 () Unit!31869)

(assert (=> b!944808 (= e!531355 Unit!31871)))

(declare-fun lt!425753 () Unit!31869)

(declare-fun lemmaKeyInListMapIsInArray!318 (array!57166 array!57164 (_ BitVec 32) (_ BitVec 32) V!32415 V!32415 (_ BitVec 64) Int) Unit!31869)

(assert (=> b!944808 (= lt!425753 (lemmaKeyInListMapIsInArray!318 (_keys!10556 thiss!1141) (_values!5705 thiss!1141) (mask!27335 thiss!1141) (extraKeys!5414 thiss!1141) (zeroValue!5518 thiss!1141) (minValue!5518 thiss!1141) key!756 (defaultEntry!5682 thiss!1141)))))

(declare-fun arrayContainsKey!0 (array!57166 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!944808 (arrayContainsKey!0 (_keys!10556 thiss!1141) key!756 #b00000000000000000000000000000000)))

(declare-fun lt!425752 () (_ BitVec 32))

(declare-fun arrayScanForKey!0 (array!57166 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!944808 (= lt!425752 (arrayScanForKey!0 (_keys!10556 thiss!1141) key!756 #b00000000000000000000000000000000))))

(declare-fun lt!425749 () Unit!31869)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!57166 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!31869)

(assert (=> b!944808 (= lt!425749 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (_keys!10556 thiss!1141) (mask!27335 thiss!1141) #b00000000000000000000000000000000 lt!425752))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!57166 (_ BitVec 32)) Bool)

(assert (=> b!944808 (arrayForallSeekEntryOrOpenFound!0 lt!425752 (_keys!10556 thiss!1141) (mask!27335 thiss!1141))))

(declare-fun lt!425750 () Unit!31869)

(declare-fun lemmaSeekEntryOrOpenFindsThenSeekEntryFinds!0 ((_ BitVec 64) (_ BitVec 32) array!57166 (_ BitVec 32)) Unit!31869)

(assert (=> b!944808 (= lt!425750 (lemmaSeekEntryOrOpenFindsThenSeekEntryFinds!0 key!756 lt!425752 (_keys!10556 thiss!1141) (mask!27335 thiss!1141)))))

(assert (=> b!944808 false))

(declare-fun b!944809 () Bool)

(declare-fun Unit!31872 () Unit!31869)

(assert (=> b!944809 (= e!531355 Unit!31872)))

(declare-fun res!634799 () Bool)

(assert (=> start!80464 (=> (not res!634799) (not e!531358))))

(declare-fun valid!1801 (LongMapFixedSize!4774) Bool)

(assert (=> start!80464 (= res!634799 (valid!1801 thiss!1141))))

(assert (=> start!80464 e!531358))

(declare-fun e!531359 () Bool)

(assert (=> start!80464 e!531359))

(assert (=> start!80464 true))

(declare-fun mapNonEmpty!32706 () Bool)

(declare-fun tp!62748 () Bool)

(assert (=> mapNonEmpty!32706 (= mapRes!32706 (and tp!62748 e!531354))))

(declare-fun mapKey!32706 () (_ BitVec 32))

(declare-fun mapRest!32706 () (Array (_ BitVec 32) ValueCell!9812))

(declare-fun mapValue!32706 () ValueCell!9812)

(assert (=> mapNonEmpty!32706 (= (arr!27503 (_values!5705 thiss!1141)) (store mapRest!32706 mapKey!32706 mapValue!32706))))

(declare-fun e!531357 () Bool)

(declare-fun array_inv!21310 (array!57166) Bool)

(declare-fun array_inv!21311 (array!57164) Bool)

(assert (=> b!944810 (= e!531359 (and tp!62747 tp_is_empty!20587 (array_inv!21310 (_keys!10556 thiss!1141)) (array_inv!21311 (_values!5705 thiss!1141)) e!531357))))

(declare-fun b!944811 () Bool)

(assert (=> b!944811 (= e!531357 (and e!531360 mapRes!32706))))

(declare-fun condMapEmpty!32706 () Bool)

(declare-fun mapDefault!32706 () ValueCell!9812)

