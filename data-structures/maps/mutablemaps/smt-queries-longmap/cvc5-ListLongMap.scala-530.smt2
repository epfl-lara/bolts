; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!13234 () Bool)

(assert start!13234)

(declare-fun b!116643 () Bool)

(declare-fun b_free!2749 () Bool)

(declare-fun b_next!2749 () Bool)

(assert (=> b!116643 (= b_free!2749 (not b_next!2749))))

(declare-fun tp!10622 () Bool)

(declare-fun b_and!7277 () Bool)

(assert (=> b!116643 (= tp!10622 b_and!7277)))

(declare-fun b!116637 () Bool)

(declare-fun b_free!2751 () Bool)

(declare-fun b_next!2751 () Bool)

(assert (=> b!116637 (= b_free!2751 (not b_next!2751))))

(declare-fun tp!10620 () Bool)

(declare-fun b_and!7279 () Bool)

(assert (=> b!116637 (= tp!10620 b_and!7279)))

(declare-fun b!116635 () Bool)

(declare-fun e!76172 () Bool)

(declare-fun tp_is_empty!2791 () Bool)

(assert (=> b!116635 (= e!76172 tp_is_empty!2791)))

(declare-fun mapNonEmpty!4315 () Bool)

(declare-fun mapRes!4316 () Bool)

(declare-fun tp!10619 () Bool)

(declare-fun e!76163 () Bool)

(assert (=> mapNonEmpty!4315 (= mapRes!4316 (and tp!10619 e!76163))))

(declare-datatypes ((V!3369 0))(
  ( (V!3370 (val!1440 Int)) )
))
(declare-datatypes ((array!4588 0))(
  ( (array!4589 (arr!2174 (Array (_ BitVec 32) (_ BitVec 64))) (size!2435 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!1052 0))(
  ( (ValueCellFull!1052 (v!3046 V!3369)) (EmptyCell!1052) )
))
(declare-datatypes ((array!4590 0))(
  ( (array!4591 (arr!2175 (Array (_ BitVec 32) ValueCell!1052)) (size!2436 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1012 0))(
  ( (LongMapFixedSize!1013 (defaultEntry!2718 Int) (mask!6936 (_ BitVec 32)) (extraKeys!2507 (_ BitVec 32)) (zeroValue!2585 V!3369) (minValue!2585 V!3369) (_size!555 (_ BitVec 32)) (_keys!4441 array!4588) (_values!2701 array!4590) (_vacant!555 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!806 0))(
  ( (Cell!807 (v!3047 LongMapFixedSize!1012)) )
))
(declare-datatypes ((LongMap!806 0))(
  ( (LongMap!807 (underlying!414 Cell!806)) )
))
(declare-fun thiss!992 () LongMap!806)

(declare-fun mapRest!4315 () (Array (_ BitVec 32) ValueCell!1052))

(declare-fun mapKey!4315 () (_ BitVec 32))

(declare-fun mapValue!4316 () ValueCell!1052)

(assert (=> mapNonEmpty!4315 (= (arr!2175 (_values!2701 (v!3047 (underlying!414 thiss!992)))) (store mapRest!4315 mapKey!4315 mapValue!4316))))

(declare-fun mapIsEmpty!4315 () Bool)

(assert (=> mapIsEmpty!4315 mapRes!4316))

(declare-fun b!116636 () Bool)

(declare-fun res!57125 () Bool)

(declare-fun e!76162 () Bool)

(assert (=> b!116636 (=> (not res!57125) (not e!76162))))

(declare-fun newMap!16 () LongMapFixedSize!1012)

(assert (=> b!116636 (= res!57125 (bvsge (bvadd #b00000000000000000000000000000001 (mask!6936 newMap!16)) (_size!555 (v!3047 (underlying!414 thiss!992)))))))

(declare-fun e!76165 () Bool)

(declare-fun e!76168 () Bool)

(declare-fun array_inv!1321 (array!4588) Bool)

(declare-fun array_inv!1322 (array!4590) Bool)

(assert (=> b!116637 (= e!76168 (and tp!10620 tp_is_empty!2791 (array_inv!1321 (_keys!4441 newMap!16)) (array_inv!1322 (_values!2701 newMap!16)) e!76165))))

(declare-fun b!116638 () Bool)

(declare-fun mapRes!4315 () Bool)

(assert (=> b!116638 (= e!76165 (and e!76172 mapRes!4315))))

(declare-fun condMapEmpty!4316 () Bool)

(declare-fun mapDefault!4316 () ValueCell!1052)

