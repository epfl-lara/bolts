; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!40314 () Bool)

(assert start!40314)

(declare-fun b!442401 () Bool)

(declare-fun e!260393 () Bool)

(declare-fun tp_is_empty!11705 () Bool)

(assert (=> b!442401 (= e!260393 tp_is_empty!11705)))

(declare-fun b!442402 () Bool)

(declare-fun e!260389 () Bool)

(declare-fun mapRes!19182 () Bool)

(assert (=> b!442402 (= e!260389 (and e!260393 mapRes!19182))))

(declare-fun condMapEmpty!19182 () Bool)

(declare-datatypes ((V!16711 0))(
  ( (V!16712 (val!5897 Int)) )
))
(declare-datatypes ((ValueCell!5509 0))(
  ( (ValueCellFull!5509 (v!8144 V!16711)) (EmptyCell!5509) )
))
(declare-datatypes ((array!27195 0))(
  ( (array!27196 (arr!13043 (Array (_ BitVec 32) ValueCell!5509)) (size!13395 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!27195)

(declare-fun mapDefault!19182 () ValueCell!5509)

