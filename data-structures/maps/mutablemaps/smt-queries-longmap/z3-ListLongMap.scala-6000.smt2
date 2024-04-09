; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!77882 () Bool)

(assert start!77882)

(declare-fun b_free!16413 () Bool)

(declare-fun b_next!16413 () Bool)

(assert (=> start!77882 (= b_free!16413 (not b_next!16413))))

(declare-fun tp!57505 () Bool)

(declare-fun b_and!26999 () Bool)

(assert (=> start!77882 (= tp!57505 b_and!26999)))

(declare-fun b!908947 () Bool)

(declare-fun res!613630 () Bool)

(declare-fun e!509487 () Bool)

(assert (=> b!908947 (=> (not res!613630) (not e!509487))))

(declare-datatypes ((V!30073 0))(
  ( (V!30074 (val!9466 Int)) )
))
(declare-datatypes ((ValueCell!8934 0))(
  ( (ValueCellFull!8934 (v!11973 V!30073)) (EmptyCell!8934) )
))
(declare-datatypes ((array!53682 0))(
  ( (array!53683 (arr!25795 (Array (_ BitVec 32) ValueCell!8934)) (size!26255 (_ BitVec 32))) )
))
(declare-fun _values!1152 () array!53682)

(declare-fun extraKeys!1073 () (_ BitVec 32))

(declare-fun mask!1756 () (_ BitVec 32))

(declare-datatypes ((array!53684 0))(
  ( (array!53685 (arr!25796 (Array (_ BitVec 32) (_ BitVec 64))) (size!26256 (_ BitVec 32))) )
))
(declare-fun _keys!1386 () array!53684)

(assert (=> b!908947 (= res!613630 (and (= (size!26255 _values!1152) (bvadd #b00000000000000000000000000000001 mask!1756)) (= (size!26256 _keys!1386) (size!26255 _values!1152)) (bvsge mask!1756 #b00000000000000000000000000000000) (bvsge extraKeys!1073 #b00000000000000000000000000000000) (bvsle extraKeys!1073 #b00000000000000000000000000000011)))))

(declare-fun b!908948 () Bool)

(declare-fun res!613629 () Bool)

(assert (=> b!908948 (=> (not res!613629) (not e!509487))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!53684 (_ BitVec 32)) Bool)

(assert (=> b!908948 (= res!613629 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1386 mask!1756))))

(declare-fun b!908949 () Bool)

(declare-fun e!509488 () Bool)

(declare-fun tp_is_empty!18831 () Bool)

(assert (=> b!908949 (= e!509488 tp_is_empty!18831)))

(declare-fun mapNonEmpty!29962 () Bool)

(declare-fun mapRes!29962 () Bool)

(declare-fun tp!57504 () Bool)

(declare-fun e!509486 () Bool)

(assert (=> mapNonEmpty!29962 (= mapRes!29962 (and tp!57504 e!509486))))

(declare-fun mapKey!29962 () (_ BitVec 32))

(declare-fun mapValue!29962 () ValueCell!8934)

(declare-fun mapRest!29962 () (Array (_ BitVec 32) ValueCell!8934))

(assert (=> mapNonEmpty!29962 (= (arr!25795 _values!1152) (store mapRest!29962 mapKey!29962 mapValue!29962))))

(declare-fun b!908950 () Bool)

(declare-fun e!509485 () Bool)

(assert (=> b!908950 (= e!509485 (and e!509488 mapRes!29962))))

(declare-fun condMapEmpty!29962 () Bool)

(declare-fun mapDefault!29962 () ValueCell!8934)

(assert (=> b!908950 (= condMapEmpty!29962 (= (arr!25795 _values!1152) ((as const (Array (_ BitVec 32) ValueCell!8934)) mapDefault!29962)))))

(declare-fun b!908951 () Bool)

(declare-fun res!613627 () Bool)

(assert (=> b!908951 (=> (not res!613627) (not e!509487))))

(declare-datatypes ((List!18220 0))(
  ( (Nil!18217) (Cons!18216 (h!19362 (_ BitVec 64)) (t!25809 List!18220)) )
))
(declare-fun arrayNoDuplicates!0 (array!53684 (_ BitVec 32) List!18220) Bool)

(assert (=> b!908951 (= res!613627 (arrayNoDuplicates!0 _keys!1386 #b00000000000000000000000000000000 Nil!18217))))

(declare-fun res!613628 () Bool)

(assert (=> start!77882 (=> (not res!613628) (not e!509487))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!77882 (= res!613628 (validMask!0 mask!1756))))

(assert (=> start!77882 e!509487))

(declare-fun array_inv!20168 (array!53682) Bool)

(assert (=> start!77882 (and (array_inv!20168 _values!1152) e!509485)))

(assert (=> start!77882 tp!57505))

(assert (=> start!77882 true))

(assert (=> start!77882 tp_is_empty!18831))

(declare-fun array_inv!20169 (array!53684) Bool)

(assert (=> start!77882 (array_inv!20169 _keys!1386)))

(declare-fun b!908952 () Bool)

(assert (=> b!908952 (= e!509486 tp_is_empty!18831)))

(declare-fun mapIsEmpty!29962 () Bool)

(assert (=> mapIsEmpty!29962 mapRes!29962))

(declare-fun b!908953 () Bool)

(assert (=> b!908953 (= e!509487 false)))

(declare-fun defaultEntry!1160 () Int)

(declare-fun zeroValue!1094 () V!30073)

(declare-fun lt!409891 () Bool)

(declare-fun k0!1033 () (_ BitVec 64))

(declare-fun minValue!1094 () V!30073)

(declare-datatypes ((tuple2!12366 0))(
  ( (tuple2!12367 (_1!6193 (_ BitVec 64)) (_2!6193 V!30073)) )
))
(declare-datatypes ((List!18221 0))(
  ( (Nil!18218) (Cons!18217 (h!19363 tuple2!12366) (t!25810 List!18221)) )
))
(declare-datatypes ((ListLongMap!11077 0))(
  ( (ListLongMap!11078 (toList!5554 List!18221)) )
))
(declare-fun contains!4561 (ListLongMap!11077 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!2784 (array!53684 array!53682 (_ BitVec 32) (_ BitVec 32) V!30073 V!30073 (_ BitVec 32) Int) ListLongMap!11077)

(assert (=> b!908953 (= lt!409891 (contains!4561 (getCurrentListMap!2784 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 #b00000000000000000000000000000000 defaultEntry!1160) k0!1033))))

(assert (= (and start!77882 res!613628) b!908947))

(assert (= (and b!908947 res!613630) b!908948))

(assert (= (and b!908948 res!613629) b!908951))

(assert (= (and b!908951 res!613627) b!908953))

(assert (= (and b!908950 condMapEmpty!29962) mapIsEmpty!29962))

(assert (= (and b!908950 (not condMapEmpty!29962)) mapNonEmpty!29962))

(get-info :version)

(assert (= (and mapNonEmpty!29962 ((_ is ValueCellFull!8934) mapValue!29962)) b!908952))

(assert (= (and b!908950 ((_ is ValueCellFull!8934) mapDefault!29962)) b!908949))

(assert (= start!77882 b!908950))

(declare-fun m!844381 () Bool)

(assert (=> b!908948 m!844381))

(declare-fun m!844383 () Bool)

(assert (=> b!908951 m!844383))

(declare-fun m!844385 () Bool)

(assert (=> mapNonEmpty!29962 m!844385))

(declare-fun m!844387 () Bool)

(assert (=> b!908953 m!844387))

(assert (=> b!908953 m!844387))

(declare-fun m!844389 () Bool)

(assert (=> b!908953 m!844389))

(declare-fun m!844391 () Bool)

(assert (=> start!77882 m!844391))

(declare-fun m!844393 () Bool)

(assert (=> start!77882 m!844393))

(declare-fun m!844395 () Bool)

(assert (=> start!77882 m!844395))

(check-sat (not start!77882) (not mapNonEmpty!29962) (not b_next!16413) (not b!908948) tp_is_empty!18831 (not b!908951) (not b!908953) b_and!26999)
(check-sat b_and!26999 (not b_next!16413))
