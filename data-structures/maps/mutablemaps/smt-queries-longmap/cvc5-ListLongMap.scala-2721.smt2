; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!40152 () Bool)

(assert start!40152)

(declare-fun b_free!10411 () Bool)

(declare-fun b_next!10411 () Bool)

(assert (=> start!40152 (= b_free!10411 (not b_next!10411))))

(declare-fun tp!36762 () Bool)

(declare-fun b_and!18397 () Bool)

(assert (=> start!40152 (= tp!36762 b_and!18397)))

(declare-fun b!439025 () Bool)

(declare-fun e!258855 () Bool)

(declare-fun e!258851 () Bool)

(declare-fun mapRes!18966 () Bool)

(assert (=> b!439025 (= e!258855 (and e!258851 mapRes!18966))))

(declare-fun condMapEmpty!18966 () Bool)

(declare-datatypes ((V!16523 0))(
  ( (V!16524 (val!5826 Int)) )
))
(declare-datatypes ((ValueCell!5438 0))(
  ( (ValueCellFull!5438 (v!8069 V!16523)) (EmptyCell!5438) )
))
(declare-datatypes ((array!26919 0))(
  ( (array!26920 (arr!12906 (Array (_ BitVec 32) ValueCell!5438)) (size!13258 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!26919)

(declare-fun mapDefault!18966 () ValueCell!5438)

