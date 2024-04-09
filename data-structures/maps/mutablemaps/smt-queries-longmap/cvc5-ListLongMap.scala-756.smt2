; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!17734 () Bool)

(assert start!17734)

(declare-fun b!177119 () Bool)

(declare-fun b_free!4375 () Bool)

(declare-fun b_next!4375 () Bool)

(assert (=> b!177119 (= b_free!4375 (not b_next!4375))))

(declare-fun tp!15825 () Bool)

(declare-fun b_and!10893 () Bool)

(assert (=> b!177119 (= tp!15825 b_and!10893)))

(declare-fun b!177116 () Bool)

(declare-fun res!83975 () Bool)

(declare-fun e!116808 () Bool)

(assert (=> b!177116 (=> (not res!83975) (not e!116808))))

(declare-datatypes ((V!5177 0))(
  ( (V!5178 (val!2118 Int)) )
))
(declare-datatypes ((ValueCell!1730 0))(
  ( (ValueCellFull!1730 (v!3994 V!5177)) (EmptyCell!1730) )
))
(declare-datatypes ((array!7444 0))(
  ( (array!7445 (arr!3530 (Array (_ BitVec 32) (_ BitVec 64))) (size!3834 (_ BitVec 32))) )
))
(declare-datatypes ((array!7446 0))(
  ( (array!7447 (arr!3531 (Array (_ BitVec 32) ValueCell!1730)) (size!3835 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2368 0))(
  ( (LongMapFixedSize!2369 (defaultEntry!3647 Int) (mask!8581 (_ BitVec 32)) (extraKeys!3384 (_ BitVec 32)) (zeroValue!3488 V!5177) (minValue!3488 V!5177) (_size!1233 (_ BitVec 32)) (_keys!5514 array!7444) (_values!3630 array!7446) (_vacant!1233 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!2368)

(declare-fun key!828 () (_ BitVec 64))

(declare-datatypes ((tuple2!3294 0))(
  ( (tuple2!3295 (_1!1657 (_ BitVec 64)) (_2!1657 V!5177)) )
))
(declare-datatypes ((List!2270 0))(
  ( (Nil!2267) (Cons!2266 (h!2887 tuple2!3294) (t!7108 List!2270)) )
))
(declare-datatypes ((ListLongMap!2235 0))(
  ( (ListLongMap!2236 (toList!1133 List!2270)) )
))
(declare-fun contains!1193 (ListLongMap!2235 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!780 (array!7444 array!7446 (_ BitVec 32) (_ BitVec 32) V!5177 V!5177 (_ BitVec 32) Int) ListLongMap!2235)

(assert (=> b!177116 (= res!83975 (contains!1193 (getCurrentListMap!780 (_keys!5514 thiss!1248) (_values!3630 thiss!1248) (mask!8581 thiss!1248) (extraKeys!3384 thiss!1248) (zeroValue!3488 thiss!1248) (minValue!3488 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3647 thiss!1248)) key!828))))

(declare-fun b!177117 () Bool)

(declare-fun res!83972 () Bool)

(assert (=> b!177117 (=> (not res!83972) (not e!116808))))

(declare-datatypes ((SeekEntryResult!573 0))(
  ( (MissingZero!573 (index!4460 (_ BitVec 32))) (Found!573 (index!4461 (_ BitVec 32))) (Intermediate!573 (undefined!1385 Bool) (index!4462 (_ BitVec 32)) (x!19445 (_ BitVec 32))) (Undefined!573) (MissingVacant!573 (index!4463 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!7444 (_ BitVec 32)) SeekEntryResult!573)

(assert (=> b!177117 (= res!83972 (is-Undefined!573 (seekEntryOrOpen!0 key!828 (_keys!5514 thiss!1248) (mask!8581 thiss!1248))))))

(declare-fun b!177118 () Bool)

(declare-fun res!83973 () Bool)

(assert (=> b!177118 (=> (not res!83973) (not e!116808))))

(assert (=> b!177118 (= res!83973 (not (= key!828 (bvneg key!828))))))

(declare-fun e!116804 () Bool)

(declare-fun tp_is_empty!4147 () Bool)

(declare-fun e!116807 () Bool)

(declare-fun array_inv!2253 (array!7444) Bool)

(declare-fun array_inv!2254 (array!7446) Bool)

(assert (=> b!177119 (= e!116807 (and tp!15825 tp_is_empty!4147 (array_inv!2253 (_keys!5514 thiss!1248)) (array_inv!2254 (_values!3630 thiss!1248)) e!116804))))

(declare-fun mapIsEmpty!7083 () Bool)

(declare-fun mapRes!7083 () Bool)

(assert (=> mapIsEmpty!7083 mapRes!7083))

(declare-fun mapNonEmpty!7083 () Bool)

(declare-fun tp!15824 () Bool)

(declare-fun e!116806 () Bool)

(assert (=> mapNonEmpty!7083 (= mapRes!7083 (and tp!15824 e!116806))))

(declare-fun mapKey!7083 () (_ BitVec 32))

(declare-fun mapValue!7083 () ValueCell!1730)

(declare-fun mapRest!7083 () (Array (_ BitVec 32) ValueCell!1730))

(assert (=> mapNonEmpty!7083 (= (arr!3531 (_values!3630 thiss!1248)) (store mapRest!7083 mapKey!7083 mapValue!7083))))

(declare-fun b!177120 () Bool)

(declare-fun e!116809 () Bool)

(assert (=> b!177120 (= e!116804 (and e!116809 mapRes!7083))))

(declare-fun condMapEmpty!7083 () Bool)

(declare-fun mapDefault!7083 () ValueCell!1730)

