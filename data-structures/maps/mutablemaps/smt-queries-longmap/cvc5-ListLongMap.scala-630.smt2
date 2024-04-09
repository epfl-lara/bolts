; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!16140 () Bool)

(assert start!16140)

(declare-fun b!160479 () Bool)

(declare-fun b_free!3589 () Bool)

(declare-fun b_next!3589 () Bool)

(assert (=> b!160479 (= b_free!3589 (not b_next!3589))))

(declare-fun tp!13337 () Bool)

(declare-fun b_and!10021 () Bool)

(assert (=> b!160479 (= tp!13337 b_and!10021)))

(declare-fun b!160474 () Bool)

(declare-fun e!104932 () Bool)

(declare-fun e!104933 () Bool)

(declare-fun mapRes!5774 () Bool)

(assert (=> b!160474 (= e!104932 (and e!104933 mapRes!5774))))

(declare-fun condMapEmpty!5774 () Bool)

(declare-datatypes ((V!4169 0))(
  ( (V!4170 (val!1740 Int)) )
))
(declare-datatypes ((ValueCell!1352 0))(
  ( (ValueCellFull!1352 (v!3601 V!4169)) (EmptyCell!1352) )
))
(declare-datatypes ((array!5860 0))(
  ( (array!5861 (arr!2774 (Array (_ BitVec 32) (_ BitVec 64))) (size!3058 (_ BitVec 32))) )
))
(declare-datatypes ((array!5862 0))(
  ( (array!5863 (arr!2775 (Array (_ BitVec 32) ValueCell!1352)) (size!3059 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1612 0))(
  ( (LongMapFixedSize!1613 (defaultEntry!3248 Int) (mask!7820 (_ BitVec 32)) (extraKeys!2989 (_ BitVec 32)) (zeroValue!3091 V!4169) (minValue!3091 V!4169) (_size!855 (_ BitVec 32)) (_keys!5049 array!5860) (_values!3231 array!5862) (_vacant!855 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!1612)

(declare-fun mapDefault!5774 () ValueCell!1352)

