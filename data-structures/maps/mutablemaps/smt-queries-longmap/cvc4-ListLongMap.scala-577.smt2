; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!15620 () Bool)

(assert start!15620)

(declare-fun b!155392 () Bool)

(declare-fun b_free!3275 () Bool)

(declare-fun b_next!3275 () Bool)

(assert (=> b!155392 (= b_free!3275 (not b_next!3275))))

(declare-fun tp!12349 () Bool)

(declare-fun b_and!9707 () Bool)

(assert (=> b!155392 (= tp!12349 b_and!9707)))

(declare-fun tp_is_empty!3077 () Bool)

(declare-fun e!101530 () Bool)

(declare-fun e!101534 () Bool)

(declare-datatypes ((V!3749 0))(
  ( (V!3750 (val!1583 Int)) )
))
(declare-datatypes ((ValueCell!1195 0))(
  ( (ValueCellFull!1195 (v!3444 V!3749)) (EmptyCell!1195) )
))
(declare-datatypes ((array!5206 0))(
  ( (array!5207 (arr!2460 (Array (_ BitVec 32) (_ BitVec 64))) (size!2738 (_ BitVec 32))) )
))
(declare-datatypes ((array!5208 0))(
  ( (array!5209 (arr!2461 (Array (_ BitVec 32) ValueCell!1195)) (size!2739 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1298 0))(
  ( (LongMapFixedSize!1299 (defaultEntry!3091 Int) (mask!7514 (_ BitVec 32)) (extraKeys!2832 (_ BitVec 32)) (zeroValue!2934 V!3749) (minValue!2934 V!3749) (_size!698 (_ BitVec 32)) (_keys!4866 array!5206) (_values!3074 array!5208) (_vacant!698 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!1298)

(declare-fun array_inv!1535 (array!5206) Bool)

(declare-fun array_inv!1536 (array!5208) Bool)

(assert (=> b!155392 (= e!101534 (and tp!12349 tp_is_empty!3077 (array_inv!1535 (_keys!4866 thiss!1248)) (array_inv!1536 (_values!3074 thiss!1248)) e!101530))))

(declare-fun b!155393 () Bool)

(declare-fun e!101531 () Bool)

(declare-fun mapRes!5258 () Bool)

(assert (=> b!155393 (= e!101530 (and e!101531 mapRes!5258))))

(declare-fun condMapEmpty!5258 () Bool)

(declare-fun mapDefault!5258 () ValueCell!1195)

