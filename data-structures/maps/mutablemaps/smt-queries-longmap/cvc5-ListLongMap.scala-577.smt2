; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!15616 () Bool)

(assert start!15616)

(declare-fun b!155346 () Bool)

(declare-fun b_free!3271 () Bool)

(declare-fun b_next!3271 () Bool)

(assert (=> b!155346 (= b_free!3271 (not b_next!3271))))

(declare-fun tp!12337 () Bool)

(declare-fun b_and!9703 () Bool)

(assert (=> b!155346 (= tp!12337 b_and!9703)))

(declare-fun b!155338 () Bool)

(declare-fun e!101497 () Bool)

(declare-fun e!101496 () Bool)

(declare-fun mapRes!5252 () Bool)

(assert (=> b!155338 (= e!101497 (and e!101496 mapRes!5252))))

(declare-fun condMapEmpty!5252 () Bool)

(declare-datatypes ((V!3745 0))(
  ( (V!3746 (val!1581 Int)) )
))
(declare-datatypes ((ValueCell!1193 0))(
  ( (ValueCellFull!1193 (v!3442 V!3745)) (EmptyCell!1193) )
))
(declare-datatypes ((array!5198 0))(
  ( (array!5199 (arr!2456 (Array (_ BitVec 32) (_ BitVec 64))) (size!2734 (_ BitVec 32))) )
))
(declare-datatypes ((array!5200 0))(
  ( (array!5201 (arr!2457 (Array (_ BitVec 32) ValueCell!1193)) (size!2735 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1294 0))(
  ( (LongMapFixedSize!1295 (defaultEntry!3089 Int) (mask!7512 (_ BitVec 32)) (extraKeys!2830 (_ BitVec 32)) (zeroValue!2932 V!3745) (minValue!2932 V!3745) (_size!696 (_ BitVec 32)) (_keys!4864 array!5198) (_values!3072 array!5200) (_vacant!696 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!1294)

(declare-fun mapDefault!5252 () ValueCell!1193)

