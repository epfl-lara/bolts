; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!15280 () Bool)

(assert start!15280)

(declare-fun b!147670 () Bool)

(declare-fun b_free!3169 () Bool)

(declare-fun b_next!3169 () Bool)

(assert (=> b!147670 (= b_free!3169 (not b_next!3169))))

(declare-fun tp!12014 () Bool)

(declare-fun b_and!9301 () Bool)

(assert (=> b!147670 (= tp!12014 b_and!9301)))

(declare-fun b!147661 () Bool)

(declare-fun b_free!3171 () Bool)

(declare-fun b_next!3171 () Bool)

(assert (=> b!147661 (= b_free!3171 (not b_next!3171))))

(declare-fun tp!12013 () Bool)

(declare-fun b_and!9303 () Bool)

(assert (=> b!147661 (= tp!12013 b_and!9303)))

(declare-fun b!147652 () Bool)

(declare-fun e!96466 () Bool)

(declare-fun e!96460 () Bool)

(declare-fun mapRes!5079 () Bool)

(assert (=> b!147652 (= e!96466 (and e!96460 mapRes!5079))))

(declare-fun condMapEmpty!5079 () Bool)

(declare-datatypes ((V!3649 0))(
  ( (V!3650 (val!1545 Int)) )
))
(declare-datatypes ((array!5048 0))(
  ( (array!5049 (arr!2384 (Array (_ BitVec 32) (_ BitVec 64))) (size!2660 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!1157 0))(
  ( (ValueCellFull!1157 (v!3380 V!3649)) (EmptyCell!1157) )
))
(declare-datatypes ((array!5050 0))(
  ( (array!5051 (arr!2385 (Array (_ BitVec 32) ValueCell!1157)) (size!2661 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1222 0))(
  ( (LongMapFixedSize!1223 (defaultEntry!3030 Int) (mask!7416 (_ BitVec 32)) (extraKeys!2775 (_ BitVec 32)) (zeroValue!2875 V!3649) (minValue!2875 V!3649) (_size!660 (_ BitVec 32)) (_keys!4799 array!5048) (_values!3013 array!5050) (_vacant!660 (_ BitVec 32))) )
))
(declare-fun newMap!16 () LongMapFixedSize!1222)

(declare-fun mapDefault!5079 () ValueCell!1157)

