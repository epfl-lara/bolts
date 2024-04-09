; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!17248 () Bool)

(assert start!17248)

(declare-fun b!172850 () Bool)

(declare-fun b_free!4283 () Bool)

(declare-fun b_next!4283 () Bool)

(assert (=> b!172850 (= b_free!4283 (not b_next!4283))))

(declare-fun tp!15507 () Bool)

(declare-fun b_and!10741 () Bool)

(assert (=> b!172850 (= tp!15507 b_and!10741)))

(declare-fun mapIsEmpty!6903 () Bool)

(declare-fun mapRes!6903 () Bool)

(assert (=> mapIsEmpty!6903 mapRes!6903))

(declare-fun b!172846 () Bool)

(declare-fun e!114148 () Bool)

(declare-fun e!114150 () Bool)

(assert (=> b!172846 (= e!114148 (and e!114150 mapRes!6903))))

(declare-fun condMapEmpty!6903 () Bool)

(declare-datatypes ((V!5053 0))(
  ( (V!5054 (val!2072 Int)) )
))
(declare-datatypes ((ValueCell!1684 0))(
  ( (ValueCellFull!1684 (v!3936 V!5053)) (EmptyCell!1684) )
))
(declare-datatypes ((array!7236 0))(
  ( (array!7237 (arr!3438 (Array (_ BitVec 32) (_ BitVec 64))) (size!3737 (_ BitVec 32))) )
))
(declare-datatypes ((array!7238 0))(
  ( (array!7239 (arr!3439 (Array (_ BitVec 32) ValueCell!1684)) (size!3738 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2276 0))(
  ( (LongMapFixedSize!2277 (defaultEntry!3584 Int) (mask!8442 (_ BitVec 32)) (extraKeys!3323 (_ BitVec 32)) (zeroValue!3425 V!5053) (minValue!3427 V!5053) (_size!1187 (_ BitVec 32)) (_keys!5423 array!7236) (_values!3567 array!7238) (_vacant!1187 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!2276)

(declare-fun mapDefault!6903 () ValueCell!1684)

