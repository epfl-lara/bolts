; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!77866 () Bool)

(assert start!77866)

(declare-fun b_free!16397 () Bool)

(declare-fun b_next!16397 () Bool)

(assert (=> start!77866 (= b_free!16397 (not b_next!16397))))

(declare-fun tp!57456 () Bool)

(declare-fun b_and!26969 () Bool)

(assert (=> start!77866 (= tp!57456 b_and!26969)))

(declare-fun b!908652 () Bool)

(declare-fun e!509309 () Bool)

(declare-fun e!509315 () Bool)

(assert (=> b!908652 (= e!509309 e!509315)))

(declare-fun res!613424 () Bool)

(assert (=> b!908652 (=> (not res!613424) (not e!509315))))

(declare-datatypes ((V!30051 0))(
  ( (V!30052 (val!9458 Int)) )
))
(declare-datatypes ((tuple2!12354 0))(
  ( (tuple2!12355 (_1!6187 (_ BitVec 64)) (_2!6187 V!30051)) )
))
(declare-datatypes ((List!18208 0))(
  ( (Nil!18205) (Cons!18204 (h!19350 tuple2!12354) (t!25785 List!18208)) )
))
(declare-datatypes ((ListLongMap!11065 0))(
  ( (ListLongMap!11066 (toList!5548 List!18208)) )
))
(declare-fun lt!409793 () ListLongMap!11065)

(declare-fun k!1033 () (_ BitVec 64))

(declare-fun contains!4556 (ListLongMap!11065 (_ BitVec 64)) Bool)

(assert (=> b!908652 (= res!613424 (contains!4556 lt!409793 k!1033))))

(declare-fun defaultEntry!1160 () Int)

(declare-fun mask!1756 () (_ BitVec 32))

(declare-fun zeroValue!1094 () V!30051)

(declare-datatypes ((array!53652 0))(
  ( (array!53653 (arr!25780 (Array (_ BitVec 32) (_ BitVec 64))) (size!26240 (_ BitVec 32))) )
))
(declare-fun _keys!1386 () array!53652)

(declare-datatypes ((ValueCell!8926 0))(
  ( (ValueCellFull!8926 (v!11965 V!30051)) (EmptyCell!8926) )
))
(declare-datatypes ((array!53654 0))(
  ( (array!53655 (arr!25781 (Array (_ BitVec 32) ValueCell!8926)) (size!26241 (_ BitVec 32))) )
))
(declare-fun _values!1152 () array!53654)

(declare-fun extraKeys!1073 () (_ BitVec 32))

(declare-fun minValue!1094 () V!30051)

(declare-fun getCurrentListMap!2779 (array!53652 array!53654 (_ BitVec 32) (_ BitVec 32) V!30051 V!30051 (_ BitVec 32) Int) ListLongMap!11065)

(assert (=> b!908652 (= lt!409793 (getCurrentListMap!2779 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 #b00000000000000000000000000000000 defaultEntry!1160))))

(declare-fun b!908653 () Bool)

(declare-fun res!613418 () Bool)

(assert (=> b!908653 (=> (not res!613418) (not e!509315))))

(declare-fun i!717 () (_ BitVec 32))

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!908653 (= res!613418 (inRange!0 i!717 mask!1756))))

(declare-fun b!908654 () Bool)

(declare-fun e!509310 () Bool)

(declare-fun tp_is_empty!18815 () Bool)

(assert (=> b!908654 (= e!509310 tp_is_empty!18815)))

(declare-fun b!908655 () Bool)

(declare-fun e!509314 () Bool)

(declare-fun e!509313 () Bool)

(assert (=> b!908655 (= e!509314 e!509313)))

(declare-fun res!613426 () Bool)

(assert (=> b!908655 (=> res!613426 e!509313)))

(declare-fun lt!409795 () ListLongMap!11065)

(assert (=> b!908655 (= res!613426 (not (contains!4556 lt!409795 k!1033)))))

(assert (=> b!908655 (= lt!409795 (getCurrentListMap!2779 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 i!717 defaultEntry!1160))))

(declare-fun b!908656 () Bool)

(declare-fun res!613420 () Bool)

(assert (=> b!908656 (=> (not res!613420) (not e!509309))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!53652 (_ BitVec 32)) Bool)

(assert (=> b!908656 (= res!613420 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1386 mask!1756))))

(declare-fun b!908657 () Bool)

(declare-fun e!509308 () Bool)

(assert (=> b!908657 (= e!509308 tp_is_empty!18815)))

(declare-fun mapNonEmpty!29938 () Bool)

(declare-fun mapRes!29938 () Bool)

(declare-fun tp!57457 () Bool)

(assert (=> mapNonEmpty!29938 (= mapRes!29938 (and tp!57457 e!509308))))

(declare-fun mapValue!29938 () ValueCell!8926)

(declare-fun mapKey!29938 () (_ BitVec 32))

(declare-fun mapRest!29938 () (Array (_ BitVec 32) ValueCell!8926))

(assert (=> mapNonEmpty!29938 (= (arr!25781 _values!1152) (store mapRest!29938 mapKey!29938 mapValue!29938))))

(declare-fun res!613425 () Bool)

(assert (=> start!77866 (=> (not res!613425) (not e!509309))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!77866 (= res!613425 (validMask!0 mask!1756))))

(assert (=> start!77866 e!509309))

(declare-fun e!509311 () Bool)

(declare-fun array_inv!20158 (array!53654) Bool)

(assert (=> start!77866 (and (array_inv!20158 _values!1152) e!509311)))

(assert (=> start!77866 tp!57456))

(assert (=> start!77866 true))

(assert (=> start!77866 tp_is_empty!18815))

(declare-fun array_inv!20159 (array!53652) Bool)

(assert (=> start!77866 (array_inv!20159 _keys!1386)))

(declare-fun b!908651 () Bool)

(declare-fun res!613422 () Bool)

(assert (=> b!908651 (=> (not res!613422) (not e!509309))))

(declare-datatypes ((List!18209 0))(
  ( (Nil!18206) (Cons!18205 (h!19351 (_ BitVec 64)) (t!25786 List!18209)) )
))
(declare-fun arrayNoDuplicates!0 (array!53652 (_ BitVec 32) List!18209) Bool)

(assert (=> b!908651 (= res!613422 (arrayNoDuplicates!0 _keys!1386 #b00000000000000000000000000000000 Nil!18206))))

(declare-fun b!908658 () Bool)

(assert (=> b!908658 (= e!509311 (and e!509310 mapRes!29938))))

(declare-fun condMapEmpty!29938 () Bool)

(declare-fun mapDefault!29938 () ValueCell!8926)

