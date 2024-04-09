; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!15898 () Bool)

(assert start!15898)

(declare-fun b!158025 () Bool)

(declare-fun b_free!3469 () Bool)

(declare-fun b_next!3469 () Bool)

(assert (=> b!158025 (= b_free!3469 (not b_next!3469))))

(declare-fun tp!12952 () Bool)

(declare-fun b_and!9901 () Bool)

(assert (=> b!158025 (= tp!12952 b_and!9901)))

(declare-fun mapIsEmpty!5570 () Bool)

(declare-fun mapRes!5570 () Bool)

(assert (=> mapIsEmpty!5570 mapRes!5570))

(declare-fun b!158018 () Bool)

(declare-fun e!103504 () Bool)

(declare-fun e!103503 () Bool)

(assert (=> b!158018 (= e!103504 (and e!103503 mapRes!5570))))

(declare-fun condMapEmpty!5570 () Bool)

(declare-datatypes ((V!4009 0))(
  ( (V!4010 (val!1680 Int)) )
))
(declare-datatypes ((ValueCell!1292 0))(
  ( (ValueCellFull!1292 (v!3541 V!4009)) (EmptyCell!1292) )
))
(declare-datatypes ((array!5606 0))(
  ( (array!5607 (arr!2654 (Array (_ BitVec 32) (_ BitVec 64))) (size!2935 (_ BitVec 32))) )
))
(declare-datatypes ((array!5608 0))(
  ( (array!5609 (arr!2655 (Array (_ BitVec 32) ValueCell!1292)) (size!2936 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1492 0))(
  ( (LongMapFixedSize!1493 (defaultEntry!3188 Int) (mask!7691 (_ BitVec 32)) (extraKeys!2929 (_ BitVec 32)) (zeroValue!3031 V!4009) (minValue!3031 V!4009) (_size!795 (_ BitVec 32)) (_keys!4970 array!5606) (_values!3171 array!5608) (_vacant!795 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!1492)

(declare-fun mapDefault!5570 () ValueCell!1292)

