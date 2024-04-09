; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!472 () Bool)

(assert start!472)

(declare-fun b!2789 () Bool)

(declare-fun e!1134 () Bool)

(declare-fun tp_is_empty!71 () Bool)

(assert (=> b!2789 (= e!1134 tp_is_empty!71)))

(declare-fun b!2790 () Bool)

(declare-fun res!4844 () Bool)

(declare-fun e!1133 () Bool)

(assert (=> b!2790 (=> (not res!4844) (not e!1133))))

(declare-fun mask!2250 () (_ BitVec 32))

(declare-datatypes ((V!271 0))(
  ( (V!272 (val!41 Int)) )
))
(declare-datatypes ((ValueCell!19 0))(
  ( (ValueCellFull!19 (v!1127 V!271)) (EmptyCell!19) )
))
(declare-datatypes ((array!71 0))(
  ( (array!72 (arr!33 (Array (_ BitVec 32) ValueCell!19)) (size!95 (_ BitVec 32))) )
))
(declare-fun _values!1492 () array!71)

(declare-datatypes ((array!73 0))(
  ( (array!74 (arr!34 (Array (_ BitVec 32) (_ BitVec 64))) (size!96 (_ BitVec 32))) )
))
(declare-fun _keys!1806 () array!73)

(declare-fun extraKeys!1413 () (_ BitVec 32))

(assert (=> b!2790 (= res!4844 (and (= (size!95 _values!1492) (bvadd #b00000000000000000000000000000001 mask!2250)) (= (size!96 _keys!1806) (size!95 _values!1492)) (bvsge mask!2250 #b00000000000000000000000000000000) (bvsge extraKeys!1413 #b00000000000000000000000000000000) (bvsle extraKeys!1413 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!50 () Bool)

(declare-fun mapRes!50 () Bool)

(declare-fun tp!290 () Bool)

(declare-fun e!1130 () Bool)

(assert (=> mapNonEmpty!50 (= mapRes!50 (and tp!290 e!1130))))

(declare-fun mapKey!50 () (_ BitVec 32))

(declare-fun mapRest!50 () (Array (_ BitVec 32) ValueCell!19))

(declare-fun mapValue!50 () ValueCell!19)

(assert (=> mapNonEmpty!50 (= (arr!33 _values!1492) (store mapRest!50 mapKey!50 mapValue!50))))

(declare-fun b!2791 () Bool)

(declare-fun e!1132 () Bool)

(assert (=> b!2791 (= e!1132 (and e!1134 mapRes!50))))

(declare-fun condMapEmpty!50 () Bool)

(declare-fun mapDefault!50 () ValueCell!19)

