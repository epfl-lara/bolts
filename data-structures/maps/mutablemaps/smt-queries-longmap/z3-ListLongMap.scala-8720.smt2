; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!105830 () Bool)

(assert start!105830)

(declare-fun b_free!27357 () Bool)

(declare-fun b_next!27357 () Bool)

(assert (=> start!105830 (= b_free!27357 (not b_next!27357))))

(declare-fun tp!95600 () Bool)

(declare-fun b_and!45263 () Bool)

(assert (=> start!105830 (= tp!95600 b_and!45263)))

(declare-fun b!1260130 () Bool)

(declare-fun e!717045 () Bool)

(assert (=> b!1260130 (= e!717045 true)))

(declare-datatypes ((V!48377 0))(
  ( (V!48378 (val!16192 Int)) )
))
(declare-datatypes ((tuple2!21096 0))(
  ( (tuple2!21097 (_1!10558 (_ BitVec 64)) (_2!10558 V!48377)) )
))
(declare-datatypes ((List!28319 0))(
  ( (Nil!28316) (Cons!28315 (h!29524 tuple2!21096) (t!41823 List!28319)) )
))
(declare-datatypes ((ListLongMap!18981 0))(
  ( (ListLongMap!18982 (toList!9506 List!28319)) )
))
(declare-fun lt!570825 () ListLongMap!18981)

(declare-fun lt!570821 () ListLongMap!18981)

(declare-fun -!2135 (ListLongMap!18981 (_ BitVec 64)) ListLongMap!18981)

(assert (=> b!1260130 (= lt!570825 (-!2135 lt!570821 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!570824 () ListLongMap!18981)

(declare-fun lt!570822 () ListLongMap!18981)

(assert (=> b!1260130 (= (-!2135 lt!570824 #b1000000000000000000000000000000000000000000000000000000000000000) lt!570822)))

(declare-datatypes ((Unit!41979 0))(
  ( (Unit!41980) )
))
(declare-fun lt!570826 () Unit!41979)

(declare-fun minValueBefore!43 () V!48377)

(declare-fun addThenRemoveForNewKeyIsSame!360 (ListLongMap!18981 (_ BitVec 64) V!48377) Unit!41979)

(assert (=> b!1260130 (= lt!570826 (addThenRemoveForNewKeyIsSame!360 lt!570822 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!43))))

(declare-fun e!717049 () Bool)

(assert (=> b!1260130 e!717049))

(declare-fun res!839893 () Bool)

(assert (=> b!1260130 (=> (not res!839893) (not e!717049))))

(assert (=> b!1260130 (= res!839893 (= lt!570821 lt!570824))))

(declare-fun +!4203 (ListLongMap!18981 tuple2!21096) ListLongMap!18981)

(assert (=> b!1260130 (= lt!570824 (+!4203 lt!570822 (tuple2!21097 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!43)))))

(declare-fun lt!570820 () ListLongMap!18981)

(declare-fun lt!570827 () tuple2!21096)

(assert (=> b!1260130 (= lt!570822 (+!4203 lt!570820 lt!570827))))

(declare-fun zeroValue!871 () V!48377)

(assert (=> b!1260130 (= lt!570827 (tuple2!21097 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!871))))

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun defaultEntry!922 () Int)

(declare-fun minValueAfter!43 () V!48377)

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(declare-datatypes ((array!82127 0))(
  ( (array!82128 (arr!39613 (Array (_ BitVec 32) (_ BitVec 64))) (size!40150 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!82127)

(declare-datatypes ((ValueCell!15366 0))(
  ( (ValueCellFull!15366 (v!18895 V!48377)) (EmptyCell!15366) )
))
(declare-datatypes ((array!82129 0))(
  ( (array!82130 (arr!39614 (Array (_ BitVec 32) ValueCell!15366)) (size!40151 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!82129)

(declare-fun lt!570828 () ListLongMap!18981)

(declare-fun getCurrentListMap!4639 (array!82127 array!82129 (_ BitVec 32) (_ BitVec 32) V!48377 V!48377 (_ BitVec 32) Int) ListLongMap!18981)

(assert (=> b!1260130 (= lt!570828 (getCurrentListMap!4639 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(assert (=> b!1260130 (= lt!570821 (getCurrentListMap!4639 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun b!1260131 () Bool)

(declare-fun e!717050 () Bool)

(assert (=> b!1260131 (= e!717050 (not e!717045))))

(declare-fun res!839889 () Bool)

(assert (=> b!1260131 (=> res!839889 e!717045)))

(assert (=> b!1260131 (= res!839889 (or (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun lt!570823 () ListLongMap!18981)

(assert (=> b!1260131 (= lt!570820 lt!570823)))

(declare-fun lt!570819 () Unit!41979)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!1167 (array!82127 array!82129 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!48377 V!48377 V!48377 V!48377 (_ BitVec 32) Int) Unit!41979)

(assert (=> b!1260131 (= lt!570819 (lemmaNoChangeToArrayThenSameMapNoExtras!1167 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 extraKeysAfter!63 zeroValue!871 zeroValue!871 minValueBefore!43 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun getCurrentListMapNoExtraKeys!5849 (array!82127 array!82129 (_ BitVec 32) (_ BitVec 32) V!48377 V!48377 (_ BitVec 32) Int) ListLongMap!18981)

(assert (=> b!1260131 (= lt!570823 (getCurrentListMapNoExtraKeys!5849 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(assert (=> b!1260131 (= lt!570820 (getCurrentListMapNoExtraKeys!5849 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun b!1260132 () Bool)

(declare-fun res!839891 () Bool)

(assert (=> b!1260132 (=> (not res!839891) (not e!717050))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!82127 (_ BitVec 32)) Bool)

(assert (=> b!1260132 (= res!839891 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466))))

(declare-fun mapIsEmpty!50188 () Bool)

(declare-fun mapRes!50188 () Bool)

(assert (=> mapIsEmpty!50188 mapRes!50188))

(declare-fun b!1260133 () Bool)

(declare-fun res!839890 () Bool)

(assert (=> b!1260133 (=> (not res!839890) (not e!717050))))

(declare-datatypes ((List!28320 0))(
  ( (Nil!28317) (Cons!28316 (h!29525 (_ BitVec 64)) (t!41824 List!28320)) )
))
(declare-fun arrayNoDuplicates!0 (array!82127 (_ BitVec 32) List!28320) Bool)

(assert (=> b!1260133 (= res!839890 (arrayNoDuplicates!0 _keys!1118 #b00000000000000000000000000000000 Nil!28317))))

(declare-fun b!1260134 () Bool)

(declare-fun e!717051 () Bool)

(declare-fun tp_is_empty!32259 () Bool)

(assert (=> b!1260134 (= e!717051 tp_is_empty!32259)))

(declare-fun mapNonEmpty!50188 () Bool)

(declare-fun tp!95601 () Bool)

(declare-fun e!717047 () Bool)

(assert (=> mapNonEmpty!50188 (= mapRes!50188 (and tp!95601 e!717047))))

(declare-fun mapValue!50188 () ValueCell!15366)

(declare-fun mapRest!50188 () (Array (_ BitVec 32) ValueCell!15366))

(declare-fun mapKey!50188 () (_ BitVec 32))

(assert (=> mapNonEmpty!50188 (= (arr!39614 _values!914) (store mapRest!50188 mapKey!50188 mapValue!50188))))

(declare-fun b!1260136 () Bool)

(assert (=> b!1260136 (= e!717049 (= lt!570828 (+!4203 lt!570823 lt!570827)))))

(declare-fun b!1260137 () Bool)

(declare-fun res!839892 () Bool)

(assert (=> b!1260137 (=> (not res!839892) (not e!717050))))

(assert (=> b!1260137 (= res!839892 (and (= (size!40151 _values!914) (bvadd #b00000000000000000000000000000001 mask!1466)) (= (size!40150 _keys!1118) (size!40151 _values!914)) (bvsge mask!1466 #b00000000000000000000000000000000) (bvsge extraKeysBefore!71 #b00000000000000000000000000000000) (bvsle extraKeysBefore!71 #b00000000000000000000000000000011) (bvsge extraKeysAfter!63 #b00000000000000000000000000000000) (bvsle extraKeysAfter!63 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) (bvand extraKeysAfter!63 #b00000000000000000000000000000001)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1260138 () Bool)

(declare-fun e!717046 () Bool)

(assert (=> b!1260138 (= e!717046 (and e!717051 mapRes!50188))))

(declare-fun condMapEmpty!50188 () Bool)

(declare-fun mapDefault!50188 () ValueCell!15366)

(assert (=> b!1260138 (= condMapEmpty!50188 (= (arr!39614 _values!914) ((as const (Array (_ BitVec 32) ValueCell!15366)) mapDefault!50188)))))

(declare-fun res!839894 () Bool)

(assert (=> start!105830 (=> (not res!839894) (not e!717050))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!105830 (= res!839894 (validMask!0 mask!1466))))

(assert (=> start!105830 e!717050))

(assert (=> start!105830 true))

(assert (=> start!105830 tp!95600))

(assert (=> start!105830 tp_is_empty!32259))

(declare-fun array_inv!30109 (array!82127) Bool)

(assert (=> start!105830 (array_inv!30109 _keys!1118)))

(declare-fun array_inv!30110 (array!82129) Bool)

(assert (=> start!105830 (and (array_inv!30110 _values!914) e!717046)))

(declare-fun b!1260135 () Bool)

(assert (=> b!1260135 (= e!717047 tp_is_empty!32259)))

(assert (= (and start!105830 res!839894) b!1260137))

(assert (= (and b!1260137 res!839892) b!1260132))

(assert (= (and b!1260132 res!839891) b!1260133))

(assert (= (and b!1260133 res!839890) b!1260131))

(assert (= (and b!1260131 (not res!839889)) b!1260130))

(assert (= (and b!1260130 res!839893) b!1260136))

(assert (= (and b!1260138 condMapEmpty!50188) mapIsEmpty!50188))

(assert (= (and b!1260138 (not condMapEmpty!50188)) mapNonEmpty!50188))

(get-info :version)

(assert (= (and mapNonEmpty!50188 ((_ is ValueCellFull!15366) mapValue!50188)) b!1260135))

(assert (= (and b!1260138 ((_ is ValueCellFull!15366) mapDefault!50188)) b!1260134))

(assert (= start!105830 b!1260138))

(declare-fun m!1160825 () Bool)

(assert (=> b!1260132 m!1160825))

(declare-fun m!1160827 () Bool)

(assert (=> mapNonEmpty!50188 m!1160827))

(declare-fun m!1160829 () Bool)

(assert (=> b!1260130 m!1160829))

(declare-fun m!1160831 () Bool)

(assert (=> b!1260130 m!1160831))

(declare-fun m!1160833 () Bool)

(assert (=> b!1260130 m!1160833))

(declare-fun m!1160835 () Bool)

(assert (=> b!1260130 m!1160835))

(declare-fun m!1160837 () Bool)

(assert (=> b!1260130 m!1160837))

(declare-fun m!1160839 () Bool)

(assert (=> b!1260130 m!1160839))

(declare-fun m!1160841 () Bool)

(assert (=> b!1260130 m!1160841))

(declare-fun m!1160843 () Bool)

(assert (=> b!1260133 m!1160843))

(declare-fun m!1160845 () Bool)

(assert (=> b!1260136 m!1160845))

(declare-fun m!1160847 () Bool)

(assert (=> start!105830 m!1160847))

(declare-fun m!1160849 () Bool)

(assert (=> start!105830 m!1160849))

(declare-fun m!1160851 () Bool)

(assert (=> start!105830 m!1160851))

(declare-fun m!1160853 () Bool)

(assert (=> b!1260131 m!1160853))

(declare-fun m!1160855 () Bool)

(assert (=> b!1260131 m!1160855))

(declare-fun m!1160857 () Bool)

(assert (=> b!1260131 m!1160857))

(check-sat (not start!105830) b_and!45263 (not b!1260133) (not b!1260131) tp_is_empty!32259 (not mapNonEmpty!50188) (not b!1260132) (not b!1260136) (not b_next!27357) (not b!1260130))
(check-sat b_and!45263 (not b_next!27357))
