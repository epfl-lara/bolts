; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!80846 () Bool)

(assert start!80846)

(declare-fun b!947229 () Bool)

(declare-fun b_free!18173 () Bool)

(declare-fun b_next!18173 () Bool)

(assert (=> b!947229 (= b_free!18173 (not b_next!18173))))

(declare-fun tp!63078 () Bool)

(declare-fun b_and!29613 () Bool)

(assert (=> b!947229 (= tp!63078 b_and!29613)))

(declare-fun b!947222 () Bool)

(declare-fun e!533162 () Bool)

(declare-datatypes ((SeekEntryResult!9106 0))(
  ( (MissingZero!9106 (index!38794 (_ BitVec 32))) (Found!9106 (index!38795 (_ BitVec 32))) (Intermediate!9106 (undefined!9918 Bool) (index!38796 (_ BitVec 32)) (x!81483 (_ BitVec 32))) (Undefined!9106) (MissingVacant!9106 (index!38797 (_ BitVec 32))) )
))
(declare-fun lt!426502 () SeekEntryResult!9106)

(declare-datatypes ((V!32539 0))(
  ( (V!32540 (val!10391 Int)) )
))
(declare-datatypes ((ValueCell!9859 0))(
  ( (ValueCellFull!9859 (v!12925 V!32539)) (EmptyCell!9859) )
))
(declare-datatypes ((array!57380 0))(
  ( (array!57381 (arr!27597 (Array (_ BitVec 32) ValueCell!9859)) (size!28071 (_ BitVec 32))) )
))
(declare-datatypes ((array!57382 0))(
  ( (array!57383 (arr!27598 (Array (_ BitVec 32) (_ BitVec 64))) (size!28072 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4868 0))(
  ( (LongMapFixedSize!4869 (defaultEntry!5731 Int) (mask!27459 (_ BitVec 32)) (extraKeys!5463 (_ BitVec 32)) (zeroValue!5567 V!32539) (minValue!5567 V!32539) (_size!2489 (_ BitVec 32)) (_keys!10636 array!57382) (_values!5754 array!57380) (_vacant!2489 (_ BitVec 32))) )
))
(declare-fun thiss!1141 () LongMapFixedSize!4868)

(assert (=> b!947222 (= e!533162 (and (bvsge (index!38795 lt!426502) #b00000000000000000000000000000000) (bvslt (index!38795 lt!426502) (size!28072 (_keys!10636 thiss!1141)))))))

(declare-fun b!947223 () Bool)

(declare-fun e!533164 () Bool)

(declare-fun tp_is_empty!20681 () Bool)

(assert (=> b!947223 (= e!533164 tp_is_empty!20681)))

(declare-fun b!947224 () Bool)

(declare-fun e!533158 () Bool)

(assert (=> b!947224 (= e!533158 (not e!533162))))

(declare-fun res!635828 () Bool)

(assert (=> b!947224 (=> res!635828 e!533162)))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!947224 (= res!635828 (not (validMask!0 (mask!27459 thiss!1141))))))

(declare-fun key!756 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!57382 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!947224 (arrayContainsKey!0 (_keys!10636 thiss!1141) key!756 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!31921 0))(
  ( (Unit!31922) )
))
(declare-fun lt!426503 () Unit!31921)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!57382 (_ BitVec 64) (_ BitVec 32)) Unit!31921)

(assert (=> b!947224 (= lt!426503 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!10636 thiss!1141) key!756 (index!38795 lt!426502)))))

(declare-fun b!947225 () Bool)

(declare-fun res!635829 () Bool)

(declare-fun e!533163 () Bool)

(assert (=> b!947225 (=> (not res!635829) (not e!533163))))

(assert (=> b!947225 (= res!635829 (and (not (= key!756 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!756 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!947226 () Bool)

(declare-fun res!635826 () Bool)

(assert (=> b!947226 (=> res!635826 e!533162)))

(assert (=> b!947226 (= res!635826 (or (not (= (size!28071 (_values!5754 thiss!1141)) (bvadd #b00000000000000000000000000000001 (mask!27459 thiss!1141)))) (not (= (size!28072 (_keys!10636 thiss!1141)) (size!28071 (_values!5754 thiss!1141)))) (bvslt (mask!27459 thiss!1141) #b00000000000000000000000000000000) (bvslt (extraKeys!5463 thiss!1141) #b00000000000000000000000000000000) (bvsgt (extraKeys!5463 thiss!1141) #b00000000000000000000000000000011)))))

(declare-fun b!947227 () Bool)

(declare-fun e!533160 () Bool)

(assert (=> b!947227 (= e!533160 tp_is_empty!20681)))

(declare-fun res!635825 () Bool)

(assert (=> start!80846 (=> (not res!635825) (not e!533163))))

(declare-fun valid!1833 (LongMapFixedSize!4868) Bool)

(assert (=> start!80846 (= res!635825 (valid!1833 thiss!1141))))

(assert (=> start!80846 e!533163))

(declare-fun e!533161 () Bool)

(assert (=> start!80846 e!533161))

(assert (=> start!80846 true))

(declare-fun b!947228 () Bool)

(declare-fun res!635830 () Bool)

(assert (=> b!947228 (=> res!635830 e!533162)))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!57382 (_ BitVec 32)) Bool)

(assert (=> b!947228 (= res!635830 (not (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!10636 thiss!1141) (mask!27459 thiss!1141))))))

(declare-fun mapIsEmpty!32896 () Bool)

(declare-fun mapRes!32896 () Bool)

(assert (=> mapIsEmpty!32896 mapRes!32896))

(declare-fun mapNonEmpty!32896 () Bool)

(declare-fun tp!63079 () Bool)

(assert (=> mapNonEmpty!32896 (= mapRes!32896 (and tp!63079 e!533160))))

(declare-fun mapValue!32896 () ValueCell!9859)

(declare-fun mapKey!32896 () (_ BitVec 32))

(declare-fun mapRest!32896 () (Array (_ BitVec 32) ValueCell!9859))

(assert (=> mapNonEmpty!32896 (= (arr!27597 (_values!5754 thiss!1141)) (store mapRest!32896 mapKey!32896 mapValue!32896))))

(declare-fun e!533157 () Bool)

(declare-fun array_inv!21372 (array!57382) Bool)

(declare-fun array_inv!21373 (array!57380) Bool)

(assert (=> b!947229 (= e!533161 (and tp!63078 tp_is_empty!20681 (array_inv!21372 (_keys!10636 thiss!1141)) (array_inv!21373 (_values!5754 thiss!1141)) e!533157))))

(declare-fun b!947230 () Bool)

(declare-fun res!635827 () Bool)

(assert (=> b!947230 (=> res!635827 e!533162)))

(declare-datatypes ((List!19435 0))(
  ( (Nil!19432) (Cons!19431 (h!20587 (_ BitVec 64)) (t!27764 List!19435)) )
))
(declare-fun arrayNoDuplicates!0 (array!57382 (_ BitVec 32) List!19435) Bool)

(assert (=> b!947230 (= res!635827 (not (arrayNoDuplicates!0 (_keys!10636 thiss!1141) #b00000000000000000000000000000000 Nil!19432)))))

(declare-fun b!947231 () Bool)

(assert (=> b!947231 (= e!533163 e!533158)))

(declare-fun res!635831 () Bool)

(assert (=> b!947231 (=> (not res!635831) (not e!533158))))

(assert (=> b!947231 (= res!635831 (is-Found!9106 lt!426502))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!57382 (_ BitVec 32)) SeekEntryResult!9106)

(assert (=> b!947231 (= lt!426502 (seekEntry!0 key!756 (_keys!10636 thiss!1141) (mask!27459 thiss!1141)))))

(declare-fun b!947232 () Bool)

(assert (=> b!947232 (= e!533157 (and e!533164 mapRes!32896))))

(declare-fun condMapEmpty!32896 () Bool)

(declare-fun mapDefault!32896 () ValueCell!9859)

