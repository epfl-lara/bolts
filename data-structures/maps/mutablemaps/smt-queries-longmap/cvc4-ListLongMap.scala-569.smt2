; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!15496 () Bool)

(assert start!15496)

(declare-fun b!154037 () Bool)

(declare-fun b_free!3225 () Bool)

(declare-fun b_next!3225 () Bool)

(assert (=> b!154037 (= b_free!3225 (not b_next!3225))))

(declare-fun tp!12197 () Bool)

(declare-fun b_and!9613 () Bool)

(assert (=> b!154037 (= tp!12197 b_and!9613)))

(declare-fun b!154038 () Bool)

(declare-fun b_free!3227 () Bool)

(declare-fun b_next!3227 () Bool)

(assert (=> b!154038 (= b_free!3227 (not b_next!3227))))

(declare-fun tp!12198 () Bool)

(declare-fun b_and!9615 () Bool)

(assert (=> b!154038 (= tp!12198 b_and!9615)))

(declare-fun b!154035 () Bool)

(declare-fun e!100672 () Bool)

(declare-fun e!100669 () Bool)

(declare-fun mapRes!5177 () Bool)

(assert (=> b!154035 (= e!100672 (and e!100669 mapRes!5177))))

(declare-fun condMapEmpty!5177 () Bool)

(declare-datatypes ((V!3685 0))(
  ( (V!3686 (val!1559 Int)) )
))
(declare-datatypes ((array!5108 0))(
  ( (array!5109 (arr!2412 (Array (_ BitVec 32) (_ BitVec 64))) (size!2689 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!1171 0))(
  ( (ValueCellFull!1171 (v!3417 V!3685)) (EmptyCell!1171) )
))
(declare-datatypes ((array!5110 0))(
  ( (array!5111 (arr!2413 (Array (_ BitVec 32) ValueCell!1171)) (size!2690 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1250 0))(
  ( (LongMapFixedSize!1251 (defaultEntry!3065 Int) (mask!7469 (_ BitVec 32)) (extraKeys!2806 (_ BitVec 32)) (zeroValue!2908 V!3685) (minValue!2908 V!3685) (_size!674 (_ BitVec 32)) (_keys!4838 array!5108) (_values!3048 array!5110) (_vacant!674 (_ BitVec 32))) )
))
(declare-fun newMap!16 () LongMapFixedSize!1250)

(declare-fun mapDefault!5178 () ValueCell!1171)

