; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!80708 () Bool)

(assert start!80708)

(declare-fun b!946374 () Bool)

(declare-fun b_free!18143 () Bool)

(declare-fun b_next!18143 () Bool)

(assert (=> b!946374 (= b_free!18143 (not b_next!18143))))

(declare-fun tp!62972 () Bool)

(declare-fun b_and!29583 () Bool)

(assert (=> b!946374 (= tp!62972 b_and!29583)))

(declare-fun b!946367 () Bool)

(declare-fun e!532531 () Bool)

(declare-fun e!532534 () Bool)

(assert (=> b!946367 (= e!532531 e!532534)))

(declare-fun res!635420 () Bool)

(assert (=> b!946367 (=> (not res!635420) (not e!532534))))

(declare-datatypes ((SeekEntryResult!9093 0))(
  ( (MissingZero!9093 (index!38742 (_ BitVec 32))) (Found!9093 (index!38743 (_ BitVec 32))) (Intermediate!9093 (undefined!9905 Bool) (index!38744 (_ BitVec 32)) (x!81372 (_ BitVec 32))) (Undefined!9093) (MissingVacant!9093 (index!38745 (_ BitVec 32))) )
))
(declare-fun lt!426259 () SeekEntryResult!9093)

(assert (=> b!946367 (= res!635420 (is-Found!9093 lt!426259))))

(declare-fun key!756 () (_ BitVec 64))

(declare-datatypes ((V!32499 0))(
  ( (V!32500 (val!10376 Int)) )
))
(declare-datatypes ((ValueCell!9844 0))(
  ( (ValueCellFull!9844 (v!12910 V!32499)) (EmptyCell!9844) )
))
(declare-datatypes ((array!57310 0))(
  ( (array!57311 (arr!27567 (Array (_ BitVec 32) ValueCell!9844)) (size!28039 (_ BitVec 32))) )
))
(declare-datatypes ((array!57312 0))(
  ( (array!57313 (arr!27568 (Array (_ BitVec 32) (_ BitVec 64))) (size!28040 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4838 0))(
  ( (LongMapFixedSize!4839 (defaultEntry!5716 Int) (mask!27414 (_ BitVec 32)) (extraKeys!5448 (_ BitVec 32)) (zeroValue!5552 V!32499) (minValue!5552 V!32499) (_size!2474 (_ BitVec 32)) (_keys!10608 array!57312) (_values!5739 array!57310) (_vacant!2474 (_ BitVec 32))) )
))
(declare-fun thiss!1141 () LongMapFixedSize!4838)

(declare-fun seekEntry!0 ((_ BitVec 64) array!57312 (_ BitVec 32)) SeekEntryResult!9093)

(assert (=> b!946367 (= lt!426259 (seekEntry!0 key!756 (_keys!10608 thiss!1141) (mask!27414 thiss!1141)))))

(declare-fun b!946368 () Bool)

(declare-fun e!532538 () Bool)

(assert (=> b!946368 (= e!532538 (or (not (= (size!28039 (_values!5739 thiss!1141)) (bvadd #b00000000000000000000000000000001 (mask!27414 thiss!1141)))) (not (= (size!28040 (_keys!10608 thiss!1141)) (size!28039 (_values!5739 thiss!1141)))) (bvsge (mask!27414 thiss!1141) #b00000000000000000000000000000000)))))

(declare-fun mapNonEmpty!32834 () Bool)

(declare-fun mapRes!32834 () Bool)

(declare-fun tp!62971 () Bool)

(declare-fun e!532533 () Bool)

(assert (=> mapNonEmpty!32834 (= mapRes!32834 (and tp!62971 e!532533))))

(declare-fun mapKey!32834 () (_ BitVec 32))

(declare-fun mapValue!32834 () ValueCell!9844)

(declare-fun mapRest!32834 () (Array (_ BitVec 32) ValueCell!9844))

(assert (=> mapNonEmpty!32834 (= (arr!27567 (_values!5739 thiss!1141)) (store mapRest!32834 mapKey!32834 mapValue!32834))))

(declare-fun b!946369 () Bool)

(assert (=> b!946369 (= e!532534 (not e!532538))))

(declare-fun res!635422 () Bool)

(assert (=> b!946369 (=> res!635422 e!532538)))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!946369 (= res!635422 (not (validMask!0 (mask!27414 thiss!1141))))))

(declare-fun arrayContainsKey!0 (array!57312 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!946369 (arrayContainsKey!0 (_keys!10608 thiss!1141) key!756 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!31903 0))(
  ( (Unit!31904) )
))
(declare-fun lt!426260 () Unit!31903)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!57312 (_ BitVec 64) (_ BitVec 32)) Unit!31903)

(assert (=> b!946369 (= lt!426260 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!10608 thiss!1141) key!756 (index!38743 lt!426259)))))

(declare-fun res!635421 () Bool)

(assert (=> start!80708 (=> (not res!635421) (not e!532531))))

(declare-fun valid!1824 (LongMapFixedSize!4838) Bool)

(assert (=> start!80708 (= res!635421 (valid!1824 thiss!1141))))

(assert (=> start!80708 e!532531))

(declare-fun e!532535 () Bool)

(assert (=> start!80708 e!532535))

(assert (=> start!80708 true))

(declare-fun mapIsEmpty!32834 () Bool)

(assert (=> mapIsEmpty!32834 mapRes!32834))

(declare-fun b!946370 () Bool)

(declare-fun e!532536 () Bool)

(declare-fun e!532532 () Bool)

(assert (=> b!946370 (= e!532536 (and e!532532 mapRes!32834))))

(declare-fun condMapEmpty!32834 () Bool)

(declare-fun mapDefault!32834 () ValueCell!9844)

