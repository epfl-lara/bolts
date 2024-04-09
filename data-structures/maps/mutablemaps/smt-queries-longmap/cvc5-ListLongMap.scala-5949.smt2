; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!77548 () Bool)

(assert start!77548)

(declare-fun b_free!16105 () Bool)

(declare-fun b_next!16105 () Bool)

(assert (=> start!77548 (= b_free!16105 (not b_next!16105))))

(declare-fun tp!56577 () Bool)

(declare-fun b_and!26489 () Bool)

(assert (=> start!77548 (= tp!56577 b_and!26489)))

(declare-fun mapIsEmpty!29497 () Bool)

(declare-fun mapRes!29497 () Bool)

(assert (=> mapIsEmpty!29497 mapRes!29497))

(declare-fun b!903086 () Bool)

(declare-fun e!505988 () Bool)

(declare-fun tp_is_empty!18523 () Bool)

(assert (=> b!903086 (= e!505988 tp_is_empty!18523)))

(declare-fun b!903087 () Bool)

(declare-fun e!505987 () Bool)

(assert (=> b!903087 (= e!505987 (and e!505988 mapRes!29497))))

(declare-fun condMapEmpty!29497 () Bool)

(declare-datatypes ((V!29663 0))(
  ( (V!29664 (val!9312 Int)) )
))
(declare-datatypes ((ValueCell!8780 0))(
  ( (ValueCellFull!8780 (v!11817 V!29663)) (EmptyCell!8780) )
))
(declare-datatypes ((array!53092 0))(
  ( (array!53093 (arr!25501 (Array (_ BitVec 32) ValueCell!8780)) (size!25961 (_ BitVec 32))) )
))
(declare-fun _values!1152 () array!53092)

(declare-fun mapDefault!29497 () ValueCell!8780)

