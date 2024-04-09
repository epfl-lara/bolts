; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!77950 () Bool)

(assert start!77950)

(declare-fun b_free!16465 () Bool)

(declare-fun b_next!16465 () Bool)

(assert (=> start!77950 (= b_free!16465 (not b_next!16465))))

(declare-fun tp!57663 () Bool)

(declare-fun b_and!27053 () Bool)

(assert (=> start!77950 (= tp!57663 b_and!27053)))

(declare-fun b!909620 () Bool)

(declare-fun e!509947 () Bool)

(declare-fun tp_is_empty!18883 () Bool)

(assert (=> b!909620 (= e!509947 tp_is_empty!18883)))

(declare-fun mapNonEmpty!30043 () Bool)

(declare-fun mapRes!30043 () Bool)

(declare-fun tp!57664 () Bool)

(assert (=> mapNonEmpty!30043 (= mapRes!30043 (and tp!57664 e!509947))))

(declare-datatypes ((V!30143 0))(
  ( (V!30144 (val!9492 Int)) )
))
(declare-datatypes ((ValueCell!8960 0))(
  ( (ValueCellFull!8960 (v!12000 V!30143)) (EmptyCell!8960) )
))
(declare-datatypes ((array!53784 0))(
  ( (array!53785 (arr!25845 (Array (_ BitVec 32) ValueCell!8960)) (size!26305 (_ BitVec 32))) )
))
(declare-fun _values!1152 () array!53784)

(declare-fun mapKey!30043 () (_ BitVec 32))

(declare-fun mapValue!30043 () ValueCell!8960)

(declare-fun mapRest!30043 () (Array (_ BitVec 32) ValueCell!8960))

(assert (=> mapNonEmpty!30043 (= (arr!25845 _values!1152) (store mapRest!30043 mapKey!30043 mapValue!30043))))

(declare-fun b!909621 () Bool)

(declare-fun res!614005 () Bool)

(declare-fun e!509949 () Bool)

(assert (=> b!909621 (=> (not res!614005) (not e!509949))))

(declare-fun extraKeys!1073 () (_ BitVec 32))

(declare-fun mask!1756 () (_ BitVec 32))

(declare-datatypes ((array!53786 0))(
  ( (array!53787 (arr!25846 (Array (_ BitVec 32) (_ BitVec 64))) (size!26306 (_ BitVec 32))) )
))
(declare-fun _keys!1386 () array!53786)

(assert (=> b!909621 (= res!614005 (and (= (size!26305 _values!1152) (bvadd #b00000000000000000000000000000001 mask!1756)) (= (size!26306 _keys!1386) (size!26305 _values!1152)) (bvsge mask!1756 #b00000000000000000000000000000000) (bvsge extraKeys!1073 #b00000000000000000000000000000000) (bvsle extraKeys!1073 #b00000000000000000000000000000011)))))

(declare-fun b!909622 () Bool)

(assert (=> b!909622 (= e!509949 false)))

(declare-fun defaultEntry!1160 () Int)

(declare-fun zeroValue!1094 () V!30143)

(declare-fun lt!410047 () Bool)

(declare-fun k!1033 () (_ BitVec 64))

(declare-fun minValue!1094 () V!30143)

(declare-datatypes ((tuple2!12398 0))(
  ( (tuple2!12399 (_1!6209 (_ BitVec 64)) (_2!6209 V!30143)) )
))
(declare-datatypes ((List!18255 0))(
  ( (Nil!18252) (Cons!18251 (h!19397 tuple2!12398) (t!25846 List!18255)) )
))
(declare-datatypes ((ListLongMap!11109 0))(
  ( (ListLongMap!11110 (toList!5570 List!18255)) )
))
(declare-fun contains!4578 (ListLongMap!11109 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!2800 (array!53786 array!53784 (_ BitVec 32) (_ BitVec 32) V!30143 V!30143 (_ BitVec 32) Int) ListLongMap!11109)

(assert (=> b!909622 (= lt!410047 (contains!4578 (getCurrentListMap!2800 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 #b00000000000000000000000000000000 defaultEntry!1160) k!1033))))

(declare-fun b!909623 () Bool)

(declare-fun e!509950 () Bool)

(declare-fun e!509948 () Bool)

(assert (=> b!909623 (= e!509950 (and e!509948 mapRes!30043))))

(declare-fun condMapEmpty!30043 () Bool)

(declare-fun mapDefault!30043 () ValueCell!8960)

