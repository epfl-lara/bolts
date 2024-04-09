; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!107628 () Bool)

(assert start!107628)

(declare-fun b!1273529 () Bool)

(declare-fun b_free!27737 () Bool)

(declare-fun b_next!27737 () Bool)

(assert (=> b!1273529 (= b_free!27737 (not b_next!27737))))

(declare-fun tp!97765 () Bool)

(declare-fun b_and!45803 () Bool)

(assert (=> b!1273529 (= tp!97765 b_and!45803)))

(declare-fun mapIsEmpty!51289 () Bool)

(declare-fun mapRes!51289 () Bool)

(assert (=> mapIsEmpty!51289 mapRes!51289))

(declare-fun tp_is_empty!33107 () Bool)

(declare-fun e!726676 () Bool)

(declare-datatypes ((V!49335 0))(
  ( (V!49336 (val!16628 Int)) )
))
(declare-datatypes ((ValueCell!15700 0))(
  ( (ValueCellFull!15700 (v!19263 V!49335)) (EmptyCell!15700) )
))
(declare-datatypes ((array!83433 0))(
  ( (array!83434 (arr!40235 (Array (_ BitVec 32) ValueCell!15700)) (size!40780 (_ BitVec 32))) )
))
(declare-datatypes ((array!83435 0))(
  ( (array!83436 (arr!40236 (Array (_ BitVec 32) (_ BitVec 64))) (size!40781 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!6164 0))(
  ( (LongMapFixedSize!6165 (defaultEntry!6728 Int) (mask!34510 (_ BitVec 32)) (extraKeys!6407 (_ BitVec 32)) (zeroValue!6513 V!49335) (minValue!6513 V!49335) (_size!3137 (_ BitVec 32)) (_keys!12139 array!83435) (_values!6751 array!83433) (_vacant!3137 (_ BitVec 32))) )
))
(declare-fun thiss!1551 () LongMapFixedSize!6164)

(declare-fun e!726678 () Bool)

(declare-fun array_inv!30541 (array!83435) Bool)

(declare-fun array_inv!30542 (array!83433) Bool)

(assert (=> b!1273529 (= e!726676 (and tp!97765 tp_is_empty!33107 (array_inv!30541 (_keys!12139 thiss!1551)) (array_inv!30542 (_values!6751 thiss!1551)) e!726678))))

(declare-fun b!1273530 () Bool)

(declare-fun res!846939 () Bool)

(declare-fun e!726680 () Bool)

(assert (=> b!1273530 (=> (not res!846939) (not e!726680))))

(declare-fun arrayCountValidKeys!0 (array!83435 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1273530 (= res!846939 (= (arrayCountValidKeys!0 (_keys!12139 thiss!1551) #b00000000000000000000000000000000 (size!40781 (_keys!12139 thiss!1551))) (_size!3137 thiss!1551)))))

(declare-fun mapNonEmpty!51289 () Bool)

(declare-fun tp!97766 () Bool)

(declare-fun e!726681 () Bool)

(assert (=> mapNonEmpty!51289 (= mapRes!51289 (and tp!97766 e!726681))))

(declare-fun mapValue!51289 () ValueCell!15700)

(declare-fun mapRest!51289 () (Array (_ BitVec 32) ValueCell!15700))

(declare-fun mapKey!51289 () (_ BitVec 32))

(assert (=> mapNonEmpty!51289 (= (arr!40235 (_values!6751 thiss!1551)) (store mapRest!51289 mapKey!51289 mapValue!51289))))

(declare-fun b!1273531 () Bool)

(declare-fun e!726679 () Bool)

(assert (=> b!1273531 (= e!726678 (and e!726679 mapRes!51289))))

(declare-fun condMapEmpty!51289 () Bool)

(declare-fun mapDefault!51289 () ValueCell!15700)

