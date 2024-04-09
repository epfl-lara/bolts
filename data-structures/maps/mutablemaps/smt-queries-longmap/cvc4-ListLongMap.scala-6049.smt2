; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!78246 () Bool)

(assert start!78246)

(declare-fun b_free!16709 () Bool)

(declare-fun b_next!16709 () Bool)

(assert (=> start!78246 (= b_free!16709 (not b_next!16709))))

(declare-fun tp!58405 () Bool)

(declare-fun b_and!27303 () Bool)

(assert (=> start!78246 (= tp!58405 b_and!27303)))

(declare-fun b!912743 () Bool)

(declare-fun e!512004 () Bool)

(declare-fun tp_is_empty!19127 () Bool)

(assert (=> b!912743 (= e!512004 tp_is_empty!19127)))

(declare-fun b!912744 () Bool)

(declare-fun res!615830 () Bool)

(declare-fun e!512003 () Bool)

(assert (=> b!912744 (=> (not res!615830) (not e!512003))))

(declare-datatypes ((array!54256 0))(
  ( (array!54257 (arr!26078 (Array (_ BitVec 32) (_ BitVec 64))) (size!26538 (_ BitVec 32))) )
))
(declare-fun _keys!1386 () array!54256)

(declare-fun mask!1756 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!54256 (_ BitVec 32)) Bool)

(assert (=> b!912744 (= res!615830 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1386 mask!1756))))

(declare-fun b!912745 () Bool)

(assert (=> b!912745 (= e!512003 (not true))))

(declare-fun k!1033 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!54256 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!912745 (arrayContainsKey!0 _keys!1386 k!1033 #b00000000000000000000000000000000)))

(declare-datatypes ((V!30467 0))(
  ( (V!30468 (val!9614 Int)) )
))
(declare-datatypes ((ValueCell!9082 0))(
  ( (ValueCellFull!9082 (v!12125 V!30467)) (EmptyCell!9082) )
))
(declare-datatypes ((array!54258 0))(
  ( (array!54259 (arr!26079 (Array (_ BitVec 32) ValueCell!9082)) (size!26539 (_ BitVec 32))) )
))
(declare-fun _values!1152 () array!54258)

(declare-fun defaultEntry!1160 () Int)

(declare-fun zeroValue!1094 () V!30467)

(declare-datatypes ((Unit!30871 0))(
  ( (Unit!30872) )
))
(declare-fun lt!410659 () Unit!30871)

(declare-fun extraKeys!1073 () (_ BitVec 32))

(declare-fun minValue!1094 () V!30467)

(declare-fun lemmaKeyInListMapIsInArray!281 (array!54256 array!54258 (_ BitVec 32) (_ BitVec 32) V!30467 V!30467 (_ BitVec 64) Int) Unit!30871)

(assert (=> b!912745 (= lt!410659 (lemmaKeyInListMapIsInArray!281 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 k!1033 defaultEntry!1160))))

(declare-fun b!912746 () Bool)

(declare-fun res!615831 () Bool)

(assert (=> b!912746 (=> (not res!615831) (not e!512003))))

(assert (=> b!912746 (= res!615831 (and (= (size!26539 _values!1152) (bvadd #b00000000000000000000000000000001 mask!1756)) (= (size!26538 _keys!1386) (size!26539 _values!1152)) (bvsge mask!1756 #b00000000000000000000000000000000) (bvsge extraKeys!1073 #b00000000000000000000000000000000) (bvsle extraKeys!1073 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!30418 () Bool)

(declare-fun mapRes!30418 () Bool)

(declare-fun tp!58404 () Bool)

(assert (=> mapNonEmpty!30418 (= mapRes!30418 (and tp!58404 e!512004))))

(declare-fun mapRest!30418 () (Array (_ BitVec 32) ValueCell!9082))

(declare-fun mapKey!30418 () (_ BitVec 32))

(declare-fun mapValue!30418 () ValueCell!9082)

(assert (=> mapNonEmpty!30418 (= (arr!26079 _values!1152) (store mapRest!30418 mapKey!30418 mapValue!30418))))

(declare-fun b!912748 () Bool)

(declare-fun res!615829 () Bool)

(assert (=> b!912748 (=> (not res!615829) (not e!512003))))

(declare-datatypes ((tuple2!12586 0))(
  ( (tuple2!12587 (_1!6303 (_ BitVec 64)) (_2!6303 V!30467)) )
))
(declare-datatypes ((List!18427 0))(
  ( (Nil!18424) (Cons!18423 (h!19569 tuple2!12586) (t!26024 List!18427)) )
))
(declare-datatypes ((ListLongMap!11297 0))(
  ( (ListLongMap!11298 (toList!5664 List!18427)) )
))
(declare-fun contains!4675 (ListLongMap!11297 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!2894 (array!54256 array!54258 (_ BitVec 32) (_ BitVec 32) V!30467 V!30467 (_ BitVec 32) Int) ListLongMap!11297)

(assert (=> b!912748 (= res!615829 (contains!4675 (getCurrentListMap!2894 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 #b00000000000000000000000000000000 defaultEntry!1160) k!1033))))

(declare-fun b!912749 () Bool)

(declare-fun e!512005 () Bool)

(declare-fun e!512006 () Bool)

(assert (=> b!912749 (= e!512005 (and e!512006 mapRes!30418))))

(declare-fun condMapEmpty!30418 () Bool)

(declare-fun mapDefault!30418 () ValueCell!9082)

