; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!80994 () Bool)

(assert start!80994)

(declare-fun b!948249 () Bool)

(declare-fun b_free!18199 () Bool)

(declare-fun b_next!18199 () Bool)

(assert (=> b!948249 (= b_free!18199 (not b_next!18199))))

(declare-fun tp!63173 () Bool)

(declare-fun b_and!29649 () Bool)

(assert (=> b!948249 (= tp!63173 b_and!29649)))

(declare-fun b!948246 () Bool)

(declare-fun res!636293 () Bool)

(declare-fun e!533830 () Bool)

(assert (=> b!948246 (=> (not res!636293) (not e!533830))))

(declare-fun key!756 () (_ BitVec 64))

(declare-datatypes ((V!32575 0))(
  ( (V!32576 (val!10404 Int)) )
))
(declare-datatypes ((ValueCell!9872 0))(
  ( (ValueCellFull!9872 (v!12941 V!32575)) (EmptyCell!9872) )
))
(declare-datatypes ((array!57442 0))(
  ( (array!57443 (arr!27623 (Array (_ BitVec 32) ValueCell!9872)) (size!28098 (_ BitVec 32))) )
))
(declare-datatypes ((array!57444 0))(
  ( (array!57445 (arr!27624 (Array (_ BitVec 32) (_ BitVec 64))) (size!28099 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4894 0))(
  ( (LongMapFixedSize!4895 (defaultEntry!5749 Int) (mask!27502 (_ BitVec 32)) (extraKeys!5481 (_ BitVec 32)) (zeroValue!5585 V!32575) (minValue!5585 V!32575) (_size!2502 (_ BitVec 32)) (_keys!10664 array!57444) (_values!5772 array!57442) (_vacant!2502 (_ BitVec 32))) )
))
(declare-fun thiss!1141 () LongMapFixedSize!4894)

(declare-datatypes ((SeekEntryResult!9117 0))(
  ( (MissingZero!9117 (index!38838 (_ BitVec 32))) (Found!9117 (index!38839 (_ BitVec 32))) (Intermediate!9117 (undefined!9929 Bool) (index!38840 (_ BitVec 32)) (x!81588 (_ BitVec 32))) (Undefined!9117) (MissingVacant!9117 (index!38841 (_ BitVec 32))) )
))
(declare-fun seekEntry!0 ((_ BitVec 64) array!57444 (_ BitVec 32)) SeekEntryResult!9117)

(assert (=> b!948246 (= res!636293 (not (is-Found!9117 (seekEntry!0 key!756 (_keys!10664 thiss!1141) (mask!27502 thiss!1141)))))))

(declare-fun b!948247 () Bool)

(declare-fun res!636292 () Bool)

(assert (=> b!948247 (=> (not res!636292) (not e!533830))))

(declare-datatypes ((tuple2!13620 0))(
  ( (tuple2!13621 (_1!6820 (_ BitVec 64)) (_2!6820 V!32575)) )
))
(declare-datatypes ((List!19448 0))(
  ( (Nil!19445) (Cons!19444 (h!20601 tuple2!13620) (t!27783 List!19448)) )
))
(declare-datatypes ((ListLongMap!12331 0))(
  ( (ListLongMap!12332 (toList!6181 List!19448)) )
))
(declare-fun contains!5216 (ListLongMap!12331 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3366 (array!57444 array!57442 (_ BitVec 32) (_ BitVec 32) V!32575 V!32575 (_ BitVec 32) Int) ListLongMap!12331)

(assert (=> b!948247 (= res!636292 (contains!5216 (getCurrentListMap!3366 (_keys!10664 thiss!1141) (_values!5772 thiss!1141) (mask!27502 thiss!1141) (extraKeys!5481 thiss!1141) (zeroValue!5585 thiss!1141) (minValue!5585 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5749 thiss!1141)) key!756))))

(declare-fun b!948248 () Bool)

(assert (=> b!948248 (= e!533830 (and (= (size!28098 (_values!5772 thiss!1141)) (bvadd #b00000000000000000000000000000001 (mask!27502 thiss!1141))) (not (= (size!28099 (_keys!10664 thiss!1141)) (size!28098 (_values!5772 thiss!1141))))))))

(declare-fun res!636296 () Bool)

(assert (=> start!80994 (=> (not res!636296) (not e!533830))))

(declare-fun valid!1840 (LongMapFixedSize!4894) Bool)

(assert (=> start!80994 (= res!636296 (valid!1840 thiss!1141))))

(assert (=> start!80994 e!533830))

(declare-fun e!533828 () Bool)

(assert (=> start!80994 e!533828))

(assert (=> start!80994 true))

(declare-fun tp_is_empty!20707 () Bool)

(declare-fun e!533829 () Bool)

(declare-fun array_inv!21390 (array!57444) Bool)

(declare-fun array_inv!21391 (array!57442) Bool)

(assert (=> b!948249 (= e!533828 (and tp!63173 tp_is_empty!20707 (array_inv!21390 (_keys!10664 thiss!1141)) (array_inv!21391 (_values!5772 thiss!1141)) e!533829))))

(declare-fun mapNonEmpty!32951 () Bool)

(declare-fun mapRes!32951 () Bool)

(declare-fun tp!63172 () Bool)

(declare-fun e!533826 () Bool)

(assert (=> mapNonEmpty!32951 (= mapRes!32951 (and tp!63172 e!533826))))

(declare-fun mapValue!32951 () ValueCell!9872)

(declare-fun mapRest!32951 () (Array (_ BitVec 32) ValueCell!9872))

(declare-fun mapKey!32951 () (_ BitVec 32))

(assert (=> mapNonEmpty!32951 (= (arr!27623 (_values!5772 thiss!1141)) (store mapRest!32951 mapKey!32951 mapValue!32951))))

(declare-fun b!948250 () Bool)

(declare-fun res!636294 () Bool)

(assert (=> b!948250 (=> (not res!636294) (not e!533830))))

(assert (=> b!948250 (= res!636294 (and (not (= key!756 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!756 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!948251 () Bool)

(declare-fun e!533831 () Bool)

(assert (=> b!948251 (= e!533829 (and e!533831 mapRes!32951))))

(declare-fun condMapEmpty!32951 () Bool)

(declare-fun mapDefault!32951 () ValueCell!9872)

