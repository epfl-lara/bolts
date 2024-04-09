; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!40396 () Bool)

(assert start!40396)

(declare-fun b!443717 () Bool)

(declare-fun e!261025 () Bool)

(declare-fun e!261023 () Bool)

(declare-fun mapRes!19287 () Bool)

(assert (=> b!443717 (= e!261025 (and e!261023 mapRes!19287))))

(declare-fun condMapEmpty!19287 () Bool)

(declare-datatypes ((V!16803 0))(
  ( (V!16804 (val!5931 Int)) )
))
(declare-datatypes ((ValueCell!5543 0))(
  ( (ValueCellFull!5543 (v!8178 V!16803)) (EmptyCell!5543) )
))
(declare-datatypes ((array!27323 0))(
  ( (array!27324 (arr!13106 (Array (_ BitVec 32) ValueCell!5543)) (size!13458 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!27323)

(declare-fun mapDefault!19287 () ValueCell!5543)

