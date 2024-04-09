; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!97184 () Bool)

(assert start!97184)

(declare-fun b!1105112 () Bool)

(declare-fun e!630787 () Bool)

(declare-fun tp_is_empty!27395 () Bool)

(assert (=> b!1105112 (= e!630787 tp_is_empty!27395)))

(declare-fun b!1105113 () Bool)

(declare-fun e!630785 () Bool)

(declare-fun e!630782 () Bool)

(declare-fun mapRes!42907 () Bool)

(assert (=> b!1105113 (= e!630785 (and e!630782 mapRes!42907))))

(declare-fun condMapEmpty!42907 () Bool)

(declare-datatypes ((V!41653 0))(
  ( (V!41654 (val!13754 Int)) )
))
(declare-datatypes ((ValueCell!12988 0))(
  ( (ValueCellFull!12988 (v!16388 V!41653)) (EmptyCell!12988) )
))
(declare-datatypes ((array!71664 0))(
  ( (array!71665 (arr!34482 (Array (_ BitVec 32) ValueCell!12988)) (size!35019 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!71664)

(declare-fun mapDefault!42907 () ValueCell!12988)

