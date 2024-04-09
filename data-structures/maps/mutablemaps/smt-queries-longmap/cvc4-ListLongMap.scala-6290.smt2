; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!80450 () Bool)

(assert start!80450)

(declare-fun b!944560 () Bool)

(declare-fun b_free!18065 () Bool)

(declare-fun b_next!18065 () Bool)

(assert (=> b!944560 (= b_free!18065 (not b_next!18065))))

(declare-fun tp!62705 () Bool)

(declare-fun b_and!29501 () Bool)

(assert (=> b!944560 (= tp!62705 b_and!29501)))

(declare-fun b!944557 () Bool)

(declare-fun e!531212 () Bool)

(declare-fun tp_is_empty!20573 () Bool)

(assert (=> b!944557 (= e!531212 tp_is_empty!20573)))

(declare-fun b!944558 () Bool)

(declare-fun res!634643 () Bool)

(declare-fun e!531211 () Bool)

(assert (=> b!944558 (=> res!634643 e!531211)))

(declare-fun key!756 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!944558 (= res!634643 (not (validKeyInArray!0 key!756)))))

(declare-fun b!944559 () Bool)

(declare-fun res!634645 () Bool)

(assert (=> b!944559 (=> res!634645 e!531211)))

(declare-datatypes ((V!32395 0))(
  ( (V!32396 (val!10337 Int)) )
))
(declare-datatypes ((ValueCell!9805 0))(
  ( (ValueCellFull!9805 (v!12869 V!32395)) (EmptyCell!9805) )
))
(declare-datatypes ((array!57136 0))(
  ( (array!57137 (arr!27489 (Array (_ BitVec 32) ValueCell!9805)) (size!27956 (_ BitVec 32))) )
))
(declare-datatypes ((array!57138 0))(
  ( (array!57139 (arr!27490 (Array (_ BitVec 32) (_ BitVec 64))) (size!27957 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4760 0))(
  ( (LongMapFixedSize!4761 (defaultEntry!5675 Int) (mask!27322 (_ BitVec 32)) (extraKeys!5407 (_ BitVec 32)) (zeroValue!5511 V!32395) (minValue!5511 V!32395) (_size!2435 (_ BitVec 32)) (_keys!10549 array!57138) (_values!5698 array!57136) (_vacant!2435 (_ BitVec 32))) )
))
(declare-fun thiss!1141 () LongMapFixedSize!4760)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!57138 (_ BitVec 32)) Bool)

(assert (=> b!944559 (= res!634645 (not (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!10549 thiss!1141) (mask!27322 thiss!1141))))))

(declare-fun e!531207 () Bool)

(declare-fun e!531213 () Bool)

(declare-fun array_inv!21302 (array!57138) Bool)

(declare-fun array_inv!21303 (array!57136) Bool)

(assert (=> b!944560 (= e!531207 (and tp!62705 tp_is_empty!20573 (array_inv!21302 (_keys!10549 thiss!1141)) (array_inv!21303 (_values!5698 thiss!1141)) e!531213))))

(declare-fun b!944561 () Bool)

(assert (=> b!944561 (= e!531211 true)))

(declare-datatypes ((SeekEntryResult!9065 0))(
  ( (MissingZero!9065 (index!38630 (_ BitVec 32))) (Found!9065 (index!38631 (_ BitVec 32))) (Intermediate!9065 (undefined!9877 Bool) (index!38632 (_ BitVec 32)) (x!81125 (_ BitVec 32))) (Undefined!9065) (MissingVacant!9065 (index!38633 (_ BitVec 32))) )
))
(declare-fun lt!425665 () SeekEntryResult!9065)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!57138 (_ BitVec 32)) SeekEntryResult!9065)

(assert (=> b!944561 (= lt!425665 (seekEntryOrOpen!0 key!756 (_keys!10549 thiss!1141) (mask!27322 thiss!1141)))))

(declare-fun b!944563 () Bool)

(declare-fun e!531210 () Bool)

(declare-fun mapRes!32685 () Bool)

(assert (=> b!944563 (= e!531213 (and e!531210 mapRes!32685))))

(declare-fun condMapEmpty!32685 () Bool)

(declare-fun mapDefault!32685 () ValueCell!9805)

