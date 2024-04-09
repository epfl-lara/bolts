; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!11076 () Bool)

(assert start!11076)

(declare-fun b!90114 () Bool)

(declare-fun b_free!2289 () Bool)

(declare-fun b_next!2289 () Bool)

(assert (=> b!90114 (= b_free!2289 (not b_next!2289))))

(declare-fun tp!9114 () Bool)

(declare-fun b_and!5417 () Bool)

(assert (=> b!90114 (= tp!9114 b_and!5417)))

(declare-fun b!90110 () Bool)

(declare-fun b_free!2291 () Bool)

(declare-fun b_next!2291 () Bool)

(assert (=> b!90110 (= b_free!2291 (not b_next!2291))))

(declare-fun tp!9113 () Bool)

(declare-fun b_and!5419 () Bool)

(assert (=> b!90110 (= tp!9113 b_and!5419)))

(declare-fun b!90100 () Bool)

(declare-fun e!58709 () Bool)

(declare-fun e!58700 () Bool)

(declare-fun mapRes!3497 () Bool)

(assert (=> b!90100 (= e!58709 (and e!58700 mapRes!3497))))

(declare-fun condMapEmpty!3497 () Bool)

(declare-datatypes ((V!3061 0))(
  ( (V!3062 (val!1325 Int)) )
))
(declare-datatypes ((array!4086 0))(
  ( (array!4087 (arr!1944 (Array (_ BitVec 32) (_ BitVec 64))) (size!2191 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!937 0))(
  ( (ValueCellFull!937 (v!2696 V!3061)) (EmptyCell!937) )
))
(declare-datatypes ((array!4088 0))(
  ( (array!4089 (arr!1945 (Array (_ BitVec 32) ValueCell!937)) (size!2192 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!782 0))(
  ( (LongMapFixedSize!783 (defaultEntry!2389 Int) (mask!6441 (_ BitVec 32)) (extraKeys!2220 (_ BitVec 32)) (zeroValue!2277 V!3061) (minValue!2277 V!3061) (_size!440 (_ BitVec 32)) (_keys!4069 array!4086) (_values!2372 array!4088) (_vacant!440 (_ BitVec 32))) )
))
(declare-fun newMap!16 () LongMapFixedSize!782)

(declare-fun mapDefault!3497 () ValueCell!937)

