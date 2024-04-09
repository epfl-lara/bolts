; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!77926 () Bool)

(assert start!77926)

(declare-fun b_free!16457 () Bool)

(declare-fun b_next!16457 () Bool)

(assert (=> start!77926 (= b_free!16457 (not b_next!16457))))

(declare-fun tp!57637 () Bool)

(declare-fun b_and!27043 () Bool)

(assert (=> start!77926 (= tp!57637 b_and!27043)))

(declare-fun b!909409 () Bool)

(declare-fun e!509816 () Bool)

(assert (=> b!909409 (= e!509816 false)))

(declare-datatypes ((V!30131 0))(
  ( (V!30132 (val!9488 Int)) )
))
(declare-datatypes ((ValueCell!8956 0))(
  ( (ValueCellFull!8956 (v!11995 V!30131)) (EmptyCell!8956) )
))
(declare-datatypes ((array!53766 0))(
  ( (array!53767 (arr!25837 (Array (_ BitVec 32) ValueCell!8956)) (size!26297 (_ BitVec 32))) )
))
(declare-fun _values!1152 () array!53766)

(declare-fun defaultEntry!1160 () Int)

(declare-fun mask!1756 () (_ BitVec 32))

(declare-fun zeroValue!1094 () V!30131)

(declare-datatypes ((array!53768 0))(
  ( (array!53769 (arr!25838 (Array (_ BitVec 32) (_ BitVec 64))) (size!26298 (_ BitVec 32))) )
))
(declare-fun _keys!1386 () array!53768)

(declare-fun lt!409957 () Bool)

(declare-fun k!1033 () (_ BitVec 64))

(declare-fun extraKeys!1073 () (_ BitVec 32))

(declare-fun minValue!1094 () V!30131)

(declare-datatypes ((tuple2!12392 0))(
  ( (tuple2!12393 (_1!6206 (_ BitVec 64)) (_2!6206 V!30131)) )
))
(declare-datatypes ((List!18249 0))(
  ( (Nil!18246) (Cons!18245 (h!19391 tuple2!12392) (t!25838 List!18249)) )
))
(declare-datatypes ((ListLongMap!11103 0))(
  ( (ListLongMap!11104 (toList!5567 List!18249)) )
))
(declare-fun contains!4574 (ListLongMap!11103 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!2797 (array!53768 array!53766 (_ BitVec 32) (_ BitVec 32) V!30131 V!30131 (_ BitVec 32) Int) ListLongMap!11103)

(assert (=> b!909409 (= lt!409957 (contains!4574 (getCurrentListMap!2797 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 #b00000000000000000000000000000000 defaultEntry!1160) k!1033))))

(declare-fun b!909410 () Bool)

(declare-fun e!509818 () Bool)

(declare-fun tp_is_empty!18875 () Bool)

(assert (=> b!909410 (= e!509818 tp_is_empty!18875)))

(declare-fun mapIsEmpty!30028 () Bool)

(declare-fun mapRes!30028 () Bool)

(assert (=> mapIsEmpty!30028 mapRes!30028))

(declare-fun b!909411 () Bool)

(declare-fun res!613892 () Bool)

(assert (=> b!909411 (=> (not res!613892) (not e!509816))))

(declare-datatypes ((List!18250 0))(
  ( (Nil!18247) (Cons!18246 (h!19392 (_ BitVec 64)) (t!25839 List!18250)) )
))
(declare-fun arrayNoDuplicates!0 (array!53768 (_ BitVec 32) List!18250) Bool)

(assert (=> b!909411 (= res!613892 (arrayNoDuplicates!0 _keys!1386 #b00000000000000000000000000000000 Nil!18247))))

(declare-fun b!909412 () Bool)

(declare-fun e!509819 () Bool)

(assert (=> b!909412 (= e!509819 tp_is_empty!18875)))

(declare-fun b!909413 () Bool)

(declare-fun res!613893 () Bool)

(assert (=> b!909413 (=> (not res!613893) (not e!509816))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!53768 (_ BitVec 32)) Bool)

(assert (=> b!909413 (= res!613893 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1386 mask!1756))))

(declare-fun b!909414 () Bool)

(declare-fun res!613894 () Bool)

(assert (=> b!909414 (=> (not res!613894) (not e!509816))))

(assert (=> b!909414 (= res!613894 (and (= (size!26297 _values!1152) (bvadd #b00000000000000000000000000000001 mask!1756)) (= (size!26298 _keys!1386) (size!26297 _values!1152)) (bvsge mask!1756 #b00000000000000000000000000000000) (bvsge extraKeys!1073 #b00000000000000000000000000000000) (bvsle extraKeys!1073 #b00000000000000000000000000000011)))))

(declare-fun b!909415 () Bool)

(declare-fun e!509815 () Bool)

(assert (=> b!909415 (= e!509815 (and e!509818 mapRes!30028))))

(declare-fun condMapEmpty!30028 () Bool)

(declare-fun mapDefault!30028 () ValueCell!8956)

