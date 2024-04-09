; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!78608 () Bool)

(assert start!78608)

(declare-fun b_free!16793 () Bool)

(declare-fun b_next!16793 () Bool)

(assert (=> start!78608 (= b_free!16793 (not b_next!16793))))

(declare-fun tp!58820 () Bool)

(declare-fun b_and!27433 () Bool)

(assert (=> start!78608 (= tp!58820 b_and!27433)))

(declare-fun b!915859 () Bool)

(declare-fun res!617557 () Bool)

(declare-fun e!514116 () Bool)

(assert (=> b!915859 (=> (not res!617557) (not e!514116))))

(declare-datatypes ((array!54604 0))(
  ( (array!54605 (arr!26243 (Array (_ BitVec 32) (_ BitVec 64))) (size!26703 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!54604)

(declare-fun extraKeys!1152 () (_ BitVec 32))

(declare-datatypes ((V!30699 0))(
  ( (V!30700 (val!9701 Int)) )
))
(declare-datatypes ((ValueCell!9169 0))(
  ( (ValueCellFull!9169 (v!12219 V!30699)) (EmptyCell!9169) )
))
(declare-datatypes ((array!54606 0))(
  ( (array!54607 (arr!26244 (Array (_ BitVec 32) ValueCell!9169)) (size!26704 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!54606)

(declare-fun mask!1881 () (_ BitVec 32))

(assert (=> b!915859 (= res!617557 (and (= (size!26704 _values!1231) (bvadd #b00000000000000000000000000000001 mask!1881)) (= (size!26703 _keys!1487) (size!26704 _values!1231)) (bvsge mask!1881 #b00000000000000000000000000000000) (bvsge extraKeys!1152 #b00000000000000000000000000000000) (bvsle extraKeys!1152 #b00000000000000000000000000000011)))))

(declare-fun b!915860 () Bool)

(declare-fun res!617556 () Bool)

(assert (=> b!915860 (=> (not res!617556) (not e!514116))))

(declare-fun from!1844 () (_ BitVec 32))

(assert (=> b!915860 (= res!617556 (and (bvsge from!1844 #b00000000000000000000000000000000) (bvslt from!1844 (size!26703 _keys!1487))))))

(declare-fun b!915861 () Bool)

(assert (=> b!915861 (= e!514116 false)))

(declare-fun lt!411687 () Bool)

(declare-fun defaultEntry!1235 () Int)

(declare-fun k!1099 () (_ BitVec 64))

(declare-fun zeroValue!1173 () V!30699)

(declare-fun minValue!1173 () V!30699)

(declare-datatypes ((tuple2!12656 0))(
  ( (tuple2!12657 (_1!6338 (_ BitVec 64)) (_2!6338 V!30699)) )
))
(declare-datatypes ((List!18514 0))(
  ( (Nil!18511) (Cons!18510 (h!19656 tuple2!12656) (t!26135 List!18514)) )
))
(declare-datatypes ((ListLongMap!11367 0))(
  ( (ListLongMap!11368 (toList!5699 List!18514)) )
))
(declare-fun contains!4719 (ListLongMap!11367 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!2928 (array!54604 array!54606 (_ BitVec 32) (_ BitVec 32) V!30699 V!30699 (_ BitVec 32) Int) ListLongMap!11367)

(assert (=> b!915861 (= lt!411687 (contains!4719 (getCurrentListMap!2928 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 from!1844 defaultEntry!1235) k!1099))))

(declare-fun mapNonEmpty!30708 () Bool)

(declare-fun mapRes!30708 () Bool)

(declare-fun tp!58821 () Bool)

(declare-fun e!514117 () Bool)

(assert (=> mapNonEmpty!30708 (= mapRes!30708 (and tp!58821 e!514117))))

(declare-fun mapRest!30708 () (Array (_ BitVec 32) ValueCell!9169))

(declare-fun mapKey!30708 () (_ BitVec 32))

(declare-fun mapValue!30708 () ValueCell!9169)

(assert (=> mapNonEmpty!30708 (= (arr!26244 _values!1231) (store mapRest!30708 mapKey!30708 mapValue!30708))))

(declare-fun b!915862 () Bool)

(declare-fun e!514115 () Bool)

(declare-fun e!514118 () Bool)

(assert (=> b!915862 (= e!514115 (and e!514118 mapRes!30708))))

(declare-fun condMapEmpty!30708 () Bool)

(declare-fun mapDefault!30708 () ValueCell!9169)

