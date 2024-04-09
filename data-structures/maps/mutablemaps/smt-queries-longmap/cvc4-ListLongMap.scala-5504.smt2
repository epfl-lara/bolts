; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!72840 () Bool)

(assert start!72840)

(declare-fun b!844841 () Bool)

(declare-fun e!471658 () Bool)

(declare-fun e!471659 () Bool)

(declare-fun mapRes!25394 () Bool)

(assert (=> b!844841 (= e!471658 (and e!471659 mapRes!25394))))

(declare-fun condMapEmpty!25394 () Bool)

(declare-datatypes ((V!26197 0))(
  ( (V!26198 (val!7979 Int)) )
))
(declare-datatypes ((ValueCell!7492 0))(
  ( (ValueCellFull!7492 (v!10400 V!26197)) (EmptyCell!7492) )
))
(declare-datatypes ((array!47936 0))(
  ( (array!47937 (arr!22995 (Array (_ BitVec 32) ValueCell!7492)) (size!23436 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!47936)

(declare-fun mapDefault!25394 () ValueCell!7492)

