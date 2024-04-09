; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!105024 () Bool)

(assert start!105024)

(declare-fun b_free!26757 () Bool)

(declare-fun b_next!26757 () Bool)

(assert (=> start!105024 (= b_free!26757 (not b_next!26757))))

(declare-fun tp!93767 () Bool)

(declare-fun b_and!44553 () Bool)

(assert (=> start!105024 (= tp!93767 b_and!44553)))

(declare-fun b!1251271 () Bool)

(declare-fun e!710555 () Bool)

(assert (=> b!1251271 (= e!710555 true)))

(declare-datatypes ((V!47577 0))(
  ( (V!47578 (val!15892 Int)) )
))
(declare-datatypes ((tuple2!20636 0))(
  ( (tuple2!20637 (_1!10328 (_ BitVec 64)) (_2!10328 V!47577)) )
))
(declare-datatypes ((List!27888 0))(
  ( (Nil!27885) (Cons!27884 (h!29093 tuple2!20636) (t!41370 List!27888)) )
))
(declare-datatypes ((ListLongMap!18521 0))(
  ( (ListLongMap!18522 (toList!9276 List!27888)) )
))
(declare-fun lt!564718 () ListLongMap!18521)

(declare-fun -!2035 (ListLongMap!18521 (_ BitVec 64)) ListLongMap!18521)

(assert (=> b!1251271 (= (-!2035 lt!564718 #b1000000000000000000000000000000000000000000000000000000000000000) lt!564718)))

(declare-datatypes ((Unit!41527 0))(
  ( (Unit!41528) )
))
(declare-fun lt!564722 () Unit!41527)

(declare-fun removeNotPresentStillSame!102 (ListLongMap!18521 (_ BitVec 64)) Unit!41527)

(assert (=> b!1251271 (= lt!564722 (removeNotPresentStillSame!102 lt!564718 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1251273 () Bool)

(declare-fun res!834670 () Bool)

(declare-fun e!710556 () Bool)

(assert (=> b!1251273 (=> (not res!834670) (not e!710556))))

(declare-datatypes ((array!80963 0))(
  ( (array!80964 (arr!39042 (Array (_ BitVec 32) (_ BitVec 64))) (size!39579 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!80963)

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!80963 (_ BitVec 32)) Bool)

(assert (=> b!1251273 (= res!834670 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466))))

(declare-fun b!1251274 () Bool)

(declare-fun e!710557 () Bool)

(assert (=> b!1251274 (= e!710557 e!710555)))

(declare-fun res!834669 () Bool)

(assert (=> b!1251274 (=> res!834669 e!710555)))

(declare-fun contains!7526 (ListLongMap!18521 (_ BitVec 64)) Bool)

(assert (=> b!1251274 (= res!834669 (contains!7526 lt!564718 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(declare-fun zeroValue!871 () V!47577)

(declare-datatypes ((ValueCell!15066 0))(
  ( (ValueCellFull!15066 (v!18589 V!47577)) (EmptyCell!15066) )
))
(declare-datatypes ((array!80965 0))(
  ( (array!80966 (arr!39043 (Array (_ BitVec 32) ValueCell!15066)) (size!39580 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!80965)

(declare-fun minValueBefore!43 () V!47577)

(declare-fun defaultEntry!922 () Int)

(declare-fun getCurrentListMap!4491 (array!80963 array!80965 (_ BitVec 32) (_ BitVec 32) V!47577 V!47577 (_ BitVec 32) Int) ListLongMap!18521)

(assert (=> b!1251274 (= lt!564718 (getCurrentListMap!4491 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun b!1251275 () Bool)

(declare-fun e!710558 () Bool)

(declare-fun tp_is_empty!31659 () Bool)

(assert (=> b!1251275 (= e!710558 tp_is_empty!31659)))

(declare-fun b!1251276 () Bool)

(declare-fun res!834666 () Bool)

(assert (=> b!1251276 (=> (not res!834666) (not e!710556))))

(declare-datatypes ((List!27889 0))(
  ( (Nil!27886) (Cons!27885 (h!29094 (_ BitVec 64)) (t!41371 List!27889)) )
))
(declare-fun arrayNoDuplicates!0 (array!80963 (_ BitVec 32) List!27889) Bool)

(assert (=> b!1251276 (= res!834666 (arrayNoDuplicates!0 _keys!1118 #b00000000000000000000000000000000 Nil!27886))))

(declare-fun b!1251277 () Bool)

(declare-fun e!710553 () Bool)

(assert (=> b!1251277 (= e!710553 tp_is_empty!31659)))

(declare-fun mapIsEmpty!49255 () Bool)

(declare-fun mapRes!49255 () Bool)

(assert (=> mapIsEmpty!49255 mapRes!49255))

(declare-fun b!1251278 () Bool)

(declare-fun e!710552 () Bool)

(assert (=> b!1251278 (= e!710552 (and e!710558 mapRes!49255))))

(declare-fun condMapEmpty!49255 () Bool)

(declare-fun mapDefault!49255 () ValueCell!15066)

(assert (=> b!1251278 (= condMapEmpty!49255 (= (arr!39043 _values!914) ((as const (Array (_ BitVec 32) ValueCell!15066)) mapDefault!49255)))))

(declare-fun b!1251272 () Bool)

(declare-fun res!834671 () Bool)

(assert (=> b!1251272 (=> (not res!834671) (not e!710556))))

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(assert (=> b!1251272 (= res!834671 (and (= (size!39580 _values!914) (bvadd #b00000000000000000000000000000001 mask!1466)) (= (size!39579 _keys!1118) (size!39580 _values!914)) (bvsge mask!1466 #b00000000000000000000000000000000) (bvsge extraKeysBefore!71 #b00000000000000000000000000000000) (bvsle extraKeysBefore!71 #b00000000000000000000000000000011) (bvsge extraKeysAfter!63 #b00000000000000000000000000000000) (bvsle extraKeysAfter!63 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) (bvand extraKeysAfter!63 #b00000000000000000000000000000001)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun res!834668 () Bool)

(assert (=> start!105024 (=> (not res!834668) (not e!710556))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!105024 (= res!834668 (validMask!0 mask!1466))))

(assert (=> start!105024 e!710556))

(assert (=> start!105024 true))

(assert (=> start!105024 tp!93767))

(assert (=> start!105024 tp_is_empty!31659))

(declare-fun array_inv!29711 (array!80963) Bool)

(assert (=> start!105024 (array_inv!29711 _keys!1118)))

(declare-fun array_inv!29712 (array!80965) Bool)

(assert (=> start!105024 (and (array_inv!29712 _values!914) e!710552)))

(declare-fun mapNonEmpty!49255 () Bool)

(declare-fun tp!93768 () Bool)

(assert (=> mapNonEmpty!49255 (= mapRes!49255 (and tp!93768 e!710553))))

(declare-fun mapRest!49255 () (Array (_ BitVec 32) ValueCell!15066))

(declare-fun mapKey!49255 () (_ BitVec 32))

(declare-fun mapValue!49255 () ValueCell!15066)

(assert (=> mapNonEmpty!49255 (= (arr!39043 _values!914) (store mapRest!49255 mapKey!49255 mapValue!49255))))

(declare-fun b!1251279 () Bool)

(assert (=> b!1251279 (= e!710556 (not e!710557))))

(declare-fun res!834667 () Bool)

(assert (=> b!1251279 (=> res!834667 e!710557)))

(assert (=> b!1251279 (= res!834667 (or (not (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeysBefore!71 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun lt!564720 () ListLongMap!18521)

(declare-fun lt!564719 () ListLongMap!18521)

(assert (=> b!1251279 (= lt!564720 lt!564719)))

(declare-fun minValueAfter!43 () V!47577)

(declare-fun lt!564721 () Unit!41527)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!967 (array!80963 array!80965 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!47577 V!47577 V!47577 V!47577 (_ BitVec 32) Int) Unit!41527)

(assert (=> b!1251279 (= lt!564721 (lemmaNoChangeToArrayThenSameMapNoExtras!967 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 extraKeysAfter!63 zeroValue!871 zeroValue!871 minValueBefore!43 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun getCurrentListMapNoExtraKeys!5649 (array!80963 array!80965 (_ BitVec 32) (_ BitVec 32) V!47577 V!47577 (_ BitVec 32) Int) ListLongMap!18521)

(assert (=> b!1251279 (= lt!564719 (getCurrentListMapNoExtraKeys!5649 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(assert (=> b!1251279 (= lt!564720 (getCurrentListMapNoExtraKeys!5649 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(assert (= (and start!105024 res!834668) b!1251272))

(assert (= (and b!1251272 res!834671) b!1251273))

(assert (= (and b!1251273 res!834670) b!1251276))

(assert (= (and b!1251276 res!834666) b!1251279))

(assert (= (and b!1251279 (not res!834667)) b!1251274))

(assert (= (and b!1251274 (not res!834669)) b!1251271))

(assert (= (and b!1251278 condMapEmpty!49255) mapIsEmpty!49255))

(assert (= (and b!1251278 (not condMapEmpty!49255)) mapNonEmpty!49255))

(get-info :version)

(assert (= (and mapNonEmpty!49255 ((_ is ValueCellFull!15066) mapValue!49255)) b!1251277))

(assert (= (and b!1251278 ((_ is ValueCellFull!15066) mapDefault!49255)) b!1251275))

(assert (= start!105024 b!1251278))

(declare-fun m!1152085 () Bool)

(assert (=> b!1251273 m!1152085))

(declare-fun m!1152087 () Bool)

(assert (=> b!1251274 m!1152087))

(declare-fun m!1152089 () Bool)

(assert (=> b!1251274 m!1152089))

(declare-fun m!1152091 () Bool)

(assert (=> b!1251276 m!1152091))

(declare-fun m!1152093 () Bool)

(assert (=> b!1251271 m!1152093))

(declare-fun m!1152095 () Bool)

(assert (=> b!1251271 m!1152095))

(declare-fun m!1152097 () Bool)

(assert (=> mapNonEmpty!49255 m!1152097))

(declare-fun m!1152099 () Bool)

(assert (=> start!105024 m!1152099))

(declare-fun m!1152101 () Bool)

(assert (=> start!105024 m!1152101))

(declare-fun m!1152103 () Bool)

(assert (=> start!105024 m!1152103))

(declare-fun m!1152105 () Bool)

(assert (=> b!1251279 m!1152105))

(declare-fun m!1152107 () Bool)

(assert (=> b!1251279 m!1152107))

(declare-fun m!1152109 () Bool)

(assert (=> b!1251279 m!1152109))

(check-sat (not b!1251279) tp_is_empty!31659 (not mapNonEmpty!49255) (not b!1251271) (not b!1251276) (not b!1251274) (not start!105024) b_and!44553 (not b_next!26757) (not b!1251273))
(check-sat b_and!44553 (not b_next!26757))
