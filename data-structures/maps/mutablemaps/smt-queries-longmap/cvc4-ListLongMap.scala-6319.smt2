; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!81232 () Bool)

(assert start!81232)

(declare-fun b!950115 () Bool)

(declare-fun b_free!18239 () Bool)

(declare-fun b_next!18239 () Bool)

(assert (=> b!950115 (= b_free!18239 (not b_next!18239))))

(declare-fun tp!63314 () Bool)

(declare-fun b_and!29713 () Bool)

(assert (=> b!950115 (= tp!63314 b_and!29713)))

(declare-fun b!950111 () Bool)

(declare-fun e!534947 () Bool)

(declare-fun tp_is_empty!20747 () Bool)

(assert (=> b!950111 (= e!534947 tp_is_empty!20747)))

(declare-fun b!950112 () Bool)

(declare-fun res!637142 () Bool)

(declare-fun e!534945 () Bool)

(assert (=> b!950112 (=> (not res!637142) (not e!534945))))

(declare-fun key!756 () (_ BitVec 64))

(declare-datatypes ((V!32627 0))(
  ( (V!32628 (val!10424 Int)) )
))
(declare-datatypes ((ValueCell!9892 0))(
  ( (ValueCellFull!9892 (v!12967 V!32627)) (EmptyCell!9892) )
))
(declare-datatypes ((array!57534 0))(
  ( (array!57535 (arr!27663 (Array (_ BitVec 32) ValueCell!9892)) (size!28141 (_ BitVec 32))) )
))
(declare-datatypes ((array!57536 0))(
  ( (array!57537 (arr!27664 (Array (_ BitVec 32) (_ BitVec 64))) (size!28142 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4934 0))(
  ( (LongMapFixedSize!4935 (defaultEntry!5778 Int) (mask!27569 (_ BitVec 32)) (extraKeys!5510 (_ BitVec 32)) (zeroValue!5614 V!32627) (minValue!5614 V!32627) (_size!2522 (_ BitVec 32)) (_keys!10710 array!57536) (_values!5801 array!57534) (_vacant!2522 (_ BitVec 32))) )
))
(declare-fun thiss!1141 () LongMapFixedSize!4934)

(declare-datatypes ((SeekEntryResult!9129 0))(
  ( (MissingZero!9129 (index!38886 (_ BitVec 32))) (Found!9129 (index!38887 (_ BitVec 32))) (Intermediate!9129 (undefined!9941 Bool) (index!38888 (_ BitVec 32)) (x!81732 (_ BitVec 32))) (Undefined!9129) (MissingVacant!9129 (index!38889 (_ BitVec 32))) )
))
(declare-fun seekEntry!0 ((_ BitVec 64) array!57536 (_ BitVec 32)) SeekEntryResult!9129)

(assert (=> b!950112 (= res!637142 (not (is-Found!9129 (seekEntry!0 key!756 (_keys!10710 thiss!1141) (mask!27569 thiss!1141)))))))

(declare-fun b!950113 () Bool)

(assert (=> b!950113 (= e!534945 false)))

(declare-fun lt!427883 () Bool)

(declare-datatypes ((List!19469 0))(
  ( (Nil!19466) (Cons!19465 (h!20625 (_ BitVec 64)) (t!27816 List!19469)) )
))
(declare-fun arrayNoDuplicates!0 (array!57536 (_ BitVec 32) List!19469) Bool)

(assert (=> b!950113 (= lt!427883 (arrayNoDuplicates!0 (_keys!10710 thiss!1141) #b00000000000000000000000000000000 Nil!19466))))

(declare-fun mapNonEmpty!33032 () Bool)

(declare-fun mapRes!33032 () Bool)

(declare-fun tp!63313 () Bool)

(declare-fun e!534942 () Bool)

(assert (=> mapNonEmpty!33032 (= mapRes!33032 (and tp!63313 e!534942))))

(declare-fun mapRest!33032 () (Array (_ BitVec 32) ValueCell!9892))

(declare-fun mapKey!33032 () (_ BitVec 32))

(declare-fun mapValue!33032 () ValueCell!9892)

(assert (=> mapNonEmpty!33032 (= (arr!27663 (_values!5801 thiss!1141)) (store mapRest!33032 mapKey!33032 mapValue!33032))))

(declare-fun b!950114 () Bool)

(declare-fun e!534946 () Bool)

(assert (=> b!950114 (= e!534946 (and e!534947 mapRes!33032))))

(declare-fun condMapEmpty!33032 () Bool)

(declare-fun mapDefault!33032 () ValueCell!9892)

