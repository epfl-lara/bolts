; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!17760 () Bool)

(assert start!17760)

(declare-fun b!177376 () Bool)

(declare-fun b_free!4387 () Bool)

(declare-fun b_next!4387 () Bool)

(assert (=> b!177376 (= b_free!4387 (not b_next!4387))))

(declare-fun tp!15863 () Bool)

(declare-fun b_and!10907 () Bool)

(assert (=> b!177376 (= tp!15863 b_and!10907)))

(declare-fun b!177371 () Bool)

(declare-fun res!84089 () Bool)

(declare-fun e!116978 () Bool)

(assert (=> b!177371 (=> (not res!84089) (not e!116978))))

(declare-datatypes ((V!5193 0))(
  ( (V!5194 (val!2124 Int)) )
))
(declare-datatypes ((ValueCell!1736 0))(
  ( (ValueCellFull!1736 (v!4001 V!5193)) (EmptyCell!1736) )
))
(declare-datatypes ((array!7470 0))(
  ( (array!7471 (arr!3542 (Array (_ BitVec 32) (_ BitVec 64))) (size!3846 (_ BitVec 32))) )
))
(declare-datatypes ((array!7472 0))(
  ( (array!7473 (arr!3543 (Array (_ BitVec 32) ValueCell!1736)) (size!3847 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2380 0))(
  ( (LongMapFixedSize!2381 (defaultEntry!3654 Int) (mask!8594 (_ BitVec 32)) (extraKeys!3391 (_ BitVec 32)) (zeroValue!3495 V!5193) (minValue!3495 V!5193) (_size!1239 (_ BitVec 32)) (_keys!5522 array!7470) (_values!3637 array!7472) (_vacant!1239 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!2380)

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!177371 (= res!84089 (validMask!0 (mask!8594 thiss!1248)))))

(declare-fun b!177372 () Bool)

(declare-fun res!84086 () Bool)

(assert (=> b!177372 (=> (not res!84086) (not e!116978))))

(declare-fun key!828 () (_ BitVec 64))

(assert (=> b!177372 (= res!84086 (not (= key!828 (bvneg key!828))))))

(declare-fun b!177373 () Bool)

(declare-fun res!84088 () Bool)

(assert (=> b!177373 (=> (not res!84088) (not e!116978))))

(declare-datatypes ((tuple2!3302 0))(
  ( (tuple2!3303 (_1!1661 (_ BitVec 64)) (_2!1661 V!5193)) )
))
(declare-datatypes ((List!2275 0))(
  ( (Nil!2272) (Cons!2271 (h!2892 tuple2!3302) (t!7115 List!2275)) )
))
(declare-datatypes ((ListLongMap!2243 0))(
  ( (ListLongMap!2244 (toList!1137 List!2275)) )
))
(declare-fun contains!1197 (ListLongMap!2243 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!784 (array!7470 array!7472 (_ BitVec 32) (_ BitVec 32) V!5193 V!5193 (_ BitVec 32) Int) ListLongMap!2243)

(assert (=> b!177373 (= res!84088 (not (contains!1197 (getCurrentListMap!784 (_keys!5522 thiss!1248) (_values!3637 thiss!1248) (mask!8594 thiss!1248) (extraKeys!3391 thiss!1248) (zeroValue!3495 thiss!1248) (minValue!3495 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3654 thiss!1248)) key!828)))))

(declare-fun b!177374 () Bool)

(declare-fun e!116977 () Bool)

(declare-fun tp_is_empty!4159 () Bool)

(assert (=> b!177374 (= e!116977 tp_is_empty!4159)))

(declare-fun mapIsEmpty!7104 () Bool)

(declare-fun mapRes!7104 () Bool)

(assert (=> mapIsEmpty!7104 mapRes!7104))

(declare-fun b!177375 () Bool)

(declare-fun res!84087 () Bool)

(assert (=> b!177375 (=> (not res!84087) (not e!116978))))

(declare-datatypes ((SeekEntryResult!577 0))(
  ( (MissingZero!577 (index!4476 (_ BitVec 32))) (Found!577 (index!4477 (_ BitVec 32))) (Intermediate!577 (undefined!1389 Bool) (index!4478 (_ BitVec 32)) (x!19475 (_ BitVec 32))) (Undefined!577) (MissingVacant!577 (index!4479 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!7470 (_ BitVec 32)) SeekEntryResult!577)

(assert (=> b!177375 (= res!84087 (is-Undefined!577 (seekEntryOrOpen!0 key!828 (_keys!5522 thiss!1248) (mask!8594 thiss!1248))))))

(declare-fun e!116980 () Bool)

(declare-fun e!116976 () Bool)

(declare-fun array_inv!2263 (array!7470) Bool)

(declare-fun array_inv!2264 (array!7472) Bool)

(assert (=> b!177376 (= e!116980 (and tp!15863 tp_is_empty!4159 (array_inv!2263 (_keys!5522 thiss!1248)) (array_inv!2264 (_values!3637 thiss!1248)) e!116976))))

(declare-fun b!177377 () Bool)

(assert (=> b!177377 (= e!116976 (and e!116977 mapRes!7104))))

(declare-fun condMapEmpty!7104 () Bool)

(declare-fun mapDefault!7104 () ValueCell!1736)

