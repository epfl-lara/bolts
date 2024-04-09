; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!15902 () Bool)

(assert start!15902)

(declare-fun b!158070 () Bool)

(declare-fun b_free!3473 () Bool)

(declare-fun b_next!3473 () Bool)

(assert (=> b!158070 (= b_free!3473 (not b_next!3473))))

(declare-fun tp!12964 () Bool)

(declare-fun b_and!9905 () Bool)

(assert (=> b!158070 (= tp!12964 b_and!9905)))

(declare-fun mapNonEmpty!5576 () Bool)

(declare-fun mapRes!5576 () Bool)

(declare-fun tp!12965 () Bool)

(declare-fun e!103540 () Bool)

(assert (=> mapNonEmpty!5576 (= mapRes!5576 (and tp!12965 e!103540))))

(declare-fun mapKey!5576 () (_ BitVec 32))

(declare-datatypes ((V!4013 0))(
  ( (V!4014 (val!1682 Int)) )
))
(declare-datatypes ((ValueCell!1294 0))(
  ( (ValueCellFull!1294 (v!3543 V!4013)) (EmptyCell!1294) )
))
(declare-fun mapRest!5576 () (Array (_ BitVec 32) ValueCell!1294))

(declare-fun mapValue!5576 () ValueCell!1294)

(declare-datatypes ((array!5614 0))(
  ( (array!5615 (arr!2658 (Array (_ BitVec 32) (_ BitVec 64))) (size!2939 (_ BitVec 32))) )
))
(declare-datatypes ((array!5616 0))(
  ( (array!5617 (arr!2659 (Array (_ BitVec 32) ValueCell!1294)) (size!2940 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1496 0))(
  ( (LongMapFixedSize!1497 (defaultEntry!3190 Int) (mask!7693 (_ BitVec 32)) (extraKeys!2931 (_ BitVec 32)) (zeroValue!3033 V!4013) (minValue!3033 V!4013) (_size!797 (_ BitVec 32)) (_keys!4972 array!5614) (_values!3173 array!5616) (_vacant!797 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!1496)

(assert (=> mapNonEmpty!5576 (= (arr!2659 (_values!3173 thiss!1248)) (store mapRest!5576 mapKey!5576 mapValue!5576))))

(declare-fun b!158066 () Bool)

(declare-fun e!103541 () Bool)

(assert (=> b!158066 (= e!103541 (and (= (size!2940 (_values!3173 thiss!1248)) (bvadd #b00000000000000000000000000000001 (mask!7693 thiss!1248))) (not (= (size!2939 (_keys!4972 thiss!1248)) (size!2940 (_values!3173 thiss!1248))))))))

(declare-fun b!158067 () Bool)

(declare-fun e!103542 () Bool)

(declare-fun tp_is_empty!3275 () Bool)

(assert (=> b!158067 (= e!103542 tp_is_empty!3275)))

(declare-fun b!158068 () Bool)

(declare-fun res!74693 () Bool)

(assert (=> b!158068 (=> (not res!74693) (not e!103541))))

(declare-fun key!828 () (_ BitVec 64))

(assert (=> b!158068 (= res!74693 (not (= key!828 (bvneg key!828))))))

(declare-fun b!158069 () Bool)

(declare-fun e!103543 () Bool)

(assert (=> b!158069 (= e!103543 (and e!103542 mapRes!5576))))

(declare-fun condMapEmpty!5576 () Bool)

(declare-fun mapDefault!5576 () ValueCell!1294)

