; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!20532 () Bool)

(assert start!20532)

(declare-fun b_free!5179 () Bool)

(declare-fun b_next!5179 () Bool)

(assert (=> start!20532 (= b_free!5179 (not b_next!5179))))

(declare-fun tp!18568 () Bool)

(declare-fun b_and!11943 () Bool)

(assert (=> start!20532 (= tp!18568 b_and!11943)))

(declare-fun b!203815 () Bool)

(declare-fun e!133411 () Bool)

(declare-fun e!133409 () Bool)

(declare-fun mapRes!8621 () Bool)

(assert (=> b!203815 (= e!133411 (and e!133409 mapRes!8621))))

(declare-fun condMapEmpty!8621 () Bool)

(declare-datatypes ((V!6361 0))(
  ( (V!6362 (val!2562 Int)) )
))
(declare-datatypes ((ValueCell!2174 0))(
  ( (ValueCellFull!2174 (v!4528 V!6361)) (EmptyCell!2174) )
))
(declare-datatypes ((array!9290 0))(
  ( (array!9291 (arr!4395 (Array (_ BitVec 32) ValueCell!2174)) (size!4720 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!9290)

(declare-fun mapDefault!8621 () ValueCell!2174)

