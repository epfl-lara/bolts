; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!22600 () Bool)

(assert start!22600)

(declare-fun b!236115 () Bool)

(declare-fun b_free!6359 () Bool)

(declare-fun b_next!6359 () Bool)

(assert (=> b!236115 (= b_free!6359 (not b_next!6359))))

(declare-fun tp!22253 () Bool)

(declare-fun b_and!13311 () Bool)

(assert (=> b!236115 (= tp!22253 b_and!13311)))

(declare-fun b!236114 () Bool)

(declare-fun e!153370 () Bool)

(declare-datatypes ((V!7941 0))(
  ( (V!7942 (val!3155 Int)) )
))
(declare-datatypes ((ValueCell!2767 0))(
  ( (ValueCellFull!2767 (v!5181 V!7941)) (EmptyCell!2767) )
))
(declare-datatypes ((array!11704 0))(
  ( (array!11705 (arr!5561 (Array (_ BitVec 32) ValueCell!2767)) (size!5898 (_ BitVec 32))) )
))
(declare-datatypes ((array!11706 0))(
  ( (array!11707 (arr!5562 (Array (_ BitVec 32) (_ BitVec 64))) (size!5899 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3434 0))(
  ( (LongMapFixedSize!3435 (defaultEntry!4390 Int) (mask!10375 (_ BitVec 32)) (extraKeys!4127 (_ BitVec 32)) (zeroValue!4231 V!7941) (minValue!4231 V!7941) (_size!1766 (_ BitVec 32)) (_keys!6469 array!11706) (_values!4373 array!11704) (_vacant!1766 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3434)

(assert (=> b!236114 (= e!153370 (not (= (size!5898 (_values!4373 thiss!1504)) (bvadd #b00000000000000000000000000000001 (mask!10375 thiss!1504)))))))

(declare-fun e!153371 () Bool)

(declare-fun e!153366 () Bool)

(declare-fun tp_is_empty!6221 () Bool)

(declare-fun array_inv!3659 (array!11706) Bool)

(declare-fun array_inv!3660 (array!11704) Bool)

(assert (=> b!236115 (= e!153366 (and tp!22253 tp_is_empty!6221 (array_inv!3659 (_keys!6469 thiss!1504)) (array_inv!3660 (_values!4373 thiss!1504)) e!153371))))

(declare-fun mapNonEmpty!10535 () Bool)

(declare-fun mapRes!10535 () Bool)

(declare-fun tp!22252 () Bool)

(declare-fun e!153367 () Bool)

(assert (=> mapNonEmpty!10535 (= mapRes!10535 (and tp!22252 e!153367))))

(declare-fun mapKey!10535 () (_ BitVec 32))

(declare-fun mapValue!10535 () ValueCell!2767)

(declare-fun mapRest!10535 () (Array (_ BitVec 32) ValueCell!2767))

(assert (=> mapNonEmpty!10535 (= (arr!5561 (_values!4373 thiss!1504)) (store mapRest!10535 mapKey!10535 mapValue!10535))))

(declare-fun mapIsEmpty!10535 () Bool)

(assert (=> mapIsEmpty!10535 mapRes!10535))

(declare-fun b!236116 () Bool)

(assert (=> b!236116 (= e!153367 tp_is_empty!6221)))

(declare-fun b!236117 () Bool)

(declare-fun res!115816 () Bool)

(assert (=> b!236117 (=> (not res!115816) (not e!153370))))

(declare-fun key!932 () (_ BitVec 64))

(declare-datatypes ((tuple2!4646 0))(
  ( (tuple2!4647 (_1!2333 (_ BitVec 64)) (_2!2333 V!7941)) )
))
(declare-datatypes ((List!3574 0))(
  ( (Nil!3571) (Cons!3570 (h!4222 tuple2!4646) (t!8561 List!3574)) )
))
(declare-datatypes ((ListLongMap!3573 0))(
  ( (ListLongMap!3574 (toList!1802 List!3574)) )
))
(declare-fun contains!1674 (ListLongMap!3573 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1325 (array!11706 array!11704 (_ BitVec 32) (_ BitVec 32) V!7941 V!7941 (_ BitVec 32) Int) ListLongMap!3573)

(assert (=> b!236117 (= res!115816 (not (contains!1674 (getCurrentListMap!1325 (_keys!6469 thiss!1504) (_values!4373 thiss!1504) (mask!10375 thiss!1504) (extraKeys!4127 thiss!1504) (zeroValue!4231 thiss!1504) (minValue!4231 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4390 thiss!1504)) key!932)))))

(declare-fun b!236118 () Bool)

(declare-fun res!115817 () Bool)

(assert (=> b!236118 (=> (not res!115817) (not e!153370))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!236118 (= res!115817 (validMask!0 (mask!10375 thiss!1504)))))

(declare-fun b!236119 () Bool)

(declare-fun res!115818 () Bool)

(declare-fun e!153372 () Bool)

(assert (=> b!236119 (=> (not res!115818) (not e!153372))))

(assert (=> b!236119 (= res!115818 (and (not (= key!932 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!932 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!236120 () Bool)

(declare-fun e!153369 () Bool)

(assert (=> b!236120 (= e!153371 (and e!153369 mapRes!10535))))

(declare-fun condMapEmpty!10535 () Bool)

(declare-fun mapDefault!10535 () ValueCell!2767)

