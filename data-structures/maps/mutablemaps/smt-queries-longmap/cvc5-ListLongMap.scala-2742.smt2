; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!40298 () Bool)

(assert start!40298)

(declare-fun b_free!10531 () Bool)

(declare-fun b_next!10531 () Bool)

(assert (=> start!40298 (= b_free!10531 (not b_next!10531))))

(declare-fun tp!37134 () Bool)

(declare-fun b_and!18533 () Bool)

(assert (=> start!40298 (= tp!37134 b_and!18533)))

(declare-fun b!442177 () Bool)

(declare-fun e!260262 () Bool)

(declare-fun e!260267 () Bool)

(declare-fun mapRes!19158 () Bool)

(assert (=> b!442177 (= e!260262 (and e!260267 mapRes!19158))))

(declare-fun condMapEmpty!19158 () Bool)

(declare-datatypes ((V!16691 0))(
  ( (V!16692 (val!5889 Int)) )
))
(declare-datatypes ((ValueCell!5501 0))(
  ( (ValueCellFull!5501 (v!8136 V!16691)) (EmptyCell!5501) )
))
(declare-datatypes ((array!27167 0))(
  ( (array!27168 (arr!13029 (Array (_ BitVec 32) ValueCell!5501)) (size!13381 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!27167)

(declare-fun mapDefault!19158 () ValueCell!5501)

