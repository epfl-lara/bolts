; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!104988 () Bool)

(assert start!104988)

(declare-fun b_free!26721 () Bool)

(declare-fun b_next!26721 () Bool)

(assert (=> start!104988 (= b_free!26721 (not b_next!26721))))

(declare-fun tp!93659 () Bool)

(declare-fun b_and!44517 () Bool)

(assert (=> start!104988 (= tp!93659 b_and!44517)))

(declare-fun res!834346 () Bool)

(declare-fun e!710178 () Bool)

(assert (=> start!104988 (=> (not res!834346) (not e!710178))))

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!104988 (= res!834346 (validMask!0 mask!1466))))

(assert (=> start!104988 e!710178))

(assert (=> start!104988 true))

(assert (=> start!104988 tp!93659))

(declare-fun tp_is_empty!31623 () Bool)

(assert (=> start!104988 tp_is_empty!31623))

(declare-datatypes ((array!80893 0))(
  ( (array!80894 (arr!39007 (Array (_ BitVec 32) (_ BitVec 64))) (size!39544 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!80893)

(declare-fun array_inv!29689 (array!80893) Bool)

(assert (=> start!104988 (array_inv!29689 _keys!1118)))

(declare-datatypes ((V!47529 0))(
  ( (V!47530 (val!15874 Int)) )
))
(declare-datatypes ((ValueCell!15048 0))(
  ( (ValueCellFull!15048 (v!18571 V!47529)) (EmptyCell!15048) )
))
(declare-datatypes ((array!80895 0))(
  ( (array!80896 (arr!39008 (Array (_ BitVec 32) ValueCell!15048)) (size!39545 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!80895)

(declare-fun e!710180 () Bool)

(declare-fun array_inv!29690 (array!80895) Bool)

(assert (=> start!104988 (and (array_inv!29690 _values!914) e!710180)))

(declare-fun mapNonEmpty!49201 () Bool)

(declare-fun mapRes!49201 () Bool)

(declare-fun tp!93660 () Bool)

(declare-fun e!710175 () Bool)

(assert (=> mapNonEmpty!49201 (= mapRes!49201 (and tp!93660 e!710175))))

(declare-fun mapValue!49201 () ValueCell!15048)

(declare-fun mapKey!49201 () (_ BitVec 32))

(declare-fun mapRest!49201 () (Array (_ BitVec 32) ValueCell!15048))

(assert (=> mapNonEmpty!49201 (= (arr!39008 _values!914) (store mapRest!49201 mapKey!49201 mapValue!49201))))

(declare-fun b!1250785 () Bool)

(assert (=> b!1250785 (= e!710175 tp_is_empty!31623)))

(declare-fun b!1250786 () Bool)

(declare-fun res!834344 () Bool)

(assert (=> b!1250786 (=> (not res!834344) (not e!710178))))

(declare-datatypes ((List!27858 0))(
  ( (Nil!27855) (Cons!27854 (h!29063 (_ BitVec 64)) (t!41340 List!27858)) )
))
(declare-fun arrayNoDuplicates!0 (array!80893 (_ BitVec 32) List!27858) Bool)

(assert (=> b!1250786 (= res!834344 (arrayNoDuplicates!0 _keys!1118 #b00000000000000000000000000000000 Nil!27855))))

(declare-fun b!1250787 () Bool)

(declare-fun e!710179 () Bool)

(assert (=> b!1250787 (= e!710179 tp_is_empty!31623)))

(declare-fun mapIsEmpty!49201 () Bool)

(assert (=> mapIsEmpty!49201 mapRes!49201))

(declare-fun b!1250788 () Bool)

(declare-fun res!834347 () Bool)

(assert (=> b!1250788 (=> (not res!834347) (not e!710178))))

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(assert (=> b!1250788 (= res!834347 (and (= (size!39545 _values!914) (bvadd #b00000000000000000000000000000001 mask!1466)) (= (size!39544 _keys!1118) (size!39545 _values!914)) (bvsge mask!1466 #b00000000000000000000000000000000) (bvsge extraKeysBefore!71 #b00000000000000000000000000000000) (bvsle extraKeysBefore!71 #b00000000000000000000000000000011) (bvsge extraKeysAfter!63 #b00000000000000000000000000000000) (bvsle extraKeysAfter!63 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) (bvand extraKeysAfter!63 #b00000000000000000000000000000001)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1250789 () Bool)

(declare-fun res!834343 () Bool)

(assert (=> b!1250789 (=> (not res!834343) (not e!710178))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!80893 (_ BitVec 32)) Bool)

(assert (=> b!1250789 (= res!834343 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466))))

(declare-fun b!1250790 () Bool)

(declare-fun e!710174 () Bool)

(declare-fun e!710176 () Bool)

(assert (=> b!1250790 (= e!710174 e!710176)))

(declare-fun res!834345 () Bool)

(assert (=> b!1250790 (=> res!834345 e!710176)))

(declare-datatypes ((tuple2!20602 0))(
  ( (tuple2!20603 (_1!10311 (_ BitVec 64)) (_2!10311 V!47529)) )
))
(declare-datatypes ((List!27859 0))(
  ( (Nil!27856) (Cons!27855 (h!29064 tuple2!20602) (t!41341 List!27859)) )
))
(declare-datatypes ((ListLongMap!18487 0))(
  ( (ListLongMap!18488 (toList!9259 List!27859)) )
))
(declare-fun lt!564452 () ListLongMap!18487)

(declare-fun contains!7511 (ListLongMap!18487 (_ BitVec 64)) Bool)

(assert (=> b!1250790 (= res!834345 (contains!7511 lt!564452 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun zeroValue!871 () V!47529)

(declare-fun minValueBefore!43 () V!47529)

(declare-fun defaultEntry!922 () Int)

(declare-fun getCurrentListMap!4476 (array!80893 array!80895 (_ BitVec 32) (_ BitVec 32) V!47529 V!47529 (_ BitVec 32) Int) ListLongMap!18487)

(assert (=> b!1250790 (= lt!564452 (getCurrentListMap!4476 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun b!1250791 () Bool)

(assert (=> b!1250791 (= e!710178 (not e!710174))))

(declare-fun res!834342 () Bool)

(assert (=> b!1250791 (=> res!834342 e!710174)))

(assert (=> b!1250791 (= res!834342 (or (not (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeysBefore!71 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun lt!564448 () ListLongMap!18487)

(declare-fun lt!564449 () ListLongMap!18487)

(assert (=> b!1250791 (= lt!564448 lt!564449)))

(declare-fun minValueAfter!43 () V!47529)

(declare-datatypes ((Unit!41497 0))(
  ( (Unit!41498) )
))
(declare-fun lt!564450 () Unit!41497)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!956 (array!80893 array!80895 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!47529 V!47529 V!47529 V!47529 (_ BitVec 32) Int) Unit!41497)

(assert (=> b!1250791 (= lt!564450 (lemmaNoChangeToArrayThenSameMapNoExtras!956 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 extraKeysAfter!63 zeroValue!871 zeroValue!871 minValueBefore!43 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun getCurrentListMapNoExtraKeys!5638 (array!80893 array!80895 (_ BitVec 32) (_ BitVec 32) V!47529 V!47529 (_ BitVec 32) Int) ListLongMap!18487)

(assert (=> b!1250791 (= lt!564449 (getCurrentListMapNoExtraKeys!5638 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(assert (=> b!1250791 (= lt!564448 (getCurrentListMapNoExtraKeys!5638 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun b!1250792 () Bool)

(assert (=> b!1250792 (= e!710180 (and e!710179 mapRes!49201))))

(declare-fun condMapEmpty!49201 () Bool)

(declare-fun mapDefault!49201 () ValueCell!15048)

(assert (=> b!1250792 (= condMapEmpty!49201 (= (arr!39008 _values!914) ((as const (Array (_ BitVec 32) ValueCell!15048)) mapDefault!49201)))))

(declare-fun b!1250793 () Bool)

(assert (=> b!1250793 (= e!710176 true)))

(declare-fun -!2024 (ListLongMap!18487 (_ BitVec 64)) ListLongMap!18487)

(assert (=> b!1250793 (= (-!2024 lt!564452 #b1000000000000000000000000000000000000000000000000000000000000000) lt!564452)))

(declare-fun lt!564451 () Unit!41497)

(declare-fun removeNotPresentStillSame!91 (ListLongMap!18487 (_ BitVec 64)) Unit!41497)

(assert (=> b!1250793 (= lt!564451 (removeNotPresentStillSame!91 lt!564452 #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and start!104988 res!834346) b!1250788))

(assert (= (and b!1250788 res!834347) b!1250789))

(assert (= (and b!1250789 res!834343) b!1250786))

(assert (= (and b!1250786 res!834344) b!1250791))

(assert (= (and b!1250791 (not res!834342)) b!1250790))

(assert (= (and b!1250790 (not res!834345)) b!1250793))

(assert (= (and b!1250792 condMapEmpty!49201) mapIsEmpty!49201))

(assert (= (and b!1250792 (not condMapEmpty!49201)) mapNonEmpty!49201))

(get-info :version)

(assert (= (and mapNonEmpty!49201 ((_ is ValueCellFull!15048) mapValue!49201)) b!1250785))

(assert (= (and b!1250792 ((_ is ValueCellFull!15048) mapDefault!49201)) b!1250787))

(assert (= start!104988 b!1250792))

(declare-fun m!1151617 () Bool)

(assert (=> b!1250786 m!1151617))

(declare-fun m!1151619 () Bool)

(assert (=> mapNonEmpty!49201 m!1151619))

(declare-fun m!1151621 () Bool)

(assert (=> b!1250791 m!1151621))

(declare-fun m!1151623 () Bool)

(assert (=> b!1250791 m!1151623))

(declare-fun m!1151625 () Bool)

(assert (=> b!1250791 m!1151625))

(declare-fun m!1151627 () Bool)

(assert (=> b!1250790 m!1151627))

(declare-fun m!1151629 () Bool)

(assert (=> b!1250790 m!1151629))

(declare-fun m!1151631 () Bool)

(assert (=> b!1250793 m!1151631))

(declare-fun m!1151633 () Bool)

(assert (=> b!1250793 m!1151633))

(declare-fun m!1151635 () Bool)

(assert (=> start!104988 m!1151635))

(declare-fun m!1151637 () Bool)

(assert (=> start!104988 m!1151637))

(declare-fun m!1151639 () Bool)

(assert (=> start!104988 m!1151639))

(declare-fun m!1151641 () Bool)

(assert (=> b!1250789 m!1151641))

(check-sat b_and!44517 (not b!1250793) (not mapNonEmpty!49201) (not b!1250791) (not b!1250786) (not start!104988) (not b!1250789) (not b_next!26721) tp_is_empty!31623 (not b!1250790))
(check-sat b_and!44517 (not b_next!26721))
