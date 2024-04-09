; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!80198 () Bool)

(assert start!80198)

(declare-fun b!941853 () Bool)

(declare-fun b_free!17933 () Bool)

(declare-fun b_next!17933 () Bool)

(assert (=> b!941853 (= b_free!17933 (not b_next!17933))))

(declare-fun tp!62293 () Bool)

(declare-fun b_and!29363 () Bool)

(assert (=> b!941853 (= tp!62293 b_and!29363)))

(declare-fun tp_is_empty!20441 () Bool)

(declare-datatypes ((V!32219 0))(
  ( (V!32220 (val!10271 Int)) )
))
(declare-datatypes ((ValueCell!9739 0))(
  ( (ValueCellFull!9739 (v!12802 V!32219)) (EmptyCell!9739) )
))
(declare-datatypes ((array!56862 0))(
  ( (array!56863 (arr!27357 (Array (_ BitVec 32) ValueCell!9739)) (size!27822 (_ BitVec 32))) )
))
(declare-datatypes ((array!56864 0))(
  ( (array!56865 (arr!27358 (Array (_ BitVec 32) (_ BitVec 64))) (size!27823 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4628 0))(
  ( (LongMapFixedSize!4629 (defaultEntry!5605 Int) (mask!27187 (_ BitVec 32)) (extraKeys!5337 (_ BitVec 32)) (zeroValue!5441 V!32219) (minValue!5441 V!32219) (_size!2369 (_ BitVec 32)) (_keys!10465 array!56864) (_values!5628 array!56862) (_vacant!2369 (_ BitVec 32))) )
))
(declare-fun thiss!1141 () LongMapFixedSize!4628)

(declare-fun e!529578 () Bool)

(declare-fun e!529579 () Bool)

(declare-fun array_inv!21216 (array!56864) Bool)

(declare-fun array_inv!21217 (array!56862) Bool)

(assert (=> b!941853 (= e!529578 (and tp!62293 tp_is_empty!20441 (array_inv!21216 (_keys!10465 thiss!1141)) (array_inv!21217 (_values!5628 thiss!1141)) e!529579))))

(declare-fun mapIsEmpty!32470 () Bool)

(declare-fun mapRes!32470 () Bool)

(assert (=> mapIsEmpty!32470 mapRes!32470))

(declare-fun b!941854 () Bool)

(declare-fun e!529577 () Bool)

(assert (=> b!941854 (= e!529577 tp_is_empty!20441)))

(declare-fun b!941855 () Bool)

(declare-fun e!529576 () Bool)

(assert (=> b!941855 (= e!529576 tp_is_empty!20441)))

(declare-fun res!633121 () Bool)

(declare-fun e!529580 () Bool)

(assert (=> start!80198 (=> (not res!633121) (not e!529580))))

(declare-fun valid!1753 (LongMapFixedSize!4628) Bool)

(assert (=> start!80198 (= res!633121 (valid!1753 thiss!1141))))

(assert (=> start!80198 e!529580))

(assert (=> start!80198 e!529578))

(assert (=> start!80198 true))

(declare-fun mapNonEmpty!32470 () Bool)

(declare-fun tp!62292 () Bool)

(assert (=> mapNonEmpty!32470 (= mapRes!32470 (and tp!62292 e!529577))))

(declare-fun mapRest!32470 () (Array (_ BitVec 32) ValueCell!9739))

(declare-fun mapValue!32470 () ValueCell!9739)

(declare-fun mapKey!32470 () (_ BitVec 32))

(assert (=> mapNonEmpty!32470 (= (arr!27357 (_values!5628 thiss!1141)) (store mapRest!32470 mapKey!32470 mapValue!32470))))

(declare-fun b!941856 () Bool)

(declare-fun res!633122 () Bool)

(assert (=> b!941856 (=> (not res!633122) (not e!529580))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!941856 (= res!633122 (validMask!0 (mask!27187 thiss!1141)))))

(declare-fun b!941857 () Bool)

(declare-fun res!633119 () Bool)

(assert (=> b!941857 (=> (not res!633119) (not e!529580))))

(declare-fun key!756 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!9020 0))(
  ( (MissingZero!9020 (index!38450 (_ BitVec 32))) (Found!9020 (index!38451 (_ BitVec 32))) (Intermediate!9020 (undefined!9832 Bool) (index!38452 (_ BitVec 32)) (x!80845 (_ BitVec 32))) (Undefined!9020) (MissingVacant!9020 (index!38453 (_ BitVec 32))) )
))
(declare-fun seekEntry!0 ((_ BitVec 64) array!56864 (_ BitVec 32)) SeekEntryResult!9020)

(assert (=> b!941857 (= res!633119 (not (is-Found!9020 (seekEntry!0 key!756 (_keys!10465 thiss!1141) (mask!27187 thiss!1141)))))))

(declare-fun b!941858 () Bool)

(assert (=> b!941858 (= e!529580 (and (= (size!27822 (_values!5628 thiss!1141)) (bvadd #b00000000000000000000000000000001 (mask!27187 thiss!1141))) (= (size!27823 (_keys!10465 thiss!1141)) (size!27822 (_values!5628 thiss!1141))) (bvsge (mask!27187 thiss!1141) #b00000000000000000000000000000000) (bvsge (extraKeys!5337 thiss!1141) #b00000000000000000000000000000000) (bvsgt (extraKeys!5337 thiss!1141) #b00000000000000000000000000000011)))))

(declare-fun b!941859 () Bool)

(declare-fun res!633120 () Bool)

(assert (=> b!941859 (=> (not res!633120) (not e!529580))))

(assert (=> b!941859 (= res!633120 (and (not (= key!756 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!756 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!941860 () Bool)

(assert (=> b!941860 (= e!529579 (and e!529576 mapRes!32470))))

(declare-fun condMapEmpty!32470 () Bool)

(declare-fun mapDefault!32470 () ValueCell!9739)

