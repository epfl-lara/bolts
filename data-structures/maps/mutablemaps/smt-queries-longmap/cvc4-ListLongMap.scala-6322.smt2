; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!81328 () Bool)

(assert start!81328)

(declare-fun b!950806 () Bool)

(declare-fun b_free!18257 () Bool)

(declare-fun b_next!18257 () Bool)

(assert (=> b!950806 (= b_free!18257 (not b_next!18257))))

(declare-fun tp!63375 () Bool)

(declare-fun b_and!29739 () Bool)

(assert (=> b!950806 (= tp!63375 b_and!29739)))

(declare-fun e!535399 () Bool)

(declare-datatypes ((V!32651 0))(
  ( (V!32652 (val!10433 Int)) )
))
(declare-datatypes ((ValueCell!9901 0))(
  ( (ValueCellFull!9901 (v!12978 V!32651)) (EmptyCell!9901) )
))
(declare-datatypes ((array!57574 0))(
  ( (array!57575 (arr!27681 (Array (_ BitVec 32) ValueCell!9901)) (size!28160 (_ BitVec 32))) )
))
(declare-datatypes ((array!57576 0))(
  ( (array!57577 (arr!27682 (Array (_ BitVec 32) (_ BitVec 64))) (size!28161 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4952 0))(
  ( (LongMapFixedSize!4953 (defaultEntry!5793 Int) (mask!27598 (_ BitVec 32)) (extraKeys!5525 (_ BitVec 32)) (zeroValue!5629 V!32651) (minValue!5629 V!32651) (_size!2531 (_ BitVec 32)) (_keys!10730 array!57576) (_values!5816 array!57574) (_vacant!2531 (_ BitVec 32))) )
))
(declare-fun thiss!1141 () LongMapFixedSize!4952)

(declare-fun tp_is_empty!20765 () Bool)

(declare-fun e!535394 () Bool)

(declare-fun array_inv!21426 (array!57576) Bool)

(declare-fun array_inv!21427 (array!57574) Bool)

(assert (=> b!950806 (= e!535394 (and tp!63375 tp_is_empty!20765 (array_inv!21426 (_keys!10730 thiss!1141)) (array_inv!21427 (_values!5816 thiss!1141)) e!535399))))

(declare-fun b!950807 () Bool)

(declare-fun res!637444 () Bool)

(declare-fun e!535396 () Bool)

(assert (=> b!950807 (=> (not res!637444) (not e!535396))))

(declare-fun key!756 () (_ BitVec 64))

(assert (=> b!950807 (= res!637444 (and (not (= key!756 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!756 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!950808 () Bool)

(declare-fun e!535395 () Bool)

(assert (=> b!950808 (= e!535395 (or (not (= (size!28161 (_keys!10730 thiss!1141)) (bvadd #b00000000000000000000000000000001 (mask!27598 thiss!1141)))) (bvsle #b00000000000000000000000000000000 (size!28161 (_keys!10730 thiss!1141)))))))

(declare-fun b!950809 () Bool)

(declare-fun res!637442 () Bool)

(assert (=> b!950809 (=> (not res!637442) (not e!535396))))

(declare-datatypes ((SeekEntryResult!9133 0))(
  ( (MissingZero!9133 (index!38902 (_ BitVec 32))) (Found!9133 (index!38903 (_ BitVec 32))) (Intermediate!9133 (undefined!9945 Bool) (index!38904 (_ BitVec 32)) (x!81788 (_ BitVec 32))) (Undefined!9133) (MissingVacant!9133 (index!38905 (_ BitVec 32))) )
))
(declare-fun seekEntry!0 ((_ BitVec 64) array!57576 (_ BitVec 32)) SeekEntryResult!9133)

(assert (=> b!950809 (= res!637442 (not (is-Found!9133 (seekEntry!0 key!756 (_keys!10730 thiss!1141) (mask!27598 thiss!1141)))))))

(declare-fun b!950810 () Bool)

(declare-fun e!535397 () Bool)

(assert (=> b!950810 (= e!535397 tp_is_empty!20765)))

(declare-fun b!950811 () Bool)

(declare-fun mapRes!33066 () Bool)

(assert (=> b!950811 (= e!535399 (and e!535397 mapRes!33066))))

(declare-fun condMapEmpty!33066 () Bool)

(declare-fun mapDefault!33066 () ValueCell!9901)

