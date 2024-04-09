; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!15948 () Bool)

(assert start!15948)

(declare-fun b!158379 () Bool)

(declare-fun b_free!3485 () Bool)

(declare-fun b_next!3485 () Bool)

(assert (=> b!158379 (= b_free!3485 (not b_next!3485))))

(declare-fun tp!13007 () Bool)

(declare-fun b_and!9917 () Bool)

(assert (=> b!158379 (= tp!13007 b_and!9917)))

(declare-fun b!158378 () Bool)

(declare-fun e!103744 () Bool)

(declare-fun e!103743 () Bool)

(declare-fun mapRes!5601 () Bool)

(assert (=> b!158378 (= e!103744 (and e!103743 mapRes!5601))))

(declare-fun condMapEmpty!5601 () Bool)

(declare-datatypes ((V!4029 0))(
  ( (V!4030 (val!1688 Int)) )
))
(declare-datatypes ((ValueCell!1300 0))(
  ( (ValueCellFull!1300 (v!3549 V!4029)) (EmptyCell!1300) )
))
(declare-datatypes ((array!5642 0))(
  ( (array!5643 (arr!2670 (Array (_ BitVec 32) (_ BitVec 64))) (size!2952 (_ BitVec 32))) )
))
(declare-datatypes ((array!5644 0))(
  ( (array!5645 (arr!2671 (Array (_ BitVec 32) ValueCell!1300)) (size!2953 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1508 0))(
  ( (LongMapFixedSize!1509 (defaultEntry!3196 Int) (mask!7711 (_ BitVec 32)) (extraKeys!2937 (_ BitVec 32)) (zeroValue!3039 V!4029) (minValue!3039 V!4029) (_size!803 (_ BitVec 32)) (_keys!4983 array!5642) (_values!3179 array!5644) (_vacant!803 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!1508)

(declare-fun mapDefault!5601 () ValueCell!1300)

