; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!77976 () Bool)

(assert start!77976)

(declare-fun b_free!16491 () Bool)

(declare-fun b_next!16491 () Bool)

(assert (=> start!77976 (= b_free!16491 (not b_next!16491))))

(declare-fun tp!57741 () Bool)

(declare-fun b_and!27079 () Bool)

(assert (=> start!77976 (= tp!57741 b_and!27079)))

(declare-fun b!909893 () Bool)

(declare-fun e!510146 () Bool)

(declare-fun tp_is_empty!18909 () Bool)

(assert (=> b!909893 (= e!510146 tp_is_empty!18909)))

(declare-fun b!909894 () Bool)

(declare-fun res!614159 () Bool)

(declare-fun e!510143 () Bool)

(assert (=> b!909894 (=> (not res!614159) (not e!510143))))

(declare-datatypes ((array!53836 0))(
  ( (array!53837 (arr!25871 (Array (_ BitVec 32) (_ BitVec 64))) (size!26331 (_ BitVec 32))) )
))
(declare-fun _keys!1386 () array!53836)

(declare-datatypes ((List!18276 0))(
  ( (Nil!18273) (Cons!18272 (h!19418 (_ BitVec 64)) (t!25867 List!18276)) )
))
(declare-fun arrayNoDuplicates!0 (array!53836 (_ BitVec 32) List!18276) Bool)

(assert (=> b!909894 (= res!614159 (arrayNoDuplicates!0 _keys!1386 #b00000000000000000000000000000000 Nil!18273))))

(declare-fun mapIsEmpty!30082 () Bool)

(declare-fun mapRes!30082 () Bool)

(assert (=> mapIsEmpty!30082 mapRes!30082))

(declare-fun b!909896 () Bool)

(assert (=> b!909896 (= e!510143 false)))

(declare-datatypes ((V!30177 0))(
  ( (V!30178 (val!9505 Int)) )
))
(declare-datatypes ((ValueCell!8973 0))(
  ( (ValueCellFull!8973 (v!12013 V!30177)) (EmptyCell!8973) )
))
(declare-datatypes ((array!53838 0))(
  ( (array!53839 (arr!25872 (Array (_ BitVec 32) ValueCell!8973)) (size!26332 (_ BitVec 32))) )
))
(declare-fun _values!1152 () array!53838)

(declare-fun defaultEntry!1160 () Int)

(declare-fun mask!1756 () (_ BitVec 32))

(declare-fun lt!410086 () Bool)

(declare-fun zeroValue!1094 () V!30177)

(declare-fun k0!1033 () (_ BitVec 64))

(declare-fun extraKeys!1073 () (_ BitVec 32))

(declare-fun minValue!1094 () V!30177)

(declare-datatypes ((tuple2!12424 0))(
  ( (tuple2!12425 (_1!6222 (_ BitVec 64)) (_2!6222 V!30177)) )
))
(declare-datatypes ((List!18277 0))(
  ( (Nil!18274) (Cons!18273 (h!19419 tuple2!12424) (t!25868 List!18277)) )
))
(declare-datatypes ((ListLongMap!11135 0))(
  ( (ListLongMap!11136 (toList!5583 List!18277)) )
))
(declare-fun contains!4591 (ListLongMap!11135 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!2813 (array!53836 array!53838 (_ BitVec 32) (_ BitVec 32) V!30177 V!30177 (_ BitVec 32) Int) ListLongMap!11135)

(assert (=> b!909896 (= lt!410086 (contains!4591 (getCurrentListMap!2813 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 #b00000000000000000000000000000000 defaultEntry!1160) k0!1033))))

(declare-fun b!909897 () Bool)

(declare-fun res!614158 () Bool)

(assert (=> b!909897 (=> (not res!614158) (not e!510143))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!53836 (_ BitVec 32)) Bool)

(assert (=> b!909897 (= res!614158 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1386 mask!1756))))

(declare-fun b!909898 () Bool)

(declare-fun e!510145 () Bool)

(assert (=> b!909898 (= e!510145 tp_is_empty!18909)))

(declare-fun b!909899 () Bool)

(declare-fun e!510144 () Bool)

(assert (=> b!909899 (= e!510144 (and e!510146 mapRes!30082))))

(declare-fun condMapEmpty!30082 () Bool)

(declare-fun mapDefault!30082 () ValueCell!8973)

(assert (=> b!909899 (= condMapEmpty!30082 (= (arr!25872 _values!1152) ((as const (Array (_ BitVec 32) ValueCell!8973)) mapDefault!30082)))))

(declare-fun mapNonEmpty!30082 () Bool)

(declare-fun tp!57742 () Bool)

(assert (=> mapNonEmpty!30082 (= mapRes!30082 (and tp!57742 e!510145))))

(declare-fun mapRest!30082 () (Array (_ BitVec 32) ValueCell!8973))

(declare-fun mapValue!30082 () ValueCell!8973)

(declare-fun mapKey!30082 () (_ BitVec 32))

(assert (=> mapNonEmpty!30082 (= (arr!25872 _values!1152) (store mapRest!30082 mapKey!30082 mapValue!30082))))

(declare-fun b!909895 () Bool)

(declare-fun res!614161 () Bool)

(assert (=> b!909895 (=> (not res!614161) (not e!510143))))

(assert (=> b!909895 (= res!614161 (and (= (size!26332 _values!1152) (bvadd #b00000000000000000000000000000001 mask!1756)) (= (size!26331 _keys!1386) (size!26332 _values!1152)) (bvsge mask!1756 #b00000000000000000000000000000000) (bvsge extraKeys!1073 #b00000000000000000000000000000000) (bvsle extraKeys!1073 #b00000000000000000000000000000011)))))

(declare-fun res!614160 () Bool)

(assert (=> start!77976 (=> (not res!614160) (not e!510143))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!77976 (= res!614160 (validMask!0 mask!1756))))

(assert (=> start!77976 e!510143))

(declare-fun array_inv!20214 (array!53838) Bool)

(assert (=> start!77976 (and (array_inv!20214 _values!1152) e!510144)))

(assert (=> start!77976 tp!57741))

(assert (=> start!77976 true))

(assert (=> start!77976 tp_is_empty!18909))

(declare-fun array_inv!20215 (array!53836) Bool)

(assert (=> start!77976 (array_inv!20215 _keys!1386)))

(assert (= (and start!77976 res!614160) b!909895))

(assert (= (and b!909895 res!614161) b!909897))

(assert (= (and b!909897 res!614158) b!909894))

(assert (= (and b!909894 res!614159) b!909896))

(assert (= (and b!909899 condMapEmpty!30082) mapIsEmpty!30082))

(assert (= (and b!909899 (not condMapEmpty!30082)) mapNonEmpty!30082))

(get-info :version)

(assert (= (and mapNonEmpty!30082 ((_ is ValueCellFull!8973) mapValue!30082)) b!909898))

(assert (= (and b!909899 ((_ is ValueCellFull!8973) mapDefault!30082)) b!909893))

(assert (= start!77976 b!909899))

(declare-fun m!845097 () Bool)

(assert (=> start!77976 m!845097))

(declare-fun m!845099 () Bool)

(assert (=> start!77976 m!845099))

(declare-fun m!845101 () Bool)

(assert (=> start!77976 m!845101))

(declare-fun m!845103 () Bool)

(assert (=> b!909894 m!845103))

(declare-fun m!845105 () Bool)

(assert (=> mapNonEmpty!30082 m!845105))

(declare-fun m!845107 () Bool)

(assert (=> b!909897 m!845107))

(declare-fun m!845109 () Bool)

(assert (=> b!909896 m!845109))

(assert (=> b!909896 m!845109))

(declare-fun m!845111 () Bool)

(assert (=> b!909896 m!845111))

(check-sat (not start!77976) (not b!909896) b_and!27079 (not b_next!16491) (not mapNonEmpty!30082) (not b!909894) (not b!909897) tp_is_empty!18909)
(check-sat b_and!27079 (not b_next!16491))
