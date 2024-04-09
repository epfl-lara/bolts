; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!15716 () Bool)

(assert start!15716)

(declare-fun b!156577 () Bool)

(declare-fun b_free!3371 () Bool)

(declare-fun b_next!3371 () Bool)

(assert (=> b!156577 (= b_free!3371 (not b_next!3371))))

(declare-fun tp!12637 () Bool)

(declare-fun b_and!9803 () Bool)

(assert (=> b!156577 (= tp!12637 b_and!9803)))

(declare-fun b!156571 () Bool)

(declare-fun e!102411 () Bool)

(declare-fun tp_is_empty!3173 () Bool)

(assert (=> b!156571 (= e!102411 tp_is_empty!3173)))

(declare-fun b!156572 () Bool)

(declare-fun e!102416 () Bool)

(declare-fun mapRes!5402 () Bool)

(assert (=> b!156572 (= e!102416 (and e!102411 mapRes!5402))))

(declare-fun condMapEmpty!5402 () Bool)

(declare-datatypes ((V!3877 0))(
  ( (V!3878 (val!1631 Int)) )
))
(declare-datatypes ((ValueCell!1243 0))(
  ( (ValueCellFull!1243 (v!3492 V!3877)) (EmptyCell!1243) )
))
(declare-datatypes ((array!5398 0))(
  ( (array!5399 (arr!2556 (Array (_ BitVec 32) (_ BitVec 64))) (size!2834 (_ BitVec 32))) )
))
(declare-datatypes ((array!5400 0))(
  ( (array!5401 (arr!2557 (Array (_ BitVec 32) ValueCell!1243)) (size!2835 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1394 0))(
  ( (LongMapFixedSize!1395 (defaultEntry!3139 Int) (mask!7594 (_ BitVec 32)) (extraKeys!2880 (_ BitVec 32)) (zeroValue!2982 V!3877) (minValue!2982 V!3877) (_size!746 (_ BitVec 32)) (_keys!4914 array!5398) (_values!3122 array!5400) (_vacant!746 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!1394)

(declare-fun mapDefault!5402 () ValueCell!1243)

