; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!22136 () Bool)

(assert start!22136)

(declare-fun b!230371 () Bool)

(declare-fun b_free!6191 () Bool)

(declare-fun b_next!6191 () Bool)

(assert (=> b!230371 (= b_free!6191 (not b_next!6191))))

(declare-fun tp!21715 () Bool)

(declare-fun b_and!13107 () Bool)

(assert (=> b!230371 (= tp!21715 b_and!13107)))

(declare-fun b!230356 () Bool)

(declare-fun e!149501 () Bool)

(declare-fun call!21406 () Bool)

(assert (=> b!230356 (= e!149501 (not call!21406))))

(declare-fun b!230357 () Bool)

(declare-fun e!149496 () Bool)

(declare-fun e!149500 () Bool)

(declare-fun mapRes!10249 () Bool)

(assert (=> b!230357 (= e!149496 (and e!149500 mapRes!10249))))

(declare-fun condMapEmpty!10249 () Bool)

(declare-datatypes ((V!7717 0))(
  ( (V!7718 (val!3071 Int)) )
))
(declare-datatypes ((ValueCell!2683 0))(
  ( (ValueCellFull!2683 (v!5087 V!7717)) (EmptyCell!2683) )
))
(declare-datatypes ((array!11348 0))(
  ( (array!11349 (arr!5393 (Array (_ BitVec 32) ValueCell!2683)) (size!5726 (_ BitVec 32))) )
))
(declare-datatypes ((array!11350 0))(
  ( (array!11351 (arr!5394 (Array (_ BitVec 32) (_ BitVec 64))) (size!5727 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3266 0))(
  ( (LongMapFixedSize!3267 (defaultEntry!4292 Int) (mask!10182 (_ BitVec 32)) (extraKeys!4029 (_ BitVec 32)) (zeroValue!4133 V!7717) (minValue!4133 V!7717) (_size!1682 (_ BitVec 32)) (_keys!6346 array!11350) (_values!4275 array!11348) (_vacant!1682 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3266)

(declare-fun mapDefault!10249 () ValueCell!2683)

