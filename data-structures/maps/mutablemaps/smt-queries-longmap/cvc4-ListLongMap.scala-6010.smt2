; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!77960 () Bool)

(assert start!77960)

(declare-fun b_free!16475 () Bool)

(declare-fun b_next!16475 () Bool)

(assert (=> start!77960 (= b_free!16475 (not b_next!16475))))

(declare-fun tp!57693 () Bool)

(declare-fun b_and!27063 () Bool)

(assert (=> start!77960 (= tp!57693 b_and!27063)))

(declare-fun b!909725 () Bool)

(declare-fun res!614063 () Bool)

(declare-fun e!510025 () Bool)

(assert (=> b!909725 (=> (not res!614063) (not e!510025))))

(declare-datatypes ((V!30155 0))(
  ( (V!30156 (val!9497 Int)) )
))
(declare-datatypes ((ValueCell!8965 0))(
  ( (ValueCellFull!8965 (v!12005 V!30155)) (EmptyCell!8965) )
))
(declare-datatypes ((array!53804 0))(
  ( (array!53805 (arr!25855 (Array (_ BitVec 32) ValueCell!8965)) (size!26315 (_ BitVec 32))) )
))
(declare-fun _values!1152 () array!53804)

(declare-fun extraKeys!1073 () (_ BitVec 32))

(declare-fun mask!1756 () (_ BitVec 32))

(declare-datatypes ((array!53806 0))(
  ( (array!53807 (arr!25856 (Array (_ BitVec 32) (_ BitVec 64))) (size!26316 (_ BitVec 32))) )
))
(declare-fun _keys!1386 () array!53806)

(assert (=> b!909725 (= res!614063 (and (= (size!26315 _values!1152) (bvadd #b00000000000000000000000000000001 mask!1756)) (= (size!26316 _keys!1386) (size!26315 _values!1152)) (bvsge mask!1756 #b00000000000000000000000000000000) (bvsge extraKeys!1073 #b00000000000000000000000000000000) (bvsle extraKeys!1073 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!30058 () Bool)

(declare-fun mapRes!30058 () Bool)

(declare-fun tp!57694 () Bool)

(declare-fun e!510023 () Bool)

(assert (=> mapNonEmpty!30058 (= mapRes!30058 (and tp!57694 e!510023))))

(declare-fun mapKey!30058 () (_ BitVec 32))

(declare-fun mapValue!30058 () ValueCell!8965)

(declare-fun mapRest!30058 () (Array (_ BitVec 32) ValueCell!8965))

(assert (=> mapNonEmpty!30058 (= (arr!25855 _values!1152) (store mapRest!30058 mapKey!30058 mapValue!30058))))

(declare-fun b!909726 () Bool)

(assert (=> b!909726 (= e!510025 false)))

(declare-fun defaultEntry!1160 () Int)

(declare-fun zeroValue!1094 () V!30155)

(declare-fun k!1033 () (_ BitVec 64))

(declare-fun lt!410062 () Bool)

(declare-fun minValue!1094 () V!30155)

(declare-datatypes ((tuple2!12408 0))(
  ( (tuple2!12409 (_1!6214 (_ BitVec 64)) (_2!6214 V!30155)) )
))
(declare-datatypes ((List!18263 0))(
  ( (Nil!18260) (Cons!18259 (h!19405 tuple2!12408) (t!25854 List!18263)) )
))
(declare-datatypes ((ListLongMap!11119 0))(
  ( (ListLongMap!11120 (toList!5575 List!18263)) )
))
(declare-fun contains!4583 (ListLongMap!11119 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!2805 (array!53806 array!53804 (_ BitVec 32) (_ BitVec 32) V!30155 V!30155 (_ BitVec 32) Int) ListLongMap!11119)

(assert (=> b!909726 (= lt!410062 (contains!4583 (getCurrentListMap!2805 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 #b00000000000000000000000000000000 defaultEntry!1160) k!1033))))

(declare-fun b!909727 () Bool)

(declare-fun e!510022 () Bool)

(declare-fun tp_is_empty!18893 () Bool)

(assert (=> b!909727 (= e!510022 tp_is_empty!18893)))

(declare-fun res!614065 () Bool)

(assert (=> start!77960 (=> (not res!614065) (not e!510025))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!77960 (= res!614065 (validMask!0 mask!1756))))

(assert (=> start!77960 e!510025))

(declare-fun e!510024 () Bool)

(declare-fun array_inv!20200 (array!53804) Bool)

(assert (=> start!77960 (and (array_inv!20200 _values!1152) e!510024)))

(assert (=> start!77960 tp!57693))

(assert (=> start!77960 true))

(assert (=> start!77960 tp_is_empty!18893))

(declare-fun array_inv!20201 (array!53806) Bool)

(assert (=> start!77960 (array_inv!20201 _keys!1386)))

(declare-fun b!909728 () Bool)

(assert (=> b!909728 (= e!510024 (and e!510022 mapRes!30058))))

(declare-fun condMapEmpty!30058 () Bool)

(declare-fun mapDefault!30058 () ValueCell!8965)

