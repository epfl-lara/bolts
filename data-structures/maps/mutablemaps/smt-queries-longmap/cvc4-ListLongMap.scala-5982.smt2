; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!77750 () Bool)

(assert start!77750)

(declare-fun b_free!16307 () Bool)

(declare-fun b_next!16307 () Bool)

(assert (=> start!77750 (= b_free!16307 (not b_next!16307))))

(declare-fun tp!57183 () Bool)

(declare-fun b_and!26785 () Bool)

(assert (=> start!77750 (= tp!57183 b_and!26785)))

(declare-fun b!906654 () Bool)

(declare-fun res!612007 () Bool)

(declare-fun e!508133 () Bool)

(assert (=> b!906654 (=> res!612007 e!508133)))

(declare-datatypes ((V!29931 0))(
  ( (V!29932 (val!9413 Int)) )
))
(declare-datatypes ((tuple2!12276 0))(
  ( (tuple2!12277 (_1!6148 (_ BitVec 64)) (_2!6148 V!29931)) )
))
(declare-datatypes ((List!18137 0))(
  ( (Nil!18134) (Cons!18133 (h!19279 tuple2!12276) (t!25624 List!18137)) )
))
(declare-datatypes ((ListLongMap!10987 0))(
  ( (ListLongMap!10988 (toList!5509 List!18137)) )
))
(declare-fun lt!408999 () ListLongMap!10987)

(declare-fun k!1033 () (_ BitVec 64))

(declare-fun lt!409001 () V!29931)

(declare-fun apply!485 (ListLongMap!10987 (_ BitVec 64)) V!29931)

(assert (=> b!906654 (= res!612007 (not (= (apply!485 lt!408999 k!1033) lt!409001)))))

(declare-fun mapNonEmpty!29800 () Bool)

(declare-fun mapRes!29800 () Bool)

(declare-fun tp!57184 () Bool)

(declare-fun e!508127 () Bool)

(assert (=> mapNonEmpty!29800 (= mapRes!29800 (and tp!57184 e!508127))))

(declare-datatypes ((ValueCell!8881 0))(
  ( (ValueCellFull!8881 (v!11918 V!29931)) (EmptyCell!8881) )
))
(declare-fun mapValue!29800 () ValueCell!8881)

(declare-fun mapKey!29800 () (_ BitVec 32))

(declare-datatypes ((array!53476 0))(
  ( (array!53477 (arr!25693 (Array (_ BitVec 32) ValueCell!8881)) (size!26153 (_ BitVec 32))) )
))
(declare-fun _values!1152 () array!53476)

(declare-fun mapRest!29800 () (Array (_ BitVec 32) ValueCell!8881))

(assert (=> mapNonEmpty!29800 (= (arr!25693 _values!1152) (store mapRest!29800 mapKey!29800 mapValue!29800))))

(declare-fun b!906655 () Bool)

(declare-fun res!612005 () Bool)

(declare-fun e!508132 () Bool)

(assert (=> b!906655 (=> (not res!612005) (not e!508132))))

(declare-datatypes ((array!53478 0))(
  ( (array!53479 (arr!25694 (Array (_ BitVec 32) (_ BitVec 64))) (size!26154 (_ BitVec 32))) )
))
(declare-fun _keys!1386 () array!53478)

(declare-fun mask!1756 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!53478 (_ BitVec 32)) Bool)

(assert (=> b!906655 (= res!612005 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1386 mask!1756))))

(declare-fun b!906656 () Bool)

(declare-fun e!508126 () Bool)

(assert (=> b!906656 (= e!508132 e!508126)))

(declare-fun res!612006 () Bool)

(assert (=> b!906656 (=> (not res!612006) (not e!508126))))

(declare-fun lt!408998 () ListLongMap!10987)

(declare-fun contains!4519 (ListLongMap!10987 (_ BitVec 64)) Bool)

(assert (=> b!906656 (= res!612006 (contains!4519 lt!408998 k!1033))))

(declare-fun defaultEntry!1160 () Int)

(declare-fun zeroValue!1094 () V!29931)

(declare-fun extraKeys!1073 () (_ BitVec 32))

(declare-fun minValue!1094 () V!29931)

(declare-fun getCurrentListMap!2743 (array!53478 array!53476 (_ BitVec 32) (_ BitVec 32) V!29931 V!29931 (_ BitVec 32) Int) ListLongMap!10987)

(assert (=> b!906656 (= lt!408998 (getCurrentListMap!2743 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 #b00000000000000000000000000000000 defaultEntry!1160))))

(declare-fun b!906657 () Bool)

(declare-fun res!612012 () Bool)

(assert (=> b!906657 (=> (not res!612012) (not e!508132))))

(declare-datatypes ((List!18138 0))(
  ( (Nil!18135) (Cons!18134 (h!19280 (_ BitVec 64)) (t!25625 List!18138)) )
))
(declare-fun arrayNoDuplicates!0 (array!53478 (_ BitVec 32) List!18138) Bool)

(assert (=> b!906657 (= res!612012 (arrayNoDuplicates!0 _keys!1386 #b00000000000000000000000000000000 Nil!18135))))

(declare-fun b!906658 () Bool)

(declare-fun res!612004 () Bool)

(assert (=> b!906658 (=> (not res!612004) (not e!508132))))

(assert (=> b!906658 (= res!612004 (and (= (size!26153 _values!1152) (bvadd #b00000000000000000000000000000001 mask!1756)) (= (size!26154 _keys!1386) (size!26153 _values!1152)) (bvsge mask!1756 #b00000000000000000000000000000000) (bvsge extraKeys!1073 #b00000000000000000000000000000000) (bvsle extraKeys!1073 #b00000000000000000000000000000011)))))

(declare-fun b!906660 () Bool)

(declare-fun tp_is_empty!18725 () Bool)

(assert (=> b!906660 (= e!508127 tp_is_empty!18725)))

(declare-fun b!906661 () Bool)

(declare-fun e!508128 () Bool)

(assert (=> b!906661 (= e!508128 e!508133)))

(declare-fun res!612003 () Bool)

(assert (=> b!906661 (=> res!612003 e!508133)))

(assert (=> b!906661 (= res!612003 (not (contains!4519 lt!408999 k!1033)))))

(declare-fun i!717 () (_ BitVec 32))

(assert (=> b!906661 (= lt!408999 (getCurrentListMap!2743 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 i!717 defaultEntry!1160))))

(declare-fun b!906662 () Bool)

(declare-fun res!612009 () Bool)

(assert (=> b!906662 (=> (not res!612009) (not e!508126))))

(assert (=> b!906662 (= res!612009 (and (= (select (arr!25694 _keys!1386) i!717) k!1033) (not (= k!1033 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1033 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!906663 () Bool)

(declare-fun e!508129 () Bool)

(declare-fun e!508131 () Bool)

(assert (=> b!906663 (= e!508129 (and e!508131 mapRes!29800))))

(declare-fun condMapEmpty!29800 () Bool)

(declare-fun mapDefault!29800 () ValueCell!8881)

