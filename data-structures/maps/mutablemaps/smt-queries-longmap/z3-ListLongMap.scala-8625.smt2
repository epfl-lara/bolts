; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!105076 () Bool)

(assert start!105076)

(declare-fun b_free!26787 () Bool)

(declare-fun b_next!26787 () Bool)

(assert (=> start!105076 (= b_free!26787 (not b_next!26787))))

(declare-fun tp!93860 () Bool)

(declare-fun b_and!44593 () Bool)

(assert (=> start!105076 (= tp!93860 b_and!44593)))

(declare-fun b!1251787 () Bool)

(declare-fun e!710925 () Bool)

(declare-fun e!710923 () Bool)

(declare-fun mapRes!49303 () Bool)

(assert (=> b!1251787 (= e!710925 (and e!710923 mapRes!49303))))

(declare-fun condMapEmpty!49303 () Bool)

(declare-datatypes ((V!47617 0))(
  ( (V!47618 (val!15907 Int)) )
))
(declare-datatypes ((ValueCell!15081 0))(
  ( (ValueCellFull!15081 (v!18605 V!47617)) (EmptyCell!15081) )
))
(declare-datatypes ((array!81021 0))(
  ( (array!81022 (arr!39070 (Array (_ BitVec 32) ValueCell!15081)) (size!39607 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!81021)

(declare-fun mapDefault!49303 () ValueCell!15081)

(assert (=> b!1251787 (= condMapEmpty!49303 (= (arr!39070 _values!914) ((as const (Array (_ BitVec 32) ValueCell!15081)) mapDefault!49303)))))

(declare-fun mapIsEmpty!49303 () Bool)

(assert (=> mapIsEmpty!49303 mapRes!49303))

(declare-fun res!834952 () Bool)

(declare-fun e!710922 () Bool)

(assert (=> start!105076 (=> (not res!834952) (not e!710922))))

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!105076 (= res!834952 (validMask!0 mask!1466))))

(assert (=> start!105076 e!710922))

(assert (=> start!105076 true))

(assert (=> start!105076 tp!93860))

(declare-fun tp_is_empty!31689 () Bool)

(assert (=> start!105076 tp_is_empty!31689))

(declare-datatypes ((array!81023 0))(
  ( (array!81024 (arr!39071 (Array (_ BitVec 32) (_ BitVec 64))) (size!39608 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!81023)

(declare-fun array_inv!29733 (array!81023) Bool)

(assert (=> start!105076 (array_inv!29733 _keys!1118)))

(declare-fun array_inv!29734 (array!81021) Bool)

(assert (=> start!105076 (and (array_inv!29734 _values!914) e!710925)))

(declare-fun b!1251788 () Bool)

(declare-fun res!834951 () Bool)

(assert (=> b!1251788 (=> (not res!834951) (not e!710922))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!81023 (_ BitVec 32)) Bool)

(assert (=> b!1251788 (= res!834951 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466))))

(declare-fun b!1251789 () Bool)

(assert (=> b!1251789 (= e!710923 tp_is_empty!31689)))

(declare-fun mapNonEmpty!49303 () Bool)

(declare-fun tp!93861 () Bool)

(declare-fun e!710921 () Bool)

(assert (=> mapNonEmpty!49303 (= mapRes!49303 (and tp!93861 e!710921))))

(declare-fun mapKey!49303 () (_ BitVec 32))

(declare-fun mapRest!49303 () (Array (_ BitVec 32) ValueCell!15081))

(declare-fun mapValue!49303 () ValueCell!15081)

(assert (=> mapNonEmpty!49303 (= (arr!39070 _values!914) (store mapRest!49303 mapKey!49303 mapValue!49303))))

(declare-fun b!1251790 () Bool)

(declare-fun res!834954 () Bool)

(assert (=> b!1251790 (=> (not res!834954) (not e!710922))))

(declare-datatypes ((List!27908 0))(
  ( (Nil!27905) (Cons!27904 (h!29113 (_ BitVec 64)) (t!41392 List!27908)) )
))
(declare-fun arrayNoDuplicates!0 (array!81023 (_ BitVec 32) List!27908) Bool)

(assert (=> b!1251790 (= res!834954 (arrayNoDuplicates!0 _keys!1118 #b00000000000000000000000000000000 Nil!27905))))

(declare-fun b!1251791 () Bool)

(declare-fun res!834953 () Bool)

(assert (=> b!1251791 (=> (not res!834953) (not e!710922))))

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(assert (=> b!1251791 (= res!834953 (and (= (size!39607 _values!914) (bvadd #b00000000000000000000000000000001 mask!1466)) (= (size!39608 _keys!1118) (size!39607 _values!914)) (bvsge mask!1466 #b00000000000000000000000000000000) (bvsge extraKeysBefore!71 #b00000000000000000000000000000000) (bvsle extraKeysBefore!71 #b00000000000000000000000000000011) (bvsge extraKeysAfter!63 #b00000000000000000000000000000000) (bvsle extraKeysAfter!63 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) (bvand extraKeysAfter!63 #b00000000000000000000000000000001)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1251792 () Bool)

(assert (=> b!1251792 (= e!710921 tp_is_empty!31689)))

(declare-fun b!1251793 () Bool)

(assert (=> b!1251793 (= e!710922 (not true))))

(declare-datatypes ((tuple2!20658 0))(
  ( (tuple2!20659 (_1!10339 (_ BitVec 64)) (_2!10339 V!47617)) )
))
(declare-datatypes ((List!27909 0))(
  ( (Nil!27906) (Cons!27905 (h!29114 tuple2!20658) (t!41393 List!27909)) )
))
(declare-datatypes ((ListLongMap!18543 0))(
  ( (ListLongMap!18544 (toList!9287 List!27909)) )
))
(declare-fun lt!565022 () ListLongMap!18543)

(declare-fun lt!565021 () ListLongMap!18543)

(assert (=> b!1251793 (= lt!565022 lt!565021)))

(declare-fun defaultEntry!922 () Int)

(declare-fun minValueAfter!43 () V!47617)

(declare-fun zeroValue!871 () V!47617)

(declare-datatypes ((Unit!41551 0))(
  ( (Unit!41552) )
))
(declare-fun lt!565023 () Unit!41551)

(declare-fun minValueBefore!43 () V!47617)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!978 (array!81023 array!81021 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!47617 V!47617 V!47617 V!47617 (_ BitVec 32) Int) Unit!41551)

(assert (=> b!1251793 (= lt!565023 (lemmaNoChangeToArrayThenSameMapNoExtras!978 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 extraKeysAfter!63 zeroValue!871 zeroValue!871 minValueBefore!43 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun getCurrentListMapNoExtraKeys!5660 (array!81023 array!81021 (_ BitVec 32) (_ BitVec 32) V!47617 V!47617 (_ BitVec 32) Int) ListLongMap!18543)

(assert (=> b!1251793 (= lt!565021 (getCurrentListMapNoExtraKeys!5660 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(assert (=> b!1251793 (= lt!565022 (getCurrentListMapNoExtraKeys!5660 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(assert (= (and start!105076 res!834952) b!1251791))

(assert (= (and b!1251791 res!834953) b!1251788))

(assert (= (and b!1251788 res!834951) b!1251790))

(assert (= (and b!1251790 res!834954) b!1251793))

(assert (= (and b!1251787 condMapEmpty!49303) mapIsEmpty!49303))

(assert (= (and b!1251787 (not condMapEmpty!49303)) mapNonEmpty!49303))

(get-info :version)

(assert (= (and mapNonEmpty!49303 ((_ is ValueCellFull!15081) mapValue!49303)) b!1251792))

(assert (= (and b!1251787 ((_ is ValueCellFull!15081) mapDefault!49303)) b!1251789))

(assert (= start!105076 b!1251787))

(declare-fun m!1152545 () Bool)

(assert (=> b!1251790 m!1152545))

(declare-fun m!1152547 () Bool)

(assert (=> b!1251788 m!1152547))

(declare-fun m!1152549 () Bool)

(assert (=> mapNonEmpty!49303 m!1152549))

(declare-fun m!1152551 () Bool)

(assert (=> b!1251793 m!1152551))

(declare-fun m!1152553 () Bool)

(assert (=> b!1251793 m!1152553))

(declare-fun m!1152555 () Bool)

(assert (=> b!1251793 m!1152555))

(declare-fun m!1152557 () Bool)

(assert (=> start!105076 m!1152557))

(declare-fun m!1152559 () Bool)

(assert (=> start!105076 m!1152559))

(declare-fun m!1152561 () Bool)

(assert (=> start!105076 m!1152561))

(check-sat (not b!1251793) (not b!1251790) (not mapNonEmpty!49303) (not start!105076) (not b_next!26787) b_and!44593 (not b!1251788) tp_is_empty!31689)
(check-sat b_and!44593 (not b_next!26787))
