; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!40394 () Bool)

(assert start!40394)

(declare-fun mapIsEmpty!19284 () Bool)

(declare-fun mapRes!19284 () Bool)

(assert (=> mapIsEmpty!19284 mapRes!19284))

(declare-fun b!443678 () Bool)

(declare-fun e!261006 () Bool)

(declare-fun e!261007 () Bool)

(assert (=> b!443678 (= e!261006 (and e!261007 mapRes!19284))))

(declare-fun condMapEmpty!19284 () Bool)

(declare-datatypes ((V!16799 0))(
  ( (V!16800 (val!5930 Int)) )
))
(declare-datatypes ((ValueCell!5542 0))(
  ( (ValueCellFull!5542 (v!8177 V!16799)) (EmptyCell!5542) )
))
(declare-datatypes ((array!27321 0))(
  ( (array!27322 (arr!13105 (Array (_ BitVec 32) ValueCell!5542)) (size!13457 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!27321)

(declare-fun mapDefault!19284 () ValueCell!5542)

