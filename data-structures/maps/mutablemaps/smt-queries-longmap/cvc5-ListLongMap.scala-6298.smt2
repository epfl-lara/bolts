; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!80566 () Bool)

(assert start!80566)

(declare-fun b!945498 () Bool)

(declare-fun b_free!18109 () Bool)

(declare-fun b_next!18109 () Bool)

(assert (=> b!945498 (= b_free!18109 (not b_next!18109))))

(declare-fun tp!62851 () Bool)

(declare-fun b_and!29549 () Bool)

(assert (=> b!945498 (= tp!62851 b_and!29549)))

(declare-fun mapIsEmpty!32765 () Bool)

(declare-fun mapRes!32765 () Bool)

(assert (=> mapIsEmpty!32765 mapRes!32765))

(declare-fun b!945494 () Bool)

(declare-fun e!531873 () Bool)

(declare-datatypes ((SeekEntryResult!9081 0))(
  ( (MissingZero!9081 (index!38694 (_ BitVec 32))) (Found!9081 (index!38695 (_ BitVec 32))) (Intermediate!9081 (undefined!9893 Bool) (index!38696 (_ BitVec 32)) (x!81253 (_ BitVec 32))) (Undefined!9081) (MissingVacant!9081 (index!38697 (_ BitVec 32))) )
))
(declare-fun lt!426014 () SeekEntryResult!9081)

(declare-datatypes ((V!32455 0))(
  ( (V!32456 (val!10359 Int)) )
))
(declare-datatypes ((ValueCell!9827 0))(
  ( (ValueCellFull!9827 (v!12893 V!32455)) (EmptyCell!9827) )
))
(declare-datatypes ((array!57232 0))(
  ( (array!57233 (arr!27533 (Array (_ BitVec 32) ValueCell!9827)) (size!28002 (_ BitVec 32))) )
))
(declare-datatypes ((array!57234 0))(
  ( (array!57235 (arr!27534 (Array (_ BitVec 32) (_ BitVec 64))) (size!28003 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4804 0))(
  ( (LongMapFixedSize!4805 (defaultEntry!5699 Int) (mask!27366 (_ BitVec 32)) (extraKeys!5431 (_ BitVec 32)) (zeroValue!5535 V!32455) (minValue!5535 V!32455) (_size!2457 (_ BitVec 32)) (_keys!10577 array!57234) (_values!5722 array!57232) (_vacant!2457 (_ BitVec 32))) )
))
(declare-fun thiss!1141 () LongMapFixedSize!4804)

(assert (=> b!945494 (= e!531873 (and (is-Found!9081 lt!426014) (bvsge (index!38695 lt!426014) #b00000000000000000000000000000000) (bvslt (index!38695 lt!426014) (size!28003 (_keys!10577 thiss!1141))) (bvsge (size!28003 (_keys!10577 thiss!1141)) #b01111111111111111111111111111111)))))

(declare-fun key!756 () (_ BitVec 64))

(declare-fun seekEntry!0 ((_ BitVec 64) array!57234 (_ BitVec 32)) SeekEntryResult!9081)

(assert (=> b!945494 (= lt!426014 (seekEntry!0 key!756 (_keys!10577 thiss!1141) (mask!27366 thiss!1141)))))

(declare-fun b!945495 () Bool)

(declare-fun e!531869 () Bool)

(declare-fun tp_is_empty!20617 () Bool)

(assert (=> b!945495 (= e!531869 tp_is_empty!20617)))

(declare-fun res!635064 () Bool)

(assert (=> start!80566 (=> (not res!635064) (not e!531873))))

(declare-fun valid!1811 (LongMapFixedSize!4804) Bool)

(assert (=> start!80566 (= res!635064 (valid!1811 thiss!1141))))

(assert (=> start!80566 e!531873))

(declare-fun e!531872 () Bool)

(assert (=> start!80566 e!531872))

(assert (=> start!80566 true))

(declare-fun mapNonEmpty!32765 () Bool)

(declare-fun tp!62852 () Bool)

(assert (=> mapNonEmpty!32765 (= mapRes!32765 (and tp!62852 e!531869))))

(declare-fun mapKey!32765 () (_ BitVec 32))

(declare-fun mapRest!32765 () (Array (_ BitVec 32) ValueCell!9827))

(declare-fun mapValue!32765 () ValueCell!9827)

(assert (=> mapNonEmpty!32765 (= (arr!27533 (_values!5722 thiss!1141)) (store mapRest!32765 mapKey!32765 mapValue!32765))))

(declare-fun b!945496 () Bool)

(declare-fun res!635065 () Bool)

(assert (=> b!945496 (=> (not res!635065) (not e!531873))))

(assert (=> b!945496 (= res!635065 (and (not (= key!756 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!756 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!945497 () Bool)

(declare-fun e!531870 () Bool)

(assert (=> b!945497 (= e!531870 tp_is_empty!20617)))

(declare-fun e!531874 () Bool)

(declare-fun array_inv!21336 (array!57234) Bool)

(declare-fun array_inv!21337 (array!57232) Bool)

(assert (=> b!945498 (= e!531872 (and tp!62851 tp_is_empty!20617 (array_inv!21336 (_keys!10577 thiss!1141)) (array_inv!21337 (_values!5722 thiss!1141)) e!531874))))

(declare-fun b!945499 () Bool)

(assert (=> b!945499 (= e!531874 (and e!531870 mapRes!32765))))

(declare-fun condMapEmpty!32765 () Bool)

(declare-fun mapDefault!32765 () ValueCell!9827)

