; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!77912 () Bool)

(assert start!77912)

(declare-fun b_free!16443 () Bool)

(declare-fun b_next!16443 () Bool)

(assert (=> start!77912 (= b_free!16443 (not b_next!16443))))

(declare-fun tp!57594 () Bool)

(declare-fun b_and!27029 () Bool)

(assert (=> start!77912 (= tp!57594 b_and!27029)))

(declare-fun b!909262 () Bool)

(declare-fun e!509710 () Bool)

(declare-fun tp_is_empty!18861 () Bool)

(assert (=> b!909262 (= e!509710 tp_is_empty!18861)))

(declare-fun b!909263 () Bool)

(declare-fun res!613810 () Bool)

(declare-fun e!509712 () Bool)

(assert (=> b!909263 (=> (not res!613810) (not e!509712))))

(declare-datatypes ((array!53740 0))(
  ( (array!53741 (arr!25824 (Array (_ BitVec 32) (_ BitVec 64))) (size!26284 (_ BitVec 32))) )
))
(declare-fun _keys!1386 () array!53740)

(declare-datatypes ((List!18240 0))(
  ( (Nil!18237) (Cons!18236 (h!19382 (_ BitVec 64)) (t!25829 List!18240)) )
))
(declare-fun arrayNoDuplicates!0 (array!53740 (_ BitVec 32) List!18240) Bool)

(assert (=> b!909263 (= res!613810 (arrayNoDuplicates!0 _keys!1386 #b00000000000000000000000000000000 Nil!18237))))

(declare-fun b!909264 () Bool)

(assert (=> b!909264 (= e!509712 false)))

(declare-datatypes ((V!30113 0))(
  ( (V!30114 (val!9481 Int)) )
))
(declare-datatypes ((ValueCell!8949 0))(
  ( (ValueCellFull!8949 (v!11988 V!30113)) (EmptyCell!8949) )
))
(declare-datatypes ((array!53742 0))(
  ( (array!53743 (arr!25825 (Array (_ BitVec 32) ValueCell!8949)) (size!26285 (_ BitVec 32))) )
))
(declare-fun _values!1152 () array!53742)

(declare-fun defaultEntry!1160 () Int)

(declare-fun mask!1756 () (_ BitVec 32))

(declare-fun zeroValue!1094 () V!30113)

(declare-fun lt!409936 () Bool)

(declare-fun k0!1033 () (_ BitVec 64))

(declare-fun extraKeys!1073 () (_ BitVec 32))

(declare-fun minValue!1094 () V!30113)

(declare-datatypes ((tuple2!12382 0))(
  ( (tuple2!12383 (_1!6201 (_ BitVec 64)) (_2!6201 V!30113)) )
))
(declare-datatypes ((List!18241 0))(
  ( (Nil!18238) (Cons!18237 (h!19383 tuple2!12382) (t!25830 List!18241)) )
))
(declare-datatypes ((ListLongMap!11093 0))(
  ( (ListLongMap!11094 (toList!5562 List!18241)) )
))
(declare-fun contains!4569 (ListLongMap!11093 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!2792 (array!53740 array!53742 (_ BitVec 32) (_ BitVec 32) V!30113 V!30113 (_ BitVec 32) Int) ListLongMap!11093)

(assert (=> b!909264 (= lt!409936 (contains!4569 (getCurrentListMap!2792 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 #b00000000000000000000000000000000 defaultEntry!1160) k0!1033))))

(declare-fun b!909265 () Bool)

(declare-fun e!509714 () Bool)

(declare-fun mapRes!30007 () Bool)

(assert (=> b!909265 (= e!509714 (and e!509710 mapRes!30007))))

(declare-fun condMapEmpty!30007 () Bool)

(declare-fun mapDefault!30007 () ValueCell!8949)

(assert (=> b!909265 (= condMapEmpty!30007 (= (arr!25825 _values!1152) ((as const (Array (_ BitVec 32) ValueCell!8949)) mapDefault!30007)))))

(declare-fun b!909266 () Bool)

(declare-fun e!509711 () Bool)

(assert (=> b!909266 (= e!509711 tp_is_empty!18861)))

(declare-fun b!909267 () Bool)

(declare-fun res!613808 () Bool)

(assert (=> b!909267 (=> (not res!613808) (not e!509712))))

(assert (=> b!909267 (= res!613808 (and (= (size!26285 _values!1152) (bvadd #b00000000000000000000000000000001 mask!1756)) (= (size!26284 _keys!1386) (size!26285 _values!1152)) (bvsge mask!1756 #b00000000000000000000000000000000) (bvsge extraKeys!1073 #b00000000000000000000000000000000) (bvsle extraKeys!1073 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!30007 () Bool)

(declare-fun tp!57595 () Bool)

(assert (=> mapNonEmpty!30007 (= mapRes!30007 (and tp!57595 e!509711))))

(declare-fun mapRest!30007 () (Array (_ BitVec 32) ValueCell!8949))

(declare-fun mapValue!30007 () ValueCell!8949)

(declare-fun mapKey!30007 () (_ BitVec 32))

(assert (=> mapNonEmpty!30007 (= (arr!25825 _values!1152) (store mapRest!30007 mapKey!30007 mapValue!30007))))

(declare-fun mapIsEmpty!30007 () Bool)

(assert (=> mapIsEmpty!30007 mapRes!30007))

(declare-fun b!909268 () Bool)

(declare-fun res!613809 () Bool)

(assert (=> b!909268 (=> (not res!613809) (not e!509712))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!53740 (_ BitVec 32)) Bool)

(assert (=> b!909268 (= res!613809 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1386 mask!1756))))

(declare-fun res!613807 () Bool)

(assert (=> start!77912 (=> (not res!613807) (not e!509712))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!77912 (= res!613807 (validMask!0 mask!1756))))

(assert (=> start!77912 e!509712))

(declare-fun array_inv!20186 (array!53742) Bool)

(assert (=> start!77912 (and (array_inv!20186 _values!1152) e!509714)))

(assert (=> start!77912 tp!57594))

(assert (=> start!77912 true))

(assert (=> start!77912 tp_is_empty!18861))

(declare-fun array_inv!20187 (array!53740) Bool)

(assert (=> start!77912 (array_inv!20187 _keys!1386)))

(assert (= (and start!77912 res!613807) b!909267))

(assert (= (and b!909267 res!613808) b!909268))

(assert (= (and b!909268 res!613809) b!909263))

(assert (= (and b!909263 res!613810) b!909264))

(assert (= (and b!909265 condMapEmpty!30007) mapIsEmpty!30007))

(assert (= (and b!909265 (not condMapEmpty!30007)) mapNonEmpty!30007))

(get-info :version)

(assert (= (and mapNonEmpty!30007 ((_ is ValueCellFull!8949) mapValue!30007)) b!909266))

(assert (= (and b!909265 ((_ is ValueCellFull!8949) mapDefault!30007)) b!909262))

(assert (= start!77912 b!909265))

(declare-fun m!844621 () Bool)

(assert (=> b!909263 m!844621))

(declare-fun m!844623 () Bool)

(assert (=> b!909264 m!844623))

(assert (=> b!909264 m!844623))

(declare-fun m!844625 () Bool)

(assert (=> b!909264 m!844625))

(declare-fun m!844627 () Bool)

(assert (=> mapNonEmpty!30007 m!844627))

(declare-fun m!844629 () Bool)

(assert (=> start!77912 m!844629))

(declare-fun m!844631 () Bool)

(assert (=> start!77912 m!844631))

(declare-fun m!844633 () Bool)

(assert (=> start!77912 m!844633))

(declare-fun m!844635 () Bool)

(assert (=> b!909268 m!844635))

(check-sat b_and!27029 tp_is_empty!18861 (not b!909263) (not b!909264) (not mapNonEmpty!30007) (not b_next!16443) (not b!909268) (not start!77912))
(check-sat b_and!27029 (not b_next!16443))
