; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!16920 () Bool)

(assert start!16920)

(declare-fun b!170117 () Bool)

(declare-fun b_free!4187 () Bool)

(declare-fun b_next!4187 () Bool)

(assert (=> b!170117 (= b_free!4187 (not b_next!4187))))

(declare-fun tp!15176 () Bool)

(declare-fun b_and!10619 () Bool)

(assert (=> b!170117 (= tp!15176 b_and!10619)))

(declare-fun mapIsEmpty!6717 () Bool)

(declare-fun mapRes!6717 () Bool)

(assert (=> mapIsEmpty!6717 mapRes!6717))

(declare-fun b!170112 () Bool)

(declare-fun e!112242 () Bool)

(declare-fun e!112238 () Bool)

(assert (=> b!170112 (= e!112242 (and e!112238 mapRes!6717))))

(declare-fun condMapEmpty!6717 () Bool)

(declare-datatypes ((V!4925 0))(
  ( (V!4926 (val!2024 Int)) )
))
(declare-datatypes ((ValueCell!1636 0))(
  ( (ValueCellFull!1636 (v!3885 V!4925)) (EmptyCell!1636) )
))
(declare-datatypes ((array!7022 0))(
  ( (array!7023 (arr!3342 (Array (_ BitVec 32) (_ BitVec 64))) (size!3633 (_ BitVec 32))) )
))
(declare-datatypes ((array!7024 0))(
  ( (array!7025 (arr!3343 (Array (_ BitVec 32) ValueCell!1636)) (size!3634 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2180 0))(
  ( (LongMapFixedSize!2181 (defaultEntry!3532 Int) (mask!8336 (_ BitVec 32)) (extraKeys!3273 (_ BitVec 32)) (zeroValue!3375 V!4925) (minValue!3375 V!4925) (_size!1139 (_ BitVec 32)) (_keys!5360 array!7022) (_values!3515 array!7024) (_vacant!1139 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!2180)

(declare-fun mapDefault!6717 () ValueCell!1636)

