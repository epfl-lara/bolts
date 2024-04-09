; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!17524 () Bool)

(assert start!17524)

(declare-fun b!175375 () Bool)

(declare-fun b_free!4333 () Bool)

(declare-fun b_next!4333 () Bool)

(assert (=> b!175375 (= b_free!4333 (not b_next!4333))))

(declare-fun tp!15679 () Bool)

(declare-fun b_and!10831 () Bool)

(assert (=> b!175375 (= tp!15679 b_and!10831)))

(declare-fun mapIsEmpty!7000 () Bool)

(declare-fun mapRes!7000 () Bool)

(assert (=> mapIsEmpty!7000 mapRes!7000))

(declare-fun b!175367 () Bool)

(declare-fun e!115766 () Bool)

(declare-fun tp_is_empty!4105 () Bool)

(assert (=> b!175367 (= e!115766 tp_is_empty!4105)))

(declare-fun b!175368 () Bool)

(declare-fun res!83151 () Bool)

(declare-fun e!115770 () Bool)

(assert (=> b!175368 (=> (not res!83151) (not e!115770))))

(declare-datatypes ((V!5121 0))(
  ( (V!5122 (val!2097 Int)) )
))
(declare-datatypes ((ValueCell!1709 0))(
  ( (ValueCellFull!1709 (v!3967 V!5121)) (EmptyCell!1709) )
))
(declare-datatypes ((array!7348 0))(
  ( (array!7349 (arr!3488 (Array (_ BitVec 32) (_ BitVec 64))) (size!3790 (_ BitVec 32))) )
))
(declare-datatypes ((array!7350 0))(
  ( (array!7351 (arr!3489 (Array (_ BitVec 32) ValueCell!1709)) (size!3791 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2326 0))(
  ( (LongMapFixedSize!2327 (defaultEntry!3618 Int) (mask!8515 (_ BitVec 32)) (extraKeys!3355 (_ BitVec 32)) (zeroValue!3459 V!5121) (minValue!3459 V!5121) (_size!1212 (_ BitVec 32)) (_keys!5470 array!7348) (_values!3601 array!7350) (_vacant!1212 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!2326)

(declare-fun key!828 () (_ BitVec 64))

(declare-datatypes ((tuple2!3256 0))(
  ( (tuple2!3257 (_1!1638 (_ BitVec 64)) (_2!1638 V!5121)) )
))
(declare-datatypes ((List!2240 0))(
  ( (Nil!2237) (Cons!2236 (h!2855 tuple2!3256) (t!7066 List!2240)) )
))
(declare-datatypes ((ListLongMap!2197 0))(
  ( (ListLongMap!2198 (toList!1114 List!2240)) )
))
(declare-fun contains!1168 (ListLongMap!2197 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!761 (array!7348 array!7350 (_ BitVec 32) (_ BitVec 32) V!5121 V!5121 (_ BitVec 32) Int) ListLongMap!2197)

(assert (=> b!175368 (= res!83151 (contains!1168 (getCurrentListMap!761 (_keys!5470 thiss!1248) (_values!3601 thiss!1248) (mask!8515 thiss!1248) (extraKeys!3355 thiss!1248) (zeroValue!3459 thiss!1248) (minValue!3459 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3618 thiss!1248)) key!828))))

(declare-fun res!83153 () Bool)

(assert (=> start!17524 (=> (not res!83153) (not e!115770))))

(declare-fun valid!973 (LongMapFixedSize!2326) Bool)

(assert (=> start!17524 (= res!83153 (valid!973 thiss!1248))))

(assert (=> start!17524 e!115770))

(declare-fun e!115767 () Bool)

(assert (=> start!17524 e!115767))

(assert (=> start!17524 true))

(declare-fun b!175369 () Bool)

(declare-fun e!115765 () Bool)

(assert (=> b!175369 (= e!115765 tp_is_empty!4105)))

(declare-fun b!175370 () Bool)

(declare-fun e!115769 () Bool)

(assert (=> b!175370 (= e!115769 (and e!115765 mapRes!7000))))

(declare-fun condMapEmpty!7000 () Bool)

(declare-fun mapDefault!7000 () ValueCell!1709)

