; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!80632 () Bool)

(assert start!80632)

(declare-fun b!945900 () Bool)

(declare-fun b_free!18127 () Bool)

(declare-fun b_next!18127 () Bool)

(assert (=> b!945900 (= b_free!18127 (not b_next!18127))))

(declare-fun tp!62915 () Bool)

(declare-fun b_and!29567 () Bool)

(assert (=> b!945900 (= tp!62915 b_and!29567)))

(declare-fun mapNonEmpty!32802 () Bool)

(declare-fun mapRes!32802 () Bool)

(declare-fun tp!62916 () Bool)

(declare-fun e!532175 () Bool)

(assert (=> mapNonEmpty!32802 (= mapRes!32802 (and tp!62916 e!532175))))

(declare-fun mapKey!32802 () (_ BitVec 32))

(declare-datatypes ((V!32479 0))(
  ( (V!32480 (val!10368 Int)) )
))
(declare-datatypes ((ValueCell!9836 0))(
  ( (ValueCellFull!9836 (v!12902 V!32479)) (EmptyCell!9836) )
))
(declare-fun mapValue!32802 () ValueCell!9836)

(declare-datatypes ((array!57274 0))(
  ( (array!57275 (arr!27551 (Array (_ BitVec 32) ValueCell!9836)) (size!28021 (_ BitVec 32))) )
))
(declare-datatypes ((array!57276 0))(
  ( (array!57277 (arr!27552 (Array (_ BitVec 32) (_ BitVec 64))) (size!28022 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4822 0))(
  ( (LongMapFixedSize!4823 (defaultEntry!5708 Int) (mask!27390 (_ BitVec 32)) (extraKeys!5440 (_ BitVec 32)) (zeroValue!5544 V!32479) (minValue!5544 V!32479) (_size!2466 (_ BitVec 32)) (_keys!10592 array!57276) (_values!5731 array!57274) (_vacant!2466 (_ BitVec 32))) )
))
(declare-fun thiss!1141 () LongMapFixedSize!4822)

(declare-fun mapRest!32802 () (Array (_ BitVec 32) ValueCell!9836))

(assert (=> mapNonEmpty!32802 (= (arr!27551 (_values!5731 thiss!1141)) (store mapRest!32802 mapKey!32802 mapValue!32802))))

(declare-fun b!945893 () Bool)

(declare-fun e!532179 () Bool)

(assert (=> b!945893 (= e!532179 (= (size!28021 (_values!5731 thiss!1141)) (bvadd #b00000000000000000000000000000001 (mask!27390 thiss!1141))))))

(declare-fun res!635216 () Bool)

(declare-fun e!532178 () Bool)

(assert (=> start!80632 (=> (not res!635216) (not e!532178))))

(declare-fun valid!1817 (LongMapFixedSize!4822) Bool)

(assert (=> start!80632 (= res!635216 (valid!1817 thiss!1141))))

(assert (=> start!80632 e!532178))

(declare-fun e!532181 () Bool)

(assert (=> start!80632 e!532181))

(assert (=> start!80632 true))

(declare-fun b!945894 () Bool)

(declare-fun res!635217 () Bool)

(assert (=> b!945894 (=> (not res!635217) (not e!532178))))

(declare-fun key!756 () (_ BitVec 64))

(assert (=> b!945894 (= res!635217 (and (not (= key!756 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!756 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!945895 () Bool)

(declare-fun tp_is_empty!20635 () Bool)

(assert (=> b!945895 (= e!532175 tp_is_empty!20635)))

(declare-fun b!945896 () Bool)

(declare-fun e!532180 () Bool)

(assert (=> b!945896 (= e!532178 e!532180)))

(declare-fun res!635218 () Bool)

(assert (=> b!945896 (=> (not res!635218) (not e!532180))))

(declare-datatypes ((SeekEntryResult!9088 0))(
  ( (MissingZero!9088 (index!38722 (_ BitVec 32))) (Found!9088 (index!38723 (_ BitVec 32))) (Intermediate!9088 (undefined!9900 Bool) (index!38724 (_ BitVec 32)) (x!81317 (_ BitVec 32))) (Undefined!9088) (MissingVacant!9088 (index!38725 (_ BitVec 32))) )
))
(declare-fun lt!426121 () SeekEntryResult!9088)

(assert (=> b!945896 (= res!635218 (is-Found!9088 lt!426121))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!57276 (_ BitVec 32)) SeekEntryResult!9088)

(assert (=> b!945896 (= lt!426121 (seekEntry!0 key!756 (_keys!10592 thiss!1141) (mask!27390 thiss!1141)))))

(declare-fun b!945897 () Bool)

(assert (=> b!945897 (= e!532180 (not e!532179))))

(declare-fun res!635219 () Bool)

(assert (=> b!945897 (=> res!635219 e!532179)))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!945897 (= res!635219 (not (validMask!0 (mask!27390 thiss!1141))))))

(declare-fun arrayContainsKey!0 (array!57276 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!945897 (arrayContainsKey!0 (_keys!10592 thiss!1141) key!756 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!31893 0))(
  ( (Unit!31894) )
))
(declare-fun lt!426122 () Unit!31893)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!57276 (_ BitVec 64) (_ BitVec 32)) Unit!31893)

(assert (=> b!945897 (= lt!426122 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!10592 thiss!1141) key!756 (index!38723 lt!426121)))))

(declare-fun mapIsEmpty!32802 () Bool)

(assert (=> mapIsEmpty!32802 mapRes!32802))

(declare-fun b!945898 () Bool)

(declare-fun e!532177 () Bool)

(declare-fun e!532176 () Bool)

(assert (=> b!945898 (= e!532177 (and e!532176 mapRes!32802))))

(declare-fun condMapEmpty!32802 () Bool)

(declare-fun mapDefault!32802 () ValueCell!9836)

