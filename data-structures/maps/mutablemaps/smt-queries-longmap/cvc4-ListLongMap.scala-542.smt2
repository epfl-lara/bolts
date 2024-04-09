; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!14112 () Bool)

(assert start!14112)

(declare-fun b!131001 () Bool)

(declare-fun b_free!2901 () Bool)

(declare-fun b_next!2901 () Bool)

(assert (=> b!131001 (= b_free!2901 (not b_next!2901))))

(declare-fun tp!11135 () Bool)

(declare-fun b_and!8137 () Bool)

(assert (=> b!131001 (= tp!11135 b_and!8137)))

(declare-fun b!131005 () Bool)

(declare-fun b_free!2903 () Bool)

(declare-fun b_next!2903 () Bool)

(assert (=> b!131005 (= b_free!2903 (not b_next!2903))))

(declare-fun tp!11133 () Bool)

(declare-fun b_and!8139 () Bool)

(assert (=> b!131005 (= tp!11133 b_and!8139)))

(declare-fun e!85481 () Bool)

(declare-datatypes ((V!3469 0))(
  ( (V!3470 (val!1478 Int)) )
))
(declare-datatypes ((array!4756 0))(
  ( (array!4757 (arr!2250 (Array (_ BitVec 32) (_ BitVec 64))) (size!2517 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!1090 0))(
  ( (ValueCellFull!1090 (v!3176 V!3469)) (EmptyCell!1090) )
))
(declare-datatypes ((array!4758 0))(
  ( (array!4759 (arr!2251 (Array (_ BitVec 32) ValueCell!1090)) (size!2518 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1088 0))(
  ( (LongMapFixedSize!1089 (defaultEntry!2844 Int) (mask!7132 (_ BitVec 32)) (extraKeys!2613 (_ BitVec 32)) (zeroValue!2701 V!3469) (minValue!2701 V!3469) (_size!593 (_ BitVec 32)) (_keys!4589 array!4756) (_values!2827 array!4758) (_vacant!593 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!878 0))(
  ( (Cell!879 (v!3177 LongMapFixedSize!1088)) )
))
(declare-datatypes ((LongMap!878 0))(
  ( (LongMap!879 (underlying!450 Cell!878)) )
))
(declare-fun thiss!992 () LongMap!878)

(declare-fun tp_is_empty!2867 () Bool)

(declare-fun e!85469 () Bool)

(declare-fun array_inv!1383 (array!4756) Bool)

(declare-fun array_inv!1384 (array!4758) Bool)

(assert (=> b!131001 (= e!85481 (and tp!11135 tp_is_empty!2867 (array_inv!1383 (_keys!4589 (v!3177 (underlying!450 thiss!992)))) (array_inv!1384 (_values!2827 (v!3177 (underlying!450 thiss!992)))) e!85469))))

(declare-fun b!131002 () Bool)

(declare-fun e!85477 () Bool)

(assert (=> b!131002 (= e!85477 tp_is_empty!2867)))

(declare-fun b!131003 () Bool)

(declare-fun e!85478 () Bool)

(assert (=> b!131003 (= e!85478 e!85481)))

(declare-fun b!131004 () Bool)

(declare-fun e!85480 () Bool)

(assert (=> b!131004 (= e!85480 e!85478)))

(declare-fun newMap!16 () LongMapFixedSize!1088)

(declare-fun e!85479 () Bool)

(declare-fun e!85471 () Bool)

(assert (=> b!131005 (= e!85471 (and tp!11133 tp_is_empty!2867 (array_inv!1383 (_keys!4589 newMap!16)) (array_inv!1384 (_values!2827 newMap!16)) e!85479))))

(declare-fun mapNonEmpty!4601 () Bool)

(declare-fun mapRes!4601 () Bool)

(declare-fun tp!11134 () Bool)

(declare-fun e!85482 () Bool)

(assert (=> mapNonEmpty!4601 (= mapRes!4601 (and tp!11134 e!85482))))

(declare-fun mapValue!4601 () ValueCell!1090)

(declare-fun mapRest!4601 () (Array (_ BitVec 32) ValueCell!1090))

(declare-fun mapKey!4602 () (_ BitVec 32))

(assert (=> mapNonEmpty!4601 (= (arr!2251 (_values!2827 (v!3177 (underlying!450 thiss!992)))) (store mapRest!4601 mapKey!4602 mapValue!4601))))

(declare-fun b!131006 () Bool)

(declare-fun e!85472 () Bool)

(assert (=> b!131006 (= e!85469 (and e!85472 mapRes!4601))))

(declare-fun condMapEmpty!4601 () Bool)

(declare-fun mapDefault!4602 () ValueCell!1090)

