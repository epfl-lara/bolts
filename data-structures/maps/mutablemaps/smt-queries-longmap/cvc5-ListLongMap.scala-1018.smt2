; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!21720 () Bool)

(assert start!21720)

(declare-fun b!218115 () Bool)

(declare-fun b_free!5857 () Bool)

(declare-fun b_next!5857 () Bool)

(assert (=> b!218115 (= b_free!5857 (not b_next!5857))))

(declare-fun tp!20705 () Bool)

(declare-fun b_and!12765 () Bool)

(assert (=> b!218115 (= tp!20705 b_and!12765)))

(declare-fun b!218108 () Bool)

(declare-fun res!106921 () Bool)

(declare-fun e!141893 () Bool)

(assert (=> b!218108 (=> (not res!106921) (not e!141893))))

(declare-datatypes ((V!7273 0))(
  ( (V!7274 (val!2904 Int)) )
))
(declare-datatypes ((ValueCell!2516 0))(
  ( (ValueCellFull!2516 (v!4918 V!7273)) (EmptyCell!2516) )
))
(declare-datatypes ((array!10676 0))(
  ( (array!10677 (arr!5059 (Array (_ BitVec 32) ValueCell!2516)) (size!5391 (_ BitVec 32))) )
))
(declare-datatypes ((array!10678 0))(
  ( (array!10679 (arr!5060 (Array (_ BitVec 32) (_ BitVec 64))) (size!5392 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2932 0))(
  ( (LongMapFixedSize!2933 (defaultEntry!4116 Int) (mask!9887 (_ BitVec 32)) (extraKeys!3853 (_ BitVec 32)) (zeroValue!3957 V!7273) (minValue!3957 V!7273) (_size!1515 (_ BitVec 32)) (_keys!6165 array!10678) (_values!4099 array!10676) (_vacant!1515 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!2932)

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!218108 (= res!106921 (validMask!0 (mask!9887 thiss!1504)))))

(declare-fun res!106920 () Bool)

(declare-fun e!141888 () Bool)

(assert (=> start!21720 (=> (not res!106920) (not e!141888))))

(declare-fun valid!1180 (LongMapFixedSize!2932) Bool)

(assert (=> start!21720 (= res!106920 (valid!1180 thiss!1504))))

(assert (=> start!21720 e!141888))

(declare-fun e!141891 () Bool)

(assert (=> start!21720 e!141891))

(assert (=> start!21720 true))

(declare-fun b!218109 () Bool)

(declare-fun e!141894 () Bool)

(declare-fun tp_is_empty!5719 () Bool)

(assert (=> b!218109 (= e!141894 tp_is_empty!5719)))

(declare-fun b!218110 () Bool)

(declare-fun res!106918 () Bool)

(assert (=> b!218110 (=> (not res!106918) (not e!141888))))

(declare-fun key!932 () (_ BitVec 64))

(assert (=> b!218110 (= res!106918 (and (not (= key!932 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!932 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!218111 () Bool)

(declare-fun e!141889 () Bool)

(assert (=> b!218111 (= e!141889 tp_is_empty!5719)))

(declare-fun b!218112 () Bool)

(assert (=> b!218112 (= e!141893 false)))

(declare-fun lt!111499 () Bool)

(declare-datatypes ((List!3240 0))(
  ( (Nil!3237) (Cons!3236 (h!3883 (_ BitVec 64)) (t!8203 List!3240)) )
))
(declare-fun arrayNoDuplicates!0 (array!10678 (_ BitVec 32) List!3240) Bool)

(assert (=> b!218112 (= lt!111499 (arrayNoDuplicates!0 (_keys!6165 thiss!1504) #b00000000000000000000000000000000 Nil!3237))))

(declare-fun b!218113 () Bool)

(assert (=> b!218113 (= e!141888 e!141893)))

(declare-fun res!106919 () Bool)

(assert (=> b!218113 (=> (not res!106919) (not e!141893))))

(declare-datatypes ((SeekEntryResult!791 0))(
  ( (MissingZero!791 (index!5334 (_ BitVec 32))) (Found!791 (index!5335 (_ BitVec 32))) (Intermediate!791 (undefined!1603 Bool) (index!5336 (_ BitVec 32)) (x!22823 (_ BitVec 32))) (Undefined!791) (MissingVacant!791 (index!5337 (_ BitVec 32))) )
))
(declare-fun lt!111498 () SeekEntryResult!791)

(declare-fun index!297 () (_ BitVec 32))

(assert (=> b!218113 (= res!106919 (or (= lt!111498 (MissingZero!791 index!297)) (= lt!111498 (MissingVacant!791 index!297))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!10678 (_ BitVec 32)) SeekEntryResult!791)

(assert (=> b!218113 (= lt!111498 (seekEntryOrOpen!0 key!932 (_keys!6165 thiss!1504) (mask!9887 thiss!1504)))))

(declare-fun mapIsEmpty!9741 () Bool)

(declare-fun mapRes!9741 () Bool)

(assert (=> mapIsEmpty!9741 mapRes!9741))

(declare-fun b!218114 () Bool)

(declare-fun res!106923 () Bool)

(assert (=> b!218114 (=> (not res!106923) (not e!141893))))

(declare-datatypes ((tuple2!4310 0))(
  ( (tuple2!4311 (_1!2165 (_ BitVec 64)) (_2!2165 V!7273)) )
))
(declare-datatypes ((List!3241 0))(
  ( (Nil!3238) (Cons!3237 (h!3884 tuple2!4310) (t!8204 List!3241)) )
))
(declare-datatypes ((ListLongMap!3237 0))(
  ( (ListLongMap!3238 (toList!1634 List!3241)) )
))
(declare-fun contains!1469 (ListLongMap!3237 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1157 (array!10678 array!10676 (_ BitVec 32) (_ BitVec 32) V!7273 V!7273 (_ BitVec 32) Int) ListLongMap!3237)

(assert (=> b!218114 (= res!106923 (not (contains!1469 (getCurrentListMap!1157 (_keys!6165 thiss!1504) (_values!4099 thiss!1504) (mask!9887 thiss!1504) (extraKeys!3853 thiss!1504) (zeroValue!3957 thiss!1504) (minValue!3957 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4116 thiss!1504)) key!932)))))

(declare-fun mapNonEmpty!9741 () Bool)

(declare-fun tp!20706 () Bool)

(assert (=> mapNonEmpty!9741 (= mapRes!9741 (and tp!20706 e!141889))))

(declare-fun mapRest!9741 () (Array (_ BitVec 32) ValueCell!2516))

(declare-fun mapKey!9741 () (_ BitVec 32))

(declare-fun mapValue!9741 () ValueCell!2516)

(assert (=> mapNonEmpty!9741 (= (arr!5059 (_values!4099 thiss!1504)) (store mapRest!9741 mapKey!9741 mapValue!9741))))

(declare-fun e!141892 () Bool)

(declare-fun array_inv!3343 (array!10678) Bool)

(declare-fun array_inv!3344 (array!10676) Bool)

(assert (=> b!218115 (= e!141891 (and tp!20705 tp_is_empty!5719 (array_inv!3343 (_keys!6165 thiss!1504)) (array_inv!3344 (_values!4099 thiss!1504)) e!141892))))

(declare-fun b!218116 () Bool)

(declare-fun res!106917 () Bool)

(assert (=> b!218116 (=> (not res!106917) (not e!141893))))

(assert (=> b!218116 (= res!106917 (and (= (size!5391 (_values!4099 thiss!1504)) (bvadd #b00000000000000000000000000000001 (mask!9887 thiss!1504))) (= (size!5392 (_keys!6165 thiss!1504)) (size!5391 (_values!4099 thiss!1504))) (bvsge (mask!9887 thiss!1504) #b00000000000000000000000000000000) (bvsge (extraKeys!3853 thiss!1504) #b00000000000000000000000000000000) (bvsle (extraKeys!3853 thiss!1504) #b00000000000000000000000000000011)))))

(declare-fun b!218117 () Bool)

(declare-fun res!106922 () Bool)

(assert (=> b!218117 (=> (not res!106922) (not e!141893))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!10678 (_ BitVec 32)) Bool)

(assert (=> b!218117 (= res!106922 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!6165 thiss!1504) (mask!9887 thiss!1504)))))

(declare-fun b!218118 () Bool)

(assert (=> b!218118 (= e!141892 (and e!141894 mapRes!9741))))

(declare-fun condMapEmpty!9741 () Bool)

(declare-fun mapDefault!9741 () ValueCell!2516)

