; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!75582 () Bool)

(assert start!75582)

(declare-fun b!888588 () Bool)

(declare-fun b_free!15581 () Bool)

(declare-fun b_next!15581 () Bool)

(assert (=> b!888588 (= b_free!15581 (not b_next!15581))))

(declare-fun tp!54699 () Bool)

(declare-fun b_and!25839 () Bool)

(assert (=> b!888588 (= tp!54699 b_and!25839)))

(declare-fun lt!401859 () Bool)

(declare-datatypes ((array!51776 0))(
  ( (array!51777 (arr!24894 (Array (_ BitVec 32) (_ BitVec 64))) (size!25337 (_ BitVec 32))) )
))
(declare-datatypes ((V!28843 0))(
  ( (V!28844 (val!9005 Int)) )
))
(declare-datatypes ((ValueCell!8473 0))(
  ( (ValueCellFull!8473 (v!11475 V!28843)) (EmptyCell!8473) )
))
(declare-datatypes ((array!51778 0))(
  ( (array!51779 (arr!24895 (Array (_ BitVec 32) ValueCell!8473)) (size!25338 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3962 0))(
  ( (LongMapFixedSize!3963 (defaultEntry!5178 Int) (mask!25599 (_ BitVec 32)) (extraKeys!4872 (_ BitVec 32)) (zeroValue!4976 V!28843) (minValue!4976 V!28843) (_size!2036 (_ BitVec 32)) (_keys!9855 array!51776) (_values!5163 array!51778) (_vacant!2036 (_ BitVec 32))) )
))
(declare-fun thiss!1181 () LongMapFixedSize!3962)

(declare-fun valid!1533 (LongMapFixedSize!3962) Bool)

(assert (=> start!75582 (= lt!401859 (valid!1533 thiss!1181))))

(assert (=> start!75582 false))

(declare-fun e!495202 () Bool)

(assert (=> start!75582 e!495202))

(declare-fun e!495205 () Bool)

(declare-fun tp_is_empty!17909 () Bool)

(declare-fun array_inv!19560 (array!51776) Bool)

(declare-fun array_inv!19561 (array!51778) Bool)

(assert (=> b!888588 (= e!495202 (and tp!54699 tp_is_empty!17909 (array_inv!19560 (_keys!9855 thiss!1181)) (array_inv!19561 (_values!5163 thiss!1181)) e!495205))))

(declare-fun mapNonEmpty!28404 () Bool)

(declare-fun mapRes!28404 () Bool)

(declare-fun tp!54698 () Bool)

(declare-fun e!495204 () Bool)

(assert (=> mapNonEmpty!28404 (= mapRes!28404 (and tp!54698 e!495204))))

(declare-fun mapValue!28404 () ValueCell!8473)

(declare-fun mapRest!28404 () (Array (_ BitVec 32) ValueCell!8473))

(declare-fun mapKey!28404 () (_ BitVec 32))

(assert (=> mapNonEmpty!28404 (= (arr!24895 (_values!5163 thiss!1181)) (store mapRest!28404 mapKey!28404 mapValue!28404))))

(declare-fun mapIsEmpty!28404 () Bool)

(assert (=> mapIsEmpty!28404 mapRes!28404))

(declare-fun b!888589 () Bool)

(declare-fun e!495201 () Bool)

(assert (=> b!888589 (= e!495201 tp_is_empty!17909)))

(declare-fun b!888590 () Bool)

(assert (=> b!888590 (= e!495205 (and e!495201 mapRes!28404))))

(declare-fun condMapEmpty!28404 () Bool)

(declare-fun mapDefault!28404 () ValueCell!8473)

