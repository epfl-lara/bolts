; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!107608 () Bool)

(assert start!107608)

(declare-fun b!1273399 () Bool)

(declare-fun b_free!27727 () Bool)

(declare-fun b_next!27727 () Bool)

(assert (=> b!1273399 (= b_free!27727 (not b_next!27727))))

(declare-fun tp!97733 () Bool)

(declare-fun b_and!45793 () Bool)

(assert (=> b!1273399 (= tp!97733 b_and!45793)))

(declare-fun b!1273398 () Bool)

(declare-fun e!726575 () Bool)

(declare-fun tp_is_empty!33097 () Bool)

(assert (=> b!1273398 (= e!726575 tp_is_empty!33097)))

(declare-fun e!726573 () Bool)

(declare-datatypes ((V!49323 0))(
  ( (V!49324 (val!16623 Int)) )
))
(declare-datatypes ((ValueCell!15695 0))(
  ( (ValueCellFull!15695 (v!19258 V!49323)) (EmptyCell!15695) )
))
(declare-datatypes ((array!83411 0))(
  ( (array!83412 (arr!40225 (Array (_ BitVec 32) ValueCell!15695)) (size!40769 (_ BitVec 32))) )
))
(declare-datatypes ((array!83413 0))(
  ( (array!83414 (arr!40226 (Array (_ BitVec 32) (_ BitVec 64))) (size!40770 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!6154 0))(
  ( (LongMapFixedSize!6155 (defaultEntry!6723 Int) (mask!34502 (_ BitVec 32)) (extraKeys!6402 (_ BitVec 32)) (zeroValue!6508 V!49323) (minValue!6508 V!49323) (_size!3132 (_ BitVec 32)) (_keys!12134 array!83413) (_values!6746 array!83411) (_vacant!3132 (_ BitVec 32))) )
))
(declare-fun thiss!1551 () LongMapFixedSize!6154)

(declare-fun e!726576 () Bool)

(declare-fun array_inv!30533 (array!83413) Bool)

(declare-fun array_inv!30534 (array!83411) Bool)

(assert (=> b!1273399 (= e!726573 (and tp!97733 tp_is_empty!33097 (array_inv!30533 (_keys!12134 thiss!1551)) (array_inv!30534 (_values!6746 thiss!1551)) e!726576))))

(declare-fun mapNonEmpty!51271 () Bool)

(declare-fun mapRes!51271 () Bool)

(declare-fun tp!97732 () Bool)

(assert (=> mapNonEmpty!51271 (= mapRes!51271 (and tp!97732 e!726575))))

(declare-fun mapValue!51271 () ValueCell!15695)

(declare-fun mapKey!51271 () (_ BitVec 32))

(declare-fun mapRest!51271 () (Array (_ BitVec 32) ValueCell!15695))

(assert (=> mapNonEmpty!51271 (= (arr!40225 (_values!6746 thiss!1551)) (store mapRest!51271 mapKey!51271 mapValue!51271))))

(declare-fun b!1273400 () Bool)

(declare-fun e!726571 () Bool)

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1273400 (= e!726571 (not (validMask!0 (mask!34502 thiss!1551))))))

(declare-fun b!1273401 () Bool)

(declare-fun res!846888 () Bool)

(assert (=> b!1273401 (=> (not res!846888) (not e!726571))))

(declare-fun arrayCountValidKeys!0 (array!83413 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1273401 (= res!846888 (= (arrayCountValidKeys!0 (_keys!12134 thiss!1551) #b00000000000000000000000000000000 (size!40770 (_keys!12134 thiss!1551))) (_size!3132 thiss!1551)))))

(declare-fun b!1273402 () Bool)

(declare-fun e!726574 () Bool)

(assert (=> b!1273402 (= e!726576 (and e!726574 mapRes!51271))))

(declare-fun condMapEmpty!51271 () Bool)

(declare-fun mapDefault!51271 () ValueCell!15695)

