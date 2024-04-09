; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!107650 () Bool)

(assert start!107650)

(declare-fun b!1273670 () Bool)

(declare-fun b_free!27749 () Bool)

(declare-fun b_next!27749 () Bool)

(assert (=> b!1273670 (= b_free!27749 (not b_next!27749))))

(declare-fun tp!97805 () Bool)

(declare-fun b_and!45815 () Bool)

(assert (=> b!1273670 (= tp!97805 b_and!45815)))

(declare-fun b!1273668 () Bool)

(declare-fun e!726800 () Bool)

(declare-datatypes ((V!49351 0))(
  ( (V!49352 (val!16634 Int)) )
))
(declare-datatypes ((ValueCell!15706 0))(
  ( (ValueCellFull!15706 (v!19269 V!49351)) (EmptyCell!15706) )
))
(declare-datatypes ((array!83459 0))(
  ( (array!83460 (arr!40247 (Array (_ BitVec 32) ValueCell!15706)) (size!40793 (_ BitVec 32))) )
))
(declare-datatypes ((array!83461 0))(
  ( (array!83462 (arr!40248 (Array (_ BitVec 32) (_ BitVec 64))) (size!40794 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!6176 0))(
  ( (LongMapFixedSize!6177 (defaultEntry!6734 Int) (mask!34521 (_ BitVec 32)) (extraKeys!6413 (_ BitVec 32)) (zeroValue!6519 V!49351) (minValue!6519 V!49351) (_size!3143 (_ BitVec 32)) (_keys!12145 array!83461) (_values!6757 array!83459) (_vacant!3143 (_ BitVec 32))) )
))
(declare-fun thiss!1551 () LongMapFixedSize!6176)

(assert (=> b!1273668 (= e!726800 (and (= (size!40794 (_keys!12145 thiss!1551)) (bvadd #b00000000000000000000000000000001 (mask!34521 thiss!1551))) (bvsgt #b00000000000000000000000000000000 (size!40794 (_keys!12145 thiss!1551)))))))

(declare-fun b!1273669 () Bool)

(declare-fun e!726802 () Bool)

(declare-fun tp_is_empty!33119 () Bool)

(assert (=> b!1273669 (= e!726802 tp_is_empty!33119)))

(declare-fun mapIsEmpty!51310 () Bool)

(declare-fun mapRes!51310 () Bool)

(assert (=> mapIsEmpty!51310 mapRes!51310))

(declare-fun e!726801 () Bool)

(declare-fun e!726804 () Bool)

(declare-fun array_inv!30547 (array!83461) Bool)

(declare-fun array_inv!30548 (array!83459) Bool)

(assert (=> b!1273670 (= e!726804 (and tp!97805 tp_is_empty!33119 (array_inv!30547 (_keys!12145 thiss!1551)) (array_inv!30548 (_values!6757 thiss!1551)) e!726801))))

(declare-fun mapNonEmpty!51310 () Bool)

(declare-fun tp!97804 () Bool)

(assert (=> mapNonEmpty!51310 (= mapRes!51310 (and tp!97804 e!726802))))

(declare-fun mapKey!51310 () (_ BitVec 32))

(declare-fun mapRest!51310 () (Array (_ BitVec 32) ValueCell!15706))

(declare-fun mapValue!51310 () ValueCell!15706)

(assert (=> mapNonEmpty!51310 (= (arr!40247 (_values!6757 thiss!1551)) (store mapRest!51310 mapKey!51310 mapValue!51310))))

(declare-fun b!1273671 () Bool)

(declare-fun e!726803 () Bool)

(assert (=> b!1273671 (= e!726801 (and e!726803 mapRes!51310))))

(declare-fun condMapEmpty!51310 () Bool)

(declare-fun mapDefault!51310 () ValueCell!15706)

