; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!80410 () Bool)

(assert start!80410)

(declare-fun b!943914 () Bool)

(declare-fun b_free!18025 () Bool)

(declare-fun b_next!18025 () Bool)

(assert (=> b!943914 (= b_free!18025 (not b_next!18025))))

(declare-fun tp!62586 () Bool)

(declare-fun b_and!29461 () Bool)

(assert (=> b!943914 (= tp!62586 b_and!29461)))

(declare-fun b!943905 () Bool)

(declare-fun res!634231 () Bool)

(declare-fun e!530792 () Bool)

(assert (=> b!943905 (=> (not res!634231) (not e!530792))))

(declare-fun key!756 () (_ BitVec 64))

(declare-datatypes ((V!32343 0))(
  ( (V!32344 (val!10317 Int)) )
))
(declare-datatypes ((ValueCell!9785 0))(
  ( (ValueCellFull!9785 (v!12849 V!32343)) (EmptyCell!9785) )
))
(declare-datatypes ((array!57056 0))(
  ( (array!57057 (arr!27449 (Array (_ BitVec 32) ValueCell!9785)) (size!27916 (_ BitVec 32))) )
))
(declare-datatypes ((array!57058 0))(
  ( (array!57059 (arr!27450 (Array (_ BitVec 32) (_ BitVec 64))) (size!27917 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4720 0))(
  ( (LongMapFixedSize!4721 (defaultEntry!5655 Int) (mask!27290 (_ BitVec 32)) (extraKeys!5387 (_ BitVec 32)) (zeroValue!5491 V!32343) (minValue!5491 V!32343) (_size!2415 (_ BitVec 32)) (_keys!10529 array!57058) (_values!5678 array!57056) (_vacant!2415 (_ BitVec 32))) )
))
(declare-fun thiss!1141 () LongMapFixedSize!4720)

(declare-datatypes ((SeekEntryResult!9049 0))(
  ( (MissingZero!9049 (index!38566 (_ BitVec 32))) (Found!9049 (index!38567 (_ BitVec 32))) (Intermediate!9049 (undefined!9861 Bool) (index!38568 (_ BitVec 32)) (x!81061 (_ BitVec 32))) (Undefined!9049) (MissingVacant!9049 (index!38569 (_ BitVec 32))) )
))
(declare-fun seekEntry!0 ((_ BitVec 64) array!57058 (_ BitVec 32)) SeekEntryResult!9049)

(assert (=> b!943905 (= res!634231 (not (is-Found!9049 (seekEntry!0 key!756 (_keys!10529 thiss!1141) (mask!27290 thiss!1141)))))))

(declare-fun b!943906 () Bool)

(declare-fun res!634232 () Bool)

(assert (=> b!943906 (=> (not res!634232) (not e!530792))))

(declare-datatypes ((tuple2!13560 0))(
  ( (tuple2!13561 (_1!6790 (_ BitVec 64)) (_2!6790 V!32343)) )
))
(declare-datatypes ((List!19394 0))(
  ( (Nil!19391) (Cons!19390 (h!20541 tuple2!13560) (t!27719 List!19394)) )
))
(declare-datatypes ((ListLongMap!12271 0))(
  ( (ListLongMap!12272 (toList!6151 List!19394)) )
))
(declare-fun contains!5174 (ListLongMap!12271 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3339 (array!57058 array!57056 (_ BitVec 32) (_ BitVec 32) V!32343 V!32343 (_ BitVec 32) Int) ListLongMap!12271)

(assert (=> b!943906 (= res!634232 (contains!5174 (getCurrentListMap!3339 (_keys!10529 thiss!1141) (_values!5678 thiss!1141) (mask!27290 thiss!1141) (extraKeys!5387 thiss!1141) (zeroValue!5491 thiss!1141) (minValue!5491 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5655 thiss!1141)) key!756))))

(declare-fun b!943907 () Bool)

(declare-fun e!530789 () Bool)

(declare-fun tp_is_empty!20533 () Bool)

(assert (=> b!943907 (= e!530789 tp_is_empty!20533)))

(declare-fun mapNonEmpty!32625 () Bool)

(declare-fun mapRes!32625 () Bool)

(declare-fun tp!62585 () Bool)

(declare-fun e!530790 () Bool)

(assert (=> mapNonEmpty!32625 (= mapRes!32625 (and tp!62585 e!530790))))

(declare-fun mapRest!32625 () (Array (_ BitVec 32) ValueCell!9785))

(declare-fun mapValue!32625 () ValueCell!9785)

(declare-fun mapKey!32625 () (_ BitVec 32))

(assert (=> mapNonEmpty!32625 (= (arr!27449 (_values!5678 thiss!1141)) (store mapRest!32625 mapKey!32625 mapValue!32625))))

(declare-fun b!943908 () Bool)

(declare-fun e!530788 () Bool)

(assert (=> b!943908 (= e!530788 (and e!530789 mapRes!32625))))

(declare-fun condMapEmpty!32625 () Bool)

(declare-fun mapDefault!32625 () ValueCell!9785)

