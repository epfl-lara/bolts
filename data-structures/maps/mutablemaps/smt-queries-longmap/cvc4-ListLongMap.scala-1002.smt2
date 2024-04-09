; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!21628 () Bool)

(assert start!21628)

(declare-fun b!216592 () Bool)

(declare-fun b_free!5765 () Bool)

(declare-fun b_next!5765 () Bool)

(assert (=> b!216592 (= b_free!5765 (not b_next!5765))))

(declare-fun tp!20430 () Bool)

(declare-fun b_and!12673 () Bool)

(assert (=> b!216592 (= tp!20430 b_and!12673)))

(declare-fun b!216590 () Bool)

(declare-fun res!105954 () Bool)

(declare-fun e!140927 () Bool)

(assert (=> b!216590 (=> (not res!105954) (not e!140927))))

(declare-datatypes ((V!7149 0))(
  ( (V!7150 (val!2858 Int)) )
))
(declare-datatypes ((ValueCell!2470 0))(
  ( (ValueCellFull!2470 (v!4872 V!7149)) (EmptyCell!2470) )
))
(declare-datatypes ((array!10492 0))(
  ( (array!10493 (arr!4967 (Array (_ BitVec 32) ValueCell!2470)) (size!5299 (_ BitVec 32))) )
))
(declare-datatypes ((array!10494 0))(
  ( (array!10495 (arr!4968 (Array (_ BitVec 32) (_ BitVec 64))) (size!5300 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2840 0))(
  ( (LongMapFixedSize!2841 (defaultEntry!4070 Int) (mask!9809 (_ BitVec 32)) (extraKeys!3807 (_ BitVec 32)) (zeroValue!3911 V!7149) (minValue!3911 V!7149) (_size!1469 (_ BitVec 32)) (_keys!6119 array!10494) (_values!4053 array!10492) (_vacant!1469 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!2840)

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!216590 (= res!105954 (validMask!0 (mask!9809 thiss!1504)))))

(declare-fun b!216591 () Bool)

(declare-fun e!140928 () Bool)

(declare-fun e!140923 () Bool)

(declare-fun mapRes!9603 () Bool)

(assert (=> b!216591 (= e!140928 (and e!140923 mapRes!9603))))

(declare-fun condMapEmpty!9603 () Bool)

(declare-fun mapDefault!9603 () ValueCell!2470)

