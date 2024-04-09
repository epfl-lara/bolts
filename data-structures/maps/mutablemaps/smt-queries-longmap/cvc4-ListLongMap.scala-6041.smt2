; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!78178 () Bool)

(assert start!78178)

(declare-fun b_free!16661 () Bool)

(declare-fun b_next!16661 () Bool)

(assert (=> start!78178 (= b_free!16661 (not b_next!16661))))

(declare-fun tp!58258 () Bool)

(declare-fun b_and!27253 () Bool)

(assert (=> start!78178 (= tp!58258 b_and!27253)))

(declare-fun b!911932 () Bool)

(declare-fun e!511564 () Bool)

(assert (=> b!911932 (= e!511564 false)))

(declare-datatypes ((V!30403 0))(
  ( (V!30404 (val!9590 Int)) )
))
(declare-datatypes ((ValueCell!9058 0))(
  ( (ValueCellFull!9058 (v!12100 V!30403)) (EmptyCell!9058) )
))
(declare-datatypes ((array!54164 0))(
  ( (array!54165 (arr!26033 (Array (_ BitVec 32) ValueCell!9058)) (size!26493 (_ BitVec 32))) )
))
(declare-fun _values!1152 () array!54164)

(declare-fun defaultEntry!1160 () Int)

(declare-fun mask!1756 () (_ BitVec 32))

(declare-fun lt!410497 () Bool)

(declare-fun zeroValue!1094 () V!30403)

(declare-datatypes ((array!54166 0))(
  ( (array!54167 (arr!26034 (Array (_ BitVec 32) (_ BitVec 64))) (size!26494 (_ BitVec 32))) )
))
(declare-fun _keys!1386 () array!54166)

(declare-fun k!1033 () (_ BitVec 64))

(declare-fun extraKeys!1073 () (_ BitVec 32))

(declare-fun minValue!1094 () V!30403)

(declare-datatypes ((tuple2!12550 0))(
  ( (tuple2!12551 (_1!6285 (_ BitVec 64)) (_2!6285 V!30403)) )
))
(declare-datatypes ((List!18392 0))(
  ( (Nil!18389) (Cons!18388 (h!19534 tuple2!12550) (t!25987 List!18392)) )
))
(declare-datatypes ((ListLongMap!11261 0))(
  ( (ListLongMap!11262 (toList!5646 List!18392)) )
))
(declare-fun contains!4656 (ListLongMap!11261 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!2876 (array!54166 array!54164 (_ BitVec 32) (_ BitVec 32) V!30403 V!30403 (_ BitVec 32) Int) ListLongMap!11261)

(assert (=> b!911932 (= lt!410497 (contains!4656 (getCurrentListMap!2876 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 #b00000000000000000000000000000000 defaultEntry!1160) k!1033))))

(declare-fun b!911933 () Bool)

(declare-fun e!511562 () Bool)

(declare-fun tp_is_empty!19079 () Bool)

(assert (=> b!911933 (= e!511562 tp_is_empty!19079)))

(declare-fun b!911934 () Bool)

(declare-fun e!511565 () Bool)

(declare-fun mapRes!30343 () Bool)

(assert (=> b!911934 (= e!511565 (and e!511562 mapRes!30343))))

(declare-fun condMapEmpty!30343 () Bool)

(declare-fun mapDefault!30343 () ValueCell!9058)

