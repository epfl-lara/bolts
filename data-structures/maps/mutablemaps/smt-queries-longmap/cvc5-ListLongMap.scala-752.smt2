; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!17656 () Bool)

(assert start!17656)

(declare-fun b!176332 () Bool)

(declare-fun b_free!4351 () Bool)

(declare-fun b_next!4351 () Bool)

(assert (=> b!176332 (= b_free!4351 (not b_next!4351))))

(declare-fun tp!15743 () Bool)

(declare-fun b_and!10863 () Bool)

(assert (=> b!176332 (= tp!15743 b_and!10863)))

(declare-fun b!176331 () Bool)

(declare-fun res!83572 () Bool)

(declare-fun e!116351 () Bool)

(assert (=> b!176331 (=> (not res!83572) (not e!116351))))

(declare-datatypes ((V!5145 0))(
  ( (V!5146 (val!2106 Int)) )
))
(declare-datatypes ((ValueCell!1718 0))(
  ( (ValueCellFull!1718 (v!3979 V!5145)) (EmptyCell!1718) )
))
(declare-datatypes ((array!7390 0))(
  ( (array!7391 (arr!3506 (Array (_ BitVec 32) (_ BitVec 64))) (size!3810 (_ BitVec 32))) )
))
(declare-datatypes ((array!7392 0))(
  ( (array!7393 (arr!3507 (Array (_ BitVec 32) ValueCell!1718)) (size!3811 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2344 0))(
  ( (LongMapFixedSize!2345 (defaultEntry!3632 Int) (mask!8549 (_ BitVec 32)) (extraKeys!3369 (_ BitVec 32)) (zeroValue!3473 V!5145) (minValue!3473 V!5145) (_size!1221 (_ BitVec 32)) (_keys!5493 array!7390) (_values!3615 array!7392) (_vacant!1221 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!2344)

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!176331 (= res!83572 (validMask!0 (mask!8549 thiss!1248)))))

(declare-fun tp_is_empty!4123 () Bool)

(declare-fun e!116350 () Bool)

(declare-fun e!116352 () Bool)

(declare-fun array_inv!2235 (array!7390) Bool)

(declare-fun array_inv!2236 (array!7392) Bool)

(assert (=> b!176332 (= e!116350 (and tp!15743 tp_is_empty!4123 (array_inv!2235 (_keys!5493 thiss!1248)) (array_inv!2236 (_values!3615 thiss!1248)) e!116352))))

(declare-fun mapNonEmpty!7038 () Bool)

(declare-fun mapRes!7038 () Bool)

(declare-fun tp!15744 () Bool)

(declare-fun e!116353 () Bool)

(assert (=> mapNonEmpty!7038 (= mapRes!7038 (and tp!15744 e!116353))))

(declare-fun mapRest!7038 () (Array (_ BitVec 32) ValueCell!1718))

(declare-fun mapKey!7038 () (_ BitVec 32))

(declare-fun mapValue!7038 () ValueCell!1718)

(assert (=> mapNonEmpty!7038 (= (arr!3507 (_values!3615 thiss!1248)) (store mapRest!7038 mapKey!7038 mapValue!7038))))

(declare-fun b!176334 () Bool)

(declare-fun res!83571 () Bool)

(assert (=> b!176334 (=> (not res!83571) (not e!116351))))

(declare-fun key!828 () (_ BitVec 64))

(declare-datatypes ((tuple2!3272 0))(
  ( (tuple2!3273 (_1!1646 (_ BitVec 64)) (_2!1646 V!5145)) )
))
(declare-datatypes ((List!2251 0))(
  ( (Nil!2248) (Cons!2247 (h!2868 tuple2!3272) (t!7083 List!2251)) )
))
(declare-datatypes ((ListLongMap!2213 0))(
  ( (ListLongMap!2214 (toList!1122 List!2251)) )
))
(declare-fun contains!1180 (ListLongMap!2213 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!769 (array!7390 array!7392 (_ BitVec 32) (_ BitVec 32) V!5145 V!5145 (_ BitVec 32) Int) ListLongMap!2213)

(assert (=> b!176334 (= res!83571 (contains!1180 (getCurrentListMap!769 (_keys!5493 thiss!1248) (_values!3615 thiss!1248) (mask!8549 thiss!1248) (extraKeys!3369 thiss!1248) (zeroValue!3473 thiss!1248) (minValue!3473 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3632 thiss!1248)) key!828))))

(declare-fun b!176335 () Bool)

(declare-fun e!116349 () Bool)

(assert (=> b!176335 (= e!116349 tp_is_empty!4123)))

(declare-fun b!176336 () Bool)

(assert (=> b!176336 (= e!116352 (and e!116349 mapRes!7038))))

(declare-fun condMapEmpty!7038 () Bool)

(declare-fun mapDefault!7038 () ValueCell!1718)

