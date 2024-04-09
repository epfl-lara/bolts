; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!15686 () Bool)

(assert start!15686)

(declare-fun b!156169 () Bool)

(declare-fun b_free!3341 () Bool)

(declare-fun b_next!3341 () Bool)

(assert (=> b!156169 (= b_free!3341 (not b_next!3341))))

(declare-fun tp!12548 () Bool)

(declare-fun b_and!9773 () Bool)

(assert (=> b!156169 (= tp!12548 b_and!9773)))

(declare-fun b!156166 () Bool)

(declare-fun e!102141 () Bool)

(declare-fun e!102146 () Bool)

(declare-fun mapRes!5357 () Bool)

(assert (=> b!156166 (= e!102141 (and e!102146 mapRes!5357))))

(declare-fun condMapEmpty!5357 () Bool)

(declare-datatypes ((V!3837 0))(
  ( (V!3838 (val!1616 Int)) )
))
(declare-datatypes ((ValueCell!1228 0))(
  ( (ValueCellFull!1228 (v!3477 V!3837)) (EmptyCell!1228) )
))
(declare-datatypes ((array!5338 0))(
  ( (array!5339 (arr!2526 (Array (_ BitVec 32) (_ BitVec 64))) (size!2804 (_ BitVec 32))) )
))
(declare-datatypes ((array!5340 0))(
  ( (array!5341 (arr!2527 (Array (_ BitVec 32) ValueCell!1228)) (size!2805 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1364 0))(
  ( (LongMapFixedSize!1365 (defaultEntry!3124 Int) (mask!7569 (_ BitVec 32)) (extraKeys!2865 (_ BitVec 32)) (zeroValue!2967 V!3837) (minValue!2967 V!3837) (_size!731 (_ BitVec 32)) (_keys!4899 array!5338) (_values!3107 array!5340) (_vacant!731 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!1364)

(declare-fun mapDefault!5357 () ValueCell!1228)

