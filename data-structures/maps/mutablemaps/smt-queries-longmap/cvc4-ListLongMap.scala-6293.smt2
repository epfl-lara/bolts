; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!80468 () Bool)

(assert start!80468)

(declare-fun b!944861 () Bool)

(declare-fun b_free!18083 () Bool)

(declare-fun b_next!18083 () Bool)

(assert (=> b!944861 (= b_free!18083 (not b_next!18083))))

(declare-fun tp!62760 () Bool)

(declare-fun b_and!29519 () Bool)

(assert (=> b!944861 (= tp!62760 b_and!29519)))

(declare-fun b!944857 () Bool)

(declare-datatypes ((Unit!31877 0))(
  ( (Unit!31878) )
))
(declare-fun e!531401 () Unit!31877)

(declare-fun Unit!31879 () Unit!31877)

(assert (=> b!944857 (= e!531401 Unit!31879)))

(declare-fun b!944858 () Bool)

(declare-fun res!634819 () Bool)

(declare-fun e!531397 () Bool)

(assert (=> b!944858 (=> (not res!634819) (not e!531397))))

(declare-fun key!756 () (_ BitVec 64))

(declare-datatypes ((V!32419 0))(
  ( (V!32420 (val!10346 Int)) )
))
(declare-datatypes ((ValueCell!9814 0))(
  ( (ValueCellFull!9814 (v!12878 V!32419)) (EmptyCell!9814) )
))
(declare-datatypes ((array!57172 0))(
  ( (array!57173 (arr!27507 (Array (_ BitVec 32) ValueCell!9814)) (size!27974 (_ BitVec 32))) )
))
(declare-datatypes ((array!57174 0))(
  ( (array!57175 (arr!27508 (Array (_ BitVec 32) (_ BitVec 64))) (size!27975 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4778 0))(
  ( (LongMapFixedSize!4779 (defaultEntry!5684 Int) (mask!27337 (_ BitVec 32)) (extraKeys!5416 (_ BitVec 32)) (zeroValue!5520 V!32419) (minValue!5520 V!32419) (_size!2444 (_ BitVec 32)) (_keys!10558 array!57174) (_values!5707 array!57172) (_vacant!2444 (_ BitVec 32))) )
))
(declare-fun thiss!1141 () LongMapFixedSize!4778)

(declare-datatypes ((SeekEntryResult!9074 0))(
  ( (MissingZero!9074 (index!38666 (_ BitVec 32))) (Found!9074 (index!38667 (_ BitVec 32))) (Intermediate!9074 (undefined!9886 Bool) (index!38668 (_ BitVec 32)) (x!81158 (_ BitVec 32))) (Undefined!9074) (MissingVacant!9074 (index!38669 (_ BitVec 32))) )
))
(declare-fun seekEntry!0 ((_ BitVec 64) array!57174 (_ BitVec 32)) SeekEntryResult!9074)

(assert (=> b!944858 (= res!634819 (not (is-Found!9074 (seekEntry!0 key!756 (_keys!10558 thiss!1141) (mask!27337 thiss!1141)))))))

(declare-fun b!944859 () Bool)

(declare-fun e!531396 () Bool)

(declare-fun tp_is_empty!20591 () Bool)

(assert (=> b!944859 (= e!531396 tp_is_empty!20591)))

(declare-fun b!944860 () Bool)

(declare-fun Unit!31880 () Unit!31877)

(assert (=> b!944860 (= e!531401 Unit!31880)))

(declare-fun lt!425781 () Unit!31877)

(declare-fun lemmaKeyInListMapIsInArray!320 (array!57174 array!57172 (_ BitVec 32) (_ BitVec 32) V!32419 V!32419 (_ BitVec 64) Int) Unit!31877)

(assert (=> b!944860 (= lt!425781 (lemmaKeyInListMapIsInArray!320 (_keys!10558 thiss!1141) (_values!5707 thiss!1141) (mask!27337 thiss!1141) (extraKeys!5416 thiss!1141) (zeroValue!5520 thiss!1141) (minValue!5520 thiss!1141) key!756 (defaultEntry!5684 thiss!1141)))))

(declare-fun arrayContainsKey!0 (array!57174 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!944860 (arrayContainsKey!0 (_keys!10558 thiss!1141) key!756 #b00000000000000000000000000000000)))

(declare-fun lt!425782 () (_ BitVec 32))

(declare-fun arrayScanForKey!0 (array!57174 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!944860 (= lt!425782 (arrayScanForKey!0 (_keys!10558 thiss!1141) key!756 #b00000000000000000000000000000000))))

(declare-fun lt!425783 () Unit!31877)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!57174 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!31877)

(assert (=> b!944860 (= lt!425783 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (_keys!10558 thiss!1141) (mask!27337 thiss!1141) #b00000000000000000000000000000000 lt!425782))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!57174 (_ BitVec 32)) Bool)

(assert (=> b!944860 (arrayForallSeekEntryOrOpenFound!0 lt!425782 (_keys!10558 thiss!1141) (mask!27337 thiss!1141))))

(declare-fun lt!425780 () Unit!31877)

(declare-fun lemmaSeekEntryOrOpenFindsThenSeekEntryFinds!0 ((_ BitVec 64) (_ BitVec 32) array!57174 (_ BitVec 32)) Unit!31877)

(assert (=> b!944860 (= lt!425780 (lemmaSeekEntryOrOpenFindsThenSeekEntryFinds!0 key!756 lt!425782 (_keys!10558 thiss!1141) (mask!27337 thiss!1141)))))

(assert (=> b!944860 false))

(declare-fun e!531398 () Bool)

(declare-fun e!531400 () Bool)

(declare-fun array_inv!21314 (array!57174) Bool)

(declare-fun array_inv!21315 (array!57172) Bool)

(assert (=> b!944861 (= e!531398 (and tp!62760 tp_is_empty!20591 (array_inv!21314 (_keys!10558 thiss!1141)) (array_inv!21315 (_values!5707 thiss!1141)) e!531400))))

(declare-fun b!944862 () Bool)

(declare-fun mapRes!32712 () Bool)

(assert (=> b!944862 (= e!531400 (and e!531396 mapRes!32712))))

(declare-fun condMapEmpty!32712 () Bool)

(declare-fun mapDefault!32712 () ValueCell!9814)

