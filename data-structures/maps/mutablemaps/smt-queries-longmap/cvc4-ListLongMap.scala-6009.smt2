; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!77954 () Bool)

(assert start!77954)

(declare-fun b_free!16469 () Bool)

(declare-fun b_next!16469 () Bool)

(assert (=> start!77954 (= b_free!16469 (not b_next!16469))))

(declare-fun tp!57676 () Bool)

(declare-fun b_and!27057 () Bool)

(assert (=> start!77954 (= tp!57676 b_and!27057)))

(declare-fun mapIsEmpty!30049 () Bool)

(declare-fun mapRes!30049 () Bool)

(assert (=> mapIsEmpty!30049 mapRes!30049))

(declare-fun b!909662 () Bool)

(declare-fun e!509981 () Bool)

(declare-fun tp_is_empty!18887 () Bool)

(assert (=> b!909662 (= e!509981 tp_is_empty!18887)))

(declare-fun b!909663 () Bool)

(declare-fun res!614028 () Bool)

(declare-fun e!509978 () Bool)

(assert (=> b!909663 (=> (not res!614028) (not e!509978))))

(declare-datatypes ((array!53792 0))(
  ( (array!53793 (arr!25849 (Array (_ BitVec 32) (_ BitVec 64))) (size!26309 (_ BitVec 32))) )
))
(declare-fun _keys!1386 () array!53792)

(declare-fun mask!1756 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!53792 (_ BitVec 32)) Bool)

(assert (=> b!909663 (= res!614028 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1386 mask!1756))))

(declare-fun b!909664 () Bool)

(declare-fun res!614026 () Bool)

(assert (=> b!909664 (=> (not res!614026) (not e!509978))))

(declare-datatypes ((List!18258 0))(
  ( (Nil!18255) (Cons!18254 (h!19400 (_ BitVec 64)) (t!25849 List!18258)) )
))
(declare-fun arrayNoDuplicates!0 (array!53792 (_ BitVec 32) List!18258) Bool)

(assert (=> b!909664 (= res!614026 (arrayNoDuplicates!0 _keys!1386 #b00000000000000000000000000000000 Nil!18255))))

(declare-fun b!909665 () Bool)

(declare-fun res!614027 () Bool)

(assert (=> b!909665 (=> (not res!614027) (not e!509978))))

(declare-datatypes ((V!30147 0))(
  ( (V!30148 (val!9494 Int)) )
))
(declare-datatypes ((ValueCell!8962 0))(
  ( (ValueCellFull!8962 (v!12002 V!30147)) (EmptyCell!8962) )
))
(declare-datatypes ((array!53794 0))(
  ( (array!53795 (arr!25850 (Array (_ BitVec 32) ValueCell!8962)) (size!26310 (_ BitVec 32))) )
))
(declare-fun _values!1152 () array!53794)

(declare-fun extraKeys!1073 () (_ BitVec 32))

(assert (=> b!909665 (= res!614027 (and (= (size!26310 _values!1152) (bvadd #b00000000000000000000000000000001 mask!1756)) (= (size!26309 _keys!1386) (size!26310 _values!1152)) (bvsge mask!1756 #b00000000000000000000000000000000) (bvsge extraKeys!1073 #b00000000000000000000000000000000) (bvsle extraKeys!1073 #b00000000000000000000000000000011)))))

(declare-fun b!909666 () Bool)

(assert (=> b!909666 (= e!509978 false)))

(declare-fun defaultEntry!1160 () Int)

(declare-fun zeroValue!1094 () V!30147)

(declare-fun lt!410053 () Bool)

(declare-fun k!1033 () (_ BitVec 64))

(declare-fun minValue!1094 () V!30147)

(declare-datatypes ((tuple2!12402 0))(
  ( (tuple2!12403 (_1!6211 (_ BitVec 64)) (_2!6211 V!30147)) )
))
(declare-datatypes ((List!18259 0))(
  ( (Nil!18256) (Cons!18255 (h!19401 tuple2!12402) (t!25850 List!18259)) )
))
(declare-datatypes ((ListLongMap!11113 0))(
  ( (ListLongMap!11114 (toList!5572 List!18259)) )
))
(declare-fun contains!4580 (ListLongMap!11113 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!2802 (array!53792 array!53794 (_ BitVec 32) (_ BitVec 32) V!30147 V!30147 (_ BitVec 32) Int) ListLongMap!11113)

(assert (=> b!909666 (= lt!410053 (contains!4580 (getCurrentListMap!2802 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 #b00000000000000000000000000000000 defaultEntry!1160) k!1033))))

(declare-fun mapNonEmpty!30049 () Bool)

(declare-fun tp!57675 () Bool)

(declare-fun e!509980 () Bool)

(assert (=> mapNonEmpty!30049 (= mapRes!30049 (and tp!57675 e!509980))))

(declare-fun mapRest!30049 () (Array (_ BitVec 32) ValueCell!8962))

(declare-fun mapValue!30049 () ValueCell!8962)

(declare-fun mapKey!30049 () (_ BitVec 32))

(assert (=> mapNonEmpty!30049 (= (arr!25850 _values!1152) (store mapRest!30049 mapKey!30049 mapValue!30049))))

(declare-fun res!614029 () Bool)

(assert (=> start!77954 (=> (not res!614029) (not e!509978))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!77954 (= res!614029 (validMask!0 mask!1756))))

(assert (=> start!77954 e!509978))

(declare-fun e!509977 () Bool)

(declare-fun array_inv!20196 (array!53794) Bool)

(assert (=> start!77954 (and (array_inv!20196 _values!1152) e!509977)))

(assert (=> start!77954 tp!57676))

(assert (=> start!77954 true))

(assert (=> start!77954 tp_is_empty!18887))

(declare-fun array_inv!20197 (array!53792) Bool)

(assert (=> start!77954 (array_inv!20197 _keys!1386)))

(declare-fun b!909667 () Bool)

(assert (=> b!909667 (= e!509980 tp_is_empty!18887)))

(declare-fun b!909668 () Bool)

(assert (=> b!909668 (= e!509977 (and e!509981 mapRes!30049))))

(declare-fun condMapEmpty!30049 () Bool)

(declare-fun mapDefault!30049 () ValueCell!8962)

