; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!77918 () Bool)

(assert start!77918)

(declare-fun b_free!16449 () Bool)

(declare-fun b_next!16449 () Bool)

(assert (=> start!77918 (= b_free!16449 (not b_next!16449))))

(declare-fun tp!57613 () Bool)

(declare-fun b_and!27035 () Bool)

(assert (=> start!77918 (= tp!57613 b_and!27035)))

(declare-fun b!909325 () Bool)

(declare-fun res!613846 () Bool)

(declare-fun e!509756 () Bool)

(assert (=> b!909325 (=> (not res!613846) (not e!509756))))

(declare-datatypes ((array!53750 0))(
  ( (array!53751 (arr!25829 (Array (_ BitVec 32) (_ BitVec 64))) (size!26289 (_ BitVec 32))) )
))
(declare-fun _keys!1386 () array!53750)

(declare-datatypes ((List!18244 0))(
  ( (Nil!18241) (Cons!18240 (h!19386 (_ BitVec 64)) (t!25833 List!18244)) )
))
(declare-fun arrayNoDuplicates!0 (array!53750 (_ BitVec 32) List!18244) Bool)

(assert (=> b!909325 (= res!613846 (arrayNoDuplicates!0 _keys!1386 #b00000000000000000000000000000000 Nil!18241))))

(declare-fun b!909326 () Bool)

(declare-fun res!613843 () Bool)

(assert (=> b!909326 (=> (not res!613843) (not e!509756))))

(declare-datatypes ((V!30121 0))(
  ( (V!30122 (val!9484 Int)) )
))
(declare-datatypes ((ValueCell!8952 0))(
  ( (ValueCellFull!8952 (v!11991 V!30121)) (EmptyCell!8952) )
))
(declare-datatypes ((array!53752 0))(
  ( (array!53753 (arr!25830 (Array (_ BitVec 32) ValueCell!8952)) (size!26290 (_ BitVec 32))) )
))
(declare-fun _values!1152 () array!53752)

(declare-fun extraKeys!1073 () (_ BitVec 32))

(declare-fun mask!1756 () (_ BitVec 32))

(assert (=> b!909326 (= res!613843 (and (= (size!26290 _values!1152) (bvadd #b00000000000000000000000000000001 mask!1756)) (= (size!26289 _keys!1386) (size!26290 _values!1152)) (bvsge mask!1756 #b00000000000000000000000000000000) (bvsge extraKeys!1073 #b00000000000000000000000000000000) (bvsle extraKeys!1073 #b00000000000000000000000000000011)))))

(declare-fun b!909327 () Bool)

(assert (=> b!909327 (= e!509756 false)))

(declare-fun defaultEntry!1160 () Int)

(declare-fun lt!409945 () Bool)

(declare-fun zeroValue!1094 () V!30121)

(declare-fun k0!1033 () (_ BitVec 64))

(declare-fun minValue!1094 () V!30121)

(declare-datatypes ((tuple2!12386 0))(
  ( (tuple2!12387 (_1!6203 (_ BitVec 64)) (_2!6203 V!30121)) )
))
(declare-datatypes ((List!18245 0))(
  ( (Nil!18242) (Cons!18241 (h!19387 tuple2!12386) (t!25834 List!18245)) )
))
(declare-datatypes ((ListLongMap!11097 0))(
  ( (ListLongMap!11098 (toList!5564 List!18245)) )
))
(declare-fun contains!4571 (ListLongMap!11097 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!2794 (array!53750 array!53752 (_ BitVec 32) (_ BitVec 32) V!30121 V!30121 (_ BitVec 32) Int) ListLongMap!11097)

(assert (=> b!909327 (= lt!409945 (contains!4571 (getCurrentListMap!2794 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 #b00000000000000000000000000000000 defaultEntry!1160) k0!1033))))

(declare-fun res!613845 () Bool)

(assert (=> start!77918 (=> (not res!613845) (not e!509756))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!77918 (= res!613845 (validMask!0 mask!1756))))

(assert (=> start!77918 e!509756))

(declare-fun e!509757 () Bool)

(declare-fun array_inv!20188 (array!53752) Bool)

(assert (=> start!77918 (and (array_inv!20188 _values!1152) e!509757)))

(assert (=> start!77918 tp!57613))

(assert (=> start!77918 true))

(declare-fun tp_is_empty!18867 () Bool)

(assert (=> start!77918 tp_is_empty!18867))

(declare-fun array_inv!20189 (array!53750) Bool)

(assert (=> start!77918 (array_inv!20189 _keys!1386)))

(declare-fun mapIsEmpty!30016 () Bool)

(declare-fun mapRes!30016 () Bool)

(assert (=> mapIsEmpty!30016 mapRes!30016))

(declare-fun mapNonEmpty!30016 () Bool)

(declare-fun tp!57612 () Bool)

(declare-fun e!509758 () Bool)

(assert (=> mapNonEmpty!30016 (= mapRes!30016 (and tp!57612 e!509758))))

(declare-fun mapKey!30016 () (_ BitVec 32))

(declare-fun mapValue!30016 () ValueCell!8952)

(declare-fun mapRest!30016 () (Array (_ BitVec 32) ValueCell!8952))

(assert (=> mapNonEmpty!30016 (= (arr!25830 _values!1152) (store mapRest!30016 mapKey!30016 mapValue!30016))))

(declare-fun b!909328 () Bool)

(declare-fun res!613844 () Bool)

(assert (=> b!909328 (=> (not res!613844) (not e!509756))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!53750 (_ BitVec 32)) Bool)

(assert (=> b!909328 (= res!613844 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1386 mask!1756))))

(declare-fun b!909329 () Bool)

(assert (=> b!909329 (= e!509758 tp_is_empty!18867)))

(declare-fun b!909330 () Bool)

(declare-fun e!509755 () Bool)

(assert (=> b!909330 (= e!509757 (and e!509755 mapRes!30016))))

(declare-fun condMapEmpty!30016 () Bool)

(declare-fun mapDefault!30016 () ValueCell!8952)

(assert (=> b!909330 (= condMapEmpty!30016 (= (arr!25830 _values!1152) ((as const (Array (_ BitVec 32) ValueCell!8952)) mapDefault!30016)))))

(declare-fun b!909331 () Bool)

(assert (=> b!909331 (= e!509755 tp_is_empty!18867)))

(assert (= (and start!77918 res!613845) b!909326))

(assert (= (and b!909326 res!613843) b!909328))

(assert (= (and b!909328 res!613844) b!909325))

(assert (= (and b!909325 res!613846) b!909327))

(assert (= (and b!909330 condMapEmpty!30016) mapIsEmpty!30016))

(assert (= (and b!909330 (not condMapEmpty!30016)) mapNonEmpty!30016))

(get-info :version)

(assert (= (and mapNonEmpty!30016 ((_ is ValueCellFull!8952) mapValue!30016)) b!909329))

(assert (= (and b!909330 ((_ is ValueCellFull!8952) mapDefault!30016)) b!909331))

(assert (= start!77918 b!909330))

(declare-fun m!844669 () Bool)

(assert (=> b!909325 m!844669))

(declare-fun m!844671 () Bool)

(assert (=> b!909327 m!844671))

(assert (=> b!909327 m!844671))

(declare-fun m!844673 () Bool)

(assert (=> b!909327 m!844673))

(declare-fun m!844675 () Bool)

(assert (=> mapNonEmpty!30016 m!844675))

(declare-fun m!844677 () Bool)

(assert (=> b!909328 m!844677))

(declare-fun m!844679 () Bool)

(assert (=> start!77918 m!844679))

(declare-fun m!844681 () Bool)

(assert (=> start!77918 m!844681))

(declare-fun m!844683 () Bool)

(assert (=> start!77918 m!844683))

(check-sat (not b_next!16449) (not b!909325) (not b!909328) tp_is_empty!18867 (not mapNonEmpty!30016) (not start!77918) b_and!27035 (not b!909327))
(check-sat b_and!27035 (not b_next!16449))
